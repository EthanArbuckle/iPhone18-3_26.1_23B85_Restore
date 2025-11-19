uint64_t sub_2FDA1C(int *a1, uint64_t a2)
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

        v19 = *&v18[*&v2];
        if (v19 < 1 || v4 - 1 < &v18[v19])
        {
          return 0;
        }

        v20 = (a1 + v17 + *(a1 + v17));
        v21 = v20 - *&v2;
        if (((v20 - *&v2) & 3) != 0)
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
        if (!v26 || *(*&v2 + v24))
        {
          return 0;
        }
      }

      if (v16 >= 7)
      {
        v27 = v15[3];
        if (v27)
        {
          v28 = &v3[v27];
          if ((v28 & 3) != 0)
          {
            v13 = 0;
            if (v5 < v28 || (*(a2 + 24) & 1) != 0)
            {
              return v13;
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

          v30 = (a1 + v27);
          v31 = (a1 + v27 + *(a1 + v27));
          v32 = v31 - *&v2;
          if ((v32 & 3) != 0)
          {
            v13 = 0;
            if (v5 < v32 || (*(a2 + 24) & 1) != 0)
            {
              return v13;
            }
          }

          else if (v5 < v32)
          {
            return 0;
          }

          v33 = *v31;
          if (v33 > 0x1FFFFFFE)
          {
            return 0;
          }

          v34 = 4 * v33 + 4;
          v6 = v4 >= v34;
          v35 = v4 - v34;
          if (v35 == 0 || !v6 || v35 < v32)
          {
            return 0;
          }

          v37 = a1;
          v38 = a2;
          v39 = (v30 + *v30);
          if (*v39)
          {
            v40 = 0;
            v41 = v39 + 1;
            while ((sub_2E869C((v41 + *v41), a2) & 1) != 0)
            {
              ++v40;
              ++v41;
              a2 = v38;
              a1 = v37;
              if (v40 >= *v39)
              {
                goto LABEL_70;
              }
            }

            return 0;
          }
        }
      }
    }

LABEL_70:
    v42 = a2;
    if (sub_2D9788(a1, a2, 8u, 8))
    {
      --*(v42 + 40);
      return 1;
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2FDD0C(int *a1, uint32x2_t *a2)
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
      if ((sub_2FDF58((v29 + *v29), a2) & 1) == 0)
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

uint64_t sub_2FDF58(int *a1, uint32x2_t *a2)
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
    goto LABEL_61;
  }

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

    v22 = *v20;
    if (v22 > 0x1FFFFFFE)
    {
      return 0;
    }

    v23 = 4 * v22 + 4;
    v6 = v4 >= v23;
    v24 = v4 - v23;
    if (v24 == 0 || !v6 || v24 < v21)
    {
      return 0;
    }
  }

  if (v16 < 7)
  {
    goto LABEL_61;
  }

  v26 = v15[3];
  if (v15[3] && ((&v3[v26] & 7) != 0 && (a2[3].i8[0] & 1) != 0 || v4 < 9 || v4 - 8 < &v3[v26]))
  {
    return 0;
  }

  if (v16 < 9)
  {
    goto LABEL_61;
  }

  v27 = v15[4];
  if (v15[4])
  {
    v28 = &v3[v27];
    if ((&v3[v27] & 3) != 0)
    {
      if (v5 < v28 || (a2[3].i8[0] & 1) != 0)
      {
        return 0;
      }
    }

    else if (v5 < v28)
    {
      return 0;
    }
  }

  if (v16 < 0xB || !v15[5])
  {
    goto LABEL_61;
  }

  v29 = &v3[v15[5]];
  if ((v29 & 3) == 0)
  {
    if (v5 >= v29)
    {
      goto LABEL_61;
    }

    return 0;
  }

  if (v5 < v29 || (a2[3].i8[0] & 1) != 0)
  {
    return 0;
  }

LABEL_61:
  a2[5].i32[0] = v8.i32[0];
  return 1;
}

uint64_t sub_2FE198(int *a1, uint64_t a2)
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
  v9 = *(a2 + 44);
  v10 = v8 + 1;
  *(a2 + 40) = v8 + 1;
  *(a2 + 44) = v9 + 1;
  v12 = *(a2 + 16);
  v11 = *(a2 + 20);
  if (v8 + 1 > v12 || v9 + 1 > v11)
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

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v15)
  {
    return 0;
  }

LABEL_19:
  v16 = *(v2 + v15);
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
          if (v5 < v23 || (*(a2 + 24) & 1) != 0)
          {
            return v17;
          }
        }

        else if (v5 < v23)
        {
          return 0;
        }

        v24 = *&v23[v2];
        if (v24 < 1 || v4 - 1 < &v23[v24])
        {
          return 0;
        }

        v25 = (a1 + v22 + *(a1 + v22));
        v26 = v25 - v2;
        if (((v25 - v2) & 3) != 0)
        {
          v17 = 0;
          if (v5 < v26 || (*(a2 + 24) & 1) != 0)
          {
            return v17;
          }
        }

        else if (v5 < v26)
        {
          return 0;
        }

        v17 = 0;
        v27 = *v25;
        *(a2 + 40) = v8 + 2;
        *(a2 + 44) = v9 + 2;
        if (v8 + 2 > v12 || v9 + 2 > v11)
        {
          return v17;
        }

        v28 = &v26[-v27];
        if ((v26 - v27))
        {
          v17 = 0;
          if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v28)
          {
            return v17;
          }
        }

        else if (v4 - 2 < v28)
        {
          return 0;
        }

        v29 = *(v2 + v28);
        if (v29)
        {
          return 0;
        }

        if (v4 <= v29 || v4 - v29 < v28)
        {
          return 0;
        }

        v31 = (v25 - *v25);
        if (*v31 >= 5u)
        {
          v32 = v31[2];
          if (v32)
          {
            if (v4 - 1 < &v26[v32])
            {
              return 0;
            }
          }
        }

        *(a2 + 40) = v10;
        v20 = -*a1;
      }
    }

    v33 = a1 + v20;
    if (*(a1 + v20) < 7u)
    {
      goto LABEL_84;
    }

    v34 = *(v33 + 3);
    if (!*(v33 + 3))
    {
      goto LABEL_84;
    }

    v35 = &v3[v34];
    if ((v35 & 3) != 0)
    {
      v17 = 0;
      if (v5 < v35 || (*(a2 + 24) & 1) != 0)
      {
        return v17;
      }
    }

    else if (v5 < v35)
    {
      return 0;
    }

    v36 = *(v2 + v35);
    if (v36 >= 1 && v4 - 1 >= v35 + v36)
    {
      v37 = (a1 + v34);
      v38 = (a1 + v34 + *(a1 + v34));
      v39 = v38 - v2;
      if ((v39 & 3) != 0)
      {
        v17 = 0;
        if (v5 < v39 || (*(a2 + 24) & 1) != 0)
        {
          return v17;
        }

        goto LABEL_73;
      }

      if (v5 >= v39)
      {
LABEL_73:
        v40 = *v38;
        if (v40 > 0x1FFFFFFE)
        {
          return 0;
        }

        v41 = 4 * v40 + 4;
        v6 = v4 >= v41;
        v42 = v4 - v41;
        if (v42 == 0 || !v6 || v42 < v39)
        {
          return 0;
        }

        v44 = (v37 + *v37);
        if (*v44)
        {
          v51 = a1;
          v45 = 0;
          v46 = v44 + 1;
          while (1)
          {
            v47 = a2;
            if ((sub_2FE540((v46 + *v46), a2) & 1) == 0)
            {
              return 0;
            }

            ++v45;
            ++v46;
            a2 = v47;
            if (v45 >= *v44)
            {
              a1 = v51;
              v20 = -*v51;
              break;
            }
          }
        }

LABEL_84:
        v48 = a1 + v20;
        if (*(a1 + v20) < 9u || (v49 = *(v48 + 4), !*(v48 + 4)) || (v17 = 0, v50 = *(a2 + 8), v50 >= 2) && v50 - 1 >= a1 + v49 - *a2)
        {
          --*(a2 + 40);
          return 1;
        }

        return v17;
      }
    }

    return 0;
  }

  return 0;
}

uint64_t sub_2FE540(int *a1, uint64_t a2)
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
        if (v15[3] && v4 - 1 < &v3[v15[3]])
        {
          return 0;
        }

        if (v16 >= 9)
        {
          v19 = v15[4];
          if (v15[4])
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

            v21 = *&v20[*&v2];
            if (v21 < 1 || v4 - 1 < &v20[v21])
            {
              return 0;
            }

            v22 = (a1 + v19 + *(a1 + v19));
            v23 = v22 - *&v2;
            if (((v22 - *&v2) & 3) != 0)
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
            if (v24 > 0xFFFFFFE)
            {
              return 0;
            }

            v13 = 0;
            v25 = (8 * v24) | 4;
            v6 = v4 >= v25;
            v26 = v4 - v25;
            if (v26 == 0 || !v6 || v26 < v23)
            {
              return v13;
            }
          }

          if (v16 >= 0xB)
          {
            v27 = v15[5];
            if (v27)
            {
              v28 = &v3[v27];
              if ((v28 & 3) != 0)
              {
                v13 = 0;
                if (v5 < v28 || (*(a2 + 24) & 1) != 0)
                {
                  return v13;
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

              v30 = a1;
              v31 = a2;
              v32 = sub_2E471C((a1 + v27 + *(a1 + v27)), a2);
              a2 = v31;
              v13 = v32;
              a1 = v30;
              if (!v13)
              {
                return v13;
              }
            }
          }
        }
      }
    }

    v33 = a1;
    v34 = a2;
    if (sub_2DAD14(a1, a2, 0xCu, 4) && sub_2DAD14(v33, v34, 0xEu, 4) && sub_2DAD14(v33, v34, 0x10u, 4) && sub_2D9788(v33, v34, 0x12u, 4))
    {
      v35 = (v33 - *v33);
      if (*v35 >= 0x15u)
      {
        v36 = v35[10];
        if (v35[10])
        {
          v13 = 0;
          v37 = *(v34 + 8);
          if (v37 < 2 || v37 - 1 < v33 + v36 - *v34)
          {
            return v13;
          }
        }
      }

      if (sub_2CDF90(v33, v34, 0x16u))
      {
        v38 = (v33 - *v33);
        if (*v38 < 0x17u || (v39 = v38[11]) == 0 || sub_2FE8F4((v33 + v39 + *(v33 + v39)), v34))
        {
          --*(v34 + 40);
          return 1;
        }
      }
    }
  }

  return 0;
}

BOOL sub_2FE8F4(int *a1, uint64_t a2)
{
  result = sub_2CDED0(a1, a2);
  if (result)
  {
    v5 = (a1 - *a1);
    v6 = *v5;
    if (v6 < 5)
    {
      goto LABEL_13;
    }

    if (!v5[2] || (result = 0, v7 = *(a2 + 8), v7 >= 2) && v7 - 1 >= a1 + v5[2] - *a2)
    {
      if (v6 < 7)
      {
        goto LABEL_13;
      }

      v8 = v5[3];
      if (!v8)
      {
        goto LABEL_13;
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
LABEL_13:
        --*(a2 + 40);
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_2FE9CC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

double sub_2FEA58(uint64_t a1, int a2)
{
  *a1 = a2;
  *(a1 + 4) = 20190201;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return result;
}

uint64_t sub_2FEA90(void *a1, unsigned int a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(a1[1] + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  v6 = *v5;
  if (!v6)
  {
    return 0;
  }

  if (v3.u32[0] < 2uLL)
  {
    v7 = v2 - 1;
    while (1)
    {
      v8 = v6[1];
      if (v8 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return a1[9] + v6[3] + 4;
        }
      }

      else if ((v8 & v7) != v4)
      {
        return 0;
      }

      v6 = *v6;
      if (!v6)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v9 = v6[1];
    if (v9 == a2)
    {
      break;
    }

    if (v9 >= v2)
    {
      v9 %= v2;
    }

    if (v9 != v4)
    {
      return 0;
    }

LABEL_16:
    v6 = *v6;
    if (!v6)
    {
      return 0;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_16;
  }

  return a1[9] + v6[3] + 4;
}

uint64_t *sub_2FEB80(uint64_t *result, unsigned int a2)
{
  v2 = result[2];
  if (v2)
  {
    v3 = vcnt_s8(v2);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a2;
      if (v2 <= a2)
      {
        v4 = a2 % v2;
      }
    }

    else
    {
      v4 = (v2 - 1) & a2;
    }

    v5 = *(result[1] + 8 * v4);
    if (v5)
    {
      v6 = *v5;
      if (v6)
      {
        if (v3.u32[0] < 2uLL)
        {
          v7 = v2 - 1;
          while (1)
          {
            v9 = *(v6 + 8);
            if (v9 == a2)
            {
              if (*(v6 + 16) == a2)
              {
                goto LABEL_21;
              }
            }

            else if ((v9 & v7) != v4)
            {
              goto LABEL_24;
            }

            v6 = *v6;
            if (!v6)
            {
              goto LABEL_24;
            }
          }
        }

        do
        {
          v8 = *(v6 + 8);
          if (v8 == a2)
          {
            if (*(v6 + 16) == a2)
            {
LABEL_21:
              v10 = a2;
              v11 = result;
              sub_24C14(result + 1, v6, &__p);
              v12 = __p;
              __p = 0;
              if (v12)
              {
                operator delete(v12);
              }

              result = v11;
              a2 = v10;
              break;
            }
          }

          else
          {
            if (v8 >= v2)
            {
              v8 %= v2;
            }

            if (v8 != v4)
            {
              break;
            }
          }

          v6 = *v6;
        }

        while (v6);
      }
    }
  }

LABEL_24:
  v14 = result[6];
  v13 = result[7];
  if (v14 != v13)
  {
    while (*v14 != a2)
    {
      if (++v14 == v13)
      {
        return result;
      }
    }

    if (v14 != v13)
    {
      for (i = v14 + 1; i != v13; ++i)
      {
        if (*i != a2)
        {
          *v14++ = *i;
        }
      }
    }
  }

  if (v14 != v13)
  {
    result[7] = v14;
  }

  return result;
}

void *sub_2FED4C(void *a1, unsigned int a2, uint64_t a3)
{
  v7 = a1[7];
  v6 = a1[8];
  if (v7 >= v6)
  {
    v9 = a1[6];
    v10 = v7 - v9;
    v11 = (v7 - v9) >> 2;
    v12 = v11 + 1;
    if ((v11 + 1) >> 62)
    {
      sub_1794();
    }

    v13 = v6 - v9;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    v15 = (v7 - v9) >> 2;
    v16 = (4 * v11);
    v17 = (4 * v11 - 4 * v15);
    *v16 = a2;
    v8 = v16 + 1;
    memcpy(v17, v9, v10);
    a1[6] = v17;
    a1[7] = v8;
    a1[8] = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = a2;
    v8 = v7 + 1;
  }

  a1[7] = v8;
  v18 = a1[10] - a1[9];
  v25 = a2;
  v26 = &v25;
  sub_2FF154(a1 + 1, &v25)[3] = v18;
  v19 = v18 + *(a3 + 8) + 4;
  v21 = a1[9];
  v20 = a1[10];
  if (v19 <= &v20[-v21])
  {
    if (v19 < &v20[-v21])
    {
      a1[10] = v21 + v19;
    }
  }

  else
  {
    v22 = a1[11];
    if (v22 - v20 < v19 - &v20[-v21])
    {
      if ((v19 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v23 = v19 + v21;
    bzero(v20, v19 - &v20[-v21]);
    a1[10] = v23;
  }

  *(a1[9] + v18) = sub_2FEF94(*(a3 + 8));
  return memcpy((a1[9] + v18 + 4), *a3, *(a3 + 8));
}

unint64_t sub_2FEF94(unint64_t result)
{
  if (HIDWORD(result))
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, v1);
    sub_23E08("narrowing ", &v8, &v9);
    v3 = std::string::append(&v9, " failed", 7uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v11 = v3->__r_.__value_.__r.__words[2];
    v10 = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (v11 >= 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10;
    }

    if (v11 >= 0)
    {
      v6 = HIBYTE(v11);
    }

    else
    {
      v6 = *(&v10 + 1);
    }

    v7 = sub_2D390(exception, v5, v6);
  }

  return result;
}

void sub_2FF068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_2FF0E8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      do
      {
        v3 = *v2;
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    *(a1 + 24) = 0;
    v4 = *(a1 + 16);
    if (v4)
    {
      bzero(*(a1 + 8), 8 * v4);
    }

    *(a1 + 32) = 0;
  }

  *(a1 + 80) = *(a1 + 72);
  *(a1 + 56) = *(a1 + 48);
}

uint64_t *sub_2FF154(void *a1, unsigned int *a2)
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

void sub_2FF494(unsigned int *a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v11, a1[1]);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = (v11.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v11.__r_.__value_.__l.__size_ == v4)
    {
      if ((v11.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

LABEL_6:
      operator new();
    }

    size = v11.__r_.__value_.__l.__size_;
    v6 = v11.__r_.__value_.__r.__words[0];
    ++v11.__r_.__value_.__l.__size_;
  }

  else
  {
    if (HIBYTE(v11.__r_.__value_.__r.__words[2]) == 22)
    {
      goto LABEL_6;
    }

    size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    *(&v11.__r_.__value_.__s + 23) = (*(&v11.__r_.__value_.__s + 23) + 1) & 0x7F;
    v6 = &v11;
  }

  *(&v6->__r_.__value_.__l.__data_ + size) = 46;
  v12 = v11;
  memset(&v11, 0, sizeof(v11));
  std::to_string(&__p, *a1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = __p.__r_.__value_.__l.__size_;
  }

  v9 = std::string::append(&v12, p_p, v8);
  *a2 = *v9;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_17:
      if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_21:
      operator delete(v11.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v12.__r_.__value_.__l.__data_);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_2FF6A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if ((a20 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void *sub_2FF718(void *a1, uint64_t a2)
{
  v3 = sub_58200(a1, SHIDWORD(a2));
  sub_4A5C(v3, ".", 1);
  std::ostream::operator<<();
  return a1;
}

unint64_t sub_2FF760(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (v1 >= (v2 + 1))
  {
    v3 = *v2;
    v4 = v2 + 1;
    if (v2 >= v2 + 1)
    {
      return *v2;
    }
  }

  else
  {
    v3 = 2;
    v4 = *(a1 + 8);
  }

  if (v1 >= (v4 + 1))
  {
    return (*v4 << 32) | v3;
  }

  else
  {
    return v3;
  }
}

char *sub_2FF7C4@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = a2 + 8;
  *(a2 + 24) = 0;
  *a2 = sub_7FD60(*a1, 4u);
  __src = *a1;
  sub_2FFBE0(v4, 0, &__src, &v7, 4);
  v7 = a1[1];
  return sub_2FFBE0(v4, *(a2 + 16), &v7, &v8, 4);
}

void sub_2FF85C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2FF878@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_D7B0(v18);
  v4 = sub_4A5C(&v19, "(", 1);
  v5 = sub_7FCF0(*a1);
  v7 = sub_4A5C(v4, v5, v6);
  sub_4A5C(v7, ", ", 2);
  v8 = sub_57A90(a1[1]);
  sub_581D8(a1[1] & ~(-1 << (v8 & 0xFE)));
  v9 = std::ostream::operator<<();
  sub_4A5C(v9, ".", 1);
  v10 = sub_57A90(a1[1]);
  sub_581D8((a1[1] & ~(-1 << (v10 & 0xFE))) >> 1);
  v11 = std::ostream::operator<<();
  v12 = sub_4A5C(v11, ".", 1);
  sub_57A90(a1[1]);
  std::ostream::operator<<();
  sub_4A5C(v12, ")", 1);
  if ((v29 & 0x10) != 0)
  {
    v14 = v28;
    if (v28 < v25)
    {
      v28 = v25;
      v14 = v25;
    }

    v15 = v24;
    v13 = v14 - v24;
    if (v14 - v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v29 & 8) == 0)
    {
      v13 = 0;
      a2[23] = 0;
      goto LABEL_12;
    }

    v15 = v22;
    v13 = v23 - v22;
    if ((v23 - v22) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a2[23] = v13;
  if (v13)
  {
    memmove(a2, v15, v13);
  }

LABEL_12:
  a2[v13] = 0;
  v19 = v16;
  if (v27 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_2FFBBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

char *sub_2FFBE0(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if ((v8 - v9) >= a5)
  {
    v15 = v9 - __dst;
    if ((v9 - __dst) >= a5)
    {
      v23 = &__dst[a5];
      v24 = (v9 - a5);
      v25 = *(a1 + 8);
      if (v9 >= a5)
      {
        if (a5 <= 0x1F)
        {
          goto LABEL_55;
        }

        v24 += a5 & 0x7FFFFFFFFFFFFFE0;
        v25 = (v9 + (a5 & 0x7FFFFFFFFFFFFFE0));
        v26 = (v9 + 16);
        v27 = (v9 + 16 - a5);
        v28 = a5 & 0x7FFFFFFFFFFFFFE0;
        do
        {
          v29 = *v27;
          *(v26 - 1) = *(v27 - 1);
          *v26 = v29;
          v26 += 2;
          v27 += 2;
          v28 -= 32;
        }

        while (v28);
        if ((a5 & 0x7FFFFFFFFFFFFFE0) != a5)
        {
LABEL_55:
          do
          {
            v30 = *v24++;
            *v25++ = v30;
          }

          while (v24 != v9);
        }
      }

      *(a1 + 8) = v25;
      if (v9 != v23)
      {
        v31 = __src;
        memmove(v23, __dst, v9 - v23);
        __src = v31;
      }

      v32 = v5;
      v33 = __src;
      v34 = a5;
      goto LABEL_50;
    }

    v16 = &__src[v15];
    if (&__src[v15] == a4)
    {
      v18 = *(a1 + 8);
    }

    else
    {
      v17 = &__dst[a4] - __src - v9;
      if (v17 < 0x20)
      {
        v18 = *(a1 + 8);
      }

      else
      {
        v18 = *(a1 + 8);
        if ((__dst - __src) >= 0x20)
        {
          v16 += v17 & 0xFFFFFFFFFFFFFFE0;
          v18 = (v9 + (v17 & 0xFFFFFFFFFFFFFFE0));
          v19 = (v9 + 16);
          v20 = &__src[v9 + 16 - __dst];
          v21 = v17 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v22 = *v20;
            *(v19 - 1) = *(v20 - 1);
            *v19 = v22;
            v19 += 2;
            v20 += 2;
            v21 -= 32;
          }

          while (v21);
          if (v17 == (v17 & 0xFFFFFFFFFFFFFFE0))
          {
            goto LABEL_34;
          }
        }
      }

      do
      {
        v39 = *v16++;
        *v18++ = v39;
      }

      while (v16 != a4);
    }

LABEL_34:
    *(a1 + 8) = v18;
    if (v15 < 1)
    {
      return v5;
    }

    v40 = &__dst[a5];
    v41 = &v18[-a5];
    if (&v18[-a5] >= v9)
    {
      v44 = v18;
    }

    else
    {
      v42 = v9 + a5 - v18;
      v43 = v42 >= 0x20 && a5 > 0x1F;
      v44 = v18;
      if (!v43)
      {
        goto LABEL_56;
      }

      v41 += v42 & 0xFFFFFFFFFFFFFFE0;
      v44 = &v18[v42 & 0xFFFFFFFFFFFFFFE0];
      v45 = v18 + 16;
      v46 = &v18[-a5 + 16];
      v47 = v42 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v48 = *v46;
        *(v45 - 1) = *(v46 - 1);
        *v45 = v48;
        v45 += 2;
        v46 += 2;
        v47 -= 32;
      }

      while (v47);
      if (v42 != (v42 & 0xFFFFFFFFFFFFFFE0))
      {
LABEL_56:
        do
        {
          v49 = *v41++;
          *v44++ = v49;
        }

        while (v41 != v9);
      }
    }

    *(a1 + 8) = v44;
    if (v18 != v40)
    {
      v50 = __src;
      memmove(v40, __dst, v18 - v40);
      __src = v50;
    }

    v32 = v5;
    v33 = __src;
    v34 = v9 - v5;
LABEL_50:
    memmove(v32, v33, v34);
    return v5;
  }

  v10 = *a1;
  v11 = v9 - *a1 + a5;
  if (v11 < 0)
  {
    sub_1794();
  }

  v12 = (__dst - v10);
  v13 = v8 - v10;
  if (2 * v13 > v11)
  {
    v11 = 2 * v13;
  }

  if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    operator new();
  }

  v35 = (__dst - v10);
  memcpy(v12, __src, a5);
  v36 = &v12[a5];
  v37 = v9 - v5;
  memcpy(v36, v5, v9 - v5);
  *(a1 + 8) = v5;
  v38 = &v12[v10 - v5];
  memcpy(v38, v10, v35);
  *a1 = v38;
  *(a1 + 8) = &v36[v37];
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v12;
}

double sub_2FFF10@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1 || (v4 = (a1 - *a1), *v4 < 7u) || !v4[3])
  {
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = sub_12331FC();
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0;
    *(a2 + 64) = 0;
    return result;
  }

  v5 = v4[2];
  if (v5)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    v8 = *(v6 + v7);
    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v33) = *(v6 + v7);
    if (v8)
    {
      memcpy(&__dst, v6 + v7 + 4, v8);
    }

    p_dst = (&__dst + v8);
  }

  else
  {
    HIBYTE(v33) = 0;
    p_dst = &__dst;
  }

  *p_dst = 0;
  v11 = HIBYTE(v33);
  v12 = __dst;
  if (v33 >= 0)
  {
    v13 = &__dst;
  }

  else
  {
    v13 = __dst;
  }

  if (v33 < 0)
  {
    v11 = *(&__dst + 1);
  }

  if (v11 >= 0x1F)
  {
    v14 = 31;
  }

  else
  {
    v14 = v11;
  }

  switch(v11)
  {
    case 0uLL:
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      goto LABEL_34;
    case 1uLL:
      v15 = *v13;
      v16 = 1;
LABEL_33:
      *&v34 = v15;
      *(&v34 + 1) = v16;
      v35 = 0u;
      v36 = 0u;
      goto LABEL_34;
    case 2uLL:
      if (v33 >= 0)
      {
        v12 = &__dst;
      }

      v15 = *v13 | (*(v12 + 1) << 8);
      v16 = 2;
      goto LABEL_33;
    case 3uLL:
      if (v33 >= 0)
      {
        v12 = &__dst;
      }

      v15 = *v13 | (*(v12 + 1) << 8) | (*(v12 + 2) << 16);
      v16 = 3;
      goto LABEL_33;
  }

  sub_852E4(v13, v14, &v34);
LABEL_34:
  v17 = sub_1232F28(&v34, 0);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__dst);
    v18 = (a1 - *a1);
    if (*v18 < 7u)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v18 = (a1 - *a1);
    if (*v18 < 7u)
    {
LABEL_42:
      BYTE7(v35) = 0;
      LOBYTE(v34) = 0;
      v23 = (a1 - *a1);
      v24 = *v23;
      if (v24 > 8)
      {
        goto LABEL_43;
      }

LABEL_54:
      v25 = 0;
      goto LABEL_55;
    }
  }

  v19 = v18[3];
  if (!v19)
  {
    goto LABEL_42;
  }

  v20 = (a1 + v19);
  v21 = *v20;
  v22 = *(v20 + v21);
  if (v22 >= 0x17)
  {
    operator new();
  }

  BYTE7(v35) = *(v20 + v21);
  if (v22)
  {
    memcpy(&v34, v20 + v21 + 4, v22);
  }

  *(&v34 + v22) = 0;
  v23 = (a1 - *a1);
  v24 = *v23;
  if (v24 <= 8)
  {
    goto LABEL_54;
  }

LABEL_43:
  if (v23[4])
  {
    v25 = *(a1 + v23[4]);
    if (v24 < 0xB)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v25 = 0;
    if (v24 < 0xB)
    {
      goto LABEL_55;
    }
  }

  v26 = v23[5];
  if (v26)
  {
    v27 = (a1 + v26);
    v28 = *v27;
    v29 = *(v27 + v28);
    if (v29 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v33) = *(v27 + v28);
    if (v29)
    {
      memcpy(&__dst, v27 + v28 + 4, v29);
    }

    *(&__dst + v29) = 0;
    v30 = (a1 - *a1);
    if (*v30 >= 0xDu)
    {
      goto LABEL_56;
    }

    goto LABEL_62;
  }

LABEL_55:
  HIBYTE(v33) = 0;
  LOBYTE(__dst) = 0;
  v30 = (a1 - *a1);
  if (*v30 >= 0xDu)
  {
LABEL_56:
    v31 = v30[6];
    if (v31)
    {
      LOBYTE(v31) = *(a1 + v31);
    }

    goto LABEL_63;
  }

LABEL_62:
  LOBYTE(v31) = 0;
LABEL_63:
  *a2 = v17;
  *(a2 + 8) = v34;
  *(a2 + 24) = v35;
  *(a2 + 32) = v25;
  result = *&__dst;
  *(a2 + 40) = __dst;
  *(a2 + 56) = v33;
  *(a2 + 64) = v31;
  return result;
}

void sub_300344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_300380(unsigned int *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1)
  {
    sub_3004F4(a2, *a1);
    v4 = *a1;
    if (v4)
    {
      v5 = 4 * v4;
      v6 = a1 + 1;
      do
      {
        sub_2FFF10((v6 + *v6), &v12);
        if (sub_1232EB4(&v12))
        {
          v7 = HIBYTE(v14);
          if (v14 < 0)
          {
            v7 = *(&v13 + 1);
          }

          if (v7)
          {
            v8 = a2[1];
            if (v8 >= a2[2])
            {
              v11 = sub_300684(a2, &v12);
            }

            else
            {
              *v8 = v12;
              v9 = v13;
              *(v8 + 24) = v14;
              *(v8 + 8) = v9;
              v14 = 0;
              v13 = 0uLL;
              *(v8 + 32) = v15;
              v10 = __p;
              *(v8 + 56) = v17;
              *(v8 + 40) = v10;
              v17 = 0;
              __p = 0uLL;
              *(v8 + 64) = v18;
              v11 = v8 + 72;
            }

            a2[1] = v11;
          }
        }

        if (SHIBYTE(v17) < 0)
        {
          operator delete(__p);
          if (SHIBYTE(v14) < 0)
          {
LABEL_17:
            operator delete(v13);
          }
        }

        else if (SHIBYTE(v14) < 0)
        {
          goto LABEL_17;
        }

        ++v6;
        v5 -= 4;
      }

      while (v5);
    }
  }
}

void sub_3004D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_300884(va);
  sub_3008E0(v2);
  _Unwind_Resume(a1);
}

void *sub_3004F4(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_300684(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v5 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 40) = *(a2 + 40);
  *(v6 + 56) = *(a2 + 56);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(v6 + 64) = *(a2 + 64);
  v7 = 72 * v2 + 72;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v6 + *a1 - v9;
    do
    {
      *v12 = *v11;
      v13 = *(v11 + 8);
      *(v12 + 24) = *(v11 + 24);
      *(v12 + 8) = v13;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = 0;
      *(v12 + 32) = *(v11 + 32);
      v14 = *(v11 + 40);
      *(v12 + 56) = *(v11 + 56);
      *(v12 + 40) = v14;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 40) = 0;
      *(v12 + 64) = *(v11 + 64);
      v11 += 72;
      v12 += 72;
    }

    while (v11 != v9);
    while (1)
    {
      if (*(v8 + 63) < 0)
      {
        operator delete(*(v8 + 40));
        if (*(v8 + 31) < 0)
        {
LABEL_19:
          operator delete(*(v8 + 8));
        }
      }

      else if (*(v8 + 31) < 0)
      {
        goto LABEL_19;
      }

      v8 += 72;
      if (v8 == v9)
      {
        v8 = *a1;
        break;
      }
    }
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

uint64_t sub_300884(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

void **sub_3008E0(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 4));
        if (*(v3 - 41) < 0)
        {
LABEL_9:
          operator delete(*(v3 - 8));
        }
      }

      else if (*(v3 - 41) < 0)
      {
        goto LABEL_9;
      }

      v3 -= 9;
      if (v3 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

unint64_t sub_300970(void *a1, uint64_t *a2, void *a3)
{
  *&v91 = -1;
  *(&v91 + 1) = -1;
  *v88 = 0u;
  *v89 = 0u;
  v90 = 1065353216;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v6 = *v4;
    v7 = *(v4 + 8);
    while (v6 != v7)
    {
      sub_359CC(v6, 15, 0, __p);
      v9 = __p[0];
      v10 = __p[1];
      if (__p[0] == __p[1])
      {
        if (!__p[0])
        {
          goto LABEL_7;
        }

LABEL_20:
        v18 = __p[1];
        v8 = v9;
        if (__p[1] != v9)
        {
          do
          {
            v19 = *(v18 - 3);
            if (v19)
            {
              *(v18 - 2) = v19;
              operator delete(v19);
            }

            v18 -= 4;
          }

          while (v18 != v9);
          v8 = __p[0];
        }

        __p[1] = v9;
        operator delete(v8);
        goto LABEL_7;
      }

      do
      {
        v97 = v9;
        v11 = sub_302614(v88, v9);
        v12 = v11[4];
        if (v12)
        {
          v13 = v11;
          bzero(v11[3], 8 * v12);
          v14 = v13[5];
          v13[5] = 0;
          v13[6] = 0;
          if (v14)
          {
            do
            {
              v15 = *v14;
              operator delete(v14);
              v14 = v15;
            }

            while (v15);
          }
        }

        v17 = v9[1];
        for (i = v9[2]; v17 != i; v17 = (v17 + 12))
        {
          sub_32184(&v91, v17);
        }

        v9 += 4;
      }

      while (v9 != v10);
      v9 = __p[0];
      if (__p[0])
      {
        goto LABEL_20;
      }

LABEL_7:
      v6 += 3;
    }

    v4 += 24;
    if (v4 != v5)
    {
      continue;
    }

    break;
  }

LABEL_25:
  v20 = sub_32DBC(&v91);
  sub_58168(v20 >> 17, v20 >> 49);
  v22 = v21;
  v23 = sub_32DA0(&v91);
  sub_58168(v23 >> 17, v23 >> 49);
  v24 = v22 | 0x40000000;
  for (j = v25 | 0x40000000; v24 != j; j >>= 2)
  {
    v24 >>= 2;
  }

  v87 = v24;
  __p[0] = &v87;
  v27 = sub_30389C(a1, &v87);
  v84 = sub_2FEF94((v27[4] - v27[3]) >> 6);
  v83 = v87;
  __p[0] = &v87;
  v28 = sub_30389C(a1, &v87);
  v29 = v28;
  v30 = v28[4];
  if (v30 >= v28[5])
  {
    v32 = sub_302D10((v28 + 3), a2, &v91, a3);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v93[0] = 0;
    sub_53358(__p, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    v31 = a3[1];
    if (v31 != *a3)
    {
      if (((v31 - *a3) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    *v30 = *__p;
    *(v30 + 16) = v93[0];
    *(v30 + 24) = v91;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    v32 = v30 + 64;
    v29[4] = v30 + 64;
  }

  v29[4] = v32;
  v33 = v87;
  do
  {
    v96 = v33;
    v34 = a1[1];
    if (v34)
    {
      v35 = vcnt_s8(v34);
      v35.i16[0] = vaddlv_u8(v35);
      if (v35.u32[0] > 1uLL)
      {
        v36 = v33;
        if (*&v34 <= v33)
        {
          v36 = v33 % v34.u32[0];
        }
      }

      else
      {
        v36 = (*&v34 + 0xFFFFFFFFLL) & v33;
      }

      v37 = *(*a1 + 8 * v36);
      if (v37)
      {
        v38 = *v37;
        if (v38)
        {
          if (v35.u32[0] < 2uLL)
          {
            v39 = *&v34 - 1;
            while (1)
            {
              v41 = v38[1];
              if (v41 == v33)
              {
                if (*(v38 + 4) == v33)
                {
                  goto LABEL_65;
                }
              }

              else if ((v41 & v39) != v36)
              {
                goto LABEL_54;
              }

              v38 = *v38;
              if (!v38)
              {
                goto LABEL_54;
              }
            }
          }

          do
          {
            v40 = v38[1];
            if (v40 == v33)
            {
              if (*(v38 + 4) == v33)
              {
                goto LABEL_65;
              }
            }

            else
            {
              if (v40 >= *&v34)
              {
                v40 %= *&v34;
              }

              if (v40 != v36)
              {
                break;
              }
            }

            v38 = *v38;
          }

          while (v38);
        }
      }
    }

LABEL_54:
    v95 = 0;
    v94 = 0u;
    *__p = 0u;
    memset(v93, 0, sizeof(v93));
    v97 = &v96;
    v42 = sub_30389C(a1, &v96);
    v43 = v42;
    v44 = v42 + 3;
    if (v42[3])
    {
      sub_303378(v42 + 3);
      operator delete(*v44);
      *v44 = 0;
      v44[1] = 0;
      v44[2] = 0;
    }

    v45 = v43[6];
    *(v43 + 3) = *__p;
    v43[5] = v93[0];
    __p[1] = 0;
    v93[0] = 0;
    __p[0] = 0;
    if (v45)
    {
      v43[7] = v45;
      operator delete(v45);
      v43[6] = 0;
      v43[7] = 0;
      v43[8] = 0;
    }

    v46 = v43[9];
    *(v43 + 3) = *&v93[1];
    v43[8] = v93[3];
    memset(&v93[1], 0, 24);
    if (v46)
    {
      v43[10] = v46;
      operator delete(v46);
      v43[9] = 0;
      v43[10] = 0;
      v43[11] = 0;
      v46 = v93[1];
    }

    *(v43 + 9) = v94;
    v43[11] = v95;
    v95 = 0;
    v94 = 0uLL;
    if (v46)
    {
      v93[2] = v46;
      operator delete(v46);
    }

    if (__p[0])
    {
      sub_303378(__p);
      operator delete(__p[0]);
    }

    v33 = v96;
LABEL_65:
    v47 = v33 == 1;
    v33 >>= 2;
  }

  while (!v47);
  v48 = v89[0];
  if (v89[0])
  {
    v49 = v83 | (v84 << 32);
    do
    {
      __p[0] = v48 + 4;
      v51 = sub_30389C(a1, v48 + 4);
      v52 = v51;
      v54 = v51[10];
      v53 = v51[11];
      if (v54 < v53)
      {
        *v54 = v49;
        v50 = v54 + 8;
      }

      else
      {
        v55 = v51[9];
        v56 = v54 - v55;
        v57 = (v54 - v55) >> 3;
        v58 = v57 + 1;
        if ((v57 + 1) >> 61)
        {
          sub_1794();
        }

        v59 = v53 - v55;
        if (v59 >> 2 > v58)
        {
          v58 = v59 >> 2;
        }

        if (v59 >= 0x7FFFFFFFFFFFFFF8)
        {
          v60 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v60 = v58;
        }

        if (v60)
        {
          if (!(v60 >> 61))
          {
            operator new();
          }

          sub_1808();
        }

        v61 = (v54 - v55) >> 3;
        v62 = (8 * v57);
        v63 = (8 * v57 - 8 * v61);
        *v62 = v49;
        v50 = v62 + 1;
        memcpy(v63, v55, v56);
        v52[9] = v63;
        v52[10] = v50;
        v52[11] = 0;
        if (v55)
        {
          operator delete(v55);
        }
      }

      v52[10] = v50;
      v48 = *v48;
    }

    while (v48);
  }

  if (v89[1] >= &dword_0 + 2)
  {
    while (1)
    {
      v67 = v89[0];
      *__p = 0u;
      *v93 = 0u;
      LODWORD(v93[2]) = 1065353216;
      if (v89[0])
      {
        do
        {
          v96 = v67[4] >> 2;
          v97 = &v96;
          v68 = sub_3034C8(__p, &v96);
          sub_3029D8(v68 + 3, v67 + 4);
          v67 = *v67;
        }

        while (v67);
      }

      sub_303CB4(v88, __p);
      v69 = v93[0];
      if (v93[0])
      {
        do
        {
          v72 = *v69;
          v73 = v69[5];
          if (v73)
          {
            do
            {
              v74 = *v73;
              operator delete(v73);
              v73 = v74;
            }

            while (v74);
          }

          v75 = v69[3];
          v69[3] = 0;
          if (v75)
          {
            operator delete(v75);
          }

          operator delete(v69);
          v69 = v72;
        }

        while (v72);
      }

      v70 = __p[0];
      __p[0] = 0;
      if (v70)
      {
        operator delete(v70);
      }

      v71 = v89[0];
      if (v89[0])
      {
        do
        {
          v76 = sub_57A90(v71[4]);
          v77 = sub_57A90(v71[4]) >> 1;
          if (v76 <= 0x1D && v77 <= v76 >> 1)
          {
            sub_57A90(v71[4]);
            operator new();
          }

          v71 = *v71;
        }

        while (v71);
      }

      if (v89[1] <= &dword_0 + 1)
      {
        v64 = v89[0];
        if (*(v89[0] + 4) == v87)
        {
          break;
        }
      }
    }
  }

  else
  {
    v64 = v89[0];
    if (!v89[0])
    {
      goto LABEL_85;
    }
  }

  do
  {
    v79 = *v64;
    v80 = v64[5];
    if (v80)
    {
      do
      {
        v81 = *v80;
        operator delete(v80);
        v80 = v81;
      }

      while (v81);
    }

    v82 = v64[3];
    v64[3] = 0;
    if (v82)
    {
      operator delete(v82);
    }

    operator delete(v64);
    v64 = v79;
  }

  while (v79);
LABEL_85:
  v65 = v88[0];
  v88[0] = 0;
  if (v65)
  {
    operator delete(v65);
  }

  return v83 | (v84 << 32);
}

void sub_301534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  *(v27 + 32) = v26;
  v29 = __p;
  if (__p)
  {
    do
    {
      v30 = *v29;
      v31 = v29[5];
      if (v31)
      {
        do
        {
          v32 = *v31;
          operator delete(v31);
          v31 = v32;
        }

        while (v32);
      }

      v33 = v29[3];
      v29[3] = 0;
      if (v33)
      {
        operator delete(v33);
      }

      operator delete(v29);
      v29 = v30;
    }

    while (v30);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void *sub_3016B0(void *a1, uint64_t a2)
{
  *v113 = 0u;
  *__p = 0u;
  v115 = 1065353216;
  v2 = *(a2 + 16);
  if (v2)
  {
    do
    {
      v116 = (v2 + 16);
      v108 = (v2 + 16);
      v3 = v2;
      v4 = sub_30389C(a1, (v2 + 16));
      v5 = v4;
      v107 = v3;
      v6 = v3[4] - v3[3];
      v111 = v4;
      if ((v6 & 0x3FFFFFFFC0) != 0)
      {
        v110 = 0;
        v105 = v4 + 3;
        v106 = (v6 >> 6);
        do
        {
          if (v113[1])
          {
            v8 = *v108;
            v9 = vcnt_s8(v113[1]);
            v9.i16[0] = vaddlv_u8(v9);
            if (v9.u32[0] > 1uLL)
            {
              v10 = *v108;
              if (v113[1] <= v8)
              {
                v10 = v8 % LODWORD(v113[1]);
              }
            }

            else
            {
              v10 = (LODWORD(v113[1]) - 1) & v8;
            }

            v11 = *(v113[0] + v10);
            if (v11)
            {
              v12 = *v11;
              if (v12)
              {
                if (v9.u32[0] < 2uLL)
                {
                  while (1)
                  {
                    v14 = v12[1];
                    if (v14 == v8)
                    {
                      if (*(v12 + 4) == v8)
                      {
                        goto LABEL_29;
                      }
                    }

                    else if ((v14 & (v113[1] - 1)) != v10)
                    {
                      goto LABEL_28;
                    }

                    v12 = *v12;
                    if (!v12)
                    {
                      goto LABEL_28;
                    }
                  }
                }

                do
                {
                  v13 = v12[1];
                  if (v13 == v8)
                  {
                    if (*(v12 + 4) == v8)
                    {
                      goto LABEL_29;
                    }
                  }

                  else
                  {
                    if (v13 >= v113[1])
                    {
                      v13 %= v113[1];
                    }

                    if (v13 != v10)
                    {
                      break;
                    }
                  }

                  v12 = *v12;
                }

                while (v12);
              }
            }
          }

LABEL_28:
          v17 = v5 + 3;
          v16 = v5[3];
          v15 = v17[1];
          v116 = v108;
          *(sub_303DD0(v113, v108) + 5) = (v15 - v16) >> 6;
          v5 = v111;
LABEL_29:
          v18 = (v107[3] + (v110 << 6));
          v20 = v5[4];
          v19 = v5[5];
          if (v20 >= v19)
          {
            v23 = (v20 - *v105) >> 6;
            if ((v23 + 1) >> 58)
            {
              sub_1794();
            }

            v24 = v19 - *v105;
            v25 = v24 >> 5;
            if (v24 >> 5 <= (v23 + 1))
            {
              v25 = v23 + 1;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFC0)
            {
              v26 = 0x3FFFFFFFFFFFFFFLL;
            }

            else
            {
              v26 = v25;
            }

            v119 = v105;
            if (v26)
            {
              if (!(v26 >> 58))
              {
                operator new();
              }

              sub_1808();
            }

            v30 = (v23 << 6);
            v116 = 0;
            v117 = v30;
            v118 = (v23 << 6);
            v30[1] = 0;
            v30[2] = 0;
            *v30 = 0;
            v32 = *v18;
            v31 = v18[1];
            v120 = v23 << 6;
            v121 = 0;
            if (v31 != v32)
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v31 - v32) >> 3) <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1794();
            }

            v33 = *(v18 + 3);
            *&stru_20.segname[64 * v23] = 0;
            *&dword_18[16 * v23] = v33;
            *&stru_20.segname[64 * v23 + 8] = 0;
            *&stru_20.segname[64 * v23 + 16] = 0;
            v35 = v18[5];
            v34 = v18[6];
            if (v34 != v35)
            {
              if (((v34 - v35) & 0x8000000000000000) == 0)
              {
                operator new();
              }

              sub_1794();
            }

            *&v118 = v30 + 8;
            v37 = v111[3];
            v36 = v111[4];
            v38 = v30 + v37 - v36;
            if (v37 != v36)
            {
              v39 = v111[3];
              v40 = v30 + v37 - v36;
              do
              {
                *v40 = 0;
                *(v40 + 1) = 0;
                *(v40 + 2) = 0;
                *v40 = *v39;
                *(v40 + 2) = *(v39 + 16);
                *(v39 + 8) = 0;
                *(v39 + 16) = 0;
                *v39 = 0;
                *(v40 + 24) = *(v39 + 24);
                *(v40 + 6) = 0;
                *(v40 + 7) = 0;
                *(v40 + 5) = 0;
                *(v40 + 40) = *(v39 + 40);
                *(v40 + 7) = *(v39 + 56);
                *(v39 + 40) = 0;
                *(v39 + 48) = 0;
                *(v39 + 56) = 0;
                v39 += 64;
                v40 += 64;
              }

              while (v39 != v36);
              do
              {
                v42 = *(v37 + 5);
                if (v42)
                {
                  *(v37 + 6) = v42;
                  operator delete(v42);
                }

                v43 = *v37;
                if (*v37)
                {
                  v44 = *(v37 + 1);
                  v41 = *v37;
                  if (v44 != v43)
                  {
                    v45 = *(v37 + 1);
                    do
                    {
                      v48 = *(v45 - 3);
                      v45 -= 3;
                      v47 = v48;
                      if (v48)
                      {
                        v49 = *(v44 - 2);
                        v46 = v47;
                        if (v49 != v47)
                        {
                          v50 = *(v44 - 2);
                          do
                          {
                            v52 = *(v50 - 3);
                            v50 -= 24;
                            v51 = v52;
                            if (v52)
                            {
                              *(v49 - 2) = v51;
                              operator delete(v51);
                            }

                            v49 = v50;
                          }

                          while (v50 != v47);
                          v46 = *v45;
                        }

                        *(v44 - 2) = v47;
                        operator delete(v46);
                      }

                      v44 = v45;
                    }

                    while (v45 != v43);
                    v41 = *v37;
                  }

                  *(v37 + 1) = v43;
                  operator delete(v41);
                }

                v37 += 64;
              }

              while (v37 != v36);
            }

            v53 = v111[3];
            v111[3] = v38;
            v5 = v111;
            v54 = v118;
            v117 = v53;
            *&v118 = v53;
            *(v111 + 2) = v54;
            if (v53)
            {
              v112 = v54;
              operator delete(v53);
              *&v54 = v112;
            }

            v7 = v54;
          }

          else
          {
            *v20 = 0;
            *(v20 + 8) = 0;
            *(v20 + 16) = 0;
            v22 = *v18;
            v21 = v18[1];
            v122[6] = v20;
            v123 = 0;
            if (v21 != v22)
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v21 - v22) >> 3) <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1794();
            }

            v27 = *(v18 + 3);
            *(v20 + 40) = 0;
            *(v20 + 24) = v27;
            *(v20 + 48) = 0;
            *(v20 + 56) = 0;
            v29 = v18[5];
            v28 = v18[6];
            if (v28 != v29)
            {
              if (((v28 - v29) & 0x8000000000000000) == 0)
              {
                operator new();
              }

              sub_1794();
            }

            v7 = v20 + 64;
            v5 = v111;
            v111[4] = v20 + 64;
          }

          v5[4] = v7;
          ++v110;
        }

        while (v110 != v106);
      }

      v55 = v107[6];
      v56 = v107[7];
      while (v55 != v56)
      {
        v59 = *v55;
        LODWORD(v122[0]) = *v55;
        if (v113[1])
        {
          v60 = vcnt_s8(v113[1]);
          v60.i16[0] = vaddlv_u8(v60);
          if (v60.u32[0] > 1uLL)
          {
            v61 = v59;
            if (v113[1] <= v59)
            {
              v61 = v59 % LODWORD(v113[1]);
            }
          }

          else
          {
            v61 = (LODWORD(v113[1]) - 1) & v59;
          }

          v62 = *(v113[0] + v61);
          if (v62)
          {
            v63 = *v62;
            if (v63)
            {
              if (v60.u32[0] < 2uLL)
              {
                while (1)
                {
                  v65 = v63[1];
                  if (v65 == v59)
                  {
                    if (*(v63 + 4) == v59)
                    {
                      goto LABEL_100;
                    }
                  }

                  else if ((v65 & (v113[1] - 1)) != v61)
                  {
                    goto LABEL_99;
                  }

                  v63 = *v63;
                  if (!v63)
                  {
                    goto LABEL_99;
                  }
                }
              }

              do
              {
                v64 = v63[1];
                if (v64 == v59)
                {
                  if (*(v63 + 4) == v59)
                  {
                    goto LABEL_100;
                  }
                }

                else
                {
                  if (v64 >= v113[1])
                  {
                    v64 %= v113[1];
                  }

                  if (v64 != v61)
                  {
                    break;
                  }
                }

                v63 = *v63;
              }

              while (v63);
            }
          }
        }

LABEL_99:
        v116 = v122;
        v66 = sub_30389C(a1, v122);
        v68 = v66[3];
        v67 = v66[4];
        v116 = v122;
        *(sub_303DD0(v113, v122) + 5) = (v67 - v68) >> 6;
LABEL_100:
        v116 = v122;
        v69 = (*(sub_303DD0(v113, v122) + 5) + HIDWORD(v59));
        v71 = v111[7];
        v70 = v111[8];
        if (v71 < v70)
        {
          *v71 = LODWORD(v122[0]) | (v69 << 32);
          v57 = (v71 + 8);
          v58 = v111;
        }

        else
        {
          v72 = v111[6];
          v73 = v71 - v72;
          v74 = (v71 - v72) >> 3;
          v75 = v74 + 1;
          if ((v74 + 1) >> 61)
          {
            sub_1794();
          }

          v76 = v70 - v72;
          if (v76 >> 2 > v75)
          {
            v75 = v76 >> 2;
          }

          if (v76 >= 0x7FFFFFFFFFFFFFF8)
          {
            v77 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v77 = v75;
          }

          if (v77)
          {
            if (!(v77 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v58 = v111;
          *(8 * v74) = LODWORD(v122[0]) | (v69 << 32);
          v57 = 8 * v74 + 8;
          memcpy(0, v72, v73);
          v111[6] = 0;
          v111[7] = v57;
          v111[8] = 0;
          if (v72)
          {
            operator delete(v72);
          }
        }

        v58[7] = v57;
        ++v55;
      }

      v78 = v107[9];
      v79 = v107[10];
      while (v78 != v79)
      {
        v82 = *v78;
        LODWORD(v122[0]) = *v78;
        if (v113[1])
        {
          v83 = vcnt_s8(v113[1]);
          v83.i16[0] = vaddlv_u8(v83);
          if (v83.u32[0] > 1uLL)
          {
            v84 = v82;
            if (v113[1] <= v82)
            {
              v84 = v82 % LODWORD(v113[1]);
            }
          }

          else
          {
            v84 = (LODWORD(v113[1]) - 1) & v82;
          }

          v85 = *(v113[0] + v84);
          if (v85)
          {
            v86 = *v85;
            if (v86)
            {
              if (v83.u32[0] < 2uLL)
              {
                while (1)
                {
                  v88 = v86[1];
                  if (v88 == v82)
                  {
                    if (*(v86 + 4) == v82)
                    {
                      goto LABEL_137;
                    }
                  }

                  else if ((v88 & (v113[1] - 1)) != v84)
                  {
                    goto LABEL_136;
                  }

                  v86 = *v86;
                  if (!v86)
                  {
                    goto LABEL_136;
                  }
                }
              }

              do
              {
                v87 = v86[1];
                if (v87 == v82)
                {
                  if (*(v86 + 4) == v82)
                  {
                    goto LABEL_137;
                  }
                }

                else
                {
                  if (v87 >= v113[1])
                  {
                    v87 %= v113[1];
                  }

                  if (v87 != v84)
                  {
                    break;
                  }
                }

                v86 = *v86;
              }

              while (v86);
            }
          }
        }

LABEL_136:
        v116 = v122;
        v89 = sub_30389C(a1, v122);
        v91 = v89[3];
        v90 = v89[4];
        v116 = v122;
        *(sub_303DD0(v113, v122) + 5) = (v90 - v91) >> 6;
LABEL_137:
        v116 = v122;
        v92 = (*(sub_303DD0(v113, v122) + 5) + HIDWORD(v82));
        v94 = v111[10];
        v93 = v111[11];
        if (v94 < v93)
        {
          *v94 = LODWORD(v122[0]) | (v92 << 32);
          v80 = (v94 + 8);
          v81 = v111;
        }

        else
        {
          v95 = v111[9];
          v96 = v94 - v95;
          v97 = (v94 - v95) >> 3;
          v98 = v97 + 1;
          if ((v97 + 1) >> 61)
          {
            sub_1794();
          }

          v99 = v93 - v95;
          if (v99 >> 2 > v98)
          {
            v98 = v99 >> 2;
          }

          if (v99 >= 0x7FFFFFFFFFFFFFF8)
          {
            v100 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v100 = v98;
          }

          if (v100)
          {
            if (!(v100 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v81 = v111;
          *(8 * v97) = LODWORD(v122[0]) | (v92 << 32);
          v80 = 8 * v97 + 8;
          memcpy(0, v95, v96);
          v111[9] = 0;
          v111[10] = v80;
          v111[11] = 0;
          if (v95)
          {
            operator delete(v95);
          }
        }

        v81[10] = v80;
        ++v78;
      }

      v2 = *v107;
    }

    while (*v107);
    v101 = __p[0];
    if (__p[0])
    {
      do
      {
        v102 = *v101;
        operator delete(v101);
        v101 = v102;
      }

      while (v102);
    }

    v103 = v113[0];
    v113[0] = 0;
    if (v103)
    {
      operator delete(v103);
    }
  }

  else
  {
    v113[0] = 0;
  }

  return a1;
}

void sub_302420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_11BD8(va);
  _Unwind_Resume(a1);
}

void sub_3024E8()
{
  sub_35390((v2 - 104));
  sub_52F40(v2 - 152);
  *(v1 + 8) = v0;
  JUMPOUT(0x302544);
}

uint64_t *sub_302614(void *a1, unsigned int *a2)
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

void sub_302950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_302964(va);
  _Unwind_Resume(a1);
}

uint64_t sub_302964(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[5];
      if (v3)
      {
        do
        {
          v4 = *v3;
          operator delete(v3);
          v3 = v4;
        }

        while (v4);
      }

      v5 = v1[3];
      v1[3] = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t *sub_3029D8(void *a1, unsigned int *a2)
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

uint64_t sub_302D10(uint64_t a1, uint64_t *a2, _OWORD *a3, void *a4)
{
  v4 = (*(a1 + 8) - *a1) >> 6;
  v5 = v4 + 1;
  if ((v4 + 1) >> 58)
  {
    sub_1794();
  }

  v9 = *(a1 + 16) - *a1;
  if (v9 >> 5 > v5)
  {
    v5 = v9 >> 5;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFC0)
  {
    v10 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v5;
  }

  v19 = a1;
  if (v10)
  {
    if (!(v10 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  v11 = (v4 << 6);
  __p = 0;
  v16 = v4 << 6;
  v17 = (v4 << 6);
  v18 = 0;
  v20 = 0uLL;
  v21 = 0;
  sub_53358(&v20, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v12 = a4[1];
  if (v12 != *a4)
  {
    if (((v12 - *a4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *v11 = v20;
  *&dword_10[16 * v4] = v21;
  *&dword_18[16 * v4] = *a3;
  *&stru_20.segname[64 * v4] = 0;
  *&stru_20.segname[64 * v4 + 8] = 0;
  *&stru_20.segname[64 * v4 + 16] = 0;
  v17 = v11 + 4;
  sub_302EE4(a1, &__p);
  v13 = *(a1 + 8);
  sub_30327C(&__p, v16);
  if (__p)
  {
    operator delete(__p);
  }

  return v13;
}

void sub_302EB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_52FF0(va1);
  sub_30300C(va);
  _Unwind_Resume(a1);
}

void sub_302ED0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_30300C(va);
  _Unwind_Resume(a1);
}

void sub_302EE4(void ****a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = v4 + *a1 - v6;
  if (v6 != *a1)
  {
    v8 = *a1;
    v9 = v4 + *a1 - v6;
    do
    {
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = *v8;
      *(v9 + 16) = v8[2];
      v8[1] = 0;
      v8[2] = 0;
      *v8 = 0;
      *(v9 + 24) = *(v8 + 3);
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 40) = 0;
      *(v9 + 40) = *(v8 + 5);
      *(v9 + 56) = v8[7];
      v8[5] = 0;
      v8[6] = 0;
      v8[7] = 0;
      v8 += 8;
      v9 += 64;
    }

    while (v8 != v6);
  }

  sub_303044(a1, v5, v6);
  a2[1] = v7;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

uint64_t sub_30300C(uint64_t a1)
{
  sub_30327C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_303044(uint64_t a1, void ***a2, void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = v4[5];
      if (v6)
      {
        v4[6] = v6;
        operator delete(v6);
      }

      v7 = *v4;
      if (*v4)
      {
        v8 = v4[1];
        v5 = *v4;
        if (v8 != v7)
        {
          v9 = v4[1];
          do
          {
            v12 = *(v9 - 3);
            v9 -= 3;
            v11 = v12;
            if (v12)
            {
              v13 = *(v8 - 2);
              v10 = v11;
              if (v13 != v11)
              {
                v14 = *(v8 - 2);
                do
                {
                  v16 = *(v14 - 3);
                  v14 -= 24;
                  v15 = v16;
                  if (v16)
                  {
                    *(v13 - 2) = v15;
                    operator delete(v15);
                  }

                  v13 = v14;
                }

                while (v14 != v11);
                v10 = *v9;
              }

              *(v8 - 2) = v11;
              operator delete(v10);
            }

            v8 = v9;
          }

          while (v9 != v7);
          v5 = *v4;
        }

        v4[1] = v7;
        operator delete(v5);
      }

      v4 += 8;
    }

    while (v4 != a3);
  }
}

void sub_303130(uint64_t a1, void ***a2)
{
  v3 = a2[5];
  if (v3)
  {
    a2[6] = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    v5 = a2[1];
    v6 = *a2;
    if (v5 != v4)
    {
      v7 = a2[1];
      do
      {
        v10 = *(v7 - 3);
        v7 -= 3;
        v9 = v10;
        if (v10)
        {
          v11 = *(v5 - 2);
          v8 = v9;
          if (v11 != v9)
          {
            v12 = *(v5 - 2);
            do
            {
              v14 = *(v12 - 3);
              v12 -= 24;
              v13 = v14;
              if (v14)
              {
                *(v11 - 2) = v13;
                operator delete(v13);
              }

              v11 = v12;
            }

            while (v12 != v9);
            v8 = *v7;
          }

          *(v5 - 2) = v9;
          operator delete(v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v6 = *a2;
    }

    a2[1] = v4;

    operator delete(v6);
  }
}

uint64_t sub_303214(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 8;
        sub_303130(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_30327C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    v6 = (i - 64);
    *(a1 + 16) = i - 64;
    v7 = *(i - 24);
    if (v7)
    {
      *(i - 16) = v7;
      operator delete(v7);
    }

    v8 = *v6;
    if (*v6)
    {
      v9 = *(i - 56);
      v5 = *v6;
      if (v9 != v8)
      {
        v10 = *(i - 56);
        do
        {
          v13 = *(v10 - 3);
          v10 -= 3;
          v12 = v13;
          if (v13)
          {
            v14 = *(v9 - 2);
            v11 = v12;
            if (v14 != v12)
            {
              v15 = *(v9 - 2);
              do
              {
                v17 = *(v15 - 3);
                v15 -= 24;
                v16 = v17;
                if (v17)
                {
                  *(v14 - 2) = v16;
                  operator delete(v16);
                }

                v14 = v15;
              }

              while (v15 != v12);
              v11 = *v10;
            }

            *(v9 - 2) = v12;
            operator delete(v11);
          }

          v9 = v10;
        }

        while (v10 != v8);
        v5 = *v6;
      }

      *(i - 56) = v8;
      operator delete(v5);
    }
  }
}

void sub_303378(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v5 = *(v3 - 3);
      if (v5)
      {
        *(v3 - 2) = v5;
        operator delete(v5);
      }

      v6 = v3 - 8;
      v7 = *(v3 - 8);
      if (v7)
      {
        v8 = *(v3 - 7);
        v4 = *(v3 - 8);
        if (v8 != v7)
        {
          v9 = *(v3 - 7);
          do
          {
            v12 = *(v9 - 3);
            v9 -= 3;
            v11 = v12;
            if (v12)
            {
              v13 = *(v8 - 2);
              v10 = v11;
              if (v13 != v11)
              {
                v14 = *(v8 - 2);
                do
                {
                  v16 = *(v14 - 3);
                  v14 -= 24;
                  v15 = v16;
                  if (v16)
                  {
                    *(v13 - 2) = v15;
                    operator delete(v15);
                  }

                  v13 = v14;
                }

                while (v14 != v11);
                v10 = *v9;
              }

              *(v8 - 2) = v11;
              operator delete(v10);
            }

            v8 = v9;
          }

          while (v9 != v7);
          v4 = *v6;
        }

        *(v3 - 7) = v7;
        operator delete(v4);
      }

      v3 -= 8;
    }

    while (v6 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_30346C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  if (*a1)
  {
    sub_303378(a1);
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_3034C8(void *a1, unsigned int *a2)
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

void sub_303804(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_302964(va);
  _Unwind_Resume(a1);
}

uint64_t sub_303818(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[5];
      if (v6)
      {
        do
        {
          v7 = *v6;
          operator delete(v6);
          v6 = v7;
        }

        while (v7);
      }

      v8 = v2[3];
      v2[3] = 0;
      if (v8)
      {
        operator delete(v8);
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

uint64_t *sub_30389C(void *a1, unsigned int *a2)
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

void sub_303BDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_303BF0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_303BF0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_303C44(*(a1 + 8), v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_303C44(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  if (v3)
  {
    *(a2 + 64) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 32);
  if (v4)
  {
    *(a2 + 40) = v4;
    operator delete(v4);
  }

  if (*(a2 + 8))
  {
    sub_303378((a2 + 8));
    v5 = *(a2 + 8);

    operator delete(v5);
  }
}

void sub_303CB4(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v15 = *v4;
        v16 = v4[5];
        if (v16)
        {
          do
          {
            v17 = *v16;
            operator delete(v16);
            v16 = v17;
          }

          while (v17);
        }

        v18 = v4[3];
        v4[3] = 0;
        if (v18)
        {
          operator delete(v18);
        }

        operator delete(v4);
        v4 = v15;
      }

      while (v15);
    }

    *(a1 + 16) = 0;
    v5 = *(a1 + 8);
    if (v5)
    {
      bzero(*a1, 8 * v5);
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

uint64_t *sub_303DD0(void *a1, unsigned int *a2)
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

uint64_t sub_30410C(uint64_t result, char a2, uint64_t a3, void *a4)
{
  *result = a2;
  *(result + 16) = 0;
  *(result + 8) = a3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  v4 = a4[1];
  if (v4 != *a4)
  {
    if (((v4 - *a4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_304198(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_3041B4(uint64_t a1, char a2, uint64_t a3, __n128 *a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  result = *a4;
  *(a1 + 16) = *a4;
  *(a1 + 32) = a4[1].n128_u64[0];
  a4->n128_u64[0] = 0;
  a4->n128_u64[1] = 0;
  a4[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_3041DC(uint64_t a1, uint64_t a2)
{
  sub_30DF0C(a1, a2);
  *(v4 + 72) = 0;
  sub_30D41C(v4 + 80, a2);
  *(a1 + 200) = &unk_2290750;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 248) = &unk_2290750;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = &unk_2290750;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 344) = &unk_2290750;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 392) = &unk_2290750;
  *(a1 + 416) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 440) = &unk_2290750;
  *(a1 + 464) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 480) = 0;
  *(a1 + 488) = &unk_2290750;
  *(a1 + 528) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 536) = &unk_2290750;
  *(a1 + 576) = 0;
  *(a1 + 560) = 0;
  *(a1 + 544) = 0u;
  *(a1 + 584) = &unk_2290750;
  *(a1 + 624) = 0;
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 632) = &unk_2290750;
  *(a1 + 672) = 0;
  *(a1 + 656) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 680) = &unk_2290750;
  *(a1 + 720) = 0;
  *(a1 + 704) = 0;
  *(a1 + 688) = 0u;
  *(a1 + 728) = &unk_2290750;
  *(a1 + 768) = 0;
  *(a1 + 752) = 0;
  *(a1 + 736) = 0u;
  *(a1 + 776) = &unk_2290750;
  *(a1 + 816) = 0;
  *(a1 + 800) = 0;
  *(a1 + 784) = 0u;
  *(a1 + 824) = &unk_2290750;
  *(a1 + 864) = 0;
  *(a1 + 848) = 0;
  *(a1 + 832) = 0u;
  *(a1 + 872) = &unk_2290750;
  *(a1 + 912) = 0;
  *(a1 + 896) = 0;
  *(a1 + 880) = 0u;
  *(a1 + 920) = &unk_2290750;
  *(a1 + 960) = 0;
  *(a1 + 944) = 0;
  *(a1 + 928) = 0u;
  *(a1 + 968) = &unk_2290750;
  *(a1 + 1008) = 0;
  *(a1 + 992) = 0;
  *(a1 + 976) = 0u;
  *(a1 + 1016) = &unk_2290750;
  *(a1 + 1056) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1024) = 0u;
  *(a1 + 1064) = &unk_2290750;
  *(a1 + 1104) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1072) = 0u;
  *(a1 + 1112) = &unk_2290750;
  *(a1 + 1152) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  *(a1 + 1160) = &unk_2290750;
  *(a1 + 1200) = 0;
  *(a1 + 1184) = 0;
  *(a1 + 1168) = 0u;
  *(a1 + 1208) = &unk_2290750;
  *(a1 + 1248) = 0;
  *(a1 + 1232) = 0;
  *(a1 + 1216) = 0u;
  *(a1 + 1256) = &unk_2290750;
  *(a1 + 1296) = 0;
  *(a1 + 1280) = 0;
  *(a1 + 1264) = 0u;
  *(a1 + 1304) = &unk_2290750;
  *(a1 + 1344) = 0;
  *(a1 + 1328) = 0;
  *(a1 + 1312) = 0u;
  *(a1 + 1352) = &unk_2290750;
  *(a1 + 1392) = 0;
  *(a1 + 1376) = 0;
  *(a1 + 1360) = 0u;
  *(a1 + 1400) = &unk_2290750;
  *(a1 + 1440) = 0;
  *(a1 + 1424) = 0;
  *(a1 + 1408) = 0u;
  *(a1 + 1448) = &unk_2290750;
  *(a1 + 1488) = 0;
  *(a1 + 1472) = 0;
  *(a1 + 1456) = 0u;
  *(a1 + 1496) = &unk_2290750;
  *(a1 + 1536) = 0;
  *(a1 + 1520) = 0;
  *(a1 + 1504) = 0u;
  *(a1 + 1544) = &unk_2290750;
  *(a1 + 1584) = 0;
  *(a1 + 1568) = 0;
  *(a1 + 1552) = 0u;
  *(a1 + 1592) = &unk_2290750;
  *(a1 + 1632) = 0;
  *(a1 + 1616) = 0;
  *(a1 + 1600) = 0u;
  *(a1 + 1640) = &unk_2290750;
  *(a1 + 1680) = 0;
  *(a1 + 1664) = 0;
  *(a1 + 1648) = 0u;
  *(a1 + 1688) = &unk_2290750;
  *(a1 + 1728) = 0;
  *(a1 + 1712) = 0;
  *(a1 + 1696) = 0u;
  *(a1 + 1736) = &unk_2290750;
  *(a1 + 1776) = 0;
  *(a1 + 1760) = 0;
  *(a1 + 1744) = 0u;
  *(a1 + 1784) = &unk_2290750;
  *(a1 + 1824) = 0;
  *(a1 + 1808) = 0;
  *(a1 + 1792) = 0u;
  *(a1 + 1832) = &unk_2290750;
  *(a1 + 1872) = 0;
  *(a1 + 1856) = 0;
  *(a1 + 1840) = 0u;
  *(a1 + 1880) = &unk_2290750;
  *(a1 + 1920) = 0;
  *(a1 + 1904) = 0;
  *(a1 + 1888) = 0u;
  *(a1 + 1928) = &unk_2290750;
  *(a1 + 1968) = 0;
  *(a1 + 1952) = 0;
  *(a1 + 1936) = 0u;
  *(a1 + 1976) = &unk_2290750;
  *(a1 + 2016) = 0;
  *(a1 + 2000) = 0;
  *(a1 + 1984) = 0u;
  *(a1 + 2024) = &unk_2290750;
  *(a1 + 2064) = 0;
  *(a1 + 2048) = 0;
  *(a1 + 2032) = 0u;
  *(a1 + 2072) = &unk_2290750;
  *(a1 + 2112) = 0;
  *(a1 + 2096) = 0;
  *(a1 + 2080) = 0u;
  *(a1 + 2120) = &unk_2290750;
  *(a1 + 2160) = 0;
  *(a1 + 2144) = 0;
  *(a1 + 2128) = 0u;
  *(a1 + 2168) = &unk_2290750;
  *(a1 + 2208) = 0;
  *(a1 + 2192) = 0;
  *(a1 + 2176) = 0u;
  *(a1 + 2216) = &unk_2290750;
  *(a1 + 2256) = 0;
  *(a1 + 2240) = 0;
  *(a1 + 2224) = 0u;
  *(a1 + 2264) = &unk_2290750;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = &unk_2290750;
  *(a1 + 2352) = 0;
  *(a1 + 2336) = 0;
  *(a1 + 2320) = 0u;
  *(a1 + 2360) = &unk_2290750;
  *(a1 + 2400) = 0;
  *(a1 + 2384) = 0;
  *(a1 + 2368) = 0u;
  *(a1 + 2408) = &unk_2290750;
  *(a1 + 2448) = 0;
  *(a1 + 2432) = 0;
  *(a1 + 2416) = 0u;
  *(a1 + 2456) = &unk_2290750;
  *(a1 + 2480) = 0;
  *(a1 + 2464) = 0u;
  *(a1 + 2560) = 0u;
  *(a1 + 2544) = 0u;
  *(a1 + 2528) = 0u;
  *(a1 + 2512) = 0u;
  *(a1 + 2496) = 0u;
  return a1;
}

void *sub_304534(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

BOOL sub_30457C(uint64_t a1, uint64_t *a2, uint64_t **a3, char a4)
{
  *(a1 + 8) = a4;
  v7 = (a1 + 1736);
  sub_304A50(a1 + 1736);
  sub_304AF8(a1, a2);
  v8 = *(a1 + 200);
  v10 = *(a1 + 208);
  v9 = a1 + 200;
  v11 = v8;
  if (*v8 <= -2)
  {
    do
    {
      v12 = (__clz(__rbit64(((*v11 >> 7) & ~*v11 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v11 = (v11 + v12);
      v10 += 4 * v12;
    }

    while (*v11 < -1);
  }

  v13 = &v8[*(a1 + 224)];
  v14 = (a1 + 200);
  if (v11 == v13)
  {
    v14 = (a1 + 248);
    v23 = 48;
    v24 = a1 + 200;
    do
    {
      v10 = *(v24 + 56);
      v11 = *v14;
      if (**v14 <= -2)
      {
        do
        {
          v25 = (__clz(__rbit64(((*v11 >> 7) & ~*v11 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v11 = (v11 + v25);
          v10 += 4 * v25;
        }

        while (*v11 < -1);
      }

      v13 = &(*v14)[*(v24 + 72)];
      if (v11 != v13)
      {
        goto LABEL_4;
      }

      v24 = v9 + v23;
      v23 += 48;
      v14 = (v9 + v23);
    }

    while (v23 != 768);
LABEL_21:
    v27 = *a3;
    v26 = a3[1];
    while (v27 != v26)
    {
      v53 = *v27;
      sub_3079D0(a1 + 200, &v53, v54);
      if (!v54[0])
      {
        sub_305200(a1, v53);
        result = sub_305B24(a1, v53);
        if (!result)
        {
          return result;
        }
      }

      ++v27;
    }

    v28 = *(a1 + 1736);
    v29 = *(a1 + 1744);
    if (*v28 > -2)
    {
      v30 = *(a1 + 1736);
      v49 = *(a1 + 1760);
      v32 = &v28[v49];
      if (v28 != &v28[v49])
      {
LABEL_31:
        v33 = v7;
LABEL_32:
        v34 = (a1 + 2504);
        while (1)
        {
          do
          {
            v35 = *(v29 + 1);
            v36 = *(v29 + 2);
            v37 = 126 - 2 * __clz((v36 - v35) >> 2);
            if (v36 == v35)
            {
              v38 = 0;
            }

            else
            {
              v38 = v37;
            }

            sub_307B48(v35, v36, v38, 1);
            v39 = *(v29 + 4);
            v40 = *(v29 + 5);
            v41 = 126 - 2 * __clz((v40 - v39) >> 2);
            if (v40 == v39)
            {
              v42 = 0;
            }

            else
            {
              v42 = v41;
            }

            sub_307B48(v39, v40, v42, 1);
            v43 = *(v30 + 1);
            v30 = (v30 + 1);
            v29 += 104;
            if (v43 <= -2)
            {
              do
              {
                v44 = (__clz(__rbit64(((*v30 >> 7) & ~*v30 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
                v30 = (v30 + v44);
                v29 += 104 * v44;
              }

              while (*v30 < -1);
            }
          }

          while (v30 != v32);
          v45 = v33 + 6;
          if (v33 + 6 == v34)
          {
            break;
          }

          while (1)
          {
            v46 = v45;
            v47 = v33[6];
            v29 = v33[7];
            v30 = v47;
            if (*v47 <= -2)
            {
              do
              {
                v48 = (__clz(__rbit64(((*v30 >> 7) & ~*v30 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
                v30 = (v30 + v48);
                v29 += 104 * v48;
              }

              while (*v30 < -1);
            }

            v32 = &v33[9][v47];
            if (v30 != v32)
            {
              break;
            }

            v45 = v46 + 6;
            v33 = v46;
            if (v46 + 6 == v34)
            {
              return 1;
            }
          }

          v33 = v46;
        }

        return 1;
      }
    }

    else
    {
      v30 = *(a1 + 1736);
      do
      {
        v31 = (__clz(__rbit64(((*v30 >> 7) & ~*v30 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v30 = (v30 + v31);
        v29 += 104 * v31;
      }

      while (*v30 < -1);
      v32 = &v28[*(a1 + 1760)];
      if (v30 != v32)
      {
        goto LABEL_31;
      }
    }

    v33 = (a1 + 1784);
    v50 = 6;
    v51 = v7;
    while (1)
    {
      v29 = v51[7];
      v30 = *v33;
      if (**v33 <= -2)
      {
        do
        {
          v52 = (__clz(__rbit64(((*v30 >> 7) & ~*v30 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v30 = (v30 + v52);
          v29 += 104 * v52;
        }

        while (*v30 < -1);
      }

      v32 = &v51[9][*v33];
      if (v30 != v32)
      {
        break;
      }

      v51 = &v7[v50];
      v50 += 6;
      v33 = &v7[v50];
      if (v50 == 96)
      {
        return 1;
      }
    }

    goto LABEL_32;
  }

LABEL_4:
  v15 = (a1 + 968);
  while (1)
  {
    sub_305200(a1, *v10);
    result = sub_305B24(a1, *v10);
    if (!result)
    {
      return result;
    }

    v17 = *(v11 + 1);
    v11 = (v11 + 1);
    v10 += 4;
    if (v17 <= -2)
    {
      do
      {
        v18 = (__clz(__rbit64(((*v11 >> 7) & ~*v11 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v11 = (v11 + v18);
        v10 += 4 * v18;
      }

      while (*v11 < -1);
    }

    if (v11 == v13)
    {
      v19 = v14 + 6;
      if (v14 + 6 == v15)
      {
        goto LABEL_21;
      }

      while (1)
      {
        v20 = v19;
        v21 = v14[6];
        v10 = v14[7];
        v11 = v21;
        if (*v21 <= -2)
        {
          do
          {
            v22 = (__clz(__rbit64(((*v11 >> 7) & ~*v11 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
            v11 = (v11 + v22);
            v10 += 4 * v22;
          }

          while (*v11 < -1);
        }

        v13 = &v14[9][v21];
        if (v11 != v13)
        {
          break;
        }

        v19 = v20 + 6;
        v14 = v20;
        if (v20 + 6 == v15)
        {
          goto LABEL_21;
        }
      }

      v14 = v20;
    }
  }
}

void sub_304A50(uint64_t a1)
{
  sub_3078A0(a1);
  sub_3078A0(a1 + 48);
  sub_3078A0(a1 + 96);
  sub_3078A0(a1 + 144);
  sub_3078A0(a1 + 192);
  sub_3078A0(a1 + 240);
  sub_3078A0(a1 + 288);
  sub_3078A0(a1 + 336);
  sub_3078A0(a1 + 384);
  sub_3078A0(a1 + 432);
  sub_3078A0(a1 + 480);
  sub_3078A0(a1 + 528);
  sub_3078A0(a1 + 576);
  sub_3078A0(a1 + 624);
  sub_3078A0(a1 + 672);

  sub_3078A0(a1 + 720);
}

void sub_304AF8(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  *(a1 + 72) = a2;
  v84 = (a1 + 200);
  sub_3068EC(a1 + 200);
  v85 = (v3 + 968);
  sub_3068EC(v3 + 968);
  v83 = -858993459 * ((a2[1] - *a2) >> 3);
  if (v83)
  {
    v4 = 0;
    v82 = v3;
    do
    {
      v5 = (*a2 + 40 * v4);
      if ((v5[1] >> *(v3 + 8)))
      {
        v6 = v5[3] - v5[2];
        if ((v6 & 0x7FFFFFFF8) != 0)
        {
          v7 = 0;
          v8 = (v6 >> 3);
          do
          {
            v10 = *(*(*a2 + 40 * v4 + 16) + 8 * v7);
            v11 = (v10 >> 16) & 0xFFFF0000 | (v10 << 32);
            if ((v10 & 0xFF000000000000) != 0)
            {
              v12 = (v10 >> 16) & 0xFFFF0000 | (v10 << 32);
            }

            else
            {
              v12 = v11 + 1;
            }

            v13 = ((0x2127599BF4325C37 * (v12 ^ (v11 >> 23))) ^ ~((0x2127599BF4325C37 * (v12 ^ (v11 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v12 ^ (v11 >> 23))) ^ ((0x2127599BF4325C37 * (v12 ^ (v11 >> 23))) >> 47)) << 21);
            v14 = 21 * ((265 * (v13 ^ (v13 >> 24))) ^ ((265 * (v13 ^ (v13 >> 24))) >> 14));
            v15 = 2147483649u * (v14 ^ (v14 >> 28));
            v16 = ((((v14 ^ (v14 >> 28)) >> 8) ^ ((-2147483647 * (v14 ^ (v14 >> 28))) >> 16)) ^ ((-2147483647 * (v14 ^ (v14 >> 28))) >> 24)) & 0xF;
            v17 = v15 >> 7;
            v18 = 0x101010101010101 * ((v14 ^ (v14 >> 28)) & 0x7F);
            v19 = 0;
            if (v7)
            {
              v20 = &v85[6 * v16];
              v21 = v20[3];
              while (1)
              {
                v22 = v17 & v21;
                v23 = *&(*v20)[v22];
                v24 = ((v23 ^ v18) - 0x101010101010101) & ~(v23 ^ v18) & 0x8080808080808080;
                if (v24)
                {
                  break;
                }

LABEL_20:
                if ((v23 & (~v23 << 6) & 0x8080808080808080) != 0)
                {
                  v26 = sub_308DD4(v20, v15);
                  v36 = &v20[1][32 * v26];
                  *(v36 + 2) = 0;
                  *(v36 + 3) = 0;
                  *v36 = v10;
                  *(v36 + 1) = 0;
                  v25 = v20[1];
                  goto LABEL_31;
                }

                v19 += 8;
                v17 = v19 + v22;
              }

              v25 = v20[1];
              while (1)
              {
                v26 = (v22 + (__clz(__rbit64(v24)) >> 3)) & v21;
                v27 = &v25[32 * v26];
                if (__PAIR64__(*(v27 + 2), *v27) == __PAIR64__(WORD2(v10), v10) && v27[6] == BYTE6(v10))
                {
                  break;
                }

                v24 &= v24 - 1;
                if (!v24)
                {
                  goto LABEL_20;
                }
              }

LABEL_31:
              v37 = &v25[32 * v26];
              v39 = *(v37 + 2);
              v38 = *(v37 + 3);
              if (v39 < v38)
              {
                *v39 = v4;
                *(v39 + 1) = v7;
                v9 = (v39 + 8);
              }

              else
              {
                v40 = *(v37 + 1);
                v41 = v39 - v40;
                v42 = (v39 - v40) >> 3;
                v43 = v42 + 1;
                if ((v42 + 1) >> 61)
                {
                  sub_1794();
                }

                v44 = v38 - v40;
                if (v44 >> 2 > v43)
                {
                  v43 = v44 >> 2;
                }

                if (v44 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v45 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v45 = v43;
                }

                if (v45)
                {
                  if (!(v45 >> 61))
                  {
                    operator new();
                  }

                  goto LABEL_98;
                }

                v56 = (8 * v42);
                *v56 = v4;
                v56[1] = v7;
                v9 = 8 * v42 + 8;
                memcpy(0, v40, v41);
                *(v37 + 1) = 0;
                *(v37 + 2) = v9;
                *(v37 + 3) = 0;
                if (v40)
                {
                  operator delete(v40);
                }
              }

              *(v37 + 2) = v9;
            }

            else
            {
              v28 = &v84[6 * v16];
              v29 = v28[3];
              while (1)
              {
                v30 = v17 & v29;
                v31 = *&(*v28)[v30];
                v32 = ((v31 ^ v18) - 0x101010101010101) & ~(v31 ^ v18) & 0x8080808080808080;
                if (v32)
                {
                  break;
                }

LABEL_28:
                if ((v31 & (~v31 << 6) & 0x8080808080808080) != 0)
                {
                  v34 = sub_308DD4(v28, v15);
                  v46 = &v28[1][32 * v34];
                  *(v46 + 2) = 0;
                  *(v46 + 3) = 0;
                  *v46 = v10;
                  *(v46 + 1) = 0;
                  v33 = v28[1];
                  goto LABEL_42;
                }

                v19 += 8;
                v17 = v19 + v30;
              }

              v33 = v28[1];
              while (1)
              {
                v34 = (v30 + (__clz(__rbit64(v32)) >> 3)) & v29;
                v35 = &v33[32 * v34];
                if (__PAIR64__(*(v35 + 2), *v35) == __PAIR64__(WORD2(v10), v10) && v35[6] == BYTE6(v10))
                {
                  break;
                }

                v32 &= v32 - 1;
                if (!v32)
                {
                  goto LABEL_28;
                }
              }

LABEL_42:
              v47 = &v33[32 * v34];
              v49 = *(v47 + 2);
              v48 = *(v47 + 3);
              if (v49 >= v48)
              {
                v50 = *(v47 + 1);
                v51 = v49 - v50;
                v52 = (v49 - v50) >> 2;
                v53 = v52 + 1;
                if ((v52 + 1) >> 62)
                {
                  sub_1794();
                }

                v54 = v48 - v50;
                if (v54 >> 1 > v53)
                {
                  v53 = v54 >> 1;
                }

                if (v54 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v55 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v55 = v53;
                }

                if (v55)
                {
                  if (!(v55 >> 62))
                  {
                    operator new();
                  }

LABEL_98:
                  sub_1808();
                }

                v57 = (v49 - v50) >> 2;
                v58 = (4 * v52);
                v59 = (4 * v52 - 4 * v57);
                *v58 = v4;
                v60 = v58 + 1;
                memcpy(v59, v50, v51);
                *(v47 + 1) = v59;
                *(v47 + 2) = v60;
                *(v47 + 3) = 0;
                if (v50)
                {
                  operator delete(v50);
                }

                *(v47 + 2) = v60;
              }

              else
              {
                *v49 = v4;
                *(v47 + 2) = v49 + 4;
              }
            }

            ++v7;
          }

          while (v7 != v8);
        }
      }

      ++v4;
      v3 = v82;
    }

    while (v4 != v83);
  }

  v62 = *(v3 + 200);
  v61 = *(v3 + 208);
  if (*v62 <= -2)
  {
    v63 = *(v3 + 200);
    do
    {
      v64 = (__clz(__rbit64(((*v63 >> 7) & ~*v63 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v63 += v64;
      v61 += 32 * v64;
    }

    while (*v63 < -1);
    v65 = &v62[*(v3 + 224)];
    if (v63 != v65)
    {
      goto LABEL_62;
    }

LABEL_88:
    v66 = (v3 + 248);
    v78 = 6;
    v79 = v84;
    while (1)
    {
      v80 = *v66;
      v61 = v79[7];
      if (**v66 > -2)
      {
        v63 = *v66;
        v65 = &v79[9][v80];
        if (*v66 != v65)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v63 = *v66;
        do
        {
          v81 = (__clz(__rbit64(((*v63 >> 7) & ~*v63 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v63 += v81;
          v61 += 32 * v81;
        }

        while (*v63 < -1);
        v65 = &v79[9][v80];
        if (v63 != v65)
        {
          goto LABEL_63;
        }
      }

      v79 = &v84[v78];
      v78 += 6;
      v66 = &v84[v78];
      if (v78 == 96)
      {
        return;
      }
    }
  }

  v63 = *(v3 + 200);
  v77 = *(v3 + 224);
  v65 = &v62[v77];
  if (v62 == &v62[v77])
  {
    goto LABEL_88;
  }

LABEL_62:
  v66 = v84;
LABEL_63:
  v67 = *a2;
LABEL_64:
  while (2)
  {
    v68 = *(v61 + 1);
    v69 = *(v61 + 2);
    while (v68 != v69)
    {
LABEL_67:
      v70 = *v68;
      if (*(v67 + 40 * *v68) != 2)
      {
        while (1)
        {
          if (--v69 == v68)
          {
            goto LABEL_71;
          }

          if (*(v67 + 40 * *v69) == 2)
          {
            *v68++ = *v69;
            *v69 = v70;
            if (v69 != v68)
            {
              goto LABEL_67;
            }

            goto LABEL_71;
          }
        }
      }

      ++v68;
    }

LABEL_71:
    v71 = *++v63;
    v61 += 32;
    if (v71 <= -2)
    {
      do
      {
        v72 = (__clz(__rbit64(((*v63 >> 7) & ~*v63 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v63 += v72;
        v61 += 32 * v72;
      }

      while (*v63 < -1);
    }

    if (v63 != v65)
    {
      if (!v66)
      {
        return;
      }

      continue;
    }

    break;
  }

  v73 = v66 + 6;
  if (v66 + 6 != v85)
  {
    do
    {
      v74 = v73;
      v75 = v66[6];
      v61 = v66[7];
      if (*v75 > -2)
      {
        v63 = v66[6];
        v65 = &v66[9][v75];
        if (v63 != v65)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v63 = v66[6];
        do
        {
          v76 = (__clz(__rbit64(((*v63 >> 7) & ~*v63 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
          v63 += v76;
          v61 += 32 * v76;
        }

        while (*v63 < -1);
        v65 = &v66[9][v75];
        if (v63 != v65)
        {
LABEL_85:
          v66 = v74;
          if (!v74)
          {
            return;
          }

          goto LABEL_64;
        }
      }

      v73 = v74 + 6;
      v66 = v74;
    }

    while (v74 + 6 != v85);
  }
}

void sub_305200(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v101 = a2;
  v3 = *(a1 + 2512);
  v4 = *(a1 + 2504);
  while (v3 != v4)
  {
    v5 = *(v3 - 24);
    if (v5)
    {
      *(v3 - 16) = v5;
      operator delete(v5);
    }

    v3 -= 32;
  }

  *(v2 + 2512) = v4;
  v6 = *(v2 + 2536);
  v7 = *(v2 + 2528);
  while (v6 != v7)
  {
    v8 = *(v6 - 24);
    if (v8)
    {
      *(v6 - 16) = v8;
      operator delete(v8);
    }

    v6 -= 32;
  }

  *(v2 + 2536) = v7;
  sub_3079D0(v2 + 200, &v101, __p);
  if (__p[0])
  {
    sub_308C24(v2 + 200, &v101, __p);
    v9 = *(__p[3] + 1);
    if (*(**(v2 + 72) + 40 * *v9) == 2)
    {
      for (i = *(__p[3] + 2); v9 != i; ++v9)
      {
        v11 = **(v2 + 72) + 40 * *v9;
        if (*v11 != 2)
        {
          break;
        }

        v12 = *(v11 + 16);
        v13 = *(v11 + 24);
        if (v12 == v13)
        {
LABEL_21:
          memset(__p, 0, 32);
          if (&__p[1] != (v11 + 16))
          {
            sub_30945C(&__p[1], *(v11 + 16), *(v11 + 24), (*(v11 + 24) - *(v11 + 16)) >> 3);
          }

          v14 = sub_306994(v2, __p);
          __p[0] = v14;
          v15 = *(v2 + 2512);
          if (v15 < *(v2 + 2520))
          {
            *v15 = v14;
            v15[1] = 0;
            v15[2] = 0;
            v15[3] = 0;
            *(v15 + 1) = *&__p[1];
            v15[3] = __p[3];
            *(v2 + 2512) = v15 + 4;
          }

          else
          {
            v16 = sub_307744((v2 + 2504), __p);
            v17 = __p[1];
            *(v2 + 2512) = v16;
            if (v17)
            {
              __p[2] = v17;
              operator delete(v17);
            }
          }
        }

        else
        {
          while (sub_30E220(v2, *v12) != 5)
          {
            if (++v12 == v13)
            {
              goto LABEL_21;
            }
          }
        }
      }

      return;
    }
  }

  v18 = (v2 + 16);
  *(v2 + 24) = *(v2 + 16);
  *(v2 + 40) = 0;
  LODWORD(__p[0]) = 0;
  LODWORD(v97) = 0;
  v100 = 0;
  v99 = sub_30E780(v2, v101);
  v19 = sub_30E7F8(v2, v101);
  v98 = v19;
  v20 = *(v2 + 24);
  v87 = (v2 + 2504);
  if (v20 >= *(v2 + 32))
  {
    v21 = sub_3095BC(v2 + 16, &v101, __p, word_2290740, &v97, &v100, &v99, &v98);
  }

  else
  {
    sub_30DEB8(v20, v101, __p[0], 0x1FFF, v97, v100, v99, v19);
    v21 = v20 + 12;
    *(v2 + 24) = v20 + 12;
  }

  *(v2 + 24) = v21;
  v22 = *(v2 + 16);
  v23 = *(v2 + 40);
  if (0xAAAAAAAAAAAAAAABLL * ((v21 - v22) >> 2) != v23)
  {
    v86 = (v2 + 2528);
    v91 = v2;
    do
    {
      v32 = v22 + 12 * v23;
      v33 = *v32;
      LODWORD(v32) = *(v32 + 8);
      LODWORD(__p[1]) = v32;
      __p[0] = v33;
      *(v2 + 40) = v23 + 1;
      if ((~v32 & 0xFFF) == 0)
      {
        goto LABEL_49;
      }

      if (sub_30E0F0(v2, __p, 1))
      {
        goto LABEL_49;
      }

      v34 = sub_306BE8(v2, __p);
      if (v34 == 2)
      {
        goto LABEL_49;
      }

      if (LODWORD(__p[0]) == v101)
      {
        v35 = v87;
        if (WORD2(__p[0]) == WORD2(v101))
        {
          v36 = BYTE6(__p[0]) != BYTE6(v101);
          if (!v34)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v36 = 1;
          if (!v34)
          {
LABEL_60:
            if (v36)
            {
              if (sub_30DF2C(v2, __p, 0))
              {
                v31 = v86;
              }

              else
              {
                v31 = v35;
              }

              sub_306E8C(v2, v30, v31);
              goto LABEL_49;
            }
          }
        }
      }

      else
      {
        v36 = 1;
        v35 = v87;
        if (!v34)
        {
          goto LABEL_60;
        }
      }

      sub_30D444(v2 + 80, __p[0], *(v2 + 8), (v2 + 2552));
      v37 = *(v2 + 2552);
      v89 = *(v2 + 2560);
      if (v37 != v89)
      {
        v88 = v23;
        do
        {
          v38 = __p[1] & 0xFFF;
          v39 = (LODWORD(__p[1]) >> 25) & 3;
          v40 = sub_30E220(v2, __p[0]);
          v41 = LODWORD(__p[1]) >> 30;
          v95 = LODWORD(__p[1]) >> 31;
          v96 = (LODWORD(__p[1]) >> 27) & 7;
          v43 = *v37;
          v42 = *(v37 + 8);
          v90 = v37;
          if (v42 - 16 == *v37)
          {
            v94 = v40;
            LOWORD(v46) = v23;
          }

          else
          {
            v44 = v23;
            v45 = (v43 + 1);
            LOWORD(v46) = v44;
            do
            {
              v47 = v40;
              v48 = sub_2B51D8(*v2, *v45 | (*(v45 + 2) << 32));
              v49 = (v48 - *v48);
              if (*v49 < 9u)
              {
                LODWORD(v50) = 0;
              }

              else
              {
                v50 = v49[4];
                if (v50)
                {
                  LODWORD(v50) = *(v48 + v50);
                }
              }

              v51 = v50 % 0x64 > 0x31;
              v52 = v50 / 0x64 + v38;
              if (v51)
              {
                ++v52;
              }

              v92 = v52;
              v94 = sub_30E220(v2, *v45);
              if (v47 != v94)
              {
                ++v39;
              }

              v53 = v2;
              v54 = v96 + sub_30E438(v2, *v43, *v45);
              v55 = v41 | sub_30E780(v53, *v45);
              v56 = v95 | sub_30E7F8(v53, *v45);
              v58 = *(v53 + 24);
              v57 = *(v53 + 32);
              LOBYTE(v95) = v56;
              v96 = v54;
              if (v58 >= v57)
              {
                v63 = v18;
                v64 = *v18;
                v65 = 0xAAAAAAAAAAAAAAABLL * ((v58 - *v18) >> 2);
                v66 = v65 + 1;
                if (v65 + 1 > 0x1555555555555555)
                {
                  sub_1794();
                }

                v59 = v39;
                v61 = v55;
                v67 = 0xAAAAAAAAAAAAAAABLL * ((v57 - v64) >> 2);
                if (2 * v67 > v66)
                {
                  v66 = 2 * v67;
                }

                if (v67 >= 0xAAAAAAAAAAAAAAALL)
                {
                  v68 = 0x1555555555555555;
                }

                else
                {
                  v68 = v66;
                }

                v2 = v91;
                if (v68)
                {
                  if (v68 <= 0x1555555555555555)
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v69 = sub_30DEB8(12 * v65, *v45, 4095, v46, v59, v96, v61 & 1, v95 & 1);
                v62 = v69 + 12;
                v70 = v91[2];
                v71 = v91[3] - v70;
                v72 = v69 - v71;
                memcpy((v69 - v71), v70, v71);
                v91[2] = v72;
                v91[3] = v62;
                v91[4] = 0;
                if (v70)
                {
                  operator delete(v70);
                }

                v18 = v63;
                v37 = v90;
              }

              else
              {
                v59 = v39;
                v60 = v39;
                v61 = v55;
                sub_30DEB8(v58, *v45, 4095, v46, v60, v54, v55 & 1, v56 & 1);
                v62 = v58 + 12;
                v2 = v91;
                v91[3] = v58 + 12;
              }

              *(v2 + 24) = v62;
              v46 = -1 - 21845 * ((v62 - *(v2 + 16)) >> 2);
              v45 += 2;
              v42 = *(v37 + 8);
              ++v43;
              v41 = v61;
              v39 = v59;
              v38 = v92;
              v40 = v94;
            }

            while (v45 != (v42 - 8));
            LOWORD(v23) = v88;
          }

          v73 = sub_2B51D8(*v2, *(v42 - 8) | (*(v42 - 4) << 32));
          v74 = (v73 - *v73);
          v93 = v41;
          if (*v74 >= 9u && (v75 = v74[4]) != 0)
          {
            v76 = *(v73 + v75);
            v77 = sub_30E220(v91, *(*(v37 + 8) - 8));
            if (v77 != 5)
            {
              goto LABEL_97;
            }
          }

          else
          {
            v76 = 0;
            v77 = sub_30E220(v91, *(*(v37 + 8) - 8));
            if (v77 != 5)
            {
LABEL_97:
              v78 = v77;
              if (v76 % 0x64 <= 0x31)
              {
                v79 = v76 / 0x64 + v38;
              }

              else
              {
                v79 = v76 / 0x64 + v38 + 1;
              }

              v80 = v96 + sub_30E438(v91, *(*(v37 + 8) - 16), *(*(v37 + 8) - 8));
              v81 = v94 == v78;
              v82 = v37;
              if (v81)
              {
                v83 = v39;
              }

              else
              {
                v83 = v39 + 1;
              }

              v84 = sub_30E780(v91, *(*(v82 + 8) - 8));
              v85 = sub_30E7F8(v91, *(*(v82 + 8) - 8));
              sub_30DEB8(&v97, *(*(v82 + 8) - 8), v79, v46, v83, v80, (v93 | v84) & 1, (v95 | v85) & 1);
              if ((sub_30DF2C(v91, &v97, 1) & 1) == 0)
              {
                sub_3071B0(v18, &v97);
              }

              v37 = v90;
            }
          }

          v37 += 24;
          v2 = v91;
        }

        while (v37 != v89);
      }

LABEL_49:
      v22 = *(v2 + 16);
      v23 = *(v2 + 40);
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(v2 + 24) - v22) >> 2) != v23);
  }

  v24 = *(v2 + 2528);
  v25 = *(v2 + 2536);
  if (v24 != v25)
  {
    v26 = *(v2 + 2512);
    do
    {
      v27 = *v87;
      if (*v87 == v26)
      {
LABEL_41:
        if (v26 >= *(v2 + 2520))
        {
          v26 = sub_307744(v87, v24);
        }

        else
        {
          *v26 = *v24;
          v26[1] = 0;
          v26[2] = 0;
          v26[3] = 0;
          *(v26 + 1) = *(v24 + 8);
          v26[3] = *(v24 + 24);
          *(v24 + 8) = 0;
          *(v24 + 16) = 0;
          *(v24 + 24) = 0;
          v26 += 4;
        }

        *(v2 + 2512) = v26;
      }

      else
      {
        v28 = *(*(v24 + 16) - 8);
        while (1)
        {
          v29 = *(v27 + 16);
          if (__PAIR64__(*(v29 - 4), *(v29 - 8)) == __PAIR64__(WORD2(v28), v28) && *(v29 - 2) == BYTE6(v28))
          {
            break;
          }

          v27 += 32;
          if (v27 == v26)
          {
            goto LABEL_41;
          }
        }
      }

      v24 += 32;
    }

    while (v24 != v25);
  }
}

void sub_305AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_305B24(uint64_t *a1, uint64_t a2)
{
  sub_3072FC(a1, a2);
  v3 = a1[313];
  v123 = a1[314];
  if (v3 == v123)
  {
    return 1;
  }

  v4 = (a1 + 217);
  while (1)
  {
    v6 = v3[1];
    v5 = v3[2];
    v7 = v5 - v6 == 16 && (*v3 & 0x14) == 0;
    if (!v7 && v6 != v5)
    {
      break;
    }

LABEL_3:
    v3 += 4;
    if (v3 == v123)
    {
      return 1;
    }
  }

  v124 = (*v3 >> 3) & 2;
  while (1)
  {
    v10 = v6 + 1;
    if (v5 != v6 + 1)
    {
      break;
    }

    LOBYTE(v125) = -1;
    if (v5 - v10 >= 9)
    {
      goto LABEL_25;
    }

LABEL_22:
    v17 = 0;
LABEL_38:
    v36 = v3[1];
    if (v6 == v36)
    {
      v37 = v6;
    }

    else
    {
      v37 = v6 - 1;
    }

    if (v6 == v37)
    {
      LOBYTE(v45) = -1;
      if (v37 - v36 >= 1)
      {
        goto LABEL_55;
      }

LABEL_49:
      LOWORD(v46) = 0;
      if (v6 == v36)
      {
        goto LABEL_50;
      }

LABEL_69:
      if (v6 == (v3[2] - 8))
      {
        sub_309734(v4, v6, &v128);
        v73 = v131;
        v74 = v131[5];
        v75 = v131[6];
        if (v74 >= v75)
        {
          v88 = v131[4];
          v89 = v74 - v88;
          v90 = (v74 - v88) >> 2;
          v91 = v90 + 1;
          if ((v90 + 1) >> 62)
          {
            goto LABEL_159;
          }

          v92 = v75 - v88;
          if (v92 >> 1 > v91)
          {
            v91 = v92 >> 1;
          }

          if (v92 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v93 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v93 = v91;
          }

          if (v93)
          {
            if (!(v93 >> 62))
            {
              operator new();
            }

            goto LABEL_160;
          }

          v110 = 4 * v90;
          *v110 = v46;
          *(v110 + 2) = v45;
          *(v110 + 3) = v124;
          v111 = 4 * v90 + 4;
          memcpy(0, v88, v89);
          v73[4] = 0;
          v73[5] = v111;
          v73[6] = 0;
          if (v88)
          {
            operator delete(v88);
          }

          v73[5] = v111;
          v4 = (a1 + 217);
          ++v6;
          v5 = v3[2];
          if (v6 == v5)
          {
            goto LABEL_3;
          }
        }

        else
        {
          *v74 = v46;
          *(v74 + 2) = v45;
          *(v74 + 3) = v124;
          v73[5] = v74 + 4;
          v4 = (a1 + 217);
          ++v6;
          v5 = v3[2];
          if (v6 == v5)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_309734(v4, v6, &v128);
        v69 = v131;
        v70 = v131[8];
        v71 = v131[9];
        if (v70 >= v71)
        {
          v76 = v131[7];
          v77 = v70 - v76;
          v78 = (v70 - v76) >> 2;
          v79 = v78 + 1;
          if ((v78 + 1) >> 62)
          {
            goto LABEL_159;
          }

          v80 = v71 - v76;
          if (v80 >> 1 > v79)
          {
            v79 = v80 >> 1;
          }

          if (v80 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v81 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v81 = v79;
          }

          if (v81)
          {
            if (!(v81 >> 62))
            {
              operator new();
            }

            goto LABEL_160;
          }

          v94 = v78;
          v95 = 4 * v78;
          *v95 = v17;
          *(v95 + 2) = v125;
          *(v95 + 3) = v124;
          v72 = 4 * v78 + 4;
          v96 = (v95 - 4 * v94);
          memcpy(v96, v76, v77);
          v69[7] = v96;
          v69[8] = v72;
          v69[9] = 0;
          if (v76)
          {
            operator delete(v76);
          }
        }

        else
        {
          *v70 = v17;
          *(v70 + 2) = v125;
          v72 = v70 + 4;
          *(v70 + 3) = v124;
        }

        v69[8] = v72;
        sub_309734((a1 + 217), v6, &v128);
        v97 = v131;
        v98 = v131[11];
        v99 = v131[12];
        if (v98 < v99)
        {
          *v98 = v46;
          *(v98 + 2) = v45;
          v9 = v98 + 4;
          *(v98 + 3) = v124;
        }

        else
        {
          v100 = v131[10];
          v101 = v98 - v100;
          v102 = (v98 - v100) >> 2;
          v103 = v102 + 1;
          if ((v102 + 1) >> 62)
          {
LABEL_159:
            sub_1794();
          }

          v104 = v99 - v100;
          if (v104 >> 1 > v103)
          {
            v103 = v104 >> 1;
          }

          if (v104 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v105 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v105 = v103;
          }

          if (v105)
          {
            if (!(v105 >> 62))
            {
              operator new();
            }

            goto LABEL_160;
          }

          v106 = 4 * v102;
          *v106 = v46;
          *(v106 + 2) = v45;
          *(v106 + 3) = v124;
          v9 = 4 * v102 + 4;
          memcpy(0, v100, v101);
          v97[10] = 0;
          v97[11] = v9;
          v97[12] = 0;
          if (v100)
          {
            operator delete(v100);
          }
        }

        v97[11] = v9;
        v4 = (a1 + 217);
        ++v6;
        v5 = v3[2];
        if (v6 == v5)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      v38 = *v37;
      v39 = *v37 & 0xFF000000000000;
      v40 = *a1;
      v41 = sub_2B4EDC(*a1, *v37 & 0xFFFFFFFFFFFFLL, v39 == 0);
      sub_2B365C(v40, v41, 0, a1 + 6);
      v42 = a1[6];
      v43 = a1[7];
      if (v42 == v43)
      {
        v44 = a1[6];
      }

      else
      {
        v44 = a1[6];
        while (__PAIR64__(*(v44 + 4), *v44) != __PAIR64__(WORD2(v38), v38) || *(v44 + 6) != (v39 == 0))
        {
          v44 += 8;
          if (v44 == v43)
          {
            v44 = a1[7];
            break;
          }
        }
      }

      v45 = (v44 - v42) >> 3;
      v36 = v3[1];
      if (v37 - v36 < 1)
      {
        goto LABEL_49;
      }

LABEL_55:
      v51 = 0;
      v52 = *v37;
      v53 = (*v37 >> 16) & 0xFFFF0000 | (*v37 << 32);
      if ((*v37 & 0xFF000000000000) != 0)
      {
        v54 = (*v37 >> 16) & 0xFFFF0000 | (*v37 << 32);
      }

      else
      {
        v54 = v53 + 1;
      }

      v55 = ((0x2127599BF4325C37 * (v54 ^ (v53 >> 23))) ^ ~((0x2127599BF4325C37 * (v54 ^ (v53 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v54 ^ (v53 >> 23))) ^ ((0x2127599BF4325C37 * (v54 ^ (v53 >> 23))) >> 47)) << 21);
      v56 = 21 * ((265 * (v55 ^ (v55 >> 24))) ^ ((265 * (v55 ^ (v55 >> 24))) >> 14));
      v57 = 2147483649u * (v56 ^ (v56 >> 28));
      v58 = (v4 + 48 * (((((v56 ^ (v56 >> 28)) >> 8) ^ ((-2147483647 * (v56 ^ (v56 >> 28))) >> 16)) ^ ((-2147483647 * (v56 ^ (v56 >> 28))) >> 24)) & 0xF));
      v59 = v57 >> 7;
      v60 = v58[3];
      while (1)
      {
        v61 = v59 & v60;
        v62 = *(*v58 + v61);
        v63 = ((v62 ^ (0x101010101010101 * (v57 & 0x7F))) - 0x101010101010101) & ~(v62 ^ (0x101010101010101 * (v57 & 0x7F))) & 0x8080808080808080;
        if (v63)
        {
          break;
        }

LABEL_64:
        if ((v62 & (~v62 << 6) & 0x8080808080808080) != 0)
        {
          v65 = sub_309908(v58, v57);
          v67 = v58[1] + 104 * v65;
          *v67 = *v37;
          *(v67 + 8) = 0u;
          *(v67 + 24) = 0u;
          *(v67 + 40) = 0u;
          *(v67 + 56) = 0u;
          *(v67 + 72) = 0u;
          *(v67 + 88) = 0u;
          v64 = v58[1];
          goto LABEL_67;
        }

        v51 += 8;
        v59 = v51 + v61;
      }

      v64 = v58[1];
      while (1)
      {
        v65 = (v61 + (__clz(__rbit64(v63)) >> 3)) & v60;
        v66 = v64 + 104 * v65;
        if (__PAIR64__(*(v66 + 4), *v66) == __PAIR64__(WORD2(v52), v52) && *(v66 + 6) == BYTE6(v52))
        {
          break;
        }

        v63 &= v63 - 1;
        if (!v63)
        {
          goto LABEL_64;
        }
      }

LABEL_67:
      v68 = *(v64 + 104 * v65 + 88) - *(v64 + 104 * v65 + 80);
      if ((v68 >> 2) >> 16)
      {
        result = sub_7E7E4(3u);
        if (!result)
        {
          return result;
        }

        sub_19594F8(&v128);
        v113 = sub_4A5C(&v128, "Road ", 5);
        v114 = sub_30E900(v113, *v37);
        sub_4A5C(v114, " would exceed the maximum number of supported arc edits (", 57);
        v115 = std::ostream::operator<<();
        sub_4A5C(v115, ").", 2);
        if ((v138 & 0x10) != 0)
        {
          v120 = v137;
          if (v137 < v134)
          {
            v137 = v134;
            v120 = v134;
          }

          v121 = v133;
          v116 = v120 - v133;
          if (v120 - v133 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_156;
          }
        }

        else
        {
          if ((v138 & 8) == 0)
          {
            v116 = 0;
            v127 = 0;
            goto LABEL_149;
          }

          v121 = v131;
          v116 = v132 - v131;
          if ((v132 - v131) > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_156:
            sub_3244();
          }
        }

        if (v116 >= 0x17)
        {
          operator new();
        }

        v127 = v116;
        if (!v116)
        {
          goto LABEL_149;
        }

LABEL_148:
        memmove(&__dst, v121, v116);
        goto LABEL_149;
      }

      v46 = v68 >> 2;
      if (v6 != v3[1])
      {
        goto LABEL_69;
      }

LABEL_50:
      sub_309734(v4, v6, &v128);
      v47 = v131;
      v48 = v131[2];
      v49 = v131[3];
      if (v48 >= v49)
      {
        v82 = v131[1];
        v83 = v48 - v82;
        v84 = (v48 - v82) >> 2;
        v85 = v84 + 1;
        if ((v84 + 1) >> 62)
        {
          goto LABEL_159;
        }

        v86 = v49 - v82;
        if (v86 >> 1 > v85)
        {
          v85 = v86 >> 1;
        }

        if (v86 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v87 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v87 = v85;
        }

        if (v87)
        {
          if (!(v87 >> 62))
          {
            operator new();
          }

LABEL_160:
          sub_1808();
        }

        v107 = v84;
        v108 = 4 * v84;
        *v108 = v17;
        *(v108 + 2) = v125;
        *(v108 + 3) = v124;
        v50 = 4 * v84 + 4;
        v109 = (v108 - 4 * v107);
        memcpy(v109, v82, v83);
        v47[1] = v109;
        v47[2] = v50;
        v47[3] = 0;
        if (v82)
        {
          operator delete(v82);
        }
      }

      else
      {
        *v48 = v17;
        *(v48 + 2) = v125;
        v50 = v48 + 4;
        *(v48 + 3) = v124;
      }

      v47[2] = v50;
      ++v6;
      v5 = v3[2];
      if (v6 == v5)
      {
        goto LABEL_3;
      }
    }
  }

  v11 = v6[1];
  v12 = *a1;
  v13 = sub_2B4EDC(*a1, *v6 & 0xFFFFFFFFFFFFLL, (*v6 & 0xFF000000000000) == 0);
  sub_2B365C(v12, v13, 0, a1 + 6);
  v14 = a1[6];
  v15 = a1[7];
  v16 = v14;
  if (v14 != v15)
  {
    while (__PAIR64__(*(v16 + 4), *v16) != __PAIR64__(WORD2(v11), v11) || *(v16 + 6) != BYTE6(v11))
    {
      v16 += 8;
      if (v16 == v15)
      {
        v16 = a1[7];
        break;
      }
    }
  }

  v125 = (v16 - v14) >> 3;
  if ((v3[2] - v10) < 9)
  {
    goto LABEL_22;
  }

LABEL_25:
  v18 = 0;
  v19 = *v10;
  v20 = (*v10 >> 16) & 0xFFFF0000 | (*v10 << 32);
  if ((*v10 & 0xFF000000000000) != 0)
  {
    v21 = (*v10 >> 16) & 0xFFFF0000 | (*v10 << 32);
  }

  else
  {
    v21 = v20 + 1;
  }

  v22 = ((0x2127599BF4325C37 * (v21 ^ (v20 >> 23))) ^ ~((0x2127599BF4325C37 * (v21 ^ (v20 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v21 ^ (v20 >> 23))) ^ ((0x2127599BF4325C37 * (v21 ^ (v20 >> 23))) >> 47)) << 21);
  v23 = 21 * ((265 * (v22 ^ (v22 >> 24))) ^ ((265 * (v22 ^ (v22 >> 24))) >> 14));
  v24 = 2147483649u * (v23 ^ (v23 >> 28));
  v25 = (v4 + 48 * (((((v23 ^ (v23 >> 28)) >> 8) ^ ((-2147483647 * (v23 ^ (v23 >> 28))) >> 16)) ^ ((-2147483647 * (v23 ^ (v23 >> 28))) >> 24)) & 0xF));
  v26 = v24 >> 7;
  v27 = v25[3];
  while (1)
  {
    v28 = v26 & v27;
    v29 = *(*v25 + v28);
    v30 = ((v29 ^ (0x101010101010101 * (v24 & 0x7F))) - 0x101010101010101) & ~(v29 ^ (0x101010101010101 * (v24 & 0x7F))) & 0x8080808080808080;
    if (v30)
    {
      break;
    }

LABEL_34:
    if ((v29 & (~v29 << 6) & 0x8080808080808080) != 0)
    {
      v32 = sub_309908(v25, v24);
      v34 = v25[1] + 104 * v32;
      *v34 = *v10;
      *(v34 + 8) = 0u;
      *(v34 + 24) = 0u;
      *(v34 + 40) = 0u;
      *(v34 + 56) = 0u;
      *(v34 + 72) = 0u;
      *(v34 + 88) = 0u;
      v31 = v25[1];
      goto LABEL_37;
    }

    v18 += 8;
    v26 = v18 + v28;
  }

  v31 = v25[1];
  while (1)
  {
    v32 = (v28 + (__clz(__rbit64(v30)) >> 3)) & v27;
    v33 = v31 + 104 * v32;
    if (__PAIR64__(*(v33 + 4), *v33) == __PAIR64__(WORD2(v19), v19) && *(v33 + 6) == BYTE6(v19))
    {
      break;
    }

    v30 &= v30 - 1;
    if (!v30)
    {
      goto LABEL_34;
    }
  }

LABEL_37:
  v35 = (*(v31 + 104 * v32 + 64) - *(v31 + 104 * v32 + 56)) >> 2;
  v17 = v35 + 1;
  if ((v35 + 1) < 0x10000)
  {
    goto LABEL_38;
  }

  result = sub_7E7E4(3u);
  if (!result)
  {
    return result;
  }

  sub_19594F8(&v128);
  v117 = sub_4A5C(&v128, "Road ", 5);
  v118 = sub_30E900(v117, *v10);
  sub_4A5C(v118, " would exceed the maximum number of supported arc edits (", 57);
  v119 = std::ostream::operator<<();
  sub_4A5C(v119, ").", 2);
  if ((v138 & 0x10) != 0)
  {
    v122 = v137;
    if (v137 < v134)
    {
      v137 = v134;
      v122 = v134;
    }

    v121 = v133;
    v116 = v122 - v133;
    if (v122 - v133 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_158;
    }
  }

  else
  {
    if ((v138 & 8) == 0)
    {
      v116 = 0;
      v127 = 0;
      goto LABEL_149;
    }

    v121 = v131;
    v116 = v132 - v131;
    if ((v132 - v131) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_158:
      sub_3244();
    }
  }

  if (v116 >= 0x17)
  {
    operator new();
  }

  v127 = v116;
  if (v116)
  {
    goto LABEL_148;
  }

LABEL_149:
  *(&__dst + v116) = 0;
  sub_7E854(&__dst, 3u);
  if (v127 < 0)
  {
    operator delete(__dst);
  }

  if (v136 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v130);
  std::ostream::~ostream();
  std::ios::~ios();
  return 0;
}

void sub_30686C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_1959728(&a20);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a20);
  _Unwind_Resume(a1);
}

void sub_3068EC(uint64_t a1)
{
  sub_308AEC(a1);
  sub_308AEC(a1 + 48);
  sub_308AEC(a1 + 96);
  sub_308AEC(a1 + 144);
  sub_308AEC(a1 + 192);
  sub_308AEC(a1 + 240);
  sub_308AEC(a1 + 288);
  sub_308AEC(a1 + 336);
  sub_308AEC(a1 + 384);
  sub_308AEC(a1 + 432);
  sub_308AEC(a1 + 480);
  sub_308AEC(a1 + 528);
  sub_308AEC(a1 + 576);
  sub_308AEC(a1 + 624);
  sub_308AEC(a1 + 672);

  sub_308AEC(a1 + 720);
}

uint64_t sub_306994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  do
  {
    sub_3079D0(a1 + 200, v2, v15);
    if (v15[0])
    {
      sub_3079D0(a1 + 200, v2, v15);
      if (!v15[0])
      {
        std::logic_error::logic_error(&v17, "phmap at(): lookup non-existent key");
        sub_30A064(&v17);
      }

      v5 = *(v16 + 8);
      v6 = *(v16 + 16);
      if (v5 != v6)
      {
        if (v2 == *(a2 + 16))
        {
          do
          {
            v12 = **(a1 + 72) + 40 * *v5;
            if (*(v12 + 16) == *(v12 + 24))
            {
              v14 |= 1 << *v12;
            }

            ++v5;
          }

          while (v5 != v6);
        }

        else
        {
          do
          {
            v7 = **(a1 + 72) + 40 * *v5;
            v8 = *(v7 + 16);
            if (v2 == *(a2 + 16))
            {
              LOBYTE(v9) = 0;
            }

            else
            {
              v9 = 0;
              v10 = v2;
              while (v8 != *(v7 + 24))
              {
                v9 |= 1 << sub_30E220(a1, *v10);
                if (__PAIR64__(*(v10 + 2), *v10) == __PAIR64__(WORD2(*v8), *v8) && *(v10 + 6) == BYTE6(*v8))
                {
                  ++v10;
                  ++v8;
                  if (v10 == *(a2 + 16))
                  {
                    break;
                  }
                }

                else
                {
                  if (!sub_30E56C(a1, *v10))
                  {
                    break;
                  }

                  if (++v10 == *(a2 + 16))
                  {
                    break;
                  }
                }
              }
            }

            if (v8 == *(v7 + 24) && (v9 & 4) == 0)
            {
              v14 |= 1 << *v7;
            }

            ++v5;
          }

          while (v5 != v6);
        }
      }
    }

    ++v2;
  }

  while (v2 != *(a2 + 16));
  return v14;
}

uint64_t sub_306BE8(uint64_t a1, uint64_t *a2)
{
  sub_3079D0(a1 + 968, a2, v17);
  if (!v17[0])
  {
    return 0;
  }

  sub_3079D0(a1 + 968, a2, v17);
  if (!v17[0])
  {
    std::logic_error::logic_error(&v19, "phmap at(): lookup non-existent key");
    sub_30A064(&v19);
  }

  v4 = *(v18 + 8);
  v5 = *(v18 + 16);
  if (v4 == v5)
  {
    return 0;
  }

  v15 = *(v18 + 16);
  v16 = a2;
  v14 = a2 + 1;
  while (2)
  {
    v7 = **(a1 + 72) + 40 * *v4;
    if ((*v7 & 0xFB) != 0)
    {
      goto LABEL_9;
    }

    v8 = (*(v7 + 16) + 8 * v4[1]);
    v9 = v14;
    if ((~*v14 & 0x1FFF000) != 0)
    {
      v10 = 0;
      v11 = v16;
      do
      {
        if (v8 == *(v7 + 16))
        {
          break;
        }

        v10 |= 1 << sub_30E220(a1, *v11);
        if (__PAIR64__(*(v11 + 2), *v11) == __PAIR64__(WORD2(*v8), *v8) && *(v11 + 6) == BYTE6(*v8))
        {
          --v8;
        }

        else if (!sub_30E56C(a1, *v11))
        {
          break;
        }

        v11 = (*(a1 + 16) + 12 * ((*v9 >> 12) & 0x1FFF));
        v9 = v11 + 1;
      }

      while ((~*(v11 + 2) & 0x1FFF000) != 0);
    }

    else
    {
      v10 = 0;
      v11 = v16;
    }

    v5 = v15;
    if (v8 != *(v7 + 16))
    {
      goto LABEL_9;
    }

    while (1)
    {
      v12 = *v8;
      if (__PAIR64__(*(v11 + 2), *v11) == __PAIR64__(WORD2(*v8), *v8))
      {
        break;
      }

      if ((~*(v11 + 2) & 0x1FFF000) == 0)
      {
        goto LABEL_9;
      }

LABEL_16:
      v10 |= 1 << sub_30E220(a1, *v11);
      v11 = (*(a1 + 16) + 12 * ((*(v11 + 2) >> 12) & 0x1FFF));
    }

    if (*(v11 + 6) != BYTE6(v12) && (~*(v11 + 2) & 0x1FFF000) != 0)
    {
      goto LABEL_16;
    }

    if (*(v11 + 6) != BYTE6(v12) || (v10 & 4) != 0)
    {
LABEL_9:
      v4 += 2;
      if (v4 == v5)
      {
        return 0;
      }

      continue;
    }

    break;
  }

  if (((*(v7 + 24) - *(v7 + 16)) >> 3) - 1 == v4[1])
  {
    return 2 * (*v7 == 0);
  }

  else
  {
    return 1;
  }
}

void sub_306E8C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  memset(__p, 0, sizeof(__p));
  v4 = *(a1 + 16) + 12 * *(a1 + 40);
  v6 = *(v4 - 4);
  v5 = (v4 - 4);
  v7 = (v5 - 2);
  if ((~v6 & 0x1FFF000) != 0)
  {
    v8 = 0;
    do
    {
      if (v8 < __p[3])
      {
        *v8 = *v7;
        v8 += 8;
      }

      else
      {
        v10 = __p[1];
        v11 = v8 - __p[1];
        v12 = (v8 - __p[1]) >> 3;
        v13 = v12 + 1;
        if ((v12 + 1) >> 61)
        {
          goto LABEL_47;
        }

        v14 = __p[3] - __p[1];
        if ((__p[3] - __p[1]) >> 2 > v13)
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

LABEL_48:
          sub_1808();
        }

        v16 = (8 * v12);
        *v16 = *v7;
        v8 = (v16 + 1);
        memcpy(0, v10, v11);
        __p[1] = 0;
        __p[3] = 0;
        if (v10)
        {
          operator delete(v10);
        }
      }

      __p[2] = v8;
      v7 = *(a1 + 16) + 12 * ((*v5 >> 12) & 0x1FFF);
      v5 = (v7 + 8);
    }

    while ((~*(v7 + 8) & 0x1FFF000) != 0);
    v9 = __p[3];
    if (v8 < __p[3])
    {
      *v8 = *v7;
      v17 = v8 + 8;
      v18 = __p[1];
      v19 = a3;
      goto LABEL_31;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v20 = __p[1];
  v21 = v8 - __p[1];
  v22 = (v8 - __p[1]) >> 3;
  v23 = v22 + 1;
  if ((v22 + 1) >> 61)
  {
LABEL_47:
    sub_1794();
  }

  v24 = v9 - __p[1];
  if (v24 >> 2 > v23)
  {
    v23 = v24 >> 2;
  }

  if (v24 >= 0x7FFFFFFFFFFFFFF8)
  {
    v25 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v25 = v23;
  }

  if (v25)
  {
    if (!(v25 >> 61))
    {
      operator new();
    }

    goto LABEL_48;
  }

  v18 = 0;
  v19 = a3;
  *(8 * v22) = *v7;
  v17 = (8 * v22 + 8);
  memcpy(0, v20, v21);
  __p[1] = 0;
  *&__p[2] = v17;
  if (v20)
  {
    operator delete(v20);
  }

LABEL_31:
  __p[2] = v17;
  v26 = v17 - 8;
  if (v18 != v17 && v26 > v18)
  {
    v28 = v18 + 8;
    do
    {
      v29 = *(v28 - 1);
      v30 = *v26;
      *(v28 - 5) = *(v26 + 3);
      *(v28 - 2) = v30;
      *v26 = v29;
      v26[6] = BYTE6(v29);
      *(v26 + 2) = WORD2(v29);
      v26 -= 8;
      v31 = v28 >= v26;
      v28 += 8;
    }

    while (!v31);
  }

  v32 = sub_306994(a1, __p);
  __p[0] = v32;
  if ((v32 & 1) == 0)
  {
    v33 = v19[1];
    if (v33 >= v19[2])
    {
      v34 = sub_307744(v19, __p);
    }

    else
    {
      *v33 = v32;
      v33[1] = 0;
      v33[2] = 0;
      v33[3] = 0;
      *(v33 + 1) = *&__p[1];
      v33[3] = __p[3];
      memset(&__p[1], 0, 24);
      v34 = (v33 + 4);
    }

    v19[1] = v34;
  }

  if (__p[1])
  {
    __p[2] = __p[1];
    operator delete(__p[1]);
  }
}

void sub_30718C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3071B0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 8) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 12;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
  v9 = v8 + 1;
  if (v8 + 1 > 0x1555555555555555)
  {
    sub_1794();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0xAAAAAAAAAAAAAAALL)
  {
    v11 = 0x1555555555555555;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 4 * ((v3 - *a1) >> 2);
  *v12 = *a2;
  *(v12 + 8) = *(a2 + 2);
  v6 = 12 * v8 + 12;
  v13 = 12 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void sub_3072FC(uint64_t *a1, uint64_t a2)
{
  v40 = a2;
  v3 = *a1;
  v4 = a2 & 0xFFFFFFFFFFFFLL;
  v5 = sub_2B4EDC(*a1, a2 & 0xFFFFFFFFFFFFLL, (a2 & 0xFF000000000000) == 0);
  sub_2B365C(v3, v5, 0, a1 + 6);
  v6 = a1[6];
  v7 = a1[7];
  v8 = v6;
  if (v6 != v7)
  {
    while ((*v8 & 0xFFFFFFFFFFFFLL) != v4)
    {
      v8 += 8;
      if (v8 == v7)
      {
        v8 = a1[7];
        break;
      }
    }
  }

  v9 = v7 - v6;
  if ((v9 & 0x7F8) != 0)
  {
    v10 = 0;
    v11 = v8 - v6;
    v12 = (v9 >> 3);
    do
    {
      v39 = *(a1[6] + 8 * v10);
      if (sub_30E220(a1, v39) != 5)
      {
        v14 = a1[313];
        v15 = a1[314];
        if (v14 == v15)
        {
LABEL_19:
          sub_309734((a1 + 217), &v40, v41);
          v18 = v42;
          v19 = v42[2];
          v20 = v42[3];
          if (v19 >= v20)
          {
            v22 = v42[1];
            v23 = v19 - v22;
            v24 = (v19 - v22) >> 2;
            v25 = v24 + 1;
            if ((v24 + 1) >> 62)
            {
              goto LABEL_45;
            }

            v26 = v20 - v22;
            if (v26 >> 1 > v25)
            {
              v25 = v26 >> 1;
            }

            if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v27 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v27 = v25;
            }

            if (v27)
            {
              if (!(v27 >> 62))
              {
                operator new();
              }

LABEL_46:
              sub_1808();
            }

            v28 = 4 * v24;
            *v28 = -1;
            *(v28 + 2) = v10;
            *(v28 + 3) = 1;
            v21 = 4 * v24 + 4;
            memcpy(0, v22, v23);
            v18[1] = 0;
            v18[2] = v21;
            v18[3] = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            *v19 = -1;
            *(v19 + 2) = v10;
            v21 = v19 + 4;
            *(v19 + 3) = 1;
          }

          v18[2] = v21;
          sub_309734((a1 + 217), &v39, v41);
          v29 = v42;
          v30 = v42[5];
          v31 = v42[6];
          if (v30 < v31)
          {
            *v30 = -1;
            *(v30 + 2) = v11 >> 3;
            *(v30 + 3) = 1;
            v13 = v30 + 4;
          }

          else
          {
            v32 = v42[4];
            v33 = v30 - v32;
            v34 = (v30 - v32) >> 2;
            v35 = v34 + 1;
            if ((v34 + 1) >> 62)
            {
LABEL_45:
              sub_1794();
            }

            v36 = v31 - v32;
            if (v36 >> 1 > v35)
            {
              v35 = v36 >> 1;
            }

            if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v37 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v37 = v35;
            }

            if (v37)
            {
              if (!(v37 >> 62))
              {
                operator new();
              }

              goto LABEL_46;
            }

            v38 = 4 * v34;
            *v38 = -1;
            *(v38 + 2) = v11 >> 3;
            *(v38 + 3) = 1;
            v13 = 4 * v34 + 4;
            memcpy(0, v32, v33);
            v29[4] = 0;
            v29[5] = v13;
            v29[6] = 0;
            if (v32)
            {
              operator delete(v32);
            }
          }

          v29[5] = v13;
        }

        else
        {
          v16 = (v39 | ((WORD2(v39) | (BYTE6(v39) << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL;
          while (1)
          {
            v17 = *(v14 + 8);
            if (*(v14 + 16) - v17 == 16 && __PAIR64__(*(v17 + 12), *(v17 + 8)) == __PAIR64__(WORD2(v16), v39) && *(v17 + 14) == HIWORD(v16) && (*v14 & 0x14) == 0)
            {
              break;
            }

            v14 += 32;
            if (v14 == v15)
            {
              goto LABEL_19;
            }
          }
        }
      }

      ++v10;
    }

    while (v10 != v12);
  }
}

void sub_307668(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      if ((*(*a1 + v3) & 0x80000000) == 0)
      {
        v4 = *(a1 + 8);
        v5 = (v4 + v2);
        v6 = *(v4 + v2 + 80);
        if (v6)
        {
          v5[11] = v6;
          operator delete(v6);
        }

        v7 = v5[7];
        if (v7)
        {
          *(v4 + v2 + 64) = v7;
          operator delete(v7);
        }

        v8 = *(v4 + v2 + 32);
        if (v8)
        {
          *(v4 + v2 + 40) = v8;
          operator delete(v8);
        }

        v9 = v5[1];
        if (v9)
        {
          *(v4 + v2 + 16) = v9;
          operator delete(v9);
        }
      }

      ++v3;
      v2 += 104;
    }

    while (v3 != *(a1 + 24));
    operator delete(*a1);
    *(a1 + 40) = 0;
    *a1 = &unk_2290750;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }
}

uint64_t sub_307744(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 32 * v2;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v8 = 32 * v2 + 32;
  v9 = *a1;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v11;
    do
    {
      *v13 = *v12;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 8) = *(v12 + 1);
      *(v13 + 24) = v12[3];
      v12[1] = 0;
      v12[2] = 0;
      v12[3] = 0;
      v12 += 4;
      v13 += 32;
    }

    while (v12 != v10);
    do
    {
      v14 = v9[1];
      if (v14)
      {
        v9[2] = v14;
        operator delete(v14);
      }

      v9 += 4;
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

void sub_3078A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    if (v2 < 0x80)
    {
      if (v2)
      {
        v3 = 0;
        v4 = 56;
        do
        {
          if ((*(*a1 + v3) & 0x80000000) == 0)
          {
            v5 = *(a1 + 8);
            v6 = v5 + v4;
            v7 = *(v5 + v4 + 24);
            if (v7)
            {
              *(v6 + 32) = v7;
              operator delete(v7);
            }

            v8 = *(v5 + v4);
            if (v8)
            {
              *(v5 + v4 + 8) = v8;
              operator delete(v8);
            }

            v9 = *(v5 + v4 - 24);
            if (v9)
            {
              *(v5 + v4 - 16) = v9;
              operator delete(v9);
            }

            v10 = *(v6 - 48);
            if (v10)
            {
              *(v5 + v4 - 40) = v10;
              operator delete(v10);
            }
          }

          ++v3;
          v4 += 104;
        }

        while (v3 != *(a1 + 24));
        *(a1 + 16) = 0;
        memset(*a1, 128, v3 + 8);
        *(*a1 + v3) = -1;
        v11 = *(a1 + 24);
        v12 = v11 - (v11 >> 3);
        v13 = v11 == 7;
        v14 = 6;
        if (!v13)
        {
          v14 = v12;
        }

        *(a1 + 40) = v14 - *(a1 + 16);
      }
    }

    else
    {

      sub_307668(a1);
    }
  }
}

uint64_t sub_3079D0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v6 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v6 = v5 + 1;
  }

  v7 = ((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) ^ ~((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) >> 47)) + (((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) ^ ((0x2127599BF4325C37 * (v6 ^ (v5 >> 23))) >> 47)) << 21);
  v8 = 21 * ((265 * (v7 ^ (v7 >> 24))) ^ ((265 * (v7 ^ (v7 >> 24))) >> 14));
  v9 = 2147483649u * (v8 ^ (v8 >> 28));
  v10 = (result + 48 * (((((v8 ^ (v8 >> 28)) >> 8) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 16)) ^ ((-2147483647 * (v8 ^ (v8 >> 28))) >> 24)) & 0xF));
  v11 = v9 >> 7;
  v12 = v10[3];
  v13 = *v10;
  v14 = 0x101010101010101 * (v9 & 0x7F);
  while (1)
  {
    v15 = v11 & v12;
    v16 = *(v13 + v15);
    v17 = ((v16 ^ v14) - 0x101010101010101) & ~(v16 ^ v14) & 0x8080808080808080;
    if (v17)
    {
      break;
    }

LABEL_11:
    v20 = v16 & (~v16 << 6);
    if ((v20 & 0x8080808080808080) != 0)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = v20;
      a3[4] = 0;
      return result;
    }

    v3 += 8;
    v11 = v3 + v15;
  }

  while (1)
  {
    v18 = (v15 + (__clz(__rbit64(v17)) >> 3)) & v12;
    v19 = v10[1] + 32 * v18;
    if (__PAIR64__(*(v19 + 4), *v19) == __PAIR64__(WORD2(v4), v4) && *(v19 + 6) == BYTE6(v4))
    {
      break;
    }

    v17 &= v17 - 1;
    if (!v17)
    {
      goto LABEL_11;
    }
  }

  v21 = v12 == v18;
  v22 = v13 + v18;
  v23 = v13 + v12;
  v24 = result + 768;
  if (v12 == v18)
  {
    v22 = 0;
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v25 = v10;
  }

  if (v21)
  {
    v26 = 0;
  }

  else
  {
    v26 = v23;
  }

  *a3 = v25;
  a3[1] = v24;
  a3[2] = v22;
  a3[3] = v19;
  a3[4] = v26;
  return result;
}

uint64_t sub_307B48(uint64_t result, int *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      v73 = *(a2 - 1);
      v74 = *v8;
      if (BYTE2(v73) < BYTE2(*v8))
      {
        *v8 = v73;
        *(a2 - 1) = v74;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v88 = v8 + 1;
      v90 = v8 == a2 || v88 == a2;
      if (a4)
      {
        if (!v90)
        {
          v91 = 0;
          v92 = v8;
          do
          {
            v95 = *v92;
            v94 = v92[1];
            v92 = v88;
            if (BYTE2(v94) < BYTE2(v95))
            {
              v96 = v91;
              do
              {
                *(v8 + v96 + 4) = v95;
                if (!v96)
                {
                  v93 = v8;
                  goto LABEL_127;
                }

                v95 = *(v8 + v96 - 4);
                v96 -= 4;
              }

              while (BYTE2(v94) < BYTE2(v95));
              v93 = (v8 + v96 + 4);
LABEL_127:
              *v93 = v94;
            }

            v88 = v92 + 1;
            v91 += 4;
          }

          while (v92 + 1 != a2);
        }
      }

      else if (!v90)
      {
        do
        {
          v132 = *v7;
          v131 = v7[1];
          v7 = v88;
          if (BYTE2(v131) < BYTE2(v132))
          {
            v133 = v88;
            do
            {
              *v133 = v132;
              v132 = *(v133 - 2);
              --v133;
            }

            while (BYTE2(v131) < BYTE2(v132));
            *v133 = v131;
          }

          ++v88;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v97 = (v9 - 2) >> 1;
        v98 = v97;
        do
        {
          if (v97 >= v98)
          {
            v100 = (2 * (v98 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v101 = &v8[v100];
            v102 = *v101;
            if (2 * (v98 & 0x3FFFFFFFFFFFFFFFLL) + 2 < v9)
            {
              v103 = v101[1];
              result = HIWORD(v103);
              if (BYTE2(v102) < BYTE2(v103))
              {
                v102 = v101[1];
                ++v101;
                v100 = 2 * (v98 & 0x3FFFFFFFFFFFFFFFLL) + 2;
              }
            }

            v104 = &v8[v98];
            v105 = *v104;
            v106 = BYTE2(*v104);
            if (v106 <= BYTE2(v102))
            {
              while (1)
              {
                v107 = v101;
                *v104 = v102;
                if (v97 < v100)
                {
                  break;
                }

                v108 = (2 * v100) | 1;
                v101 = &v8[v108];
                v100 = 2 * v100 + 2;
                v102 = *v101;
                if (v100 < v9)
                {
                  result = (v101 + 1);
                  if (BYTE2(v102) >= BYTE2(v101[1]))
                  {
                    v100 = v108;
                  }

                  else
                  {
                    v102 = v101[1];
                    ++v101;
                  }

                  v104 = v107;
                  if (v106 > BYTE2(v102))
                  {
                    break;
                  }
                }

                else
                {
                  v100 = v108;
                  v104 = v107;
                  if (v106 > BYTE2(v102))
                  {
                    break;
                  }
                }
              }

              *v107 = v105;
            }
          }

          v99 = v98-- <= 0;
        }

        while (!v99);
        do
        {
          v109 = 0;
          v110 = *v8;
          v111 = (v9 - 2) >> 1;
          v112 = v8;
          do
          {
            while (1)
            {
              v118 = &v112[v109];
              v117 = v118 + 1;
              v116 = v118[1];
              v119 = (2 * v109) | 1;
              v109 = 2 * v109 + 2;
              if (v109 < v9)
              {
                break;
              }

              v109 = v119;
              *v112 = v116;
              v112 = v118 + 1;
              if (v119 > v111)
              {
                goto LABEL_161;
              }
            }

            v115 = v118[2];
            v113 = v118 + 2;
            v114 = v115;
            result = BYTE2(v116);
            if (BYTE2(v116) >= BYTE2(v115))
            {
              v109 = v119;
            }

            else
            {
              v116 = v114;
              v117 = v113;
            }

            *v112 = v116;
            v112 = v117;
          }

          while (v109 <= v111);
LABEL_161:
          if (v117 == --a2)
          {
            *v117 = v110;
          }

          else
          {
            *v117 = *a2;
            *a2 = v110;
            v120 = (v117 - v8 + 4) >> 2;
            v99 = v120 < 2;
            v121 = v120 - 2;
            if (!v99)
            {
              v122 = v121 >> 1;
              v123 = &v8[v122];
              v124 = *v123;
              v125 = *v117;
              v126 = BYTE2(*v117);
              if (v126 > BYTE2(*v123))
              {
                do
                {
                  v127 = v123;
                  *v117 = v124;
                  if (!v122)
                  {
                    break;
                  }

                  v122 = (v122 - 1) >> 1;
                  v123 = &v8[v122];
                  v124 = *v123;
                  v117 = v127;
                }

                while (v126 > BYTE2(*v123));
                *v127 = v125;
              }
            }
          }

          v99 = v9-- <= 2;
        }

        while (!v99);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    if (v9 < 0x81)
    {
      v17 = *v8;
      v18 = *v11;
      v19 = BYTE2(*v8);
      v20 = BYTE2(*v11);
      if (v19 < v20)
      {
        if (BYTE2(v12) < v19)
        {
          *v11 = v12;
          goto LABEL_37;
        }

        *v11 = v17;
        *v8 = v18;
        v31 = *(a2 - 1);
        if (v20 > BYTE2(v31))
        {
          *v8 = v31;
LABEL_37:
          *(a2 - 1) = v18;
        }

LABEL_38:
        --a3;
        v23 = *v8;
        v24 = BYTE2(*v8);
        if (a4)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      if (BYTE2(v12) >= v19)
      {
        goto LABEL_38;
      }

      *v8 = v12;
      *(a2 - 1) = v17;
      v22 = *v11;
      if (BYTE2(*v8) >= BYTE2(*v11))
      {
        goto LABEL_38;
      }

      *v11 = *v8;
      *v8 = v22;
      --a3;
      v23 = v22;
      v24 = BYTE2(v22);
      if (a4)
      {
        goto LABEL_61;
      }

LABEL_60:
      if (*(v8 - 2) < v24)
      {
        goto LABEL_61;
      }

      if (v24 >= *(a2 - 2))
      {
        v63 = v8 + 1;
        do
        {
          v8 = v63;
          if (v63 >= a2)
          {
            break;
          }

          v64 = *(v63++ + 2);
        }

        while (v24 >= v64);
      }

      else
      {
        v61 = v8;
        do
        {
          v8 = v61 + 1;
          v62 = *(v61++ + 6);
        }

        while (v24 >= v62);
      }

      v65 = a2;
      if (v8 < a2)
      {
        v66 = a2;
        do
        {
          v65 = v66 - 1;
          v67 = *(v66-- - 2);
        }

        while (v24 < v67);
      }

      if (v8 < v65)
      {
        v68 = *v8;
        v69 = *v65;
        do
        {
          *v8 = v69;
          *v65 = v68;
          do
          {
            v70 = v8[1];
            ++v8;
            v68 = v70;
          }

          while (v24 >= BYTE2(v70));
          do
          {
            v71 = *--v65;
            v69 = v71;
          }

          while (v24 < BYTE2(v71));
        }

        while (v8 < v65);
      }

      v72 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v72;
      }

      a4 = 0;
      *v72 = v23;
    }

    else
    {
      v13 = *v10;
      v14 = *v8;
      v15 = BYTE2(*v10);
      v16 = BYTE2(*v8);
      if (v15 >= v16)
      {
        if (BYTE2(v12) < v15)
        {
          *v10 = v12;
          *(a2 - 1) = v13;
          v21 = *v8;
          if (BYTE2(*v10) < BYTE2(*v8))
          {
            *v8 = *v10;
            *v10 = v21;
          }
        }
      }

      else
      {
        if (BYTE2(v12) >= v15)
        {
          *v8 = v13;
          *v10 = v14;
          v25 = *(a2 - 1);
          if (v16 <= BYTE2(v25))
          {
            goto LABEL_29;
          }

          *v10 = v25;
        }

        else
        {
          *v8 = v12;
        }

        *(a2 - 1) = v14;
      }

LABEL_29:
      v26 = v10 - 1;
      v27 = *(v10 - 1);
      v28 = v8[1];
      v29 = *(a2 - 2);
      if (BYTE2(v27) >= BYTE2(v28))
      {
        if (BYTE2(v29) < BYTE2(v27))
        {
          *v26 = v29;
          *(a2 - 2) = v27;
          v30 = v8[1];
          if (BYTE2(*v26) < BYTE2(v30))
          {
            v8[1] = *v26;
            *v26 = v30;
          }
        }
      }

      else
      {
        if (BYTE2(v29) >= BYTE2(v27))
        {
          v8[1] = v27;
          *v26 = v28;
          v32 = *(a2 - 2);
          if (BYTE2(v28) <= BYTE2(v32))
          {
            goto LABEL_43;
          }

          *v26 = v32;
        }

        else
        {
          v8[1] = v29;
        }

        *(a2 - 2) = v28;
      }

LABEL_43:
      v35 = v10[1];
      v33 = v10 + 1;
      v34 = v35;
      v36 = v8[2];
      v37 = BYTE2(v35);
      v38 = *(a2 - 3);
      if (BYTE2(v35) >= BYTE2(v36))
      {
        if (BYTE2(v38) < v37)
        {
          *v33 = v38;
          *(a2 - 3) = v34;
          v39 = v8[2];
          if (BYTE2(*v33) < BYTE2(v39))
          {
            v8[2] = *v33;
            *v33 = v39;
          }
        }
      }

      else
      {
        if (BYTE2(v38) >= v37)
        {
          v8[2] = v34;
          *v33 = v36;
          v40 = *(a2 - 3);
          if (BYTE2(v36) <= BYTE2(v40))
          {
            goto LABEL_52;
          }

          *v33 = v40;
        }

        else
        {
          v8[2] = v38;
        }

        *(a2 - 3) = v36;
      }

LABEL_52:
      v41 = *v11;
      v42 = *v26;
      v43 = BYTE2(*v11);
      v44 = *v33;
      if (v43 < BYTE2(*v26))
      {
        if (BYTE2(v44) >= v43)
        {
          *v26 = v41;
          *v11 = v42;
          v26 = v11;
          v41 = v44;
          if (BYTE2(v44) >= BYTE2(v42))
          {
            v41 = v42;
            goto LABEL_59;
          }
        }

LABEL_58:
        *v26 = v44;
        *v33 = v42;
        goto LABEL_59;
      }

      if (BYTE2(v44) >= v43)
      {
        goto LABEL_59;
      }

      *v11 = v44;
      *v33 = v41;
      v33 = v11;
      v41 = v42;
      if (BYTE2(v44) < BYTE2(v42))
      {
        goto LABEL_58;
      }

      v41 = v44;
LABEL_59:
      v45 = *v8;
      *v8 = v41;
      *v11 = v45;
      --a3;
      v23 = *v8;
      v24 = BYTE2(*v8);
      if ((a4 & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_61:
      v46 = 0;
      do
      {
        v47 = v8[++v46];
      }

      while (v24 > BYTE2(v47));
      v48 = &v8[v46];
      v49 = a2;
      if (v46 == 1)
      {
        v52 = a2;
        while (v48 < v52)
        {
          v50 = v52 - 1;
          v53 = *(v52-- - 2);
          if (v24 > v53)
          {
            goto LABEL_69;
          }
        }

        v50 = v52;
LABEL_78:
        v59 = v48 - 1;
        if (v48 - 1 == v8)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v8 = *v59;
        goto LABEL_80;
      }

      do
      {
        v50 = v49 - 1;
        v51 = *(v49-- - 2);
      }

      while (v24 <= v51);
LABEL_69:
      if (v48 >= v50)
      {
        goto LABEL_78;
      }

      v54 = *v50;
      v55 = v48;
      v56 = v50;
      do
      {
        *v55 = v54;
        *v56 = v47;
        do
        {
          v57 = v55[1];
          ++v55;
          v47 = v57;
        }

        while (v24 > BYTE2(v57));
        do
        {
          v58 = *--v56;
          v54 = v58;
        }

        while (v24 <= BYTE2(v58));
      }

      while (v55 < v56);
      v59 = v55 - 1;
      if (v55 - 1 != v8)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v59 = v23;
      if (v48 < v50)
      {
        goto LABEL_83;
      }

      v60 = sub_30878C(v8, v59);
      v8 = v59 + 1;
      result = sub_30878C(v59 + 1, a2);
      if (result)
      {
        a2 = v59;
        if (!v60)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v60)
      {
LABEL_83:
        result = sub_307B48(v7, v59, a3, a4 & 1);
        a4 = 0;
        v8 = v59 + 1;
      }
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      v79 = v8 + 1;
      v80 = v8[1];
      v81 = v8 + 2;
      v82 = v8[2];
      v83 = *v8;
      v84 = BYTE2(*v8);
      v85 = BYTE2(v82);
      if (BYTE2(v80) >= v84)
      {
        if (BYTE2(v82) >= BYTE2(v80))
        {
          v80 = v8[2];
        }

        else
        {
          v86 = v8;
          *v79 = v82;
          *v81 = v80;
          v87 = v8 + 1;
          v130 = BYTE2(v82) >= v84;
          v84 = BYTE2(v80);
          v85 = BYTE2(v80);
          if (!v130)
          {
            goto LABEL_185;
          }
        }

        v135 = *(a2 - 1);
        if (v85 <= BYTE2(v135))
        {
          return result;
        }
      }

      else if (BYTE2(v82) >= BYTE2(v80))
      {
        *v8 = v80;
        v8[1] = v83;
        v86 = v8 + 1;
        v87 = v8 + 2;
        v80 = v83;
        if (BYTE2(v82) < v84)
        {
          goto LABEL_185;
        }

        v80 = v82;
        v135 = *(a2 - 1);
        if (v85 <= BYTE2(v135))
        {
          return result;
        }
      }

      else
      {
        v86 = v8;
        v87 = v8 + 2;
        v80 = *v8;
LABEL_185:
        *v86 = v82;
        *v87 = v83;
        v135 = *(a2 - 1);
        if (v84 <= BYTE2(v135))
        {
          return result;
        }
      }

      *v81 = v135;
      *(a2 - 1) = v80;
      v136 = *v81;
      v137 = *v79;
      if (BYTE2(v136) < BYTE2(*v79))
      {
        v8[1] = v136;
        v8[2] = v137;
        v138 = *v8;
        if (BYTE2(v136) < BYTE2(*v8))
        {
          *v8 = v136;
          v8[1] = v138;
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return sub_3085D8(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

    goto LABEL_10;
  }

  v75 = *v8;
  v76 = v8[1];
  v77 = BYTE2(*v8);
  v78 = *(a2 - 1);
  if (BYTE2(v76) >= v77)
  {
    if (BYTE2(v78) < BYTE2(v76))
    {
      v8[1] = v78;
      *(a2 - 1) = v76;
      v129 = *v8;
      v128 = v8[1];
      if (BYTE2(v128) < BYTE2(*v8))
      {
        *v8 = v128;
        v8[1] = v129;
      }
    }
  }

  else
  {
    if (BYTE2(v78) >= BYTE2(v76))
    {
      *v8 = v76;
      v8[1] = v75;
      v134 = *(a2 - 1);
      if (v77 <= BYTE2(v134))
      {
        return result;
      }

      v8[1] = v134;
    }

    else
    {
      *v8 = v78;
    }

    *(a2 - 1) = v75;
  }

  return result;
}

int *sub_3085D8(int *result, int *a2, int *a3, int *a4, int *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = BYTE2(*a2);
  v8 = BYTE2(*result);
  v9 = *a3;
  v10 = BYTE2(*a3);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v12 = BYTE2(v9);
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      v12 = BYTE2(v5);
      if (BYTE2(*a2) < BYTE2(*result))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
        v13 = *a4;
        if (BYTE2(*a3) <= BYTE2(*a4))
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }
    }

    v13 = *a4;
    if (v12 <= BYTE2(*a4))
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (v10 >= v7)
  {
    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (BYTE2(*a3) >= BYTE2(v6))
    {
      v13 = *a4;
      if (BYTE2(v5) <= BYTE2(*a4))
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    *a2 = v5;
  }

  else
  {
    *result = v9;
  }

  *a3 = v6;
  v5 = v6;
  v13 = *a4;
  if (v8 <= BYTE2(*a4))
  {
    goto LABEL_18;
  }

LABEL_14:
  *a3 = v13;
  *a4 = v5;
  v14 = *a2;
  if (BYTE2(*a3) < BYTE2(*a2))
  {
    *a2 = *a3;
    *a3 = v14;
    v15 = *result;
    if (BYTE2(*a2) < BYTE2(*result))
    {
      *result = *a2;
      *a2 = v15;
    }
  }

LABEL_18:
  v16 = *a4;
  if (BYTE2(*a5) < BYTE2(*a4))
  {
    *a4 = *a5;
    *a5 = v16;
    v17 = *a3;
    if (BYTE2(*a4) < BYTE2(*a3))
    {
      *a3 = *a4;
      *a4 = v17;
      v18 = *a2;
      if (BYTE2(*a3) < BYTE2(*a2))
      {
        *a2 = *a3;
        *a3 = v18;
        v19 = *result;
        if (BYTE2(*a2) < BYTE2(*result))
        {
          *result = *a2;
          *a2 = v19;
        }
      }
    }
  }

  return result;
}

BOOL sub_30878C(int *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = BYTE2(*a1);
      v9 = *(a2 - 1);
      if (BYTE2(v7) >= v8)
      {
        if (BYTE2(v9) >= BYTE2(v7))
        {
          return 1;
        }

        a1[1] = v9;
        *(a2 - 1) = v7;
        v27 = *a1;
        v26 = a1[1];
        if (BYTE2(v26) >= BYTE2(*a1))
        {
          return 1;
        }

        *a1 = v26;
        a1[1] = v27;
        return 1;
      }

      else if (BYTE2(v9) >= BYTE2(v7))
      {
        *a1 = v7;
        a1[1] = v6;
        v37 = *(a2 - 1);
        if (v8 <= BYTE2(v37))
        {
          return 1;
        }

        a1[1] = v37;
        *(a2 - 1) = v6;
        return 1;
      }

      else
      {
        *a1 = v9;
        *(a2 - 1) = v6;
        return 1;
      }
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_3085D8(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
      }

LABEL_14:
      v11 = a1 + 2;
      v10 = a1[2];
      v12 = a1[1];
      v13 = *a1;
      v14 = BYTE2(*a1);
      if (BYTE2(v12) >= v14)
      {
        if (BYTE2(v10) >= BYTE2(v12))
        {
          goto LABEL_27;
        }

        a1[1] = v10;
        *v11 = v12;
        v15 = a1;
        v16 = a1 + 1;
      }

      else
      {
        v15 = a1;
        v16 = a1 + 2;
        if (BYTE2(v10) < BYTE2(v12))
        {
LABEL_26:
          *v15 = v10;
          *v16 = v13;
          goto LABEL_27;
        }

        *a1 = v12;
        a1[1] = v13;
        v15 = a1 + 1;
        v16 = a1 + 2;
      }

      if (BYTE2(v10) < v14)
      {
        goto LABEL_26;
      }

LABEL_27:
      v28 = a1 + 3;
      if (a1 + 3 == a2)
      {
        return 1;
      }

      v29 = 0;
      for (i = 12; ; i += 4)
      {
        v31 = *v28;
        v32 = *v11;
        v33 = BYTE2(*v28);
        if (v33 < BYTE2(v32))
        {
          break;
        }

LABEL_36:
        v11 = v28++;
        if (v28 == a2)
        {
          return 1;
        }
      }

      v34 = i;
      do
      {
        *(a1 + v34) = v32;
        v35 = v34 - 4;
        if (v34 == 4)
        {
          *a1 = v31;
          if (++v29 != 8)
          {
            goto LABEL_36;
          }

          return v28 + 1 == a2;
        }

        v32 = *(a1 + v34 - 8);
        v34 -= 4;
      }

      while (v33 < BYTE2(v32));
      *(a1 + v35) = v31;
      if (++v29 != 8)
      {
        goto LABEL_36;
      }

      return v28 + 1 == a2;
    }

    v17 = a1 + 1;
    v18 = a1[1];
    v19 = a1 + 2;
    v20 = a1[2];
    v21 = *a1;
    v22 = BYTE2(*a1);
    v23 = BYTE2(v20);
    if (BYTE2(v18) >= v22)
    {
      if (BYTE2(v20) >= BYTE2(v18))
      {
        v18 = a1[2];
      }

      else
      {
        v24 = a1;
        *v17 = v20;
        *v19 = v18;
        v25 = a1 + 1;
        v36 = BYTE2(v20) >= v22;
        v22 = BYTE2(v18);
        v23 = BYTE2(v18);
        if (!v36)
        {
          goto LABEL_45;
        }
      }

      v38 = *(a2 - 1);
      if (v23 <= BYTE2(v38))
      {
        return 1;
      }
    }

    else
    {
      if (BYTE2(v20) < BYTE2(v18))
      {
        v24 = a1;
        v25 = a1 + 2;
        v18 = *a1;
        goto LABEL_45;
      }

      *a1 = v18;
      a1[1] = v21;
      v24 = a1 + 1;
      v25 = a1 + 2;
      v18 = v21;
      if (BYTE2(v20) < v22)
      {
LABEL_45:
        *v24 = v20;
        *v25 = v21;
        v38 = *(a2 - 1);
        if (v22 <= BYTE2(v38))
        {
          return 1;
        }

        goto LABEL_49;
      }

      v18 = v20;
      v38 = *(a2 - 1);
      if (v23 <= BYTE2(v38))
      {
        return 1;
      }
    }

LABEL_49:
    *v19 = v38;
    *(a2 - 1) = v18;
    v39 = *v19;
    v40 = *v17;
    if (BYTE2(v39) >= BYTE2(*v17))
    {
      return 1;
    }

    a1[1] = v39;
    a1[2] = v40;
    v41 = *a1;
    if (BYTE2(v39) >= BYTE2(*a1))
    {
      return 1;
    }

    *a1 = v39;
    a1[1] = v41;
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

  v4 = *(a2 - 1);
  v5 = *a1;
  if (BYTE2(v4) >= BYTE2(*a1))
  {
    return 1;
  }

  *a1 = v4;
  *(a2 - 1) = v5;
  return 1;
}