unint64_t ZSTD_HcFindBestMatch_noDict_6(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, void *a4)
{
  v4 = *(a1 + 112);
  v5 = *(a1 + 244);
  v6 = 1 << v5;
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 240);
  v10 = *(a1 + 44);
  if (a2 - v7 - *(a1 + 28) > v9 && *(a1 + 40) == 0)
  {
    v12 = a2 - v7 - v9;
  }

  else
  {
    v12 = *(a1 + 28);
  }

  v13 = v8 - v6;
  if (v8 < v6)
  {
    v13 = 0;
  }

  v14 = *(a1 + 96);
  v15 = *(a1 + 252);
  v16 = 64 - *(a1 + 248);
  if (v10 < v8)
  {
    v17 = ~(-1 << v5);
    do
    {
      v18 = (0xCF1BBCDCBF9B0000 * *(v7 + v10)) >> v16;
      *(v4 + 4 * (v10 & v17)) = *(v14 + 4 * v18);
      *(v14 + 4 * v18) = v10++;
    }

    while (v10 < v8);
  }

  *(a1 + 44) = v8;
  v19 = *(v14 + 4 * ((0xCF1BBCDCBF9B0000 * *a2) >> v16));
  if (v19 < v12)
  {
    return 3;
  }

  v21 = 1 << v15;
  v22 = v6 - 1;
  v23 = a3 - 7;
  v24 = v8 + 2;
  v25 = 3;
  while (1)
  {
    v26 = v19;
    v27 = (v7 + v19);
    if (*(v27 + v25) != *(a2 + v25))
    {
      goto LABEL_36;
    }

    if (v23 <= a2)
    {
      v30 = a2;
    }

    else
    {
      v28 = *v27;
      if (v28 != *a2)
      {
        result = __clz(__rbit64(*a2 ^ v28)) >> 3;
        goto LABEL_34;
      }

      v29 = 0;
      v27 = (v7 + 8 + v19);
      v30 = a2 + 4;
      while (v30 < v23)
      {
        v32 = *v27;
        v27 += 4;
        v31 = v32;
        v34 = *v30;
        v30 += 4;
        v33 = v34;
        v29 += 8;
        if (v31 != v34)
        {
          result = v29 + (__clz(__rbit64(v33 ^ v31)) >> 3);
          goto LABEL_34;
        }
      }
    }

    if (v30 < (a3 - 3) && *v27 == *v30)
    {
      v27 += 2;
      v30 += 2;
    }

    if (v30 < (a3 - 1) && *v27 == *v30)
    {
      ++v27;
      ++v30;
    }

    if (v30 < a3 && *v27 == *v30)
    {
      v30 = (v30 + 1);
    }

    result = v30 - a2;
LABEL_34:
    if (result > v25)
    {
      *a4 = v24 - v26;
      v25 = result;
      if ((a2 + result) == a3)
      {
        return result;
      }
    }

LABEL_36:
    if (v26 <= v13)
    {
      return v25;
    }

    if (!--v21)
    {
      return v25;
    }

    v19 = *(v4 + 4 * (v26 & v22));
    result = v25;
    if (v19 < v12)
    {
      return result;
    }
  }
}

unint64_t ZSTD_HcFindBestMatch_extDict_4(uint64_t a1, _DWORD *a2, unint64_t a3, void *a4)
{
  v5 = a2;
  v6 = *(a1 + 112);
  v7 = *(a1 + 244);
  v8 = 1 << v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = a2 - v9;
  v12 = 1 << *(a1 + 240);
  v13 = *(a1 + 24);
  v14 = *(a1 + 44);
  if (a2 - v9 - *(a1 + 28) > v12 && *(a1 + 40) == 0)
  {
    v16 = a2 - v9 - v12;
  }

  else
  {
    v16 = *(a1 + 28);
  }

  if (v11 >= v8)
  {
    v17 = v11 - v8;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + 96);
  v19 = *(a1 + 252);
  v20 = 32 - *(a1 + 248);
  if (v14 < v11)
  {
    v21 = ~(-1 << v7);
    do
    {
      v22 = (-1640531535 * *(v9 + v14)) >> v20;
      *(v6 + 4 * (v14 & v21)) = *(v18 + 4 * v22);
      *(v18 + 4 * v22) = v14++;
    }

    while (v14 < v11);
  }

  *(a1 + 44) = v11;
  v23 = *v5;
  v24 = *(v18 + 4 * ((-1640531535 * *v5) >> v20));
  if (v24 < v16)
  {
    return 3;
  }

  v26 = 1 << v19;
  v27 = v8 - 1;
  v28 = a3 - 7;
  v48 = a3 - 1;
  v49 = a3 - 3;
  v50 = v17;
  v51 = v11 + 2;
  v46 = (v5 + 2);
  v47 = v9 + 8;
  v29 = 3;
  v53 = v6;
  v54 = v9;
  v52 = v5;
  while (1)
  {
    v30 = v24;
    if (v24 >= v13)
    {
      v38 = (v9 + v24);
      if (*(v38 + v29) != *(v5 + v29))
      {
        goto LABEL_40;
      }

      if (v28 <= v5)
      {
        v41 = v5;
      }

      else
      {
        v39 = *v38;
        if (v39 != *v5)
        {
          result = __clz(__rbit64(*v5 ^ v39)) >> 3;
          goto LABEL_38;
        }

        v40 = 0;
        v41 = v46;
        v38 = (v47 + v30);
        while (v41 < v28)
        {
          v43 = *v38;
          v38 += 4;
          v42 = v43;
          v45 = *v41;
          v41 += 4;
          v44 = v45;
          v40 += 8;
          if (v42 != v45)
          {
            result = v40 + (__clz(__rbit64(v44 ^ v42)) >> 3);
            goto LABEL_38;
          }
        }
      }

      if (v41 < v49 && *v38 == *v41)
      {
        v38 += 2;
        v41 += 2;
      }

      if (v41 < v48 && *v38 == *v41)
      {
        ++v38;
        ++v41;
      }

      if (v41 < a3 && *v38 == *v41)
      {
        v41 = (v41 + 1);
      }

      result = v41 - v5;
    }

    else
    {
      if (*(v10 + v24) != v23)
      {
        goto LABEL_40;
      }

      v31 = (v5 + 1);
      v32 = (v9 + v13);
      v33 = v13;
      v34 = v27;
      v35 = v28;
      v36 = v29;
      v37 = ZSTD_count_2segments(v31, (v10 + v24 + 4), a3, (v10 + v13), v32);
      v29 = v36;
      v28 = v35;
      v27 = v34;
      v13 = v33;
      v17 = v50;
      v5 = v52;
      v6 = v53;
      v9 = v54;
      result = v37 + 4;
    }

LABEL_38:
    if (result > v29)
    {
      *a4 = v51 - v30;
      v29 = result;
      if ((v5 + result) == a3)
      {
        return result;
      }
    }

LABEL_40:
    if (v30 <= v17)
    {
      return v29;
    }

    if (!--v26)
    {
      return v29;
    }

    v24 = *(v6 + 4 * (v30 & v27));
    result = v29;
    if (v24 < v16)
    {
      return result;
    }
  }
}

unint64_t ZSTD_HcFindBestMatch_extDict_5(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v5 = a2;
  v6 = *(a1 + 112);
  v7 = *(a1 + 244);
  v8 = 1 << v7;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  v11 = a2 - v10;
  v12 = 1 << *(a1 + 240);
  v13 = *(a1 + 24);
  v14 = *(a1 + 44);
  if (a2 - v10 - *(a1 + 28) > v12 && *(a1 + 40) == 0)
  {
    v16 = a2 - v10 - v12;
  }

  else
  {
    v16 = *(a1 + 28);
  }

  if (v11 >= v8)
  {
    v17 = v11 - v8;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + 96);
  v19 = *(a1 + 252);
  v20 = 64 - *(a1 + 248);
  if (v14 < v11)
  {
    v21 = ~(-1 << v7);
    do
    {
      v22 = (0xCF1BBCDCBB000000 * *(v10 + v14)) >> v20;
      *(v6 + 4 * (v14 & v21)) = *(v18 + 4 * v22);
      *(v18 + 4 * v22) = v14++;
    }

    while (v14 < v11);
  }

  *(a1 + 44) = v11;
  v23 = *(v18 + 4 * ((0xCF1BBCDCBB000000 * *v5) >> v20));
  if (v23 < v16)
  {
    return 3;
  }

  v25 = 1 << v19;
  v26 = v8 - 1;
  v27 = a3 - 7;
  v47 = a3 - 1;
  v48 = a3 - 3;
  v50 = v11 + 2;
  v45 = (v5 + 1);
  v46 = v10 + 8;
  v28 = 3;
  v51 = v6;
  v52 = v10;
  v49 = v5;
  while (1)
  {
    v29 = v23;
    if (v23 >= v13)
    {
      v37 = (v10 + v23);
      if (*(v37 + v28) != *(v5 + v28))
      {
        goto LABEL_40;
      }

      if (v27 <= v5)
      {
        v40 = v5;
      }

      else
      {
        v38 = *v37;
        if (v38 != *v5)
        {
          result = __clz(__rbit64(*v5 ^ v38)) >> 3;
          goto LABEL_38;
        }

        v39 = 0;
        v40 = v45;
        v37 = (v46 + v29);
        while (v40 < v27)
        {
          v42 = *v37;
          v37 += 4;
          v41 = v42;
          v44 = *v40;
          v40 += 4;
          v43 = v44;
          v39 += 8;
          if (v41 != v44)
          {
            result = v39 + (__clz(__rbit64(v43 ^ v41)) >> 3);
            goto LABEL_38;
          }
        }
      }

      if (v40 < v48 && *v37 == *v40)
      {
        v37 += 2;
        v40 += 2;
      }

      if (v40 < v47 && *v37 == *v40)
      {
        ++v37;
        ++v40;
      }

      if (v40 < a3 && *v37 == *v40)
      {
        v40 = (v40 + 1);
      }

      result = v40 - v5;
    }

    else
    {
      if (*(v9 + v23) != *v5)
      {
        goto LABEL_40;
      }

      v30 = v5 + 2;
      v31 = (v10 + v13);
      v32 = v17;
      v33 = v9;
      v34 = v27;
      v35 = v28;
      v36 = ZSTD_count_2segments(v30, (v9 + v23 + 4), a3, (v9 + v13), v31);
      v28 = v35;
      v27 = v34;
      v9 = v33;
      v17 = v32;
      v5 = v49;
      v6 = v51;
      v10 = v52;
      result = v36 + 4;
    }

LABEL_38:
    if (result > v28)
    {
      *a4 = v50 - v29;
      v28 = result;
      if ((v5 + result) == a3)
      {
        return result;
      }
    }

LABEL_40:
    if (v29 <= v17)
    {
      return v28;
    }

    if (!--v25)
    {
      return v28;
    }

    v23 = *(v6 + 4 * (v29 & v26));
    result = v28;
    if (v23 < v16)
    {
      return result;
    }
  }
}

unint64_t ZSTD_HcFindBestMatch_extDict_6(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v5 = a2;
  v6 = *(a1 + 112);
  v7 = *(a1 + 244);
  v8 = 1 << v7;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  v11 = a2 - v10;
  v12 = 1 << *(a1 + 240);
  v13 = *(a1 + 24);
  v14 = *(a1 + 44);
  if (a2 - v10 - *(a1 + 28) > v12 && *(a1 + 40) == 0)
  {
    v16 = a2 - v10 - v12;
  }

  else
  {
    v16 = *(a1 + 28);
  }

  if (v11 >= v8)
  {
    v17 = v11 - v8;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a1 + 96);
  v19 = *(a1 + 252);
  v20 = 64 - *(a1 + 248);
  if (v14 < v11)
  {
    v21 = ~(-1 << v7);
    do
    {
      v22 = (0xCF1BBCDCBF9B0000 * *(v10 + v14)) >> v20;
      *(v6 + 4 * (v14 & v21)) = *(v18 + 4 * v22);
      *(v18 + 4 * v22) = v14++;
    }

    while (v14 < v11);
  }

  *(a1 + 44) = v11;
  v23 = *(v18 + 4 * ((0xCF1BBCDCBF9B0000 * *v5) >> v20));
  if (v23 < v16)
  {
    return 3;
  }

  v25 = 1 << v19;
  v26 = v8 - 1;
  v27 = a3 - 7;
  v47 = a3 - 1;
  v48 = a3 - 3;
  v50 = v11 + 2;
  v45 = (v5 + 1);
  v46 = v10 + 8;
  v28 = 3;
  v51 = v6;
  v52 = v10;
  v49 = v5;
  while (1)
  {
    v29 = v23;
    if (v23 >= v13)
    {
      v37 = (v10 + v23);
      if (*(v37 + v28) != *(v5 + v28))
      {
        goto LABEL_40;
      }

      if (v27 <= v5)
      {
        v40 = v5;
      }

      else
      {
        v38 = *v37;
        if (v38 != *v5)
        {
          result = __clz(__rbit64(*v5 ^ v38)) >> 3;
          goto LABEL_38;
        }

        v39 = 0;
        v40 = v45;
        v37 = (v46 + v29);
        while (v40 < v27)
        {
          v42 = *v37;
          v37 += 4;
          v41 = v42;
          v44 = *v40;
          v40 += 4;
          v43 = v44;
          v39 += 8;
          if (v41 != v44)
          {
            result = v39 + (__clz(__rbit64(v43 ^ v41)) >> 3);
            goto LABEL_38;
          }
        }
      }

      if (v40 < v48 && *v37 == *v40)
      {
        v37 += 2;
        v40 += 2;
      }

      if (v40 < v47 && *v37 == *v40)
      {
        ++v37;
        ++v40;
      }

      if (v40 < a3 && *v37 == *v40)
      {
        v40 = (v40 + 1);
      }

      result = v40 - v5;
    }

    else
    {
      if (*(v9 + v23) != *v5)
      {
        goto LABEL_40;
      }

      v30 = v5 + 2;
      v31 = (v10 + v13);
      v32 = v17;
      v33 = v9;
      v34 = v27;
      v35 = v28;
      v36 = ZSTD_count_2segments(v30, (v9 + v23 + 4), a3, (v9 + v13), v31);
      v28 = v35;
      v27 = v34;
      v9 = v33;
      v17 = v32;
      v5 = v49;
      v6 = v51;
      v10 = v52;
      result = v36 + 4;
    }

LABEL_38:
    if (result > v28)
    {
      *a4 = v50 - v29;
      v28 = result;
      if ((v5 + result) == a3)
      {
        return result;
      }
    }

LABEL_40:
    if (v29 <= v17)
    {
      return v28;
    }

    if (!--v25)
    {
      return v28;
    }

    v23 = *(v6 + 4 * (v29 & v26));
    result = v28;
    if (v23 < v16)
    {
      return result;
    }
  }
}

unint64_t ZSTD_HcFindBestMatch_dictMatchState_4(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v4 = a2;
  v5 = *(a1 + 112);
  v6 = *(a1 + 244);
  v7 = 1 << v6;
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 240);
  v62 = *(a1 + 24);
  v11 = *(a1 + 28);
  v12 = a2 - v8 - v11;
  v13 = a2 - v8 - v10;
  v14 = *(a1 + 44);
  if (v12 > v10 && *(a1 + 40) == 0)
  {
    v11 = v13;
  }

  if (v9 >= v7)
  {
    v16 = v9 - v7;
  }

  else
  {
    v16 = 0;
  }

  v17 = 1 << *(a1 + 252);
  v18 = *(a1 + 232);
  v19 = *(a1 + 96);
  v20 = 32 - *(a1 + 248);
  if (v14 < v9)
  {
    v21 = ~(-1 << v6);
    do
    {
      v22 = (-1640531535 * *(v8 + v14)) >> v20;
      *(v5 + 4 * (v14 & v21)) = *(v19 + 4 * v22);
      *(v19 + 4 * v22) = v14++;
    }

    while (v14 < v9);
  }

  *(a1 + 44) = v9;
  v23 = *v4;
  v24 = *(v19 + 4 * ((-1640531535 * v23) >> v20));
  if (v24 < v11)
  {
    result = 3;
    goto LABEL_14;
  }

  v46 = v7 - 1;
  v47 = a3 - 7;
  result = 3;
  while (1)
  {
    v48 = v24;
    v49 = (v8 + v24);
    if (*(v49 + result) == *(v4 + result))
    {
      break;
    }

LABEL_50:
    if (v48 > v16)
    {
      if (--v17)
      {
        v24 = *(v5 + 4 * (v48 & v46));
        if (v24 >= v11)
        {
          continue;
        }
      }
    }

    goto LABEL_14;
  }

  if (v47 <= v4)
  {
    v52 = v4;
  }

  else
  {
    v50 = *v49;
    if (v50 != *v4)
    {
      v57 = __clz(__rbit64(*v4 ^ v50)) >> 3;
      goto LABEL_48;
    }

    v51 = 0;
    v49 = (v8 + 8 + v48);
    v52 = v4 + 4;
    while (v52 < v47)
    {
      v54 = *v49;
      v49 += 4;
      v53 = v54;
      v56 = *v52;
      v52 += 4;
      v55 = v56;
      v51 += 8;
      if (v53 != v56)
      {
        v57 = v51 + (__clz(__rbit64(v55 ^ v53)) >> 3);
        goto LABEL_48;
      }
    }
  }

  if (v52 < a3 - 3 && *v49 == *v52)
  {
    v49 += 2;
    v52 += 2;
  }

  if (v52 < a3 - 1 && *v49 == *v52)
  {
    ++v49;
    ++v52;
  }

  if (v52 < a3 && *v49 == *v52)
  {
    v52 = (v52 + 1);
  }

  v57 = v52 - v4;
LABEL_48:
  if (v57 <= result)
  {
    goto LABEL_50;
  }

  *a4 = v9 + 2 - v48;
  result = v57;
  if ((v4 + v57) != a3)
  {
    goto LABEL_50;
  }

  result = v57;
LABEL_14:
  v26 = 1 << *(v18 + 244);
  v27 = *(v18 + 8);
  v61 = *v18;
  v28 = *v18 - v27;
  if (v28 >= v26)
  {
    v29 = v28 - v26;
  }

  else
  {
    v29 = 0;
  }

  if (v17)
  {
    v30 = *(v18 + 24);
    v31 = -*(v18 + 248);
    v32 = *(*(v18 + 96) + 4 * ((-1640531535 * v23) >> -*(v18 + 248)));
    if (v32 >= v30)
    {
      v60 = *(v18 + 8);
      v33 = *(v18 + 112);
      v34 = v26 - 1;
      v58 = v9 - v62 + v28 + 2;
      v35 = v17 - 1;
      do
      {
        v36 = v27 + v32;
        if (*v36 == v23)
        {
          v63 = result;
          v37 = v4 + 2;
          v38 = (v8 + v62);
          v39 = v23;
          v40 = v8;
          v41 = v4;
          v42 = a3;
          v43 = ZSTD_count_2segments(v37, (v36 + 4), a3, v61, v38);
          a3 = v42;
          v4 = v41;
          v8 = v40;
          v23 = v39;
          v44 = v43 + 4;
          v27 = v60;
          result = v63;
          if (v44 > v63)
          {
            *a4 = v58 - v32;
            result = v44;
            if ((v4 + v44) == a3)
            {
              break;
            }
          }
        }

        if (v32 <= v29)
        {
          break;
        }

        if (v35-- == 0)
        {
          break;
        }

        v32 = *(v33 + 4 * (v32 & v34));
      }

      while (v32 >= v30);
    }
  }

  return result;
}

unint64_t ZSTD_HcFindBestMatch_dictMatchState_5(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v4 = *(a1 + 112);
  v5 = *(a1 + 244);
  v6 = 1 << v5;
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 240);
  v60 = *(a1 + 24);
  v10 = *(a1 + 28);
  v11 = *(a1 + 44);
  if (a2 - v7 - v10 > v9 && *(a1 + 40) == 0)
  {
    v10 = a2 - v7 - v9;
  }

  if (v8 >= v6)
  {
    v13 = v8 - v6;
  }

  else
  {
    v13 = 0;
  }

  v14 = 1 << *(a1 + 252);
  v15 = *(a1 + 232);
  v16 = *(a1 + 96);
  v17 = 64 - *(a1 + 248);
  if (v11 < v8)
  {
    v18 = ~(-1 << v5);
    do
    {
      v19 = (0xCF1BBCDCBB000000 * *(v7 + v11)) >> v17;
      *(v4 + 4 * (v11 & v18)) = *(v16 + 4 * v19);
      *(v16 + 4 * v19) = v11++;
    }

    while (v11 < v8);
  }

  *(a1 + 44) = v8;
  v20 = 0xCF1BBCDCBB000000 * *a2;
  v21 = *(v16 + 4 * (v20 >> v17));
  if (v21 < v10)
  {
    v22 = 3;
    goto LABEL_14;
  }

  v42 = v6 - 1;
  v43 = a3 - 7;
  v22 = 3;
  while (1)
  {
    v44 = v21;
    v45 = (v7 + v21);
    if (*(v45 + v22) == *(a2 + v22))
    {
      break;
    }

LABEL_50:
    if (v44 > v13)
    {
      if (--v14)
      {
        v21 = *(v4 + 4 * (v44 & v42));
        if (v21 >= v10)
        {
          continue;
        }
      }
    }

    goto LABEL_14;
  }

  if (v43 <= a2)
  {
    v48 = a2;
  }

  else
  {
    v46 = *v45;
    if (v46 != *a2)
    {
      v53 = __clz(__rbit64(*a2 ^ v46)) >> 3;
      goto LABEL_48;
    }

    v47 = 0;
    v45 = (v7 + 8 + v44);
    v48 = a2 + 4;
    while (v48 < v43)
    {
      v50 = *v45;
      v45 += 4;
      v49 = v50;
      v52 = *v48;
      v48 += 4;
      v51 = v52;
      v47 += 8;
      if (v49 != v52)
      {
        v53 = v47 + (__clz(__rbit64(v51 ^ v49)) >> 3);
        goto LABEL_48;
      }
    }
  }

  if (v48 < a3 - 3 && *v45 == *v48)
  {
    v45 += 2;
    v48 += 2;
  }

  if (v48 < a3 - 1 && *v45 == *v48)
  {
    ++v45;
    ++v48;
  }

  if (v48 < a3 && *v45 == *v48)
  {
    v48 = (v48 + 1);
  }

  v53 = v48 - a2;
LABEL_48:
  if (v53 <= v22)
  {
    goto LABEL_50;
  }

  *a4 = v8 + 2 - v44;
  v22 = v53;
  if ((a2 + v53) != a3)
  {
    goto LABEL_50;
  }

  v22 = v53;
LABEL_14:
  v23 = 1 << *(v15 + 244);
  v24 = *(v15 + 8);
  v59 = *v15;
  v25 = *v15 - v24;
  if (v25 >= v23)
  {
    v26 = v25 - v23;
  }

  else
  {
    v26 = 0;
  }

  if (v14)
  {
    v27 = *(v15 + 24);
    v28 = -*(v15 + 248);
    v29 = *(*(v15 + 96) + 4 * (v20 >> -*(v15 + 248)));
    if (v29 >= v27)
    {
      v30 = *(v15 + 112);
      v31 = v23 - 1;
      v32 = *a2;
      v57 = *(v15 + 8);
      v58 = a2 + 2;
      v54 = v8 - v60 + v25 + 2;
      v33 = v14 - 1;
      do
      {
        v34 = v24 + v29;
        if (*v34 == v32)
        {
          v35 = a3;
          v36 = v22;
          v37 = v32;
          v38 = ZSTD_count_2segments(v58, (v34 + 4), a3, v59, (v7 + v60));
          v32 = v37;
          v22 = v36;
          a3 = v35;
          v39 = v38 + 4;
          v24 = v57;
          if (v39 > v36)
          {
            *a4 = v54 - v29;
            v22 = v39;
            if ((a2 + v39) == v35)
            {
              break;
            }
          }
        }

        if (v29 <= v26)
        {
          break;
        }

        if (v33-- == 0)
        {
          break;
        }

        v29 = *(v30 + 4 * (v29 & v31));
      }

      while (v29 >= v27);
    }
  }

  return v22;
}

unint64_t ZSTD_HcFindBestMatch_dictMatchState_6(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v4 = *(a1 + 112);
  v5 = *(a1 + 244);
  v6 = 1 << v5;
  v7 = *(a1 + 8);
  v8 = a2 - v7;
  v9 = 1 << *(a1 + 240);
  v60 = *(a1 + 24);
  v10 = *(a1 + 28);
  v11 = *(a1 + 44);
  if (a2 - v7 - v10 > v9 && *(a1 + 40) == 0)
  {
    v10 = a2 - v7 - v9;
  }

  if (v8 >= v6)
  {
    v13 = v8 - v6;
  }

  else
  {
    v13 = 0;
  }

  v14 = 1 << *(a1 + 252);
  v15 = *(a1 + 232);
  v16 = *(a1 + 96);
  v17 = 64 - *(a1 + 248);
  if (v11 < v8)
  {
    v18 = ~(-1 << v5);
    do
    {
      v19 = (0xCF1BBCDCBF9B0000 * *(v7 + v11)) >> v17;
      *(v4 + 4 * (v11 & v18)) = *(v16 + 4 * v19);
      *(v16 + 4 * v19) = v11++;
    }

    while (v11 < v8);
  }

  *(a1 + 44) = v8;
  v20 = 0xCF1BBCDCBF9B0000 * *a2;
  v21 = *(v16 + 4 * (v20 >> v17));
  if (v21 < v10)
  {
    v22 = 3;
    goto LABEL_14;
  }

  v42 = v6 - 1;
  v43 = a3 - 7;
  v22 = 3;
  while (1)
  {
    v44 = v21;
    v45 = (v7 + v21);
    if (*(v45 + v22) == *(a2 + v22))
    {
      break;
    }

LABEL_50:
    if (v44 > v13)
    {
      if (--v14)
      {
        v21 = *(v4 + 4 * (v44 & v42));
        if (v21 >= v10)
        {
          continue;
        }
      }
    }

    goto LABEL_14;
  }

  if (v43 <= a2)
  {
    v48 = a2;
  }

  else
  {
    v46 = *v45;
    if (v46 != *a2)
    {
      v53 = __clz(__rbit64(*a2 ^ v46)) >> 3;
      goto LABEL_48;
    }

    v47 = 0;
    v45 = (v7 + 8 + v44);
    v48 = a2 + 4;
    while (v48 < v43)
    {
      v50 = *v45;
      v45 += 4;
      v49 = v50;
      v52 = *v48;
      v48 += 4;
      v51 = v52;
      v47 += 8;
      if (v49 != v52)
      {
        v53 = v47 + (__clz(__rbit64(v51 ^ v49)) >> 3);
        goto LABEL_48;
      }
    }
  }

  if (v48 < a3 - 3 && *v45 == *v48)
  {
    v45 += 2;
    v48 += 2;
  }

  if (v48 < a3 - 1 && *v45 == *v48)
  {
    ++v45;
    ++v48;
  }

  if (v48 < a3 && *v45 == *v48)
  {
    v48 = (v48 + 1);
  }

  v53 = v48 - a2;
LABEL_48:
  if (v53 <= v22)
  {
    goto LABEL_50;
  }

  *a4 = v8 + 2 - v44;
  v22 = v53;
  if ((a2 + v53) != a3)
  {
    goto LABEL_50;
  }

  v22 = v53;
LABEL_14:
  v23 = 1 << *(v15 + 244);
  v24 = *(v15 + 8);
  v59 = *v15;
  v25 = *v15 - v24;
  if (v25 >= v23)
  {
    v26 = v25 - v23;
  }

  else
  {
    v26 = 0;
  }

  if (v14)
  {
    v27 = *(v15 + 24);
    v28 = -*(v15 + 248);
    v29 = *(*(v15 + 96) + 4 * (v20 >> -*(v15 + 248)));
    if (v29 >= v27)
    {
      v30 = *(v15 + 112);
      v31 = v23 - 1;
      v32 = *a2;
      v57 = *(v15 + 8);
      v58 = a2 + 2;
      v54 = v8 - v60 + v25 + 2;
      v33 = v14 - 1;
      do
      {
        v34 = v24 + v29;
        if (*v34 == v32)
        {
          v35 = a3;
          v36 = v22;
          v37 = v32;
          v38 = ZSTD_count_2segments(v58, (v34 + 4), a3, v59, (v7 + v60));
          v32 = v37;
          v22 = v36;
          a3 = v35;
          v39 = v38 + 4;
          v24 = v57;
          if (v39 > v36)
          {
            *a4 = v54 - v29;
            v22 = v39;
            if ((a2 + v39) == v35)
            {
              break;
            }
          }
        }

        if (v29 <= v26)
        {
          break;
        }

        if (v33-- == 0)
        {
          break;
        }

        v29 = *(v30 + 4 * (v29 & v31));
      }

      while (v29 >= v27);
    }
  }

  return v22;
}

unint64_t ZSTD_HcFindBestMatch_dedicatedDictSearch_4(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v5 = *(a1 + 112);
  v6 = *(a1 + 244);
  v7 = 1 << v6;
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 240);
  v81 = *(a1 + 24);
  v11 = *(a1 + 44);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v13 = a2 - v8 - v10;
  }

  else
  {
    v13 = *(a1 + 28);
  }

  if (v9 >= v7)
  {
    v14 = v9 - v7;
  }

  else
  {
    v14 = 0;
  }

  v15 = 1 << *(a1 + 252);
  v16 = *(a1 + 232);
  v17 = *a2;
  v18 = -1640531535 * *a2;
  v19 = v18 >> (34 - *(v16 + 248));
  v20 = *(v16 + 96);
  _X19 = (v20 + 16 * v19);
  __asm { PRFM            #0, [X19] }

  v26 = *(a1 + 96);
  v27 = 32 - *(a1 + 248);
  if (v11 < v9)
  {
    v28 = ~(-1 << v6);
    do
    {
      v29 = (-1640531535 * *(v8 + v11)) >> v27;
      *(v5 + 4 * (v11 & v28)) = *(v26 + 4 * v29);
      *(v26 + 4 * v29) = v11++;
    }

    while (v11 < v9);
    v17 = *a2;
    v18 = -1640531535 * *a2;
  }

  *(a1 + 44) = v9;
  v30 = *(v26 + 4 * (v18 >> v27));
  if (v30 >= v13)
  {
    v47 = v7 - 1;
    v48 = a3 - 7;
    v31 = 3;
    while (1)
    {
      v49 = v30;
      v50 = (v8 + v30);
      if (*(v50 + v31) != *(a2 + v31))
      {
        goto LABEL_51;
      }

      if (v48 <= a2)
      {
        v53 = a2;
      }

      else
      {
        v51 = *v50;
        if (v51 != *a2)
        {
          v58 = __clz(__rbit64(*a2 ^ v51)) >> 3;
          goto LABEL_49;
        }

        v52 = 0;
        v50 = (v8 + 8 + v49);
        v53 = a2 + 4;
        while (v53 < v48)
        {
          v55 = *v50;
          v50 += 4;
          v54 = v55;
          v57 = *v53;
          v53 += 4;
          v56 = v57;
          v52 += 8;
          if (v54 != v57)
          {
            v58 = v52 + (__clz(__rbit64(v56 ^ v54)) >> 3);
            goto LABEL_49;
          }
        }
      }

      if (v53 < a3 - 3 && *v50 == *v53)
      {
        v50 += 2;
        v53 += 2;
      }

      if (v53 < a3 - 1 && *v50 == *v53)
      {
        ++v50;
        ++v53;
      }

      if (v53 < a3 && *v50 == *v53)
      {
        v53 = (v53 + 1);
      }

      v58 = v53 - a2;
LABEL_49:
      if (v58 > v31)
      {
        *a4 = v9 + 2 - v49;
        v31 = v58;
        if ((a2 + v58) == a3)
        {
          v31 = v58;
          goto LABEL_16;
        }
      }

LABEL_51:
      if (v49 > v14)
      {
        if (--v15)
        {
          v30 = *(v5 + 4 * (v49 & v47));
          if (v30 >= v13)
          {
            continue;
          }
        }
      }

      goto LABEL_16;
    }
  }

  v31 = 3;
LABEL_16:
  v32 = 0;
  v33 = 4 * v19;
  v34 = *(v16 + 8);
  v78 = *v16;
  v35 = *v16 - v34 - v81;
  do
  {
    _X11 = v34 + _X19[v32];
    __asm { PRFM            #0, [X11] }

    ++v32;
  }

  while (v32 != 3);
  if (v15 >= 3)
  {
    v38 = 3;
  }

  else
  {
    v38 = v15;
  }

  v39 = *(v20 + 4 * v33 + 12);
  _X20 = (*(v16 + 112) + 4 * (v39 >> 8));
  __asm { PRFM            #0, [X20] }

  v80 = a3;
  v79 = v17;
  if (v15)
  {
    v72 = v38;
    v73 = v39;
    v75 = v9;
    v74 = *v16 - v34 - v81;
    v76 = v9 + v35 + 2;
    while (1)
    {
      v43 = *_X19++;
      v42 = v43;
      if (!v43)
      {
        return v31;
      }

      if (*(v34 + v42) == v17)
      {
        v44 = ZSTD_count_2segments(a2 + 2, (v34 + v42 + 4), a3, v78, (v8 + v81));
        v17 = v79;
        a3 = v80;
        v45 = v44 + 4;
        if (v44 + 4 > v31)
        {
          *a4 = (v76 - v42);
          v31 = v44 + 4;
          if ((a2 + v45) == v80)
          {
            return v45;
          }
        }
      }

      if (!--v38)
      {
        v9 = v75;
        v35 = v74;
        v46 = v72;
        LOBYTE(v39) = v73;
        goto LABEL_56;
      }
    }
  }

  v46 = 0;
LABEL_56:
  v59 = v15 - v46;
  if (v59 >= v39)
  {
    v60 = v39;
  }

  else
  {
    v60 = v59;
  }

  if (!v60)
  {
    return v31;
  }

  v61 = v60;
  v62 = _X20;
  do
  {
    v63 = *v62++;
    _X10 = v34 + v63;
    __asm { PRFM            #0, [X10] }

    --v61;
  }

  while (v61);
  v66 = v9 + v35 + 2;
  v45 = v31;
  do
  {
    v68 = *_X20++;
    v67 = v68;
    v69 = v34 + v68;
    if (*v69 == v17)
    {
      v70 = ZSTD_count_2segments(a2 + 2, (v69 + 4), a3, v78, (v8 + v81));
      v17 = v79;
      a3 = v80;
      if (v70 + 4 > v45)
      {
        *a4 = v66 - v67;
        v45 = v70 + 4;
        if ((a2 + v70 + 4) == v80)
        {
          break;
        }
      }
    }

    LODWORD(v60) = v60 - 1;
  }

  while (v60);
  return v45;
}

unint64_t ZSTD_HcFindBestMatch_dedicatedDictSearch_5(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v5 = *(a1 + 112);
  v6 = *(a1 + 244);
  v7 = 1 << v6;
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 240);
  v80 = *(a1 + 24);
  v11 = *(a1 + 44);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v13 = a2 - v8 - v10;
  }

  else
  {
    v13 = *(a1 + 28);
  }

  if (v9 >= v7)
  {
    v14 = v9 - v7;
  }

  else
  {
    v14 = 0;
  }

  v15 = 1 << *(a1 + 252);
  v16 = *(a1 + 232);
  v17 = 0xCF1BBCDCBB000000 * *a2;
  v18 = v17 >> (66 - *(v16 + 248));
  v19 = *(v16 + 96);
  _X28 = (v19 + 16 * v18);
  __asm { PRFM            #0, [X28] }

  v25 = *(a1 + 96);
  v26 = 64 - *(a1 + 248);
  if (v11 < v9)
  {
    v27 = ~(-1 << v6);
    do
    {
      v28 = (0xCF1BBCDCBB000000 * *(v8 + v11)) >> v26;
      *(v5 + 4 * (v11 & v27)) = *(v25 + 4 * v28);
      *(v25 + 4 * v28) = v11++;
    }

    while (v11 < v9);
  }

  *(a1 + 44) = v9;
  v29 = *(v25 + 4 * (v17 >> v26));
  if (v29 >= v13)
  {
    v46 = v7 - 1;
    v47 = a3 - 7;
    v30 = 3;
    while (1)
    {
      v48 = v29;
      v49 = (v8 + v29);
      if (*(v49 + v30) != *(a2 + v30))
      {
        goto LABEL_50;
      }

      if (v47 <= a2)
      {
        v52 = a2;
      }

      else
      {
        v50 = *v49;
        if (v50 != *a2)
        {
          v57 = __clz(__rbit64(*a2 ^ v50)) >> 3;
          goto LABEL_48;
        }

        v51 = 0;
        v49 = (v8 + 8 + v48);
        v52 = a2 + 4;
        while (v52 < v47)
        {
          v54 = *v49;
          v49 += 4;
          v53 = v54;
          v56 = *v52;
          v52 += 4;
          v55 = v56;
          v51 += 8;
          if (v53 != v56)
          {
            v57 = v51 + (__clz(__rbit64(v55 ^ v53)) >> 3);
            goto LABEL_48;
          }
        }
      }

      if (v52 < a3 - 3 && *v49 == *v52)
      {
        v49 += 2;
        v52 += 2;
      }

      if (v52 < a3 - 1 && *v49 == *v52)
      {
        ++v49;
        ++v52;
      }

      if (v52 < a3 && *v49 == *v52)
      {
        v52 = (v52 + 1);
      }

      v57 = v52 - a2;
LABEL_48:
      if (v57 > v30)
      {
        *a4 = v9 + 2 - v48;
        v30 = v57;
        if ((a2 + v57) == a3)
        {
          v30 = v57;
          goto LABEL_15;
        }
      }

LABEL_50:
      if (v48 > v14)
      {
        if (--v15)
        {
          v29 = *(v5 + 4 * (v48 & v46));
          if (v29 >= v13)
          {
            continue;
          }
        }
      }

      goto LABEL_15;
    }
  }

  v30 = 3;
LABEL_15:
  v75 = v9;
  v31 = 0;
  v32 = 4 * v18;
  v33 = *(v16 + 8);
  v78 = *v16;
  v34 = *v16 - v33 - v80;
  do
  {
    _X11 = v33 + _X28[v31];
    __asm { PRFM            #0, [X11] }

    ++v31;
  }

  while (v31 != 3);
  if (v15 >= 3)
  {
    v37 = 3;
  }

  else
  {
    v37 = v15;
  }

  v38 = *(v19 + 4 * v32 + 12);
  _X26 = (*(v16 + 112) + 4 * (v38 >> 8));
  __asm { PRFM            #0, [X26] }

  v79 = a3;
  if (v15)
  {
    v72 = v37;
    v73 = v38;
    v74 = *v16 - v33 - v80;
    v76 = v9 + v34 + 2;
    while (1)
    {
      v42 = *_X28++;
      v41 = v42;
      if (!v42)
      {
        return v30;
      }

      if (*(v33 + v41) == *a2)
      {
        v43 = ZSTD_count_2segments(a2 + 2, (v33 + v41 + 4), a3, v78, (v8 + v80));
        a3 = v79;
        v44 = v43 + 4;
        if (v43 + 4 > v30)
        {
          *a4 = (v76 - v41);
          v30 = v43 + 4;
          if ((a2 + v44) == v79)
          {
            return v44;
          }
        }
      }

      if (!--v37)
      {
        v34 = v74;
        v45 = v72;
        LOBYTE(v38) = v73;
        goto LABEL_55;
      }
    }
  }

  v45 = 0;
LABEL_55:
  v58 = v15 - v45;
  if (v58 >= v38)
  {
    v59 = v38;
  }

  else
  {
    v59 = v58;
  }

  if (!v59)
  {
    return v30;
  }

  v60 = v59;
  v61 = _X26;
  do
  {
    v62 = *v61++;
    _X10 = v33 + v62;
    __asm { PRFM            #0, [X10] }

    --v60;
  }

  while (v60);
  v65 = *a2;
  v66 = v75 + v34 + 2;
  v44 = v30;
  do
  {
    v68 = *_X26++;
    v67 = v68;
    v69 = v33 + v68;
    if (*v69 == v65)
    {
      v70 = ZSTD_count_2segments(a2 + 2, (v69 + 4), a3, v78, (v8 + v80));
      a3 = v79;
      if (v70 + 4 > v44)
      {
        *a4 = v66 - v67;
        v44 = v70 + 4;
        if ((a2 + v70 + 4) == v79)
        {
          break;
        }
      }
    }

    LODWORD(v59) = v59 - 1;
  }

  while (v59);
  return v44;
}

unint64_t ZSTD_HcFindBestMatch_dedicatedDictSearch_6(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v5 = *(a1 + 112);
  v6 = *(a1 + 244);
  v7 = 1 << v6;
  v8 = *(a1 + 8);
  v9 = a2 - v8;
  v10 = 1 << *(a1 + 240);
  v80 = *(a1 + 24);
  v11 = *(a1 + 44);
  if (a2 - v8 - *(a1 + 28) > v10 && *(a1 + 40) == 0)
  {
    v13 = a2 - v8 - v10;
  }

  else
  {
    v13 = *(a1 + 28);
  }

  if (v9 >= v7)
  {
    v14 = v9 - v7;
  }

  else
  {
    v14 = 0;
  }

  v15 = 1 << *(a1 + 252);
  v16 = *(a1 + 232);
  v17 = 0xCF1BBCDCBF9B0000 * *a2;
  v18 = v17 >> (66 - *(v16 + 248));
  v19 = *(v16 + 96);
  _X28 = (v19 + 16 * v18);
  __asm { PRFM            #0, [X28] }

  v25 = *(a1 + 96);
  v26 = 64 - *(a1 + 248);
  if (v11 < v9)
  {
    v27 = ~(-1 << v6);
    do
    {
      v28 = (0xCF1BBCDCBF9B0000 * *(v8 + v11)) >> v26;
      *(v5 + 4 * (v11 & v27)) = *(v25 + 4 * v28);
      *(v25 + 4 * v28) = v11++;
    }

    while (v11 < v9);
  }

  *(a1 + 44) = v9;
  v29 = *(v25 + 4 * (v17 >> v26));
  if (v29 >= v13)
  {
    v46 = v7 - 1;
    v47 = a3 - 7;
    v30 = 3;
    while (1)
    {
      v48 = v29;
      v49 = (v8 + v29);
      if (*(v49 + v30) != *(a2 + v30))
      {
        goto LABEL_50;
      }

      if (v47 <= a2)
      {
        v52 = a2;
      }

      else
      {
        v50 = *v49;
        if (v50 != *a2)
        {
          v57 = __clz(__rbit64(*a2 ^ v50)) >> 3;
          goto LABEL_48;
        }

        v51 = 0;
        v49 = (v8 + 8 + v48);
        v52 = a2 + 4;
        while (v52 < v47)
        {
          v54 = *v49;
          v49 += 4;
          v53 = v54;
          v56 = *v52;
          v52 += 4;
          v55 = v56;
          v51 += 8;
          if (v53 != v56)
          {
            v57 = v51 + (__clz(__rbit64(v55 ^ v53)) >> 3);
            goto LABEL_48;
          }
        }
      }

      if (v52 < a3 - 3 && *v49 == *v52)
      {
        v49 += 2;
        v52 += 2;
      }

      if (v52 < a3 - 1 && *v49 == *v52)
      {
        ++v49;
        ++v52;
      }

      if (v52 < a3 && *v49 == *v52)
      {
        v52 = (v52 + 1);
      }

      v57 = v52 - a2;
LABEL_48:
      if (v57 > v30)
      {
        *a4 = v9 + 2 - v48;
        v30 = v57;
        if ((a2 + v57) == a3)
        {
          v30 = v57;
          goto LABEL_15;
        }
      }

LABEL_50:
      if (v48 > v14)
      {
        if (--v15)
        {
          v29 = *(v5 + 4 * (v48 & v46));
          if (v29 >= v13)
          {
            continue;
          }
        }
      }

      goto LABEL_15;
    }
  }

  v30 = 3;
LABEL_15:
  v75 = v9;
  v31 = 0;
  v32 = 4 * v18;
  v33 = *(v16 + 8);
  v78 = *v16;
  v34 = *v16 - v33 - v80;
  do
  {
    _X11 = v33 + _X28[v31];
    __asm { PRFM            #0, [X11] }

    ++v31;
  }

  while (v31 != 3);
  if (v15 >= 3)
  {
    v37 = 3;
  }

  else
  {
    v37 = v15;
  }

  v38 = *(v19 + 4 * v32 + 12);
  _X26 = (*(v16 + 112) + 4 * (v38 >> 8));
  __asm { PRFM            #0, [X26] }

  v79 = a3;
  if (v15)
  {
    v72 = v37;
    v73 = v38;
    v74 = *v16 - v33 - v80;
    v76 = v9 + v34 + 2;
    while (1)
    {
      v42 = *_X28++;
      v41 = v42;
      if (!v42)
      {
        return v30;
      }

      if (*(v33 + v41) == *a2)
      {
        v43 = ZSTD_count_2segments(a2 + 2, (v33 + v41 + 4), a3, v78, (v8 + v80));
        a3 = v79;
        v44 = v43 + 4;
        if (v43 + 4 > v30)
        {
          *a4 = (v76 - v41);
          v30 = v43 + 4;
          if ((a2 + v44) == v79)
          {
            return v44;
          }
        }
      }

      if (!--v37)
      {
        v34 = v74;
        v45 = v72;
        LOBYTE(v38) = v73;
        goto LABEL_55;
      }
    }
  }

  v45 = 0;
LABEL_55:
  v58 = v15 - v45;
  if (v58 >= v38)
  {
    v59 = v38;
  }

  else
  {
    v59 = v58;
  }

  if (!v59)
  {
    return v30;
  }

  v60 = v59;
  v61 = _X26;
  do
  {
    v62 = *v61++;
    _X10 = v33 + v62;
    __asm { PRFM            #0, [X10] }

    --v60;
  }

  while (v60);
  v65 = *a2;
  v66 = v75 + v34 + 2;
  v44 = v30;
  do
  {
    v68 = *_X26++;
    v67 = v68;
    v69 = v33 + v68;
    if (*v69 == v65)
    {
      v70 = ZSTD_count_2segments(a2 + 2, (v69 + 4), a3, v78, (v8 + v80));
      a3 = v79;
      if (v70 + 4 > v44)
      {
        *a4 = v66 - v67;
        v44 = v70 + 4;
        if ((a2 + v70 + 4) == v79)
        {
          break;
        }
      }
    }

    LODWORD(v59) = v59 - 1;
  }

  while (v59);
  return v44;
}

unint64_t ZSTD_BtFindBestMatch_noDict_4(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4)
{
  if (*(a1 + 8) + *(a1 + 44) > a2)
  {
    return 0;
  }

  ZSTD_updateDUBT(a1, a2, 4);

  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 4, 0);
}

uint64_t ZSTD_updateDUBT(uint64_t result, int a2, int a3)
{
  v3 = *(result + 8);
  v4 = a2 - v3;
  v5 = *(result + 44);
  if (v5 < a2 - v3)
  {
    v6 = *(result + 96);
    v7 = *(result + 248);
    v8 = ~(-1 << (*(result + 244) - 1));
    v9 = 64 - v7;
    v10 = *(result + 112);
    v11 = 32 - v7;
    do
    {
      if (a3 > 6)
      {
        if (a3 == 7)
        {
          v12 = 0xCF1BBCDCBFA56300 * *(v3 + v5);
          goto LABEL_13;
        }

        if (a3 == 8)
        {
          v12 = 0xCF1BBCDCB7A56463 * *(v3 + v5);
          goto LABEL_13;
        }
      }

      else
      {
        if (a3 == 5)
        {
          v12 = 0xCF1BBCDCBB000000 * *(v3 + v5);
          goto LABEL_13;
        }

        if (a3 == 6)
        {
          v12 = 0xCF1BBCDCBF9B0000 * *(v3 + v5);
LABEL_13:
          v13 = v12 >> v9;
          goto LABEL_14;
        }
      }

      v13 = (-1640531535 * *(v3 + v5)) >> v11;
LABEL_14:
      v14 = *(v6 + 4 * v13);
      v15 = (v10 + 8 * (v5 & v8));
      *(v6 + 4 * v13) = v5;
      *v15 = v14;
      v15[1] = 1;
      ++v5;
    }

    while (v5 < v4);
  }

  *(result + 44) = v4;
  return result;
}

unint64_t ZSTD_DUBT_findBestMatch(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4, int a5, int a6)
{
  v6 = *(a1 + 96);
  v7 = *(a1 + 248);
  if (a5 > 6)
  {
    if (a5 == 7)
    {
      v8 = a2;
      v9 = *a2;
      v10 = -1079680256;
      goto LABEL_11;
    }

    if (a5 == 8)
    {
      v8 = a2;
      v9 = *a2;
      v10 = -1213897629;
      goto LABEL_11;
    }

LABEL_8:
    v8 = a2;
    v11 = (-1640531535 * *a2) >> -v7;
    goto LABEL_12;
  }

  if (a5 == 5)
  {
    v8 = a2;
    v9 = *a2;
    v10 = -1157627904;
    goto LABEL_11;
  }

  if (a5 != 6)
  {
    goto LABEL_8;
  }

  v8 = a2;
  v9 = *a2;
  v10 = -1080360960;
LABEL_11:
  v11 = (v9 * (v10 | 0xCF1BBCDC00000000)) >> -v7;
LABEL_12:
  v12 = *(a1 + 8);
  v13 = v8 - v12;
  v14 = *(a1 + 244);
  v15 = 1 << *(a1 + 240);
  v16 = *(a1 + 28);
  if (v13 - v16 > v15 && *(a1 + 40) == 0)
  {
    v16 = v13 - v15;
  }

  v18 = *(a1 + 112);
  v127 = v13;
  v148 = ~(-1 << (v14 - 1));
  if (v13 >= v148)
  {
    v19 = v13 + (-1 << (v14 - 1)) + 1;
  }

  else
  {
    v19 = 0;
  }

  v128 = v16;
  if (v19 <= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v19;
  }

  v21 = 1 << *(a1 + 252);
  v22 = *(v6 + 4 * v11);
  v134 = a1;
  v135 = *(a1 + 112);
  v142 = *(a1 + 8);
  v141 = a6;
  v126 = v19;
  if (v22 > v20)
  {
    v23 = 0;
    v24 = 1 << *(a1 + 252);
    while (1)
    {
      v25 = v22;
      v26 = (v18 + 8 * (v22 & v148));
      v27 = v26[1];
      v28 = v27 == 1 && v24 >= 2;
      if (!v28)
      {
        break;
      }

      v26[1] = v23;
      --v24;
      v22 = *v26;
      v23 = v25;
      if (v22 <= v20)
      {
        goto LABEL_35;
      }
    }

    if (v27 == 1)
    {
      *v26 = 0;
    }

    v25 = v23;
    if (v23)
    {
LABEL_35:
      v123 = v11;
      v124 = v6;
      v132 = v21;
      v131 = v18 + 4;
      v29 = *(a1 + 16);
      while (1)
      {
        v30 = v25;
        v31 = *(v131 + 8 * (v25 & v148));
        v32 = *(a1 + 240);
        v33 = (*(a1 + 244) - 1);
        v34 = -1 << (*(a1 + 244) - 1);
        v35 = *(a1 + 24);
        v36 = *(a1 + 28);
        v37 = v35 <= v30 ? v12 : v29;
        v150 = (v29 + v35);
        v38 = v35 <= v30 ? a3 : v29 + v35;
        v39 = (v18 + 8 * (v30 & ~v34));
        v40 = v39 + 1;
        v41 = *v39;
        v164[0] = 0;
        v42 = 1 << v32;
        v43 = v30 - v36 <= v42 ? v36 : v30 - v42;
        v143 = v31;
        v144 = v24;
        if (v24)
        {
          if (v41 > v43)
          {
            break;
          }
        }

LABEL_91:
        *v40 = 0;
        *v39 = 0;
        v25 = v143;
        v24 = v144 + 1;
        a1 = v134;
        if (!v143)
        {
          v21 = v132;
          v19 = v126;
          v11 = v123;
          v6 = v124;
          goto LABEL_94;
        }
      }

      v44 = 0;
      v45 = 0;
      v46 = ~v34;
      v47 = v30;
      v48 = v37 + v30;
      v49 = v38 - 7;
      v50 = v38 - 3;
      v51 = v38 - 1;
      v145 = v48 + 8;
      v156 = v43;
      v140 = ~v34;
      v138 = v38 - 7;
      v139 = v48;
      v136 = v38 - 1;
      v137 = v38 - 3;
      while (1)
      {
        if (v44 >= v45)
        {
          v52 = v45;
        }

        else
        {
          v52 = v44;
        }

        v53 = v12;
        v159 = v44;
        v161 = v45;
        if (a6 != 1)
        {
          goto LABEL_60;
        }

        v54 = v52 + v41;
        if (v35 > v47 || v54 >= v35)
        {
          break;
        }

        v154 = v39;
        v55 = (v48 + v52);
        v56 = v35;
        v57 = v20;
        v58 = v40;
        v59 = v38;
        v60 = v47;
        v61 = ZSTD_count_2segments(v55, (v29 + v41 + v52), v38, v150, (v12 + v35));
        v47 = v60;
        v46 = v140;
        a6 = v141;
        v38 = v59;
        v35 = v56;
        v49 = v138;
        v48 = v139;
        v40 = v58;
        v20 = v57;
        v51 = v136;
        v50 = v137;
        v18 = v135;
        v12 = v142;
        v62 = v61 + v52;
        v28 = v61 + v52 + v41 >= v35;
        v63 = v29 + v41;
        v39 = v154;
        if (v28)
        {
          v63 = v142 + v41;
        }

LABEL_80:
        if (v48 + v62 == v38)
        {
          goto LABEL_91;
        }

        v73 = (v18 + 8 * (v41 & v46));
        if (*(v63 + v62) >= *(v48 + v62))
        {
          *v40 = v41;
          v74 = v156;
          if (v41 <= v20)
          {
            v40 = v164;
            goto LABEL_91;
          }

          v40 = (v18 + 8 * (v41 & v46));
          v45 = v62;
          v44 = v159;
        }

        else
        {
          *v39 = v41;
          v74 = v156;
          if (v41 <= v20)
          {
            v39 = v164;
            goto LABEL_91;
          }

          v39 = ++v73;
          v44 = v62;
          v45 = v161;
        }

        if (--v24)
        {
          v41 = *v73;
          if (*v73 > v74)
          {
            continue;
          }
        }

        goto LABEL_91;
      }

      if (v54 >= v35)
      {
        v53 = v12;
      }

      else
      {
        v53 = v29;
      }

LABEL_60:
      v63 = v53 + v41;
      v64 = (v48 + v52);
      v65 = (v63 + v52);
      if (v49 <= v48 + v52)
      {
        v72 = (v48 + v52);
      }

      else
      {
        v66 = *v65;
        if (v66 != *v64)
        {
          v71 = __clz(__rbit64(*v64 ^ v66)) >> 3;
LABEL_79:
          v62 = v71 + v52;
          goto LABEL_80;
        }

        v67 = 0;
        v68 = v145 + v52;
        while (v68 + v67 < v49)
        {
          v69 = *(v53 + v52 + v41 + 8 + v67);
          v70 = *(v68 + v67);
          v67 += 8;
          if (v69 != v70)
          {
            v71 = v67 + (__clz(__rbit64(v70 ^ v69)) >> 3);
            goto LABEL_79;
          }
        }

        v65 = (v53 + v67 + v52 + v41 + 8);
        v72 = (v145 + v52 + v67);
      }

      if (v72 < v50 && *v65 == *v72)
      {
        v65 += 2;
        ++v72;
      }

      if (v72 < v51 && *v65 == *v72)
      {
        ++v65;
        v72 = (v72 + 2);
      }

      if (v72 < v38 && *v65 == *v72)
      {
        v72 = (v72 + 1);
      }

      v71 = v72 - v64;
      goto LABEL_79;
    }
  }

  v29 = *(a1 + 16);
LABEL_94:
  v75 = *(a1 + 24);
  v76 = (v18 + 8 * (v148 & v127));
  v77 = v76 + 1;
  v78 = v127 + 9;
  v163 = 0;
  v79 = *(v6 + 4 * v11);
  *(v6 + 4 * v11) = v127;
  if (v79 <= v128)
  {
    v80 = 0;
    v84 = a2;
    goto LABEL_141;
  }

  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = a3 - 7;
  v151 = v12 + 8;
  v84 = a2;
  while (1)
  {
    v133 = v21;
    if (v82 >= v81)
    {
      v85 = v81;
    }

    else
    {
      v85 = v82;
    }

    v86 = (v84 + v85);
    if (a6 != 1 || v85 + v79 >= v75)
    {
      v92 = v12 + v79;
      v93 = (v92 + v85);
      if (v83 <= v86)
      {
        v95 = (v84 + v85);
      }

      else
      {
        if (*v93 != *v86)
        {
          v100 = __clz(__rbit64(*v86 ^ *v93)) >> 3;
LABEL_123:
          v91 = v100 + v85;
          v84 = a2;
          goto LABEL_124;
        }

        v94 = 0;
        v93 = (v151 + v85 + v79);
        v95 = (a2 + v85 + 8);
        while (v95 < v83)
        {
          v97 = *v93++;
          v96 = v97;
          v99 = *v95;
          v95 += 4;
          v98 = v99;
          v94 += 8;
          if (v96 != v99)
          {
            v100 = v94 + (__clz(__rbit64(v98 ^ v96)) >> 3);
            goto LABEL_123;
          }
        }
      }

      if (v95 < a3 - 3 && *v93 == *v95)
      {
        v93 = (v93 + 4);
        v95 += 2;
      }

      if (v95 < a3 - 1 && *v93 == *v95)
      {
        v93 = (v93 + 2);
        ++v95;
      }

      if (v95 < a3 && *v93 == *v95)
      {
        v95 = (v95 + 1);
      }

      v100 = v95 - v86;
      goto LABEL_123;
    }

    v87 = v80;
    v88 = v76;
    v157 = v85;
    v89 = v75;
    v90 = ZSTD_count_2segments(v86, (v29 + v79 + v85), a3, (v29 + v75), (v12 + v75));
    v75 = v89;
    v76 = v88;
    v80 = v87;
    v19 = v126;
    v18 = v135;
    v12 = v142;
    v91 = v90 + v157;
    v92 = v90 + v157 + v79 >= v75 ? v142 + v79 : v29 + v79;
    v84 = a2;
    v21 = v133;
LABEL_124:
    if (v91 <= v80)
    {
      a6 = v141;
      goto LABEL_132;
    }

    if (v91 > v78 - v79)
    {
      v78 = v79 + v91;
    }

    a6 = v141;
    if (((__clz(v127 - v79 + 1) ^ 0x1F) - (__clz(*a4 + 1) ^ 0x1F)) < 4 * (v91 - v80))
    {
      *a4 = v127 - v79 + 2;
      v80 = v91;
    }

    if ((v84 + v91) == a3)
    {
      break;
    }

LABEL_132:
    v101 = (v18 + 8 * (v79 & v148));
    if (*(v92 + v91) >= *(v84 + v91))
    {
      *v77 = v79;
      if (v79 <= v19)
      {
        v77 = &v163;
        goto LABEL_141;
      }

      v81 = v91;
      v77 = (v18 + 8 * (v79 & v148));
    }

    else
    {
      *v76 = v79;
      if (v79 <= v19)
      {
        v76 = &v163;
        goto LABEL_141;
      }

      v76 = v101 + 1;
      v82 = v91;
      ++v101;
    }

    if (--v21)
    {
      v79 = *v101;
      if (*v101 > v128)
      {
        continue;
      }
    }

    goto LABEL_141;
  }

  if (v141 == 2)
  {
    v21 = 0;
  }

LABEL_141:
  v149 = v78;
  *v77 = 0;
  *v76 = 0;
  if (a6 != 2 || !v21)
  {
    goto LABEL_183;
  }

  v102 = *(v134 + 232);
  v103 = *(v102 + 248);
  if (a5 > 6)
  {
    if (a5 == 7)
    {
      v104 = *v84;
      v105 = -1079680256;
    }

    else
    {
      if (a5 != 8)
      {
        goto LABEL_155;
      }

      v104 = *v84;
      v105 = -1213897629;
    }

    goto LABEL_158;
  }

  if (a5 == 5)
  {
    v104 = *v84;
    v105 = -1157627904;
LABEL_158:
    v106 = (v104 * (v105 | 0xCF1BBCDC00000000)) >> -v103;
    goto LABEL_159;
  }

  if (a5 == 6)
  {
    v104 = *v84;
    v105 = -1080360960;
    goto LABEL_158;
  }

LABEL_155:
  v106 = (-1640531535 * *v84) >> -v103;
LABEL_159:
  v107 = *v102;
  v162 = *(v102 + 8);
  v108 = *v102 - v162;
  v109 = *(v102 + 28);
  v110 = ~(-1 << (*(v102 + 244) - 1));
  if (*v102 - v162 - v109 <= v110)
  {
    v111 = *(v102 + 28);
  }

  else
  {
    v111 = *v102 - v162 + (-1 << (*(v102 + 244) - 1)) + 1;
  }

  v160 = v111;
  v112 = *(*(v102 + 96) + 4 * v106);
  if (v112 > v109)
  {
    v113 = 0;
    v114 = 0;
    v152 = *(v102 + 112);
    v158 = *(v134 + 24);
    v155 = v108;
    v146 = (*(v134 + 28) - v108);
    v153 = v12 + v146;
    v115 = v21 - 1;
    do
    {
      if (v114 >= v113)
      {
        v116 = v113;
      }

      else
      {
        v116 = v114;
      }

      v117 = ZSTD_count_2segments((v84 + v116), (v162 + v112 + v116), a3, v107, (v12 + v158));
      v118 = v117 + v116;
      if (v117 + v116 + v112 >= v155)
      {
        v119 = v153 + v112;
      }

      else
      {
        v119 = v162 + v112;
      }

      if (v118 <= v80)
      {
        v84 = a2;
        v12 = v142;
      }

      else
      {
        v120 = v127 - (v146 + v112);
        if (((__clz(v120 + 1) ^ 0x1F) - (__clz(*a4 + 1) ^ 0x1F)) < 4 * (v118 - v80))
        {
          *a4 = (v120 + 2);
          v80 = v117 + v116;
        }

        v84 = a2;
        v12 = v142;
        if ((a2 + v118) == a3)
        {
          break;
        }
      }

      v121 = (v152 + 8 * (v112 & v110));
      if (*(v119 + v118) >= *(v84 + v118))
      {
        if (v112 <= v160)
        {
          break;
        }
      }

      else
      {
        if (v112 <= v160)
        {
          break;
        }

        ++v121;
        v114 = v117 + v116;
        v118 = v113;
      }

      v28 = v115-- != 0;
      if (!v28)
      {
        break;
      }

      v112 = *v121;
      v113 = v118;
    }

    while (*v121 > v109);
  }

LABEL_183:
  *(v134 + 44) = v149 - 8;
  return v80;
}

unint64_t ZSTD_BtFindBestMatch_noDict_5(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4)
{
  if (*(a1 + 8) + *(a1 + 44) > a2)
  {
    return 0;
  }

  ZSTD_updateDUBT(a1, a2, 5);

  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 5, 0);
}

unint64_t ZSTD_BtFindBestMatch_noDict_6(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4)
{
  if (*(a1 + 8) + *(a1 + 44) > a2)
  {
    return 0;
  }

  ZSTD_updateDUBT(a1, a2, 6);

  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 6, 0);
}

unint64_t ZSTD_BtFindBestMatch_extDict_4(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4)
{
  if (*(a1 + 8) + *(a1 + 44) > a2)
  {
    return 0;
  }

  ZSTD_updateDUBT(a1, a2, 4);

  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 4, 1);
}

unint64_t ZSTD_BtFindBestMatch_extDict_5(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4)
{
  if (*(a1 + 8) + *(a1 + 44) > a2)
  {
    return 0;
  }

  ZSTD_updateDUBT(a1, a2, 5);

  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 5, 1);
}

unint64_t ZSTD_BtFindBestMatch_extDict_6(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4)
{
  if (*(a1 + 8) + *(a1 + 44) > a2)
  {
    return 0;
  }

  ZSTD_updateDUBT(a1, a2, 6);

  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 6, 1);
}

unint64_t ZSTD_BtFindBestMatch_dictMatchState_4(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4)
{
  if (*(a1 + 8) + *(a1 + 44) > a2)
  {
    return 0;
  }

  ZSTD_updateDUBT(a1, a2, 4);

  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 4, 2);
}

unint64_t ZSTD_BtFindBestMatch_dictMatchState_5(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4)
{
  if (*(a1 + 8) + *(a1 + 44) > a2)
  {
    return 0;
  }

  ZSTD_updateDUBT(a1, a2, 5);

  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 5, 2);
}

unint64_t ZSTD_BtFindBestMatch_dictMatchState_6(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4)
{
  if (*(a1 + 8) + *(a1 + 44) > a2)
  {
    return 0;
  }

  ZSTD_updateDUBT(a1, a2, 6);

  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 6, 2);
}

unint64_t ZSTD_BtFindBestMatch_dedicatedDictSearch_4(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4)
{
  if (*(a1 + 8) + *(a1 + 44) > a2)
  {
    return 0;
  }

  ZSTD_updateDUBT(a1, a2, 4);

  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 4, 3);
}

unint64_t ZSTD_BtFindBestMatch_dedicatedDictSearch_5(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4)
{
  if (*(a1 + 8) + *(a1 + 44) > a2)
  {
    return 0;
  }

  ZSTD_updateDUBT(a1, a2, 5);

  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 5, 3);
}

unint64_t ZSTD_BtFindBestMatch_dedicatedDictSearch_6(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4)
{
  if (*(a1 + 8) + *(a1 + 44) > a2)
  {
    return 0;
  }

  ZSTD_updateDUBT(a1, a2, 6);

  return ZSTD_DUBT_findBestMatch(a1, a2, a3, a4, 6, 3);
}

unint64_t ZSTD_RowFindBestMatch_noDict_4_4(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, void *a4)
{
  v96 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 96);
  v5 = v4;
  v6 = *(a1 + 56);
  v7 = v6;
  v8 = a1 + 64;
  v9 = *(a1 + 52);
  v10 = *(a1 + 8);
  v11 = a2 - v10;
  v12 = 1 << *(a1 + 240);
  v13 = *(a1 + 44);
  _ZF = a2 - v10 - *(a1 + 28) > v12 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v15 = a2 - v10 - v12;
  }

  else
  {
    v15 = *(a1 + 28);
  }

  v16 = *(a1 + 252);
  if (v16 >= 4)
  {
    LOBYTE(v16) = 4;
  }

  if (v11 - v13 >= 0x181)
  {
    if (v13 <= 0xFFFFFF9F)
    {
      v72 = v13 + 96;
      do
      {
        v73 = (-1640531535 * *(v10 + 8 + v13)) >> (24 - v9);
        v74 = (v73 >> 4) & 0xFFFFFF0;
        _X21 = v4 + 4 * v74;
        __asm { PRFM            #0, [X21] }

        _X20 = v6 + 2 * v74;
        __asm { PRFM            #0, [X20] }

        v79 = *(v8 + 4 * (v13 & 7));
        *(v8 + 4 * (v13 & 7)) = v73;
        v80 = (v79 >> 4) & 0xFFFFFF0;
        v81 = v4 + 4 * v80;
        v82 = (v6 + 2 * v80);
        v83 = (*v82 - 1) & 0xF;
        *v82 = v83;
        v82[v83 + 16] = v79;
        *(v81 + 4 * v83) = v13++;
      }

      while (v72 != v13);
      v5 = *(a1 + 96);
      v7 = *(a1 + 56);
    }

    v84 = v11 - 32;
    LODWORD(v13) = v11 - 32;
    v85 = a2 + 1 - (v10 + v84);
    if ((v85 + 1) < 8)
    {
      v86 = v85 + 1;
    }

    else
    {
      v86 = 8;
    }

    if (a2 + 1 >= v10 + v84)
    {
      v87 = v86;
    }

    else
    {
      v87 = 0;
    }

    if (v84 < v87 + v84)
    {
      v88 = 24 - *(a1 + 52);
      do
      {
        v89 = (-1640531535 * *(v10 + v84)) >> v88;
        v90 = (v89 >> 4) & 0xFFFFFF0;
        _X23 = v5 + 4 * v90;
        __asm { PRFM            #0, [X23] }

        _X22 = v7 + 2 * v90;
        __asm { PRFM            #0, [X22] }

        *(v8 + 4 * (v84++ & 7)) = v89;
        --v87;
      }

      while (v87);
    }
  }

  if (v13 < v11)
  {
    v17 = *(a1 + 8) + 8;
    v18 = 24 - *(a1 + 52);
    v13 = v13;
    do
    {
      v19 = (-1640531535 * *(v17 + v13)) >> v18;
      v20 = (v19 >> 4) & 0xFFFFFF0;
      _X23 = v5 + 4 * v20;
      __asm { PRFM            #0, [X23] }

      _X22 = v7 + 2 * v20;
      __asm { PRFM            #0, [X22] }

      v28 = *(v8 + 4 * (v13 & 7));
      *(v8 + 4 * (v13 & 7)) = v19;
      v29 = (v28 >> 4) & 0xFFFFFF0;
      v30 = v5 + 4 * v29;
      v31 = (v7 + 2 * v29);
      v32 = (*v31 - 1) & 0xF;
      *v31 = v32;
      v31[v32 + 16] = v28;
      *(v30 + 4 * v32) = v13++;
    }

    while (v13 < v11);
  }

  *(a1 + 44) = v11;
  v33 = (-1640531535 * *(v10 + v11 + 8)) >> (24 - v9);
  v34 = (v33 >> 4) & 0xFFFFFF0;
  _X4 = v4 + 4 * v34;
  __asm { PRFM            #0, [X4] }

  _X16 = v6 + 2 * v34;
  __asm { PRFM            #0, [X16] }

  v39 = *(v8 + 4 * (v11 & 7));
  *(v8 + 4 * (v11 & 7)) = v33;
  v40 = (v39 >> 4) & 0xFFFFFF0;
  v41 = v4 + 4 * v40;
  v42 = (v6 + 2 * v40);
  v43 = v42->i8[0];
  memset(v95, 0, sizeof(v95));
  v44 = vshlq_n_s16(vceqq_s8(v42[1], vdupq_n_s8(v39)), 7uLL);
  v45 = vshrq_n_u32(vsriq_n_s16(v44, v44, 0xEuLL), 0xEuLL);
  v46 = vsraq_n_u64(v45, v45, 0x1CuLL);
  if (v46.u8[0] | (v46.u8[8] << 8))
  {
    v47 = 0;
    v48 = 1 << v16;
    v49 = ((v46.u8[0] | (v46.u8[8] << 8)) >> (v43 & 0xF)) | ((v46.u8[0] | (v46.u8[8] << 8)) << (-v43 & 0xF));
    v50 = v48 - 1;
    while (1)
    {
      v51 = *(v41 + 4 * ((__clz(__rbit64(v49)) + v43) & 0xF));
      if (v51 < v15)
      {
        break;
      }

      _X11 = v10 + v51;
      __asm { PRFM            #0, [X11] }

      v54 = v47 + 1;
      *(v95 + v47) = v51;
      v49 &= v49 - 1;
      if (v49)
      {
        _ZF = v50 == v47++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    v54 = v47;
  }

  else
  {
    v54 = 0;
  }

LABEL_22:
  v55 = (v43 - 1) & 0xF;
  v42->i8[0] = v55;
  v42[1].i8[v55] = v39;
  v56 = *(a1 + 44);
  *(a1 + 44) = v56 + 1;
  *(v41 + 4 * v55) = v56;
  if (v54)
  {
    v57 = 0;
    v58 = a3 - 7;
    v59 = v11 + 2;
    v60 = 3;
    while (1)
    {
      v61 = *(v95 + v57);
      v62 = (v10 + v61);
      if (*(v10 + v61 + v60) != *(a2 + v60))
      {
        goto LABEL_45;
      }

      if (v58 <= a2)
      {
        v65 = a2;
      }

      else
      {
        v63 = *v62;
        if (v63 != *a2)
        {
          result = __clz(__rbit64(*a2 ^ v63)) >> 3;
          goto LABEL_43;
        }

        v64 = 0;
        v62 = (v10 + 8 + v61);
        v65 = a2 + 4;
        while (v65 < v58)
        {
          v67 = *v62;
          v62 += 4;
          v66 = v67;
          v69 = *v65;
          v65 += 4;
          v68 = v69;
          v64 += 8;
          if (v66 != v69)
          {
            result = v64 + (__clz(__rbit64(v68 ^ v66)) >> 3);
            goto LABEL_43;
          }
        }
      }

      if (v65 < (a3 - 3) && *v62 == *v65)
      {
        v62 += 2;
        v65 += 2;
      }

      if (v65 < (a3 - 1) && *v62 == *v65)
      {
        ++v62;
        ++v65;
      }

      if (v65 < a3 && *v62 == *v65)
      {
        v65 = (v65 + 1);
      }

      result = v65 - a2;
LABEL_43:
      if (result > v60)
      {
        *a4 = v59 - v61;
        v60 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_48;
        }
      }

LABEL_45:
      ++v57;
      result = v60;
      if (v57 == v54)
      {
        goto LABEL_48;
      }
    }
  }

  result = 3;
LABEL_48:
  v71 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ZSTD_RowFindBestMatch_noDict_4_5(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, void *a4)
{
  v100 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 96);
  v5 = v4;
  v6 = *(a1 + 56);
  v7 = v6;
  v8 = a1 + 64;
  v9 = *(a1 + 52);
  v10 = *(a1 + 8);
  v11 = a2 - v10;
  v12 = 1 << *(a1 + 240);
  v13 = *(a1 + 44);
  _ZF = a2 - v10 - *(a1 + 28) > v12 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v15 = a2 - v10 - v12;
  }

  else
  {
    v15 = *(a1 + 28);
  }

  v16 = *(a1 + 252);
  if (v16 >= 5)
  {
    LOBYTE(v16) = 5;
  }

  if (v11 - v13 >= 0x181)
  {
    if (v13 <= 0xFFFFFF9F)
    {
      v74 = v13 + 96;
      do
      {
        v75 = (-1640531535 * *(v10 + 8 + v13)) >> (24 - v9);
        v76 = (v75 >> 3) & 0x1FFFFFE0;
        _X21 = v4 + 4 * v76;
        __asm
        {
          PRFM            #0, [X21]
          PRFM            #0, [X21,#0x40]
        }

        _X20 = v6 + 2 * v76;
        __asm { PRFM            #0, [X20] }

        v82 = *(v8 + 4 * (v13 & 7));
        *(v8 + 4 * (v13 & 7)) = v75;
        v83 = (v82 >> 3) & 0x1FFFFFE0;
        v84 = v4 + 4 * v83;
        v85 = (v6 + 2 * v83);
        v86 = (*v85 - 1) & 0x1F;
        *v85 = v86;
        v85[v86 + 16] = v82;
        *(v84 + 4 * v86) = v13++;
      }

      while (v74 != v13);
      v5 = *(a1 + 96);
      v7 = *(a1 + 56);
    }

    v87 = v11 - 32;
    LODWORD(v13) = v11 - 32;
    v88 = a2 + 1 - (v10 + v87);
    if ((v88 + 1) < 8)
    {
      v89 = v88 + 1;
    }

    else
    {
      v89 = 8;
    }

    if (a2 + 1 >= v10 + v87)
    {
      v90 = v89;
    }

    else
    {
      v90 = 0;
    }

    if (v87 < v90 + v87)
    {
      v91 = 24 - *(a1 + 52);
      do
      {
        v92 = (-1640531535 * *(v10 + v87)) >> v91;
        v93 = (v92 >> 3) & 0x1FFFFFE0;
        _X23 = v5 + 4 * v93;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X22 = v7 + 2 * v93;
        __asm { PRFM            #0, [X22] }

        *(v8 + 4 * (v87++ & 7)) = v92;
        --v90;
      }

      while (v90);
    }
  }

  if (v13 < v11)
  {
    v17 = *(a1 + 8) + 8;
    v18 = 24 - *(a1 + 52);
    v13 = v13;
    do
    {
      v19 = (-1640531535 * *(v17 + v13)) >> v18;
      v20 = (v19 >> 3) & 0x1FFFFFE0;
      _X23 = v5 + 4 * v20;
      __asm
      {
        PRFM            #0, [X23]
        PRFM            #0, [X23,#0x40]
      }

      _X22 = v7 + 2 * v20;
      __asm { PRFM            #0, [X22] }

      v29 = *(v8 + 4 * (v13 & 7));
      *(v8 + 4 * (v13 & 7)) = v19;
      v30 = (v29 >> 3) & 0x1FFFFFE0;
      v31 = v5 + 4 * v30;
      v32 = (v7 + 2 * v30);
      v33 = (*v32 - 1) & 0x1F;
      *v32 = v33;
      v32[v33 + 16] = v29;
      *(v31 + 4 * v33) = v13++;
    }

    while (v13 < v11);
  }

  *(a1 + 44) = v11;
  v34 = (-1640531535 * *(v10 + v11 + 8)) >> (24 - v9);
  v35 = (v34 >> 3) & 0x1FFFFFE0;
  _X4 = v4 + 4 * v35;
  __asm
  {
    PRFM            #0, [X4]
    PRFM            #0, [X4,#0x40]
  }

  _X16 = v6 + 2 * v35;
  __asm { PRFM            #0, [X16] }

  v41 = *(v8 + 4 * (v11 & 7));
  *(v8 + 4 * (v11 & 7)) = v34;
  v42 = (v41 >> 3) & 0x1FFFFFE0;
  v43 = v4 + 4 * v42;
  v44 = (v6 + 2 * v42);
  v46 = (v44 + 16);
  v45 = *v44;
  v101 = vld2q_s16(v46);
  memset(v99, 0, sizeof(v99));
  v47 = vdupq_n_s8(v41);
  *v101.val[0].i8 = vqmovn_s16(vceqq_s8(v47, v101.val[0]));
  *v47.i8 = vsri_n_s8(vqmovn_s16(vceqq_s8(v47, v101.val[1])), *v101.val[0].i8, 2uLL);
  v48 = vsri_n_s8(vuzp2_s8(*v47.i8, *v101.val[0].i8), vuzp1_s8(*v47.i8, *v101.val[0].i8), 4uLL).u32[0];
  if (v48)
  {
    v49 = 0;
    v50 = 1 << v16;
    v51 = __ROR4__(v48, v45);
    v52 = v50 - 1;
    while (1)
    {
      v53 = *(v43 + 4 * ((__clz(__rbit64(v51)) + v45) & 0x1F));
      if (v53 < v15)
      {
        break;
      }

      _X11 = v10 + v53;
      __asm { PRFM            #0, [X11] }

      v56 = v49 + 1;
      *(v99 + v49) = v53;
      v51 &= v51 - 1;
      if (v51)
      {
        _ZF = v52 == v49++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    v56 = v49;
  }

  else
  {
    v56 = 0;
  }

LABEL_22:
  v57 = (v45 - 1) & 0x1F;
  *v44 = v57;
  v44[v57 + 16] = v41;
  v58 = *(a1 + 44);
  *(a1 + 44) = v58 + 1;
  *(v43 + 4 * v57) = v58;
  if (v56)
  {
    v59 = 0;
    v60 = a3 - 7;
    v61 = v11 + 2;
    v62 = 3;
    while (1)
    {
      v63 = *(v99 + v59);
      v64 = (v10 + v63);
      if (*(v10 + v63 + v62) != *(a2 + v62))
      {
        goto LABEL_45;
      }

      if (v60 <= a2)
      {
        v67 = a2;
      }

      else
      {
        v65 = *v64;
        if (v65 != *a2)
        {
          result = __clz(__rbit64(*a2 ^ v65)) >> 3;
          goto LABEL_43;
        }

        v66 = 0;
        v64 = (v10 + 8 + v63);
        v67 = a2 + 4;
        while (v67 < v60)
        {
          v69 = *v64;
          v64 += 4;
          v68 = v69;
          v71 = *v67;
          v67 += 4;
          v70 = v71;
          v66 += 8;
          if (v68 != v71)
          {
            result = v66 + (__clz(__rbit64(v70 ^ v68)) >> 3);
            goto LABEL_43;
          }
        }
      }

      if (v67 < (a3 - 3) && *v64 == *v67)
      {
        v64 += 2;
        v67 += 2;
      }

      if (v67 < (a3 - 1) && *v64 == *v67)
      {
        ++v64;
        ++v67;
      }

      if (v67 < a3 && *v64 == *v67)
      {
        v67 = (v67 + 1);
      }

      result = v67 - a2;
LABEL_43:
      if (result > v62)
      {
        *a4 = v61 - v63;
        v62 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_48;
        }
      }

LABEL_45:
      ++v59;
      result = v62;
      if (v59 == v56)
      {
        goto LABEL_48;
      }
    }
  }

  result = 3;
LABEL_48:
  v73 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ZSTD_RowFindBestMatch_noDict_4_6(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, void *a4)
{
  v104 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 96);
  v5 = v4;
  v6 = *(a1 + 56);
  v7 = v6;
  v8 = a1 + 64;
  v9 = *(a1 + 52);
  v10 = *(a1 + 8);
  v11 = a2 - v10;
  v12 = 1 << *(a1 + 240);
  v13 = *(a1 + 44);
  _ZF = a2 - v10 - *(a1 + 28) > v12 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v15 = a2 - v10 - v12;
  }

  else
  {
    v15 = *(a1 + 28);
  }

  v16 = *(a1 + 252);
  if (v16 >= 6)
  {
    LOBYTE(v16) = 6;
  }

  if (v11 - v13 >= 0x181)
  {
    if (v13 <= 0xFFFFFF9F)
    {
      v76 = v13 + 96;
      do
      {
        v77 = (-1640531535 * *(v10 + 8 + v13)) >> (24 - v9);
        v78 = (v77 >> 2) & 0x3FFFFFC0;
        _X21 = v4 + 4 * v78;
        __asm
        {
          PRFM            #0, [X21]
          PRFM            #0, [X21,#0x40]
        }

        _X20 = v6 + 2 * v78;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x40]
        }

        v85 = *(v8 + 4 * (v13 & 7));
        *(v8 + 4 * (v13 & 7)) = v77;
        v86 = (v85 >> 2) & 0x3FFFFFC0;
        v87 = v4 + 4 * v86;
        v88 = (v6 + 2 * v86);
        v89 = (*v88 - 1) & 0x3F;
        *v88 = v89;
        v88[v89 + 16] = v85;
        *(v87 + 4 * v89) = v13++;
      }

      while (v76 != v13);
      v5 = *(a1 + 96);
      v7 = *(a1 + 56);
    }

    v90 = v11 - 32;
    LODWORD(v13) = v11 - 32;
    v91 = a2 + 1 - (v10 + v90);
    if ((v91 + 1) < 8)
    {
      v92 = v91 + 1;
    }

    else
    {
      v92 = 8;
    }

    if (a2 + 1 >= v10 + v90)
    {
      v93 = v92;
    }

    else
    {
      v93 = 0;
    }

    if (v90 < v93 + v90)
    {
      v94 = 24 - *(a1 + 52);
      do
      {
        v95 = (-1640531535 * *(v10 + v90)) >> v94;
        v96 = (v95 >> 2) & 0x3FFFFFC0;
        _X23 = v5 + 4 * v96;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X22 = v7 + 2 * v96;
        __asm
        {
          PRFM            #0, [X22]
          PRFM            #0, [X22,#0x40]
        }

        *(v8 + 4 * (v90++ & 7)) = v95;
        --v93;
      }

      while (v93);
    }
  }

  if (v13 < v11)
  {
    v17 = *(a1 + 8) + 8;
    v18 = 24 - *(a1 + 52);
    v13 = v13;
    do
    {
      v19 = (-1640531535 * *(v17 + v13)) >> v18;
      v20 = (v19 >> 2) & 0x3FFFFFC0;
      _X23 = v5 + 4 * v20;
      __asm
      {
        PRFM            #0, [X23]
        PRFM            #0, [X23,#0x40]
      }

      _X22 = v7 + 2 * v20;
      __asm
      {
        PRFM            #0, [X22]
        PRFM            #0, [X22,#0x40]
      }

      v30 = *(v8 + 4 * (v13 & 7));
      *(v8 + 4 * (v13 & 7)) = v19;
      v31 = (v30 >> 2) & 0x3FFFFFC0;
      v32 = v5 + 4 * v31;
      v33 = (v7 + 2 * v31);
      v34 = (*v33 - 1) & 0x3F;
      *v33 = v34;
      v33[v34 + 16] = v30;
      *(v32 + 4 * v34) = v13++;
    }

    while (v13 < v11);
  }

  *(a1 + 44) = v11;
  v35 = (-1640531535 * *(v10 + v11 + 8)) >> (24 - v9);
  v36 = (v35 >> 2) & 0x3FFFFFC0;
  _X4 = v4 + 4 * v36;
  __asm
  {
    PRFM            #0, [X4]
    PRFM            #0, [X4,#0x40]
  }

  _X16 = v6 + 2 * v36;
  __asm
  {
    PRFM            #0, [X16]
    PRFM            #0, [X16,#0x40]
  }

  v43 = *(v8 + 4 * (v11 & 7));
  *(v8 + 4 * (v11 & 7)) = v35;
  v44 = (v43 >> 2) & 0x3FFFFFC0;
  v45 = (v6 + 2 * v44);
  v46 = v45 + 16;
  v47 = *v45;
  v48 = v4 + 4 * v44;
  memset(v103, 0, sizeof(v103));
  v105 = vld4q_s8(v46);
  v49 = vdupq_n_s8(v43);
  v105.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v105.val[3], v49), vceqq_s8(v105.val[2], v49), 1uLL), vsriq_n_s8(vceqq_s8(v105.val[1], v49), vceqq_s8(v105.val[0], v49), 1uLL), 2uLL);
  v50 = vshrn_n_s16(vsriq_n_s8(v105.val[0], v105.val[0], 4uLL), 4uLL);
  if (v50)
  {
    v51 = 0;
    v52 = 1 << v16;
    v53 = __ROR8__(*&v50, v47);
    v54 = v52 - 1;
    while (1)
    {
      v55 = *(v48 + 4 * ((__clz(__rbit64(v53)) + v47) & 0x3F));
      if (v55 < v15)
      {
        break;
      }

      _X11 = v10 + v55;
      __asm { PRFM            #0, [X11] }

      v58 = v51 + 1;
      *(v103 + v51) = v55;
      v53 &= v53 - 1;
      if (v53)
      {
        _ZF = v54 == v51++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    v58 = v51;
  }

  else
  {
    v58 = 0;
  }

LABEL_22:
  v59 = (v47 - 1) & 0x3F;
  *v45 = v59;
  v45[v59 + 16] = v43;
  v60 = *(a1 + 44);
  *(a1 + 44) = v60 + 1;
  *(v48 + 4 * v59) = v60;
  if (v58)
  {
    v61 = 0;
    v62 = a3 - 7;
    v63 = v11 + 2;
    v64 = 3;
    while (1)
    {
      v65 = *(v103 + v61);
      v66 = (v10 + v65);
      if (*(v10 + v65 + v64) != *(a2 + v64))
      {
        goto LABEL_45;
      }

      if (v62 <= a2)
      {
        v69 = a2;
      }

      else
      {
        v67 = *v66;
        if (v67 != *a2)
        {
          result = __clz(__rbit64(*a2 ^ v67)) >> 3;
          goto LABEL_43;
        }

        v68 = 0;
        v66 = (v10 + 8 + v65);
        v69 = a2 + 4;
        while (v69 < v62)
        {
          v71 = *v66;
          v66 += 4;
          v70 = v71;
          v73 = *v69;
          v69 += 4;
          v72 = v73;
          v68 += 8;
          if (v70 != v73)
          {
            result = v68 + (__clz(__rbit64(v72 ^ v70)) >> 3);
            goto LABEL_43;
          }
        }
      }

      if (v69 < (a3 - 3) && *v66 == *v69)
      {
        v66 += 2;
        v69 += 2;
      }

      if (v69 < (a3 - 1) && *v66 == *v69)
      {
        ++v66;
        ++v69;
      }

      if (v69 < a3 && *v66 == *v69)
      {
        v69 = (v69 + 1);
      }

      result = v69 - a2;
LABEL_43:
      if (result > v64)
      {
        *a4 = v63 - v65;
        v64 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_48;
        }
      }

LABEL_45:
      ++v61;
      result = v64;
      if (v61 == v58)
      {
        goto LABEL_48;
      }
    }
  }

  result = 3;
LABEL_48:
  v75 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ZSTD_RowFindBestMatch_noDict_5_4(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, void *a4)
{
  v96 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 96);
  v5 = v4;
  v6 = *(a1 + 56);
  v7 = v6;
  v8 = a1 + 64;
  v9 = *(a1 + 52);
  v10 = *(a1 + 8);
  v11 = a2 - v10;
  v12 = 1 << *(a1 + 240);
  v13 = *(a1 + 44);
  _ZF = a2 - v10 - *(a1 + 28) > v12 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v15 = a2 - v10 - v12;
  }

  else
  {
    v15 = *(a1 + 28);
  }

  v16 = *(a1 + 252);
  if (v16 >= 4)
  {
    LOBYTE(v16) = 4;
  }

  if (v11 - v13 >= 0x181)
  {
    if (v13 <= 0xFFFFFF9F)
    {
      v72 = v13 + 96;
      do
      {
        v73 = (0xCF1BBCDCBB000000 * *(v10 + 8 + v13)) >> (56 - v9);
        v74 = (v73 >> 4) & 0xFFFFFF0;
        _X21 = v4 + 4 * v74;
        __asm { PRFM            #0, [X21] }

        _X20 = v6 + 2 * v74;
        __asm { PRFM            #0, [X20] }

        v79 = *(v8 + 4 * (v13 & 7));
        *(v8 + 4 * (v13 & 7)) = v73;
        v80 = (v79 >> 4) & 0xFFFFFF0;
        v81 = v4 + 4 * v80;
        v82 = (v6 + 2 * v80);
        v83 = (*v82 - 1) & 0xF;
        *v82 = v83;
        v82[v83 + 16] = v79;
        *(v81 + 4 * v83) = v13++;
      }

      while (v72 != v13);
      v5 = *(a1 + 96);
      v7 = *(a1 + 56);
    }

    v84 = v11 - 32;
    LODWORD(v13) = v11 - 32;
    v85 = a2 + 1 - (v10 + v84);
    if ((v85 + 1) < 8)
    {
      v86 = v85 + 1;
    }

    else
    {
      v86 = 8;
    }

    if (a2 + 1 >= v10 + v84)
    {
      v87 = v86;
    }

    else
    {
      v87 = 0;
    }

    if (v84 < v87 + v84)
    {
      v88 = 56 - *(a1 + 52);
      do
      {
        v89 = (0xCF1BBCDCBB000000 * *(v10 + v84)) >> v88;
        v90 = (v89 >> 4) & 0xFFFFFF0;
        _X23 = v5 + 4 * v90;
        __asm { PRFM            #0, [X23] }

        _X22 = v7 + 2 * v90;
        __asm { PRFM            #0, [X22] }

        *(v8 + 4 * (v84++ & 7)) = v89;
        --v87;
      }

      while (v87);
    }
  }

  if (v13 < v11)
  {
    v17 = *(a1 + 8) + 8;
    v18 = 56 - *(a1 + 52);
    v13 = v13;
    do
    {
      v19 = (0xCF1BBCDCBB000000 * *(v17 + v13)) >> v18;
      v20 = (v19 >> 4) & 0xFFFFFF0;
      _X23 = v5 + 4 * v20;
      __asm { PRFM            #0, [X23] }

      _X22 = v7 + 2 * v20;
      __asm { PRFM            #0, [X22] }

      v28 = *(v8 + 4 * (v13 & 7));
      *(v8 + 4 * (v13 & 7)) = v19;
      v29 = (v28 >> 4) & 0xFFFFFF0;
      v30 = v5 + 4 * v29;
      v31 = (v7 + 2 * v29);
      v32 = (*v31 - 1) & 0xF;
      *v31 = v32;
      v31[v32 + 16] = v28;
      *(v30 + 4 * v32) = v13++;
    }

    while (v13 < v11);
  }

  *(a1 + 44) = v11;
  v33 = (0xCF1BBCDCBB000000 * *(v10 + v11 + 8)) >> (56 - v9);
  v34 = (v33 >> 4) & 0xFFFFFF0;
  _X4 = v4 + 4 * v34;
  __asm { PRFM            #0, [X4] }

  _X16 = v6 + 2 * v34;
  __asm { PRFM            #0, [X16] }

  v39 = *(v8 + 4 * (v11 & 7));
  *(v8 + 4 * (v11 & 7)) = v33;
  v40 = (v39 >> 4) & 0xFFFFFF0;
  v41 = v4 + 4 * v40;
  v42 = (v6 + 2 * v40);
  v43 = v42->i8[0];
  memset(v95, 0, sizeof(v95));
  v44 = vshlq_n_s16(vceqq_s8(v42[1], vdupq_n_s8(v39)), 7uLL);
  v45 = vshrq_n_u32(vsriq_n_s16(v44, v44, 0xEuLL), 0xEuLL);
  v46 = vsraq_n_u64(v45, v45, 0x1CuLL);
  if (v46.u8[0] | (v46.u8[8] << 8))
  {
    v47 = 0;
    v48 = 1 << v16;
    v49 = ((v46.u8[0] | (v46.u8[8] << 8)) >> (v43 & 0xF)) | ((v46.u8[0] | (v46.u8[8] << 8)) << (-v43 & 0xF));
    v50 = v48 - 1;
    while (1)
    {
      v51 = *(v41 + 4 * ((__clz(__rbit64(v49)) + v43) & 0xF));
      if (v51 < v15)
      {
        break;
      }

      _X11 = v10 + v51;
      __asm { PRFM            #0, [X11] }

      v54 = v47 + 1;
      *(v95 + v47) = v51;
      v49 &= v49 - 1;
      if (v49)
      {
        _ZF = v50 == v47++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    v54 = v47;
  }

  else
  {
    v54 = 0;
  }

LABEL_22:
  v55 = (v43 - 1) & 0xF;
  v42->i8[0] = v55;
  v42[1].i8[v55] = v39;
  v56 = *(a1 + 44);
  *(a1 + 44) = v56 + 1;
  *(v41 + 4 * v55) = v56;
  if (v54)
  {
    v57 = 0;
    v58 = a3 - 7;
    v59 = v11 + 2;
    v60 = 3;
    while (1)
    {
      v61 = *(v95 + v57);
      v62 = (v10 + v61);
      if (*(v10 + v61 + v60) != *(a2 + v60))
      {
        goto LABEL_45;
      }

      if (v58 <= a2)
      {
        v65 = a2;
      }

      else
      {
        v63 = *v62;
        if (v63 != *a2)
        {
          result = __clz(__rbit64(*a2 ^ v63)) >> 3;
          goto LABEL_43;
        }

        v64 = 0;
        v62 = (v10 + 8 + v61);
        v65 = a2 + 4;
        while (v65 < v58)
        {
          v67 = *v62;
          v62 += 4;
          v66 = v67;
          v69 = *v65;
          v65 += 4;
          v68 = v69;
          v64 += 8;
          if (v66 != v69)
          {
            result = v64 + (__clz(__rbit64(v68 ^ v66)) >> 3);
            goto LABEL_43;
          }
        }
      }

      if (v65 < (a3 - 3) && *v62 == *v65)
      {
        v62 += 2;
        v65 += 2;
      }

      if (v65 < (a3 - 1) && *v62 == *v65)
      {
        ++v62;
        ++v65;
      }

      if (v65 < a3 && *v62 == *v65)
      {
        v65 = (v65 + 1);
      }

      result = v65 - a2;
LABEL_43:
      if (result > v60)
      {
        *a4 = v59 - v61;
        v60 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_48;
        }
      }

LABEL_45:
      ++v57;
      result = v60;
      if (v57 == v54)
      {
        goto LABEL_48;
      }
    }
  }

  result = 3;
LABEL_48:
  v71 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ZSTD_RowFindBestMatch_noDict_5_5(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, void *a4)
{
  v100 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 96);
  v5 = v4;
  v6 = *(a1 + 56);
  v7 = v6;
  v8 = a1 + 64;
  v9 = *(a1 + 52);
  v10 = *(a1 + 8);
  v11 = a2 - v10;
  v12 = 1 << *(a1 + 240);
  v13 = *(a1 + 44);
  _ZF = a2 - v10 - *(a1 + 28) > v12 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v15 = a2 - v10 - v12;
  }

  else
  {
    v15 = *(a1 + 28);
  }

  v16 = *(a1 + 252);
  if (v16 >= 5)
  {
    LOBYTE(v16) = 5;
  }

  if (v11 - v13 >= 0x181)
  {
    if (v13 <= 0xFFFFFF9F)
    {
      v74 = v13 + 96;
      do
      {
        v75 = (0xCF1BBCDCBB000000 * *(v10 + 8 + v13)) >> (56 - v9);
        v76 = (v75 >> 3) & 0x1FFFFFE0;
        _X21 = v4 + 4 * v76;
        __asm
        {
          PRFM            #0, [X21]
          PRFM            #0, [X21,#0x40]
        }

        _X20 = v6 + 2 * v76;
        __asm { PRFM            #0, [X20] }

        v82 = *(v8 + 4 * (v13 & 7));
        *(v8 + 4 * (v13 & 7)) = v75;
        v83 = (v82 >> 3) & 0x1FFFFFE0;
        v84 = v4 + 4 * v83;
        v85 = (v6 + 2 * v83);
        v86 = (*v85 - 1) & 0x1F;
        *v85 = v86;
        v85[v86 + 16] = v82;
        *(v84 + 4 * v86) = v13++;
      }

      while (v74 != v13);
      v5 = *(a1 + 96);
      v7 = *(a1 + 56);
    }

    v87 = v11 - 32;
    LODWORD(v13) = v11 - 32;
    v88 = a2 + 1 - (v10 + v87);
    if ((v88 + 1) < 8)
    {
      v89 = v88 + 1;
    }

    else
    {
      v89 = 8;
    }

    if (a2 + 1 >= v10 + v87)
    {
      v90 = v89;
    }

    else
    {
      v90 = 0;
    }

    if (v87 < v90 + v87)
    {
      v91 = 56 - *(a1 + 52);
      do
      {
        v92 = (0xCF1BBCDCBB000000 * *(v10 + v87)) >> v91;
        v93 = (v92 >> 3) & 0x1FFFFFE0;
        _X23 = v5 + 4 * v93;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X22 = v7 + 2 * v93;
        __asm { PRFM            #0, [X22] }

        *(v8 + 4 * (v87++ & 7)) = v92;
        --v90;
      }

      while (v90);
    }
  }

  if (v13 < v11)
  {
    v17 = *(a1 + 8) + 8;
    v18 = 56 - *(a1 + 52);
    v13 = v13;
    do
    {
      v19 = (0xCF1BBCDCBB000000 * *(v17 + v13)) >> v18;
      v20 = (v19 >> 3) & 0x1FFFFFE0;
      _X23 = v5 + 4 * v20;
      __asm
      {
        PRFM            #0, [X23]
        PRFM            #0, [X23,#0x40]
      }

      _X22 = v7 + 2 * v20;
      __asm { PRFM            #0, [X22] }

      v29 = *(v8 + 4 * (v13 & 7));
      *(v8 + 4 * (v13 & 7)) = v19;
      v30 = (v29 >> 3) & 0x1FFFFFE0;
      v31 = v5 + 4 * v30;
      v32 = (v7 + 2 * v30);
      v33 = (*v32 - 1) & 0x1F;
      *v32 = v33;
      v32[v33 + 16] = v29;
      *(v31 + 4 * v33) = v13++;
    }

    while (v13 < v11);
  }

  *(a1 + 44) = v11;
  v34 = (0xCF1BBCDCBB000000 * *(v10 + v11 + 8)) >> (56 - v9);
  v35 = (v34 >> 3) & 0x1FFFFFE0;
  _X4 = v4 + 4 * v35;
  __asm
  {
    PRFM            #0, [X4]
    PRFM            #0, [X4,#0x40]
  }

  _X16 = v6 + 2 * v35;
  __asm { PRFM            #0, [X16] }

  v41 = *(v8 + 4 * (v11 & 7));
  *(v8 + 4 * (v11 & 7)) = v34;
  v42 = (v41 >> 3) & 0x1FFFFFE0;
  v43 = v4 + 4 * v42;
  v44 = (v6 + 2 * v42);
  v46 = (v44 + 16);
  v45 = *v44;
  v101 = vld2q_s16(v46);
  memset(v99, 0, sizeof(v99));
  v47 = vdupq_n_s8(v41);
  *v101.val[0].i8 = vqmovn_s16(vceqq_s8(v47, v101.val[0]));
  *v47.i8 = vsri_n_s8(vqmovn_s16(vceqq_s8(v47, v101.val[1])), *v101.val[0].i8, 2uLL);
  v48 = vsri_n_s8(vuzp2_s8(*v47.i8, *v101.val[0].i8), vuzp1_s8(*v47.i8, *v101.val[0].i8), 4uLL).u32[0];
  if (v48)
  {
    v49 = 0;
    v50 = 1 << v16;
    v51 = __ROR4__(v48, v45);
    v52 = v50 - 1;
    while (1)
    {
      v53 = *(v43 + 4 * ((__clz(__rbit64(v51)) + v45) & 0x1F));
      if (v53 < v15)
      {
        break;
      }

      _X11 = v10 + v53;
      __asm { PRFM            #0, [X11] }

      v56 = v49 + 1;
      *(v99 + v49) = v53;
      v51 &= v51 - 1;
      if (v51)
      {
        _ZF = v52 == v49++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    v56 = v49;
  }

  else
  {
    v56 = 0;
  }

LABEL_22:
  v57 = (v45 - 1) & 0x1F;
  *v44 = v57;
  v44[v57 + 16] = v41;
  v58 = *(a1 + 44);
  *(a1 + 44) = v58 + 1;
  *(v43 + 4 * v57) = v58;
  if (v56)
  {
    v59 = 0;
    v60 = a3 - 7;
    v61 = v11 + 2;
    v62 = 3;
    while (1)
    {
      v63 = *(v99 + v59);
      v64 = (v10 + v63);
      if (*(v10 + v63 + v62) != *(a2 + v62))
      {
        goto LABEL_45;
      }

      if (v60 <= a2)
      {
        v67 = a2;
      }

      else
      {
        v65 = *v64;
        if (v65 != *a2)
        {
          result = __clz(__rbit64(*a2 ^ v65)) >> 3;
          goto LABEL_43;
        }

        v66 = 0;
        v64 = (v10 + 8 + v63);
        v67 = a2 + 4;
        while (v67 < v60)
        {
          v69 = *v64;
          v64 += 4;
          v68 = v69;
          v71 = *v67;
          v67 += 4;
          v70 = v71;
          v66 += 8;
          if (v68 != v71)
          {
            result = v66 + (__clz(__rbit64(v70 ^ v68)) >> 3);
            goto LABEL_43;
          }
        }
      }

      if (v67 < (a3 - 3) && *v64 == *v67)
      {
        v64 += 2;
        v67 += 2;
      }

      if (v67 < (a3 - 1) && *v64 == *v67)
      {
        ++v64;
        ++v67;
      }

      if (v67 < a3 && *v64 == *v67)
      {
        v67 = (v67 + 1);
      }

      result = v67 - a2;
LABEL_43:
      if (result > v62)
      {
        *a4 = v61 - v63;
        v62 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_48;
        }
      }

LABEL_45:
      ++v59;
      result = v62;
      if (v59 == v56)
      {
        goto LABEL_48;
      }
    }
  }

  result = 3;
LABEL_48:
  v73 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ZSTD_RowFindBestMatch_noDict_5_6(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, void *a4)
{
  v104 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 96);
  v5 = v4;
  v6 = *(a1 + 56);
  v7 = v6;
  v8 = a1 + 64;
  v9 = *(a1 + 52);
  v10 = *(a1 + 8);
  v11 = a2 - v10;
  v12 = 1 << *(a1 + 240);
  v13 = *(a1 + 44);
  _ZF = a2 - v10 - *(a1 + 28) > v12 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v15 = a2 - v10 - v12;
  }

  else
  {
    v15 = *(a1 + 28);
  }

  v16 = *(a1 + 252);
  if (v16 >= 6)
  {
    LOBYTE(v16) = 6;
  }

  if (v11 - v13 >= 0x181)
  {
    if (v13 <= 0xFFFFFF9F)
    {
      v76 = v13 + 96;
      do
      {
        v77 = (0xCF1BBCDCBB000000 * *(v10 + 8 + v13)) >> (56 - v9);
        v78 = (v77 >> 2) & 0x3FFFFFC0;
        _X21 = v4 + 4 * v78;
        __asm
        {
          PRFM            #0, [X21]
          PRFM            #0, [X21,#0x40]
        }

        _X20 = v6 + 2 * v78;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x40]
        }

        v85 = *(v8 + 4 * (v13 & 7));
        *(v8 + 4 * (v13 & 7)) = v77;
        v86 = (v85 >> 2) & 0x3FFFFFC0;
        v87 = v4 + 4 * v86;
        v88 = (v6 + 2 * v86);
        v89 = (*v88 - 1) & 0x3F;
        *v88 = v89;
        v88[v89 + 16] = v85;
        *(v87 + 4 * v89) = v13++;
      }

      while (v76 != v13);
      v5 = *(a1 + 96);
      v7 = *(a1 + 56);
    }

    v90 = v11 - 32;
    LODWORD(v13) = v11 - 32;
    v91 = a2 + 1 - (v10 + v90);
    if ((v91 + 1) < 8)
    {
      v92 = v91 + 1;
    }

    else
    {
      v92 = 8;
    }

    if (a2 + 1 >= v10 + v90)
    {
      v93 = v92;
    }

    else
    {
      v93 = 0;
    }

    if (v90 < v93 + v90)
    {
      v94 = 56 - *(a1 + 52);
      do
      {
        v95 = (0xCF1BBCDCBB000000 * *(v10 + v90)) >> v94;
        v96 = (v95 >> 2) & 0x3FFFFFC0;
        _X23 = v5 + 4 * v96;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X22 = v7 + 2 * v96;
        __asm
        {
          PRFM            #0, [X22]
          PRFM            #0, [X22,#0x40]
        }

        *(v8 + 4 * (v90++ & 7)) = v95;
        --v93;
      }

      while (v93);
    }
  }

  if (v13 < v11)
  {
    v17 = *(a1 + 8) + 8;
    v18 = 56 - *(a1 + 52);
    v13 = v13;
    do
    {
      v19 = (0xCF1BBCDCBB000000 * *(v17 + v13)) >> v18;
      v20 = (v19 >> 2) & 0x3FFFFFC0;
      _X23 = v5 + 4 * v20;
      __asm
      {
        PRFM            #0, [X23]
        PRFM            #0, [X23,#0x40]
      }

      _X22 = v7 + 2 * v20;
      __asm
      {
        PRFM            #0, [X22]
        PRFM            #0, [X22,#0x40]
      }

      v30 = *(v8 + 4 * (v13 & 7));
      *(v8 + 4 * (v13 & 7)) = v19;
      v31 = (v30 >> 2) & 0x3FFFFFC0;
      v32 = v5 + 4 * v31;
      v33 = (v7 + 2 * v31);
      v34 = (*v33 - 1) & 0x3F;
      *v33 = v34;
      v33[v34 + 16] = v30;
      *(v32 + 4 * v34) = v13++;
    }

    while (v13 < v11);
  }

  *(a1 + 44) = v11;
  v35 = (0xCF1BBCDCBB000000 * *(v10 + v11 + 8)) >> (56 - v9);
  v36 = (v35 >> 2) & 0x3FFFFFC0;
  _X4 = v4 + 4 * v36;
  __asm
  {
    PRFM            #0, [X4]
    PRFM            #0, [X4,#0x40]
  }

  _X16 = v6 + 2 * v36;
  __asm
  {
    PRFM            #0, [X16]
    PRFM            #0, [X16,#0x40]
  }

  v43 = *(v8 + 4 * (v11 & 7));
  *(v8 + 4 * (v11 & 7)) = v35;
  v44 = (v43 >> 2) & 0x3FFFFFC0;
  v45 = (v6 + 2 * v44);
  v46 = v45 + 16;
  v47 = *v45;
  v48 = v4 + 4 * v44;
  memset(v103, 0, sizeof(v103));
  v105 = vld4q_s8(v46);
  v49 = vdupq_n_s8(v43);
  v105.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v105.val[3], v49), vceqq_s8(v105.val[2], v49), 1uLL), vsriq_n_s8(vceqq_s8(v105.val[1], v49), vceqq_s8(v105.val[0], v49), 1uLL), 2uLL);
  v50 = vshrn_n_s16(vsriq_n_s8(v105.val[0], v105.val[0], 4uLL), 4uLL);
  if (v50)
  {
    v51 = 0;
    v52 = 1 << v16;
    v53 = __ROR8__(*&v50, v47);
    v54 = v52 - 1;
    while (1)
    {
      v55 = *(v48 + 4 * ((__clz(__rbit64(v53)) + v47) & 0x3F));
      if (v55 < v15)
      {
        break;
      }

      _X11 = v10 + v55;
      __asm { PRFM            #0, [X11] }

      v58 = v51 + 1;
      *(v103 + v51) = v55;
      v53 &= v53 - 1;
      if (v53)
      {
        _ZF = v54 == v51++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    v58 = v51;
  }

  else
  {
    v58 = 0;
  }

LABEL_22:
  v59 = (v47 - 1) & 0x3F;
  *v45 = v59;
  v45[v59 + 16] = v43;
  v60 = *(a1 + 44);
  *(a1 + 44) = v60 + 1;
  *(v48 + 4 * v59) = v60;
  if (v58)
  {
    v61 = 0;
    v62 = a3 - 7;
    v63 = v11 + 2;
    v64 = 3;
    while (1)
    {
      v65 = *(v103 + v61);
      v66 = (v10 + v65);
      if (*(v10 + v65 + v64) != *(a2 + v64))
      {
        goto LABEL_45;
      }

      if (v62 <= a2)
      {
        v69 = a2;
      }

      else
      {
        v67 = *v66;
        if (v67 != *a2)
        {
          result = __clz(__rbit64(*a2 ^ v67)) >> 3;
          goto LABEL_43;
        }

        v68 = 0;
        v66 = (v10 + 8 + v65);
        v69 = a2 + 4;
        while (v69 < v62)
        {
          v71 = *v66;
          v66 += 4;
          v70 = v71;
          v73 = *v69;
          v69 += 4;
          v72 = v73;
          v68 += 8;
          if (v70 != v73)
          {
            result = v68 + (__clz(__rbit64(v72 ^ v70)) >> 3);
            goto LABEL_43;
          }
        }
      }

      if (v69 < (a3 - 3) && *v66 == *v69)
      {
        v66 += 2;
        v69 += 2;
      }

      if (v69 < (a3 - 1) && *v66 == *v69)
      {
        ++v66;
        ++v69;
      }

      if (v69 < a3 && *v66 == *v69)
      {
        v69 = (v69 + 1);
      }

      result = v69 - a2;
LABEL_43:
      if (result > v64)
      {
        *a4 = v63 - v65;
        v64 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_48;
        }
      }

LABEL_45:
      ++v61;
      result = v64;
      if (v61 == v58)
      {
        goto LABEL_48;
      }
    }
  }

  result = 3;
LABEL_48:
  v75 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ZSTD_RowFindBestMatch_noDict_6_4(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, void *a4)
{
  v96 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 96);
  v5 = v4;
  v6 = *(a1 + 56);
  v7 = v6;
  v8 = a1 + 64;
  v9 = *(a1 + 52);
  v10 = *(a1 + 8);
  v11 = a2 - v10;
  v12 = 1 << *(a1 + 240);
  v13 = *(a1 + 44);
  _ZF = a2 - v10 - *(a1 + 28) > v12 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v15 = a2 - v10 - v12;
  }

  else
  {
    v15 = *(a1 + 28);
  }

  v16 = *(a1 + 252);
  if (v16 >= 4)
  {
    LOBYTE(v16) = 4;
  }

  if (v11 - v13 >= 0x181)
  {
    if (v13 <= 0xFFFFFF9F)
    {
      v72 = v13 + 96;
      do
      {
        v73 = (0xCF1BBCDCBF9B0000 * *(v10 + 8 + v13)) >> (56 - v9);
        v74 = (v73 >> 4) & 0xFFFFFF0;
        _X21 = v4 + 4 * v74;
        __asm { PRFM            #0, [X21] }

        _X20 = v6 + 2 * v74;
        __asm { PRFM            #0, [X20] }

        v79 = *(v8 + 4 * (v13 & 7));
        *(v8 + 4 * (v13 & 7)) = v73;
        v80 = (v79 >> 4) & 0xFFFFFF0;
        v81 = v4 + 4 * v80;
        v82 = (v6 + 2 * v80);
        v83 = (*v82 - 1) & 0xF;
        *v82 = v83;
        v82[v83 + 16] = v79;
        *(v81 + 4 * v83) = v13++;
      }

      while (v72 != v13);
      v5 = *(a1 + 96);
      v7 = *(a1 + 56);
    }

    v84 = v11 - 32;
    LODWORD(v13) = v11 - 32;
    v85 = a2 + 1 - (v10 + v84);
    if ((v85 + 1) < 8)
    {
      v86 = v85 + 1;
    }

    else
    {
      v86 = 8;
    }

    if (a2 + 1 >= v10 + v84)
    {
      v87 = v86;
    }

    else
    {
      v87 = 0;
    }

    if (v84 < v87 + v84)
    {
      v88 = 56 - *(a1 + 52);
      do
      {
        v89 = (0xCF1BBCDCBF9B0000 * *(v10 + v84)) >> v88;
        v90 = (v89 >> 4) & 0xFFFFFF0;
        _X23 = v5 + 4 * v90;
        __asm { PRFM            #0, [X23] }

        _X22 = v7 + 2 * v90;
        __asm { PRFM            #0, [X22] }

        *(v8 + 4 * (v84++ & 7)) = v89;
        --v87;
      }

      while (v87);
    }
  }

  if (v13 < v11)
  {
    v17 = *(a1 + 8) + 8;
    v18 = 56 - *(a1 + 52);
    v13 = v13;
    do
    {
      v19 = (0xCF1BBCDCBF9B0000 * *(v17 + v13)) >> v18;
      v20 = (v19 >> 4) & 0xFFFFFF0;
      _X23 = v5 + 4 * v20;
      __asm { PRFM            #0, [X23] }

      _X22 = v7 + 2 * v20;
      __asm { PRFM            #0, [X22] }

      v28 = *(v8 + 4 * (v13 & 7));
      *(v8 + 4 * (v13 & 7)) = v19;
      v29 = (v28 >> 4) & 0xFFFFFF0;
      v30 = v5 + 4 * v29;
      v31 = (v7 + 2 * v29);
      v32 = (*v31 - 1) & 0xF;
      *v31 = v32;
      v31[v32 + 16] = v28;
      *(v30 + 4 * v32) = v13++;
    }

    while (v13 < v11);
  }

  *(a1 + 44) = v11;
  v33 = (0xCF1BBCDCBF9B0000 * *(v10 + v11 + 8)) >> (56 - v9);
  v34 = (v33 >> 4) & 0xFFFFFF0;
  _X4 = v4 + 4 * v34;
  __asm { PRFM            #0, [X4] }

  _X16 = v6 + 2 * v34;
  __asm { PRFM            #0, [X16] }

  v39 = *(v8 + 4 * (v11 & 7));
  *(v8 + 4 * (v11 & 7)) = v33;
  v40 = (v39 >> 4) & 0xFFFFFF0;
  v41 = v4 + 4 * v40;
  v42 = (v6 + 2 * v40);
  v43 = v42->i8[0];
  memset(v95, 0, sizeof(v95));
  v44 = vshlq_n_s16(vceqq_s8(v42[1], vdupq_n_s8(v39)), 7uLL);
  v45 = vshrq_n_u32(vsriq_n_s16(v44, v44, 0xEuLL), 0xEuLL);
  v46 = vsraq_n_u64(v45, v45, 0x1CuLL);
  if (v46.u8[0] | (v46.u8[8] << 8))
  {
    v47 = 0;
    v48 = 1 << v16;
    v49 = ((v46.u8[0] | (v46.u8[8] << 8)) >> (v43 & 0xF)) | ((v46.u8[0] | (v46.u8[8] << 8)) << (-v43 & 0xF));
    v50 = v48 - 1;
    while (1)
    {
      v51 = *(v41 + 4 * ((__clz(__rbit64(v49)) + v43) & 0xF));
      if (v51 < v15)
      {
        break;
      }

      _X11 = v10 + v51;
      __asm { PRFM            #0, [X11] }

      v54 = v47 + 1;
      *(v95 + v47) = v51;
      v49 &= v49 - 1;
      if (v49)
      {
        _ZF = v50 == v47++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    v54 = v47;
  }

  else
  {
    v54 = 0;
  }

LABEL_22:
  v55 = (v43 - 1) & 0xF;
  v42->i8[0] = v55;
  v42[1].i8[v55] = v39;
  v56 = *(a1 + 44);
  *(a1 + 44) = v56 + 1;
  *(v41 + 4 * v55) = v56;
  if (v54)
  {
    v57 = 0;
    v58 = a3 - 7;
    v59 = v11 + 2;
    v60 = 3;
    while (1)
    {
      v61 = *(v95 + v57);
      v62 = (v10 + v61);
      if (*(v10 + v61 + v60) != *(a2 + v60))
      {
        goto LABEL_45;
      }

      if (v58 <= a2)
      {
        v65 = a2;
      }

      else
      {
        v63 = *v62;
        if (v63 != *a2)
        {
          result = __clz(__rbit64(*a2 ^ v63)) >> 3;
          goto LABEL_43;
        }

        v64 = 0;
        v62 = (v10 + 8 + v61);
        v65 = a2 + 4;
        while (v65 < v58)
        {
          v67 = *v62;
          v62 += 4;
          v66 = v67;
          v69 = *v65;
          v65 += 4;
          v68 = v69;
          v64 += 8;
          if (v66 != v69)
          {
            result = v64 + (__clz(__rbit64(v68 ^ v66)) >> 3);
            goto LABEL_43;
          }
        }
      }

      if (v65 < (a3 - 3) && *v62 == *v65)
      {
        v62 += 2;
        v65 += 2;
      }

      if (v65 < (a3 - 1) && *v62 == *v65)
      {
        ++v62;
        ++v65;
      }

      if (v65 < a3 && *v62 == *v65)
      {
        v65 = (v65 + 1);
      }

      result = v65 - a2;
LABEL_43:
      if (result > v60)
      {
        *a4 = v59 - v61;
        v60 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_48;
        }
      }

LABEL_45:
      ++v57;
      result = v60;
      if (v57 == v54)
      {
        goto LABEL_48;
      }
    }
  }

  result = 3;
LABEL_48:
  v71 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ZSTD_RowFindBestMatch_noDict_6_5(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, void *a4)
{
  v100 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 96);
  v5 = v4;
  v6 = *(a1 + 56);
  v7 = v6;
  v8 = a1 + 64;
  v9 = *(a1 + 52);
  v10 = *(a1 + 8);
  v11 = a2 - v10;
  v12 = 1 << *(a1 + 240);
  v13 = *(a1 + 44);
  _ZF = a2 - v10 - *(a1 + 28) > v12 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v15 = a2 - v10 - v12;
  }

  else
  {
    v15 = *(a1 + 28);
  }

  v16 = *(a1 + 252);
  if (v16 >= 5)
  {
    LOBYTE(v16) = 5;
  }

  if (v11 - v13 >= 0x181)
  {
    if (v13 <= 0xFFFFFF9F)
    {
      v74 = v13 + 96;
      do
      {
        v75 = (0xCF1BBCDCBF9B0000 * *(v10 + 8 + v13)) >> (56 - v9);
        v76 = (v75 >> 3) & 0x1FFFFFE0;
        _X21 = v4 + 4 * v76;
        __asm
        {
          PRFM            #0, [X21]
          PRFM            #0, [X21,#0x40]
        }

        _X20 = v6 + 2 * v76;
        __asm { PRFM            #0, [X20] }

        v82 = *(v8 + 4 * (v13 & 7));
        *(v8 + 4 * (v13 & 7)) = v75;
        v83 = (v82 >> 3) & 0x1FFFFFE0;
        v84 = v4 + 4 * v83;
        v85 = (v6 + 2 * v83);
        v86 = (*v85 - 1) & 0x1F;
        *v85 = v86;
        v85[v86 + 16] = v82;
        *(v84 + 4 * v86) = v13++;
      }

      while (v74 != v13);
      v5 = *(a1 + 96);
      v7 = *(a1 + 56);
    }

    v87 = v11 - 32;
    LODWORD(v13) = v11 - 32;
    v88 = a2 + 1 - (v10 + v87);
    if ((v88 + 1) < 8)
    {
      v89 = v88 + 1;
    }

    else
    {
      v89 = 8;
    }

    if (a2 + 1 >= v10 + v87)
    {
      v90 = v89;
    }

    else
    {
      v90 = 0;
    }

    if (v87 < v90 + v87)
    {
      v91 = 56 - *(a1 + 52);
      do
      {
        v92 = (0xCF1BBCDCBF9B0000 * *(v10 + v87)) >> v91;
        v93 = (v92 >> 3) & 0x1FFFFFE0;
        _X23 = v5 + 4 * v93;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X22 = v7 + 2 * v93;
        __asm { PRFM            #0, [X22] }

        *(v8 + 4 * (v87++ & 7)) = v92;
        --v90;
      }

      while (v90);
    }
  }

  if (v13 < v11)
  {
    v17 = *(a1 + 8) + 8;
    v18 = 56 - *(a1 + 52);
    v13 = v13;
    do
    {
      v19 = (0xCF1BBCDCBF9B0000 * *(v17 + v13)) >> v18;
      v20 = (v19 >> 3) & 0x1FFFFFE0;
      _X23 = v5 + 4 * v20;
      __asm
      {
        PRFM            #0, [X23]
        PRFM            #0, [X23,#0x40]
      }

      _X22 = v7 + 2 * v20;
      __asm { PRFM            #0, [X22] }

      v29 = *(v8 + 4 * (v13 & 7));
      *(v8 + 4 * (v13 & 7)) = v19;
      v30 = (v29 >> 3) & 0x1FFFFFE0;
      v31 = v5 + 4 * v30;
      v32 = (v7 + 2 * v30);
      v33 = (*v32 - 1) & 0x1F;
      *v32 = v33;
      v32[v33 + 16] = v29;
      *(v31 + 4 * v33) = v13++;
    }

    while (v13 < v11);
  }

  *(a1 + 44) = v11;
  v34 = (0xCF1BBCDCBF9B0000 * *(v10 + v11 + 8)) >> (56 - v9);
  v35 = (v34 >> 3) & 0x1FFFFFE0;
  _X4 = v4 + 4 * v35;
  __asm
  {
    PRFM            #0, [X4]
    PRFM            #0, [X4,#0x40]
  }

  _X16 = v6 + 2 * v35;
  __asm { PRFM            #0, [X16] }

  v41 = *(v8 + 4 * (v11 & 7));
  *(v8 + 4 * (v11 & 7)) = v34;
  v42 = (v41 >> 3) & 0x1FFFFFE0;
  v43 = v4 + 4 * v42;
  v44 = (v6 + 2 * v42);
  v46 = (v44 + 16);
  v45 = *v44;
  v101 = vld2q_s16(v46);
  memset(v99, 0, sizeof(v99));
  v47 = vdupq_n_s8(v41);
  *v101.val[0].i8 = vqmovn_s16(vceqq_s8(v47, v101.val[0]));
  *v47.i8 = vsri_n_s8(vqmovn_s16(vceqq_s8(v47, v101.val[1])), *v101.val[0].i8, 2uLL);
  v48 = vsri_n_s8(vuzp2_s8(*v47.i8, *v101.val[0].i8), vuzp1_s8(*v47.i8, *v101.val[0].i8), 4uLL).u32[0];
  if (v48)
  {
    v49 = 0;
    v50 = 1 << v16;
    v51 = __ROR4__(v48, v45);
    v52 = v50 - 1;
    while (1)
    {
      v53 = *(v43 + 4 * ((__clz(__rbit64(v51)) + v45) & 0x1F));
      if (v53 < v15)
      {
        break;
      }

      _X11 = v10 + v53;
      __asm { PRFM            #0, [X11] }

      v56 = v49 + 1;
      *(v99 + v49) = v53;
      v51 &= v51 - 1;
      if (v51)
      {
        _ZF = v52 == v49++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    v56 = v49;
  }

  else
  {
    v56 = 0;
  }

LABEL_22:
  v57 = (v45 - 1) & 0x1F;
  *v44 = v57;
  v44[v57 + 16] = v41;
  v58 = *(a1 + 44);
  *(a1 + 44) = v58 + 1;
  *(v43 + 4 * v57) = v58;
  if (v56)
  {
    v59 = 0;
    v60 = a3 - 7;
    v61 = v11 + 2;
    v62 = 3;
    while (1)
    {
      v63 = *(v99 + v59);
      v64 = (v10 + v63);
      if (*(v10 + v63 + v62) != *(a2 + v62))
      {
        goto LABEL_45;
      }

      if (v60 <= a2)
      {
        v67 = a2;
      }

      else
      {
        v65 = *v64;
        if (v65 != *a2)
        {
          result = __clz(__rbit64(*a2 ^ v65)) >> 3;
          goto LABEL_43;
        }

        v66 = 0;
        v64 = (v10 + 8 + v63);
        v67 = a2 + 4;
        while (v67 < v60)
        {
          v69 = *v64;
          v64 += 4;
          v68 = v69;
          v71 = *v67;
          v67 += 4;
          v70 = v71;
          v66 += 8;
          if (v68 != v71)
          {
            result = v66 + (__clz(__rbit64(v70 ^ v68)) >> 3);
            goto LABEL_43;
          }
        }
      }

      if (v67 < (a3 - 3) && *v64 == *v67)
      {
        v64 += 2;
        v67 += 2;
      }

      if (v67 < (a3 - 1) && *v64 == *v67)
      {
        ++v64;
        ++v67;
      }

      if (v67 < a3 && *v64 == *v67)
      {
        v67 = (v67 + 1);
      }

      result = v67 - a2;
LABEL_43:
      if (result > v62)
      {
        *a4 = v61 - v63;
        v62 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_48;
        }
      }

LABEL_45:
      ++v59;
      result = v62;
      if (v59 == v56)
      {
        goto LABEL_48;
      }
    }
  }

  result = 3;
LABEL_48:
  v73 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ZSTD_RowFindBestMatch_noDict_6_6(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, void *a4)
{
  v104 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 96);
  v5 = v4;
  v6 = *(a1 + 56);
  v7 = v6;
  v8 = a1 + 64;
  v9 = *(a1 + 52);
  v10 = *(a1 + 8);
  v11 = a2 - v10;
  v12 = 1 << *(a1 + 240);
  v13 = *(a1 + 44);
  _ZF = a2 - v10 - *(a1 + 28) > v12 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v15 = a2 - v10 - v12;
  }

  else
  {
    v15 = *(a1 + 28);
  }

  v16 = *(a1 + 252);
  if (v16 >= 6)
  {
    LOBYTE(v16) = 6;
  }

  if (v11 - v13 >= 0x181)
  {
    if (v13 <= 0xFFFFFF9F)
    {
      v76 = v13 + 96;
      do
      {
        v77 = (0xCF1BBCDCBF9B0000 * *(v10 + 8 + v13)) >> (56 - v9);
        v78 = (v77 >> 2) & 0x3FFFFFC0;
        _X21 = v4 + 4 * v78;
        __asm
        {
          PRFM            #0, [X21]
          PRFM            #0, [X21,#0x40]
        }

        _X20 = v6 + 2 * v78;
        __asm
        {
          PRFM            #0, [X20]
          PRFM            #0, [X20,#0x40]
        }

        v85 = *(v8 + 4 * (v13 & 7));
        *(v8 + 4 * (v13 & 7)) = v77;
        v86 = (v85 >> 2) & 0x3FFFFFC0;
        v87 = v4 + 4 * v86;
        v88 = (v6 + 2 * v86);
        v89 = (*v88 - 1) & 0x3F;
        *v88 = v89;
        v88[v89 + 16] = v85;
        *(v87 + 4 * v89) = v13++;
      }

      while (v76 != v13);
      v5 = *(a1 + 96);
      v7 = *(a1 + 56);
    }

    v90 = v11 - 32;
    LODWORD(v13) = v11 - 32;
    v91 = a2 + 1 - (v10 + v90);
    if ((v91 + 1) < 8)
    {
      v92 = v91 + 1;
    }

    else
    {
      v92 = 8;
    }

    if (a2 + 1 >= v10 + v90)
    {
      v93 = v92;
    }

    else
    {
      v93 = 0;
    }

    if (v90 < v93 + v90)
    {
      v94 = 56 - *(a1 + 52);
      do
      {
        v95 = (0xCF1BBCDCBF9B0000 * *(v10 + v90)) >> v94;
        v96 = (v95 >> 2) & 0x3FFFFFC0;
        _X23 = v5 + 4 * v96;
        __asm
        {
          PRFM            #0, [X23]
          PRFM            #0, [X23,#0x40]
        }

        _X22 = v7 + 2 * v96;
        __asm
        {
          PRFM            #0, [X22]
          PRFM            #0, [X22,#0x40]
        }

        *(v8 + 4 * (v90++ & 7)) = v95;
        --v93;
      }

      while (v93);
    }
  }

  if (v13 < v11)
  {
    v17 = *(a1 + 8) + 8;
    v18 = 56 - *(a1 + 52);
    v13 = v13;
    do
    {
      v19 = (0xCF1BBCDCBF9B0000 * *(v17 + v13)) >> v18;
      v20 = (v19 >> 2) & 0x3FFFFFC0;
      _X23 = v5 + 4 * v20;
      __asm
      {
        PRFM            #0, [X23]
        PRFM            #0, [X23,#0x40]
      }

      _X22 = v7 + 2 * v20;
      __asm
      {
        PRFM            #0, [X22]
        PRFM            #0, [X22,#0x40]
      }

      v30 = *(v8 + 4 * (v13 & 7));
      *(v8 + 4 * (v13 & 7)) = v19;
      v31 = (v30 >> 2) & 0x3FFFFFC0;
      v32 = v5 + 4 * v31;
      v33 = (v7 + 2 * v31);
      v34 = (*v33 - 1) & 0x3F;
      *v33 = v34;
      v33[v34 + 16] = v30;
      *(v32 + 4 * v34) = v13++;
    }

    while (v13 < v11);
  }

  *(a1 + 44) = v11;
  v35 = (0xCF1BBCDCBF9B0000 * *(v10 + v11 + 8)) >> (56 - v9);
  v36 = (v35 >> 2) & 0x3FFFFFC0;
  _X4 = v4 + 4 * v36;
  __asm
  {
    PRFM            #0, [X4]
    PRFM            #0, [X4,#0x40]
  }

  _X16 = v6 + 2 * v36;
  __asm
  {
    PRFM            #0, [X16]
    PRFM            #0, [X16,#0x40]
  }

  v43 = *(v8 + 4 * (v11 & 7));
  *(v8 + 4 * (v11 & 7)) = v35;
  v44 = (v43 >> 2) & 0x3FFFFFC0;
  v45 = (v6 + 2 * v44);
  v46 = v45 + 16;
  v47 = *v45;
  v48 = v4 + 4 * v44;
  memset(v103, 0, sizeof(v103));
  v105 = vld4q_s8(v46);
  v49 = vdupq_n_s8(v43);
  v105.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v105.val[3], v49), vceqq_s8(v105.val[2], v49), 1uLL), vsriq_n_s8(vceqq_s8(v105.val[1], v49), vceqq_s8(v105.val[0], v49), 1uLL), 2uLL);
  v50 = vshrn_n_s16(vsriq_n_s8(v105.val[0], v105.val[0], 4uLL), 4uLL);
  if (v50)
  {
    v51 = 0;
    v52 = 1 << v16;
    v53 = __ROR8__(*&v50, v47);
    v54 = v52 - 1;
    while (1)
    {
      v55 = *(v48 + 4 * ((__clz(__rbit64(v53)) + v47) & 0x3F));
      if (v55 < v15)
      {
        break;
      }

      _X11 = v10 + v55;
      __asm { PRFM            #0, [X11] }

      v58 = v51 + 1;
      *(v103 + v51) = v55;
      v53 &= v53 - 1;
      if (v53)
      {
        _ZF = v54 == v51++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    v58 = v51;
  }

  else
  {
    v58 = 0;
  }

LABEL_22:
  v59 = (v47 - 1) & 0x3F;
  *v45 = v59;
  v45[v59 + 16] = v43;
  v60 = *(a1 + 44);
  *(a1 + 44) = v60 + 1;
  *(v48 + 4 * v59) = v60;
  if (v58)
  {
    v61 = 0;
    v62 = a3 - 7;
    v63 = v11 + 2;
    v64 = 3;
    while (1)
    {
      v65 = *(v103 + v61);
      v66 = (v10 + v65);
      if (*(v10 + v65 + v64) != *(a2 + v64))
      {
        goto LABEL_45;
      }

      if (v62 <= a2)
      {
        v69 = a2;
      }

      else
      {
        v67 = *v66;
        if (v67 != *a2)
        {
          result = __clz(__rbit64(*a2 ^ v67)) >> 3;
          goto LABEL_43;
        }

        v68 = 0;
        v66 = (v10 + 8 + v65);
        v69 = a2 + 4;
        while (v69 < v62)
        {
          v71 = *v66;
          v66 += 4;
          v70 = v71;
          v73 = *v69;
          v69 += 4;
          v72 = v73;
          v68 += 8;
          if (v70 != v73)
          {
            result = v68 + (__clz(__rbit64(v72 ^ v70)) >> 3);
            goto LABEL_43;
          }
        }
      }

      if (v69 < (a3 - 3) && *v66 == *v69)
      {
        v66 += 2;
        v69 += 2;
      }

      if (v69 < (a3 - 1) && *v66 == *v69)
      {
        ++v66;
        ++v69;
      }

      if (v69 < a3 && *v66 == *v69)
      {
        v69 = (v69 + 1);
      }

      result = v69 - a2;
LABEL_43:
      if (result > v64)
      {
        *a4 = v63 - v65;
        v64 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_48;
        }
      }

LABEL_45:
      ++v61;
      result = v64;
      if (v61 == v58)
      {
        goto LABEL_48;
      }
    }
  }

  result = 3;
LABEL_48:
  v75 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ZSTD_RowFindBestMatch_extDict_4_4(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v105 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = a2 - v11;
  v14 = 1 << *(a1 + 240);
  v15 = *(a1 + 24);
  v16 = *(a1 + 44);
  _ZF = a2 - v11 - *(a1 + 28) > v14 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v18 = a2 - v11 - v14;
  }

  else
  {
    v18 = *(a1 + 28);
  }

  v19 = *(a1 + 252);
  if (v19 >= 4)
  {
    LOBYTE(v19) = 4;
  }

  if (v13 - v16 >= 0x181)
  {
    if (v16 <= 0xFFFFFF9F)
    {
      v77 = v16 + 96;
      do
      {
        v78 = (-1640531535 * *(v11 + 8 + v16)) >> (24 - v10);
        v79 = (v78 >> 4) & 0xFFFFFF0;
        _X6 = v5 + 4 * v79;
        __asm { PRFM            #0, [X6] }

        _X5 = v7 + 2 * v79;
        __asm { PRFM            #0, [X5] }

        v84 = *(v9 + 4 * (v16 & 7));
        *(v9 + 4 * (v16 & 7)) = v78;
        v85 = (v84 >> 4) & 0xFFFFFF0;
        v86 = v5 + 4 * v85;
        v87 = (v7 + 2 * v85);
        v88 = (*v87 - 1) & 0xF;
        *v87 = v88;
        v87[v88 + 16] = v84;
        *(v86 + 4 * v88) = v16++;
      }

      while (v77 != v16);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v89 = v13 - 32;
    LODWORD(v16) = v13 - 32;
    v90 = a2 + 1 - (v11 + v89);
    if ((v90 + 1) < 8)
    {
      v91 = v90 + 1;
    }

    else
    {
      v91 = 8;
    }

    if (a2 + 1 >= v11 + v89)
    {
      v92 = v91;
    }

    else
    {
      v92 = 0;
    }

    if (v89 < v92 + v89)
    {
      v93 = 24 - *(a1 + 52);
      do
      {
        v94 = (-1640531535 * *(v11 + v89)) >> v93;
        v95 = (v94 >> 4) & 0xFFFFFF0;
        _X19 = v6 + 4 * v95;
        __asm { PRFM            #0, [X19] }

        _X7 = v8 + 2 * v95;
        __asm { PRFM            #0, [X7] }

        *(v9 + 4 * (v89++ & 7)) = v94;
        --v92;
      }

      while (v92);
    }
  }

  if (v16 < v13)
  {
    v20 = *(a1 + 8) + 8;
    v21 = 24 - *(a1 + 52);
    v22 = v16;
    do
    {
      v23 = (-1640531535 * *(v20 + v22)) >> v21;
      v24 = (v23 >> 4) & 0xFFFFFF0;
      _X19 = v6 + 4 * v24;
      __asm { PRFM            #0, [X19] }

      _X7 = v8 + 2 * v24;
      __asm { PRFM            #0, [X7] }

      v32 = *(v9 + 4 * (v22 & 7));
      *(v9 + 4 * (v22 & 7)) = v23;
      v33 = (v32 >> 4) & 0xFFFFFF0;
      v34 = v6 + 4 * v33;
      v35 = (v8 + 2 * v33);
      v36 = (*v35 - 1) & 0xF;
      *v35 = v36;
      v35[v36 + 16] = v32;
      *(v34 + 4 * v36) = v22++;
    }

    while (v22 < v13);
  }

  *(a1 + 44) = v13;
  v37 = (-1640531535 * *(v11 + v13 + 8)) >> (24 - v10);
  v38 = (v37 >> 4) & 0xFFFFFF0;
  _X17 = v5 + 4 * v38;
  __asm { PRFM            #0, [X17] }

  _X15 = v7 + 2 * v38;
  __asm { PRFM            #0, [X15] }

  v43 = *(v9 + 4 * (v13 & 7));
  *(v9 + 4 * (v13 & 7)) = v37;
  v44 = (v43 >> 4) & 0xFFFFFF0;
  v45 = v5 + 4 * v44;
  v46 = (v7 + 2 * v44);
  v47 = v46->i8[0];
  memset(v104, 0, sizeof(v104));
  v48 = vshlq_n_s16(vceqq_s8(v46[1], vdupq_n_s8(v43)), 7uLL);
  v49 = vshrq_n_u32(vsriq_n_s16(v48, v48, 0xEuLL), 0xEuLL);
  v50 = vsraq_n_u64(v49, v49, 0x1CuLL);
  if (v50.u8[0] | (v50.u8[8] << 8))
  {
    v51 = 0;
    v52 = ((v50.u8[0] | (v50.u8[8] << 8)) >> (v47 & 0xF)) | ((v50.u8[0] | (v50.u8[8] << 8)) << (-v47 & 0xF));
    v53 = (1 << v19) - 1;
    while (1)
    {
      v54 = *(v45 + 4 * ((__clz(__rbit64(v52)) + v47) & 0xF));
      if (v54 < v18)
      {
        break;
      }

      if (v54 >= v15)
      {
        v55 = v11;
      }

      else
      {
        v55 = v12;
      }

      _X3 = v55 + v54;
      __asm { PRFM            #0, [X3] }

      v58 = v51 + 1;
      *(v104 + v51) = v54;
      v52 &= v52 - 1;
      if (v52)
      {
        _ZF = v53 == v51++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    v58 = v51;
  }

  else
  {
    v58 = 0;
  }

LABEL_25:
  v59 = (v47 - 1) & 0xF;
  v46->i8[0] = v59;
  v46[1].i8[v59] = v43;
  v60 = *(a1 + 44);
  *(a1 + 44) = v60 + 1;
  *(v45 + 4 * v59) = v60;
  if (v58)
  {
    v61 = 0;
    v62 = a3 - 7;
    v100 = a3 - 1;
    v101 = a3 - 3;
    v102 = v13 + 2;
    v63 = 3;
    while (1)
    {
      v64 = *(v104 + v61);
      if (v64 >= v15)
      {
        v68 = (v11 + v64);
        if (*(v11 + v64 + v63) != *(a2 + v63))
        {
          goto LABEL_51;
        }

        if (v62 <= a2)
        {
          v71 = a2;
        }

        else
        {
          v69 = *v68;
          if (v69 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v69)) >> 3;
            goto LABEL_49;
          }

          v70 = 0;
          v71 = a2 + 4;
          v68 = (v11 + 8 + v64);
          while (v71 < v62)
          {
            v73 = *v68;
            v68 += 4;
            v72 = v73;
            v75 = *v71;
            v71 += 4;
            v74 = v75;
            v70 += 8;
            if (v72 != v75)
            {
              result = v70 + (__clz(__rbit64(v74 ^ v72)) >> 3);
              goto LABEL_49;
            }
          }
        }

        if (v71 < v101 && *v68 == *v71)
        {
          v68 += 2;
          v71 += 2;
        }

        if (v71 < v100 && *v68 == *v71)
        {
          ++v68;
          ++v71;
        }

        if (v71 < a3 && *v68 == *v71)
        {
          v71 = (v71 + 1);
        }

        result = v71 - a2;
      }

      else
      {
        if (*(v12 + v64) != *a2)
        {
          goto LABEL_51;
        }

        v65 = a3;
        v66 = ZSTD_count_2segments(a2 + 2, (v12 + v64 + 4), a3, (v12 + v15), (v11 + v15));
        a3 = v65;
        result = v66 + 4;
      }

LABEL_49:
      if (result > v63)
      {
        *a4 = v102 - v64;
        v63 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_54;
        }
      }

LABEL_51:
      ++v61;
      result = v63;
      if (v61 == v58)
      {
        goto LABEL_54;
      }
    }
  }

  result = 3;
LABEL_54:
  v76 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ZSTD_RowFindBestMatch_extDict_4_5(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v109 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = a2 - v11;
  v14 = 1 << *(a1 + 240);
  v15 = *(a1 + 24);
  v16 = *(a1 + 44);
  _ZF = a2 - v11 - *(a1 + 28) > v14 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v18 = a2 - v11 - v14;
  }

  else
  {
    v18 = *(a1 + 28);
  }

  v19 = *(a1 + 252);
  if (v19 >= 5)
  {
    LOBYTE(v19) = 5;
  }

  if (v13 - v16 >= 0x181)
  {
    if (v16 <= 0xFFFFFF9F)
    {
      v79 = v16 + 96;
      do
      {
        v80 = (-1640531535 * *(v11 + 8 + v16)) >> (24 - v10);
        v81 = (v80 >> 3) & 0x1FFFFFE0;
        _X6 = v5 + 4 * v81;
        __asm
        {
          PRFM            #0, [X6]
          PRFM            #0, [X6,#0x40]
        }

        _X5 = v7 + 2 * v81;
        __asm { PRFM            #0, [X5] }

        v87 = *(v9 + 4 * (v16 & 7));
        *(v9 + 4 * (v16 & 7)) = v80;
        v88 = (v87 >> 3) & 0x1FFFFFE0;
        v89 = v5 + 4 * v88;
        v90 = (v7 + 2 * v88);
        v91 = (*v90 - 1) & 0x1F;
        *v90 = v91;
        v90[v91 + 16] = v87;
        *(v89 + 4 * v91) = v16++;
      }

      while (v79 != v16);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v92 = v13 - 32;
    LODWORD(v16) = v13 - 32;
    v93 = a2 + 1 - (v11 + v92);
    if ((v93 + 1) < 8)
    {
      v94 = v93 + 1;
    }

    else
    {
      v94 = 8;
    }

    if (a2 + 1 >= v11 + v92)
    {
      v95 = v94;
    }

    else
    {
      v95 = 0;
    }

    if (v92 < v95 + v92)
    {
      v96 = 24 - *(a1 + 52);
      do
      {
        v97 = (-1640531535 * *(v11 + v92)) >> v96;
        v98 = (v97 >> 3) & 0x1FFFFFE0;
        _X19 = v6 + 4 * v98;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v8 + 2 * v98;
        __asm { PRFM            #0, [X7] }

        *(v9 + 4 * (v92++ & 7)) = v97;
        --v95;
      }

      while (v95);
    }
  }

  if (v16 < v13)
  {
    v20 = *(a1 + 8) + 8;
    v21 = 24 - *(a1 + 52);
    v22 = v16;
    do
    {
      v23 = (-1640531535 * *(v20 + v22)) >> v21;
      v24 = (v23 >> 3) & 0x1FFFFFE0;
      _X19 = v6 + 4 * v24;
      __asm
      {
        PRFM            #0, [X19]
        PRFM            #0, [X19,#0x40]
      }

      _X7 = v8 + 2 * v24;
      __asm { PRFM            #0, [X7] }

      v33 = *(v9 + 4 * (v22 & 7));
      *(v9 + 4 * (v22 & 7)) = v23;
      v34 = (v33 >> 3) & 0x1FFFFFE0;
      v35 = v6 + 4 * v34;
      v36 = (v8 + 2 * v34);
      v37 = (*v36 - 1) & 0x1F;
      *v36 = v37;
      v36[v37 + 16] = v33;
      *(v35 + 4 * v37) = v22++;
    }

    while (v22 < v13);
  }

  *(a1 + 44) = v13;
  v38 = (-1640531535 * *(v11 + v13 + 8)) >> (24 - v10);
  v39 = (v38 >> 3) & 0x1FFFFFE0;
  _X17 = v5 + 4 * v39;
  __asm
  {
    PRFM            #0, [X17]
    PRFM            #0, [X17,#0x40]
  }

  _X15 = v7 + 2 * v39;
  __asm { PRFM            #0, [X15] }

  v45 = *(v9 + 4 * (v13 & 7));
  *(v9 + 4 * (v13 & 7)) = v38;
  v46 = (v45 >> 3) & 0x1FFFFFE0;
  v47 = v5 + 4 * v46;
  v48 = (v7 + 2 * v46);
  v50 = (v48 + 16);
  v49 = *v48;
  v110 = vld2q_s16(v50);
  memset(v108, 0, sizeof(v108));
  v51 = vdupq_n_s8(v45);
  *v110.val[0].i8 = vqmovn_s16(vceqq_s8(v51, v110.val[0]));
  *v51.i8 = vsri_n_s8(vqmovn_s16(vceqq_s8(v51, v110.val[1])), *v110.val[0].i8, 2uLL);
  v52 = vsri_n_s8(vuzp2_s8(*v51.i8, *v110.val[0].i8), vuzp1_s8(*v51.i8, *v110.val[0].i8), 4uLL).u32[0];
  if (v52)
  {
    v53 = 0;
    v54 = __ROR4__(v52, v49);
    v55 = (1 << v19) - 1;
    while (1)
    {
      v56 = *(v47 + 4 * ((__clz(__rbit64(v54)) + v49) & 0x1F));
      if (v56 < v18)
      {
        break;
      }

      if (v56 >= v15)
      {
        v57 = v11;
      }

      else
      {
        v57 = v12;
      }

      _X3 = v57 + v56;
      __asm { PRFM            #0, [X3] }

      v60 = v53 + 1;
      *(v108 + v53) = v56;
      v54 &= v54 - 1;
      if (v54)
      {
        _ZF = v55 == v53++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    v60 = v53;
  }

  else
  {
    v60 = 0;
  }

LABEL_25:
  v61 = (v49 - 1) & 0x1F;
  *v48 = v61;
  v48[v61 + 16] = v45;
  v62 = *(a1 + 44);
  *(a1 + 44) = v62 + 1;
  *(v47 + 4 * v61) = v62;
  if (v60)
  {
    v63 = 0;
    v64 = a3 - 7;
    v104 = a3 - 1;
    v105 = a3 - 3;
    v106 = v13 + 2;
    v65 = 3;
    while (1)
    {
      v66 = *(v108 + v63);
      if (v66 >= v15)
      {
        v70 = (v11 + v66);
        if (*(v11 + v66 + v65) != *(a2 + v65))
        {
          goto LABEL_51;
        }

        if (v64 <= a2)
        {
          v73 = a2;
        }

        else
        {
          v71 = *v70;
          if (v71 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v71)) >> 3;
            goto LABEL_49;
          }

          v72 = 0;
          v73 = a2 + 4;
          v70 = (v11 + 8 + v66);
          while (v73 < v64)
          {
            v75 = *v70;
            v70 += 4;
            v74 = v75;
            v77 = *v73;
            v73 += 4;
            v76 = v77;
            v72 += 8;
            if (v74 != v77)
            {
              result = v72 + (__clz(__rbit64(v76 ^ v74)) >> 3);
              goto LABEL_49;
            }
          }
        }

        if (v73 < v105 && *v70 == *v73)
        {
          v70 += 2;
          v73 += 2;
        }

        if (v73 < v104 && *v70 == *v73)
        {
          ++v70;
          ++v73;
        }

        if (v73 < a3 && *v70 == *v73)
        {
          v73 = (v73 + 1);
        }

        result = v73 - a2;
      }

      else
      {
        if (*(v12 + v66) != *a2)
        {
          goto LABEL_51;
        }

        v67 = a3;
        v68 = ZSTD_count_2segments(a2 + 2, (v12 + v66 + 4), a3, (v12 + v15), (v11 + v15));
        a3 = v67;
        result = v68 + 4;
      }

LABEL_49:
      if (result > v65)
      {
        *a4 = v106 - v66;
        v65 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_54;
        }
      }

LABEL_51:
      ++v63;
      result = v65;
      if (v63 == v60)
      {
        goto LABEL_54;
      }
    }
  }

  result = 3;
LABEL_54:
  v78 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ZSTD_RowFindBestMatch_extDict_4_6(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v113 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = a2 - v11;
  v14 = 1 << *(a1 + 240);
  v15 = *(a1 + 24);
  v16 = *(a1 + 44);
  _ZF = a2 - v11 - *(a1 + 28) > v14 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v18 = a2 - v11 - v14;
  }

  else
  {
    v18 = *(a1 + 28);
  }

  v19 = *(a1 + 252);
  if (v19 >= 6)
  {
    LOBYTE(v19) = 6;
  }

  if (v13 - v16 >= 0x181)
  {
    if (v16 <= 0xFFFFFF9F)
    {
      v81 = v16 + 96;
      do
      {
        v82 = (-1640531535 * *(v11 + 8 + v16)) >> (24 - v10);
        v83 = (v82 >> 2) & 0x3FFFFFC0;
        _X6 = v5 + 4 * v83;
        __asm
        {
          PRFM            #0, [X6]
          PRFM            #0, [X6,#0x40]
        }

        _X5 = v7 + 2 * v83;
        __asm
        {
          PRFM            #0, [X5]
          PRFM            #0, [X5,#0x40]
        }

        v90 = *(v9 + 4 * (v16 & 7));
        *(v9 + 4 * (v16 & 7)) = v82;
        v91 = (v90 >> 2) & 0x3FFFFFC0;
        v92 = v5 + 4 * v91;
        v93 = (v7 + 2 * v91);
        v94 = (*v93 - 1) & 0x3F;
        *v93 = v94;
        v93[v94 + 16] = v90;
        *(v92 + 4 * v94) = v16++;
      }

      while (v81 != v16);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v95 = v13 - 32;
    LODWORD(v16) = v13 - 32;
    v96 = a2 + 1 - (v11 + v95);
    if ((v96 + 1) < 8)
    {
      v97 = v96 + 1;
    }

    else
    {
      v97 = 8;
    }

    if (a2 + 1 >= v11 + v95)
    {
      v98 = v97;
    }

    else
    {
      v98 = 0;
    }

    if (v95 < v98 + v95)
    {
      v99 = 24 - *(a1 + 52);
      do
      {
        v100 = (-1640531535 * *(v11 + v95)) >> v99;
        v101 = (v100 >> 2) & 0x3FFFFFC0;
        _X19 = v6 + 4 * v101;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v8 + 2 * v101;
        __asm
        {
          PRFM            #0, [X7]
          PRFM            #0, [X7,#0x40]
        }

        *(v9 + 4 * (v95++ & 7)) = v100;
        --v98;
      }

      while (v98);
    }
  }

  if (v16 < v13)
  {
    v20 = *(a1 + 8) + 8;
    v21 = 24 - *(a1 + 52);
    v22 = v16;
    do
    {
      v23 = (-1640531535 * *(v20 + v22)) >> v21;
      v24 = (v23 >> 2) & 0x3FFFFFC0;
      _X19 = v6 + 4 * v24;
      __asm
      {
        PRFM            #0, [X19]
        PRFM            #0, [X19,#0x40]
      }

      _X7 = v8 + 2 * v24;
      __asm
      {
        PRFM            #0, [X7]
        PRFM            #0, [X7,#0x40]
      }

      v34 = *(v9 + 4 * (v22 & 7));
      *(v9 + 4 * (v22 & 7)) = v23;
      v35 = (v34 >> 2) & 0x3FFFFFC0;
      v36 = v6 + 4 * v35;
      v37 = (v8 + 2 * v35);
      v38 = (*v37 - 1) & 0x3F;
      *v37 = v38;
      v37[v38 + 16] = v34;
      *(v36 + 4 * v38) = v22++;
    }

    while (v22 < v13);
  }

  *(a1 + 44) = v13;
  v39 = (-1640531535 * *(v11 + v13 + 8)) >> (24 - v10);
  v40 = (v39 >> 2) & 0x3FFFFFC0;
  _X17 = v5 + 4 * v40;
  __asm
  {
    PRFM            #0, [X17]
    PRFM            #0, [X17,#0x40]
  }

  _X15 = v7 + 2 * v40;
  __asm
  {
    PRFM            #0, [X15]
    PRFM            #0, [X15,#0x40]
  }

  v47 = *(v9 + 4 * (v13 & 7));
  *(v9 + 4 * (v13 & 7)) = v39;
  v48 = (v47 >> 2) & 0x3FFFFFC0;
  v49 = (v7 + 2 * v48);
  v51 = v49 + 16;
  v50 = *v49;
  v52 = v5 + 4 * v48;
  memset(v112, 0, sizeof(v112));
  v114 = vld4q_s8(v51);
  v53 = vdupq_n_s8(v47);
  v114.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v114.val[3], v53), vceqq_s8(v114.val[2], v53), 1uLL), vsriq_n_s8(vceqq_s8(v114.val[1], v53), vceqq_s8(v114.val[0], v53), 1uLL), 2uLL);
  v54 = vshrn_n_s16(vsriq_n_s8(v114.val[0], v114.val[0], 4uLL), 4uLL);
  if (v54)
  {
    v55 = 0;
    v56 = __ROR8__(*&v54, v50);
    v57 = (1 << v19) - 1;
    while (1)
    {
      v58 = *(v52 + 4 * ((__clz(__rbit64(v56)) + v50) & 0x3F));
      if (v58 < v18)
      {
        break;
      }

      if (v58 >= v15)
      {
        v59 = v11;
      }

      else
      {
        v59 = v12;
      }

      _X3 = v59 + v58;
      __asm { PRFM            #0, [X3] }

      v62 = v55 + 1;
      *(v112 + v55) = v58;
      v56 &= v56 - 1;
      if (v56)
      {
        _ZF = v57 == v55++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    v62 = v55;
  }

  else
  {
    v62 = 0;
  }

LABEL_25:
  v63 = (v50 - 1) & 0x3F;
  *v49 = v63;
  v49[v63 + 16] = v47;
  v64 = *(a1 + 44);
  *(a1 + 44) = v64 + 1;
  *(v52 + 4 * v63) = v64;
  if (v62)
  {
    v65 = 0;
    v66 = a3 - 7;
    v108 = a3 - 1;
    v109 = a3 - 3;
    v110 = v13 + 2;
    v67 = 3;
    while (1)
    {
      v68 = *(v112 + v65);
      if (v68 >= v15)
      {
        v72 = (v11 + v68);
        if (*(v11 + v68 + v67) != *(a2 + v67))
        {
          goto LABEL_51;
        }

        if (v66 <= a2)
        {
          v75 = a2;
        }

        else
        {
          v73 = *v72;
          if (v73 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v73)) >> 3;
            goto LABEL_49;
          }

          v74 = 0;
          v75 = a2 + 4;
          v72 = (v11 + 8 + v68);
          while (v75 < v66)
          {
            v77 = *v72;
            v72 += 4;
            v76 = v77;
            v79 = *v75;
            v75 += 4;
            v78 = v79;
            v74 += 8;
            if (v76 != v79)
            {
              result = v74 + (__clz(__rbit64(v78 ^ v76)) >> 3);
              goto LABEL_49;
            }
          }
        }

        if (v75 < v109 && *v72 == *v75)
        {
          v72 += 2;
          v75 += 2;
        }

        if (v75 < v108 && *v72 == *v75)
        {
          ++v72;
          ++v75;
        }

        if (v75 < a3 && *v72 == *v75)
        {
          v75 = (v75 + 1);
        }

        result = v75 - a2;
      }

      else
      {
        if (*(v12 + v68) != *a2)
        {
          goto LABEL_51;
        }

        v69 = a3;
        v70 = ZSTD_count_2segments(a2 + 2, (v12 + v68 + 4), a3, (v12 + v15), (v11 + v15));
        a3 = v69;
        result = v70 + 4;
      }

LABEL_49:
      if (result > v67)
      {
        *a4 = v110 - v68;
        v67 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_54;
        }
      }

LABEL_51:
      ++v65;
      result = v67;
      if (v65 == v62)
      {
        goto LABEL_54;
      }
    }
  }

  result = 3;
LABEL_54:
  v80 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ZSTD_RowFindBestMatch_extDict_5_4(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v105 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = a2 - v11;
  v14 = 1 << *(a1 + 240);
  v15 = *(a1 + 24);
  v16 = *(a1 + 44);
  _ZF = a2 - v11 - *(a1 + 28) > v14 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v18 = a2 - v11 - v14;
  }

  else
  {
    v18 = *(a1 + 28);
  }

  v19 = *(a1 + 252);
  if (v19 >= 4)
  {
    LOBYTE(v19) = 4;
  }

  if (v13 - v16 >= 0x181)
  {
    if (v16 <= 0xFFFFFF9F)
    {
      v77 = v16 + 96;
      do
      {
        v78 = (0xCF1BBCDCBB000000 * *(v11 + 8 + v16)) >> (56 - v10);
        v79 = (v78 >> 4) & 0xFFFFFF0;
        _X6 = v5 + 4 * v79;
        __asm { PRFM            #0, [X6] }

        _X5 = v7 + 2 * v79;
        __asm { PRFM            #0, [X5] }

        v84 = *(v9 + 4 * (v16 & 7));
        *(v9 + 4 * (v16 & 7)) = v78;
        v85 = (v84 >> 4) & 0xFFFFFF0;
        v86 = v5 + 4 * v85;
        v87 = (v7 + 2 * v85);
        v88 = (*v87 - 1) & 0xF;
        *v87 = v88;
        v87[v88 + 16] = v84;
        *(v86 + 4 * v88) = v16++;
      }

      while (v77 != v16);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v89 = v13 - 32;
    LODWORD(v16) = v13 - 32;
    v90 = a2 + 1 - (v11 + v89);
    if ((v90 + 1) < 8)
    {
      v91 = v90 + 1;
    }

    else
    {
      v91 = 8;
    }

    if (a2 + 1 >= v11 + v89)
    {
      v92 = v91;
    }

    else
    {
      v92 = 0;
    }

    if (v89 < v92 + v89)
    {
      v93 = 56 - *(a1 + 52);
      do
      {
        v94 = (0xCF1BBCDCBB000000 * *(v11 + v89)) >> v93;
        v95 = (v94 >> 4) & 0xFFFFFF0;
        _X19 = v6 + 4 * v95;
        __asm { PRFM            #0, [X19] }

        _X7 = v8 + 2 * v95;
        __asm { PRFM            #0, [X7] }

        *(v9 + 4 * (v89++ & 7)) = v94;
        --v92;
      }

      while (v92);
    }
  }

  if (v16 < v13)
  {
    v20 = *(a1 + 8) + 8;
    v21 = 56 - *(a1 + 52);
    v22 = v16;
    do
    {
      v23 = (0xCF1BBCDCBB000000 * *(v20 + v22)) >> v21;
      v24 = (v23 >> 4) & 0xFFFFFF0;
      _X19 = v6 + 4 * v24;
      __asm { PRFM            #0, [X19] }

      _X7 = v8 + 2 * v24;
      __asm { PRFM            #0, [X7] }

      v32 = *(v9 + 4 * (v22 & 7));
      *(v9 + 4 * (v22 & 7)) = v23;
      v33 = (v32 >> 4) & 0xFFFFFF0;
      v34 = v6 + 4 * v33;
      v35 = (v8 + 2 * v33);
      v36 = (*v35 - 1) & 0xF;
      *v35 = v36;
      v35[v36 + 16] = v32;
      *(v34 + 4 * v36) = v22++;
    }

    while (v22 < v13);
  }

  *(a1 + 44) = v13;
  v37 = (0xCF1BBCDCBB000000 * *(v11 + v13 + 8)) >> (56 - v10);
  v38 = (v37 >> 4) & 0xFFFFFF0;
  _X17 = v5 + 4 * v38;
  __asm { PRFM            #0, [X17] }

  _X15 = v7 + 2 * v38;
  __asm { PRFM            #0, [X15] }

  v43 = *(v9 + 4 * (v13 & 7));
  *(v9 + 4 * (v13 & 7)) = v37;
  v44 = (v43 >> 4) & 0xFFFFFF0;
  v45 = v5 + 4 * v44;
  v46 = (v7 + 2 * v44);
  v47 = v46->i8[0];
  memset(v104, 0, sizeof(v104));
  v48 = vshlq_n_s16(vceqq_s8(v46[1], vdupq_n_s8(v43)), 7uLL);
  v49 = vshrq_n_u32(vsriq_n_s16(v48, v48, 0xEuLL), 0xEuLL);
  v50 = vsraq_n_u64(v49, v49, 0x1CuLL);
  if (v50.u8[0] | (v50.u8[8] << 8))
  {
    v51 = 0;
    v52 = ((v50.u8[0] | (v50.u8[8] << 8)) >> (v47 & 0xF)) | ((v50.u8[0] | (v50.u8[8] << 8)) << (-v47 & 0xF));
    v53 = (1 << v19) - 1;
    while (1)
    {
      v54 = *(v45 + 4 * ((__clz(__rbit64(v52)) + v47) & 0xF));
      if (v54 < v18)
      {
        break;
      }

      if (v54 >= v15)
      {
        v55 = v11;
      }

      else
      {
        v55 = v12;
      }

      _X3 = v55 + v54;
      __asm { PRFM            #0, [X3] }

      v58 = v51 + 1;
      *(v104 + v51) = v54;
      v52 &= v52 - 1;
      if (v52)
      {
        _ZF = v53 == v51++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    v58 = v51;
  }

  else
  {
    v58 = 0;
  }

LABEL_25:
  v59 = (v47 - 1) & 0xF;
  v46->i8[0] = v59;
  v46[1].i8[v59] = v43;
  v60 = *(a1 + 44);
  *(a1 + 44) = v60 + 1;
  *(v45 + 4 * v59) = v60;
  if (v58)
  {
    v61 = 0;
    v62 = a3 - 7;
    v100 = a3 - 1;
    v101 = a3 - 3;
    v102 = v13 + 2;
    v63 = 3;
    while (1)
    {
      v64 = *(v104 + v61);
      if (v64 >= v15)
      {
        v68 = (v11 + v64);
        if (*(v11 + v64 + v63) != *(a2 + v63))
        {
          goto LABEL_51;
        }

        if (v62 <= a2)
        {
          v71 = a2;
        }

        else
        {
          v69 = *v68;
          if (v69 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v69)) >> 3;
            goto LABEL_49;
          }

          v70 = 0;
          v71 = a2 + 4;
          v68 = (v11 + 8 + v64);
          while (v71 < v62)
          {
            v73 = *v68;
            v68 += 4;
            v72 = v73;
            v75 = *v71;
            v71 += 4;
            v74 = v75;
            v70 += 8;
            if (v72 != v75)
            {
              result = v70 + (__clz(__rbit64(v74 ^ v72)) >> 3);
              goto LABEL_49;
            }
          }
        }

        if (v71 < v101 && *v68 == *v71)
        {
          v68 += 2;
          v71 += 2;
        }

        if (v71 < v100 && *v68 == *v71)
        {
          ++v68;
          ++v71;
        }

        if (v71 < a3 && *v68 == *v71)
        {
          v71 = (v71 + 1);
        }

        result = v71 - a2;
      }

      else
      {
        if (*(v12 + v64) != *a2)
        {
          goto LABEL_51;
        }

        v65 = a3;
        v66 = ZSTD_count_2segments(a2 + 2, (v12 + v64 + 4), a3, (v12 + v15), (v11 + v15));
        a3 = v65;
        result = v66 + 4;
      }

LABEL_49:
      if (result > v63)
      {
        *a4 = v102 - v64;
        v63 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_54;
        }
      }

LABEL_51:
      ++v61;
      result = v63;
      if (v61 == v58)
      {
        goto LABEL_54;
      }
    }
  }

  result = 3;
LABEL_54:
  v76 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ZSTD_RowFindBestMatch_extDict_5_5(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v109 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = a2 - v11;
  v14 = 1 << *(a1 + 240);
  v15 = *(a1 + 24);
  v16 = *(a1 + 44);
  _ZF = a2 - v11 - *(a1 + 28) > v14 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v18 = a2 - v11 - v14;
  }

  else
  {
    v18 = *(a1 + 28);
  }

  v19 = *(a1 + 252);
  if (v19 >= 5)
  {
    LOBYTE(v19) = 5;
  }

  if (v13 - v16 >= 0x181)
  {
    if (v16 <= 0xFFFFFF9F)
    {
      v79 = v16 + 96;
      do
      {
        v80 = (0xCF1BBCDCBB000000 * *(v11 + 8 + v16)) >> (56 - v10);
        v81 = (v80 >> 3) & 0x1FFFFFE0;
        _X6 = v5 + 4 * v81;
        __asm
        {
          PRFM            #0, [X6]
          PRFM            #0, [X6,#0x40]
        }

        _X5 = v7 + 2 * v81;
        __asm { PRFM            #0, [X5] }

        v87 = *(v9 + 4 * (v16 & 7));
        *(v9 + 4 * (v16 & 7)) = v80;
        v88 = (v87 >> 3) & 0x1FFFFFE0;
        v89 = v5 + 4 * v88;
        v90 = (v7 + 2 * v88);
        v91 = (*v90 - 1) & 0x1F;
        *v90 = v91;
        v90[v91 + 16] = v87;
        *(v89 + 4 * v91) = v16++;
      }

      while (v79 != v16);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v92 = v13 - 32;
    LODWORD(v16) = v13 - 32;
    v93 = a2 + 1 - (v11 + v92);
    if ((v93 + 1) < 8)
    {
      v94 = v93 + 1;
    }

    else
    {
      v94 = 8;
    }

    if (a2 + 1 >= v11 + v92)
    {
      v95 = v94;
    }

    else
    {
      v95 = 0;
    }

    if (v92 < v95 + v92)
    {
      v96 = 56 - *(a1 + 52);
      do
      {
        v97 = (0xCF1BBCDCBB000000 * *(v11 + v92)) >> v96;
        v98 = (v97 >> 3) & 0x1FFFFFE0;
        _X19 = v6 + 4 * v98;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v8 + 2 * v98;
        __asm { PRFM            #0, [X7] }

        *(v9 + 4 * (v92++ & 7)) = v97;
        --v95;
      }

      while (v95);
    }
  }

  if (v16 < v13)
  {
    v20 = *(a1 + 8) + 8;
    v21 = 56 - *(a1 + 52);
    v22 = v16;
    do
    {
      v23 = (0xCF1BBCDCBB000000 * *(v20 + v22)) >> v21;
      v24 = (v23 >> 3) & 0x1FFFFFE0;
      _X19 = v6 + 4 * v24;
      __asm
      {
        PRFM            #0, [X19]
        PRFM            #0, [X19,#0x40]
      }

      _X7 = v8 + 2 * v24;
      __asm { PRFM            #0, [X7] }

      v33 = *(v9 + 4 * (v22 & 7));
      *(v9 + 4 * (v22 & 7)) = v23;
      v34 = (v33 >> 3) & 0x1FFFFFE0;
      v35 = v6 + 4 * v34;
      v36 = (v8 + 2 * v34);
      v37 = (*v36 - 1) & 0x1F;
      *v36 = v37;
      v36[v37 + 16] = v33;
      *(v35 + 4 * v37) = v22++;
    }

    while (v22 < v13);
  }

  *(a1 + 44) = v13;
  v38 = (0xCF1BBCDCBB000000 * *(v11 + v13 + 8)) >> (56 - v10);
  v39 = (v38 >> 3) & 0x1FFFFFE0;
  _X17 = v5 + 4 * v39;
  __asm
  {
    PRFM            #0, [X17]
    PRFM            #0, [X17,#0x40]
  }

  _X15 = v7 + 2 * v39;
  __asm { PRFM            #0, [X15] }

  v45 = *(v9 + 4 * (v13 & 7));
  *(v9 + 4 * (v13 & 7)) = v38;
  v46 = (v45 >> 3) & 0x1FFFFFE0;
  v47 = v5 + 4 * v46;
  v48 = (v7 + 2 * v46);
  v50 = (v48 + 16);
  v49 = *v48;
  v110 = vld2q_s16(v50);
  memset(v108, 0, sizeof(v108));
  v51 = vdupq_n_s8(v45);
  *v110.val[0].i8 = vqmovn_s16(vceqq_s8(v51, v110.val[0]));
  *v51.i8 = vsri_n_s8(vqmovn_s16(vceqq_s8(v51, v110.val[1])), *v110.val[0].i8, 2uLL);
  v52 = vsri_n_s8(vuzp2_s8(*v51.i8, *v110.val[0].i8), vuzp1_s8(*v51.i8, *v110.val[0].i8), 4uLL).u32[0];
  if (v52)
  {
    v53 = 0;
    v54 = __ROR4__(v52, v49);
    v55 = (1 << v19) - 1;
    while (1)
    {
      v56 = *(v47 + 4 * ((__clz(__rbit64(v54)) + v49) & 0x1F));
      if (v56 < v18)
      {
        break;
      }

      if (v56 >= v15)
      {
        v57 = v11;
      }

      else
      {
        v57 = v12;
      }

      _X3 = v57 + v56;
      __asm { PRFM            #0, [X3] }

      v60 = v53 + 1;
      *(v108 + v53) = v56;
      v54 &= v54 - 1;
      if (v54)
      {
        _ZF = v55 == v53++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    v60 = v53;
  }

  else
  {
    v60 = 0;
  }

LABEL_25:
  v61 = (v49 - 1) & 0x1F;
  *v48 = v61;
  v48[v61 + 16] = v45;
  v62 = *(a1 + 44);
  *(a1 + 44) = v62 + 1;
  *(v47 + 4 * v61) = v62;
  if (v60)
  {
    v63 = 0;
    v64 = a3 - 7;
    v104 = a3 - 1;
    v105 = a3 - 3;
    v106 = v13 + 2;
    v65 = 3;
    while (1)
    {
      v66 = *(v108 + v63);
      if (v66 >= v15)
      {
        v70 = (v11 + v66);
        if (*(v11 + v66 + v65) != *(a2 + v65))
        {
          goto LABEL_51;
        }

        if (v64 <= a2)
        {
          v73 = a2;
        }

        else
        {
          v71 = *v70;
          if (v71 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v71)) >> 3;
            goto LABEL_49;
          }

          v72 = 0;
          v73 = a2 + 4;
          v70 = (v11 + 8 + v66);
          while (v73 < v64)
          {
            v75 = *v70;
            v70 += 4;
            v74 = v75;
            v77 = *v73;
            v73 += 4;
            v76 = v77;
            v72 += 8;
            if (v74 != v77)
            {
              result = v72 + (__clz(__rbit64(v76 ^ v74)) >> 3);
              goto LABEL_49;
            }
          }
        }

        if (v73 < v105 && *v70 == *v73)
        {
          v70 += 2;
          v73 += 2;
        }

        if (v73 < v104 && *v70 == *v73)
        {
          ++v70;
          ++v73;
        }

        if (v73 < a3 && *v70 == *v73)
        {
          v73 = (v73 + 1);
        }

        result = v73 - a2;
      }

      else
      {
        if (*(v12 + v66) != *a2)
        {
          goto LABEL_51;
        }

        v67 = a3;
        v68 = ZSTD_count_2segments(a2 + 2, (v12 + v66 + 4), a3, (v12 + v15), (v11 + v15));
        a3 = v67;
        result = v68 + 4;
      }

LABEL_49:
      if (result > v65)
      {
        *a4 = v106 - v66;
        v65 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_54;
        }
      }

LABEL_51:
      ++v63;
      result = v65;
      if (v63 == v60)
      {
        goto LABEL_54;
      }
    }
  }

  result = 3;
LABEL_54:
  v78 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ZSTD_RowFindBestMatch_extDict_5_6(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v113 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = a2 - v11;
  v14 = 1 << *(a1 + 240);
  v15 = *(a1 + 24);
  v16 = *(a1 + 44);
  _ZF = a2 - v11 - *(a1 + 28) > v14 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v18 = a2 - v11 - v14;
  }

  else
  {
    v18 = *(a1 + 28);
  }

  v19 = *(a1 + 252);
  if (v19 >= 6)
  {
    LOBYTE(v19) = 6;
  }

  if (v13 - v16 >= 0x181)
  {
    if (v16 <= 0xFFFFFF9F)
    {
      v81 = v16 + 96;
      do
      {
        v82 = (0xCF1BBCDCBB000000 * *(v11 + 8 + v16)) >> (56 - v10);
        v83 = (v82 >> 2) & 0x3FFFFFC0;
        _X6 = v5 + 4 * v83;
        __asm
        {
          PRFM            #0, [X6]
          PRFM            #0, [X6,#0x40]
        }

        _X5 = v7 + 2 * v83;
        __asm
        {
          PRFM            #0, [X5]
          PRFM            #0, [X5,#0x40]
        }

        v90 = *(v9 + 4 * (v16 & 7));
        *(v9 + 4 * (v16 & 7)) = v82;
        v91 = (v90 >> 2) & 0x3FFFFFC0;
        v92 = v5 + 4 * v91;
        v93 = (v7 + 2 * v91);
        v94 = (*v93 - 1) & 0x3F;
        *v93 = v94;
        v93[v94 + 16] = v90;
        *(v92 + 4 * v94) = v16++;
      }

      while (v81 != v16);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v95 = v13 - 32;
    LODWORD(v16) = v13 - 32;
    v96 = a2 + 1 - (v11 + v95);
    if ((v96 + 1) < 8)
    {
      v97 = v96 + 1;
    }

    else
    {
      v97 = 8;
    }

    if (a2 + 1 >= v11 + v95)
    {
      v98 = v97;
    }

    else
    {
      v98 = 0;
    }

    if (v95 < v98 + v95)
    {
      v99 = 56 - *(a1 + 52);
      do
      {
        v100 = (0xCF1BBCDCBB000000 * *(v11 + v95)) >> v99;
        v101 = (v100 >> 2) & 0x3FFFFFC0;
        _X19 = v6 + 4 * v101;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v8 + 2 * v101;
        __asm
        {
          PRFM            #0, [X7]
          PRFM            #0, [X7,#0x40]
        }

        *(v9 + 4 * (v95++ & 7)) = v100;
        --v98;
      }

      while (v98);
    }
  }

  if (v16 < v13)
  {
    v20 = *(a1 + 8) + 8;
    v21 = 56 - *(a1 + 52);
    v22 = v16;
    do
    {
      v23 = (0xCF1BBCDCBB000000 * *(v20 + v22)) >> v21;
      v24 = (v23 >> 2) & 0x3FFFFFC0;
      _X19 = v6 + 4 * v24;
      __asm
      {
        PRFM            #0, [X19]
        PRFM            #0, [X19,#0x40]
      }

      _X7 = v8 + 2 * v24;
      __asm
      {
        PRFM            #0, [X7]
        PRFM            #0, [X7,#0x40]
      }

      v34 = *(v9 + 4 * (v22 & 7));
      *(v9 + 4 * (v22 & 7)) = v23;
      v35 = (v34 >> 2) & 0x3FFFFFC0;
      v36 = v6 + 4 * v35;
      v37 = (v8 + 2 * v35);
      v38 = (*v37 - 1) & 0x3F;
      *v37 = v38;
      v37[v38 + 16] = v34;
      *(v36 + 4 * v38) = v22++;
    }

    while (v22 < v13);
  }

  *(a1 + 44) = v13;
  v39 = (0xCF1BBCDCBB000000 * *(v11 + v13 + 8)) >> (56 - v10);
  v40 = (v39 >> 2) & 0x3FFFFFC0;
  _X17 = v5 + 4 * v40;
  __asm
  {
    PRFM            #0, [X17]
    PRFM            #0, [X17,#0x40]
  }

  _X15 = v7 + 2 * v40;
  __asm
  {
    PRFM            #0, [X15]
    PRFM            #0, [X15,#0x40]
  }

  v47 = *(v9 + 4 * (v13 & 7));
  *(v9 + 4 * (v13 & 7)) = v39;
  v48 = (v47 >> 2) & 0x3FFFFFC0;
  v49 = (v7 + 2 * v48);
  v51 = v49 + 16;
  v50 = *v49;
  v52 = v5 + 4 * v48;
  memset(v112, 0, sizeof(v112));
  v114 = vld4q_s8(v51);
  v53 = vdupq_n_s8(v47);
  v114.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v114.val[3], v53), vceqq_s8(v114.val[2], v53), 1uLL), vsriq_n_s8(vceqq_s8(v114.val[1], v53), vceqq_s8(v114.val[0], v53), 1uLL), 2uLL);
  v54 = vshrn_n_s16(vsriq_n_s8(v114.val[0], v114.val[0], 4uLL), 4uLL);
  if (v54)
  {
    v55 = 0;
    v56 = __ROR8__(*&v54, v50);
    v57 = (1 << v19) - 1;
    while (1)
    {
      v58 = *(v52 + 4 * ((__clz(__rbit64(v56)) + v50) & 0x3F));
      if (v58 < v18)
      {
        break;
      }

      if (v58 >= v15)
      {
        v59 = v11;
      }

      else
      {
        v59 = v12;
      }

      _X3 = v59 + v58;
      __asm { PRFM            #0, [X3] }

      v62 = v55 + 1;
      *(v112 + v55) = v58;
      v56 &= v56 - 1;
      if (v56)
      {
        _ZF = v57 == v55++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    v62 = v55;
  }

  else
  {
    v62 = 0;
  }

LABEL_25:
  v63 = (v50 - 1) & 0x3F;
  *v49 = v63;
  v49[v63 + 16] = v47;
  v64 = *(a1 + 44);
  *(a1 + 44) = v64 + 1;
  *(v52 + 4 * v63) = v64;
  if (v62)
  {
    v65 = 0;
    v66 = a3 - 7;
    v108 = a3 - 1;
    v109 = a3 - 3;
    v110 = v13 + 2;
    v67 = 3;
    while (1)
    {
      v68 = *(v112 + v65);
      if (v68 >= v15)
      {
        v72 = (v11 + v68);
        if (*(v11 + v68 + v67) != *(a2 + v67))
        {
          goto LABEL_51;
        }

        if (v66 <= a2)
        {
          v75 = a2;
        }

        else
        {
          v73 = *v72;
          if (v73 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v73)) >> 3;
            goto LABEL_49;
          }

          v74 = 0;
          v75 = a2 + 4;
          v72 = (v11 + 8 + v68);
          while (v75 < v66)
          {
            v77 = *v72;
            v72 += 4;
            v76 = v77;
            v79 = *v75;
            v75 += 4;
            v78 = v79;
            v74 += 8;
            if (v76 != v79)
            {
              result = v74 + (__clz(__rbit64(v78 ^ v76)) >> 3);
              goto LABEL_49;
            }
          }
        }

        if (v75 < v109 && *v72 == *v75)
        {
          v72 += 2;
          v75 += 2;
        }

        if (v75 < v108 && *v72 == *v75)
        {
          ++v72;
          ++v75;
        }

        if (v75 < a3 && *v72 == *v75)
        {
          v75 = (v75 + 1);
        }

        result = v75 - a2;
      }

      else
      {
        if (*(v12 + v68) != *a2)
        {
          goto LABEL_51;
        }

        v69 = a3;
        v70 = ZSTD_count_2segments(a2 + 2, (v12 + v68 + 4), a3, (v12 + v15), (v11 + v15));
        a3 = v69;
        result = v70 + 4;
      }

LABEL_49:
      if (result > v67)
      {
        *a4 = v110 - v68;
        v67 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_54;
        }
      }

LABEL_51:
      ++v65;
      result = v67;
      if (v65 == v62)
      {
        goto LABEL_54;
      }
    }
  }

  result = 3;
LABEL_54:
  v80 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ZSTD_RowFindBestMatch_extDict_6_4(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v105 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = a2 - v11;
  v14 = 1 << *(a1 + 240);
  v15 = *(a1 + 24);
  v16 = *(a1 + 44);
  _ZF = a2 - v11 - *(a1 + 28) > v14 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v18 = a2 - v11 - v14;
  }

  else
  {
    v18 = *(a1 + 28);
  }

  v19 = *(a1 + 252);
  if (v19 >= 4)
  {
    LOBYTE(v19) = 4;
  }

  if (v13 - v16 >= 0x181)
  {
    if (v16 <= 0xFFFFFF9F)
    {
      v77 = v16 + 96;
      do
      {
        v78 = (0xCF1BBCDCBF9B0000 * *(v11 + 8 + v16)) >> (56 - v10);
        v79 = (v78 >> 4) & 0xFFFFFF0;
        _X6 = v5 + 4 * v79;
        __asm { PRFM            #0, [X6] }

        _X5 = v7 + 2 * v79;
        __asm { PRFM            #0, [X5] }

        v84 = *(v9 + 4 * (v16 & 7));
        *(v9 + 4 * (v16 & 7)) = v78;
        v85 = (v84 >> 4) & 0xFFFFFF0;
        v86 = v5 + 4 * v85;
        v87 = (v7 + 2 * v85);
        v88 = (*v87 - 1) & 0xF;
        *v87 = v88;
        v87[v88 + 16] = v84;
        *(v86 + 4 * v88) = v16++;
      }

      while (v77 != v16);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v89 = v13 - 32;
    LODWORD(v16) = v13 - 32;
    v90 = a2 + 1 - (v11 + v89);
    if ((v90 + 1) < 8)
    {
      v91 = v90 + 1;
    }

    else
    {
      v91 = 8;
    }

    if (a2 + 1 >= v11 + v89)
    {
      v92 = v91;
    }

    else
    {
      v92 = 0;
    }

    if (v89 < v92 + v89)
    {
      v93 = 56 - *(a1 + 52);
      do
      {
        v94 = (0xCF1BBCDCBF9B0000 * *(v11 + v89)) >> v93;
        v95 = (v94 >> 4) & 0xFFFFFF0;
        _X19 = v6 + 4 * v95;
        __asm { PRFM            #0, [X19] }

        _X7 = v8 + 2 * v95;
        __asm { PRFM            #0, [X7] }

        *(v9 + 4 * (v89++ & 7)) = v94;
        --v92;
      }

      while (v92);
    }
  }

  if (v16 < v13)
  {
    v20 = *(a1 + 8) + 8;
    v21 = 56 - *(a1 + 52);
    v22 = v16;
    do
    {
      v23 = (0xCF1BBCDCBF9B0000 * *(v20 + v22)) >> v21;
      v24 = (v23 >> 4) & 0xFFFFFF0;
      _X19 = v6 + 4 * v24;
      __asm { PRFM            #0, [X19] }

      _X7 = v8 + 2 * v24;
      __asm { PRFM            #0, [X7] }

      v32 = *(v9 + 4 * (v22 & 7));
      *(v9 + 4 * (v22 & 7)) = v23;
      v33 = (v32 >> 4) & 0xFFFFFF0;
      v34 = v6 + 4 * v33;
      v35 = (v8 + 2 * v33);
      v36 = (*v35 - 1) & 0xF;
      *v35 = v36;
      v35[v36 + 16] = v32;
      *(v34 + 4 * v36) = v22++;
    }

    while (v22 < v13);
  }

  *(a1 + 44) = v13;
  v37 = (0xCF1BBCDCBF9B0000 * *(v11 + v13 + 8)) >> (56 - v10);
  v38 = (v37 >> 4) & 0xFFFFFF0;
  _X17 = v5 + 4 * v38;
  __asm { PRFM            #0, [X17] }

  _X15 = v7 + 2 * v38;
  __asm { PRFM            #0, [X15] }

  v43 = *(v9 + 4 * (v13 & 7));
  *(v9 + 4 * (v13 & 7)) = v37;
  v44 = (v43 >> 4) & 0xFFFFFF0;
  v45 = v5 + 4 * v44;
  v46 = (v7 + 2 * v44);
  v47 = v46->i8[0];
  memset(v104, 0, sizeof(v104));
  v48 = vshlq_n_s16(vceqq_s8(v46[1], vdupq_n_s8(v43)), 7uLL);
  v49 = vshrq_n_u32(vsriq_n_s16(v48, v48, 0xEuLL), 0xEuLL);
  v50 = vsraq_n_u64(v49, v49, 0x1CuLL);
  if (v50.u8[0] | (v50.u8[8] << 8))
  {
    v51 = 0;
    v52 = ((v50.u8[0] | (v50.u8[8] << 8)) >> (v47 & 0xF)) | ((v50.u8[0] | (v50.u8[8] << 8)) << (-v47 & 0xF));
    v53 = (1 << v19) - 1;
    while (1)
    {
      v54 = *(v45 + 4 * ((__clz(__rbit64(v52)) + v47) & 0xF));
      if (v54 < v18)
      {
        break;
      }

      if (v54 >= v15)
      {
        v55 = v11;
      }

      else
      {
        v55 = v12;
      }

      _X3 = v55 + v54;
      __asm { PRFM            #0, [X3] }

      v58 = v51 + 1;
      *(v104 + v51) = v54;
      v52 &= v52 - 1;
      if (v52)
      {
        _ZF = v53 == v51++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    v58 = v51;
  }

  else
  {
    v58 = 0;
  }

LABEL_25:
  v59 = (v47 - 1) & 0xF;
  v46->i8[0] = v59;
  v46[1].i8[v59] = v43;
  v60 = *(a1 + 44);
  *(a1 + 44) = v60 + 1;
  *(v45 + 4 * v59) = v60;
  if (v58)
  {
    v61 = 0;
    v62 = a3 - 7;
    v100 = a3 - 1;
    v101 = a3 - 3;
    v102 = v13 + 2;
    v63 = 3;
    while (1)
    {
      v64 = *(v104 + v61);
      if (v64 >= v15)
      {
        v68 = (v11 + v64);
        if (*(v11 + v64 + v63) != *(a2 + v63))
        {
          goto LABEL_51;
        }

        if (v62 <= a2)
        {
          v71 = a2;
        }

        else
        {
          v69 = *v68;
          if (v69 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v69)) >> 3;
            goto LABEL_49;
          }

          v70 = 0;
          v71 = a2 + 4;
          v68 = (v11 + 8 + v64);
          while (v71 < v62)
          {
            v73 = *v68;
            v68 += 4;
            v72 = v73;
            v75 = *v71;
            v71 += 4;
            v74 = v75;
            v70 += 8;
            if (v72 != v75)
            {
              result = v70 + (__clz(__rbit64(v74 ^ v72)) >> 3);
              goto LABEL_49;
            }
          }
        }

        if (v71 < v101 && *v68 == *v71)
        {
          v68 += 2;
          v71 += 2;
        }

        if (v71 < v100 && *v68 == *v71)
        {
          ++v68;
          ++v71;
        }

        if (v71 < a3 && *v68 == *v71)
        {
          v71 = (v71 + 1);
        }

        result = v71 - a2;
      }

      else
      {
        if (*(v12 + v64) != *a2)
        {
          goto LABEL_51;
        }

        v65 = a3;
        v66 = ZSTD_count_2segments(a2 + 2, (v12 + v64 + 4), a3, (v12 + v15), (v11 + v15));
        a3 = v65;
        result = v66 + 4;
      }

LABEL_49:
      if (result > v63)
      {
        *a4 = v102 - v64;
        v63 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_54;
        }
      }

LABEL_51:
      ++v61;
      result = v63;
      if (v61 == v58)
      {
        goto LABEL_54;
      }
    }
  }

  result = 3;
LABEL_54:
  v76 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ZSTD_RowFindBestMatch_extDict_6_5(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v109 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = a2 - v11;
  v14 = 1 << *(a1 + 240);
  v15 = *(a1 + 24);
  v16 = *(a1 + 44);
  _ZF = a2 - v11 - *(a1 + 28) > v14 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v18 = a2 - v11 - v14;
  }

  else
  {
    v18 = *(a1 + 28);
  }

  v19 = *(a1 + 252);
  if (v19 >= 5)
  {
    LOBYTE(v19) = 5;
  }

  if (v13 - v16 >= 0x181)
  {
    if (v16 <= 0xFFFFFF9F)
    {
      v79 = v16 + 96;
      do
      {
        v80 = (0xCF1BBCDCBF9B0000 * *(v11 + 8 + v16)) >> (56 - v10);
        v81 = (v80 >> 3) & 0x1FFFFFE0;
        _X6 = v5 + 4 * v81;
        __asm
        {
          PRFM            #0, [X6]
          PRFM            #0, [X6,#0x40]
        }

        _X5 = v7 + 2 * v81;
        __asm { PRFM            #0, [X5] }

        v87 = *(v9 + 4 * (v16 & 7));
        *(v9 + 4 * (v16 & 7)) = v80;
        v88 = (v87 >> 3) & 0x1FFFFFE0;
        v89 = v5 + 4 * v88;
        v90 = (v7 + 2 * v88);
        v91 = (*v90 - 1) & 0x1F;
        *v90 = v91;
        v90[v91 + 16] = v87;
        *(v89 + 4 * v91) = v16++;
      }

      while (v79 != v16);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v92 = v13 - 32;
    LODWORD(v16) = v13 - 32;
    v93 = a2 + 1 - (v11 + v92);
    if ((v93 + 1) < 8)
    {
      v94 = v93 + 1;
    }

    else
    {
      v94 = 8;
    }

    if (a2 + 1 >= v11 + v92)
    {
      v95 = v94;
    }

    else
    {
      v95 = 0;
    }

    if (v92 < v95 + v92)
    {
      v96 = 56 - *(a1 + 52);
      do
      {
        v97 = (0xCF1BBCDCBF9B0000 * *(v11 + v92)) >> v96;
        v98 = (v97 >> 3) & 0x1FFFFFE0;
        _X19 = v6 + 4 * v98;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v8 + 2 * v98;
        __asm { PRFM            #0, [X7] }

        *(v9 + 4 * (v92++ & 7)) = v97;
        --v95;
      }

      while (v95);
    }
  }

  if (v16 < v13)
  {
    v20 = *(a1 + 8) + 8;
    v21 = 56 - *(a1 + 52);
    v22 = v16;
    do
    {
      v23 = (0xCF1BBCDCBF9B0000 * *(v20 + v22)) >> v21;
      v24 = (v23 >> 3) & 0x1FFFFFE0;
      _X19 = v6 + 4 * v24;
      __asm
      {
        PRFM            #0, [X19]
        PRFM            #0, [X19,#0x40]
      }

      _X7 = v8 + 2 * v24;
      __asm { PRFM            #0, [X7] }

      v33 = *(v9 + 4 * (v22 & 7));
      *(v9 + 4 * (v22 & 7)) = v23;
      v34 = (v33 >> 3) & 0x1FFFFFE0;
      v35 = v6 + 4 * v34;
      v36 = (v8 + 2 * v34);
      v37 = (*v36 - 1) & 0x1F;
      *v36 = v37;
      v36[v37 + 16] = v33;
      *(v35 + 4 * v37) = v22++;
    }

    while (v22 < v13);
  }

  *(a1 + 44) = v13;
  v38 = (0xCF1BBCDCBF9B0000 * *(v11 + v13 + 8)) >> (56 - v10);
  v39 = (v38 >> 3) & 0x1FFFFFE0;
  _X17 = v5 + 4 * v39;
  __asm
  {
    PRFM            #0, [X17]
    PRFM            #0, [X17,#0x40]
  }

  _X15 = v7 + 2 * v39;
  __asm { PRFM            #0, [X15] }

  v45 = *(v9 + 4 * (v13 & 7));
  *(v9 + 4 * (v13 & 7)) = v38;
  v46 = (v45 >> 3) & 0x1FFFFFE0;
  v47 = v5 + 4 * v46;
  v48 = (v7 + 2 * v46);
  v50 = (v48 + 16);
  v49 = *v48;
  v110 = vld2q_s16(v50);
  memset(v108, 0, sizeof(v108));
  v51 = vdupq_n_s8(v45);
  *v110.val[0].i8 = vqmovn_s16(vceqq_s8(v51, v110.val[0]));
  *v51.i8 = vsri_n_s8(vqmovn_s16(vceqq_s8(v51, v110.val[1])), *v110.val[0].i8, 2uLL);
  v52 = vsri_n_s8(vuzp2_s8(*v51.i8, *v110.val[0].i8), vuzp1_s8(*v51.i8, *v110.val[0].i8), 4uLL).u32[0];
  if (v52)
  {
    v53 = 0;
    v54 = __ROR4__(v52, v49);
    v55 = (1 << v19) - 1;
    while (1)
    {
      v56 = *(v47 + 4 * ((__clz(__rbit64(v54)) + v49) & 0x1F));
      if (v56 < v18)
      {
        break;
      }

      if (v56 >= v15)
      {
        v57 = v11;
      }

      else
      {
        v57 = v12;
      }

      _X3 = v57 + v56;
      __asm { PRFM            #0, [X3] }

      v60 = v53 + 1;
      *(v108 + v53) = v56;
      v54 &= v54 - 1;
      if (v54)
      {
        _ZF = v55 == v53++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    v60 = v53;
  }

  else
  {
    v60 = 0;
  }

LABEL_25:
  v61 = (v49 - 1) & 0x1F;
  *v48 = v61;
  v48[v61 + 16] = v45;
  v62 = *(a1 + 44);
  *(a1 + 44) = v62 + 1;
  *(v47 + 4 * v61) = v62;
  if (v60)
  {
    v63 = 0;
    v64 = a3 - 7;
    v104 = a3 - 1;
    v105 = a3 - 3;
    v106 = v13 + 2;
    v65 = 3;
    while (1)
    {
      v66 = *(v108 + v63);
      if (v66 >= v15)
      {
        v70 = (v11 + v66);
        if (*(v11 + v66 + v65) != *(a2 + v65))
        {
          goto LABEL_51;
        }

        if (v64 <= a2)
        {
          v73 = a2;
        }

        else
        {
          v71 = *v70;
          if (v71 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v71)) >> 3;
            goto LABEL_49;
          }

          v72 = 0;
          v73 = a2 + 4;
          v70 = (v11 + 8 + v66);
          while (v73 < v64)
          {
            v75 = *v70;
            v70 += 4;
            v74 = v75;
            v77 = *v73;
            v73 += 4;
            v76 = v77;
            v72 += 8;
            if (v74 != v77)
            {
              result = v72 + (__clz(__rbit64(v76 ^ v74)) >> 3);
              goto LABEL_49;
            }
          }
        }

        if (v73 < v105 && *v70 == *v73)
        {
          v70 += 2;
          v73 += 2;
        }

        if (v73 < v104 && *v70 == *v73)
        {
          ++v70;
          ++v73;
        }

        if (v73 < a3 && *v70 == *v73)
        {
          v73 = (v73 + 1);
        }

        result = v73 - a2;
      }

      else
      {
        if (*(v12 + v66) != *a2)
        {
          goto LABEL_51;
        }

        v67 = a3;
        v68 = ZSTD_count_2segments(a2 + 2, (v12 + v66 + 4), a3, (v12 + v15), (v11 + v15));
        a3 = v67;
        result = v68 + 4;
      }

LABEL_49:
      if (result > v65)
      {
        *a4 = v106 - v66;
        v65 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_54;
        }
      }

LABEL_51:
      ++v63;
      result = v65;
      if (v63 == v60)
      {
        goto LABEL_54;
      }
    }
  }

  result = 3;
LABEL_54:
  v78 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ZSTD_RowFindBestMatch_extDict_6_6(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v113 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = a2 - v11;
  v14 = 1 << *(a1 + 240);
  v15 = *(a1 + 24);
  v16 = *(a1 + 44);
  _ZF = a2 - v11 - *(a1 + 28) > v14 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v18 = a2 - v11 - v14;
  }

  else
  {
    v18 = *(a1 + 28);
  }

  v19 = *(a1 + 252);
  if (v19 >= 6)
  {
    LOBYTE(v19) = 6;
  }

  if (v13 - v16 >= 0x181)
  {
    if (v16 <= 0xFFFFFF9F)
    {
      v81 = v16 + 96;
      do
      {
        v82 = (0xCF1BBCDCBF9B0000 * *(v11 + 8 + v16)) >> (56 - v10);
        v83 = (v82 >> 2) & 0x3FFFFFC0;
        _X6 = v5 + 4 * v83;
        __asm
        {
          PRFM            #0, [X6]
          PRFM            #0, [X6,#0x40]
        }

        _X5 = v7 + 2 * v83;
        __asm
        {
          PRFM            #0, [X5]
          PRFM            #0, [X5,#0x40]
        }

        v90 = *(v9 + 4 * (v16 & 7));
        *(v9 + 4 * (v16 & 7)) = v82;
        v91 = (v90 >> 2) & 0x3FFFFFC0;
        v92 = v5 + 4 * v91;
        v93 = (v7 + 2 * v91);
        v94 = (*v93 - 1) & 0x3F;
        *v93 = v94;
        v93[v94 + 16] = v90;
        *(v92 + 4 * v94) = v16++;
      }

      while (v81 != v16);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v95 = v13 - 32;
    LODWORD(v16) = v13 - 32;
    v96 = a2 + 1 - (v11 + v95);
    if ((v96 + 1) < 8)
    {
      v97 = v96 + 1;
    }

    else
    {
      v97 = 8;
    }

    if (a2 + 1 >= v11 + v95)
    {
      v98 = v97;
    }

    else
    {
      v98 = 0;
    }

    if (v95 < v98 + v95)
    {
      v99 = 56 - *(a1 + 52);
      do
      {
        v100 = (0xCF1BBCDCBF9B0000 * *(v11 + v95)) >> v99;
        v101 = (v100 >> 2) & 0x3FFFFFC0;
        _X19 = v6 + 4 * v101;
        __asm
        {
          PRFM            #0, [X19]
          PRFM            #0, [X19,#0x40]
        }

        _X7 = v8 + 2 * v101;
        __asm
        {
          PRFM            #0, [X7]
          PRFM            #0, [X7,#0x40]
        }

        *(v9 + 4 * (v95++ & 7)) = v100;
        --v98;
      }

      while (v98);
    }
  }

  if (v16 < v13)
  {
    v20 = *(a1 + 8) + 8;
    v21 = 56 - *(a1 + 52);
    v22 = v16;
    do
    {
      v23 = (0xCF1BBCDCBF9B0000 * *(v20 + v22)) >> v21;
      v24 = (v23 >> 2) & 0x3FFFFFC0;
      _X19 = v6 + 4 * v24;
      __asm
      {
        PRFM            #0, [X19]
        PRFM            #0, [X19,#0x40]
      }

      _X7 = v8 + 2 * v24;
      __asm
      {
        PRFM            #0, [X7]
        PRFM            #0, [X7,#0x40]
      }

      v34 = *(v9 + 4 * (v22 & 7));
      *(v9 + 4 * (v22 & 7)) = v23;
      v35 = (v34 >> 2) & 0x3FFFFFC0;
      v36 = v6 + 4 * v35;
      v37 = (v8 + 2 * v35);
      v38 = (*v37 - 1) & 0x3F;
      *v37 = v38;
      v37[v38 + 16] = v34;
      *(v36 + 4 * v38) = v22++;
    }

    while (v22 < v13);
  }

  *(a1 + 44) = v13;
  v39 = (0xCF1BBCDCBF9B0000 * *(v11 + v13 + 8)) >> (56 - v10);
  v40 = (v39 >> 2) & 0x3FFFFFC0;
  _X17 = v5 + 4 * v40;
  __asm
  {
    PRFM            #0, [X17]
    PRFM            #0, [X17,#0x40]
  }

  _X15 = v7 + 2 * v40;
  __asm
  {
    PRFM            #0, [X15]
    PRFM            #0, [X15,#0x40]
  }

  v47 = *(v9 + 4 * (v13 & 7));
  *(v9 + 4 * (v13 & 7)) = v39;
  v48 = (v47 >> 2) & 0x3FFFFFC0;
  v49 = (v7 + 2 * v48);
  v51 = v49 + 16;
  v50 = *v49;
  v52 = v5 + 4 * v48;
  memset(v112, 0, sizeof(v112));
  v114 = vld4q_s8(v51);
  v53 = vdupq_n_s8(v47);
  v114.val[0] = vsriq_n_s8(vsriq_n_s8(vceqq_s8(v114.val[3], v53), vceqq_s8(v114.val[2], v53), 1uLL), vsriq_n_s8(vceqq_s8(v114.val[1], v53), vceqq_s8(v114.val[0], v53), 1uLL), 2uLL);
  v54 = vshrn_n_s16(vsriq_n_s8(v114.val[0], v114.val[0], 4uLL), 4uLL);
  if (v54)
  {
    v55 = 0;
    v56 = __ROR8__(*&v54, v50);
    v57 = (1 << v19) - 1;
    while (1)
    {
      v58 = *(v52 + 4 * ((__clz(__rbit64(v56)) + v50) & 0x3F));
      if (v58 < v18)
      {
        break;
      }

      if (v58 >= v15)
      {
        v59 = v11;
      }

      else
      {
        v59 = v12;
      }

      _X3 = v59 + v58;
      __asm { PRFM            #0, [X3] }

      v62 = v55 + 1;
      *(v112 + v55) = v58;
      v56 &= v56 - 1;
      if (v56)
      {
        _ZF = v57 == v55++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_25;
    }

    v62 = v55;
  }

  else
  {
    v62 = 0;
  }

LABEL_25:
  v63 = (v50 - 1) & 0x3F;
  *v49 = v63;
  v49[v63 + 16] = v47;
  v64 = *(a1 + 44);
  *(a1 + 44) = v64 + 1;
  *(v52 + 4 * v63) = v64;
  if (v62)
  {
    v65 = 0;
    v66 = a3 - 7;
    v108 = a3 - 1;
    v109 = a3 - 3;
    v110 = v13 + 2;
    v67 = 3;
    while (1)
    {
      v68 = *(v112 + v65);
      if (v68 >= v15)
      {
        v72 = (v11 + v68);
        if (*(v11 + v68 + v67) != *(a2 + v67))
        {
          goto LABEL_51;
        }

        if (v66 <= a2)
        {
          v75 = a2;
        }

        else
        {
          v73 = *v72;
          if (v73 != *a2)
          {
            result = __clz(__rbit64(*a2 ^ v73)) >> 3;
            goto LABEL_49;
          }

          v74 = 0;
          v75 = a2 + 4;
          v72 = (v11 + 8 + v68);
          while (v75 < v66)
          {
            v77 = *v72;
            v72 += 4;
            v76 = v77;
            v79 = *v75;
            v75 += 4;
            v78 = v79;
            v74 += 8;
            if (v76 != v79)
            {
              result = v74 + (__clz(__rbit64(v78 ^ v76)) >> 3);
              goto LABEL_49;
            }
          }
        }

        if (v75 < v109 && *v72 == *v75)
        {
          v72 += 2;
          v75 += 2;
        }

        if (v75 < v108 && *v72 == *v75)
        {
          ++v72;
          ++v75;
        }

        if (v75 < a3 && *v72 == *v75)
        {
          v75 = (v75 + 1);
        }

        result = v75 - a2;
      }

      else
      {
        if (*(v12 + v68) != *a2)
        {
          goto LABEL_51;
        }

        v69 = a3;
        v70 = ZSTD_count_2segments(a2 + 2, (v12 + v68 + 4), a3, (v12 + v15), (v11 + v15));
        a3 = v69;
        result = v70 + 4;
      }

LABEL_49:
      if (result > v67)
      {
        *a4 = v110 - v68;
        v67 = result;
        if ((a2 + result) == a3)
        {
          goto LABEL_54;
        }
      }

LABEL_51:
      ++v65;
      result = v67;
      if (v65 == v62)
      {
        goto LABEL_54;
      }
    }
  }

  result = 3;
LABEL_54:
  v80 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_4_4(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v146 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 96);
  v6 = v5;
  v7 = *(a1 + 56);
  v8 = v7;
  v9 = a1 + 64;
  v10 = *(a1 + 52);
  v11 = *(a1 + 8);
  v12 = a2 - v11;
  v13 = 1 << *(a1 + 240);
  v129 = *(a1 + 24);
  _ZF = a2 - v11 - *(a1 + 28) > v13 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v15 = a2 - v11 - v13;
  }

  else
  {
    v15 = *(a1 + 28);
  }

  if (*(a1 + 252) >= 4u)
  {
    v16 = 4;
  }

  else
  {
    v16 = *(a1 + 252);
  }

  v17 = *(a1 + 232);
  v18 = (-1640531535 * *a2) >> (24 - *(v17 + 52));
  v19 = (v18 >> 4) & 0xFFFFFF0;
  _X11 = (*(v17 + 56) + 2 * v19);
  _X9 = *(v17 + 96) + 4 * v19;
  __asm
  {
    PRFM            #0, [X9]
    PRFM            #0, [X11]
  }

  v27 = *(a1 + 44);
  if (v12 - v27 >= 0x181)
  {
    if (v27 <= 0xFFFFFF9F)
    {
      v103 = v27 + 96;
      do
      {
        v104 = (-1640531535 * *(v11 + 8 + v27)) >> (24 - v10);
        v105 = (v104 >> 4) & 0xFFFFFF0;
        _X22 = v5 + 4 * v105;
        __asm { PRFM            #0, [X22] }

        _X20 = v7 + 2 * v105;
        __asm { PRFM            #0, [X20] }

        v110 = *(v9 + 4 * (v27 & 7));
        *(v9 + 4 * (v27 & 7)) = v104;
        v111 = (v110 >> 4) & 0xFFFFFF0;
        v112 = v5 + 4 * v111;
        v113 = (v7 + 2 * v111);
        v114 = (*v113 - 1) & 0xF;
        *v113 = v114;
        v113[v114 + 16] = v110;
        *(v112 + 4 * v114) = v27++;
      }

      while (v103 != v27);
      v6 = *(a1 + 96);
      v8 = *(a1 + 56);
    }

    v115 = v12 - 32;
    LODWORD(v27) = v12 - 32;
    v116 = a2 + 1 - (v11 + v115);
    if ((v116 + 1) < 8)
    {
      v117 = v116 + 1;
    }

    else
    {
      v117 = 8;
    }

    if (a2 + 1 >= v11 + v115)
    {
      v118 = v117;
    }

    else
    {
      v118 = 0;
    }

    if (v115 < v118 + v115)
    {
      v119 = 24 - *(a1 + 52);
      do
      {
        v120 = (-1640531535 * *(v11 + v115)) >> v119;
        v121 = (v120 >> 4) & 0xFFFFFF0;
        _X24 = v6 + 4 * v121;
        __asm { PRFM            #0, [X24] }

        _X23 = v8 + 2 * v121;
        __asm { PRFM            #0, [X23] }

        *(v9 + 4 * (v115++ & 7)) = v120;
        --v118;
      }

      while (v118);
    }
  }

  v28 = 1 << v16;
  if (v27 < v12)
  {
    v29 = *(a1 + 8) + 8;
    v30 = 24 - *(a1 + 52);
    v27 = v27;
    do
    {
      v31 = (-1640531535 * *(v29 + v27)) >> v30;
      v32 = (v31 >> 4) & 0xFFFFFF0;
      _X23 = v6 + 4 * v32;
      __asm { PRFM            #0, [X23] }

      _X22 = v8 + 2 * v32;
      __asm { PRFM            #0, [X22] }

      v37 = *(v9 + 4 * (v27 & 7));
      *(v9 + 4 * (v27 & 7)) = v31;
      v38 = (v37 >> 4) & 0xFFFFFF0;
      v39 = v6 + 4 * v38;
      v40 = (v8 + 2 * v38);
      v41 = (*v40 - 1) & 0xF;
      *v40 = v41;
      v40[v41 + 16] = v37;
      *(v39 + 4 * v41) = v27++;
    }

    while (v27 < v12);
  }

  *(a1 + 44) = v12;
  v42 = (-1640531535 * *(v11 + v12 + 8)) >> (24 - v10);
  v43 = (v42 >> 4) & 0xFFFFFF0;
  _X3 = v5 + 4 * v43;
  __asm { PRFM            #0, [X3] }

  _X3 = v7 + 2 * v43;
  __asm { PRFM            #0, [X3] }

  v48 = *(v9 + 4 * (v12 & 7));
  *(v9 + 4 * (v12 & 7)) = v42;
  v49 = (v48 >> 4) & 0xFFFFFF0;
  v50 = v5 + 4 * v49;
  v51 = (v7 + 2 * v49);
  v52 = v51->i8[0];
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v53 = vshlq_n_s16(vceqq_s8(v51[1], vdupq_n_s8(v48)), 7uLL);
  v54 = vshrq_n_u32(vsriq_n_s16(v53, v53, 0xEuLL), 0xEuLL);
  v55 = vsraq_n_u64(v54, v54, 0x1CuLL);
  if (v55.u8[0] | (v55.u8[8] << 8))
  {
    v56 = 0;
    v57 = ((v55.u8[0] | (v55.u8[8] << 8)) >> (v52 & 0xF)) | ((v55.u8[0] | (v55.u8[8] << 8)) << (-v52 & 0xF));
    v58 = v28;
    while (1)
    {
      v59 = *(v50 + 4 * ((__clz(__rbit64(v57)) + v52) & 0xF));
      if (v59 < v15)
      {
        break;
      }

      _X15 = v11 + v59;
      __asm { PRFM            #0, [X15] }

      v62 = v56 + 1;
      *(&v130 + v56) = v59;
      v28 = v58 - 1;
      v57 &= v57 - 1;
      if (v57)
      {
        ++v56;
        if (--v58)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    v62 = v56;
    v28 = v58;
  }

  else
  {
    v62 = 0;
  }

LABEL_22:
  v63 = (v52 - 1) & 0xF;
  v51->i8[0] = v63;
  v51[1].i8[v63] = v48;
  v64 = *(a1 + 44);
  *(a1 + 44) = v64 + 1;
  *(v50 + 4 * v63) = v64;
  if (v62)
  {
    v65 = 0;
    v66 = a3 - 7;
    v67 = 3;
    while (1)
    {
      v68 = *(&v130 + v65);
      v69 = (v11 + v68);
      if (*(v11 + v68 + v67) != *(a2 + v67))
      {
        goto LABEL_45;
      }

      if (v66 <= a2)
      {
        v72 = a2;
      }

      else
      {
        v70 = *v69;
        if (v70 != *a2)
        {
          v77 = __clz(__rbit64(*a2 ^ v70)) >> 3;
          goto LABEL_43;
        }

        v71 = 0;
        v69 = (v11 + 8 + v68);
        v72 = a2 + 4;
        while (v72 < v66)
        {
          v74 = *v69;
          v69 += 4;
          v73 = v74;
          v76 = *v72;
          v72 += 4;
          v75 = v76;
          v71 += 8;
          if (v73 != v76)
          {
            v77 = v71 + (__clz(__rbit64(v75 ^ v73)) >> 3);
            goto LABEL_43;
          }
        }
      }

      if (v72 < a3 - 3 && *v69 == *v72)
      {
        v69 += 2;
        v72 += 2;
      }

      if (v72 < a3 - 1 && *v69 == *v72)
      {
        ++v69;
        ++v72;
      }

      if (v72 < a3 && *v69 == *v72)
      {
        v72 = (v72 + 1);
      }

      v77 = v72 - a2;
LABEL_43:
      if (v77 > v67)
      {
        *a4 = v12 + 2 - v68;
        v67 = v77;
        if ((a2 + v77) == a3)
        {
          goto LABEL_48;
        }
      }

LABEL_45:
      ++v65;
      v77 = v67;
      if (v65 == v62)
      {
        goto LABEL_48;
      }
    }
  }

  v77 = 3;
LABEL_48:
  v78 = *(v17 + 24);
  v79 = *v17;
  v80 = *(v17 + 8);
  v81 = _X11->i8[0];
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v82 = vshlq_n_s16(vceqq_s8(_X11[1], vdupq_n_s8(v18)), 7uLL);
  v83 = vshrq_n_u32(vsriq_n_s16(v82, v82, 0xEuLL), 0xEuLL);
  v84 = vsraq_n_u64(v83, v83, 0x1CuLL);
  if (v84.u8[0] | (v84.u8[8] << 8))
  {
    v85 = v28 == 0;
  }

  else
  {
    v85 = 1;
  }

  if (!v85)
  {
    v86 = 0;
    v87 = ((v84.u8[0] | (v84.u8[8] << 8)) >> (v81 & 0xF)) | ((v84.u8[0] | (v84.u8[8] << 8)) << (-v81 & 0xF));
    v88 = v28 - 1;
    while (1)
    {
      v89 = *(_X9 + 4 * ((__clz(__rbit64(v87)) + v81) & 0xF));
      if (v89 < v78)
      {
        break;
      }

      _X0 = v80 + v89;
      __asm { PRFM            #0, [X0] }

      v92 = v86 + 1;
      *(&v130 + v86) = v89;
      v87 &= v87 - 1;
      if (v87)
      {
        _ZF = v88 == v86++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_59;
    }

    v92 = v86;
    if (!v86)
    {
      goto LABEL_64;
    }

LABEL_59:
    v127 = a4;
    v93 = a2 + 2;
    v94 = *a2;
    v126 = v12 - v129 + v79 - v80 + 2;
    v95 = &v130;
    do
    {
      v97 = *v95++;
      v96 = v97;
      v98 = v80 + v97;
      if (*v98 == v94)
      {
        v99 = a3;
        v100 = ZSTD_count_2segments(v93, (v98 + 4), a3, v79, (v11 + v129));
        a3 = v99;
        if (v100 + 4 > v77)
        {
          *v127 = v126 - v96;
          v77 = v100 + 4;
          if ((a2 + v100 + 4) == v99)
          {
            break;
          }
        }
      }

      --v92;
    }

    while (v92);
  }

LABEL_64:
  v101 = *MEMORY[0x1E69E9840];
  return v77;
}

unint64_t ZSTD_RowFindBestMatch_dictMatchState_4_5(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  v155 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 96);
  v5 = v4;
  v6 = *(a1 + 56);
  v7 = v6;
  v8 = a1 + 64;
  v9 = *(a1 + 52);
  v10 = *(a1 + 8);
  v11 = a2 - v10;
  v12 = 1 << *(a1 + 240);
  v138 = *(a1 + 24);
  _ZF = a2 - v10 - *(a1 + 28) > v12 && *(a1 + 40) == 0;
  if (_ZF)
  {
    v14 = a2 - v10 - v12;
  }

  else
  {
    v14 = *(a1 + 28);
  }

  if (*(a1 + 252) >= 5u)
  {
    v15 = 5;
  }

  else
  {
    v15 = *(a1 + 252);
  }

  v16 = *(a1 + 232);
  v17 = (-1640531535 * *a2) >> (24 - *(v16 + 52));
  v18 = (v17 >> 3) & 0x1FFFFFE0;
  _X11 = (*(v16 + 56) + 2 * v18);
  _X9 = *(v16 + 96) + 4 * v18;
  __asm
  {
    PRFM            #0, [X9]
    PRFM            #0, [X9,#0x40]
    PRFM            #0, [X11]
  }

  v27 = *(a1 + 44);
  if (v11 - v27 >= 0x181)
  {
    if (v27 <= 0xFFFFFF9F)
    {
      v110 = v27 + 96;
      do
      {
        v111 = (-1640531535 * *(v10 + 8 + v27)) >> (24 - v9);
        v112 = (v111 >> 3) & 0x1FFFFFE0;
        _X22 = v4 + 4 * v112;
        __asm
        {
          PRFM            #0, [X22]
          PRFM            #0, [X22,#0x40]
        }

        _X20 = v6 + 2 * v112;
        __asm { PRFM            #0, [X20] }

        v118 = *(v8 + 4 * (v27 & 7));
        *(v8 + 4 * (v27 & 7)) = v111;
        v119 = (v118 >> 3) & 0x1FFFFFE0;
        v120 = v4 + 4 * v119;
        v121 = (v6 + 2 * v119);
        v122 = (*v121 - 1) & 0x1F;
        *v121 = v122;
        v121[v122 + 16] = v118;
        *(v120 + 4 * v122) = v27++;
      }

      while (v110 != v27);
      v5 = *(a1 + 96);
      v7 = *(a1 + 56);
    }

    v123 = v11 - 32;
    LODWORD(v27) = v11 - 32;
    v124 = a2 + 1 - (v10 + v123);
    if ((v124 + 1) < 8)
    {
      v125 = v124 + 1;
    }

    else
    {
      v125 = 8;
    }

    if (a2 + 1 >= v10 + v123)
    {
      v126 = v125;
    }

    else
    {
      v126 = 0;
    }

    if (v123 < v126 + v123)
    {
      v127 = 24 - *(a1 + 52);
      do
      {
        v128 = (-1640531535 * *(v10 + v123)) >> v127;
        v129 = (v128 >> 3) & 0x1FFFFFE0;
        _X24 = v5 + 4 * v129;
        __asm
        {
          PRFM            #0, [X24]
          PRFM            #0, [X24,#0x40]
        }

        _X23 = v7 + 2 * v129;
        __asm { PRFM            #0, [X23] }

        *(v8 + 4 * (v123++ & 7)) = v128;
        --v126;
      }

      while (v126);
    }
  }

  v28 = 1 << v15;
  if (v27 < v11)
  {
    v29 = *(a1 + 8) + 8;
    v30 = 24 - *(a1 + 52);
    v27 = v27;
    do
    {
      v31 = (-1640531535 * *(v29 + v27)) >> v30;
      v32 = (v31 >> 3) & 0x1FFFFFE0;
      _X23 = v5 + 4 * v32;
      __asm
      {
        PRFM            #0, [X23]
        PRFM            #0, [X23,#0x40]
      }

      _X22 = v7 + 2 * v32;
      __asm { PRFM            #0, [X22] }

      v38 = *(v8 + 4 * (v27 & 7));
      *(v8 + 4 * (v27 & 7)) = v31;
      v39 = (v38 >> 3) & 0x1FFFFFE0;
      v40 = v5 + 4 * v39;
      v41 = (v7 + 2 * v39);
      v42 = (*v41 - 1) & 0x1F;
      *v41 = v42;
      v41[v42 + 16] = v38;
      *(v40 + 4 * v42) = v27++;
    }

    while (v27 < v11);
  }

  *(a1 + 44) = v11;
  v43 = (-1640531535 * *(v10 + v11 + 8)) >> (24 - v9);
  v44 = (v43 >> 3) & 0x1FFFFFE0;
  _X4 = v4 + 4 * v44;
  __asm
  {
    PRFM            #0, [X4]
    PRFM            #0, [X4,#0x40]
  }

  _X4 = v6 + 2 * v44;
  __asm { PRFM            #0, [X4] }

  v50 = *(v8 + 4 * (v11 & 7));
  *(v8 + 4 * (v11 & 7)) = v43;
  v51 = (v50 >> 3) & 0x1FFFFFE0;
  v52 = v4 + 4 * v51;
  v53 = (v6 + 2 * v51);
  v54 = (v53 + 16);
  v55 = *v53;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v156 = vld2q_s16(v54);
  v139 = 0u;
  v140 = 0u;
  v56 = vdupq_n_s8(v50);
  *v156.val[0].i8 = vqmovn_s16(vceqq_s8(v56, v156.val[0]));
  *v56.i8 = vsri_n_s8(vqmovn_s16(vceqq_s8(v56, v156.val[1])), *v156.val[0].i8, 2uLL);
  v57 = vsri_n_s8(vuzp2_s8(*v56.i8, *v156.val[0].i8), vuzp1_s8(*v56.i8, *v156.val[0].i8), 4uLL).u32[0];
  if (v57)
  {
    v58 = 0;
    v59 = __ROR4__(v57, v55);
    v60 = v28;
    while (1)
    {
      v61 = *(v52 + 4 * ((__clz(__rbit64(v59)) + v55) & 0x1F));
      if (v61 < v14)
      {
        break;
      }

      _X15 = v10 + v61;
      __asm { PRFM            #0, [X15] }

      v64 = v58 + 1;
      *(&v139 + v58) = v61;
      v28 = v60 - 1;
      v59 &= v59 - 1;
      if (v59)
      {
        ++v58;
        if (--v60)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    v64 = v58;
    v28 = v60;
  }

  else
  {
    v64 = 0;
  }

LABEL_22:
  v65 = (v55 - 1) & 0x1F;
  *v53 = v65;
  v53[v65 + 16] = v50;
  v66 = *(a1 + 44);
  *(a1 + 44) = v66 + 1;
  *(v52 + 4 * v65) = v66;
  if (v64)
  {
    v67 = 0;
    v68 = a3 - 7;
    v69 = 3;
    while (1)
    {
      v70 = *(&v139 + v67);
      v71 = (v10 + v70);
      if (*(v10 + v70 + v69) != *(a2 + v69))
      {
        goto LABEL_45;
      }

      if (v68 <= a2)
      {
        v74 = a2;
      }

      else
      {
        v72 = *v71;
        if (v72 != *a2)
        {
          v79 = __clz(__rbit64(*a2 ^ v72)) >> 3;
          goto LABEL_43;
        }

        v73 = 0;
        v71 = (v10 + 8 + v70);
        v74 = a2 + 4;
        while (v74 < v68)
        {
          v76 = *v71;
          v71 += 4;
          v75 = v76;
          v78 = *v74;
          v74 += 4;
          v77 = v78;
          v73 += 8;
          if (v75 != v78)
          {
            v79 = v73 + (__clz(__rbit64(v77 ^ v75)) >> 3);
            goto LABEL_43;
          }
        }
      }

      if (v74 < a3 - 3 && *v71 == *v74)
      {
        v71 += 2;
        v74 += 2;
      }

      if (v74 < a3 - 1 && *v71 == *v74)
      {
        ++v71;
        ++v74;
      }

      if (v74 < a3 && *v71 == *v74)
      {
        v74 = (v74 + 1);
      }

      v79 = v74 - a2;
LABEL_43:
      if (v79 > v69)
      {
        *a4 = v11 + 2 - v70;
        v69 = v79;
        if ((a2 + v79) == a3)
        {
          goto LABEL_48;
        }
      }

LABEL_45:
      ++v67;
      v79 = v69;
      if (v67 == v64)
      {
        goto LABEL_48;
      }
    }
  }

  v79 = 3;
LABEL_48:
  v80 = *(v16 + 24);
  v81 = *v16;
  v82 = *(v16 + 8);
  v85 = *_X11;
  v83 = (_X11 + 16);
  v84 = v85;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v157 = vld2q_s16(v83);
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v86 = vdupq_n_s8(v17);
  v139 = 0u;
  v140 = 0u;
  v87 = vqmovn_s16(vceqq_s8(v86, v157.val[0]));
  *v157.val[0].i8 = vsri_n_s8(vqmovn_s16(vceqq_s8(v86, v157.val[1])), v87, 2uLL);
  v88 = vsri_n_s8(vuzp2_s8(*v157.val[0].i8, v87), vuzp1_s8(*v157.val[0].i8, v87), 4uLL).u32[0];
  if (v88)
  {
    v89 = v28 == 0;
  }

  else
  {
    v89 = 1;
  }

  if (!v89)
  {
    v90 = 0;
    v91 = __ROR4__(v88, v84);
    v92 = v28 - 1;
    while (1)
    {
      v93 = *(_X9 + 4 * ((__clz(__rbit64(v91)) + v84) & 0x1F));
      if (v93 < v80)
      {
        break;
      }

      _X0 = v82 + v93;
      __asm { PRFM            #0, [X0] }

      v96 = v90 + 1;
      *(&v139 + v90) = v93;
      v91 &= v91 - 1;
      if (v91)
      {
        _ZF = v92 == v90++;
        if (!_ZF)
        {
          continue;
        }
      }

      goto LABEL_59;
    }

    v96 = v90;
    if (!v90)
    {
      goto LABEL_64;
    }

LABEL_59:
    v97 = a2 + 2;
    v98 = *a2;
    v135 = v11 - v138 + v81 - v82 + 2;
    v99 = &v139;
    do
    {
      v101 = *v99++;
      v100 = v101;
      v102 = v82 + v101;
      if (*v102 == v98)
      {
        v103 = (v10 + v138);
        v104 = a3;
        v105 = v10;
        v106 = v81;
        v107 = ZSTD_count_2segments(v97, (v102 + 4), a3, v81, v103);
        v81 = v106;
        v10 = v105;
        a3 = v104;
        if (v107 + 4 > v79)
        {
          *a4 = v135 - v100;
          v79 = v107 + 4;
          if ((a2 + v107 + 4) == v104)
          {
            break;
          }
        }
      }

      --v96;
    }

    while (v96);
  }

LABEL_64:
  v108 = *MEMORY[0x1E69E9840];
  return v79;
}