char *sub_3EC34C(uint64_t a1, uint64_t a2)
{
  result = sub_31D994(a1, a2, 1);
  if (result)
  {
    v5 = &result[-*result];
    if (*v5 < 0xBu)
    {
      return 0;
    }

    else
    {
      if (!*(v5 + 5))
      {
        return 0;
      }

      v6 = &result[*(v5 + 5) + *&result[*(v5 + 5)]];
      if (*v6 <= WORD2(a2))
      {
        return 0;
      }

      v7 = &v6[8 * WORD2(a2)];
      v8 = (a2 & 0xFF000000000000) == 0x1000000000000;
      v9 = *(v7 + 1);
      if (!v9)
      {
        return 0;
      }

      v10 = v7[10];
      v11 = *(v7 + 4);
      result = sub_2B3284(a1, v9, 1);
      if (result)
      {
        v12 = &result[-*result];
        v13 = *v12;
        if (v8 != (v10 & 2) >> 1)
        {
          if (v13 < 5)
          {
            return 0;
          }

          v14 = *(v12 + 2);
          if (!v14)
          {
            return 0;
          }
        }

        else
        {
          if (v13 < 7)
          {
            return 0;
          }

          v14 = *(v12 + 3);
          if (!v14)
          {
            return 0;
          }
        }

        v15 = &result[v14 + *&result[v14]];
        if (*v15 > v11)
        {
          return &v15[4 * v11 + 4 + *&v15[4 * v11 + 4]];
        }

        return 0;
      }
    }
  }

  return result;
}

char *sub_3EC480(uint64_t a1, int *a2, int a3, uint64_t **a4)
{
  v4 = (a2 - *a2);
  v5 = *v4;
  if (v5 < 5)
  {
    return 0;
  }

  if (v4[2])
  {
    result = a2 + v4[2] + *(a2 + v4[2]);
    if (v5 < 0xD)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v5 < 0xD)
    {
      return result;
    }
  }

  v8 = v4[6];
  if (v8)
  {
    v9 = (a2 + v8 + *(a2 + v8));
    v10 = *v9;
    if (v10)
    {
      v11 = 4 * v10;
      if (!a3)
      {
        goto LABEL_27;
      }

      v12 = 0;
      v13 = &v9[v11 / 4 + 1];
      while (1)
      {
        v15 = v9[v12 / 4 + 1];
        v16 = v15 - *(&v9[v12 / 4 + 1] + v15);
        v17 = &v9[v12 / 4] + v16;
        v18 = *(v17 + 2);
        if (v18 >= 9)
        {
          v19 = *(v17 + 6);
          if ((!v19 || !*(&v9[v12 / 4 + 1] + v15 + v19)) && v18 >= 0xB)
          {
            if (*(&v9[v12 / 4 + 3] + v16 + 2))
            {
              if (*(&v9[v12 / 4 + 1] + v15 + *(&v9[v12 / 4 + 3] + v16 + 2)) == a3)
              {
                v14 = &v9[v12 / 4];
                if (!*(&v9[v12 / 4 + 1] + v15 + *(&v9[v12 / 4 + 4] + v16)))
                {
                  break;
                }
              }
            }
          }
        }

        v12 += 4;
        if (v11 == v12)
        {
          v20 = &v9[v12 / 4 + 1];
          if (v20 == v13)
          {
            goto LABEL_27;
          }

          goto LABEL_23;
        }
      }

      v20 = v14 + 1;
      if (v14 + 1 == v13)
      {
        goto LABEL_27;
      }

LABEL_23:
      v21 = (v20 + *v20);
      v22 = (v21 - *v21);
      if (*v22 >= 7u && (v23 = v22[3]) != 0)
      {
        result = v21 + v23 + *(v21 + v23);
      }

      else
      {
        result = 0;
      }

LABEL_27:
      v24 = *(a1 + 3872);
      if (!v24)
      {
        v34 = 0;
        goto LABEL_69;
      }

      v25 = 0;
      v26 = &v9[v11 / 4 + 1];
      do
      {
        v27 = v9[v25 / 4 + 1];
        v28 = v27 - *(&v9[v25 / 4 + 1] + v27);
        v29 = &v9[v25 / 4] + v28;
        if (*(v29 + 2) >= 9u)
        {
          v30 = *(v29 + 6);
          if (v30)
          {
            LODWORD(v30) = *(&v9[v25 / 4 + 1] + v27 + v30);
          }

          if (v24 == v30)
          {
            v31 = &v9[v25 / 4];
            v32 = &v9[v25 / 4] + v28;
            if ((!*(v32 + 7) || !*(v31 + v27 + *(v32 + 7) + 4)) && !*(v31 + v27 + *(v32 + 8) + 4))
            {
              break;
            }
          }
        }

        v25 += 4;
      }

      while (v11 != v25);
      v33 = &v9[v25 / 4 + 1];
      v34 = v33 != v26;
      if (v33 != v26)
      {
        v35 = (v33 + *v33);
        v36 = (v35 - *v35);
        if (*v36 >= 7u && (v37 = v36[3]) != 0)
        {
          result = v35 + v37 + *(v35 + v37);
        }

        else
        {
          result = 0;
        }
      }

      if (a3)
      {
        v38 = 0;
        do
        {
          v40 = v9[v38 / 4 + 1];
          v41 = v40 - *(&v9[v38 / 4 + 1] + v40);
          v42 = &v9[v38 / 4] + v41;
          v43 = *(v42 + 2);
          if (v43 >= 9)
          {
            v44 = *(v42 + 6);
            if (v44)
            {
              LODWORD(v44) = *(&v9[v38 / 4 + 1] + v40 + v44);
            }

            if (v24 == v44 && v43 >= 0xB)
            {
              if (*(&v9[v38 / 4 + 3] + v41 + 2))
              {
                if (*(&v9[v38 / 4 + 1] + v40 + *(&v9[v38 / 4 + 3] + v41 + 2)) == a3)
                {
                  v39 = &v9[v38 / 4];
                  if (!*(&v9[v38 / 4 + 1] + v40 + *(&v9[v38 / 4 + 4] + v41)))
                  {
                    v45 = v39 + 1;
                    if (v39 + 1 == v26)
                    {
                      goto LABEL_69;
                    }

                    goto LABEL_64;
                  }
                }
              }
            }
          }

          v38 += 4;
        }

        while (v11 != v38);
        v45 = &v9[v38 / 4 + 1];
        if (v45 == v26)
        {
          goto LABEL_69;
        }

LABEL_64:
        v46 = (v45 + *v45);
        v47 = (v46 - *v46);
        if (*v47 >= 7u && (v48 = v47[3]) != 0)
        {
          result = v46 + v48 + *(v46 + v48);
        }

        else
        {
          result = 0;
        }

        v34 = 1;
      }

LABEL_69:
      v49 = *a4;
      v50 = a4[1];
      if (*a4 == v50)
      {
        return result;
      }

      v51 = &v9[v11 / 4 + 1];
      do
      {
        v53 = 0;
        v54 = *v49;
        v55 = WORD2(*v49);
        while (1)
        {
          v56 = v9[v53 / 4 + 1];
          v57 = v56 - *(&v9[v53 / 4 + 1] + v56);
          v58 = &v9[v53 / 4] + v57;
          v59 = *(v58 + 2);
          if (v59 < 9)
          {
            if (v24)
            {
              goto LABEL_74;
            }
          }

          else
          {
            v60 = *(v58 + 6);
            if (v60)
            {
              LODWORD(v60) = *(&v9[v53 / 4 + 1] + v56 + v60);
            }

            if (v24 != v60)
            {
              goto LABEL_74;
            }
          }

          if (v59 < 0xD)
          {
            break;
          }

          v61 = *(&v9[v53 / 4 + 4] + v57);
          if (!v61)
          {
            break;
          }

          v62 = &v9[v53 / 4] + v56 + v61;
          v64 = *(v62 + 1);
          v63 = v62 + 4;
          if (v64 == v54)
          {
            goto LABEL_86;
          }

LABEL_74:
          v53 += 4;
          if (v11 == v53)
          {
            goto LABEL_88;
          }
        }

        v63 = 0;
        if (v54 != -17958193)
        {
          goto LABEL_74;
        }

LABEL_86:
        if (*(v63 + 2) != v55 || ((v54 & 0x4000000000000000) != 0) == (v63[6] == 0))
        {
          goto LABEL_74;
        }

LABEL_88:
        v65 = &v9[v53 / 4 + 1];
        if (v65 != v51)
        {
          v76 = (v65 + *v65);
          v77 = (v76 - *v76);
          if (*v77 >= 7u)
          {
            goto LABEL_107;
          }

          return 0;
        }

        if (!v34)
        {
          v66 = 0;
          while (2)
          {
            v67 = v9[v66 / 4 + 1];
            v68 = v67 - *(&v9[v66 / 4 + 1] + v67);
            v69 = &v9[v66 / 4] + v68;
            v70 = *(v69 + 2);
            if (v70 < 9)
            {
              goto LABEL_99;
            }

            v71 = *(v69 + 6);
            if (v71 && *(&v9[v66 / 4 + 1] + v67 + v71))
            {
              goto LABEL_91;
            }

            if (v70 >= 0xD && (v72 = *(&v9[v66 / 4 + 4] + v68)) != 0)
            {
              v73 = &v9[v66 / 4] + v67 + v72;
              v75 = *(v73 + 1);
              v74 = v73 + 4;
              if (v75 == v54)
              {
LABEL_100:
                if (*(v74 + 2) == v55 && ((v54 & 0x4000000000000000) != 0) != (v74[6] == 0))
                {
LABEL_71:
                  v52 = &v9[v66 / 4 + 1];
                  if (v52 == v51)
                  {
                    break;
                  }

                  v76 = (v52 + *v52);
                  v77 = (v76 - *v76);
                  if (*v77 >= 7u)
                  {
LABEL_107:
                    v78 = v77[3];
                    if (v78)
                    {
                      return v76 + v78 + *(v76 + v78);
                    }
                  }

                  return 0;
                }
              }
            }

            else
            {
LABEL_99:
              v74 = 0;
              if (v54 == -17958193)
              {
                goto LABEL_100;
              }
            }

LABEL_91:
            v66 += 4;
            if (v11 == v66)
            {
              goto LABEL_71;
            }

            continue;
          }
        }

        ++v49;
      }

      while (v49 != v50);
    }
  }

  return result;
}

uint64_t sub_3ECA60(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 64);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 24);
        if (v5)
        {
          do
          {
            v7 = *v5;
            v8 = *(v5 + 12);
            if (v8 != -1)
            {
              (off_2669C70[v8])(&v17, v5 + 5);
            }

            *(v5 + 12) = -1;
            if (*(v5 + 39) < 0)
            {
              operator delete(v5[2]);
            }

            operator delete(v5);
            v5 = v7;
          }

          while (v7);
        }

        v6 = *(v3 - 40);
        *(v3 - 40) = 0;
        if (v6)
        {
          operator delete(v6);
        }

        v3 -= 48;
      }

      while (v3 != v2);
      v4 = *(a1 + 64);
    }

    *(a1 + 72) = v2;
    operator delete(v4);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 40);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(a1 + 40);
    }

    *(a1 + 48) = v9;
    operator delete(v11);
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    do
    {
      v16 = *v13;
      if (*(v13 + 39) < 0)
      {
        operator delete(v13[2]);
      }

      operator delete(v13);
      v13 = v16;
    }

    while (v16);
  }

  v14 = *a1;
  *a1 = 0;
  if (v14)
  {
    operator delete(v14);
  }

  return a1;
}

void sub_3ECBD4(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_3EEA68(v3 - 1096);
      }

      while (v3 != v2);
      v4 = *(a1 + 32);
    }

    *(a1 + 40) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    if (v6 != v5)
    {
      do
      {
        v6 -= 80;
        sub_3ED230(v6);
      }

      while (v6 != v5);
      v7 = *(a1 + 8);
    }

    *(a1 + 16) = v5;

    operator delete(v7);
  }
}

uint64_t sub_3ECC98(uint64_t *a1, uint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    sub_1794();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v5 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1E1E1E1E1E1E1E1)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  sub_3ECE50(v15, a2);
  v6 = 136 * v2 + 136;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v15 + v9;
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v15 + v9;
    do
    {
      sub_3EED24(v13, v12);
      v12 += 136;
      v13 += 136;
      v11 -= 136;
    }

    while (v12 != v8);
    do
    {
      sub_3ECBD4(v7);
      v7 += 136;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_3ECE0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3EEE48(va);
  _Unwind_Resume(a1);
}

void sub_3ECE20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v3)
  {
    v5 = v2 - 136;
    do
    {
      sub_3ECBD4(v5);
      v5 -= 136;
      v3 += 136;
    }

    while (v3);
  }

  sub_3EEE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3ECE50(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_3ECFD8(a1 + 8, *(a2 + 8), *(a2 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 4));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_3ED39C(a1 + 32, *(a2 + 32), *(a2 + 40), 0xE21A291C077975B9 * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 102) = *(a2 + 102);
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  if (*(a2 + 135) < 0)
  {
    sub_325C((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v7 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v7;
  }

  return a1;
}

void sub_3ECF44(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

void **sub_3ECF74(void **a1)
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
        v3 -= 80;
        sub_3ED230(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_3ECFD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x333333333333334)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_3ED0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 80;
    v15 = -v12;
    do
    {
      sub_3ED230(v14);
      v14 -= 80;
      v15 += 80;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_3ED324(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_3ED0F4(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  *(a1 + 24) = 0;
  *(a1 + 48) = -1;
  v5 = *(a2 + 12);
  if (v5 != -1)
  {
    v7 = a1 + 24;
    (off_2669CE8[v5])(&v7, a2 + 24);
    *(a1 + 48) = v5;
  }

  sub_8410C((a1 + 56), a2 + 7);
  return a1;
}

void sub_3ED1A0(_Unwind_Exception *a1)
{
  sub_840B0(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3ED1D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_2669CB8[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

void sub_3ED230(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 56);
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 32;
        v6 = *(v3 - 8);
        if (v6 != -1)
        {
          (off_2669CB8[v6])(&v8, v3 - 32);
        }

        *(v3 - 8) = -1;
        v3 -= 32;
      }

      while (v5 != v2);
      v4 = *(a1 + 56);
    }

    *(a1 + 64) = v2;
    operator delete(v4);
  }

  v7 = *(a1 + 48);
  if (v7 != -1)
  {
    (off_2669CB8[v7])(&v9, a1 + 24);
  }

  *(a1 + 48) = -1;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void ***sub_3ED324(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v4 -= 80;
          sub_3ED230(v4);
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

void sub_3ED39C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x3BCBADC7F10D15)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_3ED484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 1096;
    v15 = -v12;
    do
    {
      v14 = sub_3EEA68(v14) - 1096;
      v15 += 1096;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_3EEC50(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_3ED4B8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v4 - *a2) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  if (v5 != v6)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v5 - v6) >> 3)) < 0x492492492492493)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_3EDA50((a1 + 72), (a2 + 72));
  v9 = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = v9;
  *(a1 + 136) = *(a2 + 136);
  v10 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = v10;
  sub_3EDBB0(a1 + 168, (a2 + 168));
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  v11 = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 320) = v11;
  sub_3EDBB0(a1 + 344, (a2 + 344));
  *(a1 + 480) = *(a2 + 480);
  v12 = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 488) = v12;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  v14 = *(a2 + 504);
  v13 = *(a2 + 512);
  if (v13 != v14)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v15 = *(a2 + 528);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 528) = v15;
  *(a1 + 544) = *(a2 + 544);
  sub_3EDCF4(a1 + 552, (a2 + 552));
  *(a1 + 840) = *(a2 + 840);
  sub_3EE260((a1 + 856), (a2 + 856));
  *(a1 + 1016) = 0;
  *(a1 + 1000) = 0u;
  v16 = *(a2 + 1000);
  v17 = *(a2 + 1008);
  if (v17 != v16)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1040) = 0;
  *(a1 + 1024) = 0u;
  sub_3EE524(a1 + 1024, *(a2 + 1024), *(a2 + 1032), (*(a2 + 1032) - *(a2 + 1024)) >> 6);
  sub_81988((a1 + 1048), a2 + 1048);
  *(a1 + 1088) = 0;
  *(a1 + 1072) = 0u;
  v18 = *(a2 + 1072);
  v19 = *(a2 + 1080);
  if (v19 != v18)
  {
    if (((v19 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_3ED8B4(_Unwind_Exception *a1)
{
  sub_3EE86C((v1 + 1024));
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 1008) = v7;
    operator delete(v7);
  }

  sub_3EE920(v1 + 856);
  sub_3EE9A4((v1 + 552));
  v8 = *(v1 + 504);
  if (v8)
  {
    *(v1 + 512) = v8;
    operator delete(v8);
  }

  sub_3EDA0C((v1 + 312));
  sub_3EDA0C(v2);
  sub_21DB4B4(v1 + 72);
  v9 = *v4;
  if (*v4)
  {
    *(v1 + 56) = v9;
    operator delete(v9);
  }

  v10 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v10;
    operator delete(v10);
    v11 = *v1;
    if (!*v1)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v11 = *v1;
    if (!*v1)
    {
      goto LABEL_10;
    }
  }

  *(v1 + 8) = v11;
  operator delete(v11);
  goto LABEL_10;
}

void sub_3ED9D4()
{
  if (!*(v0 + 504))
  {
    JUMPOUT(0x3ED978);
  }

  JUMPOUT(0x3ED970);
}

void sub_3ED9E4()
{
  if (!*v0)
  {
    JUMPOUT(0x3ED9A0);
  }

  JUMPOUT(0x3ED998);
}

void sub_3ED9FC()
{
  if (!*v0)
  {
    JUMPOUT(0x3ED9B8);
  }

  JUMPOUT(0x3ED9B0);
}

void *sub_3EDA0C(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  return a1;
}

void *sub_3EDA50(void *result, void *a2)
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

  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  v4 = a2[3];
  v3 = a2[4];
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_3EDB7C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3EDBB0(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(result + 32) = *(a2 + 4);
  *(result + 40) = 0;
  *result = v2;
  *(result + 16) = v3;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v5 = *(a2 + 5);
  v4 = *(a2 + 6);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  v7 = *(a2 + 8);
  v6 = *(a2 + 9);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = *(a2 + 88);
  v9 = *(a2 + 104);
  *(result + 120) = *(a2 + 120);
  *(result + 104) = v9;
  *(result + 88) = v8;
  return result;
}

void sub_3EDCC0(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 72) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3EDCF4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *(result + 16) = 0;
  *result = v2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v4 = a2[2];
  v3 = a2[3];
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  v6 = a2[5];
  v5 = a2[6];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  v8 = a2[8];
  v7 = a2[9];
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  v10 = a2[11];
  v9 = a2[12];
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  v12 = a2[14];
  v11 = a2[15];
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  v14 = a2[17];
  v13 = a2[18];
  if (v13 != v14)
  {
    if (((v13 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 160) = 0;
  *(result + 168) = 0;
  *(result + 176) = 0;
  v16 = a2[20];
  v15 = a2[21];
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 184) = 0;
  *(result + 192) = 0;
  *(result + 200) = 0;
  v18 = a2[23];
  v17 = a2[24];
  if (v17 != v18)
  {
    if (((v17 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 208) = 0;
  *(result + 216) = 0;
  *(result + 224) = 0;
  v20 = a2[26];
  v19 = a2[27];
  if (v19 != v20)
  {
    if (((v19 - v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 232) = 0;
  *(result + 240) = 0;
  *(result + 248) = 0;
  v22 = a2[29];
  v21 = a2[30];
  if (v21 != v22)
  {
    if (((v21 - v22) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v23 = *(a2 + 17);
  *(result + 256) = *(a2 + 16);
  *(result + 272) = v23;
  return result;
}

void sub_3EE0DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, void **a11, void **a12)
{
  v20 = *v12;
  if (*v12)
  {
    v16[30] = v20;
    operator delete(v20);
    v21 = *v15;
    if (!*v15)
    {
LABEL_3:
      v22 = *v14;
      if (!*v14)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v21 = *v15;
    if (!*v15)
    {
      goto LABEL_3;
    }
  }

  v16[27] = v21;
  operator delete(v21);
  v22 = *v14;
  if (!*v14)
  {
LABEL_4:
    v23 = *v13;
    if (!*v13)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v16[24] = v22;
  operator delete(v22);
  v23 = *v13;
  if (!*v13)
  {
LABEL_5:
    v24 = *v18;
    if (!*v18)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v16[21] = v23;
  operator delete(v23);
  v24 = *v18;
  if (!*v18)
  {
LABEL_6:
    v25 = *v17;
    if (!*v17)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v16[18] = v24;
  operator delete(v24);
  v25 = *v17;
  if (!*v17)
  {
LABEL_7:
    v26 = *a9;
    if (!*a9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_21:
  v16[15] = v25;
  operator delete(v25);
  v26 = *a9;
  if (!*a9)
  {
LABEL_9:
    v27 = *a10;
    if (*a10)
    {
      v16[9] = v27;
      operator delete(v27);
    }

    v28 = *a11;
    if (*a11)
    {
      v16[6] = v28;
      operator delete(v28);
    }

    v29 = *a12;
    if (*a12)
    {
      v16[3] = v29;
      operator delete(v29);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_8:
  v16[12] = v26;
  operator delete(v26);
  goto LABEL_9;
}

void sub_3EE220()
{
  if (!*v0)
  {
    JUMPOUT(0x3EE124);
  }

  JUMPOUT(0x3EE11CLL);
}

void sub_3EE230()
{
  if (!*v0)
  {
    JUMPOUT(0x3EE138);
  }

  JUMPOUT(0x3EE130);
}

void sub_3EE240()
{
  if (!*v0)
  {
    JUMPOUT(0x3EE14CLL);
  }

  JUMPOUT(0x3EE144);
}

void sub_3EE250()
{
  if (!*v0)
  {
    JUMPOUT(0x3EE160);
  }

  JUMPOUT(0x3EE158);
}

void *sub_3EE260(void *result, void *a2)
{
  result[1] = 0;
  *result = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_20;
  }

  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  v4 = a2[3];
  v3 = a2[4];
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_20;
  }

  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  v6 = a2[6];
  v5 = a2[7];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_20;
  }

  result[9] = 0;
  result[10] = 0;
  result[11] = 0;
  v8 = a2[9];
  v7 = a2[10];
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_20;
  }

  result[12] = 0;
  result[13] = 0;
  result[14] = 0;
  v10 = a2[12];
  v9 = a2[13];
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_20;
  }

  result[15] = 0;
  result[16] = 0;
  result[17] = 0;
  v12 = a2[15];
  v11 = a2[16];
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_20:
    sub_1794();
  }

  return result;
}

void sub_3EE4D8(_Unwind_Exception *exception_object)
{
  v6 = *v2;
  if (*v2)
  {
    *v3 = v6;
    operator delete(v6);
  }

  if (v4)
  {
    v7 = v2;
    do
    {
      v9 = *(v7 - 3);
      v7 -= 3;
      v8 = v9;
      if (v9)
      {
        *(v2 - 2) = v8;
        operator delete(v8);
      }

      v2 = v7;
    }

    while (v7 != v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_3EE524(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 58))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_3EE6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3EE7A8(va);
  _Unwind_Resume(a1);
}

void sub_3EE6C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void **);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_35390(va2);
  sub_3EE704(va1);
  *(a3 + 8) = a2;
  sub_3EE7A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3EE704(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v6 = *(v3 - 32);
      if (v6)
      {
        v7 = *(v3 - 24);
        v5 = *(v3 - 32);
        if (v7 != v6)
        {
          v8 = *(v3 - 24);
          do
          {
            v10 = *(v8 - 24);
            v8 -= 24;
            v9 = v10;
            if (v10)
            {
              *(v7 - 16) = v9;
              operator delete(v9);
            }

            v7 = v8;
          }

          while (v8 != v6);
          v5 = *(v3 - 32);
        }

        *(v3 - 24) = v6;
        operator delete(v5);
      }

      v3 -= 64;
    }
  }

  return a1;
}

void ***sub_3EE7A8(void ***a1)
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
          v7 = *(v4 - 4);
          if (v7)
          {
            v8 = *(v4 - 3);
            v6 = *(v4 - 4);
            if (v8 != v7)
            {
              v9 = *(v4 - 3);
              do
              {
                v11 = *(v9 - 24);
                v9 -= 24;
                v10 = v11;
                if (v11)
                {
                  *(v8 - 16) = v10;
                  operator delete(v10);
                }

                v8 = v9;
              }

              while (v9 != v7);
              v6 = *(v4 - 4);
            }

            *(v4 - 3) = v7;
            operator delete(v6);
          }

          v4 -= 64;
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

void **sub_3EE86C(void **a1)
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
        v6 = *(v3 - 4);
        if (v6)
        {
          v7 = *(v3 - 3);
          v5 = *(v3 - 4);
          if (v7 != v6)
          {
            v8 = *(v3 - 3);
            do
            {
              v10 = *(v8 - 24);
              v8 -= 24;
              v9 = v10;
              if (v10)
              {
                *(v7 - 16) = v9;
                operator delete(v9);
              }

              v7 = v8;
            }

            while (v8 != v6);
            v5 = *(v3 - 4);
          }

          *(v3 - 3) = v6;
          operator delete(v5);
        }

        v3 -= 64;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_3EE920(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    *(a1 + 104) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    *(a1 + 80) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    *(a1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v7;
    operator delete(v7);
  }

  return a1;
}

void *sub_3EE9A4(void *a1)
{
  v2 = a1[29];
  if (v2)
  {
    a1[30] = v2;
    operator delete(v2);
  }

  v3 = a1[26];
  if (v3)
  {
    a1[27] = v3;
    operator delete(v3);
  }

  v4 = a1[23];
  if (v4)
  {
    a1[24] = v4;
    operator delete(v4);
  }

  v5 = a1[20];
  if (v5)
  {
    a1[21] = v5;
    operator delete(v5);
  }

  v6 = a1[17];
  if (v6)
  {
    a1[18] = v6;
    operator delete(v6);
  }

  v7 = a1[14];
  if (v7)
  {
    a1[15] = v7;
    operator delete(v7);
  }

  v8 = a1[11];
  if (v8)
  {
    a1[12] = v8;
    operator delete(v8);
  }

  v9 = a1[8];
  if (v9)
  {
    a1[9] = v9;
    operator delete(v9);
  }

  v10 = a1[5];
  if (v10)
  {
    a1[6] = v10;
    operator delete(v10);
  }

  v11 = a1[2];
  if (v11)
  {
    a1[3] = v11;
    operator delete(v11);
  }

  return a1;
}

uint64_t sub_3EEA68(uint64_t a1)
{
  v2 = *(a1 + 1072);
  if (v2)
  {
    *(a1 + 1080) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 1048);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 1024);
  if (v4)
  {
    v5 = *(a1 + 1032);
    v6 = *(a1 + 1024);
    if (v5 != v4)
    {
      do
      {
        v8 = *(v5 - 32);
        if (v8)
        {
          v9 = *(v5 - 24);
          v7 = *(v5 - 32);
          if (v9 != v8)
          {
            v10 = *(v5 - 24);
            do
            {
              v12 = *(v10 - 24);
              v10 -= 24;
              v11 = v12;
              if (v12)
              {
                *(v9 - 16) = v11;
                operator delete(v11);
              }

              v9 = v10;
            }

            while (v10 != v8);
            v7 = *(v5 - 32);
          }

          *(v5 - 24) = v8;
          operator delete(v7);
        }

        v5 -= 64;
      }

      while (v5 != v4);
      v6 = *(a1 + 1024);
    }

    *(a1 + 1032) = v4;
    operator delete(v6);
  }

  v13 = *(a1 + 1000);
  if (v13)
  {
    *(a1 + 1008) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 976);
  if (v14)
  {
    *(a1 + 984) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 952);
  if (v15)
  {
    *(a1 + 960) = v15;
    operator delete(v15);
  }

  v16 = *(a1 + 928);
  if (v16)
  {
    *(a1 + 936) = v16;
    operator delete(v16);
  }

  v17 = *(a1 + 904);
  if (v17)
  {
    *(a1 + 912) = v17;
    operator delete(v17);
  }

  v18 = *(a1 + 880);
  if (v18)
  {
    *(a1 + 888) = v18;
    operator delete(v18);
  }

  v19 = *(a1 + 856);
  if (v19)
  {
    *(a1 + 864) = v19;
    operator delete(v19);
  }

  sub_3EE9A4((a1 + 552));
  v20 = *(a1 + 504);
  if (v20)
  {
    *(a1 + 512) = v20;
    operator delete(v20);
  }

  v21 = *(a1 + 408);
  if (v21)
  {
    *(a1 + 416) = v21;
    operator delete(v21);
  }

  v22 = *(a1 + 384);
  if (v22)
  {
    *(a1 + 392) = v22;
    operator delete(v22);
  }

  v23 = *(a1 + 232);
  if (v23)
  {
    *(a1 + 240) = v23;
    operator delete(v23);
  }

  v24 = *(a1 + 208);
  if (v24)
  {
    *(a1 + 216) = v24;
    operator delete(v24);
  }

  v25 = *(a1 + 96);
  if (v25)
  {
    *(a1 + 104) = v25;
    operator delete(v25);
  }

  v26 = *(a1 + 72);
  if (v26)
  {
    *(a1 + 80) = v26;
    operator delete(v26);
  }

  v27 = *(a1 + 48);
  if (v27)
  {
    *(a1 + 56) = v27;
    operator delete(v27);
  }

  v28 = *(a1 + 24);
  if (v28)
  {
    *(a1 + 32) = v28;
    operator delete(v28);
  }

  v29 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v29;
    operator delete(v29);
  }

  return a1;
}

void ***sub_3EEC50(void ***result)
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
          v4 = sub_3EEA68(v4 - 1096);
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

void **sub_3EECC8(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_3EEA68(v3 - 1096);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_3EED24(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_3ECFD8(a1 + 8, *(a2 + 8), *(a2 + 16), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 16) - *(a2 + 8)) >> 4));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_3ED39C(a1 + 32, *(a2 + 32), *(a2 + 40), 0xE21A291C077975B9 * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 102) = *(a2 + 102);
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  if (*(a2 + 135) < 0)
  {
    sub_325C((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v7 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v7;
  }

  return a1;
}

void sub_3EEE18(_Unwind_Exception *a1)
{
  sub_3EECC8(v2);
  sub_3ECF74(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_3EEE48(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 136;
    sub_3ECBD4(i - 136);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_3EEE9C(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_3EEA68(v3 - 1096);
      }

      while (v3 != v2);
      v4 = *(a1 + 32);
    }

    *(a1 + 40) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 8);
    if (v6 != v5)
    {
      do
      {
        v6 -= 80;
        sub_3ED230(v6);
      }

      while (v6 != v5);
      v7 = *(a1 + 8);
    }

    *(a1 + 16) = v5;
    operator delete(v7);
  }

  return a1;
}

uint64_t **sub_3EEF48(void *a1, uint64_t a2)
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

uint64_t sub_3EF100(uint64_t *a1, uint64_t *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = *a2;
  *a2 = 0;
  v7 = 56 * v2;
  *v7 = v6;
  *(v7 + 8) = *(a2 + 1);
  *(v7 + 24) = a2[3];
  *(v7 + 32) = *(a2 + 2);
  *(v7 + 48) = a2[6];
  a2[4] = 0;
  a2[5] = 0;
  a2[6] = 0;
  v8 = 56 * v2 + 56;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v7 + *a1 - v10;
    do
    {
      v14 = *v12;
      *v12 = 0;
      *v13 = v14;
      v15 = *(v12 + 1);
      *(v13 + 24) = v12[3];
      *(v13 + 8) = v15;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 32) = *(v12 + 2);
      *(v13 + 48) = v12[6];
      v12[4] = 0;
      v12[5] = 0;
      v12[6] = 0;
      v12 += 7;
      v13 += 56;
    }

    while (v12 != v10);
    do
    {
      v16 = v9[4];
      if (v16)
      {
        v9[5] = v16;
        operator delete(v16);
      }

      v17 = *v9;
      *v9 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }

      v9 += 7;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

uint64_t sub_3EF2F0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = a2;
    if (v4 <= a2)
    {
      v6 = a2 % v4;
    }
  }

  else
  {
    v6 = (v4 - 1) & a2;
  }

  v7 = *(*(a1 + 8) + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_21:
    if (!sub_7E7E4(3u))
    {
      goto LABEL_46;
    }

    sub_19594F8(&v22);
    v12 = sub_4A5C(&v22, "Invalid scenario id: ", 21);
    std::to_string(&__dst, a2);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    sub_4A5C(v12, p_dst, size);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
      v15 = v32;
      if ((v32 & 0x10) == 0)
      {
LABEL_30:
        if ((v15 & 8) == 0)
        {
          v16 = 0;
          *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_41:
          __dst.__r_.__value_.__s.__data_[v16] = 0;
          sub_7E854(&__dst, 3u);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if (v30 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v24);
          std::ostream::~ostream();
          std::ios::~ios();
LABEL_46:
          sub_5F328(&v22);
          sub_3EF7B4();
        }

        v18 = v25;
        v16 = v26 - v25;
        if ((v26 - v25) >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_48:
          sub_3244();
        }

LABEL_36:
        if (v16 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v16;
        if (v16)
        {
          memmove(&__dst, v18, v16);
        }

        goto LABEL_41;
      }
    }

    else
    {
      v15 = v32;
      if ((v32 & 0x10) == 0)
      {
        goto LABEL_30;
      }
    }

    v17 = v31;
    if (v31 < v28)
    {
      v31 = v28;
      v17 = v28;
    }

    v18 = v27;
    v16 = v17 - v27;
    if (v17 - v27 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_48;
    }

    goto LABEL_36;
  }

  if (v5.u32[0] < 2uLL)
  {
    v9 = v4 - 1;
    while (1)
    {
      v11 = v8[1];
      if (v11 == a2)
      {
        if (*(v8 + 4) == a2)
        {
          goto LABEL_49;
        }
      }

      else if ((v11 & v9) != v6)
      {
        goto LABEL_21;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v10 = v8[1];
    if (v10 == a2)
    {
      break;
    }

    if (v10 >= v4)
    {
      v10 %= v4;
    }

    if (v10 != v6)
    {
      goto LABEL_21;
    }

LABEL_11:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_21;
    }
  }

  if (*(v8 + 4) != a2)
  {
    goto LABEL_11;
  }

LABEL_49:
  v19 = v8[3];

  return v19(a3);
}

void sub_3EF738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1959728(&a17);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a17);
  _Unwind_Resume(a1);
}

void sub_3EF79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_5C010(va);
  _Unwind_Resume(a1);
}

void sub_3EFA84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v18 = *v15;
  if (*v15)
  {
    v14[5] = v18;
    operator delete(v18);
    v16 = *v14;
    *v14 = 0;
    if (v16)
    {
LABEL_6:
      (*(*v16 + 8))(v16);
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v16 = *v14;
    *v14 = 0;
    if (v16)
    {
      goto LABEL_6;
    }
  }

  _Unwind_Resume(exception_object);
}

void *sub_3EFBA0(void *a1, void *a2)
{
  v20 = 17;
  strcpy(__p, "upstream_distance");
  v4 = sub_62A70(a2, __p);
  v5 = 0.0;
  if (v4)
  {
    v6 = *(v4 + 12);
    switch(v6)
    {
      case 4:
        v7 = v4[5] * 100.0;
        if (v7 < 0.0)
        {
          goto LABEL_9;
        }

        goto LABEL_12;
      case 3:
        v5 = v4[5];
        break;
      case 2:
        v7 = *(v4 + 5) * 100.0;
        if (v7 >= 0.0)
        {
          goto LABEL_12;
        }

LABEL_9:
        v8 = v7;
        if (v7 <= -4.50359963e15)
        {
          goto LABEL_15;
        }

        v9 = (v7 + v7) - 1 + (((v7 + v7) - 1) >> 63);
        goto LABEL_14;
    }
  }

  v7 = v5 * 100.0;
  if (v7 < 0.0)
  {
    goto LABEL_9;
  }

LABEL_12:
  v8 = v7;
  if (v7 >= 4.50359963e15)
  {
    goto LABEL_15;
  }

  v9 = (v7 + v7) + 1;
LABEL_14:
  v8 = (v9 >> 1);
LABEL_15:
  if (v8 < 9.22337204e18)
  {
    if (v7 >= 0.0)
    {
      if (v7 >= 4.50359963e15)
      {
        goto LABEL_24;
      }

      v10 = (v7 + v7) + 1;
    }

    else
    {
      if (v7 <= -4.50359963e15)
      {
        goto LABEL_24;
      }

      v10 = (v7 + v7) - 1 + (((v7 + v7) - 1) >> 63);
    }

    v7 = (v10 >> 1);
LABEL_24:
    *a1 = v7;
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  *a1 = 0x7FFFFFFFFFFFFFFELL;
  if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

LABEL_25:
  operator delete(*__p);
LABEL_26:
  v20 = 19;
  strcpy(__p, "downstream_distance");
  v11 = sub_62A70(a2, __p);
  v12 = 0.0;
  if (v11)
  {
    v13 = *(v11 + 12);
    switch(v13)
    {
      case 4:
        v14 = v11[5] * 100.0;
        if (v14 < 0.0)
        {
          goto LABEL_34;
        }

        goto LABEL_37;
      case 3:
        v12 = v11[5];
        break;
      case 2:
        v14 = *(v11 + 5) * 100.0;
        if (v14 >= 0.0)
        {
          goto LABEL_37;
        }

LABEL_34:
        v15 = v14;
        if (v14 <= -4.50359963e15)
        {
          goto LABEL_40;
        }

        v16 = (v14 + v14) - 1 + (((v14 + v14) - 1) >> 63);
        goto LABEL_39;
    }
  }

  v14 = v12 * 100.0;
  if (v14 < 0.0)
  {
    goto LABEL_34;
  }

LABEL_37:
  v15 = v14;
  if (v14 >= 4.50359963e15)
  {
    goto LABEL_40;
  }

  v16 = (v14 + v14) + 1;
LABEL_39:
  v15 = (v16 >> 1);
LABEL_40:
  if (v15 < 9.22337204e18)
  {
    if (v14 >= 0.0)
    {
      if (v14 >= 4.50359963e15)
      {
        goto LABEL_49;
      }

      v17 = (v14 + v14) + 1;
    }

    else
    {
      if (v14 <= -4.50359963e15)
      {
        goto LABEL_49;
      }

      v17 = (v14 + v14) - 1 + (((v14 + v14) - 1) >> 63);
    }

    v14 = (v17 >> 1);
LABEL_49:
    a1[1] = v14;
    if ((v20 & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_51;
  }

  a1[1] = 0x7FFFFFFFFFFFFFFELL;
  if ((v20 & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_51:
  operator delete(*__p);
  return a1;
}

void sub_3EFEEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_3EFF0C(uint64_t *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

double sub_3EFF70@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1065353216;
  return result;
}

void sub_3EFFA0()
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
  xmmword_278F3C0 = 0u;
  *algn_278F3D0 = 0u;
  dword_278F3E0 = 1065353216;
  sub_3A9A34(&xmmword_278F3C0, v0);
  sub_3A9A34(&xmmword_278F3C0, v3);
  sub_3A9A34(&xmmword_278F3C0, __p);
  sub_3A9A34(&xmmword_278F3C0, v9);
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
    qword_278F398 = 0;
    qword_278F3A0 = 0;
    qword_278F390 = 0;
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

void sub_3F1634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_278CB10)
  {
    qword_278CB18 = qword_278CB10;
    operator delete(qword_278CB10);
  }

  _Unwind_Resume(exception_object);
}

void sub_3F1D00(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  operator new();
}

void sub_3F238C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
    sub_39AFC(a11);
    _Unwind_Resume(a1);
  }

  sub_39AFC(a11);
  _Unwind_Resume(a1);
}

uint64_t sub_3F24A4(void *a1, unsigned int a2, _DWORD *a3, _DWORD *a4)
{
  v6 = a1[1];
  if ((v6 & (v6 - 1)) != 0)
  {
    v8 = a2;
    if (v6 <= a2)
    {
      v8 = a2 % v6;
    }

    v7 = *(*a1 + 8 * v8);
    do
    {
      do
      {
        v7 = *v7;
      }

      while (v7[1] != a2);
    }

    while (*(v7 + 4) != a2);
  }

  else
  {
    v7 = *(*a1 + 8 * ((v6 - 1) & a2));
    do
    {
      do
      {
        v7 = *v7;
      }

      while (v7[1] != a2);
    }

    while (*(v7 + 4) != a2);
  }

  v9 = v7[3];
  v10 = v7[4];
  while (v9 != v10)
  {
    if (sub_32A18(v9, a3) && (sub_32A18(v9, a4) & 1) != 0)
    {
      return 1;
    }

    v9 += 4;
  }

  return 0;
}

uint64_t *sub_3F2598(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

void sub_3F28C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_39EA4(va);
  _Unwind_Resume(a1);
}

void sub_3F28DC(BOOL *a1, void *a2)
{
  v6 = 7;
  strcpy(__p, "enabled");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(__p[0]);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_3F2B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3F2B70(BOOL *a1, uint64_t a2)
{
  v5[23] = 19;
  strcpy(v5, "PredictionAnalytics");
  memset(__p, 0, sizeof(__p));
  v3 = sub_3AEC94(a2, v5, __p);
  sub_3F28DC(a1, v3);
}

void sub_3F2C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_3F2C8C(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v2 = sub_4EE304(a2);
    v3 = v2[14];
    v4 = v2[15];
    v2[18] = 0;
    v5 = (v4 - v3) >> 3;
    if (v5 >= 3)
    {
      do
      {
        operator delete(*v3);
        v6 = v2[15];
        v3 = (v2[14] + 8);
        v2[14] = v3;
        v5 = (v6 - v3) >> 3;
      }

      while (v5 > 2);
    }

    if (v5 == 1)
    {
      v7 = 85;
    }

    else
    {
      if (v5 != 2)
      {
        return;
      }

      v7 = 170;
    }

    v2[17] = v7;
  }
}

uint64_t sub_3F2D20(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != 1)
  {
    return 0x7FFFFFFF7FFFFFFFLL;
  }

  v7 = sub_4D1DC0(a2);
  v8 = sub_4EE304(a4);
  v9 = v8[18];
  if (!v9)
  {
    goto LABEL_84;
  }

  v10 = v7 - 1;
  v11 = v8[14];
  if (v8[15] == v11)
  {
    goto LABEL_16;
  }

  v12 = v8[17];
  v13 = (v11 + 8 * (v12 / 0xAA));
  v14 = *v13;
  v15 = *v13 + 24 * (v12 % 0xAA);
  v16 = *(v11 + 8 * ((v12 + v9) / 0xAA)) + 24 * ((v12 + v9) % 0xAA);
  if (v15 != v16)
  {
    while (*v15 != v10)
    {
      v15 += 24;
      if (v15 - v14 == 4080)
      {
        v25 = v13[1];
        ++v13;
        v14 = v25;
        v15 = v25;
      }

      if (v15 == v16)
      {
        goto LABEL_16;
      }
    }
  }

  if (v15 == v16)
  {
LABEL_16:
    if (!sub_7E7E4(2u))
    {
      goto LABEL_33;
    }

    sub_19594F8(&v73);
    sub_4A5C(&v73, "You have not arrived at a route location with a valid prediction yet. Remaining distance on route: ", 99);
    sub_4D1DB8(a2);
    std::ostream::operator<<();
    if ((v83 & 0x10) != 0)
    {
      v28 = v82;
      if (v82 < v79)
      {
        v82 = v79;
        v28 = v79;
      }

      v29 = v78;
      v27 = v28 - v78;
      if (v28 - v78 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_87;
      }
    }

    else
    {
      if ((v83 & 8) == 0)
      {
        v27 = 0;
        v72 = 0;
LABEL_28:
        *(&__dst + v27) = 0;
        sub_7E854(&__dst, 2u);
        if (v72 < 0)
        {
          operator delete(__dst);
        }

        if (v81 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v75);
        std::ostream::~ostream();
        std::ios::~ios();
LABEL_33:
        if (!sub_7E7E4(2u))
        {
          goto LABEL_50;
        }

        sub_19594F8(&v73);
        sub_4A5C(&v73, "Current index reverse segment index=", 36);
        std::ostream::operator<<();
        if ((v83 & 0x10) != 0)
        {
          v31 = v82;
          if (v82 < v79)
          {
            v82 = v79;
            v31 = v79;
          }

          v32 = v78;
          v30 = v31 - v78;
          if (v31 - v78 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_89;
          }
        }

        else
        {
          if ((v83 & 8) == 0)
          {
            v30 = 0;
            v72 = 0;
LABEL_45:
            *(&__dst + v30) = 0;
            sub_7E854(&__dst, 2u);
            if (v72 < 0)
            {
              operator delete(__dst);
            }

            if (v81 < 0)
            {
              operator delete(__p);
            }

            std::locale::~locale(&v75);
            std::ostream::~ostream();
            std::ios::~ios();
LABEL_50:
            if (!sub_7E7E4(2u))
            {
              goto LABEL_67;
            }

            sub_19594F8(&v73);
            sub_4A5C(&v73, "Window start reverse segment index=", 35);
            std::ostream::operator<<();
            if ((v83 & 0x10) != 0)
            {
              v34 = v82;
              if (v82 < v79)
              {
                v82 = v79;
                v34 = v79;
              }

              v35 = v78;
              v33 = v34 - v78;
              if (v34 - v78 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_91;
              }
            }

            else
            {
              if ((v83 & 8) == 0)
              {
                v33 = 0;
                v72 = 0;
LABEL_62:
                *(&__dst + v33) = 0;
                sub_7E854(&__dst, 2u);
                if (v72 < 0)
                {
                  operator delete(__dst);
                }

                if (v81 < 0)
                {
                  operator delete(__p);
                }

                std::locale::~locale(&v75);
                std::ostream::~ostream();
                std::ios::~ios();
LABEL_67:
                if (!sub_7E7E4(2u))
                {
LABEL_84:
                  v20 = 0x7FFFFFFFLL;
                  v21 = 0x7FFFFFFF;
                  return v21 | (v20 << 32);
                }

                sub_19594F8(&v73);
                sub_4A5C(&v73, "Window end reverse segment index=", 33);
                std::ostream::operator<<();
                if ((v83 & 0x10) != 0)
                {
                  v37 = v82;
                  if (v82 < v79)
                  {
                    v82 = v79;
                    v37 = v79;
                  }

                  v38 = v78;
                  v36 = v37 - v78;
                  if (v37 - v78 > 0x7FFFFFFFFFFFFFF7)
                  {
                    goto LABEL_93;
                  }
                }

                else
                {
                  if ((v83 & 8) == 0)
                  {
                    v36 = 0;
                    v72 = 0;
LABEL_79:
                    *(&__dst + v36) = 0;
                    sub_7E854(&__dst, 2u);
                    if (v72 < 0)
                    {
                      operator delete(__dst);
                    }

                    if (v81 < 0)
                    {
                      operator delete(__p);
                    }

                    std::locale::~locale(&v75);
                    std::ostream::~ostream();
                    std::ios::~ios();
                    goto LABEL_84;
                  }

                  v38 = v76[0];
                  v36 = v77 - v76[0];
                  if (v77 - v76[0] > 0x7FFFFFFFFFFFFFF7)
                  {
LABEL_93:
                    sub_3244();
                  }
                }

                if (v36 >= 0x17)
                {
                  operator new();
                }

                v72 = v36;
                if (v36)
                {
                  memmove(&__dst, v38, v36);
                }

                goto LABEL_79;
              }

              v35 = v76[0];
              v33 = v77 - v76[0];
              if (v77 - v76[0] > 0x7FFFFFFFFFFFFFF7)
              {
LABEL_91:
                sub_3244();
              }
            }

            if (v33 >= 0x17)
            {
              operator new();
            }

            v72 = v33;
            if (v33)
            {
              memmove(&__dst, v35, v33);
            }

            goto LABEL_62;
          }

          v32 = v76[0];
          v30 = v77 - v76[0];
          if (v77 - v76[0] > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_89:
            sub_3244();
          }
        }

        if (v30 >= 0x17)
        {
          operator new();
        }

        v72 = v30;
        if (v30)
        {
          memmove(&__dst, v32, v30);
        }

        goto LABEL_45;
      }

      v29 = v76[0];
      v27 = v77 - v76[0];
      if (v77 - v76[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_87:
        sub_3244();
      }
    }

    if (v27 >= 0x17)
    {
      operator new();
    }

    v72 = v27;
    if (v27)
    {
      memmove(&__dst, v29, v27);
    }

    goto LABEL_28;
  }

  v17 = nullsub_1(a3);
  v18 = sub_3F80(v17);
  v19 = *(v15 + 16);
  v20 = (v19 - v18);
  v21 = v19 - *(v15 + 8);
  v22 = nullsub_1(a3);
  v70 = *(v15 + 20);
  v23 = *(v15 + 21);
  sub_4566A4(v22);
  sub_5AAC4(v22);
  if (!v70 || !sub_7E7E4(2u))
  {
    goto LABEL_109;
  }

  sub_19594F8(&v73);
  sub_4A5C(&v73, "Historical prediction was produced using stale ev info.", 55);
  if ((v83 & 0x10) != 0)
  {
    v39 = v82;
    if (v82 < v79)
    {
      v82 = v79;
      v39 = v79;
    }

    v40 = &v78;
    goto LABEL_98;
  }

  if ((v83 & 8) != 0)
  {
    v40 = v76;
    v39 = v77;
LABEL_98:
    v41 = *v40;
    v24 = v39 - *v40;
    if (v24 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v24 >= 0x17)
    {
      operator new();
    }

    v72 = v39 - *v40;
    if (v24)
    {
      memmove(&__dst, v41, v24);
    }

    goto LABEL_104;
  }

  v24 = 0;
  v72 = 0;
LABEL_104:
  *(&__dst + v24) = 0;
  sub_7E854(&__dst, 2u);
  if (v72 < 0)
  {
    operator delete(__dst);
  }

  if (v81 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v75);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_109:
  if (!v23 || !sub_7E7E4(2u))
  {
    goto LABEL_129;
  }

  sub_19594F8(&v73);
  sub_4A5C(&v73, "Historical prediction was produced during charging.", 51);
  if ((v83 & 0x10) != 0)
  {
    v43 = v82;
    if (v82 < v79)
    {
      v82 = v79;
      v43 = v79;
    }

    v44 = &v78;
    goto LABEL_118;
  }

  if ((v83 & 8) != 0)
  {
    v44 = v76;
    v43 = v77;
LABEL_118:
    v45 = *v44;
    v42 = v43 - *v44;
    if (v42 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v42 >= 0x17)
    {
      operator new();
    }

    v72 = v43 - *v44;
    if (v42)
    {
      memmove(&__dst, v45, v42);
    }

    goto LABEL_124;
  }

  v42 = 0;
  v72 = 0;
LABEL_124:
  *(&__dst + v42) = 0;
  sub_7E854(&__dst, 2u);
  if (v72 < 0)
  {
    operator delete(__dst);
  }

  if (v81 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v75);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_129:
  v46 = sub_3EB950(a2);
  if (v46[8] != 0x7FFFFFFF)
  {
    v47 = v46;
    if (v46[17] != 0x7FFFFFFF && sub_4566B4(v46 + 10))
    {
      v48 = v47[36];
      if (v48)
      {
        if (v48 == 2)
        {
          v49 = *(v47 + 17);
          if (v49 <= 0xFFFFFFFEFFFFFFFFLL && v49)
          {
            goto LABEL_151;
          }
        }

        else
        {
          if (v48 != 1)
          {
            goto LABEL_234;
          }

          if (*(v47 + 17) != -1)
          {
            goto LABEL_151;
          }
        }
      }
    }
  }

  v50 = sub_4D1DB0(a2);
  if (v50[8] != 0x7FFFFFFF)
  {
    v51 = v50;
    if (v50[17] != 0x7FFFFFFF && sub_4566B4(v50 + 10))
    {
      v52 = v51[36];
      if (v52)
      {
        if (v52 == 2)
        {
          v53 = *(v51 + 17);
          if (v53 <= 0xFFFFFFFEFFFFFFFFLL && v53)
          {
            goto LABEL_151;
          }

          goto LABEL_149;
        }

        if (v52 == 1)
        {
          if (*(v51 + 17) != -1)
          {
            goto LABEL_151;
          }

          goto LABEL_149;
        }

LABEL_234:
        sub_5AF20();
      }
    }
  }

LABEL_149:
  if ((sub_E6F44C(a3) & 1) == 0 && !v23)
  {
    goto LABEL_170;
  }

LABEL_151:
  if (!sub_7E7E4(2u))
  {
    goto LABEL_170;
  }

  sub_19594F8(&v73);
  sub_4A5C(&v73, "Historical predictions might be skewed due to charging on the route.", 68);
  if ((v83 & 0x10) != 0)
  {
    v55 = v82;
    if (v82 < v79)
    {
      v82 = v79;
      v55 = v79;
    }

    v56 = &v78;
    goto LABEL_159;
  }

  if ((v83 & 8) != 0)
  {
    v56 = v76;
    v55 = v77;
LABEL_159:
    v57 = *v56;
    v54 = v55 - *v56;
    if (v54 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v54 >= 0x17)
    {
      operator new();
    }

    v72 = v55 - *v56;
    if (v54)
    {
      memmove(&__dst, v57, v54);
    }

    goto LABEL_165;
  }

  v54 = 0;
  v72 = 0;
LABEL_165:
  *(&__dst + v54) = 0;
  sub_7E854(&__dst, 2u);
  if (v72 < 0)
  {
    operator delete(__dst);
  }

  if (v81 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v75);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_170:
  if (!sub_7E7E4(2u))
  {
    goto LABEL_189;
  }

  sub_19594F8(&v73);
  sub_4A5C(&v73, "Historical prediction relative error rate: ", 43);
  std::ostream::operator<<();
  if ((v83 & 0x10) != 0)
  {
    v59 = v82;
    if (v82 < v79)
    {
      v82 = v79;
      v59 = v79;
    }

    v60 = &v78;
    goto LABEL_178;
  }

  if ((v83 & 8) != 0)
  {
    v60 = v76;
    v59 = v77;
LABEL_178:
    v61 = *v60;
    v58 = v59 - *v60;
    if (v58 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v58 >= 0x17)
    {
      operator new();
    }

    v72 = v59 - *v60;
    if (v58)
    {
      memmove(&__dst, v61, v58);
    }

    goto LABEL_184;
  }

  v58 = 0;
  v72 = 0;
LABEL_184:
  *(&__dst + v58) = 0;
  sub_7E854(&__dst, 2u);
  if (v72 < 0)
  {
    operator delete(__dst);
  }

  if (v81 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v75);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_189:
  if (!sub_7E7E4(2u))
  {
    goto LABEL_208;
  }

  sub_19594F8(&v73);
  sub_4A5C(&v73, "Historical prediction error rate: ", 34);
  std::ostream::operator<<();
  if ((v83 & 0x10) != 0)
  {
    v63 = v82;
    if (v82 < v79)
    {
      v82 = v79;
      v63 = v79;
    }

    v64 = &v78;
    goto LABEL_197;
  }

  if ((v83 & 8) != 0)
  {
    v64 = v76;
    v63 = v77;
LABEL_197:
    v65 = *v64;
    v62 = v63 - *v64;
    if (v62 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v62 >= 0x17)
    {
      operator new();
    }

    v72 = v63 - *v64;
    if (v62)
    {
      memmove(&__dst, v65, v62);
    }

    goto LABEL_203;
  }

  v62 = 0;
  v72 = 0;
LABEL_203:
  *(&__dst + v62) = 0;
  sub_7E854(&__dst, 2u);
  if (v72 < 0)
  {
    operator delete(__dst);
  }

  if (v81 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v75);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_208:
  if (sub_7E7E4(2u))
  {
    sub_19594F8(&v73);
    sub_4A5C(&v73, "Historical prediction error energy (Wh): ", 41);
    std::ostream::operator<<();
    if ((v83 & 0x10) != 0)
    {
      v67 = v82;
      if (v82 < v79)
      {
        v82 = v79;
        v67 = v79;
      }

      v68 = &v78;
    }

    else
    {
      if ((v83 & 8) == 0)
      {
        v66 = 0;
        v72 = 0;
LABEL_222:
        *(&__dst + v66) = 0;
        sub_7E854(&__dst, 2u);
        if (v72 < 0)
        {
          operator delete(__dst);
        }

        if (v81 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v75);
        std::ostream::~ostream();
        std::ios::~ios();
        return v21 | (v20 << 32);
      }

      v68 = v76;
      v67 = v77;
    }

    v69 = *v68;
    v66 = v67 - *v68;
    if (v66 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v66 >= 0x17)
    {
      operator new();
    }

    v72 = v67 - *v68;
    if (v66)
    {
      memmove(&__dst, v69, v66);
    }

    goto LABEL_222;
  }

  return v21 | (v20 << 32);
}

void sub_3F4628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a18);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a18);
  _Unwind_Resume(a1);
}

void sub_3F4814(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1 == 1)
  {
    v64 = *(sub_3B6890(a4) + 4);
    v8 = sub_4D39C4(a2);
    sub_4DABE0(v8, 0, v80);
    sub_4DB030(v80, 1, v81);
    v9 = sub_4D39C4(a2);
    sub_4DAC4C(v9, 0, v80);
    v77 = 0;
    v78 = 0;
    v79 = 0;
    *v75 = v81[0];
    v76 = v81[1];
    *__p = v80[0];
    v74 = v80[1];
    while (sub_4DB0E8(v75, __p))
    {
      v10 = nullsub_1(v75);
      v72[0] = sub_3F80(v10);
      sub_DD38(&v77, v72);
      sub_4DAFB4(v75);
    }

    v11 = sub_4D39C4(a2);
    v75[0] = sub_4DACB0(v11);
    LODWORD(v75[1]) = v12;
    v13 = sub_3F80(v75);
    v14 = v78;
    if (v78 >= v79)
    {
      v16 = v77;
      v17 = v78 - v77;
      v18 = (v78 - v77) >> 2;
      v19 = v18 + 1;
      if ((v18 + 1) >> 62)
      {
        sub_1794();
      }

      v20 = v79 - v77;
      if ((v79 - v77) >> 1 > v19)
      {
        v19 = v20 >> 1;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        if (!(v21 >> 62))
        {
          operator new();
        }

        sub_1808();
      }

      v22 = (4 * v18);
      v23 = &v22[-((v78 - v77) >> 2)];
      *v22 = v13;
      v15 = (v22 + 1);
      memcpy(v23, v16, v17);
      v77 = v23;
      v78 = v15;
      v79 = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v78 = v13;
      v15 = v14 + 4;
    }

    v78 = v15;
    sub_4D0560();
    v25 = v24;
    v27 = v26;
    v28 = *(sub_3CF22C(a2) + 16);
    v70 = v77;
    sub_4D0568();
    v69 = v29;
    v31 = v30;
    sub_3CF22C(a2);
    v32 = sub_4D1DC0(a2);
    v63 = a4;
    v33 = sub_4EE304(a5);
    v34 = v33;
    v35 = v32 - 1;
    v36 = v33[18];
    if (v36)
    {
      v37 = v33[14];
      v38 = v33[17];
      while (1)
      {
        --v36;
        if (*(v37[v38 / 0xAA] + 6 * (v38 % 0xAA)) <= v35)
        {
          break;
        }

        v34[17] = ++v38;
        v34[18] = v36;
        if (v38 >= 0x154)
        {
          operator delete(*v37);
          v37 = (v34[14] + 8);
          v34[14] = v37;
          v36 = v34[18];
          v38 = v34[17] - 170;
          v34[17] = v38;
        }

        if (!v36)
        {
          goto LABEL_23;
        }
      }

      v65 = *(v37[(v36 + v38) / 0xAA] + 6 * ((v36 + v38) % 0xAA));
      v66 = 0;
    }

    else
    {
LABEL_23:
      v65 = 0;
      v66 = 1;
    }

    v39 = 0;
    v40 = v64;
    v67 = v31;
    while (1)
    {
      if (v25)
      {
        v41 = sub_4D1DC0(v25);
        v42 = v27 < v41;
        if (!v69)
        {
          if (v27 >= v41)
          {
            goto LABEL_66;
          }

          goto LABEL_40;
        }
      }

      else
      {
        if (!v69)
        {
          goto LABEL_66;
        }

        v42 = 0;
      }

      v43 = sub_4D1DC0(v69);
      if (v31 < v43 && v42)
      {
        v45 = sub_4D1F50(v25, v27);
        if (v45 == sub_4D1F50(v69, v31))
        {
          goto LABEL_66;
        }
      }

      else if (((v42 ^ (v31 < v43)) & 1) == 0)
      {
LABEL_66:
        if (v77)
        {
          v78 = v77;
          operator delete(v77);
        }

        return;
      }

LABEL_40:
      v46 = sub_4D1F50(v25, v27);
      v47 = (*v46 - **v46);
      if (*v47 >= 9u && (v48 = v47[4]) != 0)
      {
        v49 = *(*v46 + v48);
      }

      else
      {
        v49 = 0;
      }

      v50 = *v28;
      if (*v28 < 0)
      {
        v51 = -5;
      }

      else
      {
        v51 = 5;
      }

      v52 = sub_E6F0DC(a3);
      v39 += v49;
      v53 = 103 * (v51 + v50 % 10);
      v40 += v50 / 10 + ((v53 >> 15) & 1) + (v53 >> 10);
      v54 = 8;
      if (v52)
      {
        v54 = 16;
      }

      v31 = v67;
      v55 = *&a1[v54];
      v56 = v66;
      if (v35 < v65)
      {
        v56 = 1;
      }

      if (v39 >= v55 && (v56 & 1) != 0)
      {
        v57 = *v70;
        if (*v70 == 0x7FFFFFFF)
        {
          v58 = nullsub_1(a3);
          v57 = sub_5AAC4(v58);
        }

        sub_4FAC6C(v72, v40, v57, v35);
        BYTE7(v76) = 9;
        strcpy(v75, "EVRouting");
        __p[0] = 0;
        __p[1] = 0;
        v74.n128_u64[0] = 0;
        sub_3AEC94(v63, v75, __p);
        v59 = __p[0];
        if (__p[0])
        {
          v60 = __p[1];
          v61 = __p[0];
          if (__p[1] != __p[0])
          {
            do
            {
              v62 = *(v60 - 1);
              v60 -= 3;
              if (v62 < 0)
              {
                operator delete(*v60);
              }
            }

            while (v60 != v59);
            v61 = __p[0];
          }

          __p[1] = v59;
          operator delete(v61);
        }

        if (SBYTE7(v76) < 0)
        {
          operator delete(v75[0]);
        }

        operator new();
      }

      --v35;
      ++v27;
      ++v28;
      ++v70;
    }
  }
}

void sub_3F4EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_3F4F54(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_2133C(a1, &v11);
}

void sub_3F52C4(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_3F531C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = a2;
  v9 = *a3;
  v10 = *(a3 + 2);
  *(a1 + 24) = 0;
  v11 = a1 + 24;
  *(a1 + 16) = v10;
  *(a1 + 8) = v9;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = a4;
  *(a1 + 64) = a5;
  *(a1 + 72) = a6;
  *(a1 + 80) = a7;
  *(a1 + 88) = a8;
  v14 = 19;
  strcpy(__p, "GDFTimeDomainParser");
  __dst = 0uLL;
  v16 = 0;
  v12 = sub_3AEC94(a9, __p, &__dst);
  sub_EE90(v11 + 72, v12);
}

void sub_3F5A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61)
{
  if (*(v65 - 89) < 0)
  {
    operator delete(*(v65 - 112));
  }

  sub_1959728(&a9);
  v67 = *v64;
  if (*v64)
  {
    v61[617] = v67;
    operator delete(v67);
    v68 = *v63;
    if (!*v63)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v68 = *v63;
    if (!*v63)
    {
      goto LABEL_8;
    }
  }

  v61[614] = v68;
  operator delete(v68);
LABEL_8:
  sub_404134(v61 + 69);
  sub_321B00((v62 + 9));
  v69 = *v62;
  if (!*v62)
  {
    _Unwind_Resume(a1);
  }

  v61[4] = v69;
  operator delete(v69);
  _Unwind_Resume(a1);
}

void sub_3F5C84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_1A104((v14 - 112));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x3F5C64);
}

char *sub_3F5CA4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v49 = *a3;
  v6 = *(a3 + 24);
  v50 = *(a3 + 16);
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v7 = *(a3 + 32);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  v9 = *(a3 + 48);
  v8 = *(a3 + 56);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v41 = *a4;
  v10 = *(a4 + 24);
  v42 = *(a4 + 16);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v11 = *(a4 + 32);
  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  v13 = *(a4 + 48);
  v12 = *(a4 + 56);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v33 = *a3;
  v14 = *(a3 + 24);
  v34 = *(a3 + 16);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v15 = *(a3 + 32);
  if (v15 != v14)
  {
    if (((v15 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  v17 = *(a3 + 48);
  v16 = *(a3 + 56);
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v25 = *a4;
  v18 = *(a4 + 24);
  v26 = *(a4 + 16);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v19 = *(a4 + 32);
  if (v19 != v18)
  {
    if (((v19 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v31 = 0;
  v32 = 0;
  v21 = *(a4 + 48);
  v20 = *(a4 + 56);
  if (v20 != v21)
  {
    if (((v20 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v22 = sub_400A48(&v33, &v25);
  v23 = sub_3FFFC4(a1, a2, &v49, &v41, v22);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  return v23;
}

void sub_3F608C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (v36)
  {
    operator delete(v36);
  }

  sub_3DB674(&a19);
  sub_3DB674(&a29);
  sub_3DB674((v37 - 144));
  _Unwind_Resume(a1);
}

char *sub_3F6170(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v49 = *a3;
  v6 = *(a3 + 24);
  v50 = *(a3 + 16);
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v7 = *(a3 + 32);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  v9 = *(a3 + 48);
  v8 = *(a3 + 56);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v41 = *a4;
  v10 = *(a4 + 24);
  v42 = *(a4 + 16);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v11 = *(a4 + 32);
  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  v13 = *(a4 + 48);
  v12 = *(a4 + 56);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v33 = *a3;
  v14 = *(a3 + 24);
  v34 = *(a3 + 16);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v15 = *(a3 + 32);
  if (v15 != v14)
  {
    if (((v15 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  v17 = *(a3 + 48);
  v16 = *(a3 + 56);
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v25 = *a4;
  v18 = *(a4 + 24);
  v26 = *(a4 + 16);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v19 = *(a4 + 32);
  if (v19 != v18)
  {
    if (((v19 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v31 = 0;
  v32 = 0;
  v21 = *(a4 + 48);
  v20 = *(a4 + 56);
  if (v20 != v21)
  {
    if (((v20 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v22 = sub_402C3C(&v33, &v25);
  v23 = sub_402178(a1, a2, &v49, &v41, v22);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  return v23;
}

void sub_3F6558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (v36)
  {
    operator delete(v36);
  }

  sub_3DB674(&a19);
  sub_3DB674(&a29);
  sub_3DB674((v37 - 144));
  _Unwind_Resume(a1);
}

uint64_t sub_3F663C(uint64_t a1)
{
  LOBYTE(v5) = 0;
  BYTE4(v5) = 0;
  if (*(a1 + 4976) == 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    operator new();
  }

  return v5;
}

void sub_3F6BA4(_Unwind_Exception *a1)
{
  v3 = *(v1 - 128);
  if (!v3)
  {
    _Unwind_Resume(a1);
  }

  *(v1 - 120) = v3;
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_3F6C50(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    while (1)
    {
      sub_2B7A20(*(a1 + 4896), *(v6 + 32) & 0xFFFFFFFFFFFFFFLL, v24);
      v8 = __p;
      if (__p == v26)
      {
        break;
      }

      v9 = sub_31A76C(v24);
      v10 = v9;
      v12 = v11;
      v13 = v9 & 0xFFFFFFFF00000000;
      v8 = __p;
      v14 = v10;
      if (__p)
      {
        goto LABEL_4;
      }

LABEL_5:
      v22 = v13 | v14;
      v23 = v12;
      sub_376F0(a3, &v22);
      v6 += 40;
      if (v6 == v5)
      {
        v6 = *a2;
        v5 = a2[1];
        goto LABEL_9;
      }
    }

    v12 = 0x7FFFFFFF;
    v13 = 0xFFFFFFFF00000000;
    v14 = 0xFFFFFFFFLL;
    if (!__p)
    {
      goto LABEL_5;
    }

LABEL_4:
    v26 = v8;
    operator delete(v8);
    goto LABEL_5;
  }

LABEL_9:
  if (v6 != v5)
  {
    sub_2B7A20(*(a1 + 4896), *(v5 - 8) & 0xFFFFFFFFFFFFFFLL, v24);
    v15 = __p;
    if (__p == v26)
    {
      v19 = 0x7FFFFFFF;
      v20 = 0xFFFFFFFF00000000;
      v21 = 0xFFFFFFFFLL;
      if (!__p)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v16 = sub_31AA0C(v24);
      v17 = v16;
      v19 = v18;
      v20 = v16 & 0xFFFFFFFF00000000;
      v15 = __p;
      v21 = v17;
      if (!__p)
      {
LABEL_13:
        v22 = v20 | v21;
        v23 = v19;
        sub_376F0(a3, &v22);
        return;
      }
    }

    v26 = v15;
    operator delete(v15);
    goto LABEL_13;
  }
}

void sub_3F6DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
    v16 = *v14;
    if (!*v14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v16 = *v14;
    if (!*v14)
    {
      goto LABEL_3;
    }
  }

  *(v14 + 8) = v16;
  operator delete(v16);
  _Unwind_Resume(exception_object);
}

void sub_3F6E04(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v49 = *a2;
  v6 = *(a2 + 24);
  v50 = *(a2 + 16);
  v51 = 0uLL;
  v52 = 0;
  v7 = *(a2 + 32);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v53 = 0uLL;
  v54 = 0;
  v9 = *(a2 + 48);
  v8 = *(a2 + 56);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v40 = *(a2 + 72);
  v10 = *(a2 + 96);
  v41 = *(a2 + 88);
  v42 = 0uLL;
  v43 = 0;
  v11 = *(a2 + 104);
  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v44 = 0uLL;
  v45 = 0;
  v13 = *(a2 + 120);
  v12 = *(a2 + 128);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  while (v53 != *(&v53 + 1))
  {
    v14 = sub_4D1F50(v49, *(&v49 + 1));
    sub_2B7A20(*(a1 + 4896), *(v14 + 32) & 0xFFFFFFFFFFFFFFLL, &v46);
    v15 = __p;
    if (__p != v48)
    {
      v16 = sub_31A76C(&v46);
      v17 = v16;
      v19 = v18;
      v20 = v16 & 0xFFFFFFFF00000000;
      v15 = __p;
      v21 = v17;
      if (!__p)
      {
        goto LABEL_17;
      }

LABEL_16:
      v48 = v15;
      operator delete(v15);
      goto LABEL_17;
    }

    v19 = 0x7FFFFFFF;
    v20 = 0xFFFFFFFF00000000;
    v21 = 0xFFFFFFFFLL;
    if (__p)
    {
      goto LABEL_16;
    }

LABEL_17:
    v38 = v20 | v21;
    v39 = v19;
    sub_376F0(a3, &v38);
    sub_3E3AF4(&v49);
  }

  if (v53)
  {
    *(&v53 + 1) = v53;
    operator delete(v53);
  }

  if (v51)
  {
    *(&v51 + 1) = v51;
    operator delete(v51);
  }

  if (!sub_3E6794(a2, a2 + 72))
  {
    v22 = *(a1 + 4896);
    v23 = *(a2 + 96);
    v37 = *(a2 + 88);
    v24 = *(a2 + 104);
    if (v24 != v23)
    {
      if (((v24 - v23) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v26 = *(a2 + 120);
    v25 = *(a2 + 128);
    if (v25 != v26)
    {
      if (((v25 - v26) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v49 = *(a2 + 72);
    v50 = v37;
    v51 = 0uLL;
    v52 = 0;
    v53 = 0uLL;
    v54 = 0;
    sub_403378(&v49, -1);
    v40 = v49;
    v41 = v50;
    v36 = v51;
    v42 = v51;
    v43 = v52;
    v35 = v53;
    v44 = v53;
    v45 = v54;
    v27 = sub_4D1F50(v49, *(&v49 + 1));
    sub_2B7A20(v22, *(v27 + 32) & 0xFFFFFFFFFFFFFFLL, &v49);
    v28 = *(&v49 + 1);
    if (*(&v49 + 1) == v50)
    {
      v32 = 0x7FFFFFFF;
      v33 = 0xFFFFFFFF00000000;
      v34 = 0xFFFFFFFFLL;
      if (*(&v49 + 1))
      {
LABEL_33:
        v50 = v28;
        operator delete(v28);
      }
    }

    else
    {
      v29 = sub_31AA0C(&v49);
      v30 = v29;
      v32 = v31;
      v33 = v29 & 0xFFFFFFFF00000000;
      v28 = *(&v49 + 1);
      v34 = v30;
      if (*(&v49 + 1))
      {
        goto LABEL_33;
      }
    }

    v46 = v33 | v34;
    LODWORD(__p) = v32;
    sub_376F0(a3, &v46);
    if (v35)
    {
      operator delete(v35);
    }

    if (v36)
    {
      operator delete(v36);
    }
  }
}

void sub_3F7374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  v39 = *(v37 - 152);
  if (v39)
  {
    *(v37 - 144) = v39;
    operator delete(v39);
  }

  sub_3DB674(&a25);
  sub_3DB674(&a13);
  v40 = *v36;
  if (*v36)
  {
    *(v36 + 8) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(a1);
}

void sub_3F7460(uint64_t a1, uint64_t a2)
{
  sub_3F74A0(a1, a2);

  sub_3F7958(a1, a2);
}

void sub_3F74A0(uint64_t a1, uint64_t a2)
{
  sub_3F8330(a1, (a1 + 4904), *(a1 + 48) + 1, 1, &__p);
  sub_3F7F00(a1, &__p, &v40);
  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  sub_3F8330(a1, (a1 + 4904), *(a1 + 48) + 2, 0, &v36);
  sub_3F7F00(a1, &v36, &__p);
  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  sub_3F8330(a1, (a1 + 4928), 0, 0, v35);
  sub_3F7F00(a1, v35, &v36);
  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  v5 = v40;
  v6 = v41;
  if (v40 != v41)
  {
    do
    {
      v12 = *(a2 + 40);
      if (v12 && (v13 = *(a2 + 32), v13 < *v12))
      {
        *(a2 + 32) = v13 + 1;
        v7 = *&v12[2 * v13 + 2];
      }

      else
      {
        v14 = sub_16F5828(*(a2 + 24));
        v7 = sub_19593CC(a2 + 24, v14);
      }

      LODWORD(v4) = v5[1];
      v8 = exp(*&v4 * -6.28318531 / 4294967300.0 + 3.14159265);
      v9 = atan((v8 + -1.0 / v8) * 0.5) * 57.2957795;
      v10 = *(v7 + 40);
      *(v7 + 40) = v10 | 1;
      *(v7 + 48) = v9;
      v11 = *v5;
      v5 += 3;
      LODWORD(v9) = v11;
      v4 = *&v9 * 360.0 / 4294967300.0 + -180.0;
      *(v7 + 40) = v10 | 3;
      *(v7 + 56) = v4;
    }

    while (v5 != v6);
  }

  v15 = __p;
  v16 = v39;
  if (__p != v39)
  {
    do
    {
      v22 = *(a2 + 64);
      if (v22 && (v23 = *(a2 + 56), v23 < *v22))
      {
        *(a2 + 56) = v23 + 1;
        v17 = *&v22[2 * v23 + 2];
      }

      else
      {
        v24 = sub_16F5828(*(a2 + 48));
        v17 = sub_19593CC(a2 + 48, v24);
      }

      LODWORD(v4) = v15[1];
      v18 = exp(*&v4 * -6.28318531 / 4294967300.0 + 3.14159265);
      v19 = atan((v18 + -1.0 / v18) * 0.5) * 57.2957795;
      v20 = *(v17 + 40);
      *(v17 + 40) = v20 | 1;
      *(v17 + 48) = v19;
      v21 = *v15;
      v15 += 3;
      LODWORD(v19) = v21;
      v4 = *&v19 * 360.0 / 4294967300.0 + -180.0;
      *(v17 + 40) = v20 | 3;
      *(v17 + 56) = v4;
    }

    while (v15 != v16);
  }

  v25 = v36;
  v26 = v37;
  if (v36 != v37)
  {
    do
    {
      v32 = *(a2 + 88);
      if (v32 && (v33 = *(a2 + 80), v33 < *v32))
      {
        *(a2 + 80) = v33 + 1;
        v27 = *&v32[2 * v33 + 2];
      }

      else
      {
        v34 = sub_16F5828(*(a2 + 72));
        v27 = sub_19593CC(a2 + 72, v34);
      }

      LODWORD(v4) = v25[1];
      v28 = exp(*&v4 * -6.28318531 / 4294967300.0 + 3.14159265);
      v29 = atan((v28 + -1.0 / v28) * 0.5) * 57.2957795;
      v30 = *(v27 + 40);
      *(v27 + 40) = v30 | 1;
      *(v27 + 48) = v29;
      v31 = *v25;
      v25 += 3;
      LODWORD(v29) = v31;
      v4 = *&v29 * 360.0 / 4294967300.0 + -180.0;
      *(v27 + 40) = v30 | 3;
      *(v27 + 56) = v4;
    }

    while (v25 != v26);
    v25 = v36;
  }

  if (v25)
  {
    v37 = v25;
    operator delete(v25);
  }

  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }
}

void sub_3F78C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_3F7958(uint64_t a1, uint64_t a2)
{
  if (!sub_4C49D0(*(a1 + 64)))
  {
    v4 = *(a1 + 24);
    v5 = &v4[5 * *(a1 + 48) + 5];
    if (v5 == v4)
    {
LABEL_24:
      v10 = *(a1 + 32);
      while (1)
      {
        if (v5 == v10)
        {
          goto LABEL_2;
        }

        v12 = (*v5 - **v5);
        if (*v12 >= 0x1Du && (v13 = v12[14]) != 0)
        {
          if (*(v5 + 38))
          {
            v14 = -*(*v5 + v13);
          }

          else
          {
            v14 = *(*v5 + v13);
          }

          v15 = *(a2 + 112);
          if (v15 != *(a2 + 116))
          {
LABEL_25:
            *(*(a2 + 120) + 8 * v15) = v14;
            v11 = v15 + 1;
            goto LABEL_26;
          }
        }

        else
        {
          v14 = 0;
          v15 = *(a2 + 112);
          if (v15 != *(a2 + 116))
          {
            goto LABEL_25;
          }
        }

        v11 = v15 + 1;
        sub_1959094((a2 + 112), v15 + 1);
        *(*(a2 + 120) + 8 * v15) = v14;
LABEL_26:
        *(a2 + 112) = v11;
        v5 += 5;
      }
    }

    while (1)
    {
      v6 = (*v4 - **v4);
      if (*v6 >= 0x1Du && (v7 = v6[14]) != 0)
      {
        if (*(v4 + 38))
        {
          v8 = -*(*v4 + v7);
        }

        else
        {
          v8 = *(*v4 + v7);
        }

        v9 = *(a2 + 96);
        if (v9 == *(a2 + 100))
        {
          goto LABEL_22;
        }

LABEL_13:
        *(*(a2 + 104) + 8 * v9) = v8;
        *(a2 + 96) = v9 + 1;
        v4 += 5;
        if (v4 == v5)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v8 = 0;
        v9 = *(a2 + 96);
        if (v9 != *(a2 + 100))
        {
          goto LABEL_13;
        }

LABEL_22:
        sub_1959094((a2 + 96), v9 + 1);
        *(*(a2 + 104) + 8 * v9) = v8;
        *(a2 + 96) = v9 + 1;
        v4 += 5;
        if (v4 == v5)
        {
LABEL_23:
          v5 = (*(a1 + 24) + 40 * *(a1 + 48) + 40);
          goto LABEL_24;
        }
      }
    }
  }

LABEL_2:
  sub_4C5740(*(a1 + 72), v21);
  sub_4C5840(*(a1 + 72), v16);
  sub_3F86C8(v21, v16, a2);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

void sub_3F7B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_3DB674(&a9);
  sub_3DB674(&a18);
  _Unwind_Resume(a1);
}

void sub_3F7B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_3DB674(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3F7BB0(uint64_t a1, void *a2)
{
  v12 = 7;
  strcpy(__p, "enabled");
  v4 = sub_5F9D0(a2, __p);
  if (v12 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v12 = 21;
  strcpy(__p, "max_search_space_size");
  v6 = sub_353010(a2, __p);
  if (v12 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 4) = v6;
  v12 = 14;
  strcpy(__p, "num_candidates");
  v8 = sub_353010(a2, __p);
  if (v12 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 8) = v8;
  return a1;
}

void sub_3F7CD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3F7ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3F7F00(uint64_t a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v4 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a2;
  if (v5 == a2[1])
  {
    v6 = v5;
  }

  else
  {
    sub_376F0(a3, v5);
    v5 = *a2;
    v6 = a2[1];
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 2);
  if (v7 >= 2)
  {
    v8 = 0;
    v9 = 1;
    v39 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v40 = vdupq_n_s64(0x4076800000000000uLL);
    v37 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v38 = vdupq_n_s64(0xC066800000000000);
    do
    {
      v10 = *(v4 + 8);
      v11 = *a2;
      v12 = *a2 + v8;
      v14 = *(v10 - 12);
      v13 = *(v10 - 8);
      if (v14 == -1 && v13 == -1)
      {
        v35 = 0x7FFFFFFFFFFFFFFFLL;
        if (v9 != 0xAAAAAAAAAAAAAAABLL * ((a2[1] - v11) >> 2) - 1)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }

      v16 = v7;
      v18 = *(v12 + 12);
      v17 = *(v12 + 16);
      if (v18 == -1 && v17 == -1)
      {
        v35 = 0x7FFFFFFFFFFFFFFFLL;
        v7 = v16;
        v4 = a3;
        if (v9 != -1 - 0x5555555555555555 * ((a2[1] - v11) >> 2))
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }

      v20 = exp(3.14159265 - v13 * 6.28318531 / 4294967300.0);
      v21 = atan((v20 - 1.0 / v20) * 0.5) * 57.2957795 * 0.0174532925;
      v22.i64[0] = v14;
      v22.i64[1] = v18;
      v23 = exp(3.14159265 - v17 * 6.28318531 / 4294967300.0);
      v24 = atan((v23 - 1.0 / v23) * 0.5) * 57.2957795 * 0.0174532925;
      v25 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v22), v40), v39), v38), v37);
      v41 = vsubq_f64(v25, vdupq_laneq_s64(v25, 1)).f64[0];
      v26 = sin((v21 - v24) * 0.5);
      v27 = v26 * v26;
      v28 = cos(v21);
      v29 = v28 * cos(v24);
      v30 = sin(0.5 * v41);
      v31 = atan2(sqrt(v30 * v30 * v29 + v27), sqrt(1.0 - (v30 * v30 * v29 + v27)));
      v32 = (v31 + v31) * 6372797.56 * 100.0;
      if (v32 >= 0.0)
      {
        v33 = v32;
        v7 = v16;
        if (v32 >= 4.50359963e15)
        {
          goto LABEL_27;
        }

        v34 = (v32 + v32) + 1;
      }

      else
      {
        v33 = v32;
        v7 = v16;
        if (v32 <= -4.50359963e15)
        {
          goto LABEL_27;
        }

        v34 = (v32 + v32) - 1 + (((v32 + v32) - 1) >> 63);
      }

      v33 = (v34 >> 1);
LABEL_27:
      v4 = a3;
      if (v33 >= 9.22337204e18)
      {
        v35 = 0x7FFFFFFFFFFFFFFELL;
        if (v9 != 0xAAAAAAAAAAAAAAABLL * ((a2[1] - v11) >> 2) - 1)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }

      if (v32 >= 0.0)
      {
        if (v32 >= 4.50359963e15)
        {
          goto LABEL_36;
        }

        v36 = (v32 + v32) + 1;
      }

      else
      {
        if (v32 <= -4.50359963e15)
        {
          goto LABEL_36;
        }

        v36 = (v32 + v32) - 1 + (((v32 + v32) - 1) >> 63);
      }

      v32 = (v36 >> 1);
LABEL_36:
      v35 = v32;
      if (v9 != 0xAAAAAAAAAAAAAAABLL * ((a2[1] - v11) >> 2) - 1)
      {
LABEL_37:
        if (v35 < *(a1 + 4960))
        {
          goto LABEL_8;
        }
      }

LABEL_7:
      sub_376F0(v4, (v12 + 12));
LABEL_8:
      ++v9;
      v8 += 12;
    }

    while (v7 != v9);
  }
}

void sub_3F8308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v26 = *a25;
  if (*a25)
  {
    *(a25 + 8) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_3F8330(unsigned int **a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v5 = a3;
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (a4)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if ((a3 & 0x80000000) == 0)
  {
    v36 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v37 = vdupq_n_s64(0x4076800000000000uLL);
    v34 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v35 = vdupq_n_s64(0xC066800000000000);
    do
    {
      if (v5 >= (-1431655765 * ((a2[1] - *a2) >> 2)))
      {
        return;
      }

      v10 = *a2 + 12 * v5;
      v12 = **a1;
      v11 = (*a1)[1];
      v13 = v12 == -1 && v11 == -1;
      if (v13 || ((v14 = *v10, v15 = *(v10 + 4), *v10 == -1) ? (v16 = v15 == -1) : (v16 = 0), v16))
      {
        if (a1[619] != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_34;
        }

        goto LABEL_19;
      }

      v17 = *a2 + 12 * v5;
      v18 = exp(3.14159265 - v11 * 6.28318531 / 4294967300.0);
      v19 = atan((v18 - 1.0 / v18) * 0.5) * 57.2957795 * 0.0174532925;
      v20.i64[0] = v12;
      v20.i64[1] = v14;
      v21 = exp(3.14159265 - v15 * 6.28318531 / 4294967300.0);
      v22 = atan((v21 - 1.0 / v21) * 0.5) * 57.2957795 * 0.0174532925;
      v23 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v20), v37), v36), v35), v34);
      v38 = vsubq_f64(v23, vdupq_laneq_s64(v23, 1)).f64[0];
      v24 = sin((v19 - v22) * 0.5);
      v25 = v24 * v24;
      v26 = cos(v19);
      v27 = v26 * cos(v22);
      v28 = sin(0.5 * v38);
      v29 = atan2(sqrt(v28 * v28 * v27 + v25), sqrt(1.0 - (v28 * v28 * v27 + v25)));
      v30 = (v29 + v29) * 6372797.56 * 100.0;
      if (v30 >= 0.0)
      {
        v31 = v30;
        if (v30 >= 4.50359963e15)
        {
          goto LABEL_24;
        }

        v32 = (v30 + v30) + 1;
      }

      else
      {
        v31 = v30;
        if (v30 <= -4.50359963e15)
        {
          goto LABEL_24;
        }

        v32 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
      }

      v31 = (v32 >> 1);
LABEL_24:
      v10 = v17;
      if (v31 >= 9.22337204e18)
      {
        if (a1[619] != 0x7FFFFFFFFFFFFFFFLL && a1[619] != 0x7FFFFFFFFFFFFFFELL)
        {
          goto LABEL_34;
        }

        goto LABEL_19;
      }

      if (v30 >= 0.0)
      {
        if (v30 >= 4.50359963e15)
        {
          goto LABEL_33;
        }

        v33 = (v30 + v30) + 1;
      }

      else
      {
        if (v30 <= -4.50359963e15)
        {
          goto LABEL_33;
        }

        v33 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
      }

      v30 = (v33 >> 1);
LABEL_33:
      if (v30 > a1[619])
      {
LABEL_34:
        sub_376F0(a5, v10);
        return;
      }

LABEL_19:
      sub_376F0(a5, v10);
      v5 += v7;
    }

    while (v5 >= 0);
  }
}

void sub_3F86A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3F86C8(void **a1, uint64_t a2, uint64_t a3)
{
  while (!sub_3E6794(a1, a2))
  {
    v8 = sub_4D1F50(*a1, a1[1]);
    v9 = (*v8 - **v8);
    if (*v9 >= 0x1Du && (v10 = v9[14]) != 0)
    {
      if (*(v8 + 38))
      {
        v11 = -*(*v8 + v10);
      }

      else
      {
        v11 = *(*v8 + v10);
      }

      v12 = *(a3 + 128);
      if (v12 == *(a3 + 132))
      {
LABEL_13:
        v7 = v12 + 1;
        sub_1959094((a3 + 128), v12 + 1);
        *(*(a3 + 136) + 8 * v12) = v11;
        goto LABEL_4;
      }
    }

    else
    {
      v11 = 0;
      v12 = *(a3 + 128);
      if (v12 == *(a3 + 132))
      {
        goto LABEL_13;
      }
    }

    *(*(a3 + 136) + 8 * v12) = v11;
    v7 = v12 + 1;
LABEL_4:
    *(a3 + 128) = v7;
    sub_3E3AF4(a1);
  }

  return a3;
}

void sub_3F87B4(uint64_t *a1, uint64_t a2)
{
  if (!*(a1 + 220))
  {
    return;
  }

LABEL_4:
  v4 = a1[104];
  v5 = (a1[97] + 16 * *v4);
  v6 = *v5;
  v7 = v5[1];
  sub_DD38((a1 + 100), v4);
  v8 = a1[104];
  *(a1[107] + 4 * *v8) = -1;
  v9 = *(a1 + 220) - 1;
  *(a1 + 220) = v9;
  if (v9)
  {
    v10 = &v8[4 * v9];
    *v8 = *v10;
    *(v8 + 1) = *(v10 + 1);
    v11 = a1[104];
    *(a1[107] + 4 * *v11) = 0;
    v12 = *(a1 + 220);
    if (v12 >= 2)
    {
      v13 = 0;
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = v13 + 5;
        if (v16 >= v12)
        {
          v17 = v12;
        }

        else
        {
          v17 = v16;
        }

        if (v16 <= v15)
        {
          break;
        }

        v18 = v14;
        v19 = *&v11[4 * v14 + 2];
        v20 = &v11[4 * v15 + 2];
        v14 = -1;
        v21 = v19;
        do
        {
          v23 = *v20;
          v20 += 4;
          v22 = v23;
          if (v23 < v21)
          {
            v21 = v22;
            v14 = v15;
          }

          ++v15;
        }

        while (v15 < v17);
        if (v14 >= v12)
        {
          break;
        }

        v24 = 4 * v14;
        v25 = &v11[v24];
        v26 = 16 * v18;
        v27 = v11 + v26;
        v28 = *v25;
        *v25 = *v27;
        *v27 = v28;
        v29 = *(v25 + 1);
        *(v25 + 1) = v19;
        *(v27 + 1) = v29;
        v11 = a1[104];
        v30 = v11[v24];
        v31 = a1[107];
        v32 = *(v11 + v26);
        LODWORD(v26) = *(v31 + 4 * v30);
        *(v31 + 4 * v30) = *(v31 + 4 * v32);
        *(v31 + 4 * v32) = v26;
        v13 = 4 * v14;
        v15 = (4 * v14) | 1;
        v12 = *(a1 + 220);
      }

      while (v15 < v12);
    }
  }

  a1[105] -= 16;
  v33 = *(a2 + 8);
  v34 = **a2;
  for (i = *(*a2 + 8); v34 != i; ++v34)
  {
    v36 = *(*(v33 + 24) + 40 * *v34 + 32);
    if (v36 == HIDWORD(v6) && WORD2(v36) == WORD1(v6) && ((v6 >> 1) & 1 ^ BYTE6(v36)) == 1)
    {
      v50 = *(a2 + 16);
      *v50 = *v34;
      *(v50 + 4) = 1;
      return;
    }
  }

  if (*(v33 + 4980) > ((a1[101] - a1[100]) >> 2))
  {
    v38 = *a1;
    if (*(*a1 + 48) == v6)
    {
      v40 = *(v38 + 24);
      v39 = *(v38 + 32);
    }

    else
    {
      *(v38 + 48) = v6;
      sub_F8ED58(*v38, v6, 1, (v38 + 24), *(v38 + 16));
      v40 = *(v38 + 24);
      if (*(v38 + 48) != v6)
      {
        *(v38 + 48) = v6;
        sub_F8ED58(*v38, v6, 1, (v38 + 24), *(v38 + 16));
      }

      v39 = *(v38 + 32);
    }

    while (1)
    {
      if (v40 == v39)
      {
        if (*(a1 + 220))
        {
          goto LABEL_4;
        }

        return;
      }

      v42 = *v40;
      v43 = v40[4];
      v44 = (*v40 - **v40);
      v45 = *v44;
      if ((v43 & 0xFF000000000000) != 0)
      {
        if (v45 < 0x47)
        {
          goto LABEL_35;
        }

        v46 = v44[35];
        if (!v46 || (*(v42 + v46) & 2) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v45 < 0x47)
        {
          goto LABEL_35;
        }

        v47 = v44[35];
        if (!v47 || (*(v42 + v47) & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v52 = (((v43 >> 16) & 0xFFFF0000 | (v43 << 32) | (2 * ((v43 & 0xFF000000000000) == 0))) + 4 * *(v40 + 20)) & 0xFFFFFFFFFFFFFFFELL | *(v40 + 84) & 1;
      v48 = (v42 - *v42);
      if (*v48 >= 9u && (v49 = v48[4]) != 0)
      {
        v41 = *(v42 + v49);
      }

      else
      {
        v41 = 0;
      }

      v51 = v41 + v7;
      sub_40E514((a1 + 1), &v52, &v51);
LABEL_35:
      v40 += 11;
    }
  }
}

void sub_3F8B1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = a2;
  v9 = *a3;
  v10 = *(a3 + 2);
  *(a1 + 24) = 0;
  v11 = a1 + 24;
  *(a1 + 16) = v10;
  *(a1 + 8) = v9;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = a4;
  *(a1 + 64) = a5;
  *(a1 + 72) = a6;
  *(a1 + 80) = a7;
  *(a1 + 88) = a8;
  v14 = 19;
  strcpy(__p, "GDFTimeDomainParser");
  __dst = 0uLL;
  v16 = 0;
  v12 = sub_3AEC94(a9, __p, &__dst);
  sub_EE90(v11 + 72, v12);
}

void sub_3F9290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61)
{
  if (*(v65 - 89) < 0)
  {
    operator delete(*(v65 - 112));
  }

  sub_1959728(&a9);
  v67 = *v64;
  if (*v64)
  {
    v61[617] = v67;
    operator delete(v67);
    v68 = *v63;
    if (!*v63)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v68 = *v63;
    if (!*v63)
    {
      goto LABEL_8;
    }
  }

  v61[614] = v68;
  operator delete(v68);
LABEL_8:
  sub_404134(v61 + 69);
  sub_321B00((v62 + 9));
  v69 = *v62;
  if (!*v62)
  {
    _Unwind_Resume(a1);
  }

  v61[4] = v69;
  operator delete(v69);
  _Unwind_Resume(a1);
}

void sub_3F9484(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_1A104((v14 - 112));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x3F9464);
}

char *sub_3F94A4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v49 = *a3;
  v6 = *(a3 + 24);
  v50 = *(a3 + 16);
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v7 = *(a3 + 32);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  v9 = *(a3 + 48);
  v8 = *(a3 + 56);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v41 = *a4;
  v10 = *(a4 + 24);
  v42 = *(a4 + 16);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v11 = *(a4 + 32);
  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  v13 = *(a4 + 48);
  v12 = *(a4 + 56);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v33 = *a3;
  v14 = *(a3 + 24);
  v34 = *(a3 + 16);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v15 = *(a3 + 32);
  if (v15 != v14)
  {
    if (((v15 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  v17 = *(a3 + 48);
  v16 = *(a3 + 56);
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v25 = *a4;
  v18 = *(a4 + 24);
  v26 = *(a4 + 16);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v19 = *(a4 + 32);
  if (v19 != v18)
  {
    if (((v19 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v31 = 0;
  v32 = 0;
  v21 = *(a4 + 48);
  v20 = *(a4 + 56);
  if (v20 != v21)
  {
    if (((v20 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v22 = sub_404CC4(&v33, &v25);
  v23 = sub_404240(a1, a2, &v49, &v41, v22);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  return v23;
}

void sub_3F988C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (v36)
  {
    operator delete(v36);
  }

  sub_3DB674(&a19);
  sub_3DB674(&a29);
  sub_3DB674((v37 - 144));
  _Unwind_Resume(a1);
}

char *sub_3F9970(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v49 = *a3;
  v6 = *(a3 + 24);
  v50 = *(a3 + 16);
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v7 = *(a3 + 32);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  v9 = *(a3 + 48);
  v8 = *(a3 + 56);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v41 = *a4;
  v10 = *(a4 + 24);
  v42 = *(a4 + 16);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v11 = *(a4 + 32);
  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  v13 = *(a4 + 48);
  v12 = *(a4 + 56);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v33 = *a3;
  v14 = *(a3 + 24);
  v34 = *(a3 + 16);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v15 = *(a3 + 32);
  if (v15 != v14)
  {
    if (((v15 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  v17 = *(a3 + 48);
  v16 = *(a3 + 56);
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v25 = *a4;
  v18 = *(a4 + 24);
  v26 = *(a4 + 16);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v19 = *(a4 + 32);
  if (v19 != v18)
  {
    if (((v19 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v31 = 0;
  v32 = 0;
  v21 = *(a4 + 48);
  v20 = *(a4 + 56);
  if (v20 != v21)
  {
    if (((v20 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v22 = sub_406EB8(&v33, &v25);
  v23 = sub_4063F4(a1, a2, &v49, &v41, v22);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  return v23;
}

void sub_3F9D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (v36)
  {
    operator delete(v36);
  }

  sub_3DB674(&a19);
  sub_3DB674(&a29);
  sub_3DB674((v37 - 144));
  _Unwind_Resume(a1);
}

uint64_t sub_3F9E3C(uint64_t a1)
{
  LOBYTE(v5) = 0;
  BYTE4(v5) = 0;
  if (*(a1 + 4976) == 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    operator new();
  }

  return v5;
}

void sub_3FA3A4(_Unwind_Exception *a1)
{
  v3 = *(v1 - 128);
  if (!v3)
  {
    _Unwind_Resume(a1);
  }

  *(v1 - 120) = v3;
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_3FA450(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    while (1)
    {
      sub_2B7A20(*(a1 + 4896), *(v6 + 32) & 0xFFFFFFFFFFFFFFLL, v24);
      v8 = __p;
      if (__p == v26)
      {
        break;
      }

      v9 = sub_31A76C(v24);
      v10 = v9;
      v12 = v11;
      v13 = v9 & 0xFFFFFFFF00000000;
      v8 = __p;
      v14 = v10;
      if (__p)
      {
        goto LABEL_4;
      }

LABEL_5:
      v22 = v13 | v14;
      v23 = v12;
      sub_376F0(a3, &v22);
      v6 += 40;
      if (v6 == v5)
      {
        v6 = *a2;
        v5 = a2[1];
        goto LABEL_9;
      }
    }

    v12 = 0x7FFFFFFF;
    v13 = 0xFFFFFFFF00000000;
    v14 = 0xFFFFFFFFLL;
    if (!__p)
    {
      goto LABEL_5;
    }

LABEL_4:
    v26 = v8;
    operator delete(v8);
    goto LABEL_5;
  }

LABEL_9:
  if (v6 != v5)
  {
    sub_2B7A20(*(a1 + 4896), *(v5 - 8) & 0xFFFFFFFFFFFFFFLL, v24);
    v15 = __p;
    if (__p == v26)
    {
      v19 = 0x7FFFFFFF;
      v20 = 0xFFFFFFFF00000000;
      v21 = 0xFFFFFFFFLL;
      if (!__p)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v16 = sub_31AA0C(v24);
      v17 = v16;
      v19 = v18;
      v20 = v16 & 0xFFFFFFFF00000000;
      v15 = __p;
      v21 = v17;
      if (!__p)
      {
LABEL_13:
        v22 = v20 | v21;
        v23 = v19;
        sub_376F0(a3, &v22);
        return;
      }
    }

    v26 = v15;
    operator delete(v15);
    goto LABEL_13;
  }
}

void sub_3FA5B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
    v16 = *v14;
    if (!*v14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v16 = *v14;
    if (!*v14)
    {
      goto LABEL_3;
    }
  }

  *(v14 + 8) = v16;
  operator delete(v16);
  _Unwind_Resume(exception_object);
}

void sub_3FA604(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v49 = *a2;
  v6 = *(a2 + 24);
  v50 = *(a2 + 16);
  v51 = 0uLL;
  v52 = 0;
  v7 = *(a2 + 32);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v53 = 0uLL;
  v54 = 0;
  v9 = *(a2 + 48);
  v8 = *(a2 + 56);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v40 = *(a2 + 72);
  v10 = *(a2 + 96);
  v41 = *(a2 + 88);
  v42 = 0uLL;
  v43 = 0;
  v11 = *(a2 + 104);
  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v44 = 0uLL;
  v45 = 0;
  v13 = *(a2 + 120);
  v12 = *(a2 + 128);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  while (v53 != *(&v53 + 1))
  {
    v14 = sub_4D1F50(v49, *(&v49 + 1));
    sub_2B7A20(*(a1 + 4896), *(v14 + 32) & 0xFFFFFFFFFFFFFFLL, &v46);
    v15 = __p;
    if (__p != v48)
    {
      v16 = sub_31A76C(&v46);
      v17 = v16;
      v19 = v18;
      v20 = v16 & 0xFFFFFFFF00000000;
      v15 = __p;
      v21 = v17;
      if (!__p)
      {
        goto LABEL_17;
      }

LABEL_16:
      v48 = v15;
      operator delete(v15);
      goto LABEL_17;
    }

    v19 = 0x7FFFFFFF;
    v20 = 0xFFFFFFFF00000000;
    v21 = 0xFFFFFFFFLL;
    if (__p)
    {
      goto LABEL_16;
    }

LABEL_17:
    v38 = v20 | v21;
    v39 = v19;
    sub_376F0(a3, &v38);
    sub_3E3AF4(&v49);
  }

  if (v53)
  {
    *(&v53 + 1) = v53;
    operator delete(v53);
  }

  if (v51)
  {
    *(&v51 + 1) = v51;
    operator delete(v51);
  }

  if (!sub_3E6794(a2, a2 + 72))
  {
    v22 = *(a1 + 4896);
    v23 = *(a2 + 96);
    v37 = *(a2 + 88);
    v24 = *(a2 + 104);
    if (v24 != v23)
    {
      if (((v24 - v23) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v26 = *(a2 + 120);
    v25 = *(a2 + 128);
    if (v25 != v26)
    {
      if (((v25 - v26) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v49 = *(a2 + 72);
    v50 = v37;
    v51 = 0uLL;
    v52 = 0;
    v53 = 0uLL;
    v54 = 0;
    sub_403378(&v49, -1);
    v40 = v49;
    v41 = v50;
    v36 = v51;
    v42 = v51;
    v43 = v52;
    v35 = v53;
    v44 = v53;
    v45 = v54;
    v27 = sub_4D1F50(v49, *(&v49 + 1));
    sub_2B7A20(v22, *(v27 + 32) & 0xFFFFFFFFFFFFFFLL, &v49);
    v28 = *(&v49 + 1);
    if (*(&v49 + 1) == v50)
    {
      v32 = 0x7FFFFFFF;
      v33 = 0xFFFFFFFF00000000;
      v34 = 0xFFFFFFFFLL;
      if (*(&v49 + 1))
      {
LABEL_33:
        v50 = v28;
        operator delete(v28);
      }
    }

    else
    {
      v29 = sub_31AA0C(&v49);
      v30 = v29;
      v32 = v31;
      v33 = v29 & 0xFFFFFFFF00000000;
      v28 = *(&v49 + 1);
      v34 = v30;
      if (*(&v49 + 1))
      {
        goto LABEL_33;
      }
    }

    v46 = v33 | v34;
    LODWORD(__p) = v32;
    sub_376F0(a3, &v46);
    if (v35)
    {
      operator delete(v35);
    }

    if (v36)
    {
      operator delete(v36);
    }
  }
}

void sub_3FAB74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  v39 = *(v37 - 152);
  if (v39)
  {
    *(v37 - 144) = v39;
    operator delete(v39);
  }

  sub_3DB674(&a25);
  sub_3DB674(&a13);
  v40 = *v36;
  if (*v36)
  {
    *(v36 + 8) = v40;
    operator delete(v40);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3FAC60(uint64_t a1, uint64_t a2)
{
  sub_3FACA8(a1, a2);
  sub_3FB160(a1, a2);

  return sub_3FB3B8(a1);
}

void sub_3FACA8(uint64_t a1, uint64_t a2)
{
  sub_3FC1E8(a1, (a1 + 4904), *(a1 + 48) + 1, 1, &__p);
  sub_3FBDB8(a1, &__p, &v40);
  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  sub_3FC1E8(a1, (a1 + 4904), *(a1 + 48) + 2, 0, &v36);
  sub_3FBDB8(a1, &v36, &__p);
  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  sub_3FC1E8(a1, (a1 + 4928), 0, 0, v35);
  sub_3FBDB8(a1, v35, &v36);
  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  v5 = v40;
  v6 = v41;
  if (v40 != v41)
  {
    do
    {
      v12 = *(a2 + 40);
      if (v12 && (v13 = *(a2 + 32), v13 < *v12))
      {
        *(a2 + 32) = v13 + 1;
        v7 = *&v12[2 * v13 + 2];
      }

      else
      {
        v14 = sub_16F5828(*(a2 + 24));
        v7 = sub_19593CC(a2 + 24, v14);
      }

      LODWORD(v4) = v5[1];
      v8 = exp(*&v4 * -6.28318531 / 4294967300.0 + 3.14159265);
      v9 = atan((v8 + -1.0 / v8) * 0.5) * 57.2957795;
      v10 = *(v7 + 40);
      *(v7 + 40) = v10 | 1;
      *(v7 + 48) = v9;
      v11 = *v5;
      v5 += 3;
      LODWORD(v9) = v11;
      v4 = *&v9 * 360.0 / 4294967300.0 + -180.0;
      *(v7 + 40) = v10 | 3;
      *(v7 + 56) = v4;
    }

    while (v5 != v6);
  }

  v15 = __p;
  v16 = v39;
  if (__p != v39)
  {
    do
    {
      v22 = *(a2 + 64);
      if (v22 && (v23 = *(a2 + 56), v23 < *v22))
      {
        *(a2 + 56) = v23 + 1;
        v17 = *&v22[2 * v23 + 2];
      }

      else
      {
        v24 = sub_16F5828(*(a2 + 48));
        v17 = sub_19593CC(a2 + 48, v24);
      }

      LODWORD(v4) = v15[1];
      v18 = exp(*&v4 * -6.28318531 / 4294967300.0 + 3.14159265);
      v19 = atan((v18 + -1.0 / v18) * 0.5) * 57.2957795;
      v20 = *(v17 + 40);
      *(v17 + 40) = v20 | 1;
      *(v17 + 48) = v19;
      v21 = *v15;
      v15 += 3;
      LODWORD(v19) = v21;
      v4 = *&v19 * 360.0 / 4294967300.0 + -180.0;
      *(v17 + 40) = v20 | 3;
      *(v17 + 56) = v4;
    }

    while (v15 != v16);
  }

  v25 = v36;
  v26 = v37;
  if (v36 != v37)
  {
    do
    {
      v32 = *(a2 + 88);
      if (v32 && (v33 = *(a2 + 80), v33 < *v32))
      {
        *(a2 + 80) = v33 + 1;
        v27 = *&v32[2 * v33 + 2];
      }

      else
      {
        v34 = sub_16F5828(*(a2 + 72));
        v27 = sub_19593CC(a2 + 72, v34);
      }

      LODWORD(v4) = v25[1];
      v28 = exp(*&v4 * -6.28318531 / 4294967300.0 + 3.14159265);
      v29 = atan((v28 + -1.0 / v28) * 0.5) * 57.2957795;
      v30 = *(v27 + 40);
      *(v27 + 40) = v30 | 1;
      *(v27 + 48) = v29;
      v31 = *v25;
      v25 += 3;
      LODWORD(v29) = v31;
      v4 = *&v29 * 360.0 / 4294967300.0 + -180.0;
      *(v27 + 40) = v30 | 3;
      *(v27 + 56) = v4;
    }

    while (v25 != v26);
    v25 = v36;
  }

  if (v25)
  {
    v37 = v25;
    operator delete(v25);
  }

  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }
}

void sub_3FB0D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_3FB160(uint64_t a1, uint64_t a2)
{
  if (!sub_4C49D0(*(a1 + 64)))
  {
    v4 = *(a1 + 24);
    v5 = &v4[5 * *(a1 + 48) + 5];
    if (v5 == v4)
    {
LABEL_24:
      v10 = *(a1 + 32);
      while (1)
      {
        if (v5 == v10)
        {
          goto LABEL_2;
        }

        v12 = (*v5 - **v5);
        if (*v12 >= 0x1Du && (v13 = v12[14]) != 0)
        {
          if (*(v5 + 38))
          {
            v14 = -*(*v5 + v13);
          }

          else
          {
            v14 = *(*v5 + v13);
          }

          v15 = *(a2 + 112);
          if (v15 != *(a2 + 116))
          {
LABEL_25:
            *(*(a2 + 120) + 8 * v15) = v14;
            v11 = v15 + 1;
            goto LABEL_26;
          }
        }

        else
        {
          v14 = 0;
          v15 = *(a2 + 112);
          if (v15 != *(a2 + 116))
          {
            goto LABEL_25;
          }
        }

        v11 = v15 + 1;
        sub_1959094((a2 + 112), v15 + 1);
        *(*(a2 + 120) + 8 * v15) = v14;
LABEL_26:
        *(a2 + 112) = v11;
        v5 += 5;
      }
    }

    while (1)
    {
      v6 = (*v4 - **v4);
      if (*v6 >= 0x1Du && (v7 = v6[14]) != 0)
      {
        if (*(v4 + 38))
        {
          v8 = -*(*v4 + v7);
        }

        else
        {
          v8 = *(*v4 + v7);
        }

        v9 = *(a2 + 96);
        if (v9 == *(a2 + 100))
        {
          goto LABEL_22;
        }

LABEL_13:
        *(*(a2 + 104) + 8 * v9) = v8;
        *(a2 + 96) = v9 + 1;
        v4 += 5;
        if (v4 == v5)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v8 = 0;
        v9 = *(a2 + 96);
        if (v9 != *(a2 + 100))
        {
          goto LABEL_13;
        }

LABEL_22:
        sub_1959094((a2 + 96), v9 + 1);
        *(*(a2 + 104) + 8 * v9) = v8;
        *(a2 + 96) = v9 + 1;
        v4 += 5;
        if (v4 == v5)
        {
LABEL_23:
          v5 = (*(a1 + 24) + 40 * *(a1 + 48) + 40);
          goto LABEL_24;
        }
      }
    }
  }

LABEL_2:
  sub_4C35F8(*(a1 + 72), v21);
  sub_4C36F8(*(a1 + 72), v16);
  sub_3F86C8(v21, v16, a2);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

void sub_3FB388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_3DB674(&a9);
  sub_3DB674(&a18);
  _Unwind_Resume(a1);
}

void sub_3FB3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_3DB674(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3FB3B8(uint64_t a1)
{
  v2 = sub_74700();
  result = sub_73F04(v2);
  if ((result & 1) == 0)
  {
    if (sub_4C513C(*(a1 + 72), 5))
    {
      v4 = *(sub_4C4AE4(*(a1 + 72)) + 32);
      sub_4E4E0C(*(a1 + 72), *(a1 + 4896));
      sub_2B51D8(*(a1 + 4896), v4 & 0xFFFFFFFFFFFFLL);
      v5 = sub_2B51D8(*(a1 + 4896), v4 & 0xFFFFFFFFFFFFLL);
      v6 = (v5 - *v5);
      if (*v6 >= 0x41u && (v7 = v6[32]) != 0)
      {
        v8 = (v5 + v7 + *(v5 + v7));
      }

      else
      {
        v8 = 0;
      }

      sub_40C268(v8, (v4 & 0xFF000000000000) == 0, 1, &v22);
      v9 = v22;
      if (v22)
      {
        v10 = v23;
        v11 = v22;
        if (v22 != v23)
        {
          do
          {
            v12 = *(v10 - 1);
            v10 -= 3;
            if (v12 < 0)
            {
              operator delete(*v10);
            }
          }

          while (v10 != v9);
          v11 = v22;
        }

        v23 = v9;
        operator delete(v11);
      }

      v13 = *(a1 + 4896);
      v14 = sub_4C4AE4(*(a1 + 72));
      v15 = sub_31DDCC(v13, *(v14 + 32) & 0xFFFFFFFFFFFFFFLL);
      sub_40C59C(v13, v15, &v25);
      v16 = *(a1 + 4896);
      v17 = sub_4C4AE4(*(a1 + 72));
      sub_320EC8(v16, *(v17 + 32) | (*(v17 + 36) << 32), v24);
      sub_386C(&v22, *(a1 + 12));
    }

    result = sub_4C513C(*(a1 + 72), 5);
    if (result)
    {
      sub_4FC16C(*(a1 + 88), *(a1 + 12), 9000, &__p);
      v18 = sub_4E4E0C(*(a1 + 72), *(a1 + 4896));
      v20 = v19;
      sub_4C4AC8(*(a1 + 72));
      sub_3DB71C(&__p, **a1, *(*a1 + 8), v18, v20);
    }
  }

  return result;
}

void sub_3FB990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_3874(&a11);
  sub_3874(&a17);
  sub_1A104(&a23);
  sub_3874(&a27);
  sub_25F00((v28 - 128));
  if (*(v28 - 89) < 0)
  {
    operator delete(*(v27 + 64));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3FBA68(uint64_t a1, void *a2)
{
  v12 = 7;
  strcpy(__p, "enabled");
  v4 = sub_5F9D0(a2, __p);
  if (v12 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v12 = 21;
  strcpy(__p, "max_search_space_size");
  v6 = sub_353010(a2, __p);
  if (v12 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 4) = v6;
  v12 = 14;
  strcpy(__p, "num_candidates");
  v8 = sub_353010(a2, __p);
  if (v12 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 8) = v8;
  return a1;
}

void sub_3FBB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3FBD90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3FBDB8(uint64_t a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v4 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a2;
  if (v5 == a2[1])
  {
    v6 = v5;
  }

  else
  {
    sub_376F0(a3, v5);
    v5 = *a2;
    v6 = a2[1];
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 2);
  if (v7 >= 2)
  {
    v8 = 0;
    v9 = 1;
    v39 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v40 = vdupq_n_s64(0x4076800000000000uLL);
    v37 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v38 = vdupq_n_s64(0xC066800000000000);
    do
    {
      v10 = *(v4 + 8);
      v11 = *a2;
      v12 = *a2 + v8;
      v14 = *(v10 - 12);
      v13 = *(v10 - 8);
      if (v14 == -1 && v13 == -1)
      {
        v35 = 0x7FFFFFFFFFFFFFFFLL;
        if (v9 != 0xAAAAAAAAAAAAAAABLL * ((a2[1] - v11) >> 2) - 1)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }

      v16 = v7;
      v18 = *(v12 + 12);
      v17 = *(v12 + 16);
      if (v18 == -1 && v17 == -1)
      {
        v35 = 0x7FFFFFFFFFFFFFFFLL;
        v7 = v16;
        v4 = a3;
        if (v9 != -1 - 0x5555555555555555 * ((a2[1] - v11) >> 2))
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }

      v20 = exp(3.14159265 - v13 * 6.28318531 / 4294967300.0);
      v21 = atan((v20 - 1.0 / v20) * 0.5) * 57.2957795 * 0.0174532925;
      v22.i64[0] = v14;
      v22.i64[1] = v18;
      v23 = exp(3.14159265 - v17 * 6.28318531 / 4294967300.0);
      v24 = atan((v23 - 1.0 / v23) * 0.5) * 57.2957795 * 0.0174532925;
      v25 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v22), v40), v39), v38), v37);
      v41 = vsubq_f64(v25, vdupq_laneq_s64(v25, 1)).f64[0];
      v26 = sin((v21 - v24) * 0.5);
      v27 = v26 * v26;
      v28 = cos(v21);
      v29 = v28 * cos(v24);
      v30 = sin(0.5 * v41);
      v31 = atan2(sqrt(v30 * v30 * v29 + v27), sqrt(1.0 - (v30 * v30 * v29 + v27)));
      v32 = (v31 + v31) * 6372797.56 * 100.0;
      if (v32 >= 0.0)
      {
        v33 = v32;
        v7 = v16;
        if (v32 >= 4.50359963e15)
        {
          goto LABEL_27;
        }

        v34 = (v32 + v32) + 1;
      }

      else
      {
        v33 = v32;
        v7 = v16;
        if (v32 <= -4.50359963e15)
        {
          goto LABEL_27;
        }

        v34 = (v32 + v32) - 1 + (((v32 + v32) - 1) >> 63);
      }

      v33 = (v34 >> 1);
LABEL_27:
      v4 = a3;
      if (v33 >= 9.22337204e18)
      {
        v35 = 0x7FFFFFFFFFFFFFFELL;
        if (v9 != 0xAAAAAAAAAAAAAAABLL * ((a2[1] - v11) >> 2) - 1)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }

      if (v32 >= 0.0)
      {
        if (v32 >= 4.50359963e15)
        {
          goto LABEL_36;
        }

        v36 = (v32 + v32) + 1;
      }

      else
      {
        if (v32 <= -4.50359963e15)
        {
          goto LABEL_36;
        }

        v36 = (v32 + v32) - 1 + (((v32 + v32) - 1) >> 63);
      }

      v32 = (v36 >> 1);
LABEL_36:
      v35 = v32;
      if (v9 != 0xAAAAAAAAAAAAAAABLL * ((a2[1] - v11) >> 2) - 1)
      {
LABEL_37:
        if (v35 < *(a1 + 4960))
        {
          goto LABEL_8;
        }
      }

LABEL_7:
      sub_376F0(v4, (v12 + 12));
LABEL_8:
      ++v9;
      v8 += 12;
    }

    while (v7 != v9);
  }
}

void sub_3FC1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v26 = *a25;
  if (*a25)
  {
    *(a25 + 8) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_3FC1E8(unsigned int **a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v5 = a3;
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (a4)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if ((a3 & 0x80000000) == 0)
  {
    v36 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v37 = vdupq_n_s64(0x4076800000000000uLL);
    v34 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v35 = vdupq_n_s64(0xC066800000000000);
    do
    {
      if (v5 >= (-1431655765 * ((a2[1] - *a2) >> 2)))
      {
        return;
      }

      v10 = *a2 + 12 * v5;
      v12 = **a1;
      v11 = (*a1)[1];
      v13 = v12 == -1 && v11 == -1;
      if (v13 || ((v14 = *v10, v15 = *(v10 + 4), *v10 == -1) ? (v16 = v15 == -1) : (v16 = 0), v16))
      {
        if (a1[619] != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_34;
        }

        goto LABEL_19;
      }

      v17 = *a2 + 12 * v5;
      v18 = exp(3.14159265 - v11 * 6.28318531 / 4294967300.0);
      v19 = atan((v18 - 1.0 / v18) * 0.5) * 57.2957795 * 0.0174532925;
      v20.i64[0] = v12;
      v20.i64[1] = v14;
      v21 = exp(3.14159265 - v15 * 6.28318531 / 4294967300.0);
      v22 = atan((v21 - 1.0 / v21) * 0.5) * 57.2957795 * 0.0174532925;
      v23 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v20), v37), v36), v35), v34);
      v38 = vsubq_f64(v23, vdupq_laneq_s64(v23, 1)).f64[0];
      v24 = sin((v19 - v22) * 0.5);
      v25 = v24 * v24;
      v26 = cos(v19);
      v27 = v26 * cos(v22);
      v28 = sin(0.5 * v38);
      v29 = atan2(sqrt(v28 * v28 * v27 + v25), sqrt(1.0 - (v28 * v28 * v27 + v25)));
      v30 = (v29 + v29) * 6372797.56 * 100.0;
      if (v30 >= 0.0)
      {
        v31 = v30;
        if (v30 >= 4.50359963e15)
        {
          goto LABEL_24;
        }

        v32 = (v30 + v30) + 1;
      }

      else
      {
        v31 = v30;
        if (v30 <= -4.50359963e15)
        {
          goto LABEL_24;
        }

        v32 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
      }

      v31 = (v32 >> 1);
LABEL_24:
      v10 = v17;
      if (v31 >= 9.22337204e18)
      {
        if (a1[619] != 0x7FFFFFFFFFFFFFFFLL && a1[619] != 0x7FFFFFFFFFFFFFFELL)
        {
          goto LABEL_34;
        }

        goto LABEL_19;
      }

      if (v30 >= 0.0)
      {
        if (v30 >= 4.50359963e15)
        {
          goto LABEL_33;
        }

        v33 = (v30 + v30) + 1;
      }

      else
      {
        if (v30 <= -4.50359963e15)
        {
          goto LABEL_33;
        }

        v33 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
      }

      v30 = (v33 >> 1);
LABEL_33:
      if (v30 > a1[619])
      {
LABEL_34:
        sub_376F0(a5, v10);
        return;
      }

LABEL_19:
      sub_376F0(a5, v10);
      v5 += v7;
    }

    while (v5 >= 0);
  }
}

void sub_3FC560(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_3FC580(uint64_t *a1, uint64_t a2)
{
  if (!*(a1 + 220))
  {
    return;
  }

LABEL_4:
  v4 = a1[104];
  v5 = (a1[97] + 16 * *v4);
  v6 = *v5;
  v7 = v5[1];
  sub_DD38((a1 + 100), v4);
  v8 = a1[104];
  *(a1[107] + 4 * *v8) = -1;
  v9 = *(a1 + 220) - 1;
  *(a1 + 220) = v9;
  if (v9)
  {
    v10 = &v8[4 * v9];
    *v8 = *v10;
    *(v8 + 1) = *(v10 + 1);
    v11 = a1[104];
    *(a1[107] + 4 * *v11) = 0;
    v12 = *(a1 + 220);
    if (v12 >= 2)
    {
      v13 = 0;
      v14 = 0;
      v15 = 1;
      do
      {
        v16 = v13 + 5;
        if (v16 >= v12)
        {
          v17 = v12;
        }

        else
        {
          v17 = v16;
        }

        if (v16 <= v15)
        {
          break;
        }

        v18 = v14;
        v19 = *&v11[4 * v14 + 2];
        v20 = &v11[4 * v15 + 2];
        v14 = -1;
        v21 = v19;
        do
        {
          v23 = *v20;
          v20 += 4;
          v22 = v23;
          if (v23 < v21)
          {
            v21 = v22;
            v14 = v15;
          }

          ++v15;
        }

        while (v15 < v17);
        if (v14 >= v12)
        {
          break;
        }

        v24 = 4 * v14;
        v25 = &v11[v24];
        v26 = 16 * v18;
        v27 = v11 + v26;
        v28 = *v25;
        *v25 = *v27;
        *v27 = v28;
        v29 = *(v25 + 1);
        *(v25 + 1) = v19;
        *(v27 + 1) = v29;
        v11 = a1[104];
        v30 = v11[v24];
        v31 = a1[107];
        v32 = *(v11 + v26);
        LODWORD(v26) = *(v31 + 4 * v30);
        *(v31 + 4 * v30) = *(v31 + 4 * v32);
        *(v31 + 4 * v32) = v26;
        v13 = 4 * v14;
        v15 = (4 * v14) | 1;
        v12 = *(a1 + 220);
      }

      while (v15 < v12);
    }
  }

  a1[105] -= 16;
  v33 = *(a2 + 8);
  v34 = **a2;
  for (i = *(*a2 + 8); v34 != i; ++v34)
  {
    v36 = *(*(v33 + 24) + 40 * *v34 + 32);
    if (v36 == HIDWORD(v6) && WORD2(v36) == WORD1(v6) && ((v6 >> 1) & 1 ^ BYTE6(v36)) == 1)
    {
      v50 = *(a2 + 16);
      *v50 = *v34;
      *(v50 + 4) = 1;
      return;
    }
  }

  if (*(v33 + 4980) > ((a1[101] - a1[100]) >> 2))
  {
    v38 = *a1;
    if (*(*a1 + 48) == v6)
    {
      v40 = *(v38 + 24);
      v39 = *(v38 + 32);
    }

    else
    {
      *(v38 + 48) = v6;
      sub_F90350(*v38, v6, 1, v38 + 24, *(v38 + 16));
      v40 = *(v38 + 24);
      if (*(v38 + 48) != v6)
      {
        *(v38 + 48) = v6;
        sub_F90350(*v38, v6, 1, v38 + 24, *(v38 + 16));
      }

      v39 = *(v38 + 32);
    }

    while (1)
    {
      if (v40 == v39)
      {
        if (*(a1 + 220))
        {
          goto LABEL_4;
        }

        return;
      }

      v42 = *v40;
      v43 = v40[4];
      v44 = (*v40 - **v40);
      v45 = *v44;
      if ((v43 & 0xFF000000000000) != 0)
      {
        if (v45 < 0x9B)
        {
          goto LABEL_35;
        }

        v46 = v44[77];
        if (!v46 || (*(v42 + v46) & 2) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v45 < 0x9B)
        {
          goto LABEL_35;
        }

        v47 = v44[77];
        if (!v47 || (*(v42 + v47) & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v52 = (((v43 >> 16) & 0xFFFF0000 | (v43 << 32) | (2 * ((v43 & 0xFF000000000000) == 0))) + 4 * *(v40 + 20)) & 0xFFFFFFFFFFFFFFFELL | v40[11] & 1;
      v48 = (v42 - *v42);
      if (*v48 >= 9u && (v49 = v48[4]) != 0)
      {
        v41 = *(v42 + v49);
      }

      else
      {
        v41 = 0;
      }

      v51 = v41 + v7;
      sub_40E514((a1 + 1), &v52, &v51);
LABEL_35:
      v40 += 12;
    }
  }
}

void sub_3FC8E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = a2;
  v9 = *a3;
  v10 = *(a3 + 2);
  *(a1 + 24) = 0;
  v11 = a1 + 24;
  *(a1 + 16) = v10;
  *(a1 + 8) = v9;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = a4;
  *(a1 + 64) = a5;
  *(a1 + 72) = a6;
  *(a1 + 80) = a7;
  *(a1 + 88) = a8;
  v14 = 19;
  strcpy(__p, "GDFTimeDomainParser");
  __dst = 0uLL;
  v16 = 0;
  v12 = sub_3AEC94(a9, __p, &__dst);
  sub_EE90(v11 + 72, v12);
}

void sub_3FD04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61)
{
  if (*(v65 - 89) < 0)
  {
    operator delete(*(v65 - 112));
  }

  sub_1959728(&a9);
  v67 = *v63;
  if (*v63)
  {
    v61[97] = v67;
    operator delete(v67);
    v68 = *v64;
    if (!*v64)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v68 = *v64;
    if (!*v64)
    {
      goto LABEL_8;
    }
  }

  v61[94] = v68;
  operator delete(v68);
LABEL_8:
  sub_3BFA2C(v61 + 69);
  sub_321B00((v62 + 9));
  v69 = *v62;
  if (!*v62)
  {
    _Unwind_Resume(a1);
  }

  v61[4] = v69;
  operator delete(v69);
  _Unwind_Resume(a1);
}

void sub_3FD240(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_1A104((v14 - 112));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x3FD220);
}

char *sub_3FD260(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v49 = *a3;
  v6 = *(a3 + 24);
  v50 = *(a3 + 16);
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v7 = *(a3 + 32);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  v9 = *(a3 + 48);
  v8 = *(a3 + 56);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v41 = *a4;
  v10 = *(a4 + 24);
  v42 = *(a4 + 16);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v11 = *(a4 + 32);
  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  v13 = *(a4 + 48);
  v12 = *(a4 + 56);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v33 = *a3;
  v14 = *(a3 + 24);
  v34 = *(a3 + 16);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v15 = *(a3 + 32);
  if (v15 != v14)
  {
    if (((v15 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  v17 = *(a3 + 48);
  v16 = *(a3 + 56);
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v25 = *a4;
  v18 = *(a4 + 24);
  v26 = *(a4 + 16);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v19 = *(a4 + 32);
  if (v19 != v18)
  {
    if (((v19 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v31 = 0;
  v32 = 0;
  v21 = *(a4 + 48);
  v20 = *(a4 + 56);
  if (v20 != v21)
  {
    if (((v20 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v22 = sub_408CD8(&v33, &v25);
  v23 = sub_408254(a1, a2, &v49, &v41, v22);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  return v23;
}

void sub_3FD648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (v36)
  {
    operator delete(v36);
  }

  sub_3DB674(&a19);
  sub_3DB674(&a29);
  sub_3DB674((v37 - 144));
  _Unwind_Resume(a1);
}

char *sub_3FD72C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v49 = *a3;
  v6 = *(a3 + 24);
  v50 = *(a3 + 16);
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v7 = *(a3 + 32);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  v9 = *(a3 + 48);
  v8 = *(a3 + 56);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v41 = *a4;
  v10 = *(a4 + 24);
  v42 = *(a4 + 16);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v11 = *(a4 + 32);
  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  v13 = *(a4 + 48);
  v12 = *(a4 + 56);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v33 = *a3;
  v14 = *(a3 + 24);
  v34 = *(a3 + 16);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v15 = *(a3 + 32);
  if (v15 != v14)
  {
    if (((v15 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  v17 = *(a3 + 48);
  v16 = *(a3 + 56);
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v25 = *a4;
  v18 = *(a4 + 24);
  v26 = *(a4 + 16);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v19 = *(a4 + 32);
  if (v19 != v18)
  {
    if (((v19 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v31 = 0;
  v32 = 0;
  v21 = *(a4 + 48);
  v20 = *(a4 + 56);
  if (v20 != v21)
  {
    if (((v20 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v22 = sub_40AECC(&v33, &v25);
  v23 = sub_40A408(a1, a2, &v49, &v41, v22);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  return v23;
}

void sub_3FDB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (v36)
  {
    operator delete(v36);
  }

  sub_3DB674(&a19);
  sub_3DB674(&a29);
  sub_3DB674((v37 - 144));
  _Unwind_Resume(a1);
}

uint64_t sub_3FDBF8(uint64_t a1)
{
  LOBYTE(v5) = 0;
  BYTE4(v5) = 0;
  if (*(a1 + 816) == 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    operator new();
  }

  return v5;
}

void sub_3FE160(_Unwind_Exception *a1)
{
  v3 = *(v1 - 128);
  if (!v3)
  {
    _Unwind_Resume(a1);
  }

  *(v1 - 120) = v3;
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_3FE20C(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    do
    {
      v10 = sub_40E770(*(a1 + 736), v5, 0);
      v11 = v8;
      sub_376F0(a3, &v10);
      v5 += 40;
    }

    while (v5 != v6);
    v5 = *a2;
    v6 = a2[1];
  }

  if (v5 != v6)
  {
    v10 = sub_40E770(*(a1 + 736), v6 - 40, 1);
    v11 = v9;
    sub_376F0(a3, &v10);
  }
}

void sub_3FE2C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_3FE2E0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v34 = *a2;
  v6 = *(a2 + 24);
  v35 = *(a2 + 16);
  v36 = 0uLL;
  v37 = 0;
  v7 = *(a2 + 32);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v38 = 0uLL;
  v39 = 0;
  v9 = *(a2 + 48);
  v8 = *(a2 + 56);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v28 = *(a2 + 72);
  v10 = *(a2 + 96);
  v29 = *(a2 + 88);
  v30 = 0uLL;
  v31 = 0;
  v11 = *(a2 + 104);
  if (v11 != v10)
  {
    if (((v11 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v32 = 0uLL;
  v33 = 0;
  v13 = *(a2 + 120);
  v12 = *(a2 + 128);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  while (v38 != *(&v38 + 1))
  {
    v14 = sub_4D1F50(v34, *(&v34 + 1));
    v26 = sub_40E770(*(a1 + 736), v14, 0);
    v27 = v15;
    sub_376F0(a3, &v26);
    sub_3E3AF4(&v34);
  }

  if (v38)
  {
    *(&v38 + 1) = v38;
    operator delete(v38);
  }

  if (v36)
  {
    *(&v36 + 1) = v36;
    operator delete(v36);
  }

  if (!sub_3E6794(a2, a2 + 72))
  {
    v16 = *(a1 + 736);
    v17 = *(a2 + 96);
    v25 = *(a2 + 88);
    v18 = *(a2 + 104);
    if (v18 != v17)
    {
      if (((v18 - v17) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v20 = *(a2 + 120);
    v19 = *(a2 + 128);
    if (v19 != v20)
    {
      if (((v19 - v20) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v34 = *(a2 + 72);
    v35 = v25;
    v36 = 0uLL;
    v37 = 0;
    v38 = 0uLL;
    v39 = 0;
    sub_403378(&v34, -1);
    v28 = v34;
    v29 = v35;
    v24 = v36;
    v30 = v36;
    v31 = v37;
    v23 = v38;
    v32 = v38;
    v33 = v39;
    v21 = sub_4D1F50(v34, *(&v34 + 1));
    v26 = sub_40E770(v16, v21, 1);
    v27 = v22;
    sub_376F0(a3, &v26);
    if (v23)
    {
      operator delete(v23);
    }

    if (v24)
    {
      operator delete(v24);
    }
  }
}

void sub_3FE7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_3DB674((v6 - 160));
  sub_3DB674(va);
  v8 = *v5;
  if (*v5)
  {
    *(v5 + 8) = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

void sub_3FE868(uint64_t a1, uint64_t a2)
{
  sub_3FE8A8(a1, a2);

  sub_3FED58(a1, a2);
}

void sub_3FE8A8(uint64_t a1, uint64_t a2)
{
  sub_3FF730(a1, (a1 + 744), *(a1 + 48) + 1, 1, &__p);
  sub_3FF300(a1, &__p, &v40);
  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  sub_3FF730(a1, (a1 + 744), *(a1 + 48) + 2, 0, &v36);
  sub_3FF300(a1, &v36, &__p);
  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  sub_3FF730(a1, (a1 + 768), 0, 0, v35);
  sub_3FF300(a1, v35, &v36);
  if (v35[0])
  {
    v35[1] = v35[0];
    operator delete(v35[0]);
  }

  v5 = v40;
  v6 = v41;
  if (v40 != v41)
  {
    do
    {
      v12 = *(a2 + 40);
      if (v12 && (v13 = *(a2 + 32), v13 < *v12))
      {
        *(a2 + 32) = v13 + 1;
        v7 = *&v12[2 * v13 + 2];
      }

      else
      {
        v14 = sub_16F5828(*(a2 + 24));
        v7 = sub_19593CC(a2 + 24, v14);
      }

      LODWORD(v4) = v5[1];
      v8 = exp(*&v4 * -6.28318531 / 4294967300.0 + 3.14159265);
      v9 = atan((v8 + -1.0 / v8) * 0.5) * 57.2957795;
      v10 = *(v7 + 40);
      *(v7 + 40) = v10 | 1;
      *(v7 + 48) = v9;
      v11 = *v5;
      v5 += 3;
      LODWORD(v9) = v11;
      v4 = *&v9 * 360.0 / 4294967300.0 + -180.0;
      *(v7 + 40) = v10 | 3;
      *(v7 + 56) = v4;
    }

    while (v5 != v6);
  }

  v15 = __p;
  v16 = v39;
  if (__p != v39)
  {
    do
    {
      v22 = *(a2 + 64);
      if (v22 && (v23 = *(a2 + 56), v23 < *v22))
      {
        *(a2 + 56) = v23 + 1;
        v17 = *&v22[2 * v23 + 2];
      }

      else
      {
        v24 = sub_16F5828(*(a2 + 48));
        v17 = sub_19593CC(a2 + 48, v24);
      }

      LODWORD(v4) = v15[1];
      v18 = exp(*&v4 * -6.28318531 / 4294967300.0 + 3.14159265);
      v19 = atan((v18 + -1.0 / v18) * 0.5) * 57.2957795;
      v20 = *(v17 + 40);
      *(v17 + 40) = v20 | 1;
      *(v17 + 48) = v19;
      v21 = *v15;
      v15 += 3;
      LODWORD(v19) = v21;
      v4 = *&v19 * 360.0 / 4294967300.0 + -180.0;
      *(v17 + 40) = v20 | 3;
      *(v17 + 56) = v4;
    }

    while (v15 != v16);
  }

  v25 = v36;
  v26 = v37;
  if (v36 != v37)
  {
    do
    {
      v32 = *(a2 + 88);
      if (v32 && (v33 = *(a2 + 80), v33 < *v32))
      {
        *(a2 + 80) = v33 + 1;
        v27 = *&v32[2 * v33 + 2];
      }

      else
      {
        v34 = sub_16F5828(*(a2 + 72));
        v27 = sub_19593CC(a2 + 72, v34);
      }

      LODWORD(v4) = v25[1];
      v28 = exp(*&v4 * -6.28318531 / 4294967300.0 + 3.14159265);
      v29 = atan((v28 + -1.0 / v28) * 0.5) * 57.2957795;
      v30 = *(v27 + 40);
      *(v27 + 40) = v30 | 1;
      *(v27 + 48) = v29;
      v31 = *v25;
      v25 += 3;
      LODWORD(v29) = v31;
      v4 = *&v29 * 360.0 / 4294967300.0 + -180.0;
      *(v27 + 40) = v30 | 3;
      *(v27 + 56) = v4;
    }

    while (v25 != v26);
    v25 = v36;
  }

  if (v25)
  {
    v37 = v25;
    operator delete(v25);
  }

  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }
}

void sub_3FECC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_3FED58(uint64_t a1, uint64_t a2)
{
  if (!sub_4C49D0(*(a1 + 64)))
  {
    v4 = *(a1 + 24);
    v5 = &v4[5 * *(a1 + 48) + 5];
    if (v5 == v4)
    {
LABEL_24:
      v10 = *(a1 + 32);
      while (1)
      {
        if (v5 == v10)
        {
          goto LABEL_2;
        }

        v12 = (*v5 - **v5);
        if (*v12 >= 0x1Du && (v13 = v12[14]) != 0)
        {
          if ((*(v5 + 39) & 0x20) != 0)
          {
            v14 = *(*v5 + v13);
          }

          else
          {
            v14 = -*(*v5 + v13);
          }

          v15 = *(a2 + 112);
          if (v15 != *(a2 + 116))
          {
LABEL_25:
            *(*(a2 + 120) + 8 * v15) = v14;
            v11 = v15 + 1;
            goto LABEL_26;
          }
        }

        else
        {
          v14 = 0;
          v15 = *(a2 + 112);
          if (v15 != *(a2 + 116))
          {
            goto LABEL_25;
          }
        }

        v11 = v15 + 1;
        sub_1959094((a2 + 112), v15 + 1);
        *(*(a2 + 120) + 8 * v15) = v14;
LABEL_26:
        *(a2 + 112) = v11;
        v5 += 5;
      }
    }

    while (1)
    {
      v6 = (*v4 - **v4);
      if (*v6 >= 0x1Du && (v7 = v6[14]) != 0)
      {
        if ((*(v4 + 39) & 0x20) != 0)
        {
          v8 = *(*v4 + v7);
        }

        else
        {
          v8 = -*(*v4 + v7);
        }

        v9 = *(a2 + 96);
        if (v9 == *(a2 + 100))
        {
          goto LABEL_22;
        }

LABEL_13:
        *(*(a2 + 104) + 8 * v9) = v8;
        *(a2 + 96) = v9 + 1;
        v4 += 5;
        if (v4 == v5)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v8 = 0;
        v9 = *(a2 + 96);
        if (v9 != *(a2 + 100))
        {
          goto LABEL_13;
        }

LABEL_22:
        sub_1959094((a2 + 96), v9 + 1);
        *(*(a2 + 104) + 8 * v9) = v8;
        *(a2 + 96) = v9 + 1;
        v4 += 5;
        if (v4 == v5)
        {
LABEL_23:
          v5 = (*(a1 + 24) + 40 * *(a1 + 48) + 40);
          goto LABEL_24;
        }
      }
    }
  }

LABEL_2:
  sub_4C63C0(*(a1 + 72), v21);
  sub_4C64C0(*(a1 + 72), v16);
  sub_3FFAC8(v21, v16, a2);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }
}

void sub_3FEF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_3DB674(&a9);
  sub_3DB674(&a18);
  _Unwind_Resume(a1);
}

void sub_3FEF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_3DB674(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3FEFB0(uint64_t a1, void *a2)
{
  v12 = 7;
  strcpy(__p, "enabled");
  v4 = sub_5F9D0(a2, __p);
  if (v12 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v12 = 21;
  strcpy(__p, "max_search_space_size");
  v6 = sub_353010(a2, __p);
  if (v12 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 4) = v6;
  v12 = 14;
  strcpy(__p, "num_candidates");
  v8 = sub_353010(a2, __p);
  if (v12 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 8) = v8;
  return a1;
}

void sub_3FF0D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3FF2D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3FF300(uint64_t a1@<X0>, uint64_t **a2@<X1>, void *a3@<X8>)
{
  v4 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a2;
  if (v5 == a2[1])
  {
    v6 = v5;
  }

  else
  {
    sub_376F0(a3, v5);
    v5 = *a2;
    v6 = a2[1];
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 2);
  if (v7 >= 2)
  {
    v8 = 0;
    v9 = 1;
    v39 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v40 = vdupq_n_s64(0x4076800000000000uLL);
    v37 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v38 = vdupq_n_s64(0xC066800000000000);
    do
    {
      v10 = *(v4 + 8);
      v11 = *a2;
      v12 = *a2 + v8;
      v14 = *(v10 - 12);
      v13 = *(v10 - 8);
      if (v14 == -1 && v13 == -1)
      {
        v35 = 0x7FFFFFFFFFFFFFFFLL;
        if (v9 != 0xAAAAAAAAAAAAAAABLL * ((a2[1] - v11) >> 2) - 1)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }

      v16 = v7;
      v18 = *(v12 + 12);
      v17 = *(v12 + 16);
      if (v18 == -1 && v17 == -1)
      {
        v35 = 0x7FFFFFFFFFFFFFFFLL;
        v7 = v16;
        v4 = a3;
        if (v9 != -1 - 0x5555555555555555 * ((a2[1] - v11) >> 2))
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }

      v20 = exp(3.14159265 - v13 * 6.28318531 / 4294967300.0);
      v21 = atan((v20 - 1.0 / v20) * 0.5) * 57.2957795 * 0.0174532925;
      v22.i64[0] = v14;
      v22.i64[1] = v18;
      v23 = exp(3.14159265 - v17 * 6.28318531 / 4294967300.0);
      v24 = atan((v23 - 1.0 / v23) * 0.5) * 57.2957795 * 0.0174532925;
      v25 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v22), v40), v39), v38), v37);
      v41 = vsubq_f64(v25, vdupq_laneq_s64(v25, 1)).f64[0];
      v26 = sin((v21 - v24) * 0.5);
      v27 = v26 * v26;
      v28 = cos(v21);
      v29 = v28 * cos(v24);
      v30 = sin(0.5 * v41);
      v31 = atan2(sqrt(v30 * v30 * v29 + v27), sqrt(1.0 - (v30 * v30 * v29 + v27)));
      v32 = (v31 + v31) * 6372797.56 * 100.0;
      if (v32 >= 0.0)
      {
        v33 = v32;
        v7 = v16;
        if (v32 >= 4.50359963e15)
        {
          goto LABEL_27;
        }

        v34 = (v32 + v32) + 1;
      }

      else
      {
        v33 = v32;
        v7 = v16;
        if (v32 <= -4.50359963e15)
        {
          goto LABEL_27;
        }

        v34 = (v32 + v32) - 1 + (((v32 + v32) - 1) >> 63);
      }

      v33 = (v34 >> 1);
LABEL_27:
      v4 = a3;
      if (v33 >= 9.22337204e18)
      {
        v35 = 0x7FFFFFFFFFFFFFFELL;
        if (v9 != 0xAAAAAAAAAAAAAAABLL * ((a2[1] - v11) >> 2) - 1)
        {
          goto LABEL_37;
        }

        goto LABEL_7;
      }

      if (v32 >= 0.0)
      {
        if (v32 >= 4.50359963e15)
        {
          goto LABEL_36;
        }

        v36 = (v32 + v32) + 1;
      }

      else
      {
        if (v32 <= -4.50359963e15)
        {
          goto LABEL_36;
        }

        v36 = (v32 + v32) - 1 + (((v32 + v32) - 1) >> 63);
      }

      v32 = (v36 >> 1);
LABEL_36:
      v35 = v32;
      if (v9 != 0xAAAAAAAAAAAAAAABLL * ((a2[1] - v11) >> 2) - 1)
      {
LABEL_37:
        if (v35 < *(a1 + 800))
        {
          goto LABEL_8;
        }
      }

LABEL_7:
      sub_376F0(v4, (v12 + 12));
LABEL_8:
      ++v9;
      v8 += 12;
    }

    while (v7 != v9);
  }
}

void sub_3FF708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v26 = *a25;
  if (*a25)
  {
    *(a25 + 8) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_3FF730(unsigned int **a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v5 = a3;
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (a4)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  if ((a3 & 0x80000000) == 0)
  {
    v36 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v37 = vdupq_n_s64(0x4076800000000000uLL);
    v34 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v35 = vdupq_n_s64(0xC066800000000000);
    do
    {
      if (v5 >= (-1431655765 * ((a2[1] - *a2) >> 2)))
      {
        return;
      }

      v10 = *a2 + 12 * v5;
      v12 = **a1;
      v11 = (*a1)[1];
      v13 = v12 == -1 && v11 == -1;
      if (v13 || ((v14 = *v10, v15 = *(v10 + 4), *v10 == -1) ? (v16 = v15 == -1) : (v16 = 0), v16))
      {
        if (a1[99] != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_34;
        }

        goto LABEL_19;
      }

      v17 = *a2 + 12 * v5;
      v18 = exp(3.14159265 - v11 * 6.28318531 / 4294967300.0);
      v19 = atan((v18 - 1.0 / v18) * 0.5) * 57.2957795 * 0.0174532925;
      v20.i64[0] = v12;
      v20.i64[1] = v14;
      v21 = exp(3.14159265 - v15 * 6.28318531 / 4294967300.0);
      v22 = atan((v21 - 1.0 / v21) * 0.5) * 57.2957795 * 0.0174532925;
      v23 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v20), v37), v36), v35), v34);
      v38 = vsubq_f64(v23, vdupq_laneq_s64(v23, 1)).f64[0];
      v24 = sin((v19 - v22) * 0.5);
      v25 = v24 * v24;
      v26 = cos(v19);
      v27 = v26 * cos(v22);
      v28 = sin(0.5 * v38);
      v29 = atan2(sqrt(v28 * v28 * v27 + v25), sqrt(1.0 - (v28 * v28 * v27 + v25)));
      v30 = (v29 + v29) * 6372797.56 * 100.0;
      if (v30 >= 0.0)
      {
        v31 = v30;
        if (v30 >= 4.50359963e15)
        {
          goto LABEL_24;
        }

        v32 = (v30 + v30) + 1;
      }

      else
      {
        v31 = v30;
        if (v30 <= -4.50359963e15)
        {
          goto LABEL_24;
        }

        v32 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
      }

      v31 = (v32 >> 1);
LABEL_24:
      v10 = v17;
      if (v31 >= 9.22337204e18)
      {
        if (a1[99] != 0x7FFFFFFFFFFFFFFFLL && a1[99] != 0x7FFFFFFFFFFFFFFELL)
        {
          goto LABEL_34;
        }

        goto LABEL_19;
      }

      if (v30 >= 0.0)
      {
        if (v30 >= 4.50359963e15)
        {
          goto LABEL_33;
        }

        v33 = (v30 + v30) + 1;
      }

      else
      {
        if (v30 <= -4.50359963e15)
        {
          goto LABEL_33;
        }

        v33 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
      }

      v30 = (v33 >> 1);
LABEL_33:
      if (v30 > a1[99])
      {
LABEL_34:
        sub_376F0(a5, v10);
        return;
      }

LABEL_19:
      sub_376F0(a5, v10);
      v5 += v7;
    }

    while (v5 >= 0);
  }
}

void sub_3FFAA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}