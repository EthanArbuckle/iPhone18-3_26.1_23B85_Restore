uint64_t *sub_FB1768(uint64_t *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (*a2 >= *result)
  {
    LODWORD(v7) = *a3;
    if (v6 < v5)
    {
      v7 = *a2;
      v9 = *a3;
      *(a2 + 4) = *(a3 + 4);
      *a2 = v9;
      *a3 = v7;
      *(a3 + 4) = BYTE4(v7);
      if (*a2 < *result)
      {
        v7 = *result;
        v10 = *a2;
        *(result + 4) = *(a2 + 4);
        *result = v10;
        *a2 = v7;
        *(a2 + 4) = BYTE4(v7);
        LODWORD(v7) = *a3;
      }
    }
  }

  else
  {
    v7 = *result;
    if (v6 >= v5)
    {
      v11 = *a2;
      *(result + 4) = *(a2 + 4);
      *result = v11;
      *(a2 + 4) = BYTE4(v7);
      *a2 = v7;
      v12 = *a3 >= v7;
      LODWORD(v7) = *a3;
      if (!v12)
      {
        v7 = *a2;
        v13 = *a3;
        *(a2 + 4) = *(a3 + 4);
        *a2 = v13;
        *a3 = v7;
        *(a3 + 4) = BYTE4(v7);
      }
    }

    else
    {
      v8 = *a3;
      *(result + 4) = *(a3 + 4);
      *result = v8;
      *(a3 + 4) = BYTE4(v7);
      *a3 = v7;
    }
  }

  if (*a4 < v7)
  {
    v14 = *a3;
    v15 = *a4;
    *(a3 + 4) = *(a4 + 4);
    *a3 = v15;
    *a4 = v14;
    *(a4 + 4) = BYTE4(v14);
    if (*a3 < *a2)
    {
      v16 = *a2;
      v17 = *a3;
      *(a2 + 4) = *(a3 + 4);
      *a2 = v17;
      *a3 = v16;
      *(a3 + 4) = BYTE4(v16);
      if (*a2 < *result)
      {
        v18 = *result;
        v19 = *a2;
        *(result + 4) = *(a2 + 4);
        *result = v19;
        *a2 = v18;
        *(a2 + 4) = BYTE4(v18);
      }
    }
  }

  if (*a5 < *a4)
  {
    v20 = *a4;
    v21 = *a5;
    *(a4 + 4) = *(a5 + 4);
    *a4 = v21;
    *a5 = v20;
    *(a5 + 4) = BYTE4(v20);
    if (*a4 < *a3)
    {
      v22 = *a3;
      v23 = *a4;
      *(a3 + 4) = *(a4 + 4);
      *a3 = v23;
      *a4 = v22;
      *(a4 + 4) = BYTE4(v22);
      if (*a3 < *a2)
      {
        v24 = *a2;
        v25 = *a3;
        *(a2 + 4) = *(a3 + 4);
        *a2 = v25;
        *a3 = v24;
        *(a3 + 4) = BYTE4(v24);
        if (*a2 < *result)
        {
          v26 = *result;
          v27 = *a2;
          *(result + 4) = *(a2 + 4);
          *result = v27;
          *a2 = v26;
          *(a2 + 4) = BYTE4(v26);
        }
      }
    }
  }

  return result;
}

BOOL sub_FB19A8(unsigned int *a1, char *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v8 = (a1 + 2);
        v9 = a1[2];
        v12 = *(a2 - 2);
        v10 = a2 - 8;
        v11 = v12;
        if (v9 < *a1)
        {
          v13 = *a1;
          if (v11 >= v9)
          {
            *a1 = *v8;
            *(a1 + 4) = *(a1 + 12);
            a1[2] = v13;
            *(a1 + 12) = BYTE4(v13);
            if (*v10 >= v13)
            {
              return 1;
            }

            v34 = *v8;
            v35 = *v10;
            *(a1 + 12) = v10[4];
            *v8 = v35;
            *v10 = v34;
            v10[4] = BYTE4(v34);
            return 1;
          }

          else
          {
            v14 = *v10;
            *(a1 + 4) = v10[4];
            *a1 = v14;
            v10[4] = BYTE4(v13);
            *v10 = v13;
            return 1;
          }
        }

        if (v11 >= v9)
        {
          return 1;
        }

        v27 = *(a1 + 1);
        v28 = *v10;
        *(a1 + 12) = v10[4];
        *v8 = v28;
        *v10 = v27;
        v10[4] = BYTE4(v27);
        break;
      case 4:
        v8 = (a1 + 2);
        v21 = a1[2];
        v22 = a1 + 4;
        LODWORD(v23) = a1[4];
        v24 = (a2 - 8);
        v25 = *a1;
        if (v21 >= *a1)
        {
          if (v23 < v21)
          {
            v23 = *v8;
            v32 = *v22;
            *v8 = *v22;
            *(a1 + 12) = *(a1 + 20);
            *v22 = v23;
            *(a1 + 20) = BYTE4(v23);
            if (v32 < v25)
            {
              v33 = *a1;
              *a1 = *v8;
              *(a1 + 4) = *(a1 + 12);
              a1[2] = v33;
              *(a1 + 12) = BYTE4(v33);
            }
          }
        }

        else
        {
          v26 = *a1;
          if (v23 >= v21)
          {
            *a1 = *v8;
            *(a1 + 4) = *(a1 + 12);
            a1[2] = v26;
            *(a1 + 12) = BYTE4(v26);
            if (v23 < v26)
            {
              v23 = *v8;
              *v8 = *v22;
              *(a1 + 12) = *(a1 + 20);
              *v22 = v23;
              *(a1 + 20) = BYTE4(v23);
            }
          }

          else
          {
            *a1 = *v22;
            *(a1 + 4) = *(a1 + 20);
            a1[4] = v26;
            *(a1 + 20) = BYTE4(v26);
            LODWORD(v23) = v26;
          }
        }

        if (*v24 >= v23)
        {
          return 1;
        }

        v44 = *v22;
        v45 = *v24;
        *(a1 + 20) = *(a2 - 4);
        *v22 = v45;
        *v24 = v44;
        *(a2 - 4) = BYTE4(v44);
        if (*v22 >= *v8)
        {
          return 1;
        }

        v46 = *(a1 + 1);
        *(a1 + 12) = *(a1 + 20);
        *v8 = *v22;
        a1[4] = v46;
        *(a1 + 20) = BYTE4(v46);
        break;
      case 5:
        sub_FB1768(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        return 1;
      default:
        goto LABEL_14;
    }

    if (a1[2] >= *a1)
    {
      return 1;
    }

    v47 = *a1;
    *a1 = *v8;
    *(a1 + 4) = *(v8 + 4);
    a1[2] = v47;
    *(a1 + 12) = BYTE4(v47);
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_14:
    v15 = a1 + 4;
    v16 = a1[4];
    v17 = (a1 + 2);
    v18 = a1[2];
    v19 = *a1;
    if (v18 >= *a1)
    {
      if (v16 < v18)
      {
        v29 = *v17;
        v30 = *v15;
        *v17 = *v15;
        *(a1 + 12) = *(a1 + 20);
        *v15 = v29;
        *(a1 + 20) = BYTE4(v29);
        if (v30 < v19)
        {
          v31 = *a1;
          *a1 = *v17;
          *(a1 + 4) = *(a1 + 12);
          a1[2] = v31;
          *(a1 + 12) = BYTE4(v31);
        }
      }
    }

    else
    {
      v20 = *a1;
      if (v16 >= v18)
      {
        *a1 = *v17;
        *(a1 + 4) = *(a1 + 12);
        a1[2] = v20;
        *(a1 + 12) = BYTE4(v20);
        if (v16 < v20)
        {
          v36 = *v17;
          *v17 = *v15;
          *(a1 + 12) = *(a1 + 20);
          *v15 = v36;
          *(a1 + 20) = BYTE4(v36);
        }
      }

      else
      {
        *a1 = *v15;
        *(a1 + 4) = *(a1 + 20);
        a1[4] = v20;
        *(a1 + 20) = BYTE4(v20);
      }
    }

    v37 = (a1 + 6);
    if (a1 + 6 == a2)
    {
      return 1;
    }

    v38 = 0;
    v39 = 0;
    while (*v37 >= *v15)
    {
LABEL_41:
      v15 = v37;
      v38 += 8;
      v37 += 8;
      if (v37 == a2)
      {
        return 1;
      }
    }

    v40 = *v37;
    v41 = v38;
    do
    {
      v42 = a1 + v41;
      *(v42 + 24) = *(a1 + v41 + 16);
      *(v42 + 28) = *(a1 + v41 + 20);
      if (v41 == -16)
      {
        *a1 = v40;
        *(a1 + 4) = BYTE4(v40);
        if (++v39 != 8)
        {
          goto LABEL_41;
        }

        return v37 + 8 == a2;
      }

      v41 -= 8;
    }

    while (*(v42 + 8) > v40);
    v43 = a1 + v41;
    *(v43 + 24) = v40;
    *(v43 + 28) = BYTE4(v40);
    if (++v39 != 8)
    {
      goto LABEL_41;
    }

    return v37 + 8 == a2;
  }

  v5 = *(a2 - 2);
  v4 = a2 - 8;
  if (v5 >= *a1)
  {
    return 1;
  }

  v6 = *a1;
  v7 = *v4;
  *(a1 + 4) = v4[4];
  *a1 = v7;
  *v4 = v6;
  v4[4] = BYTE4(v6);
  return 1;
}

uint64_t *sub_FB1E44(char *a1, char *a2, uint64_t *a3)
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
        v7 = (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
        v8 = &a1[8 * v7];
        if (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2 >= v3)
        {
          v11 = &a1[8 * v5];
          if (*v8 >= *v11)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v9 = v8[2];
          v10 = *v8 >= v9;
          if (*v8 > v9)
          {
            v9 = *v8;
          }

          if (!v10)
          {
            v8 += 2;
            v7 = 2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2;
          }

          v11 = &a1[8 * v5];
          if (v9 >= *v11)
          {
LABEL_15:
            v12 = *v11;
            while (1)
            {
              v15 = v11;
              v11 = v8;
              v16 = *v8;
              *(v15 + 4) = *(v11 + 4);
              *v15 = v16;
              if (v4 < v7)
              {
                break;
              }

              v17 = (2 * v7) | 1;
              v8 = &a1[8 * v17];
              v7 = 2 * v7 + 2;
              if (v7 < v3)
              {
                v13 = v8[2];
                v14 = *v8 >= v13;
                if (*v8 > v13)
                {
                  v13 = *v8;
                }

                if (v14)
                {
                  v7 = v17;
                }

                else
                {
                  v8 += 2;
                }

                if (v13 < v12)
                {
                  break;
                }
              }

              else
              {
                v7 = v17;
                if (*v8 < v12)
                {
                  break;
                }
              }
            }

            *v11 = v12;
            *(v11 + 4) = BYTE4(v12);
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
      LODWORD(v19) = *a1;
      i = a2;
      do
      {
        if (*i < v19)
        {
          v19 = *i;
          v20 = *a1;
          *(i + 4) = a1[4];
          *i = v20;
          *a1 = v19;
          a1[4] = BYTE4(v19);
        }

        ++i;
      }

      while (i != a3);
      goto LABEL_59;
    }

    v21 = (a1 + 8);
    for (i = a2; i != a3; ++i)
    {
      if (*i < *a1)
      {
        v22 = *i;
        v23 = *a1;
        *(i + 4) = a1[4];
        *i = v23;
        *a1 = v22;
        a1[4] = BYTE4(v22);
        if (a2 - a1 == 16)
        {
          v24 = (a1 + 8);
          v25 = 1;
          if (*v21 >= v22)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v26 = *(a1 + 4);
          v27 = *v21;
          v28 = *v21 >= v26;
          if (*v21 <= v26)
          {
            v27 = *(a1 + 4);
          }

          if (*v21 >= v26)
          {
            v24 = (a1 + 8);
          }

          else
          {
            v24 = (a1 + 16);
          }

          if (v28)
          {
            v25 = 1;
          }

          else
          {
            v25 = 2;
          }

          if (v27 >= v22)
          {
LABEL_48:
            v29 = *a1;
            v30 = a1;
            while (1)
            {
              v33 = v30;
              v30 = v24;
              v34 = *v24;
              *(v33 + 4) = *(v30 + 4);
              *v33 = v34;
              if (((v3 - 2) >> 1) < v25)
              {
                break;
              }

              v35 = (2 * v25) | 1;
              v24 = &a1[8 * v35];
              v25 = 2 * v25 + 2;
              if (v25 < v3)
              {
                v31 = v24[2];
                v32 = *v24 >= v31;
                if (*v24 > v31)
                {
                  v31 = *v24;
                }

                if (v32)
                {
                  v25 = v35;
                }

                else
                {
                  v24 += 2;
                }

                if (v31 < v29)
                {
                  break;
                }
              }

              else
              {
                v25 = v35;
                if (*v24 < v29)
                {
                  break;
                }
              }
            }

            *v30 = v29;
            *(v30 + 4) = BYTE4(v29);
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
      v37 = 0;
      v38 = *a1;
      v39 = a1;
      do
      {
        v44 = &v39[2 * v37];
        v42 = v44 + 2;
        v45 = (2 * v37) | 1;
        v37 = 2 * v37 + 2;
        if (v37 < v3)
        {
          v41 = v44[4];
          v40 = v44 + 4;
          if (*(v40 - 2) >= v41)
          {
            v37 = v45;
          }

          else
          {
            v42 = v40;
          }
        }

        else
        {
          v37 = v45;
        }

        v43 = *v42;
        *(v39 + 4) = *(v42 + 4);
        *v39 = v43;
        v39 = v42;
      }

      while (v37 <= ((v3 - 2) >> 1));
      a2 -= 8;
      if (v42 == a2)
      {
        *v42 = v38;
        *(v42 + 4) = BYTE4(v38);
      }

      else
      {
        v46 = *a2;
        *(v42 + 4) = a2[4];
        *v42 = v46;
        a2[4] = BYTE4(v38);
        *a2 = v38;
        v47 = (v42 - a1 + 8) >> 3;
        v6 = v47 < 2;
        v48 = v47 - 2;
        if (!v6)
        {
          v49 = v48 >> 1;
          v50 = &a1[8 * v49];
          if (*v50 < *v42)
          {
            v51 = *v42;
            do
            {
              v52 = v42;
              v42 = v50;
              v53 = *v50;
              *(v52 + 4) = *(v42 + 4);
              *v52 = v53;
              if (!v49)
              {
                break;
              }

              v49 = (v49 - 1) >> 1;
              v50 = &a1[8 * v49];
            }

            while (*v50 < v51);
            *v42 = v51;
            *(v42 + 4) = BYTE4(v51);
          }
        }
      }

      v6 = v3-- <= 2;
    }

    while (!v6);
  }

  return i;
}

void ***sub_FB221C(void ***a1)
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
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          operator delete(*v6);
        }

        v3 -= 6;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_FB22A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          operator delete(*v6);
        }

        v3 -= 6;
      }

      while (v6 != v2);
      v4 = *(a1 + 32);
    }

    *(a1 + 40) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_FB232C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

_DWORD *sub_FB2370(_DWORD *a1, void *a2)
{
  v6 = 11;
  strcpy(__p, "blend_start");
  *a1 = 600 * sub_352470(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v6 = 9;
  strcpy(__p, "blend_end");
  a1[1] = 600 * sub_352470(a2, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_FB244C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FB246C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2B51D8(*(a1 + 16), a2);
  v4 = (v3 - *v3);
  if (*v4 < 0xDu)
  {
    LODWORD(v5) = 0;
    v8 = *(a1 + 56);
    if (v8 != 0xFFFF && v8 == 0)
    {
      return;
    }

    goto LABEL_14;
  }

  v5 = v4[6];
  if (v5)
  {
    LODWORD(v5) = *(v3 + v5);
  }

  v6 = *(a1 + 56);
  if (v6 == 0xFFFF || v5 != v6)
  {
LABEL_14:
    *(a1 + 56) = v5;
    v10 = v5;
    v11 = sub_2AF704(*(a1 + 16) + 3896, 1u, 0);
    v12 = &v11[-*v11];
    if (*v12 < 0xBu)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(v12 + 5);
      if (v13)
      {
        v13 += &v11[*&v11[v13]];
      }
    }

    v14 = (v13 + 4 * v10 + 4 + *(v13 + 4 * v10 + 4));
    v15 = (v14 - *v14);
    if (*v15 >= 5u && (v16 = v15[2]) != 0)
    {
      v17 = (v14 + v16);
      v18 = *v17;
      v19 = *(v17 + v18);
      if (v19 >= 0x17)
      {
        operator new();
      }

      v22 = *(v17 + v18);
      if (v19)
      {
        memcpy(&__dst, v17 + v18 + 4, v19);
      }

      p_dst = (&__dst + v19);
    }

    else
    {
      v22 = 0;
      p_dst = &__dst;
    }

    *p_dst = 0;
    sub_FB2640(a1, &__dst);
    if (v22 < 0)
    {
      operator delete(__dst);
    }
  }
}

void sub_FB2624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FB2640(uint64_t a1, char *a2)
{
  v2 = a2[23];
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (v2 >= 0)
  {
    v4 = a2[23];
  }

  else
  {
    v4 = *(a2 + 1);
  }

  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v30) = v4;
  if (v4)
  {
    memmove(__s2, v3, v4);
    *(__s2 + v4) = 0;
    if (v30 >= 0)
    {
      v6 = __s2;
    }

    else
    {
      v6 = __s2[0];
    }

    do
    {
      *v6 = __tolower(*v3);
      v6 = (v6 + 1);
      ++v3;
      --v4;
    }

    while (v4);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = v7;
    if (v7 == v8)
    {
      goto LABEL_42;
    }
  }

  else
  {
    LOBYTE(__s2[0]) = 0;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = v7;
    if (v7 == v8)
    {
      goto LABEL_42;
    }
  }

  v10 = HIBYTE(v30);
  if (v30 >= 0)
  {
    v11 = HIBYTE(v30);
  }

  else
  {
    v11 = __s2[1];
  }

  if (v30 < 0)
  {
    v15 = __s2[0];
    v9 = v7;
    while (1)
    {
      v16 = *(v9 + 23);
      v17 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(v9 + 8);
      }

      if (v16 == v11)
      {
        v18 = v17 >= 0 ? v9 : *v9;
        if (!memcmp(v18, v15, v11))
        {
          break;
        }
      }

      v9 += 48;
      if (v9 == v8)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
    v9 = v7;
    while (1)
    {
      v12 = *(v9 + 23);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v9 + 8);
      }

      if (v12 == v11)
      {
        v14 = v13 >= 0 ? v9 : *v9;
        if (!memcmp(v14, __s2, v11))
        {
          break;
        }
      }

      v9 += 48;
      if (v9 == v8)
      {
        goto LABEL_44;
      }
    }
  }

LABEL_42:
  if (v9 != v8)
  {
    goto LABEL_72;
  }

  v10 = HIBYTE(v30);
LABEL_44:
  if (v10 < 0)
  {
    sub_13B38(__s2, &xmmword_22AEA90, 3uLL);
    v7 = *(a1 + 32);
    v9 = *(a1 + 40);
    if (v7 == v9)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v30 = 0x300000000000000;
    *__s2 = xmmword_22AEA90;
    v9 = v8;
    if (v7 == v8)
    {
      goto LABEL_72;
    }
  }

  if (v30 >= 0)
  {
    v19 = HIBYTE(v30);
  }

  else
  {
    v19 = __s2[1];
  }

  if (v30 < 0)
  {
    v24 = __s2[0];
    v25 = v7;
    while (1)
    {
      v26 = *(v25 + 23);
      v27 = v26;
      if ((v26 & 0x80u) != 0)
      {
        v26 = *(v25 + 8);
      }

      if (v26 == v19)
      {
        v28 = v27 >= 0 ? v25 : *v25;
        if (!memcmp(v28, v24, v19))
        {
          break;
        }
      }

      v25 += 48;
      if (v25 == v9)
      {
        goto LABEL_72;
      }
    }

    v9 = v25;
  }

  else
  {
    v20 = v7;
    while (1)
    {
      v21 = *(v20 + 23);
      v22 = v21;
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(v20 + 8);
      }

      if (v21 == v19)
      {
        v23 = v22 >= 0 ? v20 : *v20;
        if (!memcmp(v23, __s2, v19))
        {
          break;
        }
      }

      v20 += 48;
      if (v20 == v9)
      {
        goto LABEL_72;
      }
    }

    v9 = v20;
  }

LABEL_72:
  *(a1 + 64) = 0xAAAAAAAAAAAAAAABLL * ((v9 - v7) >> 4);
  *(a1 + 72) = -1;
  *(a1 + 76) = 0;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__s2[0]);
  }
}

void sub_FB296C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_FB298C(uint64_t a1, unint64_t a2, uint64_t a3, char a4, double result)
{
  while (2)
  {
    v9 = (a2 - 8);
    v10 = a1;
    while (1)
    {
      while (1)
      {
        a1 = v10;
        v11 = (a2 - v10) >> 4;
        if (v11 > 2)
        {
          switch(v11)
          {
            case 3:
              v95 = *(v10 + 16);
              result = *v10;
              v96 = *(a2 - 16);
              if (v95 >= *v10)
              {
                if (v96 >= v95)
                {
                  return result;
                }

                *(v10 + 16) = v96;
                *(a2 - 16) = v95;
                v9 = (v10 + 24);
                v141 = *(v10 + 24);
                *(v10 + 24) = *(a2 - 8);
                *(a2 - 8) = v141;
                result = *(v10 + 16);
                v142 = *v10;
                if (result >= *v10)
                {
                  return result;
                }

                *v10 = result;
                *(v10 + 16) = v142;
                v97 = (v10 + 8);
              }

              else
              {
                if (v96 >= v95)
                {
                  *v10 = v95;
                  v97 = (v10 + 24);
                  v152 = *(v10 + 24);
                  *(v10 + 16) = result;
                  v153 = *(v10 + 8);
                  *(v10 + 8) = v152;
                  *(v10 + 24) = v153;
                  v154 = *(a2 - 16);
                  if (v154 >= result)
                  {
                    return result;
                  }

                  *(v10 + 16) = v154;
                }

                else
                {
                  v97 = (v10 + 8);
                  *v10 = v96;
                }

                *(a2 - 16) = result;
              }

              v155 = *v97;
              *v97 = *v9;
              *v9 = v155;
              return result;
            case 4:
              v98 = *(v10 + 16);
              v99 = *v10;
              v100 = *(v10 + 32);
              if (v98 >= *v10)
              {
                if (v100 >= v98)
                {
                  v98 = *(v10 + 32);
                }

                else
                {
                  v143 = (v10 + 24);
                  v144 = *(v10 + 24);
                  *(v10 + 16) = v100;
                  *(v10 + 32) = v98;
                  *(v10 + 24) = *(v10 + 40);
                  *(v10 + 40) = v144;
                  if (v100 < v99)
                  {
                    *v10 = v100;
                    *(v10 + 16) = v99;
                    v101 = (v10 + 8);
                    goto LABEL_187;
                  }
                }

                result = *(a2 - 16);
                if (result >= v98)
                {
                  return result;
                }
              }

              else
              {
                if (v100 < v98)
                {
                  v101 = (v10 + 8);
                  *v10 = v100;
                  goto LABEL_186;
                }

                *v10 = v98;
                *(v10 + 16) = v99;
                v101 = (v10 + 24);
                v156 = *(v10 + 8);
                *(v10 + 8) = *(v10 + 24);
                *(v10 + 24) = v156;
                if (v100 >= v99)
                {
                  v98 = v100;
                  result = *(a2 - 16);
                  if (result >= v100)
                  {
                    return result;
                  }
                }

                else
                {
                  *(v10 + 16) = v100;
LABEL_186:
                  *(v10 + 32) = v99;
                  v143 = (v10 + 40);
LABEL_187:
                  v157 = *v101;
                  *v101 = *v143;
                  *v143 = v157;
                  v98 = *(v10 + 32);
                  result = *(a2 - 16);
                  if (result >= v98)
                  {
                    return result;
                  }
                }
              }

              *(v10 + 32) = result;
              *(a2 - 16) = v98;
              v158 = *(v10 + 40);
              *(v10 + 40) = *(a2 - 8);
              *(a2 - 8) = v158;
              result = *(v10 + 32);
              v159 = *(v10 + 16);
              if (result < v159)
              {
                *(v10 + 16) = result;
                *(v10 + 32) = v159;
                v160 = *(v10 + 24);
                v161 = *(v10 + 40);
                *(v10 + 24) = v161;
                *(v10 + 40) = v160;
                v162 = *v10;
                if (result < *v10)
                {
                  *v10 = result;
                  *(v10 + 16) = v162;
                  v163 = *(v10 + 8);
                  *(v10 + 8) = v161;
                  *(v10 + 24) = v163;
                }
              }

              return result;
            case 5:

              sub_FB3560(v10, v10 + 16, v10 + 32, (v10 + 48), (a2 - 16));
              return result;
          }
        }

        else
        {
          if (v11 < 2)
          {
            return result;
          }

          if (v11 == 2)
          {
            result = *(a2 - 16);
            v93 = *v10;
            if (result < *v10)
            {
              *v10 = result;
              *(a2 - 16) = v93;
              v94 = *(v10 + 8);
              *(v10 + 8) = *(a2 - 8);
              *(a2 - 8) = v94;
            }

            return result;
          }
        }

        if (v11 <= 23)
        {
          v102 = v10 + 16;
          v104 = v10 == a2 || v102 == a2;
          if (a4)
          {
            if (!v104)
            {
              v105 = 0;
              v106 = v10;
              do
              {
                v108 = v102;
                result = *(v106 + 16);
                v109 = *v106;
                if (result < *v106)
                {
                  v110 = *(v106 + 24);
                  v111 = v105;
                  do
                  {
                    v112 = v10 + v111;
                    *(v112 + 16) = v109;
                    *(v112 + 24) = *(v10 + v111 + 8);
                    if (!v111)
                    {
                      v107 = v10;
                      goto LABEL_131;
                    }

                    v109 = *(v112 - 16);
                    v111 -= 16;
                  }

                  while (result < v109);
                  v107 = v10 + v111 + 16;
LABEL_131:
                  *v107 = result;
                  *(v107 + 8) = v110;
                }

                v102 = v108 + 16;
                v105 += 16;
                v106 = v108;
              }

              while (v108 + 16 != a2);
            }
          }

          else if (!v104)
          {
            v145 = (v10 + 24);
            do
            {
              v146 = v102;
              result = *(a1 + 16);
              v147 = *a1;
              if (result < *a1)
              {
                v148 = *(a1 + 24);
                v149 = v145;
                do
                {
                  v150 = v149;
                  *(v149 - 1) = v147;
                  v151 = *(v149 - 2);
                  v149 -= 2;
                  *v150 = v151;
                  v147 = *(v150 - 5);
                }

                while (result < v147);
                *(v149 - 1) = result;
                *v149 = v148;
              }

              v102 = v146 + 16;
              v145 += 2;
              a1 = v146;
            }

            while (v146 + 16 != a2);
          }

          return result;
        }

        if (!a3)
        {
          if (v10 != a2)
          {
            v113 = (v11 - 2) >> 1;
            v114 = v113;
            do
            {
              if (v113 >= v114)
              {
                v116 = (2 * (v114 & 0xFFFFFFFFFFFFFFFLL)) | 1;
                v117 = v10 + 16 * v116;
                if (2 * (v114 & 0xFFFFFFFFFFFFFFFLL) + 2 < v11 && *v117 < *(v117 + 16))
                {
                  v117 += 16;
                  v116 = 2 * (v114 & 0xFFFFFFFFFFFFFFFLL) + 2;
                }

                v118 = v10 + 16 * v114;
                v119 = *v117;
                v120 = *v118;
                if (*v117 >= *v118)
                {
                  v121 = *(v118 + 8);
                  do
                  {
                    v122 = v118;
                    v118 = v117;
                    *v122 = v119;
                    v122[1] = *(v117 + 8);
                    if (v113 < v116)
                    {
                      break;
                    }

                    v123 = 2 * v116;
                    v116 = (2 * v116) | 1;
                    v117 = v10 + 16 * v116;
                    v124 = v123 + 2;
                    if (v124 < v11 && *v117 < *(v117 + 16))
                    {
                      v117 += 16;
                      v116 = v124;
                    }

                    v119 = *v117;
                  }

                  while (*v117 >= v120);
                  *v118 = v120;
                  *(v118 + 8) = v121;
                }
              }

              v115 = v114-- <= 0;
            }

            while (!v115);
            do
            {
              v125 = 0;
              result = *v10;
              v126 = *(v10 + 8);
              v127 = v10;
              do
              {
                v128 = v127;
                v129 = &v127[2 * v125];
                v127 = v129 + 2;
                v130 = 2 * v125;
                v125 = (2 * v125) | 1;
                v131 = v130 + 2;
                if (v131 < v11)
                {
                  v133 = *(v129 + 4);
                  v132 = v129 + 4;
                  if (*(v132 - 2) < v133)
                  {
                    v127 = v132;
                    v125 = v131;
                  }
                }

                *v128 = *v127;
                v128[1] = v127[1];
              }

              while (v125 <= ((v11 - 2) >> 1));
              if (v127 == (a2 - 16))
              {
                *v127 = result;
                v127[1] = v126;
              }

              else
              {
                *v127 = *(a2 - 16);
                v127[1] = *(a2 - 8);
                *(a2 - 16) = result;
                *(a2 - 8) = v126;
                v134 = (v127 - v10 + 16) >> 4;
                v115 = v134 < 2;
                v135 = v134 - 2;
                if (!v115)
                {
                  v136 = v135 >> 1;
                  v137 = (v10 + 16 * v136);
                  v138 = *v137;
                  result = *v127;
                  if (*v137 < *v127)
                  {
                    v139 = v127[1];
                    do
                    {
                      v140 = v127;
                      v127 = v137;
                      *v140 = v138;
                      v140[1] = *(v137 + 1);
                      if (!v136)
                      {
                        break;
                      }

                      v136 = (v136 - 1) >> 1;
                      v137 = (v10 + 16 * v136);
                      v138 = *v137;
                    }

                    while (*v137 < result);
                    *v127 = result;
                    v127[1] = v139;
                  }
                }
              }

              a2 -= 16;
              v115 = v11-- <= 2;
            }

            while (!v115);
          }

          return result;
        }

        v12 = v10 + 16 * (v11 >> 1);
        v13 = v12;
        v14 = *(a2 - 16);
        if (v11 >= 0x81)
        {
          v15 = *v12;
          v16 = *v10;
          if (*v12 >= *v10)
          {
            if (v14 >= v15 || (*v12 = v14, *(a2 - 16) = v15, v22 = (v12 + 8), v21 = *(v12 + 8), *(v12 + 8) = *(a2 - 8), *(a2 - 8) = v21, v23 = *v10, *v12 >= *v10))
            {
LABEL_28:
              v31 = v12 - 16;
              v32 = *(v12 - 16);
              v33 = *(v10 + 16);
              v34 = *(a2 - 32);
              if (v32 >= v33)
              {
                if (v34 >= v32 || (*v31 = v34, *(a2 - 32) = v32, v37 = (v12 - 8), v36 = *(v12 - 8), *(v12 - 8) = *(a2 - 24), *(a2 - 24) = v36, v38 = *(v10 + 16), *v31 >= v38))
                {
LABEL_41:
                  v47 = *(v12 + 16);
                  v46 = v12 + 16;
                  v48 = v47;
                  v49 = *(v10 + 32);
                  v50 = *(a2 - 48);
                  if (v47 >= v49)
                  {
                    if (v50 >= v48 || (*v46 = v50, *(a2 - 48) = v48, v53 = (v46 + 8), v52 = *(v46 + 8), *(v46 + 8) = *(a2 - 40), *(a2 - 40) = v52, v48 = *v46, v54 = *(v10 + 32), *v46 >= v54))
                    {
LABEL_51:
                      v59 = *v13;
                      v60 = *v31;
                      if (*v13 < *v31)
                      {
LABEL_52:
                        if (v48 >= v59)
                        {
                          *v31 = v59;
                          *v13 = v60;
                          v63 = *(v31 + 8);
                          *(v31 + 8) = *(v13 + 8);
                          *(v13 + 8) = v63;
                          if (v48 >= v60)
                          {
                            v59 = v60;
                            goto LABEL_62;
                          }

                          *v13 = v48;
                          *v46 = v60;
                          v62 = (v46 + 8);
                          v61 = (v13 + 8);
                        }

                        else
                        {
                          *v31 = v48;
                          v61 = (v31 + 8);
                          *v46 = v60;
                          v62 = (v46 + 8);
                        }

                        v64 = v62;
                        goto LABEL_61;
                      }

LABEL_58:
                      if (v48 >= v59)
                      {
LABEL_62:
                        v67 = *v10;
                        *v10 = v59;
                        v20 = (v10 + 8);
                        *v13 = v67;
                        v26 = (v13 + 8);
                        goto LABEL_63;
                      }

                      *v13 = v48;
                      *v46 = v59;
                      v64 = (v13 + 8);
                      v65 = *(v13 + 8);
                      *(v13 + 8) = *(v46 + 8);
                      *(v46 + 8) = v65;
                      if (v48 >= v60)
                      {
                        v59 = v48;
                        goto LABEL_62;
                      }

                      *v31 = v48;
                      v61 = (v31 + 8);
                      *v13 = v60;
LABEL_61:
                      v66 = *v61;
                      *v61 = *v64;
                      *v64 = v66;
                      v59 = *v13;
                      goto LABEL_62;
                    }

                    *(v10 + 32) = v48;
                    *v46 = v54;
                    v51 = (v10 + 40);
                  }

                  else
                  {
                    if (v50 >= v48)
                    {
                      *(v10 + 32) = v48;
                      v51 = (v46 + 8);
                      v55 = *(v46 + 8);
                      *v46 = v49;
                      v56 = *(v10 + 40);
                      *(v10 + 40) = v55;
                      *(v46 + 8) = v56;
                      v57 = *(a2 - 48);
                      if (v57 >= v49)
                      {
                        v48 = v49;
                        v59 = *v13;
                        v60 = *v31;
                        if (*v13 < *v31)
                        {
                          goto LABEL_52;
                        }

                        goto LABEL_58;
                      }

                      *v46 = v57;
                    }

                    else
                    {
                      v51 = (v10 + 40);
                      *(v10 + 32) = v50;
                    }

                    *(a2 - 48) = v49;
                    v53 = (a2 - 40);
                  }

                  v58 = *v51;
                  *v51 = *v53;
                  *v53 = v58;
                  v48 = *v46;
                  goto LABEL_51;
                }

                *(v10 + 16) = *v31;
                *v31 = v38;
                v35 = (v10 + 24);
              }

              else
              {
                if (v34 >= v32)
                {
                  *(v10 + 16) = v32;
                  v35 = (v12 - 8);
                  v42 = *(v12 - 8);
                  *v31 = v33;
                  v43 = *(v10 + 24);
                  *(v10 + 24) = v42;
                  *(v12 - 8) = v43;
                  v44 = *(a2 - 32);
                  if (v44 >= v33)
                  {
                    goto LABEL_41;
                  }

                  *v31 = v44;
                }

                else
                {
                  v35 = (v10 + 24);
                  *(v10 + 16) = v34;
                }

                *(a2 - 32) = v33;
                v37 = (a2 - 24);
              }

              v45 = *v35;
              *v35 = *v37;
              *v37 = v45;
              goto LABEL_41;
            }

            *v10 = *v12;
            v17 = (v10 + 8);
            *v12 = v23;
          }

          else
          {
            if (v14 >= v15)
            {
              *v10 = v15;
              v17 = (v12 + 8);
              v27 = *(v12 + 8);
              *v12 = v16;
              v28 = *(v10 + 8);
              *(v10 + 8) = v27;
              *(v12 + 8) = v28;
              v29 = *(a2 - 16);
              if (v29 >= v16)
              {
                goto LABEL_28;
              }

              *v12 = v29;
            }

            else
            {
              v17 = (v10 + 8);
              *v10 = v14;
            }

            *(a2 - 16) = v16;
            v22 = (a2 - 8);
          }

          v30 = *v17;
          *v17 = *v22;
          *v22 = v30;
          goto LABEL_28;
        }

        v18 = *v10;
        v19 = *v12;
        if (*v10 >= *v12)
        {
          if (v14 < v18)
          {
            *v10 = v14;
            *(a2 - 16) = v18;
            v24 = *(v10 + 8);
            *(v10 + 8) = *(a2 - 8);
            *(a2 - 8) = v24;
            v25 = *v12;
            if (*v10 < *v12)
            {
              *v12 = *v10;
              *v10 = v25;
              v20 = (v12 + 8);
              v26 = (v10 + 8);
LABEL_63:
              v68 = *v20;
              *v20 = *v26;
              *v26 = v68;
            }
          }
        }

        else
        {
          if (v14 < v18)
          {
            v20 = (v12 + 8);
            *v12 = v14;
LABEL_36:
            *(a2 - 16) = v19;
            v26 = (a2 - 8);
            goto LABEL_63;
          }

          *v12 = v18;
          v20 = (v10 + 8);
          v39 = *(v10 + 8);
          *v10 = v19;
          v40 = *(v13 + 8);
          *(v13 + 8) = v39;
          *(v10 + 8) = v40;
          v41 = *(a2 - 16);
          if (v41 < v19)
          {
            *v10 = v41;
            goto LABEL_36;
          }
        }

        --a3;
        result = *v10;
        if ((a4 & 1) != 0 || *(v10 - 16) < result)
        {
          break;
        }

        if (result >= *(a2 - 16))
        {
          v84 = v10 + 16;
          do
          {
            v10 = v84;
            if (v84 >= a2)
            {
              break;
            }

            v84 += 16;
          }

          while (result >= *v10);
        }

        else
        {
          do
          {
            v83 = *(v10 + 16);
            v10 += 16;
          }

          while (result >= v83);
        }

        v85 = a2;
        if (v10 < a2)
        {
          v85 = a2;
          do
          {
            v86 = *(v85 - 2);
            v85 -= 2;
          }

          while (result < v86);
        }

        v87 = *(a1 + 8);
        if (v10 < v85)
        {
          v88 = *v10;
          v89 = *v85;
          do
          {
            *v10 = v89;
            *v85 = v88;
            v90 = *(v10 + 8);
            *(v10 + 8) = v85[1];
            *(v85 + 1) = v90;
            do
            {
              v91 = *(v10 + 16);
              v10 += 16;
              v88 = v91;
            }

            while (result >= v91);
            do
            {
              v92 = *(v85 - 2);
              v85 -= 2;
              v89 = v92;
            }

            while (result < v92);
          }

          while (v10 < v85);
        }

        if (v10 - 16 != a1)
        {
          *a1 = *(v10 - 16);
          *(a1 + 8) = *(v10 - 8);
        }

        a4 = 0;
        *(v10 - 16) = result;
        *(v10 - 8) = v87;
      }

      v69 = 0;
      v70 = *(v10 + 8);
      do
      {
        v71 = *(v10 + v69 + 16);
        v69 += 16;
      }

      while (v71 < result);
      v72 = v10 + v69;
      v73 = a2;
      if (v69 == 16)
      {
        v73 = a2;
        do
        {
          if (v72 >= v73)
          {
            break;
          }

          v75 = *(v73 - 2);
          v73 -= 2;
        }

        while (v75 >= result);
      }

      else
      {
        do
        {
          v74 = *(v73 - 2);
          v73 -= 2;
        }

        while (v74 >= result);
      }

      if (v72 >= v73)
      {
        v10 += v69;
        v81 = v72 - 16;
        if (v72 - 16 != a1)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v76 = *v73;
        v10 += v69;
        v77 = v73;
        do
        {
          *v10 = v76;
          *v77 = v71;
          v78 = *(v10 + 8);
          *(v10 + 8) = v77[1];
          *(v77 + 1) = v78;
          do
          {
            v79 = *(v10 + 16);
            v10 += 16;
            v71 = v79;
          }

          while (v79 < result);
          do
          {
            v80 = *(v77 - 2);
            v77 -= 2;
            v76 = v80;
          }

          while (v80 >= result);
        }

        while (v10 < v77);
        v81 = v10 - 16;
        if (v10 - 16 != a1)
        {
LABEL_81:
          *a1 = *(v10 - 16);
          *(a1 + 8) = *(v10 - 8);
        }
      }

      *(v10 - 16) = result;
      *(v10 - 8) = v70;
      if (v72 < v73)
      {
        goto LABEL_85;
      }

      v82 = sub_FB3738(a1, v81);
      if (sub_FB3738(v10, a2))
      {
        break;
      }

      if (!v82)
      {
LABEL_85:
        sub_FB298C(a1, v81, a3, a4 & 1);
        a4 = 0;
      }
    }

    a2 = v81;
    if (!v82)
    {
      continue;
    }

    return result;
  }
}

void *sub_FB3560(void *result, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 >= *result)
  {
    if (v7 < v5)
    {
      *a2 = v7;
      *a3 = v5;
      v9 = (a2 + 8);
      v10 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v10;
      v11 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        v8 = result + 1;
        *a2 = v11;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v7 < v5)
    {
      v8 = result + 1;
      *result = v7;
      *a3 = v6;
      v9 = (a3 + 8);
LABEL_9:
      v14 = *v8;
      *v8 = *v9;
      *v9 = v14;
      goto LABEL_10;
    }

    *result = v5;
    *a2 = v6;
    v8 = (a2 + 8);
    v12 = result[1];
    result[1] = *(a2 + 8);
    *(a2 + 8) = v12;
    v13 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v13;
      v9 = (a3 + 8);
      goto LABEL_9;
    }
  }

LABEL_10:
  v15 = *a3;
  if (*a4 < *a3)
  {
    *a3 = *a4;
    *a4 = v15;
    v16 = *(a3 + 8);
    *(a3 + 8) = a4[1];
    a4[1] = v16;
    v17 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v17;
      v18 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v18;
      v19 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v19;
        v20 = result[1];
        result[1] = *(a2 + 8);
        *(a2 + 8) = v20;
      }
    }
  }

  v21 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v21;
    v22 = a4[1];
    a4[1] = a5[1];
    a5[1] = v22;
    v23 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v23;
      v24 = *(a3 + 8);
      *(a3 + 8) = a4[1];
      a4[1] = v24;
      v25 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v25;
        v26 = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v26;
        v27 = *result;
        if (*a2 < *result)
        {
          *result = *a2;
          *a2 = v27;
          v28 = result[1];
          result[1] = *(a2 + 8);
          *(a2 + 8) = v28;
        }
      }
    }
  }

  return result;
}

BOOL sub_FB3738(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v7 = *(a1 + 16);
      v8 = *a1;
      v9 = *(a2 - 16);
      if (v7 >= *a1)
      {
        if (v9 >= v7)
        {
          return 1;
        }

        *(a1 + 16) = v9;
        *(a2 - 16) = v7;
        v21 = (a1 + 24);
        v20 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 8);
        *(a2 - 8) = v20;
        v22 = *(a1 + 16);
        v23 = *a1;
        if (v22 >= *a1)
        {
          return 1;
        }

        *a1 = v22;
        *(a1 + 16) = v23;
        v10 = (a1 + 8);
      }

      else
      {
        if (v9 >= v7)
        {
          *a1 = v7;
          v10 = (a1 + 24);
          v28 = *(a1 + 24);
          *(a1 + 16) = v8;
          v29 = *(a1 + 8);
          *(a1 + 8) = v28;
          *(a1 + 24) = v29;
          v30 = *(a2 - 16);
          if (v30 >= v8)
          {
            return 1;
          }

          *(a1 + 16) = v30;
        }

        else
        {
          v10 = (a1 + 8);
          *a1 = v9;
        }

        *(a2 - 16) = v8;
        v21 = (a2 - 8);
      }

      v31 = *v10;
      *v10 = *v21;
      *v21 = v31;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_FB3560(a1, a1 + 16, a1 + 32, (a1 + 48), (a2 - 16));
        return 1;
      }

LABEL_14:
      v11 = (a1 + 32);
      v12 = *(a1 + 32);
      v13 = *(a1 + 16);
      v14 = *a1;
      if (v13 >= *a1)
      {
        if (v12 >= v13)
        {
          goto LABEL_37;
        }

        v25 = (a1 + 24);
        v24 = *(a1 + 24);
        *(a1 + 16) = v12;
        *(a1 + 32) = v13;
        *(a1 + 24) = *(a1 + 40);
        *(a1 + 40) = v24;
        if (v12 >= v14)
        {
          goto LABEL_37;
        }

        *a1 = v12;
        *(a1 + 16) = v14;
        v15 = (a1 + 8);
      }

      else
      {
        if (v12 >= v13)
        {
          *a1 = v13;
          *(a1 + 16) = v14;
          v15 = (a1 + 24);
          v32 = *(a1 + 8);
          *(a1 + 8) = *(a1 + 24);
          *(a1 + 24) = v32;
          if (v12 >= v14)
          {
LABEL_37:
            v34 = a1 + 48;
            if (a1 + 48 == a2)
            {
              return 1;
            }

            v35 = 0;
            v36 = 0;
            while (1)
            {
              v37 = *v34;
              v38 = *v11;
              if (*v34 < *v11)
              {
                break;
              }

LABEL_46:
              v11 = v34;
              v35 += 16;
              v34 += 16;
              if (v34 == a2)
              {
                return 1;
              }
            }

            v39 = *(v34 + 8);
            v40 = v35;
            do
            {
              v41 = a1 + v40;
              *(v41 + 48) = v38;
              *(v41 + 56) = *(a1 + v40 + 40);
              if (v40 == -32)
              {
                *a1 = v37;
                *(a1 + 8) = v39;
                if (++v36 != 8)
                {
                  goto LABEL_46;
                }

                return v34 + 16 == a2;
              }

              v38 = *(v41 + 16);
              v40 -= 16;
            }

            while (v37 < v38);
            v42 = a1 + v40;
            *(v42 + 48) = v37;
            *(v42 + 56) = v39;
            if (++v36 != 8)
            {
              goto LABEL_46;
            }

            return v34 + 16 == a2;
          }

          *(a1 + 16) = v12;
        }

        else
        {
          v15 = (a1 + 8);
          *a1 = v12;
        }

        *(a1 + 32) = v14;
        v25 = (a1 + 40);
      }

      v33 = *v15;
      *v15 = *v25;
      *v25 = v33;
      goto LABEL_37;
    }

    v16 = *(a1 + 16);
    v17 = *a1;
    v18 = *(a1 + 32);
    if (v16 >= *a1)
    {
      if (v18 >= v16)
      {
        goto LABEL_53;
      }

      v27 = (a1 + 24);
      v26 = *(a1 + 24);
      *(a1 + 16) = v18;
      *(a1 + 32) = v16;
      *(a1 + 24) = *(a1 + 40);
      *(a1 + 40) = v26;
      if (v18 >= v17)
      {
        goto LABEL_52;
      }

      *a1 = v18;
      *(a1 + 16) = v17;
      v19 = (a1 + 8);
    }

    else
    {
      if (v18 >= v16)
      {
        *a1 = v16;
        *(a1 + 16) = v17;
        v19 = (a1 + 24);
        v43 = *(a1 + 8);
        *(a1 + 8) = *(a1 + 24);
        *(a1 + 24) = v43;
        if (v18 >= v17)
        {
          goto LABEL_53;
        }

        *(a1 + 16) = v18;
      }

      else
      {
        v19 = (a1 + 8);
        *a1 = v18;
      }

      *(a1 + 32) = v17;
      v27 = (a1 + 40);
      v16 = v17;
    }

    v44 = *v19;
    *v19 = *v27;
    *v27 = v44;
LABEL_52:
    v18 = v16;
LABEL_53:
    v45 = *(a2 - 16);
    if (v45 >= v18)
    {
      return 1;
    }

    *(a1 + 32) = v45;
    *(a2 - 16) = v18;
    v46 = *(a1 + 40);
    *(a1 + 40) = *(a2 - 8);
    *(a2 - 8) = v46;
    v47 = *(a1 + 32);
    v48 = *(a1 + 16);
    if (v47 >= v48)
    {
      return 1;
    }

    *(a1 + 16) = v47;
    *(a1 + 32) = v48;
    v49 = *(a1 + 24);
    v50 = *(a1 + 40);
    *(a1 + 24) = v50;
    *(a1 + 40) = v49;
    v51 = *a1;
    if (v47 >= *a1)
    {
      return 1;
    }

    *a1 = v47;
    *(a1 + 16) = v51;
    v52 = *(a1 + 8);
    *(a1 + 8) = v50;
    *(a1 + 24) = v52;
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

  v4 = *(a2 - 16);
  v5 = *a1;
  if (v4 >= *a1)
  {
    return 1;
  }

  *a1 = v4;
  *(a2 - 16) = v5;
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 - 8);
  *(a2 - 8) = v6;
  return 1;
}

void sub_FB3B18(uint64_t *a1, void *a2)
{
  *a1 = sub_3AF6B4(a2);
  a1[1] = sub_3B1348(a2);
  a1[2] = sub_3B1090(a2);
  a1[3] = sub_3B1AF0(a2);
  sub_FB3D34();
}

void sub_FB3CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_5C010(va);
  _Unwind_Resume(a1);
}

void sub_FB3CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_3DB5C4((v18 + 1360));
  sub_FA9554((v18 + 32));
  _Unwind_Resume(a1);
}

void sub_FB3F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_1A104(&a15);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(v23);
  _Unwind_Resume(a1);
}

void sub_FB3F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_1A104(&a12);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_FB3FB4(uint64_t a1, int ***a2, unsigned int *a3)
{
  if (*(a1 + 1864) != 1)
  {
LABEL_43:
    LODWORD(a3) = 0;
    v18 = 0;
    return a3 | (v18 << 32);
  }

  v6 = sub_F6D17C(*a2, a2[1]);
  v7 = sub_F6D17C(a2[2], a2[3]);
  v8 = v7;
  v9 = (*v6 - **v6);
  if (*v9 < 0x9Bu || (v10 = v9[77]) == 0 || (*(*v6 + v10) & 8) == 0)
  {
    v11 = (*v7 - **v7);
    if (*v11 >= 0x9Bu)
    {
      v12 = v11[77];
      if (v12)
      {
        if ((*(*v7 + v12) & 8) != 0)
        {
          a3 = *(a1 + 2024);
          goto LABEL_46;
        }
      }
    }
  }

  if (!sub_10219BC(a1 + 32, a2) && *(v6 + 18) == *(v8 + 36) && *(v6 + 8) == *(v8 + 32))
  {
    a3 = *(a1 + 2028);
    goto LABEL_46;
  }

  if (sub_1021248(a1 + 32, a2))
  {
    v14 = v6[1];
    v15 = (v14 - *v14);
    v16 = *v15;
    if (*(v6 + 38))
    {
      if (v16 < 5 || (v17 = v15[2]) == 0)
      {
LABEL_23:
        v19 = 0;
LABEL_24:
        v20 = v19 + 18000;
        v21 = v19 - 18000;
        if ((v20 >> 5) < 0x465u)
        {
          v21 = v20;
        }

        v22 = *(v8 + 8);
        v23 = (v22 - *v22);
        v24 = *v23;
        if (*(v8 + 38))
        {
          if (v24 < 9 || (v25 = v23[4]) == 0)
          {
LABEL_33:
            v26 = 0;
            goto LABEL_34;
          }
        }

        else
        {
          if (v24 < 5)
          {
            goto LABEL_33;
          }

          v25 = v23[2];
          if (!v25)
          {
            goto LABEL_33;
          }
        }

        v26 = *(v22 + v25);
LABEL_34:
        v27 = v26 - v21;
        if (v27 > 18000)
        {
          v27 -= 36000;
        }

        if (v27 < -17999)
        {
          v27 += 36000;
        }

        v28 = fabs(v27 / 100.0);
        v56 = v28;
        v29 = sub_10215EC(a1 + 32, a2);
        v31 = 1868;
        if (v29)
        {
          v31 = 1866;
        }

        LOWORD(v30) = *(a1 + v31);
        if (v28 < v30)
        {
          goto LABEL_43;
        }

        v32 = sub_10226C8(a1 + 32, a2, 0);
        v33 = v32;
        LOWORD(v32) = *(a1 + 1870);
        if (v33 < *&v32)
        {
          goto LABEL_43;
        }

        v34 = sub_1021C74(a1 + 32, a2, 0);
        if (v34 == 0.0)
        {
          goto LABEL_43;
        }

        v36 = log(v34);
        v55 = v36 / log(*(a1 + 2016));
        LODWORD(v49) = sub_FB43D4(&v56, (a1 + 1872));
        v37 = sub_FB44F4(&v55, (a1 + 1896));
        v38 = sub_5733D0(&v49, v37);
        v54 = v38;
        if (v33 != 0.0)
        {
          v39 = v38;
          v40 = sub_314758(v6);
          v41 = sub_314758(v8);
          if (v40 < v41)
          {
            v41 = v40;
          }

          if (v41 <= 1)
          {
            v41 = 1;
          }

          v49 = v33 / v41;
          if (*(a1 + 1992) == 1)
          {
            v42 = log(v33 / v41);
            v49 = v42 / log(*(a1 + 2016));
          }

          v53 = sub_1021C48(a1 + 32, a2);
          v51 = sub_FB43D4(&v49, (a1 + 1920));
          v43 = sub_FB44F4(&v55, (a1 + 1944));
          v52 = sub_5733D0(&v51, v43);
          v44 = sub_FB44F4(&v53, (a1 + 1968));
          v54 = v39 + sub_5733D0(&v52, v44);
        }

        if (!sub_1021280(a1 + 32, a2))
        {
          if (sub_1021940(a1 + 32, a2))
          {
            sub_FB45BC(&v54, *(a1 + 2000));
          }

          if (v54)
          {
            sub_FB4628(a1, a2, a3);
            v49 = v45;
            v50 = v46;
            LODWORD(a3) = v54;
            v47 = sub_FB44F4(&v50, (a1 + 2040));
            v18 = sub_5733D0(&v54, v47);
            v48 = sub_FB44F4(&v49, (a1 + 2040));
            sub_5733D0(&v54, v48);
            return a3 | (v18 << 32);
          }

          goto LABEL_43;
        }

        sub_FB45BC(&v54, *(a1 + 2008));
        a3 = v54;
LABEL_46:
        v18 = a3;
        return a3 | (v18 << 32);
      }
    }

    else
    {
      if (v16 < 9)
      {
        goto LABEL_23;
      }

      v17 = v15[4];
      if (!v17)
      {
        goto LABEL_23;
      }
    }

    v19 = *(v14 + v17);
    goto LABEL_24;
  }

  LODWORD(a3) = 0;
  v18 = 0;
  return a3 | (v18 << 32);
}

uint64_t sub_FB43D4(double *a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a2;
  if (*a1 <= v4)
  {
    return *(v3 + 2);
  }

  v5 = a2[1];
  v6 = (v5 - v3) >> 4;
  if (v6 >= 1)
  {
    if (v5 - v3 != 16)
    {
      do
      {
        v7 = (4 * v6) & 0xFFFFFFFFFFFFFFF0;
        _X13 = v3 + v7;
        __asm { PRFM            #0, [X13] }

        v14 = &v3[2 * (v6 >> 1)];
        _X12 = v14 + v7;
        __asm { PRFM            #0, [X12] }

        if (*v14 >= v2)
        {
          v17 = 0;
        }

        else
        {
          v17 = v6 >> 1;
        }

        v3 += 2 * v17;
        v6 -= v6 >> 1;
      }

      while (v6 > 1);
      v4 = *v3;
    }

    v3 += 2 * (v4 < v2);
  }

  if (v5 == v3)
  {
    return *(v5 - 2);
  }

  v18 = *(v3 - 2);
  v19 = *v3;
  if (v18 == *v3)
  {
    return *(v3 + 2);
  }

  v21 = *(v3 + 2);
  v22 = *(v3 - 2);
  v23 = (v2 - v18) / (v19 - v18) * (v21 - v22);
  if (v23 >= 0.0)
  {
    if (v23 < 4.50359963e15)
    {
      v24 = (v23 + v23) + 1;
      goto LABEL_19;
    }
  }

  else if (v23 > -4.50359963e15)
  {
    v24 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
LABEL_19:
    v23 = (v24 >> 1);
  }

  return (v22 + v23);
}

double sub_FB44F4(double *a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a2;
  if (*a1 <= v4)
  {
    return v3[1];
  }

  v5 = a2[1];
  v6 = (v5 - v3) >> 4;
  if (v6 >= 1)
  {
    if (v5 - v3 != 16)
    {
      do
      {
        v7 = (4 * v6) & 0xFFFFFFFFFFFFFFF0;
        _X13 = v3 + v7;
        __asm { PRFM            #0, [X13] }

        v14 = &v3[2 * (v6 >> 1)];
        _X12 = v14 + v7;
        __asm { PRFM            #0, [X12] }

        if (*v14 >= v2)
        {
          v17 = 0;
        }

        else
        {
          v17 = v6 >> 1;
        }

        v3 += 2 * v17;
        v6 -= v6 >> 1;
      }

      while (v6 > 1);
      v4 = *v3;
    }

    v3 += 2 * (v4 < v2);
  }

  if (v5 == v3)
  {
    return *(v5 - 1);
  }

  v18 = *(v3 - 2);
  if (v18 == *v3)
  {
    return v3[1];
  }

  return *(v3 - 1) + (v2 - v18) / (*v3 - v18) * (v3[1] - *(v3 - 1));
}

int *sub_FB45BC(int *result, double a2)
{
  v2 = *result * a2;
  if (v2 >= 0.0)
  {
    if (v2 < 4.50359963e15)
    {
      v3 = (v2 + v2) + 1;
      goto LABEL_6;
    }
  }

  else if (v2 > -4.50359963e15)
  {
    v3 = (v2 + v2) - 1 + (((v2 + v2) - 1) >> 63);
LABEL_6:
    v2 = (v3 >> 1);
  }

  *result = v2;
  return result;
}

void sub_FB4628(uint64_t *a1, void **a2, unsigned int *a3)
{
  sub_FB5D80(a1, a2, a1 + 261);
  v5 = a1[261];
  v6 = a1[262];
  if (v5 != v6)
  {
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = sub_76240C(a1[1], *v5, 0);
      v12 = v11;
      v15 = *&v11 > -1 && ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v11 - 1) < 0xFFFFFFFFFFFFFLL || (*&v11 & 0x7FFFFFFFFFFFFFFFLL) == 0;
      if (v15 && v11 > 0.0)
      {
        v16 = fmax(sub_3E916C(a1[1], *v5), 1.0);
        v17 = a1[2];
        v18 = *v5;
        LOBYTE(v37[0]) = sub_40A8(a3);
        v19 = sub_41E8(a3);
        v38 = 0;
        v39 = 0;
        v20 = sub_FB601C(v17, v18, v37, v19, 0, &v38);
        v24 = (*&v20 <= -1 || ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v20 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v20 & 0x7FFFFFFFFFFFFFFFLL) != 0 || v20 <= 0.0;
        v25 = v12 / v20;
        if (v24)
        {
          v25 = 1.0;
        }

        v26 = v16 * v25;
        v27 = sub_3E37C0(a1[3], *v5);
        v38 = 0;
        v39 = 0;
        v37[0] = 0;
        v37[1] = 0;
        sub_FAEF14((a1 + 170), v27, a3, &v38, v37);
        v24 = *&v28 <= 0.0;
        v29 = v28;
        v30 = v28 - 1;
        v31 = v28 & 0x7FFFFFFFFFFFFFFFLL;
        v32 = ((v28 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53;
        v33 = v16 * (v12 / *&v28);
        if (v24)
        {
          v33 = v8;
        }

        if ((v29 <= -1 || v32 >= 0x3FF) && v30 >= 0xFFFFFFFFFFFFFLL && v31 != 0)
        {
          v33 = v8;
        }

        v8 = v8 + v26;
        v7 = v7 + v33;
        v9 = v9 + v16;
        v10 = v10 + v16;
      }

      ++v5;
    }

    while (v5 != v6);
  }
}

void sub_FB4850(uint64_t a1, void *a2)
{
  *a1 = 1;
  *(a1 + 2) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 34) = 0u;
  *(a1 + 50) = 0u;
  *(a1 + 66) = 0u;
  *(a1 + 82) = 0u;
  *(a1 + 98) = 0u;
  *(a1 + 113) = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 136) = _Q0;
  *(a1 + 152) = 0x4024000000000000;
  *(a1 + 160) = 0x8000000080000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 168) = 0;
  v8[7] = 7;
  strcpy(__p, "enabled");
  *a1 = sub_5F9D0(a2, __p);
  if ((v8[7] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_FB5BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    v31 = *a17;
    if (!*a17)
    {
LABEL_5:
      v32 = v29[13];
      if (!v32)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v31 = *a17;
    if (!*a17)
    {
      goto LABEL_5;
    }
  }

  v29[23] = v31;
  operator delete(v31);
  v32 = v29[13];
  if (!v32)
  {
LABEL_6:
    v33 = v29[10];
    if (!v33)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  v29[14] = v32;
  operator delete(v32);
  v33 = v29[10];
  if (!v33)
  {
LABEL_7:
    v34 = v29[7];
    if (!v34)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v29[11] = v33;
  operator delete(v33);
  v34 = v29[7];
  if (!v34)
  {
LABEL_8:
    v35 = v29[4];
    if (!v35)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  v29[8] = v34;
  operator delete(v34);
  v35 = v29[4];
  if (!v35)
  {
LABEL_9:
    v36 = v29[1];
    if (!v36)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v29[5] = v35;
  operator delete(v35);
  v36 = v29[1];
  if (!v36)
  {
LABEL_10:
    _Unwind_Resume(exception_object);
  }

LABEL_17:
  v29[2] = v36;
  operator delete(v36);
  _Unwind_Resume(exception_object);
}

void sub_FB5D80(uint64_t a1, void **a2, uint64_t *a3)
{
  *(a1 + 2096) = *(a1 + 2088);
  if (*(a1 + 2032) == 1)
  {
    v6 = *(sub_F6D17C(a2[2], a2[3]) + 32);
    v7 = *(a1 + 2096);
    v8 = *(a1 + 2104);
    if (v7 >= v8)
    {
      v10 = *(a1 + 2088);
      v11 = v7 - v10;
      v12 = (v7 - v10) >> 3;
      v13 = v12 + 1;
      if ((v12 + 1) >> 61)
      {
        goto LABEL_39;
      }

      v14 = v8 - v10;
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

        goto LABEL_40;
      }

      v16 = v12;
      v17 = (8 * v12);
      v18 = v6 & 0xFFFFFFFFFFFFFFLL;
      v19 = &v17[-v16];
      *v17 = v18;
      v9 = v17 + 1;
      memcpy(v19, v10, v11);
      *(a1 + 2088) = v19;
      *(a1 + 2096) = v9;
      *(a1 + 2104) = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      *v7 = v6 & 0xFFFFFFFFFFFFFFLL;
      v9 = v7 + 1;
    }

    *(a1 + 2096) = v9;
  }

  if (*(a1 + 2033) == 1)
  {
    v20 = *(sub_F6D17C(*a2, a2[1]) + 32);
    v21 = *(a1 + 2096);
    v22 = *(a1 + 2104);
    if (v21 < v22)
    {
      *v21 = v20 & 0xFFFFFFFFFFFFFFLL;
      v23 = v21 + 1;
LABEL_30:
      *(a1 + 2096) = v23;
      goto LABEL_31;
    }

    v24 = *(a1 + 2088);
    v25 = v21 - v24;
    v26 = (v21 - v24) >> 3;
    v27 = v26 + 1;
    if (!((v26 + 1) >> 61))
    {
      v28 = v22 - v24;
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

      if (!v29)
      {
        v30 = v26;
        v31 = (8 * v26);
        v32 = v20 & 0xFFFFFFFFFFFFFFLL;
        v33 = &v31[-v30];
        *v31 = v32;
        v23 = v31 + 1;
        memcpy(v33, v24, v25);
        *(a1 + 2088) = v33;
        *(a1 + 2096) = v23;
        *(a1 + 2104) = 0;
        if (v24)
        {
          operator delete(v24);
        }

        goto LABEL_30;
      }

      if (!(v29 >> 61))
      {
        operator new();
      }

LABEL_40:
      sub_1808();
    }

LABEL_39:
    sub_1794();
  }

LABEL_31:
  if ((*(a1 + 2034) & 1) != 0 || *(a1 + 2035) == 1)
  {
    sub_1021E7C((a1 + 32), a2, 0, (a1 + 2064));
    v34 = *(a1 + 2064);
    v35 = *(a1 + 2072);
    while (v34 != v35)
    {
      v36 = *v34++;
      sub_FB61B4(a1, v36, a3);
    }

    sub_3120CC(a3);
  }
}

double sub_FB601C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, int a5, uint64_t **a6)
{
  v11 = sub_3EC34C(a1, a2);
  v12 = -1.0;
  if (!v11)
  {
    return v12;
  }

  v13 = sub_3EC480(a1, v11, a5, a6);
  if (!v13)
  {
    return v12;
  }

  v16 = *v13;
  if (!v16)
  {
    return v12;
  }

  if (v16 == 1)
  {
    if ((*(a1 + 3874) & 1) == 0)
    {
      LOWORD(v14) = *(v13 + 3);
      return v14 / 100.0;
    }

    return v12;
  }

  v17 = (1440 * (*a3 + 6 - 7 * ((9363 * (*a3 + 6)) >> 16))) + a4;
  v18 = (v13 + 4);
  v19 = (v13 + 4);
  v20 = *v13;
  do
  {
    v21 = (v19 + ((2 * v20) & 0x3FFFFFFFCLL));
    v23 = *v21;
    v22 = v21 + 2;
    v24 = v20 >> 1;
    v20 += ~(v20 >> 1);
    if (v17 < v23)
    {
      v20 = v24;
    }

    else
    {
      v19 = v22;
    }
  }

  while (v20);
  v25 = &v18[2 * v16];
  if (v19 == v25)
  {
    v26 = v19 - 2;
  }

  else
  {
    if (v19 != v18)
    {
      v25 = v19;
    }

    v26 = v25 - 2;
    if (v19 != v18)
    {
      goto LABEL_19;
    }
  }

  v19 = (v13 + 4);
LABEL_19:
  v27 = *v26;
  if (v17 < v27)
  {
    v27 -= 10080;
  }

  v28 = *v19;
  if (v17 > v28)
  {
    v28 += 10080;
  }

  LOWORD(v14) = v26[1];
  LOWORD(v15) = v19[1];
  return v14 / 100.0 + (v15 / 100.0 - v14 / 100.0) * (v17 - v27) / (v28 - v27);
}

void sub_FB61B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 2035) == 1)
  {
    v6 = sub_2B51D8(*a1, a2 & 0xFFFFFFFFFFFFLL);
    v7 = (v6 - *v6);
    v8 = *v7;
    if ((a2 & 0xFF000000000000) != 0)
    {
      if (v8 < 0x9B)
      {
        goto LABEL_30;
      }

      v9 = v7[77];
      if (!v9 || (*(v6 + v9) & 2) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v8 < 0x9B)
      {
        goto LABEL_30;
      }

      v10 = v7[77];
      if (!v10 || (*(v6 + v10) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v11 = *a3;
    v12 = *(a3 + 8);
    v13 = *a3;
    if (*a3 != v12)
    {
      v13 = *a3;
      while (__PAIR64__(*(v13 + 2), *v13) != __PAIR64__(WORD2(a2), a2) || v13[6] != BYTE6(a2))
      {
        v13 += 8;
        if (v13 == v12)
        {
          goto LABEL_16;
        }
      }
    }

    if (v13 == v12)
    {
LABEL_16:
      v14 = *(a3 + 16);
      if (v12 >= v14)
      {
        v16 = v12 - v11;
        v17 = (v12 - v11) >> 3;
        v18 = v17 + 1;
        if ((v17 + 1) >> 61)
        {
          goto LABEL_59;
        }

        v19 = v14 - v11;
        if (v19 >> 2 > v18)
        {
          v18 = v19 >> 2;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          if (!(v20 >> 61))
          {
            operator new();
          }

          goto LABEL_60;
        }

        v21 = (v12 - v11) >> 3;
        v22 = (8 * v17);
        v23 = (8 * v17 - 8 * v21);
        *v22 = a2;
        v15 = v22 + 1;
        memcpy(v23, v11, v16);
        *a3 = v23;
        *(a3 + 8) = v15;
        *(a3 + 16) = 0;
        if (v11)
        {
          operator delete(v11);
        }
      }

      else
      {
        *v12 = a2;
        v15 = v12 + 8;
      }

      *(a3 + 8) = v15;
    }
  }

LABEL_30:
  if (*(a1 + 2034) != 1)
  {
    return;
  }

  v24 = sub_2B51D8(*a1, a2 & 0xFFFFFFFFFFFFLL);
  v25 = (v24 - *v24);
  v26 = *v25;
  if ((a2 & 0xFF000000000000) != 0)
  {
    if (v26 < 0x9B)
    {
      return;
    }

    v27 = v25[77];
    if (!v27 || (*(v24 + v27) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (v26 < 0x9B)
    {
      return;
    }

    v28 = v25[77];
    if (!v28 || (*(v24 + v28) & 2) == 0)
    {
      return;
    }
  }

  v29 = *a3;
  v30 = *(a3 + 8);
  v31 = *a3;
  if (*a3 != v30)
  {
    v31 = *a3;
    while (__PAIR64__(*(v31 + 2), *v31) != __PAIR64__(WORD2(a2), a2) || *(v31 + 6) != ((a2 & 0xFF000000000000) == 0))
    {
      if (++v31 == v30)
      {
        goto LABEL_45;
      }
    }
  }

  if (v31 == v30)
  {
LABEL_45:
    v32 = a2 & 0xFFFFFFFFFFFFLL | (((a2 & 0xFF000000000000) == 0) << 48);
    v33 = *(a3 + 16);
    if (v30 < v33)
    {
      *v30 = v32;
      v34 = v30 + 1;
LABEL_58:
      *(a3 + 8) = v34;
      return;
    }

    v35 = v30 - v29;
    v36 = v30 - v29;
    v37 = v36 + 1;
    if (!((v36 + 1) >> 61))
    {
      v38 = v33 - v29;
      if (v38 >> 2 > v37)
      {
        v37 = v38 >> 2;
      }

      if (v38 >= 0x7FFFFFFFFFFFFFF8)
      {
        v39 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v37;
      }

      if (!v39)
      {
        v40 = v30 - v29;
        v41 = (8 * v36);
        v42 = (8 * v36 - 8 * v40);
        *v41 = v32;
        v34 = v41 + 1;
        memcpy(v42, v29, v35);
        *a3 = v42;
        *(a3 + 8) = v34;
        *(a3 + 16) = 0;
        if (v29)
        {
          operator delete(v29);
        }

        goto LABEL_58;
      }

      if (!(v39 >> 61))
      {
        operator new();
      }

LABEL_60:
      sub_1808();
    }

LABEL_59:
    sub_1794();
  }
}

void sub_FB6518(uint64_t *a1, void *a2)
{
  *a1 = sub_3AF6B4(a2);
  a1[1] = sub_3B1348(a2);
  a1[2] = sub_3B1090(a2);
  a1[3] = sub_3B1AF0(a2);
  sub_FB3D34();
}

void sub_FB66E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_5C010(va);
  _Unwind_Resume(a1);
}

void sub_FB66FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_3DB5C4((v18 + 1360));
  sub_FA9554((v18 + 32));
  _Unwind_Resume(a1);
}

unint64_t sub_FB6738(uint64_t a1, int ***a2, unsigned int *a3)
{
  if (*(a1 + 1864) != 1)
  {
LABEL_43:
    LODWORD(a3) = 0;
    v18 = 0;
    return a3 | (v18 << 32);
  }

  v6 = sub_4D1F50(*a2, a2[1]);
  v7 = sub_4D1F50(a2[2], a2[3]);
  v8 = v7;
  v9 = (*v6 - **v6);
  if (*v9 < 0x9Bu || (v10 = v9[77]) == 0 || (*(*v6 + v10) & 8) == 0)
  {
    v11 = (*v7 - **v7);
    if (*v11 >= 0x9Bu)
    {
      v12 = v11[77];
      if (v12)
      {
        if ((*(*v7 + v12) & 8) != 0)
        {
          a3 = *(a1 + 2024);
          goto LABEL_46;
        }
      }
    }
  }

  if (!sub_1023E80(a1 + 32, a2) && *(v6 + 18) == *(v8 + 36) && *(v6 + 8) == *(v8 + 32))
  {
    a3 = *(a1 + 2028);
    goto LABEL_46;
  }

  if (sub_1023364(a1 + 32, a2))
  {
    v14 = v6[1];
    v15 = (v14 - *v14);
    v16 = *v15;
    if (*(v6 + 38))
    {
      if (v16 < 5 || (v17 = v15[2]) == 0)
      {
LABEL_23:
        v19 = 0;
LABEL_24:
        v20 = v19 + 18000;
        v21 = v19 - 18000;
        if ((v20 >> 5) < 0x465u)
        {
          v21 = v20;
        }

        v22 = *(v8 + 8);
        v23 = (v22 - *v22);
        v24 = *v23;
        if (*(v8 + 38))
        {
          if (v24 < 9 || (v25 = v23[4]) == 0)
          {
LABEL_33:
            v26 = 0;
            goto LABEL_34;
          }
        }

        else
        {
          if (v24 < 5)
          {
            goto LABEL_33;
          }

          v25 = v23[2];
          if (!v25)
          {
            goto LABEL_33;
          }
        }

        v26 = *(v22 + v25);
LABEL_34:
        v27 = v26 - v21;
        if (v27 > 18000)
        {
          v27 -= 36000;
        }

        if (v27 < -17999)
        {
          v27 += 36000;
        }

        v28 = fabs(v27 / 100.0);
        v56 = v28;
        v29 = sub_10238A0(a1 + 32, a2);
        v31 = 1868;
        if (v29)
        {
          v31 = 1866;
        }

        LOWORD(v30) = *(a1 + v31);
        if (v28 < v30)
        {
          goto LABEL_43;
        }

        v32 = sub_1025648(a1 + 32, a2, 0);
        v33 = v32;
        LOWORD(v32) = *(a1 + 1870);
        if (v33 < *&v32)
        {
          goto LABEL_43;
        }

        v34 = sub_1024BF4(a1 + 32, a2, 0);
        if (v34 == 0.0)
        {
          goto LABEL_43;
        }

        v36 = log(v34);
        v55 = v36 / log(*(a1 + 2016));
        LODWORD(v49) = sub_FB43D4(&v56, (a1 + 1872));
        v37 = sub_FB44F4(&v55, (a1 + 1896));
        v38 = sub_5733D0(&v49, v37);
        v54 = v38;
        if (v33 != 0.0)
        {
          v39 = v38;
          v40 = sub_314758(v6);
          v41 = sub_314758(v8);
          if (v40 < v41)
          {
            v41 = v40;
          }

          if (v41 <= 1)
          {
            v41 = 1;
          }

          v49 = v33 / v41;
          if (*(a1 + 1992) == 1)
          {
            v42 = log(v33 / v41);
            v49 = v42 / log(*(a1 + 2016));
          }

          v53 = sub_102410C(a1 + 32, a2);
          v51 = sub_FB43D4(&v49, (a1 + 1920));
          v43 = sub_FB44F4(&v55, (a1 + 1944));
          v52 = sub_5733D0(&v51, v43);
          v44 = sub_FB44F4(&v53, (a1 + 1968));
          v54 = v39 + sub_5733D0(&v52, v44);
        }

        if (!sub_102339C(a1 + 32, a2))
        {
          if (sub_1023E04(a1 + 32, a2))
          {
            sub_FB45BC(&v54, *(a1 + 2000));
          }

          if (v54)
          {
            sub_FB6B58(a1, a2, a3);
            v49 = v45;
            v50 = v46;
            LODWORD(a3) = v54;
            v47 = sub_FB44F4(&v50, (a1 + 2040));
            v18 = sub_5733D0(&v54, v47);
            v48 = sub_FB44F4(&v49, (a1 + 2040));
            sub_5733D0(&v54, v48);
            return a3 | (v18 << 32);
          }

          goto LABEL_43;
        }

        sub_FB45BC(&v54, *(a1 + 2008));
        a3 = v54;
LABEL_46:
        v18 = a3;
        return a3 | (v18 << 32);
      }
    }

    else
    {
      if (v16 < 9)
      {
        goto LABEL_23;
      }

      v17 = v15[4];
      if (!v17)
      {
        goto LABEL_23;
      }
    }

    v19 = *(v14 + v17);
    goto LABEL_24;
  }

  LODWORD(a3) = 0;
  v18 = 0;
  return a3 | (v18 << 32);
}

void sub_FB6B58(uint64_t *a1, void **a2, unsigned int *a3)
{
  sub_FB82B0(a1, a2, a1 + 261);
  v5 = a1[261];
  v6 = a1[262];
  if (v5 != v6)
  {
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = sub_76240C(a1[1], *v5, 0);
      v12 = v11;
      v15 = *&v11 > -1 && ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&v11 - 1) < 0xFFFFFFFFFFFFFLL || (*&v11 & 0x7FFFFFFFFFFFFFFFLL) == 0;
      if (v15 && v11 > 0.0)
      {
        v16 = fmax(sub_3E916C(a1[1], *v5), 1.0);
        v17 = a1[2];
        v18 = *v5;
        LOBYTE(v37[0]) = sub_40A8(a3);
        v19 = sub_41E8(a3);
        v38 = 0;
        v39 = 0;
        v20 = sub_FB601C(v17, v18, v37, v19, 0, &v38);
        v24 = (*&v20 <= -1 || ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v20 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v20 & 0x7FFFFFFFFFFFFFFFLL) != 0 || v20 <= 0.0;
        v25 = v12 / v20;
        if (v24)
        {
          v25 = 1.0;
        }

        v26 = v16 * v25;
        v27 = sub_3E37C0(a1[3], *v5);
        v38 = 0;
        v39 = 0;
        v37[0] = 0;
        v37[1] = 0;
        sub_FAEF14((a1 + 170), v27, a3, &v38, v37);
        v24 = *&v28 <= 0.0;
        v29 = v28;
        v30 = v28 - 1;
        v31 = v28 & 0x7FFFFFFFFFFFFFFFLL;
        v32 = ((v28 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53;
        v33 = v16 * (v12 / *&v28);
        if (v24)
        {
          v33 = v8;
        }

        if ((v29 <= -1 || v32 >= 0x3FF) && v30 >= 0xFFFFFFFFFFFFFLL && v31 != 0)
        {
          v33 = v8;
        }

        v8 = v8 + v26;
        v7 = v7 + v33;
        v9 = v9 + v16;
        v10 = v10 + v16;
      }

      ++v5;
    }

    while (v5 != v6);
  }
}

void sub_FB6D80(uint64_t a1, void *a2)
{
  *a1 = 1;
  *(a1 + 2) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 34) = 0u;
  *(a1 + 50) = 0u;
  *(a1 + 66) = 0u;
  *(a1 + 82) = 0u;
  *(a1 + 98) = 0u;
  *(a1 + 113) = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 136) = _Q0;
  *(a1 + 152) = 0x4024000000000000;
  *(a1 + 160) = 0x8000000080000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 168) = 0;
  v8[7] = 7;
  strcpy(__p, "enabled");
  *a1 = sub_5F9D0(a2, __p);
  if ((v8[7] & 0x80000000) != 0)
  {
    operator delete(__p[0]);
  }

  operator new();
}

void sub_FB80EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    v31 = *a17;
    if (!*a17)
    {
LABEL_5:
      v32 = v29[13];
      if (!v32)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v31 = *a17;
    if (!*a17)
    {
      goto LABEL_5;
    }
  }

  v29[23] = v31;
  operator delete(v31);
  v32 = v29[13];
  if (!v32)
  {
LABEL_6:
    v33 = v29[10];
    if (!v33)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  v29[14] = v32;
  operator delete(v32);
  v33 = v29[10];
  if (!v33)
  {
LABEL_7:
    v34 = v29[7];
    if (!v34)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  v29[11] = v33;
  operator delete(v33);
  v34 = v29[7];
  if (!v34)
  {
LABEL_8:
    v35 = v29[4];
    if (!v35)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  v29[8] = v34;
  operator delete(v34);
  v35 = v29[4];
  if (!v35)
  {
LABEL_9:
    v36 = v29[1];
    if (!v36)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v29[5] = v35;
  operator delete(v35);
  v36 = v29[1];
  if (!v36)
  {
LABEL_10:
    _Unwind_Resume(exception_object);
  }

LABEL_17:
  v29[2] = v36;
  operator delete(v36);
  _Unwind_Resume(exception_object);
}

void sub_FB82B0(uint64_t a1, void **a2, uint64_t *a3)
{
  *(a1 + 2096) = *(a1 + 2088);
  if (*(a1 + 2032) == 1)
  {
    v6 = *(sub_4D1F50(a2[2], a2[3]) + 32);
    v7 = *(a1 + 2096);
    v8 = *(a1 + 2104);
    if (v7 >= v8)
    {
      v10 = *(a1 + 2088);
      v11 = v7 - v10;
      v12 = (v7 - v10) >> 3;
      v13 = v12 + 1;
      if ((v12 + 1) >> 61)
      {
        goto LABEL_39;
      }

      v14 = v8 - v10;
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

        goto LABEL_40;
      }

      v16 = v12;
      v17 = (8 * v12);
      v18 = v6 & 0xFFFFFFFFFFFFFFLL;
      v19 = &v17[-v16];
      *v17 = v18;
      v9 = v17 + 1;
      memcpy(v19, v10, v11);
      *(a1 + 2088) = v19;
      *(a1 + 2096) = v9;
      *(a1 + 2104) = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      *v7 = v6 & 0xFFFFFFFFFFFFFFLL;
      v9 = v7 + 1;
    }

    *(a1 + 2096) = v9;
  }

  if (*(a1 + 2033) == 1)
  {
    v20 = *(sub_4D1F50(*a2, a2[1]) + 32);
    v21 = *(a1 + 2096);
    v22 = *(a1 + 2104);
    if (v21 < v22)
    {
      *v21 = v20 & 0xFFFFFFFFFFFFFFLL;
      v23 = v21 + 1;
LABEL_30:
      *(a1 + 2096) = v23;
      goto LABEL_31;
    }

    v24 = *(a1 + 2088);
    v25 = v21 - v24;
    v26 = (v21 - v24) >> 3;
    v27 = v26 + 1;
    if (!((v26 + 1) >> 61))
    {
      v28 = v22 - v24;
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

      if (!v29)
      {
        v30 = v26;
        v31 = (8 * v26);
        v32 = v20 & 0xFFFFFFFFFFFFFFLL;
        v33 = &v31[-v30];
        *v31 = v32;
        v23 = v31 + 1;
        memcpy(v33, v24, v25);
        *(a1 + 2088) = v33;
        *(a1 + 2096) = v23;
        *(a1 + 2104) = 0;
        if (v24)
        {
          operator delete(v24);
        }

        goto LABEL_30;
      }

      if (!(v29 >> 61))
      {
        operator new();
      }

LABEL_40:
      sub_1808();
    }

LABEL_39:
    sub_1794();
  }

LABEL_31:
  if ((*(a1 + 2034) & 1) != 0 || *(a1 + 2035) == 1)
  {
    sub_1024DFC((a1 + 32), a2, 0, (a1 + 2064));
    v34 = *(a1 + 2064);
    v35 = *(a1 + 2072);
    while (v34 != v35)
    {
      v36 = *v34++;
      sub_FB61B4(a1, v36, a3);
    }

    sub_3120CC(a3);
  }
}

double sub_FB854C(double *a1, double *a2, uint64_t a3, uint64_t a4, char a5, double result)
{
LABEL_1:
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 4;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:
          v94 = v10[2];
          v95 = v10 + 3;
          v96 = v10[3];
          result = *v10;
          v97 = v10 + 1;
          v98 = v10[1];
          if (v94 == *v10)
          {
            v99 = v96 < v98;
          }

          else
          {
            v99 = v94 < *v10;
          }

          v100 = *(a2 - 2);
          v101 = *(a2 - 1) < v96;
          if (v100 != v94)
          {
            v101 = v100 < v94;
          }

          if (v99)
          {
            if (v101)
            {
              *v10 = v100;
              *(a2 - 2) = result;
            }

            else
            {
              *v10 = v94;
              v10[1] = v96;
              v10[2] = result;
              v10[3] = v98;
              v146 = *(a2 - 2);
              v147 = *(a2 - 1) < v98;
              if (v146 != result)
              {
                v147 = v146 < result;
              }

              if (!v147)
              {
                return result;
              }

              v10[2] = v146;
              *(a2 - 2) = result;
              v97 = v10 + 3;
            }

            v95 = a2 - 1;
          }

          else
          {
            if (!v101)
            {
              return result;
            }

            v10[2] = v100;
            *(a2 - 2) = v94;
            v134 = *(v10 + 3);
            v10[3] = *(a2 - 1);
            *(a2 - 1) = v134;
            result = v10[2];
            v135 = *v10;
            v136 = v10[3] < v10[1];
            if (result != *v10)
            {
              v136 = result < *v10;
            }

            if (!v136)
            {
              return result;
            }

            *v10 = result;
            v10[2] = v135;
          }

          result = *v97;
          *v97 = *v95;
          *v95 = result;
          return result;
        case 4uLL:

          return sub_FB8F60(v10, v10 + 2, (v10 + 4), a2 - 2);
        case 5uLL:
          sub_FB8F60(v10, v10 + 2, (v10 + 4), v10 + 6);
          result = *(a2 - 2);
          v102 = v10[6];
          v103 = *(a2 - 1) < v10[7];
          if (result != v102)
          {
            v103 = result < v102;
          }

          if (v103)
          {
            v10[6] = result;
            *(a2 - 2) = v102;
            v104 = *(v10 + 7);
            v10[7] = *(a2 - 1);
            *(a2 - 1) = v104;
            result = v10[6];
            v105 = v10[7];
            v106 = v10[4];
            v107 = v10[5];
            v108 = v105 < v107;
            if (result != v106)
            {
              v108 = result < v106;
            }

            if (v108)
            {
              v10[4] = result;
              v10[5] = v105;
              v10[6] = v106;
              v10[7] = v107;
              v109 = v10[2];
              v110 = v10[3];
              v111 = v105 < v110;
              if (result != v109)
              {
                v111 = result < v109;
              }

              if (v111)
              {
                v10[2] = result;
                v10[3] = v105;
                v10[4] = v109;
                v10[5] = v110;
                v112 = *v10;
                v113 = v10[1];
                v114 = v105 < v113;
                if (result != *v10)
                {
                  v114 = result < *v10;
                }

                if (v114)
                {
                  *v10 = result;
                  v10[1] = v105;
                  v10[2] = v112;
                  v10[3] = v113;
                }
              }
            }
          }

          return result;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result = *(a2 - 2);
        v115 = *v10;
        v116 = *(a2 - 1) < v10[1];
        if (result != v115)
        {
          v116 = result < *v10;
        }

        if (v116)
        {
          *v10 = result;
          *(a2 - 2) = v115;
          result = v10[1];
          v10[1] = *(a2 - 1);
          *(a2 - 1) = result;
        }

        return result;
      }
    }

    if (v13 <= 23)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {
        v131 = (v13 - 2) >> 1;
        v132 = v131 + 1;
        v133 = &a1[2 * v131];
        do
        {
          sub_FB97D4(a1, a3, v13, v133);
          v133 -= 2;
          --v132;
        }

        while (v132);

        sub_FB9924(a1, a2);
      }

      return result;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = *(a2 - 2);
    v16 = *(a2 - 1);
    if (v13 < 0x81)
    {
      v25 = *v10;
      v26 = *v14;
      v27 = v10 + 1;
      v28 = v10[1];
      v29 = (v14 + 1);
      v30 = v14[1];
      v31 = *v10 < *v14;
      if (*v10 == *v14)
      {
        v31 = v28 < v30;
      }

      v32 = v16 < v28;
      if (v15 != v25)
      {
        v32 = v15 < v25;
      }

      if (v31)
      {
        if (v32)
        {
          *v14 = v15;
          *(a2 - 2) = v26;
          goto LABEL_59;
        }

        *v14 = v25;
        v14[1] = v28;
        *v10 = v26;
        v10[1] = v30;
        v55 = *(a2 - 2);
        v56 = *(a2 - 1) < v30;
        if (v55 != v26)
        {
          v56 = v55 < v26;
        }

        if (v56)
        {
          *v10 = v55;
          *(a2 - 2) = v26;
          v29 = (v10 + 1);
LABEL_59:
          v27 = a2 - 1;
LABEL_60:
          v57 = *v29;
          *v29 = *v27;
          *v27 = v57;
        }
      }

      else if (v32)
      {
        *v10 = v15;
        *(a2 - 2) = v25;
        v36 = *(v10 + 1);
        v10[1] = *(a2 - 1);
        *(a2 - 1) = v36;
        v37 = *v14;
        v38 = v10[1] < v14[1];
        if (*v10 != *v14)
        {
          v38 = *v10 < *v14;
        }

        if (v38)
        {
          *v14 = *v10;
          *v10 = v37;
          goto LABEL_60;
        }
      }

      if (a5)
      {
        goto LABEL_107;
      }

      goto LABEL_104;
    }

    v17 = *v14;
    v18 = *v10;
    v19 = v14 + 1;
    v20 = v14[1];
    v21 = (v10 + 1);
    v22 = v10[1];
    v23 = *v14 < *v10;
    if (*v14 == *v10)
    {
      v23 = v20 < v22;
    }

    v24 = v16 < v20;
    if (v15 != v17)
    {
      v24 = v15 < v17;
    }

    if (v23)
    {
      if (v24)
      {
        *v10 = v15;
        *(a2 - 2) = v18;
LABEL_41:
        v19 = a2 - 1;
        goto LABEL_42;
      }

      *v10 = v17;
      v10[1] = v20;
      *v14 = v18;
      v14[1] = v22;
      v39 = *(a2 - 2);
      v40 = *(a2 - 1) < v22;
      if (v39 != v18)
      {
        v40 = v39 < v18;
      }

      if (v40)
      {
        *v14 = v39;
        *(a2 - 2) = v18;
        v21 = (v14 + 1);
        goto LABEL_41;
      }
    }

    else if (v24)
    {
      *v14 = v15;
      *(a2 - 2) = v17;
      v33 = *(v14 + 1);
      v14[1] = *(a2 - 1);
      *(a2 - 1) = v33;
      v34 = *v10;
      v35 = v14[1] < v10[1];
      if (*v14 != *v10)
      {
        v35 = *v14 < *v10;
      }

      if (v35)
      {
        *v10 = *v14;
        *v14 = v34;
LABEL_42:
        v41 = *v21;
        *v21 = *v19;
        *v19 = v41;
      }
    }

    v42 = v14 - 2;
    v43 = *(v14 - 2);
    v44 = v10[2];
    v45 = v14 - 1;
    v46 = *(v14 - 1);
    v47 = v10 + 3;
    v48 = v10[3];
    v49 = v43 < v44;
    if (v43 == v44)
    {
      v49 = v46 < v48;
    }

    v50 = *(a2 - 4);
    v51 = *(a2 - 3) < v46;
    if (v50 != v43)
    {
      v51 = v50 < v43;
    }

    if (v49)
    {
      if (v51)
      {
        v10[2] = v50;
        *(a2 - 4) = v44;
LABEL_67:
        v45 = a2 - 3;
        goto LABEL_68;
      }

      v10[2] = v43;
      v10[3] = v46;
      *v42 = v44;
      *(v14 - 1) = v48;
      v58 = *(a2 - 4);
      v59 = *(a2 - 3) < v48;
      if (v58 != v44)
      {
        v59 = v58 < v44;
      }

      if (v59)
      {
        *v42 = v58;
        *(a2 - 4) = v44;
        v47 = v14 - 1;
        goto LABEL_67;
      }
    }

    else if (v51)
    {
      *v42 = v50;
      *(a2 - 4) = v43;
      v52 = *(v14 - 1);
      *(v14 - 1) = *(a2 - 3);
      *(a2 - 3) = v52;
      v53 = v10[2];
      v54 = *(v14 - 1) < v10[3];
      if (*v42 != v53)
      {
        v54 = *v42 < v53;
      }

      if (v54)
      {
        v10[2] = *v42;
        *v42 = v53;
LABEL_68:
        v60 = *v47;
        *v47 = *v45;
        *v45 = v60;
      }
    }

    v61 = v14 + 2;
    v62 = v14[2];
    v63 = v10[4];
    v64 = v14 + 3;
    v65 = v14[3];
    v66 = (v10 + 5);
    v67 = v10[5];
    v68 = v62 < v63;
    if (v62 == v63)
    {
      v68 = v65 < v67;
    }

    v69 = *(a2 - 6);
    v70 = *(a2 - 5) < v65;
    if (v69 != v62)
    {
      v70 = v69 < v62;
    }

    if (v68)
    {
      if (v70)
      {
        v10[4] = v69;
        *(a2 - 6) = v63;
LABEL_85:
        v64 = a2 - 5;
        goto LABEL_86;
      }

      v10[4] = v62;
      v10[5] = v65;
      *v61 = v63;
      v14[3] = v67;
      v74 = *(a2 - 6);
      v75 = *(a2 - 5) < v67;
      if (v74 != v63)
      {
        v75 = v74 < v63;
      }

      if (v75)
      {
        *v61 = v74;
        *(a2 - 6) = v63;
        v66 = (v14 + 3);
        goto LABEL_85;
      }

      v65 = v67;
      v62 = v63;
    }

    else if (v70)
    {
      *v61 = v69;
      *(a2 - 6) = v62;
      v71 = *(v14 + 3);
      v14[3] = *(a2 - 5);
      *(a2 - 5) = v71;
      v62 = *v61;
      v65 = v14[3];
      v72 = v10[4];
      v73 = v65 < v10[5];
      if (*v61 != v72)
      {
        v73 = *v61 < v72;
      }

      if (v73)
      {
        v10[4] = v62;
        *v61 = v72;
LABEL_86:
        v76 = *v66;
        *v66 = *v64;
        *v64 = v76;
        v62 = *v61;
        v65 = v14[3];
      }
    }

    v78 = *v14;
    v77 = v14[1];
    v80 = *v42;
    v79 = *(v14 - 1);
    v81 = *v14 < *v42;
    if (*v14 == *v42)
    {
      v81 = v77 < v79;
    }

    v82 = v65 < v77;
    if (v62 != v78)
    {
      v82 = v62 < v78;
    }

    if (v81)
    {
      if (!v82)
      {
        *v42 = v78;
        *(v14 - 1) = v77;
        *v14 = v80;
        v14[1] = v79;
        v83 = v62 < v80;
        if (v62 == v80)
        {
          v83 = v65 < v79;
        }

        v42 = &v10[2 * (v13 >> 1)];
        if (!v83)
        {
          v84 = *v10;
          *v10 = v80;
          v10[1] = v79;
          *v14 = v84;
          if (a5)
          {
            goto LABEL_107;
          }

          goto LABEL_104;
        }
      }
    }

    else
    {
      if (!v82)
      {
        goto LABEL_103;
      }

      *v14 = v62;
      v14[1] = v65;
      *v61 = v78;
      v14[3] = v77;
      v85 = v62 < v80;
      if (v62 == v80)
      {
        v85 = v65 < v79;
      }

      v61 = &v10[2 * (v13 >> 1)];
      if (!v85)
      {
        v92 = v62;
        v93 = *v10;
        *v10 = v92;
        v10[1] = v65;
        *v14 = v93;
        if (a5)
        {
          goto LABEL_107;
        }

        goto LABEL_104;
      }
    }

    *v61 = v80;
    *v42 = v62;
    v42[1] = v65;
    v61[1] = v79;
    v78 = *v14;
    v77 = v14[1];
LABEL_103:
    v86 = *v10;
    *v10 = v78;
    v10[1] = v77;
    *v14 = v86;
    if (a5)
    {
      goto LABEL_107;
    }

LABEL_104:
    v87 = *(v10 - 2);
    v88 = *(v10 - 1) < v10[1];
    if (v87 != *v10)
    {
      v88 = v87 < *v10;
    }

    if (!v88)
    {
      v10 = sub_FB9124(v10, a2);
      goto LABEL_116;
    }

LABEL_107:
    v89 = sub_FB9254(v10, a2);
    if ((v90 & 1) == 0)
    {
      goto LABEL_114;
    }

    v91 = sub_FB9388(v10, v89);
    v10 = v89 + 2;
    if (sub_FB9388((v89 + 2), a2))
    {
      a4 = -v12;
      a2 = v89;
      if (v91)
      {
        return result;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v91)
    {
LABEL_114:
      sub_FB854C(a1, v89, a3, -v12, a5 & 1);
      v10 = v89 + 2;
LABEL_116:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  v117 = v10 + 2;
  v119 = v10 == a2 || v117 == a2;
  if (a5)
  {
    if (!v119)
    {
      v120 = 0;
      v121 = v10;
      do
      {
        result = v121[2];
        v123 = v121[3];
        v124 = *v121;
        v125 = v121[1];
        v121 = v117;
        v126 = v123 < v125;
        if (result != v124)
        {
          v126 = result < v124;
        }

        if (v126)
        {
          v127 = v120;
          do
          {
            v128 = (v10 + v127);
            v129 = *(v10 + v127 + 8);
            v128[2] = v124;
            *(v128 + 3) = v129;
            if (!v127)
            {
              v122 = v10;
              goto LABEL_157;
            }

            v124 = *(v128 - 2);
            v130 = v123 < *(v128 - 1);
            if (result != v124)
            {
              v130 = result < v124;
            }

            v127 -= 16;
          }

          while (v130);
          v122 = (v10 + v127 + 16);
LABEL_157:
          *v122 = result;
          v122[1] = v123;
        }

        v117 = v121 + 2;
        v120 += 16;
      }

      while (v121 + 2 != a2);
    }
  }

  else if (!v119)
  {
    v137 = v10 + 3;
    do
    {
      result = a1[2];
      v138 = a1[3];
      v139 = *a1;
      v140 = a1[1];
      a1 = v117;
      v141 = v138 < v140;
      if (result != v139)
      {
        v141 = result < v139;
      }

      if (v141)
      {
        v142 = v137;
        do
        {
          v143 = v142;
          v144 = *(v142 - 2);
          v142 -= 2;
          *(v143 - 1) = v139;
          *v143 = v144;
          v139 = *(v143 - 5);
          v145 = v138 < *(v143 - 4);
          if (result != v139)
          {
            v145 = result < v139;
          }
        }

        while (v145);
        *(v142 - 1) = result;
        *v142 = v138;
      }

      v117 = a1 + 2;
      v137 += 2;
    }

    while (a1 + 2 != a2);
  }

  return result;
}

double sub_FB8F60(uint64_t a1, double *a2, uint64_t a3, double *a4)
{
  v4 = *a2;
  v5 = (a2 + 1);
  v6 = a2[1];
  v7 = *a1;
  v8 = (a1 + 8);
  if (*a2 == *a1)
  {
    v9 = v6 < *(a1 + 8);
  }

  else
  {
    v9 = *a2 < *a1;
  }

  result = *(a3 + 8);
  v11 = *a3;
  v12 = result < v6;
  if (*a3 != v4)
  {
    v12 = *a3 < v4;
  }

  if (v9)
  {
    if (v12)
    {
      *a1 = v11;
      *a3 = v7;
LABEL_18:
      v5 = (a3 + 8);
      goto LABEL_19;
    }

    *a1 = v4;
    *a2 = v7;
    v15 = *(a1 + 8);
    *(a1 + 8) = a2[1];
    a2[1] = v15;
    v16 = *a2;
    result = *(a3 + 8);
    v17 = result < v15;
    if (*a3 != *a2)
    {
      v17 = *a3 < *a2;
    }

    if (v17)
    {
      *a2 = *a3;
      *a3 = v16;
      v8 = (a2 + 1);
      goto LABEL_18;
    }
  }

  else if (v12)
  {
    *a2 = v11;
    *a3 = v4;
    result = a2[1];
    a2[1] = *(a3 + 8);
    *(a3 + 8) = result;
    v13 = *a1;
    v14 = a2[1] < *(a1 + 8);
    if (*a2 != *a1)
    {
      v14 = *a2 < *a1;
    }

    if (v14)
    {
      *a1 = *a2;
      *a2 = v13;
LABEL_19:
      v18 = *v8;
      *v8 = *v5;
      *v5 = v18;
      result = *(a3 + 8);
    }
  }

  v19 = *a3;
  v20 = a4[1] < result;
  if (*a4 != *a3)
  {
    v20 = *a4 < *a3;
  }

  if (v20)
  {
    *a3 = *a4;
    *a4 = v19;
    v21 = *(a3 + 8);
    *(a3 + 8) = a4[1];
    *(a4 + 1) = v21;
    result = *a3;
    v22 = *a2;
    v23 = *(a3 + 8) < a2[1];
    if (*a3 != *a2)
    {
      v23 = *a3 < *a2;
    }

    if (v23)
    {
      *a2 = result;
      *a3 = v22;
      v24 = *(a2 + 1);
      a2[1] = *(a3 + 8);
      *(a3 + 8) = v24;
      result = *a2;
      v25 = *a1;
      v26 = a2[1] < *(a1 + 8);
      if (*a2 != *a1)
      {
        v26 = *a2 < *a1;
      }

      if (v26)
      {
        *a1 = result;
        *a2 = v25;
        result = *(a1 + 8);
        *(a1 + 8) = a2[1];
        a2[1] = result;
      }
    }
  }

  return result;
}

double *sub_FB9124(double *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 - 16);
  v5 = v3 < *(a2 - 8);
  if (*a1 != v4)
  {
    v5 = *a1 < v4;
  }

  if (v5)
  {
    v6 = a1;
    do
    {
      v7 = v6[2];
      v8 = v6[3];
      v6 += 2;
      v9 = v3 < v8;
      if (v2 != v7)
      {
        v9 = v2 < v7;
      }
    }

    while (!v9);
  }

  else
  {
    v10 = a1 + 2;
    do
    {
      v6 = v10;
      if (v10 >= a2)
      {
        break;
      }

      v11 = *v10;
      v12 = v3 < v10[1];
      v13 = v2 < v11;
      if (v2 == v11)
      {
        v13 = v12;
      }

      v10 = v6 + 2;
    }

    while (!v13);
  }

  if (v6 < a2)
  {
    do
    {
      v14 = *(a2 - 16);
      v15 = *(a2 - 8);
      a2 -= 16;
      v16 = v3 < v15;
      if (v2 != v14)
      {
        v16 = v2 < v14;
      }
    }

    while (v16);
  }

  if (v6 < a2)
  {
    v17 = *v6;
    v18 = *a2;
    do
    {
      *v6 = v18;
      *a2 = v17;
      v19 = *(v6 + 1);
      v6[1] = *(a2 + 8);
      *(a2 + 8) = v19;
      do
      {
        v17 = v6[2];
        v20 = v6[3];
        v6 += 2;
        v21 = v3 < v20;
        if (v2 != v17)
        {
          v21 = v2 < v17;
        }
      }

      while (!v21);
      do
      {
        v18 = *(a2 - 16);
        v22 = *(a2 - 8);
        a2 -= 16;
        v23 = v3 < v22;
        if (v2 != v18)
        {
          v23 = v2 < v18;
        }
      }

      while (v23);
    }

    while (v6 < a2);
  }

  if (v6 - 2 != a1)
  {
    *a1 = *(v6 - 2);
    a1[1] = *(v6 - 1);
  }

  *(v6 - 2) = v2;
  *(v6 - 1) = v3;
  return v6;
}

double *sub_FB9254(double *a1, double *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  do
  {
    v5 = a1[v2 + 2];
    v6 = a1[v2 + 3] < v4;
    if (v5 != v3)
    {
      v6 = v5 < v3;
    }

    v2 += 2;
  }

  while (v6);
  v7 = &a1[v2];
  if (v2 == 2)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v11 = *(a2 - 2);
      v12 = *(a2 - 1);
      a2 -= 2;
      v13 = v12 < v4;
      if (v11 != v3)
      {
        v13 = v11 < v3;
      }
    }

    while (!v13);
  }

  else
  {
    do
    {
      v8 = *(a2 - 2);
      v9 = *(a2 - 1);
      a2 -= 2;
      v10 = v9 < v4;
      if (v8 != v3)
      {
        v10 = v8 < v3;
      }
    }

    while (!v10);
  }

  if (v7 >= a2)
  {
    v15 = v7;
    v22 = v7 - 2;
    if (v7 - 2 == a1)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v14 = *a2;
  v15 = v7;
  v16 = a2;
  do
  {
    *v15 = v14;
    *v16 = v5;
    v17 = *(v15 + 1);
    v15[1] = v16[1];
    *(v16 + 1) = v17;
    do
    {
      v5 = v15[2];
      v18 = v15[3];
      v15 += 2;
      v19 = v18 < v4;
      if (v5 != v3)
      {
        v19 = v5 < v3;
      }
    }

    while (v19);
    do
    {
      v14 = *(v16 - 2);
      v20 = *(v16 - 1);
      v16 -= 2;
      v21 = v20 < v4;
      if (v14 != v3)
      {
        v21 = v14 < v3;
      }
    }

    while (!v21);
  }

  while (v15 < v16);
  v22 = v15 - 2;
  if (v15 - 2 != a1)
  {
LABEL_25:
    *a1 = *(v15 - 2);
    a1[1] = *(v15 - 1);
  }

LABEL_26:
  *(v15 - 2) = v3;
  *(v15 - 1) = v4;
  return v22;
}

BOOL sub_FB9388(uint64_t a1, double *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        sub_FB8F60(a1, (a1 + 16), a1 + 32, a2 - 2);
        return 1;
      }

      if (v2 == 5)
      {
        sub_FB8F60(a1, (a1 + 16), a1 + 32, (a1 + 48));
        v10 = *(a2 - 2);
        v11 = *(a1 + 48);
        v12 = *(a2 - 1) < *(a1 + 56);
        if (v10 != v11)
        {
          v12 = v10 < v11;
        }

        if (v12)
        {
          *(a1 + 48) = v10;
          *(a2 - 2) = v11;
          v13 = *(a1 + 56);
          *(a1 + 56) = *(a2 - 1);
          *(a2 - 1) = v13;
          v14 = *(a1 + 48);
          v15 = *(a1 + 56);
          v16 = *(a1 + 32);
          v17 = *(a1 + 40);
          v18 = v15 < v17;
          if (v14 != v16)
          {
            v18 = v14 < v16;
          }

          if (v18)
          {
            *(a1 + 32) = v14;
            *(a1 + 40) = v15;
            *(a1 + 48) = v16;
            *(a1 + 56) = v17;
            v19 = *(a1 + 16);
            v20 = *(a1 + 24);
            v21 = v15 < v20;
            if (v14 != v19)
            {
              v21 = v14 < v19;
            }

            if (v21)
            {
              *(a1 + 16) = v14;
              *(a1 + 24) = v15;
              *(a1 + 32) = v19;
              *(a1 + 40) = v20;
              v22 = *a1;
              v23 = *(a1 + 8);
              v24 = v15 < v23;
              if (v14 != *a1)
              {
                v24 = v14 < *a1;
              }

              if (v24)
              {
                *a1 = v14;
                *(a1 + 8) = v15;
                result = 1;
                *(a1 + 16) = v22;
                *(a1 + 24) = v23;
                return result;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_32;
    }

    v25 = *(a1 + 16);
    v26 = (a1 + 24);
    v27 = *(a1 + 24);
    v28 = *a1;
    v29 = (a1 + 8);
    v30 = *(a1 + 8);
    if (v25 == *a1)
    {
      v31 = v27 < v30;
    }

    else
    {
      v31 = v25 < *a1;
    }

    v32 = *(a2 - 2);
    v33 = *(a2 - 1) < v27;
    if (v32 != v25)
    {
      v33 = v32 < v25;
    }

    if (v31)
    {
      if (v33)
      {
        *a1 = v32;
        *(a2 - 2) = v28;
      }

      else
      {
        *a1 = v25;
        *(a1 + 8) = v27;
        *(a1 + 16) = v28;
        *(a1 + 24) = v30;
        v64 = *(a2 - 2);
        v65 = *(a2 - 1) < v30;
        if (v64 != v28)
        {
          v65 = v64 < v28;
        }

        if (!v65)
        {
          return 1;
        }

        *(a1 + 16) = v64;
        *(a2 - 2) = v28;
        v29 = (a1 + 24);
      }

      v26 = a2 - 1;
    }

    else
    {
      if (!v33)
      {
        return 1;
      }

      *(a1 + 16) = v32;
      *(a2 - 2) = v25;
      v47 = *(a1 + 24);
      *(a1 + 24) = *(a2 - 1);
      *(a2 - 1) = v47;
      v48 = *(a1 + 16);
      v49 = *a1;
      v50 = *(a1 + 24) < *(a1 + 8);
      if (v48 != *a1)
      {
        v50 = v48 < *a1;
      }

      if (!v50)
      {
        return 1;
      }

      *a1 = v48;
      *(a1 + 16) = v49;
    }

    v66 = *v29;
    *v29 = *v26;
    *v26 = v66;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 2);
    v4 = *a1;
    v5 = *(a2 - 1) < *(a1 + 8);
    if (v3 != *a1)
    {
      v5 = v3 < *a1;
    }

    if (v5)
    {
      *a1 = v3;
      *(a2 - 2) = v4;
      v6 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 1);
      *(a2 - 1) = v6;
      return 1;
    }

    return 1;
  }

LABEL_32:
  v34 = (a1 + 32);
  v35 = *(a1 + 32);
  v36 = (a1 + 16);
  v37 = *(a1 + 16);
  v38 = *a1;
  v39 = (a1 + 24);
  v40 = *(a1 + 24);
  v41 = (a1 + 8);
  v42 = *(a1 + 8);
  v43 = v37 < *a1;
  v44 = *(a1 + 40);
  if (v37 == *a1)
  {
    v43 = v40 < v42;
  }

  v45 = v44 < v40;
  if (v35 != v37)
  {
    v45 = v35 < v37;
  }

  if (v43)
  {
    if (v45)
    {
      v46 = a1;
      v36 = (a1 + 32);
      v39 = (a1 + 40);
LABEL_49:
      *v46 = v35;
      *v36 = v38;
      *v41 = v44;
      *v39 = v42;
      goto LABEL_50;
    }

    *a1 = v37;
    *(a1 + 8) = v40;
    if (v35 == v38)
    {
      v67 = v44 < v42;
    }

    else
    {
      v67 = v35 < v38;
    }

    v46 = (a1 + 16);
    *(a1 + 16) = v38;
    *(a1 + 24) = v42;
    v36 = (a1 + 32);
    v41 = (a1 + 24);
    v39 = (a1 + 40);
    if (v67)
    {
      goto LABEL_49;
    }
  }

  else if (v45)
  {
    *v36 = v35;
    *v34 = v37;
    *v39 = v44;
    *(a1 + 40) = v40;
    v51 = v44 < v42;
    if (v35 != v38)
    {
      v51 = v35 < v38;
    }

    v46 = a1;
    if (v51)
    {
      goto LABEL_49;
    }
  }

LABEL_50:
  v52 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v53 = 0;
  v54 = 0;
  while (1)
  {
    v55 = *v52;
    v56 = v52[1];
    v57 = *v34;
    v58 = v56 < v34[1];
    if (*v52 != v57)
    {
      v58 = *v52 < v57;
    }

    if (v58)
    {
      break;
    }

LABEL_63:
    v34 = v52;
    v53 += 16;
    v52 += 2;
    if (v52 == a2)
    {
      return 1;
    }
  }

  v59 = v53;
  do
  {
    v60 = a1 + v59;
    v61 = *(a1 + v59 + 40);
    *(v60 + 48) = v57;
    *(v60 + 56) = v61;
    if (v59 == -32)
    {
      *a1 = v55;
      *(a1 + 8) = v56;
      if (++v54 != 8)
      {
        goto LABEL_63;
      }

      return v52 + 2 == a2;
    }

    v57 = *(v60 + 16);
    v62 = v56 < *(v60 + 24);
    if (v55 != v57)
    {
      v62 = v55 < v57;
    }

    v59 -= 16;
  }

  while (v62);
  v63 = a1 + v59;
  *(v63 + 48) = v55;
  *(v63 + 56) = v56;
  if (++v54 != 8)
  {
    goto LABEL_63;
  }

  return v52 + 2 == a2;
}

uint64_t sub_FB97D4(uint64_t result, uint64_t a2, uint64_t a3, double *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v13.f64[0] = v8->f64[0];
      }

      else
      {
        v10 = v8[1];
        v11 = vmovn_s64(vcgtq_f64(v10, *v8));
        if (vmovn_s64(vmvnq_s8(vceqq_f64(*v8, v10))).u8[0])
        {
          v12 = v11.i8[0];
        }

        else
        {
          v12 = v11.i8[4];
        }

        if (v12)
        {
          v13.f64[0] = v8[1].f64[0];
        }

        else
        {
          v13.f64[0] = v8->f64[0];
        }

        if (v12)
        {
          ++v8;
          v7 = v9;
        }
      }

      v14 = *a4;
      v15 = a4[1];
      v16 = v8->f64[1] < v15;
      if (v13.f64[0] != *a4)
      {
        v16 = v13.f64[0] < *a4;
      }

      if (!v16)
      {
        do
        {
          v21 = a4;
          a4 = v8;
          *v21 = v13.f64[0];
          v21[1] = v8->f64[1];
          if (v5 < v7)
          {
            break;
          }

          v22 = (2 * v7) | 1;
          v8 = (result + 16 * v22);
          v7 = 2 * v7 + 2;
          if (v7 < a3)
          {
            v13 = *v8;
            v17 = v8[1];
            v18 = vmovn_s64(vcgtq_f64(v17, *v8));
            v19 = (vmovn_s64(vmvnq_s8(vceqq_f64(*v8, v17))).u8[0] & 1) != 0 ? v18.i8[0] : v18.i8[4];
            if (v19)
            {
              v13.f64[0] = v8[1].f64[0];
              ++v8;
            }

            else
            {
              v7 = v22;
            }
          }

          else
          {
            v13.f64[0] = v8->f64[0];
            v7 = v22;
          }

          v20 = v8->f64[1] < v15;
          if (v13.f64[0] != v14)
          {
            v20 = v13.f64[0] < v14;
          }
        }

        while (!v20);
        *a4 = v14;
        a4[1] = v15;
      }
    }
  }

  return result;
}

double *sub_FB9924(double *result, uint64_t a2)
{
  v2 = (a2 - result) >> 4;
  if (v2 >= 2)
  {
    do
    {
      v4 = 0;
      v6 = *result;
      v5 = *(result + 1);
      v7 = (v2 - 2) >> 1;
      v8 = result;
      do
      {
        while (1)
        {
          v16 = &v8[2 * v4];
          v15 = v16 + 2;
          v17 = (2 * v4) | 1;
          v4 = 2 * v4 + 2;
          if (v4 < v2)
          {
            break;
          }

          v4 = v17;
          *v8 = *v15;
          v8[1] = v16[3];
          v8 = v16 + 2;
          if (v17 > v7)
          {
            goto LABEL_16;
          }
        }

        v10 = v16[4];
        v9 = v16 + 4;
        v11 = v10;
        v12 = *(v9 - 2);
        v13 = *(v9 - 1) < v9[1];
        v14 = v12 < v10;
        if (v12 != v10)
        {
          v13 = v14;
        }

        if (v13)
        {
          v15 = v9;
        }

        else
        {
          v11 = *(v9 - 2);
        }

        if (!v13)
        {
          v4 = v17;
        }

        *v8 = v11;
        v8[1] = v15[1];
        v8 = v15;
      }

      while (v4 <= v7);
LABEL_16:
      if (v15 == (a2 - 16))
      {
        *v15 = v6;
        *(v15 + 1) = v5;
      }

      else
      {
        *v15 = *(a2 - 16);
        v15[1] = *(a2 - 8);
        *(a2 - 16) = v6;
        *(a2 - 8) = v5;
        v18 = (v15 - result + 16) >> 4;
        v3 = v18 < 2;
        v19 = v18 - 2;
        if (!v3)
        {
          v20 = v19 >> 1;
          v21 = &result[2 * v20];
          v22 = *v21;
          v23 = *v15;
          v24 = v15[1];
          v25 = v21[1] < v24;
          if (*v21 != *v15)
          {
            v25 = *v21 < *v15;
          }

          if (v25)
          {
            do
            {
              v26 = v15;
              v15 = v21;
              *v26 = v22;
              v26[1] = v21[1];
              if (!v20)
              {
                break;
              }

              v20 = (v20 - 1) >> 1;
              v21 = &result[2 * v20];
              v22 = *v21;
              v27 = v21[1] < v24;
              if (*v21 != v23)
              {
                v27 = *v21 < v23;
              }
            }

            while (v27);
            *v15 = v23;
            v15[1] = v24;
          }
        }
      }

      a2 -= 16;
      v3 = v2-- <= 2;
    }

    while (!v3);
  }

  return result;
}

uint64_t sub_FB9A98(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3uLL:
          v91 = *(v9 + 16);
          v92 = (v9 + 24);
          v93 = *(v9 + 24);
          v94 = *v9;
          v95 = (v9 + 8);
          v96 = *(v9 + 8);
          if (v91 == *v9)
          {
            v97 = v93 < v96;
          }

          else
          {
            v97 = v91 < *v9;
          }

          v98 = *(a2 - 16);
          v99 = *(a2 - 8) < v93;
          if (v98 != v91)
          {
            v99 = v98 < v91;
          }

          if (v97)
          {
            if (v99)
            {
              *v9 = v98;
              *(a2 - 16) = v94;
            }

            else
            {
              *v9 = v91;
              *(v9 + 16) = v94;
              *(v9 + 8) = v93;
              *(v9 + 24) = v96;
              v150 = *(a2 - 16);
              v151 = *(a2 - 8) < v96;
              if (v150 != v94)
              {
                v151 = v150 < v94;
              }

              if (!v151)
              {
                return result;
              }

              *(v9 + 16) = v150;
              *(a2 - 16) = v94;
              v95 = (v9 + 24);
            }

            v92 = (a2 - 8);
          }

          else
          {
            if (!v99)
            {
              return result;
            }

            *(v9 + 16) = v98;
            *(a2 - 16) = v91;
            v136 = *(v9 + 24);
            *(v9 + 24) = *(a2 - 8);
            *(a2 - 8) = v136;
            v137 = *(v9 + 16);
            v138 = *v9;
            v139 = *(v9 + 24) < *(v9 + 8);
            if (v137 != *v9)
            {
              v139 = v137 < *v9;
            }

            if (!v139)
            {
              return result;
            }

            *v9 = v137;
            *(v9 + 16) = v138;
          }

          v152 = *v95;
          *v95 = *v92;
          *v92 = v152;
          return result;
        case 4uLL:

          return sub_FBA594(v9, v9 + 16, v9 + 32, a2 - 16);
        case 5uLL:
          result = sub_FBA594(v9, v9 + 16, v9 + 32, v9 + 48);
          v100 = *(a2 - 16);
          v101 = *(v9 + 48);
          v102 = *(a2 - 8) < *(v9 + 56);
          if (v100 != v101)
          {
            v102 = v100 < v101;
          }

          if (v102)
          {
            *(v9 + 48) = v100;
            *(a2 - 16) = v101;
            v103 = *(v9 + 56);
            *(v9 + 56) = *(a2 - 8);
            *(a2 - 8) = v103;
            v104 = *(v9 + 48);
            v105 = *(v9 + 32);
            v106 = *(v9 + 56);
            v107 = *(v9 + 40);
            v108 = v106 < v107;
            if (v104 != v105)
            {
              v108 = v104 < v105;
            }

            if (v108)
            {
              *(v9 + 32) = v104;
              *(v9 + 48) = v105;
              *(v9 + 40) = v106;
              *(v9 + 56) = v107;
              v109 = *(v9 + 16);
              v110 = *(v9 + 24);
              v111 = v106 < v110;
              if (v104 != v109)
              {
                v111 = v104 < v109;
              }

              if (v111)
              {
                *(v9 + 16) = v104;
                *(v9 + 32) = v109;
                *(v9 + 24) = v106;
                *(v9 + 40) = v110;
                v112 = *v9;
                v113 = *(v9 + 8);
                v114 = v106 < v113;
                if (v104 != *v9)
                {
                  v114 = v104 < *v9;
                }

                if (v114)
                {
                  *v9 = v104;
                  *(v9 + 16) = v112;
                  *(v9 + 8) = v106;
                  *(v9 + 24) = v113;
                }
              }
            }
          }

          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v115 = *(a2 - 16);
        v116 = *v9;
        v117 = *(a2 - 8) < *(v9 + 8);
        if (v115 != v116)
        {
          v117 = v115 < *v9;
        }

        if (v117)
        {
          *v9 = v115;
          *(a2 - 16) = v116;
          v118 = *(v9 + 8);
          *(v9 + 8) = *(a2 - 8);
          *(a2 - 8) = v118;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v133 = (v12 - 2) >> 1;
        v134 = v133 + 1;
        v135 = v8 + 16 * v133;
        do
        {
          sub_FBAED0(v8, a3, v12, v135);
          v135 -= 16;
          --v134;
        }

        while (v134);

        return sub_FBB010(v8, a2);
      }

      return result;
    }

    v13 = v9 + 16 * (v12 >> 1);
    v14 = *(a2 - 16);
    v15 = *(a2 - 8);
    if (v12 < 0x81)
    {
      v24 = *v9;
      v25 = *v13;
      v26 = (v9 + 8);
      v27 = *(v9 + 8);
      v28 = (v13 + 8);
      v29 = *(v13 + 8);
      v30 = v27 < v29;
      if (*v9 != *v13)
      {
        v30 = *v9 < *v13;
      }

      v31 = v15 < v27;
      if (v14 != v24)
      {
        v31 = v14 < v24;
      }

      if (v30)
      {
        if (v31)
        {
          *v13 = v14;
          *(a2 - 16) = v25;
          goto LABEL_60;
        }

        *v13 = v24;
        *v9 = v25;
        *(v13 + 8) = v27;
        *(v9 + 8) = v29;
        v54 = *(a2 - 16);
        v55 = *(a2 - 8) < v29;
        if (v54 != v25)
        {
          v55 = v54 < v25;
        }

        if (v55)
        {
          *v9 = v54;
          *(a2 - 16) = v25;
          v28 = (v9 + 8);
LABEL_60:
          v26 = (a2 - 8);
LABEL_61:
          v56 = *v28;
          *v28 = *v26;
          *v26 = v56;
        }
      }

      else if (v31)
      {
        *v9 = v14;
        *(a2 - 16) = v24;
        v35 = *(v9 + 8);
        *(v9 + 8) = *(a2 - 8);
        *(a2 - 8) = v35;
        v36 = *v13;
        v37 = *(v9 + 8) < *(v13 + 8);
        if (*v9 != *v13)
        {
          v37 = *v9 < *v13;
        }

        if (v37)
        {
          *v13 = *v9;
          *v9 = v36;
          goto LABEL_61;
        }
      }

      if (a5)
      {
        goto LABEL_107;
      }

      goto LABEL_104;
    }

    v16 = *v13;
    v17 = *v9;
    v18 = (v13 + 8);
    v19 = *(v13 + 8);
    v20 = (v9 + 8);
    v21 = *(v9 + 8);
    v22 = v19 < v21;
    if (*v13 != *v9)
    {
      v22 = *v13 < *v9;
    }

    v23 = v15 < v19;
    if (v14 != v16)
    {
      v23 = v14 < v16;
    }

    if (v22)
    {
      if (v23)
      {
        *v9 = v14;
        *(a2 - 16) = v17;
LABEL_42:
        v18 = (a2 - 8);
        goto LABEL_43;
      }

      *v9 = v16;
      *v13 = v17;
      *(v9 + 8) = v19;
      *(v13 + 8) = v21;
      v38 = *(a2 - 16);
      v39 = *(a2 - 8) < v21;
      if (v38 != v17)
      {
        v39 = v38 < v17;
      }

      if (v39)
      {
        *v13 = v38;
        *(a2 - 16) = v17;
        v20 = (v13 + 8);
        goto LABEL_42;
      }
    }

    else if (v23)
    {
      *v13 = v14;
      *(a2 - 16) = v16;
      v32 = *(v13 + 8);
      *(v13 + 8) = *(a2 - 8);
      *(a2 - 8) = v32;
      v33 = *v9;
      v34 = *(v13 + 8) < *(v9 + 8);
      if (*v13 != *v9)
      {
        v34 = *v13 < *v9;
      }

      if (v34)
      {
        *v9 = *v13;
        *v13 = v33;
LABEL_43:
        v40 = *v20;
        *v20 = *v18;
        *v18 = v40;
      }
    }

    v41 = v13 - 16;
    v42 = *(v13 - 16);
    v43 = *(v9 + 16);
    v44 = (v13 - 8);
    v45 = *(v13 - 8);
    v46 = (v9 + 24);
    v47 = *(v9 + 24);
    v48 = v42 < v43;
    if (v42 == v43)
    {
      v48 = v45 < v47;
    }

    v49 = *(a2 - 32);
    v50 = *(a2 - 24) < v45;
    if (v49 != v42)
    {
      v50 = v49 < v42;
    }

    if (v48)
    {
      if (v50)
      {
        *(v9 + 16) = v49;
        *(a2 - 32) = v43;
LABEL_68:
        v44 = (a2 - 24);
        goto LABEL_69;
      }

      *(v9 + 16) = v42;
      *v41 = v43;
      *(v9 + 24) = v45;
      *(v13 - 8) = v47;
      v57 = *(a2 - 32);
      v58 = *(a2 - 24) < v47;
      if (v57 != v43)
      {
        v58 = v57 < v43;
      }

      if (v58)
      {
        *v41 = v57;
        *(a2 - 32) = v43;
        v46 = (v13 - 8);
        goto LABEL_68;
      }
    }

    else if (v50)
    {
      *v41 = v49;
      *(a2 - 32) = v42;
      v51 = *(v13 - 8);
      *(v13 - 8) = *(a2 - 24);
      *(a2 - 24) = v51;
      v52 = *(v9 + 16);
      v53 = *(v13 - 8) < *(v9 + 24);
      if (*v41 != v52)
      {
        v53 = *v41 < v52;
      }

      if (v53)
      {
        *(v9 + 16) = *v41;
        *v41 = v52;
LABEL_69:
        v59 = *v46;
        *v46 = *v44;
        *v44 = v59;
      }
    }

    v60 = v13 + 16;
    v61 = *(v13 + 16);
    v62 = *(v9 + 32);
    v64 = (v13 + 24);
    v63 = *(v13 + 24);
    v65 = (v9 + 40);
    v66 = *(v9 + 40);
    v67 = v61 < v62;
    if (v61 == v62)
    {
      v67 = v63 < v66;
    }

    v68 = *(a2 - 48);
    v69 = *(a2 - 40) < v63;
    if (v68 != v61)
    {
      v69 = v68 < v61;
    }

    if (v67)
    {
      if (v69)
      {
        *(v9 + 32) = v68;
        *(a2 - 48) = v62;
LABEL_86:
        v64 = (a2 - 40);
        goto LABEL_87;
      }

      *(v9 + 32) = v61;
      *v60 = v62;
      *(v9 + 40) = v63;
      *(v13 + 24) = v66;
      v73 = *(a2 - 48);
      v74 = *(a2 - 40) < v66;
      if (v73 != v62)
      {
        v74 = v73 < v62;
      }

      if (v74)
      {
        *v60 = v73;
        *(a2 - 48) = v62;
        v65 = (v13 + 24);
        goto LABEL_86;
      }

      v63 = v66;
      v61 = v62;
    }

    else if (v69)
    {
      *v60 = v68;
      *(a2 - 48) = v61;
      v70 = *(v13 + 24);
      *(v13 + 24) = *(a2 - 40);
      *(a2 - 40) = v70;
      v61 = *v60;
      v71 = *(v9 + 32);
      v63 = *(v13 + 24);
      v72 = v63 < *(v9 + 40);
      if (*v60 != v71)
      {
        v72 = *v60 < v71;
      }

      if (v72)
      {
        *(v9 + 32) = v61;
        *v60 = v71;
LABEL_87:
        v75 = *v65;
        *v65 = *v64;
        *v64 = v75;
        v61 = *v60;
        v63 = *(v13 + 24);
      }
    }

    v76 = *v13;
    v77 = *v41;
    v78 = *(v13 + 8);
    v79 = *(v13 - 8);
    v80 = *v13 < *v41;
    if (*v13 == *v41)
    {
      v80 = v78 < v79;
    }

    v81 = v63 < v78;
    if (v61 != v76)
    {
      v81 = v61 < v76;
    }

    if (v80)
    {
      if (!v81)
      {
        *v41 = v76;
        *v13 = v77;
        *(v13 - 8) = v78;
        *(v13 + 8) = v79;
        v82 = v61 < v77;
        if (v61 == v77)
        {
          v82 = v63 < v79;
        }

        v41 = v9 + 16 * (v12 >> 1);
        if (!v82)
        {
          v78 = v79;
          v76 = v77;
          goto LABEL_103;
        }
      }

LABEL_102:
      *v41 = v61;
      *v60 = v77;
      *(v41 + 8) = v63;
      *(v60 + 8) = v79;
      v76 = *v13;
      v78 = *(v13 + 8);
      goto LABEL_103;
    }

    if (!v81)
    {
      goto LABEL_103;
    }

    *v13 = v61;
    *v60 = v76;
    *(v13 + 8) = v63;
    *(v13 + 24) = v78;
    v83 = v61 < v77;
    if (v61 == v77)
    {
      v83 = v63 < v79;
    }

    v60 = v9 + 16 * (v12 >> 1);
    if (v83)
    {
      goto LABEL_102;
    }

    v78 = v63;
    v76 = v61;
LABEL_103:
    v84 = *v9;
    *v9 = v76;
    *v13 = v84;
    v85 = *(v9 + 8);
    *(v9 + 8) = v78;
    *(v13 + 8) = v85;
    if (a5)
    {
      goto LABEL_107;
    }

LABEL_104:
    v86 = *(v9 - 16);
    v87 = *(v9 - 8) < *(v9 + 8);
    if (v86 != *v9)
    {
      v87 = v86 < *v9;
    }

    if (!v87)
    {
      result = sub_FBA778(v9, a2);
      v9 = result;
      goto LABEL_115;
    }

LABEL_107:
    v88 = sub_FBA8C8(v9, a2);
    if ((v89 & 1) == 0)
    {
      goto LABEL_113;
    }

    v90 = sub_FBAA18(v9, v88);
    v9 = v88 + 16;
    result = sub_FBAA18(v88 + 16, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v88;
      if (v90)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v90)
    {
LABEL_113:
      result = sub_FB9A98(v8, v88, a3, -v11, a5 & 1);
      v9 = v88 + 16;
LABEL_115:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v119 = v9 + 16;
  v121 = v9 == a2 || v119 == a2;
  if (a5)
  {
    if (!v121)
    {
      v122 = 0;
      v123 = v9;
      do
      {
        v125 = *(v123 + 16);
        v126 = *v123;
        v127 = *(v123 + 24);
        v128 = *(v123 + 8);
        v123 = v119;
        v129 = v127 < v128;
        if (v125 != v126)
        {
          v129 = v125 < v126;
        }

        if (v129)
        {
          v130 = v122;
          do
          {
            v131 = v9 + v130;
            *(v131 + 16) = v126;
            *(v131 + 24) = *(v9 + v130 + 8);
            if (!v130)
            {
              v124 = v9;
              goto LABEL_156;
            }

            v126 = *(v131 - 16);
            v132 = v127 < *(v131 - 8);
            if (v125 != v126)
            {
              v132 = v125 < v126;
            }

            v130 -= 16;
          }

          while (v132);
          v124 = v9 + v130 + 16;
LABEL_156:
          *v124 = v125;
          *(v124 + 8) = v127;
        }

        v119 = v123 + 16;
        v122 += 16;
      }

      while (v123 + 16 != a2);
    }
  }

  else if (!v121)
  {
    v140 = (v9 + 24);
    do
    {
      v141 = *(v8 + 16);
      v142 = *v8;
      v143 = *(v8 + 24);
      v144 = *(v8 + 8);
      v8 = v119;
      v145 = v143 < v144;
      if (v141 != v142)
      {
        v145 = v141 < v142;
      }

      if (v145)
      {
        v146 = v140;
        do
        {
          v147 = v146;
          *(v146 - 1) = v142;
          v148 = *(v146 - 4);
          v146 -= 2;
          *v147 = v148;
          v142 = *(v147 - 5);
          v149 = v143 < *(v147 - 8);
          if (v141 != v142)
          {
            v149 = v141 < v142;
          }
        }

        while (v149);
        *(v146 - 1) = v141;
        *v146 = v143;
      }

      v119 = v8 + 16;
      v140 += 2;
    }

    while (v8 + 16 != a2);
  }

  return result;
}

uint64_t sub_FBA594(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  v7 = *result;
  v8 = (result + 8);
  if (*a2 == *result)
  {
    v9 = v6 < *(result + 8);
  }

  else
  {
    v9 = *a2 < *result;
  }

  v10 = *(a3 + 8);
  v11 = *a3;
  v12 = v10 < v6;
  if (*a3 != v4)
  {
    v12 = *a3 < v4;
  }

  if (v9)
  {
    if (v12)
    {
      *result = v11;
      *a3 = v7;
LABEL_18:
      v5 = (a3 + 8);
      goto LABEL_19;
    }

    *result = v4;
    *a2 = v7;
    v15 = *(result + 8);
    *(result + 8) = *(a2 + 8);
    *(a2 + 8) = v15;
    v16 = *a2;
    v10 = *(a3 + 8);
    v17 = v10 < v15;
    if (*a3 != *a2)
    {
      v17 = *a3 < *a2;
    }

    if (v17)
    {
      *a2 = *a3;
      *a3 = v16;
      v8 = (a2 + 8);
      goto LABEL_18;
    }
  }

  else if (v12)
  {
    *a2 = v11;
    *a3 = v4;
    v10 = *(a2 + 8);
    *(a2 + 8) = *(a3 + 8);
    *(a3 + 8) = v10;
    v13 = *result;
    v14 = *(a2 + 8) < *(result + 8);
    if (*a2 != *result)
    {
      v14 = *a2 < *result;
    }

    if (v14)
    {
      *result = *a2;
      *a2 = v13;
LABEL_19:
      v18 = *v8;
      *v8 = *v5;
      *v5 = v18;
      v10 = *(a3 + 8);
    }
  }

  v19 = *a3;
  v20 = *(a4 + 8) < v10;
  if (*a4 != *a3)
  {
    v20 = *a4 < *a3;
  }

  if (v20)
  {
    *a3 = *a4;
    *a4 = v19;
    v21 = *(a3 + 8);
    *(a3 + 8) = *(a4 + 8);
    *(a4 + 8) = v21;
    v22 = *a2;
    v23 = *(a3 + 8) < *(a2 + 8);
    if (*a3 != *a2)
    {
      v23 = *a3 < *a2;
    }

    if (v23)
    {
      *a2 = *a3;
      *a3 = v22;
      v24 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v24;
      v25 = *result;
      v26 = *(a2 + 8) < *(result + 8);
      if (*a2 != *result)
      {
        v26 = *a2 < *result;
      }

      if (v26)
      {
        *result = *a2;
        *a2 = v25;
        v27 = *(result + 8);
        *(result + 8) = *(a2 + 8);
        *(a2 + 8) = v27;
      }
    }
  }

  return result;
}

unint64_t sub_FBA778(unint64_t a1, unint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a2 - 16);
  v5 = v3 < *(a2 - 8);
  if (*a1 != v4)
  {
    v5 = *a1 < v4;
  }

  if (v5)
  {
    v6 = a1;
    do
    {
      v7 = *(v6 + 16);
      v6 += 16;
      v8 = v3 < *(v6 + 8);
      v9 = v2 < v7;
      if (v2 != v7)
      {
        v8 = v9;
      }
    }

    while (!v8);
  }

  else
  {
    v10 = a1 + 16;
    do
    {
      v6 = v10;
      if (v10 >= a2)
      {
        break;
      }

      v11 = *v10;
      v12 = v3 < *(v10 + 8);
      v13 = v2 < v11;
      if (v2 == v11)
      {
        v13 = v12;
      }

      v10 = v6 + 16;
    }

    while (!v13);
  }

  if (v6 < a2)
  {
    do
    {
      v14 = *(a2 - 16);
      a2 -= 16;
      v15 = v3 < *(a2 + 8);
      v16 = v2 < v14;
      if (v2 != v14)
      {
        v15 = v16;
      }
    }

    while (v15);
  }

  if (v6 < a2)
  {
    v17 = *v6;
    v18 = *a2;
    do
    {
      *v6 = v18;
      *a2 = v17;
      v19 = *(v6 + 8);
      *(v6 + 8) = *(a2 + 8);
      *(a2 + 8) = v19;
      do
      {
        v20 = *(v6 + 16);
        v6 += 16;
        v17 = v20;
        v21 = v3 < *(v6 + 8);
        v22 = v2 < v20;
        if (v2 != v20)
        {
          v21 = v22;
        }
      }

      while (!v21);
      do
      {
        v23 = *(a2 - 16);
        a2 -= 16;
        v18 = v23;
        v24 = v3 < *(a2 + 8);
        v25 = v2 < v23;
        if (v2 != v23)
        {
          v24 = v25;
        }
      }

      while (v24);
    }

    while (v6 < a2);
  }

  if (v6 - 16 != a1)
  {
    *a1 = *(v6 - 16);
    *(a1 + 8) = *(v6 - 8);
  }

  *(v6 - 16) = v2;
  *(v6 - 8) = v3;
  return v6;
}

unint64_t sub_FBA8C8(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  do
  {
    v5 = *(a1 + v2 + 16);
    v6 = *(a1 + v2 + 24) < v4;
    if (v5 != v3)
    {
      v6 = v5 < v3;
    }

    v2 += 16;
  }

  while (v6);
  v7 = a1 + v2;
  if (v2 == 16)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v11 = *(a2 - 16);
      a2 -= 16;
      v12 = *(a2 + 8) < v4;
      v13 = v11 < v3;
      if (v11 != v3)
      {
        v12 = v13;
      }
    }

    while (!v12);
  }

  else
  {
    do
    {
      v8 = *(a2 - 16);
      a2 -= 16;
      v9 = *(a2 + 8) < v4;
      v10 = v8 < v3;
      if (v8 != v3)
      {
        v9 = v10;
      }
    }

    while (!v9);
  }

  if (v7 >= a2)
  {
    v15 = v7;
    v24 = v7 - 16;
    if (v7 - 16 == a1)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v14 = *a2;
  v15 = v7;
  v16 = a2;
  do
  {
    *v15 = v14;
    *v16 = v5;
    v17 = *(v15 + 8);
    *(v15 + 8) = *(v16 + 8);
    *(v16 + 8) = v17;
    do
    {
      v18 = *(v15 + 16);
      v15 += 16;
      v5 = v18;
      v19 = *(v15 + 8) < v4;
      v20 = v18 < v3;
      if (v18 != v3)
      {
        v19 = v20;
      }
    }

    while (v19);
    do
    {
      v21 = *(v16 - 16);
      v16 -= 16;
      v14 = v21;
      v22 = *(v16 + 8) < v4;
      v23 = v21 < v3;
      if (v21 != v3)
      {
        v22 = v23;
      }
    }

    while (!v22);
  }

  while (v15 < v16);
  v24 = v15 - 16;
  if (v15 - 16 != a1)
  {
LABEL_25:
    *a1 = *(v15 - 16);
    *(a1 + 8) = *(v15 - 8);
  }

LABEL_26:
  *(v15 - 16) = v3;
  *(v15 - 8) = v4;
  return v24;
}

BOOL sub_FBAA18(uint64_t a1, uint64_t a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        sub_FBA594(a1, a1 + 16, a1 + 32, a2 - 16);
        return 1;
      }

      if (v2 == 5)
      {
        sub_FBA594(a1, a1 + 16, a1 + 32, a1 + 48);
        v10 = *(a2 - 16);
        v11 = *(a1 + 48);
        v12 = *(a2 - 8) < *(a1 + 56);
        if (v10 != v11)
        {
          v12 = v10 < v11;
        }

        if (v12)
        {
          *(a1 + 48) = v10;
          *(a2 - 16) = v11;
          v13 = *(a1 + 56);
          *(a1 + 56) = *(a2 - 8);
          *(a2 - 8) = v13;
          v14 = *(a1 + 48);
          v15 = *(a1 + 32);
          v16 = *(a1 + 56);
          v17 = *(a1 + 40);
          v18 = v16 < v17;
          if (v14 != v15)
          {
            v18 = v14 < v15;
          }

          if (v18)
          {
            *(a1 + 32) = v14;
            *(a1 + 48) = v15;
            *(a1 + 40) = v16;
            *(a1 + 56) = v17;
            v19 = *(a1 + 16);
            v20 = *(a1 + 24);
            v21 = v16 < v20;
            if (v14 != v19)
            {
              v21 = v14 < v19;
            }

            if (v21)
            {
              *(a1 + 16) = v14;
              *(a1 + 32) = v19;
              *(a1 + 24) = v16;
              *(a1 + 40) = v20;
              v22 = *a1;
              v23 = *(a1 + 8);
              v24 = v16 < v23;
              if (v14 != *a1)
              {
                v24 = v14 < *a1;
              }

              if (v24)
              {
                *a1 = v14;
                *(a1 + 16) = v22;
                *(a1 + 8) = v16;
                result = 1;
                *(a1 + 24) = v23;
                return result;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_32;
    }

    v25 = *(a1 + 16);
    v26 = (a1 + 24);
    v27 = *(a1 + 24);
    v28 = *a1;
    v29 = (a1 + 8);
    v30 = *(a1 + 8);
    if (v25 == *a1)
    {
      v31 = v27 < v30;
    }

    else
    {
      v31 = v25 < *a1;
    }

    v32 = *(a2 - 16);
    v33 = *(a2 - 8) < v27;
    if (v32 != v25)
    {
      v33 = v32 < v25;
    }

    if (v31)
    {
      if (v33)
      {
        *a1 = v32;
        *(a2 - 16) = v28;
      }

      else
      {
        *a1 = v25;
        *(a1 + 16) = v28;
        *(a1 + 8) = v27;
        *(a1 + 24) = v30;
        v63 = *(a2 - 16);
        v64 = *(a2 - 8) < v30;
        if (v63 != v28)
        {
          v64 = v63 < v28;
        }

        if (!v64)
        {
          return 1;
        }

        *(a1 + 16) = v63;
        *(a2 - 16) = v28;
        v29 = (a1 + 24);
      }

      v26 = (a2 - 8);
    }

    else
    {
      if (!v33)
      {
        return 1;
      }

      *(a1 + 16) = v32;
      *(a2 - 16) = v25;
      v47 = *(a1 + 24);
      *(a1 + 24) = *(a2 - 8);
      *(a2 - 8) = v47;
      v48 = *(a1 + 16);
      v49 = *a1;
      v50 = *(a1 + 24) < *(a1 + 8);
      if (v48 != *a1)
      {
        v50 = v48 < *a1;
      }

      if (!v50)
      {
        return 1;
      }

      *a1 = v48;
      *(a1 + 16) = v49;
    }

    v65 = *v29;
    *v29 = *v26;
    *v26 = v65;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 16);
    v4 = *a1;
    v5 = *(a2 - 8) < *(a1 + 8);
    if (v3 != *a1)
    {
      v5 = v3 < *a1;
    }

    if (v5)
    {
      *a1 = v3;
      *(a2 - 16) = v4;
      v6 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 8);
      *(a2 - 8) = v6;
      return 1;
    }

    return 1;
  }

LABEL_32:
  v34 = a1 + 32;
  v35 = *(a1 + 32);
  v36 = (a1 + 16);
  v37 = *(a1 + 16);
  v38 = *a1;
  v39 = (a1 + 24);
  v40 = *(a1 + 24);
  v42 = (a1 + 8);
  v41 = *(a1 + 8);
  v43 = v37 < *a1;
  v44 = *(a1 + 40);
  if (v37 == *a1)
  {
    v43 = v40 < v41;
  }

  v45 = v44 < v40;
  if (v35 != v37)
  {
    v45 = v35 < v37;
  }

  if (v43)
  {
    if (v45)
    {
      v46 = a1;
      v36 = (a1 + 32);
      v39 = (a1 + 40);
LABEL_49:
      *v46 = v35;
      *v36 = v38;
      *v42 = v44;
      *v39 = v41;
      goto LABEL_50;
    }

    *a1 = v37;
    *(a1 + 16) = v38;
    if (v35 == v38)
    {
      v66 = v44 < v41;
    }

    else
    {
      v66 = v35 < v38;
    }

    v46 = (a1 + 16);
    *(a1 + 8) = v40;
    *(a1 + 24) = v41;
    v36 = (a1 + 32);
    v42 = (a1 + 24);
    v39 = (a1 + 40);
    if (v66)
    {
      goto LABEL_49;
    }
  }

  else if (v45)
  {
    *v36 = v35;
    *v34 = v37;
    *v39 = v44;
    *(a1 + 40) = v40;
    v51 = v44 < v41;
    if (v35 != v38)
    {
      v51 = v35 < v38;
    }

    v46 = a1;
    if (v51)
    {
      goto LABEL_49;
    }
  }

LABEL_50:
  v52 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v53 = 0;
  v54 = 0;
  while (1)
  {
    v55 = *v52;
    v56 = *v34;
    v57 = *(v52 + 8);
    v58 = v57 < *(v34 + 8);
    if (*v52 != v56)
    {
      v58 = *v52 < v56;
    }

    if (v58)
    {
      break;
    }

LABEL_63:
    v34 = v52;
    v53 += 16;
    v52 += 16;
    if (v52 == a2)
    {
      return 1;
    }
  }

  v59 = v53;
  do
  {
    v60 = a1 + v59;
    *(v60 + 48) = v56;
    *(v60 + 56) = *(a1 + v59 + 40);
    if (v59 == -32)
    {
      *a1 = v55;
      *(a1 + 8) = v57;
      if (++v54 != 8)
      {
        goto LABEL_63;
      }

      return v52 + 16 == a2;
    }

    v56 = *(v60 + 16);
    v61 = v57 < *(v60 + 24);
    if (v55 != v56)
    {
      v61 = v55 < v56;
    }

    v59 -= 16;
  }

  while (v61);
  v62 = a1 + v59;
  *(v62 + 48) = v55;
  *(v62 + 56) = v57;
  if (++v54 != 8)
  {
    goto LABEL_63;
  }

  return v52 + 16 == a2;
}

uint64_t sub_FBAED0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = result + 16 * v7;
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v11 = *v8;
      }

      else
      {
        v10 = *(v8 + 16);
        v11 = *v8;
        v12 = *(v8 + 8) < *(v8 + 24);
        if (*v8 != v10)
        {
          v12 = *v8 < v10;
        }

        if (v12)
        {
          v11 = *(v8 + 16);
          v8 += 16;
          v7 = v9;
        }
      }

      v13 = *a4;
      v14 = *(a4 + 8);
      v15 = *(v8 + 8) < v14;
      if (v11 != *a4)
      {
        v15 = v11 < *a4;
      }

      if (!v15)
      {
        do
        {
          v18 = a4;
          a4 = v8;
          *v18 = v11;
          *(v18 + 8) = *(v8 + 8);
          if (v5 < v7)
          {
            break;
          }

          v19 = (2 * v7) | 1;
          v8 = result + 16 * v19;
          v7 = 2 * v7 + 2;
          if (v7 < a3)
          {
            v11 = *(v8 + 16);
            v16 = *(v8 + 8) < *(v8 + 24);
            if (*v8 != v11)
            {
              v16 = *v8 < v11;
            }

            if (v16)
            {
              v8 += 16;
            }

            else
            {
              v11 = *v8;
            }

            if (!v16)
            {
              v7 = v19;
            }
          }

          else
          {
            v11 = *v8;
            v7 = v19;
          }

          v17 = *(v8 + 8) < v14;
          if (v11 != v13)
          {
            v17 = v11 < v13;
          }
        }

        while (!v17);
        *a4 = v13;
        *(a4 + 8) = v14;
      }
    }
  }

  return result;
}

uint64_t *sub_FBB010(uint64_t *result, uint64_t a2)
{
  v2 = (a2 - result) >> 4;
  if (v2 >= 2)
  {
    do
    {
      v4 = 0;
      v5 = *result;
      v6 = *(result + 2);
      v7 = (v2 - 2) >> 1;
      v8 = result;
      do
      {
        while (1)
        {
          v16 = &v8[2 * v4];
          v15 = v16 + 2;
          v17 = (2 * v4) | 1;
          v4 = 2 * v4 + 2;
          if (v4 < v2)
          {
            break;
          }

          v4 = v17;
          *v8 = *v15;
          *(v8 + 2) = *(v16 + 6);
          v8 = v16 + 2;
          if (v17 > v7)
          {
            goto LABEL_16;
          }
        }

        v10 = *(v16 + 4);
        v9 = v16 + 4;
        v11 = v10;
        v12 = *(v9 - 2);
        v13 = *(v9 - 2) < *(v9 + 2);
        v14 = v12 < v10;
        if (v12 != v10)
        {
          v13 = v14;
        }

        if (v13)
        {
          v15 = v9;
        }

        else
        {
          v11 = *(v9 - 2);
        }

        if (!v13)
        {
          v4 = v17;
        }

        *v8 = v11;
        *(v8 + 2) = *(v15 + 2);
        v8 = v15;
      }

      while (v4 <= v7);
LABEL_16:
      if (v15 == (a2 - 16))
      {
        *v15 = v5;
        *(v15 + 2) = v6;
      }

      else
      {
        *v15 = *(a2 - 16);
        *(v15 + 2) = *(a2 - 8);
        *(a2 - 16) = v5;
        *(a2 - 8) = v6;
        v18 = (v15 - result + 16) >> 4;
        v3 = v18 < 2;
        v19 = v18 - 2;
        if (!v3)
        {
          v20 = v19 >> 1;
          v21 = &result[2 * v20];
          v22 = *v21;
          v23 = *v15;
          v24 = *(v15 + 2);
          v25 = *(v21 + 2) < v24;
          if (*v21 != *v15)
          {
            v25 = *v21 < *v15;
          }

          if (v25)
          {
            do
            {
              v26 = v15;
              v15 = v21;
              *v26 = v22;
              *(v26 + 2) = *(v21 + 2);
              if (!v20)
              {
                break;
              }

              v20 = (v20 - 1) >> 1;
              v21 = &result[2 * v20];
              v22 = *v21;
              v27 = *(v21 + 2) < v24;
              if (*v21 != v23)
              {
                v27 = *v21 < v23;
              }
            }

            while (v27);
            *v15 = v23;
            *(v15 + 2) = v24;
          }
        }
      }

      a2 -= 16;
      v3 = v2-- <= 2;
    }

    while (!v3);
  }

  return result;
}

void *sub_FBB1A4(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1[17];
  if (v3)
  {
    a1[18] = v3;
    operator delete(v3);
  }

  v4 = a1[14];
  if (v4)
  {
    a1[15] = v4;
    operator delete(v4);
  }

  v5 = a1[11];
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = a1[9];
  a1[9] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return a1;
}

void sub_FBB2F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_FBB1A4((v2 + 40));
  sub_FBB1A4(va);
  _Unwind_Resume(a1);
}

void sub_FBB314(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_FBB1A4(va);
  _Unwind_Resume(a1);
}

void sub_FBB328(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_3AF30C(a2, a4);

  sub_FBB220(a1, a2);
}

uint64_t *sub_FBB384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v56 = 0;
  v57 = 0;
  v58 = 0;
  result = nullsub_1(a2);
  v12 = *result;
  v13 = result[1];
  if (*result == v13)
  {
    v21 = 0;
    v22 = v57;
    if (a4 != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v31 = a6;
  do
  {
    if (*(a1 + 40) == 1)
    {
      sub_FBB830(a1, v12, a3, &v32);
    }

    else
    {
      sub_FBC080(a1, v12, a3, a5, &v32);
    }

    v18 = HIDWORD(v32);
    if (v32 < 0)
    {
      v19 = -5;
    }

    else
    {
      v19 = 5;
    }

    v20 = v57;
    if (v57 < v58)
    {
      v14 = v32;
      *(v57 + 8) = v33;
      *v20 = v14;
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0;
      *(v20 + 40) = 0;
      *(v20 + 16) = v34;
      *(v20 + 32) = v35;
      v34 = 0uLL;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 40) = v36;
      *(v20 + 56) = v37;
      *(v20 + 64) = 0;
      v35 = 0;
      v36 = 0uLL;
      v37 = 0;
      *(v20 + 72) = 0;
      *(v20 + 80) = 0;
      *(v20 + 64) = v38;
      v38 = 0uLL;
      *(v20 + 80) = v39;
      *(v20 + 88) = 0;
      *(v20 + 96) = 0;
      *(v20 + 104) = 0;
      *(v20 + 88) = v40;
      *(v20 + 104) = v41;
      *(v20 + 112) = 0;
      v39 = 0;
      v40 = 0uLL;
      v41 = 0;
      *(v20 + 120) = 0;
      *(v20 + 128) = 0;
      *(v20 + 112) = v42;
      v42 = 0uLL;
      *(v20 + 128) = v43;
      *(v20 + 136) = 0;
      *(v20 + 144) = 0;
      *(v20 + 152) = 0;
      *(v20 + 136) = v44;
      *(v20 + 152) = v45;
      *(v20 + 160) = 0;
      v43 = 0;
      v44 = 0uLL;
      v45 = 0;
      *(v20 + 168) = 0;
      *(v20 + 176) = 0;
      *(v20 + 160) = v46;
      v46 = 0uLL;
      *(v20 + 176) = v47;
      *(v20 + 184) = 0;
      *(v20 + 192) = 0;
      *(v20 + 200) = 0;
      *(v20 + 184) = v48;
      *(v20 + 200) = v49;
      *(v20 + 208) = 0;
      v47 = 0;
      v48 = 0uLL;
      v49 = 0;
      *(v20 + 216) = 0;
      *(v20 + 224) = 0;
      *(v20 + 208) = v50;
      v50 = 0uLL;
      *(v20 + 224) = v51;
      *(v20 + 232) = 0;
      *(v20 + 240) = 0;
      *(v20 + 248) = 0;
      *(v20 + 232) = v52;
      *(v20 + 248) = v53;
      v51 = 0;
      v52 = 0uLL;
      v53 = 0;
      v15 = v55;
      *(v20 + 256) = v54;
      *(v20 + 272) = v15;
      v16 = v20 + 288;
    }

    else
    {
      v16 = sub_FA01A4(&v56, &v32);
    }

    a5 += v18;
    v17 = 103 * (v19 + v18 % 10);
    a3 += v18 / 10 + ((v17 >> 15) & 1) + (v17 >> 10);
    v57 = v16;
    result = sub_3EE9A4(&v32);
    v12 += 552;
  }

  while (v12 != v13);
  v21 = v56;
  v22 = v57;
  a6 = v31;
  if (a4 == 1)
  {
LABEL_16:
    if (v22 != v21)
    {
      if (a5 < 0)
      {
        v23 = -5;
      }

      else
      {
        v23 = 5;
      }

      v24 = a5 / -10 + (((-103 * (v23 + a5 % 10)) >> 15) & 1) + ((-103 * (v23 + a5 % 10)) >> 10);
      v25 = v22 - v21 - 288;
      v26 = v22;
      if (v25 < 0x120)
      {
        goto LABEL_28;
      }

      v27 = v25 / 0x120 + 1;
      v26 = &v22[-72 * (v27 & 0x1FFFFFFFFFFFFFELL)];
      v28 = v22 - 144;
      v29 = v27 & 0x1FFFFFFFFFFFFFELL;
      do
      {
        v30 = v24 + *v28;
        v28[72] += v24;
        *v28 = v30;
        v28 -= 144;
        v29 -= 2;
      }

      while (v29);
      if (v27 != (v27 & 0x1FFFFFFFFFFFFFELL))
      {
LABEL_28:
        do
        {
          v26 -= 72;
          *v26 += v24;
        }

        while (v26 != v21);
      }
    }
  }

LABEL_25:
  *a6 = v21;
  a6[1] = v22;
  a6[2] = v58;
  return result;
}

void sub_FBB730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3EE9A4(va);
  sub_419F14((v3 - 112));
  _Unwind_Resume(a1);
}

char *sub_FBB760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, _DWORD *a6@<X8>)
{
  if (*(a1 + 40) == 1)
  {
    result = sub_FBB830(a1, a2, a3, a6);
    if (a4 != 1)
    {
      return result;
    }
  }

  else
  {
    result = sub_FBC080(a1, a2, a3, a5, a6);
    if (a4 != 1)
    {
      return result;
    }
  }

  v9 = a6[1];
  v10 = v9 / -10;
  v11 = v9 % 10;
  if (v9 < 0)
  {
    v12 = -5;
  }

  else
  {
    v12 = 5;
  }

  *a6 += v10 + (((-103 * (v12 + v11)) >> 15) & 1) + ((-103 * (v12 + v11)) >> 10);
  return result;
}

char *sub_FBB830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0x8000000080000000;
  *(a4 + 16) = 0u;
  v79 = (a4 + 16);
  *(a4 + 8) = 0x7FFFFFFF;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  *(a4 + 208) = 0u;
  *(a4 + 224) = 0u;
  *(a4 + 240) = 0u;
  *&v7 = 0x8000000080000000;
  *(&v7 + 1) = 0x8000000080000000;
  *(a4 + 256) = v7;
  *(a4 + 272) = v7;
  v81 = sub_F6F638(a2);
  v8 = sub_73F1C(a2);
  v9 = *(a1 + 224);
  v82 = 0u;
  v83 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  v80 = _Q0;
  v84 = _Q0;
  v85 = 0x3FF0000000000000;
  v86 = 1;
  sub_10B9770((a1 + 8), &v82, &v81, v8, v9, 0, 0);
  if (v86 == 1)
  {
    v16 = sub_F8634C(&v82, &v84, v15);
    v17 = DWORD1(v83) + HIDWORD(v16);
  }

  else
  {
    v17 = 0x7FFFFFFF;
  }

  *(a4 + 256) = v17;
  v81 = sub_F6F698(a2);
  v18 = sub_F69058(a2);
  v19 = *(a1 + 224);
  v82 = 0u;
  v83 = 0u;
  v84 = v80;
  v85 = 0x3FF0000000000000;
  v86 = 1;
  sub_10B9770((a1 + 8), &v82, &v81, v18, v19, 0, 0);
  if (v86 == 1)
  {
    v21 = sub_F8634C(&v82, &v84, v20);
    v22 = DWORD1(v83) + HIDWORD(v21);
  }

  else
  {
    v22 = 0x7FFFFFFF;
  }

  *(a4 + 260) = v22;
  if (!sub_83EB8(a2))
  {
    v31 = sub_F69D08(a2);
    if (!v31)
    {
      goto LABEL_38;
    }

    v32 = sub_F6F53C(a2, 0);
    v33 = sub_F6A040(a2);
    v34 = *(a1 + 224);
    v82 = 0u;
    v83 = 0u;
    v84 = v80;
    v85 = 0x3FF0000000000000;
    v86 = 1;
    sub_10BC914((a1 + 8), &v82, v32, v33, v34);
    if (v86 == 1)
    {
      v36 = sub_F8634C(&v82, &v84, v35);
      v37 = DWORD1(v83) + HIDWORD(v36);
      v39 = *(a4 + 24);
      v38 = *(a4 + 32);
      if (v39 >= v38)
      {
LABEL_14:
        v40 = *v79;
        v41 = v39 - *v79;
        v42 = v41 >> 2;
        v43 = (v41 >> 2) + 1;
        if (v43 >> 62)
        {
LABEL_72:
          sub_1794();
        }

        v44 = v38 - v40;
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

          goto LABEL_73;
        }

        *(4 * v42) = v37;
        v52 = 4 * v42 + 4;
        memcpy(0, v40, v41);
        *(a4 + 16) = 0;
        *(a4 + 24) = v52;
        *(a4 + 32) = 0;
        if (v40)
        {
          operator delete(v40);
        }

        goto LABEL_37;
      }
    }

    else
    {
      v37 = 0x7FFFFFFF;
      v39 = *(a4 + 24);
      v38 = *(a4 + 32);
      if (v39 >= v38)
      {
        goto LABEL_14;
      }
    }

    *v39 = v37;
    v52 = (v39 + 1);
LABEL_37:
    *(a4 + 24) = v52;
    if (v31 == 1)
    {
LABEL_38:
      v53 = sub_F6A054(a2);
      v54 = sub_F6F70C(a2);
      v55 = *(a1 + 224);
      v82 = 0u;
      v83 = 0u;
      v84 = v80;
      v85 = 0x3FF0000000000000;
      v86 = 1;
      sub_10B9C08((a1 + 8), &v82, v54, v53, v55);
      if (v86 == 1)
      {
        v57 = sub_F8634C(&v82, &v84, v56);
        v28 = DWORD1(v83) + HIDWORD(v57);
        v30 = *(a4 + 24);
        v58 = *(a4 + 32);
        if (v30 < v58)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v28 = 0x7FFFFFFF;
        v30 = *(a4 + 24);
        v58 = *(a4 + 32);
        if (v30 < v58)
        {
          goto LABEL_50;
        }
      }

      v46 = *v79;
      v47 = v30 - *v79;
      v48 = v47 >> 2;
      v59 = (v47 >> 2) + 1;
      if (v59 >> 62)
      {
        sub_1794();
      }

      v60 = v58 - v46;
      if (v60 >> 1 > v59)
      {
        v59 = v60 >> 1;
      }

      if (v60 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v51 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v51 = v59;
      }

      if (v51)
      {
        if (!(v51 >> 62))
        {
          operator new();
        }

        sub_1808();
      }

      goto LABEL_51;
    }

    v63 = 1;
    while (1)
    {
      v65 = sub_F6F53C(a2, v63);
      v66 = *(a1 + 224);
      v82 = 0u;
      v83 = 0u;
      v84 = v80;
      v85 = 0x3FF0000000000000;
      v86 = 1;
      sub_10BC914((a1 + 8), &v82, v65, 0x3B9ACA00u, v66);
      if (v86 == 1)
      {
        v68 = sub_F8634C(&v82, &v84, v67);
        v69 = DWORD1(v83) + HIDWORD(v68);
        v71 = *(a4 + 24);
        v70 = *(a4 + 32);
        if (v71 < v70)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v69 = 0x7FFFFFFF;
        v71 = *(a4 + 24);
        v70 = *(a4 + 32);
        if (v71 < v70)
        {
LABEL_55:
          *v71 = v69;
          v64 = (v71 + 1);
          goto LABEL_56;
        }
      }

      v72 = *v79;
      v73 = v71 - *v79;
      v74 = v73 >> 2;
      v75 = (v73 >> 2) + 1;
      if (v75 >> 62)
      {
        goto LABEL_72;
      }

      v76 = v70 - v72;
      if (v76 >> 1 > v75)
      {
        v75 = v76 >> 1;
      }

      if (v76 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v77 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v77 = v75;
      }

      if (v77)
      {
        if (!(v77 >> 62))
        {
          operator new();
        }

LABEL_73:
        sub_1808();
      }

      *(4 * v74) = v69;
      v64 = 4 * v74 + 4;
      memcpy(0, v72, v73);
      *(a4 + 16) = 0;
      *(a4 + 24) = v64;
      *(a4 + 32) = 0;
      if (v72)
      {
        operator delete(v72);
      }

LABEL_56:
      *(a4 + 24) = v64;
      if (v31 == ++v63)
      {
        goto LABEL_38;
      }
    }
  }

  v23 = sub_F6A030(a2);
  v24 = sub_F6F6F4(a2);
  v25 = *(a1 + 224);
  v82 = 0u;
  v83 = 0u;
  v84 = v80;
  v85 = 0x3FF0000000000000;
  v86 = 1;
  sub_10B9C08((a1 + 8), &v82, v24, v23, v25);
  if (v86 == 1)
  {
    v27 = sub_F8634C(&v82, &v84, v26);
    v28 = DWORD1(v83) + HIDWORD(v27);
    v30 = *(a4 + 24);
    v29 = *(a4 + 32);
    if (v30 >= v29)
    {
      goto LABEL_24;
    }

LABEL_50:
    *v30 = v28;
    v61 = (v30 + 1);
    goto LABEL_53;
  }

  v28 = 0x7FFFFFFF;
  v30 = *(a4 + 24);
  v29 = *(a4 + 32);
  if (v30 < v29)
  {
    goto LABEL_50;
  }

LABEL_24:
  v46 = *v79;
  v47 = v30 - *v79;
  v48 = v47 >> 2;
  v49 = (v47 >> 2) + 1;
  if (v49 >> 62)
  {
    sub_1794();
  }

  v50 = v29 - v46;
  if (v50 >> 1 > v49)
  {
    v49 = v50 >> 1;
  }

  if (v50 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v51 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v51 = v49;
  }

  if (v51)
  {
    if (!(v51 >> 62))
    {
      operator new();
    }

    sub_1808();
  }

LABEL_51:
  *(4 * v48) = v28;
  v61 = 4 * v48 + 4;
  memcpy(0, v46, v47);
  *(a4 + 16) = 0;
  *(a4 + 24) = v61;
  *(a4 + 32) = 4 * v51;
  if (v46)
  {
    operator delete(v46);
  }

LABEL_53:
  *(a4 + 24) = v61;
  return sub_FBC604(a1, a4, a3);
}

char *sub_FBC080@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = 0x8000000080000000;
  *(a5 + 16) = 0u;
  v55 = (a5 + 16);
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
  *&v8 = 0x8000000080000000;
  *(&v8 + 1) = 0x8000000080000000;
  *(a5 + 256) = v8;
  *(a5 + 272) = v8;
  v57 = sub_F6F638(a2);
  v9 = sub_73F1C(a2);
  *(a5 + 256) = sub_FBC780(a1, &v57, v9);
  v57 = sub_F6F698(a2);
  v10 = sub_F69058(a2);
  *(a5 + 260) = sub_FBC780(a1, &v57, v10);
  v56 = a1;
  if (sub_83EB8(a2))
  {
    v11 = sub_F6A030(a2);
    v12 = sub_F6F6F4(a2);
    v13 = sub_FBC97C(a1, v12, v11);
    v15 = *(a5 + 24);
    v14 = *(a5 + 32);
    if (v15 >= v14)
    {
      v23 = *v55;
      v24 = v15 - *v55;
      v25 = v24 >> 2;
      v26 = (v24 >> 2) + 1;
      if (v26 >> 62)
      {
        sub_1794();
      }

      v27 = v14 - v23;
      if (v27 >> 1 > v26)
      {
        v26 = v27 >> 1;
      }

      if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v28 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        if (!(v28 >> 62))
        {
          operator new();
        }

        sub_1808();
      }

      *(4 * v25) = v13;
      v16 = 4 * v25 + 4;
      memcpy(0, v23, v24);
      *(a5 + 16) = 0;
      *(a5 + 24) = v16;
      *(a5 + 32) = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v15 = v13;
      v16 = (v15 + 4);
    }

    a1 = v56;
    *(a5 + 24) = v16;
  }

  else
  {
    v17 = sub_F6A040(a2);
    v18 = sub_F6F6F4(a2);
    v19 = sub_FBC97C(a1, v18, v17);
    v21 = *(a5 + 24);
    v20 = *(a5 + 32);
    if (v21 >= v20)
    {
      v29 = *v55;
      v30 = v21 - *v55;
      v31 = v30 >> 2;
      v32 = (v30 >> 2) + 1;
      if (v32 >> 62)
      {
        sub_1794();
      }

      v33 = v20 - v29;
      if (v33 >> 1 > v32)
      {
        v32 = v33 >> 1;
      }

      if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v34 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      if (v34)
      {
        if (!(v34 >> 62))
        {
          operator new();
        }

        sub_1808();
      }

      *(4 * v31) = v19;
      v22 = 4 * v31 + 4;
      memcpy(0, v29, v30);
      *(a5 + 16) = 0;
      *(a5 + 24) = v22;
      *(a5 + 32) = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      *v21 = v19;
      v22 = (v21 + 4);
    }

    *(a5 + 24) = v22;
    v35 = sub_F69D08(a2);
    if (v35)
    {
      v36 = 0;
      do
      {
        while (1)
        {
          v37 = sub_F6F53C(a2, v36++);
          v38 = v36 == sub_F69D08(a2) ? sub_F6A054(a2) : 1000000000;
          v39 = sub_FBC97C(a1, v37 + 5, v38);
          v40 = sub_FBCECC(a1, v37);
          v41 = v40 == 0x7FFFFFFF || v39 == 0x7FFFFFFF;
          v42 = v41 ? 0x7FFFFFFF : v40 + v39;
          v44 = *(a5 + 24);
          v43 = *(a5 + 32);
          if (v44 >= v43)
          {
            break;
          }

          *v44 = v42;
          *(a5 + 24) = v44 + 1;
          if (v35 == v36)
          {
            goto LABEL_54;
          }
        }

        v45 = *v55;
        v46 = v44 - *v55;
        v47 = v46 >> 2;
        v48 = (v46 >> 2) + 1;
        if (v48 >> 62)
        {
          sub_1794();
        }

        v49 = v43 - v45;
        if (v49 >> 1 > v48)
        {
          v48 = v49 >> 1;
        }

        if (v49 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v50 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v48;
        }

        if (v50)
        {
          if (!(v50 >> 62))
          {
            operator new();
          }

          sub_1808();
        }

        *(4 * v47) = v42;
        v51 = 4 * v47 + 4;
        memcpy(0, v45, v46);
        *(a5 + 16) = 0;
        *(a5 + 24) = v51;
        *(a5 + 32) = 0;
        if (v45)
        {
          operator delete(v45);
        }

        a1 = v56;
        *(a5 + 24) = v51;
      }

      while (v35 != v36);
    }
  }

LABEL_54:
  sub_FBCDE8(a1, a5, a2, a4);
  return sub_FBC604(a1, a5, a3);
}

char *sub_FBC604(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 256);
  *(a2 + 4) = v6;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (v7 == v8)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v9 = v8 - v7 - 4;
  if (v9 < 0x1C)
  {
    v10 = 0;
    v11 = v7;
    do
    {
LABEL_8:
      v17 = *v11;
      v11 += 4;
      v10 += v17;
    }

    while (v11 != v8);
    goto LABEL_9;
  }

  v12 = (v9 >> 2) + 1;
  v11 = &v7[4 * (v12 & 0x7FFFFFFFFFFFFFF8)];
  v13 = (v7 + 16);
  v14 = 0uLL;
  v15 = v12 & 0x7FFFFFFFFFFFFFF8;
  v16 = 0uLL;
  do
  {
    v14 = vaddq_s32(v13[-1], v14);
    v16 = vaddq_s32(*v13, v16);
    v13 += 2;
    v15 -= 8;
  }

  while (v15);
  v10 = vaddvq_s32(vaddq_s32(v16, v14));
  if (v12 != (v12 & 0x7FFFFFFFFFFFFFF8))
  {
    goto LABEL_8;
  }

LABEL_9:
  v18 = *(a2 + 260) + v10 + v6;
  *(a2 + 4) = v18;
  *(a2 + 264) = v18;
  sub_146EC((a2 + 40), v7, v8, (v8 - v7) >> 2);
  *(a2 + 268) = *(a2 + 4);
  result = sub_146EC((a2 + 64), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 2);
  v20 = *(a2 + 4);
  *(a2 + 272) = v20;
  *(a2 + 280) = v20;
  v21 = *(a1 + 48) * v20;
  if (v21 >= 0.0)
  {
    if (v21 < 4.50359963e15)
    {
      v22 = (v21 + v21) + 1;
      goto LABEL_14;
    }
  }

  else if (v21 > -4.50359963e15)
  {
    v22 = (v21 + v21) - 1 + (((v21 + v21) - 1) >> 63);
LABEL_14:
    v21 = (v22 >> 1);
  }

  *(a2 + 276) = v21;
  *a2 = a3;
  return result;
}

uint64_t sub_FBC780(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = v4 / 10.0 / (*(a1 + 56) / 3.6);
  if (v5 >= 0.0)
  {
    if (v5 < 4.50359963e15)
    {
      v6 = (v5 + v5) + 1;
      goto LABEL_6;
    }
  }

  else if (v5 > -4.50359963e15)
  {
    v6 = (v5 + v5) - 1 + (((v5 + v5) - 1) >> 63);
LABEL_6:
    v5 = (v6 >> 1);
  }

  result = v5;
  if (*(a3 + 32) == 1 && v4 > *(a1 + 96))
  {
    v8 = v5;
    v9 = *a1;
    v10 = *a2;
    v11 = v10 | (*(a2 + 2) << 32);
    v12 = sub_2B51D8(*a1, v11);
    if (*(v9 + 7772) == 1)
    {
      sub_30C50C(v9 + 3896, v10, 0);
    }

    sub_31D7E8(v9, v11, 1);
    v13 = *(a1 + 104);
    v14 = v13 * sub_314800(v12);
    if (v14 >= 0.0)
    {
      v15 = v8;
      if (v14 >= 4.50359963e15)
      {
        goto LABEL_17;
      }

      v16 = (v14 + v14) + 1;
    }

    else
    {
      v15 = v8;
      if (v14 <= -4.50359963e15)
      {
        goto LABEL_17;
      }

      v16 = (v14 + v14) - 1 + (((v14 + v14) - 1) >> 63);
    }

    v14 = (v16 >> 1);
LABEL_17:
    v17 = v14 / 10.0 / (*(a1 + 56) / 3.6);
    if (v17 >= 0.0)
    {
      if (v17 < 4.50359963e15)
      {
        v18 = (v17 + v17) + 1;
        goto LABEL_22;
      }
    }

    else if (v17 > -4.50359963e15)
    {
      v18 = (v17 + v17) - 1 + (((v17 + v17) - 1) >> 63);
LABEL_22:
      v17 = (v18 >> 1);
    }

    return (v17 + v15);
  }

  return result;
}

uint64_t sub_FBC97C(uint64_t a1, int **a2, unsigned int a3)
{
  v6 = *a2;
  v7 = **a2;
  v8 = (*a2 - v7);
  v9 = *v8;
  if (v9 >= 0x2F && v8[23])
  {
    v10 = *(v6 + v8[23]);
    v11 = *(a1 + 120);
    v12 = 1.0;
    v13 = 1.0;
    if (!v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v10 = 32;
    v11 = *(a1 + 120);
    v12 = 1.0;
    v13 = 1.0;
    if (!v11)
    {
      goto LABEL_30;
    }
  }

  v14 = vcnt_s8(v11);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = v10;
    if (v11 <= v10)
    {
      v15 = v10 % v11;
    }
  }

  else
  {
    v15 = (v11 - 1) & v10;
  }

  v16 = *(a1 + 112);
  v17 = *(v16 + 8 * v15);
  if (!v17 || (v18 = *v17) == 0)
  {
LABEL_30:
    if (v9 < 0x9B)
    {
      goto LABEL_46;
    }

    goto LABEL_31;
  }

  v19 = v11 - 1;
  if (v14.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v18[1];
      if (v20 == v10)
      {
        if (*(v18 + 16) == v10)
        {
          goto LABEL_27;
        }
      }

      else if ((v20 & v19) != v15)
      {
        goto LABEL_25;
      }

      v18 = *v18;
      if (!v18)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v21 = v18[1];
    if (v21 != v10)
    {
      if (v21 >= v11)
      {
        v21 %= v11;
      }

      if (v21 != v15)
      {
LABEL_25:
        v13 = 1.0;
        if (v9 >= 0x9B)
        {
          goto LABEL_31;
        }

LABEL_46:
        v13 = v13 * v12 * sub_FBD080(a2, (a1 + 152), v12);
        v6 = *a2;
        v7 = **a2;
        goto LABEL_47;
      }

      goto LABEL_20;
    }

    if (*(v18 + 16) == v10)
    {
      break;
    }

LABEL_20:
    v18 = *v18;
    if (!v18)
    {
      v13 = 1.0;
      goto LABEL_30;
    }
  }

LABEL_27:
  if (v14.u32[0] > 1uLL)
  {
    v22 = v10;
    if (v11 <= v10)
    {
      v22 = v10 % v11;
    }
  }

  else
  {
    v22 = (v11 - 1) & v10;
  }

  v25 = *(v16 + 8 * v22);
  if (!v25 || (v26 = *v25) == 0)
  {
LABEL_92:
    sub_49EC("unordered_map::at: key not found");
  }

  if (v14.u32[0] < 2uLL)
  {
    while (1)
    {
      v27 = *(v26 + 1);
      if (v27 == v10)
      {
        if (*(v26 + 16) == v10)
        {
          goto LABEL_45;
        }
      }

      else if ((v27 & v19) != v22)
      {
        goto LABEL_92;
      }

      v26 = *v26;
      if (!v26)
      {
        goto LABEL_92;
      }
    }
  }

  while (2)
  {
    v37 = *(v26 + 1);
    if (v37 != v10)
    {
      if (v37 >= v11)
      {
        v37 %= v11;
      }

      if (v37 != v22)
      {
        goto LABEL_92;
      }

      goto LABEL_59;
    }

    if (*(v26 + 16) != v10)
    {
LABEL_59:
      v26 = *v26;
      if (!v26)
      {
        goto LABEL_92;
      }

      continue;
    }

    break;
  }

LABEL_45:
  v13 = v26[3];
  if (v9 < 0x9B)
  {
    goto LABEL_46;
  }

LABEL_31:
  v23 = v8[77];
  if (!v23)
  {
    goto LABEL_46;
  }

  v24 = *(v6 + v23);
  if ((v24 & 8) == 0)
  {
    if ((v24 & 0x200000) != 0)
    {
      v12 = *(a1 + 80);
    }

    goto LABEL_46;
  }

LABEL_47:
  v28 = (v6 - v7);
  if (*v28 < 0x9Bu || (v29 = v28[77]) == 0 || (*(v6 + v29) & 8) == 0)
  {
    v30 = 56;
    goto LABEL_51;
  }

  v41 = *(a1 + 232);
  v42 = ((*(a2 + 9) & 0x20000000) << 19) | (*(a2 + 9) << 32) | *(a2 + 8);
  v43 = sub_36383C(v41, v42 ^ 0x1000000000000);
  if (v43)
  {
    v44 = &v43[-*v43];
    v31 = -1.0;
    if (*v44 >= 9u)
    {
      v45 = *(v44 + 4);
      if (v45)
      {
        v46 = *&v43[v45];
        if ((v46 - 1) <= 0xFFFDu)
        {
          v31 = v46 / 100.0;
        }
      }
    }
  }

  else
  {
    v31 = sub_363970(v41, v42 ^ 0x1000000000000);
  }

  if ((*&v31 <= -1 || ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v31 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v31 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v30 = 64;
LABEL_51:
    v31 = *(a1 + v30);
  }

  v32 = (*a2 - **a2);
  v33 = 0.0;
  if (*v32 >= 9u)
  {
    v34 = v32[4];
    if (v34)
    {
      LODWORD(v33) = *(*a2 + v34);
      v33 = *&v33;
    }
  }

  v35 = a3 / 1000000000.0 * v13 * v33;
  if (v35 >= 0.0)
  {
    if (v35 < 4.50359963e15)
    {
      v36 = (v35 + v35) + 1;
LABEL_67:
      v35 = (v36 >> 1);
    }
  }

  else if (v35 > -4.50359963e15)
  {
    v36 = (v35 + v35) - 1 + (((v35 + v35) - 1) >> 63);
    goto LABEL_67;
  }

  v38 = v35 / 10.0 / (v31 / 3.6);
  if (v38 >= 0.0)
  {
    if (v38 < 4.50359963e15)
    {
      v39 = (v38 + v38) + 1;
LABEL_73:
      v38 = (v39 >> 1);
    }
  }

  else if (v38 > -4.50359963e15)
  {
    v39 = (v38 + v38) - 1 + (((v38 + v38) - 1) >> 63);
    goto LABEL_73;
  }

  return v38;
}

uint64_t sub_FBCDE8(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = sub_FBD46C(a1, *(a2 + 256), a4);
  *(a2 + 256) = v8;
  v9 = v8 + a4;
  v10 = *(a2 + 24) - *(a2 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v10 >> 2;
    do
    {
      v15 = sub_F6FE3C(a3, v11);
      v16 = (*v15 - **v15);
      if (*v16 < 0x9Bu || (v17 = v16[77]) == 0 || (*(*v15 + v17) & 8) == 0)
      {
        v13 = *(a2 + 16);
        v14 = sub_FBD46C(a1, *(v13 + 4 * v11), v9);
        *(v13 + 4 * v11) = v14;
        v9 += v14;
      }

      ++v11;
    }

    while (v12 != v11);
  }

  result = sub_FBD46C(a1, *(a2 + 260), v9);
  *(a2 + 260) = result;
  return result;
}

uint64_t sub_FBCECC(uint64_t a1, int **a2)
{
  v2 = a2[10];
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  if (((v2 >> 38) & 0x1FF) == 0x1FF)
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 50 * ((v2 >> 38) & 0x1FF);
  }

  v5 = 50 * ((v2 >> 47) & 0x1FF);
  if (((v2 >> 47) & 0x1FF) == 0x1FF)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((~*(a2 + 20) & 0x1FLL) != 0)
  {
    if (((v2 >> 19) & 0x1FF) == 0x1FF)
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = 50 * ((v2 >> 19) & 0x1FF);
    }

    if (((v2 >> 10) & 0x1FF) != 0x1FF)
    {
      v3 = 50 * ((v2 >> 10) & 0x1FF);
    }

    v6 = v3 + v7;
    if ((~v2 & 0x1F0000000) != 0 && v4 + v5 < v6)
    {
      v6 = v4 + v5;
    }
  }

  else
  {
    v6 = v4 + v5;
  }

  v8 = *(a1 + 88) * v6;
  if (v8 >= 0.0)
  {
    if (v8 >= 4.50359963e15)
    {
      goto LABEL_22;
    }

    v9 = (v8 + v8) + 1;
  }

  else
  {
    if (v8 <= -4.50359963e15)
    {
      goto LABEL_22;
    }

    v9 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
  }

  v8 = (v9 >> 1);
LABEL_22:
  v10 = v8 / 10.0 / (*(a1 + 56) / 3.6);
  if (v10 >= 0.0)
  {
    if (v10 < 4.50359963e15)
    {
      v11 = (v10 + v10) + 1;
      goto LABEL_27;
    }
  }

  else if (v10 > -4.50359963e15)
  {
    v11 = (v10 + v10) - 1 + (((v10 + v10) - 1) >> 63);
LABEL_27:
    v10 = (v11 >> 1);
  }

  v12 = v10;
  v13 = (*a2 - **a2);
  if (*v13 < 0x9Bu || (v14 = v13[77]) == 0 || (*(*a2 + v14) & 8) == 0)
  {
    v15 = a2[5];
    v16 = (v15 - *v15);
    if (*v16 >= 0x9Bu)
    {
      v17 = v16[77];
      if (v17)
      {
        if ((*(v15 + v17) & 8) != 0)
        {
          return (*(a1 + 72) + v12);
        }
      }
    }
  }

  return v12;
}

double sub_FBD080(int **a1, double **a2, double a3)
{
  v3 = *a1;
  v4 = (*a1 - **a1);
  v5 = *v4;
  if ((*(a1 + 39) & 0x20) != 0)
  {
    v6 = 0.0;
    if (v5 >= 0x57)
    {
      if (v4[43])
      {
        v14 = (v3 + v4[43]);
        v15 = (v14 + *v14);
        v16 = (v15 - *v15);
        v10 = 0.0;
        if (*v16 >= 5u)
        {
          v17 = v16[2];
          if (v17)
          {
            LOWORD(v6) = *(v15 + v17);
            v6 = (*&v6 + *&v6) / 65535.0;
          }
        }

        v3 = (v14 + *v14);
        v18 = (v3 - *v3);
        if (*v18 >= 7u)
        {
          v13 = v18[3];
          if (v13)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        v10 = 0.0;
        if (v5 >= 0x7B)
        {
          if (v4[61])
          {
            LOWORD(v6) = *(v3 + v4[61]);
            v6 = (*&v6 + *&v6) / 65535.0;
          }

          if (v5 >= 0x7D)
          {
            v13 = v4[62];
            if (v13)
            {
              goto LABEL_30;
            }
          }
        }
      }

      goto LABEL_31;
    }

LABEL_18:
    v10 = 0.0;
    goto LABEL_31;
  }

  v6 = 0.0;
  if (v5 < 0x57)
  {
    goto LABEL_18;
  }

  if (v4[43])
  {
    v7 = (v3 + v4[43]);
    v8 = (v7 + *v7);
    v9 = (v8 - *v8);
    v10 = 0.0;
    if (*v9 >= 7u)
    {
      v11 = v9[3];
      if (v11)
      {
        LOWORD(v6) = *(v8 + v11);
        v6 = (*&v6 + *&v6) / 65535.0;
      }
    }

    v3 = (v7 + *v7);
    v12 = (v3 - *v3);
    if (*v12 < 5u)
    {
      goto LABEL_31;
    }

    v13 = v12[2];
    if (!v13)
    {
      goto LABEL_31;
    }

LABEL_30:
    LOWORD(v10) = *(v3 + v13);
    v10 = *&v10 + *&v10;
    goto LABEL_31;
  }

  if (v5 < 0x7D)
  {
    v10 = 0.0;
    if (v5 < 0x7B)
    {
      goto LABEL_31;
    }
  }

  else if (v4[62])
  {
    LOWORD(a3) = *(v3 + v4[62]);
    v6 = (*&a3 + *&a3) / 65535.0;
  }

  v13 = v4[61];
  v10 = 0.0;
  if (v13)
  {
    goto LABEL_30;
  }

LABEL_31:
  v19 = v10 / 65535.0;
  v20 = v6 + v10 / 65535.0;
  result = 1.0;
  if (v20 == 0.0)
  {
    return result;
  }

  v22 = *a2;
  v23 = **a2;
  if (v20 <= v23)
  {
    v41 = v22[1];
    v42 = -v20;
    if (v23 >= -v20)
    {
      return (v6 * v41 + v19 * v22[1]) / v20;
    }

    goto LABEL_46;
  }

  v24 = a2[1];
  v25 = (v24 - v22) >> 4;
  if (v25 < 1)
  {
    v39 = *a2;
    if (v24 != v22)
    {
      goto LABEL_42;
    }

LABEL_58:
    v41 = *(v24 - 1);
    v42 = -v20;
    if (v23 >= -v20)
    {
      return (v6 * v41 + v19 * v22[1]) / v20;
    }

    goto LABEL_46;
  }

  v26 = **a2;
  v27 = *a2;
  if (v24 - v22 != 16)
  {
    v27 = *a2;
    do
    {
      v28 = (4 * v25) & 0xFFFFFFFFFFFFFFF0;
      _X14 = v27 + v28;
      __asm { PRFM            #0, [X14] }

      v35 = &v27[2 * (v25 >> 1)];
      _X13 = v35 + v28;
      __asm { PRFM            #0, [X13] }

      if (*v35 >= v20)
      {
        v38 = 0;
      }

      else
      {
        v38 = v25 >> 1;
      }

      v27 += 2 * v38;
      v25 -= v25 >> 1;
    }

    while (v25 > 1);
    v26 = *v27;
  }

  v39 = &v27[2 * (v26 < v20)];
  if (v24 == v39)
  {
    goto LABEL_58;
  }

LABEL_42:
  v40 = *(v39 - 2);
  if (v40 == *v39)
  {
    v41 = v39[1];
    v42 = -v20;
    if (v23 >= -v20)
    {
      return (v6 * v41 + v19 * v22[1]) / v20;
    }
  }

  else
  {
    v41 = *(v39 - 1) + (v20 - v40) / (*v39 - v40) * (v39[1] - *(v39 - 1));
    v42 = -v20;
    if (v23 >= -v20)
    {
      return (v6 * v41 + v19 * v22[1]) / v20;
    }
  }

LABEL_46:
  v43 = a2[1];
  v44 = (v43 - v22) >> 4;
  if (v44 >= 1)
  {
    if (v43 - v22 != 16)
    {
      do
      {
        v45 = (4 * v44) & 0xFFFFFFFFFFFFFFF0;
        _X13 = v22 + v45;
        __asm { PRFM            #0, [X13] }

        v48 = &v22[2 * (v44 >> 1)];
        _X12 = v48 + v45;
        __asm { PRFM            #0, [X12] }

        if (*v48 >= v42)
        {
          v51 = 0;
        }

        else
        {
          v51 = v44 >> 1;
        }

        v22 += 2 * v51;
        v44 -= v44 >> 1;
      }

      while (v44 > 1);
      v23 = *v22;
    }

    v22 += 2 * (v23 < v42);
  }

  if (v43 == v22)
  {
    return (v6 * v41 + v19 * *(v43 - 1)) / v20;
  }

  v52 = *(v22 - 2);
  if (v52 == *v22)
  {
    return (v6 * v41 + v19 * v22[1]) / v20;
  }

  else
  {
    return (v6 * v41 + v19 * (*(v22 - 1) + (v42 - v52) / (*v22 - v52) * (v22[1] - *(v22 - 1)))) / v20;
  }
}