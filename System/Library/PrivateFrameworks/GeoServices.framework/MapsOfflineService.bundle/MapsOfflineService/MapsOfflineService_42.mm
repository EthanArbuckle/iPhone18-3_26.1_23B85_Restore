uint64_t sub_2F404C(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 < 5)
  {
    goto LABEL_42;
  }

  v16 = v14[2];
  if (v14[2])
  {
    if (&v3[v16] & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    if (v4 < 9 || v4 - 8 < &v3[v16])
    {
      return 0;
    }
  }

  if (v15 < 7)
  {
    goto LABEL_42;
  }

  v17 = v14[3];
  if (v14[3])
  {
    if (&v3[v17] & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    if (v4 < 9 || v4 - 8 < &v3[v17])
    {
      return 0;
    }
  }

  if (v15 < 9)
  {
    goto LABEL_42;
  }

  if (v14[4] && v4 - 1 < &v3[v14[4]])
  {
    return 0;
  }

  if (v15 >= 0xB && (v18 = v14[5]) != 0)
  {
    v19 = &v3[v18];
    if ((v19 & 3) != 0)
    {
      if (v5 < v19 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v19)
    {
      return 0;
    }

    v21 = *(v2 + v19);
    if (v21 < 1 || v4 - 1 < v19 + v21)
    {
      return 0;
    }

    v22 = (a1 + v18);
    v23 = (a1 + v18 + *(a1 + v18));
    v24 = v23 - v2;
    if ((v24 & 3) != 0)
    {
      if (v5 < v24 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v24)
    {
      return 0;
    }

    v25 = *v23;
    if (v25 <= 0x1FFFFFFE)
    {
      v26 = 4 * v25 + 4;
      v27 = v4 > v26;
      v28 = v4 - v26;
      if (v27 && v28 >= v24)
      {
        v20 = a2;
        if (!sub_2F4314(a2, (v22 + *v22)))
        {
          return 0;
        }

LABEL_43:
        --*(v20 + 40);
        return 1;
      }

      return 0;
    }
  }

  else
  {
LABEL_42:
    v20 = a2;
    if (sub_2F4314(a2, 0))
    {
      goto LABEL_43;
    }
  }

  return 0;
}

uint64_t sub_2F4314(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2F43A0((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2F43A0(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = *a1;
  v15 = -v14;
  v16 = (a1 - v14);
  if (*v16 >= 5u)
  {
    v17 = v16[2];
    if (v17)
    {
      v18 = &v3[v17];
      if ((v18 & 3) != 0)
      {
        if (v5 < v18 || (*(a2 + 24) & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v18)
      {
        return 0;
      }

      v19 = *(v2 + v18);
      if (v19 < 1)
      {
        return 0;
      }

      if (v4 - 1 < v18 + v19)
      {
        return 0;
      }

      v20 = a1;
      v21 = a2;
      if (!sub_2ECBD0((a1 + v17 + *(a1 + v17)), a2))
      {
        return 0;
      }

      a1 = v20;
      v15 = -*v20;
      a2 = v21;
    }
  }

  v22 = (a1 + v15);
  if (*v22 < 7u)
  {
    goto LABEL_54;
  }

  v23 = v22[3];
  if (!v22[3])
  {
    goto LABEL_54;
  }

  v24 = a1 + v23 - *a2;
  if (v24 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v25 = *(a2 + 8);
  if (v25 < 5 || v25 - 4 < v24)
  {
    return 0;
  }

  v26 = *(*a2 + v24);
  if (v26 < 1)
  {
    return 0;
  }

  if (v25 - 1 < v24 + v26)
  {
    return 0;
  }

  v27 = (a1 + v23);
  v28 = (v27 + *v27);
  v29 = v28 - *a2;
  if (v29 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v30 = *(a2 + 8);
  if (v30 >= 5 && v30 - 4 >= v29)
  {
    v31 = *v28;
    if (v31 > 0x1FFFFFFE)
    {
      return 0;
    }

    v32 = 4 * v31 + 4;
    v6 = v30 >= v32;
    v33 = v30 - v32;
    if (v33 == 0 || !v6 || v33 < v29)
    {
      return 0;
    }

    v35 = (v27 + *v27);
    if (*v35)
    {
      v36 = 0;
      v37 = v35 + 1;
      do
      {
        v38 = a2;
        if ((sub_2ECBD0((v37 + *v37), a2) & 1) == 0)
        {
          return 0;
        }

        ++v36;
        ++v37;
        a2 = v38;
      }

      while (v36 < *v35);
    }

LABEL_54:
    --*(a2 + 40);
    return 1;
  }

  return 0;
}

uint64_t sub_2F467C(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
    {
      return 0;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  if (v16 >= 5)
  {
    v17 = v15[2];
    if (v15[2] && ((&v3[v17] & 7) != 0 && (a2[3].i8[0] & 1) != 0 || v4 < 9 || v4 - 8 < &v3[v17]))
    {
      return 0;
    }

    if (v16 >= 7)
    {
      if (v15[3] && v4 - 1 < &v3[v15[3]])
      {
        return 0;
      }

      if (v16 >= 9)
      {
        v18 = v15[4];
        if (v15[4] && ((&v3[v18] & 3) != 0 && (a2[3].i8[0] & 1) != 0 || v4 < 9 || v4 - 8 < &v3[v18]))
        {
          return 0;
        }

        if (v16 >= 0xB)
        {
          v19 = v15[5];
          if (v19)
          {
            v20 = &v3[v19];
            if ((v20 & 3) != 0)
            {
              if (v5 < v20 || (a2[3].i8[0] & 1) != 0)
              {
                return 0;
              }
            }

            else if (v5 < v20)
            {
              return 0;
            }

            v21 = *(*&v2 + v20);
            if (v21 < 1 || v4 - 1 < v20 + v21)
            {
              return 0;
            }

            v22 = (a1 + v19 + *(a1 + v19));
            v23 = v22 - *&v2;
            if ((v23 & 3) != 0)
            {
              if (v5 < v23 || (a2[3].i8[0] & 1) != 0)
              {
                return 0;
              }
            }

            else if (v5 < v23)
            {
              return 0;
            }

            v24 = *v22;
            if (v24 <= 0xFFFFFFE)
            {
              v25 = (8 * v24) | 4;
              v26 = v4 > v25;
              v27 = v4 - v25;
              if (v26 && v27 >= v23)
              {
                goto LABEL_54;
              }
            }

            return 0;
          }
        }
      }
    }
  }

LABEL_54:
  a2[5].i32[0] = v8.i32[0];
  return 1;
}

uint64_t sub_2F48A8(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = (a1 - v15);
    if (*v17 >= 5u)
    {
      v18 = v17[2];
      if (v17[2])
      {
        v19 = &v3[v18];
        if ((v19 & 3) != 0)
        {
          v13 = 0;
          if (v5 < v19 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v19)
        {
          return 0;
        }

        v20 = *(v2 + v19);
        if (v20 < 1 || v4 - 1 < v19 + v20)
        {
          return 0;
        }

        v21 = (a1 + v18);
        v22 = (a1 + v18 + *(a1 + v18));
        v23 = v22 - v2;
        if ((v23 & 3) != 0)
        {
          v13 = 0;
          if (v5 < v23 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v23)
        {
          return 0;
        }

        v24 = *v22;
        if (v24 > 0x1FFFFFFE)
        {
          return 0;
        }

        v25 = 4 * v24 + 4;
        v6 = v4 >= v25;
        v26 = v4 - v25;
        if (v26 == 0 || !v6 || v26 < v23)
        {
          return 0;
        }

        v28 = (v21 + *v21);
        if (*v28)
        {
          v29 = a1;
          v30 = 0;
          v31 = v28 + 1;
          while (1)
          {
            v32 = a2;
            if ((sub_2F5178((v31 + *v31), a2) & 1) == 0)
            {
              return 0;
            }

            ++v30;
            ++v31;
            a2 = v32;
            if (v30 >= *v28)
            {
              a1 = v29;
              v16 = -*v29;
              break;
            }
          }
        }
      }
    }

    v33 = a1 + v16;
    if (*(a1 + v16) >= 7u)
    {
      v34 = *(v33 + 3);
      if (*(v33 + 3))
      {
        v35 = a1 + v34 - *a2;
        if (v35 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        v36 = *(a2 + 8);
        if (v36 < 5 || v36 - 4 < v35)
        {
          return v13;
        }

        v37 = *(*a2 + v35);
        if (v37 < 1)
        {
          return 0;
        }

        if (v36 - 1 < v35 + v37)
        {
          return 0;
        }

        v38 = (a1 + v34 + *(a1 + v34));
        v39 = v38 - *a2;
        if (v39 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        v40 = *(a2 + 8);
        if (v40 < 5 || v40 - 4 < v39)
        {
          return v13;
        }

        v41 = *v38;
        if (v41 > 0x5555554)
        {
          return 0;
        }

        v42 = (24 * v41) | 4;
        v6 = v40 >= v42;
        v43 = v40 - v42;
        if (v43 == 0 || !v6 || v43 < v39)
        {
          return 0;
        }
      }
    }

    v45 = a1;
    v46 = a2;
    if (!sub_2CDF90(a1, a2, 8u))
    {
      return 0;
    }

    v47 = (v45 - *v45);
    if (*v47 < 9u)
    {
      v50 = 0;
      v49 = v46;
    }

    else
    {
      v48 = v47[4];
      v49 = v46;
      v50 = v48 ? (v45 + v48 + *(v45 + v48)) : 0;
    }

    if (!sub_2D986C(v49, v50))
    {
      return 0;
    }

    v51 = (v45 - *v45);
    if (*v51 < 9u)
    {
      v54 = 0;
      v53 = v46;
    }

    else
    {
      v52 = v51[4];
      v53 = v46;
      v54 = v52 ? (v45 + v52 + *(v45 + v52)) : 0;
    }

    if (!sub_2ECB44(v53, v54) || !sub_2CDF90(v45, v46, 0xAu))
    {
      return 0;
    }

    v55 = (v45 - *v45);
    if (*v55 < 0xBu)
    {
      v58 = 0;
      v57 = v46;
    }

    else
    {
      v56 = v55[5];
      v57 = v46;
      v58 = v56 ? (v45 + v56 + *(v45 + v56)) : 0;
    }

    if (!sub_2D986C(v57, v58))
    {
      return 0;
    }

    v59 = (v45 - *v45);
    if (*v59 < 0xBu)
    {
      v62 = 0;
      v61 = v46;
    }

    else
    {
      v60 = v59[5];
      v61 = v46;
      v62 = v60 ? (v45 + v60 + *(v45 + v60)) : 0;
    }

    if (!sub_2ECB44(v61, v62) || !sub_2CDF90(v45, v46, 0xCu))
    {
      return 0;
    }

    v63 = (v45 - *v45);
    if (*v63 >= 0xDu && (v64 = v63[6]) != 0)
    {
      v65 = (v45 + v64 + *(v45 + v64));
    }

    else
    {
      v65 = 0;
    }

    if (!sub_2DA624(v46, v65) || !sub_2CDF90(v45, v46, 0xEu))
    {
      return 0;
    }

    v66 = *v45;
    v67 = -v66;
    if (*(v45 - v66) >= 0xFu && *(v45 - v66 + 14))
    {
      if (!sub_2CE100(v46, (v45 + *(v45 - v66 + 14) + *(v45 + *(v45 - v66 + 14))), 4uLL, 0))
      {
        return 0;
      }

      v67 = -*v45;
    }

    v68 = (v45 + v67);
    if (*v68 >= 0xFu && (v69 = v68[7]) != 0)
    {
      v70 = (v45 + v69 + *(v45 + v69));
    }

    else
    {
      v70 = 0;
    }

    if (!sub_2F4FD4(v46, v70) || !sub_2CDF90(v45, v46, 0x10u))
    {
      return 0;
    }

    v71 = (v45 - *v45);
    if (*v71 >= 0x11u && (v72 = v71[8]) != 0)
    {
      v73 = (v45 + v72 + *(v45 + v72));
    }

    else
    {
      v73 = 0;
    }

    if (!sub_2DA624(v46, v73) || !sub_2CDF90(v45, v46, 0x12u))
    {
      return 0;
    }

    v74 = (v45 - *v45);
    if (*v74 >= 0x13u && (v75 = v74[9]) != 0)
    {
      v76 = (v45 + v75 + *(v45 + v75));
    }

    else
    {
      v76 = 0;
    }

    if (!sub_2D986C(v46, v76))
    {
      return 0;
    }

    v77 = (v45 - *v45);
    if (*v77 >= 0x13u && (v78 = v77[9]) != 0)
    {
      v79 = (v45 + v78 + *(v45 + v78));
    }

    else
    {
      v79 = 0;
    }

    if (!sub_2ECB44(v46, v79) || !sub_2CDF90(v45, v46, 0x14u))
    {
      return 0;
    }

    v80 = *v45;
    v81 = -v80;
    if (*(v45 - v80) >= 0x15u && *(v45 - v80 + 20))
    {
      if (!sub_2CE100(v46, (v45 + *(v45 - v80 + 20) + *(v45 + *(v45 - v80 + 20))), 4uLL, 0))
      {
        return 0;
      }

      v81 = -*v45;
    }

    v82 = (v45 + v81);
    if (*v82 >= 0x15u && (v83 = v82[10]) != 0)
    {
      v84 = (v45 + v83 + *(v45 + v83));
    }

    else
    {
      v84 = 0;
    }

    if (!sub_2F5060(v46, v84) || !sub_2CDF90(v45, v46, 0x16u))
    {
      return 0;
    }

    v85 = *v45;
    v86 = -v85;
    if (*(v45 - v85) < 0x17u || !*(v45 - v85 + 22))
    {
LABEL_140:
      v87 = (v45 + v86);
      if (*v87 >= 0x17u && (v88 = v87[11]) != 0)
      {
        v89 = (v45 + v88 + *(v45 + v88));
      }

      else
      {
        v89 = 0;
      }

      if (sub_2F50EC(v46, v89))
      {
        --*(v46 + 40);
        return 1;
      }

      return 0;
    }

    if (sub_2CE100(v46, (v45 + *(v45 - v85 + 22) + *(v45 + *(v45 - v85 + 22))), 4uLL, 0))
    {
      v86 = -*v45;
      goto LABEL_140;
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2F4FD4(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2ECECC((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2F5060(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2F56C0((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL sub_2F50EC(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2F5B5C((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2F5178(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((*(a2 + 24) & 1) == 0 && v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 >= 5)
  {
    v16 = v14[2];
    if (v14[2])
    {
      if (&v3[v16] & 7) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      if (v4 < 9 || v4 - 8 < &v3[v16])
      {
        return 0;
      }
    }

    if (v15 >= 7)
    {
      v17 = v14[3];
      if (v14[3])
      {
        if (&v3[v17] & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        if (v4 < 9 || v4 - 8 < &v3[v17])
        {
          return 0;
        }
      }

      if (v15 >= 9)
      {
        v18 = v14[4];
        if (v14[4])
        {
          v19 = &v3[v18];
          if ((&v3[v18] & 3) != 0)
          {
            if (v5 < v19 || (*(a2 + 24) & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v19)
          {
            return 0;
          }
        }

        if (v15 >= 0xB)
        {
          v20 = v14[5];
          if (v14[5])
          {
            v21 = &v3[v20];
            if ((&v3[v20] & 3) != 0)
            {
              if (v5 < v21 || (*(a2 + 24) & 1) != 0)
              {
                return 0;
              }
            }

            else if (v5 < v21)
            {
              return 0;
            }
          }

          if (v15 >= 0xD && v14[6])
          {
            v22 = &v3[v14[6]];
            if ((v22 & 3) != 0)
            {
              if (v5 < v22 || (*(a2 + 24) & 1) != 0)
              {
                return 0;
              }
            }

            else if (v5 < v22)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  if (!sub_2DAD14(a1, a2, 0xEu, 4) || !sub_2DAD14(a1, a2, 0x10u, 4) || !sub_2CDF90(a1, a2, 0x12u))
  {
    return 0;
  }

  v25 = (a1 - *a1);
  if (*v25 < 0x13u)
  {
    v28 = 0;
    v27 = a2;
  }

  else
  {
    v26 = v25[9];
    v27 = a2;
    v28 = v26 ? (a1 + v26 + *(a1 + v26)) : 0;
  }

  if (!sub_2CE170(v27, v28) || !sub_2DAD14(a1, a2, 0x14u, 4) || !sub_2D8DE0(a1, a2, 0x16u, 2) || !sub_2DAD14(a1, a2, 0x18u, 4))
  {
    return 0;
  }

  v29 = a1;
  v30 = (a1 - *a1);
  v31 = a2;
  if (*v30 >= 0x1Bu)
  {
    if (v30[13])
    {
      v32 = *(a2 + 8);
      if (v32 < 2)
      {
        return 0;
      }

      v31 = a2;
      v29 = a1;
      if (v32 - 1 < a1 + v30[13] - *a2)
      {
        return 0;
      }
    }
  }

  if (!sub_2DAD14(v29, v31, 0x1Cu, 4) || !sub_2DAD14(a1, a2, 0x1Eu, 4) || !sub_2DAD14(a1, a2, 0x20u, 4))
  {
    return 0;
  }

  v33 = a1;
  v34 = (a1 - *a1);
  v35 = a2;
  if (*v34 >= 0x23u)
  {
    if (v34[17])
    {
      v36 = *(a2 + 8);
      if (v36 < 2)
      {
        return 0;
      }

      v35 = a2;
      v33 = a1;
      if (v36 - 1 < a1 + v34[17] - *a2)
      {
        return 0;
      }
    }
  }

  if (sub_2CDF90(v33, v35, 0x24u))
  {
    v37 = (a1 - *a1);
    if (*v37 >= 0x25u && (v38 = v37[18]) != 0)
    {
      v39 = (a1 + v38 + *(a1 + v38));
    }

    else
    {
      v39 = 0;
    }

    if (sub_2D986C(a2, v39) && sub_2CDF90(a1, a2, 0x26u))
    {
      v40 = (a1 - *a1);
      if (*v40 >= 0x27u && (v41 = v40[19]) != 0)
      {
        v42 = (a1 + v41 + *(a1 + v41));
      }

      else
      {
        v42 = 0;
      }

      if (sub_2D986C(a2, v42) && sub_2CDF90(a1, a2, 0x28u))
      {
        v43 = (a1 - *a1);
        if (*v43 >= 0x29u && (v44 = v43[20]) != 0)
        {
          v45 = (a1 + v44 + *(a1 + v44));
        }

        else
        {
          v45 = 0;
        }

        if (sub_2D986C(a2, v45) && sub_2DAD14(a1, a2, 0x2Au, 4) && sub_2D9788(a1, a2, 0x2Cu, 4) && sub_2D9788(a1, a2, 0x2Eu, 4))
        {
          --*(a2 + 40);
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_2F56C0(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(*&v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = a1 - v15;
    v18 = *(a1 - v15);
    if (v18 >= 5)
    {
      v19 = *(v17 + 2);
      if (*(v17 + 2))
      {
        v20 = &v3[v19];
        if ((&v3[v19] & 3) != 0)
        {
          v13 = 0;
          if (v5 < v20 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v20)
        {
          return 0;
        }
      }

      if (v18 >= 7)
      {
        v21 = *(v17 + 3);
        if (v21)
        {
          v22 = &v3[v21];
          if ((v22 & 3) != 0)
          {
            v13 = 0;
            if (v5 < v22 || (*(a2 + 24) & 1) != 0)
            {
              return v13;
            }
          }

          else if (v5 < v22)
          {
            return 0;
          }

          v23 = *(*&v2 + v22);
          if (v23 < 1 || v4 - 1 < v22 + v23)
          {
            return 0;
          }

          v24 = (a1 + v21);
          v25 = (a1 + v21 + *(a1 + v21));
          v26 = v25 - *&v2;
          if ((v26 & 3) != 0)
          {
            v13 = 0;
            if (v5 < v26 || (*(a2 + 24) & 1) != 0)
            {
              return v13;
            }
          }

          else if (v5 < v26)
          {
            return 0;
          }

          v27 = *v25;
          if (v27 > 0x1FFFFFFE)
          {
            return 0;
          }

          v28 = 4 * v27 + 4;
          v6 = v4 >= v28;
          v29 = v4 - v28;
          if (v29 == 0 || !v6 || v29 < v26)
          {
            return 0;
          }

          v31 = (v24 + *v24);
          if (*v31)
          {
            v37 = a1;
            v32 = 0;
            v33 = v31 + 1;
            while (1)
            {
              v34 = a2;
              if ((sub_2F5970((v33 + *v33), a2) & 1) == 0)
              {
                return 0;
              }

              ++v32;
              ++v33;
              a2 = v34;
              if (v32 >= *v31)
              {
                a1 = v37;
                v16 = -*v37;
                break;
              }
            }
          }
        }
      }
    }

    if (*(a1 + v16) < 9u || !*(a1 + v16 + 8))
    {
LABEL_60:
      --*(a2 + 40);
      return 1;
    }

    v35 = a1 + *(a1 + v16 + 8) - *a2;
    if ((v35 & 3) == 0 || (*(a2 + 24) & 1) == 0)
    {
      v13 = 0;
      v36 = *(a2 + 8);
      if (v36 < 9 || v36 - 8 < v35)
      {
        return v13;
      }

      goto LABEL_60;
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2F5970(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
    {
      return 0;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  if (v16 >= 5)
  {
    v17 = v15[2];
    if (v15[2])
    {
      v18 = &v3[v17];
      if ((v3 + v17))
      {
        if (v4 - 2 < v18 || (a2[3].i8[0] & 1) != 0)
        {
          return 0;
        }
      }

      else if (v4 - 2 < v18)
      {
        return 0;
      }
    }

    if (v16 >= 7)
    {
      v19 = v15[3];
      if (v15[3])
      {
        v20 = &v3[v19];
        if ((&v3[v19] & 3) != 0)
        {
          if (v5 < v20 || (a2[3].i8[0] & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v20)
        {
          return 0;
        }

        v21 = *&v20[*&v2];
        if (v21 < 1 || v4 - 1 < &v20[v21])
        {
          return 0;
        }

        v22 = (a1 + v19 + *(a1 + v19));
        v23 = v22 - *&v2;
        if ((v23 & 3) != 0)
        {
          if (v5 < v23 || (a2[3].i8[0] & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v23)
        {
          return 0;
        }

        v24 = *v22;
        if (v24 > 0x3FFFFFFE)
        {
          return 0;
        }

        v25 = 2 * v24 + 4;
        v6 = v4 >= v25;
        v26 = v4 - v25;
        if (v26 == 0 || !v6 || v26 < v23)
        {
          return 0;
        }
      }

      if (v16 < 9 || !v15[4] || v4 - 1 >= &v3[v15[4]])
      {
        goto LABEL_51;
      }

      return 0;
    }
  }

LABEL_51:
  a2[5].i32[0] = v8.i32[0];
  return 1;
}

BOOL sub_2F5B5C(int *a1, uint64_t a2)
{
  result = sub_2CDED0(a1, a2);
  if (result)
  {
    v5 = (a1 - *a1);
    if (*v5 < 5u || (v6 = v5[2]) == 0)
    {
LABEL_22:
      --*(a2 + 40);
      return 1;
    }

    v7 = a1 + v6 - *a2;
    if (v7 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v8 = *(a2 + 8);
    if (v8 >= 5 && v8 - 4 >= v7)
    {
      v9 = *(*a2 + v7);
      if (v9 < 1)
      {
        return 0;
      }

      if (v8 - 1 < v7 + v9)
      {
        return 0;
      }

      v10 = (a1 + v6 + *(a1 + v6));
      v11 = v10 - *a2;
      if (v11 & 3) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      result = 0;
      v12 = *(a2 + 8);
      if (v12 >= 5 && v12 - 4 >= v11)
      {
        v13 = *v10;
        if (v13 > 0x1FFFFFFE)
        {
          return 0;
        }

        v14 = 4 * v13 + 4;
        v16 = v12 >= v14;
        v15 = v12 - v14;
        v16 = v15 != 0 && v16 && v15 >= v11;
        if (!v16)
        {
          return 0;
        }

        goto LABEL_22;
      }
    }
  }

  return result;
}

uint64_t sub_2F5C90(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = a1 - v15;
    v18 = *(a1 - v15);
    if (v18 >= 5)
    {
      v19 = *(v17 + 2);
      if (*(v17 + 2))
      {
        v20 = &v3[v19];
        if (&v3[v19] & 7) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        if (v4 < 9 || v4 - 8 < v20)
        {
          return v13;
        }
      }

      if (v18 >= 7)
      {
        v21 = *(v17 + 3);
        if (v21)
        {
          v22 = &v3[v21];
          if ((v22 & 3) != 0)
          {
            v13 = 0;
            if (v5 < v22 || (*(a2 + 24) & 1) != 0)
            {
              return v13;
            }
          }

          else if (v5 < v22)
          {
            return 0;
          }

          v23 = *(v2 + v22);
          if (v23 < 1 || v4 - 1 < v22 + v23)
          {
            return 0;
          }

          v24 = (a1 + v21);
          v25 = (a1 + v21 + *(a1 + v21));
          v26 = v25 - v2;
          if ((v26 & 3) != 0)
          {
            v13 = 0;
            if (v5 < v26 || (*(a2 + 24) & 1) != 0)
            {
              return v13;
            }
          }

          else if (v5 < v26)
          {
            return 0;
          }

          v27 = *v25;
          if (v27 > 0x1FFFFFFE)
          {
            return 0;
          }

          v28 = 4 * v27 + 4;
          v6 = v4 >= v28;
          v29 = v4 - v28;
          if (v29 == 0 || !v6 || v29 < v26)
          {
            return 0;
          }

          v31 = a1;
          v32 = a2;
          v33 = (v24 + *v24);
          if (*v33)
          {
            v34 = 0;
            v35 = v33 + 1;
            while ((sub_2ECBD0((v35 + *v35), a2) & 1) != 0)
            {
              ++v34;
              ++v35;
              a2 = v32;
              if (v34 >= *v33)
              {
                a1 = v31;
                v16 = -*v31;
                goto LABEL_54;
              }
            }

            return 0;
          }
        }
      }
    }

LABEL_54:
    v36 = a1 + v16;
    if (*(a1 + v16) >= 9u)
    {
      v37 = *(v36 + 4);
      if (*(v36 + 4))
      {
        v38 = a1 + v37 - *a2;
        if (v38 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        v39 = *(a2 + 8);
        if (v39 < 5 || v39 - 4 < v38)
        {
          return v13;
        }

        v40 = *(*a2 + v38);
        if (v40 < 1)
        {
          return 0;
        }

        if (v39 - 1 < v38 + v40)
        {
          return 0;
        }

        v41 = a1;
        v42 = a2;
        if (!sub_2DA624(a2, (a1 + v37 + *(a1 + v37))))
        {
          return 0;
        }

LABEL_65:
        if (sub_2DAD14(v41, v42, 0xAu, 4))
        {
          --*(v42 + 40);
          return 1;
        }

        return 0;
      }
    }

    v41 = a1;
    v42 = a2;
    if (sub_2DA624(a2, 0))
    {
      goto LABEL_65;
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2F5FB8(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v12)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  v17 = v8.i32[0];
  if (v16 >= 5)
  {
    v18 = v15[2];
    if (v15[2])
    {
      if (&v3[v18] & 7) != 0 && (a2[3].i8[0])
      {
        return 0;
      }

      if (v4 < 9 || v4 - 8 < &v3[v18])
      {
        return 0;
      }
    }

    if (v16 >= 7)
    {
      v19 = v15[3];
      if (v15[3])
      {
        v20 = &v3[v19];
        if ((v3 + v19))
        {
          if (v4 - 2 < v20 || (a2[3].i8[0] & 1) != 0)
          {
            return 0;
          }
        }

        else if (v4 - 2 < v20)
        {
          return 0;
        }
      }

      if (v16 >= 9)
      {
        v21 = v15[4];
        if (v21)
        {
          v22 = &v3[v21];
          if ((v22 & 3) != 0)
          {
            if (v5 < v22 || (a2[3].i8[0] & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v22)
          {
            return 0;
          }

          v23 = *(*&v2 + v22);
          if (v23 < 1 || v4 - 1 < v22 + v23)
          {
            return 0;
          }

          v24 = (a1 + v21);
          v25 = (a1 + v21 + *(a1 + v21));
          v26 = v25 - *&v2;
          v27 = a2;
          if ((v26 & 3) != 0)
          {
            if (v5 < v26 || (a2[3].i8[0] & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v26)
          {
            return 0;
          }

          v28 = *v25;
          if (v28 <= 0x1FFFFFFE)
          {
            v29 = 4 * v28 + 4;
            v30 = v4 > v29;
            v31 = v4 - v29;
            if (v30 && v31 >= v26)
            {
              v32 = (v24 + *v24);
              if (*v32)
              {
                v33 = 0;
                v34 = v32 + 1;
                while (1)
                {
                  v35 = v34;
                  if ((sub_2ECBD0((v34 + *v34), a2) & 1) == 0)
                  {
                    return 0;
                  }

                  ++v33;
                  v34 = v35 + 1;
                  a2 = v27;
                  if (v33 >= *v32)
                  {
                    v17 = v27[5].i32[0] - 1;
                    goto LABEL_57;
                  }
                }
              }

              goto LABEL_57;
            }

            return 0;
          }

          return 0;
        }
      }
    }
  }

LABEL_57:
  a2[5].i32[0] = v17;
  return 1;
}

uint64_t sub_2F6290(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 > v12 && v4 - v12 >= v11)
  {
    v15 = (a1 - *a1);
    v16 = *v15;
    if (v16 >= 5)
    {
      v17 = v15[2];
      if (v15[2])
      {
        v18 = &v3[v17];
        if ((&v3[v17] & 3) != 0)
        {
          v13 = 0;
          if (v5 < v18 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v18)
        {
          return 0;
        }

        v19 = *&v18[v2];
        if (v19 < 1 || v4 - 1 < &v18[v19])
        {
          return 0;
        }

        v20 = (a1 + v17 + *(a1 + v17));
        v21 = v20 - v2;
        if (((v20 - v2) & 3) != 0)
        {
          v13 = 0;
          if (v5 < v21 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v21)
        {
          return 0;
        }

        v22 = *v20;
        if (v22 > 0x7FFFFFFE)
        {
          return 0;
        }

        v23 = v22 + 4;
        v24 = &v21[v22 + 4];
        v25 = v4 - 1 >= v24 && v4 > v23;
        v26 = v25 && v4 - v23 >= v21;
        if (!v26 || *(v2 + v24))
        {
          return 0;
        }
      }

      if (v16 >= 7)
      {
        v27 = v15[3];
        if (v15[3])
        {
          v28 = &v3[v27];
          if (&v3[v27] & 7) != 0 && (*(a2 + 24))
          {
            return 0;
          }

          v13 = 0;
          if (v4 < 9 || v4 - 8 < v28)
          {
            return v13;
          }
        }

        if (v16 >= 9)
        {
          if (v15[4] && v4 - 1 < &v3[v15[4]])
          {
            return 0;
          }

          if (v16 >= 0xB)
          {
            v29 = v15[5];
            if (v29)
            {
              v30 = &v3[v29];
              if ((v30 & 3) != 0)
              {
                v13 = 0;
                if (v5 < v30 || (*(a2 + 24) & 1) != 0)
                {
                  return v13;
                }
              }

              else if (v5 < v30)
              {
                return 0;
              }

              v31 = *(v2 + v30);
              if (v31 < 1 || v4 - 1 < v30 + v31)
              {
                return 0;
              }

              v32 = a1;
              v33 = a2;
              v34 = sub_2ECBD0((a1 + v29 + *(a1 + v29)), a2);
              a2 = v33;
              v13 = v34;
              a1 = v32;
              if (!v13)
              {
                return v13;
              }
            }
          }
        }
      }
    }

    v35 = a1;
    v36 = a2;
    if (!sub_2CDF90(a1, a2, 0xCu))
    {
      return 0;
    }

    v37 = v35;
    v38 = *v35;
    v39 = -v38;
    v40 = (v35 - v38);
    if (*v40 >= 0xDu)
    {
      v41 = v40[6];
      v42 = v36;
      if (!v41)
      {
LABEL_71:
        v43 = (v37 + v39);
        if (*v43 < 0xFu || (v44 = v43[7]) == 0 || (v13 = 0, v45 = v42[1], v45 >= 2) && v45 - 1 >= v37 + v44 - *v42)
        {
          --v42[5].i32[0];
          return 1;
        }

        return v13;
      }

      if (!sub_2F6600((v35 + v41 + *(v35 + v41)), v36))
      {
        return 0;
      }

      v37 = v35;
      v39 = -*v35;
    }

    v42 = v36;
    goto LABEL_71;
  }

  return 0;
}

uint64_t sub_2F6600(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((a2[3].i8[0] & 1) == 0 && v4 - 2 >= v12)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v4 - 2 < v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  v17 = v8.i32[0];
  if (v16 < 5)
  {
    goto LABEL_49;
  }

  if (v15[2] && v4 - 1 < &v3[v15[2]])
  {
    return 0;
  }

  if (v16 < 7)
  {
    goto LABEL_49;
  }

  v18 = v15[3];
  if (!v15[3])
  {
    goto LABEL_49;
  }

  v19 = &v3[v18];
  if ((v19 & 3) != 0)
  {
    if (v5 < v19 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v19)
  {
    return 0;
  }

  v20 = *(*&v2 + v19);
  if (v20 < 1 || v4 - 1 < v19 + v20)
  {
    return 0;
  }

  v21 = (a1 + v18);
  v22 = (a1 + v18 + *(a1 + v18));
  v23 = v22 - *&v2;
  if ((v23 & 3) != 0)
  {
    if (v5 < v23 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }

    goto LABEL_38;
  }

  if (v5 < v23)
  {
    return 0;
  }

LABEL_38:
  v24 = *v22;
  if (v24 > 0x1FFFFFFE)
  {
    return 0;
  }

  v25 = 4 * v24 + 4;
  v6 = v4 >= v25;
  v26 = v4 - v25;
  if (v26 == 0 || !v6 || v26 < v23)
  {
    return 0;
  }

  v28 = (v21 + *v21);
  if (*v28)
  {
    v29 = 0;
    v30 = v28 + 1;
    while (1)
    {
      v31 = a2;
      if (!sub_2EE1FC((v30 + *v30), a2))
      {
        return 0;
      }

      ++v29;
      ++v30;
      a2 = v31;
      if (v29 >= *v28)
      {
        v17 = v31[5].i32[0] - 1;
        break;
      }
    }
  }

LABEL_49:
  a2[5].i32[0] = v17;
  return 1;
}

BOOL sub_2F686C(int *a1, uint64_t a2)
{
  result = sub_2CDED0(a1, a2);
  if (result)
  {
    v5 = (a1 - *a1);
    v6 = *v5;
    if (v6 < 5)
    {
      goto LABEL_18;
    }

    if (!v5[2])
    {
      goto LABEL_17;
    }

    v7 = a1 + v5[2] - *a2;
    if (v7 & 7) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v8 = *(a2 + 8);
    if (v8 >= 9 && v8 - 8 >= v7)
    {
LABEL_17:
      if (v6 < 7 || (!v5[3] || (result = 0, v9 = *(a2 + 8), v9 >= 2) && v9 - 1 >= a1 + v5[3] - *a2) && (v6 < 9 || (v10 = v5[4]) == 0 || (result = 0, v11 = *(a2 + 8), v11 >= 2) && v11 - 1 >= a1 + v10 - *a2))
      {
LABEL_18:
        --*(a2 + 40);
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_2F697C(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(*&v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = a1 - v15;
    v18 = *(a1 - v15);
    if (v18 >= 5)
    {
      v19 = *(v17 + 2);
      if (*(v17 + 2))
      {
        v20 = &v3[v19];
        if (&v3[v19] & 7) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        if (v4 < 9 || v4 - 8 < v20)
        {
          return v13;
        }
      }

      if (v18 >= 7)
      {
        v21 = *(v17 + 3);
        if (v21)
        {
          v22 = &v3[v21];
          if ((v22 & 3) != 0)
          {
            v13 = 0;
            if (v5 < v22 || (*(a2 + 24) & 1) != 0)
            {
              return v13;
            }
          }

          else if (v5 < v22)
          {
            return 0;
          }

          v23 = *(*&v2 + v22);
          if (v23 < 1 || v4 - 1 < v22 + v23)
          {
            return 0;
          }

          v24 = (a1 + v21);
          v25 = (a1 + v21 + *(a1 + v21));
          v26 = v25 - *&v2;
          if ((v26 & 3) != 0)
          {
            v13 = 0;
            if (v5 < v26 || (*(a2 + 24) & 1) != 0)
            {
              return v13;
            }
          }

          else if (v5 < v26)
          {
            return 0;
          }

          v27 = *v25;
          if (v27 > 0x1FFFFFFE)
          {
            return 0;
          }

          v28 = 4 * v27 + 4;
          v6 = v4 >= v28;
          v29 = v4 - v28;
          if (v29 == 0 || !v6 || v29 < v26)
          {
            return 0;
          }

          v31 = a1;
          v32 = a2;
          v33 = (v24 + *v24);
          if (*v33)
          {
            v34 = 0;
            v35 = v33 + 1;
            while ((sub_2CE560((v35 + *v35), a2) & 1) != 0)
            {
              ++v34;
              ++v35;
              a2 = v32;
              if (v34 >= *v33)
              {
                a1 = v31;
                v16 = -*v31;
                goto LABEL_54;
              }
            }

            return 0;
          }
        }
      }
    }

LABEL_54:
    v36 = a1 + v16;
    if (*(a1 + v16) >= 9u)
    {
      v37 = *(v36 + 4);
      if (*(v36 + 4))
      {
        v38 = a1 + v37 - *a2;
        if (v38 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        v39 = *(a2 + 8);
        if (v39 < 5 || v39 - 4 < v38)
        {
          return v13;
        }

        v40 = *(*a2 + v38);
        if (v40 < 1 || v39 - 1 < v38 + v40)
        {
          return 0;
        }

        v41 = a1;
        v42 = a2;
        v43 = sub_2ECBD0((a1 + v37 + *(a1 + v37)), a2);
        a2 = v42;
        v13 = v43;
        a1 = v41;
        if (!v13)
        {
          return v13;
        }
      }
    }

    v44 = a1;
    v45 = a2;
    if (!sub_2CDF90(a1, a2, 0xAu))
    {
      return 0;
    }

    v46 = v44;
    v47 = *v44;
    v48 = -v47;
    v49 = (v44 - v47);
    if (*v49 >= 0xBu)
    {
      v50 = v49[5];
      v51 = v45;
      if (!v50)
      {
        goto LABEL_69;
      }

      if (!sub_2CE100(v45, (v44 + v50 + *(v44 + v50)), 4uLL, 0))
      {
        return 0;
      }

      v46 = v44;
      v48 = -*v44;
    }

    v51 = v45;
LABEL_69:
    v52 = (v46 + v48);
    if (*v52 >= 0xBu && (v53 = v52[5]) != 0)
    {
      v54 = (v46 + v53 + *(v46 + v53));
    }

    else
    {
      v54 = 0;
    }

    if (!sub_2F6F5C(v51, v54))
    {
      return 0;
    }

    if (!sub_2CDF90(v44, v45, 0xCu))
    {
      return 0;
    }

    v55 = v44;
    v56 = (v44 - *v44);
    if (*v56 >= 0xDu)
    {
      v57 = v56[6];
      if (v57)
      {
        v58 = sub_2ECBD0((v44 + v57 + *(v44 + v57)), v45);
        v55 = v44;
        if (!v58)
        {
          return 0;
        }
      }
    }

    if (!sub_2CDF90(v55, v45, 0xEu))
    {
      return 0;
    }

    v59 = (v44 - *v44);
    if (*v59 < 0xFu)
    {
      v62 = 0;
      v61 = v45;
    }

    else
    {
      v60 = v59[7];
      v61 = v45;
      v62 = v60 ? (v44 + v60 + *(v44 + v60)) : 0;
    }

    if (!sub_2D986C(v61, v62))
    {
      return 0;
    }

    v63 = (v44 - *v44);
    if (*v63 >= 0xFu && (v64 = v63[7]) != 0)
    {
      v65 = (v44 + v64 + *(v44 + v64));
    }

    else
    {
      v65 = 0;
    }

    if (!sub_2F6FE8(v45, v65))
    {
      return 0;
    }

    if (!sub_2CDF90(v44, v45, 0x10u))
    {
      return 0;
    }

    v66 = (v44 - *v44);
    if (*v66 >= 0x11u)
    {
      v67 = v66[8];
      if (v67)
      {
        if (!sub_2ECBD0((v44 + v67 + *(v44 + v67)), v45))
        {
          return 0;
        }
      }
    }

    if (!sub_2CDF90(v44, v45, 0x12u))
    {
      return 0;
    }

    v68 = (v44 - *v44);
    if (*v68 >= 0x13u && (v69 = v68[9]) != 0)
    {
      v70 = (v44 + v69 + *(v44 + v69));
    }

    else
    {
      v70 = 0;
    }

    if (!sub_2D986C(v45, v70))
    {
      return 0;
    }

    v71 = (v44 - *v44);
    if (*v71 >= 0x13u && (v72 = v71[9]) != 0)
    {
      v73 = (v44 + v72 + *(v44 + v72));
    }

    else
    {
      v73 = 0;
    }

    if (!sub_2F6FE8(v45, v73) || !sub_2CDF90(v44, v45, 0x14u))
    {
      return 0;
    }

    v74 = *v44;
    v75 = -v74;
    if (*(v44 - v74) < 0x15u || !*(v44 - v74 + 20))
    {
LABEL_110:
      v76 = (v44 + v75);
      if (*v76 >= 0x15u && (v77 = v76[10]) != 0)
      {
        v78 = (v44 + v77 + *(v44 + v77));
      }

      else
      {
        v78 = 0;
      }

      if (sub_2EE0E4(v45, v78))
      {
        --*(v45 + 40);
        return 1;
      }

      return 0;
    }

    if (sub_2CE100(v45, (v44 + *(v44 - v74 + 20) + *(v44 + *(v44 - v74 + 20))), 4uLL, 0))
    {
      v75 = -*v44;
      goto LABEL_110;
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2F6F5C(uint32x2_t *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2F7074((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2F6FE8(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2F71E8((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2F7074(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  if (v4 < 5 || v4 - 4 < v3)
  {
    return 0;
  }

  v6 = *a1;
  v7 = a2[5];
  v8 = vadd_s32(v7, 0x100000001);
  a2[5] = v8;
  v9 = vcgt_u32(v8, a2[2]);
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = v3 - v6;
  if (((v3 - v6) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(*&v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 >= 5)
  {
    v16 = v14[2];
    if (v14[2])
    {
      if (((v3 + v16) & 3) != 0 && (a2[3].i8[0] & 1) != 0 || v4 < 9 || v4 - 8 < v3 + v16)
      {
        return 0;
      }
    }

    if (v15 >= 7 && (v14[3] && v4 - 1 < v3 + v14[3] || v15 >= 9 && (v14[4] && v4 - 1 < v3 + v14[4] || v15 >= 0xB && v14[5] && v4 - 1 < v3 + v14[5])))
    {
      return 0;
    }
  }

  a2[5].i32[0] = v7.i32[0];
  return 1;
}

uint64_t sub_2F71E8(int *a1, uint64_t a2)
{
  result = sub_2CDED0(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  v6 = -v5;
  v7 = (a1 - v5);
  if (*v7 < 5u)
  {
    goto LABEL_14;
  }

  v8 = v7[2];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = a1 + v8 - *a2;
  if (v9 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  result = 0;
  v10 = *(a2 + 8);
  if (v10 >= 5 && v10 - 4 >= v9)
  {
    v11 = *(*a2 + v9);
    if (v11 < 1 || v10 - 1 < v9 + v11)
    {
      return 0;
    }

    result = sub_2F731C((a1 + v8 + *(a1 + v8)), a2);
    if (result)
    {
      v6 = -*a1;
LABEL_14:
      if (*(a1 + v6) < 7u || (v12 = *(a1 + v6 + 6), !*(a1 + v6 + 6)) || (result = 0, v13 = *(a2 + 8), v13 >= 2) && v13 - 1 >= a1 + v12 - *a2)
      {
        --*(a2 + 40);
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_2F731C(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(*&v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = (a1 - v15);
    if (*v17 < 5u)
    {
      goto LABEL_48;
    }

    v18 = v17[2];
    if (!v17[2])
    {
      goto LABEL_48;
    }

    v19 = &v3[v18];
    if ((v19 & 3) != 0)
    {
      v13 = 0;
      if (v5 < v19 || (*(a2 + 24) & 1) != 0)
      {
        return v13;
      }
    }

    else if (v5 < v19)
    {
      return 0;
    }

    v20 = *(*&v2 + v19);
    if (v20 >= 1 && v4 - 1 >= v19 + v20)
    {
      v21 = (a1 + v18);
      v22 = (a1 + v18 + *(a1 + v18));
      v23 = v22 - *&v2;
      if ((v23 & 3) != 0)
      {
        v13 = 0;
        if (v5 < v23 || (*(a2 + 24) & 1) != 0)
        {
          return v13;
        }

        goto LABEL_37;
      }

      if (v5 >= v23)
      {
LABEL_37:
        v24 = *v22;
        if (v24 > 0x1FFFFFFE)
        {
          return 0;
        }

        v25 = 4 * v24 + 4;
        v6 = v4 >= v25;
        v26 = v4 - v25;
        if (v26 == 0 || !v6 || v26 < v23)
        {
          return 0;
        }

        v28 = (v21 + *v21);
        if (*v28)
        {
          v39 = a1;
          v29 = 0;
          v30 = v28 + 1;
          while (1)
          {
            v31 = a2;
            if ((sub_2F75C8((v30 + *v30), a2) & 1) == 0)
            {
              return 0;
            }

            ++v29;
            ++v30;
            a2 = v31;
            if (v29 >= *v28)
            {
              a1 = v39;
              v16 = -*v39;
              break;
            }
          }
        }

LABEL_48:
        v32 = a1 + v16;
        if (*(a1 + v16) < 7u)
        {
          goto LABEL_57;
        }

        v33 = *(v32 + 3);
        if (!*(v32 + 3))
        {
          goto LABEL_57;
        }

        v34 = a1 + v33 - *a2;
        if ((v34 & 3) == 0 || (*(a2 + 24) & 1) == 0)
        {
          v13 = 0;
          v35 = *(a2 + 8);
          if (v35 < 5 || v35 - 4 < v34)
          {
            return v13;
          }

          v36 = *(*a2 + v34);
          if (v36 >= 1 && v35 - 1 >= v34 + v36)
          {
            v37 = a2;
            v38 = sub_2F75C8((a1 + v33 + *(a1 + v33)), a2);
            a2 = v37;
            if (v38)
            {
LABEL_57:
              --*(a2 + 40);
              return 1;
            }
          }
        }
      }
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2F75C8(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v12)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  v17 = v8.i32[0];
  if (v16 >= 5)
  {
    v18 = v15[2];
    if (v15[2])
    {
      v19 = &v3[v18];
      if ((&v3[v18] & 3) != 0)
      {
        if (v5 < v19 || (a2[3].i8[0] & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v19)
      {
        return 0;
      }

      v20 = *&v19[*&v2];
      if (v20 < 1 || v4 - 1 < &v19[v20])
      {
        return 0;
      }

      v21 = (a1 + v18 + *(a1 + v18));
      v22 = v21 - *&v2;
      if (((v21 - *&v2) & 3) != 0)
      {
        if (v5 < v22 || (a2[3].i8[0] & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v22)
      {
        return 0;
      }

      v23 = *v21;
      if (v23 > 0x7FFFFFFE)
      {
        return 0;
      }

      v24 = v23 + 4;
      v25 = &v22[v23 + 4];
      v26 = v4 - 1 >= v25 && v4 > v24;
      v27 = v26 && v4 - v24 >= v22;
      if (!v27 || *(*&v2 + v25))
      {
        return 0;
      }
    }

    if (v16 < 7)
    {
      goto LABEL_56;
    }

    v28 = v15[3];
    if (!v28)
    {
      goto LABEL_56;
    }

    v29 = &v3[v28];
    if ((v29 & 3) != 0)
    {
      if (v5 < v29 || (a2[3].i8[0] & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v29)
    {
      return 0;
    }

    v30 = *(*&v2 + v29);
    if (v30 >= 1 && v4 - 1 >= v29 + v30)
    {
      v31 = a2;
      if (sub_2EF874((a1 + v28 + *(a1 + v28)), a2))
      {
        a2 = v31;
        v17 = v31[5].i32[0] - 1;
        goto LABEL_56;
      }
    }

    return 0;
  }

LABEL_56:
  a2[5].i32[0] = v17;
  return 1;
}

uint64_t sub_2F7840(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = *a1;
  v15 = -v14;
  v16 = (a1 - v14);
  if (*v16 >= 5u)
  {
    v17 = v16[2];
    if (v17)
    {
      v18 = &v3[v17];
      if ((v18 & 3) != 0)
      {
        if (v5 < v18 || (*(a2 + 24) & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v18)
      {
        return 0;
      }

      v19 = *(v2 + v18);
      if (v19 < 1)
      {
        return 0;
      }

      if (v4 - 1 < v18 + v19)
      {
        return 0;
      }

      v20 = a1;
      v21 = a2;
      if (!sub_2DA2D4((a1 + v17 + *(a1 + v17)), a2))
      {
        return 0;
      }

      a1 = v20;
      v15 = -*v20;
      a2 = v21;
    }
  }

  if (*(a1 + v15) >= 7u)
  {
    v22 = *(a1 + v15 + 6);
    if (*(a1 + v15 + 6))
    {
      v23 = a1 + v22 - *a2;
      if (v23 & 3) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      v24 = *(a2 + 8);
      if (v24 < 5 || v24 - 4 < v23)
      {
        return 0;
      }

      v25 = *(*a2 + v23);
      if (v25 < 1)
      {
        return 0;
      }

      if (v24 - 1 < v23 + v25)
      {
        return 0;
      }

      v26 = a1;
      v27 = a2;
      if (!sub_2DA2D4((a1 + v22 + *(a1 + v22)), a2))
      {
        return 0;
      }

      a1 = v26;
      v15 = -*v26;
      a2 = v27;
    }
  }

  v28 = (a1 + v15);
  if (*v28 < 9u)
  {
    goto LABEL_51;
  }

  v29 = v28[4];
  if (!v28[4])
  {
    goto LABEL_51;
  }

  v30 = a1 + v29 - *a2;
  if (v30 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v31 = *(a2 + 8);
  if (v31 >= 5 && v31 - 4 >= v30)
  {
    v32 = *(*a2 + v30);
    if (v32 >= 1 && v31 - 1 >= v30 + v32)
    {
      v33 = a2;
      v34 = sub_2DA2D4((a1 + v29 + *(a1 + v29)), a2);
      a2 = v33;
      if (v34)
      {
LABEL_51:
        --*(a2 + 40);
        return 1;
      }
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2F7B18(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = *a1;
  v15 = -v14;
  v16 = (a1 - v14);
  if (*v16 >= 5u)
  {
    v17 = v16[2];
    if (v17)
    {
      v18 = &v3[v17];
      if ((v18 & 3) != 0)
      {
        if (v5 < v18 || (*(a2 + 24) & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v18)
      {
        return 0;
      }

      v19 = *(v2 + v18);
      if (v19 < 1)
      {
        return 0;
      }

      if (v4 - 1 < v18 + v19)
      {
        return 0;
      }

      v20 = a1;
      v21 = a2;
      if (!sub_2F8758((a1 + v17 + *(a1 + v17)), a2))
      {
        return 0;
      }

      a1 = v20;
      v15 = -*v20;
      a2 = v21;
    }
  }

  if (*(a1 + v15) >= 7u)
  {
    v22 = *(a1 + v15 + 6);
    if (*(a1 + v15 + 6))
    {
      v23 = a1 + v22 - *a2;
      if (v23 & 3) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      v24 = *(a2 + 8);
      if (v24 < 5 || v24 - 4 < v23)
      {
        return 0;
      }

      v25 = *(*a2 + v23);
      if (v25 < 1)
      {
        return 0;
      }

      if (v24 - 1 < v23 + v25)
      {
        return 0;
      }

      v26 = a1;
      v27 = a2;
      if (!sub_2F8A5C((a1 + v22 + *(a1 + v22)), a2))
      {
        return 0;
      }

      a1 = v26;
      v15 = -*v26;
      a2 = v27;
    }
  }

  if (*(a1 + v15) < 9u)
  {
    goto LABEL_52;
  }

  v28 = *(a1 + v15 + 8);
  if (!*(a1 + v15 + 8))
  {
    goto LABEL_52;
  }

  v29 = a1 + v28 - *a2;
  if (v29 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v30 = *(a2 + 8);
  if (v30 < 5 || v30 - 4 < v29)
  {
    return 0;
  }

  v31 = *(*a2 + v29);
  if (v31 < 1)
  {
    return 0;
  }

  if (v30 - 1 < v29 + v31)
  {
    return 0;
  }

  v32 = a1;
  v33 = a2;
  if (!sub_2CE100(a2, (a1 + v28 + *(a1 + v28)), 4uLL, 0))
  {
    return 0;
  }

  a1 = v32;
  v15 = -*v32;
  a2 = v33;
LABEL_52:
  v34 = (a1 + v15);
  if (*v34 < 9u)
  {
    v36 = a1;
    v35 = 0;
  }

  else
  {
    v35 = v34[4];
    v36 = a1;
    if (v35)
    {
      v35 = (v35 + a1 + *(v35 + a1));
    }
  }

  v37 = a2;
  if (!sub_2F8330(a2, v35) || !sub_2CDF90(v36, v37, 0xAu))
  {
    return 0;
  }

  v38 = v36;
  v39 = *v36;
  v40 = -v39;
  v41 = (v36 - v39);
  if (*v41 < 0xBu)
  {
LABEL_63:
    v43 = v37;
    goto LABEL_64;
  }

  v42 = v41[5];
  v43 = v37;
  if (v42)
  {
    if (!sub_2CE100(v37, (v36 + v42 + *(v36 + v42)), 4uLL, 0))
    {
      return 0;
    }

    v38 = v36;
    v40 = -*v36;
    goto LABEL_63;
  }

LABEL_64:
  v44 = (v38 + v40);
  if (*v44 >= 0xBu && (v45 = v44[5]) != 0)
  {
    v46 = v38;
    v47 = (v38 + v45 + *(v38 + v45));
  }

  else
  {
    v46 = v38;
    v47 = 0;
  }

  if (!sub_2F83BC(v43, v47) || !sub_2CDF90(v46, v37, 0xCu))
  {
    return 0;
  }

  v48 = v46;
  v49 = *v46;
  v50 = -v49;
  v51 = (v46 - v49);
  if (*v51 < 0xDu)
  {
LABEL_74:
    v53 = v37;
    goto LABEL_75;
  }

  v52 = v51[6];
  v53 = v37;
  if (v52)
  {
    if (!sub_2CE100(v37, (v46 + v52 + *(v46 + v52)), 4uLL, 0))
    {
      return 0;
    }

    v48 = v46;
    v50 = -*v46;
    goto LABEL_74;
  }

LABEL_75:
  v54 = (v48 + v50);
  if (*v54 >= 0xDu && (v55 = v54[6]) != 0)
  {
    v56 = v48;
    v57 = (v48 + v55 + *(v48 + v55));
  }

  else
  {
    v56 = v48;
    v57 = 0;
  }

  if (!sub_2F8448(v53, v57) || !sub_2CDF90(v56, v37, 0xEu))
  {
    return 0;
  }

  v58 = (v56 - *v56);
  if (*v58 >= 0xFu && (v59 = v58[7]) != 0)
  {
    v60 = (v56 + v59 + *(v56 + v59));
  }

  else
  {
    v60 = 0;
  }

  if (!sub_2D986C(v37, v60))
  {
    return 0;
  }

  v61 = (v56 - *v56);
  if (*v61 >= 0xFu && (v62 = v61[7]) != 0)
  {
    v63 = (v56 + v62 + *(v56 + v62));
  }

  else
  {
    v63 = 0;
  }

  if (!sub_2F84D4(v37, v63) || !sub_2CDF90(v56, v37, 0x10u))
  {
    return 0;
  }

  v64 = (v56 - *v56);
  if (*v64 >= 0x11u && (v65 = v64[8]) != 0)
  {
    v66 = (v56 + v65 + *(v56 + v65));
  }

  else
  {
    v66 = 0;
  }

  if (!sub_2D986C(v37, v66))
  {
    return 0;
  }

  v67 = (v56 - *v56);
  if (*v67 >= 0x11u && (v68 = v67[8]) != 0)
  {
    v69 = (v56 + v68 + *(v56 + v68));
  }

  else
  {
    v69 = 0;
  }

  if (!sub_2F84D4(v37, v69) || !sub_2CDF90(v56, v37, 0x12u))
  {
    return 0;
  }

  v70 = (v56 - *v56);
  if (*v70 >= 0x13u && (v71 = v70[9]) != 0)
  {
    v72 = (v56 + v71 + *(v56 + v71));
  }

  else
  {
    v72 = 0;
  }

  if (!sub_2D986C(v37, v72))
  {
    return 0;
  }

  v73 = (v56 - *v56);
  if (*v73 >= 0x13u && (v74 = v73[9]) != 0)
  {
    v75 = (v56 + v74 + *(v56 + v74));
  }

  else
  {
    v75 = 0;
  }

  if (!sub_2F84D4(v37, v75) || !sub_2CDF90(v56, v37, 0x14u))
  {
    return 0;
  }

  v76 = *v56;
  v77 = -v76;
  if (*(v56 - v76) >= 0x15u && *(v56 - v76 + 20))
  {
    if (!sub_2CE100(v37, (v56 + *(v56 - v76 + 20) + *(v56 + *(v56 - v76 + 20))), 4uLL, 0))
    {
      return 0;
    }

    v77 = -*v56;
  }

  v78 = (v56 + v77);
  if (*v78 >= 0x15u && (v79 = v78[10]) != 0)
  {
    v80 = (v56 + v79 + *(v56 + v79));
  }

  else
  {
    v80 = 0;
  }

  if (!sub_2F8560(v37, v80))
  {
    return 0;
  }

  if (!sub_2CDF90(v56, v37, 0x16u))
  {
    return 0;
  }

  v81 = (v56 - *v56);
  if (*v81 >= 0x17u)
  {
    v82 = v81[11];
    if (v82)
    {
      if (!sub_2F9D34((v56 + v82 + *(v56 + v82)), v37))
      {
        return 0;
      }
    }
  }

  if (!sub_2CDF90(v56, v37, 0x18u))
  {
    return 0;
  }

  v83 = *v56;
  v84 = -v83;
  if (*(v56 - v83) < 0x19u || !*(v56 - v83 + 24))
  {
    goto LABEL_132;
  }

  if (!sub_2CE100(v37, (v56 + *(v56 - v83 + 24) + *(v56 + *(v56 - v83 + 24))), 4uLL, 0))
  {
    return 0;
  }

  v84 = -*v56;
LABEL_132:
  v85 = (v56 + v84);
  if (*v85 >= 0x19u && (v86 = v85[12]) != 0)
  {
    v87 = (v56 + v86 + *(v56 + v86));
  }

  else
  {
    v87 = 0;
  }

  if (!sub_2F86CC(v37, v87))
  {
    return 0;
  }

  --v37[5].i32[0];
  return 1;
}

BOOL sub_2F8330(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2F936C((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL sub_2F83BC(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2F94A0((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2F8448(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2F95DC((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2F84D4(uint32x2_t *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2F9B88((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2F8560(uint32x2_t *a1, unsigned int *a2)
{
  if (a2 && (v2 = *a2, v2))
  {
    v3 = 0;
    v4 = a2 - *a1 + 4;
    v5 = 4 * v2;
    while (1)
    {
      v6 = &a2[v3 / 4];
      v7 = a2[v3 / 4 + 1];
      v8 = v4 + v3 + v7;
      if (v8 & 3) != 0 && (a1[3].i8[0])
      {
        break;
      }

      v9 = a1[1];
      v10 = v9 - 4;
      if (v9 < 5 || v10 < v8)
      {
        break;
      }

      v12 = v6 + v7;
      v13 = *(v6 + v7 + 4);
      v14 = a1[5];
      v15 = vadd_s32(v14, 0x100000001);
      a1[5] = v15;
      v16 = vcgt_u32(v15, a1[2]);
      if ((v16.i32[0] | v16.i32[1]))
      {
        break;
      }

      v17 = v7 - v13;
      v18 = v4 + v3 + v7 - v13;
      if (v18)
      {
        v19 = 0;
        if ((a1[3].i8[0] & 1) != 0 || v9 - 2 < v18)
        {
          return v19;
        }
      }

      else if (v9 - 2 < v18)
      {
        return 0;
      }

      v20 = *(a2 + v17 + v3 + 4);
      if (v20)
      {
        return 0;
      }

      if (v9 <= v20 || v9 - v20 < v18)
      {
        break;
      }

      v22 = &a2[v3 / 4] + v7 - *(v12 + 1);
      if (*(v22 + 2) >= 5u)
      {
        v23 = *(v22 + 4);
        if (v23)
        {
          v24 = v4 + v3 + v7 + v23;
          if ((v24 & 3) != 0)
          {
            v19 = 0;
            if (v10 < v24 || (a1[3].i8[0] & 1) != 0)
            {
              return v19;
            }
          }

          else if (v10 < v24)
          {
            return 0;
          }
        }
      }

      a1[5].i32[0] = v14.i32[0];
      v3 += 4;
      if (v5 == v3)
      {
        return 1;
      }
    }

    return 0;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2F86CC(uint32x2_t *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2FA188((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2F8758(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 >= 5)
  {
    v16 = v14[2];
    if (v14[2])
    {
      v17 = &v3[v16];
      if ((&v3[v16] & 3) != 0)
      {
        if (v5 < v17 || (*(a2 + 24) & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v17)
      {
        return 0;
      }
    }

    if (v15 >= 7)
    {
      v18 = v14[3];
      if (v14[3])
      {
        v19 = &v3[v18];
        if ((&v3[v18] & 3) != 0)
        {
          if (v5 < v19 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v19)
        {
          return 0;
        }
      }

      if (v15 >= 9)
      {
        if (v14[4] && v4 - 1 < &v3[v14[4]])
        {
          return 0;
        }

        if (v15 >= 0xB)
        {
          v20 = v14[5];
          if (v14[5])
          {
            v21 = &v3[v20];
            if ((&v3[v20] & 3) != 0)
            {
              if (v5 < v21 || (*(a2 + 24) & 1) != 0)
              {
                return 0;
              }
            }

            else if (v5 < v21)
            {
              return 0;
            }
          }

          if (v15 >= 0xD && v14[6])
          {
            v22 = &v3[v14[6]];
            if ((v22 & 3) != 0)
            {
              if (v5 < v22 || (*(a2 + 24) & 1) != 0)
              {
                return 0;
              }
            }

            else if (v5 < v22)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  if (sub_2DAD14(a1, a2, 0xEu, 4) && sub_2DAD14(a1, a2, 0x10u, 4))
  {
    v25 = (a1 - *a1);
    v26 = *v25;
    if (v26 < 0x13 || (!v25[9] || (v27 = *(a2 + 8), v27 >= 2) && v27 - 1 >= a1 + v25[9] - *a2) && (v26 < 0x15 || (v28 = v25[10]) == 0 || (v29 = *(a2 + 8), v29 >= 2) && v29 - 1 >= a1 + v28 - *a2))
    {
      if (sub_2DAD14(a1, a2, 0x16u, 4))
      {
        --*(a2 + 40);
        return 1;
      }

      return 0;
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2F8A5C(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = (a1 - v15);
    if (*v17 < 5u)
    {
      goto LABEL_48;
    }

    v18 = v17[2];
    if (!v17[2])
    {
      goto LABEL_48;
    }

    v19 = &v3[v18];
    if ((v19 & 3) != 0)
    {
      v13 = 0;
      if (v5 < v19 || (*(a2 + 24) & 1) != 0)
      {
        return v13;
      }
    }

    else if (v5 < v19)
    {
      return 0;
    }

    v20 = *(v2 + v19);
    if (v20 >= 1 && v4 - 1 >= v19 + v20)
    {
      v21 = (a1 + v18);
      v22 = (a1 + v18 + *(a1 + v18));
      v23 = v22 - v2;
      if ((v23 & 3) != 0)
      {
        v13 = 0;
        if (v5 < v23 || (*(a2 + 24) & 1) != 0)
        {
          return v13;
        }

        goto LABEL_37;
      }

      if (v5 >= v23)
      {
LABEL_37:
        v24 = *v22;
        if (v24 > 0x1FFFFFFE)
        {
          return 0;
        }

        v25 = 4 * v24 + 4;
        v6 = v4 >= v25;
        v26 = v4 - v25;
        if (v26 == 0 || !v6 || v26 < v23)
        {
          return 0;
        }

        v28 = (v21 + *v21);
        if (*v28)
        {
          v29 = a1;
          v30 = 0;
          v31 = v28 + 1;
          while (1)
          {
            v32 = a2;
            if ((sub_2F8E08((v31 + *v31), a2) & 1) == 0)
            {
              return 0;
            }

            ++v30;
            ++v31;
            a2 = v32;
            if (v30 >= *v28)
            {
              a1 = v29;
              v16 = -*v29;
              break;
            }
          }
        }

LABEL_48:
        v33 = a1 + v16;
        if (*(a1 + v16) < 7u)
        {
          goto LABEL_83;
        }

        v34 = *(v33 + 3);
        if (!*(v33 + 3))
        {
          goto LABEL_83;
        }

        v35 = a1 + v34 - *a2;
        if ((v35 & 3) == 0 || (*(a2 + 24) & 1) == 0)
        {
          v13 = 0;
          v36 = *(a2 + 8);
          if (v36 < 5 || v36 - 4 < v35)
          {
            return v13;
          }

          v37 = *(*a2 + v35);
          if (v37 >= 1 && v36 - 1 >= v35 + v37)
          {
            v38 = (a1 + v34 + *(a1 + v34));
            v39 = v38 - *a2;
            if ((v39 & 3) == 0 || (*(a2 + 24) & 1) == 0)
            {
              v13 = 0;
              v40 = *(a2 + 8);
              if (v40 < 5 || v40 - 4 < v39)
              {
                return v13;
              }

              v41 = *v38;
              if (v41 <= 0xFFFFFFE)
              {
                v42 = (8 * v41) | 4;
                v6 = v40 >= v42;
                v43 = v40 - v42;
                if (v43 != 0 && v6 && v43 >= v39)
                {
LABEL_83:
                  v45 = a1;
                  v46 = a2;
                  if (sub_2CDF90(a1, a2, 8u))
                  {
                    v47 = (v45 - *v45);
                    if (*v47 < 9u)
                    {
                      v50 = 0;
                      v49 = v46;
                    }

                    else
                    {
                      v48 = v47[4];
                      v49 = v46;
                      v50 = v48 ? (v45 + v48 + *(v45 + v48)) : 0;
                    }

                    if (sub_2CE170(v49, v50) && sub_2CDF90(v45, v46, 0xAu))
                    {
                      v51 = (v45 - *v45);
                      if (*v51 < 0xBu)
                      {
                        v54 = 0;
                        v53 = v46;
                      }

                      else
                      {
                        v52 = v51[5];
                        v53 = v46;
                        v54 = v52 ? (v45 + v52 + *(v45 + v52)) : 0;
                      }

                      if (sub_2CE170(v53, v54))
                      {
                        --*(v46 + 40);
                        return 1;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2F8E08(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((*(a2 + 24) & 1) == 0 && v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 < 5)
  {
    goto LABEL_67;
  }

  v16 = v14[2];
  if (v14[2])
  {
    v17 = &v3[v16];
    if ((&v3[v16] & 3) != 0)
    {
      if (v5 < v17 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v17)
    {
      return 0;
    }

    v18 = *&v17[v2];
    if (v18 < 1 || v4 - 1 < &v17[v18])
    {
      return 0;
    }

    v19 = (a1 + v16 + *(a1 + v16));
    v20 = v19 - v2;
    if (((v19 - v2) & 3) != 0)
    {
      if (v5 < v20 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v20)
    {
      return 0;
    }

    v21 = *v19;
    if (v21 > 0xFFFFFFE)
    {
      return 0;
    }

    v22 = (8 * v21) | 4;
    v6 = v4 >= v22;
    v23 = v4 - v22;
    if (v23 == 0 || !v6 || v23 < v20)
    {
      return 0;
    }
  }

  if (v15 < 7)
  {
    goto LABEL_67;
  }

  v25 = v14[3];
  if (v14[3])
  {
    v26 = &v3[v25];
    if ((&v3[v25] & 3) != 0)
    {
      if (v5 < v26 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v26)
    {
      return 0;
    }

    v27 = *&v26[v2];
    if (v27 < 1 || v4 - 1 < &v26[v27])
    {
      return 0;
    }

    v28 = (a1 + v25 + *(a1 + v25));
    v29 = v28 - v2;
    if (((v28 - v2) & 3) != 0)
    {
      if (v5 < v29 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v29)
    {
      return 0;
    }

    if (*v28 > 0xAAAAAA9u)
    {
      return 0;
    }

    v30 = 12 * *v28 + 4;
    v6 = v4 >= v30;
    v31 = v4 - v30;
    if (v31 == 0 || !v6 || v31 < v29)
    {
      return 0;
    }
  }

  if (v15 >= 9 && (v33 = v14[4]) != 0)
  {
    v34 = &v3[v33];
    if ((v34 & 3) != 0)
    {
      if (v5 < v34 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }

LABEL_85:
      v46 = *(v2 + v34);
      if (v46 < 1)
      {
        return 0;
      }

      if (v4 - 1 < v34 + v46)
      {
        return 0;
      }

      v35 = a1;
      v36 = a2;
      if (!sub_2F9304(a2, (a1 + v33 + *(a1 + v33))))
      {
        return 0;
      }

      goto LABEL_68;
    }

    if (v5 >= v34)
    {
      goto LABEL_85;
    }
  }

  else
  {
LABEL_67:
    v35 = a1;
    v36 = a2;
    if (sub_2F9304(a2, 0))
    {
LABEL_68:
      v37 = (v35 - *v35);
      v38 = *v37;
      if (v38 < 0xB || (!v37[5] || (v39 = v36[1], v39 >= 2) && v39 - 1 >= v35 + v37[5] - *v36) && (v38 < 0xD || (v40 = v37[6]) == 0 || (v41 = v36[1], v41 >= 2) && v41 - 1 >= v35 + v40 - *v36))
      {
        if (!sub_2D8DE0(v35, v36, 0xEu, 2) || !sub_2DAD14(v35, v36, 0x10u, 4) || !sub_2DAD14(v35, v36, 0x12u, 4) || !sub_2CDF90(v35, v36, 0x14u))
        {
          return 0;
        }

        v42 = (v35 - *v35);
        if (*v42 < 0x15u)
        {
          v45 = 0;
          v44 = v36;
        }

        else
        {
          v43 = v42[10];
          v44 = v36;
          v45 = v43 ? (v35 + v43 + *(v35 + v43)) : 0;
        }

        if (!sub_2D986C(v44, v45) || !sub_2CDF90(v35, v36, 0x16u))
        {
          return 0;
        }

        v47 = (v35 - *v35);
        if (*v47 >= 0x17u && (v48 = v47[11]) != 0)
        {
          v49 = (v35 + v48 + *(v35 + v48));
        }

        else
        {
          v49 = 0;
        }

        if (!sub_2D986C(v36, v49))
        {
          return 0;
        }

        v50 = (v35 - *v35);
        v51 = v36;
        if (*v50 < 0x19u || !v50[12] || (v52 = v36[1], v52 >= 2) && (v51 = v36, v52 - 1 >= v35 + v50[12] - *v36))
        {
          --*(v51 + 10);
          return 1;
        }
      }

      return 0;
    }
  }

  return 0;
}

BOOL sub_2F9304(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2 - *a1;
  if (v2 & 3) != 0 && (*(a1 + 24))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3 < 5 || v3 - 4 < v2)
  {
    return 0;
  }

  v5 = *a2;
  if (v5 > 0x7FFFFFE)
  {
    return 0;
  }

  v6 = (16 * v5) | 4;
  v7 = v3 > v6;
  v8 = v3 - v6;
  return v7 && v8 >= v2;
}

BOOL sub_2F936C(int *a1, uint64_t a2)
{
  result = sub_2CDED0(a1, a2);
  if (result)
  {
    v5 = (a1 - *a1);
    if (*v5 < 5u || (v6 = v5[2]) == 0)
    {
LABEL_22:
      --*(a2 + 40);
      return 1;
    }

    v7 = a1 + v6 - *a2;
    if (v7 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v8 = *(a2 + 8);
    if (v8 >= 5 && v8 - 4 >= v7)
    {
      v9 = *(*a2 + v7);
      if (v9 < 1)
      {
        return 0;
      }

      if (v8 - 1 < v7 + v9)
      {
        return 0;
      }

      v10 = (a1 + v6 + *(a1 + v6));
      v11 = v10 - *a2;
      if (v11 & 3) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      result = 0;
      v12 = *(a2 + 8);
      if (v12 >= 5 && v12 - 4 >= v11)
      {
        v13 = *v10;
        if (v13 > 0x7FFFFFE)
        {
          return 0;
        }

        v14 = (16 * v13) | 4;
        v16 = v12 >= v14;
        v15 = v12 - v14;
        v16 = v15 != 0 && v16 && v15 >= v11;
        if (!v16)
        {
          return 0;
        }

        goto LABEL_22;
      }
    }
  }

  return result;
}

BOOL sub_2F94A0(int *a1, uint64_t a2)
{
  result = sub_2CDED0(a1, a2);
  if (result)
  {
    v5 = (a1 - *a1);
    if (*v5 < 5u || (v6 = v5[2]) == 0)
    {
LABEL_22:
      --*(a2 + 40);
      return 1;
    }

    v7 = a1 + v6 - *a2;
    if (v7 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v8 = *(a2 + 8);
    if (v8 >= 5 && v8 - 4 >= v7)
    {
      v9 = *(*a2 + v7);
      if (v9 < 1)
      {
        return 0;
      }

      if (v8 - 1 < v7 + v9)
      {
        return 0;
      }

      v10 = (a1 + v6 + *(a1 + v6));
      v11 = v10 - *a2;
      if (v11 & 3) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      result = 0;
      v12 = *(a2 + 8);
      if (v12 >= 5 && v12 - 4 >= v11)
      {
        v13 = *v10;
        if (v13 > 0xAAAAAA9)
        {
          return 0;
        }

        v14 = 12 * v13 + 4;
        v15 = v12 > v14;
        v16 = v12 - v14;
        if (!v15 || v16 < v11)
        {
          return 0;
        }

        goto LABEL_22;
      }
    }
  }

  return result;
}

uint64_t sub_2F95DC(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(*&v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 >= 5)
  {
    v17 = v14[2];
    if (v14[2])
    {
      v18 = &v3[v17];
      if ((&v3[v17] & 3) != 0)
      {
        if (v5 < v18 || (*(a2 + 24) & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v18)
      {
        return 0;
      }
    }

    if (v15 >= 7)
    {
      v19 = v14[3];
      if (v14[3])
      {
        v20 = &v3[v19];
        if ((&v3[v19] & 3) != 0)
        {
          if (v5 < v20 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v20)
        {
          return 0;
        }

        v21 = *&v20[*&v2];
        if (v21 < 1 || v4 - 1 < &v20[v21])
        {
          return 0;
        }

        v22 = (a1 + v19 + *(a1 + v19));
        v23 = v22 - *&v2;
        if (((v22 - *&v2) & 3) != 0)
        {
          if (v5 < v23 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v23)
        {
          return 0;
        }

        if (*v22 > 0xAAAAAA9u)
        {
          return 0;
        }

        v24 = 12 * *v22 + 4;
        v6 = v4 >= v24;
        v25 = v4 - v24;
        if (v25 == 0 || !v6 || v25 < v23)
        {
          return 0;
        }
      }

      if (v15 >= 9)
      {
        v27 = v14[4];
        if (v27)
        {
          v28 = &v3[v27];
          if ((v28 & 3) != 0)
          {
            if (v5 < v28 || (*(a2 + 24) & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v28)
          {
            return 0;
          }

          v29 = *(*&v2 + v28);
          if (v29 < 1 || v4 - 1 < v28 + v29)
          {
            return 0;
          }

          v30 = (a1 + v27 + *(a1 + v27));
          v31 = v30 - *&v2;
          if ((v31 & 3) != 0)
          {
            if (v5 < v31 || (*(a2 + 24) & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v31)
          {
            return 0;
          }

          if (*v30 > 0x6666665u)
          {
            return 0;
          }

          v32 = 20 * *v30 + 4;
          v6 = v4 >= v32;
          v33 = v4 - v32;
          if (v33 == 0 || !v6 || v33 < v31)
          {
            return 0;
          }
        }
      }
    }
  }

  if (sub_2CDF90(a1, a2, 0xAu))
  {
    v36 = (a1 - *a1);
    if (*v36 < 0xBu)
    {
      v39 = 0;
      v38 = a2;
    }

    else
    {
      v37 = v36[5];
      v38 = a2;
      v39 = v37 ? (a1 + v37 + *(a1 + v37)) : 0;
    }

    if (sub_2CE170(v38, v39) && sub_2CDF90(a1, a2, 0xCu))
    {
      v40 = (a1 - *a1);
      if (*v40 < 0xDu || (v41 = v40[6]) == 0 || sub_2F9974((a1 + v41 + *(a1 + v41)), a2))
      {
        --*(a2 + 40);
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2F9974(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
    {
      return 0;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  if (v16 >= 5)
  {
    v17 = v15[2];
    if (v15[2])
    {
      v18 = &v3[v17];
      if ((&v3[v17] & 3) != 0)
      {
        if (v5 < v18 || (a2[3].i8[0] & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v18)
      {
        return 0;
      }

      v19 = *&v18[*&v2];
      if (v19 < 1 || v4 - 1 < &v18[v19])
      {
        return 0;
      }

      v20 = (a1 + v17 + *(a1 + v17));
      v21 = v20 - *&v2;
      if ((v21 & 3) != 0)
      {
        if (v5 < v21 || (a2[3].i8[0] & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v21)
      {
        return 0;
      }

      if (*v20 > 0xAAAAAA9u)
      {
        return 0;
      }

      v22 = 12 * *v20 + 4;
      v6 = v4 >= v22;
      v23 = v4 - v22;
      if (v23 == 0 || !v6 || v23 < v21)
      {
        return 0;
      }
    }

    if (v16 >= 7)
    {
      v25 = v15[3];
      if (v15[3])
      {
        v26 = &v3[v25];
        if ((v3 + v25))
        {
          if (v4 - 2 < v26 || (a2[3].i8[0] & 1) != 0)
          {
            return 0;
          }
        }

        else if (v4 - 2 < v26)
        {
          return 0;
        }
      }

      if (v16 < 9 || !v15[4])
      {
        goto LABEL_55;
      }

      v27 = &v3[v15[4]];
      if (v27)
      {
        if (v4 - 2 >= v27 && (a2[3].i8[0] & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      else if (v4 - 2 >= v27)
      {
        goto LABEL_55;
      }

      return 0;
    }
  }

LABEL_55:
  a2[5].i32[0] = v8.i32[0];
  return 1;
}

uint64_t sub_2F9B88(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v13 = &v3[-v7];
  if (v13)
  {
    result = 0;
    if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v13)
    {
      return result;
    }
  }

  else if (v4 - 2 < v13)
  {
    return 0;
  }

  v14 = *(*&v2 + v13);
  if (v14)
  {
    return 0;
  }

  v6 = v4 >= v14;
  v15 = v4 - v14;
  if (v15 == 0 || !v6 || v15 < v13)
  {
    return 0;
  }

  v17 = (a1 - *a1);
  v18 = *v17;
  if (v18 < 5)
  {
    goto LABEL_46;
  }

  if (!v17[2])
  {
    goto LABEL_36;
  }

  v19 = &v3[v17[2]];
  if (v19 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  result = 0;
  if (v4 >= 9 && v4 - 8 >= v19)
  {
LABEL_36:
    if (v18 >= 7)
    {
      if (v17[3])
      {
        v20 = &v3[v17[3]];
        if ((v20 & 3) != 0)
        {
          result = 0;
          if (v5 < v20 || (a2[3].i8[0] & 1) != 0)
          {
            return result;
          }
        }

        else if (v5 < v20)
        {
          return 0;
        }
      }

      if (v18 >= 9)
      {
        if (v17[4])
        {
          v21 = &v3[v17[4]];
          if ((v21 & 3) != 0)
          {
            result = 0;
            if (v5 < v21 || (a2[3].i8[0] & 1) != 0)
            {
              return result;
            }
          }

          else if (v5 < v21)
          {
            return 0;
          }
        }

        if (v18 < 0xB || !v17[5] || v4 - 1 >= &v3[v17[5]])
        {
          goto LABEL_46;
        }

        return 0;
      }
    }

LABEL_46:
    a2[5].i32[0] = v8.i32[0];
    return 1;
  }

  return result;
}

uint64_t sub_2F9D34(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v9 = a2[5].i32[0];
  v8 = a2[5].i32[1];
  v10 = v9 + 1;
  a2[5].i32[0] = v9 + 1;
  a2[5].i32[1] = v8 + 1;
  v11 = a2[2].u32[0];
  v12 = a2[2].u32[1];
  if (v9 + 1 > v11 || v8 + 1 > v12)
  {
    return 0;
  }

  v15 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v15)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v15)
  {
    return 0;
  }

LABEL_19:
  v16 = *(*&v2 + v15);
  if ((v16 & 1) == 0)
  {
    if (v4 <= v16 || v4 - v16 < v15)
    {
      return 0;
    }

    v19 = *a1;
    v20 = -v19;
    v21 = (a1 - v19);
    if (*v21 >= 5u)
    {
      v22 = v21[2];
      if (v21[2])
      {
        v23 = &v3[v22];
        if ((&v3[v22] & 3) != 0)
        {
          v17 = 0;
          if (v5 < v23 || (a2[3].i8[0] & 1) != 0)
          {
            return v17;
          }
        }

        else if (v5 < v23)
        {
          return 0;
        }

        v24 = *&v23[*&v2];
        if (v24 < 1 || v4 - 1 < &v23[v24])
        {
          return 0;
        }

        v25 = (a1 + v22);
        v26 = (a1 + v22 + *(a1 + v22));
        v27 = v26 - *&v2;
        if (((v26 - *&v2) & 3) != 0)
        {
          v17 = 0;
          if (v5 < v27 || (a2[3].i8[0] & 1) != 0)
          {
            return v17;
          }
        }

        else if (v5 < v27)
        {
          return 0;
        }

        v28 = *v26;
        if (v28 > 0x1FFFFFFE)
        {
          return 0;
        }

        v29 = 4 * v28 + 4;
        v6 = v4 >= v29;
        v30 = v4 - v29;
        if (v30 == 0 || !v6 || v30 < v27)
        {
          return 0;
        }

        v32 = *v25;
        v33 = (v25 + v32);
        v34 = *v33;
        if (v34)
        {
          v35 = a2[3].i8[0];
          v36 = v9 + 2;
          if (v36 <= v11)
          {
            v38 = 0;
            v39 = v4 - 2;
            v40 = v35 ^ 1;
            v41 = v8 + 2;
            v42 = 4 * v34;
            v43 = a1 + v22 + v32;
            v44 = &v43[-*&v2 + 4];
            v45 = a1 + v32 + v22 + 4;
            while (1)
            {
              v17 = 0;
              v46 = *&v43[v38 + 4];
              v47 = v44 + v38 + v46;
              if (!(((v47 & 3) == 0) | v40 & 1) || v5 < v47)
              {
                break;
              }

              v48 = &v33[v38 / 4] + v46;
              v49 = *(v48 + 1);
              a2[5].i32[0] = v36;
              a2[5].i32[1] = v41;
              if (v41 > v12)
              {
                return 0;
              }

              v50 = v46 - v49;
              v51 = v44 + v38 + v46 - v49;
              if (v51)
              {
                v17 = 0;
                if ((v35 & 1) != 0 || v39 < v51)
                {
                  return v17;
                }
              }

              else if (v39 < v51)
              {
                return 0;
              }

              v52 = *(v45 + v50 + v38);
              if (v52)
              {
                return 0;
              }

              if (v4 <= v52 || v4 - v52 < v51)
              {
                return 0;
              }

              v54 = &v43[v38 + v46 - *(v48 + 1)];
              if (*(v54 + 2) >= 5u)
              {
                v55 = *(v54 + 4);
                if (*(v54 + 4))
                {
                  v17 = 0;
                  v56 = v44 + v38 + v46 + v55;
                  if (!(((v56 & 3) == 0) | v40 & 1) || v5 < v56)
                  {
                    return v17;
                  }
                }
              }

              a2[5].i32[0] = v10;
              ++v41;
              v38 += 4;
              if (v42 == v38)
              {
                v20 = -*a1;
                goto LABEL_75;
              }
            }
          }

          else
          {
            v17 = 0;
            v37 = v33 + v33[1] - *&v2 + 4;
            if (((v37 & 3) == 0 || (v35 & 1) == 0) && v5 >= v37)
            {
              v17 = 0;
              a2[5].i32[0] = v36;
              a2[5].i32[1] = v8 + 2;
            }
          }

          return v17;
        }
      }
    }

LABEL_75:
    v57 = a1 + v20;
    if (*(a1 + v20) >= 7u && (v58 = *(v57 + 3), *(v57 + 3)))
    {
      v59 = &v3[v58];
      if ((v59 & 3) != 0)
      {
        v17 = 0;
        if (v5 < v59 || (a2[3].i8[0] & 1) != 0)
        {
          return v17;
        }
      }

      else if (v5 < v59)
      {
        return 0;
      }

      v61 = *(*&v2 + v59);
      if (v61 < 1 || v4 - 1 < v59 + v61)
      {
        return 0;
      }

      v62 = (a1 + v58);
      v63 = (a1 + v58 + *(a1 + v58));
      v64 = v63 - *&v2;
      if ((v64 & 3) != 0)
      {
        v17 = 0;
        if (v5 < v64 || (a2[3].i8[0] & 1) != 0)
        {
          return v17;
        }
      }

      else if (v5 < v64)
      {
        return 0;
      }

      v65 = *v63;
      if (v65 <= 0x1FFFFFFE)
      {
        v66 = 4 * v65 + 4;
        v6 = v4 >= v66;
        v67 = v4 - v66;
        if (v67 != 0 && v6 && v67 >= v64)
        {
          v60 = a2;
          if (sub_2F8560(a2, (v62 + *v62)))
          {
            goto LABEL_82;
          }
        }
      }
    }

    else
    {
      v60 = a2;
      if (sub_2F8560(a2, 0))
      {
LABEL_82:
        --v60[5].i32[0];
        return 1;
      }
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2FA188(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v12)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = v8.i32[0];
  if (*v15 < 5u)
  {
    goto LABEL_46;
  }

  v17 = v15[2];
  if (!v15[2])
  {
    goto LABEL_46;
  }

  v18 = &v3[v17];
  if ((v18 & 3) != 0)
  {
    if (v5 < v18 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v18)
  {
    return 0;
  }

  v19 = *(*&v2 + v18);
  if (v19 < 1 || v4 - 1 < v18 + v19)
  {
    return 0;
  }

  v20 = (a1 + v17);
  v21 = (a1 + v17 + *(a1 + v17));
  v22 = v21 - *&v2;
  if ((v22 & 3) != 0)
  {
    if (v5 < v22 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }

    goto LABEL_35;
  }

  if (v5 < v22)
  {
    return 0;
  }

LABEL_35:
  v23 = *v21;
  if (v23 > 0x1FFFFFFE)
  {
    return 0;
  }

  v24 = 4 * v23 + 4;
  v6 = v4 >= v24;
  v25 = v4 - v24;
  if (v25 == 0 || !v6 || v25 < v22)
  {
    return 0;
  }

  v27 = (v20 + *v20);
  if (*v27)
  {
    v28 = 0;
    v29 = v27 + 1;
    while (1)
    {
      v30 = a2;
      if (!sub_2F94A0((v29 + *v29), a2))
      {
        return 0;
      }

      ++v28;
      ++v29;
      a2 = v30;
      if (v28 >= *v27)
      {
        v16 = v30[5].i32[0] - 1;
        break;
      }
    }
  }

LABEL_46:
  a2[5].i32[0] = v16;
  return 1;
}

uint64_t sub_2FA3D4(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = (a1 - v15);
    if (*v17 >= 5u)
    {
      v18 = v17[2];
      if (v18)
      {
        v19 = &v3[v18];
        if ((v19 & 3) != 0)
        {
          v13 = 0;
          if (v5 < v19 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v19)
        {
          return 0;
        }

        v20 = *(v2 + v19);
        if (v20 < 1)
        {
          return 0;
        }

        if (v4 - 1 < v19 + v20)
        {
          return 0;
        }

        v21 = a1;
        v22 = a2;
        if (!sub_2FA854((a1 + v18 + *(a1 + v18)), a2))
        {
          return 0;
        }

        a1 = v21;
        v16 = -*v21;
        a2 = v22;
      }
    }

    v23 = (a1 + v16);
    if (*v23 >= 7u)
    {
      v24 = v23[3];
      if (v23[3])
      {
        v25 = a1 + v24 - *a2;
        if (v25 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        v26 = *(a2 + 8);
        if (v26 < 5 || v26 - 4 < v25)
        {
          return v13;
        }

        v27 = *(*a2 + v25);
        if (v27 < 1)
        {
          return 0;
        }

        if (v26 - 1 < v25 + v27)
        {
          return 0;
        }

        v28 = (a1 + v24);
        v29 = (v28 + *v28);
        v30 = v29 - *a2;
        if (v30 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        v31 = *(a2 + 8);
        if (v31 < 5 || v31 - 4 < v30)
        {
          return v13;
        }

        v32 = *v29;
        if (v32 > 0x1FFFFFFE)
        {
          return 0;
        }

        v33 = 4 * v32 + 4;
        v6 = v31 >= v33;
        v34 = v31 - v33;
        if (v34 == 0 || !v6 || v34 < v30)
        {
          return 0;
        }

        v36 = (v28 + *v28);
        if (*v36)
        {
          v37 = 0;
          v38 = v36 + 1;
          do
          {
            v39 = a1;
            v40 = a2;
            if ((sub_2FAB2C((v38 + *v38), a2) & 1) == 0)
            {
              return 0;
            }

            ++v37;
            ++v38;
            a2 = v40;
            a1 = v39;
          }

          while (v37 < *v36);
        }
      }
    }

    v41 = a1;
    v42 = a2;
    if (!sub_2CDF90(a1, a2, 8u))
    {
      return 0;
    }

    v43 = v41;
    v44 = *v41;
    v45 = -v44;
    v46 = (v41 - v44);
    if (*v46 >= 9u)
    {
      v47 = v46[4];
      v48 = v42;
      if (!v47)
      {
        goto LABEL_62;
      }

      if (!sub_2CE100(v42, (v41 + v47 + *(v41 + v47)), 4uLL, 0))
      {
        return 0;
      }

      v43 = v41;
      v45 = -*v41;
    }

    v48 = v42;
LABEL_62:
    v49 = (v43 + v45);
    if (*v49 >= 9u && (v50 = v49[4]) != 0)
    {
      v51 = (v43 + v50 + *(v43 + v50));
    }

    else
    {
      v51 = 0;
    }

    if (!sub_2FA7C8(v48, v51) || !sub_2CDF90(v41, v42, 0xAu))
    {
      return 0;
    }

    v52 = v41;
    v53 = *v41;
    v54 = -v53;
    v55 = (v41 - v53);
    if (*v55 < 0xBu)
    {
      goto LABEL_72;
    }

    v56 = v55[5];
    v57 = v42;
    if (!v56)
    {
LABEL_73:
      v58 = (v52 + v54);
      if (*v58 >= 0xBu && (v59 = v58[5]) != 0)
      {
        v60 = (v52 + v59 + *(v52 + v59));
      }

      else
      {
        v60 = 0;
      }

      if (sub_2CE014(v57, v60))
      {
        --*(v42 + 40);
        return 1;
      }

      return 0;
    }

    if (sub_2CE100(v42, (v41 + v56 + *(v41 + v56)), 4uLL, 0))
    {
      v52 = v41;
      v54 = -*v41;
LABEL_72:
      v57 = v42;
      goto LABEL_73;
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2FA7C8(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2FB174((v5 + *v5), a1);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

uint64_t sub_2FA854(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 >= 5)
  {
    v16 = v14[2];
    if (v14[2])
    {
      v17 = &v3[v16];
      if ((&v3[v16] & 3) != 0)
      {
        if (v5 < v17 || (*(a2 + 24) & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v17)
      {
        return 0;
      }
    }

    if (v15 >= 7)
    {
      v18 = v14[3];
      if (v14[3])
      {
        v19 = &v3[v18];
        if ((&v3[v18] & 3) != 0)
        {
          if (v5 < v19 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v19)
        {
          return 0;
        }
      }

      if (v15 >= 9)
      {
        if (v14[4] && v4 - 1 < &v3[v14[4]])
        {
          return 0;
        }

        if (v15 >= 0xB)
        {
          v20 = v14[5];
          if (!v14[5])
          {
LABEL_57:
            if (v15 >= 0xD && v14[6] && v4 - 1 < &v3[v14[6]])
            {
              return 0;
            }

            goto LABEL_60;
          }

          v21 = &v3[v20];
          if ((&v3[v20] & 3) != 0)
          {
            if (v5 < v21 || (*(a2 + 24) & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v21)
          {
            return 0;
          }

          v22 = *&v21[v2];
          if (v22 < 1 || v4 - 1 < &v21[v22])
          {
            return 0;
          }

          v23 = (a1 + v20 + *(a1 + v20));
          v24 = v23 - v2;
          if (((v23 - v2) & 3) != 0)
          {
            if (v5 < v24 || (*(a2 + 24) & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v24)
          {
            return 0;
          }

          v25 = *v23;
          if (v25 > 0x7FFFFFFE)
          {
            return 0;
          }

          v26 = v25 + 4;
          v27 = &v24[v25 + 4];
          if (v4 - 1 >= v27 && v4 > v26 && v4 - v26 >= v24)
          {
            if (*(v2 + v27))
            {
              return 0;
            }

            goto LABEL_57;
          }

          return 0;
        }
      }
    }
  }

LABEL_60:
  if (sub_2DAD14(a1, a2, 0xEu, 4))
  {
    --*(a2 + 40);
    return 1;
  }

  return 0;
}

uint64_t sub_2FAB2C(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(*&v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = (a1 - v15);
    if (*v17 < 5u)
    {
      goto LABEL_48;
    }

    v18 = v17[2];
    if (!v17[2])
    {
      goto LABEL_48;
    }

    v19 = &v3[v18];
    if ((v19 & 3) != 0)
    {
      v13 = 0;
      if (v5 < v19 || (*(a2 + 24) & 1) != 0)
      {
        return v13;
      }
    }

    else if (v5 < v19)
    {
      return 0;
    }

    v20 = *(*&v2 + v19);
    if (v20 >= 1 && v4 - 1 >= v19 + v20)
    {
      v21 = (a1 + v18);
      v22 = (a1 + v18 + *(a1 + v18));
      v23 = v22 - *&v2;
      if ((v23 & 3) != 0)
      {
        v13 = 0;
        if (v5 < v23 || (*(a2 + 24) & 1) != 0)
        {
          return v13;
        }

        goto LABEL_37;
      }

      if (v5 >= v23)
      {
LABEL_37:
        v24 = *v22;
        if (v24 > 0x1FFFFFFE)
        {
          return 0;
        }

        v25 = 4 * v24 + 4;
        v6 = v4 >= v25;
        v26 = v4 - v25;
        if (v26 == 0 || !v6 || v26 < v23)
        {
          return 0;
        }

        v28 = (v21 + *v21);
        if (*v28)
        {
          v44 = a1;
          v29 = 0;
          v30 = v28 + 1;
          while (1)
          {
            v31 = a2;
            if ((sub_2F9B88((v30 + *v30), a2) & 1) == 0)
            {
              return 0;
            }

            ++v29;
            ++v30;
            a2 = v31;
            if (v29 >= *v28)
            {
              a1 = v44;
              v16 = -*v44;
              break;
            }
          }
        }

LABEL_48:
        v32 = a1 + v16;
        if (*(a1 + v16) >= 7u)
        {
          v33 = *(v32 + 3);
          if (*(v32 + 3))
          {
            v34 = a1 + v33 - *a2;
            if (v34 & 3) != 0 && (*(a2 + 24))
            {
              return 0;
            }

            v13 = 0;
            v35 = *(a2 + 8);
            if (v35 < 5 || v35 - 4 < v34)
            {
              return v13;
            }

            v36 = *(*a2 + v34);
            if (v36 < 1 || v35 - 1 < v34 + v36)
            {
              return 0;
            }

            v37 = a2;
            v38 = a1;
            v39 = sub_2CE100(a2, (a1 + v33 + *(a1 + v33)), 1uLL, 0);
            a2 = v37;
            v13 = v39;
            a1 = v38;
            if (!v13)
            {
              return v13;
            }
          }
        }

        v40 = a1;
        v41 = a2;
        if (sub_2CDF90(a1, a2, 8u))
        {
          v42 = (v40 - *v40);
          if (*v42 < 9u || (v43 = v42[4]) == 0 || sub_2FAE38((v40 + v43 + *(v40 + v43)), v41))
          {
            --*(v41 + 40);
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2FAE38(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((*(a2 + 24) & 1) == 0 && v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 < 5)
  {
    goto LABEL_67;
  }

  v16 = v14[2];
  if (v14[2])
  {
    v17 = &v3[v16];
    if ((&v3[v16] & 3) != 0)
    {
      if (v5 < v17 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v17)
    {
      return 0;
    }

    v18 = *&v17[v2];
    if (v18 < 1 || v4 - 1 < &v17[v18])
    {
      return 0;
    }

    v19 = (a1 + v16 + *(a1 + v16));
    v20 = v19 - v2;
    if (((v19 - v2) & 3) != 0)
    {
      if (v5 < v20 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v20)
    {
      return 0;
    }

    v21 = *v19;
    if (v21 > 0x1FFFFFFE)
    {
      return 0;
    }

    v22 = 4 * v21 + 4;
    v6 = v4 >= v22;
    v23 = v4 - v22;
    if (v23 == 0 || !v6 || v23 < v20)
    {
      return 0;
    }
  }

  if (v15 < 7)
  {
    goto LABEL_67;
  }

  v25 = v14[3];
  if (v14[3])
  {
    v26 = &v3[v25];
    if ((&v3[v25] & 3) != 0)
    {
      if (v5 < v26 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v26)
    {
      return 0;
    }

    v27 = *&v26[v2];
    if (v27 < 1 || v4 - 1 < &v26[v27])
    {
      return 0;
    }

    v28 = (a1 + v25 + *(a1 + v25));
    v29 = v28 - v2;
    if (((v28 - v2) & 3) != 0)
    {
      if (v5 < v29 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v29)
    {
      return 0;
    }

    if (*v28 > 0xAAAAAA9u)
    {
      return 0;
    }

    v30 = 12 * *v28 + 4;
    v6 = v4 >= v30;
    v31 = v4 - v30;
    if (v31 == 0 || !v6 || v31 < v29)
    {
      return 0;
    }
  }

  if (v15 >= 9 && (v33 = v14[4]) != 0)
  {
    v34 = &v3[v33];
    if ((v34 & 3) != 0)
    {
      if (v5 < v34 || (*(a2 + 24) & 1) != 0)
      {
        return 0;
      }

LABEL_70:
      v36 = *(v2 + v34);
      if (v36 < 1)
      {
        return 0;
      }

      if (v4 - 1 < v34 + v36)
      {
        return 0;
      }

      v35 = a2;
      if (!sub_2CE170(a2, (a1 + v33 + *(a1 + v33))))
      {
        return 0;
      }

LABEL_68:
      --*(v35 + 40);
      return 1;
    }

    if (v5 >= v34)
    {
      goto LABEL_70;
    }
  }

  else
  {
LABEL_67:
    v35 = a2;
    if (sub_2CE170(a2, 0))
    {
      goto LABEL_68;
    }
  }

  return 0;
}

uint64_t sub_2FB174(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = (a1 - v15);
    if (*v17 >= 5u)
    {
      v18 = v17[2];
      if (v17[2])
      {
        v19 = &v3[v18];
        if ((v19 & 3) != 0)
        {
          v13 = 0;
          if (v5 < v19 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v19)
        {
          return 0;
        }

        v20 = *(v2 + v19);
        if (v20 < 1 || v4 - 1 < v19 + v20)
        {
          return 0;
        }

        v21 = (a1 + v18);
        v22 = (a1 + v18 + *(a1 + v18));
        v23 = v22 - v2;
        if ((v23 & 3) != 0)
        {
          v13 = 0;
          if (v5 < v23 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v23)
        {
          return 0;
        }

        v24 = *v22;
        if (v24 > 0x1FFFFFFE)
        {
          return 0;
        }

        v25 = 4 * v24 + 4;
        v6 = v4 >= v25;
        v26 = v4 - v25;
        if (v26 == 0 || !v6 || v26 < v23)
        {
          return 0;
        }

        v28 = (v21 + *v21);
        if (*v28)
        {
          v46 = a1;
          v29 = 0;
          v30 = v28 + 1;
          while (1)
          {
            v31 = a2;
            if (!sub_2F94A0((v30 + *v30), a2))
            {
              return 0;
            }

            ++v29;
            ++v30;
            a2 = v31;
            if (v29 >= *v28)
            {
              a1 = v46;
              v16 = -*v46;
              break;
            }
          }
        }
      }
    }

    v32 = a1 + v16;
    if (*(a1 + v16) >= 7u)
    {
      v33 = *(v32 + 3);
      if (*(v32 + 3))
      {
        v34 = a1 + v33 - *a2;
        if (v34 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        v35 = *(a2 + 8);
        if (v35 < 5 || v35 - 4 < v34)
        {
          return v13;
        }

        v36 = *(*a2 + v34);
        if (v36 < 1)
        {
          return 0;
        }

        if (v35 - 1 < v34 + v36)
        {
          return 0;
        }

        v37 = (a1 + v33);
        v38 = (v37 + *v37);
        v39 = v38 - *a2;
        if (v39 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        v40 = *(a2 + 8);
        if (v40 < 5 || v40 - 4 < v39)
        {
          return v13;
        }

        v41 = *v38;
        if (v41 > 0x1FFFFFFE)
        {
          return 0;
        }

        v42 = 4 * v41 + 4;
        v6 = v40 >= v42;
        v43 = v40 - v42;
        if (v43 == 0 || !v6 || v43 < v39)
        {
          return 0;
        }

        v45 = a2;
        if (!sub_2F83BC(a2, (v37 + *v37)))
        {
          return 0;
        }

LABEL_69:
        --*(v45 + 40);
        return 1;
      }
    }

    v45 = a2;
    if (sub_2F83BC(a2, 0))
    {
      goto LABEL_69;
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2FB4A0(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = (a1 - v15);
    if (*v17 >= 5u)
    {
      v18 = v17[2];
      if (v18)
      {
        v19 = &v3[v18];
        if ((v19 & 3) != 0)
        {
          v13 = 0;
          if (v5 < v19 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v19)
        {
          return 0;
        }

        v20 = *(v2 + v19);
        if (v20 < 1)
        {
          return 0;
        }

        if (v4 - 1 < v19 + v20)
        {
          return 0;
        }

        v21 = a1;
        v22 = a2;
        if (!sub_2DA2D4((a1 + v18 + *(a1 + v18)), a2))
        {
          return 0;
        }

        a1 = v21;
        v16 = -*v21;
        a2 = v22;
      }
    }

    v23 = (a1 + v16);
    if (*v23 < 7u)
    {
      goto LABEL_56;
    }

    v24 = v23[3];
    if (!v23[3])
    {
      goto LABEL_56;
    }

    v25 = a1 + v24 - *a2;
    if (v25 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    v13 = 0;
    v26 = *(a2 + 8);
    if (v26 < 5 || v26 - 4 < v25)
    {
      return v13;
    }

    v27 = *(*a2 + v25);
    if (v27 < 1)
    {
      return 0;
    }

    if (v26 - 1 < v25 + v27)
    {
      return 0;
    }

    v28 = (a1 + v24);
    v29 = (v28 + *v28);
    v30 = v29 - *a2;
    if (v30 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    v13 = 0;
    v31 = *(a2 + 8);
    if (v31 < 5 || v31 - 4 < v30)
    {
      return v13;
    }

    v32 = *v29;
    if (v32 > 0x1FFFFFFE)
    {
      return 0;
    }

    v33 = 4 * v32 + 4;
    v6 = v31 >= v33;
    v34 = v31 - v33;
    if (v34 == 0 || !v6 || v34 < v30)
    {
      return 0;
    }

    v36 = (v28 + *v28);
    if (!*v36)
    {
LABEL_56:
      v41 = a1;
      v42 = a2;
      if (sub_2CDF90(a1, a2, 8u))
      {
        v43 = (v41 - *v41);
        if (*v43 < 9u)
        {
          v46 = 0;
          v45 = v42;
        }

        else
        {
          v44 = v43[4];
          v45 = v42;
          v46 = v44 ? (v41 + v44 + *(v41 + v44)) : 0;
        }

        if (sub_2DA624(v45, v46))
        {
          --*(v42 + 40);
          return 1;
        }
      }

      return 0;
    }

    v37 = 0;
    v38 = v36 + 1;
    while (1)
    {
      v39 = a1;
      v40 = a2;
      if ((sub_2CDA9C((v38 + *v38), a2) & 1) == 0)
      {
        return 0;
      }

      ++v37;
      ++v38;
      a2 = v40;
      a1 = v39;
      if (v37 >= *v36)
      {
        goto LABEL_56;
      }
    }
  }

  return 0;
}

uint64_t sub_2FB7B8(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5].i32[0];
  v9 = a2[5].i32[1];
  a2[5].i32[0] = v8 + 1;
  a2[5].i32[1] = v9 + 1;
  v11 = a2[2].u32[0];
  v10 = a2[2].u32[1];
  if (v8 + 1 > v11 || v9 + 1 > v10)
  {
    return 0;
  }

  v14 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((a2[3].i8[0] & 1) == 0 && v4 - 2 >= v14)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (v4 - 2 < v14)
  {
    return 0;
  }

LABEL_19:
  v15 = *(*&v2 + v14);
  if (v15)
  {
    return 0;
  }

  if (v4 <= v15 || v4 - v15 < v14)
  {
    return 0;
  }

  v17 = *a1;
  v18 = -v17;
  v19 = (a1 - v17);
  if (*v19 < 5u)
  {
    goto LABEL_53;
  }

  v20 = v19[2];
  if (!v20)
  {
    goto LABEL_53;
  }

  v21 = &v3[v20];
  if ((&v3[v20] & 3) != 0)
  {
    if (v5 < v21 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v21)
  {
    return 0;
  }

  v22 = *&v21[*&v2];
  if (v22 < 1 || v4 - 1 < &v21[v22])
  {
    return 0;
  }

  v23 = (a1 + v20 + *(a1 + v20));
  v24 = v23 - *&v2;
  if (((v23 - *&v2) & 3) != 0)
  {
    if (v5 < v24 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v24)
  {
    return 0;
  }

  v25 = *v23;
  v26 = v9 + 2;
  a2[5].i32[0] = v8 + 2;
  a2[5].i32[1] = v26;
  if (v8 + 2 > v11 || v26 > v10)
  {
    return 0;
  }

  v27 = &v24[-v25];
  if ((v24 - v25))
  {
    if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v27)
    {
      return 0;
    }
  }

  else if (v4 - 2 < v27)
  {
    return 0;
  }

  v28 = *(*&v2 + v27);
  if (v28)
  {
    return 0;
  }

  if (v4 <= v28 || v4 - v28 < v27)
  {
    return 0;
  }

  a2[5].i32[0] = v8 + 1;
  v18 = -*a1;
LABEL_53:
  v30 = (a1 + v18);
  if (*v30 < 7u)
  {
    goto LABEL_78;
  }

  v31 = v30[3];
  if (!v30[3])
  {
    goto LABEL_78;
  }

  v32 = &v3[v31];
  if ((v32 & 3) != 0)
  {
    if (v5 < v32 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v32)
  {
    return 0;
  }

  v33 = *(*&v2 + v32);
  if (v33 < 1 || v4 - 1 < v32 + v33)
  {
    return 0;
  }

  v34 = (a1 + v31);
  v35 = (a1 + v31 + *(a1 + v31));
  v36 = v35 - *&v2;
  if ((v36 & 3) != 0)
  {
    if (v5 < v36 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }

    goto LABEL_67;
  }

  if (v5 < v36)
  {
    return 0;
  }

LABEL_67:
  v37 = *v35;
  if (v37 > 0x1FFFFFFE)
  {
    return 0;
  }

  v38 = 4 * v37 + 4;
  v6 = v4 >= v38;
  v39 = v4 - v38;
  if (v39 == 0 || !v6 || v39 < v36)
  {
    return 0;
  }

  v41 = (v34 + *v34);
  if (*v41)
  {
    v42 = 0;
    v43 = v41 + 1;
    while (1)
    {
      v44 = a2;
      if ((sub_2FBB20((v43 + *v43), a2) & 1) == 0)
      {
        return 0;
      }

      ++v42;
      ++v43;
      a2 = v44;
      if (v42 >= *v41)
      {
        v8 = v44[5].i32[0] - 1;
        break;
      }
    }
  }

LABEL_78:
  a2[5].i32[0] = v8;
  return 1;
}

uint64_t sub_2FBB20(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v12)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(*&v2 + v12);
  if ((v13 & 1) == 0)
  {
    if (v4 <= v13 || v4 - v13 < v12)
    {
      return 0;
    }

    v16 = (a1 - *a1);
    v17 = *v16;
    if (v17 < 5)
    {
      return 0;
    }

    v18 = v16[2];
    if (!v16[2])
    {
      return 0;
    }

    v19 = &v3[v18];
    if ((&v3[v18] & 3) != 0)
    {
      v14 = 0;
      if (v5 < v19 || (a2[3].i8[0] & 1) != 0)
      {
        return v14;
      }
    }

    else if (v5 < v19)
    {
      return 0;
    }

    v20 = *&v19[*&v2];
    if (v20 < 1)
    {
      return 0;
    }

    v21 = &v19[v20];
    v22 = v4 - 1;
    if (v4 - 1 < v21)
    {
      return 0;
    }

    v23 = (a1 + v18 + *(a1 + v18));
    v24 = v23 - *&v2;
    if (((v23 - *&v2) & 3) != 0)
    {
      v14 = 0;
      if (v5 < v24 || (a2[3].i8[0] & 1) != 0)
      {
        return v14;
      }
    }

    else if (v5 < v24)
    {
      return 0;
    }

    v25 = *v23;
    if (v25 > 0x7FFFFFFE)
    {
      return 0;
    }

    v26 = v25 + 4;
    v27 = &v24[v25 + 4];
    v28 = v22 >= v27 && v4 > v26;
    v29 = v28 && v4 - v26 >= v24;
    if (!v29 || v27[*&v2])
    {
      return 0;
    }

    v30 = v8.i32[0];
    if (v17 < 7 || (v31 = v16[3]) == 0)
    {
LABEL_71:
      a2[5].i32[0] = v30;
      return 1;
    }

    v32 = &v3[v31];
    if ((v32 & 3) != 0)
    {
      v14 = 0;
      if (v5 < v32 || (a2[3].i8[0] & 1) != 0)
      {
        return v14;
      }
    }

    else if (v5 < v32)
    {
      return 0;
    }

    v14 = 0;
    v33 = *(*&v2 + v32);
    if (v33 < 1 || v22 < v32 + v33)
    {
      return v14;
    }

    v34 = (a1 + v31);
    v35 = (a1 + v31 + *(a1 + v31));
    v36 = v35 - *&v2;
    if ((v36 & 3) != 0)
    {
      v14 = 0;
      if (v5 < v36 || (a2[3].i8[0] & 1) != 0)
      {
        return v14;
      }
    }

    else if (v5 < v36)
    {
      return 0;
    }

    v37 = *v35;
    if (v37 <= 0x1FFFFFFE)
    {
      v14 = 0;
      v38 = 4 * v37 + 4;
      v28 = v4 > v38;
      v39 = v4 - v38;
      if (!v28 || v39 < v36)
      {
        return v14;
      }

      v40 = (v34 + *v34);
      if (*v40)
      {
        v41 = 0;
        v42 = v40 + 1;
        while ((sub_2FBE10((v42 + *v42), a2) & 1) != 0)
        {
          ++v41;
          ++v42;
          if (v41 >= *v40)
          {
            v30 = a2[5].i32[0] - 1;
            goto LABEL_71;
          }
        }

        return 0;
      }

      goto LABEL_71;
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2FBE10(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v12)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = *v15;
  if (v16 < 5)
  {
    return 0;
  }

  v17 = v15[2];
  if (!v15[2])
  {
    return 0;
  }

  v18 = &v3[v17];
  if ((&v3[v17] & 3) != 0)
  {
    if (v5 < v18 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v18)
  {
    return 0;
  }

  v19 = *&v18[*&v2];
  if (v19 < 1)
  {
    return 0;
  }

  v20 = &v18[v19];
  v21 = v4 - 1;
  if (v4 - 1 < v20)
  {
    return 0;
  }

  v22 = (a1 + v17 + *(a1 + v17));
  v23 = v22 - *&v2;
  if (((v22 - *&v2) & 3) != 0)
  {
    if (v5 < v23 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v23)
  {
    return 0;
  }

  v24 = *v22;
  if (v24 > 0x7FFFFFFE)
  {
    return 0;
  }

  v25 = v24 + 4;
  v26 = &v23[v24 + 4];
  v27 = v21 >= v26 && v4 > v25;
  v28 = v27 && v4 - v25 >= v23;
  if (!v28 || v26[*&v2])
  {
    return 0;
  }

  v29 = v8.i32[0];
  if (v16 >= 7)
  {
    v30 = v15[3];
    if (v15[3])
    {
      v31 = &v3[v30];
      if ((v31 & 3) != 0)
      {
        if (v5 < v31 || (a2[3].i8[0] & 1) != 0)
        {
          return 0;
        }
      }

      else if (v5 < v31)
      {
        return 0;
      }

      v32 = *(*&v2 + v31);
      if (v32 >= 1 && v21 >= v31 + v32)
      {
        if (sub_2FC094((a1 + v30 + *(a1 + v30)), a2))
        {
          v29 = a2[5].i32[0] - 1;
          goto LABEL_57;
        }

        return 0;
      }

      return 0;
    }
  }

LABEL_57:
  a2[5].i32[0] = v29;
  return 1;
}

uint64_t sub_2FC094(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v12)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = v8.i32[0];
  if (*v15 < 5u)
  {
    goto LABEL_46;
  }

  v17 = v15[2];
  if (!v15[2])
  {
    goto LABEL_46;
  }

  v18 = &v3[v17];
  if ((v18 & 3) != 0)
  {
    if (v5 < v18 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v18)
  {
    return 0;
  }

  v19 = *(*&v2 + v18);
  if (v19 < 1 || v4 - 1 < v18 + v19)
  {
    return 0;
  }

  v20 = (a1 + v17);
  v21 = (a1 + v17 + *(a1 + v17));
  v22 = v21 - *&v2;
  if ((v22 & 3) != 0)
  {
    if (v5 < v22 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }

    goto LABEL_35;
  }

  if (v5 < v22)
  {
    return 0;
  }

LABEL_35:
  v23 = *v21;
  if (v23 > 0x1FFFFFFE)
  {
    return 0;
  }

  v24 = 4 * v23 + 4;
  v6 = v4 >= v24;
  v25 = v4 - v24;
  if (v25 == 0 || !v6 || v25 < v22)
  {
    return 0;
  }

  v27 = (v20 + *v20);
  if (*v27)
  {
    v28 = 0;
    v29 = v27 + 1;
    while (1)
    {
      v30 = a2;
      if ((sub_2FC2E0((v29 + *v29), a2) & 1) == 0)
      {
        return 0;
      }

      ++v28;
      ++v29;
      a2 = v30;
      if (v28 >= *v27)
      {
        v16 = v30[5].i32[0] - 1;
        break;
      }
    }
  }

LABEL_46:
  a2[5].i32[0] = v16;
  return 1;
}

uint64_t sub_2FC2E0(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(*&v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 < 5)
  {
    return 0;
  }

  v16 = v14[2];
  if (!v14[2])
  {
    return 0;
  }

  v17 = &v3[v16];
  if ((&v3[v16] & 3) != 0)
  {
    if (v5 < v17 || (*(a2 + 24) & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v17)
  {
    return 0;
  }

  v18 = *&v17[*&v2];
  if (v18 < 1)
  {
    return 0;
  }

  v19 = &v17[v18];
  v20 = v4 - 1;
  if (v4 - 1 < v19)
  {
    return 0;
  }

  v21 = (a1 + v16 + *(a1 + v16));
  v22 = v21 - *&v2;
  if (((v21 - *&v2) & 3) != 0)
  {
    if (v5 < v22 || (*(a2 + 24) & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v22)
  {
    return 0;
  }

  v23 = *v21;
  if (v23 > 0x7FFFFFFE)
  {
    return 0;
  }

  v24 = v23 + 4;
  v25 = &v22[v23 + 4];
  v26 = v20 >= v25 && v4 > v24;
  v27 = v26 && v4 - v24 >= v22;
  if (!v27 || v25[*&v2])
  {
    return 0;
  }

  if (v15 < 7)
  {
    goto LABEL_57;
  }

  v28 = v14[3];
  if (!v14[3])
  {
    if (v15 > 8)
    {
      goto LABEL_52;
    }

LABEL_57:
    v29 = 0;
    goto LABEL_58;
  }

  if (v20 < &v3[v28])
  {
    return 0;
  }

  if (v15 < 9)
  {
    v29 = 0;
    goto LABEL_66;
  }

LABEL_52:
  v30 = v14[4];
  if (!v30)
  {
    v29 = 0;
    goto LABEL_65;
  }

  v31 = &v3[v30];
  if ((v31 & 3) != 0)
  {
    if (v5 < v31 || (*(a2 + 24) & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v31)
  {
    return 0;
  }

  v32 = *(*&v2 + v31);
  if (v32 < 1 || v20 < v31 + v32)
  {
    return 0;
  }

  v29 = (a1 + v30 + *(a1 + v30));
LABEL_65:
  if (v28)
  {
LABEL_66:
    if (sub_2FC5B0(a2, v29, *(a1 + v28)))
    {
      goto LABEL_59;
    }

    return 0;
  }

LABEL_58:
  if (!sub_2FC5B0(a2, v29, 0))
  {
    return 0;
  }

LABEL_59:
  --*(a2 + 40);
  return 1;
}

uint64_t sub_2FC5B0(uint32x2_t *a1, int *a2, int a3)
{
  v3 = 1;
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      if (a2)
      {
        return sub_2E2B40(a2, a1);
      }

      return v3;
    }

    if (a3 != 2)
    {
      if (a3 == 3 && a2)
      {
        return sub_2FC094(a2, a1);
      }

      return v3;
    }

    if (!a2)
    {
      return v3;
    }

    v11 = *a1;
    v12 = a2 - *a1;
    if (v12 & 3) != 0 && (a1[3].i8[0])
    {
      return 0;
    }

    v3 = 0;
    v13 = a1[1];
    if (v13 < 5 || v13 - 4 < v12)
    {
      return v3;
    }

    v25 = *a2;
    v15 = a1[5];
    v26 = vadd_s32(v15, 0x100000001);
    a1[5] = v26;
    v27 = vcgt_u32(v26, a1[2]);
    if ((v27.i32[0] | v27.i32[1]))
    {
      return 0;
    }

    v31 = v12 - v25;
    if ((v12 - v25))
    {
      v3 = 0;
      if ((a1[3].i8[0] & 1) != 0 || v13 - 2 < v31)
      {
        return v3;
      }
    }

    else if (v13 - 2 < v31)
    {
      return 0;
    }

    v35 = *(*&v11 + v31);
    if (v35)
    {
      return 0;
    }

    if (v13 <= v35 || v13 - v35 < v31)
    {
      return 0;
    }

    v47 = (a2 - *a2);
    if (*v47 < 5u)
    {
      goto LABEL_116;
    }

    v48 = v47[2];
    if (!v48)
    {
      goto LABEL_116;
    }

    v43 = v12 + v48;
    if (v43 & 7) != 0 && (a1[3].i8[0])
    {
      return 0;
    }

    goto LABEL_114;
  }

  if (a3 > 5)
  {
    if (a3 != 6)
    {
      if (a3 != 7 || !a2)
      {
        return v3;
      }

      v7 = *a1;
      v8 = a2 - *a1;
      if (v8 & 3) != 0 && (a1[3].i8[0])
      {
        return 0;
      }

      v3 = 0;
      v13 = a1[1];
      if (v13 < 5 || v13 - 4 < v8)
      {
        return v3;
      }

      v22 = *a2;
      v15 = a1[5];
      v23 = vadd_s32(v15, 0x100000001);
      a1[5] = v23;
      v24 = vcgt_u32(v23, a1[2]);
      if ((v24.i32[0] | v24.i32[1]))
      {
        return 0;
      }

      v30 = v8 - v22;
      if ((v8 - v22))
      {
        v3 = 0;
        if ((a1[3].i8[0] & 1) != 0 || v13 - 2 < v30)
        {
          return v3;
        }
      }

      else if (v13 - 2 < v30)
      {
        return 0;
      }

      v34 = *(*&v7 + v30);
      if (v34)
      {
        return 0;
      }

      v3 = 0;
      v36 = v13 >= v34;
      v40 = v13 - v34;
      if (v40 == 0 || !v36 || v40 < v30)
      {
        return v3;
      }

      v41 = (a2 - *a2);
      if (*v41 >= 5u)
      {
        v42 = v41[2];
        if (v42)
        {
          v43 = v8 + v42;
          if (v43 & 7) != 0 && (a1[3].i8[0])
          {
            return 0;
          }

          goto LABEL_114;
        }
      }

LABEL_116:
      a1[5].i32[0] = v15.i32[0];
      return 1;
    }

    if (!a2)
    {
      return v3;
    }

    v9 = *a1;
    v10 = a2 - *a1;
    if (v10 & 3) != 0 && (a1[3].i8[0])
    {
      return 0;
    }

    v3 = 0;
    v13 = a1[1];
    if (v13 < 5 || v13 - 4 < v10)
    {
      return v3;
    }

    v14 = *a2;
    v15 = a1[5];
    v16 = vadd_s32(v15, 0x100000001);
    a1[5] = v16;
    v17 = vcgt_u32(v16, a1[2]);
    if ((v17.i32[0] | v17.i32[1]))
    {
      return 0;
    }

    v28 = v10 - v14;
    if ((v10 - v14))
    {
      v3 = 0;
      if ((a1[3].i8[0] & 1) != 0 || v13 - 2 < v28)
      {
        return v3;
      }
    }

    else if (v13 - 2 < v28)
    {
      return 0;
    }

    v32 = *(*&v9 + v28);
    if (v32)
    {
      return 0;
    }

    v36 = v13 > v32 && v13 - v32 >= v28;
    if (!v36)
    {
      return 0;
    }

    v45 = (a2 - *a2);
    if (*v45 < 5u)
    {
      goto LABEL_116;
    }

    v46 = v45[2];
    if (!v46)
    {
      goto LABEL_116;
    }

    v43 = v10 + v46;
    if (v43 & 7) != 0 && (a1[3].i8[0])
    {
      return 0;
    }

LABEL_114:
    v3 = 0;
    if (v13 < 9 || v13 - 8 < v43)
    {
      return v3;
    }

    goto LABEL_116;
  }

  if (a3 == 4)
  {
    if (a2)
    {
      return sub_2FCABC(a2, a1);
    }

    return v3;
  }

  if (a2)
  {
    v4 = *a1;
    v5 = a2 - *a1;
    if (v5 & 3) != 0 && (a1[3].i8[0])
    {
      return 0;
    }

    v3 = 0;
    v18 = a1[1];
    if (v18 >= 5 && v18 - 4 >= v5)
    {
      v19 = *a2;
      v15 = a1[5];
      v20 = vadd_s32(v15, 0x100000001);
      a1[5] = v20;
      v21 = vcgt_u32(v20, a1[2]);
      if ((v21.i32[0] | v21.i32[1]))
      {
        return 0;
      }

      v29 = v5 - v19;
      if ((v5 - v19))
      {
        v3 = 0;
        if ((a1[3].i8[0] & 1) != 0 || v18 - 2 < v29)
        {
          return v3;
        }
      }

      else if (v18 - 2 < v29)
      {
        return 0;
      }

      v33 = *(*&v4 + v29);
      if ((v33 & 1) == 0)
      {
        v3 = 0;
        v36 = v18 >= v33;
        v37 = v18 - v33;
        if (v37 == 0 || !v36 || v37 < v29)
        {
          return v3;
        }

        v38 = (a2 - *a2);
        if (*v38 >= 5u)
        {
          v39 = v38[2];
          if (v39)
          {
            if (v18 - 1 < v5 + v39)
            {
              return 0;
            }
          }
        }

        goto LABEL_116;
      }

      return 0;
    }
  }

  return v3;
}

uint64_t sub_2FCABC(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = *(a2 + 40);
  v9 = vadd_s32(v8, 0x100000001);
  *(a2 + 40) = v9;
  v10 = vcgt_u32(v9, *(a2 + 16));
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v12)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = v8.i32[0];
  if (*v15 < 5u)
  {
    goto LABEL_46;
  }

  v17 = v15[2];
  if (!v15[2])
  {
    goto LABEL_46;
  }

  v18 = &v3[v17];
  if ((v18 & 3) != 0)
  {
    if (v5 < v18 || (*(a2 + 24) & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v18)
  {
    return 0;
  }

  v19 = *(v2 + v18);
  if (v19 < 1 || v4 - 1 < v18 + v19)
  {
    return 0;
  }

  v20 = (a1 + v17);
  v21 = (a1 + v17 + *(a1 + v17));
  v22 = v21 - v2;
  if ((v22 & 3) != 0)
  {
    if (v5 < v22 || (*(a2 + 24) & 1) != 0)
    {
      return 0;
    }

    goto LABEL_35;
  }

  if (v5 < v22)
  {
    return 0;
  }

LABEL_35:
  v23 = *v21;
  if (v23 > 0x1FFFFFFE)
  {
    return 0;
  }

  v24 = 4 * v23 + 4;
  v6 = v4 >= v24;
  v25 = v4 - v24;
  if (v25 == 0 || !v6 || v25 < v22)
  {
    return 0;
  }

  v27 = (v20 + *v20);
  if (*v27)
  {
    v28 = 0;
    v29 = v27 + 1;
    while (1)
    {
      v30 = a2;
      if ((sub_2FCD08((v29 + *v29), a2) & 1) == 0)
      {
        return 0;
      }

      ++v28;
      ++v29;
      a2 = v30;
      if (v28 >= *v27)
      {
        v16 = *(v30 + 40) - 1;
        break;
      }
    }
  }

LABEL_46:
  *(a2 + 40) = v16;
  return 1;
}

uint64_t sub_2FCD08(int *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  if (v4 < 5 || v5 < v3)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(a2[5], 0x100000001);
  a2[5] = v8;
  v9 = vcgt_u32(v8, a2[2]);
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if ((v3 - v7))
  {
    if ((a2[3] & 1) == 0 && v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 <= v12 || v4 - v12 < v11)
  {
    return 0;
  }

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 < 5)
  {
    goto LABEL_26;
  }

  v16 = v14[2];
  if (v14[2])
  {
    if (v4 - 1 < &v3[v16])
    {
      return 0;
    }

    if (v15 < 7)
    {
      v17 = 0;
      goto LABEL_42;
    }

    goto LABEL_30;
  }

  if (v15 <= 6)
  {
LABEL_26:
    v17 = 0;
    goto LABEL_27;
  }

LABEL_30:
  v19 = v14[3];
  if (v14[3])
  {
    v20 = &v3[v19];
    if ((v20 & 3) != 0)
    {
      if (v5 < v20 || (a2[3] & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v20)
    {
      return 0;
    }

    v21 = *(v2 + v20);
    if (v21 < 1 || v4 - 1 < v20 + v21)
    {
      return 0;
    }

    v17 = a1 + v19 + *(a1 + v19);
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
LABEL_42:
    v18 = a2;
    if (!sub_2FC5B0(a2, v17, *(a1 + v16)))
    {
      return 0;
    }

LABEL_28:
    --*(v18 + 10);
    return 1;
  }

LABEL_27:
  v18 = a2;
  if (sub_2FC5B0(a2, v17, 0))
  {
    goto LABEL_28;
  }

  return 0;
}

uint64_t sub_2FCF30(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v12)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = v8.i32[0];
  if (*v15 < 5u)
  {
    goto LABEL_46;
  }

  v17 = v15[2];
  if (!v15[2])
  {
    goto LABEL_46;
  }

  v18 = &v3[v17];
  if ((v18 & 3) != 0)
  {
    if (v5 < v18 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v18)
  {
    return 0;
  }

  v19 = *(*&v2 + v18);
  if (v19 < 1 || v4 - 1 < v18 + v19)
  {
    return 0;
  }

  v20 = (a1 + v17);
  v21 = (a1 + v17 + *(a1 + v17));
  v22 = v21 - *&v2;
  if ((v22 & 3) != 0)
  {
    if (v5 < v22 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }

    goto LABEL_35;
  }

  if (v5 < v22)
  {
    return 0;
  }

LABEL_35:
  v23 = *v21;
  if (v23 > 0x1FFFFFFE)
  {
    return 0;
  }

  v24 = 4 * v23 + 4;
  v6 = v4 >= v24;
  v25 = v4 - v24;
  if (v25 == 0 || !v6 || v25 < v22)
  {
    return 0;
  }

  v27 = (v20 + *v20);
  if (*v27)
  {
    v28 = 0;
    v29 = v27 + 1;
    while (1)
    {
      v30 = a2;
      if ((sub_2FD17C((v29 + *v29), a2) & 1) == 0)
      {
        return 0;
      }

      ++v28;
      ++v29;
      a2 = v30;
      if (v28 >= *v27)
      {
        v16 = v30[5].i32[0] - 1;
        break;
      }
    }
  }

LABEL_46:
  a2[5].i32[0] = v16;
  return 1;
}

uint64_t sub_2FD17C(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(*&v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = (a1 - v15);
    if (*v17 >= 5u)
    {
      v18 = v17[2];
      if (v17[2])
      {
        v19 = &v3[v18];
        if ((v19 & 3) != 0)
        {
          v13 = 0;
          if (v5 < v19 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v19)
        {
          return 0;
        }

        v20 = *(*&v2 + v19);
        if (v20 < 1 || v4 - 1 < v19 + v20)
        {
          return 0;
        }

        v21 = (a1 + v18);
        v22 = (a1 + v18 + *(a1 + v18));
        v23 = v22 - *&v2;
        if ((v23 & 3) != 0)
        {
          v13 = 0;
          if (v5 < v23 || (*(a2 + 24) & 1) != 0)
          {
            return v13;
          }
        }

        else if (v5 < v23)
        {
          return 0;
        }

        v24 = *v22;
        if (v24 > 0x1FFFFFFE)
        {
          return 0;
        }

        v25 = 4 * v24 + 4;
        v6 = v4 >= v25;
        v26 = v4 - v25;
        if (v26 == 0 || !v6 || v26 < v23)
        {
          return 0;
        }

        v28 = (v21 + *v21);
        if (*v28)
        {
          v46 = a1;
          v29 = 0;
          v30 = v28 + 1;
          while (1)
          {
            v31 = a2;
            if ((sub_2FD664((v30 + *v30), a2) & 1) == 0)
            {
              return 0;
            }

            ++v29;
            ++v30;
            a2 = v31;
            if (v29 >= *v28)
            {
              a1 = v46;
              v16 = -*v46;
              break;
            }
          }
        }
      }
    }

    v32 = a1 + v16;
    if (*(a1 + v16) >= 7u)
    {
      v33 = *(v32 + 3);
      if (*(v32 + 3))
      {
        v34 = a1 + v33 - *a2;
        if (v34 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        v35 = *(a2 + 8);
        if (v35 < 5 || v35 - 4 < v34)
        {
          return v13;
        }

        v36 = *(*a2 + v34);
        if (v36 < 1)
        {
          return 0;
        }

        if (v35 - 1 < v34 + v36)
        {
          return 0;
        }

        v37 = (a1 + v33);
        v38 = (v37 + *v37);
        v39 = v38 - *a2;
        if (v39 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        v40 = *(a2 + 8);
        if (v40 < 5 || v40 - 4 < v39)
        {
          return v13;
        }

        v41 = *v38;
        if (v41 > 0x1FFFFFFE)
        {
          return 0;
        }

        v42 = 4 * v41 + 4;
        v6 = v40 >= v42;
        v43 = v40 - v42;
        if (v43 == 0 || !v6 || v43 < v39)
        {
          return 0;
        }

        v45 = a2;
        if (!sub_2FD4A8(a2, (v37 + *v37)))
        {
          return 0;
        }

LABEL_69:
        --*(v45 + 40);
        return 1;
      }
    }

    v45 = a2;
    if (sub_2FD4A8(a2, 0))
    {
      goto LABEL_69;
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2FD4A8(uint32x2_t *a1, unsigned int *a2)
{
  if (a2 && (v2 = *a2, v2))
  {
    v3 = 0;
    v4 = a2 - *a1 + 4;
    v5 = 4 * v2;
    while (1)
    {
      v6 = &a2[v3 / 4];
      v7 = a2[v3 / 4 + 1];
      v8 = v4 + v3 + v7;
      if (v8 & 3) != 0 && (a1[3].i8[0])
      {
        break;
      }

      v9 = a1[1];
      if (v9 < 5 || v9 - 4 < v8)
      {
        break;
      }

      v11 = v6 + v7;
      v12 = *(v6 + v7 + 4);
      v13 = a1[5];
      v14 = vadd_s32(v13, 0x100000001);
      a1[5] = v14;
      v15 = vcgt_u32(v14, a1[2]);
      if ((v15.i32[0] | v15.i32[1]))
      {
        break;
      }

      v16 = v7 - v12;
      v17 = v4 + v3 + v7 - v12;
      if (v17)
      {
        v18 = 0;
        if ((a1[3].i8[0] & 1) != 0 || v9 - 2 < v17)
        {
          return v18;
        }
      }

      else if (v9 - 2 < v17)
      {
        return 0;
      }

      v19 = *(a2 + v16 + v3 + 4);
      if (v19)
      {
        return 0;
      }

      if (v9 <= v19 || v9 - v19 < v17)
      {
        break;
      }

      v21 = v7 - *(v11 + 1);
      v22 = &a2[v3 / 4] + v21;
      v23 = *(v22 + 2);
      if (v23 >= 5)
      {
        v24 = *(v22 + 4);
        if (v24)
        {
          v25 = v4 + v3 + v7 + v24;
          if (v25 & 7) != 0 && (a1[3].i8[0])
          {
            return 0;
          }

          v18 = 0;
          if (v9 < 9 || v9 - 8 < v25)
          {
            return v18;
          }
        }

        if (v23 >= 7 && *(&a2[v3 / 4 + 2] + v21 + 2))
        {
          v26 = v4 + v3 + v7 + *(&a2[v3 / 4 + 2] + v21 + 2);
          if (v26 & 7) != 0 && (a1[3].i8[0])
          {
            return 0;
          }

          v18 = 0;
          if (v9 < 9 || v9 - 8 < v26)
          {
            return v18;
          }
        }
      }

      a1[5].i32[0] = v13.i32[0];
      v3 += 4;
      if (v5 == v3)
      {
        return 1;
      }
    }

    return 0;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2FD664(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
    {
      return 0;
    }

    v15 = *a1;
    v16 = -v15;
    v17 = a1 - v15;
    v18 = *(a1 - v15);
    if (v18 >= 5)
    {
      v19 = *(v17 + 2);
      if (*(v17 + 2))
      {
        v20 = &v3[v19];
        if (&v3[v19] & 7) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        if (v4 < 9 || v4 - 8 < v20)
        {
          return v13;
        }
      }

      if (v18 >= 7)
      {
        v21 = *(v17 + 3);
        if (v21)
        {
          v22 = &v3[v21];
          if ((v22 & 3) != 0)
          {
            v13 = 0;
            if (v5 < v22 || (*(a2 + 24) & 1) != 0)
            {
              return v13;
            }
          }

          else if (v5 < v22)
          {
            return 0;
          }

          v23 = *(v2 + v22);
          if (v23 < 1 || v4 - 1 < v22 + v23)
          {
            return 0;
          }

          v24 = (a1 + v21);
          v25 = (a1 + v21 + *(a1 + v21));
          v26 = v25 - v2;
          if ((v26 & 3) != 0)
          {
            v13 = 0;
            if (v5 < v26 || (*(a2 + 24) & 1) != 0)
            {
              return v13;
            }
          }

          else if (v5 < v26)
          {
            return 0;
          }

          v27 = *v25;
          if (v27 > 0x1FFFFFFE)
          {
            return 0;
          }

          v28 = 4 * v27 + 4;
          v6 = v4 >= v28;
          v29 = v4 - v28;
          if (v29 == 0 || !v6 || v29 < v26)
          {
            return 0;
          }

          v31 = a1;
          v32 = a2;
          v33 = (v24 + *v24);
          if (*v33)
          {
            v34 = 0;
            v35 = v33 + 1;
            while ((sub_2FDA1C((v35 + *v35), a2) & 1) != 0)
            {
              ++v34;
              ++v35;
              a2 = v32;
              if (v34 >= *v33)
              {
                a1 = v31;
                v16 = -*v31;
                goto LABEL_54;
              }
            }

            return 0;
          }
        }
      }
    }

LABEL_54:
    v36 = a1 + v16;
    if (*(a1 + v16) >= 9u)
    {
      v37 = *(v36 + 4);
      if (*(v36 + 4))
      {
        v38 = a1 + v37 - *a2;
        if (v38 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        v39 = *(a2 + 8);
        if (v39 < 5 || v39 - 4 < v38)
        {
          return v13;
        }

        v40 = *(*a2 + v38);
        if (v40 < 1)
        {
          return 0;
        }

        if (v39 - 1 < v38 + v40)
        {
          return 0;
        }

        v41 = a1;
        v42 = a2;
        if (!sub_2D986C(a2, (a1 + v37 + *(a1 + v37))))
        {
          return 0;
        }

LABEL_65:
        v43 = (v41 - *v41);
        if (*v43 < 9u)
        {
          v46 = 0;
          v45 = v42;
        }

        else
        {
          v44 = v43[4];
          v45 = v42;
          if (v44)
          {
            v46 = (v41 + v44 + *(v41 + v44));
          }

          else
          {
            v46 = 0;
          }
        }

        if (sub_2D98D4(v45, v46))
        {
          if (sub_2CDF90(v41, v42, 0xAu))
          {
            v47 = (v41 - *v41);
            if (*v47 < 0xBu || (v48 = v47[5]) == 0 || sub_2CE100(v42, (v41 + v48 + *(v41 + v48)), 1uLL, 0))
            {
              --*(v42 + 40);
              return 1;
            }
          }
        }

        return 0;
      }
    }

    v41 = a1;
    v42 = a2;
    if (sub_2D986C(a2, 0))
    {
      goto LABEL_65;
    }

    return 0;
  }

  return 0;
}