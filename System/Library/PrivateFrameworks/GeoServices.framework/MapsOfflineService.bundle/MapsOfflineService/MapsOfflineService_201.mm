char *sub_C09388(char *a1, char *a2, char *a3, unsigned int (**a4)(char *, char *))
{
  if (a1 == a2)
  {
    return a3;
  }

  v81 = v4;
  v82 = v5;
  v7 = a2;
  v8 = a1;
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  v71 = a2 - a1;
  v72 = a3;
  if (a2 - a1 >= 41 && v71 >= 0x50)
  {
    v56 = (v9 - 2) >> 1;
    v57 = v56;
    do
    {
      if (v56 >= v57)
      {
        v60 = (2 * (v57 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
        v61 = &v8[40 * v60];
        if (2 * v57 + 2 < v9 && (*a4)(&v8[40 * v60], v61 + 40))
        {
          v61 += 40;
          v60 = 2 * v57 + 2;
        }

        v62 = &v8[40 * v57];
        if (((*a4)(v61, v62) & 1) == 0)
        {
          v63 = *(v62 + 1);
          v78 = *v62;
          v79 = v63;
          v80 = *(v62 + 4);
          do
          {
            v64 = v61;
            v65 = *v61;
            v66 = *(v61 + 1);
            v62[32] = v61[32];
            *v62 = v65;
            *(v62 + 1) = v66;
            if (v56 < v60)
            {
              break;
            }

            v67 = (2 * v60) | 1;
            v61 = &a1[40 * v67];
            v68 = 2 * v60 + 2;
            if (v68 < v9 && (*a4)(&a1[40 * v67], v61 + 40))
            {
              v61 += 40;
              v67 = v68;
            }

            v62 = v64;
            v60 = v67;
          }

          while (!(*a4)(v61, &v78));
          v58 = v78;
          v59 = v79;
          v64[32] = v80;
          *v64 = v58;
          *(v64 + 1) = v59;
          v8 = a1;
        }
      }

      v35 = v57-- <= 0;
    }

    while (!v35);
  }

  i = v7;
  v11 = v72;
  if (v7 != v72)
  {
    if (v71 < 80)
    {
      i = v7;
      do
      {
        if ((*a4)(i, v8))
        {
          v12 = *(i + 4);
          v13 = *i;
          v14 = *(i + 1);
          v15 = v8[32];
          v16 = *(v8 + 1);
          *i = *v8;
          *(i + 1) = v16;
          i[32] = v15;
          *v8 = v13;
          *(v8 + 1) = v14;
          v8[32] = v12;
        }

        i += 40;
      }

      while (i != v72);
      goto LABEL_28;
    }

    v17 = v8 + 40;
    v69 = v8 + 80;
    v70 = v8 + 40;
    for (i = v7; i != v11; i += 40)
    {
      if ((*a4)(i, v8))
      {
        v20 = *(i + 4);
        v21 = *i;
        v22 = *(i + 1);
        v23 = v8[32];
        v24 = *(v8 + 1);
        *i = *v8;
        *(i + 1) = v24;
        i[32] = v23;
        *v8 = v21;
        *(v8 + 1) = v22;
        v8[32] = v20;
        if (v9 < 3)
        {
          v25 = v17;
          v26 = 1;
          if (((*a4)(v17, v8) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v25 = v69;
          if ((*a4)(v17, v69))
          {
            v26 = 2;
          }

          else
          {
            v25 = v17;
            v26 = 1;
          }

          if (((*a4)(v25, v8) & 1) == 0)
          {
LABEL_21:
            v27 = *(v8 + 1);
            v78 = *v8;
            v79 = v27;
            v80 = *(v8 + 4);
            v28 = v8;
            do
            {
              v30 = v25;
              v31 = *v25;
              v32 = *(v25 + 1);
              v28[32] = v25[32];
              *v28 = v31;
              *(v28 + 1) = v32;
              if (((v9 - 2) >> 1) < v26)
              {
                break;
              }

              v33 = (2 * v26) | 1;
              v25 = &a1[40 * v33];
              if (2 * v26 + 2 < v9 && (*a4)(&a1[40 * v33], v25 + 40))
              {
                v25 += 40;
                v33 = 2 * v26 + 2;
              }

              v29 = (*a4)(v25, &v78);
              v28 = v30;
              v26 = v33;
            }

            while (!v29);
            v18 = v78;
            v19 = v79;
            v30[32] = v80;
            *v30 = v18;
            *(v30 + 1) = v19;
            v11 = v72;
            v8 = a1;
            v17 = v70;
          }
        }
      }
    }
  }

LABEL_28:
  if (v71 >= 41)
  {
    v34 = 0xCCCCCCCCCCCCCCCDLL * (v71 >> 3);
    do
    {
      v73 = v7;
      v36 = 0;
      v75 = *v8;
      v76 = *(v8 + 1);
      v77 = *(v8 + 4);
      do
      {
        v39 = &v8[40 * v36];
        v40 = (v39 + 40);
        v41 = (2 * v36) | 1;
        v42 = 2 * v36 + 2;
        if (v42 < v34)
        {
          v43 = (v39 + 80);
          if ((*a4)(v39 + 40, v39 + 80))
          {
            v40 = v43;
            v41 = v42;
          }
        }

        v37 = *v40;
        v38 = v40[1];
        v8[32] = *(v40 + 32);
        *v8 = v37;
        *(v8 + 1) = v38;
        v8 = v40;
        v36 = v41;
      }

      while (v41 <= ((v34 - 2) >> 1));
      v7 = v73 - 40;
      if (v40 == (v73 - 40))
      {
        *(v40 + 32) = v77;
        *v40 = v75;
        v40[1] = v76;
        v8 = a1;
      }

      else
      {
        v44 = *v7;
        v45 = *(v73 - 24);
        *(v40 + 32) = *(v73 - 8);
        *v40 = v44;
        v40[1] = v45;
        *v7 = v75;
        *(v73 - 24) = v76;
        *(v73 - 8) = v77;
        v8 = a1;
        v46 = v40 - a1 + 40;
        if (v46 >= 41)
        {
          v47 = (-2 - 0x3333333333333333 * (v46 >> 3)) >> 1;
          v48 = &a1[40 * v47];
          if ((*a4)(v48, v40))
          {
            v49 = *v40;
            v50 = v40[1];
            v80 = *(v40 + 4);
            v78 = v49;
            v79 = v50;
            do
            {
              v51 = v48;
              v52 = *v48;
              v53 = *(v48 + 1);
              *(v40 + 32) = v48[32];
              *v40 = v52;
              v40[1] = v53;
              if (!v47)
              {
                break;
              }

              v47 = (v47 - 1) >> 1;
              v48 = &a1[40 * v47];
              v40 = v51;
            }

            while (((*a4)(v48, &v78) & 1) != 0);
            v54 = v79;
            *v51 = v78;
            v51[1] = v54;
            *(v51 + 32) = v80;
          }
        }
      }

      v35 = v34-- <= 2;
    }

    while (!v35);
  }

  return i;
}

uint64_t *sub_C098C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2;
  v6 = *(a1 + 16);
  v7 = *a1;
  result = v7;
  if (a4 > (v6 - v7) >> 3)
  {
    if (v7)
    {
      *(a1 + 8) = v7;
      v9 = a4;
      operator delete(v7);
      a4 = v9;
      v6 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a4 >> 61))
    {
      v10 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v10 = a4;
      }

      v11 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v12 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v10;
      }

      if (!(v12 >> 61))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = *(a1 + 8);
  v14 = (v13 - v7) >> 3;
  if (v14 >= a4)
  {
    if (a2 != a3)
    {
      v30 = a3 - a2 - 60;
      if (v30 < 0xB4)
      {
        goto LABEL_32;
      }

      v31 = v30 / 0x3C + 1;
      v32 = a2;
      result = &v7->i64[v31 & 0xFFFFFFFFFFFFFFCLL];
      v4 = a2 + 60 * (v31 & 0xFFFFFFFFFFFFFFCLL);
      v33 = v7 + 1;
      v34 = v31 & 0xFFFFFFFFFFFFFFCLL;
      do
      {
        v35 = vdupq_n_s64(v32);
        v33[-1] = vaddq_s64(v35, xmmword_22AB6E0);
        *v33 = vaddq_s64(v35, xmmword_22AB6F0);
        v32 += 240;
        v33 += 2;
        v34 -= 4;
      }

      while (v34);
      if (v31 != (v31 & 0xFFFFFFFFFFFFFFCLL))
      {
LABEL_32:
        v36 = v4;
        do
        {
          *result++ = v4;
          v36 += 60;
          v4 += 60;
        }

        while (v36 != a3);
      }
    }

    *(a1 + 8) = result;
  }

  else
  {
    v15 = a2 + 60 * v14;
    if (v13 != v7)
    {
      v16 = v15 - a2 - 60;
      if (v16 < 0xB4)
      {
        goto LABEL_17;
      }

      v17 = v16 / 0x3C + 1;
      v18 = a2;
      result = &v7->i64[v17 & 0xFFFFFFFFFFFFFFCLL];
      v4 = a2 + 60 * (v17 & 0xFFFFFFFFFFFFFFCLL);
      v19 = v7 + 1;
      v20 = v17 & 0xFFFFFFFFFFFFFFCLL;
      do
      {
        v21 = vdupq_n_s64(v18);
        v19[-1] = vaddq_s64(v21, xmmword_22AB6E0);
        *v19 = vaddq_s64(v21, xmmword_22AB6F0);
        v18 += 240;
        v19 += 2;
        v20 -= 4;
      }

      while (v20);
      if (v17 != (v17 & 0xFFFFFFFFFFFFFFCLL))
      {
LABEL_17:
        v22 = v4;
        do
        {
          *result++ = v4;
          v22 += 60;
          v4 += 60;
        }

        while (v22 != v15);
      }

      v13 = *(a1 + 8);
    }

    v23 = v13;
    if (v15 != a3)
    {
      v24 = a3 - v15 - 60;
      v23 = v13;
      if (v24 < 0xB4)
      {
        goto LABEL_38;
      }

      v25 = v24 / 0x3C + 1;
      v26 = v15;
      v15 += 60 * (v25 & 0xFFFFFFFFFFFFFFCLL);
      v23 = &v13->i64[v25 & 0xFFFFFFFFFFFFFFCLL];
      v27 = v13 + 1;
      v28 = v25 & 0xFFFFFFFFFFFFFFCLL;
      do
      {
        v29 = vdupq_n_s64(v26);
        v27[-1] = vaddq_s64(v29, xmmword_22AB6E0);
        *v27 = vaddq_s64(v29, xmmword_22AB6F0);
        v26 += 240;
        v27 += 2;
        v28 -= 4;
      }

      while (v28);
      if (v25 != (v25 & 0xFFFFFFFFFFFFFFCLL))
      {
LABEL_38:
        do
        {
          *v23++ = v15;
          v15 += 60;
        }

        while (v15 != a3);
      }
    }

    *(a1 + 8) = v23;
  }

  return result;
}

void sub_C09C50(void *a1, int **a2, int **a3)
{
  sub_C09E58(a2, a3, a1);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  operator new();
}

void sub_C09E14(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
    v5 = *v1;
    if (!*v1)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v1;
    if (!*v1)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 8) = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void sub_C09E58(int **a1@<X0>, int **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v9 = 0.0;
  sub_C09F20(a3, &v9);
  v6 = *a1;
  v7 = *a2;
  if (*a1 != v7)
  {
    v8 = *v6;
    v9 = *v6;
    sub_2B746C(a3, &v9);
    while (++v6 != v7)
    {
      v8 += *v6;
      v9 = v8;
      sub_2B746C(a3, &v9);
    }
  }
}

void sub_C09EFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C09F20(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_1794();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
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
  return v5 - 8;
}

void sub_C0A028(int **a1@<X0>, int **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v9 = 0.0;
  sub_C09F20(a3, &v9);
  v6 = *a1;
  v7 = *a2;
  if (*a1 != v7)
  {
    v8 = *v6;
    v9 = *v6;
    sub_2B746C(a3, &v9);
    while (++v6 != v7)
    {
      v8 += *v6;
      v9 = v8;
      sub_2B746C(a3, &v9);
    }
  }
}

void sub_C0A0CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_C0A0F0(uint64_t *a1@<X0>, int **a2@<X1>, int **a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  memset(__p, 0, sizeof(__p));
  if (v9 != -1)
  {
    if (!((v9 + 1) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  sub_C0A400(a4, v8);
  if (*a3 != *a2)
  {
    if ((*a3 - *a2) < 0x7FFFFFFFFFFFFFFDLL)
    {
      operator new();
    }

    sub_1794();
  }

  sub_C0A59C(0, 0, __p, 0, 1);
  v10 = a1[1];
  if (v10)
  {
    v11 = 0;
    v12 = *a4;
    v13 = *a2;
    do
    {
      v14 = *a1;
      v15 = pow((2 * *a1 - 1), -((v11 + v11 + 1.0) / a1[1] + -1.0));
      if ((v14 + 1) >= 2)
      {
        v16 = **(8 * (1.0 / (v15 + 1.0) * (v14 - 1)));
        v17 = (*(v12 + 24 * v11) + 8);
        v18 = v13;
        do
        {
          v19 = *(v17 - 1);
          *v17 = v19;
          v20 = *v18;
          if (*v18 <= v16)
          {
            if (v20 < v16)
            {
              v19 += 2;
            }

            if (v20 == v16)
            {
              ++v19;
            }

            *v17 = v19;
          }

          ++v17;
          ++v18;
          --v14;
        }

        while (v14);
      }

      ++v11;
    }

    while (v11 != v10);
  }
}

void sub_C0A3A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v12)
  {
    operator delete(v12);
    sub_34BE0(v11);
    _Unwind_Resume(a1);
  }

  sub_34BE0(v11);
  _Unwind_Resume(a1);
}

void *sub_C0A400(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_C0A570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  *(v9 + 8) = v10;
  sub_35390(&a9);
  _Unwind_Resume(a1);
}

int **sub_C0A59C(int **result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v76 = *(a2 - 1);
      v77 = *v10;
      if (*v76 < **v10)
      {
        *v10 = v76;
        *(a2 - 1) = v77;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v90 = (v10 + 1);
      v92 = v10 == a2 || v90 == a2;
      if (a5)
      {
        if (!v92)
        {
          v93 = 0;
          v94 = v10;
          do
          {
            v97 = *v94;
            v96 = v94[1];
            v94 = v90;
            if (*v96 < *v97)
            {
              v98 = v93;
              do
              {
                *(v10 + v98 + 8) = v97;
                if (!v98)
                {
                  v95 = v10;
                  goto LABEL_125;
                }

                v97 = *(v10 + v98 - 8);
                v98 -= 8;
              }

              while (*v96 < *v97);
              v95 = (v10 + v98 + 8);
LABEL_125:
              *v95 = v96;
            }

            v90 = (v94 + 1);
            v93 += 8;
          }

          while (v94 + 1 != a2);
        }
      }

      else if (!v92)
      {
        do
        {
          v103 = *v9;
          v102 = v9[1];
          v9 = v90;
          if (*v102 < *v103)
          {
            do
            {
              *v90 = v103;
              v103 = *(v90 - 2);
              --v90;
            }

            while (*v102 < *v103);
            *v90 = v102;
          }

          v90 = (v9 + 1);
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return sub_C0B34C(v10, a2, a2);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *(a2 - 1);
    v14 = *v13;
    if (v11 < 0x81)
    {
      v18 = *v10;
      v19 = **v10;
      v20 = v10[v12];
      if (v19 < *v20)
      {
        if (v14 < v19)
        {
          v10[v12] = v13;
          goto LABEL_37;
        }

        v10[v12] = v18;
        *v10 = v20;
        v33 = *(a2 - 1);
        if (*v33 < *v20)
        {
          *v10 = v33;
LABEL_37:
          *(a2 - 1) = v20;
        }

LABEL_38:
        --a4;
        if ((a5 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_39;
      }

      if (v14 >= v19)
      {
        goto LABEL_38;
      }

      *v10 = v13;
      *(a2 - 1) = v18;
      v23 = v10[v12];
      if (**v10 >= *v23)
      {
        goto LABEL_38;
      }

      v10[v12] = *v10;
      *v10 = v23;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_39:
      v34 = *v10;
      v35 = **v10;
LABEL_62:
      v52 = 0;
      do
      {
        v53 = v10[++v52];
      }

      while (*v53 < v35);
      v54 = &v10[v52];
      v55 = a2;
      if (v52 == 1)
      {
        v55 = a2;
        do
        {
          if (v54 >= v55)
          {
            break;
          }

          v57 = *--v55;
        }

        while (*v57 >= v35);
      }

      else
      {
        do
        {
          v56 = *--v55;
        }

        while (*v56 >= v35);
      }

      if (v54 >= v55)
      {
        v64 = v54 - 1;
        if (v54 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v64;
        goto LABEL_80;
      }

      v58 = *v55;
      v59 = &v10[v52];
      v60 = v55;
      do
      {
        *v59 = v58;
        *v60 = v53;
        v61 = *v34;
        do
        {
          v62 = v59[1];
          ++v59;
          v53 = v62;
        }

        while (*v62 < v61);
        do
        {
          v63 = *--v60;
          v58 = v63;
        }

        while (*v63 >= v61);
      }

      while (v59 < v60);
      v64 = v59 - 1;
      if (v59 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v64 = v34;
      if (v54 < v55)
      {
        goto LABEL_83;
      }

      v65 = sub_C0AFFC(v10, v64);
      v10 = v64 + 1;
      result = sub_C0AFFC(v64 + 1, a2);
      if (result)
      {
        a2 = v64;
        if (!v65)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v65)
      {
LABEL_83:
        result = sub_C0A59C(v9, v64, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v64 + 1;
      }
    }

    else
    {
      v15 = v10[v12];
      v16 = *v15;
      v17 = *v10;
      if (*v15 >= **v10)
      {
        if (v14 < v16)
        {
          v10[v12] = v13;
          *(a2 - 1) = v15;
          v21 = v10[v12];
          v22 = *v10;
          if (*v21 < **v10)
          {
            *v10 = v21;
            v10[v12] = v22;
          }
        }
      }

      else
      {
        if (v14 >= v16)
        {
          *v10 = v15;
          v10[v12] = v17;
          v24 = *(a2 - 1);
          if (*v24 >= *v17)
          {
            goto LABEL_29;
          }

          v10[v12] = v24;
        }

        else
        {
          *v10 = v13;
        }

        *(a2 - 1) = v17;
      }

LABEL_29:
      v25 = v12 - 1;
      v26 = v10[v12 - 1];
      v27 = *v26;
      v28 = v10[1];
      v29 = *(a2 - 2);
      v30 = *v29;
      if (*v26 >= *v28)
      {
        if (v30 < v27)
        {
          v10[v25] = v29;
          *(a2 - 2) = v26;
          v31 = v10[v25];
          v32 = v10[1];
          if (*v31 < *v32)
          {
            v10[1] = v31;
            v10[v25] = v32;
          }
        }
      }

      else
      {
        if (v30 >= v27)
        {
          v10[1] = v26;
          v10[v25] = v28;
          v36 = *(a2 - 2);
          if (*v36 >= *v28)
          {
            goto LABEL_43;
          }

          v10[v25] = v36;
        }

        else
        {
          v10[1] = v29;
        }

        *(a2 - 2) = v28;
      }

LABEL_43:
      v37 = v12 + 1;
      v38 = v10[v12 + 1];
      v39 = *v38;
      v40 = v10[2];
      v41 = *(a2 - 3);
      v42 = *v41;
      if (*v38 >= *v40)
      {
        if (v42 < v39)
        {
          v10[v37] = v41;
          *(a2 - 3) = v38;
          v43 = v10[v37];
          v44 = v10[2];
          if (*v43 < *v44)
          {
            v10[2] = v43;
            v10[v37] = v44;
          }
        }
      }

      else
      {
        if (v42 >= v39)
        {
          v10[2] = v38;
          v10[v37] = v40;
          v45 = *(a2 - 3);
          if (*v45 >= *v40)
          {
            goto LABEL_52;
          }

          v10[v37] = v45;
        }

        else
        {
          v10[2] = v41;
        }

        *(a2 - 3) = v40;
      }

LABEL_52:
      v46 = v10[v12];
      v47 = v10[v25];
      v48 = *v46;
      v49 = v10[v37];
      v50 = *v49;
      if (*v46 >= *v47)
      {
        if (v50 < v48)
        {
          v10[v12] = v49;
          v10[v37] = v46;
          v46 = v49;
          if (*v49 < *v47)
          {
            v10[v25] = v49;
            v10[v12] = v47;
            v46 = v47;
          }
        }
      }

      else if (v50 >= v48)
      {
        v10[v25] = v46;
        v10[v12] = v47;
        v46 = v47;
        if (*v49 < *v47)
        {
          v10[v12] = v49;
          v10[v37] = v47;
          v46 = v49;
        }
      }

      else
      {
        v10[v25] = v49;
        v10[v37] = v47;
      }

      v51 = *v10;
      *v10 = v46;
      v10[v12] = v51;
      --a4;
      if (a5)
      {
        goto LABEL_39;
      }

LABEL_61:
      v34 = *v10;
      v35 = **v10;
      if (**(v10 - 1) < v35)
      {
        goto LABEL_62;
      }

      if (v35 >= **(a2 - 1))
      {
        v67 = v10 + 1;
        do
        {
          v10 = v67;
          if (v67 >= a2)
          {
            break;
          }

          ++v67;
        }

        while (v35 >= **v10);
      }

      else
      {
        do
        {
          v66 = v10[1];
          ++v10;
        }

        while (v35 >= *v66);
      }

      v68 = a2;
      if (v10 < a2)
      {
        v68 = a2;
        do
        {
          v69 = *--v68;
        }

        while (v35 < *v69);
      }

      if (v10 < v68)
      {
        v70 = *v10;
        v71 = *v68;
        do
        {
          *v10 = v71;
          *v68 = v70;
          v72 = *v34;
          do
          {
            v73 = v10[1];
            ++v10;
            v70 = v73;
          }

          while (v72 >= *v73);
          do
          {
            v74 = *--v68;
            v71 = v74;
          }

          while (v72 < *v74);
        }

        while (v10 < v68);
      }

      v75 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v75;
      }

      a5 = 0;
      *v75 = v34;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v83 = v10 + 1;
      v84 = v10[1];
      v85 = v10 + 2;
      v86 = v10[2];
      v87 = *v84;
      v88 = *v10;
      v89 = *v86;
      if (*v84 >= **v10)
      {
        if (v89 < v87)
        {
          *v83 = v86;
          *v85 = v84;
          if (*v86 < *v88)
          {
            *v10 = v86;
            v101 = v10 + 1;
            goto LABEL_154;
          }

LABEL_155:
          v86 = v84;
        }
      }

      else
      {
        if (v89 < v87)
        {
          *v10 = v86;
          goto LABEL_153;
        }

        *v10 = v84;
        v10[1] = v88;
        if (*v86 < *v88)
        {
          *v83 = v86;
LABEL_153:
          v101 = v10 + 2;
          v84 = v88;
LABEL_154:
          *v101 = v88;
          goto LABEL_155;
        }
      }

      v105 = *(a2 - 1);
      if (*v105 < *v86)
      {
        *v85 = v105;
        *(a2 - 1) = v86;
        v106 = *v85;
        v107 = *v83;
        if (*v106 < *v107)
        {
          v10[1] = v106;
          v10[2] = v107;
          v108 = *v10;
          if (*v106 < **v10)
          {
            *v10 = v106;
            v10[1] = v108;
          }
        }
      }

      return result;
    }

    if (v11 == 5)
    {

      return sub_C0AE5C(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1);
    }

    goto LABEL_10;
  }

  v78 = *v10;
  v79 = v10[1];
  v80 = *v79;
  v81 = *(a2 - 1);
  v82 = *v81;
  if (*v79 >= **v10)
  {
    if (v82 < v80)
    {
      v10[1] = v81;
      *(a2 - 1) = v79;
      v100 = *v10;
      v99 = v10[1];
      if (*v99 < **v10)
      {
        *v10 = v99;
        v10[1] = v100;
      }
    }
  }

  else
  {
    if (v82 >= v80)
    {
      *v10 = v79;
      v10[1] = v78;
      v104 = *(a2 - 1);
      if (*v104 >= *v78)
      {
        return result;
      }

      v10[1] = v104;
    }

    else
    {
      *v10 = v81;
    }

    *(a2 - 1) = v78;
  }

  return result;
}

int **sub_C0AE5C(int **result, int **a2, int **a3, int **a4, int **a5)
{
  v5 = *a2;
  v6 = **a2;
  v7 = *result;
  v8 = *a3;
  v9 = **a3;
  if (v6 < **result)
  {
    if (v9 >= v6)
    {
      *result = v5;
      *a2 = v7;
      v5 = *a3;
      if (**a3 >= *v7)
      {
        goto LABEL_11;
      }

      *a2 = v5;
    }

    else
    {
      *result = v8;
    }

    *a3 = v7;
    v5 = v7;
LABEL_11:
    v11 = *a4;
    if (**a4 >= *v5)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v9 >= v6)
  {
    v5 = *a3;
    v11 = *a4;
    if (**a4 >= **a3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *a2 = v8;
    *a3 = v5;
    v10 = *result;
    if (**a2 >= **result)
    {
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v10;
    v5 = *a3;
    v11 = *a4;
    if (**a4 >= **a3)
    {
      goto LABEL_16;
    }
  }

LABEL_12:
  *a3 = v11;
  *a4 = v5;
  v12 = *a2;
  if (**a3 < **a2)
  {
    *a2 = *a3;
    *a3 = v12;
    v13 = *result;
    if (**a2 < **result)
    {
      *result = *a2;
      *a2 = v13;
    }
  }

LABEL_16:
  v14 = *a4;
  if (**a5 < **a4)
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (**a4 < **a3)
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (**a3 < **a2)
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (**a2 < **result)
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL sub_C0AFFC(int **a1, int **a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *v7;
      v9 = *(a2 - 1);
      v10 = *v9;
      if (*v7 >= **a1)
      {
        if (v10 >= v8)
        {
          return 1;
        }

        a1[1] = v9;
        *(a2 - 1) = v7;
        v26 = *a1;
        v25 = a1[1];
        if (*v25 >= **a1)
        {
          return 1;
        }

        *a1 = v25;
        a1[1] = v26;
        return 1;
      }

      else if (v10 >= v8)
      {
        *a1 = v7;
        a1[1] = v6;
        v28 = *(a2 - 1);
        if (*v28 >= *v6)
        {
          return 1;
        }

        a1[1] = v28;
        *(a2 - 1) = v6;
        return 1;
      }

      else
      {
        *a1 = v9;
        *(a2 - 1) = v6;
        return 1;
      }
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_C0AE5C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
      }

LABEL_14:
      v11 = a1 + 2;
      v12 = a1[2];
      v13 = a1 + 1;
      v14 = a1[1];
      v15 = *v14;
      v16 = *a1;
      v17 = *v12;
      if (*v14 >= **a1)
      {
        if (v17 >= v15)
        {
          goto LABEL_35;
        }

        *v13 = v12;
        *v11 = v14;
        if (*v12 >= *v16)
        {
          goto LABEL_35;
        }

        *a1 = v12;
      }

      else
      {
        if (v17 >= v15)
        {
          *a1 = v14;
          a1[1] = v16;
          if (*v12 >= *v16)
          {
LABEL_35:
            v29 = a1 + 3;
            if (a1 + 3 == a2)
            {
              return 1;
            }

            v30 = 0;
            v31 = 0;
            while (1)
            {
              v32 = *v29;
              v33 = *v11;
              if (**v29 < *v33)
              {
                break;
              }

LABEL_44:
              v11 = v29;
              v30 += 8;
              if (++v29 == a2)
              {
                return 1;
              }
            }

            v34 = v30;
            do
            {
              *(a1 + v34 + 24) = v33;
              if (v34 == -16)
              {
                *a1 = v32;
                if (++v31 != 8)
                {
                  goto LABEL_44;
                }

                return v29 + 1 == a2;
              }

              v33 = *(a1 + v34 + 8);
              v34 -= 8;
            }

            while (*v32 < *v33);
            *(a1 + v34 + 24) = v32;
            if (++v31 != 8)
            {
              goto LABEL_44;
            }

            return v29 + 1 == a2;
          }

          *v13 = v12;
        }

        else
        {
          *a1 = v12;
        }

        v13 = a1 + 2;
      }

      *v13 = v16;
      goto LABEL_35;
    }

    v18 = a1 + 1;
    v19 = a1[1];
    v20 = a1 + 2;
    v21 = a1[2];
    v22 = *v19;
    v23 = *a1;
    v24 = *v21;
    if (*v19 >= **a1)
    {
      if (v24 >= v22)
      {
        goto LABEL_51;
      }

      *v18 = v21;
      *v20 = v19;
      if (*v21 >= *v23)
      {
        goto LABEL_50;
      }

      *a1 = v21;
      v27 = a1 + 1;
    }

    else
    {
      if (v24 >= v22)
      {
        *a1 = v19;
        a1[1] = v23;
        if (*v21 >= *v23)
        {
          goto LABEL_51;
        }

        *v18 = v21;
      }

      else
      {
        *a1 = v21;
      }

      v27 = a1 + 2;
      v19 = v23;
    }

    *v27 = v23;
LABEL_50:
    v21 = v19;
LABEL_51:
    v35 = *(a2 - 1);
    if (*v35 >= *v21)
    {
      return 1;
    }

    *v20 = v35;
    *(a2 - 1) = v21;
    v36 = *v20;
    v37 = *v18;
    if (*v36 >= *v37)
    {
      return 1;
    }

    a1[1] = v36;
    a1[2] = v37;
    v38 = *a1;
    if (*v36 >= **a1)
    {
      return 1;
    }

    *a1 = v36;
    a1[1] = v38;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_14;
  }

  v4 = *(a2 - 1);
  v5 = *a1;
  if (*v4 >= **a1)
  {
    return 1;
  }

  *a1 = v4;
  *(a2 - 1) = v5;
  return 1;
}

int **sub_C0B34C(int **a1, uint64_t *a2, int **a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = (a2 - a1) >> 3;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      if (v4 >= v5)
      {
        v6 = (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
        v7 = &a1[v6];
        if (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2 >= v3)
        {
          v11 = &a1[v5];
          v12 = *v11;
          if (**v7 >= **v11)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v8 = **v7;
          v9 = *v7[1];
          v10 = v8 < v9;
          if (v8 > v9)
          {
            v9 = **v7;
          }

          if (v10)
          {
            ++v7;
            v6 = 2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2;
          }

          v11 = &a1[v5];
          v12 = *v11;
          if (v9 >= **v11)
          {
LABEL_15:
            v13 = *v7;
            while (1)
            {
              *v11 = v13;
              v11 = v7;
              if (v4 < v6)
              {
                break;
              }

              v17 = (2 * v6) | 1;
              v7 = &a1[v17];
              v6 = 2 * v6 + 2;
              if (v6 < v3)
              {
                v13 = *v7;
                v14 = **v7;
                v15 = *v7[1];
                v16 = v14 < v15;
                if (v14 <= v15)
                {
                  v14 = *v7[1];
                }

                if (v16)
                {
                  v13 = v7[1];
                  ++v7;
                }

                else
                {
                  v6 = v17;
                }

                if (v14 < *v12)
                {
                  break;
                }
              }

              else
              {
                v13 = *v7;
                v6 = v17;
                if (**v7 < *v12)
                {
                  break;
                }
              }
            }

            *v11 = v12;
          }
        }
      }

      v10 = v5-- <= 0;
    }

    while (!v10);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      v19 = *a1;
      i = a2;
      do
      {
        v20 = *i;
        if (**i < *v19)
        {
          *i = v19;
          *a1 = v20;
          v19 = v20;
        }

        ++i;
      }

      while (i != a3);
      goto LABEL_59;
    }

    for (i = a2; i != a3; ++i)
    {
      v21 = *i;
      if (**i < **a1)
      {
        *i = *a1;
        *a1 = v21;
        v22 = *a1[1];
        if (a2 - a1 == 16)
        {
          v23 = a1 + 1;
          v24 = 1;
          if (v22 >= *v21)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v25 = *a1[2];
          v26 = v22 < v25;
          if (v22 <= v25)
          {
            v22 = *a1[2];
          }

          if (v26)
          {
            v23 = a1 + 2;
          }

          else
          {
            v23 = a1 + 1;
          }

          if (v26)
          {
            v24 = 2;
          }

          else
          {
            v24 = 1;
          }

          if (v22 >= *v21)
          {
LABEL_48:
            v27 = *v23;
            v28 = a1;
            while (1)
            {
              *v28 = v27;
              v28 = v23;
              if (((v3 - 2) >> 1) < v24)
              {
                break;
              }

              v32 = (2 * v24) | 1;
              v23 = &a1[v32];
              v24 = 2 * v24 + 2;
              if (v24 < v3)
              {
                v27 = *v23;
                v29 = **v23;
                v30 = *v23[1];
                v31 = v29 < v30;
                if (v29 <= v30)
                {
                  v29 = *v23[1];
                }

                if (v31)
                {
                  v27 = v23[1];
                  ++v23;
                }

                else
                {
                  v24 = v32;
                }

                if (v29 < *v21)
                {
                  break;
                }
              }

              else
              {
                v27 = *v23;
                v24 = v32;
                if (**v23 < *v21)
                {
                  break;
                }
              }
            }

            *v28 = v21;
          }
        }
      }
    }
  }

LABEL_59:
  if (v3 >= 2)
  {
    do
    {
      v34 = 0;
      v35 = *a1;
      v36 = (v3 - 2) >> 1;
      v37 = a1;
      do
      {
        while (1)
        {
          v41 = &v37[v34];
          v40 = v41 + 1;
          v42 = (2 * v34) | 1;
          v34 = 2 * v34 + 2;
          if (v34 < v3)
          {
            break;
          }

          v34 = v42;
          *v37 = *v40;
          v37 = v41 + 1;
          if (v42 > v36)
          {
            goto LABEL_71;
          }
        }

        v39 = v41[2];
        v38 = v41 + 2;
        if (**(v38 - 1) >= *v39)
        {
          v34 = v42;
        }

        else
        {
          v40 = v38;
        }

        *v37 = *v40;
        v37 = v40;
      }

      while (v34 <= v36);
LABEL_71:
      if (v40 == --a2)
      {
        *v40 = v35;
      }

      else
      {
        *v40 = *a2;
        *a2 = v35;
        v43 = (v40 - a1 + 8) >> 3;
        v10 = v43 < 2;
        v44 = v43 - 2;
        if (!v10)
        {
          v45 = v44 >> 1;
          v46 = &a1[v45];
          v47 = *v46;
          v48 = *v40;
          if (**v46 < **v40)
          {
            do
            {
              *v40 = v47;
              v40 = v46;
              if (!v45)
              {
                break;
              }

              v45 = (v45 - 1) >> 1;
              v46 = &a1[v45];
              v47 = *v46;
            }

            while (**v46 < *v48);
            *v40 = v48;
          }
        }
      }

      v10 = v3-- <= 2;
    }

    while (!v10);
  }

  return i;
}

uint64_t sub_C0B720(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
    {
      v5 = *(a1 + 32);
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_C0B798(uint64_t result, uint64_t *a2, unsigned int (**a3)(uint64_t), uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        result = (*a3)(*(a2 - 1), *v10);
        if (result)
        {
          v75 = *v10;
          *v10 = *(a2 - 1);
LABEL_107:
          *(a2 - 1) = v75;
          return result;
        }

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

      return sub_C0C098(v10, v10 + 1, v10 + 2, a2 - 1, a3);
    }

    if (v11 == 5)
    {
      sub_C0C098(v10, v10 + 1, v10 + 2, v10 + 3, a3);
      result = (*a3)(*(a2 - 1), v10[3]);
      if (!result)
      {
        return result;
      }

      v70 = v10[3];
      v10[3] = *(a2 - 1);
      *(a2 - 1) = v70;
      result = (*a3)(v10[3], v10[2]);
      if (!result)
      {
        return result;
      }

      v71 = v10[2];
      v10[2] = v10[3];
      v10[3] = v71;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v73 = v10[1];
      v72 = v10[2];
      v74 = *v10;
      v10[1] = v72;
      v10[2] = v73;
      result = (*a3)(v72, v74);
      goto LABEL_137;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v78 = v10 + 1;
      v80 = v10 == a2 || v78 == a2;
      if (a5)
      {
        if (!v80)
        {
          v81 = 0;
          v82 = v10;
          do
          {
            v85 = *v82;
            v84 = v82[1];
            v82 = v78;
            result = (*a3)(v84, v85);
            if (result)
            {
              v86 = *v82;
              v87 = v81;
              do
              {
                *(v9 + v87 + 8) = *(v9 + v87);
                if (!v87)
                {
                  v83 = v9;
                  goto LABEL_124;
                }

                result = (*a3)(v86, *(v9 + v87 - 8));
                v87 -= 8;
              }

              while ((result & 1) != 0);
              v83 = (v9 + v87 + 8);
LABEL_124:
              *v83 = v86;
            }

            v78 = v82 + 1;
            v81 += 8;
          }

          while (v82 + 1 != a2);
        }
      }

      else if (!v80)
      {
        do
        {
          v91 = *v9;
          v90 = v9[1];
          v9 = v78;
          result = (*a3)(v90, v91);
          if (result)
          {
            v92 = *v9;
            v93 = v9;
            do
            {
              v94 = v93;
              v95 = *--v93;
              *v94 = v95;
              result = (*a3)(v92, *(v94 - 2));
            }

            while ((result & 1) != 0);
            *v93 = v92;
          }

          v78 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return sub_C0C500(v10, a2, a2, a3);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      v17 = (v13)(*v9, v9[v12]);
      v18 = (*a3)(*(a2 - 1), *v9);
      if (v17)
      {
        v19 = v9[v12];
        if (!v18)
        {
          v9[v12] = *v9;
          *v9 = v19;
          if ((*a3)(*(a2 - 1)))
          {
            v31 = *v9;
            *v9 = *(a2 - 1);
            *(a2 - 1) = v31;
          }

LABEL_37:
          --a4;
          if ((a5 & 1) == 0)
          {
            goto LABEL_58;
          }

          goto LABEL_38;
        }

        v9[v12] = *(a2 - 1);
        *(a2 - 1) = v19;
        --a4;
        if ((a5 & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (!v18)
        {
          goto LABEL_37;
        }

        v22 = *v9;
        *v9 = *(a2 - 1);
        *(a2 - 1) = v22;
        if (!(*a3)(*v9, v9[v12]))
        {
          goto LABEL_37;
        }

        v23 = v9[v12];
        v9[v12] = *v9;
        *v9 = v23;
        --a4;
        if ((a5 & 1) == 0)
        {
          goto LABEL_58;
        }
      }

LABEL_38:
      v32 = *v9;
LABEL_59:
      v49 = 0;
      do
      {
        v50 = (*a3)(v9[++v49], v32);
      }

      while ((v50 & 1) != 0);
      v51 = &v9[v49];
      v52 = a2;
      if (v49 == 1)
      {
        v52 = a2;
        do
        {
          if (v51 >= v52)
          {
            break;
          }

          v54 = *--v52;
        }

        while (((*a3)(v54, v32) & 1) == 0);
      }

      else
      {
        do
        {
          v53 = *--v52;
        }

        while (!(*a3)(v53, v32));
      }

      if (v51 >= v52)
      {
        v60 = v51 - 1;
        if (v51 - 1 == v9)
        {
          goto LABEL_77;
        }

LABEL_76:
        *v9 = *v60;
        goto LABEL_77;
      }

      v55 = &v9[v49];
      v56 = v52;
      do
      {
        v57 = *v55;
        *v55 = *v56;
        *v56 = v57;
        do
        {
          v58 = v55[1];
          ++v55;
        }

        while (((*a3)(v58, v32) & 1) != 0);
        do
        {
          v59 = *--v56;
        }

        while (!(*a3)(v59, v32));
      }

      while (v55 < v56);
      v60 = v55 - 1;
      if (v60 != v9)
      {
        goto LABEL_76;
      }

LABEL_77:
      *v60 = v32;
      if (v51 < v52)
      {
        goto LABEL_80;
      }

      v61 = sub_C0C1EC(v9, v60, a3);
      v10 = v60 + 1;
      result = sub_C0C1EC(v60 + 1, a2, a3);
      if (result)
      {
        a2 = v60;
        if (!v61)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v61)
      {
LABEL_80:
        result = sub_C0B798(v9, v60, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v60 + 1;
      }
    }

    else
    {
      v14 = (v13)(v9[v12], *v9);
      v15 = (*a3)(*(a2 - 1), v9[v12]);
      if (v14)
      {
        v16 = *v9;
        if (v15)
        {
          *v9 = *(a2 - 1);
          *(a2 - 1) = v16;
        }

        else
        {
          *v9 = v9[v12];
          v9[v12] = v16;
          if ((*a3)(*(a2 - 1)))
          {
            v24 = v9[v12];
            v9[v12] = *(a2 - 1);
            *(a2 - 1) = v24;
          }
        }
      }

      else if (v15)
      {
        v20 = v9[v12];
        v9[v12] = *(a2 - 1);
        *(a2 - 1) = v20;
        if ((*a3)(v9[v12], *v9))
        {
          v21 = *v9;
          *v9 = v9[v12];
          v9[v12] = v21;
        }
      }

      v25 = v12 - 1;
      v26 = (*a3)(v9[v12 - 1], v9[1]);
      v27 = (*a3)(*(a2 - 2), v9[v12 - 1]);
      if (v26)
      {
        v28 = v9[1];
        if (v27)
        {
          v9[1] = *(a2 - 2);
          *(a2 - 2) = v28;
        }

        else
        {
          v9[1] = v9[v25];
          v9[v25] = v28;
          if ((*a3)(*(a2 - 2)))
          {
            v33 = v9[v25];
            v9[v25] = *(a2 - 2);
            *(a2 - 2) = v33;
          }
        }
      }

      else if (v27)
      {
        v29 = v9[v25];
        v9[v25] = *(a2 - 2);
        *(a2 - 2) = v29;
        if ((*a3)(v9[v25], v9[1]))
        {
          v30 = v9[1];
          v9[1] = v9[v25];
          v9[v25] = v30;
        }
      }

      v34 = v12 + 1;
      v35 = (*a3)(v9[v12 + 1], v9[2]);
      v36 = (*a3)(*(a2 - 3), v9[v12 + 1]);
      if (v35)
      {
        v37 = v9[2];
        if (v36)
        {
          v9[2] = *(a2 - 3);
          *(a2 - 3) = v37;
        }

        else
        {
          v9[2] = v9[v34];
          v9[v34] = v37;
          if ((*a3)(*(a2 - 3)))
          {
            v40 = v9[v34];
            v9[v34] = *(a2 - 3);
            *(a2 - 3) = v40;
          }
        }
      }

      else if (v36)
      {
        v38 = v9[v34];
        v9[v34] = *(a2 - 3);
        *(a2 - 3) = v38;
        if ((*a3)(v9[v34], v9[2]))
        {
          v39 = v9[2];
          v9[2] = v9[v34];
          v9[v34] = v39;
        }
      }

      v41 = (*a3)(v9[v12], v9[v25]);
      v42 = (*a3)(v9[v34], v9[v12]);
      if (v41)
      {
        v43 = v9[v25];
        if (v42)
        {
          v9[v25] = v9[v34];
          v9[v34] = v43;
        }

        else
        {
          v9[v25] = v9[v12];
          v9[v12] = v43;
          if ((*a3)(v9[v34]))
          {
            v46 = v9[v12];
            v9[v12] = v9[v34];
            v9[v34] = v46;
          }
        }
      }

      else if (v42)
      {
        v44 = v9[v12];
        v9[v12] = v9[v34];
        v9[v34] = v44;
        if ((*a3)())
        {
          v45 = v9[v25];
          v9[v25] = v9[v12];
          v9[v12] = v45;
        }
      }

      v47 = *v9;
      *v9 = v9[v12];
      v9[v12] = v47;
      --a4;
      if (a5)
      {
        goto LABEL_38;
      }

LABEL_58:
      v48 = (*a3)(*(v9 - 1), *v9);
      v32 = *v9;
      if (v48)
      {
        goto LABEL_59;
      }

      result = (*a3)(*v9, *(a2 - 1));
      if (result)
      {
        v10 = v9;
        do
        {
          v62 = v10[1];
          ++v10;
          result = (*a3)(v32, v62);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v63 = v9 + 1;
        do
        {
          v10 = v63;
          if (v63 >= a2)
          {
            break;
          }

          ++v63;
          result = (*a3)(v32, *v10);
        }

        while (!result);
      }

      v64 = a2;
      if (v10 < a2)
      {
        v64 = a2;
        do
        {
          v65 = *--v64;
          result = (*a3)(v32, v65);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v64)
      {
        v66 = *v10;
        *v10 = *v64;
        *v64 = v66;
        do
        {
          v67 = v10[1];
          ++v10;
        }

        while (!(*a3)(v32, v67));
        do
        {
          v68 = *--v64;
          result = (*a3)(v32, v68);
        }

        while ((result & 1) != 0);
      }

      v69 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v69;
      }

      a5 = 0;
      *v69 = v32;
    }
  }

  v76 = (*a3)(v10[1], *v10);
  result = (*a3)(*(a2 - 1), v10[1]);
  if ((v76 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v88 = v10[1];
    v10[1] = *(a2 - 1);
    *(a2 - 1) = v88;
    result = (*a3)(v10[1], *v10);
LABEL_137:
    if (result)
    {
      v89 = *v10;
      *v10 = v10[1];
      v10[1] = v89;
    }

    return result;
  }

  v77 = *v10;
  if (result)
  {
    *v10 = *(a2 - 1);
    *(a2 - 1) = v77;
  }

  else
  {
    *v10 = v10[1];
    v10[1] = v77;
    result = (*a3)(*(a2 - 1));
    if (result)
    {
      v75 = v10[1];
      v10[1] = *(a2 - 1);
      goto LABEL_107;
    }
  }

  return result;
}

uint64_t sub_C0C098(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL sub_C0C1EC(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v14 = (*a3)(a1[1], *a1);
        v15 = (*a3)(*(a2 - 1), a1[1]);
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v16;
            if ((*a3)(*(a2 - 1)))
            {
              v25 = a1[1];
              a1[1] = *(a2 - 1);
              *(a2 - 1) = v25;
            }
          }

          return 1;
        }

        if (!v15)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v21;
        v13 = (*a3)(a1[1], *a1);
        break;
      case 4:
        sub_C0C098(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_C0C098(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        v13 = (*a3)(v10, v12);
        break;
      default:
        goto LABEL_16;
    }

    if (v13)
    {
      v22 = *a1;
      *a1 = a1[1];
      a1[1] = v22;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_16:
  v17 = (*a3)(a1[1], *a1);
  v18 = a1 + 2;
  v19 = (*a3)(a1[2], a1[1]);
  if (v17)
  {
    v20 = *a1;
    if (v19)
    {
      *a1 = a1[2];
      a1[2] = v20;
    }

    else
    {
      v26 = a1[2];
      *a1 = a1[1];
      a1[1] = v20;
      if ((*a3)(v26))
      {
        v27 = a1[1];
        a1[1] = a1[2];
        a1[2] = v27;
      }
    }
  }

  else if (v19)
  {
    v23 = a1[1];
    a1[1] = a1[2];
    a1[2] = v23;
    if ((*a3)())
    {
      v24 = *a1;
      *a1 = a1[1];
      a1[1] = v24;
    }
  }

  v28 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v29 = 0;
  v30 = 0;
  while (!(*a3)(*v28, *v18))
  {
LABEL_40:
    v18 = v28;
    v29 += 8;
    if (++v28 == a2)
    {
      return 1;
    }
  }

  v31 = *v28;
  v32 = v29;
  do
  {
    v33 = a1 + v32;
    *(a1 + v32 + 24) = *(a1 + v32 + 16);
    if (v32 == -16)
    {
      *a1 = v31;
      if (++v30 != 8)
      {
        goto LABEL_40;
      }

      return v28 + 1 == a2;
    }

    v32 -= 8;
  }

  while (((*a3)(v31, *(v33 + 1)) & 1) != 0);
  *(a1 + v32 + 24) = v31;
  if (++v30 != 8)
  {
    goto LABEL_40;
  }

  return v28 + 1 == a2;
}

void *sub_C0C500(void *a1, void *a2, void *a3, unsigned int (**a4)(void, uint64_t))
{
  if (a1 == a2)
  {
    return a3;
  }

  v53 = a2;
  v49 = a3;
  v50 = a2 - a1;
  v6 = a2 - a1;
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    v8 = v7 >> 1;
    v9 = v7 >> 1;
    do
    {
      if (v8 >= v9)
      {
        v11 = (2 * (v9 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
        v12 = &a1[v11];
        if (2 * (v9 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v6 && (*a4)(*v12, v12[1]))
        {
          ++v12;
          v11 = 2 * (v9 & 0x1FFFFFFFFFFFFFFFLL) + 2;
        }

        v13 = &a1[v9];
        if (((*a4)(*v12, *v13) & 1) == 0)
        {
          v14 = *v13;
          do
          {
            v15 = v13;
            v13 = v12;
            *v15 = *v12;
            if (v8 < v11)
            {
              break;
            }

            v16 = (2 * v11) | 1;
            v12 = &a1[v16];
            v17 = 2 * v11 + 2;
            if (v17 < v6 && (*a4)(*v12, v12[1]))
            {
              ++v12;
              v16 = v17;
            }

            v11 = v16;
          }

          while (!(*a4)(*v12, v14));
          *v13 = v14;
        }
      }

      v10 = v9-- <= 0;
    }

    while (!v10);
  }

  i = v53;
  v19 = v49;
  if (v53 != v49)
  {
    if (v6 < 2)
    {
      i = v53;
      do
      {
        if ((*a4)(*i, *a1))
        {
          v20 = *i;
          *i = *a1;
          *a1 = v20;
        }

        ++i;
      }

      while (i != v49);
      goto LABEL_45;
    }

    v21 = a1 + 1;
    for (i = v53; i != v19; ++i)
    {
      if ((*a4)(*i, *a1))
      {
        v22 = *i;
        *i = *a1;
        *a1 = v22;
        if (v50 == 16)
        {
          v23 = v21;
          v24 = 1;
          if (((*a4)(*v21) & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v25 = (*a4)(a1[1], a1[2]);
          if (v25)
          {
            v23 = a1 + 2;
          }

          else
          {
            v23 = v21;
          }

          if (v25)
          {
            v24 = 2;
          }

          else
          {
            v24 = 1;
          }

          if (((*a4)(*v23, *a1) & 1) == 0)
          {
LABEL_38:
            v51 = i;
            v26 = *a1;
            v27 = a1;
            do
            {
              v28 = v27;
              v27 = v23;
              *v28 = *v23;
              if (((v6 - 2) >> 1) < v24)
              {
                break;
              }

              v29 = (2 * v24) | 1;
              v23 = &a1[v29];
              v30 = 2 * v24 + 2;
              if (v30 < v6 && (*a4)(*v23, v23[1]))
              {
                ++v23;
                v29 = v30;
              }

              v24 = v29;
            }

            while (!(*a4)(*v23, v26));
            *v27 = v26;
            v21 = a1 + 1;
            v19 = v49;
            i = v51;
          }
        }
      }
    }
  }

LABEL_45:
  if (v6 >= 2)
  {
    do
    {
      v32 = 0;
      v52 = *a1;
      v33 = (v6 - 2) >> 1;
      v34 = a1;
      do
      {
        while (1)
        {
          v38 = &v34[v32];
          v37 = v38 + 1;
          v39 = (2 * v32) | 1;
          v40 = 2 * v32 + 2;
          if (v40 < v6)
          {
            break;
          }

          v32 = (2 * v32) | 1;
          *v34 = *v37;
          v34 = v38 + 1;
          if (v39 > v33)
          {
            goto LABEL_57;
          }
        }

        v36 = v38[2];
        v35 = v38 + 2;
        if ((*a4)(*(v35 - 1), v36))
        {
          v37 = v35;
          v32 = v40;
        }

        else
        {
          v32 = v39;
        }

        *v34 = *v37;
        v34 = v37;
      }

      while (v32 <= v33);
LABEL_57:
      v41 = v53 - 1;
      if (v37 == --v53)
      {
        *v37 = v52;
      }

      else
      {
        *v37 = *v41;
        *v41 = v52;
        v43 = (v37 - a1 + 8) >> 3;
        v10 = v43 < 2;
        v44 = v43 - 2;
        if (!v10)
        {
          v45 = v44 >> 1;
          v46 = &a1[v44 >> 1];
          if ((*a4)(*v46, *v37))
          {
            v47 = *v37;
            do
            {
              v48 = v37;
              v37 = v46;
              *v48 = *v46;
              if (!v45)
              {
                break;
              }

              v45 = (v45 - 1) >> 1;
              v46 = &a1[v45];
            }

            while (((*a4)(*v46, v47) & 1) != 0);
            *v37 = v47;
          }
        }
      }

      v10 = v6-- <= 2;
    }

    while (!v10);
  }

  return i;
}

uint64_t *sub_C0C954(uint64_t *result, __int128 *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v7 = *v2;
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *v2) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x666666666666666)
    {
      sub_1794();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x666666666666666)
      {
        operator new();
      }

      sub_1808();
    }

    v12 = result;
    v13 = 8 * ((v3 - *v2) >> 3);
    v14 = a2[1];
    *v13 = *a2;
    *(v13 + 16) = v14;
    *(v13 + 32) = *(a2 + 4);
    v15 = 40 * v8 + 40;
    v16 = 40 * v8 - (v3 - v7);
    memcpy((v13 - (v3 - v7)), v7, v3 - v7);
    *v2 = v16;
    *(v2 + 8) = v15;
    *(v2 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }

    result = v12;
    *(v2 + 8) = v15;
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    *(v2 + 8) = v3 + 40;
  }

  return result;
}

__n128 sub_C0CAAC(int **a1, int **a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 2;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 4;
    if (v13 <= 2)
    {
      break;
    }

    switch(v13)
    {
      case 3uLL:

        sub_C0CF68(v10, v10 + 2, a2 - 2);
        return result;
      case 4uLL:

        result.n128_u64[0] = sub_C0D2AC(v10, v10 + 2, v10 + 4, a2 - 4).n128_u64[0];
        return result;
      case 5uLL:

        result.n128_u64[0] = sub_C0D4E8(v10, v10 + 2, v10 + 4, v10 + 6, a2 - 4).n128_u64[0];
        return result;
    }

LABEL_10:
    if (v13 <= 23)
    {
      if (a5)
      {

        sub_C0D7D8(v10, a2);
      }

      else
      {

        sub_C0DA0C(v10, a2);
      }

      return result;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_C0E6F0(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = &v10[2 * (v13 >> 1)];
    if (v13 < 0x81)
    {
      sub_C0CF68(&v10[2 * (v13 >> 1)], v10, a2 - 2);
      if (a5)
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_C0CF68(v10, &v10[2 * (v13 >> 1)], a2 - 2);
      v16 = v10 + 2;
      v17 = 2 * v14;
      v18 = &a1[2 * v14 - 2];
      sub_C0CF68(a1 + 4, v18, a2 - 4);
      sub_C0CF68(a1 + 8, &v16[v17], a2 - 6);
      sub_C0CF68(v18, v15, &v16[v17]);
      v38 = *a1;
      v19 = *v15;
      *(a1 + 2) = *(v15 + 2);
      *a1 = v19;
      *(v15 + 2) = DWORD2(v38);
      *v15 = v38;
      if (a5)
      {
        goto LABEL_29;
      }
    }

    v20 = *(a1 - 2);
    if (v20)
    {
      if (v20 == 1)
      {
        v21 = **(a1 - 2);
        v22 = *(a1 + 2);
        if (!v22)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v21 = 0x7FFFFFFF;
        v22 = *(a1 + 2);
        if (!v22)
        {
LABEL_24:
          v23 = (*a1)[1];
          goto LABEL_26;
        }
      }
    }

    else
    {
      v21 = (*(a1 - 2))[1];
      v22 = *(a1 + 2);
      if (!v22)
      {
        goto LABEL_24;
      }
    }

    if (v22 == 1)
    {
      v23 = **a1;
    }

    else
    {
      v23 = 0x7FFFFFFF;
    }

LABEL_26:
    v24 = v20 < v22;
    v25 = v21 == v23;
    v26 = v21 < v23;
    if (!v25)
    {
      v24 = v26;
    }

    if (!v24)
    {
      v10 = sub_C0DC04(a1, a2);
      goto LABEL_34;
    }

LABEL_29:
    v27 = sub_C0DFC4(a1, a2);
    if ((v28 & 1) == 0)
    {
      goto LABEL_32;
    }

    v29 = sub_C0E2B4(a1, v27);
    v10 = (v27 + 16);
    if (sub_C0E2B4((v27 + 16), a2))
    {
      a4 = -v12;
      a2 = v27;
      if (v29)
      {
        return result;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v29)
    {
LABEL_32:
      sub_C0CAAC(a1, v27, a3, -v12, a5 & 1);
      v10 = (v27 + 16);
LABEL_34:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v13 < 2)
  {
    return result;
  }

  if (v13 != 2)
  {
    goto LABEL_10;
  }

  v31 = *(a2 - 2);
  if (v31)
  {
    if (v31 == 1)
    {
      v32 = **v9;
      v33 = *(v10 + 2);
      if (!v33)
      {
LABEL_65:
        v34 = (*v10)[1];
        goto LABEL_67;
      }
    }

    else
    {
      v32 = 0x7FFFFFFF;
      v33 = *(v10 + 2);
      if (!v33)
      {
        goto LABEL_65;
      }
    }
  }

  else
  {
    v32 = (*v9)[1];
    v33 = *(v10 + 2);
    if (!v33)
    {
      goto LABEL_65;
    }
  }

  if (v33 == 1)
  {
    v34 = **v10;
  }

  else
  {
    v34 = 0x7FFFFFFF;
  }

LABEL_67:
  v35 = v31 < v33;
  v25 = v32 == v34;
  v36 = v32 < v34;
  if (!v25)
  {
    v35 = v36;
  }

  if (v35)
  {
    result = *v10;
    v39 = *v10;
    v37 = *v9;
    *(v10 + 2) = *(a2 - 2);
    *v10 = v37;
    *v9 = v39.n128_u64[0];
    *(a2 - 2) = v39.n128_u32[2];
  }

  return result;
}

uint64_t sub_C0CF68(_DWORD *a1, _DWORD **a2, _DWORD **a3)
{
  v3 = *(a2 + 2);
  if (!v3)
  {
    v4 = (*a2)[1];
    v5 = a1[2];
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v3 != 1)
  {
    v4 = 0x7FFFFFFF;
    v5 = a1[2];
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = *(*a1 + 4);
    goto LABEL_11;
  }

  v4 = **a2;
  v5 = a1[2];
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (v5 == 1)
  {
    v6 = **a1;
  }

  else
  {
    v6 = 0x7FFFFFFF;
  }

LABEL_11:
  v7 = v3 < v5;
  v8 = v4 == v6;
  v9 = v4 < v6;
  if (!v8)
  {
    v7 = v9;
  }

  v10 = *(a3 + 2);
  if (v7)
  {
    if (v10)
    {
      if (v10 == 1)
      {
        v11 = **a3;
        if (!v3)
        {
          goto LABEL_29;
        }

LABEL_23:
        if (v3 == 1)
        {
          v13 = **a2;
        }

        else
        {
          v13 = 0x7FFFFFFF;
        }

LABEL_33:
        v15 = v10 < v3;
        if (v11 != v13)
        {
          v15 = v11 < v13;
        }

        if (v15)
        {
          v35 = *a1;
          v16 = *(a3 + 2);
          *a1 = *a3;
          a1[2] = v16;
          goto LABEL_65;
        }

        v36 = *a1;
        v17 = *(a2 + 2);
        *a1 = *a2;
        a1[2] = v17;
        *a2 = v36;
        *(a2 + 2) = DWORD2(v36);
        v18 = *(a3 + 2);
        if (v18)
        {
          if (v18 == 1)
          {
            v19 = **a3;
            v20 = *(a2 + 2);
            if (!v20)
            {
              goto LABEL_57;
            }

LABEL_51:
            if (v20 == 1)
            {
              v27 = **a2;
            }

            else
            {
              v27 = 0x7FFFFFFF;
            }

LABEL_61:
            v29 = v18 < v20;
            v8 = v19 == v27;
            v30 = v19 < v27;
            if (!v8)
            {
              v29 = v30;
            }

            if (!v29)
            {
              return 1;
            }

            v35 = *a2;
            v31 = *(a3 + 2);
            *a2 = *a3;
            *(a2 + 2) = v31;
LABEL_65:
            *a3 = v35;
            *(a3 + 2) = DWORD2(v35);
            return 1;
          }

          v19 = 0x7FFFFFFF;
          v20 = *(a2 + 2);
          if (v20)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v19 = (*a3)[1];
          v20 = *(a2 + 2);
          if (v20)
          {
            goto LABEL_51;
          }
        }

LABEL_57:
        v27 = (*a2)[1];
        goto LABEL_61;
      }

      v11 = 0x7FFFFFFF;
      if (v3)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = (*a3)[1];
      if (v3)
      {
        goto LABEL_23;
      }
    }

LABEL_29:
    v13 = (*a2)[1];
    goto LABEL_33;
  }

  if (!v10)
  {
    v12 = (*a3)[1];
    if (v3)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  if (v10 != 1)
  {
    v12 = 0x7FFFFFFF;
    if (v3)
    {
      goto LABEL_26;
    }

LABEL_31:
    v14 = (*a2)[1];
    goto LABEL_42;
  }

  v12 = **a3;
  if (!v3)
  {
    goto LABEL_31;
  }

LABEL_26:
  if (v3 == 1)
  {
    v14 = **a2;
  }

  else
  {
    v14 = 0x7FFFFFFF;
  }

LABEL_42:
  v21 = v10 < v3;
  if (v12 != v14)
  {
    v21 = v12 < v14;
  }

  if (!v21)
  {
    return 0;
  }

  v37 = *a2;
  v22 = *(a3 + 2);
  *a2 = *a3;
  *(a2 + 2) = v22;
  *a3 = v37;
  *(a3 + 2) = DWORD2(v37);
  v23 = *(a2 + 2);
  if (!v23)
  {
    v24 = (*a2)[1];
    v25 = a1[2];
    if (v25)
    {
      goto LABEL_54;
    }

    goto LABEL_59;
  }

  if (v23 != 1)
  {
    v24 = 0x7FFFFFFF;
    v25 = a1[2];
    if (v25)
    {
      goto LABEL_54;
    }

LABEL_59:
    v28 = *(*a1 + 4);
    goto LABEL_68;
  }

  v24 = **a2;
  v25 = a1[2];
  if (!v25)
  {
    goto LABEL_59;
  }

LABEL_54:
  if (v25 == 1)
  {
    v28 = **a1;
  }

  else
  {
    v28 = 0x7FFFFFFF;
  }

LABEL_68:
  v32 = v23 < v25;
  v8 = v24 == v28;
  v33 = v24 < v28;
  if (!v8)
  {
    v32 = v33;
  }

  if (!v32)
  {
    return 1;
  }

  v38 = *a1;
  v34 = *(a2 + 2);
  *a1 = *a2;
  a1[2] = v34;
  *a2 = v38;
  *(a2 + 2) = DWORD2(v38);
  return 1;
}

__n128 sub_C0D2AC(_DWORD *a1, _DWORD **a2, _DWORD **a3, _DWORD *a4)
{
  sub_C0CF68(a1, a2, a3);
  v9 = a4[2];
  if (!v9)
  {
    v10 = *(*a4 + 4);
    v11 = *(a3 + 2);
    if (v11)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v9 != 1)
  {
    v10 = 0x7FFFFFFF;
    v11 = *(a3 + 2);
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_9:
    v12 = (*a3)[1];
    goto LABEL_11;
  }

  v10 = **a4;
  v11 = *(a3 + 2);
  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (v11 == 1)
  {
    v12 = **a3;
  }

  else
  {
    v12 = 0x7FFFFFFF;
  }

LABEL_11:
  v13 = v9 < v11;
  v14 = v10 == v12;
  v15 = v10 < v12;
  if (!v14)
  {
    v13 = v15;
  }

  if (!v13)
  {
    return result;
  }

  result = *a3;
  v31 = *a3;
  v16 = a4[2];
  *a3 = *a4;
  *(a3 + 2) = v16;
  *a4 = v31;
  a4[2] = DWORD2(v31);
  v17 = *(a3 + 2);
  if (!v17)
  {
    v18 = (*a3)[1];
    v19 = *(a2 + 2);
    if (v19)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (v17 != 1)
  {
    v18 = 0x7FFFFFFF;
    v19 = *(a2 + 2);
    if (v19)
    {
      goto LABEL_19;
    }

LABEL_22:
    v20 = (*a2)[1];
    goto LABEL_24;
  }

  v18 = **a3;
  v19 = *(a2 + 2);
  if (!v19)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (v19 == 1)
  {
    v20 = **a2;
  }

  else
  {
    v20 = 0x7FFFFFFF;
  }

LABEL_24:
  v21 = v17 < v19;
  v14 = v18 == v20;
  v22 = v18 < v20;
  if (!v14)
  {
    v21 = v22;
  }

  if (v21)
  {
    result = *a2;
    v32 = *a2;
    v23 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v23;
    *a3 = v32;
    *(a3 + 2) = DWORD2(v32);
    v24 = *(a2 + 2);
    if (v24)
    {
      if (v24 == 1)
      {
        v25 = **a2;
        v26 = a1[2];
        if (!v26)
        {
          goto LABEL_35;
        }

LABEL_32:
        if (v26 == 1)
        {
          v27 = **a1;
        }

        else
        {
          v27 = 0x7FFFFFFF;
        }

        goto LABEL_37;
      }

      v25 = 0x7FFFFFFF;
      v26 = a1[2];
      if (v26)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v25 = (*a2)[1];
      v26 = a1[2];
      if (v26)
      {
        goto LABEL_32;
      }
    }

LABEL_35:
    v27 = *(*a1 + 4);
LABEL_37:
    v28 = v24 < v26;
    v14 = v25 == v27;
    v29 = v25 < v27;
    if (!v14)
    {
      v28 = v29;
    }

    if (v28)
    {
      result = *a1;
      v33 = *a1;
      v30 = *(a2 + 2);
      *a1 = *a2;
      a1[2] = v30;
      *a2 = v33;
      *(a2 + 2) = DWORD2(v33);
    }
  }

  return result;
}

__n128 sub_C0D4E8(_DWORD *a1, _DWORD **a2, _DWORD **a3, _DWORD **a4, _DWORD *a5)
{
  result.n128_u64[0] = sub_C0D2AC(a1, a2, a3, a4).n128_u64[0];
  v11 = a5[2];
  if (!v11)
  {
    v12 = *(*a5 + 4);
    v13 = *(a4 + 2);
    if (v13)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (v11 != 1)
  {
    v12 = 0x7FFFFFFF;
    v13 = *(a4 + 2);
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_9:
    v14 = (*a4)[1];
    goto LABEL_11;
  }

  v12 = **a5;
  v13 = *(a4 + 2);
  if (!v13)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (v13 == 1)
  {
    v14 = **a4;
  }

  else
  {
    v14 = 0x7FFFFFFF;
  }

LABEL_11:
  v15 = v11 < v13;
  v16 = v12 == v14;
  v17 = v12 < v14;
  if (!v16)
  {
    v15 = v17;
  }

  if (!v15)
  {
    return result;
  }

  result = *a4;
  v40 = *a4;
  v18 = a5[2];
  *a4 = *a5;
  *(a4 + 2) = v18;
  *a5 = v40;
  a5[2] = DWORD2(v40);
  v19 = *(a4 + 2);
  if (!v19)
  {
    v20 = (*a4)[1];
    v21 = *(a3 + 2);
    if (v21)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (v19 != 1)
  {
    v20 = 0x7FFFFFFF;
    v21 = *(a3 + 2);
    if (v21)
    {
      goto LABEL_19;
    }

LABEL_22:
    v22 = (*a3)[1];
    goto LABEL_24;
  }

  v20 = **a4;
  v21 = *(a3 + 2);
  if (!v21)
  {
    goto LABEL_22;
  }

LABEL_19:
  if (v21 == 1)
  {
    v22 = **a3;
  }

  else
  {
    v22 = 0x7FFFFFFF;
  }

LABEL_24:
  v23 = v19 < v21;
  v16 = v20 == v22;
  v24 = v20 < v22;
  if (!v16)
  {
    v23 = v24;
  }

  if (!v23)
  {
    return result;
  }

  result = *a3;
  v41 = *a3;
  v25 = *(a4 + 2);
  *a3 = *a4;
  *(a3 + 2) = v25;
  *a4 = v41;
  *(a4 + 2) = DWORD2(v41);
  v26 = *(a3 + 2);
  if (!v26)
  {
    v27 = (*a3)[1];
    v28 = *(a2 + 2);
    if (v28)
    {
      goto LABEL_32;
    }

    goto LABEL_35;
  }

  if (v26 != 1)
  {
    v27 = 0x7FFFFFFF;
    v28 = *(a2 + 2);
    if (v28)
    {
      goto LABEL_32;
    }

LABEL_35:
    v29 = (*a2)[1];
    goto LABEL_37;
  }

  v27 = **a3;
  v28 = *(a2 + 2);
  if (!v28)
  {
    goto LABEL_35;
  }

LABEL_32:
  if (v28 == 1)
  {
    v29 = **a2;
  }

  else
  {
    v29 = 0x7FFFFFFF;
  }

LABEL_37:
  v30 = v26 < v28;
  v16 = v27 == v29;
  v31 = v27 < v29;
  if (!v16)
  {
    v30 = v31;
  }

  if (v30)
  {
    result = *a2;
    v42 = *a2;
    v32 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v32;
    *a3 = v42;
    *(a3 + 2) = DWORD2(v42);
    v33 = *(a2 + 2);
    if (v33)
    {
      if (v33 == 1)
      {
        v34 = **a2;
        v35 = a1[2];
        if (!v35)
        {
          goto LABEL_48;
        }

LABEL_45:
        if (v35 == 1)
        {
          v36 = **a1;
        }

        else
        {
          v36 = 0x7FFFFFFF;
        }

        goto LABEL_50;
      }

      v34 = 0x7FFFFFFF;
      v35 = a1[2];
      if (v35)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v34 = (*a2)[1];
      v35 = a1[2];
      if (v35)
      {
        goto LABEL_45;
      }
    }

LABEL_48:
    v36 = *(*a1 + 4);
LABEL_50:
    v37 = v33 < v35;
    v16 = v34 == v36;
    v38 = v34 < v36;
    if (!v16)
    {
      v37 = v38;
    }

    if (v37)
    {
      result = *a1;
      v43 = *a1;
      v39 = *(a2 + 2);
      *a1 = *a2;
      a1[2] = v39;
      *a2 = v43;
      *(a2 + 2) = DWORD2(v43);
    }
  }

  return result;
}

int **sub_C0D7D8(int **result, int **a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v6 = v2;
        v7 = *(v4 + 6);
        if (v7)
        {
          if (v7 == 1)
          {
            v8 = **v6;
            v9 = *(v4 + 2);
            if (v9)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v8 = 0x7FFFFFFF;
            v9 = *(v4 + 2);
            if (v9)
            {
LABEL_10:
              if (v9 == 1)
              {
                v10 = **v4;
              }

              else
              {
                v10 = 0x7FFFFFFF;
              }

              goto LABEL_17;
            }
          }
        }

        else
        {
          v8 = (*v6)[1];
          v9 = *(v4 + 2);
          if (v9)
          {
            goto LABEL_10;
          }
        }

        v10 = (*v4)[1];
LABEL_17:
        v11 = v7 < v9;
        v12 = v8 == v10;
        v13 = v8 < v10;
        if (v12)
        {
          v13 = v11;
        }

        if (v13)
        {
          v14 = *v6;
          v15 = v3;
          if (v7 == 1)
          {
            while (1)
            {
              v26 = result + v15;
              *(v26 + 16) = *(result + v15);
              *(v26 + 24) = *(result + v15 + 8);
              if (!v15)
              {
                break;
              }

              v27 = *(v26 - 8);
              if (v27 == 1)
              {
                v23 = **(v26 - 16);
              }

              else if (v27)
              {
                v23 = 0x7FFFFFFF;
              }

              else
              {
                v23 = *(*(v26 - 16) + 4);
              }

              v24 = v27 > 1;
              v12 = *v14 == v23;
              v25 = *v14 < v23;
              if (!v12)
              {
                v24 = v25;
              }

              v15 -= 16;
              if (!v24)
              {
LABEL_50:
                v30 = result + v15;
LABEL_51:
                v5 = (v30 + 16);
                goto LABEL_5;
              }
            }
          }

          else
          {
            v15 = v3;
            v16 = v3;
            if (v7)
            {
              while (1)
              {
                v28 = result + v16;
                *(v28 + 16) = *(result + v16);
                *(v28 + 24) = *(result + v16 + 8);
                if (!v16)
                {
                  break;
                }

                v29 = *(v28 - 8);
                if (v29)
                {
                  if (v29 == 1)
                  {
                    v16 -= 16;
                    if (**(v28 - 16) != 0x7FFFFFFF)
                    {
LABEL_49:
                      v30 = result + v16;
                      goto LABEL_51;
                    }
                  }

                  else
                  {
                    v16 -= 16;
                  }
                }

                else
                {
                  v16 -= 16;
                  if (*(*(v28 - 16) + 4) != 0x7FFFFFFF)
                  {
                    goto LABEL_49;
                  }
                }

                if (v7 >= v29)
                {
                  goto LABEL_49;
                }
              }
            }

            else
            {
              while (1)
              {
                v21 = result + v15;
                *(v21 + 16) = *(result + v15);
                *(v21 + 24) = *(result + v15 + 8);
                if (!v15)
                {
                  break;
                }

                v22 = *(v21 - 8);
                if (v22 == 1)
                {
                  v17 = **(v21 - 16);
                }

                else if (v22)
                {
                  v17 = 0x7FFFFFFF;
                }

                else
                {
                  v17 = *(*(v21 - 16) + 4);
                }

                v18 = v14[1];
                v19 = v22 != 0;
                v12 = v18 == v17;
                v20 = v18 < v17;
                if (!v12)
                {
                  v19 = v20;
                }

                v15 -= 16;
                if (!v19)
                {
                  goto LABEL_50;
                }
              }
            }
          }

          v5 = result;
LABEL_5:
          *v5 = v14;
          *(v5 + 2) = v7;
        }

        v2 = v6 + 2;
        v3 += 16;
        v4 = v6;
      }

      while (v6 + 2 != a2);
    }
  }

  return result;
}

int **sub_C0DA0C(int **result, int **a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      do
      {
        v3 = v2;
        v4 = *(result + 6);
        if (v4)
        {
          if (v4 == 1)
          {
            v5 = **v3;
            v6 = *(result + 2);
            if (v6)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v5 = 0x7FFFFFFF;
            v6 = *(result + 2);
            if (v6)
            {
LABEL_11:
              if (v6 == 1)
              {
                v7 = **result;
              }

              else
              {
                v7 = 0x7FFFFFFF;
              }

              goto LABEL_16;
            }
          }
        }

        else
        {
          v5 = (*v3)[1];
          v6 = *(result + 2);
          if (v6)
          {
            goto LABEL_11;
          }
        }

        v7 = (*result)[1];
LABEL_16:
        v8 = v4 < v6;
        v9 = v5 == v7;
        v10 = v5 < v7;
        if (v9)
        {
          v10 = v8;
        }

        if (v10)
        {
          v11 = *v3;
          v12 = v3;
          if (v4 == 1)
          {
            do
            {
              *v12 = *(v12 - 2);
              *(v12 + 2) = *(v12 - 2);
              v24 = *(v12 - 6);
              if (v24 == 1)
              {
                v21 = **(v12 - 4);
              }

              else if (v24)
              {
                v21 = 0x7FFFFFFF;
              }

              else
              {
                v21 = (*(v12 - 4))[1];
              }

              v22 = v24 > 1;
              v9 = *v11 == v21;
              v23 = *v11 < v21;
              if (!v9)
              {
                v22 = v23;
              }

              v12 -= 2;
            }

            while (v22);
          }

          else
          {
            v12 = v3;
            if (v4)
            {
              do
              {
                *v12 = *(v12 - 2);
                *(v12 + 2) = *(v12 - 2);
                v13 = *(v12 - 6);
                if (v13)
                {
                  if (v13 == 1)
                  {
                    v14 = **(v12 - 4);
                    v12 -= 2;
                    if (v14 != 0x7FFFFFFF)
                    {
                      break;
                    }
                  }

                  else
                  {
                    v12 -= 2;
                  }
                }

                else
                {
                  v15 = (*(v12 - 4))[1];
                  v12 -= 2;
                  if (v15 != 0x7FFFFFFF)
                  {
                    break;
                  }
                }
              }

              while (v4 < v13);
            }

            else
            {
              do
              {
                *v12 = *(v12 - 2);
                *(v12 + 2) = *(v12 - 2);
                v20 = *(v12 - 6);
                if (v20 == 1)
                {
                  v16 = **(v12 - 4);
                }

                else if (v20)
                {
                  v16 = 0x7FFFFFFF;
                }

                else
                {
                  v16 = (*(v12 - 4))[1];
                }

                v17 = v11[1];
                v18 = v20 != 0;
                v9 = v17 == v16;
                v19 = v17 < v16;
                if (!v9)
                {
                  v18 = v19;
                }

                v12 -= 2;
              }

              while (v18);
            }
          }

          *v12 = v11;
          *(v12 + 2) = v4;
        }

        v2 = v3 + 2;
        result = v3;
      }

      while (v3 + 2 != a2);
    }
  }

  return result;
}

int **sub_C0DC04(uint64_t a1, int **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = *v2;
      v5 = *(a2 - 2);
      if (!v5)
      {
LABEL_12:
        v9 = (*(a2 - 2))[1];
        v10 = v3 < v5;
        v7 = v4 == v9;
        v11 = v4 < v9;
        if (v7)
        {
          v11 = v10;
        }

        if (v11)
        {
LABEL_15:
          v12 = a1;
          while (1)
          {
            v16 = v12;
            if (v3)
            {
              if (v3 == 1)
              {
                v17 = *v2;
                v12 += 2;
                v18 = *(v16 + 6);
                if (v18)
                {
                  goto LABEL_27;
                }
              }

              else
              {
                v17 = 0x7FFFFFFF;
                v12 += 2;
                v18 = *(v16 + 6);
                if (v18)
                {
LABEL_27:
                  if (v18 == 1)
                  {
                    v13 = **v12;
                  }

                  else
                  {
                    v13 = 0x7FFFFFFF;
                  }

                  goto LABEL_17;
                }
              }
            }

            else
            {
              v17 = v2[1];
              v12 += 2;
              v18 = *(v16 + 6);
              if (v18)
              {
                goto LABEL_27;
              }
            }

            v13 = (*v12)[1];
LABEL_17:
            v14 = v3 < v18;
            v7 = v17 == v13;
            v15 = v17 < v13;
            if (v7)
            {
              v15 = v14;
            }

            if (v15)
            {
              goto LABEL_49;
            }
          }
        }

        goto LABEL_33;
      }
    }

    else
    {
      v4 = 0x7FFFFFFF;
      v5 = *(a2 - 2);
      if (!v5)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v4 = v2[1];
    v5 = *(a2 - 2);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  if (v5 == 1)
  {
    v6 = **(a2 - 2);
    v7 = v4 == v6;
    v8 = v4 < v6;
    if (v7)
    {
      v8 = v3 == 0;
    }

    if (v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v19 = v3 < v5;
    v7 = v4 == 0x7FFFFFFF;
    v20 = v4 != 0x7FFFFFFF;
    if (v7)
    {
      v20 = v19;
    }

    if (v20)
    {
      goto LABEL_15;
    }
  }

LABEL_33:
  v21 = (a1 + 16);
  do
  {
    v12 = v21;
    if (v21 >= a2)
    {
      break;
    }

    if (v3)
    {
      if (v3 == 1)
      {
        v25 = *v2;
        v26 = *(v12 + 2);
        if (v26)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v25 = 0x7FFFFFFF;
        v26 = *(v12 + 2);
        if (v26)
        {
LABEL_46:
          if (v26 == 1)
          {
            v22 = **v12;
          }

          else
          {
            v22 = 0x7FFFFFFF;
          }

          goto LABEL_35;
        }
      }
    }

    else
    {
      v25 = v2[1];
      v26 = *(v12 + 2);
      if (v26)
      {
        goto LABEL_46;
      }
    }

    v22 = (*v12)[1];
LABEL_35:
    v23 = v3 < v26;
    v7 = v25 == v22;
    v24 = v25 < v22;
    if (!v7)
    {
      v23 = v24;
    }

    v21 = v12 + 2;
  }

  while (!v23);
LABEL_49:
  if (v12 < a2)
  {
    do
    {
      v43 = a2;
      if (v3)
      {
        if (v3 == 1)
        {
          v44 = *v2;
          a2 -= 2;
          v45 = *(v43 - 2);
          if (v45)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v44 = 0x7FFFFFFF;
          a2 -= 2;
          v45 = *(v43 - 2);
          if (v45)
          {
LABEL_91:
            if (v45 == 1)
            {
              v40 = **a2;
            }

            else
            {
              v40 = 0x7FFFFFFF;
            }

            goto LABEL_81;
          }
        }
      }

      else
      {
        v44 = v2[1];
        a2 -= 2;
        v45 = *(v43 - 2);
        if (v45)
        {
          goto LABEL_91;
        }
      }

      v40 = (*a2)[1];
LABEL_81:
      v41 = v3 < v45;
      v7 = v44 == v40;
      v42 = v44 < v40;
      if (v7)
      {
        v42 = v41;
      }
    }

    while (v42);
  }

LABEL_50:
  if (v12 < a2)
  {
    v48 = *v12;
    v27 = *a2;
    *(v12 + 2) = *(a2 + 2);
    *v12 = v27;
    *(a2 + 2) = DWORD2(v48);
    *a2 = v48;
    while (1)
    {
      v31 = v12;
      if (v3)
      {
        if (v3 == 1)
        {
          v32 = *v2;
          v12 += 2;
          v33 = *(v31 + 6);
          if (v33)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v32 = 0x7FFFFFFF;
          v12 += 2;
          v33 = *(v31 + 6);
          if (v33)
          {
LABEL_63:
            if (v33 == 1)
            {
              v28 = **v12;
            }

            else
            {
              v28 = 0x7FFFFFFF;
            }

            goto LABEL_53;
          }
        }
      }

      else
      {
        v32 = v2[1];
        v12 += 2;
        v33 = *(v31 + 6);
        if (v33)
        {
          goto LABEL_63;
        }
      }

      v28 = (*v12)[1];
LABEL_53:
      v29 = v3 < v33;
      v7 = v32 == v28;
      v30 = v32 < v28;
      if (v7)
      {
        v30 = v29;
      }

      if (v30)
      {
        while (1)
        {
          v37 = a2;
          if (v3)
          {
            if (v3 == 1)
            {
              v38 = *v2;
              a2 -= 2;
              v39 = *(v37 - 2);
              if (!v39)
              {
                goto LABEL_66;
              }
            }

            else
            {
              v38 = 0x7FFFFFFF;
              a2 -= 2;
              v39 = *(v37 - 2);
              if (!v39)
              {
LABEL_66:
                v34 = (*a2)[1];
                goto LABEL_67;
              }
            }
          }

          else
          {
            v38 = v2[1];
            a2 -= 2;
            v39 = *(v37 - 2);
            if (!v39)
            {
              goto LABEL_66;
            }
          }

          if (v39 == 1)
          {
            v34 = **a2;
          }

          else
          {
            v34 = 0x7FFFFFFF;
          }

LABEL_67:
          v35 = v3 < v39;
          v7 = v38 == v34;
          v36 = v38 < v34;
          if (v7)
          {
            v36 = v35;
          }

          if (!v36)
          {
            goto LABEL_50;
          }
        }
      }
    }
  }

  if (v12 - 2 != a1)
  {
    v46 = *(v12 - 2);
    *(a1 + 8) = *(v12 - 2);
    *a1 = v46;
  }

  *(v12 - 2) = v2;
  *(v12 - 2) = v3;
  return v12;
}

unint64_t sub_C0DFC4(uint64_t a1, int **a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  do
  {
    v9 = a1 + v2;
    v10 = *(a1 + v2 + 24);
    if (v10)
    {
      if (v10 == 1)
      {
        v11 = **(v9 + 16);
        if (!v4)
        {
          goto LABEL_2;
        }
      }

      else
      {
        v11 = 0x7FFFFFFF;
        if (!v4)
        {
LABEL_2:
          v5 = v3[1];
          goto LABEL_3;
        }
      }
    }

    else
    {
      v11 = *(*(v9 + 16) + 4);
      if (!v4)
      {
        goto LABEL_2;
      }
    }

    if (v4 == 1)
    {
      v5 = *v3;
    }

    else
    {
      v5 = 0x7FFFFFFF;
    }

LABEL_3:
    v6 = v10 < v4;
    v7 = v11 == v5;
    v8 = v11 < v5;
    if (!v7)
    {
      v6 = v8;
    }

    v2 += 16;
  }

  while (v6);
  v12 = a1 + v2;
  if (v2 == 16)
  {
    while (1)
    {
      v21 = a2;
      if (v12 >= a2)
      {
        goto LABEL_47;
      }

      a2 -= 2;
      v22 = *(v21 - 2);
      if (v22)
      {
        if (v22 == 1)
        {
          v23 = **a2;
          if (v4)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v23 = 0x7FFFFFFF;
          if (v4)
          {
LABEL_44:
            if (v4 == 1)
            {
              v18 = *v3;
            }

            else
            {
              v18 = 0x7FFFFFFF;
            }

            goto LABEL_33;
          }
        }
      }

      else
      {
        v23 = (*a2)[1];
        if (v4)
        {
          goto LABEL_44;
        }
      }

      v18 = v3[1];
LABEL_33:
      v19 = v22 < v4;
      v7 = v23 == v18;
      v20 = v23 < v18;
      if (!v7)
      {
        v19 = v20;
      }

      if (v19)
      {
        goto LABEL_47;
      }
    }
  }

  while (2)
  {
    v16 = *(a2 - 2);
    a2 -= 2;
    if (v16)
    {
      if (v16 == 1)
      {
        v17 = **a2;
        if (!v4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v17 = 0x7FFFFFFF;
        if (!v4)
        {
          goto LABEL_18;
        }
      }

LABEL_29:
      if (v4 == 1)
      {
        v13 = *v3;
      }

      else
      {
        v13 = 0x7FFFFFFF;
      }
    }

    else
    {
      v17 = (*a2)[1];
      if (v4)
      {
        goto LABEL_29;
      }

LABEL_18:
      v13 = v3[1];
    }

    v14 = v16 < v4;
    v7 = v17 == v13;
    v15 = v17 < v13;
    if (!v7)
    {
      v14 = v15;
    }

    if (!v14)
    {
      continue;
    }

    break;
  }

LABEL_47:
  v24 = v12;
  if (v12 < a2)
  {
    v25 = a2;
    do
    {
      v39 = *v24;
      v26 = *v25;
      *(v24 + 8) = *(v25 + 2);
      *v24 = v26;
      *(v25 + 2) = DWORD2(v39);
      *v25 = v39;
      do
      {
        v30 = *(v24 + 24);
        v24 += 16;
        if (v30)
        {
          if (v30 == 1)
          {
            v31 = **v24;
            if (!v4)
            {
              goto LABEL_51;
            }
          }

          else
          {
            v31 = 0x7FFFFFFF;
            if (!v4)
            {
LABEL_51:
              v27 = v3[1];
              goto LABEL_52;
            }
          }
        }

        else
        {
          v31 = *(*v24 + 4);
          if (!v4)
          {
            goto LABEL_51;
          }
        }

        if (v4 == 1)
        {
          v27 = *v3;
        }

        else
        {
          v27 = 0x7FFFFFFF;
        }

LABEL_52:
        v28 = v30 < v4;
        v7 = v31 == v27;
        v29 = v31 < v27;
        if (!v7)
        {
          v28 = v29;
        }
      }

      while (v28);
      do
      {
        v35 = *(v25 - 2);
        v25 -= 2;
        if (v35)
        {
          if (v35 == 1)
          {
            v36 = **v25;
            if (!v4)
            {
              goto LABEL_65;
            }
          }

          else
          {
            v36 = 0x7FFFFFFF;
            if (!v4)
            {
LABEL_65:
              v32 = v3[1];
              goto LABEL_66;
            }
          }
        }

        else
        {
          v36 = (*v25)[1];
          if (!v4)
          {
            goto LABEL_65;
          }
        }

        if (v4 == 1)
        {
          v32 = *v3;
        }

        else
        {
          v32 = 0x7FFFFFFF;
        }

LABEL_66:
        v33 = v35 < v4;
        v7 = v36 == v32;
        v34 = v36 < v32;
        if (!v7)
        {
          v33 = v34;
        }
      }

      while (!v33);
    }

    while (v24 < v25);
  }

  if (v24 - 16 != a1)
  {
    v37 = *(v24 - 16);
    *(a1 + 8) = *(v24 - 8);
    *a1 = v37;
  }

  *(v24 - 16) = v3;
  *(v24 - 8) = v4;
  return v24 - 16;
}

BOOL sub_C0E2B4(int **a1, char *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_C0CF68(a1, a1 + 2, a2 - 2);
        return 1;
      case 4:
        sub_C0D2AC(a1, a1 + 2, a1 + 4, a2 - 4);
        return 1;
      case 5:
        sub_C0D4E8(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 4);
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
      v4 = (a2 - 16);
      v5 = *(a2 - 2);
      if (v5)
      {
        if (v5 == 1)
        {
          v6 = **v4;
          v7 = *(a1 + 2);
          if (v7)
          {
            goto LABEL_12;
          }

LABEL_68:
          v8 = (*a1)[1];
LABEL_72:
          v39 = v5 < v7;
          v20 = v6 == v8;
          v40 = v6 < v8;
          if (!v20)
          {
            v39 = v40;
          }

          if (v39)
          {
            v42 = *a1;
            v41 = *(a2 - 2);
            *a1 = *v4;
            *(a1 + 2) = v41;
            *v4 = v42;
            *(a2 - 2) = DWORD2(v42);
            return 1;
          }

          return 1;
        }

        v6 = 0x7FFFFFFF;
        v7 = *(a1 + 2);
        if (!v7)
        {
          goto LABEL_68;
        }
      }

      else
      {
        v6 = (*v4)[1];
        v7 = *(a1 + 2);
        if (!v7)
        {
          goto LABEL_68;
        }
      }

LABEL_12:
      if (v7 == 1)
      {
        v8 = **a1;
      }

      else
      {
        v8 = 0x7FFFFFFF;
      }

      goto LABEL_72;
    }
  }

  v9 = (a1 + 4);
  sub_C0CF68(a1, a1 + 2, a1 + 4);
  v12 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *(v12 + 2);
    if (v15)
    {
      if (v15 == 1)
      {
        v16 = **v12;
        v17 = *(v9 + 2);
        if (v17)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v16 = 0x7FFFFFFF;
        v17 = *(v9 + 2);
        if (v17)
        {
LABEL_22:
          if (v17 == 1)
          {
            v18 = **v9;
          }

          else
          {
            v18 = 0x7FFFFFFF;
          }

          goto LABEL_29;
        }
      }
    }

    else
    {
      v16 = *(*v12 + 4);
      v17 = *(v9 + 2);
      if (v17)
      {
        goto LABEL_22;
      }
    }

    v18 = *(*v9 + 4);
LABEL_29:
    v19 = v15 < v17;
    v20 = v16 == v18;
    v21 = v16 < v18;
    if (v20)
    {
      v21 = v19;
    }

    if (v21)
    {
      v22 = *v12;
      v23 = v13;
      if (v15 == 1)
      {
        while (1)
        {
          v34 = a1 + v23;
          *(v34 + 6) = *(a1 + v23 + 32);
          *(v34 + 14) = *(a1 + v23 + 40);
          if (v23 == -32)
          {
            break;
          }

          v35 = *(v34 + 6);
          if (v35 == 1)
          {
            v31 = **(v34 + 2);
          }

          else if (v35)
          {
            v31 = 0x7FFFFFFF;
          }

          else
          {
            v31 = *(*(v34 + 2) + 4);
          }

          v32 = v35 > 1;
          v20 = *v22 == v31;
          v33 = *v22 < v31;
          if (!v20)
          {
            v32 = v33;
          }

          v23 -= 16;
          if (!v32)
          {
LABEL_62:
            v38 = a1 + v23;
LABEL_63:
            *(v38 + 6) = v22;
            *(v38 + 14) = v15;
            if (++v14 == 8)
            {
              return v12 + 16 == a2;
            }

            goto LABEL_64;
          }
        }
      }

      else
      {
        v23 = v13;
        v24 = v13;
        if (v15)
        {
          while (1)
          {
            v36 = a1 + v24;
            *(v36 + 6) = *(a1 + v24 + 32);
            *(v36 + 14) = *(a1 + v24 + 40);
            if (v24 == -32)
            {
              break;
            }

            v37 = *(v36 + 6);
            if (v37)
            {
              if (v37 == 1)
              {
                v24 -= 16;
                if (**(v36 + 2) != 0x7FFFFFFF)
                {
LABEL_61:
                  v38 = a1 + v24;
                  goto LABEL_63;
                }
              }

              else
              {
                v24 -= 16;
              }
            }

            else
            {
              v24 -= 16;
              if (*(*(v36 + 2) + 4) != 0x7FFFFFFF)
              {
                goto LABEL_61;
              }
            }

            if (v15 >= v37)
            {
              goto LABEL_61;
            }
          }
        }

        else
        {
          while (1)
          {
            v29 = a1 + v23;
            *(v29 + 6) = *(a1 + v23 + 32);
            *(v29 + 14) = *(a1 + v23 + 40);
            if (v23 == -32)
            {
              break;
            }

            v30 = *(v29 + 6);
            if (v30 == 1)
            {
              v25 = **(v29 + 2);
            }

            else if (v30)
            {
              v25 = 0x7FFFFFFF;
            }

            else
            {
              v25 = *(*(v29 + 2) + 4);
            }

            v26 = v22[1];
            v27 = v30 != 0;
            v20 = v26 == v25;
            v28 = v26 < v25;
            if (!v20)
            {
              v27 = v28;
            }

            v23 -= 16;
            if (!v27)
            {
              goto LABEL_62;
            }
          }
        }
      }

      *a1 = v22;
      *(a1 + 2) = v15;
      if (++v14 == 8)
      {
        return v12 + 16 == a2;
      }
    }

LABEL_64:
    v9 = v12;
    v13 += 16;
    v12 += 16;
    if (v12 == a2)
    {
      return 1;
    }
  }
}

int **sub_C0E6F0(int **a1, int **a2, int **a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        sub_C0E9D8(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    i = v6;
    if (v6 != a3)
    {
      for (i = v6; i != a3; i += 2)
      {
        v13 = *(i + 2);
        if (v13)
        {
          if (v13 == 1)
          {
            v14 = **i;
            v15 = *(a1 + 2);
            if (v15)
            {
              goto LABEL_13;
            }
          }

          else
          {
            v14 = 0x7FFFFFFF;
            v15 = *(a1 + 2);
            if (v15)
            {
LABEL_13:
              if (v15 == 1)
              {
                v16 = **a1;
              }

              else
              {
                v16 = 0x7FFFFFFF;
              }

              goto LABEL_18;
            }
          }
        }

        else
        {
          v14 = (*i)[1];
          v15 = *(a1 + 2);
          if (v15)
          {
            goto LABEL_13;
          }
        }

        v16 = (*a1)[1];
LABEL_18:
        v17 = v13 < v15;
        v18 = v14 == v16;
        v19 = v14 < v16;
        if (!v18)
        {
          v17 = v19;
        }

        if (v17)
        {
          v38 = *i;
          v20 = *(a1 + 2);
          *i = *a1;
          *(i + 2) = v20;
          *a1 = v38;
          *(a1 + 2) = DWORD2(v38);
          sub_C0E9D8(a1, a4, v8, a1);
        }
      }
    }

    if (v8 < 2)
    {
      return i;
    }

LABEL_30:
    v24 = 0;
    v39 = *a1;
    v25 = a1;
    while (1)
    {
      v32 = &v25[2 * v24];
      v29 = v32 + 2;
      v30 = (2 * v24) | 1;
      v33 = 2 * v24 + 2;
      if (v33 < v8)
      {
        break;
      }

LABEL_36:
      v31 = *v29;
      *(v25 + 2) = *(v29 + 2);
      *v25 = v31;
      v25 = v29;
      v24 = v30;
      if (v30 > ((v8 - 2) >> 1))
      {
        v6 -= 2;
        if (v29 != v6)
        {
          v22 = *v6;
          *(v29 + 2) = *(v6 + 2);
          *v29 = v22;
          *v6 = v39;
          *(v6 + 2) = DWORD2(v39);
          sub_C0EC98(a1, (v29 + 2), a4, ((v29 + 2) - a1) >> 4);
          v23 = v8-- <= 2;
          if (v23)
          {
            return i;
          }

          goto LABEL_30;
        }

        *(v29 + 2) = DWORD2(v39);
        *v29 = v39;
        v23 = v8-- <= 2;
        if (v23)
        {
          return i;
        }

        goto LABEL_30;
      }
    }

    v34 = *(v32 + 6);
    if (v34)
    {
      if (v34 == 1)
      {
        v35 = **v29;
        v36 = v32 + 4;
        v37 = *(v32 + 10);
        if (!v37)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v35 = 0x7FFFFFFF;
        v36 = v32 + 4;
        v37 = *(v32 + 10);
        if (!v37)
        {
LABEL_31:
          v26 = (*v36)[1];
LABEL_32:
          v27 = v34 < v37;
          v18 = v35 == v26;
          v28 = v35 < v26;
          if (!v18)
          {
            v27 = v28;
          }

          if (v27)
          {
            v29 = v36;
            v30 = v33;
          }

          goto LABEL_36;
        }
      }
    }

    else
    {
      v35 = (*v29)[1];
      v36 = v32 + 4;
      v37 = *(v32 + 10);
      if (!v37)
      {
        goto LABEL_31;
      }
    }

    if (v37 == 1)
    {
      v26 = **v36;
    }

    else
    {
      v26 = 0x7FFFFFFF;
    }

    goto LABEL_32;
  }

  return a3;
}

uint64_t sub_C0E9D8(uint64_t result, uint64_t a2, uint64_t a3, int **a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = a4 - result;
  v5 = (a3 - 2) >> 1;
  if (v5 < (a4 - result) >> 4)
  {
    return result;
  }

  v6 = v4 >> 3;
  v7 = (v4 >> 3) + 1;
  v8 = (result + 16 * v7);
  v9 = v6 + 2;
  if (v9 < a3)
  {
    v10 = v8 + 2;
    v11 = *(v8 + 2);
    if (v11)
    {
      if (v11 == 1)
      {
        v12 = **v8;
        v13 = *(v8 + 6);
        if (!v13)
        {
          goto LABEL_12;
        }

LABEL_9:
        if (v13 == 1)
        {
          v14 = **v10;
        }

        else
        {
          v14 = 0x7FFFFFFF;
        }

        goto LABEL_14;
      }

      v12 = 0x7FFFFFFF;
      v13 = *(v8 + 6);
      if (v13)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v12 = (*v8)[1];
      v13 = *(v8 + 6);
      if (v13)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v14 = (*v10)[1];
LABEL_14:
    v15 = v11 < v13;
    v16 = v12 == v14;
    v17 = v12 < v14;
    if (!v16)
    {
      v15 = v17;
    }

    if (v15)
    {
      v8 += 2;
      v7 = v9;
    }
  }

  v18 = *(v8 + 2);
  if (v18)
  {
    if (v18 == 1)
    {
      v19 = **v8;
      v20 = *(a4 + 2);
      if (!v20)
      {
LABEL_29:
        v24 = (*a4)[1];
        v25 = v18 < v20;
        v16 = v19 == v24;
        v26 = v19 < v24;
        if (!v16)
        {
          v25 = v26;
        }

        if (v25)
        {
          return result;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v19 = 0x7FFFFFFF;
      v20 = *(a4 + 2);
      if (!v20)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    v19 = (*v8)[1];
    v20 = *(a4 + 2);
    if (!v20)
    {
      goto LABEL_29;
    }
  }

  if (v20 == 1)
  {
    v21 = **a4;
    v22 = v18 == 0;
    v16 = v19 == v21;
    v23 = v19 < v21;
    if (!v16)
    {
      v22 = v23;
    }

    if (!v22)
    {
LABEL_36:
      v29 = *a4;
      while (1)
      {
        v33 = a4;
        a4 = v8;
        v34 = *v8;
        *(v33 + 2) = *(a4 + 2);
        *v33 = v34;
        if (v5 < v7)
        {
LABEL_69:
          *a4 = v29;
          *(a4 + 2) = v20;
          return result;
        }

        v35 = (2 * v7) | 1;
        v8 = (result + 16 * v35);
        v7 = 2 * v7 + 2;
        if (v7 >= a3)
        {
          v7 = v35;
          v40 = *(v8 + 2);
          if (!v40)
          {
            goto LABEL_65;
          }

          goto LABEL_48;
        }

        v36 = *(v8 + 2);
        if (v36)
        {
          if (v36 == 1)
          {
            v37 = **v8;
            v38 = v8 + 2;
            v39 = *(v8 + 6);
            if (!v39)
            {
              goto LABEL_57;
            }
          }

          else
          {
            v37 = 0x7FFFFFFF;
            v38 = v8 + 2;
            v39 = *(v8 + 6);
            if (!v39)
            {
LABEL_57:
              v42 = (*v38)[1];
              goto LABEL_59;
            }
          }
        }

        else
        {
          v37 = (*v8)[1];
          v38 = v8 + 2;
          v39 = *(v8 + 6);
          if (!v39)
          {
            goto LABEL_57;
          }
        }

        if (v39 == 1)
        {
          v42 = **v38;
        }

        else
        {
          v42 = 0x7FFFFFFF;
        }

LABEL_59:
        v43 = v36 < v39;
        v16 = v37 == v42;
        v44 = v37 < v42;
        if (!v16)
        {
          v43 = v44;
        }

        if (v43)
        {
          v8 = v38;
        }

        else
        {
          v7 = v35;
        }

        v40 = *(v8 + 2);
        if (!v40)
        {
LABEL_65:
          v41 = (*v8)[1];
          if (!v20)
          {
LABEL_37:
            v30 = v29[1];
            goto LABEL_38;
          }

          goto LABEL_66;
        }

LABEL_48:
        if (v40 == 1)
        {
          v41 = **v8;
          if (!v20)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v41 = 0x7FFFFFFF;
          if (!v20)
          {
            goto LABEL_37;
          }
        }

LABEL_66:
        if (v20 == 1)
        {
          v30 = *v29;
        }

        else
        {
          v30 = 0x7FFFFFFF;
        }

LABEL_38:
        v31 = v40 < v20;
        v16 = v41 == v30;
        v32 = v41 < v30;
        if (!v16)
        {
          v31 = v32;
        }

        if (v31)
        {
          goto LABEL_69;
        }
      }
    }
  }

  else
  {
    v27 = v18 < v20;
    v16 = v19 == 0x7FFFFFFF;
    v28 = v19 != 0x7FFFFFFF;
    if (!v16)
    {
      v27 = v28;
    }

    if (!v27)
    {
      goto LABEL_36;
    }
  }

  return result;
}

uint64_t sub_C0EC98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v5 = v4 >> 1;
  v6 = result + 16 * (v4 >> 1);
  v7 = a2 - 16;
  v8 = *(v6 + 8);
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = **v6;
      v10 = *(a2 - 8);
      if (v10)
      {
        goto LABEL_5;
      }

LABEL_8:
      v11 = *(*v7 + 4);
      goto LABEL_12;
    }

    v9 = 0x7FFFFFFF;
    v10 = *(a2 - 8);
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = *(*v6 + 4);
    v10 = *(a2 - 8);
    if (!v10)
    {
      goto LABEL_8;
    }
  }

LABEL_5:
  if (v10 == 1)
  {
    v11 = **v7;
  }

  else
  {
    v11 = 0x7FFFFFFF;
  }

LABEL_12:
  v12 = v8 < v10;
  v13 = v9 == v11;
  v14 = v9 < v11;
  if (!v13)
  {
    v12 = v14;
  }

  if (v12)
  {
    v15 = *v7;
    if (v10 == 1)
    {
      do
      {
        v23 = v7;
        v7 = v6;
        v24 = *v6;
        *(v23 + 8) = *(v7 + 8);
        *v23 = v24;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = result + 16 * v5;
        v25 = *(v6 + 8);
        if (v25 == 1)
        {
          v20 = **v6;
        }

        else if (v25)
        {
          v20 = 0x7FFFFFFF;
        }

        else
        {
          v20 = *(*v6 + 4);
        }

        v21 = v25 == 0;
        v13 = v20 == *v15;
        v22 = v20 < *v15;
        if (!v13)
        {
          v21 = v22;
        }
      }

      while (v21);
    }

    else if (v10)
    {
      v16 = *v6;
      *(a2 - 8) = *(v6 + 8);
      *v7 = v16;
      if (v4 >= 2)
      {
        while (1)
        {
          v28 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v7 = result + 16 * v5;
          v29 = *(v7 + 8);
          if (v29)
          {
            if (v29 == 1)
            {
              if (**v7 == 0x7FFFFFFF && v10 <= 1)
              {
                break;
              }
            }

            else if (v29 >= v10)
            {
              break;
            }
          }

          else if (*(*v7 + 4) == 0x7FFFFFFF && v10 == 0)
          {
            break;
          }

          v27 = *v7;
          *(v6 + 8) = *(v7 + 8);
          *v6 = v27;
          v6 = result + 16 * v5;
          if (v28 <= 1)
          {
            goto LABEL_24;
          }
        }
      }

      v7 = v6;
    }

    else
    {
      while (1)
      {
        v17 = v7;
        v7 = v6;
        v18 = *v6;
        *(v17 + 8) = *(v7 + 8);
        *v17 = v18;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = result + 16 * v5;
        v19 = *(v6 + 8);
        if (v19 == 1)
        {
          if (**v6 >= v15[1])
          {
            break;
          }
        }

        else if (v19 || *(*v6 + 4) >= v15[1])
        {
          break;
        }
      }
    }

LABEL_24:
    *v7 = v15;
    *(v7 + 8) = v10;
  }

  return result;
}

uint64_t sub_C0EEB8@<X0>(void *a1@<X0>, void *a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_19594F8(&v14);
  if (a1 != a2)
  {
    v8 = a1;
    do
    {
      if (v8 != a1)
      {
        v9 = strlen(a3);
        sub_4A5C(&v14, a3, v9);
      }

      std::ostream::operator<<();
      v8 = *v8;
    }

    while (v8 != a2);
  }

  if ((v24 & 0x10) != 0)
  {
    v11 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v11 = v20;
    }

    v12 = v19;
    v10 = v11 - v19;
    if (v11 - v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v10 = 0;
      a4[23] = 0;
      goto LABEL_17;
    }

    v12 = v17;
    v10 = v18 - v17;
    if ((v18 - v17) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_21:
      sub_3244();
    }
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  a4[23] = v10;
  if (v10)
  {
    memmove(a4, v12, v10);
  }

LABEL_17:
  a4[v10] = 0;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v16);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_C0F110(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_C0F124(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1959728(va);
  _Unwind_Resume(a1);
}

void sub_C0F138(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
LABEL_3:
    *(a1 + 8) = v7;
    return;
  }

  v8 = *a1;
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v10 = v9 + 1;
  if (v9 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v8) >> 3);
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x333333333333333)
  {
    v12 = 0x666666666666666;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = 8 * ((v3 - *a1) >> 3);
  v14 = a2[1];
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a2 + 4);
  v7 = 40 * v9 + 40;
  v15 = 40 * v9 - (v3 - v8);
  memcpy((v13 - (v3 - v8)), v8, v3 - v8);
  *a1 = v15;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  *(a1 + 8) = v7;
}

void *sub_C0F284(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

void *sub_C0F5F0(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = HIDWORD(*a2);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = v6 & (*&v2 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (*v9)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v2 - 1;
      while (1)
      {
        v12 = result[1];
        if (v12 == v6)
        {
          if (result[2] == v3)
          {
            return result;
          }
        }

        else if ((v12 & v11) != v8)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v13 = result[1];
      if (v13 == v6)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v13 >= *&v2)
        {
          v13 %= *&v2;
        }

        if (v13 != v8)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

int8x16_t **sub_C0F700(int8x16_t **a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v13 = 14;
  strcpy(v12, "rounding_rules");
  v3 = sub_5F680(a2, v12);
  v14 = 0;
  v15 = 0uLL;
  v4 = v3[1];
  if (v4 != *v3)
  {
    if (!(((v4 - *v3) >> 4) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  v16 = &v14;
  v5 = *a1;
  if (*a1)
  {
    a1[1] = v5;
    operator delete(v5);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  v6 = v14;
  *a1 = v14;
  v7 = v15;
  *(a1 + 1) = v15;
  v15 = 0uLL;
  v14 = 0;
  if (v13 < 0)
  {
    operator delete(v12[0]);
    v6 = *a1;
    v8 = a1[1];
  }

  else
  {
    v8 = v7;
  }

  v9 = 126 - 2 * __clz((v8 - v6) >> 3);
  if (v8 == v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  sub_C103BC(v6, v8, v10, 1);
  return a1;
}

void sub_C0F93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
    v33 = *v31;
    if (!*v31)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v33 = *v31;
    if (!*v31)
    {
      goto LABEL_3;
    }
  }

  *(v31 + 8) = v33;
  operator delete(v33);
  _Unwind_Resume(exception_object);
}

unint64_t sub_C0F9FC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3 != v4)
  {
    v6 = result;
    while (1)
    {
      v7 = *(a3 + 24);
      if (!v7)
      {
        sub_2B7420();
      }

      result = (*(*v7 + 48))(v7, v3);
      if (result)
      {
        break;
      }

LABEL_3:
      v3 += 37;
      if (v3 == v4)
      {
        return result;
      }
    }

    v8 = v3[31];
    v9 = v3[32];
    while (1)
    {
      if (v8 == v9)
      {
        v24 = v3[25];
        for (i = v3[26]; v24 != i; v24 += 9)
        {
          result = sub_C0FCD0(v6, v24);
        }

        goto LABEL_3;
      }

      v11 = v6[1];
      v12 = v8[4];
      if (v11 != *v6)
      {
        v13 = (v11 - *v6) >> 3;
        do
        {
          v14 = v13 >> 1;
          v15 = v11 - 8 * (v13 >> 1);
          v17 = *(v15 - 8);
          v16 = v15 - 8;
          v13 += ~(v13 >> 1);
          if (v17 <= v12)
          {
            v13 = v14;
          }

          else
          {
            v11 = v16;
          }
        }

        while (v13);
      }

      if (v11 != *v6)
      {
        v18 = *(v11 - 4);
        if (v18)
        {
          break;
        }
      }

LABEL_9:
      v8 += 10;
    }

    v19 = v18 / 600.0 * round(v8[2] / 600.0 / (v18 / 600.0)) * 60.0 * 10.0;
    if (v19 >= 0.0)
    {
      if (v19 >= 4.50359963e15)
      {
        goto LABEL_25;
      }

      v20 = (v19 + v19) + 1;
    }

    else
    {
      if (v19 <= -4.50359963e15)
      {
        goto LABEL_25;
      }

      v20 = (v19 + v19) - 1 + (((v19 + v19) - 1) >> 63);
    }

    v19 = (v20 >> 1);
LABEL_25:
    v8[2] = v19;
    v21 = *(v11 - 4) / 600.0 * round(v8[3] / 600.0 / (*(v11 - 4) / 600.0)) * 60.0 * 10.0;
    if (v21 >= 0.0)
    {
      if (v21 >= 4.50359963e15)
      {
        goto LABEL_31;
      }

      v22 = (v21 + v21) + 1;
    }

    else
    {
      if (v21 <= -4.50359963e15)
      {
        goto LABEL_31;
      }

      v22 = (v21 + v21) - 1 + (((v21 + v21) - 1) >> 63);
    }

    v21 = (v22 >> 1);
LABEL_31:
    v8[3] = v21;
    v10 = *(v11 - 4) / 600.0 * round(v12 / 600.0 / (*(v11 - 4) / 600.0)) * 60.0 * 10.0;
    if (v10 >= 0.0)
    {
      if (v10 >= 4.50359963e15)
      {
        goto LABEL_8;
      }

      v23 = (v10 + v10) + 1;
    }

    else
    {
      if (v10 <= -4.50359963e15)
      {
        goto LABEL_8;
      }

      v23 = (v10 + v10) - 1 + (((v10 + v10) - 1) >> 63);
    }

    v10 = (v23 >> 1);
LABEL_8:
    v8[4] = v10;
    goto LABEL_9;
  }

  return result;
}

unint64_t sub_C0FCD0(unint64_t result, uint64_t *a2)
{
  if (*(a2 + 24))
  {
    return result;
  }

  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return result;
  }

  v4 = result;
  v5 = a2[4];
  v6 = a2[5];
  if (v5 != v6)
  {
    do
    {
      result = sub_C10194(v4, v5);
      v5 += 10;
    }

    while (v5 != v6);
    v2 = *a2;
    v3 = a2[1];
  }

  if (v2 == v3)
  {
    return result;
  }

  while (2)
  {
    if (*(v2 + 160))
    {
      sub_5AF20();
    }

    v8 = *(v2 + 120);
    v9 = *(v2 + 128);
    while (v8 != v9)
    {
      result = *v4;
      v11 = v4[1];
      v12 = v8[4];
      if (v11 != *v4)
      {
        v13 = (v11 - *v4) >> 3;
        do
        {
          v14 = v13 >> 1;
          v15 = &v11[-(v13 >> 1)];
          v17 = *(v15 - 2);
          v16 = v15 - 1;
          v13 += ~(v13 >> 1);
          if (v17 <= v12)
          {
            v13 = v14;
          }

          else
          {
            v11 = v16;
          }
        }

        while (v13);
      }

      if (v11 != result)
      {
        result = *(v11 - 1);
        if (result)
        {
          v18 = result / 600.0 * round(v8[2] / 600.0 / (result / 600.0)) * 60.0 * 10.0;
          if (v18 >= 0.0)
          {
            if (v18 < 4.50359963e15)
            {
              v19 = (v18 + v18) + 1;
LABEL_29:
              v18 = (v19 >> 1);
            }
          }

          else if (v18 > -4.50359963e15)
          {
            v19 = (v18 + v18) - 1 + (((v18 + v18) - 1) >> 63);
            goto LABEL_29;
          }

          v8[2] = v18;
          v20 = *(v11 - 1) / 600.0 * round(v8[3] / 600.0 / (*(v11 - 1) / 600.0)) * 60.0 * 10.0;
          if (v20 >= 0.0)
          {
            if (v20 < 4.50359963e15)
            {
              v21 = (v20 + v20) + 1;
LABEL_35:
              v20 = (v21 >> 1);
            }
          }

          else if (v20 > -4.50359963e15)
          {
            v21 = (v20 + v20) - 1 + (((v20 + v20) - 1) >> 63);
            goto LABEL_35;
          }

          result = v20;
          v8[3] = result;
          v10 = *(v11 - 1) / 600.0 * round(v12 / 600.0 / (*(v11 - 1) / 600.0)) * 60.0 * 10.0;
          if (v10 >= 0.0)
          {
            if (v10 < 4.50359963e15)
            {
              v22 = (v10 + v10) + 1;
LABEL_12:
              v10 = (v22 >> 1);
            }
          }

          else if (v10 > -4.50359963e15)
          {
            v22 = (v10 + v10) - 1 + (((v10 + v10) - 1) >> 63);
            goto LABEL_12;
          }

          v8[4] = v10;
        }
      }

      v8 += 10;
    }

    v2 += 168;
    if (v2 != v3)
    {
      continue;
    }

    return result;
  }
}

void *sub_C0FF68(void *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 56);
  if (v2 == v3)
  {
    return result;
  }

  while (2)
  {
    v4 = *(v2 + 184);
    v5 = *(v2 + 192);
    while (v4 != v5)
    {
      v7 = result[1];
      v8 = v4[4];
      if (v7 != *result)
      {
        v9 = (v7 - *result) >> 3;
        do
        {
          v10 = v9 >> 1;
          v11 = v7 - 8 * (v9 >> 1);
          v13 = *(v11 - 8);
          v12 = v11 - 8;
          v9 += ~(v9 >> 1);
          if (v13 <= v8)
          {
            v9 = v10;
          }

          else
          {
            v7 = v12;
          }
        }

        while (v9);
      }

      if (v7 != *result)
      {
        v14 = *(v7 - 4);
        if (v14)
        {
          v15 = v14 / 600.0 * round(v4[2] / 600.0 / (v14 / 600.0)) * 60.0 * 10.0;
          if (v15 >= 0.0)
          {
            if (v15 < 4.50359963e15)
            {
              v16 = (v15 + v15) + 1;
LABEL_22:
              v15 = (v16 >> 1);
            }
          }

          else if (v15 > -4.50359963e15)
          {
            v16 = (v15 + v15) - 1 + (((v15 + v15) - 1) >> 63);
            goto LABEL_22;
          }

          v4[2] = v15;
          v17 = *(v7 - 4) / 600.0 * round(v4[3] / 600.0 / (*(v7 - 4) / 600.0)) * 60.0 * 10.0;
          if (v17 >= 0.0)
          {
            if (v17 < 4.50359963e15)
            {
              v18 = (v17 + v17) + 1;
LABEL_28:
              v17 = (v18 >> 1);
            }
          }

          else if (v17 > -4.50359963e15)
          {
            v18 = (v17 + v17) - 1 + (((v17 + v17) - 1) >> 63);
            goto LABEL_28;
          }

          v4[3] = v17;
          v6 = *(v7 - 4) / 600.0 * round(v8 / 600.0 / (*(v7 - 4) / 600.0)) * 60.0 * 10.0;
          if (v6 >= 0.0)
          {
            if (v6 < 4.50359963e15)
            {
              v19 = (v6 + v6) + 1;
LABEL_5:
              v6 = (v19 >> 1);
            }
          }

          else if (v6 > -4.50359963e15)
          {
            v19 = (v6 + v6) - 1 + (((v6 + v6) - 1) >> 63);
            goto LABEL_5;
          }

          v4[4] = v6;
        }
      }

      v4 += 10;
    }

    v2 += 248;
    if (v2 != v3)
    {
      continue;
    }

    return result;
  }
}

void *sub_C10194(void *result, int *a2)
{
  v2 = result[1];
  v3 = a2[4];
  if (v2 != *result)
  {
    v4 = (v2 - *result) >> 3;
    do
    {
      v5 = v4 >> 1;
      v6 = v2 - 8 * (v4 >> 1);
      v8 = *(v6 - 8);
      v7 = v6 - 8;
      v4 += ~(v4 >> 1);
      if (v8 <= v3)
      {
        v4 = v5;
      }

      else
      {
        v2 = v7;
      }
    }

    while (v4);
  }

  if (v2 != *result)
  {
    v9 = *(v2 - 4);
    if (v9)
    {
      v10 = v9 / 600.0 * round(a2[2] / 600.0 / (v9 / 600.0)) * 60.0 * 10.0;
      if (v10 >= 0.0)
      {
        if (v10 >= 4.50359963e15)
        {
          goto LABEL_15;
        }

        v11 = (v10 + v10) + 1;
      }

      else
      {
        if (v10 <= -4.50359963e15)
        {
          goto LABEL_15;
        }

        v11 = (v10 + v10) - 1 + (((v10 + v10) - 1) >> 63);
      }

      v10 = (v11 >> 1);
LABEL_15:
      a2[2] = v10;
      v12 = *(v2 - 4) / 600.0 * round(a2[3] / 600.0 / (*(v2 - 4) / 600.0)) * 60.0 * 10.0;
      if (v12 >= 0.0)
      {
        if (v12 >= 4.50359963e15)
        {
          goto LABEL_21;
        }

        v13 = (v12 + v12) + 1;
      }

      else
      {
        if (v12 <= -4.50359963e15)
        {
          goto LABEL_21;
        }

        v13 = (v12 + v12) - 1 + (((v12 + v12) - 1) >> 63);
      }

      v12 = (v13 >> 1);
LABEL_21:
      a2[3] = v12;
      v14 = *(v2 - 4) / 600.0 * round(v3 / 600.0 / (*(v2 - 4) / 600.0)) * 60.0 * 10.0;
      if (v14 >= 0.0)
      {
        if (v14 < 4.50359963e15)
        {
          v15 = (v14 + v14) + 1;
          goto LABEL_26;
        }
      }

      else if (v14 > -4.50359963e15)
      {
        v15 = (v14 + v14) - 1 + (((v14 + v14) - 1) >> 63);
LABEL_26:
        v14 = (v15 >> 1);
      }

      a2[4] = v14;
    }
  }

  return result;
}

int8x16_t *sub_C103BC(int8x16_t *result, int8x16_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v68 = v8->i32[2];
          v69 = a2[-1].i32[2];
          if (v68 >= v8->i32[0])
          {
            if (v69 < v68)
            {
              v112 = v8->i64[1];
              v8->i64[1] = a2[-1].i64[1];
              a2[-1].i64[1] = v112;
              if (v8->i32[2] < v8->i32[0])
              {
                *v8 = vextq_s8(*v8, *v8, 8uLL);
              }
            }

            return result;
          }

          v67 = v8->i64[0];
          if (v69 >= v68)
          {
            v8->i64[0] = v8->i64[1];
            v8->i64[1] = v67;
            if (a2[-1].i32[2] < v67)
            {
              v8->i64[1] = a2[-1].i64[1];
              a2[-1].i64[1] = v67;
            }

            return result;
          }

LABEL_114:
          v8->i64[0] = a2[-1].i64[1];
          a2[-1].i64[1] = v67;
          return result;
        case 4:
          v70 = v8->i32[2];
          v71 = v8->i32[0];
          LODWORD(v72) = v8[1].i32[0];
          if (v70 >= v8->i32[0])
          {
            if (v72 < v70)
            {
              v72 = v8->i64[1];
              v113 = v8[1].i64[0];
              v8->i64[1] = v113;
              v8[1].i64[0] = v72;
              if (v71 > v113)
              {
                v114 = v8->i64[0];
                v8->i64[0] = v113;
                v8->i64[1] = v114;
              }
            }
          }

          else
          {
            v73 = v8->i64[0];
            if (v72 < v70)
            {
              v8->i64[0] = v8[1].i64[0];
              goto LABEL_193;
            }

            v8->i64[0] = v8->i64[1];
            v8->i64[1] = v73;
            if (v72 < v73)
            {
              v8->i64[1] = v8[1].i64[0];
LABEL_193:
              v8[1].i64[0] = v73;
              LODWORD(v72) = v73;
            }
          }

          if (a2[-1].i32[2] < v72)
          {
            v120 = v8[1].i64[0];
            v8[1].i64[0] = a2[-1].i64[1];
            a2[-1].i64[1] = v120;
            if (v8[1].i32[0] < v8->i32[2])
            {
              v122 = v8->i64[1];
              v121 = v8[1].i64[0];
              v8->i64[1] = v121;
              v8[1].i64[0] = v122;
              if (v8->i32[0] > v121)
              {
                v123 = v8->i64[0];
                v8->i64[0] = v121;
                v8->i64[1] = v123;
              }
            }
          }

          return result;
        case 5:

          return sub_C10E10(v8->i64, &v8->i32[2], v8[1].i32, &v8[1].i64[1], &a2[-1].i64[1]);
      }
    }

    else
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        if (a2[-1].i32[2] >= v8->i32[0])
        {
          return result;
        }

        v67 = v8->i64[0];
        goto LABEL_114;
      }
    }

    if (v9 <= 23)
    {
      v74 = &v8->u64[1];
      v76 = v8 == a2 || v74 == a2;
      if ((a4 & 1) == 0)
      {
        if (!v76)
        {
          do
          {
            v115 = v7->i32[2];
            v116 = v7->i32[0];
            v7 = v74;
            if (v115 < v116)
            {
              v117 = v74->i64[0];
              do
              {
                v118 = v74;
                v119 = v74[-1].i64[1];
                v74 = (v74 - 8);
                *v118 = v119;
              }

              while (*(v118 - 4) > v117);
              v74->i64[0] = v117;
            }

            v74 = &v7->u64[1];
          }

          while (&v7->u64[1] != a2);
        }

        return result;
      }

      if (v76)
      {
        return result;
      }

      v77 = 0;
      v78 = v8;
      while (1)
      {
        v80 = v78->i32[2];
        v81 = v78->i32[0];
        v78 = v74;
        if (v80 < v81)
        {
          v82 = v74->i64[0];
          v83 = v77;
          do
          {
            *(&v8->i64[1] + v83) = *(v8->i64 + v83);
            if (!v83)
            {
              v79 = v8;
              goto LABEL_129;
            }

            v84 = *(&v8->i32[-2] + v83);
            v83 -= 8;
          }

          while (v84 > v82);
          v79 = (&v8->i64[1] + v83);
LABEL_129:
          *v79 = v82;
        }

        v74 = &v78->u64[1];
        v77 += 8;
        if (&v78->u64[1] == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v10 = &v8->i32[2 * (v9 >> 1)];
    v11 = v10;
    v12 = a2[-1].i32[2];
    if (v9 < 0x81)
    {
      v15 = v8->i32[0];
      if (v8->i32[0] < *v11)
      {
        v16 = *v11;
        if (v12 < v15)
        {
          *v11 = a2[-1].i64[1];
          goto LABEL_37;
        }

        *v11 = v8->i64[0];
        v8->i64[0] = v16;
        if (a2[-1].i32[2] < v16)
        {
          v8->i64[0] = a2[-1].i64[1];
LABEL_37:
          a2[-1].i64[1] = v16;
        }

LABEL_38:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      if (v12 >= v15)
      {
        goto LABEL_38;
      }

      v19 = v8->i64[0];
      v8->i64[0] = a2[-1].i64[1];
      a2[-1].i64[1] = v19;
      if (v8->i32[0] >= *v11)
      {
        goto LABEL_38;
      }

      v20 = *v11;
      *v11 = v8->i64[0];
      v8->i64[0] = v20;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_39;
    }

    v13 = *v10;
    if (*v10 >= v8->i32[0])
    {
      if (v12 < v13)
      {
        v17 = *v10;
        *v10 = a2[-1].i64[1];
        a2[-1].i64[1] = v17;
        if (*v10 < v8->i32[0])
        {
          v18 = v8->i64[0];
          v8->i64[0] = *v10;
          *v10 = v18;
        }
      }
    }

    else
    {
      v14 = v8->i64[0];
      if (v12 >= v13)
      {
        v8->i64[0] = *v10;
        *v10 = v14;
        if (a2[-1].i32[2] >= v14)
        {
          goto LABEL_29;
        }

        *v10 = a2[-1].i64[1];
      }

      else
      {
        v8->i64[0] = a2[-1].i64[1];
      }

      a2[-1].i64[1] = v14;
    }

LABEL_29:
    v21 = (v10 - 2);
    v22 = *(v10 - 2);
    v23 = a2[-1].i32[0];
    if (v22 >= v8->i32[2])
    {
      if (v23 < v22)
      {
        v25 = *v21;
        *v21 = a2[-1].i64[0];
        a2[-1].i64[0] = v25;
        if (*v21 < v8->i32[2])
        {
          v26 = v8->i64[1];
          v8->i64[1] = *v21;
          *v21 = v26;
        }
      }
    }

    else
    {
      v24 = v8->i64[1];
      if (v23 >= v22)
      {
        v8->i64[1] = *v21;
        *v21 = v24;
        if (a2[-1].i32[0] >= v24)
        {
          goto LABEL_43;
        }

        *v21 = a2[-1].i64[0];
      }

      else
      {
        v8->i64[1] = a2[-1].i64[0];
      }

      a2[-1].i64[0] = v24;
    }

LABEL_43:
    v30 = v10[2];
    v28 = (v10 + 2);
    v29 = v30;
    v31 = a2[-2].i32[2];
    if (v30 >= v8[1].i32[0])
    {
      if (v31 < v29)
      {
        v33 = *v28;
        *v28 = a2[-2].i64[1];
        a2[-2].i64[1] = v33;
        if (*v28 < v8[1].i32[0])
        {
          v34 = v8[1].i64[0];
          v8[1].i64[0] = *v28;
          *v28 = v34;
        }
      }

      goto LABEL_52;
    }

    v32 = v8[1].i64[0];
    if (v31 < v29)
    {
      v8[1].i64[0] = a2[-2].i64[1];
LABEL_51:
      a2[-2].i64[1] = v32;
      goto LABEL_52;
    }

    v8[1].i64[0] = *v28;
    *v28 = v32;
    if (a2[-2].i32[2] < v32)
    {
      *v28 = a2[-2].i64[1];
      goto LABEL_51;
    }

LABEL_52:
    v35 = *v11;
    v36 = *v21;
    v37 = *v28;
    if (*v11 >= *v21)
    {
      v38 = *v11;
      if (v37 >= v35)
      {
        goto LABEL_62;
      }

      v40 = *v28;
      *v11 = *v28;
      *v28 = v38;
      if (v36 <= v40)
      {
        v58 = v8->i64[0];
        v8->i64[0] = v40;
        *v11 = v58;
        --a3;
        if (a4)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v41 = *v21;
        *v21 = v40;
        *v11 = v41;
        v42 = v8->i64[0];
        v8->i64[0] = v41;
        *v11 = v42;
        --a3;
        if (a4)
        {
          goto LABEL_39;
        }
      }

LABEL_63:
      v27 = v8->i64[0];
      if (v8[-1].i32[2] < v8->i32[0])
      {
        goto LABEL_64;
      }

      if (a2[-1].i32[2] <= v27)
      {
        v60 = &v8->u64[1];
        do
        {
          v8 = v60;
          if (v60 >= a2)
          {
            break;
          }

          v60 = (v60 + 8);
        }

        while (v8->i32[0] <= v27);
      }

      else
      {
        do
        {
          v59 = v8->i32[2];
          v8 = (v8 + 8);
        }

        while (v59 <= v27);
      }

      v61 = a2;
      if (v8 < a2)
      {
        v61 = a2;
        do
        {
          v62 = v61[-1].i32[2];
          v61 = (v61 - 8);
        }

        while (v62 > v27);
      }

      while (v8 < v61)
      {
        v63 = v8->i64[0];
        v8->i64[0] = v61->i64[0];
        v61->i64[0] = v63;
        do
        {
          v64 = v8->i32[2];
          v8 = (v8 + 8);
        }

        while (v64 <= v27);
        do
        {
          v65 = v61[-1].i32[2];
          v61 = (v61 - 8);
        }

        while (v65 > v27);
      }

      v66 = &v8[-1].i64[1];
      if (&v8[-1].u64[1] != v7)
      {
        v7->i64[0] = *v66;
      }

      a4 = 0;
      *v66 = v27;
    }

    else
    {
      v38 = *v21;
      if (v37 >= v35)
      {
        *v21 = *v11;
        *v11 = v38;
        if (v37 < v38)
        {
          v43 = *v28;
          *v11 = *v28;
          *v28 = v38;
          v38 = v43;
        }

LABEL_62:
        v44 = v8->i64[0];
        v8->i64[0] = v38;
        *v11 = v44;
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      *v21 = *v28;
      *v28 = v38;
      v39 = v8->i64[0];
      v8->i64[0] = *v11;
      *v11 = v39;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_39:
      v27 = v8->i64[0];
LABEL_64:
      v45 = 0;
      do
      {
        v46 = v8->i32[v45 + 2];
        v45 += 2;
      }

      while (v46 < v27);
      v47 = &v8->i8[v45 * 4];
      v48 = a2;
      if (v45 == 2)
      {
        v48 = a2;
        do
        {
          if (v47 >= v48)
          {
            break;
          }

          v50 = v48[-1].i32[2];
          v48 = (v48 - 8);
        }

        while (v50 >= v27);
      }

      else
      {
        do
        {
          v49 = v48[-1].i32[2];
          v48 = (v48 - 8);
        }

        while (v49 >= v27);
      }

      if (v47 >= v48)
      {
        v56 = v47 - 8;
        if (v47 - 8 == v8)
        {
          goto LABEL_82;
        }

LABEL_81:
        v8->i64[0] = *v56;
        goto LABEL_82;
      }

      v51 = &v8->i8[v45 * 4];
      v52 = v48;
      do
      {
        v53 = *v51;
        *v51 = *v52;
        *v52 = v53;
        do
        {
          v54 = *(v51 + 2);
          v51 += 8;
        }

        while (v54 < v27);
        do
        {
          v55 = *(v52 - 2);
          v52 -= 8;
        }

        while (v55 >= v27);
      }

      while (v51 < v52);
      v56 = v51 - 8;
      if (v51 - 8 != v8)
      {
        goto LABEL_81;
      }

LABEL_82:
      *v56 = v27;
      if (v47 < v48)
      {
        goto LABEL_85;
      }

      v57 = sub_C10F84(v8, v56);
      v8 = (v56 + 8);
      result = sub_C10F84((v56 + 8), a2);
      if (result)
      {
        a2 = v56;
        if (v57)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v57)
      {
LABEL_85:
        result = sub_C103BC(v7, v56, a3, a4 & 1);
        a4 = 0;
        v8 = (v56 + 8);
      }
    }
  }

  if (v8 == a2)
  {
    return result;
  }

  v85 = (v9 - 2) >> 1;
  v86 = v85;
  while (2)
  {
    if (v85 >= v86)
    {
      v88 = (2 * (v86 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
      v89 = &v8->i8[8 * v88];
      if (2 * (v86 & 0x1FFFFFFFFFFFFFFFLL) + 2 >= v9)
      {
        v92 = &v8->i64[v86];
        if (*v89 >= *v92)
        {
LABEL_149:
          v93 = *v92;
          while (1)
          {
            v95 = v92;
            v92 = v89;
            *v95 = *v89;
            if (v85 < v88)
            {
              break;
            }

            v96 = (2 * v88) | 1;
            v89 = &v8->i8[8 * v96];
            v88 = 2 * v88 + 2;
            if (v88 < v9)
            {
              v94 = *v89;
              result = *(v89 + 2);
              if (*v89 <= result)
              {
                v94 = *(v89 + 2);
              }

              if (*v89 >= result)
              {
                v88 = v96;
              }

              else
              {
                v89 += 8;
              }

              if (v94 < v93)
              {
                break;
              }
            }

            else
            {
              v88 = v96;
              if (*v89 < v93)
              {
                break;
              }
            }
          }

          *v92 = v93;
        }
      }

      else
      {
        v90 = *v89;
        v91 = *(v89 + 2);
        if (*v89 <= v91)
        {
          v90 = *(v89 + 2);
        }

        if (*v89 < v91)
        {
          v89 += 8;
          v88 = 2 * (v86 & 0x1FFFFFFFFFFFFFFFLL) + 2;
        }

        v92 = &v8->i64[v86];
        if (v90 >= *v92)
        {
          goto LABEL_149;
        }
      }
    }

    v87 = v86-- <= 0;
    if (!v87)
    {
      continue;
    }

    break;
  }

  do
  {
    v97 = 0;
    v98 = v8->i64[0];
    v99 = (v9 - 2) >> 1;
    v100 = v8;
    do
    {
      while (1)
      {
        v104 = &v100[v97];
        v103 = (v104 + 1);
        v105 = (2 * v97) | 1;
        v97 = 2 * v97 + 2;
        if (v97 < v9)
        {
          break;
        }

        v97 = v105;
        *v100 = v103->i64[0];
        v100 = v104 + 1;
        if (v105 > v99)
        {
          goto LABEL_169;
        }
      }

      v102 = *(v104 + 4);
      v101 = (v104 + 2);
      if (v101[-1].i32[2] >= v102)
      {
        v97 = v105;
      }

      else
      {
        v103 = v101;
      }

      *v100 = v103->i64[0];
      v100 = v103;
    }

    while (v97 <= v99);
LABEL_169:
    a2 = (a2 - 8);
    if (v103 == a2)
    {
      v103->i64[0] = v98;
    }

    else
    {
      v103->i64[0] = a2->i64[0];
      a2->i64[0] = v98;
      v106 = (v103 - v8 + 8) >> 3;
      v87 = v106 < 2;
      v107 = v106 - 2;
      if (!v87)
      {
        v108 = v107 >> 1;
        v109 = &v8->i64[v108];
        if (*v109 < v103->i32[0])
        {
          v110 = v103->i64[0];
          do
          {
            v111 = v103;
            v103 = v109;
            *v111 = *v109;
            if (!v108)
            {
              break;
            }

            v108 = (v108 - 1) >> 1;
            v109 = &v8->i64[v108];
          }

          while (*v109 < v110);
          v103->i64[0] = v110;
        }
      }
    }

    v87 = v9-- <= 2;
  }

  while (!v87);
  return result;
}

uint64_t *sub_C10E10(uint64_t *result, int *a2, int *a3, void *a4, void *a5)
{
  v5 = *a2;
  LODWORD(v6) = *a3;
  if (*a2 >= *result)
  {
    if (v6 < v5)
    {
      v6 = *a2;
      *a2 = *a3;
      *a3 = v6;
      if (*a2 < *result)
      {
        v6 = *result;
        *result = *a2;
        *a2 = v6;
        LODWORD(v6) = *a3;
      }
    }
  }

  else
  {
    v7 = *result;
    if (v6 < v5)
    {
      *result = *a3;
LABEL_9:
      *a3 = v7;
      LODWORD(v6) = v7;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v7;
    LODWORD(v6) = *a3;
    if (*a3 < v7)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < v6)
  {
    v8 = *a3;
    *a3 = *a4;
    *a4 = v8;
    if (*a3 < *a2)
    {
      v9 = *a2;
      *a2 = *a3;
      *a3 = v9;
      if (*a2 < *result)
      {
        v10 = *result;
        *result = *a2;
        *a2 = v10;
      }
    }
  }

  if (*a5 < *a4)
  {
    v11 = *a4;
    *a4 = *a5;
    *a5 = v11;
    if (*a4 < *a3)
    {
      v12 = *a3;
      *a3 = *a4;
      *a4 = v12;
      if (*a3 < *a2)
      {
        v13 = *a2;
        *a2 = *a3;
        *a3 = v13;
        if (*a2 < *result)
        {
          v14 = *result;
          *result = *a2;
          *a2 = v14;
        }
      }
    }
  }

  return result;
}

BOOL sub_C10F84(int8x16_t *a1, int8x16_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = a1->i32[2];
      v6 = a2[-1].i32[2];
      if (v5 >= a1->i32[0])
      {
        if (v6 >= v5)
        {
          return 1;
        }

        v17 = a1->i64[1];
        a1->i64[1] = a2[-1].i64[1];
        a2[-1].i64[1] = v17;
        if (a1->i32[2] >= a1->i32[0])
        {
          return 1;
        }

        *a1 = vextq_s8(*a1, *a1, 8uLL);
        return 1;
      }

      else
      {
        v7 = a1->i64[0];
        if (v6 >= v5)
        {
          a1->i64[0] = a1->i64[1];
          a1->i64[1] = v7;
          if (a2[-1].i32[2] >= v7)
          {
            return 1;
          }

          a1->i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v7;
          return 1;
        }

        else
        {
          a1->i64[0] = a2[-1].i64[1];
          a2[-1].i64[1] = v7;
          return 1;
        }
      }
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_C10E10(a1->i64, &a1->i32[2], a1[1].i32, &a1[1].i64[1], &a2[-1].i64[1]);
        return 1;
      }

LABEL_14:
      v8 = a1 + 1;
      v9 = a1[1].i32[0];
      v10 = a1->i32[2];
      v11 = a1->i32[0];
      if (v10 >= a1->i32[0])
      {
        if (v9 < v10)
        {
          v19 = a1->i64[1];
          v18 = a1[1].i64[0];
          a1->i64[1] = v18;
          a1[1].i64[0] = v19;
          if (v11 > v18)
          {
            v20 = a1->i64[0];
            a1->i64[0] = v18;
            a1->i64[1] = v20;
          }
        }

        goto LABEL_34;
      }

      v12 = a1->i64[0];
      if (v9 >= v10)
      {
        a1->i64[0] = a1->i64[1];
        a1->i64[1] = v12;
        if (v9 >= v12)
        {
LABEL_34:
          v23 = &a1[1].i32[2];
          if (&a1[1].u64[1] == a2)
          {
            return 1;
          }

          v24 = 0;
          v25 = 0;
          while (*v23 >= v8->i32[0])
          {
LABEL_43:
            v8 = v23;
            v24 += 8;
            v23 += 2;
            if (v23 == a2)
            {
              return 1;
            }
          }

          v26 = *v23;
          v27 = v24;
          do
          {
            *(&a1[1].i64[1] + v27) = *(a1[1].i64 + v27);
            if (v27 == -16)
            {
              a1->i64[0] = v26;
              if (++v25 != 8)
              {
                goto LABEL_43;
              }

              return v23 + 2 == a2;
            }

            v28 = *(&a1->i32[2] + v27);
            v27 -= 8;
          }

          while (v28 > v26);
          *(&a1[1].i64[1] + v27) = v26;
          if (++v25 != 8)
          {
            goto LABEL_43;
          }

          return v23 + 2 == a2;
        }

        a1->i64[1] = a1[1].i64[0];
      }

      else
      {
        a1->i64[0] = a1[1].i64[0];
      }

      a1[1].i64[0] = v12;
      goto LABEL_34;
    }

    v13 = a1->i32[2];
    v14 = a1->i32[0];
    LODWORD(v15) = a1[1].i32[0];
    if (v13 >= a1->i32[0])
    {
      if (v15 < v13)
      {
        v15 = a1->i64[1];
        v21 = a1[1].i64[0];
        a1->i64[1] = v21;
        a1[1].i64[0] = v15;
        if (v14 > v21)
        {
          v22 = a1->i64[0];
          a1->i64[0] = v21;
          a1->i64[1] = v22;
        }
      }

      goto LABEL_48;
    }

    v16 = a1->i64[0];
    if (v15 >= v13)
    {
      a1->i64[0] = a1->i64[1];
      a1->i64[1] = v16;
      if (v15 >= v16)
      {
        goto LABEL_48;
      }

      a1->i64[1] = a1[1].i64[0];
    }

    else
    {
      a1->i64[0] = a1[1].i64[0];
    }

    a1[1].i64[0] = v16;
    LODWORD(v15) = v16;
LABEL_48:
    if (a2[-1].i32[2] >= v15)
    {
      return 1;
    }

    v29 = a1[1].i64[0];
    a1[1].i64[0] = a2[-1].i64[1];
    a2[-1].i64[1] = v29;
    if (a1[1].i32[0] >= a1->i32[2])
    {
      return 1;
    }

    v31 = a1->i64[1];
    v30 = a1[1].i64[0];
    a1->i64[1] = v30;
    a1[1].i64[0] = v31;
    if (a1->i32[0] <= v30)
    {
      return 1;
    }

    v32 = a1->i64[0];
    a1->i64[0] = v30;
    a1->i64[1] = v32;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
    goto LABEL_14;
  }

  if (a2[-1].i32[2] >= a1->i32[0])
  {
    return 1;
  }

  v4 = a1->i64[0];
  a1->i64[0] = a2[-1].i64[1];
  a2[-1].i64[1] = v4;
  return 1;
}

void sub_C11638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C11674(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3 != v4)
  {
    v6 = result;
    do
    {
      v7 = *(a3 + 24);
      if (!v7)
      {
        sub_2B7420();
      }

      result = (*(*v7 + 48))(v7, v3);
      if (result)
      {
        v8 = *(v3 + 200);
        v9 = *(v3 + 208);
        while (v8 != v9)
        {
          if (!*(v8 + 24))
          {
            result = sub_C11728(v6, v8);
          }

          v8 += 72;
        }
      }

      v3 += 296;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_C11728(int *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a2 != v5)
  {
    do
    {
      if (*(v4 + 40))
      {
        sub_5AF20();
      }

      sub_A332F8(v18, v4);
      v19 = 0;
      sub_C135EC(&__p, v18, 1uLL);
      *(v4 + 144) = sub_C11944(a1, &__p);
      v6 = __p;
      if (__p)
      {
        v7 = v16;
        v8 = __p;
        if (v16 != __p)
        {
          do
          {
            v9 = v7 - 168;
            v10 = *(v7 - 2);
            if (v10 != -1)
            {
              (off_26726C8[v10])(&v17, v7 - 168);
            }

            *(v7 - 2) = -1;
            v7 -= 168;
          }

          while (v9 != v6);
          v8 = __p;
        }

        v16 = v6;
        operator delete(v8);
      }

      if (v19 != -1)
      {
        (off_26726C8[v19])(&v17, v18);
      }

      v4 = (v4 + 168);
    }

    while (v4 != v5);
    v4 = *a2;
    v5 = *(a2 + 8);
  }

  if (v4 != v5)
  {
    v11 = (v4 - 168);
    while (v11 + 21 != v5)
    {
      if (*(v11 + 82))
      {
        sub_5AF20();
      }

      if (*(v11 + 124))
      {
        sub_5AF20();
      }

      v12 = *(v11 + 70);
      v13 = *(v11 + 112);
      v11 = (v11 + 168);
      if (v12 != v13)
      {
        if (v11 == v5)
        {
          break;
        }

        result = 1;
        goto LABEL_25;
      }
    }
  }

  result = sub_C11944(a1, a2);
LABEL_25:
  *(a2 + 56) = result;
  return result;
}

void sub_C118FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

uint64_t sub_C11944(int *a1, void *a2)
{
  v2 = a2[1];
  v3 = *a2;
  if (*a2 == v2)
  {
    return 1;
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v6 = v3 + 88;
  do
  {
    if (*(v6 + 72))
    {
      sub_5AF20();
    }

    sub_C12BEC(a1, v6, &v24);
    v7 = v6 + 80;
    v6 += 168;
  }

  while (v7 != v2);
  v8 = v24;
  v9 = 126 - 2 * __clz((*(&v24 + 1) - v24) >> 3);
  if (*(&v24 + 1) == v24)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  sub_C13754(v24, *(&v24 + 1), v23, v10, 1);
  v11 = *(&v25 + 1);
  v12 = 126 - 2 * __clz((v26 - *(&v25 + 1)) >> 3);
  if (v26 == *(&v25 + 1))
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  sub_C13754(*(&v25 + 1), v26, v23, v13, 1);
  if (*(*a2 + 160))
  {
    sub_5AF20();
  }

  v14 = *(*a2 + 112);
  if (v14 == 0x7FFFFFFF)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v22 = sub_2D390(exception, "Service status calculation component called on journey leg with invalid upcoming journey leg alternatives reference time", 0x78uLL);
  }

  v15 = a1[1];
  if (*a1 < 0)
  {
    v16 = -5;
  }

  else
  {
    v16 = 5;
  }

  v17 = *a1 / -10 + v14 + (((-103 * (v16 + *a1 % 10)) >> 15) & 1) + ((-103 * (v16 + *a1 % 10)) >> 10);
  if (v15 < 0)
  {
    v18 = -5;
  }

  else
  {
    v18 = 5;
  }

  sub_C12E10(a1, v17, v15 / 10 + v14 + (((103 * (v18 + v15 % 10)) >> 15) & 1) + ((103 * (v18 + v15 % 10)) >> 10), &v24, v23);
  v19 = sub_C121B8(a1, v17, v23);
  if (v11)
  {
    operator delete(v11);
  }

  if (v8)
  {
    operator delete(v8);
  }

  return v19;
}

void sub_C11B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

void sub_C11BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

void sub_C11BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

void sub_C11BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

void sub_C11BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

void sub_C11BF4(int *a1, _DWORD *a2, uint64_t a3)
{
  v3 = *(a3 + 48);
  for (i = *(a3 + 56); v3 != i; v3 += 248)
  {
    sub_C11C48(a1, a2, v3);
  }
}

void sub_C11C48(int *a1, _DWORD *a2, uint64_t a3)
{
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  sub_C11F64(a1, a3, &v26);
  v5 = 126 - 2 * __clz((*(&v26 + 1) - v26) >> 3);
  if (*(&v26 + 1) == v26)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v24 = v26;
  sub_C13754(v26, *(&v26 + 1), v29, v6, 1);
  v7 = *(&v27 + 1);
  v8 = 126 - 2 * __clz((v28 - *(&v27 + 1)) >> 3);
  if (v28 == *(&v27 + 1))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  sub_C13754(*(&v27 + 1), v28, v29, v9, 1);
  v10 = *(a3 + 96);
  for (i = *(a3 + 104); v10 != i; v10 += 60)
  {
    if (*(v10 + 12) == 1)
    {
      v13 = a1[1];
      v14 = *(v10 + 4 * (*(v10 + 8) != 0x7FFFFFFF) + 4);
      if (*a1 < 0)
      {
        v15 = -5;
      }

      else
      {
        v15 = 5;
      }

      v16 = *a1 / -10 + v14 + (((-103 * (v15 + *a1 % 10)) >> 15) & 1) + ((-103 * (v15 + *a1 % 10)) >> 10);
      v17 = v13 / 10;
      v18 = v13 % 10;
      if (v13 < 0)
      {
        v19 = -5;
      }

      else
      {
        v19 = 5;
      }

      sub_C12E10(a1, v16, v17 + v14 + (((103 * (v19 + v18)) >> 15) & 1) + ((103 * (v19 + v18)) >> 10), &v26, v29);
      v12 = sub_C121B8(a1, v16, v29);
    }

    else
    {
      v12 = 0;
    }

    *(v10 + 56) = v12;
  }

  v20 = a1[1];
  if (*a1 < 0)
  {
    v21 = -5;
  }

  else
  {
    v21 = 5;
  }

  v22 = *a1 / -10 + *a2 + (((-103 * (v21 + *a1 % 10)) >> 15) & 1) + ((-103 * (v21 + *a1 % 10)) >> 10);
  if (v20 < 0)
  {
    v23 = -5;
  }

  else
  {
    v23 = 5;
  }

  sub_C12E10(a1, v22, v20 / 10 + *a2 + (((103 * (v23 + v20 % 10)) >> 15) & 1) + ((103 * (v23 + v20 % 10)) >> 10), &v26, v29);
  *(a3 + 208) = sub_C121B8(a1, v22, v29);
  if (v7)
  {
    operator delete(v7);
  }

  if (v24)
  {
    operator delete(v24);
  }
}

void sub_C11F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

void sub_C11F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

void sub_C11F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_21DB4B4(va);
  _Unwind_Resume(a1);
}

void sub_C11F64(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[9];
  v6 = a2[10];
  if (v5 != v6)
  {
    v7 = *(a3 + 8);
    do
    {
      v9 = *(a3 + 16);
      if (v7 < v9)
      {
        v8 = *(v5 + 12);
        *v7 = *(v5 + 4);
        *(v7 + 4) = v8;
        v7 += 8;
      }

      else
      {
        v10 = *a3;
        v11 = v7 - *a3;
        v12 = v11 >> 3;
        v13 = (v11 >> 3) + 1;
        if (v13 >> 61)
        {
LABEL_34:
          sub_1794();
        }

        v14 = v9 - v10;
        if (v14 >> 2 > v13)
        {
          v13 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          if (!(v15 >> 61))
          {
            operator new();
          }

          goto LABEL_35;
        }

        v16 = 8 * v12;
        v17 = *(v5 + 12);
        *v16 = *(v5 + 4);
        *(v16 + 4) = v17;
        v7 = 8 * v12 + 8;
        memcpy(0, v10, v11);
        *a3 = 0;
        *(a3 + 8) = v7;
        *(a3 + 16) = 0;
        if (v10)
        {
          operator delete(v10);
        }
      }

      *(a3 + 8) = v7;
      v5 += 60;
    }

    while (v5 != v6);
  }

  v18 = a2[12];
  v19 = a2[13];
  if (v18 != v19)
  {
    v20 = *(a3 + 32);
    do
    {
      v22 = *(v18 + 4 * (*(v18 + 8) != 0x7FFFFFFF) + 4);
      v23 = *(a3 + 40);
      if (v20 < v23)
      {
        v21 = *(v18 + 12);
        *v20 = v22;
        *(v20 + 4) = v21;
        v20 += 8;
      }

      else
      {
        v24 = *(a3 + 24);
        v25 = v20 - v24;
        v26 = (v20 - v24) >> 3;
        v27 = v26 + 1;
        if ((v26 + 1) >> 61)
        {
          goto LABEL_34;
        }

        v28 = v23 - v24;
        if (v28 >> 2 > v27)
        {
          v27 = v28 >> 2;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          if (!(v29 >> 61))
          {
            operator new();
          }

LABEL_35:
          sub_1808();
        }

        v30 = v26;
        v31 = 8 * v26;
        v32 = *(v18 + 12);
        *v31 = v22;
        *(v31 + 4) = v32;
        v20 = 8 * v26 + 8;
        v33 = (v31 - 8 * v30);
        memcpy(v33, v24, v25);
        *(a3 + 24) = v33;
        *(a3 + 32) = v20;
        *(a3 + 40) = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      *(a3 + 32) = v20;
      v18 += 60;
    }

    while (v18 != v19);
  }
}

uint64_t sub_C121B8(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (v4 - *a3 < 8)
  {
    return 1;
  }

  v6 = a3[2];
  v7 = a3[3];
  if (v6 == v7)
  {
    return 4;
  }

  v8 = v7 - v6 - 8;
  if (v8 < 0x40)
  {
    v9 = 0;
    v10 = a3[2];
    goto LABEL_20;
  }

  v11 = v8 >> 3;
  v12 = (v8 >> 3) + 1;
  if (v8 >= 0x100)
  {
    v14 = 0uLL;
    v15.i64[0] = 0xFDFDFDFDFDFDFDFDLL;
    v15.i64[1] = 0xFDFDFDFDFDFDFDFDLL;
    v16.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v16.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v17 = vdupq_n_s64(1uLL);
    v18 = 32;
    v19 = 0uLL;
    if ((v12 & 0x1F) != 0)
    {
      v18 = v12 & 0x1F;
    }

    v20 = 0uLL;
    v13 = v12 - v18;
    v21 = 0uLL;
    v22 = (v6 + 133);
    v23 = 0uLL;
    v24 = v12;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    do
    {
      v36.i8[0] = *(v22 - 128);
      v36.i8[1] = *(v22 - 120);
      v36.i8[2] = *(v22 - 112);
      v36.i8[3] = *(v22 - 104);
      v36.i8[4] = *(v22 - 96);
      v36.i8[5] = *(v22 - 88);
      v36.i8[6] = *(v22 - 80);
      v36.i8[7] = *(v22 - 72);
      v36.i8[8] = *(v22 - 64);
      v36.i8[9] = *(v22 - 56);
      v36.i8[10] = *(v22 - 48);
      v36.i8[11] = *(v22 - 40);
      v36.i8[12] = *(v22 - 32);
      v36.i8[13] = *(v22 - 24);
      v36.i8[14] = *(v22 - 16);
      v36.i8[15] = *(v22 - 8);
      v37.i8[0] = *v22;
      v37.i8[1] = v22[8];
      v37.i8[2] = v22[16];
      v37.i8[3] = v22[24];
      v37.i8[4] = v22[32];
      v37.i8[5] = v22[40];
      v37.i8[6] = v22[48];
      v37.i8[7] = v22[56];
      v37.i8[8] = v22[64];
      v37.i8[9] = v22[72];
      v37.i8[10] = v22[80];
      v37.i8[11] = v22[88];
      v37.i8[12] = v22[96];
      v37.i8[13] = v22[104];
      v37.i8[14] = v22[112];
      v37.i8[15] = v22[120];
      v38 = vcgtq_u8(v16, vaddq_s8(v36, v15));
      v39 = vmovl_u8(*v38.i8);
      v40 = vmovl_high_u8(v38);
      v41 = vmovl_high_u16(v40);
      v42.i64[0] = v41.u32[2];
      v42.i64[1] = v41.u32[3];
      v27 = vaddq_s64(v27, vandq_s8(v42, v17));
      v43 = vmovl_high_u16(v39);
      v44 = vmovl_u16(*v40.i8);
      v42.i64[0] = v41.u32[0];
      v42.i64[1] = v41.u32[1];
      v26 = vaddq_s64(v26, vandq_s8(v42, v17));
      v42.i64[0] = v44.u32[2];
      v42.i64[1] = v44.u32[3];
      v25 = vaddq_s64(v25, vandq_s8(v42, v17));
      v42.i64[0] = v43.u32[0];
      v42.i64[1] = v43.u32[1];
      v45 = vandq_s8(v42, v17);
      v42.i64[0] = v44.u32[0];
      v42.i64[1] = v44.u32[1];
      v46 = vandq_s8(v42, v17);
      v42.i64[0] = v43.u32[2];
      v42.i64[1] = v43.u32[3];
      v47 = vcgtq_u8(v16, vaddq_s8(v37, v15));
      v21 = vaddq_s64(v21, vandq_s8(v42, v17));
      v48 = vmovl_u8(*v47.i8);
      v49 = vmovl_high_u8(v47);
      v23 = vaddq_s64(v23, v46);
      v50 = vmovl_high_u16(v49);
      v20 = vaddq_s64(v20, v45);
      v42.i64[0] = v50.u32[2];
      v42.i64[1] = v50.u32[3];
      v35 = vaddq_s64(v35, vandq_s8(v42, v17));
      v51 = vmovl_high_u16(v48);
      v52 = vmovl_u16(*v49.i8);
      v42.i64[0] = v50.u32[0];
      v42.i64[1] = v50.u32[1];
      v34 = vaddq_s64(v34, vandq_s8(v42, v17));
      v42.i64[0] = v52.u32[2];
      v42.i64[1] = v52.u32[3];
      v33 = vaddq_s64(v33, vandq_s8(v42, v17));
      v42.i64[0] = v51.u32[2];
      v42.i64[1] = v51.u32[3];
      v31 = vaddq_s64(v31, vandq_s8(v42, v17));
      v42.i64[0] = v52.u32[0];
      v42.i64[1] = v52.u32[1];
      v32 = vaddq_s64(v32, vandq_s8(v42, v17));
      v42.i64[0] = v51.u32[0];
      v42.i64[1] = v51.u32[1];
      v53 = vmovl_u16(*v39.i8);
      v30 = vaddq_s64(v30, vandq_s8(v42, v17));
      v42.i64[0] = v53.u32[2];
      v42.i64[1] = v53.u32[3];
      v54 = vmovl_u16(*v48.i8);
      v19 = vaddq_s64(v19, vandq_s8(v42, v17));
      v42.i64[0] = v54.u32[2];
      v42.i64[1] = v54.u32[3];
      v29 = vaddq_s64(v29, vandq_s8(v42, v17));
      v42.i64[0] = v53.u32[0];
      v42.i64[1] = v53.u32[1];
      v14 = vaddq_s64(v14, vandq_s8(v42, v17));
      v42.i64[0] = v54.u32[0];
      v42.i64[1] = v54.u32[1];
      v28 = vaddq_s64(v28, vandq_s8(v42, v17));
      v24 -= 32;
      v22 += 256;
    }

    while (v18 != v24);
    v9 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v28, v14), vaddq_s64(v32, v23)), vaddq_s64(vaddq_s64(v30, v20), vaddq_s64(v34, v26))), vaddq_s64(vaddq_s64(vaddq_s64(v29, v19), vaddq_s64(v33, v25)), vaddq_s64(vaddq_s64(v31, v21), vaddq_s64(v35, v27)))));
    if (v18 < 9)
    {
      v10 = v6 + 8 * v13;
      goto LABEL_20;
    }
  }

  else
  {
    v9 = 0;
    v13 = 0;
  }

  v55 = v12 & 7;
  if ((v12 & 7) == 0)
  {
    v55 = 8;
  }

  v10 = v6 + 8 * (v12 - v55);
  v56 = 0uLL;
  v57 = v9;
  v58 = ~v11 + v13 + v55;
  v59 = (v6 + 8 * v13 + 37);
  v60 = vdupq_n_s64(1uLL);
  v61 = 0uLL;
  v62 = 0uLL;
  do
  {
    v63.i8[0] = *(v59 - 32);
    v63.i8[1] = *(v59 - 24);
    v63.i8[2] = *(v59 - 16);
    v63.i8[3] = *(v59 - 8);
    v63.i8[4] = *v59;
    v63.i8[5] = v59[8];
    v63.i8[6] = v59[16];
    v63.i8[7] = v59[24];
    v64 = vmovl_u8(vcgt_u8(0xFEFEFEFEFEFEFEFELL, vadd_s8(v63, 0xFDFDFDFDFDFDFDFDLL)));
    v65 = vmovl_u16(*v64.i8);
    v66.i64[0] = v65.u32[0];
    v66.i64[1] = v65.u32[1];
    v67 = vandq_s8(v66, v60);
    v66.i64[0] = v65.u32[2];
    v66.i64[1] = v65.u32[3];
    v68 = vandq_s8(v66, v60);
    v69 = vmovl_high_u16(v64);
    v66.i64[0] = v69.u32[0];
    v66.i64[1] = v69.u32[1];
    v70 = vandq_s8(v66, v60);
    v66.i64[0] = v69.u32[2];
    v66.i64[1] = v69.u32[3];
    v62 = vaddq_s64(v62, vandq_s8(v66, v60));
    v61 = vaddq_s64(v61, v70);
    v56 = vaddq_s64(v56, v68);
    v57 = vaddq_s64(v57, v67);
    v59 += 64;
    v58 += 8;
  }

  while (v58);
  v9 = vaddvq_s64(vaddq_s64(vaddq_s64(v57, v61), vaddq_s64(v56, v62)));
  do
  {
LABEL_20:
    if (*(v10 + 5) - 3 < 0xFFFFFFFE)
    {
      ++v9;
    }

    v10 += 8;
  }

  while (v10 != v7);
  if (!v9)
  {
    return 4;
  }

  if (v3 == v4)
  {
    goto LABEL_29;
  }

  while (!*(v3 + 4))
  {
    v3 += 8;
    if (v3 == v4)
    {
LABEL_29:
      while (!*(v6 + 4))
      {
        v6 += 8;
        if (v6 == v7)
        {
          return 0;
        }
      }

      break;
    }
  }

  v72 = sub_C12718(a1, a2, a3);
  v74 = *(a1 + 56);
  v73 = a1 + 56;
  v75 = v74;
  v76 = *(v73 - 32);
  v77 = v73 - 24;
  if (*(v73 - 24) > v76 && v72 >= *(v73 - 24))
  {
    v76 = *(v73 - 24);
  }

  else
  {
    v77 = v73 - 32;
  }

  if (*(v73 - 16) > v76 && v72 >= *(v73 - 16))
  {
    v76 = *(v73 - 16);
    v77 = v73 - 16;
  }

  if (*(v73 - 8) > v76 && v72 >= *(v73 - 8))
  {
    v76 = *(v73 - 8);
    v77 = v73 - 8;
  }

  if (v72 >= v75 && v75 > v76)
  {
    v77 = v73;
  }

  return ((v77 - (v73 - 32)) >> 3);
}