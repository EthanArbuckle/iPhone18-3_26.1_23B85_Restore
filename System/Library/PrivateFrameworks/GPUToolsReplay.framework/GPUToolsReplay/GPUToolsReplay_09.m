void *sub_24D7C6FE8(void *result, void *a2, __int16 a3)
{
  v11 = a3;
  if (*(result + 624) == 1)
  {
    v3 = result;
    sub_24D7A1734(result, a2);
    if (*(v3 + 624) == 1)
    {
      v4 = sub_24D790464(v3, (*(v3 + 616) - 1)) & 3;
      if (v4 > 1)
      {
        if (v4 == 2)
        {
          v5 = *(v3 + 560) + *(v3 + 552) - 1;
          v6 = *(*(v3 + 528) + ((v5 >> 9) & 0x7FFFFFFFFFFFF8));
          v7 = v5 & 0xFFF;
          v8 = *(v6 + v7) & 0xCF;
        }

        else
        {
          v10 = *(v3 + 560) + *(v3 + 552) - 1;
          v6 = *(*(v3 + 528) + ((v10 >> 9) & 0x7FFFFFFFFFFFF8));
          v7 = v10 & 0xFFF;
          v8 = *(v6 + v7) & 0x3F;
        }
      }

      else
      {
        if (!v4)
        {
          v12 = -4;
          sub_24D7A19A8(v3 + 520, &v12);
          return sub_24D7A18F0(v3, &v11);
        }

        v9 = *(v3 + 560) + *(v3 + 552) - 1;
        v6 = *(*(v3 + 528) + ((v9 >> 9) & 0x7FFFFFFFFFFFF8));
        v7 = v9 & 0xFFF;
        v8 = *(v6 + v7) & 0xF3;
      }

      *(v6 + v7) = v8;
    }

    return sub_24D7A18F0(v3, &v11);
  }

  return result;
}

void *sub_24D7C710C(uint64_t a1, _BYTE *a2)
{
  if (!*(a1 + 88))
  {
    v4 = *(a1 + 96);
    if (v4)
    {
      v6 = 0;
      sub_24D7A11AC((a1 + 48), v4, &v6);
    }
  }

  return sub_24D7C7168(a1, a2);
}

void *sub_24D7C7168(void *result, _BYTE *a2)
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
    v7 = ((v5 - v6) << 9) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_24D7C71F0(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 9) & 0x7FFFFFFFFFFFF8)) + (v9 & 0xFFF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_24D7C71F0(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1000;
  v3 = v1 - 4096;
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
    sub_24D79EB50(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_24D79E728(a1, &v10);
}

uint64_t *sub_24D7C7364(uint64_t a1, unsigned int a2, char *a3)
{
  if (!*(a1 + 88))
  {
    v6 = *(a1 + 96);
    if (v6)
    {
      v12 = 0;
      sub_24D7A11AC((a1 + 48), v6, &v12);
    }
  }

  v7 = *(a1 + 32) + *(a1 + 40);
  v8 = *(a1 + 8);
  v9 = (v8 + 8 * (v7 >> 12));
  if (*(a1 + 16) == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9 + (v7 & 0xFFF);
  }

  return sub_24D7C7400(a1, v9, v10, a2, a3);
}

uint64_t *sub_24D7C7400(const void **a1, char *a2, uint64_t a3, unint64_t a4, char *a5)
{
  v6 = a4;
  v8 = a1[4];
  v9 = v8 >> 12;
  v10 = a1[1];
  v11 = a1[2];
  v12 = &v10[8 * (v8 >> 12)];
  if (v11 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v12 + (a1[4] & 0xFFF);
  }

  if (a3 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = a3 + ((a2 - v12) << 9) - (v13 + *a2) + *v12;
  }

  v15 = a1[5];
  if (v14 >= &v15[-v14])
  {
    v18 = ((v11 - v10) << 9) - 1;
    if (v11 == v10)
    {
      v18 = 0;
    }

    v19 = &v15[v8];
    v20 = v18 - v19;
    if (a4 > v20)
    {
      sub_24D79E488(a1, a4 - v20);
      v15 = a1[5];
      v10 = a1[1];
      v11 = a1[2];
      v19 = &v15[a1[4]];
    }

    v21 = &v10[8 * (v19 >> 12)];
    if (v11 == v10)
    {
      v22 = 0;
    }

    else
    {
      v22 = &(*v21)[v19 & 0xFFF];
    }

    v59 = &v10[8 * (v19 >> 12)];
    v60 = v22;
    v36 = &v15[-v14];
    v37 = v6 - &v15[-v14];
    if (v6 > &v15[-v14])
    {
      v38 = *a5;
      v39 = *v21;
      do
      {
        *v22++ = v38;
        if (v22 - v39 == 4096)
        {
          v40 = v21[1];
          ++v21;
          v39 = v40;
          v22 = v40;
        }

        --v37;
      }

      while (v37);
      a1[5] = (v14 + v6);
      v6 = &v15[-v14];
    }

    if (v6)
    {
      v58 = a5;
      v41 = sub_24D7C7DE4(&v59, v6);
      v43 = v42;
      sub_24D7C7E48(a1, v41, v42, v59, v60, v21, v22, &v58);
      if (v6 < v36)
      {
        v44 = sub_24D7C7DE4(&v59, v36);
        v59 = sub_24D7C7FB0(a1, v44, v45, v41, v43, v59, v60, &v58);
        v60 = v46;
      }

      v47 = sub_24D7C7DE4(&v59, v6);
      v49 = *v58;
      v50 = *v47;
      do
      {
        *v48++ = v49;
        if (&v48[-v50] == 4096)
        {
          v51 = v47[1];
          ++v47;
          v50 = v51;
          v48 = v51;
        }

        --v6;
      }

      while (v6);
    }
  }

  else
  {
    if (a4 > v8)
    {
      sub_24D7C7784(a1, a4 - v8);
      v8 = a1[4];
      v10 = a1[1];
      v11 = a1[2];
      v9 = v8 >> 12;
    }

    v16 = &v10[8 * v9];
    if (v11 == v10)
    {
      v17 = 0;
    }

    else
    {
      v17 = (*v16 + (v8 & 0xFFF));
    }

    v59 = &v10[8 * v9];
    v60 = v17;
    v23 = v14 - v6;
    if (v14 < v6)
    {
      v24 = v14 + v8;
      v25 = a1[5] + v6;
      v26 = *v16;
      do
      {
        if (v17 == v26)
        {
          v27 = *(v16 - 1);
          v16 -= 8;
          v26 = v27;
          v17 = v27 + 4096;
        }

        *--v17 = *a5;
      }

      while (!__CFADD__(v23++, 1));
      a1[4] = (v24 - v6);
      a1[5] = (v25 - v14);
      v6 = v14;
    }

    if (v6)
    {
      v58 = a5;
      v29 = sub_24D7904F4(&v59, v6);
      v31 = v30;
      sub_24D7C7A3C(a1, v59, v60, v29, v30, v16, v17, &v58);
      if (v6 >= v14)
      {
        v34 = v59;
        v35 = v60;
      }

      else
      {
        v32 = sub_24D7904F4(&v59, v14);
        v34 = sub_24D7C7BE4(a1, v29, v31, v32, v33, v59, v60, &v58);
        v59 = v34;
        v60 = v35;
      }

      v52 = *v58;
      v53 = *v34;
      do
      {
        *v35++ = v52;
        if (v35 - v53 == 4096)
        {
          v54 = v34[1];
          ++v34;
          v53 = v54;
          v35 = v54;
        }

        --v6;
      }

      while (v6);
    }
  }

  v55 = a1[1];
  if (a1[2] == v55)
  {
    v56 = 0;
  }

  else
  {
    v56 = (v55[a1[4] >> 12] + (a1[4] & 0xFFF));
  }

  v59 = &v55[a1[4] >> 12];
  v60 = v56;
  return sub_24D7904F4(&v59, v14);
}

const void **sub_24D7C7784(const void **result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  v5 = v4 - v3;
  if (v4 == v3)
  {
    v6 = a2 + 1;
  }

  else
  {
    v6 = a2;
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v4 - v3) << 9) - 1;
  }

  if ((v6 & 0xFFF) != 0)
  {
    v8 = (v6 >> 12) + 1;
  }

  else
  {
    v8 = v6 >> 12;
  }

  v9 = result[4];
  v10 = v7 - &v9[result[5]];
  if (v8 >= v10 >> 12)
  {
    v11 = v10 >> 12;
  }

  else
  {
    v11 = v8;
  }

  if (v8 <= v10 >> 12)
  {
    for (result[4] = &v9[4096 * v11]; v11; --v11)
    {
      v15 = v2[2];
      *&v17[0] = *(v15 - 1);
      v2[2] = v15 - 1;
      result = sub_24D79E830(v2, v17);
    }
  }

  else
  {
    v12 = v8 - v11;
    v13 = result[3] - *result;
    if (v8 - v11 > (v13 >> 3) - (v5 >> 3))
    {
      if (v13 >> 2 <= v12 + (v5 >> 3))
      {
        v14 = v12 + (v5 >> 3);
      }

      else
      {
        v14 = v13 >> 2;
      }

      v18 = result;
      if (v14)
      {
        sub_24D79EB50(result, v14);
      }

      memset(v17, 0, sizeof(v17));
      operator new();
    }

    if (v12)
    {
      if (v3 != *result)
      {
        operator new();
      }

      operator new();
    }

    for (result[4] = &v9[4096 * v11]; v11; --v11)
    {
      v16 = v2[2];
      *&v17[0] = *(v16 - 1);
      v2[2] = v16 - 1;
      result = sub_24D79E830(v2, v17);
    }
  }

  return result;
}

uint64_t sub_24D7C7A3C(uint64_t result, char *a2, uint64_t a3, char *a4, unint64_t a5, char *a6, uint64_t a7, unint64_t *a8)
{
  if (a5 != a3)
  {
    v8 = a5 + ((a4 - a2) << 9) - a3 - *a4 + *a2;
    if (v8 >= 1)
    {
      v9 = *a8;
      while (1)
      {
        v10 = *a4;
        if (a5 == *a4)
        {
          v11 = *(a4 - 1);
          a4 -= 8;
          v10 = v11;
          a5 = v11 + 4096;
        }

        v12 = a5 - 1;
        v13 = a5 - v10;
        v14 = a5 - v8;
        if ((a5 - v10) <= v8)
        {
          v14 = v10;
        }

        if ((a5 - v10) >= v8)
        {
          v13 = v8;
        }

        if (v9 >= a5 || v14 > v9)
        {
          goto LABEL_20;
        }

        if (v12 == a7)
        {
          break;
        }

        v15 = v12 - a7 - v10 + ((a4 - a6) << 9) + *a6;
        if (v15 != -1)
        {
          v16 = ~v15;
          goto LABEL_16;
        }

LABEL_19:
        *a8 = v9;
LABEL_20:
        if (a5 != v14)
        {
          v18 = *(result + 32) + v14;
          v19 = *(result + 40) + a5;
          v20 = *a6;
          v21 = a5;
          do
          {
            if (a7 == v20)
            {
              v22 = *(a6 - 1);
              a6 -= 8;
              v20 = v22;
              a7 = v22 + 4096;
            }

            v23 = *--v21;
            *--a7 = v23;
          }

          while (v21 != v14);
          *(result + 32) = v18 - a5;
          *(result + 40) = v19 - v14;
        }

        if (v13 != 1)
        {
          v24 = v12 - (v13 + *a4);
          if (v24 > 0x7FFFFFFFFFFFFFFELL)
          {
            v26 = 4094 - v24;
            a4 -= 8 * (v26 >> 12);
            v12 = *a4 + (~v26 & 0xFFF);
          }

          else
          {
            v25 = v24 + 1;
            a4 += 8 * (v25 >> 12);
            v12 = *a4 + (v25 & 0xFFF);
          }
        }

        a5 = v12;
        v27 = v8 <= v13;
        v8 -= v13;
        if (v27)
        {
          return result;
        }
      }

      v16 = -1;
LABEL_16:
      v17 = v16 + v9 - v10;
      if (v17 < 1)
      {
        v9 = *&a4[-8 * ((4095 - v17) >> 12)] + (~(4095 - v17) & 0xFFF);
      }

      else
      {
        v9 = *&a4[(v17 >> 9) & 0x7FFFFFFFFFFFF8] + (v17 & 0xFFF);
      }

      goto LABEL_19;
    }
  }

  return result;
}

void **sub_24D7C7BE4(int a1, char *a2, char *__src, char *a4, char *a5, void **a6, char *__dst, unint64_t *a8)
{
  if (a5 != __src)
  {
    v10 = __src;
    v11 = a2;
    v12 = &a5[512 * (a4 - a2)] - __src - *a4 + *a2;
    if (v12 >= 1)
    {
      do
      {
        v14 = *v11 + 4096;
        if (v14 - v10 >= v12)
        {
          v15 = v12;
        }

        else
        {
          v15 = v14 - v10;
        }

        if (v14 - v10 <= v12)
        {
          v16 = *v11 + 4096;
        }

        else
        {
          v16 = &v10[v12];
        }

        v17 = *a8;
        if (v10 <= *a8 && v17 < v16)
        {
          if (v10 != __dst && __dst - v10 + ((a6 - v11) << 9) + *v11 != *a6)
          {
            v19 = __dst - v10 + ((a6 - v11) << 9) - *a6 + v17;
            if (v19 < 1)
            {
              v17 = *&v11[-8 * ((4095 - v19) >> 12)] + (~(4095 - v19) & 0xFFF);
            }

            else
            {
              v17 = *&v11[(v19 >> 9) & 0x7FFFFFFFFFFFF8] + (v19 & 0xFFF);
            }
          }

          *a8 = v17;
        }

        if (v10 != v16)
        {
          v30 = v15;
          v21 = *a6++;
          v20 = v21;
          v22 = v10;
          while (1)
          {
            v23 = v20 - __dst + 4096;
            if ((v16 - v22) >= v23)
            {
              v24 = v23;
            }

            else
            {
              v24 = v16 - v22;
            }

            if (v24)
            {
              memmove(__dst, v22, v24);
            }

            v22 += v24;
            if (v22 == v16)
            {
              break;
            }

            v25 = *a6++;
            v20 = v25;
            __dst = v25;
          }

          __dst += v24;
          if (*(a6 - 1) + 4096 == __dst)
          {
            __dst = *a6;
          }

          else
          {
            --a6;
          }

          v15 = v30;
        }

        if (v14 != v10)
        {
          v26 = &v10[v15 - *v11];
          if (v26 < 1)
          {
            v27 = 4095 - v26;
            v11 -= 8 * (v27 >> 12);
            v10 = (*v11 + (~v27 & 0xFFF));
          }

          else
          {
            v11 += 8 * (v26 >> 12);
            v10 = (*v11 + (v26 & 0xFFF));
          }
        }

        v28 = v12 <= v15;
        v12 -= v15;
      }

      while (!v28);
    }
  }

  return a6;
}

uint64_t *sub_24D7C7DE4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = *(a1 + 8) - a2 - *result;
    if (v4 < 1)
    {
      result -= (4095 - v4) >> 12;
      v6 = *result;
    }

    else
    {
      result += v4 >> 12;
      v5 = *result;
    }
  }

  return result;
}

uint64_t sub_24D7C7E48(uint64_t result, char *a2, char *a3, char *a4, char *a5, char *a6, _BYTE *a7, unint64_t *a8)
{
  if (a5 != a3)
  {
    v8 = &a5[512 * (a4 - a2)] - a3 - *a4 + *a2;
    if (v8 >= 1)
    {
      v9 = *a8;
      do
      {
        v10 = *a2 + 4096;
        v11 = v10 - a3;
        v12 = &a3[v8];
        if (v10 - a3 <= v8)
        {
          v12 = *a2 + 4096;
        }

        if (v10 - a3 >= v8)
        {
          v11 = v8;
        }

        if (a3 <= v9 && v9 < v12)
        {
          if (a7 != a3 && a7 - a3 + ((a6 - a2) << 9) + *a2 != *a6)
          {
            v13 = a7 - a3 + ((a6 - a2) << 9) - *a6 + v9;
            if (v13 < 1)
            {
              v9 = *&a2[-8 * ((4095 - v13) >> 12)] + (~(4095 - v13) & 0xFFF);
            }

            else
            {
              v9 = *&a2[(v13 >> 9) & 0x7FFFFFFFFFFFF8] + (v13 & 0xFFF);
            }
          }

          *a8 = v9;
        }

        if (a3 != v12)
        {
          v14 = *(result + 40) + v12;
          v15 = *a6;
          v16 = a3;
          do
          {
            v17 = *v16++;
            *a7++ = v17;
            if (a7 - v15 == 4096)
            {
              v18 = *(a6 + 1);
              a6 += 8;
              v15 = v18;
              a7 = v18;
            }
          }

          while (v16 != v12);
          *(result + 40) = v14 - a3;
        }

        if (v10 != a3)
        {
          v19 = &a3[v11 - *a2];
          if (v19 < 1)
          {
            v20 = 4095 - v19;
            a2 -= 8 * (v20 >> 12);
            a3 = (*a2 + (~v20 & 0xFFF));
          }

          else
          {
            a2 += 8 * (v19 >> 12);
            a3 = (*a2 + (v19 & 0xFFF));
          }
        }

        v21 = v8 <= v11;
        v8 -= v11;
      }

      while (!v21);
    }
  }

  return result;
}

char *sub_24D7C7FB0(uint64_t a1, char *a2, char *a3, char *a4, char *a5, char *a6, char *a7, unint64_t *a8)
{
  if (a5 != a3)
  {
    v10 = a5;
    v11 = a4;
    v12 = &a5[512 * (a4 - a2)] - a3 - *a4 + *a2;
    if (v12 >= 1)
    {
      while (1)
      {
        v14 = *v11;
        if (v10 == *v11)
        {
          v15 = *(v11 - 1);
          v11 -= 8;
          v14 = v15;
          v10 = v15 + 4096;
        }

        v16 = v10 - 1;
        if (v10 - v14 >= v12)
        {
          v17 = v12;
        }

        else
        {
          v17 = v10 - v14;
        }

        if (v10 - v14 <= v12)
        {
          v18 = v14;
        }

        else
        {
          v18 = &v10[-v12];
        }

        v19 = *a8;
        v20 = *a8 >= v10 || v18 > v19;
        if (v20)
        {
          goto LABEL_23;
        }

        if (v16 == a7)
        {
          break;
        }

        v21 = &v14[512 * (a6 - v11) + a7 - v10 - *a6];
        if (v21)
        {
          goto LABEL_19;
        }

LABEL_22:
        *a8 = v19;
LABEL_23:
        if (v18 != v10)
        {
          v23 = *a6;
          while (1)
          {
            v24 = &a7[-v23];
            if (v10 - v18 >= v24)
            {
              v25 = v24;
            }

            else
            {
              v25 = v10 - v18;
            }

            v10 -= v25;
            a7 -= v25;
            if (v25)
            {
              memmove(a7, v10, v25);
            }

            if (v10 == v18)
            {
              break;
            }

            v26 = *(a6 - 1);
            a6 -= 8;
            v23 = v26;
            a7 = (v26 + 4096);
          }

          if ((*a6 + 4096) == a7)
          {
            v27 = *(a6 + 1);
            a6 += 8;
            a7 = v27;
          }
        }

        if (v17 != 1)
        {
          v28 = &v16[-*v11 - v17];
          if (v28 > 0x7FFFFFFFFFFFFFFELL)
          {
            v30 = 4094 - v28;
            v11 -= 8 * (v30 >> 12);
            v16 = (*v11 + (~v30 & 0xFFF));
          }

          else
          {
            v29 = v28 + 1;
            v11 += 8 * (v29 >> 12);
            v16 = (*v11 + (v29 & 0xFFF));
          }
        }

        v10 = v16;
        v20 = v12 <= v17;
        v12 -= v17;
        if (v20)
        {
          return a6;
        }
      }

      v21 = -1;
LABEL_19:
      v22 = v21 + v19 - v14;
      if (v22 < 1)
      {
        v19 = *&v11[-8 * ((4095 - v22) >> 12)] + (~(4095 - v22) & 0xFFF);
      }

      else
      {
        v19 = *&v11[(v22 >> 9) & 0x7FFFFFFFFFFFF8] + (v22 & 0xFFF);
      }

      goto LABEL_22;
    }
  }

  return a6;
}

unint64_t sub_24D7C81B0(uint64_t *a1, unint64_t a2, char a3, unsigned int a4)
{
  v4 = *a1;
  if (!a2)
  {
    v5 = HIDWORD(a2) & 0x1F;
    if (a4 <= 7)
    {
      v10 = (v4 + 16 * a4 + 18004);
      if (*(v10 + 12) == 1)
      {
        v7 = *v10;
        v11 = *(v10 + 1);
        return v5 | (v7 << 32);
      }

      v12 = sub_24D809C04();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_24D85DA78();
      }

      if (sub_24D809BF4())
      {
        sub_24D809BFC();
      }
    }

    v7 = 0;
    return v5 | (v7 << 32);
  }

  if (a2 == 1)
  {
    v5 = HIDWORD(a2) & 0x1F;
    v6 = HIWORD(a2) & 0xFFF;
    v7 = (v6 & ~(-1 << (a2 >> 60))) + 1;
    v8 = (((v6 >> (a2 >> 60)) & ~(-1 << (a3 & 0xF))) + 1) | (((v6 >> (a2 >> 60) >> (a3 & 0xF)) + 1) << 32);
    if (a4 <= 7)
    {
      v9 = v4 + 16 * a4;
      *(v9 + 18004) = v7;
      *(v9 + 18008) = v8;
      *(v9 + 18016) = 1;
    }
  }

  else
  {
    v7 = 0;
    LODWORD(v5) = 0;
  }

  return v5 | (v7 << 32);
}

uint64_t sub_24D7C82BC(uint64_t result, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *result = 0u;
  *(result + 16) = 0u;
  *a4 = 1;
  v4 = *a3;
  v5 = *a3 & 7;
  v6 = (a2 + (*a3 >> 3));
  if (v5 == 7)
  {
    v7 = ((*v6 | (v6[1] << 8)) >> 7) & 3;
  }

  else
  {
    v7 = (*v6 >> v5) & 3;
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      *(result + 8) = 3;
      *result = 0;
      v8 = *a3 + 2;
      v9 = (a2 + (v8 >> 3));
      v10 = v8 & 7;
      if (v10)
      {
        v11 = (*v9 >> v10);
      }

      else
      {
        v11 = *v9;
      }

      v40 = *(result + 16) | v11;
      *(result + 16) = v40;
      v41 = *a3;
      if (((*(a2 + ((*a3 + 10) >> 3)) >> ((*a3 + 10) & 7)) & 1) == 0)
      {
        v46 = v40 & 0xBFFF;
        *(result + 16) = v46;
        v47 = *a3 + 11;
        v48 = v47 & 7;
        v49 = (a2 + (v47 >> 3));
        if (v48 > 4)
        {
          v50 = *v49;
        }

        else
        {
          v50 = *v49;
        }

        *(result + 16) = (((v50 >> v48) & 0xF) << 8) | v46;
        v25 = 15;
        goto LABEL_514;
      }

      v42 = v41 + 11;
      v43 = (v41 + 11) & 7;
      v44 = (a2 + (v42 >> 3));
      if (v43 > 2)
      {
        v45 = *v44;
      }

      else
      {
        v45 = *v44;
      }

      v72 = (((v45 >> v43) & 0x3F) << 8) | v40;
      *(result + 16) = v72;
      if ((*(a2 + ((*a3 + 17) >> 3)) >> ((*a3 + 17) & 7)))
      {
        v73 = v72 | 0x4000;
      }

      else
      {
        v73 = v72 & 0xBFFF;
      }

      *(result + 16) = v73;
      goto LABEL_66;
    }

    v16 = (v4 + 2) & 7;
    v17 = (a2 + ((v4 + 2) >> 3));
    if (v16 == 7)
    {
      v18 = ((*v17 | (v17[1] << 8)) >> 7) & 3;
    }

    else
    {
      v18 = (*v17 >> v16) & 3;
    }

    if (v18 <= 1)
    {
      if (!v18)
      {
        *(result + 8) = 1;
        *result = 0x100000001;
        v25 = 4;
LABEL_514:
        *a3 += v25;
        return result;
      }

      v54 = v4 + 4;
      v55 = (v4 + 4) & 7;
      v56 = (a2 + (v54 >> 3));
      if (v55 == 7)
      {
        v57 = ((*v56 | (v56[1] << 8)) >> 7) & 3;
      }

      else
      {
        v57 = (*v56 >> v55) & 3;
      }

      if (v57 <= 1)
      {
        if (v57)
        {
          *(result + 8) = 11;
          *result = 0x300000003;
          v137 = *a3 + 26;
          v138 = v137 & 7;
          v139 = (a2 + (v137 >> 3));
          if (v138 > 2)
          {
            v140 = *v139;
          }

          else
          {
            v140 = (*(v139 + 3) << 24) | (v139[2] << 16) | (v139[1] << 8) | *v139;
          }

          *(result + 24) |= (v140 >> v138) & 0x3FFFFFFFFFFFFFLL;
          v235 = *a3 & 7;
          v236 = (a2 + ((*a3 + 80) >> 3));
          if (v235 > 5)
          {
            v237 = *v236;
          }

          else
          {
            v237 = *v236;
          }

          *(result + 32) |= (v237 >> v235) & 7;
          v248 = *a3 + 6;
          v249 = v248 & 7;
          v250 = (a2 + (v248 >> 3));
          if (v249 > 4)
          {
            v251 = *v250;
          }

          else
          {
            v251 = (v250[2] << 16) | (v250[1] << 8) | *v250;
          }

          *(result + 16) |= (v251 >> v249) & 0xFFFFF;
          v25 = 83;
          goto LABEL_514;
        }

        *(result + 8) = 4;
        *result = 0x200000002;
        v86 = *a3 + 6;
        v87 = v86 & 7;
        v88 = (a2 + (v86 >> 3));
        if (v87 > 4)
        {
          v89 = *v88;
        }

        else
        {
          v89 = (v88[2] << 16) | (v88[1] << 8) | *v88;
        }

        *(result + 16) |= (v89 >> v87) & 0xFFFFF;
        goto LABEL_513;
      }

      if (v57 != 2)
      {
        goto LABEL_517;
      }

      *(result + 8) = 4;
      *result = 0x1100000011;
      v95 = *a3 + 6;
      v96 = (a2 + (v95 >> 3));
      v97 = v95 & 7;
      if (v97)
      {
        v98 = (*v96 >> v97);
      }

      else
      {
        v98 = *v96;
      }

      v273 = *(result + 16) | v98;
      *(result + 16) = v273;
      v274 = *a3;
      if ((*(a2 + ((*a3 + 14) >> 3)) >> ((*a3 + 14) & 7)))
      {
        v275 = v274 + 15;
        v276 = (v274 + 15) & 7;
        v277 = (a2 + (v275 >> 3));
        if (v276 > 2)
        {
          v278 = *v277;
        }

        else
        {
          v278 = *v277;
        }

        v323 = (((v278 >> v276) & 0x3F) << 8) | v273;
        *(result + 16) = v323;
        v324 = v323 & 0xBFFF;
        if ((*(a2 + ((*a3 + 21) >> 3)) >> ((*a3 + 21) & 7)))
        {
          v325 = 0x4000;
        }

        else
        {
          v325 = 0;
        }

        *(result + 16) = v325 | v324;
        v326 = *a3 + 22;
        v327 = v326 & 7;
        v328 = (a2 + (v326 >> 3));
        if (v327 > 4)
        {
          v329 = *v328;
        }

        else
        {
          v329 = *v328;
        }

        v351 = (v329 >> v327) & 0xF;
        if (v351 <= 4)
        {
          if (v351 <= 1 && !v351)
          {
            *(result + 20) = 0;
            goto LABEL_513;
          }

LABEL_512:
          *(result + 20) = v351;
LABEL_513:
          v25 = 26;
          goto LABEL_514;
        }

        if (v351 < 10)
        {
          goto LABEL_512;
        }

        goto LABEL_517;
      }

      v279 = v273 & 0xBFFF;
      *(result + 16) = v279;
      v280 = *a3 + 15;
      v281 = v280 & 7;
      v282 = (a2 + (v280 >> 3));
      if (v281 > 4)
      {
        v283 = *v282;
      }

      else
      {
        v283 = *v282;
      }

      *(result + 16) = (((v283 >> v281) & 0xF) << 8) | v279;
      v330 = *a3 + 19;
      v331 = v330 & 7;
      v332 = (a2 + (v330 >> 3));
      if (v331 > 4)
      {
        v333 = *v332;
      }

      else
      {
        v333 = *v332;
      }

      v352 = (v333 >> v331) & 0xF;
      if (v352 > 4)
      {
        if (v352 >= 10)
        {
          goto LABEL_517;
        }
      }

      else if (v352 <= 1 && !v352)
      {
        *(result + 20) = 0;
        goto LABEL_516;
      }

      *(result + 20) = v352;
LABEL_516:
      v25 = 23;
      goto LABEL_514;
    }

    if (v18 != 2)
    {
      *(result + 8) = 2;
      *result = 0x600000006;
      v66 = *a3 + 4;
      v67 = (a2 + (v66 >> 3));
      v68 = v66 & 7;
      if (v68)
      {
        LODWORD(v67) = *v67 >> v68;
      }

      else
      {
        LOBYTE(v67) = *v67;
      }

      *(result + 16) |= v67;
      v25 = 12;
      goto LABEL_514;
    }

    *(result + 8) = 2;
    *result = 0x500000005;
    if ((*(a2 + ((*a3 + 4) >> 3)) >> ((*a3 + 4) & 7)))
    {
      *(result + 16) = 1;
      v33 = *a3 + 5;
      v34 = v33 & 7;
      v35 = (a2 + (v33 >> 3));
      if (v34 > 4)
      {
        v36 = *v35;
      }

      else
      {
        v36 = *v35;
      }

      v132 = *(result + 20) | (v36 >> v34) & 0xF;
      *(result + 20) = v132;
      v133 = *a3 + 9;
      v134 = v133 & 7;
      v135 = (a2 + (v133 >> 3));
      if (v134 > 1)
      {
        v136 = *v135;
      }

      else
      {
        v136 = *v135;
      }

      *(result + 20) = (((v136 >> v134) & 0x7F) << 8) | v132;
      goto LABEL_315;
    }

    *(result + 16) = 0;
    v79 = *a3 + 5;
    v80 = (a2 + (v79 >> 3));
    v81 = v79 & 7;
    if (v81)
    {
      LODWORD(v80) = *v80 >> v81;
    }

    else
    {
      LOBYTE(v80) = *v80;
    }

    *(result + 20) |= v80;
    v158 = *a3 + 13;
    v159 = v158 & 7;
    v160 = (a2 + (v158 >> 3));
    if (v159 > 5)
    {
      v161 = *v160;
    }

    else
    {
      v161 = *v160;
    }

    v162 = (v161 >> v159) & 7;
    if (v162 > 3)
    {
      if (v162 > 5)
      {
        if (v162 != 6)
        {
          LODWORD(v162) = 7;
        }
      }

      else if (v162 != 4)
      {
        LODWORD(v162) = 5;
      }
    }

    else if (v162 > 1)
    {
      if (v162 != 2)
      {
        LODWORD(v162) = 3;
      }
    }

    else
    {
      if (!v162)
      {
        *(result + 24) = 0;
LABEL_315:
        v25 = 16;
        goto LABEL_514;
      }

      LODWORD(v162) = 1;
    }

    *(result + 24) = v162;
    goto LABEL_315;
  }

  if (v7 == 2)
  {
    v12 = v4 + 2;
    v13 = (v4 + 2) & 7;
    v14 = (a2 + (v12 >> 3));
    if (v13 == 7)
    {
      v15 = ((*v14 | (v14[1] << 8)) >> 7) & 3;
    }

    else
    {
      v15 = (*v14 >> v13) & 3;
    }

    if (v15 <= 1)
    {
      if (v15)
      {
        *(result + 8) = 17;
        *result = 0x800000008;
        v51 = *a3 + 4;
        v52 = (a2 + (v51 >> 3));
        v53 = v51 & 7;
        if (v53)
        {
          LODWORD(v52) = *v52 >> v53;
        }

        else
        {
          LOBYTE(v52) = *v52;
        }

        *(result + 16) |= v52;
        v111 = *a3 + 12;
        v112 = v111 & 7;
        v113 = (a2 + (v111 >> 3));
        if (v112 == 7)
        {
          v114 = ((*v113 | (v113[1] << 8)) >> 7) & 3;
        }

        else
        {
          v114 = (*v113 >> v112) & 3;
        }

        if (v114 > 1)
        {
          if (v114 == 2)
          {
            *(result + 20) = 3;
            v119 = *(result + 24);
            if ((*(a2 + ((*a3 + 14) >> 3)) >> ((*a3 + 14) & 7)))
            {
              *(result + 24) = v119 | 1;
              v120 = (*(a2 + ((*a3 + 15) >> 3)) >> ((*a3 + 15) & 7)) & 1 | *(result + 25);
              *(result + 25) |= (*(a2 + ((*a3 + 15) >> 3)) >> ((*a3 + 15) & 7)) & 1;
              v121 = *a3 & 7;
              v122 = (a2 + ((*a3 + 16) >> 3));
              if (v121 > 4)
              {
                v123 = *v122;
              }

              else
              {
                v123 = *v122;
              }

              v301 = (2 * ((v123 >> v121) & 0xF)) | v120;
              *(result + 25) = v301;
              v302 = *a3 + 20;
              v303 = v302 & 7;
              v304 = (a2 + (v302 >> 3));
              if (v303 > 4)
              {
                v305 = *v304;
              }

              else
              {
                v305 = *v304;
              }

              *(result + 25) = (((v305 >> v303) & 0xF) << 8) | v301;
              v25 = 24;
            }

            else
            {
              *(result + 24) = v119 & 0xFE;
              v231 = *a3 + 15;
              v232 = v231 & 7;
              v233 = (a2 + (v231 >> 3));
              if (v232 > 4)
              {
                v234 = *v233;
              }

              else
              {
                v234 = *v233;
              }

              *(result + 25) |= (v234 >> v232) & 0xF;
              v306 = *a3 + 19;
              v307 = v306 & 7;
              v308 = (a2 + (v306 >> 3));
              if (v307 > 4)
              {
                v309 = *v308;
              }

              else
              {
                v309 = *v308;
              }

              *(result + 33) |= (v309 >> v307) & 0xF;
              v339 = *a3 + 23;
              v340 = v339 & 7;
              v341 = (a2 + (v339 >> 3));
              if (v340 > 4)
              {
                v342 = *v341;
              }

              else
              {
                v342 = *v341;
              }

              *(result + 26) |= (v342 >> v340) & 0xF;
              v357 = *a3 + 27;
              v358 = v357 & 7;
              v359 = (a2 + (v357 >> 3));
              if (v358 > 4)
              {
                v360 = *v359;
              }

              else
              {
                v360 = *v359;
              }

              *(result + 34) |= (v360 >> v358) & 0xF;
              v371 = *a3 + 31;
              v372 = v371 & 7;
              v373 = (a2 + (v371 >> 3));
              if (v372 > 4)
              {
                v374 = *v373;
              }

              else
              {
                v374 = *v373;
              }

              *(result + 27) |= (v374 >> v372) & 0xF;
              v378 = *a3 + 35;
              v379 = v378 & 7;
              v380 = (a2 + (v378 >> 3));
              if (v379 > 4)
              {
                v381 = *v380;
              }

              else
              {
                v381 = *v380;
              }

              *(result + 35) |= (v381 >> v379) & 0xF;
              v386 = *a3 + 39;
              v387 = v386 & 7;
              v388 = (a2 + (v386 >> 3));
              if (v387 > 4)
              {
                v389 = *v388;
              }

              else
              {
                v389 = *v388;
              }

              *(result + 28) |= (v389 >> v387) & 0xF;
              v393 = *a3 + 43;
              v394 = v393 & 7;
              v395 = (a2 + (v393 >> 3));
              if (v394 > 4)
              {
                v396 = *v395;
              }

              else
              {
                v396 = *v395;
              }

              *(result + 36) |= (v396 >> v394) & 0xF;
              v401 = *a3 + 47;
              v402 = v401 & 7;
              v403 = (a2 + (v401 >> 3));
              if (v402 > 4)
              {
                v404 = *v403;
              }

              else
              {
                v404 = *v403;
              }

              *(result + 29) |= (v404 >> v402) & 0xF;
              v408 = *a3 + 51;
              v409 = v408 & 7;
              v410 = (a2 + (v408 >> 3));
              if (v409 > 4)
              {
                v411 = *v410;
              }

              else
              {
                v411 = *v410;
              }

              *(result + 37) |= (v411 >> v409) & 0xF;
              v416 = *a3 + 55;
              v417 = v416 & 7;
              v418 = (a2 + (v416 >> 3));
              if (v417 > 4)
              {
                v419 = *v418;
              }

              else
              {
                v419 = *v418;
              }

              *(result + 30) |= (v419 >> v417) & 0xF;
              v423 = *a3 + 59;
              v424 = v423 & 7;
              v425 = (a2 + (v423 >> 3));
              if (v424 > 4)
              {
                v426 = *v425;
              }

              else
              {
                v426 = *v425;
              }

              *(result + 38) |= (v426 >> v424) & 0xF;
              v431 = *a3 + 63;
              v432 = v431 & 7;
              v433 = (a2 + (v431 >> 3));
              if (v432 > 4)
              {
                v434 = *v433;
              }

              else
              {
                v434 = *v433;
              }

              *(result + 31) |= (v434 >> v432) & 0xF;
              v438 = *a3 + 67;
              v439 = v438 & 7;
              v440 = (a2 + (v438 >> 3));
              if (v439 > 4)
              {
                v441 = *v440;
              }

              else
              {
                v441 = *v440;
              }

              *(result + 39) |= (v441 >> v439) & 0xF;
              v446 = *a3 + 71;
              v447 = v446 & 7;
              v448 = (a2 + (v446 >> 3));
              if (v447 > 4)
              {
                v449 = *v448;
              }

              else
              {
                v449 = *v448;
              }

              *(result + 32) |= (v449 >> v447) & 0xF;
              v453 = *a3 + 75;
              v454 = v453 & 7;
              v455 = (a2 + (v453 >> 3));
              if (v454 > 4)
              {
                v456 = *v455;
              }

              else
              {
                v456 = *v455;
              }

              *(result + 40) |= (v456 >> v454) & 0xF;
              v25 = 79;
            }
          }

          else
          {
            *(result + 20) = 2;
            v154 = *a3 + 14;
            v155 = v154 & 7;
            v156 = (a2 + (v154 >> 3));
            if (v155 > 5)
            {
              v157 = (v156[2] << 16) | (v156[1] << 8) | *v156;
            }

            else
            {
              v157 = *v156;
            }

            v238 = *(result + 24) | (v157 >> v155) & 0x7FF;
            *(result + 24) = v238;
            v239 = *a3 + 25;
            v240 = v239 & 7;
            v241 = (a2 + (v239 >> 3));
            if (v240 > 5)
            {
              v242 = (v241[2] << 16) | (v241[1] << 8) | *v241;
            }

            else
            {
              v242 = *v241;
            }

            *(result + 24) = v238 | (((v242 >> v240) & 0x7FF) << 16);
            v252 = *a3 + 36;
            v253 = v252 & 7;
            v254 = (a2 + (v252 >> 3));
            if (v253 > 5)
            {
              v255 = (v254[2] << 16) | (v254[1] << 8) | *v254;
            }

            else
            {
              v255 = *v254;
            }

            *(result + 28) |= (v255 >> v253) & 0x7FF;
            v260 = *(result + 30);
            if ((*(a2 + ((*a3 + 47) >> 3)) >> ((*a3 + 47) & 7)))
            {
              *(result + 30) = v260 | 1;
              v261 = (*(a2 + ((*a3 + 48) >> 3)) >> (*a3 & 7)) & 1 | *(result + 31);
              *(result + 31) |= (*(a2 + ((*a3 + 48) >> 3)) >> (*a3 & 7)) & 1;
              v262 = *a3 + 49;
              v263 = v262 & 7;
              v264 = (a2 + (v262 >> 3));
              if (v263 > 4)
              {
                v265 = *v264;
              }

              else
              {
                v265 = *v264;
              }

              v314 = (2 * ((v265 >> v263) & 0xF)) | v261;
              *(result + 31) = v314;
              v315 = *a3 + 53;
              v316 = v315 & 7;
              v317 = (a2 + (v315 >> 3));
              if (v316 > 4)
              {
                v318 = *v317;
              }

              else
              {
                v318 = *v317;
              }

              *(result + 31) = (((v318 >> v316) & 0xF) << 8) | v314;
              v25 = 57;
            }

            else
            {
              *(result + 30) = v260 & 0xFE;
              v270 = *a3 & 7;
              v271 = (a2 + ((*a3 + 48) >> 3));
              if (v270 > 4)
              {
                v272 = *v271;
              }

              else
              {
                v272 = *v271;
              }

              *(result + 31) |= (v272 >> v270) & 0xF;
              v319 = *a3 + 52;
              v320 = v319 & 7;
              v321 = (a2 + (v319 >> 3));
              if (v320 > 4)
              {
                v322 = *v321;
              }

              else
              {
                v322 = *v321;
              }

              *(result + 39) |= (v322 >> v320) & 0xF;
              v348 = *a3 & 7;
              v349 = (a2 + ((*a3 + 56) >> 3));
              if (v348 > 4)
              {
                v350 = *v349;
              }

              else
              {
                v350 = *v349;
              }

              *(result + 32) |= (v350 >> v348) & 0xF;
              v364 = *a3 + 60;
              v365 = v364 & 7;
              v366 = (a2 + (v364 >> 3));
              if (v365 > 4)
              {
                v367 = *v366;
              }

              else
              {
                v367 = *v366;
              }

              *(result + 40) |= (v367 >> v365) & 0xF;
              v375 = *a3 & 7;
              v376 = (a2 + ((*a3 + 64) >> 3));
              if (v375 > 4)
              {
                v377 = *v376;
              }

              else
              {
                v377 = *v376;
              }

              *(result + 33) |= (v377 >> v375) & 0xF;
              v382 = *a3 + 68;
              v383 = v382 & 7;
              v384 = (a2 + (v382 >> 3));
              if (v383 > 4)
              {
                v385 = *v384;
              }

              else
              {
                v385 = *v384;
              }

              *(result + 41) |= (v385 >> v383) & 0xF;
              v390 = *a3 & 7;
              v391 = (a2 + ((*a3 + 72) >> 3));
              if (v390 > 4)
              {
                v392 = *v391;
              }

              else
              {
                v392 = *v391;
              }

              *(result + 34) |= (v392 >> v390) & 0xF;
              v397 = *a3 + 76;
              v398 = v397 & 7;
              v399 = (a2 + (v397 >> 3));
              if (v398 > 4)
              {
                v400 = *v399;
              }

              else
              {
                v400 = *v399;
              }

              *(result + 42) |= (v400 >> v398) & 0xF;
              v405 = *a3 & 7;
              v406 = (a2 + ((*a3 + 80) >> 3));
              if (v405 > 4)
              {
                v407 = *v406;
              }

              else
              {
                v407 = *v406;
              }

              *(result + 35) |= (v407 >> v405) & 0xF;
              v412 = *a3 + 84;
              v413 = v412 & 7;
              v414 = (a2 + (v412 >> 3));
              if (v413 > 4)
              {
                v415 = *v414;
              }

              else
              {
                v415 = *v414;
              }

              *(result + 43) |= (v415 >> v413) & 0xF;
              v420 = *a3 & 7;
              v421 = (a2 + ((*a3 + 88) >> 3));
              if (v420 > 4)
              {
                v422 = *v421;
              }

              else
              {
                v422 = *v421;
              }

              *(result + 36) |= (v422 >> v420) & 0xF;
              v427 = *a3 + 92;
              v428 = v427 & 7;
              v429 = (a2 + (v427 >> 3));
              if (v428 > 4)
              {
                v430 = *v429;
              }

              else
              {
                v430 = *v429;
              }

              *(result + 44) |= (v430 >> v428) & 0xF;
              v435 = *a3 & 7;
              v436 = (a2 + ((*a3 + 96) >> 3));
              if (v435 > 4)
              {
                v437 = *v436;
              }

              else
              {
                v437 = *v436;
              }

              *(result + 37) |= (v437 >> v435) & 0xF;
              v442 = *a3 + 100;
              v443 = v442 & 7;
              v444 = (a2 + (v442 >> 3));
              if (v443 > 4)
              {
                v445 = *v444;
              }

              else
              {
                v445 = *v444;
              }

              *(result + 45) |= (v445 >> v443) & 0xF;
              v450 = *a3 & 7;
              v451 = (a2 + ((*a3 + 104) >> 3));
              if (v450 > 4)
              {
                v452 = *v451;
              }

              else
              {
                v452 = *v451;
              }

              *(result + 38) |= (v452 >> v450) & 0xF;
              v457 = *a3 + 108;
              v458 = v457 & 7;
              v459 = (a2 + (v457 >> 3));
              if (v458 > 4)
              {
                v460 = *v459;
              }

              else
              {
                v460 = *v459;
              }

              *(result + 46) |= (v460 >> v458) & 0xF;
              v25 = 112;
            }
          }
        }

        else if (v114)
        {
          *(result + 20) = 0;
          v150 = *a3 + 14;
          v151 = (a2 + (v150 >> 3));
          v152 = v150 & 7;
          if (v152)
          {
            v153 = ((*v151 | (*(v151 + 1) << 8)) >> v152);
          }

          else
          {
            v153 = *v151;
          }

          v284 = *(result + 24) | v153;
          *(result + 24) = v284;
          v285 = *a3 + 46;
          v286 = (a2 + (v285 >> 3));
          v287 = v285 & 7;
          if (v287)
          {
            v288 = ((*v286 | (*(v286 + 1) << 8)) >> v287);
          }

          else
          {
            v288 = *v286;
          }

          *(result + 24) = v284 | (v288 << 32);
          v289 = *a3 + 78;
          v290 = (a2 + (v289 >> 3));
          v291 = v289 & 7;
          if (v291)
          {
            v292 = (*v290 | (*(v290 + 1) << 8)) >> v291;
          }

          else
          {
            LODWORD(v292) = *v290;
          }

          *(result + 32) |= v292;
          if ((*(a2 + ((*a3 + 110) >> 3)) >> ((*a3 + 110) & 7)))
          {
            *(result + 36) = 1;
            v293 = *a3 + 111;
            v294 = v293 & 7;
            v295 = (a2 + (v293 >> 3));
            if (v294 > 3)
            {
              v296 = *v295;
            }

            else
            {
              v296 = *v295;
            }

            v334 = *(result + 40) | (v296 >> v294) & 0x1F;
            *(result + 40) = v334;
            v335 = *a3 + 116;
            v336 = v335 & 7;
            v337 = (a2 + (v335 >> 3));
            if (v336 > 4)
            {
              v338 = (v337[2] << 16) | (v337[1] << 8) | *v337;
            }

            else
            {
              v338 = *v337;
            }

            v353 = v334 | (((v338 >> v336) & 0xFFF) << 16);
            *(result + 40) = v353;
            v354 = *a3 & 7;
            v355 = (a2 + ((*a3 + 128) >> 3));
            if (v354 > 4)
            {
              v356 = *v355;
            }

            else
            {
              v356 = *v355;
            }

            *(result + 40) = v353 | (v356 >> v354 << 28);
            v368 = (*a3 - 124) & 7;
            v369 = (a2 + ((*a3 + 132) >> 3));
            if (v368 > 4)
            {
              v370 = *v369;
            }

            else
            {
              v370 = *v369;
            }

            *(result + 44) |= (v370 >> v368) & 0xF;
            v25 = 136;
          }

          else
          {
            *(result + 36) = 0;
            v297 = *a3 + 111;
            v298 = v297 & 7;
            v299 = (a2 + (v297 >> 3));
            if (v298 > 3)
            {
              v300 = *v299;
            }

            else
            {
              v300 = *v299;
            }

            *(result + 40) |= (v300 >> v298) & 0x1F;
            v25 = 116;
          }
        }

        else
        {
          *(result + 20) = 1;
          v115 = *a3 + 14;
          v116 = v115 & 7;
          v117 = (a2 + (v115 >> 3));
          if (v116 > 4)
          {
            v118 = *v117;
          }

          else
          {
            v118 = *v117;
          }

          v226 = *(result + 24) | (v118 >> v116) & 0xF;
          *(result + 24) = v226;
          v227 = *a3 + 18;
          v228 = v227 & 7;
          v229 = (a2 + (v227 >> 3));
          if (v228 > 4)
          {
            v230 = *v229;
          }

          else
          {
            v230 = *v229;
          }

          v243 = (16 * ((v230 >> v228) & 0xF)) | v226;
          *(result + 24) = v243;
          v244 = *a3 + 22;
          v245 = v244 & 7;
          v246 = (a2 + (v244 >> 3));
          if (v245 > 4)
          {
            v247 = *v246;
          }

          else
          {
            v247 = *v246;
          }

          *(result + 24) = (((v247 >> v245) & 0xF) << 8) | v243;
          if ((*(a2 + ((*a3 + 26) >> 3)) >> ((*a3 + 26) & 7)))
          {
            *(result + 28) = 1;
            v256 = *a3 + 27;
            v257 = v256 & 7;
            v258 = (a2 + (v256 >> 3));
            if (v257 > 3)
            {
              v259 = *v258;
            }

            else
            {
              v259 = *v258;
            }

            v310 = *(result + 32) | (v259 >> v257) & 0x1F;
            *(result + 32) = v310;
            v311 = *a3 & 7;
            v312 = (a2 + ((*a3 + 32) >> 3));
            if (v311 > 4)
            {
              v313 = (v312[2] << 16) | (v312[1] << 8) | *v312;
            }

            else
            {
              v313 = *v312;
            }

            v343 = v310 | (((v313 >> v311) & 0xFFF) << 16);
            *(result + 32) = v343;
            v344 = *a3 + 44;
            v345 = v344 & 7;
            v346 = (a2 + (v344 >> 3));
            if (v345 > 4)
            {
              v347 = *v346;
            }

            else
            {
              v347 = *v346;
            }

            *(result + 32) = v343 | (v347 >> v345 << 28);
            v361 = *a3 & 7;
            v362 = (a2 + ((*a3 + 48) >> 3));
            if (v361 > 4)
            {
              v363 = *v362;
            }

            else
            {
              v363 = *v362;
            }

            *(result + 36) |= (v363 >> v361) & 0xF;
            v25 = 52;
          }

          else
          {
            *(result + 28) = 0;
            v266 = *a3 + 27;
            v267 = v266 & 7;
            v268 = (a2 + (v266 >> 3));
            if (v267 > 3)
            {
              v269 = *v268;
            }

            else
            {
              v269 = *v268;
            }

            *(result + 32) |= (v269 >> v267) & 0x1F;
            v25 = 32;
          }
        }

        goto LABEL_514;
      }

      *(result + 8) = 8;
      *result = 0x700000007;
      v22 = *a3 + 4;
      v23 = (a2 + (v22 >> 3));
      v24 = v22 & 7;
      if (v24)
      {
        LODWORD(v23) = *v23 >> v24;
      }

      else
      {
        LOBYTE(v23) = *v23;
      }

      *(result + 16) |= v23;
      if ((*(a2 + ((*a3 + 12) >> 3)) >> ((*a3 + 12) & 7)))
      {
        *(result + 20) = 1;
        v99 = *a3 + 13;
        v100 = v99 & 7;
        v101 = (a2 + (v99 >> 3));
        if (v100 > 3)
        {
          v102 = *v101;
        }

        else
        {
          v102 = *v101;
        }

        v141 = *(result + 24) | (v102 >> v100) & 0x1F;
        *(result + 24) = v141;
        v142 = *a3 + 18;
        v143 = v142 & 7;
        v144 = (a2 + (v142 >> 3));
        if (v143 == 7)
        {
          v145 = (*(v144 + 3) << 24) | (v144[2] << 16);
        }

        else
        {
          v145 = *(v144 + 2) << 16;
        }

        *(result + 24) = ((((v145 | (v144[1] << 8) | *v144) >> v143) & 0x3FFFFFFFFFFLL) << 6) | v141;
        v25 = 60;
        goto LABEL_514;
      }

      *(result + 20) = 0;
      v103 = *a3 + 13;
      v104 = v103 & 7;
      v105 = (a2 + (v103 >> 3));
      if (v104 > 3)
      {
        v106 = *v105;
      }

      else
      {
        v106 = *v105;
      }

      *(result + 24) |= (v106 >> v104) & 0x1F;
LABEL_66:
      v25 = 18;
      goto LABEL_514;
    }

    if (v15 != 2)
    {
      *(result + 8) = 62;
      *result = 0xA0000000ALL;
      v62 = *a3 + 4;
      v63 = v62 & 7;
      v64 = (a2 + (v62 >> 3));
      if (v63 > 3)
      {
        v65 = *v64;
      }

      else
      {
        v65 = *v64;
      }

      switch((v65 >> v63) & 0x1F)
      {
        case 0u:
          *(result + 16) = 0;
          v91 = *a3 + 9;
          v92 = v91 & 7;
          v93 = (a2 + (v91 >> 3));
          if (v92 == 7)
          {
            v94 = ((*v93 | (v93[1] << 8)) >> 7) & 3;
          }

          else
          {
            v94 = (*v93 >> v92) & 3;
          }

          v972 = *(result + 20) | v94;
          *(result + 20) = v972;
          v973 = *a3 + 11;
          v974 = v973 & 7;
          v975 = (a2 + (v973 >> 3));
          if (v974 > 4)
          {
            v976 = *v975;
          }

          else
          {
            v976 = (v975[2] << 16) | (v975[1] << 8) | *v975;
          }

          v982 = v972 | (4 * ((v976 >> v974) & 0xFFFFF));
          *(result + 20) = v982;
          v983 = *a3 + 31;
          v984 = v983 & 7;
          v985 = (a2 + (v983 >> 3));
          if (v984 == 7)
          {
            v986 = *v985 >> 7;
          }

          else
          {
            v986 = ((v985[2] << 16) | (v985[1] << 8) | *v985) >> v984;
          }

          *(result + 20) = v982 | ((v986 & 0x3FFFF) << 32);
          v991 = *a3 + 49;
          v992 = v991 & 7;
          v993 = (a2 + (v991 >> 3));
          if (v992 > 5)
          {
            v994 = *v993;
          }

          else
          {
            v994 = (v993[2] << 16) | (v993[1] << 8) | *v993;
          }

          v1000 = *(result + 28) | (v994 >> v992) & 0x7FFFF;
          *(result + 28) = v1000;
          v1001 = *a3 + 68;
          v1002 = v1001 & 7;
          v1003 = (a2 + (v1001 >> 3));
          if (v1002 > 1)
          {
            v1004 = (v1003[2] << 16) | (v1003[1] << 8) | *v1003;
          }

          else
          {
            v1004 = *v1003;
          }

          v1009 = v1000 | (((v1004 >> v1002) & 0x7FFF) << 32);
          *(result + 28) = v1009;
          v1010 = *a3 + 83;
          v1011 = v1010 & 7;
          v1012 = (a2 + (v1010 >> 3));
          if (v1011 > 1)
          {
            v1013 = (v1012[2] << 16) | (v1012[1] << 8) | *v1012;
          }

          else
          {
            v1013 = *v1012;
          }

          *(result + 28) = v1009 | (((v1013 >> v1011) & 0x7FFF) << 48);
          v1019 = *a3 + 98;
          v1020 = v1019 & 7;
          v1021 = (a2 + (v1019 >> 3));
          if (v1020 > 1)
          {
            v1022 = (v1021[2] << 16) | (v1021[1] << 8) | *v1021;
          }

          else
          {
            v1022 = *v1021;
          }

          v1026 = *(result + 36) | (v1022 >> v1020) & 0x7FFF;
          *(result + 36) = v1026;
          v1027 = *a3 + 113;
          v1028 = v1027 & 7;
          v1029 = (a2 + (v1027 >> 3));
          if (v1028 > 1)
          {
            v1030 = (v1029[2] << 16) | (v1029[1] << 8) | *v1029;
          }

          else
          {
            v1030 = *v1029;
          }

          v1035 = v1026 | (((v1030 >> v1028) & 0x7FFF) << 16);
          *(result + 36) = v1035;
          v1036 = *a3 & 7;
          v1037 = (a2 + ((*a3 + 128) >> 3));
          if (v1036 > 1)
          {
            v1038 = (v1037[2] << 16) | (v1037[1] << 8) | *v1037;
          }

          else
          {
            v1038 = *v1037;
          }

          v1041 = v1035 | (((v1038 >> v1036) & 0x7FFF) << 32);
          *(result + 36) = v1041;
          v1042 = (*a3 - 113) & 7;
          v1043 = (a2 + ((*a3 + 143) >> 3));
          if (v1042 > 1)
          {
            v1044 = (v1043[2] << 16) | (v1043[1] << 8) | *v1043;
          }

          else
          {
            v1044 = *v1043;
          }

          *(result + 36) = v1041 | (((v1044 >> v1042) & 0x7FFF) << 48);
          v1045 = (*a3 - 98) & 7;
          v1046 = (a2 + ((*a3 + 158) >> 3));
          if (v1045 > 1)
          {
            v1047 = (v1046[2] << 16) | (v1046[1] << 8) | *v1046;
          }

          else
          {
            v1047 = *v1046;
          }

          v1048 = *(result + 44) | (v1047 >> v1045) & 0x7FFF;
          *(result + 44) = v1048;
          v1049 = (*a3 - 83) & 7;
          v1050 = (a2 + ((*a3 + 173) >> 3));
          if (v1049 > 1)
          {
            v1051 = (v1050[2] << 16) | (v1050[1] << 8) | *v1050;
          }

          else
          {
            v1051 = *v1050;
          }

          v1052 = v1048 | (((v1051 >> v1049) & 0x7FFF) << 16);
          *(result + 44) = v1052;
          v1053 = (*a3 - 68) & 7;
          v1054 = (a2 + ((*a3 + 188) >> 3));
          if (v1053 > 1)
          {
            v1055 = (v1054[2] << 16) | (v1054[1] << 8) | *v1054;
          }

          else
          {
            v1055 = *v1054;
          }

          v1056 = v1052 | (((v1055 >> v1053) & 0x7FFF) << 32);
          *(result + 44) = v1056;
          v1057 = (*a3 - 53) & 7;
          v1058 = (a2 + ((*a3 + 203) >> 3));
          if (v1057 > 1)
          {
            v1059 = (v1058[2] << 16) | (v1058[1] << 8) | *v1058;
          }

          else
          {
            v1059 = *v1058;
          }

          *(result + 44) = v1056 | (((v1059 >> v1057) & 0x7FFF) << 48);
          v1060 = (*a3 - 38) & 7;
          v1061 = (a2 + ((*a3 + 218) >> 3));
          if (v1060 > 1)
          {
            v1062 = (v1061[2] << 16) | (v1061[1] << 8) | *v1061;
          }

          else
          {
            v1062 = *v1061;
          }

          v1063 = *(result + 52) | (v1062 >> v1060) & 0x7FFF;
          *(result + 52) = v1063;
          v1064 = (*a3 - 23) & 7;
          v1065 = (a2 + ((*a3 + 233) >> 3));
          if (v1064 > 1)
          {
            v1066 = (v1065[2] << 16) | (v1065[1] << 8) | *v1065;
          }

          else
          {
            v1066 = *v1065;
          }

          v1067 = v1063 | (((v1066 >> v1064) & 0x7FFF) << 16);
          *(result + 52) = v1067;
          v1068 = *a3 & 7;
          v1069 = (a2 + ((*a3 + 248) >> 3));
          if (v1068 > 1)
          {
            v1070 = (v1069[2] << 16) | (v1069[1] << 8) | *v1069;
          }

          else
          {
            v1070 = *v1069;
          }

          v1071 = v1067 | (((v1070 >> v1068) & 0x7FFF) << 32);
          *(result + 52) = v1071;
          v1072 = *a3 + 263;
          v1073 = v1072 & 7;
          v1074 = (a2 + (v1072 >> 3));
          if (v1073 > 2)
          {
            v1075 = (v1074[2] << 16) | (v1074[1] << 8) | *v1074;
          }

          else
          {
            v1075 = *v1074;
          }

          *(result + 52) = v1071 | (((v1075 >> v1073) & 0x3FFF) << 48);
          v1076 = *a3 + 277;
          v1077 = v1076 & 7;
          v1078 = (a2 + (v1076 >> 3));
          if (v1077 > 2)
          {
            v1079 = (v1078[2] << 16) | (v1078[1] << 8) | *v1078;
          }

          else
          {
            v1079 = *v1078;
          }

          v1080 = *(result + 60) | (v1079 >> v1077) & 0x3FFF;
          *(result + 60) = v1080;
          v1081 = *a3 + 291;
          v1082 = v1081 & 7;
          v1083 = (a2 + (v1081 >> 3));
          if (v1082 > 2)
          {
            v1084 = (v1083[2] << 16) | (v1083[1] << 8) | *v1083;
          }

          else
          {
            v1084 = *v1083;
          }

          v1085 = v1080 | (((v1084 >> v1082) & 0x3FFF) << 16);
          *(result + 60) = v1085;
          v1086 = *a3 + 305;
          v1087 = v1086 & 7;
          v1088 = (a2 + (v1086 >> 3));
          if (v1087 == 7)
          {
            v1089 = (((v1088[2] << 16) | (v1088[1] << 8) | *v1088) >> 7) & 0x3FF;
          }

          else
          {
            v1089 = (*v1088 >> v1087) & 0x3FF;
          }

          v1090 = v1085 | (v1089 << 32);
          *(result + 60) = v1090;
          v1091 = *a3 + 315;
          v1092 = v1091 & 7;
          v1093 = (a2 + (v1091 >> 3));
          if (v1092 == 7)
          {
            v1094 = (((v1093[2] << 16) | (v1093[1] << 8) | *v1093) >> 7) & 0x3FF;
          }

          else
          {
            v1094 = (*v1093 >> v1092) & 0x3FF;
          }

          *(result + 60) = v1090 | (v1094 << 48);
          v1095 = *a3 + 325;
          v1096 = v1095 & 7;
          v1097 = (a2 + (v1095 >> 3));
          if (v1096 > 5)
          {
            v1098 = (v1097[2] << 16) | (v1097[1] << 8) | *v1097;
          }

          else
          {
            v1098 = *v1097;
          }

          *(result + 68) |= (v1098 >> v1096) & 0x7FF;
          v25 = 336;
          goto LABEL_514;
        case 1u:
          *(result + 16) = 1;
          v505 = *a3 + 9;
          v506 = v505 & 7;
          v507 = (a2 + (v505 >> 3));
          if (v506 > 4)
          {
            v508 = *v507;
          }

          else
          {
            v508 = (v507[2] << 16) | (v507[1] << 8) | *v507;
          }

          v977 = *(result + 20) | (v508 >> v506) & 0xFFFFF;
          *(result + 20) = v977;
          v978 = *a3 + 29;
          v979 = v978 & 7;
          v980 = (a2 + (v978 >> 3));
          if (v979 > 4)
          {
            v981 = *v980;
          }

          else
          {
            v981 = (v980[2] << 16) | (v980[1] << 8) | *v980;
          }

          *(result + 20) = v977 | (((v981 >> v979) & 0xFFFFF) << 32);
          v987 = *a3 + 49;
          v988 = v987 & 7;
          v989 = (a2 + (v987 >> 3));
          if (v988 > 4)
          {
            v990 = *v989;
          }

          else
          {
            v990 = (v989[2] << 16) | (v989[1] << 8) | *v989;
          }

          v995 = *(result + 28) | (v990 >> v988) & 0xFFFFF;
          *(result + 28) = v995;
          v996 = *a3 + 69;
          v997 = v996 & 7;
          v998 = (a2 + (v996 >> 3));
          if (v997 > 4)
          {
            v999 = *v998;
          }

          else
          {
            v999 = (v998[2] << 16) | (v998[1] << 8) | *v998;
          }

          *(result + 28) = v995 | (((v999 >> v997) & 0xFFFFF) << 32);
          v1005 = *a3 + 89;
          v1006 = v1005 & 7;
          v1007 = (a2 + (v1005 >> 3));
          if (v1006 > 4)
          {
            v1008 = *v1007;
          }

          else
          {
            v1008 = (v1007[2] << 16) | (v1007[1] << 8) | *v1007;
          }

          v1014 = *(result + 36) | (v1008 >> v1006) & 0xFFFFF;
          *(result + 36) = v1014;
          v1015 = *a3 + 109;
          v1016 = v1015 & 7;
          v1017 = (a2 + (v1015 >> 3));
          if (v1016 > 4)
          {
            v1018 = *v1017;
          }

          else
          {
            v1018 = (v1017[2] << 16) | (v1017[1] << 8) | *v1017;
          }

          *(result + 36) = v1014 | (((v1018 >> v1016) & 0xFFFFF) << 32);
          v1023 = (*a3 - 127) & 7;
          v1024 = (a2 + ((*a3 + 129) >> 3));
          if (v1023 > 4)
          {
            v1025 = *v1024;
          }

          else
          {
            v1025 = (v1024[2] << 16) | (v1024[1] << 8) | *v1024;
          }

          v1031 = *(result + 44) | (v1025 >> v1023) & 0xFFFFF;
          *(result + 44) = v1031;
          v1032 = (*a3 - 107) & 7;
          v1033 = (a2 + ((*a3 + 149) >> 3));
          if (v1032 > 4)
          {
            v1034 = *v1033;
          }

          else
          {
            v1034 = (v1033[2] << 16) | (v1033[1] << 8) | *v1033;
          }

          *(result + 44) = v1031 | (((v1034 >> v1032) & 0xFFFFF) << 32);
          v1039 = (a2 + ((*a3 + 169) >> 3));
          if (((*a3 - 87) & 7) != 0)
          {
            v1040 = (((v1039[2] << 16) | (v1039[1] << 8) | *v1039) >> ((*a3 - 87) & 7));
          }

          else
          {
            v1040 = *v1039;
          }

          v1450 = *(result + 52) | v1040;
          *(result + 52) = v1450;
          v1451 = (*a3 - 71) & 7;
          v1452 = (a2 + ((*a3 + 185) >> 3));
          if (v1451 > 1)
          {
            v1453 = (v1452[2] << 16) | (v1452[1] << 8) | *v1452;
          }

          else
          {
            v1453 = *v1452;
          }

          v1454 = v1450 | (((v1453 >> v1451) & 0x7FFF) << 16);
          *(result + 52) = v1454;
          v1455 = (a2 + ((*a3 + 200) >> 3));
          v1456 = *a3 & 7;
          if (v1456)
          {
            v1457 = (((v1455[2] << 16) | (v1455[1] << 8) | *v1455) >> v1456);
          }

          else
          {
            v1457 = *v1455;
          }

          v1458 = v1454 | (v1457 << 32);
          *(result + 52) = v1458;
          v1459 = *a3 & 7;
          v1460 = (a2 + ((*a3 + 216) >> 3));
          if (v1459 > 1)
          {
            v1461 = (v1460[2] << 16) | (v1460[1] << 8) | *v1460;
          }

          else
          {
            v1461 = *v1460;
          }

          *(result + 52) = v1458 | (((v1461 >> v1459) & 0x7FFF) << 48);
          v1462 = (*a3 - 25) & 7;
          v1463 = (a2 + ((*a3 + 231) >> 3));
          if (v1462 > 1)
          {
            v1464 = (v1463[2] << 16) | (v1463[1] << 8) | *v1463;
          }

          else
          {
            v1464 = *v1463;
          }

          v1465 = *(result + 60) | (v1464 >> v1462) & 0x7FFF;
          *(result + 60) = v1465;
          v1466 = (*a3 - 10) & 7;
          v1467 = (a2 + ((*a3 + 246) >> 3));
          if (v1466 > 1)
          {
            v1468 = (v1467[2] << 16) | (v1467[1] << 8) | *v1467;
          }

          else
          {
            v1468 = *v1467;
          }

          *(result + 60) = v1465 | (((v1468 >> v1466) & 0x7FFF) << 16);
          v25 = 261;
          goto LABEL_514;
        case 2u:
          *(result + 16) = 2;
          v488 = *a3 + 9;
          v489 = v488 & 7;
          v490 = (a2 + (v488 >> 3));
          if (v489 > 1)
          {
            v491 = (v490[2] << 16) | (v490[1] << 8) | *v490;
          }

          else
          {
            v491 = *v490;
          }

          v796 = *(result + 20) | (v491 >> v489) & 0x7FFF;
          *(result + 20) = v796;
          v797 = *a3 & 7;
          v798 = (a2 + ((*a3 + 24) >> 3));
          if (v797 > 1)
          {
            v799 = (v798[2] << 16) | (v798[1] << 8) | *v798;
          }

          else
          {
            v799 = *v798;
          }

          v800 = v796 | (((v799 >> v797) & 0x7FFF) << 16);
          *(result + 20) = v800;
          v801 = *a3 + 39;
          v802 = v801 & 7;
          v803 = (a2 + (v801 >> 3));
          if (v802 > 1)
          {
            v804 = (v803[2] << 16) | (v803[1] << 8) | *v803;
          }

          else
          {
            v804 = *v803;
          }

          v805 = v800 | (((v804 >> v802) & 0x7FFF) << 32);
          *(result + 20) = v805;
          v806 = *a3 + 54;
          v807 = v806 & 7;
          v808 = (a2 + (v806 >> 3));
          if (v807 > 1)
          {
            v809 = (v808[2] << 16) | (v808[1] << 8) | *v808;
          }

          else
          {
            v809 = *v808;
          }

          *(result + 20) = v805 | (((v809 >> v807) & 0x7FFF) << 48);
          v810 = *a3 + 69;
          v811 = v810 & 7;
          v812 = (a2 + (v810 >> 3));
          if (v811 > 1)
          {
            v813 = (v812[2] << 16) | (v812[1] << 8) | *v812;
          }

          else
          {
            v813 = *v812;
          }

          v814 = *(result + 28) | (v813 >> v811) & 0x7FFF;
          *(result + 28) = v814;
          v815 = *a3 + 84;
          v816 = v815 & 7;
          v817 = (a2 + (v815 >> 3));
          if (v816 > 1)
          {
            v818 = (v817[2] << 16) | (v817[1] << 8) | *v817;
          }

          else
          {
            v818 = *v817;
          }

          v819 = v814 | (((v818 >> v816) & 0x7FFF) << 16);
          *(result + 28) = v819;
          v820 = *a3 + 99;
          v821 = v820 & 7;
          v822 = (a2 + (v820 >> 3));
          if (v821 > 1)
          {
            v823 = (v822[2] << 16) | (v822[1] << 8) | *v822;
          }

          else
          {
            v823 = *v822;
          }

          v824 = v819 | (((v823 >> v821) & 0x7FFF) << 32);
          *(result + 28) = v824;
          v825 = *a3 + 114;
          v826 = v825 & 7;
          v827 = (a2 + (v825 >> 3));
          if (v826 > 1)
          {
            v828 = (v827[2] << 16) | (v827[1] << 8) | *v827;
          }

          else
          {
            v828 = *v827;
          }

          *(result + 28) = v824 | (((v828 >> v826) & 0x7FFF) << 48);
          v829 = (*a3 - 127) & 7;
          v830 = (a2 + ((*a3 + 129) >> 3));
          if (v829 > 1)
          {
            v831 = (v830[2] << 16) | (v830[1] << 8) | *v830;
          }

          else
          {
            v831 = *v830;
          }

          v832 = *(result + 36) | (v831 >> v829) & 0x7FFF;
          *(result + 36) = v832;
          v833 = *a3 & 7;
          v834 = (a2 + ((*a3 + 144) >> 3));
          if (v833 > 1)
          {
            v835 = (v834[2] << 16) | (v834[1] << 8) | *v834;
          }

          else
          {
            v835 = *v834;
          }

          v836 = v832 | (((v835 >> v833) & 0x7FFF) << 16);
          *(result + 36) = v836;
          v837 = (*a3 - 97) & 7;
          v838 = (a2 + ((*a3 + 159) >> 3));
          if (v837 > 1)
          {
            v839 = (v838[2] << 16) | (v838[1] << 8) | *v838;
          }

          else
          {
            v839 = *v838;
          }

          v840 = v836 | (((v839 >> v837) & 0x7FFF) << 32);
          *(result + 36) = v840;
          v841 = (*a3 - 82) & 7;
          v842 = (a2 + ((*a3 + 174) >> 3));
          if (v841 > 1)
          {
            v843 = (v842[2] << 16) | (v842[1] << 8) | *v842;
          }

          else
          {
            v843 = *v842;
          }

          *(result + 36) = v840 | (((v843 >> v841) & 0x7FFF) << 48);
          v844 = (*a3 - 67) & 7;
          v845 = (a2 + ((*a3 + 189) >> 3));
          if (v844 > 1)
          {
            v846 = (v845[2] << 16) | (v845[1] << 8) | *v845;
          }

          else
          {
            v846 = *v845;
          }

          v847 = *(result + 44) | (v846 >> v844) & 0x7FFF;
          *(result + 44) = v847;
          v848 = (*a3 - 52) & 7;
          v849 = (a2 + ((*a3 + 204) >> 3));
          if (v848 > 1)
          {
            v850 = (v849[2] << 16) | (v849[1] << 8) | *v849;
          }

          else
          {
            v850 = *v849;
          }

          v851 = v847 | (((v850 >> v848) & 0x7FFF) << 16);
          *(result + 44) = v851;
          v852 = (*a3 - 37) & 7;
          v853 = (a2 + ((*a3 + 219) >> 3));
          if (v852 > 1)
          {
            v854 = (v853[2] << 16) | (v853[1] << 8) | *v853;
          }

          else
          {
            v854 = *v853;
          }

          v855 = v851 | (((v854 >> v852) & 0x7FFF) << 32);
          *(result + 44) = v855;
          v856 = (*a3 - 22) & 7;
          v857 = (a2 + ((*a3 + 234) >> 3));
          if (v856 > 1)
          {
            v858 = (v857[2] << 16) | (v857[1] << 8) | *v857;
          }

          else
          {
            v858 = *v857;
          }

          *(result + 44) = v855 | (((v858 >> v856) & 0x7FFF) << 48);
          v859 = (*a3 - 7) & 7;
          v860 = (a2 + ((*a3 + 249) >> 3));
          if (v859 > 1)
          {
            v861 = (v860[2] << 16) | (v860[1] << 8) | *v860;
          }

          else
          {
            v861 = *v860;
          }

          v862 = *(result + 52) | (v861 >> v859) & 0x7FFF;
          *(result + 52) = v862;
          v863 = *a3 & 7;
          v864 = (a2 + ((*a3 + 264) >> 3));
          if (v863 > 1)
          {
            v865 = (v864[2] << 16) | (v864[1] << 8) | *v864;
          }

          else
          {
            v865 = *v864;
          }

          v866 = v862 | (((v865 >> v863) & 0x7FFF) << 16);
          *(result + 52) = v866;
          v867 = *a3 + 279;
          v868 = v867 & 7;
          v869 = (a2 + (v867 >> 3));
          if (v868 > 1)
          {
            v870 = (v869[2] << 16) | (v869[1] << 8) | *v869;
          }

          else
          {
            v870 = *v869;
          }

          v871 = v866 | (((v870 >> v868) & 0x7FFF) << 32);
          *(result + 52) = v871;
          v872 = *a3 + 294;
          v873 = v872 & 7;
          v874 = (a2 + (v872 >> 3));
          if (v873 > 1)
          {
            v875 = (v874[2] << 16) | (v874[1] << 8) | *v874;
          }

          else
          {
            v875 = *v874;
          }

          *(result + 52) = v871 | (((v875 >> v873) & 0x7FFF) << 48);
          v25 = 309;
          goto LABEL_514;
        case 3u:
          *(result + 16) = 3;
          v496 = *(result + 20) | (*(a2 + ((*a3 + 9) >> 3)) >> ((*a3 + 9) & 7)) & 1;
          *(result + 20) = v496;
          v497 = *a3 + 10;
          v498 = (a2 + (v497 >> 3));
          v499 = v497 & 7;
          if (v499)
          {
            v500 = (((v498[2] << 16) | (v498[1] << 8) | *v498) >> v499);
          }

          else
          {
            v500 = *v498;
          }

          v1370 = v496 | (v500 << 16);
          *(result + 20) = v1370;
          v1371 = *a3 + 26;
          v1372 = v1371 & 7;
          v1373 = (a2 + (v1371 >> 3));
          if (v1372 == 7)
          {
            v1374 = *v1373 >> 7;
          }

          else
          {
            v1374 = ((v1373[2] << 16) | (v1373[1] << 8) | *v1373) >> v1372;
          }

          *(result + 20) = v1370 | ((v1374 & 0x3FFFF) << 32);
          v1375 = *a3 + 44;
          v1376 = v1375 & 7;
          v1377 = (a2 + (v1375 >> 3));
          if (v1376 == 7)
          {
            v1378 = *v1377 >> 7;
          }

          else
          {
            v1378 = ((v1377[2] << 16) | (v1377[1] << 8) | *v1377) >> v1376;
          }

          v1379 = *(result + 28) | v1378 & 0x3FFFF;
          *(result + 28) = v1379;
          v1380 = *a3 + 62;
          *(result + 28) = v1379 | (((((*(a2 + (v1380 >> 3) + 2) << 16) | (*(a2 + (v1380 >> 3) + 1) << 8) | *(a2 + (v1380 >> 3))) >> (v1380 & 7)) & 0x1FFFF) << 32);
          v1381 = *a3 + 79;
          v1382 = (a2 + (v1381 >> 3));
          v1383 = v1381 & 7;
          if (v1383)
          {
            v1384 = (((v1382[2] << 16) | (v1382[1] << 8) | *v1382) >> v1383);
          }

          else
          {
            v1384 = *v1382;
          }

          v1385 = *(result + 36) | v1384;
          *(result + 36) = v1385;
          v1386 = *a3 + 95;
          v1387 = (a2 + (v1386 >> 3));
          v1388 = v1386 & 7;
          if (v1388)
          {
            v1389 = (((v1387[2] << 16) | (v1387[1] << 8) | *v1387) >> v1388);
          }

          else
          {
            v1389 = *v1387;
          }

          v1390 = v1385 | (v1389 << 16);
          *(result + 36) = v1390;
          v1391 = *a3 + 111;
          v1392 = (a2 + (v1391 >> 3));
          v1393 = v1391 & 7;
          if (v1393)
          {
            v1394 = (((v1392[2] << 16) | (v1392[1] << 8) | *v1392) >> v1393);
          }

          else
          {
            v1394 = *v1392;
          }

          v1395 = v1390 | (v1394 << 32);
          *(result + 36) = v1395;
          v1396 = *a3 + 127;
          v1397 = (a2 + (v1396 >> 3));
          v1398 = v1396 & 7;
          if (v1398)
          {
            v1399 = (((v1397[2] << 16) | (v1397[1] << 8) | *v1397) >> v1398);
          }

          else
          {
            v1399 = *v1397;
          }

          *(result + 36) = v1395 | (v1399 << 48);
          v1400 = *(result + 44) | (((*(a2 + ((*a3 + 143) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 143) >> 3) + 1) << 8) | *(a2 + ((*a3 + 143) >> 3))) >> ((*a3 - 113) & 7)) & 0x1FFFF;
          *(result + 44) = v1400;
          *(result + 44) = v1400 | (((((*(a2 + ((*a3 + 160) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 160) >> 3) + 1) << 8) | *(a2 + ((*a3 + 160) >> 3))) >> (*a3 & 7)) & 0x1FFFF) << 32);
          v1401 = *(result + 52) | (((*(a2 + ((*a3 + 177) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 177) >> 3) + 1) << 8) | *(a2 + ((*a3 + 177) >> 3))) >> ((*a3 - 79) & 7)) & 0x1FFFF;
          *(result + 52) = v1401;
          v1402 = v1401 | (((((*(a2 + ((*a3 + 194) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 194) >> 3) + 1) << 8) | *(a2 + ((*a3 + 194) >> 3))) >> ((*a3 - 62) & 7)) & 0x1FFFF) << 32);
          *(result + 52) = v1402;
          v1403 = (*a3 - 45) & 7;
          v1404 = (a2 + ((*a3 + 211) >> 3));
          if (v1403 > 1)
          {
            v1405 = (v1404[2] << 16) | (v1404[1] << 8) | *v1404;
          }

          else
          {
            v1405 = *v1404;
          }

          *(result + 52) = v1402 | (((v1405 >> v1403) & 0x7FFF) << 49);
          v1406 = (a2 + ((*a3 + 226) >> 3));
          if (((*a3 - 30) & 7) != 0)
          {
            v1407 = (((v1406[2] << 16) | (v1406[1] << 8) | *v1406) >> ((*a3 - 30) & 7));
          }

          else
          {
            v1407 = *v1406;
          }

          v1408 = *(result + 60) | v1407;
          *(result + 60) = v1408;
          v1409 = (*a3 - 14) & 7;
          v1410 = (a2 + ((*a3 + 242) >> 3));
          if (v1409 == 7)
          {
            v1411 = *v1410 >> 7;
          }

          else
          {
            v1411 = ((v1410[2] << 16) | (v1410[1] << 8) | *v1410) >> v1409;
          }

          *(result + 60) = v1408 | ((v1411 & 0x3FFFF) << 32);
          v1412 = *a3 + 260;
          v1413 = v1412 & 7;
          v1414 = (a2 + (v1412 >> 3));
          if (v1413 == 7)
          {
            v1415 = *v1414 >> 7;
          }

          else
          {
            v1415 = ((v1414[2] << 16) | (v1414[1] << 8) | *v1414) >> v1413;
          }

          v1416 = *(result + 68) | v1415 & 0x3FFFF;
          *(result + 68) = v1416;
          v1417 = *a3 + 278;
          *(result + 68) = v1416 | (((((*(a2 + (v1417 >> 3) + 2) << 16) | (*(a2 + (v1417 >> 3) + 1) << 8) | *(a2 + (v1417 >> 3))) >> (v1417 & 7)) & 0x1FFFF) << 32);
          v1418 = *a3 + 295;
          v1419 = (a2 + (v1418 >> 3));
          v1420 = v1418 & 7;
          if (v1420)
          {
            v1421 = (((v1419[2] << 16) | (v1419[1] << 8) | *v1419) >> v1420);
          }

          else
          {
            v1421 = *v1419;
          }

          v1422 = *(result + 76) | v1421;
          *(result + 76) = v1422;
          v1423 = *a3 + 311;
          v1424 = (a2 + (v1423 >> 3));
          v1425 = v1423 & 7;
          if (v1425)
          {
            v1426 = (((v1424[2] << 16) | (v1424[1] << 8) | *v1424) >> v1425);
          }

          else
          {
            v1426 = *v1424;
          }

          v1427 = v1422 | (v1426 << 16);
          *(result + 76) = v1427;
          v1428 = *a3 + 327;
          v1429 = (a2 + (v1428 >> 3));
          v1430 = v1428 & 7;
          if (v1430)
          {
            v1431 = (((v1429[2] << 16) | (v1429[1] << 8) | *v1429) >> v1430);
          }

          else
          {
            v1431 = *v1429;
          }

          v1432 = v1427 | (v1431 << 32);
          *(result + 76) = v1432;
          v1433 = *a3 + 343;
          v1434 = (a2 + (v1433 >> 3));
          v1435 = v1433 & 7;
          if (v1435)
          {
            v1436 = (((v1434[2] << 16) | (v1434[1] << 8) | *v1434) >> v1435);
          }

          else
          {
            v1436 = *v1434;
          }

          *(result + 76) = v1432 | (v1436 << 48);
          v1437 = *a3 + 359;
          v1438 = (a2 + (v1437 >> 3));
          v1439 = v1437 & 7;
          if (v1439)
          {
            v1440 = (((v1438[2] << 16) | (v1438[1] << 8) | *v1438) >> v1439);
          }

          else
          {
            v1440 = *v1438;
          }

          v1441 = *(result + 84) | v1440;
          *(result + 84) = v1441;
          v1442 = *a3 + 375;
          v1443 = (a2 + (v1442 >> 3));
          v1444 = v1442 & 7;
          if (v1444)
          {
            v1445 = (((v1443[2] << 16) | (v1443[1] << 8) | *v1443) >> v1444);
          }

          else
          {
            v1445 = *v1443;
          }

          v1446 = v1441 | (v1445 << 16);
          *(result + 84) = v1446;
          v1447 = (*a3 - 121) & 7;
          v1448 = (a2 + ((*a3 + 391) >> 3));
          if (v1447 > 1)
          {
            v1449 = (v1448[2] << 16) | (v1448[1] << 8) | *v1448;
          }

          else
          {
            v1449 = *v1448;
          }

          *(result + 84) = v1446 | (((v1449 >> v1447) & 0x7FFF) << 32);
          v25 = 406;
          goto LABEL_514;
        case 4u:
          *(result + 16) = 4;
          v474 = *(result + 20) | (*(a2 + ((*a3 + 9) >> 3)) >> ((*a3 + 9) & 7)) & 1;
          *(result + 20) = v474;
          v475 = *a3 + 10;
          v476 = v475 & 7;
          v477 = (a2 + (v475 >> 3));
          if (v476 == 7)
          {
            v478 = *v477 >> 7;
          }

          else
          {
            v478 = ((v477[2] << 16) | (v477[1] << 8) | *v477) >> v476;
          }

          v591 = v474 | (2 * (v478 & 0x3FFFFu));
          *(result + 20) = v591;
          v592 = *a3 + 28;
          v593 = v592 & 7;
          v594 = (a2 + (v592 >> 3));
          if (v593 == 7)
          {
            v595 = *v594 >> 7;
          }

          else
          {
            v595 = ((v594[2] << 16) | (v594[1] << 8) | *v594) >> v593;
          }

          *(result + 20) = v591 | ((v595 & 0x3FFFF) << 32);
          v596 = *a3 + 46;
          v597 = v596 & 7;
          v598 = (a2 + (v596 >> 3));
          if (v597 == 7)
          {
            v599 = *v598 >> 7;
          }

          else
          {
            v599 = ((v598[2] << 16) | (v598[1] << 8) | *v598) >> v597;
          }

          v600 = *(result + 28) | v599 & 0x3FFFF;
          *(result + 28) = v600;
          v601 = *a3 & 7;
          v602 = (a2 + ((*a3 + 64) >> 3));
          if (v601 == 7)
          {
            v603 = *v602 >> 7;
          }

          else
          {
            v603 = ((v602[2] << 16) | (v602[1] << 8) | *v602) >> v601;
          }

          *(result + 28) = v600 | ((v603 & 0x3FFFF) << 32);
          v604 = *a3 + 82;
          v605 = v604 & 7;
          v606 = (a2 + (v604 >> 3));
          if (v605 == 7)
          {
            v607 = *v606 >> 7;
          }

          else
          {
            v607 = ((v606[2] << 16) | (v606[1] << 8) | *v606) >> v605;
          }

          v608 = *(result + 36) | v607 & 0x3FFFF;
          *(result + 36) = v608;
          v609 = *a3 + 100;
          v610 = v609 & 7;
          v611 = (a2 + (v609 >> 3));
          if (v610 == 7)
          {
            v612 = *v611 >> 7;
          }

          else
          {
            v612 = ((v611[2] << 16) | (v611[1] << 8) | *v611) >> v610;
          }

          *(result + 36) = v608 | ((v612 & 0x3FFFF) << 32);
          v613 = *a3 + 118;
          v614 = v613 & 7;
          v615 = (a2 + (v613 >> 3));
          if (v614 > 1)
          {
            v616 = (v615[2] << 16) | (v615[1] << 8) | *v615;
          }

          else
          {
            v616 = *v615;
          }

          v617 = *(result + 44) | (v616 >> v614) & 0x7FFF;
          *(result + 44) = v617;
          v618 = (*a3 - 123) & 7;
          v619 = (a2 + ((*a3 + 133) >> 3));
          if (v618 > 1)
          {
            v620 = (v619[2] << 16) | (v619[1] << 8) | *v619;
          }

          else
          {
            v620 = *v619;
          }

          v621 = v617 | (((v620 >> v618) & 0x7FFF) << 16);
          *(result + 44) = v621;
          v622 = (*a3 - 108) & 7;
          v623 = (a2 + ((*a3 + 148) >> 3));
          if (v622 > 1)
          {
            v624 = (v623[2] << 16) | (v623[1] << 8) | *v623;
          }

          else
          {
            v624 = *v623;
          }

          v625 = v621 | (((v624 >> v622) & 0x7FFF) << 32);
          *(result + 44) = v625;
          v626 = (*a3 - 93) & 7;
          v627 = (a2 + ((*a3 + 163) >> 3));
          if (v626 > 1)
          {
            v628 = (v627[2] << 16) | (v627[1] << 8) | *v627;
          }

          else
          {
            v628 = *v627;
          }

          *(result + 44) = v625 | (((v628 >> v626) & 0x7FFF) << 48);
          v629 = (*a3 - 78) & 7;
          v630 = (a2 + ((*a3 + 178) >> 3));
          if (v629 > 4)
          {
            v631 = *v630;
          }

          else
          {
            v631 = (v630[2] << 16) | (v630[1] << 8) | *v630;
          }

          v632 = *(result + 52) | (v631 >> v629) & 0xFFFFF;
          *(result + 52) = v632;
          v633 = (*a3 - 58) & 7;
          v634 = (a2 + ((*a3 + 198) >> 3));
          if (v633 > 4)
          {
            v635 = *v634;
          }

          else
          {
            v635 = (v634[2] << 16) | (v634[1] << 8) | *v634;
          }

          *(result + 52) = v632 | (((v635 >> v633) & 0xFFFFF) << 32);
          v636 = (*a3 - 38) & 7;
          v637 = (a2 + ((*a3 + 218) >> 3));
          if (v636 == 7)
          {
            v638 = *v637 >> 7;
          }

          else
          {
            v638 = ((v637[2] << 16) | (v637[1] << 8) | *v637) >> v636;
          }

          v639 = *(result + 60) | v638 & 0x3FFFF;
          *(result + 60) = v639;
          v640 = (a2 + ((*a3 + 236) >> 3));
          if (((*a3 - 20) & 7) != 0)
          {
            v641 = (((v640[2] << 16) | (v640[1] << 8) | *v640) >> ((*a3 - 20) & 7));
          }

          else
          {
            v641 = *v640;
          }

          v1356 = v639 | (v641 << 32);
          *(result + 60) = v1356;
          v1357 = (a2 + ((*a3 + 252) >> 3));
          if (((*a3 - 4) & 7) != 0)
          {
            v1358 = (((v1357[2] << 16) | (v1357[1] << 8) | *v1357) >> ((*a3 - 4) & 7));
          }

          else
          {
            v1358 = *v1357;
          }

          *(result + 60) = v1356 | (v1358 << 48);
          v25 = 268;
          goto LABEL_514;
        case 5u:
          *(result + 16) = 6;
          v514 = *a3 + 9;
          v515 = v514 & 7;
          v516 = (a2 + (v514 >> 3));
          if (v515 > 5)
          {
            v517 = *v516;
          }

          else
          {
            v517 = (v516[2] << 16) | (v516[1] << 8) | *v516;
          }

          v1154 = *(result + 20) | (v517 >> v515) & 0x7FFFF;
          *(result + 20) = v1154;
          v1155 = *a3 + 28;
          v1156 = v1155 & 7;
          v1157 = (a2 + (v1155 >> 3));
          if (v1156 > 5)
          {
            v1158 = *v1157;
          }

          else
          {
            v1158 = (v1157[2] << 16) | (v1157[1] << 8) | *v1157;
          }

          *(result + 20) = v1154 | (((v1158 >> v1156) & 0x7FFFF) << 32);
          v1159 = *a3 + 47;
          v1160 = v1159 & 7;
          v1161 = (a2 + (v1159 >> 3));
          if (v1160 > 5)
          {
            v1162 = *v1161;
          }

          else
          {
            v1162 = (v1161[2] << 16) | (v1161[1] << 8) | *v1161;
          }

          v1163 = *(result + 28) | (v1162 >> v1160) & 0x7FFFF;
          *(result + 28) = v1163;
          v1164 = *a3 + 66;
          v1165 = v1164 & 7;
          v1166 = (a2 + (v1164 >> 3));
          if (v1165 > 5)
          {
            v1167 = *v1166;
          }

          else
          {
            v1167 = (v1166[2] << 16) | (v1166[1] << 8) | *v1166;
          }

          *(result + 28) = v1163 | (((v1167 >> v1165) & 0x7FFFF) << 32);
          v1168 = *a3 + 85;
          v1169 = v1168 & 7;
          v1170 = (a2 + (v1168 >> 3));
          if (v1169 > 3)
          {
            v1171 = *v1170;
          }

          else
          {
            v1171 = (v1170[2] << 16) | (v1170[1] << 8) | *v1170;
          }

          v1172 = *(result + 36) | (v1171 >> v1169) & 0x1FFFFF;
          *(result + 36) = v1172;
          v1173 = *a3 + 106;
          v1174 = v1173 & 7;
          v1175 = (a2 + (v1173 >> 3));
          if (v1174 > 3)
          {
            v1176 = *v1175;
          }

          else
          {
            v1176 = (v1175[2] << 16) | (v1175[1] << 8) | *v1175;
          }

          *(result + 36) = v1172 | (((v1176 >> v1174) & 0x1FFFFF) << 32);
          v1177 = *a3 + 127;
          v1178 = v1177 & 7;
          v1179 = (a2 + (v1177 >> 3));
          if (v1178 > 3)
          {
            v1180 = *v1179;
          }

          else
          {
            v1180 = (v1179[2] << 16) | (v1179[1] << 8) | *v1179;
          }

          v1181 = *(result + 44) | (v1180 >> v1178) & 0x1FFFFF;
          *(result + 44) = v1181;
          v1182 = (*a3 - 108) & 7;
          v1183 = (a2 + ((*a3 + 148) >> 3));
          if (v1182 > 3)
          {
            v1184 = *v1183;
          }

          else
          {
            v1184 = (v1183[2] << 16) | (v1183[1] << 8) | *v1183;
          }

          *(result + 44) = v1181 | (((v1184 >> v1182) & 0x1FFFFF) << 32);
          v1185 = (*a3 - 87) & 7;
          v1186 = (a2 + ((*a3 + 169) >> 3));
          if (v1185 > 3)
          {
            v1187 = *v1186;
          }

          else
          {
            v1187 = (v1186[2] << 16) | (v1186[1] << 8) | *v1186;
          }

          v1188 = *(result + 52) | (v1187 >> v1185) & 0x1FFFFF;
          *(result + 52) = v1188;
          v1189 = (*a3 - 66) & 7;
          v1190 = (a2 + ((*a3 + 190) >> 3));
          if (v1189 > 1)
          {
            v1191 = (v1190[2] << 16) | (v1190[1] << 8) | *v1190;
          }

          else
          {
            v1191 = *v1190;
          }

          *(result + 52) = v1188 | (((v1191 >> v1189) & 0x7FFF) << 32);
          v25 = 205;
          goto LABEL_514;
        case 6u:
          *(result + 16) = 7;
          v522 = *a3 + 9;
          v523 = v522 & 7;
          v524 = (a2 + (v522 >> 3));
          if (v523 > 2)
          {
            v525 = *v524;
          }

          else
          {
            v525 = (v524[2] << 16) | (v524[1] << 8) | *v524;
          }

          v1232 = *(result + 20) | (v525 >> v523) & 0x3FFFFF;
          *(result + 20) = v1232;
          v1233 = *a3 + 31;
          v1234 = v1233 & 7;
          v1235 = (a2 + (v1233 >> 3));
          if (v1234 > 2)
          {
            v1236 = *v1235;
          }

          else
          {
            v1236 = (v1235[2] << 16) | (v1235[1] << 8) | *v1235;
          }

          *(result + 20) = v1232 | (((v1236 >> v1234) & 0x3FFFFF) << 32);
          v1237 = *a3 + 53;
          v1238 = v1237 & 7;
          v1239 = (a2 + (v1237 >> 3));
          if (v1238 > 2)
          {
            v1240 = *v1239;
          }

          else
          {
            v1240 = (v1239[2] << 16) | (v1239[1] << 8) | *v1239;
          }

          v1241 = *(result + 28) | (v1240 >> v1238) & 0x3FFFFF;
          *(result + 28) = v1241;
          v1242 = *a3 + 75;
          v1243 = v1242 & 7;
          v1244 = (a2 + (v1242 >> 3));
          if (v1243 > 2)
          {
            v1245 = *v1244;
          }

          else
          {
            v1245 = (v1244[2] << 16) | (v1244[1] << 8) | *v1244;
          }

          *(result + 28) = v1241 | (((v1245 >> v1243) & 0x3FFFFF) << 32);
          v1246 = *a3 + 97;
          v1247 = v1246 & 7;
          v1248 = (a2 + (v1246 >> 3));
          if (v1247 > 2)
          {
            v1249 = *v1248;
          }

          else
          {
            v1249 = (v1248[2] << 16) | (v1248[1] << 8) | *v1248;
          }

          v1250 = *(result + 36) | (v1249 >> v1247) & 0x3FFFFF;
          *(result + 36) = v1250;
          v1251 = *a3 + 119;
          v1252 = v1251 & 7;
          v1253 = (a2 + (v1251 >> 3));
          if (v1252 > 2)
          {
            v1254 = *v1253;
          }

          else
          {
            v1254 = (v1253[2] << 16) | (v1253[1] << 8) | *v1253;
          }

          *(result + 36) = v1250 | (((v1254 >> v1252) & 0x3FFFFF) << 32);
          v1255 = (*a3 - 115) & 7;
          v1256 = (a2 + ((*a3 + 141) >> 3));
          if (v1255 > 2)
          {
            v1257 = *v1256;
          }

          else
          {
            v1257 = (v1256[2] << 16) | (v1256[1] << 8) | *v1256;
          }

          v1258 = *(result + 44) | (v1257 >> v1255) & 0x3FFFFF;
          *(result + 44) = v1258;
          v1259 = (*a3 - 93) & 7;
          v1260 = (a2 + ((*a3 + 163) >> 3));
          if (v1259 > 5)
          {
            v1261 = *v1260;
          }

          else
          {
            v1261 = (v1260[2] << 16) | (v1260[1] << 8) | *v1260;
          }

          *(result + 44) = v1258 | (((v1261 >> v1259) & 0x7FFFF) << 32);
          v1262 = (*a3 - 74) & 7;
          v1263 = (a2 + ((*a3 + 182) >> 3));
          if (v1262 > 2)
          {
            v1264 = *v1263;
          }

          else
          {
            v1264 = (v1263[2] << 16) | (v1263[1] << 8) | *v1263;
          }

          v1265 = *(result + 52) | (v1264 >> v1262) & 0x3FFFFF;
          *(result + 52) = v1265;
          v1266 = (*a3 - 52) & 7;
          v1267 = (a2 + ((*a3 + 204) >> 3));
          if (v1266 > 2)
          {
            v1268 = *v1267;
          }

          else
          {
            v1268 = (v1267[2] << 16) | (v1267[1] << 8) | *v1267;
          }

          *(result + 52) = v1265 | (((v1268 >> v1266) & 0x3FFFFF) << 32);
          v1269 = (*a3 - 30) & 7;
          v1270 = (a2 + ((*a3 + 226) >> 3));
          if (v1269 > 2)
          {
            v1271 = *v1270;
          }

          else
          {
            v1271 = (v1270[2] << 16) | (v1270[1] << 8) | *v1270;
          }

          v1272 = *(result + 60) | (v1271 >> v1269) & 0x3FFFFF;
          *(result + 60) = v1272;
          v1273 = *a3 & 7;
          v1274 = (a2 + ((*a3 + 248) >> 3));
          if (v1273 > 2)
          {
            v1275 = *v1274;
          }

          else
          {
            v1275 = (v1274[2] << 16) | (v1274[1] << 8) | *v1274;
          }

          *(result + 60) = v1272 | (((v1275 >> v1273) & 0x3FFFFF) << 32);
          v1276 = *a3 + 270;
          v1277 = v1276 & 7;
          v1278 = (a2 + (v1276 >> 3));
          if (v1277 > 2)
          {
            v1279 = *v1278;
          }

          else
          {
            v1279 = (v1278[2] << 16) | (v1278[1] << 8) | *v1278;
          }

          v1280 = *(result + 68) | (v1279 >> v1277) & 0x3FFFFF;
          *(result + 68) = v1280;
          v1281 = *a3 + 292;
          v1282 = v1281 & 7;
          v1283 = (a2 + (v1281 >> 3));
          if (v1282 > 2)
          {
            v1284 = *v1283;
          }

          else
          {
            v1284 = (v1283[2] << 16) | (v1283[1] << 8) | *v1283;
          }

          *(result + 68) = v1280 | (((v1284 >> v1282) & 0x3FFFFF) << 32);
          v1285 = *a3 + 314;
          v1286 = v1285 & 7;
          v1287 = (a2 + (v1285 >> 3));
          if (v1286 > 2)
          {
            v1288 = *v1287;
          }

          else
          {
            v1288 = (v1287[2] << 16) | (v1287[1] << 8) | *v1287;
          }

          v1289 = *(result + 76) | (v1288 >> v1286) & 0x3FFFFF;
          *(result + 76) = v1289;
          v1290 = *a3 & 7;
          v1291 = (a2 + ((*a3 + 336) >> 3));
          if (v1290 > 5)
          {
            v1292 = *v1291;
          }

          else
          {
            v1292 = (v1291[2] << 16) | (v1291[1] << 8) | *v1291;
          }

          *(result + 76) = v1289 | (((v1292 >> v1290) & 0x7FFFF) << 32);
          v25 = 355;
          goto LABEL_514;
        case 7u:
          *(result + 16) = 8;
          v501 = *a3 + 9;
          v502 = v501 & 7;
          v503 = (a2 + (v501 >> 3));
          if (v502 > 5)
          {
            v504 = *v503;
          }

          else
          {
            v504 = (v503[2] << 16) | (v503[1] << 8) | *v503;
          }

          v916 = *(result + 20) | (v504 >> v502) & 0x7FFFF;
          *(result + 20) = v916;
          v917 = *a3 + 28;
          v918 = v917 & 7;
          v919 = (a2 + (v917 >> 3));
          if (v918 > 5)
          {
            v920 = *v919;
          }

          else
          {
            v920 = (v919[2] << 16) | (v919[1] << 8) | *v919;
          }

          *(result + 20) = v916 | (((v920 >> v918) & 0x7FFFF) << 32);
          v921 = *a3 + 47;
          v922 = v921 & 7;
          v923 = (a2 + (v921 >> 3));
          if (v922 > 5)
          {
            v924 = *v923;
          }

          else
          {
            v924 = (v923[2] << 16) | (v923[1] << 8) | *v923;
          }

          v925 = *(result + 28) | (v924 >> v922) & 0x7FFFF;
          *(result + 28) = v925;
          v926 = *a3 + 66;
          v927 = v926 & 7;
          v928 = (a2 + (v926 >> 3));
          if (v927 > 5)
          {
            v929 = *v928;
          }

          else
          {
            v929 = (v928[2] << 16) | (v928[1] << 8) | *v928;
          }

          *(result + 28) = v925 | (((v929 >> v927) & 0x7FFFF) << 32);
          v930 = *a3 + 85;
          v931 = v930 & 7;
          v932 = (a2 + (v930 >> 3));
          if (v931 > 5)
          {
            v933 = *v932;
          }

          else
          {
            v933 = (v932[2] << 16) | (v932[1] << 8) | *v932;
          }

          v934 = *(result + 36) | (v933 >> v931) & 0x7FFFF;
          *(result + 36) = v934;
          v935 = *a3 & 7;
          v936 = (a2 + ((*a3 + 104) >> 3));
          if (v935 > 5)
          {
            v937 = *v936;
          }

          else
          {
            v937 = (v936[2] << 16) | (v936[1] << 8) | *v936;
          }

          *(result + 36) = v934 | (((v937 >> v935) & 0x7FFFF) << 32);
          v938 = *a3 + 123;
          v939 = v938 & 7;
          v940 = (a2 + (v938 >> 3));
          if (v939 > 5)
          {
            v941 = *v940;
          }

          else
          {
            v941 = (v940[2] << 16) | (v940[1] << 8) | *v940;
          }

          v942 = *(result + 44) | (v941 >> v939) & 0x7FFFF;
          *(result + 44) = v942;
          v943 = (*a3 - 114) & 7;
          v944 = (a2 + ((*a3 + 142) >> 3));
          if (v943 > 1)
          {
            v945 = (v944[2] << 16) | (v944[1] << 8) | *v944;
          }

          else
          {
            v945 = *v944;
          }

          *(result + 44) = v942 | (((v945 >> v943) & 0x7FFF) << 32);
          v946 = (*a3 - 99) & 7;
          v947 = (a2 + ((*a3 + 157) >> 3));
          if (v946 > 4)
          {
            v948 = *v947;
          }

          else
          {
            v948 = (v947[2] << 16) | (v947[1] << 8) | *v947;
          }

          v949 = *(result + 52) | (v948 >> v946) & 0xFFFFF;
          *(result + 52) = v949;
          v950 = (*a3 - 79) & 7;
          v951 = (a2 + ((*a3 + 177) >> 3));
          if (v950 > 4)
          {
            v952 = *v951;
          }

          else
          {
            v952 = (v951[2] << 16) | (v951[1] << 8) | *v951;
          }

          *(result + 52) = v949 | (((v952 >> v950) & 0xFFFFF) << 32);
          v953 = (*a3 - 59) & 7;
          v954 = (a2 + ((*a3 + 197) >> 3));
          if (v953 > 4)
          {
            v955 = *v954;
          }

          else
          {
            v955 = (v954[2] << 16) | (v954[1] << 8) | *v954;
          }

          v956 = *(result + 60) | (v955 >> v953) & 0xFFFFF;
          *(result + 60) = v956;
          v957 = (*a3 - 39) & 7;
          v958 = (a2 + ((*a3 + 217) >> 3));
          if (v957 > 4)
          {
            v959 = *v958;
          }

          else
          {
            v959 = (v958[2] << 16) | (v958[1] << 8) | *v958;
          }

          *(result + 60) = v956 | (((v959 >> v957) & 0xFFFFF) << 32);
          v960 = (*a3 - 19) & 7;
          v961 = (a2 + ((*a3 + 237) >> 3));
          if (v960 > 4)
          {
            v962 = *v961;
          }

          else
          {
            v962 = (v961[2] << 16) | (v961[1] << 8) | *v961;
          }

          v963 = *(result + 68) | (v962 >> v960) & 0xFFFFF;
          *(result + 68) = v963;
          v964 = *a3 + 257;
          v965 = v964 & 7;
          v966 = (a2 + (v964 >> 3));
          if (v965 > 4)
          {
            v967 = *v966;
          }

          else
          {
            v967 = (v966[2] << 16) | (v966[1] << 8) | *v966;
          }

          *(result + 68) = v963 | (((v967 >> v965) & 0xFFFFF) << 32);
          v968 = *a3 + 277;
          v969 = v968 & 7;
          v970 = (a2 + (v968 >> 3));
          if (v969 > 4)
          {
            v971 = *v970;
          }

          else
          {
            v971 = (v970[2] << 16) | (v970[1] << 8) | *v970;
          }

          *(result + 76) |= (v971 >> v969) & 0xFFFFF;
          v25 = 297;
          goto LABEL_514;
        case 8u:
          *(result + 16) = 9;
          v535 = *a3 + 9;
          v536 = (a2 + (v535 >> 3));
          v537 = v535 & 7;
          if (v537)
          {
            v538 = (((v536[2] << 16) | (v536[1] << 8) | *v536) >> v537);
          }

          else
          {
            v538 = *v536;
          }

          v1586 = *(result + 20) | v538;
          *(result + 20) = v1586;
          v1587 = *a3 + 25;
          v1588 = (a2 + (v1587 >> 3));
          v1589 = v1587 & 7;
          if (v1589)
          {
            v1590 = (((v1588[2] << 16) | (v1588[1] << 8) | *v1588) >> v1589);
          }

          else
          {
            v1590 = *v1588;
          }

          v1591 = v1586 | (v1590 << 16);
          *(result + 20) = v1591;
          *(result + 20) = v1591 | (((((*(a2 + ((*a3 + 41) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 41) >> 3) + 1) << 8) | *(a2 + ((*a3 + 41) >> 3))) >> ((*a3 + 41) & 7)) & 0x1FFFF) << 32);
          v1592 = *(result + 28) | (((*(a2 + ((*a3 + 58) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 58) >> 3) + 1) << 8) | *(a2 + ((*a3 + 58) >> 3))) >> ((*a3 + 58) & 7)) & 0x1FFFF;
          *(result + 28) = v1592;
          v1593 = *a3 + 75;
          *(result + 28) = v1592 | (((((*(a2 + (v1593 >> 3) + 2) << 16) | (*(a2 + (v1593 >> 3) + 1) << 8) | *(a2 + (v1593 >> 3))) >> (v1593 & 7)) & 0x1FFFF) << 32);
          v1594 = *a3 + 92;
          v1595 = v1594 & 7;
          v1596 = (a2 + (v1594 >> 3));
          if (v1595 > 3)
          {
            v1597 = *v1596;
          }

          else
          {
            v1597 = (v1596[2] << 16) | (v1596[1] << 8) | *v1596;
          }

          *(result + 36) |= (v1597 >> v1595) & 0x1FFFFF;
          v25 = 113;
          goto LABEL_514;
        case 9u:
          *(result + 16) = 10;
          v483 = *(result + 20) | (*(a2 + ((*a3 + 9) >> 3)) >> ((*a3 + 9) & 7)) & 1;
          *(result + 20) = v483;
          v484 = *a3 + 10;
          v485 = v484 & 7;
          v486 = (a2 + (v484 >> 3));
          if (v485 > 1)
          {
            v487 = (v486[2] << 16) | (v486[1] << 8) | *v486;
          }

          else
          {
            v487 = *v486;
          }

          v665 = v483 | (2 * ((v487 >> v485) & 0x7FFF));
          *(result + 20) = v665;
          v666 = *a3 + 25;
          v667 = v666 & 7;
          v668 = (a2 + (v666 >> 3));
          if (v667 > 1)
          {
            v669 = (v668[2] << 16) | (v668[1] << 8) | *v668;
          }

          else
          {
            v669 = *v668;
          }

          v670 = v665 | (((v669 >> v667) & 0x7FFF) << 16);
          *(result + 20) = v670;
          v671 = *a3 & 7;
          v672 = (a2 + ((*a3 + 40) >> 3));
          if (v671 > 1)
          {
            v673 = (v672[2] << 16) | (v672[1] << 8) | *v672;
          }

          else
          {
            v673 = *v672;
          }

          v674 = v670 | (((v673 >> v671) & 0x7FFF) << 32);
          *(result + 20) = v674;
          v675 = *a3 + 55;
          v676 = v675 & 7;
          v677 = (a2 + (v675 >> 3));
          if (v676 > 1)
          {
            v678 = (v677[2] << 16) | (v677[1] << 8) | *v677;
          }

          else
          {
            v678 = *v677;
          }

          *(result + 20) = v674 | (((v678 >> v676) & 0x7FFF) << 48);
          v679 = *a3 + 70;
          v680 = v679 & 7;
          v681 = (a2 + (v679 >> 3));
          if (v680 > 1)
          {
            v682 = (v681[2] << 16) | (v681[1] << 8) | *v681;
          }

          else
          {
            v682 = *v681;
          }

          v683 = *(result + 28) | (v682 >> v680) & 0x7FFF;
          *(result + 28) = v683;
          v684 = *a3 + 85;
          v685 = v684 & 7;
          v686 = (a2 + (v684 >> 3));
          if (v685 > 1)
          {
            v687 = (v686[2] << 16) | (v686[1] << 8) | *v686;
          }

          else
          {
            v687 = *v686;
          }

          v688 = v683 | (((v687 >> v685) & 0x7FFF) << 16);
          *(result + 28) = v688;
          v689 = *a3 + 100;
          v690 = v689 & 7;
          v691 = (a2 + (v689 >> 3));
          if (v690 > 1)
          {
            v692 = (v691[2] << 16) | (v691[1] << 8) | *v691;
          }

          else
          {
            v692 = *v691;
          }

          v693 = v688 | (((v692 >> v690) & 0x7FFF) << 32);
          *(result + 28) = v693;
          v694 = *a3 + 115;
          v695 = v694 & 7;
          v696 = (a2 + (v694 >> 3));
          if (v695 > 1)
          {
            v697 = (v696[2] << 16) | (v696[1] << 8) | *v696;
          }

          else
          {
            v697 = *v696;
          }

          *(result + 28) = v693 | (((v697 >> v695) & 0x7FFF) << 48);
          v698 = (*a3 - 126) & 7;
          v699 = (a2 + ((*a3 + 130) >> 3));
          if (v698 > 2)
          {
            v700 = (v699[2] << 16) | (v699[1] << 8) | *v699;
          }

          else
          {
            v700 = *v699;
          }

          v701 = *(result + 36) | (v700 >> v698) & 0x3FFF;
          *(result + 36) = v701;
          v702 = *a3 & 7;
          v703 = (a2 + ((*a3 + 144) >> 3));
          if (v702 > 2)
          {
            v704 = (v703[2] << 16) | (v703[1] << 8) | *v703;
          }

          else
          {
            v704 = *v703;
          }

          v705 = v701 | (((v704 >> v702) & 0x3FFF) << 16);
          *(result + 36) = v705;
          v706 = (*a3 - 98) & 7;
          v707 = (a2 + ((*a3 + 158) >> 3));
          if (v706 > 2)
          {
            v708 = (v707[2] << 16) | (v707[1] << 8) | *v707;
          }

          else
          {
            v708 = *v707;
          }

          v709 = v705 | (((v708 >> v706) & 0x3FFF) << 32);
          *(result + 36) = v709;
          v710 = (*a3 - 84) & 7;
          v711 = (a2 + ((*a3 + 172) >> 3));
          if (v710 > 2)
          {
            v712 = (v711[2] << 16) | (v711[1] << 8) | *v711;
          }

          else
          {
            v712 = *v711;
          }

          *(result + 36) = v709 | (((v712 >> v710) & 0x3FFF) << 48);
          v713 = (*a3 - 70) & 7;
          v714 = (a2 + ((*a3 + 186) >> 3));
          if (v713 > 2)
          {
            v715 = (v714[2] << 16) | (v714[1] << 8) | *v714;
          }

          else
          {
            v715 = *v714;
          }

          v716 = *(result + 44) | (v715 >> v713) & 0x3FFF;
          *(result + 44) = v716;
          v717 = *a3 & 7;
          v718 = (a2 + ((*a3 + 200) >> 3));
          if (v717 > 2)
          {
            v719 = (v718[2] << 16) | (v718[1] << 8) | *v718;
          }

          else
          {
            v719 = *v718;
          }

          v720 = v716 | (((v719 >> v717) & 0x3FFF) << 16);
          *(result + 44) = v720;
          v721 = (*a3 - 42) & 7;
          v722 = (a2 + ((*a3 + 214) >> 3));
          if (v721 > 2)
          {
            v723 = (v722[2] << 16) | (v722[1] << 8) | *v722;
          }

          else
          {
            v723 = *v722;
          }

          v724 = v720 | (((v723 >> v721) & 0x3FFF) << 32);
          *(result + 44) = v724;
          v725 = (*a3 - 28) & 7;
          v726 = (a2 + ((*a3 + 228) >> 3));
          if (v725 > 2)
          {
            v727 = (v726[2] << 16) | (v726[1] << 8) | *v726;
          }

          else
          {
            v727 = *v726;
          }

          *(result + 44) = v724 | (((v727 >> v725) & 0x3FFF) << 48);
          v728 = (*a3 - 14) & 7;
          v729 = (a2 + ((*a3 + 242) >> 3));
          if (v728 > 2)
          {
            v730 = (v729[2] << 16) | (v729[1] << 8) | *v729;
          }

          else
          {
            v730 = *v729;
          }

          v731 = *(result + 52) | (v730 >> v728) & 0x3FFF;
          *(result + 52) = v731;
          v732 = *a3 & 7;
          v733 = (a2 + ((*a3 + 256) >> 3));
          if (v732 > 2)
          {
            v734 = (v733[2] << 16) | (v733[1] << 8) | *v733;
          }

          else
          {
            v734 = *v733;
          }

          v735 = v731 | (((v734 >> v732) & 0x3FFF) << 16);
          *(result + 52) = v735;
          v736 = *a3 + 270;
          v737 = v736 & 7;
          v738 = (a2 + (v736 >> 3));
          if (v737 > 3)
          {
            v739 = (v738[2] << 16) | (v738[1] << 8) | *v738;
          }

          else
          {
            v739 = *v738;
          }

          v740 = v735 | (((v739 >> v737) & 0x1FFF) << 32);
          *(result + 52) = v740;
          v741 = *a3 + 283;
          v742 = v741 & 7;
          v743 = (a2 + (v741 >> 3));
          if (v742 > 3)
          {
            v744 = (v743[2] << 16) | (v743[1] << 8) | *v743;
          }

          else
          {
            v744 = *v743;
          }

          *(result + 52) = v740 | (((v744 >> v742) & 0x1FFF) << 48);
          v745 = *a3 & 7;
          v746 = (a2 + ((*a3 + 296) >> 3));
          if (v745 > 3)
          {
            v747 = (v746[2] << 16) | (v746[1] << 8) | *v746;
          }

          else
          {
            v747 = *v746;
          }

          v748 = *(result + 60) | (v747 >> v745) & 0x1FFF;
          *(result + 60) = v748;
          v749 = *a3 + 309;
          v750 = v749 & 7;
          v751 = (a2 + (v749 >> 3));
          if (v750 > 2)
          {
            v752 = (v751[2] << 16) | (v751[1] << 8) | *v751;
          }

          else
          {
            v752 = *v751;
          }

          v753 = v748 | (((v752 >> v750) & 0x3FFF) << 16);
          *(result + 60) = v753;
          v754 = *a3 + 323;
          v755 = v754 & 7;
          v756 = (a2 + (v754 >> 3));
          if (v755 > 2)
          {
            v757 = (v756[2] << 16) | (v756[1] << 8) | *v756;
          }

          else
          {
            v757 = *v756;
          }

          v758 = v753 | (((v757 >> v755) & 0x3FFF) << 32);
          *(result + 60) = v758;
          v759 = *a3 + 337;
          v760 = v759 & 7;
          v761 = (a2 + (v759 >> 3));
          if (v760 > 2)
          {
            v762 = (v761[2] << 16) | (v761[1] << 8) | *v761;
          }

          else
          {
            v762 = *v761;
          }

          *(result + 60) = v758 | (((v762 >> v760) & 0x3FFF) << 48);
          v763 = *a3 + 351;
          v764 = v763 & 7;
          v765 = (a2 + (v763 >> 3));
          if (v764 > 3)
          {
            v766 = (v765[2] << 16) | (v765[1] << 8) | *v765;
          }

          else
          {
            v766 = *v765;
          }

          v767 = *(result + 68) | (v766 >> v764) & 0x1FFF;
          *(result + 68) = v767;
          v768 = *a3 + 364;
          v769 = v768 & 7;
          v770 = (a2 + (v768 >> 3));
          if (v769 > 3)
          {
            v771 = (v770[2] << 16) | (v770[1] << 8) | *v770;
          }

          else
          {
            v771 = *v770;
          }

          v772 = v767 | (((v771 >> v769) & 0x1FFF) << 16);
          *(result + 68) = v772;
          v773 = *a3 + 377;
          v774 = v773 & 7;
          v775 = (a2 + (v773 >> 3));
          if (v774 > 3)
          {
            v776 = (v775[2] << 16) | (v775[1] << 8) | *v775;
          }

          else
          {
            v776 = *v775;
          }

          v777 = v772 | (((v776 >> v774) & 0x1FFF) << 32);
          *(result + 68) = v777;
          v778 = (*a3 - 122) & 7;
          v779 = (a2 + ((*a3 + 390) >> 3));
          if (v778 > 3)
          {
            v780 = (v779[2] << 16) | (v779[1] << 8) | *v779;
          }

          else
          {
            v780 = *v779;
          }

          *(result + 68) = v777 | (((v780 >> v778) & 0x1FFF) << 48);
          v781 = (*a3 - 109) & 7;
          v782 = (a2 + ((*a3 + 403) >> 3));
          if (v781 > 3)
          {
            v783 = (v782[2] << 16) | (v782[1] << 8) | *v782;
          }

          else
          {
            v783 = *v782;
          }

          v784 = *(result + 76) | (v783 >> v781) & 0x1FFF;
          *(result + 76) = v784;
          v785 = *a3 & 7;
          v786 = (a2 + ((*a3 + 416) >> 3));
          if (v785 > 3)
          {
            v787 = (v786[2] << 16) | (v786[1] << 8) | *v786;
          }

          else
          {
            v787 = *v786;
          }

          v788 = v784 | (((v787 >> v785) & 0x1FFF) << 16);
          *(result + 76) = v788;
          v789 = (*a3 - 83) & 7;
          v790 = (a2 + ((*a3 + 429) >> 3));
          if (v789 > 3)
          {
            v791 = (v790[2] << 16) | (v790[1] << 8) | *v790;
          }

          else
          {
            v791 = *v790;
          }

          v792 = v788 | (((v791 >> v789) & 0x1FFF) << 32);
          *(result + 76) = v792;
          v793 = (*a3 - 70) & 7;
          v794 = (a2 + ((*a3 + 442) >> 3));
          if (v793 > 3)
          {
            v795 = (v794[2] << 16) | (v794[1] << 8) | *v794;
          }

          else
          {
            v795 = *v794;
          }

          *(result + 76) = v792 | (((v795 >> v793) & 0x1FFF) << 48);
          v25 = 455;
          goto LABEL_514;
        case 0xAu:
          *(result + 16) = 11;
          v531 = *a3 + 9;
          v532 = (a2 + (v531 >> 3));
          v533 = v531 & 7;
          if (v533)
          {
            v534 = ((*v532 | (*(v532 + 1) << 8)) >> v533);
          }

          else
          {
            v534 = *v532;
          }

          v1561 = *(result + 20) | v534;
          *(result + 20) = v1561;
          v1562 = *a3 + 41;
          v1563 = (a2 + (v1562 >> 3));
          v1564 = v1562 & 7;
          if (v1564)
          {
            v1565 = ((*v1563 | (*(v1563 + 1) << 8)) >> v1564);
          }

          else
          {
            v1565 = *v1563;
          }

          *(result + 20) = v1561 | (v1565 << 32);
          v1566 = *a3 + 73;
          v1567 = v1566 & 7;
          v1568 = (a2 + (v1566 >> 3));
          if (v1567 > 1)
          {
            v1569 = (v1568[2] << 16) | (v1568[1] << 8) | *v1568;
          }

          else
          {
            v1569 = *v1568;
          }

          v1570 = *(result + 28) | (v1569 >> v1567) & 0x7FFF;
          *(result + 28) = v1570;
          v1571 = *a3 & 7;
          v1572 = (a2 + ((*a3 + 88) >> 3));
          if (v1571 > 1)
          {
            v1573 = (v1572[2] << 16) | (v1572[1] << 8) | *v1572;
          }

          else
          {
            v1573 = *v1572;
          }

          v1574 = v1570 | (((v1573 >> v1571) & 0x7FFF) << 16);
          *(result + 28) = v1574;
          v1575 = *a3 + 103;
          v1576 = v1575 & 7;
          v1577 = (a2 + (v1575 >> 3));
          if (v1576 > 1)
          {
            v1578 = (v1577[2] << 16) | (v1577[1] << 8) | *v1577;
          }

          else
          {
            v1578 = *v1577;
          }

          v1579 = v1574 | (((v1578 >> v1576) & 0x7FFF) << 32);
          *(result + 28) = v1579;
          v1580 = *a3 + 118;
          v1581 = v1580 & 7;
          v1582 = (a2 + (v1580 >> 3));
          if (v1581 > 1)
          {
            v1583 = (v1582[2] << 16) | (v1582[1] << 8) | *v1582;
          }

          else
          {
            v1583 = *v1582;
          }

          *(result + 28) = v1579 | (((v1583 >> v1581) & 0x7FFF) << 48);
          v1584 = (a2 + ((*a3 + 133) >> 3));
          if (((*a3 - 123) & 7) != 0)
          {
            v1585 = ((v1584[2] << 16) | (v1584[1] << 8) | *v1584) >> ((*a3 - 123) & 7);
          }

          else
          {
            LOWORD(v1585) = *v1584;
          }

          *(result + 36) |= v1585;
          v25 = 149;
          goto LABEL_514;
        case 0xBu:
          *(result + 16) = 12;
          v470 = *a3 + 9;
          v471 = v470 & 7;
          v472 = (a2 + (v470 >> 3));
          if (v471 > 1)
          {
            v473 = (v472[2] << 16) | (v472[1] << 8) | *v472;
          }

          else
          {
            v473 = *v472;
          }

          v553 = *(result + 20) | (v473 >> v471) & 0x7FFF;
          *(result + 20) = v553;
          v554 = *a3 & 7;
          v555 = (a2 + ((*a3 + 24) >> 3));
          if (v554 > 1)
          {
            v556 = (v555[2] << 16) | (v555[1] << 8) | *v555;
          }

          else
          {
            v556 = *v555;
          }

          v557 = v553 | (((v556 >> v554) & 0x7FFF) << 16);
          *(result + 20) = v557;
          v558 = *a3 + 39;
          v559 = v558 & 7;
          v560 = (a2 + (v558 >> 3));
          if (v559 > 1)
          {
            v561 = (v560[2] << 16) | (v560[1] << 8) | *v560;
          }

          else
          {
            v561 = *v560;
          }

          v562 = v557 | (((v561 >> v559) & 0x7FFF) << 32);
          *(result + 20) = v562;
          v563 = *a3 + 54;
          v564 = v563 & 7;
          v565 = (a2 + (v563 >> 3));
          if (v564 > 1)
          {
            v566 = (v565[2] << 16) | (v565[1] << 8) | *v565;
          }

          else
          {
            v566 = *v565;
          }

          *(result + 20) = v562 | (((v566 >> v564) & 0x7FFF) << 48);
          v567 = *a3 + 69;
          v568 = *(result + 28) | (((*(a2 + (v567 >> 3) + 2) << 16) | (*(a2 + (v567 >> 3) + 1) << 8) | *(a2 + (v567 >> 3))) >> (v567 & 7)) & 0x1FFFF;
          *(result + 28) = v568;
          v569 = *a3 + 86;
          v570 = v569 & 7;
          v571 = (a2 + (v569 >> 3));
          if (v570 == 7)
          {
            v572 = *v571 >> 7;
          }

          else
          {
            v572 = ((v571[2] << 16) | (v571[1] << 8) | *v571) >> v570;
          }

          *(result + 28) = v568 | ((v572 & 0x3FFFF) << 32);
          v573 = *a3 & 7;
          v574 = (a2 + ((*a3 + 104) >> 3));
          if (v573 == 7)
          {
            v575 = *v574 >> 7;
          }

          else
          {
            v575 = ((v574[2] << 16) | (v574[1] << 8) | *v574) >> v573;
          }

          v576 = *(result + 36) | v575 & 0x3FFFF;
          *(result + 36) = v576;
          v577 = *a3 + 122;
          v578 = v577 & 7;
          v579 = (a2 + (v577 >> 3));
          if (v578 > 1)
          {
            v580 = (v579[2] << 16) | (v579[1] << 8) | *v579;
          }

          else
          {
            v580 = *v579;
          }

          v581 = v576 | (((v580 >> v578) & 0x7FFF) << 32);
          *(result + 36) = v581;
          v582 = (*a3 - 119) & 7;
          v583 = (a2 + ((*a3 + 137) >> 3));
          if (v582 > 2)
          {
            v584 = (v583[2] << 16) | (v583[1] << 8) | *v583;
          }

          else
          {
            v584 = *v583;
          }

          *(result + 36) = v581 | (((v584 >> v582) & 0x3FFF) << 48);
          v585 = (*a3 - 105) & 7;
          v586 = (a2 + ((*a3 + 151) >> 3));
          if (v585 > 3)
          {
            v587 = (v586[2] << 16) | (v586[1] << 8) | *v586;
          }

          else
          {
            v587 = *v586;
          }

          v588 = *(result + 44) | (v587 >> v585) & 0x1FFF;
          *(result + 44) = v588;
          v589 = (a2 + ((*a3 + 164) >> 3));
          if (((*a3 - 92) & 7) != 0)
          {
            v590 = (*v589 >> ((*a3 - 92) & 7));
          }

          else
          {
            v590 = *v589;
          }

          *(result + 44) = v588 | (v590 << 16);
          break;
        case 0xCu:
          *(result + 16) = 13;
          v479 = *a3 + 9;
          v480 = v479 & 7;
          v481 = (a2 + (v479 >> 3));
          if (v480 > 1)
          {
            v482 = (v481[2] << 16) | (v481[1] << 8) | *v481;
          }

          else
          {
            v482 = *v481;
          }

          v642 = *(result + 20) | (v482 >> v480) & 0x7FFF;
          *(result + 20) = v642;
          v643 = *a3 & 7;
          v644 = (a2 + ((*a3 + 24) >> 3));
          if (v643 > 1)
          {
            v645 = (v644[2] << 16) | (v644[1] << 8) | *v644;
          }

          else
          {
            v645 = *v644;
          }

          v646 = v642 | (((v645 >> v643) & 0x7FFF) << 16);
          *(result + 20) = v646;
          v647 = *a3 + 39;
          v648 = v647 & 7;
          v649 = (a2 + (v647 >> 3));
          if (v648 > 1)
          {
            v650 = (v649[2] << 16) | (v649[1] << 8) | *v649;
          }

          else
          {
            v650 = *v649;
          }

          *(result + 20) = v646 | (((v650 >> v648) & 0x7FFF) << 32);
          v651 = *a3 + 54;
          v652 = v651 & 7;
          v653 = (a2 + (v651 >> 3));
          if (v652 == 7)
          {
            v654 = *v653 >> 7;
          }

          else
          {
            v654 = ((v653[2] << 16) | (v653[1] << 8) | *v653) >> v652;
          }

          v655 = *(result + 28) | v654 & 0x3FFFF;
          *(result + 28) = v655;
          v656 = *a3 & 7;
          v657 = (a2 + ((*a3 + 72) >> 3));
          if (v656 == 7)
          {
            v658 = *v657 >> 7;
          }

          else
          {
            v658 = ((v657[2] << 16) | (v657[1] << 8) | *v657) >> v656;
          }

          *(result + 28) = v655 | ((v658 & 0x3FFFF) << 32);
          v659 = *a3 + 90;
          v660 = *(result + 36) | (((*(a2 + (v659 >> 3) + 2) << 16) | (*(a2 + (v659 >> 3) + 1) << 8) | *(a2 + (v659 >> 3))) >> (v659 & 7)) & 0x1FFFF;
          *(result + 36) = v660;
          v661 = *a3 + 107;
          v662 = (a2 + (v661 >> 3));
          v663 = v661 & 7;
          if (v663)
          {
            v664 = (((v662[2] << 16) | (v662[1] << 8) | *v662) >> v663);
          }

          else
          {
            v664 = *v662;
          }

          v1359 = v660 | (v664 << 32);
          *(result + 36) = v1359;
          v1360 = *a3 + 123;
          v1361 = (a2 + (v1360 >> 3));
          v1362 = v1360 & 7;
          if (v1362)
          {
            v1363 = (((v1361[2] << 16) | (v1361[1] << 8) | *v1361) >> v1362);
          }

          else
          {
            v1363 = *v1361;
          }

          *(result + 36) = v1359 | (v1363 << 48);
          v1364 = *(result + 44) | (((*(a2 + ((*a3 + 139) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 139) >> 3) + 1) << 8) | *(a2 + ((*a3 + 139) >> 3))) >> ((*a3 - 117) & 7)) & 0x1FFFF;
          *(result + 44) = v1364;
          *(result + 44) = v1364 | (((((*(a2 + ((*a3 + 156) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 156) >> 3) + 1) << 8) | *(a2 + ((*a3 + 156) >> 3))) >> ((*a3 - 100) & 7)) & 0x1FFFF) << 32);
          v1365 = *(result + 52) | (((*(a2 + ((*a3 + 173) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 173) >> 3) + 1) << 8) | *(a2 + ((*a3 + 173) >> 3))) >> ((*a3 - 83) & 7)) & 0x1FFFF;
          *(result + 52) = v1365;
          v1366 = v1365 | (((((*(a2 + ((*a3 + 190) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 190) >> 3) + 1) << 8) | *(a2 + ((*a3 + 190) >> 3))) >> ((*a3 - 66) & 7)) & 0x1FFFF) << 32);
          *(result + 52) = v1366;
          v1367 = (*a3 - 49) & 7;
          v1368 = (a2 + ((*a3 + 207) >> 3));
          if (v1367 > 1)
          {
            v1369 = (v1368[2] << 16) | (v1368[1] << 8) | *v1368;
          }

          else
          {
            v1369 = *v1368;
          }

          *(result + 52) = v1366 | (((v1369 >> v1367) & 0x7FFF) << 49);
          v25 = 222;
          goto LABEL_514;
        case 0xDu:
          *(result + 16) = 14;
          v518 = *a3 + 9;
          v519 = v518 & 7;
          v520 = (a2 + (v518 >> 3));
          if (v519 > 1)
          {
            v521 = (v520[2] << 16) | (v520[1] << 8) | *v520;
          }

          else
          {
            v521 = *v520;
          }

          v1192 = *(result + 20) | (v521 >> v519) & 0x7FFF;
          *(result + 20) = v1192;
          v1193 = *a3 & 7;
          v1194 = (a2 + ((*a3 + 24) >> 3));
          if (v1193 > 1)
          {
            v1195 = (v1194[2] << 16) | (v1194[1] << 8) | *v1194;
          }

          else
          {
            v1195 = *v1194;
          }

          v1196 = v1192 | (((v1195 >> v1193) & 0x7FFF) << 16);
          *(result + 20) = v1196;
          v1197 = *a3 + 39;
          v1198 = v1197 & 7;
          v1199 = (a2 + (v1197 >> 3));
          if (v1198 > 1)
          {
            v1200 = (v1199[2] << 16) | (v1199[1] << 8) | *v1199;
          }

          else
          {
            v1200 = *v1199;
          }

          v1201 = v1196 | (((v1200 >> v1198) & 0x7FFF) << 32);
          *(result + 20) = v1201;
          v1202 = *a3 + 54;
          v1203 = v1202 & 7;
          v1204 = (a2 + (v1202 >> 3));
          if (v1203 > 1)
          {
            v1205 = (v1204[2] << 16) | (v1204[1] << 8) | *v1204;
          }

          else
          {
            v1205 = *v1204;
          }

          *(result + 20) = v1201 | (((v1205 >> v1203) & 0x7FFF) << 48);
          v1206 = *(result + 28) | (((*(a2 + ((*a3 + 69) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 69) >> 3) + 1) << 8) | *(a2 + ((*a3 + 69) >> 3))) >> ((*a3 + 69) & 7)) & 0x1FFFF;
          *(result + 28) = v1206;
          v1207 = *a3 + 86;
          *(result + 28) = v1206 | (((((*(a2 + (v1207 >> 3) + 2) << 16) | (*(a2 + (v1207 >> 3) + 1) << 8) | *(a2 + (v1207 >> 3))) >> (v1207 & 7)) & 0x1FFFF) << 32);
          v1208 = *a3 + 103;
          v1209 = *(result + 36) | (((*(a2 + (v1208 >> 3) + 2) << 16) | (*(a2 + (v1208 >> 3) + 1) << 8) | *(a2 + (v1208 >> 3))) >> (v1208 & 7)) & 0x1FFFF;
          *(result + 36) = v1209;
          v1210 = *a3 & 7;
          v1211 = (a2 + ((*a3 + 120) >> 3));
          if (v1210 > 1)
          {
            v1212 = (v1211[2] << 16) | (v1211[1] << 8) | *v1211;
          }

          else
          {
            v1212 = *v1211;
          }

          v1213 = v1209 | (((v1212 >> v1210) & 0x7FFF) << 17);
          *(result + 36) = v1213;
          v1214 = (*a3 - 121) & 7;
          v1215 = (a2 + ((*a3 + 135) >> 3));
          if (v1214 > 1)
          {
            v1216 = (v1215[2] << 16) | (v1215[1] << 8) | *v1215;
          }

          else
          {
            v1216 = *v1215;
          }

          v1217 = v1213 | (((v1216 >> v1214) & 0x7FFF) << 32);
          *(result + 36) = v1217;
          v1218 = (*a3 - 106) & 7;
          v1219 = (a2 + ((*a3 + 150) >> 3));
          if (v1218 > 1)
          {
            v1220 = (v1219[2] << 16) | (v1219[1] << 8) | *v1219;
          }

          else
          {
            v1220 = *v1219;
          }

          *(result + 36) = v1217 | (((v1220 >> v1218) & 0x7FFF) << 48);
          v1221 = *(result + 44) | (((*(a2 + ((*a3 + 165) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 165) >> 3) + 1) << 8) | *(a2 + ((*a3 + 165) >> 3))) >> ((*a3 - 91) & 7)) & 0x1FFFF;
          *(result + 44) = v1221;
          v1222 = v1221 | (((((*(a2 + ((*a3 + 182) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 182) >> 3) + 1) << 8) | *(a2 + ((*a3 + 182) >> 3))) >> ((*a3 - 74) & 7)) & 0x1FFFF) << 32);
          *(result + 44) = v1222;
          v1223 = (*a3 - 57) & 7;
          v1224 = (a2 + ((*a3 + 199) >> 3));
          if (v1223 > 1)
          {
            v1225 = (v1224[2] << 16) | (v1224[1] << 8) | *v1224;
          }

          else
          {
            v1225 = *v1224;
          }

          *(result + 44) = v1222 | (((v1225 >> v1223) & 0x7FFF) << 49);
          v1226 = (*a3 - 42) & 7;
          v1227 = (a2 + ((*a3 + 214) >> 3));
          if (v1226 > 1)
          {
            v1228 = (v1227[2] << 16) | (v1227[1] << 8) | *v1227;
          }

          else
          {
            v1228 = *v1227;
          }

          v1229 = *(result + 52) | (v1228 >> v1226) & 0x7FFF;
          *(result + 52) = v1229;
          v1230 = (a2 + ((*a3 + 229) >> 3));
          if (((*a3 - 27) & 7) != 0)
          {
            v1231 = (((v1230[2] << 16) | (v1230[1] << 8) | *v1230) >> ((*a3 - 27) & 7));
          }

          else
          {
            v1231 = *v1230;
          }

          v1469 = v1229 | (v1231 << 16);
          *(result + 52) = v1469;
          v1470 = (a2 + ((*a3 + 245) >> 3));
          if (((*a3 - 11) & 7) != 0)
          {
            v1471 = (((v1470[2] << 16) | (v1470[1] << 8) | *v1470) >> ((*a3 - 11) & 7));
          }

          else
          {
            v1471 = *v1470;
          }

          *(result + 52) = v1469 | (v1471 << 32);
          v1472 = *(result + 60) | (((*(a2 + ((*a3 + 261) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 261) >> 3) + 1) << 8) | *(a2 + ((*a3 + 261) >> 3))) >> ((*a3 + 5) & 7)) & 0x1FFFF;
          *(result + 60) = v1472;
          v1473 = *a3 + 278;
          *(result + 60) = v1472 | (((((*(a2 + (v1473 >> 3) + 2) << 16) | (*(a2 + (v1473 >> 3) + 1) << 8) | *(a2 + (v1473 >> 3))) >> (v1473 & 7)) & 0x1FFFF) << 32);
          v1474 = *a3 + 295;
          v1475 = *(result + 68) | (((*(a2 + (v1474 >> 3) + 2) << 16) | (*(a2 + (v1474 >> 3) + 1) << 8) | *(a2 + (v1474 >> 3))) >> (v1474 & 7)) & 0x1FFFF;
          *(result + 68) = v1475;
          v1476 = *a3 & 7;
          v1477 = (a2 + ((*a3 + 312) >> 3));
          if (v1476 > 4)
          {
            v1478 = *v1477;
          }

          else
          {
            v1478 = (v1477[2] << 16) | (v1477[1] << 8) | *v1477;
          }

          *(result + 68) = v1475 | (((v1478 >> v1476) & 0xFFFFF) << 32);
          v1479 = *a3 + 332;
          v1480 = (a2 + (v1479 >> 3));
          v1481 = v1479 & 7;
          if (v1481)
          {
            v1482 = (((v1480[2] << 16) | (v1480[1] << 8) | *v1480) >> v1481);
          }

          else
          {
            v1482 = *v1480;
          }

          v1483 = *(result + 76) | v1482;
          *(result + 76) = v1483;
          v1484 = *a3 + 348;
          v1485 = (a2 + (v1484 >> 3));
          v1486 = v1484 & 7;
          if (v1486)
          {
            v1487 = (((v1485[2] << 16) | (v1485[1] << 8) | *v1485) >> v1486);
          }

          else
          {
            v1487 = *v1485;
          }

          v1488 = v1483 | (v1487 << 16);
          *(result + 76) = v1488;
          v1489 = v1488 | (((((*(a2 + ((*a3 + 364) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 364) >> 3) + 1) << 8) | *(a2 + ((*a3 + 364) >> 3))) >> ((*a3 + 108) & 7)) & 0x1FFFF) << 32);
          *(result + 76) = v1489;
          v1490 = *a3 + 381;
          v1491 = v1490 & 7;
          v1492 = (a2 + (v1490 >> 3));
          if (v1491 > 1)
          {
            v1493 = (v1492[2] << 16) | (v1492[1] << 8) | *v1492;
          }

          else
          {
            v1493 = *v1492;
          }

          *(result + 76) = v1489 | (((v1493 >> v1491) & 0x7FFF) << 49);
          v1494 = (*a3 - 116) & 7;
          v1495 = (a2 + ((*a3 + 396) >> 3));
          if (v1494 > 1)
          {
            v1496 = (v1495[2] << 16) | (v1495[1] << 8) | *v1495;
          }

          else
          {
            v1496 = *v1495;
          }

          v1497 = *(result + 84) | (v1496 >> v1494) & 0x7FFF;
          *(result + 84) = v1497;
          v1498 = (a2 + ((*a3 + 411) >> 3));
          if (((*a3 - 101) & 7) != 0)
          {
            v1499 = (((v1498[2] << 16) | (v1498[1] << 8) | *v1498) >> ((*a3 - 101) & 7));
          }

          else
          {
            v1499 = *v1498;
          }

          v1500 = v1497 | (v1499 << 16);
          *(result + 84) = v1500;
          v1501 = v1500 | (((((*(a2 + ((*a3 + 427) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 427) >> 3) + 1) << 8) | *(a2 + ((*a3 + 427) >> 3))) >> ((*a3 - 85) & 7)) & 0x1FFFF) << 32);
          *(result + 84) = v1501;
          v1502 = (*a3 - 68) & 7;
          v1503 = (a2 + ((*a3 + 444) >> 3));
          if (v1502 > 1)
          {
            v1504 = (v1503[2] << 16) | (v1503[1] << 8) | *v1503;
          }

          else
          {
            v1504 = *v1503;
          }

          *(result + 84) = v1501 | (((v1504 >> v1502) & 0x7FFF) << 49);
          v1505 = (*a3 - 53) & 7;
          v1506 = (a2 + ((*a3 + 459) >> 3));
          if (v1505 > 1)
          {
            v1507 = (v1506[2] << 16) | (v1506[1] << 8) | *v1506;
          }

          else
          {
            v1507 = *v1506;
          }

          v1508 = *(result + 92) | (v1507 >> v1505) & 0x7FFF;
          *(result + 92) = v1508;
          v1509 = (*a3 - 38) & 7;
          v1510 = (a2 + ((*a3 + 474) >> 3));
          if (v1509 > 1)
          {
            v1511 = (v1510[2] << 16) | (v1510[1] << 8) | *v1510;
          }

          else
          {
            v1511 = *v1510;
          }

          *(result + 92) = v1508 | (((v1511 >> v1509) & 0x7FFF) << 16);
          v25 = 489;
          goto LABEL_514;
        case 0xEu:
          *(result + 16) = 15;
          v466 = *a3 + 9;
          v467 = v466 & 7;
          v468 = (a2 + (v466 >> 3));
          if (v467 > 2)
          {
            v469 = *v468;
          }

          else
          {
            v469 = (v468[2] << 16) | (v468[1] << 8) | *v468;
          }

          v544 = *(result + 20) | (v469 >> v467) & 0x3FFFFF;
          *(result + 20) = v544;
          v545 = *a3 + 31;
          v546 = v545 & 7;
          v547 = (a2 + (v545 >> 3));
          if (v546 > 3)
          {
            v548 = *v547;
          }

          else
          {
            v548 = (v547[2] << 16) | (v547[1] << 8) | *v547;
          }

          *(result + 20) = v544 | (((v548 >> v546) & 0x1FFFFF) << 32);
          v549 = *a3 + 52;
          v550 = v549 & 7;
          v551 = (a2 + (v549 >> 3));
          if (v550 > 2)
          {
            v552 = *v551;
          }

          else
          {
            v552 = (v551[2] << 16) | (v551[1] << 8) | *v551;
          }

          *(result + 28) |= (v552 >> v550) & 0x3FFFFF;
          v25 = 74;
          goto LABEL_514;
        case 0xFu:
          *(result + 16) = 16;
          v492 = *a3 + 9;
          v493 = v492 & 7;
          v494 = (a2 + (v492 >> 3));
          if (v493 > 1)
          {
            v495 = (v494[2] << 16) | (v494[1] << 8) | *v494;
          }

          else
          {
            v495 = *v494;
          }

          v876 = *(result + 20) | (v495 >> v493) & 0x7FFF;
          *(result + 20) = v876;
          v877 = *a3 & 7;
          v878 = (a2 + ((*a3 + 24) >> 3));
          if (v877 > 1)
          {
            v879 = (v878[2] << 16) | (v878[1] << 8) | *v878;
          }

          else
          {
            v879 = *v878;
          }

          v880 = v876 | (((v879 >> v877) & 0x7FFF) << 16);
          *(result + 20) = v880;
          v881 = *a3 + 39;
          v882 = v881 & 7;
          v883 = (a2 + (v881 >> 3));
          if (v882 > 2)
          {
            v884 = (v883[2] << 16) | (v883[1] << 8) | *v883;
          }

          else
          {
            v884 = *v883;
          }

          v885 = v880 | (((v884 >> v882) & 0x3FFF) << 32);
          *(result + 20) = v885;
          v886 = *a3 + 53;
          v887 = v886 & 7;
          v888 = (a2 + (v886 >> 3));
          if (v887 > 2)
          {
            v889 = (v888[2] << 16) | (v888[1] << 8) | *v888;
          }

          else
          {
            v889 = *v888;
          }

          *(result + 20) = v885 | (((v889 >> v887) & 0x3FFF) << 48);
          v890 = *a3 + 67;
          v891 = v890 & 7;
          v892 = (a2 + (v890 >> 3));
          if (v891 > 3)
          {
            v893 = (v892[2] << 16) | (v892[1] << 8) | *v892;
          }

          else
          {
            v893 = *v892;
          }

          v894 = *(result + 28) | (v893 >> v891) & 0x1FFF;
          *(result + 28) = v894;
          v895 = *a3 & 7;
          v896 = (a2 + ((*a3 + 80) >> 3));
          if (v895 > 3)
          {
            v897 = (v896[2] << 16) | (v896[1] << 8) | *v896;
          }

          else
          {
            v897 = *v896;
          }

          v898 = v894 | (((v897 >> v895) & 0x1FFF) << 16);
          *(result + 28) = v898;
          v899 = *a3 + 93;
          v900 = v899 & 7;
          v901 = (a2 + (v899 >> 3));
          if (v900 > 3)
          {
            v902 = (v901[2] << 16) | (v901[1] << 8) | *v901;
          }

          else
          {
            v902 = *v901;
          }

          v903 = v898 | (((v902 >> v900) & 0x1FFF) << 32);
          *(result + 28) = v903;
          v904 = *a3 + 106;
          v905 = v904 & 7;
          v906 = (a2 + (v904 >> 3));
          if (v905 == 7)
          {
            v907 = *v906 >> 7;
          }

          else
          {
            v907 = ((v906[2] << 16) | (v906[1] << 8) | *v906) >> v905;
          }

          *(result + 28) = v903 | ((v907 & 0x3FFFF) << 45);
          v908 = *a3 + 124;
          v909 = v908 & 7;
          v910 = (a2 + (v908 >> 3));
          if (v909 == 7)
          {
            v911 = *v910 >> 7;
          }

          else
          {
            v911 = ((v910[2] << 16) | (v910[1] << 8) | *v910) >> v909;
          }

          v912 = *(result + 36) | v911 & 0x3FFFF;
          *(result + 36) = v912;
          v913 = (*a3 - 114) & 7;
          v914 = (a2 + ((*a3 + 142) >> 3));
          if (v913 == 7)
          {
            v915 = *v914 >> 7;
          }

          else
          {
            v915 = ((v914[2] << 16) | (v914[1] << 8) | *v914) >> v913;
          }

          *(result + 36) = v912 | ((v915 & 0x3FFFF) << 32);
          v25 = 160;
          goto LABEL_514;
        case 0x10u:
          *(result + 16) = 17;
          v461 = *(result + 20) | (*(a2 + ((*a3 + 9) >> 3)) >> ((*a3 + 9) & 7)) & 1;
          *(result + 20) = v461;
          v462 = *a3 + 10;
          v463 = (a2 + (v462 >> 3));
          v464 = v462 & 7;
          if (v464)
          {
            v465 = (((v463[2] << 16) | (v463[1] << 8) | *v463) >> v464);
          }

          else
          {
            v465 = *v463;
          }

          v1326 = v461 | (v465 << 16);
          *(result + 20) = v1326;
          v1327 = *a3 + 26;
          v1328 = (a2 + (v1327 >> 3));
          v1329 = v1327 & 7;
          if (v1329)
          {
            v1330 = (((v1328[2] << 16) | (v1328[1] << 8) | *v1328) >> v1329);
          }

          else
          {
            v1330 = *v1328;
          }

          v1331 = v1326 | (v1330 << 32);
          *(result + 20) = v1331;
          v1332 = *a3 + 42;
          v1333 = v1332 & 7;
          v1334 = (a2 + (v1332 >> 3));
          if (v1333 > 1)
          {
            v1335 = (v1334[2] << 16) | (v1334[1] << 8) | *v1334;
          }

          else
          {
            v1335 = *v1334;
          }

          *(result + 20) = v1331 | (((v1335 >> v1333) & 0x7FFF) << 48);
          v1336 = *a3 + 57;
          v1337 = v1336 & 7;
          v1338 = (a2 + (v1336 >> 3));
          if (v1337 > 1)
          {
            v1339 = (v1338[2] << 16) | (v1338[1] << 8) | *v1338;
          }

          else
          {
            v1339 = *v1338;
          }

          v1340 = *(result + 28) | (v1339 >> v1337) & 0x7FFF;
          *(result + 28) = v1340;
          v1341 = (a2 + ((*a3 + 72) >> 3));
          v1342 = *a3 & 7;
          if (v1342)
          {
            v1343 = (((v1341[2] << 16) | (v1341[1] << 8) | *v1341) >> v1342);
          }

          else
          {
            v1343 = *v1341;
          }

          v1344 = v1340 | (v1343 << 16);
          *(result + 28) = v1344;
          v1345 = (a2 + ((*a3 + 88) >> 3));
          v1346 = *a3 & 7;
          if (v1346)
          {
            v1347 = (((v1345[2] << 16) | (v1345[1] << 8) | *v1345) >> v1346);
          }

          else
          {
            v1347 = *v1345;
          }

          v1348 = v1344 | (v1347 << 32);
          *(result + 28) = v1348;
          v1349 = (a2 + ((*a3 + 104) >> 3));
          v1350 = *a3 & 7;
          if (v1350)
          {
            v1351 = (((v1349[2] << 16) | (v1349[1] << 8) | *v1349) >> v1350);
          }

          else
          {
            v1351 = *v1349;
          }

          *(result + 28) = v1348 | (v1351 << 48);
          v1352 = (a2 + ((*a3 + 120) >> 3));
          v1353 = *a3 & 7;
          if (v1353)
          {
            v1354 = (((v1352[2] << 16) | (v1352[1] << 8) | *v1352) >> v1353);
          }

          else
          {
            v1354 = *v1352;
          }

          v1355 = *(result + 36) | v1354;
          *(result + 36) = v1355;
          *(result + 36) = v1355 | (((((*(a2 + ((*a3 + 136) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 136) >> 3) + 1) << 8) | *(a2 + ((*a3 + 136) >> 3))) >> (*a3 & 7)) & 0x1FFFF) << 32);
          *(result + 44) |= (((*(a2 + ((*a3 + 153) >> 3) + 2) << 16) | (*(a2 + ((*a3 + 153) >> 3) + 1) << 8) | *(a2 + ((*a3 + 153) >> 3))) >> ((*a3 - 103) & 7)) & 0x1FFFF;
          v25 = 170;
          goto LABEL_514;
        case 0x11u:
          *(result + 16) = 18;
          v509 = *(result + 20) | (*(a2 + ((*a3 + 9) >> 3)) >> ((*a3 + 9) & 7)) & 1;
          *(result + 20) = v509;
          v510 = *a3 + 10;
          v511 = v510 & 7;
          v512 = (a2 + (v510 >> 3));
          if (v511 > 2)
          {
            v513 = (v512[2] << 16) | (v512[1] << 8) | *v512;
          }

          else
          {
            v513 = *v512;
          }

          v1099 = v509 | (2 * ((v513 >> v511) & 0x3FFF));
          *(result + 20) = v1099;
          v1100 = *a3 & 7;
          v1101 = (a2 + ((*a3 + 24) >> 3));
          if (v1100 > 1)
          {
            v1102 = (v1101[2] << 16) | (v1101[1] << 8) | *v1101;
          }

          else
          {
            v1102 = *v1101;
          }

          v1103 = v1099 | (((v1102 >> v1100) & 0x7FFF) << 16);
          *(result + 20) = v1103;
          v1104 = *a3 + 39;
          v1105 = v1104 & 7;
          v1106 = (a2 + (v1104 >> 3));
          if (v1105 > 1)
          {
            v1107 = (v1106[2] << 16) | (v1106[1] << 8) | *v1106;
          }

          else
          {
            v1107 = *v1106;
          }

          v1108 = v1103 | (((v1107 >> v1105) & 0x7FFF) << 32);
          *(result + 20) = v1108;
          v1109 = *a3 + 54;
          v1110 = v1109 & 7;
          v1111 = (a2 + (v1109 >> 3));
          if (v1110 > 1)
          {
            v1112 = (v1111[2] << 16) | (v1111[1] << 8) | *v1111;
          }

          else
          {
            v1112 = *v1111;
          }

          *(result + 20) = v1108 | (((v1112 >> v1110) & 0x7FFF) << 48);
          v1113 = *a3 + 69;
          v1114 = v1113 & 7;
          v1115 = (a2 + (v1113 >> 3));
          if (v1114 > 1)
          {
            v1116 = (v1115[2] << 16) | (v1115[1] << 8) | *v1115;
          }

          else
          {
            v1116 = *v1115;
          }

          v1117 = *(result + 28) | (v1116 >> v1114) & 0x7FFF;
          *(result + 28) = v1117;
          v1118 = *a3 + 84;
          v1119 = v1118 & 7;
          v1120 = (a2 + (v1118 >> 3));
          if (v1119 > 1)
          {
            v1121 = (v1120[2] << 16) | (v1120[1] << 8) | *v1120;
          }

          else
          {
            v1121 = *v1120;
          }

          v1122 = v1117 | (((v1121 >> v1119) & 0x7FFF) << 16);
          *(result + 28) = v1122;
          v1123 = *a3 + 99;
          v1124 = v1123 & 7;
          v1125 = (a2 + (v1123 >> 3));
          if (v1124 > 1)
          {
            v1126 = (v1125[2] << 16) | (v1125[1] << 8) | *v1125;
          }

          else
          {
            v1126 = *v1125;
          }

          v1127 = v1122 | (((v1126 >> v1124) & 0x7FFF) << 32);
          *(result + 28) = v1127;
          v1128 = *a3 + 114;
          v1129 = v1128 & 7;
          v1130 = (a2 + (v1128 >> 3));
          if (v1129 > 1)
          {
            v1131 = (v1130[2] << 16) | (v1130[1] << 8) | *v1130;
          }

          else
          {
            v1131 = *v1130;
          }

          *(result + 28) = v1127 | (((v1131 >> v1129) & 0x7FFF) << 48);
          v1132 = (*a3 - 127) & 7;
          v1133 = (a2 + ((*a3 + 129) >> 3));
          if (v1132 > 1)
          {
            v1134 = (v1133[2] << 16) | (v1133[1] << 8) | *v1133;
          }

          else
          {
            v1134 = *v1133;
          }

          v1135 = *(result + 36) | (v1134 >> v1132) & 0x7FFF;
          *(result + 36) = v1135;
          v1136 = *a3 & 7;
          v1137 = (a2 + ((*a3 + 144) >> 3));
          if (v1136 > 1)
          {
            v1138 = (v1137[2] << 16) | (v1137[1] << 8) | *v1137;
          }

          else
          {
            v1138 = *v1137;
          }

          v1139 = v1135 | (((v1138 >> v1136) & 0x7FFF) << 16);
          *(result + 36) = v1139;
          v1140 = (*a3 - 97) & 7;
          v1141 = (a2 + ((*a3 + 159) >> 3));
          if (v1140 > 1)
          {
            v1142 = (v1141[2] << 16) | (v1141[1] << 8) | *v1141;
          }

          else
          {
            v1142 = *v1141;
          }

          v1143 = v1139 | (((v1142 >> v1140) & 0x7FFF) << 32);
          *(result + 36) = v1143;
          v1144 = (*a3 - 82) & 7;
          v1145 = (a2 + ((*a3 + 174) >> 3));
          if (v1144 > 1)
          {
            v1146 = (v1145[2] << 16) | (v1145[1] << 8) | *v1145;
          }

          else
          {
            v1146 = *v1145;
          }

          *(result + 36) = v1143 | (((v1146 >> v1144) & 0x7FFF) << 48);
          v1147 = (*a3 - 67) & 7;
          v1148 = (a2 + ((*a3 + 189) >> 3));
          if (v1147 > 1)
          {
            v1149 = (v1148[2] << 16) | (v1148[1] << 8) | *v1148;
          }

          else
          {
            v1149 = *v1148;
          }

          v1150 = *(result + 44) | (v1149 >> v1147) & 0x7FFF;
          *(result + 44) = v1150;
          v1151 = (*a3 - 52) & 7;
          v1152 = (a2 + ((*a3 + 204) >> 3));
          if (v1151 > 1)
          {
            v1153 = (v1152[2] << 16) | (v1152[1] << 8) | *v1152;
          }

          else
          {
            v1153 = *v1152;
          }

          *(result + 44) = v1150 | (((v1153 >> v1151) & 0x7FFF) << 16);
          v25 = 219;
          goto LABEL_514;
        case 0x12u:
          *(result + 16) = 19;
          v526 = *(result + 20) | (*(a2 + ((*a3 + 9) >> 3)) >> ((*a3 + 9) & 7)) & 1;
          *(result + 20) = v526;
          v527 = *a3 + 10;
          v528 = (a2 + (v527 >> 3));
          v529 = v527 & 7;
          if (v529)
          {
            v530 = (((v528[2] << 16) | (v528[1] << 8) | *v528) >> v529);
          }

          else
          {
            v530 = *v528;
          }

          v1512 = v526 | (v530 << 16);
          *(result + 20) = v1512;
          v1513 = *a3 + 26;
          v1514 = (a2 + (v1513 >> 3));
          v1515 = v1513 & 7;
          if (v1515)
          {
            v1516 = (((v1514[2] << 16) | (v1514[1] << 8) | *v1514) >> v1515);
          }

          else
          {
            v1516 = *v1514;
          }

          v1517 = v1512 | (v1516 << 32);
          *(result + 20) = v1517;
          v1518 = *a3 + 42;
          v1519 = (a2 + (v1518 >> 3));
          v1520 = v1518 & 7;
          if (v1520)
          {
            v1521 = (((v1519[2] << 16) | (v1519[1] << 8) | *v1519) >> v1520);
          }

          else
          {
            v1521 = *v1519;
          }

          *(result + 20) = v1517 | (v1521 << 48);
          v1522 = *a3 + 58;
          v1523 = (a2 + (v1522 >> 3));
          v1524 = v1522 & 7;
          if (v1524)
          {
            v1525 = (((v1523[2] << 16) | (v1523[1] << 8) | *v1523) >> v1524);
          }

          else
          {
            v1525 = *v1523;
          }

          v1526 = *(result + 28) | v1525;
          *(result + 28) = v1526;
          v1527 = *a3 + 74;
          v1528 = (a2 + (v1527 >> 3));
          v1529 = v1527 & 7;
          if (v1529)
          {
            v1530 = (((v1528[2] << 16) | (v1528[1] << 8) | *v1528) >> v1529);
          }

          else
          {
            v1530 = *v1528;
          }

          v1531 = v1526 | (v1530 << 16);
          *(result + 28) = v1531;
          v1532 = *a3 + 90;
          v1533 = (a2 + (v1532 >> 3));
          v1534 = v1532 & 7;
          if (v1534)
          {
            v1535 = (((v1533[2] << 16) | (v1533[1] << 8) | *v1533) >> v1534);
          }

          else
          {
            v1535 = *v1533;
          }

          v1536 = v1531 | (v1535 << 32);
          *(result + 28) = v1536;
          v1537 = *a3 + 106;
          v1538 = (a2 + (v1537 >> 3));
          v1539 = v1537 & 7;
          if (v1539)
          {
            v1540 = (((v1538[2] << 16) | (v1538[1] << 8) | *v1538) >> v1539);
          }

          else
          {
            v1540 = *v1538;
          }

          *(result + 28) = v1536 | (v1540 << 48);
          v1541 = *a3 + 122;
          v1542 = (a2 + (v1541 >> 3));
          v1543 = v1541 & 7;
          if (v1543)
          {
            v1544 = (((v1542[2] << 16) | (v1542[1] << 8) | *v1542) >> v1543);
          }

          else
          {
            v1544 = *v1542;
          }

          v1545 = *(result + 36) | v1544;
          *(result + 36) = v1545;
          v1546 = (a2 + ((*a3 + 138) >> 3));
          if (((*a3 - 118) & 7) != 0)
          {
            v1547 = (((v1546[2] << 16) | (v1546[1] << 8) | *v1546) >> ((*a3 - 118) & 7));
          }

          else
          {
            v1547 = *v1546;
          }

          v1548 = v1545 | (v1547 << 16);
          *(result + 36) = v1548;
          v1549 = (a2 + ((*a3 + 154) >> 3));
          if (((*a3 - 102) & 7) != 0)
          {
            v1550 = (((v1549[2] << 16) | (v1549[1] << 8) | *v1549) >> ((*a3 - 102) & 7));
          }

          else
          {
            v1550 = *v1549;
          }

          v1551 = v1548 | (v1550 << 32);
          *(result + 36) = v1551;
          v1552 = (a2 + ((*a3 + 170) >> 3));
          if (((*a3 - 86) & 7) != 0)
          {
            v1553 = (((v1552[2] << 16) | (v1552[1] << 8) | *v1552) >> ((*a3 - 86) & 7));
          }

          else
          {
            v1553 = *v1552;
          }

          *(result + 36) = v1551 | (v1553 << 48);
          v1554 = (*a3 - 70) & 7;
          v1555 = (a2 + ((*a3 + 186) >> 3));
          if (v1554 > 4)
          {
            v1556 = *v1555;
          }

          else
          {
            v1556 = (v1555[2] << 16) | (v1555[1] << 8) | *v1555;
          }

          v1557 = *(result + 44) | (v1556 >> v1554) & 0xFFFFF;
          *(result + 44) = v1557;
          v1558 = (*a3 - 50) & 7;
          v1559 = (a2 + ((*a3 + 206) >> 3));
          if (v1558 > 5)
          {
            v1560 = *v1559;
          }

          else
          {
            v1560 = (v1559[2] << 16) | (v1559[1] << 8) | *v1559;
          }

          *(result + 44) = v1557 | (((v1560 >> v1558) & 0x7FFFF) << 32);
          v25 = 225;
          goto LABEL_514;
        case 0x13u:
          *(result + 16) = 5;
          v539 = *(result + 20) | (*(a2 + ((*a3 + 9) >> 3)) >> ((*a3 + 9) & 7)) & 1;
          *(result + 20) = v539;
          v540 = *a3 + 10;
          v541 = v540 & 7;
          v542 = (a2 + (v540 >> 3));
          if (v541 == 7)
          {
            v543 = *v542 >> 7;
          }

          else
          {
            v543 = ((v542[2] << 16) | (v542[1] << 8) | *v542) >> v541;
          }

          v1293 = v539 | (2 * (v543 & 0x3FFFFu));
          *(result + 20) = v1293;
          v1294 = *a3 + 28;
          v1295 = v1294 & 7;
          v1296 = (a2 + (v1294 >> 3));
          if (v1295 == 7)
          {
            v1297 = *v1296 >> 7;
          }

          else
          {
            v1297 = ((v1296[2] << 16) | (v1296[1] << 8) | *v1296) >> v1295;
          }

          *(result + 20) = v1293 | ((v1297 & 0x3FFFF) << 32);
          v1298 = *a3 + 46;
          v1299 = v1298 & 7;
          v1300 = (a2 + (v1298 >> 3));
          if (v1299 == 7)
          {
            v1301 = *v1300 >> 7;
          }

          else
          {
            v1301 = ((v1300[2] << 16) | (v1300[1] << 8) | *v1300) >> v1299;
          }

          v1302 = *(result + 28) | v1301 & 0x3FFFF;
          *(result + 28) = v1302;
          v1303 = *a3 & 7;
          v1304 = (a2 + ((*a3 + 64) >> 3));
          if (v1303 == 7)
          {
            v1305 = *v1304 >> 7;
          }

          else
          {
            v1305 = ((v1304[2] << 16) | (v1304[1] << 8) | *v1304) >> v1303;
          }

          *(result + 28) = v1302 | ((v1305 & 0x3FFFF) << 32);
          v1306 = *a3 + 82;
          v1307 = v1306 & 7;
          v1308 = (a2 + (v1306 >> 3));
          if (v1307 == 7)
          {
            v1309 = *v1308 >> 7;
          }

          else
          {
            v1309 = ((v1308[2] << 16) | (v1308[1] << 8) | *v1308) >> v1307;
          }

          v1310 = *(result + 36) | v1309 & 0x3FFFF;
          *(result + 36) = v1310;
          v1311 = *a3 + 100;
          v1312 = v1311 & 7;
          v1313 = (a2 + (v1311 >> 3));
          if (v1312 == 7)
          {
            v1314 = *v1313 >> 7;
          }

          else
          {
            v1314 = ((v1313[2] << 16) | (v1313[1] << 8) | *v1313) >> v1312;
          }

          *(result + 36) = v1310 | ((v1314 & 0x3FFFF) << 32);
          v1315 = *a3 + 118;
          v1316 = v1315 & 7;
          v1317 = (a2 + (v1315 >> 3));
          if (v1316 == 7)
          {
            v1318 = *v1317 >> 7;
          }

          else
          {
            v1318 = ((v1317[2] << 16) | (v1317[1] << 8) | *v1317) >> v1316;
          }

          v1319 = *(result + 44) | v1318 & 0x3FFFF;
          *(result + 44) = v1319;
          v1320 = *a3 & 7;
          v1321 = (a2 + ((*a3 + 136) >> 3));
          if (v1320 == 7)
          {
            v1322 = *v1321 >> 7;
          }

          else
          {
            v1322 = ((v1321[2] << 16) | (v1321[1] << 8) | *v1321) >> v1320;
          }

          *(result + 44) = v1319 | ((v1322 & 0x3FFFF) << 32);
          v1323 = (*a3 - 102) & 7;
          v1324 = (a2 + ((*a3 + 154) >> 3));
          if (v1323 == 7)
          {
            v1325 = *v1324 >> 7;
          }

          else
          {
            v1325 = ((v1324[2] << 16) | (v1324[1] << 8) | *v1324) >> v1323;
          }

          *(result + 52) |= v1325 & 0x3FFFF;
          break;
        default:
          goto LABEL_517;
      }

      v25 = 172;
      goto LABEL_514;
    }

    *(result + 8) = 6;
    *result = 0x900000009;
    v30 = *a3 + 4;
    v31 = (a2 + (v30 >> 3));
    v32 = v30 & 7;
    if (v32)
    {
      LODWORD(v31) = *v31 >> v32;
    }

    else
    {
      LOBYTE(v31) = *v31;
    }

    *(result + 16) |= v31;
    if (((*(a2 + ((*a3 + 12) >> 3)) >> ((*a3 + 12) & 7)) & 1) == 0)
    {
      *(result + 20) = 0;
      *(result + 24) = ((*(a2 + ((*a3 + 13) >> 3)) >> ((*a3 + 13) & 7)) & 1) != 0;
      v25 = 14;
      goto LABEL_514;
    }

    if ((*(a2 + ((*a3 + 13) >> 3)) >> ((*a3 + 13) & 7)))
    {
      *(result + 20) = 2;
      v107 = *a3 + 14;
      v108 = (a2 + (v107 >> 3));
      v109 = v107 & 7;
      if (v109)
      {
        v110 = (*v108 | (*(v108 + 1) << 8)) >> v109;
      }

      else
      {
        LODWORD(v110) = *v108;
      }

      *(result + 24) |= v110;
      v25 = 46;
      goto LABEL_514;
    }

    *(result + 20) = 1;
    v146 = *a3 + 14;
    v147 = v146 & 7;
    v148 = (a2 + (v146 >> 3));
    if (v147 > 3)
    {
      v149 = *v148;
    }

    else
    {
      v149 = *v148;
    }

    *(result + 24) |= (v149 >> v147) & 0x1F;
LABEL_504:
    v25 = 19;
    goto LABEL_514;
  }

  v19 = (v4 + 2) & 7;
  v20 = (a2 + ((v4 + 2) >> 3));
  if (v19 == 7)
  {
    v21 = ((*v20 | (v20[1] << 8)) >> 7) & 3;
  }

  else
  {
    v21 = (*v20 >> v19) & 3;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      v69 = v4 + 4;
      v70 = (v4 + 4) & 7;
      v71 = (a2 + (v69 >> 3));
      if (v70 == 7)
      {
        if ((((*v71 | (v71[1] << 8)) >> 7) & 3) != 0)
        {
          goto LABEL_517;
        }
      }

      else if (((*v71 >> v70) & 3) != 0)
      {
        goto LABEL_517;
      }

      *(result + 8) = 1;
      *result = 0x1000000010;
      v25 = 6;
      goto LABEL_514;
    }

    v37 = v4 + 4;
    v38 = (v4 + 4) & 7;
    v39 = (a2 + (v37 >> 3));
    if (v38 == 7)
    {
      if ((((*v39 | (v39[1] << 8)) >> 7) & 3) != 0)
      {
        goto LABEL_517;
      }
    }

    else if (((*v39 >> v38) & 3) != 0)
    {
      goto LABEL_517;
    }

    *(result + 8) = 3;
    *result = 0xF0000000FLL;
    v82 = *a3 + 6;
    v83 = v82 & 7;
    v84 = (a2 + (v82 >> 3));
    if (v83 > 1)
    {
      v85 = *v84;
    }

    else
    {
      v85 = *v84;
    }

    *(result + 24) |= (v85 >> v83) & 0x7F;
    v163 = *a3 + 13;
    v164 = v163 & 7;
    v165 = (a2 + (v163 >> 3));
    if (v164 > 5)
    {
      v166 = *v165;
    }

    else
    {
      v166 = *v165;
    }

    *(result + 20) = (v166 >> v164) & 7;
    v167 = *a3 & 7;
    v168 = (a2 + ((*a3 + 16) >> 3));
    if (v167 > 5)
    {
      v169 = *v168;
    }

    else
    {
      v169 = *v168;
    }

    v170 = (v169 >> v167) & 7;
    if (v170 > 3)
    {
      if (v170 > 5)
      {
        if (v170 != 6)
        {
          LODWORD(v170) = 7;
        }
      }

      else if (v170 != 4)
      {
        LODWORD(v170) = 5;
      }
    }

    else if (v170 > 1)
    {
      if (v170 != 2)
      {
        LODWORD(v170) = 3;
      }
    }

    else
    {
      if (!v170)
      {
        *(result + 16) = 0;
        goto LABEL_504;
      }

      LODWORD(v170) = 1;
    }

    *(result + 16) = v170;
    goto LABEL_504;
  }

  if (v21)
  {
    v58 = v4 + 4;
    v59 = (v4 + 4) & 7;
    v60 = (a2 + (v58 >> 3));
    if (v59 == 7)
    {
      v61 = ((*v60 | (v60[1] << 8)) >> 7) & 3;
    }

    else
    {
      v61 = (*v60 >> v59) & 3;
    }

    if (v61 == 1)
    {
      *(result + 8) = 1;
      v90 = 0xE0000000ELL;
    }

    else
    {
      if (v61)
      {
        goto LABEL_517;
      }

      *(result + 8) = 1;
      v90 = 0xD0000000DLL;
    }

    *result = v90;
    v128 = *a3 + 6;
    v129 = v128 & 7;
    v130 = (a2 + (v128 >> 3));
    if (v129 == 7)
    {
      v131 = *v130 >> 7;
    }

    else
    {
      v131 = *v130 >> v129;
    }

    *(result + 16) |= v131 & 3;
    v25 = 8;
    goto LABEL_514;
  }

  v26 = v4 + 4;
  v27 = (v4 + 4) & 7;
  v28 = (a2 + (v26 >> 3));
  if (v27 == 7)
  {
    v29 = ((*v28 | (v28[1] << 8)) >> 7) & 3;
  }

  else
  {
    v29 = (*v28 >> v27) & 3;
  }

  if (v29 == 1)
  {
    *(result + 8) = 4;
    *result = 0xC0000000CLL;
    v124 = *a3 + 6;
    v125 = v124 & 7;
    v126 = (a2 + (v124 >> 3));
    if (v125 > 5)
    {
      v127 = *v126;
    }

    else
    {
      v127 = *v126;
    }

    *(result + 16) = (v127 >> v125) & 7;
    v171 = *(result + 20) & 0xFFFE | (*(a2 + ((*a3 + 9) >> 3)) >> ((*a3 + 9) & 7)) & 1;
    *(result + 20) = v171;
    v172 = v171 & 0xFFFD;
    if ((*(a2 + ((*a3 + 10) >> 3)) >> ((*a3 + 10) & 7)))
    {
      v173 = 2;
    }

    else
    {
      v173 = 0;
    }

    v174 = v172 | v173;
    *(result + 20) = v174;
    v175 = v174 & 0xFFFB;
    if ((*(a2 + ((*a3 + 11) >> 3)) >> ((*a3 + 11) & 7)))
    {
      v176 = 4;
    }

    else
    {
      v176 = 0;
    }

    v177 = v175 | v176;
    *(result + 20) = v177;
    v178 = v177 & 0xFFF7;
    if ((*(a2 + ((*a3 + 12) >> 3)) >> ((*a3 + 12) & 7)))
    {
      v179 = 8;
    }

    else
    {
      v179 = 0;
    }

    v180 = v178 | v179;
    *(result + 20) = v180;
    v181 = v180 & 0xFFEF;
    if ((*(a2 + ((*a3 + 13) >> 3)) >> ((*a3 + 13) & 7)))
    {
      v182 = 16;
    }

    else
    {
      v182 = 0;
    }

    v183 = v181 | v182;
    *(result + 20) = v183;
    v184 = v183 & 0xFFDF;
    if ((*(a2 + ((*a3 + 14) >> 3)) >> ((*a3 + 14) & 7)))
    {
      v185 = 32;
    }

    else
    {
      v185 = 0;
    }

    v186 = v184 | v185;
    *(result + 20) = v186;
    v187 = v186 & 0xFFBF;
    if ((*(a2 + ((*a3 + 15) >> 3)) >> ((*a3 + 15) & 7)))
    {
      v188 = 64;
    }

    else
    {
      v188 = 0;
    }

    v189 = v187 | v188;
    *(result + 20) = v189;
    v190 = v189 & 0xFF7F;
    if ((*(a2 + ((*a3 + 16) >> 3)) >> (*a3 & 7)))
    {
      v191 = 128;
    }

    else
    {
      v191 = 0;
    }

    v192 = v190 | v191;
    *(result + 20) = v192;
    v193 = v192 & 0xFEFF;
    if ((*(a2 + ((*a3 + 17) >> 3)) >> ((*a3 + 17) & 7)))
    {
      v194 = 256;
    }

    else
    {
      v194 = 0;
    }

    v195 = v193 | v194;
    *(result + 20) = v195;
    v196 = v195 & 0xFDFF;
    if ((*(a2 + ((*a3 + 18) >> 3)) >> ((*a3 + 18) & 7)))
    {
      v197 = 512;
    }

    else
    {
      v197 = 0;
    }

    v198 = v196 | v197;
    *(result + 20) = v198;
    v199 = v198 & 0xFBFF;
    if ((*(a2 + ((*a3 + 19) >> 3)) >> ((*a3 + 19) & 7)))
    {
      v200 = 1024;
    }

    else
    {
      v200 = 0;
    }

    v201 = v199 | v200;
    *(result + 20) = v201;
    v202 = v201 & 0xF7FF;
    if ((*(a2 + ((*a3 + 20) >> 3)) >> ((*a3 + 20) & 7)))
    {
      v203 = 2048;
    }

    else
    {
      v203 = 0;
    }

    v204 = v202 | v203;
    *(result + 20) = v204;
    v205 = v204 & 0xEFFF;
    if ((*(a2 + ((*a3 + 21) >> 3)) >> ((*a3 + 21) & 7)))
    {
      v206 = 4096;
    }

    else
    {
      v206 = 0;
    }

    v207 = v205 | v206;
    *(result + 20) = v207;
    v208 = v207 & 0xDFFF;
    if ((*(a2 + ((*a3 + 22) >> 3)) >> ((*a3 + 22) & 7)))
    {
      v209 = 0x2000;
    }

    else
    {
      v209 = 0;
    }

    v210 = v208 | v209;
    *(result + 20) = v210;
    v211 = v210 & 0xBFFF;
    if ((*(a2 + ((*a3 + 23) >> 3)) >> ((*a3 + 23) & 7)))
    {
      v212 = 0x4000;
    }

    else
    {
      v212 = 0;
    }

    v213 = v211 | v212;
    *(result + 20) = v213;
    if ((*(a2 + ((*a3 + 24) >> 3)) >> (*a3 & 7)))
    {
      v214 = 0x8000;
    }

    else
    {
      v214 = 0;
    }

    *(result + 20) = v214 & 0x8000 | v213 & 0x7FFF;
    v215 = *(result + 22);
    if ((*(a2 + ((*a3 + 25) >> 3)) >> ((*a3 + 25) & 7)))
    {
      v216 = v215 | 1;
    }

    else
    {
      v216 = v215 & 0xFE;
    }

    *(result + 22) = v216;
    goto LABEL_513;
  }

  if (!v29)
  {
    *(result + 8) = 10;
    *result = 0xB0000000BLL;
    v74 = *a3;
    v75 = *a3 + 9;
    v76 = (a2 + (v75 >> 3));
    v77 = v75 & 7;
    if (v77)
    {
      v78 = (*v76 >> v77) & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v78 = (*(v76 + 3) << 24) | (v76[2] << 16) | (v76[1] << 8) | *v76;
    }

    v217 = v74 + 65;
    v218 = (a2 + ((v74 + 65) >> 3));
    v219 = v217 & 7;
    if (v219)
    {
      v220 = (*v218 >> v219);
    }

    else
    {
      v220 = *v218;
    }

    *(result + 24) |= v78 | (v220 << 56);
    v221 = *a3 + 6;
    v222 = v221 & 7;
    v223 = (a2 + (v221 >> 3));
    if (v222 > 5)
    {
      v224 = *v223;
    }

    else
    {
      v224 = *v223;
    }

    v225 = (v224 >> v222) & 7;
    if (v225 > 3)
    {
      if (v225 > 5)
      {
        if (v225 != 6)
        {
          LODWORD(v225) = 7;
        }
      }

      else if (v225 != 4)
      {
        LODWORD(v225) = 5;
      }
    }

    else if (v225 > 1)
    {
      if (v225 != 2)
      {
        LODWORD(v225) = 3;
      }
    }

    else
    {
      if (!v225)
      {
        *(result + 16) = 0;
LABEL_507:
        v25 = 73;
        goto LABEL_514;
      }

      LODWORD(v225) = 1;
    }

    *(result + 16) = v225;
    goto LABEL_507;
  }

LABEL_517:
  *a4 = 0;
  return result;
}

void sub_24D7CF7F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a5;
  v16 = a4;
  v10 = *a2;
  *a2 = 0;
  v11 = a1 + 225280;
  *a1 = v10;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  v12 = 200000;
  v13 = a1;
  *(a1 + 344) = a7;
  do
  {
    *(v13 + 912) = 0;
    *(v13 + 880) = 0uLL;
    *(v13 + 896) = 0uLL;
    *(v13 + 848) = 0uLL;
    *(v13 + 864) = 0uLL;
    *(v13 + 816) = 0uLL;
    *(v13 + 832) = 0uLL;
    *(v13 + 1016) = 0;
    *(v13 + 920) = 0uLL;
    *(v13 + 936) = 0uLL;
    *(v13 + 952) = 0uLL;
    *(v13 + 968) = 0uLL;
    *(v13 + 984) = 0uLL;
    *(v13 + 1000) = 0uLL;
    *(v13 + 1024) = 0uLL;
    *(v13 + 1040) = 0uLL;
    *(v13 + 1056) = 0uLL;
    *(v13 + 1072) = 0uLL;
    *(v13 + 1088) = 0uLL;
    *(v13 + 1104) = 0uLL;
    *(v13 + 1120) = 0;
    *(v13 + 1224) = 0;
    *(v13 + 1192) = 0uLL;
    *(v13 + 1208) = 0uLL;
    *(v13 + 1160) = 0uLL;
    *(v13 + 1176) = 0uLL;
    *(v13 + 1128) = 0uLL;
    *(v13 + 1144) = 0uLL;
    *(v13 + 1232) = 0uLL;
    *(v13 + 1248) = 0uLL;
    *(v13 + 1264) = 0uLL;
    *(v13 + 1280) = 0uLL;
    *(v13 + 1296) = 0uLL;
    *(v13 + 1312) = 0uLL;
    *(v13 + 1328) = 0;
    *(v13 + 1336) = 0;
    *(v13 + 1344) = 0;
    *(v13 + 352) = 0uLL;
    *(v13 + 368) = 0uLL;
    *(v13 + 384) = 0uLL;
    *(v13 + 400) = 0uLL;
    *(v13 + 416) = 0uLL;
    *(v13 + 432) = 0uLL;
    *(v13 + 448) = 0uLL;
    *(v13 + 464) = 0uLL;
    *(v13 + 480) = 0uLL;
    *(v13 + 496) = 0uLL;
    *(v13 + 512) = 0uLL;
    *(v13 + 528) = 0uLL;
    *(v13 + 544) = 0uLL;
    *(v13 + 560) = 0uLL;
    *(v13 + 576) = 0uLL;
    *(v13 + 592) = 0uLL;
    *(v13 + 608) = 0uLL;
    *(v13 + 624) = 0uLL;
    *(v13 + 640) = 0uLL;
    *(v13 + 656) = 0uLL;
    *(v13 + 672) = 0uLL;
    *(v13 + 688) = 0uLL;
    *(v13 + 704) = 0uLL;
    *(v13 + 720) = 0uLL;
    *(v13 + 736) = 0uLL;
    *(v13 + 752) = 0uLL;
    *(v13 + 768) = 0uLL;
    *(v13 + 784) = 0uLL;
    v14 = (v13 + 796);
    v13 += 1000;
    *v14 = 0uLL;
    v12 -= 1000;
  }

  while (v12);
  bzero((a1 + 200352), 0x6340uLL);
  *(v11 + 480) = a6;
  *(a1 + 225776) = 0u;
  *(a1 + 225792) = 0u;
  *(v11 + 528) = a3;
  *(a1 + 225816) = 0u;
  *(a1 + 225832) = 0u;
  *(a1 + 225848) = 0u;
  *(a1 + 225864) = 0u;
  *(a1 + 225880) = 0u;
  sub_24D769624((a1 + 225816), &v16);
  sub_24D769624((a1 + 225840), &v15);
  operator new[]();
}

uint64_t *sub_24D7CF9F0(uint64_t *a1)
{
  v2 = a1 + 28063;
  v3 = a1[28221];
  if (v3)
  {
    MEMORY[0x2530332A0](v3, 0x1000C80451B5BE8);
  }

  v4 = v2[170];
  if (v4)
  {
    v2[171] = v4;
    operator delete(v4);
  }

  v5 = v2[167];
  if (v5)
  {
    v2[168] = v5;
    operator delete(v5);
  }

  v6 = v2[164];
  if (v6)
  {
    v2[165] = v6;
    operator delete(v6);
  }

  v7 = (a1 + 25044);
  v31 = (a1 + 28223);
  sub_24D7D014C(&v31);
  v8 = v2[152];
  if (v8)
  {
    v2[153] = v8;
    operator delete(v8);
  }

  v9 = v2 + 150;
  v10 = -1200;
  do
  {
    v11 = *(v9 - 1);
    if (v11)
    {
      *v9 = v11;
      operator delete(v11);
    }

    v9 -= 3;
    v10 += 24;
  }

  while (v10);
  v12 = -24000;
  do
  {
    v13 = *(v2 - 1);
    if (v13)
    {
      *v2 = v13;
      operator delete(v13);
    }

    v2 -= 3;
    v12 += 24;
  }

  while (v12);
  v14 = a1[25062];
  if (v14)
  {
    a1[25063] = v14;
    operator delete(v14);
  }

  v15 = a1[25059];
  if (v15)
  {
    operator delete(v15);
  }

  v16 = a1[25056];
  if (v16)
  {
    operator delete(v16);
  }

  v17 = a1[25053];
  if (v17)
  {
    a1[25054] = v17;
    operator delete(v17);
  }

  v18 = a1[25050];
  if (v18)
  {
    a1[25051] = v18;
    operator delete(v18);
  }

  v19 = a1[25047];
  if (v19)
  {
    a1[25048] = v19;
    operator delete(v19);
  }

  v20 = *v7;
  if (*v7)
  {
    a1[25045] = v20;
    operator delete(v20);
  }

  v21 = a1 + 24919;
  v22 = -200000;
  do
  {
    v21 = (sub_24D7D020C(v21) - 1000);
    v22 += 1000;
  }

  while (v22);
  v23 = a1[40];
  if (v23)
  {
    operator delete(v23);
  }

  v24 = a1[37];
  if (v24)
  {
    a1[38] = v24;
    operator delete(v24);
  }

  v25 = a1[34];
  if (v25)
  {
    a1[35] = v25;
    operator delete(v25);
  }

  v26 = a1[31];
  if (v26)
  {
    a1[32] = v26;
    operator delete(v26);
  }

  v27 = a1[28];
  if (v27)
  {
    a1[29] = v27;
    operator delete(v27);
  }

  v28 = a1[25];
  if (v28)
  {
    a1[26] = v28;
    operator delete(v28);
  }

  sub_24D7D05D0((a1 + 1));
  v29 = *a1;
  *a1 = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  return a1;
}

void sub_24D7CFC10(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v25 = a4;
  v8 = a1 + 224528;
  *(a1 + 225824) = *(a1 + 225816);
  v9 = (a1 + 200352);
  *(a1 + 225848) = *(a1 + 225840);
  *(a1 + 16) = *(a1 + 8);
  *(a1 + 40) = *(a1 + 32);
  *(a1 + 64) = *(a1 + 56);
  *(a1 + 88) = *(a1 + 80);
  *(a1 + 112) = *(a1 + 104);
  *(a1 + 136) = *(a1 + 128);
  *(a1 + 160) = *(a1 + 152);
  *(a1 + 184) = 0;
  *(a1 + 208) = *(a1 + 200);
  *(a1 + 232) = *(a1 + 224);
  *(a1 + 256) = *(a1 + 248);
  *(a1 + 280) = *(a1 + 272);
  v10 = a1 + 352;
  v11 = 200000;
  *(a1 + 328) = 0;
  do
  {
    sub_24D7CFE28(v10);
    v10 += 1000;
    v11 -= 1000;
  }

  while (v11);
  v9[1] = *v9;
  v9[4] = v9[3];
  v9[7] = v9[6];
  v9[13] = 0;
  v9[16] = 0;
  v9[19] = v9[18];
  v12 = *a2;
  v13 = a2[1];
  if (*a2 == v13)
  {
    v20 = *(*a1 + 8);
    if (v20)
    {
      v21 = v9 + 22;
      do
      {
        *v21 = *(v21 - 1);
        v21 += 3;
        --v20;
      }

      while (v20);
    }

    v22 = 50;
    v23 = v8;
    do
    {
      *v23 = *(v23 - 1);
      v23 += 3;
      --v22;
    }

    while (v22);
  }

  else
  {
    v14 = 0;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v12) >> 3);
    if (v15 <= 1)
    {
      v15 = 1;
    }

    do
    {
      v16 = (v12 + 24 * v14);
      v17 = *v16;
      v18 = v16[1];
      if (v17 != v18)
      {
        *(a1 + 224520 + 24 * v14 + 8) = *(a1 + 224520 + 24 * v14);
        do
        {
          v19 = *v17;
          v17 += 2;
          *(a1 + 200520 + 24 * v19 + 8) = *(a1 + 200520 + 24 * v19);
        }

        while (v17 != v18);
      }

      ++v14;
    }

    while (v14 != v15);
  }

  *(v8 + 1200) = *(v8 + 1192);
  *(v8 + 1360) = 0;
  *(a1 + 225744) = 0u;
  *(v8 + 1280) = a3;
  sub_24D769624((v8 + 1288), &v25);
  sub_24D769624((v8 + 1312), &v24);
  bzero(*(v8 + 1240), 16 * *(v8 + 1232));
}

void sub_24D7CFE28(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 512;
  }

  *(a1 + 32) = v6;
LABEL_8:
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  *(a1 + 88) = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = *(a1 + 64);
      v7 = (*(a1 + 56) + 8);
      *(a1 + 56) = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 256;
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_15;
    }

    v11 = 512;
  }

  *(a1 + 80) = v11;
LABEL_15:
  v12 = *(a1 + 104);
  v13 = *(a1 + 112);
  *(a1 + 136) = 0;
  v14 = (v13 - v12) >> 3;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v12);
      v15 = *(a1 + 112);
      v12 = (*(a1 + 104) + 8);
      *(a1 + 104) = v12;
      v14 = (v15 - v12) >> 3;
    }

    while (v14 > 2);
  }

  if (v14 == 1)
  {
    v16 = 256;
  }

  else
  {
    if (v14 != 2)
    {
      goto LABEL_22;
    }

    v16 = 512;
  }

  *(a1 + 128) = v16;
LABEL_22:
  v17 = *(a1 + 152);
  v18 = *(a1 + 160);
  *(a1 + 184) = 0;
  v19 = (v18 - v17) >> 3;
  if (v19 >= 3)
  {
    do
    {
      operator delete(*v17);
      v20 = *(a1 + 160);
      v17 = (*(a1 + 152) + 8);
      *(a1 + 152) = v17;
      v19 = (v20 - v17) >> 3;
    }

    while (v19 > 2);
  }

  if (v19 == 1)
  {
    v21 = 256;
  }

  else
  {
    if (v19 != 2)
    {
      goto LABEL_29;
    }

    v21 = 512;
  }

  *(a1 + 176) = v21;
LABEL_29:
  v22 = *(a1 + 200);
  v23 = *(a1 + 208);
  *(a1 + 232) = 0;
  v24 = (v23 - v22) >> 3;
  if (v24 >= 3)
  {
    do
    {
      operator delete(*v22);
      v25 = *(a1 + 208);
      v22 = (*(a1 + 200) + 8);
      *(a1 + 200) = v22;
      v24 = (v25 - v22) >> 3;
    }

    while (v24 > 2);
  }

  if (v24 == 1)
  {
    v26 = 512;
  }

  else
  {
    if (v24 != 2)
    {
      goto LABEL_36;
    }

    v26 = 1024;
  }

  *(a1 + 224) = v26;
LABEL_36:
  *(a1 + 248) = 0;
  v27 = *(a1 + 296);
  v28 = *(a1 + 304);
  *(a1 + 328) = 0;
  v29 = (v28 - v27) >> 3;
  if (v29 >= 3)
  {
    do
    {
      operator delete(*v27);
      v30 = *(a1 + 304);
      v27 = (*(a1 + 296) + 8);
      *(a1 + 296) = v27;
      v29 = (v30 - v27) >> 3;
    }

    while (v29 > 2);
  }

  if (v29 == 1)
  {
    v31 = 55;
    goto LABEL_42;
  }

  if (v29 == 2)
  {
    v31 = 110;
LABEL_42:
    *(a1 + 320) = v31;
  }

  *(a1 + 344) = 0;
  sub_24D7D0670((a1 + 360));
  *(a1 + 984) = 0;
}

uint64_t sub_24D7D0084(uint64_t result, _BYTE *a2, unint64_t a3, void *a4, unint64_t a5)
{
  if ((*a2 & 1) == 0)
  {
    v5 = *(result + 225824);
    v6 = *(result + 225816);
    v7 = (v5 - v6) >> 3;
    if (v7 >= 1)
    {
      v8 = v7 + 1;
      v9 = (v6 + 8 * v7 - 8);
      do
      {
        if (a5 >= a3)
        {
          a5 -= a3;
        }

        else
        {
          a5 = 0;
        }

        *v9-- = a5;
        --v8;
      }

      while (v8 > 1);
    }

    if (v6 != v5)
    {
      *a4 = *(v5 - 8);
    }

    *a2 = 1;
  }

  return result;
}

uint64_t sub_24D7D00E8(uint64_t result, _BYTE *a2, unint64_t a3, void *a4, unint64_t a5)
{
  if ((*a2 & 1) == 0)
  {
    v5 = *(result + 225848);
    v6 = *(result + 225840);
    v7 = (v5 - v6) >> 3;
    if (v7 >= 1)
    {
      v8 = v7 + 1;
      v9 = (v6 + 8 * v7 - 8);
      do
      {
        if (a5 >= a3)
        {
          a5 -= a3;
        }

        else
        {
          a5 = 0;
        }

        *v9-- = a5;
        --v8;
      }

      while (v8 > 1);
    }

    if (v6 != v5)
    {
      *a4 = *(v5 - 8);
    }

    *a2 = 1;
  }

  return result;
}

void sub_24D7D014C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_24D7D01A0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_24D7D01A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 40)
  {
    result = *(i - 32);
    *(i - 32) = 0;
    if (result)
    {
      result = MEMORY[0x2530332A0](result, 0x1000C8077774924);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_24D7D020C(void *a1)
{
  sub_24D7D0294(a1 + 45);
  v2 = a1[42];
  if (v2)
  {
    operator delete(v2);
  }

  sub_24D7D0524(a1 + 36);
  v3 = a1[33];
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[30];
  if (v4)
  {
    operator delete(v4);
  }

  sub_24D7D03CC(a1 + 24);
  sub_24D78F5D8(a1 + 18);
  sub_24D78F5D8(a1 + 12);
  sub_24D78F5D8(a1 + 6);

  return sub_24D78F5D8(a1);
}

uint64_t sub_24D7D0294(void *a1)
{
  sub_24D7D03CC(a1 + 71);
  sub_24D7D0320(a1 + 65);
  sub_24D7D03CC(a1 + 58);
  sub_24D78F5D8(a1 + 52);
  sub_24D7D03CC(a1 + 45);
  sub_24D7D03CC(a1 + 39);
  sub_24D7D03CC(a1 + 32);
  sub_24D78F5D8(a1 + 26);
  sub_24D7D03CC(a1 + 19);
  sub_24D7D0320(a1 + 13);
  sub_24D7D03CC(a1 + 6);

  return sub_24D7D0478(a1);
}

uint64_t sub_24D7D0320(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 2048;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 4096;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<GTMMappedBuffer::UsedBlock *>::~__split_buffer(a1);
}

uint64_t sub_24D7D03CC(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<GTMMappedBuffer::UsedBlock *>::~__split_buffer(a1);
}

uint64_t sub_24D7D0478(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 1024;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 2048;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<GTMMappedBuffer::UsedBlock *>::~__split_buffer(a1);
}

uint64_t sub_24D7D0524(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 55;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 110;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<GTMMappedBuffer::UsedBlock *>::~__split_buffer(a1);
}

uint64_t sub_24D7D05D0(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    *(a1 + 128) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    *(a1 + 104) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    *(a1 + 80) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    *(a1 + 56) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    *(a1 + 32) = v8;
    operator delete(v8);
  }

  v9 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v9;
    operator delete(v9);
  }

  return a1;
}

void sub_24D7D0670(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 1024;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 2048;
  }

  a1[4] = v6;
LABEL_8:
  v7 = a1[7];
  v8 = a1[8];
  a1[11] = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = a1[8];
      v7 = (a1[7] + 8);
      a1[7] = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 512;
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_15;
    }

    v11 = 1024;
  }

  a1[10] = v11;
LABEL_15:
  v12 = a1[14];
  v13 = a1[15];
  a1[18] = 0;
  v14 = (v13 - v12) >> 3;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v12);
      v15 = a1[15];
      v12 = (a1[14] + 8);
      a1[14] = v12;
      v14 = (v15 - v12) >> 3;
    }

    while (v14 > 2);
  }

  if (v14 == 1)
  {
    v16 = 2048;
  }

  else
  {
    if (v14 != 2)
    {
      goto LABEL_22;
    }

    v16 = 4096;
  }

  a1[17] = v16;
LABEL_22:
  v17 = a1[20];
  v18 = a1[21];
  a1[24] = 0;
  v19 = (v18 - v17) >> 3;
  if (v19 >= 3)
  {
    do
    {
      operator delete(*v17);
      v20 = a1[21];
      v17 = (a1[20] + 8);
      a1[20] = v17;
      v19 = (v20 - v17) >> 3;
    }

    while (v19 > 2);
  }

  if (v19 == 1)
  {
    v21 = 512;
  }

  else
  {
    if (v19 != 2)
    {
      goto LABEL_29;
    }

    v21 = 1024;
  }

  a1[23] = v21;
LABEL_29:
  v22 = a1[27];
  v23 = a1[28];
  a1[31] = 0;
  v24 = (v23 - v22) >> 3;
  if (v24 >= 3)
  {
    do
    {
      operator delete(*v22);
      v25 = a1[28];
      v22 = (a1[27] + 8);
      a1[27] = v22;
      v24 = (v25 - v22) >> 3;
    }

    while (v24 > 2);
  }

  if (v24 == 1)
  {
    v26 = 256;
  }

  else
  {
    if (v24 != 2)
    {
      goto LABEL_36;
    }

    v26 = 512;
  }

  a1[30] = v26;
LABEL_36:
  v27 = a1[33];
  v28 = a1[34];
  a1[37] = 0;
  v29 = (v28 - v27) >> 3;
  if (v29 >= 3)
  {
    do
    {
      operator delete(*v27);
      v30 = a1[34];
      v27 = (a1[33] + 8);
      a1[33] = v27;
      v29 = (v30 - v27) >> 3;
    }

    while (v29 > 2);
  }

  if (v29 == 1)
  {
    v31 = 512;
  }

  else
  {
    if (v29 != 2)
    {
      goto LABEL_43;
    }

    v31 = 1024;
  }

  a1[36] = v31;
LABEL_43:
  v32 = a1[40];
  v33 = a1[41];
  a1[44] = 0;
  v34 = (v33 - v32) >> 3;
  if (v34 >= 3)
  {
    do
    {
      operator delete(*v32);
      v35 = a1[41];
      v32 = (a1[40] + 8);
      a1[40] = v32;
      v34 = (v35 - v32) >> 3;
    }

    while (v34 > 2);
  }

  if (v34 == 1)
  {
    v36 = 512;
  }

  else
  {
    if (v34 != 2)
    {
      goto LABEL_50;
    }

    v36 = 1024;
  }

  a1[43] = v36;
LABEL_50:
  v37 = a1[46];
  v38 = a1[47];
  a1[50] = 0;
  v39 = (v38 - v37) >> 3;
  if (v39 >= 3)
  {
    do
    {
      operator delete(*v37);
      v40 = a1[47];
      v37 = (a1[46] + 8);
      a1[46] = v37;
      v39 = (v40 - v37) >> 3;
    }

    while (v39 > 2);
  }

  if (v39 == 1)
  {
    v41 = 512;
  }

  else
  {
    if (v39 != 2)
    {
      goto LABEL_57;
    }

    v41 = 1024;
  }

  a1[49] = v41;
LABEL_57:
  v42 = a1[53];
  v43 = a1[54];
  a1[57] = 0;
  v44 = (v43 - v42) >> 3;
  if (v44 >= 3)
  {
    do
    {
      operator delete(*v42);
      v45 = a1[54];
      v42 = (a1[53] + 8);
      a1[53] = v42;
      v44 = (v45 - v42) >> 3;
    }

    while (v44 > 2);
  }

  if (v44 == 1)
  {
    v46 = 256;
  }

  else
  {
    if (v44 != 2)
    {
      goto LABEL_64;
    }

    v46 = 512;
  }

  a1[56] = v46;
LABEL_64:
  v47 = a1[59];
  v48 = a1[60];
  a1[63] = 0;
  v49 = (v48 - v47) >> 3;
  if (v49 >= 3)
  {
    do
    {
      operator delete(*v47);
      v50 = a1[60];
      v47 = (a1[59] + 8);
      a1[59] = v47;
      v49 = (v50 - v47) >> 3;
    }

    while (v49 > 2);
  }

  if (v49 == 1)
  {
    v51 = 512;
  }

  else
  {
    if (v49 != 2)
    {
      goto LABEL_71;
    }

    v51 = 1024;
  }

  a1[62] = v51;
LABEL_71:
  v52 = a1[66];
  v53 = a1[67];
  a1[70] = 0;
  v54 = (v53 - v52) >> 3;
  if (v54 >= 3)
  {
    do
    {
      operator delete(*v52);
      v52 = (a1[66] + 8);
      a1[66] = v52;
      v54 = (a1[67] - v52) >> 3;
    }

    while (v54 > 2);
  }

  if (v54 == 1)
  {
    v55 = 2048;
  }

  else
  {
    if (v54 != 2)
    {
      goto LABEL_78;
    }

    v55 = 4096;
  }

  a1[69] = v55;
LABEL_78:
  v56 = a1[72];
  v57 = a1[73];
  a1[76] = 0;
  v58 = (v57 - v56) >> 3;
  if (v58 >= 3)
  {
    do
    {
      operator delete(*v56);
      v56 = (a1[72] + 8);
      a1[72] = v56;
      v58 = (a1[73] - v56) >> 3;
    }

    while (v58 > 2);
  }

  if (v58 == 1)
  {
    v59 = 512;
  }

  else
  {
    if (v58 != 2)
    {
      return;
    }

    v59 = 1024;
  }

  a1[75] = v59;
}

uint64_t sub_24D7D0AF0(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "DeltaSeconds");
  agxps_timeseries_get_length(v2);
  return v2;
}

uint64_t sub_24D7D0B48(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_d10d40e0cc19cf68a523b252faa985cd5777f1eab3cbe768098ca805cc7216ef");
  agxps_timeseries_get_length(v2);
  return v2;
}

void sub_24D7D0BA0(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "_0c33d520d54b5d5f84a71398d6ae71152426874088128bd3c18ad78df5f6d8b7");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_d10d40e0cc19cf68a523b252faa985cd5777f1eab3cbe768098ca805cc7216ef");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

uint64_t sub_24D7D0C68(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_da2d5f5fd43e7edda6d5635752a29f09d285cf47c2ecd0a1b83b1ba3eddcef55");
  agxps_timeseries_get_length(v2);
  return v2;
}

void sub_24D7D0CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (***a4)(void, const char *))
{
  v5 = (*(*a2 + 16))(a2, "_448897b2730c90c177c3e468d3780d048b4ef0c6feb09887550eb9e5e71373c0");
  v6 = (**a4)(a4, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/Dependencies/AGXProfilingSupport/AGXProfilingSupport/DerivedCounters/AGXPSLimiters.inl_69_58");

  sub_24D774B1C(v5, v6);
}

void sub_24D7D0D7C(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_ca0d54323c1777d994357aaacdb7beac572bea11cd16afed4c756f3dc9496a18");
  v3 = sub_24D76D428();
  sub_24D774B1C(v2, v3);
}

void sub_24D7D0E60(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "HelperPSInvocation");
  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D0F70(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_416b2a4855c3ad10e45eaab8493e7651ad66f8e3d44ad880fa8111c87ccd090a");
  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D1224(uint64_t a1, uint64_t a2, uint64_t (***a3)(void, const char *))
{
  v4 = (**a3)(a3, "NSEC_PER_SEC");
  v6 = v5;
  v7 = (*(*a2 + 16))(a2, "PrimitivesSubmitted");
  sub_24D773FA8(v4, v6, v7);
}

void sub_24D7D1374(uint64_t a1, uint64_t a2, uint64_t (***a3)(void, const char *))
{
  v4 = (**a3)(a3, "NSEC_PER_SEC");
  v6 = v5;
  v7 = (*(*a2 + 16))(a2, "PSInvocation");
  sub_24D773FA8(v4, v6, v7);
}

void sub_24D7D14C4(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "PSInvocation");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "VSInvocation");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D158C(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "PSInvocation");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "PrimitivesSubmitted");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D1654(uint64_t a1, uint64_t a2, void (***a3)(void, const char *))
{
  v4 = (*(*a2 + 16))(a2, "_f6c3f9b835930ff834f081ab2dfaacbdfbe451f6f2100abcdecec1c3c7999e0b");
  agxps_timeseries_get_length(v4);
  (**a3)(a3, "NUM_GPS");
  sub_24D809F40();
}

uint64_t sub_24D7D1740(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_427543bc9ae51e5f3520629f8bbe54e3a18d14de616f0c418cf7190a55cd7d9c");
  agxps_timeseries_get_length(v2);
  return v2;
}

void sub_24D7D1798(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "VerticesSubmitted");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "VSInvocation");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D18DC(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "VerticesSubmitted");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "VSInvocation");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

uint64_t sub_24D7D1ACC(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_2d3c257f33af88b8488658fb5b6a86f64cb02169b680e1250d3f37d373a4197f");
  agxps_timeseries_get_length(v2);
  return v2;
}

void sub_24D7D1B24(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "PrimitivesRasterized");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D1CB4(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "_29091329a1ff8f86d51ab9b84da709de18ba8aa1d94003a519a0663db7add4a1");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_6169af48fcc4f2c5d036243de6acd153bd0308c644bd7e4afc67499ad1aef2c7");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D1D7C(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "ClippedPrimitives");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

uint64_t sub_24D7D1E90(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_b466c606c4b7e98fcde3adad24a292c946f1f1130670918262ebf9f660e0173c");
  agxps_timeseries_get_length(v2);
  return v2;
}

uint64_t sub_24D7D1EE8(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_9f4066c82340989d0ea535230ddae2a44d311837c37d0eb67d122b2c592e661f");
  agxps_timeseries_get_length(v2);
  return v2;
}

uint64_t sub_24D7D1F40(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_01038280d9d6c505432733b12946359b7c301c69b32369f4b921b6fa206c2211");
  agxps_timeseries_get_length(v2);
  return v2;
}

uint64_t sub_24D7D1F98(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_1b4a415305c5e09fd037b34e5c34c099f08044e780d5c06d813ce80cf354dafd");
  agxps_timeseries_get_length(v2);
  return v2;
}

uint64_t sub_24D7D1FF0(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_d1bc81f56d6b804a852adb705f1ef63549265bdfc317d5a3af98aaee0d8f8ef9");
  agxps_timeseries_get_length(v2);
  return v2;
}

void sub_24D7D2048(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "PreCullPrimitiveCount");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "ClippedPrimitives");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D21F4(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "CulledPrimitives");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "GuardBandCullPrims");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D24B8(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "BackFaceCullPrims");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D2648(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "SmallTriangleCullPrims");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D27D8(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "_4b1f5c87264cd5cd23bb5eb652d21194fb7f49f9b1d70433f180b31a7a22dcab");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_4bb4ab3f3e64c565175f4fbe0f75df41b12c3bc2b4242b99cd4a330773d475d4");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D2908(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "GuardBandCullPrims");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D2A98(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "_0f9aab25f0863ace3de6f9832139250c806045a7ac0d6f8cf06c682c282005f1");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_dbe3d527893309548e6eebdee711a622433c869e148727cf18e31ae63cf116d3");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D2BC8(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "OffscreenCullPrims");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D2D58(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "InputPrimitivesPostClipping");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "PrimitivesRasterized");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D2E9C(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "CulledPrimitives");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D302C(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "_7cef4e481233623472ea3e1f6b4131fabb20f247f7e5eae173dfd693aa60d0ff");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_9177fce9b3d9e2a64a816854b3084588e4673c25a1c069c53b5909a77fb853eb");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D32AC(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "_24be79c8d8f70844505a88372d5027b6f8afd064ccbab97ac3ffe36dd5a0ef2b");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_9177fce9b3d9e2a64a816854b3084588e4673c25a1c069c53b5909a77fb853eb");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D352C(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "FragmentsRasterized");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "PreZPassCount");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D3670(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "PreZFailCount");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D3784(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "PreZPassCount");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D3898(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "PSInvocation");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_eda5bce70befa39e7c6029505c0269211092c220048a502fd8fa2fe30895465b");
  agxps_timeseries_get_length(v4);
  v5 = (*(*a2 + 16))(a2, "CA64702D3D4494B38F08BCB24ABD879988FB0FFE1D929F859EC9AED1C1C160E1");
  agxps_timeseries_get_length(v5);
  sub_24D809F40();
}

void sub_24D7D3A2C(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "CA64702D3D4494B38F08BCB24ABD879988FB0FFE1D929F859EC9AED1C1C160E1");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "2EAC2CEBA509E12A31090A56155DDCE41EAEE148F6832947CA8A512BDCFA0DF9");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D3AF4(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_ae304fc8bce5708ffef30935687e442d6bea78f814055a5fe6e3380013d7e507");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D3CC0(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "TextureSamples");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "VSInvocation");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D3D88(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "TextureSamples");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "PSInvocation");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D3E50(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "_a7e72038471917bb4125254ae57103538d43fd9d4a233b06a1f248ca3bfc11ac");
  agxps_timeseries_get_length(v3);
  sub_24D76D428();
  v4 = (*(*a2 + 16))(a2, "_f76e110e78dbd810843354c733691fcfcd8a5624a46d34e887797178f903ab95");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D44C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_6cfd368a32aaa58006f442cb1808508a71697efb5b2caf745c6cffcfc6f82611");

  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D454C(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_6cfd368a32aaa58006f442cb1808508a71697efb5b2caf745c6cffcfc6f82611");
  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D4638(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_1c910b780cb79e299a9d0247c8d1a459603db1dc763b4ed52741a88c074de5bf");

  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D46BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_52c7403e703719076cdf296da4b4519e56bc631b8415b1951b6f0cf0e0219fa0");

  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D4740(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_451212c403659fd235af4c21cb28fdb6182f9e88f9abbe82ffac4581d8182066");

  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D47C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_e7a27d480e44c6503ed8b6c934087b27a0077d74f40504e462d532d2f1a3bdb7");

  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D4848(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_31c6c7b72c721cbf22c73e2ea45cab724349bc24664443fa20490cffa1942ba0");

  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D48CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_cacab8b1a5ecc1dc964575476c6768c53eaca1e77742c6b06563d2ae796b77a3");

  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D4950(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_90f8398c59e13f204f42240431165d6d56af1c774dd14232a29aaa309622f650");

  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D49D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_bea7cabc89724eda834b02195b2e092233a094b61390d8d8ab4a8b44d875ffd8");

  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D4A58(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  (*(*a2 + 16))(a2, "_1c910b780cb79e299a9d0247c8d1a459603db1dc763b4ed52741a88c074de5bf");
  v3 = (*(*a2 + 16))(a2, "TextureQuads");
  v4 = sub_24D76D428();
  sub_24D77986C(v3, v4);
}

void sub_24D7D4B68(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  (*(*a2 + 16))(a2, "_52c7403e703719076cdf296da4b4519e56bc631b8415b1951b6f0cf0e0219fa0");
  v3 = (*(*a2 + 16))(a2, "TextureQuads");
  v4 = sub_24D76D428();
  sub_24D77986C(v3, v4);
}

void sub_24D7D4C78(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  (*(*a2 + 16))(a2, "_451212c403659fd235af4c21cb28fdb6182f9e88f9abbe82ffac4581d8182066");
  v3 = (*(*a2 + 16))(a2, "TextureQuads");
  v4 = sub_24D76D428();
  sub_24D77986C(v3, v4);
}

void sub_24D7D4D88(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  (*(*a2 + 16))(a2, "_e7a27d480e44c6503ed8b6c934087b27a0077d74f40504e462d532d2f1a3bdb7");
  v3 = (*(*a2 + 16))(a2, "TextureQuads");
  v4 = sub_24D76D428();
  sub_24D77986C(v3, v4);
}

void sub_24D7D4E98(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  (*(*a2 + 16))(a2, "_31c6c7b72c721cbf22c73e2ea45cab724349bc24664443fa20490cffa1942ba0");
  v3 = (*(*a2 + 16))(a2, "TextureQuads");
  v4 = sub_24D76D428();
  sub_24D77986C(v3, v4);
}

void sub_24D7D4FA8(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  (*(*a2 + 16))(a2, "_cacab8b1a5ecc1dc964575476c6768c53eaca1e77742c6b06563d2ae796b77a3");
  v3 = (*(*a2 + 16))(a2, "TextureQuads");
  v4 = sub_24D76D428();
  sub_24D77986C(v3, v4);
}

void sub_24D7D50B8(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  (*(*a2 + 16))(a2, "_90f8398c59e13f204f42240431165d6d56af1c774dd14232a29aaa309622f650");
  v3 = (*(*a2 + 16))(a2, "TextureQuads");
  v4 = sub_24D76D428();
  sub_24D77986C(v3, v4);
}

void sub_24D7D51C8(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  (*(*a2 + 16))(a2, "_bea7cabc89724eda834b02195b2e092233a094b61390d8d8ab4a8b44d875ffd8");
  v3 = (*(*a2 + 16))(a2, "TextureQuads");
  v4 = sub_24D76D428();
  sub_24D77986C(v3, v4);
}

void sub_24D7D52D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_ae304fc8bce5708ffef30935687e442d6bea78f814055a5fe6e3380013d7e507");

  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D5360(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_0927651557827fd5468721c2ee04ff7924ebb553f9e0acc6b504a791aefdf935");
  v3 = sub_24D76D428();

  sub_24D774B1C(v2, v3);
}

void sub_24D7D53E0(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "TextureQuads");
  v4 = (*(*a2 + 16))(a2, "_d856a24dfeb33f1dad922753efc16618fdf12ef3544115f2f5fffd93affab8d5");
  sub_24D770D64(v3, v4);
}

void sub_24D7D54AC(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, "_e3c38a0fcd21ca8c7859ba42db978a48abc6670bddf873569a8d0d4288fc86cc");
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_edfe1f625057ae73d4fca5c0d80ec6139288005d34db37757a1737b76a4716f4");
  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D55F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_2d30e0f503ead0256ece600a1872236b8dac0ddb4b29c02bf7935f2ff64c011d");

  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D567C(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_667247ed1a5c3ff4d2a5c0282f8666572a3036d26cb7af47329205d1f90adbf4");

  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D5700(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_f46268d72ed52af703d1b490e193d71605d5c756930dfe9385a5433c9b4f264f");

  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D5784(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_838e506beb7a1376c2242cd5738a6016661bdfccb78c105f3ce081c89735bc9d");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D5830(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_838e506beb7a1376c2242cd5738a6016661bdfccb78c105f3ce081c89735bc9d");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D5944(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_b7afe579643b48d1495eb528fa5a78db4c0a065f75636f39f24f9cf4578912cf");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D59F0(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_b7afe579643b48d1495eb528fa5a78db4c0a065f75636f39f24f9cf4578912cf");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D5B04(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_443fdcc2095b4dca2f7e327fb6af5914523d670164b66d05316044de82474149");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D5BB0(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_443fdcc2095b4dca2f7e327fb6af5914523d670164b66d05316044de82474149");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D5CC4(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "_cd1ed48f521bc3dff5675e8c48183da96f416902d6a6a198f8c83a2a6f8d0d11");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_bd02d5aeed8b2a086512b59511b59d2675b598b2801965ba46b391cd64096154");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D68B4(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "CompressedSamples");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D6AFC(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_7cdc2c85e61923202c5936567bb447b8929b55e3fadd72277ff0796a99a7bdb4");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D6BA8(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "LosslessCompressedSamples");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D6D74(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_4e06778c6dbd312e12fd320be6a28037bd94e2cc19c8687aba8981ec52f7d19e");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D6E20(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "LossyCompressedSamples");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D6FEC(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "TextureQuads");
  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D7154(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  (*(*a2 + 16))(a2, "UncompressedSamples");
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "TextureQuads");
  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D7244(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_f406f88bdd312ec0455d0943c388de77e53b86cf0109624b028c3aa596ec3bf4");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D72F0(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "_170b3221860fc0fbaa56212aaec28265bbcde52553eab4dcc253c612393c0d02");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_b1c17891cd73c9759b561e8166a6d51c7a422df70de3a45524ee1d8edf3d8edc");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D7400(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "PixelsUnbiasedWrittenToMemory");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "TexturePixelsWrittenToMemory");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D7504(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "PixelsUnbiasedWrittenToMemory");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "TexturePixelsWrittenToMemory");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D7648(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "_17ce0d5869b1ca5ede98d597eab698bc9a77c1ce783528f1a91438acb0c9fd08");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_71974a1faa4bcd23016a415a1cc6479308dab6778adbf2bab1cc0b8bf7de9982");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D7758(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "_84bc1f813b908b1a82a17fdf171643fd8ce9017f20844aa9fd9dd7f157bfeb00");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_766330b34b32220fe711ebf12a170751a84406ef29a5cd982cef665be1b22d5d");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D79E8(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "_5139262f4aa51a2a266c84eae7b1d2a0524e10ec154ddf35e1e1bc529071258a");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_a126f888ccf5d17092b398420351fb81f0c5462f5e15a2bf22f6914208f68de2");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D7C38(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_5139262f4aa51a2a266c84eae7b1d2a0524e10ec154ddf35e1e1bc529071258a");
  agxps_timeseries_get_length(v3);
  sub_24D809F40();
}

void sub_24D7D7DC4(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_a126f888ccf5d17092b398420351fb81f0c5462f5e15a2bf22f6914208f68de2");
  agxps_timeseries_get_length(v3);
  sub_24D809F40();
}

void sub_24D7D7F50(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_b2f6334df9fdac01bda9fa44b127edadeb640750d6824c0b27a248d10aba3638");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_346c9e2c1dd65c22e4dcdd48f80c681551c075280b02796f700601c4530e6f4f");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D8200(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 16))(a2, "_b2f6334df9fdac01bda9fa44b127edadeb640750d6824c0b27a248d10aba3638");
  agxps_timeseries_get_length(v4);
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_346c9e2c1dd65c22e4dcdd48f80c681551c075280b02796f700601c4530e6f4f");
  agxps_timeseries_get_length(v3);
  sub_24D809F40();
}

void sub_24D7D85E0(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "TexturePixelsWrittenToMemory");
  agxps_timeseries_get_length(v3);
  sub_24D809F40();
}

void sub_24D7D876C(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "AttachmentPixelsWrittenToMemory");
  agxps_timeseries_get_length(v3);
  sub_24D809F40();
}

void sub_24D7D88F8(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "CompressedPixelsWrittenToMemory");
  agxps_timeseries_get_length(v3);
  sub_24D809F40();
}

void sub_24D7D8A84(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "LossyCompressedPixelsWrittenToMemory");
  agxps_timeseries_get_length(v3);
  sub_24D809F40();
}

void sub_24D7D8C10(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_66eafb3ddb63687a1eef3817f25c70385aeb51f41d76b5cbdc5aa69a556bb76c");

  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D8C94(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_788f9865b6b4897849bedfd577403fe30b882c1c6c2afcdbf2a9f8a0d41e741b");
  v3 = sub_24D76D428();

  sub_24D774B1C(v2, v3);
}

void sub_24D7D8D10(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_788f9865b6b4897849bedfd577403fe30b882c1c6c2afcdbf2a9f8a0d41e741b");
  v3 = sub_24D76D428();

  sub_24D774B1C(v2, v3);
}

void sub_24D7D8D8C(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "MSAA2XResolvedPixels");
  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D8E78(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "MSAA4XResolvedPixels");
  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D8F64(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "MSAA8XResolvedPixels");
  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7D9050(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "MSAA2XResolvedPixels");
  v4 = (*(*a2 + 16))(a2, "MSAA4XResolvedPixels");

  sub_24D76F348(v3, v4);
}

void sub_24D7D90EC(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "MSAA2XResolvedPixels");
  v4 = (*(*a2 + 16))(a2, "MSAA4XResolvedPixels");
  sub_24D76F348(v3, v4);
}

void sub_24D7D91C8(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_92e4033c73762edd1ce117ae25bceecf0ae126712bf861ca430c8049f845b9ff");
  v4 = (*(*a2 + 16))(a2, "_37b62c762d1c23168d0c25f1bc6033c6ee17922f5e31eab8d0cd946eb40ff5f3");
  sub_24D76F348(v3, v4);
}

void sub_24D7D94E8(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_92e4033c73762edd1ce117ae25bceecf0ae126712bf861ca430c8049f845b9ff");
  v4 = (*(*a2 + 16))(a2, "_37b62c762d1c23168d0c25f1bc6033c6ee17922f5e31eab8d0cd946eb40ff5f3");
  sub_24D76F348(v3, v4);
}

void sub_24D7D9A88(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_867226b78b975653eb9f9d171ce53bedbf3edbc1ee1af8aa960cb9db4ec6490f");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D9B9C(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_f430991e42f778aeda210861eca9b8cef241898007339644eff469d83e5a6c9d");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7D9CDC(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_f539a056fbd45e39d61b9d34af0ea1a305dd8af6f005b5aa29488f2c966e7f21");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_c420303ee3c2ea941491fa0a071ec1553251898524fce318c3635bc711160395");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D9DF8(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_c89f25b2a31116ea6540fc6b89b623da7d4cbc9b2349ce7dbe4423a1395da60a");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_7eba0657c66c2437c8d6952fb82117b9399d920ea84fa32c5bdc9d1dee49e290");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7D9F14(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_3c6dba64fd85b35b8b8339f1d322943087d45cbb9b6689c587fd76259587a9d8");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_ac73411a986e90adcd0a1181ace1f2684e4a900be931343385b93f58de650db4");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7DA168(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_3c6dba64fd85b35b8b8339f1d322943087d45cbb9b6689c587fd76259587a9d8");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_9153a820a764c5c32c10432035db3a4194ee169ef665e8fc7297bd5592b39e62");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7DA284(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_ef52925e500884ba6b276e576ae78b97fd8448dfadeba596c2202b5202e246c3");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_43fe12d20dfe3a9ea7b303773d624405e026e20b2c550822f2587997d2557f13");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7DA658(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_d7a23701e11432625d46f02ff35668e60e55a7706704976facfe5fbeea3b1936");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_88723e1253a5c3264f69b1fbf3a6b7f3ab67bbd9fe97afeedb649146b3b8b043");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7DA894(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_df20e560276a18cd9b97f03f47abf0d8bf719014920913d325c6ad5d4ab98453");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7DA944(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_f406f88bdd312ec0455d0943c388de77e53b86cf0109624b028c3aa596ec3bf4");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_9da983fb76d81017bb17c1307769e9cdaa3547cc33eadcf7f389043343c66b31");
  agxps_timeseries_get_length(v4);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7DAB84(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "TextureAccesses");
  agxps_timeseries_get_length(v3);
  sub_24D76D428();
  v4 = (*(*a2 + 16))(a2, "TextureQuads");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7DAE00(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_416b2a4855c3ad10e45eaab8493e7651ad66f8e3d44ad880fa8111c87ccd090a");
  agxps_timeseries_get_length(v3);
  sub_24D809F40();
}

void sub_24D7DAF10(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_416b2a4855c3ad10e45eaab8493e7651ad66f8e3d44ad880fa8111c87ccd090a");
  agxps_timeseries_get_length(v3);
  sub_24D809F40();
}

void sub_24D7DB0D8(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "_b4a97f86133bb31ea8cf25afb427cb7dc1fe52552105fcd8bc3c4aa7ad099a78");
  v4 = (*(*a2 + 16))(a2, "_9969883349fe2838e0be35dff1762942e9491b337c7b0ba46661003a330996ac");
  sub_24D76F348(v3, v4);
}

void sub_24D7DB2FC(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "_1827ca25b7318e2df60eb0fe4f0c290b43054021ec3233e1fcdcf7b622fe4589");
  v4 = (*(*a2 + 16))(a2, "_04d4411374e68233627aa77e33b97414d97097b7d3599dc0555f05e8ba0c27ad");
  sub_24D76F348(v3, v4);
}

void sub_24D7DB3D8(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_3a25f8b9b9a3bb6fee419881039de7947be1fc155061f0ed642d5957df2c9221");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7DB488(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_732f9ae18abcb107b504911ba9abe0422500b581734d0a11f801be57da3a56b5");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7DB538(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "_ba0f7bef8431f94f98ea8587e522d4c8468e2bab9bc0be87d3b8b9ac97981db3");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_48d6a3135170e202f4c373f10c7fe2f4f35ae24a0feecef8accedc4f75fb7af4");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7DB6DC(uint64_t a1, uint64_t a2, uint64_t (***a3)(void, const char *))
{
  v5 = (**a3)(a3, "GL2_BPS");
  v7 = v6;
  v8 = (**a3)(a3, "GL2C_AF_SCALE_FACTOR");
  sub_24D76DBF0(v5, v7, v8);
  LODWORD(v7) = (**a3)(a3, "GL2_DVMR_BPS");
  v10 = v9;
  v11 = (**a3)(a3, "GL2C_AF_SCALE_FACTOR");
  sub_24D76DBF0(v7, v10, v11);
  v12 = (*(*a2 + 16))(a2, "E2175386E8858E1E5273EB120A19C734896FE34E529B7720E38F90C3E66633CC");
  agxps_timeseries_get_data(v12);
  agxps_timeseries_get_length(v12);
  sub_24D809F40();
}

void sub_24D7DB8C8(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_53c82a25ac54f8ecd1e94581a4020f0a20529b4813cab97e3977346ad0e270a8");
  v4 = (*(*a2 + 16))(a2, "_0965349a7930ddeeae0312bca50ac5672d7ecdb1e38a915536c0e7b8a1a3c321");
  sub_24D770D64(v3, v4);
}

void sub_24D7DBF50(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_fa7f16c60620d451db8d71e3b82cab7253d2dbf1457c7966dbf002da9af010c0");
  agxps_timeseries_get_length(v3);
  sub_24D809F40();
}

void sub_24D7DBFF8(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_e06b821bba710b56a3eaf194be742a6d964b111bb761426f6b1ebd16e227010e");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_becc55001438de226fddc3e26ffa180fce103d635eb0f85ffbb6c01dbde954fd");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7DC114(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_c788b8bd5d3e1ef8ad9501833f3b01bba5e1046e3e16d1a2aa837b76a60f19f4");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_4167773bd45e5e4d7f626a716b9775f840b172225798dd96b00c6f7f0290d75e");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7DC2D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_b89bac942f8b36ffc2ca66b71168fcbc6ce13aaf07ffbb371c8176139128528d");

  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7DC35C(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_44e2790fe56248cd45e2248d0f69699da605c77fab749daf6c865f1ab5f16563");
  agxps_timeseries_get_length(v3);
  sub_24D809F40();
}

uint64_t sub_24D7DC4E8(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_899b43f77bed0cc43134b61fcccca0925a0e62110b4bb7fae2c765efa3f9bbdc");
  agxps_timeseries_get_length(v2);
  return v2;
}

void sub_24D7DC540(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_257ec906bdb46e45679882d962be91fe1c161cb79df17ea71a7427b234a0b812");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7DC630(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_23628149970030e181bfc592d170355b20bf26530773c5dc9481760b2c4158ea");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7DC720(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "ParameterBufferTilerAlloc");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "ParameterBufferPrimitiveBlockAlloc");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

uint64_t sub_24D7DC7E8(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_06f73dd77cc4f21054a372b34a28a1d5d054ff7241ee73be67f927d897211048");
  agxps_timeseries_get_length(v2);
  return v2;
}

void sub_24D7DC840(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_ad6b7a66022bb8efc6c01d6f3db0be8594408168905585015d8f7ab8e7efe672");
  agxps_timeseries_get_length(v3);
  sub_24D809F40();
}

void sub_24D7DC9E8(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_2fab6f6232fd4f1349620047490c7562c852746134f1a6e53ca0510462394598");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_f4035ec10b022c926c9e5a14e4e2c08c16049d0e9474bf8b383ed109db7360d7");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7DCBD4(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_1308feee43a7aae19c3764eb8928e79f464f3a2b9d1291b01c1bae25565fa93c");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_ee24ab3d92c84359c20d00d2061a37fcec736e1c550577f0529a9c9441a265dc");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7DCEB0(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "_d2acb8217628c8c28df030d3f819e3831a16760dc5af79722487d789d9cbe02d");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_847829852334f2b320f2b2890d9a9c3dd7022b760b29a94540ba4fe13d1dd91a");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7DCFE0(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_d2acb8217628c8c28df030d3f819e3831a16760dc5af79722487d789d9cbe02d");
  agxps_timeseries_get_length(v3);
  sub_24D76D428();
  v4 = (*(*a2 + 16))(a2, "_847829852334f2b320f2b2890d9a9c3dd7022b760b29a94540ba4fe13d1dd91a");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7DD2B0(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_64a10cb112e74a4ec02f177b245e3f83edd61c0f78bc5bc7ae4978ce28f07f83");
  agxps_timeseries_get_length(v3);
  sub_24D809F40();
}

void sub_24D7DD458(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_aabc9758d4e52fd36dfb1a0e38171798aa7bf2ec665135dc298c1aa1a7c10760");
  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7DD6E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = sub_24D76D428();
  sub_24D76D970(v3, v5, v6);
  v7 = (*(*a2 + 16))(a2, "_ca0d54323c1777d994357aaacdb7beac572bea11cd16afed4c756f3dc9496a18");
  agxps_timeseries_get_length(v7);
  sub_24D809F40();
}

void sub_24D7DD8AC(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_46210435e8bd691719dc45391f51ef552bf7e745c1401ee9943aa6f85086336e");
  agxps_timeseries_get_length(v3);
  sub_24D809F40();
}

void sub_24D7DDA54(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_2d3c257f33af88b8488658fb5b6a86f64cb02169b680e1250d3f37d373a4197f");
  agxps_timeseries_get_length(v3);
  sub_24D809F40();
}

void sub_24D7DDBD8(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_149b69750a3c80a27d163a4ca69ec03e3b39b3c0afe9c90c8cd37a128832cb13");
  agxps_timeseries_get_length(v3);
  sub_24D809F40();
}

void sub_24D7DDD5C(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_da824fe9269c1efd80cb71a6e5415be160b6f43b41e858cb83976c4140b052a5");
  agxps_timeseries_get_length(v3);
  sub_24D809F40();
}

void sub_24D7DDEE0(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_6d6a7c8efb15986fa71f8bf4a6a06f8942199b36680e516766e92490607c958d");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "_fdc48a2370f6885da6ac169661812057de2cf71fbbbcb5df8348a78f112992dc");
  agxps_timeseries_get_length(v4);
  sub_24D809F40();
}

void sub_24D7DE0CC(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_6d6a7c8efb15986fa71f8bf4a6a06f8942199b36680e516766e92490607c958d");
  agxps_timeseries_get_length(v3);
  sub_24D809F40();
}

void sub_24D7DE174(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_da2d5f5fd43e7edda6d5635752a29f09d285cf47c2ecd0a1b83b1ba3eddcef55");
  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7DE2D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_da2d5f5fd43e7edda6d5635752a29f09d285cf47c2ecd0a1b83b1ba3eddcef55");
  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7DE400(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_63b721bdb7ff9f45f3835f7e6a8a4595b1fed0038ae9a76cb853fc36756386c9");
  agxps_timeseries_get_length(v3);
  sub_24D809F40();
}

void sub_24D7DE584(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_63b721bdb7ff9f45f3835f7e6a8a4595b1fed0038ae9a76cb853fc36756386c9");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}

void sub_24D7DE634(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_95457b9a60a638f3c652d16526373338287f19e3cb86adaea8a30e8255a7aa34");
  agxps_timeseries_get_length(v3);
  sub_24D809F40();
}

void sub_24D7DE790(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 16))(a2, "FragmentZStoreBytes");
  agxps_timeseries_get_length(v3);
  v4 = (*(*a2 + 16))(a2, "ZBytesWrittenToMainMemory");
  agxps_timeseries_get_length(v4);
  sub_24D76D428();
  sub_24D809F40();
}

uint64_t sub_24D7DE8DC(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_64a10cb112e74a4ec02f177b245e3f83edd61c0f78bc5bc7ae4978ce28f07f83");
  agxps_timeseries_get_length(v2);
  return v2;
}

void sub_24D7DE934(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_ca0d54323c1777d994357aaacdb7beac572bea11cd16afed4c756f3dc9496a18");
  agxps_timeseries_get_length(v3);
  sub_24D809F40();
}

void sub_24D7DE9D8(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_b4a97f86133bb31ea8cf25afb427cb7dc1fe52552105fcd8bc3c4aa7ad099a78");
  v4 = (*(*a2 + 16))(a2, "_9969883349fe2838e0be35dff1762942e9491b337c7b0ba46661003a330996ac");
  sub_24D76F348(v3, v4);
}

void sub_24D7DEB20(uint64_t a1, uint64_t a2)
{
  sub_24D76D428();
  v3 = (*(*a2 + 16))(a2, "_38634a3c133e20f9823ed092445c6b0f36f1ef4dd2d95c1b0ccee13e743c969f");
  v4 = (*(*a2 + 16))(a2, "_b1f1dccbabb78020f6754479b7a18c345807032d2b01916316926305adbb179a");
  sub_24D76F348(v3, v4);
}

uint64_t sub_24D7DECE8(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_46210435e8bd691719dc45391f51ef552bf7e745c1401ee9943aa6f85086336e");
  agxps_timeseries_get_length(v2);
  return v2;
}

uint64_t sub_24D7DED40(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_149b69750a3c80a27d163a4ca69ec03e3b39b3c0afe9c90c8cd37a128832cb13");
  agxps_timeseries_get_length(v2);
  return v2;
}

uint64_t sub_24D7DED98(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_da824fe9269c1efd80cb71a6e5415be160b6f43b41e858cb83976c4140b052a5");
  agxps_timeseries_get_length(v2);
  return v2;
}

uint64_t sub_24D7DEDF0(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_eda5bce70befa39e7c6029505c0269211092c220048a502fd8fa2fe30895465b");
  agxps_timeseries_get_length(v2);
  return v2;
}

uint64_t sub_24D7DEE48(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_2fab6f6232fd4f1349620047490c7562c852746134f1a6e53ca0510462394598");
  agxps_timeseries_get_length(v2);
  return v2;
}

void sub_24D7DEEA0(uint64_t a1, uint64_t a2)
{
  v3 = sub_24D76D428();
  v5 = v4;
  v6 = (*(*a2 + 16))(a2, "_0f67618fe6dd59b9cc951584dc80dd9f5dd9c428402dbe2e8a03c7df4100020e");

  sub_24D773FA8(v3, v5, v6);
}

void sub_24D7DEF28(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, "_93de7c9814ece906094ed6bd990d4adeb7f63c56d6998fa217dabfbd4ff28227");
  v3 = (*(*a2 + 16))(a2, "_521de75bc49981f7ab61d82d53a01d20ce2675553dff5b641a368059601177b1");
  v4 = (*(*a2 + 16))(a2, "_b9af5f36b8614ef4156bc07931fde4374c5e6fca308a6592a1b8b9527b481c0c");
  sub_24D76F348(v3, v4);
}

void sub_24D7DF348(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 16))(a2, "_40680272e25f5a98ef1fdae57c0be82cc7fb940000907f1a4d46547de8525db0");
  agxps_timeseries_get_length(v2);
  sub_24D76D428();
  sub_24D809F40();
}