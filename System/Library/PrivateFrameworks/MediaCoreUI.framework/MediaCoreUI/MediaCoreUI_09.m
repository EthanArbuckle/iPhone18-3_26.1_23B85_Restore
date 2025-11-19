char *sub_1C5A21244(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_1C5A21500()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ContentLookupItem();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C5A215A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 64);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(v7 + 80);
  v12 = *(v7 + 80) | *(v4 + 80);
  v13 = v9 + v12;
  v14 = v9 + v11;
  v15 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v16 = (v14 & ~v11) + *(*(v6 - 8) + 64) + (v13 & ~v12);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((v14 + ((a1 + v13) & ~v12)) & ~v11, v8, v6);
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_27;
  }

LABEL_14:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v20) + 1;
}

char *sub_1C5A217A4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(a4 + 24);
  v7 = *(v5 + 84);
  v8 = *(v6 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  if (v9 <= v7)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v8 + 80);
  v13 = v12 | *(v5 + 80);
  v14 = v10 + v13;
  v15 = (v10 + v13) & ~v13;
  v16 = v10 + v12;
  v17 = (v16 & ~v12) + *(*(v6 - 8) + 64) + v15;
  v18 = a3 >= v11;
  v19 = a3 - v11;
  if (v19 != 0 && v18)
  {
    if (v17 <= 3)
    {
      v24 = ((v19 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
      if (HIWORD(v24))
      {
        v20 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v20 = v25;
        }

        else
        {
          v20 = 0;
        }
      }
    }

    else
    {
      v20 = 1;
    }
  }

  else
  {
    v20 = 0;
  }

  if (v11 < a2)
  {
    v21 = ~v11 + a2;
    if (v17 < 4)
    {
      v23 = (v21 >> (8 * v17)) + 1;
      if (v17)
      {
        v26 = v21 & ~(-1 << (8 * v17));
        v27 = result;
        bzero(result, v17);
        result = v27;
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *v27 = v26;
            if (v20 > 1)
            {
LABEL_46:
              if (v20 == 2)
              {
                *&result[v17] = v23;
              }

              else
              {
                *&result[v17] = v23;
              }

              return result;
            }
          }

          else
          {
            *v27 = v21;
            if (v20 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v27 = v26;
        v27[2] = BYTE2(v26);
      }

      if (v20 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v22 = result;
      bzero(result, v17);
      result = v22;
      *v22 = v21;
      v23 = 1;
      if (v20 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v20)
    {
      result[v17] = v23;
    }

    return result;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&result[v17] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v17] = 0;
  }

  else if (v20)
  {
    result[v17] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v7 >= v9)
  {
    v30 = *(v5 + 56);

    return v30();
  }

  else
  {
    v28 = *(v8 + 56);
    v29 = (v16 + (&result[v14] & ~v13)) & ~v12;

    return v28(v29);
  }
}

uint64_t sub_1C5A21AA0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  v13 = *(*(a3[2] - 8) + 64);
  v14 = *(v5 + 80);
  v15 = *(v8 + 80);
  v16 = *(v11 + 80);
  if (v10 <= v12)
  {
    v17 = *(v11 + 84);
  }

  else
  {
    v17 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v15 | v14;
  v19 = (v15 | v14) + v13;
  v20 = v13 + v15;
  v21 = v16 | v14;
  v22 = (v16 | v14) + *(*(a3[3] - 8) + 64) + ((v13 + v15) & ~v15);
  v23 = v13 + v16;
  v24 = a2 - v17;
  if (a2 <= v17)
  {
    goto LABEL_31;
  }

  v25 = (v23 & ~v16) + *(*(v7 - 8) + 64) + ((v22 + (v19 & ~v18)) & ~v21);
  v26 = 8 * v25;
  if (v25 <= 3)
  {
    v28 = ((v24 + ~(-1 << v26)) >> v26) + 1;
    if (HIWORD(v28))
    {
      v27 = *(a1 + v25);
      if (!v27)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v28 > 0xFF)
    {
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v28 < 2)
    {
LABEL_30:
      if (v17)
      {
LABEL_31:
        if (v6 == v17)
        {
LABEL_32:
          v32 = *(v5 + 48);

          return v32();
        }

        v34 = (a1 + v19) & ~v18;
        if (v12 <= v10)
        {
          if (v6 >= v9)
          {
            goto LABEL_32;
          }

          v35 = *(v8 + 48);
          v36 = (v20 + v34) & ~v15;
          v37 = *(v8 + 84);
          v38 = a3[3];
        }

        else
        {
          v35 = *(v11 + 48);
          v36 = (v23 + ((v22 + v34) & ~v21)) & ~v16;
          v37 = *(v11 + 84);
          v38 = a3[4];
        }

        return v35(v36, v37, v38);
      }

      return 0;
    }
  }

  v27 = *(a1 + v25);
  if (!*(a1 + v25))
  {
    goto LABEL_30;
  }

LABEL_17:
  v29 = (v27 - 1) << v26;
  if (v25 > 3)
  {
    v29 = 0;
  }

  if (v25)
  {
    if (v25 <= 3)
    {
      v30 = (v23 & ~v16) + *(*(v7 - 8) + 64) + ((v22 + (v19 & ~v18)) & ~v21);
    }

    else
    {
      v30 = 4;
    }

    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v31 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v31 = *a1;
      }
    }

    else if (v30 == 1)
    {
      v31 = *a1;
    }

    else
    {
      v31 = *a1;
    }
  }

  else
  {
    v31 = 0;
  }

  return v17 + (v31 | v29) + 1;
}

void sub_1C5A21DAC(unsigned int *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(v12 + 84);
  v14 = *(*(a4[2] - 8) + 64);
  v15 = *(v5 + 80);
  v16 = *(v9 + 80);
  v17 = *(v12 + 80);
  if (v13 <= v6)
  {
    v18 = *(v5 + 84);
  }

  else
  {
    v18 = *(v12 + 84);
  }

  if (v18 <= v11)
  {
    v19 = v11;
  }

  else
  {
    v19 = v18;
  }

  v20 = v16 | v15;
  v21 = (v16 | v15) + v14;
  v22 = v21 & ~(v16 | v15);
  v23 = v14 + v16;
  v24 = ((v14 + v16) & ~v16) + *(*(v7 - 8) + 64);
  v25 = v17 | v15;
  v26 = (v17 | v15) + v24;
  v27 = (v26 + v22) & ~v25;
  v28 = v14 + v17;
  v29 = ((v14 + v17) & ~v17) + *(*(v8 - 8) + 64);
  v30 = v27 + v29;
  v31 = a3 >= v19;
  v32 = a3 - v19;
  if (v32 != 0 && v31)
  {
    if (v30 <= 3)
    {
      v37 = ((v32 + ~(-1 << (8 * v30))) >> (8 * v30)) + 1;
      if (HIWORD(v37))
      {
        v33 = 4;
      }

      else
      {
        if (v37 < 0x100)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v37 < 2)
        {
          v33 = 0;
        }
      }
    }

    else
    {
      v33 = 1;
    }
  }

  else
  {
    v33 = 0;
  }

  if (v19 < a2)
  {
    v34 = ~v19 + a2;
    if (v30 >= 4)
    {
      v35 = a1;
      bzero(a1, v30);
      a1 = v35;
      *v35 = v34;
      v36 = 1;
      if (v33 > 1)
      {
        goto LABEL_17;
      }

      goto LABEL_72;
    }

    v36 = (v34 >> (8 * v30)) + 1;
    if (v30)
    {
      v38 = v34 & ~(-1 << (8 * v30));
      v39 = a1;
      bzero(a1, v30);
      a1 = v39;
      if (v30 != 3)
      {
        if (v30 == 2)
        {
          *v39 = v38;
          if (v33 > 1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          *v39 = v34;
          if (v33 > 1)
          {
LABEL_17:
            if (v33 == 2)
            {
              *(a1 + v30) = v36;
            }

            else
            {
              *(a1 + v30) = v36;
            }

            return;
          }
        }

LABEL_72:
        if (v33)
        {
          *(a1 + v30) = v36;
        }

        return;
      }

      *v39 = v38;
      *(v39 + 2) = BYTE2(v38);
    }

    if (v33 > 1)
    {
      goto LABEL_17;
    }

    goto LABEL_72;
  }

  if (v33 > 1)
  {
    if (v33 != 2)
    {
      *(a1 + v30) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v30) = 0;
  }

  else if (v33)
  {
    *(a1 + v30) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v6 != v19)
  {
    v41 = a1 + v21;
    v42 = (v41 & ~v20);
    if (v13 <= v11)
    {
      if (v11 < a2)
      {
        if (v24 <= 3)
        {
          v46 = ~(-1 << (8 * v24));
        }

        else
        {
          v46 = -1;
        }

        if (!v24)
        {
          return;
        }

        v44 = v46 & (~v11 + a2);
        if (v24 <= 3)
        {
          v45 = v24;
        }

        else
        {
          v45 = 4;
        }

        bzero((v41 & ~v20), v24);
        if (v45 <= 2)
        {
          if (v45 != 1)
          {
            goto LABEL_54;
          }

          goto LABEL_69;
        }

LABEL_84:
        if (v45 == 3)
        {
          *v42 = v44;
          v42[2] = BYTE2(v44);
        }

        else
        {
          *v42 = v44;
        }

        return;
      }

      if (v6 >= v10)
      {
        v40 = *(v5 + 56);
        goto LABEL_40;
      }

      v47 = *(v9 + 56);
      v48 = &v42[v23] & ~v16;
    }

    else
    {
      v42 = (&v42[v26] & ~v25);
      if (v18 < a2)
      {
        if (v29 <= 3)
        {
          v43 = ~(-1 << (8 * v29));
        }

        else
        {
          v43 = -1;
        }

        if (!v29)
        {
          return;
        }

        v44 = v43 & (~v18 + a2);
        if (v29 <= 3)
        {
          v45 = v29;
        }

        else
        {
          v45 = 4;
        }

        bzero(v42, v29);
        if (v45 <= 2)
        {
          if (v45 != 1)
          {
LABEL_54:
            *v42 = v44;
            return;
          }

LABEL_69:
          *v42 = v44;
          return;
        }

        goto LABEL_84;
      }

      v47 = *(v12 + 56);
      v48 = &v42[v28] & ~v17;
    }

    v47(v48);
    return;
  }

  v40 = *(v5 + 56);
LABEL_40:

  v40();
}

uint64_t sub_1C5A22274()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ContentLookupItem();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ContentLookupItem();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ContentLookupItem();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C5A22384(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v55 = a3[3];
  v8 = *(v55 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v12 = a3[4];
  v11 = a3[5];
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v7)
  {
    v15 = *(v5 + 84);
  }

  else
  {
    v15 = *(v13 + 84);
  }

  if (v15 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v11 - 8);
  v18 = *(v17 + 84);
  v19 = *(v5 + 64);
  v20 = *(v5 + 80);
  v21 = *(v8 + 80);
  v22 = *(v13 + 80);
  v23 = *(v17 + 80);
  if (v18 <= v7)
  {
    v24 = *(v5 + 84);
  }

  else
  {
    v24 = *(v17 + 84);
  }

  if (v24 <= v16)
  {
    v25 = v16;
  }

  else
  {
    v25 = v24;
  }

  if (!a2)
  {
    return 0;
  }

  v26 = v21 | v20;
  v27 = (v21 | v20) + v19;
  v28 = v19 + v21;
  v29 = v22 | v20;
  v54 = (v22 | v20) + *(*(v55 - 8) + 64) + ((v19 + v21) & ~v21);
  v30 = v19 + v22;
  v31 = v23 | v20;
  v32 = (v23 | v20) + *(*(v12 - 8) + 64) + ((v19 + v22) & ~v22);
  v53 = v19 + v23;
  v33 = a2 - v25;
  if (a2 > v25)
  {
    v34 = (v53 & ~v23) + *(*(v11 - 8) + 64) + ((v32 + ((v54 + (v27 & ~v26)) & ~v29)) & ~v31);
    v35 = 8 * v34;
    if (v34 <= 3)
    {
      v37 = ((v33 + ~(-1 << v35)) >> v35) + 1;
      if (HIWORD(v37))
      {
        v36 = *(a1 + v34);
        if (!v36)
        {
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      if (v37 > 0xFF)
      {
        v36 = *(a1 + v34);
        if (!*(a1 + v34))
        {
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      if (v37 < 2)
      {
LABEL_39:
        if (v25)
        {
          goto LABEL_40;
        }

        return 0;
      }
    }

    v36 = *(a1 + v34);
    if (!*(a1 + v34))
    {
      goto LABEL_39;
    }

LABEL_26:
    v38 = (v36 - 1) << v35;
    if (v34 > 3)
    {
      v38 = 0;
    }

    if (v34)
    {
      if (v34 <= 3)
      {
        v39 = (v53 & ~v23) + *(*(v11 - 8) + 64) + ((v32 + ((v54 + (v27 & ~v26)) & ~v29)) & ~v31);
      }

      else
      {
        v39 = 4;
      }

      if (v39 > 2)
      {
        if (v39 == 3)
        {
          v40 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v40 = *a1;
        }
      }

      else if (v39 == 1)
      {
        v40 = *a1;
      }

      else
      {
        v40 = *a1;
      }
    }

    else
    {
      v40 = 0;
    }

    return v25 + (v40 | v38) + 1;
  }

LABEL_40:
  if (v7 == v25)
  {
    v41 = *(v6 + 48);
    v42 = a1;
LABEL_42:

    return v41(v42);
  }

  v44 = (a1 + v27) & ~v26;
  if (v10 == v25)
  {
    if (v7 >= v9)
    {
      v41 = *(v6 + 48);
      v42 = ((a1 + v27) & ~v26);
      goto LABEL_42;
    }

    v45 = *(v8 + 48);
    v46 = (v28 + v44) & ~v21;
    v47 = *(v8 + 84);
    v48 = v55;

    return v45(v46, v47, v48);
  }

  v49 = (v54 + v44) & ~v29;
  if (v15 == v25)
  {
    if (v7 >= v14)
    {
      v41 = *(v6 + 48);
      v42 = ((v54 + v44) & ~v29);
      goto LABEL_42;
    }

    v50 = ~v22;
    v45 = *(v13 + 48);
    v46 = (v30 + v49) & v50;
    v47 = *(v13 + 84);
    v48 = v12;

    return v45(v46, v47, v48);
  }

  v42 = ((v32 + v49) & ~v31);
  if (v7 >= v18)
  {
    v41 = *(v6 + 48);
    goto LABEL_42;
  }

  v51 = *(v17 + 48);
  v52 = (v42 + v53) & ~v23;

  return v51(v52, v18);
}

void sub_1C5A22830(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v9 = *(a4[3] - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= v8)
  {
    v12 = *(v6 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v58 = a4[4];
  v13 = *(v58 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v8)
  {
    v15 = *(v6 + 84);
  }

  else
  {
    v15 = *(v13 + 84);
  }

  if (v15 <= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v57 = a4[5];
  v17 = *(v57 - 8);
  v18 = *(v17 + 84);
  v19 = *(v6 + 64);
  v20 = *(v6 + 80);
  v21 = *(v9 + 80);
  v22 = *(v9 + 64);
  v23 = *(v13 + 80);
  v24 = *(v17 + 80);
  v25 = v19 + v21;
  v26 = v23 | v20;
  v27 = (v23 | v20) + v22 + ((v19 + v21) & ~v21);
  v28 = v19 + v23;
  v29 = v24 | v20;
  v30 = (v24 | v20) + *(*(v58 - 8) + 64) + ((v19 + v23) & ~v23);
  v56 = v19 + v24;
  v31 = ((v19 + v24) & ~v24) + *(v17 + 64);
  if (v18 <= v8)
  {
    v32 = *(v7 + 84);
  }

  else
  {
    v32 = *(v17 + 84);
  }

  if (v32 <= v16)
  {
    v33 = v16;
  }

  else
  {
    v33 = v32;
  }

  v34 = v21 | v20;
  v35 = v34 + v19;
  v36 = ((v30 + ((v27 + ((v34 + v19) & ~v34)) & ~v26)) & ~v29) + v31;
  v37 = a3 >= v33;
  v38 = a3 - v33;
  if (v38 != 0 && v37)
  {
    if (v36 <= 3)
    {
      v41 = ((v19 + v24) & ~v24) + *(*(v57 - 8) + 64);
      v42 = ((v38 + ~(-1 << (8 * v36))) >> (8 * v36)) + 1;
      if (HIWORD(v42))
      {
        v39 = 4;
      }

      else
      {
        if (v42 < 0x100)
        {
          v43 = 1;
        }

        else
        {
          v43 = 2;
        }

        if (v42 >= 2)
        {
          v39 = v43;
        }

        else
        {
          v39 = 0;
        }
      }

      v40 = a2;
      v31 = v41;
    }

    else
    {
      v39 = 1;
      v40 = a2;
    }
  }

  else
  {
    v39 = 0;
    v40 = a2;
  }

  v44 = a1;
  if (v33 < v40)
  {
    v45 = ~v33 + v40;
    if (v36 < 4)
    {
      v46 = (v45 >> (8 * v36)) + 1;
      if (v36)
      {
        v47 = v45 & ~(-1 << (8 * v36));
        bzero(a1, v36);
        v44 = a1;
        if (v36 != 3)
        {
          if (v36 == 2)
          {
            *a1 = v47;
            if (v39 > 1)
            {
LABEL_67:
              if (v39 == 2)
              {
                *&v44[v36] = v46;
              }

              else
              {
                *&v44[v36] = v46;
              }

              return;
            }
          }

          else
          {
            *a1 = v45;
            if (v39 > 1)
            {
              goto LABEL_67;
            }
          }

          goto LABEL_64;
        }

        *a1 = v47;
        a1[2] = BYTE2(v47);
      }

      if (v39 > 1)
      {
        goto LABEL_67;
      }
    }

    else
    {
      bzero(a1, v36);
      v44 = a1;
      *a1 = v45;
      v46 = 1;
      if (v39 > 1)
      {
        goto LABEL_67;
      }
    }

LABEL_64:
    if (v39)
    {
      v44[v36] = v46;
    }

    return;
  }

  if (v39 > 1)
  {
    if (v39 != 2)
    {
      *&a1[v36] = 0;
      if (!v40)
      {
        return;
      }

      goto LABEL_45;
    }

    *&a1[v36] = 0;
  }

  else if (v39)
  {
    a1[v36] = 0;
    if (!v40)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!v40)
  {
    return;
  }

LABEL_45:
  if (v8 == v33)
  {
    v48 = *(v7 + 56);
    goto LABEL_47;
  }

  v49 = &a1[v35] & ~v34;
  if (v12 == v33)
  {
    if (v8 < v11)
    {
      v48 = *(v10 + 56);
      v44 = ((v25 + v49) & ~v21);

      goto LABEL_87;
    }

    v48 = *(v7 + 56);
    v44 = v49;
LABEL_47:

LABEL_87:
    v48(v44);
    return;
  }

  v50 = (v27 + v49) & ~v26;
  if (v15 == v33)
  {
    if (v8 < v14)
    {
      v51 = ~v23;
      v48 = *(v13 + 56);
      v44 = ((v28 + v50) & v51);

      goto LABEL_87;
    }

    v48 = *(v7 + 56);
    v44 = ((v27 + v49) & ~v26);
    goto LABEL_47;
  }

  v52 = (v30 + v50) & ~v29;
  if (v32 >= v40)
  {
    if (v8 < v18)
    {
      v48 = *(v17 + 56);
      v44 = ((v56 + v52) & ~v24);

      goto LABEL_87;
    }

    v48 = *(v7 + 56);
    v44 = ((v30 + v50) & ~v29);
    goto LABEL_47;
  }

  if (v31 <= 3)
  {
    v53 = ~(-1 << (8 * v31));
  }

  else
  {
    v53 = -1;
  }

  if (v31)
  {
    v54 = v53 & (~v32 + v40);
    if (v31 <= 3)
    {
      v55 = v31;
    }

    else
    {
      v55 = 4;
    }

    bzero(((v30 + v50) & ~v29), v31);
    if (v55 > 2)
    {
      if (v55 == 3)
      {
        *v52 = v54;
        *(v52 + 2) = BYTE2(v54);
      }

      else
      {
        *v52 = v54;
      }
    }

    else if (v55 == 1)
    {
      *v52 = v54;
    }

    else
    {
      *v52 = v54;
    }
  }
}

uint64_t sub_1C5A22DFC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ContentLookupItem();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ContentLookupItem();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ContentLookupItem();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ContentLookupItem();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C5A22F38(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 84);
  v6 = *(a3[3] - 8);
  if (*(v6 + 84) <= v5)
  {
    v7 = *(v4 + 84);
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v8 = a3[5];
  v58 = a3[4];
  v9 = *(v58 - 8);
  v59 = *(v9 + 84);
  if (v59 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v9 + 84);
  }

  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 - 8);
  v57 = *(v12 + 84);
  if (v57 <= v5)
  {
    v13 = *(v4 + 84);
  }

  else
  {
    v13 = *(v12 + 84);
  }

  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  v55 = a3[6];
  v15 = *(v55 - 8);
  v16 = *(v15 + 84);
  v17 = *(*(a3[2] - 8) + 64);
  v61 = *(a3[2] - 8);
  v18 = *(v4 + 80);
  v19 = *(v6 + 80);
  v20 = *(v9 + 80);
  v56 = *(v8 - 8);
  v21 = *(v12 + 80);
  v22 = *(v15 + 80);
  if (v16 <= v5)
  {
    v23 = *(v4 + 84);
  }

  else
  {
    v23 = *(v15 + 84);
  }

  if (v23 <= v14)
  {
    v24 = v14;
  }

  else
  {
    v24 = v23;
  }

  if (!a2)
  {
    return 0;
  }

  v25 = v19 | v18;
  v60 = (v19 | v18) + v17;
  v26 = v17 + v19;
  v27 = v20 | v18;
  v28 = (v20 | v18) + *(*(a3[3] - 8) + 64) + ((v17 + v19) & ~v19);
  v29 = v17 + v20;
  v30 = v21 | v18;
  v31 = (v21 | v18) + *(*(v58 - 8) + 64) + ((v17 + v20) & ~v20);
  v32 = v17 + v21;
  v33 = v22 | v18;
  v34 = v33 + *(v56 + 64) + ((v17 + v21) & ~v21);
  v35 = v17 + v22;
  v36 = a2 - v24;
  if (a2 > v24)
  {
    v37 = (v34 + ((v31 + ((v28 + (v60 & ~v25)) & ~v27)) & ~v30)) & ~v33;
    v38 = (v35 & ~v22) + *(*(v55 - 8) + 64);
    v39 = v38 + v37;
    v40 = 8 * (v38 + v37);
    if ((v38 + v37) <= 3)
    {
      v42 = ((v36 + ~(-1 << v40)) >> v40) + 1;
      if (HIWORD(v42))
      {
        v41 = *(a1 + v39);
        if (!v41)
        {
          goto LABEL_45;
        }

        goto LABEL_32;
      }

      if (v42 > 0xFF)
      {
        v41 = *(a1 + v39);
        if (!*(a1 + v39))
        {
          goto LABEL_45;
        }

        goto LABEL_32;
      }

      if (v42 < 2)
      {
LABEL_45:
        if (v24)
        {
          goto LABEL_46;
        }

        return 0;
      }
    }

    v41 = *(a1 + v39);
    if (!*(a1 + v39))
    {
      goto LABEL_45;
    }

LABEL_32:
    v43 = (v41 - 1) << v40;
    if (v39 > 3)
    {
      v43 = 0;
    }

    if (v39)
    {
      if (v39 <= 3)
      {
        v44 = v38 + v37;
      }

      else
      {
        v44 = 4;
      }

      if (v44 > 2)
      {
        if (v44 == 3)
        {
          v45 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v45 = *a1;
        }
      }

      else if (v44 == 1)
      {
        v45 = *a1;
      }

      else
      {
        v45 = *a1;
      }
    }

    else
    {
      v45 = 0;
    }

    return v24 + (v45 | v43) + 1;
  }

LABEL_46:
  if (v5 == v24)
  {
    goto LABEL_47;
  }

  v48 = (a1 + v60) & ~v25;
  if (v7 != v24)
  {
    a1 = ((v28 + v48) & ~v27);
    if (v10 == v24)
    {
      if (v5 >= v59)
      {
        goto LABEL_47;
      }

      v50 = *(*(v58 - 8) + 48);
      v51 = (a1 + v29) & ~v20;
      v52 = v59;
      v53 = v58;
    }

    else
    {
      a1 = ((a1 + v31) & ~v30);
      if (v13 == v24)
      {
        if (v5 < v57)
        {
          v46 = *(v56 + 48);
          a1 = ((a1 + v32) & ~v21);
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      a1 = ((a1 + v34) & ~v33);
      if (v5 >= v16)
      {
LABEL_47:
        v46 = *(v61 + 48);
LABEL_48:

        return v46(a1);
      }

      v50 = *(v15 + 48);
      v51 = (a1 + v35) & ~v22;
      v52 = *(v15 + 84);
      v53 = v55;
    }

    return v50(v51, v52, v53);
  }

  if (v5 < *(v6 + 84))
  {
    v49 = v26 + v48;
    v46 = *(v6 + 48);
    a1 = (v49 & ~v19);
    goto LABEL_48;
  }

  v54 = *(v61 + 48);

  return v54((a1 + v60) & ~v25);
}

void sub_1C5A2349C(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(a4[3] - 8);
  v66 = *(v8 + 84);
  if (v66 <= v7)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v8 + 84);
  }

  v10 = a4[5];
  v63 = a4[4];
  v11 = *(v63 - 8);
  v64 = *(v11 + 84);
  if (v64 <= v7)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v11 + 84);
  }

  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v10 - 8);
  v61 = *(v14 + 84);
  if (v61 <= v7)
  {
    v15 = *(v5 + 84);
  }

  else
  {
    v15 = *(v14 + 84);
  }

  v59 = a4[6];
  v16 = *(v59 - 8);
  if (v15 > v13)
  {
    v13 = v15;
  }

  v17 = *(v16 + 84);
  v18 = *(v5 + 64);
  v19 = *(v5 + 80);
  v65 = v8;
  v20 = *(v8 + 80);
  v21 = *(v8 + 64);
  v62 = *(v63 - 8);
  v22 = *(v11 + 80);
  v60 = *(v10 - 8);
  v23 = *(v14 + 80);
  v58 = *(v59 - 8);
  v24 = *(v16 + 80);
  v25 = v22 | v19;
  v26 = v18 + v20;
  v27 = (v22 | v19) + v21 + ((v18 + v20) & ~v20);
  v28 = v23 | v19;
  v29 = v18 + v22;
  v30 = (v23 | v19) + *(v62 + 64) + ((v18 + v22) & ~v22);
  v31 = v24 | v19;
  v32 = v18 + v23;
  v33 = (v24 | v19) + *(v60 + 64) + ((v18 + v23) & ~v23);
  v57 = v18 + v24;
  v34 = ((v18 + v24) & ~v24) + *(v16 + 64);
  if (v17 <= v7)
  {
    v35 = *(v6 + 84);
  }

  else
  {
    v35 = *(v16 + 84);
  }

  if (v35 > v13)
  {
    v13 = v35;
  }

  v36 = v20 | v19;
  v37 = (v20 | v19) + v18;
  v38 = v34;
  v39 = ((v33 + ((v30 + ((v27 + (v37 & ~(v20 | v19))) & ~v25)) & ~v28)) & ~v31) + v34;
  if (a3 <= v13)
  {
    v40 = 0;
    if (v13 >= a2)
    {
      goto LABEL_42;
    }

    goto LABEL_25;
  }

  if (v39 > 3)
  {
    v40 = 1;
    if (v13 >= a2)
    {
      goto LABEL_42;
    }

LABEL_25:
    v41 = ~v13 + a2;
    if (v39 >= 4)
    {
      bzero(a1, v39);
      v42 = a1;
      *a1 = v41;
      v43 = 1;
      if (v40 > 1)
      {
        goto LABEL_67;
      }

LABEL_64:
      if (v40)
      {
        v42[v39] = v43;
      }

      return;
    }

    v43 = (v41 >> (8 * v39)) + 1;
    if (v39)
    {
      v46 = v41 & ~(-1 << (8 * v39));
      v42 = a1;
      bzero(a1, v39);
      if (v39 == 3)
      {
        *a1 = v46;
        a1[2] = BYTE2(v46);
        if (v40 > 1)
        {
          goto LABEL_67;
        }

        goto LABEL_64;
      }

      if (v39 != 2)
      {
        *a1 = v41;
        if (v40 > 1)
        {
          goto LABEL_67;
        }

        goto LABEL_64;
      }

      *a1 = v46;
      if (v40 <= 1)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v42 = a1;
      if (v40 <= 1)
      {
        goto LABEL_64;
      }
    }

LABEL_67:
    if (v40 == 2)
    {
      *&v42[v39] = v43;
    }

    else
    {
      *&v42[v39] = v43;
    }

    return;
  }

  v44 = ((a3 - v13 + ~(-1 << (8 * v39))) >> (8 * v39)) + 1;
  if (HIWORD(v44))
  {
    v40 = 4;
  }

  else
  {
    if (v44 < 0x100)
    {
      v45 = 1;
    }

    else
    {
      v45 = 2;
    }

    if (v44 >= 2)
    {
      v40 = v45;
    }

    else
    {
      v40 = 0;
    }
  }

  if (v13 < a2)
  {
    goto LABEL_25;
  }

LABEL_42:
  if (v40 > 1)
  {
    v47 = a1;
    if (v40 != 2)
    {
      *&a1[v39] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_49;
    }

    *&a1[v39] = 0;
LABEL_48:
    if (!a2)
    {
      return;
    }

    goto LABEL_49;
  }

  v47 = a1;
  if (!v40)
  {
    goto LABEL_48;
  }

  a1[v39] = 0;
  if (!a2)
  {
    return;
  }

LABEL_49:
  if (v7 == v13)
  {
    v48 = *(v6 + 56);

    v48();
    return;
  }

  v49 = (&v47[v37] & ~v36);
  if (v9 == v13)
  {
    if (v7 >= v66)
    {
      v50 = *(v6 + 56);
    }

    else
    {
      v50 = *(v65 + 56);
      v49 = (&v49[v26] & ~v20);
    }

    goto LABEL_93;
  }

  v51 = &v49[v27] & ~v25;
  if (v12 == v13)
  {
    if (v7 >= v64)
    {
      v50 = *(v6 + 56);
      v49 = (&v49[v27] & ~v25);

      goto LABEL_77;
    }

    v50 = *(v62 + 56);
    v49 = ((v29 + v51) & ~v22);
LABEL_93:

LABEL_77:
    v50(v49);
    return;
  }

  v52 = ((v30 + v51) & ~v28);
  if (v15 == v13)
  {
    if (v7 >= v61)
    {
      v50 = *(v6 + 56);
      v49 = v52;
    }

    else
    {
      v50 = *(v60 + 56);
      v49 = (&v52[v32] & ~v23);
    }

    goto LABEL_93;
  }

  v53 = (&v52[v33] & ~v31);
  if (v35 >= a2)
  {
    if (v7 >= v17)
    {
      v50 = *(v6 + 56);
      v49 = v53;
    }

    else
    {
      v50 = *(v58 + 56);
      v49 = (&v53[v57] & ~v24);
    }

    goto LABEL_93;
  }

  if (v38 <= 3)
  {
    v54 = ~(-1 << (8 * v38));
  }

  else
  {
    v54 = -1;
  }

  if (v38)
  {
    v55 = v54 & (~v35 + a2);
    if (v38 <= 3)
    {
      v56 = v38;
    }

    else
    {
      v56 = 4;
    }

    bzero(v53, v38);
    if (v56 > 2)
    {
      if (v56 == 3)
      {
        *v53 = v55;
        v53[2] = BYTE2(v55);
      }

      else
      {
        *v53 = v55;
      }
    }

    else if (v56 == 1)
    {
      *v53 = v55;
    }

    else
    {
      *v53 = v55;
    }
  }
}

double CGRect.center.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

CGSize __swiftcall CGSize.inset(by:)(UIEdgeInsets by)
{
  v3 = v1 - by.left - by.right;
  v4 = v2 - by.top - by.bottom;
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

double sub_1C5A23BD0(double *a1, CGFloat *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v9.origin.x = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v9.origin.y = v5;
  v9.size.width = v6;
  v9.size.height = v7;
  v10.origin.x = v3 - CGRectGetWidth(v9) * 0.5;
  *a2 = v10.origin.x;
  v10.origin.y = v5;
  v10.size.width = v6;
  v10.size.height = v7;
  result = v4 - CGRectGetHeight(v10) * 0.5;
  a2[1] = result;
  return result;
}

double CGRect.center.setter(double a1, double a2)
{
  v9.origin.x = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v9.origin.y = v5;
  v9.size.width = v6;
  v9.size.height = v7;
  v10.origin.x = a1 - CGRectGetWidth(v9) * 0.5;
  *v2 = v10.origin.x;
  v10.origin.y = v5;
  v10.size.width = v6;
  v10.size.height = v7;
  result = a2 - CGRectGetHeight(v10) * 0.5;
  v2[1] = result;
  return result;
}

void (*CGRect.center.modify(uint64_t *a1))(CGRect **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *v1;
  v6 = v1[1];
  *(v3 + 56) = v6;
  v7 = v1[2];
  v14 = v7;
  v15 = *&v5;
  *(v3 + 64) = v7;
  v8 = v1[3];
  rect = v8;
  *(v3 + 72) = v8;
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *v3 = v5;
  *(v3 + 16) = v9;
  *&v9 = *(&v5 + 1);
  MidX = CGRectGetMidX(*&v5);
  v16.size.width = v14;
  v16.origin.x = v15;
  v16.origin.y = v6;
  v16.size.height = rect;
  MidY = CGRectGetMidY(v16);
  *(v4 + 32) = MidX;
  *(v4 + 40) = MidY;
  return sub_1C5A23D9C;
}

void sub_1C5A23D9C(CGRect **a1)
{
  v1 = *a1;
  x = (*a1)[2].origin.x;
  y = (*a1)[2].origin.y;
  height = (*a1)[1].size.height;
  v5 = *&(*a1)[1].size.width;
  v6 = (*a1)[1].origin.x;
  v7 = (*a1)[1].origin.y;
  v9.origin.x = v6 - CGRectGetWidth(**a1) * 0.5;
  *v5 = v9.origin.x;
  v9.origin.y = height;
  v9.size.width = x;
  v9.size.height = y;
  v5[1] = v7 - CGRectGetHeight(v9) * 0.5;

  free(v1);
}

BOOL CGRect.isContained(in:percentage:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  v24.size.height = a4;
  v24.origin.x = a1;
  v22.origin.x = a6;
  v22.origin.y = a7;
  v22.size.width = a8;
  v22.size.height = a9;
  v24.origin.y = a2;
  v24.size.width = a3;
  v23 = CGRectIntersection(v22, v24);
  return a8 * a9 * a5 <= v23.size.width * v23.size.height;
}

__C::CGRect __swiftcall CGRect.offset(by:)(UIOffset by)
{
  vertical = by.vertical;
  horizontal = by.horizontal;
  v7.origin.x = v1;
  v7.origin.y = v2;
  v7.size.width = v3;
  v7.size.height = v4;
  return CGRectOffset(v7, horizontal, vertical);
}

__C::CGRect __swiftcall CGRect.inset(by:for:)(NSDirectionalEdgeInsets by, UIUserInterfaceLayoutDirection a2)
{
  v6 = v3;
  if (a2 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    trailing = by.trailing;
  }

  else
  {
    trailing = by.leading;
  }

  v8 = UIEdgeInsetsInsetRect(v2, v6, v4, v5, by.top, trailing);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

UIEdgeInsets __swiftcall CGRect.insets(from:)(__C::CGRect from)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;
  height = from.size.height;
  x = from.origin.x;
  y = from.origin.y;
  width = from.size.width;
  v22 = from.size.width;
  MinY = CGRectGetMinY(from);
  v25.origin.x = v8;
  v25.origin.y = v7;
  v25.size.width = v6;
  v25.size.height = v5;
  v24 = MinY - CGRectGetMinY(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MinX = CGRectGetMinX(v26);
  v27.origin.x = v8;
  v27.origin.y = v7;
  v27.size.width = v6;
  v27.size.height = v5;
  v23 = MinX - CGRectGetMinX(v27);
  v28.origin.x = v8;
  v28.origin.y = v7;
  v28.size.width = v6;
  v28.size.height = v5;
  MaxY = CGRectGetMaxY(v28);
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = v22;
  v29.size.height = height;
  v15 = MaxY - CGRectGetMaxY(v29);
  v30.origin.x = v8;
  v30.origin.y = v7;
  v30.size.width = v6;
  v30.size.height = v5;
  MaxX = CGRectGetMaxX(v30);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = v22;
  v31.size.height = height;
  v17 = MaxX - CGRectGetMaxX(v31);
  v19 = v23;
  v18 = v24;
  v20 = v15;
  result.right = v17;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

__C::CGRect __swiftcall CGRect.applyingLayoutDirection(in:bounds:)(UIView *in, __C::CGRect_optional *bounds)
{
  v6 = v5;
  v7 = v4;
  MinY = v3;
  v9 = v2;
  x = bounds->value.origin.x;
  y = bounds->value.origin.y;
  width = bounds->value.size.width;
  height = bounds->value.size.height;
  v16 = [(UIView *)in effectiveUserInterfaceLayoutDirection];
  if (bounds->is_nil)
  {
    [(UIView *)in bounds];
    x = v17;
    y = v18;
    width = v19;
    height = v20;
  }

  if (v16 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    MaxX = CGRectGetMaxX(v28);
    v29.origin.x = v9;
    v29.origin.y = MinY;
    v29.size.width = v7;
    v29.size.height = v6;
    v22 = MaxX - CGRectGetMinX(v29);
    v30.origin.x = v9;
    v30.origin.y = MinY;
    v30.size.width = v7;
    v30.size.height = v6;
    v23 = v22 - CGRectGetWidth(v30);
    v31.origin.x = v9;
    v31.origin.y = MinY;
    v31.size.width = v7;
    v31.size.height = v6;
    MinY = CGRectGetMinY(v31);
    v9 = v23;
  }

  v24 = v9;
  v25 = MinY;
  v26 = v7;
  v27 = v6;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

__C::CGRect __swiftcall CGRect.applyingLayoutDirection(_:inBounds:)(UIUserInterfaceLayoutDirection _, __C::CGRect inBounds)
{
  v6 = v5;
  v7 = v4;
  MinY = v3;
  v9 = v2;
  if (_ == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    MaxX = CGRectGetMaxX(inBounds);
    v17.origin.x = v9;
    v17.origin.y = MinY;
    v17.size.width = v7;
    v17.size.height = v6;
    v11 = MaxX - CGRectGetMinX(v17);
    v18.origin.x = v9;
    v18.origin.y = MinY;
    v18.size.width = v7;
    v18.size.height = v6;
    v12 = v11 - CGRectGetWidth(v18);
    v19.origin.x = v9;
    v19.origin.y = MinY;
    v19.size.width = v7;
    v19.size.height = v6;
    MinY = CGRectGetMinY(v19);
    v9 = v12;
  }

  v13 = v9;
  v14 = MinY;
  v15 = v7;
  v16 = v6;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

__C::CGRect __swiftcall CGRect.removingLayoutDirection(in:bounds:)(UIView *in, __C::CGRect_optional *bounds)
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = v2;
  x = bounds->value.origin.x;
  y = bounds->value.origin.y;
  width = bounds->value.size.width;
  height = bounds->value.size.height;
  v16 = [(UIView *)in effectiveUserInterfaceLayoutDirection];
  if (bounds->is_nil)
  {
    [(UIView *)in bounds];
    x = v17;
    y = v18;
    width = v19;
    height = v20;
  }

  if (v16 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MaxX = CGRectGetMaxX(v26);
    v27.origin.x = v9;
    v27.origin.y = v8;
    v27.size.width = v7;
    v27.size.height = v6;
    v9 = MaxX - CGRectGetMaxX(v27);
  }

  v22 = v9;
  v23 = v8;
  v24 = v7;
  v25 = v6;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

__C::CGRect __swiftcall CGRect.removingLayoutDirection(_:inBounds:)(UIUserInterfaceLayoutDirection _, __C::CGRect inBounds)
{
  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = v2;
  if (_ == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    MaxX = CGRectGetMaxX(inBounds);
    v15.origin.x = v9;
    v15.origin.y = v8;
    v15.size.width = v7;
    v15.size.height = v6;
    v9 = MaxX - CGRectGetMaxX(v15);
  }

  v11 = v9;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

BOOL sub_1C5A24350(double a1, double a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  if (COERCE__INT64(fabs(a1 - a2)) >= 0x7FF0000000000000)
  {
    return 1;
  }

  v3 = vabdd_f64(a1, a2);
  v4 = fabs(a1);
  v5 = fabs(a2);
  if (v4 <= v5)
  {
    v4 = v5;
  }

  return v3 > fmax(v4 * 2.22044605e-16, COERCE_DOUBLE(1));
}

double CGSize.with(minWidth:)(double result, double a2)
{
  if (result <= a2)
  {
    return a2;
  }

  return result;
}

double sub_1C5A2442C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  if (a1 == 1)
  {
    MaxX = CGRectGetMaxX(*&a2);
    v13.origin.x = a2;
    v13.origin.y = a3;
    v13.size.width = a4;
    v13.size.height = a5;
    return MaxX - (a6 - CGRectGetMinX(v13));
  }

  return a6;
}

BOOL sub_1C5A244AC(double a1, double a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (COERCE__INT64(fabs(a1 - a2)) >= 0x7FF0000000000000)
  {
    return 0;
  }

  v3 = vabdd_f64(a1, a2);
  v4 = fabs(a1);
  v5 = fabs(a2);
  if (v4 <= v5)
  {
    v4 = v5;
  }

  return v3 <= fmax(v4 * 2.22044605e-16, COERCE_DOUBLE(1));
}

double UIEdgeInsets.init(edges:inset:)(char a1, double a2)
{
  if (a1)
  {
    return a2;
  }

  else
  {
    return 0.0;
  }
}

UIEdgeInsets __swiftcall UIEdgeInsets.init(directionalEdgeInsets:layoutDirection:)(UIEdgeInsets directionalEdgeInsets, UIUserInterfaceLayoutDirection layoutDirection)
{
  if (layoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    right = directionalEdgeInsets.right;
  }

  else
  {
    right = directionalEdgeInsets.left;
  }

  if (layoutDirection == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    directionalEdgeInsets.right = directionalEdgeInsets.left;
  }

  v3 = right;
  directionalEdgeInsets.left = v3;
  return directionalEdgeInsets;
}

uint64_t sub_1C5A24558()
{
  sub_1C5BCB754();
  v1 = v0[1];
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1C69501C0](*&v1);
  v2 = v0[2];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1C69501C0](*&v2);
  v3 = v0[3];
  v4 = v0[4];

  return sub_1C5BC37A0(v3, v4);
}

uint64_t sub_1C5A245DC()
{
  sub_1C5BCBF54();
  sub_1C5A24558();
  return sub_1C5BCBF94();
}

uint64_t sub_1C5A24620()
{
  sub_1C5BCBF54();
  sub_1C5A24558();
  return sub_1C5BCBF94();
}

BOOL sub_1C5A2465C(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  sub_1C592535C(0, &qword_1EDA45D70);
  v10 = sub_1C5BCB744();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7)
  {
    return v4 == v8 && v5 == v9;
  }

  return result;
}

void UIView.corner.getter(uint64_t a1@<X8>)
{
  v3 = v1;

  UIView.Corner.init(view:insetBy:)(v3, a1, 0.0);
}

void UIView.Corner.init(view:insetBy:)(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = [a1 layer];
  [v6 cornerRadius];
  v8 = v7;

  v9 = v8 - a3;
  if (v8 - a3 <= 0.0)
  {
    v23 = 0;
    v9 = 0.0;
    v22 = 3;
  }

  else
  {
    [a1 bounds];
    v11 = v10;
    v13 = v12;
    v14 = [a1 layer];
    v15 = [v14 cornerCurve];

    v16 = sub_1C5BCAE74();
    v18 = v17;
    if (v16 == sub_1C5BCAE74() && v18 == v19)
    {

      v22 = 1;
    }

    else
    {
      v21 = sub_1C5BCBDE4();

      v22 = v21 & 1;
    }

    if (v13 >= v11)
    {
      v24 = v11;
    }

    else
    {
      v24 = v13;
    }

    v25 = v24 * 0.5;
    if (v25 == v9)
    {
      goto LABEL_17;
    }

    v26 = fabs(v25);
    if (v26 <= v9)
    {
      v26 = v9;
    }

    if (COERCE__INT64(fabs(v25 - v9)) <= 0x7FEFFFFFFFFFFFFFLL && vabdd_f64(v25, v9) <= fmax(v26 * 2.22044605e-16, COERCE_DOUBLE(1)))
    {
LABEL_17:
      v9 = 0.0;
      v22 = 2;
    }

    v27 = [a1 layer];
    v23 = [v27 maskedCorners];
  }

  *a2 = v9;
  *(a2 + 8) = v22;
  *(a2 + 16) = v23;
}

double UIView.Corner.Radius.value(in:)(double a1, double a2)
{
  if (v2[8] != 2)
  {
    return *v2;
  }

  if (a2 < a1)
  {
    a1 = a2;
  }

  return a1 * 0.5;
}

CALayerCornerCurve __swiftcall UIView.Corner.curve(in:)(__C::CGRect in)
{
  v2 = *(v1 + 8);
  if (v2 == 2)
  {
    x = in.origin.x;
    y = in.origin.y;
    width = in.size.width;
    height = in.size.height;
    v7 = CGRectGetWidth(in);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v8 = CGRectGetHeight(v19);
    v9 = MEMORY[0x1E69796E0];
    if (v7 != v8)
    {
      v10 = v7 - v8;
      v11 = vabdd_f64(v7, v8);
      v12 = fabs(v7);
      v13 = fabs(v8);
      if (v12 > v13)
      {
        v13 = v12;
      }

      v14 = *&v10 & 0x7FFFFFFFFFFFFFFFLL;
      if (v11 > fmax(v13 * 2.22044605e-16, COERCE_DOUBLE(1)) || v14 >= 0x7FF0000000000000)
      {
        v9 = MEMORY[0x1E69796E8];
      }
    }
  }

  else if (v2)
  {
    v9 = MEMORY[0x1E69796E8];
  }

  else
  {
    v9 = MEMORY[0x1E69796E0];
  }

  v16 = *v9;

  return v16;
}

void (*UIView.corner.modify(uint64_t a1))(void *a1)
{
  *(a1 + 24) = v1;
  UIView.Corner.init(view:insetBy:)(v1, a1, 0.0);
  return sub_1C5A24AB0;
}

void sub_1C5A24AB0(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = v2;
  UIView.corner.setter(v3);
}

uint64_t UIView.Corner.init(radius:mask:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = a2;
  return result;
}

void UIView.Corner.radius.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t UIView.Corner.radius.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t UIView.Corner.init(radiusValue:continuous:mask:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = a3 & 1;
  if (a2 & 1 | (*&result <= 0.0))
  {
    v6 = 0;
  }

  else
  {
    v6 = result;
  }

  if (a2 & 1 | (*&result <= 0.0))
  {
    v5 = 3;
    v7 = 0;
  }

  else
  {
    v7 = a4;
  }

  *a5 = v6;
  a5[1] = v5;
  a5[2] = v7;
  return result;
}

uint64_t UIView.Corner.masked(to:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = result;
  return result;
}

uint64_t UIView.Corner.with(corners:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  if (result)
  {
    if ((result & 2) != 0)
    {
      v4 = 3;
      if ((result & 4) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v4 = 1;
      if ((result & 4) == 0)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

  if ((result & 2) == 0)
  {
    v4 = 0;
    if ((result & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v4 |= 4uLL;
    goto LABEL_8;
  }

  v4 = 2;
  if ((result & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((result & 8) != 0)
  {
    v4 |= 8uLL;
  }

  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t UIView.Corner.Radius.init(_:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 & 1 | (*&result <= 0.0))
  {
    v3 = 0;
  }

  else
  {
    v3 = result;
  }

  if (a2 & 1 | (*&result <= 0.0))
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  *a3 = v3;
  *(a3 + 8) = v4;
  return result;
}

void UIView.Corner.Radius.init(view:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 layer];
  [v4 cornerRadius];
  v6 = v5;

  if (v6 <= 0.0)
  {

    *a2 = 0;
    v12 = 3;
  }

  else
  {
    [a1 bounds];
    if (v8 >= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    v10 = v9 * 0.5;
    if (v10 == v6)
    {
      goto LABEL_10;
    }

    v11 = fabs(v10);
    if (v11 <= v6)
    {
      v11 = v6;
    }

    if (COERCE__INT64(fabs(v10 - v6)) <= 0x7FEFFFFFFFFFFFFFLL && vabdd_f64(v10, v6) <= fmax(v11 * 2.22044605e-16, COERCE_DOUBLE(1)))
    {
LABEL_10:

      *a2 = 0;
      v12 = 2;
    }

    else
    {
      v13 = [a1 layer];
      v14 = [v13 cornerCurve];

      v15 = sub_1C5BCAE74();
      v17 = v16;
      if (v15 == sub_1C5BCAE74() && v17 == v18)
      {
        v19 = 1;
      }

      else
      {
        v19 = sub_1C5BCBDE4();
      }

      v12 = v19 & 1;
      *a2 = v6;
    }
  }

  *(a2 + 8) = v12;
}

BOOL static UIView.Corner.Radius.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  v5 = v3 ^ v2 ^ 1;
  if (*a1 != *a2)
  {
    v5 = 0;
  }

  return v5 & 1;
}

BOOL sub_1C5A24E5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 == 2;
  v4 = *(a2 + 8);
  if (v4 != 2)
  {
    v3 = 0;
  }

  if (v2 != 2 && v4 != 2)
  {
    v6 = v4 ^ v2 ^ 1;
    if (*a1 == *a2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

BOOL static UIView.Corner.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 == 2)
  {
    if (v4 == 2)
    {
      return v3 == *(a2 + 16);
    }

    return 0;
  }

  if (v4 == 2)
  {
    return 0;
  }

  result = 0;
  if (*a1 == *a2 && ((v4 ^ v2) & 1) == 0)
  {
    return v3 == *(a2 + 16);
  }

  return result;
}

BOOL sub_1C5A24F04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 == 2)
  {
    if (v4 == 2)
    {
      return v3 == *(a2 + 16);
    }

    return 0;
  }

  if (v4 == 2)
  {
    return 0;
  }

  result = 0;
  if (*a1 == *a2 && ((v4 ^ v2) & 1) == 0)
  {
    return v3 == *(a2 + 16);
  }

  return result;
}

double sub_1C5A24F64()
{
  *&xmmword_1EC1A6A88 = [objc_opt_self() blackColor];
  *(&xmmword_1EC1A6A88 + 8) = xmmword_1C5BD9A50;
  result = 0.0;
  unk_1EC1A6AA0 = xmmword_1C5BD9A60;
  return result;
}

uint64_t sub_1C5A24FBC(char a1)
{
  if (a1)
  {
    if ((a1 & 2) != 0)
    {
      v1 = 3;
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = 1;
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }
    }

LABEL_4:
    v1 |= 4uLL;
    goto LABEL_5;
  }

  if ((a1 & 2) == 0)
  {
    v1 = 0;
    if ((a1 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v1 = 2;
  if ((a1 & 4) != 0)
  {
    goto LABEL_4;
  }

LABEL_5:
  if ((a1 & 8) != 0)
  {
    return v1 | 8;
  }

  return v1;
}

UIEdgeInsets __swiftcall UIEdgeInsets.applyingLayoutDirection(_:)(UIUserInterfaceLayoutDirection a1)
{
  if (a1 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  if (a1 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v2 = v1;
  }

  v4 = v3;
  result.right = v2;
  result.left = v4;
  return result;
}

UIEdgeInsets __swiftcall UIEdgeInsets.negated()()
{
  v4 = -v0;
  v5 = -v1;
  v6 = -v2;
  v7 = -v3;
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

uint64_t UIEdgeInsets.hash(into:)(double a1, double a2, double a3, double a4)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1C69501C0](*&a1);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  MEMORY[0x1C69501C0](*&v7);
  if (a3 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a3;
  }

  MEMORY[0x1C69501C0](*&v8);
  if (a4 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a4;
  }

  return MEMORY[0x1C69501C0](*&v9);
}

uint64_t UIEdgeInsets.hashValue.getter(double a1, double a2, double a3, double a4)
{
  sub_1C5BCBF54();
  UIEdgeInsets.hash(into:)(a1, a2, a3, a4);
  return sub_1C5BCBF94();
}

__n128 sub_1C5A25170@<Q0>(_OWORD *a1@<X8>)
{
  result = *MEMORY[0x1E69DDCE0];
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  *a1 = *MEMORY[0x1E69DDCE0];
  a1[1] = v2;
  return result;
}

float64x2_t sub_1C5A25184@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  result = vaddq_f64(*a1, *a2);
  v4 = vaddq_f64(a1[1], a2[1]);
  *a3 = result;
  a3[1] = v4;
  return result;
}

float64x2_t sub_1C5A2519C(float64x2_t *a1, float64x2_t *a2)
{
  result = vaddq_f64(*a2, *a1);
  v3 = vaddq_f64(a2[1], a1[1]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

float64x2_t sub_1C5A251B4@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  result = vsubq_f64(*a1, *a2);
  v4 = vsubq_f64(a1[1], a2[1]);
  *a3 = result;
  a3[1] = v4;
  return result;
}

float64x2_t sub_1C5A251CC(float64x2_t *a1, float64x2_t *a2)
{
  result = vsubq_f64(*a1, *a2);
  v3 = vsubq_f64(a1[1], a2[1]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C5A251E4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C5BCBF54();
  UIEdgeInsets.hash(into:)(v1, v2, v3, v4);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5A25258()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1C5BCBF54();
  UIEdgeInsets.hash(into:)(v1, v2, v3, v4);
  return sub_1C5BCBF94();
}

uint64_t UIOffset.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x1C69501C0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x1C69501C0](*&v3);
}

uint64_t UIOffset.hashValue.getter(double a1, double a2)
{
  sub_1C5BCBF54();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x1C69501C0](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x1C69501C0](*&v5);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5A25388()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C5BCBF54();
  UIOffset.hash(into:)(v1, v2);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5A253E4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C5BCBF54();
  UIOffset.hash(into:)(v1, v2);
  return sub_1C5BCBF94();
}

BOOL _sSo12UIEdgeInsetsV11MediaCoreUIE3eetoiySbAB_ABtFZ_0(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 == a5)
  {
    goto LABEL_10;
  }

  result = 0;
  v9 = fabs(a1);
  v10 = fabs(a5);
  if (v9 <= v10)
  {
    v9 = v10;
  }

  if (COERCE__INT64(fabs(a1 - a5)) <= 0x7FEFFFFFFFFFFFFFLL && vabdd_f64(a1, a5) <= fmax(v9 * 2.22044605e-16, COERCE_DOUBLE(1)))
  {
LABEL_10:
    if (a2 == a6)
    {
      goto LABEL_15;
    }

    result = 0;
    v11 = fabs(a2);
    v12 = fabs(a6);
    if (v11 <= v12)
    {
      v11 = v12;
    }

    if (COERCE__INT64(fabs(a2 - a6)) <= 0x7FEFFFFFFFFFFFFFLL && vabdd_f64(a2, a6) <= fmax(v11 * 2.22044605e-16, COERCE_DOUBLE(1)))
    {
LABEL_15:
      if (a3 == a7)
      {
        goto LABEL_16;
      }

      result = 0;
      v13 = fabs(a3);
      v14 = fabs(a7);
      if (v13 <= v14)
      {
        v13 = v14;
      }

      if (COERCE__INT64(fabs(a3 - a7)) <= 0x7FEFFFFFFFFFFFFFLL && vabdd_f64(a3, a7) <= fmax(v13 * 2.22044605e-16, COERCE_DOUBLE(1)))
      {
LABEL_16:
        if (a4 == a8)
        {
          return 1;
        }

        else if (COERCE__INT64(fabs(a4 - a8)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v15 = vabdd_f64(a4, a8);
          v16 = fabs(a4);
          v17 = fabs(a8);
          if (v16 <= v17)
          {
            v16 = v17;
          }

          return v15 <= fmax(v16 * 2.22044605e-16, COERCE_DOUBLE(1));
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C5A255EC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s6CornerVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 24))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t _s6CornerV6RadiusOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t _s6CornerV6RadiusOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1C5A25730(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5A2574C(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 8) = a2 + 1;
  }

  return result;
}

void sub_1C5A25774(uint64_t a1)
{
  v3 = [v1 layer];
  v4 = [*a1 CGColor];
  [v3 setShadowColor_];

  v5 = [v1 layer];
  [v5 setShadowOffset_];

  v6 = [v1 layer];
  [v6 setShadowRadius_];

  v8 = [v1 layer];
  v7 = *(a1 + 8);
  *&v7 = v7;
  [v8 setShadowOpacity_];
}

uint64_t sub_1C5A25898(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5A258E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C5A2593C()
{
  result = qword_1EC193F48;
  if (!qword_1EC193F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193F48);
  }

  return result;
}

unint64_t sub_1C5A259C0()
{
  result = qword_1EC193F50;
  if (!qword_1EC193F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193F50);
  }

  return result;
}

uint64_t sub_1C5A25A24(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *v5 = a3;
  *&v5[1] = a4;
  return MEMORY[0x1C694E550](v5, a1, &type metadata for OffsetEffect, a2);
}

CGFloat sub_1C5A25A5C@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  CGAffineTransformMakeTranslation(&v8, *v3 * a2, v3[1] * a3);
  result = v8.a;
  v6 = *&v8.c;
  v7 = *&v8.tx;
  *a1 = *&v8.a;
  *(a1 + 16) = 0;
  *(a1 + 24) = v6;
  *(a1 + 40) = 0;
  *(a1 + 48) = v7;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

__n128 sub_1C5A25ABC@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 sub_1C5A25AC8(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 (*sub_1C5A25AD4(uint64_t a1))(__n128 *a1)
{
  *(a1 + 16) = v1;
  *a1 = *v1;
  return sub_1C5A25B00;
}

__n128 sub_1C5A25B00(__n128 *a1)
{
  result = *a1;
  *a1[1].n128_u64[0] = *a1;
  return result;
}

unint64_t sub_1C5A25B14()
{
  result = qword_1EC193F60;
  if (!qword_1EC193F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193F60);
  }

  return result;
}

unint64_t sub_1C5A25B6C()
{
  result = qword_1EC195930;
  if (!qword_1EC195930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC195930);
  }

  return result;
}

uint64_t sub_1C5A25BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C5A25EB0();

  return MEMORY[0x1EEDDEA98](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1C5A25C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C5A25EB0();

  return MEMORY[0x1EEDDEA80](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1C5A25D4C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C5BC90F4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  sub_1C5BC8DF4();
  (*(v3 + 104))(v6, *MEMORY[0x1E697F608], v2);
  sub_1C5BC8274();
  v9 = *(v3 + 8);
  v9(v6, v2);
  v9(v8, v2);

  *a1 = result;
  return result;
}

unint64_t sub_1C5A25EB0()
{
  result = qword_1EC193F68;
  if (!qword_1EC193F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193F68);
  }

  return result;
}

uint64_t sub_1C5A25F14()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C5A25FA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 48) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 40) & ~v6);
      }

      v16 = *(v15 + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1C5A26134(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 48) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 40) & ~v9);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *v19 = a2 & 0x7FFFFFFF;
    v19[1] = 0;
  }

  else
  {
    v19[1] = a2 - 1;
  }
}

uint64_t sub_1C5A263C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194018);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194020);
  v32 = MEMORY[0x1E6981840];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194028);
  v20 = *(a1 + 16);
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  v28 = *(a1 + 24);
  v3 = v28;
  v29 = sub_1C5A28074(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192980);
  v33 = sub_1C5BC8AB4();
  swift_getTupleTypeMetadata();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v4 = sub_1C5BCA714();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = sub_1C5BC8AB4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  sub_1C5BC8FA4();
  v23 = v20;
  v24 = v3;
  v25 = v21;
  sub_1C5BCA704();
  if (qword_1EC190650 != -1)
  {
    swift_once();
  }

  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA2E4();
  (*(v5 + 8))(v7, v4);
  v26 = WitnessTable;
  v27 = MEMORY[0x1E697E5D8];
  v16 = swift_getWitnessTable();
  sub_1C593EDC0(v12, v8, v16);
  v17 = *(v9 + 8);
  v17(v12, v8);
  sub_1C593EDC0(v14, v8, v16);
  return (v17)(v14, v8);
}

uint64_t sub_1C5A26800@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v119 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194028);
  sub_1C5BC97C4();
  v120 = a2;
  v8 = sub_1C5BC8AB4();
  v122 = a3;
  v166 = a3;
  v167 = sub_1C5A28074(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v116 = v8;
  WitnessTable = swift_getWitnessTable();
  v118 = v7;
  v114 = sub_1C5BC8BE4();
  v9 = sub_1C5BC8AB4();
  v117 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v115 = &v100 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192980);
  v11 = sub_1C5BC8AB4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v100 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194020);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v100 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194018);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v121 = a1;
  v29 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v104 = v26;
    v105 = v9;
    v106 = v18;
    v107 = v12;
    v123 = &v100 - v27;
    v124 = v23;
    v108 = v28;
    v109 = v17;
    v110 = v21;
    v111 = v15;
    v112 = v11;
    v15 = v157;
    v17 = &v142;
    v12 = &v139;
    *&v142 = v29;
    a1 = sub_1C5BCBD64();
    v11 = v30;
    if (qword_1EC190650 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  v165 = 0;
  v31 = v121;
  v32 = *(v121 + 24);
  if (v32)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = 1.0;
  }

  v34 = sub_1C5BCAA54();
  v36 = v35;
  sub_1C5A27354(v31, &v142);
  v37 = v12[10];
  v38 = v12[11];
  v157[0] = a1;
  v157[1] = v11;
  v158 = 0;
  v159 = MEMORY[0x1E69E7CC0];
  v39 = v15[11];
  v17[20] = v15[10];
  v17[21] = v39;
  v17[22] = v15[12];
  v160 = v33;
  *(v15 + 88) = v37;
  *(v15 + 104) = v38;
  v161 = v34;
  v162 = v36;
  v163 = 0;
  v164 = v32;
  v40 = v15[7];
  v12[16] = v15[6];
  v12[17] = v40;
  v12[18] = v15[8];
  BYTE7(v148) = v32;
  v41 = v15[3];
  v12[12] = v15[2];
  v12[13] = v41;
  v42 = v15[5];
  v12[14] = v15[4];
  v12[15] = v42;
  v43 = v15[1];
  v12[10] = *v15;
  v12[11] = v43;
  v103 = objc_opt_self();
  v44 = [v103 mainBundle];
  v45 = sub_1C5949F2C();
  v47 = v46;

  *&v139 = v45;
  *(&v139 + 1) = v47;
  MEMORY[0x1C694F170](46, 0xE100000000000000);
  MEMORY[0x1C694F170](0xD000000000000017, 0x80000001C5BF7D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194030);
  sub_1C5A27BC4();
  sub_1C5BCA164();
  sub_1C5924EF4(v157, &qword_1EC194030);

  v48 = *(v31 + 16);
  *&v142 = *(v31 + 8);
  *(&v142 + 1) = v48;
  v102 = sub_1C594A23C();

  v49 = sub_1C5BC9CA4();
  v51 = v50;
  v53 = v52;
  sub_1C5BC9924();
  v54 = sub_1C5BC9C14();
  v56 = v55;
  v58 = v57;
  v101 = v59;

  sub_1C5953BD8(v49, v51, v53 & 1);

  sub_1C5BCAA64();
  sub_1C5BC8BD4();
  v149 = v58 & 1;
  KeyPath = swift_getKeyPath();
  *&v142 = v54;
  *(&v142 + 1) = v56;
  LOBYTE(v143) = v58 & 1;
  v61 = v155;
  v12[16] = v154;
  v12[17] = v61;
  v12[18] = v156;
  v62 = v151;
  v12[12] = v150;
  v12[13] = v62;
  v63 = v153;
  v12[14] = v152;
  v12[15] = v63;
  *(&v143 + 1) = v101;
  *(&v148 + 7) = KeyPath;
  HIBYTE(v148) = 0;
  v64 = v12[16];
  v65 = v12[18];
  v12[7] = v12[17];
  v12[8] = v65;
  *(v12 + 137) = v148;
  v66 = v144;
  v67 = v146;
  v68 = v147;
  v12[3] = v145;
  v12[4] = v67;
  v12[5] = v68;
  v12[6] = v64;
  v139 = v142;
  v12[1] = v143;
  v12[2] = v66;
  v69 = [v103 mainBundle];
  v70 = sub_1C5949F2C();
  v72 = v71;

  v129 = v70;
  v130 = v72;
  MEMORY[0x1C694F170](46, 0xE100000000000000);
  MEMORY[0x1C694F170](0xD000000000000017, 0x80000001C5BF7D50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194070);
  sub_1C5A27DE0();
  sub_1C5BCA164();
  sub_1C5924EF4(&v142, &qword_1EC194070);

  v73 = v121[5];
  *&v139 = v121[4];
  *(&v139 + 1) = v73;

  v74 = sub_1C5BC9CA4();
  v76 = v75;
  LOBYTE(v72) = v77;
  v78 = sub_1C5BC9BD4();
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v103 = v83;
  sub_1C5953BD8(v74, v76, v72 & 1);

  *&v139 = v78;
  *(&v139 + 1) = v80;
  LOBYTE(v140) = v82 & 1;
  v141 = v84;
  v85 = sub_1C5BCAA74();
  v102 = &v100;
  MEMORY[0x1EEE9AC00](v85);
  v86 = sub_1C5A27F34();
  v87 = v115;
  sub_1C5BCA2C4();
  sub_1C5953BD8(v78, v80, v82 & 1);

  sub_1C5BC9904();
  v88 = swift_getWitnessTable();
  v137 = v86;
  v138 = v88;
  v89 = v105;
  v90 = swift_getWitnessTable();
  v91 = v111;
  sub_1C5BCA1F4();

  (*(v117 + 8))(v87, v89);
  v92 = sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
  v135 = v90;
  v136 = v92;
  v93 = v112;
  v122 = swift_getWitnessTable();
  v94 = v109;
  sub_1C593EDC0(v91, v93, v122);
  v95 = v107;
  v96 = *(v107 + 1);
  v96(v91, v93);
  v97 = v108;
  sub_1C59400B0(v123, v108, &qword_1EC194018);
  *&v139 = v97;
  v98 = v110;
  sub_1C59400B0(v124, v110, &qword_1EC194020);
  v133 = 0;
  v134 = 1;
  *(&v139 + 1) = v98;
  v140 = &v133;
  (*(v95 + 2))(v91, v94, v93);
  v141 = v91;
  v129 = v104;
  v130 = v106;
  v131 = MEMORY[0x1E6981840];
  v132 = v93;
  v125 = sub_1C5A27FC0(&qword_1EC194090, &qword_1EC194018, &unk_1C5BD9F68, sub_1C5A27BC4);
  v126 = sub_1C5A27FC0(&qword_1EC194098, &qword_1EC194020, &unk_1C5BD9F70, sub_1C5A27DE0);
  v127 = MEMORY[0x1E6981838];
  v128 = v122;
  sub_1C594226C(&v139, 4uLL, &v129);
  v96(v94, v93);
  sub_1C5924EF4(v124, &qword_1EC194020);
  sub_1C5924EF4(v123, &qword_1EC194018);
  v96(v91, v93);
  sub_1C5924EF4(v98, &qword_1EC194020);
  return sub_1C5924EF4(v97, &qword_1EC194018);
}

uint64_t sub_1C5A27354@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    type metadata accessor for NowPlayingRouteObserver();
    sub_1C5A28074(&qword_1EDA48458, type metadata accessor for NowPlayingRouteObserver);
    v3 = sub_1C5BC8C84();
    v5 = v4;
    type metadata accessor for NowPlayingViewModel.PlaybackPosition();
    sub_1C5A28074(&qword_1EDA4A740, type metadata accessor for NowPlayingViewModel.PlaybackPosition);
    result = sub_1C5BC8C84();
  }

  else
  {
    v5 = 0;
    result = 0;
    v7 = 0;
    v3 = 1;
  }

  *a2 = v3;
  a2[1] = v5;
  a2[2] = result;
  a2[3] = v7;
  return result;
}

uint64_t sub_1C5A27444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C5BC97C4();
  v4 = sub_1C5BC8AB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v15 - v9;
  type metadata accessor for TrackSectionText();
  sub_1C595BB1C(0xD000000000000017, 0x80000001C5BF7D70);
  v11 = sub_1C5A28074(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v15[0] = a3;
  v15[1] = v11;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v8, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v8, v4);
  sub_1C593EDC0(v10, v4, WitnessTable);
  return (v13)(v10, v4);
}

void sub_1C5A2762C(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    swift_beginAccess();
    v6 = 3;
    if (*(a2 + 72) == 2 || *(a2 + 64) == 0.0)
    {
LABEL_9:
      *a3 = v6;
      return;
    }

    if (a1)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_1C5BC8034();

      v6 = 1;
      if (v8)
      {
        v7 = sub_1C5B21F20();

        if ((v7 & 1) == 0)
        {
          v6 = 0;
        }
      }

      goto LABEL_9;
    }
  }

  else
  {
    type metadata accessor for NowPlayingViewModel.PlaybackPosition();
    sub_1C5A28074(&qword_1EDA4A740, type metadata accessor for NowPlayingViewModel.PlaybackPosition);
    sub_1C5BC8C74();
    __break(1u);
  }

  type metadata accessor for NowPlayingRouteObserver();
  sub_1C5A28074(&qword_1EDA48458, type metadata accessor for NowPlayingRouteObserver);
  sub_1C5BC8C74();
  __break(1u);
}

uint64_t sub_1C5A277CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1C5A2762C(a1, a2, &v10);
  v4 = v10;
  KeyPath = swift_getKeyPath();
  sub_1C5BCA4C4();
  sub_1C5A28198();

  v6 = sub_1C5BCB704();

  v7 = sub_1C5BCB704();

  v8 = sub_1C5BCB704();
  result = sub_1C5BCB704();
  *a3 = v4;
  *(a3 + 8) = KeyPath;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = v6;
  *(a3 + 56) = v7;
  *(a3 + 64) = v8;
  *(a3 + 72) = result;
  return result;
}

uint64_t sub_1C5A27898@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v22 - v5);
  v7 = sub_1C5BC90F4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - v12;
  if ((a1 & 1) == 0)
  {
    v20 = sub_1C5BCA4C4();
LABEL_8:
    v22[1] = v20;
    goto LABEL_9;
  }

  sub_1C5BC8DF4();
  (*(v8 + 104))(v11, *MEMORY[0x1E697F600], v7);
  v14 = sub_1C5BC8274();
  v15 = *(v8 + 8);
  v15(v11, v7);
  v15(v13, v7);
  if ((v14 & 1) == 0)
  {
    v20 = sub_1C5BCA524();
    goto LABEL_8;
  }

  if (qword_1EC190670 != -1)
  {
    swift_once();
  }

  v16 = qword_1EC1A6AB8;
  v17 = *(v4 + 36);
  v18 = *MEMORY[0x1E6981DB8];
  v19 = sub_1C5BCAB54();
  (*(*(v19 - 8) + 104))(v6 + v17, v18, v19);
  *v6 = v16;
  sub_1C5924F54(&qword_1EC192920, &unk_1EC196170);

LABEL_9:
  result = sub_1C5BC85E4();
  *a2 = result;
  return result;
}

double sub_1C5A27BA0()
{
  result = 32.0;
  xmmword_1EC193F70 = xmmword_1C5BD9E30;
  unk_1EC193F80 = xmmword_1C5BD9E40;
  qword_1EC193F90 = 0;
  return result;
}

unint64_t sub_1C5A27BC4()
{
  result = qword_1EC194038;
  if (!qword_1EC194038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194030);
    sub_1C5A27C7C();
    sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194038);
  }

  return result;
}

unint64_t sub_1C5A27C7C()
{
  result = qword_1EC194040;
  if (!qword_1EC194040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194048);
    sub_1C5A27D34();
    sub_1C5924F54(&qword_1EC194060, &qword_1EC194068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194040);
  }

  return result;
}

unint64_t sub_1C5A27D34()
{
  result = qword_1EC194050;
  if (!qword_1EC194050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194058);
    sub_1C5A27EB8(&qword_1EDA465A8, &qword_1EC1918A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194050);
  }

  return result;
}

unint64_t sub_1C5A27DE0()
{
  result = qword_1EC194078;
  if (!qword_1EC194078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194070);
    sub_1C5A27EB8(&qword_1EC192C98, &qword_1EC192CA0);
    sub_1C5924F54(&unk_1EC1964E0, &qword_1EC194080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194078);
  }

  return result;
}

uint64_t sub_1C5A27EB8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C5A27F34()
{
  result = qword_1EC194088;
  if (!qword_1EC194088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194028);
    sub_1C5953670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194088);
  }

  return result;
}

uint64_t sub_1C5A27FC0(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1C5A28074(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5A28074(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5A280BC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5A28118(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1C5A28198()
{
  result = qword_1EDA45D98;
  if (!qword_1EDA45D98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA45D98);
  }

  return result;
}

unint64_t sub_1C5A281E4()
{
  result = qword_1EC1940A0;
  if (!qword_1EC1940A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1940A8);
    sub_1C5A28270();
    sub_1C5A282C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1940A0);
  }

  return result;
}

unint64_t sub_1C5A28270()
{
  result = qword_1EC1940B0;
  if (!qword_1EC1940B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1940B0);
  }

  return result;
}

unint64_t sub_1C5A282C4()
{
  result = qword_1EDA47948;
  if (!qword_1EDA47948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47948);
  }

  return result;
}

uint64_t sub_1C5A28318()
{
  sub_1C5A058F8();

  return sub_1C5BC8F44();
}

uint64_t sub_1C5A28360@<X0>(_BYTE *a1@<X8>)
{
  sub_1C5A058F8();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t MotionCacheDownloadPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t MCUINamespace<A>.motionCacheDownload(policy:)()
{
  swift_getKeyPath();
  sub_1C5BC9DF4();
}

uint64_t sub_1C5A284FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5A2866C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t View.motionCacheDownload(policy:)(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for MCUINamespace();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-v6];
  LOBYTE(a1) = *a1;
  View.mcui.getter(a2, &v9[-v6]);
  v9[15] = a1;
  MCUINamespace<A>.motionCacheDownload(policy:)();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1C5A2866C()
{
  result = qword_1EC1940B8;
  if (!qword_1EC1940B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1940B8);
  }

  return result;
}

unint64_t sub_1C5A286D0()
{
  result = qword_1EC1940C8;
  if (!qword_1EC1940C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1940C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1940C8);
  }

  return result;
}

uint64_t EnvironmentValues.mcui.setter(uint64_t a1)
{
  v3 = sub_1C5BC8F34();
  v6 = *(v3 - 8);
  (*(v6 + 8))(v1, v3);
  v4 = *(v6 + 32);

  return v4(v1, a1, v3);
}

uint64_t sub_1C5A2880C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = type metadata accessor for MCUINamespace();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return View.mcui.setter(v8, v5);
}

uint64_t View.mcui.setter(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 - 8);
  (*(v7 + 8))(v2);
  v5 = *(v7 + 32);

  return v5(v2, a1, a2);
}

void (*View.mcui.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = type metadata accessor for MCUINamespace();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  View.mcui.getter(a2, v11);
  return sub_1C5A28AAC;
}

void sub_1C5A28AAC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, v5);
    v9 = *(v8 - 8);
    (*(v9 + 8))(v7, v8);
    (*(v9 + 32))(v7, v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v11 = *v2;
    v10 = v2[1];
    v12 = *(*v2 - 8);
    (*(v12 + 8))(v10, *v2);
    (*(v12 + 32))(v10, v4, v11);
  }

  free(v4);
  free(v3);

  free(v2);
}

void (*EnvironmentValues.mcui.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191938) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[2] = v7;
  v9 = sub_1C5BC8F34();
  v5[3] = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v5[4] = v11;
  v5[5] = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v8, v1, v9);
  return sub_1C5A28D58;
}

void sub_1C5A28D58(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = **a1;
  v6 = (*a1)[1];
  if (a2)
  {
    sub_1C593F7E4((*a1)[2], v6);
    v3(v7, v6, v5);
    sub_1C59B2FC0(v4);
  }

  else
  {
    v3(**a1, v4, v5);
  }

  free(v4);
  free(v6);

  free(v2);
}

uint64_t Text.mcui.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  v5 = a3 & 1;
  *(a5 + 16) = v5;
  *(a5 + 24) = a4;
  sub_1C59AEE34(a1, a2, v5);
}

uint64_t sub_1C5A28E44(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  sub_1C59AEE34(*a1, v4, v5);

  sub_1C5953BD8(v7, v8, v9);

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

__n128 Text.mcui.setter(__n128 *a1)
{
  sub_1C5953BD8(*v1, *(v1 + 8), *(v1 + 16));

  v3 = a1[1].n128_u8[0];
  v4 = a1[1].n128_u64[1];
  result = *a1;
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

void (*Text.mcui.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  *(v4 + 40) = *v1;
  v6 = *(v1 + 8);
  *(v4 + 48) = v6;
  v7 = *(v1 + 16);
  *(v4 + 64) = v7;
  v8 = *(v1 + 24);
  *(v4 + 56) = v8;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  sub_1C59AEE34(v5, v6, v7);

  return sub_1C5A28FC4;
}

void sub_1C5A28FC4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  if (a2)
  {
    v7 = *v2;
    v8 = *(v2 + 8);
    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    sub_1C59AEE34(*v2, v8, v9);

    sub_1C5953BD8(v5, v4, v3);

    *v6 = v7;
    *(v6 + 8) = v8;
    *(v6 + 16) = v9;
    *(v6 + 24) = v10;
    sub_1C5953BD8(*v2, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    sub_1C5953BD8(*(*a1 + 40), v4, v3);

    v11 = *(v2 + 16);
    v12 = *(v2 + 24);
    *v6 = *v2;
    *(v6 + 16) = v11;
    *(v6 + 24) = v12;
  }

  free(v2);
}

uint64_t (*CALayer.mcui.modify(void *a1))()
{
  *a1 = v1;
  v2 = v1;
  return sub_1C5A29518;
}

void (*UITabBarController.mcui.modify(void *a1))(id *a1)
{
  *a1 = v1;
  v2 = v1;
  return sub_1C5A29164;
}

uint64_t (*UISplitViewController.mcui.modify(void *a1))()
{
  *a1 = v1;
  v2 = v1;
  return sub_1C5A29518;
}

uint64_t sub_1C5A291C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1C5A29308(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t MCUINamespace<A>.parallaxEffect(scrollTargetBehaviors:autoAdjustsNavigationBarTint:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ParallaxEffectViewModifier();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = sub_1C5A2C9BC(v10);
  v13 = v12;
  *&v9[v7[6]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E50);
  swift_storeEnumTagMultiPayload();
  *v9 = v11;
  *(v9 + 1) = v13;
  v9[16] = a2;
  type metadata accessor for ParallaxContext();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C5BDA270;
  v15 = _UISolariumEnabled();
  v16 = 0;
  if ((v15 & 1) == 0)
  {
    v16 = sub_1C5BCA494();
  }

  v17 = &v9[v7[7]];
  *(v14 + 32) = v16;
  *(v14 + 40) = 1;
  *(v14 + 48) = 0;
  sub_1C5BC7BA4();
  v28[0] = v14;
  sub_1C5BCA684();
  v18 = *(&v29 + 1);
  *v17 = v29;
  *(v17 + 1) = v18;
  v19 = &v9[v7[8]];
  v28[0] = 0;
  v28[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1940D8);
  sub_1C5BCA684();
  v20 = v30;
  *v19 = v29;
  *(v19 + 2) = v20;
  v21 = &v9[v7[9]];
  v28[0] = 0;
  sub_1C5BCA684();
  v22 = *(&v29 + 1);
  *v21 = v29;
  *(v21 + 1) = v22;
  v23 = &v9[v7[10]];
  LOBYTE(v28[0]) = 1;
  sub_1C5BCA684();
  v24 = *(&v29 + 1);
  *v23 = v29;
  *(v23 + 1) = v24;
  v25 = &v9[v7[11]];
  LOBYTE(v28[0]) = 1;
  sub_1C5BCA684();
  v26 = *(&v29 + 1);
  *v25 = v29;
  *(v25 + 1) = v26;
  MEMORY[0x1C694E550](v9, *(a3 + 16), v7, a4);
  return sub_1C5A2CAE8(v9);
}

uint64_t type metadata accessor for ParallaxEffectViewModifier()
{
  result = qword_1EDA47B10;
  if (!qword_1EDA47B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5A297D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E50);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ParallaxEffectViewModifier();
  sub_1C5A2D9BC(v1 + *(v10 + 24), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v4 + 32))(a1, v9, v3);
  }

  sub_1C5BCB4E4();
  v12 = sub_1C5BC9844();
  sub_1C5BC7C54();

  sub_1C5BC8F24();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1C5A299A8()
{
  type metadata accessor for ParallaxEffectViewModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194158);
  sub_1C5BCA694();
  swift_getKeyPath();
  sub_1C5A2DA7C(&qword_1EC194160, type metadata accessor for ParallaxContext);
  sub_1C5BC7B74();

  swift_beginAccess();
  v0 = *(v4 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
  sub_1C5BCA694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  result = sub_1C5BCA694();
  if (v0 <= v3 != LOBYTE(v3))
  {
    v2 = sub_1C5BCAB34();
    MEMORY[0x1EEE9AC00](v2);
    sub_1C5BC87F4();
  }

  return result;
}

uint64_t sub_1C5A29BB0()
{
  type metadata accessor for ParallaxEffectViewModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  return sub_1C5BCA6A4();
}

uint64_t sub_1C5A29C34@<X0>(uint64_t a1@<X8>)
{
  v136 = a1;
  v2 = sub_1C5BC8F64();
  v133 = *(v2 - 8);
  v134 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v132 = &v95[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for ParallaxEffectViewModifier();
  v126 = *(v4 - 8);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4 - 8);
  v135 = v6;
  v116 = &v95[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v139 = sub_1C5BC93D4();
  v141 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v99 = &v95[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1940E8);
  v115 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v112 = &v95[-v8];
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1940F0);
  v103 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v138 = &v95[-v9];
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1940F8);
  v106 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v100 = &v95[-v10];
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194100);
  v108 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v105 = &v95[-v11];
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194108);
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v95[-v12];
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194110);
  MEMORY[0x1EEE9AC00](v114);
  v118 = &v95[-v13];
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194118);
  v121 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v117 = &v95[-v14];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194120);
  MEMORY[0x1EEE9AC00](v113);
  v120 = &v95[-v15];
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194128);
  MEMORY[0x1EEE9AC00](v119);
  v124 = &v95[-v16];
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194130);
  MEMORY[0x1EEE9AC00](v122);
  v125 = &v95[-v17];
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194138);
  MEMORY[0x1EEE9AC00](v129);
  v127 = &v95[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194140);
  v130 = *(v19 - 8);
  v131 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v128 = &v95[-v20];
  v21 = v5;
  v98 = v5;
  v22 = *(v5 + 52);
  v23 = v1;
  v137 = v1;
  v24 = (v1 + v22);
  v25 = *v24;
  v26 = *(v24 + 1);
  LOBYTE(v142) = v25;
  *(&v142 + 1) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  sub_1C5BCA694();
  v27 = v145;
  v28 = sub_1C5BC98A4();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194148);
  v30 = sub_1C5924F54(&qword_1EC194150, &qword_1EC194148);
  MEMORY[0x1C694E390](v27, v28, v29, v30);
  v31 = sub_1C5BC98A4();
  v32 = (v23 + *(v21 + 36));
  v33 = v32[1];
  v140 = *v32;
  *&v142 = v140;
  *(&v142 + 1) = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194158);
  sub_1C5BCA694();
  v35 = v145;
  swift_getKeyPath();
  *&v142 = v35;
  v36 = sub_1C5A2DA7C(&qword_1EC194160, type metadata accessor for ParallaxContext);
  sub_1C5BC7B74();

  v37 = *(v35 + 48);

  v38 = v99;
  sub_1C5BC93A4();
  *&v142 = v29;
  *(&v142 + 1) = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v102;
  v41 = v112;
  MEMORY[0x1C694E150](v31, v37 ^ 0x8000000000000000, 0, v38, v102, OpaqueTypeConformance2);
  v42 = *(v141 + 8);
  v141 += 8;
  v97 = v42;
  v43 = v38;
  v42(v38, v139);
  (*(v115 + 8))(v41, v40);
  v96 = sub_1C5BC98A4();
  *&v142 = v140;
  *(&v142 + 1) = v33;
  v44 = v137;
  v115 = v33;
  v45 = v101;
  v112 = v34;
  sub_1C5BCA694();
  v46 = v145;
  swift_getKeyPath();
  *&v142 = v46;
  v111 = v36;
  sub_1C5BC7B74();
  v47 = v100;

  v48 = *(v46 + 48);

  sub_1C5BC93B4();
  *&v142 = v40;
  *(&v142 + 1) = OpaqueTypeConformance2;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v48;
  v51 = v138;
  MEMORY[0x1C694E150](v96, v50, 0, v43, v45, v49);
  v97(v43, v139);
  (*(v103 + 8))(v51, v45);
  v53 = *v44;
  v52 = v44[1];
  v54 = v44;
  v55 = v44 + *(v98 + 40);
  v56 = *(v55 + 2);
  v142 = *v55;
  v143 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194168);
  sub_1C5BCA694();
  if (v52)
  {
    *(v52 + 16) = v145;
  }

  *&v142 = v53;
  *(&v142 + 1) = v52;
  *&v145 = v45;
  *(&v145 + 1) = v49;
  swift_getOpaqueTypeConformance2();
  sub_1C5A2CE58();
  v57 = v105;
  v58 = v109;
  sub_1C5BCA104();
  (*(v106 + 8))(v47, v58);
  v59 = v116;
  sub_1C5A2CEAC(v54, v116);
  v60 = (*(v126 + 80) + 16) & ~*(v126 + 80);
  v61 = swift_allocObject();
  sub_1C5A2CF10(v59, v61 + v60);
  v62 = v107;
  (*(v108 + 32))(v107, v57, v110);
  v63 = &v62[*(v104 + 36)];
  *v63 = sub_1C5A2CF74;
  v63[1] = v61;
  sub_1C5A2CEAC(v54, v59);
  v64 = swift_allocObject();
  sub_1C5A2CF10(v59, v64 + v60);
  v65 = v62;
  v66 = v118;
  sub_1C59E7D34(v65, v118, &qword_1EC194108);
  v67 = &v66[*(v114 + 36)];
  *v67 = sub_1C5A2AD10;
  v67[1] = 0;
  v67[2] = sub_1C5A2CFE4;
  v67[3] = v64;
  v69 = v132;
  v68 = v133;
  v70 = v134;
  (*(v133 + 104))(v132, *MEMORY[0x1E697C438], v134);
  sub_1C5A2CFFC();
  v71 = v117;
  sub_1C5BCA1B4();
  (*(v68 + 8))(v69, v70);
  sub_1C5924EF4(v66, &qword_1EC194110);
  v72 = v137;
  sub_1C5A2CEAC(v137, v59);
  v73 = swift_allocObject();
  sub_1C5A2CF10(v59, v73 + v60);
  v74 = v120;
  (*(v121 + 32))(v120, v71, v123);
  v75 = &v74[*(v113 + 36)];
  *v75 = sub_1C5A2D2A8;
  v75[1] = v73;
  sub_1C5A2CEAC(v72, v59);
  v76 = swift_allocObject();
  sub_1C5A2CF10(v59, v76 + v60);
  v77 = v74;
  v78 = v124;
  sub_1C59E7D34(v77, v124, &qword_1EC194120);
  v79 = &v78[*(v119 + 36)];
  *v79 = sub_1C5A2D2C0;
  v79[1] = v76;
  sub_1C5A2CEAC(v72, v59);
  v80 = swift_allocObject();
  sub_1C5A2CF10(v59, v80 + v60);
  v81 = v78;
  v82 = v125;
  sub_1C59E7D34(v81, v125, &qword_1EC194128);
  v83 = &v82[*(v122 + 36)];
  *v83 = sub_1C5A2D2D8;
  v83[1] = v80;
  sub_1C5A2CEAC(v72, v59);
  v84 = swift_allocObject();
  sub_1C5A2CF10(v59, v84 + v60);
  v85 = v127;
  sub_1C59E7D34(v82, v127, &qword_1EC194130);
  v86 = v129;
  v87 = &v85[*(v129 + 36)];
  *v87 = sub_1C5A2D348;
  v87[1] = v84;
  v88 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
  v89 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
  *&v142 = v88;
  *(&v142 + 1) = v89;
  v90 = sub_1C5A2D3E4();
  v91 = sub_1C5A2D700();
  v92 = v128;
  sub_1C5BCA124();

  sub_1C5924EF4(v85, &qword_1EC194138);
  *&v142 = v140;
  *(&v142 + 1) = v115;
  sub_1C5BCA694();
  type metadata accessor for ParallaxContext();
  *&v142 = v86;
  *(&v142 + 1) = &type metadata for ParallaxNavigationItemAdaptor;
  v143 = v90;
  v144 = v91;
  swift_getOpaqueTypeConformance2();
  v93 = v131;
  sub_1C5BC9DE4();

  return (*(v130 + 8))(v92, v93);
}

uint64_t sub_1C5A2AC94()
{
  type metadata accessor for ParallaxEffectViewModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194168);
  return sub_1C5BCA6A4();
}

uint64_t sub_1C5A2AD10@<X0>(void *a1@<X8>)
{
  result = sub_1C5BC86B4();
  *a1 = v3;
  return result;
}

uint64_t sub_1C5A2AD3C(double *a1)
{
  v1 = *a1;
  type metadata accessor for ParallaxEffectViewModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194158);
  sub_1C5BCA694();
  if (*(v4 + 48) == v1)
  {
    *(v4 + 48) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A2DA7C(&qword_1EC194160, type metadata accessor for ParallaxContext);
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C5A2AEA4(double *a1)
{
  v1 = *a1;
  if (*a1 > 0.0 || (type metadata accessor for ParallaxEffectViewModifier(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0), sub_1C5BCA694(), (v10 & 1) != 0))
  {
    type metadata accessor for ParallaxEffectViewModifier();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194158);
    sub_1C5BCA694();
    swift_beginAccess();
    if (*(v10 + 16) == v1)
    {
      *(v10 + 16) = v1;
LABEL_8:

      goto LABEL_10;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194158);
    sub_1C5BCA694();
    swift_beginAccess();
    if (*(v10 + 16) == COERCE_DOUBLE(0x8000000000000001))
    {
      *(v10 + 16) = 0x8000000000000001;
      goto LABEL_8;
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C5A2DA7C(&qword_1EC194160, type metadata accessor for ParallaxContext);
  sub_1C5BC7B64();

LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194158);
  sub_1C5BCA694();
  swift_getKeyPath();
  sub_1C5A2DA7C(&qword_1EC194160, type metadata accessor for ParallaxContext);
  sub_1C5BC7B74();

  v3 = *(v9 + 40);

  if (v1 > 0.8 != v3)
  {
    if (qword_1EC190658 != -1)
    {
      swift_once();
    }

    MEMORY[0x1EEE9AC00](qword_1EC1940D0);
    sub_1C5BC87F4();
  }

  result = _UISolariumEnabled();
  if ((result & 1) == 0)
  {
    v5 = [objc_opt_self() tintColor];
    sub_1C5BCA424();
    sub_1C5BCA494();
    v6 = sub_1C5A2B574(v1);

    sub_1C5BCA694();
    swift_getKeyPath();
    sub_1C5BC7B74();

    v7 = *(v9 + 32);

    if (!v7 || (, v8 = sub_1C5BCA454(), , , (v8 & 1) == 0))
    {
      sub_1C5BCA694();
      sub_1C5ACB904(v6);
    }
  }

  return result;
}

uint64_t sub_1C5A2B400(uint64_t a1, char a2)
{
  v2 = a2 & 1;
  type metadata accessor for ParallaxEffectViewModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194158);
  sub_1C5BCA694();
  if (*(v5 + 40) == v2)
  {
    *(v5 + 40) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A2DA7C(&qword_1EC194160, type metadata accessor for ParallaxContext);
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C5A2B574(double a1)
{
  v2 = sub_1C5BCA444();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C5BC8F34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 1.0)
  {
    v10 = a1;
  }

  else
  {
    v10 = 1.0;
  }

  if (a1 <= 0.0)
  {
    v10 = 0.0;
  }

  v29 = v10;
  v11 = 1.0 - v10;
  sub_1C5A297D8(v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C5BCA4D4();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *(v7 + 8);
  v20(v9, v6);
  sub_1C5A297D8(v9);
  sub_1C5BCA4D4();
  v27[3] = v21;
  v27[4] = v22;
  v27[1] = v23;
  v20(v9, v6);
  v27[6] = v15;
  v27[7] = v13;
  v27[5] = v17;
  v27[2] = v19;
  sub_1C5BCA4F4();
  v28 = v11 * v24;
  sub_1C5BCA4F4();
  v28 = v28 + v29 * v25;
  sub_1C5BCA514();
  sub_1C5BCA514();
  sub_1C5BCA504();
  sub_1C5BCA504();
  (*(v3 + 104))(v5, *MEMORY[0x1E69814D8], v2);
  return sub_1C5BCA544();
}

uint64_t sub_1C5A2B898(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for ParallaxEffectViewModifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = *a1;
  v12 = sub_1C5BCB214();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_1C5A2CEAC(a2, v7);
  sub_1C5BCB1E4();
  v13 = sub_1C5BCB1D4();
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v13;
  v15[3] = v16;
  v15[4] = v11;
  sub_1C5A2CF10(v7, v15 + v14);
  sub_1C5AD0FB8(0, 0, v10, &unk_1C5BDA598, v15);

  return sub_1C5A299A8();
}

uint64_t sub_1C5A2BA6C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a5;
  *(v5 + 64) = a1;
  sub_1C5BCB1E4();
  *(v5 + 80) = sub_1C5BCB1D4();
  v7 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A2BB08, v7, v6);
}

uint64_t sub_1C5A2BB08()
{
  v1 = *(v0 + 64);

  if (v1 > 0.0 || (v2 = *(v0 + 72), v3 = type metadata accessor for ParallaxEffectViewModifier(), v4 = (v2 + *(v3 + 40)), v5 = *v4, v6 = *(v4 + 1), *(v0 + 16) = v5, *(v0 + 24) = v6, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0), sub_1C5BCA694(), (*(v0 + 40) & 1) != 0))
  {
    v7 = *(v0 + 72);
    v8 = *(v0 + 64);
    v9 = (v7 + *(type metadata accessor for ParallaxEffectViewModifier() + 28));
    v11 = *v9;
    v10 = v9[1];
    *(v0 + 16) = v11;
    *(v0 + 24) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194158);
    sub_1C5BCA694();
    v12 = *(v0 + 40);
    v13 = -v8;
    swift_beginAccess();
    if (*(v12 + 24) == v13)
    {
      *(v12 + 24) = v13;
LABEL_8:

      goto LABEL_11;
    }

    swift_getKeyPath();
    v14 = swift_task_alloc();
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    *(v0 + 40) = v12;
    sub_1C5A2DA7C(&qword_1EC194160, type metadata accessor for ParallaxContext);
  }

  else
  {
    v15 = (*(v0 + 72) + *(v3 + 28));
    v17 = *v15;
    v16 = v15[1];
    *(v0 + 16) = v17;
    *(v0 + 24) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194158);
    sub_1C5BCA694();
    v18 = *(v0 + 40);
    swift_beginAccess();
    if (*(v18 + 24) == 1.79769313e308)
    {
      *(v18 + 24) = 0x7FEFFFFFFFFFFFFFLL;
      goto LABEL_8;
    }

    swift_getKeyPath();
    v19 = swift_task_alloc();
    *(v19 + 16) = v18;
    *(v19 + 24) = 0x7FEFFFFFFFFFFFFFLL;
    *(v0 + 16) = v18;
    sub_1C5A2DA7C(&qword_1EC194160, type metadata accessor for ParallaxContext);
  }

  sub_1C5BC7B64();

LABEL_11:
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1C5A2BDFC(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for ParallaxEffectViewModifier();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21[-v10];
  LOBYTE(v10) = *a1;
  v12 = a2 + *(v5 + 48);
  v13 = *v12;
  v14 = *(v12 + 8);
  v21[16] = v13;
  v22 = v14;
  v21[15] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  sub_1C5BCA6A4();
  v15 = sub_1C5BCB214();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  sub_1C5A2CEAC(a2, v8);
  sub_1C5BCB1E4();
  v16 = sub_1C5BCB1D4();
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  sub_1C5A2CF10(v8, v18 + v17);
  sub_1C5AD0FB8(0, 0, v11, &unk_1C5BDA588, v18);
}

uint64_t sub_1C5A2C00C()
{
  sub_1C5BCB1E4();
  *(v0 + 16) = sub_1C5BCB1D4();
  v2 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A2C0A0, v2, v1);
}

uint64_t sub_1C5A2C0A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C5A2C100(double *a1)
{
  v1 = *a1;
  type metadata accessor for ParallaxEffectViewModifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191710);
  if (v1 <= 0.0)
  {
    return sub_1C5BCA6A4();
  }

  sub_1C5BCA6A4();
  return sub_1C5A299A8();
}

id sub_1C5A2C1C0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *MEMORY[0x1E69DB650];
  v7 = objc_opt_self();
  v8 = [v7 clearColor];
  v9 = sub_1C5A28198();
  v24 = v9;
  *&v23 = v8;
  v10 = [a3 titleTextAttributes];
  type metadata accessor for Key(0);
  sub_1C5A2DA7C(&qword_1EC191088, type metadata accessor for Key);
  v11 = sub_1C5BCACB4();

  v22 = v11;
  if (v9)
  {
    sub_1C593F33C(&v23, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1C5B3C320(v21, v6, isUniquelyReferenced_nonNull_native);
    v22 = v11;
  }

  else
  {
    sub_1C592BE5C(&v23);
    sub_1C5BB7CC0(v6, v21);
    sub_1C592BE5C(v21);
  }

  v13 = sub_1C5BCACA4();

  [a3 setTitleTextAttributes_];

  v14 = [v7 clearColor];
  v24 = v9;
  *&v23 = v14;
  v15 = [a4 titleTextAttributes];
  v16 = sub_1C5BCACB4();

  v22 = v16;
  if (v24)
  {
    sub_1C593F33C(&v23, v21);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_1C5B3C320(v21, v6, v17);
    v22 = v16;
  }

  else
  {
    sub_1C592BE5C(&v23);
    sub_1C5BB7CC0(v6, v21);
    sub_1C592BE5C(v21);
  }

  v18 = sub_1C5BCACA4();

  [a4 setTitleTextAttributes_];

  [a1 setScrollEdgeAppearance_];
  return [a1 setStandardAppearance_];
}

uint64_t ParallaxHeaderAlignedScrollTargetBehavior.updateTarget(_:context:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = sub_1C5BC8504();
  if (v1 <= v4 && v4 <= v2)
  {
    sub_1C5BC9714();
    v6 = sub_1C5BC9874();
    sub_1C5BC9864();
    result = sub_1C5BC9864();
    if (result == v6)
    {
      sub_1C5BC8504();
      if ((v1 + v2) * 0.5 < v7)
      {
        v1 = v2;
      }

      v8 = sub_1C5BC84F4();
      *(v9 + 8) = v1;
      return v8(&v10, 0);
    }
  }

  return result;
}

uint64_t static MCUINamespace<A>.parallaxHeaderAligned.getter()
{
  type metadata accessor for ParallaxHeaderAlignedScrollTargetBehavior();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1C5A2C5E8()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = *v0 + 32;
    do
    {
      sub_1C59318C8(v2, v4);
      __swift_project_boxed_opaque_existential_0(v4, v4[3]);
      sub_1C5BC9324();
      result = __swift_destroy_boxed_opaque_existential_0(v4);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1C5A2C688()
{
  result = sub_1C5BCAAE4();
  qword_1EC1940D0 = result;
  return result;
}

void sub_1C5A2C6B0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  UINavigationItem.preferredNavigationBarTintColor.setter(a3);
}

void UINavigationItem.preferredNavigationBarTintColor.setter(void *a1)
{
  v2 = v1;
  v4 = [v1 preferredNavigationBarTintColor];
  v5 = v4;
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v4 || (sub_1C5A28198(), v8 = a1, v6 = sub_1C5BCB744(), v8, v5, v7 = v8, (v6 & 1) == 0))
  {
LABEL_7:
    if (qword_1EDA4E100 != -1)
    {
      swift_once();
    }

    objc_setAssociatedObject(v2, qword_1EDA4E108, a1, 1);
    v7 = a1;
  }
}

uint64_t sub_1C5A2C814@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A2DA7C(&qword_1EC194160, type metadata accessor for ParallaxContext);
  sub_1C5BC7B74();

  *a2 = *(v3 + 32);
}

double sub_1C5A2C8EC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A2DA7C(&qword_1EC194160, type metadata accessor for ParallaxContext);
  sub_1C5BC7B74();

  result = *(v3 + 48);
  *a2 = result;
  return result;
}

uint64_t sub_1C5A2C9BC(uint64_t a1)
{
  v2 = *(a1 + 16);

  if (v2)
  {
    v4 = 0;
    v5 = a1 + 32;
    while (v4 < *(a1 + 16))
    {
      sub_1C59318C8(v5, v6);
      sub_1C59318C8(v6, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194208);
      type metadata accessor for ParallaxHeaderAlignedScrollTargetBehavior();
      if (swift_dynamicCast())
      {

        sub_1C5931F84(v6, v7);
        swift_dynamicCast();
        return a1;
      }

      ++v4;
      result = __swift_destroy_boxed_opaque_existential_0(v6);
      v5 += 40;
      if (v2 == v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return a1;
  }

  return result;
}

uint64_t sub_1C5A2CAE8(uint64_t a1)
{
  v2 = type metadata accessor for ParallaxEffectViewModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C5A2CBB4()
{
  sub_1C5A2CD18(319, &qword_1EDA4E1B0, MEMORY[0x1E697F228], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1C5A2CD18(319, &qword_1EDA46010, type metadata accessor for ParallaxContext, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1C5A2CD7C();
      if (v2 <= 0x3F)
      {
        sub_1C5A2CDE0(319, &qword_1EDA45FF8);
        if (v3 <= 0x3F)
        {
          sub_1C5A2CDE0(319, &qword_1EDA4E188);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C5A2CD18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C5A2CD7C()
{
  if (!qword_1EDA45FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1940D8);
    v0 = sub_1C5BCA6C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA45FE8);
    }
  }
}

void sub_1C5A2CDE0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C5BCA6C4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1C5A2CE58()
{
  result = qword_1EC194170;
  if (!qword_1EC194170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194170);
  }

  return result;
}

uint64_t sub_1C5A2CEAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParallaxEffectViewModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5A2CF10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParallaxEffectViewModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5A2CF74()
{
  type metadata accessor for ParallaxEffectViewModifier();

  return sub_1C5A2AC94();
}

unint64_t sub_1C5A2CFFC()
{
  result = qword_1EC194178;
  if (!qword_1EC194178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194110);
    sub_1C5A2D0B4();
    sub_1C5924F54(&qword_1EC194198, &unk_1EC1959C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194178);
  }

  return result;
}

unint64_t sub_1C5A2D0B4()
{
  result = qword_1EC194180;
  if (!qword_1EC194180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194108);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1940F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1940F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1940E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194148);
    sub_1C5924F54(&qword_1EC194150, &qword_1EC194148);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C5A2CE58();
    swift_getOpaqueTypeConformance2();
    sub_1C5924F54(&qword_1EC194188, &qword_1EC194190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194180);
  }

  return result;
}

uint64_t sub_1C5A2D2D8(_BYTE *a1)
{
  v3 = *(type metadata accessor for ParallaxEffectViewModifier() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1C5A2BDFC(a1, v4);
}

uint64_t sub_1C5A2D360(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ParallaxEffectViewModifier() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1C5A2D3E4()
{
  result = qword_1EC1941A0;
  if (!qword_1EC1941A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194138);
    sub_1C5A2D49C();
    sub_1C5924F54(&qword_1EC1941F0, &qword_1EC1941F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1941A0);
  }

  return result;
}

unint64_t sub_1C5A2D49C()
{
  result = qword_1EC1941A8;
  if (!qword_1EC1941A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194130);
    sub_1C5A2D554();
    sub_1C5924F54(&qword_1EC1941E0, &qword_1EC1941E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1941A8);
  }

  return result;
}

unint64_t sub_1C5A2D554()
{
  result = qword_1EC1941B0;
  if (!qword_1EC1941B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194128);
    sub_1C5A2D60C();
    sub_1C5924F54(&qword_1EC1941D0, &qword_1EC1941D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1941B0);
  }

  return result;
}

unint64_t sub_1C5A2D60C()
{
  result = qword_1EC1941B8;
  if (!qword_1EC1941B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194120);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194110);
    sub_1C5A2CFFC();
    swift_getOpaqueTypeConformance2();
    sub_1C5924F54(&qword_1EC1941C0, &qword_1EC1941C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1941B8);
  }

  return result;
}

unint64_t sub_1C5A2D700()
{
  result = qword_1EC194200;
  if (!qword_1EC194200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194200);
  }

  return result;
}

uint64_t sub_1C5A2D774()
{
  type metadata accessor for ParallaxEffectViewModifier();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C592A748;

  return sub_1C5A2C00C();
}

uint64_t sub_1C5A2D864(uint64_t a1)
{
  v4 = *(type metadata accessor for ParallaxEffectViewModifier() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C592ABD4;

  return sub_1C5A2BA6C(v8, a1, v6, v7, v1 + v5);
}

uint64_t sub_1C5A2D9BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5A2DA7C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5A2DAFC()
{
  result = sub_1C5BCA494();
  qword_1EC1A6AB0 = result;
  return result;
}

uint64_t sub_1C5A2DB44(uint64_t a1, uint64_t *a2)
{
  sub_1C5BCA494();
  v3 = sub_1C5BCA4B4();

  *a2 = v3;
  return result;
}

double sub_1C5A2DB98()
{
  xmmword_1EDA5DD10 = xmmword_1C5BDA760;
  unk_1EDA5DD20 = xmmword_1C5BDA770;
  result = 0.0;
  xmmword_1EDA5DD30 = xmmword_1C5BDA780;
  unk_1EDA5DD40 = xmmword_1C5BDA790;
  return result;
}

uint64_t sub_1C5A2DBCC(void *a1)
{
  result = [v1 vertexCount];
  if ((result & 0x8000000000000000) == 0)
  {
    v4 = result;
    if (result)
    {
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      do
      {
        [v1 vertexAtIndex_];
        [a1 vertexAtIndex_];
        v29 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1C5B76730(0, *(v6 + 2) + 1, 1, v6);
        }

        v8 = *(v6 + 2);
        v7 = *(v6 + 3);
        if (v8 >= v7 >> 1)
        {
          v6 = sub_1C5B76730((v7 > 1), v8 + 1, 1, v6);
        }

        ++v5;
        *(&v9 + 1) = *&v30.f64[1];
        *&v9 = vcvt_f32_f64(v30);
        *&v10 = vcvt_f32_f64(v31);
        *&v11 = v32;
        *(&v10 + 1) = v11;
        *&v12 = v10;
        *&v13 = v32;
        *(&v12 + 1) = v13;
        *(v6 + 2) = v8 + 1;
        v14 = &v6[64 * v8];
        *(v14 + 2) = v9;
        *(v14 + 6) = v9;
        *(v14 + 4) = v10;
        *(v14 + 5) = v12;
      }

      while (v4 != v5);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    result = [v1 faceCount];
    if (result < 0)
    {
      goto LABEL_37;
    }

    v15 = result;
    if (!result)
    {
      return v6;
    }

    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      [v1 faceAtIndex_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194210);
      result = swift_initStackObject();
      *(result + 16) = xmmword_1C5BDA7A0;
      if (HIWORD(LODWORD(v30.f64[0])))
      {
        break;
      }

      v18 = result;
      *(result + 32) = LOWORD(v30.f64[0]);
      if (HIWORD(LODWORD(v30.f64[1])))
      {
        goto LABEL_30;
      }

      *(result + 34) = LOWORD(v30.f64[1]);
      if (HIWORD(HIDWORD(v30.f64[1])))
      {
        goto LABEL_31;
      }

      *(result + 36) = WORD2(v30.f64[1]);
      *(result + 38) = LOWORD(v30.f64[0]);
      if (HIWORD(HIDWORD(v30.f64[0])))
      {
        goto LABEL_32;
      }

      *(result + 40) = WORD2(v30.f64[0]);
      *(result + 42) = LOWORD(v30.f64[1]);
      v19 = *(v17 + 16);
      v20 = v19 + 6;
      if (__OFADD__(v19, 6))
      {
        goto LABEL_33;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v21 = *(v17 + 24) >> 1, v21 < v20))
      {
        if (v19 <= v20)
        {
          v22 = v19 + 6;
        }

        else
        {
          v22 = v19;
        }

        result = sub_1C5B75FA8(result, v22, 1, v17);
        v17 = result;
        v21 = *(result + 24) >> 1;
      }

      v23 = *(v17 + 16);
      if (v21 - v23 < 6)
      {
        goto LABEL_34;
      }

      v24 = *(v18 + 32);
      v25 = v17 + 2 * v23;
      *(v25 + 40) = *(v18 + 40);
      *(v25 + 32) = v24;

      v26 = *(v17 + 16);
      v27 = __OFADD__(v26, 6);
      v28 = v26 + 6;
      if (v27)
      {
        goto LABEL_35;
      }

      ++v16;
      *(v17 + 16) = v28;
      if (v15 == v16)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1C5A2DEB8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5A2DED8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

void sub_1C5A2DF20(uint64_t a1@<X8>)
{
  *a1 = "MediaCoreUI";
  *(a1 + 8) = 11;
  *(a1 + 16) = 2;
  *(a1 + 24) = "FluidScrubber";
  *(a1 + 32) = 13;
  *(a1 + 40) = 2;
}

void sub_1C5A2DF50(uint64_t a1@<X8>)
{
  *a1 = "MediaCoreUI";
  *(a1 + 8) = 11;
  *(a1 + 16) = 2;
  *(a1 + 24) = "HoveringChapterPicker";
  *(a1 + 32) = 21;
  *(a1 + 40) = 2;
}

unint64_t sub_1C5A2DF98(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    result = sub_1C5BCB984();
    v2 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return result;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    do
    {
      MEMORY[0x1C694FD20](v3++, v1);
      v28 = &type metadata for Features;
      swift_getAtKeyPath();
      v4 = v22;
      v5 = v23;
      v6 = v24;
      v8 = v25;
      v7 = v26;
      v9 = v27;
      v20 = &type metadata for Features;
      v21 = sub_1C5A2E158();
      v10 = swift_allocObject();
      v19[0] = v10;
      *(v10 + 16) = v4;
      *(v10 + 24) = v5;
      *(v10 + 32) = v6;
      *(v10 + 40) = v8;
      *(v10 + 48) = v7;
      *(v10 + 56) = v9;
      sub_1C5BC7C14();
      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_0(v19);
    }

    while (v2 != v3);
  }

  else
  {
    v11 = v1 + 32;
    do
    {
      v11 += 8;
      v28 = &type metadata for Features;

      swift_getAtKeyPath();
      v12 = v22;
      v13 = v23;
      v14 = v24;
      v15 = v25;
      v16 = v26;
      v17 = v27;
      v20 = &type metadata for Features;
      v21 = sub_1C5A2E158();
      v18 = swift_allocObject();
      v19[0] = v18;
      *(v18 + 16) = v12;
      *(v18 + 24) = v13;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      *(v18 + 48) = v16;
      *(v18 + 56) = v17;
      sub_1C5BC7C14();

      result = __swift_destroy_boxed_opaque_existential_0(v19);
      --v2;
    }

    while (v2);
  }

  return result;
}

unint64_t sub_1C5A2E158()
{
  result = qword_1EDA4E700[0];
  if (!qword_1EDA4E700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA4E700);
  }

  return result;
}

MediaCoreUI::BackdropLayerView __swiftcall BackdropLayerView.init(groupName:)(MediaCoreUI::BackdropLayerView groupName)
{
  *v1 = groupName.groupName;
  *(v1 + 16) = 0;
  return groupName;
}

MediaCoreUI::BackdropLayerView __swiftcall BackdropLayerView.init(groupName:captureOnly:)(MediaCoreUI::BackdropLayerView groupName, Swift::Bool captureOnly)
{
  *v2 = groupName.groupName;
  *(v2 + 16) = captureOnly;
  groupName.captureOnly = captureOnly;
  return groupName;
}

uint64_t BackdropLayerView.body.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1C5932A90();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;

  return sub_1C5BC85C4();
}

id sub_1C5A2E264(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_1C5BCAE44();
  [a1 setGroupName_];

  return [a1 setCaptureOnly_];
}

uint64_t sub_1C5A2E2E4()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1C5932A90();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;

  return sub_1C5BC85C4();
}

id BackdropLayerHostView.__allocating_init(groupName:)()
{
  v1 = [objc_allocWithZone(v0) init];
  v2 = [v1 layer];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = sub_1C5BCAE44();

  [v3 setGroupName_];

  return v1;
}

id BackdropLayerHostView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id BackdropLayerHostView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id BackdropLayerHostView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id BackdropLayerHostView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id BackdropLayerHostView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5A2E6A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C5A2E6F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C5A2E740()
{
  result = qword_1EC194218;
  if (!qword_1EC194218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194218);
  }

  return result;
}

uint64_t sub_1C5A2E7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + *(a1 + 52));
  v10 = *v9;
  v11 = *(v9 + 8);

  if ((v11 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v10 = v19;
  }

  swift_getKeyPath();
  v19 = v10;
  sub_1C5A315E4(&qword_1EDA4AF70, _s12PresentationCMa);
  sub_1C5BC7B74();

  v13 = *(v10 + 17);

  if (v13 == 1)
  {
    if (qword_1EC190688 != -1)
    {
      swift_once();
    }

    v14 = qword_1EC194228;
  }

  else
  {
    if (qword_1EC190690 != -1)
    {
      swift_once();
    }

    v14 = qword_1EC194240;
  }

  v15 = _s11MediaCoreUI5SpecsVMa_0(0);
  v16 = __swift_project_value_buffer(v15, v14);
  return sub_1C5A319B4(v16, a2);
}

uint64_t sub_1C5A2EA08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C5BC90F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - v9;
  v11 = sub_1C5BC8F34();
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v1 + *(a1 + 52));
  v15 = *v14;
  v16 = *(v14 + 8);

  if ((v16 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v17 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v28 + 8))(v13, v29);
    v15 = v30;
  }

  swift_getKeyPath();
  v30 = v15;
  sub_1C5A315E4(&qword_1EDA4AF70, _s12PresentationCMa);
  sub_1C5BC7B74();

  v18 = *(v15 + 17);

  if (v18)
  {
    sub_1C594C704(v10);
    (*(v5 + 104))(v8, *MEMORY[0x1E697F608], v4);
    v19 = sub_1C5BC8274();
    v20 = *(v5 + 8);
    v20(v8, v4);
    v20(v10, v4);
    if (v19)
    {
      if (qword_1EC190698 != -1)
      {
        swift_once();
      }

      v21 = &qword_1EC194258;
      goto LABEL_11;
    }

    v24 = v2 + *(a1 + 48);
    v25 = *v24;
    if (*(v24 + 8) == 1)
    {
      if ((v25 & 1) == 0)
      {
LABEL_14:
        if (qword_1EC1906A8 != -1)
        {
          swift_once();
        }

        v21 = &qword_1EC194278;
        goto LABEL_11;
      }
    }

    else
    {

      sub_1C5BCB4E4();
      v26 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5942458(v25, 0);
      (*(v28 + 8))(v13, v29);
      if (v30 != 1)
      {
        goto LABEL_14;
      }
    }

    if (qword_1EC1906A0 != -1)
    {
      swift_once();
    }

    v21 = &qword_1EC194268;
  }

  else
  {
    if (qword_1EC1906B0 != -1)
    {
      swift_once();
    }

    v21 = &qword_1EC194288;
  }

LABEL_11:
  v22 = *v21;

  return v22;
}

uint64_t sub_1C5A2EEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v206 = a2;
  v5 = sub_1C5BCA5D4();
  v188 = *(v5 - 8);
  v189 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v187 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = _s11MediaCoreUI5SpecsVMa_0(0);
  MEMORY[0x1EEE9AC00](v186);
  v177 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BC8B34();
  v183 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v181 = &v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v212 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v175 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v14 = sub_1C5BCB804();
  v178 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v176 = &v166 - v15;
  v16 = sub_1C5950C90();
  *&v224 = &type metadata for NowPlayingLookupID;
  *(&v224 + 1) = AssociatedTypeWitness;
  *&v225 = v16;
  *(&v225 + 1) = AssociatedConformanceWitness;
  v17 = type metadata accessor for ViewProvider();
  v170 = *(v17 - 8);
  v171 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v168 = &v166 - v18;
  v277 = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  v210 = sub_1C5A315E4(&qword_1EC192338, MEMORY[0x1E697C248]);
  v211 = v14;
  *&v224 = v14;
  v221 = v8;
  *(&v224 + 1) = v8;
  v219 = WitnessTable;
  *&v225 = WitnessTable;
  *(&v225 + 1) = v210;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v172 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v167 = &v166 - v21;
  v173 = v22;
  v23 = sub_1C5BC8AB4();
  v174 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v169 = &v166 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192980);
  v220 = v23;
  v25 = sub_1C5BC8AB4();
  v179 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v198 = &v166 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C78);
  v27 = sub_1C5BC8AB4();
  v182 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v180 = &v166 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194298);
  v29 = sub_1C5BC8AB4();
  v185 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v184 = &v166 - v30;
  v216 = v31;
  v32 = sub_1C5BC8AB4();
  v190 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v199 = &v166 - v33;
  v215 = v34;
  v35 = sub_1C5BC8AB4();
  v192 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v191 = &v166 - v36;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1942A0);
  v214 = v35;
  v37 = sub_1C5BC8AB4();
  v196 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v193 = &v166 - v38;
  sub_1C5BC97C4();
  v39 = sub_1C5BC8AB4();
  v200 = *(v39 - 8);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v197 = &v166 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v194 = &v166 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v195 = &v166 - v44;
  v45 = sub_1C5BC8F34();
  v208 = *(v45 - 8);
  v209 = v45;
  MEMORY[0x1EEE9AC00](v45);
  v207 = &v166 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = v39;
  v47 = sub_1C5BCB804();
  v203 = *(v47 - 8);
  v204 = v47;
  v48 = MEMORY[0x1EEE9AC00](v47);
  v201 = &v166 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v202 = &v166 - v50;
  v51 = *(v3 + 16);
  LOBYTE(v39) = *(v3 + 24);

  if ((v39 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v52 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v53 = v207;
    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v208 + 8))(v53, v209);
    v51 = v224;
  }

  v205 = v37;
  v217 = v27;
  v218 = v25;
  swift_getKeyPath();
  *&v224 = v51;
  sub_1C5A315E4(&qword_1EDA4B230, _s11ContextMenuCMa);
  sub_1C5BC7B74();

  v54 = *(v51 + 16);

  v55 = MEMORY[0x1E697E040];
  v56 = MEMORY[0x1E697E5D8];
  if (v54 == 1)
  {
    v57 = *v3;
    v166 = v3;
    v58 = v175;
    sub_1C59498C4(v57);
    v59 = *(v11 + 384);
    swift_unknownObjectRetain();
    v60 = v168;
    v59(v58, v11);
    swift_unknownObjectRelease();
    *&v224 = 0xD000000000000011;
    *(&v224 + 1) = 0x80000001C5BF7ED0;
    v61 = v176;
    v62 = v171;
    sub_1C595BC70(&v224, v171);

    (*(v170 + 8))(v60, v62);
    v63 = v181;
    sub_1C5BC8B24();
    v64 = v167;
    v65 = v219;
    v67 = v210;
    v66 = v211;
    v68 = v221;
    sub_1C5BC9DA4();
    (*(v183 + 8))(v63, v68);
    (*(v178 + 8))(v61, v66);
    v69 = v177;
    sub_1C5A2E7A8(v212, v177);
    sub_1C5A318E8(v69);
    sub_1C5BCAA54();
    *&v224 = v66;
    *(&v224 + 1) = v68;
    *&v225 = v65;
    *(&v225 + 1) = v67;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v71 = v169;
    v72 = v173;
    sub_1C5950FCC();
    (*(v172 + 8))(v64, v72);
    v73 = v212;
    sub_1C5A2E7A8(v212, v69);

    sub_1C5A318E8(v69);
    v242 = OpaqueTypeConformance2;
    v243 = MEMORY[0x1E697E040];
    v183 = MEMORY[0x1E697E858];
    v74 = v220;
    v75 = swift_getWitnessTable();
    sub_1C5BCA1F4();

    (*(v174 + 8))(v71, v74);
    sub_1C5A2E7A8(v73, v69);
    v76 = v187;
    v78 = v188;
    v77 = v189;
    (*(v188 + 16))(v187, v69 + *(v186 + 24), v189);
    sub_1C5A318E8(v69);
    v186 = MEMORY[0x1E6980A18];
    v79 = sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
    v240 = v75;
    v241 = v79;
    v80 = v218;
    v81 = swift_getWitnessTable();
    v82 = v180;
    v83 = v198;
    sub_1C5BC9D24();
    (*(v78 + 8))(v76, v77);
    (*(v179 + 8))(v83, v80);
    v84 = v212;
    v85 = v166;
    v86 = sub_1C5A2EA08(v212);

    *&v224 = v86;
    sub_1C5A2EA08(v84);
    v88 = v87;

    *&v222[0] = v88;
    v89 = sub_1C5924F54(&qword_1EDA4E198, &qword_1EC192C78);
    v238 = v81;
    v239 = v89;
    v90 = v217;
    v91 = swift_getWitnessTable();
    v92 = v184;
    MEMORY[0x1C694E1B0](&v224, v222, v90, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0B8], v91, MEMORY[0x1E697E0A8], MEMORY[0x1E697E0A8]);

    (*(v182 + 8))(v82, v90);
    LOBYTE(v222[0]) = 0;
    sub_1C5BCA684();
    v93 = sub_1C5924F54(&qword_1EC1942A8, &qword_1EC194298);
    v236 = v91;
    v237 = v93;
    v94 = v216;
    v198 = swift_getWitnessTable();
    MEMORY[0x1C694E550](&v224, v94, &type metadata for HoverSensitivitySupport);

    (*(v185 + 8))(v92, v94);
    LODWORD(v189) = sub_1C5BC98E4();
    v95 = v85;
    v96 = v85 + *(v212 + 52);
    v97 = *v96;
    v98 = v96[8];

    v99 = v97;
    if ((v98 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v100 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v101 = v207;
      sub_1C5BC8F24();
      swift_getAtKeyPath();

      (*(v208 + 8))(v101, v209);
      v99 = v224;
    }

    swift_getKeyPath();
    *&v224 = v99;
    sub_1C5A315E4(&qword_1EDA4AF70, _s12PresentationCMa);
    sub_1C5BC7B74();

    v102 = *(v99 + 17);

    v103 = v214;
    if (v102 == 1)
    {
      *(v227 + 10) = *(v95 + 90);
      v104 = v95[5];
      v226 = v95[4];
      v227[0] = v104;
      v105 = v95[3];
      v224 = v95[2];
      v225 = v105;
      v106 = v191;
      if (BYTE9(v227[1]))
      {
        v107 = v95[5];
        v222[2] = v95[4];
        v223[0] = v107;
        *(v223 + 9) = *(v95 + 89);
        v108 = v95[3];
        v222[0] = v95[2];
        v222[1] = v108;
      }

      else
      {

        sub_1C5BCB4E4();
        v127 = sub_1C5BC9844();
        sub_1C5BC7C54();

        v128 = v207;
        sub_1C5BC8F24();
        swift_getAtKeyPath();
        sub_1C5924EF4(&v224, &unk_1EC194DE0);
        (*(v208 + 8))(v128, v209);
      }

      v126 = v215;
    }

    else
    {
      v126 = v215;
      v106 = v191;
    }

    v129 = sub_1C5A31894();
    v234 = v198;
    v235 = v129;
    v130 = swift_getWitnessTable();
    v131 = v199;
    sub_1C5BCA2F4();
    (*(v190 + 8))(v131, v126);

    if ((v98 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v132 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v133 = v207;
      sub_1C5BC8F24();
      swift_getAtKeyPath();

      (*(v208 + 8))(v133, v209);
      v97 = v224;
    }

    swift_getKeyPath();
    *&v224 = v97;
    sub_1C5BC7B74();

    v134 = *(v97 + 17);

    LOBYTE(v224) = v134;
    v232 = v130;
    v233 = MEMORY[0x1E697E5D8];
    v135 = swift_getWitnessTable();
    sub_1C5939F34();
    v136 = v193;
    sub_1C5BCA384();
    (*(v192 + 8))(v106, v103);
    v137 = sub_1C5924F54(&qword_1EC1942B8, &qword_1EC1942A0);
    v230 = v135;
    v231 = v137;
    v138 = v205;
    v139 = swift_getWitnessTable();
    v140 = v194;
    sub_1C595BB1C(0xD000000000000016, 0x80000001C5BF7EF0);
    (*(v196 + 8))(v136, v138);
    v141 = sub_1C5A315E4(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
    v228 = v139;
    v229 = v141;
    v142 = v213;
    v143 = swift_getWitnessTable();
    v144 = v195;
    sub_1C593EDC0(v140, v142, v143);
    v145 = v200;
    v146 = *(v200 + 8);
    v146(v140, v142);
    v147 = v197;
    sub_1C593EDC0(v144, v142, v143);
    v146(v144, v142);
    v109 = v201;
    (*(v145 + 32))(v201, v147, v142);
    (*(v145 + 56))(v109, 0, 1, v142);
    v115 = v210;
    v110 = v211;
    v125 = MEMORY[0x1E697E040];
  }

  else
  {
    v109 = v201;
    (*(v200 + 56))(v201, 1, 1, v213);
    v111 = v210;
    v110 = v211;
    *&v224 = v211;
    *(&v224 + 1) = v221;
    *&v225 = v219;
    *(&v225 + 1) = v210;
    v275 = swift_getOpaqueTypeConformance2();
    v276 = v55;
    v112 = swift_getWitnessTable();
    v113 = sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
    v273 = v112;
    v274 = v113;
    v114 = swift_getWitnessTable();
    v115 = v111;
    v116 = sub_1C5924F54(&qword_1EDA4E198, &qword_1EC192C78);
    v271 = v114;
    v272 = v116;
    v117 = swift_getWitnessTable();
    v118 = sub_1C5924F54(&qword_1EC1942A8, &qword_1EC194298);
    v269 = v117;
    v270 = v118;
    v119 = swift_getWitnessTable();
    v120 = sub_1C5A31894();
    v267 = v119;
    v268 = v120;
    v265 = swift_getWitnessTable();
    v266 = v56;
    v121 = swift_getWitnessTable();
    v122 = sub_1C5924F54(&qword_1EC1942B8, &qword_1EC1942A0);
    v263 = v121;
    v264 = v122;
    v123 = swift_getWitnessTable();
    v124 = sub_1C5A315E4(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
    v261 = v123;
    v262 = v124;
    swift_getWitnessTable();
    v125 = v55;
  }

  v148 = v202;
  sub_1C5941600(v109, v202);
  v149 = *(v203 + 8);
  v150 = v109;
  v151 = v204;
  v149(v150, v204);
  *&v224 = v110;
  *(&v224 + 1) = v221;
  *&v225 = v219;
  *(&v225 + 1) = v115;
  v259 = swift_getOpaqueTypeConformance2();
  v260 = v125;
  v152 = swift_getWitnessTable();
  v153 = sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
  v257 = v152;
  v258 = v153;
  v154 = swift_getWitnessTable();
  v155 = sub_1C5924F54(&qword_1EDA4E198, &qword_1EC192C78);
  v255 = v154;
  v256 = v155;
  v156 = swift_getWitnessTable();
  v157 = sub_1C5924F54(&qword_1EC1942A8, &qword_1EC194298);
  v253 = v156;
  v254 = v157;
  v158 = swift_getWitnessTable();
  v159 = sub_1C5A31894();
  v251 = v158;
  v252 = v159;
  v249 = swift_getWitnessTable();
  v250 = MEMORY[0x1E697E5D8];
  v160 = swift_getWitnessTable();
  v161 = sub_1C5924F54(&qword_1EC1942B8, &qword_1EC1942A0);
  v247 = v160;
  v248 = v161;
  v162 = swift_getWitnessTable();
  v163 = sub_1C5A315E4(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v245 = v162;
  v246 = v163;
  v244 = swift_getWitnessTable();
  v164 = swift_getWitnessTable();
  sub_1C593EDC0(v148, v151, v164);
  return (v149)(v148, v151);
}

uint64_t sub_1C5A3095C()
{
  swift_getKeyPath();
  sub_1C5A315E4(&qword_1EDA4B230, _s11ContextMenuCMa);
  sub_1C5BC7B74();

  return *(v0 + 16);
}

uint64_t sub_1C5A309FC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1C5BC8C84();
  *(a1 + 8) = v2;
  _s11ContextMenuCMa(0);
  sub_1C5A315E4(&qword_1EDA4B230, _s11ContextMenuCMa);
  *(a1 + 16) = sub_1C5BC8324();
  *(a1 + 24) = v3 & 1;
  *(a1 + 32) = swift_getKeyPath();
  *(a1 + 105) = 0;
  v4 = _s15ContextMenuViewVMa();
  v5 = v4[11];
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v4[12];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a1 + v4[13];
  _s12PresentationCMa();
  sub_1C5A315E4(&qword_1EDA4AF70, _s12PresentationCMa);
  result = sub_1C5BC8324();
  *v7 = result;
  *(v7 + 8) = v9 & 1;
  return result;
}

uint64_t sub_1C5A30B84()
{
  v0 = _s11MediaCoreUI5SpecsVMa_0(0);
  __swift_allocate_value_buffer(v0, qword_1EC194228);
  v1 = __swift_project_value_buffer(v0, qword_1EC194228);
  sub_1C5BC9924();
  sub_1C5BC9964();
  v2 = sub_1C5BC99E4();

  v3 = *(v0 + 24);
  v4 = *MEMORY[0x1E69816E0];
  v5 = sub_1C5BCA5D4();
  result = (*(*(v5 - 8) + 104))(v1 + v3, v4, v5);
  *v1 = 0x4040000000000000;
  *(v1 + 8) = 0;
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1C5A30C50()
{
  v0 = _s11MediaCoreUI5SpecsVMa_0(0);
  __swift_allocate_value_buffer(v0, qword_1EC194240);
  v1 = __swift_project_value_buffer(v0, qword_1EC194240);
  sub_1C5BC9924();
  sub_1C5BC9994();
  v2 = sub_1C5BC99E4();

  v3 = *(v0 + 24);
  v4 = *MEMORY[0x1E69816C0];
  v5 = sub_1C5BCA5D4();
  result = (*(*(v5 - 8) + 104))(v1 + v3, v4, v5);
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_1C5A30D1C()
{
  sub_1C5BCA434();
  v0 = [objc_opt_self() systemGray5Color];
  sub_1C5BCA424();
  v1 = sub_1C5BC85E4();
  result = sub_1C5BC85E4();
  qword_1EC194258 = v1;
  unk_1EC194260 = result;
  return result;
}

uint64_t sub_1C5A30DB8()
{
  sub_1C5BCA434();
  sub_1C5BCA434();
  sub_1C5BCA4B4();

  v0 = sub_1C5BC85E4();
  result = sub_1C5BC85E4();
  qword_1EC194268 = v0;
  unk_1EC194270 = result;
  return result;
}

uint64_t sub_1C5A30E54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (v14 - v4);
  v6 = sub_1C5BCA494();
  sub_1C5BCA494();
  v7 = sub_1C5BCA4B4();

  v8 = *(v0 + 36);
  v9 = *MEMORY[0x1E6981DB8];
  v10 = sub_1C5BCAB54();
  (*(*(v10 - 8) + 104))(v5 + v8, v9, v10);
  *v5 = v7;
  v14[1] = v6;
  v11 = sub_1C5BC85E4();
  sub_1C5A31944(v5, v3);
  sub_1C5924F54(&qword_1EC192920, &unk_1EC196170);
  v12 = sub_1C5BC85E4();
  result = sub_1C5924EF4(v5, &unk_1EC196170);
  qword_1EC194278 = v11;
  unk_1EC194280 = v12;
  return result;
}

uint64_t sub_1C5A31014()
{
  sub_1C5BCA4C4();
  sub_1C5BCA484();
  v0 = sub_1C5BC85E4();
  result = sub_1C5BC85E4();
  qword_1EC194288 = v0;
  unk_1EC194290 = result;
  return result;
}

uint64_t sub_1C5A31090()
{
  sub_1C5A31D14();
  sub_1C5BC8F44();
  return v1;
}

uint64_t sub_1C5A310CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191AB0);
  sub_1C5BCA694();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1942F8);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1942D8);
  v7 = a2 + *(result + 36);
  *v7 = KeyPath;
  *(v7 + 8) = v8;
  return result;
}

uint64_t sub_1C5A3120C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1C5BCAB24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1942D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1942D8);
  sub_1C5924F54(&qword_1EC1942E0, &qword_1EC1942D0);
  sub_1C5A31C24();
  sub_1C5BCA374();

  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194300) + 36));
  *v6 = sub_1C5A31D08;
  v6[1] = v5;
}

uint64_t sub_1C5A3137C(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A315E4(&qword_1EDA4B230, _s11ContextMenuCMa);
    sub_1C5BC7B64();
  }

  return result;
}

uint64_t sub_1C5A3148C()
{
  v1 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel11ContextMenu___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A31530()
{
  result = sub_1C5BC7BB4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C5A315E4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C5A3162C()
{
  sub_1C5BC8C94();
  if (v0 <= 0x3F)
  {
    sub_1C5A317DC(319, &qword_1EDA467A0, _s11ContextMenuCMa);
    if (v1 <= 0x3F)
    {
      sub_1C5A31AF0(319, &qword_1EDA467C8, &type metadata for DeviceMetrics, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1C5A317DC(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
        if (v3 <= 0x3F)
        {
          sub_1C5A31AF0(319, &qword_1EDA46720, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1C5A317DC(319, &qword_1EDA46798, _s12PresentationCMa);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C5A317DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C5A31894()
{
  result = qword_1EC1942B0;
  if (!qword_1EC1942B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1942B0);
  }

  return result;
}

uint64_t sub_1C5A318E8(uint64_t a1)
{
  v2 = _s11MediaCoreUI5SpecsVMa_0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5A31944(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5A319B4(uint64_t a1, uint64_t a2)
{
  v4 = _s11MediaCoreUI5SpecsVMa_0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C5A31A40()
{
  sub_1C5A31AF0(319, &qword_1EDA46AC0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C5BCA5D4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C5A31AF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C5A31B40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5A31B9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1C5A31C24()
{
  result = qword_1EC1942E8;
  if (!qword_1EC1942E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1942D8);
    sub_1C5924F54(&qword_1EC1942F0, &qword_1EC1942F8);
    sub_1C5924F54(&qword_1EDA46068, &unk_1EC195A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1942E8);
  }

  return result;
}

unint64_t sub_1C5A31D14()
{
  result = qword_1EC194308;
  if (!qword_1EC194308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194308);
  }

  return result;
}

unint64_t sub_1C5A31D78()
{
  result = qword_1EC194310;
  if (!qword_1EC194310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1942D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1942D8);
    sub_1C5924F54(&qword_1EC1942E0, &qword_1EC1942D0);
    sub_1C5A31C24();
    swift_getOpaqueTypeConformance2();
    sub_1C5A31EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194310);
  }

  return result;
}

unint64_t sub_1C5A31EA0()
{
  result = qword_1EC194318[0];
  if (!qword_1EC194318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC194318);
  }

  return result;
}

uint64_t sub_1C5A31EF4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C5A31F98()
{
  sub_1C5A05834();

  return sub_1C5BC8F44();
}

uint64_t sub_1C5A31FE0@<X0>(_BYTE *a1@<X8>)
{
  sub_1C5A05834();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

BOOL static MotionPlaybackPolicy.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

BOOL sub_1C5A320D8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t MCUINamespace<A>.motionCollection(policy:)()
{
  swift_getKeyPath();
  sub_1C5BC9DF4();
}

uint64_t sub_1C5A321B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5A32544();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t View.motionCollection(policy:)(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for MCUINamespace();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9[-v6];
  LOBYTE(a1) = *a1;
  View.mcui.getter(a2, &v9[-v6]);
  v9[15] = a1;
  MCUINamespace<A>.motionCollection(policy:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t getEnumTagSinglePayload for MotionPlaybackPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for MotionPlaybackPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1C5A3248C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1C5A324A8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_1C5A324D0()
{
  result = qword_1EDA46118;
  if (!qword_1EDA46118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46118);
  }

  return result;
}

unint64_t sub_1C5A32544()
{
  result = qword_1EDA490D8;
  if (!qword_1EDA490D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA490D8);
  }

  return result;
}

uint64_t MCUINamespace<A>.miniPlayerPosition.getter()
{
  sub_1C593F648();

  return sub_1C5BC8F44();
}

double sub_1C5A32620()
{
  swift_getKeyPath();
  sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  return *(v0 + 16);
}

uint64_t sub_1C5A326C4(double a1, double a2, double a3, double a4)
{
  result = sub_1C5BC8164();
  if (result)
  {
    v4[2] = a1;
    v4[3] = a2;
    v4[4] = a3;
    v4[5] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
    sub_1C5BC7B64();
  }

  return result;
}

uint64_t sub_1C5A3280C()
{
  swift_getKeyPath();
  sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  return *(v0 + 48);
}

uint64_t sub_1C5A328AC(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
    sub_1C5BC7B64();
  }

  return result;
}

uint64_t sub_1C5A329C4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  *a1 = *(v1 + 49);
  return result;
}

unsigned __int8 *sub_1C5A32A6C(unsigned __int8 *result)
{
  v2 = *result;
  if (v2 == *(v1 + 49))
  {
    *(v1 + 49) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
    sub_1C5BC7B64();
  }

  return result;
}

double sub_1C5A32B7C()
{
  swift_getKeyPath();
  sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  return *(v0 + 56);
}

void sub_1C5A32C1C(double a1, double a2)
{
  if (*(v2 + 56) == a1 && *(v2 + 64) == a2)
  {
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C5A32D3C(unsigned __int8 *a1, double a2, double a3)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  if (*(v3 + 64) == 0.0 && *(v3 + 56) == 0.0 || v6 == 2)
  {
    result = sub_1C5A32F50(0, v3, a2, a3);
    if (v6 == 2)
    {
      return result;
    }
  }

  else
  {
    swift_getKeyPath();
    sub_1C5BC7B74();

    sub_1C5A32F50((*(v3 + 49) ^ v6) & 1, v3, a2, a3);
  }

  swift_getKeyPath();
  sub_1C5BC7B74();

  if (*(v3 + 49) != (v6 & 1))
  {
    if (qword_1EC1906B8 != -1)
    {
      swift_once();
    }

    MEMORY[0x1EEE9AC00](qword_1EC1943A8);
    return sub_1C5BC87F4();
  }

  return result;
}

uint64_t sub_1C5A32F50(char a1, uint64_t a2, double a3, double a4)
{
  swift_getKeyPath();
  sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  if (*(a2 + 56) != a3 || *(a2 + 64) != a4)
  {
    if (a1)
    {
      if (qword_1EC1906B8 != -1)
      {
        swift_once();
      }

      MEMORY[0x1EEE9AC00](qword_1EC1943A8);
      return sub_1C5BC87F4();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C5BC7B64();
    }
  }

  return result;
}

uint64_t sub_1C5A33134(uint64_t result, double a2, double a3)
{
  if (*(result + 56) == a2 && *(result + 64) == a3)
  {
    *(result + 56) = a2;
    *(result + 64) = a3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
    sub_1C5BC7B64();
  }

  return result;
}

uint64_t sub_1C5A33264(uint64_t result, char a2)
{
  if (*(result + 49) == (a2 & 1))
  {
    *(result + 49) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
    sub_1C5BC7B64();
  }

  return result;
}

void sub_1C5A33384()
{
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1C5BC7D64();
  __swift_project_value_buffer(v1, qword_1EDA5DA78);

  v2 = sub_1C5BC7D44();
  v3 = sub_1C5BCB4F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    swift_getKeyPath();
    sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
    sub_1C5BC7B74();

    *(v4 + 4) = *(v0 + 72);

    _os_log_impl(&dword_1C5922000, v2, v3, "WindowProperties.isFullscreen updated to %{BOOL}d", v4, 8u);
    MEMORY[0x1C69510F0](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1C5A3352C()
{
  swift_getKeyPath();
  sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  return *(v0 + 72);
}

uint64_t sub_1C5A335CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  *a2 = *(v3 + 72);
  return result;
}

void sub_1C5A33674(char a1)
{
  if (*(v1 + 72) == (a1 & 1))
  {
    *(v1 + 72) = a1 & 1;

    sub_1C5A33384();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
    sub_1C5BC7B64();
  }
}

double sub_1C5A337A8()
{
  swift_getKeyPath();
  sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  return *(v0 + 80);
}

void sub_1C5A33848(double a1)
{
  if (*(v1 + 80) == a1)
  {
    *(v1 + 80) = a1;
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v2 = sub_1C5BC7D64();
    __swift_project_value_buffer(v2, qword_1EDA5DA78);

    v6 = sub_1C5BC7D44();
    v3 = sub_1C5BCB4F4();

    if (os_log_type_enabled(v6, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      swift_getKeyPath();
      sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
      sub_1C5BC7B74();

      *(v4 + 4) = *(v1 + 80);
      _os_log_impl(&dword_1C5922000, v6, v3, "WindowProperties.toolbarHeight updated to %f", v4, 0xCu);
      MEMORY[0x1C69510F0](v4, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
    sub_1C5BC7B64();
  }
}

void sub_1C5A33AD8(uint64_t a1, double a2)
{
  *(a1 + 80) = a2;
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v3 = sub_1C5BC7D64();
  __swift_project_value_buffer(v3, qword_1EDA5DA78);

  v4 = sub_1C5BC7D44();
  v5 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    swift_getKeyPath();
    sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
    sub_1C5BC7B74();

    *(v6 + 4) = *(a1 + 80);
    _os_log_impl(&dword_1C5922000, v4, v5, "WindowProperties.toolbarHeight updated to %f", v6, 0xCu);
    MEMORY[0x1C69510F0](v6, -1, -1);
  }
}

__n128 sub_1C5A33C5C@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
  sub_1C5BC7B74();

  result = *(v1 + 104);
  v4 = *(v1 + 136);
  *(a1 + 32) = *(v1 + 120);
  *(a1 + 48) = v4;
  *(a1 + 57) = *(v1 + 145);
  *a1 = *(v1 + 88);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C5A33D1C(__int128 *a1)
{
  v2 = a1[2];
  v17[0] = a1[3];
  *(v17 + 9) = *(a1 + 57);
  v3 = *a1;
  v15 = a1[1];
  v16 = v2;
  v14 = v3;
  v4 = *(v1 + 104);
  v5 = *(v1 + 136);
  v18[2] = *(v1 + 120);
  v19[0] = v5;
  *(v19 + 9) = *(v1 + 145);
  v18[0] = *(v1 + 88);
  v18[1] = v4;
  if (sub_1C592DEB4(v18, &v14))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v12[0] = v1;
    sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
    sub_1C5BC7B64();
  }

  else
  {
    v8 = *(v1 + 104);
    v9 = *(v1 + 136);
    v12[2] = *(v1 + 120);
    v13[0] = v9;
    *(v13 + 9) = *(v1 + 145);
    v10 = *(v1 + 88);
    v12[1] = v8;
    v12[0] = v10;
    v11 = v14;
    *(v1 + 104) = v15;
    *(v1 + 120) = v16;
    *(v1 + 136) = v17[0];
    *(v1 + 145) = *(v17 + 9);
    *(v1 + 88) = v11;
    return sub_1C592DF7C(v12);
  }
}

uint64_t sub_1C5A33EC4(uint64_t a1, __int128 *a2)
{
  v3 = a2[2];
  v18[0] = a2[3];
  *(v18 + 9) = *(a2 + 57);
  v4 = *a2;
  v16 = a2[1];
  v17 = v3;
  v15 = v4;
  v5 = *(a1 + 104);
  v6 = *(a1 + 136);
  v19[2] = *(a1 + 120);
  v20[0] = v6;
  *(v20 + 9) = *(a1 + 145);
  v19[0] = *(a1 + 88);
  v19[1] = v5;
  if (sub_1C592DEB4(v19, &v15))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v13[0] = a1;
    sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties);
    sub_1C5BC7B64();
  }

  else
  {
    v9 = *(a1 + 104);
    v10 = *(a1 + 136);
    v13[2] = *(a1 + 120);
    v14[0] = v10;
    *(v14 + 9) = *(a1 + 145);
    v11 = *(a1 + 88);
    v13[1] = v9;
    v13[0] = v11;
    v12 = v15;
    *(a1 + 104) = v16;
    *(a1 + 120) = v17;
    *(a1 + 136) = v18[0];
    *(a1 + 145) = *(v18 + 9);
    *(a1 + 88) = v12;
    return sub_1C592DF7C(v13);
  }
}

uint64_t sub_1C5A34070()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI16WindowProperties___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A34114()
{
  if (qword_1EDA45F90 != -1)
  {
    swift_once();
  }

  qword_1EC1943A8 = qword_1EDA5DA40;
}

uint64_t NowPlayingMiniPlayerPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t (*MCUINamespace<A>.miniPlayerPosition.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1C593F648();
  sub_1C5BC8F44();
  return sub_1C5A34264;
}

unint64_t sub_1C5A342A0()
{
  result = qword_1EDA47968;
  if (!qword_1EDA47968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47968);
  }

  return result;
}

uint64_t sub_1C5A3430C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5A342A0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1C5A3437C()
{
  result = qword_1EDA4E690;
  if (!qword_1EDA4E690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1961C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4E690);
  }

  return result;
}

void sub_1C5A344F8(void *a1)
{
  v2 = OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentView;
  v6 = *&v1[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentView];
  *&v1[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentView] = a1;
  v3 = a1;
  [v6 removeFromSuperview];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSubview_];
  }
}

char *sub_1C5A34590()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_backgroundView] = 0;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_gradientLayer] = 0;
  v2 = &v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentInsets];
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  *v2 = *MEMORY[0x1E69DDCE0];
  v2[1] = v3;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentView] = 0;
  v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentViewWidthOverflows] = 0;
  v4 = &v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenBounds];
  *v4 = 0u;
  v4[1] = 0u;
  v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenContentWidthOverflows] = 0;
  v17.receiver = v0;
  v17.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = objc_allocWithZone(MEMORY[0x1E69DD298]);
  v7 = v5;
  v8 = [v6 init];
  v9 = v7;
  [v9 addSubview_];
  v10 = *&v9[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_backgroundView];
  *&v9[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_backgroundView] = v8;
  v11 = v8;

  v12 = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  v13 = *&v9[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_gradientLayer];
  *&v9[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_gradientLayer] = v12;
  v14 = v12;

  v15 = [v9 layer];
  [v15 addSublayer_];

  [v9 setInsetsLayoutMarginsFromSafeArea_];
  return v9;
}

void sub_1C5A347A4()
{
  v36.receiver = v0;
  v36.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v36, sel_layoutSubviews);
  v1 = &v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenBounds];
  v2 = *&v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenBounds];
  v3 = *&v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenBounds + 8];
  v4 = *&v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenBounds + 16];
  v5 = *&v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenBounds + 24];
  [v0 bounds];
  v40.origin.x = v6;
  v40.origin.y = v7;
  v40.size.width = v8;
  v40.size.height = v9;
  v39.origin.x = v2;
  v39.origin.y = v3;
  v39.size.width = v4;
  v39.size.height = v5;
  v10 = CGRectEqualToRect(v39, v40);
  [v0 bounds];
  *v1 = v11;
  *(v1 + 1) = v12;
  *(v1 + 2) = v13;
  *(v1 + 3) = v14;
  v15 = v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenContentWidthOverflows];
  v16 = OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentViewWidthOverflows;
  v17 = v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentViewWidthOverflows];
  v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenContentWidthOverflows] = v17;
  v18 = *&v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentView];
  if (v18)
  {
    v19 = v18;
    [v0 bounds];
    [v19 setFrame_];
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1C5A34990(v0[v16]);
    if (!v10 || v15 != v17)
    {
      v25 = OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_backgroundView;
      v26 = *&v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_backgroundView];
      if (v26)
      {
        v27 = v26;
        [v0 bounds];
        [v27 setFrame_];

        v28 = *&v0[v25];
        if (v28)
        {
          v29 = v0[v16];
          v30 = v28;
          if (v29)
          {
            v31 = 0;
          }

          else
          {
            [v0 bounds];
            v37[0] = v32;
            v37[1] = v33;
            v37[2] = v34;
            v37[3] = v35;
            v38 = 0;
            v31 = sub_1C5A35164(v37);
          }

          [v30 setEffect_];
        }
      }
    }
  }
}

void sub_1C5A34990(char a1)
{
  v2 = v1;
  v4 = [v2 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 2)
  {
    v6 = [objc_opt_self() blackColor];
    v29 = [v6 colorWithAlphaComponent_];
  }

  else
  {
    v29 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.901960784 green:0.901960784 blue:0.901960784 alpha:0.8];
  }

  v7 = objc_opt_self();
  [v7 begin];
  [v7 setDisableActions_];
  v9 = OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_gradientLayer;
  v10 = *&v2[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_gradientLayer];
  if (v10)
  {
    LODWORD(v8) = 1.0;
    if (a1)
    {
      *&v8 = 0.0;
    }

    [v10 setOpacity_];
    v11 = *&v2[v9];
    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1C5BD21E0;
      v13 = v11;
      v14 = [v29 colorWithAlphaComponent_];
      v15 = [v14 CGColor];

      type metadata accessor for CGColor(0);
      v17 = v16;
      *(v12 + 56) = v16;
      *(v12 + 32) = v15;
      v18 = [v29 CGColor];
      *(v12 + 88) = v17;
      *(v12 + 64) = v18;
      v19 = [v29 CGColor];
      *(v12 + 120) = v17;
      *(v12 + 96) = v19;
      v20 = sub_1C5BCB044();

      [v13 setColors_];

      v21 = *&v2[v9];
      if (v21)
      {
        v22 = v21;
        [v2 bounds];
        [v22 setFrame_];
      }
    }
  }

  v23 = *&v2[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentView];
  if (v23)
  {
    v24 = *&v2[v9];
    if (v24)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1C5BD31B0;
      sub_1C59B1CD0();
      v26 = v23;
      v27 = v24;
      *(v25 + 32) = sub_1C5BCB724();
      [v26 frame];
      CGRectGetHeight(v31);
      [v2 bounds];
      *(v25 + 40) = sub_1C5BC7BD4();
      *(v25 + 48) = sub_1C5BCB724();
      v28 = sub_1C5BCB044();

      [v27 setLocations_];
    }
  }

  [v7 commit];
}