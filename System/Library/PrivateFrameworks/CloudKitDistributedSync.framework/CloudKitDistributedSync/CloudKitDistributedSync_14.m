uint64_t sub_24394DF14(uint64_t a1, char *__dst, uint64_t a3, unsigned __int8 *a4, uint64_t a5, int a6)
{
  v6 = a6;
  v7 = __dst;
  if (*(a1 + 30376))
  {
    v9 = *(a1 + 30360);
  }

  else
  {
    v9 = &__dst[a3];
  }

  v10 = *(a1 + 30120);
  v96 = v10;
  v92 = &v10[*(a1 + 30152)];
  if (a6)
  {
    v11 = *(a1 + 29896);
    v90 = *(a1 + 29912);
    v91 = *(a1 + 29904);
    v94 = 0u;
    memset(v95, 0, sizeof(v95));
    *(a1 + 30004) = 1;
    v12 = 88;
    v13 = 26684;
    v93 = 0u;
    do
    {
      *(&v93 + v12) = *(a1 + v13);
      v12 += 8;
      v13 += 4;
    }

    while (v12 != 112);
    if (!a5)
    {
      return -20;
    }

    *(&v94 + 1) = a4;
    *&v95[0] = a4 + 8;
    if (a5 >= 8)
    {
      v14 = *&a4[a5 - 8];
      *&v94 = &a4[a5 - 8];
      *&v93 = v14;
      if (!HIBYTE(v14))
      {
        return -20;
      }

      DWORD2(v93) = 8 - (__clz(HIBYTE(v14)) ^ 0x1F);
      if (a5 > 0xFFFFFFFFFFFFFF88)
      {
        return -20;
      }

LABEL_32:
      v87 = (a1 + 26684);
      v20 = v9;
      sub_24394E6A8(v95 + 1, &v93, *a1);
      sub_24394E6A8(&v95[1] + 1, &v93, *(a1 + 16));
      sub_24394E6A8(&v95[2] + 1, &v93, *(a1 + 8));
      v15 = v7;
      v88 = v7;
      v89 = v20;
      v21 = v20 - 32;
      while (1)
      {
        v22 = (*&v95[1] + 8 * *(&v95[0] + 1));
        v23 = (*&v95[3] + 8 * *(&v95[2] + 1));
        v24 = (*&v95[2] + 8 * *(&v95[1] + 1));
        v25 = *(v23 + 1);
        v26 = *(v22 + 1);
        v27 = *(v24 + 1);
        v28 = *(v22 + 2);
        v29 = *(v23 + 2);
        v30 = *(v24 + 2);
        v31 = *v22;
        v32 = *v23;
        v33 = *v24;
        v34 = *(v22 + 3);
        v35 = *(v23 + 3);
        v36 = *(v24 + 3);
        if (v30 >= 2)
        {
          v37 = DWORD2(v93) + v30;
          v38 = (v93 << SBYTE8(v93) >> -v30) + v27;
          v95[4] = *(&v95[3] + 8);
          goto LABEL_35;
        }

        if (!*(v24 + 2))
        {
          v38 = *(&v95[3] + (v26 == 0) + 1);
          v60 = *(&v95[3] + (v26 != 0) + 1);
          *(&v95[3] + 1) = v38;
          *&v95[4] = v60;
          v37 = DWORD2(v93);
          if (!v29)
          {
            goto LABEL_37;
          }

LABEL_36:
          v39 = v93 << v37 >> -v29;
          v37 += v29;
          v25 += v39;
          goto LABEL_37;
        }

        if (v26)
        {
          v27 = v27;
        }

        else
        {
          v27 = (v27 + 1);
        }

        v73 = v93 << SBYTE8(v93);
        v37 = ++DWORD2(v93);
        v74 = v27 + (v73 >> 63);
        if (v74 == 3)
        {
          if ((*(&v95[3] + 1) - 1) <= 1)
          {
            v38 = 1;
          }

          else
          {
            v38 = *(&v95[3] + 1) - 1;
          }
        }

        else
        {
          if (*(&v95[3] + v74 + 1) <= 1uLL)
          {
            v38 = 1;
          }

          else
          {
            v38 = *(&v95[3] + v74 + 1);
          }

          if (v74 == 1)
          {
            goto LABEL_102;
          }
        }

        *(&v95[4] + 1) = *&v95[4];
LABEL_102:
        *&v95[4] = *(&v95[3] + 1);
LABEL_35:
        *(&v95[3] + 1) = v38;
        if (v29)
        {
          goto LABEL_36;
        }

LABEL_37:
        if ((v29 + v28 + v30) >= 0x1Fu && v37 <= 0x40)
        {
          if (v94 >= *&v95[0])
          {
            v79 = (v94 - (v37 >> 3));
            v80 = *v79;
            v37 &= 7u;
            *&v94 = v79;
            *&v93 = v80;
          }

          else if (v94 != *(&v94 + 1))
          {
            v65 = v37 >> 3;
            if ((v94 - v65) >= *(&v94 + 1))
            {
              v66 = v65;
            }

            else
            {
              v66 = (v94 - DWORD2(v94));
            }

            v67 = *(v94 - v66);
            v37 -= 8 * v66;
            *&v94 = v94 - v66;
            *&v93 = v67;
          }
        }

        v40 = (v93 << v37 >> -v28) + v26;
        _ZF = v28 == 0;
        if (v28)
        {
          v42 = v37 + v28;
        }

        else
        {
          v42 = v37;
        }

        if (!_ZF)
        {
          v26 = v40;
        }

        v43 = v42 + v34;
        v44 = ((v93 >> -v43) & dword_243990D38[v34]) + v31;
        *(&v95[2] + 1) = ((v93 >> -(v43 + v35)) & dword_243990D38[v35]) + v32;
        v45 = v43 + v35 + v36;
        v46 = (v93 >> -(v43 + v35 + v36)) & dword_243990D38[v36];
        DWORD2(v93) = v45;
        *(&v95[0] + 1) = v44;
        *(&v95[1] + 1) = v46 + v33;
        v47 = &v15[v26];
        v48 = v96;
        v49 = &v96[v26];
        _X8 = &v15[v26 - v38];
        __asm { PRFM            #0, [X8] }

        if (&v96[v26] > v92 || (v17 = v26 + v25, &v15[v26 + v25] > v21))
        {
          v97[0] = v26;
          v97[1] = v25;
          v97[2] = v38;
          v17 = sub_24394E7F4(v15, v89, v97, &v96, v92, v11, v91, v90);
        }

        else
        {
          *v15 = *v96;
          if (v26 > 0x10)
          {
            *(v15 + 1) = *(v48 + 1);
            if ((v26 - 16) >= 17)
            {
              v68 = v15 + 32;
              v69 = (v48 + 48);
              do
              {
                *v68 = *(v69 - 1);
                v70 = *v69;
                v69 += 2;
                v68[1] = v70;
                v68 += 2;
              }

              while (v68 < v47);
            }
          }

          v96 = v49;
          if (v38 <= v47 - v11)
          {
            goto LABEL_50;
          }

          if (v38 > v47 - v91)
          {
            return -20;
          }

          v55 = _X8 - v11;
          v56 = (v90 + _X8 - v11);
          if (v56 + v25 > v90)
          {
            memmove(&v15[v26], v56, v11 - _X8);
            v47 -= v55;
            v25 += v55;
            _X8 = v11;
LABEL_50:
            if (v38 < 0x10)
            {
              if (v38 > 7)
              {
                *v47 = *_X8;
              }

              else
              {
                v71 = dword_243990DD8[v38];
                *v47 = *_X8;
                *(v47 + 1) = _X8[1];
                *(v47 + 2) = _X8[2];
                *(v47 + 3) = _X8[3];
                v72 = &_X8[dword_243990DB8[v38]];
                *(v47 + 4) = *v72;
                _X8 = &v72[-v71];
              }

              if (v25 >= 9)
              {
                v75 = _X8 + 8;
                v76 = (v47 + 8);
                v77 = v47 + v25;
                if ((v47 - _X8) > 15)
                {
                  *v76 = *v75;
                  if (v25 >= 25)
                  {
                    v81 = (v47 + 24);
                    v82 = (_X8 + 40);
                    do
                    {
                      *v81 = *(v82 - 1);
                      v83 = *v82;
                      v82 += 2;
                      v81[1] = v83;
                      v81 += 2;
                    }

                    while (v81 < v77);
                  }
                }

                else
                {
                  do
                  {
                    v78 = *v75;
                    v75 = (v75 + 8);
                    *v76 = v78;
                    v76 = (v76 + 8);
                  }

                  while (v76 < v77);
                }
              }
            }

            else
            {
              *v47 = *_X8;
              if (v25 >= 17)
              {
                v57 = (v47 + 16);
                v58 = (_X8 + 32);
                do
                {
                  *v57 = *(v58 - 1);
                  v59 = *v58;
                  v58 += 2;
                  v57[1] = v59;
                  v57 += 2;
                }

                while (v57 < v47 + v25);
              }
            }

            goto LABEL_59;
          }

          memmove(&v15[v26], v56, v25);
        }

LABEL_59:
        if (v17 > 0xFFFFFFFFFFFFFF88)
        {
          return v17;
        }

        v15 += v17;
        if (!--v6)
        {
          v7 = v88;
          v9 = v89;
          if (DWORD2(v93) > 0x40 || (v17 = -20, DWORD2(v93) == 64) && v94 < *&v95[0] && v94 == *(&v94 + 1))
          {
            v84 = 88;
            v85 = v87;
            do
            {
              *v85++ = *(&v93 + v84);
              v84 += 8;
            }

            while (v84 != 112);
            v10 = v96;
            goto LABEL_13;
          }

          return v17;
        }

        if (DWORD2(v93) <= 0x40)
        {
          if (v94 >= *&v95[0])
          {
            v63 = (v94 - (DWORD2(v93) >> 3));
            *&v94 = v63;
            v64 = BYTE8(v93) & 7;
            goto LABEL_69;
          }

          if (v94 != *(&v94 + 1))
          {
            v61 = DWORD2(v93) >> 3;
            if (v94 - v61 >= *(&v94 + 1))
            {
              v62 = v61;
            }

            else
            {
              v62 = (v94 - DWORD2(v94));
            }

            v63 = (v94 - v62);
            *&v94 = v94 - v62;
            v64 = DWORD2(v93) - 8 * v62;
LABEL_69:
            DWORD2(v93) = v64;
            *&v93 = *v63;
          }
        }
      }
    }

    v19 = *a4;
    *&v94 = a4;
    *&v93 = v19;
    if (a5 > 4)
    {
      if (a5 != 5)
      {
        if (a5 != 6)
        {
          v19 |= a4[6] << 48;
        }

        v19 += a4[5] << 40;
      }

      v19 += a4[4] << 32;
    }

    else
    {
      if (a5 == 2)
      {
LABEL_29:
        *&v93 = v19 + (a4[1] << 8);
LABEL_30:
        if (!a4[a5 - 1])
        {
          return -20;
        }

        DWORD2(v93) = __clz(a4[a5 - 1]) - 8 * a5 + 41;
        goto LABEL_32;
      }

      if (a5 == 3)
      {
LABEL_28:
        v19 += a4[2] << 16;
        goto LABEL_29;
      }

      if (a5 != 4)
      {
        goto LABEL_30;
      }
    }

    v19 += a4[3] << 24;
    goto LABEL_28;
  }

  v15 = v7;
LABEL_13:
  v16 = v92 - v10;
  if (v92 - v10 > (v9 - v15))
  {
    return -70;
  }

  if (v15)
  {
    memcpy(v15, v10, v92 - v10);
    v18 = &v15[v16];
  }

  else
  {
    v18 = 0;
  }

  return v18 - v7;
}

void *sub_24394E678(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result[3736];
    if (v3 != a2)
    {
      result[3739] = v3;
      result[3738] = a2 + result[3737] - v3;
      result[3737] = a2;
      result[3736] = a2;
    }
  }

  return result;
}

void *sub_24394E6A8(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 4);
  v4 = *(a2 + 8) + v3;
  v5 = (*a2 >> -(*(a2 + 8) + v3)) & dword_243990D38[v3];
  *(a2 + 8) = v4;
  *result = v5;
  if (v4 <= 0x40)
  {
    v6 = *(a2 + 16);
    if (v6 >= *(a2 + 32))
    {
      v10 = (v6 - (v4 >> 3));
      *(a2 + 16) = v10;
      v11 = v4 & 7;
LABEL_9:
      *(a2 + 8) = v11;
      *a2 = *v10;
      goto LABEL_10;
    }

    v7 = *(a2 + 24);
    if (v6 != v7)
    {
      v8 = v4 >> 3;
      if (v6 - v8 >= v7)
      {
        v9 = v8;
      }

      else
      {
        v9 = (v6 - v7);
      }

      v10 = (v6 - v9);
      *(a2 + 16) = v10;
      v11 = v4 - 8 * v9;
      goto LABEL_9;
    }
  }

LABEL_10:
  result[1] = a3 + 8;
  return result;
}

char *sub_24394E748(char *result, char *a2, uint64_t a3)
{
  v3 = &result[a3];
  if (a3 < 8 || result - a2 >= -7)
  {
    if (a3 >= 1)
    {
      do
      {
        v9 = *a2++;
        *result++ = v9;
      }

      while (result < v3);
    }
  }

  else
  {
    if ((result - a2) > 0xFFFFFFFFFFFFFFEFLL || (v4 = v3 - 32, v5 = v4 - result, v4 < result))
    {
      v4 = result;
    }

    else
    {
      *result = *a2;
      if (v5 >= 17)
      {
        v6 = result + 16;
        v7 = (a2 + 32);
        do
        {
          *v6 = *(v7 - 1);
          v8 = *v7;
          v7 += 2;
          *(v6 + 1) = v8;
          v6 += 32;
        }

        while (v6 < v4);
      }

      a2 += v5;
    }

    v10 = &result[a3] - v4;
    do
    {
      v11 = *a2++;
      *v4++ = v11;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_24394E7F4(_BYTE *a1, uint64_t a2, unint64_t *a3, char **a4, uint64_t a5, char *a6, uint64_t a7, unint64_t a8)
{
  v9 = *a3;
  v10 = a3[1] + *a3;
  if (v10 <= a2 - a1)
  {
    v12 = *a4;
    if (v9 > a5 - *a4)
    {
      return -20;
    }

    v16 = &a1[v9];
    v17 = &v12[v9];
    v18 = &a1[v9 - a3[2]];
    v19 = (a2 - 32);
    sub_24394E91C(a1, (a2 - 32), v12, v9, 0);
    *a4 = v17;
    v20 = a3[2];
    if (v20 <= v16 - a6)
    {
      v24 = a3[1];
      a6 = v18;
    }

    else
    {
      if (v20 > &v16[-a7])
      {
        return -20;
      }

      v21 = v18 - a6;
      v22 = (a8 + v18 - a6);
      v23 = a3[1];
      if (v22 + v23 <= a8)
      {
        memmove(v16, v22, v23);
        return v10;
      }

      memmove(v16, v22, a6 - v18);
      v16 -= v21;
      v24 = a3[1] + v21;
      a3[1] = v24;
    }

    sub_24394E91C(v16, v19, a6, v24, 1);
    return v10;
  }

  return -70;
}

_BYTE *sub_24394E91C(_BYTE *result, _BYTE *a2, char *a3, uint64_t a4, int a5)
{
  v5 = &result[a4];
  if (a4 > 7)
  {
    if (a5 == 1)
    {
      v7 = result - a3;
      if ((result - a3) > 7)
      {
        *result = *a3;
      }

      else
      {
        v8 = dword_243990DD8[v7];
        *result = *a3;
        result[1] = a3[1];
        result[2] = a3[2];
        result[3] = a3[3];
        v9 = &a3[dword_243990DB8[v7]];
        *(result + 1) = *v9;
        a3 = &v9[-v8];
      }

      a3 += 8;
      result += 8;
      a4 -= 8;
    }

    if (v5 <= a2)
    {
      v13 = &result[a4];
      if (a5 == 1 && result - a3 <= 15)
      {
        do
        {
          v14 = *a3;
          a3 += 8;
          *result = v14;
          result += 8;
        }

        while (result < v13);
      }

      else
      {
        *result = *a3;
        if (a4 >= 0x11)
        {
          v15 = result + 16;
          v16 = (a3 + 32);
          do
          {
            *v15 = *(v16 - 1);
            v17 = *v16;
            v16 += 2;
            v15[1] = v17;
            v15 += 2;
          }

          while (v15 < v13);
        }
      }
    }

    else
    {
      if (result <= a2)
      {
        v10 = a2 - result;
        if (a5 == 1 && result - a3 < 16)
        {
          v11 = a3;
          do
          {
            v12 = *v11++;
            *result = v12;
            result += 8;
          }

          while (result < a2);
        }

        else
        {
          *result = *a3;
          if (v10 > 16)
          {
            v18 = result + 16;
            v19 = (a3 + 32);
            do
            {
              *v18 = *(v19 - 1);
              v20 = *v19;
              v19 += 2;
              v18[1] = v20;
              v18 += 2;
            }

            while (v18 < a2);
          }
        }

        a3 += v10;
        result = a2;
      }

      while (result < v5)
      {
        v21 = *a3++;
        *result++ = v21;
      }
    }
  }

  else if (a4 >= 1)
  {
    do
    {
      v6 = *a3++;
      *result++ = v6;
    }

    while (result < v5);
  }

  return result;
}

uint64_t sub_24394EAB0(char *a1, uint64_t a2, _BYTE *a3, unint64_t *a4, char **a5, uint64_t a6, char *a7, uint64_t a8, unint64_t a9)
{
  v10 = *a4;
  v11 = a4[1] + *a4;
  if (v11 > a2 - a1)
  {
    return -70;
  }

  v13 = *a5;
  if (v10 > a6 - *a5)
  {
    return -20;
  }

  v17 = &v13[v10];
  if (v13 >= a1 || v17 <= a1)
  {
    v18 = &a1[v10];
    v19 = &a1[v10 - a4[2]];
    sub_24394E748(a1, v13, v10);
    *a5 = v17;
    v20 = a4[2];
    if (v20 <= v18 - a7)
    {
      v24 = a4[1];
      a7 = v19;
    }

    else
    {
      if (v20 > &v18[-a8])
      {
        return -20;
      }

      v21 = v19 - a7;
      v22 = (a9 + v19 - a7);
      v23 = a4[1];
      if (v22 + v23 <= a9)
      {
        memmove(v18, v22, v23);
        return v11;
      }

      memmove(v18, v22, a7 - v19);
      v18 -= v21;
      v24 = a4[1] + v21;
      a4[1] = v24;
    }

    sub_24394E91C(v18, a3, a7, v24, 1);
    return v11;
  }

  return -70;
}

uint64_t sub_24394EBE0(unsigned int *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a3 <= 0xFF)
  {
    if (a4 <= 0xC)
    {
      v8 = a1 + 1;
      v9 = 1 << a4;
      v10 = (1 << a4) - 1;
      v11 = a3 + 1;
      bzero(a1 + 1, v11);
      v12 = 0;
      v13 = 1;
      v14 = v9 - 1;
      do
      {
        v15 = *(a2 + 2 * v12);
        if (v15 == -1)
        {
          v17 = &v8[v14--];
          *(v17 + 2) = v12;
          v16 = 1;
        }

        else
        {
          v16 = *(a2 + 2 * v12);
          if (((0x8000 << a4) >> 16) <= v15)
          {
            v13 = 0;
          }
        }

        v27[v12++] = v16;
      }

      while (v11 != v12);
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = *(a2 + 2 * v18);
        if (v20 >= 1)
        {
          for (i = 0; i != v20; ++i)
          {
            BYTE2(v8[v19]) = v18;
            do
            {
              v19 = ((v9 >> 3) + (v9 >> 1) + 3 + v19) & v10;
            }

            while (v19 > v14);
          }
        }

        ++v18;
      }

      while (v18 != v11);
      if (v19)
      {
        result = -1;
      }

      else
      {
        v22 = a1 + 7;
        v23 = (1 << a4);
        do
        {
          v24 = *(v22 - 1);
          v25 = v27[v24];
          v27[v24] = v25 + 1;
          LOBYTE(v24) = a4 - (__clz(v25) ^ 0x1F);
          *v22 = v24;
          *(v22 - 3) = (v25 << v24) - v9;
          v22 += 4;
          --v23;
        }

        while (v23);
        result = 0;
        *a1 = a4 | (v13 << 16);
      }
    }

    else
    {
      result = -44;
    }
  }

  else
  {
    result = -46;
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24394EDA4(uint64_t a1, unsigned int *a2, _DWORD *a3, unsigned int *a4, unint64_t a5)
{
  if (a5 < 4)
  {
    return -72;
  }

  v6 = *a4;
  v7 = *a4 & 0xF;
  if (v7 > 0xA)
  {
    return -44;
  }

  v9 = 0;
  *a3 = v7 + 5;
  v10 = (32 << v7);
  v11 = v10 | 1;
  v12 = v7 + 6;
  v13 = v6 >> 4;
  v14 = *a2;
  v15 = a4 + a5 - 5;
  v16 = a4 + a5 - 7;
  v17 = a4 + a5 - 4;
  v18 = 4;
  v19 = 1;
  v20 = a4;
  v47 = v16;
  v46 = v14;
  do
  {
    if (v9 > v14)
    {
      return -1;
    }

    if (v19)
    {
      v21 = v9;
    }

    else
    {
      v22 = v9;
      while (v13 == 0xFFFF)
      {
        if (v20 >= v15)
        {
          v13 >>= 16;
          v18 += 16;
        }

        else
        {
          v23 = *(v20 + 2);
          v20 = (v20 + 2);
          v13 = v23 >> v18;
        }

        v22 += 24;
      }

      v24 = v13 & 3;
      while (v24 == 3)
      {
        v22 += 3;
        v24 = (v13 >> 2) & 3;
        v13 >>= 2;
        v18 += 2;
      }

      v21 = v22 + v24;
      if (v22 + v24 > v14)
      {
        return -48;
      }

      if (v9 >= v21)
      {
        v21 = v9;
      }

      else
      {
        bzero((a1 + 2 * v9), 2 * (~v9 + v22 + v24) + 2);
        v16 = v47;
        v14 = v46;
      }

      v18 += 2;
      v25 = (v20 + (v18 >> 3));
      if (v20 <= v16 || v25 <= v17)
      {
        v18 &= 7u;
        v13 = *v25 >> v18;
        v20 = v25;
      }

      else
      {
        v13 >>= 2;
      }
    }

    v26 = 2 * v10 - 1;
    v27 = v26 - v11;
    v28 = v13 & v26;
    if (v10 <= v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0;
    }

    v30 = v28 - v29;
    v31 = v12 - 1;
    if ((v13 & (v10 - 1)) < v27)
    {
      v32 = v13 & (v10 - 1);
    }

    else
    {
      v31 = v12;
      v32 = v30;
    }

    v33 = v32 - 1;
    LOWORD(v34) = v33;
    if (v33 < 0)
    {
      v34 = -v33;
    }

    v11 -= v34;
    *(a1 + 2 * v21) = v33;
    v19 = v33 != 0;
    if (v11 >= v10)
    {
      v35 = v10;
    }

    else
    {
      do
      {
        --v12;
        v35 = (v10 >> 1);
        v36 = v11 < v10 >> 1;
        LODWORD(v10) = v10 >> 1;
      }

      while (v36);
    }

    v37 = v31 + v18;
    v9 = v21 + 1;
    v38 = v20 > v16;
    v39 = (v20 + (v37 >> 3));
    v40 = v39 > v17;
    v41 = v37 & 7;
    v42 = v37 + 8 * (v20 - v17);
    if (v38 && v40)
    {
      v20 = v17;
    }

    else
    {
      v20 = v39;
    }

    if (v38 && v40)
    {
      v18 = v42;
    }

    else
    {
      v18 = v41;
    }

    v13 = *v20 >> v18;
    v10 = v35;
  }

  while (v11 > 1);
  if (v11 != 1)
  {
    return -1;
  }

  *a2 = v21;
  if (v20 + ((v18 + 7) >> 3) - a4 <= a5)
  {
    return v20 + ((v18 + 7) >> 3) - a4;
  }

  else
  {
    return -72;
  }
}

uint64_t sub_24394F048(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned __int16 *a5)
{
  v5 = &a1[a2];
  v6 = &a1[a2 - 3];
  if (!a5[1])
  {
    if (!a4)
    {
      return -72;
    }

    v10 = a4 - 8;
    if (a4 >= 8)
    {
      v11 = *&a3[v10];
      if (!HIBYTE(v11))
      {
        return -1;
      }

      if (a4 > 0xFFFFFFFFFFFFFF88)
      {
        return a4;
      }

      v12 = 8 - (__clz(HIBYTE(v11)) ^ 0x1F);
LABEL_51:
      v17 = *a5;
      v18 = v12 + v17;
      if (v12 + v17 > 0x40)
      {
LABEL_52:
        v19 = v11;
        goto LABEL_74;
      }

      if (v10 >= 8)
      {
        v20 = v18 >> 3;
        v18 &= 7u;
      }

      else
      {
        if (!v10)
        {
          goto LABEL_52;
        }

        if (&a3[v10 - (v18 >> 3)] >= a3)
        {
          v20 = v18 >> 3;
        }

        else
        {
          v20 = v10;
        }

        v18 -= 8 * v20;
      }

      v10 -= v20;
      v19 = *&a3[v10];
LABEL_74:
      v26 = v18 + v17;
      if (v18 + v17 > 0x40)
      {
        goto LABEL_75;
      }

      if (v10 >= 8)
      {
        v29 = v26 >> 3;
        v26 &= 7u;
      }

      else
      {
        if (!v10)
        {
          v30 = 0;
          v31 = v19;
          goto LABEL_127;
        }

        v28 = v26 >> 3;
        if (&a3[v10 - v28] >= a3)
        {
          v29 = v28;
        }

        else
        {
          v29 = v10;
        }

        v26 -= 8 * v29;
        if (v26 > 0x40)
        {
          goto LABEL_75;
        }
      }

      v30 = v10 - v29;
      v31 = *&a3[v30];
LABEL_127:
      v32 = v11 << v12 >> 1 >> (63 - v17);
      v65 = a5 + 2;
      v34 = v19 << v18 >> 1 >> ((63 - v17) & 0x3F);
      v35 = a1 + 1;
      while (1)
      {
        v27 = v35 - 1;
        if (v30 >= 8)
        {
          v68 = v26 >> 3;
          v26 &= 7u;
          v67 = 1;
        }

        else
        {
          if (!v30)
          {
            goto LABEL_140;
          }

          v66 = &a3[v30 - (v26 >> 3)];
          v67 = v66 >= a3;
          v68 = v66 < a3 ? v30 : v26 >> 3;
          v26 -= 8 * v68;
        }

        v30 -= v68;
        v31 = *&a3[v30];
        if (!v67 || v27 >= v6)
        {
          break;
        }

        v69 = &v65[2 * v32];
        v70 = *v69;
        v71 = *(v69 + 2);
        LODWORD(v69) = *(v69 + 3);
        v72 = v31 << v26 >> 1 >> (63 - v69);
        LODWORD(v69) = v26 + v69;
        *(v35 - 1) = v71;
        v73 = &v65[2 * v34];
        v74 = *v73;
        v75 = *(v73 + 2);
        LODWORD(v73) = *(v73 + 3);
        v76 = v31 << v69 >> 1 >> (63 - v73);
        LODWORD(v69) = v69 + v73;
        *v35 = v75;
        v77 = &v65[2 * v72 + 2 * v70];
        v78 = *v77;
        v79 = *(v77 + 2);
        LODWORD(v77) = *(v77 + 3);
        v80 = v31 << v69 >> 1 >> (63 - v77);
        LODWORD(v77) = v69 + v77;
        v32 = v80 + v78;
        v35[1] = v79;
        v81 = &v65[2 * v76 + 2 * v74];
        LODWORD(v74) = *(v81 + 3);
        v82 = v31 << v77 >> 1 >> (63 - v74);
        v26 = v77 + v74;
        v34 = v82 + *v81;
        v35[2] = *(v81 + 2);
        v35 += 4;
        a2 -= 4;
        if (v26 > 0x40)
        {
LABEL_138:
          v27 = v35 - 1;
          goto LABEL_190;
        }
      }

      if (v26 > 0x40)
      {
LABEL_190:
        if (v27 == v5)
        {
          return -70;
        }

        else
        {
          return -20;
        }
      }

LABEL_140:
      while (v30 < 8)
      {
        if (v30)
        {
          if (&a3[v30 - (v26 >> 3)] >= a3)
          {
            v83 = v26 >> 3;
          }

          else
          {
            v83 = v30;
          }

          v26 -= 8 * v83;
          goto LABEL_147;
        }

        v84 = 0;
LABEL_148:
        v85 = &a3[v84];
        if (!a2)
        {
          goto LABEL_181;
        }

        if (!v84 && v26 == 64 && !v32)
        {
          --v35;
          goto LABEL_183;
        }

        v86 = &v65[2 * v32];
        v87 = *v86;
        v88 = *(v86 + 2);
        LODWORD(v86) = *(v86 + 3);
        v89 = v31 << v26 >> 1 >> (63 - v86);
        v26 += v86;
        v32 = v89 + v87;
        *(v35 - 1) = v88;
        if (v26 > 0x40)
        {
          goto LABEL_184;
        }

        if (v84 >= 8)
        {
          v90 = v26 >> 3;
          v26 &= 7u;
LABEL_160:
          v30 = v84 - v90;
          v31 = *&a3[v30];
          goto LABEL_161;
        }

        if (v84)
        {
          if (&v85[-(v26 >> 3)] >= a3)
          {
            v90 = v26 >> 3;
          }

          else
          {
            v90 = v84;
          }

          v26 -= 8 * v90;
          goto LABEL_160;
        }

        v30 = 0;
LABEL_161:
        if (a2 == 1)
        {
          v85 = &a3[v30];
LABEL_181:
          v35 = v5;
          goto LABEL_184;
        }

        if (!v30 && v26 == 64 && !v34)
        {
          v35 = v27 + 1;
LABEL_183:
          v26 = 64;
          v85 = a3;
LABEL_184:
          if (v85 != a3 || v26 != 64)
          {
            goto LABEL_189;
          }

          goto LABEL_186;
        }

        v91 = &v65[2 * v34];
        v92 = *v91;
        v93 = *(v91 + 2);
        LODWORD(v91) = *(v91 + 3);
        v94 = v31 << v26 >> 1 >> (63 - v91);
        v26 += v91;
        v34 = v94 + v92;
        v27 += 2;
        *v35 = v93;
        v35 += 2;
        a2 -= 2;
        if (v26 > 0x40)
        {
          v85 = &a3[v30];
          --v35;
          goto LABEL_184;
        }
      }

      v83 = v26 >> 3;
      v26 &= 7u;
LABEL_147:
      v84 = v30 - v83;
      v31 = *&a3[v84];
      goto LABEL_148;
    }

    v11 = *a3;
    if (a4 > 4)
    {
      if (a4 != 5)
      {
        if (a4 != 6)
        {
          v11 |= a3[6] << 48;
        }

        v11 += a3[5] << 40;
      }

      v11 += a3[4] << 32;
    }

    else
    {
      if (a4 == 2)
      {
LABEL_48:
        v11 += a3[1] << 8;
LABEL_49:
        if (!a3[a4 - 1])
        {
          return -1;
        }

        v10 = 0;
        v12 = __clz(a3[a4 - 1]) - 8 * a4 + 41;
        goto LABEL_51;
      }

      if (a4 == 3)
      {
LABEL_47:
        v11 += a3[2] << 16;
        goto LABEL_48;
      }

      if (a4 != 4)
      {
        goto LABEL_49;
      }
    }

    v11 += a3[3] << 24;
    goto LABEL_47;
  }

  if (!a4)
  {
    return -72;
  }

  v7 = a4 - 8;
  if (a4 < 8)
  {
    v8 = *a3;
    if (a4 > 4)
    {
      if (a4 != 5)
      {
        if (a4 != 6)
        {
          v8 |= a3[6] << 48;
        }

        v8 += a3[5] << 40;
      }

      v8 += a3[4] << 32;
    }

    else
    {
      if (a4 == 2)
      {
LABEL_30:
        v8 += a3[1] << 8;
        goto LABEL_31;
      }

      if (a4 == 3)
      {
LABEL_29:
        v8 += a3[2] << 16;
        goto LABEL_30;
      }

      if (a4 != 4)
      {
LABEL_31:
        if (a3[a4 - 1])
        {
          v7 = 0;
          v9 = __clz(a3[a4 - 1]) - 8 * a4 + 41;
          goto LABEL_33;
        }

        return -1;
      }
    }

    v8 += a3[3] << 24;
    goto LABEL_29;
  }

  v8 = *&a3[v7];
  if (!HIBYTE(v8))
  {
    return -1;
  }

  if (a4 > 0xFFFFFFFFFFFFFF88)
  {
    return a4;
  }

  v9 = 8 - (__clz(HIBYTE(v8)) ^ 0x1F);
LABEL_33:
  v13 = *a5;
  v14 = v9 + v13;
  if (v9 + v13 > 0x40)
  {
LABEL_34:
    v15 = v8;
    goto LABEL_62;
  }

  if (v7 >= 8)
  {
    v16 = v14 >> 3;
    v14 &= 7u;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_34;
    }

    if (&a3[v7 - (v14 >> 3)] >= a3)
    {
      v16 = v14 >> 3;
    }

    else
    {
      v16 = v7;
    }

    v14 -= 8 * v16;
  }

  v7 -= v16;
  v15 = *&a3[v7];
LABEL_62:
  v21 = v14 + v13;
  if (v14 + v13 > 0x40)
  {
LABEL_75:
    v27 = a1;
    goto LABEL_190;
  }

  if (v7 >= 8)
  {
    v23 = v21 >> 3;
    v21 &= 7u;
  }

  else
  {
    if (!v7)
    {
      v24 = 0;
      v25 = v15;
      goto LABEL_86;
    }

    v22 = v21 >> 3;
    if (&a3[v7 - v22] >= a3)
    {
      v23 = v22;
    }

    else
    {
      v23 = v7;
    }

    v21 -= 8 * v23;
    if (v21 > 0x40)
    {
      goto LABEL_75;
    }
  }

  v24 = v7 - v23;
  v25 = *&a3[v24];
LABEL_86:
  v32 = v8 << v9 >> 1 >> (63 - v13);
  v33 = a5 + 2;
  v34 = v15 << v14 >> 1 >> ((63 - v13) & 0x3F);
  v35 = a1 + 1;
  while (1)
  {
    v27 = v35 - 1;
    if (v24 >= 8)
    {
      v38 = v21 >> 3;
      v21 &= 7u;
      v37 = 1;
    }

    else
    {
      if (!v24)
      {
        goto LABEL_99;
      }

      v36 = &a3[v24 - (v21 >> 3)];
      v37 = v36 >= a3;
      v38 = v36 < a3 ? v24 : v21 >> 3;
      v21 -= 8 * v38;
    }

    v24 -= v38;
    v25 = *&a3[v24];
    if (!v37 || v27 >= v6)
    {
      break;
    }

    v39 = &v33[2 * v32];
    v40 = *v39;
    v41 = *(v39 + 2);
    LODWORD(v39) = *(v39 + 3);
    v42 = v25 << v21 >> -v39;
    LODWORD(v39) = v21 + v39;
    *(v35 - 1) = v41;
    v43 = &v33[2 * v34];
    v44 = *v43;
    v45 = *(v43 + 2);
    LODWORD(v43) = *(v43 + 3);
    v46 = v25 << v39 >> -v43;
    LODWORD(v39) = v39 + v43;
    *v35 = v45;
    v47 = &v33[2 * v42 + 2 * v40];
    v48 = *v47;
    v49 = *(v47 + 2);
    LODWORD(v47) = *(v47 + 3);
    v50 = v25 << v39 >> -v47;
    LODWORD(v47) = v39 + v47;
    v32 = v50 + v48;
    v35[1] = v49;
    v51 = &v33[2 * v46 + 2 * v44];
    LODWORD(v44) = *(v51 + 3);
    v52 = v25 << v47 >> -v44;
    v21 = v47 + v44;
    v34 = v52 + *v51;
    v35[2] = *(v51 + 2);
    v35 += 4;
    a2 -= 4;
    if (v21 > 0x40)
    {
      goto LABEL_138;
    }
  }

  if (v21 > 0x40)
  {
    goto LABEL_190;
  }

  while (1)
  {
LABEL_99:
    if (v24 >= 8)
    {
      v53 = v21 >> 3;
      v21 &= 7u;
LABEL_106:
      v54 = v24 - v53;
      v25 = *&a3[v54];
      goto LABEL_107;
    }

    if (v24)
    {
      if (&a3[v24 - (v21 >> 3)] >= a3)
      {
        v53 = v21 >> 3;
      }

      else
      {
        v53 = v24;
      }

      v21 -= 8 * v53;
      goto LABEL_106;
    }

    v54 = 0;
LABEL_107:
    v55 = &a3[v54];
    if (!a2)
    {
      v60 = v21;
LABEL_172:
      v35 = v5;
      goto LABEL_175;
    }

    if (!v54 && v21 == 64)
    {
      break;
    }

    v56 = &v33[2 * v32];
    v57 = *v56;
    v58 = *(v56 + 2);
    LODWORD(v56) = *(v56 + 3);
    v59 = v25 << v21 >> -v56;
    v60 = v21 + v56;
    v32 = v59 + v57;
    *(v35 - 1) = v58;
    if (v60 > 0x40)
    {
      goto LABEL_175;
    }

    if (v54 >= 8)
    {
      v61 = v60 >> 3;
      v60 &= 7u;
LABEL_118:
      v24 = v54 - v61;
      v25 = *&a3[v24];
      goto LABEL_119;
    }

    if (v54)
    {
      if (&v55[-(v60 >> 3)] >= a3)
      {
        v61 = v60 >> 3;
      }

      else
      {
        v61 = v54;
      }

      v60 -= 8 * v61;
      goto LABEL_118;
    }

    v24 = 0;
LABEL_119:
    if (a2 == 1)
    {
      v55 = &a3[v24];
      goto LABEL_172;
    }

    if (!v24 && v60 == 64)
    {
      v35 = v27 + 1;
      goto LABEL_174;
    }

    v62 = &v33[2 * v34];
    v63 = *v62;
    v64 = *(v62 + 2);
    LODWORD(v62) = *(v62 + 3);
    v21 = v60 + v62;
    v34 = (v25 << v60 >> -v62) + v63;
    v27 += 2;
    *v35 = v64;
    v35 += 2;
    a2 -= 2;
    if (v21 > 0x40)
    {
      v55 = &a3[v24];
      --v35;
      v60 = v21;
      goto LABEL_175;
    }
  }

  --v35;
LABEL_174:
  v60 = 64;
  v55 = a3;
LABEL_175:
  if (v55 != a3 || v60 != 64)
  {
LABEL_189:
    v27 = v35;
    goto LABEL_190;
  }

LABEL_186:
  if (v32 || v34)
  {
    goto LABEL_189;
  }

  return v35 - a1;
}

uint64_t sub_24394F8B4()
{
  v0 = MEMORY[0x28223BE20]();
  v18[64] = *MEMORY[0x277D85DE8];
  v15 = 255;
  if (v3 < 2)
  {
    goto LABEL_2;
  }

  v5 = v3;
  v6 = v2;
  v7 = v1;
  v8 = v0;
  memset(v17, 0, 512);
  v16 = 0;
  v9 = sub_24394EDA4(v18, &v15, &v16, v2, v3);
  v4 = v9;
  if (v9 > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_9;
  }

  v10 = v5 > v9;
  v11 = v5 - v9;
  if (v10)
  {
    v12 = sub_24394EBE0(v17, v18, v15, v16);
    if (v12 <= 0xFFFFFFFFFFFFFF88)
    {
      v12 = sub_24394F048(v8, v7, v6 + v4, v11, v17);
    }

    v4 = v12;
  }

  else
  {
LABEL_2:
    v4 = -72;
  }

LABEL_9:
  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

unint64_t sub_24394FA10(_WORD *a1, char *a2, unint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  result = sub_24394FB3C(v21, v20, &v18, &v19, a2, a3);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    v5 = v19;
    if (v19 <= *a1)
    {
      *a1 = v19;
      if (v5)
      {
        v6 = 0;
        v7 = 0;
        do
        {
          v8 = v20[v6 + 1] << v6;
          v20[v6 + 1] = v7;
          v7 += v8;
          ++v6;
        }

        while (v5 != v6);
      }

      v9 = v18;
      if (v18)
      {
        v10 = 0;
        v11 = v5 + 1;
        do
        {
          v12 = *(v21 + v10);
          v13 = v20[v12];
          v14 = (v13 + (1 << v12 >> 1));
          if (v13 < v14)
          {
            v15 = &a1[v13 + 1] + 1;
            v16 = v14 - v13;
            do
            {
              *(v15 - 1) = v10;
              *v15 = v11 - v12;
              v15 += 2;
              --v16;
            }

            while (v16);
          }

          v20[v12] = v14;
          ++v10;
        }

        while (v10 != v9);
      }
    }

    else
    {
      result = -44;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24394FB3C(_OWORD *a1, uint64_t a2, _DWORD *a3, _DWORD *a4, char *a5, unint64_t a6)
{
  if (a6)
  {
    v10 = *a5;
    if ((*a5 & 0x80000000) == 0)
    {
      if (v10 < a6)
      {
        v11 = *a5;
        v12 = sub_24394F8B4();
        v13 = v12;
        if (v12 > 0xFFFFFFFFFFFFFF88)
        {
          return v13;
        }

        goto LABEL_14;
      }

      return -72;
    }

    if (v10 < 0xF2)
    {
      if ((v10 - 126) >> 1 >= a6)
      {
        return -72;
      }

      v12 = v10 - 127;
      if (v10 == 127)
      {
        *(a2 + 64) = 0;
        *(a2 + 32) = 0u;
        *(a2 + 48) = 0u;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        return -20;
      }

      v15 = 0;
      v16 = a5 + 1;
      v17 = a1 + 1;
      do
      {
        *(v17 - 1) = *v16 >> 4;
        v18 = *v16++;
        *v17 = v18 & 0xF;
        v17 += 2;
        v15 += 2;
      }

      while (v12 > v15);
      v10 = (v10 - 126) >> 1;
    }

    else
    {
      v12 = dword_243990F78[v10 - 242];
      *&v14 = 0x101010101010101;
      *(&v14 + 1) = 0x101010101010101;
      a1[14] = v14;
      a1[15] = v14;
      a1[12] = v14;
      a1[13] = v14;
      a1[10] = v14;
      a1[11] = v14;
      a1[8] = v14;
      a1[9] = v14;
      a1[6] = v14;
      a1[7] = v14;
      a1[4] = v14;
      a1[5] = v14;
      a1[2] = v14;
      a1[3] = v14;
      *a1 = v14;
      a1[1] = v14;
      v10 = 0;
    }

LABEL_14:
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    if (v12)
    {
      v19 = 0;
      v20 = 0;
      v21 = 1;
      while (1)
      {
        v22 = *(a1 + v19);
        if (v22 > 0xF)
        {
          break;
        }

        ++*(a2 + 4 * v22);
        v20 += 1 << *(a1 + v19) >> 1;
        v19 = v21;
        if (v12 <= v21++)
        {
          if (!v20)
          {
            return -20;
          }

          v24 = __clz(v20);
          if ((v24 ^ 0x1F) > 0xF)
          {
            return -20;
          }

          v25 = (2 << (v24 ^ 0x1F)) - v20;
          v26 = __clz(v25) ^ 0x1F;
          if (1 << v26 != v25)
          {
            return -20;
          }

          v27 = v26 + 1;
          *(a1 + v12) = v27;
          ++*(a2 + 4 * v27);
          v28 = *(a2 + 4);
          v13 = -20;
          if (v28 >= 2 && (v28 & 1) == 0)
          {
            *a3 = v12 + 1;
            *a4 = 32 - v24;
            return v10 + 1;
          }

          return v13;
        }
      }
    }

    return -20;
  }

  return -72;
}

uint64_t sub_24394FD48(_BYTE *a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4, unsigned __int16 *a5)
{
  if (a2 <= a4)
  {
    return -70;
  }

  if (!a4)
  {
    return -72;
  }

  v19 = v5;
  v20 = v6;
  v10 = *a5;
  v8 = (a5 + 1);
  v9 = v10;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = a3;
  if (a4 >= 8)
  {
    v11 = *&a3[a4 - 8];
    v17 = &a3[a4 - 8];
    v15 = v11;
    if (HIBYTE(v11))
    {
      LODWORD(v16) = 8 - (__clz(HIBYTE(v11)) ^ 0x1F);
      if (a4 > 0xFFFFFFFFFFFFFF88)
      {
        return a4;
      }

      goto LABEL_24;
    }

    return -1;
  }

  v12 = *a3;
  v17 = a3;
  v15 = v12;
  if (a4 > 4)
  {
    if (a4 != 5)
    {
      if (a4 != 6)
      {
        v12 |= a3[6] << 48;
      }

      v12 += a3[5] << 40;
    }

    v12 += a3[4] << 32;
    goto LABEL_19;
  }

  switch(a4)
  {
    case 2uLL:
LABEL_21:
      v15 = v12 + (a3[1] << 8);
      break;
    case 3uLL:
LABEL_20:
      v12 += a3[2] << 16;
      goto LABEL_21;
    case 4uLL:
LABEL_19:
      v12 += a3[3] << 24;
      goto LABEL_20;
  }

  if (!a3[a4 - 1])
  {
    return -1;
  }

  LODWORD(v16) = __clz(a3[a4 - 1]) - 8 * a4 + 41;
LABEL_24:
  sub_24394FFB4(a1, &v15, &a1[a2], v8, v9);
  if (v16 == 64 && v17 == v18)
  {
    return a2;
  }

  else
  {
    return -20;
  }
}

uint64_t sub_24394FEAC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    *(a1 + 24) = a2;
    if (a3 >= 8)
    {
      v3 = *&a2[a3 - 8];
      *(a1 + 16) = &a2[a3 - 8];
      *a1 = v3;
      if (a2[a3 - 1])
      {
        v4 = 8 - (__clz(a2[a3 - 1]) ^ 0x1F);
LABEL_21:
        *(a1 + 8) = v4;
        return a3;
      }

      return -1;
    }

    *(a1 + 16) = a2;
    v5 = *a2;
    *a1 = v5;
    if (a3 > 4)
    {
      if (a3 != 5)
      {
        if (a3 != 6)
        {
          v5 |= a2[6] << 48;
          *a1 = v5;
        }

        v5 += a2[5] << 40;
        *a1 = v5;
      }

      v5 += a2[4] << 32;
      *a1 = v5;
    }

    else
    {
      if (a3 == 2)
      {
LABEL_18:
        *a1 = v5 + (a2[1] << 8);
        goto LABEL_19;
      }

      if (a3 == 3)
      {
LABEL_17:
        v5 += a2[2] << 16;
        *a1 = v5;
        goto LABEL_18;
      }

      if (a3 != 4)
      {
LABEL_19:
        if (a2[a3 - 1])
        {
          v4 = __clz(a2[a3 - 1]) - 8 * a3 + 41;
          goto LABEL_21;
        }

        return -1;
      }
    }

    v5 += a2[3] << 24;
    *a1 = v5;
    goto LABEL_17;
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  return -72;
}

_BYTE *sub_24394FFB4(_BYTE *result, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v5 = -a5 & 0x3F;
  v6 = *(a2 + 8);
  if (v6 > 0x40)
  {
LABEL_2:
    v7 = result;
    goto LABEL_3;
  }

  do
  {
    v22 = *(a2 + 16);
    v23 = *(a2 + 24);
    if (v22 >= v23 + 8)
    {
      v27 = (v22 - (v6 >> 3));
      *(a2 + 16) = v27;
      v6 &= 7u;
      v26 = 1;
    }

    else
    {
      if (v22 == v23)
      {
        goto LABEL_2;
      }

      v24 = v6 >> 3;
      v25 = v22 - v23;
      v12 = v22 - v24 >= v23;
      v26 = v12;
      if (v12)
      {
        v24 = v24;
      }

      else
      {
        v24 = v25;
      }

      v27 = (v22 - v24);
      *(a2 + 16) = v27;
      v6 -= 8 * v24;
    }

    *(a2 + 8) = v6;
    v28 = *v27;
    *a2 = v28;
    if (!v26 || result > a3 - 4)
    {
      goto LABEL_2;
    }

    v29 = (a4 + 2 * ((v28 << v6) >> v5));
    v30 = *v29;
    *(a2 + 8) = v6 + v29[1];
    *result = v30;
    v31 = *(a2 + 8);
    v32 = (a4 + 2 * (*a2 << v31 >> v5));
    v33 = *v32;
    *(a2 + 8) = v31 + v32[1];
    result[1] = v33;
    v34 = *(a2 + 8);
    v35 = (a4 + 2 * (*a2 << v34 >> v5));
    v36 = *v35;
    *(a2 + 8) = v34 + v35[1];
    result[2] = v36;
    v37 = *(a2 + 8);
    v38 = (a4 + 2 * (*a2 << v37 >> v5));
    v39 = *v38;
    *(a2 + 8) = v37 + v38[1];
    v7 = result + 4;
    result[3] = v39;
    v6 = *(a2 + 8);
    result += 4;
  }

  while (v6 <= 0x40);
LABEL_3:
  while (v6 <= 0x40)
  {
    v9 = *(a2 + 16);
    v8 = *(a2 + 24);
    if (v9 >= v8 + 8)
    {
      v14 = (v9 - (v6 >> 3));
      *(a2 + 16) = v14;
      v15 = v6 & 7;
      v13 = 1;
    }

    else
    {
      if (v9 == v8)
      {
        break;
      }

      v10 = v6 >> 3;
      v11 = v9 - v8;
      v12 = v9 - v10 >= v8;
      v13 = v12;
      v10 = v12 ? v10 : v11;
      v14 = (v9 - v10);
      *(a2 + 16) = v14;
      v15 = v6 - 8 * v10;
    }

    *(a2 + 8) = v15;
    v16 = *v14;
    *a2 = v16;
    if (!v13 || v7 >= a3)
    {
      break;
    }

    v17 = (a4 + 2 * ((v16 << v15) >> v5));
    v18 = *v17;
    *(a2 + 8) = v15 + v17[1];
    *v7++ = v18;
    v6 = *(a2 + 8);
  }

  while (v7 < a3)
  {
    v19 = *(a2 + 8);
    v20 = (a4 + 2 * (*a2 << v19 >> v5));
    v21 = *v20;
    *(a2 + 8) = v19 + v20[1];
    *v7++ = v21;
  }

  return result;
}

unint64_t sub_2439501BC()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v11[1024] = *MEMORY[0x277D85DE8];
  bzero(v11, 0x2000uLL);
  v10 = 12;
  result = sub_24394FA10(&v10, v4, v2);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    if (v2 <= result)
    {
      result = -72;
    }

    else
    {
      result = sub_24394FD48(v7, v6, &v4[result], v2 - result, &v10);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_24395029C(_BYTE *a1, uint64_t a2, unsigned __int16 *a3, unint64_t a4, unsigned __int16 *a5)
{
  if (a4 < 0xA)
  {
    return -20;
  }

  v131 = v5;
  v132 = v6;
  v9 = (a5 + 1);
  v10 = *a5;
  v127 = 0;
  v128 = 0;
  v129 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v117 = 0u;
  v118 = 0u;
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = v11 + v12 + v13 + 6;
  v15 = a4 - v14;
  if (a4 < v14)
  {
    return -20;
  }

  if (!v11)
  {
    return -72;
  }

  v18 = a3 + v11 + 6;
  v130 = a3 + 3;
  if (v11 < 8)
  {
    v21 = *(a3 + 6);
    v129 = a3 + 3;
    v127 = v21;
    if (v11 > 4)
    {
      if (v11 != 5)
      {
        if (v11 != 6)
        {
          v21 |= *(a3 + 12) << 48;
        }

        v21 += *(a3 + 11) << 40;
      }

      v21 += *(a3 + 10) << 32;
    }

    else
    {
      if (v11 == 2)
      {
LABEL_21:
        v127 = v21 + (*(a3 + 7) << 8);
LABEL_22:
        if (!*(v18 - 1))
        {
          return -1;
        }

        v20 = __clz(*(v18 - 1)) - 8 * v11 + 41;
        goto LABEL_24;
      }

      if (v11 == 3)
      {
LABEL_20:
        v21 += *(a3 + 8) << 16;
        goto LABEL_21;
      }

      if (v11 != 4)
      {
        goto LABEL_22;
      }
    }

    v21 += *(a3 + 9) << 24;
    goto LABEL_20;
  }

  v19 = *(v18 - 1);
  v129 = (v18 - 8);
  v127 = v19;
  if (!HIBYTE(v19))
  {
    return -1;
  }

  v20 = 8 - (__clz(HIBYTE(v19)) ^ 0x1F);
LABEL_24:
  LODWORD(v128) = v20;
  if (!v12)
  {
    return -72;
  }

  v22 = &v18[v12];
  v126 = v18;
  if (v12 < 8)
  {
    v25 = *v18;
    v125 = v18;
    v123 = v25;
    if (v12 > 4)
    {
      if (v12 != 5)
      {
        if (v12 != 6)
        {
          v25 |= v18[6] << 48;
        }

        v25 += v18[5] << 40;
      }

      v25 += v18[4] << 32;
    }

    else
    {
      if (v12 == 2)
      {
LABEL_40:
        v123 = v25 + (v18[1] << 8);
LABEL_41:
        if (!*(v22 - 1))
        {
          return -1;
        }

        v24 = __clz(*(v22 - 1)) - 8 * v12 + 41;
        goto LABEL_43;
      }

      if (v12 == 3)
      {
LABEL_39:
        v25 += v18[2] << 16;
        goto LABEL_40;
      }

      if (v12 != 4)
      {
        goto LABEL_41;
      }
    }

    v25 += v18[3] << 24;
    goto LABEL_39;
  }

  v23 = *(v22 - 1);
  v125 = v22 - 8;
  v123 = v23;
  if (!HIBYTE(v23))
  {
    return -1;
  }

  v24 = 8 - (__clz(HIBYTE(v23)) ^ 0x1F);
LABEL_43:
  LODWORD(v124) = v24;
  if (!v13)
  {
    return -72;
  }

  v26 = &v22[v13];
  v122 = v22;
  if (v13 < 8)
  {
    v29 = *v22;
    v121 = v22;
    v119 = v29;
    if (v13 > 4)
    {
      if (v13 != 5)
      {
        if (v13 != 6)
        {
          v29 |= v22[6] << 48;
        }

        v29 += v22[5] << 40;
      }

      v29 += v22[4] << 32;
    }

    else
    {
      if (v13 == 2)
      {
LABEL_60:
        v119 = v29 + (v22[1] << 8);
        goto LABEL_61;
      }

      if (v13 == 3)
      {
LABEL_59:
        v29 += v22[2] << 16;
        goto LABEL_60;
      }

      if (v13 != 4)
      {
LABEL_61:
        if (*(v26 - 1))
        {
          v28 = __clz(*(v26 - 1)) - 8 * v13 + 41;
          goto LABEL_63;
        }

        return -1;
      }
    }

    v29 += v22[3] << 24;
    goto LABEL_59;
  }

  v27 = *(v26 - 1);
  v121 = v26 - 8;
  v119 = v27;
  if (!HIBYTE(v27))
  {
    return -1;
  }

  v28 = 8 - (__clz(HIBYTE(v27)) ^ 0x1F);
LABEL_63:
  LODWORD(v120) = v28;
  result = sub_24394FEAC(&v117, v26, v15);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    return result;
  }

  v30 = &a1[a2];
  v109 = &a1[(a2 + 3) >> 2];
  v110 = &v109[(a2 + 3) >> 2];
  v31 = &v110[(a2 + 3) >> 2];
  v32 = sub_243950B88(&v127);
  v33 = sub_243950B88(&v123) | v32;
  v34 = sub_243950B88(&v119);
  v35 = sub_243950B88(&v117);
  v36 = v127;
  v37 = v123;
  v38 = v119;
  if (v33 | v34 | v35 || (v39 = v30 - 7, v31 >= v30 - 7))
  {
    v96 = &a1[(a2 + 3) >> 2];
    v97 = &v109[(a2 + 3) >> 2];
    v98 = v96;
    v99 = v97;
    v100 = &v110[(a2 + 3) >> 2];
    goto LABEL_123;
  }

  v108 = &a1[a2];
  v40 = v117;
  v41 = -v10 & 0x3F;
  v42 = v128;
  v43 = &v110[(a2 + 3) >> 2];
  v44 = v124;
  v45 = v129;
  v112 = v130;
  v116 = (v130 + 4);
  v46 = v125;
  v111 = v126;
  v115 = (v126 + 8);
  v48 = v121;
  v47 = v122;
  v50 = *(&v118 + 1);
  v49 = v118;
  v113 = *(&v118 + 1) + 8;
  v114 = (v122 + 8);
  v51 = v120;
  v53 = &a1[(a2 + 3) >> 2];
  v52 = &v109[(a2 + 3) >> 2];
  v54 = DWORD2(v117);
  do
  {
    v55 = a1;
    v56 = v53;
    v57 = v52;
    v58 = v43;
    v59 = (v9 + 2 * (v36 << v42 >> v41));
    v60 = *v59;
    LODWORD(v59) = v42 + v59[1];
    *a1 = v60;
    v61 = (v9 + 2 * (v37 << v44 >> v41));
    v62 = *v61;
    LODWORD(v61) = v44 + v61[1];
    *v56 = v62;
    v63 = (v9 + 2 * (v38 << v51 >> v41));
    v64 = *v63;
    LODWORD(v63) = v51 + v63[1];
    *v57 = v64;
    v65 = (v9 + 2 * ((v40 << v54) >> v41));
    v66 = v54 + v65[1];
    *v58 = *v65;
    v67 = (v9 + 2 * (v36 << v59 >> v41));
    LODWORD(v59) = v59 + v67[1];
    a1[1] = *v67;
    v68 = (v9 + 2 * (v37 << v61 >> v41));
    LODWORD(v61) = v61 + v68[1];
    v56[1] = *v68;
    v69 = (v9 + 2 * (v38 << v63 >> v41));
    LODWORD(v63) = v63 + v69[1];
    v57[1] = *v69;
    v70 = (v9 + 2 * ((v40 << v66) >> v41));
    v71 = v66 + v70[1];
    v58[1] = *v70;
    v72 = (v9 + 2 * (v36 << v59 >> v41));
    LODWORD(v59) = v59 + v72[1];
    a1[2] = *v72;
    v73 = (v9 + 2 * (v37 << v61 >> v41));
    v74 = v61 + v73[1];
    v56[2] = *v73;
    v75 = (v9 + 2 * (v38 << v63 >> v41));
    v76 = *v75;
    v77 = v63 + v75[1];
    v57[2] = v76;
    v78 = (v9 + 2 * ((v40 << v71) >> v41));
    v79 = v71 + v78[1];
    v58[2] = *v78;
    v80 = (v9 + 2 * (v36 << v59 >> v41));
    v42 = v59 + v80[1];
    a1[3] = *v80;
    v81 = (v9 + 2 * (v37 << v74 >> v41));
    v82 = v81[1];
    v56[3] = *v81;
    v83 = (v9 + 2 * (v38 << v77 >> v41));
    v84 = v83[1];
    v57[3] = *v83;
    v85 = (v9 + 2 * ((v40 << v79) >> v41));
    v86 = *v85;
    v87 = v85[1];
    v58[3] = v86;
    if (v42 > 0x40)
    {
      v88 = 3;
      goto LABEL_77;
    }

    if (v45 >= v116)
    {
      v88 = 0;
      v45 = (v45 - (v42 >> 3));
      v42 &= 7u;
LABEL_76:
      v36 = *v45;
      goto LABEL_77;
    }

    if (v45 != v112)
    {
      v89 = v42 >> 3;
      v88 = (v45 - v89) < v112;
      if ((v45 - v89) >= v112)
      {
        v89 = v89;
      }

      else
      {
        v89 = (v45 - v112);
      }

      v45 = (v45 - v89);
      v42 -= 8 * v89;
      goto LABEL_76;
    }

    if (v42 == 64)
    {
      v88 = 2;
    }

    else
    {
      v88 = 1;
    }

LABEL_77:
    v44 = v74 + v82;
    if (v44 > 0x40)
    {
      v90 = 3;
      goto LABEL_87;
    }

    if (v46 >= v115)
    {
      v90 = 0;
      v46 -= v44 >> 3;
      v44 &= 7u;
LABEL_86:
      v37 = *v46;
      goto LABEL_87;
    }

    if (v46 != v111)
    {
      v91 = v44 >> 3;
      v90 = &v46[-v91] < v111;
      if (&v46[-v91] >= v111)
      {
        v91 = v91;
      }

      else
      {
        v91 = (v46 - v111);
      }

      v46 -= v91;
      v44 -= 8 * v91;
      goto LABEL_86;
    }

    if (v44 == 64)
    {
      v90 = 2;
    }

    else
    {
      v90 = 1;
    }

LABEL_87:
    v51 = v77 + v84;
    if (v51 > 0x40)
    {
      v92 = 3;
      goto LABEL_97;
    }

    if (v48 >= v114)
    {
      v92 = 0;
      v48 -= v51 >> 3;
      v51 &= 7u;
LABEL_96:
      v38 = *v48;
      goto LABEL_97;
    }

    if (v48 != v47)
    {
      v93 = v51 >> 3;
      v92 = &v48[-v93] < v47;
      if (&v48[-v93] >= v47)
      {
        v93 = v93;
      }

      else
      {
        v93 = (v48 - v47);
      }

      v48 -= v93;
      v51 -= 8 * v93;
      goto LABEL_96;
    }

    if (v51 == 64)
    {
      v92 = 2;
    }

    else
    {
      v92 = 1;
    }

LABEL_97:
    v54 = v79 + v87;
    if (v54 <= 0x40)
    {
      if (v49 >= v113)
      {
        v94 = 0;
        v49 = (v49 - (v54 >> 3));
        v40 = *v49;
        v54 &= 7u;
      }

      else
      {
        if (v49 == v50)
        {
          goto LABEL_98;
        }

        v95 = v54 >> 3;
        v94 = (v49 - v95) < v50;
        if ((v49 - v95) >= v50)
        {
          v95 = v95;
        }

        else
        {
          v95 = (v49 - v50);
        }

        v49 = (v49 - v95);
        v40 = *v49;
        v54 -= 8 * v95;
      }

      *&v118 = v49;
      *&v117 = v40;
      goto LABEL_107;
    }

LABEL_98:
    v94 = 3;
LABEL_107:
    if (v90 | v88 | v92 | v94)
    {
      break;
    }

    v43 = v58 + 4;
    a1 = v55 + 4;
    v53 = v56 + 4;
    v52 = v57 + 4;
  }

  while ((v58 + 4) < v39);
  a1 = v55 + 4;
  LODWORD(v128) = v42;
  v98 = v56 + 4;
  v99 = v57 + 4;
  LODWORD(v124) = v44;
  v100 = v58 + 4;
  LODWORD(v120) = v51;
  DWORD2(v117) = v54;
  v129 = v45;
  v125 = v46;
  v121 = v48;
  v31 = &v110[(a2 + 3) >> 2];
  v30 = v108;
  v96 = v109;
  v97 = &v109[(a2 + 3) >> 2];
LABEL_123:
  v127 = v36;
  v123 = v37;
  result = -20;
  v119 = v38;
  if (a1 <= v96 && v98 <= v97 && v99 <= v31)
  {
    sub_24394FFB4(a1, &v127, v96, v9, v10);
    sub_24394FFB4(v98, &v123, v97, v9, v10);
    sub_24394FFB4(v99, &v119, v31, v9, v10);
    sub_24394FFB4(v100, &v117, v30, v9, v10);
    if (DWORD2(v117) == 64 && v118 == *(&v118 + 1) && v120 == 64 && v121 == v122 && v124 == 64 && v125 == v126 && v128 == 64 && v129 == v130)
    {
      return a2;
    }

    else
    {
      return -20;
    }
  }

  return result;
}

uint64_t sub_243950B88(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 0x40)
  {
    return 3;
  }

  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  if (v4 >= v3 + 8)
  {
    v2 = 0;
    v9 = (v4 - (v1 >> 3));
    *(a1 + 16) = v9;
    v10 = v1 & 7;
LABEL_10:
    *(a1 + 8) = v10;
    *a1 = *v9;
    return v2;
  }

  if (v4 != v3)
  {
    v5 = v1 >> 3;
    v6 = v4 - (v1 >> 3);
    v7 = v4 - v3;
    v8 = v6 >= v3;
    v2 = v6 < v3;
    if (v8)
    {
      v5 = v5;
    }

    else
    {
      v5 = v7;
    }

    v9 = (v4 - v5);
    *(a1 + 16) = v9;
    v10 = v1 - 8 * v5;
    goto LABEL_10;
  }

  if (v1 == 64)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_243950C10()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v11[1024] = *MEMORY[0x277D85DE8];
  bzero(v11, 0x2000uLL);
  v10 = 12;
  result = sub_24394FA10(&v10, v4, v2);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    if (v2 <= result)
    {
      result = -72;
    }

    else
    {
      result = sub_24395029C(v7, v6, &v4[result], v2 - result, &v10);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_243950CF0(unsigned int *a1, char *a2, unint64_t a3)
{
  v110 = *MEMORY[0x277D85DE8];
  memset(v104, 0, 68);
  v103 = 0;
  memset(v102, 0, sizeof(v102));
  v3 = a1 + 1;
  v4 = *a1;
  if (*a1 > 0x10)
  {
    goto LABEL_2;
  }

  v69 = 0;
  result = sub_24394FB3C(v105, v104, &v69, &v69 + 1, a2, a3);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_57;
  }

  v7 = HIDWORD(v69);
  v8 = v4 - BYTE4(v69);
  if (v4 < HIDWORD(v69))
  {
LABEL_2:
    result = -44;
  }

  else
  {
    v9 = 0;
    v10 = HIDWORD(v69);
    do
    {
      v11 = v10;
      v12 = v104[v10--];
      ++v9;
    }

    while (!v12);
    if (v10 == -1)
    {
      v15 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = v104[v13 + 1] + v14;
        v102[v13++ + 2] = v14;
        v14 = v15;
      }

      while (v13 < v11);
    }

    v102[1] = v15;
    v16 = v69;
    if (v69)
    {
      v17 = 0;
      do
      {
        v18 = *(v105 + v17);
        v19 = v102[v18 + 1];
        v102[v18 + 1] = v19 + 1;
        v20 = &v104[20] + 2 * v19;
        *v20 = v17;
        v20[1] = v18;
        ++v17;
      }

      while (v16 != v17);
    }

    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v102[1] = 0;
    if (v10 != -1)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = v104[v21 + 1] << (v8 + v21);
        *(&v70 + v21 + 1) = v22;
        v22 += v23;
        ++v21;
      }

      while (v21 < v11);
    }

    if (v9 <= v4 - v9)
    {
      v24 = v9;
      do
      {
        if (v10 != -1)
        {
          v25 = 0;
          do
          {
            *(&v70 + 17 * v24 + v25 + 1) = *(&v70 + v25 + 1) >> v24;
            ++v25;
          }

          while (v25 < v11);
        }

        ++v24;
      }

      while (v24 <= v4 - v9);
    }

    v106[1] = v71;
    v106[2] = v72;
    v106[3] = v73;
    v107 = v74;
    v106[0] = v70;
    if (v15)
    {
      v26 = 0;
      v27 = v7 + 1;
      v28 = v27 - v4;
      v68 = a1 + 2;
      v29 = vdupq_n_s64(4uLL);
      do
      {
        v30 = &v104[20] + 2 * v26;
        v31 = *v30;
        v32 = v30[1];
        v33 = v27 - v32;
        v34 = *(v106 + v32);
        v35 = v4 - (v27 - v32);
        v36 = 1 << (v4 - (v27 - v32));
        if (v35 >= v9)
        {
          v45 = &v70 + 68 * v33;
          v46 = *v45;
          v108[1] = *(v45 + 1);
          v47 = *(v45 + 3);
          v108[2] = *(v45 + 2);
          v108[3] = v47;
          if ((v33 + v28) <= 1)
          {
            v48 = 1;
          }

          else
          {
            v48 = v33 + v28;
          }

          v49 = v102[v48];
          v109 = *(v45 + 16);
          v108[0] = v46;
          if ((v33 + v28) >= 2)
          {
            v50 = *(v108 + v48);
            if (v50)
            {
              v51 = v31 & 0xFF00FFFF | ((v27 - v32) << 16) | 0x1000000;
              v52 = (v50 + 3) & 0x1FFFFFFFCLL;
              v53 = vdupq_n_s64(v50 - 1);
              v54 = &v68[v34];
              v55 = xmmword_24398C940;
              v56 = xmmword_24398E4E0;
              do
              {
                v57 = vmovn_s64(vcgeq_u64(v53, v55));
                if (vuzp1_s16(v57, 2).u8[0])
                {
                  *(v54 - 1) = v51;
                }

                if (vuzp1_s16(v57, 2).i8[2])
                {
                  *v54 = v51;
                }

                if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v53, *&v56))).i32[1])
                {
                  v54[1] = v51;
                  v54[2] = v51;
                }

                v56 = vaddq_s64(v56, v29);
                v55 = vaddq_s64(v55, v29);
                v54 += 4;
                v52 -= 4;
              }

              while (v52);
            }
          }

          if (v15 != v49)
          {
            v58 = 0;
            v59 = (v15 - v49);
            v60 = &v104[20] + 2 * v49;
            do
            {
              v61 = &v60[2 * v58];
              v62 = *v61;
              v63 = v61[1];
              v64 = *(v108 + v63);
              v65 = (1 << (v35 - (v27 - v63))) + v64;
              v66 = (v62 << 8) & 0xFF00FFFF | ((v27 - v63 + v33) << 16) | v31 | 0x2000000;
              do
              {
                v3[v34 + v64++] = v66;
              }

              while (v64 < v65);
              *(v108 + v63) = v65;
              ++v58;
            }

            while (v58 != v59);
          }

          LODWORD(v37) = v36 + v34;
        }

        else
        {
          v37 = (v36 + v34);
          if (v34 < v37)
          {
            v38 = 0;
            v39 = v31 & 0xFF00FFFF | ((v27 - v32) << 16) | 0x1000000;
            v40 = (v37 - v34 + 3) & 0xFFFFFFFFFFFFFFFCLL;
            v41 = vdupq_n_s64(v37 - v34 - 1);
            v42 = &v68[v34];
            do
            {
              v43 = vdupq_n_s64(v38);
              v44 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v43, xmmword_24398C940)));
              if (vuzp1_s16(v44, 2).u8[0])
              {
                *(v42 - 1) = v39;
              }

              if (vuzp1_s16(v44, 2).i8[2])
              {
                *v42 = v39;
              }

              if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v43, xmmword_24398E4E0)))).i32[1])
              {
                v42[1] = v39;
                v42[2] = v39;
              }

              v38 += 4;
              v42 += 4;
            }

            while (v40 != v38);
          }
        }

        *(v106 + v32) = v37;
        ++v26;
      }

      while (v26 != v15);
    }
  }

LABEL_57:
  v67 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2439511FC(_WORD *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, int *a5)
{
  if (!a4)
  {
    return -72;
  }

  v6 = *a5;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = a3;
  if (a4 >= 8)
  {
    v7 = *&a3[a4 - 8];
    v13 = &a3[a4 - 8];
    v11 = v7;
    if (HIBYTE(v7))
    {
      LODWORD(v12) = 8 - (__clz(HIBYTE(v7)) ^ 0x1F);
      if (a4 > 0xFFFFFFFFFFFFFF88)
      {
        return a4;
      }

      goto LABEL_22;
    }

    return -1;
  }

  v8 = *a3;
  v13 = a3;
  v11 = v8;
  if (a4 > 4)
  {
    if (a4 != 5)
    {
      if (a4 != 6)
      {
        v8 |= a3[6] << 48;
      }

      v8 += a3[5] << 40;
    }

    v8 += a3[4] << 32;
    goto LABEL_17;
  }

  switch(a4)
  {
    case 2:
LABEL_19:
      v11 = v8 + (a3[1] << 8);
      break;
    case 3:
LABEL_18:
      v8 += a3[2] << 16;
      goto LABEL_19;
    case 4:
LABEL_17:
      v8 += a3[3] << 24;
      goto LABEL_18;
  }

  if (!a3[a4 - 1])
  {
    return -1;
  }

  LODWORD(v12) = __clz(a3[a4 - 1]) - 8 * a4 + 41;
LABEL_22:
  sub_243951350(a1, &v11, a1 + a2, (a5 + 1), v6);
  if (v12 == 64 && v13 == v14)
  {
    return a2;
  }

  else
  {
    return -20;
  }
}

_WORD *sub_243951350(_WORD *result, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v5 = -a5 & 0x3F;
  for (i = *(a2 + 8); i <= 0x40; result = (v23 + *(v24 + 3)))
  {
    v7 = *(a2 + 16);
    v8 = *(a2 + 24);
    if (v7 >= v8 + 8)
    {
      v13 = (v7 - (i >> 3));
      *(a2 + 16) = v13;
      i &= 7u;
      v12 = 1;
    }

    else
    {
      if (v7 == v8)
      {
        break;
      }

      v9 = i >> 3;
      v10 = v7 - v8;
      v11 = v7 - v9 >= v8;
      v12 = v11;
      if (v11)
      {
        v9 = v9;
      }

      else
      {
        v9 = v10;
      }

      v13 = (v7 - v9);
      *(a2 + 16) = v13;
      i -= 8 * v9;
    }

    *(a2 + 8) = i;
    v14 = *v13;
    *a2 = v14;
    if (!v12)
    {
      break;
    }

    if (result >= a3 - 7)
    {
      break;
    }

    v15 = a4 + 4 * ((v14 << i) >> v5);
    *result = *v15;
    v16 = *(a2 + 8) + *(v15 + 2);
    *(a2 + 8) = v16;
    v17 = (result + *(v15 + 3));
    v18 = a4 + 4 * (*a2 << v16 >> v5);
    *v17 = *v18;
    v19 = *(a2 + 8) + *(v18 + 2);
    *(a2 + 8) = v19;
    v20 = (v17 + *(v18 + 3));
    v21 = a4 + 4 * (*a2 << v19 >> v5);
    *v20 = *v21;
    v22 = *(a2 + 8) + *(v21 + 2);
    *(a2 + 8) = v22;
    v23 = (v20 + *(v21 + 3));
    v24 = a4 + 4 * (*a2 << v22 >> v5);
    *v23 = *v24;
    i = *(a2 + 8) + *(v24 + 2);
    *(a2 + 8) = i;
  }

  v25 = a3 - 2;
  while (i <= 0x40)
  {
    v26 = *(a2 + 16);
    v27 = *(a2 + 24);
    if (v26 >= v27 + 8)
    {
      v31 = (v26 - (i >> 3));
      *(a2 + 16) = v31;
      i &= 7u;
      v30 = 1;
    }

    else
    {
      if (v26 == v27)
      {
        break;
      }

      v28 = i >> 3;
      v29 = v26 - v27;
      v11 = v26 - v28 >= v27;
      v30 = v11;
      v28 = v11 ? v28 : v29;
      v31 = (v26 - v28);
      *(a2 + 16) = v31;
      i -= 8 * v28;
    }

    *(a2 + 8) = i;
    v32 = *v31;
    *a2 = v32;
    if (!v30 || result > v25)
    {
      break;
    }

    v33 = a4 + 4 * ((v32 << i) >> v5);
    *result = *v33;
    i = *(a2 + 8) + *(v33 + 2);
    *(a2 + 8) = i;
    result = (result + *(v33 + 3));
  }

  while (result <= v25)
  {
    v34 = a4 + 4 * (*a2 << i >> v5);
    *result = *v34;
    i = *(a2 + 8) + *(v34 + 2);
    *(a2 + 8) = i;
    result = (result + *(v34 + 3));
  }

  if (result < a3)
  {
    v35 = (a4 + 4 * (*a2 << i >> v5));
    *result = *v35;
    if (v35[3] == 1)
    {
      v36 = *(a2 + 8) + v35[2];
    }

    else
    {
      v37 = *(a2 + 8);
      if (v37 > 0x3F)
      {
        return result;
      }

      v36 = v37 + v35[2];
      if (v36 >= 0x40)
      {
        v36 = 64;
      }
    }

    *(a2 + 8) = v36;
  }

  return result;
}

unint64_t sub_2439515E4(_WORD *a1, uint64_t a2, unsigned __int16 *a3, unint64_t a4, int *a5)
{
  if (a4 < 0xA)
  {
    return -20;
  }

  v147 = v5;
  v148 = v6;
  v9 = (a5 + 1);
  v10 = *a5;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v133 = 0u;
  v134 = 0u;
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = v11 + v12 + v13 + 6;
  v15 = a4 - v14;
  if (a4 < v14)
  {
    return -20;
  }

  if (!v11)
  {
    return -72;
  }

  v18 = a3 + v11 + 6;
  v146 = a3 + 3;
  if (v11 < 8)
  {
    v21 = *(a3 + 6);
    v145 = a3 + 3;
    v143 = v21;
    if (v11 > 4)
    {
      if (v11 != 5)
      {
        if (v11 != 6)
        {
          v21 |= *(a3 + 12) << 48;
        }

        v21 += *(a3 + 11) << 40;
      }

      v21 += *(a3 + 10) << 32;
    }

    else
    {
      if (v11 == 2)
      {
LABEL_21:
        v143 = v21 + (*(a3 + 7) << 8);
LABEL_22:
        if (!*(v18 - 1))
        {
          return -1;
        }

        v20 = __clz(*(v18 - 1)) - 8 * v11 + 41;
        goto LABEL_24;
      }

      if (v11 == 3)
      {
LABEL_20:
        v21 += *(a3 + 8) << 16;
        goto LABEL_21;
      }

      if (v11 != 4)
      {
        goto LABEL_22;
      }
    }

    v21 += *(a3 + 9) << 24;
    goto LABEL_20;
  }

  v19 = *(v18 - 1);
  v145 = (v18 - 8);
  v143 = v19;
  if (!HIBYTE(v19))
  {
    return -1;
  }

  v20 = 8 - (__clz(HIBYTE(v19)) ^ 0x1F);
LABEL_24:
  LODWORD(v144) = v20;
  if (!v12)
  {
    return -72;
  }

  v22 = &v18[v12];
  v142 = v18;
  if (v12 < 8)
  {
    v25 = *v18;
    v141 = v18;
    v139 = v25;
    if (v12 > 4)
    {
      if (v12 != 5)
      {
        if (v12 != 6)
        {
          v25 |= v18[6] << 48;
        }

        v25 += v18[5] << 40;
      }

      v25 += v18[4] << 32;
    }

    else
    {
      if (v12 == 2)
      {
LABEL_40:
        v139 = v25 + (v18[1] << 8);
LABEL_41:
        if (!*(v22 - 1))
        {
          return -1;
        }

        v24 = __clz(*(v22 - 1)) - 8 * v12 + 41;
        goto LABEL_43;
      }

      if (v12 == 3)
      {
LABEL_39:
        v25 += v18[2] << 16;
        goto LABEL_40;
      }

      if (v12 != 4)
      {
        goto LABEL_41;
      }
    }

    v25 += v18[3] << 24;
    goto LABEL_39;
  }

  v23 = *(v22 - 1);
  v141 = v22 - 8;
  v139 = v23;
  if (!HIBYTE(v23))
  {
    return -1;
  }

  v24 = 8 - (__clz(HIBYTE(v23)) ^ 0x1F);
LABEL_43:
  LODWORD(v140) = v24;
  if (!v13)
  {
    return -72;
  }

  v26 = &v22[v13];
  v138 = v22;
  if (v13 < 8)
  {
    v29 = *v22;
    v137 = v22;
    v135 = v29;
    if (v13 > 4)
    {
      if (v13 != 5)
      {
        if (v13 != 6)
        {
          v29 |= v22[6] << 48;
        }

        v29 += v22[5] << 40;
      }

      v29 += v22[4] << 32;
    }

    else
    {
      if (v13 == 2)
      {
LABEL_60:
        v135 = v29 + (v22[1] << 8);
        goto LABEL_61;
      }

      if (v13 == 3)
      {
LABEL_59:
        v29 += v22[2] << 16;
        goto LABEL_60;
      }

      if (v13 != 4)
      {
LABEL_61:
        if (*(v26 - 1))
        {
          v28 = __clz(*(v26 - 1)) - 8 * v13 + 41;
          goto LABEL_63;
        }

        return -1;
      }
    }

    v29 += v22[3] << 24;
    goto LABEL_59;
  }

  v27 = *(v26 - 1);
  v137 = v26 - 8;
  v135 = v27;
  if (!HIBYTE(v27))
  {
    return -1;
  }

  v28 = 8 - (__clz(HIBYTE(v27)) ^ 0x1F);
LABEL_63:
  LODWORD(v136) = v28;
  result = sub_24394FEAC(&v133, v26, v15);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    return result;
  }

  v30 = a1 + a2;
  v121 = a1 + ((a2 + 3) >> 2);
  v122 = &v121[(a2 + 3) >> 2];
  v31 = &v122[(a2 + 3) >> 2];
  v32 = sub_243950B88(&v143);
  v33 = sub_243950B88(&v139) | v32;
  v34 = sub_243950B88(&v135);
  v35 = sub_243950B88(&v133);
  v36 = v143;
  v37 = v139;
  v38 = v135;
  if (v33 | v34 | v35 || (v131 = v30 - 7, v31 >= v30 - 7))
  {
    v111 = a1 + ((a2 + 3) >> 2);
    v112 = &v121[(a2 + 3) >> 2];
    v49 = v111;
    v50 = v112;
    v48 = &v122[(a2 + 3) >> 2];
    goto LABEL_124;
  }

  v120 = a1 + a2;
  v39 = v133;
  v40 = -v10 & 0x3F;
  v41 = v144;
  v42 = v140;
  v130 = v145;
  v125 = v146;
  v129 = v146 + 4;
  v43 = v141;
  v124 = v142;
  v128 = v142 + 8;
  v44 = v137;
  v123 = v138;
  v127 = v138 + 8;
  v46 = *(&v134 + 1);
  v45 = v134;
  v126 = *(&v134 + 1) + 8;
  v47 = v136;
  v48 = &v122[(a2 + 3) >> 2];
  v49 = (a1 + ((a2 + 3) >> 2));
  v50 = &v121[(a2 + 3) >> 2];
  v51 = DWORD2(v133);
  do
  {
    v132 = v45;
    v52 = v9 + 4 * (v36 << v41 >> v40);
    *a1 = *v52;
    v53 = v41 + *(v52 + 2);
    v54 = (a1 + *(v52 + 3));
    v55 = v9 + 4 * (v37 << v42 >> v40);
    *v49 = *v55;
    v56 = v42 + *(v55 + 2);
    v57 = (v49 + *(v55 + 3));
    v58 = v9 + 4 * (v38 << v47 >> v40);
    *v50 = *v58;
    v59 = v47 + *(v58 + 2);
    v60 = &v50[*(v58 + 3)];
    v61 = v9 + 4 * ((v39 << v51) >> v40);
    *v48 = *v61;
    v62 = v51 + *(v61 + 2);
    v63 = &v48[*(v61 + 3)];
    v64 = v9 + 4 * (v36 << v53 >> v40);
    *v54 = *v64;
    v65 = v53 + *(v64 + 2);
    v66 = *(v64 + 3);
    v67 = v9 + 4 * (v37 << v56 >> v40);
    *v57 = *v67;
    v68 = v56 + *(v67 + 2);
    v69 = (v57 + *(v67 + 3));
    v70 = v9 + 4 * (v38 << v59 >> v40);
    *v60 = *v70;
    v71 = v59 + *(v70 + 2);
    v72 = &v60[*(v70 + 3)];
    v73 = v9 + 4 * ((v39 << v62) >> v40);
    *v63 = *v73;
    v74 = v62 + *(v73 + 2);
    v75 = &v63[*(v73 + 3)];
    v76 = (v54 + v66);
    v77 = v9 + 4 * (v36 << v65 >> v40);
    *v76 = *v77;
    v78 = v65 + *(v77 + 2);
    v79 = (v76 + *(v77 + 3));
    v80 = v9 + 4 * (v37 << v68 >> v40);
    *v69 = *v80;
    v81 = v68 + *(v80 + 2);
    v82 = (v69 + *(v80 + 3));
    v83 = v9 + 4 * (v38 << v71 >> v40);
    *v72 = *v83;
    v84 = v71 + *(v83 + 2);
    v85 = &v72[*(v83 + 3)];
    v86 = v9 + 4 * ((v39 << v74) >> v40);
    *v75 = *v86;
    v87 = v74 + *(v86 + 2);
    v88 = &v75[*(v86 + 3)];
    v89 = v9 + 4 * (v36 << v78 >> v40);
    *v79 = *v89;
    v41 = v78 + *(v89 + 2);
    v90 = *(v89 + 3);
    v91 = v9 + 4 * (v37 << v81 >> v40);
    *v82 = *v91;
    v92 = *(v91 + 2);
    v93 = *(v91 + 3);
    v94 = v9 + 4 * (v38 << v84 >> v40);
    *v85 = *v94;
    v95 = *(v94 + 2);
    v96 = *(v94 + 3);
    v97 = v9 + 4 * ((v39 << v87) >> v40);
    *v88 = *v97;
    if (v41 > 0x40)
    {
      v98 = 3;
      goto LABEL_77;
    }

    if (v130 >= v129)
    {
      v98 = 0;
      v100 = (v130 - (v41 >> 3));
      v41 &= 7u;
LABEL_76:
      v130 = v100;
      v36 = *v100;
      goto LABEL_77;
    }

    if (v130 != v125)
    {
      v99 = v41 >> 3;
      v98 = (v130 - v99) < v125;
      if ((v130 - v99) >= v125)
      {
        v99 = v99;
      }

      else
      {
        v99 = (v130 - v125);
      }

      v100 = (v130 - v99);
      v41 -= 8 * v99;
      goto LABEL_76;
    }

    if (v41 == 64)
    {
      v98 = 2;
    }

    else
    {
      v98 = 1;
    }

LABEL_77:
    v42 = v81 + v92;
    v101 = *(v97 + 2);
    v102 = *(v97 + 3);
    if (v42 > 0x40)
    {
      v103 = 3;
      v104 = v43;
      goto LABEL_87;
    }

    v104 = v43;
    if (v43 >= v128)
    {
      v103 = 0;
      v104 = &v43[-(v42 >> 3)];
      v42 &= 7u;
LABEL_86:
      v37 = *v104;
      goto LABEL_87;
    }

    if (v43 != v124)
    {
      v105 = v42 >> 3;
      v103 = &v43[-v105] < v124;
      if (&v43[-v105] >= v124)
      {
        v105 = v105;
      }

      else
      {
        v105 = (v43 - v124);
      }

      v104 = &v43[-v105];
      v42 -= 8 * v105;
      goto LABEL_86;
    }

    if (v42 == 64)
    {
      v103 = 2;
    }

    else
    {
      v103 = 1;
    }

LABEL_87:
    v47 = v84 + v95;
    v43 = v104;
    if (v47 > 0x40)
    {
      v106 = 3;
      v107 = v44;
      goto LABEL_97;
    }

    v107 = v44;
    if (v44 >= v127)
    {
      v106 = 0;
      v107 = &v44[-(v47 >> 3)];
      v47 &= 7u;
LABEL_96:
      v38 = *v107;
      goto LABEL_97;
    }

    if (v44 != v123)
    {
      v108 = v47 >> 3;
      v106 = &v44[-v108] < v123;
      if (&v44[-v108] >= v123)
      {
        v108 = v108;
      }

      else
      {
        v108 = (v44 - v123);
      }

      v107 = &v44[-v108];
      v47 -= 8 * v108;
      goto LABEL_96;
    }

    if (v47 == 64)
    {
      v106 = 2;
    }

    else
    {
      v106 = 1;
    }

LABEL_97:
    v51 = v87 + v101;
    if (v51 <= 0x40)
    {
      v45 = v132;
      v44 = v107;
      if (v132 >= v126)
      {
        v109 = 0;
        v45 = (v132 - (v51 >> 3));
        v39 = *v45;
        v51 &= 7u;
      }

      else
      {
        if (v132 == v46)
        {
          v109 = 3;
          goto LABEL_107;
        }

        v110 = v51 >> 3;
        v109 = (v132 - v110) < v46;
        if ((v132 - v110) >= v46)
        {
          v110 = v110;
        }

        else
        {
          v110 = (v132 - v46);
        }

        v45 = (v132 - v110);
        v39 = *(v132 - v110);
        v51 -= 8 * v110;
      }

      *&v134 = v45;
      *&v133 = v39;
    }

    else
    {
      v44 = v107;
      v109 = 3;
      v45 = v132;
    }

LABEL_107:
    a1 = (v79 + v90);
    v49 = (v82 + v93);
    v50 = &v85[v96];
    v48 = &v88[v102];
  }

  while (!(v103 | v98 | v106 | v109) && v48 < v131);
  LODWORD(v144) = v41;
  LODWORD(v140) = v42;
  LODWORD(v136) = v47;
  DWORD2(v133) = v51;
  v145 = v130;
  v141 = v43;
  v137 = v44;
  v31 = &v122[(a2 + 3) >> 2];
  v30 = v120;
  v111 = v121;
  v112 = &v121[(a2 + 3) >> 2];
LABEL_124:
  v143 = v36;
  v139 = v37;
  result = -20;
  v135 = v38;
  if (a1 <= v111 && v49 <= v112 && v50 <= v31)
  {
    sub_243951350(a1, &v143, v111, v9, v10);
    sub_243951350(v49, &v139, v112, v9, v10);
    sub_243951350(v50, &v135, v31, v9, v10);
    sub_243951350(v48, &v133, v30, v9, v10);
    if (DWORD2(v133) == 64 && v134 == *(&v134 + 1) && v136 == 64 && v137 == v138 && v140 == 64 && v141 == v142 && v144 == 64 && v145 == v146)
    {
      return a2;
    }

    else
    {
      return -20;
    }
  }

  return result;
}

unint64_t sub_243951F70()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v11[2048] = *MEMORY[0x277D85DE8];
  bzero(v11, 0x4000uLL);
  v10 = 12;
  result = sub_243950CF0(&v10, v4, v2);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    if (v2 <= result)
    {
      result = -72;
    }

    else
    {
      result = sub_2439515E4(v7, v6, &v4[result], v2 - result, &v10);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

size_t sub_243952050(void *a1, size_t __len, unsigned __int8 *a3, size_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!__len)
  {
    v4 = -70;
    goto LABEL_7;
  }

  v4 = __len;
  if (a4 >= __len)
  {
    v4 = -20;
    goto LABEL_7;
  }

  if (a4 == 1)
  {
    memset(a1, *a3, __len);
LABEL_7:
    v5 = *MEMORY[0x277D85DE8];
    return v4;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v9 = &unk_243990DF8 + 24 * (16 * a4 / __len);
    *(&v12 + v7) = *&v9[8 * v8] + *&v9[8 * v8 + 4] * (__len >> 8);
    ++v8;
    v7 += 4;
  }

  while (v7 != 12);
  v10 = off_2856A2930[v13 + (v13 >> 4) < v12];
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

double sub_24395217C()
{
  v0 = malloc(0x26898uLL);
  if (v0)
  {
    v0[3334] = 5;
    result = 0.0;
    *(v0 + 1665) = 0u;
    *(v0 + 1666) = 0u;
    *(v0 + 2563) = 12;
    *(v0 + 26732) = 0;
  }

  return result;
}

uint64_t sub_2439521E0(unsigned __int16 *a1, char *a2, uint64_t a3, unsigned __int8 *a4, unint64_t a5)
{
  v183 = *MEMORY[0x277D85DE8];
  if (a5 >> 17)
  {
    goto LABEL_2;
  }

  if (a5 < 3)
  {
    goto LABEL_4;
  }

  v12 = *a4;
  v13 = v12 >> 6;
  if (v12 >> 6 > 1)
  {
    v22 = (v12 >> 4) & 3;
    if (v13 != 2)
    {
      if (v22 == 2)
      {
        v29 = a4[1] | ((v12 & 0xF) << 8);
        v30 = 2;
      }

      else if (v22 == 3)
      {
        result = -20;
        if (a5 == 3)
        {
          goto LABEL_5;
        }

        v29 = ((v12 & 0xF) << 16) | (a4[1] << 8) | a4[2];
        if (v29 > 0x20000)
        {
          goto LABEL_5;
        }

        v30 = 3;
      }

      else
      {
        v29 = v12 & 0x1F;
        v30 = 1;
      }

      v27 = v29;
      v28 = (a1 + 13380);
      memset(a1 + 13380, a4[v30], v29 + 8);
      *(a1 + 3343) = a1 + 13380;
      *(a1 + 3344) = v27;
      v20 = v30 + 1;
      goto LABEL_38;
    }

    if (v22 == 2)
    {
      v23 = a4[1] | ((v12 & 0xF) << 8);
      v24 = 2;
    }

    else if (v22 == 3)
    {
      v23 = ((v12 & 0xF) << 16) | (a4[1] << 8) | a4[2];
      v24 = 3;
    }

    else
    {
      v23 = v12 & 0x1F;
      v24 = 1;
    }

    v27 = v23;
    v20 = v24 + v23;
    if (v20 + 8 <= a5)
    {
      v28 = &a4[v24];
      *(a1 + 3343) = &a4[v24];
      *(a1 + 3344) = v23;
      goto LABEL_38;
    }

    if (v20 > a5)
    {
      goto LABEL_4;
    }

    v28 = (a1 + 13380);
    memcpy(a1 + 13380, &a4[v24], v23);
LABEL_34:
    *(a1 + 3343) = v28;
    *(a1 + 3344) = v27;
    *&v28[v27] = 0;
    goto LABEL_38;
  }

  if (v13)
  {
    if ((v12 & 0x30) != 0x10)
    {
      goto LABEL_4;
    }

    if (!*(a1 + 6684))
    {
      result = -30;
      goto LABEL_5;
    }

    v25 = a4[1];
    v26 = a4[2] | ((v25 & 3) << 8);
    v20 = v26 + 3;
    if (v26 + 3 > a5)
    {
      goto LABEL_4;
    }

    v27 = ((v12 & 0xF) << 6) | (v25 >> 2);
    v28 = (a1 + 13380);
    if (sub_2439511FC(a1 + 13380, v27, a4 + 3, v26, a1 + 2563) > 0xFFFFFFFFFFFFFF88)
    {
      goto LABEL_4;
    }

    goto LABEL_34;
  }

  if (a5 < 5)
  {
    goto LABEL_4;
  }

  v14 = (v12 >> 4) & 3;
  v15 = a4[1];
  if (v14 == 2)
  {
    v45 = a4[2];
    v19 = a4[3] | ((v45 & 0x3F) << 8);
    v20 = v19 + 4;
    if (v19 + 4 > a5)
    {
      goto LABEL_4;
    }

    v18 = ((v12 & 0xF) << 10) | (4 * v15) | (v45 >> 6);
    v21 = 4;
  }

  else if (v14 == 3)
  {
    v16 = ((v12 & 0xF) << 14) | (v15 << 6);
    v17 = a4[2];
    v18 = v16 | (v17 >> 2);
    result = -20;
    if (v18 > 0x20000)
    {
      goto LABEL_5;
    }

    v19 = (a4[3] << 8) | ((v17 & 3) << 16) | a4[4];
    v20 = v19 + 5;
    if (v19 + 5 > a5)
    {
      goto LABEL_5;
    }

    v21 = 5;
  }

  else
  {
    v19 = a4[2] | ((v15 & 3) << 8);
    v20 = v19 + 3;
    if (v19 + 3 > a5)
    {
      goto LABEL_4;
    }

    v18 = (v15 >> 2) & 0xFFFFFC3F | ((v12 & 0xF) << 6);
    if ((v12 & 0x10) != 0)
    {
      v46 = sub_2439501BC();
      goto LABEL_54;
    }

    v21 = 3;
  }

  v46 = sub_243952050(a1 + 13380, v18, &a4[v21], v19);
LABEL_54:
  if (v46 > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_4;
  }

  *(a1 + 3343) = a1 + 13380;
  *(a1 + 3344) = v18;
  *(a1 + v18 + 26760) = 0;
  v28 = *(a1 + 3343);
  v27 = *(a1 + 3344);
LABEL_38:
  v31 = a5 - v20;
  if (a5 == v20)
  {
    goto LABEL_2;
  }

  v32 = &a4[v20];
  v33 = &a2[a3];
  v34 = &v28[v27];
  v35 = v32 + 1;
  v36 = *v32;
  if (!*v32)
  {
    goto LABEL_105;
  }

  v37 = *(a1 + 3331);
  v38 = *(a1 + 3332);
  v39 = *(a1 + 3333);
  v40 = *(a1 + 6684);
  if ((v36 & 0x80) != 0)
  {
    if (v31 < 2)
    {
      goto LABEL_2;
    }

    v35 = v32 + 2;
    v36 = (v32[1] | (v36 << 8)) - 0x8000;
  }

  v41 = &a4[a5];
  if (v35 >= &a4[a5])
  {
    goto LABEL_2;
  }

  v42 = *v35;
  if ((v42 & 2) != 0)
  {
    v43 = v35 + 3;
    if ((v35 + 3) > v41)
    {
      goto LABEL_2;
    }

    v44 = __rev16(*(v35 + 1));
  }

  else
  {
    v43 = v35 + 2;
    if ((v35 + 2) > v41)
    {
      goto LABEL_2;
    }

    v44 = v35[1] | ((v42 & 1) << 8);
  }

  v47 = &v43[v44];
  if (&v43[v44] > v41 - 3)
  {
    goto LABEL_2;
  }

  v181 = 0;
  v48 = v42 >> 6;
  v180 = 0;
  if (v42 >> 6 > 1)
  {
    if (v48 == 2)
    {
      v51 = v47;
      if (!v40)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v163 = v39;
      v167 = v38;
      v171 = v37;
      v175 = v47;
      v156 = v34;
      v159 = v33;
      v179 = 63;
      v57 = sub_24394EDA4(v182, &v179, &v181 + 1, v47, v41 - v47);
      if (v57 > 0xFFFFFFFFFFFFFF88)
      {
        goto LABEL_112;
      }

      if (HIDWORD(v181) >= 0xB)
      {
        goto LABEL_4;
      }

      v152 = (v175 + v57);
      sub_24394EBE0(a1, v182, v179, HIDWORD(v181));
      v51 = v152;
      v34 = v156;
      v37 = v171;
      v47 = v175;
      v33 = v159;
      v39 = v163;
      v38 = v167;
    }
  }

  else if (v48)
  {
    HIDWORD(v181) = 0;
    v51 = (v47 + 1);
    v52 = *v47;
    *a1 = 0;
    a1[2] = 0;
    a1[3] = v52;
  }

  else
  {
    v49 = 0;
    HIDWORD(v181) = 6;
    *a1 = 65542;
    v50 = a1 + 7;
    do
    {
      *(v50 - 3) = 0;
      *(v50 - 1) = v49;
      *v50 = 6;
      v50 += 4;
      ++v49;
    }

    while (v49 != 64);
    v51 = v47;
  }

  v53 = a1 + 2053;
  v54 = (v42 >> 4) & 3;
  if (v54 > 1)
  {
    if (v54 == 2)
    {
      if (!v40)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v153 = v51;
      v172 = v37;
      v176 = v47;
      v164 = v39;
      v168 = v38;
      v157 = v34;
      v160 = v33;
      v179 = 31;
      v59 = sub_24394EDA4(v182, &v179, &v181, v51, v41 - v51);
      if (v59 > 0xFFFFFFFFFFFFFF88)
      {
        goto LABEL_112;
      }

      if (v181 >= 0xA)
      {
        goto LABEL_4;
      }

      v154 = (v153 + v59);
      sub_24394EBE0(a1 + 1025, v182, v179, v181);
      v51 = v154;
      v34 = v157;
      v33 = v160;
      v39 = v164;
      v38 = v168;
      v37 = v172;
      v47 = v176;
      v53 = a1 + 2053;
    }
  }

  else if (v54)
  {
    LODWORD(v181) = 0;
    if (v51 > v41 - 2)
    {
      goto LABEL_2;
    }

    v58 = *v51;
    v51 = (v51 + 1);
    *(a1 + 1025) = 0;
    a1[2052] = 0;
    *v53 = v58 & 0x1F;
  }

  else
  {
    v55 = 0;
    LODWORD(v181) = 5;
    *(a1 + 1025) = 65541;
    v56 = a1 + 4107;
    do
    {
      *(v56 - 3) = 0;
      *(v56 - 1) = v55;
      *v56 = 5;
      v56 += 4;
      ++v55;
    }

    while (v55 != 32);
  }

  v60 = (v42 >> 2) & 3;
  if (v60 <= 1)
  {
    if (!v60)
    {
      v61 = 0;
      *(a1 + 1538) = 65543;
      v62 = v53 + 2053;
      do
      {
        *(v62 - 3) = 0;
        *(v62 - 1) = v61;
        *v62 = 7;
        v62 += 4;
        ++v61;
      }

      while (v61 != 128);
      goto LABEL_98;
    }

    v180 = 0;
    if (v51 <= v41 - 2)
    {
      v63 = *v51;
      v51 = (v51 + 1);
      *(a1 + 1538) = 0;
      a1[3078] = 0;
      *(v53 + 2052) = v63;
      *(v53 + 2053) = 0;
      goto LABEL_98;
    }

LABEL_2:
    result = -72;
    goto LABEL_5;
  }

  if (v60 == 2)
  {
    if (!v40)
    {
      goto LABEL_4;
    }

    goto LABEL_98;
  }

  v173 = v37;
  v177 = v47;
  v165 = v39;
  v169 = v38;
  v161 = v33;
  v64 = v34;
  v179 = 127;
  v65 = v51;
  v66 = sub_24394EDA4(v182, &v179, &v180, v51, v41 - v51);
  if (v66 > 0xFFFFFFFFFFFFFF88)
  {
LABEL_112:
    result = -1;
    goto LABEL_5;
  }

  if (v180 >= 0xB)
  {
    goto LABEL_4;
  }

  v67 = (v65 + v66);
  sub_24394EBE0(a1 + 1538, v182, v179, v180);
  v51 = v67;
  v34 = v64;
  v33 = v161;
  v39 = v165;
  v38 = v169;
  v37 = v173;
  v47 = v177;
LABEL_98:
  result = v51 - v32;
  if ((v51 - v32) > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_5;
  }

  if (!v36)
  {
LABEL_105:
    v75 = a2;
    goto LABEL_106;
  }

  v68 = v31 - result;
  if (v31 == result)
  {
    goto LABEL_4;
  }

  v151 = v51;
  v155 = v51;
  v158 = v34;
  v170 = v38;
  v174 = v37;
  v166 = v39;
  v178 = v47;
  if (v68 >= 8)
  {
    v71 = *(v41 - 8);
    v70 = v41 - 8;
    v69 = v71;
    v72 = HIBYTE(v71);
    if (!HIBYTE(v71) || v68 > 0xFFFFFFFFFFFFFF88)
    {
      goto LABEL_4;
    }

    v73 = v33;
    v74 = 8 - (__clz(v72) ^ 0x1F);
    goto LABEL_128;
  }

  v73 = v33;
  v69 = *v51;
  if (v68 > 4)
  {
    if (v68 != 5)
    {
      if (v68 != 6)
      {
        v69 |= *(v51 + 6) << 48;
      }

      v69 += *(v51 + 5) << 40;
    }

    v69 += *(v51 + 4) << 32;
    goto LABEL_123;
  }

  if (v68 != 2)
  {
    if (v68 == 3)
    {
LABEL_124:
      v69 += *(v51 + 2) << 16;
      goto LABEL_125;
    }

    if (v68 != 4)
    {
      goto LABEL_126;
    }

LABEL_123:
    v69 += *(v51 + 3) << 24;
    goto LABEL_124;
  }

LABEL_125:
  v69 += *(v51 + 1) << 8;
LABEL_126:
  if (!*(v41 - 1))
  {
    goto LABEL_4;
  }

  v74 = __clz(*(v41 - 1)) - 8 * v68 + 41;
  v70 = v51;
LABEL_128:
  v78 = *a1;
  v79 = v74 + v78;
  if (v74 + v78 > 0x40)
  {
    v80 = v69;
    v81 = v70;
    goto LABEL_137;
  }

  if (v70 >= (v151 + 2))
  {
    LODWORD(v82) = v79 >> 3;
    v79 &= 7u;
  }

  else
  {
    v80 = v69;
    v81 = v151;
    if (v70 == v155)
    {
      goto LABEL_137;
    }

    v82 = v79 >> 3;
    if (v70 - v82 < v155)
    {
      LODWORD(v82) = v70 - v155;
    }

    v79 -= 8 * v82;
  }

  v81 = (v70 - v82);
  v80 = *v81;
LABEL_137:
  v83 = a1[2050];
  v84 = v79 + v83;
  if (v79 + v83 > 0x40)
  {
    v85 = v80;
    v86 = v81;
    goto LABEL_146;
  }

  if (v81 >= v151 + 2)
  {
    LODWORD(v87) = v84 >> 3;
    v84 &= 7u;
  }

  else
  {
    v85 = v80;
    v86 = v151;
    if (v81 == v155)
    {
      goto LABEL_146;
    }

    v87 = v84 >> 3;
    if ((v81 - v87) < v155)
    {
      LODWORD(v87) = v81 - v155;
    }

    v84 -= 8 * v87;
  }

  v86 = (v81 - v87);
  v85 = *v86;
LABEL_146:
  v88 = a1[3076];
  if (v84 + v88 > 0x40)
  {
    goto LABEL_4;
  }

  v89 = v84 + v88;
  v144 = v151 + 2;
  if (v86 >= v151 + 2)
  {
    v90 = v89 >> 3;
    v89 &= 7u;
  }

  else
  {
    if (v86 == v155)
    {
      v149 = v85;
      goto LABEL_157;
    }

    v90 = v89 >> 3;
    if ((v86 - v90) >= v155)
    {
      v90 = v90;
    }

    else
    {
      v90 = (v86 - v155);
    }

    if (v89 - 8 * v90 > 0x40)
    {
      goto LABEL_4;
    }

    v89 -= 8 * v90;
  }

  v151 = (v86 - v90);
  v149 = *(v86 - v90);
LABEL_157:
  v146 = v69 << v74 >> 1 >> (63 - v78);
  v148 = v80 << v79 >> 1 >> (63 - v83);
  v142 = a1 + 2052;
  v143 = a1 + 2;
  v147 = v85 << v84 >> 1 >> (63 - v88);
  v141 = a1 + 3078;
  v145 = v73 - 8;
  v162 = v73;
  v140 = (v73 - 12);
  v91 = 1;
  v75 = a2;
  v150 = 1;
  do
  {
    v92 = v28;
    v93 = v75;
    if (v151 >= v144)
    {
      LODWORD(v94) = v89 >> 3;
      v89 &= 7u;
LABEL_164:
      v151 = (v151 - v94);
      v149 = *v151;
      goto LABEL_165;
    }

    if (v151 != v155)
    {
      v94 = v89 >> 3;
      if ((v151 - v94) < v155)
      {
        LODWORD(v94) = v151 - v155;
      }

      v89 -= 8 * v94;
      goto LABEL_164;
    }

    v151 = v155;
LABEL_165:
    v95 = v91;
    if (!v36)
    {
      v34 = v158;
      v33 = v162;
      goto LABEL_106;
    }

    v96 = &v143[2 * v146];
    v97 = *(v96 + 2);
    v98 = v150;
    if (*(v96 + 2))
    {
      v98 = v91;
    }

    if (v97 == 63)
    {
      v100 = v43 + 1;
      v99 = *v43;
      if (v99 == 255)
      {
        v102 = v43 + 3;
        if ((v43 + 3) <= v178)
        {
          v103 = *v100;
          if (v102 < v178 && (v103 & 1) != 0)
          {
            v103 |= v43[3] << 16;
            v102 = v43 + 4;
          }

          v97 = v103 >> 1;
          v100 = v102;
        }

        else
        {
          v97 = 63;
        }
      }

      else
      {
        v97 = v99 + 63;
      }

      v101 = v178;
      if (v100 >= v178)
      {
        v43 = (v178 - 1);
      }

      else
      {
        v43 = v100;
      }

      v95 = v91;
    }

    else
    {
      v101 = v178;
    }

    v104 = &v142[2 * v148];
    v105 = *(v104 + 2);
    if (*(v104 + 2))
    {
      v106 = v105 - 1;
    }

    else
    {
      v106 = 0;
    }

    v107 = v150;
    if (v105 | (v97 == 0))
    {
      v107 = v95;
    }

    v150 = v107;
    v108 = &v141[2 * v147];
    v109 = *(v108 + 2);
    if (v109 == 127)
    {
      if (v43 >= v101)
      {
        v111 = 0;
        v110 = v43;
      }

      else
      {
        v110 = v43 + 1;
        v111 = *v43;
        if (v111 == 255)
        {
          v112 = v43 + 3;
          if ((v43 + 3) <= v101)
          {
            v139 = *v110;
            if (v112 < v101 && (v139 & 1) != 0)
            {
              v139 |= v43[3] << 16;
              v112 = v43 + 4;
            }

            v109 = v139 >> 1;
            v110 = v112;
          }

          else
          {
            v109 = 127;
          }

          goto LABEL_195;
        }
      }

      v109 = v111 + 127;
LABEL_195:
      if (v110 >= v101)
      {
        v43 = (v178 - 1);
      }

      else
      {
        v43 = v110;
      }
    }

    if (*(v104 + 2))
    {
      v113 = (v149 << v89 >> 1 >> (63 - v106)) + dword_243990FB0[v105];
    }

    else
    {
      v113 = v98;
    }

    v114 = v109 + 4;
    v115 = v109 + 4 + v97;
    if (v115 > v162 - v75)
    {
      goto LABEL_108;
    }

    if (v97 > v158 - v28)
    {
      goto LABEL_4;
    }

    v116 = &v75[v97];
    result = -70;
    if (&v75[v97] > v145)
    {
      goto LABEL_5;
    }

    v75 += v115;
    if (&v93[v115] > v162)
    {
      goto LABEL_5;
    }

    v28 += v97;
    if (&v92[v97] > v158)
    {
      goto LABEL_4;
    }

    --v36;
    v117 = *v104;
    v118 = *(v104 + 3);
    v119 = v106 + v89 + v118;
    v148 = (v149 << (v106 + v89) >> 1 >> (63 - v118)) + v117;
    v120 = *v96;
    v121 = *(v96 + 3);
    v122 = v149 << v119 >> 1 >> (63 - v121);
    v123 = v119 + v121;
    v146 = v122 + v120;
    LODWORD(v120) = *(v108 + 3);
    v89 = v123 + v120;
    v147 = (v149 << v123 >> 1 >> (63 - v120)) + *v108;
    v124 = &v116[-v113];
    do
    {
      v125 = *v92;
      v92 += 8;
      *v93 = v125;
      v93 += 8;
    }

    while (v93 < v116);
    if (v113 <= v116 - v174)
    {
      goto LABEL_214;
    }

    if (v113 > &v116[-v170])
    {
      goto LABEL_4;
    }

    v91 = v113;
    v126 = v124 - v174;
    v127 = (v166 + v124 - v174);
    if (v127 + v114 <= v166)
    {
      memmove(v116, v127, v114);
      continue;
    }

    memmove(v116, v127, v174 - v124);
    v116 -= v126;
    if (v116 <= v145 && v114 + v126 > 3)
    {
      v114 += v126;
      v124 = v174;
      v113 = v91;
LABEL_214:
      v91 = v113;
      if (v113 > 7)
      {
        *v116 = *v124;
      }

      else
      {
        v128 = dword_243991050[v113];
        *v116 = *v124;
        v116[1] = v124[1];
        v116[2] = v124[2];
        v116[3] = v124[3];
        v129 = &v124[dword_243991030[v113]];
        *(v116 + 1) = *v129;
        v124 = &v129[-v128];
      }

      v130 = v116 + 8;
      v131 = v124 + 8;
      if (v75 <= v140)
      {
        do
        {
          v136 = *v131;
          v131 += 8;
          *v130 = v136;
          v130 += 8;
        }

        while (v130 < &v116[v114]);
      }

      else
      {
        if (v130 < v145)
        {
          v132 = v116 + 8;
          v133 = v131;
          do
          {
            v134 = *v133++;
            *v132 = v134;
            v132 += 8;
          }

          while (v132 < v145);
          v131 += v145 - v130;
          v130 = v145;
        }

        while (v130 < v75)
        {
          v135 = *v131++;
          *v130++ = v135;
        }
      }

      continue;
    }

    if (v116 < v75)
    {
      v137 = v174;
      do
      {
        v138 = *v137++;
        *v116++ = v138;
      }

      while (v116 < v75);
    }
  }

  while (v89 < 0x41);
  v34 = v158;
  v33 = v162;
  if (v36)
  {
    goto LABEL_4;
  }

LABEL_106:
  v76 = v34 - v28;
  if (v34 < v28)
  {
LABEL_4:
    result = -20;
    goto LABEL_5;
  }

  v77 = &v75[v76];
  if (&v75[v76] <= v33)
  {
    if (v34 != v28)
    {
      memcpy(v75, v28, v76);
      v75 = v77;
    }

    result = v75 - a2;
  }

  else
  {
LABEL_108:
    result = -70;
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_243953068(uint64_t a1, char *__dst, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5 < 8)
  {
    return -72;
  }

  if (*a4 != -47205083)
  {
    return -10;
  }

  *(a1 + 26680) = 5;
  *(a1 + 26688) = 0u;
  *(a1 + 26704) = 0u;
  *(a1 + 26720) = 0;
  *(a1 + 26696) = (*(a4 + 4) & 0xF) + 11;
  if (*(a4 + 4) > 0xFu)
  {
    return -14;
  }

  v8 = a4 + a5;
  v9 = &__dst[a3];
  v10 = (a4 + 5);
  v11 = a5 - 5;
  v12 = __dst;
  while (1)
  {
    v13 = *v10;
    v14 = v13 >> 6;
    if (v13 >> 6 == 2)
    {
      v15 = 1;
    }

    else
    {
      if (v14 == 3)
      {
        if (v11 != 3)
        {
          return -72;
        }

        return v12 - __dst;
      }

      v15 = v10[2] | ((v13 & 7) << 16) | (v10[1] << 8);
    }

    v16 = v11 - 3 >= v15;
    v11 = v11 - 3 - v15;
    if (!v16)
    {
      return -72;
    }

    v17 = (v10 + 3);
    if (v14 == 1)
    {
      break;
    }

    if (v14)
    {
      return -1;
    }

    result = sub_2439521E0(a1, v12, v9 - v12, v10 + 3, v15);
    if (!v15)
    {
      return v12 - __dst;
    }

LABEL_19:
    if (result <= 0xFFFFFFFFFFFFFF88)
    {
      v12 += result;
      v10 = &v17[v15];
      result = -72;
      if ((v8 - &v17[v15]) >= 3)
      {
        continue;
      }
    }

    return result;
  }

  if (v12 && v15 <= v9 - v12)
  {
    memcpy(v12, v17, v15);
    result = v15;
    if (!v15)
    {
      return v12 - __dst;
    }

    goto LABEL_19;
  }

  if (v15)
  {
    return -70;
  }

  return v12 - __dst;
}

unint64_t sub_243953208(void *a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_2439532A0(a1, a6, a7);
  v12 = a1[3330];
  if (v12 != a2)
  {
    a1[3333] = v12;
    a1[3332] = &a2[a1[3331] - v12];
    a1[3331] = a2;
    a1[3330] = a2;
  }

  return sub_243953068(a1, a2, a3, a4, a5);
}

uint64_t sub_2439532A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v33 = *MEMORY[0x277D85DE8];
  *(a1 + 26672) = 5;
  *(a1 + 10252) = 12;
  *(a1 + 26732) = 0;
  *(a1 + 26640) = 0u;
  *(a1 + 26656) = 0u;
  if (a2 && a3)
  {
    if (*a2 == -332356555)
    {
      v7 = a2 + 4;
      v29 = 31;
      v27 = 127;
      v25 = 63;
      v8 = sub_243950CF0((a1 + 10252), (a2 + 4), a3 - 4);
      if (v8 > 0xFFFFFFFFFFFFFF88)
      {
        goto LABEL_18;
      }

      v9 = v8;
      v28 = 0;
      v10 = v7 + v8;
      v11 = a3 - 4 - v8;
      v12 = sub_24394EDA4(v32, &v29, &v28, (v7 + v8), v11);
      if (v12 > 0xFFFFFFFFFFFFFF88)
      {
        goto LABEL_18;
      }

      if (v28 > 9)
      {
        goto LABEL_18;
      }

      v13 = v12;
      if (sub_24394EBE0((a1 + 4100), v32, v29, v28) > 0xFFFFFFFFFFFFFF88)
      {
        goto LABEL_18;
      }

      v26 = 0;
      v14 = v10 + v13;
      v15 = v11 - v13;
      v16 = sub_24394EDA4(v31, &v27, &v26, (v10 + v13), v15);
      if (v16 > 0xFFFFFFFFFFFFFF88 || v26 > 0xA || (v17 = v16, sub_24394EBE0((a1 + 6152), v31, v27, v26) > 0xFFFFFFFFFFFFFF88) || (v24 = 0, v18 = sub_24394EDA4(v30, &v25, &v24, (v14 + v17), v15 - v17), v24 > 0xA) || (v19 = v18, v18 > 0xFFFFFFFFFFFFFF88) || sub_24394EBE0(a1, v30, v25, v24) >= 0xFFFFFFFFFFFFFF89 || (*(a1 + 26736) = 1, v20 = v13 + v9 + v17 + v19, v20 > 0xFFFFFFFFFFFFFF88))
      {
LABEL_18:
        result = -30;
        goto LABEL_19;
      }

      result = 0;
      v21 = v7 + v20;
      v22 = *(a1 + 26640);
      *(a1 + 26664) = v22;
      *(a1 + 26656) = v21 + *(a1 + 26648) - v22;
      *(a1 + 26648) = v21;
    }

    else
    {
      result = 0;
      *(a1 + 26656) = a2;
      *(a1 + 26648) = a2;
    }

    *(a1 + 26640) = a2 + a3;
  }

LABEL_19:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *sub_243953500(_DWORD *result, unint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 > 4)
  {
    if (*result != -47205083)
    {
      v4 = -10;
      goto LABEL_16;
    }

    v5 = a2 - 5;
    if (a2 - 5 >= 3)
    {
      v6 = 0;
      v7 = result + 5;
      do
      {
        v8 = *v7;
        if (v8 >> 6 == 2)
        {
          v10 = v5 - 3;
          if (!v10)
          {
            break;
          }

          v9 = 1;
        }

        else
        {
          if (v8 >> 6 == 3)
          {
            goto LABEL_18;
          }

          v9 = v7[2] | ((v8 & 7) << 16) | (v7[1] << 8);
          v10 = v5 - 3;
          if (v10 < v9)
          {
            break;
          }

          if (!v9)
          {
LABEL_18:
            *a3 = v7 - result + 3;
            goto LABEL_17;
          }
        }

        v7 += v9 + 3;
        v5 = v10 - v9;
        v6 += 0x20000;
      }

      while (v5 >= 3);
    }
  }

  v4 = -72;
LABEL_16:
  *a3 = v4;
  v6 = -2;
LABEL_17:
  *a4 = v6;
  return result;
}

uint64_t sub_2439535C0(void **a1)
{
  if (a1)
  {
    free(*a1);
    free(a1[6]);
    free(a1[9]);
    free(a1);
  }

  return 0;
}

uint64_t sub_24395360C(unsigned int *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a3 <= 0xFF)
  {
    if (a4 <= 0xC)
    {
      v5 = 0;
      v6 = a1 + 1;
      v7 = a3 + 1;
      v8 = 1 << a4;
      v9 = 1;
      v10 = (1 << a4) - 1;
      do
      {
        v11 = *(a2 + 2 * v5);
        if (v11 == -1)
        {
          v13 = &v6[v10--];
          *(v13 + 2) = v5;
          v12 = 1;
        }

        else
        {
          v12 = *(a2 + 2 * v5);
          if (((0x8000 << a4) >> 16) <= v11)
          {
            v9 = 0;
          }
        }

        v23[v5++] = v12;
      }

      while (v7 != v5);
      v14 = 0;
      v15 = 0;
      *a1 = a4 | (v9 << 16);
      do
      {
        v16 = *(a2 + 2 * v14);
        if (v16 >= 1)
        {
          for (i = 0; i != v16; ++i)
          {
            BYTE2(v6[v15]) = v14;
            do
            {
              v15 = ((v8 >> 3) + (v8 >> 1) + 3 + v15) & ((1 << a4) - 1);
            }

            while (v15 > v10);
          }
        }

        ++v14;
      }

      while (v14 != v7);
      if (v15)
      {
        result = -1;
      }

      else
      {
        v18 = a1 + 7;
        v19 = (1 << a4);
        do
        {
          v20 = *(v18 - 1);
          v21 = v23[v20];
          v23[v20] = v21 + 1;
          LOBYTE(v20) = a4 - (__clz(v21) ^ 0x1F);
          *v18 = v20;
          *(v18 - 3) = (v21 << v20) - v8;
          v18 += 4;
          --v19;
        }

        while (v19);
        result = 0;
      }
    }

    else
    {
      result = -44;
    }
  }

  else
  {
    result = -46;
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_243953798(unint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned __int16 *a5)
{
  v7 = a1 + a2;
  v8 = a1 + a2 - 3;
  if (a5[1])
  {
    v80 = 0uLL;
    v81 = 0uLL;
    result = sub_24395418C(&v80, a3, a4);
    if (result <= 0xFFFFFFFFFFFFFF88)
    {
      v11 = *a5;
      v10 = a5 + 2;
      v12 = v80 << SBYTE8(v80) >> 1 >> (63 - v11);
      DWORD2(v80) += v11;
      sub_243950B88(&v80);
      v13 = v80 << SBYTE8(v80) >> 1 >> (63 - v11);
      DWORD2(v80) += v11;
      sub_243950B88(&v80);
      if (sub_243950B88(&v80) || v8 <= a1)
      {
        v14 = a1;
      }

      else
      {
        v14 = a1;
        do
        {
          v15 = &v10[2 * v12];
          v16 = *v15;
          v17 = *(v15 + 2);
          LODWORD(v15) = *(v15 + 3);
          v18 = v80;
          v19 = v80 << SBYTE8(v80) >> -v15;
          LODWORD(v15) = DWORD2(v80) + v15;
          *v14 = v17;
          v20 = &v10[2 * v13];
          v21 = *v20;
          v22 = *(v20 + 2);
          LODWORD(v20) = *(v20 + 3);
          v23 = (v18 << v15) >> -v20;
          LODWORD(v15) = v15 + v20;
          v14[1] = v22;
          v24 = &v10[2 * v19 + 2 * v16];
          v25 = *v24;
          LOBYTE(v19) = *(v24 + 2);
          LODWORD(v24) = *(v24 + 3);
          v26 = (v18 << v15) >> -v24;
          LODWORD(v15) = v15 + v24;
          v12 = v26 + v25;
          v14[2] = v19;
          v27 = &v10[2 * v23 + 2 * v21];
          v28 = *v27;
          LOBYTE(v21) = *(v27 + 2);
          LODWORD(v27) = *(v27 + 3);
          DWORD2(v80) = v15 + v27;
          v13 = ((v18 << v15) >> -v27) + v28;
          v14[3] = v21;
          v14 += 4;
        }

        while (!sub_243950B88(&v80) && v14 < v8);
      }

      v48 = v7 - 2;
      v49 = &v14[-a1];
      v50 = v14 + 1;
      v51 = 2;
      while (1)
      {
        v52 = v49;
        if ((v50 - 1) > v48)
        {
          return -70;
        }

        v53 = &v10[2 * v12];
        v54 = *v53;
        v55 = *(v53 + 2);
        v56 = *(v53 + 3);
        v57 = v80;
        v58 = BYTE8(v80);
        DWORD2(v80) += v56;
        *(v50 - 1) = v55;
        if (sub_243950B88(&v80) == 3)
        {
          goto LABEL_23;
        }

        if (v50 > v48)
        {
          return -70;
        }

        v12 = ((v57 << v58) >> -v56) + v54;
        v59 = &v10[2 * v13];
        v60 = *v59;
        v61 = *(v59 + 2);
        LODWORD(v59) = *(v59 + 3);
        v62 = v80 << SBYTE8(v80) >> -v59;
        DWORD2(v80) += v59;
        v13 = v62 + v60;
        *v50 = v61;
        v50 += 2;
        v63 = sub_243950B88(&v80);
        v49 = v52 + 2;
        if (v63 == 3)
        {
          --v50;
          v51 = 3;
          v13 = v12;
LABEL_23:
          *v50 = v10[2 * v13 + 1];
          return &v52[v51];
        }
      }
    }
  }

  else
  {
    v80 = 0uLL;
    v81 = 0uLL;
    result = sub_24395418C(&v80, a3, a4);
    if (result <= 0xFFFFFFFFFFFFFF88)
    {
      v30 = *a5;
      v29 = a5 + 2;
      v31 = v80 << SBYTE8(v80) >> 1 >> (63 - v30);
      DWORD2(v80) += v30;
      sub_243950B88(&v80);
      v32 = v80 << SBYTE8(v80) >> 1 >> (63 - v30);
      DWORD2(v80) += v30;
      sub_243950B88(&v80);
      if (sub_243950B88(&v80) || v8 <= a1)
      {
        v33 = a1;
      }

      else
      {
        v33 = a1;
        do
        {
          v34 = &v29[2 * v31];
          v35 = *v34;
          v36 = *(v34 + 2);
          LODWORD(v34) = *(v34 + 3);
          v37 = v80;
          v38 = v80 << SBYTE8(v80) >> 1 >> (63 - v34);
          LODWORD(v34) = DWORD2(v80) + v34;
          *v33 = v36;
          v39 = &v29[2 * v32];
          v40 = *v39;
          v41 = *(v39 + 2);
          LODWORD(v39) = *(v39 + 3);
          v42 = (v37 << v34) >> 1 >> (63 - v39);
          LODWORD(v34) = v34 + v39;
          v33[1] = v41;
          v43 = &v29[2 * v38 + 2 * v35];
          v44 = *v43;
          LOBYTE(v38) = *(v43 + 2);
          LODWORD(v43) = *(v43 + 3);
          v45 = (v37 << v34) >> 1 >> (63 - v43);
          LODWORD(v34) = v34 + v43;
          v31 = v45 + v44;
          v33[2] = v38;
          v46 = &v29[2 * v42 + 2 * v40];
          v47 = *v46;
          LOBYTE(v40) = *(v46 + 2);
          LODWORD(v46) = *(v46 + 3);
          DWORD2(v80) = v34 + v46;
          v32 = ((v37 << v34) >> 1 >> (63 - v46)) + v47;
          v33[3] = v40;
          v33 += 4;
        }

        while (!sub_243950B88(&v80) && v33 < v8);
      }

      v64 = v7 - 2;
      v65 = &v33[-a1];
      v66 = v33 + 1;
      while (1)
      {
        v67 = v65;
        if ((v66 - 1) > v64)
        {
          return -70;
        }

        v68 = &v29[2 * v31];
        v69 = *v68;
        v70 = *(v68 + 2);
        v71 = *(v68 + 3);
        v72 = v80;
        v73 = BYTE8(v80);
        DWORD2(v80) += v71;
        *(v66 - 1) = v70;
        if (sub_243950B88(&v80) == 3)
        {
          break;
        }

        if (v66 > v64)
        {
          return -70;
        }

        v31 = ((v72 << v73) >> 1 >> (63 - v71)) + v69;
        v74 = &v29[2 * v32];
        v75 = *v74;
        v76 = *(v74 + 2);
        LODWORD(v74) = *(v74 + 3);
        v77 = v80 << SBYTE8(v80) >> 1 >> (63 - v74);
        DWORD2(v80) += v74;
        v32 = v77 + v75;
        *v66 = v76;
        v66 += 2;
        v78 = sub_243950B88(&v80);
        v65 = v67 + 2;
        if (v78 == 3)
        {
          --v66;
          v79 = 3;
          v32 = v31;
LABEL_33:
          *v66 = v29[2 * v32 + 1];
          return &v67[v79];
        }
      }

      v79 = 2;
      goto LABEL_33;
    }
  }

  return result;
}

uint64_t sub_243953C6C()
{
  v0 = MEMORY[0x28223BE20]();
  v18[64] = *MEMORY[0x277D85DE8];
  v15 = 255;
  if (v3 < 2)
  {
    goto LABEL_2;
  }

  v5 = v3;
  v6 = v2;
  v7 = v1;
  v8 = v0;
  memset(v17, 0, 512);
  v16 = 0;
  v9 = sub_24394EDA4(v18, &v15, &v16, v2, v3);
  v4 = v9;
  if (v9 > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_9;
  }

  v10 = v5 > v9;
  v11 = v5 - v9;
  if (v10)
  {
    v12 = sub_24395360C(v17, v18, v15, v16);
    if (v12 <= 0xFFFFFFFFFFFFFF88)
    {
      v12 = sub_243953798(v8, v7, v6 + v4, v11, v17);
    }

    v4 = v12;
  }

  else
  {
LABEL_2:
    v4 = -72;
  }

LABEL_9:
  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

unint64_t sub_243953DC8(_WORD *a1, char *a2, unint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  result = sub_243953EF4(v21, v20, &v18, &v19, a2, a3);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    v5 = v19;
    if (v19 <= *a1)
    {
      *a1 = v19;
      if (v5)
      {
        v6 = 0;
        v7 = 0;
        do
        {
          v8 = v20[v6 + 1] << v6;
          v20[v6 + 1] = v7;
          v7 += v8;
          ++v6;
        }

        while (v5 != v6);
      }

      v9 = v18;
      if (v18)
      {
        v10 = 0;
        v11 = v5 + 1;
        do
        {
          v12 = *(v21 + v10);
          v13 = v20[v12];
          v14 = (v13 + (1 << v12 >> 1));
          if (v13 < v14)
          {
            v15 = &a1[v13 + 1] + 1;
            v16 = v14 - v13;
            do
            {
              *(v15 - 1) = v10;
              *v15 = v11 - v12;
              v15 += 2;
              --v16;
            }

            while (v16);
          }

          v20[v12] = v14;
          ++v10;
        }

        while (v10 != v9);
      }
    }

    else
    {
      result = -44;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_243953EF4(_OWORD *a1, uint64_t a2, _DWORD *a3, _DWORD *a4, char *a5, unint64_t a6)
{
  if (a6)
  {
    v10 = *a5;
    if ((*a5 & 0x80000000) == 0)
    {
      if (v10 < a6)
      {
        v11 = *a5;
        v12 = sub_243953C6C();
        v13 = v12;
        if (v12 > 0xFFFFFFFFFFFFFF88)
        {
          return v13;
        }

        goto LABEL_14;
      }

      return -72;
    }

    if (v10 < 0xF2)
    {
      if ((v10 - 126) >> 1 >= a6)
      {
        return -72;
      }

      v12 = v10 - 127;
      if (v10 == 127)
      {
        *(a2 + 64) = 0;
        *(a2 + 32) = 0u;
        *(a2 + 48) = 0u;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        return -20;
      }

      v15 = 0;
      v16 = a5 + 1;
      v17 = a1 + 1;
      do
      {
        *(v17 - 1) = *v16 >> 4;
        v18 = *v16++;
        *v17 = v18 & 0xF;
        v17 += 2;
        v15 += 2;
      }

      while (v12 > v15);
      v10 = (v10 - 126) >> 1;
    }

    else
    {
      v12 = dword_243991200[v10 - 242];
      *&v14 = 0x101010101010101;
      *(&v14 + 1) = 0x101010101010101;
      a1[14] = v14;
      a1[15] = v14;
      a1[12] = v14;
      a1[13] = v14;
      a1[10] = v14;
      a1[11] = v14;
      a1[8] = v14;
      a1[9] = v14;
      a1[6] = v14;
      a1[7] = v14;
      a1[4] = v14;
      a1[5] = v14;
      a1[2] = v14;
      a1[3] = v14;
      *a1 = v14;
      a1[1] = v14;
      v10 = 0;
    }

LABEL_14:
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    if (v12)
    {
      v19 = 0;
      v20 = 0;
      v21 = 1;
      while (1)
      {
        v22 = *(a1 + v19);
        if (v22 > 0xF)
        {
          break;
        }

        ++*(a2 + 4 * v22);
        v20 += 1 << *(a1 + v19) >> 1;
        v19 = v21;
        if (v12 <= v21++)
        {
          if (!v20)
          {
            return -20;
          }

          v24 = __clz(v20);
          if ((v24 ^ 0x1F) > 0xF)
          {
            return -20;
          }

          *a4 = 32 - v24;
          v25 = (2 << (v24 ^ 0x1F)) - v20;
          v26 = __clz(v25) ^ 0x1F;
          if (1 << v26 != v25)
          {
            return -20;
          }

          v27 = v26 + 1;
          *(a1 + v12) = v27;
          ++*(a2 + 4 * v27);
          v28 = *(a2 + 4);
          v13 = -20;
          if (v28 >= 2 && (v28 & 1) == 0)
          {
            *a3 = v12 + 1;
            return v10 + 1;
          }

          return v13;
        }
      }
    }

    return -20;
  }

  return -72;
}

unint64_t sub_243954100(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned __int16 *a5)
{
  v8 = *a5;
  v11 = 0u;
  v12 = 0u;
  result = sub_24395418C(&v11, a3, a4);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    sub_243954298(a1, &v11, &a1[a2], (a5 + 1), v8);
    if (DWORD2(v11) == 64 && v12 == *(&v12 + 1))
    {
      return a2;
    }

    else
    {
      return -20;
    }
  }

  return result;
}

uint64_t sub_24395418C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    *(a1 + 24) = a2;
    if (a3 >= 8)
    {
      *(a1 + 16) = &a2[a3 - 8];
      *a1 = *&a2[a3 - 8];
      if (a2[a3 - 1])
      {
        v3 = 8 - (__clz(a2[a3 - 1]) ^ 0x1F);
LABEL_21:
        *(a1 + 8) = v3;
        return a3;
      }

      return -1;
    }

    *(a1 + 16) = a2;
    v4 = *a2;
    *a1 = v4;
    if (a3 > 4)
    {
      if (a3 != 5)
      {
        if (a3 != 6)
        {
          v4 |= a2[6] << 48;
          *a1 = v4;
        }

        v4 += a2[5] << 40;
        *a1 = v4;
      }

      v4 += a2[4] << 32;
      *a1 = v4;
    }

    else
    {
      if (a3 == 2)
      {
LABEL_18:
        *a1 = v4 + (a2[1] << 8);
        goto LABEL_19;
      }

      if (a3 == 3)
      {
LABEL_17:
        v4 += a2[2] << 16;
        *a1 = v4;
        goto LABEL_18;
      }

      if (a3 != 4)
      {
LABEL_19:
        if (a2[a3 - 1])
        {
          v3 = __clz(a2[a3 - 1]) - 8 * a3 + 41;
          goto LABEL_21;
        }

        return -1;
      }
    }

    v4 += a2[3] << 24;
    *a1 = v4;
    goto LABEL_17;
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  return -72;
}

uint64_t sub_243954298(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  if (!sub_243950B88(a2) && a3 - 4 >= a1)
  {
    v10 = -a5 & 0x3F;
    do
    {
      v11 = *(a2 + 8);
      v12 = (a4 + 2 * (*a2 << v11 >> v10));
      v13 = *v12;
      *(a2 + 8) = v11 + v12[1];
      *a1 = v13;
      v14 = *(a2 + 8);
      v15 = (a4 + 2 * (*a2 << v14 >> v10));
      v16 = *v15;
      *(a2 + 8) = v14 + v15[1];
      a1[1] = v16;
      v17 = *(a2 + 8);
      v18 = (a4 + 2 * (*a2 << v17 >> v10));
      v19 = *v18;
      *(a2 + 8) = v17 + v18[1];
      a1[2] = v19;
      v20 = *(a2 + 8);
      v21 = (a4 + 2 * (*a2 << v20 >> v10));
      v22 = *v21;
      *(a2 + 8) = v20 + v21[1];
      a1[3] = v22;
      a1 += 4;
    }

    while (!sub_243950B88(a2) && a1 <= a3 - 4);
  }

  for (result = sub_243950B88(a2); !result && a1 < a3; result = sub_243950B88(a2))
  {
    v24 = *(a2 + 8);
    v25 = (a4 + 2 * (*a2 << v24 >> (-a5 & 0x3F)));
    v26 = *v25;
    *(a2 + 8) = v24 + v25[1];
    *a1++ = v26;
  }

  if (a1 < a3)
  {
    v27 = a3 - a1;
    do
    {
      v28 = *(a2 + 8);
      v29 = (a4 + 2 * (*a2 << v28 >> (-a5 & 0x3F)));
      v30 = *v29;
      *(a2 + 8) = v28 + v29[1];
      *a1++ = v30;
      --v27;
    }

    while (v27);
  }

  return result;
}

unint64_t sub_243954454()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v11[1024] = *MEMORY[0x277D85DE8];
  bzero(v11, 0x2000uLL);
  v10 = 12;
  result = sub_243953DC8(&v10, v4, v2);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    if (v2 <= result)
    {
      result = -72;
    }

    else
    {
      result = sub_243954100(v7, v6, &v4[result], v2 - result, &v10);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_243954534(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4, unsigned __int16 *a5)
{
  if (a4 < 0xA)
  {
    return -20;
  }

  v85 = v5;
  v86 = v6;
  v8 = (a5 + 1);
  v9 = *a5;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v10 = *a3;
  v11 = *(a3 + 1);
  v12 = *(a3 + 2);
  v13 = v10 + v11 + v12 + 6;
  v14 = a4 - v13;
  if (a4 < v13)
  {
    return -20;
  }

  v17 = (a3 + 6);
  result = sub_24395418C(&v83, a3 + 6, *a3);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    v18 = v17 + v10;
    result = sub_24395418C(&v81, v18, v11);
    if (result <= 0xFFFFFFFFFFFFFF88)
    {
      v19 = &v18[v11];
      result = sub_24395418C(&v79, v19, v12);
      if (result <= 0xFFFFFFFFFFFFFF88)
      {
        result = sub_24395418C(&v77, &v19[v12], v14);
        if (result <= 0xFFFFFFFFFFFFFF88)
        {
          v20 = &a1[a2];
          v75 = &a1[(a2 + 3) >> 2];
          v74 = v75 + ((a2 + 3) >> 2);
          v21 = sub_243950B88(&v83);
          v22 = sub_243950B88(&v81) | v21;
          v23 = sub_243950B88(&v79);
          v72 = &a1[a2];
          v73 = v74 + ((a2 + 3) >> 2);
          if (v22 | v23 | sub_243950B88(&v77) || (v76 = (v20 - 7), v74 + ((a2 + 3) >> 2) >= (v20 - 7)))
          {
            v55 = a1;
            v59 = (v75 + ((a2 + 3) >> 2));
            v57 = &a1[(a2 + 3) >> 2];
            v61 = (v74 + ((a2 + 3) >> 2));
          }

          else
          {
            v24 = -v9 & 0x3F;
            v25 = (v74 + ((a2 + 3) >> 2));
            v26 = (v75 + ((a2 + 3) >> 2));
            v27 = &a1[(a2 + 3) >> 2];
            do
            {
              v28 = v83;
              v29 = (v8 + 2 * (v83 << SBYTE8(v83) >> v24));
              v30 = DWORD2(v83) + v29[1];
              *a1 = *v29;
              v31 = v81;
              v32 = (v8 + 2 * (v81 << SBYTE8(v81) >> v24));
              v33 = DWORD2(v81) + v32[1];
              *v27 = *v32;
              v34 = v79;
              v35 = (v8 + 2 * (v79 << SBYTE8(v79) >> v24));
              v36 = *v35;
              LODWORD(v35) = DWORD2(v79) + v35[1];
              *v26 = v36;
              v37 = v77;
              v38 = (v8 + 2 * (v77 << SBYTE8(v77) >> v24));
              v39 = DWORD2(v77) + v38[1];
              *v25 = *v38;
              v40 = (v8 + 2 * ((v28 << v30) >> v24));
              v41 = v30 + v40[1];
              a1[1] = *v40;
              v42 = (v8 + 2 * ((v31 << v33) >> v24));
              v43 = v33 + v42[1];
              v27[1] = *v42;
              v44 = (v8 + 2 * ((v34 << v35) >> v24));
              LODWORD(v35) = v35 + v44[1];
              v26[1] = *v44;
              v45 = (v8 + 2 * ((v37 << v39) >> v24));
              v46 = v39 + v45[1];
              v25[1] = *v45;
              v47 = (v8 + 2 * ((v28 << v41) >> v24));
              v48 = v41 + v47[1];
              a1[2] = *v47;
              v49 = (v8 + 2 * ((v31 << v43) >> v24));
              v50 = v43 + v49[1];
              v27[2] = *v49;
              v51 = (v8 + 2 * ((v34 << v35) >> v24));
              LODWORD(v35) = v35 + v51[1];
              v26[2] = *v51;
              v52 = (v8 + 2 * ((v37 << v46) >> v24));
              v53 = v46 + v52[1];
              v25[2] = *v52;
              v54 = (v8 + 2 * ((v28 << v48) >> v24));
              LOBYTE(v52) = *v54;
              DWORD2(v83) = v48 + v54[1];
              v55 = a1 + 4;
              a1[3] = v52;
              v56 = (v8 + 2 * ((v31 << v50) >> v24));
              LOBYTE(v31) = *v56;
              DWORD2(v81) = v50 + v56[1];
              v57 = v27 + 4;
              v27[3] = v31;
              v58 = (v8 + 2 * ((v34 << v35) >> v24));
              LOBYTE(v56) = *v58;
              DWORD2(v79) = v35 + v58[1];
              v59 = v26 + 4;
              v26[3] = v56;
              v60 = (v8 + 2 * ((v37 << v53) >> v24));
              LOBYTE(v58) = *v60;
              DWORD2(v77) = v53 + v60[1];
              v61 = v25 + 4;
              v25[3] = v58;
              v62 = sub_243950B88(&v83);
              v63 = sub_243950B88(&v81) | v62;
              v64 = sub_243950B88(&v79);
              if (v63 | v64 | sub_243950B88(&v77))
              {
                break;
              }

              v25 = v61;
              v26 = v59;
              v27 = v57;
              a1 = v55;
            }

            while (v61 < v76);
          }

          result = -20;
          if (v55 <= v75 && v57 <= v74 && v59 <= v73)
          {
            sub_243954298(v55, &v83, v75, v8, v9);
            sub_243954298(v57, &v81, v74, v8, v9);
            sub_243954298(v59, &v79, v73, v8, v9);
            sub_243954298(v61, &v77, v72, v8, v9);
            if (DWORD2(v77) == 64 && v78 == *(&v78 + 1) && DWORD2(v79) == 64 && v80 == *(&v80 + 1) && DWORD2(v81) == 64 && v82 == *(&v82 + 1) && DWORD2(v83) == 64 && v84 == *(&v84 + 1))
            {
              return a2;
            }

            else
            {
              return -20;
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_2439549F8()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v11[1024] = *MEMORY[0x277D85DE8];
  bzero(v11, 0x2000uLL);
  v10 = 12;
  result = sub_243953DC8(&v10, v4, v2);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    if (v2 <= result)
    {
      result = -72;
    }

    else
    {
      result = sub_243954534(v7, v6, &v4[result], v2 - result, &v10);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_243954AD8(unsigned int *a1, char *a2, unint64_t a3)
{
  v119 = *MEMORY[0x277D85DE8];
  memset(v113, 0, 68);
  v112 = 0;
  memset(v111, 0, sizeof(v111));
  v3 = a1 + 1;
  v4 = *a1;
  if (*a1 > 0x10)
  {
    goto LABEL_2;
  }

  v78 = 0;
  result = sub_243953EF4(v114, v113, &v78, &v78 + 1, a2, a3);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_57;
  }

  v7 = HIDWORD(v78);
  v8 = v4 - HIDWORD(v78);
  if (v4 < HIDWORD(v78))
  {
LABEL_2:
    result = -44;
  }

  else
  {
    v9 = HIDWORD(v78) + 1;
    v10 = -1;
    do
    {
      v11 = v113[v7--];
      ++v10;
    }

    while (!v11);
    v12 = v7 + 2;
    if (v7 > 0xFFFFFFFD)
    {
      v18 = 0;
    }

    else
    {
      v13 = 0;
      v14 = &v113[1];
      v15 = &v111[2];
      v16 = v12 - 1;
      do
      {
        v17 = *v14++;
        v18 = v17 + v13;
        *v15++ = v13;
        v13 += v17;
        --v16;
      }

      while (v16);
    }

    v111[1] = v18;
    v19 = v78;
    if (v78)
    {
      v20 = 0;
      do
      {
        v21 = *(v114 + v20);
        v22 = v111[v21 + 1];
        v111[v21 + 1] = v22 + 1;
        v23 = &v113[20] + 2 * v22;
        *v23 = v20;
        v23[1] = v21;
        ++v20;
      }

      while (v19 != v20);
    }

    v24 = v4 - v10;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v111[1] = 0;
    if (v7 <= 0xFFFFFFFD)
    {
      v25 = 0;
      v26 = &v113[1];
      v27 = &v79 + 1;
      v28 = v12 - 1;
      do
      {
        v29 = *v26++;
        *v27++ = v25;
        v25 += v29 << v8++;
        --v28;
      }

      while (v28);
    }

    v30 = v10 + 1;
    if (v10 + 1 < v24)
    {
      v31 = v10 + 1;
      v32 = 17 * v31;
      v33 = v12 - 1;
      do
      {
        if (v7 <= 0xFFFFFFFD)
        {
          v34 = v33;
          v35 = &v79 + 1;
          do
          {
            v35[v32] = *v35 >> v31;
            ++v35;
            --v34;
          }

          while (v34);
        }

        ++v31;
        v32 += 17;
      }

      while (v24 != v31);
    }

    v115[1] = v80;
    v115[2] = v81;
    v115[3] = v82;
    v116 = v83;
    v115[0] = v79;
    if (v18)
    {
      v36 = 0;
      v37 = v9 - v4;
      v77 = a1 + 2;
      v38 = vdupq_n_s64(4uLL);
      do
      {
        v39 = &v113[20] + 2 * v36;
        v40 = *v39;
        v41 = v39[1];
        v42 = v9 - v41;
        v43 = *(v115 + v41);
        v44 = v4 - (v9 - v41);
        v45 = 1 << (v4 - (v9 - v41));
        if (v44 >= v30)
        {
          v54 = &v79 + 68 * v42;
          v55 = *v54;
          v117[1] = *(v54 + 1);
          v56 = *(v54 + 3);
          v117[2] = *(v54 + 2);
          v117[3] = v56;
          if ((v42 + v37) <= 1)
          {
            v57 = 1;
          }

          else
          {
            v57 = v42 + v37;
          }

          v58 = v111[v57];
          v118 = *(v54 + 16);
          v117[0] = v55;
          if ((v42 + v37) >= 2)
          {
            v59 = *(v117 + v57);
            if (v59)
            {
              v60 = v40 & 0xFF00FFFF | ((v9 - v41) << 16) | 0x1000000;
              v61 = (v59 + 3) & 0x1FFFFFFFCLL;
              v62 = vdupq_n_s64(v59 - 1);
              v63 = &v77[v43];
              v64 = xmmword_24398C940;
              v65 = xmmword_24398E4E0;
              do
              {
                v66 = vmovn_s64(vcgeq_u64(v62, v64));
                if (vuzp1_s16(v66, 2).u8[0])
                {
                  *(v63 - 1) = v60;
                }

                if (vuzp1_s16(v66, 2).i8[2])
                {
                  *v63 = v60;
                }

                if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v62, *&v65))).i32[1])
                {
                  v63[1] = v60;
                  v63[2] = v60;
                }

                v65 = vaddq_s64(v65, v38);
                v64 = vaddq_s64(v64, v38);
                v63 += 4;
                v61 -= 4;
              }

              while (v61);
            }
          }

          if (v18 != v58)
          {
            v67 = 0;
            v68 = (v18 - v58);
            v69 = &v113[20] + 2 * v58;
            do
            {
              v70 = &v69[2 * v67];
              v71 = *v70;
              v72 = v70[1];
              v73 = *(v117 + v72);
              v74 = (1 << (v44 - (v9 - v72))) + v73;
              v75 = (v71 << 8) & 0xFF00FFFF | ((v9 - v72 + v42) << 16) | v40 | 0x2000000;
              do
              {
                v3[v43 + v73++] = v75;
              }

              while (v73 < v74);
              *(v117 + v72) = v74;
              ++v67;
            }

            while (v67 != v68);
          }

          LODWORD(v46) = v45 + v43;
        }

        else
        {
          v46 = (v45 + v43);
          if (v43 < v46)
          {
            v47 = 0;
            v48 = v40 & 0xFF00FFFF | ((v9 - v41) << 16) | 0x1000000;
            v49 = (v46 - v43 + 3) & 0xFFFFFFFFFFFFFFFCLL;
            v50 = vdupq_n_s64(v46 - v43 - 1);
            v51 = &v77[v43];
            do
            {
              v52 = vdupq_n_s64(v47);
              v53 = vmovn_s64(vcgeq_u64(v50, vorrq_s8(v52, xmmword_24398C940)));
              if (vuzp1_s16(v53, 2).u8[0])
              {
                *(v51 - 1) = v48;
              }

              if (vuzp1_s16(v53, 2).i8[2])
              {
                *v51 = v48;
              }

              if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v50, vorrq_s8(v52, xmmword_24398E4E0)))).i32[1])
              {
                v51[1] = v48;
                v51[2] = v48;
              }

              v47 += 4;
              v51 += 4;
            }

            while (v49 != v47);
          }
        }

        *(v115 + v41) = v46;
        ++v36;
      }

      while (v36 != v18);
    }
  }

LABEL_57:
  v76 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_243954FE4(_WORD *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, int *a5)
{
  v8 = *a5;
  v11 = 0u;
  v12 = 0u;
  result = sub_24395418C(&v11, a3, a4);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    sub_243955070(a1, &v11, a1 + a2, (a5 + 1), v8);
    if (DWORD2(v11) == 64 && v12 == *(&v12 + 1))
    {
      return a2;
    }

    else
    {
      return -20;
    }
  }

  return result;
}

uint64_t sub_243955070(_WORD *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  if (!sub_243950B88(a2) && a3 - 7 > a1)
  {
    v10 = -a5 & 0x3F;
    do
    {
      v11 = a4 + 4 * (*a2 << *(a2 + 8) >> v10);
      *a1 = *v11;
      v12 = *(a2 + 8) + *(v11 + 2);
      *(a2 + 8) = v12;
      v13 = (a1 + *(v11 + 3));
      v14 = a4 + 4 * (*a2 << v12 >> v10);
      *v13 = *v14;
      v15 = *(a2 + 8) + *(v14 + 2);
      *(a2 + 8) = v15;
      v16 = (v13 + *(v14 + 3));
      v17 = a4 + 4 * (*a2 << v15 >> v10);
      *v16 = *v17;
      v18 = *(a2 + 8) + *(v17 + 2);
      *(a2 + 8) = v18;
      v19 = (v16 + *(v17 + 3));
      v20 = a4 + 4 * (*a2 << v18 >> v10);
      *v19 = *v20;
      *(a2 + 8) += *(v20 + 2);
      a1 = (v19 + *(v20 + 3));
    }

    while (!sub_243950B88(a2) && a1 < a3 - 7);
  }

  v21 = a3 - 2;
  for (result = sub_243950B88(a2); !result && a1 <= v21; result = sub_243950B88(a2))
  {
    v23 = a4 + 4 * (*a2 << *(a2 + 8) >> (-a5 & 0x3F));
    *a1 = *v23;
    *(a2 + 8) += *(v23 + 2);
    a1 = (a1 + *(v23 + 3));
  }

  if (a1 <= v21)
  {
    v24 = *(a2 + 8);
    do
    {
      v25 = a4 + 4 * (*a2 << v24 >> (-a5 & 0x3F));
      *a1 = *v25;
      v24 = *(a2 + 8) + *(v25 + 2);
      *(a2 + 8) = v24;
      a1 = (a1 + *(v25 + 3));
    }

    while (a1 <= v21);
  }

  if (a1 < a3)
  {
    v26 = (a4 + 4 * (*a2 << *(a2 + 8) >> -a5));
    *a1 = *v26;
    if (v26[3] == 1)
    {
      v27 = *(a2 + 8) + v26[2];
    }

    else
    {
      v28 = *(a2 + 8);
      if (v28 > 0x3F)
      {
        return result;
      }

      v27 = v28 + v26[2];
      if (v27 >= 0x40)
      {
        v27 = 64;
      }
    }

    *(a2 + 8) = v27;
  }

  return result;
}

uint64_t sub_2439552CC(_WORD *a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4, int *a5)
{
  if (a4 < 0xA)
  {
    return -20;
  }

  v5 = (a5 + 1);
  v6 = *a5;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v7 = *a3;
  v8 = *(a3 + 1);
  v9 = *(a3 + 2);
  v10 = v7 + v8 + v9 + 6;
  v11 = a4 - v10;
  if (a4 < v10)
  {
    return -20;
  }

  v15 = (a3 + 6);
  v16 = sub_24395418C(&v98, a3 + 6, *a3);
  if (v16 > 0xFFFFFFFFFFFFFF88)
  {
    return v16;
  }

  v17 = v15 + v7;
  v16 = sub_24395418C(&v96, v17, v8);
  if (v16 > 0xFFFFFFFFFFFFFF88)
  {
    return v16;
  }

  v18 = &v17[v8];
  v16 = sub_24395418C(&v94, v18, v9);
  if (v16 > 0xFFFFFFFFFFFFFF88)
  {
    return v16;
  }

  v16 = sub_24395418C(&v92, &v18[v9], v11);
  if (v16 > 0xFFFFFFFFFFFFFF88)
  {
    return v16;
  }

  v19 = a1 + a2;
  v20 = (a1 + ((a2 + 3) >> 2));
  v21 = (v20 + ((a2 + 3) >> 2));
  v22 = v21 + ((a2 + 3) >> 2);
  v23 = sub_243950B88(&v98);
  v24 = sub_243950B88(&v96) | v23;
  v25 = sub_243950B88(&v94);
  v87 = a1 + a2;
  v88 = v20;
  v89 = v21;
  v90 = v22;
  if (!(v24 | v25 | sub_243950B88(&v92)))
  {
    v91 = (v19 - 7);
    if (v22 < v19 - 7)
    {
      v26 = -v6 & 0x3F;
      do
      {
        v27 = v98;
        v28 = DWORD2(v98);
        v29 = v5 + 4 * (v98 << SBYTE8(v98) >> v26);
        *a1 = *v29;
        v30 = v28 + *(v29 + 2);
        v31 = (a1 + *(v29 + 3));
        v32 = v96;
        LODWORD(v29) = DWORD2(v96);
        v33 = v5 + 4 * (v96 << SBYTE8(v96) >> v26);
        *v20 = *v33;
        v34 = v29 + *(v33 + 2);
        v35 = (v20 + *(v33 + 3));
        v36 = v94;
        LODWORD(v33) = DWORD2(v94);
        v37 = v5 + 4 * (v94 << SBYTE8(v94) >> v26);
        *v21 = *v37;
        v38 = v33 + *(v37 + 2);
        v39 = (v21 + *(v37 + 3));
        v40 = v92;
        v41 = DWORD2(v92);
        v42 = v5 + 4 * (v92 << SBYTE8(v92) >> v26);
        *v22 = *v42;
        v43 = v41 + *(v42 + 2);
        v44 = &v22[*(v42 + 3)];
        v45 = v5 + 4 * ((v27 << v30) >> v26);
        *v31 = *v45;
        v46 = v30 + *(v45 + 2);
        v47 = *(v45 + 3);
        v48 = v5 + 4 * ((v32 << v34) >> v26);
        *v35 = *v48;
        v49 = v34 + *(v48 + 2);
        v50 = (v35 + *(v48 + 3));
        v51 = v5 + 4 * ((v36 << v38) >> v26);
        *v39 = *v51;
        v52 = v38 + *(v51 + 2);
        v53 = (v39 + *(v51 + 3));
        v54 = v5 + 4 * ((v40 << v43) >> v26);
        *v44 = *v54;
        v55 = v43 + *(v54 + 2);
        v56 = &v44[*(v54 + 3)];
        v57 = (v31 + v47);
        v58 = v5 + 4 * ((v27 << v46) >> v26);
        *v57 = *v58;
        v59 = v46 + *(v58 + 2);
        v60 = (v57 + *(v58 + 3));
        v61 = v5 + 4 * ((v32 << v49) >> v26);
        *v50 = *v61;
        v62 = v49 + *(v61 + 2);
        v63 = (v50 + *(v61 + 3));
        v64 = v5 + 4 * ((v36 << v52) >> v26);
        *v53 = *v64;
        v65 = v52 + *(v64 + 2);
        v66 = (v53 + *(v64 + 3));
        v67 = v5 + 4 * ((v40 << v55) >> v26);
        *v56 = *v67;
        v68 = v55 + *(v67 + 2);
        v69 = &v56[*(v67 + 3)];
        v70 = v5 + 4 * ((v27 << v59) >> v26);
        *v60 = *v70;
        DWORD2(v98) = v59 + *(v70 + 2);
        a1 = (v60 + *(v70 + 3));
        v71 = v5 + 4 * ((v32 << v62) >> v26);
        *v63 = *v71;
        DWORD2(v96) = v62 + *(v71 + 2);
        v20 = (v63 + *(v71 + 3));
        v72 = v5 + 4 * ((v36 << v65) >> v26);
        *v66 = *v72;
        DWORD2(v94) = v65 + *(v72 + 2);
        v21 = (v66 + *(v72 + 3));
        v73 = v5 + 4 * ((v40 << v68) >> v26);
        *v69 = *v73;
        DWORD2(v92) = v68 + *(v73 + 2);
        v22 = &v69[*(v73 + 3)];
        v74 = sub_243950B88(&v98);
        v75 = sub_243950B88(&v96) | v74;
        v76 = sub_243950B88(&v94);
      }

      while (!(v75 | v76 | sub_243950B88(&v92)) && v22 < v91);
    }
  }

  v12 = -20;
  if (a1 <= v88 && v20 <= v89 && v21 <= v90)
  {
    sub_243955070(a1, &v98, v88, v5, v6);
    sub_243955070(v20, &v96, v89, v5, v6);
    sub_243955070(v21, &v94, v90, v5, v6);
    sub_243955070(v22, &v92, v87, v5, v6);
    if (DWORD2(v92) == 64 && v93 == *(&v93 + 1) && DWORD2(v94) == 64 && v95 == *(&v95 + 1) && DWORD2(v96) == 64 && v97 == *(&v97 + 1) && DWORD2(v98) == 64 && v99 == *(&v99 + 1))
    {
      return a2;
    }
  }

  return v12;
}

unint64_t sub_2439557BC()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v11[2048] = *MEMORY[0x277D85DE8];
  bzero(v11, 0x4000uLL);
  v10 = 12;
  result = sub_243954AD8(&v10, v4, v2);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    if (v2 <= result)
    {
      result = -72;
    }

    else
    {
      result = sub_2439552CC(v7, v6, &v4[result], v2 - result, &v10);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

size_t sub_24395589C(void *a1, size_t __len, unsigned __int8 *__src, size_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!__len)
  {
    v4 = -70;
    goto LABEL_9;
  }

  v4 = __len;
  if (a4 > __len)
  {
    v4 = -20;
LABEL_9:
    v5 = *MEMORY[0x277D85DE8];
    return v4;
  }

  if (a4 == __len)
  {
    memcpy(a1, __src, __len);
    goto LABEL_9;
  }

  if (a4 == 1)
  {
    memset(a1, *__src, __len);
    goto LABEL_9;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v9 = &unk_243991080 + 24 * (16 * a4 / __len);
    *(&v12 + v7) = *&v9[8 * v8] + *&v9[8 * v8 + 4] * (__len >> 8);
    ++v8;
    v7 += 4;
  }

  while (v7 != 12);
  v10 = off_2856A2948[v13 + (v13 >> 4) < v12];
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

double sub_2439559DC()
{
  v0 = malloc(0x25488uLL);
  if (v0)
  {
    v0[2694] = 5;
    result = 0.0;
    *(v0 + 1345) = 0u;
    *(v0 + 1346) = 0u;
    *(v0 + 1283) = 12;
    *(v0 + 21588) = 0;
  }

  return result;
}

uint64_t sub_243955A24(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  if (a3 < 5)
  {
    return 5;
  }

  if (*a2 != -47205082)
  {
    return -10;
  }

  v3 = *(&unk_243991238 + ((*(a2 + 4) >> 3) & 0x18)) + 5;
  if (v3 <= a3)
  {
    *a1 = 0;
    a1[1] = 0;
    v4 = *(a2 + 4);
    *(a1 + 2) = (v4 & 0xF) + 12;
    if ((v4 & 0x20) != 0)
    {
      return -14;
    }

    else
    {
      v5 = v4 >> 6;
      if ((v4 >> 6) > 1)
      {
        if (v5 == 2)
        {
          v5 = *(a2 + 5) + 256;
        }

        else
        {
          v5 = *(a2 + 5);
        }
      }

      else if (v5)
      {
        v5 = *(a2 + 5);
      }

      v3 = 0;
      *a1 = v5;
    }
  }

  return v3;
}

uint64_t sub_243955AD4(unsigned __int16 *a1, char *a2, uint64_t a3, unsigned __int8 *a4, unint64_t a5)
{
  if (a5 >> 17)
  {
    return -72;
  }

  if (a5 < 3)
  {
    return -20;
  }

  v12 = *a4;
  v13 = v12 >> 6;
  if (v12 >> 6 > 1)
  {
    v22 = (v12 >> 4) & 3;
    if (v13 != 2)
    {
      if (v22 == 2)
      {
        v29 = a4[1] | ((v12 & 0xF) << 8);
        v30 = 2;
      }

      else if (v22 == 3)
      {
        v5 = -20;
        if (a5 == 3)
        {
          return v5;
        }

        v29 = ((v12 & 0xF) << 16) | (a4[1] << 8) | a4[2];
        if (v29 > 0x20000)
        {
          return v5;
        }

        v30 = 3;
      }

      else
      {
        v29 = v12 & 0x1F;
        v30 = 1;
      }

      v27 = v29;
      v28 = (a1 + 10808);
      memset(a1 + 10808, a4[v30], v29 + 8);
      *(a1 + 2700) = v28;
      *(a1 + 2701) = v27;
      v20 = v30 + 1;
      goto LABEL_38;
    }

    if (v22 == 2)
    {
      v23 = a4[1] | ((v12 & 0xF) << 8);
      v24 = 2;
    }

    else if (v22 == 3)
    {
      v23 = ((v12 & 0xF) << 16) | (a4[1] << 8) | a4[2];
      v24 = 3;
    }

    else
    {
      v23 = v12 & 0x1F;
      v24 = 1;
    }

    v27 = v23;
    v20 = v24 + v23;
    if (v20 + 8 <= a5)
    {
      v28 = &a4[v24];
      *(a1 + 2700) = &a4[v24];
      *(a1 + 2701) = v23;
      goto LABEL_38;
    }

    if (v20 > a5)
    {
      return -20;
    }

    v28 = (a1 + 10808);
    memcpy(a1 + 10808, &a4[v24], v23);
  }

  else
  {
    if (!v13)
    {
      if (a5 < 5)
      {
        return -20;
      }

      v14 = (v12 >> 4) & 3;
      v15 = a4[1];
      if (v14 == 2)
      {
        v114 = a4[2];
        v19 = a4[3] | ((v114 & 0x3F) << 8);
        v20 = v19 + 4;
        if (v19 + 4 > a5)
        {
          return -20;
        }

        v18 = ((v12 & 0xF) << 10) | (4 * v15) | (v114 >> 6);
        v21 = 4;
      }

      else if (v14 == 3)
      {
        v16 = ((v12 & 0xF) << 14) | (v15 << 6);
        v17 = a4[2];
        v18 = v16 | (v17 >> 2);
        v5 = -20;
        if (v18 > 0x20000)
        {
          return v5;
        }

        v19 = (a4[3] << 8) | ((v17 & 3) << 16) | a4[4];
        v20 = v19 + 5;
        if (v19 + 5 > a5)
        {
          return v5;
        }

        v21 = 5;
      }

      else
      {
        v19 = a4[2] | ((v15 & 3) << 8);
        v20 = v19 + 3;
        if (v19 + 3 > a5)
        {
          return -20;
        }

        v18 = (v15 >> 2) & 0xFFFFFC3F | ((v12 & 0xF) << 6);
        if ((v12 & 0x10) != 0)
        {
          v115 = sub_243954454();
          goto LABEL_123;
        }

        v21 = 3;
      }

      v115 = sub_24395589C(a1 + 10808, v18, &a4[v21], v19);
LABEL_123:
      if (v115 > 0xFFFFFFFFFFFFFF88)
      {
        return -20;
      }

      *(a1 + 2700) = a1 + 10808;
      *(a1 + 2701) = v18;
      *(a1 + v18 + 21616) = 0;
      v28 = *(a1 + 2700);
      v27 = *(a1 + 2701);
      goto LABEL_38;
    }

    if ((v12 & 0x30) != 0x10)
    {
      return -20;
    }

    if (!*(a1 + 5398))
    {
      return -30;
    }

    v25 = a4[1];
    v26 = a4[2] | ((v25 & 3) << 8);
    v20 = v26 + 3;
    if (v26 + 3 > a5)
    {
      return -20;
    }

    v27 = ((v12 & 0xF) << 6) | (v25 >> 2);
    v28 = (a1 + 10808);
    if (sub_243954FE4(a1 + 10808, v27, a4 + 3, v26, a1 + 1283) > 0xFFFFFFFFFFFFFF88)
    {
      return -20;
    }
  }

  *(a1 + 2700) = v28;
  *(a1 + 2701) = v27;
  *&v28[v27] = 0;
LABEL_38:
  v31 = a5 - v20;
  if (a5 == v20)
  {
    return -72;
  }

  v32 = &a4[v20];
  v33 = &a2[a3];
  v34 = &v28[v27];
  v35 = &a4[v20 + 1];
  v36 = a4[v20];
  if (!a4[v20])
  {
    *(a1 + 5398) = 0;
    v58 = a2;
    goto LABEL_110;
  }

  v37 = *(a1 + 5398);
  if ((v36 & 0x80) != 0)
  {
    if (v36 == 255)
    {
      if (v31 < 3)
      {
        return -72;
      }

      v35 = v32 + 3;
      v36 = *(v32 + 1) + 32512;
    }

    else
    {
      if (v31 < 2)
      {
        return -72;
      }

      v35 = v32 + 2;
      v36 = (v32[1] | (v36 << 8)) - 0x8000;
    }
  }

  v38 = &a4[a5];
  if ((v35 + 4) > v38)
  {
    return -72;
  }

  v117 = *(a1 + 2693);
  v118 = *(a1 + 2692);
  v119 = *(a1 + 2691);
  v120 = v34;
  v121 = &a2[a3];
  v41 = *v35;
  v39 = (v35 + 1);
  v40 = v41;
  v42 = sub_243956B28(a1, v41 >> 6, 0x23u, 9u, v39, v38 - v39, &unk_243991258, 6u, v37);
  if (v42 > 0xFFFFFFFFFFFFFF88)
  {
    return -20;
  }

  v43 = v39 + v42;
  v44 = sub_243956B28((a1 + 1026), (v40 >> 4) & 3, 0x1Cu, 8u, (v39 + v42), v38 - (v39 + v42), &unk_2439912A0, 5u, v37);
  if (v44 > 0xFFFFFFFFFFFFFF88)
  {
    return -20;
  }

  v45 = &v43[v44];
  v46 = sub_243956B28((a1 + 1540), (v40 >> 2) & 3, 0x34u, 9u, v45, v38 - v45, &unk_2439912DA, 6u, v37);
  if (v46 > 0xFFFFFFFFFFFFFF88)
  {
    return -20;
  }

  v47 = v45 + v46;
  v5 = v47 - v32;
  if ((v47 - v32) > 0xFFFFFFFFFFFFFF88)
  {
    return v5;
  }

  *(a1 + 5398) = 0;
  if (!v36)
  {
    v58 = a2;
    v34 = v120;
    v33 = v121;
    goto LABEL_110;
  }

  v124 = 0u;
  v125 = 0u;
  v123 = 0u;
  memset(v122, 0, sizeof(v122));
  memset_pattern16(v126, &unk_243991070, 0x18uLL);
  if (sub_24395418C(v122, v47, v38 - v47) > 0xFFFFFFFFFFFFFF88)
  {
    return -20;
  }

  v48 = *a1;
  v49 = *&v122[0] << SBYTE8(v122[0]) >> 1 >> (63 - v48);
  DWORD2(v122[0]) += v48;
  *&v123 = v49;
  sub_243950B88(v122);
  v50 = a1[1026];
  v51 = *&v122[0] << SBYTE8(v122[0]) >> 1 >> (63 - v50);
  DWORD2(v122[0]) += v50;
  *(&v123 + 1) = a1 + 2;
  *&v124 = v51;
  sub_243950B88(v122);
  v52 = a1[1540];
  v53 = *&v122[0] << SBYTE8(v122[0]) >> 1 >> (63 - v52);
  DWORD2(v122[0]) += v52;
  *(&v124 + 1) = a1 + 1028;
  *&v125 = v53;
  sub_243950B88(v122);
  v54 = v121 - 8;
  *(&v125 + 1) = a1 + 1542;
  v55 = v28;
  v56 = a2;
  while (1)
  {
    v57 = v54;
    v58 = v56;
    v28 = v55;
    v59 = v36 - 1;
    if (sub_243950B88(v122) == 3 || v36 == 0)
    {
      break;
    }

    v61 = *(&v123 + 1);
    v62 = v123;
    v63 = *(*(&v123 + 1) + 4 * v123 + 2);
    v64 = *(&v125 + 1);
    v65 = v125;
    v66 = *(*(&v125 + 1) + 4 * v125 + 2);
    v67 = *(&v124 + 1);
    v68 = v124;
    v69 = *(*(&v124 + 1) + 4 * v124 + 2);
    if (*(*(&v124 + 1) + 4 * v124 + 2))
    {
      v70 = dword_24399160C[*(*(&v124 + 1) + 4 * v124 + 2)];
      v71 = *&v122[0] << SBYTE8(v122[0]) >> 1 >> (63 - v69);
      DWORD2(v122[0]) += v69;
      v72 = v71 + v70;
      v73 = v72 - 2;
      if (v72 > 2)
      {
        *&v126[8] = *v126;
LABEL_66:
        *v126 = v73;
        goto LABEL_68;
      }
    }

    else
    {
      v72 = 0;
    }

    if (v72 != 2 && v63 == 0)
    {
      v72 = 1 - v72;
    }

    if (v72)
    {
      v73 = *&v126[8 * v72];
      if (v72 != 1)
      {
        *&v126[16] = *&v126[8];
      }

      *&v126[8] = *v126;
      goto LABEL_66;
    }

    v73 = *v126;
LABEL_68:
    v75 = dword_2439913D4[v66];
    if (v66 < 0x20)
    {
      v76 = 0;
    }

    else
    {
      v76 = *&v122[0] << SBYTE8(v122[0]) >> 1 >> (63 - v75);
      DWORD2(v122[0]) += v75;
    }

    v77 = dword_243991344[v63];
    if (v63 < 0x10)
    {
      v78 = 0;
    }

    else
    {
      v78 = *&v122[0] << SBYTE8(v122[0]) >> 1 >> (63 - v77);
      DWORD2(v122[0]) += v77;
    }

    v79 = dword_243991538[v66];
    v80 = dword_2439914A8[v63];
    if ((v77 + v69 + v75) >= 0x20)
    {
      v81 = v73;
      sub_243950B88(v122);
      v73 = v81;
      v61 = *(&v123 + 1);
      v62 = v123;
      v64 = *(&v125 + 1);
      v65 = v125;
      v67 = *(&v124 + 1);
      v68 = v124;
    }

    v82 = v76 + (v79 + 3);
    v83 = v78 + v80;
    v84 = (v61 + 4 * v62);
    v85 = *v84;
    LODWORD(v84) = *(v84 + 3);
    v86 = *&v122[0] << SBYTE8(v122[0]) >> 1 >> (63 - v84);
    DWORD2(v122[0]) += v84;
    *&v123 = v86 + v85;
    v87 = (v64 + 4 * v65);
    v88 = *v87;
    LODWORD(v87) = *(v87 + 3);
    v89 = *&v122[0] << SBYTE8(v122[0]) >> 1 >> (63 - v87);
    DWORD2(v122[0]) += v87;
    *&v125 = v89 + v88;
    v90 = (v67 + 4 * v68);
    v91 = *v90;
    LODWORD(v90) = *(v90 + 3);
    v92 = *&v122[0] << SBYTE8(v122[0]) >> 1 >> (63 - v90);
    DWORD2(v122[0]) += v90;
    *&v124 = v92 + v91;
    v93 = v78 + v80 + v82;
    if (v93 > v121 - v58)
    {
      return -70;
    }

    if (v83 > v120 - v28)
    {
      return -20;
    }

    v54 = v57;
    v94 = &v58[v83];
    v5 = -70;
    if (&v58[v83] > v57)
    {
      return v5;
    }

    v56 = &v58[v93];
    if (&v58[v93] > v121)
    {
      return v5;
    }

    v55 = &v28[v83];
    if (v55 > v120)
    {
      return -20;
    }

    v36 = v59;
    v5 = v93;
    v95 = &v94[-v73];
    do
    {
      v96 = *v28;
      v28 += 8;
      *v58 = v96;
      v58 += 8;
    }

    while (v58 < v94);
    if (v73 <= v94 - v119)
    {
      goto LABEL_89;
    }

    if (v73 > &v94[-v118])
    {
      return -20;
    }

    v97 = v55;
    v98 = v95 - v119;
    v99 = (v117 + v95 - v119);
    if (v99 + v82 > v117)
    {
      v116 = v73;
      v100 = v82;
      memmove(v94, v99, v119 - v95);
      v94 -= v98;
      v54 = v57;
      if (v94 > v57 || (v82 = v98 + v100, v98 + v100 <= 2))
      {
        v55 = v97;
        if (v94 < v56)
        {
          v110 = v119;
          do
          {
            v111 = *v110++;
            *v94++ = v111;
          }

          while (v94 < v56);
        }

        goto LABEL_103;
      }

      v95 = v119;
      v73 = v116;
      v55 = v97;
LABEL_89:
      if (v73 > 7)
      {
        *v94 = *v95;
      }

      else
      {
        v101 = dword_2439916A0[v73];
        *v94 = *v95;
        v94[1] = v95[1];
        v94[2] = v95[2];
        v94[3] = v95[3];
        v102 = &v95[dword_243991680[v73]];
        *(v94 + 1) = *v102;
        v95 = &v102[-v101];
      }

      v103 = v94 + 8;
      v104 = v95 + 8;
      if (v56 <= (v121 - 13))
      {
        do
        {
          v109 = *v104;
          v104 += 8;
          *v103 = v109;
          v103 += 8;
        }

        while (v103 < &v94[v82]);
      }

      else
      {
        if (v103 < v54)
        {
          v105 = v94 + 8;
          v106 = v104;
          do
          {
            v107 = *v106++;
            *v105 = v107;
            v105 += 8;
          }

          while (v105 < v54);
          v104 += v54 - v103;
          v103 = v54;
        }

        while (v103 < v56)
        {
          v108 = *v104++;
          *v103++ = v108;
        }
      }

      goto LABEL_103;
    }

    memmove(v94, v99, v82);
    v54 = v57;
    v55 = v97;
LABEL_103:
    if (v93 >= 0xFFFFFFFFFFFFFF89)
    {
      return v5;
    }
  }

  v34 = v120;
  v33 = v121;
  if (v36)
  {
    return -20;
  }

LABEL_110:
  v112 = v34 - v28;
  if (v34 < v28)
  {
    return -20;
  }

  v113 = &v58[v112];
  if (&v58[v112] > v33)
  {
    return -70;
  }

  if (v34 != v28)
  {
    memcpy(v58, v28, v112);
    v58 = v113;
  }

  return v58 - a2;
}

uint64_t sub_2439564D8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v22 = 0;
  if (a5 >= 8)
  {
    v7 = *(&unk_243991238 + ((*(a4 + 4) >> 3) & 0x18));
    v5 = v7 + 5;
    if ((v7 + 5) > 0xFFFFFFFFFFFFFF88)
    {
      return v5;
    }

    if (v7 + 8 <= a5)
    {
      if (sub_243955A24((a1 + 21568), a4, v5))
      {
        return -20;
      }

      v12 = (a4 + v5);
      v13 = a5 - v5;
      v5 = sub_243956A80((a4 + v5), a5 - v5, &v22);
      if (v5 > 0xFFFFFFFFFFFFFF88)
      {
        return v5;
      }

      v14 = a4 + a5;
      v15 = &a2[a3];
      v16 = a2;
      while (1)
      {
        v17 = v13 - 3;
        v18 = v13 - 3 >= v5;
        v13 = v13 - 3 - v5;
        if (!v18)
        {
          break;
        }

        v19 = (v12 + 3);
        if (v22 == 3)
        {
          if (v17)
          {
            return -72;
          }

          v20 = 0;
        }

        else if (v22 == 1)
        {
          if (!v16 || v5 > v15 - v16)
          {
            if (v5)
            {
              return -70;
            }

            return v16 - a2;
          }

          memcpy(v16, v19, v5);
          v20 = v5;
        }

        else
        {
          if (v22)
          {
            return -1;
          }

          v20 = sub_243955AD4(a1, v16, v15 - v16, v19, v5);
        }

        if (!v5)
        {
          return v16 - a2;
        }

        if (v20 > 0xFFFFFFFFFFFFFF88)
        {
          return v20;
        }

        v16 += v20;
        v12 = &v19[v5];
        v5 = sub_243956A80(v12, v14 - v12, &v22);
        if (v5 >= 0xFFFFFFFFFFFFFF89)
        {
          return v5;
        }
      }
    }
  }

  return -72;
}

uint64_t sub_243956688(void *a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_243956720(a1, a6, a7);
  v12 = a1[2690];
  if (v12 != a2)
  {
    a1[2693] = v12;
    a1[2692] = &a2[a1[2691] - v12];
    a1[2691] = a2;
    a1[2690] = a2;
  }

  return sub_2439564D8(a1, a2, a3, a4, a5);
}

uint64_t sub_243956720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v27 = *MEMORY[0x277D85DE8];
  *(a1 + 21552) = 5;
  *(a1 + 5132) = 12;
  *(a1 + 21588) = 0;
  *(a1 + 21520) = 0u;
  *(a1 + 21536) = 0u;
  if (a2 && a3)
  {
    if (*a2 == -332356554)
    {
      v7 = a2 + 4;
      v8 = sub_243954AD8((a1 + 5132), (a2 + 4), a3 - 4);
      if (v8 > 0xFFFFFFFFFFFFFF88)
      {
        goto LABEL_18;
      }

      v9 = v8;
      v10 = v7 + v8;
      v11 = a3 - 4 - v8;
      v24 = 0;
      v25 = 28;
      v12 = sub_24394EDA4(v26, &v25, &v24, (v7 + v8), v11);
      if (v12 > 0xFFFFFFFFFFFFFF88)
      {
        goto LABEL_18;
      }

      if (v24 > 8)
      {
        goto LABEL_18;
      }

      v13 = v12;
      if (sub_24395360C((a1 + 2052), v26, v25, v24) >= 0xFFFFFFFFFFFFFF89)
      {
        goto LABEL_18;
      }

      v14 = v10 + v13;
      v15 = v11 - v13;
      v24 = 0;
      v25 = 52;
      v16 = sub_24394EDA4(v26, &v25, &v24, (v10 + v13), v15);
      if (v16 > 0xFFFFFFFFFFFFFF88 || v24 > 9 || (v17 = v16, sub_24395360C((a1 + 3080), v26, v25, v24) >= 0xFFFFFFFFFFFFFF89) || (v24 = 0, v25 = 35, v18 = sub_24394EDA4(v26, &v25, &v24, (v14 + v17), v15 - v17), v18 > 0xFFFFFFFFFFFFFF88) || v24 > 9 || (v19 = v18, sub_24395360C(a1, v26, v25, v24) >= 0xFFFFFFFFFFFFFF89) || (*(a1 + 21592) = 1, v20 = v13 + v9 + v17 + v19, v20 > 0xFFFFFFFFFFFFFF88))
      {
LABEL_18:
        result = -30;
        goto LABEL_19;
      }

      v21 = v7 + v20;
      v22 = *(a1 + 21520);
      *(a1 + 21544) = v22;
      *(a1 + 21536) = v21 + *(a1 + 21528) - v22;
      *(a1 + 21528) = v21;
    }

    else
    {
      *(a1 + 21536) = a2;
      *(a1 + 21528) = a2;
    }

    result = 0;
    *(a1 + 21520) = a2 + a3;
  }

LABEL_19:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_24395696C(unint64_t result, unint64_t a2, void *a3, uint64_t *a4)
{
  v14 = 0;
  if (a2 < 5)
  {
    goto LABEL_2;
  }

  v7 = result;
  v8 = *(&unk_243991238 + ((*(result + 4) >> 3) & 0x18));
  v6 = v8 + 5;
  if ((v8 + 5) >= 0xFFFFFFFFFFFFFF89)
  {
    goto LABEL_14;
  }

  if (*result != -47205082)
  {
    v6 = -10;
    goto LABEL_14;
  }

  if (v8 + 8 > a2)
  {
LABEL_2:
    v6 = -72;
LABEL_14:
    *a3 = v6;
    goto LABEL_15;
  }

  v9 = result + v6;
  v10 = a2 - v6;
  result = sub_243956A80((result + v6), a2 - v6, &v14);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    v11 = 0;
    do
    {
      v12 = v10 - 3 >= result;
      v10 = v10 - 3 - result;
      if (!v12)
      {
        goto LABEL_2;
      }

      v13 = v9 + 3;
      if (!result)
      {
        *a3 = v13 - v7;
        goto LABEL_16;
      }

      v9 = v13 + result;
      result = sub_243956A80((v13 + result), v10, &v14);
      v11 += 0x20000;
    }

    while (result < 0xFFFFFFFFFFFFFF89);
  }

  *a3 = result;
LABEL_15:
  v11 = -2;
LABEL_16:
  *a4 = v11;
  return result;
}

uint64_t sub_243956A80(unsigned __int8 *a1, unint64_t a2, int *a3)
{
  if (a2 < 3)
  {
    return -72;
  }

  v4 = *a1 >> 6;
  *a3 = v4;
  HIDWORD(v5) = *a1 & 7;
  LODWORD(v5) = bswap32(*(a1 + 1));
  result = (v5 >> 16);
  if (v4 == 2)
  {
    v6 = result;
  }

  else
  {
    v6 = 0;
  }

  a3[1] = v6;
  if (v4 == 3)
  {
    return 0;
  }

  if (v4 == 2)
  {
    return 1;
  }

  return result;
}

uint64_t sub_243956ADC(void **a1)
{
  if (a1)
  {
    free(*a1);
    free(a1[4]);
    free(a1[7]);
    free(a1);
  }

  return 0;
}

uint64_t sub_243956B28(uint64_t a1, int a2, unsigned int a3, unsigned int a4, unsigned int *a5, unint64_t a6, uint64_t a7, unsigned int a8, int a9)
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = a3;
  if (!a2)
  {
    sub_24395360C(a1, a7, a3, a8);
    v11 = 0;
    goto LABEL_16;
  }

  if (a2 != 2)
  {
    if (a2 == 1)
    {
      if (!a6)
      {
        v11 = -72;
        goto LABEL_16;
      }

      v10 = *a5;
      if (v10 <= a3)
      {
        *a1 = 0;
        *(a1 + 4) = 0;
        *(a1 + 6) = v10;
        v11 = 1;
        *(a1 + 7) = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0;
      v13 = sub_24394EDA4(v18, &v17, &v16, a5, a6);
      if (v13 <= 0xFFFFFFFFFFFFFF88 && v16 <= a4)
      {
        v11 = v13;
        sub_24395360C(a1, v18, v17, v16);
        goto LABEL_16;
      }
    }

    v11 = -20;
    goto LABEL_16;
  }

  if (a9)
  {
    v11 = 0;
  }

  else
  {
    v11 = -20;
  }

LABEL_16:
  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

unint64_t sub_243956C4C(char *__b, size_t __len, uint64_t a3, _DWORD *a4, _DWORD *a5, char *a6, unint64_t a7)
{
  if (!a7)
  {
    return -72;
  }

  v11 = *a6;
  if (*a6 < 0)
  {
    if (v11 >= 0xF2)
    {
      v14 = dword_2439916C0[v11 - 242];
      memset(__b, 1, __len);
      v11 = 0;
      goto LABEL_9;
    }

    if ((v11 - 126) >> 1 >= a7)
    {
      return -72;
    }

    v14 = v11 - 127;
    if (v11 - 127 < __len)
    {
      if (v11 != 127)
      {
        v25 = 0;
        v26 = a6 + 1;
        v27 = __b + 1;
        do
        {
          *(v27 - 1) = *v26 >> 4;
          v28 = *v26++;
          *v27 = v28 & 0xF;
          v27 += 2;
          v25 += 2;
        }

        while (v14 > v25);
        v11 = (v11 - 126) >> 1;
LABEL_9:
        *(a3 + 64) = 0;
        *(a3 + 32) = 0u;
        *(a3 + 48) = 0u;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        if (v14)
        {
          v15 = 0;
          v16 = 0;
          v17 = 1;
          while (1)
          {
            v18 = __b[v15];
            if (v18 > 0xF)
            {
              break;
            }

            ++*(a3 + 4 * v18);
            v16 += 1 << __b[v15] >> 1;
            v15 = v17;
            if (v14 <= v17++)
            {
              if (!v16)
              {
                return -20;
              }

              v20 = __clz(v16);
              if ((v20 ^ 0x1F) > 0xF)
              {
                return -20;
              }

              *a5 = 32 - v20;
              v21 = (2 << (v20 ^ 0x1F)) - v16;
              v22 = __clz(v21) ^ 0x1F;
              if (1 << v22 != v21)
              {
                return -20;
              }

              v23 = v22 + 1;
              __b[v14] = v23;
              ++*(a3 + 4 * v23);
              v24 = *(a3 + 4);
              result = -20;
              if (v24 >= 2 && (v24 & 1) == 0)
              {
                *a4 = v14 + 1;
                return v11 + 1;
              }

              return result;
            }
          }
        }

        return -20;
      }

      *(a3 + 64) = 0;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    return -20;
  }

  if (v11 >= a7)
  {
    return -72;
  }

  v12 = *a6;
  result = sub_243956E48();
  v14 = result;
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_243956E48()
{
  v0 = MEMORY[0x28223BE20]();
  v18[64] = *MEMORY[0x277D85DE8];
  v15 = 255;
  if (v3 < 2)
  {
    goto LABEL_2;
  }

  v5 = v3;
  v6 = v2;
  v7 = v1;
  v8 = v0;
  memset(v17, 0, 512);
  v16 = 0;
  v9 = sub_24394EDA4(v18, &v15, &v16, v2, v3);
  v4 = v9;
  if (v9 > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_9;
  }

  v10 = v5 > v9;
  v11 = v5 - v9;
  if (v10)
  {
    v12 = sub_24395360C(v17, v18, v15, v16);
    if (v12 <= 0xFFFFFFFFFFFFFF88)
    {
      v12 = sub_243956FA4(v8, v7, v6 + v4, v11, v17);
    }

    v4 = v12;
  }

  else
  {
LABEL_2:
    v4 = -72;
  }

LABEL_9:
  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

unint64_t sub_243956FA4(unint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned __int16 *a5)
{
  v7 = a1 + a2;
  v8 = a1 + a2 - 3;
  if (a5[1])
  {
    v80 = 0uLL;
    v81 = 0uLL;
    result = sub_243959D28(&v80, a3, a4);
    if (result <= 0xFFFFFFFFFFFFFF88)
    {
      v11 = *a5;
      v10 = a5 + 2;
      v12 = v80 << SBYTE8(v80) >> 1 >> (63 - v11);
      DWORD2(v80) += v11;
      sub_243950B88(&v80);
      v13 = v80 << SBYTE8(v80) >> 1 >> (63 - v11);
      DWORD2(v80) += v11;
      sub_243950B88(&v80);
      if (sub_243950B88(&v80) || v8 <= a1)
      {
        v14 = a1;
      }

      else
      {
        v14 = a1;
        do
        {
          v15 = &v10[2 * v12];
          v16 = *v15;
          v17 = *(v15 + 2);
          LODWORD(v15) = *(v15 + 3);
          v18 = v80;
          v19 = v80 << SBYTE8(v80) >> -v15;
          LODWORD(v15) = DWORD2(v80) + v15;
          *v14 = v17;
          v20 = &v10[2 * v13];
          v21 = *v20;
          v22 = *(v20 + 2);
          LODWORD(v20) = *(v20 + 3);
          v23 = (v18 << v15) >> -v20;
          LODWORD(v15) = v15 + v20;
          v14[1] = v22;
          v24 = &v10[2 * v19 + 2 * v16];
          v25 = *v24;
          LOBYTE(v19) = *(v24 + 2);
          LODWORD(v24) = *(v24 + 3);
          v26 = (v18 << v15) >> -v24;
          LODWORD(v15) = v15 + v24;
          v12 = v26 + v25;
          v14[2] = v19;
          v27 = &v10[2 * v23 + 2 * v21];
          v28 = *v27;
          LOBYTE(v21) = *(v27 + 2);
          LODWORD(v27) = *(v27 + 3);
          DWORD2(v80) = v15 + v27;
          v13 = ((v18 << v15) >> -v27) + v28;
          v14[3] = v21;
          v14 += 4;
        }

        while (!sub_243950B88(&v80) && v14 < v8);
      }

      v48 = v7 - 2;
      v49 = &v14[-a1];
      v50 = v14 + 1;
      v51 = 2;
      while (1)
      {
        v52 = v49;
        if ((v50 - 1) > v48)
        {
          return -70;
        }

        v53 = &v10[2 * v12];
        v54 = *v53;
        v55 = *(v53 + 2);
        v56 = *(v53 + 3);
        v57 = v80;
        v58 = BYTE8(v80);
        DWORD2(v80) += v56;
        *(v50 - 1) = v55;
        if (sub_243950B88(&v80) == 3)
        {
          goto LABEL_23;
        }

        if (v50 > v48)
        {
          return -70;
        }

        v12 = ((v57 << v58) >> -v56) + v54;
        v59 = &v10[2 * v13];
        v60 = *v59;
        v61 = *(v59 + 2);
        LODWORD(v59) = *(v59 + 3);
        v62 = v80 << SBYTE8(v80) >> -v59;
        DWORD2(v80) += v59;
        v13 = v62 + v60;
        *v50 = v61;
        v50 += 2;
        v63 = sub_243950B88(&v80);
        v49 = v52 + 2;
        if (v63 == 3)
        {
          --v50;
          v51 = 3;
          v13 = v12;
LABEL_23:
          *v50 = v10[2 * v13 + 1];
          return &v52[v51];
        }
      }
    }
  }

  else
  {
    v80 = 0uLL;
    v81 = 0uLL;
    result = sub_243959D28(&v80, a3, a4);
    if (result <= 0xFFFFFFFFFFFFFF88)
    {
      v30 = *a5;
      v29 = a5 + 2;
      v31 = v80 << SBYTE8(v80) >> 1 >> (63 - v30);
      DWORD2(v80) += v30;
      sub_243950B88(&v80);
      v32 = v80 << SBYTE8(v80) >> 1 >> (63 - v30);
      DWORD2(v80) += v30;
      sub_243950B88(&v80);
      if (sub_243950B88(&v80) || v8 <= a1)
      {
        v33 = a1;
      }

      else
      {
        v33 = a1;
        do
        {
          v34 = &v29[2 * v31];
          v35 = *v34;
          v36 = *(v34 + 2);
          LODWORD(v34) = *(v34 + 3);
          v37 = v80;
          v38 = v80 << SBYTE8(v80) >> 1 >> (63 - v34);
          LODWORD(v34) = DWORD2(v80) + v34;
          *v33 = v36;
          v39 = &v29[2 * v32];
          v40 = *v39;
          v41 = *(v39 + 2);
          LODWORD(v39) = *(v39 + 3);
          v42 = (v37 << v34) >> 1 >> (63 - v39);
          LODWORD(v34) = v34 + v39;
          v33[1] = v41;
          v43 = &v29[2 * v38 + 2 * v35];
          v44 = *v43;
          LOBYTE(v38) = *(v43 + 2);
          LODWORD(v43) = *(v43 + 3);
          v45 = (v37 << v34) >> 1 >> (63 - v43);
          LODWORD(v34) = v34 + v43;
          v31 = v45 + v44;
          v33[2] = v38;
          v46 = &v29[2 * v42 + 2 * v40];
          v47 = *v46;
          LOBYTE(v40) = *(v46 + 2);
          LODWORD(v46) = *(v46 + 3);
          DWORD2(v80) = v34 + v46;
          v32 = ((v37 << v34) >> 1 >> (63 - v46)) + v47;
          v33[3] = v40;
          v33 += 4;
        }

        while (!sub_243950B88(&v80) && v33 < v8);
      }

      v64 = v7 - 2;
      v65 = &v33[-a1];
      v66 = v33 + 1;
      while (1)
      {
        v67 = v65;
        if ((v66 - 1) > v64)
        {
          return -70;
        }

        v68 = &v29[2 * v31];
        v69 = *v68;
        v70 = *(v68 + 2);
        v71 = *(v68 + 3);
        v72 = v80;
        v73 = BYTE8(v80);
        DWORD2(v80) += v71;
        *(v66 - 1) = v70;
        if (sub_243950B88(&v80) == 3)
        {
          break;
        }

        if (v66 > v64)
        {
          return -70;
        }

        v31 = ((v72 << v73) >> 1 >> (63 - v71)) + v69;
        v74 = &v29[2 * v32];
        v75 = *v74;
        v76 = *(v74 + 2);
        LODWORD(v74) = *(v74 + 3);
        v77 = v80 << SBYTE8(v80) >> 1 >> (63 - v74);
        DWORD2(v80) += v74;
        v32 = v77 + v75;
        *v66 = v76;
        v66 += 2;
        v78 = sub_243950B88(&v80);
        v65 = v67 + 2;
        if (v78 == 3)
        {
          --v66;
          v79 = 3;
          v32 = v31;
LABEL_33:
          *v66 = v29[2 * v32 + 1];
          return &v67[v79];
        }
      }

      v79 = 2;
      goto LABEL_33;
    }
  }

  return result;
}

unint64_t sub_243957478(unsigned int *a1, char *a2, unint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  result = sub_243956C4C(__b, 0x100uLL, v20, &v18, &v19, a2, a3);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    v5 = v19;
    if (v19 <= *a1 + 1)
    {
      *a1 = *a1 & 0xFF0000FF | (v19 << 16);
      if (v5)
      {
        v6 = 0;
        v7 = 0;
        do
        {
          v8 = v20[v6 + 1] << v6;
          v20[v6 + 1] = v7;
          v7 += v8;
          ++v6;
        }

        while (v5 != v6);
      }

      v9 = v18;
      if (v18)
      {
        v10 = 0;
        v11 = v5 + 1;
        do
        {
          v12 = __b[v10];
          v13 = v20[v12];
          v14 = (v13 + (1 << v12 >> 1));
          if (v13 < v14)
          {
            v15 = a1 + 2 * v13 + 5;
            v16 = v14 - v13;
            do
            {
              *(v15 - 1) = v10;
              *v15 = v11 - v12;
              v15 += 2;
              --v16;
            }

            while (v16);
          }

          v20[v12] = v14;
          ++v10;
        }

        while (v10 != v9);
      }
    }

    else
    {
      result = -44;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2439575B8(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, int *a5)
{
  v11 = 0u;
  v12 = 0u;
  v8 = *a5;
  result = sub_243959D28(&v11, a3, a4);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    sub_243954298(a1, &v11, &a1[a2], (a5 + 1), BYTE2(v8));
    if (DWORD2(v11) == 64 && v12 == *(&v12 + 1))
    {
      return a2;
    }

    else
    {
      return -20;
    }
  }

  return result;
}

unint64_t sub_243957644(unsigned int *a1, _BYTE *a2, uint64_t a3, char *a4, unint64_t a5)
{
  result = sub_243957478(a1, a4, a5);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    if (a5 <= result)
    {
      return -72;
    }

    else
    {

      return sub_2439575B8(a2, a3, &a4[result], a5 - result, a1);
    }
  }

  return result;
}

unint64_t sub_2439576D8(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4, unsigned int *a5)
{
  if (a4 < 0xA)
  {
    return -20;
  }

  v92 = v5;
  v93 = v6;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v8 = (a5 + 1);
  v9 = *a5;
  v84 = 0u;
  v85 = 0u;
  v10 = *a3;
  v11 = *(a3 + 1);
  v12 = *(a3 + 2);
  v13 = v10 + v11 + v12 + 6;
  v14 = a4 - v13;
  if (a4 < v13)
  {
    return -20;
  }

  v17 = (a3 + 6);
  result = sub_243959D28(&v90, a3 + 6, *a3);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    v18 = v17 + v10;
    result = sub_243959D28(&v88, v18, v11);
    if (result <= 0xFFFFFFFFFFFFFF88)
    {
      v19 = &v18[v11];
      result = sub_243959D28(&v86, v19, v12);
      if (result <= 0xFFFFFFFFFFFFFF88)
      {
        result = sub_243959D28(&v84, &v19[v12], v14);
        if (result <= 0xFFFFFFFFFFFFFF88)
        {
          v20 = &a1[a2];
          v81 = &a1[(a2 + 3) >> 2];
          v82 = &v81[(a2 + 3) >> 2];
          v21 = sub_243950B88(&v90);
          v22 = sub_243950B88(&v88) | v21;
          v23 = sub_243950B88(&v86);
          if (v22 | v23 | sub_243950B88(&v84))
          {
            v68 = &a1[a2];
            v66 = &v82[(a2 + 3) >> 2];
            v69 = &a1[(a2 + 3) >> 2];
            v67 = &v81[(a2 + 3) >> 2];
            v65 = v69;
            v24 = v66;
            v70 = v67;
          }

          else
          {
            v83 = (v20 - 7);
            v24 = &v82[(a2 + 3) >> 2];
            if (v24 >= (v20 - 7))
            {
              v68 = &a1[a2];
              v66 = &v82[(a2 + 3) >> 2];
              v69 = &a1[(a2 + 3) >> 2];
              v70 = &v81[(a2 + 3) >> 2];
              v67 = v70;
              v65 = v69;
            }

            else
            {
              v80 = &a1[a2];
              v25 = (a2 + 3) >> 2;
              v26 = -HIWORD(v9) & 0x3F;
              v27 = 3 * v25;
              do
              {
                v28 = &a1[v25];
                v29 = &a1[2 * v25];
                v30 = &a1[v27];
                v31 = v90;
                v32 = (v8 + 2 * (v90 << SBYTE8(v90) >> v26));
                v33 = DWORD2(v90) + v32[1];
                *a1 = *v32;
                v34 = v88;
                v35 = (v8 + 2 * (v88 << SBYTE8(v88) >> v26));
                v36 = DWORD2(v88) + v35[1];
                *v28 = *v35;
                v37 = v86;
                v38 = (v8 + 2 * (v86 << SBYTE8(v86) >> v26));
                v39 = *v38;
                LODWORD(v38) = DWORD2(v86) + v38[1];
                *v29 = v39;
                v40 = v84;
                v41 = (v8 + 2 * (v84 << SBYTE8(v84) >> v26));
                v42 = DWORD2(v84) + v41[1];
                *v30 = *v41;
                v43 = (v8 + 2 * ((v31 << v33) >> v26));
                v44 = v33 + v43[1];
                a1[1] = *v43;
                v45 = (v8 + 2 * ((v34 << v36) >> v26));
                v46 = v36 + v45[1];
                v28[1] = *v45;
                v47 = (v8 + 2 * ((v37 << v38) >> v26));
                LODWORD(v38) = v38 + v47[1];
                v29[1] = *v47;
                v48 = (v8 + 2 * ((v40 << v42) >> v26));
                v49 = v42 + v48[1];
                v30[1] = *v48;
                v50 = (v8 + 2 * ((v31 << v44) >> v26));
                v51 = v44 + v50[1];
                a1[2] = *v50;
                v52 = (v8 + 2 * ((v34 << v46) >> v26));
                v53 = v46 + v52[1];
                v28[2] = *v52;
                v54 = (v8 + 2 * ((v37 << v38) >> v26));
                LODWORD(v38) = v38 + v54[1];
                v29[2] = *v54;
                v55 = (v8 + 2 * ((v40 << v49) >> v26));
                v56 = v49 + v55[1];
                v30[2] = *v55;
                v57 = (v8 + 2 * ((v31 << v51) >> v26));
                LOBYTE(v55) = *v57;
                DWORD2(v90) = v51 + v57[1];
                v58 = a1 + 4;
                a1[3] = v55;
                v59 = (v8 + 2 * ((v34 << v53) >> v26));
                LOBYTE(v34) = *v59;
                DWORD2(v88) = v53 + v59[1];
                v28[3] = v34;
                v60 = (v8 + 2 * ((v37 << v38) >> v26));
                LOBYTE(v59) = *v60;
                DWORD2(v86) = v38 + v60[1];
                v29[3] = v59;
                v61 = (v8 + 2 * ((v40 << v56) >> v26));
                LOBYTE(v60) = *v61;
                DWORD2(v84) = v56 + v61[1];
                v30[3] = v60;
                v62 = sub_243950B88(&v90);
                v63 = sub_243950B88(&v88) | v62;
                v64 = sub_243950B88(&v86);
                if (v63 | v64 | sub_243950B88(&v84))
                {
                  break;
                }

                a1 = v58;
              }

              while ((v30 + 4) < v83);
              v65 = &v58[v25];
              v66 = &v58[v27];
              a1 = v58;
              v67 = &v58[2 * v25];
              v24 = &v82[(a2 + 3) >> 2];
              v68 = v80;
              v69 = v81;
              v70 = &v81[(a2 + 3) >> 2];
            }
          }

          result = -20;
          if (a1 <= v69 && v65 <= v70 && v67 <= v24)
          {
            v71 = a1;
            v72 = v66;
            sub_243954298(v71, &v90, v69, v8, BYTE2(v9));
            sub_243954298(v65, &v88, v70, v8, BYTE2(v9));
            sub_243954298(v67, &v86, v24, v8, BYTE2(v9));
            sub_243954298(v72, &v84, v68, v8, BYTE2(v9));
            if (DWORD2(v84) == 64 && v85 == *(&v85 + 1) && DWORD2(v86) == 64 && v87 == *(&v87 + 1) && DWORD2(v88) == 64 && v89 == *(&v89 + 1) && DWORD2(v90) == 64 && v91 == *(&v91 + 1))
            {
              return a2;
            }

            else
            {
              return -20;
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_243957BDC(unsigned int *a1, _BYTE *a2, uint64_t a3, char *a4, unint64_t a5)
{
  result = sub_243957478(a1, a4, a5);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    if (a5 <= result)
    {
      return -72;
    }

    else
    {

      return sub_2439576D8(a2, a3, &a4[result], a5 - result, a1);
    }
  }

  return result;
}

unint64_t sub_243957C70(unsigned int *a1, char *a2, unint64_t a3)
{
  v120 = *MEMORY[0x277D85DE8];
  memset(v114, 0, 68);
  v113 = 0;
  memset(v112, 0, sizeof(v112));
  v4 = a1 + 1;
  v3 = *a1;
  v5 = *a1;
  if (v5 > 0x10)
  {
    goto LABEL_2;
  }

  v79 = 0;
  result = sub_243956C4C(__b, 0x100uLL, v114, &v79, &v79 + 1, a2, a3);
  if (result > 0xFFFFFFFFFFFFFF88)
  {
    goto LABEL_58;
  }

  v8 = HIDWORD(v79);
  v9 = v5 - HIDWORD(v79);
  if (v5 < HIDWORD(v79))
  {
LABEL_2:
    result = -44;
  }

  else
  {
    v10 = HIDWORD(v79) + 1;
    v11 = -1;
    do
    {
      v12 = v114[v8--];
      ++v11;
    }

    while (!v12);
    v13 = v8 + 2;
    if (v8 > 0xFFFFFFFD)
    {
      v19 = 0;
    }

    else
    {
      v14 = 0;
      v15 = &v114[1];
      v16 = &v112[2];
      v17 = v13 - 1;
      do
      {
        v18 = *v15++;
        v19 = v18 + v14;
        *v16++ = v14;
        v14 += v18;
        --v17;
      }

      while (v17);
    }

    v112[1] = v19;
    v20 = v79;
    if (v79)
    {
      v21 = 0;
      do
      {
        v22 = __b[v21];
        v23 = v112[v22 + 1];
        v112[v22 + 1] = v23 + 1;
        v24 = &v114[20] + 2 * v23;
        *v24 = v21;
        v24[1] = v22;
        ++v21;
      }

      while (v20 != v21);
    }

    v77 = a1;
    v25 = v5 - v11;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v112[1] = 0;
    if (v8 <= 0xFFFFFFFD)
    {
      v26 = 0;
      v27 = &v114[1];
      v28 = &v80 + 1;
      v29 = v13 - 1;
      do
      {
        v30 = *v27++;
        *v28++ = v26;
        v26 += v30 << v9++;
        --v29;
      }

      while (v29);
    }

    v31 = v11 + 1;
    if (v11 + 1 < v25)
    {
      v32 = v11 + 1;
      v33 = 17 * v32;
      v34 = v13 - 1;
      do
      {
        if (v8 <= 0xFFFFFFFD)
        {
          v35 = v34;
          v36 = &v80 + 1;
          do
          {
            v36[v33] = *v36 >> v32;
            ++v36;
            --v35;
          }

          while (v35);
        }

        ++v32;
        v33 += 17;
      }

      while (v25 != v32);
    }

    v116[1] = v81;
    v116[2] = v82;
    v116[3] = v83;
    v117 = v84;
    v116[0] = v80;
    if (v19)
    {
      v37 = 0;
      v38 = v10 - v5;
      v78 = a1 + 2;
      v39 = vdupq_n_s64(4uLL);
      do
      {
        v40 = &v114[20] + 2 * v37;
        v41 = *v40;
        v42 = v40[1];
        v43 = v10 - v42;
        v44 = *(v116 + v42);
        v45 = v5 - (v10 - v42);
        v46 = 1 << (v5 - (v10 - v42));
        if (v45 >= v31)
        {
          v55 = &v80 + 68 * v43;
          v56 = *v55;
          v118[1] = *(v55 + 1);
          v57 = *(v55 + 3);
          v118[2] = *(v55 + 2);
          v118[3] = v57;
          if ((v43 + v38) <= 1)
          {
            v58 = 1;
          }

          else
          {
            v58 = v43 + v38;
          }

          v59 = v112[v58];
          v119 = *(v55 + 16);
          v118[0] = v56;
          if ((v43 + v38) >= 2)
          {
            v60 = *(v118 + v58);
            if (v60)
            {
              v61 = v41 & 0xFF00FFFF | ((v10 - v42) << 16) | 0x1000000;
              v62 = (v60 + 3) & 0x1FFFFFFFCLL;
              v63 = vdupq_n_s64(v60 - 1);
              v64 = &v78[v44];
              v65 = xmmword_24398C940;
              v66 = xmmword_24398E4E0;
              do
              {
                v67 = vmovn_s64(vcgeq_u64(v63, v65));
                if (vuzp1_s16(v67, 2).u8[0])
                {
                  *(v64 - 1) = v61;
                }

                if (vuzp1_s16(v67, 2).i8[2])
                {
                  *v64 = v61;
                }

                if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v63, *&v66))).i32[1])
                {
                  v64[1] = v61;
                  v64[2] = v61;
                }

                v66 = vaddq_s64(v66, v39);
                v65 = vaddq_s64(v65, v39);
                v64 += 4;
                v62 -= 4;
              }

              while (v62);
            }
          }

          if (v19 != v59)
          {
            v68 = 0;
            v69 = (v19 - v59);
            v70 = &v114[20] + 2 * v59;
            do
            {
              v71 = &v70[2 * v68];
              v72 = v71[1];
              v73 = *(v118 + v72);
              v74 = (1 << (v45 - (v10 - v72))) + v73;
              v75 = (*v71 << 8) | ((v10 - v72 + v43) << 16) | v41 | 0x2000000;
              do
              {
                v4[v44 + v73++] = v75;
              }

              while (v73 < v74);
              *(v118 + v72) = v74;
              ++v68;
            }

            while (v68 != v69);
          }

          LODWORD(v47) = v46 + v44;
        }

        else
        {
          v47 = (v46 + v44);
          if (v44 < v47)
          {
            v48 = 0;
            v49 = v41 & 0xFF00FFFF | ((v10 - v42) << 16) | 0x1000000;
            v50 = (v47 - v44 + 3) & 0xFFFFFFFFFFFFFFFCLL;
            v51 = vdupq_n_s64(v47 - v44 - 1);
            v52 = &v78[v44];
            do
            {
              v53 = vdupq_n_s64(v48);
              v54 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(v53, xmmword_24398C940)));
              if (vuzp1_s16(v54, 2).u8[0])
              {
                *(v52 - 1) = v49;
              }

              if (vuzp1_s16(v54, 2).i8[2])
              {
                *v52 = v49;
              }

              if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v51, vorrq_s8(v53, xmmword_24398E4E0)))).i32[1])
              {
                v52[1] = v49;
                v52[2] = v49;
              }

              v48 += 4;
              v52 += 4;
            }

            while (v50 != v48);
          }
        }

        *(v116 + v42) = v47;
        ++v37;
      }

      while (v37 != v19);
    }

    *v77 = v3 & 0xFF00001F | ((v3 & 0x1F) << 16) | 0x100;
  }

LABEL_58:
  v76 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2439581A8(_WORD *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v10 = 0u;
  v11 = 0u;
  result = sub_243959D28(&v10, a3, a4);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    sub_243955070(a1, &v10, a1 + a2, a5 + 4, *(a5 + 2));
    if (DWORD2(v10) == 64 && v11 == *(&v11 + 1))
    {
      return a2;
    }

    else
    {
      return -20;
    }
  }

  return result;
}

uint64_t sub_243958230(_WORD *a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4, unsigned int *a5)
{
  if (a4 < 0xA)
  {
    return -20;
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v5 = (a5 + 1);
  v6 = *a5;
  v93 = 0u;
  v94 = 0u;
  v7 = *a3;
  v8 = *(a3 + 1);
  v9 = *(a3 + 2);
  v10 = v7 + v8 + v9 + 6;
  v11 = a4 - v10;
  if (a4 < v10)
  {
    return -20;
  }

  v15 = (a3 + 6);
  v16 = sub_243959D28(&v99, a3 + 6, *a3);
  if (v16 > 0xFFFFFFFFFFFFFF88)
  {
    return v16;
  }

  v17 = v15 + v7;
  v16 = sub_243959D28(&v97, v17, v8);
  if (v16 > 0xFFFFFFFFFFFFFF88)
  {
    return v16;
  }

  v18 = &v17[v8];
  v16 = sub_243959D28(&v95, v18, v9);
  if (v16 > 0xFFFFFFFFFFFFFF88)
  {
    return v16;
  }

  v16 = sub_243959D28(&v93, &v18[v9], v11);
  if (v16 > 0xFFFFFFFFFFFFFF88)
  {
    return v16;
  }

  v19 = a1 + a2;
  v20 = (a1 + ((a2 + 3) >> 2) + ((a2 + 3) >> 2));
  v21 = v20 + ((a2 + 3) >> 2);
  v22 = sub_243950B88(&v99);
  v23 = sub_243950B88(&v97) | v22;
  v24 = sub_243950B88(&v95);
  v89 = BYTE2(v6);
  v88 = a1 + a2;
  v91 = v20;
  v92 = v21;
  v90 = a1 + ((a2 + 3) >> 2);
  if (v23 | v24 | sub_243950B88(&v93) || (v25 = (v19 - 7), v21 >= v19 - 7))
  {
    v27 = (a1 + ((a2 + 3) >> 2));
  }

  else
  {
    v26 = -HIWORD(v6) & 0x3F;
    v27 = (a1 + ((a2 + 3) >> 2));
    do
    {
      v28 = v99;
      v29 = DWORD2(v99);
      v30 = v5 + 4 * (v99 << SBYTE8(v99) >> v26);
      *a1 = *v30;
      v31 = v29 + *(v30 + 2);
      v32 = (a1 + *(v30 + 3));
      v33 = v97;
      LODWORD(v30) = DWORD2(v97);
      v34 = v5 + 4 * (v97 << SBYTE8(v97) >> v26);
      *v27 = *v34;
      v35 = v30 + *(v34 + 2);
      v36 = (v27 + *(v34 + 3));
      v37 = v95;
      LODWORD(v34) = DWORD2(v95);
      v38 = v5 + 4 * (v95 << SBYTE8(v95) >> v26);
      *v20 = *v38;
      v39 = v34 + *(v38 + 2);
      v40 = (v20 + *(v38 + 3));
      v41 = v93;
      v42 = DWORD2(v93);
      v43 = v5 + 4 * (v93 << SBYTE8(v93) >> v26);
      *v21 = *v43;
      v44 = v42 + *(v43 + 2);
      v45 = &v21[*(v43 + 3)];
      v46 = v5 + 4 * ((v28 << v31) >> v26);
      *v32 = *v46;
      v47 = v31 + *(v46 + 2);
      v48 = *(v46 + 3);
      v49 = v5 + 4 * ((v33 << v35) >> v26);
      *v36 = *v49;
      v50 = v35 + *(v49 + 2);
      v51 = (v36 + *(v49 + 3));
      v52 = v5 + 4 * ((v37 << v39) >> v26);
      *v40 = *v52;
      v53 = v39 + *(v52 + 2);
      v54 = (v40 + *(v52 + 3));
      v55 = v5 + 4 * ((v41 << v44) >> v26);
      *v45 = *v55;
      v56 = v44 + *(v55 + 2);
      v57 = &v45[*(v55 + 3)];
      v58 = (v32 + v48);
      v59 = v5 + 4 * ((v28 << v47) >> v26);
      *v58 = *v59;
      v60 = v47 + *(v59 + 2);
      v61 = (v58 + *(v59 + 3));
      v62 = v5 + 4 * ((v33 << v50) >> v26);
      *v51 = *v62;
      v63 = v50 + *(v62 + 2);
      v64 = (v51 + *(v62 + 3));
      v65 = v5 + 4 * ((v37 << v53) >> v26);
      *v54 = *v65;
      v66 = v53 + *(v65 + 2);
      v67 = (v54 + *(v65 + 3));
      v68 = v5 + 4 * ((v41 << v56) >> v26);
      *v57 = *v68;
      v69 = v56 + *(v68 + 2);
      v70 = &v57[*(v68 + 3)];
      v71 = v5 + 4 * ((v28 << v60) >> v26);
      *v61 = *v71;
      DWORD2(v99) = v60 + *(v71 + 2);
      a1 = (v61 + *(v71 + 3));
      v72 = v5 + 4 * ((v33 << v63) >> v26);
      *v64 = *v72;
      DWORD2(v97) = v63 + *(v72 + 2);
      v27 = (v64 + *(v72 + 3));
      v73 = v5 + 4 * ((v37 << v66) >> v26);
      *v67 = *v73;
      DWORD2(v95) = v66 + *(v73 + 2);
      v20 = (v67 + *(v73 + 3));
      v74 = v5 + 4 * ((v41 << v69) >> v26);
      *v70 = *v74;
      DWORD2(v93) = v69 + *(v74 + 2);
      v21 = &v70[*(v74 + 3)];
      v75 = sub_243950B88(&v99);
      v76 = sub_243950B88(&v97) | v75;
      v77 = sub_243950B88(&v95);
    }

    while (!(v76 | v77 | sub_243950B88(&v93)) && v21 < v25);
  }

  v12 = -20;
  if (a1 <= v90 && v27 <= v91 && v20 <= v92)
  {
    sub_243955070(a1, &v99, v90, v5, v89);
    sub_243955070(v27, &v97, v91, v5, v89);
    sub_243955070(v20, &v95, v92, v5, v89);
    sub_243955070(v21, &v93, v88, v5, v89);
    if (DWORD2(v93) == 64 && v94 == *(&v94 + 1) && DWORD2(v95) == 64 && v96 == *(&v96 + 1) && DWORD2(v97) == 64 && v98 == *(&v98 + 1) && DWORD2(v99) == 64 && v100 == *(&v100 + 1))
    {
      return a2;
    }
  }

  return v12;
}

unint64_t sub_243958738(unsigned int *a1, _WORD *a2, uint64_t a3, char *a4, unint64_t a5)
{
  result = sub_243957C70(a1, a4, a5);
  if (result <= 0xFFFFFFFFFFFFFF88)
  {
    if (a5 <= result)
    {
      return -72;
    }

    else
    {

      return sub_243958230(a2, a3, &a4[result], a5 - result, a1);
    }
  }

  return result;
}

uint64_t sub_2439587CC(unsigned int *a1, _BYTE *a2, unint64_t a3, char *a4, unint64_t a5)
{
  if (!a3)
  {
    return -70;
  }

  v5 = -20;
  if (a5 >= a3 || a5 < 2)
  {
    return v5;
  }

  v6 = (&unk_2439916F8 + 24 * (16 * a5 / a3));
  v7 = *v6 + v6[1] * (a3 >> 8);
  LODWORD(v6) = v6[2] + v6[3] * (a3 >> 8);
  if (v6 + (v6 >> 3) >= v7)
  {
    return sub_243957BDC(a1, a2, a3, a4, a5);
  }

  else
  {
    return sub_243958738(a1, a2, a3, a4, a5);
  }
}