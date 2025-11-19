uint64_t sub_24BC7F170(unint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  if (!a2)
  {
    return 1;
  }

  v3 = a1 >> 16;
  v4 = a1;
  if (a3)
  {
    v5 = a3 % 0x15B0;
    do
    {
      if (v5 < 8)
      {
        v6 = 0;
      }

      else
      {
        v6 = 0;
        do
        {
          v7 = v4 + a2[v6];
          v8 = v7 + v3;
          v9 = v7 + a2[v6 + 1];
          v10 = v8 + v9;
          v11 = v9 + a2[v6 + 2];
          v12 = v10 + v11;
          v13 = v11 + a2[v6 + 3];
          v14 = v12 + v13;
          v15 = v13 + a2[v6 + 4];
          v16 = v14 + v15;
          v17 = v15 + a2[v6 + 5];
          v18 = v16 + v17;
          v19 = v17 + a2[v6 + 6];
          v20 = v18 + v19;
          v4 = v19 + a2[v6 + 7];
          LODWORD(v3) = v20 + v4;
          v6 += 8;
        }

        while (v6 + 7 < v5);
        a2 += v6;
      }

      v21 = v5 >= v6;
      v22 = v5 - v6;
      if (v22 != 0 && v21)
      {
        v23 = v22;
        v24 = a2;
        do
        {
          v25 = *v24++;
          v4 += v25;
          LODWORD(v3) = v4 + v3;
          --v23;
        }

        while (v23);
        a2 += v22;
      }

      v4 %= 0xFFF1u;
      LODWORD(v3) = v3 % 0xFFF1;
      a3 -= v5;
      v5 = 5552;
    }

    while (a3);
  }

  return v4 | (v3 << 16);
}

uint64_t sub_24BC7F298(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a3)
  {
    v3 = ~result;
    do
    {
      v4 = *a2++;
      v5 = dword_24BFBC618[(v3 ^ v4) & 0xF] ^ (v3 >> 4);
      v3 = dword_24BFBC618[v5 & 0xF ^ (v4 >> 4)] ^ (v5 >> 4);
      --a3;
    }

    while (a3);
    LODWORD(result) = ~v3;
  }

  return result;
}

uint64_t sub_24BC7F310(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v10 = sub_24BC7F418(a2, a4, a6);
  if (!a1)
  {
    return 4294967294;
  }

  v11 = v10;
  result = 4294957296;
  if (a3 == 8 && (a5 - 10) >= 0xFFFFFFF7 && (a4 == 15 || a4 == -15))
  {
    *(a1 + 88) = 0;
    *(a1 + 96) = xmmword_24BFBC5A0;
    *(a1 + 16) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    v13 = *(a1 + 64);
    if (!v13)
    {
      v13 = sub_24BC7F49C;
      *(a1 + 64) = sub_24BC7F49C;
    }

    if (!*(a1 + 72))
    {
      *(a1 + 72) = sub_24BC7F4AC;
    }

    v14 = v13(*(a1 + 80), 1, 319352);
    if (v14)
    {
      *(a1 + 56) = v14;
      sub_24BC7F4B4(v14, 0, 0, v11 | 0x2000);
      return 0;
    }

    else
    {
      return 4294967292;
    }
  }

  return result;
}

uint64_t sub_24BC7F418(int a1, int a2, int a3)
{
  if (a1 >= 0xA)
  {
    v3 = 10;
  }

  else
  {
    v3 = a1;
  }

  if (a1 < 0)
  {
    v3 = 6;
  }

  v4 = dword_24BFBC85C[v3] | ((a1 < 4) << 14);
  if (a2 > 0)
  {
    v4 |= 0x1000u;
  }

  v5 = v4 | 0x10000;
  v6 = v4 | 0x40000;
  if (a3 != 4)
  {
    v6 = v4;
  }

  if (a3 != 3)
  {
    v5 = v6;
  }

  v7 = v4 | 0x20000;
  v8 = v4 & 0xFFFFF000;
  if (a3 != 2)
  {
    v8 = v4;
  }

  if (a3 != 1)
  {
    v7 = v8;
  }

  if (a3 <= 2)
  {
    v5 = v7;
  }

  v9 = v4 | 0x80000;
  if (a1)
  {
    return v5;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_24BC7F4B4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 20) = ((21846 * (a4 & 0xFFF) + 43692) >> 16) + 1;
  *(a1 + 24) = ((21846 * ((a4 >> 2) & 0x3FF) + 43692) >> 16) + 1;
  *(a1 + 28) = (a4 >> 14) & 1;
  if ((a4 & 0x8000) == 0)
  {
    bzero((a1 + 168618), 0x10000uLL);
  }

  *(a1 + 84) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 48) = a1 + 37547;
  *(a1 + 56) = a1 + 37546;
  *(a1 + 80) = 8;
  *(a1 + 64) = a1 + 234154;
  *(a1 + 72) = a1 + 234154;
  *(a1 + 100) = 0;
  *(a1 + 32) = xmmword_24BFBC5A0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  bzero((a1 + 33226), 0x280uLL);
  return 0;
}

uint64_t sub_24BC7F598(uint64_t a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  if (!*(a1 + 56))
  {
    return 0;
  }

  (*(a1 + 72))(*(a1 + 80));
  result = 0;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_24BC7F5E8(void *a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  v1 = a1[7];
  if (!v1 || !a1[8] || !a1[9])
  {
    return 4294967294;
  }

  a1[5] = 0;
  a1[2] = 0;
  sub_24BC7F4B4(v1, 0, 0, *(v1 + 16));
  return 0;
}

uint64_t sub_24BC7F644(uint64_t a1, unsigned int a2)
{
  v4 = 4294967294;
  if (a1)
  {
    if (a2 <= 4)
    {
      v24[5] = v2;
      v24[6] = v3;
      v6 = *(a1 + 56);
      if (v6)
      {
        v7 = *(a1 + 24);
        if (v7)
        {
          v8 = *(a1 + 32);
          if (!v8)
          {
            return 4294967291;
          }

          if (a2 == 1)
          {
            v9 = 2;
          }

          else
          {
            v9 = a2;
          }

          if (*(v6 + 132) == 1)
          {
            if (v9 == 4)
            {
              return 1;
            }

            else
            {
              return 4294967291;
            }
          }

          v10 = *(a1 + 16);
          v11 = *(a1 + 40);
          v12 = *(a1 + 8);
          v13 = *a1;
          while (1)
          {
            v23 = v8;
            v24[0] = v12;
            v4 = sub_24BC7F79C(v6, v13, v24, v7, &v23, v9);
            v15 = v23;
            v14 = v24[0];
            v13 = (*a1 + LODWORD(v24[0]));
            *a1 = v13;
            v16 = *(a1 + 8);
            v12 = v16 - v14;
            *(a1 + 8) = v16 - v14;
            v17 = *(a1 + 24);
            v18 = *(a1 + 16) + v14;
            v6 = *(a1 + 56);
            *(a1 + 96) = *(v6 + 32);
            v7 = v17 + v15;
            *(a1 + 16) = v18;
            *(a1 + 24) = v7;
            v19 = *(a1 + 32);
            v8 = v19 - v15;
            *(a1 + 32) = v19 - v15;
            v20 = *(a1 + 40) + v15;
            *(a1 + 40) = v20;
            if ((v4 & 0x80000000) != 0)
            {
              break;
            }

            if (v4 == 1)
            {
              return v4;
            }

            if (v19 == v15)
            {
              return 0;
            }

            if (v9 != 4 && v16 == v14)
            {
              if (v9)
              {
                return 0;
              }

              if (v20 == v11 && v18 == v10)
              {
                return 4294967291;
              }

              else
              {
                return 0;
              }
            }
          }
        }

        return 4294967294;
      }
    }
  }

  return v4;
}

uint64_t sub_24BC7F79C(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, uint64_t a4, unint64_t a5, int a6)
{
  if (a1)
  {
    *(a1 + 136) = a2;
    *(a1 + 144) = a4;
    *(a1 + 152) = a3;
    *(a1 + 160) = a5;
    *(a1 + 176) = a2;
    if (a3)
    {
      v9 = *a3;
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 184) = v9;
    *(a1 + 192) = 0;
    *(a1 + 168) = a6;
    if (((a4 | a5) != 0) != (*a1 == 0))
    {
      goto LABEL_14;
    }

    if (*(a1 + 132))
    {
      goto LABEL_14;
    }

    v11 = *(a1 + 128);
    if (a6 != 4)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    if (a3 && !a2 && *a3)
    {
      goto LABEL_15;
    }

    if (a5 && !a4 && *a5)
    {
LABEL_14:
      if (!a3)
      {
LABEL_16:
        if (a5)
        {
          *a5 = 0;
        }

        result = 4294967294;
        goto LABEL_19;
      }

LABEL_15:
      *a3 = 0;
      goto LABEL_16;
    }

    v12 = a6 == 4;
    *(a1 + 128) = v11 | v12;
    if (*(a1 + 116) || *(a1 + 120))
    {
LABEL_28:
      result = sub_24BC81D54(a1);
LABEL_19:
      *(a1 + 132) = result;
      return result;
    }

    if (sub_24BC81E08(a1))
    {
      if (a2 && (*(a1 + 16) & 0x3000) != 0)
      {
        *(a1 + 32) = sub_24BC7F170(*(a1 + 32), a2, *(a1 + 176) - a2);
      }

      if (!a6 || *(a1 + 40) || *(a1 + 184) || *(a1 + 116))
      {
        goto LABEL_28;
      }

      if ((sub_24BC826AC(a1, a6) & 0x80000000) == 0)
      {
        *(a1 + 120) = v12;
        if (a6 == 3)
        {
          *(a1 + 44) = 0;
          bzero((a1 + 103082), 0x20000uLL);
        }

        goto LABEL_28;
      }
    }

    return *(a1 + 132);
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (a5)
    {
      *a5 = 0;
    }

    return 4294967294;
  }
}

unint64_t sub_24BC7F940(uint64_t a1, unint64_t a2)
{
  if (110 * a2 / 0x64 + 128 <= (a2 + 5 * (((a2 >> 10) * 0x842108421084211uLL) >> 64) + 133))
  {
    return a2 + 5 * (((a2 >> 10) * 0x842108421084211uLL) >> 64) + 133;
  }

  else
  {
    return 110 * a2 / 0x64 + 128;
  }
}

uint64_t sub_24BC7F998(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, int a5)
{
  v18 = 0;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v5 = *a2;
  if ((*a2 | a4) >> 32)
  {
    return 4294957296;
  }

  v11 = a3;
  LODWORD(v12) = a4;
  *&v13 = a1;
  DWORD2(v13) = v5;
  result = sub_24BC7F310(&v11, a5, 8, 15, 9, 0);
  if (!result)
  {
    v8 = sub_24BC7F644(&v11, 4u);
    if (v8 == 1)
    {
      v9 = v15;
      *a2 = v14;
      if (v9)
      {
        (v16)(*(&v16 + 1));
      }

      return 0;
    }

    else
    {
      v10 = v8;
      if (v15)
      {
        (v16)(*(&v16 + 1));
      }

      if (v10)
      {
        return v10;
      }

      else
      {
        return 4294967291;
      }
    }
  }

  return result;
}

unint64_t sub_24BC7FA84(unint64_t a1)
{
  if (110 * a1 / 0x64 + 128 <= (a1 + 5 * (((a1 >> 10) * 0x842108421084211uLL) >> 64) + 133))
  {
    return a1 + 5 * (((a1 >> 10) * 0x842108421084211uLL) >> 64) + 133;
  }

  else
  {
    return 110 * a1 / 0x64 + 128;
  }
}

uint64_t sub_24BC7FADC(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 4294967294;
  }

  if (a2 != 15 && a2 != -15)
  {
    return 4294957296;
  }

  *(a1 + 88) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v4 = *(a1 + 64);
  if (!v4)
  {
    v4 = sub_24BC7F49C;
    *(a1 + 64) = sub_24BC7F49C;
  }

  if (!*(a1 + 72))
  {
    *(a1 + 72) = sub_24BC7F4AC;
  }

  v5 = v4(*(a1 + 80), 1, 43792);
  if (!v5)
  {
    return 4294967292;
  }

  v6 = v5;
  result = 0;
  *(a1 + 56) = v6;
  *(v6 + 43788) = 1;
  *v6 = 0;
  *(v6 + 11000) = xmmword_24BFBC5B0;
  *(v6 + 11016) = a2;
  return result;
}

uint64_t sub_24BC7FBC8(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 4294967294;
  }

  v3 = *(a1 + 56);
  if (!v3)
  {
    return 4294967294;
  }

  if (a2 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = a2;
  }

  result = 4294967294;
  if (v4 <= 4 && ((1 << v4) & 0x15) != 0)
  {
    if (v3[2754] <= 0)
    {
      v6 = 8;
    }

    else
    {
      v6 = 9;
    }

    v7 = *(a1 + 8);
    v8 = v3[2752];
    v3[2752] = 0;
    if ((v3[10947] & 0x80000000) != 0)
    {
      return 4294967293;
    }

    v9 = v3[2753];
    if (v4 != 4 && v9)
    {
      return result;
    }

    v3[2753] = v9 | (v4 == 4);
    if (v4 == 4 && v8)
    {
      v33 = *(a1 + 32);
      v34 = v7;
      v10 = sub_24BC7FF24(v3, *a1, &v34, *(a1 + 24), *(a1 + 24), &v33, v6 | 4u);
      v3[10947] = v10;
      v11 = v34;
      *a1 += v34;
      *(a1 + 8) -= v11;
      v12 = *(a1 + 24);
      v13 = *(a1 + 16) + v11;
      *(a1 + 96) = v3[7];
      v14 = v33;
      v15 = v12 + v33;
      *(a1 + 16) = v13;
      *(a1 + 24) = v15;
      *(a1 + 32) -= v14;
      *(a1 + 40) += v14;
      if ((v10 & 0x80000000) == 0)
      {
        if (!v10)
        {
          return 1;
        }

        v3[10947] = -1;
        return 4294967291;
      }

      return 4294967293;
    }

    if (v4 == 4)
    {
      v16 = v6;
    }

    else
    {
      v16 = v6 | 2;
    }

    v17 = v3[2751];
    if (!v17)
    {
      v21 = (v3 + 2755);
      v22 = v3[2750];
      v23 = v7;
      while (1)
      {
        v33 = 0x8000 - v22;
        v34 = v23;
        v24 = sub_24BC7FF24(v3, *a1, &v34, (v3 + 2755), &v21[v22], &v33, v16);
        v3[10947] = v24;
        v25 = v34;
        *a1 += v34;
        *(a1 + 8) -= v25;
        v26 = *(a1 + 24);
        *(a1 + 16) += v25;
        *(a1 + 96) = v3[7];
        v27 = v33;
        v3[2751] = v33;
        v28 = *(a1 + 32);
        v29 = v28 >= v27 ? v27 : v28;
        memcpy(v26, &v21[v3[2750]], v29);
        *(a1 + 24) += v29;
        v30 = *(a1 + 32);
        *(a1 + 32) = v30 - v29;
        *(a1 + 40) += v29;
        v31 = v3[2751];
        v3[2751] = v31 - v29;
        v22 = (v3[2750] + v29) & 0x7FFF;
        v3[2750] = v22;
        if (v24 < 0)
        {
          break;
        }

        if (v24 == 1 && !v7)
        {
          return 4294967291;
        }

        if (v4 == 4)
        {
          if (!v24)
          {
            if (v31 == v29)
            {
              return 1;
            }

            else
            {
              return 4294967291;
            }
          }

          if (v30 == v29)
          {
            return 4294967291;
          }

          v23 = *(a1 + 8);
        }

        else
        {
          if (!v24)
          {
            return v31 == v29;
          }

          result = 0;
          v23 = *(a1 + 8);
          if (!v23 || v30 == v29 || v31 != v29)
          {
            return result;
          }
        }
      }

      return 4294967293;
    }

    v18 = *(a1 + 32);
    if (v17 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    memcpy(*(a1 + 24), v3 + v3[2750] + 11020, v19);
    *(a1 + 24) += v19;
    *(a1 + 32) -= v19;
    *(a1 + 40) += v19;
    v20 = v3[2751];
    v3[2751] = v20 - v19;
    v3[2750] = (v3[2750] + v19) & 0x7FFF;
    return !v3[10947] && v20 == v19;
  }

  return result;
}

uint64_t sub_24BC7FF24(uint64_t a1, unsigned __int8 *__src, uint64_t *a3, unint64_t a4, char *__dst, void *a6, char a7)
{
  v213[9] = *MEMORY[0x277D85DE8];
  if ((a7 & 4) != 0)
  {
    v7 = -1;
  }

  else
  {
    v7 = &__dst[*a6 + ~a4];
  }

  if (__dst < a4 || (v8 = v7 + 1, ((v7 + 1) & v7) != 0))
  {
    *a6 = 0;
    *a3 = 0;
    result = 4294967293;
    goto LABEL_10;
  }

  v9 = a7;
  v10 = __dst;
  v11 = a1;
  v12 = 0;
  v14 = *(a1 + 32);
  v13 = *(a1 + 36);
  v15 = *(a1 + 40);
  v16 = *(a1 + 56);
  v209 = *(a1 + 64);
  v17 = *a1;
  v18 = *(a1 + 4);
  result = 0xFFFFFFFFLL;
  v204 = &__dst[*a6];
  v198 = v7;
  v199 = v11 + 0x2000;
  v20 = *a3;
  v21 = &__src[*a3];
  v22 = __src;
  v23 = __dst;
  v24 = 0;
  v200 = __src;
  v205 = v21;
  v202 = a4;
  switch(v17)
  {
    case 0:
      *(v11 + 8) = 0;
      *(v11 + 28) = 1;
      *(v11 + 16) = 1;
      if ((a7 & 1) == 0)
      {
        v15 = 0;
        v16 = 0;
        LODWORD(v13) = 0;
        v14 = 0;
        v18 = 0;
        v22 = __src;
        goto LABEL_93;
      }

      if (v20 > 0)
      {
        v15 = 0;
        v16 = 0;
        LODWORD(v13) = 0;
        v14 = 0;
        v18 = 0;
        goto LABEL_56;
      }

      v15 = 0;
      v16 = 0;
      LODWORD(v13) = 0;
      v14 = 0;
      v18 = 0;
      goto LABEL_71;
    case 1:
      if (v20 >= 1)
      {
LABEL_56:
        v22 = __src + 1;
        *(v11 + 8) = *__src;
      }

      else
      {
LABEL_71:
        if ((a7 & 2) != 0)
        {
          v24 = 0;
          v17 = 1;
          v22 = __src;
          v23 = __dst;
          v12 = 1;
          goto LABEL_413;
        }

        *(v11 + 8) = 0;
        v22 = __src;
      }

      if (v22 >= v21)
      {
LABEL_74:
        if ((a7 & 2) == 0)
        {
          v38 = 0;
          goto LABEL_76;
        }

        v24 = 0;
        v12 = 1;
        v17 = 2;
LABEL_98:
        v23 = __dst;
        goto LABEL_413;
      }

LABEL_25:
      v39 = *v22++;
      v38 = v39;
LABEL_76:
      *(v11 + 12) = v38;
      v57 = *(v11 + 8);
      if (((v38 | (v57 << 8)) % 0x1F) | v38 & 0x20)
      {
        v58 = 0;
      }

      else
      {
        v58 = (*(v11 + 8) & 0xF) == 8;
      }

      v59 = !v58;
      if ((a7 & 4) != 0)
      {
        if (v59)
        {
LABEL_90:
          v12 = 0;
          v24 = 0;
          LODWORD(v13) = 1;
          v17 = 36;
          v23 = __dst;
          goto LABEL_414;
        }
      }

      else
      {
        v60 = v57 >> 4;
        v61 = 256 << v60;
        v62 = v8 >> (v60 + 8);
        if (v61 > 0x8000 || v62 == 0)
        {
          v59 = 1;
        }

        if (v59)
        {
          goto LABEL_90;
        }
      }

      LODWORD(v13) = 0;
LABEL_93:
      v23 = __dst;
      while (1)
      {
        if (v18 <= 2)
        {
          do
          {
            if (v22 < v21)
            {
LABEL_27:
              v41 = *v22++;
              v40 = v41;
            }

            else
            {
LABEL_190:
              if ((v9 & 2) != 0)
              {
                v24 = 0;
                v12 = 1;
                v17 = 3;
                goto LABEL_413;
              }

              v40 = 0;
            }

            v16 |= v40 << v18;
            v18 += 8;
          }

          while (v18 < 3);
        }

        v87 = v16;
        v88 = v16 & 7;
        v16 >>= 3;
        v18 -= 3;
        v89 = (v87 >> 1) & 3;
        *(v11 + 20) = v88;
        *(v11 + 24) = v89;
        if (v88 >= 2)
        {
          break;
        }

LABEL_153:
        v35 = v204;
        LODWORD(v13) = 0;
        v16 >>= v18 & 7;
        v18 &= 0xFFFFFFF8;
        while (v13 <= 3)
        {
          if (v18)
          {
            if (v18 <= 7)
            {
              while (v22 >= v21)
              {
LABEL_169:
                if ((v9 & 2) != 0)
                {
                  v24 = 0;
                  v12 = 1;
                  v17 = 6;
                  goto LABEL_413;
                }

                v34 = 0;
LABEL_171:
                v86 = v18;
                v16 |= v34 << v18;
                v18 += 8;
                if (v86 <= 0xFFFFFFF7)
                {
                  goto LABEL_172;
                }
              }

              v85 = *v22++;
              v16 |= v85 << v18;
              v18 += 8;
            }

LABEL_172:
            *(v11 + v13 + 10536) = v16;
            v16 >>= 8;
            v18 -= 8;
          }

          else if (v22 >= v21)
          {
LABEL_163:
            if ((v9 & 2) != 0)
            {
              v24 = 0;
              v12 = 1;
              v17 = 7;
              goto LABEL_413;
            }

            *(v11 + v13 + 10536) = 0;
          }

          else
          {
            v18 = 0;
            v84 = *v22++;
            *(v11 + v13 + 10536) = v84;
          }

LABEL_173:
          LODWORD(v13) = v13 + 1;
        }

        LODWORD(v13) = *(v199 + 2344);
        if ((*(v199 + 2346) ^ v13) != 0xFFFF)
        {
          v12 = 0;
          v24 = 0;
          result = 0xFFFFFFFFLL;
          v17 = 39;
          goto LABEL_414;
        }

        if (*(v199 + 2344))
        {
          do
          {
            if (!v18)
            {
              break;
            }

            if (v18 <= 7)
            {
              while (v22 >= v21)
              {
LABEL_201:
                if ((v9 & 2) != 0)
                {
                  v24 = 0;
                  v12 = 1;
                  v17 = 51;
                  goto LABEL_413;
                }

                v56 = 0;
LABEL_203:
                v94 = v18;
                v16 |= v56 << v18;
                v18 += 8;
                if (v94 <= 0xFFFFFFF7)
                {
                  goto LABEL_204;
                }
              }

              v93 = *v22++;
              v16 |= v93 << v18;
              v18 += 8;
            }

LABEL_204:
            v14 = v16;
            v16 >>= 8;
            v18 -= 8;
LABEL_205:
            if (v23 >= v35)
            {
              v24 = 0;
              result = 2;
              v12 = 1;
              v17 = 52;
              goto LABEL_414;
            }

            *v23++ = v14;
            LODWORD(v13) = v13 - 1;
          }

          while (v13);
        }

        for (i = v14; v13; LODWORD(v13) = v13 - v65)
        {
          v9 = a7;
          v14 = i;
          v21 = v205;
LABEL_107:
          v29 = v204;
          if (v23 >= v204)
          {
            v24 = 0;
            result = 2;
            v12 = 1;
            v17 = 9;
            goto LABEL_414;
          }

LABEL_99:
          if (v22 >= v21)
          {
            if ((v9 & 2) != 0)
            {
              v24 = 0;
              v12 = 1;
              v17 = 38;
              goto LABEL_413;
            }

LABEL_110:
            v12 = 0;
            v24 = 0;
            result = 0xFFFFFFFFLL;
            v17 = 40;
            goto LABEL_414;
          }

          i = v14;
          v64 = v29 - v23;
          if (v64 >= v21 - v22)
          {
            v64 = v21 - v22;
          }

          if (v64 >= v13)
          {
            v65 = v13;
          }

          else
          {
            v65 = v64;
          }

          v66 = __src;
          v67 = v11;
          v68 = v15;
          memcpy(v23, v22, v65);
          a4 = v202;
          __src = v66;
          v11 = v67;
          v15 = v68;
          v22 += v65;
          v23 += v65;
        }

        v9 = a7;
        v14 = i;
        v21 = v205;
LABEL_345:
        if (*(v11 + 20))
        {
          if (v9)
          {
LABEL_347:
            LODWORD(v13) = 0;
            v16 >>= v18 & 7;
            v18 &= 0xFFFFFFF8;
            while (v13 <= 3)
            {
              if (v18)
              {
                if (v18 <= 7)
                {
                  while (1)
                  {
                    if (v22 < v21)
                    {
                      v161 = *v22++;
                      v16 |= v161 << v18;
                      v18 += 8;
                      goto LABEL_370;
                    }

LABEL_367:
                    if ((v9 & 2) != 0)
                    {
                      break;
                    }

                    v47 = 0;
LABEL_369:
                    v162 = v18;
                    v16 |= v47 << v18;
                    v18 += 8;
                    if (v162 <= 0xFFFFFFF7)
                    {
                      goto LABEL_370;
                    }
                  }

                  v24 = 0;
                  v12 = 1;
                  v17 = 41;
                  goto LABEL_413;
                }

LABEL_370:
                v50 = v16;
                v16 >>= 8;
                v18 -= 8;
              }

              else if (v22 >= v21)
              {
LABEL_360:
                if ((v9 & 2) != 0)
                {
                  v24 = 0;
                  v12 = 1;
                  v17 = 42;
                  goto LABEL_413;
                }

                v50 = 0;
              }

              else
              {
                v18 = 0;
                v160 = *v22++;
                v50 = v160;
              }

LABEL_371:
              *(v11 + 16) = v50 | (*(v11 + 16) << 8);
              LODWORD(v13) = v13 + 1;
            }
          }

          result = 0;
          v12 = 1;
          v17 = 34;
LABEL_363:
          v24 = 1;
          goto LABEL_414;
        }
      }

      if (v89 == 1)
      {
        *&v90 = 0x909090909090909;
        *(&v90 + 1) = 0x909090909090909;
        *(v11 + 216) = v90;
        *(v11 + 44) = 0x2000000120;
        *&v91 = 0x505050505050505;
        *(&v91 + 1) = 0x505050505050505;
        *(v11 + 3560) = v91;
        *(v11 + 3576) = v91;
        *&v91 = 0x808080808080808;
        *(&v91 + 1) = 0x808080808080808;
        *(v11 + 72) = v91;
        *(v11 + 88) = v91;
        *(v11 + 104) = v91;
        *(v11 + 120) = v91;
        *(v11 + 136) = v91;
        *(v11 + 152) = v91;
        *(v11 + 168) = v91;
        *(v11 + 184) = v91;
        *(v11 + 200) = v91;
        *(v11 + 232) = v90;
        *(v11 + 248) = v90;
        *(v11 + 264) = v90;
        *(v11 + 280) = v90;
        memset((v11 + 328), 7, 24);
        *(v11 + 352) = 0x808080808080808;
        v92 = 1;
        *(v11 + 296) = v90;
        *(v11 + 312) = v90;
        goto LABEL_221;
      }

      if (v89 == 3)
      {
        v12 = 0;
        v24 = 0;
        result = 0xFFFFFFFFLL;
        v17 = 10;
        goto LABEL_414;
      }

      LODWORD(v13) = 0;
      while (v13 <= 2)
      {
        v70 = v13;
        v69 = asc_24C043624[v13];
        v71 = asc_24C043624[v13];
        if (v18 < v69)
        {
          while (1)
          {
            if (v22 < v21)
            {
LABEL_18:
              v33 = *v22++;
              v32 = v33;
            }

            else
            {
LABEL_183:
              if ((v9 & 2) != 0)
              {
                v24 = 0;
                v12 = 1;
                v17 = 11;
                goto LABEL_413;
              }

              v32 = 0;
            }

            v16 |= v32 << v18;
            v18 += 8;
            v69 = asc_24C043624[v13];
            if (v18 >= v69)
            {
              v70 = v13;
              v71 = asc_24C043624[v13];
              break;
            }
          }
        }

        v72 = v16 & ~(-1 << v71);
        v16 >>= v69;
        v18 -= v69;
        *(v11 + 4 * v70 + 44) = v72 + dword_24BFBC850[v70];
        LODWORD(v13) = v13 + 1;
      }

      LODWORD(v13) = 0;
      *(v11 + 7304) = 0u;
      *(v11 + 7320) = 0u;
      *(v11 + 7272) = 0u;
      *(v11 + 7288) = 0u;
      *(v11 + 7240) = 0u;
      *(v11 + 7256) = 0u;
      *(v11 + 7208) = 0u;
      *(v11 + 7224) = 0u;
      *(v11 + 7176) = 0u;
      *(v11 + 7192) = 0u;
      *(v11 + 7144) = 0u;
      *(v11 + 7160) = 0u;
      *(v11 + 7112) = 0u;
      *(v11 + 7128) = 0u;
      *(v11 + 7080) = 0u;
      *(v11 + 7096) = 0u;
      *(v11 + 7048) = 0u;
      *(v11 + 7064) = 0u;
      while (v13 < *(v11 + 52))
      {
        if (v18 <= 2)
        {
          do
          {
            if (v22 < v21)
            {
LABEL_22:
              v37 = *v22++;
              v36 = v37;
            }

            else
            {
LABEL_216:
              if ((v9 & 2) != 0)
              {
                v24 = 0;
                v12 = 1;
                v17 = 14;
                goto LABEL_413;
              }

              v36 = 0;
            }

            v16 |= v36 << v18;
            v18 += 8;
          }

          while (v18 < 3);
        }

        v95 = v16 & 7;
        v16 >>= 3;
        v18 -= 3;
        *(v11 + byte_24BFBCD1E[v13] + 7048) = v95;
        LODWORD(v13) = v13 + 1;
      }

      *(v11 + 52) = 19;
      v92 = *(v11 + 24);
      if ((v92 & 0x80000000) == 0)
      {
        while (1)
        {
LABEL_221:
          v208 = v22;
          v207 = v14;
          v210 = v15;
          v96 = v11 + 3488 * v92;
          v97 = (v96 + 72);
          memset(v212, 0, sizeof(v212));
          v98 = v96 + 360;
          v99 = v96 + 2408;
          v197 = v11;
          v100 = v92;
          v101 = v11 + 4 * v92;
          bzero((v96 + 360), 0xC80uLL);
          v102 = *(v101 + 44);
          if (v102)
          {
            v103 = *(v101 + 44);
            v104 = v97;
            do
            {
              v105 = *v104++;
              ++*(v212 + v105);
              --v103;
            }

            while (v103);
          }

          v106 = 0;
          v107 = 0;
          v108 = 0;
          v213[0] = 0;
          LODWORD(v15) = v210;
          do
          {
            v109 = *(v212 + v106 + 4);
            v108 += v109;
            v107 = 2 * (v109 + v107);
            *(&v213[1] + v106) = v107;
            v106 += 4;
          }

          while (v106 != 60);
          if (v107 != 0x10000 && v108 > 1)
          {
            break;
          }

          if (v102)
          {
            v111 = 0;
            v112 = 0xFFFFFFFFLL;
            do
            {
              v113 = v97[v111];
              if (v97[v111])
              {
                LODWORD(v114) = 0;
                v115 = *(v213 + v113);
                *(v213 + v113) = v115 + 1;
                v116 = v113;
                do
                {
                  v117 = v115;
                  v118 = 2 * v114;
                  v114 = (2 * v114) | v115 & 1;
                  v115 >>= 1;
                  --v116;
                }

                while (v116);
                if (v113 > 0xA)
                {
                  if (*(v98 + 2 * (v114 & 0x3FF)))
                  {
                    v131 = v112;
                    LODWORD(v112) = *(v98 + 2 * (v114 & 0x3FF));
                  }

                  else
                  {
                    *(v98 + 2 * (v114 & 0x3FF)) = v112;
                    v131 = (v112 - 2);
                  }

                  v132 = v118 >> 9;
                  if (v113 == 11)
                  {
                    v133 = v131;
                  }

                  else
                  {
                    do
                    {
                      v134 = ((v132 >> 1) & 1) + ~v112;
                      v135 = *(v99 + 2 * v134);
                      if (*(v99 + 2 * v134))
                      {
                        v133 = v131;
                        LODWORD(v131) = v135;
                      }

                      else
                      {
                        *(v99 + 2 * v134) = v131;
                        v133 = (v131 - 2);
                      }

                      LODWORD(v112) = v131;
                      v132 >>= 1;
                      LODWORD(v113) = v113 - 1;
                      v131 = v133;
                    }

                    while (v113 > 0xB);
                  }

                  *(v99 + 2 * (((v132 >> 1) & 1) + ~v112)) = v111;
                  v112 = v133;
                }

                else if (v118 <= 0x3FF)
                {
                  v119 = 0;
                  v120 = v111 | (v113 << 9);
                  v121 = 1 << v113;
                  v122 = (1 << v113) + (v118 | v117 & 1);
                  if (v122 >= 0x400)
                  {
                    v123 = 1;
                  }

                  else
                  {
                    v123 = 2;
                  }

                  v124 = 1024;
                  if (v122 > 0x400)
                  {
                    v124 = v122;
                  }

                  v125 = v123 + ((v124 - (v122 < 0x400) - v122) >> v113);
                  v126 = vdupq_n_s64(v125 - 1);
                  do
                  {
                    v127 = (v119 << v113) + v114;
                    v128 = vdupq_n_s64(v119);
                    v129 = vmovn_s64(vcgeq_u64(v126, vorrq_s8(v128, xmmword_24BFBC5B0)));
                    if (vuzp1_s8(vuzp1_s16(v129, 6), 6).u8[0])
                    {
                      *(v98 + 2 * v127) = v120;
                    }

                    if (vuzp1_s8(vuzp1_s16(v129, 6), 6).i8[1])
                    {
                      *(v98 + 2 * (v127 + v121)) = v120;
                    }

                    if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v126, vorrq_s8(v128, xmmword_24BFBC5E0)))), 6).i8[2])
                    {
                      *(v98 + 2 * (v127 + 2 * v121)) = v120;
                      *(v98 + 2 * (v127 + (3 << v113))) = v120;
                    }

                    v130 = vmovn_s64(vcgeq_u64(v126, vorrq_s8(v128, xmmword_24BFBC5D0)));
                    if (vuzp1_s8(6, vuzp1_s16(v130, 6)).i32[1])
                    {
                      *(v98 + 2 * (v127 + 4 * v121)) = v120;
                    }

                    if (vuzp1_s8(6, vuzp1_s16(v130, 6)).i8[5])
                    {
                      *(v98 + 2 * (v127 + (5 << v113))) = v120;
                    }

                    if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v126, vorrq_s8(v128, xmmword_24BFBC5C0))))).i8[6])
                    {
                      *(v98 + 2 * (v127 + (6 << v113))) = v120;
                      *(v98 + 2 * (v127 + (7 << v113))) = v120;
                    }

                    v119 += 8;
                  }

                  while (((v125 + 7) & 0xFFFFFFFFFFFFFFF8) != v119);
                }
              }

              ++v111;
            }

            while (v111 != v102);
          }

          v11 = v197;
          if (v100 == 2)
          {
            LODWORD(v13) = 0;
            v9 = a7;
            v14 = v207;
            while (1)
            {
              v138 = *(v11 + 44);
              v137 = *(v11 + 48);
              if (v13 >= v137 + v138)
              {
                break;
              }

              if (v18 > 0xE)
              {
                __src = v200;
                v15 = v210;
                v22 = v208;
                v21 = v205;
              }

              else
              {
                v22 = v208;
                v21 = v205;
                __src = v200;
                v15 = v210;
                if (v205 - v208 <= 1)
                {
                  do
                  {
                    v143 = *(v11 + 2 * (v16 & 0x3FF) + 7336);
                    if ((v143 & 0x80000000) != 0)
                    {
                      if (v18 >= 0xB)
                      {
                        v145 = 12;
                        do
                        {
                          v143 = *(v11 + 9384 + 2 * (((v16 >> (v145 - 2)) & 1) + ~v143));
                          if ((v143 & 0x80000000) == 0)
                          {
                            break;
                          }

                          v82 = v18 >= v145++;
                        }

                        while (v82);
                        if ((v143 & 0x80000000) == 0)
                        {
                          break;
                        }
                      }
                    }

                    else if (v143 >= 0x200 && v18 >= v143 >> 9)
                    {
                      break;
                    }

                    if (v22 < v21)
                    {
LABEL_15:
                      v31 = *v22++;
                      v30 = v31;
                    }

                    else
                    {
LABEL_296:
                      if ((v9 & 2) != 0)
                      {
                        v24 = 0;
                        v12 = 1;
                        v17 = 16;
                        goto LABEL_413;
                      }

                      v30 = 0;
                    }

                    v16 |= v30 << v18;
                    v18 += 8;
                  }

                  while (v18 < 0xF);
                }

                else
                {
                  v16 |= (*v208 << v18) | (v208[1] << (v18 + 8));
                  v22 = v208 + 2;
                  v18 |= 0x10u;
                }
              }

              v14 = *(v11 + 2 * (v16 & 0x3FF) + 7336);
              if ((v14 & 0x80000000) != 0)
              {
                v147 = 10;
                do
                {
                  v146 = v147 + 1;
                  v14 = *(v11 + 9384 + 2 * (((v16 >> v147++) & 1) + ~v14));
                }

                while ((v14 & 0x80000000) != 0);
              }

              else
              {
                v146 = v14 >> 9;
                v14 &= 0x1FFu;
              }

              v16 >>= v146;
              v18 -= v146;
              if (v14 > 0xF)
              {
                v73 = v14 - 16;
                if (v14 == 16 && v13 == 0)
                {
                  LODWORD(v13) = 0;
                  v12 = 0;
                  v24 = 0;
                  result = 0xFFFFFFFFLL;
                  v14 = 16;
                  v17 = 17;
                  goto LABEL_414;
                }

                v15 = asc_24C043628[v73];
                if (v18 < v15)
                {
                  do
                  {
                    if (v22 < v21)
                    {
LABEL_31:
                      v44 = *v22++;
                      v43 = v44;
                    }

                    else
                    {
LABEL_311:
                      if ((v9 & 2) != 0)
                      {
                        v24 = 0;
                        v12 = 1;
                        v17 = 18;
                        goto LABEL_413;
                      }

                      v43 = 0;
                    }

                    v16 |= v43 << v18;
                    v18 += 8;
                  }

                  while (v18 < v15);
                  v73 = v14 - 16;
                }

                v208 = v22;
                v74 = 0;
                v75 = v16 & ~(-1 << v15);
                v16 >>= v15;
                v210 = v15;
                v18 -= v15;
                v76 = (v75 + asc_24C04362C[v73]);
                v77 = v11;
                if (v14 == 16)
                {
                  v74 = *(v11 + 10540 + (v13 - 1));
                }

                memset((v11 + 10540 + v13), v74, v76);
                LODWORD(v13) = v76 + v13;
                v11 = v77;
              }

              else
              {
                v208 = v22;
                v210 = v15;
                v148 = v11 + v13;
                LODWORD(v13) = v13 + 1;
                *(v148 + 10540) = v14;
              }
            }

            if (v137 + v138 != v13)
            {
              v12 = 0;
              v24 = 0;
              result = 0xFFFFFFFFLL;
              v17 = 21;
              __src = v200;
              LODWORD(v15) = v210;
              goto LABEL_282;
            }

            v139 = v11;
            v140 = v14;
            v141 = v11 + 10540;
            memcpy((v11 + 72), (v11 + 10540), *(v11 + 44));
            v142 = (v141 + v138);
            v14 = v140;
            v9 = a7;
            memcpy((v139 + 3560), v142, v137);
            v11 = v139;
            v136 = *(v139 + 24);
          }

          else
          {
            v136 = v100;
            v9 = a7;
            v14 = v207;
          }

          v21 = v205;
          a4 = v202;
          v92 = v136 - 1;
          *(v11 + 24) = v92;
          __src = v200;
          v15 = v210;
          v22 = v208;
          if ((v92 & 0x80000000) != 0)
          {
            goto LABEL_214;
          }
        }

        v12 = 0;
        v24 = 0;
        result = 0xFFFFFFFFLL;
        v17 = 35;
        v9 = a7;
        v11 = v197;
        __src = v200;
        v14 = v207;
LABEL_282:
        v22 = v208;
        goto LABEL_414;
      }

LABEL_214:
      v27 = v204;
      v28 = v198;
      while (1)
      {
        while (1)
        {
          v163 = v11 + 360;
          v164 = v11 + 2408;
          v78 = v18;
          while (v21 - v22 >= 4 && v27 - v23 > 1)
          {
            if (v78 <= 0x1D)
            {
              v151 = *v22;
              v22 += 4;
              v16 |= v151 << v78;
              v78 |= 0x20u;
            }

            LODWORD(v13) = *(v163 + 2 * (v16 & 0x3FF));
            if ((v13 & 0x80000000) != 0)
            {
              v153 = 10;
              do
              {
                v152 = v153 + 1;
                LODWORD(v13) = *(v164 + 2 * (((v16 >> v153++) & 1) + ~v13));
              }

              while ((v13 & 0x80000000) != 0);
            }

            else
            {
              v152 = v13 >> 9;
            }

            v16 >>= v152;
            v78 -= v152;
            if ((v13 & 0x100) != 0)
            {
              goto LABEL_343;
            }

            v154 = *(v163 + 2 * (v16 & 0x3FF));
            if ((v154 & 0x80000000) != 0)
            {
              v156 = 10;
              do
              {
                v155 = v156 + 1;
                v154 = *(v164 + 2 * (((v16 >> v156++) & 1) + ~v154));
              }

              while ((v154 & 0x80000000) != 0);
            }

            else
            {
              v155 = v154 >> 9;
            }

            v16 >>= v155;
            v78 -= v155;
            *v23 = v13;
            if ((v154 & 0x100) != 0)
            {
              ++v23;
              LOWORD(v13) = v154;
              goto LABEL_343;
            }

            v23[1] = v154;
            v23 += 2;
          }

          if (v78 <= 0xE)
          {
            if (v21 - v22 <= 1)
            {
              v18 = v78;
              while (1)
              {
                v81 = *(v11 + 2 * (v16 & 0x3FF) + 360);
                if ((v81 & 0x80000000) != 0)
                {
                  if (v18 >= 0xB)
                  {
                    v83 = 12;
                    do
                    {
                      v81 = *(v11 + 2408 + 2 * (((v16 >> (v83 - 2)) & 1) + ~v81));
                      if ((v81 & 0x80000000) == 0)
                      {
                        break;
                      }

                      v82 = v18 >= v83++;
                    }

                    while (v82);
                    if ((v81 & 0x80000000) == 0)
                    {
LABEL_148:
                      v78 = v18;
                      goto LABEL_338;
                    }
                  }
                }

                else
                {
                  v82 = v81 >= 0x200 && v18 >= v81 >> 9;
                  if (v82)
                  {
                    goto LABEL_148;
                  }
                }

                if (v22 < v21)
                {
LABEL_49:
                  v54 = *v22++;
                  v53 = v54;
                }

                else
                {
LABEL_150:
                  if ((v9 & 2) != 0)
                  {
                    v24 = 0;
                    v12 = 1;
                    v17 = 23;
                    goto LABEL_413;
                  }

                  v53 = 0;
                }

                v16 |= v53 << v18;
                v18 += 8;
                v78 = v18;
                if (v18 >= 0xF)
                {
                  goto LABEL_338;
                }
              }
            }

            v16 |= (*v22 << v78) | (v22[1] << (v78 + 8));
            v22 += 2;
            v78 |= 0x10u;
          }

LABEL_338:
          LODWORD(v13) = *(v11 + 2 * (v16 & 0x3FF) + 360);
          if ((v13 & 0x80000000) != 0)
          {
            v158 = 10;
            do
            {
              v157 = v158 + 1;
              LODWORD(v13) = *(v11 + 2408 + 2 * (((v16 >> v158++) & 1) + ~v13));
            }

            while ((v13 & 0x80000000) != 0);
          }

          else
          {
            v157 = v13 >> 9;
            LODWORD(v13) = v13 & 0x1FF;
          }

          v16 >>= v157;
          v18 = v78 - v157;
          v78 -= v157;
          if (v13 > 0xFF)
          {
            break;
          }

LABEL_348:
          if (v23 >= v27)
          {
            v24 = 0;
            result = 2;
            v12 = 1;
            v17 = 24;
            goto LABEL_414;
          }

          *v23++ = v13;
        }

LABEL_343:
        if ((v13 & 0x1FF) == 0x100)
        {
          LODWORD(v13) = 256;
          v18 = v78;
          goto LABEL_345;
        }

        v159 = (v13 & 0x1FF) - 257;
        LODWORD(v13) = dword_24BFBC658[v159];
        if ((v159 - 28) >= 0xFFFFFFFFFFFFFFECLL)
        {
          LODWORD(v15) = dword_24BFBC6D4[v159];
          while (v78 < v15)
          {
            v18 = v78;
            if (v22 < v21)
            {
LABEL_33:
              v46 = *v22++;
              v45 = v46;
            }

            else
            {
LABEL_376:
              if ((v9 & 2) != 0)
              {
                v24 = 0;
                v12 = 1;
                v17 = 25;
                goto LABEL_413;
              }

              v45 = 0;
            }

            v16 |= v45 << v18;
            v78 = v18 + 8;
          }

          v165 = v16 & ~(-1 << v15);
          v16 >>= v15;
          v78 -= v15;
          LODWORD(v13) = v13 + v165;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        if (v78 <= 0xE)
        {
          if (v21 - v22 <= 1)
          {
            v18 = v78;
            while (1)
            {
              v79 = *(v11 + 2 * (v16 & 0x3FF) + 3848);
              if ((v79 & 0x80000000) != 0)
              {
                if (v18 >= 0xB)
                {
                  v80 = 12;
                  do
                  {
                    v79 = *(v11 + 5896 + 2 * (((v16 >> (v80 - 2)) & 1) + ~v79));
                    if ((v79 & 0x80000000) == 0)
                    {
                      break;
                    }

                    v82 = v18 >= v80++;
                  }

                  while (v82);
                  if ((v79 & 0x80000000) == 0)
                  {
LABEL_131:
                    v78 = v18;
                    goto LABEL_384;
                  }
                }
              }

              else if (v79 >= 0x200 && v18 >= v79 >> 9)
              {
                goto LABEL_131;
              }

              if (v22 < v21)
              {
LABEL_45:
                v52 = *v22++;
                v51 = v52;
              }

              else
              {
LABEL_133:
                if ((v9 & 2) != 0)
                {
                  v24 = 0;
                  v12 = 1;
                  v17 = 26;
                  goto LABEL_413;
                }

                v51 = 0;
              }

              v16 |= v51 << v18;
              v18 += 8;
              v78 = v18;
              if (v18 >= 0xF)
              {
                goto LABEL_384;
              }
            }
          }

          v16 |= (*v22 << v78) | (v22[1] << (v78 + 8));
          v22 += 2;
          v78 |= 0x10u;
        }

LABEL_384:
        v166 = *(v11 + 2 * (v16 & 0x3FF) + 3848);
        if ((v166 & 0x80000000) != 0)
        {
          v168 = 10;
          do
          {
            v167 = v168 + 1;
            v166 = *(v11 + 5896 + 2 * (((v16 >> v168++) & 1) + ~v166));
          }

          while ((v166 & 0x80000000) != 0);
        }

        else
        {
          v167 = v166 >> 9;
          v166 &= 0x1FFu;
        }

        v16 >>= v167;
        v18 = v78 - v167;
        v14 = dword_24BFBC750[v166];
        if (v166 - 30 >= 0xFFFFFFFFFFFFFFE6)
        {
          break;
        }

        v15 = 0;
LABEL_398:
        v26 = &v23[-a4];
        if ((v9 & 4) != 0 && v26 < v14)
        {
          v209 = &v23[-a4];
          v12 = 0;
          v24 = 0;
          result = 0xFFFFFFFFLL;
          v17 = 37;
          goto LABEL_414;
        }

        v170 = (a4 + ((v26 - v14) & v28));
        if (v23 <= v170)
        {
          v171 = (a4 + ((v26 - v14) & v28));
        }

        else
        {
          v171 = v23;
        }

        if (&v171[v13] > v27)
        {
          while (v13)
          {
            LODWORD(v13) = v13 - 1;
LABEL_439:
            if (v23 >= v27)
            {
              v209 = v26;
              v24 = 0;
              result = 2;
              v12 = 1;
              v17 = 53;
              goto LABEL_414;
            }

            v196 = v26 - v14;
            ++v26;
            *v23++ = *(a4 + (v196 & v28));
          }

          v209 = v26;
          LODWORD(v13) = -1;
        }

        else
        {
          v13 = (v13 - 3) + 3;
          do
          {
            *v23 = *v170;
            v23[1] = v170[1];
            v23[2] = v170[2];
            v23 += 3;
            v170 += 3;
            v13 -= 3;
          }

          while (v13 > 2);
          v209 = v26;
          if (v13 > 0)
          {
            *v23 = *v170;
            if (v13 == 2)
            {
              v23[1] = v170[1];
            }

            v23 += v13;
          }
        }
      }

      v15 = dword_24BFBC7D0[v166];
      while (1)
      {
        if (v18 >= v15)
        {
          v169 = v16 & ~(-1 << v15);
          v16 >>= v15;
          v18 -= v15;
          v14 += v169;
          goto LABEL_398;
        }

        if (v22 < v21)
        {
LABEL_38:
          v49 = *v22++;
          v48 = v49;
          goto LABEL_396;
        }

LABEL_394:
        if ((v9 & 2) != 0)
        {
          break;
        }

        v48 = 0;
LABEL_396:
        v16 |= v48 << v18;
        v18 += 8;
      }

      v24 = 0;
      v12 = 1;
      v17 = 27;
LABEL_413:
      result = 1;
LABEL_414:
      *v11 = v17;
LABEL_415:
      *(v11 + 4) = v18;
      *(v11 + 32) = v14;
      *(v11 + 36) = v13;
      *(v11 + 40) = v15;
      *(v11 + 56) = v16;
      *(v11 + 64) = v209;
      *a3 = v22 - __src;
      v172 = v23 - v10;
      *a6 = v23 - v10;
      if ((v9 & 9) != 0 && v12)
      {
        v173 = *(v11 + 28);
        v174 = HIWORD(*(v11 + 28));
        if (v172)
        {
          v175 = v172 % 0x15B0;
          do
          {
            if (v175 < 8)
            {
              v176 = 0;
            }

            else
            {
              v176 = 0;
              do
              {
                v177 = v173 + v10[v176];
                v178 = v177 + v174;
                v179 = v177 + v10[v176 + 1];
                v180 = v178 + v179;
                v181 = v179 + v10[v176 + 2];
                v182 = v180 + v181;
                v183 = v181 + v10[v176 + 3];
                v184 = v182 + v183;
                v185 = v183 + v10[v176 + 4];
                v186 = v184 + v185;
                v187 = v185 + v10[v176 + 5];
                v188 = v186 + v187;
                v189 = v187 + v10[v176 + 6];
                v190 = v188 + v189;
                v173 = v189 + v10[v176 + 7];
                v174 = v190 + v173;
                v176 += 8;
              }

              while (v176 + 7 < v175);
              v10 += v176;
            }

            v82 = v175 >= v176;
            v191 = v175 - v176;
            if (v191 != 0 && v82)
            {
              v192 = v191;
              v193 = v10;
              do
              {
                v194 = *v193++;
                v173 += v194;
                v174 += v173;
                --v192;
              }

              while (v192);
              v10 += v191;
            }

            v173 %= 0xFFF1u;
            v174 %= 0xFFF1u;
            v172 -= v175;
            v175 = 5552;
          }

          while (v172);
        }

        v195 = v173 | (v174 << 16);
        *(v11 + 28) = v195;
        if (v24)
        {
          if (v9)
          {
            if (v195 == *(v11 + 16))
            {
              result = 0;
            }

            else
            {
              result = 4294967294;
            }
          }

          else
          {
            result = 0;
          }
        }
      }

LABEL_10:
      v25 = *MEMORY[0x277D85DE8];
      return result;
    case 2:
      v22 = __src;
      if (v20 >= 1)
      {
        goto LABEL_25;
      }

      goto LABEL_74;
    case 3:
      v22 = __src;
      v23 = __dst;
      if (v20 >= 1)
      {
        goto LABEL_27;
      }

      goto LABEL_190;
    case 4:
    case 8:
    case 12:
    case 13:
    case 15:
    case 19:
    case 20:
    case 22:
    case 28:
    case 29:
    case 30:
    case 31:
    case 33:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
      goto LABEL_415;
    case 5:
      if (v20 >= 1)
      {
        v22 = __src + 1;
        v42 = *__src;
LABEL_61:
        v16 |= v42 << v18;
        v18 += 8;
        v23 = __dst;
        goto LABEL_153;
      }

      if ((a7 & 2) == 0)
      {
        v42 = 0;
        v22 = __src;
        goto LABEL_61;
      }

      v24 = 0;
      v12 = 1;
      v17 = 5;
      goto LABEL_97;
    case 6:
      v22 = __src;
      if (v20 >= 1)
      {
        v22 = __src + 1;
        v34 = *__src;
        v23 = __dst;
        v35 = &__dst[*a6];
        goto LABEL_171;
      }

      v23 = __dst;
      v35 = &__dst[*a6];
      goto LABEL_169;
    case 7:
      v22 = __src;
      if (v20 >= 1)
      {
        v22 = __src + 1;
        *(v11 + v13 + 10536) = *__src;
        v23 = __dst;
        v35 = v204;
        goto LABEL_173;
      }

      v23 = __dst;
      v35 = &__dst[*a6];
      goto LABEL_163;
    case 9:
      v22 = __src;
      v23 = __dst;
      goto LABEL_107;
    case 10:
    case 17:
    case 21:
    case 35:
    case 36:
    case 37:
    case 39:
      goto LABEL_414;
    case 11:
      v22 = __src;
      v23 = __dst;
      if (v20 >= 1)
      {
        goto LABEL_18;
      }

      goto LABEL_183;
    case 14:
      v22 = __src;
      v23 = __dst;
      if (v20 >= 1)
      {
        goto LABEL_22;
      }

      goto LABEL_216;
    case 16:
      v22 = __src;
      v23 = __dst;
      if (v20 >= 1)
      {
        goto LABEL_15;
      }

      goto LABEL_296;
    case 18:
      v22 = __src;
      v23 = __dst;
      if (v20 >= 1)
      {
        goto LABEL_31;
      }

      goto LABEL_311;
    case 23:
      v22 = __src;
      v23 = __dst;
      v27 = &__dst[*a6];
      v28 = v198;
      if (v20 >= 1)
      {
        goto LABEL_49;
      }

      goto LABEL_150;
    case 24:
      v22 = __src;
      v23 = __dst;
      v27 = &__dst[*a6];
      v28 = v198;
      goto LABEL_348;
    case 25:
      v22 = __src;
      v23 = __dst;
      v27 = &__dst[*a6];
      v28 = v198;
      if (v20 >= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_376;
    case 26:
      v22 = __src;
      v23 = __dst;
      v27 = &__dst[*a6];
      v28 = v198;
      if (v20 >= 1)
      {
        goto LABEL_45;
      }

      goto LABEL_133;
    case 27:
      v22 = __src;
      v23 = __dst;
      v27 = &__dst[*a6];
      v28 = v198;
      if (v20 >= 1)
      {
        goto LABEL_38;
      }

      goto LABEL_394;
    case 32:
      if (v20 < 1)
      {
        if ((a7 & 2) != 0)
        {
          v24 = 0;
          v12 = 1;
          v17 = 32;
LABEL_97:
          v22 = __src;
          goto LABEL_98;
        }

        v55 = 0;
        v22 = __src;
      }

      else
      {
        v22 = __src + 1;
        v55 = *__src;
      }

      v16 |= v55 << v18;
      v18 += 8;
      v23 = __dst;
      goto LABEL_347;
    case 34:
      result = 0;
      v12 = 1;
      v22 = __src;
      v23 = __dst;
      goto LABEL_363;
    case 38:
      v22 = __src;
      v23 = __dst;
      v29 = &__dst[*a6];
      goto LABEL_99;
    case 40:
      v22 = __src;
      v23 = __dst;
      goto LABEL_110;
    case 41:
      v22 = __src;
      if (v20 >= 1)
      {
        v22 = __src + 1;
        v47 = *__src;
        v23 = __dst;
        goto LABEL_369;
      }

      v23 = __dst;
      goto LABEL_367;
    case 42:
      v22 = __src;
      if (v20 >= 1)
      {
        v22 = __src + 1;
        v50 = *__src;
        v23 = __dst;
        goto LABEL_371;
      }

      v23 = __dst;
      goto LABEL_360;
    case 51:
      v22 = __src;
      if (v20 >= 1)
      {
        v22 = __src + 1;
        v56 = *__src;
        v23 = __dst;
        v35 = &__dst[*a6];
        goto LABEL_203;
      }

      v23 = __dst;
      v35 = &__dst[*a6];
      goto LABEL_201;
    case 52:
      v22 = __src;
      v23 = __dst;
      v35 = &__dst[*a6];
      goto LABEL_205;
    case 53:
      v22 = __src;
      v23 = __dst;
      v26 = v209;
      v27 = &__dst[*a6];
      v28 = v198;
      goto LABEL_439;
    default:
      v22 = __src;
      v23 = __dst;
      v24 = 0;
      goto LABEL_415;
  }
}

uint64_t sub_24BC818DC(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v18 = 0;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v4 = *a2;
  if ((*a2 | a4) >> 32)
  {
    return 4294957296;
  }

  v11 = a3;
  LODWORD(v12) = a4;
  *&v13 = a1;
  DWORD2(v13) = v4;
  result = sub_24BC7FADC(&v11, 15);
  if (!result)
  {
    v7 = sub_24BC7FBC8(&v11, 4u);
    if (v7 == 1)
    {
      v8 = v15;
      *a2 = v14;
      if (v8)
      {
        (v16)(*(&v16 + 1));
      }

      return 0;
    }

    else
    {
      v9 = v7;
      if (v15)
      {
        (v16)(*(&v16 + 1));
      }

      if (v12)
      {
        v10 = 0;
      }

      else
      {
        v10 = v9 == -5;
      }

      if (v10)
      {
        return 4294967293;
      }

      else
      {
        return v9;
      }
    }
  }

  return result;
}

uint64_t sub_24BC819B8(int a1)
{
  v1 = &off_27916C2A8;
  v2 = 10;
  while (*(v1 - 2) != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1;
}

char *sub_24BC819EC()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v22 = *MEMORY[0x277D85DE8];
  *v1 = 0;
  v21[0] = 0;
  v11 = v10 & 0xF9;
  while (1)
  {
    v20 = v4 - v8;
    v19 = v9 - v6;
    v12 = &v7[v6];
    v13 = v7 ? v12 : 0;
    v14 = sub_24BC7FF24(v21, (v5 + v8), &v20, v7, v13, &v19, v11 | 4u);
    if (v14 < 0 || v14 == 1)
    {
      break;
    }

    v15 = v20;
    *v2 += v19;
    if (!v14)
    {
      goto LABEL_14;
    }

    if (2 * v9 <= 0x80)
    {
      v9 = 128;
    }

    else
    {
      v9 *= 2;
    }

    v16 = malloc_type_realloc(v7, v9, 0xA7E39727uLL);
    if (!v16)
    {
      break;
    }

    v8 += v15;
    v6 = *v2;
    v7 = v16;
  }

  free(v7);
  v7 = 0;
  *v2 = 0;
LABEL_14:
  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_24BC81B44()
{
  v0 = MEMORY[0x28223BE20]();
  v10 = *MEMORY[0x277D85DE8];
  v7 = v2;
  v8 = v1;
  v9[0] = 0;
  if (sub_24BC7FF24(v9, v4, &v7, v0, v0, &v8, v3 & 0xF9 | 4u))
  {
    result = -1;
  }

  else
  {
    result = v8;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BC81BF0()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v22 = *MEMORY[0x277D85DE8];
  v10 = malloc_type_malloc(0x8000uLL, 0x100004077774924uLL);
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    v21[0] = 0;
    while (1)
    {
      v20 = *v8 - v12;
      v19 = 0x8000 - v13;
      v14 = sub_24BC7FF24(v21, (v9 + v12), &v20, v11, &v11[v13], &v19, v2 & 0xF9);
      v15 = v19;
      v12 += v20;
      if (v19)
      {
        if (!v6(&v11[v13], v19, v4))
        {
          break;
        }
      }

      if (v14 != 2)
      {
        v16 = v14 == 0;
        goto LABEL_10;
      }

      v13 = (v15 + v13) & 0x7FFFLL;
    }

    v16 = 0;
LABEL_10:
    free(v11);
    *v8 = v12;
  }

  else
  {
    v16 = 0xFFFFFFFFLL;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

BOOL sub_24BC81D54(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    *v2 = *(a1 + 176) - *(a1 + 136);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    v4 = *(a1 + 192);
    v5 = *v3 - v4;
    if (v5 >= *(a1 + 116))
    {
      v6 = *(a1 + 116);
    }

    else
    {
      v6 = v5;
    }

    memcpy((*(a1 + 144) + v4), (a1 + 234154 + *(a1 + 112)), v6);
    v7 = *(a1 + 116) - v6;
    *(a1 + 112) += v6;
    *(a1 + 116) = v7;
    v8 = *(a1 + 192) + v6;
    *(a1 + 192) = v8;
    **(a1 + 160) = v8;
  }

  return *(a1 + 120) && *(a1 + 116) == 0;
}

BOOL sub_24BC81E08(uint64_t a1)
{
  v2 = a1 + 200;
  v3 = a1 + 168618;
  v4 = *(a1 + 176);
  v5 = *(a1 + 184);
  v6 = a1 + 103082;
  v7 = *(a1 + 168);
  v8 = a1 + 33226;
  v9 = a1 + 33802;
  v87 = a1 + 20;
  v88 = a1 + 37546;
  v89 = a1 + 103074;
  while (1)
  {
    if (v5)
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 44);
      if (v10 + v11 <= 1)
      {
        v12 = 0;
        if (v11 <= 0x102)
        {
          v13 = 258;
        }

        else
        {
          v13 = *(a1 + 40);
        }

        while (v13 - v11 != v12)
        {
          v14 = v4[v12];
          v15 = *(a1 + 36);
          v16 = (v11 + v12 + v15) & 0x7FFF;
          *(v2 + v16) = v14;
          if (v16 <= 0x100)
          {
            *(v2 + ((v11 + v12 + v15) & 0x7FFF) + 0x8000) = v14;
          }

          *(a1 + 40) = v11 + v12 + 1;
          if (v11 + v10 + 1 + v12 >= 3)
          {
            v17 = v11 - 2 + v12 + v15;
            v18 = v14 ^ (32 * *(v2 + ((v11 + 0x7FFF + v12 + v15) & 0x7FFF))) ^ ((*(v2 + (v17 & 0x7FFF)) & 0x1F) << 10);
            *(v6 + 2 * (v17 & 0x7FFF)) = *(v3 + 2 * v18);
            *(v3 + 2 * v18) = v17;
          }

          if (v5 == ++v12)
          {
            v5 = 0;
            v13 = v11 + v12;
            v4 += v12;
            goto LABEL_28;
          }
        }

        if (0x8000 - v13 >= v10)
        {
          v29 = v10;
        }

        else
        {
          v29 = 0x8000 - v13;
        }

        *(a1 + 44) = v29;
        v4 += v12;
        v5 -= v12;
        goto LABEL_38;
      }

      goto LABEL_18;
    }

    if (!v7)
    {
      break;
    }

    v13 = *(a1 + 40);
    if (!v13)
    {
      break;
    }

    v10 = *(a1 + 44);
    if (v10 + v13 <= 1)
    {
      v5 = 0;
      goto LABEL_28;
    }

    v11 = *(a1 + 40);
LABEL_18:
    LODWORD(v19) = *(a1 + 36) + v11;
    v20 = v19 - 2;
    v21 = *(v2 + ((v19 - 2) & 0x7FFFLL));
    v22 = *(v2 + ((*(a1 + 36) + v11 - 1) & 0x7FFF));
    v23 = 258 - v11;
    if (v5 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v5;
    }

    v5 -= v24;
    v13 = v24 + v11;
    *(a1 + 40) = v24 + v11;
    if (v24)
    {
      v25 = &v4[v24];
      LOWORD(v26) = v22 ^ (32 * v21);
      do
      {
        v19 &= 0x7FFFu;
        v28 = *v4++;
        v27 = v28;
        *(v2 + v19) = v28;
        if (v19 <= 0x100)
        {
          *(v2 + v19 + 0x8000) = v27;
        }

        v26 = (32 * (v26 & 0x3FF)) ^ v27;
        *(v6 + 2 * (v20 & 0x7FFF)) = *(v3 + 2 * v26);
        *(v3 + 2 * v26) = v20;
        LOWORD(v19) = v19 + 1;
        ++v20;
        --v24;
      }

      while (v24);
      v4 = v25;
    }

LABEL_28:
    if (0x8000 - v13 >= v10)
    {
      v29 = v10;
    }

    else
    {
      v29 = 0x8000 - v13;
    }

    *(a1 + 44) = v29;
    if (!v7 && v13 < 0x102)
    {
      goto LABEL_140;
    }

LABEL_38:
    v30 = v13;
    v31 = *(a1 + 104);
    if (v31)
    {
      v32 = *(a1 + 104);
    }

    else
    {
      v32 = 2;
    }

    v33 = *(a1 + 36);
    v34 = v33 & 0x7FFF;
    v35 = *(a1 + 16);
    if ((v35 & 0x90000) != 0)
    {
      v36 = 0;
      if (v29 && (v35 & 0x80000) == 0)
      {
        if (v13)
        {
          v37 = 0;
          while (*(v2 + (*(a1 + 36) & 0x7FFF) + v37) == *(v2 + ((*(a1 + 36) - 1) & 0x7FFF)))
          {
            if (v13 == ++v37)
            {
              goto LABEL_82;
            }
          }

          v30 = v37;
        }

        else
        {
          v30 = 0;
        }

LABEL_82:
        v36 = v30 > 2;
        if (v30 <= 2)
        {
          v32 = 0;
        }

        else
        {
          v32 = v30;
        }
      }
    }

    else
    {
      if (v32 < v13)
      {
        v38 = *(v87 + 4 * (v32 > 0x1F));
        v39 = v38 - 1;
        if (v38 != 1)
        {
          v36 = 0;
          v40 = *(v2 + v34 + v32);
          v41 = *(v2 + v34 + v32 - 1);
          LODWORD(v42) = *(a1 + 36) & 0x7FFF;
          v43 = v32;
LABEL_52:
          v44 = 1 - v39;
          while (1)
          {
            v45 = *(v6 + 2 * v42);
            if (!v45)
            {
              goto LABEL_85;
            }

            LOWORD(v46) = v33 - v45;
            if (v29 < (v33 - v45))
            {
              goto LABEL_85;
            }

            v42 = v45 & 0x7FFF;
            if (*(v2 + v43 + v42) == v40 && *(v2 + v43 + v42 - 1) == v41)
            {
              goto LABEL_67;
            }

            v47 = *(v6 + 2 * v42);
            if (!v47)
            {
              goto LABEL_85;
            }

            v48 = v33 - v47;
            if (v29 < (v33 - v47))
            {
              goto LABEL_85;
            }

            v49 = v47 & 0x7FFF;
            v50 = v43 + (v47 & 0x7FFF);
            if (*(v2 + v50) == v40 && *(v2 + v50 - 1) == v41)
            {
              break;
            }

            v51 = *(v6 + 2 * v49);
            if (!v51)
            {
              goto LABEL_85;
            }

            LOWORD(v46) = v33 - v51;
            if (v29 < (v33 - v51))
            {
              goto LABEL_85;
            }

            LODWORD(v42) = v51 & 0x7FFF;
            if (*(v2 + v43 + v42) == v40 && *(v2 + v43 + v42 - 1) == v41)
            {
LABEL_67:
              v46 = v46;
              if (!v46)
              {
                goto LABEL_85;
              }

LABEL_70:
              v52 = 0;
              while (*(v2 + v34 + v52) == *(v2 + v42 + v52))
              {
                if (v13 == ++v52)
                {
                  LODWORD(v52) = v13;
                  break;
                }
              }

              if (v52 > v43)
              {
                if (v52 == v13)
                {
                  v36 = v46;
                  v32 = v13;
                  goto LABEL_85;
                }

                v40 = *(v2 + (v52 + v34));
                v41 = *(v2 + (v52 + v34 - 1));
                v36 = v46;
                v32 = v52;
                v43 = v52;
              }

              v39 = -v44;
              if (v44)
              {
                goto LABEL_52;
              }

              goto LABEL_85;
            }

            if (++v44 == 1)
            {
              goto LABEL_85;
            }
          }

          v46 = v48;
          LODWORD(v42) = v49;
          if (!v46)
          {
            goto LABEL_85;
          }

          goto LABEL_70;
        }
      }

      v36 = 0;
    }

LABEL_85:
    v53 = (v36 & 0xFFFFE000) != 0 && v32 == 3;
    if (v53 || v34 == v36 || (v35 & 0x20000) != 0 && v32 < 6)
    {
      v54 = *(a1 + 84);
      v55 = *(a1 + 48);
      if (!v31)
      {
        goto LABEL_122;
      }

LABEL_93:
      v56 = *(a1 + 100);
      *(a1 + 84) = v54 + v31;
      *v55 = v31 - 3;
      v57 = (v56 - 1);
      *(*(a1 + 48) + 1) = v56 - 1;
      v58 = *(a1 + 56);
      *(a1 + 48) += 3;
      *v58 = (*v58 >> 1) | 0x80;
      v59 = *(a1 + 80) - 1;
      *(a1 + 80) = v59;
      if (!v59)
      {
        *(a1 + 80) = 8;
        v60 = *(a1 + 48);
        *(a1 + 48) = v60 + 1;
        *(a1 + 56) = v60;
      }

      if (v57 >= 0x200)
      {
        v61 = &unk_24BFBCA9E + ((v57 >> 8) & 0x7F);
      }

      else
      {
        v61 = &unk_24BFBC89E + (v57 & 0x1FF);
      }

      ++*(v9 + 2 * *v61);
      if (v31 >= 3)
      {
        v62 = word_24BFBCB1E[v31 - 3];
        ++*(v8 + 2 * v62);
      }

      v32 = *(a1 + 104) - 1;
      goto LABEL_101;
    }

    if (!v31)
    {
      if (v36)
      {
        if (*(a1 + 28) || (v35 & 0x10000) != 0 || v32 >= 0x80)
        {
          *(a1 + 84) += v32;
          **(a1 + 48) = v32 - 3;
          *(*(a1 + 48) + 1) = v36 - 1;
          v72 = *(a1 + 56);
          *(a1 + 48) += 3;
          *v72 = (*v72 >> 1) | 0x80;
          v73 = *(a1 + 80) - 1;
          *(a1 + 80) = v73;
          if (!v73)
          {
            *(a1 + 80) = 8;
            v74 = *(a1 + 48);
            *(a1 + 48) = v74 + 1;
            *(a1 + 56) = v74;
          }

          v75 = &unk_24BFBCA9E + (((v36 - 1) >> 8) & 0x7F);
          if (v36 < 0x201)
          {
            v75 = &unk_24BFBC89E + ((v36 - 1) & 0x1FF);
          }

          ++*(v9 + 2 * *v75);
          if (v32 >= 3)
          {
            v76 = word_24BFBCB1E[v32 - 3];
            ++*(v8 + 2 * v76);
          }

          goto LABEL_126;
        }

LABEL_137:
        v85 = *(v2 + v34);
        *(a1 + 104) = v32;
        *(a1 + 108) = v85;
        *(a1 + 100) = v36;
      }

      else
      {
        v54 = *(a1 + 84);
        v55 = *(a1 + 48);
LABEL_122:
        v77 = *(v2 + v34);
        *(a1 + 84) = v54 + 1;
        *(a1 + 48) = v55 + 1;
        *v55 = v77;
        **(a1 + 56) >>= 1;
        v78 = *(a1 + 80) - 1;
        *(a1 + 80) = v78;
        if (!v78)
        {
          *(a1 + 80) = 8;
          v79 = *(a1 + 48);
          *(a1 + 48) = v79 + 1;
          *(a1 + 56) = v79;
        }

        ++*(v8 + 2 * v77);
      }

      v32 = 1;
      goto LABEL_126;
    }

    v54 = *(a1 + 84);
    v55 = *(a1 + 48);
    if (v32 <= v31)
    {
      goto LABEL_93;
    }

    v63 = *(a1 + 108);
    *(a1 + 84) = v54 + 1;
    *(a1 + 48) = v55 + 1;
    *v55 = v63;
    **(a1 + 56) >>= 1;
    v64 = *(a1 + 80) - 1;
    *(a1 + 80) = v64;
    if (!v64)
    {
      *(a1 + 80) = 8;
      v65 = *(a1 + 48);
      *(a1 + 48) = v65 + 1;
      *(a1 + 56) = v65;
    }

    ++*(v8 + 2 * v63);
    if (v32 < 0x80)
    {
      goto LABEL_137;
    }

    *(a1 + 84) += v32;
    **(a1 + 48) = v32 - 3;
    v66 = v36 - 1;
    *(*(a1 + 48) + 1) = v36 - 1;
    v67 = *(a1 + 56);
    *(a1 + 48) += 3;
    *v67 = (*v67 >> 1) | 0x80;
    v68 = *(a1 + 80) - 1;
    *(a1 + 80) = v68;
    if (!v68)
    {
      *(a1 + 80) = 8;
      v69 = *(a1 + 48);
      *(a1 + 48) = v69 + 1;
      *(a1 + 56) = v69;
    }

    if (v66 >= 0x200)
    {
      v70 = &unk_24BFBCA9E + ((v66 >> 8) & 0x7F);
    }

    else
    {
      v70 = &unk_24BFBC89E + (v66 & 0x1FF);
    }

    ++*(v9 + 2 * *v70);
    v71 = word_24BFBCB1E[v32 - 3];
    ++*(v8 + 2 * v71);
LABEL_101:
    *(a1 + 104) = 0;
LABEL_126:
    v80 = *(a1 + 40) - v32;
    *(a1 + 36) += v32;
    *(a1 + 40) = v80;
    v81 = *(a1 + 44) + v32;
    if (v81 >= 0x8000)
    {
      v81 = 0x8000;
    }

    *(a1 + 44) = v81;
    v82 = *(a1 + 48);
    if (v82 <= v89)
    {
      v84 = *(a1 + 84);
      if (v84 < 0x7C01 || v84 > (115 * (v82 - v88)) >> 7 && (*(a1 + 18) & 8) == 0)
      {
        continue;
      }
    }

    *(a1 + 176) = v4;
    *(a1 + 184) = v5;
    v83 = sub_24BC826AC(a1, 0);
    if (v83)
    {
      return v83 >= 0;
    }
  }

  v5 = 0;
LABEL_140:
  *(a1 + 176) = v4;
  *(a1 + 184) = v5;
  return 1;
}

uint64_t sub_24BC826AC(uint64_t a1, int a2)
{
  v4 = (*(a1 + 18) & 8) != 0 && (*(a1 + 36) - *(a1 + 88)) <= *(a1 + 44);
  if (*a1 || (v5 = *(a1 + 192), (**(a1 + 160) - v5) < 0x14CCC))
  {
    v6 = a1 + 234154;
  }

  else
  {
    v6 = *(a1 + 144) + v5;
  }

  *(a1 + 64) = v6;
  *(a1 + 72) = v6 + 85180;
  *(a1 + 112) = 0;
  **(a1 + 56) = **(a1 + 56) >> *(a1 + 80);
  *(a1 + 48) -= *(a1 + 80) == 8;
  if ((*(a1 + 17) & 0x10) != 0 && !*(a1 + 124))
  {
    v7 = *(a1 + 92);
    v8 = *(a1 + 96) | (120 << v7);
    v9 = v7 + 8;
    *(a1 + 92) = v7 + 8;
    *(a1 + 96) = v8;
    if (v7 <= 0xFFFFFFF7)
    {
      do
      {
        v10 = *(a1 + 64);
        if (v10 < *(a1 + 72))
        {
          *(a1 + 64) = v10 + 1;
          *v10 = v8;
          v9 = *(a1 + 92);
          v8 = *(a1 + 96);
        }

        v8 >>= 8;
        v9 -= 8;
        *(a1 + 92) = v9;
        *(a1 + 96) = v8;
      }

      while (v9 > 7);
    }

    v11 = v8 | (1 << v9);
    v12 = v9 | 8;
    *(a1 + 92) = v12;
    *(a1 + 96) = v11;
    do
    {
      v13 = *(a1 + 64);
      if (v13 < *(a1 + 72))
      {
        *(a1 + 64) = v13 + 1;
        *v13 = v11;
        v12 = *(a1 + 92);
        v11 = *(a1 + 96);
      }

      v11 >>= 8;
      v12 -= 8;
      *(a1 + 92) = v12;
      *(a1 + 96) = v11;
    }

    while (v12 > 7);
  }

  v14 = *(a1 + 92);
  v15 = *(a1 + 96) | ((a2 == 4) << v14);
  v16 = v14 + 1;
  *(a1 + 92) = v14 + 1;
  *(a1 + 96) = v15;
  if ((v14 + 1) >= 8)
  {
    do
    {
      v17 = *(a1 + 64);
      if (v17 < *(a1 + 72))
      {
        *(a1 + 64) = v17 + 1;
        *v17 = v15;
        v16 = *(a1 + 92);
        v15 = *(a1 + 96);
      }

      v15 >>= 8;
      v16 -= 8;
      *(a1 + 92) = v16;
      *(a1 + 96) = v15;
    }

    while (v16 > 7);
  }

  v18 = *(a1 + 64);
  if (v4)
  {
    v19 = 1;
  }

  else
  {
    v20 = (*(a1 + 18) & 4) != 0 || *(a1 + 84) < 0x30u;
    v19 = !sub_24BC8CAE0(a1, v20);
    v21 = *(a1 + 84);
    if (!v21 || *(a1 + 64) - v18 + 1 < v21)
    {
LABEL_30:
      if (v19)
      {
        *(a1 + 64) = v18;
        *(a1 + 92) = v16;
        *(a1 + 96) = v15;
        sub_24BC8CAE0(a1, 1);
      }

      goto LABEL_54;
    }
  }

  if ((*(a1 + 36) - *(a1 + 88)) > *(a1 + 44))
  {
    goto LABEL_30;
  }

  *(a1 + 64) = v18;
  v22 = v16 + 2;
  *(a1 + 92) = v16 + 2;
  *(a1 + 96) = v15;
  if (v16 < 6)
  {
    goto LABEL_37;
  }

  do
  {
    v23 = *(a1 + 64);
    if (v23 < *(a1 + 72))
    {
      *(a1 + 64) = v23 + 1;
      *v23 = v15;
      v22 = *(a1 + 92);
      v15 = *(a1 + 96);
    }

    v15 >>= 8;
    v22 -= 8;
    *(a1 + 92) = v22;
    *(a1 + 96) = v15;
  }

  while (v22 > 7);
  if (v22)
  {
LABEL_37:
    v22 = 8;
    *(a1 + 92) = 8;
    do
    {
      v24 = *(a1 + 64);
      if (v24 < *(a1 + 72))
      {
        *(a1 + 64) = v24 + 1;
        *v24 = v15;
        v22 = *(a1 + 92);
        v15 = *(a1 + 96);
      }

      v15 >>= 8;
      v22 -= 8;
      *(a1 + 92) = v22;
      *(a1 + 96) = v15;
    }

    while (v22 > 7);
  }

  v25 = *(a1 + 84);
  v26 = 2;
  do
  {
    v15 |= v25 << v22;
    v22 += 16;
    *(a1 + 92) = v22;
    *(a1 + 96) = v15;
    do
    {
      v27 = *(a1 + 64);
      if (v27 < *(a1 + 72))
      {
        *(a1 + 64) = v27 + 1;
        *v27 = v15;
        v22 = *(a1 + 92);
        v15 = *(a1 + 96);
      }

      v15 >>= 8;
      v22 -= 8;
      *(a1 + 92) = v22;
      *(a1 + 96) = v15;
    }

    while (v22 > 7);
    v28 = *(a1 + 84);
    v25 = ~v28;
    *(a1 + 84) = v28 ^ 0xFFFF;
    --v26;
  }

  while (v26);
  if (v28 != 0xFFFF)
  {
    v29 = 0;
    do
    {
      v15 |= *(a1 + 200 + ((*(a1 + 88) + v29) & 0x7FFF)) << v22;
      v22 += 8;
      *(a1 + 92) = v22;
      *(a1 + 96) = v15;
      do
      {
        v30 = *(a1 + 64);
        if (v30 < *(a1 + 72))
        {
          *(a1 + 64) = v30 + 1;
          *v30 = v15;
          v22 = *(a1 + 92);
          v15 = *(a1 + 96);
        }

        v15 >>= 8;
        v22 -= 8;
        *(a1 + 92) = v22;
        *(a1 + 96) = v15;
      }

      while (v22 > 7);
      ++v29;
    }

    while (v29 < *(a1 + 84));
  }

LABEL_54:
  if (a2)
  {
    v31 = *(a1 + 92);
    if (a2 == 4)
    {
      if (v31)
      {
        v31 = 8;
        *(a1 + 92) = 8;
        v32 = *(a1 + 96);
        do
        {
          v33 = *(a1 + 64);
          if (v33 < *(a1 + 72))
          {
            *(a1 + 64) = v33 + 1;
            *v33 = v32;
            v31 = *(a1 + 92);
            v32 = *(a1 + 96);
          }

          v32 >>= 8;
          v31 -= 8;
          *(a1 + 92) = v31;
          *(a1 + 96) = v32;
        }

        while (v31 > 7);
      }

      if ((*(a1 + 17) & 0x10) != 0)
      {
        v34 = 0;
        v35 = *(a1 + 32);
        v36 = *(a1 + 96);
        do
        {
          v36 |= HIBYTE(v35) << v31;
          v31 += 8;
          *(a1 + 92) = v31;
          *(a1 + 96) = v36;
          do
          {
            v37 = *(a1 + 64);
            if (v37 < *(a1 + 72))
            {
              *(a1 + 64) = v37 + 1;
              *v37 = v36;
              v31 = *(a1 + 92);
              v36 = *(a1 + 96);
            }

            v36 >>= 8;
            v31 -= 8;
            *(a1 + 92) = v31;
            *(a1 + 96) = v36;
          }

          while (v31 > 7);
          v35 <<= 8;
          ++v34;
        }

        while (v34 != 4);
      }
    }

    else
    {
      v38 = v31 + 3;
      *(a1 + 92) = v31 + 3;
      v39 = *(a1 + 96);
      if (v38 >= 8)
      {
        do
        {
          v40 = *(a1 + 64);
          if (v40 < *(a1 + 72))
          {
            *(a1 + 64) = v40 + 1;
            *v40 = v39;
            v38 = *(a1 + 92);
            v39 = *(a1 + 96);
          }

          v39 >>= 8;
          v38 -= 8;
          *(a1 + 92) = v38;
          *(a1 + 96) = v39;
        }

        while (v38 > 7);
      }

      if (v38)
      {
        v38 = 8;
        *(a1 + 92) = 8;
        do
        {
          v41 = *(a1 + 64);
          if (v41 < *(a1 + 72))
          {
            *(a1 + 64) = v41 + 1;
            *v41 = v39;
            v38 = *(a1 + 92);
            v39 = *(a1 + 96);
          }

          v39 >>= 8;
          v38 -= 8;
          *(a1 + 92) = v38;
          *(a1 + 96) = v39;
        }

        while (v38 > 7);
      }

      v42 = 0;
      v43 = 2;
      do
      {
        v39 |= v42 << v38;
        v38 += 16;
        *(a1 + 92) = v38;
        *(a1 + 96) = v39;
        do
        {
          v44 = *(a1 + 64);
          if (v44 < *(a1 + 72))
          {
            *(a1 + 64) = v44 + 1;
            *v44 = v39;
            v38 = *(a1 + 92);
            v39 = *(a1 + 96);
          }

          v39 >>= 8;
          v38 -= 8;
          *(a1 + 92) = v38;
          *(a1 + 96) = v39;
        }

        while (v38 > 7);
        v42 = ~v42;
        --v43;
      }

      while (v43);
    }
  }

  bzero((a1 + 33226), 0x280uLL);
  *(a1 + 48) = a1 + 37547;
  *(a1 + 56) = a1 + 37546;
  *(a1 + 88) += *(a1 + 84);
  *(a1 + 80) = 8;
  ++*(a1 + 124);
  v45 = *(a1 + 64);
  v46 = v45 - v6;
  if (v45 != v6)
  {
    v47 = *a1;
    if (*a1)
    {
      **(a1 + 152) = *(a1 + 176) - *(a1 + 136);
      if (!v47(a1 + 234154, v46, *(a1 + 8)))
      {
        result = 0xFFFFFFFFLL;
        *(a1 + 132) = -1;
        return result;
      }
    }

    else if (v6 == a1 + 234154)
    {
      v49 = *(a1 + 192);
      if (v46 >= (**(a1 + 160) - v49))
      {
        v50 = **(a1 + 160) - v49;
      }

      else
      {
        LODWORD(v50) = v46;
      }

      memcpy((*(a1 + 144) + v49), (a1 + 234154), v50);
      *(a1 + 192) += v50;
      if (v46 != v50)
      {
        *(a1 + 112) = v50;
        *(a1 + 116) = v46 - v50;
      }
    }

    else
    {
      *(a1 + 192) += v46;
    }
  }

  return *(a1 + 116);
}

BOOL sub_24BC82D24(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a2)
  {
    v5 = a1 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5 || a3 == 0)
  {
    return 0;
  }

  v12 = malloc_type_malloc(0x4DF78uLL, 0x10D00400C0B6517uLL);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  sub_24BC7F4B4(v12, a3, a4, a5);
  v16 = a2;
  v14 = sub_24BC7F79C(v13, a1, &v16, 0, 0, 4) == 1;
  free(v13);
  return v14;
}

uint64_t sub_24BC82DEC(unsigned __int8 *a1, uint64_t a2, void *a3, unsigned int a4)
{
  v6 = 0u;
  v7 = 0u;
  if (!a3)
  {
    return 0;
  }

  *a3 = 0;
  DWORD2(v7) = 1;
  if (!sub_24BC82D24(a1, a2, sub_24BC82E60, &v6, a4))
  {
    return 0;
  }

  result = v7;
  *a3 = v6;
  return result;
}

uint64_t sub_24BC82E60(const void *a1, int a2, size_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *a3 + a2;
  if (v8 <= v7)
  {
    result = a3[2];
    goto LABEL_10;
  }

  if (!*(a3 + 6))
  {
    return 0;
  }

  do
  {
    if (2 * v7 <= 0x80)
    {
      v7 = 128;
    }

    else
    {
      v7 *= 2;
    }
  }

  while (v8 > v7);
  result = malloc_type_realloc(a3[2], v7, 0x100004077774924uLL);
  if (result)
  {
    a3[1] = v7;
    a3[2] = result;
    v6 = *a3;
LABEL_10:
    memcpy((result + v6), a1, a2);
    *a3 = v8;
    return 1;
  }

  return result;
}

uint64_t sub_24BC82F18(uint64_t result, uint64_t a2, unsigned __int8 *a3, uint64_t a4, unsigned int a5)
{
  v5 = 0u;
  v6 = 0u;
  if (result)
  {
    *(&v5 + 1) = a2;
    *&v6 = result;
    if (sub_24BC82D24(a3, a4, sub_24BC82E60, &v5, a5))
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_24BC82F74(uint64_t a1, int a2, int a3, int a4, void *a5, unsigned int a6, int a7)
{
  v41 = *MEMORY[0x277D85DE8];
  result = malloc_type_malloc(0x4DF78uLL, 0x10D00400C0B6517uLL);
  *a5 = 0;
  if (result)
  {
    v15 = result;
    v16 = a4 * a2;
    v37 = 0u;
    *v38 = 0u;
    LODWORD(v38[1]) = 1;
    v17 = a3 + a3 * a4 * a2;
    if (v17 <= 64)
    {
      v17 = 64;
    }

    *(&v37 + 1) = (v17 + 57);
    v38[0] = malloc_type_malloc(*(&v37 + 1), 0x100004077774924uLL);
    if (v38[0])
    {
      v35 = a5;
      v36 = 41;
      for (i = 40; i != -1; --i)
      {
        sub_24BC82E60(&v36, 1, &v37);
        v36 = i;
      }

      if (a6 >= 0xA)
      {
        v19 = 10;
      }

      else
      {
        v19 = a6;
      }

      sub_24BC7F4B4(v15, sub_24BC82E60, &v37, dword_24BFBC85C[v19] | 0x1000);
      v20 = a3 - 1;
      if (a3 >= 1)
      {
        v21 = 0;
        do
        {
          *&v39 = 1;
          sub_24BC7F79C(v15, &v36, &v39, 0, 0, 0);
          if (a7)
          {
            v22 = v20;
          }

          else
          {
            v22 = v21;
          }

          *&v39 = v16;
          sub_24BC7F79C(v15, (a1 + v22 * v16), &v39, 0, 0, 0);
          ++v21;
          --v20;
        }

        while (v20 != -1);
      }

      *&v39 = 0;
      if (sub_24BC7F79C(v15, 0, &v39, 0, 0, 4) == 1)
      {
        v23 = v37 - 41;
        *v35 = v37 - 41;
        v39 = xmmword_24BFBC5F0;
        *v40 = 0;
        v40[2] = BYTE1(a2);
        v40[3] = a2;
        *&v40[4] = 0;
        v40[6] = BYTE1(a3);
        v40[7] = a3;
        v24 = byte_24BFBC888[a4];
        v40[8] = 8;
        v40[9] = v24;
        *&v40[10] = 0;
        *&v40[13] = 0;
        v40[17] = HIBYTE(v23);
        v40[18] = BYTE2(v23);
        v40[19] = BYTE1(v23);
        v40[20] = v23;
        v25 = -1;
        v26 = 12;
        *&v40[21] = 1413563465;
        do
        {
          v27 = v40[v26 - 16];
          v28 = dword_24BFBC618[(v25 ^ v27) & 0xF] ^ (v25 >> 4);
          v25 = dword_24BFBC618[v28 & 0xF ^ (v27 >> 4)] ^ (v28 >> 4);
          ++v26;
        }

        while (v26 != 29);
        v29 = ~v25;
        do
        {
          v40[v26 - 16] = HIBYTE(v29);
          v29 <<= 8;
          ++v26;
        }

        while (v26 != 33);
        v30 = v38[0];
        *v38[0] = v39;
        v30[1] = *v40;
        *(v30 + 25) = *&v40[9];
        if (sub_24BC82E60(&unk_24BFBC88D, 16, &v37))
        {
          v31 = sub_24BC7F298(0, v38[0] + 37, *v35 + 4);
          for (j = -16; j != -12; ++j)
          {
            *(v38[0] + v37 + j) = HIBYTE(v31);
            v31 <<= 8;
          }

          *v35 += 57;
          free(v15);
          result = v38[0];
          goto LABEL_29;
        }

        *v35 = 0;
      }

      free(v15);
      v33 = v38[0];
    }

    else
    {
      v33 = v15;
    }

    free(v33);
    result = 0;
  }

LABEL_29:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BC8331C(unsigned int a1, int a2, int a3, int a4)
{
  if (a3 == 1)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  if (a3 == 2)
  {
    return a1 + a4 * a2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_24BC83334(char *__filename, void **a2, _DWORD *a3, char **a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v8 = sub_24BC835D8(v23, __filename);
  if (v8)
  {
    sub_24BC836D4(&__p, "Invalid EXR header.");
    v9 = SHIBYTE(v22);
    if (a4)
    {
      if (v22 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *a4 = strdup(p_p);
    }

    if (v9 < 0)
    {
      operator delete(__p);
    }
  }

  else if (v24)
  {
    sub_24BC836D4(&__p, "Loading multipart or DeepImage is not supported  in LoadEXR() API");
    v11 = SHIBYTE(v22);
    if (a4)
    {
      if (v22 >= 0)
      {
        v12 = &__p;
      }

      else
      {
        v12 = __p;
      }

      *a4 = strdup(v12);
    }

    if (v11 < 0)
    {
      operator delete(__p);
    }

    v8 = 4294967292;
  }

  else
  {
    v8 = sub_24BC8378C(v26, v23, __filename, a4);
    if (v8)
    {
      sub_24BC83A20(v26);
    }

    else
    {
      __p = 0;
      v21 = 0;
      v22 = 0;
      sub_24BC83AEC(v26, &__p);
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v21 - __p) >> 3);
      *a3 = v13;
      *a2 = malloc_type_malloc(8 * v13, 0x50040EE9192B6uLL);
      v14 = __p;
      if (v21 != __p)
      {
        v15 = 0;
        v16 = 0;
        do
        {
          v17 = &v14[v15];
          if (v14[v15 + 23] < 0)
          {
            v17 = *v17;
          }

          *(*a2 + v16++) = strdup(v17);
          v14 = __p;
          v15 += 24;
        }

        while (v16 < 0xAAAAAAAAAAAAAAABLL * ((v21 - __p) >> 3));
      }

      sub_24BC83A20(v26);
      v25 = &__p;
      sub_24BC955F4(&v25);
      v8 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_24BC83578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_24BC955F4(va);
  _Unwind_Resume(a1);
}

double sub_24BC83598(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 384) = 0;
    result = 0.0;
    *(a1 + 352) = 0u;
    *(a1 + 368) = 0u;
    *(a1 + 320) = 0u;
    *(a1 + 336) = 0u;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_24BC835D8(uint64_t a1, char *__filename)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (__filename)
  {
    v3 = fopen(__filename, "rb");
    if (v3)
    {
      v4 = v3;
      fseek(v3, 0, 2);
      v5 = MEMORY[0x24C254C50](v4);
      fseek(v4, 0, 0);
      if (v5 >= 8 && (v6 = fread(v9, 1uLL, 8uLL, v4), fclose(v4), v6 == 8))
      {
        result = sub_24BC86F6C(a1, v9, 8uLL);
      }

      else
      {
        result = 4294967291;
      }
    }

    else
    {
      result = 4294967289;
    }
  }

  else
  {
    result = 4294967293;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_24BC836D4(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24BC8DF40();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_24BC8378C(int8x8_t *a1, uint64_t a2, char *__filename, char **a4)
{
  if (a1 && a2 && __filename)
  {
    v8 = fopen(__filename, "rb");
    if (v8)
    {
      v9 = v8;
      fseek(v8, 0, 2);
      v10 = MEMORY[0x24C254C50](v9);
      fseek(v9, 0, 0);
      sub_24BC94EB0(&__ptr, v10);
      v11 = fread(__ptr.__r_.__value_.__l.__data_, 1uLL, v10, v9);
      fclose(v9);
      if (v11 == v10)
      {
        if (__ptr.__r_.__value_.__l.__size_ == __ptr.__r_.__value_.__r.__words[0])
        {
          sub_24BC923C0();
        }

        v12 = sub_24BC8509C(a1, a2, __ptr.__r_.__value_.__l.__data_, v10, a4);
      }

      else
      {
        sub_24BC836D4(&v22, __filename);
        v18 = std::string::insert(&v22, 0, "fread() error on ");
        v23 = *v18;
        v18->__r_.__value_.__l.__size_ = 0;
        v18->__r_.__value_.__r.__words[2] = 0;
        v18->__r_.__value_.__r.__words[0] = 0;
        v19 = SHIBYTE(v23.__r_.__value_.__r.__words[2]);
        if (a4)
        {
          if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = &v23;
          }

          else
          {
            v20 = v23.__r_.__value_.__r.__words[0];
          }

          *a4 = strdup(v20);
        }

        if (v19 < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        v12 = 4294967291;
      }

      if (__ptr.__r_.__value_.__r.__words[0])
      {
        __ptr.__r_.__value_.__l.__size_ = __ptr.__r_.__value_.__r.__words[0];
        operator delete(__ptr.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      sub_24BC836D4(&v23, __filename);
      v15 = std::string::insert(&v23, 0, "Cannot read file ");
      __ptr = *v15;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      v16 = SHIBYTE(__ptr.__r_.__value_.__r.__words[2]);
      if (a4)
      {
        if ((__ptr.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_ptr = &__ptr;
        }

        else
        {
          p_ptr = __ptr.__r_.__value_.__r.__words[0];
        }

        *a4 = strdup(p_ptr);
      }

      if (v16 < 0)
      {
        operator delete(__ptr.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      return 4294967289;
    }
  }

  else
  {
    sub_24BC836D4(&__ptr, "Invalid argument for ParseEXRHeaderFromFile");
    v13 = SHIBYTE(__ptr.__r_.__value_.__r.__words[2]);
    if (a4)
    {
      if ((__ptr.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &__ptr;
      }

      else
      {
        v14 = __ptr.__r_.__value_.__r.__words[0];
      }

      *a4 = strdup(v14);
    }

    if (v13 < 0)
    {
      operator delete(__ptr.__r_.__value_.__l.__data_);
    }

    return 4294967293;
  }

  return v12;
}

void sub_24BC839D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BC83A20(uint64_t a1)
{
  if (!a1)
  {
    return 4294967293;
  }

  v2 = *(a1 + 104);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    free(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    free(v4);
  }

  v5 = *(a1 + 92);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 512;
    do
    {
      v8 = *(*(a1 + 96) + v7);
      if (v8)
      {
        free(v8);
        v5 = *(a1 + 92);
      }

      ++v6;
      v7 += 528;
    }

    while (v6 < v5);
  }

  v9 = *(a1 + 96);
  if (v9)
  {
    free(v9);
  }

  result = 0;
  *(a1 + 136) = 0u;
  v11 = (a1 + 136);
  v11[14] = 0u;
  v11[15] = 0u;
  v11[12] = 0u;
  v11[13] = 0u;
  v11[10] = 0u;
  v11[11] = 0u;
  v11[8] = 0u;
  v11[9] = 0u;
  v11[6] = 0u;
  v11[7] = 0u;
  v11[4] = 0u;
  v11[5] = 0u;
  v11[2] = 0u;
  v11[3] = 0u;
  v11[1] = 0u;
  return result;
}

void sub_24BC83AEC(uint64_t a1, void ***a2)
{
  sub_24BC8DC58(a2);
  if (*(a1 + 120) >= 1)
  {
    v4 = 0;
    do
    {
      sub_24BC836D4(&v14, (*(a1 + 104) + 272 * v4));
      v5 = std::string::rfind(&v14, 46, 0xFFFFFFFFFFFFFFFFLL);
      if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
        if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v14.__r_.__value_.__l.__size_;
        }

        if (v5 + 1 < size)
        {
          std::string::erase(&v14, v5, 0xFFFFFFFFFFFFFFFFLL);
          v7 = *a2;
          v8 = a2[1];
          if (*a2 != v8)
          {
            if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v9 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v9 = v14.__r_.__value_.__l.__size_;
            }

            if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v10 = &v14;
            }

            else
            {
              v10 = v14.__r_.__value_.__r.__words[0];
            }

            while (1)
            {
              v11 = *(v7 + 23);
              v12 = v11;
              if (v11 < 0)
              {
                v11 = v7[1];
              }

              if (v11 == v9)
              {
                v13 = v12 >= 0 ? v7 : *v7;
                if (!memcmp(v13, v10, v9))
                {
                  break;
                }
              }

              v7 += 3;
              if (v7 == v8)
              {
                goto LABEL_24;
              }
            }
          }

          if (v7 == v8)
          {
LABEL_24:
            sub_24BC8DCA8(a2, &v14);
          }
        }
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      ++v4;
    }

    while (v4 < *(a1 + 120));
  }
}

void sub_24BC83C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BC83C7C(float32x4_t **a1, _DWORD *a2, _DWORD *a3, char *__filename, char *a5, char **a6)
{
  v161 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    sub_24BC836D4(v136, "Invalid argument for LoadEXR()");
    v18 = SBYTE7(v137);
    if (a6)
    {
      if ((SBYTE7(v137) & 0x80u) == 0)
      {
        v19 = v136;
      }

      else
      {
        v19 = v136[0];
      }

      *a6 = strdup(v19);
    }

    if (v18 < 0)
    {
      operator delete(v136[0]);
    }

    v12 = 4294967293;
    goto LABEL_38;
  }

  v11 = a1;
  v160 = 0;
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  *v136 = 0u;
  v137 = 0u;
  v129 = 0u;
  v130 = 0u;
  v128 = 0u;
  v12 = sub_24BC835D8(v131, __filename);
  if (v12)
  {
    sub_24BC848F0(v124);
    v13 = sub_24BC95264(&v124[16], "Failed to open EXR file or read version info from EXR file. code(", 65);
    v14 = MEMORY[0x24C2543C0](v13, v12);
    sub_24BC95264(v14, ")", 1);
    std::stringbuf::str();
    v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (a6)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *a6 = strdup(p_p);
    }

    if (v15 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *v124 = *MEMORY[0x277D82818];
    v17 = *(MEMORY[0x277D82818] + 72);
    *&v124[*(*v124 - 24)] = *(MEMORY[0x277D82818] + 64);
    *&v124[16] = v17;
    *&v124[24] = MEMORY[0x277D82878] + 16;
    if (v126 < 0)
    {
      operator delete(v125[7].__locale_);
    }

    *&v124[24] = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v125);
    std::iostream::~basic_iostream();
    MEMORY[0x24C2547D0](&v127);
    goto LABEL_38;
  }

  if (v132)
  {
    sub_24BC836D4(v124, "Loading multipart or DeepImage is not supported  in LoadEXR() API");
    v20 = v124[23];
    if (a6)
    {
      if (v124[23] >= 0)
      {
        v21 = v124;
      }

      else
      {
        v21 = *v124;
      }

      *a6 = strdup(v21);
    }

    if (v20 < 0)
    {
      operator delete(*v124);
    }

    v12 = 4294967292;
    goto LABEL_38;
  }

  v12 = sub_24BC8378C(v136, v131, __filename, a6);
  if (v12)
  {
    goto LABEL_37;
  }

  v22 = DWORD2(v143);
  if (SDWORD2(v143) >= 1)
  {
    v23 = 0;
    v24 = v143;
    v25 = v144;
    do
    {
      if (*(v24 + 4 * v23) == 1)
      {
        *(v25 + 4 * v23) = 2;
        v22 = DWORD2(v143);
      }

      ++v23;
    }

    while (v23 < v22);
  }

  v12 = sub_24BC84CE8(&v128, v136, __filename, a6);
  if (v12)
  {
LABEL_37:
    sub_24BC83A20(v136);
    goto LABEL_38;
  }

  memset(v123, 0, sizeof(v123));
  sub_24BC83AEC(v136, v123);
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v114 = a2;
  v115 = a3;
  if (a5)
  {
    sub_24BC836D4(&v117, a5);
  }

  else
  {
    sub_24BC836D4(&v117, &unk_24C0435AF);
  }

  v28 = v120;
  for (i = v121; i != v28; i -= 4)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 3));
    }
  }

  v121 = v28;
  if (SDWORD2(v143) >= 1)
  {
    v30 = 0;
    v116 = v11;
    while (1)
    {
      sub_24BC836D4(&__p, (*(&v142 + 1) + 272 * v30));
      v31 = v119;
      if ((v119 & 0x80u) != 0)
      {
        v31 = v118;
      }

      if (!v31)
      {
        v40 = std::string::rfind(&__p, 46, 0xFFFFFFFFFFFFFFFFLL);
        if (v40 != -1)
        {
          v41 = v40;
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          if (v40 < size)
          {
LABEL_89:
            std::string::basic_string(v124, &__p, v41 + 1, 0xFFFFFFFFFFFFFFFFLL, &v135);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            __p = *v124;
          }
        }

LABEL_92:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_24BC8DE9C(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          __dst = __p;
        }

        *v124 = v30;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_24BC8DE9C(&v124[8], __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          *&v124[8] = __dst;
        }

        sub_24BC8E204(&v120, v124);
        if ((v124[31] & 0x80000000) != 0)
        {
          operator delete(*&v124[8]);
        }

        goto LABEL_101;
      }

      sub_24BC8E170(&v117, 46, v124);
      v32 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &__p;
      }

      else
      {
        v33 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v32 = __p.__r_.__value_.__l.__size_;
      }

      v34 = v124[23];
      v35 = *v124;
      v36 = v124[23] >= 0 ? v124 : *v124;
      v37 = v124[23] >= 0 ? v124[23] : *&v124[8];
      if (!v37)
      {
        break;
      }

      v38 = v33 + v32;
      if (v32 >= v37)
      {
        v44 = *v36;
        v45 = v33;
        do
        {
          v46 = v32 - v37;
          if (v46 == -1)
          {
            break;
          }

          v47 = memchr(v45, v44, v46 + 1);
          if (!v47)
          {
            break;
          }

          v39 = v47;
          if (!memcmp(v47, v36, v37))
          {
            goto LABEL_79;
          }

          v45 = (v39 + 1);
          v32 = v38 - (v39 + 1);
        }

        while (v32 >= v37);
        v39 = v38;
LABEL_79:
        v11 = v116;
      }

      else
      {
        v39 = v33 + v32;
      }

      if (v39 == v38)
      {
        v43 = -1;
      }

      else
      {
        v43 = v39 - v33;
      }

      if (v34 < 0)
      {
        goto LABEL_84;
      }

LABEL_85:
      if (v43 != -1)
      {
        if (!v43)
        {
          v41 = v119;
          if ((v119 & 0x80u) != 0)
          {
            v41 = v118;
          }

          goto LABEL_89;
        }

        goto LABEL_92;
      }

LABEL_101:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (++v30 >= SDWORD2(v143))
      {
        goto LABEL_104;
      }
    }

    v43 = 0;
    if ((v124[23] & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

LABEL_84:
    operator delete(v35);
    goto LABEL_85;
  }

LABEL_104:
  if (v119 < 0)
  {
    operator delete(v117);
  }

  v48 = v121 - v120;
  if (v121 == v120)
  {
    sub_24BC836D4(v124, "Layer Not Found");
    v79 = v124[23];
    if (a6)
    {
      if (v124[23] >= 0)
      {
        v80 = v124;
      }

      else
      {
        v80 = *v124;
      }

      *a6 = strdup(v80);
    }

    if (v79 < 0)
    {
      operator delete(*v124);
    }

    v12 = 4294967283;
    goto LABEL_190;
  }

  v49 = v48 >> 5;
  if ((v48 >> 5) >= 4)
  {
    v49 = 4;
  }

  if (v49 <= 1)
  {
    v49 = 1;
  }

  v50 = v120 + 2;
  v51 = -1;
  v52 = -1;
  v53 = -1;
  v54 = -1;
  do
  {
    v55 = (v50 - 1);
    v56 = *(v50 + 15);
    if ((v56 & 0x80000000) == 0)
    {
      if (v56 != 1)
      {
        goto LABEL_131;
      }

      v57 = *v55;
      switch(v57)
      {
        case 'B':
          goto LABEL_126;
        case 'G':
          goto LABEL_123;
        case 'R':
          goto LABEL_120;
      }

      goto LABEL_129;
    }

    if (*v50 == 1 && **v55 == 82)
    {
LABEL_120:
      v51 = *(v50 - 4);
      goto LABEL_131;
    }

    if (*v50 == 1 && **v55 == 71)
    {
LABEL_123:
      v52 = *(v50 - 4);
      goto LABEL_131;
    }

    if (*v50 == 1 && **v55 == 66)
    {
LABEL_126:
      v53 = *(v50 - 4);
      goto LABEL_131;
    }

    if (*v50 == 1)
    {
      v55 = *v55;
LABEL_129:
      if (*v55 == 65)
      {
        v54 = *(v50 - 4);
      }
    }

LABEL_131:
    v50 += 4;
    --v49;
  }

  while (v49);
  if (v48 == 32)
  {
    v58 = *v120;
    v59 = malloc_type_malloc(16 * v130 * SDWORD1(v130), 0x100004052888210uLL);
    *v11 = v59;
    if (DWORD2(v139))
    {
      v60 = HIDWORD(v130);
      if (SHIDWORD(v130) >= 1)
      {
        v61 = 0;
        v62 = v140;
        v63 = HIDWORD(v139);
        v64 = HIDWORD(v139);
        v65 = 4 * SHIDWORD(v139);
        v66 = &v59->i8[8];
        do
        {
          if (v62 >= 1)
          {
            v67 = 0;
            v68 = 0;
            v69 = (v128 + 32 * v61);
            v70 = v130;
            do
            {
              if (v63 >= 1)
              {
                v71 = *v69 * v64;
                v72 = v69[1] * v62 + v68;
                v73 = &v66[16 * v71 + 16 * v70 * v72];
                v74 = v63;
                v75 = v67;
                do
                {
                  if (v71 < v70 && v72 < SDWORD1(v130))
                  {
                    v76 = *(*(v69 + 3) + 8 * v58);
                    v77 = *(v76 + v75);
                    *(v73 - 2) = v77;
                    *(v73 - 1) = v77;
                    v78 = *(v76 + v75);
                    *v73 = v78;
                    *(v73 + 1) = v78;
                  }

                  v75 += 4;
                  ++v71;
                  v73 += 16;
                  --v74;
                }

                while (v74);
              }

              ++v68;
              v67 += v65;
            }

            while (v68 != v62);
          }

          ++v61;
        }

        while (v61 != v60);
      }
    }

    else
    {
      v100 = (DWORD1(v130) * v130);
      if (v100 >= 1)
      {
        v101 = *(*(&v129 + 1) + 8 * v58);
        do
        {
          v102 = vld1q_dup_f32(v101++);
          *v59++ = v102;
          --v100;
        }

        while (v100);
      }
    }

    goto LABEL_179;
  }

  if (v51 == -1)
  {
    sub_24BC836D4(v124, "R channel not found");
LABEL_182:
    v104 = v124[23];
    if (a6)
    {
      if (v124[23] >= 0)
      {
        v105 = v124;
      }

      else
      {
        v105 = *v124;
      }

      *a6 = strdup(v105);
    }

    if (v104 < 0)
    {
      operator delete(*v124);
    }

    v12 = 4294967292;
    goto LABEL_190;
  }

  if (v52 == -1)
  {
    sub_24BC836D4(v124, "G channel not found");
    goto LABEL_182;
  }

  if (v53 == -1)
  {
    sub_24BC836D4(v124, "B channel not found");
    goto LABEL_182;
  }

  v81 = malloc_type_malloc(16 * v130 * SDWORD1(v130), 0x100004052888210uLL);
  *v11 = v81;
  if (DWORD2(v139))
  {
    v82 = HIDWORD(v130);
    if (SHIDWORD(v130) >= 1)
    {
      v83 = 0;
      v84 = v140;
      v85 = HIDWORD(v139);
      v86 = HIDWORD(v139);
      v87 = 4 * SHIDWORD(v139);
      v88 = &v81->i8[8];
      do
      {
        if (v84 >= 1)
        {
          v89 = 0;
          v90 = 0;
          v91 = (v128 + 32 * v83);
          v92 = v130;
          do
          {
            if (v85 >= 1)
            {
              v93 = *v91 * v86;
              v94 = v91[1] * v84 + v90;
              v95 = &v88[16 * v93 + 16 * v92 * v94];
              v96 = v85;
              v97 = v89;
              do
              {
                if (v93 < v92 && v94 < SDWORD1(v130))
                {
                  v98 = *(v91 + 3);
                  *(v95 - 2) = *(*(v98 + 8 * v51) + v97);
                  *(v95 - 1) = *(*(v98 + 8 * v52) + v97);
                  *v95 = *(*(v98 + 8 * v53) + v97);
                  if (v54 == -1)
                  {
                    v99 = 1.0;
                  }

                  else
                  {
                    v99 = *(*(v98 + 8 * v54) + v97);
                  }

                  v95[1] = v99;
                }

                v97 += 4;
                ++v93;
                v95 += 4;
                --v96;
              }

              while (v96);
            }

            ++v90;
            v89 += v87;
          }

          while (v90 != v84);
        }

        ++v83;
      }

      while (v83 != v82);
    }
  }

  else if (DWORD1(v130) * v130 >= 1)
  {
    v106 = 0;
    v107 = *(&v129 + 1);
    v108 = *(*(&v129 + 1) + 8 * v51);
    v109 = *(*(&v129 + 1) + 8 * v52);
    v110 = *(*(&v129 + 1) + 8 * v53);
    v111 = 4 * (DWORD1(v130) * v130);
    v112 = &v81->f32[2];
    do
    {
      *(v112 - 2) = *(v108 + v106);
      *(v112 - 1) = *(v109 + v106);
      *v112 = *(v110 + v106);
      if (v54 == -1)
      {
        v113 = 1.0;
      }

      else
      {
        v113 = *(*(v107 + 8 * v54) + v106);
      }

      v112[1] = v113;
      v106 += 4;
      v112 += 4;
    }

    while (v111 != v106);
  }

LABEL_179:
  v12 = 0;
  v103 = DWORD1(v130);
  *v114 = v130;
  *v115 = v103;
LABEL_190:
  sub_24BC83A20(v136);
  sub_24BC84F50(&v128);
  *v124 = &v120;
  sub_24BC95648(v124);
  *v124 = v123;
  sub_24BC955F4(v124);
LABEL_38:
  v26 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_24BC84804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a22 = &a16;
  sub_24BC95648(&a22);
  a22 = &a19;
  sub_24BC955F4(&a22);
  _Unwind_Resume(a1);
}

double sub_24BC848DC(_OWORD *a1)
{
  if (a1)
  {
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t *sub_24BC848F0(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_24BC950A0((a1 + 3), 24);
  return a1;
}

void sub_24BC84B6C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x24C2547D0](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_24BC84B94(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x24C2547D0](a1 + 128);
  return a1;
}

uint64_t sub_24BC84CE8(uint64_t a1, _DWORD *a2, char *__filename, char **a4)
{
  if (a1)
  {
    v8 = fopen(__filename, "rb");
    if (v8)
    {
      v9 = v8;
      fseek(v8, 0, 2);
      v10 = MEMORY[0x24C254C50](v9);
      fseek(v9, 0, 0);
      if (v10 > 0xF)
      {
        sub_24BC94EB0(&__p, v10);
        fread(__p.__r_.__value_.__l.__data_, 1uLL, v10, v9);
        fclose(v9);
        if (__p.__r_.__value_.__l.__size_ == __p.__r_.__value_.__r.__words[0])
        {
          sub_24BC923C0();
        }

        v14 = sub_24BC87028(a1, a2, __p.__r_.__value_.__l.__data_, v10, a4);
        if (__p.__r_.__value_.__r.__words[0])
        {
          __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        sub_24BC836D4(&v21, __filename);
        v11 = std::string::insert(&v21, 0, "File size too short ");
        __p = *v11;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        if (a4)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *a4 = strdup(p_p);
        }

        if (v12 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }

        return 4294967291;
      }
    }

    else
    {
      sub_24BC836D4(&v21, __filename);
      v17 = std::string::insert(&v21, 0, "Cannot read file ");
      __p = *v17;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      v18 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if (a4)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = &__p;
        }

        else
        {
          v19 = __p.__r_.__value_.__r.__words[0];
        }

        *a4 = strdup(v19);
      }

      if (v18 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      return 4294967289;
    }
  }

  else
  {
    sub_24BC836D4(&__p, "Invalid argument for LoadEXRImageFromFile");
    v15 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if (a4)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &__p;
      }

      else
      {
        v16 = __p.__r_.__value_.__r.__words[0];
      }

      *a4 = strdup(v16);
    }

    if (v15 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return 4294967293;
  }

  return v14;
}

void sub_24BC84F1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BC84F50(uint64_t a1)
{
  if (!a1)
  {
    return 4294967293;
  }

  if (*(a1 + 8))
  {
    sub_24BC84F50();
    v2 = *(a1 + 8);
    if (v2)
    {
      MEMORY[0x24C2548B0](v2, 0x10A0C404FE9ED91);
    }
  }

  v3 = *(a1 + 40);
  if (v3 >= 1)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *(a1 + 24);
      if (v5)
      {
        v6 = *(v5 + 8 * i);
        if (v6)
        {
          free(v6);
          v3 = *(a1 + 40);
        }
      }
    }
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    free(v7);
  }

  result = *a1;
  if (*a1)
  {
    if (*(a1 + 44) >= 1)
    {
      v9 = 0;
      do
      {
        v10 = *(a1 + 40);
        if (v10 >= 1)
        {
          for (j = 0; j < v10; ++j)
          {
            v12 = *(*a1 + 32 * v9 + 24);
            if (v12)
            {
              v13 = *(v12 + 8 * j);
              if (v13)
              {
                free(v13);
                v10 = *(a1 + 40);
              }
            }
          }
        }

        v14 = *(*a1 + 32 * v9 + 24);
        if (v14)
        {
          free(v14);
        }

        ++v9;
      }

      while (v9 < *(a1 + 44));
      result = *a1;
    }

    free(result);
    return 0;
  }

  return result;
}

uint64_t sub_24BC8509C(int8x8_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, char **a5)
{
  if (a1 && a3)
  {
    if (a4 > 7)
    {
      v21 = 0u;
      v22 = 0u;
      v14 = a4 - 8;
      *__p = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      sub_24BC85294(__p);
      memset(&v19, 0, sizeof(v19));
      v15 = sub_24BC85314(__p, 0, a2, &v19, (a3 + 8), v14);
      v9 = v15;
      if (a5 && v15)
      {
        size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
        if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v19.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v17 = &v19;
          }

          else
          {
            v17 = v19.__r_.__value_.__r.__words[0];
          }

          *a5 = strdup(v17);
        }
      }

      sub_24BC862F0(a1, __p);
      a1[10] = vbic_s8(0x100000001, vceqz_s32(*(a2 + 12)));
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(*(&v24 + 1));
      }

      if (SBYTE7(v24) < 0)
      {
        operator delete(v23);
      }

      if (*(&v21 + 1))
      {
        *&v22 = *(&v21 + 1);
        operator delete(*(&v21 + 1));
      }

      v19.__r_.__value_.__r.__words[0] = __p;
      sub_24BC9569C(&v19);
    }

    else
    {
      sub_24BC836D4(__p, "Insufficient header/data size.\n");
      v7 = SBYTE7(v21);
      if (a5)
      {
        if ((SBYTE7(v21) & 0x80u) == 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        *a5 = strdup(v8);
      }

      if (v7 < 0)
      {
        operator delete(__p[0]);
      }

      return 4294967292;
    }
  }

  else
  {
    v10 = SBYTE7(v21);
    if (a5)
    {
      if ((SBYTE7(v21) & 0x80u) == 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      *a5 = strdup(v11);
    }

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    return 4294967293;
  }

  return v9;
}

void sub_24BC85270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_24BC86768(&a16);
  _Unwind_Resume(a1);
}

void sub_24BC85294(uint64_t a1)
{
  sub_24BC8E718(a1);
  *(a1 + 32) = *(a1 + 24);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  if (*(a1 + 159) < 0)
  {
    **(a1 + 136) = 0;
    *(a1 + 144) = 0;
  }

  else
  {
    *(a1 + 136) = 0;
    *(a1 + 159) = 0;
  }

  if (*(a1 + 183) < 0)
  {
    **(a1 + 160) = 0;
    *(a1 + 168) = 0;
  }

  else
  {
    *(a1 + 160) = 0;
    *(a1 + 183) = 0;
  }
}

uint64_t sub_24BC85314(uint64_t a1, _BYTE *a2, _DWORD *a3, std::string *this, char *__s1, size_t __n)
{
  v7 = __s1;
  v83 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *a2 = 0;
  }

  if (!__n || !a3[4] || *__s1)
  {
    if (*(a1 + 159) < 0)
    {
      **(a1 + 136) = 0;
      *(a1 + 144) = 0;
    }

    else
    {
      *(a1 + 136) = 0;
      *(a1 + 159) = 0;
    }

    if (*(a1 + 183) < 0)
    {
      **(a1 + 160) = 0;
      *(a1 + 168) = 0;
    }

    else
    {
      *(a1 + 160) = 0;
      *(a1 + 183) = 0;
    }

    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v11 = *(a1 + 24);
    *(a1 + 76) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 48) = 0u;
    __asm { FMOV            V0.2S, #-1.0 }

    *(a1 + 92) = _D0;
    v17 = 1024;
    *(a1 + 104) = 0;
    *(a1 + 108) = -1;
    *(a1 + 116) = -1;
    *(a1 + 32) = v11;
    v61 = __n;
    v18 = __n;
    while (1)
    {
      if (!v18)
      {
        if (this)
        {
          std::string::append(this, "Insufficient data size for attributes.\n");
        }

        v6 = 4294967292;
        goto LABEL_148;
      }

      if (!*v7)
      {
        sub_24BC848F0(__dst);
        LODWORD(v18) = v18 - 1;
LABEL_99:
        if ((v66 & 0x100000000) == 0)
        {
          v34 = sub_24BC95264(&v75, "compression attribute not found in the header.", 48);
          std::ios_base::getloc((v34 + *(*v34 - 24)));
          v35 = std::locale::use_facet(&v73, MEMORY[0x277D82680]);
          (v35->__vftable[2].~facet_0)(v35, 10);
          std::locale::~locale(&v73);
          std::ostream::put();
          std::ostream::flush();
        }

        if ((v66 & 1) == 0)
        {
          v36 = sub_24BC95264(&v75, "channels attribute not found in the header.", 45);
          std::ios_base::getloc((v36 + *(*v36 - 24)));
          v37 = std::locale::use_facet(&v73, MEMORY[0x277D82680]);
          (v37->__vftable[2].~facet_0)(v37, 10);
          std::locale::~locale(&v73);
          std::ostream::put();
          std::ostream::flush();
        }

        if ((v64 & 0x100000000) == 0)
        {
          v38 = sub_24BC95264(&v75, "lineOrder attribute not found in the header.", 46);
          std::ios_base::getloc((v38 + *(*v38 - 24)));
          v39 = std::locale::use_facet(&v73, MEMORY[0x277D82680]);
          (v39->__vftable[2].~facet_0)(v39, 10);
          std::locale::~locale(&v73);
          std::ostream::put();
          std::ostream::flush();
        }

        if ((v65 & 1) == 0)
        {
          v40 = sub_24BC95264(&v75, "displayWindow attribute not found in the header.", 50);
          std::ios_base::getloc((v40 + *(*v40 - 24)));
          v41 = std::locale::use_facet(&v73, MEMORY[0x277D82680]);
          (v41->__vftable[2].~facet_0)(v41, 10);
          std::locale::~locale(&v73);
          std::ostream::put();
          std::ostream::flush();
        }

        if ((v65 & 0x100000000) == 0)
        {
          v42 = sub_24BC95264(&v75, "dataWindow attribute not found in the header or invalid.", 58);
          std::ios_base::getloc((v42 + *(*v42 - 24)));
          v43 = std::locale::use_facet(&v73, MEMORY[0x277D82680]);
          (v43->__vftable[2].~facet_0)(v43, 10);
          std::locale::~locale(&v73);
          std::ostream::put();
          std::ostream::flush();
        }

        if ((v64 & 1) == 0)
        {
          v44 = sub_24BC95264(&v75, "pixelAspectRatio attribute not found in the header.", 53);
          std::ios_base::getloc((v44 + *(*v44 - 24)));
          v45 = std::locale::use_facet(&v73, MEMORY[0x277D82680]);
          (v45->__vftable[2].~facet_0)(v45, 10);
          std::locale::~locale(&v73);
          std::ostream::put();
          std::ostream::flush();
        }

        if ((v63 & 1) == 0)
        {
          v46 = sub_24BC95264(&v75, "screenWindowWidth attribute not found in the header.", 54);
          std::ios_base::getloc((v46 + *(*v46 - 24)));
          v47 = std::locale::use_facet(&v73, MEMORY[0x277D82680]);
          (v47->__vftable[2].~facet_0)(v47, 10);
          std::locale::~locale(&v73);
          std::ostream::put();
          std::ostream::flush();
        }

        if ((v63 & 0x100000000) == 0)
        {
          v48 = sub_24BC95264(&v75, "screenWindowCenter attribute not found in the header.", 55);
          std::ios_base::getloc((v48 + *(*v48 - 24)));
          v49 = std::locale::use_facet(&v73, MEMORY[0x277D82680]);
          (v49->__vftable[2].~facet_0)(v49, 10);
          std::locale::~locale(&v73);
          std::ostream::put();
          std::ostream::flush();
        }

        if (a3[4] || a3[3])
        {
          if ((v62 & 0x100000000) == 0)
          {
            v50 = sub_24BC95264(&v75, "name attribute not found in the header.", 41);
            std::ios_base::getloc((v50 + *(*v50 - 24)));
            v51 = std::locale::use_facet(&v73, MEMORY[0x277D82680]);
            (v51->__vftable[2].~facet_0)(v51, 10);
            std::locale::~locale(&v73);
            std::ostream::put();
            std::ostream::flush();
          }

          if ((v62 & 1) == 0)
          {
            v52 = sub_24BC95264(&v75, "type attribute not found in the header.", 41);
            std::ios_base::getloc((v52 + *(*v52 - 24)));
            v53 = std::locale::use_facet(&v73, MEMORY[0x277D82680]);
            (v53->__vftable[2].~facet_0)(v53, 10);
            std::locale::~locale(&v73);
            std::ostream::put();
            std::ostream::flush();
          }
        }

        std::stringbuf::str();
        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          size = v73.__r_.__value_.__l.__size_;
          operator delete(v73.__r_.__value_.__l.__data_);
          v54 = size == 0;
          if (size)
          {
            v6 = 4294967287;
          }

          else
          {
            v6 = v6;
          }

          if (!this || !size)
          {
            goto LABEL_144;
          }
        }

        else
        {
          v54 = SHIBYTE(v73.__r_.__value_.__r.__words[2]) == 0;
          if (*(&v73.__r_.__value_.__s + 23))
          {
            v6 = 4294967287;
          }

          else
          {
            v6 = v6;
          }

          if (!this || !*(&v73.__r_.__value_.__s + 23))
          {
LABEL_144:
            *__dst = *MEMORY[0x277D82818];
            v58 = *(MEMORY[0x277D82818] + 72);
            *&__dst[*(*__dst - 24)] = *(MEMORY[0x277D82818] + 64);
            v75 = v58;
            v76 = MEMORY[0x277D82878] + 16;
            if (v78 < 0)
            {
              operator delete(v77[7].__locale_);
            }

            v76 = MEMORY[0x277D82868] + 16;
            std::locale::~locale(v77);
            std::iostream::~basic_iostream();
            MEMORY[0x24C2547D0](v79);
            if (v54)
            {
              v6 = 0;
              *(a1 + 124) = v61 - v18;
            }

            goto LABEL_148;
          }
        }

        std::stringbuf::str();
        if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v56 = &v73;
        }

        else
        {
          v56 = v73.__r_.__value_.__r.__words[0];
        }

        if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v57 = v73.__r_.__value_.__l.__size_;
        }

        std::string::append(this, v56, v57);
        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v73.__r_.__value_.__l.__data_);
        }

        v54 = 0;
        v6 = 4294967287;
        goto LABEL_144;
      }

      memset(&v73, 0, sizeof(v73));
      v71[0] = 0;
      v71[1] = 0;
      v72 = 0;
      __p = 0;
      v69 = 0;
      v70 = 0;
      v67 = 0;
      if ((sub_24BC89C58(&v73, v71, &__p, &v67, v7, v18) & 1) == 0)
      {
        break;
      }

      v7 += v67;
      v18 -= v67;
      if ((a3[1] || a3[4] || a3[3]) && !std::string::compare(&v73, "tiles"))
      {
        if (v69 == __p || (v69 - __p) < 5)
        {
          sub_24BC923C0();
        }

        v23 = *__p;
        if ((*__p & 0x80000000) != 0 || (v24 = *(__p + 1), v24 < 0))
        {
          if (this)
          {
            MEMORY[0x24C2541D0](this, "Tile sizes were invalid.");
          }

          goto LABEL_77;
        }

        v25 = *(__p + 8);
        *(a1 + 112) = v24;
        *(a1 + 116) = v25 & 3;
        *(a1 + 120) = (v25 >> 4) & 1;
        v22 = 1;
        *(a1 + 104) = 1;
        *(a1 + 108) = v23;
      }

      else if (!std::string::compare(&v73, "compression"))
      {
        v26 = *__p;
        if (v26 >= 5)
        {
          if (v26 == 128)
          {
            v29 = "ZFP compression is not supported.";
            if (!this)
            {
              goto LABEL_77;
            }

LABEL_76:
            MEMORY[0x24C2541D0](this, v29);
          }

          else
          {
            v29 = "Unknown compression type.";
            if (this)
            {
              goto LABEL_76;
            }
          }

LABEL_77:
          v22 = 0;
          v6 = 4294967288;
          goto LABEL_43;
        }

        *(a1 + 128) = v26;
        v22 = 1;
        BYTE4(v66) = 1;
      }

      else
      {
        if (!std::string::compare(&v73, "channels"))
        {
          if (sub_24BC89E0C(a1, &__p))
          {
            if (*(a1 + 8) != *a1)
            {
              v22 = 1;
              LOBYTE(v66) = 1;
              goto LABEL_43;
            }

            v28 = "# of channels is zero.\n";
            if (this)
            {
LABEL_79:
              std::string::append(this, v28);
            }
          }

          else
          {
            v28 = "Failed to parse channel info.\n";
            if (this)
            {
              goto LABEL_79;
            }
          }

LABEL_42:
          v22 = 0;
          v6 = 4294967292;
          goto LABEL_43;
        }

        if (!std::string::compare(&v73, "dataWindow"))
        {
          v27 = __p;
          if ((v69 - __p) < 0x10)
          {
            goto LABEL_94;
          }

          *(a1 + 48) = *__p;
          *(a1 + 52) = v27[1];
          *(a1 + 56) = v27[2];
          *(a1 + 60) = v27[3];
          v22 = 1;
          BYTE4(v65) = 1;
        }

        else if (!std::string::compare(&v73, "displayWindow"))
        {
          v30 = __p;
          if ((v69 - __p) < 0x10)
          {
            goto LABEL_94;
          }

          *(a1 + 68) = *__p;
          *(a1 + 72) = v30[1];
          *(a1 + 76) = v30[2];
          *(a1 + 80) = v30[3];
          v22 = 1;
          LOBYTE(v65) = 1;
        }

        else if (!std::string::compare(&v73, "lineOrder"))
        {
          if (v69 == __p)
          {
            goto LABEL_94;
          }

          *(a1 + 64) = *__p;
          v22 = 1;
          BYTE4(v64) = 1;
        }

        else if (!std::string::compare(&v73, "pixelAspectRatio"))
        {
          if ((v69 - __p) < 4)
          {
            goto LABEL_94;
          }

          *(a1 + 96) = *__p;
          v22 = 1;
          LOBYTE(v64) = 1;
        }

        else if (!std::string::compare(&v73, "screenWindowCenter"))
        {
          v31 = __p;
          if ((v69 - __p) < 8)
          {
            goto LABEL_94;
          }

          *(a1 + 84) = *__p;
          *(a1 + 88) = v31[1];
          v22 = 1;
          BYTE4(v63) = 1;
        }

        else if (!std::string::compare(&v73, "screenWindowWidth"))
        {
          if ((v69 - __p) < 4)
          {
            goto LABEL_94;
          }

          *(a1 + 92) = *__p;
          v22 = 1;
          LOBYTE(v63) = 1;
        }

        else
        {
          if (!std::string::compare(&v73, "chunkCount"))
          {
            if ((v69 - __p) >= 4)
            {
              *(a1 + 100) = *__p;
            }

            goto LABEL_94;
          }

          if (!std::string::compare(&v73, "name"))
          {
            if (__p == v69 || !*__p)
            {
              goto LABEL_94;
            }

            __dst[0] = 0;
            sub_24BC8E768(&__p, __dst);
            v32 = strlen(__p);
            std::string::resize((a1 + 136), v32, 0);
            MEMORY[0x24C2541E0](a1 + 136, __p, v32);
            v22 = 1;
            BYTE4(v62) = 1;
          }

          else
          {
            if (std::string::compare(&v73, "type"))
            {
              if ((0xF83E0F83E0F83E1 * ((*(a1 + 32) - *(a1 + 24)) >> 4)) <= 0x7F)
              {
                if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v19 = &v73;
                }

                else
                {
                  v19 = v73.__r_.__value_.__r.__words[0];
                }

                strncpy(__dst, v19, 0xFFuLL);
                if (v72 >= 0)
                {
                  v20 = v71;
                }

                else
                {
                  v20 = v71[0];
                }

                strncpy(v80, v20, 0xFFuLL);
                v79[127] = 0;
                v80[255] = 0;
                v82 = v69 - __p;
                v21 = malloc_type_malloc(v69 - __p, 0x100004077774924uLL);
                v81 = v21;
                if (v69 == __p)
                {
                  sub_24BC923C0();
                }

                memcpy(v21, __p, v69 - __p);
                sub_24BC8E858(a1 + 24, __dst);
              }

LABEL_94:
              v22 = 1;
              goto LABEL_43;
            }

            if (__p == v69 || !*__p)
            {
              goto LABEL_94;
            }

            __dst[0] = 0;
            sub_24BC8E768(&__p, __dst);
            v33 = strlen(__p);
            std::string::resize((a1 + 160), v33, 0);
            MEMORY[0x24C2541E0](a1 + 160, __p, v33);
            v22 = 1;
            LOBYTE(v62) = 1;
          }
        }
      }

LABEL_43:
      if (__p)
      {
        v69 = __p;
        operator delete(__p);
      }

      if (SHIBYTE(v72) < 0)
      {
        operator delete(v71[0]);
      }

      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      if ((v22 & 1) == 0)
      {
        goto LABEL_148;
      }

      if (!--v17)
      {
        sub_24BC848F0(__dst);
        goto LABEL_99;
      }
    }

    if (this)
    {
      std::string::append(this, "Failed to read attribute.\n");
    }

    goto LABEL_42;
  }

  v6 = 0;
  if (a2)
  {
    *a2 = 1;
  }

LABEL_148:
  v59 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_24BC86224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, std::locale a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25.__locale_);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_24BC862F0(uint64_t a1, uint64_t *a2)
{
  *a1 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 21);
  *(a1 + 44) = *(a2 + 22);
  *(a1 + 48) = *(a2 + 23);
  *(a1 + 52) = *(a2 + 25);
  *(a1 + 24) = *(a2 + 68);
  *(a1 + 8) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 16);
  *(a1 + 124) = *(a2 + 32);
  *(a1 + 56) = *(a2 + 13);
  *(a1 + 72) = *(a2 + 30);
  v4 = (a2 + 17);
  if (*(a2 + 159) < 0)
  {
    v4 = *v4;
    *(a1 + 136) = 0u;
    v5 = (a1 + 136);
    *(a1 + 360) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 248) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 152) = 0u;
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(a1 + 136) = 0u;
    v5 = (a1 + 136);
    *(a1 + 360) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 248) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 152) = 0u;
  }

  v6 = strlen(v4);
  if (v6)
  {
    if (v6 >= 0xFF)
    {
      v7 = 255;
    }

    else
    {
      v7 = v6;
    }

    memcpy(v5, v4, v7);
  }

LABEL_9:
  v8 = *(a2 + 183);
  v9 = a2[21];
  if ((v8 & 0x80u) == 0)
  {
    v10 = *(a2 + 183);
  }

  else
  {
    v10 = a2[21];
  }

  if (v10)
  {
    v11 = a2 + 20;
    if ((v8 & 0x80) != 0)
    {
      if (v9 != 8)
      {
        if (v9 != 12)
        {
          goto LABEL_29;
        }

        v11 = *v11;
        goto LABEL_20;
      }

      v11 = *v11;
    }

    else if (v8 != 8)
    {
      if (v8 != 12)
      {
        goto LABEL_29;
      }

LABEL_20:
      v12 = *v11;
      v13 = *(v11 + 2);
      if (v12 != 0x6E61637370656564 || v13 != 1701734764)
      {
        goto LABEL_29;
      }

LABEL_28:
      *(a1 + 80) = 1;
      goto LABEL_29;
    }

    if (*v11 != 0x656C697470656564)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_29:
  v15 = -858993459 * ((a2[1] - *a2) >> 3);
  *(a1 + 120) = v15;
  v16 = malloc_type_malloc(272 * v15, 0x1000040881B329AuLL);
  *(a1 + 104) = v16;
  if (*(a1 + 120))
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = *a2;
    do
    {
      v21 = (v20 + v17);
      if (*(v20 + v17 + 23) < 0)
      {
        v21 = *v21;
      }

      strncpy(&v16[v18], v21, 0xFFuLL);
      *(*(a1 + 104) + v18 + 255) = 0;
      v20 = *a2;
      v22 = *a2 + v17;
      v16 = *(a1 + 104);
      v23 = &v16[v18];
      *(v23 + 64) = *(v22 + 24);
      v23[268] = *(v22 + 36);
      *&v16[v18 + 260] = *(v22 + 28);
      ++v19;
      v24 = *(a1 + 120);
      v18 += 272;
      v17 += 40;
    }

    while (v19 < v24);
    v25 = 4 * v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = malloc_type_malloc(v25, 0x100004052888210uLL);
  *(a1 + 112) = v26;
  if (*(a1 + 120))
  {
    v27 = 0;
    v28 = (*a2 + 24);
    do
    {
      v29 = *v28;
      v28 += 10;
      v26[v27++] = v29;
      v30 = *(a1 + 120);
    }

    while (v27 < v30);
    v31 = 4 * v30;
  }

  else
  {
    v31 = 0;
  }

  result = malloc_type_malloc(v31, 0x100004052888210uLL);
  *(a1 + 128) = result;
  if (*(a1 + 120))
  {
    v33 = 0;
    v34 = (*a2 + 24);
    do
    {
      v35 = *v34;
      v34 += 10;
      result[v33++] = v35;
    }

    while (v33 < *(a1 + 120));
  }

  v36 = 0xF83E0F83E0F83E1 * ((a2[4] - a2[3]) >> 4);
  *(a1 + 92) = v36;
  if (v36 <= 0)
  {
    *(a1 + 96) = 0;
  }

  else
  {
    if (v36 >= 0x81)
    {
      LODWORD(v36) = 128;
      *(a1 + 92) = 128;
    }

    result = malloc_type_malloc(528 * (v36 & 0x7FFFFFFF), 0x10100400824DDA7uLL);
    *(a1 + 96) = result;
    v37 = a2[3];
    if (a2[4] != v37)
    {
      v38 = 0;
      v39 = 0;
      do
      {
        v40 = &result[v38 / 4];
        v41 = (v37 + v38);
        v42 = *v41;
        v43 = v41[1];
        v44 = v41[3];
        v40[2] = v41[2];
        v40[3] = v44;
        *v40 = v42;
        v40[1] = v43;
        v45 = v41[4];
        v46 = v41[5];
        v47 = v41[7];
        v40[6] = v41[6];
        v40[7] = v47;
        v40[4] = v45;
        v40[5] = v46;
        v48 = v41[8];
        v49 = v41[9];
        v50 = v41[11];
        v40[10] = v41[10];
        v40[11] = v50;
        v40[8] = v48;
        v40[9] = v49;
        v51 = v41[12];
        v52 = v41[13];
        v53 = v41[15];
        v40[14] = v41[14];
        v40[15] = v53;
        v40[12] = v51;
        v40[13] = v52;
        v54 = (*(a1 + 96) + v38);
        v55 = (a2[3] + v38);
        v56 = v55[23];
        v58 = v55[20];
        v57 = v55[21];
        v54[22] = v55[22];
        v54[23] = v56;
        v54[20] = v58;
        v54[21] = v57;
        v59 = v55[27];
        v61 = v55[24];
        v60 = v55[25];
        v54[26] = v55[26];
        v54[27] = v59;
        v54[24] = v61;
        v54[25] = v60;
        v62 = v55[31];
        v64 = v55[28];
        v63 = v55[29];
        v54[30] = v55[30];
        v54[31] = v62;
        v54[28] = v64;
        v54[29] = v63;
        v65 = v55[16];
        v66 = v55[17];
        v67 = v55[19];
        v54[18] = v55[18];
        v54[19] = v67;
        v54[16] = v65;
        v54[17] = v66;
        v37 = a2[3];
        v68 = a2[4];
        result = *(a1 + 96);
        v69 = &result[v38 / 4];
        *(v69 + 130) = *(v37 + v38 + 520);
        *(v69 + 64) = *(v37 + v38 + 512);
        ++v39;
        v38 += 528;
      }

      while (v39 < 0xF83E0F83E0F83E1 * ((v68 - v37) >> 4));
    }
  }

  *(a1 + 88) = *(a2 + 31);
  return result;
}

uint64_t sub_24BC86768(uint64_t a1)
{
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v4 = a1;
  sub_24BC9569C(&v4);
  return a1;
}

uint64_t sub_24BC867D0(float32x4_t **a1, _DWORD *a2, _DWORD *a3, uint64_t a4, unint64_t a5, char **a6)
{
  v124 = *MEMORY[0x277D85DE8];
  if (a1 && a4)
  {
    v123 = 0;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
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
    *v99 = 0u;
    v100 = 0u;
    v12 = sub_24BC86F6C(v98, a4, a5);
    if (v12)
    {
      v13 = v12;
      sub_24BC848F0(v89);
      v14 = sub_24BC95264(&v90, "Failed to parse EXR version. code(", 34);
      v15 = MEMORY[0x24C2543C0](v14, v13);
      sub_24BC95264(v15, ")", 1);
      std::stringbuf::str();
      v16 = v88;
      if (a6)
      {
        if (v88 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        *a6 = strdup(p_p);
      }

      if (v16 < 0)
      {
        operator delete(__p);
      }

      v89[0] = *MEMORY[0x277D82818];
      v18 = *(MEMORY[0x277D82818] + 72);
      *(v89 + *(v89[0] - 3)) = *(MEMORY[0x277D82818] + 64);
      v90 = v18;
      v91 = MEMORY[0x277D82878] + 16;
      if (v93 < 0)
      {
        operator delete(v92[7].__locale_);
      }

      v91 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v92);
      std::iostream::~basic_iostream();
      MEMORY[0x24C2547D0](&v94);
      goto LABEL_22;
    }

    v13 = sub_24BC8509C(v99, v98, a4, a5, a6);
    if (!v13)
    {
      v23 = DWORD2(v106);
      if (SDWORD2(v106) >= 1)
      {
        v24 = 0;
        v25 = v106;
        v26 = v107;
        do
        {
          if (*(v25 + 4 * v24) == 1)
          {
            *(v26 + 4 * v24) = 2;
            v23 = DWORD2(v106);
          }

          ++v24;
        }

        while (v24 < v23);
      }

      v96 = 0u;
      v97 = 0u;
      v95 = 0u;
      v13 = sub_24BC87028(&v95, v99, a4, a5, a6);
      if (!v13)
      {
        if (SDWORD2(v106) < 1)
        {
          goto LABEL_83;
        }

        v27 = 0;
        v28 = (*(&v105 + 1) + 1);
        v29 = -1;
        v30 = -1;
        v31 = -1;
        v32 = -1;
        do
        {
          v33 = *(v28 - 1);
          switch(v33)
          {
            case 'R':
              if (!*v28)
              {
                v29 = v27;
              }

              break;
            case 'A':
              if (!*v28)
              {
                v32 = v27;
              }

              break;
            case 'B':
              if (!*v28)
              {
                v31 = v27;
              }

              break;
            default:
              if (v33 == 71 && !*v28)
              {
                v30 = v27;
              }

              break;
          }

          ++v27;
          v28 += 272;
        }

        while (DWORD2(v106) != v27);
        if (DWORD2(v106) == 1)
        {
          v34 = malloc_type_malloc(16 * v97 * SDWORD1(v97), 0x100004052888210uLL);
          *a1 = v34;
          if (DWORD2(v102))
          {
            v35 = HIDWORD(v97);
            if (SHIDWORD(v97) >= 1)
            {
              v36 = 0;
              v37 = v103;
              v38 = HIDWORD(v102);
              v39 = HIDWORD(v102);
              v40 = 4 * SHIDWORD(v102);
              v41 = &v34->i8[8];
              do
              {
                if (v37 >= 1)
                {
                  v42 = 0;
                  v43 = 0;
                  v44 = (v95 + 32 * v36);
                  v45 = v97;
                  do
                  {
                    if (v38 >= 1)
                    {
                      v46 = *v44 * v39;
                      v47 = v44[1] * v37 + v43;
                      v48 = &v41[16 * v46 + 16 * v45 * v47];
                      v49 = v38;
                      v50 = v42;
                      do
                      {
                        if (v46 < v45 && v47 < SDWORD1(v97))
                        {
                          v51 = **(v44 + 3);
                          v52 = *(v51 + v50);
                          *(v48 - 2) = v52;
                          *(v48 - 1) = v52;
                          v53 = *(v51 + v50);
                          *v48 = v53;
                          *(v48 + 1) = v53;
                        }

                        v50 += 4;
                        ++v46;
                        v48 += 16;
                        --v49;
                      }

                      while (v49);
                    }

                    ++v43;
                    v42 += v40;
                  }

                  while (v43 != v37);
                }

                ++v36;
              }

              while (v36 != v35);
            }
          }

          else
          {
            v75 = (DWORD1(v97) * v97);
            if (v75 >= 1)
            {
              v76 = **(&v96 + 1);
              do
              {
                v77 = vld1q_dup_f32(v76++);
                *v34++ = v77;
                --v75;
              }

              while (v75);
            }
          }

LABEL_95:
          v78 = DWORD1(v97);
          *a2 = v97;
          *a3 = v78;
          sub_24BC83A20(v99);
          sub_24BC84F50(&v95);
          v13 = 0;
          goto LABEL_22;
        }

        if (v29 == -1)
        {
LABEL_83:
          sub_24BC836D4(v89, "R channel not found");
        }

        else if (v30 == -1)
        {
          sub_24BC836D4(v89, "G channel not found");
        }

        else
        {
          if (v31 != -1)
          {
            v54 = malloc_type_malloc(16 * v97 * SDWORD1(v97), 0x100004052888210uLL);
            *a1 = v54;
            if (DWORD2(v102))
            {
              v55 = HIDWORD(v97);
              if (SHIDWORD(v97) >= 1)
              {
                v56 = 0;
                v57 = v103;
                v58 = HIDWORD(v102);
                v59 = HIDWORD(v102);
                v60 = 4 * SHIDWORD(v102);
                v61 = &v54->i8[8];
                do
                {
                  if (v57 >= 1)
                  {
                    v62 = 0;
                    v63 = 0;
                    v64 = (v95 + 32 * v56);
                    v65 = v97;
                    do
                    {
                      if (v58 >= 1)
                      {
                        v66 = *v64 * v59;
                        v67 = v64[1] * v57 + v63;
                        v68 = &v61[16 * v66 + 16 * v65 * v67];
                        v69 = v58;
                        v70 = v62;
                        do
                        {
                          if (v66 < v65 && v67 < SDWORD1(v97))
                          {
                            v71 = *(v64 + 3);
                            *(v68 - 2) = *(*(v71 + 8 * v29) + v70);
                            *(v68 - 1) = *(*(v71 + 8 * v30) + v70);
                            *v68 = *(*(v71 + 8 * v31) + v70);
                            if (v32 == -1)
                            {
                              v72 = 1.0;
                            }

                            else
                            {
                              v72 = *(*(v71 + 8 * v32) + v70);
                            }

                            v68[1] = v72;
                          }

                          v70 += 4;
                          ++v66;
                          v68 += 4;
                          --v69;
                        }

                        while (v69);
                      }

                      ++v63;
                      v62 += v60;
                    }

                    while (v63 != v57);
                  }

                  ++v56;
                }

                while (v56 != v55);
              }
            }

            else if (DWORD1(v97) * v97 >= 1)
            {
              v79 = 0;
              v80 = *(&v96 + 1);
              v81 = *(*(&v96 + 1) + 8 * v29);
              v82 = *(*(&v96 + 1) + 8 * v30);
              v83 = *(*(&v96 + 1) + 8 * v31);
              v84 = 4 * (DWORD1(v97) * v97);
              v85 = &v54->f32[2];
              do
              {
                *(v85 - 2) = *(v81 + v79);
                *(v85 - 1) = *(v82 + v79);
                *v85 = *(v83 + v79);
                if (v32 == -1)
                {
                  v86 = 1.0;
                }

                else
                {
                  v86 = *(*(v80 + 8 * v32) + v79);
                }

                v85[1] = v86;
                v79 += 4;
                v85 += 4;
              }

              while (v84 != v79);
            }

            goto LABEL_95;
          }

          sub_24BC836D4(v89, "B channel not found");
        }

        v73 = SHIBYTE(v90);
        if (a6)
        {
          if (v90 >= 0)
          {
            v74 = v89;
          }

          else
          {
            v74 = v89[0];
          }

          *a6 = strdup(v74);
        }

        if (v73 < 0)
        {
          operator delete(v89[0]);
        }

        v13 = 4294967292;
      }
    }
  }

  else
  {
    sub_24BC836D4(v99, "Invalid argument for LoadEXRFromMemory");
    v19 = SBYTE7(v100);
    if (a6)
    {
      if ((SBYTE7(v100) & 0x80u) == 0)
      {
        v20 = v99;
      }

      else
      {
        v20 = v99[0];
      }

      *a6 = strdup(v20);
    }

    if (v19 < 0)
    {
      operator delete(v99[0]);
    }

    v13 = 4294967293;
  }

LABEL_22:
  v21 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_24BC86F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BC84B94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BC86F6C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 4294967293;
  if (a1 && a2)
  {
    if (a3 < 8)
    {
      return 4294967292;
    }

    if (*a2 != 20000630)
    {
      return 0xFFFFFFFFLL;
    }

    *(a1 + 4) = 0;
    *(a1 + 12) = 0;
    if (*(a2 + 4) != 2)
    {
      return 4294967294;
    }

    *a1 = 2;
    v4 = *(a2 + 5);
    if ((v4 & 2) != 0)
    {
      *(a1 + 4) = 1;
      v4 = *(a2 + 5);
      if ((v4 & 4) == 0)
      {
LABEL_10:
        if ((v4 & 8) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }
    }

    else if ((*(a2 + 5) & 4) == 0)
    {
      goto LABEL_10;
    }

    *(a1 + 8) = 1;
    v4 = *(a2 + 5);
    if ((v4 & 8) == 0)
    {
LABEL_11:
      if ((v4 & 0x10) == 0)
      {
        return 0;
      }

LABEL_17:
      v3 = 0;
      *(a1 + 16) = 1;
      return v3;
    }

LABEL_16:
    *(a1 + 12) = 1;
    if ((*(a2 + 5) & 0x10) == 0)
    {
      return 0;
    }

    goto LABEL_17;
  }

  return v3;
}

uint64_t sub_24BC87028(uint64_t a1, _DWORD *a2, uint64_t a3, unint64_t a4, char **a5)
{
  if (!a1 || !a3 || a4 <= 7)
  {
    v10 = "Invalid argument for LoadEXRImageFromMemory";
    goto LABEL_9;
  }

  v9 = a2[22];
  if (!v9)
  {
    v10 = "EXRHeader variable is not initialized.";
    goto LABEL_9;
  }

  v62 = a3 + v9 + 8;
  if (a4 <= 8)
  {
    v10 = "Invalid argument for DecodeEXRImage().";
LABEL_9:
    sub_24BC836D4(__p, v10);
    v11 = SBYTE7(v61);
    if (a5)
    {
      if ((SBYTE7(v61) & 0x80u) == 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      *a5 = strdup(v12);
    }

    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    return 4294967293;
  }

  v16 = a2[31];
  v17 = 16;
  if (v16 != 3 && v16 != 128)
  {
    if (v16 == 4)
    {
      v17 = 32;
    }

    else
    {
      v17 = 1;
    }
  }

  v18 = a2[4];
  v19 = a2[2];
  v20 = __OFSUB__(v18, v19);
  v21 = v18 - v19;
  if (v21 < 0 == v20 && v21 != 0x7FFFFFFF)
  {
    v25 = a2[5];
    v26 = a2[3];
    v20 = __OFSUB__(v25, v26);
    v27 = v25 - v26;
    if (v27 < 0 != v20 || v27 == 0x7FFFFFFF)
    {
      v22 = "Invalid data height value";
      goto LABEL_26;
    }

    if (v21 >= 0x800000)
    {
      v22 = "data width too large.";
      goto LABEL_26;
    }

    if (v27 >= 0x800000)
    {
      v22 = "data height too large.";
      goto LABEL_26;
    }

    if (a2[14])
    {
      if (a2[15] > 0x800000)
      {
        v22 = "tile width too large.";
        goto LABEL_26;
      }

      if (a2[16] > 0x800000)
      {
        v22 = "tile height too large.";
        goto LABEL_26;
      }

      *__p = 0u;
      v61 = 0u;
      memset(&v59, 0, sizeof(v59));
      v56 = 0;
      v57 = 0;
      v58 = 0;
      sub_24BC8AF24(&v59, &v56, a2);
      v29 = sub_24BC8B1D4(__p, a2, &v59, &v56);
      v30 = v29;
      v31 = a2[13];
      if (v31 >= 1 && v31 != v29)
      {
        sub_24BC836D4(v54, "Invalid offset table size.");
        v32 = v55;
        if (a5)
        {
          if (v55 >= 0)
          {
            v33 = v54;
          }

          else
          {
            v33 = v54[0];
          }

          *a5 = strdup(v33);
        }

        if (v32 < 0)
        {
          operator delete(v54[0]);
        }

        if (v56)
        {
          v57 = v56;
          operator delete(v56);
        }

        v34 = v59.__r_.__value_.__r.__words[0];
        if (v59.__r_.__value_.__r.__words[0])
        {
          v59.__r_.__value_.__l.__size_ = v59.__r_.__value_.__r.__words[0];
LABEL_111:
          operator delete(v34);
        }

        goto LABEL_112;
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      if (v59.__r_.__value_.__r.__words[0])
      {
        v59.__r_.__value_.__l.__size_ = v59.__r_.__value_.__r.__words[0];
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      v13 = sub_24BC8E9E0(__p, a3, &v62, a4, a5);
      if (v13)
      {
        goto LABEL_113;
      }

      v28 = v30;
      if (sub_24BC8EB5C(__p))
      {
        sub_24BC8EC0C(__p, a2, a3, v62, a2[21] != 0, a2[20] != 0);
      }
    }

    else
    {
      *__p = 0u;
      v61 = 0u;
      v28 = a2[13];
      if (v28 < 1)
      {
        v35 = v27 + 1;
        v36 = v35 / v17;
        if (v36 * v17 >= v35)
        {
          v28 = v35 / v17;
        }

        else
        {
          v28 = v36 + 1;
        }

        sub_24BC8AED4(__p, v28);
      }

      else
      {
        sub_24BC8AED4(__p, a2[13]);
      }
    }

    if (a2[14] || !v28)
    {
LABEL_66:
      memset(&v59, 0, sizeof(v59));
      v13 = sub_24BC8B410(a1, a2, __p, a3, a4, &v59);
      if (v13)
      {
        size = HIBYTE(v59.__r_.__value_.__r.__words[2]);
        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v59.__r_.__value_.__l.__size_;
        }

        if (a5 && size)
        {
          if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v38 = &v59;
          }

          else
          {
            v38 = v59.__r_.__value_.__r.__words[0];
          }

          *a5 = strdup(v38);
        }

        sub_24BC84F50(a1);
      }

      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      goto LABEL_113;
    }

    v39 = 0;
    v40 = *__p[0];
    v41 = v62;
    v42 = v28;
    do
    {
      v43 = (v41 + v39);
      if (v41 + v39 + 8 >= a3 + a4)
      {
        sub_24BC836D4(&v59, "Insufficient data size in offset table.");
        goto LABEL_104;
      }

      v44 = *v43;
      if (*v43 >= a4)
      {
        sub_24BC836D4(&v59, "Invalid offset value in DecodeEXRImage.");
        goto LABEL_104;
      }

      v45 = *v40;
      (*v40)[v39 / 8] = v44;
      v39 += 8;
      --v42;
    }

    while (v42);
    v46 = 0;
    v47 = v41 + v39;
    v62 = v41 + v39;
    while (v45[v46])
    {
      if (v28 == ++v46)
      {
        goto LABEL_66;
      }
    }

    v48 = v41 - a3 + v39;
    if (v48 + 8 < a4)
    {
      v49 = *(v41 + v39 + 4);
      if (v49 < a4)
      {
        v50 = 1;
        do
        {
          v51 = v50;
          *v45 = v48;
          if (v28 == v50)
          {
            break;
          }

          v47 += (v49 + 8);
          v48 = v47 - a3;
          if (v47 - a3 + 8 >= a4)
          {
            break;
          }

          v49 = *(v47 + 4);
          ++v45;
          ++v50;
        }

        while (v49 < a4);
        if (v51 >= v28)
        {
          goto LABEL_66;
        }
      }
    }

    sub_24BC836D4(&v59, "Cannot reconstruct lineOffset table in DecodeEXRImage.");
LABEL_104:
    v52 = SHIBYTE(v59.__r_.__value_.__r.__words[2]);
    if (a5)
    {
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = &v59;
      }

      else
      {
        v53 = v59.__r_.__value_.__r.__words[0];
      }

      *a5 = strdup(v53);
    }

    if (v52 < 0)
    {
      v34 = v59.__r_.__value_.__r.__words[0];
      goto LABEL_111;
    }

LABEL_112:
    v13 = 4294967292;
LABEL_113:
    v59.__r_.__value_.__r.__words[0] = __p;
    sub_24BC8EE10(&v59);
    return v13;
  }

  v22 = "Invalid data width value";
LABEL_26:
  sub_24BC836D4(__p, v22);
  v23 = SBYTE7(v61);
  if (a5)
  {
    if ((SBYTE7(v61) & 0x80u) == 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = __p[0];
    }

    *a5 = strdup(v24);
  }

  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  return 4294967292;
}

void sub_24BC87564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  a16 = &a22;
  sub_24BC8EE10(&a16);
  _Unwind_Resume(a1);
}

size_t sub_24BC87604(int32x2_t *a1, uint64_t a2, unsigned int a3, void *a4, char **a5)
{
  v220 = *MEMORY[0x277D85DE8];
  if (!a1 || !a2 || !a4)
  {
LABEL_12:
    sub_24BC836D4(&__src, "Invalid argument for SaveEXRNPartImageToMemory");
    goto LABEL_13;
  }

  v7 = a3;
  if (a3)
  {
    v9 = a3;
    v10 = a2;
    while (1)
    {
      v11 = *(*v10 + 124);
      if (v11 < 0)
      {
        goto LABEL_12;
      }

      if (v11 == 128)
      {
        break;
      }

      v10 += 8;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    sub_24BC836D4(&__src, "ZFP compression is not supported in this build");
LABEL_13:
    v14 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
    if (a5)
    {
      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_src = &__src;
      }

      else
      {
        p_src = __src.__r_.__value_.__r.__words[0];
      }

      *a5 = strdup(p_src);
    }

    if (v14 < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }

    v16 = 0;
    goto LABEL_272;
  }

LABEL_9:
  v209 = 0;
  v210 = 0;
  v211 = 0;
  LODWORD(__src.__r_.__value_.__l.__data_) = 20000630;
  sub_24BC8F038(&v209, 0, &__src, &__src.__r_.__value_.__s.__data_[4], 4);
  v12 = *(*a2 + 76);
  LODWORD(__src.__r_.__value_.__l.__data_) = 2;
  if (v7 == 1)
  {
    v13 = *a1;
    if (*a1)
    {
      v13.i8[0] = 2;
      __src.__r_.__value_.__s.__data_[1] = 2;
    }
  }

  else
  {
    v13.i8[0] = 0;
  }

  if (v12)
  {
    v13.i8[0] |= 4u;
    __src.__r_.__value_.__s.__data_[1] = v13.i8[0];
  }

  if (v7 >= 2)
  {
    __src.__r_.__value_.__s.__data_[1] = v13.i8[0] | 0x10;
  }

  sub_24BC8F038(&v209, v210, &__src, &__src.__r_.__value_.__s.__data_[4], 4);
  v17 = v7;
  sub_24BC94F74(v208, v7);
  v191 = a5;
  v192 = a2;
  sub_24BC8F260(v207, v7);
  if (v7)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = &a1[6 * v18];
      if (*v20)
      {
        memset(&__src, 0, sizeof(__src));
        memset(&v212, 0, sizeof(v212));
        sub_24BC8AF24(&__src, &v212, *(v192 + 8 * v18));
        v21 = sub_24BC8B1D4(v207[0] + 32 * v18, *(v192 + 8 * v18), &__src, &v212);
        *(v208[0] + v18) = v21;
        if (v212.__r_.__value_.__r.__words[0])
        {
          v212.__r_.__value_.__l.__size_ = v212.__r_.__value_.__r.__words[0];
          operator delete(v212.__r_.__value_.__l.__data_);
        }

        if (__src.__r_.__value_.__r.__words[0])
        {
          __src.__r_.__value_.__l.__size_ = __src.__r_.__value_.__r.__words[0];
          operator delete(__src.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v22 = *(*(v192 + 8 * v18) + 124);
        if (v22 == 4)
        {
          v23 = 32;
        }

        else
        {
          v23 = 1;
        }

        if (v22 == 128)
        {
          v23 = 16;
        }

        if (v22 == 3)
        {
          v24 = 16;
        }

        else
        {
          v24 = v23;
        }

        v25 = (v24 + v20[4].i32[1] - 1) / v24;
        *(v208[0] + v18) = v25;
        sub_24BC8AED4((v207[0] + 32 * v18), v25);
        v21 = *(v208[0] + v18);
      }

      v19 += v21;
      ++v18;
    }

    while (v18 != v7);
    v26 = 8 * v19;
    v17 = v7;
  }

  else
  {
    v26 = 0;
  }

  v184 = v17;
  sub_24BC8F3D8(v206, v17);
  v27 = v191;
  v28 = v192;
  *&v212.__r_.__value_.__r.__words[1] = 0uLL;
  v212.__r_.__value_.__r.__words[0] = &v212.__r_.__value_.__l.__size_;
  v181 = v7;
  v183 = a1;
  if (v7)
  {
    v202 = v26;
    v29 = 0;
    do
    {
      v217 = 0;
      v218 = 0;
      v219 = 0;
      v30 = *(v28 + 8 * v29);
      if (*(v30 + 120) >= 1)
      {
        v31 = 0;
        v32 = 0;
        do
        {
          memset(&__src, 0, sizeof(__src));
          v216 = 0;
          v214 = *(*(v30 + 128) + 4 * v32);
          v215 = 0x100000001;
          sub_24BC836D4(&v205, (*(v30 + 104) + v31));
          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__src.__r_.__value_.__l.__data_);
          }

          __src = v205;
          sub_24BC8EF30(v206[0] + 24 * v29, &__src);
          if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__src.__r_.__value_.__l.__data_);
          }

          ++v32;
          v30 = *(v28 + 8 * v29);
          v31 += 272;
        }

        while (v32 < *(v30 + 120));
      }

      v33 = (v206[0] + 24 * v29);
      v34 = *v33;
      v35 = v33[1] - *v33;
      if (v35)
      {
        v36 = 0;
        v37 = 0xCCCCCCCCCCCCCCCDLL * (v35 >> 3);
        if (v37 <= 1)
        {
          v38 = 1;
        }

        else
        {
          v38 = v37;
        }

        do
        {
          v39 = v34;
          if (*(v34 + 23) < 0)
          {
            v39 = *v34;
          }

          v36 += strlen(v39) + 17;
          v34 += 40;
          --v38;
        }

        while (v38);
        v40 = v36 + 1;
      }

      else
      {
        v40 = 1;
      }

      v42 = v217;
      v41 = v218;
      if (v40 <= v218 - v217)
      {
        if (v40 < v218 - v217)
        {
          v41 = &v217[v40];
          v218 = &v217[v40];
        }
      }

      else
      {
        sub_24BC8F9B0(&v217, v40 - (v218 - v217));
        v42 = v217;
        v41 = v218;
      }

      if (v41 == v42)
      {
        goto LABEL_273;
      }

      v43 = *v33;
      if (v33[1] != *v33)
      {
        v44 = 0;
        v45 = 0;
        do
        {
          v46 = (v43 + v44);
          if (*(v43 + v44 + 23) < 0)
          {
            v46 = *v46;
          }

          v47 = strlen(v46);
          memcpy(v42, v46, v47);
          v48 = (*v33 + v44);
          if (v48[23] < 0)
          {
            v48 = *v48;
          }

          v49 = &v42[strlen(v48)];
          *v49 = 0;
          v50 = *v33 + v44;
          v51 = *(v50 + 28);
          *(v49 + 1) = *(v50 + 24);
          v49[5] = *(*v33 + v44 + 36);
          *(v49 + 9) = v51;
          v42 = v49 + 17;
          ++v45;
          v43 = *v33;
          v44 += 40;
        }

        while (v45 < 0xCCCCCCCCCCCCCCCDLL * ((v33[1] - *v33) >> 3));
      }

      *v42 = 0;
      v27 = v191;
      v28 = v192;
      if (v218 == v217)
      {
LABEL_273:
        sub_24BC923C0();
      }

      sub_24BC8EF70(&v209, "channels", "chlist", v217, v218 - v217);
      if (v217)
      {
        v218 = v217;
        operator delete(v217);
      }

      LODWORD(__src.__r_.__value_.__l.__data_) = *(*(v192 + 8 * v29) + 124);
      sub_24BC8EF70(&v209, "compression", "compression", &__src, 1);
      __src.__r_.__value_.__r.__words[0] = 0;
      v52 = &a1[6 * v29];
      __src.__r_.__value_.__r.__words[1] = vadd_s32(v52[4], -1);
      sub_24BC8EF70(&v209, "dataWindow", "box2i", &__src, 16);
      v217 = 0;
      v218 = vadd_s32(a1[4], -1);
      sub_24BC8EF70(&v209, "displayWindow", "box2i", &v217, 16);
      __src.__r_.__value_.__s.__data_[0] = 0;
      sub_24BC8EF70(&v209, "lineOrder", "lineOrder", &__src, 1);
      LODWORD(__src.__r_.__value_.__l.__data_) = 1065353216;
      sub_24BC8EF70(&v209, "pixelAspectRatio", "float", &__src, 4);
      __src.__r_.__value_.__r.__words[0] = 0;
      sub_24BC8EF70(&v209, "screenWindowCenter", "v2f", &__src, 8);
      LODWORD(__src.__r_.__value_.__l.__data_) = 1065353216;
      sub_24BC8EF70(&v209, "screenWindowWidth", "float", &__src, 4);
      if (*v52)
      {
        v53 = *(v192 + 8 * v29);
        if (*(v53 + 72))
        {
          v54 = *(v53 + 68) & 3 | 0x10;
        }

        else
        {
          v54 = *(v53 + 68) & 3;
        }

        LODWORD(__src.__r_.__value_.__r.__words[1]) = 0;
        __src.__r_.__value_.__r.__words[0] = *(v53 + 60);
        __src.__r_.__value_.__s.__data_[8] = v54;
        sub_24BC8EF70(&v209, "tiles", "tiledesc", &__src, 9);
      }

      if (v181 >= 2)
      {
        v55 = *(v192 + 8 * v29);
        v56 = strlen((v55 + 136));
        if (!v56)
        {
          sub_24BC836D4(&__src, "Invalid 'name' attribute for a multi-part file");
LABEL_260:
          v174 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
          if (v191)
          {
            if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v175 = &__src;
            }

            else
            {
              v175 = __src.__r_.__value_.__r.__words[0];
            }

            *v191 = strdup(v175);
          }

          if (v174 < 0)
          {
            operator delete(__src.__r_.__value_.__l.__data_);
          }

          sub_24BC900B8(&v212, v212.__r_.__value_.__l.__size_);
          v16 = 0;
          goto LABEL_268;
        }

        v57 = v56;
        sub_24BC836D4(&__src, (v55 + 136));
        sub_24BC8FD18(&v212, &__src.__r_.__value_.__l.__data_);
        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__src.__r_.__value_.__l.__data_);
        }

        if (v212.__r_.__value_.__r.__words[2] != v29 + 1)
        {
          sub_24BC836D4(&__src, "'name' attributes must be unique for a multi-part file");
          goto LABEL_260;
        }

        sub_24BC8EF70(&v209, "name", "string", (*(v192 + 8 * v29) + 136), v57);
        if (*v52)
        {
          v58 = "tiledimage";
        }

        else
        {
          v58 = "scanlineimage";
        }

        if (*v52)
        {
          v59 = 10;
        }

        else
        {
          v59 = 13;
        }

        sub_24BC8EF70(&v209, "type", "string", v58, v59);
        sub_24BC8EF70(&v209, "chunkCount", "int", v208[0] + 4 * v29, 4);
      }

      v60 = *(v192 + 8 * v29);
      if (*(v60 + 92) >= 1)
      {
        v61 = 0;
        v62 = 520;
        do
        {
          sub_24BC8EF70(&v209, (*(v60 + 96) + v62 - 520), (*(v60 + 96) + v62 - 264), *(*(v60 + 96) + v62 - 8), *(*(v60 + 96) + v62));
          ++v61;
          v60 = *(v192 + 8 * v29);
          v62 += 528;
        }

        while (v61 < *(v60 + 92));
      }

      __src.__r_.__value_.__s.__data_[0] = 0;
      sub_24BC8E768(&v209, &__src);
      ++v29;
    }

    while (v29 != v184);
    sub_24BC900B8(&v212, v212.__r_.__value_.__l.__size_);
    v7 = v181;
    v26 = v202;
    if (v181 >= 2)
    {
      __src.__r_.__value_.__s.__data_[0] = 0;
      sub_24BC8E768(&v209, &__src);
    }
  }

  else
  {
    sub_24BC900B8(&v212, 0);
  }

  v64 = v209;
  v63 = v210;
  sub_24BC9011C(&v217, v184);
  if (!v7)
  {
LABEL_249:
    sub_24BC836D4(&__src, "Output memory size is zero");
    v172 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
    if (v27)
    {
      if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v173 = &__src;
      }

      else
      {
        v173 = __src.__r_.__value_.__r.__words[0];
      }

      *v27 = strdup(v173);
    }

    if (v172 < 0)
    {
      operator delete(__src.__r_.__value_.__l.__data_);
    }

LABEL_256:
    v16 = 0;
    goto LABEL_257;
  }

  v179 = 0;
  v65 = &v63[v26] - v64;
  v66 = 0;
  v67 = 4 * (v7 > 1);
  do
  {
    memset(&v205, 0, sizeof(v205));
    v68 = *(v28 + 8 * v66);
    v69 = *(v68 + 124);
    if (v69 == 3)
    {
      v70 = 16;
LABEL_110:
      v196 = v70;
      goto LABEL_111;
    }

    v196 = 16;
    if (v69 != 128)
    {
      if (v69 == 4)
      {
        v70 = 32;
      }

      else
      {
        v70 = 1;
      }

      goto LABEL_110;
    }

LABEL_111:
    v71 = v206[0];
    v72 = 3 * v66;
    v182 = v66;
    v73 = *(v208[0] + v66);
    v74 = v207[0];
    v203 = &v217[24 * v66];
    sub_24BC901C0(v203, v73);
    sub_24BC91EAC(&__src, *(v68 + 120));
    v75 = *(v68 + 120);
    v200 = v68;
    if (v75)
    {
      v76 = 0;
      v77 = 0;
      v78 = __src.__r_.__value_.__r.__words[0];
      v79 = *(v68 + 128);
      do
      {
        *v78++ = v77;
        v81 = *v79++;
        v80 = v81;
        v82 = v76 + 4;
        v83 = v77 + 4;
        if (v81 == 1)
        {
          v77 += 2;
          v76 += 2;
        }

        if (v80 == 2)
        {
          v77 = v83;
          v76 = v82;
        }

        if (!v80)
        {
          v77 = v83;
          v76 = v82;
        }

        --v75;
      }

      while (v75);
      v199 = v76;
    }

    else
    {
      v199 = 0;
    }

    v84 = v203;
    v198 = (v71 + 8 * v72);
    v85 = (v74 + 32 * v182);
    v201 = &v183[6 * v182];
    v180 = v65;
    if (!*v201)
    {
      v190 = **v85;
      if (v73 < 1)
      {
        goto LABEL_196;
      }

      v129 = 0;
      v130 = 0;
      do
      {
        v194 = v130;
        v131 = 24 * v129;
        v132 = v196 * v129;
        v133 = -(v196 * v129);
        v134 = v196 + v196 * v129++;
        while (1)
        {
          v135 = v201[4].i32[1];
          v136 = v201[3];
          v137 = *v84 + v131;
          v138 = *(v137 + 8) - *v137;
          if (v138 > 7)
          {
            if (v138 != 8)
            {
              *(v137 + 8) = *v137 + 8;
            }
          }

          else
          {
            sub_24BC8F9B0(v137, 8 - v138);
          }

          v139 = v135 >= v134 ? v134 : v135;
          v140 = (*v84 + v131);
          v142 = *v140;
          v141 = v140[1];
          if ((sub_24BC90268(v140, v136, *(v200 + 128), *(v200 + 124), v201[4].i32[0], v201[4].i32[0], v132, v139 + v133, v199, v198, &__src) & 1) == 0)
          {
            break;
          }

          v143 = *v203 + v131;
          v144 = *(v143 + 8);
          v145 = *v143;
          v146 = v142 + v144;
          v84 = v203;
          *v145 = v132;
          *(*(*v203 + v131) + 4) = v146 - (v141 + v145);
          v131 += 24;
          v133 -= v196;
          v134 += v196;
          v132 += v196;
          if (++v129 - v73 == 1)
          {
            if (v194)
            {
              goto LABEL_195;
            }

LABEL_196:
            if (v73)
            {
              v27 = v191;
              v147 = *v190;
              v148 = (*v84 + 8);
              v16 = v180;
              v28 = v192;
              do
              {
                *v147++ = v16;
                v16 = v16 + v67 + *v148 - *(v148 - 1);
                v148 += 3;
                --v73;
              }

              while (v73);
              v120 = 1;
              goto LABEL_206;
            }

            v120 = 1;
            v16 = v180;
LABEL_205:
            v27 = v191;
            v28 = v192;
            goto LABEL_206;
          }
        }

        v130 = 1;
        v84 = v203;
      }

      while (v129 != v73);
LABEL_195:
      std::string::append(&v205, "Failed to encode scanline data.\n");
      v120 = 0;
      v16 = v179;
      goto LABEL_205;
    }

    v86 = v200;
    if (*(v200 + 68) == 2)
    {
      v87 = *(v85 + 7);
    }

    else
    {
      v87 = 1;
    }

    v186 = (v87 * *(v85 + 6));
    if (v186 < 1)
    {
      v120 = 1;
      v16 = v65;
      goto LABEL_206;
    }

    v193 = 0;
    v88 = 0;
    v16 = v65;
    v185 = v85;
    while (1)
    {
      if (!v201)
      {
        std::string::append(&v205, "Invalid number of tiled levels for EncodeChunk\n");
        goto LABEL_202;
      }

      v89 = v201[2].i32[0];
      v90 = v86[17];
      if (v90 == 2)
      {
        v89 += v201[2].i32[1] * *(v85 + 6);
        v92 = v193;
      }

      else
      {
        v91 = v90 == 1;
        v92 = v193;
        if (!v91)
        {
          v89 = 0;
        }
      }

      if (v92 != v89)
      {
        break;
      }

      v93 = *v85 + 24 * v92;
      v95 = *v93;
      v94 = *(v93 + 8);
      v97 = **v93;
      v96 = *(*v93 + 8);
      memset(&v212, 0, sizeof(v212));
      v98 = v201;
      if ((v86[15] > v201[4].i32[0] || v86[16] > v201[4].i32[1]) && !v201[2].i32[0] && !v201[2].i32[1])
      {
        goto LABEL_151;
      }

      v99 = (v94 - v95) >> 3;
      v187 = v96 - v97;
      v188 = 0xAAAAAAAAAAAAAAABLL * v99;
      v195 = (v96 - v97) >> 3;
      v100 = v195 * -1431655765 * v99;
      if (v100 >= 1)
      {
        v101 = 0;
        v102 = 0;
        v197 = -v100;
LABEL_140:
        v189 = v102;
        v103 = 32 * v101;
        v104 = v88 + v101++;
        v105 = 24 * v104;
        do
        {
          v106 = *v98;
          v107 = *(*v98 + v103 + 24);
          v108 = *v84;
          v109 = *v84 + v105;
          v111 = *v109;
          v110 = *(v109 + 8);
          v112 = &v110[-*v109];
          if (v112 > 0x13)
          {
            if (v112 != 20)
            {
              LODWORD(v110) = v111 + 20;
              *(v109 + 8) = v111 + 20;
            }
          }

          else
          {
            sub_24BC8F9B0(v109, 20 - v112);
            v108 = *v203;
            v113 = (*v203 + v105);
            v111 = *v113;
            v110 = v113[1];
          }

          if (!sub_24BC90268(v108 + v105, v107, *(v200 + 128), *(v200 + 124), *(*&v106 + v103 + 16), *(v200 + 60), 0, *(*&v106 + v103 + 20), v199, v198, &__src))
          {
            v102 = 1;
            v86 = v200;
            v98 = v201;
            v84 = v203;
            if (v197 + v101)
            {
              goto LABEL_140;
            }

            goto LABEL_151;
          }

          v98 = v201;
          v114 = *v203 + v105;
          v115 = *(v114 + 8);
          v116 = *v114;
          v117 = v111 + v115;
          v84 = v203;
          *v116 = (v101 - 1) % v195;
          *(*(*v203 + v105) + 4) = (v101 - 1) / v195;
          *(*(*v203 + v105) + 8) = v201[2].i32[0];
          *(*(*v203 + v105) + 12) = v201[2].i32[1];
          *(*(*v203 + v105) + 16) = v117 - (v110 + v116);
          ++v101;
          v103 += 32;
          v105 += 24;
        }

        while (v197 + v101 != 1);
        v86 = v200;
        if ((v189 & 1) == 0)
        {
          goto LABEL_160;
        }

LABEL_151:
        std::string::append(&v212, "Failed to encode tile data.\n");
        v27 = v191;
        v28 = v192;
        if ((v212.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v212.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v212.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          if ((v212.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v119 = &v212;
          }

          else
          {
            v119 = v212.__r_.__value_.__r.__words[0];
          }

          std::string::append(&v205, v119, size);
        }

        v120 = 0;
        v85 = v185;
        goto LABEL_173;
      }

LABEL_160:
      if (v188 << 32)
      {
        v121 = 0;
        v122 = v188;
        v123 = (v187 >> 3);
        v85 = v185;
        v28 = v192;
        v124 = (*v185 + 24 * v193);
        if (v123 <= 1)
        {
          v123 = 1;
        }

        if (v188 <= 1)
        {
          v122 = 1;
        }

        v125 = *v84 + 8;
        v27 = v191;
        do
        {
          if (v187 << 29)
          {
            v126 = *(*v124 + 24 * v121);
            v127 = (v125 + 24 * v88);
            v128 = v123;
            do
            {
              *v126++ = v16;
              v16 += v67 + *v127 - *(v127 - 1);
              ++v88;
              v127 += 3;
              --v128;
            }

            while (v128);
          }

          ++v121;
        }

        while (v121 != v122);
      }

      else
      {
        v27 = v191;
        v28 = v192;
        v85 = v185;
      }

      v201 = v201[1];
      v120 = 1;
LABEL_173:
      if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v212.__r_.__value_.__l.__data_);
      }

      if ((v120 & 1) == 0)
      {
        goto LABEL_203;
      }

      if (++v193 == v186)
      {
        goto LABEL_206;
      }
    }

    std::string::append(&v205, "Incorrect level ordering in tiled image\n");
LABEL_202:
    v120 = 0;
LABEL_203:
    v16 = v179;
LABEL_206:
    if (__src.__r_.__value_.__r.__words[0])
    {
      __src.__r_.__value_.__l.__size_ = __src.__r_.__value_.__r.__words[0];
      operator delete(__src.__r_.__value_.__l.__data_);
    }

    v149 = HIBYTE(v205.__r_.__value_.__r.__words[2]);
    v65 = v16;
    if (v120)
    {
LABEL_218:
      if (v149 < 0)
      {
        goto LABEL_219;
      }
    }

    else
    {
      if ((v205.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v150 = HIBYTE(v205.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v150 = v205.__r_.__value_.__l.__size_;
      }

      if (v27)
      {
        v65 = v180;
        if (v150)
        {
          if ((v205.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v151 = &v205;
          }

          else
          {
            v151 = v205.__r_.__value_.__r.__words[0];
          }

          *v27 = strdup(v151);
        }

        goto LABEL_218;
      }

      v65 = v180;
      if ((*(&v205.__r_.__value_.__s + 23) & 0x80) != 0)
      {
LABEL_219:
        operator delete(v205.__r_.__value_.__l.__data_);
      }
    }

    if ((v120 & 1) == 0)
    {
      goto LABEL_256;
    }

    v66 = v182 + 1;
    v179 = v16;
  }

  while (v182 + 1 != v184);
  v152 = v183;
  if (!v16)
  {
    goto LABEL_249;
  }

  v153 = malloc_type_malloc(v16, 0x100004077774924uLL);
  *a4 = v153;
  memcpy(v153, v209, v210 - v209);
  v154 = 0;
  v155 = (*a4 + v210 - v209);
  do
  {
    v156 = v207[0];
    v204 = v154;
    if (v152[6 * v154])
    {
      v157 = v207[0] + 32 * v154;
      if (*(*(v28 + 8 * v154) + 68) == 2)
      {
        v158 = *(v157 + 28) * *(v157 + 24);
      }

      else
      {
        v158 = *(v157 + 24);
      }

      if (v158 >= 1)
      {
        v160 = 0;
        v161 = 32 * v154;
        v162 = v158;
        do
        {
          v163 = *(*(v156 + v161) + 24 * v160);
          if (*(*(v156 + v161) + 24 * v160 + 8) != v163)
          {
            v164 = 0;
            v165 = 0;
            do
            {
              v166 = *(v163 + v164);
              v167 = *(v163 + v164 + 8) - v166;
              memcpy(v155, v166, v167);
              v155 = (v155 + v167);
              ++v165;
              v156 = v207[0];
              v163 = *(*(v207[0] + v161) + 24 * v160);
              v164 += 24;
            }

            while (v165 < 0xAAAAAAAAAAAAAAABLL * ((*(*(v207[0] + v161) + 24 * v160 + 8) - v163) >> 3));
          }

          ++v160;
        }

        while (v160 != v162);
      }
    }

    else
    {
      v159 = *(v208[0] + v154);
      memcpy(v155, ***(v207[0] + 32 * v154), 8 * v159);
      v155 += 2 * v159;
    }

    v154 = v204 + 1;
    v152 = v183;
    v28 = v192;
  }

  while (v204 + 1 != v184);
  v168 = 0;
  v169 = v208[0];
  do
  {
    if (v169[v168])
    {
      v170 = 0;
      v171 = 0;
      do
      {
        if (v181 >= 2)
        {
          *v155++ = v168;
        }

        memcpy(v155, *(*&v217[24 * v168] + v170), *(*&v217[24 * v168] + v170 + 8) - *(*&v217[24 * v168] + v170));
        v155 = (v155 + *(*&v217[24 * v168] + v170 + 8) - *(*&v217[24 * v168] + v170));
        ++v171;
        v169 = v208[0];
        v170 += 24;
      }

      while (v171 < *(v208[0] + v168));
    }

    ++v168;
  }

  while (v168 != v184);
LABEL_257:
  __src.__r_.__value_.__r.__words[0] = &v217;
  sub_24BC8EE10(&__src);
LABEL_268:
  __src.__r_.__value_.__r.__words[0] = v206;
  sub_24BC8F520(&__src);
  __src.__r_.__value_.__r.__words[0] = v207;
  sub_24BC8F364(&__src);
  if (v208[0])
  {
    v208[1] = v208[0];
    operator delete(v208[0]);
  }

  if (v209)
  {
    v210 = v209;
    operator delete(v209);
  }

LABEL_272:
  v176 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_24BC888D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41, uint64_t a42, uint64_t a43, char a44)
{
  *(v44 - 200) = v44 - 136;
  sub_24BC8EE10((v44 - 200));
  *(v44 - 200) = &a41;
  sub_24BC8F520((v44 - 200));
  *(v44 - 200) = &a44;
  sub_24BC8F364((v44 - 200));
  v46 = *(v44 - 248);
  if (v46)
  {
    *(v44 - 240) = v46;
    operator delete(v46);
  }

  v47 = *(v44 - 224);
  if (v47)
  {
    *(v44 - 216) = v47;
    operator delete(v47);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BC88A8C(int32x2_t *a1, std::string::size_type a2, char *__filename, char **a4)
{
  if (a1)
  {
    if (__filename)
    {
      v7 = *(a2 + 124);
      if ((v7 & 0x80000000) == 0)
      {
        if (v7 == 128)
        {
          sub_24BC836D4(&__p, "ZFP compression is not supported in this build");
          v8 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          if (a4)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            *a4 = strdup(p_p);
          }

          if (v8 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          return 4294967286;
        }

        v14 = fopen(__filename, "wb");
        if (v14)
        {
          v15 = v14;
          __ptr.__r_.__value_.__r.__words[0] = 0;
          __p.__r_.__value_.__r.__words[0] = a2;
          v16 = sub_24BC87604(a1, &__p, 1u, &__ptr, a4);
          if (!v16)
          {
            return 4294967284;
          }

          v17 = v16;
          v18 = __ptr.__r_.__value_.__r.__words[0];
          if (__ptr.__r_.__value_.__r.__words[0])
          {
            v19 = fwrite(__ptr.__r_.__value_.__l.__data_, 1uLL, v17, v15);
            v18 = __ptr.__r_.__value_.__r.__words[0];
          }

          else
          {
            v19 = 0;
          }

          free(v18);
          fclose(v15);
          if (v19 == v17)
          {
            return 0;
          }

          sub_24BC836D4(&__p, "Cannot write a file");
          v24 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          if (a4)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &__p;
            }

            else
            {
              v25 = __p.__r_.__value_.__r.__words[0];
            }

            *a4 = strdup(v25);
          }

          if ((v24 & 0x80000000) == 0)
          {
            return 4294967285;
          }

          v23 = __p.__r_.__value_.__r.__words[0];
        }

        else
        {
          sub_24BC836D4(&__ptr, __filename);
          v20 = std::string::insert(&__ptr, 0, "Cannot write a file: ");
          __p = *v20;
          v20->__r_.__value_.__l.__size_ = 0;
          v20->__r_.__value_.__r.__words[2] = 0;
          v20->__r_.__value_.__r.__words[0] = 0;
          v21 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          if (a4)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v22 = &__p;
            }

            else
            {
              v22 = __p.__r_.__value_.__r.__words[0];
            }

            *a4 = strdup(v22);
          }

          if (v21 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if ((SHIBYTE(__ptr.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            return 4294967285;
          }

          v23 = __ptr.__r_.__value_.__r.__words[0];
        }

        operator delete(v23);
        return 4294967285;
      }
    }
  }

  sub_24BC836D4(&__p, "Invalid argument for SaveEXRImageToFile");
  v11 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (a4)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &__p;
    }

    else
    {
      v12 = __p.__r_.__value_.__r.__words[0];
    }

    *a4 = strdup(v12);
  }

  if (v11 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 4294967293;
}

void sub_24BC88CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_24BC88CCC(int32x2_t *a1, uint64_t a2, unsigned int a3, void *a4, char **a5)
{
  if (a1 && a2 && a3 >= 2 && a4)
  {

    return sub_24BC87604(a1, a2, a3, a4, a5);
  }

  else
  {
    sub_24BC836D4(__p, "Invalid argument for SaveEXRNPartImageToMemory");
    v7 = v10;
    if (a5)
    {
      if (v10 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *a5 = strdup(v8);
    }

    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }
}

uint64_t sub_24BC88D78(int32x2_t *a1, uint64_t a2, unsigned int a3, char *__filename, char **a5)
{
  if (a1 && a2 && a3 > 1)
  {
    v10 = fopen(__filename, "wb");
    if (v10)
    {
      v11 = v10;
      __ptr.__r_.__value_.__r.__words[0] = 0;
      v12 = sub_24BC88CCC(a1, a2, a3, &__ptr, a5);
      if (!v12)
      {
        return 4294967284;
      }

      v13 = v12;
      v14 = __ptr.__r_.__value_.__r.__words[0];
      if (__ptr.__r_.__value_.__r.__words[0])
      {
        v15 = fwrite(__ptr.__r_.__value_.__l.__data_, 1uLL, v13, v11);
        v14 = __ptr.__r_.__value_.__r.__words[0];
      }

      else
      {
        v15 = 0;
      }

      free(v14);
      fclose(v11);
      if (v15 == v13)
      {
        return 0;
      }

      sub_24BC836D4(&__p, "Cannot write a file");
      v23 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if (a5)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *a5 = strdup(p_p);
      }

      if ((v23 & 0x80000000) == 0)
      {
        return 4294967285;
      }

      v22 = __p.__r_.__value_.__r.__words[0];
    }

    else
    {
      sub_24BC836D4(&__ptr, __filename);
      v19 = std::string::insert(&__ptr, 0, "Cannot write a file: ");
      __p = *v19;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      v20 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if (a5)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &__p;
        }

        else
        {
          v21 = __p.__r_.__value_.__r.__words[0];
        }

        *a5 = strdup(v21);
      }

      if (v20 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(__ptr.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 4294967285;
      }

      v22 = __ptr.__r_.__value_.__r.__words[0];
    }

    operator delete(v22);
    return 4294967285;
  }

  sub_24BC836D4(&__p, "Invalid argument for SaveEXRMultipartImageToFile");
  v16 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (a5)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = __p.__r_.__value_.__r.__words[0];
    }

    *a5 = strdup(v17);
  }

  if (v16 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 4294967293;
}

void sub_24BC88F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BC88F6C(uint64_t a1, char *__filename, char **a3)
{
  if (a1)
  {
    v6 = fopen(__filename, "rb");
    if (v6)
    {
      v7 = v6;
      fseek(v6, 0, 2);
      v8 = MEMORY[0x24C254C50](v7);
      fseek(v7, 0, 0);
      if (v8)
      {
        sub_24BC956F0(v119, v8);
        fread(v119[0], 1uLL, v8, v7);
        fclose(v7);
        v9 = v119[0];
        if (*v119[0] != 20000630)
        {
          sub_24BC836D4(__p, "Invalid magic number");
          v10 = SHIBYTE(v107[0]);
          if (a3)
          {
            if (v107[0] >= 0)
            {
              v11 = __p;
            }

            else
            {
              v11 = __p[0];
            }

            *a3 = strdup(v11);
          }

          if (v10 < 0)
          {
            operator delete(__p[0]);
          }

          v12 = 0xFFFFFFFFLL;
          goto LABEL_53;
        }

        if (*(v119[0] + 4) != 2 || *(v119[0] + 5) != 8 || *(v119[0] + 6) || *(v119[0] + 7))
        {
          sub_24BC836D4(__p, "Unsupported version or scanline");
          v23 = SHIBYTE(v107[0]);
          if (a3)
          {
            if (v107[0] >= 0)
            {
              v24 = __p;
            }

            else
            {
              v24 = __p[0];
            }

            *a3 = strdup(v24);
          }

          if (v23 < 0)
          {
            operator delete(__p[0]);
          }

          v12 = 4294967288;
          goto LABEL_53;
        }

        v26 = v119[0] + 8;
        v27 = v8 - 8;
        v28 = 1;
        v116 = 0;
        v117 = 0;
        v118 = 0;
        v103 = -1;
        v98 = -1;
        __n = -1;
        v99 = -1;
        v101 = -1;
        LODWORD(v29) = -1;
        v12 = 0xFFFFFFFFLL;
        while (v27)
        {
          if (!*v26)
          {
            v38 = v103 - __n + 1;
            v97 = v98 - v99 + 1;
            sub_24BC95764(__p, 4 * v38 * v97);
            v96 = v38;
            v39 = v38 / v28;
            if (v38 / v28 * v28 <= v103 - __n)
            {
              ++v39;
            }

            v40 = v39;
            sub_24BC95028(&v115, v39);
            v100 = v40;
            if (v40)
            {
              v41 = (v26 + 1);
              v42 = v115.__r_.__value_.__r.__words[0];
              v43 = v40;
              do
              {
                v44 = *v41++;
                *v42++ = v44;
                --v43;
              }

              while (v43);
            }

            if (v29 >= 5)
            {
              sub_24BC836D4(&v112, "Unsupported compression format");
              v93 = SHIBYTE(v114);
              if (a3)
              {
                if (v114 >= 0)
                {
                  v94 = &v112;
                }

                else
                {
                  v94 = v112;
                }

                *a3 = strdup(v94);
              }

              if (v93 < 0)
              {
                operator delete(v112);
              }

              v12 = 4294967288;
            }

            else
            {
              *(a1 + 8) = malloc_type_malloc(8 * v101, 0x80040B8603338uLL);
              if (v101 >= 1)
              {
                v45 = 0;
                do
                {
                  *(*(a1 + 8) + v45) = malloc_type_malloc(8 * v96, 0x80040B8603338uLL);
                  v45 += 8;
                }

                while (8 * v101 != v45);
              }

              *(a1 + 16) = malloc_type_malloc(8 * v96, 0x10040436913F5uLL);
              if (((v103 - __n) & 0x80000000) == 0)
              {
                v46 = 0;
                do
                {
                  *(*(a1 + 16) + 8 * v46++) = malloc_type_malloc(4 * v97, 0x100004052888210uLL);
                }

                while (v96 != v46);
              }

              if (v100)
              {
                v47 = 0;
                v48 = v97;
                if (v97 <= 1)
                {
                  v48 = 1;
                }

                v95 = v48;
                do
                {
                  v49 = &v9[*(v115.__r_.__value_.__r.__words[0] + 8 * v47)];
                  v50 = *(v49 + 4);
                  v51 = *(v49 + 12);
                  v52 = *(v49 + 20);
                  sub_24BC94F74(&v112, v97);
                  v109 = (v113 - v112);
                  if (v113 == v112)
                  {
                    sub_24BC923C0();
                  }

                  if (sub_24BC89F78(v112, &v109, v49 + 28, v50))
                  {
                    if (v97)
                    {
                      v53 = v112;
                      v54 = *(*(a1 + 16) + 8 * v47);
                      v55 = v95;
                      do
                      {
                        v56 = *v53;
                        v53 += 4;
                        *v54++ = v56;
                        --v55;
                      }

                      while (v55);
                    }

                    sub_24BC94EB0(&v109, v52);
                    v104[0] = v52;
                    if (!v52)
                    {
                      goto LABEL_133;
                    }

                    if (v110 == v109)
                    {
                      sub_24BC923C0();
                    }

                    if (!sub_24BC89F78(v109, v104, &v49[v50 + 28], v51))
                    {
                      v12 = 0;
                      v89 = 0;
                    }

                    else
                    {
LABEL_133:
                      sub_24BC94F74(v104, v101);
                      if (v101)
                      {
                        v57 = 0;
                        v59 = v101;
                        v58 = v104[0];
                        v60 = (v116 + 24);
                        do
                        {
                          *v58++ = v57;
                          v62 = *v60;
                          v60 += 10;
                          v61 = v62;
                          v63 = v57 + 2;
                          v64 = v57 + 4;
                          if (v62 == 2)
                          {
                            v57 += 4;
                          }

                          if (!v61)
                          {
                            v57 = v64;
                          }

                          if (v61 == 1)
                          {
                            v57 = v63;
                          }

                          --v59;
                        }

                        while (v59);
                        v65 = 0;
                        v66 = 0;
                        v67 = (v110 - v109) / v57;
                        do
                        {
                          *(*(*(a1 + 8) + 8 * v65) + 8 * v47) = malloc_type_malloc(4 * v67, 0x100004052888210uLL);
                          v68 = *(v116 + 40 * v65 + 24);
                          if (v68)
                          {
                            if (v68 == 1)
                            {
                              v69 = 2 * v67;
                              if (v67)
                              {
                                v70 = 0;
                                v71 = v110 - v109;
                                v72 = &v109[v66 + 1];
                                v73 = v66;
                                do
                                {
                                  if (v71 <= v73)
                                  {
                                    sub_24BC923C0();
                                  }

                                  v74 = *(v72 - 1);
                                  v75 = *v72;
                                  v72 += 2;
                                  v76 = v75;
                                  v77 = (v75 << 21) | (v74 << 13);
                                  v78 = (v75 << 21) & 0xF800000;
                                  LODWORD(v79) = (v77 & 0xFFFE000) + 939524096;
                                  if (!v78)
                                  {
                                    v79 = COERCE_FLOAT(v77 | 0x38800000) + -0.000061035;
                                  }

                                  v80 = v77 | 0x70000000;
                                  if (v78 != 260046848)
                                  {
                                    v80 = LODWORD(v79);
                                  }

                                  *(*(*(*(a1 + 8) + 8 * v65) + 8 * v47) + 4 * v70++) = v80 | v76 & 0x80000000;
                                  v73 += 2;
                                }

                                while (v67 != v70);
                                v69 = 2 * v67;
                              }

                              goto LABEL_164;
                            }

                            v69 = 4 * v67;
                            if (v67)
                            {
                              v85 = 0;
                              v86 = v110 - v109;
                              v87 = &v109[v66];
                              v88 = v66;
                              do
                              {
                                if (v86 <= v88)
                                {
                                  sub_24BC923C0();
                                }

                                *(*(*(*(a1 + 8) + 8 * v65) + 8 * v47) + 4 * v85) = *&v87[4 * v85];
                                ++v85;
                                v88 += 4;
                              }

                              while (v67 != v85);
LABEL_163:
                              v69 = 4 * v67;
                            }
                          }

                          else
                          {
                            v69 = 4 * v67;
                            if (v67)
                            {
                              v81 = 0;
                              v82 = v110 - v109;
                              v83 = &v109[v66];
                              v84 = v66;
                              do
                              {
                                if (v82 <= v84)
                                {
                                  sub_24BC923C0();
                                }

                                *(*(*(*(a1 + 8) + 8 * v65) + 8 * v47) + 4 * v81) = *&v83[4 * v81];
                                ++v81;
                                v84 += 4;
                              }

                              while (v67 != v81);
                              goto LABEL_163;
                            }
                          }

LABEL_164:
                          v66 += v69;
                          ++v65;
                        }

                        while (v65 != v101);
                      }

                      if (v104[0])
                      {
                        v104[1] = v104[0];
                        operator delete(v104[0]);
                      }

                      v89 = 1;
                    }

                    if (v109)
                    {
                      v110 = v109;
                      operator delete(v109);
                    }
                  }

                  else
                  {
                    v89 = 0;
                    v12 = 0;
                  }

                  if (v112)
                  {
                    v113 = v112;
                    operator delete(v112);
                  }

                  if ((v89 & 1) == 0)
                  {
                    goto LABEL_190;
                  }

                  ++v47;
                }

                while (v47 != v100);
              }

              *(a1 + 28) = v97;
              *(a1 + 32) = v96;
              *a1 = malloc_type_malloc(8 * v101, 0x50040EE9192B6uLL);
              if (v101)
              {
                v90 = 0;
                v91 = 0;
                do
                {
                  v92 = (v116 + v90);
                  if (*(v116 + v90 + 23) < 0)
                  {
                    v92 = *v92;
                  }

                  *(*a1 + 8 * v91++) = strdup(v92);
                  v90 += 40;
                }

                while (v101 != v91);
              }

              v12 = 0;
              *(a1 + 24) = v101;
            }

LABEL_190:
            if (v115.__r_.__value_.__r.__words[0])
            {
              v115.__r_.__value_.__l.__size_ = v115.__r_.__value_.__r.__words[0];
              operator delete(v115.__r_.__value_.__l.__data_);
            }

            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

LABEL_194:
            __p[0] = &v116;
            sub_24BC9569C(__p);
LABEL_53:
            if (v119[0])
            {
              v119[1] = v119[0];
              operator delete(v119[0]);
            }

            return v12;
          }

          memset(&v115, 0, sizeof(v115));
          v112 = 0;
          v113 = 0;
          v114 = 0;
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v108 = 0;
          if (sub_24BC89C58(&v115, &v112, &v109, &v108, v26, v27))
          {
            v26 += v108;
            v27 -= v108;
            if (!std::string::compare(&v115, "compression"))
            {
              v29 = *v109;
              if (v29 >= 5)
              {
                sub_24BC848F0(__p);
                v33 = sub_24BC95264(v107, "Unsupported compression type : ", 31);
                MEMORY[0x24C2543C0](v33, v29);
                std::stringbuf::str();
                v34 = v105;
                if (a3)
                {
                  if (v105 >= 0)
                  {
                    v35 = v104;
                  }

                  else
                  {
                    v35 = v104[0];
                  }

                  *a3 = strdup(v35);
                }

                if (v34 < 0)
                {
                  operator delete(v104[0]);
                }

                sub_24BC84B94(__p);
                v32 = 0;
                v12 = 4294967288;
                goto LABEL_92;
              }

              if (v29 == 3)
              {
                v28 = 16;
              }

LABEL_89:
              v32 = 1;
              goto LABEL_92;
            }

            if (std::string::compare(&v115, "channels"))
            {
              if (!std::string::compare(&v115, "dataWindow"))
              {
                if ((v110 - v109) <= 0xC)
                {
                  sub_24BC923C0();
                }

                v99 = *v109;
                __n = *(v109 + 1);
                v32 = 1;
                v98 = *(v109 + 2);
                v103 = *(v109 + 3);
                goto LABEL_92;
              }

              if (!std::string::compare(&v115, "displayWindow") && (v110 - v109) <= 0xC)
              {
                sub_24BC923C0();
              }

              goto LABEL_89;
            }

            if (sub_24BC89E0C(&v116, &v109))
            {
              v101 = -858993459 * ((v117 - v116) >> 3);
              if (v101 > 0)
              {
                goto LABEL_89;
              }

              sub_24BC836D4(__p, "Invalid channels format");
            }

            else
            {
              sub_24BC836D4(__p, "Failed to parse channel info");
            }

            v36 = SHIBYTE(v107[0]);
            if (a3)
            {
              if (v107[0] >= 0)
              {
                v37 = __p;
              }

              else
              {
                v37 = __p[0];
              }

              *a3 = strdup(v37);
            }

            if (v36 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            sub_24BC848F0(__p);
            sub_24BC95264(v107, "Failed to parse attribute\n", 26);
            std::stringbuf::str();
            v30 = v105;
            if (a3)
            {
              if (v105 >= 0)
              {
                v31 = v104;
              }

              else
              {
                v31 = v104[0];
              }

              *a3 = strdup(v31);
            }

            if (v30 < 0)
            {
              operator delete(v104[0]);
            }

            sub_24BC84B94(__p);
          }

          v32 = 0;
          v12 = 4294967292;
LABEL_92:
          if (v109)
          {
            v110 = v109;
            operator delete(v109);
          }

          if (SHIBYTE(v114) < 0)
          {
            operator delete(v112);
          }

          if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v115.__r_.__value_.__l.__data_);
          }

          if ((v32 & 1) == 0)
          {
            goto LABEL_194;
          }
        }

        v12 = 4294967292;
        goto LABEL_194;
      }

      fclose(v7);
      v19 = sub_24BC836D4(v119, __filename);
      v20 = std::string::insert(v19, 0, "File size is zero : ");
      v107[0] = *(&v20->__r_.__value_.__l + 2);
      *__p = *&v20->__r_.__value_.__l.__data_;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      v21 = SHIBYTE(v107[0]);
      if (a3)
      {
        if (v107[0] >= 0)
        {
          v22 = __p;
        }

        else
        {
          v22 = __p[0];
        }

        *a3 = strdup(v22);
      }

      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      if (v120 < 0)
      {
        operator delete(v119[0]);
      }

      return 4294967291;
    }

    else
    {
      v15 = sub_24BC836D4(v119, __filename);
      v16 = std::string::insert(v15, 0, "Cannot read a file ");
      v107[0] = *(&v16->__r_.__value_.__l + 2);
      *__p = *&v16->__r_.__value_.__l.__data_;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v17 = SHIBYTE(v107[0]);
      if (a3)
      {
        if (v107[0] >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        *a3 = strdup(v18);
      }

      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      if (v120 < 0)
      {
        operator delete(v119[0]);
      }

      return 4294967289;
    }
  }

  else
  {
    sub_24BC836D4(__p, "Invalid argument for LoadDeepEXR");
    v13 = SHIBYTE(v107[0]);
    if (a3)
    {
      if (v107[0] >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *a3 = strdup(v14);
    }

    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    return 4294967293;
  }
}