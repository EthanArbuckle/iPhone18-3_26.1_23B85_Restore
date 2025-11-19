void sub_A0CF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_37484(va);
  sub_34BE0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_A0D0AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[5];
      if (v6)
      {
        v2[6] = v6;
        operator delete(v6);
      }

      v7 = v2[2];
      if (v7)
      {
        v2[3] = v7;
        operator delete(v7);
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

void sub_A0D128(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      if (*v3 == 3)
      {
        v6 = a2[2];
        if (v5 < v6)
        {
          *v5 = *(v3 + 1896);
          v5 += 8;
        }

        else
        {
          v7 = v5;
          v8 = v5 >> 3;
          v9 = v8 + 1;
          if ((v8 + 1) >> 61)
          {
            *a2 = 0;
            sub_1794();
          }

          if (v6 >> 2 > v9)
          {
            v9 = v6 >> 2;
          }

          if (v6 >= 0x7FFFFFFFFFFFFFF8)
          {
            v10 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v10 = v9;
          }

          if (v10)
          {
            if (!(v10 >> 61))
            {
              operator new();
            }

            *a2 = 0;
            sub_1808();
          }

          v11 = (8 * v8);
          *v11 = *(v3 + 1896);
          v5 = (v11 + 1);
          memcpy(0, 0, v7);
          a2[1] = v5;
          a2[2] = 0;
        }

        a2[1] = v5;
      }

      v3 += 5704;
    }

    while (v3 != v4);
  }

  *a2 = 0;
}

void sub_A0D278(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_A0D2A0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      *v11 = 0u;
      *__p = 0u;
      v13 = 1065353216;
      if (v4 != v5)
      {
        v6 = v4;
        do
        {
          sub_9C6938(v11, v6);
          if (v7)
          {
            *v4++ = *v6;
          }

          ++v6;
        }

        while (v6 != v5);
        v8 = __p[0];
        if (__p[0])
        {
          do
          {
            v9 = *v8;
            operator delete(v8);
            v8 = v9;
          }

          while (v9);
        }

        v10 = v11[0];
        v11[0] = 0;
        if (v10)
        {
          operator delete(v10);
        }
      }

      if (v4 != *(v2 + 16))
      {
        *(v2 + 16) = v4;
      }

      v2 += 32;
    }

    while (v2 != v3);
  }
}

void *sub_A0D3B0(void *a1, uint64_t **a2)
{
  v2 = a2[1];
  v3 = 31337;
  if (*a2 != v2)
  {
    v4 = *a2;
    do
    {
      v5 = *v4++;
      v3 ^= (v3 << 6) + (v3 >> 2) + 2654435769u + v5;
    }

    while (v4 != v2);
  }

  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_34;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v3;
    if (v3 >= *&v6)
    {
      v8 = v3 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v3;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (result = *v9) == 0)
  {
LABEL_34:
    sub_A0D764();
  }

  v11 = (v2 - *a2);
  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v16 = result[1];
      if (v16 == v3)
      {
        v18 = result[2];
        v17 = result[3];
        if ((v17 - v18) == v11)
        {
          if (v18 == v17)
          {
            return result;
          }

          for (i = *a2; *v18 == *i; ++i)
          {
            v18 += 8;
            if (v18 == v17)
            {
              return result;
            }
          }
        }
      }

      else if ((v16 & (*&v6 - 1)) != v8)
      {
        goto LABEL_34;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_34;
      }
    }
  }

  while (1)
  {
    v12 = result[1];
    if (v12 == v3)
    {
      break;
    }

    if (v12 >= *&v6)
    {
      v12 %= *&v6;
    }

    if (v12 != v8)
    {
      goto LABEL_34;
    }

LABEL_15:
    result = *result;
    if (!result)
    {
      goto LABEL_34;
    }
  }

  v14 = result[2];
  v13 = result[3];
  if ((v13 - v14) != v11)
  {
    goto LABEL_15;
  }

  if (v14 != v13)
  {
    for (j = *a2; *v14 == *j; ++j)
    {
      v14 += 8;
      if (v14 == v13)
      {
        return result;
      }
    }

    goto LABEL_15;
  }

  return result;
}

void sub_A0D750(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A0D858(va);
  _Unwind_Resume(a1);
}

void sub_A0D834(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 24) = v5;
    operator delete(v5);
  }

  sub_A0D858(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_A0D858(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[5];
      if (v3)
      {
        v2[6] = v3;
        operator delete(v3);
      }

      v4 = v2[2];
      if (v4)
      {
        v2[3] = v4;
        operator delete(v4);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_A0D8BC(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v129 = (a2 - 32);
  v7 = a1;
  while (1)
  {
    a1 = v7;
    v8 = (a2 - v7) >> 5;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:

          sub_A0E348(v7, (v7 + 32), v129);
          return;
        case 4:
          sub_A0E348(v7, (v7 + 32), (v7 + 64));
          v48 = *(v7 + 64);
          if (*(a2 - 32) < v48)
          {
            v49 = *(v7 + 88);
            v50 = *(v7 + 72);
            *(v7 + 80) = 0;
            *(v7 + 88) = 0;
            *(v7 + 72) = 0;
            *(v7 + 64) = *(a2 - 32);
            *(v7 + 72) = *(a2 - 24);
            *(v7 + 88) = *(a2 - 8);
            *(a2 - 32) = v48;
            *(a2 - 24) = v50;
            *(a2 - 8) = v49;
            v51 = *(v7 + 64);
            v52 = *(v7 + 32);
            if (v51 < v52)
            {
              v53 = *(v7 + 56);
              v55 = *(v7 + 72);
              v54 = *(v7 + 80);
              v56 = *(v7 + 88);
              *(v7 + 56) = v56;
              *(v7 + 64) = v52;
              v57 = *(v7 + 40);
              *(v7 + 32) = v51;
              *(v7 + 40) = v55;
              *(v7 + 48) = v54;
              *(v7 + 72) = v57;
              *(v7 + 88) = v53;
              v58 = *v7;
              if (v51 < *v7)
              {
                v59 = *(v7 + 24);
                *(v7 + 24) = v56;
                *(v7 + 32) = v58;
                v60 = *(v7 + 8);
                *v7 = v51;
                *(v7 + 8) = v55;
                *(v7 + 16) = v54;
                *(v7 + 40) = v60;
                *(v7 + 56) = v59;
              }
            }
          }

          return;
        case 5:

          sub_A0E474(v7, v7 + 32, v7 + 64, (v7 + 96), v129);
          return;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        v45 = *v7;
        if (*(a2 - 32) < *v7)
        {
          v46 = *(v7 + 24);
          v47 = *(v7 + 8);
          *(v7 + 16) = 0;
          *(v7 + 24) = 0;
          *(v7 + 8) = 0;
          *v7 = *(a2 - 32);
          *(v7 + 8) = *(a2 - 24);
          *(v7 + 24) = *(a2 - 8);
          *(a2 - 32) = v45;
          *(a2 - 24) = v47;
          *(a2 - 8) = v46;
        }

        return;
      }
    }

    if (v8 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v7 == a2)
      {
        return;
      }

      v77 = (v8 - 2) >> 1;
      v78 = v77;
      while (1)
      {
        if (v77 >= v78)
        {
          v80 = (2 * (v78 & 0x7FFFFFFFFFFFFFFLL)) | 1;
          v81 = (v7 + 32 * v80);
          if (2 * (v78 & 0x7FFFFFFFFFFFFFFLL) + 2 >= v8)
          {
            v82 = *v81;
            v84 = (v7 + 32 * v78);
            v85 = *v84;
            if (*v81 >= *v84)
            {
              goto LABEL_113;
            }
          }

          else
          {
            v82 = v81[4];
            v83 = *v81 >= v82;
            if (*v81 > v82)
            {
              v82 = *v81;
            }

            if (!v83)
            {
              v81 += 4;
              v80 = 2 * (v78 & 0x7FFFFFFFFFFFFFFLL) + 2;
            }

            v84 = (v7 + 32 * v78);
            v85 = *v84;
            if (v82 >= *v84)
            {
LABEL_113:
              v86 = *(v84 + 1);
              v87 = v84[3];
              v84[2] = 0;
              v84[3] = 0;
              v84[1] = 0;
              while (1)
              {
                v89 = v84;
                v84 = v81;
                *v89 = v82;
                v90 = v81[3];
                *(v89 + 1) = *(v84 + 1);
                v89[3] = v90;
                v84[1] = 0;
                v84[2] = 0;
                v84[3] = 0;
                if (v77 < v80)
                {
                  break;
                }

                v91 = (2 * v80) | 1;
                v81 = (v7 + 32 * v91);
                v80 = 2 * v80 + 2;
                if (v80 < v8)
                {
                  v82 = *v81;
                  v88 = v81[4];
                  if (*v81 <= v88)
                  {
                    v82 = v81[4];
                  }

                  if (*v81 >= v88)
                  {
                    v80 = v91;
                  }

                  else
                  {
                    v81 += 4;
                  }

                  if (v82 < v85)
                  {
                    break;
                  }
                }

                else
                {
                  v82 = *v81;
                  v80 = v91;
                  if (*v81 < v85)
                  {
                    break;
                  }
                }
              }

              *v84 = v85;
              *(v84 + 1) = v86;
              v84[3] = v87;
            }
          }
        }

        v79 = v78-- <= 0;
        if (v79)
        {
          do
          {
            v92 = 0;
            v93 = *v7;
            v94 = *(v7 + 8);
            v95 = *(v7 + 16);
            v96 = *(v7 + 24);
            *(v7 + 8) = 0;
            *(v7 + 16) = 0;
            v97 = v7;
            *(v7 + 24) = 0;
            do
            {
              v105 = v97 + 32 * v92;
              v103 = (v105 + 32);
              v106 = (2 * v92) | 1;
              v92 = 2 * v92 + 2;
              if (v92 < v8)
              {
                v100 = *(v105 + 64);
                v99 = (v105 + 64);
                v98 = v100;
                v101 = *(v99 - 4);
                v102 = v101 >= v100;
                if (v101 > v100)
                {
                  v98 = *(v99 - 4);
                }

                if (v102)
                {
                  v92 = v106;
                }

                else
                {
                  v103 = v99;
                }
              }

              else
              {
                v98 = *v103;
                v92 = v106;
              }

              *v97 = v98;
              v104 = v103[3];
              *(v97 + 8) = *(v103 + 1);
              *(v97 + 24) = v104;
              v103[1] = 0;
              v103[2] = 0;
              v103[3] = 0;
              v97 = v103;
            }

            while (v92 <= ((v8 - 2) >> 1));
            if (v103 == (a2 - 32))
            {
              *v103 = v93;
              v103[1] = v94;
              v103[2] = v95;
              v103[3] = v96;
            }

            else
            {
              *v103 = *(a2 - 32);
              v107 = *(a2 - 8);
              *(v103 + 1) = *(a2 - 24);
              v103[3] = v107;
              *(a2 - 32) = v93;
              *(a2 - 24) = v94;
              *(a2 - 16) = v95;
              *(a2 - 8) = v96;
              v108 = (v103 - v7 + 32) >> 5;
              v79 = v108 < 2;
              v109 = v108 - 2;
              if (!v79)
              {
                v110 = v109 >> 1;
                v111 = (v7 + 32 * v110);
                v112 = *v103;
                if (*v111 < *v103)
                {
                  v113 = *(v103 + 1);
                  v114 = v103[3];
                  v103[1] = 0;
                  v103[2] = 0;
                  v103[3] = 0;
                  v115 = *v111;
                  do
                  {
                    v116 = v103;
                    v103 = v111;
                    *v116 = v115;
                    v117 = v111[3];
                    *(v116 + 1) = *(v103 + 1);
                    v116[3] = v117;
                    v103[1] = 0;
                    v103[2] = 0;
                    v103[3] = 0;
                    if (!v110)
                    {
                      break;
                    }

                    v110 = (v110 - 1) >> 1;
                    v111 = (v7 + 32 * v110);
                    v115 = *v111;
                  }

                  while (*v111 < v112);
                  *v103 = v112;
                  *(v103 + 1) = v113;
                  v103[3] = v114;
                }
              }
            }

            a2 -= 32;
            v79 = v8-- <= 2;
          }

          while (!v79);
          return;
        }
      }
    }

    v9 = v8 >> 1;
    v10 = v7 + 32 * (v8 >> 1);
    if (v8 < 0x81)
    {
      sub_A0E348((a1 + 32 * (v8 >> 1)), a1, v129);
      --a3;
      v15 = *a1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_16:
      v16 = 0;
      v17 = *(a1 + 8);
      v18 = *(a1 + 16);
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      do
      {
        v19 = *(a1 + v16 + 32);
        v16 += 32;
      }

      while (v19 < v15);
      v20 = a1 + v16;
      v21 = a2;
      if (v16 == 32)
      {
        v21 = a2;
        do
        {
          if (v20 >= v21)
          {
            break;
          }

          v23 = *(v21 - 32);
          v21 -= 32;
        }

        while (v23 >= v15);
      }

      else
      {
        do
        {
          v22 = *(v21 - 32);
          v21 -= 32;
        }

        while (v22 >= v15);
      }

      v7 = a1 + v16;
      if (v20 < v21)
      {
        v24 = v21;
        do
        {
          v25 = *(v7 + 24);
          v26 = *(v7 + 8);
          *(v7 + 16) = 0;
          *(v7 + 24) = 0;
          *(v7 + 8) = 0;
          *v7 = *v24;
          *(v7 + 8) = *(v24 + 8);
          *(v7 + 24) = *(v24 + 24);
          *v24 = v19;
          *(v24 + 8) = v26;
          *(v24 + 24) = v25;
          do
          {
            v27 = *(v7 + 32);
            v7 += 32;
            v19 = v27;
          }

          while (v27 < v15);
          do
          {
            v28 = *(v24 - 32);
            v24 -= 32;
          }

          while (v28 >= v15);
        }

        while (v7 < v24);
      }

      if (v7 - 32 == a1)
      {
        v30 = *(v7 - 24);
        *(v7 - 32) = v15;
        if (v30)
        {
          *(v7 - 16) = v30;
          v128 = v18;
          operator delete(v30);
          v18 = v128;
          *(v7 - 24) = 0;
        }
      }

      else
      {
        *a1 = *(v7 - 32);
        v29 = *(a1 + 8);
        if (v29)
        {
          *(a1 + 16) = v29;
          v127 = v18;
          operator delete(v29);
          v18 = v127;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
        }

        *(a1 + 8) = *(v7 - 24);
        *(a1 + 24) = *(v7 - 8);
        *(v7 - 32) = v15;
        *(v7 - 24) = 0;
      }

      *(v7 - 24) = v17;
      *(v7 - 16) = v18;
      if (v20 < v21)
      {
LABEL_39:
        sub_A0D8BC(a1, v7 - 32, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v31 = sub_A0E694(a1, v7 - 32);
        if (sub_A0E694(v7, a2))
        {
          a2 = v7 - 32;
          if (v31)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v31)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      sub_A0E348(a1, (a1 + 32 * (v8 >> 1)), v129);
      v11 = 32 * v9;
      sub_A0E348((a1 + 32), (v11 + a1 - 32), (a2 - 64));
      sub_A0E348((a1 + 64), (a1 + 32 + v11), (a2 - 96));
      sub_A0E348((v11 + a1 - 32), v10, (a1 + 32 + v11));
      v12 = *a1;
      v13 = *(a1 + 24);
      v14 = *(a1 + 8);
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *a1 = *v10;
      *(a1 + 8) = 0;
      *(a1 + 8) = *(v10 + 8);
      *(a1 + 24) = *(v10 + 24);
      *v10 = v12;
      *(v10 + 8) = v14;
      *(v10 + 24) = v13;
      --a3;
      v15 = *a1;
      if (a4)
      {
        goto LABEL_16;
      }

LABEL_15:
      if (*(a1 - 32) < v15)
      {
        goto LABEL_16;
      }

      v32 = *(a1 + 8);
      v33 = *(a1 + 16);
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      if (v15 >= *v129)
      {
        v35 = a1 + 32;
        do
        {
          v7 = v35;
          if (v35 >= a2)
          {
            break;
          }

          v35 += 32;
        }

        while (v15 >= *v7);
      }

      else
      {
        v7 = a1;
        do
        {
          v34 = *(v7 + 32);
          v7 += 32;
        }

        while (v15 >= v34);
      }

      v36 = a2;
      if (v7 < a2)
      {
        v36 = a2;
        do
        {
          v37 = *(v36 - 32);
          v36 -= 32;
        }

        while (v15 < v37);
      }

      if (v7 < v36)
      {
        v38 = *v7;
        do
        {
          v39 = *(v7 + 24);
          v40 = *(v7 + 8);
          *(v7 + 16) = 0;
          *(v7 + 24) = 0;
          *(v7 + 8) = 0;
          *v7 = *v36;
          *(v7 + 8) = *(v36 + 8);
          *(v7 + 24) = *(v36 + 24);
          *v36 = v38;
          *(v36 + 8) = v40;
          *(v36 + 24) = v39;
          do
          {
            v41 = *(v7 + 32);
            v7 += 32;
            v38 = v41;
          }

          while (v15 >= v41);
          do
          {
            v42 = *(v36 - 32);
            v36 -= 32;
          }

          while (v15 < v42);
        }

        while (v7 < v36);
      }

      if (v7 - 32 == a1)
      {
        v44 = *(v7 - 24);
        *(v7 - 32) = v15;
        if (v44)
        {
          *(v7 - 16) = v44;
          v132 = v33;
          operator delete(v44);
          v33 = v132;
          *(v7 - 24) = 0;
        }
      }

      else
      {
        *a1 = *(v7 - 32);
        v43 = *(a1 + 8);
        if (v43)
        {
          *(a1 + 16) = v43;
          v131 = v33;
          operator delete(v43);
          v33 = v131;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
        }

        *(a1 + 8) = *(v7 - 24);
        *(a1 + 24) = *(v7 - 8);
        *(v7 - 32) = v15;
        *(v7 - 24) = 0;
      }

      a4 = 0;
      *(v7 - 24) = v32;
      *(v7 - 16) = v33;
    }
  }

  v61 = (v7 + 32);
  v63 = v7 == a2 || v61 == a2;
  if (a4)
  {
    if (v63)
    {
      return;
    }

    v64 = 0;
    v65 = v7;
    while (1)
    {
      v66 = v61;
      v67 = v65[4];
      v68 = *v65;
      if (v67 < *v65)
      {
        v69 = v65[5];
        v70 = *(v65 + 3);
        v65[6] = 0;
        v65[7] = 0;
        v65[5] = 0;
        v71 = v66[1];
        *v66 = v68;
        if (v71)
        {
          v66[2] = v71;
          v133 = v70;
          operator delete(v71);
          v70 = v133;
          v66[2] = 0;
          v66[3] = 0;
        }

        v72 = v65 + 1;
        *(v66 + 1) = *(v65 + 1);
        v66[3] = v65[3];
        v65[1] = 0;
        v65[2] = 0;
        v65[3] = 0;
        if (v65 == v7)
        {
          v65 = v7;
        }

        else
        {
          v73 = *(v65 - 4);
          if (v67 < v73)
          {
            v74 = v64;
            while (1)
            {
              v75 = v7 + v74;
              v76 = *(v7 + v74 - 8);
              *(v75 + 8) = *(v7 + v74 - 24);
              *(v75 + 24) = v76;
              *(v75 - 8) = 0;
              *v75 = v73;
              *(v75 - 24) = 0;
              *(v75 - 16) = 0;
              v74 -= 32;
              if (!v74)
              {
                break;
              }

              v73 = *(v75 - 64);
              if (v67 >= v73)
              {
                v65 = (v7 + v74);
                goto LABEL_99;
              }
            }

            v65 = v7;
LABEL_99:
            v72 = (v75 - 24);
          }
        }

        *v65 = v67;
        *v72 = v69;
        *(v65 + 1) = v70;
      }

      v61 = v66 + 4;
      v64 += 32;
      v65 = v66;
      if (v66 + 4 == a2)
      {
        return;
      }
    }
  }

  if (!v63)
  {
    do
    {
      v118 = *v61;
      v119 = *a1;
      if (*v61 < *a1)
      {
        v120 = *(a1 + 40);
        v121 = *(a1 + 48);
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 40) = 0;
        v122 = v61[1];
        *v61 = v119;
        if (v122)
        {
          v61[2] = v122;
          v134 = v121;
          operator delete(v122);
          v121 = v134;
          v61[2] = 0;
          v61[3] = 0;
        }

        v123 = (a1 + 8);
        *(v61 + 1) = *(a1 + 8);
        v61[3] = *(a1 + 24);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        v124 = *(a1 - 32);
        v125 = a1;
        if (v118 < v124)
        {
          v125 = a1;
          do
          {
            v126 = *(v125 - 8);
            *(v125 - 8) = 0;
            *v125 = v124;
            v124 = *(v125 - 64);
            *(v125 + 8) = *(v125 - 24);
            *(v125 + 24) = v126;
            *(v125 - 24) = 0;
            *(v125 - 16) = 0;
            v125 -= 32;
          }

          while (v118 < v124);
          v123 = (v125 + 8);
        }

        *v125 = v118;
        *v123 = v120;
        *(v125 + 16) = v121;
      }

      v61 += 4;
      a1 += 32;
    }

    while (v61 != a2);
  }
}

__n128 sub_A0E304(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v5 = (*a1)[3];
  result = *(*a1 + 1);
  v2[2] = 0;
  v2[3] = 0;
  v2[1] = 0;
  *v2 = *v3;
  *(v2 + 1) = *(v3 + 8);
  v2[3] = *(v3 + 24);
  *v3 = v4;
  *(v3 + 8) = result;
  *(v3 + 24) = v5;
  return result;
}

unint64_t *sub_A0E348(unint64_t *result, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *result;
  v5 = *a3;
  if (*a2 >= *result)
  {
    if (v5 < v3)
    {
      v9 = a2[3];
      v10 = *(a2 + 1);
      a2[2] = 0;
      a2[3] = 0;
      a2[1] = 0;
      *a2 = *a3;
      *(a2 + 1) = *(a3 + 1);
      a2[3] = a3[3];
      *a3 = v3;
      *(a3 + 1) = v10;
      a3[3] = v9;
      v11 = *result;
      if (*a2 < *result)
      {
        v12 = result[3];
        v13 = *(result + 1);
        result[2] = 0;
        result[3] = 0;
        result[1] = 0;
        *result = *a2;
        *(result + 1) = *(a2 + 1);
        result[3] = a2[3];
        *a2 = v11;
        *(a2 + 1) = v13;
        a2[3] = v12;
      }
    }
  }

  else
  {
    v7 = result[1];
    v6 = result[2];
    v8 = result[3];
    result[2] = 0;
    result[3] = 0;
    result[1] = 0;
    if (v5 >= v3)
    {
      *result = *a2;
      *(result + 1) = *(a2 + 1);
      result[3] = a2[3];
      *a2 = v4;
      a2[1] = v7;
      a2[2] = v6;
      a2[3] = v8;
      if (*a3 >= v4)
      {
        return result;
      }

      a2[1] = 0;
      a2[2] = 0;
      a2[3] = 0;
      *a2 = *a3;
      *(a2 + 1) = *(a3 + 1);
      a2[3] = a3[3];
    }

    else
    {
      *result = *a3;
      *(result + 1) = *(a3 + 1);
      result[3] = a3[3];
    }

    *a3 = v4;
    a3[1] = v7;
    a3[2] = v6;
    a3[3] = v8;
  }

  return result;
}

__n128 sub_A0E474(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5)
{
  sub_A0E348(a1, a2, a3);
  v11 = *a3;
  if (*a4 < *a3)
  {
    v12 = *(a3 + 24);
    result = *(a3 + 8);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    *a3 = *a4;
    *(a3 + 8) = *(a4 + 1);
    *(a3 + 24) = a4[3];
    *a4 = v11;
    *(a4 + 1) = result;
    a4[3] = v12;
    v13 = *a2;
    if (*a3 < *a2)
    {
      v14 = *(a2 + 24);
      result = *(a2 + 8);
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      *a2 = *a3;
      *(a2 + 8) = *(a3 + 8);
      *(a2 + 24) = *(a3 + 24);
      *a3 = v13;
      *(a3 + 8) = result;
      *(a3 + 24) = v14;
      v15 = *a1;
      if (*a2 < *a1)
      {
        v16 = *(a1 + 24);
        result = *(a1 + 8);
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 8) = 0;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 24) = *(a2 + 24);
        *a2 = v15;
        *(a2 + 8) = result;
        *(a2 + 24) = v16;
      }
    }
  }

  v17 = *a4;
  if (*a5 < *a4)
  {
    v18 = a4[3];
    result = *(a4 + 1);
    a4[2] = 0;
    a4[3] = 0;
    a4[1] = 0;
    *a4 = *a5;
    *(a4 + 1) = *(a5 + 1);
    a4[3] = a5[3];
    *a5 = v17;
    *(a5 + 1) = result;
    a5[3] = v18;
    v19 = *a3;
    if (*a4 < *a3)
    {
      v20 = *(a3 + 24);
      result = *(a3 + 8);
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 8) = 0;
      *a3 = *a4;
      *(a3 + 8) = *(a4 + 1);
      *(a3 + 24) = a4[3];
      *a4 = v19;
      *(a4 + 1) = result;
      a4[3] = v20;
      v21 = *a2;
      if (*a3 < *a2)
      {
        v22 = *(a2 + 24);
        result = *(a2 + 8);
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 8) = 0;
        *a2 = *a3;
        *(a2 + 8) = *(a3 + 8);
        *(a2 + 24) = *(a3 + 24);
        *a3 = v21;
        *(a3 + 8) = result;
        *(a3 + 24) = v22;
        v23 = *a1;
        if (*a2 < *a1)
        {
          v24 = *(a1 + 24);
          result = *(a1 + 8);
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
          *(a1 + 8) = 0;
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 8);
          *(a1 + 24) = *(a2 + 24);
          *a2 = v23;
          *(a2 + 8) = result;
          *(a2 + 24) = v24;
        }
      }
    }
  }

  return result;
}

BOOL sub_A0E694(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 5;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_A0E348(a1, (a1 + 32), (a2 - 32));
        return 1;
      case 4:
        v31 = a1 + 32;
        v32 = a1;
        sub_A0E348(a1, (a1 + 32), (a1 + 64));
        v23 = *(a1 + 64);
        if (*(a2 - 32) < v23)
        {
          v24 = *(a1 + 88);
          v25 = *(a1 + 72);
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
          *(a1 + 72) = 0;
          *(a1 + 64) = *(a2 - 32);
          *(a1 + 72) = *(a2 - 24);
          *(a1 + 88) = *(a2 - 8);
          *(a2 - 32) = v23;
          *(a2 - 24) = v25;
          *(a2 - 8) = v24;
          v26 = *(a1 + 64);
          v27 = *(a1 + 32);
          if (v26 < v27)
          {
            v28 = *(a1 + 56);
            *(a1 + 32) = v26;
            v29 = *(a1 + 72);
            *(a1 + 56) = *(a1 + 88);
            *(a1 + 64) = v27;
            v30 = *(a1 + 40);
            *(a1 + 40) = v29;
            *(a1 + 72) = v30;
            *(a1 + 88) = v28;
            if (v26 < *a1)
            {
              sub_A0E304(&v32, &v31);
            }
          }
        }

        return 1;
      case 5:
        sub_A0E474(a1, a1 + 32, a1 + 64, (a1 + 96), (a2 - 32));
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
      v3 = *a1;
      if (*(a2 - 32) < *a1)
      {
        v4 = *(a1 + 24);
        v5 = *(a1 + 8);
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 8) = 0;
        *a1 = *(a2 - 32);
        *(a1 + 8) = *(a2 - 24);
        *(a1 + 24) = *(a2 - 8);
        *(a2 - 32) = v3;
        *(a2 - 24) = v5;
        *(a2 - 8) = v4;
        return 1;
      }

      return 1;
    }
  }

  v7 = (a1 + 64);
  sub_A0E348(a1, (a1 + 32), (a1 + 64));
  v10 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = *v10;
    if (*v10 < *v7)
    {
      break;
    }

LABEL_20:
    v7 = v10;
    v11 += 32;
    v10 += 32;
    if (v10 == a2)
    {
      return 1;
    }
  }

  v14 = *(v10 + 8);
  v15 = *(v10 + 16);
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 8) = 0;
  v16 = v11;
  v17 = *v7;
  do
  {
    v18 = a1 + v16;
    v19 = *(a1 + v16 + 88);
    *(v18 + 104) = *(a1 + v16 + 72);
    *(v18 + 120) = v19;
    *(v18 + 88) = 0;
    *(v18 + 96) = v17;
    *(v18 + 72) = 0;
    *(v18 + 80) = 0;
    if (v16 == -64)
    {
      *a1 = v13;
      *(v18 + 72) = v14;
      *(a1 + 16) = v15;
      if (++v12 != 8)
      {
        goto LABEL_20;
      }

      return v10 + 32 == a2;
    }

    v17 = *(v18 + 32);
    v16 -= 32;
  }

  while (v13 < v17);
  v20 = a1 + v16;
  *(v20 + 96) = v13;
  *(v18 + 72) = v14;
  *(v20 + 112) = v15;
  if (++v12 != 8)
  {
    goto LABEL_20;
  }

  return v10 + 32 == a2;
}

void sub_A0E954()
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
  xmmword_27B3830 = 0u;
  unk_27B3840 = 0u;
  dword_27B3850 = 1065353216;
  sub_3A9A34(&xmmword_27B3830, v0);
  sub_3A9A34(&xmmword_27B3830, v3);
  sub_3A9A34(&xmmword_27B3830, __p);
  sub_3A9A34(&xmmword_27B3830, v9);
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
    qword_27B3808 = 0;
    qword_27B3810 = 0;
    qword_27B3800 = 0;
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

void sub_A0EB9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3818)
  {
    qword_27B3820 = qword_27B3818;
    operator delete(qword_27B3818);
  }

  _Unwind_Resume(exception_object);
}

void sub_A0EC48(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  operator new();
}

void sub_A0ED58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_A0ED80(double *a1, void *a2)
{
  v6 = 19;
  strcpy(__p, "leg_ratio_threshold");
  v3 = sub_63D34(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(*__p);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_A0EF44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A0EF6C(uint64_t *a1, uint64_t *a2)
{
  if (*(a1[1] + 1438) == 1)
  {
    v3 = a2[1];
    if (*a2 != v3)
    {
      v4 = *a2;
      while ((*(v4 + 1152) & 1) == 0)
      {
        v4 += 3296;
        if (v4 == v3)
        {
          goto LABEL_8;
        }
      }

      if (v4 != v3)
      {
        goto LABEL_9;
      }

LABEL_8:
      v4 = *a2;
LABEL_9:
      if (*(v4 + 2392) != *(v4 + 2400))
      {
        sub_A0F1D8(a1, v4, &v21);
        v6 = v21;
        if (v21 != v22)
        {
          sub_9DE500(v19, *a1, a1[1]);
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v7 = *(v4 + 2400);
          v8 = *(v4 + 2392);
          if (v7 != v8)
          {
            if (((v7 - v8) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          __p = &v16;
          sub_9DE520(v19, &v16, &v21, &__p);
          if (a2 + 59 != &__p)
          {
            sub_950BEC(a2 + 59, __p, v15, 0x193D4BB7E327A977 * ((v15 - __p) >> 3));
          }

          v9 = __p;
          if (__p)
          {
            v10 = __p;
            if (v15 != __p)
            {
              v11 = v15 - 568;
              do
              {
                sub_938500(v11 + 3);
                v13 = *v11;
                if (*v11)
                {
                  *(v11 + 1) = v13;
                  operator delete(v13);
                }

                v12 = v11 == v9;
                v11 -= 568;
              }

              while (!v12);
              v10 = __p;
            }

            v15 = v9;
            operator delete(v10);
          }

          if (v16)
          {
            v17 = v16;
            operator delete(v16);
          }

          sub_939D44(&v20);
          v6 = v21;
        }

        if (v6)
        {
          v22 = v6;
          operator delete(v6);
        }
      }
    }
  }
}

void sub_A0F178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17)
{
  sub_951434(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  sub_939D44(&a17);
  v19 = *(v17 - 80);
  if (v19)
  {
    *(v17 - 72) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(a1);
}

void sub_A0F1D8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if ((sub_A0FBE4(a1, a2) & 1) == 0)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v6 = sub_A0F42C(a2);
  v7 = sub_A0F4D4(a1, a2);
  sub_A0F8A8(a2, v6, &__p);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v8 = __p;
  v9 = v20;
  if (__p == v20)
  {
    *a3 = 0;
    if (v8)
    {
LABEL_28:
      v20 = v8;
      operator delete(v8);
    }
  }

  else
  {
    v10 = 0;
    do
    {
      if (*(v8 + 1) >= *(a1 + 16))
      {
        if (*(a1 + 24) != 1)
        {
          goto LABEL_15;
        }

        v11 = *v7;
        v12 = v7[1];
        if (*v7 != v12)
        {
          while (*v11 != *v8 || v11[1] != v8[1])
          {
            v11 += 2;
            if (v11 == v12)
            {
              goto LABEL_6;
            }
          }
        }

        if (v11 != v12)
        {
LABEL_15:
          v13 = a3[2];
          if (v10 < v13)
          {
            *v10 = *v8;
            v10 += 8;
          }

          else
          {
            v14 = v10;
            v15 = v10 >> 3;
            v16 = v15 + 1;
            if ((v15 + 1) >> 61)
            {
              *a3 = 0;
              sub_1794();
            }

            if (v13 >> 2 > v16)
            {
              v16 = v13 >> 2;
            }

            if (v13 >= 0x7FFFFFFFFFFFFFF8)
            {
              v17 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = v16;
            }

            if (v17)
            {
              if (!(v17 >> 61))
              {
                operator new();
              }

              *a3 = 0;
              sub_1808();
            }

            v18 = (8 * v15);
            *v18 = *v8;
            v10 = (v18 + 1);
            memcpy(0, 0, v14);
            a3[1] = v10;
            a3[2] = 0;
          }

          a3[1] = v10;
        }
      }

LABEL_6:
      v8 += 4;
    }

    while (v8 != v9);
    v8 = __p;
    *a3 = 0;
    if (v8)
    {
      goto LABEL_28;
    }
  }
}

void sub_A0F3E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  *v11 = v12;
  if (v12)
  {
    v11[1] = v12;
    operator delete(v12);
    v14 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

uint64_t sub_A0F42C(void *a1)
{
  sub_9D4074(v4, a1);
  sub_9D4040(v4, v3);
  v1 = 0;
  while (sub_9D427C(v4, v3))
  {
    if (*sub_9D42B8(v4) == 2 || *sub_9D42B8(v4) == 8)
    {
      v1 = (v1 + 1);
    }

    sub_9D40D8(v4);
    sub_9D4040(v4, v3);
  }

  return v1;
}

void *sub_A0F4D4(void **a1, void *a2)
{
  sub_9D4074(v43, a2);
  sub_9D4040(v43, &v46);
  if (sub_9D427C(v43, &v46))
  {
    v3 = "payment_method";
    do
    {
      if (*sub_9D42B8(v43) == 2)
      {
        v4 = sub_9D42B8(v43);
        v5 = *(v4 + 5680);
        v6 = *(v4 + 5688);
        while (v5 != v6)
        {
          v7 = *v5;
          v8 = sub_3AFEE8(*a1);
          v49 = v3;
          LODWORD(v44[0]) = v7;
          v50 = 0;
          v46 = &v50;
          v47 = v44;
          v9 = *(v8 + 3856) + 1;
          *(v8 + 3856) = v9;
          if (!*v8)
          {
            goto LABEL_52;
          }

          if (*(v8 + 592) == v7)
          {
            ++*(v8 + 3864);
            *(v8 + 600) = v9;
            v10 = *(v8 + 608);
            if (!v10)
            {
              goto LABEL_52;
            }
          }

          else if (*(v8 + 616) == v7)
          {
            ++*(v8 + 3864);
            *(v8 + 624) = v9;
            v10 = *(v8 + 632);
            if (!v10)
            {
              goto LABEL_52;
            }
          }

          else if (*(v8 + 640) == v7)
          {
            ++*(v8 + 3864);
            *(v8 + 648) = v9;
            v10 = *(v8 + 656);
            if (!v10)
            {
              goto LABEL_52;
            }
          }

          else if (*(v8 + 664) == v7)
          {
            ++*(v8 + 3864);
            *(v8 + 672) = v9;
            v10 = *(v8 + 680);
            if (!v10)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v42 = v8 + 16;
            v11 = *(v8 + 648);
            v12 = *(v8 + 624);
            v13 = *(v8 + 600);
            v14 = v13 >= v9;
            if (v13 < v9)
            {
              v9 = *(v8 + 600);
            }

            v15 = 24;
            if (v14)
            {
              v15 = 0;
            }

            v16 = v12 >= v9;
            if (v12 < v9)
            {
              v9 = *(v8 + 624);
            }

            v17 = 25;
            if (v16)
            {
              v17 = v15;
            }

            if (v11 >= v9)
            {
              v18 = v9;
            }

            else
            {
              v18 = *(v8 + 648);
            }

            v19 = v3;
            v20 = *(v8 + 672);
            if (v11 >= v9)
            {
              v21 = v17;
            }

            else
            {
              v21 = 26;
            }

            v22 = v8;
            v10 = sub_2D52A4(*v8, 6, v7, 1);
            v14 = v20 >= v18;
            v3 = v19;
            v23 = 27;
            if (v14)
            {
              v23 = v21;
            }

            v24 = v42 + 24 * v23;
            *v24 = v44[0];
            *(v24 + 8) = *(v22 + 3856);
            *(v24 + 16) = v10;
            if (!v10)
            {
LABEL_52:
              sub_2C9894(&v46);
LABEL_53:
              exception = __cxa_allocate_exception(0x40uLL);
              v45 = HIDWORD(v7);
              v50 = v7;
              v44[0] = sub_7FCF0(6u);
              v44[1] = v38;
              sub_2C956C("Failed to acquire entity ", &v49, " in quad node ", " at position ", " on layer ", v44, &v46);
              if ((v48 & 0x80u) == 0)
              {
                v39 = &v46;
              }

              else
              {
                v39 = v46;
              }

              if ((v48 & 0x80u) == 0)
              {
                v40 = v48;
              }

              else
              {
                v40 = v47;
              }

              v41 = sub_2D390(exception, v39, v40);
            }
          }

          v25 = (v10 + *v10);
          v26 = (v25 - *v25);
          if (*v26 < 0x31u)
          {
            goto LABEL_53;
          }

          v27 = v26[24];
          if (!v27)
          {
            goto LABEL_53;
          }

          v28 = (v25 + v27 + *(v25 + v27));
          if (*v28 <= HIDWORD(v7))
          {
            goto LABEL_53;
          }

          v29 = (&v28[HIDWORD(v7) + 1] + v28[HIDWORD(v7) + 1]);
          v30 = (v29 - *v29);
          if (*v30 >= 9u)
          {
            v31 = v30[4];
            if (v31)
            {
              v32 = *(v29 + v31);
              v33 = v32 > 4;
              v34 = (1 << v32) & 0x16;
              if (!v33 && v34 != 0)
              {
                return (sub_9D42B8(v43) + 5680);
              }
            }
          }

          ++v5;
        }
      }

      sub_9D40D8(v43);
      sub_9D4040(v43, &v46);
    }

    while (sub_9D427C(v43, &v46));
  }

  return &unk_22A5FD0;
}

void sub_A0F878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_A0F8A8(void *a1@<X1>, int a2@<W2>, void *a3@<X8>)
{
  if (a2)
  {
    sub_9D4074(&v17, a1);
    v3 = 0;
    v4 = 0;
    while (1)
    {
      sub_9D4040(&v17, v16);
      if (!sub_9D427C(&v17, v16))
      {
        break;
      }

      if (*sub_9D42B8(&v17) == 2)
      {
        v5 = sub_9D42B8(&v17);
        v6 = *(v5 + 5680);
        v7 = *(v5 + 5688);
        while (v6 != v7)
        {
          v8 = v4;
          if (v4 != v3)
          {
            v8 = v4;
            while (*v6 != *v8 || v6[1] != v8[1])
            {
              v8 += 3;
              if (v8 == v3)
              {
                goto LABEL_16;
              }
            }
          }

          if (v8 == v3)
          {
LABEL_16:
            v9 = v3 - v4;
            v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 2);
            v11 = v10 + 1;
            if (v10 + 1 > 0x1555555555555555)
            {
              sub_1794();
            }

            if (0x5555555555555556 * (-v4 >> 2) > v11)
            {
              v11 = 0x5555555555555556 * (-v4 >> 2);
            }

            if (0xAAAAAAAAAAAAAAABLL * (-v4 >> 2) >= 0xAAAAAAAAAAAAAAALL)
            {
              v12 = 0x1555555555555555;
            }

            else
            {
              v12 = v11;
            }

            if (v12)
            {
              if (v12 <= 0x1555555555555555)
              {
                operator new();
              }

              sub_1808();
            }

            v13 = 4 * ((v3 - v4) >> 2);
            *v13 = *v6;
            *(v13 + 8) = 1;
            v3 = (v13 + 12);
            v14 = 12 * v10 + 12 * (v9 / -12);
            memcpy((v13 + 12 * (v9 / -12)), v4, v9);
            if (v4)
            {
              operator delete(v4);
            }

            v4 = v14;
          }

          else
          {
            ++v8[2];
          }

          v6 += 2;
        }
      }

      sub_9D40D8(&v17);
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (v3 != v4)
    {
      if (!((0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 2)) >> 60))
      {
        operator new();
      }

      sub_1794();
    }

    if (v4)
    {
      operator delete(v4);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

uint64_t sub_A0FBE4(void **a1, void *a2)
{
  if (*(a1 + 25) != 1)
  {
    return 1;
  }

  sub_9D4074(v40, a2);
  while (1)
  {
    sub_9D4040(v40, &v43);
    if (!sub_9D427C(v40, &v43))
    {
      break;
    }

    if (*sub_9D42B8(v40) != 2)
    {
      v3 = sub_9D42B8(v40);
      v4 = *(v3 + 5680);
      v5 = *(v3 + 5688);
      while (1)
      {
        if (v4 == v5)
        {
          goto LABEL_3;
        }

        v6 = *v4;
        v7 = sub_3AFEE8(*a1);
        v8 = sub_2C9210(v7, v6, 0, "payment_method");
        v9 = (v8 - *v8);
        if (*v9 >= 9u)
        {
          v10 = v9[4];
          if (v10)
          {
            v11 = *(v8 + v10);
            v12 = v11 > 4;
            v13 = (1 << v11) & 0x16;
            if (!v12 && v13 != 0)
            {
              break;
            }
          }
        }

        ++v4;
      }

      v15 = sub_3AFEE8(*a1);
      v16 = *v4;
      v17 = HIDWORD(*v4);
      v46 = "payment_method";
      LODWORD(v41[0]) = v16;
      v47 = 0;
      v43 = &v47;
      v44 = v41;
      v18 = *(v15 + 3856) + 1;
      *(v15 + 3856) = v18;
      if (*v15)
      {
        if (*(v15 + 592) == v16)
        {
          ++*(v15 + 3864);
          *(v15 + 600) = v18;
          v19 = *(v15 + 608);
          if (!v19)
          {
            goto LABEL_48;
          }

LABEL_42:
          v27 = (v19 + *v19);
          v28 = (v27 - *v27);
          if (*v28 >= 0x31u)
          {
            v29 = v28[24];
            if (v29)
            {
              v30 = (v27 + v29 + *(v27 + v29));
              if (*v30 > v17)
              {
                operator new();
              }
            }
          }

LABEL_49:
          exception = __cxa_allocate_exception(0x40uLL);
          v47 = v16;
          v42 = v17;
          v41[0] = sub_7FCF0(6u);
          v41[1] = v33;
          sub_2C956C("Failed to acquire entity ", &v46, " in quad node ", " at position ", " on layer ", v41, &v43);
          if ((v45 & 0x80u) == 0)
          {
            v34 = &v43;
          }

          else
          {
            v34 = v43;
          }

          if ((v45 & 0x80u) == 0)
          {
            v35 = v45;
          }

          else
          {
            v35 = v44;
          }

          v36 = sub_2D390(exception, v34, v35);
        }

        if (*(v15 + 616) == v16)
        {
          ++*(v15 + 3864);
          *(v15 + 624) = v18;
          v19 = *(v15 + 632);
          if (v19)
          {
            goto LABEL_42;
          }
        }

        else if (*(v15 + 640) == v16)
        {
          ++*(v15 + 3864);
          *(v15 + 648) = v18;
          v19 = *(v15 + 656);
          if (v19)
          {
            goto LABEL_42;
          }
        }

        else if (*(v15 + 664) == v16)
        {
          ++*(v15 + 3864);
          *(v15 + 672) = v18;
          v19 = *(v15 + 680);
          if (v19)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v20 = *(v15 + 624);
          v21 = *(v15 + 600);
          v37 = *(v15 + 672);
          v38 = *(v15 + 648);
          v39 = v15;
          v19 = sub_2D52A4(*v15, 6, v16, 1);
          if (v21 >= v18)
          {
            v22 = v18;
          }

          else
          {
            v22 = v21;
          }

          if (v21 >= v18)
          {
            v23 = 0;
          }

          else
          {
            v23 = 24;
          }

          if (v20 < v22)
          {
            v22 = v20;
            v23 = 25;
          }

          if (v38 < v22)
          {
            v23 = 26;
            v22 = v38;
          }

          v24 = v37 >= v22;
          v25 = 27;
          if (v24)
          {
            v25 = v23;
          }

          v26 = v39 + 16 + 24 * v25;
          *v26 = v41[0];
          *(v26 + 8) = *(v39 + 3856);
          *(v26 + 16) = v19;
          if (v19)
          {
            goto LABEL_42;
          }
        }
      }

LABEL_48:
      sub_2C9894(&v43);
      goto LABEL_49;
    }

LABEL_3:
    sub_9D40D8(v40);
  }

  sub_A101A4(0, 0, &v43, 0, 1);
  return 0;
}

void sub_A1012C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v25)
  {
    v26 = a1;
    operator delete(v25);
    a1 = v26;
  }

  _Unwind_Resume(a1);
}

unint64_t sub_A101A4(unint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (a2 - v10 > 2)
    {
      break;
    }

    if ((a2 - v10) < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v79 = *(a2 - 1);
      v80 = *v10;
      if (v79 < v80)
      {
        *v10 = v79;
        *(a2 - 1) = v80;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v91 = v10 + 1;
      v93 = v10 == a2 || v91 == a2;
      if (a5)
      {
        if (!v93)
        {
          v94 = 0;
          v95 = v10;
          do
          {
            v97 = v95[1];
            v98 = *v95;
            v95 = v91;
            if (v97 < v98)
            {
              v99 = v94;
              do
              {
                v10[v99 + 1] = v98;
                if (!v99)
                {
                  v96 = v10;
                  goto LABEL_128;
                }

                v98 = v10[--v99];
              }

              while (v97 < v98);
              v96 = &v10[v99 + 1];
LABEL_128:
              *v96 = v97;
            }

            v91 = v95 + 1;
            ++v94;
          }

          while (v95 + 1 != a2);
        }
      }

      else if (!v93)
      {
        do
        {
          v104 = v9[1];
          v105 = *v9;
          v9 = v91;
          if (v104 < v105)
          {
            do
            {
              *v91 = v105;
              v105 = *(v91 - 2);
              --v91;
            }

            while (v104 < v105);
            *v91 = v104;
          }

          v91 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return sub_A10EE4(v10, a2, a2);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = &v10[v11 >> 1];
    v14 = *(a2 - 1);
    if (v11 < 0x81)
    {
      v17 = *v10;
      v18 = *v13;
      if (v17 < v18)
      {
        if (v14 < v17)
        {
          *v13 = v14;
          goto LABEL_37;
        }

        *v13 = v17;
        *v10 = v18;
        v31 = *(a2 - 1);
        if (v31 < v18)
        {
          *v10 = v31;
LABEL_37:
          *(a2 - 1) = v18;
        }

LABEL_38:
        --a4;
        v23 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v14 >= v17)
      {
        goto LABEL_38;
      }

      *v10 = v14;
      *(a2 - 1) = v17;
      v21 = *v10;
      v22 = *v13;
      if (v21 >= v22)
      {
        goto LABEL_38;
      }

      *v13 = v21;
      *v10 = v22;
      --a4;
      v23 = v22;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v10 - 1) < v23)
      {
        goto LABEL_62;
      }

      if (v23 >= *(a2 - 1))
      {
        v62 = v10 + 1;
        do
        {
          v10 = v62;
          if (v62 >= a2)
          {
            break;
          }

          ++v62;
        }

        while (v23 >= *v10);
      }

      else
      {
        do
        {
          v61 = *++v10;
        }

        while (v23 >= v61);
      }

      v63 = a2;
      if (v10 < a2)
      {
        v63 = a2;
        do
        {
          v64 = *--v63;
        }

        while (v23 < v64);
      }

      if (v10 < v63)
      {
        v65 = *v10;
        v66 = *v63;
        do
        {
          *v10 = v66;
          *v63 = v65;
          do
          {
            v67 = *++v10;
            v65 = v67;
          }

          while (v23 >= v67);
          do
          {
            v68 = *--v63;
            v66 = v68;
          }

          while (v23 < v68);
        }

        while (v10 < v63);
      }

      v69 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v69;
      }

      a5 = 0;
      *v69 = v23;
    }

    else
    {
      v15 = *v13;
      v16 = *v10;
      if (v15 >= v16)
      {
        if (v14 < v15)
        {
          *v13 = v14;
          *(a2 - 1) = v15;
          v19 = *v13;
          v20 = *v10;
          if (v19 < v20)
          {
            *v10 = v19;
            *v13 = v20;
          }
        }
      }

      else
      {
        if (v14 >= v15)
        {
          *v10 = v15;
          *v13 = v16;
          v24 = *(a2 - 1);
          if (v24 >= v16)
          {
            goto LABEL_29;
          }

          *v13 = v24;
        }

        else
        {
          *v10 = v14;
        }

        *(a2 - 1) = v16;
      }

LABEL_29:
      v25 = &v10[v12 - 1];
      v26 = *v25;
      v27 = v10[1];
      v28 = *(a2 - 2);
      if (v26 >= v27)
      {
        if (v28 < v26)
        {
          *v25 = v28;
          *(a2 - 2) = v26;
          v29 = *v25;
          v30 = v10[1];
          if (v29 < v30)
          {
            v10[1] = v29;
            *v25 = v30;
          }
        }
      }

      else
      {
        if (v28 >= v26)
        {
          v10[1] = v26;
          *v25 = v27;
          v32 = *(a2 - 2);
          if (v32 >= v27)
          {
            goto LABEL_43;
          }

          *v25 = v32;
        }

        else
        {
          v10[1] = v28;
        }

        *(a2 - 2) = v27;
      }

LABEL_43:
      v33 = &v10[v12];
      v36 = v33[1];
      v34 = v33 + 1;
      v35 = v36;
      v37 = v10[2];
      v38 = *(a2 - 3);
      if (v36 >= v37)
      {
        if (v38 < v35)
        {
          *v34 = v38;
          *(a2 - 3) = v35;
          v39 = *v34;
          v40 = v10[2];
          if (v39 < v40)
          {
            v10[2] = v39;
            *v34 = v40;
          }
        }
      }

      else
      {
        if (v38 >= v35)
        {
          v10[2] = v35;
          *v34 = v37;
          v41 = *(a2 - 3);
          if (v41 >= v37)
          {
            goto LABEL_52;
          }

          *v34 = v41;
        }

        else
        {
          v10[2] = v38;
        }

        *(a2 - 3) = v37;
      }

LABEL_52:
      v42 = *v13;
      v43 = *v25;
      v44 = *v34;
      if (v42 >= v43)
      {
        if (v44 >= v42)
        {
          goto LABEL_60;
        }

        *v13 = v44;
        *v34 = v42;
        v34 = v13;
        LOBYTE(v42) = v43;
        if (v44 < v43)
        {
LABEL_59:
          *v25 = v44;
          *v34 = v43;
LABEL_60:
          v46 = *v10;
          *v10 = v42;
          *v13 = v46;
          --a4;
          v23 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v60 = *v10;
        *v10 = v44;
        *v13 = v60;
        --a4;
        v23 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v44 < v42)
      {
        goto LABEL_59;
      }

      *v25 = v42;
      *v13 = v43;
      v25 = v13;
      LOBYTE(v42) = v44;
      if (v44 < v43)
      {
        goto LABEL_59;
      }

      v45 = *v10;
      *v10 = v43;
      *v13 = v45;
      --a4;
      v23 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v47 = 0;
      do
      {
        v48 = v10[++v47];
      }

      while (v48 < v23);
      v49 = &v10[v47];
      v50 = a2;
      if (v47 == 1)
      {
        v50 = a2;
        do
        {
          if (v49 >= v50)
          {
            break;
          }

          v52 = *--v50;
        }

        while (v52 >= v23);
      }

      else
      {
        do
        {
          v51 = *--v50;
        }

        while (v51 >= v23);
      }

      if (v49 >= v50)
      {
        v58 = v49 - 1;
        if (v49 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v58;
        goto LABEL_80;
      }

      v53 = *v50;
      v54 = &v10[v47];
      v55 = v50;
      do
      {
        *v54 = v53;
        *v55 = v48;
        do
        {
          v56 = *++v54;
          LOBYTE(v48) = v56;
        }

        while (v56 < v23);
        do
        {
          v57 = *--v55;
          v53 = v57;
        }

        while (v57 >= v23);
      }

      while (v54 < v55);
      v58 = v54 - 1;
      if (v54 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v58 = v23;
      if (v49 < v50)
      {
        goto LABEL_83;
      }

      v59 = sub_A10AC4(v10, v58);
      v10 = v58 + 1;
      result = sub_A10AC4(v58 + 1, a2);
      if (result)
      {
        a2 = v58;
        if (!v59)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v59)
      {
LABEL_83:
        result = sub_A101A4(v9, v58, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v58 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v84 = v10 + 1;
      v85 = v10[1];
      v86 = v10 + 2;
      v87 = v10[2];
      v88 = *v10;
      if (v85 >= v88)
      {
        if (v87 < v85)
        {
          *v84 = v87;
          *v86 = v85;
          v89 = v10;
          v90 = v10 + 1;
          result = v85;
          if (v87 < v88)
          {
            goto LABEL_148;
          }

          goto LABEL_149;
        }

LABEL_157:
        LODWORD(v85) = v87;
        v103 = *(a2 - 1);
        if (v103 >= v85)
        {
          return result;
        }
      }

      else
      {
        v89 = v10;
        v90 = v10 + 2;
        result = *v10;
        if (v87 >= v85)
        {
          *v10 = v85;
          v10[1] = v88;
          v89 = v10 + 1;
          v90 = v10 + 2;
          result = v88;
          if (v87 >= v88)
          {
            goto LABEL_157;
          }
        }

LABEL_148:
        *v89 = v87;
        *v90 = v88;
        LODWORD(v85) = result;
LABEL_149:
        v103 = *(a2 - 1);
        if (v103 >= v85)
        {
          return result;
        }
      }

      *v86 = v103;
      *(a2 - 1) = v85;
      v106 = *v86;
      v107 = *v84;
      if (v106 < v107)
      {
        v10[1] = v106;
        v10[2] = v107;
        v108 = *v10;
        if (v106 < v108)
        {
          *v10 = v106;
          v10[1] = v108;
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v70 = v10 + 1;
      v71 = v10[1];
      v73 = v10 + 2;
      v72 = v10[2];
      v74 = *v10;
      if (v71 >= v74)
      {
        if (v72 >= v71)
        {
          v77 = *v10;
          LODWORD(v74) = v10[1];
          v100 = v10[3];
          if (v100 >= v72)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v75 = v10;
          v76 = v10 + 1;
          *v70 = v72;
          *v73 = v71;
          v77 = v72;
          result = v74;
          v78 = v71;
          if (v72 < v74)
          {
            goto LABEL_162;
          }

          v77 = v74;
          LODWORD(v74) = v72;
          LODWORD(v72) = v71;
          v100 = v10[3];
          if (v100 >= v72)
          {
            goto LABEL_167;
          }
        }
      }

      else
      {
        if (v72 < v71)
        {
          v75 = v10;
          v76 = v10 + 2;
          v77 = v10[2];
          result = v10[1];
          v78 = *v10;
          goto LABEL_162;
        }

        v75 = v10 + 1;
        v76 = v10 + 2;
        *v10 = v71;
        v10[1] = v74;
        v77 = v71;
        result = v72;
        v78 = v74;
        if (v72 < v74)
        {
LABEL_162:
          *v75 = v72;
          *v76 = v74;
          LODWORD(v74) = result;
          LODWORD(v72) = v78;
          v100 = v10[3];
          if (v100 < v78)
          {
            goto LABEL_163;
          }

LABEL_167:
          LODWORD(v72) = v100;
LABEL_168:
          v109 = *(a2 - 1);
          if (v109 >= v72)
          {
            return result;
          }

          v10[3] = v109;
          *(a2 - 1) = v72;
          v101 = v10[3];
          v110 = v10[2];
          if (v101 >= v110)
          {
            return result;
          }

          v10[2] = v101;
          v10[3] = v110;
          v111 = v10[1];
          if (v101 >= v111)
          {
            return result;
          }

          v10[1] = v101;
          v10[2] = v111;
          v102 = *v10;
          if (v101 >= v102)
          {
            return result;
          }

LABEL_172:
          *v10 = v101;
          v10[1] = v102;
          return result;
        }

        v77 = v71;
        v100 = v10[3];
        if (v100 >= v72)
        {
          goto LABEL_167;
        }
      }

LABEL_163:
      v10[2] = v100;
      v10[3] = v72;
      if (v100 < v74)
      {
        *v70 = v100;
        *v73 = v74;
        if (v100 < v77)
        {
          *v10 = v100;
          v10[1] = v77;
        }
      }

      goto LABEL_168;
    }

    goto LABEL_10;
  }

  v81 = v10[1];
  v82 = *v10;
  v83 = *(a2 - 1);
  if (v81 < v82)
  {
    if (v83 >= v81)
    {
      *v10 = v81;
      v10[1] = v82;
      v112 = *(a2 - 1);
      if (v112 >= v82)
      {
        return result;
      }

      v10[1] = v112;
    }

    else
    {
      *v10 = v83;
    }

    *(a2 - 1) = v82;
    return result;
  }

  if (v83 < v81)
  {
    v10[1] = v83;
    *(a2 - 1) = v81;
    v101 = v10[1];
    v102 = *v10;
    if (v101 < v102)
    {
      goto LABEL_172;
    }
  }

  return result;
}

BOOL sub_A10AC4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a2 - a1;
  if (a2 - a1 > 2)
  {
    if (v2 == 3)
    {
      v16 = a1[1];
      v17 = *a1;
      v18 = *(a2 - 1);
      if (v16 < v17)
      {
        if (v18 >= v16)
        {
          *a1 = v16;
          a1[1] = v17;
          v46 = *(a2 - 1);
          if (v46 >= v17)
          {
            return 1;
          }

          a1[1] = v46;
          *(a2 - 1) = v17;
          return 1;
        }

        else
        {
          *a1 = v18;
          *(a2 - 1) = v17;
          return 1;
        }
      }

      if (v18 >= v16)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v16;
      v33 = a1[1];
      v34 = *a1;
      if (v33 >= v34)
      {
        return 1;
      }

LABEL_66:
      *a1 = v33;
      a1[1] = v34;
      return 1;
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
      if (v5 >= v8)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          v41 = a1[3];
          if (v41 < v6)
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
          v41 = a1[3];
          if (v41 < v6)
          {
LABEL_57:
            a1[2] = v41;
            a1[3] = v6;
            if (v41 < v8)
            {
              *v4 = v41;
              *v7 = v8;
              if (v41 < v11)
              {
                *a1 = v41;
                a1[1] = v11;
              }
            }

LABEL_62:
            v47 = *(a2 - 1);
            if (v47 >= v6)
            {
              return 1;
            }

            a1[3] = v47;
            *(a2 - 1) = v6;
            v33 = a1[3];
            v48 = a1[2];
            if (v33 >= v48)
            {
              return 1;
            }

            a1[2] = v33;
            a1[3] = v48;
            v49 = a1[1];
            if (v33 >= v49)
            {
              return 1;
            }

            a1[1] = v33;
            a1[2] = v49;
            v34 = *a1;
            if (v33 >= v34)
            {
              return 1;
            }

            goto LABEL_66;
          }

LABEL_61:
          v6 = v41;
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
          v41 = a1[3];
          if (v41 < v6)
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
      v41 = a1[3];
      if (v41 < v13)
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
    if (v26 >= v29)
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
        v42 = *(a2 - 1);
        if (v42 >= v26)
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
          v42 = *(a2 - 1);
          if (v42 >= v26)
          {
            return 1;
          }

LABEL_50:
          *v27 = v42;
          *(a2 - 1) = v26;
          v43 = *v27;
          v44 = *v25;
          if (v43 >= v44)
          {
            return 1;
          }

          a1[1] = v43;
          a1[2] = v44;
          v45 = *a1;
          if (v43 >= v45)
          {
            return 1;
          }

          *a1 = v43;
          a1[1] = v45;
          return 1;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if ((a2 - a1) < 2)
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
    if (v21 >= v22)
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
    v37 = 0;
    while (1)
    {
      v38 = *v35;
      v39 = *v20;
      if (v38 < v39)
      {
        break;
      }

LABEL_33:
      v20 = v35;
      ++v36;
      if (++v35 == a2)
      {
        return 1;
      }
    }

    v40 = v36;
    do
    {
      a1[v40 + 3] = v39;
      if (v40 == -2)
      {
        *a1 = v38;
        if (++v37 != 8)
        {
          goto LABEL_33;
        }

        return v35 + 1 == a2;
      }

      v39 = a1[v40-- + 1];
    }

    while (v38 < v39);
    a1[v40 + 3] = v38;
    if (++v37 != 8)
    {
      goto LABEL_33;
    }

    return v35 + 1 == a2;
  }

  v14 = *(a2 - 1);
  v15 = *a1;
  if (v14 >= v15)
  {
    return 1;
  }

  *a1 = v14;
  *(a2 - 1) = v15;
  return 1;
}

unsigned __int8 *sub_A10EE4(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = a2 - a1;
  if (a2 - a1 >= 2)
  {
    v4 = (a2 - a1 - 2) >> 1;
    v5 = v4;
    do
    {
      if (v4 >= v5)
      {
        v7 = (2 * (v5 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
        v8 = &a1[v7];
        if (2 * v5 + 2 >= v3)
        {
          v10 = *v8;
          v12 = &a1[v5];
          v13 = a1[v5];
          if (v10 >= v13)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v9 = *v8;
          v10 = v8[1];
          v11 = v9 >= v10;
          if (v9 > v10)
          {
            v10 = *v8;
          }

          if (!v11)
          {
            ++v8;
            v7 = 2 * v5 + 2;
          }

          v12 = &a1[v5];
          v13 = a1[v5];
          if (v10 >= v13)
          {
LABEL_22:
            while (1)
            {
              *v12 = v10;
              v12 = v8;
              if (v4 < v7)
              {
                break;
              }

              v16 = (2 * v7) | 1;
              v8 = &a1[v16];
              v7 = 2 * v7 + 2;
              if (v7 < v3)
              {
                v10 = *v8;
                v14 = v8[1];
                v15 = v10 >= v14;
                if (v10 <= v14)
                {
                  v10 = v8[1];
                }

                if (v15)
                {
                  v7 = v16;
                }

                else
                {
                  ++v8;
                }

                if (v10 < v13)
                {
                  break;
                }
              }

              else
              {
                v10 = *v8;
                v7 = v16;
                if (v10 < v13)
                {
                  break;
                }
              }
            }

            *v12 = v13;
          }
        }
      }

      v6 = v5-- <= 0;
    }

    while (!v6);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      v18 = *a1;
      i = a2;
      do
      {
        v19 = *i;
        if (v19 < v18)
        {
          *i = v18;
          *a1 = v19;
          v18 = v19;
        }

        ++i;
      }

      while (i != a3);
      goto LABEL_59;
    }

    for (i = a2; i != a3; ++i)
    {
      v20 = *i;
      v21 = *a1;
      if (v20 < v21)
      {
        *i = v21;
        *a1 = v20;
        v22 = a1[1];
        if (v3 == 2)
        {
          v23 = a1 + 1;
          v24 = 1;
          if (v22 >= v20)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v25 = a1[2];
          v26 = v22 >= v25;
          if (v22 <= v25)
          {
            v22 = a1[2];
          }

          if (v26)
          {
            v23 = a1 + 1;
          }

          else
          {
            v23 = a1 + 2;
          }

          if (v26)
          {
            v24 = 1;
          }

          else
          {
            v24 = 2;
          }

          if (v22 >= v20)
          {
LABEL_48:
            v27 = a1;
            while (1)
            {
              *v27 = v22;
              v27 = v23;
              if (((v3 - 2) >> 1) < v24)
              {
                break;
              }

              v30 = (2 * v24) | 1;
              v23 = &a1[v30];
              v24 = 2 * v24 + 2;
              if (v24 < v3)
              {
                v22 = *v23;
                v28 = v23[1];
                v29 = v22 >= v28;
                if (v22 <= v28)
                {
                  v22 = v23[1];
                }

                if (v29)
                {
                  v24 = v30;
                }

                else
                {
                  ++v23;
                }

                if (v22 < v20)
                {
                  break;
                }
              }

              else
              {
                v22 = *v23;
                v24 = v30;
                if (v22 < v20)
                {
                  break;
                }
              }
            }

            *v27 = v20;
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
      v32 = 0;
      v33 = *a1;
      v34 = (v3 - 2) >> 1;
      v35 = a1;
      do
      {
        while (1)
        {
          v42 = &v35[v32];
          v41 = &v35[v32 + 1];
          v43 = (2 * v32) | 1;
          v32 = 2 * v32 + 2;
          if (v32 < v3)
          {
            break;
          }

          v32 = v43;
          *v35 = *v41;
          v35 = v41;
          if (v43 > v34)
          {
            goto LABEL_73;
          }
        }

        v38 = v42[2];
        v37 = v42 + 2;
        v36 = v38;
        v39 = *(v37 - 1);
        v40 = v39 >= v38;
        if (v39 > v38)
        {
          v36 = *(v37 - 1);
        }

        if (v40)
        {
          v32 = v43;
        }

        else
        {
          v41 = v37;
        }

        *v35 = v36;
        v35 = v41;
      }

      while (v32 <= v34);
LABEL_73:
      if (v41 == --a2)
      {
        *v41 = v33;
      }

      else
      {
        *v41 = *a2;
        *a2 = v33;
        if (v41 - a1 + 1 >= 2)
        {
          v44 = (v41 - a1 - 1) >> 1;
          v45 = &a1[v44];
          v46 = a1[v44];
          v47 = *v41;
          if (v46 < v47)
          {
            do
            {
              *v41 = v46;
              v41 = v45;
              if (!v44)
              {
                break;
              }

              v44 = (v44 - 1) >> 1;
              v45 = &a1[v44];
              v46 = a1[v44];
            }

            while (v46 < v47);
            *v41 = v47;
          }
        }
      }

      v6 = v3-- <= 2;
    }

    while (!v6);
  }

  return i;
}

void sub_A11224()
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
  xmmword_27B3888 = 0u;
  unk_27B3898 = 0u;
  dword_27B38A8 = 1065353216;
  sub_3A9A34(&xmmword_27B3888, v0);
  sub_3A9A34(&xmmword_27B3888, v3);
  sub_3A9A34(&xmmword_27B3888, __p);
  sub_3A9A34(&xmmword_27B3888, v9);
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
    qword_27B3860 = 0;
    qword_27B3868 = 0;
    qword_27B3858 = 0;
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

void sub_A1146C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3870)
  {
    qword_27B3878 = qword_27B3870;
    operator delete(qword_27B3870);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A11518(void *result, void *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      result = sub_A11564(result, a2, v2);
      v2 += 412;
    }

    while (v2 != v3);
  }

  return result;
}

void *sub_A11564(uint64_t a1, void *a2, void *a3)
{
  sub_A21C90(v25, a3);
  while (1)
  {
    sub_A21CE8(v25, &v23);
    v4 = sub_A21B4C(v25, &v23);
    sub_98ED24(&v23);
    if (!v4)
    {
      return sub_98ED24(v25);
    }

    if (*sub_A21CB8(v25) != 2)
    {
      goto LABEL_2;
    }

    sub_A21834(v25, 0xFFFFFFFFFFFFFFFFLL, &v23);
    v5 = sub_A21CB8(v25);
    v6 = v23;
    v7 = v23;
    if (v23 != v24)
    {
      v7 = v23;
      while (**v7 != 4)
      {
        v7 += 8;
        if (v7 == v24)
        {
          v7 = v24;
          break;
        }
      }
    }

    v8 = *(*v7 + 56);
    v9 = a2[3];
    if (0xCF3CF3CF3CF3CF3DLL * ((a2[4] - v9) >> 3) <= v8)
    {
      sub_6FAB4();
    }

    v10 = v9 + 168 * v8;
    v11 = *(v10 + 104);
    if (v11 != -1)
    {
      v12 = a2[6];
      if (0x8E38E38E38E38E39 * ((a2[7] - v12) >> 4) <= v11)
      {
        sub_6FAB4();
      }

      v10 = v12 + 144 * v11;
      v13 = *(v10 + 104);
      if (v13 != -1)
      {
        v14 = a2[9];
        if (0xF0F0F0F0F0F0F0F1 * ((a2[10] - v14) >> 3) <= v13)
        {
          sub_6FAB4();
        }

        v10 = v14 + 136 * v13;
      }
    }

    v15 = *(v5 + 1008);
    if (v15 <= 5)
    {
      v16 = *(v10 + 88);
      if (((1 << v15) & 0x26) != 0)
      {
        v17 = *(v5 + 116);
        v18 = *(v5 + 768);
        if (v17 == 0x7FFFFFFF)
        {
          v17 = *(v5 + 40);
          v19 = v17;
        }

        else
        {
          v19 = *(v5 + 116 + 4 * (*(v5 + 120) != 0x7FFFFFFF));
        }
      }

      else
      {
        if (((1 << v15) & 0x18) == 0)
        {
          goto LABEL_27;
        }

        v20 = *(v5 + 488);
        if (v20 == *(v5 + 496))
        {
          goto LABEL_27;
        }

        v21 = a2 + 73;
        if (v15 != 4)
        {
          v21 = &v20[v20[1] != 0x7FFFFFFF];
        }

        v19 = *v21;
        v18 = *(v20 + 3);
        v17 = *v20;
      }

      *(v5 + 2176) = v18;
      *(v5 + 2184) = v17;
      *(v5 + 2188) = v19;
      *(v5 + 2192) = v16;
    }

LABEL_27:
    if (v6)
    {
      v24 = v6;
      operator delete(v6);
    }

LABEL_2:
    sub_A21708(v25);
  }
}

void sub_A117D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
    sub_98ED24(&a29);
    _Unwind_Resume(a1);
  }

  sub_98ED24(&a29);
  _Unwind_Resume(a1);
}

void sub_A11838()
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
  xmmword_27B38E0 = 0u;
  *algn_27B38F0 = 0u;
  dword_27B3900 = 1065353216;
  sub_3A9A34(&xmmword_27B38E0, v0);
  sub_3A9A34(&xmmword_27B38E0, v3);
  sub_3A9A34(&xmmword_27B38E0, __p);
  sub_3A9A34(&xmmword_27B38E0, v9);
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
    qword_27B38B8 = 0;
    qword_27B38C0 = 0;
    qword_27B38B0 = 0;
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

void sub_A11A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B38C8)
  {
    qword_27B38D0 = qword_27B38C8;
    operator delete(qword_27B38C8);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A11B2C(void *result, uint64_t a2, uint64_t a3)
{
  *result = a3;
  result[1] = a2;
  return result;
}

void sub_A11B34(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 8);
  if (v5 == v4 || *(v4 - 5704) != 4)
  {
    goto LABEL_10;
  }

  while (*v5 != 2)
  {
    v5 += 5704;
    if (v5 == v4)
    {
      goto LABEL_10;
    }
  }

  if (v5 == v4)
  {
LABEL_10:
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = -1;
    *(a3 + 43) = -1;
    *(a3 + 47) = 0;
    *(a3 + 55) = 0;
    *(a3 + 63) = 0;
    *(a3 + 71) = 0;
    *(a3 + 80) = 0;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 104) = 0;
    return;
  }

  v8 = (*a1)[9] + 696 * *(v5 + 752);
  __p = 0;
  __dst = 0;
  v19 = 0;
  v9 = *(v8 + 576);
  v10 = *(v8 + 568);
  v11 = &v9[*(v8 + 624)] - &v10[*(v8 + 616)] + *(v8 + 600) - *(v8 + 592);
  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_6CADD4(&__p, 0, v10, v9, v9 - v10);
  sub_6CADD4(&__p, __dst, *(v8 + 616), *(v8 + 624), *(v8 + 624) - *(v8 + 616));
  v12 = sub_6CADD4(&__p, __dst, *(v8 + 592), *(v8 + 600), *(v8 + 600) - *(v8 + 592));
  v13 = sub_A11DEC(v12, &__p);
  v14 = sub_9A9F28(a1[1], v5, v13);
  sub_55F1E8(a3, v14);
  v15 = *(a3 + 32);
  if (v15 > 2)
  {
    if (v15 == 3 || v15 == 4)
    {
      v16 = *(a3 + 23);
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(a3 + 8);
      }

      if (v16)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_26;
  }

  if (v15 != 1)
  {
    if (v15 == 2 && (*(a3 + 4) != -1 || *a3 != -1 || *(a3 + 8) != *(a3 + 16)))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (*a3 == -1)
  {
LABEL_26:
    sub_5410A0(a3, v8 + 104);
  }

LABEL_27:
  if (sub_9BCEF8(a2))
  {
    *(a3 + 104) = 1;
  }

  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }
}

void sub_A11DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A11DEC(uint64_t a1, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *a2 + 1;
  if (*a2 != v3 && v4 != v3)
  {
    while (1)
    {
      v6 = *v4;
      if (v6 > 7)
      {
        v7 = 0;
        v8 = *v2;
        if (v8 <= 7)
        {
          goto LABEL_6;
        }

LABEL_13:
        if (++v4 == v3)
        {
          break;
        }
      }

      else
      {
        v7 = dword_22A5FE8[v6];
        v8 = *v2;
        if (v8 > 7)
        {
          goto LABEL_13;
        }

LABEL_6:
        if (v7 < dword_22A5FE8[v8])
        {
          v2 = v4;
        }

        if (++v4 == v3)
        {
          break;
        }
      }
    }
  }

  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

void sub_A11E84()
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
  xmmword_27B3938 = 0u;
  unk_27B3948 = 0u;
  dword_27B3958 = 1065353216;
  sub_3A9A34(&xmmword_27B3938, v0);
  sub_3A9A34(&xmmword_27B3938, v3);
  sub_3A9A34(&xmmword_27B3938, __p);
  sub_3A9A34(&xmmword_27B3938, v9);
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
    qword_27B3910 = 0;
    qword_27B3918 = 0;
    qword_27B3908 = 0;
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

void sub_A120CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3920)
  {
    qword_27B3928 = qword_27B3920;
    operator delete(qword_27B3920);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_A12178(uint64_t *result)
{
  v1 = result[1];
  v2 = *result;
  if (*result != v1)
  {
    v3 = *(v2 + 16);
    if (*(v2 + 8) != v3 && *(v3 - 5704) == 4)
    {
      v4 = result;
      while (1)
      {
        v5 = *(v2 + 8);
        v6 = *(v2 + 16);
        if (v5 != v6)
        {
          while (*v5 != 2)
          {
            v5 += 1426;
            if (v5 == v6)
            {
              goto LABEL_5;
            }
          }
        }

        if (v5 != v6)
        {
          result = sub_B6E0(v5 + 36);
          if (!result)
          {
            break;
          }
        }

LABEL_5:
        v2 += 104;
        if (v2 == v1)
        {
          return result;
        }
      }

      v7 = *v4;
      v8 = v4[1];
      if (*v4 != v8)
      {
        do
        {
          v9 = *(v7 + 8);
          v10 = *(v7 + 16);
          if (v9 != v10)
          {
            while (*v9 != 2)
            {
              v9 += 5704;
              if (v9 == v10)
              {
                v9 = *(v7 + 16);
                break;
              }
            }
          }

          *(v9 + 744) = 1;
          v7 += 104;
        }

        while (v7 != v8);
      }
    }
  }

  return result;
}

void sub_A12274(void *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = v1 - *a1;
  v4 = 0x4EC4EC4EC4EC4EC5 * (v3 >> 3);
  if (v1 != *a1 && v4 >= 2)
  {
    v6 = *(v2 + 2);
    if (*(v2 + 1) != v6 && *(v6 - 5704) == 4)
    {
      if (v3 == 104)
      {
        v8 = 0;
      }

      else
      {
        v9 = 0;
        v10 = *a1;
        while (*v10)
        {
          v10 += 26;
          v9 -= 104;
          if (v10 == v1)
          {
            goto LABEL_13;
          }
        }

        v8 = 0x4EC4EC4EC4EC4EC5 * (-v9 >> 3);
        if (v4 <= v8)
        {
LABEL_13:
          sub_6FAB4();
        }
      }

      v11 = &v2[26 * v8];
      v13 = *(v11 + 1);
      v12 = *(v11 + 2);
      if (v13 != v12)
      {
        while (*v13 != 2)
        {
          v13 += 5704;
          if (v13 == v12)
          {
            v13 = v12;
            break;
          }
        }
      }

      if (*(v13 + 2104) & 1) != 0 || v1 != v2 && (*(v13 + 2144))
      {
        v14 = 0;
        do
        {
          if (v14 != v8)
          {
            v15 = *a1 + 104 * v14;
            v17 = *(v15 + 8);
            v16 = *(v15 + 16);
            if (v17 != v16)
            {
              while (*v17 != 2)
              {
                v17 += 5704;
                if (v17 == v16)
                {
                  v17 = v16;
                  break;
                }
              }
            }

            if (*(v17 + 2104) == *(v13 + 2104))
            {
              if (*(v17 + 2104))
              {
                *(v17 + 2024) = *(v13 + 2024);
                if (v17 == v13)
                {
                  *(v17 + 2056) = *(v13 + 2056);
                  *(v17 + 2064) = *(v13 + 2064);
                }

                else
                {
                  v18 = (v17 + 2032);
                  v19 = *(v13 + 2055);
                  if (*(v17 + 2055) < 0)
                  {
                    if (v19 >= 0)
                    {
                      v22 = (v13 + 2032);
                    }

                    else
                    {
                      v22 = *(v13 + 2032);
                    }

                    if (v19 >= 0)
                    {
                      v23 = *(v13 + 2055);
                    }

                    else
                    {
                      v23 = *(v13 + 2040);
                    }

                    sub_13B38(v18, v22, v23);
                  }

                  else if ((*(v13 + 2055) & 0x80) != 0)
                  {
                    sub_13A68(v18, *(v13 + 2032), *(v13 + 2040));
                  }

                  else
                  {
                    v20 = *(v13 + 2032);
                    *(v17 + 2048) = *(v13 + 2048);
                    *v18 = v20;
                  }

                  *(v17 + 2056) = *(v13 + 2056);
                  *(v17 + 2064) = *(v13 + 2064);
                  sub_31F64((v17 + 2072), *(v13 + 2072), *(v13 + 2080), (*(v13 + 2080) - *(v13 + 2072)) >> 3);
                }

                *(v17 + 2096) = *(v13 + 2096);
              }
            }

            else if (*(v17 + 2104))
            {
              v21 = *(v17 + 2072);
              if (v21)
              {
                *(v17 + 2080) = v21;
                operator delete(v21);
              }

              if (*(v17 + 2055) < 0)
              {
                operator delete(*(v17 + 2032));
              }

              *(v17 + 2104) = 0;
            }

            else
            {
              sub_9740B0(v17 + 2024, v13 + 2024);
              *(v17 + 2104) = 1;
            }

            sub_A01A58(v17 + 2112, v13 + 2112);
          }

          ++v14;
        }

        while (v14 != v4);
      }
    }
  }
}

void sub_A124F0(uint64_t *a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3[2] == 1 || *(a2 + 174) == 1)
  {
    goto LABEL_3;
  }

  v10 = sub_A0716C(a2);
  sub_A07024(a2, v25);
  v11 = v25[0];
  v12 = sub_A072BC(a2);
  v13 = sub_A07308(a2);
  if (sub_A07228(a2))
  {
    v14 = a3;
    v15 = *a3;
    if (v13 != 0x7FFFFFFF)
    {
      v15 = v13;
    }

    if (v10 - v15 <= 10799)
    {
      v19 = *v12;
      v20 = *(v12 + 8);
      if (*v12 != v20)
      {
        v21 = v10;
        while (v21 - v10 <= 3600)
        {
          v22 = *v19;
          if (*v19 - v21 >= 10800)
          {
            v11 = (v21 - v10 + v11);
            v16 = 1;
            goto LABEL_20;
          }

          v19 += 3;
          v21 = v22;
          if (v19 == v20)
          {
            goto LABEL_3;
          }
        }
      }

      goto LABEL_3;
    }

    v16 = 0;
  }

  else
  {
    if (*v12 == *(v12 + 8))
    {
      goto LABEL_3;
    }

    v17 = **v12;
    if (v17 == 0x7FFFFFFF)
    {
      goto LABEL_3;
    }

    v18 = v17 - v10;
    if (v18 <= 10799)
    {
      goto LABEL_3;
    }

    v14 = a3;
    v11 = (v18 + v11);
    v16 = 2;
  }

LABEL_20:
  v26 = v16 | (v11 << 32);
  if (v11 == 0x7FFFFFFF)
  {
LABEL_3:
    *(a5 + 160) = 0;
    *(a5 + 128) = 0u;
    *(a5 + 144) = 0u;
    *(a5 + 96) = 0u;
    *(a5 + 112) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 80) = 0u;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    sub_64B998(a5);
    *(a5 + 160) = 0;
    return;
  }

  v23 = v14;
  v24 = sub_A07180(a2);
  sub_A126C8(a1, &v26, *(a2 + 168), (a2 + 144), (a2 + 96), v24, v23, a4, a5);
}

void sub_A126C8(uint64_t *a1@<X0>, int *a2@<X1>, int a3@<W2>, const char *a4@<X3>, const char *a5@<X4>, uint64_t a6@<X5>, int *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  memset(&__dst, 0, sizeof(__dst));
  memset(v25, 0, sizeof(v25));
  v16 = *a2;
  if (*a2 == 2)
  {
    *(&__dst.__r_.__value_.__s + 23) = 11;
    strcpy(&__dst, "Last_Until_");
    v25[23] = 19;
    qmemcpy(v25, "{NextDepartureTime}", 19);
    if (a3 == 1)
    {
      sub_9CBE3C(a6, &__p);
      if (v24 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v24 >= 0)
      {
        v18 = HIBYTE(v24);
      }

      else
      {
        v18 = v23;
      }

      std::string::append(&__dst, p_p, v18);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      qmemcpy(&__dst.__r_.__value_.__r.__words[1] + 3, "NoType", 6);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        __dst.__r_.__value_.__l.__size_ = 17;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = 17;
      }

      __dst.__r_.__value_.__s.__data_[17] = 0;
    }
  }

  else if (v16 == 1)
  {
    sub_195A048(&__dst, "Advisory_ServiceGap_ServiceEnds", 0x1FuLL);
    v25[23] = 16;
    strcpy(v25, "{ServiceEndTime}");
  }

  else if (!v16)
  {
    sub_195A048(&__dst, "Advisory_ServiceBeginsMessage", 0x1DuLL);
    v25[23] = 19;
    strcpy(v25, "{NextDepartureTime}");
  }

  sub_64B998(a9);
  *(a9 + 160) = 1;
  sub_64E308(a9, v25, a2 + 1, a4, 0);
  __p = 0;
  v23 = 0;
  v24 = 0;
  sub_9CCC50(a2 + 1, a5, a4, a8, a7, &__dst, a9, &__p);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

  v19 = sub_9274F4(*a1, &__dst);
  v20 = *(a9 + 8);
  if (v20 >= *(a9 + 16))
  {
    *(a9 + 8) = sub_1CEE8(a9, v19);
    if ((v25[23] & 0x80000000) != 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (*(v19 + 23) < 0)
    {
      sub_325C(*(a9 + 8), *v19, v19[1]);
    }

    else
    {
      v21 = *v19;
      *(v20 + 16) = v19[2];
      *v20 = v21;
    }

    *(a9 + 8) = v20 + 24;
    if ((v25[23] & 0x80000000) != 0)
    {
LABEL_29:
      operator delete(*v25);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_30;
      }

      return;
    }
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_30:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_A12984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_A12A00(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, int *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  if (a5[2] == 1 || *a2 != 2)
  {
    *(a8 + 160) = 0;
    *(a8 + 128) = 0u;
    *(a8 + 144) = 0u;
    *(a8 + 96) = 0u;
    *(a8 + 112) = 0u;
    *(a8 + 64) = 0u;
    *(a8 + 80) = 0u;
    *(a8 + 32) = 0u;
    *(a8 + 48) = 0u;
    *a8 = 0u;
    *(a8 + 16) = 0u;
    sub_64B998(a8);
    *(a8 + 160) = 0;
    return;
  }

  __p = 0;
  v23 = 0;
  v24 = 0;
  v10 = *(a2 + 440);
  v11 = *(a2 + 448);
  if (v11 != v10)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v11 - v10) >> 2)) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v25[2] = &__p;
  v12 = *(a2 + 472);
  if (*(a2 + 464) == v12)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v12 - 28);
  }

  v14 = *(a2 + 116);
  if (v14 == 0x7FFFFFFF)
  {
    v15 = *(a3 + 40);
  }

  else
  {
    v15 = v14;
  }

  v16 = *(a2 + 1008);
  if (v16 != 4 && v16 != 2)
  {
    goto LABEL_28;
  }

  if (v13 == 0x7FFFFFFF)
  {
    v13 = *a5;
  }

  if (v15 - v13 > 10799 && (v25[0] = v15 << 32, v15 != 0x7FFFFFFF))
  {
    v17 = *(a2 + 48);
    if (v17 == -1)
    {
      v17 = *(a2 + 56);
    }

    if (0xCF3CF3CF3CF3CF3DLL * ((a7[1] - *a7) >> 3) <= v17)
    {
      sub_6FAB4();
    }

    v18 = *a7 + 168 * v17;
    v19 = *(a2 + 752);
    v20 = a7[9];
    if (0x66FD0EB66FD0EB67 * ((a7[10] - v20) >> 3) <= v19)
    {
      sub_6FAB4();
    }

    sub_A126C8(a1, v25, 1, (v18 + 136), a4, *(v20 + 696 * v19 + 556), a5, a6, a8);
    v21 = __p;
    if (__p)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_28:
    *(a8 + 160) = 0;
    *(a8 + 128) = 0u;
    *(a8 + 144) = 0u;
    *(a8 + 96) = 0u;
    *(a8 + 112) = 0u;
    *(a8 + 64) = 0u;
    *(a8 + 80) = 0u;
    *(a8 + 32) = 0u;
    *(a8 + 48) = 0u;
    *a8 = 0u;
    *(a8 + 16) = 0u;
    sub_64B998(a8);
    *(a8 + 160) = 0;
    v21 = __p;
    if (__p)
    {
LABEL_26:
      v23 = v21;
      operator delete(v21);
    }
  }
}

void sub_A12D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_A12D98(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v6 = *v2;
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *v2) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0x1555555555555555)
    {
      sub_1794();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v6) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (v10 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    v12 = 4 * ((v3 - *v2) >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v13 = 12 * v7 + 12;
    v14 = 12 * v7 - (v3 - v6);
    memcpy((v12 - (v3 - v6)), v6, v3 - v6);
    *v2 = v14;
    *(v2 + 8) = v13;
    *(v2 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }

    result = v11;
    *(v2 + 8) = v13;
  }

  else
  {
    v5 = *a2;
    *(v3 + 8) = *(a2 + 2);
    *v3 = v5;
    *(v2 + 8) = v3 + 12;
  }

  return result;
}

void sub_A12EF0()
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
  xmmword_27B39C0 = 0u;
  *algn_27B39D0 = 0u;
  dword_27B39E0 = 1065353216;
  sub_3A9A34(&xmmword_27B39C0, v0);
  sub_3A9A34(&xmmword_27B39C0, v3);
  sub_3A9A34(&xmmword_27B39C0, __p);
  sub_3A9A34(&xmmword_27B39C0, v9);
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
    qword_27B3968 = 0;
    qword_27B3970 = 0;
    qword_27B3960 = 0;
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

void sub_A131C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3978)
  {
    qword_27B3980 = qword_27B3978;
    operator delete(qword_27B3978);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A1328C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a3;
  result[1] = a2;
  result[2] = a4;
  return result;
}

void sub_A13298(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = a2[94];
  v6 = *(*a1 + 72);
  if (0x66FD0EB66FD0EB67 * ((*(*a1 + 80) - v6) >> 3) <= v5)
  {
    sub_6FAB4();
  }

  *(a4 + 80) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 88) = -1;
  *(a4 + 91) = -1;
  *(a4 + 95) = 0;
  *(a4 + 111) = 0;
  *(a4 + 103) = 0;
  *(a4 + 119) = 0;
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 128) = 0;
  *(a4 + 152) = 0;
  *(a4 + 192) = 0;
  *(a4 + 203) = -1;
  *(a4 + 200) = -1;
  *(a4 + 215) = 0;
  *(a4 + 207) = 0;
  *(a4 + 231) = 0;
  *(a4 + 223) = 0;
  *(a4 + 240) = 0;
  *(a4 + 248) = 0;
  *(a4 + 264) = 0;
  *(a4 + 256) = 0;
  v10 = sub_9A9F28(*(a1 + 8), a2, 7);
  v11 = v6 + 696 * v5;
  if (*(*(a1 + 16) + 1444) < 2u)
  {
    goto LABEL_22;
  }

  v12 = v10;
  v13 = v10[8];
  if (v13 > 2)
  {
    if (v13 == 3 || v13 == 4)
    {
      v16 = *(v10 + 23);
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(v10 + 1);
      }

      v15 = v16 == 0;
      goto LABEL_15;
    }

LABEL_22:
    if (a2[275] == a2[276])
    {
      v22 = *(v11 + 616);
      v23 = *(v11 + 624);
      while (v22 != v23)
      {
        v25 = sub_9A9F28(*(a1 + 8), a2, *v22);
        v26 = *(a4 + 8);
        if (v26 >= *(a4 + 16))
        {
          v24 = sub_9A6FB4(a4, v25);
        }

        else
        {
          sub_55F1E8(*(a4 + 8), v25);
          v24 = v26 + 112;
        }

        *(a4 + 8) = v24;
        ++v22;
      }

      v27 = *(v11 + 592);
      v28 = *(v11 + 600);
      while (v27 != v28)
      {
        v30 = sub_9A9F28(*(a1 + 8), a2, *v27);
        v31 = *(a4 + 32);
        if (v31 >= *(a4 + 40))
        {
          v29 = sub_9A6FB4((a4 + 24), v30);
        }

        else
        {
          sub_55F1E8(*(a4 + 32), v30);
          v29 = v31 + 112;
        }

        *(a4 + 32) = v29;
        ++v27;
      }

LABEL_48:
      if (*(v11 + 641) != 1)
      {
        goto LABEL_50;
      }

LABEL_49:
      v35 = sub_9A9F28(*(a1 + 8), a2, *(v11 + 640));
      sub_5410A0(a4 + 160, v35);
      goto LABEL_50;
    }

    v19 = sub_9A9F28(*(a1 + 8), a2, 3);
    sub_55F1E8(&v43, v19);
    v20 = *(a4 + 8);
    if (v20 >= *(a4 + 16))
    {
      v21 = sub_9A6FB4(a4, &v43);
    }

    else
    {
      sub_55F1E8(*(a4 + 8), &v43);
      v21 = v20 + 112;
    }

    *(a4 + 8) = v21;
    v32 = *(a4 + 32);
    if (v32 >= *(a4 + 40))
    {
      v33 = sub_9A6FB4((a4 + 24), &v43);
    }

    else
    {
      sub_55F1E8(*(a4 + 32), &v43);
      v33 = v32 + 112;
    }

    *(a4 + 32) = v33;
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__p);
      if ((v51 & 0x80000000) == 0)
      {
LABEL_43:
        v34 = v47;
        if (v47 == -1)
        {
          goto LABEL_48;
        }

LABEL_47:
        (off_266F960[v34])(&v41, &v43);
        goto LABEL_48;
      }
    }

    else if ((v51 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    operator delete(v49);
    v34 = v47;
    if (v47 == -1)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v13 == 1)
  {
    v15 = *v10 == -1;
LABEL_15:
    v14 = !v15;
    goto LABEL_18;
  }

  if (v13 != 2)
  {
    goto LABEL_22;
  }

  v14 = 1;
  if (v10[1] == -1 && *v10 == -1)
  {
    v15 = *(v10 + 1) == *(v10 + 2);
    goto LABEL_15;
  }

LABEL_18:
  if (!v14 || (a3 & 1) != 0)
  {
    goto LABEL_22;
  }

  v17 = *(a4 + 8);
  if (v17 >= *(a4 + 16))
  {
    v18 = sub_9A6FB4(a4, v10);
  }

  else
  {
    sub_55F1E8(*(a4 + 8), v10);
    v18 = v17 + 112;
  }

  *(a4 + 8) = v18;
  v37 = *(a4 + 32);
  if (v37 >= *(a4 + 40))
  {
    v38 = sub_9A6FB4((a4 + 24), v12);
  }

  else
  {
    sub_55F1E8(*(a4 + 32), v12);
    v38 = v37 + 112;
  }

  *(a4 + 32) = v38;
  if (*(v11 + 641) == 1)
  {
    goto LABEL_49;
  }

LABEL_50:
  if (*(a4 + 24) != *(a4 + 32) || !sub_7E7E4(3u))
  {
    return;
  }

  sub_19594F8(&v43);
  sub_4A5C(&v43, "No stepping artworks resolved for line ", 39);
  std::ostream::operator<<();
  if ((v56 & 0x10) != 0)
  {
    v39 = v55;
    if (v55 < v50)
    {
      v55 = v50;
      v39 = v50;
    }

    v40 = v49;
    v36 = v39 - v49;
    if (v39 - v49 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_76:
      sub_3244();
    }

LABEL_64:
    if (v36 >= 0x17)
    {
      operator new();
    }

    v42 = v36;
    if (v36)
    {
      memmove(&v41, v40, v36);
    }

    goto LABEL_69;
  }

  if ((v56 & 8) != 0)
  {
    v40 = v46;
    v36 = v48 - v46;
    if ((v48 - v46) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_76;
    }

    goto LABEL_64;
  }

  v36 = 0;
  v42 = 0;
LABEL_69:
  *(&v41 + v36) = 0;
  sub_7E854(&v41, 3u);
  if (v42 < 0)
  {
    operator delete(v41);
  }

  if (v54 < 0)
  {
    operator delete(v52);
  }

  std::locale::~locale(&v45);
  std::ostream::~ostream();
  std::ios::~ios();
}

void sub_A13874(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

void sub_A1388C(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

void sub_A138A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_97E978(v15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_97E978(v15);
  _Unwind_Resume(a1);
}

void sub_A13948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_53E440(va);
  sub_97E978(v4);
  _Unwind_Resume(a1);
}

void sub_A1398C(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

void sub_A139A4(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

BOOL sub_A139E4(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      v5 = *a1 == -1;
    }

    else
    {
      if (v3 != 2)
      {
        return result;
      }

      if (*(a1 + 4) != -1)
      {
        return 1;
      }

      if (*a1 != -1)
      {
        return 1;
      }

      v5 = *(a1 + 8) == *(a1 + 16);
    }

    return !v5;
  }

  if (v3 == 3 || v3 == 4)
  {
    v4 = *(a1 + 23);
    if (v4 < 0)
    {
      v4 = *(a1 + 8);
    }

    v5 = v4 == 0;
    return !v5;
  }

  return result;
}

uint64_t sub_A13A70(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_9A6FB4(a1, a2);
    a1[1] = result;
  }

  else
  {
    sub_55F1E8(a1[1], a2);
    result = v3 + 112;
    a1[1] = v3 + 112;
    a1[1] = v3 + 112;
  }

  return result;
}

void sub_A13AD0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 80) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 88) = -1;
  *(a4 + 91) = -1;
  *(a4 + 95) = 0;
  *(a4 + 111) = 0;
  *(a4 + 103) = 0;
  *(a4 + 119) = 0;
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 128) = 0;
  *(a4 + 152) = 0;
  *(a4 + 192) = 0;
  *(a4 + 203) = -1;
  *(a4 + 200) = -1;
  *(a4 + 215) = 0;
  *(a4 + 207) = 0;
  *(a4 + 231) = 0;
  *(a4 + 223) = 0;
  *(a4 + 240) = 0;
  *(a4 + 248) = 0;
  *(a4 + 264) = 0;
  *(a4 + 256) = 0;
  v8 = sub_9A9F28(*(a1 + 8), a2, 7);
  v9 = v8;
  v10 = v8[8];
  if (v10 > 2)
  {
    if (v10 != 3 && v10 != 4)
    {
      goto LABEL_21;
    }

    v11 = *(v8 + 23);
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v8 + 1);
    }

    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  if (v10 != 1)
  {
    if (v10 != 2 || v8[1] == -1 && *v8 == -1 && *(v8 + 1) == *(v8 + 2))
    {
      goto LABEL_21;
    }

LABEL_13:
    v12 = *(a4 + 32);
    if (v12 >= *(a4 + 40))
    {
      v13 = sub_9A6FB4((a4 + 24), v8);
    }

    else
    {
      sub_55F1E8(*(a4 + 32), v8);
      v13 = v12 + 112;
    }

    *(a4 + 32) = v13;
    v14 = *(a4 + 8);
    if (v14 >= *(a4 + 16))
    {
      v15 = sub_9A6FB4(a4, v9);
    }

    else
    {
      sub_55F1E8(*(a4 + 8), v9);
      v15 = v14 + 112;
    }

    *(a4 + 8) = v15;
    return;
  }

  if (*v8 != -1)
  {
    goto LABEL_13;
  }

LABEL_21:
  v17 = *a3;
  v16 = a3[1];
  do
  {
    if (v16 == v17)
    {
      if (*(*(v17 - 8) + 2200) == *(*(v17 - 8) + 2208))
      {
        goto LABEL_28;
      }

LABEL_25:
      v20 = sub_9A9F28(*(a1 + 8), a2, 3);
      sub_55F1E8(v39, v20);
      v21 = *(a4 + 32);
      if (v21 >= *(a4 + 40))
      {
        v22 = sub_9A6FB4((a4 + 24), v39);
      }

      else
      {
        sub_55F1E8(*(a4 + 32), v39);
        v22 = v21 + 112;
      }

      *(a4 + 32) = v22;
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v43) & 0x80000000) == 0)
        {
LABEL_38:
          v31 = v40;
          if (v40 == -1)
          {
            goto LABEL_43;
          }

LABEL_42:
          (off_266F960[v31])(&v48, v39);
          goto LABEL_43;
        }
      }

      else if ((SHIBYTE(v43) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      operator delete(v42[0]);
      v31 = v40;
      if (v40 == -1)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    v19 = *(v16 - 8);
    v16 -= 8;
    v18 = v19;
  }

  while (*v19 != 2);
  if (*(v18 + 275) != *(v18 + 276))
  {
    goto LABEL_25;
  }

LABEL_28:
  v23 = *(a2 + 752);
  v24 = *(*a1 + 72);
  if (0x66FD0EB66FD0EB67 * ((*(*a1 + 80) - v24) >> 3) <= v23)
  {
    sub_6FAB4();
  }

  v25 = v24 + 696 * v23;
  v26 = *(v25 + 592);
  v27 = *(v25 + 600);
  while (v26 != v27)
  {
    v29 = sub_9A9F28(*(a1 + 8), a2, *v26);
    v30 = *(a4 + 32);
    if (v30 >= *(a4 + 40))
    {
      v28 = sub_9A6FB4((a4 + 24), v29);
    }

    else
    {
      sub_55F1E8(*(a4 + 32), v29);
      v28 = v30 + 112;
    }

    *(a4 + 32) = v28;
    ++v26;
  }

LABEL_43:
  if (*(*(a1 + 16) + 1444) < 2u)
  {
    return;
  }

  sub_9AA338(*(a1 + 8), 210011, v39);
  v32 = *(a4 + 8);
  if (v32 >= *(a4 + 16))
  {
    sub_55ED98(a4, v39);
    v36 = SHIBYTE(v46);
    *(a4 + 8) = v37;
    if (v36 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v43) < 0)
      {
        goto LABEL_54;
      }
    }

    else if (SHIBYTE(v43) < 0)
    {
      goto LABEL_54;
    }

LABEL_51:
    v38 = v40;
    if (v40 != -1)
    {
      goto LABEL_55;
    }

    return;
  }

  *v32 = 0;
  *(v32 + 32) = -1;
  v33 = v40;
  if (v40 != -1)
  {
    v48 = v32;
    (off_266F988[v40])(&v48, v39);
    *(v32 + 32) = v33;
  }

  *(v32 + 40) = v41;
  v34 = *v42;
  *(v32 + 64) = v43;
  *(v32 + 48) = v34;
  v42[0] = 0;
  v42[1] = 0;
  *(v32 + 72) = v44;
  v35 = *__p;
  *(v32 + 96) = v46;
  *(v32 + 80) = v35;
  v43 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v46 = 0;
  *(v32 + 104) = v47;
  *(a4 + 8) = v32 + 112;
  if ((SHIBYTE(v43) & 0x80000000) == 0)
  {
    goto LABEL_51;
  }

LABEL_54:
  operator delete(v42[0]);
  v38 = v40;
  if (v40 != -1)
  {
LABEL_55:
    (off_266F960[v38])(&v48, v39);
  }
}

void sub_A13F24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  sub_97E978(v2);
  _Unwind_Resume(a1);
}

void sub_A13F80(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

void sub_A13F98(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

void sub_A13FD8(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

void sub_A14004(uint64_t a1@<X0>, void *a2@<X1>, uint64_t **a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 80) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 88) = -1;
  *(a4 + 91) = -1;
  *(a4 + 95) = 0;
  *(a4 + 111) = 0;
  *(a4 + 103) = 0;
  *(a4 + 119) = 0;
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 128) = 0;
  *(a4 + 152) = 0;
  *(a4 + 192) = 0;
  *(a4 + 203) = -1;
  *(a4 + 200) = -1;
  *(a4 + 215) = 0;
  *(a4 + 207) = 0;
  *(a4 + 231) = 0;
  *(a4 + 223) = 0;
  *(a4 + 240) = 0;
  *(a4 + 248) = 0;
  *(a4 + 264) = 0;
  v7 = a2[1] - *a2;
  *(a4 + 256) = 0;
  if (v7 == 8)
  {
    sub_9AA338(*(a1 + 8), 210004, v23);
    v8 = *(a4 + 32);
    if (v8 >= *(a4 + 40))
    {
      sub_55ED98((a4 + 24), v23);
      v13 = SHIBYTE(v30);
      *(a4 + 32) = v14;
      if (v13 < 0)
      {
        operator delete(v29[0]);
        if (SHIBYTE(v27) < 0)
        {
          goto LABEL_6;
        }
      }

      else if (SHIBYTE(v27) < 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 32) = -1;
      v9 = v24;
      if (v24 != -1)
      {
        v32 = v8;
        (off_266F988[v24])(&v32, v23);
        *(v8 + 32) = v9;
      }

      *(v8 + 40) = v25;
      v10 = *__p;
      *(v8 + 64) = v27;
      *(v8 + 48) = v10;
      __p[0] = 0;
      __p[1] = 0;
      *(v8 + 72) = v28;
      v11 = *v29;
      *(v8 + 96) = v30;
      *(v8 + 80) = v11;
      v27 = 0;
      v29[0] = 0;
      v29[1] = 0;
      v30 = 0;
      *(v8 + 104) = v31;
      *(a4 + 32) = v8 + 112;
      if (SHIBYTE(v27) < 0)
      {
LABEL_6:
        operator delete(__p[0]);
        v12 = v24;
        if (v24 == -1)
        {
          goto LABEL_12;
        }

LABEL_11:
        (off_266F960[v12])(&v32, v23);
        goto LABEL_12;
      }
    }

    v12 = v24;
    if (v24 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_12:
  v15 = a3[1];
  v16 = *a3;
  if (*a3 != v15)
  {
    while (**v16 != 2)
    {
      if (++v16 == v15)
      {
        return;
      }
    }
  }

  if (v16 != v15 && !*(*(a1 + 16) + 1444))
  {
    v17 = sub_9A9F28(*(a1 + 8), *v16, 7);
    v18 = v17[8];
    if (v18 > 2)
    {
      if (v18 != 3 && v18 != 4)
      {
        return;
      }

      v20 = *(v17 + 23);
      if ((v20 & 0x80u) != 0)
      {
        v20 = *(v17 + 1);
      }

      if (!v20)
      {
        return;
      }
    }

    else if (v18 == 1)
    {
      if (*v17 == -1)
      {
        return;
      }
    }

    else
    {
      if (v18 != 2)
      {
        return;
      }

      v19 = v17[1] == -1 && *v17 == -1;
      if (v19 && *(v17 + 1) == *(v17 + 2))
      {
        return;
      }
    }

    v21 = *(a4 + 8);
    if (v21 >= *(a4 + 16))
    {
      v22 = sub_9A6FB4(a4, v17);
    }

    else
    {
      sub_55F1E8(*(a4 + 8), v17);
      v22 = v21 + 112;
    }

    *(a4 + 8) = v22;
  }
}

void sub_A142E4(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

void sub_A14314(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  sub_97E978(v2);
  _Unwind_Resume(a1);
}

void sub_A14348(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 80) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 88) = -1;
  *(a3 + 91) = -1;
  *(a3 + 95) = 0;
  *(a3 + 111) = 0;
  *(a3 + 103) = 0;
  *(a3 + 119) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  *(a3 + 192) = 0;
  *(a3 + 203) = -1;
  *(a3 + 200) = -1;
  *(a3 + 215) = 0;
  *(a3 + 207) = 0;
  *(a3 + 231) = 0;
  *(a3 + 223) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  *(a3 + 264) = 0;
  *(a3 + 256) = 0;
  if (*(a2 + 856) == -1 || *(*(a1 + 16) + 1444) > 1u)
  {
    return;
  }

  v5 = sub_9A9F28(*(a1 + 8), a2, 5);
  v6 = v5;
  v7 = v5[8];
  if (v7 > 2)
  {
    if (v7 != 3 && v7 != 4)
    {
      goto LABEL_19;
    }

    v8 = *(v5 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v5 + 1);
    }

    if (!v8)
    {
      goto LABEL_19;
    }
  }

  else if (v7 == 1)
  {
    if (*v5 == -1)
    {
      goto LABEL_19;
    }
  }

  else if (v7 != 2 || v5[1] == -1 && *v5 == -1 && *(v5 + 1) == *(v5 + 2))
  {
    goto LABEL_19;
  }

  sub_5410A0(a3 + 48, v5);
  v9 = *(a3 + 32);
  if (v9 >= *(a3 + 40))
  {
    *(a3 + 32) = sub_9A6FB4((a3 + 24), v6);
    v10 = (a3 + 24);
    if (*(a3 + 24) != *(a3 + 32))
    {
      return;
    }

    goto LABEL_22;
  }

  sub_55F1E8(*(a3 + 32), v6);
  *(a3 + 32) = v9 + 112;
LABEL_19:
  v10 = (a3 + 24);
  if (*(a3 + 24) != *(a3 + 32))
  {
    return;
  }

LABEL_22:
  sub_9AA338(*(a1 + 8), 210011, v18);
  v11 = *(a3 + 32);
  if (v11 >= *(a3 + 40))
  {
    sub_55ED98(v10, v18);
    v15 = SHIBYTE(v25);
    *(a3 + 32) = v16;
    if (v15 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v22) < 0)
      {
        goto LABEL_32;
      }
    }

    else if (SHIBYTE(v22) < 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    *v11 = 0;
    *(v11 + 32) = -1;
    v12 = v19;
    if (v19 != -1)
    {
      v27 = v11;
      (off_266F988[v19])(&v27, v18);
      *(v11 + 32) = v12;
    }

    *(v11 + 40) = v20;
    v13 = *v21;
    *(v11 + 64) = v22;
    *(v11 + 48) = v13;
    v21[0] = 0;
    v21[1] = 0;
    *(v11 + 72) = v23;
    v14 = *__p;
    *(v11 + 96) = v25;
    *(v11 + 80) = v14;
    v22 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v25 = 0;
    *(v11 + 104) = v26;
    *(a3 + 32) = v11 + 112;
    if (SHIBYTE(v22) < 0)
    {
LABEL_32:
      operator delete(v21[0]);
      v17 = v19;
      if (v19 == -1)
      {
        return;
      }

      goto LABEL_33;
    }
  }

  v17 = v19;
  if (v19 != -1)
  {
LABEL_33:
    (off_266F960[v17])(&v27, v18);
  }
}

void sub_A14608(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  sub_97E978(v2);
  _Unwind_Resume(a1);
}

void sub_A14628(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_A14668@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + 752);
  v6 = *(*result + 72);
  if (0x66FD0EB66FD0EB67 * ((*(*result + 80) - v6) >> 3) <= v5)
  {
    sub_6FAB4();
  }

  v8 = result;
  *(a4 + 80) = 0;
  v9 = v6 + 696 * v5;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 88) = -1;
  *(a4 + 91) = -1;
  *(a4 + 95) = 0;
  *(a4 + 111) = 0;
  *(a4 + 103) = 0;
  *(a4 + 119) = 0;
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 128) = 0;
  *(a4 + 152) = 0;
  *(a4 + 192) = 0;
  *(a4 + 203) = -1;
  *(a4 + 200) = -1;
  *(a4 + 215) = 0;
  *(a4 + 207) = 0;
  *(a4 + 231) = 0;
  *(a4 + 223) = 0;
  *(a4 + 240) = 0;
  *(a4 + 248) = 0;
  *(a4 + 264) = 0;
  *(a4 + 256) = 0;
  if ((a3 & 1) != 0 || *(*(result + 16) + 1444) <= 1u)
  {
    v10 = *(v9 + 616);
    v11 = *(v9 + 624);
    while (v10 != v11)
    {
      v13 = sub_9A9F28(*(v8 + 8), a2, *v10);
      v14 = *(a4 + 8);
      if (v14 >= *(a4 + 16))
      {
        v12 = sub_9A6FB4(a4, v13);
      }

      else
      {
        sub_55F1E8(*(a4 + 8), v13);
        v12 = v14 + 112;
      }

      *(a4 + 8) = v12;
      ++v10;
    }

    v15 = *(v9 + 592);
    v16 = *(v9 + 600);
    if (v15 == v16)
    {
      result = *(a4 + 32);
    }

    else
    {
      do
      {
        while (1)
        {
          v17 = sub_9A9F28(*(v8 + 8), a2, *v15);
          v18 = *(a4 + 32);
          if (v18 < *(a4 + 40))
          {
            break;
          }

          result = sub_9A6FB4((a4 + 24), v17);
          *(a4 + 32) = result;
          if (++v15 == v16)
          {
            goto LABEL_15;
          }
        }

        sub_55F1E8(*(a4 + 32), v17);
        result = v18 + 112;
        *(a4 + 32) = v18 + 112;
        ++v15;
      }

      while (v15 != v16);
    }

LABEL_15:
    if (*(a4 + 24) == result)
    {
      result = sub_7E7E4(3u);
      if (result)
      {
        sub_19594F8(&v25);
        sub_4A5C(&v25, "No stepping artworks resolved for line ", 39);
        std::ostream::operator<<();
        if ((v35 & 0x10) != 0)
        {
          v20 = v34;
          if (v34 < v31)
          {
            v34 = v31;
            v20 = v31;
          }

          v21 = v30;
          v19 = v20 - v30;
          if (v20 - v30 >= 0x7FFFFFFFFFFFFFF8)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if ((v35 & 8) == 0)
          {
            v19 = 0;
            v24 = 0;
LABEL_28:
            *(&__p + v19) = 0;
            sub_7E854(&__p, 3u);
            if (v24 < 0)
            {
              operator delete(__p);
            }

            if (v33 < 0)
            {
              operator delete(v32);
            }

            std::locale::~locale(&v27);
            std::ostream::~ostream();
            result = std::ios::~ios();
            goto LABEL_33;
          }

          v21 = v28;
          v19 = v29 - v28;
          if ((v29 - v28) >= 0x7FFFFFFFFFFFFFF8)
          {
LABEL_37:
            sub_3244();
          }
        }

        if (v19 >= 0x17)
        {
          operator new();
        }

        v24 = v19;
        if (v19)
        {
          memmove(&__p, v21, v19);
        }

        goto LABEL_28;
      }
    }
  }

LABEL_33:
  if (*(v9 + 641) == 1)
  {
    v22 = sub_9A9F28(*(v8 + 8), a2, *(v9 + 640));
    return sub_5410A0(a4 + 160, v22);
  }

  return result;
}

void sub_A14A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_97E978(v15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_97E978(v15);
  _Unwind_Resume(a1);
}

void sub_A14AEC(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

void sub_A14B04(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_97E978(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_A14B44@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t **a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 80) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 88) = -1;
  *(a5 + 91) = -1;
  *(a5 + 95) = 0;
  *(a5 + 111) = 0;
  *(a5 + 103) = 0;
  *(a5 + 119) = 0;
  *(a5 + 136) = 0;
  *(a5 + 144) = 0;
  *(a5 + 128) = 0;
  *(a5 + 152) = 0;
  *(a5 + 192) = 0;
  *(a5 + 203) = -1;
  *(a5 + 200) = -1;
  *(a5 + 215) = 0;
  *(a5 + 207) = 0;
  *(a5 + 231) = 0;
  *(a5 + 223) = 0;
  *(a5 + 240) = 0;
  *(a5 + 248) = 0;
  *(a5 + 264) = 0;
  *(a5 + 256) = 0;
  v6 = *(*(result + 16) + 1444);
  if (v6 <= 1)
  {
    v7 = a3[1];
    if (*a3 != v7)
    {
      v8 = a4[1];
      if (*a4 != v8)
      {
        v9 = *(v7 - 8);
        if (*v9 == 4)
        {
          v11 = result;
          v12 = *a4;
          while (1)
          {
            v13 = *v12;
            if (**v12 == 2)
            {
              break;
            }

            if (++v12 == v8)
            {
              return result;
            }
          }

          if (v12 != v8)
          {
            if (v6)
            {
              sub_9AA338(*(result + 8), 210013, v16);
              sub_A154D0(a5, v16);
              result = sub_53E440(v16);
            }

            else if (***a4 != 6 && *(v9 + 1944) == *(v9 + 1952))
            {
              v14 = sub_9A9F28(*(result + 8), *v12, 7);
              result = sub_A139E4(v14);
              if (result)
              {
                result = sub_A13A70(a5, v14);
              }
            }

            if (*(a2 + 48) != *(a2 + 56) && *((*v11)[9] + 696 * *(v9 + 752) + 64) != *((*v11)[9] + 696 * *(v13 + 94) + 64))
            {
              v15 = sub_9A9F28(v11[1], v13, 3);
              if (!sub_A139E4(v15))
              {
                v15 = sub_9A9F28(v11[1], v13, 2);
              }

              return sub_A13A70((a5 + 24), v15);
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_A14D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_53E440(&a9);
  sub_97E978(v9);
  _Unwind_Resume(a1);
}

void sub_A14D94(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  if (*a3 == *(a3 + 8))
  {
    *(a4 + 240) = 0u;
    *(a4 + 256) = 0u;
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 91) = -1;
    *(a4 + 88) = -1;
    *(a4 + 95) = 0;
    *(a4 + 111) = 0;
    *(a4 + 103) = 0;
    *(a4 + 119) = 0;
    *(a4 + 136) = 0;
    *(a4 + 144) = 0;
    *(a4 + 128) = 0;
    *(a4 + 152) = 0;
    *(a4 + 200) = -1;
    *(a4 + 203) = -1;
    *(a4 + 207) = 0;
    *(a4 + 223) = 0;
    *(a4 + 215) = 0;
    *(a4 + 231) = 0;
    *(a4 + 240) = 0;
    *(a4 + 248) = 0;
    *(a4 + 264) = 0;
    *(a4 + 256) = 0;
    return;
  }

  v7 = *(a2 + 72);
  *(a4 + 80) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 88) = -1;
  *(a4 + 91) = -1;
  *(a4 + 95) = 0;
  *(a4 + 111) = 0;
  *(a4 + 103) = 0;
  *(a4 + 119) = 0;
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 128) = 0;
  *(a4 + 152) = 0;
  *(a4 + 192) = 0;
  *(a4 + 203) = -1;
  *(a4 + 200) = -1;
  *(a4 + 215) = 0;
  *(a4 + 207) = 0;
  *(a4 + 231) = 0;
  *(a4 + 223) = 0;
  *(a4 + 248) = 0;
  *(a4 + 256) = 0;
  *(a4 + 240) = 0;
  *(a4 + 264) = 0;
  if (v7 == 2)
  {
    v8 = *v5;
    if (*v8 == 6)
    {
      v9 = *(v8 + 864);
      if (v9 != -1)
      {
        v10 = sub_9BCBDC(*a1, v9);
        if ((v10 - 4) < 4 || v10 == 9)
        {
          sub_9AA338(*(a1 + 8), 210012, v32);
          v11 = *(a4 + 32);
          if (v11 >= *(a4 + 40))
          {
            sub_55ED98((a4 + 24), v32);
            v15 = SHIBYTE(v39);
            *(a4 + 32) = v16;
            if (v15 < 0)
            {
              operator delete(__p[0]);
              if (SHIBYTE(v36) < 0)
              {
                goto LABEL_18;
              }
            }

            else if (SHIBYTE(v36) < 0)
            {
              goto LABEL_18;
            }
          }

          else
          {
            *v11 = 0;
            *(v11 + 32) = -1;
            v12 = v33;
            if (v33 != -1)
            {
              v41 = v11;
              (off_266F988[v33])(&v41, v32);
              *(v11 + 32) = v12;
            }

            *(v11 + 40) = v34;
            v13 = *v35;
            *(v11 + 64) = v36;
            *(v11 + 48) = v13;
            v35[0] = 0;
            v35[1] = 0;
            *(v11 + 72) = v37;
            v14 = *__p;
            *(v11 + 96) = v39;
            *(v11 + 80) = v14;
            v36 = 0;
            __p[0] = 0;
            __p[1] = 0;
            v39 = 0;
            *(v11 + 104) = v40;
            *(a4 + 32) = v11 + 112;
            if (SHIBYTE(v36) < 0)
            {
LABEL_18:
              operator delete(v35[0]);
              v17 = v33;
              if (v33 == -1)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }
          }

          v17 = v33;
          if (v33 != -1)
          {
LABEL_19:
            (off_266F960[v17])(&v41, v32);
          }
        }
      }
    }
  }

LABEL_20:
  sub_9AA338(*(a1 + 8), 210002, v32);
  v18 = *(a4 + 8);
  if (v18 >= *(a4 + 16))
  {
    sub_55ED98(a4, v32);
    v22 = SHIBYTE(v39);
    *(a4 + 8) = v23;
    if (v22 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v36) < 0)
      {
        goto LABEL_30;
      }
    }

    else if (SHIBYTE(v36) < 0)
    {
      goto LABEL_30;
    }
  }

  else
  {
    *v18 = 0;
    *(v18 + 32) = -1;
    v19 = v33;
    if (v33 != -1)
    {
      v41 = v18;
      (off_266F988[v33])(&v41, v32);
      *(v18 + 32) = v19;
    }

    *(v18 + 40) = v34;
    v20 = *v35;
    *(v18 + 64) = v36;
    *(v18 + 48) = v20;
    v35[0] = 0;
    v35[1] = 0;
    *(v18 + 72) = v37;
    v21 = *__p;
    *(v18 + 96) = v39;
    *(v18 + 80) = v21;
    v36 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v39 = 0;
    *(v18 + 104) = v40;
    *(a4 + 8) = v18 + 112;
    if (SHIBYTE(v36) < 0)
    {
LABEL_30:
      operator delete(v35[0]);
      v24 = v33;
      if (v33 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  v24 = v33;
  if (v33 != -1)
  {
LABEL_31:
    (off_266F960[v24])(&v41, v32);
  }

LABEL_32:
  if (*(a4 + 24) != *(a4 + 32))
  {
    return;
  }

  sub_9AA338(*(a1 + 8), 210004, v32);
  v25 = *(a4 + 32);
  if (v25 >= *(a4 + 40))
  {
    sub_55ED98((a4 + 24), v32);
    v29 = SHIBYTE(v39);
    *(a4 + 32) = v30;
    if (v29 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v36) < 0)
      {
        goto LABEL_44;
      }
    }

    else if (SHIBYTE(v36) < 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    *v25 = 0;
    *(v25 + 32) = -1;
    v26 = v33;
    if (v33 != -1)
    {
      v41 = v25;
      (off_266F988[v33])(&v41, v32);
      *(v25 + 32) = v26;
    }

    *(v25 + 40) = v34;
    v27 = *v35;
    *(v25 + 64) = v36;
    *(v25 + 48) = v27;
    v35[0] = 0;
    v35[1] = 0;
    *(v25 + 72) = v37;
    v28 = *__p;
    *(v25 + 96) = v39;
    *(v25 + 80) = v28;
    v36 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v39 = 0;
    *(v25 + 104) = v40;
    *(a4 + 32) = v25 + 112;
    if (SHIBYTE(v36) < 0)
    {
LABEL_44:
      operator delete(v35[0]);
      v31 = v33;
      if (v33 != -1)
      {
        goto LABEL_45;
      }

      return;
    }
  }

  v31 = v33;
  if (v33 != -1)
  {
LABEL_45:
    (off_266F960[v31])(&v41, v32);
  }
}

void sub_A15278(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_53E440(va);
  sub_97E978(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_A15300@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(*(result + 16) + 1444) != 1 || **(*(a3 + 8) - 8) != 2)
  {
    *(a4 + 240) = 0u;
    *(a4 + 256) = 0u;
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 91) = -1;
    *(a4 + 88) = -1;
    *(a4 + 95) = 0;
    *(a4 + 111) = 0;
    *(a4 + 103) = 0;
    *(a4 + 119) = 0;
    *(a4 + 136) = 0;
    *(a4 + 144) = 0;
    *(a4 + 128) = 0;
    *(a4 + 152) = 0;
    *(a4 + 200) = -1;
    *(a4 + 203) = -1;
    *(a4 + 207) = 0;
    *(a4 + 223) = 0;
    *(a4 + 215) = 0;
    *(a4 + 231) = 0;
    *(a4 + 240) = 0;
    *(a4 + 248) = 0;
    *(a4 + 264) = 0;
    *(a4 + 256) = 0;
    return result;
  }

  *(a4 + 80) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 88) = -1;
  *(a4 + 91) = -1;
  *(a4 + 95) = 0;
  *(a4 + 111) = 0;
  *(a4 + 103) = 0;
  *(a4 + 119) = 0;
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 128) = 0;
  *(a4 + 152) = 0;
  *(a4 + 192) = 0;
  *(a4 + 203) = -1;
  *(a4 + 200) = -1;
  *(a4 + 215) = 0;
  *(a4 + 207) = 0;
  *(a4 + 231) = 0;
  *(a4 + 223) = 0;
  *(a4 + 240) = 0;
  *(a4 + 248) = 0;
  *(a4 + 264) = 0;
  *(a4 + 256) = 0;
  result = sub_9A9F28(*(result + 8), a2, 7);
  v5 = *(result + 32);
  if (v5 <= 2)
  {
    if (v5 == 1)
    {
      if (*result == -1)
      {
        return result;
      }
    }

    else if (v5 != 2 || *(result + 4) == -1 && *result == -1 && *(result + 8) == *(result + 16))
    {
      return result;
    }

LABEL_19:
    result = sub_9A6FB4(a4, result);
    *(a4 + 8) = result;
    return result;
  }

  if (v5 == 3 || v5 == 4)
  {
    v6 = *(result + 23);
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(result + 8);
    }

    if (v6)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_A154D0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    sub_55ED98(a1, a2);
  }

  else
  {
    *v3 = 0;
    *(v3 + 32) = -1;
    v4 = *(a2 + 32);
    if (v4 != -1)
    {
      v10 = v3;
      v5 = a2;
      (off_266F988[v4])(&v10);
      *(v3 + 32) = v4;
      a2 = v5;
    }

    *(v3 + 40) = *(a2 + 40);
    v6 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 48) = v6;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    *(v3 + 72) = *(a2 + 72);
    v7 = *(a2 + 80);
    *(v3 + 96) = *(a2 + 96);
    *(v3 + 80) = v7;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 80) = 0;
    *(v3 + 104) = *(a2 + 104);
    v8 = v3 + 112;
  }

  a1[1] = v8;
  return v8 - 112;
}

void sub_A155AC()
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
  xmmword_27B3A18 = 0u;
  unk_27B3A28 = 0u;
  dword_27B3A38 = 1065353216;
  sub_3A9A34(&xmmword_27B3A18, v0);
  sub_3A9A34(&xmmword_27B3A18, v3);
  sub_3A9A34(&xmmword_27B3A18, __p);
  sub_3A9A34(&xmmword_27B3A18, v9);
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
    qword_27B39F0 = 0;
    qword_27B39F8 = 0;
    qword_27B39E8 = 0;
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

void sub_A157F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3A00)
  {
    qword_27B3A08 = qword_27B3A00;
    operator delete(qword_27B3A00);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A158A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *(a2 + 1444) > 1u;
  sub_527724(a1 + 8, a2);
  *(a1 + 1584) = a3;
  return a1;
}

void *sub_A158E0(void *result, uint64_t a2)
{
  if (*result == 1)
  {
    v2 = result;
    result = sub_3320D0(v33, a2 + 24, result[198]);
    v4 = *a2;
    v5 = *(a2 + 8);
    while (1)
    {
      if (v4 == v5)
      {
        return result;
      }

      sub_A21C90(v32, v4);
      while (1)
      {
        sub_A21CE8(v32, v22);
        v6 = sub_A21B4C(v32, v22);
        v7 = v28;
        v8 = v29;
        if (v29 == v28)
        {
          v8 = v28;
          v31 = 0;
          v15 = 0;
        }

        else
        {
          v9 = &v28[v30 >> 7];
          v10 = *v9;
          v11 = *v9 + 32 * (v30 & 0x7F);
          v12 = *(v28 + (((v31 + v30) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v31 + v30) & 0x7F);
          if (v11 != v12)
          {
            do
            {
              v13 = *v11;
              if (*v11)
              {
                *(v11 + 8) = v13;
                operator delete(v13);
                v10 = *v9;
              }

              v11 += 32;
              if (v11 - v10 == 4096)
              {
                v14 = v9[1];
                ++v9;
                v10 = v14;
                v11 = v14;
              }
            }

            while (v11 != v12);
            v7 = v28;
            v8 = v29;
          }

          v31 = 0;
          v15 = v8 - v7;
          if (v15 >= 3)
          {
            do
            {
              operator delete(*v7);
              v8 = v29;
              v7 = v28 + 1;
              v28 = v7;
              v15 = v29 - v7;
            }

            while (v15 > 2);
          }
        }

        if (v15 == 1)
        {
          v16 = 64;
          goto LABEL_22;
        }

        if (v15 == 2)
        {
          v16 = 128;
LABEL_22:
          v30 = v16;
        }

        if (v7 != v8)
        {
          do
          {
            v17 = *v7++;
            operator delete(v17);
          }

          while (v7 != v8);
          if (v29 != v28)
          {
            v29 = (v29 + ((v28 - v29 + 7) & 0xFFFFFFFFFFFFFFF8));
          }
        }

        if (__p)
        {
          operator delete(__p);
        }

        v18 = v26;
        if (v26)
        {
          do
          {
            v19 = *v18;
            operator delete(v18);
            v18 = v19;
          }

          while (v19);
        }

        v20 = v25;
        v25 = 0;
        if (v20)
        {
          operator delete(v20);
        }

        if (v23)
        {
          v24 = v23;
          operator delete(v23);
        }

        if (!v6)
        {
          break;
        }

        v21 = sub_A21CB8(v32);
        sub_A15B6C(v2, v33, v21);
        sub_A21708(v32);
      }

      result = sub_98ED24(v32);
      v4 += 412;
    }
  }

  return result;
}

void sub_A15B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_98ED24(&a9);
  sub_98ED24(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_A15B6C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*a3 == 5 && *(a3 + 964) == 1)
  {
    sub_64BC50(v14, &unk_22A6008, (result + 1185));
    sub_64E914(v14, &unk_22A6008, *(a3 + 960));
    sub_9AA338(a2, 210002, v8);
    v5 = *(a3 + 1872);
    if (v5 >= *(a3 + 1880))
    {
      v6 = sub_A15D1C((a3 + 1864), v8, v14);
    }

    else
    {
      sub_55F1E8(*(a3 + 1872), v8);
      sub_55BD50(v5 + 112, v14);
      v6 = v5 + 272;
      *(a3 + 1872) = v5 + 272;
    }

    *(a3 + 1872) = v6;
    if (v13 < 0)
    {
      operator delete(__p);
      if ((v11 & 0x80000000) == 0)
      {
LABEL_8:
        v7 = v9;
        if (v9 == -1)
        {
          return sub_6081F0(v14);
        }

        goto LABEL_12;
      }
    }

    else if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    operator delete(v10);
    v7 = v9;
    if (v9 == -1)
    {
      return sub_6081F0(v14);
    }

LABEL_12:
    (off_266F9B0[v7])(&v15, v8);
    return sub_6081F0(v14);
  }

  return result;
}

void sub_A15CA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  sub_53E440(v3);
  *(v2 + 1872) = v3;
  sub_53E440(va);
  sub_6081F0(va1);
  _Unwind_Resume(a1);
}

void sub_A15CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_6081F0(va);
  _Unwind_Resume(a1);
}

void sub_A15D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_6081F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A15D1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0xF0F0F0F0F0F0F0)
  {
    sub_1794();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 4) >= 0x78787878787878)
  {
    v7 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    if (v7 <= 0xF0F0F0F0F0F0F0)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v14 = 272 * v3;
  v16 = 0;
  sub_55F1E8(272 * v3, a2);
  sub_55BD50(272 * v3 + 112, a3);
  v15 = 272 * v3 + 272;
  sub_A15F10(a1, &__p);
  v8 = a1[1];
  v9 = v14;
  for (i = v15; v15 != v9; i = v15)
  {
    v15 = i - 272;
    sub_6081F0(i - 160);
    if (*(i - 169) < 0)
    {
      operator delete(*(i - 192));
      if ((*(i - 201) & 0x80000000) == 0)
      {
LABEL_15:
        v11 = *(i - 240);
        if (v11 == -1)
        {
          goto LABEL_12;
        }

LABEL_19:
        (off_266F9B0[v11])(&v18, i - 272);
        goto LABEL_12;
      }
    }

    else if ((*(i - 201) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    operator delete(*(i - 224));
    v11 = *(i - 240);
    if (v11 != -1)
    {
      goto LABEL_19;
    }

LABEL_12:
    *(i - 240) = -1;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_A15EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_53E440(v9);
  sub_A161D4(&a9);
  _Unwind_Resume(a1);
}

void sub_A15F10(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v6 = *a1;
  v5 = a1[1];
  v7 = v4 + *a1 - v5;
  if (v5 != *a1)
  {
    v8 = v4 + *a1 - v5;
    v9 = *a1;
    do
    {
      sub_A16054(v8, v9);
      v9 += 272;
      v8 += 272;
    }

    while (v9 != v5);
    v10 = v6 + 112;
    do
    {
      sub_6081F0(v10);
      if (*(v10 - 9) < 0)
      {
        operator delete(*(v10 - 32));
        if ((*(v10 - 41) & 0x80000000) == 0)
        {
LABEL_8:
          v12 = *(v10 - 80);
          if (v12 == -1)
          {
            goto LABEL_5;
          }

LABEL_12:
          (off_266F9B0[v12])(&v16, v10 - 112);
          goto LABEL_5;
        }
      }

      else if ((*(v10 - 41) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(*(v10 - 64));
      v12 = *(v10 - 80);
      if (v12 != -1)
      {
        goto LABEL_12;
      }

LABEL_5:
      *(v10 - 80) = -1;
      v11 = v10 + 160;
      v10 += 272;
    }

    while (v11 != v5);
  }

  a2[1] = v7;
  v13 = *a1;
  *a1 = v7;
  a1[1] = v13;
  a2[1] = v13;
  v14 = a1[1];
  a1[1] = a2[2];
  a2[2] = v14;
  v15 = a1[2];
  a1[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
}

__n128 sub_A16054(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = -1;
  v3 = *(a2 + 32);
  if (v3 != -1)
  {
    v4 = a1;
    v11 = a1;
    (off_266F9D8[v3])(&v11, a2);
    a1 = v4;
    *(v4 + 32) = v3;
  }

  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v5;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(a1 + 72) = *(a2 + 72);
  v6 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v6;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = *(a2 + 184);
  v7 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a1 + 208) = v7;
  v8 = *(a2 + 216);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 216) = v8;
  v9 = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 224) = v9;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 224) = 0;
  result = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 248) = result;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 248) = 0;
  return result;
}

void **sub_A161D4(void **a1)
{
  sub_A16208(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A16208(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 272;
    sub_6081F0(i - 160);
    if (*(i - 169) < 0)
    {
      operator delete(*(i - 192));
      if ((*(i - 201) & 0x80000000) == 0)
      {
LABEL_6:
        v4 = *(i - 240);
        if (v4 == -1)
        {
          goto LABEL_3;
        }

LABEL_10:
        (off_266F9B0[v4])(&v5, i - 272);
        goto LABEL_3;
      }
    }

    else if ((*(i - 201) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*(i - 224));
    v4 = *(i - 240);
    if (v4 != -1)
    {
      goto LABEL_10;
    }

LABEL_3:
    *(i - 240) = -1;
  }
}

void sub_A165A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3A88)
  {
    qword_27B3A90 = qword_27B3A88;
    operator delete(qword_27B3A88);
  }

  _Unwind_Resume(exception_object);
}

void sub_A16654(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v10 = sub_A16AB0(a1);
  v11 = *(a1 + 128);
  if (v10 && v11 == 4)
  {
    if (a3 != 2 || a4 != 1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = v11 > 8;
    v13 = (1 << v11) & 0x160;
    if (v12 || v13 == 0)
    {
      goto LABEL_17;
    }
  }

  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  if (v15 == v16)
  {
LABEL_13:
    if (**(a1 + 72) != 2)
    {
LABEL_17:
      (*(*a1 + 104))(a1, 2);
      sub_A16900(a1, a5, a2);
      return;
    }
  }

  else
  {
    while (**v15 != 2)
    {
      if (++v15 == v16)
      {
        goto LABEL_13;
      }
    }
  }

  sub_A16790(a1, a5);
}

double sub_A16790@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3 != v4)
  {
    while (**v3 != 2)
    {
      if (++v3 == v4)
      {
        goto LABEL_4;
      }
    }

LABEL_5:
    sub_A1EC38();
  }

LABEL_4:
  if (**(a1 + 72) == 2)
  {
    goto LABEL_5;
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  return result;
}

_DWORD *sub_A16900(_DWORD *result, void *a2, uint64_t a3)
{
  if (*(result + 216) == 1)
  {
    v3 = *(a3 + 23);
    v4 = v3 >= 0 ? a3 : *a3;
    v5 = v3 >= 0 ? *(a3 + 23) : *(a3 + 8);
    if (v5 >= 5)
    {
      v7 = v4 + v5;
      v8 = v5;
      result = v4;
      do
      {
        result = memchr(result, 95, v8 - 4);
        if (!result)
        {
          break;
        }

        if (*result == 1852394591 && *(result + 4) == 101)
        {
          if (result != v7 && result - v4 != -1 && v5 >= 7)
          {
            result = v4;
            while (1)
            {
              result = memchr(result, 95, v5 - 6);
              if (!result)
              {
                break;
              }

              if (*result == 1937331039 && *(result + 3) == 1835365491)
              {
                if (result != v7 && result - v4 != -1)
                {
                  result = sub_353894(a2, "{System}");
                  if (*(result + 63) < 0)
                  {
                    *(result + 6) = 0;
                    v11 = *(result + 5);
                  }

                  else
                  {
                    v11 = result + 10;
                    *(result + 63) = 0;
                  }

                  *v11 = 0;
                }

                return result;
              }

              result = (result + 1);
              v5 = v7 - result;
              if (v7 - result < 7)
              {
                return result;
              }
            }
          }

          return result;
        }

        result = (result + 1);
        v8 = v7 - result;
      }

      while (v7 - result >= 5);
    }
  }

  return result;
}

_DWORD *sub_A16A78(void *a1, int a2)
{
  v2 = a1[6];
  v3 = a1[7];
  if (v2 == v3)
  {
    return a1[9];
  }

  while (**v2 != a2)
  {
    v2 += 8;
    if (v2 == v3)
    {
      return a1[9];
    }
  }

  return *v2;
}

BOOL sub_A16AB0(void *a1)
{
  v1 = a1[9];
  if (*v1 == 4)
  {
    if (*(v1 + 792) != 1)
    {
      return 0;
    }

    v2 = *(v1 + 752);
    if (v2 == -1)
    {
      return 0;
    }

    v3 = *(a1[10] + 72);
    if ((*(v3 + 696 * v2 + 67) & 0x80) != 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  v10 = a1[3];
  v9 = a1[4];
  if (v9 == v10)
  {
    return 0;
  }

  while (1)
  {
    v12 = *(v9 - 8);
    v9 -= 8;
    v11 = v12;
    v13 = *v12;
    if ((*v12 - 5) >= 2)
    {
      break;
    }

    if (v9 == v10)
    {
      return 0;
    }
  }

  if (v13 != 4)
  {
    return 0;
  }

  if (*(v11 + 792) != 1)
  {
    return 0;
  }

  v14 = *(v11 + 94);
  if (v14 == -1)
  {
    return 0;
  }

  v3 = *(a1[10] + 72);
  if ((*(v3 + 696 * v14 + 67) & 0x80) != 0)
  {
    return 0;
  }

  if (*v1 != 2)
  {
LABEL_5:
    v4 = a1[6];
    v5 = a1[7];
    if (v4 != v5)
    {
      while (1)
      {
        v6 = *v4;
        v7 = **v4;
        if ((v7 - 5) >= 2)
        {
          break;
        }

        result = 0;
        if (++v4 == v5)
        {
          return result;
        }
      }

      if (v7 == 2 && *(v6 + 792) == 1)
      {
        v15 = *(v6 + 94);
        if (v15 != -1)
        {
          return (*(v3 + 696 * v15 + 67) & 0x80) == 0;
        }
      }
    }

    return 0;
  }

  if (*(v1 + 792) == 1)
  {
    v15 = *(v1 + 752);
    if (v15 != -1)
    {
      return (*(v3 + 696 * v15 + 67) & 0x80) == 0;
    }
  }

  return 0;
}

BOOL sub_A16BEC(void *a1)
{
  v1 = a1[9];
  v2 = *v1;
  if (*v1 == 2)
  {
    if (*(v1 + 792) == 1)
    {
      v3 = *(v1 + 94);
      if (v3 != -1)
      {
        goto LABEL_4;
      }
    }

    v4 = -1;
LABEL_18:
    v12 = a1[3];
    v11 = a1[4];
    if (v11 != v12)
    {
      while (1)
      {
        v14 = *(v11 - 8);
        v11 -= 8;
        v13 = v14;
        v15 = *v14;
        if ((*v14 - 5) >= 2)
        {
          break;
        }

        if (v11 == v12)
        {
          return v4 == -1;
        }
      }

      if (v15 == 4 && *(v13 + 792) == 1)
      {
        v9 = *(v13 + 94);
        if (v9 != -1)
        {
          return v4 == *(*(a1[10] + 72) + 696 * v9 + 64);
        }
      }
    }

    return v4 == -1;
  }

  v5 = a1[6];
  v6 = a1[7];
  if (v5 == v6)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v7 = *v5;
    v8 = **v5;
    if ((v8 - 5) >= 2)
    {
      break;
    }

    if (++v5 == v6)
    {
      goto LABEL_14;
    }
  }

  if (v8 != 2 || *(v7 + 792) != 1 || (v3 = *(v7 + 94), v3 == -1))
  {
LABEL_14:
    v4 = -1;
    if (v2 == 4)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

LABEL_4:
  v4 = *(*(a1[10] + 72) + 696 * v3 + 64);
  if (v2 != 4)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (*(v1 + 792) == 1)
  {
    v9 = *(v1 + 94);
    if (v9 == -1)
    {
      return v4 == -1;
    }

    return v4 == *(*(a1[10] + 72) + 696 * v9 + 64);
  }

  return v4 == -1;
}

uint64_t sub_A16D3C(void *a1)
{
  v1 = a1[9];
  if (*v1 == 2)
  {
    if (*(v1 + 792) == 1)
    {
      v2 = *(v1 + 752);
      if (v2 != -1)
      {
        return *(*(a1[10] + 72) + 696 * v2 + 64);
      }
    }

    return 0xFFFFFFFFLL;
  }

  v4 = a1[6];
  v5 = a1[7];
  if (v4 == v5)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v6 = *v4;
    v7 = **v4;
    if ((v7 - 5) >= 2)
    {
      break;
    }

    if (++v4 == v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v7 != 2 || *(v6 + 792) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(v6 + 94);
  if (v2 != -1)
  {
    return *(*(a1[10] + 72) + 696 * v2 + 64);
  }

  return 0xFFFFFFFFLL;
}

BOOL sub_A16DDC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v1 = *(a1 + 32);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v5 = *(v1 - 8);
    v1 -= 8;
    v4 = v5;
    v6 = *v5;
    if (*v5 == 2)
    {
      return v3 == 1;
    }

    if (*(v4 + 792) != 1 || (*(v4 + 157) & 1) == 0)
    {
      break;
    }

LABEL_3:
    if (v1 == v2)
    {
      return v3 == 1;
    }
  }

  v7 = v6 > 7;
  v8 = (1 << v6) & 0xD2;
  if (!v7 && v8 != 0)
  {
    return 0;
  }

  if (v3 <= 0)
  {
    ++v3;
    goto LABEL_3;
  }

  return 0;
}

void **sub_A16EA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v92[0] = "{Direction}";
  v4 = sub_353894(a2, "{Direction}");
  v5 = (v4 + 5);
  if (v4 + 5 != a1 + 24)
  {
    v6 = *(v4 + 63);
    v7 = *(a1 + 215);
    if (v6 < 0)
    {
      if (v7 >= 0)
      {
        v9 = a1 + 24;
      }

      else
      {
        v9 = a1[24];
      }

      if (v7 >= 0)
      {
        v10 = *(a1 + 215);
      }

      else
      {
        v10 = a1[25];
      }

      sub_13B38(v5, v9, v10);
    }

    else if ((*(a1 + 215) & 0x80) != 0)
    {
      sub_13A68(v5, a1[24], a1[25]);
    }

    else
    {
      v8 = *(a1 + 12);
      *(v5 + 16) = a1[26];
      *v5 = v8;
    }
  }

  sub_9D43A4(a1 + 28, v92);
  v94[0] = "{PreviousStop}";
  v11 = sub_353894(a2, "{PreviousStop}");
  if (*(v11 + 63) < 0)
  {
    v12 = v11;
    operator delete(v11[5]);
    v11 = v12;
  }

  *(v11 + 5) = *v92;
  v11[7] = v92[2];
  sub_9D43A4(a1 + 43, v92);
  v94[0] = "{Stop}";
  v13 = sub_353894(a2, "{Stop}");
  if (*(v13 + 63) < 0)
  {
    v14 = v13;
    operator delete(v13[5]);
    v13 = v14;
  }

  *(v13 + 5) = *v92;
  v13[7] = v92[2];
  sub_9D4538(a1 + 53, v92);
  v94[0] = "{Line}";
  v15 = sub_353894(a2, "{Line}");
  if (*(v15 + 63) < 0)
  {
    v16 = v15;
    operator delete(v15[5]);
    v15 = v16;
  }

  *(v15 + 5) = *v92;
  v15[7] = v92[2];
  v92[0] = "{Line}";
  v17 = sub_353894(a2, "{Line}");
  v92[0] = "{LineNumber}";
  v18 = sub_353894(a2, "{LineNumber}");
  if (v18 != v17)
  {
    v19 = *(v17 + 63);
    if (*(v18 + 63) < 0)
    {
      if (v19 >= 0)
      {
        v21 = (v17 + 5);
      }

      else
      {
        v21 = v17[5];
      }

      if (v19 >= 0)
      {
        v22 = *(v17 + 63);
      }

      else
      {
        v22 = v17[6];
      }

      sub_13B38((v18 + 5), v21, v22);
    }

    else if ((*(v17 + 63) & 0x80) != 0)
    {
      sub_13A68(v18 + 40, v17[5], v17[6]);
    }

    else
    {
      v20 = *(v17 + 5);
      v18[7] = v17[7];
      *(v18 + 5) = v20;
    }
  }

  sub_9D43A4(a1 + 56, v92);
  v94[0] = "{System}";
  v23 = sub_353894(a2, "{System}");
  if (*(v23 + 63) < 0)
  {
    v24 = v23;
    operator delete(v23[5]);
    v23 = v24;
  }

  *(v23 + 5) = *v92;
  v23[7] = v92[2];
  v92[0] = "{VehicleNumber}";
  v25 = sub_353894(a2, "{VehicleNumber}");
  v26 = (v25 + 5);
  if (v25 + 5 != a1 + 17)
  {
    v27 = *(v25 + 63);
    v28 = *(a1 + 159);
    if (v27 < 0)
    {
      if (v28 >= 0)
      {
        v30 = a1 + 17;
      }

      else
      {
        v30 = a1[17];
      }

      if (v28 >= 0)
      {
        v31 = *(a1 + 159);
      }

      else
      {
        v31 = a1[18];
      }

      sub_13B38(v26, v30, v31);
    }

    else if ((*(a1 + 159) & 0x80) != 0)
    {
      sub_13A68(v26, a1[17], a1[18]);
    }

    else
    {
      v29 = *(a1 + 17);
      *(v26 + 16) = a1[19];
      *v26 = v29;
    }
  }

  sub_9D4608(a1 + 40, v92);
  v32 = v92[0];
  v94[0] = v92[1];
  *(v94 + 7) = *(&v92[1] + 7);
  v33 = HIBYTE(v92[2]);
  memset(v92, 0, 24);
  if (v93 < 0)
  {
    operator delete(v92[4]);
    if (SHIBYTE(v92[2]) < 0)
    {
      operator delete(v92[0]);
    }
  }

  v92[0] = "{AccessPointExit}";
  v34 = sub_353894(a2, "{AccessPointExit}");
  if (*(v34 + 63) < 0)
  {
    v35 = v34;
    operator delete(v34[5]);
    v34 = v35;
  }

  v36 = v94[0];
  v34[5] = v32;
  v34[6] = v36;
  *(v34 + 55) = *(v94 + 7);
  *(v34 + 63) = v33;
  v92[0] = "{Platform}";
  v37 = sub_353894(a2, "{Platform}");
  v38 = (v37 + 5);
  if (v37 + 5 != a1 + 46)
  {
    v39 = *(v37 + 63);
    v40 = *(a1 + 391);
    if (v39 < 0)
    {
      if (v40 >= 0)
      {
        v42 = a1 + 46;
      }

      else
      {
        v42 = a1[46];
      }

      if (v40 >= 0)
      {
        v43 = *(a1 + 391);
      }

      else
      {
        v43 = a1[47];
      }

      sub_13B38(v38, v42, v43);
    }

    else if ((*(a1 + 391) & 0x80) != 0)
    {
      sub_13A68(v38, a1[46], a1[47]);
    }

    else
    {
      v41 = *(a1 + 23);
      *(v38 + 16) = a1[48];
      *v38 = v41;
    }
  }

  sub_9D43A4(a1 + 43, v92);
  v94[0] = "{nextBoardStation}";
  result = sub_353894(a2, "{nextBoardStation}");
  if (*(result + 63) < 0)
  {
    v45 = result;
    operator delete(result[5]);
    result = v45;
  }

  *(result + 5) = *v92;
  result[7] = v92[2];
  v47 = a1[21];
  v46 = a1[22];
  v48 = v46 - v47;
  if (v46 != v47)
  {
    v92[0] = "{Headsign}";
    v49 = sub_353894(a2, "{Headsign}");
    v50 = (v49 + 5);
    if (v49 + 5 != v47)
    {
      v51 = *(v49 + 63);
      v52 = *(v47 + 23);
      if (v51 < 0)
      {
        if (v52 >= 0)
        {
          v54 = v47;
        }

        else
        {
          v54 = *v47;
        }

        if (v52 >= 0)
        {
          v55 = *(v47 + 23);
        }

        else
        {
          v55 = v47[1];
        }

        sub_13B38(v50, v54, v55);
      }

      else if ((*(v47 + 23) & 0x80) != 0)
      {
        sub_13A68(v50, *v47, v47[1]);
      }

      else
      {
        v53 = *v47;
        *(v50 + 16) = v47[2];
        *v50 = v53;
      }
    }

    v56 = a1[21];
    v92[0] = "{Headsign1}";
    v57 = sub_353894(a2, "{Headsign1}");
    result = (v57 + 5);
    if (v57 + 5 != v56)
    {
      v58 = *(v57 + 63);
      v59 = *(v56 + 23);
      if (v58 < 0)
      {
        if (v59 >= 0)
        {
          v61 = v56;
        }

        else
        {
          v61 = *v56;
        }

        if (v59 >= 0)
        {
          v62 = *(v56 + 23);
        }

        else
        {
          v62 = v56[1];
        }

        result = sub_13B38(result, v61, v62);
      }

      else if ((*(v56 + 23) & 0x80) != 0)
      {
        result = sub_13A68(result, *v56, v56[1]);
      }

      else
      {
        v60 = *v56;
        result[2] = v56[2];
        *result = v60;
      }
    }

    v63 = 0xAAAAAAAAAAAAAAABLL * (v48 >> 3);
    if (v63 >= 2)
    {
      v64 = a1[21];
      v92[0] = "{Headsign2}";
      v65 = sub_353894(a2, "{Headsign2}");
      result = (v65 + 5);
      if (v65 + 5 != (v64 + 24))
      {
        v66 = *(v65 + 63);
        v67 = *(v64 + 47);
        if (v66 < 0)
        {
          if (v67 >= 0)
          {
            v69 = (v64 + 24);
          }

          else
          {
            v69 = *(v64 + 24);
          }

          if (v67 >= 0)
          {
            v70 = *(v64 + 47);
          }

          else
          {
            v70 = *(v64 + 32);
          }

          result = sub_13B38(result, v69, v70);
        }

        else if ((*(v64 + 47) & 0x80) != 0)
        {
          result = sub_13A68(result, *(v64 + 24), *(v64 + 32));
        }

        else
        {
          v68 = *(v64 + 24);
          result[2] = *(v64 + 40);
          *result = v68;
        }
      }

      if (v48 != 48)
      {
        v71 = a1[21];
        v92[0] = "{Headsign3}";
        v72 = sub_353894(a2, "{Headsign3}");
        result = (v72 + 5);
        if (v72 + 5 != (v71 + 48))
        {
          v73 = *(v72 + 63);
          v74 = *(v71 + 71);
          if (v73 < 0)
          {
            if (v74 >= 0)
            {
              v76 = (v71 + 48);
            }

            else
            {
              v76 = *(v71 + 48);
            }

            if (v74 >= 0)
            {
              v77 = *(v71 + 71);
            }

            else
            {
              v77 = *(v71 + 56);
            }

            result = sub_13B38(result, v76, v77);
          }

          else if ((*(v71 + 71) & 0x80) != 0)
          {
            result = sub_13A68(result, *(v71 + 48), *(v71 + 56));
          }

          else
          {
            v75 = *(v71 + 48);
            result[2] = *(v71 + 64);
            *result = v75;
          }
        }

        if (v63 >= 4)
        {
          v78 = a1[21];
          v92[0] = "{Headsign4}";
          v79 = sub_353894(a2, "{Headsign4}");
          result = (v79 + 5);
          if (v79 + 5 != (v78 + 72))
          {
            v80 = *(v79 + 63);
            v81 = *(v78 + 95);
            if (v80 < 0)
            {
              if (v81 >= 0)
              {
                v83 = (v78 + 72);
              }

              else
              {
                v83 = *(v78 + 72);
              }

              if (v81 >= 0)
              {
                v84 = *(v78 + 95);
              }

              else
              {
                v84 = *(v78 + 80);
              }

              result = sub_13B38(result, v83, v84);
            }

            else if ((*(v78 + 95) & 0x80) != 0)
            {
              result = sub_13A68(result, *(v78 + 72), *(v78 + 80));
            }

            else
            {
              v82 = *(v78 + 72);
              result[2] = *(v78 + 88);
              *result = v82;
            }
          }

          if (v48 != 96)
          {
            v85 = a1[21];
            v92[0] = "{Headsign5}";
            v86 = sub_353894(a2, "{Headsign5}");
            result = (v86 + 5);
            if (v86 + 5 != (v85 + 96))
            {
              v87 = *(v86 + 63);
              v88 = *(v85 + 119);
              if (v87 < 0)
              {
                if (v88 >= 0)
                {
                  v90 = (v85 + 96);
                }

                else
                {
                  v90 = *(v85 + 96);
                }

                if (v88 >= 0)
                {
                  v91 = *(v85 + 119);
                }

                else
                {
                  v91 = *(v85 + 104);
                }

                return sub_13B38(result, v90, v91);
              }

              else if ((*(v85 + 119) & 0x80) != 0)
              {
                return sub_13A68(result, *(v85 + 96), *(v85 + 104));
              }

              else
              {
                v89 = *(v85 + 96);
                result[2] = *(v85 + 112);
                *result = v89;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_A176F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_2CD04(v15);
    _Unwind_Resume(a1);
  }

  sub_2CD04(v15);
  _Unwind_Resume(a1);
}

void sub_A1778C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_9D4608((a1 + 320), v3);
  *a2 = *v3;
  *(a2 + 16) = v4;
  v3[1] = 0;
  v4 = 0;
  v3[0] = 0;
  if (v6 < 0)
  {
    operator delete(__p);
    if (SHIBYTE(v4) < 0)
    {
      operator delete(v3[0]);
    }
  }
}

void sub_A17808(int a1@<W1>, uint64_t a2@<X8>)
{
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 == 5)
      {
        *(a2 + 23) = 14;
        strcpy(a2, "_TRAIN_STATION");
        return;
      }

      v2 = "_SUBWAY_STATION";
    }

    else
    {
      if (a1 != 7)
      {
        if (a1 == 8)
        {
          *(a2 + 23) = 10;
          strcpy(a2, "_TRAM_STOP");
          return;
        }

        if (a1 == 9)
        {
          *(a2 + 23) = 13;
          strcpy(a2, "_TRAM_STATION");
          return;
        }

LABEL_15:
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        return;
      }

      v2 = "_FERRY_TERMINAL";
    }

    *(a2 + 23) = 15;
    *a2 = *v2;
    *(a2 + 7) = *(v2 + 7);
    *(a2 + 15) = 0;
    return;
  }

  if (a1 <= 1)
  {
    if (a1 == 1)
    {
      *(a2 + 23) = 9;
      strcpy(a2, "_BUS_STOP");
      return;
    }

    goto LABEL_15;
  }

  if (a1 == 2)
  {
    *(a2 + 23) = 11;
    strcpy(a2, "_TRAIN_STOP");
  }

  else
  {
    *(a2 + 23) = 12;
    if (a1 == 3)
    {
      strcpy(a2, "_SUBWAY_STOP");
    }

    else
    {
      strcpy(a2, "_BUS_STATION");
    }
  }
}

void sub_A179D0(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v4 = a1;
  sub_9CC6F8(a1, &v18);
  if (v4 > 4)
  {
    if (v4 <= 6)
    {
      if (v4 == 5)
      {
        if ((v20 & 0x80u) == 0)
        {
          v6 = v20;
        }

        else
        {
          v6 = v19;
        }

        if (v6 + 1 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v6 + 1 >= 0x17)
        {
          operator new();
        }

        __p.__r_.__value_.__r.__words[2] = 0;
        *(&__p.__r_.__value_.__s + 23) = v6 + 1;
        *&__p.__r_.__value_.__l.__data_ = 0x5FuLL;
        if (v6)
        {
          if ((v20 & 0x80u) == 0)
          {
            v9 = &v18;
          }

          else
          {
            v9 = v18;
          }

          memmove(&__p.__r_.__value_.__l.__data_ + 1, v9, v6);
        }
      }

      else
      {
        if ((v20 & 0x80u) == 0)
        {
          v6 = v20;
        }

        else
        {
          v6 = v19;
        }

        if (v6 + 1 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v6 + 1 >= 0x17)
        {
          operator new();
        }

        __p.__r_.__value_.__r.__words[2] = 0;
        *(&__p.__r_.__value_.__s + 23) = v6 + 1;
        *&__p.__r_.__value_.__l.__data_ = 0x5FuLL;
        if (v6)
        {
          if ((v20 & 0x80u) == 0)
          {
            v8 = &v18;
          }

          else
          {
            v8 = v18;
          }

          memmove(&__p.__r_.__value_.__l.__data_ + 1, v8, v6);
        }
      }

      goto LABEL_94;
    }

    switch(v4)
    {
      case 7:
        *(a3 + 23) = 15;
        strcpy(a3, "_Terminal_Ferry");
        if ((v20 & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_123;
      case 8:
        if (a2)
        {
          if ((v20 & 0x80u) == 0)
          {
            v7 = v20;
          }

          else
          {
            v7 = v19;
          }

          if (v7 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v7 + 1 >= 0x17)
          {
            operator new();
          }

          __p.__r_.__value_.__r.__words[2] = 0;
          *(&__p.__r_.__value_.__s + 23) = v7 + 1;
          *&__p.__r_.__value_.__l.__data_ = 0x5FuLL;
          if (v7)
          {
            if ((v20 & 0x80u) == 0)
            {
              v16 = &v18;
            }

            else
            {
              v16 = v18;
            }

            memmove(&__p.__r_.__value_.__l.__data_ + 1, v16, v7);
          }

          goto LABEL_118;
        }

        break;
      case 9:
        if ((v20 & 0x80u) == 0)
        {
          v6 = v20;
        }

        else
        {
          v6 = v19;
        }

        if (v6 + 1 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v6 + 1 >= 0x17)
        {
          operator new();
        }

        __p.__r_.__value_.__r.__words[2] = 0;
        *(&__p.__r_.__value_.__s + 23) = v6 + 1;
        *&__p.__r_.__value_.__l.__data_ = 0x5FuLL;
        if (v6)
        {
          if ((v20 & 0x80u) == 0)
          {
            v11 = &v18;
          }

          else
          {
            v11 = v18;
          }

          memmove(&__p.__r_.__value_.__l.__data_ + 1, v11, v6);
        }

        goto LABEL_94;
    }

    goto LABEL_69;
  }

  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 == 1 && a2)
      {
        if ((v20 & 0x80u) == 0)
        {
          v7 = v20;
        }

        else
        {
          v7 = v19;
        }

        if (v7 + 1 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v7 + 1 >= 0x17)
        {
          operator new();
        }

        __p.__r_.__value_.__r.__words[2] = 0;
        *(&__p.__r_.__value_.__s + 23) = v7 + 1;
        *&__p.__r_.__value_.__l.__data_ = 0x5FuLL;
        if (v7)
        {
          if ((v20 & 0x80u) == 0)
          {
            v13 = &v18;
          }

          else
          {
            v13 = v18;
          }

          memmove(&__p.__r_.__value_.__l.__data_ + 1, v13, v7);
        }

        goto LABEL_118;
      }
    }

    else if (a2)
    {
      *(a3 + 23) = 8;
      strcpy(a3, "_Station");
      if ((v20 & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_123;
    }

    goto LABEL_69;
  }

  if (v4 == 2)
  {
    if (a2)
    {
      if ((v20 & 0x80u) == 0)
      {
        v7 = v20;
      }

      else
      {
        v7 = v19;
      }

      if (v7 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v7 + 1 >= 0x17)
      {
        operator new();
      }

      __p.__r_.__value_.__r.__words[2] = 0;
      *(&__p.__r_.__value_.__s + 23) = v7 + 1;
      *&__p.__r_.__value_.__l.__data_ = 0x5FuLL;
      if (v7)
      {
        if ((v20 & 0x80u) == 0)
        {
          v14 = &v18;
        }

        else
        {
          v14 = v18;
        }

        memmove(&__p.__r_.__value_.__l.__data_ + 1, v14, v7);
      }

      goto LABEL_118;
    }

LABEL_69:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    if ((v20 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_123;
  }

  if (v4 != 3)
  {
    if ((v20 & 0x80u) == 0)
    {
      v6 = v20;
    }

    else
    {
      v6 = v19;
    }

    if (v6 + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v6 + 1 >= 0x17)
    {
      operator new();
    }

    __p.__r_.__value_.__r.__words[2] = 0;
    *(&__p.__r_.__value_.__s + 23) = v6 + 1;
    *&__p.__r_.__value_.__l.__data_ = 0x5FuLL;
    if (v6)
    {
      if ((v20 & 0x80u) == 0)
      {
        v10 = &v18;
      }

      else
      {
        v10 = v18;
      }

      memmove(&__p.__r_.__value_.__l.__data_ + 1, v10, v6);
    }

LABEL_94:
    *(&__p.__r_.__value_.__l.__data_ + v6 + 1) = 0;
    v12 = std::string::append(&__p, "_Station", 8uLL);
    goto LABEL_119;
  }

  if (!a2)
  {
    goto LABEL_69;
  }

  if ((v20 & 0x80u) == 0)
  {
    v7 = v20;
  }

  else
  {
    v7 = v19;
  }

  if (v7 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v7 + 1 >= 0x17)
  {
    operator new();
  }

  __p.__r_.__value_.__r.__words[2] = 0;
  *(&__p.__r_.__value_.__s + 23) = v7 + 1;
  *&__p.__r_.__value_.__l.__data_ = 0x5FuLL;
  if (v7)
  {
    if ((v20 & 0x80u) == 0)
    {
      v15 = &v18;
    }

    else
    {
      v15 = v18;
    }

    memmove(&__p.__r_.__value_.__l.__data_ + 1, v15, v7);
  }

LABEL_118:
  *(&__p.__r_.__value_.__l.__data_ + v7 + 1) = 0;
  v12 = std::string::append(&__p, "_Stop", 5uLL);
LABEL_119:
  *a3 = *&v12->__r_.__value_.__l.__data_;
  *(a3 + 16) = *(&v12->__r_.__value_.__l + 2);
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v20 & 0x80000000) == 0)
    {
      return;
    }

LABEL_123:
    operator delete(v18);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v20 < 0)
  {
    goto LABEL_123;
  }
}