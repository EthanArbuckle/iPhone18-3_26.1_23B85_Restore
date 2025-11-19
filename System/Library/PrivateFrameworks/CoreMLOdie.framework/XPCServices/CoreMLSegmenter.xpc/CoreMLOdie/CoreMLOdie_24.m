uint64_t sub_100136B04(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t **a4)
{
  v4 = *a2;
  v5 = *a1;
  v6 = **a4;
  v7 = *(*a4 + 4);
  v8 = *a2 >> 4;
  v9 = *a1 >> 4;
  if (v7)
  {
    v10 = v7 - 1;
    v11 = (v7 - 1) & (v8 ^ (v4 >> 9));
    v12 = *(v6 + 16 * v11);
    if (v12 == v4)
    {
      v13 = *(v6 + 16 * v11 + 8);
      v14 = v10 & (v9 ^ (v5 >> 9));
      v15 = *(v6 + 16 * v14);
      if (v15 == v5)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }

    v30 = 1;
    while (v12 != -4096)
    {
      v31 = v11 + v30++;
      v11 = v31 & v10;
      v12 = *(v6 + 16 * v11);
      if (v12 == v4)
      {
        goto LABEL_22;
      }
    }
  }

  v11 = *(*a4 + 4);
LABEL_22:
  v13 = *(v6 + 16 * v11 + 8);
  if (!v7)
  {
    goto LABEL_28;
  }

  v10 = v7 - 1;
  v14 = (v7 - 1) & (v9 ^ (v5 >> 9));
  v15 = *(v6 + 16 * v14);
  if (v15 == v5)
  {
LABEL_4:
    v16 = *(v6 + 16 * v14 + 8);
    v17 = *a3;
    if (v13 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_24:
  v32 = 1;
  while (v15 != -4096)
  {
    v33 = v14 + v32++;
    v14 = v33 & v10;
    v15 = *(v6 + 16 * v14);
    if (v15 == v5)
    {
      goto LABEL_29;
    }
  }

LABEL_28:
  v14 = v7;
LABEL_29:
  v34 = *(v6 + 16 * v14 + 8);
  v17 = *a3;
  if (v13 < v34)
  {
    if (!v7)
    {
      goto LABEL_45;
    }

    v10 = v7 - 1;
LABEL_5:
    v18 = ((v17 >> 4) ^ (v17 >> 9)) & v10;
    v19 = *(v6 + 16 * v18);
    if (v19 == v17)
    {
      v20 = *(v6 + 16 * v18 + 8);
      v21 = v10 & (v8 ^ (v4 >> 9));
      v22 = *(v6 + 16 * v21);
      if (v22 == v4)
      {
LABEL_7:
        if (v20 < *(v6 + 16 * v21 + 8))
        {
LABEL_8:
          *a1 = v17;
          goto LABEL_15;
        }

        *a1 = v4;
        *a2 = v5;
        v23 = *a3;
        goto LABEL_10;
      }

      goto LABEL_48;
    }

    v46 = 1;
    while (v19 != -4096)
    {
      v47 = v18 + v46++;
      v18 = v47 & v10;
      v19 = *(v6 + 16 * v18);
      if (v19 == v17)
      {
        goto LABEL_46;
      }
    }

LABEL_45:
    v18 = v7;
LABEL_46:
    v20 = *(v6 + 16 * v18 + 8);
    if (!v7)
    {
      goto LABEL_52;
    }

    v10 = v7 - 1;
    v21 = (v7 - 1) & (v8 ^ (v4 >> 9));
    v22 = *(v6 + 16 * v21);
    if (v22 == v4)
    {
      goto LABEL_7;
    }

LABEL_48:
    v48 = 1;
    while (v22 != -4096)
    {
      v49 = v21 + v48++;
      v21 = v49 & v10;
      v22 = *(v6 + 16 * v21);
      if (v22 == v4)
      {
        goto LABEL_53;
      }
    }

LABEL_52:
    v21 = v7;
LABEL_53:
    if (v20 < *(v6 + 16 * v21 + 8))
    {
      goto LABEL_8;
    }

    *a1 = v4;
    *a2 = v5;
    v23 = *a3;
    if (!v7)
    {
      goto LABEL_72;
    }

    v10 = v7 - 1;
LABEL_10:
    v24 = ((v23 >> 4) ^ (v23 >> 9)) & v10;
    v25 = *(v6 + 16 * v24);
    if (v25 == v23)
    {
      v26 = *(v6 + 16 * v24 + 8);
      v27 = v10 & (v9 ^ (v5 >> 9));
      v28 = *(v6 + 16 * v27);
      if (v28 == v5)
      {
LABEL_12:
        v7 = v27;
LABEL_13:
        if (v26 >= *(v6 + 16 * v7 + 8))
        {
          return 1;
        }

        *a2 = v23;
LABEL_15:
        *a3 = v5;
        return 1;
      }

LABEL_75:
      v56 = 1;
      while (v28 != -4096)
      {
        v57 = v27 + v56++;
        v27 = v57 & v10;
        v28 = *(v6 + 16 * v27);
        if (v28 == v5)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_13;
    }

    v54 = 1;
    while (v25 != -4096)
    {
      v55 = v24 + v54++;
      v24 = v55 & v10;
      v25 = *(v6 + 16 * v24);
      if (v25 == v23)
      {
        goto LABEL_73;
      }
    }

LABEL_72:
    v24 = v7;
LABEL_73:
    v26 = *(v6 + 16 * v24 + 8);
    if (!v7)
    {
      goto LABEL_13;
    }

    v10 = v7 - 1;
    v27 = (v7 - 1) & (v9 ^ (v5 >> 9));
    v28 = *(v6 + 16 * v27);
    if (v28 == v5)
    {
      goto LABEL_12;
    }

    goto LABEL_75;
  }

  if (!v7)
  {
    goto LABEL_60;
  }

  v10 = v7 - 1;
LABEL_34:
  v35 = ((v17 >> 4) ^ (v17 >> 9)) & v10;
  v36 = *(v6 + 16 * v35);
  if (v36 == v17)
  {
    v37 = *(v6 + 16 * v35 + 8);
    v38 = v10 & (v8 ^ (v4 >> 9));
    v39 = *(v6 + 16 * v38);
    if (v39 == v4)
    {
      goto LABEL_36;
    }

    goto LABEL_63;
  }

  v50 = 1;
  while (v36 != -4096)
  {
    v51 = v35 + v50++;
    v35 = v51 & v10;
    v36 = *(v6 + 16 * v35);
    if (v36 == v17)
    {
      goto LABEL_61;
    }
  }

LABEL_60:
  v35 = v7;
LABEL_61:
  v37 = *(v6 + 16 * v35 + 8);
  if (!v7)
  {
    goto LABEL_67;
  }

  v10 = v7 - 1;
  v38 = (v7 - 1) & (v8 ^ (v4 >> 9));
  v39 = *(v6 + 16 * v38);
  if (v39 == v4)
  {
    goto LABEL_36;
  }

LABEL_63:
  v52 = 1;
  while (v39 != -4096)
  {
    v53 = v38 + v52++;
    v38 = v53 & v10;
    v39 = *(v6 + 16 * v38);
    if (v39 == v4)
    {
      goto LABEL_36;
    }
  }

LABEL_67:
  v38 = v7;
LABEL_36:
  if (v37 >= *(v6 + 16 * v38 + 8))
  {
    return 0;
  }

  *a2 = v17;
  *a3 = v4;
  v40 = *a2;
  v41 = *a1;
  if (v7)
  {
    v42 = v7 - 1;
    v43 = ((v40 >> 4) ^ (v40 >> 9)) & (v7 - 1);
    v44 = *(v6 + 16 * v43);
    if (v44 == v40)
    {
      v45 = *(v6 + 16 * v43 + 8);
      goto LABEL_86;
    }

    v58 = 1;
    while (v44 != -4096)
    {
      v59 = v43 + v58++;
      v43 = v59 & v42;
      v44 = *(v6 + 16 * v43);
      if (v44 == v40)
      {
        goto LABEL_84;
      }
    }
  }

  v43 = v7;
LABEL_84:
  v45 = *(v6 + 16 * v43 + 8);
  if (!v7)
  {
    goto LABEL_88;
  }

  v42 = v7 - 1;
LABEL_86:
  v60 = ((v41 >> 4) ^ (v41 >> 9)) & v42;
  v61 = *(v6 + 16 * v60);
  if (v61 == v41)
  {
LABEL_87:
    v7 = v60;
  }

  else
  {
    v62 = 1;
    while (v61 != -4096)
    {
      v63 = v60 + v62++;
      v60 = v63 & v42;
      v61 = *(v6 + 16 * v60);
      if (v61 == v41)
      {
        goto LABEL_87;
      }
    }
  }

LABEL_88:
  if (v45 >= *(v6 + 16 * v7 + 8))
  {
    return 1;
  }

  *a1 = v40;
  *a2 = v41;
  return 1;
}

uint64_t sub_100136FE4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t **a5)
{
  result = sub_100136B04(a1, a2, a3, a5);
  v11 = *a4;
  v12 = *a3;
  v13 = **a5;
  v14 = *(*a5 + 4);
  if (v14)
  {
    v15 = v14 - 1;
    v16 = (v14 - 1) & ((v11 >> 4) ^ (v11 >> 9));
    v17 = *(v13 + 16 * v16);
    if (v17 == v11)
    {
      v18 = *(v13 + 16 * v16 + 8);
      goto LABEL_11;
    }

    v19 = 1;
    while (v17 != -4096)
    {
      v20 = v16 + v19++;
      v16 = v20 & v15;
      v17 = *(v13 + 16 * v16);
      if (v17 == v11)
      {
        goto LABEL_9;
      }
    }
  }

  v16 = *(*a5 + 4);
LABEL_9:
  v18 = *(v13 + 16 * v16 + 8);
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v14 - 1;
LABEL_11:
  v21 = v15 & ((v12 >> 4) ^ (v12 >> 9));
  v22 = *(v13 + 16 * v21);
  if (v22 == v12)
  {
    goto LABEL_12;
  }

  v29 = 1;
  while (v22 != -4096)
  {
    v30 = v21 + v29++;
    v21 = v30 & v15;
    v22 = *(v13 + 16 * v21);
    if (v22 == v12)
    {
      goto LABEL_12;
    }
  }

LABEL_20:
  v21 = *(*a5 + 4);
LABEL_12:
  if (v18 >= *(v13 + 16 * v21 + 8))
  {
    return result;
  }

  *a3 = v11;
  *a4 = v12;
  v23 = *a3;
  v24 = *a2;
  if (v14)
  {
    v25 = v14 - 1;
    v26 = ((v23 >> 4) ^ (v23 >> 9)) & (v14 - 1);
    v27 = *(v13 + 16 * v26);
    if (v27 == v23)
    {
      v28 = *(v13 + 16 * v26 + 8);
      goto LABEL_28;
    }

    v31 = 1;
    while (v27 != -4096)
    {
      v32 = v26 + v31++;
      v26 = v32 & v25;
      v27 = *(v13 + 16 * v26);
      if (v27 == v23)
      {
        goto LABEL_26;
      }
    }
  }

  v26 = v14;
LABEL_26:
  v28 = *(v13 + 16 * v26 + 8);
  if (!v14)
  {
    goto LABEL_37;
  }

  v25 = v14 - 1;
LABEL_28:
  v33 = ((v24 >> 4) ^ (v24 >> 9)) & v25;
  v34 = *(v13 + 16 * v33);
  if (v34 == v24)
  {
    goto LABEL_29;
  }

  v41 = 1;
  while (v34 != -4096)
  {
    v42 = v33 + v41++;
    v33 = v42 & v25;
    v34 = *(v13 + 16 * v33);
    if (v34 == v24)
    {
      goto LABEL_29;
    }
  }

LABEL_37:
  v33 = v14;
LABEL_29:
  if (v28 >= *(v13 + 16 * v33 + 8))
  {
    return result;
  }

  *a2 = v23;
  *a3 = v24;
  v35 = *a2;
  v36 = *a1;
  if (v14)
  {
    v37 = v14 - 1;
    v38 = ((v35 >> 4) ^ (v35 >> 9)) & (v14 - 1);
    v39 = *(v13 + 16 * v38);
    if (v39 == v35)
    {
      v40 = *(v13 + 16 * v38 + 8);
      goto LABEL_45;
    }

    v43 = 1;
    while (v39 != -4096)
    {
      v44 = v38 + v43++;
      v38 = v44 & v37;
      v39 = *(v13 + 16 * v38);
      if (v39 == v35)
      {
        goto LABEL_43;
      }
    }
  }

  v38 = v14;
LABEL_43:
  v40 = *(v13 + 16 * v38 + 8);
  if (!v14)
  {
    goto LABEL_47;
  }

  v37 = v14 - 1;
LABEL_45:
  v45 = ((v36 >> 4) ^ (v36 >> 9)) & v37;
  v46 = *(v13 + 16 * v45);
  if (v46 == v36)
  {
LABEL_46:
    v14 = v45;
  }

  else
  {
    v47 = 1;
    while (v46 != -4096)
    {
      v48 = v45 + v47++;
      v45 = v48 & v37;
      v46 = *(v13 + 16 * v45);
      if (v46 == v36)
      {
        goto LABEL_46;
      }
    }
  }

LABEL_47:
  if (v40 < *(v13 + 16 * v14 + 8))
  {
    *a1 = v35;
    *a2 = v36;
  }

  return result;
}

uint64_t sub_1001372D4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t **a6)
{
  result = sub_100136FE4(a1, a2, a3, a4, a6);
  v13 = *a5;
  v14 = *a4;
  v15 = **a6;
  v16 = *(*a6 + 4);
  if (v16)
  {
    v17 = v16 - 1;
    v18 = (v16 - 1) & ((v13 >> 4) ^ (v13 >> 9));
    v19 = *(v15 + 16 * v18);
    if (v19 == v13)
    {
      v20 = *(v15 + 16 * v18 + 8);
      goto LABEL_11;
    }

    v21 = 1;
    while (v19 != -4096)
    {
      v22 = v18 + v21++;
      v18 = v22 & v17;
      v19 = *(v15 + 16 * v18);
      if (v19 == v13)
      {
        goto LABEL_9;
      }
    }
  }

  v18 = *(*a6 + 4);
LABEL_9:
  v20 = *(v15 + 16 * v18 + 8);
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = v16 - 1;
LABEL_11:
  v23 = v17 & ((v14 >> 4) ^ (v14 >> 9));
  v24 = *(v15 + 16 * v23);
  if (v24 == v14)
  {
    goto LABEL_12;
  }

  v31 = 1;
  while (v24 != -4096)
  {
    v32 = v23 + v31++;
    v23 = v32 & v17;
    v24 = *(v15 + 16 * v23);
    if (v24 == v14)
    {
      goto LABEL_12;
    }
  }

LABEL_20:
  v23 = *(*a6 + 4);
LABEL_12:
  if (v20 >= *(v15 + 16 * v23 + 8))
  {
    return result;
  }

  *a4 = v13;
  *a5 = v14;
  v25 = *a4;
  v26 = *a3;
  if (v16)
  {
    v27 = v16 - 1;
    v28 = ((v25 >> 4) ^ (v25 >> 9)) & (v16 - 1);
    v29 = *(v15 + 16 * v28);
    if (v29 == v25)
    {
      v30 = *(v15 + 16 * v28 + 8);
      goto LABEL_28;
    }

    v33 = 1;
    while (v29 != -4096)
    {
      v34 = v28 + v33++;
      v28 = v34 & v27;
      v29 = *(v15 + 16 * v28);
      if (v29 == v25)
      {
        goto LABEL_26;
      }
    }
  }

  v28 = v16;
LABEL_26:
  v30 = *(v15 + 16 * v28 + 8);
  if (!v16)
  {
    goto LABEL_37;
  }

  v27 = v16 - 1;
LABEL_28:
  v35 = ((v26 >> 4) ^ (v26 >> 9)) & v27;
  v36 = *(v15 + 16 * v35);
  if (v36 == v26)
  {
    goto LABEL_29;
  }

  v43 = 1;
  while (v36 != -4096)
  {
    v44 = v35 + v43++;
    v35 = v44 & v27;
    v36 = *(v15 + 16 * v35);
    if (v36 == v26)
    {
      goto LABEL_29;
    }
  }

LABEL_37:
  v35 = v16;
LABEL_29:
  if (v30 >= *(v15 + 16 * v35 + 8))
  {
    return result;
  }

  *a3 = v25;
  *a4 = v26;
  v37 = *a3;
  v38 = *a2;
  if (v16)
  {
    v39 = v16 - 1;
    v40 = ((v37 >> 4) ^ (v37 >> 9)) & (v16 - 1);
    v41 = *(v15 + 16 * v40);
    if (v41 == v37)
    {
      v42 = *(v15 + 16 * v40 + 8);
      goto LABEL_45;
    }

    v45 = 1;
    while (v41 != -4096)
    {
      v46 = v40 + v45++;
      v40 = v46 & v39;
      v41 = *(v15 + 16 * v40);
      if (v41 == v37)
      {
        goto LABEL_43;
      }
    }
  }

  v40 = v16;
LABEL_43:
  v42 = *(v15 + 16 * v40 + 8);
  if (!v16)
  {
    goto LABEL_54;
  }

  v39 = v16 - 1;
LABEL_45:
  v47 = ((v38 >> 4) ^ (v38 >> 9)) & v39;
  v48 = *(v15 + 16 * v47);
  if (v48 == v38)
  {
    goto LABEL_46;
  }

  v55 = 1;
  while (v48 != -4096)
  {
    v56 = v47 + v55++;
    v47 = v56 & v39;
    v48 = *(v15 + 16 * v47);
    if (v48 == v38)
    {
      goto LABEL_46;
    }
  }

LABEL_54:
  v47 = v16;
LABEL_46:
  if (v42 >= *(v15 + 16 * v47 + 8))
  {
    return result;
  }

  *a2 = v37;
  *a3 = v38;
  v49 = *a2;
  v50 = *a1;
  if (v16)
  {
    v51 = v16 - 1;
    v52 = ((v49 >> 4) ^ (v49 >> 9)) & (v16 - 1);
    v53 = *(v15 + 16 * v52);
    if (v53 == v49)
    {
      v54 = *(v15 + 16 * v52 + 8);
      goto LABEL_62;
    }

    v57 = 1;
    while (v53 != -4096)
    {
      v58 = v52 + v57++;
      v52 = v58 & v51;
      v53 = *(v15 + 16 * v52);
      if (v53 == v49)
      {
        goto LABEL_60;
      }
    }
  }

  v52 = v16;
LABEL_60:
  v54 = *(v15 + 16 * v52 + 8);
  if (!v16)
  {
    goto LABEL_64;
  }

  v51 = v16 - 1;
LABEL_62:
  v59 = ((v50 >> 4) ^ (v50 >> 9)) & v51;
  v60 = *(v15 + 16 * v59);
  if (v60 == v50)
  {
LABEL_63:
    v16 = v59;
  }

  else
  {
    v61 = 1;
    while (v60 != -4096)
    {
      v62 = v59 + v61++;
      v59 = v62 & v51;
      v60 = *(v15 + 16 * v59);
      if (v60 == v50)
      {
        goto LABEL_63;
      }
    }
  }

LABEL_64:
  if (v54 < *(v15 + 16 * v16 + 8))
  {
    *a1 = v49;
    *a2 = v50;
  }

  return result;
}

void *sub_1001376A8(void *result, void *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = **a3;
      v5 = *(*a3 + 4);
      v6 = v5 - 1;
      v7 = v4 + 16 * v5;
      v8 = result;
      do
      {
        v10 = v3;
        v12 = *v8;
        v11 = v8[1];
        v13 = v11 >> 4;
        if (v5)
        {
          v14 = v6 & (v13 ^ (v11 >> 9));
          v15 = *(v4 + 16 * v14);
          if (v15 != v11)
          {
            v33 = 1;
            while (v15 != -4096)
            {
              v34 = v14 + v33++;
              v14 = v34 & v6;
              v15 = *(v4 + 16 * v14);
              if (v15 == v11)
              {
                goto LABEL_9;
              }
            }

            v14 = v5;
          }

LABEL_9:
          v16 = *(v4 + 16 * v14 + 8);
          v17 = v6 & ((v12 >> 4) ^ (v12 >> 9));
          v18 = *(v4 + 16 * v17);
          if (v18 != v12)
          {
            v19 = 1;
            while (v18 != -4096)
            {
              v20 = v17 + v19++;
              v17 = v20 & v6;
              v18 = *(v4 + 16 * v17);
              if (v18 == v12)
              {
                goto LABEL_15;
              }
            }

            if (v16 >= *(v4 + 16 * v5 + 8))
            {
              goto LABEL_6;
            }

LABEL_16:
            v21 = v6 & (v13 ^ (v11 >> 9));
            v22 = (v4 + 16 * v21);
            v9 = v10;
            while (1)
            {
              *v9 = v12;
              if (v8 == result)
              {
                break;
              }

              v9 = v8;
              v25 = *--v8;
              v12 = v25;
              if (v5)
              {
                v26 = *v22;
                v27 = v21;
                if (*v22 != v11)
                {
                  v31 = 1;
                  LODWORD(v27) = v21;
                  while (v26 != -4096)
                  {
                    v32 = v27 + v31++;
                    v27 = v32 & v6;
                    v26 = *(v4 + 16 * v27);
                    if (v26 == v11)
                    {
                      goto LABEL_22;
                    }
                  }

                  v27 = v5;
                }

LABEL_22:
                v24 = *(v4 + 16 * v27 + 8);
                v23 = ((v12 >> 4) ^ (v12 >> 9)) & v6;
                v28 = *(v4 + 16 * v23);
                if (v28 != v12)
                {
                  v29 = 1;
                  while (v28 != -4096)
                  {
                    v30 = v23 + v29++;
                    v23 = v30 & v6;
                    v28 = *(v4 + 16 * v23);
                    if (v28 == v12)
                    {
                      goto LABEL_18;
                    }
                  }

                  v23 = v5;
                }
              }

              else
              {
                v23 = 0;
                v24 = *(v7 + 8);
              }

LABEL_18:
              if (v24 >= *(v4 + 16 * v23 + 8))
              {
                goto LABEL_5;
              }
            }

            v9 = result;
LABEL_5:
            *v9 = v11;
            goto LABEL_6;
          }
        }

        else
        {
          v17 = 0;
          v16 = *(v7 + 8);
        }

LABEL_15:
        if (v16 < *(v4 + 16 * v17 + 8))
        {
          goto LABEL_16;
        }

LABEL_6:
        v3 = v10 + 1;
        v8 = v10;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

void *sub_1001378B0(void *result, void *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = **a3;
      v5 = *(*a3 + 4);
      v6 = v5 - 1;
      v7 = v4 + 16 * v5;
      do
      {
        v8 = v3;
        v10 = *result;
        v9 = result[1];
        v11 = v9 >> 4;
        if (v5)
        {
          v12 = v6 & (v11 ^ (v9 >> 9));
          v13 = *(v4 + 16 * v12);
          if (v13 != v9)
          {
            v32 = 1;
            while (v13 != -4096)
            {
              v33 = v12 + v32++;
              v12 = v33 & v6;
              v13 = *(v4 + 16 * v12);
              if (v13 == v9)
              {
                goto LABEL_8;
              }
            }

            v12 = v5;
          }

LABEL_8:
          v14 = *(v4 + 16 * v12 + 8);
          v15 = v6 & ((v10 >> 4) ^ (v10 >> 9));
          v16 = *(v4 + 16 * v15);
          if (v16 != v10)
          {
            v17 = 1;
            while (v16 != -4096)
            {
              v18 = v15 + v17++;
              v15 = v18 & v6;
              v16 = *(v4 + 16 * v15);
              if (v16 == v10)
              {
                goto LABEL_14;
              }
            }

            if (v14 >= *(v4 + 16 * v5 + 8))
            {
              goto LABEL_5;
            }

LABEL_15:
            v19 = v6 & (v11 ^ (v9 >> 9));
            v20 = (v4 + 16 * v19);
            v21 = v8;
            do
            {
              *v21 = v10;
              v21 = result;
              v24 = *--result;
              v10 = v24;
              if (v5)
              {
                v25 = *v20;
                v26 = v19;
                if (*v20 != v9)
                {
                  v30 = 1;
                  LODWORD(v26) = v19;
                  while (v25 != -4096)
                  {
                    v31 = v26 + v30++;
                    v26 = v31 & v6;
                    v25 = *(v4 + 16 * v26);
                    if (v25 == v9)
                    {
                      goto LABEL_20;
                    }
                  }

                  v26 = v5;
                }

LABEL_20:
                v23 = *(v4 + 16 * v26 + 8);
                v22 = ((v10 >> 4) ^ (v10 >> 9)) & v6;
                v27 = *(v4 + 16 * v22);
                if (v27 != v10)
                {
                  v28 = 1;
                  while (v27 != -4096)
                  {
                    v29 = v22 + v28++;
                    v22 = v29 & v6;
                    v27 = *(v4 + 16 * v22);
                    if (v27 == v10)
                    {
                      goto LABEL_17;
                    }
                  }

                  v22 = v5;
                }
              }

              else
              {
                v22 = 0;
                v23 = *(v7 + 8);
              }

LABEL_17:
              ;
            }

            while (v23 < *(v4 + 16 * v22 + 8));
            *v21 = v9;
            goto LABEL_5;
          }
        }

        else
        {
          v15 = 0;
          v14 = *(v7 + 8);
        }

LABEL_14:
        if (v14 < *(v4 + 16 * v15 + 8))
        {
          goto LABEL_15;
        }

LABEL_5:
        v3 = v8 + 1;
        result = v8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t *sub_100137AA8(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v3 = *a1;
  v4 = *(a2 - 1);
  v5 = **a3;
  v6 = *(*a3 + 4);
  v7 = *a1 >> 4;
  if (v6)
  {
    v8 = v6 - 1;
    v9 = (v6 - 1) & (v7 ^ (v3 >> 9));
    v10 = *(v5 + 16 * v9);
    if (v10 == v3)
    {
      v11 = *(v5 + 16 * v9 + 8);
      goto LABEL_11;
    }

    v12 = 1;
    while (v10 != -4096)
    {
      v13 = v9 + v12++;
      v9 = v13 & v8;
      v10 = *(v5 + 16 * v9);
      if (v10 == v3)
      {
        goto LABEL_9;
      }
    }
  }

  v9 = *(*a3 + 4);
LABEL_9:
  v11 = *(v5 + 16 * v9 + 8);
  if (!v6)
  {
    goto LABEL_107;
  }

  v8 = v6 - 1;
LABEL_11:
  v14 = v8 & ((v4 >> 4) ^ (v4 >> 9));
  v15 = *(v5 + 16 * v14);
  if (v15 == v4)
  {
    goto LABEL_12;
  }

  v81 = 1;
  while (v15 != -4096)
  {
    v82 = v14 + v81++;
    v14 = v82 & v8;
    v15 = *(v5 + 16 * v14);
    if (v15 == v4)
    {
      goto LABEL_12;
    }
  }

LABEL_107:
  v14 = *(*a3 + 4);
LABEL_12:
  v16 = *(v5 + 16 * v14 + 8);
  v17 = v6 - 1;
  v18 = (v6 - 1) & (v7 ^ (v3 >> 9));
  v19 = (v5 + 16 * v18);
  v20 = v5 + 16 * v6;
  v21 = a1;
  if (v11 < v16)
  {
    do
    {
      v25 = v21[1];
      ++v21;
      v24 = v25;
      if (v6)
      {
        v26 = *v19;
        v27 = (v19 + 1);
        if (*v19 != v3)
        {
          v31 = 1;
          LODWORD(v32) = v18;
          while (v26 != -4096)
          {
            v33 = v32 + v31++;
            v32 = v33 & v17;
            v26 = *(v5 + 16 * v32);
            if (v26 == v3)
            {
              goto LABEL_29;
            }
          }

          v32 = v6;
LABEL_29:
          v27 = (v5 + 16 * v32 + 8);
        }

        v23 = *v27;
        v22 = ((v24 >> 4) ^ (v24 >> 9)) & v17;
        v28 = *(v5 + 16 * v22);
        if (v28 != v24)
        {
          v29 = 1;
          while (v28 != -4096)
          {
            v30 = v22 + v29++;
            v22 = v30 & v17;
            v28 = *(v5 + 16 * v22);
            if (v28 == v24)
            {
              goto LABEL_15;
            }
          }

          v22 = v6;
        }
      }

      else
      {
        v22 = 0;
        v23 = *(v20 + 8);
      }

LABEL_15:
      ;
    }

    while (v23 >= *(v5 + 16 * v22 + 8));
  }

  else
  {
    do
    {
      if (++v21 >= a2)
      {
        break;
      }

      if (v6)
      {
        v36 = *v19;
        v37 = (v19 + 1);
        if (*v19 != v3)
        {
          v41 = 1;
          LODWORD(v42) = v18;
          while (v36 != -4096)
          {
            v43 = v42 + v41++;
            v42 = v43 & v17;
            v36 = *(v5 + 16 * v42);
            if (v36 == v3)
            {
              goto LABEL_46;
            }
          }

          v42 = v6;
LABEL_46:
          v37 = (v5 + 16 * v42 + 8);
        }

        v35 = *v37;
        v34 = ((*v21 >> 4) ^ (*v21 >> 9)) & v17;
        v38 = *(v5 + 16 * v34);
        if (v38 != *v21)
        {
          v39 = 1;
          while (v38 != -4096)
          {
            v40 = v34 + v39++;
            v34 = v40 & v17;
            v38 = *(v5 + 16 * v34);
            if (v38 == *v21)
            {
              goto LABEL_31;
            }
          }

          v34 = v6;
        }
      }

      else
      {
        v34 = 0;
        v35 = *(v20 + 8);
      }

LABEL_31:
      ;
    }

    while (v35 >= *(v5 + 16 * v34 + 8));
  }

  if (v21 < a2)
  {
    do
    {
      v71 = *--a2;
      v70 = v71;
      if (v6)
      {
        v72 = *v19;
        v73 = (v19 + 1);
        if (*v19 != v3)
        {
          v77 = 1;
          LODWORD(v78) = v18;
          while (v72 != -4096)
          {
            v79 = v78 + v77++;
            v78 = v79 & v17;
            v72 = *(v5 + 16 * v78);
            if (v72 == v3)
            {
              goto LABEL_99;
            }
          }

          v78 = v6;
LABEL_99:
          v73 = (v5 + 16 * v78 + 8);
        }

        v69 = *v73;
        v68 = ((v70 >> 4) ^ (v70 >> 9)) & v17;
        v74 = *(v5 + 16 * v68);
        if (v74 != v70)
        {
          v75 = 1;
          while (v74 != -4096)
          {
            v76 = v68 + v75++;
            v68 = v76 & v17;
            v74 = *(v5 + 16 * v68);
            if (v74 == v70)
            {
              goto LABEL_85;
            }
          }

          v68 = v6;
        }
      }

      else
      {
        v68 = 0;
        v69 = *(v20 + 8);
      }

LABEL_85:
      ;
    }

    while (v69 < *(v5 + 16 * v68 + 8));
  }

  if (v21 < a2)
  {
    v44 = *v21;
    v45 = *a2;
    do
    {
      *v21 = v45;
      *a2 = v44;
      do
      {
        v48 = v21[1];
        ++v21;
        v44 = v48;
        if (v6)
        {
          v49 = *v19;
          v50 = (v19 + 1);
          if (*v19 != v3)
          {
            v54 = 1;
            LODWORD(v55) = v18;
            while (v49 != -4096)
            {
              v56 = v55 + v54++;
              v55 = v56 & v17;
              v49 = *(v5 + 16 * v55);
              if (v49 == v3)
              {
                goto LABEL_67;
              }
            }

            v55 = v6;
LABEL_67:
            v50 = (v5 + 16 * v55 + 8);
          }

          v47 = *v50;
          v46 = ((v44 >> 4) ^ (v44 >> 9)) & v17;
          v51 = *(v5 + 16 * v46);
          if (v51 != v44)
          {
            v52 = 1;
            while (v51 != -4096)
            {
              v53 = v46 + v52++;
              v46 = v53 & v17;
              v51 = *(v5 + 16 * v46);
              if (v51 == v44)
              {
                goto LABEL_53;
              }
            }

            v46 = v6;
          }
        }

        else
        {
          v46 = 0;
          v47 = *(v20 + 8);
        }

LABEL_53:
        ;
      }

      while (v47 >= *(v5 + 16 * v46 + 8));
      do
      {
        v59 = *--a2;
        v45 = v59;
        if (v6)
        {
          v60 = *v19;
          v61 = (v19 + 1);
          if (*v19 != v3)
          {
            v65 = 1;
            LODWORD(v66) = v18;
            while (v60 != -4096)
            {
              v67 = v66 + v65++;
              v66 = v67 & v17;
              v60 = *(v5 + 16 * v66);
              if (v60 == v3)
              {
                goto LABEL_83;
              }
            }

            v66 = v6;
LABEL_83:
            v61 = (v5 + 16 * v66 + 8);
          }

          v58 = *v61;
          v57 = ((v45 >> 4) ^ (v45 >> 9)) & v17;
          v62 = *(v5 + 16 * v57);
          if (v62 != v45)
          {
            v63 = 1;
            while (v62 != -4096)
            {
              v64 = v57 + v63++;
              v57 = v64 & v17;
              v62 = *(v5 + 16 * v57);
              if (v62 == v45)
              {
                goto LABEL_69;
              }
            }

            v57 = v6;
          }
        }

        else
        {
          v57 = 0;
          v58 = *(v20 + 8);
        }

LABEL_69:
        ;
      }

      while (v58 < *(v5 + 16 * v57 + 8));
    }

    while (v21 < a2);
  }

  if (v21 - 1 != a1)
  {
    *a1 = *(v21 - 1);
  }

  *(v21 - 1) = v3;
  return v21;
}

void *sub_100137FDC(void *a1, void *a2, uint64_t **a3)
{
  v3 = *a1;
  v4 = **a3;
  v5 = *(*a3 + 4);
  v6 = v5 - 1;
  v7 = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
  v8 = (v4 + 16 * v7);
  v9 = v4 + 16 * v5;
  v10 = a1;
  do
  {
    v13 = v10;
    v15 = v10[1];
    ++v10;
    v14 = v15;
    if (v5)
    {
      v16 = v6 & ((v14 >> 4) ^ (v14 >> 9));
      v17 = *(v4 + 16 * v16);
      if (v17 != v14)
      {
        v19 = 1;
        while (v17 != -4096)
        {
          v20 = v16 + v19++;
          v16 = v20 & v6;
          v17 = *(v4 + 16 * v16);
          if (v17 == v14)
          {
            goto LABEL_6;
          }
        }

        v16 = v5;
      }

LABEL_6:
      v12 = *(v4 + 16 * v16 + 8);
      v18 = *v8;
      if (*v8 == v3)
      {
        v11 = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
      }

      else
      {
        v21 = 1;
        LODWORD(v11) = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
        while (v18 != -4096)
        {
          v22 = v11 + v21++;
          v11 = v22 & v6;
          v18 = *(v4 + 16 * v11);
          if (v18 == v3)
          {
            goto LABEL_3;
          }
        }

        v11 = v5;
      }
    }

    else
    {
      v11 = 0;
      v12 = *(v9 + 8);
    }

LABEL_3:
    ;
  }

  while (v12 < *(v4 + 16 * v11 + 8));
  if (v13 == a1)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v37 = *--a2;
      v36 = v37;
      if (v5)
      {
        v38 = ((v36 >> 4) ^ (v36 >> 9)) & v6;
        v39 = *(v4 + 16 * v38);
        if (v39 != v36)
        {
          v41 = 1;
          while (v39 != -4096)
          {
            v42 = v38 + v41++;
            v38 = v42 & v6;
            v39 = *(v4 + 16 * v38);
            if (v39 == v36)
            {
              goto LABEL_41;
            }
          }

          v38 = v5;
        }

LABEL_41:
        v35 = *(v4 + 16 * v38 + 8);
        v40 = *v8;
        if (*v8 == v3)
        {
          v34 = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
        }

        else
        {
          v43 = 1;
          LODWORD(v34) = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
          while (v40 != -4096)
          {
            v44 = v34 + v43++;
            v34 = v44 & v6;
            v40 = *(v4 + 16 * v34);
            if (v40 == v3)
            {
              goto LABEL_37;
            }
          }

          v34 = v5;
        }
      }

      else
      {
        v34 = 0;
        v35 = *(v9 + 8);
      }

LABEL_37:
      ;
    }

    while (v35 >= *(v4 + 16 * v34 + 8));
  }

  else
  {
    do
    {
      v26 = *--a2;
      v25 = v26;
      if (v5)
      {
        v27 = ((v25 >> 4) ^ (v25 >> 9)) & v6;
        v28 = *(v4 + 16 * v27);
        if (v28 != v25)
        {
          v30 = 1;
          while (v28 != -4096)
          {
            v31 = v27 + v30++;
            v27 = v31 & v6;
            v28 = *(v4 + 16 * v27);
            if (v28 == v25)
            {
              goto LABEL_24;
            }
          }

          v27 = v5;
        }

LABEL_24:
        v24 = *(v4 + 16 * v27 + 8);
        v29 = *v8;
        if (*v8 == v3)
        {
          v23 = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
        }

        else
        {
          v32 = 1;
          LODWORD(v23) = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
          while (v29 != -4096)
          {
            v33 = v23 + v32++;
            v23 = v33 & v6;
            v29 = *(v4 + 16 * v23);
            if (v29 == v3)
            {
              goto LABEL_21;
            }
          }

          v23 = v5;
        }
      }

      else
      {
        v23 = 0;
        v24 = *(v9 + 8);
      }

LABEL_21:
      ;
    }

    while (v24 >= *(v4 + 16 * v23 + 8));
  }

  if (v10 < a2)
  {
    v45 = *a2;
    v46 = v10;
    v47 = a2;
    do
    {
      *v46 = v45;
      *v47 = v14;
      do
      {
        v13 = v46;
        v50 = v46[1];
        ++v46;
        v14 = v50;
        if (v5)
        {
          v51 = ((v14 >> 4) ^ (v14 >> 9)) & v6;
          v52 = *(v4 + 16 * v51);
          if (v52 != v14)
          {
            v54 = 1;
            while (v52 != -4096)
            {
              v55 = v51 + v54++;
              v51 = v55 & v6;
              v52 = *(v4 + 16 * v51);
              if (v52 == v14)
              {
                goto LABEL_61;
              }
            }

            v51 = v5;
          }

LABEL_61:
          v49 = *(v4 + 16 * v51 + 8);
          v53 = *v8;
          if (*v8 == v3)
          {
            v48 = v7;
          }

          else
          {
            v56 = 1;
            LODWORD(v48) = v7;
            while (v53 != -4096)
            {
              v57 = v48 + v56++;
              v48 = v57 & v6;
              v53 = *(v4 + 16 * v48);
              if (v53 == v3)
              {
                goto LABEL_58;
              }
            }

            v48 = v5;
          }
        }

        else
        {
          v48 = 0;
          v49 = *(v9 + 8);
        }

LABEL_58:
        ;
      }

      while (v49 < *(v4 + 16 * v48 + 8));
      do
      {
        v60 = *--v47;
        v45 = v60;
        if (v5)
        {
          v61 = ((v45 >> 4) ^ (v45 >> 9)) & v6;
          v62 = *(v4 + 16 * v61);
          if (v62 != v45)
          {
            v64 = 1;
            while (v62 != -4096)
            {
              v65 = v61 + v64++;
              v61 = v65 & v6;
              v62 = *(v4 + 16 * v61);
              if (v62 == v45)
              {
                goto LABEL_77;
              }
            }

            v61 = v5;
          }

LABEL_77:
          v59 = *(v4 + 16 * v61 + 8);
          v63 = *v8;
          if (*v8 == v3)
          {
            v58 = v7;
          }

          else
          {
            v66 = 1;
            LODWORD(v58) = v7;
            while (v63 != -4096)
            {
              v67 = v58 + v66++;
              v58 = v67 & v6;
              v63 = *(v4 + 16 * v58);
              if (v63 == v3)
              {
                goto LABEL_74;
              }
            }

            v58 = v5;
          }
        }

        else
        {
          v58 = 0;
          v59 = *(v9 + 8);
        }

LABEL_74:
        ;
      }

      while (v59 >= *(v4 + 16 * v58 + 8));
    }

    while (v46 < v47);
  }

  if (v13 != a1)
  {
    *a1 = *v13;
  }

  *v13 = v3;
  return v13;
}

BOOL sub_100138454(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_100136B04(a1, a1 + 1, a2 - 1, a3);
        return 1;
      case 4:
        sub_100136FE4(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_1001372D4(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      v7 = **a3;
      v8 = *(*a3 + 4);
      if (v8)
      {
        v9 = v8 - 1;
        v10 = (v8 - 1) & ((v5 >> 4) ^ (v5 >> 9));
        v11 = *(v7 + 16 * v10);
        if (v11 == v5)
        {
          v12 = *(v7 + 16 * v10 + 8);
          goto LABEL_59;
        }

        v48 = 1;
        while (v11 != -4096)
        {
          v49 = v10 + v48++;
          v10 = v49 & v9;
          v11 = *(v7 + 16 * v10);
          if (v11 == v5)
          {
            goto LABEL_57;
          }
        }
      }

      v10 = *(*a3 + 4);
LABEL_57:
      v12 = *(v7 + 16 * v10 + 8);
      if (!v8)
      {
        goto LABEL_61;
      }

      v9 = v8 - 1;
LABEL_59:
      v50 = v9 & ((v6 >> 4) ^ (v6 >> 9));
      v51 = *(v7 + 16 * v50);
      if (v51 == v6)
      {
LABEL_60:
        v8 = v50;
      }

      else
      {
        v52 = 1;
        while (v51 != -4096)
        {
          v53 = v50 + v52++;
          v50 = v53 & v9;
          v51 = *(v7 + 16 * v50);
          if (v51 == v6)
          {
            goto LABEL_60;
          }
        }
      }

LABEL_61:
      if (v12 < *(v7 + 16 * v8 + 8))
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }

      return 1;
    }
  }

  v14 = a1 + 2;
  sub_100136B04(a1, a1 + 1, a1 + 2, a3);
  v17 = a1 + 3;
  if (a1 + 3 != a2)
  {
    v18 = 0;
    v19 = **a3;
    v20 = *(*a3 + 4);
    v21 = v20 - 1;
    v22 = v19 + 16 * v20;
    while (1)
    {
      v24 = *v17;
      v25 = *v14;
      v26 = *v17 >> 4;
      if (!v20)
      {
        break;
      }

      v27 = v21 & (v26 ^ (v24 >> 9));
      v28 = *(v19 + 16 * v27);
      if (v28 != v24)
      {
        v46 = 1;
        while (v28 != -4096)
        {
          v47 = v27 + v46++;
          v27 = v47 & v21;
          v28 = *(v19 + 16 * v27);
          if (v28 == v24)
          {
            goto LABEL_19;
          }
        }

        v27 = v20;
      }

LABEL_19:
      v29 = *(v19 + 16 * v27 + 8);
      v30 = v21 & ((v25 >> 4) ^ (v25 >> 9));
      v31 = *(v19 + 16 * v30);
      if (v31 == v25)
      {
        goto LABEL_25;
      }

      v32 = 1;
      while (v31 != -4096)
      {
        v33 = v30 + v32++;
        v30 = v33 & v21;
        v31 = *(v19 + 16 * v30);
        if (v31 == v25)
        {
          goto LABEL_25;
        }
      }

      if (v29 >= *(v19 + 16 * v20 + 8))
      {
        goto LABEL_16;
      }

LABEL_26:
      v34 = v21 & (v26 ^ (v24 >> 9));
      v35 = (v19 + 16 * v34);
      v23 = v17;
      while (1)
      {
        *v23 = v25;
        if (v14 == a1)
        {
          break;
        }

        v23 = v14;
        v38 = *--v14;
        v25 = v38;
        if (v20)
        {
          v39 = *v35;
          v40 = v34;
          if (*v35 != v24)
          {
            v44 = 1;
            LODWORD(v40) = v34;
            while (v39 != -4096)
            {
              v45 = v40 + v44++;
              v40 = v45 & v21;
              v39 = *(v19 + 16 * v40);
              if (v39 == v24)
              {
                goto LABEL_32;
              }
            }

            v40 = v20;
          }

LABEL_32:
          v37 = *(v19 + 16 * v40 + 8);
          v36 = ((v25 >> 4) ^ (v25 >> 9)) & v21;
          v41 = *(v19 + 16 * v36);
          if (v41 != v25)
          {
            v42 = 1;
            while (v41 != -4096)
            {
              v43 = v36 + v42++;
              v36 = v43 & v21;
              v41 = *(v19 + 16 * v36);
              if (v41 == v25)
              {
                goto LABEL_28;
              }
            }

            v36 = v20;
          }
        }

        else
        {
          v36 = 0;
          v37 = *(v22 + 8);
        }

LABEL_28:
        if (v37 >= *(v19 + 16 * v36 + 8))
        {
          goto LABEL_15;
        }
      }

      v23 = a1;
LABEL_15:
      *v23 = v24;
      if (++v18 == 8)
      {
        return v17 + 1 == a2;
      }

LABEL_16:
      v14 = v17++;
      if (v17 == a2)
      {
        return 1;
      }
    }

    v30 = 0;
    v29 = *(v22 + 8);
LABEL_25:
    if (v29 >= *(v19 + 16 * v30 + 8))
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  return 1;
}

uint64_t sub_10013885C(uint64_t result, uint64_t **a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (a4 - result) >> 3)
    {
      v5 = (a4 - result) >> 2;
      v6 = v5 + 1;
      v7 = (result + 8 * (v5 + 1));
      v8 = v5 + 2;
      v9 = *a2;
      v10 = **a2;
      if (v8 >= a3)
      {
        LODWORD(v9) = *(v9 + 4);
        v16 = *v7;
        v17 = *a4;
        v18 = *a4 >> 4;
        if (!v9)
        {
          goto LABEL_27;
        }

        goto LABEL_20;
      }

      v11 = v7[1];
      v9 = *(v9 + 4);
      if (v9)
      {
        v12 = v9 - 1;
        v13 = (v9 - 1) & ((*v7 >> 4) ^ (*v7 >> 9));
        v14 = *(v10 + 16 * v13);
        if (v14 == *v7)
        {
          v15 = *(v10 + 16 * v13 + 8);
          goto LABEL_16;
        }

        v19 = 1;
        while (v14 != -4096)
        {
          v20 = v13 + v19++;
          v13 = v20 & v12;
          v14 = *(v10 + 16 * v13);
          if (v14 == *v7)
          {
            goto LABEL_14;
          }
        }
      }

      v13 = v9;
LABEL_14:
      v15 = *(v10 + 16 * v13 + 8);
      if (!v9)
      {
        goto LABEL_80;
      }

      v12 = v9 - 1;
LABEL_16:
      v21 = v12 & ((v11 >> 4) ^ (v11 >> 9));
      v22 = *(v10 + 16 * v21);
      if (v22 == v11)
      {
        goto LABEL_17;
      }

      v59 = 1;
      while (v22 != -4096)
      {
        v60 = v21 + v59++;
        v21 = v60 & v12;
        v22 = *(v10 + 16 * v21);
        if (v22 == v11)
        {
          goto LABEL_17;
        }
      }

LABEL_80:
      v21 = v9;
LABEL_17:
      if (v15 < *(v10 + 16 * v21 + 8))
      {
        ++v7;
        v6 = v8;
      }

      v16 = *v7;
      v17 = *a4;
      v18 = *a4 >> 4;
      if (!v9)
      {
        goto LABEL_27;
      }

LABEL_20:
      v23 = v9 - 1;
      v24 = (v9 - 1) & ((v16 >> 4) ^ (v16 >> 9));
      v25 = *(v10 + 16 * v24);
      if (v25 == v16)
      {
        v26 = *(v10 + 16 * v24 + 8);
        v27 = v23 & (v18 ^ (v17 >> 9));
        v28 = *(v10 + 16 * v27);
        if (v28 != v17)
        {
          goto LABEL_30;
        }

        goto LABEL_35;
      }

      v29 = 1;
      while (v25 != -4096)
      {
        v30 = v24 + v29++;
        v24 = v30 & v23;
        v25 = *(v10 + 16 * v24);
        if (v25 == v16)
        {
          goto LABEL_28;
        }
      }

LABEL_27:
      v24 = v9;
LABEL_28:
      v26 = *(v10 + 16 * v24 + 8);
      if (!v9)
      {
        goto LABEL_34;
      }

      v23 = v9 - 1;
      v27 = (v9 - 1) & (v18 ^ (v17 >> 9));
      v28 = *(v10 + 16 * v27);
      if (v28 != v17)
      {
LABEL_30:
        v31 = 1;
        while (v28 != -4096)
        {
          v32 = v27 + v31++;
          v27 = v32 & v23;
          v28 = *(v10 + 16 * v27);
          if (v28 == v17)
          {
            goto LABEL_35;
          }
        }

LABEL_34:
        v27 = v9;
      }

LABEL_35:
      if (v26 < *(v10 + 16 * v27 + 8))
      {
        return result;
      }

      v33 = v9 - 1;
      v34 = (v9 - 1) & (v18 ^ (v17 >> 9));
      v35 = (v10 + 16 * v34);
      v36 = v10 + 16 * v9;
      while (1)
      {
        v40 = v7;
        *a4 = v16;
        if (v4 < v6)
        {
LABEL_74:
          *v40 = v17;
          return result;
        }

        v41 = (2 * v6) | 1;
        v7 = (result + 8 * v41);
        v6 = 2 * v6 + 2;
        if (v6 >= a3)
        {
          v6 = v41;
          v16 = *v7;
          if (v9)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v42 = v7[1];
          if (v9)
          {
            v43 = ((*v7 >> 4) ^ (*v7 >> 9)) & v33;
            v44 = *(v10 + 16 * v43);
            if (v44 != *v7)
            {
              v57 = 1;
              while (v44 != -4096)
              {
                v58 = v43 + v57++;
                v43 = v58 & v33;
                v44 = *(v10 + 16 * v43);
                if (v44 == *v7)
                {
                  goto LABEL_43;
                }
              }

              v43 = v9;
            }

LABEL_43:
            v45 = *(v10 + 16 * v43 + 8);
            v46 = ((v42 >> 4) ^ (v42 >> 9)) & v33;
            v47 = *(v10 + 16 * v46);
            if (v47 != v42)
            {
              v48 = 1;
              while (v47 != -4096)
              {
                v49 = v46 + v48++;
                v46 = v49 & v33;
                v47 = *(v10 + 16 * v46);
                if (v47 == v42)
                {
                  goto LABEL_51;
                }
              }

              v46 = v9;
            }
          }

          else
          {
            v46 = 0;
            v45 = *(v36 + 8);
          }

LABEL_51:
          if (v45 >= *(v10 + 16 * v46 + 8))
          {
            v6 = v41;
          }

          else
          {
            ++v7;
          }

          v16 = *v7;
          if (v9)
          {
LABEL_55:
            v50 = ((v16 >> 4) ^ (v16 >> 9)) & v33;
            v51 = *(v10 + 16 * v50);
            if (v51 != v16)
            {
              v53 = 1;
              while (v51 != -4096)
              {
                v54 = v50 + v53++;
                v50 = v54 & v33;
                v51 = *(v10 + 16 * v50);
                if (v51 == v16)
                {
                  goto LABEL_56;
                }
              }

              v50 = v9;
            }

LABEL_56:
            v38 = *(v10 + 16 * v50 + 8);
            v52 = *v35;
            if (*v35 == v17)
            {
              v37 = v34;
            }

            else
            {
              v55 = 1;
              LODWORD(v37) = v34;
              while (v52 != -4096)
              {
                v56 = v37 + v55++;
                v37 = v56 & v33;
                v52 = *(v10 + 16 * v37);
                if (v52 == v17)
                {
                  goto LABEL_38;
                }
              }

              v37 = v9;
            }

            goto LABEL_38;
          }
        }

        v37 = 0;
        v38 = *(v36 + 8);
LABEL_38:
        v39 = *(v10 + 16 * v37 + 8);
        a4 = v40;
        if (v38 < v39)
        {
          goto LABEL_74;
        }
      }
    }
  }

  return result;
}

void *sub_100138C88(void *a1, uint64_t **a2, uint64_t a3)
{
  v3 = 0;
  v4 = (a3 - 2) / 2;
  v5 = *a2;
  do
  {
    while (1)
    {
      v6 = &a1[v3];
      v7 = v6 + 1;
      v8 = (2 * v3) | 1;
      v3 = 2 * v3 + 2;
      if (v3 < a3)
      {
        break;
      }

      v3 = v8;
      *a1 = *v7;
      a1 = v6 + 1;
      if (v8 > v4)
      {
        return v7;
      }
    }

    v11 = v6[2];
    v9 = v6 + 2;
    v10 = v11;
    v12 = *v5;
    v13 = *(v5 + 4);
    if (v13)
    {
      v14 = *(v9 - 1);
      v15 = v13 - 1;
      v16 = (v13 - 1) & ((v14 >> 4) ^ (v14 >> 9));
      v17 = *(v12 + 16 * v16);
      if (v17 == v14)
      {
        v18 = *(v12 + 16 * v16 + 8);
        goto LABEL_14;
      }

      v19 = 1;
      while (v17 != -4096)
      {
        v20 = v16 + v19++;
        v16 = v20 & v15;
        v17 = *(v12 + 16 * v16);
        if (v17 == v14)
        {
          goto LABEL_12;
        }
      }
    }

    v16 = *(v5 + 4);
LABEL_12:
    v18 = *(v12 + 16 * v16 + 8);
    if (v13)
    {
      v15 = v13 - 1;
LABEL_14:
      v21 = v15 & ((v10 >> 4) ^ (v10 >> 9));
      v22 = *(v12 + 16 * v21);
      if (v22 == v10)
      {
LABEL_15:
        v13 = v21;
      }

      else
      {
        v23 = 1;
        while (v22 != -4096)
        {
          v24 = v21 + v23++;
          v21 = v24 & v15;
          v22 = *(v12 + 16 * v21);
          if (v22 == v10)
          {
            goto LABEL_15;
          }
        }
      }
    }

    if (v18 >= *(v12 + 16 * v13 + 8))
    {
      v3 = v8;
    }

    else
    {
      v7 = v9;
    }

    *a1 = *v7;
    a1 = v7;
  }

  while (v3 <= v4);
  return v7;
}

uint64_t sub_100138DD8(uint64_t result, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v5 = v4 >> 1;
  v6 = (result + 8 * (v4 >> 1));
  v7 = *v6;
  v10 = *(a2 - 8);
  v8 = (a2 - 8);
  v9 = v10;
  v11 = **a3;
  v12 = *(*a3 + 4);
  v13 = v10 >> 4;
  if (v12)
  {
    v14 = v12 - 1;
    v15 = (v12 - 1) & ((v7 >> 4) ^ (v7 >> 9));
    v16 = *(v11 + 16 * v15);
    if (v16 == v7)
    {
      v17 = *(v11 + 16 * v15 + 8);
      v18 = v14 & (v13 ^ (v9 >> 9));
      v19 = *(v11 + 16 * v18);
      if (v19 == v9)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    v20 = 1;
    while (v16 != -4096)
    {
      v21 = v15 + v20++;
      v15 = v21 & v14;
      v16 = *(v11 + 16 * v15);
      if (v16 == v7)
      {
        goto LABEL_11;
      }
    }
  }

  v15 = v12;
LABEL_11:
  v17 = *(v11 + 16 * v15 + 8);
  if (!v12)
  {
    goto LABEL_17;
  }

  v14 = v12 - 1;
  v18 = (v12 - 1) & (v13 ^ (v9 >> 9));
  v19 = *(v11 + 16 * v18);
  if (v19 == v9)
  {
    goto LABEL_18;
  }

LABEL_13:
  v22 = 1;
  while (v19 != -4096)
  {
    v23 = v18 + v22++;
    v18 = v23 & v14;
    v19 = *(v11 + 16 * v18);
    if (v19 == v9)
    {
      goto LABEL_18;
    }
  }

LABEL_17:
  v18 = v12;
LABEL_18:
  if (v17 < *(v11 + 16 * v18 + 8))
  {
    if (v12)
    {
      v24 = v12 - 1;
      v25 = (v12 - 1) & (v13 ^ (v9 >> 9));
      v26 = (v11 + 16 * v25);
      do
      {
        v27 = v6;
        *v8 = v7;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 8 * v5);
        v7 = *v6;
        v28 = ((*v6 >> 4) ^ (*v6 >> 9)) & v24;
        v29 = *(v11 + 16 * v28);
        if (v29 != *v6)
        {
          v33 = 1;
          while (v29 != -4096)
          {
            v34 = v28 + v33++;
            v28 = v34 & v24;
            v29 = *(v11 + 16 * v28);
            if (v29 == v7)
            {
              goto LABEL_23;
            }
          }

          v28 = v12;
        }

LABEL_23:
        v30 = *v26;
        v31 = v25;
        if (*v26 != v9)
        {
          v35 = 1;
          LODWORD(v31) = v25;
          while (v30 != -4096)
          {
            v36 = v31 + v35++;
            v31 = v36 & v24;
            v30 = *(v11 + 16 * v31);
            if (v30 == v9)
            {
              goto LABEL_24;
            }
          }

          v31 = v12;
        }

LABEL_24:
        v32 = *(v11 + 16 * v28 + 8);
        v8 = v27;
      }

      while (v32 < *(v11 + 16 * v31 + 8));
    }

    else
    {
      *v8 = v7;
      v27 = v6;
    }

    *v27 = v9;
  }

  return result;
}

void sub_100138FD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  v4 = 1 << (33 - __clz(v3 - 1));
  if (v4 <= 64)
  {
    v4 = 64;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v2)
  {
    *(a1 + 8) = 0;
    if (!v2)
    {
      return;
    }

    v6 = *a1;
    v7 = (v2 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v7)
    {
      v8 = v7 + 1;
      v9 = (v7 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v10 = (v6 + 16 * v9);
      v11 = (v6 + 16);
      v12 = v9;
      do
      {
        *(v11 - 2) = -4096;
        *v11 = -4096;
        v11 += 4;
        v12 -= 2;
      }

      while (v12);
      if (v8 == v9)
      {
        return;
      }
    }

    else
    {
      v10 = *a1;
    }

    v23 = (v6 + 16 * v2);
    do
    {
      *v10 = -4096;
      v10 = (v10 + 16);
    }

    while (v10 != v23);
    return;
  }

  llvm::deallocate_buffer(*a1, (16 * v2), 8uLL);
  if (!v5)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    return;
  }

  v13 = (4 * v5 / 3u + 1) | ((4 * v5 / 3u + 1) >> 1);
  v14 = v13 | (v13 >> 2) | ((v13 | (v13 >> 2)) >> 4);
  LODWORD(v14) = (((v14 | (v14 >> 8)) >> 16) | v14 | (v14 >> 8)) + 1;
  *(a1 + 16) = v14;
  buffer = llvm::allocate_buffer((16 * v14), 8uLL);
  *a1 = buffer;
  *(a1 + 8) = 0;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = (v16 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (!v17)
    {
      v20 = buffer;
LABEL_26:
      v24 = &buffer[2 * v16];
      do
      {
        *v20 = -4096;
        v20 += 2;
      }

      while (v20 != v24);
      return;
    }

    v18 = v17 + 1;
    v19 = (v17 + 1) & 0x1FFFFFFFFFFFFFFELL;
    v20 = &buffer[2 * v19];
    v21 = buffer + 2;
    v22 = v19;
    do
    {
      *(v21 - 2) = -4096;
      *v21 = -4096;
      v21 += 4;
      v22 -= 2;
    }

    while (v22);
    if (v18 != v19)
    {
      goto LABEL_26;
    }
  }
}

uint64_t mlir::CallSiteLoc::get(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  Context = mlir::Attribute::getContext(&v9);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id;
  v10[1] = Context;
  v14[0] = sub_10013B0D4;
  v14[1] = v10;
  v13[0] = v9;
  v13[1] = a2;
  v5 = (a2 >> 4) ^ (a2 >> 9);
  v6 = __ROR8__(v5 + 16, 16);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ 0xFF51AFD7ED558CCDLL ^ (v9 >> 4) ^ (v9 >> 9));
  v11[0] = v13;
  v11[1] = v14;
  v12 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)))) ^ v5, sub_10013AFEC, &v12, sub_10013B01C, v11);
}

uint64_t mlir::FileLineColRange::get(uint64_t a1)
{
  v8 = a1;
  Context = mlir::Attribute::getContext(&v8);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v9[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id;
  v9[1] = Context;
  v13[0] = sub_10013B2BC;
  v13[1] = v9;
  v12[1] = 0;
  v12[2] = 0;
  v12[0] = v8;
  v3 = (v8 >> 4) ^ (v8 >> 9);
  v4 = sub_10002D970(0, 0);
  v5 = __ROR8__(v4 + 16, 16);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ 0xFF51AFD7ED558CCDLL ^ v3)));
  v10[0] = v12;
  v10[1] = v13;
  v11 = v12;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id, (-348639895 * ((v6 >> 47) ^ v6)) ^ v4, sub_10013B0E4, &v11, sub_10013B15C, v10);
}

uint64_t mlir::FileLineColRange::get(uint64_t a1, int a2)
{
  v11 = a1;
  Context = mlir::Attribute::getContext(&v11);
  v10 = a2;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v12[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id;
  v12[1] = Context;
  v16[0] = sub_10013B2BC;
  v16[1] = v12;
  v15[0] = v11;
  v15[1] = &v10;
  v15[2] = 1;
  v5 = (v11 >> 4) ^ (v11 >> 9);
  v6 = sub_10002D970(&v10, &v11);
  v7 = __ROR8__(v6 + 16, 16);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v5)));
  v13[0] = v15;
  v13[1] = v16;
  v14 = v15;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id, (-348639895 * ((v8 >> 47) ^ v8)) ^ v6, sub_10013B0E4, &v14, sub_10013B15C, v13);
}

uint64_t mlir::FileLineColRange::get(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v12 = a1;
  Context = mlir::Attribute::getContext(&v12);
  v18 = __PAIR64__(a3, a2);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id;
  v13[1] = Context;
  v17[0] = sub_10013B2BC;
  v17[1] = v13;
  v16[0] = v12;
  v16[1] = &v18;
  v16[2] = 2;
  v7 = (v12 >> 4) ^ (v12 >> 9);
  v8 = sub_10002D970(&v18, &v19);
  v9 = __ROR8__(v8 + 16, 16);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ 0xFF51AFD7ED558CCDLL ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ 0xFF51AFD7ED558CCDLL ^ v7)));
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id, (-348639895 * ((v10 >> 47) ^ v10)) ^ v8, sub_10013B0E4, &v15, sub_10013B15C, v14);
}

uint64_t mlir::FileLineColRange::get(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  v14 = a1;
  Context = mlir::Attribute::getContext(&v14);
  v20 = __PAIR64__(a3, a2);
  v21 = a4;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id;
  v15[1] = Context;
  v19[0] = sub_10013B2BC;
  v19[1] = v15;
  v18[0] = v14;
  v18[1] = &v20;
  v18[2] = 3;
  v9 = (v14 >> 4) ^ (v14 >> 9);
  v10 = sub_10002D970(&v20, &v22);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ 0xFF51AFD7ED558CCDLL ^ v9)));
  v16[0] = v18;
  v16[1] = v19;
  v17 = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, sub_10013B0E4, &v17, sub_10013B15C, v16);
}

uint64_t mlir::FileLineColRange::get(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5)
{
  v16 = a1;
  Context = mlir::Attribute::getContext(&v16);
  v22 = __PAIR64__(a3, a2);
  v23 = a5;
  v24 = a4;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v17[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id;
  v17[1] = Context;
  v21[0] = sub_10013B2BC;
  v21[1] = v17;
  v20[0] = v16;
  v20[1] = &v22;
  v20[2] = 4;
  v11 = (v16 >> 4) ^ (v16 >> 9);
  v12 = sub_10002D970(&v22, &v25);
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ 0xFF51AFD7ED558CCDLL ^ v11)));
  v18[0] = v20;
  v18[1] = v21;
  v19 = v20;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id, (-348639895 * ((v14 >> 47) ^ v14)) ^ v12, sub_10013B0E4, &v19, sub_10013B15C, v18);
}

uint64_t mlir::FusedLoc::get(mlir::MLIRContext *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
  v14[1] = a1;
  v18[0] = sub_10013B6D0;
  v18[1] = v14;
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v9 = sub_1000E0184(a2, &a2[2 * a3]);
  v10 = (a4 >> 4) ^ (a4 >> 9);
  v11 = __ROR8__(v10 + 16, 16);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v9 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v9 ^ 0xFF51AFD7ED558CCDLL)));
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, (-348639895 * ((v12 >> 47) ^ v12)) ^ v10, sub_10013B4B4, &v16, sub_10013B514, v15);
}

uint64_t mlir::FusedLoc::getLocations(mlir::FusedLoc *this)
{
  v1 = *this;
  result = *(*this + 8);
  v3 = *(v1 + 16);
  return result;
}

uint64_t mlir::NameLoc::get(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  Context = mlir::Attribute::getContext(&v9);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v10[0] = &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id;
  v10[1] = Context;
  v14[0] = sub_10013B7C8;
  v14[1] = v10;
  v13[0] = v9;
  v13[1] = a2;
  v5 = (a2 >> 4) ^ (a2 >> 9);
  v6 = __ROR8__(v5 + 16, 16);
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ 0xFF51AFD7ED558CCDLL ^ (v9 >> 4) ^ (v9 >> 9));
  v11[0] = v13;
  v11[1] = v14;
  v12 = v13;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 32) >> 15) ^ (-348639895 * (v6 ^ (v7 >> 47) ^ v7)))) ^ v5, sub_10013B6E0, &v12, sub_10013B710, v11);
}

uint64_t mlir::NameLoc::get(uint64_t a1)
{
  v10 = a1;
  Context = mlir::Attribute::getContext(&v10);
  v2 = mlir::Attribute::getContext(&v10);
  v4 = mlir::UnknownLoc::get(v2, v3);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v11[0] = &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id;
  v11[1] = Context;
  v15[0] = sub_10013B8C0;
  v15[1] = v11;
  v14[0] = v10;
  v14[1] = v4;
  v6 = (v4 >> 4) ^ (v4 >> 9);
  v7 = __ROR8__(v6 + 16, 16);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v10 >> 4) ^ (v10 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v12[0] = v14;
  v12[1] = v15;
  v13 = v14;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)))) ^ v6, sub_10013B7D8, &v13, sub_10013B808, v12);
}

uint64_t mlir::OpaqueLoc::get(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a3;
  Context = mlir::Attribute::getContext(&v14);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id;
  v15[1] = Context;
  v19[0] = sub_10013B9D4;
  v19[1] = v15;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = v14;
  v7 = (a2 >> 4) ^ (a2 >> 9);
  v8 = 0x9AE16A3B2F90404FLL * ((v14 >> 4) ^ (v14 >> 9));
  v9 = __ROR8__(0xB492B66FBE98F273 * a1 - v7, 43);
  v10 = __ROR8__(v8 ^ 0xFF51AFD7ED558CCDLL, 30);
  v11 = 0xB492B66FBE98F273 * a1 - 0xAE502812AA7333 + __ROR8__(v7 ^ 0xC949D7C7509E6557, 20) - v8 + 24;
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * ((v9 - 0x3C5A37A36834CED9 * v7 + v10) ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v9 - 0x3C5A37A36834CED9 * v7 + v10) ^ v11)));
  v16[0] = v18;
  v16[1] = v19;
  v17 = v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id, -348639895 * ((v12 >> 47) ^ v12), sub_10013B8D0, &v17, sub_10013B910, v16);
}

uint64_t mlir::LocationAttr::walk(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v8[0] = a2;
  v8[1] = a3;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v9[0] = off_1002D7B08;
  v9[1] = v8;
  v10 = v9;
  *(&v6[0] + 1) = sub_10013AC50(v6, v9);
  if (v10 == v9)
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  v4 = mlir::AttrTypeWalker::walkImpl(v6, *a1, 0);
  sub_10013AE78(v6);
  return v4;
}

uint64_t mlir::LocationAttr::classof(uint64_t *a1)
{
  v1 = *a1;
  if ((atomic_load_explicit(&qword_1002E0D68, memory_order_acquire) & 1) == 0)
  {
    v7 = v1;
    sub_10029F944();
    v1 = v7;
  }

  v2 = (v1 + 72);
  v3 = qword_1002E0D60;
  v4 = *(v1 + 96);
  v5 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  if ((v4 & 2) == 0)
  {
    v2 = *v2;
  }

  return v5(v2, v3);
}

uint64_t mlir::FileLineColLoc::get(mlir::StringAttr *a1, const char *a2, const llvm::Twine *a3, unsigned int a4, unsigned int a5)
{
  v8 = "-";
  if (a3)
  {
    v8 = a2;
  }

  v19 = 261;
  if (a3 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a3;
  }

  v18[0] = v8;
  v18[1] = v9;
  v10 = mlir::StringAttr::get(a1, v18, a3);
  v25[0] = a4;
  v25[1] = a5;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v20[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id;
  v20[1] = a1;
  v24[0] = sub_10013B4A4;
  v24[1] = v20;
  v23[0] = v10;
  v23[1] = v25;
  v23[2] = 2;
  v12 = a5 ^ 0xFF51AFD7ED558CCDLL;
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ (8 * a4 + 8));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v15 = __ROR8__(v14 + 16, 16);
  v16 = 0x9DDFEA08EB382D69 * (v15 ^ (v10 >> 4) ^ (v10 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v21[0] = v23;
  v21[1] = v24;
  v22 = v23;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v15 ^ (v16 >> 47) ^ v16)) >> 32) >> 15) ^ (-348639895 * (v15 ^ (v16 >> 47) ^ v16)))) ^ v14, sub_10013B2CC, &v22, sub_10013B344, v21);
}

uint64_t mlir::FileLineColRange::getStartColumn(mlir::FileLineColRange *this)
{
  if ((*(*this + 8) & 6) != 0)
  {
    return *(*this + 24);
  }

  else
  {
    return 0;
  }
}

BOOL mlir::isStrictFileLineColLoc(void *a1)
{
  result = 0;
  if (a1)
  {
    if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id)
    {
      return (a1[1] & 6) == 2;
    }
  }

  return result;
}

uint64_t mlir::FileLineColRange::getEndColumn(mlir::FileLineColRange *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  if ((v2 & 4) != 0)
  {
    return *(v1 + 28);
  }

  if ((v2 & 2) != 0)
  {
    return *(v1 + 24);
  }

  return 0;
}

uint64_t mlir::FileLineColRange::getEndLine(mlir::FileLineColRange *this)
{
  v1 = 16;
  if ((~*(*this + 8) & 6) == 0)
  {
    v1 = 32;
  }

  return *(*this + v1);
}

uint64_t mlir::FusedLoc::get(uint64_t **a1, mlir::MLIRContext *a2, uint64_t a3, mlir::UnknownLoc *this)
{
  v83 = 0;
  *v82 = 0u;
  v84 = v86;
  v85 = 0x400000000;
  if (!a2)
  {
    goto LABEL_110;
  }

  v6 = a1;
  v7 = &a1[a2];
  do
  {
    v8 = *v6;
    v76 = v8;
    v9 = *(*v8 + 136);
    if (v8)
    {
      v10 = v9 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      if (v9 == &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
      {
        goto LABEL_5;
      }

LABEL_4:
      sub_10013AA4C(v82, &v76);
      goto LABEL_5;
    }

    if (v8[3] != a3)
    {
      goto LABEL_4;
    }

    v11 = v8[2];
    if (v11)
    {
      v12 = v8[1];
      v13 = &v12[v11];
      do
      {
        if (LODWORD(v82[1]))
        {
          a2 = v83;
          if (!v83)
          {
            goto LABEL_88;
          }

          v14 = ((*v12 >> 4) ^ (*v12 >> 9)) & (v83 - 1);
          v15 = v82[0] + 8 * v14;
          v16 = *v15;
          if (*v12 != *v15)
          {
            v40 = 0;
            v41 = 1;
            while (v16 != -4096)
            {
              if (v40)
              {
                v42 = 0;
              }

              else
              {
                v42 = v16 == -8192;
              }

              if (v42)
              {
                v40 = v15;
              }

              v43 = v14 + v41++;
              v14 = v43 & (v83 - 1);
              v15 = v82[0] + 8 * v14;
              v16 = *v15;
              if (*v12 == *v15)
              {
                goto LABEL_15;
              }
            }

            if (v40)
            {
              v44 = v40;
            }

            else
            {
              v44 = v15;
            }

            if (4 * LODWORD(v82[1]) + 4 < 3 * v83)
            {
              if (v83 + ~LODWORD(v82[1]) - HIDWORD(v82[1]) <= v83 >> 3)
              {
                goto LABEL_89;
              }

              ++LODWORD(v82[1]);
              if (*v44 == -4096)
              {
LABEL_22:
                v17 = *v12;
                *v44 = *v12;
                v18 = v85;
                if (v85 >= HIDWORD(v85))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, v85 + 1, 8);
                  v18 = v85;
                }

                *(v84 + v18) = v17;
                LODWORD(v85) = v85 + 1;
                goto LABEL_15;
              }
            }

            else
            {
LABEL_88:
              LODWORD(a2) = 2 * v83;
LABEL_89:
              sub_10013BD64(v82, a2);
              if (v83)
              {
                v45 = v83 - 1;
                v46 = ((*v12 >> 4) ^ (*v12 >> 9)) & (v83 - 1);
                v44 = v82[0] + 8 * v46;
                v47 = *v44;
                if (*v12 != *v44)
                {
                  v48 = 0;
                  v49 = 1;
                  while (v47 != -4096)
                  {
                    if (v48)
                    {
                      v50 = 0;
                    }

                    else
                    {
                      v50 = v47 == -8192;
                    }

                    if (v50)
                    {
                      v48 = v44;
                    }

                    v51 = v46 + v49++;
                    v46 = v51 & v45;
                    v44 = v82[0] + 8 * (v51 & v45);
                    v47 = *v44;
                    if (*v12 == *v44)
                    {
                      goto LABEL_101;
                    }
                  }

                  if (v48)
                  {
                    v44 = v48;
                  }
                }
              }

              else
              {
                v44 = 0;
              }

LABEL_101:
              ++LODWORD(v82[1]);
              if (*v44 == -4096)
              {
                goto LABEL_22;
              }
            }

            --HIDWORD(v82[1]);
            goto LABEL_22;
          }
        }

        else
        {
          v19 = v84;
          if (v85)
          {
            v20 = *v12;
            v21 = 8 * v85;
            v19 = v84;
            do
            {
              if (*v19 == v20)
              {
                goto LABEL_71;
              }

              ++v19;
              v21 -= 8;
            }

            while (v21);
            if (v85 >= HIDWORD(v85))
            {
LABEL_73:
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v86, v85 + 1, 8);
              *(v84 + v85) = v20;
              v22 = v85 + 1;
              LODWORD(v85) = v22;
              if (v22 < 5)
              {
                goto LABEL_15;
              }

LABEL_31:
              v23 = v84;
              v24 = v84 + 8 * v22;
              while (2)
              {
                a2 = v83;
                if (!v83)
                {
LABEL_53:
                  LODWORD(a2) = 2 * v83;
                  goto LABEL_54;
                }

                v25 = ((*v23 >> 4) ^ (*v23 >> 9)) & (v83 - 1);
                v26 = v82[0] + 8 * v25;
                v27 = *v26;
                if (*v23 == *v26)
                {
LABEL_33:
                  if (++v23 == v24)
                  {
                    goto LABEL_15;
                  }

                  continue;
                }

                break;
              }

              v28 = 0;
              v29 = 1;
              while (v27 != -4096)
              {
                if (v28)
                {
                  v30 = 0;
                }

                else
                {
                  v30 = v27 == -8192;
                }

                if (v30)
                {
                  v28 = v26;
                }

                v31 = v25 + v29++;
                v25 = v31 & (v83 - 1);
                v26 = v82[0] + 8 * v25;
                v27 = *v26;
                if (*v23 == *v26)
                {
                  goto LABEL_33;
                }
              }

              if (v28)
              {
                v32 = v28;
              }

              else
              {
                v32 = v26;
              }

              if (4 * LODWORD(v82[1]) + 4 >= 3 * v83)
              {
                goto LABEL_53;
              }

              if (v83 + ~LODWORD(v82[1]) - HIDWORD(v82[1]) <= v83 >> 3)
              {
LABEL_54:
                sub_10013BD64(v82, a2);
                if (v83)
                {
                  v33 = v83 - 1;
                  v34 = ((*v23 >> 4) ^ (*v23 >> 9)) & (v83 - 1);
                  v32 = v82[0] + 8 * v34;
                  v35 = *v32;
                  if (*v23 != *v32)
                  {
                    v36 = 0;
                    v37 = 1;
                    while (v35 != -4096)
                    {
                      if (v36)
                      {
                        v38 = 0;
                      }

                      else
                      {
                        v38 = v35 == -8192;
                      }

                      if (v38)
                      {
                        v36 = v32;
                      }

                      v39 = v34 + v37++;
                      v34 = v39 & v33;
                      v32 = v82[0] + 8 * (v39 & v33);
                      v35 = *v32;
                      if (*v23 == *v32)
                      {
                        goto LABEL_66;
                      }
                    }

                    if (v36)
                    {
                      v32 = v36;
                    }
                  }
                }

                else
                {
                  v32 = 0;
                }

LABEL_66:
                ++LODWORD(v82[1]);
                if (*v32 != -4096)
                {
LABEL_38:
                  --HIDWORD(v82[1]);
                }
              }

              else
              {
                ++LODWORD(v82[1]);
                if (*v32 != -4096)
                {
                  goto LABEL_38;
                }
              }

              *v32 = *v23;
              goto LABEL_33;
            }
          }

          else
          {
LABEL_71:
            if (v19 != (v84 + 8 * v85))
            {
              goto LABEL_15;
            }

            v20 = *v12;
            if (v85 >= HIDWORD(v85))
            {
              goto LABEL_73;
            }
          }

          *(v84 + v85) = v20;
          v22 = v85 + 1;
          LODWORD(v85) = v22;
          if (v22 >= 5)
          {
            goto LABEL_31;
          }
        }

LABEL_15:
        ++v12;
      }

      while (v12 != v13);
    }

LABEL_5:
    ++v6;
  }

  while (v6 != v7);
  v52 = v85;
  if (v85)
  {
    v53 = v84;
    if (v85 != 1 || a3)
    {
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(this);
      v71 = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
      v72 = this;
      v79 = sub_10013C0EC;
      v80 = &v71;
      v76 = v53;
      v77 = v52;
      v78 = a3;
      v55 = sub_1000E0184(v53, &v53[v52]);
      v56 = (a3 >> 4) ^ (a3 >> 9);
      v57 = __ROR8__(v56 + 16, 16);
      v58 = 0x9DDFEA08EB382D69 * (v57 ^ ((0x9DDFEA08EB382D69 * (v57 ^ 0xFF51AFD7ED558CCDLL ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v57 ^ 0xFF51AFD7ED558CCDLL ^ v55)));
      v73 = &v76;
      v74 = &v79;
      v75 = &v76;
      v59 = sub_10013C03C;
      v60 = sub_10013C09C;
      v61 = (-348639895 * ((v58 >> 47) ^ v58)) ^ v56;
      v62 = AttributeUniquer;
      goto LABEL_112;
    }

    ParametricStorageTypeImpl = *v84;
    v69 = v84;
    if (v84 == v86)
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

LABEL_110:
  if (a3)
  {
    v81 = mlir::UnknownLoc::get(this, a2);
    v63 = mlir::MLIRContext::getAttributeUniquer(this);
    v71 = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
    v72 = this;
    v79 = sub_10013C02C;
    v80 = &v71;
    v76 = &v81;
    v77 = 1;
    v78 = a3;
    v64 = sub_1000E0184(&v81, v82);
    v65 = (a3 >> 4) ^ (a3 >> 9);
    v66 = __ROR8__(v65 + 16, 16);
    v67 = 0x9DDFEA08EB382D69 * (v66 ^ ((0x9DDFEA08EB382D69 * (v66 ^ v64 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v66 ^ v64 ^ 0xFF51AFD7ED558CCDLL)));
    v73 = &v76;
    v74 = &v79;
    v75 = &v76;
    v59 = sub_10013BF7C;
    v60 = sub_10013BFDC;
    v61 = (-348639895 * ((v67 >> 47) ^ v67)) ^ v65;
    v62 = v63;
LABEL_112:
    ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(v62, &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, v61, v59, &v75, v60, &v73);
    v69 = v84;
    if (v84 == v86)
    {
      goto LABEL_116;
    }

    goto LABEL_115;
  }

  ParametricStorageTypeImpl = mlir::UnknownLoc::get(this, a2);
  v69 = v84;
  if (v84 != v86)
  {
LABEL_115:
    free(v69);
  }

LABEL_116:
  llvm::deallocate_buffer(v82[0], (8 * v83), 8uLL);
  return ParametricStorageTypeImpl;
}

uint64_t sub_10013AA4C(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 8))
  {
    v7 = (a1 + 24);
    v8 = *(a1 + 24);
    v9 = *(a1 + 32);
    v10 = v8;
    if (v9)
    {
      v11 = *a2;
      v12 = 8 * v9;
      v10 = *(a1 + 24);
      while (*v10 != v11)
      {
        ++v10;
        v12 -= 8;
        if (!v12)
        {
          goto LABEL_14;
        }
      }
    }

    if (v10 != &v8[v9])
    {
      return 0;
    }

    v11 = *a2;
LABEL_14:
    if (v9 >= *(a1 + 36))
    {
      v16 = (a1 + 24);
      v17 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v9 + 1, 8);
      v7 = v16;
      *(*(a1 + 24) + 8 * *(a1 + 32)) = v17;
      v13 = *(a1 + 32) + 1;
      *(a1 + 32) = v13;
      if (v13 >= 5)
      {
LABEL_16:
        v14 = *v7;
        v15 = 8 * v13;
        do
        {
          sub_10013BBF0(a1, v14++, v18);
          v15 -= 8;
        }

        while (v15);
      }
    }

    else
    {
      v8[v9] = v11;
      v13 = *(a1 + 32) + 1;
      *(a1 + 32) = v13;
      if (v13 >= 5)
      {
        goto LABEL_16;
      }
    }

    return 1;
  }

  sub_10013BBF0(a1, a2, v18);
  if (v18[16] != 1)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *(a1 + 32);
  if (v5 >= *(a1 + 36))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v5 + 1, 8);
    LODWORD(v5) = *(a1 + 32);
  }

  *(*(a1 + 24) + 8 * v5) = v4;
  ++*(a1 + 32);
  return 1;
}

uint64_t sub_10013AC50(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_100003FC0();
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

    sub_100003FC0();
  }

  v7 = 32 * v2;
  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      *(v7 + 24) = v7;
      (*(*v8 + 24))(v8, v7);
    }

    else
    {
      *(v7 + 24) = v8;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(v7 + 24) = 0;
  }

  v9 = v7 + 32;
  v10 = *a1;
  v11 = a1[1];
  v12 = *a1 - v11;
  v13 = v7 + v12;
  if (v11 != *a1)
  {
    v14 = *a1;
    v15 = v7 + v12;
    do
    {
      v16 = v14[3];
      if (v16)
      {
        if (v14 == v16)
        {
          *(v15 + 24) = v15;
          (*(*v14[3] + 24))(v14[3], v15);
        }

        else
        {
          *(v15 + 24) = v16;
          v14[3] = 0;
        }
      }

      else
      {
        *(v15 + 24) = 0;
      }

      v14 += 4;
      v15 += 32;
    }

    while (v14 != v11);
    v17 = v10;
    do
    {
      v18 = v10[3];
      if (v10 == v18)
      {
        (*(*v18 + 32))(v18);
      }

      else if (v18)
      {
        (*(*v18 + 40))(v18);
      }

      v10 += 4;
      v17 += 4;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v13;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

char **sub_10013AE78(char **a1)
{
  llvm::deallocate_buffer(a1[6], (24 * *(a1 + 16)), 8uLL);
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[3];
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 1);
        v3 -= 32;
        if (v3 == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v5 -= 32;
      }

      while (v3 != v2);
      v4 = a1[3];
    }

    a1[4] = v2;
    operator delete(v4);
  }

  v7 = *a1;
  if (*a1)
  {
    v8 = a1[1];
    v9 = *a1;
    if (v8 != v7)
    {
      v10 = v8 - 32;
      do
      {
        v11 = *(v8 - 1);
        v8 -= 32;
        if (v8 == v11)
        {
          (*(*v11 + 32))(v11);
        }

        else if (v11)
        {
          (*(*v11 + 40))(v11);
        }

        v10 -= 32;
      }

      while (v8 != v7);
      v9 = *a1;
    }

    a1[1] = v7;
    operator delete(v9);
  }

  return a1;
}

unint64_t sub_10013B01C(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = v2;
    v3 = sub_10003E4AC(a2, 24, 24, 3);
    *v3 = 0;
    *(v3 + 8) = v10;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return v3;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *v3 = 0;
  *(v3 + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), v3);
  }

  return v3;
}

BOOL sub_10013B0E4(void *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  if ((v3 & 0xFFFFFFFFFFFFFFF8) == **a1 && (v4 = (v3 >> 1) & 3, v2[2] == v4 + 1) && (v5 = v2[1], *(a2 + 16) == *v5))
  {
    return memcmp((a2 + 24), v5 + 1, 4 * v4) == 0;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10013B15C(void *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(*a1 + 16);
  }

  v5 = v4 - 1;
  v6 = 4 * (v4 - 1) + 24;
  a2[10] += v6;
  v7 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + v6;
  if (*a2)
  {
    v9 = v8 > a2[1];
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v26 = a1;
    v7 = sub_10003E4AC(a2, v6, v6, 3);
    a1 = v26;
  }

  else
  {
    *a2 = v8;
  }

  v10 = *v2 & 0xFFFFFFFFFFFFFFF9 | (2 * v5);
  *v7 = 0;
  *(v7 + 8) = v10;
  *(v7 + 16) = 0;
  if (v3)
  {
    v12 = v2[1];
    v11 = v2[2];
    *(v7 + 16) = *v12;
    if (v11 != 1)
    {
      v13 = 4 * v11;
      v14 = (v7 + 24);
      v15 = v12 + 1;
      if ((v13 - 8) < 0x1C)
      {
        goto LABEL_16;
      }

      if (v7 - v12 + 20 < 0x20)
      {
        goto LABEL_16;
      }

      v16 = ((v13 - 8) >> 2) + 1;
      v17 = 4 * (v16 & 0x7FFFFFFFFFFFFFF8);
      v14 = (v14 + v17);
      v15 = (v15 + v17);
      v18 = (v12 + 5);
      v19 = (v7 + 40);
      v20 = v16 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v21 = *v18;
        *(v19 - 1) = *(v18 - 1);
        *v19 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 8;
      }

      while (v20);
      if (v16 != (v16 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_16:
        v22 = &v12[v13 / 4];
        do
        {
          v23 = *v15++;
          *v14++ = v23;
        }

        while (v15 != v22);
      }
    }
  }

  v24 = a1[1];
  if (*v24)
  {
    (*v24)(*(v24 + 8), v7);
  }

  return v7;
}

BOOL sub_10013B2CC(void *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  if ((v3 & 0xFFFFFFFFFFFFFFF8) == **a1 && (v4 = (v3 >> 1) & 3, v2[2] == v4 + 1) && (v5 = v2[1], *(a2 + 16) == *v5))
  {
    return memcmp((a2 + 24), v5 + 1, 4 * v4) == 0;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10013B344(void *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(*a1 + 16);
  }

  v5 = v4 - 1;
  v6 = 4 * (v4 - 1) + 24;
  a2[10] += v6;
  v7 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v7 + v6;
  if (*a2)
  {
    v9 = v8 > a2[1];
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v26 = a1;
    v7 = sub_10003E4AC(a2, v6, v6, 3);
    a1 = v26;
  }

  else
  {
    *a2 = v8;
  }

  v10 = *v2 & 0xFFFFFFFFFFFFFFF9 | (2 * v5);
  *v7 = 0;
  *(v7 + 8) = v10;
  *(v7 + 16) = 0;
  if (v3)
  {
    v12 = v2[1];
    v11 = v2[2];
    *(v7 + 16) = *v12;
    if (v11 != 1)
    {
      v13 = 4 * v11;
      v14 = (v7 + 24);
      v15 = v12 + 1;
      if ((v13 - 8) < 0x1C)
      {
        goto LABEL_16;
      }

      if (v7 - v12 + 20 < 0x20)
      {
        goto LABEL_16;
      }

      v16 = ((v13 - 8) >> 2) + 1;
      v17 = 4 * (v16 & 0x7FFFFFFFFFFFFFF8);
      v14 = (v14 + v17);
      v15 = (v15 + v17);
      v18 = (v12 + 5);
      v19 = (v7 + 40);
      v20 = v16 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v21 = *v18;
        *(v19 - 1) = *(v18 - 1);
        *v19 = v21;
        v18 += 2;
        v19 += 2;
        v20 -= 8;
      }

      while (v20);
      if (v16 != (v16 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_16:
        v22 = &v12[v13 / 4];
        do
        {
          v23 = *v15++;
          *v14++ = v23;
        }

        while (v15 != v22);
      }
    }
  }

  v24 = a1[1];
  if (*v24)
  {
    (*v24)(*(v24 + 8), v7);
  }

  return v7;
}

BOOL sub_10013B4B4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[2];
  if (v3 == *(*a1 + 8))
  {
    if (!v3)
    {
      return a2[3] == *(v2 + 16);
    }

    v4 = a2[1];
    v5 = *v2;
    v6 = 8 * v3;
    while (*v4 == *v5)
    {
      ++v4;
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        return a2[3] == *(v2 + 16);
      }
    }
  }

  return 0;
}

void *sub_10013B514(uint64_t a1, unint64_t *a2)
{
  v3 = sub_10013B564(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *sub_10013B564(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  if (v2)
  {
    v4 = *a2;
    v5 = 8 * v2;
    a1[10] += 8 * v2;
    v6 = (*a1 + 7) & 0xFFFFFFFFFFFFFFF8;
    v7 = v6 + 8 * v2;
    if (*a1)
    {
      v8 = v7 > a1[1];
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v18 = a1;
      v6 = sub_10003E4AC(a1, 8 * v2, 8 * v2, 3);
      a1 = v18;
      v9 = v5 - 8;
      if ((v5 - 8) >= 0x18)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *a1 = v7;
      v9 = v5 - 8;
      if ((v5 - 8) >= 0x18)
      {
LABEL_7:
        v10 = v6;
        v11 = v4;
        if (v6 - v4 >= 0x20)
        {
          v12 = (v9 >> 3) + 1;
          v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
          v10 = (v6 + v13);
          v11 = (v4 + v13);
          v14 = (v4 + 16);
          v15 = (v6 + 16);
          v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v17 = *v14;
            *(v15 - 1) = *(v14 - 1);
            *v15 = v17;
            v14 += 2;
            v15 += 2;
            v16 -= 4;
          }

          while (v16);
          if (v12 == (v12 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_16;
          }
        }

        goto LABEL_15;
      }
    }

    v10 = v6;
    v11 = v4;
    do
    {
LABEL_15:
      v19 = *v11++;
      *v10++ = v19;
    }

    while (v11 != (v4 + 8 * v2));
    goto LABEL_16;
  }

  v6 = 0;
LABEL_16:
  a1[10] += 32;
  v20 = ((*a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = v20 + 4;
  if (*a1)
  {
    v22 = v21 > a1[1];
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v20 = sub_10003E4AC(a1, 32, 32, 3);
  }

  else
  {
    *a1 = v21;
  }

  *v20 = 0;
  v20[1] = v6;
  v20[2] = v2;
  v20[3] = v3;
  return v20;
}

unint64_t sub_10013B710(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = v2;
    v3 = sub_10003E4AC(a2, 24, 24, 3);
    *v3 = 0;
    *(v3 + 8) = v10;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return v3;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *v3 = 0;
  *(v3 + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), v3);
  }

  return v3;
}

unint64_t sub_10013B808(__int128 **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 24;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 24;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = v2;
    v3 = sub_10003E4AC(a2, 24, 24, 3);
    *v3 = 0;
    *(v3 + 8) = v10;
    v6 = a1[1];
    v7 = *v6;
    if (!*v6)
    {
      return v3;
    }

    goto LABEL_6;
  }

  *a2 = v4;
  *v3 = 0;
  *(v3 + 8) = v2;
  v6 = a1[1];
  v7 = *v6;
  if (*v6)
  {
LABEL_6:
    v7(*(v6 + 1), v3);
  }

  return v3;
}

unint64_t sub_10013B910(uint64_t **a1, unint64_t *a2)
{
  v2 = **a1;
  v3 = *(*a1 + 1);
  a2[10] += 32;
  v4 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v4 + 32;
  if (*a2)
  {
    v6 = v5 > a2[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v11 = v3;
    v4 = sub_10003E4AC(a2, 32, 32, 3);
    *v4 = 0;
    *(v4 + 8) = v2;
    *(v4 + 16) = v11;
    v7 = a1[1];
    v8 = *v7;
    if (!*v7)
    {
      return v4;
    }

    goto LABEL_6;
  }

  *a2 = v5;
  *v4 = 0;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  v7 = a1[1];
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v8(v7[1], v4);
  }

  return v4;
}

uint64_t sub_10013BA54(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002D7B08;
  a2[1] = v2;
  return result;
}

uint64_t sub_10013BA80(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  v4 = **a2;
  if ((atomic_load_explicit(&qword_1002E0D68, memory_order_acquire) & 1) == 0)
  {
    v11 = v4;
    sub_10029F944();
    v4 = v11;
  }

  v5 = (v4 + 72);
  v6 = *(v4 + 96);
  if ((v6 & 2) == 0)
  {
    v5 = *v5;
  }

  if (!(*(v6 & 0xFFFFFFFFFFFFFFF8))(v5, qword_1002E0D60))
  {
    return 2;
  }

  v7 = *(a1 + 8);
  v9 = *v7;
  v8 = *(v7 + 8);

  return v9(v8, v3);
}

uint64_t sub_10013BB28()
{
  if ((atomic_load_explicit(&qword_1002E0D80, memory_order_acquire) & 1) == 0)
  {
    sub_10029F994();
  }

  return qword_1002E0D70;
}

const char *sub_10013BB70()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::AttributeTrait::IsLocation<Empty>]";
  v6 = 101;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t sub_10013BBF0@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v5 = *result;
  v6 = v4 - 1;
  v7 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v8 = (*result + 8 * v7);
  v9 = *v8;
  if (*a2 != *v8)
  {
    v12 = 0;
    v13 = 1;
    while (v9 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v9 == -8192;
      }

      if (v14)
      {
        v12 = v8;
      }

      v15 = v7 + v13++;
      v7 = v15 & v6;
      v8 = (v5 + 8 * (v15 & v6));
      v9 = *v8;
      if (*a2 == *v8)
      {
        goto LABEL_3;
      }
    }

    if (v12)
    {
      v8 = v12;
    }

LABEL_5:
    v18 = v8;
    v11 = *(result + 8);
    if (4 * v11 + 4 >= 3 * v4)
    {
      v4 *= 2;
    }

    else if (v4 + ~v11 - *(result + 12) > v4 >> 3)
    {
      *(result + 8) = v11 + 1;
      if (*v8 == -4096)
      {
LABEL_9:
        *v8 = *a2;
        v5 = *result;
        v4 = *(result + 16);
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v16 = result;
    v17 = a3;
    sub_10013BD64(result, v4);
    sub_10006E954(v16, a2, &v18);
    result = v16;
    a3 = v17;
    v8 = v18;
    ++*(v16 + 8);
    if (*v8 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v10 = 0;
LABEL_10:
  *a3 = v8;
  *(a3 + 8) = v5 + 8 * v4;
  *(a3 + 16) = v10;
  return result;
}

void sub_10013BD64(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer((8 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_10;
      }

      v13 = v12 + 1;
      v10 = &buffer->i8[8 * (v13 & 0x3FFFFFFFFFFFFFFCLL)];
      v14 = buffer + 1;
      v15 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v16 = v13 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v14[-1] = v15;
        *v14 = v15;
        v14 += 2;
        v16 -= 4;
      }

      while (v16);
      if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_10:
        v17 = &buffer->i8[8 * v11];
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != v17);
      }
    }

    if (v3)
    {
      v18 = v4;
      do
      {
        v27 = *v18;
        if ((*v18 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v28 = *(a1 + 16) - 1;
          v29 = v28 & ((v27 >> 4) ^ (v27 >> 9));
          v26 = (*a1 + 8 * v29);
          v30 = *v26;
          if (v27 != *v26)
          {
            v31 = 0;
            v32 = 1;
            while (v30 != -4096)
            {
              if (v31)
              {
                v33 = 0;
              }

              else
              {
                v33 = v30 == -8192;
              }

              if (v33)
              {
                v31 = v26;
              }

              v34 = v29 + v32++;
              v29 = v34 & v28;
              v26 = (*a1 + 8 * (v34 & v28));
              v30 = *v26;
              if (v27 == *v26)
              {
                goto LABEL_24;
              }
            }

            if (v31)
            {
              v26 = v31;
            }
          }

LABEL_24:
          *v26 = v27;
          ++*(a1 + 8);
        }

        v18 = (v18 + 8);
      }

      while (v18 != (v4 + 8 * v3));
    }

    llvm::deallocate_buffer(v4, (8 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v19 = *(a1 + 16);
    if (v19)
    {
      v20 = (v19 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v20 < 3)
      {
        goto LABEL_19;
      }

      v21 = v20 + 1;
      v10 = &buffer->i8[8 * (v21 & 0x3FFFFFFFFFFFFFFCLL)];
      v22 = buffer + 1;
      v23 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v24 = v21 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v22[-1] = v23;
        *v22 = v23;
        v22 += 2;
        v24 -= 4;
      }

      while (v24);
      if (v21 != (v21 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_19:
        v25 = &buffer->i8[8 * v19];
        do
        {
          *v10 = -4096;
          v10 += 8;
        }

        while (v10 != v25);
      }
    }
  }
}

BOOL sub_10013BF7C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[2];
  if (v3 == *(*a1 + 8))
  {
    if (!v3)
    {
      return a2[3] == *(v2 + 16);
    }

    v4 = a2[1];
    v5 = *v2;
    v6 = 8 * v3;
    while (*v4 == *v5)
    {
      ++v4;
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        return a2[3] == *(v2 + 16);
      }
    }
  }

  return 0;
}

void *sub_10013BFDC(uint64_t a1, unint64_t *a2)
{
  v3 = sub_10013B564(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

BOOL sub_10013C03C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[2];
  if (v3 == *(*a1 + 8))
  {
    if (!v3)
    {
      return a2[3] == *(v2 + 16);
    }

    v4 = a2[1];
    v5 = *v2;
    v6 = 8 * v3;
    while (*v4 == *v5)
    {
      ++v4;
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        return a2[3] == *(v2 + 16);
      }
    }
  }

  return 0;
}

void *sub_10013C09C(uint64_t a1, unint64_t *a2)
{
  v3 = sub_10013B564(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void sub_10013C0FC(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_10013C994;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = sub_10013C9F4;
  v18 = &v10;
  v19 = sub_10013CA3C;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id;
  v22 = "builtin.call_site_loc";
  v23 = 21;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_10013C260(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_10013CB50;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = nullsub_224;
  v18 = &v10;
  v19 = sub_10013CBB4;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id;
  v22 = "builtin.file_line_range";
  v23 = 23;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_10013C3C4(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_10013CBBC;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = sub_10013CC1C;
  v18 = &v10;
  v19 = sub_10013CC80;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
  v22 = "builtin.fused_loc";
  v23 = 17;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_10013C528(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_10013D210;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = sub_10013D270;
  v18 = &v10;
  v19 = sub_10013D2B8;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id;
  v22 = "builtin.name_loc";
  v23 = 16;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

void sub_10013C68C(uint64_t a1)
{
  v11 = a1;
  v12 = v14;
  v13 = 0x300000000;
  v15[0] = sub_10013D418;
  v16 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v17 = sub_10013D478;
  v18 = &v10;
  v19 = sub_10013D4A8;
  v20 = &v9;
  v21 = &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id;
  v22 = "builtin.opaque_loc";
  v23 = 18;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id, &v11);
  v2 = v16;
  if (v16 >= 8)
  {
    if ((v16 & 4) != 0)
    {
      if ((v16 & 2) != 0)
      {
        v3 = v15;
      }

      else
      {
        v3 = v15[0];
      }

      (*((v16 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v15[0], v15[1], v15[2]);
    }
  }

  v4 = v12;
  if (v13)
  {
    v5 = 16 * v13;
    v6 = (v12 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v12;
  }

  if (v4 != v14)
  {
    free(v4);
  }

  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(*(a1 + 32));
  mlir::StorageUniquer::registerParametricStorageTypeImpl(AttributeUniquer);
}

uint64_t sub_10013C7F0(uint64_t a1)
{
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  v17[0] = sub_10013D66C;
  v18 = &llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v19 = nullsub_225;
  v20 = v11;
  v21 = sub_10013D6D0;
  v22 = &v12;
  v23 = &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id;
  v24 = "builtin.unknown_loc";
  v25 = 19;
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id, &v13);
  v2 = v18;
  if (v18 >= 8)
  {
    if ((v18 & 4) != 0)
    {
      if ((v18 & 2) != 0)
      {
        v3 = v17;
      }

      else
      {
        v3 = v17[0];
      }

      (*((v18 & 0xFFFFFFFFFFFFFFF8) + 16))(v3);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(v17[0], v17[1], v17[2]);
    }
  }

  v4 = v14;
  if (v15)
  {
    v5 = 16 * v15;
    v6 = (v14 + 8);
    do
    {
      v7 = *v6;
      v6 += 2;
      free(v7);
      v5 -= 16;
    }

    while (v5);
    v4 = v14;
  }

  if (v4 != v16)
  {
    free(v4);
  }

  v8 = *(a1 + 32);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v8);
  v11[0] = v8;
  v11[1] = &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id;
  v13 = sub_10013D6D8;
  v14 = v11;
  v12 = &v13;
  return mlir::StorageUniquer::registerSingletonImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id, sub_100109AA4, &v12);
}

BOOL sub_10013C994(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0D68, memory_order_acquire))
  {
    return qword_1002E0D60 == a1;
  }

  sub_10029F944();
  return qword_1002E0D60 == a1;
}

uint64_t sub_10013C9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t sub_10013CA3C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = a2;
  v3 = *a3;
  v4 = a3[1];
  mlir::Attribute::getContext(&v11);
  v12 = v3;
  Context = mlir::Attribute::getContext(&v12);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v13[0] = &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id;
  v13[1] = Context;
  v17[0] = sub_10013B0D4;
  v17[1] = v13;
  v16[0] = v12;
  v16[1] = v4;
  v7 = (v4 >> 4) ^ (v4 >> 9);
  v8 = __ROR8__(v7 + 16, 16);
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v12 >> 4) ^ (v12 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v14[0] = v16;
  v14[1] = v17;
  v15 = v16;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 32) >> 15) ^ (-348639895 * (v8 ^ (v9 >> 47) ^ v9)))) ^ v7, sub_10013AFEC, &v15, sub_10013B01C, v14);
}

BOOL sub_10013CB50(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0D68, memory_order_acquire))
  {
    return qword_1002E0D60 == a1;
  }

  sub_10029F944();
  return qword_1002E0D60 == a1;
}

BOOL sub_10013CBBC(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0D68, memory_order_acquire))
  {
    return qword_1002E0D60 == a1;
  }

  sub_10029F944();
  return qword_1002E0D60 == a1;
}

uint64_t sub_10013CC1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2[1];
  v6 = a2[2];
  v8 = a2[3];
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  if (v6)
  {
    v9 = 8 * v6;
    do
    {
      v10 = *v7++;
      mlir::AttrTypeImmediateSubElementWalker::walk(v12, v10);
      v9 -= 8;
    }

    while (v9);
  }

  return mlir::AttrTypeImmediateSubElementWalker::walk(v12, v8);
}

uint64_t sub_10013CC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8.i64[0] = a3;
  v8.i64[1] = a4;
  *&v7 = a5;
  *(&v7 + 1) = a6;
  return sub_10013CCB4(a2, &v8, &v7);
}

uint64_t sub_10013CCB4(uint64_t a1, int64x2_t *a2, __int128 *a3)
{
  v21 = a1;
  v3 = *(a1 + 8);
  v20 = *(a1 + 24);
  v18 = *a2;
  v19 = v3;
  v17 = *a3;
  sub_10013CEEC(&v19, &v18, &v30);
  Context = mlir::Attribute::getContext(&v21);
  v27 = v29;
  v28 = 0x600000000;
  v5 = v31;
  if (!v31)
  {
    v5 = 0;
    v8 = v29;
    goto LABEL_9;
  }

  if (v31 < 7)
  {
    v7 = v29;
    v6 = v31;
    goto LABEL_7;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v27, v29, v31, 8);
  v6 = v31;
  if (v31)
  {
    v7 = v27;
LABEL_7:
    memcpy(v7, v30, 8 * v6);
  }

  LODWORD(v28) = v5;
  v8 = v27;
LABEL_9:
  v9 = v33;
  v29[6] = v33;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v22[0] = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
  v22[1] = Context;
  v26[0] = sub_10013B6D0;
  v26[1] = v22;
  v25[0] = v8;
  v25[1] = v5;
  v25[2] = v9;
  v11 = sub_1000E0184(v8, &v8[2 * v5]);
  v12 = (v9 >> 4) ^ (v9 >> 9);
  v13 = __ROR8__(v12 + 16, 16);
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v11 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v11 ^ 0xFF51AFD7ED558CCDLL)));
  v23[0] = v25;
  v23[1] = v26;
  v24 = v25;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, (-348639895 * ((v14 >> 47) ^ v14)) ^ v12, sub_10013B4B4, &v24, sub_10013B514, v23);
  if (v27 != v29)
  {
    free(v27);
  }

  if (v30 != &v32)
  {
    free(v30);
  }

  return ParametricStorageTypeImpl;
}

void sub_10013CEEC(uint64_t *a1@<X0>, int64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  sub_10013D058(a1[1], a2, &__src);
  if (a1[2])
  {
    v7 = *a2;
    *a2 = vaddq_s64(*a2, xmmword_1002B0E70);
    v8 = *v7.i64[0];
  }

  else
  {
    v8 = 0;
  }

  v9 = (a3 + 16);
  *a3 = a3 + 16;
  *(a3 + 8) = 0x600000000;
  v10 = v15;
  v11 = __src;
  if (!v15 || &__src == a3)
  {
    goto LABEL_15;
  }

  if (__src == v17)
  {
    if (v15 < 7)
    {
      v13 = v15;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v15, 8);
      v13 = v15;
      v11 = __src;
      if (!v15)
      {
LABEL_13:
        *(a3 + 8) = v10;
        goto LABEL_14;
      }

      v9 = *a3;
    }

    memcpy(v9, v11, 8 * v13);
    v11 = __src;
    goto LABEL_13;
  }

  *a3 = __src;
  v12 = v16;
  *(a3 + 8) = v10;
  *(a3 + 12) = v12;
  __src = v17;
  v16 = 0;
  v11 = v17;
LABEL_14:
  v15 = 0;
LABEL_15:
  *(a3 + 64) = v8;
  if (v11 != v17)
  {
    free(v11);
  }
}

void sub_10013D058(uint64_t a1@<X1>, int64x2_t *a2@<X2>, uint64_t a3@<X8>)
{
  __src = v19;
  v18 = 0x600000000;
  if (a1)
  {
    v3 = 8 * a1;
    v4 = xmmword_1002B0E70;
    do
    {
      while (1)
      {
        v5 = *a2;
        *a2 = vaddq_s64(*a2, v4);
        v6 = *v5.i64[0];
        v16 = *v5.i64[0];
        if (v18 >= HIDWORD(v18))
        {
          break;
        }

        *(__src + v18) = v6;
        LODWORD(v18) = v18 + 1;
        v3 -= 8;
        if (!v3)
        {
          goto LABEL_7;
        }
      }

      v7 = a3;
      v8 = a2;
      v15 = v4;
      sub_1000B562C(&__src, &v16);
      v4 = v15;
      a2 = v8;
      a3 = v7;
      v3 -= 8;
    }

    while (v3);
LABEL_7:
    v9 = v18;
    v10 = __src;
    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
    if (v9 && &__src != a3)
    {
      if (v10 == v19)
      {
        v12 = v9;
        if (v9 < 7 || (v13 = a3, llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v9, 8), a3 = v13, v12 = v18, v10 = __src, v18))
        {
          v14 = a3;
          memcpy(*a3, v10, 8 * v12);
          a3 = v14;
          v10 = __src;
        }

        *(a3 + 8) = v9;
      }

      else
      {
        *a3 = v10;
        v11 = HIDWORD(v18);
        *(a3 + 8) = v9;
        *(a3 + 12) = v11;
        __src = v19;
        HIDWORD(v18) = 0;
        v10 = v19;
      }

      LODWORD(v18) = 0;
    }

    if (v10 != v19)
    {
      free(v10);
    }
  }

  else
  {
    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
  }
}

BOOL sub_10013D210(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0D68, memory_order_acquire))
  {
    return qword_1002E0D60 == a1;
  }

  sub_10029F944();
  return qword_1002E0D60 == a1;
}

uint64_t sub_10013D270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9[0] = a3;
  v9[1] = a4;
  v9[2] = a5;
  v9[3] = a6;
  mlir::AttrTypeImmediateSubElementWalker::walk(v9, v6);
  return mlir::AttrTypeImmediateSubElementWalker::walk(v9, v7);
}

uint64_t sub_10013D2B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return sub_10013D2EC(a2, v5);
}

uint64_t sub_10013D2EC(uint64_t a1, uint64_t **a2)
{
  v12 = a1;
  v2 = *a2;
  if (*(a1 + 8))
  {
    v4 = *v2++;
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  v5 = *v2;
  mlir::Attribute::getContext(&v12);
  v13 = v3;
  Context = mlir::Attribute::getContext(&v13);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id;
  v14[1] = Context;
  v18[0] = sub_10013B7C8;
  v18[1] = v14;
  v17[0] = v13;
  v17[1] = v5;
  v8 = (v5 >> 4) ^ (v5 >> 9);
  v9 = __ROR8__(v8 + 16, 16);
  v10 = 0x9DDFEA08EB382D69 * (v9 ^ (v13 >> 4) ^ (v13 >> 9) ^ 0xFF51AFD7ED558CCDLL);
  v15[0] = v17;
  v15[1] = v18;
  v16 = v17;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, (-348639895 * ((((0x9DDFEA08EB382D69 * (v9 ^ (v10 >> 47) ^ v10)) >> 32) >> 15) ^ (-348639895 * (v9 ^ (v10 >> 47) ^ v10)))) ^ v8, sub_10013B6E0, &v16, sub_10013B710, v15);
}

BOOL sub_10013D418(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0D68, memory_order_acquire))
  {
    return qword_1002E0D60 == a1;
  }

  sub_10029F944();
  return qword_1002E0D60 == a1;
}

uint64_t sub_10013D478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 24);
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  return mlir::AttrTypeImmediateSubElementWalker::walk(v8, v6);
}

uint64_t sub_10013D4A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5[0] = a3;
  v5[1] = a4;
  return sub_10013D4DC(a2, v5);
}

uint64_t sub_10013D4DC(uint64_t a1, uint64_t **a2)
{
  v14 = a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = **a2;
  mlir::Attribute::getContext(&v14);
  v15 = v4;
  Context = mlir::Attribute::getContext(&v15);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v16[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id;
  v16[1] = Context;
  v20[0] = sub_10013B9D4;
  v20[1] = v16;
  v19[0] = v2;
  v19[1] = v3;
  v19[2] = v15;
  v7 = (v3 >> 4) ^ (v3 >> 9);
  v8 = 0x9AE16A3B2F90404FLL * ((v15 >> 4) ^ (v15 >> 9));
  v9 = __ROR8__(0xB492B66FBE98F273 * v2 - v7, 43);
  v10 = __ROR8__(v8 ^ 0xFF51AFD7ED558CCDLL, 30);
  v11 = 0xB492B66FBE98F273 * v2 - 0xAE502812AA7333 + __ROR8__(v7 ^ 0xC949D7C7509E6557, 20) - v8 + 24;
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * ((v9 - 0x3C5A37A36834CED9 * v7 + v10) ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v9 - 0x3C5A37A36834CED9 * v7 + v10) ^ v11)));
  v17[0] = v19;
  v17[1] = v20;
  v18 = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id, -348639895 * ((v12 >> 47) ^ v12), sub_10013B8D0, &v18, sub_10013B910, v17);
}

BOOL sub_10013D66C(uint64_t a1)
{
  if (atomic_load_explicit(&qword_1002E0D68, memory_order_acquire))
  {
    return qword_1002E0D60 == a1;
  }

  sub_10029F944();
  return qword_1002E0D60 == a1;
}

_BYTE *sub_10013DD74(_BYTE *result, uint64_t a2)
{
  v3 = result;
  v4 = result + 8;
  v5 = *result;
  if (*result != result + 8)
  {
    do
    {
      v9 = *(v5 + 55);
      if (v9 >= 0)
      {
        v10 = v5 + 4;
      }

      else
      {
        v10 = v5[4];
      }

      v11 = v5[5];
      if (v9 >= 0)
      {
        v12 = *(v5 + 55);
      }

      else
      {
        v12 = v5[5];
      }

      result = mlir::DialectRegistry::insert(a2, v5[7], v10, v12, (v5 + 8));
      v13 = v5[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v5[2];
          v15 = *v14 == v5;
          v5 = v14;
        }

        while (!v15);
      }

      v5 = v14;
    }

    while (v14 != v4);
  }

  v6 = *(v3 + 14);
  if (v6)
  {
    v7 = *(v3 + 6);
    for (i = 16 * v6; i; i -= 16)
    {
      (*(**(v7 + 8) + 24))(&v19);
      v21 = *v7;
      v22 = 0;
      sub_1000B0730(a2 + 24, &v21, &v22, &v23);
      if (v24 == 1)
      {
        v16 = *(a2 + 56);
        *(v23 + 8) = v16;
        v20 = &v19;
        v21 = v7;
        if (v16 >= *(a2 + 60))
        {
          sub_100140C38(a2 + 48, &std::piecewise_construct, &v21, &v20);
          result = v19;
          v19 = 0;
          if (!result)
          {
            goto LABEL_17;
          }

LABEL_22:
          result = (*(*result + 8))(result);
          goto LABEL_17;
        }

        v17 = (*(a2 + 48) + 16 * v16);
        *v17 = *v7;
        v18 = v19;
        v19 = 0;
        v17[1] = v18;
        *(a2 + 56) = v16 + 1;
      }

      result = v19;
      v19 = 0;
      if (result)
      {
        goto LABEL_22;
      }

LABEL_17:
      v7 += 16;
    }
  }

  return result;
}

void mlir::MLIRContext::~MLIRContext(mlir::MLIRContext *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    sub_100142588(v2);
    operator delete();
  }
}

uint64_t mlir::MLIRContext::executeActionInternal(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v8[0] = a2;
  v8[1] = a3;
  v5 = *(v4 + 24);
  if (v5)
  {
    return (*(*v5 + 48))(v5, v8, a4);
  }

  v7 = sub_10000520C();
  return mlir::MLIRContext::hasActionHandler(v7);
}

void mlir::MLIRContext::appendDialectRegistry(mlir::MLIRContext *this, const mlir::DialectRegistry *a2)
{
  if ((mlir::DialectRegistry::isSubsetOf(a2, *this + 272) & 1) == 0)
  {
    sub_10013DD74(a2, *this + 272);

    mlir::DialectRegistry::applyExtensions(a2, this);
  }
}

void mlir::MLIRContext::getLoadedDialects(mlir::MLIRContext *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(*this + 256))
  {
    operator new();
  }
}

void mlir::MLIRContext::getAvailableDialects(mlir::MLIRContext *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(*this + 272);
  v4 = *this + 280;
  if (v3 != v4)
  {
    do
    {
      v5 = v3[4];
      v6 = *(v3 + 55);
      if (v6 >= 0)
      {
        v5 = v3 + 4;
      }

      if (v6 < 0)
      {
        v6 = v3[5];
      }

      *&v10 = v5;
      *(&v10 + 1) = v6;
      sub_100032EB4(a2, &v10);
      v7 = v3[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v3[2];
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v4);
  }
}

uint64_t mlir::MLIRContext::getLoadedDialect(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8[0] = a2;
  v8[1] = a3;
  v4 = *a1;
  v5 = sub_100087CD0((*a1 + 248), v8);
  v6 = *(v4 + 248) + 24 * *(v4 + 264);
  if (v5)
  {
    v6 = v5;
  }

  if (v6 == *(*a1 + 248) + 24 * *(*a1 + 264))
  {
    return 0;
  }

  else
  {
    return *(v6 + 16);
  }
}

uint64_t (*mlir::MLIRContext::getOrLoadDialect(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v11[0] = a2;
  v11[1] = a3;
  v6 = *a1;
  v7 = sub_100087CD0((*a1 + 248), v11);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(v6 + 248) + 24 * *(v6 + 264);
  }

  if (v8 == *(*a1 + 248) + 24 * *(*a1 + 264) || (result = *(v8 + 16)) == 0)
  {
    result = mlir::DialectRegistry::getDialectAllocator(*a1 + 272, a2, a3);
    if (result)
    {
      return result(v10, a1);
    }
  }

  return result;
}

size_t *mlir::MLIRContext::getOrLoadDialect(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  *&v35 = a2;
  *(&v35 + 1) = a3;
  v9 = *a1;
  v32[0] = 0;
  sub_10013E600(v9 + 248, &v35, &v33);
  if (v34 == 1)
  {
    a5(v32, a6);
    v10 = sub_10013E710(v9 + 248, &v35);
    v11 = v32[0];
    v32[0] = 0;
    v12 = *v10;
    *v10 = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v32[0];
    v32[0] = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = *v10;
    v15 = sub_1001430E8((v9 + 712), &v35);
    if (v15 && v15 != *(v9 + 712) + 80 * *(v9 + 728))
    {
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v17)
      {
        v18 = *(v15 + 16);
        if (((v17 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
        {
          goto LABEL_13;
        }

        v19 = ((v17 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
        v18 = &v16[v19 & 0x3FFFFFFFFFFFFFFELL];
        v20 = v16 + 1;
        v21 = v19 & 0x3FFFFFFFFFFFFFFELL;
        do
        {
          v22 = *v20;
          *(*(v20 - 1) + 32) = v14;
          *(v22 + 32) = v14;
          v20 += 2;
          v21 -= 2;
        }

        while (v21);
        if (v19 != (v19 & 0x3FFFFFFFFFFFFFFELL))
        {
LABEL_13:
          v23 = &v16[v17];
          do
          {
            v24 = *v18++;
            *(v24 + 32) = v14;
          }

          while (v18 != v23);
        }
      }

      if (v16 != (v15 + 32))
      {
        v25 = v15;
        free(v16);
        v15 = v25;
      }

      *v15 = xmmword_1002B0DE0;
      *(v9 + 720) = vadd_s32(*(v9 + 720), 0x1FFFFFFFFLL);
    }

    mlir::DialectRegistry::applyExtensions((v9 + 272), v14);
    return v14;
  }

  else
  {
    if (*(*(v33 + 16) + 24) != a4)
    {
      v31 = 1283;
      v29 = "a dialect with namespace '";
      v30 = v35;
      v27 = "' has already been registered";
      v28 = 259;
      sub_10000550C(&v29, &v27, v32);
      llvm::report_fatal_error(v32, 1);
    }

    return *(v33 + 16);
  }
}

uint64_t sub_10013E600@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = 0;
  result = sub_10009E84C(a1, a2, &v12);
  v7 = v12;
  if (!result)
  {
    v13 = v12;
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    if (4 * v9 + 4 >= 3 * v10)
    {
      v10 *= 2;
    }

    else if (v10 + ~v9 - *(a1 + 12) > v10 >> 3)
    {
      *(a1 + 8) = v9 + 1;
      if (*v7 == -1)
      {
LABEL_7:
        *v7 = *a2;
        v7[2] = 0;
        v8 = 1;
        goto LABEL_8;
      }

LABEL_6:
      --*(a1 + 12);
      goto LABEL_7;
    }

    sub_100142E84(a1, v10);
    result = sub_10009E84C(a1, a2, &v13);
    v7 = v13;
    ++*(a1 + 8);
    if (*v7 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = 0;
LABEL_8:
  v11 = *a1 + 24 * *(a1 + 16);
  *a3 = v7;
  *(a3 + 8) = v11;
  *(a3 + 16) = v8;
  return result;
}

char **sub_10013E710(uint64_t a1, _OWORD *a2)
{
  v9 = 0;
  v4 = sub_10009E84C(a1, a2, &v9);
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v10 = v9;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (4 * v6 + 4 >= 3 * v7)
    {
      v7 *= 2;
    }

    else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
    {
      *(a1 + 8) = v6 + 1;
      if (*v5 == -1)
      {
LABEL_6:
        *v5 = *a2;
        v5[2] = 0;
        return v5 + 2;
      }

LABEL_5:
      --*(a1 + 12);
      goto LABEL_6;
    }

    sub_100142E84(a1, v7);
    sub_10009E84C(a1, a2, &v10);
    v5 = v10;
    ++*(a1 + 8);
    if (*v5 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return v5 + 2;
}

unint64_t mlir::MLIRContext::getRegistryHash(mlir::MLIRContext *this)
{
  v2 = *(*this + 256);
  v11 = 0u;
  v12 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v18 = 0xFF51AFD7ED558CCDLL;
  __src = 0;
  LODWORD(v11) = v2;
  v3 = sub_10002D330(&__src, 0, &v11 + 4, &v14 + 8);
  v4 = *(*this + 544);
  v11 = 0u;
  v12 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v18 = 0xFF51AFD7ED558CCDLL;
  __src = v3;
  LODWORD(v11) = v4;
  v5 = sub_10002D330(&__src, 0, &v11 + 4, &v14 + 8);
  v6 = *(*this + 192);
  v11 = 0u;
  v12 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v18 = 0xFF51AFD7ED558CCDLL;
  __src = v5;
  LODWORD(v11) = v6;
  v7 = sub_10002D330(&__src, 0, &v11 + 4, &v14 + 8);
  v8 = *(*this + 368);
  v11 = 0u;
  v12 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v18 = 0xFF51AFD7ED558CCDLL;
  __src = v7;
  LODWORD(v11) = v8;
  return sub_10002D330(&__src, 0, &v11 + 4, &v14 + 8);
}

void mlir::MLIRContext::disableMultithreading(mlir::MLIRContext *this, char a2)
{
  if (atomic_load(qword_1002E53E0))
  {
    if (atomic_load_explicit(qword_1002E53E0, memory_order_acquire))
    {
      if (*(qword_1002E53E0[0] + 120))
      {
        return;
      }
    }

    else
    {
      llvm::ManagedStaticBase::RegisterManagedStatic(qword_1002E53E0, sub_100141E54, sub_100141F20);
      if (*(qword_1002E53E0[0] + 120))
      {
        return;
      }
    }
  }

  v5 = *this;
  *(v5 + 41) = a2 ^ 1;
  mlir::StorageUniquer::disableMultithreading(v5 + 352, a2);
  mlir::StorageUniquer::disableMultithreading(*this + 560, a2);
  mlir::StorageUniquer::disableMultithreading(*this + 384, a2);
  v6 = *this;
  if ((a2 ^ 1))
  {
    if (!*(v6 + 48))
    {
      operator new();
    }
  }

  else
  {
    v7 = *(v6 + 56);
    if (v7)
    {
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      v8 = *(*v7 + 16);

      v8();
    }
  }
}

uint64_t mlir::RegisteredOperationName::lookup(int8x16_t *a1, unint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = llvm::StringMapImpl::hash(a1, a2);
  Key = llvm::StringMapImpl::FindKey((v5 + 208), a1, a2, v6);
  if (Key == -1 || Key == *(v5 + 216))
  {
    return 0;
  }

  else
  {
    return *(*(*(v5 + 208) + 8 * Key) + 8);
  }
}

uint64_t mlir::Dialect::addType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = **(a1 + 32);
  v6 = v5 + 8;
  v7 = v5[8];
  v5[18] += 160;
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 160;
  if (v7)
  {
    v10 = v9 > v5[9];
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v8 = sub_10003E4AC(v6, 160, 160, 3);
  }

  else
  {
    *v6 = v9;
  }

  *v8 = *a3;
  *(v8 + 8) = v8 + 24;
  *(v8 + 16) = 0x300000000;
  if (*(a3 + 16))
  {
    sub_1000E4C5C(v8 + 8, (a3 + 8));
  }

  *(v8 + 96) = 0;
  v11 = *(a3 + 96);
  *(v8 + 96) = v11;
  if (v11 >= 8)
  {
    if ((v11 & 2) != 0 && (v11 & 4) != 0)
    {
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 8))(v8 + 72, a3 + 72);
      (*((*(v8 + 96) & 0xFFFFFFFFFFFFFFF8) + 16))(a3 + 72);
    }

    else
    {
      v12 = *(a3 + 72);
      *(v8 + 88) = *(a3 + 88);
      *(v8 + 72) = v12;
    }

    *(a3 + 96) = 0;
  }

  v13 = *(a3 + 104);
  v14 = *(a3 + 120);
  v15 = *(a3 + 136);
  *(v8 + 152) = *(a3 + 152);
  *(v8 + 136) = v15;
  *(v8 + 120) = v14;
  *(v8 + 104) = v13;
  *&v21 = a2;
  *(&v21 + 1) = v8;
  sub_1000819A8((v5 + 45), &v21, &v21 + 1, v24);
  if ((v25 & 1) == 0)
  {
    llvm::report_fatal_error("Dialect Type already registered.", 1);
  }

  v21 = *(v8 + 144);
  v22[0] = v8;
  result = sub_1001432F4((v5 + 49), &v21, v22, v24);
  if ((v25 & 1) == 0)
  {
    v17 = *(v8 + 144);
    v18 = *(v8 + 152);
    v23 = 1283;
    *&v21 = "Dialect Type with name ";
    v22[0] = v17;
    v22[1] = v18;
    v19 = " is already registered.";
    v20 = 259;
    sub_10000550C(&v21, &v19, v24);
    llvm::report_fatal_error(v24, 1);
  }

  return result;
}

uint64_t mlir::Dialect::addAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = **(a1 + 32);
  v6 = v5 + 8;
  v7 = v5[8];
  v5[18] += 160;
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 160;
  if (v7)
  {
    v10 = v9 > v5[9];
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v8 = sub_10003E4AC(v6, 160, 160, 3);
  }

  else
  {
    *v6 = v9;
  }

  *v8 = *a3;
  *(v8 + 8) = v8 + 24;
  *(v8 + 16) = 0x300000000;
  if (*(a3 + 16))
  {
    sub_1000E4C5C(v8 + 8, (a3 + 8));
  }

  *(v8 + 96) = 0;
  v11 = *(a3 + 96);
  *(v8 + 96) = v11;
  if (v11 >= 8)
  {
    if ((v11 & 2) != 0 && (v11 & 4) != 0)
    {
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 8))(v8 + 72, a3 + 72);
      (*((*(v8 + 96) & 0xFFFFFFFFFFFFFFF8) + 16))(a3 + 72);
    }

    else
    {
      v12 = *(a3 + 72);
      *(v8 + 88) = *(a3 + 88);
      *(v8 + 72) = v12;
    }

    *(a3 + 96) = 0;
  }

  v13 = *(a3 + 104);
  v14 = *(a3 + 120);
  v15 = *(a3 + 136);
  *(v8 + 152) = *(a3 + 152);
  *(v8 + 136) = v15;
  *(v8 + 120) = v14;
  *(v8 + 104) = v13;
  *&v21 = a2;
  *(&v21 + 1) = v8;
  sub_1000819A8((v5 + 67), &v21, &v21 + 1, v24);
  if ((v25 & 1) == 0)
  {
    llvm::report_fatal_error("Dialect Attribute already registered.", 1);
  }

  v21 = *(v8 + 144);
  v22[0] = v8;
  result = sub_1001432F4((v5 + 71), &v21, v22, v24);
  if ((v25 & 1) == 0)
  {
    v17 = *(v8 + 144);
    v18 = *(v8 + 152);
    v23 = 1283;
    *&v21 = "Dialect Attribute with name ";
    v22[0] = v17;
    v22[1] = v18;
    v19 = " is already registered.";
    v20 = 259;
    sub_10000550C(&v21, &v19, v24);
    llvm::report_fatal_error(v24, 1);
  }

  return result;
}

uint64_t mlir::AbstractAttribute::lookup(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 552);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(*a2 + 536);
  v4 = v2 - 1;
  v5 = (v2 - 1) & ((a1 >> 4) ^ (a1 >> 9));
  v6 = *(v3 + 16 * v5);
  if (v6 != a1)
  {
    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (v6 == a1)
      {
        goto LABEL_3;
      }
    }

LABEL_9:
    llvm::report_fatal_error("Trying to create an Attribute that was not registered in this MLIRContext.", 1);
  }

LABEL_3:
  result = *(v3 + 16 * v5 + 8);
  if (!result)
  {
    goto LABEL_9;
  }

  return result;
}

void *mlir::OperationName::Impl::Impl(void *a1, size_t a2, const llvm::Twine *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 + 32);
  v20 = 261;
  v19[0] = a2;
  v19[1] = a3;
  v11 = mlir::StringAttr::get(v10, v19, a3);
  v21 = v23;
  v22 = 0x300000000;
  if (*(a6 + 8))
  {
    sub_1000E4C5C(&v21, a6);
    v12 = v22 == 0;
  }

  else
  {
    v12 = 1;
  }

  *a1 = off_1002D7748;
  a1[1] = v11;
  a1[2] = a5;
  a1[3] = a4;
  a1[4] = a1 + 6;
  a1[5] = 0x300000000;
  if (v12)
  {
    a1[12] = 0;
    a1[13] = 0;
  }

  else
  {
    sub_1000E4C5C((a1 + 4), &v21);
    v13 = v22;
    a1[12] = 0;
    a1[13] = 0;
    v14 = v21;
    if (!v13)
    {
      goto LABEL_10;
    }

    v15 = 16 * v13;
    v16 = (v21 + 8);
    do
    {
      v17 = *v16;
      v16 += 2;
      free(v17);
      v15 -= 16;
    }

    while (v15);
  }

  v14 = v21;
LABEL_10:
  if (v14 != v23)
  {
    free(v14);
  }

  return a1;
}

void *mlir::OperationName::OperationName(void *a1, int8x16_t *a2, void *a3, mlir::StringAttr *a4)
{
  v8 = 0;
  *a1 = 0;
  v9 = *a4;
  if (*(*a4 + 41) == 1)
  {
    v10 = llvm::StringMapImpl::hash(a2, a3);
    Key = llvm::StringMapImpl::FindKey((v9 + 208), a2, a3, v10);
    if (Key != -1 && Key != *(v9 + 216))
    {
      *a1 = *(*(*(v9 + 208) + 8 * Key) + 8);
      return a1;
    }

    if ((sub_10029FB28(v9, a2, a3, a1, v22) & 1) == 0)
    {
      return a1;
    }

    v8 = v22[0];
  }

  v19[1] = a2;
  v19[2] = a3;
  v20[0] = 0;
  v12 = llvm::StringMapImpl::hash(a2, a3);
  v14 = sub_10014340C((v9 + 160), a2, a3, v12, v20);
  v16 = v15;
  v17 = v20[0];
  v20[0] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  if (v16)
  {
    v23 = 261;
    v22[0] = a2;
    v22[1] = a3;
    v19[0] = mlir::StringAttr::get(a4, v22, v13);
    mlir::StringAttr::getReferencedDialect(v19);
    memset(v21, 0, sizeof(v21));
    v20[1] = v21;
    v20[2] = 0x300000000;
    operator new();
  }

  *a1 = *(*v14 + 8);
  if (v8)
  {
    llvm::sys::RWMutexImpl::unlock(v8);
  }

  return a1;
}

uint64_t sub_10013F4C4(uint64_t a1, int8x16_t *a2, unint64_t a3)
{
  v6 = llvm::StringMapImpl::hash(a2, a3);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v6);
  v8 = *a1;
  if (Key == -1)
  {
    return v8 + 8 * *(a1 + 8);
  }

  else
  {
    return v8 + 8 * Key;
  }
}

uint64_t mlir::OperationName::getDialectNamespace(mlir::OperationName *this)
{
  v2 = *this;
  if (*(*this + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v7[0] = *(v2 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(v7);
    if (ReferencedDialect)
    {
      goto LABEL_3;
    }
  }

  else
  {
    ReferencedDialect = *(v2 + 24);
    if (ReferencedDialect)
    {
LABEL_3:
      result = *(ReferencedDialect + 8);
      v5 = *(ReferencedDialect + 16);
      return result;
    }
  }

  v7[0] = *(*this + 8);
  v7[0] = mlir::StringAttr::getValue(v7);
  v7[1] = v6;
  v8 = 46;
  llvm::StringRef::find(v7, &v8, 1uLL, 0);
  return v7[0];
}

unint64_t mlir::OperationName::UnregisteredOpModel::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (!v4)
  {
    return 0;
  }

  if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = 0;
  }

  v9 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = mlir::DictionaryAttr::get(&v9, a3, a4);
  v6 = v5 & 0xFFFFFFFFFFFFFF00;
  v7 = v5;
  if (!v5)
  {
    v7 = 0;
    v6 = 0;
  }

  return v6 | v7;
}

void mlir::OperationName::UnregisteredOpModel::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2 + 64;
  v8 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  if (v8)
  {
    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
    {
      v9 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  mlir::NamedAttrList::NamedAttrList(v13, v9);
  mlir::NamedAttrList::set(v13, a3, a4);
  Context = mlir::Attribute::getContext((a2 + 24));
  Dictionary = mlir::NamedAttrList::getDictionary(v13, Context);
  if (HIBYTE(*(a2 + 44)))
  {
    v12 = (v7 + 16 * ((*(a2 + 44) >> 23) & 1));
  }

  else
  {
    v12 = 0;
  }

  *v12 = Dictionary;
  if (v13[0] != &v14)
  {
    free(v13[0]);
  }
}

uint64_t mlir::RegisteredOperationName::lookup(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 200);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*a2 + 184);
  v4 = (v2 - 1) & ((a1 >> 4) ^ (a1 >> 9));
  v5 = *(v3 + 16 * v4);
  if (v5 != a1)
  {
    v7 = 1;
    while (v5 != -4096)
    {
      v8 = v4 + v7++;
      v4 = v8 & (v2 - 1);
      v5 = *(v3 + 16 * v4);
      if (v5 == a1)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

LABEL_3:
  if (v4 == v2)
  {
    return 0;
  }

  return *(v3 + 16 * v4 + 8);
}

void mlir::RegisteredOperationName::insert(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*(*a1 + 24) + 32);
  v6 = *v5;
  if (a3)
  {
    v8 = (v6 + 64);
    v9 = *(v6 + 64);
    v10 = 8 * a3;
    *(v6 + 144) += v10;
    v11 = (v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = v11 + v10;
    if (v9)
    {
      v13 = v12 > *(v6 + 72);
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v48 = a2;
      v49 = sub_10003E4AC(v8, v10, v10, 3);
      a2 = v48;
      v11 = v49;
      v14 = a3;
      if (a3)
      {
LABEL_7:
        v15 = (a2 + 8);
        v16 = v11;
        do
        {
          v51 = 261;
          v50[0] = *(v15 - 1);
          v17 = *v15;
          v15 += 2;
          v50[1] = v17;
          *v16++ = mlir::StringAttr::get(v5, v50, v10);
          --v14;
        }

        while (v14);
      }
    }

    else
    {
      *v8 = v12;
      v14 = a3;
      if (a3)
      {
        goto LABEL_7;
      }
    }

    v4[12] = v11;
    v4[13] = a3;
  }

  v50[0] = v4[1];
  Value = mlir::StringAttr::getValue(v50);
  v20 = v19;
  v21 = llvm::StringMapImpl::hash(Value, v19);
  v22 = *sub_100085DC4((v6 + 160), Value, v20, v21);
  v23 = *a1;
  *a1 = 0;
  v24 = *(v22 + 8);
  *(v22 + 8) = v23;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = v4[2];
  v52 = v4;
  v53 = v25;
  sub_1000C1544(v6 + 184, &v53, &v52, v50);
  v53 = v4;
  v26 = llvm::StringMapImpl::hash(Value, v20);
  sub_100035518((v6 + 208), Value, v20, v26, &v53);
  v27 = v50[0];
  v28 = *(v6 + 232);
  v29 = *(v6 + 240);
  if (v29)
  {
    v30 = *(v6 + 232);
    do
    {
      v31 = v29 >> 1;
      v32 = v30 + 8 * (v29 >> 1);
      v33 = *(*v32 + 8);
      v52 = *(*(v27 + 8) + 8);
      v53 = v33;
      if (v52 == v33 || ((v34 = mlir::StringAttr::getValue(&v52), v36 = v35, v37 = mlir::StringAttr::getValue(&v53), v39 = v38, v38 >= v36) ? (v40 = v36) : (v40 = v38), (!v40 || !memcmp(v34, v37, v40)) && v36 == v39))
      {
        v30 = v32 + 8;
        v31 = v29 + ~v31;
      }

      v29 = v31;
    }

    while (v31);
    v28 = *(v6 + 232);
    v41 = *(v27 + 8);
    v42 = *(v6 + 240);
    if (v28 + 8 * v42 != v30)
    {
      v43 = v30 - v28;
      if (v42 >= *(v6 + 244))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v6 + 232, (v6 + 248), v42 + 1, 8);
        v28 = *(v6 + 232);
        v42 = *(v6 + 240);
      }

      v44 = (v28 + v43);
      *(v28 + 8 * v42) = *(v28 + 8 * v42 - 8);
      v45 = *(v6 + 240);
      v46 = *(v6 + 232) + 8 * v45 - 8;
      if (v46 != v44)
      {
        memmove(v44 + 1, v44, v46 - v44);
        LODWORD(v45) = *(v6 + 240);
      }

      *(v6 + 240) = v45 + 1;
      *v44 = v41;
      return;
    }
  }

  else
  {
    v47 = *(v6 + 232);
    v41 = *(v50[0] + 8);
    v42 = 0;
  }

  if (v42 >= *(v6 + 244))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v6 + 232, (v6 + 248), v42 + 1, 8);
    v42 = *(v6 + 240);
    v28 = *(v6 + 232);
  }

  *(v28 + 8 * v42) = v41;
  ++*(v6 + 240);
}

uint64_t mlir::AbstractType::lookup(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 376);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(*a2 + 360);
  v4 = v2 - 1;
  v5 = (v2 - 1) & ((a1 >> 4) ^ (a1 >> 9));
  v6 = *(v3 + 16 * v5);
  if (v6 != a1)
  {
    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (v6 == a1)
      {
        goto LABEL_3;
      }
    }

LABEL_9:
    llvm::report_fatal_error("Trying to create a Type that was not registered in this MLIRContext.", 1);
  }

LABEL_3:
  result = *(v3 + 16 * v5 + 8);
  if (!result)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t mlir::IntegerType::get(uint64_t *a1, int a2, unsigned int a3)
{
  if (a3)
  {
    goto LABEL_2;
  }

  if (a2 > 31)
  {
    switch(a2)
    {
      case 32:
        v7 = *(*a1 + 504);
        if (v7)
        {
          return v7;
        }

        break;
      case 64:
        v7 = *(*a1 + 512);
        if (v7)
        {
          return v7;
        }

        break;
      case 128:
        v7 = *(*a1 + 520);
        if (!v7)
        {
          break;
        }

        return v7;
      default:
        break;
    }

LABEL_2:
    v9 = a1;
    v3 = *a1;
    v8[0] = &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
    v8[1] = &v9;
    v13[0] = sub_100143600;
    v13[1] = v8;
    v12 = a2 | (a3 << 32);
    v4 = a3 ^ 0xFF51AFD7ED558CCDLL;
    v5 = 0x9DDFEA08EB382D69 * (v4 ^ (8 * a2 + 8));
    v11 = &v12;
    v10[0] = &v12;
    v10[1] = v13;
    return mlir::StorageUniquer::getParametricStorageTypeImpl((v3 + 384), &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), sub_100143534, &v11, sub_100143558, v10);
  }

  if (a2 == 1)
  {
    v7 = *(*a1 + 480);
    if (v7)
    {
      return v7;
    }

    goto LABEL_2;
  }

  if (a2 == 8)
  {
    v7 = *(*a1 + 488);
    if (v7)
    {
      return v7;
    }

    goto LABEL_2;
  }

  if (a2 != 16)
  {
    goto LABEL_2;
  }

  v7 = *(*a1 + 496);
  if (!v7)
  {
    goto LABEL_2;
  }

  return v7;
}

uint64_t mlir::NoneType::get(mlir::NoneType *this, mlir::MLIRContext *a2)
{
  v2 = *this;
  result = *(*this + 528);
  if (!result)
  {
    return mlir::StorageUniquer::getSingletonImpl((v2 + 384), &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id);
  }

  return result;
}

void *mlir::detail::AttributeUniquer::initializeAttributeStorage(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(*a2 + 552);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(*a2 + 536);
  v5 = v3 - 1;
  v6 = (v3 - 1) & ((a3 >> 4) ^ (a3 >> 9));
  v7 = *(v4 + 16 * v6);
  if (v7 != a3)
  {
    v9 = 1;
    while (v7 != -4096)
    {
      v10 = v6 + v9++;
      v6 = v10 & v5;
      v7 = *(v4 + 16 * v6);
      if (v7 == a3)
      {
        goto LABEL_3;
      }
    }

LABEL_9:
    llvm::report_fatal_error("Trying to create an Attribute that was not registered in this MLIRContext.", 1);
  }

LABEL_3:
  v8 = *(v4 + 16 * v6 + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  *result = v8;
  return result;
}

uint64_t mlir::BoolAttr::get(mlir::BoolAttr *this, mlir::MLIRContext *a2)
{
  v2 = 592;
  if (a2)
  {
    v2 = 600;
  }

  return *(*this + v2);
}

void *mlir::detail::DistinctAttributeUniquer::allocateStorage(uint64_t a1, uint64_t a2)
{
  v3 = sub_100140E4C((*a1 + 736));
  v3[10] += 16;
  v4 = ((*v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = v4 + 2;
  if (*v3)
  {
    v6 = v5 > v3[1];
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    result = sub_10003E4AC(v3, 16, 16, 3);
    *result = 0;
    result[1] = a2;
  }

  else
  {
    *v3 = v5;
    *v4 = 0;
    v4[1] = a2;
    return v4;
  }

  return result;
}

void mlir::detail::StringAttrStorage::initialize(mlir::detail::StringAttrStorage *this, mlir::MLIRContext *a2)
{
  LOBYTE(v22[0]) = 46;
  v4 = llvm::StringRef::find(this + 2, v22, 1uLL, 0);
  if (v4 != -1)
  {
    v6 = *(this + 2);
    v5 = *(this + 3);
    v7 = v4 >= v5 ? *(this + 3) : v4;
    v8 = v5 >= v4 + 1 ? v4 + 1 : *(this + 3);
    *&v19 = *(this + 2);
    *(&v19 + 1) = v7;
    v20 = v6 + v8;
    v21 = v5 - v8;
    if (v7 && v5 > v4 + 1)
    {
      v22[0] = v19;
      v22[1] = v7;
      v10 = *a2;
      v11 = sub_100087CD0((*a2 + 248), v22);
      v12 = *(v10 + 248) + 24 * *(v10 + 264);
      if (v11)
      {
        v12 = v11;
      }

      v13 = *a2;
      if (v12 == *(v13 + 248) + 24 * *(v13 + 264))
      {
        *(this + 4) = 0;
      }

      else
      {
        v14 = *(v12 + 16);
        *(this + 4) = v14;
        if (v14)
        {
          return;
        }
      }

      std::recursive_mutex::lock((v13 + 640));
      v15 = sub_10014023C(v13 + 712, &v19);
      v16 = *(v15 + 2);
      if (v16 >= *(v15 + 3))
      {
        v18 = v13;
        v17 = v15;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v15, v15 + 2, v16 + 1, 8);
        v15 = v17;
        v13 = v18;
        LODWORD(v16) = *(v15 + 2);
      }

      *&(*v15)[8 * v16] = this;
      ++*(v15 + 2);
      std::recursive_mutex::unlock((v13 + 640));
    }
  }
}

char **sub_10014023C(uint64_t a1, _OWORD *a2)
{
  v9 = 0;
  v4 = sub_10014369C(a1, a2, &v9);
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v10 = v9;
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (4 * v6 + 4 >= 3 * v7)
    {
      v7 *= 2;
    }

    else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
    {
      *(a1 + 8) = v6 + 1;
      if (*v5 == -1)
      {
LABEL_6:
        *v5 = *a2;
        v5[2] = (v5 + 4);
        v5[3] = 0x600000000;
        return v5 + 2;
      }

LABEL_5:
      --*(a1 + 12);
      goto LABEL_6;
    }

    sub_1001438E4(a1, v7);
    sub_10014369C(a1, a2, &v10);
    v5 = v10;
    ++*(a1 + 8);
    if (*v5 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return v5 + 2;
}

uint64_t sub_100140348(uint64_t *a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5, _OWORD *a6)
{
  if ((atomic_load_explicit(&qword_1002E0D90, memory_order_acquire) & 1) == 0)
  {
    v13 = a3;
    v14 = a6;
    v12 = a5;
    v15 = a2;
    v16 = a4;
    sub_10029FBC8();
    a2 = v15;
    a4 = v16;
    a3 = v13;
    a6 = v14;
    a5 = v12;
  }

  v7 = qword_1002E0D88;
  v21[0] = a2;
  v21[1] = a3;
  v8 = *a5;
  v19[0] = *a4;
  v19[1] = v8;
  v20 = *a6;
  v9 = 0xBF58476D1CE4E5B9 * ((969526130 * sub_100143B38(v20, (v20 + 8 * *(&v20 + 1)))) | ((37 * v8) << 32));
  v10 = 0xBF58476D1CE4E5B9 * ((v9 >> 31) ^ v9 | ((37 * v19[0]) << 32));
  v17[0] = v19;
  v17[1] = v21;
  v18 = v19;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, v7, (v10 >> 31) ^ v10, sub_10014445C, &v18, sub_1001444D4, v17);
}

uint64_t mlir::AffineMap::get(int a1, int a2, uint64_t a3)
{
  v8 = a3;
  v14 = a3;
  Context = mlir::AffineExpr::getContext(&v8);
  *&v13 = &v14;
  *(&v13 + 1) = 1;
  v11 = a2;
  v12 = a1;
  v10 = Context;
  v6 = *Context;
  v9 = &v10;
  return sub_100140348((v6 + 352), sub_100144618, &v9, &v12, &v11, &v13);
}

uint64_t mlir::AffineMap::get(int a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a3;
  *(&v11 + 1) = a4;
  v10 = a1;
  v9 = a2;
  v5 = *a5;
  v7 = &v8;
  v8 = a5;
  return sub_100140348((v5 + 352), sub_100144618, &v7, &v10, &v9, &v11);
}

uint64_t mlir::IntegerSet::get(int a1, int a2, mlir::AffineExpr *this, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v12 = this;
  *(&v12 + 1) = a4;
  *&v11 = a5;
  *(&v11 + 1) = a6;
  v9 = a2;
  v10 = a1;
  Context = mlir::AffineExpr::getContext(this);
  return sub_1001405D4((*Context + 352), nullsub_227, &v8, &v10, &v9, &v12, &v11);
}

uint64_t sub_1001405D4(uint64_t *a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5, _OWORD *a6, _OWORD *a7)
{
  if ((atomic_load_explicit(&qword_1002E0DB8, memory_order_acquire) & 1) == 0)
  {
    v20 = a5;
    v21 = a7;
    v17 = a6;
    v18 = a4;
    v22 = a3;
    v19 = a2;
    sub_10029FC1C();
    a2 = v19;
    a5 = v20;
    a7 = v21;
    a3 = v22;
    a4 = v18;
    a6 = v17;
  }

  v8 = qword_1002E0DB0;
  v28[0] = a2;
  v28[1] = a3;
  v9 = *a5;
  v25[0] = *a4;
  v25[1] = v9;
  v10 = *a7;
  v26 = *a6;
  v27 = v10;
  v11 = (37 * v9);
  v12 = sub_100143B38(v26, (v26 + 8 * *(&v26 + 1)));
  v13 = 0xBF58476D1CE4E5B9 * ((969526130 * sub_10002D970(v27, v27 + *(&v27 + 1))) | (v12 << 32));
  v14 = 0xBF58476D1CE4E5B9 * ((v13 >> 31) ^ v13 | (v11 << 32));
  v15 = 0xBF58476D1CE4E5B9 * ((v14 >> 31) ^ v14 | ((37 * v25[0]) << 32));
  v23[0] = v25;
  v23[1] = v28;
  v24 = v25;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(a1, v8, (v15 >> 31) ^ v15, sub_100144628, &v24, sub_1001446D0, v23);
}

uint64_t sub_10014072C(uint64_t a1)
{
  *a1 = off_1002D7748;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void sub_1001407AC(uint64_t a1)
{
  *a1 = off_1002D7748;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  operator delete();
}

void sub_100140AA8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002D7C18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100140AFC(uint64_t a1)
{
  std::recursive_mutex::~recursive_mutex((a1 + 64));
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      v5 = sub_100140B84(v5) - 3;
      v4 += 24;
    }

    while (v4);
    v2 = *(a1 + 24);
  }

  if (v2 != (a1 + 40))
  {

    free(v2);
  }
}

uint64_t *sub_100140B84(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[1];
      if (v4)
      {
        *v4 = 0;
        atomic_store(0, (v4 + 8));
      }

      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = v3;
        (v3->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    v6 = a1[2];
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = *a1;
  *a1 = 0;
  if (v7)
  {
    sub_100046ACC(v7);
    operator delete();
  }

  return a1;
}

uint64_t sub_100140C38(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t **a4)
{
  v35 = 0;
  v7 = (a1 + 16);
  v8 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 16, &v35);
  v9 = *(a1 + 8);
  v10 = 16 * v9;
  v11 = &v8[16 * v9];
  v12 = **a3;
  v13 = **a4;
  **a4 = 0;
  *v11 = v12;
  *(v11 + 1) = v13;
  v14 = *a1;
  if (!v9)
  {
    goto LABEL_10;
  }

  v15 = (v9 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v15 < 0xB || (v14 + 8 < &v8[v10] ? (v25 = v8 + 8 >= &v14[v10]) : (v25 = 1), v25 ? (v26 = 0) : (v26 = 1), v14 < &v8[v10 - 8] ? (v27 = v8 >= &v14[v10 - 8]) : (v27 = 1), !v27 || (v26 & 1) != 0))
  {
    v16 = v8;
    v17 = *a1;
    do
    {
LABEL_4:
      v18 = *v17;
      v19 = *(v17 + 1);
      *(v17 + 1) = 0;
      *v16 = v18;
      *(v16 + 1) = v19;
      v16 += 16;
      v17 += 16;
    }

    while (v17 != &v14[v10]);
    goto LABEL_5;
  }

  v28 = v15 + 1;
  v29 = (v15 + 1) & 0x1FFFFFFFFFFFFFFELL;
  v16 = &v8[16 * v29];
  v17 = &v14[16 * v29];
  v30 = v29;
  v31 = v8;
  v32 = *a1;
  do
  {
    v33 = *v32;
    v34 = *(v32 + 1);
    *(v32 + 1) = 0;
    *(v32 + 3) = 0;
    *v31 = v33;
    *(v31 + 1) = v34;
    v31 += 32;
    v32 += 32;
    v30 -= 2;
  }

  while (v30);
  if (v28 != v29)
  {
    goto LABEL_4;
  }

LABEL_5:
  v20 = v14 - 8;
  do
  {
    v21 = *&v20[v10];
    *&v20[v10] = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v10 -= 16;
  }

  while (v10);
  v14 = *a1;
LABEL_10:
  v22 = v35;
  if (v14 != v7)
  {
    free(v14);
  }

  *a1 = v8;
  v23 = *(a1 + 8) + 1;
  *(a1 + 8) = v23;
  *(a1 + 12) = v22;
  return &v8[16 * v23 - 16];
}

BOOL sub_100140DE8(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  if (v3 >= v2)
  {
    v4 = *(*a1 + 16);
  }

  else
  {
    v4 = *(*a2 + 16);
  }

  if (v4)
  {
    v5 = memcmp(*(*a1 + 8), *(*a2 + 8), v4);
    if (v5)
    {
      return v5 >> 31;
    }
  }

  if (v2 == v3)
  {
    return 0;
  }

  return v2 < v3;
}

uint64_t sub_100140E4C(uint64_t *a1)
{
  off_1002E34C8();
  if ((*v2 & 1) == 0)
  {
    sub_10029FC70();
  }

  off_1002E34B0();
  v4 = *a1;
  v19 = *a1;
  v5 = v3 + 8;
  if (*v3)
  {
    v6 = 4;
  }

  else
  {
    v6 = *(v3 + 16);
    if (!v6)
    {
      v14 = 0;
      goto LABEL_13;
    }

    v5 = *(v3 + 8);
  }

  v7 = v6 - 1;
  v8 = v7 & ((v4 >> 4) ^ (v4 >> 9));
  v9 = v5 + 40 * v8;
  v10 = *v9;
  if (v4 != *v9)
  {
    v15 = 0;
    v16 = 1;
    while (v10 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v10 == -8192;
      }

      if (v17)
      {
        v15 = v9;
      }

      v18 = v8 + v16++;
      v8 = v18 & v7;
      v9 = v5 + 40 * v8;
      v10 = *v9;
      if (v4 == *v9)
      {
        goto LABEL_8;
      }
    }

    if (v15)
    {
      v14 = v15;
    }

    else
    {
      v14 = v9;
    }

LABEL_13:
    sub_100141690(v3, v14, &v19);
  }

LABEL_8:
  result = **(v9 + 8);
  if (!result)
  {
    std::recursive_mutex::lock((*a1 + 40));
    v12 = *(*a1 + 8);
    if (v12 < *(*a1 + 12))
    {
      v13 = **a1 + 24 * v12;
      operator new();
    }

    sub_100141CCC(*a1);
  }

  return result;
}

void sub_100141090(int *a1)
{
  v2 = *a1;
  if (*a1 <= 1)
  {
    if (v2)
    {
      v3 = a1 + 2;
      v4 = a1 + 42;
      v5 = 4;
    }

    else
    {
      v3 = *(a1 + 1);
      v5 = a1[4];
      v4 = &v3[10 * v5];
    }

    v7 = &v3[10 * v5];
    if (!v2)
    {
      goto LABEL_16;
    }

LABEL_12:
    v8 = (a1 + 42);
    if (v4 == a1 + 42)
    {
      return;
    }

    goto LABEL_17;
  }

  if (v2)
  {
    v4 = a1 + 2;
    v7 = a1 + 42;
LABEL_8:
    while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v4 += 10;
      if (v4 == v7)
      {
        v4 = v7;
        break;
      }
    }

    if (*a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v6 = a1[4];
    v7 = &v4[10 * v6];
    if (v6)
    {
      goto LABEL_8;
    }
  }

LABEL_16:
  v8 = *(a1 + 1) + 40 * a1[4];
  if (v4 == v8)
  {
    return;
  }

LABEL_17:
  v9 = v4 + 10;
  if (v4 + 10 != v7)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v11 = atomic_load((*(v4 + 1) + 8));
    if ((v11 & 1) == 0)
    {
      v12 = *(v4 + 4);
      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      v13 = *(v4 + 2);
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      *v4 = -8192;
      v10 = a1[1] + 1;
      *a1 -= 2;
      a1[1] = v10;
    }

    v4 = v9;
    if (v9 == v8)
    {
      break;
    }

    v9 += 10;
    if (v4 + 10 != v7)
    {
      do
      {
LABEL_22:
        if ((*v9 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          break;
        }

        v9 += 10;
      }

      while (v9 != v7);
    }
  }
}

int *sub_100141240(uint64_t a1)
{
  v2 = *a1;
  if (*a1 <= 1u)
  {
    if (v2)
    {
      v3 = a1 + 8;
      v4 = a1 + 168;
      v5 = 4;
    }

    else
    {
      v3 = *(a1 + 8);
      v5 = *(a1 + 16);
      v4 = v3 + 40 * v5;
    }

    v7 = v3 + 40 * v5;
    if (!v2)
    {
      goto LABEL_16;
    }

LABEL_12:
    v8 = a1 + 168;
    if (v4 == a1 + 168)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  if (v2)
  {
    v4 = a1 + 8;
    v7 = a1 + 168;
LABEL_8:
    while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v4 += 40;
      if (v4 == v7)
      {
        v4 = v7;
        break;
      }
    }

    if (*a1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = v4 + 40 * v6;
    if (v6)
    {
      goto LABEL_8;
    }
  }

LABEL_16:
  v8 = *(a1 + 8) + 40 * *(a1 + 16);
  if (v4 == v8)
  {
    goto LABEL_28;
  }

  do
  {
LABEL_19:
    v9 = *(v4 + 32);
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = *(v4 + 24);
        if (v12)
        {
          sub_1001413C8(v12, **(v4 + 8));
        }

        if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }
      }
    }

    do
    {
      v4 += 40;
    }

    while (v4 != v7 && (*v4 | 0x1000) == 0xFFFFFFFFFFFFF000);
  }

  while (v4 != v8);
LABEL_28:

  return sub_1001414DC(a1);
}

void sub_1001413C8(uint64_t a1, uint64_t a2)
{
  std::recursive_mutex::lock((a1 + 40));
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a1 + 24 * v5;
  v7 = *a1;
  if (v5)
  {
    v8 = 24 * v5;
    v7 = *a1;
    while (*v7 != a2)
    {
      v7 += 3;
      v8 -= 24;
      if (!v8)
      {
        v7 = (*a1 + 24 * v5);
        break;
      }
    }
  }

  if (v7 + 3 != v6)
  {
    v9 = v7 + 4;
    do
    {
      v11 = *(v9 - 1);
      *(v9 - 1) = 0;
      v12 = *(v9 - 4);
      *(v9 - 4) = v11;
      if (v12)
      {
        sub_100046ACC(v12);
        operator delete();
      }

      v13 = *v9;
      *v9 = 0;
      v9[1] = 0;
      v14 = *(v9 - 2);
      *(v9 - 3) = v13;
      if (v14)
      {
        std::__shared_weak_count::__release_weak(v14);
      }

      v10 = v9 + 2;
      v9 += 3;
    }

    while (v10 != v6);
    LODWORD(v5) = *(a1 + 8);
    v4 = *a1;
  }

  v15 = v5 - 1;
  *(a1 + 8) = v15;
  sub_100140B84(&v4[3 * v15]);

  std::recursive_mutex::unlock((a1 + 40));
}

int *sub_1001414DC(int *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = a1 + 2;
    v3 = 4;
  }

  else
  {
    v3 = a1[4];
    if (!v3)
    {
      goto LABEL_14;
    }

    v4 = *(a1 + 1);
  }

  v5 = (v4 + 4);
  v6 = 40 * v3;
  do
  {
    if ((*(v5 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v7 = v5[2];
      if (v7)
      {
        std::__shared_weak_count::__release_weak(v7);
      }

      v8 = *v5;
      if (*v5 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    v5 += 5;
    v6 -= 40;
  }

  while (v6);
  v2 = *a1;
LABEL_14:
  if ((v2 & 1) == 0)
  {
    llvm::deallocate_buffer(*(a1 + 1), (40 * a1[4]), 8uLL);
  }

  return a1;
}

uint64_t sub_1001415D4(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
    v7 = (v3 + 40 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v3 + 40 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = 0;
  result = 0;
LABEL_8:
  *a3 = v7;
  return result;
}

void sub_100141690(_DWORD *a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v9 = a2;
  v4 = *a1;
  v5 = *a1 >> 1;
  if (*a1)
  {
    v6 = 4;
  }

  else
  {
    v6 = a1[4];
  }

  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - a1[1] > v6 >> 3)
  {
    goto LABEL_6;
  }

  v7 = a1;
  v8 = a3;
  sub_1001417C4(a1, v6);
  sub_1001415D4(v7, v8, &v9);
  a1 = v7;
  a3 = v8;
  v4 = *v7;
  v3 = v9;
LABEL_6:
  *a1 = v4 + 2;
  if (*v3 != -4096)
  {
    --a1[1];
  }

  *v3 = *a3;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  operator new();
}

void sub_1001417C4(uint64_t a1, unsigned int a2)
{
  v2 = (a2 - 1) | ((a2 - 1) >> 1);
  v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
  v4 = ((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8);
  if ((v4 + 1) > 0x40)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 64;
  }

  if (a2 >= 5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a2;
  }

  if (*a1)
  {
    v9 = &v18;
    if ((*(a1 + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v10 = *(a1 + 48);
      if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v18 = *(a1 + 8);
      v17 = *(a1 + 32);
      v19 = *(a1 + 16);
      v20 = v17;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      v9 = &v21;
      v10 = *(a1 + 48);
      if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
LABEL_12:
        v11 = *(a1 + 88);
        if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_13;
        }

        goto LABEL_23;
      }
    }

    *v9 = v10;
    *(v9 + 1) = *(a1 + 56);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(v9 + 3) = *(a1 + 72);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    v9 += 5;
    v11 = *(a1 + 88);
    if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_13:
      v12 = *(a1 + 128);
      if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_14;
      }

      goto LABEL_24;
    }

LABEL_23:
    *v9 = v11;
    *(v9 + 1) = *(a1 + 96);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(v9 + 3) = *(a1 + 112);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    v9 += 5;
    v12 = *(a1 + 128);
    if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_14:
      if (v6 < 5)
      {
LABEL_16:
        sub_100141A30(a1, &v18, v9);
        return;
      }

LABEL_15:
      *a1 &= ~1u;
      v13 = a1;
      buffer = llvm::allocate_buffer((8 * (v6 + 4 * v6)), 8uLL);
      a1 = v13;
      *(v13 + 8) = buffer;
      *(v13 + 16) = v6;
      goto LABEL_16;
    }

LABEL_24:
    *v9 = v12;
    *(v9 + 1) = *(a1 + 136);
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(v9 + 3) = *(a1 + 152);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    v9 += 5;
    if (v6 < 5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v6 > 4)
  {
    v15 = a1;
    v16 = llvm::allocate_buffer((8 * (v6 + 4 * v6)), 8uLL);
    a1 = v15;
    *(v15 + 8) = v16;
    *(v15 + 16) = v6;
  }

  else
  {
    *a1 |= 1u;
  }

  sub_100141A30(a1, v7, &v7[5 * v8]);

  llvm::deallocate_buffer(v7, (40 * v8), 8uLL);
}

void sub_100141A30(int *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *a1;
  *a1 = *a1 & 1;
  v7 = a1 + 2;
  if (v6)
  {
    v10 = (a1 + 42);
    v9 = (a1 + 2);
    v11 = 120;
  }

  else
  {
    v8 = a1[4];
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 1);
    v10 = &v9[40 * v8];
    v11 = v10 - v9 - 40;
    if (v11 < 0x28)
    {
      v13 = *(a1 + 1);
      do
      {
LABEL_10:
        *v13 = -4096;
        v13 += 40;
      }

      while (v13 != v10);
      goto LABEL_11;
    }
  }

  v12 = v11 / 0x28 + 1;
  v13 = &v9[40 * (v12 & 0xFFFFFFFFFFFFFFELL)];
  v14 = v12 & 0xFFFFFFFFFFFFFFELL;
  do
  {
    *v9 = -4096;
    *(v9 + 5) = -4096;
    v9 += 80;
    v14 -= 2;
  }

  while (v14);
  if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
  {
    goto LABEL_10;
  }

LABEL_11:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*a1)
        {
          v17 = 3;
          v16 = v7;
        }

        else
        {
          v16 = *(a1 + 1);
          v17 = a1[4] - 1;
        }

        v18 = v17 & ((v15 >> 4) ^ (v15 >> 9));
        v19 = &v16[10 * v18];
        v20 = *v19;
        if (v15 != *v19)
        {
          v23 = 0;
          v24 = 1;
          while (v20 != -4096)
          {
            if (v23)
            {
              v25 = 0;
            }

            else
            {
              v25 = v20 == -8192;
            }

            if (v25)
            {
              v23 = v19;
            }

            v26 = v18 + v24++;
            v18 = v26 & v17;
            v19 = &v16[10 * (v26 & v17)];
            v20 = *v19;
            if (v15 == *v19)
            {
              goto LABEL_19;
            }
          }

          if (v23)
          {
            v19 = v23;
          }
        }

LABEL_19:
        *v19 = v15;
        *(v19 + 1) = *(v4 + 1);
        v4[1] = 0;
        v4[2] = 0;
        *(v19 + 3) = *(v4 + 3);
        v4[3] = 0;
        v4[4] = 0;
        *a1 += 2;
        v21 = v4[4];
        if (v21)
        {
          std::__shared_weak_count::__release_weak(v21);
        }

        v22 = v4[2];
        if (v22)
        {
          if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v22->__on_zero_shared)(v22);
            std::__shared_weak_count::__release_weak(v22);
          }
        }
      }

      v4 += 5;
    }

    while (v4 != a3);
  }
}

void sub_100141C70(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002D7C50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100141CCC(uint64_t a1)
{
  v2 = 0;
  v1 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 24, &v2) + 24 * *(a1 + 8);
  operator new();
}

uint64_t sub_100141F20(uint64_t result)
{
  if (result)
  {
    v1 = result;
    *(result + 368) = off_1002D4438;
    v2 = result + 520;
    v3 = *(result + 544);
    if (v3 == v2)
    {
      (*(*v3 + 32))(v3);
      *(v1 + 368) = &off_1002D4220;
      if ((*(v1 + 476) & 1) == 0)
      {
LABEL_6:
        free(*(v1 + 456));
      }
    }

    else
    {
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      *(v1 + 368) = &off_1002D4220;
      if ((*(v1 + 476) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v4 = *(v1 + 432);
    if (v4 != (v1 + 448))
    {
      free(v4);
    }

    *(v1 + 184) = off_1002D4438;
    v5 = *(v1 + 360);
    if (v5 == v1 + 336)
    {
      (*(*v5 + 32))(v5);
      *(v1 + 184) = &off_1002D4220;
      if ((*(v1 + 292) & 1) == 0)
      {
LABEL_13:
        free(*(v1 + 272));
      }
    }

    else
    {
      if (v5)
      {
        (*(*v5 + 40))(v5);
      }

      *(v1 + 184) = &off_1002D4220;
      if ((*(v1 + 292) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v6 = *(v1 + 248);
    if (v6 != (v1 + 264))
    {
      free(v6);
    }

    *v1 = off_1002D4438;
    v7 = *(v1 + 176);
    if (v7 == v1 + 152)
    {
      (*(*v7 + 32))(v7);
      *v1 = &off_1002D4220;
      if ((*(v1 + 108) & 1) == 0)
      {
LABEL_20:
        free(*(v1 + 88));
      }
    }

    else
    {
      if (v7)
      {
        (*(*v7 + 40))(v7);
      }

      *v1 = &off_1002D4220;
      if ((*(v1 + 108) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v8 = *(v1 + 64);
    if (v8 != (v1 + 80))
    {
      free(v8);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_100142214(uint64_t a1, const char *a2, _OWORD *a3)
{
  *a1 = &off_1002D4220;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v6 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v7 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = &_mh_execute_header;
  *(a1 + 88) = a1 + 112;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v9 = *(a1 + 72);
  if (v9 >= *(a1 + 76))
  {
    v12 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v7, v6, v9 + 1, 8);
    GeneralCategory = v12;
    LODWORD(v9) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v9) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 120) = 0;
  *(a1 + 128) = &off_1002D44A0;
  *(a1 + 136) = 0;
  *a1 = off_1002D4438;
  *(a1 + 144) = off_1002D42A8;
  *(a1 + 152) = off_1002D44C0;
  *(a1 + 176) = a1 + 152;
  v10 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v10);
  *(a1 + 32) = *a3;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t sub_1001423BC(uint64_t a1, const char *a2, _OWORD *a3, _BYTE **a4)
{
  *a1 = &off_1002D4220;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v8 = (a1 + 80);
  *(a1 + 64) = a1 + 80;
  v9 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = &_mh_execute_header;
  *(a1 + 88) = a1 + 112;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v11 = *(a1 + 72);
  if (v11 >= *(a1 + 76))
  {
    v15 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v9, v8, v11 + 1, 8);
    GeneralCategory = v15;
    LODWORD(v11) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v11) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 120) = 0;
  *(a1 + 128) = &off_1002D44A0;
  *(a1 + 136) = 0;
  *a1 = off_1002D4438;
  *(a1 + 144) = off_1002D42A8;
  *(a1 + 152) = off_1002D44C0;
  *(a1 + 176) = a1 + 152;
  v12 = strlen(a2);
  llvm::cl::Option::setArgStr(a1, a2, v12);
  *(a1 + 32) = *a3;
  v13 = *a4;
  *(a1 + 120) = **a4;
  *(a1 + 137) = 1;
  *(a1 + 136) = *v13;
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t sub_100142588(uint64_t a1)
{
  if (*(a1 + 368))
  {
    v2 = *(a1 + 376);
    if (v2)
    {
      v3 = 16 * v2;
      v4 = *(a1 + 360);
      while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v4 += 2;
        v3 -= 16;
        if (!v3)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v4 = *(a1 + 360);
    }

    v15 = *(a1 + 360) + 16 * v2;
    while (v4 != v15)
    {
      v16 = v4[1];
      v17 = *(v16 + 96);
      if (v17 >= 8)
      {
        if ((v17 & 4) != 0)
        {
          v18 = (v16 + 72);
          if ((v17 & 2) == 0)
          {
            v18 = *v18;
          }

          (*((v17 & 0xFFFFFFFFFFFFFFF8) + 16))(v18);
        }

        if ((v17 & 2) == 0)
        {
          llvm::deallocate_buffer(*(v16 + 72), *(v16 + 80), *(v16 + 88));
        }
      }

      v19 = *(v16 + 8);
      v20 = *(v16 + 16);
      if (v20)
      {
        v21 = 16 * v20;
        v22 = v19 + 1;
        do
        {
          v23 = *v22;
          v22 += 2;
          free(v23);
          v21 -= 16;
        }

        while (v21);
        v19 = *(v16 + 8);
      }

      if (v19 != (v16 + 24))
      {
        free(v19);
      }

      do
      {
        v4 += 2;
      }

      while (v4 != v15 && (*v4 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }

LABEL_6:
  if (*(a1 + 544))
  {
    v5 = *(a1 + 552);
    if (v5)
    {
      v6 = 16 * v5;
      v7 = *(a1 + 536);
      while ((*v7 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v7 += 2;
        v6 -= 16;
        if (!v6)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v7 = *(a1 + 536);
    }

    v24 = *(a1 + 536) + 16 * v5;
    while (v7 != v24)
    {
      v25 = v7[1];
      v26 = *(v25 + 96);
      if (v26 >= 8)
      {
        if ((v26 & 4) != 0)
        {
          v27 = (v25 + 72);
          if ((v26 & 2) == 0)
          {
            v27 = *v27;
          }

          (*((v26 & 0xFFFFFFFFFFFFFFF8) + 16))(v27);
        }

        if ((v26 & 2) == 0)
        {
          llvm::deallocate_buffer(*(v25 + 72), *(v25 + 80), *(v25 + 88));
        }
      }

      v28 = *(v25 + 8);
      v29 = *(v25 + 16);
      if (v29)
      {
        v30 = 16 * v29;
        v31 = v28 + 1;
        do
        {
          v32 = *v31;
          v31 += 2;
          free(v32);
          v30 -= 16;
        }

        while (v30);
        v28 = *(v25 + 8);
      }

      if (v28 != (v25 + 24))
      {
        free(v28);
      }

      do
      {
        v7 += 2;
      }

      while (v7 != v24 && (*v7 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }
  }

LABEL_11:
  v8 = *(a1 + 744);
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v9 = *(a1 + 728);
    v10 = *(a1 + 712);
    if (v9)
    {
      goto LABEL_14;
    }

LABEL_59:
    v14 = 0;
    goto LABEL_60;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  v9 = *(a1 + 728);
  v10 = *(a1 + 712);
  if (!v9)
  {
    goto LABEL_59;
  }

LABEL_14:
  v11 = 80 * v9;
  v12 = v10 + 32;
  do
  {
    if (*(v12 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v13 = *(v12 - 2);
      if (v12 != v13)
      {
        free(v13);
      }
    }

    v12 += 80;
    v11 -= 80;
  }

  while (v11);
  v10 = *(a1 + 712);
  v14 = 80 * *(a1 + 728);
LABEL_60:
  llvm::deallocate_buffer(v10, v14, 8uLL);
  std::recursive_mutex::~recursive_mutex((a1 + 640));
  llvm::deallocate_buffer(*(a1 + 568), (24 * *(a1 + 584)), 8uLL);
  mlir::StorageUniquer::~StorageUniquer((a1 + 560));
  llvm::deallocate_buffer(*(a1 + 536), (16 * *(a1 + 552)), 8uLL);
  llvm::deallocate_buffer(*(a1 + 392), (24 * *(a1 + 408)), 8uLL);
  mlir::StorageUniquer::~StorageUniquer((a1 + 384));
  llvm::deallocate_buffer(*(a1 + 360), (16 * *(a1 + 376)), 8uLL);
  mlir::StorageUniquer::~StorageUniquer((a1 + 352));
  llvm::sys::RWMutexImpl::~RWMutexImpl((a1 + 336));
  v33 = *(a1 + 320);
  v34 = *(a1 + 328);
  if (v34)
  {
    v35 = v33 - 8;
    v36 = 16 * v34;
    do
    {
      v37 = *&v35[v36];
      *&v35[v36] = 0;
      if (v37)
      {
        (*(*v37 + 8))(v37);
      }

      v36 -= 16;
    }

    while (v36);
    v33 = *(a1 + 320);
  }

  if (v33 != (a1 + 336))
  {
    free(v33);
  }

  llvm::deallocate_buffer(*(a1 + 296), (16 * *(a1 + 312)), 8uLL);
  sub_1000B0B68(a1 + 272, *(a1 + 280));
  v39 = (a1 + 248);
  v38 = *(a1 + 248);
  v40 = *(a1 + 264);
  if (!v40)
  {
    llvm::deallocate_buffer(v38, 0, 8uLL);
    v44 = *(a1 + 232);
    if (v44 == v39)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  v41 = 24 * v40;
  v42 = (v38 + 16);
  do
  {
    if (*(v42 - 2) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v43 = *v42;
      *v42 = 0;
      if (v43)
      {
        (*(*v43 + 8))(v43);
      }
    }

    v42 += 3;
    v41 -= 24;
  }

  while (v41);
  llvm::deallocate_buffer(*(a1 + 248), (24 * *(a1 + 264)), 8uLL);
  v44 = *(a1 + 232);
  if (v44 != v39)
  {
LABEL_75:
    free(v44);
  }

LABEL_76:
  if (*(a1 + 220))
  {
    v45 = *(a1 + 216);
    if (v45)
    {
      v46 = 0;
      v47 = 8 * v45;
      do
      {
        v48 = *(*(a1 + 208) + v46);
        if (v48 != -8 && v48 != 0)
        {
          llvm::deallocate_buffer(v48, (*v48 + 17), 8uLL);
        }

        v46 += 8;
      }

      while (v47 != v46);
    }
  }

  free(*(a1 + 208));
  llvm::deallocate_buffer(*(a1 + 184), (16 * *(a1 + 200)), 8uLL);
  if (*(a1 + 172))
  {
    v50 = *(a1 + 168);
    if (v50)
    {
      v51 = 0;
      v52 = 8 * v50;
      do
      {
        v53 = *(*(a1 + 160) + v51);
        if (v53 != -8 && v53 != 0)
        {
          v56 = *v53;
          v55 = *(v53 + 1);
          *(v53 + 1) = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }

          llvm::deallocate_buffer(v53, (v56 + 17), 8uLL);
        }

        v51 += 8;
      }

      while (v52 != v51);
    }
  }

  free(*(a1 + 160));
  sub_100046ACC(a1 + 64);
  v57 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v57)
  {
    (*(*v57 + 16))(v57);
  }

  mlir::DiagnosticEngine::~DiagnosticEngine((a1 + 32));
  v58 = *(a1 + 24);
  if (v58 == a1)
  {
    (*(*v58 + 32))(v58);
    return a1;
  }

  else
  {
    if (v58)
    {
      (*(*v58 + 40))(v58);
    }

    return a1;
  }
}

BOOL sub_100142B8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2 & 0x3FFFFFFF;
  v4 = v2 >> 30;
  return v3 == **a1 && v4 == *(*a1 + 4);
}

unint64_t sub_100142BB0(unint64_t **a1, unint64_t *a2)
{
  v2 = **a1;
  a2[10] += 16;
  v3 = (*a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 16;
  if (*a2)
  {
    v5 = v4 > a2[1];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v8 = a1;
    v3 = sub_10003E4AC(a2, 16, 16, 3);
    a1 = v8;
  }

  else
  {
    *a2 = v4;
  }

  *v3 = 0;
  *(v3 + 8) = (v2 >> 2) & 0xC0000000 | v2 & 0x3FFFFFFF;
  v6 = a1[1];
  if (*v6)
  {
    (*v6)(v6[1], v3);
  }

  return v3;
}

uint64_t sub_100142C58(uint64_t result, void *a2)
{
  v2 = ***(result + 8);
  v3 = *(v2 + 376);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(v2 + 360);
  v5 = v3 - 1;
  v6 = (v3 - 1) & ((*result >> 4) ^ (*result >> 9));
  v7 = *(v4 + 16 * (v5 & ((*result >> 4) ^ (*result >> 9))));
  if (v7 != *result)
  {
    v9 = 1;
    while (v7 != -4096)
    {
      v10 = v6 + v9++;
      v6 = v10 & v5;
      v7 = *(v4 + 16 * v6);
      if (v7 == *result)
      {
        goto LABEL_3;
      }
    }

LABEL_9:
    llvm::report_fatal_error("Trying to create a Type that was not registered in this MLIRContext.", 1);
  }

LABEL_3:
  v8 = *(v4 + 16 * v6 + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  *a2 = v8;
  return result;
}

uint64_t sub_100142CF4()
{
  if ((atomic_load_explicit(&qword_1002E0DA8, memory_order_acquire) & 1) == 0)
  {
    sub_10029FCEC();
  }

  return qword_1002E0D98;
}

const char *sub_100142D3C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::AffineMapStorage]";
  v6 = 92;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t sub_100142DBC()
{
  if ((atomic_load_explicit(&qword_1002E0DD0, memory_order_acquire) & 1) == 0)
  {
    sub_10029FD40();
  }

  return qword_1002E0DC0;
}

const char *sub_100142E04()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::IntegerSetStorage]";
  v6 = 93;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void sub_100142E84(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  buffer = llvm::allocate_buffer((24 * v8), 8uLL);
  *a1 = buffer;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v13 = *(a1 + 16);
    if (!v13)
    {
      return;
    }

    v14 = 24 * v13 - 24;
    if (v14 >= 0x18)
    {
      v26 = v14 / 0x18 + 1;
      v15 = (buffer + 24 * (v26 & 0x1FFFFFFFFFFFFFFELL));
      v27 = buffer;
      v28 = v26 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v27 = xmmword_1002B02F0;
        *(v27 + 24) = xmmword_1002B02F0;
        v27 += 3;
        v28 -= 2;
      }

      while (v28);
      if (v26 == (v26 & 0x1FFFFFFFFFFFFFFELL))
      {
        return;
      }
    }

    else
    {
      v15 = buffer;
    }

    v29 = (buffer + 24 * v13);
    do
    {
      *v15 = xmmword_1002B02F0;
      v15 = (v15 + 24);
    }

    while (v15 != v29);
    return;
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = (buffer + 24 * (v16 & 0x1FFFFFFFFFFFFFFELL));
      v17 = buffer;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = xmmword_1002B02F0;
        *(v17 + 24) = xmmword_1002B02F0;
        v17 += 3;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = buffer;
    }

    v19 = (buffer + 24 * v10);
    do
    {
      *v12 = xmmword_1002B02F0;
      v12 = (v12 + 24);
    }

    while (v12 != v19);
  }

LABEL_16:
  v20 = 3 * v3;
  if (v3)
  {
    v21 = 24 * v3;
    v22 = v4;
    do
    {
      if (*v22 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v30 = 0;
        sub_10009E84C(a1, v22, &v30);
        v23 = v30;
        *v30 = *v22;
        v24 = *(v22 + 16);
        *(v22 + 16) = 0;
        v23[2] = v24;
        ++*(a1 + 8);
        v25 = *(v22 + 16);
        *(v22 + 16) = 0;
        if (v25)
        {
          (*(*v25 + 8))(v25);
        }
      }

      v22 += 24;
      v21 -= 24;
    }

    while (v21);
  }

  llvm::deallocate_buffer(v4, (8 * v20), 8uLL);
}

uint64_t sub_1001430E8(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a2, *(a2 + 8));
  v6 = v2 - 1;
  v7 = *a2;
  v8 = *(a2 + 8);
  if (v8)
  {
    if (v7 == -2)
    {
      v9 = 1;
      v10 = HashValue & v6;
      result = v3 + 80 * (HashValue & v6);
      v12 = *result;
      if (*result == -2)
      {
        return result;
      }

      while (v12 != -1)
      {
        if (v8 != *(result + 8) || (v13 = result, v14 = memcmp(0xFFFFFFFFFFFFFFFELL, v12, v8), result = v13, v14))
        {
          v15 = v9 + v10;
          ++v9;
          v10 = v15 & v6;
          result = v3 + 80 * (v15 & v6);
          v12 = *result;
          if (*result != -2)
          {
            continue;
          }
        }

        return result;
      }
    }

    else
    {
      v20 = 1;
      v21 = HashValue & v6;
      result = v3 + 80 * (HashValue & v6);
      v22 = *result;
      if (*result == -2)
      {
        goto LABEL_22;
      }

      while (v22 != -1)
      {
        if (v8 == *(result + 8))
        {
          v23 = result;
          v24 = v20;
          v25 = memcmp(v7, v22, v8);
          v20 = v24;
          v26 = v25;
          result = v23;
          if (!v26)
          {
            return result;
          }
        }

        do
        {
LABEL_22:
          v27 = v20 + v21;
          ++v20;
          v21 = v27 & v6;
          result = v3 + 80 * (v27 & v6);
          v22 = *result;
        }

        while (*result == -2);
      }
    }
  }

  else if (v7 == -2)
  {
    v16 = 1;
    v17 = HashValue & v6;
    result = v3 + 80 * (HashValue & v6);
    v18 = *result;
    if (*result == -2)
    {
      return result;
    }

    while (v18 != -1)
    {
      if (*(result + 8))
      {
        v19 = v16 + v17;
        ++v16;
        v17 = v19 & v6;
        result = v3 + 80 * (v19 & v6);
        v18 = *result;
        if (*result != -2)
        {
          continue;
        }
      }

      return result;
    }
  }

  else
  {
    v28 = 1;
    v29 = HashValue & v6;
    result = v3 + 80 * (HashValue & v6);
    v30 = *result;
    if (*result == -2)
    {
      goto LABEL_27;
    }

    while (v30 != -1)
    {
      if (!*(result + 8))
      {
        return result;
      }

      do
      {
LABEL_27:
        v31 = v28 + v29;
        ++v28;
        v29 = v31 & v6;
        result = v3 + 80 * (v31 & v6);
        v30 = *result;
      }

      while (*result == -2);
    }
  }

  if (v7 != -1)
  {
    return 0;
  }

  return result;
}