uint64_t sub_2E995C(int *a1, uint32x2_t *a2)
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
    v18 = v8.i32[0];
    if (v17 < 5)
    {
LABEL_55:
      a2[5].i32[0] = v18;
      return 1;
    }

    if (!v16[2] || v4 - 1 >= &v3[v16[2]])
    {
      if (v17 < 7)
      {
        goto LABEL_55;
      }

      v19 = v16[3];
      if (v16[3])
      {
        v20 = &v3[v19];
        if ((&v3[v19] & 3) != 0)
        {
          v14 = 0;
          if (v5 < v20 || (a2[3].i8[0] & 1) != 0)
          {
            return v14;
          }
        }

        else if (v5 < v20)
        {
          return 0;
        }
      }

      if (v17 < 9)
      {
        goto LABEL_55;
      }

      v21 = v16[4];
      if (!v21)
      {
        goto LABEL_55;
      }

      v22 = &v3[v21];
      if ((v22 & 3) != 0)
      {
        v14 = 0;
        if (v5 < v22 || (a2[3].i8[0] & 1) != 0)
        {
          return v14;
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
        v14 = 0;
        if (v5 < v26 || (a2[3].i8[0] & 1) != 0)
        {
          return v14;
        }
      }

      else if (v5 < v26)
      {
        return 0;
      }

      v34 = a2;
      v27 = *v25;
      if (v27 <= 0x1FFFFFFE)
      {
        v14 = 0;
        v28 = 4 * v27 + 4;
        v29 = v4 > v28;
        v30 = v4 - v28;
        if (!v29 || v30 < v26)
        {
          return v14;
        }

        v31 = (v24 + *v24);
        if (*v31)
        {
          v32 = 0;
          v33 = v31 + 1;
          while ((sub_2E9BD8((v33 + *v33), a2) & 1) != 0)
          {
            ++v32;
            ++v33;
            a2 = v34;
            if (v32 >= *v31)
            {
              v18 = v34[5].i32[0] - 1;
              goto LABEL_55;
            }
          }

          return 0;
        }

        goto LABEL_55;
      }
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2E9BD8(int *a1, uint64_t a2)
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
        v20 = v14[4];
        if (v14[4])
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

        if (v15 >= 0xB)
        {
          v22 = v14[5];
          if (v14[5])
          {
            v23 = &v3[v22];
            if ((&v3[v22] & 3) != 0)
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
          }

          if (v15 >= 0xD && v14[6])
          {
            v24 = &v3[v14[6]];
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
          }
        }
      }
    }
  }

  if (sub_2D9788(a1, a2, 0xEu, 8) && sub_2DAD14(a1, a2, 0x10u, 4) && sub_2DAD14(a1, a2, 0x12u, 4) && sub_2D9788(a1, a2, 0x14u, 8) && sub_2D9788(a1, a2, 0x16u, 8) && sub_2D9788(a1, a2, 0x18u, 8) && sub_2D9788(a1, a2, 0x1Au, 8))
  {
    --*(a2 + 40);
    return 1;
  }

  return 0;
}

uint64_t sub_2E9EE8(int *a1, uint64_t a2)
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

  v14 = (a1 - *a1);
  v15 = *v14;
  if (v15 >= 5)
  {
    if (v14[2] && v4 - 1 < &v3[v14[2]])
    {
      return 0;
    }

    if (v15 >= 7)
    {
      v16 = v14[3];
      if (v14[3])
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
        if (v21 > 0x7FFFFFE)
        {
          return 0;
        }

        v22 = (16 * v21) | 4;
        v6 = v4 >= v22;
        v23 = v4 - v22;
        if (v23 == 0 || !v6 || v23 < v20)
        {
          return 0;
        }
      }

      if (v15 >= 9)
      {
        v25 = v14[4];
        if (v25)
        {
          v26 = &v3[v25];
          if ((v26 & 3) != 0)
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

          v28 = *(v2 + v26);
          if (v28 < 1 || v4 - 1 < v26 + v28)
          {
            return 0;
          }

          v29 = (a1 + v25);
          v30 = (a1 + v25 + *(a1 + v25));
          v31 = v30 - v2;
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

          v32 = *v30;
          if (v32 > 0x1FFFFFFE)
          {
            return 0;
          }

          v33 = 4 * v32 + 4;
          v34 = v4 > v33;
          v35 = v4 - v33;
          if (v34 && v35 >= v31)
          {
            v27 = a2;
            if (sub_2EA1EC(a2, (v29 + *v29)))
            {
              goto LABEL_51;
            }

            return 0;
          }

          return 0;
        }
      }
    }
  }

  v27 = a2;
  if (sub_2EA1EC(a2, 0))
  {
LABEL_51:
    --*(v27 + 40);
    return 1;
  }

  return 0;
}

BOOL sub_2EA1EC(uint64_t a1, _DWORD *a2)
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
    result = sub_2EA278((v5 + *v5), a1);
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

BOOL sub_2EA278(int *a1, uint64_t a2)
{
  result = sub_2CDED0(a1, a2);
  if (result)
  {
    v5 = (a1 - *a1);
    v6 = *v5;
    if (v6 < 5)
    {
      return 0;
    }

    v7 = v5[2];
    if (!v5[2])
    {
      return 0;
    }

    v8 = *a2;
    v9 = a1 - *a2;
    v10 = &v9[v7];
    if (&v9[v7] & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v11 = *(a2 + 8);
    if (v11 >= 5)
    {
      v12 = v11 - 4;
      if (v11 - 4 >= v10)
      {
        v13 = *(v8 + v10);
        if (v13 < 1 || v11 - 1 < v10 + v13)
        {
          return 0;
        }

        v14 = (a1 + v7 + *(a1 + v7));
        v15 = v14 - v8;
        if (((v14 - v8) & 3) != 0)
        {
          result = 0;
          if (v12 < v15 || (*(a2 + 24) & 1) != 0)
          {
            return result;
          }
        }

        else if (v12 < v15)
        {
          return 0;
        }

        v16 = *v14;
        if (v16 > 0x7FFFFFFE)
        {
          return 0;
        }

        v17 = v16 + 4;
        v18 = &v15[v16 + 4];
        v19 = v11 - 1 >= v18 && v11 > v17;
        v20 = v19 && v11 - v17 >= v15;
        if (!v20 || *(v8 + v18))
        {
          return 0;
        }

        if (v6 < 7)
        {
          goto LABEL_33;
        }

        v21 = v5[3];
        if (!v21)
        {
          goto LABEL_33;
        }

        v22 = &v9[v21];
        if ((v22 & 7) == 0 || (*(a2 + 24) & 1) == 0)
        {
          result = 0;
          if (v11 < 9 || v11 - 8 < v22)
          {
            return result;
          }

LABEL_33:
          --*(a2 + 40);
          return 1;
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2EA3F4(int *a1, uint64_t a2)
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

  v12 = &v3[-v7];
  if (v12)
  {
    result = 0;
    if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v12)
    {
      return result;
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

  v6 = v4 >= v13;
  v14 = v4 - v13;
  if (v14 == 0 || !v6 || v14 < v12)
  {
    return 0;
  }

  v16 = a1;
  v17 = *a1;
  v18 = -v17;
  v19 = (a1 - v17);
  if (*v19 >= 5u)
  {
    v20 = v19[2];
    if (v20)
    {
      v21 = &v3[v20];
      if ((v21 & 3) != 0)
      {
        result = 0;
        if (v5 < v21 || (*(a2 + 24) & 1) != 0)
        {
          return result;
        }
      }

      else if (v5 < v21)
      {
        return 0;
      }

      v22 = *(*&v2 + v21);
      if (v22 < 1 || v4 - 1 < v21 + v22)
      {
        return 0;
      }

      v23 = (a1 + v20);
      v24 = (a1 + v20 + *(a1 + v20));
      v25 = v24 - *&v2;
      if ((v25 & 3) != 0)
      {
        result = 0;
        if (v5 < v25 || (*(a2 + 24) & 1) != 0)
        {
          return result;
        }
      }

      else if (v5 < v25)
      {
        return 0;
      }

      v26 = *v24;
      if (v26 > 0x1FFFFFFE)
      {
        return 0;
      }

      v27 = 4 * v26 + 4;
      v28 = v4 > v27;
      v29 = v4 - v27;
      if (!v28 || v29 < v25)
      {
        return 0;
      }

      v31 = (v23 + *v23);
      v16 = a1;
      if (*v31)
      {
        v32 = 0;
        v33 = v31 + 1;
        while (1)
        {
          v34 = a2;
          if ((sub_2EC4B0((v33 + *v33), a2) & 1) == 0)
          {
            return 0;
          }

          ++v32;
          ++v33;
          a2 = v34;
          if (v32 >= *v31)
          {
            v18 = -*v16;
            break;
          }
        }
      }
    }
  }

  if (*(v16 + v18) < 7u)
  {
    v35 = 0;
LABEL_70:
    v47 = a2;
    result = sub_2EB5DC(a2, v35);
    if (!result)
    {
      return result;
    }

    goto LABEL_71;
  }

  v35 = *(v16 + v18 + 6);
  if (!*(v16 + v18 + 6))
  {
    goto LABEL_70;
  }

  v36 = v35 + v16 - *a2;
  if (v36 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  result = 0;
  v37 = *(a2 + 8);
  if (v37 < 5 || v37 - 4 < v36)
  {
    return result;
  }

  v38 = *(*a2 + v36);
  if (v38 < 1)
  {
    return 0;
  }

  if (v37 - 1 < v36 + v38)
  {
    return 0;
  }

  v39 = (v35 + v16);
  v40 = (v39 + *v39);
  v41 = v40 - *a2;
  if (v41 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  result = 0;
  v42 = *(a2 + 8);
  if (v42 < 5 || v42 - 4 < v41)
  {
    return result;
  }

  v43 = *v40;
  if (v43 > 0x1FFFFFFE)
  {
    return 0;
  }

  v44 = 4 * v43 + 4;
  v6 = v42 >= v44;
  v45 = v42 - v44;
  if (v45 == 0 || !v6 || v45 < v41)
  {
    return 0;
  }

  v47 = a2;
  result = sub_2EB5DC(a2, (v39 + *v39));
  if (!result)
  {
    return result;
  }

LABEL_71:
  result = sub_2CDF90(v16, v47, 8u);
  if (!result)
  {
    return result;
  }

  v48 = v16;
  v49 = *v16;
  v50 = -v49;
  v51 = (v16 - v49);
  if (*v51 < 9u)
  {
LABEL_76:
    v53 = v47;
    goto LABEL_77;
  }

  v52 = v51[4];
  v53 = v47;
  if (v52)
  {
    result = sub_2CE100(v47, (v16 + v52 + *(v16 + v52)), 4uLL, 0);
    if (!result)
    {
      return result;
    }

    v48 = v16;
    v50 = -*v16;
    goto LABEL_76;
  }

LABEL_77:
  v54 = (v48 + v50);
  if (*v54 >= 9u && (v55 = v54[4]) != 0)
  {
    v56 = v48;
    v57 = (v48 + v55 + *(v48 + v55));
  }

  else
  {
    v56 = v48;
    v57 = 0;
  }

  result = sub_2EB798(v53, v57);
  if (!result)
  {
    return result;
  }

  result = sub_2CDF90(v56, v47, 0xAu);
  if (!result)
  {
    return result;
  }

  v58 = v56;
  v59 = *v56;
  v60 = -v59;
  v61 = (v56 - v59);
  if (*v61 < 0xBu)
  {
    goto LABEL_87;
  }

  v62 = v61[5];
  v63 = v47;
  if (v62)
  {
    result = sub_2CE100(v47, (v56 + v62 + *(v56 + v62)), 4uLL, 0);
    if (!result)
    {
      return result;
    }

    v58 = v56;
    v60 = -*v56;
LABEL_87:
    v63 = v47;
  }

  v64 = (v58 + v60);
  if (*v64 >= 0xBu && (v65 = v64[5]) != 0)
  {
    v66 = v58;
    v67 = (v58 + v65 + *(v58 + v65));
  }

  else
  {
    v66 = v58;
    v67 = 0;
  }

  result = sub_2EB824(v63, v67);
  if (result)
  {
    result = sub_2CDF90(v66, v47, 0xCu);
    if (result)
    {
      v68 = (v66 - *v66);
      if (*v68 < 0xDu || (v69 = v68[6]) == 0 || (result = sub_2EE5B0((v66 + v69 + *(v66 + v69)), v47), result))
      {
        result = sub_2CDF90(v66, v47, 0xEu);
        if (result)
        {
          v70 = *v66;
          v71 = -v70;
          if (*(v66 - v70) >= 0xFu && *(v66 - v70 + 14))
          {
            result = sub_2CE100(v47, (v66 + *(v66 - v70 + 14) + *(v66 + *(v66 - v70 + 14))), 4uLL, 0);
            if (!result)
            {
              return result;
            }

            v71 = -*v66;
          }

          v72 = (v66 + v71);
          if (*v72 >= 0xFu && (v73 = v72[7]) != 0)
          {
            v74 = (v66 + v73 + *(v66 + v73));
          }

          else
          {
            v74 = 0;
          }

          result = sub_2EB8B0(v47, v74);
          if (result)
          {
            result = sub_2CDF90(v66, v47, 0x10u);
            if (result)
            {
              v75 = *v66;
              v76 = -v75;
              if (*(v66 - v75) >= 0x11u && *(v66 - v75 + 16))
              {
                result = sub_2CE100(v47, (v66 + *(v66 - v75 + 16) + *(v66 + *(v66 - v75 + 16))), 4uLL, 0);
                if (!result)
                {
                  return result;
                }

                v76 = -*v66;
              }

              v77 = (v66 + v76);
              if (*v77 >= 0x11u && (v78 = v77[8]) != 0)
              {
                v79 = (v66 + v78 + *(v66 + v78));
              }

              else
              {
                v79 = 0;
              }

              result = sub_2EB93C(v47, v79);
              if (result)
              {
                result = sub_2CDF90(v66, v47, 0x12u);
                if (result)
                {
                  v80 = *v66;
                  v81 = -v80;
                  if (*(v66 - v80) >= 0x13u && *(v66 - v80 + 18))
                  {
                    result = sub_2CE100(v47, (v66 + *(v66 - v80 + 18) + *(v66 + *(v66 - v80 + 18))), 4uLL, 0);
                    if (!result)
                    {
                      return result;
                    }

                    v81 = -*v66;
                  }

                  v82 = (v66 + v81);
                  if (*v82 >= 0x13u && (v83 = v82[9]) != 0)
                  {
                    v84 = (v66 + v83 + *(v66 + v83));
                  }

                  else
                  {
                    v84 = 0;
                  }

                  result = sub_2EB9C8(v47, v84);
                  if (result)
                  {
                    result = sub_2CDF90(v66, v47, 0x14u);
                    if (result)
                    {
                      v85 = *v66;
                      v86 = -v85;
                      if (*(v66 - v85) >= 0x15u && *(v66 - v85 + 20))
                      {
                        result = sub_2CE100(v47, (v66 + *(v66 - v85 + 20) + *(v66 + *(v66 - v85 + 20))), 4uLL, 0);
                        if (!result)
                        {
                          return result;
                        }

                        v86 = -*v66;
                      }

                      v87 = (v66 + v86);
                      if (*v87 >= 0x15u && (v88 = v87[10]) != 0)
                      {
                        v89 = (v66 + v88 + *(v66 + v88));
                      }

                      else
                      {
                        v89 = 0;
                      }

                      result = sub_2EBA54(v47, v89);
                      if (result)
                      {
                        result = sub_2CDF90(v66, v47, 0x16u);
                        if (result)
                        {
                          v90 = *v66;
                          v91 = -v90;
                          if (*(v66 - v90) >= 0x17u && *(v66 - v90 + 22))
                          {
                            result = sub_2CE100(v47, (v66 + *(v66 - v90 + 22) + *(v66 + *(v66 - v90 + 22))), 4uLL, 0);
                            if (!result)
                            {
                              return result;
                            }

                            v91 = -*v66;
                          }

                          v92 = (v66 + v91);
                          if (*v92 >= 0x17u && (v93 = v92[11]) != 0)
                          {
                            v94 = (v66 + v93 + *(v66 + v93));
                          }

                          else
                          {
                            v94 = 0;
                          }

                          result = sub_2EBAE0(v47, v94);
                          if (result)
                          {
                            result = sub_2CDF90(v66, v47, 0x18u);
                            if (result)
                            {
                              v95 = *v66;
                              v96 = -v95;
                              if (*(v66 - v95) >= 0x19u && *(v66 - v95 + 24))
                              {
                                result = sub_2CE100(v47, (v66 + *(v66 - v95 + 24) + *(v66 + *(v66 - v95 + 24))), 4uLL, 0);
                                if (!result)
                                {
                                  return result;
                                }

                                v96 = -*v66;
                              }

                              v97 = (v66 + v96);
                              if (*v97 >= 0x19u && (v98 = v97[12]) != 0)
                              {
                                v99 = (v66 + v98 + *(v66 + v98));
                              }

                              else
                              {
                                v99 = 0;
                              }

                              result = sub_2EBD08(v47, v99);
                              if (result)
                              {
                                result = sub_2CDF90(v66, v47, 0x1Au);
                                if (result)
                                {
                                  v100 = *v66;
                                  v101 = -v100;
                                  if (*(v66 - v100) >= 0x1Bu && *(v66 - v100 + 26))
                                  {
                                    result = sub_2CE100(v47, (v66 + *(v66 - v100 + 26) + *(v66 + *(v66 - v100 + 26))), 4uLL, 0);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v101 = -*v66;
                                  }

                                  v102 = (v66 + v101);
                                  if (*v102 >= 0x1Bu && (v103 = v102[13]) != 0)
                                  {
                                    v104 = (v66 + v103 + *(v66 + v103));
                                  }

                                  else
                                  {
                                    v104 = 0;
                                  }

                                  result = sub_2EBD94(v47, v104);
                                  if (result)
                                  {
                                    result = sub_2CDF90(v66, v47, 0x1Cu);
                                    if (result)
                                    {
                                      v105 = *v66;
                                      v106 = -v105;
                                      if (*(v66 - v105) >= 0x1Du && *(v66 - v105 + 28))
                                      {
                                        result = sub_2CE100(v47, (v66 + *(v66 - v105 + 28) + *(v66 + *(v66 - v105 + 28))), 4uLL, 0);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v106 = -*v66;
                                      }

                                      v107 = (v66 + v106);
                                      if (*v107 >= 0x1Du && (v108 = v107[14]) != 0)
                                      {
                                        v109 = (v66 + v108 + *(v66 + v108));
                                      }

                                      else
                                      {
                                        v109 = 0;
                                      }

                                      result = sub_2EBE20(v47, v109);
                                      if (result)
                                      {
                                        result = sub_2CDF90(v66, v47, 0x1Eu);
                                        if (result)
                                        {
                                          v110 = *v66;
                                          v111 = -v110;
                                          if (*(v66 - v110) >= 0x1Fu && *(v66 - v110 + 30))
                                          {
                                            result = sub_2CE100(v47, (v66 + *(v66 - v110 + 30) + *(v66 + *(v66 - v110 + 30))), 4uLL, 0);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v111 = -*v66;
                                          }

                                          v112 = (v66 + v111);
                                          if (*v112 >= 0x1Fu && (v113 = v112[15]) != 0)
                                          {
                                            v114 = (v66 + v113 + *(v66 + v113));
                                          }

                                          else
                                          {
                                            v114 = 0;
                                          }

                                          result = sub_2EBEAC(v47, v114);
                                          if (result)
                                          {
                                            result = sub_2CDF90(v66, v47, 0x20u);
                                            if (result)
                                            {
                                              v115 = *v66;
                                              v116 = -v115;
                                              if (*(v66 - v115) >= 0x21u && *(v66 - v115 + 32))
                                              {
                                                result = sub_2CE100(v47, (v66 + *(v66 - v115 + 32) + *(v66 + *(v66 - v115 + 32))), 4uLL, 0);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v116 = -*v66;
                                              }

                                              v117 = (v66 + v116);
                                              if (*v117 >= 0x21u && (v118 = v117[16]) != 0)
                                              {
                                                v119 = (v66 + v118 + *(v66 + v118));
                                              }

                                              else
                                              {
                                                v119 = 0;
                                              }

                                              result = sub_2EBF38(v47, v119);
                                              if (result)
                                              {
                                                result = sub_2CDF90(v66, v47, 0x22u);
                                                if (result)
                                                {
                                                  v120 = *v66;
                                                  v121 = -v120;
                                                  if (*(v66 - v120) >= 0x23u && *(v66 - v120 + 34))
                                                  {
                                                    result = sub_2CE100(v47, (v66 + *(v66 - v120 + 34) + *(v66 + *(v66 - v120 + 34))), 4uLL, 0);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v121 = -*v66;
                                                  }

                                                  v122 = (v66 + v121);
                                                  if (*v122 >= 0x23u && (v123 = v122[17]) != 0)
                                                  {
                                                    v124 = (v66 + v123 + *(v66 + v123));
                                                  }

                                                  else
                                                  {
                                                    v124 = 0;
                                                  }

                                                  result = sub_2EBFC4(v47, v124);
                                                  if (result)
                                                  {
                                                    result = sub_2CDF90(v66, v47, 0x24u);
                                                    if (result)
                                                    {
                                                      v125 = *v66;
                                                      v126 = -v125;
                                                      if (*(v66 - v125) >= 0x25u && *(v66 - v125 + 36))
                                                      {
                                                        result = sub_2CE100(v47, (v66 + *(v66 - v125 + 36) + *(v66 + *(v66 - v125 + 36))), 4uLL, 0);
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v126 = -*v66;
                                                      }

                                                      v127 = (v66 + v126);
                                                      if (*v127 >= 0x25u && (v128 = v127[18]) != 0)
                                                      {
                                                        v129 = (v66 + v128 + *(v66 + v128));
                                                      }

                                                      else
                                                      {
                                                        v129 = 0;
                                                      }

                                                      result = sub_2EC050(v47, v129);
                                                      if (result)
                                                      {
                                                        result = sub_2CDF90(v66, v47, 0x26u);
                                                        if (result)
                                                        {
                                                          v130 = *v66;
                                                          v131 = -v130;
                                                          if (*(v66 - v130) >= 0x27u && *(v66 - v130 + 38))
                                                          {
                                                            result = sub_2CE100(v47, (v66 + *(v66 - v130 + 38) + *(v66 + *(v66 - v130 + 38))), 4uLL, 0);
                                                            if (!result)
                                                            {
                                                              return result;
                                                            }

                                                            v131 = -*v66;
                                                          }

                                                          v132 = (v66 + v131);
                                                          if (*v132 >= 0x27u && (v133 = v132[19]) != 0)
                                                          {
                                                            v134 = (v66 + v133 + *(v66 + v133));
                                                          }

                                                          else
                                                          {
                                                            v134 = 0;
                                                          }

                                                          result = sub_2EC0DC(v47, v134);
                                                          if (result)
                                                          {
                                                            result = sub_2CDF90(v66, v47, 0x28u);
                                                            if (result)
                                                            {
                                                              v135 = *v66;
                                                              v136 = -v135;
                                                              if (*(v66 - v135) >= 0x29u && *(v66 - v135 + 40))
                                                              {
                                                                result = sub_2CE100(v47, (v66 + *(v66 - v135 + 40) + *(v66 + *(v66 - v135 + 40))), 4uLL, 0);
                                                                if (!result)
                                                                {
                                                                  return result;
                                                                }

                                                                v136 = -*v66;
                                                              }

                                                              v137 = (v66 + v136);
                                                              if (*v137 >= 0x29u && (v138 = v137[20]) != 0)
                                                              {
                                                                v139 = (v66 + v138 + *(v66 + v138));
                                                              }

                                                              else
                                                              {
                                                                v139 = 0;
                                                              }

                                                              result = sub_2EC168(v47, v139);
                                                              if (result)
                                                              {
                                                                result = sub_2CDF90(v66, v47, 0x2Au);
                                                                if (result)
                                                                {
                                                                  v140 = (v66 - *v66);
                                                                  if (*v140 < 0x2Bu || (v141 = v140[21]) == 0 || (result = sub_2F48A8((v66 + v141 + *(v66 + v141)), v47), result))
                                                                  {
                                                                    result = sub_2CDF90(v66, v47, 0x2Cu);
                                                                    if (result)
                                                                    {
                                                                      v142 = *v66;
                                                                      v143 = -v142;
                                                                      if (*(v66 - v142) >= 0x2Du && *(v66 - v142 + 44))
                                                                      {
                                                                        result = sub_2CE100(v47, (v66 + *(v66 - v142 + 44) + *(v66 + *(v66 - v142 + 44))), 4uLL, 0);
                                                                        if (!result)
                                                                        {
                                                                          return result;
                                                                        }

                                                                        v143 = -*v66;
                                                                      }

                                                                      v144 = (v66 + v143);
                                                                      if (*v144 >= 0x2Du && (v145 = v144[22]) != 0)
                                                                      {
                                                                        v146 = (v66 + v145 + *(v66 + v145));
                                                                      }

                                                                      else
                                                                      {
                                                                        v146 = 0;
                                                                      }

                                                                      result = sub_2EC1F4(v47, v146);
                                                                      if (result)
                                                                      {
                                                                        result = sub_2CDF90(v66, v47, 0x2Eu);
                                                                        if (result)
                                                                        {
                                                                          v147 = *v66;
                                                                          v148 = -v147;
                                                                          if (*(v66 - v147) >= 0x2Fu && *(v66 - v147 + 46))
                                                                          {
                                                                            result = sub_2CE100(v47, (v66 + *(v66 - v147 + 46) + *(v66 + *(v66 - v147 + 46))), 4uLL, 0);
                                                                            if (!result)
                                                                            {
                                                                              return result;
                                                                            }

                                                                            v148 = -*v66;
                                                                          }

                                                                          v149 = (v66 + v148);
                                                                          if (*v149 >= 0x2Fu && (v150 = v149[23]) != 0)
                                                                          {
                                                                            v151 = (v66 + v150 + *(v66 + v150));
                                                                          }

                                                                          else
                                                                          {
                                                                            v151 = 0;
                                                                          }

                                                                          result = sub_2EC280(v47, v151);
                                                                          if (result)
                                                                          {
                                                                            result = sub_2CDF90(v66, v47, 0x30u);
                                                                            if (result)
                                                                            {
                                                                              v152 = *v66;
                                                                              v153 = -v152;
                                                                              if (*(v66 - v152) >= 0x31u && *(v66 - v152 + 48))
                                                                              {
                                                                                result = sub_2CE100(v47, (v66 + *(v66 - v152 + 48) + *(v66 + *(v66 - v152 + 48))), 4uLL, 0);
                                                                                if (!result)
                                                                                {
                                                                                  return result;
                                                                                }

                                                                                v153 = -*v66;
                                                                              }

                                                                              v154 = (v66 + v153);
                                                                              if (*v154 >= 0x31u && (v155 = v154[24]) != 0)
                                                                              {
                                                                                v156 = (v66 + v155 + *(v66 + v155));
                                                                              }

                                                                              else
                                                                              {
                                                                                v156 = 0;
                                                                              }

                                                                              result = sub_2EC30C(v47, v156);
                                                                              if (result)
                                                                              {
                                                                                result = sub_2CDF90(v66, v47, 0x32u);
                                                                                if (result)
                                                                                {
                                                                                  v157 = *v66;
                                                                                  v158 = -v157;
                                                                                  if (*(v66 - v157) >= 0x33u && *(v66 - v157 + 50))
                                                                                  {
                                                                                    result = sub_2CE100(v47, (v66 + *(v66 - v157 + 50) + *(v66 + *(v66 - v157 + 50))), 4uLL, 0);
                                                                                    if (!result)
                                                                                    {
                                                                                      return result;
                                                                                    }

                                                                                    v158 = -*v66;
                                                                                  }

                                                                                  v159 = (v66 + v158);
                                                                                  if (*v159 >= 0x33u && (v160 = v159[25]) != 0)
                                                                                  {
                                                                                    v161 = (v66 + v160 + *(v66 + v160));
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v161 = 0;
                                                                                  }

                                                                                  result = sub_2EC398(v47, v161);
                                                                                  if (result)
                                                                                  {
                                                                                    result = sub_2CDF90(v66, v47, 0x34u);
                                                                                    if (result)
                                                                                    {
                                                                                      v162 = *v66;
                                                                                      v163 = -v162;
                                                                                      if (*(v66 - v162) >= 0x35u && *(v66 - v162 + 52))
                                                                                      {
                                                                                        result = sub_2CE100(v47, (v66 + *(v66 - v162 + 52) + *(v66 + *(v66 - v162 + 52))), 4uLL, 0);
                                                                                        if (!result)
                                                                                        {
                                                                                          return result;
                                                                                        }

                                                                                        v163 = -*v66;
                                                                                      }

                                                                                      v164 = (v66 + v163);
                                                                                      if (*v164 >= 0x35u && (v165 = v164[26]) != 0)
                                                                                      {
                                                                                        v166 = (v66 + v165 + *(v66 + v165));
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v166 = 0;
                                                                                      }

                                                                                      result = sub_2EC424(v47, v166);
                                                                                      if (result)
                                                                                      {
                                                                                        v167 = (v66 - *v66);
                                                                                        v168 = v47;
                                                                                        if (*v167 < 0x37u || (v169 = v167[27]) == 0 || (result = 0, v170 = v47[1], v170 >= 2) && (v168 = v47, v170 - 1 >= v66 + v169 - *v47))
                                                                                        {
                                                                                          --v168[5].i32[0];
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
        }
      }
    }
  }

  return result;
}

uint64_t sub_2EB5DC(uint32x2_t *a1, unsigned int *a2)
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
          if (v25 & 3) != 0 && (a1[3].i8[0])
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
          if (v26 & 3) != 0 && (a1[3].i8[0])
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

uint64_t sub_2EB798(uint32x2_t *a1, _DWORD *a2)
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
    result = sub_2ED7A4((v5 + *v5), a1);
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

uint64_t sub_2EB824(uint64_t a1, _DWORD *a2)
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
    result = sub_2ED990((v5 + *v5), a1);
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

uint64_t sub_2EB8B0(uint64_t a1, _DWORD *a2)
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
    result = sub_2EE8A0((v5 + *v5), a1);
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

uint64_t sub_2EB93C(uint32x2_t *a1, _DWORD *a2)
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
    result = sub_2EFF18((v5 + *v5), a1);
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

uint64_t sub_2EB9C8(uint64_t a1, _DWORD *a2)
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
    result = sub_2F0124((v5 + *v5), a1);
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

uint64_t sub_2EBA54(uint32x2_t *a1, _DWORD *a2)
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
    result = sub_2F0628((v5 + *v5), a1);
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

BOOL sub_2EBAE0(uint32x2_t *a1, unsigned int *a2)
{
  if (!a2)
  {
    return 1;
  }

  v3 = *a2;
  if (!v3)
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  v7 = a2 + 1;
  while (1)
  {
    v8 = a2[v5 + 1];
    v9 = *a1;
    v10 = v8 - *a1;
    v11 = &v7[v5] + v10;
    if (v11 & 3) != 0 && (a1[3].i8[0])
    {
      break;
    }

    v12 = a1[1];
    v13 = v12 - 4;
    v14 = v12 >= 5 && v13 >= v11;
    if (!v14)
    {
      break;
    }

    v15 = &a2[v5] + v8;
    v16 = *(v15 + 1);
    v17 = a1[5];
    v18 = vadd_s32(v17, 0x100000001);
    a1[5] = v18;
    v19 = vcgt_u32(v18, a1[2]);
    if ((v19.i32[0] | v19.i32[1]))
    {
      break;
    }

    v20 = &v7[v5] + v10 - v16;
    if (v20)
    {
      result = 0;
      if ((a1[3].i8[0] & 1) != 0 || v12 - 2 < v20)
      {
        return result;
      }
    }

    else if (v12 - 2 < v20)
    {
      return 0;
    }

    v22 = *(v7 + v8 - v16 + v5 * 4);
    if (v22)
    {
      return 0;
    }

    v14 = v12 >= v22;
    v23 = v12 - v22;
    if (v23 == 0 || !v14 || v23 < v20)
    {
      break;
    }

    v25 = &a2[v5] + v8 - *(v15 + 1);
    v26 = v17.i32[0];
    if (*(v25 + 2) >= 5u)
    {
      v27 = *(v25 + 4);
      if (v27)
      {
        v28 = &v7[v5] + v8 + v27 - *&v9;
        if ((v28 & 3) != 0)
        {
          result = 0;
          if (v13 < v28 || (a1[3].i8[0] & 1) != 0)
          {
            return result;
          }
        }

        else if (v13 < v28)
        {
          return 0;
        }

        v29 = *(v7 + v27 + v8 + v5 * 4);
        if (v29 < 1 || v12 - 1 < &v7[v5] + v8 + v27 + v29 - *&v9)
        {
          return 0;
        }

        result = sub_2CE1E0((&a2[v5 + 1] + v8 + v27 + *(&a2[v5 + 1] + v8 + v27)), a1);
        if (!result)
        {
          return result;
        }

        v3 = *a2;
        v26 = a1[5].i32[0] - 1;
      }
    }

    a1[5].i32[0] = v26;
    ++v6;
    ++v5;
    if (v6 >= v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2EBD08(uint64_t a1, _DWORD *a2)
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
    result = sub_2F08DC((v5 + *v5), a1);
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

uint64_t sub_2EBD94(uint64_t a1, _DWORD *a2)
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
    result = sub_2F17F0((v5 + *v5), a1);
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

uint64_t sub_2EBE20(uint64_t a1, _DWORD *a2)
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
    result = sub_2F1A94((v5 + *v5), a1);
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

uint64_t sub_2EBEAC(uint64_t a1, _DWORD *a2)
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
    result = sub_2F28AC((v5 + *v5), a1);
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

uint64_t sub_2EBF38(uint32x2_t *a1, _DWORD *a2)
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
    result = sub_2F2F38((v5 + *v5), a1);
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

uint64_t sub_2EBFC4(uint64_t a1, _DWORD *a2)
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
    result = sub_2F3100((v5 + *v5), a1);
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

uint64_t sub_2EC050(uint64_t a1, _DWORD *a2)
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
    result = sub_2F3600((v5 + *v5), a1);
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

uint64_t sub_2EC0DC(uint64_t a1, _DWORD *a2)
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
    result = sub_2F404C((v5 + *v5), a1);
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

uint64_t sub_2EC168(uint32x2_t *a1, _DWORD *a2)
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
    result = sub_2F467C((v5 + *v5), a1);
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

uint64_t sub_2EC1F4(uint64_t a1, _DWORD *a2)
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
    result = sub_2F5C90((v5 + *v5), a1);
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

uint64_t sub_2EC280(uint32x2_t *a1, _DWORD *a2)
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
    result = sub_2F5FB8((v5 + *v5), a1);
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

uint64_t sub_2EC30C(uint64_t a1, _DWORD *a2)
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
    result = sub_2F6290((v5 + *v5), a1);
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

BOOL sub_2EC398(uint64_t a1, _DWORD *a2)
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
    result = sub_2F686C((v5 + *v5), a1);
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

uint64_t sub_2EC424(uint64_t a1, _DWORD *a2)
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
    result = sub_2F697C((v5 + *v5), a1);
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

uint64_t sub_2EC4B0(int *a1, uint64_t a2)
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

  v11 = a1;
  v12 = &v3[-v7];
  if (v12)
  {
    result = 0;
    if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v12)
    {
      return result;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13)
  {
    return 0;
  }

  v6 = v4 >= v13;
  v14 = v4 - v13;
  if (v14 == 0 || !v6 || v14 < v12)
  {
    return 0;
  }

  v16 = (v11 - *v11);
  v17 = *v16;
  if (v17 < 5)
  {
    v19 = v11;
LABEL_41:
    v11 = v19;
    goto LABEL_42;
  }

  if (v16[2])
  {
    v18 = &v3[v16[2]];
    if (v18 & 7) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    if (v4 < 9 || v4 - 8 < v18)
    {
      return result;
    }
  }

  if (v17 >= 7)
  {
    v19 = v11;
    if (v16[3] && v4 - 1 < &v3[v16[3]])
    {
      return 0;
    }

    if (v17 >= 9)
    {
      if (v16[4] && v4 - 1 < &v3[v16[4]])
      {
        return 0;
      }

      if (v17 >= 0xB)
      {
        v20 = v16[5];
        if (v20)
        {
          v21 = &v3[v20];
          if ((v21 & 3) != 0)
          {
            result = 0;
            if (v5 < v21 || (*(a2 + 24) & 1) != 0)
            {
              return result;
            }
          }

          else if (v5 < v21)
          {
            return 0;
          }

          v39 = *(v2 + v21);
          if (v39 < 1 || v4 - 1 < v21 + v39)
          {
            return 0;
          }

          v40 = (v11 + v20);
          v41 = (v11 + v20 + *(v11 + v20));
          v42 = v41 - v2;
          if ((v42 & 3) != 0)
          {
            result = 0;
            if (v5 < v42 || (*(a2 + 24) & 1) != 0)
            {
              return result;
            }
          }

          else if (v5 < v42)
          {
            return 0;
          }

          v46 = *v41;
          if (v46 <= 0x1FFFFFFE)
          {
            result = 0;
            v47 = 4 * v46 + 4;
            v48 = v4 > v47;
            v49 = v4 - v47;
            if (!v48)
            {
              return result;
            }

            if (v49 < v42)
            {
              return result;
            }

            v22 = a2;
            result = sub_2ECB44(a2, (v40 + *v40));
            if (!result)
            {
              return result;
            }

            goto LABEL_43;
          }

          return 0;
        }
      }
    }

    goto LABEL_41;
  }

LABEL_42:
  v22 = a2;
  result = sub_2ECB44(a2, 0);
  if (!result)
  {
    return result;
  }

LABEL_43:
  result = sub_2CDF90(v11, v22, 0xCu);
  if (result)
  {
    v23 = (v11 - *v11);
    if (*v23 < 0xDu)
    {
      v26 = 0;
      v25 = v22;
    }

    else
    {
      v24 = v23[6];
      v25 = v22;
      v26 = v24 ? (v11 + v24 + *(v11 + v24)) : 0;
    }

    result = sub_2D986C(v25, v26);
    if (result)
    {
      v27 = (v11 - *v11);
      if (*v27 < 0xDu)
      {
        v30 = 0;
        v29 = v22;
      }

      else
      {
        v28 = v27[6];
        v29 = v22;
        v30 = v28 ? (v11 + v28 + *(v11 + v28)) : 0;
      }

      result = sub_2ECB44(v29, v30);
      if (result)
      {
        result = sub_2D9788(v11, v22, 0xEu, 4);
        if (result)
        {
          result = sub_2CDF90(v11, v22, 0x10u);
          if (result)
          {
            v31 = (v11 - *v11);
            if (*v31 >= 0x11u && (v32 = v31[8]) != 0)
            {
              v33 = (v11 + v32 + *(v11 + v32));
            }

            else
            {
              v33 = 0;
            }

            result = sub_2DA624(v22, v33);
            if (result)
            {
              result = sub_2CDF90(v11, v22, 0x12u);
              if (result)
              {
                v34 = (v11 - *v11);
                if (*v34 < 0x13u || (v35 = v34[9]) == 0 || (result = sub_2CE100(v22, (v11 + v35 + *(v11 + v35)), 1uLL, 0), result))
                {
                  result = sub_2CDF90(v11, v22, 0x14u);
                  if (result)
                  {
                    v36 = (v11 - *v11);
                    if (*v36 >= 0x15u && (v37 = v36[10]) != 0)
                    {
                      v38 = (v11 + v37 + *(v11 + v37));
                    }

                    else
                    {
                      v38 = 0;
                    }

                    result = sub_2DA624(v22, v38);
                    if (result)
                    {
                      result = sub_2D9788(v11, v22, 0x16u, 4);
                      if (result)
                      {
                        result = sub_2CDF90(v11, v22, 0x18u);
                        if (result)
                        {
                          v43 = (v11 - *v11);
                          if (*v43 >= 0x19u && (v44 = v43[12]) != 0)
                          {
                            v45 = (v11 + v44 + *(v11 + v44));
                          }

                          else
                          {
                            v45 = 0;
                          }

                          result = sub_2DA624(v22, v45);
                          if (result)
                          {
                            result = sub_2CDF90(v11, v22, 0x1Au);
                            if (result)
                            {
                              v50 = (v11 - *v11);
                              if (*v50 < 0x1Bu || (v51 = v50[13]) == 0 || (result = sub_2ECECC((v11 + v51 + *(v11 + v51)), v22), result))
                              {
                                result = sub_2CDF90(v11, v22, 0x1Cu);
                                if (result)
                                {
                                  v52 = *v11;
                                  v53 = -v52;
                                  if (*(v11 - v52) >= 0x1Du && *(v11 - v52 + 28))
                                  {
                                    result = sub_2ED10C((v11 + *(v11 - v52 + 28) + *(v11 + *(v11 - v52 + 28))), v22);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v53 = -*v11;
                                  }

                                  v54 = v11;
                                  v55 = (v11 + v53);
                                  v56 = *v55;
                                  v57 = v22;
                                  if (v56 < 0x1F || (!v55[15] || (result = 0, v58 = *(v22 + 8), v58 >= 2) && (v57 = v22, v54 = v11, v58 - 1 >= v11 + v55[15] - *v22)) && (v56 < 0x21 || (v59 = v55[16]) == 0 || (result = 0, v60 = *(v57 + 8), v60 >= 2) && (v57 = v22, v54 = v11, v60 - 1 >= v11 + v59 - *v22)))
                                  {
                                    result = sub_2CDF90(v54, v57, 0x22u);
                                    if (result)
                                    {
                                      v61 = (v11 - *v11);
                                      if (*v61 < 0x23u || (v62 = v61[17]) == 0 || (result = sub_2ECBD0((v11 + v62 + *(v11 + v62)), v22), result))
                                      {
                                        --*(v22 + 40);
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
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2ECB44(uint64_t a1, _DWORD *a2)
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
    result = sub_2ECBD0((v5 + *v5), a1);
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

uint64_t sub_2ECBD0(int *a1, uint64_t a2)
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
          v42 = a1;
          v29 = 0;
          v30 = v28 + 1;
          while (1)
          {
            v31 = a2;
            if ((sub_2E8FBC((v30 + *v30), a2) & 1) == 0)
            {
              return 0;
            }

            ++v29;
            ++v30;
            a2 = v31;
            if (v29 >= *v28)
            {
              a1 = v42;
              v16 = -*v42;
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
            if (v36 < 1)
            {
              return 0;
            }

            if (v35 - 1 < v34 + v36)
            {
              return 0;
            }

            v37 = a1;
            v38 = a2;
            if (!sub_2E8FBC((a1 + v33 + *(a1 + v33)), a2))
            {
              return 0;
            }

            a1 = v37;
            v16 = -*v37;
            a2 = v38;
          }
        }

        v39 = a1 + v16;
        if (*(a1 + v16) < 9u || (v40 = *(v39 + 4), !*(v39 + 4)) || (v13 = 0, v41 = *(a2 + 8), v41 >= 2) && v41 - 1 >= a1 + v40 - *a2)
        {
          --*(a2 + 40);
          return 1;
        }

        return v13;
      }
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2ECECC(int *a1, uint64_t a2)
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
      if (!sub_2ECBD0((a1 + v17 + *(a1 + v17)), a2))
      {
        return 0;
      }

      a1 = v20;
      v15 = -*v20;
      a2 = v21;
    }
  }

  v22 = a1 + v15;
  v23 = *(a1 + v15);
  if (v23 < 7)
  {
LABEL_42:
    --*(a2 + 40);
    return 1;
  }

  if (*(v22 + 3))
  {
    v24 = a1 + *(v22 + 3) - *a2;
    if ((v24 & 3) == 0 || (*(a2 + 24) & 1) == 0)
    {
      v25 = *(a2 + 8);
      if (v25 < 5 || v25 - 4 < v24)
      {
        return 0;
      }

      goto LABEL_38;
    }

    return 0;
  }

LABEL_38:
  if (v23 < 9)
  {
    goto LABEL_42;
  }

  v26 = *(v22 + 4);
  if (!v26)
  {
    goto LABEL_42;
  }

  v27 = *(a2 + 8);
  if (v27 >= 5 && v27 - 4 >= a1 + v26 - *a2)
  {
    goto LABEL_42;
  }

  return 0;
}

uint64_t sub_2ED10C(int *a1, uint64_t a2)
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
      if (!sub_2ED3E8((a1 + v17 + *(a1 + v17)), a2))
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
        if ((sub_2ED3E8((v37 + *v37), a2) & 1) == 0)
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

uint64_t sub_2ED3E8(int *a1, uint64_t a2)
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
      if (!sub_2ED628((a1 + v17 + *(a1 + v17)), a2))
      {
        return 0;
      }

      a1 = v20;
      v15 = -*v20;
      a2 = v21;
    }
  }

  v22 = a1 + v15;
  v23 = *(a1 + v15);
  if (v23 < 7)
  {
LABEL_42:
    --*(a2 + 40);
    return 1;
  }

  if (*(v22 + 3))
  {
    v24 = a1 + *(v22 + 3) - *a2;
    if ((v24 & 3) == 0 || (*(a2 + 24) & 1) == 0)
    {
      v25 = *(a2 + 8);
      if (v25 < 9 || v25 - 8 < v24)
      {
        return 0;
      }

      goto LABEL_38;
    }

    return 0;
  }

LABEL_38:
  if (v23 < 9)
  {
    goto LABEL_42;
  }

  v26 = *(v22 + 4);
  if (!v26)
  {
    goto LABEL_42;
  }

  v27 = *(a2 + 8);
  if (v27 >= 2 && v27 - 1 >= a1 + v26 - *a2)
  {
    goto LABEL_42;
  }

  return 0;
}

BOOL sub_2ED628(int *a1, uint64_t a2)
{
  result = sub_2CDED0(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = (a1 - *a1);
  v6 = *v5;
  if (v6 < 5)
  {
    goto LABEL_28;
  }

  if (v5[2])
  {
    v7 = a1 + v5[2] - *a2;
    if (v7 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v8 = *(a2 + 8);
    if (v8 < 9 || v8 - 8 < v7)
    {
      return result;
    }
  }

  if (v6 < 7 || (v9 = v5[3]) == 0)
  {
LABEL_28:
    --*(a2 + 40);
    return 1;
  }

  v10 = a1 + v9 - *a2;
  if (v10 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  result = 0;
  v11 = *(a2 + 8);
  if (v11 < 5 || v11 - 4 < v10)
  {
    return result;
  }

  v12 = *(*a2 + v10);
  if (v12 < 1)
  {
    return 0;
  }

  if (v11 - 1 < v10 + v12)
  {
    return 0;
  }

  v13 = (a1 + v9 + *(a1 + v9));
  v14 = v13 - *a2;
  if (v14 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  result = 0;
  v15 = *(a2 + 8);
  if (v15 >= 5 && v15 - 4 >= v14)
  {
    v16 = *v13;
    if (v16 > 0x1FFFFFFE)
    {
      return 0;
    }

    v17 = 4 * v16 + 4;
    v19 = v15 >= v17;
    v18 = v15 - v17;
    v19 = v18 != 0 && v19 && v18 >= v14;
    if (!v19)
    {
      return 0;
    }

    goto LABEL_28;
  }

  return result;
}

uint64_t sub_2ED7A4(int *a1, uint32x2_t *a2)
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
    }

    if (v16 >= 7)
    {
      if (v15[3] && v5 < &v3[v15[3]])
      {
        return 0;
      }

      if (v16 >= 9)
      {
        v19 = v15[4];
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
              goto LABEL_49;
            }
          }

          return 0;
        }
      }
    }
  }

LABEL_49:
  a2[5].i32[0] = v8.i32[0];
  return 1;
}

uint64_t sub_2ED990(int *a1, uint64_t a2)
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
  if ((v12 & 1) == 0)
  {
    if (v4 <= v12 || v4 - v12 < v11)
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
        if (&v3[v17] & 7) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        if (v4 < 9 || v4 - 8 < v18)
        {
          return v13;
        }
      }

      if (v16 >= 7)
      {
        v19 = v15[3];
        if (v15[3])
        {
          v20 = &v3[v19];
          if (&v3[v19] & 3) != 0 && (*(a2 + 24))
          {
            return 0;
          }

          v13 = 0;
          if (v4 < 9 || v4 - 8 < v20)
          {
            return v13;
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

            v82 = a1;
            v27 = *v25;
            if (v27 > 0x1FFFFFFE)
            {
              return 0;
            }

            v13 = 0;
            v28 = 4 * v27 + 4;
            v29 = v4 > v28;
            v30 = v4 - v28;
            if (!v29 || v30 < v26)
            {
              return v13;
            }

            v31 = a2;
            v32 = (v24 + *v24);
            if (*v32)
            {
              v33 = 0;
              v34 = v32 + 1;
              do
              {
                v35 = v34;
                if ((sub_2ECBD0((v34 + *v34), a2) & 1) == 0)
                {
                  return 0;
                }

                ++v33;
                v34 = v35 + 1;
                a2 = v31;
                a1 = v82;
              }

              while (v33 < *v32);
            }
          }
        }
      }
    }

    v36 = a1;
    v37 = a2;
    if (sub_2D9788(a1, a2, 0xAu, 4) && sub_2CDF90(v36, v37, 0xCu))
    {
      v38 = (v36 - *v36);
      if (*v38 < 0xDu)
      {
        v41 = 0;
        v40 = v37;
      }

      else
      {
        v39 = v38[6];
        v40 = v37;
        v41 = v39 ? (v36 + v39 + *(v36 + v39)) : 0;
      }

      if (sub_2DA624(v40, v41) && sub_2CDF90(v36, v37, 0xEu))
      {
        v42 = (v36 - *v36);
        if (*v42 < 0xFu)
        {
          v45 = 0;
          v44 = v37;
        }

        else
        {
          v43 = v42[7];
          v44 = v37;
          v45 = v43 ? (v36 + v43 + *(v36 + v43)) : 0;
        }

        if (sub_2DA624(v44, v45) && sub_2CDF90(v36, v37, 0x10u))
        {
          v46 = (v36 - *v36);
          if (*v46 >= 0x11u && (v47 = v46[8]) != 0)
          {
            v48 = (v36 + v47 + *(v36 + v47));
          }

          else
          {
            v48 = 0;
          }

          if (sub_2DA624(v37, v48) && sub_2D9788(v36, v37, 0x12u, 4) && sub_2D8DE0(v36, v37, 0x14u, 2) && sub_2D8DE0(v36, v37, 0x16u, 2) && sub_2DAD14(v36, v37, 0x18u, 4) && sub_2CDF90(v36, v37, 0x1Au))
          {
            v49 = (v36 - *v36);
            if (*v49 >= 0x1Bu && (v50 = v49[13]) != 0)
            {
              v51 = (v36 + v50 + *(v36 + v50));
            }

            else
            {
              v51 = 0;
            }

            if (sub_2D986C(v37, v51))
            {
              v52 = (v36 - *v36);
              if (*v52 >= 0x1Bu && (v53 = v52[13]) != 0)
              {
                v54 = (v36 + v53 + *(v36 + v53));
              }

              else
              {
                v54 = 0;
              }

              if (sub_2EE0E4(v37, v54) && sub_2CDF90(v36, v37, 0x1Cu))
              {
                v55 = (v36 - *v36);
                if (*v55 >= 0x1Du && (v56 = v55[14]) != 0)
                {
                  v57 = (v36 + v56 + *(v36 + v56));
                }

                else
                {
                  v57 = 0;
                }

                if (sub_2DA624(v37, v57))
                {
                  v58 = v36;
                  v59 = (v36 - *v36);
                  v60 = v37;
                  if (*v59 >= 0x1Fu)
                  {
                    v61 = v59[15];
                    if (v59[15])
                    {
                      v13 = 0;
                      v62 = *(v37 + 8);
                      if (v62 < 2)
                      {
                        return v13;
                      }

                      v60 = v37;
                      v58 = v36;
                      if (v62 - 1 < v36 + v61 - *v37)
                      {
                        return v13;
                      }
                    }
                  }

                  if (sub_2CDF90(v58, v60, 0x22u))
                  {
                    v63 = (v36 - *v36);
                    if ((*v63 < 0x23u || (v64 = v63[17]) == 0 || sub_2ED10C((v36 + v64 + *(v36 + v64)), v37)) && sub_2CDF90(v36, v37, 0x24u))
                    {
                      v65 = (v36 - *v36);
                      if (*v65 >= 0x25u && (v66 = v65[18]) != 0)
                      {
                        v67 = (v36 + v66 + *(v36 + v66));
                      }

                      else
                      {
                        v67 = 0;
                      }

                      if (sub_2D986C(v37, v67))
                      {
                        v68 = (v36 - *v36);
                        if (*v68 >= 0x25u && (v69 = v68[18]) != 0)
                        {
                          v70 = (v36 + v69 + *(v36 + v69));
                        }

                        else
                        {
                          v70 = 0;
                        }

                        if (sub_2EE170(v37, v70) && sub_2CDF90(v36, v37, 0x26u))
                        {
                          v71 = (v36 - *v36);
                          if (*v71 >= 0x27u && (v72 = v71[19]) != 0)
                          {
                            v73 = (v36 + v72 + *(v36 + v72));
                          }

                          else
                          {
                            v73 = 0;
                          }

                          if (sub_2DA624(v37, v73) && sub_2CDF90(v36, v37, 0x28u))
                          {
                            v74 = (v36 - *v36);
                            if ((*v74 < 0x29u || (v75 = v74[20]) == 0 || sub_2ECBD0((v36 + v75 + *(v36 + v75)), v37)) && sub_2CDF90(v36, v37, 0x2Au))
                            {
                              v76 = (v36 - *v36);
                              if (*v76 >= 0x2Bu && (v77 = v76[21]) != 0)
                              {
                                v78 = (v36 + v77 + *(v36 + v77));
                              }

                              else
                              {
                                v78 = 0;
                              }

                              if (sub_2DA624(v37, v78) && sub_2CDF90(v36, v37, 0x2Cu))
                              {
                                v79 = (v36 - *v36);
                                if (*v79 >= 0x2Du && (v80 = v79[22]) != 0)
                                {
                                  v81 = (v36 + v80 + *(v36 + v80));
                                }

                                else
                                {
                                  v81 = 0;
                                }

                                if (sub_2DA624(v37, v81))
                                {
                                  --*(v37 + 40);
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
            }
          }
        }
      }
    }

    return 0;
  }

  return 0;
}

BOOL sub_2EE0E4(uint64_t a1, _DWORD *a2)
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
    result = sub_2EE1FC((v5 + *v5), a1);
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

uint64_t sub_2EE170(uint64_t a1, _DWORD *a2)
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
    result = sub_2EE37C((v5 + *v5), a1);
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

BOOL sub_2EE1FC(int *a1, uint64_t a2)
{
  result = sub_2CDED0(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = (a1 - *a1);
  v6 = *v5;
  if (v6 < 5)
  {
LABEL_30:
    --*(a2 + 40);
    return 1;
  }

  v7 = v5[2];
  if (v5[2])
  {
    v8 = a1 + v7 - *a2;
    if (v8 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v9 = *(a2 + 8);
    if (v9 < 5 || v9 - 4 < v8)
    {
      return result;
    }

    v10 = *(*a2 + v8);
    if (v10 < 1)
    {
      return 0;
    }

    if (v9 - 1 < v8 + v10)
    {
      return 0;
    }

    v11 = (a1 + v7 + *(a1 + v7));
    v12 = v11 - *a2;
    if (v12 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v13 = *(a2 + 8);
    if (v13 < 5 || v13 - 4 < v12)
    {
      return result;
    }

    v14 = *v11;
    if (v14 > 0x7FFFFFFE)
    {
      return 0;
    }

    v15 = v14 + 4;
    v16 = v12 + v14 + 4;
    v17 = v13 - 1 >= v16 && v13 > v15;
    v18 = v17 && v13 - v15 >= v12;
    if (!v18 || *(*a2 + v16))
    {
      return 0;
    }
  }

  if (v6 < 7)
  {
    goto LABEL_30;
  }

  v19 = v5[3];
  if (!v19)
  {
    goto LABEL_30;
  }

  result = 0;
  v20 = *(a2 + 8);
  if (v20 >= 2 && v20 - 1 >= a1 + v19 - *a2)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_2EE37C(int *a1, uint64_t a2)
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

  v14 = *a1;
  v15 = -v14;
  v16 = a1 - v14;
  v17 = *(a1 - v14);
  if (v17 >= 5)
  {
    v18 = *(v16 + 2);
    if (*(v16 + 2))
    {
      if (&v3[v18] & 3) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      if (v4 < 9 || v4 - 8 < &v3[v18])
      {
        return 0;
      }
    }

    if (v17 >= 7)
    {
      v19 = *(v16 + 3);
      if (v19)
      {
        v20 = &v3[v19];
        if ((v20 & 3) != 0)
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

        v21 = *(v2 + v20);
        if (v21 >= 1 && v4 - 1 >= v20 + v21)
        {
          v22 = a1;
          v23 = a2;
          if (sub_2ECBD0((a1 + v19 + *(a1 + v19)), a2))
          {
            a1 = v22;
            v15 = -*v22;
            a2 = v23;
            goto LABEL_38;
          }
        }

        return 0;
      }
    }
  }

LABEL_38:
  v24 = a1 + v15;
  if (*(a1 + v15) < 9u || !*(v24 + 4) || (v25 = *(a2 + 8), v25 >= 2) && v25 - 1 >= a1 + *(v24 + 4) - *a2)
  {
    --*(a2 + 40);
    return 1;
  }

  return 0;
}

uint64_t sub_2EE5B0(int *a1, uint64_t a2)
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
      if (v21 > 0x7FFFFFFE)
      {
        return 0;
      }

      v22 = v21 + 4;
      v23 = &v20[v21 + 4];
      v24 = v4 - 1 >= v23 && v4 > v22;
      v25 = v24 && v4 - v22 >= v20;
      if (!v25 || *(v2 + v23))
      {
        return 0;
      }
    }

    if (v15 >= 7)
    {
      v26 = v14[3];
      if (v14[3])
      {
        v27 = &v3[v26];
        if ((v3 + v26))
        {
          if (v5 < v27 || (*(a2 + 24) & 1) != 0)
          {
            return 0;
          }
        }

        else if (v5 < v27)
        {
          return 0;
        }
      }

      if (v15 >= 9)
      {
        v28 = v14[4];
        if (v14[4])
        {
          v29 = &v3[v28];
          if ((&v3[v28] & 3) != 0)
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
        }

        if (v15 >= 0xB && v14[5] && v4 - 1 < &v3[v14[5]])
        {
          return 0;
        }
      }
    }
  }

  if (sub_2CDF90(a1, a2, 0xCu))
  {
    v32 = (a1 - *a1);
    if (*v32 < 0xDu)
    {
      v35 = 0;
      v34 = a2;
    }

    else
    {
      v33 = v32[6];
      v34 = a2;
      v35 = v33 ? (a1 + v33 + *(a1 + v33)) : 0;
    }

    if (sub_2D97E8(v34, v35))
    {
      --*(a2 + 40);
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2EE8A0(int *a1, uint64_t a2)
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

  v12 = &v3[-v7];
  if (v12)
  {
    result = 0;
    if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v12)
    {
      return result;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13)
  {
    return 0;
  }

  v6 = v4 >= v13;
  v14 = v4 - v13;
  if (v14 == 0 || !v6 || v14 < v12)
  {
    return 0;
  }

  v16 = (a1 - *a1);
  v17 = *v16;
  if (v17 < 5)
  {
    goto LABEL_58;
  }

  if (v16[2])
  {
    v18 = &v3[v16[2]];
    if (v18 & 7) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    if (v4 < 9 || v4 - 8 < v18)
    {
      return result;
    }
  }

  if (v17 < 7)
  {
    goto LABEL_58;
  }

  if (v16[3])
  {
    v19 = &v3[v16[3]];
    if (v19 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    if (v4 < 9 || v4 - 8 < v19)
    {
      return result;
    }
  }

  if (v17 < 9)
  {
    goto LABEL_58;
  }

  v20 = v16[4];
  if (v16[4])
  {
    v21 = &v3[v20];
    if ((&v3[v20] & 3) != 0)
    {
      result = 0;
      if (v5 < v21 || (*(a2 + 24) & 1) != 0)
      {
        return result;
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
      result = 0;
      if (v5 < v24 || (*(a2 + 24) & 1) != 0)
      {
        return result;
      }
    }

    else if (v5 < v24)
    {
      return 0;
    }

    v25 = *v23;
    if (v25 > 0xFFFFFFE)
    {
      return 0;
    }

    result = 0;
    v26 = (8 * v25) | 4;
    v6 = v4 >= v26;
    v27 = v4 - v26;
    if (v27 == 0 || !v6 || v27 < v24)
    {
      return result;
    }
  }

  if (v17 < 0xB || (v28 = v16[5]) == 0)
  {
LABEL_58:
    v30 = a2;
    result = sub_2DA624(a2, 0);
    if (!result)
    {
      return result;
    }

    goto LABEL_59;
  }

  v29 = &v3[v28];
  if ((v29 & 3) == 0)
  {
    if (v5 >= v29)
    {
      goto LABEL_97;
    }

    return 0;
  }

  result = 0;
  if (v5 < v29 || (*(a2 + 24) & 1) != 0)
  {
    return result;
  }

LABEL_97:
  v54 = *(v2 + v29);
  if (v54 < 1 || v4 - 1 < v29 + v54)
  {
    return 0;
  }

  v30 = a2;
  result = sub_2DA624(a2, (a1 + v28 + *(a1 + v28)));
  if (!result)
  {
    return result;
  }

LABEL_59:
  result = sub_2CDF90(a1, v30, 0xCu);
  if (result)
  {
    v31 = (a1 - *a1);
    if (*v31 < 0xDu)
    {
      v34 = 0;
      v33 = v30;
    }

    else
    {
      v32 = v31[6];
      v33 = v30;
      v34 = v32 ? (a1 + v32 + *(a1 + v32)) : 0;
    }

    result = sub_2DA624(v33, v34);
    if (result)
    {
      result = sub_2CDF90(a1, v30, 0xEu);
      if (result)
      {
        v35 = (a1 - *a1);
        if (*v35 < 0xFu)
        {
          v38 = 0;
          v37 = v30;
        }

        else
        {
          v36 = v35[7];
          v37 = v30;
          v38 = v36 ? (a1 + v36 + *(a1 + v36)) : 0;
        }

        result = sub_2D986C(v37, v38);
        if (result)
        {
          v39 = (a1 - *a1);
          if (*v39 < 0xFu)
          {
            v42 = 0;
            v41 = v30;
          }

          else
          {
            v40 = v39[7];
            v41 = v30;
            v42 = v40 ? (a1 + v40 + *(a1 + v40)) : 0;
          }

          result = sub_2ECB44(v41, v42);
          if (result)
          {
            result = sub_2D8DE0(a1, v30, 0x10u, 2);
            if (result)
            {
              v43 = (a1 - *a1);
              v44 = v30;
              if (*v43 < 0x13u || (v45 = v43[9]) == 0 || (result = 0, v46 = v30[1], v46 >= 5) && (v44 = v30, v46 - 4 >= a1 + v45 - *v30))
              {
                result = sub_2CDF90(a1, v44, 0x14u);
                if (result)
                {
                  v47 = (a1 - *a1);
                  if (*v47 < 0x15u || (v48 = v47[10]) == 0 || (result = sub_2ECECC((a1 + v48 + *(a1 + v48)), v30), result))
                  {
                    result = sub_2CDF90(a1, v30, 0x16u);
                    if (result)
                    {
                      v49 = (a1 - *a1);
                      if (*v49 < 0x17u || (v50 = v49[11]) == 0 || (result = sub_2ECECC((a1 + v50 + *(a1 + v50)), v30), result))
                      {
                        result = sub_2CDF90(a1, v30, 0x18u);
                        if (result)
                        {
                          v51 = (a1 - *a1);
                          if (*v51 >= 0x19u && (v52 = v51[12]) != 0)
                          {
                            v53 = (a1 + v52 + *(a1 + v52));
                          }

                          else
                          {
                            v53 = 0;
                          }

                          result = sub_2EF6C8(v30, v53);
                          if (result)
                          {
                            result = sub_2CDF90(a1, v30, 0x1Au);
                            if (result)
                            {
                              v55 = (a1 - *a1);
                              if (*v55 >= 0x1Bu && (v56 = v55[13]) != 0)
                              {
                                v57 = (a1 + v56 + *(a1 + v56));
                              }

                              else
                              {
                                v57 = 0;
                              }

                              result = sub_2EF6C8(v30, v57);
                              if (result)
                              {
                                result = sub_2CDF90(a1, v30, 0x1Cu);
                                if (result)
                                {
                                  v58 = (a1 - *a1);
                                  if (*v58 >= 0x1Du && (v59 = v58[14]) != 0)
                                  {
                                    v60 = (a1 + v59 + *(a1 + v59));
                                  }

                                  else
                                  {
                                    v60 = 0;
                                  }

                                  result = sub_2EF6C8(v30, v60);
                                  if (result)
                                  {
                                    v61 = a1;
                                    v62 = (a1 - *a1);
                                    v63 = v30;
                                    if (*v62 < 0x1Fu || (v64 = v62[15]) == 0 || (result = 0, v65 = v30[1], v65 >= 2) && (v63 = v30, v61 = a1, v65 - 1 >= a1 + v64 - *v30))
                                    {
                                      result = sub_2DAD14(v61, v63, 0x20u, 4);
                                      if (result)
                                      {
                                        v66 = a1;
                                        v67 = (a1 - *a1);
                                        v68 = *v67;
                                        v69 = v30;
                                        if (v68 < 0x23 || (!v67[17] || (result = 0, v70 = v30[1], v70 >= 2) && (v69 = v30, v66 = a1, v70 - 1 >= a1 + v67[17] - *v30)) && (v68 < 0x25 || (!v67[18] || (result = 0, v71 = *(v69 + 8), v71 >= 2) && (v69 = v30, v66 = a1, v71 - 1 >= a1 + v67[18] - *v30)) && (v68 < 0x27 || (!v67[19] || (result = 0, v72 = *(v69 + 8), v72 >= 2) && (v69 = v30, v66 = a1, v72 - 1 >= a1 + v67[19] - *v30)) && (v68 < 0x29 || (v73 = v67[20]) == 0 || (result = 0, v74 = *(v69 + 8), v74 >= 2) && (v69 = v30, v66 = a1, v74 - 1 >= a1 + v73 - *v30)))))
                                        {
                                          result = sub_2D8DE0(v66, v69, 0x2Au, 2);
                                          if (result)
                                          {
                                            v75 = a1;
                                            v76 = (a1 - *a1);
                                            v77 = *v76;
                                            v78 = v30;
                                            if (v77 < 0x2D || (!v76[22] || (result = 0, v79 = v30[1], v79 >= 2) && (v78 = v30, v75 = a1, v79 - 1 >= a1 + v76[22] - *v30)) && (v77 < 0x2F || (!v76[23] || (result = 0, v80 = *(v78 + 8), v80 >= 2) && (v78 = v30, v75 = a1, v80 - 1 >= a1 + v76[23] - *v30)) && (v77 < 0x31 || (v81 = v76[24]) == 0 || (result = 0, v82 = *(v78 + 8), v82 >= 2) && (v78 = v30, v75 = a1, v82 - 1 >= a1 + v81 - *v30))))
                                            {
                                              result = sub_2CDF90(v75, v78, 0x32u);
                                              if (result)
                                              {
                                                v83 = (a1 - *a1);
                                                if (*v83 >= 0x33u && (v84 = v83[25]) != 0)
                                                {
                                                  v85 = (a1 + v84 + *(a1 + v84));
                                                }

                                                else
                                                {
                                                  v85 = 0;
                                                }

                                                result = sub_2DA624(v30, v85);
                                                if (result)
                                                {
                                                  v86 = a1;
                                                  v87 = (a1 - *a1);
                                                  v88 = v30;
                                                  if (*v87 < 0x35u || (v89 = v87[26]) == 0 || (result = 0, v90 = v30[1], v90 >= 2) && (v88 = v30, v86 = a1, v90 - 1 >= a1 + v89 - *v30))
                                                  {
                                                    result = sub_2CDF90(v86, v88, 0x38u);
                                                    if (result)
                                                    {
                                                      v91 = (a1 - *a1);
                                                      if (*v91 < 0x39u || (v92 = v91[28]) == 0 || (result = sub_2ED10C((a1 + v92 + *(a1 + v92)), v30), result))
                                                      {
                                                        result = sub_2CDF90(a1, v30, 0x3Au);
                                                        if (result)
                                                        {
                                                          v93 = (a1 - *a1);
                                                          if (*v93 >= 0x3Bu && (v94 = v93[29]) != 0)
                                                          {
                                                            v95 = (a1 + v94 + *(a1 + v94));
                                                          }

                                                          else
                                                          {
                                                            v95 = 0;
                                                          }

                                                          result = sub_2DA624(v30, v95);
                                                          if (result)
                                                          {
                                                            v96 = a1;
                                                            v97 = (a1 - *a1);
                                                            v98 = *v97;
                                                            v99 = v30;
                                                            if (v98 < 0x3D || (!v97[30] || (result = 0, v100 = v30[1], v100 >= 2) && (v99 = v30, v96 = a1, v100 - 1 >= a1 + v97[30] - *v30)) && (v98 < 0x3F || (v101 = v97[31]) == 0 || (result = 0, v102 = *(v99 + 8), v102 >= 2) && (v99 = v30, v96 = a1, v102 - 1 >= a1 + v101 - *v30)))
                                                            {
                                                              result = sub_2CDF90(v96, v99, 0x40u);
                                                              if (result)
                                                              {
                                                                v103 = (a1 - *a1);
                                                                if (*v103 < 0x41u || (v104 = v103[32]) == 0 || (result = sub_2ECECC((a1 + v104 + *(a1 + v104)), v30), result))
                                                                {
                                                                  result = sub_2CDF90(a1, v30, 0x42u);
                                                                  if (result)
                                                                  {
                                                                    v105 = (a1 - *a1);
                                                                    if (*v105 < 0x43u || (v106 = v105[33]) == 0 || (result = sub_2ECECC((a1 + v106 + *(a1 + v106)), v30), result))
                                                                    {
                                                                      result = sub_2CDF90(a1, v30, 0x44u);
                                                                      if (result)
                                                                      {
                                                                        v107 = (a1 - *a1);
                                                                        if (*v107 >= 0x45u && (v108 = v107[34]) != 0)
                                                                        {
                                                                          v109 = (a1 + v108 + *(a1 + v108));
                                                                        }

                                                                        else
                                                                        {
                                                                          v109 = 0;
                                                                        }

                                                                        result = sub_2EF6C8(v30, v109);
                                                                        if (result)
                                                                        {
                                                                          result = sub_2CDF90(a1, v30, 0x46u);
                                                                          if (result)
                                                                          {
                                                                            v110 = (a1 - *a1);
                                                                            if (*v110 >= 0x47u && (v111 = v110[35]) != 0)
                                                                            {
                                                                              v112 = (a1 + v111 + *(a1 + v111));
                                                                            }

                                                                            else
                                                                            {
                                                                              v112 = 0;
                                                                            }

                                                                            result = sub_2EF734(v30, v112);
                                                                            if (result)
                                                                            {
                                                                              result = sub_2CDF90(a1, v30, 0x48u);
                                                                              if (result)
                                                                              {
                                                                                v113 = (a1 - *a1);
                                                                                if (*v113 >= 0x49u && (v114 = v113[36]) != 0)
                                                                                {
                                                                                  v115 = (a1 + v114 + *(a1 + v114));
                                                                                }

                                                                                else
                                                                                {
                                                                                  v115 = 0;
                                                                                }

                                                                                result = sub_2EF6C8(v30, v115);
                                                                                if (result)
                                                                                {
                                                                                  result = sub_2CDF90(a1, v30, 0x4Au);
                                                                                  if (result)
                                                                                  {
                                                                                    v116 = (a1 - *a1);
                                                                                    if (*v116 >= 0x4Bu && (v117 = v116[37]) != 0)
                                                                                    {
                                                                                      v118 = (a1 + v117 + *(a1 + v117));
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v118 = 0;
                                                                                    }

                                                                                    result = sub_2DA624(v30, v118);
                                                                                    if (result)
                                                                                    {
                                                                                      v119 = a1;
                                                                                      v120 = (a1 - *a1);
                                                                                      v121 = *v120;
                                                                                      v122 = v30;
                                                                                      if (v121 < 0x4D || (!v120[38] || (result = 0, v123 = v30[1], v123 >= 2) && (v122 = v30, v119 = a1, v123 - 1 >= a1 + v120[38] - *v30)) && (v121 < 0x4F || (v124 = v120[39]) == 0 || (result = 0, v125 = *(v122 + 8), v125 >= 2) && (v122 = v30, v119 = a1, v125 - 1 >= a1 + v124 - *v30)))
                                                                                      {
                                                                                        result = sub_2CDF90(v119, v122, 0x50u);
                                                                                        if (result)
                                                                                        {
                                                                                          v126 = (a1 - *a1);
                                                                                          if (*v126 >= 0x51u && (v127 = v126[40]) != 0)
                                                                                          {
                                                                                            v128 = (a1 + v127 + *(a1 + v127));
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v128 = 0;
                                                                                          }

                                                                                          result = sub_2DA624(v30, v128);
                                                                                          if (result)
                                                                                          {
                                                                                            result = sub_2CE0A0(a1, v30, 0x52u, 4);
                                                                                            if (result)
                                                                                            {
                                                                                              result = sub_2CDF90(a1, v30, 0x54u);
                                                                                              if (result)
                                                                                              {
                                                                                                v129 = *a1;
                                                                                                v130 = -v129;
                                                                                                if (*(a1 - v129) >= 0x55u && *(a1 - v129 + 84))
                                                                                                {
                                                                                                  result = sub_2EF874((a1 + *(a1 - v129 + 84) + *(a1 + *(a1 - v129 + 84))), v30);
                                                                                                  if (!result)
                                                                                                  {
                                                                                                    return result;
                                                                                                  }

                                                                                                  v130 = -*a1;
                                                                                                }

                                                                                                v131 = a1 + v130;
                                                                                                v6 = *(a1 + v130) >= 0x57u;
                                                                                                v132 = v30;
                                                                                                if (!v6 || (v133 = *(v131 + 43)) == 0 || (result = 0, v134 = v30[1], v134 >= 2) && (v132 = v30, v134 - 1 >= a1 + v133 - *v30))
                                                                                                {
                                                                                                  --v132[5].i32[0];
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
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2EF6C8(uint64_t a1, unsigned int *a2)
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

  v4 = *(a1 + 8);
  if (v4 < 5 || v4 - 4 < v2)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v4 > v6 + 4;
  v8 = v4 - (v6 + 4);
  v10 = v7 && v8 >= v2;
  if (v6 <= 0x7FFFFFFE)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2EF734(uint32x2_t *a1, int *a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = *a1;
  v3 = a2 - *a1;
  if (v3 & 3) != 0 && (a1[3].i8[0])
  {
    return 0;
  }

  v5 = a1[1];
  if (v5 < 5 || v5 - 4 < v3)
  {
    return 0;
  }

  v7 = *a2;
  v8 = a1[5];
  v9 = vadd_s32(v8, 0x100000001);
  a1[5] = v9;
  v10 = vcgt_u32(v9, a1[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v11 = v3 - v7;
  if ((v3 - v7))
  {
    v12 = 0;
    if ((a1[3].i8[0] & 1) != 0 || v5 - 2 < v11)
    {
      return v12;
    }
  }

  else if (v5 - 2 < v11)
  {
    return 0;
  }

  v13 = *(*&v2 + v11);
  if (v13)
  {
    return 0;
  }

  if (v5 <= v13 || v5 - v13 < v11)
  {
    return 0;
  }

  v15 = (a2 - *a2);
  if (*v15 < 5u)
  {
    goto LABEL_31;
  }

  v16 = v15[2];
  if (!v16)
  {
    goto LABEL_31;
  }

  v17 = v3 + v16;
  if (v17 & 7) != 0 && (a1[3].i8[0])
  {
    return 0;
  }

  v12 = 0;
  if (v5 >= 9 && v5 - 8 >= v17)
  {
LABEL_31:
    a1[5].i32[0] = v8.i32[0];
    return 1;
  }

  return v12;
}

uint64_t sub_2EF874(int *a1, uint32x2_t *a2)
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
  v16 = *v15;
  v17 = v8.i32[0];
  if (v16 < 5)
  {
    goto LABEL_70;
  }

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
    goto LABEL_70;
  }

  v28 = v15[3];
  if (!v28)
  {
    goto LABEL_70;
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
  if (v30 < 1 || v4 - 1 < v29 + v30)
  {
    return 0;
  }

  v31 = (a1 + v28);
  v32 = (a1 + v28 + *(a1 + v28));
  v33 = v32 - *&v2;
  if ((v33 & 3) != 0)
  {
    if (v5 < v33 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }

    goto LABEL_59;
  }

  if (v5 < v33)
  {
    return 0;
  }

LABEL_59:
  v34 = *v32;
  if (v34 > 0x1FFFFFFE)
  {
    return 0;
  }

  v35 = 4 * v34 + 4;
  v6 = v4 >= v35;
  v36 = v4 - v35;
  if (v36 == 0 || !v6 || v36 < v33)
  {
    return 0;
  }

  v38 = a2;
  v39 = (v31 + *v31);
  if (*v39)
  {
    v40 = 0;
    v41 = v39 + 1;
    while ((sub_2EFB84((v41 + *v41), a2) & 1) != 0)
    {
      ++v40;
      ++v41;
      a2 = v38;
      if (v40 >= *v39)
      {
        v17 = v38[5].i32[0] - 1;
        goto LABEL_70;
      }
    }

    return 0;
  }

LABEL_70:
  a2[5].i32[0] = v17;
  return 1;
}

uint64_t sub_2EFB84(int *a1, uint64_t a2)
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
      if (v21 > 0x7FFFFFFE)
      {
        return 0;
      }

      v22 = v21 + 4;
      v23 = &v20[v21 + 4];
      v24 = v4 - 1 >= v23 && v4 > v22;
      v25 = v24 && v4 - v22 >= v20;
      if (!v25 || *(v2 + v23))
      {
        return 0;
      }
    }

    if (v15 >= 7)
    {
      if (v14[3] && v4 - 1 < &v3[v14[3]])
      {
        return 0;
      }

      if (v15 >= 9)
      {
        v26 = v14[4];
        if (v14[4])
        {
          v27 = &v3[v26];
          if ((v27 & 3) != 0)
          {
            if (v5 < v27 || (*(a2 + 24) & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v27)
          {
            return 0;
          }

          v28 = *(v2 + v27);
          if (v28 < 1 || v4 - 1 < v27 + v28)
          {
            return 0;
          }

          v29 = (a1 + v26 + *(a1 + v26));
          v30 = v29 - v2;
          if (((v29 - v2) & 3) != 0)
          {
            if (v5 < v30 || (*(a2 + 24) & 1) != 0)
            {
              return 0;
            }
          }

          else if (v5 < v30)
          {
            return 0;
          }

          v31 = *v29;
          if (v31 > 0x7FFFFFFE)
          {
            return 0;
          }

          v32 = v31 + 4;
          v33 = &v30[v31 + 4];
          if (v4 - 1 >= v33 && v4 > v32 && v4 - v32 >= v30)
          {
            if (*(v2 + v33))
            {
              return 0;
            }

            goto LABEL_67;
          }

          return 0;
        }
      }
    }
  }

LABEL_67:
  if (!sub_2CDF90(a1, a2, 0xAu))
  {
    return 0;
  }

  v36 = a1;
  v37 = *a1;
  v38 = -v37;
  v39 = (a1 - v37);
  if (*v39 < 0xBu)
  {
    goto LABEL_72;
  }

  v40 = v39[5];
  v41 = a2;
  if (v40)
  {
    if (!sub_2CE100(a2, (a1 + v40 + *(a1 + v40)), 4uLL, 0))
    {
      return 0;
    }

    v36 = a1;
    v38 = -*a1;
LABEL_72:
    v41 = a2;
  }

  v42 = (v36 + v38);
  if (*v42 >= 0xBu && (v43 = v42[5]) != 0)
  {
    v44 = (v36 + v43 + *(v36 + v43));
  }

  else
  {
    v44 = 0;
  }

  if (sub_2E4F70(v41, v44))
  {
    --*(a2 + 40);
    return 1;
  }

  return 0;
}

uint64_t sub_2EFF18(int *a1, uint32x2_t *a2)
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
  if (v16 < 5)
  {
    goto LABEL_53;
  }

  v17 = v15[2];
  if (v15[2] && ((&v3[v17] & 3) != 0 && (a2[3].i8[0] & 1) != 0 || v4 < 9 || v4 - 8 < &v3[v17]))
  {
    return 0;
  }

  if (v16 < 7)
  {
    goto LABEL_53;
  }

  v18 = v15[3];
  if (v15[3] && ((&v3[v18] & 3) != 0 && (a2[3].i8[0] & 1) != 0 || v4 < 9 || v4 - 8 < &v3[v18]))
  {
    return 0;
  }

  if (v16 < 9)
  {
    goto LABEL_53;
  }

  v19 = v15[4];
  if (!v19)
  {
    goto LABEL_53;
  }

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

    goto LABEL_47;
  }

  if (v5 < v23)
  {
    return 0;
  }

LABEL_47:
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

LABEL_53:
  a2[5].i32[0] = v8.i32[0];
  return 1;
}

uint64_t sub_2F0124(int *a1, uint64_t a2)
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
      if (&v3[v17] & 7) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      if (v4 < 9 || v4 - 8 < &v3[v17])
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

        v20 = *&v19[*&v2];
        if (v20 < 1 || v4 - 1 < &v19[v20])
        {
          return 0;
        }

        v21 = (a1 + v18 + *(a1 + v18));
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
        if (v23 > 0xFFFFFFE)
        {
          return 0;
        }

        v24 = (8 * v23) | 4;
        v6 = v4 >= v24;
        v25 = v4 - v24;
        if (v25 == 0 || !v6 || v25 < v22)
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

          v32 = *v30;
          if (v32 > 0xFFFFFFE)
          {
            return 0;
          }

          v33 = (8 * v32) | 4;
          v34 = v4 > v33;
          v35 = v4 - v33;
          if (!v34 || v35 < v31)
          {
            return 0;
          }
        }
      }
    }
  }

  if (sub_2CDF90(a1, a2, 0xAu))
  {
    v37 = (a1 - *a1);
    if (*v37 < 0xBu)
    {
      v40 = 0;
      v39 = a2;
    }

    else
    {
      v38 = v37[5];
      v39 = a2;
      v40 = v38 ? (a1 + v38 + *(a1 + v38)) : 0;
    }

    if (sub_2D97E8(v39, v40))
    {
      v41 = (a1 - *a1);
      v42 = *v41;
      if (v42 >= 0xD)
      {
        if (v41[6])
        {
          v43 = *(a2 + 8);
          if (v43 < 2 || v43 - 1 < a1 + v41[6] - *a2)
          {
            return 0;
          }
        }

        if (v42 >= 0x11)
        {
          v44 = v41[8];
          if (v44)
          {
            v45 = *(a2 + 8);
            if (v45 < 2 || v45 - 1 < a1 + v44 - *a2)
            {
              return 0;
            }
          }
        }
      }

      if (sub_2CDF90(a1, a2, 0x12u))
      {
        v46 = (a1 - *a1);
        if (*v46 < 0x13u)
        {
          v49 = 0;
          v48 = a2;
        }

        else
        {
          v47 = v46[9];
          v48 = a2;
          v49 = v47 ? (a1 + v47 + *(a1 + v47)) : 0;
        }

        if (sub_2DA624(v48, v49) && sub_2CDF90(a1, a2, 0x14u))
        {
          v50 = (a1 - *a1);
          if (*v50 < 0x15u)
          {
            v53 = 0;
            v52 = a2;
          }

          else
          {
            v51 = v50[10];
            v52 = a2;
            v53 = v51 ? (a1 + v51 + *(a1 + v51)) : 0;
          }

          if (sub_2DA624(v52, v53) && sub_2CDF90(a1, a2, 0x16u))
          {
            v54 = *a1;
            v55 = -v54;
            if (*(a1 - v54) >= 0x17u && *(a1 - v54 + 22))
            {
              if (!sub_2CE100(a2, (a1 + *(a1 - v54 + 22) + *(a1 + *(a1 - v54 + 22))), 4uLL, 0))
              {
                return 0;
              }

              v55 = -*a1;
            }

            v56 = (a1 + v55);
            if (*v56 >= 0x17u && (v57 = v56[11]) != 0)
            {
              v58 = (a1 + v57 + *(a1 + v57));
            }

            else
            {
              v58 = 0;
            }

            if (sub_2DA930(a2, v58))
            {
              --*(a2 + 40);
              return 1;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_2F0628(int *a1, uint32x2_t *a2)
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
        if (&v3[v19] & 3) != 0 && (a2[3].i8[0])
        {
          return 0;
        }

        if (v4 < 9 || v4 - 8 < &v3[v19])
        {
          return 0;
        }
      }

      if (v16 >= 9)
      {
        v20 = v15[4];
        if (v15[4])
        {
          if (&v3[v20] & 3) != 0 && (a2[3].i8[0])
          {
            return 0;
          }

          if (v4 < 9 || v4 - 8 < &v3[v20])
          {
            return 0;
          }
        }

        if (v16 >= 0xB)
        {
          v21 = v15[5];
          if (v15[5])
          {
            v22 = &v3[v21];
            if ((&v3[v21] & 3) != 0)
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
          }

          if (v16 < 0xD)
          {
            goto LABEL_57;
          }

          v23 = v15[6];
          if (!v23)
          {
            goto LABEL_57;
          }

          v26 = a2;
          v24 = &v3[v23];
          if ((v24 & 3) != 0)
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

          v25 = *(*&v2 + v24);
          if (v25 >= 1 && v4 - 1 >= v24 + v25 && sub_2CE100(a2, (a1 + v23 + *(a1 + v23)), 1uLL, 0))
          {
            a2 = v26;
            v17 = v26[5].i32[0] - 1;
            goto LABEL_57;
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

uint64_t sub_2F08DC(int *a1, uint64_t a2)
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

  v12 = &v3[-v7];
  if (v12)
  {
    result = 0;
    if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v12)
    {
      return result;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13)
  {
    return 0;
  }

  v6 = v4 >= v13;
  v14 = v4 - v13;
  if (v14 == 0 || !v6 || v14 < v12)
  {
    return 0;
  }

  v16 = a1;
  v17 = (a1 - *a1);
  v18 = *v17;
  v19 = a2;
  if (v18 >= 5)
  {
    if (v17[2])
    {
      v20 = &v3[v17[2]];
      if (v20 & 7) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      result = 0;
      if (v4 < 9 || v4 - 8 < v20)
      {
        return result;
      }
    }

    v16 = a1;
    if (v18 >= 7)
    {
      if (v17[3])
      {
        v21 = &v3[v17[3]];
        if (v21 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        result = 0;
        if (v4 < 9 || v4 - 8 < v21)
        {
          return result;
        }
      }

      v16 = a1;
      if (v18 >= 9)
      {
        v22 = v17[4];
        if (v22)
        {
          v23 = &v3[v22];
          if ((v23 & 3) != 0)
          {
            result = 0;
            if (v5 < v23 || (*(a2 + 24) & 1) != 0)
            {
              return result;
            }
          }

          else if (v5 < v23)
          {
            return 0;
          }

          v24 = *(v2 + v23);
          if (v24 < 1 || v4 - 1 < v23 + v24)
          {
            return 0;
          }

          v25 = (a1 + v22);
          v26 = (a1 + v22 + *(a1 + v22));
          v27 = v26 - v2;
          if ((v27 & 3) != 0)
          {
            result = 0;
            if (v5 < v27 || (*(a2 + 24) & 1) != 0)
            {
              return result;
            }
          }

          else if (v5 < v27)
          {
            return 0;
          }

          v109 = a1;
          v28 = *v26;
          if (v28 <= 0x1FFFFFFE)
          {
            result = 0;
            v29 = 4 * v28 + 4;
            v30 = v4 > v29;
            v31 = v4 - v29;
            if (!v30 || v31 < v27)
            {
              return result;
            }

            v32 = (v25 + *v25);
            v16 = a1;
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
                a2 = v19;
                v16 = v109;
                if (v33 >= *v32)
                {
                  goto LABEL_57;
                }
              }
            }

            goto LABEL_57;
          }

          return 0;
        }
      }
    }
  }

LABEL_57:
  v36 = v16;
  result = sub_2CDF90(v16, a2, 0xAu);
  if (result)
  {
    v37 = (v36 - *v36);
    if (*v37 < 0xBu)
    {
      v40 = 0;
      v39 = v19;
    }

    else
    {
      v38 = v37[5];
      v39 = v19;
      v40 = v38 ? (v36 + v38 + *(v36 + v38)) : 0;
    }

    result = sub_2DA624(v39, v40);
    if (result)
    {
      result = sub_2CDF90(v36, v19, 0xCu);
      if (result)
      {
        v41 = (v36 - *v36);
        if (*v41 < 0xDu)
        {
          v44 = 0;
          v43 = v19;
        }

        else
        {
          v42 = v41[6];
          v43 = v19;
          v44 = v42 ? (v36 + v42 + *(v36 + v42)) : 0;
        }

        result = sub_2DA624(v43, v44);
        if (result)
        {
          result = sub_2CDF90(v36, v19, 0xEu);
          if (result)
          {
            v45 = (v36 - *v36);
            if (*v45 < 0xFu)
            {
              v48 = 0;
              v47 = v19;
            }

            else
            {
              v46 = v45[7];
              v47 = v19;
              v48 = v46 ? (v36 + v46 + *(v36 + v46)) : 0;
            }

            result = sub_2DA624(v47, v48);
            if (result)
            {
              result = sub_2CDF90(v36, v19, 0x10u);
              if (result)
              {
                v49 = (v36 - *v36);
                if (*v49 >= 0x11u && (v50 = v49[8]) != 0)
                {
                  v51 = (v36 + v50 + *(v36 + v50));
                }

                else
                {
                  v51 = 0;
                }

                result = sub_2DA624(v19, v51);
                if (result)
                {
                  result = sub_2D9788(v36, v19, 0x12u, 4);
                  if (result)
                  {
                    v52 = v36;
                    v53 = (v36 - *v36);
                    v54 = v19;
                    if (*v53 < 0x15u || (v55 = v53[10]) == 0 || (result = 0, v56 = v19[1], v56 >= 2) && (v54 = v19, v52 = v36, v56 - 1 >= v36 + v55 - *v19))
                    {
                      result = sub_2D8DE0(v52, v54, 0x16u, 2);
                      if (result)
                      {
                        result = sub_2D8DE0(v36, v19, 0x18u, 2);
                        if (result)
                        {
                          result = sub_2DAD14(v36, v19, 0x1Au, 4);
                          if (result)
                          {
                            result = sub_2CDF90(v36, v19, 0x1Cu);
                            if (result)
                            {
                              v57 = (v36 - *v36);
                              if (*v57 >= 0x1Du && (v58 = v57[14]) != 0)
                              {
                                v59 = (v36 + v58 + *(v36 + v58));
                              }

                              else
                              {
                                v59 = 0;
                              }

                              result = sub_2D986C(v19, v59);
                              if (result)
                              {
                                v60 = (v36 - *v36);
                                if (*v60 >= 0x1Du && (v61 = v60[14]) != 0)
                                {
                                  v62 = (v36 + v61 + *(v36 + v61));
                                }

                                else
                                {
                                  v62 = 0;
                                }

                                result = sub_2EE0E4(v19, v62);
                                if (result)
                                {
                                  result = sub_2CDF90(v36, v19, 0x1Eu);
                                  if (result)
                                  {
                                    v63 = *v36;
                                    v64 = -v63;
                                    if (*(v36 - v63) >= 0x1Fu && *(v36 - v63 + 30))
                                    {
                                      result = sub_2CE100(v19, (v36 + *(v36 - v63 + 30) + *(v36 + *(v36 - v63 + 30))), 4uLL, 0);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v64 = -*v36;
                                    }

                                    v65 = (v36 + v64);
                                    if (*v65 >= 0x1Fu && (v66 = v65[15]) != 0)
                                    {
                                      v67 = (v36 + v66 + *(v36 + v66));
                                    }

                                    else
                                    {
                                      v67 = 0;
                                    }

                                    result = sub_2F131C(v19, v67);
                                    if (result)
                                    {
                                      result = sub_2CDF90(v36, v19, 0x20u);
                                      if (result)
                                      {
                                        v68 = (v36 - *v36);
                                        if (*v68 >= 0x21u && (v69 = v68[16]) != 0)
                                        {
                                          v70 = (v36 + v69 + *(v36 + v69));
                                        }

                                        else
                                        {
                                          v70 = 0;
                                        }

                                        result = sub_2DA624(v19, v70);
                                        if (result)
                                        {
                                          v71 = v36;
                                          v72 = (v36 - *v36);
                                          v73 = v19;
                                          if (*v72 < 0x23u || (v74 = v72[17]) == 0 || (result = 0, v75 = v19[1], v75 >= 2) && (v73 = v19, v71 = v36, v75 - 1 >= v36 + v74 - *v19))
                                          {
                                            result = sub_2CDF90(v71, v73, 0x26u);
                                            if (result)
                                            {
                                              v76 = (v36 - *v36);
                                              if (*v76 < 0x27u || (v77 = v76[19]) == 0 || (result = sub_2ED10C((v36 + v77 + *(v36 + v77)), v19), result))
                                              {
                                                result = sub_2CDF90(v36, v19, 0x28u);
                                                if (result)
                                                {
                                                  v78 = (v36 - *v36);
                                                  if (*v78 >= 0x29u && (v79 = v78[20]) != 0)
                                                  {
                                                    v80 = (v36 + v79 + *(v36 + v79));
                                                  }

                                                  else
                                                  {
                                                    v80 = 0;
                                                  }

                                                  result = sub_2D986C(v19, v80);
                                                  if (result)
                                                  {
                                                    v81 = (v36 - *v36);
                                                    if (*v81 >= 0x29u && (v82 = v81[20]) != 0)
                                                    {
                                                      v83 = (v36 + v82 + *(v36 + v82));
                                                    }

                                                    else
                                                    {
                                                      v83 = 0;
                                                    }

                                                    result = sub_2EE170(v19, v83);
                                                    if (result)
                                                    {
                                                      result = sub_2CDF90(v36, v19, 0x2Au);
                                                      if (result)
                                                      {
                                                        v84 = (v36 - *v36);
                                                        if (*v84 >= 0x2Bu && (v85 = v84[21]) != 0)
                                                        {
                                                          v86 = (v36 + v85 + *(v36 + v85));
                                                        }

                                                        else
                                                        {
                                                          v86 = 0;
                                                        }

                                                        result = sub_2DA624(v19, v86);
                                                        if (result)
                                                        {
                                                          result = sub_2CDF90(v36, v19, 0x2Cu);
                                                          if (result)
                                                          {
                                                            v87 = (v36 - *v36);
                                                            if (*v87 >= 0x2Du && (v88 = v87[22]) != 0)
                                                            {
                                                              v89 = (v36 + v88 + *(v36 + v88));
                                                            }

                                                            else
                                                            {
                                                              v89 = 0;
                                                            }

                                                            result = sub_2DA624(v19, v89);
                                                            if (result)
                                                            {
                                                              result = sub_2CDF90(v36, v19, 0x2Eu);
                                                              if (result)
                                                              {
                                                                v90 = (v36 - *v36);
                                                                if (*v90 >= 0x2Fu && (v91 = v90[23]) != 0)
                                                                {
                                                                  v92 = (v36 + v91 + *(v36 + v91));
                                                                }

                                                                else
                                                                {
                                                                  v92 = 0;
                                                                }

                                                                result = sub_2DA624(v19, v92);
                                                                if (result)
                                                                {
                                                                  result = sub_2CDF90(v36, v19, 0x30u);
                                                                  if (result)
                                                                  {
                                                                    v93 = (v36 - *v36);
                                                                    if (*v93 < 0x31u || (v94 = v93[24]) == 0 || (result = sub_2ECBD0((v36 + v94 + *(v36 + v94)), v19), result))
                                                                    {
                                                                      result = sub_2CDF90(v36, v19, 0x32u);
                                                                      if (result)
                                                                      {
                                                                        v95 = (v36 - *v36);
                                                                        if (*v95 >= 0x33u && (v96 = v95[25]) != 0)
                                                                        {
                                                                          v97 = (v36 + v96 + *(v36 + v96));
                                                                        }

                                                                        else
                                                                        {
                                                                          v97 = 0;
                                                                        }

                                                                        result = sub_2DA624(v19, v97);
                                                                        if (result)
                                                                        {
                                                                          result = sub_2CDF90(v36, v19, 0x34u);
                                                                          if (result)
                                                                          {
                                                                            v98 = (v36 - *v36);
                                                                            if (*v98 >= 0x35u && (v99 = v98[26]) != 0)
                                                                            {
                                                                              v100 = (v36 + v99 + *(v36 + v99));
                                                                            }

                                                                            else
                                                                            {
                                                                              v100 = 0;
                                                                            }

                                                                            result = sub_2EF734(v19, v100);
                                                                            if (result)
                                                                            {
                                                                              result = sub_2CDF90(v36, v19, 0x36u);
                                                                              if (result)
                                                                              {
                                                                                v101 = *v36;
                                                                                v102 = -v101;
                                                                                if (*(v36 - v101) >= 0x37u && *(v36 - v101 + 54))
                                                                                {
                                                                                  result = sub_2CE100(v19, (v36 + *(v36 - v101 + 54) + *(v36 + *(v36 - v101 + 54))), 4uLL, 0);
                                                                                  if (!result)
                                                                                  {
                                                                                    return result;
                                                                                  }

                                                                                  v102 = -*v36;
                                                                                }

                                                                                v103 = (v36 + v102);
                                                                                if (*v103 >= 0x37u && (v104 = v103[27]) != 0)
                                                                                {
                                                                                  v105 = (v36 + v104 + *(v36 + v104));
                                                                                }

                                                                                else
                                                                                {
                                                                                  v105 = 0;
                                                                                }

                                                                                result = sub_2F13A8(v19, v105);
                                                                                if (result)
                                                                                {
                                                                                  result = sub_2CDF90(v36, v19, 0x38u);
                                                                                  if (result)
                                                                                  {
                                                                                    v106 = (v36 - *v36);
                                                                                    if (*v106 >= 0x39u && (v107 = v106[28]) != 0)
                                                                                    {
                                                                                      v108 = (v36 + v107 + *(v36 + v107));
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v108 = 0;
                                                                                    }

                                                                                    result = sub_2DA624(v19, v108);
                                                                                    if (result)
                                                                                    {
                                                                                      --v19[5].i32[0];
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
    }
  }

  return result;
}

uint64_t sub_2F131C(uint32x2_t *a1, _DWORD *a2)
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
    result = sub_2F1434((v5 + *v5), a1);
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

BOOL sub_2F13A8(uint64_t a1, _DWORD *a2)
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
    result = sub_2F1660((v5 + *v5), a1);
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

uint64_t sub_2F1434(int *a1, uint32x2_t *a2)
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
  if (v16 >= 5)
  {
    v18 = v15[2];
    if (v15[2])
    {
      if (&v3[v18] & 3) != 0 && (a2[3].i8[0])
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
        if (&v3[v19] & 3) != 0 && (a2[3].i8[0])
        {
          return 0;
        }

        if (v4 < 9 || v4 - 8 < &v3[v19])
        {
          return 0;
        }
      }

      if (v16 < 9)
      {
        goto LABEL_44;
      }

      v20 = v15[4];
      if (!v20)
      {
        goto LABEL_44;
      }

      v21 = &v3[v20];
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

      v22 = *(*&v2 + v21);
      if (v22 >= 1 && v4 - 1 >= v21 + v22)
      {
        v23 = a2;
        if (sub_2ECECC((a1 + v20 + *(a1 + v20)), a2))
        {
          a2 = v23;
          v17 = v23[5].i32[0] - 1;
          goto LABEL_44;
        }
      }

      return 0;
    }
  }

LABEL_44:
  a2[5].i32[0] = v17;
  return 1;
}

BOOL sub_2F1660(int *a1, uint64_t a2)
{
  result = sub_2CDED0(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = (a1 - *a1);
  v6 = *v5;
  if (v6 < 5)
  {
    goto LABEL_33;
  }

  if (v5[2])
  {
    v7 = a1 + v5[2] - *a2;
    if (v7 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v8 = *(a2 + 8);
    if (v8 < 9 || v8 - 8 < v7)
    {
      return result;
    }
  }

  if (v6 < 7 || (v9 = v5[3]) == 0)
  {
LABEL_33:
    --*(a2 + 40);
    return 1;
  }

  v10 = a1 + v9 - *a2;
  if (v10 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  result = 0;
  v11 = *(a2 + 8);
  if (v11 < 5 || v11 - 4 < v10)
  {
    return result;
  }

  v12 = *(*a2 + v10);
  if (v12 < 1)
  {
    return 0;
  }

  if (v11 - 1 < v10 + v12)
  {
    return 0;
  }

  v13 = (a1 + v9 + *(a1 + v9));
  v14 = v13 - *a2;
  if (v14 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  result = 0;
  v15 = *(a2 + 8);
  if (v15 >= 5 && v15 - 4 >= v14)
  {
    v16 = *v13;
    if (v16 > 0x7FFFFFFE)
    {
      return 0;
    }

    v17 = v16 + 4;
    v18 = v14 + v16 + 4;
    v19 = v15 - 1 >= v18 && v15 > v17;
    v20 = v19 && v15 - v17 >= v14;
    if (!v20 || *(*a2 + v18))
    {
      return 0;
    }

    goto LABEL_33;
  }

  return result;
}

uint64_t sub_2F17F0(int *a1, uint64_t a2)
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
    if (v18 < 5)
    {
      goto LABEL_53;
    }

    v19 = *(v17 + 2);
    if (*(v17 + 2))
    {
      v20 = &v3[v19];
      if (&v3[v19] & 3) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      v13 = 0;
      if (v4 < 9 || v4 - 8 < v20)
      {
        return v13;
      }
    }

    if (v18 < 7)
    {
      goto LABEL_53;
    }

    v21 = *(v17 + 3);
    if (!v21)
    {
      goto LABEL_53;
    }

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
    if (v23 >= 1 && v4 - 1 >= v22 + v23)
    {
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

        goto LABEL_42;
      }

      if (v5 >= v26)
      {
LABEL_42:
        v27 = *v25;
        if (v27 > 0x1FFFFFFE)
        {
          return 0;
        }

        v38 = a1;
        v28 = 4 * v27 + 4;
        v6 = v4 >= v28;
        v29 = v4 - v28;
        if (v29 == 0 || !v6 || v29 < v26)
        {
          return 0;
        }

        v31 = a2;
        v32 = (v24 + *v24);
        if (*v32)
        {
          v33 = 0;
          v34 = v32 + 1;
          while ((sub_2CE560((v34 + *v34), a2) & 1) != 0)
          {
            ++v33;
            ++v34;
            a2 = v31;
            if (v33 >= *v32)
            {
              a1 = v38;
              v16 = -*v38;
              goto LABEL_53;
            }
          }

          return 0;
        }

LABEL_53:
        v35 = a1 + v16;
        if (*(a1 + v16) < 0xBu || (v36 = *(v35 + 5), !*(v35 + 5)) || (v13 = 0, v37 = *(a2 + 8), v37 >= 2) && v37 - 1 >= a1 + v36 - *a2)
        {
          --*(a2 + 40);
          return 1;
        }

        return v13;
      }
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2F1A94(int *a1, uint64_t a2)
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

  v12 = &v3[-v7];
  if (v12)
  {
    result = 0;
    if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v12)
    {
      return result;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13)
  {
    return 0;
  }

  v6 = v4 >= v13;
  v14 = v4 - v13;
  if (v14 == 0 || !v6 || v14 < v12)
  {
    return 0;
  }

  v16 = a1;
  v17 = (a1 - *a1);
  v18 = *v17;
  if (v18 >= 5)
  {
    if (v17[2])
    {
      v19 = &v3[v17[2]];
      if (v19 & 7) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      result = 0;
      if (v4 < 9 || v4 - 8 < v19)
      {
        return result;
      }
    }

    v16 = a1;
    if (v18 >= 7)
    {
      if (v17[3])
      {
        v20 = &v3[v17[3]];
        if (v20 & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        result = 0;
        if (v4 < 9 || v4 - 8 < v20)
        {
          return result;
        }
      }

      v16 = a1;
      if (v18 >= 9)
      {
        v21 = v17[4];
        if (v21)
        {
          v22 = &v3[v21];
          if ((v22 & 3) != 0)
          {
            result = 0;
            if (v5 < v22 || (*(a2 + 24) & 1) != 0)
            {
              return result;
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
            result = 0;
            if (v5 < v26 || (*(a2 + 24) & 1) != 0)
            {
              return result;
            }
          }

          else if (v5 < v26)
          {
            return 0;
          }

          v121 = a1;
          v27 = *v25;
          if (v27 <= 0x1FFFFFFE)
          {
            result = 0;
            v28 = 4 * v27 + 4;
            v29 = v4 > v28;
            v30 = v4 - v28;
            if (!v29 || v30 < v26)
            {
              return result;
            }

            v31 = a2;
            v32 = (v24 + *v24);
            v16 = a1;
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
                a2 = v31;
                v16 = v121;
                if (v33 >= *v32)
                {
                  goto LABEL_57;
                }
              }
            }

            goto LABEL_57;
          }

          return 0;
        }
      }
    }
  }

LABEL_57:
  v36 = v16;
  v37 = a2;
  result = sub_2D9788(v16, a2, 0xAu, 4);
  if (result)
  {
    result = sub_2D9788(v36, v37, 0xCu, 4);
    if (result)
    {
      result = sub_2CDF90(v36, v37, 0xEu);
      if (result)
      {
        v38 = (v36 - *v36);
        if (*v38 < 0xFu)
        {
          v41 = 0;
          v40 = v37;
        }

        else
        {
          v39 = v38[7];
          v40 = v37;
          v41 = v39 ? (v36 + v39 + *(v36 + v39)) : 0;
        }

        result = sub_2DA624(v40, v41);
        if (result)
        {
          result = sub_2CDF90(v36, v37, 0x10u);
          if (result)
          {
            v42 = (v36 - *v36);
            if (*v42 < 0x11u)
            {
              v45 = 0;
              v44 = v37;
            }

            else
            {
              v43 = v42[8];
              v44 = v37;
              v45 = v43 ? (v36 + v43 + *(v36 + v43)) : 0;
            }

            result = sub_2DA624(v44, v45);
            if (result)
            {
              result = sub_2D9788(v36, v37, 0x12u, 4);
              if (result)
              {
                result = sub_2DAD14(v36, v37, 0x14u, 4);
                if (result)
                {
                  result = sub_2D8DE0(v36, v37, 0x16u, 2);
                  if (result)
                  {
                    result = sub_2D8DE0(v36, v37, 0x18u, 2);
                    if (result)
                    {
                      result = sub_2DAD14(v36, v37, 0x1Au, 4);
                      if (result)
                      {
                        result = sub_2CDF90(v36, v37, 0x1Cu);
                        if (result)
                        {
                          v46 = (v36 - *v36);
                          if (*v46 >= 0x1Du && (v47 = v46[14]) != 0)
                          {
                            v48 = (v36 + v47 + *(v36 + v47));
                          }

                          else
                          {
                            v48 = 0;
                          }

                          result = sub_2D986C(v37, v48);
                          if (result)
                          {
                            v49 = (v36 - *v36);
                            if (*v49 >= 0x1Du && (v50 = v49[14]) != 0)
                            {
                              v51 = (v36 + v50 + *(v36 + v50));
                            }

                            else
                            {
                              v51 = 0;
                            }

                            result = sub_2EE0E4(v37, v51);
                            if (result)
                            {
                              result = sub_2CDF90(v36, v37, 0x1Eu);
                              if (result)
                              {
                                v52 = (v36 - *v36);
                                if (*v52 >= 0x1Fu && (v53 = v52[15]) != 0)
                                {
                                  v54 = (v36 + v53 + *(v36 + v53));
                                }

                                else
                                {
                                  v54 = 0;
                                }

                                result = sub_2DA624(v37, v54);
                                if (result)
                                {
                                  v55 = v36;
                                  v56 = (v36 - *v36);
                                  v57 = *v56;
                                  v58 = v37;
                                  if (v57 < 0x23 || (!v56[17] || (result = 0, v59 = *(v37 + 8), v59 >= 2) && (v58 = v37, v55 = v36, v59 - 1 >= v36 + v56[17] - *v37)) && (v57 < 0x25 || (v60 = v56[18]) == 0 || (result = 0, v61 = *(v58 + 8), v61 >= 2) && (v58 = v37, v55 = v36, v61 - 1 >= v36 + v60 - *v37)))
                                  {
                                    result = sub_2CDF90(v55, v58, 0x2Au);
                                    if (result)
                                    {
                                      v62 = (v36 - *v36);
                                      if (*v62 >= 0x2Bu && (v63 = v62[21]) != 0)
                                      {
                                        v64 = (v36 + v63 + *(v36 + v63));
                                      }

                                      else
                                      {
                                        v64 = 0;
                                      }

                                      result = sub_2D97E8(v37, v64);
                                      if (result)
                                      {
                                        result = sub_2CDF90(v36, v37, 0x2Eu);
                                        if (result)
                                        {
                                          v65 = (v36 - *v36);
                                          if (*v65 < 0x2Fu || (v66 = v65[23]) == 0 || (result = sub_2ED10C((v36 + v66 + *(v36 + v66)), v37), result))
                                          {
                                            result = sub_2CDF90(v36, v37, 0x30u);
                                            if (result)
                                            {
                                              v67 = (v36 - *v36);
                                              if (*v67 >= 0x31u && (v68 = v67[24]) != 0)
                                              {
                                                v69 = (v36 + v68 + *(v36 + v68));
                                              }

                                              else
                                              {
                                                v69 = 0;
                                              }

                                              result = sub_2D986C(v37, v69);
                                              if (result)
                                              {
                                                v70 = (v36 - *v36);
                                                if (*v70 >= 0x31u && (v71 = v70[24]) != 0)
                                                {
                                                  v72 = (v36 + v71 + *(v36 + v71));
                                                }

                                                else
                                                {
                                                  v72 = 0;
                                                }

                                                result = sub_2EE170(v37, v72);
                                                if (result)
                                                {
                                                  result = sub_2CDF90(v36, v37, 0x32u);
                                                  if (result)
                                                  {
                                                    v73 = (v36 - *v36);
                                                    if (*v73 >= 0x33u && (v74 = v73[25]) != 0)
                                                    {
                                                      v75 = (v36 + v74 + *(v36 + v74));
                                                    }

                                                    else
                                                    {
                                                      v75 = 0;
                                                    }

                                                    result = sub_2D986C(v37, v75);
                                                    if (result)
                                                    {
                                                      v76 = (v36 - *v36);
                                                      if (*v76 >= 0x33u && (v77 = v76[25]) != 0)
                                                      {
                                                        v78 = (v36 + v77 + *(v36 + v77));
                                                      }

                                                      else
                                                      {
                                                        v78 = 0;
                                                      }

                                                      result = sub_2D98D4(v37, v78);
                                                      if (result)
                                                      {
                                                        result = sub_2CDF90(v36, v37, 0x34u);
                                                        if (result)
                                                        {
                                                          v79 = (v36 - *v36);
                                                          if (*v79 >= 0x35u && (v80 = v79[26]) != 0)
                                                          {
                                                            v81 = (v36 + v80 + *(v36 + v80));
                                                          }

                                                          else
                                                          {
                                                            v81 = 0;
                                                          }

                                                          result = sub_2D986C(v37, v81);
                                                          if (result)
                                                          {
                                                            v82 = (v36 - *v36);
                                                            if (*v82 >= 0x35u && (v83 = v82[26]) != 0)
                                                            {
                                                              v84 = (v36 + v83 + *(v36 + v83));
                                                            }

                                                            else
                                                            {
                                                              v84 = 0;
                                                            }

                                                            result = sub_2ECB44(v37, v84);
                                                            if (result)
                                                            {
                                                              result = sub_2CDF90(v36, v37, 0x36u);
                                                              if (result)
                                                              {
                                                                v85 = (v36 - *v36);
                                                                if (*v85 >= 0x37u && (v86 = v85[27]) != 0)
                                                                {
                                                                  v87 = (v36 + v86 + *(v36 + v86));
                                                                }

                                                                else
                                                                {
                                                                  v87 = 0;
                                                                }

                                                                result = sub_2DA624(v37, v87);
                                                                if (result)
                                                                {
                                                                  result = sub_2CDF90(v36, v37, 0x38u);
                                                                  if (result)
                                                                  {
                                                                    v88 = (v36 - *v36);
                                                                    if (*v88 >= 0x39u && (v89 = v88[28]) != 0)
                                                                    {
                                                                      v90 = (v36 + v89 + *(v36 + v89));
                                                                    }

                                                                    else
                                                                    {
                                                                      v90 = 0;
                                                                    }

                                                                    result = sub_2DA624(v37, v90);
                                                                    if (result)
                                                                    {
                                                                      result = sub_2CDF90(v36, v37, 0x3Au);
                                                                      if (result)
                                                                      {
                                                                        v91 = (v36 - *v36);
                                                                        if (*v91 < 0x3Bu || (v92 = v91[29]) == 0 || (result = sub_2ECBD0((v36 + v92 + *(v36 + v92)), v37), result))
                                                                        {
                                                                          result = sub_2CDF90(v36, v37, 0x3Cu);
                                                                          if (result)
                                                                          {
                                                                            v93 = (v36 - *v36);
                                                                            if (*v93 >= 0x3Du && (v94 = v93[30]) != 0)
                                                                            {
                                                                              v95 = (v36 + v94 + *(v36 + v94));
                                                                            }

                                                                            else
                                                                            {
                                                                              v95 = 0;
                                                                            }

                                                                            result = sub_2EF734(v37, v95);
                                                                            if (result)
                                                                            {
                                                                              v96 = v36;
                                                                              v97 = (v36 - *v36);
                                                                              v98 = v37;
                                                                              if (*v97 < 0x3Fu || (v99 = v97[31]) == 0 || (result = 0, v100 = *(v37 + 8), v100 >= 2) && (v98 = v37, v96 = v36, v100 - 1 >= v36 + v99 - *v37))
                                                                              {
                                                                                result = sub_2CDF90(v96, v98, 0x40u);
                                                                                if (result)
                                                                                {
                                                                                  v101 = (v36 - *v36);
                                                                                  if (*v101 >= 0x41u && (v102 = v101[32]) != 0)
                                                                                  {
                                                                                    v103 = (v36 + v102 + *(v36 + v102));
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v103 = 0;
                                                                                  }

                                                                                  result = sub_2D986C(v37, v103);
                                                                                  if (result)
                                                                                  {
                                                                                    v104 = (v36 - *v36);
                                                                                    if (*v104 >= 0x41u && (v105 = v104[32]) != 0)
                                                                                    {
                                                                                      v106 = (v36 + v105 + *(v36 + v105));
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v106 = 0;
                                                                                    }

                                                                                    result = sub_2F25B8(v37, v106);
                                                                                    if (result)
                                                                                    {
                                                                                      result = sub_2CDF90(v36, v37, 0x42u);
                                                                                      if (result)
                                                                                      {
                                                                                        v107 = (v36 - *v36);
                                                                                        if (*v107 >= 0x43u && (v108 = v107[33]) != 0)
                                                                                        {
                                                                                          v109 = (v36 + v108 + *(v36 + v108));
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v109 = 0;
                                                                                        }

                                                                                        result = sub_2DA624(v37, v109);
                                                                                        if (result)
                                                                                        {
                                                                                          v110 = v36;
                                                                                          v111 = (v36 - *v36);
                                                                                          v112 = v37;
                                                                                          if (*v111 < 0x45u || (v113 = v111[34]) == 0 || (result = 0, v114 = *(v37 + 8), v114 >= 2) && (v112 = v37, v110 = v36, v114 - 1 >= v36 + v113 - *v37))
                                                                                          {
                                                                                            result = sub_2CDF90(v110, v112, 0x46u);
                                                                                            if (result)
                                                                                            {
                                                                                              v115 = (v36 - *v36);
                                                                                              if (*v115 >= 0x47u && (v116 = v115[35]) != 0)
                                                                                              {
                                                                                                v117 = (v36 + v116 + *(v36 + v116));
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v117 = 0;
                                                                                              }

                                                                                              result = sub_2D986C(v37, v117);
                                                                                              if (result)
                                                                                              {
                                                                                                v118 = (v36 - *v36);
                                                                                                if (*v118 >= 0x47u && (v119 = v118[35]) != 0)
                                                                                                {
                                                                                                  v120 = (v36 + v119 + *(v36 + v119));
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v120 = 0;
                                                                                                }

                                                                                                result = sub_2F25B8(v37, v120);
                                                                                                if (result)
                                                                                                {
                                                                                                  --*(v37 + 40);
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
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2F25B8(uint64_t a1, _DWORD *a2)
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
    result = sub_2F2644((v5 + *v5), a1);
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

uint64_t sub_2F2644(int *a1, uint64_t a2)
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
  v17 = *(a1 - v14);
  if (v17 >= 5)
  {
    v18 = v16[2];
    if (v16[2])
    {
      if (&v3[v18] & 3) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      if (v4 < 9 || v4 - 8 < &v3[v18])
      {
        return 0;
      }
    }

    if (v17 >= 7)
    {
      v19 = v16[3];
      if (v16[3])
      {
        if (&v3[v19] & 3) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        if (v4 < 9 || v4 - 8 < &v3[v19])
        {
          return 0;
        }
      }

      if (v17 >= 9)
      {
        v20 = v16[4];
        if (v20)
        {
          v21 = &v3[v20];
          if ((v21 & 3) != 0)
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

          v22 = *(v2 + v21);
          if (v22 >= 1 && v4 - 1 >= v21 + v22)
          {
            v25 = a1;
            v26 = a2;
            if (sub_2ECECC((a1 + v20 + *(a1 + v20)), a2))
            {
              a1 = v25;
              a2 = v26;
              v15 = -*v25;
              goto LABEL_44;
            }
          }

          return 0;
        }
      }
    }
  }

LABEL_44:
  v23 = a1 + v15;
  if (*(a1 + v15) < 0xBu || !*(v23 + 5) || (v24 = *(a2 + 8), v24 >= 2) && v24 - 1 >= a1 + *(v23 + 5) - *a2)
  {
    --*(a2 + 40);
    return 1;
  }

  return 0;
}

uint64_t sub_2F28AC(int *a1, uint64_t a2)
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
    if (*(a1 + v16) >= 9u && (v37 = *(v36 + 4), *(v36 + 4)))
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
    }

    else
    {
      v41 = a1;
      v42 = a2;
      if (!sub_2DA624(a2, 0))
      {
        return 0;
      }
    }

    if (!sub_2CDF90(v41, v42, 0xAu))
    {
      return 0;
    }

    v43 = (v41 - *v41);
    if (*v43 < 0xBu)
    {
      v46 = 0;
      v45 = v42;
    }

    else
    {
      v44 = v43[5];
      v45 = v42;
      v46 = v44 ? (v41 + v44 + *(v41 + v44)) : 0;
    }

    if (!sub_2DA624(v45, v46) || !sub_2D8DE0(v41, v42, 0xCu, 2) || !sub_2D8DE0(v41, v42, 0xEu, 2) || !sub_2DAD14(v41, v42, 0x10u, 4))
    {
      return 0;
    }

    v47 = (v41 - *v41);
    v48 = v42;
    if (*v47 >= 0x13u)
    {
      v49 = v47[9];
      if (v47[9])
      {
        v13 = 0;
        v50 = v42[1];
        if (v50 < 2)
        {
          return v13;
        }

        v48 = v42;
        if (v50 - 1 < v41 + v49 - *v42)
        {
          return v13;
        }
      }
    }

    if (!sub_2CDF90(v41, v48, 0x14u))
    {
      return 0;
    }

    v51 = (v41 - *v41);
    if (*v51 >= 0x15u && (v52 = v51[10]) != 0)
    {
      v53 = (v41 + v52 + *(v41 + v52));
    }

    else
    {
      v53 = 0;
    }

    if (!sub_2DA624(v42, v53) || !sub_2CDF90(v41, v42, 0x16u))
    {
      return 0;
    }

    v54 = *v41;
    v55 = -v54;
    if (*(v41 - v54) < 0x17u || !*(v41 - v54 + 22))
    {
      goto LABEL_90;
    }

    if (sub_2EF874((v41 + *(v41 - v54 + 22) + *(v41 + *(v41 - v54 + 22))), v42))
    {
      v55 = -*v41;
LABEL_90:
      v56 = v41;
      v57 = v41 + v55;
      v58 = *(v41 + v55);
      v59 = v42;
      if (v58 >= 0x19)
      {
        if (*(v57 + 12))
        {
          v13 = 0;
          v60 = v42[1];
          if (v60 < 2)
          {
            return v13;
          }

          v59 = v42;
          v56 = v41;
          if (v60 - 1 < v41 + *(v57 + 12) - *v42)
          {
            return v13;
          }
        }

        if (v58 >= 0x1B)
        {
          v61 = *(v57 + 13);
          if (v61)
          {
            v13 = 0;
            v62 = *(v59 + 8);
            if (v62 < 2)
            {
              return v13;
            }

            v59 = v42;
            v56 = v41;
            if (v62 - 1 < v41 + v61 - *v42)
            {
              return v13;
            }
          }
        }
      }

      if (sub_2D9788(v56, v59, 0x1Cu, 4) && sub_2CDF90(v41, v42, 0x1Eu))
      {
        v63 = (v41 - *v41);
        if ((*v63 < 0x1Fu || (v64 = v63[15]) == 0 || sub_2ECBD0((v41 + v64 + *(v41 + v64)), v42)) && sub_2CDF90(v41, v42, 0x20u))
        {
          v65 = (v41 - *v41);
          if (*v65 >= 0x21u && (v66 = v65[16]) != 0)
          {
            v67 = (v41 + v66 + *(v41 + v66));
          }

          else
          {
            v67 = 0;
          }

          if (sub_2EF734(v42, v67) && sub_2D8DE0(v41, v42, 0x22u, 2))
          {
            v68 = (v41 - *v41);
            v69 = *v68;
            v70 = v42;
            if (v69 < 0x25 || (!v68[18] || (v13 = 0, v71 = v42[1], v71 >= 2) && (v70 = v42, v71 - 1 >= v41 + v68[18] - *v42)) && (v69 < 0x27 || (v72 = v68[19]) == 0 || (v13 = 0, v73 = v70[1], v73 >= 2) && (v70 = v42, v73 - 1 >= v41 + v72 - *v42)))
            {
              --v70[5].i32[0];
              return 1;
            }

            return v13;
          }
        }
      }
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2F2F38(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 >= 5 && v4 - 4 >= v3;
  if (!v5)
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

  v12 = v3 - v6;
  if (v12)
  {
    result = 0;
    if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
    {
      return result;
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

  v5 = v4 >= v13;
  v14 = v4 - v13;
  if (v14 == 0 || !v5 || v14 < v12)
  {
    return 0;
  }

  v16 = (a1 - *a1);
  v17 = *v16;
  if (v17 < 5)
  {
    goto LABEL_47;
  }

  if (v16[2])
  {
    v18 = v3 + v16[2];
    if (v18 & 3) != 0 && (a2[3].i8[0])
    {
      return 0;
    }

    result = 0;
    if (v4 < 9 || v4 - 8 < v18)
    {
      return result;
    }
  }

  if (v17 < 7)
  {
    goto LABEL_47;
  }

  if (v16[3])
  {
    v19 = v3 + v16[3];
    if (v19 & 3) != 0 && (a2[3].i8[0])
    {
      return 0;
    }

    result = 0;
    if (v4 < 9 || v4 - 8 < v19)
    {
      return result;
    }
  }

  if (v17 < 9)
  {
LABEL_47:
    a2[5].i32[0] = v7.i32[0];
    return 1;
  }

  if (v16[4])
  {
    v20 = v3 + v16[4];
    if (v20 & 3) != 0 && (a2[3].i8[0])
    {
      return 0;
    }

    result = 0;
    if (v4 < 9 || v4 - 8 < v20)
    {
      return result;
    }
  }

  if (v17 < 0xB)
  {
    goto LABEL_47;
  }

  v21 = v16[5];
  if (!v21)
  {
    goto LABEL_47;
  }

  v22 = v3 + v21;
  if (v22 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  result = 0;
  if (v4 >= 9 && v4 - 8 >= v22)
  {
    goto LABEL_47;
  }

  return result;
}

uint64_t sub_2F3100(int *a1, uint64_t a2)
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
          if (&v3[v18] & 3) != 0 && (*(a2 + 24))
          {
            return 0;
          }

          if (v4 < 9 || v4 - 8 < &v3[v18])
          {
            return 0;
          }
        }

        if (v15 >= 0xB)
        {
          v19 = v14[5];
          if (v14[5])
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
          }

          if (v15 >= 0xD && v14[6])
          {
            v21 = &v3[v14[6]];
            if (v21 & 3) != 0 && (*(a2 + 24))
            {
              return 0;
            }

            if (v4 < 9 || v4 - 8 < v21)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  if (!sub_2CDF90(a1, a2, 0xEu))
  {
    return 0;
  }

  v24 = a1;
  v25 = *a1;
  v26 = -v25;
  v27 = (a1 - v25);
  if (*v27 < 0xFu)
  {
    goto LABEL_57;
  }

  v28 = v27[7];
  v29 = a2;
  if (v28)
  {
    if (!sub_2CE100(a2, (a1 + v28 + *(a1 + v28)), 4uLL, 0))
    {
      return 0;
    }

    v24 = a1;
    v26 = -*a1;
LABEL_57:
    v29 = a2;
  }

  v30 = (v24 + v26);
  if (*v30 >= 0xFu && (v31 = v30[7]) != 0)
  {
    v32 = (v24 + v31 + *(v24 + v31));
  }

  else
  {
    v32 = 0;
  }

  if (sub_2F33F8(v29, v32))
  {
    --*(a2 + 40);
    return 1;
  }

  return 0;
}

BOOL sub_2F33F8(uint64_t a1, _DWORD *a2)
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
    result = sub_2F3484((v5 + *v5), a1);
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

BOOL sub_2F3484(int *a1, uint64_t a2)
{
  result = sub_2CDED0(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = (a1 - *a1);
  v6 = *v5;
  if (v6 < 5)
  {
    goto LABEL_28;
  }

  if (v5[2])
  {
    v7 = a1 + v5[2] - *a2;
    if (v7 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v8 = *(a2 + 8);
    if (v8 < 9 || v8 - 8 < v7)
    {
      return result;
    }
  }

  if (v6 < 7 || (v9 = v5[3]) == 0)
  {
LABEL_28:
    --*(a2 + 40);
    return 1;
  }

  v10 = a1 + v9 - *a2;
  if (v10 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  result = 0;
  v11 = *(a2 + 8);
  if (v11 < 5 || v11 - 4 < v10)
  {
    return result;
  }

  v12 = *(*a2 + v10);
  if (v12 < 1)
  {
    return 0;
  }

  if (v11 - 1 < v10 + v12)
  {
    return 0;
  }

  v13 = (a1 + v9 + *(a1 + v9));
  v14 = v13 - *a2;
  if (v14 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  result = 0;
  v15 = *(a2 + 8);
  if (v15 >= 5 && v15 - 4 >= v14)
  {
    v16 = *v13;
    if (v16 > 0x3FFFFFFE)
    {
      return 0;
    }

    v17 = 2 * v16 + 4;
    v19 = v15 >= v17;
    v18 = v15 - v17;
    v19 = v18 != 0 && v19 && v18 >= v14;
    if (!v19)
    {
      return 0;
    }

    goto LABEL_28;
  }

  return result;
}

uint64_t sub_2F3600(int *a1, uint64_t a2)
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
      if (&v3[v17] & 7) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      if (v4 < 9 || v4 - 8 < &v3[v17])
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

        v20 = *&v19[*&v2];
        if (v20 < 1 || v4 - 1 < &v19[v20])
        {
          return 0;
        }

        v21 = (a1 + v18 + *(a1 + v18));
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
        if (v23 > 0xFFFFFFE)
        {
          return 0;
        }

        v24 = (8 * v23) | 4;
        v6 = v4 >= v24;
        v25 = v4 - v24;
        if (v25 == 0 || !v6 || v25 < v22)
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

          v32 = *v30;
          if (v32 > 0xFFFFFFE)
          {
            return 0;
          }

          v33 = (8 * v32) | 4;
          v34 = v4 > v33;
          v35 = v4 - v33;
          if (!v34 || v35 < v31)
          {
            return 0;
          }
        }
      }
    }
  }

  if (!sub_2CDF90(a1, a2, 0xAu))
  {
    return 0;
  }

  v37 = (a1 - *a1);
  if (*v37 < 0xBu)
  {
    v40 = 0;
    v39 = a2;
  }

  else
  {
    v38 = v37[5];
    v39 = a2;
    v40 = v38 ? (a1 + v38 + *(a1 + v38)) : 0;
  }

  if (!sub_2DA624(v39, v40) || !sub_2CDF90(a1, a2, 0xCu))
  {
    return 0;
  }

  v41 = a1;
  v42 = *a1;
  v43 = -v42;
  v44 = (a1 - v42);
  if (*v44 < 0xDu)
  {
    goto LABEL_77;
  }

  v45 = v44[6];
  v46 = a2;
  if (v45)
  {
    if (!sub_2CE100(a2, (a1 + v45 + *(a1 + v45)), 4uLL, 0))
    {
      return 0;
    }

    v41 = a1;
    v43 = -*a1;
LABEL_77:
    v46 = a2;
  }

  v47 = (v41 + v43);
  if (*v47 >= 0xDu && (v48 = v47[6]) != 0)
  {
    v49 = (v41 + v48 + *(v41 + v48));
  }

  else
  {
    v49 = 0;
  }

  if (!sub_2F3B60(v46, v49) || !sub_2CDF90(a1, a2, 0xEu))
  {
    return 0;
  }

  v50 = (a1 - *a1);
  if (*v50 < 0xFu)
  {
    v53 = 0;
    v52 = a2;
  }

  else
  {
    v51 = v50[7];
    v52 = a2;
    v53 = v51 ? (a1 + v51 + *(a1 + v51)) : 0;
  }

  if (!sub_2D986C(v52, v53))
  {
    return 0;
  }

  v54 = a1;
  v55 = (a1 - *a1);
  v56 = *v55;
  v57 = a2;
  if (v56 >= 0x11)
  {
    if (v55[8])
    {
      v58 = *(a2 + 8);
      if (v58 < 2)
      {
        return 0;
      }

      v57 = a2;
      v54 = a1;
      if (v58 - 1 < a1 + v55[8] - *a2)
      {
        return 0;
      }
    }

    if (v56 >= 0x13)
    {
      v59 = v55[9];
      if (v59)
      {
        v60 = *(v57 + 8);
        if (v60 < 2)
        {
          return 0;
        }

        v57 = a2;
        v54 = a1;
        if (v60 - 1 < a1 + v59 - *a2)
        {
          return 0;
        }
      }
    }
  }

  if (sub_2CDF90(v54, v57, 0x14u))
  {
    v61 = *a1;
    v62 = -v61;
    if (*(a1 - v61) >= 0x15u && *(a1 - v61 + 20))
    {
      if (!sub_2CE100(a2, (a1 + *(a1 - v61 + 20) + *(a1 + *(a1 - v61 + 20))), 4uLL, 0))
      {
        return 0;
      }

      v62 = -*a1;
    }

    v63 = (a1 + v62);
    if (*v63 >= 0x15u && (v64 = v63[10]) != 0)
    {
      v65 = (a1 + v64 + *(a1 + v64));
    }

    else
    {
      v65 = 0;
    }

    if (sub_2F3BEC(a2, v65))
    {
      --*(a2 + 40);
      return 1;
    }
  }

  return 0;
}

BOOL sub_2F3B60(uint64_t a1, _DWORD *a2)
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
    result = sub_2F3C78((v5 + *v5), a1);
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

uint64_t sub_2F3BEC(uint32x2_t *a1, _DWORD *a2)
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
    result = sub_2F3DAC((v5 + *v5), a1);
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

BOOL sub_2F3C78(int *a1, uint64_t a2)
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
        if (v13 > 0x3FFFFFFE)
        {
          return 0;
        }

        v14 = 2 * v13 + 4;
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

uint64_t sub_2F3DAC(int *a1, uint32x2_t *a2)
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
    v18 = v8.i32[0];
    if (v17 < 5)
    {
LABEL_59:
      a2[5].i32[0] = v18;
      return 1;
    }

    v19 = v16[2];
    if (v16[2])
    {
      v20 = &v3[v19];
      if ((v3 + v19))
      {
        v14 = 0;
        if (v4 - 2 < v20 || (a2[3].i8[0] & 1) != 0)
        {
          return v14;
        }
      }

      else if (v4 - 2 < v20)
      {
        return 0;
      }
    }

    if (v17 < 7)
    {
      goto LABEL_59;
    }

    v21 = v16[3];
    if (v16[3])
    {
      v22 = &v3[v21];
      if ((v3 + v21))
      {
        v14 = 0;
        if (v4 - 2 < v22 || (a2[3].i8[0] & 1) != 0)
        {
          return v14;
        }
      }

      else if (v4 - 2 < v22)
      {
        return 0;
      }
    }

    if (v17 < 9)
    {
      goto LABEL_59;
    }

    v23 = v16[4];
    if (!v23)
    {
      goto LABEL_59;
    }

    v24 = &v3[v23];
    if ((v24 & 3) != 0)
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

    v25 = *(*&v2 + v24);
    if (v25 < 1 || v4 - 1 < v24 + v25)
    {
      return 0;
    }

    v26 = (a1 + v23);
    v27 = (a1 + v23 + *(a1 + v23));
    v28 = v27 - *&v2;
    if ((v28 & 3) != 0)
    {
      v14 = 0;
      if (v5 < v28 || (a2[3].i8[0] & 1) != 0)
      {
        return v14;
      }
    }

    else if (v5 < v28)
    {
      return 0;
    }

    v36 = a2;
    v29 = *v27;
    if (v29 <= 0x1FFFFFFE)
    {
      v14 = 0;
      v30 = 4 * v29 + 4;
      v31 = v4 > v30;
      v32 = v4 - v30;
      if (!v31 || v32 < v28)
      {
        return v14;
      }

      v33 = (v26 + *v26);
      if (*v33)
      {
        v34 = 0;
        v35 = v33 + 1;
        while (sub_2F3484((v35 + *v35), a2))
        {
          ++v34;
          ++v35;
          a2 = v36;
          if (v34 >= *v33)
          {
            v18 = v36[5].i32[0] - 1;
            goto LABEL_59;
          }
        }

        return 0;
      }

      goto LABEL_59;
    }

    return 0;
  }

  return 0;
}