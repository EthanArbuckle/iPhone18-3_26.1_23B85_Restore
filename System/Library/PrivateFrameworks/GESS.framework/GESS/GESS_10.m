void sub_24BD64CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, char a40, uint64_t a41, char a42, uint64_t a43, char a44, uint64_t a45, char a46)
{
  for (i = 32; i != -16; i -= 16)
  {
    sub_24BE7F218(v46 + i);
  }

  sub_24BE7F218(&a15);
  sub_24BE7F218(&a17);
  sub_24BE7F218(&a19);
  sub_24BE7F218(&a21);
  *(v47 - 144) = &a24;
  sub_24BCC961C((v47 - 144));
  sub_24BE7F218(&a27);
  sub_24BE7F218(&a29);
  sub_24BE7F218(&a31);
  sub_24BE7F218(&a33);
  *(v47 - 144) = &a35;
  sub_24BCC961C((v47 - 144));
  sub_24BE7F218(&a38);
  sub_24BE7F218(&a40);
  sub_24BE7F218(&a42);
  sub_24BE7F218(&a44);
  *(v47 - 144) = &a46;
  sub_24BCC961C((v47 - 144));
  sub_24BE7F218(v47 - 256);
  sub_24BE7F218(v47 - 240);
  sub_24BCC96F4(v47 - 224);
  sub_24BE7F218(v47 - 160);
  sub_24BE7F218(v47 - 176);
  _Unwind_Resume(a1);
}

void sub_24BD64E14(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v26 = *MEMORY[0x277D85DE8];
  v24[0] = &unk_285F95D90;
  v24[1] = a15;
  v24[3] = v24;
  v23[0] = &unk_285F95DD8;
  v23[1] = a15;
  v23[3] = v23;
  sub_24BE4A50C(v25, v24, v23);
  sub_24BCC9738(v23);
  sub_24BCC9738(v24);
  std::chrono::system_clock::now();
  v21 = 1;
  sub_24BE80BBC(&v21);
  v18 = sub_24BF55DE0();
  sub_24BD12090(v20, v18);
  LODWORD(v21) = a4 + 1 + (a4 + 1) * a5 + (a4 + 1 + (a4 + 1) * a5) * a6;
  HIDWORD(v21) = 1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v21, v22, 2uLL);
  sub_24BCCA338();
}

void sub_24BD65708(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, char a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    a69 = &a71;
    sub_24BCC961C(&a69);
    sub_24BD59904(&STACK[0x210]);
    sub_24BE7F218(&a25);
    sub_24BE7F218(&a39);
    sub_24BE7F218(&a41);
    sub_24BE7F218(v71 + 16);
    sub_24BE7F218(&a43);
    sub_24BE7F218(&a51);
    sub_24BE4A5A0(&STACK[0x2D8]);
    sub_24BE7F218(&a56);
    sub_24BE7F218(&a61);
    sub_24BE7F218(&a66);
    sub_24BE4A5A0(v72 - 160);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BD6567CLL);
  }

  _Unwind_Resume(a1);
}

void sub_24BD657D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x24BD657D0);
  }

  JUMPOUT(0x24BD65758);
}

void sub_24BD657E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x24BD657D0);
  }

  JUMPOUT(0x24BD65760);
}

void sub_24BD657F0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a22)
    {
      operator delete(a22);
    }

    JUMPOUT(0x24BD65768);
  }

  JUMPOUT(0x24BD657D0);
}

void sub_24BD659C0(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x24BD659C8);
  }

  JUMPOUT(0x24BD657D0);
}

void sub_24BD659DC(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x24BD659E4);
  }

  JUMPOUT(0x24BD657D0);
}

void sub_24BD659F8(uint64_t **a1, const void ***a2)
{
  *&v9[20] = *MEMORY[0x277D85DE8];
  v8 = -1;
  memset(v6, 0, sizeof(v6));
  sub_24BCC9910(v6, &v8, v9, 1uLL);
  sub_24BEA4500(a2, v6, v4, 0, &v7);
  sub_24BEBD374(a1, &v7, 0, v5, 0);
}

void sub_24BD6609C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46)
{
  sub_24BE7F218(&a22);
  sub_24BE7F218(v46 - 144);
  sub_24BE7F218(v46 - 128);
  sub_24BE7F218(v46 - 112);
  sub_24BE7F218(v46 - 96);
  sub_24BE7F218(v46 - 80);
  sub_24BE7F218(v46 - 176);
  sub_24BE7F218(v46 - 160);
  _Unwind_Resume(a1);
}

void sub_24BD6638C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

int *sub_24BD663A0(int *result, int *a2, uint64_t **a3, unint64_t a4, int *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = *(a2 - 1);
      v10 = *result;
      if (*(**a3 + 4 * v9) < *(**a3 + 4 * v10))
      {
        *result = v9;
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v21 = a5;
      v22 = a4 >> 1;
      v23 = &result[a4 >> 1];
      v24 = a4 >> 1;
      if (a4 <= a6)
      {
        sub_24BD665F0(result, v23, a3, v24, a5);
        v25 = &v21[v22];
        result = sub_24BD665F0(&v8[4 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v25);
        v26 = &v21[a4];
        v27 = *a3;
        v28 = v25;
        while (v28 != v26)
        {
          v29 = *v28;
          v30 = *(*v27 + 4 * v29);
          v31 = *(*v27 + 4 * *v21);
          v32 = v30 < v31;
          v33 = v30 >= v31;
          v34 = v32;
          if (!v32)
          {
            LODWORD(v29) = *v21;
          }

          v21 += v33;
          v28 += v34;
          *v8 = v29;
          v8 += 4;
          if (v21 == v25)
          {
            while (v28 != v26)
            {
              v36 = *v28++;
              *v8 = v36;
              v8 += 4;
            }

            return result;
          }
        }

        while (v21 != v25)
        {
          v35 = *v21++;
          *v8 = v35;
          v8 += 4;
        }
      }

      else
      {
        sub_24BD663A0(result, v23, a3, v24, a5, a6);
        sub_24BD663A0(&v8[4 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v21, a6);

        return sub_24BD667E8(v8, &v8[4 * (a4 >> 1)], a2, a3, a4 >> 1, a4 - (a4 >> 1), v21, a6);
      }
    }

    else if (result != a2)
    {
      v12 = result + 1;
      if (result + 1 != a2)
      {
        v13 = 0;
        v14 = **a3;
        v15 = result;
        do
        {
          v16 = *v15;
          v15 = v12;
          v17 = *v12;
          if (*(v14 + 4 * v17) < *(v14 + 4 * v16))
          {
            v18 = v13;
            while (1)
            {
              *(result + v18 + 4) = v16;
              if (!v18)
              {
                break;
              }

              v16 = *(result + v18 - 4);
              v18 -= 4;
              if (*(v14 + 4 * v17) >= *(v14 + 4 * v16))
              {
                v19 = (result + v18 + 4);
                goto LABEL_16;
              }
            }

            v19 = result;
LABEL_16:
            *v19 = v17;
          }

          v12 = v15 + 1;
          v13 += 4;
        }

        while (v15 + 1 != a2);
      }
    }
  }

  return result;
}

int *sub_24BD665F0(int *result, int *a2, uint64_t **a3, unint64_t a4, int *a5)
{
  if (a4)
  {
    v5 = a5;
    v7 = result;
    if (a4 == 1)
    {
LABEL_8:
      *v5 = *v7;
      return result;
    }

    if (a4 == 2)
    {
      v10 = *(a2 - 1);
      v11 = **a3;
      v12 = *(v11 + 4 * v10);
      v13 = *(v11 + 4 * *result);
      if (v12 >= v13)
      {
        LODWORD(v10) = *result;
      }

      *a5 = v10;
      v5 = a5 + 1;
      if (v12 >= v13)
      {
        v7 = a2 - 1;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v25 = &result[a4 >> 1];
      sub_24BD663A0(result, v25, a3, a4 >> 1, a5, a4 >> 1);
      result = sub_24BD663A0(&v7[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
      v26 = *a3;
      v27 = &v7[a4 >> 1];
      while (v27 != a2)
      {
        v28 = *v27;
        v29 = *(*v26 + 4 * v28);
        v30 = *(*v26 + 4 * *v7);
        v31 = v29 < v30;
        v32 = v29 >= v30;
        v33 = v31;
        if (!v31)
        {
          LODWORD(v28) = *v7;
        }

        v27 += v33;
        v7 += v32;
        *v5++ = v28;
        if (v7 == v25)
        {
          while (v27 != a2)
          {
            v35 = *v27++;
            *v5++ = v35;
          }

          return result;
        }
      }

      while (v7 != v25)
      {
        v34 = *v7++;
        *v5++ = v34;
      }
    }

    else if (result != a2)
    {
      v14 = result + 1;
      *a5 = *result;
      if (result + 1 != a2)
      {
        v15 = 0;
        v16 = **a3;
        v17 = a5;
        v18 = a5;
        do
        {
          v20 = *v18++;
          v19 = v20;
          v21 = *v14;
          if (*(v16 + 4 * v21) >= *(v16 + 4 * v20))
          {
            *v18 = v21;
          }

          else
          {
            v17[1] = v19;
            v22 = a5;
            if (v17 != a5)
            {
              v23 = v15;
              while (1)
              {
                v22 = (a5 + v23);
                v24 = *(a5 + v23 - 4);
                if (*(v16 + 4 * *v14) >= *(v16 + 4 * v24))
                {
                  break;
                }

                *v22 = v24;
                v23 -= 4;
                if (!v23)
                {
                  v22 = a5;
                  break;
                }
              }
            }

            *v22 = *v14;
          }

          ++v14;
          v15 += 4;
          v17 = v18;
        }

        while (v14 != a2);
      }
    }
  }

  return result;
}

char *sub_24BD667E8(char *result, char *a2, char *a3, uint64_t **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v9 = a6;
    v12 = result;
    while (v9 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v13 = 0;
      v14 = *a2;
      v15 = **a4;
      v16 = -a5;
      while (1)
      {
        v17 = *&v12[v13];
        if (*(v15 + 4 * v14) < *(v15 + 4 * v17))
        {
          break;
        }

        v13 += 4;
        if (__CFADD__(v16++, 1))
        {
          return result;
        }
      }

      v19 = -v16;
      v61 = a3;
      v62 = a7;
      v60 = a4;
      v63 = a8;
      if (-v16 >= v9)
      {
        if (v16 == -1)
        {
          *&v12[v13] = v14;
          *a2 = v17;
          return result;
        }

        v28 = v19 / 2;
        v29 = &v12[4 * (v19 / 2)];
        v21 = a2;
        if (a2 != a3)
        {
          v30 = (a3 - a2) >> 2;
          v21 = a2;
          do
          {
            v31 = v30 >> 1;
            v32 = &v21[4 * (v30 >> 1)];
            v34 = *v32;
            v33 = v32 + 4;
            v30 += ~(v30 >> 1);
            if (*(v15 + 4 * v34) < *(v15 + 4 * *&v29[v13]))
            {
              v21 = v33;
            }

            else
            {
              v30 = v31;
            }
          }

          while (v30);
        }

        v20 = (v21 - a2) >> 2;
        v22 = &v29[v13];
      }

      else
      {
        v20 = v9 / 2;
        v21 = &a2[4 * (v9 / 2)];
        v22 = a2;
        if (a2 - v12 != v13)
        {
          v23 = (a2 - v12 - v13) >> 2;
          v22 = &v12[v13];
          do
          {
            v24 = v23 >> 1;
            v25 = &v22[4 * (v23 >> 1)];
            v27 = *v25;
            v26 = v25 + 4;
            v23 += ~(v23 >> 1);
            if (*(v15 + 4 * *v21) < *(v15 + 4 * v27))
            {
              v23 = v24;
            }

            else
            {
              v22 = v26;
            }
          }

          while (v23);
        }

        v28 = (v22 - v12 - v13) >> 2;
      }

      a5 = -(v28 + v16);
      v35 = v9 - v20;
      v36 = v28;
      v37 = sub_24BD66B94(v22, a2, v21);
      v38 = v36;
      v39 = v37;
      if (v38 + v20 >= v9 - (v38 + v20) - v16)
      {
        v42 = v38;
        result = sub_24BD667E8(v37, v21, v61, v60, a5, v35, v62, v63);
        v21 = v22;
        a4 = v60;
        v35 = v20;
        a7 = v62;
        a5 = v42;
        a3 = v39;
        v12 += v13;
      }

      else
      {
        v40 = v22;
        a4 = v60;
        v41 = v20;
        a7 = v62;
        result = sub_24BD667E8(&v12[v13], v40, v37, v60, v38, v41, v62, v63);
        v12 = v39;
        a3 = v61;
      }

      v9 = v35;
      a2 = v21;
      a8 = v63;
      if (!v35)
      {
        return result;
      }
    }

    if (a5 <= v9)
    {
      if (a2 != v12)
      {
        v47 = -a7;
        v48 = a7;
        v49 = v12;
        do
        {
          v50 = *v49;
          v49 += 4;
          *v48++ = v50;
          v47 -= 4;
        }

        while (v49 != a2);
        v51 = *a4;
        while (a2 != a3)
        {
          v52 = *a2;
          v53 = *(*v51 + 4 * v52);
          v54 = *(*v51 + 4 * *a7);
          v55 = v53 < v54;
          v56 = v53 >= v54;
          v57 = v55;
          if (!v55)
          {
            LODWORD(v52) = *a7;
          }

          a2 += 4 * v57;
          a7 += 4 * v56;
          *v12 = v52;
          v12 += 4;
          if (v48 == a7)
          {
            return result;
          }
        }

        return memmove(v12, a7, -(a7 + v47));
      }
    }

    else if (a2 != a3)
    {
      v43 = 0;
      do
      {
        *(a7 + v43) = *&a2[v43];
        v43 += 4;
      }

      while (&a2[v43] != a3);
      v44 = *a4;
      v45 = (a7 + v43);
      while (a2 != v12)
      {
        v46 = *(v45 - 1);
        if (*(*v44 + 4 * v46) >= *(*v44 + 4 * *(a2 - 1)))
        {
          --v45;
        }

        else
        {
          LODWORD(v46) = *(a2 - 1);
          a2 -= 4;
        }

        *(a3 - 1) = v46;
        a3 -= 4;
        if (v45 == a7)
        {
          return result;
        }
      }

      if (v45 != a7)
      {
        v58 = -4;
        do
        {
          v59 = *--v45;
          *&a3[v58] = v59;
          v58 -= 4;
        }

        while (v45 != a7);
      }
    }
  }

  return result;
}

char *sub_24BD66B94(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 4 == a2)
    {
      v7 = *__src;
      memmove(__src, __src + 4, v6);
      v4 = &__src[v6];
      *v4 = v7;
    }

    else if (a2 + 4 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 4;
      v9 = a3 - 4 - __src;
      if (a3 - 4 != __src)
      {
        memmove(__src + 4, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return sub_24BD66C58(__src, a2, a3);
    }
  }

  return v4;
}

char *sub_24BD66C58(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 2;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 2)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 4;
      v6 = a2 + 4;
      do
      {
        v7 = *(v5 - 1);
        *(v5 - 1) = *(v6 - 1);
        *(v6 - 1) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 += 4;
        v8 = v6 == a3;
        v6 += 4;
      }

      while (!v8);
    }
  }

  else
  {
    v9 = v4 >> 2;
    v10 = (a2 - a1) >> 2;
    do
    {
      v11 = v10;
      v10 = v9;
      v9 = v11 % v9;
    }

    while (v9);
    v12 = &a1[4 * v10];
    do
    {
      v14 = *(v12 - 1);
      v12 -= 4;
      v13 = v14;
      v15 = &v12[a2 - a1];
      v16 = v12;
      do
      {
        v17 = v15;
        *v16 = *v15;
        v18 = &v15[4 * v3];
        v19 = __OFSUB__(v3, (a3 - v15) >> 2);
        v21 = v3 - ((a3 - v15) >> 2);
        v20 = (v21 < 0) ^ v19;
        v15 = &a1[4 * v21];
        if (v20)
        {
          v15 = v18;
        }

        v16 = v17;
      }

      while (v15 != v12);
      *v17 = v13;
    }

    while (v12 != a1);
    return &a1[v4];
  }

  return a2;
}

uint64_t *sub_24BD66D24(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v8 = result;
    if (a4 == 2)
    {
      v9 = *(a2 - 1);
      v10 = *result;
      if (*(**a3 + 8 * v9) < *(**a3 + 8 * *result))
      {
        *result = v9;
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v21 = a5;
      v22 = a4 >> 1;
      v23 = &result[a4 >> 1];
      v24 = a4 >> 1;
      if (a4 <= a6)
      {
        sub_24BD66F74(result, v23, a3, v24, a5);
        v25 = &v21[v22];
        result = sub_24BD66F74(&v8[8 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v25);
        v26 = &v21[a4];
        v27 = *a3;
        v28 = v25;
        while (v28 != v26)
        {
          v29 = *v28;
          v30 = *(*v27 + 8 * *v28);
          v31 = *(*v27 + 8 * *v21);
          v32 = v30 < v31;
          v33 = v30 >= v31;
          v34 = v32;
          if (!v32)
          {
            v29 = *v21;
          }

          v21 += v33;
          v28 += v34;
          *v8 = v29;
          v8 += 8;
          if (v21 == v25)
          {
            while (v28 != v26)
            {
              v36 = *v28++;
              *v8 = v36;
              v8 += 8;
            }

            return result;
          }
        }

        while (v21 != v25)
        {
          v35 = *v21++;
          *v8 = v35;
          v8 += 8;
        }
      }

      else
      {
        sub_24BD66D24(result, v23, a3, v24, a5, a6);
        sub_24BD66D24(&v8[8 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), v21, a6);

        return sub_24BD6716C(v8, &v8[8 * (a4 >> 1)], a2, a3, a4 >> 1, a4 - (a4 >> 1), v21, a6);
      }
    }

    else if (result != a2)
    {
      v12 = result + 1;
      if (result + 1 != a2)
      {
        v13 = 0;
        v14 = **a3;
        v15 = result;
        do
        {
          v16 = *v15;
          v15 = v12;
          v17 = *v12;
          if (*(v14 + 8 * v17) < *(v14 + 8 * v16))
          {
            v18 = v13;
            while (1)
            {
              *(result + v18 + 8) = v16;
              if (!v18)
              {
                break;
              }

              v16 = *(result + v18 - 8);
              v18 -= 8;
              if (*(v14 + 8 * v17) >= *(v14 + 8 * v16))
              {
                v19 = (result + v18 + 8);
                goto LABEL_16;
              }
            }

            v19 = result;
LABEL_16:
            *v19 = v17;
          }

          v12 = v15 + 1;
          v13 += 8;
        }

        while (v15 + 1 != a2);
      }
    }
  }

  return result;
}

uint64_t *sub_24BD66F74(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, uint64_t *a5)
{
  if (a4)
  {
    v5 = a5;
    v7 = result;
    if (a4 == 1)
    {
LABEL_8:
      *v5 = *v7;
      return result;
    }

    if (a4 == 2)
    {
      v10 = *(a2 - 1);
      v11 = **a3;
      v12 = *(v11 + 8 * v10);
      v13 = *(v11 + 8 * *result);
      if (v12 >= v13)
      {
        v10 = *result;
      }

      *a5 = v10;
      v5 = a5 + 1;
      if (v12 >= v13)
      {
        v7 = a2 - 1;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v24 = &result[a4 >> 1];
      sub_24BD66D24(result, v24, a3, a4 >> 1, a5, a4 >> 1);
      result = sub_24BD66D24(&v7[a4 >> 1], a2, a3, a4 - (a4 >> 1), &v5[a4 >> 1], a4 - (a4 >> 1));
      v25 = *a3;
      v26 = &v7[a4 >> 1];
      while (v26 != a2)
      {
        v27 = *v26;
        v28 = *(*v25 + 8 * *v26);
        v29 = *(*v25 + 8 * *v7);
        v30 = v28 < v29;
        v31 = v28 >= v29;
        v32 = v30;
        if (!v30)
        {
          v27 = *v7;
        }

        v26 += v32;
        v7 += v31;
        *v5++ = v27;
        if (v7 == v24)
        {
          while (v26 != a2)
          {
            v34 = *v26++;
            *v5++ = v34;
          }

          return result;
        }
      }

      while (v7 != v24)
      {
        v33 = *v7++;
        *v5++ = v33;
      }
    }

    else if (result != a2)
    {
      v14 = result + 1;
      *a5 = *result;
      if (result + 1 != a2)
      {
        v15 = 0;
        v16 = **a3;
        v17 = a5;
        v18 = a5;
        do
        {
          v20 = *v18++;
          v19 = v20;
          if (*(v16 + 8 * *v14) >= *(v16 + 8 * v20))
          {
            *v18 = *v14;
          }

          else
          {
            v17[1] = v19;
            v21 = a5;
            if (v17 != a5)
            {
              v22 = v15;
              while (1)
              {
                v21 = (a5 + v22);
                v23 = *(a5 + v22 - 8);
                if (*(v16 + 8 * *v14) >= *(v16 + 8 * v23))
                {
                  break;
                }

                *v21 = v23;
                v22 -= 8;
                if (!v22)
                {
                  v21 = a5;
                  break;
                }
              }
            }

            *v21 = *v14;
          }

          ++v14;
          v15 += 8;
          v17 = v18;
        }

        while (v14 != a2);
      }
    }
  }

  return result;
}

char *sub_24BD6716C(char *result, char *a2, char *a3, uint64_t **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    v9 = a6;
    v12 = result;
    while (v9 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v13 = 0;
      v14 = **a4;
      v15 = -a5;
      while (1)
      {
        v16 = *&v12[v13];
        if (*(v14 + 8 * *a2) < *(v14 + 8 * v16))
        {
          break;
        }

        v13 += 8;
        if (__CFADD__(v15++, 1))
        {
          return result;
        }
      }

      v18 = -v15;
      v60 = a3;
      v61 = a7;
      v59 = a4;
      v62 = a8;
      if (-v15 >= v9)
      {
        if (v15 == -1)
        {
          *&v12[v13] = *a2;
          *a2 = v16;
          return result;
        }

        v27 = v18 / 2;
        v28 = &v12[8 * (v18 / 2)];
        v20 = a2;
        if (a2 != a3)
        {
          v29 = (a3 - a2) >> 3;
          v20 = a2;
          do
          {
            v30 = v29 >> 1;
            v31 = &v20[8 * (v29 >> 1)];
            v33 = *v31;
            v32 = v31 + 8;
            v29 += ~(v29 >> 1);
            if (*(v14 + 8 * v33) < *(v14 + 8 * *&v28[v13]))
            {
              v20 = v32;
            }

            else
            {
              v29 = v30;
            }
          }

          while (v29);
        }

        v19 = (v20 - a2) >> 3;
        v21 = &v28[v13];
      }

      else
      {
        v19 = v9 / 2;
        v20 = &a2[8 * (v9 / 2)];
        v21 = a2;
        if (a2 - v12 != v13)
        {
          v22 = (a2 - v12 - v13) >> 3;
          v21 = &v12[v13];
          do
          {
            v23 = v22 >> 1;
            v24 = &v21[8 * (v22 >> 1)];
            v26 = *v24;
            v25 = v24 + 8;
            v22 += ~(v22 >> 1);
            if (*(v14 + 8 * *v20) < *(v14 + 8 * v26))
            {
              v22 = v23;
            }

            else
            {
              v21 = v25;
            }
          }

          while (v22);
        }

        v27 = (v21 - v12 - v13) >> 3;
      }

      a5 = -(v27 + v15);
      v34 = v9 - v19;
      v35 = v27;
      v36 = sub_24BD67518(v21, a2, v20);
      v37 = v35;
      v38 = v36;
      if (v37 + v19 >= v9 - (v37 + v19) - v15)
      {
        v41 = v37;
        result = sub_24BD6716C(v36, v20, v60, v59, a5, v34, v61, v62);
        v20 = v21;
        a4 = v59;
        v34 = v19;
        a7 = v61;
        a5 = v41;
        a3 = v38;
        v12 += v13;
      }

      else
      {
        v39 = v21;
        a4 = v59;
        v40 = v19;
        a7 = v61;
        result = sub_24BD6716C(&v12[v13], v39, v36, v59, v37, v40, v61, v62);
        v12 = v38;
        a3 = v60;
      }

      v9 = v34;
      a2 = v20;
      a8 = v62;
      if (!v34)
      {
        return result;
      }
    }

    if (a5 <= v9)
    {
      if (a2 != v12)
      {
        v46 = -a7;
        v47 = a7;
        v48 = v12;
        do
        {
          v49 = *v48;
          v48 += 8;
          *v47++ = v49;
          v46 -= 8;
        }

        while (v48 != a2);
        v50 = *a4;
        while (a2 != a3)
        {
          v51 = *a2;
          v52 = *(*v50 + 8 * *a2);
          v53 = *(*v50 + 8 * *a7);
          v54 = v52 < v53;
          v55 = v52 >= v53;
          v56 = v54;
          if (!v54)
          {
            v51 = *a7;
          }

          a2 += 8 * v56;
          a7 += 8 * v55;
          *v12 = v51;
          v12 += 8;
          if (v47 == a7)
          {
            return result;
          }
        }

        return memmove(v12, a7, -(a7 + v46));
      }
    }

    else if (a2 != a3)
    {
      v42 = 0;
      do
      {
        *(a7 + v42) = *&a2[v42];
        v42 += 8;
      }

      while (&a2[v42] != a3);
      v43 = *a4;
      v44 = (a7 + v42);
      while (a2 != v12)
      {
        v45 = *(v44 - 1);
        if (*(*v43 + 8 * v45) >= *(*v43 + 8 * *(a2 - 1)))
        {
          --v44;
        }

        else
        {
          v45 = *(a2 - 1);
          a2 -= 8;
        }

        *(a3 - 1) = v45;
        a3 -= 8;
        if (v44 == a7)
        {
          return result;
        }
      }

      if (v44 != a7)
      {
        v57 = -8;
        do
        {
          v58 = *--v44;
          *&a3[v57] = v58;
          v57 -= 8;
        }

        while (v44 != a7);
      }
    }
  }

  return result;
}

char *sub_24BD67518(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 8 == a2)
    {
      v7 = *__src;
      memmove(__src, __src + 8, v6);
      v4 = &__src[v6];
      *v4 = v7;
    }

    else if (a2 + 8 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 8;
      v9 = a3 - 8 - __src;
      if (a3 - 8 != __src)
      {
        memmove(__src + 8, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return sub_24BD675DC(__src, a2, a3);
    }
  }

  return v4;
}

char *sub_24BD675DC(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 3;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 3)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 8;
      v6 = a2 + 8;
      do
      {
        v7 = *(v5 - 1);
        *(v5 - 1) = *(v6 - 1);
        *(v6 - 1) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 += 8;
        v8 = v6 == a3;
        v6 += 8;
      }

      while (!v8);
    }
  }

  else
  {
    v9 = v4 >> 3;
    v10 = (a2 - a1) >> 3;
    do
    {
      v11 = v10;
      v10 = v9;
      v9 = v11 % v9;
    }

    while (v9);
    v12 = &a1[8 * v10];
    do
    {
      v14 = *(v12 - 1);
      v12 -= 8;
      v13 = v14;
      v15 = &v12[a2 - a1];
      v16 = v12;
      do
      {
        v17 = v15;
        *v16 = *v15;
        v18 = &v15[8 * v3];
        v19 = __OFSUB__(v3, (a3 - v15) >> 3);
        v21 = v3 - ((a3 - v15) >> 3);
        v20 = (v21 < 0) ^ v19;
        v15 = &a1[8 * v21];
        if (v20)
        {
          v15 = v18;
        }

        v16 = v17;
      }

      while (v15 != v12);
      *v17 = v13;
    }

    while (v12 != a1);
    return &a1[v4];
  }

  return a2;
}

void sub_24BD67700(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_24BC9EC78(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD67718(uint64_t a1)
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2 = sub_24BE7E0B8(*(*a1 + 60) * *(*a1 + 48));
  v3[0] = &off_285F93798;
  v3[1] = sub_24BE7E1F0;
  v3[3] = v3;
  sub_24BE7EE1C(a1, v2);
}

void sub_24BD679E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCA2B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD67A28(uint64_t a1, int *a2)
{
  v2 = *sub_24BD67AC4(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_24BD67AC4(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 7);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 8);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

unint64_t sub_24BD67B28(unint64_t result, int32x2_t *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v8;
          v9 = a2 - v8;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:
                v147 = v8[1].i32[0];
                v148 = &v8[1] + 1;
                v149 = v8[1].i32[1];
                v150 = v8->i32[0];
                v151 = v8 + 1;
                v152 = v8->i32[1];
                if (v147 == v8->i32[0])
                {
                  v153 = v149 < v152;
                }

                else
                {
                  v153 = v147 < v8->i32[0];
                }

                v154 = a2[-1].i32[0];
                v155 = a2[-1].i32[1] < v149;
                result = v154 < v147;
                if (v154 != v147)
                {
                  v155 = v154 < v147;
                }

                if (v153)
                {
                  if (v155)
                  {
                    v8->i32[0] = v154;
                    a2[-1].i32[0] = v150;
                  }

                  else
                  {
                    v8->i32[0] = v147;
                    v8->i32[1] = v149;
                    v8[1].i32[0] = v150;
                    v8[1].i32[1] = v152;
                    v234 = a2[-1].i32[0];
                    v235 = a2[-1].i32[1] < v152;
                    if (v234 != v150)
                    {
                      v235 = v234 < v150;
                    }

                    if (!v235)
                    {
                      return result;
                    }

                    v8[1].i32[0] = v234;
                    a2[-1].i32[0] = v150;
                    v151 = &v8[1] + 1;
                  }

                  v148 = &a2[-1] + 1;
                }

                else
                {
                  if (!v155)
                  {
                    return result;
                  }

                  v8[1].i32[0] = v154;
                  a2[-1].i32[0] = v147;
                  v217 = v8[1].i32[1];
                  v8[1].i32[1] = a2[-1].i32[1];
                  a2[-1].i32[1] = v217;
                  v218 = v8[1].i32[0];
                  v219 = v8->i32[0];
                  v220 = v8[1].i32[1] < v8->i32[1];
                  if (v218 != v8->i32[0])
                  {
                    v220 = v218 < v8->i32[0];
                  }

                  if (!v220)
                  {
                    return result;
                  }

                  v8->i32[0] = v218;
                  v8[1].i32[0] = v219;
                }

                v236 = *v151;
                *v151 = *v148;
                *v148 = v236;
                return result;
              case 4:

                return sub_24BD68944(v8, &v8[1], &v8[2], &a2[-1]);
              case 5:
                result = sub_24BD68944(v8, &v8[1], &v8[2], &v8[3]);
                v130 = a2[-1].i32[0];
                v131 = v8[3].i32[0];
                v132 = a2[-1].i32[1] < v8[3].i32[1];
                if (v130 != v131)
                {
                  v132 = v130 < v131;
                }

                if (v132)
                {
                  v8[3].i32[0] = v130;
                  a2[-1].i32[0] = v131;
                  v133 = v8[3].i32[1];
                  v8[3].i32[1] = a2[-1].i32[1];
                  a2[-1].i32[1] = v133;
                  *&v134 = v8[3];
                  v135 = v8[2].i32[0];
                  v136 = v8[2].i32[1];
                  v137 = SDWORD1(v134) < v136;
                  if (v134 != v135)
                  {
                    v137 = v134 < v135;
                  }

                  if (v137)
                  {
                    v8[2] = v134;
                    v8[3].i32[0] = v135;
                    v8[3].i32[1] = v136;
                    v138 = v8[1].i32[0];
                    v139 = v8[1].i32[1];
                    v140 = v134 < v138;
                    if (v134 == v138)
                    {
                      v140 = SDWORD1(v134) < v139;
                    }

                    if (v140)
                    {
                      v8[1] = v134;
                      v8[2].i32[0] = v138;
                      v8[2].i32[1] = v139;
                      v141 = vcgt_s32(*v8, *&v134);
                      v142 = (vceq_s32(*&v134, *v8).u8[0] & 1) != 0 ? v141.i8[4] : v141.i8[0];
                      if (v142)
                      {
                        *(&v134 + 1) = *v8;
                        *v8->i8 = v134;
                      }
                    }
                  }
                }

                return result;
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
              v143 = a2[-1].i32[0];
              v144 = v8->i32[0];
              v145 = a2[-1].i32[1] < v8->i32[1];
              if (v143 != v144)
              {
                v145 = v143 < v8->i32[0];
              }

              if (v145)
              {
                v8->i32[0] = v143;
                a2[-1].i32[0] = v144;
                v146 = v8->i32[1];
                v8->i32[1] = a2[-1].i32[1];
                a2[-1].i32[1] = v146;
              }

              return result;
            }
          }

          if (v9 <= 23)
          {
            v156 = v8 + 1;
            v157 = v8 == a2 || v156 == a2;
            v158 = v157;
            if (a4)
            {
              if ((v158 & 1) == 0)
              {
                v159 = 0;
                v160 = v8;
                do
                {
                  v161 = v160[1].i32[0];
                  v162 = v160[1].i32[1];
                  v163 = v160->i32[0];
                  v164 = v160->i32[1];
                  v160 = v156;
                  v165 = v162 < v164;
                  v157 = v161 == v163;
                  v166 = v161 < v163;
                  if (!v157)
                  {
                    v165 = v166;
                  }

                  if (v165)
                  {
                    v167 = v160->i32[0];
                    v168 = v160->i32[1];
                    v169 = v159;
                    while (1)
                    {
                      v170 = v8 + v169;
                      v171 = *(&v8->i32[1] + v169);
                      *(v170 + 2) = v163;
                      *(v170 + 3) = v171;
                      if (!v169)
                      {
                        break;
                      }

                      v163 = *(v170 - 2);
                      v172 = *(v170 - 1) > v168;
                      if (v163 != v167)
                      {
                        v172 = v163 > v167;
                      }

                      v169 -= 8;
                      if (!v172)
                      {
                        v173 = (v8 + v169 + 8);
                        goto LABEL_222;
                      }
                    }

                    v173 = v8;
LABEL_222:
                    v173->i32[0] = v167;
                    v173->i32[1] = v168;
                  }

                  v156 = v160 + 1;
                  v159 += 8;
                }

                while (&v160[1] != a2);
              }
            }

            else if ((v158 & 1) == 0)
            {
              v221 = &v8[1] + 1;
              do
              {
                v222 = v7[1].i32[0];
                v223 = v7[1].i32[1];
                v224 = v7->i32[0];
                v225 = v7->i32[1];
                v7 = v156;
                v226 = v223 < v225;
                v157 = v222 == v224;
                v227 = v222 < v224;
                if (!v157)
                {
                  v226 = v227;
                }

                if (v226)
                {
                  v228 = v7->i32[0];
                  v229 = v7->i32[1];
                  v230 = v221;
                  do
                  {
                    v231 = v230;
                    v232 = *(v230 - 2);
                    v230 -= 2;
                    *(v231 - 1) = v224;
                    *v231 = v232;
                    v224 = *(v231 - 5);
                    v233 = *(v231 - 4) > v229;
                    if (v224 != v228)
                    {
                      v233 = v224 > v228;
                    }
                  }

                  while (v233);
                  *(v230 - 1) = v228;
                  *v230 = v229;
                }

                v156 = v7 + 1;
                v221 += 2;
              }

              while (&v7[1] != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v8 != a2)
            {
              v174 = (v9 - 2) >> 1;
              v175 = v174;
              do
              {
                v176 = v175;
                if (v174 >= v175)
                {
                  v177 = (2 * v175) | 1;
                  v178 = &v8[v177];
                  if (2 * v176 + 2 >= v9)
                  {
                    v181 = v178->i32[0];
                  }

                  else
                  {
                    v179 = v178[1];
                    v180 = vcgt_s32(v179, *v178);
                    v181 = v179.i32[0];
                    v182 = v180.i8[4];
                    result = v180.u32[0];
                    if (v178->u32[0] != v179.i32[0])
                    {
                      v182 = v180.i8[0];
                    }

                    if (v182)
                    {
                      ++v178;
                      v177 = 2 * v176 + 2;
                    }

                    else
                    {
                      v181 = *v178;
                    }
                  }

                  v183 = &v8[v176];
                  v184 = v178->i32[1] < v183->i32[1];
                  if (v181 != v183->i32[0])
                  {
                    v184 = v181 < v183->i32[0];
                  }

                  if (!v184)
                  {
                    v185 = v183->i32[0];
                    v186 = v183->i32[1];
                    do
                    {
                      v187 = v183;
                      v183 = v178;
                      v187->i32[0] = v181;
                      v187->i32[1] = v178->i32[1];
                      if (v174 < v177)
                      {
                        break;
                      }

                      v188 = (2 * v177) | 1;
                      v178 = &v8[v188];
                      v177 = 2 * v177 + 2;
                      if (v177 >= v9)
                      {
                        v181 = v178->i32[0];
                        v177 = v188;
                      }

                      else
                      {
                        v189 = v178[1];
                        v190 = vcgt_s32(v189, *v178);
                        v181 = *v178;
                        v191 = v190.i8[4];
                        if (v181 != v189.i32[0])
                        {
                          v191 = v190.i8[0];
                        }

                        if (v191)
                        {
                          v181 = v178[1];
                          ++v178;
                        }

                        else
                        {
                          v177 = v188;
                        }
                      }

                      v192 = v178->i32[1] < v186;
                      result = v181 < v185;
                      if (v181 != v185)
                      {
                        v192 = v181 < v185;
                      }
                    }

                    while (!v192);
                    v183->i32[0] = v185;
                    v183->i32[1] = v186;
                  }
                }

                v175 = v176 - 1;
              }

              while (v176);
              do
              {
                v193 = 0;
                v194 = *v8;
                v195 = v8;
                do
                {
                  v196 = &v195[v193];
                  v197 = v196 + 1;
                  v198 = (2 * v193) | 1;
                  v193 = 2 * v193 + 2;
                  if (v193 >= v9)
                  {
                    v200 = v197->i32[0];
                    v193 = v198;
                  }

                  else
                  {
                    v201 = v196[2].i32[0];
                    v199 = v196 + 2;
                    v200 = v201;
                    v202 = v199[-1].i32[0];
                    v203 = v199[-1].i32[1] < v199->i32[1];
                    v204 = v202 < v201;
                    if (v202 == v201)
                    {
                      result = v199[-1].i32[1] < v199->i32[1];
                    }

                    else
                    {
                      result = v204;
                    }

                    if (result)
                    {
                      v197 = v199;
                    }

                    else
                    {
                      v200 = v199[-1].i32[0];
                      v193 = v198;
                    }
                  }

                  v195->i32[0] = v200;
                  v195->i32[1] = v197->i32[1];
                  v195 = v197;
                }

                while (v193 <= ((v9 - 2) >> 1));
                if (v197 == &a2[-1])
                {
                  *v197 = v194;
                }

                else
                {
                  v197->i32[0] = a2[-1].i32[0];
                  v197->i32[1] = a2[-1].i32[1];
                  a2[-1] = v194;
                  v205 = (v197 - v8 + 8) >> 3;
                  v206 = v205 < 2;
                  v207 = v205 - 2;
                  if (!v206)
                  {
                    v208 = v207 >> 1;
                    v209 = &v8[v208];
                    v210 = vcgt_s32(*v197, *v209);
                    v211 = (vceq_s32(*v209, *v197).u8[0] & 1) != 0 ? v210.i8[4] : v210.i8[0];
                    if (v211)
                    {
                      v212 = *v209;
                      v213 = v197->i32[0];
                      v214 = v197->i32[1];
                      do
                      {
                        v215 = v197;
                        v197 = v209;
                        v215->i32[0] = v212;
                        v215->i32[1] = v209->i32[1];
                        if (!v208)
                        {
                          break;
                        }

                        v208 = (v208 - 1) >> 1;
                        v209 = &v8[v208];
                        v212 = v209->i32[0];
                        v216 = v209->i32[1] < v214;
                        if (v209->i32[0] != v213)
                        {
                          v216 = v209->i32[0] < v213;
                        }
                      }

                      while (v216);
                      v197->i32[0] = v213;
                      v197->i32[1] = v214;
                    }
                  }
                }

                --a2;
                v206 = v9-- <= 2;
              }

              while (!v206);
            }

            return result;
          }

          v10 = &v8[v9 >> 1];
          v11 = a2[-1].i32[0];
          v12 = a2[-1].i32[1];
          if (v9 >= 0x81)
          {
            v13 = v10->i32[0];
            v14 = v8->i32[0];
            v15 = v10 + 1;
            v16 = v10->i32[1];
            v17 = v8 + 1;
            v18 = v8->i32[1];
            v19 = v16 < v18;
            if (v10->i32[0] != v8->i32[0])
            {
              v19 = v10->i32[0] < v8->i32[0];
            }

            v20 = v12 < v16;
            if (v11 != v13)
            {
              v20 = v11 < v13;
            }

            if (v19)
            {
              if (v20)
              {
                v8->i32[0] = v11;
                a2[-1].i32[0] = v14;
LABEL_41:
                v15 = &a2[-1] + 1;
                goto LABEL_42;
              }

              v8->i32[0] = v13;
              v8->i32[1] = v16;
              v10->i32[0] = v14;
              v10->i32[1] = v18;
              v35 = a2[-1].i32[0];
              v36 = a2[-1].i32[1] < v18;
              if (v35 != v14)
              {
                v36 = v35 < v14;
              }

              if (v36)
              {
                v10->i32[0] = v35;
                a2[-1].i32[0] = v14;
                v17 = v10 + 1;
                goto LABEL_41;
              }
            }

            else if (v20)
            {
              v10->i32[0] = v11;
              a2[-1].i32[0] = v13;
              v29 = v10->i32[1];
              v10->i32[1] = a2[-1].i32[1];
              a2[-1].i32[1] = v29;
              v30 = v8->i32[0];
              v31 = v10->i32[1] < v8->i32[1];
              if (v10->i32[0] != v8->i32[0])
              {
                v31 = v10->i32[0] < v8->i32[0];
              }

              if (v31)
              {
                v8->i32[0] = v10->i32[0];
                v10->i32[0] = v30;
LABEL_42:
                v37 = *v17;
                *v17 = *v15;
                *v15 = v37;
              }
            }

            v38 = &v10[-1];
            v39 = v10[-1].i32[0];
            v40 = v8[1].i32[0];
            v41 = &v10[-1] + 1;
            v42 = v10[-1].i32[1];
            v43 = &v8[1] + 1;
            v44 = v8[1].i32[1];
            if (v39 == v40)
            {
              v45 = v42 < v44;
            }

            else
            {
              v45 = v39 < v40;
            }

            v46 = a2[-2].i32[0];
            v47 = a2[-2].i32[1] < v42;
            if (v46 != v39)
            {
              v47 = v46 < v39;
            }

            if (v45)
            {
              if (v47)
              {
                v8[1].i32[0] = v46;
                a2[-2].i32[0] = v40;
LABEL_66:
                v41 = &a2[-2] + 1;
                goto LABEL_67;
              }

              v8[1].i32[0] = v39;
              v8[1].i32[1] = v42;
              *v38 = v40;
              v10[-1].i32[1] = v44;
              v54 = a2[-2].i32[0];
              v55 = a2[-2].i32[1] < v44;
              if (v54 != v40)
              {
                v55 = v54 < v40;
              }

              if (v55)
              {
                *v38 = v54;
                a2[-2].i32[0] = v40;
                v43 = &v10[-1] + 1;
                goto LABEL_66;
              }
            }

            else if (v47)
            {
              *v38 = v46;
              a2[-2].i32[0] = v39;
              v48 = v10[-1].i32[1];
              v10[-1].i32[1] = a2[-2].i32[1];
              a2[-2].i32[1] = v48;
              v49 = v8[1].i32[0];
              v50 = v10[-1].i32[1] < v8[1].i32[1];
              if (*v38 != v49)
              {
                v50 = *v38 < v49;
              }

              if (v50)
              {
                v8[1].i32[0] = *v38;
                *v38 = v49;
LABEL_67:
                v56 = *v43;
                *v43 = *v41;
                *v41 = v56;
              }
            }

            v57 = v10 + 1;
            v58 = v10[1].i32[0];
            v59 = v8[2].i32[0];
            v61 = &v10[1] + 1;
            v60 = v10[1].i32[1];
            v62 = &v8[2] + 1;
            v63 = v8[2].i32[1];
            if (v58 == v59)
            {
              v64 = v60 < v63;
            }

            else
            {
              v64 = v58 < v59;
            }

            v65 = a2[-3].i32[0];
            v66 = a2[-3].i32[1] < v60;
            if (v65 != v58)
            {
              v66 = v65 < v58;
            }

            if (v64)
            {
              if (v66)
              {
                v8[2].i32[0] = v65;
                a2[-3].i32[0] = v59;
LABEL_85:
                v61 = &a2[-3] + 1;
                goto LABEL_86;
              }

              v8[2].i32[0] = v58;
              v8[2].i32[1] = v60;
              v57->i32[0] = v59;
              v10[1].i32[1] = v63;
              v70 = a2[-3].i32[0];
              v71 = a2[-3].i32[1] < v63;
              if (v70 != v59)
              {
                v71 = v70 < v59;
              }

              if (v71)
              {
                v57->i32[0] = v70;
                a2[-3].i32[0] = v59;
                v62 = &v10[1] + 1;
                goto LABEL_85;
              }

              v60 = v63;
              v58 = v59;
            }

            else if (v66)
            {
              v57->i32[0] = v65;
              a2[-3].i32[0] = v58;
              v67 = v10[1].i32[1];
              v10[1].i32[1] = a2[-3].i32[1];
              a2[-3].i32[1] = v67;
              v58 = v57->i32[0];
              v60 = v10[1].i32[1];
              v68 = v8[2].i32[0];
              v69 = v60 < v8[2].i32[1];
              if (v57->i32[0] != v68)
              {
                v69 = v57->i32[0] < v68;
              }

              if (v69)
              {
                v8[2].i32[0] = v58;
                v57->i32[0] = v68;
LABEL_86:
                v72 = *v62;
                *v62 = *v61;
                *v61 = v72;
                v58 = v57->i32[0];
                v60 = v10[1].i32[1];
              }
            }

            v74 = v10->i32[0];
            v73 = v10->i32[1];
            v76 = *v38;
            v75 = v10[-1].i32[1];
            if (v10->i32[0] == *v38)
            {
              result = v73 < v75;
            }

            else
            {
              result = v10->i32[0] < *v38;
            }

            v77 = v60 < v73;
            if (v58 != v74)
            {
              v77 = v58 < v74;
            }

            if (result)
            {
              if (!v77)
              {
                *v38 = v74;
                v10[-1].i32[1] = v73;
                v10->i32[0] = v76;
                v10->i32[1] = v75;
                v78 = v58 < v76;
                if (v58 == v76)
                {
                  v78 = v60 < v75;
                }

                v38 = v10;
                if (!v78)
                {
                  v73 = v75;
                  v74 = v76;
LABEL_103:
                  v80 = *v8;
                  v8->i32[0] = v74;
                  v8->i32[1] = v73;
                  *v10 = v80;
                  goto LABEL_104;
                }
              }
            }

            else
            {
              if (!v77)
              {
                goto LABEL_103;
              }

              v10->i32[0] = v58;
              v10->i32[1] = v60;
              v57->i32[0] = v74;
              v10[1].i32[1] = v73;
              v79 = v58 < v76;
              if (v58 == v76)
              {
                v79 = v60 < v75;
              }

              v57 = v10;
              if (!v79)
              {
                v73 = v60;
                v74 = v58;
                goto LABEL_103;
              }
            }

            v57->i32[0] = v76;
            *v38 = v58;
            v38[1] = v60;
            v57->i32[1] = v75;
            v74 = v10->i32[0];
            v73 = v10->i32[1];
            goto LABEL_103;
          }

          v21 = v8->i32[0];
          v22 = v10->i32[0];
          v23 = v8 + 1;
          v24 = v8->i32[1];
          v25 = v10 + 1;
          v26 = v10->i32[1];
          v27 = v24 < v26;
          if (v8->i32[0] != v10->i32[0])
          {
            v27 = v8->i32[0] < v10->i32[0];
          }

          v28 = v12 < v24;
          result = v11 < v21;
          if (v11 != v21)
          {
            v28 = v11 < v21;
          }

          if (v27)
          {
            if (v28)
            {
              v10->i32[0] = v11;
              a2[-1].i32[0] = v22;
LABEL_60:
              v23 = &a2[-1] + 1;
              goto LABEL_61;
            }

            v10->i32[0] = v21;
            v10->i32[1] = v24;
            v8->i32[0] = v22;
            v8->i32[1] = v26;
            v51 = a2[-1].i32[0];
            v52 = a2[-1].i32[1] < v26;
            if (v51 != v22)
            {
              v52 = v51 < v22;
            }

            if (v52)
            {
              v8->i32[0] = v51;
              a2[-1].i32[0] = v22;
              v25 = v8 + 1;
              goto LABEL_60;
            }
          }

          else if (v28)
          {
            v8->i32[0] = v11;
            a2[-1].i32[0] = v21;
            v32 = v8->i32[1];
            v8->i32[1] = a2[-1].i32[1];
            a2[-1].i32[1] = v32;
            v33 = v10->i32[0];
            v34 = v8->i32[1] < v10->i32[1];
            if (v8->i32[0] != v10->i32[0])
            {
              v34 = v8->i32[0] < v10->i32[0];
            }

            if (v34)
            {
              v10->i32[0] = v8->i32[0];
              v8->i32[0] = v33;
LABEL_61:
              v53 = *v25;
              *v25 = *v23;
              *v23 = v53;
            }
          }

LABEL_104:
          --a3;
          if (a4)
          {
            break;
          }

          v81 = v8[-1].i32[0];
          v157 = v81 == v8->i32[0];
          v82 = v81 < v8->i32[0];
          if (v157)
          {
            v82 = v8[-1].i32[1] < v8->i32[1];
          }

          if (v82)
          {
            break;
          }

          v106 = v8->i32[0];
          v107 = v8->i32[1];
          v108 = a2[-1].i32[0];
          v157 = v108 == v8->i32[0];
          v109 = v108 > v8->i32[0];
          if (v157)
          {
            v109 = a2[-1].i32[1] > v107;
          }

          if (v109)
          {
            do
            {
              v110 = v8[1].i32[0];
              v111 = v8[1].i32[1];
              ++v8;
              v112 = v111 > v107;
              v157 = v110 == v106;
              v113 = v110 > v106;
              if (v157)
              {
                v113 = v112;
              }
            }

            while (!v113);
          }

          else
          {
            v114 = v8 + 1;
            do
            {
              v8 = v114;
              if (v114 >= a2)
              {
                break;
              }

              v115 = v114->i32[0];
              v116 = v8->i32[1] > v107;
              v157 = v115 == v106;
              v117 = v115 > v106;
              if (!v157)
              {
                v116 = v117;
              }

              v114 = v8 + 1;
            }

            while (!v116);
          }

          v118 = a2;
          if (v8 < a2)
          {
            v118 = a2;
            do
            {
              v119 = v118[-1].i32[0];
              v120 = v118[-1].i32[1];
              --v118;
              v121 = v120 > v107;
              v157 = v119 == v106;
              v122 = v119 > v106;
              if (v157)
              {
                v122 = v121;
              }
            }

            while (v122);
          }

          if (v8 < v118)
          {
            v123 = v8->i32[0];
            v124 = v118->i32[0];
            do
            {
              v8->i32[0] = v124;
              v118->i32[0] = v123;
              v125 = v8->i32[1];
              v8->i32[1] = v118->i32[1];
              v118->i32[1] = v125;
              do
              {
                v123 = v8[1].i32[0];
                v126 = v8[1].i32[1];
                ++v8;
                v127 = v126 > v107;
                if (v123 != v106)
                {
                  v127 = v123 > v106;
                }
              }

              while (!v127);
              do
              {
                v124 = v118[-1].i32[0];
                v128 = v118[-1].i32[1];
                --v118;
                v129 = v128 > v107;
                if (v124 != v106)
                {
                  v129 = v124 > v106;
                }
              }

              while (v129);
            }

            while (v8 < v118);
          }

          if (&v8[-1] != v7)
          {
            v7->i32[0] = v8[-1].i32[0];
            v7->i32[1] = v8[-1].i32[1];
          }

          a4 = 0;
          v8[-1].i32[0] = v106;
          v8[-1].i32[1] = v107;
        }

        v83 = 0;
        v84 = v8->i32[0];
        v85 = v8->i32[1];
        do
        {
          v86 = v8[v83 + 1].i32[0];
          v87 = v8[v83 + 1].i32[1] < v85;
          if (v86 != v84)
          {
            v87 = v86 < v84;
          }

          ++v83;
        }

        while (v87);
        v88 = &v8[v83];
        v89 = a2;
        if (v83 == 1)
        {
          v89 = a2;
          do
          {
            if (v88 >= v89)
            {
              break;
            }

            v94 = v89[-1].i32[0];
            v95 = v89[-1].i32[1];
            --v89;
            v96 = v95 < v85;
            v157 = v94 == v84;
            v97 = v94 < v84;
            if (v157)
            {
              v97 = v96;
            }
          }

          while (!v97);
        }

        else
        {
          do
          {
            v90 = v89[-1].i32[0];
            v91 = v89[-1].i32[1];
            --v89;
            v92 = v91 < v85;
            v157 = v90 == v84;
            v93 = v90 < v84;
            if (v157)
            {
              v93 = v92;
            }
          }

          while (!v93);
        }

        if (v88 >= v89)
        {
          v8 = v88;
        }

        else
        {
          v98 = v89->i32[0];
          v8 = v88;
          v99 = v89;
          do
          {
            v8->i32[0] = v98;
            v99->i32[0] = v86;
            v100 = v8->i32[1];
            v8->i32[1] = v99->i32[1];
            v99->i32[1] = v100;
            do
            {
              v86 = v8[1].i32[0];
              v101 = v8[1].i32[1];
              ++v8;
              v102 = v101 < v85;
              if (v86 != v84)
              {
                v102 = v86 < v84;
              }
            }

            while (v102);
            do
            {
              v98 = v99[-1].i32[0];
              v103 = v99[-1].i32[1];
              --v99;
              v104 = v103 < v85;
              if (v98 != v84)
              {
                v104 = v98 < v84;
              }
            }

            while (!v104);
          }

          while (v8 < v99);
        }

        if (&v8[-1] != v7)
        {
          v7->i32[0] = v8[-1].i32[0];
          v7->i32[1] = v8[-1].i32[1];
        }

        v8[-1].i32[0] = v84;
        v8[-1].i32[1] = v85;
        if (v88 >= v89)
        {
          break;
        }

LABEL_139:
        result = sub_24BD67B28(v7, &v8[-1], a3, a4 & 1);
        a4 = 0;
      }

      v105 = sub_24BD68B08(v7, v8 - 1);
      result = sub_24BD68B08(v8, a2);
      if (result)
      {
        break;
      }

      if (!v105)
      {
        goto LABEL_139;
      }
    }

    a2 = v8 - 1;
    if (!v105)
    {
      continue;
    }

    return result;
  }
}

int *sub_24BD68944(int *result, int *a2, int *a3, int *a4)
{
  v4 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  v7 = *result;
  v8 = result + 1;
  if (*a2 == *result)
  {
    v9 = v6 < result[1];
  }

  else
  {
    v9 = *a2 < *result;
  }

  v10 = a3[1];
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
      v5 = a3 + 1;
      goto LABEL_19;
    }

    *result = v4;
    *a2 = v7;
    v15 = result[1];
    result[1] = a2[1];
    a2[1] = v15;
    v16 = *a2;
    v10 = a3[1];
    v17 = v10 < v15;
    if (*a3 != *a2)
    {
      v17 = *a3 < *a2;
    }

    if (v17)
    {
      *a2 = *a3;
      *a3 = v16;
      v8 = a2 + 1;
      goto LABEL_18;
    }
  }

  else if (v12)
  {
    *a2 = v11;
    *a3 = v4;
    v10 = a2[1];
    a2[1] = a3[1];
    a3[1] = v10;
    v13 = *result;
    v14 = a2[1] < result[1];
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
      v10 = a3[1];
    }
  }

  v19 = *a3;
  v20 = a4[1] < v10;
  if (*a4 != *a3)
  {
    v20 = *a4 < *a3;
  }

  if (v20)
  {
    *a3 = *a4;
    *a4 = v19;
    v21 = a3[1];
    a3[1] = a4[1];
    a4[1] = v21;
    v22 = *a2;
    v23 = a3[1] < a2[1];
    if (*a3 != *a2)
    {
      v23 = *a3 < *a2;
    }

    if (v23)
    {
      *a2 = *a3;
      *a3 = v22;
      v24 = a2[1];
      a2[1] = a3[1];
      a3[1] = v24;
      v25 = *result;
      v26 = a2[1] < result[1];
      if (*a2 != *result)
      {
        v26 = *a2 < *result;
      }

      if (v26)
      {
        *result = *a2;
        *a2 = v25;
        v27 = result[1];
        result[1] = a2[1];
        a2[1] = v27;
      }
    }
  }

  return result;
}

BOOL sub_24BD68B08(int32x2_t *a1, int32x2_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v22 = a1[1].i32[0];
        v23 = &a1[1] + 1;
        v24 = a1[1].i32[1];
        v25 = a1->i32[0];
        v26 = a1 + 1;
        v27 = a1->i32[1];
        if (v22 == a1->i32[0])
        {
          v28 = v24 < v27;
        }

        else
        {
          v28 = v22 < a1->i32[0];
        }

        v29 = a2[-1].i32[0];
        v30 = a2[-1].i32[1] < v24;
        if (v29 != v22)
        {
          v30 = v29 < v22;
        }

        if (v28)
        {
          if (v30)
          {
            a1->i32[0] = v29;
            a2[-1].i32[0] = v25;
          }

          else
          {
            a1->i32[0] = v22;
            a1->i32[1] = v24;
            a1[1].i32[0] = v25;
            a1[1].i32[1] = v27;
            v61 = a2[-1].i32[0];
            v62 = a2[-1].i32[1] < v27;
            if (v61 != v25)
            {
              v62 = v61 < v25;
            }

            if (!v62)
            {
              return 1;
            }

            a1[1].i32[0] = v61;
            a2[-1].i32[0] = v25;
            v26 = &a1[1] + 1;
          }

          v23 = &a2[-1] + 1;
        }

        else
        {
          if (!v30)
          {
            return 1;
          }

          a1[1].i32[0] = v29;
          a2[-1].i32[0] = v22;
          v44 = a1[1].i32[1];
          a1[1].i32[1] = a2[-1].i32[1];
          a2[-1].i32[1] = v44;
          v45 = a1[1].i32[0];
          v46 = a1->i32[0];
          v47 = a1[1].i32[1] < a1->i32[1];
          if (v45 != a1->i32[0])
          {
            v47 = v45 < a1->i32[0];
          }

          if (!v47)
          {
            return 1;
          }

          a1->i32[0] = v45;
          a1[1].i32[0] = v46;
        }

        v63 = *v26;
        *v26 = *v23;
        *v23 = v63;
        break;
      case 4:
        sub_24BD68944(a1, &a1[1], &a1[2], &a2[-1]);
        break;
      case 5:
        sub_24BD68944(a1, &a1[1], &a1[2], &a1[3]);
        v9 = a2[-1].i32[0];
        v10 = a1[3].i32[0];
        v11 = a2[-1].i32[1] < a1[3].i32[1];
        if (v9 != v10)
        {
          v11 = v9 < v10;
        }

        if (v11)
        {
          a1[3].i32[0] = v9;
          a2[-1].i32[0] = v10;
          v12 = a1[3].i32[1];
          a1[3].i32[1] = a2[-1].i32[1];
          a2[-1].i32[1] = v12;
          *&v13 = a1[3];
          v14 = a1[2].i32[0];
          v15 = a1[2].i32[1];
          v16 = SDWORD1(v13) < v15;
          if (v13 != v14)
          {
            v16 = v13 < v14;
          }

          if (v16)
          {
            a1[2] = v13;
            a1[3].i32[0] = v14;
            a1[3].i32[1] = v15;
            v17 = a1[1].i32[0];
            v18 = a1[1].i32[1];
            v19 = v13 < v17;
            if (v13 == v17)
            {
              v19 = SDWORD1(v13) < v18;
            }

            if (v19)
            {
              a1[1] = v13;
              a1[2].i32[0] = v17;
              a1[2].i32[1] = v18;
              v20 = vcgt_s32(*a1, *&v13);
              v21 = (vceq_s32(*&v13, *a1).u8[0] & 1) != 0 ? v20.i8[4] : v20.i8[0];
              if (v21)
              {
                *(&v13 + 1) = *a1;
                *a1->i8 = v13;
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_33;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2[-1].i32[0];
    v6 = a1->i32[0];
    v7 = a2[-1].i32[1] < a1->i32[1];
    if (v5 != a1->i32[0])
    {
      v7 = v5 < a1->i32[0];
    }

    if (v7)
    {
      a1->i32[0] = v5;
      a2[-1].i32[0] = v6;
      v8 = a1->i32[1];
      a1->i32[1] = a2[-1].i32[1];
      a2[-1].i32[1] = v8;
    }

    return 1;
  }

LABEL_33:
  v31 = a1 + 2;
  v32 = a1[2].i32[0];
  v33 = a1 + 1;
  v34 = a1[1].i32[0];
  v35 = a1->i32[0];
  v37 = &a1[1] + 1;
  v36 = a1[1].i32[1];
  v39 = a1 + 1;
  v38 = a1->i32[1];
  v40 = v34 < v35;
  v41 = a1[2].i32[1];
  if (v34 == v35)
  {
    v40 = v36 < v38;
  }

  v42 = v41 < v36;
  if (v32 != v34)
  {
    v42 = v32 < v34;
  }

  if (v40)
  {
    if (v42)
    {
      v43 = a1;
      v33 = a1 + 2;
      v37 = &a1[2] + 1;
LABEL_50:
      v43->i32[0] = v32;
      v33->i32[0] = v35;
      *v39 = v41;
      *v37 = v38;
      goto LABEL_51;
    }

    a1->i32[0] = v34;
    a1->i32[1] = v36;
    if (v32 == v35)
    {
      v65 = v41 < v38;
    }

    else
    {
      v65 = v32 < v35;
    }

    v43 = a1 + 1;
    a1[1].i32[0] = v35;
    a1[1].i32[1] = v38;
    v33 = a1 + 2;
    v39 = &a1[1] + 1;
    v37 = &a1[2] + 1;
    if (v65)
    {
      goto LABEL_50;
    }
  }

  else if (v42)
  {
    v33->i32[0] = v32;
    v31->i32[0] = v34;
    *v37 = v41;
    a1[2].i32[1] = v36;
    v48 = v41 < v38;
    if (v32 != v35)
    {
      v48 = v32 < v35;
    }

    v43 = a1;
    if (v48)
    {
      goto LABEL_50;
    }
  }

LABEL_51:
  v49 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v50 = 0;
  v51 = 0;
  while (1)
  {
    v52 = v31->i32[0];
    v53 = v49->i32[1] < v31->i32[1];
    if (v49->i32[0] != v52)
    {
      v53 = v49->i32[0] < v52;
    }

    if (v53)
    {
      v54 = v49->i32[0];
      v55 = v49->i32[1];
      v56 = v50;
      while (1)
      {
        v57 = (a1 + v56);
        v58 = *(&a1[2].i32[1] + v56);
        v57[3].i32[0] = v52;
        v57[3].i32[1] = v58;
        if (v56 == -16)
        {
          break;
        }

        v52 = v57[1].i32[0];
        v59 = v57[1].i32[1] > v55;
        if (v52 != v54)
        {
          v59 = v52 > v54;
        }

        v56 -= 8;
        if (!v59)
        {
          v60 = (a1 + v56 + 24);
          goto LABEL_63;
        }
      }

      v60 = a1;
LABEL_63:
      v60->i32[0] = v54;
      v60->i32[1] = v55;
      if (++v51 == 8)
      {
        return &v49[1] == a2;
      }
    }

    v31 = v49;
    v50 += 8;
    if (++v49 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_24BD68F30(uint64_t a1, int *a2)
{
  v2 = *sub_24BD67AC4(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_24BD68FCC(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_24BC94FEC(v6, v10);
    }

    sub_24BC8E01C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15 = v16;
        v15 += 4;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t *sub_24BD69100(uint64_t a1, int *a2)
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

uint64_t sub_24BD6923C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F95D90;
  a2[1] = v2;
  return result;
}

void sub_24BD69268(uint64_t a1)
{
  v2 = **(a1 + 8);
  if (v2)
  {
    v3 = sub_24BE4A2B0(v2);
    v4 = sub_24BE4A2B8(**(a1 + 8), "DataConversion");
    if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_24BC7E000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "DataConversion", &unk_24C0CF52B, v5, 2u);
    }
  }
}

uint64_t sub_24BD69390(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F95DD8;
  a2[1] = v2;
  return result;
}

void sub_24BD693BC(uint64_t a1)
{
  v2 = **(a1 + 8);
  if (v2)
  {
    v3 = sub_24BE4A2B0(v2);
    v4 = sub_24BE4A2B8(**(a1 + 8), "DataConversion");
    if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_24BC7E000, v3, OS_SIGNPOST_INTERVAL_END, v4, "DataConversion", &unk_24C0CF52B, v5, 2u);
    }
  }
}

uint64_t sub_24BD694E4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F95E20;
  a2[1] = v2;
  return result;
}

void sub_24BD69510(uint64_t a1)
{
  v2 = **(a1 + 8);
  if (v2)
  {
    v3 = sub_24BE4A2B0(v2);
    v4 = sub_24BE4A2B8(**(a1 + 8), "Extraction");
    if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_24BC7E000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Extraction", &unk_24C0CF52B, v5, 2u);
    }
  }
}

uint64_t sub_24BD69638(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F95E68;
  a2[1] = v2;
  return result;
}

void sub_24BD69664(uint64_t a1)
{
  v2 = **(a1 + 8);
  if (v2)
  {
    v3 = sub_24BE4A2B0(v2);
    v4 = sub_24BE4A2B8(**(a1 + 8), "Extraction");
    if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_24BC7E000, v3, OS_SIGNPOST_INTERVAL_END, v4, "Extraction", &unk_24C0CF52B, v5, 2u);
    }
  }
}

_BYTE *sub_24BD69728@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 > 99)
  {
    if (a1 > 203)
    {
      if (a1 <= 303)
      {
        if (a1 > 300)
        {
          if (a1 == 301)
          {
            strcpy(&v6[31], "@DH");
            *v6 = xmmword_24BFECD10;
            *&v6[16] = unk_24BFECD20;
            v3 = sub_24BD6A4D0(v6);
          }

          else if (a1 == 302)
          {
            *v6 = xmmword_24BFECD33;
            *&v6[16] = unk_24BFECD43;
            strcpy(&v6[32], "e~ubcrd");
            v3 = sub_24BD6A4FC(v6);
          }

          else
          {
            *v6 = xmmword_24BFECD5B;
            *&v6[15] = *(&xmmword_24BFECD5B + 15);
            v3 = sub_24BD6A528(v6);
          }

          goto LABEL_86;
        }

        switch(a1)
        {
          case 204:
            *v6 = xmmword_24BFECC64;
            *&v6[16] = unk_24BFECC74;
            *&v6[32] = xmmword_24BFECC84;
            *&v6[41] = *(&xmmword_24BFECC84 + 9);
            v3 = sub_24BD6A448(v6);
            goto LABEL_86;
          case 205:
            *v6 = xmmword_24BFECC9D;
            strcpy(&v6[16], "la-kldahi-yb-nlanxalyh-BOGRB_YEBJBCLARYLCJHCYDLA");
            v3 = sub_24BD6A474(v6);
            goto LABEL_86;
          case 300:
            strcpy(&v6[48], "N");
            *v6 = xmmword_24BFECCDE;
            *&v6[16] = unk_24BFECCEE;
            *&v6[32] = xmmword_24BFECCFE;
            v3 = sub_24BD6A4A0(v6);
            goto LABEL_86;
        }
      }

      else if (a1 <= 401)
      {
        switch(a1)
        {
          case 304:
            *v6 = xmmword_24BFECD7A;
            *&v6[13] = *(&xmmword_24BFECD7A + 13);
            v3 = sub_24BD0B680(v6);
            goto LABEL_86;
          case 400:
            strcpy(&v6[32], "@");
            *v6 = xmmword_24BFECD97;
            *&v6[16] = unk_24BFECDA7;
            v3 = sub_24BD6A554(v6);
            goto LABEL_86;
          case 401:
            v6[32] = 0;
            *v6 = xmmword_24BFECDB9;
            *&v6[16] = unk_24BFECDC9;
            v3 = sub_24BD6A580(v6);
            goto LABEL_86;
        }
      }

      else if (a1 > 499)
      {
        if (a1 == 500)
        {
          strcpy(v6, "]894)}(398/})54.}.8))43:}4.}>(//831$}32)}.(--2/)89");
          v3 = sub_24BD6A5AC(v6);
          goto LABEL_86;
        }

        if (a1 == 501)
        {
          *v6 = xmmword_24BFECEB0;
          *&v6[12] = *(&xmmword_24BFECEB0 + 12);
          v3 = sub_24BD6A238(v6);
          goto LABEL_86;
        }
      }

      else
      {
        if (a1 == 402)
        {
          strcpy(v6, "(XIZIEM\\MZARI\\AGF\b]FCFG_F\bNIADML");
          v3 = sub_24BD6A580(v6);
          goto LABEL_86;
        }

        if (a1 == 403)
        {
          *v6 = xmmword_24BFECDFB;
          v3 = sub_24BD6A2E8(v6);
          goto LABEL_86;
        }
      }
    }

    else
    {
      if (a1 <= 105)
      {
        if (a1 > 102)
        {
          if (a1 == 103)
          {
            *&v6[32] = xmmword_24BFECA93;
            *&v6[48] = unk_24BFECAA3;
            *&v6[61] = 0x1716100D180310;
            *v6 = xmmword_24BFECA73;
            *&v6[16] = unk_24BFECA83;
            v3 = sub_24BD6A340(v6);
          }

          else if (a1 == 104)
          {
            *v6 = xmmword_24BFECAB8;
            *&v6[16] = unk_24BFECAC8;
            *&v6[32] = xmmword_24BFECAD8;
            strcpy(&v6[48], "M^\\KVPQ");
            v3 = sub_24BD6A36C(v6);
          }

          else
          {
            v6[48] = 0;
            *v6 = xmmword_24BFECAF0;
            *&v6[16] = unk_24BFECB00;
            *&v6[32] = xmmword_24BFECB10;
            v3 = sub_24BD6A398(v6);
          }
        }

        else if (a1 == 100)
        {
          *v6 = xmmword_24BFEC9D2;
          *&v6[16] = unk_24BFEC9E2;
          *&v6[32] = xmmword_24BFEC9F2;
          v3 = sub_24BD6A2BC(v6);
        }

        else if (a1 == 101)
        {
          *&v6[48] = 1184533;
          *v6 = xmmword_24BFECA02;
          *&v6[16] = unk_24BFECA12;
          *&v6[32] = xmmword_24BFECA22;
          v3 = sub_24BD6A2E8(v6);
        }

        else
        {
          *v6 = xmmword_24BFECA36;
          strcpy(&v6[16], "u=ir=lh|ypxnu={|tqxy=jtiu=srs0p|st{rqy=tsmhi");
          v3 = sub_24BD6A314(v6);
        }

        goto LABEL_86;
      }

      if (a1 > 199)
      {
        if (a1 > 201)
        {
          if (a1 == 202)
          {
            *v6 = xmmword_24BFECC08;
            strcpy(&v6[16], "ux4z{4ubu}xuvxq4SDA");
            v3 = sub_24BD6A20C(v6);
          }

          else
          {
            v3 = sub_24BD6A36C(v6);
          }
        }

        else if (a1 == 200)
        {
          *v6 = xmmword_24BFECBAF;
          v3 = sub_24BD6A3F0(v6);
        }

        else
        {
          *v6 = xmmword_24BFECBDD;
          *&v6[16] = unk_24BFECBED;
          *&v6[27] = unk_24BFECBF8;
          v3 = sub_24BD6A41C(v6);
        }

        goto LABEL_86;
      }

      switch(a1)
      {
        case 'j':
          strcpy(v6, "L8>%!)?$l8#l=9-(!)?$l*-%)(l#l?-:%+l#.&l*%)?");
          v3 = sub_24BD6A2BC(v6);
          goto LABEL_86;
        case 'k':
          strcpy(v6, "A53(,$2)a5.a04 %,$2)a' (-$%a./a2 7(/&a42%;a'(-$2");
          v3 = sub_24BD6A398(v6);
          goto LABEL_86;
        case 'l':
          *v6 = xmmword_24BFECB82;
          strcpy(&v6[16], "rzlw?y~vsz{?hvkw?zrokf?vqojk");
          v3 = sub_24BD6A3C4(v6);
          goto LABEL_86;
      }
    }

LABEL_85:
    *v6 = xmmword_24BFECECC;
    *&v6[14] = 0x5D061B06061154;
    v3 = sub_24BCE1904(v6);
    goto LABEL_86;
  }

  switch(a1)
  {
    case 1:
      *v6 = 0x1E58511E4A4B513ELL;
      strcpy(&v6[8], "S[SQLG");
      v3 = sub_24BCBCD64(v6);
      break;
    case 2:
      strcpy(&v6[15], "5(#");
      *v6 = xmmword_24BFEC755;
      v3 = sub_24BD193AC(v6);
      break;
    case 3:
      *&v6[32] = 595981;
      *v6 = xmmword_24BFEC88D;
      *&v6[16] = unk_24BFEC89D;
      v3 = sub_24BD6A20C(v6);
      break;
    case 4:
      *v6 = xmmword_24BFEC8B1;
      v3 = sub_24BD17C70(v6);
      break;
    case 5:
      *v6 = xmmword_24BFEC8CC;
      *&v6[12] = *(&xmmword_24BFEC8CC + 12);
      v3 = sub_24BD6A238(v6);
      break;
    case 6:
      *v6 = xmmword_24BFEC768;
      strcpy(&v6[11], "2{a2g|sds{~sp~w");
      v3 = sub_24BD17C70(v6);
      break;
    case 7:
      strcpy(v6, "R0397r43;>r&=r>=36r:;5:r?7!:");
      v3 = sub_24BD0B680(v6);
      break;
    case 8:
      *v6 = xmmword_24BFEC905;
      *&v6[12] = *(&xmmword_24BFEC905 + 12);
      v3 = sub_24BD6A238(v6);
      break;
    case 9:
      strcpy(v6, "Q<49q8q4<!%(");
      v3 = sub_24BCBCD64(v6);
      break;
    case 10:
      strcpy(v6, "*EZOXK^CED\nIKDIOFON");
      v3 = sub_24BD18A4C(v6);
      break;
    case 12:
      strcpy(v6, "S:=%2?:7s& 72");
      v3 = sub_24BCBD2F0(v6);
      break;
    case 13:
      strcpy(v6, "W16>;w#8w %>#2w$34");
      v3 = sub_24BD18A4C(v6);
      break;
    case 14:
      strcpy(v6, "\aniqfknc'rtcd");
      v3 = sub_24BCBD2F0(v6);
      break;
    case 15:
      strcpy(v6, "Q708=q%>q&#8%4q$5+");
      v3 = sub_24BD18A4C(v6);
      break;
    case 16:
      *v6 = xmmword_24BFEC7BF;
      strcpy(&v6[13], "D\nOXXEX");
      v3 = sub_24BCC3BF0(v6);
      break;
    case 17:
      strcpy(v6, "G)(g&1&.+&%+g 72");
      v3 = sub_24BD09DEC(v6);
      break;
    case 18:
      *v6 = xmmword_24BFEC7E6;
      *&v6[16] = unk_24BFEC7F6;
      *&v6[31] = 0x70617110C1313;
      v3 = sub_24BD6A188(v6);
      break;
    case 19:
      strcpy(v6, "[25(.==282>5/{=2(0");
      v3 = sub_24BD193AC(v6);
      break;
    case 20:
      strcpy(v6, "+MJBG\v_D\vLN_\vOBX@\vBEMDYFJ_BDE");
      v3 = sub_24BD6A1B4(v6);
      break;
    case 21:
      *v6 = xmmword_24BFEC83E;
      *&v6[16] = unk_24BFEC84E;
      *&v6[32] = xmmword_24BFEC85E;
      *&v6[46] = 0x454D4854430155;
      v3 = sub_24BD6A1E0(v6);
      break;
    case 22:
      *v6 = xmmword_24BFEC874;
      strcpy(&v6[9], "obbamozk.ckca|w");
      v3 = sub_24BD0C1E0(v6);
      break;
    case 23:
      *v6 = xmmword_24BFECE62;
      *&v6[16] = unk_24BFECE72;
      v3 = sub_24BD6A5D8(v6);
      break;
    case 24:
      *v6 = xmmword_24BFECE82;
      *&v6[16] = unk_24BFECE92;
      *&v6[30] = unk_24BFECEA0;
      v3 = sub_24BD6A3F0(v6);
      break;
    case 26:
      *v6 = xmmword_24BFEC921;
      *&v6[16] = unk_24BFEC931;
      strcpy(&v6[29], "NS[VS@_");
      v3 = sub_24BD186F0(v6);
      break;
    case 27:
      *v6 = xmmword_24BFEC946;
      v3 = sub_24BD6A264(v6);
      break;
    case 28:
      v3 = sub_24BD6A290(v6);
      break;
    default:
      goto LABEL_85;
  }

LABEL_86:
  result = sub_24BC836D4(a2, v3);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_24BD6A188(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 38; ++i)
  {
    a1[i] ^= v3;
  }

  a1[38] = 0;
  return result;
}

_BYTE *sub_24BD6A1B4(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 29; ++i)
  {
    a1[i] ^= v3;
  }

  a1[29] = 0;
  return result;
}

_BYTE *sub_24BD6A1E0(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 53; ++i)
  {
    a1[i] ^= v3;
  }

  a1[53] = 0;
  return result;
}

_BYTE *sub_24BD6A20C(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 35; ++i)
  {
    a1[i] ^= v3;
  }

  a1[35] = 0;
  return result;
}

_BYTE *sub_24BD6A238(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 27; ++i)
  {
    a1[i] ^= v3;
  }

  a1[27] = 0;
  return result;
}

_BYTE *sub_24BD6A264(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 58; ++i)
  {
    a1[i] ^= v3;
  }

  a1[58] = 0;
  return result;
}

_BYTE *sub_24BD6A290(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 80; ++i)
  {
    a1[i] ^= v3;
  }

  a1[80] = 0;
  return result;
}

_BYTE *sub_24BD6A2BC(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 47; ++i)
  {
    a1[i] ^= v3;
  }

  a1[47] = 0;
  return result;
}

_BYTE *sub_24BD6A2E8(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 51; ++i)
  {
    a1[i] ^= v3;
  }

  a1[51] = 0;
  return result;
}

_BYTE *sub_24BD6A314(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 60; ++i)
  {
    a1[i] ^= v3;
  }

  a1[60] = 0;
  return result;
}

_BYTE *sub_24BD6A340(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 68; ++i)
  {
    a1[i] ^= v3;
  }

  a1[68] = 0;
  return result;
}

_BYTE *sub_24BD6A36C(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 55; ++i)
  {
    a1[i] ^= v3;
  }

  a1[55] = 0;
  return result;
}

_BYTE *sub_24BD6A398(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 48; ++i)
  {
    a1[i] ^= v3;
  }

  a1[48] = 0;
  return result;
}

_BYTE *sub_24BD6A3C4(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 44; ++i)
  {
    a1[i] ^= v3;
  }

  a1[44] = 0;
  return result;
}

_BYTE *sub_24BD6A3F0(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 45; ++i)
  {
    a1[i] ^= v3;
  }

  a1[45] = 0;
  return result;
}

_BYTE *sub_24BD6A41C(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 42; ++i)
  {
    a1[i] ^= v3;
  }

  a1[42] = 0;
  return result;
}

_BYTE *sub_24BD6A448(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 56; ++i)
  {
    a1[i] ^= v3;
  }

  a1[56] = 0;
  return result;
}

_BYTE *sub_24BD6A474(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 64; ++i)
  {
    a1[i] ^= v3;
  }

  a1[64] = 0;
  return result;
}

uint64_t sub_24BD6A4A0(uint64_t a1)
{
  v3 = vld1q_dup_s8(a1);
  v2 = a1 + 1;
  for (i = 1; i != 49; i += 16)
  {
    *(a1 + i) = veorq_s8(v3, *(a1 + i));
  }

  *(a1 + 49) = 0;
  return v2;
}

_BYTE *sub_24BD6A4D0(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 34; ++i)
  {
    a1[i] ^= v3;
  }

  a1[34] = 0;
  return result;
}

_BYTE *sub_24BD6A4FC(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 39; ++i)
  {
    a1[i] ^= v3;
  }

  a1[39] = 0;
  return result;
}

_BYTE *sub_24BD6A528(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 30; ++i)
  {
    a1[i] ^= v3;
  }

  a1[30] = 0;
  return result;
}

int8x16_t *sub_24BD6A554(uint64_t a1)
{
  v1 = a1;
  v2 = vld1q_dup_s8(v1->i8);
  v1 = (v1 + 1);
  *v1 = veorq_s8(v2, *v1);
  *(a1 + 17) = veorq_s8(v2, *(a1 + 17));
  *(a1 + 33) = 0;
  return v1;
}

_BYTE *sub_24BD6A580(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 32; ++i)
  {
    a1[i] ^= v3;
  }

  a1[32] = 0;
  return result;
}

_BYTE *sub_24BD6A5AC(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 50; ++i)
  {
    a1[i] ^= v3;
  }

  a1[50] = 0;
  return result;
}

_BYTE *sub_24BD6A5D8(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 31; ++i)
  {
    a1[i] ^= v3;
  }

  a1[31] = 0;
  return result;
}

uint64_t sub_24BD6A604(unsigned int a1)
{
  if (a1)
  {
    sub_24BD6A63C();
  }

  else
  {
    std::system_category();
  }

  return a1;
}

void (***sub_24BD6A63C())(std::error_category *__hidden this)
{
  if ((atomic_load_explicit(&qword_27F079000, memory_order_acquire) & 1) == 0)
  {
    sub_24BFB8E88();
  }

  return &off_281C0BC70;
}

uint64_t sub_24BD6A674(uint64_t a1, void *a2)
{
  v16[0] = 0;
  v17 = 0;
  sub_24BC9C7E0(a2, v16);
  v2 = v16[0];
  if (!v16[0])
  {
    goto LABEL_5;
  }

  if (v16[0] == 1)
  {
    if (!v17[2])
    {
LABEL_5:
      v3 = 1;
      goto LABEL_19;
    }
  }

  else if (v16[0] == 2 && !((v17[1] - *v17) >> 4))
  {
    goto LABEL_5;
  }

  v15 = v16;
  sub_24BD6A7E4(&v15, v9);
  sub_24BD6A868(&v15, v5);
  while (!sub_24BCADD08(v9, v5))
  {
    sub_24BCA6F10(v9);
    ++v10;
  }

  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v6 < 0)
  {
    operator delete(v5[6]);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  v3 = 0;
  v2 = v16[0];
LABEL_19:
  sub_24BC9F18C(&v17, v2);
  return v3;
}

void sub_24BD6A794(_Unwind_Exception *a1, int a2)
{
  sub_24BC9F18C((v2 + 8), *(v3 - 48));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x24BD6A77CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BD6A7E4@<X0>(unsigned __int8 **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v7 = v4;
  v8 = 0;
  v9 = 0;
  v10 = 0x8000000000000000;
  v5 = *v4;
  if (*v4)
  {
    if (v5 == 2)
    {
      v9 = **(v4 + 1);
    }

    else if (v5 == 1)
    {
      v8 = **(v4 + 1);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return sub_24BD6BF78(a2, &v7);
}

uint64_t sub_24BD6A868@<X0>(unsigned __int8 **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v7 = v4;
  v8 = 0;
  v9 = 0;
  v10 = 0x8000000000000000;
  v5 = *v4;
  if (v5 == 2)
  {
    v9 = *(*(v4 + 1) + 8);
  }

  else if (v5 == 1)
  {
    v8 = *(v4 + 1) + 8;
  }

  else
  {
    v10 = 1;
  }

  return sub_24BD6BF78(a2, &v7);
}

uint64_t sub_24BD6A8E0(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  return a1;
}

void sub_24BD6A950(const std::error_code *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = 0;
  val = a1->__val_;
  std::error_code::message(&v2, a1);
  v6 = 0;
  LOBYTE(v5.__locale_) = 3;
  sub_24BCB0A6C();
}

void sub_24BD6ACA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int8 a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, unsigned __int8 a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  sub_24BC9F18C((v40 + 8), a9);
  sub_24BC9F18C((v41 - 96), *(v41 - 104));
  v43 = (v41 - 128);
  v44 = -64;
  do
  {
    sub_24BC9F18C(v43, *(v43 - 8));
    v43 -= 4;
    v44 += 32;
  }

  while (v44);
  v45 = &a40;
  v46 = -64;
  do
  {
    sub_24BC9F18C(v45, *(v45 - 8));
    v45 -= 4;
    v46 += 32;
  }

  while (v46);
  v47 = &a24;
  v48 = -64;
  do
  {
    sub_24BC9F18C(v47, *(v47 - 8));
    v47 -= 4;
    v48 += 32;
  }

  while (v48);
  for (i = 0; i != -64; i -= 32)
  {
    sub_24BC9F18C((&a32 + i), *(&a31 + i));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F18C(&a18, a17);
  _Unwind_Resume(a1);
}

void sub_24BD6AE44(void *a1, void *a2)
{
  v15[0] = 0;
  v16 = 0;
  sub_24BC9C7E0(a2, v15);
  v3 = sub_24BC9C8EC(v15, "error_code");
  LOBYTE(__p) = 0;
  v13 = 0;
  v4 = sub_24BCB01B0(v3, &__p);
  sub_24BC9F18C(&v13, __p);
  if ((v4 & 1) == 0)
  {
    v5 = sub_24BC9C8EC(v15, "error_code");
    v6 = sub_24BC9C8EC(v5, "value");
    LOBYTE(__p) = 0;
    v13 = 0;
    v7 = sub_24BCB01B0(v6, &__p);
    sub_24BC9F18C(&v13, __p);
    if ((v7 & 1) == 0)
    {
      v8 = sub_24BC9C8EC(v15, "error_code");
      v9 = sub_24BC9C8EC(v8, "value");
      LODWORD(__p) = 0;
      sub_24BD6C094(v9, &__p);
      v10 = __p;
      if (__p)
      {
        v11 = sub_24BD6A63C();
      }

      else
      {
        v11 = std::system_category();
      }

      *a1 = v10;
      a1[1] = v11;
    }

    sub_24BC836D4(&__p, "error_code");
    sub_24BC9CAB4(v15, &__p);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }
  }

  sub_24BC848F0(&__p);
  *(v15 + 8 * *(v14 - 24) + 272) = 2;
  sub_24BC9BD14(&v14);
}

void sub_24BD6B180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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
    JUMPOUT(0x24BD6B164);
  }

  _Unwind_Resume(a1);
}

void sub_24BD6B21C(const std::error_code *a1, uint64_t *a2)
{
  v4[71] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0D30(v4);
  sub_24BD6A950(a1);
}

void sub_24BD6B350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_24BD2741C(&a9, MEMORY[0x277D82810]);
  MEMORY[0x24C2547D0](v9 + 416);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD6B37C(void *a1, uint64_t *a2)
{
  v8[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;
  }

  sub_24BCB0EF0(v6);
  if ((v7[*(v6[0] - 24) + 16] & 5) == 0)
  {
    sub_24BD6AE44(a1, v6);
  }

  v6[0] = *MEMORY[0x277D82808];
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C2542E0](v7);
  std::istream::~istream();
  MEMORY[0x24C2547D0](v8);
  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BD6B4EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD6BA18(va, MEMORY[0x277D82808]);
  MEMORY[0x24C2547D0](v2 + 424);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD6B578(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 24))
  {
    return sub_24BC976F4(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_24BD6B588(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 56))
  {
    return sub_24BC98654(result + 32, a2, a3, a4);
  }

  return result;
}

uint64_t sub_24BD6B59C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (*(result + 56))
  {
    result = sub_24BC98654(result + 32, a2, a3, a4);
  }

  *a5 = a2;
  a5[1] = a3;
  return result;
}

uint64_t sub_24BD6B5E8(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_24BCA2DD0(v8, a1 + 64);
  if (v9 && (*(*v9 + 48))(v9))
  {
    v2 = sub_24BD6A63C();
    sub_24BC836D4(__p, "Operation canceled");
    if (*(a1 + 56))
    {
      sub_24BC98654(a1 + 32, 10, v2, __p);
    }

    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  sub_24BC9F10C(v8);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_24BD6B6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F10C(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD6B70C(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  sub_24BCA2DD0(v10, a1 + 64);
  if (v11 && (*(*v11 + 48))(v11))
  {
    v4 = sub_24BD6A63C();
    sub_24BC836D4(__p, "Operation canceled");
    if (*(a1 + 56))
    {
      sub_24BC98654(a1 + 32, 10, v4, __p);
    }

    *a2 = 10;
    a2[1] = v4;
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  sub_24BC9F10C(v10);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_24BD6B80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_24BC9F10C(&a15);
  _Unwind_Resume(a1);
}

const std::error_category *sub_24BD6B844(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    LODWORD(v8) = a3;
    result = sub_24BD6A63C();
    v8 = v8;
    *a1 = v8;
    a1[1] = result;
    if (!*(a2 + 24))
    {
      return result;
    }

    v9 = sub_24BD6A63C();
  }

  else
  {
    result = std::system_category();
    *a1 = 0;
    a1[1] = result;
    if (!*(a2 + 24))
    {
      return result;
    }

    v9 = result;
    v8 = 0;
  }

  return sub_24BC98654(a2, v8, v9, a4);
}

uint64_t *sub_24BD6B8E0(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  sub_24BC836D4(__p, &unk_24C0435AF);
  if (*(a2 + 24))
  {
    sub_24BC976F4(a2, __p, 0.0);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_24BD6B94C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BD6B96C(uint64_t *a1)
{
  v2 = *a1;
  sub_24BC836D4(__p, &unk_24C0435AF);
  if (*(v2 + 24))
  {
    sub_24BC976F4(v2, __p, 1.0);
  }

  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_24BD6B9E0(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD6BA18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x24C2542E0](a1 + 2);

  return std::istream::~istream();
}

void sub_24BD6BAE0(uint64_t a1)
{
  sub_24BC9F18C((a1 + 32), *(a1 + 24));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_24BD6BF2C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_24BD6BAE0(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_24BD6BF78(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v3;
  sub_24BC836D4((a1 + 48), "0");
  sub_24BC836D4((a1 + 72), &unk_24C0435AF);
  return a1;
}

unsigned __int8 *sub_24BD6C094(unsigned __int8 *result, int *a2)
{
  v2 = result;
  v3 = *result;
  if (v3 > 5)
  {
    if (v3 == 7)
    {
      v4 = *(result + 1);
      goto LABEL_10;
    }

    if (v3 == 6)
    {
      goto LABEL_4;
    }

LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = sub_24BCA6188(v2);
    sub_24BC836D4(&v9, v6);
    v7 = std::string::insert(&v9, 0, "type must be number, but is ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_24BCA5E44(302, &v10, exception);
    __cxa_throw(exception, &unk_285F930E0, sub_24BCA5F88);
  }

  if (v3 == 4)
  {
    v4 = result[8];
    goto LABEL_10;
  }

  if (v3 != 5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = *(result + 2);
LABEL_10:
  *a2 = v4;
  return result;
}

void sub_24BD6C194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

BOOL sub_24BD6C1F4(uint64_t a1, std::string *a2, int a3)
{
  v5 = *a1;
  v11 = 0;
  sub_24BCCA6F0(&__p, a2);
  v6 = sub_24BD4C428(v5, &v11, &__p, a3);
  v7 = v11;
  v8 = *(a1 + 16);
  *(a1 + 16) = v6;

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7 == 0;
}

void sub_24BD6C290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_24BD6C2AC@<S0>(unsigned int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>, float a7@<S3>, float a8@<S4>, float a9@<S5>)
{
  v9 = (a1 / a6) * a4;
  v10 = (a2 / a7) * a4;
  v11 = v9 + ((-a8 / a6) * a4);
  v12 = (a9 / a7) * a4;
  *a3 = (a4 + a4) / (v11 - (v11 - v9));
  *(a3 + 12) = 0;
  *(a3 + 4) = 0;
  *(a3 + 20) = (a4 + a4) / (v12 - (v12 - v10));
  *(a3 + 24) = 0;
  *(a3 + 32) = (v11 + (v11 - v9)) / (v11 - (v11 - v9));
  *(a3 + 36) = (v12 + (v12 - v10)) / (v12 - (v12 - v10));
  *(a3 + 40) = -a5 / (a5 - a4);
  *(a3 + 44) = 3212836864;
  *(a3 + 52) = 0;
  result = -(a5 * a4) / (a5 - a4);
  *(a3 + 56) = result;
  *(a3 + 60) = 0;
  return result;
}

float sub_24BD6C350(__int128 *a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a1 + 20);
  *(&v3 + 1) = *(a1 + 4);
  v4 = *a1;
  DWORD2(v4) = *(a1 + 2);
  HIDWORD(v4) = *(a1 + 4);
  v14[0] = v4;
  v14[1] = v3;
  v15 = *(a1 + 10);
  v5 = *(a1 + 14);
  v12 = 0;
  v13 = 0;
  v6 = v14;
  do
  {
    v7 = 0;
    v8 = 0.0;
    v9 = v6;
    do
    {
      v10 = *v9;
      v9 += 3;
      v8 = v8 + (v10 * *(a2 + v7));
      v7 += 4;
    }

    while (v7 != 12);
    *(&v12 + v2++) = v8;
    v6 = (v6 + 4);
  }

  while (v2 != 3);
  return v5 + *&v13;
}

void sub_24BD6C3DC(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 104);
  v2 = *(a1 + 112);
  if (v2 != v3)
  {
    v6 = 0;
    v7 = 1.1755e-38;
    v8 = 3.4028e38;
    do
    {
      v9 = (*(a1 + 8) + 16 * *(a1 + 176));
      v11 = *v9;
      v10 = v9[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v10);
        v3 = *(a1 + 104);
        v2 = *(a1 + 112);
      }

      v13 = *(*(v11 + 40) + 16 * v6);
      v12 = sub_24BD6C350(a2, &v13);
      if (v12 > 0.0000001 && v7 < v12)
      {
        v7 = v12;
      }

      if (v12 > 0.0000001 && v12 < v8)
      {
        v8 = v12;
      }

      ++v6;
    }

    while (v6 < (v2 - v3) >> 2);
  }
}

uint64_t sub_24BD6C508(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v39 = *MEMORY[0x277D85DE8];
  v16 = objc_autoreleasePoolPush();
  v17 = *(a2 + 8) - *a2;
  if (((*(a1 + 160) - *(a1 + 152)) & 0x3FFFFFFFCLL) != 0 && (v17 & 0x3FFFFFFFC0) != 0)
  {
    v34 = *(a1 + 160) - *(a1 + 152);
    v19 = (v17 >> 6);
    if (v19 == (*(a2 + 32) - *(a2 + 24)) >> 6 && v19 == (*(a2 + 56) - *(a2 + 48)) >> 3 && v19 == (*(a2 + 80) - *(a2 + 72)) >> 3)
    {
      v20 = *(a2 + 96);
      v21 = *(a2 + 104);
      if (v19 == (v21 - v20) >> 3)
      {
        v33 = a1;
        v30 = a3;
        if (v21 == v20)
        {
LABEL_20:
          if (*(a2 + 147) != 1)
          {
            goto LABEL_27;
          }

          sub_24BC836D4(&__dst, off_27F078FB8[0]);
          v36 = 0;
          v35 = 0;
          __val = sub_24BCCAA0C((v33 + 56), &v35, &__dst);
          if (v38 < 0)
          {
            operator delete(__dst);
          }

          sub_24BC836D4(&__dst, off_27F078F78[0]);
          v35 = 0;
          v31 = sub_24BCB74D4((v33 + 80), &v35, &__dst);
          if (v38 < 0)
          {
            operator delete(__dst);
          }

          if (__val != -1 && v31 != -1)
          {
LABEL_27:
            if (*(a2 + 145) == 1)
            {
              sub_24BC8EED8(v30);
              sub_24BD43724(v30, v19);
            }

            if (*(a2 + 146) == 1)
            {
              sub_24BC8EED8(a4);
              sub_24BD43724(a4, v19);
            }

            if (*(a2 + 147) == 1)
            {
              sub_24BC8EED8(a5);
              sub_24BD43724(a5, v19);
            }

            if (*(a2 + 148) == 1)
            {
              sub_24BC8EED8(a6);
              sub_24BD43724(a6, v19);
            }

            if (*(a2 + 149) == 1)
            {
              sub_24BC8EED8(a7);
              sub_24BD43724(a7, v19);
            }

            if (*(a2 + 150) == 1)
            {
              sub_24BC8EED8(a8);
              sub_24BD43724(a8, v19);
            }

            operator new();
          }
        }

        else
        {
          v22 = 0;
          v23 = 0;
          v24 = (v20 + 4);
          v25 = 1;
          while (1)
          {
            v26 = *(v24 - 1);
            if (!v26 || !*v24)
            {
              break;
            }

            if (v22 <= v26)
            {
              v22 = *(v24 - 1);
            }

            if (v23 <= *v24)
            {
              v23 = *v24;
            }

            v24 += 2;
            if (v19 <= v25++)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v16);
  v28 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_24BD6E434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, void *a30, void *a31)
{
  v33 = *(v31 - 152);
  if (v33)
  {
    *(v31 - 144) = v33;
    operator delete(v33);
  }

  sub_24BD6EA50((v31 - 128));
  _Unwind_Resume(a1);
}

uint64_t sub_24BD6E9E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, float *a3@<X8>)
{
  v3 = 0;
  *a3 = xmmword_24BFECF80;
  *(a3 + 1) = unk_24BFECF90;
  *(a3 + 2) = xmmword_24BFECFA0;
  *(a3 + 3) = unk_24BFECFB0;
  do
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v6 = 0;
      v7 = 0.0;
      do
      {
        v7 = v7 + (*(result + 4 * v6) * *(v5 + v6));
        v6 += 4;
      }

      while (v6 != 16);
      a3[v3 | (4 * v4++)] = v7;
      v5 += 16;
    }

    while (v4 != 4);
    ++v3;
    result += 4;
  }

  while (v3 != 4);
  return result;
}

id **sub_24BD6EA50(id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x24C2548B0](v2, 0x80C40D6874129);
  }

  return a1;
}

void *sub_24BD6EAB0(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_24BD6EB38(a1 + 18);
  a1[22] = a1[21];
  qword_27F079008 = a4;
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = a4 * a2;
  }

  sub_24BD6EB88(a1 + 18, a2);

  return sub_24BD6EC64(a1 + 21, 2 * v8);
}

void sub_24BD6EB38(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    v4 = *(i - 40);
    if (v4)
    {
      *(i - 32) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void *sub_24BD6EB88(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_24BD6FB54(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

void sub_24BD6EC50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD6FCF4(va);
  _Unwind_Resume(a1);
}

void *sub_24BD6EC64(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      sub_24BCA1868(result, a2);
    }

    sub_24BC8E01C();
  }

  return result;
}

uint64_t sub_24BD6ED04(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_24BD6EB38(a1 + 18);
  a1[22] = a1[21];
  qword_27F079008 = a4;
  sub_24BD6ED94(a1 + 18, a2);
  v8 = a4 * a2;
  if (a3)
  {
    v8 = a3;
  }

  sub_24BD6EC64(a1 + 21, 2 * v8);
  return 1;
}

void sub_24BD6ED84(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x24BD6ED70);
}

void sub_24BD6ED94(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_24BD6FD8C(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 48 * a2;
    while (v3 != v7)
    {
      v8 = *(v3 - 40);
      if (v8)
      {
        *(v3 - 32) = v8;
        operator delete(v8);
      }

      v3 -= 48;
    }

    a1[1] = v7;
  }
}

void sub_24BD6EE48(void *a1, int a2, int a3, float a4, float a5)
{
  v13 = 0uLL;
  sub_24BD6EF1C((a1 + 21), &v13);
  v10 = a1[22];
  v12 = ((v10 - a1[21]) >> 4) - 1;
  *(v10 - 16) = a4;
  *(v10 - 12) = a4;
  sub_24BC97D60((a1[18] + 48 * a2 + 8), &v12);
  *(v10 - 8) = a2;
  *(v10 - 4) = a3;
  v13 = 0uLL;
  sub_24BD6EF1C((a1 + 21), &v13);
  v11 = a1[22];
  LODWORD(v13) = ((v11 - a1[21]) >> 4) - 1;
  *(v11 - 16) = a5;
  *(v11 - 12) = a5;
  sub_24BC97D60((a1[18] + 48 * a3 + 8), &v13);
  *(v11 - 8) = a3;
  *(v11 - 4) = a2;
}

void sub_24BD6EF1C(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_24BC8E01C();
    }

    v9 = v4 - *a1;
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

    if (v10)
    {
      sub_24BCA1868(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
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

float sub_24BD6EFF4(uint64_t a1)
{
  *(a1 + 8) = 0;
  v1 = *(a1 + 144);
  v2 = *(a1 + 152) - v1;
  if (v2)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * (v2 >> 4);
    if (v3 <= 1)
    {
      v3 = 1;
    }

    v4 = (v1 + 4);
    do
    {
      result = *(v4 - 1);
      *v4 = result;
      v4 += 12;
      --v3;
    }

    while (v3);
  }

  v6 = *(a1 + 168);
  v7 = *(a1 + 176) - v6;
  if (v7)
  {
    v8 = v7 >> 4;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = (v6 + 4);
    do
    {
      result = *(v9 - 1);
      *v9 = result;
      v9 += 4;
      --v8;
    }

    while (v8);
  }

  return result;
}

float sub_24BD6F060(uint64_t a1, int a2, float a3, float a4)
{
  v4 = (*(a1 + 144) + 48 * a2);
  *v4 = a3 - a4;
  v4[1] = a3 - a4;
  if (a4 < a3)
  {
    a3 = a4;
  }

  result = a3 + *(a1 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24BD6F08C(uint64_t a1)
{
  v1 = *(a1 + 112);
  v13[0] = *(a1 + 96);
  v13[1] = v1;
  v13[2] = *(a1 + 128);
  v3 = *(a1 + 64);
  v2 = (a1 + 48);
  v4 = *(a1 + 80);
  v12[0] = *(a1 + 48);
  v12[1] = v3;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  v12[2] = v4;
  v5 = *(a1 + 144);
  if ((-1431655765 * ((*(a1 + 152) - v5) >> 4)) >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v5 + v7;
      v10 = *(v9 + 4);
      if (v10 <= 0.0)
      {
        if (v10 < 0.0)
        {
          *(v9 + 32) = xmmword_24BFECFD0;
          v14 = v8;
          sub_24BD6F8F8(v2, &v14);
        }

        else
        {
          *(v9 + 32) = xmmword_24BFECFC0;
        }
      }

      else
      {
        *(v9 + 32) = xmmword_24BFECFE0;
        v14 = v8;
        sub_24BD6F8F8(v2, &v14);
      }

      ++v8;
      v5 = *(a1 + 144);
      v7 += 48;
    }

    while (v8 < (-1431655765 * ((*(a1 + 152) - v5) >> 4)));
  }

  sub_24BCA102C(v12);
  return sub_24BCA102C(v13);
}

void sub_24BD6F1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_24BCA102C(va);
  sub_24BCA102C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD6F1E8(void *a1)
{
  v1 = a1[11];
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    v3 = *(*(a1[7] + ((a1[10] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (a1[10] & 0x3FFLL));
    ++a1[10];
    a1[11] = v1 - 1;
    sub_24BD6FF8C((a1 + 6), 1);
    v4 = a1[18] + 48 * v3;
    if (*(v4 + 40))
    {
      v5 = *(v4 + 8);
      if (*(v4 + 16) != v5)
      {
        break;
      }
    }

LABEL_16:
    v1 = a1[11];
    if (!v1)
    {
      return 0;
    }
  }

  v6 = 0;
  while (1)
  {
    v7 = *(v5 + 4 * v6);
    v8 = a1[21];
    v9 = v8 + 16 * v7;
    v10 = *(v9 + 12);
    v11 = (a1[18] + 48 * v10);
    v12 = v11[10];
    if (*(v4 + 40) != 1)
    {
      break;
    }

    if (v12 == 1 || *(v9 + 4) <= 0.0)
    {
      goto LABEL_15;
    }

    if (v12 == 2)
    {
      v19 = v3;
      sub_24BD6F8F8(a1 + 6, &v19);
      v16 = a1;
      v17 = v3;
      v18 = v10;
      goto LABEL_21;
    }

    v19 = *(v9 + 12);
    sub_24BD6F8F8(a1 + 6, &v19);
    v13 = 1;
LABEL_14:
    v11[8] = v3;
    v11[9] = v7;
    v14 = *(v4 + 44) + 1;
    v11[10] = v13;
    v11[11] = v14;
LABEL_15:
    ++v6;
    v5 = *(v4 + 8);
    if (v6 >= (*(v4 + 16) - v5) >> 2)
    {
      goto LABEL_16;
    }
  }

  if (v12 == 2)
  {
    goto LABEL_15;
  }

  LODWORD(v7) = v7 ^ 1;
  if (*(v8 + 16 * v7 + 4) <= 0.0)
  {
    goto LABEL_15;
  }

  if (v12 != 1)
  {
    v19 = *(v9 + 12);
    sub_24BD6F8F8(a1 + 6, &v19);
    v13 = 2;
    goto LABEL_14;
  }

  v19 = v3;
  sub_24BD6F8F8(a1 + 6, &v19);
  v16 = a1;
  v17 = v10;
  v18 = v3;
LABEL_21:
  sub_24BD6F3A4(v16, v17, v18, v7);
  return 1;
}

void sub_24BD6F3A4(uint64_t a1, int a2, int a3, int a4)
{
  v7 = a1 + 24;
  *(a1 + 32) = *(a1 + 24);
  v14 = a4;
  sub_24BC97D60((a1 + 24), &v14);
  for (i = *(v7 + 120); ; i = *(a1 + 144))
  {
    v9 = i + 48 * a2;
    if (*(v9 + 32) == -11)
    {
      break;
    }

    a2 = *(v9 + 32);
    v13 = *(v9 + 36);
    sub_24BC97D60(v7, &v13);
  }

  *(a1 + 12) = a2;
  v10 = *(a1 + 144) + 48 * a3;
  for (j = *(v10 + 32); j != -10; j = *(v10 + 32))
  {
    a3 = j;
    v12 = *(v10 + 36);
    sub_24BC97D60(v7, &v12);
    v10 = *(a1 + 144) + 48 * a3;
  }

  *(a1 + 16) = a3;
}

float sub_24BD6F484(uint64_t a1)
{
  v2 = *(a1 + 144);
  v3 = *(a1 + 12);
  v4 = v2 + 48 * v3;
  v5 = v2 + 48 * *(a1 + 16);
  v6 = *(v4 + 4);
  if (v6 <= -*(v5 + 4))
  {
    v7 = *(v4 + 4);
  }

  else
  {
    v7 = -*(v5 + 4);
  }

  v8 = *(a1 + 24);
  v9 = *(a1 + 32) - v8;
  if (v9)
  {
    v10 = v9 >> 2;
    if ((v9 >> 2) <= 1)
    {
      v10 = 1;
    }

    do
    {
      v11 = *v8++;
      v12 = *(a1 + 168) + 16 * v11;
      if (*(v12 + 4) < v7)
      {
        v7 = *(v12 + 4);
      }

      --v10;
    }

    while (v10);
  }

  *(v4 + 4) = v6 - v7;
  v13 = v7 + *(v5 + 4);
  *(v5 + 4) = v13;
  if (fabsf(*(v4 + 4)) <= 1.1755e-38)
  {
    *(v4 + 32) = 0x1300000013;
    *(v4 + 44) = 0;
    v27 = v3;
    sub_24BD6F8F8((a1 + 96), &v27);
    v13 = *(v5 + 4);
  }

  if (fabsf(v13) <= 1.1755e-38)
  {
    *(v5 + 32) = 0x1300000013;
    *(v5 + 44) = 0;
    v27 = *(a1 + 16);
    sub_24BD6F8F8((a1 + 96), &v27);
  }

  v14 = *(a1 + 24);
  if (*(a1 + 32) != v14)
  {
    for (i = 0; i < (*(a1 + 32) - v14) >> 2; ++i)
    {
      v16 = *(v14 + 4 * i);
      v17 = *(a1 + 168);
      v18 = v17 + 16 * v16;
      v19 = *(v18 + 4);
      *(v18 + 4) = v19 - v7;
      *(v17 + 16 * (v16 ^ 1) + 4) = v7 + *(v17 + 16 * (v16 ^ 1) + 4);
      if (vabds_f32(v19, v7) <= 1.1755e-38)
      {
        v20 = *(a1 + 144);
        v22 = *(v18 + 8);
        v21 = *(v18 + 12);
        v23 = v20 + 48 * v22;
        v24 = v20 + 48 * v21;
        v25 = *(v23 + 40);
        if (v25 != 2)
        {
          if (v25 != 1 || *(v24 + 40) != 1)
          {
            goto LABEL_24;
          }

          *(v24 + 32) = 0x1300000013;
          *(v24 + 44) = 0;
          v27 = v21;
          goto LABEL_23;
        }

        if (*(v24 + 40) == 2)
        {
          *(v23 + 32) = 0x1300000013;
          *(v23 + 44) = 0;
          v27 = v22;
LABEL_23:
          sub_24BD6F8F8((a1 + 96), &v27);
        }
      }

LABEL_24:
      v14 = *(a1 + 24);
    }
  }

  result = v7 + *(a1 + 8);
  *(a1 + 8) = result;
  return result;
}

BOOL sub_24BD6F680(uint64_t a1, int a2)
{
  v2 = *(a1 + 144);
  if (!*(v2 + 48 * a2 + 40))
  {
    return 0;
  }

  do
  {
    a2 = *(v2 + 48 * a2 + 32);
  }

  while ((a2 + 20) > 0xA || ((1 << (a2 + 20)) & 0x601) == 0);
  return a2 != -20;
}

uint64_t sub_24BD6F6D0(uint64_t result)
{
  v1 = *(result + 136);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  do
  {
    v3 = *(*(v2[13] + ((v2[16] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v2[16] & 0x3FFLL));
    ++v2[16];
    v2[17] = v1 - 1;
    result = sub_24BD6FF8C((v2 + 12), 1);
    v4 = v2[18];
    v5 = v4 + 48 * v3;
    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    v8 = v7 - v6;
    if (v7 == v6)
    {
      goto LABEL_30;
    }

    v9 = 0;
    v10 = 0;
    v11 = v8 >> 2;
    v12 = v2[21];
    v13 = *(v5 + 40);
    if (v11 <= 1)
    {
      v11 = 1;
    }

    v14 = -1;
    v15 = -1;
    do
    {
      if (!v13)
      {
        goto LABEL_19;
      }

      v16 = *(v6 + 4 * v10);
      v17 = v12 + 16 * v16;
      result = *(v17 + 12);
      v18 = v4 + 48 * result;
      if (v13 != *(v18 + 40))
      {
        goto LABEL_19;
      }

      if (v13 == 1)
      {
        v17 = v12 + 16 * (v16 ^ 1);
LABEL_12:
        if (fabsf(*(v17 + 4)) <= 1.1755e-38)
        {
          goto LABEL_19;
        }

        goto LABEL_13;
      }

      if (v13 == 2)
      {
        goto LABEL_12;
      }

LABEL_13:
      v19 = result;
      while (1)
      {
        v19 = *(v4 + 48 * v19 + 32);
        if (v19 == -20)
        {
          break;
        }

        if ((v19 + 9) >= 0xFFFFFFFE)
        {
          v20 = *(v18 + 44);
          if (!v9 || v9 > v20)
          {
            v15 = v16 ^ (v13 == 1);
            v9 = v20;
            v14 = result;
          }

          break;
        }
      }

LABEL_19:
      ++v10;
    }

    while (v10 != v11);
    if (v14 != -1)
    {
      *(v5 + 32) = v14;
      *(v5 + 36) = v15;
      *(v5 + 44) = *(v4 + 48 * v14 + 44) + 1;
      goto LABEL_31;
    }

    v21 = 0;
    do
    {
      v22 = *(v5 + 40);
      if (v22)
      {
        v23 = *(v6 + 4 * v21);
        v24 = v2[21];
        v25 = *(v24 + 16 * v23 + 12);
        v26 = v2[18] + 48 * v25;
        if (v22 == *(v26 + 40))
        {
          if (*(v26 + 32) == v3)
          {
            *(v26 + 32) = 0x1300000013;
            *(v26 + 44) = 0;
            v27 = v25;
            result = sub_24BD6F8F8(v2 + 12, &v27);
            v24 = v2[21];
          }

          if (*(v24 + 16 * (v23 ^ 1) + 4) > 0.0)
          {
            v28 = v25;
            result = sub_24BD6F8F8(v2 + 6, &v28);
          }
        }
      }

      ++v21;
      v6 = *(v5 + 8);
    }

    while (v21 < (*(v5 + 16) - v6) >> 2);
LABEL_30:
    *(v5 + 40) = 0;
LABEL_31:
    v1 = v2[17];
  }

  while (v1);
  return result;
}

void *sub_24BD6F8F8(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_24BD6F980(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_24BD6F980(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_24BC925A0(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_24BCA0C04(a1, &v10);
}

void sub_24BD6FB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BD6FB54(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BD6FBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      *a4 = *v6;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(a4 + 32) = *(v6 + 32);
      v6 += 48;
      a4 += 48;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 8);
      if (v7)
      {
        *(v5 + 16) = v7;
        operator delete(v7);
      }

      v5 += 48;
    }
  }

  return sub_24BD6FC74(v9);
}

uint64_t sub_24BD6FC74(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BD6FCAC(a1);
  }

  return a1;
}

void sub_24BD6FCAC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 40);
    if (v3)
    {
      *(v1 - 32) = v3;
      operator delete(v3);
    }

    v1 -= 48;
  }
}

uint64_t sub_24BD6FCF4(uint64_t a1)
{
  sub_24BD6FD2C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24BD6FD2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 48;
    v5 = *(v2 - 40);
    if (v5)
    {
      *(v2 - 32) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 48;
    }
  }
}

uint64_t *sub_24BD6FD8C(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = v5 + 48 * a2;
      v11 = 48 * a2;
      do
      {
        result = sub_24BD6FF28(v5);
        v5 += 48;
        v11 -= 48;
      }

      while (v11);
      v5 = v10;
    }

    v3[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 4);
    v7 = v6 + a2;
    if (v6 + a2 > 0x555555555555555)
    {
      sub_24BC8E01C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 4);
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

    v23 = result;
    if (v9)
    {
      sub_24BD6FB54(result, v9);
    }

    v12 = 48 * v6;
    v20 = 0;
    v21 = v12;
    v22 = v12;
    v13 = 3 * a2;
    v14 = v12 + 48 * a2;
    v15 = 16 * v13;
    do
    {
      sub_24BD6FF28(v12);
      v12 += 48;
      v15 -= 48;
    }

    while (v15);
    *&v22 = v14;
    v16 = v3[1];
    v17 = v21 + *v3 - v16;
    sub_24BD6FBAC(v3, *v3, v16, v17);
    v18 = *v3;
    *v3 = v17;
    v19 = v3[2];
    *(v3 + 1) = v22;
    *&v22 = v18;
    *(&v22 + 1) = v19;
    v20 = v18;
    v21 = v18;
    return sub_24BD6FCF4(&v20);
  }

  return result;
}

void sub_24BD6FEFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD6FCF4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD6FF28(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = xmmword_24BFECFC0;
  sub_24BCB8D20((a1 + 8), qword_27F079008);
  return a1;
}

void sub_24BD6FF70(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD6FF8C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x400)
  {
    a2 = 1;
  }

  if (v2 < 0x800)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }

  return v4 ^ 1u;
}

double sub_24BD6FFEC(uint64_t a1)
{
  *(a1 + 184) = 0;
  result = 0.0;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_24BD70020(uint64_t a1)
{
  v2 = (a1 + 144);
  sub_24BD6EB38((a1 + 144));
  v3 = *(a1 + 168);
  *(a1 + 176) = v3;
  *(a1 + 8) = 0;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v6 = v2;
  sub_24BD701CC(&v6);
  sub_24BCA102C((a1 + 96));
  sub_24BCA102C((a1 + 48));
  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_24BD7009C(uint64_t a1)
{
  sub_24BD6EB38((a1 + 144));
  *(a1 + 176) = *(a1 + 168);
  *(a1 + 8) = 0;
  *a1 = 0;
}

uint64_t sub_24BD700DC(void *a1, float a2, float a3)
{
  v6 = sub_24BD6EE34(a1);
  sub_24BD6F060(a1, v6, a2, a3);
  return v6;
}

float sub_24BD70134(uint64_t a1, float *a2)
{
  sub_24BD70164(a1);
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

uint64_t sub_24BD70164(void *a1)
{
  sub_24BD6F08C(a1);
  result = sub_24BD6F1E8(a1);
  if (result)
  {
    do
    {
      sub_24BD6F484(a1);
      sub_24BD6F6D0(a1);
      result = sub_24BD6F1E8(a1);
    }

    while ((result & 1) != 0);
  }

  return result;
}

void sub_24BD701CC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24BD6EB38(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_24BD70220(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 28) = -1;
  *(a1 + 36) = -1;
  *(a1 + 40) = xmmword_24BFECFF0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = -1;
  *(a1 + 76) = 0;
  *(a1 + 80) = -1;
  *(a1 + 88) = -1;
  *(a1 + 92) = xmmword_24BFECFF0;
  *(a1 + 108) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = -1;
  *(a1 + 136) = 0;
  *(a1 + 128) = 0;
  *(a1 + 200) = 0u;
  v3 = a1 + 200;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  v4 = (a1 + 176);
  *(a1 + 360) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 368) = -1;
  *(a1 + 376) = -1;
  *(a1 + 380) = xmmword_24BFECFF0;
  *(a1 + 396) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = -1;
  *(a1 + 416) = 0xFFFFFFFF00000000;
  *(a1 + 424) = -1;
  *(a1 + 432) = xmmword_24BFECFF0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0xFFFFFFFF00000000;
  *(a1 + 464) = 0xFFFFFFFFLL;
  *(a1 + 472) = a2;
  *(a1 + 160) = 1;
  sub_24BCB29DC(a1 + 296, (*(a2 + 112) - *(a2 + 104)) >> 2, 0);
  v5 = *(a1 + 304);
  if (v5 >= 1)
  {
    __p = *(v3 + 96);
    v18 = 0;
    sub_24BCA00C8(&__p, v5);
  }

  sub_24BC9A554(v4, (0xCCCCCCCCCCCCCCCDLL * ((*(*(a1 + 472) + 136) - *(*(a1 + 472) + 128)) >> 2)) >> 1);
  sub_24BC8CAB0(v3, 0xCCCCCCCCCCCCCCCDLL * ((*(*(a1 + 472) + 136) - *(*(a1 + 472) + 128)) >> 2));
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((*(*(a1 + 472) + 136) - *(*(a1 + 472) + 128)) >> 2);
  LOBYTE(v19) = 0;
  sub_24BC9FEFC(&__p, v6);
  v7 = *(a1 + 472);
  v8 = __p;
  if (*(v7 + 136) != *(v7 + 128))
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      if ((v8[v9 >> 6] & (1 << v9)) == 0)
      {
        *(*(a1 + 176) + 4 * v10) = v11 - 1;
        v12 = *(a1 + 472);
        v19 = v11 - 1;
        v13 = *sub_24BCB9024(v12 + 104, &v19);
        v8 = __p;
        *(__p + (v9 >> 6)) |= 1 << v9;
        *(v8 + ((v13 >> 3) & 0x1FFFFFF8)) |= 1 << v13;
        v14 = *(a1 + 200);
        *(v14 + 4 * v9) = v10;
        *(v14 + 4 * v13) = v10++;
        v7 = *(a1 + 472);
      }

      v9 = v11;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((*(v7 + 136) - *(v7 + 128)) >> 2) > v11++);
    goto LABEL_10;
  }

  if (__p)
  {
LABEL_10:
    operator delete(v8);
  }

  return a1;
}

void sub_24BD704B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v28 = v17;
  a14 = v16 + 144;
  sub_24BD740A8(&a14);
  v20 = *(v14 + 320);
  if (v20)
  {
    *(v14 + 328) = v20;
    operator delete(v20);
  }

  v21 = *(v16 + 96);
  if (v21)
  {
    operator delete(v21);
  }

  v22 = *(v14 + 272);
  if (v22)
  {
    operator delete(v22);
  }

  v23 = *(v14 + 248);
  if (v23)
  {
    *(v14 + 256) = v23;
    operator delete(v23);
  }

  v24 = *(v14 + 224);
  if (v24)
  {
    *(v14 + 232) = v24;
    operator delete(v24);
  }

  v25 = *v16;
  if (*v16)
  {
    *(v14 + 208) = v25;
    operator delete(v25);
  }

  v26 = *v28;
  if (*v28)
  {
    *(v14 + 184) = v26;
    operator delete(v26);
  }

  sub_24BD73DA4(v15, v19);
  v27 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(a1);
}

void sub_24BD70574(uint64_t a1, unsigned int a2, __n128 a3)
{
  *(a1 + 24) = a2;
  while (*(a1 + 168))
  {
    sub_24BD73E9C((a1 + 136), 0, &v73, a3);
    v5 = *v74;
    v73 = 0;
    *v74 = 0;
    if (v5)
    {
      sub_24BC9EC78(v5);
      if (*v74)
      {
        sub_24BC9EC78(*v74);
      }
    }
  }

  sub_24BC8CAB0(a1, (*(*(a1 + 472) + 112) - *(*(a1 + 472) + 104)) >> 2);
  v6 = *(a1 + 8) - *a1;
  if (v6 >= 1)
  {
    memset_pattern16(*a1, &unk_24BFED000, v6);
  }

  sub_24BC8CAB0((a1 + 224), (*(*(a1 + 472) + 112) - *(*(a1 + 472) + 104)) >> 2);
  v7 = *(a1 + 224);
  v8 = *(a1 + 232) - v7;
  if (v8 >= 1)
  {
    memset_pattern16(v7, &unk_24BFED000, v8);
  }

  sub_24BC9A554((a1 + 248), (*(*(a1 + 472) + 112) - *(*(a1 + 472) + 104)) >> 2);
  sub_24BCB29DC(a1 + 272, (*(*(a1 + 472) + 112) - *(*(a1 + 472) + 104)) >> 2, 0);
  v9 = *(a1 + 280);
  if (v9 >= 1)
  {
    v73 = *(a1 + 272);
    *v74 = 0;
    sub_24BCA00C8(&v73, v9);
  }

  v10 = *(a1 + 184) - *(a1 + 176);
  v11 = (v10 >> 2);
  sub_24BD70BA0(a1 + 344, v11);
  if ((v10 & 0x3FFFFFFFCLL) != 0)
  {
    v12 = 0;
    do
    {
      v80[0] = *(*(a1 + 176) + 4 * v12);
      if (*(sub_24BCB9024(*(a1 + 472) + 104, v80) + 12) == a2)
      {
        v13 = 0;
      }

      else
      {
        v14 = *(a1 + 472);
        v15 = sub_24BCB9024(v14 + 104, v80);
        v13 = *(sub_24BCB9024(v14 + 104, v15) + 12) != a2;
      }

      v16 = sub_24BCB9024(*(a1 + 472) + 104, v80);
      v17 = *(a1 + 472);
      v18 = sub_24BCB9024(v17 + 104, v80);
      v19 = sub_24BCB9024(v17 + 104, v18);
      sub_24BCB2008(v79, 3uLL);
      v21 = *(v16 + 16);
      v20 = (v16 + 16);
      if (v21 == -1)
      {
        v23 = 0;
      }

      else
      {
        sub_24BCD567C(*(a1 + 472), v20, v79);
        v22 = 0;
        v23 = 0;
        do
        {
          v23 |= *(v79[0] + v22) == a2;
          v22 += 4;
        }

        while (v22 != 12);
      }

      v25 = *(v19 + 16);
      v24 = (v19 + 16);
      if (v25 == -1)
      {
        v27 = 0;
      }

      else
      {
        sub_24BCD567C(*(a1 + 472), v24, v79);
        v26 = 0;
        v27 = 0;
        do
        {
          v27 |= *(v79[0] + v26) == a2;
          v26 += 4;
        }

        while (v26 != 12);
      }

      if ((v13 & (v23 | v27)) == 1)
      {
        v73 = -1;
        *v74 = -1;
        *&v74[4] = xmmword_24BFECFF0;
        v76 = 0;
        v75 = 0;
        v77 = -1;
        v78 = 0;
        if (v23)
        {
          v28 = v80;
        }

        else
        {
          v28 = sub_24BCB9024(*(a1 + 472) + 104, v80);
        }

        LODWORD(v73) = *v28;
        v29 = *(sub_24BCB9024(*(a1 + 472) + 104, &v73) + 12);
        v30 = *(a1 + 472);
        v31 = sub_24BCB9024(v30 + 104, &v73);
        v32 = *(sub_24BCB9024(v30 + 104, v31) + 12);
        HIDWORD(v76) = 0;
        *&v74[4] = 0;
        v33 = *(a1 + 472);
        v34 = *(v33 + 176);
        v35 = (*(v33 + 8) + 16 * v34);
        v37 = *v35;
        v36 = v35[1];
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v36);
          v33 = *(a1 + 472);
          v34 = *(v33 + 176);
          v38 = (*(v33 + 8) + 16 * v34);
          v39 = *v38;
          v36 = v38[1];
          v40 = *(*(v37 + 40) + 16 * v32);
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            v67 = v40;
            sub_24BC9EC78(v36);
            v40 = v67;
            v33 = *(a1 + 472);
            v34 = *(v33 + 176);
            v41 = (*(v33 + 8) + 16 * v34);
            v37 = v39;
            v39 = *v41;
            v36 = v41[1];
          }

          else
          {
            v37 = *v38;
          }
        }

        else
        {
          v40 = *(*(v37 + 40) + 16 * v32);
          v39 = *v35;
        }

        v42 = vsubq_f32(v40, *(*(v37 + 40) + 16 * v29));
        v43 = vmulq_f32(v42, v42);
        v43.i32[3] = 0;
        *&v74[8] = sqrtf(vaddv_f32(*&vpaddq_f32(v43, v43)));
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v36);
          v33 = *(a1 + 472);
          v34 = *(v33 + 176);
        }

        v44 = *(*(v39 + 40) + 16 * v29);
        v45 = (*(v33 + 8) + 16 * v34);
        v47 = *v45;
        v46 = v45[1];
        if (v46)
        {
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
          v68 = v44;
          sub_24BC9EC78(v46);
          v44 = v68;
          v33 = *(a1 + 472);
          v34 = *(v33 + 176);
          v48 = (*(v33 + 8) + 16 * v34);
          v49 = *v48;
          v46 = v48[1];
        }

        else
        {
          v49 = *v45;
        }

        v50 = vsubq_f32(v44, *(*(v47 + 40) + 16 * a2));
        v51 = vmulq_f32(v50, v50);
        v51.i32[3] = 0;
        *&v74[12] = sqrtf(vaddv_f32(*&vpaddq_f32(v51, v51)));
        if (v46)
        {
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v46);
          v33 = *(a1 + 472);
          v34 = *(v33 + 176);
        }

        v52 = *(*(v49 + 40) + 16 * v32);
        v53 = (*(v33 + 8) + 16 * v34);
        v55 = *v53;
        v54 = v53[1];
        if (v54)
        {
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
          v69 = v52;
          sub_24BC9EC78(v54);
          v52 = v69;
          v33 = *(a1 + 472);
          v34 = *(v33 + 176);
          v56 = (*(v33 + 8) + 16 * v34);
          v57 = *v56;
          v54 = v56[1];
        }

        else
        {
          v57 = *v53;
        }

        v58 = vsubq_f32(v52, *(*(v55 + 40) + 16 * a2));
        v59 = vmulq_f32(v58, v58);
        v59.i32[3] = 0;
        *&v74[16] = sqrtf(vaddv_f32(*&vpaddq_f32(v59, v59)));
        if (v54)
        {
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v54);
          v33 = *(a1 + 472);
          v34 = *(v33 + 176);
        }

        v72 = *(*(v57 + 40) + 16 * v29);
        v60 = (*(v33 + 8) + 16 * v34);
        v62 = *v60;
        v61 = v60[1];
        if (v61)
        {
          atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v61);
          v33 = *(a1 + 472);
          v34 = *(v33 + 176);
        }

        v71 = *(*(v62 + 40) + 16 * v32);
        v63 = (*(v33 + 8) + 16 * v34);
        v65 = *v63;
        v64 = v63[1];
        if (v64)
        {
          atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_24BC9EC78(v64);
        }

        v70 = *(*(v65 + 40) + 16 * a2);
        sub_24BD74B20(&v72, &v71, &v70, &v75);
        HIDWORD(v73) = v29;
        *v74 = a2;
        if (v23)
        {
          v66 = v20;
        }

        else
        {
          v66 = v24;
        }

        LODWORD(v77) = *v66;
        sub_24BD70C48(a1, &v73);
      }

      if (v79[0])
      {
        v79[1] = v79[0];
        operator delete(v79[0]);
      }

      ++v12;
    }

    while (v12 != v11);
  }

  *(*a1 + 4 * *(a1 + 24)) = 0;
}

void sub_24BD70B74(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 120);
  if (v3)
  {
    *(v1 - 112) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD70BA0(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_24BD741BC(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    while (v3 != v7)
    {
      v3 -= 3;
      v8 = v3;
      sub_24BD7411C(&v8);
    }

    *(a1 + 8) = v7;
  }
}

void sub_24BD70C48(uint64_t a1, float *a2)
{
  v2 = a2[6];
  if (v2 >= a2[5])
  {
    v2 = a2[5];
  }

  v3 = a2[9] + v2;
  operator new();
}

uint64_t sub_24BD70EB4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  if (v5 >= (*(a1 + 8) - *a1) >> 4)
  {
    sub_24BCB820C(a1, a2);
  }

  else
  {
    v6 = (*a1 + 16 * v5);
    v7 = *(a2 + 1);
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = v6[1];
    *v6 = v2;
    v6[1] = v7;
    if (v8)
    {
      sub_24BC9EC78(v8);
    }
  }

  v10 = *(a1 + 32);
  *(*a2 + 56) = v10;
  *(a1 + 32) = v10 + 1;
  sub_24BD74034(a1, v10);
  return 1;
}

void sub_24BD70F58(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x24BD70F48);
}

uint64_t sub_24BD70F68(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_24BD7442C(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    v4 = *(a2 + 16);
    *(v3 + 28) = *(a2 + 28);
    *(v3 + 16) = v4;
    *(v3 + 44) = *(a2 + 44);
    *(v3 + 48) = *(a2 + 48);
    *(v3 + 52) = *(a2 + 52);
    *(v3 + 68) = *(a2 + 68);
    result = v3 + 72;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_24BD70FE4(uint64_t a1, unsigned int *a2, int *a3)
{
  v6 = *(sub_24BCB9024(*(a1 + 472) + 104, a2) + 12);
  v7 = *a3;
  v8 = *(a1 + 472);
  v9 = sub_24BCB9024(v8 + 104, a2);
  result = *(sub_24BCB9024(v8 + 104, v9) + 12);
  if (v6 != v7)
  {
    if (result == *a3)
    {
      return *(sub_24BCB9024(*(a1 + 472) + 104, a2) + 12);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void sub_24BD71080(uint64_t *a1, uint64_t a2, __n128 a3)
{
  sub_24BD73E9C(a1 + 17, 0, &v12, a3);
  v5 = *(a1[43] + 24 * *(a1[25] + 4 * *(v12 + 4)));
  v6 = *(a1[43] + 24 * *(a1[25] + 4 * *(v12 + 4)) + 8) - v5;
  if (v6)
  {
    v7 = 0x8E38E38E38E38E39 * (v6 >> 3);
    if (v7 <= 1)
    {
      v7 = 1;
    }

    while (*v5 != v12)
    {
      v5 += 9;
      if (!--v7)
      {
        goto LABEL_9;
      }
    }

    v8 = v5[1];
    *v5 = 0;
    v5[1] = 0;
    if (v8)
    {
      sub_24BC9EC78(v8);
    }
  }

LABEL_9:
  v10 = v12;
  v9 = v13;
  v11 = *(v12 + 4);
  *(a2 + 12) = *(v12 + 16);
  *a2 = v11;
  *(a2 + 28) = *(v10 + 32);
  *(a2 + 32) = *(v10 + 36);
  *(a2 + 36) = *(v10 + 40);
  v12 = 0;
  v13 = 0;
  if (v9)
  {
    sub_24BC9EC78(v9);
    if (v13)
    {
      sub_24BC9EC78(v13);
    }
  }
}

void sub_24BD71178(uint64_t a1, __n128 a2)
{
  a2.n128_u64[0] = 0;
  v242 = 0;
  v243[0] = 0;
  v240 = 0;
  v241 = 0;
  v238 = 0;
  v239 = 0;
  v236 = -1;
  v237 = -1;
  v234 = -1;
  v235 = -1;
  v233 = -1;
  v231 = 0;
  *v232 = 0;
  v229 = 0;
  v230 = 0;
  v228 = 0;
  v227 = 0;
  if (*(a1 + 168))
  {
    v3 = (a1 + 424);
    v214 = (a1 + 388);
    do
    {
      *(a1 + 368) = -1;
      sub_24BD71080(a1, a1 + 420, a2);
      if (!sub_24BD7299C(a1, (a1 + 420)))
      {
        a2.n128_f64[0] = vabds_f32(*(a1 + 432), *(a1 + 436));
        if (a2.n128_f64[0] > 0.00000001)
        {
          v237 = sub_24BD72A20(a1, (a1 + 420), (a1 + 460));
          v4 = *(sub_24BCB9024(*(a1 + 472) + 104, (a1 + 420)) + 12);
          v5 = *(a1 + 424);
          v6 = *(a1 + 472);
          v7 = sub_24BCB9024(v6 + 104, (a1 + 420));
          v8 = *(sub_24BCB9024(v6 + 104, v7) + 8);
          if (v4 == v5)
          {
            v236 = v8;
            v235 = *(sub_24BCB9024(*(a1 + 472) + 104, &v236) + 8);
            v9 = *(a1 + 472);
            v10 = sub_24BCB9024(v9 + 104, &v236);
            v234 = *(sub_24BCB9024(v9 + 104, v10) + 12);
            v11 = *(a1 + 472);
            v12 = sub_24BCB9024(v11 + 104, (a1 + 420));
            v13 = v11 + 104;
          }

          else
          {
            v235 = v8;
            v236 = *(sub_24BCB9024(*(a1 + 472) + 104, &v235) + 8);
            v234 = *(sub_24BCB9024(*(a1 + 472) + 104, &v236) + 12);
            v13 = *(a1 + 472) + 104;
            v12 = (a1 + 420);
          }

          v233 = *(sub_24BCB9024(v13, v12) + 12);
          v243[0] = *(a1 + 432);
          v242 = *(a1 + 436);
          v241 = *(a1 + 448);
          v240 = 0;
          v14 = sub_24BD72A98(a1, (a1 + 420));
          v239 = LODWORD(v14);
          if (*&v242 > v14)
          {
            *&v242 = v14;
          }

          v15 = *(a1 + 472);
          v16 = *(v15 + 176);
          v17 = *(a1 + 424);
          v18 = (*(v15 + 8) + 16 * v16);
          v20 = *v18;
          v19 = v18[1];
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v19);
            v15 = *(a1 + 472);
            v16 = *(v15 + 176);
          }

          *v220 = *(*(v20 + 40) + 16 * v17);
          v21 = v233;
          v22 = (*(v15 + 8) + 16 * v16);
          v24 = *v22;
          v23 = v22[1];
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v23);
            v15 = *(a1 + 472);
            v16 = *(v15 + 176);
          }

          *__p = *(*(v24 + 40) + 16 * v21);
          v25 = v234;
          v26 = (*(v15 + 8) + 16 * v16);
          v28 = *v26;
          v27 = v26[1];
          if (v27)
          {
            atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_24BC9EC78(v27);
          }

          v226 = *(*(v28 + 40) + 16 * v25);
          sub_24BD74B20(v220, __p, &v226, &v238);
          *(&v238 + 1) = -*(&v238 + 1);
          sub_24BD74BF8(&v240, &v238, &v241, v243, v232, &v228 + 1);
          if (fabsf(v232[0] + -3.4028e38) < 0.00000001 && vabds_f32(*v243, *&v240) < 0.00000001)
          {
            HIBYTE(v228) = 1;
            *v232 = v240;
          }

          sub_24BD74BF8(&v239, &v238, &v241, v243, &v231, &v228);
          sub_24BD74BF8(&v240, &v238, &v241, &v242, &v230, &v227 + 1);
          sub_24BD74BF8(&v239, &v238, &v241, &v242, &v229, &v227);
          a2.n128_u32[0] = v229;
          if (fabsf(*&v229 + -3.4028e38) < 0.00000001 && vabds_f32(*&v239, *&v242) < 0.00000001)
          {
            LOBYTE(v227) = 1;
            v229 = v239;
            a2.n128_u32[0] = v239;
          }

          if (HIBYTE(v228) == 1 && v227 == 1 && (v227 & 0x100) == 0 && (v228 & 1) == 0)
          {
            v80.i32[0] = HIDWORD(v238);
            v81 = v238;
            v82 = sqrtf(((v232[1] - *(&v238 + 1)) * (v232[1] - *(&v238 + 1))) + ((v232[0] - *&v238) * (v232[0] - *&v238)));
            *(a1 + 384) = v82;
            if (v82 > 0.00000001)
            {
              v83 = *&v240;
              v84 = vabds_f32(*v243, *&v240);
              if (v84 < 0.00000001)
              {
                *(a1 + 384) = sub_24BD72A98(a1, &v236);
                v80.i32[0] = HIDWORD(v238);
                v81 = v238;
                v83 = *&v240;
                v84 = vabds_f32(*v243, *&v240);
              }

              *(a1 + 376) = *(a1 + 428);
              v85 = v237;
              *(a1 + 368) = v236;
              *(a1 + 404) = *(a1 + 456);
              *(a1 + 408) = v85;
              *(a1 + 380) = 0;
              v87.i32[0] = v241.i32[1];
              v86.i32[0] = v241.i32[0];
              v88 = v84 < 0.00000001;
              if (v84 >= 0.00000001)
              {
                v83 = v232[0];
              }

              v89 = &v240 + 1;
              v90 = vdup_lane_s32(v241, 0);
              v86.f32[1] = v83;
              v90.i32[0] = v81;
              if (!v88)
              {
                v89 = &v232[1];
              }

              v80.i32[1] = v241.i32[1];
              v87.f32[1] = *v89;
              v91 = vsub_f32(v86, v90);
              v92 = vsub_f32(v87, v80);
              *v214 = vsqrt_f32(vmla_f32(vmul_f32(v92, v92), v91, v91));
              sub_24BD74BAC(&v238, &v240, &v241, (a1 + 396));
              *(a1 + 372) = v234;
              *(a1 + 416) = *(a1 + 468);
              *(a1 + 412) = *(a1 + 420);
              a2.n128_f64[0] = (*(a1 + 384) - *(a1 + 380));
              if (a2.n128_f64[0] > 0.00000001)
              {
                sub_24BD72B74(a1, a1 + 368);
              }
            }

            a2.n128_u32[0] = HIDWORD(v238);
            v93 = v238;
            v94 = sqrtf(((*(&v229 + 1) - *(&v238 + 1)) * (*(&v229 + 1) - *(&v238 + 1))) + ((*&v229 - *&v238) * (*&v229 - *&v238)));
            *(a1 + 384) = v94;
            if (v94 > 0.00000001)
            {
              v95 = *&v239;
              v96 = vabds_f32(*&v242, *&v239);
              if (v96 < 0.00000001)
              {
                *(a1 + 384) = sub_24BD72A98(a1, &v235);
                a2.n128_u32[0] = HIDWORD(v238);
                v93 = v238;
                v95 = *&v239;
                v96 = vabds_f32(*&v242, *&v239);
              }

              *(a1 + 376) = *(a1 + 428);
              *(a1 + 368) = v235;
              *(a1 + 404) = *(a1 + 456);
              *(a1 + 408) = v237;
              *(a1 + 380) = 0;
              v98.i32[0] = v241.i32[1];
              v97.i32[0] = v241.i32[0];
              v99 = v96 < 0.00000001;
              if (v96 >= 0.00000001)
              {
                v95 = *&v229;
              }

              v100 = &v239 + 4;
              v101 = vdup_lane_s32(v241, 0);
              v97.f32[1] = v95;
              v101.i32[0] = v93;
              if (!v99)
              {
                v100 = &v229 + 4;
              }

              a2.n128_u32[1] = v241.u32[1];
              v98.i32[1] = *v100;
              v102 = vsub_f32(v97, v101);
              v103 = vsub_f32(v98, a2.n128_u64[0]);
              *v214 = vsqrt_f32(vmla_f32(vmul_f32(v103, v103), v102, v102));
              sub_24BD74BAC(&v238, &v239, &v241, (a1 + 396));
              *(a1 + 372) = v234;
              *(a1 + 416) = *(a1 + 468);
              *(a1 + 412) = *(a1 + 420);
              a2.n128_f64[0] = (*(a1 + 384) - *(a1 + 380));
              if (a2.n128_f64[0] > 0.00000001)
              {
                sub_24BD72B74(a1, a1 + 368);
              }
            }

            continue;
          }

          if (v228 == 1 && v227 == 1)
          {
            *(a1 + 376) = *(a1 + 428);
            *(a1 + 368) = v235;
            *(a1 + 408) = v237;
            *(a1 + 404) = *(a1 + 456);
            v29 = v238;
            v30 = sqrtf(((*(&v231 + 1) - *(&v238 + 1)) * (*(&v231 + 1) - *(&v238 + 1))) + ((*&v231 - *&v238) * (*&v231 - *&v238)));
            if (v30 < 0.00000001)
            {
              v30 = 0.0;
            }

            *(a1 + 380) = v30;
            if (vabds_f32(*&v242, *&v239) >= 0.00000001)
            {
              v38 = *(&v229 + 1);
              *(a1 + 384) = sqrtf(((*(&v229 + 1) - *(&v29 + 1)) * (*(&v229 + 1) - *(&v29 + 1))) + ((a2.n128_f32[0] - *&v29) * (a2.n128_f32[0] - *&v29)));
              v31 = a2.n128_f32[0] - *v241.i32;
              v32 = v38 - *&v241.i32[1];
            }

            else
            {
              *(a1 + 384) = sub_24BD72A98(a1, &v235);
              v31 = *&v239 - *v241.i32;
              v32 = *(&v239 + 1) - *&v241.i32[1];
            }

            *(a1 + 392) = sqrtf((v32 * v32) + (v31 * v31));
            sub_24BD74BAC(&v238, &v239, &v241, (a1 + 396));
            *(a1 + 388) = sqrtf(((*(&v231 + 1) - *&v241.i32[1]) * (*(&v231 + 1) - *&v241.i32[1])) + ((*&v231 - *v241.i32) * (*&v231 - *v241.i32)));
            *(a1 + 372) = v234;
            *(a1 + 416) = *(a1 + 468);
            *(a1 + 412) = *(a1 + 420);
            if ((*(a1 + 384) - *(a1 + 380)) > 0.00000001)
            {
              sub_24BD72B74(a1, a1 + 368);
            }

            a2.n128_f64[0] = vabds_f32(*v243, *&v240);
            if (a2.n128_f64[0] >= 0.00000001 || !sub_24BD73504(a1, (a1 + 424)))
            {
              continue;
            }

            *(a1 + 404) = *(a1 + 456) + *(a1 + 440);
            v39 = *(&v231 + 1);
            v40 = *(&v238 + 1);
            v41 = *&v231 - *&v238;
            *(a1 + 376) = *(a1 + 424);
            *(a1 + 368) = v235;
            *(a1 + 408) = v237;
            *(a1 + 380) = 0;
            *(a1 + 384) = sqrtf(((v39 - v40) * (v39 - v40)) + (v41 * v41));
            *(a1 + 388) = sub_24BD72A98(a1, &v236);
            *(a1 + 392) = sqrtf(((*(&v231 + 1) - *(&v240 + 1)) * (*(&v231 + 1) - *(&v240 + 1))) + ((*&v231 - *&v240) * (*&v231 - *&v240)));
            v42 = v234;
            *(a1 + 372) = v234;
            v43 = *(a1 + 472);
            v44 = *(v43 + 176);
            v45 = (*(v43 + 8) + 16 * v44);
            v47 = *v45;
            v46 = v45[1];
            if (v46)
            {
              atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v46);
              v43 = *(a1 + 472);
              v44 = *(v43 + 176);
            }

            *v220 = *(*(v47 + 40) + 16 * v42);
            v48 = v233;
            v49 = (*(v43 + 8) + 16 * v44);
            v51 = *v49;
            v50 = v49[1];
            if (v50)
            {
              atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v50);
              v43 = *(a1 + 472);
              v44 = *(v43 + 176);
            }

            *__p = *(*(v51 + 40) + 16 * v48);
            v52 = *v3;
            v53 = (*(v43 + 8) + 16 * v44);
            v55 = *v53;
            v54 = v53[1];
            if (v54)
            {
              atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v54);
            }

            v226 = *(*(v55 + 40) + 16 * v52);
            sub_24BD74B20(v220, __p, &v226, (a1 + 396));
            *(a1 + 416) = *(a1 + 468);
            *(a1 + 412) = *(a1 + 420);
            a2.n128_f64[0] = (*(a1 + 384) - *(a1 + 380));
            if (a2.n128_f64[0] > 0.00000001)
            {
              sub_24BD72B74(a1, a1 + 368);
            }

            if (((*(*(a1 + 272) + ((v234 >> 3) & 0x1FFFFFF8)) >> v234) & 1) != 0 || sub_24BD7299C(a1, &v236))
            {
              continue;
            }

            *(*(a1 + 272) + ((v234 >> 3) & 0x1FFFFFF8)) |= 1 << v234;
            v225 = v236;
            v224 = sub_24BD72A20(a1, &v225, &v237);
            v56 = sub_24BD735B4(a1, *(a1 + 472), &v224, (a1 + 424));
            v222 = v234;
            v223 = v56;
            v57 = sub_24BD70FE4(a1, &v223, &v234);
            v220[0] = 0;
            v220[1] = 0;
            v221 = 0;
            __p[0] = 0;
            __p[1] = 0;
            v219 = 0;
            while (1)
            {
              sub_24BCB4670(v220, &v223);
              sub_24BCB4670(__p, &v224);
              v58 = v234;
              if (v57 == v234 || ((*(*(a1 + 272) + ((v57 >> 3) & 0x1FFFFFF8)) >> v57) & 1) != 0)
              {
                break;
              }

              v225 = sub_24BD735B4(a1, *(a1 + 472), &v224, &v234);
              if (sub_24BD7299C(a1, &v225))
              {
                v58 = v234;
                break;
              }

              v222 = sub_24BD70FE4(a1, &v223, &v222);
              v224 = sub_24BD72A20(a1, &v225, &v224);
              v223 = sub_24BD735B4(a1, *(a1 + 472), &v224, (a1 + 424));
              v57 = sub_24BD70FE4(a1, &v223, &v222);
            }

            if (v57 != v58 && (((*(*(a1 + 272) + ((v57 >> 3) & 0x1FFFFFF8)) >> v57) & 1) != 0 || sub_24BD7299C(a1, &v225)))
            {
              v104 = v220[0];
              if (v220[1] != v220[0])
              {
                v105 = 0;
                do
                {
                  *(a1 + 368) = v104[v105];
                  *(a1 + 408) = *(__p[0] + v105);
                  *(a1 + 372) = *(sub_24BCB9024(*(a1 + 472) + 104, (a1 + 368)) + 12);
                  *(a1 + 376) = *(a1 + 424);
                  *(a1 + 384) = sub_24BD72A98(a1, (a1 + 368));
                  v106 = *(a1 + 472);
                  v107 = *(sub_24BCB9024(v106 + 104, (a1 + 368)) + 12);
                  v108 = (*(v106 + 8) + 16 * *(v106 + 176));
                  v110 = *v108;
                  v109 = v108[1];
                  if (v109)
                  {
                    atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_24BC9EC78(v109);
                  }

                  v111 = *(*(v110 + 40) + 16 * v107);
                  v112 = *(a1 + 472);
                  v113 = *(a1 + 424);
                  v114 = (*(v112 + 8) + 16 * *(v112 + 176));
                  v116 = *v114;
                  v115 = v114[1];
                  if (v115)
                  {
                    atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
                    v210 = v111;
                    sub_24BC9EC78(v115);
                    v111 = v210;
                    v112 = *(a1 + 472);
                  }

                  v117 = vsubq_f32(v111, *(*(v116 + 40) + 16 * v113));
                  v118 = vmulq_f32(v117, v117);
                  v118.i32[3] = 0;
                  v214->f32[0] = sqrtf(vaddv_f32(*&vpaddq_f32(v118, v118)));
                  v119 = sub_24BCB9024(v112 + 104, (a1 + 368));
                  v120 = *(sub_24BCB9024(v112 + 104, v119) + 12);
                  v121 = (*(v112 + 8) + 16 * *(v112 + 176));
                  v123 = *v121;
                  v122 = v121[1];
                  if (v122)
                  {
                    atomic_fetch_add_explicit(&v122->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_24BC9EC78(v122);
                  }

                  v124 = *(*(v123 + 40) + 16 * v120);
                  v125 = *(a1 + 472);
                  v126 = *(a1 + 424);
                  v127 = (*(v125 + 8) + 16 * *(v125 + 176));
                  v129 = *v127;
                  v128 = v127[1];
                  if (v128)
                  {
                    atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
                    v211 = v124;
                    sub_24BC9EC78(v128);
                    v124 = v211;
                    v125 = *(a1 + 472);
                  }

                  v130 = vsubq_f32(v124, *(*(v129 + 40) + 16 * v126));
                  v131 = vmulq_f32(v130, v130);
                  v131.i32[3] = 0;
                  *(a1 + 392) = sqrtf(vaddv_f32(*&vpaddq_f32(v131, v131)));
                  *(a1 + 404) = *(a1 + 456) + *(a1 + 440);
                  v132 = *(sub_24BCB9024(v125 + 104, (a1 + 368)) + 12);
                  v133 = (*(v125 + 8) + 16 * *(v125 + 176));
                  v135 = *v133;
                  v134 = v133[1];
                  if (v134)
                  {
                    atomic_fetch_add_explicit(&v134->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_24BC9EC78(v134);
                  }

                  v226 = *(*(v135 + 40) + 16 * v132);
                  v136 = *(a1 + 472);
                  v137 = sub_24BCB9024(v136 + 104, (a1 + 368));
                  v138 = *(sub_24BCB9024(v136 + 104, v137) + 12);
                  v139 = (*(v136 + 8) + 16 * *(v136 + 176));
                  v141 = *v139;
                  v140 = v139[1];
                  if (v140)
                  {
                    atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_24BC9EC78(v140);
                  }

                  v217 = *(*(v141 + 40) + 16 * v138);
                  v142 = *(a1 + 376);
                  v143 = (*(*(a1 + 472) + 8) + 16 * *(*(a1 + 472) + 176));
                  v145 = *v143;
                  v144 = v143[1];
                  if (v144)
                  {
                    atomic_fetch_add_explicit(&v144->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_24BC9EC78(v144);
                  }

                  v216 = *(*(v145 + 40) + 16 * v142);
                  sub_24BD74B20(&v226, &v217, &v216, (a1 + 396));
                  *(a1 + 412) = *(a1 + 420);
                  *(a1 + 416) = *(a1 + 468);
                  a2.n128_f64[0] = (*(a1 + 384) - *(a1 + 380));
                  if (a2.n128_f64[0] > 0.00000001)
                  {
                    sub_24BD72B74(a1, a1 + 368);
                  }

                  ++v105;
                  v104 = v220[0];
                }

                while (v105 < (v220[1] - v220[0]) >> 2);
              }
            }
          }

          else
          {
            if (!HIBYTE(v228) || HIBYTE(v227) != 1)
            {
              continue;
            }

            *(a1 + 376) = *(a1 + 428);
            v33 = v237;
            *(a1 + 368) = v236;
            *(a1 + 408) = v33;
            *(a1 + 404) = *(a1 + 456);
            v34 = v238;
            v35 = sqrtf(((*(&v230 + 1) - *(&v238 + 1)) * (*(&v230 + 1) - *(&v238 + 1))) + ((*&v230 - *&v238) * (*&v230 - *&v238)));
            if (v35 < 0.00000001)
            {
              v35 = 0.0;
            }

            *(a1 + 380) = v35;
            if (vabds_f32(*v243, *&v240) >= 0.00000001)
            {
              v59 = *v232;
              *(a1 + 384) = sqrtf(((v232[1] - *(&v34 + 1)) * (v232[1] - *(&v34 + 1))) + ((v232[0] - *&v34) * (v232[0] - *&v34)));
              v36 = *&v59 - *v241.i32;
              v37 = *(&v59 + 1) - *&v241.i32[1];
            }

            else
            {
              *(a1 + 384) = sub_24BD72A98(a1, &v236);
              v36 = *&v240 - *v241.i32;
              v37 = *(&v240 + 1) - *&v241.i32[1];
            }

            *(a1 + 392) = sqrtf((v37 * v37) + (v36 * v36));
            sub_24BD74BAC(&v238, &v240, &v241, (a1 + 396));
            *(a1 + 388) = sqrtf(((*(&v230 + 1) - *&v241.i32[1]) * (*(&v230 + 1) - *&v241.i32[1])) + ((*&v230 - *v241.i32) * (*&v230 - *v241.i32)));
            *(a1 + 372) = v234;
            *(a1 + 416) = *(a1 + 468);
            *(a1 + 412) = *(a1 + 420);
            if ((*(a1 + 384) - *(a1 + 380)) > 0.00000001)
            {
              sub_24BD72B74(a1, a1 + 368);
            }

            a2.n128_f64[0] = vabds_f32(*&v242, *&v239);
            if (a2.n128_f64[0] >= 0.00000001 || !sub_24BD73504(a1, &v233))
            {
              continue;
            }

            *(a1 + 404) = *(a1 + 456) + *(a1 + 444);
            v60 = *(&v230 + 1);
            v61 = *(&v238 + 1);
            v62 = *&v230 - *&v238;
            *(a1 + 376) = v233;
            v63 = v237;
            *(a1 + 368) = v236;
            *(a1 + 408) = v63;
            *(a1 + 380) = 0;
            *(a1 + 384) = sqrtf(((v60 - v61) * (v60 - v61)) + (v62 * v62));
            *(a1 + 388) = sub_24BD72A98(a1, &v235);
            *(a1 + 392) = sqrtf(((*(&v230 + 1) - *(&v239 + 1)) * (*(&v230 + 1) - *(&v239 + 1))) + ((*&v230 - *&v239) * (*&v230 - *&v239)));
            v64 = v234;
            *(a1 + 372) = v234;
            v65 = *(a1 + 472);
            v66 = *(v65 + 176);
            v67 = (*(v65 + 8) + 16 * v66);
            v69 = *v67;
            v68 = v67[1];
            if (v68)
            {
              atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v68);
              v65 = *(a1 + 472);
              v66 = *(v65 + 176);
            }

            *v220 = *(*(v69 + 40) + 16 * v64);
            v70 = *v3;
            v71 = (*(v65 + 8) + 16 * v66);
            v73 = *v71;
            v72 = v71[1];
            if (v72)
            {
              atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v72);
              v65 = *(a1 + 472);
              v66 = *(v65 + 176);
            }

            *__p = *(*(v73 + 40) + 16 * v70);
            v74 = v233;
            v75 = (*(v65 + 8) + 16 * v66);
            v77 = *v75;
            v76 = v75[1];
            if (v76)
            {
              atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_24BC9EC78(v76);
            }

            v226 = *(*(v77 + 40) + 16 * v74);
            sub_24BD74B20(v220, __p, &v226, (a1 + 396));
            *(a1 + 416) = *(a1 + 468);
            *(a1 + 412) = *(a1 + 420);
            a2.n128_f64[0] = (*(a1 + 384) - *(a1 + 380));
            if (a2.n128_f64[0] > 0.00000001)
            {
              sub_24BD72B74(a1, a1 + 368);
            }

            if (((*(*(a1 + 272) + ((v234 >> 3) & 0x1FFFFFF8)) >> v234) & 1) != 0 || sub_24BD7299C(a1, &v235))
            {
              continue;
            }

            *(*(a1 + 272) + ((v234 >> 3) & 0x1FFFFFF8)) |= 1 << v234;
            v225 = v235;
            v224 = sub_24BD72A20(a1, &v225, &v237);
            v223 = sub_24BD70FE4(a1, (a1 + 420), (a1 + 424));
            v222 = sub_24BD735B4(a1, *(a1 + 472), &v224, &v223);
            v215 = v234;
            v78 = sub_24BD70FE4(a1, &v222, &v234);
            v220[0] = 0;
            v220[1] = 0;
            v221 = 0;
            __p[0] = 0;
            __p[1] = 0;
            v219 = 0;
            while (1)
            {
              sub_24BCB4670(v220, &v222);
              sub_24BCB4670(__p, &v224);
              v79 = v234;
              if (v78 == v234 || ((*(*(a1 + 272) + ((v78 >> 3) & 0x1FFFFFF8)) >> v78) & 1) != 0)
              {
                break;
              }

              v225 = sub_24BD735B4(a1, *(a1 + 472), &v224, &v215);
              if (sub_24BD7299C(a1, &v225))
              {
                v79 = v234;
                break;
              }

              v215 = sub_24BD70FE4(a1, &v222, &v215);
              v224 = sub_24BD72A20(a1, &v225, &v224);
              v222 = sub_24BD735B4(a1, *(a1 + 472), &v224, &v223);
              v78 = sub_24BD70FE4(a1, &v222, &v215);
            }

            if (v78 != v79 && (((*(*(a1 + 272) + ((v78 >> 3) & 0x1FFFFFF8)) >> v78) & 1) != 0 || sub_24BD7299C(a1, &v225)))
            {
              v146 = v220[0];
              if (v220[1] != v220[0])
              {
                v147 = 0;
                do
                {
                  *(a1 + 368) = v146[v147];
                  *(a1 + 408) = *(__p[0] + v147);
                  *(a1 + 372) = *(sub_24BCB9024(*(a1 + 472) + 104, (a1 + 368)) + 12);
                  *(a1 + 376) = v223;
                  *(a1 + 384) = sub_24BD72A98(a1, (a1 + 368));
                  v148 = *(a1 + 472);
                  v149 = *(sub_24BCB9024(v148 + 104, (a1 + 368)) + 12);
                  v150 = (*(v148 + 8) + 16 * *(v148 + 176));
                  v152 = *v150;
                  v151 = v150[1];
                  if (v151)
                  {
                    atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_24BC9EC78(v151);
                  }

                  v153 = *(*(v152 + 40) + 16 * v149);
                  v154 = *(a1 + 472);
                  v155 = v223;
                  v156 = (*(v154 + 8) + 16 * *(v154 + 176));
                  v158 = *v156;
                  v157 = v156[1];
                  if (v157)
                  {
                    atomic_fetch_add_explicit(&v157->__shared_owners_, 1uLL, memory_order_relaxed);
                    v212 = v153;
                    sub_24BC9EC78(v157);
                    v153 = v212;
                    v154 = *(a1 + 472);
                  }

                  v159 = vsubq_f32(v153, *(*(v158 + 40) + 16 * v155));
                  v160 = vmulq_f32(v159, v159);
                  v160.i32[3] = 0;
                  v214->f32[0] = sqrtf(vaddv_f32(*&vpaddq_f32(v160, v160)));
                  v161 = sub_24BCB9024(v154 + 104, (a1 + 368));
                  v162 = *(sub_24BCB9024(v154 + 104, v161) + 12);
                  v163 = (*(v154 + 8) + 16 * *(v154 + 176));
                  v165 = *v163;
                  v164 = v163[1];
                  if (v164)
                  {
                    atomic_fetch_add_explicit(&v164->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_24BC9EC78(v164);
                  }

                  v166 = *(*(v165 + 40) + 16 * v162);
                  v167 = *(a1 + 472);
                  v168 = v223;
                  v169 = (*(v167 + 8) + 16 * *(v167 + 176));
                  v171 = *v169;
                  v170 = v169[1];
                  if (v170)
                  {
                    atomic_fetch_add_explicit(&v170->__shared_owners_, 1uLL, memory_order_relaxed);
                    v213 = v166;
                    sub_24BC9EC78(v170);
                    v166 = v213;
                    v167 = *(a1 + 472);
                  }

                  v172 = vsubq_f32(v166, *(*(v171 + 40) + 16 * v168));
                  v173 = vmulq_f32(v172, v172);
                  v173.i32[3] = 0;
                  *(a1 + 392) = sqrtf(vaddv_f32(*&vpaddq_f32(v173, v173)));
                  *(a1 + 404) = *(a1 + 456) + *(a1 + 444);
                  v174 = *(sub_24BCB9024(v167 + 104, (a1 + 368)) + 12);
                  v175 = (*(v167 + 8) + 16 * *(v167 + 176));
                  v177 = *v175;
                  v176 = v175[1];
                  if (v176)
                  {
                    atomic_fetch_add_explicit(&v176->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_24BC9EC78(v176);
                  }

                  v226 = *(*(v177 + 40) + 16 * v174);
                  v178 = *(a1 + 472);
                  v179 = sub_24BCB9024(v178 + 104, (a1 + 368));
                  v180 = *(sub_24BCB9024(v178 + 104, v179) + 12);
                  v181 = (*(v178 + 8) + 16 * *(v178 + 176));
                  v183 = *v181;
                  v182 = v181[1];
                  if (v182)
                  {
                    atomic_fetch_add_explicit(&v182->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_24BC9EC78(v182);
                  }

                  v217 = *(*(v183 + 40) + 16 * v180);
                  v184 = *(a1 + 376);
                  v185 = (*(*(a1 + 472) + 8) + 16 * *(*(a1 + 472) + 176));
                  v187 = *v185;
                  v186 = v185[1];
                  if (v186)
                  {
                    atomic_fetch_add_explicit(&v186->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_24BC9EC78(v186);
                  }

                  v216 = *(*(v187 + 40) + 16 * v184);
                  sub_24BD74B20(&v226, &v217, &v216, (a1 + 396));
                  *(a1 + 412) = *(a1 + 420);
                  *(a1 + 416) = *(a1 + 468);
                  a2.n128_f64[0] = (*(a1 + 384) - *(a1 + 380));
                  if (a2.n128_f64[0] > 0.00000001)
                  {
                    sub_24BD72B74(a1, a1 + 368);
                  }

                  ++v147;
                  v146 = v220[0];
                }

                while (v147 < (v220[1] - v220[0]) >> 2);
              }
            }
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (v220[0])
          {
            v220[1] = v220[0];
            operator delete(v220[0]);
          }
        }
      }
    }

    while (*(a1 + 168));
  }

  v188 = *(a1 + 472);
  v189 = (v188 + 104);
  if (*(v188 + 112) != *(v188 + 104))
  {
    for (i = 0; i < (*(v188 + 112) - *(v188 + 104)) >> 2; ++i)
    {
      if (((*(*(a1 + 296) + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1) != 0 && fabsf(*(*a1 + 4 * i) + -3.4028e38) < 0.00000001)
      {
        LODWORD(__p[0]) = i;
        sub_24BCB9454(v220, v189, __p);
        v191 = sub_24BCB947C(v220);
        if (v191 != -1)
        {
          v192 = v191;
          while (1)
          {
            v193 = (*(a1 + 344) + 24 * *(*(a1 + 200) + 4 * v192));
            v194 = *v193;
            if (v193[1] != *v193)
            {
              break;
            }

LABEL_176:
            v192 = sub_24BCB947C(v220);
            if (v192 == -1)
            {
              goto LABEL_177;
            }
          }

          v195 = 0;
          v196 = 0;
          while (2)
          {
            v197 = v194 + v195;
            if (i == *(v194 + v195 + 20))
            {
              v198 = *(v197 + 28);
              v199 = *(a1 + 224);
              v200 = *(v199 + 4 * i);
              if (v198 < v200)
              {
                *(v199 + 4 * i) = v198;
                v201 = *(v194 + v195 + 36) + *(v194 + v195 + 52);
                v202 = *a1;
                goto LABEL_164;
              }

              v202 = *a1;
              if (vabds_f32(v198, v200) >= 0.00000001)
              {
                v201 = *(v202 + 4 * i);
              }

              else
              {
                v201 = *(v194 + v195 + 36) + *(v194 + v195 + 52);
                if (v201 >= *(v202 + 4 * i))
                {
                  v201 = *(v202 + 4 * i);
                }

LABEL_164:
                *(v202 + 4 * i) = v201;
              }

              v208 = i;
              if (vabds_f32(v201, *(v194 + v195 + 36) + *(v194 + v195 + 52)) >= 0.00000001)
              {
LABEL_175:
                ++v196;
                v209 = (*(a1 + 344) + 24 * *(*(a1 + 200) + 4 * v192));
                v194 = *v209;
                v195 += 72;
                if (v196 >= 0x8E38E38E38E38E39 * ((v209[1] - *v209) >> 3))
                {
                  goto LABEL_176;
                }

                continue;
              }

LABEL_174:
              *(*(a1 + 248) + 4 * v208) = *(v197 + 16);
              goto LABEL_175;
            }

            break;
          }

          v203 = *(v197 + 32);
          if (v203 > (sub_24BD72A98(a1, (v197 + 16)) - *(*(a1 + 224) + 4 * i)))
          {
            *(*(a1 + 224) + 4 * i) = sub_24BD72A98(a1, (v197 + 16)) - *(v197 + 32);
            v204 = *(v194 + v195 + 40) + *(v194 + v195 + 52);
            v205 = *a1;
            goto LABEL_168;
          }

          v206 = *(v197 + 32);
          v207 = sub_24BD72A98(a1, (v197 + 16));
          v205 = *a1;
          if (vabds_f32(v206, v207 - *(*(a1 + 224) + 4 * i)) >= 0.00000001)
          {
            v204 = *(v205 + 4 * i);
          }

          else
          {
            v204 = *(v194 + v195 + 40) + *(v194 + v195 + 52);
            if (v204 >= *(v205 + 4 * i))
            {
              v204 = *(v205 + 4 * i);
            }

LABEL_168:
            *(v205 + 4 * i) = v204;
          }

          v208 = i;
          if (fabsf((v204 - *(v194 + v195 + 40)) + *(v194 + v195 + 52)) >= 0.00000001)
          {
            goto LABEL_175;
          }

          goto LABEL_174;
        }

LABEL_177:
        v188 = *(a1 + 472);
      }

      v189 = (v188 + 104);
    }
  }
}

void sub_24BD7290C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BD7299C(uint64_t a1, unsigned int *a2)
{
  if (*a2 == -1)
  {
    return 1;
  }

  v3 = *(a1 + 472);
  v4 = sub_24BC9ECE4(v3, *(v3 + 180), *a2);
  if ((v5 & *v4) != 0)
  {
    return 1;
  }

  v7 = sub_24BCB9024(v3 + 104, a2);
  v8 = sub_24BC9ECE4(v3, *(v3 + 180), *v7);
  return (v9 & *v8) != 0;
}

uint64_t sub_24BD72A20(uint64_t a1, unsigned int *a2, _DWORD *a3)
{
  v6 = sub_24BCB9024(*(a1 + 472) + 104, a2);
  v7 = *(a1 + 472);
  v8 = sub_24BCB9024(v7 + 104, a2);
  v9 = *(sub_24BCB9024(v7 + 104, v8) + 16);
  if (v9 == *a3)
  {
    v10 = *(v6 + 16);
  }

  else
  {
    v10 = -1;
  }

  if (*(v6 + 16) == *a3)
  {
    return v9;
  }

  else
  {
    return v10;
  }
}

float sub_24BD72A98(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 472);
  v5 = sub_24BCB9024(v4 + 104, a2);
  v6 = *(sub_24BCB9024(v4 + 104, v5) + 12);
  v7 = (*(v4 + 8) + 16 * *(v4 + 176));
  v9 = *v7;
  v8 = v7[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v8);
  }

  v18 = *(*(v9 + 40) + 16 * v6);
  v10 = *(a1 + 472);
  v11 = *(sub_24BCB9024(v10 + 104, a2) + 12);
  v12 = (*(v10 + 8) + 16 * *(v10 + 176));
  v14 = *v12;
  v13 = v12[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_24BC9EC78(v13);
  }

  v15 = vsubq_f32(v18, *(*(v14 + 40) + 16 * v11));
  v16 = vmulq_f32(v15, v15);
  v16.i32[3] = 0;
  return sqrtf(vaddv_f32(*&vpaddq_f32(v16, v16)));
}

void sub_24BD72B74(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_24BD736E8(&v12, a2);
  if (v13 != v12)
  {
    v3 = *(*(a1 + 200) + 4 * *v12);
    v4 = *(a1 + 344);
    v5 = *(v4 + 24 * v3);
    if (*(v4 + 24 * v3 + 8) != v5)
    {
      v7 = v5[9];
      v6 = v5[10];
      v8 = v5[13];
      operator new();
    }

    if (-3.4028e38 > 3.4028e38)
    {
      operator new();
    }

    v9 = v12[9];
    v11 = v12[5];
    v10 = v12[6];
    operator new();
  }

  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }
}

void sub_24BD73460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v28 = *(v26 - 168);
  if (v28)
  {
    *(v26 - 160) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BD73504(uint64_t a1, unsigned int *a2)
{
  if (sub_24BCD93B0(*(a1 + 472), a2))
  {
    return 1;
  }

  sub_24BCB9454(v8, (*(a1 + 472) + 104), a2);
  v5 = sub_24BCB947C(v8);
  if (v5 == -1)
  {
    return 0;
  }

  v6 = 0.0;
  do
  {
    sub_24BCDAEE4(*(a1 + 472), v5);
    v6 = v6 + v7;
    v5 = sub_24BCB947C(v8);
  }

  while (v5 != -1);
  return v6 > 6.28318531;
}

uint64_t sub_24BD735B4(uint64_t a1, uint64_t a2, unsigned int *a3, int *a4)
{
  v7 = *sub_24BCB9038(a2 + 104, a3);
  v13 = v7;
  sub_24BCB2008(__p, 3uLL);
  sub_24BCD567C(a2, a3, __p);
  v8 = *a4;
  if (*__p[0] == *a4 || *(__p[0] + 1) == v8 || *(__p[0] + 2) == v8)
  {
    while (1)
    {
      if (*(sub_24BCB9024(a2 + 104, &v13) + 12) != *a4)
      {
        v9 = sub_24BCB9024(a2 + 104, &v13);
        if (*(sub_24BCB9024(a2 + 104, v9) + 12) != *a4)
        {
          break;
        }
      }

      v13 = *(sub_24BCB9024(a2 + 104, &v13) + 8);
      if (v13 == v7)
      {
        goto LABEL_7;
      }
    }

    v10 = v13;
  }

  else
  {
LABEL_7:
    v10 = 0xFFFFFFFFLL;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v10;
}

void sub_24BD736C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD736E8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_24BD747E0(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 12) = *(a2 + 12);
    *v3 = v4;
    *(v3 + 28) = *(a2 + 28);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 36) = *(a2 + 36);
    result = v3 + 52;
  }

  a1[1] = result;
  return result;
}

void sub_24BD73750(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, _BYTE *a7)
{
  *(a1 + 80) = -1;
  *(a1 + 88) = -1;
  *(a1 + 92) = xmmword_24BFECFF0;
  *(a1 + 108) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = -1;
  *(a1 + 128) = 0;
  *(a1 + 28) = -1;
  *(a1 + 36) = -1;
  *(a1 + 40) = xmmword_24BFECFF0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = -1;
  *(a1 + 76) = 0;
  v7 = *(a3 + 12);
  v8 = *(a3 + 16);
  if (v8 > v7)
  {
    v11 = a5;
    *a4 = 0;
    *a5 = 0;
    *a6 = 0;
    *a7 = 0;
    v16 = *(a2 + 4);
    if (v16 == *(a3 + 4))
    {
      v18 = *(a3 + 12);
      v17 = *(a3 + 16);
    }

    else
    {
      *(a3 + 4) = v16;
      *(a3 + 20) = vrev64_s32(*(a3 + 20));
      *(a3 + 12) = v8;
      *(a3 + 16) = v7;
      v19 = sub_24BD72A98(a1, a3) - *(a3 + 12);
      if (v19 < 0.0)
      {
        v19 = 0.0;
      }

      if (v19 < 0.00000001)
      {
        v19 = 0.0;
      }

      *(a3 + 12) = v19;
      *(a3 + 16) = sub_24BD72A98(a1, a3) - *(a3 + 16);
      *(a3 + 28) = sub_24BD72A98(a1, a3) - *(a3 + 28);
      v18 = *(a3 + 12);
      v17 = *(a3 + 16);
      v8 = v17;
      v7 = v18;
    }

    v20 = *(a2 + 12);
    v21 = *(a2 + 16);
    if (v21 >= v20)
    {
      v22 = *(a2 + 12);
    }

    else
    {
      v22 = *(a2 + 16);
    }

    if (v7 < v22)
    {
      v22 = v7;
    }

    if (v8 < v22)
    {
      v22 = v8;
    }

    v23 = v22;
    if (v20 >= v21)
    {
      v24 = *(a2 + 12);
    }

    else
    {
      v24 = *(a2 + 16);
    }

    if (v24 < v7)
    {
      v24 = v18;
    }

    if (v24 >= v8)
    {
      v17 = v24;
    }

    v25 = (((v21 - v20) + v8) - v7) - (v17 - v23);
    if (v25 > 0.0)
    {
      v26 = *(a2 + 28);
      v27 = *(a2 + 32);
      v28 = *(a3 + 28);
      v29 = *(a3 + 32);
      if ((((v27 - v29) * (v27 - v29)) + ((v26 - v28) * (v26 - v28))) < 0.00000001 && vabds_f32(v20, v7) < 0.00000001 && vabds_f32(v21, v8) < 0.00000001 && vabds_f32(*(a2 + 36), *(a3 + 36)) < 0.00000001)
      {
        *v11 = 1;
        v11 = a7;
LABEL_77:
        *v11 = 1;
        return;
      }

      if (v7 > v20 && v8 < v21)
      {
        if ((v7 - v20) <= 0.00001)
        {
          *(a2 + 12) = v7;
          *(a2 + 20) = sqrtf(((0.0 - v27) * (0.0 - v27)) + ((v7 - v26) * (v7 - v26)));
          *a4 = 1;
          v18 = *(a3 + 12);
        }

        else
        {
          *(a1 + 92) = v20;
          v30 = *(a3 + 12);
          *(a1 + 96) = v30;
          v31 = *(a2 + 28);
          *(a1 + 108) = v31;
          v32 = *(a2 + 32);
          *(a1 + 112) = v32;
          *(a1 + 100) = *(a2 + 20);
          *(a1 + 80) = *a2;
          *(a1 + 120) = *(a2 + 40);
          *(a1 + 84) = *(a2 + 4);
          *(a1 + 88) = *(a2 + 8);
          *(a1 + 104) = sqrtf(((0.0 - v32) * (0.0 - v32)) + ((v30 - v31) * (v30 - v31)));
          *(a1 + 116) = *(a2 + 36);
          *(a1 + 128) = *(a2 + 48);
          *(a1 + 124) = *(a2 + 44);
          v18 = *(a3 + 12);
          *(a2 + 12) = v18;
          *(a2 + 20) = sqrtf(((0.0 - v27) * (0.0 - v27)) + ((v18 - v26) * (v18 - v26)));
          *a4 = 1;
        }
      }

      v33 = *(a2 + 12);
      if (v33 > v18 && *(a2 + 16) < *(a3 + 16))
      {
        if ((v33 - v18) > 0.00001)
        {
          *(a1 + 40) = v18;
          v34 = *(a2 + 12);
          *(a1 + 44) = v34;
          v35 = *(a3 + 28);
          *(a1 + 56) = v35;
          v36 = *(a3 + 32);
          *(a1 + 60) = v36;
          *(a1 + 48) = *(a3 + 20);
          *(a1 + 28) = *a3;
          *(a1 + 68) = *(a3 + 40);
          *(a1 + 32) = *(a3 + 4);
          *(a1 + 36) = *(a3 + 8);
          *(a1 + 52) = sqrtf(((0.0 - v36) * (0.0 - v36)) + ((v34 - v35) * (v34 - v35)));
          *(a1 + 64) = *(a3 + 36);
          *(a1 + 76) = *(a3 + 48);
          *(a1 + 72) = *(a3 + 44);
          v33 = *(a2 + 12);
        }

        *(a3 + 12) = v33;
        *(a3 + 20) = sqrtf(((0.0 - v29) * (0.0 - v29)) + ((v33 - v28) * (v33 - v28)));
        *v11 = 1;
        v18 = v33;
      }

      v38 = *(a2 + 12);
      v37 = *(a2 + 16);
      if (v18 <= v38 || v18 >= v37)
      {
        v41 = *(a3 + 16);
        if (v38 <= v18 || v38 >= v41)
        {
          v42 = v41 < v37;
          if (v41 < v37)
          {
            v40 = *(a2 + 12);
          }

          else
          {
            v40 = v18;
          }

          v39 = !v42;
        }

        else
        {
          v39 = 0;
          v40 = *(a2 + 12);
        }
      }

      else
      {
        v39 = 1;
        v40 = v18;
      }

      if (v25 > 0.0 && v25 <= 0.00001)
      {
        if (v39)
        {
          v43 = v25 + v18;
          *(a3 + 12) = v43;
          *(a3 + 20) = sqrtf(((0.0 - v29) * (0.0 - v29)) + ((v43 - v28) * (v43 - v28)));
          if (*(a3 + 16) > v43)
          {
            goto LABEL_77;
          }
        }

        else
        {
          v53 = *(a3 + 16) - v25;
          *(a3 + 16) = v53;
          *(a3 + 24) = sqrtf(((0.0 - v29) * (0.0 - v29)) + ((v53 - v28) * (v53 - v28)));
          if (v18 < v53)
          {
            goto LABEL_77;
          }
        }

        goto LABEL_72;
      }

      v44 = v25 * 0.5 + v40;
      v45 = (0.0 - v29) * (0.0 - v29);
      v46 = sqrtf(v45 + ((v44 - v28) * (v44 - v28))) + *(a3 + 36);
      v47 = (0.0 - v27) * (0.0 - v27);
      v48 = sqrtf(v47 + ((v44 - v26) * (v44 - v26))) + *(a2 + 36);
      v49 = vabds_f32(v18, v38);
      if (v46 > v48)
      {
        if (v49 >= 0.00000001 || vabds_f32(*(a3 + 16), v37) >= 0.00000001)
        {
          if (v39)
          {
            v50 = v25 + v18;
            *(a3 + 12) = v50;
            if (*(a3 + 16) > v50)
            {
              v51 = 20;
LABEL_71:
              *(a3 + v51) = sqrtf(v45 + ((v50 - v28) * (v50 - v28)));
              goto LABEL_77;
            }
          }

          else
          {
            v50 = *(a3 + 16) - v25;
            *(a3 + 16) = v50;
            if (v18 < v50)
            {
              v51 = 24;
              goto LABEL_71;
            }
          }
        }

LABEL_72:
        *a7 = 1;
        goto LABEL_77;
      }

      if (v49 >= 0.00000001 || vabds_f32(*(a3 + 16), v37) >= 0.00000001)
      {
        if (v39)
        {
          v52 = v37 - v25;
          *(a2 + 16) = v52;
          if (v38 < v52)
          {
            *(a2 + 24) = sqrtf(v47 + ((v52 - v26) * (v52 - v26)));
LABEL_76:
            v11 = a4;
            goto LABEL_77;
          }
        }

        else
        {
          v54 = v25 + v38;
          *(a2 + 12) = v54;
          if (v37 > v54)
          {
            *(a2 + 20) = sqrtf(v47 + ((v54 - v26) * (v54 - v26)));
            goto LABEL_76;
          }
        }
      }

      *a6 = 1;
      goto LABEL_76;
    }
  }
}

uint64_t sub_24BD73DA4(uint64_t a1, __n128 a2)
{
  if (*(a1 + 24) == 1)
  {
    while (*(a1 + 32))
    {
      sub_24BD73E04(a1, v4, a2);
    }
  }

  v4[0] = a1;
  sub_24BCB7FC8(v4);
  return a1;
}

void sub_24BD73E04(uint64_t *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  sub_24BD73E9C(a1, 0, &v6, a3);
  v4 = v6;
  if (v6)
  {
    *a2 = *(v6 + 4);
    *(a2 + 12) = *(v4 + 16);
    v5 = *(v4 + 32);
    *(a2 + 36) = *(v4 + 40);
  }

  else
  {
    *a2 = -1;
    *(a2 + 8) = -1;
    *(a2 + 12) = xmmword_24BFECFF0;
    *(a2 + 36) = 0;
    *(a2 + 40) = -1;
    *(a2 + 48) = 0;
    v5 = 0;
  }

  *(a2 + 28) = v5;
  if (v7)
  {
    sub_24BC9EC78(v7);
  }
}

void sub_24BD73E9C(uint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>, __n128 a4@<Q0>)
{
  v5 = a1[4];
  if (v5 <= a2)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v7 = v5 - 1;
    v8 = *a1;
    if (v7 == a2)
    {
      v9 = *(v8 + 16 * a2);
      v10 = v9;
    }

    else
    {
      a4 = *(v8 + 16 * a2);
      *(v8 + 16 * a2) = *(v8 + 16 * v7);
      *(v8 + 16 * v7) = a4;
      v11 = *a1;
      v9 = *(*a1 + 16 * a2);
      *(v9 + 56) = a2;
      v10 = *(v11 + 16 * v7);
      *(v10 + 56) = v7;
    }

    a1[4] = v7;
    *(v10 + 56) = -1;
    if (*v9 <= *v10)
    {
      sub_24BD74034(a1, a2);
    }

    else
    {
      a4.n128_u32[0] = *v9;
      sub_24BD73F70(a1, a2, a4);
    }

    v12 = *(*a1 + 16 * a1[4]);
    *a3 = v12;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }
}

__n128 sub_24BD73F70(uint64_t *a1, unint64_t a2, __n128 result)
{
  v3 = a1[4];
  if (v3 > a2)
  {
    v4 = *a1;
    v5 = *(*a1 + 16 * a2);
    do
    {
      v6 = (2 * a2) | 1;
      result.n128_u32[0] = *v5;
      if (v6 >= v3)
      {
        v7 = a2;
      }

      else
      {
        v7 = a2;
        if (**(v4 + 16 * v6) < result.n128_f32[0])
        {
          result.n128_u32[0] = **(v4 + 16 * v6);
          v7 = (2 * a2) | 1;
        }
      }

      v8 = 2 * a2 + 2;
      if (v8 < v3 && **(v4 + 16 * v8) < result.n128_f32[0])
      {
        v7 = 2 * a2 + 2;
      }

      if (v7 == a2)
      {
        break;
      }

      v9 = (v4 + 16 * v7);
      v10 = *(v4 + 16 * a2 + 8);
      result = *v9;
      *(v4 + 16 * a2) = *v9;
      v9->n128_u64[0] = v5;
      v9->n128_u64[1] = v10;
      v4 = *a1;
      *(*(*a1 + 16 * a2) + 56) = a2;
      v5 = *(v4 + 16 * v7);
      *(v5 + 56) = v7;
      a2 = v7;
    }

    while (v7 < v3);
  }

  return result;
}

uint64_t *sub_24BD74034(uint64_t *result, unint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    do
    {
      v3 = a2 - 1;
      v4 = (a2 - 1) >> 1;
      v5 = (v2 + 16 * a2);
      v6 = *v5;
      v7 = (v2 + 16 * v4);
      if (**v5 >= **v7)
      {
        break;
      }

      if (a2 != v4)
      {
        v8 = v5[1];
        v9 = v7[1];
        *v5 = *v7;
        v5[1] = v9;
        *v7 = v6;
        v7[1] = v8;
        v2 = *result;
        *(*(*result + 16 * a2) + 56) = a2;
        *(*(v2 + 16 * v4) + 56) = v4;
      }

      a2 = (a2 - 1) >> 1;
    }

    while (v3 > 1);
  }

  return result;
}

void sub_24BD740A8(void ***a1)
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
        v4 -= 3;
        v6 = v4;
        sub_24BD7411C(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_24BD7411C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24BD74170(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_24BD74170(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    v4 = *(i - 64);
    if (v4)
    {
      sub_24BC9EC78(v4);
    }
  }

  a1[1] = v2;
}

void sub_24BD741BC(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24BC8E01C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      sub_24BC8F4C8(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1] - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    sub_24BD74328(v18);
  }
}

void **sub_24BD74328(void **a1)
{
  sub_24BD7435C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24BD7435C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    sub_24BD7411C(&v5);
  }
}

void sub_24BD743D0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F95EF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD7442C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_24BC8E01C();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_24BD745A0(a1, v6);
  }

  v7 = 72 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  *v7 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = *(a2 + 16);
  *(v7 + 28) = *(a2 + 28);
  *(v7 + 16) = v8;
  *(v7 + 44) = *(a2 + 44);
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 52) = *(a2 + 52);
  *(v7 + 68) = *(a2 + 68);
  *&v17 = 72 * v2 + 72;
  v9 = a1[1];
  v10 = 72 * v2 + *a1 - v9;
  sub_24BD745FC(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_24BD74758(&v15);
  return v14;
}

void sub_24BD7458C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BD74758(va);
  _Unwind_Resume(a1);
}

void sub_24BD745A0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BD745FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
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
    v6 = a2;
    do
    {
      v7 = *(v6 + 8);
      *a4 = *v6;
      *(a4 + 8) = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = *(v6 + 16);
      *(a4 + 28) = *(v6 + 28);
      *(a4 + 16) = v8;
      *(a4 + 44) = *(v6 + 44);
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 52) = *(v6 + 52);
      *(a4 + 68) = *(v6 + 68);
      v6 += 72;
      a4 += 72;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      v9 = *(v5 + 8);
      if (v9)
      {
        sub_24BC9EC78(v9);
      }

      v5 += 72;
    }
  }

  return sub_24BD746DC(v11);
}

uint64_t sub_24BD746DC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_24BD74714(a1);
  }

  return a1;
}

void sub_24BD74714(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 64);
    if (v3)
    {
      sub_24BC9EC78(v3);
    }

    v1 -= 72;
  }
}

void **sub_24BD74758(void **a1)
{
  sub_24BD7478C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_24BD7478C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 72;
    v4 = *(v1 - 64);
    if (v4)
    {
      sub_24BC9EC78(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 72;
    }
  }
}

uint64_t sub_24BD747E0(uint64_t *a1, __int128 *a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 2);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x4EC4EC4EC4EC4ECLL)
  {
    sub_24BC8E01C();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 2) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 2);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 2)) >= 0x276276276276276)
  {
    v6 = 0x4EC4EC4EC4EC4ECLL;
  }

  else
  {
    v6 = v3;
  }

  v15 = a1;
  if (v6)
  {
    sub_24BD74A0C(a1, v6);
  }

  v7 = 52 * v2;
  __p = 0;
  v12 = v7;
  v14 = 0;
  v8 = *a2;
  *(v7 + 12) = *(a2 + 12);
  *v7 = v8;
  *(v7 + 28) = *(a2 + 7);
  *(v7 + 32) = *(a2 + 8);
  *(v7 + 36) = *(a2 + 36);
  v13 = 52 * v2 + 52;
  sub_24BD7497C(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = v13 - 52 * ((v13 - v12 - 52) / 0x34uLL) - 52;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_24BD74934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_24BD7497C(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      v6 = *v2;
      *(v5 + 12) = *(v2 + 12);
      *v5 = v6;
      *(v5 + 28) = *(v2 + 7);
      *(v5 + 32) = *(v2 + 8);
      *(v5 + 36) = *(v2 + 36);
      v2 = (v2 + 52);
      v5 += 52;
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

void sub_24BD74A0C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x4EC4EC4EC4EC4EDLL)
  {
    operator new();
  }

  sub_24BC8DFE8();
}

uint64_t sub_24BD74A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = a4 + v7;
    v9 = a2 + v7;
    v10 = *(a2 + v7);
    *v9 = 0;
    *(v9 + 8) = 0;
    v11 = *(a4 + v7 + 8);
    *(a4 + v7) = v10;
    if (v11)
    {
      sub_24BC9EC78(v11);
    }

    v12 = *(v9 + 16);
    *(v8 + 28) = *(v9 + 28);
    *(v8 + 16) = v12;
    *(v8 + 44) = *(v9 + 44);
    *(v8 + 48) = *(v9 + 48);
    *(v8 + 52) = *(v9 + 52);
    *(v8 + 68) = *(v9 + 68);
    v7 += 72;
  }

  while (v9 + 72 != v6);
  return v6;
}

float sub_24BD74B20(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float *a4)
{
  v4 = vsubq_f32(*a3, *a1);
  v5 = vsubq_f32(*a2, *a1);
  v6 = vmulq_f32(v5, v5);
  v6.i32[3] = 0;
  v6.f32[0] = sqrtf(vaddv_f32(*&vpaddq_f32(v6, v6)));
  v7 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v4, vextq_s8(v4, v4, 0xCuLL)), v4), vuzp2q_s32(vextq_s8(v5, v5, 4uLL), v5)), vzip2q_s32(vzip1q_s32(v5, vextq_s8(v5, v5, 0xCuLL)), v5), vuzp2q_s32(vextq_s8(v4, v4, 4uLL), v4));
  v8 = vmulq_f32(v4, v5);
  v8.i32[3] = 0;
  result = vaddv_f32(*&vpaddq_f32(v8, v8)) / v6.f32[0];
  v10 = vmulq_f32(v7, v7);
  v10.i32[3] = 0;
  *a4 = result;
  a4[1] = sqrtf(vaddv_f32(*&vpaddq_f32(v10, v10))) / v6.f32[0];
  return result;
}

float sub_24BD74BAC(float *a1, float *a2, float *a3, float *a4)
{
  v4 = a1[1];
  v5 = *a3 - *a1;
  v6 = a3[1] - v4;
  v7 = *a2 - *a1;
  v8 = a2[1] - v4;
  v9 = sqrtf((v8 * v8) + (v7 * v7));
  v10 = ((v6 * v8) + (v5 * v7)) / v9;
  result = fabsf((v5 * v8) - (v6 * v7)) / v9;
  *a4 = v10;
  a4[1] = result;
  return result;
}

float *sub_24BD74BF8(float *result, float *a2, float *a3, float *a4, float *a5, BOOL *a6)
{
  v6 = *result;
  v7 = result[1];
  v8 = a3[1];
  v9 = a4[1];
  v10 = (((v7 - a2[1]) * (*a3 - *a4)) - ((*result - *a2) * (v8 - v9)));
  if (fabs(v10) >= 0.00000001)
  {
    v13 = ((((v7 * (*a4 - *a3)) - (v8 * *a4)) + (v6 * (v8 - v9))) + (*a3 * v9)) / -v10;
    v14 = v6 + (*a2 - v6) * v13;
    *a5 = v14;
    v12 = result[1] + (a2[1] - result[1]) * v13;
    v11 = v13 >= -0.00001;
    if (v13 > 1.00001)
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    *a5 = 3.4028e38;
    v12 = 3.4028e38;
  }

  a5[1] = v12;
  *a6 = v11;
  return result;
}

uint64_t sub_24BD74CCC(float *a1, float32x4_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5 * v5;
  if (fabsf(*a1) <= fabsf(v4))
  {
    v10 = 1.0 / sqrtf(v6 + (v4 * v4));
    *&v11 = v5 * v10;
    v8 = -(v4 * v10);
    v9.i32[0] = 0;
    v9.i32[3] = 0;
    v9.i32[1] = v11;
  }

  else
  {
    v7 = 1.0 / sqrtf(v6 + (v3 * v3));
    v8 = -(v3 * v7);
    v9.i32[1] = 0;
    v9.i32[3] = 0;
    *v9.i32 = v5 * v7;
  }

  *&v9.i32[2] = v8;
  v17 = v9;
  v16 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v9, vextq_s8(v9, v9, 0xCuLL)), v9), vuzp2q_s32(vextq_s8(*a1, *a1, 4uLL), *a1)), vzip2q_s32(vzip1q_s32(*a1, vextq_s8(*a1, *a1, 0xCuLL)), *a1), vuzp2q_s32(vextq_s8(v9, v9, 4uLL), v9));
  v12 = vcvts_n_f32_s32(rand(), 0x1FuLL);
  v13 = (v12 + v12) * 3.14159265;
  v14 = __sincosf_stret(v13);
  *a2 = vaddq_f32(vmulq_n_f32(v17, v14.__sinval), vmulq_n_f32(v16, v14.__cosval));
  return 1;
}

BOOL sub_24BD74DD4(void *a1, uint64_t *a2)
{
  v2 = a1[1] - *a1;
  v3 = a2[1] - *a2;
  if (v2 == v3)
  {
    srand(2u);
    v6 = *a2;
    if (a2[1] != *a2)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        sub_24BD74CCC((*a1 + 16 * v7), (v6 + 16 * v7));
        v7 = v8;
        v6 = *a2;
        ++v8;
      }

      while (v7 < (a2[1] - *a2) >> 4);
    }
  }

  return v2 == v3;
}

float32x4_t sub_24BD74E6C@<Q0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X2>, float32x4_t *a4@<X3>, float32x4_t *a5@<X8>)
{
  v5 = vmulq_f32(*a2, *a1);
  v5.i32[3] = 0;
  v6 = vmulq_f32(*a2, *a3);
  v6.i32[3] = 0;
  v7 = vmulq_f32(*a1, *a4);
  v7.i32[3] = 0;
  v8 = vmulq_f32(*a3, *a4);
  v8.i32[3] = 0;
  v9 = vmulq_f32(*a2, *a4);
  v9.i32[3] = 0;
  v9.f32[0] = vaddv_f32(*&vpaddq_f32(v9, v9));
  v5.f32[0] = vaddv_f32(*&vpaddq_f32(v6, v6)) - vaddv_f32(*&vpaddq_f32(v5, v5));
  v6.f32[0] = vaddv_f32(*&vpaddq_f32(v7, v7)) - vaddv_f32(*&vpaddq_f32(v8, v8));
  v10.i64[0] = 0x3F0000003F000000;
  v10.i64[1] = 0x3F0000003F000000;
  v11 = vaddq_f32(vmulq_n_f32(*a4, ((v6.f32[0] - (v9.f32[0] * v5.f32[0])) + (v6.f32[0] - (v9.f32[0] * v5.f32[0]))) * (1.0 / ((1.0 - (v9.f32[0] * v9.f32[0])) + 0.0001))), vmulq_n_f32(*a2, ((v5.f32[0] - (v9.f32[0] * v6.f32[0])) + (v5.f32[0] - (v9.f32[0] * v6.f32[0]))) * (1.0 / ((1.0 - (v9.f32[0] * v9.f32[0])) + 0.0001))));
  __asm { FMOV            V2.4S, #-0.25 }

  result = vaddq_f32(vmulq_f32(vaddq_f32(*a1, *a3), v10), vmulq_f32(v11, _Q2));
  *a5 = result;
  return result;
}

float32x4_t sub_24BD74F30@<Q0>(float32x4_t *a1@<X0>, int8x16_t *a2@<X1>, int32x4_t *a3@<X2>, float32x4_t *a4@<X3>, float *a5@<X4>, float *a6@<X5>, float32x4_t *a7@<X8>)
{
  v7 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(*a3, vextq_s8(*a3, *a3, 0xCuLL)), *a3), vuzp2q_s32(vextq_s8(*a2, *a2, 4uLL), *a2)), vzip2q_s32(vzip1q_s32(*a2, vextq_s8(*a2, *a2, 0xCuLL)), *a2), vuzp2q_s32(vextq_s8(*a3, *a3, 4uLL), *a3));
  v8 = vsubq_f32(*a4, *a1);
  v9 = vmulq_f32(*a2, v8);
  v9.i32[3] = 0;
  v10 = vmulq_f32(v7, v8);
  v10.i32[3] = 0;
  result = vaddq_f32(vaddq_f32(*a1, vmulq_n_f32(vmulq_n_f32(*a2, floorf(vaddv_f32(*&vpaddq_f32(v9, v9)) * *a6)), *a5)), vmulq_n_f32(vmulq_n_f32(v7, floorf(*a6 * vaddv_f32(*&vpaddq_f32(v10, v10)))), *a5));
  *a7 = result;
  return result;
}

int32x2_t sub_24BD74FCC@<D0>(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, int32x4_t *a3@<X2>, float32x4_t *a4@<X3>, float *a5@<X5>, int32x2_t *a6@<X8>)
{
  v6 = vsubq_f32(*a4, *a1);
  v7 = vmulq_f32(*a2, v6);
  v7.i32[3] = 0;
  v7.f32[0] = vaddv_f32(*&vpaddq_f32(v7, v7));
  v8 = vmulq_f32(vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(*a3, vextq_s8(*a3, *a3, 0xCuLL)), *a3), vuzp2q_s32(vextq_s8(*a2, *a2, 4uLL), *a2)), vzip2q_s32(vzip1q_s32(*a2, vextq_s8(*a2, *a2, 0xCuLL)), *a2), vuzp2q_s32(vextq_s8(*a3, *a3, 4uLL), *a3)), v6);
  v8.i32[3] = 0;
  v7.i32[1] = vaddv_f32(*&vpaddq_f32(v8, v8));
  result = vcvt_s32_f32(vrndm_f32(vmul_n_f32(*v7.f32, *a5)));
  *a6 = result;
  return result;
}

float32x4_t sub_24BD7504C@<Q0>(float32x4_t *a1@<X0>, int8x16_t *a2@<X1>, int32x4_t *a3@<X2>, float32x4_t *a4@<X3>, float32x4_t *a5@<X8>, float a6@<S0>, float a7@<S1>)
{
  v7 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(*a3, vextq_s8(*a3, *a3, 0xCuLL)), *a3), vuzp2q_s32(vextq_s8(*a2, *a2, 4uLL), *a2)), vzip2q_s32(vzip1q_s32(*a2, vextq_s8(*a2, *a2, 0xCuLL)), *a2), vuzp2q_s32(vextq_s8(*a3, *a3, 4uLL), *a3));
  v8 = vsubq_f32(*a4, *a1);
  v9 = vmulq_f32(*a2, v8);
  v9.i32[3] = 0;
  v10 = vmulq_f32(v7, v8);
  v10.i32[3] = 0;
  result = vaddq_f32(vmulq_n_f32(vmulq_n_f32(v7, roundf(vaddv_f32(*&vpaddq_f32(v10, v10)) * a7)), a6), vaddq_f32(*a1, vmulq_n_f32(vmulq_n_f32(*a2, roundf(vaddv_f32(*&vpaddq_f32(v9, v9)) * a7)), a6)));
  *a5 = result;
  return result;
}

uint64_t sub_24BD750E0(float32x4_t *a1, float *a2, float32x4_t *a3, float a4)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = v8 * v8;
  if (fabsf(*a2) <= fabsf(v7))
  {
    v13 = 1.0 / sqrtf(v9 + (v7 * v7));
    *&v14 = v8 * v13;
    v11 = -(v7 * v13);
    v12.i32[0] = 0;
    v12.i32[3] = 0;
    v12.i32[1] = v14;
  }

  else
  {
    v10 = 1.0 / sqrtf(v9 + (v6 * v6));
    v11 = -(v6 * v10);
    v12.i32[1] = 0;
    v12.i32[3] = 0;
    *v12.i32 = v8 * v10;
  }

  *&v12.i32[2] = v11;
  v18 = v12;
  v17 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(v12, vextq_s8(v12, v12, 0xCuLL)), v12), vuzp2q_s32(vextq_s8(*a2, *a2, 4uLL), *a2)), vzip2q_s32(vzip1q_s32(*a2, vextq_s8(*a2, *a2, 0xCuLL)), *a2), vuzp2q_s32(vextq_s8(v12, v12, 4uLL), v12));
  v16 = (vcvts_n_f32_s32(rand(), 0x1FuLL) * 2.0) + -1.0;
  *a3 = vaddq_f32(*a1, vmulq_n_f32(vaddq_f32(vmulq_n_f32(v17, v16), vmulq_n_f32(v18, (vcvts_n_f32_s32(rand(), 0x1FuLL) * 2.0) + -1.0)), a4));
  return 1;
}

BOOL sub_24BD7520C(void *a1, void *a2, void *a3, float a4)
{
  v8 = (a3[1] - *a3) >> 4;
  v9 = (*(*a1 + 16))(a1);
  if (v8 == v9)
  {
    srand(2u);
    if ((*(*a1 + 16))(a1))
    {
      v10 = 0;
      v11 = 1;
      do
      {
        sub_24BD750E0((a1[5] + 16 * v10), (*a2 + 16 * v10), (*a3 + 16 * v10), a4);
        v10 = v11;
      }

      while ((*(*a1 + 16))(a1) > v11++);
    }
  }

  return v8 == v9;
}

uint64_t sub_24BD75330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, _OWORD *a6, int8x16_t a7)
{
  v7 = 0;
  v56 = *MEMORY[0x277D85DE8];
  do
  {
    v53[v7] = *(a1 + 4 * v7);
    ++v7;
  }

  while (v7 != 3);
  for (i = 0; i != 3; ++i)
  {
    *(&v49 + i) = *(a2 + 4 * i);
  }

  for (j = 0; j != 3; ++j)
  {
    *(&v47 + j) = *(a1 + 4 * j);
  }

  v10 = 0;
  *&v11.f64[0] = vdupq_laneq_s64(v50, 1).u64[0];
  v11.f64[1] = v49;
  *&v12.f64[0] = vdupq_laneq_s64(v48, 1).u64[0];
  v12.f64[1] = v47;
  v54 = vmlaq_f64(vmulq_f64(v48, vnegq_f64(v11)), v12, v50);
  v55 = v49 * *v48.i64 - *v50.i64 * v47;
  do
  {
    *(&v49 + v10) = *(a3 + 4 * v10);
    ++v10;
  }

  while (v10 != 3);
  for (k = 0; k != 3; ++k)
  {
    *(&v47 + k) = *(a4 + 4 * k);
  }

  for (m = 0; m != 3; ++m)
  {
    *(&v45 + m) = *(a3 + 4 * m);
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  *&v18.f64[0] = vdupq_laneq_s64(v48, 1).u64[0];
  v18.f64[1] = v47;
  *&v19.f64[0] = vdupq_laneq_s64(v46, 1).u64[0];
  v19.f64[1] = v45;
  v51 = vmlaq_f64(vmulq_f64(v46, vnegq_f64(v18)), v19, v48);
  v52 = v47 * *v46.i64 - *v48.i64 * v45;
  v20 = v53;
  v21 = -1.79769313e308;
  v22 = 1;
  do
  {
    v23 = 0;
    v24 = v22;
    v25 = v20->f64[0];
    v26 = v20->f64[1];
    v27 = &v49;
    v28 = 1;
    v29 = v20[1].f64[0];
    do
    {
      v30 = v28;
      v31 = fabs(v26 * v27->f64[1] + v25 * v27->f64[0] + v29 * v27[1].f64[0]);
      if (v31 > v21)
      {
        v17 = v15;
        v21 = v31;
        v16 = v23;
      }

      v23 = 1;
      v27 = &v51;
      v28 = 0;
    }

    while ((v30 & 1) != 0);
    v22 = 0;
    v15 = 1;
    v20 = &v54;
  }

  while ((v24 & 1) != 0);
  v32 = &v53[3 * v17];
  v33 = (&v49 + 3 * v16);
  a7.i64[0] = *&v32[1].f64[0];
  v34 = v33[1].f64[0];
  v35 = *v32;
  *&v36 = vcvt_f32_f64(*v32);
  *&v37 = *a7.i64;
  *(&v36 + 1) = v37;
  *a5 = v36;
  *a7.i64 = COERCE_DOUBLE(*&vmulq_f64(v35, *v33).f64[1]) + v35.f64[0] * v33->f64[0] + *a7.i64 * v34;
  v35.f64[0] = 1.0;
  v38.f64[0] = NAN;
  v38.f64[1] = NAN;
  v39 = *vbslq_s8(vnegq_f64(v38), v35, a7).i64;
  v40 = vmulq_n_f64(*v33, v39);
  v41 = v34 * v39;
  *&v42 = vcvt_f32_f64(v40);
  *&v41 = v41;
  *(&v42 + 1) = LODWORD(v41);
  *a6 = v42;
  v43 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t sub_24BD755BC(float32x4_t *a1, int32x4_t *a2, int32x4_t *a3, float32x4_t *a4, float32x4_t *a5, int32x4_t *a6, int32x4_t *a7, float32x4_t *a8, float *a9, float *a10, float32x4_t *a11, float32x4_t *a12)
{
  v12 = 0;
  v13 = *a3;
  v14 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(*a2, vextq_s8(*a2, *a2, 0xCuLL)), *a2), vuzp2q_s32(vextq_s8(v13, v13, 4uLL), *a3)), vzip2q_s32(vzip1q_s32(*a3, vextq_s8(v13, v13, 0xCuLL)), *a3), vuzp2q_s32(vextq_s8(*a2, *a2, 4uLL), *a2));
  v15 = *a7;
  v16 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(*a6, vextq_s8(*a6, *a6, 0xCuLL)), *a6), vuzp2q_s32(vextq_s8(v15, v15, 4uLL), *a7)), vzip2q_s32(vzip1q_s32(*a7, vextq_s8(v15, v15, 0xCuLL)), *a7), vuzp2q_s32(vextq_s8(*a6, *a6, 4uLL), *a6));
  v17 = vmulq_f32(*a2, *a1);
  v17.i32[3] = 0;
  v18 = vmulq_f32(*a2, *a5);
  v18.i32[3] = 0;
  v19 = vmulq_f32(*a6, *a1);
  v19.i32[3] = 0;
  v20 = vmulq_f32(*a6, *a5);
  v20.i32[3] = 0;
  v21 = vmulq_f32(*a2, *a6);
  v21.i32[3] = 0;
  v21.f32[0] = vaddv_f32(*&vpaddq_f32(v21, v21));
  v17.f32[0] = vaddv_f32(*&vpaddq_f32(v18, v18)) - vaddv_f32(*&vpaddq_f32(v17, v17));
  v18.f32[0] = vaddv_f32(*&vpaddq_f32(v19, v19)) - vaddv_f32(*&vpaddq_f32(v20, v20));
  v22.i64[0] = 0x3F0000003F000000;
  v22.i64[1] = 0x3F0000003F000000;
  __asm { FMOV            V5.4S, #-0.25 }

  v28 = vaddq_f32(vmulq_f32(vaddq_f32(*a1, *a5), v22), vmulq_f32(vaddq_f32(vmulq_n_f32(*a6, ((v18.f32[0] - (v21.f32[0] * v17.f32[0])) + (v18.f32[0] - (v21.f32[0] * v17.f32[0]))) * (1.0 / ((1.0 - (v21.f32[0] * v21.f32[0])) + 0.0001))), vmulq_n_f32(*a2, ((v17.f32[0] - (v21.f32[0] * v18.f32[0])) + (v17.f32[0] - (v21.f32[0] * v18.f32[0]))) * (1.0 / ((1.0 - (v21.f32[0] * v21.f32[0])) + 0.0001)))), _Q5));
  v29 = vsubq_f32(v28, *a4);
  v30 = vmulq_f32(*a3, v29);
  v30.i32[3] = 0;
  v31 = vmulq_n_f32(*a3, floorf(vaddv_f32(*&vpaddq_f32(v30, v30)) * *a10));
  v32 = *a9;
  v33 = vmulq_f32(v14, v29);
  v33.i32[3] = 0;
  v34 = vaddq_f32(vaddq_f32(*a4, vmulq_n_f32(v31, *a9)), vmulq_n_f32(vmulq_n_f32(v14, floorf(*a10 * vaddv_f32(*&vpaddq_f32(v33, v33)))), *a9));
  v35 = vsubq_f32(v28, *a8);
  v36 = vmulq_f32(*a7, v35);
  v36.i32[3] = 0;
  v37 = vmulq_f32(v16, v35);
  v37.i32[3] = 0;
  v38 = vaddq_f32(vaddq_f32(*a8, vmulq_n_f32(vmulq_n_f32(*a7, floorf(*a10 * vaddv_f32(*&vpaddq_f32(v36, v36)))), *a9)), vmulq_n_f32(vmulq_n_f32(v16, floorf(*a10 * vaddv_f32(*&vpaddq_f32(v37, v37)))), *a9));
  v39 = -1;
  v40 = 1.79769313e308;
  v41 = -1;
  do
  {
    v42 = 0;
    v43 = vaddq_f32(v34, vmulq_n_f32(vaddq_f32(vmulq_n_f32(v14, (v12 >> 1)), vmulq_n_f32(v13, (v12 & 1))), v32));
    do
    {
      v44 = vsubq_f32(v43, vaddq_f32(v38, vmulq_n_f32(vaddq_f32(vmulq_n_f32(v16, (v42 >> 1)), vmulq_n_f32(v15, (v42 & 1))), v32)));
      v45 = vmulq_f32(v44, v44);
      v45.i32[3] = 0;
      v46 = sqrtf(vaddv_f32(*&vpaddq_f32(v45, v45)));
      if (v40 > v46)
      {
        v40 = v46;
        v41 = v12;
        v39 = v42;
      }

      ++v42;
    }

    while (v42 != 4);
    ++v12;
  }

  while (v12 != 4);
  *a11 = vaddq_f32(v34, vmulq_n_f32(vaddq_f32(vmulq_n_f32(v13, (v41 & 1)), vmulq_n_f32(v14, ((v41 >> 1) & 1))), v32));
  *a12 = vaddq_f32(v38, vmulq_n_f32(vaddq_f32(vmulq_n_f32(v16, ((v39 >> 1) & 1)), vmulq_n_f32(*a7, (v39 & 1))), *a9));
  return 1;
}

uint64_t sub_24BD75894(float32x4_t *a1, int32x4_t *a2, int32x4_t *a3, float32x4_t *a4, float32x4_t *a5, int32x4_t *a6, int32x4_t *a7, float32x4_t *a8, const float *a9, float *a10, float *a11, _DWORD *a12, _DWORD *a13)
{
  v13 = 0;
  v15 = *a3;
  v16 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(*a2, vextq_s8(*a2, *a2, 0xCuLL)), *a2), vuzp2q_s32(vextq_s8(v15, v15, 4uLL), *a3)), vzip2q_s32(vzip1q_s32(*a3, vextq_s8(v15, v15, 0xCuLL)), *a3), vuzp2q_s32(vextq_s8(*a2, *a2, 4uLL), *a2));
  v17 = *a7;
  v18 = vmlsq_f32(vmulq_f32(vzip2q_s32(vzip1q_s32(*a6, vextq_s8(*a6, *a6, 0xCuLL)), *a6), vuzp2q_s32(vextq_s8(v17, v17, 4uLL), *a7)), vzip2q_s32(vzip1q_s32(*a7, vextq_s8(v17, v17, 0xCuLL)), *a7), vuzp2q_s32(vextq_s8(*a6, *a6, 4uLL), *a6));
  v19 = vmulq_f32(*a2, *a1);
  v19.i32[3] = 0;
  v20 = vmulq_f32(*a2, *a5);
  v20.i32[3] = 0;
  v21 = vmulq_f32(*a6, *a1);
  v21.i32[3] = 0;
  v21.f32[0] = vaddv_f32(*&vpaddq_f32(v21, v21));
  v22 = vmulq_f32(*a6, *a5);
  v22.i32[3] = 0;
  v22.f32[0] = vaddv_f32(*&vpaddq_f32(v22, v22));
  v23 = vmulq_f32(*a2, *a6);
  v23.i32[3] = 0;
  v23.f32[0] = vaddv_f32(*&vpaddq_f32(v23, v23));
  v19.f32[0] = vaddv_f32(*&vpaddq_f32(v20, v20)) - vaddv_f32(*&vpaddq_f32(v19, v19));
  v24.i64[0] = 0x3F0000003F000000;
  v24.i64[1] = 0x3F0000003F000000;
  __asm { FMOV            V5.4S, #-0.25 }

  v30 = vaddq_f32(vmulq_f32(vaddq_f32(*a1, *a5), v24), vmulq_f32(vaddq_f32(vmulq_n_f32(*a6, (((v21.f32[0] - v22.f32[0]) - (v23.f32[0] * v19.f32[0])) + ((v21.f32[0] - v22.f32[0]) - (v23.f32[0] * v19.f32[0]))) * (1.0 / ((1.0 - (v23.f32[0] * v23.f32[0])) + 0.0001))), vmulq_n_f32(*a2, ((v19.f32[0] - (v23.f32[0] * (v21.f32[0] - v22.f32[0]))) + (v19.f32[0] - (v23.f32[0] * (v21.f32[0] - v22.f32[0])))) * (1.0 / ((1.0 - (v23.f32[0] * v23.f32[0])) + 0.0001)))), _Q5));
  v31 = vsubq_f32(v30, *a4);
  v32 = vmulq_f32(*a3, v31);
  v32.i32[3] = 0;
  v33 = vcvtms_s32_f32(vaddv_f32(*&vpaddq_f32(v32, v32)) * *a10);
  v34 = vmulq_f32(v16, v31);
  v34.i32[3] = 0;
  v35 = vcvtms_s32_f32(*a10 * vaddv_f32(*&vpaddq_f32(v34, v34)));
  v36 = vsubq_f32(v30, *a8);
  v37 = vmulq_f32(*a7, v36);
  v37.i32[3] = 0;
  v38 = vcvtms_s32_f32(*a10 * vaddv_f32(*&vpaddq_f32(v37, v37)));
  v39 = vmulq_f32(v18, v36);
  v39.i32[3] = 0;
  v40 = vcvtms_s32_f32(*a10 * vaddv_f32(*&vpaddq_f32(v39, v39)));
  v41 = vld1q_dup_f32(a9);
  v42 = -1;
  v43 = 3.4028e38;
  v44 = -1;
  do
  {
    v45 = 0;
    v46 = vaddq_f32(*a4, vmulq_f32(vaddq_f32(vmulq_n_f32(v16, (v35 + (v13 >> 1))), vmulq_n_f32(v15, ((v13 & 1) + v33))), v41));
    do
    {
      v47 = vsubq_f32(v46, vaddq_f32(*a8, vmulq_f32(v41, vaddq_f32(vmulq_n_f32(v18, (v40 + (v45 >> 1))), vmulq_n_f32(v17, ((v45 & 1) + v38))))));
      v48 = vmulq_f32(v47, v47);
      v48.i32[3] = 0;
      v49 = vaddv_f32(*&vpaddq_f32(v48, v48));
      if (v49 < v43)
      {
        v43 = v49;
        v44 = v13;
        v42 = v45;
      }

      ++v45;
    }

    while (v45 != 4);
    ++v13;
  }

  while (v13 != 4);
  *a11 = v43;
  *a12 = (v44 & 1) + v33;
  a12[1] = ((v44 >> 1) & 1) + v35;
  *a13 = (v42 & 1) + v38;
  a13[1] = ((v42 >> 1) & 1) + v40;
  return 1;
}