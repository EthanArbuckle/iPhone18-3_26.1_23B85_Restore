uint64_t sub_1404()
{
  result = std::thread::hardware_concurrency();
  qword_278C5C0 = result;
  return result;
}

unint64_t sub_1430@<X0>(unsigned int **a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a1;
  v35 = a1[1];
  if (*a1 == v35 || (-a2 <= a2 + 1 ? (v4 = a2 + 1) : (v4 = -a2), v37 = -a2, v38 = v4, a2 < 0))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      v36 = v3;
      v6 = *v3;
      v7 = v37;
      do
      {
        v8 = v37;
        do
        {
          v9 = sub_57A90(v6);
          v10 = v6 & ~(-1 << (v9 & 0xFE));
          v11 = sub_581D8(v10);
          v12 = sub_581D8(v10 >> 1);
          v13 = 1 << (v9 >> 1);
          v14 = (((((((v11 + v7) & ~((v11 + v7) >> 31)) - (v11 + v7) + ((v11 + v7) >> 31)) >> (v9 >> 1)) + ((v11 + v7) >> 31)) << (v9 >> 1)) + v11 + v7) % v13;
          v15 = (((((((v12 + v8) & ~((v12 + v8) >> 31)) - (v12 + v8) + ((v12 + v8) >> 31)) >> (v9 >> 1)) + ((v12 + v8) >> 31)) << (v9 >> 1)) + v12 + v8) % v13;
          v16 = -1 << (v9 >> 1);
          if (~v16 < v14)
          {
            v17 = ~v16;
          }

          else
          {
            v17 = v14;
          }

          if (~v16 < v15)
          {
            v18 = ~v16;
          }

          else
          {
            v18 = v15;
          }

          sub_58168(v17, v18);
          v20 = v19 | (1 << (v9 & 0xFE));
          if (v20 != v6)
          {
            v21 = a3[2];
            if (v5 < v21)
            {
              *v5 = v20;
              v5 += 4;
            }

            else
            {
              v22 = v5;
              v23 = v5 >> 2;
              v24 = v23 + 1;
              if ((v23 + 1) >> 62)
              {
                *a3 = 0;
                sub_1794();
              }

              if (v21 >> 1 > v24)
              {
                v24 = v21 >> 1;
              }

              if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v25 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v25 = v24;
              }

              if (v25)
              {
                if (!(v25 >> 62))
                {
                  operator new();
                }

                *a3 = 0;
                sub_1808();
              }

              v26 = (4 * v23);
              *v26 = v20;
              v5 = (v26 + 1);
              memcpy(0, 0, v22);
              a3[1] = v5;
              a3[2] = 0;
            }

            a3[1] = v5;
          }

          ++v8;
        }

        while (v8 != v38);
        *a3 = 0;
        ++v7;
      }

      while (v7 != v38);
      v3 = v36 + 1;
    }

    while (v36 + 1 != v35);
  }

  v27 = 126 - 2 * __clz(v5 >> 2);
  if (v5)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  result = sub_1C4C(0, v5, &v40, v28, 1);
  if (v5)
  {
    v30 = dword_4;
    while (v30 != v5)
    {
      v32 = *(v30 - 1);
      v31 = *v30++;
      if (v32 == v31)
      {
        v33 = v30 - 2;
        while (v30 != v5)
        {
          v34 = v31;
          v31 = *v30;
          if (v34 != *v30)
          {
            v33[1] = v31;
            ++v33;
          }

          ++v30;
        }

        if (v33 + 1 != v5)
        {
          a3[1] = v33 + 1;
        }

        return result;
      }
    }
  }

  return result;
}

void sub_175C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v13 = *a13;
  if (*a13)
  {
    *(a13 + 8) = v13;
    v14 = a1;
    operator delete(v13);
    a1 = v14;
  }

  _Unwind_Resume(a1);
}

void sub_17AC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_195A000(exception, a1);
}

void sub_1808()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

char *sub_183C(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return v5;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a5 > (v7 - v8) >> 2)
  {
    v9 = *a1;
    v10 = a5 + ((v8 - *a1) >> 2);
    if (v10 >> 62)
    {
      sub_1794();
    }

    v11 = v7 - v9;
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

    v30 = (__dst - v9);
    v31 = 4 * ((__dst - v9) >> 2);
    v32 = (v31 + 4 * a5);
    v33 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    if ((v6 & 0x3FFFFFFFFFFFFFFFuLL) >= 7 && (v30 - __src) >= 0x20)
    {
      v54 = v33 + 1;
      v55 = (v33 + 1) & 0x7FFFFFFFFFFFFFF8;
      v34 = (v31 + 4 * v55);
      v35 = &__src[4 * v55];
      v56 = (__src + 16);
      v57 = (v31 + 16);
      v58 = v55;
      do
      {
        v59 = *v56;
        *(v57 - 1) = *(v56 - 1);
        *v57 = v59;
        v56 += 2;
        v57 += 2;
        v58 -= 8;
      }

      while (v58);
      if (v54 == v55)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v34 = v31;
      v35 = __src;
    }

    do
    {
      v36 = *v35;
      v35 += 4;
      *v34++ = v36;
    }

    while (v34 != v32);
LABEL_31:
    v37 = *(a1 + 8) - __dst;
    memcpy((v31 + 4 * a5), __dst, v37);
    v39 = v32 + v37;
    *(a1 + 8) = v5;
    v40 = *a1;
    v41 = &v5[-*a1];
    v42 = v31 - v41;
    memcpy((v31 - v41), *a1, v41);
    *a1 = v42;
    *(a1 + 8) = v39;
    *(a1 + 16) = 0;
    if (v40)
    {
      operator delete(v40);
    }

    return v31;
  }

  v13 = v8 - __dst;
  v14 = (v8 - __dst) >> 2;
  if (v14 >= a5)
  {
    v13 = 4 * a5;
    v17 = &__dst[4 * a5];
    v18 = (v8 - 4 * a5);
    if (v18 >= v8)
    {
      v22 = *(a1 + 8);
    }

    else
    {
      v19 = v18 + 1;
      if (v8 > (v18 + 1))
      {
        v19 = *(a1 + 8);
      }

      v20 = v19 + v13 + ~v8;
      v21 = v20 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
      v22 = *(a1 + 8);
      if (v21)
      {
        goto LABEL_74;
      }

      v23 = (v20 >> 2) + 1;
      v24 = 4 * (v23 & 0x7FFFFFFFFFFFFFF8);
      v18 = (v18 + v24);
      v22 = (v8 + v24);
      v25 = (v8 + 16);
      v26 = (v8 + 16 - v13);
      v27 = v23 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v28 = *v26;
        *(v25 - 1) = *(v26 - 1);
        *v25 = v28;
        v25 += 2;
        v26 += 2;
        v27 -= 8;
      }

      while (v27);
      if (v23 != (v23 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_74:
        do
        {
          v29 = *v18++;
          *v22++ = v29;
        }

        while (v18 < v8);
      }
    }

    *(a1 + 8) = v22;
    if (v8 != v17)
    {
      v51 = __src;
      memmove(v17, __dst, v8 - v17);
      __src = v51;
    }

    v52 = v5;
    v53 = __src;
    goto LABEL_68;
  }

  v15 = &__src[v13];
  if (&__src[v13] == a4)
  {
    v16 = *(a1 + 8);
  }

  else
  {
    v43 = &__src[v13];
    v44 = a4 - v15 - 4;
    if (v44 < 0x1C)
    {
      v16 = *(a1 + 8);
    }

    else
    {
      v16 = *(a1 + 8);
      if (v8 - v15 >= 0x20)
      {
        v45 = (v44 >> 2) + 1;
        v46 = 4 * (v45 & 0x7FFFFFFFFFFFFFF8);
        v43 = &v15[v46];
        v16 = v8 + v46;
        v47 = (v8 + 16);
        v48 = (v15 + 16);
        v49 = v45 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v50 = *v48;
          *(v47 - 1) = *(v48 - 1);
          *v47 = v50;
          v47 += 2;
          v48 += 2;
          v49 -= 8;
        }

        while (v49);
        if (v45 == (v45 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_50;
        }
      }
    }

    do
    {
      v60 = *v43;
      v43 += 4;
      *v16 = v60;
      v16 += 4;
    }

    while (v43 != a4);
  }

LABEL_50:
  *(a1 + 8) = v16;
  if (v14 >= 1)
  {
    v61 = a5;
    v62 = &__dst[4 * a5];
    v63 = (v16 - 4 * a5);
    v64 = __src;
    if (v63 >= v8)
    {
      v68 = v16;
    }

    else
    {
      v65 = v63 + 1;
      if (v8 > (v63 + 1))
      {
        v65 = v8;
      }

      v66 = &v65[v61] + ~v16;
      v67 = v66 < 0x1C || (a5 & 0x3FFFFFFFFFFFFFF8) == 0;
      v68 = v16;
      if (v67)
      {
        goto LABEL_75;
      }

      v69 = (v66 >> 2) + 1;
      v70 = 4 * (v69 & 0x7FFFFFFFFFFFFFF8);
      v63 = (v63 + v70);
      v68 = (v16 + v70);
      v71 = (v16 + 16);
      v72 = (v16 + 16 - v61 * 4);
      v73 = v69 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v74 = *v72;
        *(v71 - 1) = *(v72 - 1);
        *v71 = v74;
        v71 += 2;
        v72 += 2;
        v73 -= 8;
      }

      while (v73);
      if (v69 != (v69 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_75:
        do
        {
          v75 = *v63++;
          *v68++ = v75;
        }

        while (v63 < v8);
      }
    }

    *(a1 + 8) = v68;
    if (v16 != v62)
    {
      memmove(&__dst[4 * a5], __dst, v16 - v62);
    }

    if (v8 != v5)
    {
      v52 = v5;
      v53 = v64;
LABEL_68:
      memmove(v52, v53, v13);
    }
  }

  return v5;
}

unint64_t sub_1C4C(unint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
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
      v74 = *v10;
      v75 = *(a2 - 1);
      if (v75 < *v10)
      {
        *v10 = v75;
        *(a2 - 1) = v74;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v86 = v10 + 1;
      v88 = v10 == a2 || v86 == a2;
      if (a5)
      {
        if (!v88)
        {
          v89 = 0;
          v90 = v10;
          do
          {
            v93 = *v90;
            v92 = v90[1];
            v90 = v86;
            if (v92 < v93)
            {
              v94 = v89;
              do
              {
                *(v10 + v94 + 4) = v93;
                if (!v94)
                {
                  v91 = v10;
                  goto LABEL_128;
                }

                v93 = *(v10 + v94 - 4);
                v94 -= 4;
              }

              while (v92 < v93);
              v91 = (v10 + v94 + 4);
LABEL_128:
              *v91 = v92;
            }

            v86 = v90 + 1;
            v89 += 4;
          }

          while (v90 + 1 != a2);
        }
      }

      else if (!v88)
      {
        do
        {
          v100 = *v9;
          v99 = v9[1];
          v9 = v86;
          if (v99 < v100)
          {
            do
            {
              *v86 = v100;
              v100 = *(v86 - 2);
              --v86;
            }

            while (v99 < v100);
            *v86 = v99;
          }

          v86 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return sub_2920(v10, a2, a2);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(a2 - 1);
    if (v11 < 0x81)
    {
      v17 = *v12;
      v18 = *v10;
      if (*v10 < *v13)
      {
        if (v14 < v18)
        {
          *v13 = v14;
          goto LABEL_37;
        }

        *v13 = v18;
        *v10 = v17;
        v28 = *(a2 - 1);
        if (v28 < v17)
        {
          *v10 = v28;
LABEL_37:
          *(a2 - 1) = v17;
        }

LABEL_38:
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v14 >= v18)
      {
        goto LABEL_38;
      }

      *v10 = v14;
      *(a2 - 1) = v18;
      v20 = *v13;
      if (*v10 >= *v13)
      {
        goto LABEL_38;
      }

      *v13 = *v10;
      *v10 = v20;
      --a4;
      v21 = v20;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v10 - 1) < v21)
      {
        goto LABEL_62;
      }

      if (v21 >= *(a2 - 1))
      {
        v57 = v10 + 1;
        do
        {
          v10 = v57;
          if (v57 >= a2)
          {
            break;
          }

          ++v57;
        }

        while (v21 >= *v10);
      }

      else
      {
        do
        {
          v56 = v10[1];
          ++v10;
        }

        while (v21 >= v56);
      }

      v58 = a2;
      if (v10 < a2)
      {
        v58 = a2;
        do
        {
          v59 = *--v58;
        }

        while (v21 < v59);
      }

      if (v10 < v58)
      {
        v60 = *v10;
        v61 = *v58;
        do
        {
          *v10 = v61;
          *v58 = v60;
          do
          {
            v62 = v10[1];
            ++v10;
            v60 = v62;
          }

          while (v21 >= v62);
          do
          {
            v63 = *--v58;
            v61 = v63;
          }

          while (v21 < v63);
        }

        while (v10 < v58);
      }

      v64 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v64;
      }

      a5 = 0;
      *v64 = v21;
    }

    else
    {
      v15 = *v10;
      v16 = *v12;
      if (*v12 >= *v10)
      {
        if (v14 < v16)
        {
          *v12 = v14;
          *(a2 - 1) = v16;
          v19 = *v10;
          if (*v12 < *v10)
          {
            *v10 = *v12;
            *v12 = v19;
          }
        }
      }

      else
      {
        if (v14 >= v16)
        {
          *v10 = v16;
          *v12 = v15;
          v22 = *(a2 - 1);
          if (v22 >= v15)
          {
            goto LABEL_29;
          }

          *v12 = v22;
        }

        else
        {
          *v10 = v14;
        }

        *(a2 - 1) = v15;
      }

LABEL_29:
      v23 = v12 - 1;
      v24 = *(v12 - 1);
      v25 = v10[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v10[1];
          if (*v23 < v27)
          {
            v10[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 >= v24)
        {
          v10[1] = v24;
          *v23 = v25;
          v29 = *(a2 - 2);
          if (v29 >= v25)
          {
            goto LABEL_43;
          }

          *v23 = v29;
        }

        else
        {
          v10[1] = v26;
        }

        *(a2 - 2) = v25;
      }

LABEL_43:
      v32 = v12[1];
      v30 = v12 + 1;
      v31 = v32;
      v33 = v10[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v10[2];
          if (*v30 < v35)
          {
            v10[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 >= v31)
        {
          v10[2] = v31;
          *v30 = v33;
          v36 = *(a2 - 3);
          if (v36 >= v33)
          {
            goto LABEL_52;
          }

          *v30 = v36;
        }

        else
        {
          v10[2] = v34;
        }

        *(a2 - 3) = v33;
      }

LABEL_52:
      v37 = *v23;
      v38 = *v13;
      v39 = *v30;
      if (*v13 >= *v23)
      {
        if (v39 >= v38)
        {
          goto LABEL_60;
        }

        *v13 = v39;
        *v30 = v38;
        v30 = v13;
        v38 = v37;
        if (v39 < v37)
        {
LABEL_59:
          *v23 = v39;
          *v30 = v37;
LABEL_60:
          v41 = *v10;
          *v10 = v38;
          *v13 = v41;
          --a4;
          v21 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v55 = *v10;
        *v10 = v39;
        *v13 = v55;
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v39 < v38)
      {
        goto LABEL_59;
      }

      *v23 = v38;
      *v13 = v37;
      v23 = v13;
      v38 = v39;
      if (v39 < v37)
      {
        goto LABEL_59;
      }

      v40 = *v10;
      *v10 = v37;
      *v13 = v40;
      --a4;
      v21 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v42 = 0;
      do
      {
        v43 = v10[++v42];
      }

      while (v43 < v21);
      v44 = &v10[v42];
      v45 = a2;
      if (v42 == 1)
      {
        v45 = a2;
        do
        {
          if (v44 >= v45)
          {
            break;
          }

          v47 = *--v45;
        }

        while (v47 >= v21);
      }

      else
      {
        do
        {
          v46 = *--v45;
        }

        while (v46 >= v21);
      }

      if (v44 >= v45)
      {
        v53 = v44 - 1;
        if (v44 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v53;
        goto LABEL_80;
      }

      v48 = *v45;
      v49 = &v10[v42];
      v50 = v45;
      do
      {
        *v49 = v48;
        *v50 = v43;
        do
        {
          v51 = v49[1];
          ++v49;
          v43 = v51;
        }

        while (v51 < v21);
        do
        {
          v52 = *--v50;
          v48 = v52;
        }

        while (v52 >= v21);
      }

      while (v49 < v50);
      v53 = v49 - 1;
      if (v49 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v53 = v21;
      if (v44 < v45)
      {
        goto LABEL_83;
      }

      v54 = sub_2534(v10, v53);
      v10 = v53 + 1;
      result = sub_2534(v53 + 1, a2);
      if (result)
      {
        a2 = v53;
        if (!v54)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v54)
      {
LABEL_83:
        result = sub_1C4C(v9, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v53 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v79 = v10 + 1;
      v80 = v10[1];
      v81 = v10 + 2;
      v82 = v10[2];
      v83 = *v10;
      if (v80 >= v83)
      {
        if (v82 < v80)
        {
          *v79 = v82;
          *v81 = v80;
          v84 = v10;
          v85 = v10 + 1;
          result = v80;
          if (v82 < v83)
          {
            goto LABEL_148;
          }

          goto LABEL_149;
        }

LABEL_157:
        LODWORD(v80) = v82;
        v98 = *(a2 - 1);
        if (v98 >= v80)
        {
          return result;
        }
      }

      else
      {
        v84 = v10;
        v85 = v10 + 2;
        result = *v10;
        if (v82 >= v80)
        {
          *v10 = v80;
          v10[1] = v83;
          v84 = v10 + 1;
          v85 = v10 + 2;
          result = v83;
          if (v82 >= v83)
          {
            goto LABEL_157;
          }
        }

LABEL_148:
        *v84 = v82;
        *v85 = v83;
        LODWORD(v80) = result;
LABEL_149:
        v98 = *(a2 - 1);
        if (v98 >= v80)
        {
          return result;
        }
      }

      *v81 = v98;
      *(a2 - 1) = v80;
      v101 = *v79;
      v102 = *v81;
      if (*v81 >= v101)
      {
        return result;
      }

      v10[1] = v102;
      v10[2] = v101;
      v103 = *v10;
      if (v102 >= *v10)
      {
        return result;
      }

      goto LABEL_172;
    }

    if (v11 == 5)
    {
      v65 = v10 + 1;
      v66 = v10[1];
      v68 = v10 + 2;
      v67 = v10[2];
      v69 = *v10;
      if (v66 >= v69)
      {
        if (v67 >= v66)
        {
          v72 = *v10;
          LODWORD(v69) = v10[1];
          v95 = v10[3];
          if (v95 >= v67)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v70 = v10;
          v71 = v10 + 1;
          *v65 = v67;
          *v68 = v66;
          v72 = v67;
          result = v69;
          v73 = v66;
          if (v67 < v69)
          {
            goto LABEL_162;
          }

          v72 = v69;
          LODWORD(v69) = v67;
          LODWORD(v67) = v66;
          v95 = v10[3];
          if (v95 >= v67)
          {
            goto LABEL_167;
          }
        }
      }

      else
      {
        if (v67 < v66)
        {
          v70 = v10;
          v71 = v10 + 2;
          v72 = v10[2];
          result = v10[1];
          v73 = *v10;
          goto LABEL_162;
        }

        v70 = v10 + 1;
        v71 = v10 + 2;
        *v10 = v66;
        v10[1] = v69;
        v72 = v66;
        result = v67;
        v73 = v69;
        if (v67 < v69)
        {
LABEL_162:
          *v70 = v67;
          *v71 = v69;
          LODWORD(v69) = result;
          LODWORD(v67) = v73;
          v95 = v10[3];
          if (v95 < v73)
          {
            goto LABEL_163;
          }

LABEL_167:
          LODWORD(v67) = v95;
LABEL_168:
          v104 = *(a2 - 1);
          if (v104 >= v67)
          {
            return result;
          }

          v10[3] = v104;
          *(a2 - 1) = v67;
          v105 = v10[2];
          v102 = v10[3];
          if (v102 >= v105)
          {
            return result;
          }

          v10[2] = v102;
          v10[3] = v105;
          v106 = v10[1];
          if (v102 >= v106)
          {
            return result;
          }

          v10[1] = v102;
          v10[2] = v106;
          v103 = *v10;
          if (v102 >= *v10)
          {
            return result;
          }

LABEL_172:
          *v10 = v102;
          v10[1] = v103;
          return result;
        }

        v72 = v66;
        v95 = v10[3];
        if (v95 >= v67)
        {
          goto LABEL_167;
        }
      }

LABEL_163:
      v10[2] = v95;
      v10[3] = v67;
      if (v95 < v69)
      {
        *v65 = v95;
        *v68 = v69;
        if (v95 < v72)
        {
          *v10 = v95;
          v10[1] = v72;
        }
      }

      goto LABEL_168;
    }

    goto LABEL_10;
  }

  v76 = *v10;
  v77 = v10[1];
  v78 = *(a2 - 1);
  if (v77 < *v10)
  {
    if (v78 >= v77)
    {
      *v10 = v77;
      v10[1] = v76;
      v107 = *(a2 - 1);
      if (v107 >= v76)
      {
        return result;
      }

      v10[1] = v107;
    }

    else
    {
      *v10 = v78;
    }

    *(a2 - 1) = v76;
    return result;
  }

  if (v78 < v77)
  {
    v10[1] = v78;
    *(a2 - 1) = v77;
    v96 = *v10;
    v97 = v10[1];
    if (v97 < *v10)
    {
      *v10 = v97;
      v10[1] = v96;
    }
  }

  return result;
}

BOOL sub_2534(unsigned int *a1, unsigned int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 >= *a1)
      {
        if (v18 >= v17)
        {
          return 1;
        }

        a1[1] = v18;
        *(a2 - 1) = v17;
        v33 = *a1;
        v34 = a1[1];
        if (v34 >= *a1)
        {
          return 1;
        }

        *a1 = v34;
        a1[1] = v33;
        return 1;
      }

      else if (v18 >= v17)
      {
        *a1 = v17;
        a1[1] = v16;
        v47 = *(a2 - 1);
        if (v47 >= v16)
        {
          return 1;
        }

        a1[1] = v47;
        *(a2 - 1) = v16;
        return 1;
      }

      else
      {
        *a1 = v18;
        *(a2 - 1) = v16;
        return 1;
      }
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
LABEL_57:
            a1[2] = v42;
            a1[3] = v6;
            if (v42 < v8)
            {
              *v4 = v42;
              *v7 = v8;
              if (v42 < v11)
              {
                *a1 = v42;
                a1[1] = v11;
              }
            }

LABEL_62:
            v48 = *(a2 - 1);
            if (v48 >= v6)
            {
              return 1;
            }

            a1[3] = v48;
            *(a2 - 1) = v6;
            v49 = a1[2];
            v45 = a1[3];
            if (v45 >= v49)
            {
              return 1;
            }

            a1[2] = v45;
            a1[3] = v49;
            v50 = a1[1];
            if (v45 >= v50)
            {
              return 1;
            }

            a1[1] = v45;
            a1[2] = v50;
            v46 = *a1;
            if (v45 >= *a1)
            {
              return 1;
            }

            goto LABEL_66;
          }

LABEL_61:
          v6 = v42;
          goto LABEL_62;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      v42 = a1[3];
      if (v42 < v13)
      {
        goto LABEL_57;
      }

      goto LABEL_61;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
        goto LABEL_49;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v43 = *(a2 - 1);
        if (v43 >= v26)
        {
          return 1;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
LABEL_49:
          v26 = v28;
          v43 = *(a2 - 1);
          if (v43 >= v26)
          {
            return 1;
          }

LABEL_50:
          *v27 = v43;
          *(a2 - 1) = v26;
          v44 = *v25;
          v45 = *v27;
          if (*v27 >= v44)
          {
            return 1;
          }

          a1[1] = v45;
          a1[2] = v44;
          v46 = *a1;
          if (v45 >= *a1)
          {
            return 1;
          }

LABEL_66:
          *a1 = v45;
          a1[1] = v46;
          return 1;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_16:
    v20 = a1 + 2;
    v19 = a1[2];
    v21 = a1[1];
    v22 = *a1;
    if (v21 >= *a1)
    {
      if (v19 >= v21)
      {
        goto LABEL_30;
      }

      a1[1] = v19;
      *v20 = v21;
      v23 = a1;
      v24 = a1 + 1;
    }

    else
    {
      v23 = a1;
      v24 = a1 + 2;
      if (v19 < v21)
      {
LABEL_29:
        *v23 = v19;
        *v24 = v22;
        goto LABEL_30;
      }

      *a1 = v21;
      a1[1] = v22;
      v23 = a1 + 1;
      v24 = a1 + 2;
    }

    if (v19 < v22)
    {
      goto LABEL_29;
    }

LABEL_30:
    v35 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v36 = 0;
    for (i = 12; ; i += 4)
    {
      v38 = *v20;
      v39 = *v35;
      if (*v35 < v38)
      {
        break;
      }

LABEL_33:
      v20 = v35++;
      if (v35 == a2)
      {
        return 1;
      }
    }

    v40 = i;
    do
    {
      *(a1 + v40) = v38;
      v41 = v40 - 4;
      if (v40 == 4)
      {
        *a1 = v39;
        if (++v36 != 8)
        {
          goto LABEL_33;
        }

        return v35 + 1 == a2;
      }

      v38 = *(a1 + v40 - 8);
      v40 -= 4;
    }

    while (v39 < v38);
    *(a1 + v41) = v39;
    if (++v36 != 8)
    {
      goto LABEL_33;
    }

    return v35 + 1 == a2;
  }

  v14 = *a1;
  v15 = *(a2 - 1);
  if (v15 >= *a1)
  {
    return 1;
  }

  *a1 = v15;
  *(a2 - 1) = v14;
  return 1;
}

unsigned int *sub_2920(unsigned int *a1, unsigned int *a2, unsigned int *a3)
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
          v7 = (2 * (v5 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
          v8 = &a1[v7];
          if (2 * (v5 & 0x3FFFFFFFFFFFFFFFLL) + 2 >= v3)
          {
            v9 = *v8;
            v11 = &a1[v5];
            v12 = *v11;
            if (*v8 >= *v11)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v9 = v8[1];
            v10 = *v8 >= v9;
            if (*v8 > v9)
            {
              v9 = *v8;
            }

            if (!v10)
            {
              ++v8;
              v7 = 2 * (v5 & 0x3FFFFFFFFFFFFFFFLL) + 2;
            }

            v11 = &a1[v5];
            v12 = *v11;
            if (v9 >= *v11)
            {
LABEL_22:
              while (1)
              {
                *v11 = v9;
                v11 = v8;
                if (v4 < v7)
                {
                  break;
                }

                v14 = (2 * v7) | 1;
                v8 = &a1[v14];
                v7 = 2 * v7 + 2;
                if (v7 < v3)
                {
                  v9 = v8[1];
                  v13 = *v8 >= v9;
                  if (*v8 > v9)
                  {
                    v9 = *v8;
                  }

                  if (v13)
                  {
                    v7 = v14;
                  }

                  else
                  {
                    ++v8;
                  }

                  if (v9 < v12)
                  {
                    break;
                  }
                }

                else
                {
                  v9 = *v8;
                  v7 = v14;
                  if (*v8 < v12)
                  {
                    break;
                  }
                }
              }

              *v11 = v12;
            }
          }
        }

        v6 = v5-- <= 0;
      }

      while (!v6);
    }

    v15 = a2;
    if (a2 == a3)
    {
LABEL_59:
      if (v3 < 2)
      {
        return v15;
      }

      while (1)
      {
        v29 = 0;
        v30 = *a1;
        v31 = (v3 - 2) >> 1;
        v32 = a1;
        do
        {
          while (1)
          {
            v39 = &v32[v29];
            v38 = v39 + 1;
            v40 = (2 * v29) | 1;
            v29 = 2 * v29 + 2;
            if (v29 < v3)
            {
              break;
            }

            v29 = v40;
            *v32 = *v38;
            v32 = v39 + 1;
            if (v40 > v31)
            {
              goto LABEL_73;
            }
          }

          v35 = v39[2];
          v34 = v39 + 2;
          v33 = v35;
          v36 = *(v34 - 1);
          v37 = v36 >= v35;
          if (v36 > v35)
          {
            v33 = *(v34 - 1);
          }

          if (v37)
          {
            v29 = v40;
          }

          else
          {
            v38 = v34;
          }

          *v32 = v33;
          v32 = v38;
        }

        while (v29 <= v31);
LABEL_73:
        if (v38 != --a2)
        {
          *v38 = *a2;
          *a2 = v30;
          v41 = (v38 - a1 + 4) >> 2;
          v6 = v41 < 2;
          v42 = v41 - 2;
          if (v6)
          {
            goto LABEL_63;
          }

          v43 = v42 >> 1;
          v44 = &a1[v42 >> 1];
          v30 = *v38;
          v45 = *v44;
          if (*v44 >= *v38)
          {
            goto LABEL_63;
          }

          do
          {
            *v38 = v45;
            v38 = v44;
            if (!v43)
            {
              break;
            }

            v43 = (v43 - 1) >> 1;
            v44 = &a1[v43];
            v45 = *v44;
          }

          while (*v44 < v30);
        }

        *v38 = v30;
LABEL_63:
        v6 = v3-- <= 2;
        if (v6)
        {
          return v15;
        }
      }
    }

    if (v3 < 2)
    {
      v16 = *a1;
      v15 = a2;
      do
      {
        v17 = *v15;
        if (*v15 < v16)
        {
          *v15 = v16;
          *a1 = v17;
          v16 = v17;
        }

        ++v15;
      }

      while (v15 != a3);
      goto LABEL_59;
    }

    v18 = a1 + 1;
    v15 = a2;
    while (1)
    {
      v19 = *v15;
      if (*v15 < *a1)
      {
        *v15 = *a1;
        *a1 = v19;
        if (a2 - a1 == 8)
        {
          v20 = *v18;
          v21 = a1 + 1;
          v22 = 1;
          if (*v18 >= v19)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v23 = a1[2];
          v20 = *v18;
          v24 = *v18 >= v23;
          if (*v18 <= v23)
          {
            v20 = a1[2];
          }

          if (*v18 >= v23)
          {
            v21 = a1 + 1;
          }

          else
          {
            v21 = a1 + 2;
          }

          if (v24)
          {
            v22 = 1;
          }

          else
          {
            v22 = 2;
          }

          if (v20 >= v19)
          {
LABEL_48:
            v25 = a1;
            while (1)
            {
              *v25 = v20;
              v25 = v21;
              if (((v3 - 2) >> 1) < v22)
              {
                break;
              }

              v27 = (2 * v22) | 1;
              v21 = &a1[v27];
              v22 = 2 * v22 + 2;
              if (v22 < v3)
              {
                v20 = v21[1];
                v26 = *v21 >= v20;
                if (*v21 > v20)
                {
                  v20 = *v21;
                }

                if (v26)
                {
                  v22 = v27;
                }

                else
                {
                  ++v21;
                }

                if (v20 < v19)
                {
                  break;
                }
              }

              else
              {
                v20 = *v21;
                v22 = v27;
                if (*v21 < v19)
                {
                  break;
                }
              }
            }

            *v25 = v19;
          }
        }
      }

      if (++v15 == a3)
      {
        goto LABEL_59;
      }
    }
  }

  return a3;
}

void sub_2C68(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = [NSString stringWithUTF8String:v5];
  v14 = [NSLocale localeWithLocaleIdentifier:v6];

  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v8 = [NSString stringWithUTF8String:v7];
  v9 = [v8 capitalizedStringWithLocale:v14];

  v10 = v9;
  v11 = [v10 UTF8String];
  v12 = [v10 lengthOfBytesUsingEncoding:4];
  v13 = v12;
  if (v12 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  *(a3 + 23) = v12;
  if (v12)
  {
    memmove(a3, v11, v12);
  }

  v13[a3] = 0;
}

void sub_2E30(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (!*(a1 + 23))
    {
      *a3 = *a1;
      a3[2] = a1[2];
      return;
    }

    goto LABEL_5;
  }

  if (a1[1])
  {
LABEL_5:
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = [NSString stringWithUTF8String:v5];
    v19 = [NSLocale localeWithLocaleIdentifier:v6];

    if (*(a1 + 23) >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    v8 = [NSMutableString stringWithUTF8String:v7];
    v9 = [v8 rangeOfComposedCharacterSequenceAtIndex:0];
    v11 = v10;
    v12 = [v8 substringWithRange:{v9, v10}];
    v13 = [v12 lowercaseStringWithLocale:v19];

    [v8 replaceCharactersInRange:v9 withString:{v11, v13}];
    v14 = v8;
    v15 = [v14 UTF8String];
    v16 = [v14 lengthOfBytesUsingEncoding:4];
    v17 = v16;
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_3244();
    }

    if (v16 >= 0x17)
    {
      operator new();
    }

    *(a3 + 23) = v16;
    if (v16)
    {
      memmove(a3, v15, v16);
    }

    v17[a3] = 0;

    return;
  }

  v18 = *a1;

  sub_325C(a3, v18, 0);
}

uint64_t sub_3110(uint64_t *a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  v2 = [NSString stringWithUTF8String:v1];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3254779904;
  v5[2] = sub_3210;
  v5[3] = &unk_262D720;
  v5[4] = &v6;
  [v2 enumerateSubstringsInRange:0 options:objc_msgSend(v2 usingBlock:{"length"), 2, v5}];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void sub_31F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void *sub_325C(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_3244();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

double sub_3318(uint64_t a1)
{
  *&result = 0x8000000080000000;
  *a1 = 0x8000000080000000;
  *(a1 + 8) = 0x7FFFFFFF;
  *(a1 + 12) = 0;
  *(a1 + 14) = -1;
  *(a1 + 17) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_3344(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 40))
  {
    operator new();
  }

  result = *(a2 + 32);
  if (result)
  {
    nullsub_1(result);
    *(a1 + 4) = 0x8000000080000000;
    operator new();
  }

  return result;
}

const void ***sub_34A8(const void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_25F00(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_34FC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_4E80(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_3550(uint64_t a1, uint64_t a2)
{
  *a1 = 0x8000000080000000;
  *(a1 + 8) = 0x7FFFFFFF;
  *(a1 + 12) = 0;
  *(a1 + 14) = -1;
  *(a1 + 17) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_3344(a1, a2);
  return a1;
}

void sub_35B0(_Unwind_Exception *a1)
{
  sub_34A8((v1 + 40));
  sub_34FC(v2);
  _Unwind_Resume(a1);
}

double sub_35CC(uint64_t a1, int a2)
{
  *a1 = a2;
  *&result = 0x8000000080000000;
  *(a1 + 4) = 0x8000000080000000;
  *(a1 + 12) = 0;
  *(a1 + 14) = -1;
  *(a1 + 17) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

void sub_35F4(uint64_t a1)
{
  *a1 = 0x7FFFFFFF;
  *(a1 + 12) = 0;
  *(a1 + 14) = -1;
  *(a1 + 17) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 4) = 0x8000000080000000;
  operator new();
}

void sub_373C(_Unwind_Exception *a1)
{
  sub_34A8((v1 + 40));
  sub_34FC(v2);
  _Unwind_Resume(a1);
}

void sub_3778(uint64_t a1, int a2)
{
  *a1 = a2;
  *(a1 + 12) = 0;
  *(a1 + 14) = -1;
  *(a1 + 17) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 4) = 0x8000000080000000;
  operator new();
}

void sub_3850(_Unwind_Exception *a1)
{
  sub_34A8((v1 + 40));
  sub_34FC(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_3874(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    sub_25F00(v2);
    operator delete();
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    sub_4E80(v3);
    operator delete();
  }

  return a1;
}

_DWORD *sub_3900(_DWORD *result, int a2)
{
  if (*result != a2)
  {
    *result = a2;
  }

  return result;
}

void sub_3914(uint64_t a1, CFTimeZoneRef *a2)
{
  v4 = *(a1 + 32);
  if (!v4)
  {
    *(a1 + 4) = 0x8000000080000000;
    operator new();
  }

  v5 = nullsub_1(v4);
  if (sub_29CB0(a2, v5))
  {
    sub_4F00(*(a1 + 32), a2);
  }

  *(a1 + 4) = 0x7FFFFFFF;
}

uint64_t sub_39E8(uint64_t a1)
{
  sub_3A20(a1);
  v2 = *(a1 + 32);

  return nullsub_1(v2);
}

uint64_t sub_3A20(uint64_t result)
{
  if (*result != 0x7FFFFFFF)
  {
    v1 = result;
    if (*(result + 8) != *result)
    {
      v2 = *(result + 32);
      if (!v2)
      {
        operator new();
      }

      result = sub_4F68(v2, *v1);
      v1[2] = *v1;
    }
  }

  return result;
}

_DWORD *sub_3B40(_DWORD *result, unsigned __int16 a2)
{
  if (*result != 0x7FFFFFFF)
  {
    v3 = result;
    sub_3A20(result);
    sub_5118(*(v3 + 4), a2);
    result = sub_4FB0(*(v3 + 4));
    *v3 = result;
    v3[2] = result;
  }

  return result;
}

uint64_t sub_3BC0(uint64_t result)
{
  v1 = *result;
  if (*result == 0x7FFFFFFF)
  {
    *(result + 14) = -1;
    *(result + 18) = -1;
    *(result + 12) = 0;
    *(result + 20) = -1;
  }

  else
  {
    v2 = *(result + 4);
    if (v1 != v2)
    {
      if (v2 == 0x7FFFFFFF || (v3 = *(result + 24) + v1 - v2, *(result + 24) = v3, v3 > 0xE0F))
      {
        v4 = result;
        sub_3A20(result);
        *(v4 + 14) = sub_5294(*(v4 + 32));
        *(v4 + 16) = sub_54F8(*(v4 + 32));
        *(v4 + 18) = sub_5754(*(v4 + 32));
        *(v4 + 12) = sub_5DC4(*(v4 + 32));
        *(v4 + 20) = sub_59B0(*(v4 + 32));
        v5 = sub_5C0C(*(v4 + 32));
        result = sub_5CE8(*(v4 + 32));
        *(v4 + 24) = 60 * v5 + result;
        *(v4 + 4) = *v4;
      }

      else
      {
        *(result + 4) = v1;
      }
    }
  }

  return result;
}

_DWORD *sub_3CB4(_DWORD *result, unsigned __int16 a2)
{
  if (*result != 0x7FFFFFFF)
  {
    v3 = result;
    sub_3A20(result);
    sub_5378(*(v3 + 4), a2);
    result = sub_4FB0(*(v3 + 4));
    *v3 = result;
    v3[2] = result;
  }

  return result;
}

uint64_t sub_3D34(uint64_t a1)
{
  v2 = nullsub_1(*(a1 + 32));
  v3 = *a1;

  return sub_29C60(v2, v3);
}

_DWORD *sub_3D70(_DWORD *result, uint64_t a2)
{
  if (*result != 0x7FFFFFFF)
  {
    v2 = result;
    sub_3A20(result);
    sub_6094(*(v2 + 4), a2);
    result = sub_4FB0(*(v2 + 4));
    *v2 = result;
    v2[2] = result;
  }

  return result;
}

_DWORD *sub_3DC8(_DWORD *result, unsigned __int16 a2)
{
  if (*result != 0x7FFFFFFF)
  {
    v3 = result;
    sub_3A20(result);
    sub_55D4(*(v3 + 4), a2);
    result = sub_4FB0(*(v3 + 4));
    *v3 = result;
    v3[2] = result;
  }

  return result;
}

_DWORD *sub_3E48(_DWORD *result, unsigned __int8 a2)
{
  if (*result != 0x7FFFFFFF)
  {
    v3 = result;
    sub_3A20(result);
    sub_5830(*(v3 + 4), a2);
    result = sub_4FB0(*(v3 + 4));
    *v3 = result;
    v3[2] = result;
  }

  return result;
}

_DWORD *sub_3EC8(_DWORD *result, unsigned __int16 a2)
{
  if (*result != 0x7FFFFFFF)
  {
    v3 = result;
    sub_3A20(result);
    sub_5A8C(*(v3 + 4), a2);
    result = sub_4FB0(*(v3 + 4));
    *v3 = result;
    v3[2] = result;
  }

  return result;
}

uint64_t sub_3F20(_DWORD *a1)
{
  if (*a1 == 0x7FFFFFFF)
  {
    return 0xFFFFLL;
  }

  sub_3BC0(a1);
  return (a1[6] / 60);
}

uint64_t sub_3F88(uint64_t a1)
{
  sub_3BC0(a1);
  sub_3BC0(a1);
  v2 = *(a1 + 12);
  sub_3BC0(a1);
  v3 = *(a1 + 20);
  if (*a1 == 0x7FFFFFFF)
  {
    v4 = 2550;
    v5 = 0xFFFF;
  }

  else
  {
    sub_3BC0(a1);
    v5 = (*(a1 + 24) / 60);
    if (*a1 == 0x7FFFFFFF)
    {
      v4 = 2550;
    }

    else
    {
      sub_3BC0(a1);
      v4 = 10 * (*(a1 + 24) % 60);
    }
  }

  v6 = 864000 * v2 + 36000 * v3 + 600 * v5 + v4;
  return v6 - 6048000 * (((2978571183u * v6) >> 32) >> 22);
}

uint64_t sub_40D0(uint64_t a1)
{
  if (*a1 == 0x7FFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  sub_3BC0(a1);
  return 10000 * *(a1 + 14) + 100 * *(a1 + 16) + *(a1 + 18);
}

_DWORD *sub_4130(_DWORD *result, int a2, uint64_t a3)
{
  if (*result != 0x7FFFFFFF)
  {
    v3 = result;
    sub_3A20(result);
    sub_5EA4(*(v3 + 4), a2, a3);
    result = sub_4FB0(*(v3 + 4));
    *v3 = result;
    v3[2] = result;
  }

  return result;
}

CFIndex sub_4198(uint64_t a1)
{
  if (*a1 == 0x7FFFFFFF)
  {
    return 0xFFFFLL;
  }

  sub_3A20(a1);
  v4 = *(a1 + 32);

  return sub_602C(v4);
}

uint64_t sub_41E8(uint64_t a1)
{
  if (*a1 == 0x7FFFFFFF)
  {
    return 0xFFFFLL;
  }

  sub_3BC0(a1);
  return *(a1 + 24) / 60 + 60 * *(a1 + 20);
}

uint64_t sub_4254(int a1, int a2, CFTimeZoneRef *a3)
{
  result = sub_29CA0(a3);
  if (result)
  {

    return sub_6564(a1, a2, a3);
  }

  return result;
}

uint64_t sub_42BC(int a1, int a2, const char *a3)
{
  sub_25BE0(v7, a3);
  if (sub_29CA0(v7))
  {
    v5 = sub_6564(a1, a2, v7);
  }

  else
  {
    v5 = 0;
  }

  sub_25F00(v7);
  return v5;
}

void *sub_433C(void *a1, _DWORD *a2)
{
  if (*a2 != 0x7FFFFFFF)
  {
    sub_3A20(a2);
    sub_4A5C(a1, "{", 1);
    operator new();
  }

  sub_4A5C(a1, "INVALID Calendar", 16);
  return a1;
}

void sub_44F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  _Unwind_Resume(exception_object);
}

void sub_4564(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*a1 == 0x7FFFFFFF)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    sub_3A20(a1);
    v7 = *(a1 + 32);

    sub_6234(v7, a2, a3);
  }
}

void sub_45D0(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_3A20(a1);
  v4 = nullsub_1(*(a1 + 32));

  sub_25F74(v4, a2);
}

_DWORD *sub_4614(_DWORD *result, uint64_t a2)
{
  if (*result != 0x7FFFFFFF)
  {
    v2 = result;
    sub_3A20(result);
    sub_6150(*(v2 + 4), a2);
    result = sub_4FB0(*(v2 + 4));
    *v2 = result;
    v2[2] = result;
  }

  return result;
}

BOOL sub_466C(uint64_t a1, uint64_t a2)
{
  sub_3A20(a1);
  sub_3A20(a2);
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);

  return sub_620C(v4, v5);
}

BOOL sub_46B4(uint64_t a1, uint64_t a2)
{
  sub_3A20(a1);
  sub_3A20(a2);
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);

  return sub_6220(v4, v5);
}

_DWORD *sub_4724(_DWORD *result, int *a2)
{
  if (*a2 < 0)
  {
    v2 = -5;
  }

  else
  {
    v2 = 5;
  }

  *result += *a2 / 10 + (((103 * (v2 + *a2 % 10)) >> 15) & 1) + ((103 * (v2 + *a2 % 10)) >> 10);
  return result;
}

uint64_t sub_4784@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0x8000000080000000;
  *(a3 + 8) = 0x7FFFFFFF;
  *(a3 + 12) = 0;
  *(a3 + 14) = -1;
  *(a3 + 17) = -1;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  result = sub_3344(a3, a1);
  if (*a2 < 0)
  {
    v6 = -5;
  }

  else
  {
    v6 = 5;
  }

  *a3 += *a2 / 10 + (((103 * (v6 + *a2 % 10)) >> 15) & 1) + ((103 * (v6 + *a2 % 10)) >> 10);
  return result;
}

void sub_4848(_Unwind_Exception *a1)
{
  sub_34A8((v1 + 40));
  sub_34FC(v2);
  _Unwind_Resume(a1);
}

_DWORD *sub_4864(_DWORD *result, int *a2)
{
  if (*a2 < 0)
  {
    v2 = -5;
  }

  else
  {
    v2 = 5;
  }

  *result += *a2 / -10 + (((-103 * (v2 + *a2 % 10)) >> 15) & 1) + ((-103 * (v2 + *a2 % 10)) >> 10);
  return result;
}

uint64_t sub_48DC@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0x8000000080000000;
  *(a3 + 8) = 0x7FFFFFFF;
  *(a3 + 12) = 0;
  *(a3 + 14) = -1;
  *(a3 + 17) = -1;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  result = sub_3344(a3, a1);
  if (*a2 < 0)
  {
    v6 = -5;
  }

  else
  {
    v6 = 5;
  }

  *a3 += *a2 / -10 + (((-103 * (v6 + *a2 % 10)) >> 15) & 1) + ((-103 * (v6 + *a2 % 10)) >> 10);
  return result;
}

void sub_49B8(_Unwind_Exception *a1)
{
  sub_34A8((v1 + 40));
  sub_34FC(v2);
  _Unwind_Resume(a1);
}

void sub_49EC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_195A2D8(exception, a1);
}

void *sub_4A5C(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v14 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, &std::ctype<char>::id);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!sub_4C08(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_4BA0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x4B80);
}

uint64_t sub_4C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v19 < 0)
      {
        v15 = v14;
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_4DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4E00(uint64_t a1, uint64_t a2)
{
  sub_25EBC(a1, a2);
  v3 = CFCalendarCreateWithIdentifier(0, kCFGregorianCalendar);
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = -1;
  *(a1 + 35) = -1;
  *(a1 + 39) = -256;
  *(a1 + 42) = -1;
  *(a1 + 44) = -1;
  CFCalendarSetTimeZone(v3, *a1);
  return a1;
}

const void **sub_4E80(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  return sub_25F00(a1);
}

uint64_t sub_4EC4(uint64_t result)
{
  if (*(result + 24) != 0.0)
  {
    *(result + 24) = 0;
    *(result + 32) = -1;
    *(result + 35) = -1;
    *(result + 39) = -256;
    *(result + 42) = -1;
    *(result + 44) = -1;
  }

  return result;
}

void sub_4F00(uint64_t a1, CFTimeZoneRef *a2)
{
  if (sub_29CB0(a1, a2))
  {
    sub_25F34(a1, a2);
    CFCalendarSetTimeZone(*(a1 + 16), *a1);
    *(a1 + 35) = -1;
    *(a1 + 32) = -1;
    *(a1 + 39) = -256;
    *(a1 + 42) = -1;
    *(a1 + 44) = -1;
  }
}

uint64_t sub_4F68(uint64_t result, int a2)
{
  v2 = a2 + -978307200.0;
  if (*(result + 24) != v2)
  {
    *(result + 24) = v2;
    *(result + 32) = -1;
    *(result + 35) = -1;
    *(result + 39) = -256;
    *(result + 42) = -1;
    *(result + 44) = -1;
  }

  return result;
}

uint64_t sub_4FC8(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, unsigned __int16 a4, unsigned __int8 a5, unsigned __int16 a6, unsigned __int8 a7)
{
  at = 0.0;
  result = CFCalendarComposeAbsoluteTime(*(a1 + 16), &at, "yMdHms", a2, a3, a4, a5, a6, a7);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(exception, "Failure in set", 0xEuLL);
  }

  if (*(a1 + 24) != at)
  {
    *(a1 + 24) = at;
    *(a1 + 32) = -1;
    *(a1 + 35) = -1;
    *(a1 + 39) = -256;
    *(a1 + 42) = -1;
    *(a1 + 44) = -1;
  }

  return result;
}

void sub_509C(std::exception *this)
{
  if (SHIBYTE(this[6].__vftable) < 0)
  {
    operator delete(this[4].__vftable);
    if ((SHIBYTE(this[3].__vftable) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else if ((SHIBYTE(this[3].__vftable) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[1].__vftable);
  v2 = this;

LABEL_5:
  std::exception::~exception(v2);
}

uint64_t sub_5118(uint64_t a1, unsigned __int16 a2)
{
  v3 = (a1 + 32);
  if (*(a1 + 32) == -1)
  {
    v4 = a2;
    v15 = 0;
    if (!CFCalendarDecomposeAbsoluteTime(*(a1 + 16), *(a1 + 24), "yMdWEHms", v3, a1 + 34, a1 + 36, a1 + 38, &v15, a1 + 40, a1 + 42, a1 + 44))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v14 = sub_2D390(exception, "Failure in CFCalendarDecomposeAbsoluteTime", 0x2AuLL);
    }

    *(a1 + 39) = v15 - 1;
    a2 = v4;
  }

  v5 = *(a1 + 34);
  v6 = *(a1 + 36);
  v7 = *(a1 + 40);
  v8 = *(a1 + 42);
  v9 = *(a1 + 44);
  at = 0.0;
  result = CFCalendarComposeAbsoluteTime(*(a1 + 16), &at, "yMdHms", a2, v5, v6, v7, v8, v9);
  if (!result)
  {
    v11 = __cxa_allocate_exception(0x40uLL);
    v12 = sub_2D390(v11, "Failure in set", 0xEuLL);
  }

  if (*(a1 + 24) != at)
  {
    *(a1 + 24) = at;
    *v3 = -1;
    *(v3 + 3) = -1;
    *(a1 + 39) = -256;
    *(a1 + 42) = -1;
    *(a1 + 44) = -1;
  }

  return result;
}

uint64_t sub_5294(uint64_t a1)
{
  if (*(a1 + 32) != 0xFFFF)
  {
    return *(a1 + 32);
  }

  v5 = 0;
  if (!CFCalendarDecomposeAbsoluteTime(*(a1 + 16), *(a1 + 24), "yMdWEHms", a1 + 32, a1 + 34, a1 + 36, a1 + 38, &v5, a1 + 40, a1 + 42, a1 + 44))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = sub_2D390(exception, "Failure in CFCalendarDecomposeAbsoluteTime", 0x2AuLL);
  }

  *(a1 + 39) = v5 - 1;
  return *(a1 + 32);
}

uint64_t sub_5378(uint64_t a1, unsigned __int16 a2)
{
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  if (v3 == 0xFFFF)
  {
    v5 = a2;
    v15 = 0;
    if (!CFCalendarDecomposeAbsoluteTime(*(a1 + 16), *(a1 + 24), "yMdWEHms", v4, a1 + 34, a1 + 36, a1 + 38, &v15, a1 + 40, a1 + 42, a1 + 44))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v14 = sub_2D390(exception, "Failure in CFCalendarDecomposeAbsoluteTime", 0x2AuLL);
    }

    *(a1 + 39) = v15 - 1;
    v3 = *(a1 + 32);
    a2 = v5;
  }

  v6 = *(a1 + 36);
  v7 = *(a1 + 40);
  v8 = *(a1 + 42);
  v9 = *(a1 + 44);
  at = 0.0;
  result = CFCalendarComposeAbsoluteTime(*(a1 + 16), &at, "yMdHms", v3, a2, v6, v7, v8, v9);
  if (!result)
  {
    v11 = __cxa_allocate_exception(0x40uLL);
    v12 = sub_2D390(v11, "Failure in set", 0xEuLL);
  }

  if (*(a1 + 24) != at)
  {
    *(a1 + 24) = at;
    *v4 = -1;
    *(v4 + 3) = -1;
    *(a1 + 39) = -256;
    *(a1 + 42) = -1;
    *(a1 + 44) = -1;
  }

  return result;
}

uint64_t sub_54F8(uint64_t a1)
{
  if (*(a1 + 32) != -1)
  {
    return *(a1 + 34);
  }

  v5 = 0;
  if (!CFCalendarDecomposeAbsoluteTime(*(a1 + 16), *(a1 + 24), "yMdWEHms", a1 + 32, a1 + 34, a1 + 36, a1 + 38, &v5, a1 + 40, a1 + 42, a1 + 44))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = sub_2D390(exception, "Failure in CFCalendarDecomposeAbsoluteTime", 0x2AuLL);
  }

  *(a1 + 39) = v5 - 1;
  return *(a1 + 34);
}

uint64_t sub_55D4(uint64_t a1, unsigned __int16 a2)
{
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  if (v3 == 0xFFFF)
  {
    v5 = a2;
    v15 = 0;
    if (!CFCalendarDecomposeAbsoluteTime(*(a1 + 16), *(a1 + 24), "yMdWEHms", v4, a1 + 34, a1 + 36, a1 + 38, &v15, a1 + 40, a1 + 42, a1 + 44))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v14 = sub_2D390(exception, "Failure in CFCalendarDecomposeAbsoluteTime", 0x2AuLL);
    }

    *(a1 + 39) = v15 - 1;
    v3 = *(a1 + 32);
    a2 = v5;
  }

  v6 = *(a1 + 34);
  v7 = *(a1 + 40);
  v8 = *(a1 + 42);
  v9 = *(a1 + 44);
  at = 0.0;
  result = CFCalendarComposeAbsoluteTime(*(a1 + 16), &at, "yMdHms", v3, v6, a2, v7, v8, v9);
  if (!result)
  {
    v11 = __cxa_allocate_exception(0x40uLL);
    v12 = sub_2D390(v11, "Failure in set", 0xEuLL);
  }

  if (*(a1 + 24) != at)
  {
    *(a1 + 24) = at;
    *v4 = -1;
    *(v4 + 3) = -1;
    *(a1 + 39) = -256;
    *(a1 + 42) = -1;
    *(a1 + 44) = -1;
  }

  return result;
}

uint64_t sub_5754(uint64_t a1)
{
  if (*(a1 + 32) != -1)
  {
    return *(a1 + 36);
  }

  v5 = 0;
  if (!CFCalendarDecomposeAbsoluteTime(*(a1 + 16), *(a1 + 24), "yMdWEHms", a1 + 32, a1 + 34, a1 + 36, a1 + 38, &v5, a1 + 40, a1 + 42, a1 + 44))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = sub_2D390(exception, "Failure in CFCalendarDecomposeAbsoluteTime", 0x2AuLL);
  }

  *(a1 + 39) = v5 - 1;
  return *(a1 + 36);
}

uint64_t sub_5830(uint64_t a1, unsigned __int8 a2)
{
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  if (v3 == 0xFFFF)
  {
    v5 = a2;
    v15 = 0;
    if (!CFCalendarDecomposeAbsoluteTime(*(a1 + 16), *(a1 + 24), "yMdWEHms", v4, a1 + 34, a1 + 36, a1 + 38, &v15, a1 + 40, a1 + 42, a1 + 44))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v14 = sub_2D390(exception, "Failure in CFCalendarDecomposeAbsoluteTime", 0x2AuLL);
    }

    *(a1 + 39) = v15 - 1;
    v3 = *(a1 + 32);
    a2 = v5;
  }

  v6 = *(a1 + 34);
  v7 = *(a1 + 36);
  v8 = *(a1 + 42);
  v9 = *(a1 + 44);
  at = 0.0;
  result = CFCalendarComposeAbsoluteTime(*(a1 + 16), &at, "yMdHms", v3, v6, v7, a2, v8, v9);
  if (!result)
  {
    v11 = __cxa_allocate_exception(0x40uLL);
    v12 = sub_2D390(v11, "Failure in set", 0xEuLL);
  }

  if (*(a1 + 24) != at)
  {
    *(a1 + 24) = at;
    *v4 = -1;
    *(v4 + 3) = -1;
    *(a1 + 39) = -256;
    *(a1 + 42) = -1;
    *(a1 + 44) = -1;
  }

  return result;
}

uint64_t sub_59B0(uint64_t a1)
{
  if (*(a1 + 32) != -1)
  {
    return *(a1 + 40);
  }

  v5 = 0;
  if (!CFCalendarDecomposeAbsoluteTime(*(a1 + 16), *(a1 + 24), "yMdWEHms", a1 + 32, a1 + 34, a1 + 36, a1 + 38, &v5, a1 + 40, a1 + 42, a1 + 44))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = sub_2D390(exception, "Failure in CFCalendarDecomposeAbsoluteTime", 0x2AuLL);
  }

  *(a1 + 39) = v5 - 1;
  return *(a1 + 40);
}

uint64_t sub_5A8C(uint64_t a1, unsigned __int16 a2)
{
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  if (v3 == 0xFFFF)
  {
    v5 = a2;
    v15 = 0;
    if (!CFCalendarDecomposeAbsoluteTime(*(a1 + 16), *(a1 + 24), "yMdWEHms", v4, a1 + 34, a1 + 36, a1 + 38, &v15, a1 + 40, a1 + 42, a1 + 44))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v14 = sub_2D390(exception, "Failure in CFCalendarDecomposeAbsoluteTime", 0x2AuLL);
    }

    *(a1 + 39) = v15 - 1;
    v3 = *(a1 + 32);
    a2 = v5;
  }

  v6 = *(a1 + 34);
  v7 = *(a1 + 36);
  v8 = *(a1 + 40);
  v9 = *(a1 + 44);
  at = 0.0;
  result = CFCalendarComposeAbsoluteTime(*(a1 + 16), &at, "yMdHms", v3, v6, v7, v8, a2, v9);
  if (!result)
  {
    v11 = __cxa_allocate_exception(0x40uLL);
    v12 = sub_2D390(v11, "Failure in set", 0xEuLL);
  }

  if (*(a1 + 24) != at)
  {
    *(a1 + 24) = at;
    *v4 = -1;
    *(v4 + 3) = -1;
    *(a1 + 39) = -256;
    *(a1 + 42) = -1;
    *(a1 + 44) = -1;
  }

  return result;
}

uint64_t sub_5C0C(uint64_t a1)
{
  if (*(a1 + 32) != -1)
  {
    return *(a1 + 42);
  }

  v5 = 0;
  if (!CFCalendarDecomposeAbsoluteTime(*(a1 + 16), *(a1 + 24), "yMdWEHms", a1 + 32, a1 + 34, a1 + 36, a1 + 38, &v5, a1 + 40, a1 + 42, a1 + 44))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = sub_2D390(exception, "Failure in CFCalendarDecomposeAbsoluteTime", 0x2AuLL);
  }

  *(a1 + 39) = v5 - 1;
  return *(a1 + 42);
}

uint64_t sub_5CE8(uint64_t a1)
{
  if (*(a1 + 32) != -1)
  {
    return *(a1 + 44);
  }

  v5 = 0;
  if (!CFCalendarDecomposeAbsoluteTime(*(a1 + 16), *(a1 + 24), "yMdWEHms", a1 + 32, a1 + 34, a1 + 36, a1 + 38, &v5, a1 + 40, a1 + 42, a1 + 44))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v4 = sub_2D390(exception, "Failure in CFCalendarDecomposeAbsoluteTime", 0x2AuLL);
  }

  *(a1 + 39) = v5 - 1;
  return *(a1 + 44);
}

uint64_t sub_5DC4(uint64_t a1)
{
  if (*(a1 + 32) != -1)
  {
    return *(a1 + 39);
  }

  v6 = 0;
  if (!CFCalendarDecomposeAbsoluteTime(*(a1 + 16), *(a1 + 24), "yMdWEHms", a1 + 32, a1 + 34, a1 + 36, a1 + 38, &v6, a1 + 40, a1 + 42, a1 + 44))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = sub_2D390(exception, "Failure in CFCalendarDecomposeAbsoluteTime", 0x2AuLL);
  }

  v3 = v6 - 1;
  *(a1 + 39) = v6 - 1;
  return v3;
}

uint64_t sub_5EA4(uint64_t a1, int a2, uint64_t a3)
{
  v6 = (a1 + 32);
  v5 = *(a1 + 32);
  if (v5 == 0xFFFF)
  {
    v7 = a2;
    v14 = 0;
    if (!CFCalendarDecomposeAbsoluteTime(*(a1 + 16), *(a1 + 24), "yMdWEHms", v6, a1 + 34, a1 + 36, a1 + 38, &v14, a1 + 40, a1 + 42, a1 + 44))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = sub_2D390(exception, "Failure in CFCalendarDecomposeAbsoluteTime", 0x2AuLL);
    }

    *(a1 + 39) = v14 - 1;
    v5 = *(a1 + 32);
    a2 = v7;
  }

  at = 0.0;
  result = CFCalendarComposeAbsoluteTime(*(a1 + 16), &at, "yMEFHms", v5, *(a1 + 34), (a2 + 1), a3, *(a1 + 40), *(a1 + 42), *(a1 + 44));
  if (!result)
  {
    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Failure in set_day_of_week_in_month", 0x23uLL);
  }

  if (*(a1 + 24) != at)
  {
    *(a1 + 24) = at;
    *v6 = -1;
    *(v6 + 3) = -1;
    *(a1 + 39) = -256;
    *(a1 + 42) = -1;
    *(a1 + 44) = -1;
  }

  return result;
}

CFIndex sub_602C(uint64_t a1)
{
  result = CFCalendarGetOrdinalityOfUnit(*(a1 + 16), 0x10uLL, 4uLL, *(a1 + 24));
  if (result == -1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v3 = sub_2D390(exception, "Failure in CFCalendarGetOrdinalityOfUnit", 0x28uLL);
  }

  return result;
}

uint64_t sub_6094(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  at = *(a1 + 24);
  result = CFCalendarAddComponents(v3, &at, 0, "M", a2);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v6 = sub_2D390(exception, "Failure in CFCalendarAddComponents", 0x22uLL);
  }

  if (*(a1 + 24) != at)
  {
    *(a1 + 24) = at;
    *(a1 + 32) = -1;
    *(a1 + 35) = -1;
    *(a1 + 39) = -256;
    *(a1 + 42) = -1;
    *(a1 + 44) = -1;
  }

  return result;
}

uint64_t sub_6150(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  at = *(a1 + 24);
  result = CFCalendarAddComponents(v3, &at, 0, "d", a2);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v6 = sub_2D390(exception, "Failure in CFCalendarAddComponents", 0x22uLL);
  }

  if (*(a1 + 24) != at)
  {
    *(a1 + 24) = at;
    *(a1 + 32) = -1;
    *(a1 + 35) = -1;
    *(a1 + 39) = -256;
    *(a1 + 42) = -1;
    *(a1 + 44) = -1;
  }

  return result;
}

void sub_6234(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = CFDateFormatterCreate(0, 0, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = CFStringCreateWithCString(0, v7, 0x8000100u);
  CFDateFormatterSetFormat(v6, v8);
  CFRelease(v8);
  v9 = CFCalendarCopyTimeZone(*(a1 + 16));
  CFDateFormatterSetProperty(v6, kCFDateFormatterTimeZone, v9);
  CFRelease(v9);
  StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(0, v6, *(a1 + 24));
  CFRelease(v6);
  if (StringWithAbsoluteTime)
  {
    sub_6348(StringWithAbsoluteTime, a3);
    CFRelease(StringWithAbsoluteTime);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_632C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_6348(const __CFString *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
    if (CStringPtr)
    {
      v5 = CStringPtr;
      v6 = strlen(CStringPtr);
      if (v6 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      v7 = v6;
      if (v6 >= 0x17)
      {
        operator new();
      }

      *(a2 + 23) = v6;
      if (v6)
      {
        memmove(a2, v5, v6);
      }

      *(a2 + v7) = 0;
    }

    else
    {
      Length = CFStringGetLength(a1);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      if (MaximumSizeForEncoding != -1)
      {
        if (MaximumSizeForEncoding > -2)
        {
          operator new();
        }

        sub_1794();
      }

      if (CFStringGetCString(a1, 0, 0, 0x8000100u))
      {
        v11 = strlen(0);
        if (v11 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        v12 = v11;
        if (v11 >= 0x17)
        {
          operator new();
        }

        *(a2 + 23) = v11;
        if (v11)
        {
          memcpy(a2, 0, v11);
        }

        *(a2 + v12) = 0;
      }

      else
      {
        *a2 = 0;
        a2[1] = 0;
        a2[2] = 0;
      }
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_654C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_6564(int a1, int a2, CFTimeZoneRef *a3)
{
  v6 = CFCalendarCreateWithIdentifier(0, kCFGregorianCalendar);
  CFCalendarSetTimeZone(v6, *a3);
  v14 = 0.0;
  startp = 0.0;
  if (!CFCalendarGetTimeRangeOfUnit(v6, 0x10uLL, a1 + -978307200.0, &startp, 0) || !CFCalendarGetTimeRangeOfUnit(v6, 0x10uLL, a2 + -978307200.0, &v14, 0))
  {
    CFRelease(v6);
    exception = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(exception, "Failure in CFCalendarGetTimeRangeOfUnit", 0x27uLL);
  }

  v13 = 0;
  ComponentDifference = CFCalendarGetComponentDifference(v6, startp, v14, 0, "d", &v13);
  CFRelease(v6);
  if (!ComponentDifference)
  {
    v11 = __cxa_allocate_exception(0x40uLL);
    v12 = sub_2D390(v11, "Failure in CFCalendarGetComponentDifference", 0x2BuLL);
  }

  return v13;
}

_DWORD *sub_66B8@<X0>(_DWORD *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = result[24];
  if ((v3 & 0x10) != 0)
  {
    v4 = *(result + 11);
    v5 = *(result + 6);
    if (v4 < v5)
    {
      *(result + 11) = v5;
      v4 = v5;
    }

    v6 = *(result + 5);
    v7 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if ((v3 & 8) == 0)
    {
      a2[23] = 0;
LABEL_4:
      *a2 = 0;
      return result;
    }

    v6 = *(result + 2);
    v7 = *(result + 4) - v6;
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_14:
      sub_3244();
    }
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  a2[23] = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  result = memmove(a2, v6, v7);
  a2[v7] = 0;
  return result;
}

void sub_67B8(void *a1@<X8>)
{
  sub_6B24(v2, 2);
  strcpy(v4, "Australia Day");
  v5 = 13;
  v6 = xmmword_2263940;
  v7 = 0;
  v8 = 0;
  sub_6BF0();
  if (byte_278EA87 < 0)
  {
    sub_325C(&v9, xmmword_278EA70, *(&xmmword_278EA70 + 1));
  }

  else
  {
    v9 = xmmword_278EA70;
    v10 = unk_278EA80;
  }

  v11 = xmmword_278EA88;
  v12 = qword_278EA98;
  sub_6D14();
  if (byte_278EAB7 < 0)
  {
    sub_325C(&v13, xmmword_278EAA0, *(&xmmword_278EAA0 + 1));
  }

  else
  {
    v13 = xmmword_278EAA0;
    v14 = unk_278EAB0;
  }

  v15 = xmmword_278EAB8;
  v16 = qword_278EAC8;
  strcpy(v17, "ANZAC Day");
  v18 = 9;
  v19 = xmmword_2263950;
  v20 = 0;
  v21 = 0;
  sub_6E38(&v22, 5);
  sub_6F0C(&__p, 5);
  sub_A334(a1, v2, 7uLL);
  if (v25 < 0)
  {
    operator delete(__p);
    if ((v23 & 0x80000000) == 0)
    {
LABEL_9:
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v22);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v17[0]);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(v13);
  if ((SHIBYTE(v10) & 0x80000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v9);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_13:
    if ((v3 & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v2[0]);
    return;
  }

LABEL_20:
  operator delete(v4[0]);
  if (v3 < 0)
  {
    goto LABEL_21;
  }
}

void sub_6A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a69 < 0)
  {
    operator delete(__p);
    if ((a60 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a51 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a60 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a55);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a42 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a46);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a37);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a28);
  if ((a24 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a15 & 0x80000000) == 0)
    {
LABEL_16:
      _Unwind_Resume(a1);
    }

LABEL_15:
    operator delete(a10);
    _Unwind_Resume(a1);
  }

LABEL_14:
  operator delete(a19);
  if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_6AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  while (1)
  {
    v11 = *(v10 - 25);
    v10 -= 6;
    if (v11 < 0)
    {
      operator delete(*v10);
    }

    if (v10 == &a10)
    {
      JUMPOUT(0x6AECLL);
    }
  }
}

void sub_6B24(uint64_t a1, int a2)
{
  sub_3608D0(__p, "New Year");
  if (SHIBYTE(v6) < 0)
  {
    sub_325C(a1, __p[0], __p[1]);
    v4 = SHIBYTE(v6);
    *(a1 + 24) = a2;
    *(a1 + 28) = 0x100000001;
    *(a1 + 36) = 0;
    *(a1 + 40) = 0;
    *(a1 + 44) = 0;
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a1 = *__p;
    *(a1 + 16) = v6;
    *(a1 + 24) = a2;
    *(a1 + 28) = 0x100000001;
    *(a1 + 36) = 0;
    *(a1 + 40) = 0;
    *(a1 + 44) = 0;
  }
}

void sub_6BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6BF0()
{
  if ((atomic_load_explicit(&qword_278EA38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_278EA38))
  {
    sub_3608D0(__p, "Good Friday");
    if (SHIBYTE(v1) < 0)
    {
      sub_325C(&xmmword_278EA70, __p[0], __p[1]);
      xmmword_278EA88 = xmmword_2263960;
      LOBYTE(qword_278EA98) = 0;
      HIDWORD(qword_278EA98) = 0;
      if (SHIBYTE(v1) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      xmmword_278EA70 = *__p;
      unk_278EA80 = v1;
      xmmword_278EA88 = xmmword_2263960;
      LOBYTE(qword_278EA98) = 0;
      HIDWORD(qword_278EA98) = 0;
    }

    __cxa_guard_release(&qword_278EA38);
  }
}

void sub_6CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    __cxa_guard_abort(&qword_278EA38);
    _Unwind_Resume(a1);
  }

  __cxa_guard_abort(&qword_278EA38);
  _Unwind_Resume(a1);
}

void sub_6D14()
{
  if ((atomic_load_explicit(&qword_278EA40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_278EA40))
  {
    sub_3608D0(__p, "Easter Monday");
    if (SHIBYTE(v1) < 0)
    {
      sub_325C(&xmmword_278EAA0, __p[0], __p[1]);
      xmmword_278EAB8 = xmmword_2263970;
      LOBYTE(qword_278EAC8) = 0;
      HIDWORD(qword_278EAC8) = 0;
      if (SHIBYTE(v1) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      xmmword_278EAA0 = *__p;
      unk_278EAB0 = v1;
      xmmword_278EAB8 = xmmword_2263970;
      LOBYTE(qword_278EAC8) = 0;
      HIDWORD(qword_278EAC8) = 0;
    }

    __cxa_guard_release(&qword_278EA40);
  }
}

void sub_6DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    __cxa_guard_abort(&qword_278EA40);
    _Unwind_Resume(a1);
  }

  __cxa_guard_abort(&qword_278EA40);
  _Unwind_Resume(a1);
}

void sub_6E38(uint64_t a1, int a2)
{
  sub_3608D0(__p, "Christmas day");
  if (SHIBYTE(v6) < 0)
  {
    sub_325C(a1, __p[0], __p[1]);
    v4 = SHIBYTE(v6);
    *(a1 + 24) = a2;
    *(a1 + 28) = 0x190000000CLL;
    *(a1 + 36) = 0;
    *(a1 + 40) = 0;
    *(a1 + 44) = 0;
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a1 = *__p;
    *(a1 + 16) = v6;
    *(a1 + 24) = a2;
    *(a1 + 28) = 0x190000000CLL;
    *(a1 + 36) = 0;
    *(a1 + 40) = 0;
    *(a1 + 44) = 0;
  }
}

void sub_6EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6F0C(uint64_t a1, int a2)
{
  sub_3608D0(__p, "Christmas day");
  if (SHIBYTE(v6) < 0)
  {
    sub_325C(a1, __p[0], __p[1]);
    v4 = SHIBYTE(v6);
    *(a1 + 24) = a2;
    *(a1 + 28) = 0x1A0000000CLL;
    *(a1 + 36) = 0;
    *(a1 + 40) = 0;
    *(a1 + 44) = 0;
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a1 = *__p;
    *(a1 + 16) = v6;
    *(a1 + 24) = a2;
    *(a1 + 28) = 0x1A0000000CLL;
    *(a1 + 36) = 0;
    *(a1 + 40) = 0;
    *(a1 + 44) = 0;
  }
}

void sub_6FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_6FE0(void *a1@<X8>)
{
  sub_6B24(v2, 4);
  strcpy(v4, "Martin L King Day");
  HIBYTE(v4[2]) = 17;
  v4[3] = 0x100000000;
  v5 = 0;
  v6 = 0x100000003;
  v7 = 0;
  strcpy(v8, "Presidents' Day");
  v9 = 15;
  v10 = 0x200000000;
  v12 = 0x100000003;
  v11 = 0;
  v13 = 0;
  strcpy(v14, "Memorial Day");
  v15 = 12;
  v16 = 0x500000000;
  v18 = 0x1FFFFFFFFLL;
  v17 = 0;
  v19 = 0;
  strcpy(v20, "Juneteenth");
  v21 = 10;
  v22 = xmmword_2263980;
  v23 = 0;
  v24 = 0;
  strcpy(v25, "Independence Day");
  HIBYTE(v25[2]) = 16;
  v26 = xmmword_2263990;
  v27 = 0;
  v28 = 0;
  strcpy(v29, "Labor Day");
  v30 = 9;
  v31 = 0x900000000;
  v32 = 0;
  v33 = 0x100000001;
  v34 = 0;
  strcpy(v35, "Veterans Day");
  v36 = 12;
  v37 = xmmword_22639A0;
  v38 = 0;
  v39 = 0;
  strcpy(v40, "Thanksgiving");
  v41 = 12;
  v42 = 0xB00000000;
  v43 = 0;
  v44 = 0x400000004;
  v45 = 0;
  strcpy(v46, "Day After Thanksgiving");
  HIBYTE(v46[2]) = 22;
  v46[3] = 0xB00000000;
  v47 = 0;
  v48 = 0x400000004;
  v49 = 1;
  sub_6E38(&__p, 4);
  sub_A334(a1, v2, 0xBuLL);
  if (v51 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v46[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((v41 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v46[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v46[0]);
  if ((v41 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v40[0]);
  if ((v36 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v30 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(v35[0]);
  if ((v30 & 0x80000000) == 0)
  {
LABEL_6:
    if ((SHIBYTE(v25[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v29[0]);
  if ((SHIBYTE(v25[2]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(v25[0]);
  if ((v21 & 0x80000000) == 0)
  {
LABEL_8:
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v20[0]);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_9:
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(v14[0]);
  if ((v9 & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v4[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v8[0]);
  if ((SHIBYTE(v4[2]) & 0x80000000) == 0)
  {
LABEL_11:
    if ((v3 & 0x80000000) == 0)
    {
      return;
    }

LABEL_23:
    operator delete(v2[0]);
    return;
  }

LABEL_22:
  operator delete(v4[0]);
  if (v3 < 0)
  {
    goto LABEL_23;
  }
}

void sub_73D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(__p);
    if ((a77 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a75 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((a77 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a76);
  if ((a75 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a73 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a74);
  if ((a73 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a71 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a72);
  if ((a71 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a62 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a66);
  if ((a62 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a53 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a57);
  if ((a53 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a48);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a35 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a39);
  if ((a35 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(a30);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a17 & 0x80000000) == 0)
    {
LABEL_24:
      _Unwind_Resume(a1);
    }

LABEL_23:
    operator delete(a12);
    _Unwind_Resume(a1);
  }

LABEL_22:
  operator delete(a21);
  if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  goto LABEL_23;
}

void sub_7524(void *a1@<X8>)
{
  sub_6B24(v2, 2);
  sub_6BF0();
  if (byte_278EA87 < 0)
  {
    sub_325C(&v4, xmmword_278EA70, *(&xmmword_278EA70 + 1));
  }

  else
  {
    v4 = xmmword_278EA70;
    v5 = unk_278EA80;
  }

  v6 = xmmword_278EA88;
  v7 = qword_278EA98;
  sub_6D14();
  if (byte_278EAB7 < 0)
  {
    sub_325C(&v8, xmmword_278EAA0, *(&xmmword_278EAA0 + 1));
  }

  else
  {
    v8 = xmmword_278EAA0;
    v9 = unk_278EAB0;
  }

  v10 = xmmword_278EAB8;
  v11 = qword_278EAC8;
  v12 = 0x7961442079614DLL;
  v13 = 7;
  v14 = 0x500000000;
  v16 = 0x100000001;
  v15 = 0;
  v17 = 0;
  strcpy(v18, "Spring Bank Holiday");
  HIBYTE(v18[2]) = 19;
  v18[3] = 0x500000000;
  v20 = 0x1FFFFFFFFLL;
  v19 = 0;
  v21 = 0;
  strcpy(v22, "Summer Bank Holiday");
  HIBYTE(v22[2]) = 19;
  v22[3] = 0x800000000;
  v23 = 0;
  v24 = 0x1FFFFFFFFLL;
  v25 = 0;
  sub_6E38(&v26, 5);
  sub_6F0C(&__p, 5);
  sub_A334(a1, v2, 8uLL);
  if (v29 < 0)
  {
    operator delete(__p);
    if ((v27 & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v22[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if ((v27 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v26);
  if ((SHIBYTE(v22[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(v22[0]);
  if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
  {
LABEL_11:
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v18[0]);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_12:
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(v12);
  if ((SHIBYTE(v9) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v5) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v8);
  if ((SHIBYTE(v5) & 0x80000000) == 0)
  {
LABEL_14:
    if ((v3 & 0x80000000) == 0)
    {
      return;
    }

LABEL_23:
    operator delete(v2[0]);
    return;
  }

LABEL_22:
  operator delete(v4);
  if (v3 < 0)
  {
    goto LABEL_23;
  }
}

void sub_77FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a73 < 0)
  {
    operator delete(a72);
    if ((a69 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a60 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a69 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a64);
  if ((a60 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a55);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a42 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a46);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a37);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a28);
  if ((a24 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  operator delete(a19);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_10:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(__p);
  goto LABEL_10;
}

void sub_7914(void *a1@<X8>)
{
  sub_6B24(v2, 2);
  sub_6BF0();
  if (byte_278EA87 < 0)
  {
    sub_325C(&v4, xmmword_278EA70, *(&xmmword_278EA70 + 1));
  }

  else
  {
    v4 = xmmword_278EA70;
    v5 = unk_278EA80;
  }

  v6 = xmmword_278EA88;
  v7 = qword_278EA98;
  strcpy(v8, "Canada Day");
  v9 = 10;
  v10 = xmmword_22639B0;
  v11 = 0;
  v12 = 0;
  strcpy(v13, "Labour Day");
  v14 = 10;
  v15 = 0x900000000;
  v17 = 0x100000001;
  v16 = 0;
  v18 = 0;
  strcpy(v19, "Thanksgiving");
  v20 = 12;
  v21 = 0xA00000000;
  v23 = 0x100000002;
  v22 = 0;
  v24 = 0;
  sub_6E38(&__p, 2);
  sub_A334(a1, v2, 6uLL);
  if (v26 < 0)
  {
    operator delete(__p);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_6:
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v19[0]);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v13[0]);
  if ((v9 & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(v5) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(v8[0]);
  if ((SHIBYTE(v5) & 0x80000000) == 0)
  {
LABEL_9:
    if ((v3 & 0x80000000) == 0)
    {
      return;
    }

LABEL_16:
    operator delete(v2[0]);
    return;
  }

LABEL_15:
  operator delete(v4);
  if (v3 < 0)
  {
    goto LABEL_16;
  }
}

void sub_7B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a60 < 0)
  {
    operator delete(a55);
    if ((a51 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a42 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a51 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a46);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a37);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a28);
  if ((a24 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  operator delete(a19);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_8:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_8;
}

void sub_7C3C(void *a1@<X8>)
{
  sub_6B24(v2, 0);
  sub_6BF0();
  if (byte_278EA87 < 0)
  {
    sub_325C(&v4, xmmword_278EA70, *(&xmmword_278EA70 + 1));
  }

  else
  {
    v4 = xmmword_278EA70;
    v5 = unk_278EA80;
  }

  v6 = xmmword_278EA88;
  v7 = qword_278EA98;
  sub_6D14();
  if (byte_278EAB7 < 0)
  {
    sub_325C(&v8, xmmword_278EAA0, *(&xmmword_278EAA0 + 1));
  }

  else
  {
    v8 = xmmword_278EAA0;
    v9 = unk_278EAB0;
  }

  v10 = xmmword_278EAB8;
  v11 = qword_278EAC8;
  strcpy(v12, "Ascension Day");
  v13 = 13;
  v14 = xmmword_22639C0;
  v15 = 0;
  v16 = 0;
  strcpy(v17, "Whit Monday");
  v18 = 11;
  v19 = xmmword_22639D0;
  v20 = 0;
  v21 = 0;
  strcpy(v22, "Labour Day");
  v23 = 10;
  v24 = xmmword_22639E0;
  v25 = 0;
  v26 = 0;
  strcpy(v27, "German Unity Day");
  HIBYTE(v27[2]) = 16;
  v28 = xmmword_22639F0;
  v29 = 0;
  v30 = 0;
  sub_6E38(&v31, 0);
  sub_6F0C(&__p, 0);
  sub_A334(a1, v2, 9uLL);
  if (v34 < 0)
  {
    operator delete(__p);
    if ((v32 & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v27[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((v32 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(v31);
  if ((SHIBYTE(v27[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v27[0]);
  if ((v23 & 0x80000000) == 0)
  {
LABEL_11:
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(v22[0]);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_12:
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v17[0]);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(v12[0]);
  if ((SHIBYTE(v9) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SHIBYTE(v5) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v8);
  if ((SHIBYTE(v5) & 0x80000000) == 0)
  {
LABEL_15:
    if ((v3 & 0x80000000) == 0)
    {
      return;
    }

LABEL_25:
    operator delete(v2[0]);
    return;
  }

LABEL_24:
  operator delete(v4);
  if (v3 < 0)
  {
    goto LABEL_25;
  }
}

void sub_7F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a75 < 0)
  {
    operator delete(a74);
    if ((a73 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a69 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a73 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a72);
  if ((a69 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a60 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a64);
  if ((a60 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a55);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a42 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a46);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a37);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a28);
  if ((a24 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_19:
  operator delete(a19);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(__p);
  goto LABEL_11;
}

void sub_8094(void *a1@<X8>)
{
  sub_6B24(v2, 0);
  sub_6D14();
  if (byte_278EAB7 < 0)
  {
    sub_325C(&v4, xmmword_278EAA0, *(&xmmword_278EAA0 + 1));
  }

  else
  {
    v4 = xmmword_278EAA0;
    v5 = unk_278EAB0;
  }

  v6 = xmmword_278EAB8;
  v7 = qword_278EAC8;
  strcpy(v8, "Ascension Day");
  v9 = 13;
  v10 = xmmword_22639C0;
  v11 = 0;
  v12 = 0;
  strcpy(v13, "Whit Monday");
  v14 = 11;
  v15 = xmmword_22639D0;
  v16 = 0;
  v17 = 0;
  strcpy(v18, "Labour Day");
  v19 = 10;
  v20 = xmmword_22639E0;
  v21 = 0;
  v22 = 0;
  strcpy(v23, "Victory Day");
  v24 = 11;
  v25 = xmmword_2263A00;
  v26 = 0;
  v27 = 0;
  strcpy(v28, "Bastille Day");
  v29 = 12;
  v30 = xmmword_2263A10;
  v31 = 0;
  v32 = 0;
  strcpy(v33, "Assumption of Mary");
  HIBYTE(v33[2]) = 18;
  v34 = xmmword_2263A20;
  v35 = 0;
  v36 = 0;
  strcpy(v37, "All Saint's Day");
  v38 = 15;
  v39 = xmmword_2263A30;
  v40 = 0;
  v41 = 0;
  strcpy(v42, "Armistice 1918");
  v43 = 14;
  v44 = xmmword_2263A40;
  v45 = 0;
  v46 = 0;
  sub_6E38(&__p, 0);
  sub_A334(a1, v2, 0xBuLL);
  if (v48 < 0)
  {
    operator delete(__p);
    if ((v43 & 0x80000000) == 0)
    {
LABEL_6:
      if ((v38 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v43 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v42[0]);
  if ((v38 & 0x80000000) == 0)
  {
LABEL_7:
    if ((SHIBYTE(v33[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(v37[0]);
  if ((SHIBYTE(v33[2]) & 0x80000000) == 0)
  {
LABEL_8:
    if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v33[0]);
  if ((v29 & 0x80000000) == 0)
  {
LABEL_9:
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(v28[0]);
  if ((v24 & 0x80000000) == 0)
  {
LABEL_10:
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v23[0]);
  if ((v19 & 0x80000000) == 0)
  {
LABEL_11:
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(v18[0]);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_12:
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(v13[0]);
  if ((v9 & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v5) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(v8[0]);
  if ((SHIBYTE(v5) & 0x80000000) == 0)
  {
LABEL_14:
    if ((v3 & 0x80000000) == 0)
    {
      return;
    }

LABEL_26:
    operator delete(v2[0]);
    return;
  }

LABEL_25:
  operator delete(v4);
  if (v3 < 0)
  {
    goto LABEL_26;
  }
}

void sub_8494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a79 < 0)
  {
    operator delete(a78);
    if ((a77 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a75 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((a77 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a76);
  if ((a75 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a73 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a74);
  if ((a73 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a69 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a72);
  if ((a69 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a60 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a64);
  if ((a60 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a55);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a42 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a46);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(a37);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a28);
  if ((a24 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_23:
  operator delete(a19);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_13:
    _Unwind_Resume(a1);
  }

LABEL_12:
  operator delete(__p);
  goto LABEL_13;
}

void sub_85F4()
{
  sub_6B24(&v0, 0);
  strcpy(v1, "Coming of age");
  v1[23] = 13;
  v2 = 0x200000000;
  v3 = 0;
  v4 = 0x100000002;
  v5 = 0;
  operator new();
}

void sub_8B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
    if ((SLOBYTE(STACK[0x22F]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a79 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((SLOBYTE(STACK[0x22F]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(STACK[0x218]);
  if ((a79 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a77 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a78);
  if ((a77 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a75 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a76);
  if ((a75 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a73 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a74);
  if ((a73 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a69 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(a72);
  if ((a69 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a60 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a64);
  if ((a60 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(a55);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a42 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(a46);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(a37);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_12:
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(a28);
  if ((a24 & 0x80000000) == 0)
  {
LABEL_13:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_27:
  operator delete(a19);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_15:
    operator delete(v80);
    operator delete(v79);
    _Unwind_Resume(a1);
  }

LABEL_14:
  operator delete(__p);
  goto LABEL_15;
}

void sub_8CE4()
{
  sub_6B24(&v0, 0);
  strcpy(v1, "Epiphany");
  v1[23] = 8;
  v2 = xmmword_2263AD0;
  v3 = 0;
  v4 = 0;
  v5 = 0x726574736145;
  v6 = 6;
  v7 = 0xD00000000;
  v10 = 0;
  v8 = 0;
  v9 = 0;
  sub_6D14();
  if (byte_278EAB7 < 0)
  {
    sub_325C(v11, xmmword_278EAA0, *(&xmmword_278EAA0 + 1));
  }

  else
  {
    *v11 = xmmword_278EAA0;
    v11[2] = unk_278EAB0;
  }

  v12 = xmmword_278EAB8;
  v13 = qword_278EAC8;
  strcpy(v14, "Liberation Day");
  v14[23] = 14;
  v15 = xmmword_2263950;
  v16 = 0;
  v17 = 0;
  strcpy(v18, "Labor Day");
  strcpy(v19, "\t");
  v19[2] = 0;
  v20 = 0;
  v21 = 5;
  v22 = 1;
  v23 = 0;
  v24 = 0;
  strcpy(v25, "Republic Day");
  v25[23] = 12;
  v26 = xmmword_2263AE0;
  v27 = 0;
  v28 = 0;
  strcpy(v29, "Feast of Assumption");
  v29[23] = 19;
  v30 = xmmword_2263A20;
  v31 = 0;
  v32 = 0;
  strcpy(v33, "All Saints' Day");
  v33[23] = 15;
  v34 = xmmword_2263A30;
  v35 = 0;
  v36 = 0;
  operator new();
}

void sub_9124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
    if ((a79 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a77 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((a79 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a78);
  if ((a77 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a75 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a76);
  if ((a75 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a73 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a74);
  if ((a73 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a69 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a72);
  if ((a69 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a60 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a64);
  if ((a60 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(a55);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a42 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a46);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(a37);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(a28);
  if ((a24 & 0x80000000) == 0)
  {
LABEL_12:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_25:
  operator delete(a19);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_14:
    operator delete(v79);
    _Unwind_Resume(a1);
  }

LABEL_13:
  operator delete(__p);
  goto LABEL_14;
}

void sub_92A4()
{
  sub_6B24(&v0, 0);
  strcpy(v1, "Epiphany");
  v1[23] = 8;
  v2 = xmmword_2263AD0;
  v3 = 0;
  v4 = 0;
  strcpy(v5, "Maundy Thursday");
  v5[23] = 15;
  v6 = xmmword_2263B00;
  v7 = 0;
  v8 = 0;
  sub_6BF0();
  if (byte_278EA87 < 0)
  {
    sub_325C(v9, xmmword_278EA70, *(&xmmword_278EA70 + 1));
  }

  else
  {
    *v9 = xmmword_278EA70;
    v9[2] = unk_278EA80;
  }

  v10 = xmmword_278EA88;
  v11 = qword_278EA98;
  strcpy(v12, "Labor Day");
  strcpy(v13, "\t");
  v13[2] = 0;
  v14 = 0;
  v15 = 5;
  v16 = 1;
  v17 = 0;
  v18 = 0;
  strcpy(v19, "Feast of Assumption");
  v19[23] = 19;
  v20 = xmmword_2263A20;
  v21 = 0;
  v22 = 0;
  strcpy(v23, "Spain Day");
  strcpy(v24, "\t");
  v24[2] = 0;
  v25 = 0;
  v26 = 10;
  v27 = 12;
  v28 = 0;
  v29 = 0;
  strcpy(v30, "All Saints' Day");
  v30[23] = 15;
  v31 = xmmword_2263A30;
  v32 = 0;
  v33 = 0;
  strcpy(v34, "Constitution Day");
  v34[23] = 16;
  v35 = xmmword_2263B20;
  v36 = 0;
  v37 = 0;
  operator new();
}

void sub_96D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a79 < 0)
  {
    operator delete(a78);
    if ((a77 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a75 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((a77 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a76);
  if ((a75 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a73 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a74);
  if ((a73 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a69 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a72);
  if ((a69 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a60 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a64);
  if ((a60 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a55);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a42 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a46);
  if ((a42 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(a37);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a28);
  if ((a24 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_23:
  operator delete(a19);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_13:
    operator delete(v79);
    _Unwind_Resume(a1);
  }

LABEL_12:
  operator delete(__p);
  goto LABEL_13;
}

void *sub_9838()
{
  if ((atomic_load_explicit(&qword_278EA30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_278EA30))
  {
    sub_67B8(v3);
    sub_9CC4(v4, "au", v3);
    sub_7914(v2);
    sub_9CC4(&v5, "ca", v2);
    sub_7C3C(v1);
    sub_9CC4(&v6, "de", v1);
    sub_92A4();
  }

  return &unk_278EA48;
}

void sub_9AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, void **a22, uint64_t a23, uint64_t a24, void **a25, uint64_t a26, uint64_t a27, void **a28, uint64_t a29, uint64_t a30, void **a31, uint64_t a32, uint64_t a33, void **a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_9DA0(v44);
  sub_9DA0(v43);
  sub_9DA0(v42);
  sub_9DA0(v41);
  sub_9DA0(v40);
  sub_9DA0(v39);
  sub_9DA0(v38);
  sub_9DA0(v37);
  sub_9DA0(&a37);
  sub_9E38(&a10);
  sub_9E38(&a13);
  sub_9E38(&a16);
  sub_9E38(&a19);
  sub_9E38(&a22);
  sub_9E38(&a25);
  sub_9E38(&a28);
  sub_9E38(&a31);
  sub_9E38(&a34);
  __cxa_guard_abort(&qword_278EA30);
  _Unwind_Resume(a1);
}

void sub_9C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void **a34)
{
  sub_9E38(&a34);
  __cxa_guard_abort(&qword_278EA30);
  _Unwind_Resume(a1);
}

uint64_t sub_9CC4(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  *(a1 + v7) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *a3;
  *(a1 + 40) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return a1;
}

uint64_t sub_9DA0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 25);
        v3 -= 6;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void ***sub_9E38(void ***a1)
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
        v5 = *(v3 - 25);
        v3 -= 6;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t **sub_9EAC(_DWORD *a1)
{
  result = sub_38EC(a1);
  if (!result)
  {
    return result;
  }

  v3 = sub_39E8(a1);
  v4 = __p;
  sub_25FB0(v3, __p);
  if ((v15 & 0x80u) == 0)
  {
    v5 = v15;
  }

  else
  {
    v4 = __p[0];
    v5 = __p[1];
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  v17 = v5;
  if (v5)
  {
    memmove(&__dst, v4, v5);
    *(&__dst + v5) = 0;
    if (v17 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    do
    {
      *p_dst = __tolower(*v4);
      p_dst = (p_dst + 1);
      v4 = (v4 + 1);
      --v5;
    }

    while (v5);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  operator delete(__p[0]);
LABEL_16:
  sub_9838();
  result = sub_B2CC(qword_278EA48, &__dst);
  if (result)
  {
    v7 = sub_B2CC(qword_278EA48, &__dst);
    if (!v7)
    {
      sub_49EC("unordered_map::at: key not found");
    }

    v8 = v7[5];
    for (i = v7[6]; v8 != i; v8 += 6)
    {
      v10 = *(v8 + 7);
      if (v10 > 12 || v10 == sub_3D0C(a1))
      {
        sub_45D0(a1, v12);
        sub_25BE0(v13, v12);
        sub_3B98(a1);
        sub_375C(__p);
      }
    }

    result = 0;
  }

  if (v17 < 0)
  {
    v11 = result;
    operator delete(__dst);
    return v11;
  }

  return result;
}

void sub_A2A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A334(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_A460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_A504(&a11);
  *(v11 + 8) = v12;
  sub_A480(&a9);
  _Unwind_Resume(a1);
}

void ****sub_A480(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 25);
          v4 -= 6;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_A504(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 25);
      v3 -= 6;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

uint64_t sub_A564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 48 * a3;
    do
    {
      sub_A5E0(a1, a2);
      a2 += 48;
      v5 -= 48;
    }

    while (v5);
  }

  return a1;
}

uint64_t **sub_A5E0(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_A9E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_AA34(va);
  _Unwind_Resume(a1);
}

void sub_A9F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_AA34(va);
  _Unwind_Resume(a1);
}

void sub_AA0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  sub_AA34(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_AA34(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 40);
      if (v3)
      {
        v4 = *(v2 + 48);
        v5 = *(v2 + 40);
        if (v4 != v3)
        {
          do
          {
            v6 = *(v4 - 25);
            v4 -= 6;
            if (v6 < 0)
            {
              operator delete(*v4);
            }
          }

          while (v4 != v3);
          v5 = *(v2 + 40);
        }

        *(v2 + 48) = v3;
        operator delete(v5);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t sub_AAD8(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v23 = *(a2 + a3 - 48);
      v24 = *(a2 + a3 - 40);
      v25 = *(a2 + a3 - 24);
      v26 = *(a2 + a3 - 56);
      v27 = *(a2 + a3 - 16);
      v28 = *(a2 + a3 - 8);
      v29 = v26 + v27;
      v30 = 0x9DDFEA08EB382D69 * (v25 ^ ((0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))));
      v31 = 0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47));
      v32 = *(a2 + a3 - 64) + a3;
      v33 = v32 + v26 + v23;
      v34 = __ROR8__(v33, 44) + v32;
      v35 = __ROR8__(v24 + v32 + v31, 21);
      v36 = v33 + v24;
      v37 = v34 + v35;
      v38 = v29 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v39 = v38 + v25 + v27;
      v40 = v39 + v28;
      v41 = __ROR8__(v39, 44) + v38 + __ROR8__(v38 + v24 + v28, 21);
      v43 = *a2;
      v42 = a2 + 4;
      v44 = v43 - 0x4B6D499041670D8DLL * v24;
      v45 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v46 = *(v42 - 3);
        v47 = v44 + v36 + v29 + v46;
        v48 = v42[2];
        v49 = v42[3];
        v50 = v42[1];
        v29 = v50 + v36 - 0x4B6D499041670D8DLL * __ROR8__(v29 + v37 + v48, 42);
        v51 = v31 + v40;
        v52 = *(v42 - 2);
        v53 = *(v42 - 1);
        v54 = *(v42 - 4) - 0x4B6D499041670D8DLL * v37;
        v55 = v54 + v40 + v53;
        v56 = v54 + v46 + v52;
        v36 = v56 + v53;
        v57 = __ROR8__(v56, 44) + v54;
        v58 = (0xB492B66FBE98F273 * __ROR8__(v47, 37)) ^ v41;
        v44 = 0xB492B66FBE98F273 * __ROR8__(v51, 33);
        v37 = v57 + __ROR8__(v55 + v58, 21);
        v59 = v44 + v41 + *v42;
        v40 = v59 + v50 + v48 + v49;
        v41 = __ROR8__(v59 + v50 + v48, 44) + v59 + __ROR8__(v29 + v52 + v59 + v49, 21);
        v42 += 8;
        v31 = v58;
        v45 += 64;
      }

      while (v45);
      v60 = v58 - 0x4B6D499041670D8DLL * (v29 ^ (v29 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) ^ ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) >> 47));
      v61 = v44 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) ^ ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) >> 47));
    }

    else
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v16 = *(a2 + a3 - 24) + v14 + v6;
      v17 = 0xC3A5C85C97CB3127 * (v16 + *(a2 + a3 - 8) + v8 + v15) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + __ROR8__(*(a2 + a3 - 8) + v8 + v14, 52) + __ROR8__(v16, 31));
      return 0x9AE16A3B2F90404FLL * ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) ^ ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) >> 47));
    }
  }

  else if (a3 > 0x10)
  {
    v18 = a2[1];
    v19 = 0xB492B66FBE98F273 * *a2;
    v20 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v19 - v18, 43);
    v21 = v19 + a3 + __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
    v22 = 0x9DDFEA08EB382D69 * ((v20 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v21);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) ^ ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 47));
  }

  else if (a3 < 9)
  {
    if (a3 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a3)
      {
        v64 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v64 ^ (v64 >> 47));
      }
    }

    else
    {
      v62 = *(a2 + a3 - 4);
      v63 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v62);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) ^ ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) >> 47));
    }
  }

  else
  {
    v3 = *(a2 + a3 - 8);
    v4 = __ROR8__(v3 + a3, a3);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
  }

  return result;
}

void *sub_AF24(void *result, void *a2)
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

void sub_B05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_A504(&a11);
  *(v11 + 8) = v12;
  sub_A480(&a9);
  _Unwind_Resume(a1);
}

void sub_B07C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t sub_B210(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = *(v2 + 5);
      if (v6)
      {
        v7 = *(v2 + 6);
        v8 = *(v2 + 5);
        if (v7 != v6)
        {
          do
          {
            v9 = *(v7 - 25);
            v7 -= 6;
            if (v9 < 0)
            {
              operator delete(*v7);
            }
          }

          while (v7 != v6);
          v8 = *(v2 + 5);
        }

        *(v2 + 6) = v6;
        operator delete(v8);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
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

uint64_t **sub_B2CC(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void *sub_B484(void *a1)
{
  v2 = *(a1 + *(*a1 - 24) + 8);
  v3 = std::ostream::operator<<();
  v4 = sub_4A5C(v3, "-", 1);
  v5 = *v4;
  v6 = v4 + *(*v4 - 24);
  if (*(v6 + 36) == -1)
  {
    v7 = v4;
    std::ios_base::getloc((v4 + *(*v4 - 24)));
    v8 = std::locale::use_facet(&v18, &std::ctype<char>::id);
    v9 = (v8->__vftable[2].~facet_0)(v8, 32);
    std::locale::~locale(&v18);
    *(v6 + 36) = v9;
    v4 = v7;
    v5 = *v7;
  }

  *(v6 + 36) = 48;
  *(v4 + *(v5 - 24) + 24) = 2;
  v10 = std::ostream::operator<<();
  v11 = sub_4A5C(v10, "-", 1);
  v12 = *v11;
  v13 = v11 + *(*v11 - 24);
  if (*(v13 + 36) == -1)
  {
    v14 = v11;
    std::ios_base::getloc((v11 + *(*v11 - 24)));
    v15 = std::locale::use_facet(&v18, &std::ctype<char>::id);
    v16 = (v15->__vftable[2].~facet_0)(v15, 32);
    std::locale::~locale(&v18);
    *(v13 + 36) = v16;
    v11 = v14;
    v12 = *v14;
  }

  *(v13 + 36) = 48;
  *(v11 + *(v12 - 24) + 24) = 2;
  std::ostream::operator<<();
  *(a1 + *(*a1 - 24) + 8) = v2;
  return a1;
}

_DWORD *sub_B6C0(_DWORD *result, int a2, int a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

_DWORD *sub_B6C8(_DWORD *result, int a2)
{
  *result = a2;
  result[1] = a2;
  return result;
}

void *sub_B720(void *a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  v4 = sub_4A5C(a1, "min: ", 5);
  v5 = sub_72140(v4, v2);
  v6 = sub_4A5C(v5, ", max: ", 7);

  return sub_72140(v6, v3);
}

uint64_t sub_B780(void *a1, int a2, uint64_t a3, int a4, char a5)
{
  v72[0] = 0x8000000080000000;
  if (a1[1] - *a1 < 5uLL)
  {
    return v72[0];
  }

  if (a3)
  {
    v6 = a3 - 1;
  }

  else
  {
    v6 = 0;
  }

  sub_C164(&v70, a1, a2, v6, a5);
  v8 = v70;
  v7 = v71;
  v9 = v71 - v70;
  v10 = v71 - v70;
  if (v10 >= 2)
  {
    if (v70 == v71)
    {
      v17 = 0.0;
    }

    else
    {
      v11 = 0.0;
      v12 = v70;
      if (v71 - 1 == v70)
      {
        goto LABEL_80;
      }

      v13 = (((v71 - 1) - v70) >> 3) + 1;
      v12 = &v70[v13 & 0x3FFFFFFFFFFFFFFELL];
      v14 = v70 + 1;
      v15 = v13 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        v11 = v11 + *(v14 - 1) + *v14;
        v14 += 2;
        v15 -= 2;
      }

      while (v15);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_80:
        do
        {
          v16 = *v12++;
          v11 = v11 + v16;
        }

        while (v12 != v71);
      }

      v17 = v11 / v10;
    }

    sub_C400(&v70);
    v19 = erf(v17 * 0.1 / ((v18 + 0.0005) * 1.41421356));
    v20 = v17;
    if (v19 > 0.7 && v20 != 0)
    {
      v22 = v20 | (v20 << 32);
LABEL_22:
      if (v22)
      {
        sub_B6D0(v72, 10 * v22);
        sub_B6D8(v72, 10 * HIDWORD(v22));
      }

      goto LABEL_24;
    }

    if (v8 != v7)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    std::__sort<std::__less<double,double> &,double *>();
    v72[13] = off_262D760;
    v72[12] = off_262D7B0;
    v22 = 0;
    if (fabs(0.0) >= 2.22044605e-16)
    {
      goto LABEL_22;
    }

    if (v8 == v7)
    {
      v22 = 0;
      v50 = 0.0;
      v49 = 0.0;
      v48 = 0.0;
      v47 = 0.0;
    }

    else
    {
      v24 = v8 + 1;
      v25 = *v8;
      v26 = *v8;
      if (v8 + 1 != v7)
      {
        v27 = v8 + 1;
        v28 = v8;
        v29 = v8 + 1;
        do
        {
          v30 = *v29++;
          v31 = v30;
          if (v30 < v26)
          {
            v26 = v31;
            v28 = v27;
          }

          v27 = v29;
        }

        while (v29 != v7);
        v26 = *v28;
        v32 = v8;
        v33 = v8 + 1;
        do
        {
          v34 = *v33++;
          v35 = v34;
          if (v25 < v34)
          {
            v25 = v35;
            v32 = v24;
          }

          v24 = v33;
        }

        while (v33 != v7);
        v25 = *v32;
      }

      v22 = 0;
      v36 = -1.0;
      v37 = &qword_2263DB0;
      v38 = 1.79769313e308;
      v39 = 9280;
      v40 = -1.0;
      v41 = -1.0;
      v42 = -1.0;
      do
      {
        v43 = vabdd_f64(*(v37 - 2), v26);
        if (v43 <= v26 * 0.2)
        {
          v44 = vabdd_f64(*v37, v25);
          v45 = v43 + v44;
          if (v44 <= v25 * 0.2 && v45 < v38)
          {
            v41 = *(v37 - 1);
            v36 = *(v37 + 1);
            v40 = *v37;
            v42 = *(v37 - 2);
            v38 = v45;
            v22 = v37[2];
          }
        }

        v37 += 5;
        v39 -= 40;
      }

      while (v39);
      v47 = v42 + 1.0;
      v48 = v41 + 1.0;
      v49 = v40 + 1.0;
      v50 = v36 + 1.0;
    }

    v51 = fabs(v48);
    v52 = fabs(v47) < 2.22044605e-16 && v51 < 2.22044605e-16;
    v53 = fabs(v49);
    v54 = fabs(v50);
    v55 = v52 && v53 < 2.22044605e-16;
    v56 = v55 && v54 < 2.22044605e-16;
    if (!v56 || v22 != 0)
    {
      goto LABEL_22;
    }

    if (v8 != v7 && a4)
    {
      v58 = v8 + 1;
      v59 = *v8;
      v60 = *v8;
      if (v8 + 1 != v7)
      {
        v61 = v8 + 1;
        v62 = v8;
        v63 = v8 + 1;
        do
        {
          v64 = *v63++;
          v65 = v64;
          if (v64 < v60)
          {
            v60 = v65;
            v62 = v61;
          }

          v61 = v63;
        }

        while (v63 != v7);
        v60 = *v62;
        v66 = v8;
        v67 = v8 + 1;
        do
        {
          v68 = *v67++;
          v69 = v68;
          if (v59 < v68)
          {
            v59 = v69;
            v66 = v58;
          }

          v58 = v67;
        }

        while (v67 != v7);
        v59 = *v66;
      }

      v22 = llround(v60) | (llround(v59) << 32);
      goto LABEL_22;
    }
  }

LABEL_24:
  if (v8)
  {
    operator delete(v8);
  }

  return v72[0];
}

void sub_C0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (v26)
  {
    operator delete(v26);
    if (!v25)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v25)
  {
    goto LABEL_3;
  }

  operator delete(v25);
  _Unwind_Resume(exception_object);
}

void sub_C164(void *a1, void *a2, int a3, uint64_t a4, char a5)
{
  v5 = (a2[1] - *a2) >> 2;
  if (v5 > 2)
  {
    v6 = 0;
    v7 = v5 - 1;
    while (1)
    {
      v8 = *(*a2 + 4 * v6 + 4);
      if (v8 - **a2 > 7200)
      {
        goto LABEL_11;
      }

      v9 = *(*a2 + 4 * v6);
      if (v8 - v9 < 0)
      {
        break;
      }

      if (v8 != v9 || (a5 & 1) == 0)
      {
        if (10 * (v8 - v9) <= a3)
        {
          operator new();
        }

LABEL_11:
        *a1 = 0;
        a1[1] = 0;
        a1[2] = 0;
        return;
      }

      if (v7 == ++v6)
      {
        goto LABEL_11;
      }
    }

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_C388(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_C3A4(void *a1, int a2, char a3)
{
  sub_C164(v6, a1, a2, 2, a3);
  v3 = v6[0];
  v4 = v6[1];
  if (v6[0])
  {
    operator delete(v6[0]);
  }

  return (v4 - v3) > 8;
}

void sub_C400(double **a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = v1 - *a1;
  v4 = 0.0;
  if ((v3 >> 3) >= 2)
  {
    if (v2 != v1)
    {
      if (v1 - 1 == v2)
      {
        goto LABEL_15;
      }

      v5 = (((v1 - 1) - v2) >> 3) + 1;
      v6 = v2 + 1;
      v7 = v5 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        v4 = v4 + *(v6 - 1) + *v6;
        v6 += 2;
        v7 -= 2;
      }

      while (v7);
      v2 += v5 & 0x3FFFFFFFFFFFFFFELL;
      if (v5 != (v5 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_15:
        do
        {
          v8 = *v2++;
          v4 = v4 + v8;
        }

        while (v2 != v1);
      }

      if ((v3 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    memset(v9, 0, 24);
    v9[4] = v9;
  }
}

void sub_C600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_C61C(uint64_t *result, void *a2)
{
  v2 = *result;
  v4 = *(*result + 8);
  v3 = *(*result + 16);
  if (v4 >= v3)
  {
    v5 = *v2;
    v6 = v4 - *v2;
    v7 = v6 >> 3;
    v8 = (v6 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_1794();
    }

    v9 = v3 - v5;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    *(8 * v7) = *a2;
    v12 = 8 * v7 + 8;
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

double sub_C740(uint64_t a1, double *a2, double *a3)
{
  v3 = a2[1] + 0.0025;
  v4 = a3[1] + 0.0025;
  v5 = *a2 + 0.0025 - (*a3 + 0.0025);
  return sqrt(1.0 - sqrt((v3 + v3) * v4 / (v3 * v3 + v4 * v4 + 0.005)) * exp(v5 * v5 * -0.25 / (v3 * v3 + v4 * v4 + 0.005)));
}

double sub_C7CC(uint64_t a1, double *a2, double *a3)
{
  v3 = a2[1];
  v4 = *a2 - v3 + -0.0025;
  v5 = *a2 + v3 + 0.0025;
  v6 = a3[1];
  v7 = *a3 - v6 + -0.0025;
  if (v4 >= v7)
  {
    v7 = v4;
  }

  if (*a3 + v6 + 0.0025 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *a3 + v6 + 0.0025;
  }

  result = 1.0;
  if (v7 < v8)
  {
    return 1.0 - fabs((v8 - v7) / (v5 - v4));
  }

  return result;
}

void *sub_C86C()
{
  if ((atomic_load_explicit(&qword_278EAD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_278EAD0))
  {
    v1 = 0x3300000001;
    v2 = 2;
    v3 = 0x3400000002;
    v4 = 2;
    v5 = 0x3500000003;
    v6 = 5;
    v7 = 0x3600000004;
    v8 = 5;
    v9 = 0x3700000005;
    v10 = 9;
    v11 = 0x3800000006;
    v12 = 1;
    v13 = 0x3900000007;
    v14 = 8;
    v15 = 0x3A00000008;
    v16 = 1;
    v17 = 0x3B00000009;
    v18 = 4;
    v19 = 0x3C0000000ALL;
    v20 = 4;
    v21 = 0x3D0000000BLL;
    v23 = 0x3E0000000CLL;
    v22 = 4;
    v24 = 4;
    v25 = 0x3F0000000DLL;
    v27 = 0x400000000ELL;
    v26 = 1;
    v28 = 1;
    v29 = 0x4200000010;
    v31 = 0x4300000011;
    v30 = 6;
    v32 = 4;
    v33 = 0x4400000012;
    v35 = 0x4500000013;
    v34 = 4;
    v36 = 4;
    v37 = 0x4700000015;
    v39 = 0x4800000016;
    v38 = 2;
    v40 = 2;
    v41 = 0x4900000017;
    v43 = 0x4A00000018;
    v42 = 2;
    v44 = 2;
    v45 = 0x4B00000019;
    v46 = 5;
    v47 = 0x4C0000001ALL;
    v48 = 7;
    v49 = 0x4D0000001BLL;
    v50 = 10;
    v51 = 0x4E0000001CLL;
    v52 = 7;
    v53 = 0x500000001ELL;
    v54 = 6;
    v55 = 0x510000001FLL;
    v56 = 6;
    v57 = 0x5200000020;
    v58 = 2;
    v59 = 0x5300000021;
    v60 = 2;
    v61 = 0x5400000022;
    v62 = 4;
    v63 = 0x5500000023;
    v64 = 5;
    v65 = 0x5600000024;
    v66 = 5;
    v67 = 0x5700000025;
    v68 = 5;
    v69 = 0x5800000026;
    v70 = 5;
    v71 = 0x5900000027;
    v72 = 5;
    v73 = 0x5A00000028;
    v74 = 4;
    v75 = 0x5B00000029;
    v76 = 5;
    v77 = 0x5C0000002ALL;
    v78 = 1;
    v79 = 0x5D0000002BLL;
    v80 = 5;
    v81 = 0x5E0000002CLL;
    v82 = 5;
    v83 = 0x5F0000002DLL;
    v84 = 2;
    v85 = 0x600000002ELL;
    v86 = 5;
    v87 = 0x610000002FLL;
    v88 = 1;
    v89 = 0x6200000030;
    v90 = 5;
    v91 = 0x6300000031;
    v92 = 4;
    sub_234A4(&unk_278EAE0, &v1, 46);
    __cxa_guard_release(&qword_278EAD0);
  }

  return &unk_278EAE0;
}

void *sub_CC2C()
{
  if ((atomic_load_explicit(&qword_278EAD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_278EAD8))
  {
    sub_3608D0(v1, "BR");
    sub_3608D0(&v3, "NZ");
    sub_3608D0(&v5, "AU");
    sub_3608D0(&v7, "ZA");
    sub_3608D0(&v9, "AR");
    sub_3608D0(&v11, "CL");
    sub_3608D0(&__p, "PE");
    sub_23898(&unk_278EB08, v1, 7);
    if (v14 < 0)
    {
      operator delete(__p);
      if ((v12 & 0x80000000) == 0)
      {
LABEL_6:
        if ((v10 & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(v11);
    if ((v10 & 0x80000000) == 0)
    {
LABEL_7:
      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:
    operator delete(v9);
    if ((v8 & 0x80000000) == 0)
    {
LABEL_8:
      if ((v6 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_15:
    operator delete(v7);
    if ((v6 & 0x80000000) == 0)
    {
LABEL_9:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }

LABEL_16:
    operator delete(v5);
    if ((v4 & 0x80000000) == 0)
    {
LABEL_10:
      if ((v2 & 0x80000000) == 0)
      {
LABEL_11:
        __cxa_guard_release(&qword_278EAD8);
        return &unk_278EB08;
      }

LABEL_18:
      operator delete(v1[0]);
      goto LABEL_11;
    }

LABEL_17:
    operator delete(v3);
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  return &unk_278EB08;
}

void sub_CE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
    if ((a44 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a38 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a44 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a39);
  if ((a38 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a32 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a33);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a14 & 0x80000000) == 0)
    {
LABEL_16:
      __cxa_guard_abort(&qword_278EAD8);
      _Unwind_Resume(a1);
    }

LABEL_15:
    operator delete(a9);
    __cxa_guard_abort(&qword_278EAD8);
    _Unwind_Resume(a1);
  }

LABEL_14:
  operator delete(a15);
  if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  goto LABEL_15;
}

void sub_CEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  while (1)
  {
    v10 = *(v9 - 1);
    v9 -= 3;
    if (v10 < 0)
    {
      operator delete(*v9);
    }

    if (v9 == &a9)
    {
      JUMPOUT(0xCECCLL);
    }
  }
}

uint64_t sub_CF0C(uint64_t a1, unsigned int *a2, unsigned int a3, unsigned int a4, _OWORD *a5)
{
  v9 = sub_D194((a1 + 88), a4);
  v10 = v9;
  v11 = *(v9 + 120);
  if (v11 == *(v9 + 128))
  {
    v17 = v9 + 8;

    return sub_D3C8(v17, a2, a3, (a1 + 72), a5);
  }

  else
  {
    result = sub_CF0C(a1, a2, a3, *v11, a5);
    v13 = *(v10 + 120);
    if ((*(v10 + 128) - v13) >= 5)
    {
      v14 = 2;
      v15 = 1;
      while (1)
      {
        v16 = *(v10 + 112);
        if (v16 == 42)
        {
          break;
        }

        if (v16 == 45)
        {
          if (result)
          {
            result = sub_CF0C(a1, a2, a3, *(v13 + 4 * v15), a5) ^ 1;
            goto LABEL_5;
          }

          goto LABEL_4;
        }

        if (v16 != 43)
        {
          sub_3608D0(v25, "unexpected operation");
          sub_D7B0(v23);
          if ((v26 & 0x80u) == 0)
          {
            v18 = v25;
          }

          else
          {
            v18 = v25[0];
          }

          if ((v26 & 0x80u) == 0)
          {
            v19 = v26;
          }

          else
          {
            v19 = v25[1];
          }

          v20 = sub_4A5C(v24, v18, v19);
          v22.__r_.__value_.__s.__data_[0] = *(v10 + 112);
          sub_4A5C(v20, &v22, 1);
          exception = __cxa_allocate_exception(0x10uLL);
          sub_DAE4(v23, &v22);
          std::logic_error::logic_error(exception, &v22);
        }

        if ((result & 1) == 0)
        {
LABEL_14:
          result = sub_CF0C(a1, a2, a3, *(v13 + 4 * v15), a5);
          goto LABEL_5;
        }

        result = 1;
LABEL_5:
        v15 = v14;
        v13 = *(v10 + 120);
        ++v14;
        if (v15 >= (*(v10 + 128) - v13) >> 2)
        {
          return result;
        }
      }

      if (result)
      {
        goto LABEL_14;
      }

LABEL_4:
      result = 0;
      goto LABEL_5;
    }
  }

  return result;
}

void sub_D134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      sub_DBE4(&a16);
      if (*(v18 - 65) < 0)
      {
        operator delete(*(v18 - 88));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

uint64_t sub_D194(void *a1, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v16, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v16, &v17);
    v6 = std::string::append(&v17, ",size=", 6uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v15, 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v15;
    }

    else
    {
      v8 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v18, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20 = v10->__r_.__value_.__r.__words[2];
    v19 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v20 >= 0)
    {
      v12 = &v19;
    }

    else
    {
      v12 = v19;
    }

    if (v20 >= 0)
    {
      v13 = HIBYTE(v20);
    }

    else
    {
      v13 = *(&v19 + 1);
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  return *a1 + 144 * a2;
}

void sub_D2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((a33 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a22);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t **sub_D3C8(uint64_t a1, unsigned int *a2, unsigned int a3, _DWORD *a4, _OWORD *a5)
{
  result = 0;
  v8 = *(a1 + 40);
  if (v8 > 3)
  {
    if (v8 == 4)
    {
      if (*(a1 + 88) != 54)
      {
        return 0;
      }

      return sub_9EAC(a2);
    }

    else
    {
      if (v8 == 5)
      {
        if (*(a1 + 88) != 55)
        {
          return 0;
        }

        v11 = a2;
        v10 = a5;
      }

      else
      {
        if (v8 != 7)
        {
          return result;
        }

        if (*(a1 + 88) != 57)
        {
          return 0;
        }

        v10 = (a5 + 104);
        v11 = a2;
      }

      return sub_EAD0(v11, v10);
    }
  }

  else
  {
    if (v8)
    {
      if (v8 != 1)
      {
        if (v8 != 2)
        {
          return result;
        }

        if (*(a1 + 88) != 52)
        {
          return 0;
        }

LABEL_21:
        v28 = 0x7FFFFFFF;
        sub_3318(v27);
        if (*a4 == -1 && a4[1] == -1)
        {
          sub_46FC(v13, a2);
          sub_3E48(v27, 8u);
          sub_3EC8(v27, 0);
          v28 = 324000;
          if (*(a1 + 40) != 1)
          {
            goto LABEL_34;
          }
        }

        else
        {
          sub_2548C(a2, a4, &v28, v26);
          sub_46FC(v27, v26);
          sub_3874(v26);
          if (*(a1 + 40) != 1)
          {
            goto LABEL_34;
          }
        }

        if (*(a1 + 88) == 51)
        {
          sub_3550(v26, v27);
          goto LABEL_35;
        }

LABEL_34:
        sub_4784(v27, &v28, v26);
LABEL_35:
        if (*(a1 + 40) == 1 && *(a1 + 88) == 51)
        {
          v14 = v28;
        }

        else
        {
          v14 = 864000 - v28;
        }

        memset(v25, 0, 26);
        if (v14 < 0)
        {
          v15 = 65236;
        }

        else
        {
          v15 = 300;
        }

        v24 = 0uLL;
        memset(v22, 0, 26);
        v21 = 0uLL;
        v16 = sub_3EA0(v26);
        v17 = sub_3F20(v26);
        v18 = v14 / 600 + (((55925 * (v15 + v14 % 600)) >> 16) >> 9) + (((v15 + v14 % 600 + ((-9611 * (v15 + v14 % 600)) >> 16)) & 0x8000) >> 15);
        HIDWORD(v24) = v16;
        v25[0] = v17;
        BYTE1(v25[6]) = 1;
        v23[0] = 0;
        HIDWORD(v21) = v18 / 60;
        v22[0] = v18 % 60;
        BYTE1(v22[6]) = 1;
        v20[0] = 1;
        v19 = sub_E870(v23, v20, a2, a3);
        sub_3874(v26);
        sub_3874(v27);
        return v19;
      }

      if (*(a1 + 88) == 51)
      {
        goto LABEL_21;
      }

      return 0;
    }

    return sub_E870(a1, a1 + 48, a2, a3);
  }
}

void sub_D74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_3874(va);
  sub_3874(v14 - 104);
  _Unwind_Resume(a1);
}

uint64_t sub_D7B0(uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = a1 + 16;
  v3 = a1 + 24;
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  *(a1 + 8) = 0;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, (a1 + 24));
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *(a1 + 16) = v8;
  *(v2 + *(v8 - 24)) = v7;
  *a1 = v9;
  std::locale::locale((a1 + 32));
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  sub_195CB10(v3);
  return a1;
}

void sub_DA94(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 24) = v2;
  std::locale::~locale((v1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

_DWORD *sub_DAE4@<X0>(_DWORD *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = result[30];
  if ((v3 & 0x10) != 0)
  {
    v4 = *(result + 14);
    v5 = *(result + 9);
    if (v4 < v5)
    {
      *(result + 14) = v5;
      v4 = v5;
    }

    v6 = *(result + 8);
    v7 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if ((v3 & 8) == 0)
    {
      a2[23] = 0;
LABEL_4:
      *a2 = 0;
      return result;
    }

    v6 = *(result + 5);
    v7 = *(result + 7) - v6;
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_14:
      sub_3244();
    }
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  a2[23] = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  result = memmove(a2, v6, v7);
  a2[v7] = 0;
  return result;
}

uint64_t sub_DBE4(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

void sub_DD38(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    sub_1794();
  }

  v10 = v3 - v6;
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
    if (!(v11 >> 62))
    {
      operator new();
    }

    sub_1808();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t sub_DE50(uint64_t result, unsigned int a2, int a3)
{
  v3 = *(result + 88) + 144 * a2;
  v6 = *(v3 + 112);
  v5 = (v3 + 112);
  v4 = v6;
  if (v6 != 32 && v4 != a3)
  {
    v8 = a3;
    sub_D7B0(v14);
    v9 = sub_4A5C(v15, "mismatched ops within brackets: ", 32);
    v13.__r_.__value_.__s.__data_[0] = *v5;
    v10 = sub_4A5C(v9, &v13, 1);
    v11 = sub_4A5C(v10, " and ", 5);
    v13.__r_.__value_.__s.__data_[0] = v8;
    sub_4A5C(v11, &v13, 1);
    exception = __cxa_allocate_exception(0x10uLL);
    sub_DAE4(v14, &v13);
    std::logic_error::logic_error(exception, &v13);
  }

  *v5 = a3;
  return result;
}

void sub_DF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_DBE4(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  sub_DBE4(&a15);
  _Unwind_Resume(a1);
}

_DWORD *sub_DFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  if ((*(a1 + 24) & 0x7F) == 0)
  {
    v8 = *(a1 + 4);
    v8.i32[2] = *(a1 + 12);
    v8.i32[3] = *(a1 + 32);
    if ((vmaxv_u16(vmovn_s32(vcgtzq_s32(v8))) & 1) != 0 || (*(a1 + 45) & 1) == 0 || *(a1 + 36) > 0)
    {
      sub_45D0(a2, __p);
      sub_25BE0(v36, __p);
      if (v35 < 0)
      {
        operator delete(__p[0]);
        if (*(a1 + 4))
        {
LABEL_80:
          if (*(a1 + 8))
          {
            goto LABEL_86;
          }

LABEL_84:
          if (!*(a1 + 4))
          {
            sub_3D0C(a2);
          }

LABEL_86:
          v33 = vmul_s32(vmax_s32(vneg_s32(*(a1 + 16)), 0), 0x25800008CA0);
          LODWORD(__p[0]) = v33.i32[0] + 864000 * (-*(a1 + 12) & ~(-*(a1 + 12) >> 31)) + v33.i32[1];
          sub_375C(a4);
        }
      }

      else if (*(a1 + 4))
      {
        goto LABEL_80;
      }

      sub_3B98(a2);
      if (*(a1 + 8))
      {
        goto LABEL_86;
      }

      goto LABEL_84;
    }
  }

  v9 = sub_3550(a4, a2);
  v10 = *(a1 + 16);
  v11 = *(a1 + 20);
  v12 = v10 - 1;
  v13 = v11 + 60;
  if (v10 < 1)
  {
    v13 = 0;
    v12 = *(a1 + 16);
  }

  if (v11 < 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(a1 + 20);
  }

  if (v11 < 0)
  {
    LOBYTE(v10) = v12;
  }

  sub_3E48(v9, v10);
  sub_3EC8(a4, v14);
  if ((*(a1 + 24) & 0x7FLL) != 0)
  {
    v15 = *(a1 + 24);
  }

  else
  {
    v15 = 127;
  }

  v16 = sub_40A8(a4);
  if (!a3)
  {
    if (v16 > 6)
    {
      goto LABEL_87;
    }

    if ((v15 >> v16))
    {
      result = sub_466C(a4, a2);
      if (!result)
      {
        return result;
      }
    }

    sub_4614(a4, 1);
    v26 = sub_40A8(a4);
    if (v26 > 6)
    {
      goto LABEL_87;
    }

    if ((v15 >> v26))
    {
      result = sub_466C(a4, a2);
      if (!result)
      {
        return result;
      }
    }

    sub_4614(a4, 1);
    v27 = sub_40A8(a4);
    if (v27 > 6)
    {
      goto LABEL_87;
    }

    if ((v15 >> v27))
    {
      result = sub_466C(a4, a2);
      if (!result)
      {
        return result;
      }
    }

    sub_4614(a4, 1);
    v28 = sub_40A8(a4);
    if (v28 > 6)
    {
      goto LABEL_87;
    }

    if ((v15 >> v28))
    {
      result = sub_466C(a4, a2);
      if (!result)
      {
        return result;
      }
    }

    sub_4614(a4, 1);
    v29 = sub_40A8(a4);
    if (v29 > 6)
    {
      goto LABEL_87;
    }

    if ((v15 >> v29))
    {
      result = sub_466C(a4, a2);
      if (!result)
      {
        return result;
      }
    }

    sub_4614(a4, 1);
    v30 = sub_40A8(a4);
    if (v30 > 6)
    {
      goto LABEL_87;
    }

    if ((v15 >> v30))
    {
      result = sub_466C(a4, a2);
      if (!result)
      {
        return result;
      }
    }

    sub_4614(a4, 1);
    v31 = sub_40A8(a4);
    if (v31 > 6)
    {
      goto LABEL_87;
    }

    if ((v15 >> v31))
    {
      result = sub_466C(a4, a2);
      if (!result)
      {
        return result;
      }
    }

    sub_4614(a4, 1);
    v32 = sub_40A8(a4);
    if (v32 > 6)
    {
LABEL_87:
      sub_49EC("bitset test argument out of range");
    }

    if ((v15 >> v32))
    {
      result = sub_466C(a4, a2);
      if ((result & 1) == 0)
      {
        return result;
      }
    }

LABEL_75:
    v25 = 1;
    return sub_4614(a4, v25);
  }

  if (a3 != 1)
  {
    if (v16 > 6)
    {
      goto LABEL_87;
    }

    sub_4614(a4, 1);
    if (sub_40A8(a4) > 6)
    {
      goto LABEL_87;
    }

    sub_4614(a4, 1);
    if (sub_40A8(a4) > 6)
    {
      goto LABEL_87;
    }

    sub_4614(a4, 1);
    if (sub_40A8(a4) > 6)
    {
      goto LABEL_87;
    }

    sub_4614(a4, 1);
    if (sub_40A8(a4) > 6)
    {
      goto LABEL_87;
    }

    sub_4614(a4, 1);
    if (sub_40A8(a4) > 6)
    {
      goto LABEL_87;
    }

    sub_4614(a4, 1);
    if (sub_40A8(a4) > 6)
    {
      goto LABEL_87;
    }

    sub_4614(a4, 1);
    if (sub_40A8(a4) > 6)
    {
      goto LABEL_87;
    }

    goto LABEL_75;
  }

  if (v16 > 6)
  {
    goto LABEL_87;
  }

  if ((v15 >> v16))
  {
    result = sub_46B4(a4, a2);
    if (!result)
    {
      return result;
    }
  }

  sub_4614(a4, 0xFFFFFFFFLL);
  v18 = sub_40A8(a4);
  if (v18 > 6)
  {
    goto LABEL_87;
  }

  if ((v15 >> v18))
  {
    result = sub_46B4(a4, a2);
    if (!result)
    {
      return result;
    }
  }

  sub_4614(a4, 0xFFFFFFFFLL);
  v19 = sub_40A8(a4);
  if (v19 > 6)
  {
    goto LABEL_87;
  }

  if ((v15 >> v19))
  {
    result = sub_46B4(a4, a2);
    if (!result)
    {
      return result;
    }
  }

  sub_4614(a4, 0xFFFFFFFFLL);
  v20 = sub_40A8(a4);
  if (v20 > 6)
  {
    goto LABEL_87;
  }

  if ((v15 >> v20))
  {
    result = sub_46B4(a4, a2);
    if (!result)
    {
      return result;
    }
  }

  sub_4614(a4, 0xFFFFFFFFLL);
  v21 = sub_40A8(a4);
  if (v21 > 6)
  {
    goto LABEL_87;
  }

  if ((v15 >> v21))
  {
    result = sub_46B4(a4, a2);
    if (!result)
    {
      return result;
    }
  }

  sub_4614(a4, 0xFFFFFFFFLL);
  v22 = sub_40A8(a4);
  if (v22 > 6)
  {
    goto LABEL_87;
  }

  if ((v15 >> v22))
  {
    result = sub_46B4(a4, a2);
    if (!result)
    {
      return result;
    }
  }

  sub_4614(a4, 0xFFFFFFFFLL);
  v23 = sub_40A8(a4);
  if (v23 > 6)
  {
    goto LABEL_87;
  }

  if ((v15 >> v23))
  {
    result = sub_46B4(a4, a2);
    if (!result)
    {
      return result;
    }
  }

  sub_4614(a4, 0xFFFFFFFFLL);
  v24 = sub_40A8(a4);
  if (v24 > 6)
  {
    goto LABEL_87;
  }

  if ((v15 >> v24) & 1) == 0 || (result = sub_46B4(a4, a2), (result))
  {
    v25 = 0xFFFFFFFFLL;
    return sub_4614(a4, v25);
  }

  return result;
}

void sub_E7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_3874(v5);
  sub_25F00(va);
  _Unwind_Resume(a1);
}

void sub_E82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_25F00(va);
  _Unwind_Resume(a1);
}

void sub_E840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_E870(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v18 = a4;
  if (a4 == 0x7FFFFFFF)
  {
    sub_3550(v17, a3);
  }

  else
  {
    sub_4784(a3, &v18, v17);
  }

  sub_DFB8(a1, v17, 1, v16);
  v7 = sub_3F80(v16);
  if (v7 <= sub_3F80(v17))
  {
    if (*(a2 + 4) > 0 || *(a2 + 8) > 0 || *(a2 + 12) > 0 || (*(a2 + 45) & 1) != 0 || *(a2 + 32) > 0 || *(a2 + 36) > 0 || *(a2 + 40) > 0 || (*(a2 + 24) & 0x7F) != 0)
    {
      v9 = sub_3F80(a3);
      if (*a2)
      {
        sub_3550(v15, v16);
        if (*(a2 + 4))
        {
          v10 = *(a2 + 4) + sub_3B98(v15);
          if (v10 >= 2037)
          {
            LOWORD(v10) = 2037;
          }

          sub_3B40(v15, v10);
        }

        v11 = *(a2 + 8);
        if (v11)
        {
          sub_3D70(v15, v11);
        }

        v14 = 36000 * (*(a2 + 16) + 24 * *(a2 + 12)) + 600 * *(a2 + 20);
        sub_4724(v15, &v14);
        v12 = sub_3F80(v15);
      }

      else
      {
        sub_DFB8(a2, v16, 0, v15);
        v12 = sub_3F80(v15);
      }

      v8 = v9 < v12;
      sub_3874(v15);
    }

    else
    {
      v8 = *(a1 + 4) > 0;
    }
  }

  else
  {
    v8 = 0;
  }

  sub_3874(v16);
  sub_3874(v17);
  return v8;
}

void sub_EA58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_3874(va);
  sub_3874(va1);
  sub_3874(v2 - 88);
  _Unwind_Resume(a1);
}

void sub_EA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_3874(va);
  sub_3874(v8 - 88);
  _Unwind_Resume(a1);
}

BOOL sub_EAD0(unsigned int *a1, _OWORD *a2)
{
  v4 = sub_39E8(a1);
  sub_25FB0(v4, v13);
  sub_CC2C();
  if (sub_138B0(qword_278EB08, v13))
  {
    v5 = a2[1];
    v12[0] = *a2;
    v12[1] = v5;
    v6 = a2[3];
    v12[2] = a2[2];
    v7 = a2[4];
    v8 = a2[5];
    v11[0] = v6;
    v11[1] = v7;
    DWORD2(v12[0]) = (DWORD2(v12[0]) + 5) % 12 + 1;
    v11[2] = v8;
    DWORD2(v11[0]) = (DWORD2(v6) + 5) % 12 + 1;
    result = sub_E870(v12, v11, a1, 0x7FFFFFFFLL);
  }

  else
  {
    result = sub_E870(a2, (a2 + 3), a1, 0x7FFFFFFFLL);
  }

  if (v14 < 0)
  {
    v10 = result;
    operator delete(v13[0]);
    return v10;
  }

  return result;
}

void sub_EBE8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 17) < 0)
  {
    operator delete(*(v1 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_EC08(uint64_t a1, int8x16_t *a2)
{
  *a1 = 0;
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 30) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 78) = 0u;
  *(a1 + 96) = 0;
  v2 = a2[1].i8[7];
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2->i64[0];
  }

  if (v2 >= 0)
  {
    v4 = a2[1].u8[7];
  }

  else
  {
    v4 = a2->u64[1];
  }

  sub_2419C(v3, v4, 0x2Cu, &__p);
}

void sub_ECE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_ECFC(uint64_t a1, void *a2)
{
  v5 = 13;
  strcpy(__p, "winter_season");
  v3 = sub_5F8FC(a2, __p);
  sub_EC08(a1, v3);
}

void sub_EE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_EE90(uint64_t a1, void *a2)
{
  v5 = 13;
  strcpy(__p, "fuzzy_context");
  v3 = sub_5F5AC(a2, __p);
  sub_ECFC(a1, v3);
}

void sub_EF1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_EF38(_OWORD *a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v16 = 0;
  *v17 = 0u;
  *v18 = 0u;
  *v19 = 0u;
  v20 = 0;
  v21 = 1065353216;
  v22 = -1;
  v23 = 0x7FFFFFFF;
  v25 = 0;
  v26 = 0;
  __p = 0;
  if (sub_F0B0(a1, a2, &v16) && !v16)
  {
    v8 = __p;
    if (__p == v25)
    {
      v7 = 1;
      if (!__p)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v7 = sub_CF0C(&v16, a3, a4, 0, a1);
      v8 = __p;
      if (!__p)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v7 = 0;
    v8 = __p;
    if (!__p)
    {
      goto LABEL_11;
    }
  }

  v9 = v25;
  v10 = v8;
  if (v25 != v8)
  {
    do
    {
      v11 = *(v9 - 3);
      if (v11)
      {
        *(v9 - 2) = v11;
        operator delete(v11);
      }

      v9 -= 144;
    }

    while (v9 != v8);
    v10 = __p;
  }

  v25 = v8;
  operator delete(v10);
LABEL_11:
  v12 = v19[1];
  if (v19[1])
  {
    do
    {
      v13 = *v12;
      operator delete(v12);
      v12 = v13;
    }

    while (v13);
  }

  v14 = v18[1];
  v18[1] = 0;
  if (v14)
  {
    operator delete(v14);
  }

  if (SHIBYTE(v18[0]) < 0)
  {
    operator delete(v17[0]);
  }

  return v7;
}

BOOL sub_F0B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24D4C((a1 + 416), a2);
  if (v6)
  {
    v7 = v6;
    v9 = v6 + 5;
    v8 = *(v6 + 10);
    *a3 = v8;
    v10 = a3 + 2;
    if (v9 == a3)
    {
      v14 = v7[14];
      a3[20] = *(v7 + 30);
      *(a3 + 9) = v14;
    }

    else
    {
      v11 = (v9 + 1);
      v12 = *(v7 + 71);
      if (*(a3 + 31) < 0)
      {
        if (v12 >= 0)
        {
          v15 = v11;
        }

        else
        {
          v15 = v7[6];
        }

        if (v12 >= 0)
        {
          v16 = *(v7 + 71);
        }

        else
        {
          v16 = v7[7];
        }

        sub_13B38(v10, v15, v16);
      }

      else if ((*(v7 + 71) & 0x80) != 0)
      {
        sub_13A68(v10, v7[6], v7[7]);
      }

      else
      {
        v13 = *v11;
        *(a3 + 3) = v11[2];
        *v10 = v13;
      }

      a3[16] = *(v7 + 26);
      sub_13C60((a3 + 8), v7[11], 0);
      v33 = v7[14];
      a3[20] = *(v7 + 30);
      *(a3 + 9) = v33;
      sub_14300(a3 + 11, v7[16], v7[17], 0x8E38E38E38E38E39 * ((v7[17] - v7[16]) >> 4));
      v8 = *a3;
    }

    return v8 == 0;
  }

  else
  {
    v111 = a1;
    v110 = a2;
    if (*(a2 + 23) < 0)
    {
      sub_325C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v114 = *(a2 + 16);
    }

    *a3 = 0;
    v17 = HIBYTE(v114);
    v18 = HIBYTE(v114);
    v19 = __p[0];
    v20 = __p[1];
    if (v114 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if (v114 >= 0)
    {
      v22 = HIBYTE(v114);
    }

    else
    {
      v22 = __p[1];
    }

    v23 = v21 + v22;
    v24 = memchr(v21, 9, v22);
    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v23;
    }

    v26 = v25 + 1;
    if (v25 != v23 && v26 != v23)
    {
      do
      {
        v28 = *v26;
        if (v28 != 9)
        {
          *v25++ = v28;
        }

        ++v26;
      }

      while (v26 != v23);
      v17 = HIBYTE(v114);
      v19 = __p[0];
      v20 = __p[1];
      v18 = HIBYTE(v114);
    }

    if (v18 >= 0)
    {
      v29 = __p + v17;
    }

    else
    {
      v29 = &v20[v19];
    }

    if (v18 >= 0)
    {
      v30 = __p;
    }

    else
    {
      v30 = v19;
    }

    if (v18 >= 0)
    {
      v31 = v17;
    }

    else
    {
      v31 = v20;
    }

    v32 = v25 - v30;
    if (v31 < v25 - v30)
    {
      goto LABEL_216;
    }

    if (v29 - v25 == -1)
    {
      if (v18 < 0)
      {
        __p[1] = (v25 - v30);
      }

      else
      {
        HIBYTE(v114) = v32 & 0x7F;
        v19 = __p;
      }

      *(v19 + v32) = 0;
    }

    else
    {
      sub_148E0(__p, v32, v29 - v25);
    }

    v35 = HIBYTE(v114);
    v36 = HIBYTE(v114);
    v37 = __p[0];
    v38 = __p[1];
    if (v114 >= 0)
    {
      v39 = __p;
    }

    else
    {
      v39 = __p[0];
    }

    if (v114 >= 0)
    {
      v40 = HIBYTE(v114);
    }

    else
    {
      v40 = __p[1];
    }

    v41 = v39 + v40;
    v42 = memchr(v39, 13, v40);
    if (v42)
    {
      v43 = v42;
    }

    else
    {
      v43 = v41;
    }

    v44 = v43 + 1;
    if (v43 != v41 && v44 != v41)
    {
      do
      {
        v46 = *v44;
        if (v46 != 13)
        {
          *v43++ = v46;
        }

        ++v44;
      }

      while (v44 != v41);
      v35 = HIBYTE(v114);
      v37 = __p[0];
      v38 = __p[1];
      v36 = HIBYTE(v114);
    }

    v47 = v36 >= 0 ? (__p + v35) : &v38[v37];
    v48 = v36 >= 0 ? __p : v37;
    v49 = v36 >= 0 ? v35 : v38;
    v50 = v43 - v48;
    if (v49 < v43 - v48)
    {
      goto LABEL_216;
    }

    if (v47 - v43 == -1)
    {
      if (v36 < 0)
      {
        __p[1] = (v43 - v48);
      }

      else
      {
        HIBYTE(v114) = v50 & 0x7F;
        v37 = __p;
      }

      *(v37 + v50) = 0;
    }

    else
    {
      sub_148E0(__p, v50, v47 - v43);
    }

    v51 = HIBYTE(v114);
    v52 = HIBYTE(v114);
    v53 = __p[0];
    v54 = __p[1];
    if (v114 >= 0)
    {
      v55 = __p;
    }

    else
    {
      v55 = __p[0];
    }

    if (v114 >= 0)
    {
      v56 = HIBYTE(v114);
    }

    else
    {
      v56 = __p[1];
    }

    v57 = v55 + v56;
    v58 = memchr(v55, 10, v56);
    if (v58)
    {
      v59 = v58;
    }

    else
    {
      v59 = v57;
    }

    v60 = v59 + 1;
    if (v59 != v57 && v60 != v57)
    {
      do
      {
        v62 = *v60;
        if (v62 != 10)
        {
          *v59++ = v62;
        }

        ++v60;
      }

      while (v60 != v57);
      v51 = HIBYTE(v114);
      v53 = __p[0];
      v54 = __p[1];
      v52 = HIBYTE(v114);
    }

    v63 = v52 >= 0 ? (__p + v51) : &v54[v53];
    v64 = v52 >= 0 ? __p : v53;
    v65 = v52 >= 0 ? v51 : v54;
    v66 = v59 - v64;
    if (v65 < v59 - v64)
    {
      goto LABEL_216;
    }

    if (v63 - v59 == -1)
    {
      if (v52 < 0)
      {
        __p[1] = (v59 - v64);
      }

      else
      {
        HIBYTE(v114) = v66 & 0x7F;
        v53 = __p;
      }

      *(v53 + v66) = 0;
    }

    else
    {
      sub_148E0(__p, v66, v63 - v59);
    }

    v67 = HIBYTE(v114);
    v68 = HIBYTE(v114);
    v69 = __p[0];
    v70 = __p[1];
    if (v114 >= 0)
    {
      v71 = __p;
    }

    else
    {
      v71 = __p[0];
    }

    if (v114 >= 0)
    {
      v72 = HIBYTE(v114);
    }

    else
    {
      v72 = __p[1];
    }

    v73 = v71 + v72;
    v74 = memchr(v71, 32, v72);
    if (v74)
    {
      v75 = v74;
    }

    else
    {
      v75 = v73;
    }

    v76 = v75 + 1;
    if (v75 != v73 && v76 != v73)
    {
      do
      {
        v78 = *v76;
        if (v78 != 32)
        {
          *v75++ = v78;
        }

        ++v76;
      }

      while (v76 != v73);
      v67 = HIBYTE(v114);
      v69 = __p[0];
      v70 = __p[1];
      v68 = HIBYTE(v114);
    }

    v79 = v68 >= 0 ? (__p + v67) : &v70[v69];
    v80 = v68 >= 0 ? __p : v69;
    v81 = v68 >= 0 ? v67 : v70;
    v82 = v75 - v80;
    if (v81 < v75 - v80)
    {
      goto LABEL_216;
    }

    if (v79 - v75 == -1)
    {
      if (v68 < 0)
      {
        __p[1] = (v75 - v80);
      }

      else
      {
        HIBYTE(v114) = v82 & 0x7F;
        v69 = __p;
      }

      *(v69 + v82) = 0;
    }

    else
    {
      sub_148E0(__p, v82, v79 - v75);
    }

    v83 = HIBYTE(v114);
    v84 = HIBYTE(v114);
    v85 = __p[0];
    v86 = __p[1];
    if (v114 >= 0)
    {
      v87 = __p;
    }

    else
    {
      v87 = __p[0];
    }

    if (v114 >= 0)
    {
      v88 = HIBYTE(v114);
    }

    else
    {
      v88 = __p[1];
    }

    v89 = v87 + v88;
    v90 = memchr(v87, 0, v88);
    if (v90)
    {
      v91 = v90;
    }

    else
    {
      v91 = v89;
    }

    v92 = v91 + 1;
    if (v91 != v89 && v92 != v89)
    {
      do
      {
        if (*v92)
        {
          *v91++ = *v92;
        }

        ++v92;
      }

      while (v92 != v89);
      v83 = HIBYTE(v114);
      v85 = __p[0];
      v86 = __p[1];
      v84 = HIBYTE(v114);
    }

    v94 = v84 >= 0 ? (__p + v83) : &v86[v85];
    v95 = v84 >= 0 ? __p : v85;
    v96 = v84 >= 0 ? v83 : v86;
    v97 = v91 - v95;
    if (v96 < v91 - v95)
    {
LABEL_216:
      sub_49D4();
    }

    if (v94 - v91 == -1)
    {
      if (v84 < 0)
      {
        __p[1] = (v91 - v95);
      }

      else
      {
        HIBYTE(v114) = v97 & 0x7F;
        v85 = __p;
      }

      *(v85 + v97) = 0;
    }

    else
    {
      sub_148E0(__p, v97, v94 - v91);
    }

    v98 = HIBYTE(v114);
    v99 = HIBYTE(v114);
    if (v114 < 0)
    {
      v98 = __p[1];
    }

    v34 = v98 != 0;
    if (v98)
    {
      sub_14984(&v112, "\\[\\(((t[0-9])+)\\)\\]", 0);
    }

    *a3 = 1;
    v100 = v111;
    if (v99 < 0)
    {
      operator delete(__p[0]);
      v100 = v111;
    }

    v112.__locale_ = v110;
    v101 = sub_24F04((v100 + 416), v110);
    v102 = v101;
    *(v101 + 10) = *a3;
    if (v101 + 5 == a3)
    {
      v105 = *(a3 + 9);
      *(v101 + 30) = a3[20];
      v101[14] = v105;
    }

    else
    {
      v103 = *(a3 + 31);
      if (*(v101 + 71) < 0)
      {
        if (v103 >= 0)
        {
          v106 = a3 + 2;
        }

        else
        {
          v106 = *(a3 + 1);
        }

        if (v103 >= 0)
        {
          v107 = *(a3 + 31);
        }

        else
        {
          v107 = *(a3 + 2);
        }

        sub_13B38((v101 + 6), v106, v107);
      }

      else if ((*(a3 + 31) & 0x80) != 0)
      {
        sub_13A68(v101 + 48, *(a3 + 1), *(a3 + 2));
      }

      else
      {
        v104 = *(a3 + 2);
        v101[8] = *(a3 + 3);
        *(v101 + 3) = v104;
      }

      *(v102 + 26) = a3[16];
      sub_13C60((v102 + 9), *(a3 + 6), 0);
      v108 = *(a3 + 9);
      *(v102 + 30) = a3[20];
      v102[14] = v108;
      sub_14300(v102 + 16, *(a3 + 11), *(a3 + 12), 0x8E38E38E38E38E39 * ((*(a3 + 12) - *(a3 + 11)) >> 4));
    }
  }

  return v34;
}