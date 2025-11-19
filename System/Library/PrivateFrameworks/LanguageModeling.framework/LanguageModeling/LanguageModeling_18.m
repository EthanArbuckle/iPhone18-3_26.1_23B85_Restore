uint64_t sub_1AE7057B4(uint64_t *a1, _DWORD *a2, int a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *a1 + 15;
  v6 = v5 + 20 * (a3 - 2);
  if (!*v6 || !*(v6 + 4) || !*(v6 + 8) || !*(v6 + 12))
  {
    return 0;
  }

  v7 = v5 + 20 * *(a1 + 36);
  v52 = *(v7 - 40);
  v49 = *(v7 - 28);
  v50 = *(v7 - 36);
  LODWORD(v7) = *(v6 + 17);
  v54 = 0xFFFFFFFF >> -v7;
  v8 = *(a1 + 49) + v7;
  v51 = *(a1 + 48);
  v9 = a3 - 1;
  v12 = cmph_search_packed();
  v13 = 0;
  v14 = *(v6 + 8);
  v15 = *(v6 + 12);
  v16 = *a1 + v14;
  v17 = *(v6 + 17);
  v18 = (v12 * v8);
  v19 = v18 >> 3;
  if ((v12 * v8) >> 3 < v15 && v17 != 0)
  {
    v21 = 8 - ((v12 * v8) & 7);
    if (((v12 * v8) & 7u) + v17 <= 8)
    {
      v21 = v17;
    }

    v13 = (*(v16 + v19) >> ((v12 * v8) & 7)) & (0xFFu >> (8 - v21));
    v22 = v17 - v21;
    if (v17 != v21 && v19 + 1 < v15)
    {
      v24 = v14 + *a1 + 1;
      do
      {
        if (v22 >= 8)
        {
          v25 = 8;
        }

        else
        {
          v25 = v22;
        }

        v13 |= ((0xFFu >> (8 - v25)) & *(v24 + v19)) << (v17 - v22);
        v22 -= v25;
        if (!v22)
        {
          break;
        }

        v26 = v19 + 2;
        ++v19;
      }

      while (v26 < v15);
    }
  }

  v27 = *a1;
  if (v13 != (sub_1AE7014FC(a2, v9) & v54))
  {
    return 0;
  }

  v28 = 0;
  v29 = (v50 + v49 + 3) & 0xFFFFFFFC;
  v30 = v51 + 1;
  v31 = (v18 + v17) >> 3;
  if ((v18 + v17) >> 3 >= v15)
  {
    v33 = a4;
  }

  else
  {
    v32 = *(a1 + 49);
    v33 = a4;
    if (*(a1 + 49))
    {
      v34 = ((v18 + v17) & 7u) + v32 <= 8 ? *(a1 + 49) : 8 - ((v18 + v17) & 7);
      v28 = (*(v16 + v31) >> ((v18 + v17) & 7)) & (0xFFu >> (8 - v34));
      v35 = v32 - v34;
      if (v35)
      {
        for (i = v31 + 1; i < v15; ++i)
        {
          if (v35 >= 8)
          {
            v37 = 8;
          }

          else
          {
            v37 = v35;
          }

          v28 |= ((0xFFu >> (8 - v37)) & *(v16 + i)) << (v32 - v35);
          v35 -= v37;
          if (!v35)
          {
            break;
          }
        }
      }
    }
  }

  v39 = (v51 + 8) >> 3;
  v40 = v28;
  v41 = (v4 + v52 + v29 + v28);
  if (v30 >= 8)
  {
    v42 = 8;
  }

  else
  {
    v42 = v51 + 1;
  }

  v43 = (0xFFu >> (8 - v42)) & *v41;
  v44 = v30 - v42;
  if (v44 && v51 >= 8)
  {
    v45 = 0;
    v46 = v29 + v40 + v52 + v4 + 1;
    do
    {
      if (v44 >= 8)
      {
        v47 = 8;
      }

      else
      {
        v47 = v44;
      }

      v43 |= ((0xFFu >> (8 - v47)) & *(v46 + v45)) << (v30 - v44);
      v44 -= v47;
      if (!v44)
      {
        break;
      }

      v48 = v45 + 2;
      ++v45;
    }

    while (v48 < v39);
  }

  if (v33)
  {
    *v33 = (v41 + v39 - v27);
    *(v33 + 8) = v43;
    *(v33 + 12) = v43;
  }

  return 1;
}

uint64_t sub_1AE705AD8(uint64_t *a1, unsigned int a2, _DWORD *a3, _BYTE *a4)
{
  if (*(a1 + 3) < a2)
  {
    return 0;
  }

  v5 = *a1;
  v6 = *a1 + 55;
  v7 = *(v6 + (a2 >> 2));
  if ((a2 & 3) != 0)
  {
    LOBYTE(v7) = v7 >> (2 * (a2 & 3));
  }

  v8 = v7 & 3;
  if (v8 > 1)
  {
    v10 = 16 * *(a1 + 56);
    if (v8 == 2)
    {
      v11 = *(v5 + 15);
      if (v11)
      {
        v12 = *(v5 + 23);
        if (v12)
        {
          if (*(v5 + 27))
          {
            v13 = v5 + v11;
            if (*(a1 + 56))
            {
              if (v10 <= a2)
              {
                v14 = *(v13 + 4 * (a2 / v10 - 1));
                v15 = a2 % v10;
              }

              else
              {
                v14 = 0;
                v15 = a2;
              }

              for (; v15; v15 = v28 - v29)
              {
                v27 = *(v6 + ((a2 - v15) >> 2));
                v28 = v15 - 1;
                if (v28 >= 0xF)
                {
                  v29 = 15;
                }

                else
                {
                  v29 = v28;
                }

                v30 = v29 + 1;
                do
                {
                  if ((v27 & 3) == 2)
                  {
                    ++v14;
                  }

                  v27 >>= 2;
                  --v30;
                }

                while (v30);
              }
            }

            else
            {
              v22 = a3;
              v23 = a4;
              v14 = cmph_search_packed();
              a3 = v22;
              a4 = v23;
              v12 = *(v5 + 23);
              v5 = *a1;
            }

            if (a3)
            {
              *a3 = 0;
            }

            if (!a4)
            {
              return 1;
            }

            v31 = (v5 + v12 + 2 * v14);
            v32 = *v31;
            v9 = v31 + 1;
            *a4 = v32;
            goto LABEL_11;
          }
        }
      }
    }

    else
    {
      v16 = *(v5 + 35);
      if (v16)
      {
        v17 = *(v5 + 43);
        if (v17)
        {
          if (*(v5 + 47))
          {
            v18 = v5 + v16;
            if (*(a1 + 56))
            {
              if (v10 <= a2)
              {
                v19 = *(v18 + 4 * (a2 / v10 - 1));
                v20 = a2 % v10;
              }

              else
              {
                v19 = 0;
                v20 = a2;
              }

              for (; v20; v20 = v34 - v35)
              {
                v33 = *(v6 + ((a2 - v20) >> 2));
                v34 = v20 - 1;
                if (v34 >= 0xF)
                {
                  v35 = 15;
                }

                else
                {
                  v35 = v34;
                }

                v36 = v35 + 1;
                do
                {
                  if ((~v33 & 3) == 0)
                  {
                    ++v19;
                  }

                  v33 >>= 2;
                  --v36;
                }

                while (v36);
              }
            }

            else
            {
              v25 = a3;
              v26 = a4;
              v19 = cmph_search_packed();
              a3 = v25;
              a4 = v26;
              v17 = *(v5 + 43);
              v5 = *a1;
            }

            v37 = v5 + v17;
            if (a3)
            {
              *a3 = *(v37 + 6 * v19);
            }

            if (!a4)
            {
              return 1;
            }

            v38 = v37 + 6 * v19;
            *a4 = *(v38 + 4);
            v9 = (v38 + 5);
            goto LABEL_11;
          }
        }
      }
    }
  }

  else if (v8)
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (!a4)
    {
      return 1;
    }

    *a4 = *(a1 + 57);
    v9 = a1 + 58;
LABEL_11:
    a4[1] = *v9;
    return 1;
  }

  return 0;
}

void sub_1AE705D64(uint64_t *a1, unsigned int *a2, unsigned int a3)
{
  v12 = 0;
  v5 = *a1;
  v6 = *(v5 + 32);
  if (v6 != 5)
  {
    if (v6 == 4)
    {
      if (a3 && *(v5 + 36) > a3)
      {
        v8 = 0;
        v9 = *(v5 + 12);
        do
        {
          v10 = a2[v8++];
        }

        while (v10 <= v9 && v8 < a3);
        if (v10 <= v9 && sub_1AE7057B4(v5, a2, a3 + 1, &v13))
        {
          operator new();
        }
      }

LABEL_24:
      operator new();
    }

    if (v6 != 3)
    {
      goto LABEL_24;
    }
  }

  if (!a3)
  {
    operator new();
  }

  if (*(v5 + 36) >= 2u && sub_1AE704F44(v5, a2, 2u, &v14, &v12, 0))
  {
    if (a3 == 1)
    {
      operator new();
    }

    if (*(*a1 + 36) > a3)
    {
      if (sub_1AE704F44(*a1, a2, a3 + 1, &v13, &v12, 0))
      {
        operator new();
      }
    }
  }

  goto LABEL_24;
}

void sub_1AE706058(void *a1)
{
  *a1 = &unk_1F242E840;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE7060CC(void *result)
{
  *result = &unk_1F242E840;
  v1 = result[2];
  if (v1)
  {
    result[3] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_1AE706124(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 92) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 88);
  if (v2 >= *(a1 + 76))
  {
    v5 = *(a1 + 16) + 5 * v2;
    result = *v5;
    LOBYTE(v5) = *(v5 + 4);
  }

  else
  {
    v3 = *(*(a1 + 8) + 16);
    v4 = v3 + 8;
    v5 = *(a1 + 80);
    if (*(*(a1 + 8) + 16))
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v8 = v4 * v2;
      v9 = (v5 + 4 * (v8 >> 5));
      v10 = *v9 >> v8;
      if ((v8 & 0x1F) + v3 >= 0x21)
      {
        v10 |= v9[1] << -(v8 & 0x1F);
      }

      result = v10 & (0xFFFFFFFF >> -v3);
      goto LABEL_16;
    }

    result = 0;
    if (v5)
    {
      v8 = v4 * v2;
LABEL_16:
      v11 = v8 + v3;
      v12 = (v8 + v3) & 0x1F;
      v13 = (v5 + 4 * (v11 >> 5));
      LODWORD(v5) = *v13 >> v11;
      if (v12 >= 0x19)
      {
        LODWORD(v5) = (v13[1] << -v12) | v5;
      }
    }
  }

  if (a2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AE70620C(uint64_t a1)
{
  if (*(a1 + 92))
  {
    v1 = *(a1 + 88) + 1;
    v2 = *(a1 + 76);
    if (v1 == v2)
    {
      v3 = a1;
      sub_1AE7043EC(a1);
      a1 = v3;
      v2 = *(v3 + 76);
      v1 = *(v3 + 88) + 1;
    }

    if (v1 < v2 || v1 < *(a1 + 48))
    {
      *(a1 + 88) = v1;
      return 1;
    }
  }

  else
  {
    *(a1 + 92) = 1;
    if (*(a1 + 76))
    {
      return 1;
    }

    v4 = a1;
    sub_1AE7043EC(a1);
    if (*(v4 + 48))
    {
      return 1;
    }
  }

  return 0;
}

void sub_1AE7062AC(void *a1)
{
  *a1 = &unk_1F242E7F0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE706320(void *result)
{
  *result = &unk_1F242E7F0;
  v1 = result[2];
  if (v1)
  {
    result[3] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_1AE706378(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 92) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 88);
  if (v2 >= *(a1 + 76))
  {
    v5 = *(a1 + 16) + 5 * v2;
    result = *v5;
    LOBYTE(v5) = *(v5 + 4);
  }

  else
  {
    v3 = *(*(a1 + 8) + 16);
    v4 = v3 + 8;
    v5 = *(a1 + 80);
    if (*(*(a1 + 8) + 16))
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v8 = v4 * v2;
      v9 = (v5 + 4 * (v8 >> 5));
      v10 = *v9 >> v8;
      if ((v8 & 0x1F) + v3 >= 0x21)
      {
        v10 |= v9[1] << -(v8 & 0x1F);
      }

      result = v10 & (0xFFFFFFFF >> -v3);
      goto LABEL_16;
    }

    result = 0;
    if (v5)
    {
      v8 = v4 * v2;
LABEL_16:
      v11 = v8 + v3;
      v12 = (v8 + v3) & 0x1F;
      v13 = (v5 + 4 * (v11 >> 5));
      LODWORD(v5) = *v13 >> v11;
      if (v12 >= 0x19)
      {
        LODWORD(v5) = (v13[1] << -v12) | v5;
      }
    }
  }

  if (a2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AE706460(uint64_t a1)
{
  if (*(a1 + 92))
  {
    v1 = *(a1 + 88) + 1;
    v2 = *(a1 + 76);
    if (v1 == v2)
    {
      v3 = a1;
      sub_1AE704040(a1);
      a1 = v3;
      v2 = *(v3 + 76);
      v1 = *(v3 + 88) + 1;
    }

    if (v1 < v2 || v1 < *(a1 + 48))
    {
      *(a1 + 88) = v1;
      return 1;
    }
  }

  else
  {
    *(a1 + 92) = 1;
    if (*(a1 + 76))
    {
      return 1;
    }

    v4 = a1;
    sub_1AE704040(a1);
    if (*(v4 + 48))
    {
      return 1;
    }
  }

  return 0;
}

void sub_1AE706500(void *a1)
{
  *a1 = &unk_1F242E7A0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE706574(void *result)
{
  *result = &unk_1F242E7A0;
  v1 = result[2];
  if (v1)
  {
    result[3] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_1AE7065CC(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 92) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 88);
  if (v2 >= *(a1 + 76))
  {
    v5 = *(a1 + 16) + 5 * v2;
    result = *v5;
    LOBYTE(v5) = *(v5 + 4);
  }

  else
  {
    v3 = *(*(a1 + 8) + 16);
    v4 = v3 + 8;
    v5 = *(a1 + 80);
    if (*(*(a1 + 8) + 16))
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v8 = v4 * v2;
      v9 = (v5 + 4 * (v8 >> 5));
      v10 = *v9 >> v8;
      if ((v8 & 0x1F) + v3 >= 0x21)
      {
        v10 |= v9[1] << -(v8 & 0x1F);
      }

      result = v10 & (0xFFFFFFFF >> -v3);
      goto LABEL_16;
    }

    result = 0;
    if (v5)
    {
      v8 = v4 * v2;
LABEL_16:
      v11 = v8 + v3;
      v12 = (v8 + v3) & 0x1F;
      v13 = (v5 + 4 * (v11 >> 5));
      LODWORD(v5) = *v13 >> v11;
      if (v12 >= 0x19)
      {
        LODWORD(v5) = (v13[1] << -v12) | v5;
      }
    }
  }

  if (a2)
  {
    *a2 = v5;
  }

  return result;
}

BOOL sub_1AE7066B4(uint64_t a1)
{
  if ((*(a1 + 92) & 1) == 0)
  {
    *(a1 + 92) = 1;
    v4 = *(a1 + 8);
    v5 = *(v4 + 50) & 0xF;
    if (!v5)
    {
      goto LABEL_29;
    }

    if (*(a1 + 72) != 1)
    {
      goto LABEL_29;
    }

    v6 = *(a1 + 40);
    if (!v6)
    {
      goto LABEL_29;
    }

    v7 = *(a1 + 56);
    if (v7 < 2)
    {
      goto LABEL_29;
    }

    v8 = *v4;
    if (*v4)
    {
      v9 = *(v8 + v7) & 0x7FFF;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(v4 + 16);
    v11 = v9 & 0x1F;
    if (v11 >= 2 && (v12 = (v9 >> 5) & 0x1F) != 0)
    {
      if (!v8)
      {
        goto LABEL_29;
      }

      v13 = v10 - v11;
      v14 = v8 + v6;
      v15 = *(v4 + 36);
      v16 = (5 * v15 + (v9 >> 10) + 7) >> 3;
      if (v15 <= 3)
      {
        v16 = 2;
      }

      v17 = (v12 << v13) - v12;
      v18 = (v14 + v16 + 4 * (v17 >> 5));
      v19 = *v18 >> v17;
      if ((v17 & 0x1F) + v12 >= 0x21)
      {
        v19 |= v18[1] << -(v17 & 0x1F);
      }

      if ((v19 & (0xFFFFFFFF >> -v12)) < 0x201)
      {
LABEL_29:
        if (*(a1 + 76))
        {
          return 1;
        }

        sub_1AE703A74(a1);
        return *(a1 + 48) != 0;
      }

      v20 = (((v10 + 8) << v5) + 7) >> 3;
      v24 = 0;
      v21 = (v8 + *(v4 + 52));
    }

    else
    {
      if (v11 != 1)
      {
        goto LABEL_29;
      }

      v20 = (((v10 + 8) << v5) + 7) >> 3;
      v24 = 0;
      v21 = (v8 + *(v4 + 52));
      if (!v8)
      {
        v22 = 0;
LABEL_27:
        if (sub_1AE703880(v8, **(a1 + 64), (v21 - v8 + 4), v22, v10, v10, &v24))
        {
          *(a1 + 80) = v21 + ((v22 * v10 + 7) >> 3) + v24 * v20 + 4;
          *(a1 + 76) = 1 << v5;
        }

        goto LABEL_29;
      }
    }

    v22 = *v21;
    goto LABEL_27;
  }

  v2 = *(a1 + 88) + 1;
  v3 = *(a1 + 76);
  if (v2 == v3)
  {
    sub_1AE703A74(a1);
    v3 = *(a1 + 76);
    v2 = *(a1 + 88) + 1;
  }

  if (v2 >= v3 && v2 >= *(a1 + 48))
  {
    return 0;
  }

  *(a1 + 88) = v2;
  return 1;
}

void sub_1AE706900(void *a1)
{
  *a1 = &unk_1F242E750;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE706974(void *result)
{
  *result = &unk_1F242E750;
  v1 = result[2];
  if (v1)
  {
    result[3] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_1AE7069CC(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 92) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 88);
  if (v2 >= *(a1 + 76))
  {
    v5 = *(a1 + 16) + 5 * v2;
    result = *v5;
    LOBYTE(v5) = *(v5 + 4);
  }

  else
  {
    v3 = *(*(a1 + 8) + 16);
    v4 = v3 + 8;
    v5 = *(a1 + 80);
    if (*(*(a1 + 8) + 16))
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v8 = v4 * v2;
      v9 = (v5 + 4 * (v8 >> 5));
      v10 = *v9 >> v8;
      if ((v8 & 0x1F) + v3 >= 0x21)
      {
        v10 |= v9[1] << -(v8 & 0x1F);
      }

      result = v10 & (0xFFFFFFFF >> -v3);
      goto LABEL_16;
    }

    result = 0;
    if (v5)
    {
      v8 = v4 * v2;
LABEL_16:
      v11 = v8 + v3;
      v12 = (v8 + v3) & 0x1F;
      v13 = (v5 + 4 * (v11 >> 5));
      LODWORD(v5) = *v13 >> v11;
      if (v12 >= 0x19)
      {
        LODWORD(v5) = (v13[1] << -v12) | v5;
      }
    }
  }

  if (a2)
  {
    *a2 = v5;
  }

  return result;
}

BOOL sub_1AE706AB4(uint64_t a1)
{
  if ((*(a1 + 92) & 1) == 0)
  {
    *(a1 + 92) = 1;
    v4 = *(a1 + 8);
    if ((*(v4 + 50) & 0x10) != 0 && (v5 = *(v4 + 50) & 0xF) != 0 && !*(a1 + 72))
    {
      v8 = *(v4 + 16);
      v9 = 1 << v5;
      v10 = (((v8 + 8) << v5) + 7) >> 3;
      v11 = *v4;
      v12 = (*v4 + *(v4 + 13));
      if (v11)
      {
        LODWORD(v11) = *v12;
      }

      *(a1 + 80) = v12 + ((v11 * v8 + 7) >> 3) + v11 * v10 + 4;
      *(a1 + 76) = v9;
      if (*(a1 + 76))
      {
        return 1;
      }
    }

    else if (*(a1 + 76))
    {
      return 1;
    }

    v6 = a1;
    sub_1AE701624(a1);
    return *(v6 + 48) != 0;
  }

  v1 = *(a1 + 88) + 1;
  v2 = *(a1 + 76);
  if (v1 == v2)
  {
    v3 = a1;
    sub_1AE701624(a1);
    a1 = v3;
    v2 = *(v3 + 76);
    v1 = *(v3 + 88) + 1;
  }

  if (v1 >= v2 && v1 >= *(a1 + 48))
  {
    return 0;
  }

  *(a1 + 88) = v1;
  return 1;
}

uint64_t sub_1AE706BC0(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v4 = *(a1 + 64);
  if (!v4)
  {
    __assert_rtn("getPrediction", "LMMultilingualDynamicLanguageModel.cpp", 510, "m_currentEnumerator");
  }

  v7 = (*(*v4 + 24))(v4);
  *(a3 + 116) = 10;
  sub_1AE70C43C(a1 + 72, a2, v7);
  return v7;
}

uint64_t sub_1AE706C5C(void *a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (a1[7] < 1)
  {
    return 0;
  }

  v2 = a1 + 10;
  while (1)
  {
    while (1)
    {
      v3 = a1[8];
      if (!v3)
      {
        if (!a1[1])
        {
          __assert_rtn("operator->", "LMThreadSafetyUtils.hpp", 30, "m_value");
        }

        if (a1[5])
        {
          operator new();
        }

        v3 = 0;
        a1[8] = 0;
      }

      if ((*(*v3 + 16))(v3))
      {
        break;
      }

      v13 = a1[8];
      a1[8] = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }

      v14 = a1[7];
      a1[7] = v14 - 1;
      if (v14 - 1 <= 0)
      {
        return 0;
      }
    }

    MEMORY[0x1EEE9AC00]();
    v5 = (v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v6 = (*(*a1[8] + 24))(a1[8], v5, 0);
    if (v6 == 1)
    {
      break;
    }

    sub_1AE74EEE8(a1[12], v5, 4 * v6, 0, 0);
    if ((v15 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_3:
    if (a1[7] <= 0)
    {
      return 0;
    }
  }

  v7 = *v2;
  if (!*v2)
  {
    goto LABEL_25;
  }

  v8 = *v5;
  v9 = v2;
  do
  {
    v10 = *(v7 + 28);
    v11 = v10 >= v8;
    v12 = v10 < v8;
    if (v11)
    {
      v9 = v7;
    }

    v7 = *(v7 + 8 * v12);
  }

  while (v7);
  if (v9 != v2 && v8 >= *(v9 + 7))
  {
    goto LABEL_3;
  }

LABEL_24:
  if (!v6)
  {
    return 1;
  }

LABEL_25:
  v16 = v5 + 1;
  while (1)
  {
    v19 = *(v16 - 1);
    if ((v19 - 3) <= 0x1F0)
    {
      break;
    }

    LOBYTE(v17) = 0;
LABEL_27:
    if (v16++ == &v5[v6])
    {
      goto LABEL_31;
    }
  }

  v20 = v19 - 68;
  if (v20 > 0x3C)
  {
    goto LABEL_3;
  }

  v17 = 0x7FFFFFFFFFFFFE0uLL >> v20;
  if ((v17 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_31:
  if (v17)
  {
    goto LABEL_3;
  }

  return 1;
}

void sub_1AE706F84(uint64_t a1)
{
  *a1 = &unk_1F242E890;
  sub_1AE70C3B8(a1 + 72);
  v2 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 24) == 1)
  {
    std::recursive_mutex::unlock(*(a1 + 16));
  }

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE70702C(uint64_t a1)
{
  *a1 = &unk_1F242E890;
  sub_1AE70C3B8(a1 + 72);
  v2 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 24) == 1)
  {
    std::recursive_mutex::unlock(*(a1 + 16));
  }

  return a1;
}

void **sub_1AE7070B4(void **a1)
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
        v5 = *(v3 - 1);
        if (v5)
        {
          CFRelease(v5);
        }

        *(v3 - 1) = 0;
        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

os_log_t sub_1AE707130()
{
  result = os_log_create("com.apple.LanguageModeling", "MultilingualDynamicLanguageModel");
  qword_1EB5E09F8 = result;
  return result;
}

void sub_1AE707160(uint64_t a1, uint64_t a2, const void *a3)
{
  v114 = *MEMORY[0x1E69E9840];
  std::recursive_mutex::lock(a1);
  v97 = a1;
  v6 = *(a1 + 152);
  v7 = *(a1 + 160);
  if (v6 != v7)
  {
    while (*v6 != a2)
    {
      v6 += 2;
      if (v6 == v7)
      {
        goto LABEL_12;
      }
    }
  }

  if (v6 != v7)
  {
    if (a3)
    {
      if (CFArrayGetCount(a3))
      {
        v8 = v97;
        if (v6[1] != a3)
        {
          CFRetain(a3);
          v9 = v6[1];
          if (v9)
          {
            CFRelease(v9);
          }

          v6[1] = a3;
          v8 = v97;
        }

        goto LABEL_61;
      }

      v7 = *&v97[2].__m_.__opaque[24];
    }

    v19 = *v6;
    *v6 = *(v7 - 2);
    *(v7 - 2) = v19;
    v20 = v6[1];
    v6[1] = 0;
    v21 = *(v7 - 1);
    *(v7 - 1) = 0;
    v22 = v6[1];
    if (v22)
    {
      CFRelease(v22);
    }

    v6[1] = v21;
    v23 = *(v7 - 1);
    if (v23)
    {
      CFRelease(v23);
    }

    *(v7 - 1) = v20;
    v24 = *&v97[2].__m_.__opaque[24];
    v25 = *(v24 - 8);
    if (v25)
    {
      CFRelease(v25);
    }

    *(v24 - 8) = 0;
    v8 = v97;
    *&v97[2].__m_.__opaque[24] = v24 - 16;
    goto LABEL_61;
  }

LABEL_12:
  if (!a3 || !CFArrayGetCount(a3))
  {
    goto LABEL_143;
  }

  CFRetain(a3);
  v11 = *&v97[2].__m_.__opaque[24];
  v10 = *&v97[2].__m_.__opaque[32];
  *&__dst = a3;
  if (v11 >= v10)
  {
    v13 = *&v97[2].__m_.__opaque[16];
    v14 = v11 - v13;
    v15 = (v11 - v13) >> 4;
    v16 = v15 + 1;
    if ((v15 + 1) >> 60)
    {
      sub_1AE5CBB70();
    }

    v17 = v10 - v13;
    if (v17 >> 3 > v16)
    {
      v16 = v17 >> 3;
    }

    if (v17 >= 0x7FFFFFFFFFFFFFF0)
    {
      v18 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (!(v18 >> 60))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v26 = (v11 - v13) >> 4;
    v27 = (16 * v15);
    *&__dst = 0;
    *v27 = a2;
    v27[1] = a3;
    v28 = &v27[-2 * v26];
    if (v13 == v11)
    {
      v33 = v97;
LABEL_58:
      v12 = v27 + 2;
      *&v33[2].__m_.__opaque[16] = v28;
      *&v33[2].__m_.__opaque[24] = v27 + 2;
      *&v33[2].__m_.__opaque[32] = 0;
      if (v13)
      {
        operator delete(v13);
      }

      goto LABEL_60;
    }

    v29 = v11 - v13 - 16;
    v30 = v13;
    v31 = &v27[-2 * v26];
    if (v29 >= 0x150)
    {
      v34 = 16 * v26;
      v35 = v14 + (v29 & 0xFFFFFFFFFFFFFFF0) - v34;
      v36 = v14 - v34 + 8;
      v37 = (v13 + 8) >= v35 + 16 || v36 >= &v13[(v29 & 0xFFFFFFFFFFFFFFF0) + 16];
      v38 = !v37;
      v39 = v13 >= v35 + 8 || v28 >= &v13[(v29 & 0xFFFFFFFFFFFFFFF0) + 8];
      v30 = v13;
      v31 = v28;
      if (v39)
      {
        v30 = v13;
        v31 = v28;
        if (!v38)
        {
          v40 = (v29 >> 4) + 1;
          v41 = 16 * (v40 & 0x1FFFFFFFFFFFFFFELL);
          v30 = &v13[v41];
          v42 = v28;
          v43 = v13;
          v44 = v40 & 0x1FFFFFFFFFFFFFFELL;
          do
          {
            v45 = *v43;
            v46 = *(v43 + 1);
            *(v43 + 1) = 0;
            *(v43 + 3) = 0;
            *v42 = v45;
            v42[1] = v46;
            v42 += 2;
            v43 += 32;
            v44 -= 2;
          }

          while (v44);
          if (v40 == (v40 & 0x1FFFFFFFFFFFFFFELL))
          {
            goto LABEL_55;
          }

          v31 = (v28 + v41);
        }
      }
    }

    do
    {
      v32 = *v30;
      *(v30 + 1) = 0;
      *v31++ = v32;
      v30 += 16;
    }

    while (v30 != v11);
    do
    {
LABEL_55:
      v47 = *(v13 + 1);
      if (v47)
      {
        CFRelease(v47);
      }

      *(v13 + 1) = 0;
      v13 += 16;
    }

    while (v13 != v11);
    v33 = v97;
    v13 = *&v97[2].__m_.__opaque[16];
    goto LABEL_58;
  }

  *v11 = a2;
  *(v11 + 1) = a3;
  v12 = v11 + 16;
LABEL_60:
  v8 = v97;
  *&v97[2].__m_.__opaque[24] = v12;
LABEL_61:
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v48 = *&v8[2].__m_.__opaque[16];
  v95 = *&v8[2].__m_.__opaque[24];
  if (v48 != v95)
  {
    v49 = 0;
    while (1)
    {
      sub_1AE65B084(&__dst, *(v48 + 8));
      v50 = __dst;
      if (__dst)
      {
        break;
      }

LABEL_64:
      v48 += 16;
      if (v48 == v95)
      {
        goto LABEL_98;
      }
    }

    Count = CFArrayGetCount(__dst);
    v52 = Count;
    v53 = __dst;
    if (__dst)
    {
      v99 = CFArrayGetCount(__dst);
      v96 = v48;
      if (v52)
      {
        goto LABEL_70;
      }

      goto LABEL_95;
    }

    v99 = 0;
    v96 = v48;
    if (!Count)
    {
LABEL_95:
      if (__dst)
      {
        CFRelease(__dst);
      }

      v48 = v96;
      goto LABEL_64;
    }

LABEL_70:
    v54 = 0;
    v98 = v53;
    while (1)
    {
      if (v50 == v53 && v54 == v99)
      {
        goto LABEL_95;
      }

      if (CFArrayGetCount(v50) <= v54 || (ValueAtIndex = CFArrayGetValueAtIndex(v50, v54), (v56 = ValueAtIndex) == 0))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](exception, "Could not find item");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      CFRetain(ValueAtIndex);
      *buf = v56;
      if (((v49 >> 3) + 1) >> 61)
      {
        sub_1AE5CBB70();
      }

      if (v49 >> 3 != -1)
      {
        if (!(((v49 >> 3) + 1) >> 61))
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      CFRetain(v56);
      v57 = (8 * (v49 >> 3));
      *v57 = v56;
      v58 = (v57 + 1);
      if (v49)
      {
        break;
      }

LABEL_93:
      v100 = 0;
      v102 = 0;
      v49 = v58;
      v53 = v98;
      v101 = v58;
      if (*buf)
      {
        CFRelease(*buf);
      }

      if (++v54 == v52)
      {
        goto LABEL_95;
      }
    }

    v59 = v49 - 8;
    v60 = 0;
    v61 = 0;
    if ((v49 - 8) >= 0x38)
    {
      if ((v59 & 0xFFFFFFFFFFFFFFF8) == 0xFFFFFFFFFFFFFFF8)
      {
        v62 = (v59 >> 3) + 1;
        v60 = (8 * (v62 & 0x3FFFFFFFFFFFFFFCLL));
        v63 = 16;
        v64 = 0;
        v65 = v62 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v66 = v64[1];
          *(v63 - 16) = *v64;
          *v63 = v66;
          *v64 = 0uLL;
          v64[1] = 0uLL;
          v64 += 2;
          v63 += 32;
          v65 -= 4;
        }

        while (v65);
        if (v62 == (v62 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_89:
          for (i = 0; i != v49; ++i)
          {
            if (*i)
            {
              CFRelease(*i);
            }
          }

          goto LABEL_93;
        }

        v61 = (8 * (v62 & 0x3FFFFFFFFFFFFFFCLL));
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }
    }

    do
    {
      *v61++ = *v60;
      *v60++ = 0;
    }

    while (v60 != v49);
    goto LABEL_89;
  }

LABEL_98:
  v68 = sub_1AE65ADC4(&v100);
  v69 = *&v97[1].__m_.__opaque[32];
  for (j = *&v97[1].__m_.__opaque[40]; j != v69; j -= 16)
  {
    v71 = *(j - 8);
    if (v71 && !atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v71->__on_zero_shared)(v71);
      std::__shared_weak_count::__release_weak(v71);
    }
  }

  *&v97[1].__m_.__opaque[40] = v69;
  if (v68)
  {
    v72 = CFArrayGetCount(v68);
    v73 = CFArrayGetCount(v68);
    if (v72)
    {
      if (v73)
      {
        sub_1AE65B144(buf, v68, 0);
        operator new();
      }
    }
  }

  v74 = *&v97[2].__m_.__opaque[40];
  if (v74)
  {
    CFRelease(v74);
  }

  *&v97[2].__m_.__opaque[40] = v68;
  if (v97[2].__m_.__opaque[48])
  {
    if (v68)
    {
      sig = v97[2].__m_.__sig;
      CFRetain(v68);
      *buf = v68;
      v76 = CFGetTypeID(v68);
      if (v76 != CFArrayGetTypeID())
      {
        v94 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v94, "Could not construct");
        __cxa_throw(v94, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v77 = *buf;
      if (*buf)
      {
        TypeID = CFArrayGetTypeID();
        if (TypeID == CFGetTypeID(v77))
        {
          v79 = CFArrayGetCount(v77);
          v106 = 0;
          v107 = 0;
          v108 = 0;
          sub_1AE68B1A0(&v106, v79);
          if (v79 >= 1)
          {
            v80 = 0;
            v81 = v79 & 0x7FFFFFFF;
            do
            {
              v82 = CFArrayGetValueAtIndex(v77, v80);
              v83 = v82;
              if (v82)
              {
                CFRetain(v82);
              }

              *&__dst = v83;
              v84 = v107;
              if (v107 < v108)
              {
                *v107 = v83;
                v107 = v84 + 1;
              }

              else
              {
                v107 = sub_1AE68AE94(&v106, &__dst);
                if (__dst)
                {
                  CFRelease(__dst);
                }
              }

              ++v80;
            }

            while (v81 != v80);
          }

          if (*buf)
          {
            CFRelease(*buf);
          }

          v104 = 1;
          LOWORD(v103) = 42;
          sub_1AE68A838(&v105, sig, &v103);
        }

        v93 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x1B2705EB0](v93, "Could not convert");
LABEL_151:
        __cxa_throw(v93, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      *buf = 0;
    }

    v93 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v93, "Could not construct");
    goto LABEL_151;
  }

  v85 = MEMORY[0x1B2705500](*(v97[1].__m_.__sig + 8));
  sub_1AE70C58C(&__dst, *&v97[2].__m_.__opaque[40]);
  if (qword_1EB5E09E0 != -1)
  {
    dispatch_once(&qword_1EB5E09E0, &unk_1F242E8C8);
  }

  v86 = qword_1EB5E09F8;
  if (os_log_type_enabled(qword_1EB5E09F8, OS_LOG_TYPE_DEFAULT))
  {
    p_dst = &__dst;
    if (v110 < 0)
    {
      p_dst = __dst;
    }

    *buf = 138412546;
    *&buf[4] = v85;
    buf_12 = 2080;
    buf_14 = p_dst;
    _os_log_impl(&dword_1AE5C8000, v86, OS_LOG_TYPE_DEFAULT, "Reloading MultilingualDynamicLanguageModel (%@) for locale(s) (%s)", buf, 0x16u);
  }

  sub_1AE70D1C4(v97[1].__m_.__sig, *&v97[1].__m_.__opaque[8], 1, &v97[1].__m_.__opaque[32]);
  if (SHIBYTE(v110) < 0)
  {
    operator delete(__dst);
  }

  if (*&v97[1].__m_.__opaque[32] != *&v97[1].__m_.__opaque[40])
  {
    (*(**(*&v97[2].__m_.__opaque[8] + 8) + 72))(*(*&v97[2].__m_.__opaque[8] + 8), *&v97[1].__m_.__opaque[16] + 88);
    operator new();
  }

  v88 = v100;
  if (v100)
  {
    for (k = v101; k != v88; k -= 8)
    {
      v91 = *(k - 1);
      v90 = v91;
      if (v91)
      {
        CFRelease(v90);
      }
    }

    operator delete(v88);
  }

LABEL_143:
  std::recursive_mutex::unlock(v97);
}

void sub_1AE70916C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::recursive_mutex *a14, uint64_t a15, uint64_t a16, const void *a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, char a53, uint64_t a54, char a55, uint64_t a56, char a57)
{
  *(v58 - 120) = v57;
  if (*(v58 - 137) < 0)
  {
    operator delete(*(v58 - 160));
    if (a45 < 0)
    {
      goto LABEL_5;
    }
  }

  else if (a45 < 0)
  {
LABEL_5:
    operator delete(__p);
    if (a51 < 0)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (a51 < 0)
  {
LABEL_9:
    operator delete(a46);
  }

LABEL_10:
  sub_1AE622290(&a53);
  sub_1AE622290(&a55);
  sub_1AE622290(&a57);
  if (*(v58 - 233) < 0)
  {
    operator delete(*(v58 - 256));
    if ((*(v58 - 209) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((*(v58 - 209) & 0x80000000) == 0)
  {
LABEL_12:
    if (*(v58 - 185) < 0)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  operator delete(*(v58 - 232));
  if (*(v58 - 185) < 0)
  {
LABEL_13:
    operator delete(*(v58 - 208));
    if ((*(v58 - 161) & 0x80000000) == 0)
    {
LABEL_19:
      sub_1AE645234((v58 - 128));
      if (a32 < 0)
      {
        operator delete(a27);
      }

      if (a26 < 0)
      {
        operator delete(a21);
      }

      sub_1AE68B070(&a36);
      sub_1AE65B3A0(&a17);
      sub_1AE68B070(&a18);
      std::recursive_mutex::unlock(a14);
      _Unwind_Resume(a1);
    }

LABEL_18:
    operator delete(*(v58 - 184));
    goto LABEL_19;
  }

LABEL_17:
  if ((*(v58 - 161) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  goto LABEL_18;
}

void sub_1AE7096C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1AE7096C8);
  }

  _Unwind_Resume(a1);
}

void sub_1AE7096CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1AE7096D0);
  }

  sub_1AE6090F0(a1);
}

uint64_t sub_1AE7096D4(std::recursive_mutex *a1)
{
  std::recursive_mutex::lock(a1);
  sig = a1[2].__m_.__sig;
  memset(__p, 0, 24);
  v3 = *(sig + 616);
  v4 = *(sig + 624);
  __p[3] = __p;
  v7 = 0;
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  std::recursive_mutex::unlock(a1);
  return 0;
}

void sub_1AE709894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1AE658924(va);
  std::recursive_mutex::unlock(v5);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE7098C0(uint64_t a1, __int128 *a2)
{
  std::recursive_mutex::lock(a1);
  std::recursive_mutex::lock(a1);
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  while (1)
  {
    if (v4 == v5)
    {
      v9 = sub_1AE7096D4(a1);
      std::recursive_mutex::unlock(a1);
      if (!v9)
      {
        v9 = sub_1AE70DB1C(a2, 1);
      }

      goto LABEL_11;
    }

    v6 = *(*v4 + 8);
    v7 = *(*v4 + 16);
    if (v6 != v7)
    {
      break;
    }

LABEL_2:
    v4 += 16;
  }

  while (1)
  {
    v8 = (*(**v6 + 24))(*v6, a2, 0);
    if (v8)
    {
      break;
    }

    if (++v6 == v7)
    {
      goto LABEL_2;
    }
  }

  v9 = v8;
  std::recursive_mutex::unlock(a1);
LABEL_11:
  std::recursive_mutex::unlock(a1);
  return v9;
}

void sub_1AE7099B0(_Unwind_Exception *a1)
{
  std::recursive_mutex::unlock(v1);
  std::recursive_mutex::unlock(v1);
  _Unwind_Resume(a1);
}

void sub_1AE7099D8(_BYTE *a1, std::recursive_mutex *this, unsigned int a3)
{
  std::recursive_mutex::lock(this);
  if (a3 > 0x1F3)
  {
    sig = this[2].__m_.__sig;
    memset(__p, 0, 24);
    v9 = *(sig + 616);
    v10 = *(sig + 624);
    __p[3] = __p;
    v14 = 0;
    if (v10 != v9)
    {
      if (((v10 - v9) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    a1[23] = 0;
    *a1 = 0;
  }

  else
  {
    v6 = 0;
    v7 = "";
    while (dword_1E7A2E700[v6] != a3)
    {
      v6 += 4;
      if (v6 == 328)
      {
        goto LABEL_10;
      }
    }

    v7 = *&dword_1E7A2E700[v6 + 2];
LABEL_10:
    v11 = strlen(v7);
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1AE5DB4F0();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      operator new();
    }

    a1[23] = v11;
    if (v11)
    {
      memmove(a1, v7, v11);
    }

    a1[v12] = 0;
  }

  std::recursive_mutex::unlock(this);
}

void sub_1AE709D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1AE658924(va);
  std::recursive_mutex::unlock(v5);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE709D48(std::recursive_mutex *a1)
{
  std::recursive_mutex::lock(a1);
  sig = a1[2].__m_.__sig;
  memset(__p, 0, 24);
  v3 = *(sig + 616);
  v4 = *(sig + 624);
  __p[3] = __p;
  v7 = 0;
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  std::recursive_mutex::unlock(a1);
  return 0;
}

void sub_1AE709F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1AE658924(va);
  std::recursive_mutex::unlock(v5);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE709F30(std::recursive_mutex *a1)
{
  std::recursive_mutex::lock(a1);
  sig = a1[2].__m_.__sig;
  memset(__p, 0, 24);
  v3 = *(sig + 616);
  v4 = *(sig + 624);
  __p[3] = __p;
  v7 = 0;
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  std::recursive_mutex::unlock(a1);
  return 0;
}

void sub_1AE70A16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1AE658924(va);
  std::recursive_mutex::unlock(v5);
  _Unwind_Resume(a1);
}

void *sub_1AE70A198(void *a1)
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
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
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

uint64_t sub_1AE70A228(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[2];
      if (v6)
      {
        CFRelease(v6);
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

uint64_t sub_1AE70A294(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[2];
      if (v3)
      {
        CFRelease(v3);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1AE70A2E8(uint64_t a1, int a2, double *a3, int a4, _DWORD *a5, unint64_t a6)
{
  std::recursive_mutex::lock(a1);
  if (!a6)
  {
    a5 = 0;
    if (a2 == 2)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v12 = &a5[a6];
  v13 = v12 + 1;
  v14 = -4 * a6;
  while (v14)
  {
    v15 = *(v13 - 2);
    --v13;
    v14 += 4;
    if (v15 == 1)
    {
      v16 = v12 - v13;
      a6 = v16 + 1;
      a5 = &v12[~v16];
      break;
    }
  }

  if (a2 != 2)
  {
LABEL_9:
    if (*(*(a1 + 88) + 192))
    {
      v17 = *(a1 + 144);
      if (v17)
      {
        HIBYTE(v22) = 10;
        strcpy(&__p, "selfSender");
        sub_1AE77F47C(v17, a2, a3, a4, a5, a6, &__p);
        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p);
        }
      }

      v18 = *(a1 + 128);
      v22 = 0;
      __p = 0uLL;
      v19 = *(v18 + 616);
      v20 = *(v18 + 624);
      if (v20 != v19)
      {
        if (((v20 - v19) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AE5CBB70();
      }
    }
  }

LABEL_16:
  std::recursive_mutex::unlock(a1);
}

void sub_1AE70A5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1AE6315E0(&a15);
  std::recursive_mutex::unlock(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE70A62C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7, unint64_t a8)
{
  std::recursive_mutex::lock(a1);
  if (a4)
  {
    v16 = a3 + 4 * a4;
    v17 = v16 + 4;
    v18 = -4 * a4;
    while (v18)
    {
      v19 = *(v17 - 8);
      v17 -= 4;
      v18 += 4;
      if (v19 == 1)
      {
        v20 = (v16 - v17) >> 2;
        a4 = v20 + 1;
        a3 = v16 + 4 * ~v20;
        break;
      }
    }

    if (a2 != 1)
    {
LABEL_11:
      v43 = 0.0;
      v22 = *(a1 + 144);
      if (v22)
      {
        v21 = sub_1AE77FA28(v22, a2, a3, a4, &v43, a7, a6);
        v23 = *(a1 + 144);
      }

      else
      {
        v23 = 0;
        v21 = 0;
      }

      v24 = __exp10(*(a5 + 64));
      v25 = 248;
      if (a4 < 2)
      {
        v25 = 252;
      }

      v26 = *(v23[3] + v25);
      v27 = v23[7];
      if (v27)
      {
        std::mutex::lock((v27 + 96));
        v28 = *(v27 + 40);
        std::mutex::unlock((v27 + 96));
      }

      else
      {
        v28 = 0;
      }

      v29 = (*(*v23 + 32))(v23);
      if (v28 + a8 < v29)
      {
        v26 = (((v28 + a8) / v29) * ((v28 + a8) / v29)) * v26;
      }

      v30 = *(*(a1 + 144) + 56);
      if (v30)
      {
        std::mutex::lock((v30 + 96));
        v31 = *(v30 + 40);
        std::mutex::unlock((v30 + 96));
        v32 = v31 + a8;
        if (v31 + a8)
        {
LABEL_23:
          v33 = (v24 * a8 + v43 * v31) / v32;
LABEL_26:
          v34 = log10(v33);
          v35 = *(a5 + 72);
          v36 = v26;
          *(a5 + 64) = v34;
          *(a5 + 72) = v36;
          v37 = *(a5 + 40);
          v38 = *(a5 + 48) + v35 - v36;
          *(a5 + 48) = v38;
          *(a5 + 24) = v33 > 0.0;
          v39 = v33 * v36 + __exp10(v37) * v38;
          v40 = *(a5 + 88);
          v41 = __exp10(*(a5 + 80));
          *a5 = log10(v39 + v41 * v40) - *(a5 + 96);
          goto LABEL_27;
        }
      }

      else
      {
        v31 = 0;
        v32 = a8;
        if (a8)
        {
          goto LABEL_23;
        }
      }

      v33 = 0.0;
      goto LABEL_26;
    }
  }

  else
  {
    a3 = 0;
    if (a2 != 1)
    {
      goto LABEL_11;
    }
  }

  if (a4)
  {
    goto LABEL_11;
  }

  v21 = 1;
LABEL_27:
  std::recursive_mutex::unlock(a1);
  return v21;
}

void sub_1AE70A8A8(uint64_t a1)
{
  v2 = *(a1 + 200);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 200) = 0;
  v3 = *(a1 + 176);
  if (v3)
  {
    v4 = *(a1 + 184);
    v5 = *(a1 + 176);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 8);
        if (v6)
        {
          CFRelease(v6);
        }

        *(v4 - 8) = 0;
        v4 -= 16;
      }

      while (v4 != v3);
      v5 = *(a1 + 176);
    }

    *(a1 + 184) = v3;
    operator delete(v5);
  }

  v7 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 160);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(a1 + 128);
  if (v9)
  {
    v10 = *(a1 + 136);
    v11 = *(a1 + 128);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 8);
        if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }

        v10 -= 16;
      }

      while (v10 != v9);
      v11 = *(a1 + 128);
    }

    *(a1 + 136) = v9;
    operator delete(v11);
  }

  v13 = *(a1 + 120);
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = *(a1 + 104);
    if (!v14)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v14 = *(a1 + 104);
  if (v14)
  {
LABEL_28:
    CFRelease(v14);
  }

LABEL_29:
  *(a1 + 104) = 0;
  v15 = *(a1 + 96);
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  std::recursive_mutex::~recursive_mutex((a1 + 24));
}

void sub_1AE70AAF8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F242E9E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

float *sub_1AE70AB6C(uint64_t a1, double *a2, _DWORD *a3)
{
  result = CFBinaryHeapGetMinimum(*(a1 + 32));
  if (a2)
  {
    if (result)
    {
      v7 = *result;
    }

    else
    {
      v7 = 0.0;
    }

    *a2 = v7;
  }

  if (a3)
  {
    *a3 = *(a1 + 44);
  }

  if (result)
  {
    return *(result + 2);
  }

  return result;
}

BOOL sub_1AE70ABD4(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    Length = CFStringGetLength(*(a1 + 16));
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    operator new[]();
  }

  if (CFBinaryHeapGetCount(*(a1 + 32)) >= 1)
  {
    CFBinaryHeapRemoveMinimumValue(*(a1 + 32));
  }

  if (!CFBinaryHeapGetCount(*(a1 + 32)))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    callBacks.retain = sub_1AE74EED0;
    callBacks.release = sub_1AE74EEB0;
    callBacks.compare = sub_1AE750500;
    v6 = CFBinaryHeapCreate(*MEMORY[0x1E695E480], 0, &callBacks, 0);
    if (v6)
    {
      v7 = v6;
      while (CFBinaryHeapGetCount(v4) && CFBinaryHeapGetCount(v5) <= 9)
      {
        sub_1AE74FA94(v3, v4, v7);
        while (CFBinaryHeapGetCount(v7))
        {
          Minimum = CFBinaryHeapGetMinimum(v7);
          CFBinaryHeapAddValue(v5, Minimum);
          CFBinaryHeapRemoveMinimumValue(v7);
        }
      }

      CFRelease(v7);
    }
  }

  return CFBinaryHeapGetCount(*(a1 + 32)) > 0;
}

void sub_1AE70AE90(void *a1)
{
  *a1 = &unk_1F242EA38;
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
  }

  JUMPOUT(0x1B2706400);
}

void *sub_1AE70AF18(void *a1)
{
  *a1 = &unk_1F242EA38;
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
  }

  return a1;
}

void *sub_1AE70B160@<X0>(void *result@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v3 = result[5];
  if (v3 && (v4 = result[6]) != 0 && (v5 = *(result + 8), v6 = a2 >= v5, v7 = a2 - v5, v6) && *(result + 9) >= a2)
  {
    v9 = *(v3 + 4 * v7);
    v10 = strlen((v4 + v9));
    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1AE5DB4F0();
    }

    v11 = v10;
    if (v10 >= 0x17)
    {
      operator new();
    }

    result = a3;
    *(a3 + 23) = v11;
    if (v11)
    {
      memmove(a3, (v4 + v9), v11);
      result = a3;
    }

    *(result + v11) = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

uint64_t sub_1AE70B248(uint64_t a1, _DWORD *a2, double *a3)
{
  v4 = *(a1 + 8);
  v10 = 0;
  v5 = a2[2];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  sub_1AE74EEE8(v4, a2, v6, &v10 + 1, &v10);
  v8 = v7;
  result = 0;
  if (v8)
  {
    if (a3)
    {
      *a3 = *&v10;
    }

    return HIDWORD(v10);
  }

  return result;
}

uint64_t sub_1AE70B2C8(uint64_t a1, const __CFString *a2, double *a3)
{
  v4 = *(a1 + 16);
  sub_1AE5CC874(a2, &__p);
  v13 = 0;
  if ((v12 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v12 & 0x80u) == 0)
  {
    v6 = v12;
  }

  else
  {
    v6 = v11;
  }

  sub_1AE74EEE8(v4, p_p, v6, &v13 + 1, &v13);
  if (v7)
  {
    if (a3)
    {
      *a3 = *&v13;
    }

    v8 = HIDWORD(v13);
    if (v12 < 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
    if (v12 < 0)
    {
LABEL_13:
      operator delete(__p);
    }
  }

  return v8;
}

void sub_1AE70B378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE70B394(void *a1)
{
  *(a1 - 1) = &unk_1F242EA68;
  *a1 = &unk_1F242EAD8;
  v2 = a1[1];
  if (v2 && (v3 = *(v2 + 2080) - 1, (*(v2 + 2080) = v3) == 0))
  {
    v5 = *(v2 + 2084);
    if (v5)
    {
      if (*(v2 + 2096))
      {
        munmap(v5, *(v2 + 2072));
      }
    }

    else
    {
      sub_1AE74C314(v2);
    }

    free(v2);
    v4 = a1[2];
    if (!v4)
    {
LABEL_5:
      a1[3] = 0;

      JUMPOUT(0x1B2706400);
    }
  }

  else
  {
    v4 = a1[2];
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  munmap(v4, a1[3]);
  goto LABEL_5;
}

void *sub_1AE70B48C(void *a1)
{
  *(a1 - 1) = &unk_1F242EA68;
  *a1 = &unk_1F242EAD8;
  v2 = a1[1];
  if (v2 && (v3 = *(v2 + 2080) - 1, (*(v2 + 2080) = v3) == 0))
  {
    v5 = *(v2 + 2084);
    if (v5)
    {
      if (*(v2 + 2096))
      {
        munmap(v5, *(v2 + 2072));
      }
    }

    else
    {
      sub_1AE74C314(v2);
    }

    free(v2);
    result = a1[2];
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = a1[2];
    if (result)
    {
LABEL_4:
      result = munmap(result, a1[3]);
    }
  }

  a1[3] = 0;
  return result;
}

void *sub_1AE70B738@<X0>(void *result@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v3 = result[6];
  if (v3 && (v4 = result[7]) != 0 && (v5 = *(result + 10), v6 = a2 >= v5, v7 = a2 - v5, v6) && *(result + 11) >= a2)
  {
    v9 = *(v3 + 4 * v7);
    v10 = strlen((v4 + v9));
    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1AE5DB4F0();
    }

    v11 = v10;
    if (v10 >= 0x17)
    {
      operator new();
    }

    result = a3;
    *(a3 + 23) = v11;
    if (v11)
    {
      memmove(a3, (v4 + v9), v11);
      result = a3;
    }

    *(result + v11) = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

uint64_t sub_1AE70B820(uint64_t a1, _DWORD *a2, double *a3)
{
  v4 = *(a1 + 16);
  v10 = 0;
  v5 = a2[2];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  sub_1AE74EEE8(v4, a2, v6, &v10 + 1, &v10);
  v8 = v7;
  result = 0;
  if (v8)
  {
    if (a3)
    {
      *a3 = *&v10;
    }

    return HIDWORD(v10);
  }

  return result;
}

uint64_t sub_1AE70B8A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(v1 + 2064);
  }

  else
  {
    return 0;
  }
}

void sub_1AE70B8E0(uint64_t a1, void *aBlock)
{
  aBlocka = _Block_copy(aBlock);
  v3 = (*(*a1 + 40))(a1);
  sub_1AE74DBE0(v3, &aBlocka, sub_1AE70B978);
  _Block_release(aBlocka);
}

uint64_t sub_1AE70B978(uint64_t a1, float *a2, __n128 a3)
{
  if (a2)
  {
    a3.n128_f64[0] = *a2;
  }

  else
  {
    a3.n128_u64[0] = 0;
  }

  return (*(*a1 + 16))(a3);
}

void sub_1AE70B9A4(void *a1)
{
  *a1 = &unk_1F242EA68;
  a1[1] = &unk_1F242EAD8;
  v2 = a1[2];
  if (v2 && (v3 = *(v2 + 2080) - 1, (*(v2 + 2080) = v3) == 0))
  {
    v5 = *(v2 + 2084);
    if (v5)
    {
      if (*(v2 + 2096))
      {
        munmap(v5, *(v2 + 2072));
      }
    }

    else
    {
      sub_1AE74C314(v2);
    }

    free(v2);
    v4 = a1[3];
    if (!v4)
    {
LABEL_5:
      a1[4] = 0;

      JUMPOUT(0x1B2706400);
    }
  }

  else
  {
    v4 = a1[3];
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  munmap(v4, a1[4]);
  goto LABEL_5;
}

void *sub_1AE70BA94(void *a1)
{
  *a1 = &unk_1F242EA68;
  a1[1] = &unk_1F242EAD8;
  v2 = a1[2];
  if (v2 && (v3 = *(v2 + 2080) - 1, (*(v2 + 2080) = v3) == 0))
  {
    v6 = *(v2 + 2084);
    if (v6)
    {
      if (*(v2 + 2096))
      {
        munmap(v6, *(v2 + 2072));
      }
    }

    else
    {
      sub_1AE74C314(v2);
    }

    free(v2);
    v4 = a1[3];
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = a1[3];
    if (v4)
    {
LABEL_4:
      munmap(v4, a1[4]);
    }
  }

  a1[4] = 0;
  return a1;
}

void sub_1AE70BB74(uint64_t a1, int __fd)
{
  __buf = 0x3BAFABAFALL;
  v10 = 0u;
  v11 = 0u;
  v12 = 0;
  v2 = *(a1 + 88);
  LODWORD(v11) = *(a1 + 48) - *(a1 + 40);
  HIDWORD(v11) = v2;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = a1 + 24;
    v5 = *(a1 + 24);
    v6 = *(*(a1 + 16) + 28);
    if (v5)
    {
      do
      {
        v7 = v5;
        v5 = *(v5 + 8);
      }

      while (v5);
    }

    else
    {
      do
      {
        v7 = *(v4 + 16);
        v8 = *v7 == v4;
        v4 = v7;
      }

      while (v8);
    }

    LODWORD(v3) = *(v7 + 28);
  }

  else
  {
    v6 = 0;
  }

  *(&v10 + 1) = __PAIR64__(v3, v6);
  write(__fd, &__buf, 0x30uLL);
  operator new();
}

void sub_1AE70C17C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE70C1A8(uint64_t a1, void *aBlock)
{
  aBlocka = _Block_copy(aBlock);
  v3 = (*(*a1 + 40))(a1);
  sub_1AE74DBE0(v3, &aBlocka, sub_1AE70B978);
  _Block_release(aBlocka);
}

void sub_1AE70C240(uint64_t a1)
{
  *a1 = &unk_1F242EB40;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 2080) - 1;
    *(v2 + 2080) = v3;
    if (!v3)
    {
      v4 = *(v2 + 2084);
      if (v4)
      {
        if (*(v2 + 2096))
        {
          munmap(v4, *(v2 + 2072));
        }
      }

      else
      {
        sub_1AE74C314(v2);
      }

      free(v2);
    }
  }

  sub_1AE673B40(*(a1 + 80));
  v5 = *(a1 + 40);
  if (v5)
  {
    *(a1 + 48) = v5;
    operator delete(v5);
  }

  sub_1AE673B40(*(a1 + 24));

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE70C30C(uint64_t a1)
{
  *a1 = &unk_1F242EB40;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 2080) - 1;
    *(v2 + 2080) = v3;
    if (!v3)
    {
      v4 = *(v2 + 2084);
      if (v4)
      {
        if (*(v2 + 2096))
        {
          munmap(v4, *(v2 + 2072));
        }
      }

      else
      {
        sub_1AE74C314(v2);
      }

      free(v2);
    }
  }

  sub_1AE673B40(*(a1 + 80));
  v5 = *(a1 + 40);
  if (v5)
  {
    *(a1 + 48) = v5;
    operator delete(v5);
  }

  sub_1AE673B40(*(a1 + 24));
  return a1;
}

uint64_t sub_1AE70C3B8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(v1 + 2080) - 1;
    *(v1 + 2080) = v2;
    if (!v2)
    {
      v3 = a1;
      v4 = *(v1 + 2084);
      if (v4)
      {
        if (*(v1 + 2096))
        {
          munmap(v4, *(v1 + 2072));
        }
      }

      else
      {
        sub_1AE74C314(v1);
      }

      free(v1);
      a1 = v3;
    }
  }

  v5 = a1;
  sub_1AE673B40(*(a1 + 8));
  return v5;
}

void sub_1AE70C43C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (a3 == 1)
  {
    v3 = *(a1 + 8);
    if (!v3)
    {
LABEL_13:
      operator new();
    }

    v4 = *a2;
    while (1)
    {
      while (1)
      {
        v5 = v3;
        v6 = *(v3 + 28);
        if (v4 >= v6)
        {
          break;
        }

        v3 = *v5;
        if (!*v5)
        {
          goto LABEL_13;
        }
      }

      if (v6 >= v4)
      {
        break;
      }

      v3 = v5[1];
      if (!v3)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v7 = *(a1 + 24);
    if (!*(v7 + 2084))
    {
      v8 = (4 * a3);
      v11[0] = 0;
      v11[1] = 0;
      v10 = 0;
      if ((v8 - 1) <= 0x3FE)
      {
        v9 = 0;
        sub_1AE74C450(v7, v7, a2, v8, 0, 1, &v9, &v10, 1.0, v11);
        if (v10 == 2)
        {
          ++*(v7 + 2064);
        }
      }
    }
  }
}

void sub_1AE70C58C(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    *(a1 + 23) = 0;
    *a1 = 0;
    return;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1AE65B084(&theArray, a2);
  v3 = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v5 = Count;
    v6 = theArray;
    if (theArray)
    {
      v7 = CFArrayGetCount(theArray);
      if (!v5)
      {
LABEL_27:
        if (theArray)
        {
          CFRelease(theArray);
        }

        return;
      }
    }

    else
    {
      v7 = 0;
      if (!Count)
      {
        goto LABEL_27;
      }
    }

    if (v3 == v6 && !v7)
    {
      goto LABEL_27;
    }

    sub_1AE65B144(&v31, v3, 0);
    v8 = v31;
    v9 = MEMORY[0x1B2705500](v31);
    sub_1AE66A174(&cf, v9);
    v10 = cf;
    if (!cf)
    {
LABEL_51:
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v10))
    {
      sub_1AE621740(&__p, v10);
      v12 = v29;
      v13 = __p;
    }

    else
    {
      v13 = 0;
      v12 = 0;
      __p = 0;
      v29 = 0;
    }

    if ((v12 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = v13;
    }

    if ((v12 & 0x80u) == 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = v28;
    }

    std::string::append(a1, p_p, v15);
    if (v29 < 0)
    {
      operator delete(__p);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (v5 == 1)
    {
      goto LABEL_27;
    }

    v16 = 1;
    while (1)
    {
      if (v3 == v6 && v7 == v16)
      {
        goto LABEL_27;
      }

      sub_1AE65B144(&v31, v3, v16);
      v17 = v31;
      v18 = MEMORY[0x1B2705500](v31);
      sub_1AE66A174(&cf, v18);
      std::string::append(a1, ", ", 2uLL);
      v19 = cf;
      if (!cf)
      {
        goto LABEL_51;
      }

      v20 = CFStringGetTypeID();
      if (v20 == CFGetTypeID(v19))
      {
        sub_1AE621740(&__p, v19);
        v21 = v29;
        v22 = __p;
      }

      else
      {
        v22 = 0;
        v21 = 0;
        __p = 0;
        v29 = 0;
      }

      v23 = ((v21 & 0x80u) == 0 ? &__p : v22);
      v24 = (v21 & 0x80u) == 0 ? v21 : v28;
      std::string::append(a1, v23, v24);
      if ((v29 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p);
      v25 = cf;
      if (cf)
      {
        goto LABEL_48;
      }

LABEL_49:
      if (v17)
      {
        CFRelease(v17);
      }

      if (v5 == ++v16)
      {
        goto LABEL_27;
      }
    }

    v25 = cf;
    if (!cf)
    {
      goto LABEL_49;
    }

LABEL_48:
    CFRelease(v25);
    goto LABEL_49;
  }
}

void sub_1AE70C84C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, const void *a16, const void *a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1AE63109C(&a15);
  sub_1AE65B050(&a16);
  sub_1AE65B3A0(&a17);
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  _Unwind_Resume(a1);
}

void **sub_1AE70C8F0(void **a1)
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
        v6 = *(v3 - 1);
        v3 -= 8;
        v5 = v6;
        if (v6)
        {
          CFRelease(v5);
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

uint64_t sub_1AE70C960(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = &v3[-*a1];
  v5 = v4 >> 3;
  v6 = (v4 >> 3) + 1;
  if (v6 >> 61)
  {
    sub_1AE5CBB70();
  }

  v8 = *(a1 + 16) - v2;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v9 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_1AE5CB09C();
  }

  *(8 * v5) = *a2;
  *a2 = 0;
  if (v2 != v3)
  {
    v10 = v3 - v2 - 8;
    v11 = v2;
    v12 = 0;
    if (v10 < 0x98)
    {
      goto LABEL_30;
    }

    v13 = 8 * (v4 >> 3);
    if ((v2 + (v10 & 0xFFFFFFFFFFFFFFF8)) != -8)
    {
      v11 = v2;
      v12 = 0;
      if (v2 < v4 + (v10 & 0xFFFFFFFFFFFFFFF8) - v13 + 8)
      {
        goto LABEL_30;
      }
    }

    v14 = (v10 >> 3) + 1;
    v12 = (8 * (v14 & 0x3FFFFFFFFFFFFFFCLL));
    v11 = (v12 + v2);
    v15 = (8 * v5 - v13 + 16);
    v16 = v2;
    v17 = v14 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v18 = *(v16 + 1);
      *(v15 - 1) = *v16;
      *v15 = v18;
      *v16 = 0uLL;
      *(v16 + 1) = 0uLL;
      v16 += 4;
      v15 += 2;
      v17 -= 4;
    }

    while (v17);
    if (v14 != (v14 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_30:
      do
      {
        *v12++ = *v11;
        *v11++ = 0;
      }

      while (v11 != v3);
    }

    do
    {
      if (*v2)
      {
        CFRelease(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = 0;
  *(a1 + 8) = 8 * v5 + 8;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return 8 * v5 + 8;
}

void sub_1AE70CB3C(CFDictionaryRef theDict, uint64_t *a2, void *a3, int a4, const __CFLocale **a5)
{
  v9 = *a2;
  v10 = a2[1];
  if (*a2 == v10 && a4 != 0)
  {
    sub_1AE760588(theDict, *a5, a2, a3);
    v9 = *a2;
    v10 = a2[1];
  }

  if (v9 != v10)
  {
    v12 = CFDictionaryContainsKey(theDict, kLMLanguageModelEnableSearchQueryModelLoadingKey) == 0;
    if (sub_1AE760480(*a5, v12) != -1)
    {
      operator new();
    }

    if ((a2[1] - *a2) >= 0x11 && *a3 != a3[1])
    {
      if (qword_1EB5E0E88 != -1)
      {
        dispatch_once(&qword_1EB5E0E88, &unk_1F242EBF8);
      }

      v13 = qword_1EB5E0E80;
      if (os_log_type_enabled(qword_1EB5E0E80, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1AE5C8000, v13, OS_LOG_TYPE_ERROR, "Deltas are not supported for multiple lexicons. Attempting to apply deltas to all provided lexicons...", buf, 2u);
      }
    }

    if (*a2 != a2[1])
    {
      operator new();
    }
  }
}

os_log_t sub_1AE70D194()
{
  result = os_log_create("com.apple.LanguageModeling", "MultilingualDynamicLanguageModel");
  qword_1EB5E0E80 = result;
  return result;
}

void sub_1AE70D1C4(int a1, CFDictionaryRef theDict, int a3, const void ****a4)
{
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  v23 = MutableCopy;
  CFDictionaryRemoveValue(MutableCopy, kLMLanguageLocalesKey);
  CFDictionarySetValue(MutableCopy, kLMLanguageModelIgnoreSystemLanguageModelsKey, *MEMORY[0x1E695E4D0]);
  v8 = *a4;
  v7 = a4[1];
  if (v8 != v7)
  {
    do
    {
      v10 = v23;
      CFDictionarySetValue(v23, kLMLanguageModelLocaleKey, **v8);
      sub_1AE5CD66C(v22, v10);
      sub_1AE68CF18(&__p, v22[0], 20);
      sub_1AE68CF18(&v18, v22[0], 26);
      sub_1AE70CB3C(v10, &__p, &v18, a3, *v8);
      v11 = v18;
      if (v18)
      {
        v12 = v19;
        v13 = v18;
        if (v19 != v18)
        {
          do
          {
            v14 = *(v12 - 1);
            if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v14->__on_zero_shared)(v14);
              std::__shared_weak_count::__release_weak(v14);
            }

            v12 -= 16;
          }

          while (v12 != v11);
          v13 = v18;
        }

        v19 = v11;
        operator delete(v13);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v21;
        v9 = __p;
        if (v21 != __p)
        {
          do
          {
            v17 = *(v16 - 1);
            if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v17->__on_zero_shared)(v17);
              std::__shared_weak_count::__release_weak(v17);
            }

            v16 -= 16;
          }

          while (v16 != v15);
          v9 = __p;
        }

        v21 = v15;
        operator delete(v9);
      }

      sub_1AE631694(v22);
      v8 += 2;
    }

    while (v8 != v7);
    MutableCopy = v23;
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void sub_1AE70D440(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v3 = 0;
  operator new();
}

void sub_1AE70D58C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE66D708(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE70D5AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN2LM38enumerateSortkeyEquivalentsFromLexiconERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS_7LexiconENS_13SourceLexiconERKNS0_8functionIFvPK10__CFStringjdSC_PK10__CFLocaleRbEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN2LM38enumerateSortkeyEquivalentsFromLexiconERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS_7LexiconENS_13SourceLexiconERKNS0_8functionIFvPK10__CFStringjdSC_PK10__CFLocaleRbEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN2LM38enumerateSortkeyEquivalentsFromLexiconERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS_7LexiconENS_13SourceLexiconERKNS0_8functionIFvPK10__CFStringjdSC_PK10__CFLocaleRbEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN2LM38enumerateSortkeyEquivalentsFromLexiconERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKNS_7LexiconENS_13SourceLexiconERKNS0_8functionIFvPK10__CFStringjdSC_PK10__CFLocaleRbEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_1AE70D618(uint64_t a1, uint64_t *a2, int *a3, uint64_t *a4, _BYTE *a5)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = *(a1 + 8);
  v11 = **(a1 + 16);
  v12 = (*(**(a1 + 24) + 64))(*(a1 + 24));
  v19 = v7;
  v18 = v8;
  v17 = v9;
  v16 = v11;
  v15 = v12;
  v13 = *(v10 + 24);
  if (!v13)
  {
    sub_1AE60819C();
  }

  result = (*(*v13 + 48))(v13, &v19, &v18, &v17, &v16, &v15, a5);
  **(a1 + 32) = *a5;
  return result;
}

__n128 sub_1AE70D708(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F242EC28;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1AE70D7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    operator new();
  }

  return 0;
}

void sub_1AE70D950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE66D708(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_1AE70D964(void *a1, uint64_t a2)
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

  v6 = sub_1AE5DA928(&v25, a2, v5);
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

uint64_t sub_1AE70DB1C(__int128 *a1, int a2)
{
  if (!a2)
  {
LABEL_51:

    return sub_1AE7004D8(a1);
  }

  LODWORD(v3) = 0;
  v4 = 0;
  while (1)
  {
    v10 = v3;
    v11 = *(a1 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      break;
    }

    if ((v3 >= v11) | v4 & 1)
    {
      goto LABEL_50;
    }

    LODWORD(v3) = v3 + 1;
    v9 = *(a1 + v10);
    if (*(a1 + v10) < 0)
    {
      v13 = *(a1 + 23);
LABEL_18:
      v14 = v3;
      if (v13 == v3)
      {
        v4 = 1;
      }

      else if (v9 < 0xE0)
      {
        if (v9 >= 0xC2)
        {
          v5 = v9 & 0x1F;
          v6 = *a1;
          goto LABEL_5;
        }

        v4 = 1;
      }

      else if (v9 > 0xEF)
      {
        if (v9 > 0xF4)
        {
          v4 = 1;
        }

        else
        {
          v6 = *a1;
          if (v11 >= 0)
          {
            v19 = a1;
          }

          else
          {
            v19 = *a1;
          }

          v20 = *(v19 + v3);
          if ((byte_1AE7A3ED1[v20 >> 4] >> (v9 + 16)))
          {
            v3 = v10 + 2;
            if (v11 < 0)
            {
              v21 = *a1;
              if (*(a1 + 1) == v3)
              {
                v4 = 1;
              }

              else
              {
LABEL_35:
                v18 = *(v21 + v3) ^ 0x80;
                if (v18 <= 0x3F)
                {
                  v15 = v20 & 0x3F | ((v9 - 240) << 6);
                  goto LABEL_37;
                }

                v4 = 1;
              }
            }

            else
            {
              v21 = a1;
              if (v3 != v11)
              {
                goto LABEL_35;
              }

              v4 = 1;
              LODWORD(v3) = *(a1 + 23);
            }
          }

          else
          {
            v4 = 1;
          }
        }
      }

      else
      {
        v15 = v9 & 0xF;
        v6 = *a1;
        if (v11 >= 0)
        {
          v16 = a1;
        }

        else
        {
          v16 = *a1;
        }

        v17 = *(v16 + v3);
        if ((a00000000000000[v9 & 0xF] >> (v17 >> 5)))
        {
          v18 = v17 & 0x3F;
LABEL_37:
          LODWORD(v3) = v3 + 1;
          v14 = v3;
          v22 = *(a1 + 1);
          if (v12 >= 0)
          {
            v22 = *(a1 + 23);
          }

          if (v22 == v3)
          {
            v4 = 1;
          }

          else
          {
            v5 = v18 | (v15 << 6);
LABEL_5:
            if (v12 >= 0)
            {
              v7 = a1;
            }

            else
            {
              v7 = v6;
            }

            v8 = *(v7 + v14) ^ 0x80;
            if (v8 <= 0x3F)
            {
              v9 = v8 | (v5 << 6);
              LODWORD(v3) = v3 + 1;
              goto LABEL_10;
            }

            v4 = 1;
          }
        }

        else
        {
          v4 = 1;
        }
      }
    }

    else
    {
LABEL_10:
      if (((1 << u_charType(v9)) & 0xE00) == 0)
      {
        v4 = 1;
      }
    }
  }

  v13 = *(a1 + 1);
  if (!((v13 <= v3) | v4 & 1))
  {
    LODWORD(v3) = v3 + 1;
    v9 = *(*a1 + v10);
    if ((*(*a1 + v10) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_50:
  if (v4)
  {
    goto LABEL_51;
  }

  return 3;
}

uint64_t sub_1AE70DD74(const __CFString *a1, int *a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v32 = a2;
  theString = a1;
  v31 = a3;
  v30 = 0;
  if (!a2)
  {
    v32 = &v30;
  }

  v10 = *(a3 + 560);
  v11 = *(a3 + 568);
  v28[3] = v10;
  v29 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = ((*v10)[2])(v10, a1, 0);
  *v32 = v12;
  if (v12)
  {
LABEL_6:
    v13 = 0;
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v34 = 0;
    v16 = *(v31 + 616);
    v17 = *(v31 + 624);
    __p[0] = &v34;
    LOBYTE(__p[1]) = 0;
    if (v17 != v16)
    {
      if (((v17 - v16) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    v28[0] = &v31;
    v28[1] = &theString;
    v28[2] = &v32;
    if (a6)
    {
      v35 = 0;
      v36 = 0;
      v34 = 0;
      v18 = *(v31 + 616);
      v19 = *(v31 + 624);
      __p[0] = &v34;
      LOBYTE(__p[1]) = 0;
      if (v19 != v18)
      {
        if (((v19 - v18) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1AE5CBB70();
      }
    }

    v20 = *(a4 + 8);
    v21 = *a4;
    if (*a4 != v20)
    {
      while (1)
      {
        v22 = *v21;
        v23 = theString;
        Length = CFStringGetLength(theString);
        if (!*v22)
        {
          break;
        }

        __p[0] = 0;
        __p[1] = __p;
        v27[0] = 0x2000000000;
        LOBYTE(v27[1]) = 1;
        v34 = MEMORY[0x1E69E9820];
        v35 = 0x40000000;
        v36 = sub_1AE685F18;
        v37 = &unk_1E7A2DD38;
        v38 = __p;
        v39 = v22;
        sub_1AE61D734(v23, 0, Length, &v34);
        v25 = *(__p[1] + 24);
        _Block_object_dispose(__p, 8);
        if (v25)
        {
          break;
        }

        if (++v21 == v20)
        {
          sub_1AE70C58C(&v34, a5);
          if (SHIBYTE(v36) < 0)
          {
            operator delete(v34);
          }

          goto LABEL_6;
        }
      }
    }

    HIBYTE(v36) = 0;
    LOBYTE(v34) = 0;
    v13 = sub_1AE70EA94(v28, &v34);
  }

  v14 = v29;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  return v13 & 1;
}

uint64_t sub_1AE70EA94(int8x8_t ***a1, uint64_t a2)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    if (*(a2 + 23))
    {
      v3 = **a1;
      *__p = *a2;
      v36 = *(a2 + 16);
      goto LABEL_6;
    }

LABEL_15:
    v12 = **a1;
    v13 = v12[70];
    v14 = v12[71];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }
    }

    goto LABEL_59;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_15;
  }

  v3 = **a1;
  sub_1AE5DBF1C(__p, *a2, v4);
LABEL_6:
  if (v36 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v36 >= 0)
  {
    v6 = HIBYTE(v36);
  }

  else
  {
    v6 = __p[1];
  }

  v7 = sub_1AE5DA928(v33, v5, v6);
  v8 = v3[73];
  if (!*&v8)
  {
    goto LABEL_56;
  }

  v9 = v7;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v15 = *(*&v3[72] + 8 * v11);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_56:
    v13 = 0;
    goto LABEL_57;
  }

  if (v36 >= 0)
  {
    v17 = HIBYTE(v36);
  }

  else
  {
    v17 = __p[1];
  }

  if (v36 >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  if (v10.u32[0] < 2uLL)
  {
    v19 = *&v8 - 1;
    while (1)
    {
      v24 = v16[1];
      if (v24 == v9)
      {
        v25 = *(v16 + 39);
        v26 = v25;
        if (v25 < 0)
        {
          v25 = v16[3];
        }

        if (v25 == v17)
        {
          v27 = v26 >= 0 ? (v16 + 2) : v16[2];
          if (!memcmp(v27, v18, v17))
          {
            goto LABEL_53;
          }
        }
      }

      else if ((v24 & v19) != v11)
      {
        goto LABEL_56;
      }

      v16 = *v16;
      if (!v16)
      {
        goto LABEL_56;
      }
    }
  }

  while (1)
  {
    v20 = v16[1];
    if (v20 == v9)
    {
      break;
    }

    if (v20 >= *&v8)
    {
      v20 %= *&v8;
    }

    if (v20 != v11)
    {
      goto LABEL_56;
    }

LABEL_31:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_56;
    }
  }

  v21 = *(v16 + 39);
  v22 = v21;
  if (v21 < 0)
  {
    v21 = v16[3];
  }

  if (v21 != v17)
  {
    goto LABEL_31;
  }

  v23 = v22 >= 0 ? (v16 + 2) : v16[2];
  if (memcmp(v23, v18, v17))
  {
    goto LABEL_31;
  }

LABEL_53:
  v13 = v16[5];
  v28 = v16[6];
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }
  }

LABEL_57:
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_59:
  sub_1AE5CC874(*a1[1], v33);
  v29 = (*(*v13 + 128))(v13, v33, 0, *a1[2]);
  v30 = v29;
  if (v34 < 0)
  {
    operator delete(v33[0]);
    if (v30)
    {
LABEL_61:
      v31 = (**a1)[68];
      std::mutex::lock((*&v31 + 96));
      *(*&v31 + 24) = 1;
      std::mutex::unlock((*&v31 + 96));
    }
  }

  else if (v29)
  {
    goto LABEL_61;
  }

  return v30;
}

void sub_1AE70EDE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE70EE04(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v3 = a2;
    do
    {
      if (*(*v3 + 128))
      {
        operator new();
      }

      v3 += 16;
    }

    while (v3 != a3);
  }
}

void sub_1AE70EF40(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE70EF64(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v3 = *(a1 + 88);
  if (v3)
  {
    v4 = *(a1 + 96);
    v5 = *(a1 + 88);
    if (v4 != v3)
    {
      v6 = *(a1 + 96);
      do
      {
        v9 = *(v6 - 3);
        v6 -= 3;
        v8 = v9;
        if (v9)
        {
          v10 = *(v4 - 2);
          v7 = v8;
          if (v10 != v8)
          {
            do
            {
              v11 = *(v10 - 1);
              v10 -= 3;
              if (v11 < 0)
              {
                operator delete(*v10);
              }
            }

            while (v10 != v8);
            v7 = *v6;
          }

          *(v4 - 2) = v8;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v3);
      v5 = *(a1 + 88);
    }

    *(a1 + 96) = v3;
    operator delete(v5);
  }

  v12 = *(a1 + 64);
  if (v12)
  {
    do
    {
      v14 = *v12;
      v15 = v12[5];
      if (v15)
      {
        do
        {
          v16 = *v15;
          operator delete(v15);
          v15 = v16;
        }

        while (v16);
      }

      v17 = v12[3];
      v12[3] = 0;
      if (v17)
      {
        operator delete(v17);
      }

      operator delete(v12);
      v12 = v14;
    }

    while (v14);
  }

  v13 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v13)
  {

    operator delete(v13);
  }
}

void sub_1AE70F0A4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F242ECB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t **sub_1AE70F118(void *a1, uint64_t a2)
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

  v6 = sub_1AE5DA928(&v25, a2, v5);
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

void sub_1AE70F2D0(uint64_t a1, void **a2, void **a3, void **a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v15 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * (v10 - a2)) >= a5)
      {
        v28 = &v10[-3 * a5];
        if (v28 >= v10)
        {
          v30 = *(a1 + 8);
        }

        else
        {
          v29 = &v10[-3 * a5];
          v30 = *(a1 + 8);
          do
          {
            v31 = *v29;
            *(v30 + 16) = v29[2];
            *v30 = v31;
            v30 += 24;
            v29[1] = 0;
            v29[2] = 0;
            *v29 = 0;
            v29 += 3;
          }

          while (v29 < v10);
        }

        *(a1 + 8) = v30;
        if (v10 != &a2[3 * a5])
        {
          v49 = 0;
          v50 = (&a2[3 * a5] - v10);
          do
          {
            v53 = &v49[v10 - 24];
            if (v49[v10 - 1] < 0)
            {
              operator delete(*v53);
            }

            v51 = v28 + (v49 - 24);
            v52 = *v51;
            *&v49[v10 - 8] = *(v51 + 2);
            *v53 = v52;
            v49[v28 - 1] = 0;
            *v51 = 0;
            v49 -= 24;
          }

          while (v50 != v49);
        }

        v54 = 0;
        v55 = &v6[3 * a5];
        do
        {
          if (v6 != a2)
          {
            v58 = &a2[v54];
            v59 = &v6[v54];
            v60 = HIBYTE(v6[v54 + 2]);
            if (SHIBYTE(a2[v54 + 2]) < 0)
            {
              if (v60 >= 0)
              {
                v56 = &v6[v54];
              }

              else
              {
                v56 = v6[v54];
              }

              if (v60 >= 0)
              {
                v57 = HIBYTE(v6[v54 + 2]);
              }

              else
              {
                v57 = v6[v54 + 1];
              }

              sub_1AE621B84(v58, v56, v57);
            }

            else if ((HIBYTE(v6[v54 + 2]) & 0x80) != 0)
            {
              sub_1AE621AB4(v58, v6[v54], v6[v54 + 1]);
            }

            else
            {
              v61 = *v59;
              *(v58 + 16) = v59[2];
              *v58 = v61;
            }
          }

          v54 += 3;
        }

        while (&v6[v54] != v55);
      }

      else
      {
        v17 = (a3 + v15);
        v63 = *(a1 + 8);
        v18 = v63;
        if ((a3 + v15) != a4)
        {
          v47 = (a3 + v15);
          do
          {
            if (*(v47 + 23) < 0)
            {
              sub_1AE5DBF1C(v18, *v47, v47[1]);
              v18 = v63;
            }

            else
            {
              v48 = *v47;
              *(v18 + 16) = v47[2];
              *v18 = v48;
            }

            v47 += 3;
            v18 += 24;
            v63 = v18;
          }

          while (v47 != a4);
        }

        *(a1 + 8) = v18;
        if (v15 >= 1)
        {
          v19 = &a2[3 * a5];
          v20 = v18 - 24 * a5;
          for (i = v18; v20 < v10; v20 += 24)
          {
            v22 = *v20;
            *(i + 16) = *(v20 + 16);
            *i = v22;
            i += 24;
            *(v20 + 8) = 0;
            *(v20 + 16) = 0;
            *v20 = 0;
          }

          *(a1 + 8) = i;
          if (v18 != v19)
          {
            v23 = 0;
            v24 = -24 * a5;
            do
            {
              v27 = v23 + v18 - 24;
              if (*(v23 + v18 - 1) < 0)
              {
                operator delete(*v27);
              }

              v25 = (v24 + v18 - 24);
              v23 -= 24;
              v26 = *v25;
              *(v27 + 16) = *(v24 + v18 - 8);
              *v27 = v26;
              *(v24 + v18 - 1) = 0;
              *v25 = 0;
              v24 -= 24;
              v19 += 24;
            }

            while (v18 != v19);
          }

          v40 = 0;
          do
          {
            if (v6 != a2)
            {
              v43 = &a2[v40];
              v44 = &v6[v40];
              v45 = HIBYTE(v6[v40 + 2]);
              if (SHIBYTE(a2[v40 + 2]) < 0)
              {
                if (v45 >= 0)
                {
                  v41 = &v6[v40];
                }

                else
                {
                  v41 = v6[v40];
                }

                if (v45 >= 0)
                {
                  v42 = HIBYTE(v6[v40 + 2]);
                }

                else
                {
                  v42 = v6[v40 + 1];
                }

                sub_1AE621B84(v43, v41, v42);
              }

              else if ((HIBYTE(v6[v40 + 2]) & 0x80) != 0)
              {
                sub_1AE621AB4(v43, v6[v40], v6[v40 + 1]);
              }

              else
              {
                v46 = *v44;
                *(v43 + 16) = v44[2];
                *v43 = v46;
              }
            }

            v40 += 3;
          }

          while (&v6[v40] != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1AE5CBB70();
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (v14 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1AE5CB09C();
      }

      v32 = 8 * ((a2 - v11) >> 3);
      v62 = v32;
      v33 = 24 * a5;
      v34 = (v32 + 24 * a5);
      do
      {
        if (*(v6 + 23) < 0)
        {
          sub_1AE5DBF1C(v32, *v6, v6[1]);
        }

        else
        {
          v35 = *v6;
          *(v32 + 16) = v6[2];
          *v32 = v35;
        }

        v32 += 24;
        v6 += 3;
        v33 -= 24;
      }

      while (v33);
      v36 = *(a1 + 8) - a2;
      memcpy(v34, a2, v36);
      *(a1 + 8) = a2;
      v37 = a2 - *a1;
      v38 = v62 - v37;
      memcpy((v62 - v37), *a1, v37);
      v39 = *a1;
      *a1 = v38;
      *(a1 + 8) = &v34[v36];
      *(a1 + 16) = 0;
      if (v39)
      {
        operator delete(v39);
      }
    }
  }
}

void sub_1AE70F778(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6EA23C(va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

void sub_1AE70F790(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE5DBD00(va);
  _Unwind_Resume(a1);
}

double sub_1AE70F7A8()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v3 = v0;
  v333[8] = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1ED9AC818, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC818))
  {
    sub_1AE5CC990(v132, "hi");
    sub_1AE5CC990(v129, "");
    sub_1AE5CC990(v305, "मैं");
    sub_1AE5CC990(&v307, "वह");
    sub_1AE5CC990(&v309, "आप");
    sub_1AE5CC990(&v311, "क्या");
    sub_1AE5CC990(&v313, "यह");
    sub_1AE6EA0C0(v128, v305, 5uLL);
    sub_1AE71365C(v315, v129, v128);
    sub_1AE7136F4(v131, v315, 1);
    sub_1AE713770(v316, v132, v131);
    sub_1AE5CC990(v126, "bn");
    sub_1AE5CC990(v123, "");
    sub_1AE5CC990(v294, "আমি");
    sub_1AE5CC990(&v296, "সে");
    sub_1AE5CC990(&v298, "আপনি");
    sub_1AE5CC990(&v300, "কি");
    sub_1AE5CC990(&v302, "এটা");
    sub_1AE6EA0C0(v122, v294, 5uLL);
    sub_1AE71365C(v304, v123, v122);
    sub_1AE7136F4(v125, v304, 1);
    sub_1AE713770(v317, v126, v125);
    sub_1AE5CC990(v120, "mr");
    sub_1AE5CC990(v117, "");
    sub_1AE5CC990(v283, "मी");
    sub_1AE5CC990(&v285, "ते");
    sub_1AE5CC990(&v287, "आपण");
    sub_1AE5CC990(&v289, "काय");
    sub_1AE5CC990(&v291, "हे");
    sub_1AE6EA0C0(v116, v283, 5uLL);
    sub_1AE71365C(v293, v117, v116);
    sub_1AE7136F4(v119, v293, 1);
    sub_1AE713770(v318, v120, v119);
    sub_1AE5CC990(v114, "gu");
    sub_1AE5CC990(v111, "");
    sub_1AE5CC990(v272, "હું");
    sub_1AE5CC990(&v274, "તેમણે");
    sub_1AE5CC990(&v276, "શું");
    sub_1AE5CC990(&v278, "મેં");
    sub_1AE5CC990(&v280, "તમે");
    sub_1AE6EA0C0(v110, v272, 5uLL);
    sub_1AE71365C(v282, v111, v110);
    sub_1AE7136F4(v113, v282, 1);
    sub_1AE713770(v319, v114, v113);
    sub_1AE5CC990(v108, "pa");
    sub_1AE5CC990(v105, "");
    sub_1AE5CC990(v261, "ਮੈਨੂੰ");
    sub_1AE5CC990(&v263, "ਉਹ");
    sub_1AE5CC990(&v265, "ਤੁਸੀ");
    sub_1AE5CC990(&v267, "ਕੀ");
    sub_1AE5CC990(&__p, "ਇਹ");
    sub_1AE6EA0C0(v104, v261, 5uLL);
    sub_1AE71365C(v271, v105, v104);
    sub_1AE7136F4(v107, v271, 1);
    sub_1AE713770(v320, v108, v107);
    sub_1AE5CC990(v102, "te");
    sub_1AE5CC990(v99, "");
    sub_1AE5CC990(v250, "అతను");
    sub_1AE5CC990(&v252, "మీరు");
    sub_1AE5CC990(&v254, "ఏమిటి");
    sub_1AE5CC990(&v256, "అవి");
    sub_1AE5CC990(&v258, "ఎప్పుడు");
    sub_1AE6EA0C0(v98, v250, 5uLL);
    sub_1AE71365C(__dst, v99, v98);
    sub_1AE7136F4(v101, __dst, 1);
    sub_1AE713770(v321, v102, v101);
    sub_1AE5CC990(v96, "ta");
    sub_1AE5CC990(v93, "");
    sub_1AE5CC990(v239, "நான்");
    sub_1AE5CC990(&v241, "அவர்");
    sub_1AE5CC990(&v243, "நீங்கள்");
    sub_1AE5CC990(&v245, "என்ன");
    sub_1AE5CC990(&v247, "அது");
    sub_1AE6EA0C0(v92, v239, 5uLL);
    sub_1AE71365C(v249, v93, v92);
    sub_1AE7136F4(v95, v249, 1);
    sub_1AE713770(v322, v96, v95);
    sub_1AE5CC990(v90, "hi-Latn");
    sub_1AE5CC990(v87, "");
    sub_1AE5CC990(v228, "main");
    sub_1AE5CC990(&v230, "woh");
    sub_1AE5CC990(&v232, "aap");
    sub_1AE5CC990(&v234, "kya");
    sub_1AE5CC990(&v236, "yeh");
    sub_1AE6EA0C0(v86, v228, 5uLL);
    sub_1AE71365C(v238, v87, v86);
    sub_1AE7136F4(v89, v238, 1);
    sub_1AE713770(v323, v90, v89);
    sub_1AE5CC990(v84, "bn-Latn");
    sub_1AE5CC990(v81, "");
    sub_1AE5CC990(v217, "ami");
    sub_1AE5CC990(&v219, "se");
    sub_1AE5CC990(&v221, "apni");
    sub_1AE5CC990(&v223, "ki");
    sub_1AE5CC990(&v225, "eta");
    sub_1AE6EA0C0(v80, v217, 5uLL);
    sub_1AE71365C(v227, v81, v80);
    sub_1AE7136F4(v83, v227, 1);
    sub_1AE713770(v324, v84, v83);
    sub_1AE5CC990(v78, "mr-Latn");
    sub_1AE5CC990(v75, "");
    sub_1AE5CC990(v206, "mi");
    sub_1AE5CC990(&v208, "te");
    sub_1AE5CC990(&v210, "aapan");
    sub_1AE5CC990(&v212, "kay");
    sub_1AE5CC990(&v214, "he");
    sub_1AE6EA0C0(v74, v206, 5uLL);
    sub_1AE71365C(v216, v75, v74);
    sub_1AE7136F4(v77, v216, 1);
    sub_1AE713770(v325, v78, v77);
    sub_1AE5CC990(v72, "gu-Latn");
    sub_1AE5CC990(v69, "");
    sub_1AE5CC990(v195, "hun");
    sub_1AE5CC990(&v197, "temane");
    sub_1AE5CC990(&v199, "su");
    sub_1AE5CC990(&v201, "mein");
    sub_1AE5CC990(&v203, "tamein");
    sub_1AE6EA0C0(v68, v195, 5uLL);
    sub_1AE71365C(v205, v69, v68);
    sub_1AE7136F4(v71, v205, 1);
    sub_1AE713770(v326, v72, v71);
    sub_1AE5CC990(v66, "pa-Latn");
    sub_1AE5CC990(v63, "");
    sub_1AE5CC990(v184, "mainu");
    sub_1AE5CC990(&v186, "uh");
    sub_1AE5CC990(&v188, "tusi");
    sub_1AE5CC990(&v190, "ki");
    sub_1AE5CC990(&v192, "ih");
    sub_1AE6EA0C0(v62, v184, 5uLL);
    sub_1AE71365C(v194, v63, v62);
    sub_1AE7136F4(v65, v194, 1);
    sub_1AE713770(v327, v66, v65);
    sub_1AE5CC990(v60, "te-Latn");
    sub_1AE5CC990(v57, "");
    sub_1AE5CC990(v173, "atanu");
    sub_1AE5CC990(&v175, "miru");
    sub_1AE5CC990(&v177, "emiti");
    sub_1AE5CC990(&v179, "avi");
    sub_1AE5CC990(&v181, "eppudu");
    sub_1AE6EA0C0(v56, v173, 5uLL);
    sub_1AE71365C(v183, v57, v56);
    sub_1AE7136F4(v59, v183, 1);
    sub_1AE713770(v328, v60, v59);
    sub_1AE5CC990(v54, "ta-Latn");
    sub_1AE5CC990(v51, "");
    sub_1AE5CC990(v162, "nan");
    sub_1AE5CC990(&v164, "avar");
    sub_1AE5CC990(&v166, "ninkal");
    sub_1AE5CC990(&v168, "enna");
    sub_1AE5CC990(&v170, "atu");
    sub_1AE6EA0C0(v50, v162, 5uLL);
    sub_1AE71365C(v172, v51, v50);
    sub_1AE7136F4(v53, v172, 1);
    sub_1AE713770(v329, v54, v53);
    sub_1AE5CC990(v48, "cs_CZ");
    sub_1AE5CC990(v45, "");
    sub_1AE5CC990(v155, "čau");
    sub_1AE5CC990(&v157, "já");
    sub_1AE5CC990(&v159, "jsem");
    sub_1AE6EA0C0(v44, v155, 3uLL);
    sub_1AE71365C(v161, v45, v44);
    sub_1AE7136F4(v47, v161, 1);
    sub_1AE713770(v330, v48, v47);
    sub_1AE5CC990(v42, "sl_SI");
    sub_1AE5CC990(v39, "");
    sub_1AE5CC990(v148, "ja");
    sub_1AE5CC990(&v150, "ne");
    sub_1AE5CC990(&v152, "v");
    sub_1AE6EA0C0(v38, v148, 3uLL);
    sub_1AE71365C(v154, v39, v38);
    sub_1AE7136F4(v41, v154, 1);
    sub_1AE713770(v331, v42, v41);
    sub_1AE5CC990(v36, "lt_LT");
    sub_1AE5CC990(v33, "");
    sub_1AE5CC990(v141, "aš");
    sub_1AE5CC990(&v143, "man");
    sub_1AE5CC990(&v145, "tu");
    sub_1AE6EA0C0(v32, v141, 3uLL);
    sub_1AE71365C(v147, v33, v32);
    sub_1AE7136F4(v35, v147, 1);
    sub_1AE713770(v332, v36, v35);
    sub_1AE5CC990(v30, "id_ID");
    sub_1AE5CC990(v27, "");
    sub_1AE5CC990(v134, "aku");
    sub_1AE5CC990(&v136, "saya");
    sub_1AE5CC990(&v138, "itu");
    sub_1AE6EA0C0(v26, v134, 3uLL);
    sub_1AE71365C(v140, v27, v26);
    sub_1AE7136F4(v29, v140, 1);
    sub_1AE713770(v333, v30, v29);
    sub_1AE7137EC(v316, 18);
    sub_1AE713C54(v333);
    sub_1AE713C54(v332);
    sub_1AE713C54(v331);
    sub_1AE713C54(v330);
    sub_1AE713C54(v329);
    sub_1AE713C54(v328);
    sub_1AE713C54(v327);
    sub_1AE713C54(v326);
    sub_1AE713C54(v325);
    sub_1AE713C54(v324);
    sub_1AE713C54(v323);
    sub_1AE713C54(v322);
    sub_1AE713C54(v321);
    sub_1AE713C54(v320);
    sub_1AE713C54(v319);
    sub_1AE713C54(v318);
    sub_1AE713C54(v317);
    sub_1AE713C54(v316);
    sub_1AE659D30(v29);
    sub_1AE713C90(v140);
    sub_1AE645234(v26);
    if (v139 < 0)
    {
      operator delete(v138);
      if ((v137 & 0x80000000) == 0)
      {
LABEL_50:
        if ((v135 & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_189;
      }
    }

    else if ((v137 & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    operator delete(v136);
    if ((v135 & 0x80000000) == 0)
    {
LABEL_51:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_190;
    }

LABEL_189:
    operator delete(v134[0]);
    if ((v28 & 0x80000000) == 0)
    {
LABEL_52:
      if ((v31 & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

LABEL_191:
      operator delete(v30[0]);
LABEL_53:
      sub_1AE659D30(v35);
      sub_1AE713C90(v147);
      sub_1AE645234(v32);
      if (v146 < 0)
      {
        operator delete(v145);
        if ((v144 & 0x80000000) == 0)
        {
LABEL_55:
          if ((v142 & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_194;
        }
      }

      else if ((v144 & 0x80000000) == 0)
      {
        goto LABEL_55;
      }

      operator delete(v143);
      if ((v142 & 0x80000000) == 0)
      {
LABEL_56:
        if ((v34 & 0x80000000) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_195;
      }

LABEL_194:
      operator delete(v141[0]);
      if ((v34 & 0x80000000) == 0)
      {
LABEL_57:
        if ((v37 & 0x80000000) == 0)
        {
          goto LABEL_58;
        }

LABEL_196:
        operator delete(v36[0]);
LABEL_58:
        sub_1AE659D30(v41);
        sub_1AE713C90(v154);
        sub_1AE645234(v38);
        if (v153 < 0)
        {
          operator delete(v152);
          if ((v151 & 0x80000000) == 0)
          {
LABEL_60:
            if ((v149 & 0x80000000) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_199;
          }
        }

        else if ((v151 & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

        operator delete(v150);
        if ((v149 & 0x80000000) == 0)
        {
LABEL_61:
          if ((v40 & 0x80000000) == 0)
          {
            goto LABEL_62;
          }

          goto LABEL_200;
        }

LABEL_199:
        operator delete(v148[0]);
        if ((v40 & 0x80000000) == 0)
        {
LABEL_62:
          if ((v43 & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

LABEL_201:
          operator delete(v42[0]);
LABEL_63:
          sub_1AE659D30(v47);
          sub_1AE713C90(v161);
          sub_1AE645234(v44);
          if (v160 < 0)
          {
            operator delete(v159);
            if ((v158 & 0x80000000) == 0)
            {
LABEL_65:
              if ((v156 & 0x80000000) == 0)
              {
                goto LABEL_66;
              }

              goto LABEL_204;
            }
          }

          else if ((v158 & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          operator delete(v157);
          if ((v156 & 0x80000000) == 0)
          {
LABEL_66:
            if ((v46 & 0x80000000) == 0)
            {
              goto LABEL_67;
            }

            goto LABEL_205;
          }

LABEL_204:
          operator delete(v155[0]);
          if ((v46 & 0x80000000) == 0)
          {
LABEL_67:
            if ((v49 & 0x80000000) == 0)
            {
              goto LABEL_68;
            }

LABEL_206:
            operator delete(v48[0]);
LABEL_68:
            sub_1AE659D30(v53);
            sub_1AE713C90(v172);
            sub_1AE645234(v50);
            if (v171 < 0)
            {
              operator delete(v170);
              if ((v169 & 0x80000000) == 0)
              {
LABEL_70:
                if ((v167 & 0x80000000) == 0)
                {
                  goto LABEL_71;
                }

                goto LABEL_209;
              }
            }

            else if ((v169 & 0x80000000) == 0)
            {
              goto LABEL_70;
            }

            operator delete(v168);
            if ((v167 & 0x80000000) == 0)
            {
LABEL_71:
              if ((v165 & 0x80000000) == 0)
              {
                goto LABEL_72;
              }

              goto LABEL_210;
            }

LABEL_209:
            operator delete(v166);
            if ((v165 & 0x80000000) == 0)
            {
LABEL_72:
              if ((v163 & 0x80000000) == 0)
              {
                goto LABEL_73;
              }

              goto LABEL_211;
            }

LABEL_210:
            operator delete(v164);
            if ((v163 & 0x80000000) == 0)
            {
LABEL_73:
              if ((v52 & 0x80000000) == 0)
              {
                goto LABEL_74;
              }

              goto LABEL_212;
            }

LABEL_211:
            operator delete(v162[0]);
            if ((v52 & 0x80000000) == 0)
            {
LABEL_74:
              if ((v55 & 0x80000000) == 0)
              {
                goto LABEL_75;
              }

LABEL_213:
              operator delete(v54[0]);
LABEL_75:
              sub_1AE659D30(v59);
              sub_1AE713C90(v183);
              sub_1AE645234(v56);
              if (v182 < 0)
              {
                operator delete(v181);
                if ((v180 & 0x80000000) == 0)
                {
LABEL_77:
                  if ((v178 & 0x80000000) == 0)
                  {
                    goto LABEL_78;
                  }

                  goto LABEL_216;
                }
              }

              else if ((v180 & 0x80000000) == 0)
              {
                goto LABEL_77;
              }

              operator delete(v179);
              if ((v178 & 0x80000000) == 0)
              {
LABEL_78:
                if ((v176 & 0x80000000) == 0)
                {
                  goto LABEL_79;
                }

                goto LABEL_217;
              }

LABEL_216:
              operator delete(v177);
              if ((v176 & 0x80000000) == 0)
              {
LABEL_79:
                if ((v174 & 0x80000000) == 0)
                {
                  goto LABEL_80;
                }

                goto LABEL_218;
              }

LABEL_217:
              operator delete(v175);
              if ((v174 & 0x80000000) == 0)
              {
LABEL_80:
                if ((v58 & 0x80000000) == 0)
                {
                  goto LABEL_81;
                }

                goto LABEL_219;
              }

LABEL_218:
              operator delete(v173[0]);
              if ((v58 & 0x80000000) == 0)
              {
LABEL_81:
                if ((v61 & 0x80000000) == 0)
                {
                  goto LABEL_82;
                }

LABEL_220:
                operator delete(v60[0]);
LABEL_82:
                sub_1AE659D30(v65);
                sub_1AE713C90(v194);
                sub_1AE645234(v62);
                if (v193 < 0)
                {
                  operator delete(v192);
                  if ((v191 & 0x80000000) == 0)
                  {
LABEL_84:
                    if ((v189 & 0x80000000) == 0)
                    {
                      goto LABEL_85;
                    }

                    goto LABEL_223;
                  }
                }

                else if ((v191 & 0x80000000) == 0)
                {
                  goto LABEL_84;
                }

                operator delete(v190);
                if ((v189 & 0x80000000) == 0)
                {
LABEL_85:
                  if ((v187 & 0x80000000) == 0)
                  {
                    goto LABEL_86;
                  }

                  goto LABEL_224;
                }

LABEL_223:
                operator delete(v188);
                if ((v187 & 0x80000000) == 0)
                {
LABEL_86:
                  if ((v185 & 0x80000000) == 0)
                  {
                    goto LABEL_87;
                  }

                  goto LABEL_225;
                }

LABEL_224:
                operator delete(v186);
                if ((v185 & 0x80000000) == 0)
                {
LABEL_87:
                  if ((v64 & 0x80000000) == 0)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_226;
                }

LABEL_225:
                operator delete(v184[0]);
                if ((v64 & 0x80000000) == 0)
                {
LABEL_88:
                  if ((v67 & 0x80000000) == 0)
                  {
                    goto LABEL_89;
                  }

LABEL_227:
                  operator delete(v66[0]);
LABEL_89:
                  sub_1AE659D30(v71);
                  sub_1AE713C90(v205);
                  sub_1AE645234(v68);
                  if (v204 < 0)
                  {
                    operator delete(v203);
                    if ((v202 & 0x80000000) == 0)
                    {
LABEL_91:
                      if ((v200 & 0x80000000) == 0)
                      {
                        goto LABEL_92;
                      }

                      goto LABEL_230;
                    }
                  }

                  else if ((v202 & 0x80000000) == 0)
                  {
                    goto LABEL_91;
                  }

                  operator delete(v201);
                  if ((v200 & 0x80000000) == 0)
                  {
LABEL_92:
                    if ((v198 & 0x80000000) == 0)
                    {
                      goto LABEL_93;
                    }

                    goto LABEL_231;
                  }

LABEL_230:
                  operator delete(v199);
                  if ((v198 & 0x80000000) == 0)
                  {
LABEL_93:
                    if ((v196 & 0x80000000) == 0)
                    {
                      goto LABEL_94;
                    }

                    goto LABEL_232;
                  }

LABEL_231:
                  operator delete(v197);
                  if ((v196 & 0x80000000) == 0)
                  {
LABEL_94:
                    if ((v70 & 0x80000000) == 0)
                    {
                      goto LABEL_95;
                    }

                    goto LABEL_233;
                  }

LABEL_232:
                  operator delete(v195[0]);
                  if ((v70 & 0x80000000) == 0)
                  {
LABEL_95:
                    if ((v73 & 0x80000000) == 0)
                    {
                      goto LABEL_96;
                    }

LABEL_234:
                    operator delete(v72[0]);
LABEL_96:
                    sub_1AE659D30(v77);
                    sub_1AE713C90(v216);
                    sub_1AE645234(v74);
                    if (v215 < 0)
                    {
                      operator delete(v214);
                      if ((v213 & 0x80000000) == 0)
                      {
LABEL_98:
                        if ((v211 & 0x80000000) == 0)
                        {
                          goto LABEL_99;
                        }

                        goto LABEL_237;
                      }
                    }

                    else if ((v213 & 0x80000000) == 0)
                    {
                      goto LABEL_98;
                    }

                    operator delete(v212);
                    if ((v211 & 0x80000000) == 0)
                    {
LABEL_99:
                      if ((v209 & 0x80000000) == 0)
                      {
                        goto LABEL_100;
                      }

                      goto LABEL_238;
                    }

LABEL_237:
                    operator delete(v210);
                    if ((v209 & 0x80000000) == 0)
                    {
LABEL_100:
                      if ((v207 & 0x80000000) == 0)
                      {
                        goto LABEL_101;
                      }

                      goto LABEL_239;
                    }

LABEL_238:
                    operator delete(v208);
                    if ((v207 & 0x80000000) == 0)
                    {
LABEL_101:
                      if ((v76 & 0x80000000) == 0)
                      {
                        goto LABEL_102;
                      }

                      goto LABEL_240;
                    }

LABEL_239:
                    operator delete(v206[0]);
                    if ((v76 & 0x80000000) == 0)
                    {
LABEL_102:
                      if ((v79 & 0x80000000) == 0)
                      {
                        goto LABEL_103;
                      }

LABEL_241:
                      operator delete(v78[0]);
LABEL_103:
                      sub_1AE659D30(v83);
                      sub_1AE713C90(v227);
                      sub_1AE645234(v80);
                      if (v226 < 0)
                      {
                        operator delete(v225);
                        if ((v224 & 0x80000000) == 0)
                        {
LABEL_105:
                          if ((v222 & 0x80000000) == 0)
                          {
                            goto LABEL_106;
                          }

                          goto LABEL_244;
                        }
                      }

                      else if ((v224 & 0x80000000) == 0)
                      {
                        goto LABEL_105;
                      }

                      operator delete(v223);
                      if ((v222 & 0x80000000) == 0)
                      {
LABEL_106:
                        if ((v220 & 0x80000000) == 0)
                        {
                          goto LABEL_107;
                        }

                        goto LABEL_245;
                      }

LABEL_244:
                      operator delete(v221);
                      if ((v220 & 0x80000000) == 0)
                      {
LABEL_107:
                        if ((v218 & 0x80000000) == 0)
                        {
                          goto LABEL_108;
                        }

                        goto LABEL_246;
                      }

LABEL_245:
                      operator delete(v219);
                      if ((v218 & 0x80000000) == 0)
                      {
LABEL_108:
                        if ((v82 & 0x80000000) == 0)
                        {
                          goto LABEL_109;
                        }

                        goto LABEL_247;
                      }

LABEL_246:
                      operator delete(v217[0]);
                      if ((v82 & 0x80000000) == 0)
                      {
LABEL_109:
                        if ((v85 & 0x80000000) == 0)
                        {
                          goto LABEL_110;
                        }

LABEL_248:
                        operator delete(v84[0]);
LABEL_110:
                        sub_1AE659D30(v89);
                        sub_1AE713C90(v238);
                        sub_1AE645234(v86);
                        if (v237 < 0)
                        {
                          operator delete(v236);
                          if ((v235 & 0x80000000) == 0)
                          {
LABEL_112:
                            if ((v233 & 0x80000000) == 0)
                            {
                              goto LABEL_113;
                            }

                            goto LABEL_251;
                          }
                        }

                        else if ((v235 & 0x80000000) == 0)
                        {
                          goto LABEL_112;
                        }

                        operator delete(v234);
                        if ((v233 & 0x80000000) == 0)
                        {
LABEL_113:
                          if ((v231 & 0x80000000) == 0)
                          {
                            goto LABEL_114;
                          }

                          goto LABEL_252;
                        }

LABEL_251:
                        operator delete(v232);
                        if ((v231 & 0x80000000) == 0)
                        {
LABEL_114:
                          if ((v229 & 0x80000000) == 0)
                          {
                            goto LABEL_115;
                          }

                          goto LABEL_253;
                        }

LABEL_252:
                        operator delete(v230);
                        if ((v229 & 0x80000000) == 0)
                        {
LABEL_115:
                          if ((v88 & 0x80000000) == 0)
                          {
                            goto LABEL_116;
                          }

                          goto LABEL_254;
                        }

LABEL_253:
                        operator delete(v228[0]);
                        if ((v88 & 0x80000000) == 0)
                        {
LABEL_116:
                          if ((v91 & 0x80000000) == 0)
                          {
                            goto LABEL_117;
                          }

LABEL_255:
                          operator delete(v90[0]);
LABEL_117:
                          sub_1AE659D30(v95);
                          sub_1AE713C90(v249);
                          sub_1AE645234(v92);
                          if (v248 < 0)
                          {
                            operator delete(v247);
                            if ((v246 & 0x80000000) == 0)
                            {
LABEL_119:
                              if ((v244 & 0x80000000) == 0)
                              {
                                goto LABEL_120;
                              }

                              goto LABEL_258;
                            }
                          }

                          else if ((v246 & 0x80000000) == 0)
                          {
                            goto LABEL_119;
                          }

                          operator delete(v245);
                          if ((v244 & 0x80000000) == 0)
                          {
LABEL_120:
                            if ((v242 & 0x80000000) == 0)
                            {
                              goto LABEL_121;
                            }

                            goto LABEL_259;
                          }

LABEL_258:
                          operator delete(v243);
                          if ((v242 & 0x80000000) == 0)
                          {
LABEL_121:
                            if ((v240 & 0x80000000) == 0)
                            {
                              goto LABEL_122;
                            }

                            goto LABEL_260;
                          }

LABEL_259:
                          operator delete(v241);
                          if ((v240 & 0x80000000) == 0)
                          {
LABEL_122:
                            if ((v94 & 0x80000000) == 0)
                            {
                              goto LABEL_123;
                            }

                            goto LABEL_261;
                          }

LABEL_260:
                          operator delete(v239[0]);
                          if ((v94 & 0x80000000) == 0)
                          {
LABEL_123:
                            if ((v97 & 0x80000000) == 0)
                            {
                              goto LABEL_124;
                            }

LABEL_262:
                            operator delete(v96[0]);
LABEL_124:
                            sub_1AE659D30(v101);
                            sub_1AE713C90(__dst);
                            sub_1AE645234(v98);
                            if (v259 < 0)
                            {
                              operator delete(v258);
                              if ((v257 & 0x80000000) == 0)
                              {
LABEL_126:
                                if ((v255 & 0x80000000) == 0)
                                {
                                  goto LABEL_127;
                                }

                                goto LABEL_265;
                              }
                            }

                            else if ((v257 & 0x80000000) == 0)
                            {
                              goto LABEL_126;
                            }

                            operator delete(v256);
                            if ((v255 & 0x80000000) == 0)
                            {
LABEL_127:
                              if ((v253 & 0x80000000) == 0)
                              {
                                goto LABEL_128;
                              }

                              goto LABEL_266;
                            }

LABEL_265:
                            operator delete(v254);
                            if ((v253 & 0x80000000) == 0)
                            {
LABEL_128:
                              if ((v251 & 0x80000000) == 0)
                              {
                                goto LABEL_129;
                              }

                              goto LABEL_267;
                            }

LABEL_266:
                            operator delete(v252);
                            if ((v251 & 0x80000000) == 0)
                            {
LABEL_129:
                              if ((v100 & 0x80000000) == 0)
                              {
                                goto LABEL_130;
                              }

                              goto LABEL_268;
                            }

LABEL_267:
                            operator delete(v250[0]);
                            if ((v100 & 0x80000000) == 0)
                            {
LABEL_130:
                              if ((v103 & 0x80000000) == 0)
                              {
                                goto LABEL_131;
                              }

LABEL_269:
                              operator delete(v102[0]);
LABEL_131:
                              sub_1AE659D30(v107);
                              sub_1AE713C90(v271);
                              sub_1AE645234(v104);
                              if (v270 < 0)
                              {
                                operator delete(__p);
                              }

                              if (v268 < 0)
                              {
                                operator delete(v267);
                              }

                              if (v266 < 0)
                              {
                                operator delete(v265);
                              }

                              if (v264 < 0)
                              {
                                operator delete(v263);
                              }

                              if (v262 < 0)
                              {
                                operator delete(v261[0]);
                                if ((v106 & 0x80000000) == 0)
                                {
LABEL_141:
                                  if ((v109 & 0x80000000) == 0)
                                  {
                                    goto LABEL_142;
                                  }

LABEL_272:
                                  operator delete(v108[0]);
LABEL_142:
                                  sub_1AE659D30(v113);
                                  sub_1AE713C90(v282);
                                  sub_1AE645234(v110);
                                  if (v281 < 0)
                                  {
                                    operator delete(v280);
                                  }

                                  if (v279 < 0)
                                  {
                                    operator delete(v278);
                                  }

                                  if (v277 < 0)
                                  {
                                    operator delete(v276);
                                  }

                                  if (v275 < 0)
                                  {
                                    operator delete(v274);
                                  }

                                  if (v273 < 0)
                                  {
                                    operator delete(v272[0]);
                                    if ((v112 & 0x80000000) == 0)
                                    {
LABEL_152:
                                      if ((v115 & 0x80000000) == 0)
                                      {
                                        goto LABEL_153;
                                      }

LABEL_275:
                                      operator delete(v114[0]);
LABEL_153:
                                      sub_1AE659D30(v119);
                                      sub_1AE713C90(v293);
                                      sub_1AE645234(v116);
                                      if (v292 < 0)
                                      {
                                        operator delete(v291);
                                      }

                                      if (v290 < 0)
                                      {
                                        operator delete(v289);
                                      }

                                      if (v288 < 0)
                                      {
                                        operator delete(v287);
                                      }

                                      if (v286 < 0)
                                      {
                                        operator delete(v285);
                                      }

                                      if (v284 < 0)
                                      {
                                        operator delete(v283[0]);
                                        if ((v118 & 0x80000000) == 0)
                                        {
LABEL_163:
                                          if ((v121 & 0x80000000) == 0)
                                          {
                                            goto LABEL_164;
                                          }

LABEL_278:
                                          operator delete(v120[0]);
LABEL_164:
                                          sub_1AE659D30(v125);
                                          sub_1AE713C90(v304);
                                          sub_1AE645234(v122);
                                          if (v303 < 0)
                                          {
                                            operator delete(v302);
                                          }

                                          if (v301 < 0)
                                          {
                                            operator delete(v300);
                                          }

                                          if (v299 < 0)
                                          {
                                            operator delete(v298);
                                          }

                                          if (v297 < 0)
                                          {
                                            operator delete(v296);
                                          }

                                          if (v295 < 0)
                                          {
                                            operator delete(v294[0]);
                                            if ((v124 & 0x80000000) == 0)
                                            {
LABEL_174:
                                              if ((v127 & 0x80000000) == 0)
                                              {
                                                goto LABEL_175;
                                              }

LABEL_281:
                                              operator delete(v126[0]);
LABEL_175:
                                              sub_1AE659D30(v131);
                                              sub_1AE713C90(v315);
                                              sub_1AE645234(v128);
                                              if (v314 < 0)
                                              {
                                                operator delete(v313);
                                              }

                                              if (v312 < 0)
                                              {
                                                operator delete(v311);
                                              }

                                              if (v310 < 0)
                                              {
                                                operator delete(v309);
                                              }

                                              if (v308 < 0)
                                              {
                                                operator delete(v307);
                                              }

                                              if (v306 < 0)
                                              {
                                                operator delete(v305[0]);
                                                if ((v130 & 0x80000000) == 0)
                                                {
LABEL_185:
                                                  if ((v133 & 0x80000000) == 0)
                                                  {
LABEL_186:
                                                    __cxa_guard_release(&qword_1ED9AC818);
                                                    goto LABEL_2;
                                                  }

LABEL_284:
                                                  operator delete(v132[0]);
                                                  goto LABEL_186;
                                                }
                                              }

                                              else if ((v130 & 0x80000000) == 0)
                                              {
                                                goto LABEL_185;
                                              }

                                              operator delete(v129[0]);
                                              if ((v133 & 0x80000000) == 0)
                                              {
                                                goto LABEL_186;
                                              }

                                              goto LABEL_284;
                                            }
                                          }

                                          else if ((v124 & 0x80000000) == 0)
                                          {
                                            goto LABEL_174;
                                          }

                                          operator delete(v123[0]);
                                          if ((v127 & 0x80000000) == 0)
                                          {
                                            goto LABEL_175;
                                          }

                                          goto LABEL_281;
                                        }
                                      }

                                      else if ((v118 & 0x80000000) == 0)
                                      {
                                        goto LABEL_163;
                                      }

                                      operator delete(v117[0]);
                                      if ((v121 & 0x80000000) == 0)
                                      {
                                        goto LABEL_164;
                                      }

                                      goto LABEL_278;
                                    }
                                  }

                                  else if ((v112 & 0x80000000) == 0)
                                  {
                                    goto LABEL_152;
                                  }

                                  operator delete(v111[0]);
                                  if ((v115 & 0x80000000) == 0)
                                  {
                                    goto LABEL_153;
                                  }

                                  goto LABEL_275;
                                }
                              }

                              else if ((v106 & 0x80000000) == 0)
                              {
                                goto LABEL_141;
                              }

                              operator delete(v105[0]);
                              if ((v109 & 0x80000000) == 0)
                              {
                                goto LABEL_142;
                              }

                              goto LABEL_272;
                            }

LABEL_268:
                            operator delete(v99[0]);
                            if ((v103 & 0x80000000) == 0)
                            {
                              goto LABEL_131;
                            }

                            goto LABEL_269;
                          }

LABEL_261:
                          operator delete(v93[0]);
                          if ((v97 & 0x80000000) == 0)
                          {
                            goto LABEL_124;
                          }

                          goto LABEL_262;
                        }

LABEL_254:
                        operator delete(v87[0]);
                        if ((v91 & 0x80000000) == 0)
                        {
                          goto LABEL_117;
                        }

                        goto LABEL_255;
                      }

LABEL_247:
                      operator delete(v81[0]);
                      if ((v85 & 0x80000000) == 0)
                      {
                        goto LABEL_110;
                      }

                      goto LABEL_248;
                    }

LABEL_240:
                    operator delete(v75[0]);
                    if ((v79 & 0x80000000) == 0)
                    {
                      goto LABEL_103;
                    }

                    goto LABEL_241;
                  }

LABEL_233:
                  operator delete(v69[0]);
                  if ((v73 & 0x80000000) == 0)
                  {
                    goto LABEL_96;
                  }

                  goto LABEL_234;
                }

LABEL_226:
                operator delete(v63[0]);
                if ((v67 & 0x80000000) == 0)
                {
                  goto LABEL_89;
                }

                goto LABEL_227;
              }

LABEL_219:
              operator delete(v57[0]);
              if ((v61 & 0x80000000) == 0)
              {
                goto LABEL_82;
              }

              goto LABEL_220;
            }

LABEL_212:
            operator delete(v51[0]);
            if ((v55 & 0x80000000) == 0)
            {
              goto LABEL_75;
            }

            goto LABEL_213;
          }

LABEL_205:
          operator delete(v45[0]);
          if ((v49 & 0x80000000) == 0)
          {
            goto LABEL_68;
          }

          goto LABEL_206;
        }

LABEL_200:
        operator delete(v39[0]);
        if ((v43 & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_201;
      }

LABEL_195:
      operator delete(v33[0]);
      if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_196;
    }

LABEL_190:
    operator delete(v27[0]);
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_191;
  }

LABEL_2:
  v4 = v2[23];
  if (v4 >= 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = *v2;
  }

  if (v4 >= 0)
  {
    v6 = v2[23];
  }

  else
  {
    v6 = *(v2 + 1);
  }

  v7 = sub_1AE5DA928(v316, v5, v6);
  v8 = *(&xmmword_1ED9AC7F0 + 1);
  if (*(&xmmword_1ED9AC7F0 + 1))
  {
    v9 = v7;
    v10 = vcnt_s8(*(&xmmword_1ED9AC7F0 + 8));
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v11 = v7;
      if (v7 >= *(&xmmword_1ED9AC7F0 + 1))
      {
        v11 = v7 % *(&xmmword_1ED9AC7F0 + 1);
      }
    }

    else
    {
      v11 = (*(&xmmword_1ED9AC7F0 + 1) - 1) & v7;
    }

    v12 = *(xmmword_1ED9AC7F0 + 8 * v11);
    if (v12)
    {
      v13 = *v12;
      if (*v12)
      {
        v14 = v2[23];
        if (v14 >= 0)
        {
          v15 = v2[23];
        }

        else
        {
          v15 = *(v2 + 1);
        }

        if (v14 < 0)
        {
          v2 = *v2;
        }

        if (v10.u32[0] < 2uLL)
        {
          v16 = *(&xmmword_1ED9AC7F0 + 1) - 1;
          while (1)
          {
            v17 = v13[1];
            if (v9 == v17)
            {
              v18 = *(v13 + 39);
              v19 = v18;
              if (v18 < 0)
              {
                v18 = v13[3];
              }

              if (v18 == v15)
              {
                v20 = v19 >= 0 ? (v13 + 2) : v13[2];
                if (!memcmp(v20, v2, v15))
                {
                  goto LABEL_32;
                }
              }
            }

            else if ((v17 & v16) != v11)
            {
              goto LABEL_46;
            }

            v13 = *v13;
            if (!v13)
            {
              goto LABEL_46;
            }
          }
        }

        do
        {
          v22 = v13[1];
          if (v9 == v22)
          {
            v23 = *(v13 + 39);
            v24 = v23;
            if (v23 < 0)
            {
              v23 = v13[3];
            }

            if (v23 == v15)
            {
              v25 = v24 >= 0 ? (v13 + 2) : v13[2];
              if (!memcmp(v25, v2, v15))
              {
LABEL_32:
                sub_1AE713D14(v3, (v13 + 5));
                return result;
              }
            }
          }

          else
          {
            if (v22 >= v8)
            {
              v22 %= v8;
            }

            if (v22 != v11)
            {
              break;
            }
          }

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

LABEL_46:
  result = 0.0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 1065353216;
  return result;
}

void sub_1AE711610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void **a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, void **a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  sub_1AE713C54(v84);
  sub_1AE713C54(v83);
  sub_1AE713C54(v82);
  sub_1AE713C54(v81);
  sub_1AE713C54(v80);
  sub_1AE713C54(v79);
  sub_1AE713C54(a9);
  sub_1AE713C54(a10);
  sub_1AE713C54(a11);
  sub_1AE713C54(a12);
  sub_1AE713C54(a13);
  sub_1AE713C54(a14);
  sub_1AE713C54(a15);
  sub_1AE713C54(a16);
  sub_1AE713C54(a17);
  sub_1AE713C54(a18);
  sub_1AE713C54(v78);
  sub_1AE713C54(&STACK[0x1340]);
  sub_1AE659D30(&a28);
  sub_1AE713C90(&STACK[0x878]);
  sub_1AE645234(&a19);
  if (SLOBYTE(STACK[0x877]) < 0)
  {
    operator delete(STACK[0x860]);
  }

  if (SLOBYTE(STACK[0x85F]) < 0)
  {
    operator delete(STACK[0x848]);
    if ((SLOBYTE(STACK[0x847]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((SLOBYTE(STACK[0x847]) & 0x80000000) == 0)
  {
LABEL_5:
    if (a27 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  operator delete(STACK[0x830]);
  if (a27 < 0)
  {
LABEL_6:
    operator delete(a22);
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    operator delete(a33);
LABEL_12:
    sub_1AE659D30(&a48);
    sub_1AE713C90(&STACK[0x8F0]);
    sub_1AE645234(&a39);
    if (SLOBYTE(STACK[0x8EF]) < 0)
    {
      operator delete(STACK[0x8D8]);
      if ((SLOBYTE(STACK[0x8D7]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else if ((SLOBYTE(STACK[0x8D7]) & 0x80000000) == 0)
    {
LABEL_14:
      if (SLOBYTE(STACK[0x8BF]) < 0)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }

    operator delete(STACK[0x8C0]);
    if (SLOBYTE(STACK[0x8BF]) < 0)
    {
LABEL_15:
      operator delete(STACK[0x8A8]);
      if ((a47 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }

LABEL_20:
    if ((a47 & 0x80000000) == 0)
    {
LABEL_16:
      if ((a58 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_22:
      operator delete(a53);
LABEL_23:
      sub_1AE659D30(&a68);
      sub_1AE713C90(&STACK[0x968]);
      sub_1AE645234(&a59);
      if (SLOBYTE(STACK[0x967]) < 0)
      {
        operator delete(STACK[0x950]);
        if ((SLOBYTE(STACK[0x94F]) & 0x80000000) == 0)
        {
          goto LABEL_25;
        }
      }

      else if ((SLOBYTE(STACK[0x94F]) & 0x80000000) == 0)
      {
LABEL_25:
        if (SLOBYTE(STACK[0x937]) < 0)
        {
          goto LABEL_26;
        }

        goto LABEL_31;
      }

      operator delete(STACK[0x938]);
      if (SLOBYTE(STACK[0x937]) < 0)
      {
LABEL_26:
        operator delete(STACK[0x920]);
        if ((a67 & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_32;
      }

LABEL_31:
      if ((a67 & 0x80000000) == 0)
      {
LABEL_27:
        if ((a73 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

LABEL_33:
        operator delete(a72);
LABEL_34:
        sub_1AE659D30(&a77);
        sub_1AE713C90(&STACK[0x9E0]);
        sub_1AE645234(&a74);
        if (SLOBYTE(STACK[0x9DF]) < 0)
        {
          operator delete(STACK[0x9C8]);
          if ((SLOBYTE(STACK[0x9C7]) & 0x80000000) == 0)
          {
            goto LABEL_36;
          }
        }

        else if ((SLOBYTE(STACK[0x9C7]) & 0x80000000) == 0)
        {
LABEL_36:
          if (SLOBYTE(STACK[0x9AF]) < 0)
          {
            goto LABEL_37;
          }

          goto LABEL_42;
        }

        operator delete(STACK[0x9B0]);
        if (SLOBYTE(STACK[0x9AF]) < 0)
        {
LABEL_37:
          operator delete(STACK[0x998]);
          if ((a76 & 0x80000000) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_43;
        }

LABEL_42:
        if ((a76 & 0x80000000) == 0)
        {
LABEL_38:
          if ((SLOBYTE(STACK[0x20F]) & 0x80000000) == 0)
          {
            goto LABEL_45;
          }

LABEL_44:
          operator delete(a78);
LABEL_45:
          sub_1AE659D30(&STACK[0x240]);
          sub_1AE713C90(&STACK[0xA88]);
          sub_1AE645234(&STACK[0x210]);
          if (SLOBYTE(STACK[0xA87]) < 0)
          {
            operator delete(STACK[0xA70]);
            if ((SLOBYTE(STACK[0xA6F]) & 0x80000000) == 0)
            {
              goto LABEL_47;
            }
          }

          else if ((SLOBYTE(STACK[0xA6F]) & 0x80000000) == 0)
          {
LABEL_47:
            if (SLOBYTE(STACK[0xA57]) < 0)
            {
              goto LABEL_48;
            }

            goto LABEL_55;
          }

          operator delete(STACK[0xA58]);
          if (SLOBYTE(STACK[0xA57]) < 0)
          {
LABEL_48:
            operator delete(STACK[0xA40]);
            if ((SLOBYTE(STACK[0xA3F]) & 0x80000000) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_56;
          }

LABEL_55:
          if ((SLOBYTE(STACK[0xA3F]) & 0x80000000) == 0)
          {
LABEL_49:
            if (SLOBYTE(STACK[0xA27]) < 0)
            {
              goto LABEL_50;
            }

            goto LABEL_57;
          }

LABEL_56:
          operator delete(STACK[0xA28]);
          if (SLOBYTE(STACK[0xA27]) < 0)
          {
LABEL_50:
            operator delete(STACK[0xA10]);
            if ((SLOBYTE(STACK[0x23F]) & 0x80000000) == 0)
            {
              goto LABEL_51;
            }

            goto LABEL_58;
          }

LABEL_57:
          if ((SLOBYTE(STACK[0x23F]) & 0x80000000) == 0)
          {
LABEL_51:
            if ((SLOBYTE(STACK[0x27F]) & 0x80000000) == 0)
            {
              goto LABEL_60;
            }

LABEL_59:
            operator delete(STACK[0x268]);
LABEL_60:
            sub_1AE659D30(&STACK[0x2B0]);
            sub_1AE713C90(&STACK[0xB30]);
            sub_1AE645234(&STACK[0x280]);
            if (SLOBYTE(STACK[0xB2F]) < 0)
            {
              operator delete(STACK[0xB18]);
              if ((SLOBYTE(STACK[0xB17]) & 0x80000000) == 0)
              {
                goto LABEL_62;
              }
            }

            else if ((SLOBYTE(STACK[0xB17]) & 0x80000000) == 0)
            {
LABEL_62:
              if (SLOBYTE(STACK[0xAFF]) < 0)
              {
                goto LABEL_63;
              }

              goto LABEL_70;
            }

            operator delete(STACK[0xB00]);
            if (SLOBYTE(STACK[0xAFF]) < 0)
            {
LABEL_63:
              operator delete(STACK[0xAE8]);
              if ((SLOBYTE(STACK[0xAE7]) & 0x80000000) == 0)
              {
                goto LABEL_64;
              }

              goto LABEL_71;
            }

LABEL_70:
            if ((SLOBYTE(STACK[0xAE7]) & 0x80000000) == 0)
            {
LABEL_64:
              if (SLOBYTE(STACK[0xACF]) < 0)
              {
                goto LABEL_65;
              }

              goto LABEL_72;
            }

LABEL_71:
            operator delete(STACK[0xAD0]);
            if (SLOBYTE(STACK[0xACF]) < 0)
            {
LABEL_65:
              operator delete(STACK[0xAB8]);
              if ((SLOBYTE(STACK[0x2AF]) & 0x80000000) == 0)
              {
                goto LABEL_66;
              }

              goto LABEL_73;
            }

LABEL_72:
            if ((SLOBYTE(STACK[0x2AF]) & 0x80000000) == 0)
            {
LABEL_66:
              if ((SLOBYTE(STACK[0x2EF]) & 0x80000000) == 0)
              {
                goto LABEL_75;
              }

LABEL_74:
              operator delete(STACK[0x2D8]);
LABEL_75:
              sub_1AE659D30(&STACK[0x320]);
              sub_1AE713C90(&STACK[0xBD8]);
              sub_1AE645234(&STACK[0x2F0]);
              if (SLOBYTE(STACK[0xBD7]) < 0)
              {
                operator delete(STACK[0xBC0]);
                if ((SLOBYTE(STACK[0xBBF]) & 0x80000000) == 0)
                {
                  goto LABEL_77;
                }
              }

              else if ((SLOBYTE(STACK[0xBBF]) & 0x80000000) == 0)
              {
LABEL_77:
                if (SLOBYTE(STACK[0xBA7]) < 0)
                {
                  goto LABEL_78;
                }

                goto LABEL_85;
              }

              operator delete(STACK[0xBA8]);
              if (SLOBYTE(STACK[0xBA7]) < 0)
              {
LABEL_78:
                operator delete(STACK[0xB90]);
                if ((SLOBYTE(STACK[0xB8F]) & 0x80000000) == 0)
                {
                  goto LABEL_79;
                }

                goto LABEL_86;
              }

LABEL_85:
              if ((SLOBYTE(STACK[0xB8F]) & 0x80000000) == 0)
              {
LABEL_79:
                if (SLOBYTE(STACK[0xB77]) < 0)
                {
                  goto LABEL_80;
                }

                goto LABEL_87;
              }

LABEL_86:
              operator delete(STACK[0xB78]);
              if (SLOBYTE(STACK[0xB77]) < 0)
              {
LABEL_80:
                operator delete(STACK[0xB60]);
                if ((SLOBYTE(STACK[0x31F]) & 0x80000000) == 0)
                {
                  goto LABEL_81;
                }

                goto LABEL_88;
              }

LABEL_87:
              if ((SLOBYTE(STACK[0x31F]) & 0x80000000) == 0)
              {
LABEL_81:
                if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
                {
                  goto LABEL_90;
                }

LABEL_89:
                operator delete(STACK[0x348]);
LABEL_90:
                sub_1AE659D30(&STACK[0x390]);
                sub_1AE713C90(&STACK[0xC80]);
                sub_1AE645234(&STACK[0x360]);
                if (SLOBYTE(STACK[0xC7F]) < 0)
                {
                  operator delete(STACK[0xC68]);
                  if ((SLOBYTE(STACK[0xC67]) & 0x80000000) == 0)
                  {
                    goto LABEL_92;
                  }
                }

                else if ((SLOBYTE(STACK[0xC67]) & 0x80000000) == 0)
                {
LABEL_92:
                  if (SLOBYTE(STACK[0xC4F]) < 0)
                  {
                    goto LABEL_93;
                  }

                  goto LABEL_100;
                }

                operator delete(STACK[0xC50]);
                if (SLOBYTE(STACK[0xC4F]) < 0)
                {
LABEL_93:
                  operator delete(STACK[0xC38]);
                  if ((SLOBYTE(STACK[0xC37]) & 0x80000000) == 0)
                  {
                    goto LABEL_94;
                  }

                  goto LABEL_101;
                }

LABEL_100:
                if ((SLOBYTE(STACK[0xC37]) & 0x80000000) == 0)
                {
LABEL_94:
                  if (SLOBYTE(STACK[0xC1F]) < 0)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_102;
                }

LABEL_101:
                operator delete(STACK[0xC20]);
                if (SLOBYTE(STACK[0xC1F]) < 0)
                {
LABEL_95:
                  operator delete(STACK[0xC08]);
                  if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
                  {
                    goto LABEL_96;
                  }

                  goto LABEL_103;
                }

LABEL_102:
                if ((SLOBYTE(STACK[0x38F]) & 0x80000000) == 0)
                {
LABEL_96:
                  if ((SLOBYTE(STACK[0x3CF]) & 0x80000000) == 0)
                  {
                    goto LABEL_105;
                  }

LABEL_104:
                  operator delete(STACK[0x3B8]);
LABEL_105:
                  sub_1AE659D30(&STACK[0x400]);
                  sub_1AE713C90(&STACK[0xD28]);
                  sub_1AE645234(&STACK[0x3D0]);
                  if (SLOBYTE(STACK[0xD27]) < 0)
                  {
                    operator delete(STACK[0xD10]);
                    if ((SLOBYTE(STACK[0xD0F]) & 0x80000000) == 0)
                    {
                      goto LABEL_107;
                    }
                  }

                  else if ((SLOBYTE(STACK[0xD0F]) & 0x80000000) == 0)
                  {
LABEL_107:
                    if (SLOBYTE(STACK[0xCF7]) < 0)
                    {
                      goto LABEL_108;
                    }

                    goto LABEL_115;
                  }

                  operator delete(STACK[0xCF8]);
                  if (SLOBYTE(STACK[0xCF7]) < 0)
                  {
LABEL_108:
                    operator delete(STACK[0xCE0]);
                    if ((SLOBYTE(STACK[0xCDF]) & 0x80000000) == 0)
                    {
                      goto LABEL_109;
                    }

                    goto LABEL_116;
                  }

LABEL_115:
                  if ((SLOBYTE(STACK[0xCDF]) & 0x80000000) == 0)
                  {
LABEL_109:
                    if (SLOBYTE(STACK[0xCC7]) < 0)
                    {
                      goto LABEL_110;
                    }

                    goto LABEL_117;
                  }

LABEL_116:
                  operator delete(STACK[0xCC8]);
                  if (SLOBYTE(STACK[0xCC7]) < 0)
                  {
LABEL_110:
                    operator delete(STACK[0xCB0]);
                    if ((SLOBYTE(STACK[0x3FF]) & 0x80000000) == 0)
                    {
                      goto LABEL_111;
                    }

                    goto LABEL_118;
                  }

LABEL_117:
                  if ((SLOBYTE(STACK[0x3FF]) & 0x80000000) == 0)
                  {
LABEL_111:
                    if ((SLOBYTE(STACK[0x43F]) & 0x80000000) == 0)
                    {
                      goto LABEL_120;
                    }

LABEL_119:
                    operator delete(STACK[0x428]);
LABEL_120:
                    sub_1AE659D30(&STACK[0x470]);
                    sub_1AE713C90(&STACK[0xDD0]);
                    sub_1AE645234(&STACK[0x440]);
                    if (SLOBYTE(STACK[0xDCF]) < 0)
                    {
                      operator delete(STACK[0xDB8]);
                      if ((SLOBYTE(STACK[0xDB7]) & 0x80000000) == 0)
                      {
                        goto LABEL_122;
                      }
                    }

                    else if ((SLOBYTE(STACK[0xDB7]) & 0x80000000) == 0)
                    {
LABEL_122:
                      if (SLOBYTE(STACK[0xD9F]) < 0)
                      {
                        goto LABEL_123;
                      }

                      goto LABEL_130;
                    }

                    operator delete(STACK[0xDA0]);
                    if (SLOBYTE(STACK[0xD9F]) < 0)
                    {
LABEL_123:
                      operator delete(STACK[0xD88]);
                      if ((SLOBYTE(STACK[0xD87]) & 0x80000000) == 0)
                      {
                        goto LABEL_124;
                      }

                      goto LABEL_131;
                    }

LABEL_130:
                    if ((SLOBYTE(STACK[0xD87]) & 0x80000000) == 0)
                    {
LABEL_124:
                      if (SLOBYTE(STACK[0xD6F]) < 0)
                      {
                        goto LABEL_125;
                      }

                      goto LABEL_132;
                    }

LABEL_131:
                    operator delete(STACK[0xD70]);
                    if (SLOBYTE(STACK[0xD6F]) < 0)
                    {
LABEL_125:
                      operator delete(STACK[0xD58]);
                      if ((SLOBYTE(STACK[0x46F]) & 0x80000000) == 0)
                      {
                        goto LABEL_126;
                      }

                      goto LABEL_133;
                    }

LABEL_132:
                    if ((SLOBYTE(STACK[0x46F]) & 0x80000000) == 0)
                    {
LABEL_126:
                      if ((SLOBYTE(STACK[0x4AF]) & 0x80000000) == 0)
                      {
                        goto LABEL_135;
                      }

LABEL_134:
                      operator delete(STACK[0x498]);
LABEL_135:
                      sub_1AE659D30(&STACK[0x4E0]);
                      sub_1AE713C90(&STACK[0xE78]);
                      sub_1AE645234(&STACK[0x4B0]);
                      if (SLOBYTE(STACK[0xE77]) < 0)
                      {
                        operator delete(STACK[0xE60]);
                        if ((SLOBYTE(STACK[0xE5F]) & 0x80000000) == 0)
                        {
                          goto LABEL_137;
                        }
                      }

                      else if ((SLOBYTE(STACK[0xE5F]) & 0x80000000) == 0)
                      {
LABEL_137:
                        if (SLOBYTE(STACK[0xE47]) < 0)
                        {
                          goto LABEL_138;
                        }

                        goto LABEL_145;
                      }

                      operator delete(STACK[0xE48]);
                      if (SLOBYTE(STACK[0xE47]) < 0)
                      {
LABEL_138:
                        operator delete(STACK[0xE30]);
                        if ((SLOBYTE(STACK[0xE2F]) & 0x80000000) == 0)
                        {
                          goto LABEL_139;
                        }

                        goto LABEL_146;
                      }

LABEL_145:
                      if ((SLOBYTE(STACK[0xE2F]) & 0x80000000) == 0)
                      {
LABEL_139:
                        if (SLOBYTE(STACK[0xE17]) < 0)
                        {
                          goto LABEL_140;
                        }

                        goto LABEL_147;
                      }

LABEL_146:
                      operator delete(STACK[0xE18]);
                      if (SLOBYTE(STACK[0xE17]) < 0)
                      {
LABEL_140:
                        operator delete(STACK[0xE00]);
                        if ((SLOBYTE(STACK[0x4DF]) & 0x80000000) == 0)
                        {
                          goto LABEL_141;
                        }

                        goto LABEL_148;
                      }

LABEL_147:
                      if ((SLOBYTE(STACK[0x4DF]) & 0x80000000) == 0)
                      {
LABEL_141:
                        if ((SLOBYTE(STACK[0x51F]) & 0x80000000) == 0)
                        {
                          goto LABEL_150;
                        }

LABEL_149:
                        operator delete(STACK[0x508]);
LABEL_150:
                        sub_1AE659D30(&STACK[0x550]);
                        sub_1AE713C90(&STACK[0xF20]);
                        sub_1AE645234(&STACK[0x520]);
                        if (SLOBYTE(STACK[0xF1F]) < 0)
                        {
                          operator delete(STACK[0xF08]);
                          if ((SLOBYTE(STACK[0xF07]) & 0x80000000) == 0)
                          {
                            goto LABEL_152;
                          }
                        }

                        else if ((SLOBYTE(STACK[0xF07]) & 0x80000000) == 0)
                        {
LABEL_152:
                          if (SLOBYTE(STACK[0xEEF]) < 0)
                          {
                            goto LABEL_153;
                          }

                          goto LABEL_160;
                        }

                        operator delete(STACK[0xEF0]);
                        if (SLOBYTE(STACK[0xEEF]) < 0)
                        {
LABEL_153:
                          operator delete(STACK[0xED8]);
                          if ((SLOBYTE(STACK[0xED7]) & 0x80000000) == 0)
                          {
                            goto LABEL_154;
                          }

                          goto LABEL_161;
                        }

LABEL_160:
                        if ((SLOBYTE(STACK[0xED7]) & 0x80000000) == 0)
                        {
LABEL_154:
                          if (SLOBYTE(STACK[0xEBF]) < 0)
                          {
                            goto LABEL_155;
                          }

                          goto LABEL_162;
                        }

LABEL_161:
                        operator delete(STACK[0xEC0]);
                        if (SLOBYTE(STACK[0xEBF]) < 0)
                        {
LABEL_155:
                          operator delete(STACK[0xEA8]);
                          if ((SLOBYTE(STACK[0x54F]) & 0x80000000) == 0)
                          {
                            goto LABEL_156;
                          }

                          goto LABEL_163;
                        }

LABEL_162:
                        if ((SLOBYTE(STACK[0x54F]) & 0x80000000) == 0)
                        {
LABEL_156:
                          if ((SLOBYTE(STACK[0x58F]) & 0x80000000) == 0)
                          {
                            goto LABEL_165;
                          }

LABEL_164:
                          operator delete(STACK[0x578]);
LABEL_165:
                          sub_1AE659D30(&STACK[0x5C0]);
                          sub_1AE713C90(&STACK[0xFC8]);
                          sub_1AE645234(&STACK[0x590]);
                          if (SLOBYTE(STACK[0xFC7]) < 0)
                          {
                            operator delete(STACK[0xFB0]);
                            if ((SLOBYTE(STACK[0xFAF]) & 0x80000000) == 0)
                            {
                              goto LABEL_167;
                            }
                          }

                          else if ((SLOBYTE(STACK[0xFAF]) & 0x80000000) == 0)
                          {
LABEL_167:
                            if (SLOBYTE(STACK[0xF97]) < 0)
                            {
                              goto LABEL_168;
                            }

                            goto LABEL_175;
                          }

                          operator delete(STACK[0xF98]);
                          if (SLOBYTE(STACK[0xF97]) < 0)
                          {
LABEL_168:
                            operator delete(STACK[0xF80]);
                            if ((SLOBYTE(STACK[0xF7F]) & 0x80000000) == 0)
                            {
                              goto LABEL_169;
                            }

                            goto LABEL_176;
                          }

LABEL_175:
                          if ((SLOBYTE(STACK[0xF7F]) & 0x80000000) == 0)
                          {
LABEL_169:
                            if (SLOBYTE(STACK[0xF67]) < 0)
                            {
                              goto LABEL_170;
                            }

                            goto LABEL_177;
                          }

LABEL_176:
                          operator delete(STACK[0xF68]);
                          if (SLOBYTE(STACK[0xF67]) < 0)
                          {
LABEL_170:
                            operator delete(STACK[0xF50]);
                            if ((SLOBYTE(STACK[0x5BF]) & 0x80000000) == 0)
                            {
                              goto LABEL_171;
                            }

                            goto LABEL_178;
                          }

LABEL_177:
                          if ((SLOBYTE(STACK[0x5BF]) & 0x80000000) == 0)
                          {
LABEL_171:
                            if ((SLOBYTE(STACK[0x5FF]) & 0x80000000) == 0)
                            {
                              goto LABEL_180;
                            }

LABEL_179:
                            operator delete(STACK[0x5E8]);
LABEL_180:
                            sub_1AE659D30(&STACK[0x630]);
                            sub_1AE713C90(&STACK[0x1070]);
                            sub_1AE645234(&STACK[0x600]);
                            if (SLOBYTE(STACK[0x106F]) < 0)
                            {
                              operator delete(STACK[0x1058]);
                            }

                            if (SLOBYTE(STACK[0x1057]) < 0)
                            {
                              operator delete(STACK[0x1040]);
                            }

                            if (SLOBYTE(STACK[0x103F]) < 0)
                            {
                              operator delete(STACK[0x1028]);
                            }

                            if (SLOBYTE(STACK[0x1027]) < 0)
                            {
                              operator delete(STACK[0x1010]);
                            }

                            if (SLOBYTE(STACK[0x100F]) < 0)
                            {
                              operator delete(STACK[0xFF8]);
                              if ((SLOBYTE(STACK[0x62F]) & 0x80000000) == 0)
                              {
                                goto LABEL_190;
                              }
                            }

                            else if ((SLOBYTE(STACK[0x62F]) & 0x80000000) == 0)
                            {
LABEL_190:
                              if ((SLOBYTE(STACK[0x66F]) & 0x80000000) == 0)
                              {
                                goto LABEL_195;
                              }

LABEL_194:
                              operator delete(STACK[0x658]);
LABEL_195:
                              sub_1AE659D30(&STACK[0x6A0]);
                              sub_1AE713C90(&STACK[0x1118]);
                              sub_1AE645234(&STACK[0x670]);
                              if (SLOBYTE(STACK[0x1117]) < 0)
                              {
                                operator delete(STACK[0x1100]);
                              }

                              if (SLOBYTE(STACK[0x10FF]) < 0)
                              {
                                operator delete(STACK[0x10E8]);
                              }

                              if (SLOBYTE(STACK[0x10E7]) < 0)
                              {
                                operator delete(STACK[0x10D0]);
                              }

                              if (SLOBYTE(STACK[0x10CF]) < 0)
                              {
                                operator delete(STACK[0x10B8]);
                              }

                              if (SLOBYTE(STACK[0x10B7]) < 0)
                              {
                                operator delete(STACK[0x10A0]);
                                if ((SLOBYTE(STACK[0x69F]) & 0x80000000) == 0)
                                {
                                  goto LABEL_205;
                                }
                              }

                              else if ((SLOBYTE(STACK[0x69F]) & 0x80000000) == 0)
                              {
LABEL_205:
                                if ((SLOBYTE(STACK[0x6DF]) & 0x80000000) == 0)
                                {
                                  goto LABEL_210;
                                }

LABEL_209:
                                operator delete(STACK[0x6C8]);
LABEL_210:
                                sub_1AE659D30(&STACK[0x710]);
                                sub_1AE713C90(&STACK[0x11C0]);
                                sub_1AE645234(&STACK[0x6E0]);
                                if (SLOBYTE(STACK[0x11BF]) < 0)
                                {
                                  operator delete(STACK[0x11A8]);
                                }

                                if (SLOBYTE(STACK[0x11A7]) < 0)
                                {
                                  operator delete(STACK[0x1190]);
                                }

                                if (SLOBYTE(STACK[0x118F]) < 0)
                                {
                                  operator delete(STACK[0x1178]);
                                }

                                if (SLOBYTE(STACK[0x1177]) < 0)
                                {
                                  operator delete(STACK[0x1160]);
                                }

                                if (SLOBYTE(STACK[0x115F]) < 0)
                                {
                                  operator delete(STACK[0x1148]);
                                  if ((SLOBYTE(STACK[0x70F]) & 0x80000000) == 0)
                                  {
                                    goto LABEL_220;
                                  }
                                }

                                else if ((SLOBYTE(STACK[0x70F]) & 0x80000000) == 0)
                                {
LABEL_220:
                                  if ((SLOBYTE(STACK[0x74F]) & 0x80000000) == 0)
                                  {
                                    goto LABEL_225;
                                  }

LABEL_224:
                                  operator delete(STACK[0x738]);
LABEL_225:
                                  sub_1AE659D30(&STACK[0x780]);
                                  sub_1AE713C90(&STACK[0x1268]);
                                  sub_1AE645234(&STACK[0x750]);
                                  if (SLOBYTE(STACK[0x1267]) < 0)
                                  {
                                    operator delete(STACK[0x1250]);
                                  }

                                  if (SLOBYTE(STACK[0x124F]) < 0)
                                  {
                                    operator delete(STACK[0x1238]);
                                  }

                                  if (SLOBYTE(STACK[0x1237]) < 0)
                                  {
                                    operator delete(STACK[0x1220]);
                                  }

                                  if (SLOBYTE(STACK[0x121F]) < 0)
                                  {
                                    operator delete(STACK[0x1208]);
                                  }

                                  if (SLOBYTE(STACK[0x1207]) < 0)
                                  {
                                    operator delete(STACK[0x11F0]);
                                    if ((SLOBYTE(STACK[0x77F]) & 0x80000000) == 0)
                                    {
                                      goto LABEL_235;
                                    }
                                  }

                                  else if ((SLOBYTE(STACK[0x77F]) & 0x80000000) == 0)
                                  {
LABEL_235:
                                    if ((SLOBYTE(STACK[0x7BF]) & 0x80000000) == 0)
                                    {
                                      goto LABEL_240;
                                    }

LABEL_239:
                                    operator delete(STACK[0x7A8]);
LABEL_240:
                                    sub_1AE659D30(&STACK[0x7F0]);
                                    sub_1AE713C90(&STACK[0x1310]);
                                    sub_1AE645234(&STACK[0x7C0]);
                                    if (SLOBYTE(STACK[0x130F]) < 0)
                                    {
                                      operator delete(STACK[0x12F8]);
                                    }

                                    if (SLOBYTE(STACK[0x12F7]) < 0)
                                    {
                                      operator delete(STACK[0x12E0]);
                                    }

                                    if (SLOBYTE(STACK[0x12DF]) < 0)
                                    {
                                      operator delete(STACK[0x12C8]);
                                    }

                                    if (SLOBYTE(STACK[0x12C7]) < 0)
                                    {
                                      operator delete(STACK[0x12B0]);
                                    }

                                    if (SLOBYTE(STACK[0x12AF]) < 0)
                                    {
                                      operator delete(STACK[0x1298]);
                                      if ((SLOBYTE(STACK[0x7EF]) & 0x80000000) == 0)
                                      {
                                        goto LABEL_250;
                                      }
                                    }

                                    else if ((SLOBYTE(STACK[0x7EF]) & 0x80000000) == 0)
                                    {
LABEL_250:
                                      if ((SLOBYTE(STACK[0x82F]) & 0x80000000) == 0)
                                      {
                                        goto LABEL_252;
                                      }

                                      goto LABEL_251;
                                    }

                                    operator delete(STACK[0x7D8]);
                                    if ((SLOBYTE(STACK[0x82F]) & 0x80000000) == 0)
                                    {
LABEL_252:
                                      __cxa_guard_abort(&qword_1ED9AC818);
                                      _Unwind_Resume(a1);
                                    }

LABEL_251:
                                    operator delete(STACK[0x818]);
                                    goto LABEL_252;
                                  }

                                  operator delete(STACK[0x768]);
                                  if ((SLOBYTE(STACK[0x7BF]) & 0x80000000) == 0)
                                  {
                                    goto LABEL_240;
                                  }

                                  goto LABEL_239;
                                }

                                operator delete(STACK[0x6F8]);
                                if ((SLOBYTE(STACK[0x74F]) & 0x80000000) == 0)
                                {
                                  goto LABEL_225;
                                }

                                goto LABEL_224;
                              }

                              operator delete(STACK[0x688]);
                              if ((SLOBYTE(STACK[0x6DF]) & 0x80000000) == 0)
                              {
                                goto LABEL_210;
                              }

                              goto LABEL_209;
                            }

                            operator delete(STACK[0x618]);
                            if ((SLOBYTE(STACK[0x66F]) & 0x80000000) == 0)
                            {
                              goto LABEL_195;
                            }

                            goto LABEL_194;
                          }

LABEL_178:
                          operator delete(STACK[0x5A8]);
                          if ((SLOBYTE(STACK[0x5FF]) & 0x80000000) == 0)
                          {
                            goto LABEL_180;
                          }

                          goto LABEL_179;
                        }

LABEL_163:
                        operator delete(STACK[0x538]);
                        if ((SLOBYTE(STACK[0x58F]) & 0x80000000) == 0)
                        {
                          goto LABEL_165;
                        }

                        goto LABEL_164;
                      }

LABEL_148:
                      operator delete(STACK[0x4C8]);
                      if ((SLOBYTE(STACK[0x51F]) & 0x80000000) == 0)
                      {
                        goto LABEL_150;
                      }

                      goto LABEL_149;
                    }

LABEL_133:
                    operator delete(STACK[0x458]);
                    if ((SLOBYTE(STACK[0x4AF]) & 0x80000000) == 0)
                    {
                      goto LABEL_135;
                    }

                    goto LABEL_134;
                  }

LABEL_118:
                  operator delete(STACK[0x3E8]);
                  if ((SLOBYTE(STACK[0x43F]) & 0x80000000) == 0)
                  {
                    goto LABEL_120;
                  }

                  goto LABEL_119;
                }

LABEL_103:
                operator delete(STACK[0x378]);
                if ((SLOBYTE(STACK[0x3CF]) & 0x80000000) == 0)
                {
                  goto LABEL_105;
                }

                goto LABEL_104;
              }

LABEL_88:
              operator delete(STACK[0x308]);
              if ((SLOBYTE(STACK[0x35F]) & 0x80000000) == 0)
              {
                goto LABEL_90;
              }

              goto LABEL_89;
            }

LABEL_73:
            operator delete(STACK[0x298]);
            if ((SLOBYTE(STACK[0x2EF]) & 0x80000000) == 0)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          }

LABEL_58:
          operator delete(STACK[0x228]);
          if ((SLOBYTE(STACK[0x27F]) & 0x80000000) == 0)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        }

LABEL_43:
        operator delete(a75);
        if ((SLOBYTE(STACK[0x20F]) & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }

LABEL_32:
      operator delete(a62);
      if ((a73 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

LABEL_21:
    operator delete(a42);
    if ((a58 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_10:
  if ((a38 & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_1AE7128B0()
{
  if (SLOBYTE(STACK[0x5BF]) < 0)
  {
    JUMPOUT(0x1AE7124B8);
  }

  JUMPOUT(0x1AE71240CLL);
}

void sub_1AE7128C4()
{
  if ((SLOBYTE(STACK[0x5FF]) & 0x80000000) == 0)
  {
    JUMPOUT(0x1AE7124D0);
  }

  JUMPOUT(0x1AE7124C8);
}

void sub_1AE712914()
{
  if (SLOBYTE(STACK[0x62F]) < 0)
  {
    JUMPOUT(0x1AE712574);
  }

  JUMPOUT(0x1AE712560);
}

void sub_1AE712928()
{
  if ((SLOBYTE(STACK[0x66F]) & 0x80000000) == 0)
  {
    JUMPOUT(0x1AE71258CLL);
  }

  JUMPOUT(0x1AE712584);
}

void sub_1AE712978()
{
  if (SLOBYTE(STACK[0x69F]) < 0)
  {
    JUMPOUT(0x1AE712630);
  }

  JUMPOUT(0x1AE71261CLL);
}

void sub_1AE71298C()
{
  if ((SLOBYTE(STACK[0x6DF]) & 0x80000000) == 0)
  {
    JUMPOUT(0x1AE712648);
  }

  JUMPOUT(0x1AE712640);
}

void sub_1AE7129DC()
{
  if (SLOBYTE(STACK[0x70F]) < 0)
  {
    JUMPOUT(0x1AE7126ECLL);
  }

  JUMPOUT(0x1AE7126D8);
}

void sub_1AE7129F0()
{
  if ((SLOBYTE(STACK[0x74F]) & 0x80000000) == 0)
  {
    JUMPOUT(0x1AE712704);
  }

  JUMPOUT(0x1AE7126FCLL);
}

void sub_1AE712A40()
{
  if (SLOBYTE(STACK[0x77F]) < 0)
  {
    JUMPOUT(0x1AE7127A4);
  }

  JUMPOUT(0x1AE712790);
}

void sub_1AE712A54()
{
  if ((SLOBYTE(STACK[0x7BF]) & 0x80000000) == 0)
  {
    JUMPOUT(0x1AE7127BCLL);
  }

  JUMPOUT(0x1AE7127B4);
}

void sub_1AE712AC4()
{
  if (SLOBYTE(STACK[0x7EF]) < 0)
  {
    JUMPOUT(0x1AE71289CLL);
  }

  JUMPOUT(0x1AE712848);
}

void sub_1AE712AE0()
{
  if ((SLOBYTE(STACK[0x82F]) & 0x80000000) == 0)
  {
    JUMPOUT(0x1AE712858);
  }

  JUMPOUT(0x1AE712850);
}

void sub_1AE712B04()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x830])
    {
      JUMPOUT(0x1AE711760);
    }
  }
}

void sub_1AE712B30()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x8A8])
    {
      JUMPOUT(0x1AE7118BCLL);
    }
  }
}

void sub_1AE712B5C()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x920])
    {
      JUMPOUT(0x1AE7119B4);
    }
  }
}

void sub_1AE712B88()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x998])
    {
      JUMPOUT(0x1AE711AC4);
    }
  }
}

void sub_1AE712BB4()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0xA10])
    {
      JUMPOUT(0x1AE711BECLL);
    }
  }
}

void sub_1AE712BE0()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0xAB8])
    {
      JUMPOUT(0x1AE711D14);
    }
  }
}

void sub_1AE712C0C()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0xB60])
    {
      JUMPOUT(0x1AE711E40);
    }
  }
}

void sub_1AE712C38()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0xC08])
    {
      JUMPOUT(0x1AE711F6CLL);
    }
  }
}

void sub_1AE712C64()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0xCB0])
    {
      JUMPOUT(0x1AE712098);
    }
  }
}

void sub_1AE712C90()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0xD58])
    {
      JUMPOUT(0x1AE7121C4);
    }
  }
}

void sub_1AE712CBC()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0xE00])
    {
      JUMPOUT(0x1AE7122F0);
    }
  }
}

void sub_1AE712CE8()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0xEA8])
    {
      JUMPOUT(0x1AE71241CLL);
    }
  }
}

void sub_1AE712D14()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0xF50])
    {
      JUMPOUT(0x1AE7128B4);
    }
  }
}

void sub_1AE712D40()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0xFF8])
    {
      JUMPOUT(0x1AE712918);
    }
  }
}

void sub_1AE712D6C()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x10A0])
    {
      JUMPOUT(0x1AE71297CLL);
    }
  }
}

void sub_1AE712D9C()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1148])
    {
      JUMPOUT(0x1AE7129E0);
    }
  }
}

void sub_1AE712DCC()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x11F0])
    {
      JUMPOUT(0x1AE712A44);
    }
  }
}

void sub_1AE712DFC()
{
  while (1)
  {
    v1 = *(v0 - 1);
    v0 -= 3;
    if (v1 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == &STACK[0x1298])
    {
      JUMPOUT(0x1AE712AC8);
    }
  }
}

void sub_1AE712E38(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1AE6090F0(exception_object);
}

unint64_t sub_1AE712E50(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  v6 = *(a2 + 24);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  result = sub_1AE5DA928(&v52, v7, v8);
  *(a2 + 8) = result;
  v10 = *(a1 + 8);
  v11 = (*(a1 + 24) + 1);
  v12 = *(a1 + 32);
  v50 = a2;
  v51 = result;
  if (!v10 || (v12 * v10) < v11)
  {
    v13 = 1;
    if (v10 >= 3)
    {
      v13 = (v10 & (v10 - 1)) != 0;
    }

    v14 = v13 | (2 * v10);
    v15 = vcvtps_u32_f32(v11 / v12);
    if (v14 <= v15)
    {
      prime = v15;
    }

    else
    {
      prime = v14;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      result = v51;
      v10 = *(a1 + 8);
    }

    if (prime > v10)
    {
LABEL_19:
      if (!(prime >> 61))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    if (prime < v10)
    {
      v17 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v10 < 3 || (v18 = vcnt_s8(v10), v18.i16[0] = vaddlv_u8(v18), v18.u32[0] > 1uLL))
      {
        v17 = std::__next_prime(v17);
      }

      else
      {
        v19 = 1 << -__clz(v17 - 1);
        if (v17 >= 2)
        {
          v17 = v19;
        }
      }

      if (prime <= v17)
      {
        prime = v17;
      }

      if (prime >= v10)
      {
        v10 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_19;
        }

        v20 = *a1;
        *a1 = 0;
        if (v20)
        {
          operator delete(v20);
        }

        v10 = 0;
        *(a1 + 8) = 0;
      }

      result = v51;
    }
  }

  v21 = vcnt_s8(v10);
  v21.i16[0] = vaddlv_u8(v21);
  v22 = v21.u32[0];
  if (v21.u32[0] > 1uLL)
  {
    v23 = result;
    if (v10 <= result)
    {
      v23 = result % v10;
    }
  }

  else
  {
    v23 = (v10 - 1) & result;
  }

  v49 = *a1;
  v24 = *(*a1 + 8 * v23);
  if (v24)
  {
    v25 = *(a2 + 39);
    if (v25 >= 0)
    {
      v26 = *(a2 + 39);
    }

    else
    {
      v26 = *(a2 + 24);
    }

    if (v25 >= 0)
    {
      v27 = v4;
    }

    else
    {
      v27 = *(a2 + 16);
    }

    if (v21.u32[0] >= 2uLL)
    {
      v40 = 0;
      do
      {
        v32 = v24;
        v24 = *v24;
        if (!v24)
        {
          break;
        }

        v44 = v24[1];
        v45 = v44;
        if (v44 >= v10)
        {
          v45 = v44 % v10;
        }

        if (v45 != v23)
        {
          break;
        }

        if (v44 != result)
        {
          goto LABEL_77;
        }

        v46 = *(v24 + 39);
        v47 = v46;
        if ((v46 & 0x80u) != 0)
        {
          v46 = v24[3];
        }

        if (v46 == v26)
        {
          v48 = v47 >= 0 ? v24 + 2 : v24[2];
          v37 = memcmp(v48, v27, v26) == 0;
          result = v51;
          v41 = v37;
        }

        else
        {
LABEL_77:
          v41 = 0;
        }

        v42 = v41 != (v40 & 1);
        v43 = v40 & v42;
        v40 |= v42;
      }

      while (v43 != 1);
    }

    else
    {
      v28 = 0;
      do
      {
        v32 = v24;
        v24 = *v24;
        if (!v24)
        {
          break;
        }

        v33 = v24[1];
        if ((v33 & (v10 - 1)) != v23)
        {
          break;
        }

        if (v33 != result)
        {
          goto LABEL_50;
        }

        v34 = *(v24 + 39);
        v35 = v34;
        if ((v34 & 0x80u) != 0)
        {
          v34 = v24[3];
        }

        if (v34 == v26)
        {
          v36 = v35 >= 0 ? v24 + 2 : v24[2];
          v37 = memcmp(v36, v27, v26) == 0;
          result = v51;
          v29 = v37;
        }

        else
        {
LABEL_50:
          v29 = 0;
        }

        v30 = v29 != (v28 & 1);
        v31 = v28 & v30;
        v28 |= v30;
      }

      while ((v31 & 1) == 0);
    }
  }

  else
  {
    v32 = 0;
  }

  v38 = v50[1];
  if (v22 > 1)
  {
    if (v38 >= v10)
    {
      v38 %= v10;
    }
  }

  else
  {
    v38 &= v10 - 1;
  }

  if (!v32)
  {
    *v50 = *(a1 + 16);
    *(a1 + 16) = v50;
    v49[v38] = a1 + 16;
    if (!*v50)
    {
      goto LABEL_100;
    }

    v39 = *(*v50 + 8);
    if (v22 > 1)
    {
      if (v39 >= v10)
      {
        v39 %= v10;
      }
    }

    else
    {
      v39 &= v10 - 1;
    }

LABEL_99:
    v49[v39] = v50;
    goto LABEL_100;
  }

  *v50 = *v32;
  *v32 = v50;
  if (*v50)
  {
    v39 = *(*v50 + 8);
    if (v22 > 1)
    {
      if (v39 >= v10)
      {
        v39 %= v10;
      }
    }

    else
    {
      v39 &= v10 - 1;
    }

    if (v39 != v38)
    {
      goto LABEL_99;
    }
  }

LABEL_100:
  ++*(a1 + 24);
  return result;
}

void sub_1AE7134C0(char *__p)
{
  do
  {
    v2 = *__p;
    v3 = *(__p + 5);
    if (v3)
    {
      v4 = *(__p + 6);
      v5 = *(__p + 5);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = *(__p + 5);
      }

      *(__p + 6) = v3;
      operator delete(v5);
    }

    if (__p[39] < 0)
    {
      operator delete(*(__p + 2));
    }

    operator delete(__p);
    __p = v2;
  }

  while (v2);
}

uint64_t *sub_1AE71355C(uint64_t *a1)
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
            v6 = *(v4 - 1);
            v4 -= 3;
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

uint64_t *sub_1AE713600(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_1AE659D30(v1 + 40);
      if (*(v1 + 39) < 0)
      {
        operator delete(*(v1 + 16));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *sub_1AE71365C(void *__dst, __int128 *a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1AE5DBF1C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  sub_1AE5F2F58((__dst + 3), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  return __dst;
}

void sub_1AE7136D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE7136F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 48 * a3;
    do
    {
      sub_1AE713E48(a1, a2);
      a2 += 48;
      v5 -= 48;
    }

    while (v5);
  }

  return a1;
}

void *sub_1AE713770(void *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1AE5DBF1C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  sub_1AE713D14((__dst + 3), a3);
  return __dst;
}

void sub_1AE7137D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AE7137EC(uint64_t result, uint64_t a2)
{
  xmmword_1ED9AC7F0 = 0u;
  *&qword_1ED9AC800 = 0u;
  dword_1ED9AC810 = 1065353216;
  if (a2)
  {
    v2 = result;
    v3 = result + (a2 << 6);
    do
    {
      v4 = *(v2 + 23);
      if (v4 >= 0)
      {
        v5 = v2;
      }

      else
      {
        v5 = *v2;
      }

      if (v4 >= 0)
      {
        v6 = *(v2 + 23);
      }

      else
      {
        v6 = *(v2 + 8);
      }

      v7 = sub_1AE5DA928(&v25, v5, v6);
      v8 = v7;
      v9 = *(&xmmword_1ED9AC7F0 + 1);
      if (!*(&xmmword_1ED9AC7F0 + 1))
      {
        goto LABEL_48;
      }

      v10 = vcnt_s8(*(&xmmword_1ED9AC7F0 + 8));
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        v11 = v7;
        if (v7 >= *(&xmmword_1ED9AC7F0 + 1))
        {
          v11 = v7 % *(&xmmword_1ED9AC7F0 + 1);
        }
      }

      else
      {
        v11 = (*(&xmmword_1ED9AC7F0 + 1) - 1) & v7;
      }

      v12 = *(xmmword_1ED9AC7F0 + 8 * v11);
      if (!v12 || (v13 = *v12) == 0)
      {
LABEL_48:
        operator new();
      }

      v14 = *(v2 + 23);
      if (v14 >= 0)
      {
        v15 = *(v2 + 23);
      }

      else
      {
        v15 = *(v2 + 8);
      }

      if (v14 >= 0)
      {
        v16 = v2;
      }

      else
      {
        v16 = *v2;
      }

      if (v10.u32[0] < 2uLL)
      {
        while (1)
        {
          v21 = v13[1];
          if (v21 == v8)
          {
            v22 = *(v13 + 39);
            v23 = v22;
            if (v22 < 0)
            {
              v22 = v13[3];
            }

            if (v22 == v15)
            {
              v24 = v23 >= 0 ? (v13 + 2) : v13[2];
              result = memcmp(v24, v16, v15);
              if (!result)
              {
                goto LABEL_49;
              }
            }
          }

          else if ((v21 & (v9 - 1)) != v11)
          {
            goto LABEL_48;
          }

          v13 = *v13;
          if (!v13)
          {
            goto LABEL_48;
          }
        }
      }

      while (1)
      {
        v17 = v13[1];
        if (v17 == v8)
        {
          break;
        }

        if (v17 >= v9)
        {
          v17 %= v9;
        }

        if (v17 != v11)
        {
          goto LABEL_48;
        }

LABEL_25:
        v13 = *v13;
        if (!v13)
        {
          goto LABEL_48;
        }
      }

      v18 = *(v13 + 39);
      v19 = v18;
      if (v18 < 0)
      {
        v18 = v13[3];
      }

      if (v18 != v15)
      {
        goto LABEL_25;
      }

      v20 = v19 >= 0 ? (v13 + 2) : v13[2];
      result = memcmp(v20, v16, v15);
      if (result)
      {
        goto LABEL_25;
      }

LABEL_49:
      v2 += 64;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1AE713C14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE713600(va);
  sub_1AE71426C();
  _Unwind_Resume(a1);
}

uint64_t sub_1AE713C54(uint64_t a1)
{
  sub_1AE659D30(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1AE713C90(uint64_t a1)
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
        v5 = *(v3 - 1);
        v3 -= 3;
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

uint64_t sub_1AE713D14(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_1AE5CC314(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1AE713E48(a1, (i + 2));
  }

  return a1;
}

uint64_t sub_1AE713E48(void *a1, uint64_t a2)
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

  v6 = sub_1AE5DA928(&v24, a2, v5);
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
      v20 = v12[1];
      if (v20 == v7)
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
          result = memcmp(v23, v2, v14);
          if (!result)
          {
            return result;
          }
        }
      }

      else if ((v20 & (*&v8 - 1)) != v10)
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
  result = memcmp(v18, v2, v14);
  if (result)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1AE714238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE71355C(va);
  _Unwind_Resume(a1);
}