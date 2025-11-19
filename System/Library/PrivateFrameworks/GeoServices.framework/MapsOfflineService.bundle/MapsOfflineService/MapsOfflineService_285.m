__n128 sub_1194768(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = a2->n128_u64[1] - a2->n128_u64[0];
  v6 = a1->n128_u64[1] - a1->n128_u64[0];
  v7 = a2[1].n128_u64[0];
  v8 = v5 == v6;
  v9 = v5 < v6;
  if (v8)
  {
    v9 = v7 < a1[1].n128_u64[0];
  }

  v10 = a3->n128_u64[1] - a3->n128_u64[0];
  v11 = a3[1].n128_u64[0] < v7;
  v8 = v10 == v5;
  v12 = v10 < v5;
  if (v8)
  {
    v12 = v11;
  }

  if (v9)
  {
    if (v12)
    {
      v13 = *a1;
      result = a1[1];
      v14 = a3[1];
      *a1 = *a3;
      a1[1] = v14;
LABEL_17:
      *a3 = v13;
      a3[1] = result;
      goto LABEL_18;
    }

    v22 = *a1;
    result = a1[1];
    v23 = a2[1];
    *a1 = *a2;
    a1[1] = v23;
    *a2 = v22;
    a2[1] = result;
    v24 = a3->n128_u64[1] - a3->n128_u64[0];
    v25 = a2->n128_u64[1] - a2->n128_u64[0];
    v8 = v24 == v25;
    v26 = v24 < v25;
    if (v8)
    {
      v26 = a3[1].n128_u64[0] < a2[1].n128_u64[0];
    }

    if (v26)
    {
      v13 = *a2;
      result = a2[1];
      v27 = a3[1];
      *a2 = *a3;
      a2[1] = v27;
      goto LABEL_17;
    }
  }

  else if (v12)
  {
    v15 = *a2;
    result = a2[1];
    v16 = a3[1];
    *a2 = *a3;
    a2[1] = v16;
    *a3 = v15;
    a3[1] = result;
    v17 = a2->n128_u64[1] - a2->n128_u64[0];
    v18 = a1->n128_u64[1] - a1->n128_u64[0];
    v8 = v17 == v18;
    v19 = v17 < v18;
    if (v8)
    {
      v19 = a2[1].n128_u64[0] < a1[1].n128_u64[0];
    }

    if (v19)
    {
      v20 = *a1;
      result = a1[1];
      v21 = a2[1];
      *a1 = *a2;
      a1[1] = v21;
      *a2 = v20;
      a2[1] = result;
    }
  }

LABEL_18:
  v28 = a4->n128_u64[1] - a4->n128_u64[0];
  v29 = a3->n128_u64[1] - a3->n128_u64[0];
  v8 = v28 == v29;
  v30 = v28 < v29;
  if (v8)
  {
    v30 = a4[1].n128_u64[0] < a3[1].n128_u64[0];
  }

  if (v30)
  {
    v31 = *a3;
    result = a3[1];
    v32 = a4[1];
    *a3 = *a4;
    a3[1] = v32;
    *a4 = v31;
    a4[1] = result;
    v33 = a3->n128_u64[1] - a3->n128_u64[0];
    v34 = a2->n128_u64[1] - a2->n128_u64[0];
    v8 = v33 == v34;
    v35 = v33 < v34;
    if (v8)
    {
      v35 = a3[1].n128_u64[0] < a2[1].n128_u64[0];
    }

    if (v35)
    {
      v36 = *a2;
      result = a2[1];
      v37 = a3[1];
      *a2 = *a3;
      a2[1] = v37;
      *a3 = v36;
      a3[1] = result;
      v38 = a2->n128_u64[1] - a2->n128_u64[0];
      v39 = a1->n128_u64[1] - a1->n128_u64[0];
      v8 = v38 == v39;
      v40 = v38 < v39;
      if (v8)
      {
        v40 = a2[1].n128_u64[0] < a1[1].n128_u64[0];
      }

      if (v40)
      {
        v41 = *a1;
        result = a1[1];
        v42 = a2[1];
        *a1 = *a2;
        a1[1] = v42;
        *a2 = v41;
        a2[1] = result;
      }
    }
  }

  return result;
}

__n128 sub_119495C(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 a6)
{
  result.n128_u64[0] = sub_1194768(a1, a2, a3, a4, a6).n128_u64[0];
  v12 = a5->n128_u64[1] - a5->n128_u64[0];
  v13 = a4->n128_u64[1] - a4->n128_u64[0];
  v14 = v12 == v13;
  v15 = v12 < v13;
  if (v14)
  {
    v15 = a5[1].n128_u64[0] < a4[1].n128_u64[0];
  }

  if (v15)
  {
    v16 = *a4;
    result = a4[1];
    v17 = a5[1];
    *a4 = *a5;
    a4[1] = v17;
    *a5 = v16;
    a5[1] = result;
    v18 = a4->n128_u64[1] - a4->n128_u64[0];
    v19 = a3->n128_u64[1] - a3->n128_u64[0];
    v14 = v18 == v19;
    v20 = v18 < v19;
    if (v14)
    {
      v20 = a4[1].n128_u64[0] < a3[1].n128_u64[0];
    }

    if (v20)
    {
      v21 = *a3;
      result = a3[1];
      v22 = a4[1];
      *a3 = *a4;
      a3[1] = v22;
      *a4 = v21;
      a4[1] = result;
      v23 = a3->n128_u64[1] - a3->n128_u64[0];
      v24 = a2->n128_u64[1] - a2->n128_u64[0];
      v14 = v23 == v24;
      v25 = v23 < v24;
      if (v14)
      {
        v25 = a3[1].n128_u64[0] < a2[1].n128_u64[0];
      }

      if (v25)
      {
        v26 = *a2;
        result = a2[1];
        v27 = a3[1];
        *a2 = *a3;
        a2[1] = v27;
        *a3 = v26;
        a3[1] = result;
        v28 = a2->n128_u64[1] - a2->n128_u64[0];
        v29 = a1->n128_u64[1] - a1->n128_u64[0];
        v14 = v28 == v29;
        v30 = v28 < v29;
        if (v14)
        {
          v30 = a2[1].n128_u64[0] < a1[1].n128_u64[0];
        }

        if (v30)
        {
          v31 = *a1;
          result = a1[1];
          v32 = a2[1];
          *a1 = *a2;
          a1[1] = v32;
          *a2 = v31;
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

void *sub_1194ABC(void *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v3 - *a1;
  v6 = *(a2 - 24) - *(a2 - 32);
  v7 = v5 == v6;
  v8 = v5 < v6;
  if (v7)
  {
    v8 = v4 < *(a2 - 16);
  }

  if (v8)
  {
    v9 = a1;
    do
    {
      v10 = v9[4];
      v11 = v9[5];
      v9 += 4;
      v12 = v11 - v10;
      v7 = v5 == v12;
      v13 = v5 < v12;
      if (v7)
      {
        v13 = v4 < v9[2];
      }
    }

    while (!v13);
  }

  else
  {
    v14 = a1 + 4;
    do
    {
      v9 = v14;
      if (v14 >= a2)
      {
        break;
      }

      v15 = v14[1] - *v14;
      v16 = v4 < v9[2];
      v7 = v5 == v15;
      v17 = v5 < v15;
      if (!v7)
      {
        v16 = v17;
      }

      v14 = v9 + 4;
    }

    while (!v16);
  }

  if (v9 < a2)
  {
    do
    {
      v18 = *(a2 - 32);
      v19 = *(a2 - 24);
      a2 -= 32;
      v20 = v19 - v18;
      v7 = v5 == v20;
      v21 = v5 < v20;
      if (v7)
      {
        v21 = v4 < *(a2 + 16);
      }
    }

    while (v21);
  }

  v22 = a1[3];
  while (v9 < a2)
  {
    v34 = *v9;
    v35 = *(v9 + 1);
    v23 = *(a2 + 16);
    *v9 = *a2;
    *(v9 + 1) = v23;
    *a2 = v34;
    *(a2 + 16) = v35;
    do
    {
      v24 = v9[4];
      v25 = v9[5];
      v9 += 4;
      v26 = v25 - v24;
      v7 = v5 == v26;
      v27 = v5 < v26;
      if (v7)
      {
        v27 = v4 < v9[2];
      }
    }

    while (!v27);
    do
    {
      v28 = *(a2 - 32);
      v29 = *(a2 - 24);
      a2 -= 32;
      v30 = v29 - v28;
      v7 = v5 == v30;
      v31 = v5 < v30;
      if (v7)
      {
        v31 = v4 < *(a2 + 16);
      }
    }

    while (v31);
  }

  if (v9 - 4 != a1)
  {
    v32 = *(v9 - 1);
    *a1 = *(v9 - 2);
    *(a1 + 1) = v32;
  }

  *(v9 - 4) = v2;
  *(v9 - 3) = v3;
  *(v9 - 2) = v4;
  *(v9 - 1) = v22;
  return v9;
}

unint64_t sub_1194C24(void *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = v4 - *a1;
  do
  {
    v8 = a1[v2 + 5] - a1[v2 + 4];
    v9 = a1[v2 + 6] < v5;
    v10 = v8 == v7;
    v11 = v8 < v7;
    if (!v10)
    {
      v9 = v11;
    }

    v2 += 4;
  }

  while (v9);
  v12 = &a1[v2];
  if (v2 == 4)
  {
    do
    {
      if (v12 >= a2)
      {
        break;
      }

      v17 = *(a2 - 32);
      v18 = *(a2 - 24);
      a2 -= 32;
      v19 = v18 - v17;
      v10 = v19 == v7;
      v20 = v19 < v7;
      if (v10)
      {
        v20 = *(a2 + 16) < v5;
      }
    }

    while (!v20);
  }

  else
  {
    do
    {
      v13 = *(a2 - 32);
      v14 = *(a2 - 24);
      a2 -= 32;
      v15 = v14 - v13;
      v10 = v15 == v7;
      v16 = v15 < v7;
      if (v10)
      {
        v16 = *(a2 + 16) < v5;
      }
    }

    while (!v16);
  }

  v21 = v12;
  if (v12 < a2)
  {
    v22 = a2;
    do
    {
      v23 = *v21;
      v35 = *(v21 + 16);
      v24 = v22[1];
      *v21 = *v22;
      *(v21 + 16) = v24;
      *v22 = v23;
      v22[1] = v35;
      do
      {
        v25 = *(v21 + 32);
        v26 = *(v21 + 40);
        v21 += 32;
        v27 = v26 - v25;
        v10 = v27 == v7;
        v28 = v27 < v7;
        if (v10)
        {
          v28 = *(v21 + 16) < v5;
        }
      }

      while (v28);
      do
      {
        v29 = *(v22 - 4);
        v30 = *(v22 - 3);
        v22 -= 2;
        v31 = v30 - v29;
        v10 = v31 == v7;
        v32 = v31 < v7;
        if (v10)
        {
          v32 = *(v22 + 2) < v5;
        }
      }

      while (!v32);
    }

    while (v21 < v22);
  }

  if ((v21 - 32) != a1)
  {
    v33 = *(v21 - 16);
    *a1 = *(v21 - 32);
    *(a1 + 1) = v33;
  }

  *(v21 - 32) = v3;
  *(v21 - 24) = v4;
  *(v21 - 16) = v5;
  *(v21 - 8) = v6;
  return v21 - 32;
}

BOOL sub_1194D78(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v15 = a1 + 2;
        v16 = a1[3].n128_u64[0];
        v17 = a1[2].n128_u64[1] - a1[2].n128_u64[0];
        v18 = a1->n128_u64[1] - a1->n128_u64[0];
        v9 = v17 == v18;
        v19 = v17 < v18;
        if (v9)
        {
          v19 = v16 < a1[1].n128_u64[0];
        }

        v20 = a2 - 2;
        v21 = a2[-2].n128_u64[1] - a2[-2].n128_u64[0];
        v22 = a2[-1].n128_u64[0] < v16;
        v9 = v21 == v17;
        v23 = v21 < v17;
        if (v9)
        {
          v23 = v22;
        }

        if (!v19)
        {
          if (v23)
          {
            v42 = *v15;
            v41 = a1[3];
            v43 = a2[-1];
            *v15 = *v20;
            a1[3] = v43;
            *v20 = v42;
            a2[-1] = v41;
            v44 = a1[2].n128_u64[1] - a1[2].n128_u64[0];
            v45 = a1->n128_u64[1] - a1->n128_u64[0];
            v9 = v44 == v45;
            v46 = v44 < v45;
            if (v9)
            {
              v46 = a1[3].n128_u64[0] < a1[1].n128_u64[0];
            }

            if (v46)
            {
              v48 = *a1;
              v47 = a1[1];
              v49 = a1[3];
              *a1 = *v15;
              a1[1] = v49;
              *v15 = v48;
              a1[3] = v47;
              return 1;
            }
          }

          return 1;
        }

        if (v23)
        {
          v25 = *a1;
          v24 = a1[1];
          v26 = a2[-1];
          *a1 = *v20;
          a1[1] = v26;
        }

        else
        {
          v60 = *a1;
          v59 = a1[1];
          v61 = a1[3];
          *a1 = *v15;
          a1[1] = v61;
          *v15 = v60;
          a1[3] = v59;
          v62 = a2[-2].n128_u64[1] - a2[-2].n128_u64[0];
          v63 = a1[2].n128_u64[1] - a1[2].n128_u64[0];
          v9 = v62 == v63;
          v64 = v62 < v63;
          if (v9)
          {
            v64 = a2[-1].n128_u64[0] < a1[3].n128_u64[0];
          }

          if (!v64)
          {
            return 1;
          }

          v25 = *v15;
          v24 = a1[3];
          v65 = a2[-1];
          *v15 = *v20;
          a1[3] = v65;
        }

        *v20 = v25;
        a2[-1] = v24;
        return 1;
      case 4:
        sub_1194768(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        return 1;
      case 5:
        sub_119495C(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v5 = a2[-2].n128_u64[0];
      v6 = a2[-2].n128_u64[1];
      v4 = a2 - 2;
      v7 = v6 - v5;
      v8 = a1->n128_u64[1] - a1->n128_u64[0];
      v9 = v7 == v8;
      v10 = v7 < v8;
      if (v9)
      {
        v10 = v4[1].n128_u64[0] < a1[1].n128_u64[0];
      }

      if (v10)
      {
        v12 = *a1;
        v11 = a1[1];
        v13 = v4[1];
        *a1 = *v4;
        a1[1] = v13;
        *v4 = v12;
        v4[1] = v11;
        return 1;
      }

      return 1;
    }
  }

  v27 = a1 + 4;
  v28 = a1 + 2;
  v29 = a1[3].n128_u64[0];
  v30 = a1[2].n128_u64[1] - a1[2].n128_u64[0];
  v31 = a1->n128_u64[1] - a1->n128_u64[0];
  v32 = a1[1].n128_u64[0];
  v33 = v30 < v31;
  if (v30 == v31)
  {
    v33 = v29 < v32;
  }

  v34 = a1[5].n128_u64[0];
  v35 = a1[4].n128_u64[1] - a1[4].n128_u64[0];
  v36 = v34 < v29;
  v9 = v35 == v30;
  v37 = v35 < v30;
  if (!v9)
  {
    v36 = v37;
  }

  if (v33)
  {
    if (v36)
    {
      v39 = *a1;
      v38 = a1[1];
      v40 = a1[5];
      *a1 = *v27;
      a1[1] = v40;
LABEL_46:
      *v27 = v39;
      a1[5] = v38;
      goto LABEL_47;
    }

    v67 = *a1;
    v66 = a1[1];
    v68 = a1[3];
    *a1 = *v28;
    a1[1] = v68;
    *v28 = v67;
    a1[3] = v66;
    v69 = a1[2].n128_u64[1] - a1[2].n128_u64[0];
    v9 = v35 == v69;
    v70 = v35 < v69;
    if (v9)
    {
      v70 = v34 < a1[3].n128_u64[0];
    }

    if (v70)
    {
      v39 = *v28;
      v38 = a1[3];
      v71 = a1[5];
      *v28 = *v27;
      a1[3] = v71;
      goto LABEL_46;
    }
  }

  else if (v36)
  {
    v51 = *v28;
    v50 = a1[3];
    v52 = a1[5];
    *v28 = *v27;
    a1[3] = v52;
    *v27 = v51;
    a1[5] = v50;
    v53 = a1[2].n128_u64[1] - a1[2].n128_u64[0];
    v54 = a1[3].n128_u64[0] < v32;
    v9 = v53 == v31;
    v55 = v53 < v31;
    if (v9)
    {
      v55 = v54;
    }

    if (v55)
    {
      v57 = *a1;
      v56 = a1[1];
      v58 = a1[3];
      *a1 = *v28;
      a1[1] = v58;
      *v28 = v57;
      a1[3] = v56;
    }
  }

LABEL_47:
  v72 = a1 + 6;
  if (&a1[6] == a2)
  {
    return 1;
  }

  v73 = 0;
  v74 = 0;
  while (1)
  {
    v76 = v72->n128_u64[0];
    v75 = v72->n128_u64[1];
    v77 = v75 - v72->n128_u64[0];
    v78 = v27->n128_u64[1] - v27->n128_u64[0];
    v79 = v72[1].n128_u64[0];
    v80 = v79 < v27[1].n128_u64[0];
    v9 = v77 == v78;
    v81 = v77 < v78;
    if (!v9)
    {
      v80 = v81;
    }

    if (v80)
    {
      break;
    }

LABEL_60:
    v27 = v72;
    v73 += 32;
    v72 += 2;
    if (v72 == a2)
    {
      return 1;
    }
  }

  v82 = v72[1].n128_u64[1];
  v83 = v73;
  do
  {
    v84 = (a1 + v83);
    v85 = *(a1 + v83 + 80);
    v84[6] = *(a1 + v83 + 64);
    v84[7] = v85;
    if (v83 == -64)
    {
      a1->n128_u64[0] = v76;
      a1->n128_u64[1] = v75;
      a1[1].n128_u64[0] = v79;
      a1[1].n128_u64[1] = v82;
      if (++v74 != 8)
      {
        goto LABEL_60;
      }

      return &v72[2] == a2;
    }

    v86 = v84[2].n128_u64[1] - v84[2].n128_u64[0];
    v87 = v79 < v84[3].n128_u64[0];
    v9 = v77 == v86;
    v88 = v77 < v86;
    if (!v9)
    {
      v87 = v88;
    }

    v83 -= 32;
  }

  while (v87);
  v89 = (a1->n128_u64 + v83);
  v89[12] = v76;
  v89[13] = v75;
  v89 += 12;
  v89[2] = v79;
  v89[3] = v82;
  if (++v74 != 8)
  {
    goto LABEL_60;
  }

  return &v72[2] == a2;
}

char *sub_11951C0(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[32 * v9];
      do
      {
        sub_1195460(a1, a4, v8, v11);
        v11 -= 32;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *(v12 + 1) - *v12;
        v14 = *(a1 + 1) - *a1;
        v15 = v13 == v14;
        v16 = v13 < v14;
        if (v15)
        {
          v16 = *(v12 + 2) < *(a1 + 2);
        }

        if (v16)
        {
          v18 = *v12;
          v17 = *(v12 + 1);
          v19 = *(a1 + 1);
          *v12 = *a1;
          *(v12 + 1) = v19;
          *a1 = v18;
          *(a1 + 1) = v17;
          sub_1195460(a1, a4, v8, a1);
        }

        v12 += 32;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        if (v8 >= 2)
        {
          v22 = 0;
          v52 = *a1;
          v53 = *(a1 + 1);
          v23 = (v8 - 2) >> 1;
          v24 = a1;
          do
          {
            while (1)
            {
              v32 = &v24[32 * v22];
              v30 = v32 + 32;
              v33 = (2 * v22) | 1;
              v22 = 2 * v22 + 2;
              if (v22 < v8)
              {
                break;
              }

              v22 = v33;
              v34 = *(v32 + 3);
              *v24 = *v30;
              *(v24 + 1) = v34;
              v24 = v32 + 32;
              if (v33 > v23)
              {
                goto LABEL_28;
              }
            }

            v26 = *(v32 + 8);
            v25 = v32 + 64;
            v27 = *(v25 - 3) - *(v25 - 4);
            v28 = *(v25 + 1) - v26;
            v15 = v27 == v28;
            v29 = v27 < v28;
            if (v15)
            {
              v29 = *(v25 - 2) < *(v25 + 2);
            }

            if (v29)
            {
              v30 = v25;
            }

            else
            {
              v22 = v33;
            }

            v31 = *(v30 + 1);
            *v24 = *v30;
            *(v24 + 1) = v31;
            v24 = v30;
          }

          while (v22 <= v23);
LABEL_28:
          v35 = v6 - 32;
          if (v30 == v6 - 32)
          {
            *v30 = v52;
            *(v30 + 1) = v53;
          }

          else
          {
            v36 = *(v6 - 1);
            *v30 = *v35;
            *(v30 + 1) = v36;
            *v35 = v52;
            *(v6 - 1) = v53;
            v37 = (v30 - a1 + 32) >> 5;
            v21 = v37 < 2;
            v38 = v37 - 2;
            if (!v21)
            {
              v39 = v38 >> 1;
              v40 = &a1[32 * v39];
              v41 = *(v40 + 1) - *v40;
              v43 = *v30;
              v42 = *(v30 + 1);
              v44 = v42 - *v30;
              v45 = *(v30 + 2);
              v15 = v41 == v44;
              v46 = v41 < v44;
              if (v15)
              {
                v46 = *(v40 + 2) < v45;
              }

              if (v46)
              {
                v47 = *(v30 + 3);
                do
                {
                  v48 = v30;
                  v30 = v40;
                  v49 = *(v40 + 1);
                  *v48 = *v40;
                  *(v48 + 1) = v49;
                  if (!v39)
                  {
                    break;
                  }

                  v39 = (v39 - 1) >> 1;
                  v40 = &a1[32 * v39];
                  v50 = *(v40 + 1) - *v40;
                  v15 = v50 == v44;
                  v51 = v50 < v44;
                  if (v15)
                  {
                    v51 = *(v40 + 2) < v45;
                  }
                }

                while (v51);
                *v30 = v43;
                *(v30 + 1) = v42;
                *(v30 + 2) = v45;
                *(v30 + 3) = v47;
              }
            }
          }
        }

        v6 -= 32;
        v21 = v8-- > 2;
      }

      while (v21);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_1195460(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 5)
    {
      v6 = v4 >> 4;
      v7 = (v4 >> 4) + 1;
      v8 = (result + 32 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v14 = *v8;
      }

      else
      {
        v10 = v8[1] - *v8;
        v11 = v8[5] - v8[4];
        v13 = v10 == v11;
        v12 = v10 < v11;
        if (v13)
        {
          v12 = v8[2] < v8[6];
        }

        v13 = !v12;
        if (v12)
        {
          v14 = v8[4];
        }

        else
        {
          v14 = *v8;
        }

        if (!v13)
        {
          v8 += 4;
          v7 = v9;
        }
      }

      v15 = v8[1] - v14;
      v17 = *a4;
      v16 = a4[1];
      v18 = v16 - *a4;
      v19 = a4[2];
      v20 = v8[2] < v19;
      v13 = v15 == v18;
      v21 = v15 < v18;
      if (!v13)
      {
        v20 = v21;
      }

      if (!v20)
      {
        v22 = a4[3];
        do
        {
          v30 = a4;
          a4 = v8;
          v31 = *(v8 + 1);
          *v30 = *v8;
          v30[1] = v31;
          if (v5 < v7)
          {
            break;
          }

          v32 = (2 * v7) | 1;
          v8 = (result + 32 * v32);
          v7 = 2 * v7 + 2;
          if (v7 < a3)
          {
            v23 = v8[1] - *v8;
            v24 = v8[5] - v8[4];
            v13 = v23 == v24;
            v25 = v23 < v24;
            if (v13)
            {
              v25 = v8[2] < v8[6];
            }

            v26 = !v25;
            v27 = v25 ? v8[4] : *v8;
            if (v26)
            {
              v7 = v32;
            }

            else
            {
              v8 += 4;
            }
          }

          else
          {
            v27 = *v8;
            v7 = v32;
          }

          v28 = v8[1] - v27;
          v13 = v28 == v18;
          v29 = v28 < v18;
          if (v13)
          {
            v29 = v8[2] < v19;
          }
        }

        while (!v29);
        *a4 = v17;
        a4[1] = v16;
        a4[2] = v19;
        a4[3] = v22;
      }
    }
  }

  return result;
}

uint64_t sub_11955C0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    result = sub_119588C(a1);
  }

  else
  {
    result = 0;
  }

  v5 = *(a1 + 48);
  if (v5 >= ~a2)
  {
    goto LABEL_27;
  }

  v6 = *(a1 + 56);
  v7 = v5 + a2;
  if (v6 < 4 || v7 > *a1)
  {
    v8 = *(a1 + 16);
    v9 = vcvts_n_u32_f32(v8, 2uLL);
    v10 = 4;
    if (v7 >= v9)
    {
      while ((v10 & 0x8000000000000000) == 0)
      {
        v10 *= 2;
        if (v7 < (v8 * v10))
        {
          goto LABEL_10;
        }
      }

LABEL_27:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_195A000(exception, "resize overflow");
    }

LABEL_10:
    if (v10 > v6)
    {
      v11 = *(a1 + 40);
      v12 = v5 - v11 + a2;
      v13 = 4;
      if (v6 > 4)
      {
        goto LABEL_13;
      }

LABEL_12:
      if (v12 >= (v8 * v13))
      {
LABEL_13:
        while ((v13 & 0x8000000000000000) == 0)
        {
          v13 *= 2;
          if (v13 >= v6)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_27;
      }

      v14 = v7 - (v11 >> 2);
      v15 = 4;
      if (v14 >= v9)
      {
        while ((v15 & 0x8000000000000000) == 0)
        {
          v15 *= 2;
          if (v14 < (v8 * v15))
          {
            goto LABEL_19;
          }
        }

        goto LABEL_27;
      }

LABEL_19:
      if (v13 <= 0x7FFFFFFFFFFFFFFELL && v13 < v15 && v12 >= (*(a1 + 20) * (2 * v13)))
      {
        v13 *= 2;
      }

      sub_D621A0(&v24, a1, v13);
      v17 = *a1;
      v16 = *(a1 + 16);
      v18 = v25;
      *a1 = v24;
      *(a1 + 16) = v18;
      v24 = v17;
      v25 = v16;
      v19 = *(a1 + 32);
      *(a1 + 32) = v26;
      v26 = v19;
      v20 = *(a1 + 48);
      *(a1 + 48) = v27;
      v27 = v20;
      *&v16 = v28;
      v21 = *(a1 + 56);
      *(a1 + 56) = v28;
      v28 = v21;
      v22 = *(a1 + 72);
      *(a1 + 72) = v29;
      v29 = v22;
      *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v16)));
      *(a1 + 24) = 0;
      v24 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v25, v21)));
      BYTE8(v25) = 0;
      if (v22)
      {
        free(v22);
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_119588C(uint64_t a1)
{
  v2 = *(a1 + 48) - *(a1 + 40);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = *(a1 + 56), v5 < 0x21))
  {
    result = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    v6 = v2;
    do
    {
      v7 = v5;
      v5 >>= 1;
    }

    while (v7 >= 0x42 && (*(a1 + 20) * v5) > v6);
    sub_D621A0(&v16, a1, v5);
    v9 = *a1;
    v8 = *(a1 + 16);
    v10 = v17;
    *a1 = v16;
    *(a1 + 16) = v10;
    v16 = v9;
    v17 = v8;
    v11 = *(a1 + 32);
    *(a1 + 32) = v18;
    v18 = v11;
    v12 = *(a1 + 48);
    *(a1 + 48) = v19;
    v19 = v12;
    *&v8 = v20;
    v13 = *(a1 + 56);
    *(a1 + 56) = v20;
    v20 = v13;
    v14 = *(a1 + 72);
    *(a1 + 72) = v21;
    v21 = v14;
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v8)));
    *(a1 + 24) = 0;
    v16 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v17, v13)));
    BYTE8(v17) = 0;
    if (v14)
    {
      free(v14);
    }

    result = 1;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_11959C4(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void **sub_1195A24(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_9B8AFC(a1, a2);
    *(a1 + 8) = result;
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    v4 = a2[1];
    if (v4 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 2) < 0x1555555555555556)
      {
        operator new();
      }

      sub_1794();
    }

    result = (v3 + 3);
    *(a1 + 8) = v3 + 3;
    *(a1 + 8) = v3 + 3;
  }

  return result;
}

void sub_1195B00(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_1195B20(uint64_t **a1, uint64_t **a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  v5 = 0x7FFFFFFFFFFFFFFELL;
  do
  {
    v6 = sub_1195B94(a2, v2);
    if (v6 < v5)
    {
      v5 = v6;
    }

    v2 += 3;
  }

  while (v2 != v3);
  return v5;
}

uint64_t sub_1195B94(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    v5 = *a2;
    v6 = a2[1];
    if (*a2 != v6)
    {
      v22 = 0;
      __src = 0;
      v24 = 0;
      v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 2) - 0x5555555555555555 * ((v3 - v2) >> 2);
      if (v8 != -1)
      {
        if (v8 + 1 <= 0x1555555555555555)
        {
          operator new();
        }

LABEL_21:
        sub_1794();
      }

      sub_318AE8(&v22, 0, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2));
      sub_11966D4(&v22, __src, a2[1], a2[1], *a2, *a2, 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2));
      v9 = *a1;
      v10 = __src;
      if (__src >= v24)
      {
        v13 = v22;
        v14 = 0xAAAAAAAAAAAAAAABLL * ((__src - v22) >> 2);
        v15 = v14 + 1;
        if (v14 + 1 > 0x1555555555555555)
        {
          goto LABEL_21;
        }

        if (0x5555555555555556 * ((v24 - v22) >> 2) > v15)
        {
          v15 = 0x5555555555555556 * ((v24 - v22) >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v24 - v22) >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v16 = 0x1555555555555555;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          if (v16 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v17 = 4 * ((__src - v22) >> 2);
        v18 = *v9;
        *(v17 + 8) = *(v9 + 2);
        *v17 = v18;
        v12 = (12 * v14 + 12);
        v19 = (v17 - (v10 - v13));
        memcpy(v19, v13, v10 - v13);
        v22 = v19;
        __src = v12;
        v24 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        v11 = *v9;
        *(__src + 2) = *(v9 + 2);
        *v10 = v11;
        v12 = v10 + 12;
      }

      v27 = v22;
      v28 = v12;
      v29 = v24;
      v22 = 0;
      __src = 0;
      v24 = 0;
      memset(__p, 0, sizeof(__p));
      v25 = __p;
      v26 = 0;
      operator new();
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

void sub_1196408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  sub_34BE0(&a31);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  a35 = __p;
  operator delete(__p);
  _Unwind_Resume(a1);
}

double sub_11964A0(uint64_t **a1)
{
  v2 = **a1;
  v1 = (*a1)[1];
  if (v1 != v2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v1 - v2) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  return fabs(0.0);
}

char *sub_11966D4(uint64_t a1, char *__src, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7 < 1)
  {
    return __src;
  }

  v8 = a4;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 2)) >= a7)
  {
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - __src) >> 2)) >= a7)
    {
      v18 = &__src[12 * a7];
      v19 = &v9[-12 * a7];
      for (i = *(a1 + 8); v19 < v9; v19 += 12)
      {
        v21 = *v19;
        *(i + 8) = *(v19 + 2);
        *i = v21;
        i += 12;
      }

      *(a1 + 8) = i;
      if (v9 != v18)
      {
        v22 = a7;
        memmove(&__src[12 * a7], __src, v9 - v18);
        a7 = v22;
      }

      if (-12 * a7)
      {
        v23 = -12 * a7 + v8;
        v24 = __src;
        do
        {
          v25 = *(v8 - 12);
          v8 -= 12;
          *(v24 + 2) = *(v8 + 8);
          *v24 = v25;
          v24 += 12;
        }

        while (v8 != v23);
      }
    }

    else
    {
      v15 = a4 - 4 * ((v9 - __src) >> 2);
      v16 = *(a1 + 8);
      if (v15 == a6)
      {
        v17 = *(a1 + 8);
      }

      else
      {
        v38 = a4 - 4 * ((v9 - __src) >> 2);
        v17 = *(a1 + 8);
        do
        {
          v39 = *(v38 - 12);
          v38 -= 12;
          *(v17 + 8) = *(v38 + 8);
          *v17 = v39;
          v17 += 12;
          v16 += 12;
        }

        while (v38 != a6);
      }

      *(a1 + 8) = v16;
      if (v9 - __src >= 1)
      {
        v40 = &__src[12 * a7];
        v41 = v16 - 12 * a7;
        for (j = v16; v41 < v9; v41 += 12)
        {
          v43 = *v41;
          *(j + 8) = *(v41 + 8);
          *j = v43;
          j += 12;
        }

        *(a1 + 8) = j;
        if (v17 != v40)
        {
          memmove(&__src[12 * a7], __src, v16 - v40);
        }

        v44 = __src;
        do
        {
          v45 = *(v8 - 12);
          v8 -= 12;
          *(v44 + 2) = *(v8 + 8);
          *v44 = v45;
          v44 += 12;
        }

        while (v8 != v15);
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a7 - 0x5555555555555555 * (&v9[-*a1] >> 2);
  if (v12 > 0x1555555555555555)
  {
    sub_1794();
  }

  v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 2);
  if (2 * v13 > v12)
  {
    v12 = 2 * v13;
  }

  if (v13 >= 0xAAAAAAAAAAAAAAALL)
  {
    v14 = 0x1555555555555555;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    if (v14 <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v26 = 4 * ((__src - v11) >> 2);
  v27 = 12 * a7;
  v28 = v26 + 12 * a7;
  v29 = (a4 - 12);
  v30 = v26;
  do
  {
    v31 = *v29;
    *(v30 + 8) = *(v29 + 2);
    *v30 = v31;
    v30 += 12;
    v29 = (v29 - 12);
    v27 -= 12;
  }

  while (v27);
  v32 = *(a1 + 8) - __src;
  memcpy((v26 + 12 * a7), __src, v32);
  v34 = v28 + v32;
  *(a1 + 8) = __src;
  v35 = *a1;
  v36 = &__src[-*a1];
  v37 = v26 - v36;
  memcpy((v26 - v36), *a1, v36);
  *a1 = v37;
  *(a1 + 8) = v34;
  *(a1 + 16) = 0;
  if (v35)
  {
    operator delete(v35);
  }

  return v26;
}

uint64_t sub_11969DC@<X0>(int32x2_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_11955C0(a1, 1);
  result = sub_10550EC(a1, a2);
  if (result == -1)
  {
    v10 = a1[5];
    v9 = a1[6];
    if (*&v9 - *&v10 >= 0x1FFFFFFFFFFFFFFFuLL)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_195A000(exception, "insert overflow");
    }

    v11 = a1[9];
    if (*&v10 && (v12 = vceq_s32(a1[4], *(*&v11 + 8 * v7)), (v12.i32[0] & v12.i32[1] & 1) != 0))
    {
      a1[5] = (*&v10 - 1);
    }

    else
    {
      a1[6] = (*&v9 + 1);
    }

    *(*&v11 + 8 * v7) = *a2;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v7 = result;
  }

  v13 = a1[9];
  v14 = a1[7];
  *a3 = a1;
  *(a3 + 8) = *&v13 + 8 * v7;
  *(a3 + 16) = *&v13 + 8 * *&v14;
  *(a3 + 24) = v8;
  return result;
}

uint64_t sub_1196AF4(uint64_t a1, void *a2)
{
  *a1 = sub_3AF6B4(a2);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return a1;
}

void sub_1196B34(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i -= 80)
  {
    v4 = *(i - 8);
    if (v4)
    {
      free(v4);
    }
  }

  a1[2] = v2;
  a1[5] = a1[4];
}

void sub_1196B8C(void *a1, uint64_t a2)
{
  v6 = a1[1];
  v5 = a1[2];
  v4 = a1 + 1;
  if (v5 - v6 == -80)
  {
    while (v5 != v6)
    {
      v7 = *(v5 - 8);
      if (v7)
      {
        free(v7);
      }

      v5 -= 80;
    }

    a1[2] = v6;
  }

  else
  {
    sub_119EA44(v4, 1uLL);
    v6 = a1[2];
  }

  *(v6 - 55) = 1;
  *(v6 - 16) = 0x1000000000000;
  v8 = (v6 - 16);
  v9 = malloc_type_malloc(8 * *(v6 - 24), 0x100004087442A64uLL);
  *(v6 - 8) = v9;
  v10 = v6 - 80;
  v11 = *(v6 - 24);
  if (v11)
  {
    v12 = (v9 + 8 * v11);
    v13 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v13 < 0xF)
    {
      goto LABEL_98;
    }

    if (v9 < v6 - 8 && v8 < v12)
    {
      goto LABEL_98;
    }

    v15 = v13 + 1;
    v16 = (v13 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v17 = vld1q_dup_f64(v8);
    v18 = v9 + 1;
    v19 = v16;
    do
    {
      v18[-1] = v17;
      *v18 = v17;
      v18 += 2;
      v19 -= 4;
    }

    while (v19);
    v9 = (v9 + 8 * v16);
    if (v15 != v16)
    {
LABEL_98:
      do
      {
        v9->f64[0] = *v8;
        v9 = (v9 + 8);
      }

      while (v9 != v12);
    }
  }

  v20 = sub_4C4B5C(a2);
  if (!v20 || (*(v6 - 56) & 1) != 0)
  {
    sub_100A844(v6 - 80);
  }

  v21 = *(v6 - 32);
  if (v20 > v21)
  {
    sub_100A578(v6 - 80, v20 - v21);
  }

  sub_4C5914(a2, &v64);
  v56 = v64;
  v57 = v65;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  if (v67 != v66)
  {
    if (((v67 - v66) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v61 = 0;
  v62 = 0;
  v63 = 0;
  if (v69 != v68)
  {
    if (((v69 - v68) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v48 = v70;
  v49 = v71;
  __p = 0;
  v51 = 0;
  v52 = 0;
  if (v73 != v72)
  {
    if (((v73 - v72) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v53 = 0;
  v54 = 0;
  v55 = 0;
  if (v75 != v74)
  {
    if (((v75 - v74) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  while (1)
  {
    v22 = v53;
    if (v61 == v62 || v53 == v54)
    {
      if ((v61 == v62) == (v53 == v54))
      {
        goto LABEL_60;
      }

      goto LABEL_43;
    }

    v24 = v56;
    if (v57 == v49)
    {
      break;
    }

LABEL_49:
    v29 = *(sub_4D1F50(v24, *(&v56 + 1)) + 32);
    LODWORD(v47) = v29;
    BYTE6(v47) = BYTE6(v29);
    WORD2(v47) = WORD2(v29);
    sub_100A578(v10, 1);
    if (sub_100A97C(v10, &v47) == -1)
    {
      sub_100AA78(v10, &v47, v30, v76);
    }

    sub_3E3AF4(&v56);
  }

  if (v56)
  {
    v25 = *(&v56 + 1);
    v26 = sub_4D1DC0(v56);
    v27 = v25 < v26;
    v28 = v48;
    if (!v48)
    {
      if (v25 >= v26)
      {
        goto LABEL_60;
      }

      goto LABEL_43;
    }
  }

  else
  {
    v28 = v48;
    if (!v48)
    {
      goto LABEL_60;
    }

    v27 = 0;
  }

  v31 = *(&v48 + 1);
  v32 = sub_4D1DC0(v28);
  if (v31 < v32 && v27)
  {
    v34 = sub_4D1F50(v56, *(&v56 + 1));
    if (v34 == sub_4D1F50(v28, v31))
    {
      goto LABEL_60;
    }

    goto LABEL_43;
  }

  if (v27 != v31 < v32)
  {
LABEL_43:
    v24 = v56;
    goto LABEL_49;
  }

LABEL_60:
  if (v22)
  {
    operator delete(v22);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  v36 = a1[5];
  v35 = a1[6];
  if (v36 >= v35)
  {
    v38 = a1[4];
    v39 = v36 - v38;
    v40 = (v36 - v38) >> 3;
    v41 = v40 + 1;
    if ((v40 + 1) >> 61)
    {
      sub_1794();
    }

    v42 = v35 - v38;
    if (v42 >> 2 > v41)
    {
      v41 = v42 >> 2;
    }

    if (v42 >= 0x7FFFFFFFFFFFFFF8)
    {
      v43 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v43 = v41;
    }

    if (v43)
    {
      if (!(v43 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v44 = (v36 - v38) >> 3;
    v45 = (8 * v40);
    v46 = (8 * v40 - 8 * v44);
    *v45 = a2;
    v37 = v45 + 1;
    memcpy(v46, v38, v39);
    a1[4] = v46;
    a1[5] = v37;
    a1[6] = 0;
    if (v38)
    {
      operator delete(v38);
    }
  }

  else
  {
    *v36 = a2;
    v37 = v36 + 1;
  }

  a1[5] = v37;
}

void sub_11970F0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (v28)
  {
    operator delete(v28);
  }

  sub_4A48(a1);
}

void sub_119713C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_3DB674(&a11);
  sub_3DB674(&a21);
  sub_3DB6B8(&a31);
  _Unwind_Resume(a1);
}

uint64_t sub_1197168(uint64_t a1, uint64_t a2, void *a3)
{
  sub_4C5914(a2, &v14);
  sub_439574(&v14, &v26);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  v14 = v26;
  v15 = v27;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (v29 != v28)
  {
    if (((v29 - v28) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (v31 != v30)
  {
    if (((v31 - v30) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = v32;
  if (v34 != v33)
  {
    if (((v34 - v33) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v36 != v35)
  {
    if (((v36 - v35) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = 0;
  v7 = 0;
  while (v19 != v20 && v6 < *a3)
  {
    v9 = sub_4D23F8(v14, *(&v14 + 1), v5);
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    if (v10 != v11)
    {
      while (1)
      {
        v12 = *(sub_4D1F50(v14, *(&v14 + 1)) + 32);
        LODWORD(v37) = v12;
        BYTE6(v37) = BYTE6(v12);
        WORD2(v37) = WORD2(v12);
        if (sub_100A97C(v10, &v37) != -1)
        {
          break;
        }

        v10 += 80;
        if (v10 == v11)
        {
          goto LABEL_23;
        }
      }

      v7 += v9;
    }

LABEL_23:
    v6 += v9;
    sub_3E3AF4(&v14);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  return v7;
}

void sub_1197568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_3DB6B8(va);
  _Unwind_Resume(a1);
}

void sub_119757C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (v26)
  {
    operator delete(v26);
  }

  sub_4A48(a1);
}

void sub_11975C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  sub_3DB6B8(&a38);
  _Unwind_Resume(a1);
}

void sub_11975F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *a1;
  v11 = *(a1 + 16);
  *v12 = *(a1 + 24);
  v13 = *(a1 + 40);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v4 = *(a2 + 16);
  v5 = *a2;
  *v6 = v4;
  v7 = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *__p = *(a2 + 40);
  v9 = *(a2 + 56);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  sub_3E4DAC(a3, &v10);
  sub_4C7110(a3 + 72, &v5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }
}

void sub_11976DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_3DB674(v17);
  sub_334D18(&a9);
  sub_3DB674(&a17);
  _Unwind_Resume(a1);
}

void sub_1197700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_334D18(&a9);
  sub_3DB674(&a17);
  _Unwind_Resume(a1);
}

void *sub_119771C(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[12] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  return a1;
}

_OWORD *sub_1197780(_OWORD *a1, __int128 *a2, __int128 *a3)
{
  v6 = sub_3E4DAC(a1, a2);
  sub_3E4DAC(v6 + 72, (a2 + 72));
  v7 = a2[9];
  v8 = a2[11];
  a1[10] = a2[10];
  a1[11] = v8;
  a1[9] = v7;
  sub_3E4DAC((a1 + 12), a3);
  sub_3E4DAC(a1 + 264, (a3 + 72));
  v9 = a3[9];
  v10 = a3[11];
  a1[22] = a3[10];
  a1[23] = v10;
  a1[21] = v9;
  return a1;
}

void sub_11977FC(_Unwind_Exception *a1)
{
  sub_3DB674(v1 + 24);
  sub_3DB6B8(v1);
  _Unwind_Resume(a1);
}

void sub_1197840(void *a1, uint64_t a2)
{
  v6 = a1[1];
  v5 = a1[2];
  v4 = a1 + 1;
  if (v5 - v6 == -80)
  {
    while (v5 != v6)
    {
      v7 = *(v5 - 8);
      if (v7)
      {
        free(v7);
      }

      v5 -= 80;
    }

    a1[2] = v6;
  }

  else
  {
    sub_119EA44(v4, 1uLL);
    v6 = a1[2];
  }

  *(v6 - 55) = 1;
  *(v6 - 16) = 0x1000000000000;
  v8 = (v6 - 16);
  v9 = malloc_type_malloc(8 * *(v6 - 24), 0x100004087442A64uLL);
  *(v6 - 8) = v9;
  v10 = v6 - 80;
  v11 = *(v6 - 24);
  if (v11)
  {
    v12 = (v9 + 8 * v11);
    v13 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v13 < 0xF)
    {
      goto LABEL_98;
    }

    if (v9 < v6 - 8 && v8 < v12)
    {
      goto LABEL_98;
    }

    v15 = v13 + 1;
    v16 = (v13 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v17 = vld1q_dup_f64(v8);
    v18 = v9 + 1;
    v19 = v16;
    do
    {
      v18[-1] = v17;
      *v18 = v17;
      v18 += 2;
      v19 -= 4;
    }

    while (v19);
    v9 = (v9 + 8 * v16);
    if (v15 != v16)
    {
LABEL_98:
      do
      {
        v9->f64[0] = *v8;
        v9 = (v9 + 8);
      }

      while (v9 != v12);
    }
  }

  v20 = sub_4C4B5C(a2);
  if (!v20 || (*(v6 - 56) & 1) != 0)
  {
    sub_100A844(v6 - 80);
  }

  v21 = *(v6 - 32);
  if (v20 > v21)
  {
    sub_100A578(v6 - 80, v20 - v21);
  }

  sub_4C37CC(a2, &v64);
  v56 = v64;
  v57 = v65;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  if (v67 != v66)
  {
    if (((v67 - v66) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v61 = 0;
  v62 = 0;
  v63 = 0;
  if (v69 != v68)
  {
    if (((v69 - v68) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v48 = v70;
  v49 = v71;
  __p = 0;
  v51 = 0;
  v52 = 0;
  if (v73 != v72)
  {
    if (((v73 - v72) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v53 = 0;
  v54 = 0;
  v55 = 0;
  if (v75 != v74)
  {
    if (((v75 - v74) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  while (1)
  {
    v22 = v53;
    if (v61 == v62 || v53 == v54)
    {
      if ((v61 == v62) == (v53 == v54))
      {
        goto LABEL_60;
      }

      goto LABEL_43;
    }

    v24 = v56;
    if (v57 == v49)
    {
      break;
    }

LABEL_49:
    v29 = *(sub_4D1F50(v24, *(&v56 + 1)) + 32);
    LODWORD(v47) = v29;
    BYTE6(v47) = BYTE6(v29);
    WORD2(v47) = WORD2(v29);
    sub_100A578(v10, 1);
    if (sub_100A97C(v10, &v47) == -1)
    {
      sub_100AA78(v10, &v47, v30, v76);
    }

    sub_3E3AF4(&v56);
  }

  if (v56)
  {
    v25 = *(&v56 + 1);
    v26 = sub_4D1DC0(v56);
    v27 = v25 < v26;
    v28 = v48;
    if (!v48)
    {
      if (v25 >= v26)
      {
        goto LABEL_60;
      }

      goto LABEL_43;
    }
  }

  else
  {
    v28 = v48;
    if (!v48)
    {
      goto LABEL_60;
    }

    v27 = 0;
  }

  v31 = *(&v48 + 1);
  v32 = sub_4D1DC0(v28);
  if (v31 < v32 && v27)
  {
    v34 = sub_4D1F50(v56, *(&v56 + 1));
    if (v34 == sub_4D1F50(v28, v31))
    {
      goto LABEL_60;
    }

    goto LABEL_43;
  }

  if (v27 != v31 < v32)
  {
LABEL_43:
    v24 = v56;
    goto LABEL_49;
  }

LABEL_60:
  if (v22)
  {
    operator delete(v22);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  v36 = a1[5];
  v35 = a1[6];
  if (v36 >= v35)
  {
    v38 = a1[4];
    v39 = v36 - v38;
    v40 = (v36 - v38) >> 3;
    v41 = v40 + 1;
    if ((v40 + 1) >> 61)
    {
      sub_1794();
    }

    v42 = v35 - v38;
    if (v42 >> 2 > v41)
    {
      v41 = v42 >> 2;
    }

    if (v42 >= 0x7FFFFFFFFFFFFFF8)
    {
      v43 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v43 = v41;
    }

    if (v43)
    {
      if (!(v43 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v44 = (v36 - v38) >> 3;
    v45 = (8 * v40);
    v46 = (8 * v40 - 8 * v44);
    *v45 = a2;
    v37 = v45 + 1;
    memcpy(v46, v38, v39);
    a1[4] = v46;
    a1[5] = v37;
    a1[6] = 0;
    if (v38)
    {
      operator delete(v38);
    }
  }

  else
  {
    *v36 = a2;
    v37 = v36 + 1;
  }

  a1[5] = v37;
}

void sub_1197DA4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (v28)
  {
    operator delete(v28);
  }

  sub_4A48(a1);
}

void sub_1197DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_3DB674(&a11);
  sub_3DB674(&a21);
  sub_3DB6B8(&a31);
  _Unwind_Resume(a1);
}

uint64_t sub_1197E1C(uint64_t a1, uint64_t a2)
{
  sub_4C35F8(a2, &v19);
  sub_4C3F14(a2, &v49);
  sub_11975F4(&v19, &v49, &v61);
  if (__p)
  {
    v54 = __p;
    operator delete(__p);
  }

  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  sub_4C36F8(a2, &v19);
  sub_4C403C(a2, &v4);
  sub_11975F4(&v19, &v4, &v49);
  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  v19 = v61;
  v20 = v62;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (v64 != v63)
  {
    if (((v64 - v63) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (v66 != v65)
  {
    if (((v66 - v65) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v27 = v67;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  if (v69 != v68)
  {
    if (((v69 - v68) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v31 = 0;
  v32 = 0;
  v33 = 0;
  if (v71 != v70)
  {
    if (((v71 - v70) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v34 = v49;
  v35 = v50;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (v52 != v51)
  {
    if (((v52 - v51) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  if (v55 != v54)
  {
    if (((v55 - v54) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v42 = v56;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  if (v58 != v57)
  {
    if (((v58 - v57) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v47 = 0;
  v46 = 0;
  v48 = 0;
  if (v60 != v59)
  {
    if (((v60 - v59) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = v19;
  v5 = v20;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v27;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  sub_119ED08(&v19);
  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  return 0;
}

void sub_1198860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  sub_334D18(&a27);
  sub_3DB674(&a45);
  sub_119771C((v45 - 200));
  _Unwind_Resume(a1);
}

void sub_11988A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  sub_334D18(&STACK[0x230]);
  sub_3DB674(&a45);
  _Unwind_Resume(a1);
}

void sub_11988D0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    a24 = __p;
    operator delete(__p);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  sub_3DB674(&a9);
  sub_4A48(a1);
}

void sub_119890C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  sub_4A48(a1);
}

void sub_1198A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  sub_119771C(&a9);
  sub_119771C(&a27);
  sub_119ED08(&a45);
  sub_119771C(&STACK[0x230]);
  sub_119771C((v45 - 200));
  _Unwind_Resume(a1);
}

uint64_t sub_1198AB0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_4C37CC(a2, &v14);
  sub_3E3878(&v14, &v26);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  v14 = v26;
  v15 = v27;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (v29 != v28)
  {
    if (((v29 - v28) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (v31 != v30)
  {
    if (((v31 - v30) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = v32;
  if (v34 != v33)
  {
    if (((v34 - v33) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v36 != v35)
  {
    if (((v36 - v35) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = 0;
  v7 = 0;
  while (v19 != v20 && v6 < *a3)
  {
    v9 = sub_4D23F8(v14, *(&v14 + 1), v5);
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    if (v10 != v11)
    {
      while (1)
      {
        v12 = *(sub_4D1F50(v14, *(&v14 + 1)) + 32);
        LODWORD(v37) = v12;
        BYTE6(v37) = BYTE6(v12);
        WORD2(v37) = WORD2(v12);
        if (sub_100A97C(v10, &v37) != -1)
        {
          break;
        }

        v10 += 80;
        if (v10 == v11)
        {
          goto LABEL_23;
        }
      }

      v7 += v9;
    }

LABEL_23:
    v6 += v9;
    sub_3E3AF4(&v14);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  return v7;
}

void sub_1198EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_3DB6B8(va);
  _Unwind_Resume(a1);
}

void sub_1198EC4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (v26)
  {
    operator delete(v26);
  }

  sub_4A48(a1);
}

void sub_1198F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  sub_3DB6B8(&a38);
  _Unwind_Resume(a1);
}

double sub_1198F3C(void *a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v10 = 1.0;
  if ((a3 & 1) == 0 && !a4)
  {
    return v10;
  }

  v11 = a1[5] - a1[4];
  if (!v11)
  {
    return v10;
  }

  v12 = 0;
  v13 = v11 >> 3;
  while (2)
  {
    sub_119916C(a1, a2, v12, &__p);
    v15 = __p;
    if (__p == v32)
    {
      if (__p)
      {
        v32 = __p;
        operator delete(__p);
      }

      goto LABEL_8;
    }

    v16 = __p;
    while (1)
    {
      if ((*(v16 + 47) & a5) == 0 && *(v16 + 11) == *(v16 + 2) && *(v16 + 35) == *(v16 + 26))
      {
        if (a4)
        {
          v17 = *(v16 + 43);
          if (!v17)
          {
            goto LABEL_47;
          }

          if (v10 < *(v16 + 19) / v17)
          {
            v10 = *(v16 + 19) / v17;
          }
        }

        if (a3)
        {
          break;
        }
      }

LABEL_11:
      v16 += 384;
      if (v16 == v32)
      {
        v19 = 1;
        if (!__p)
        {
          goto LABEL_7;
        }

        goto LABEL_25;
      }
    }

    v18 = *(v16 + 91);
    if (v18)
    {
      if (v10 < *(v16 + 43) / v18)
      {
        v10 = *(v16 + 43) / v18;
      }

      goto LABEL_11;
    }

LABEL_47:
    v19 = 0;
    if (!__p)
    {
      goto LABEL_7;
    }

LABEL_25:
    if (__p == v32)
    {
      v14 = __p;
    }

    else
    {
      v20 = v32 - 168;
      do
      {
        v22 = *(v20 + 12);
        if (v22)
        {
          *(v20 + 13) = v22;
          operator delete(v22);
        }

        v23 = *(v20 + 9);
        if (v23)
        {
          *(v20 + 10) = v23;
          operator delete(v23);
        }

        v24 = *(v20 + 3);
        if (v24)
        {
          *(v20 + 4) = v24;
          operator delete(v24);
        }

        v25 = *v20;
        if (*v20)
        {
          *(v20 + 1) = v25;
          operator delete(v25);
        }

        v26 = *(v20 - 12);
        if (v26)
        {
          *(v20 - 11) = v26;
          operator delete(v26);
        }

        v27 = *(v20 - 15);
        if (v27)
        {
          *(v20 - 14) = v27;
          operator delete(v27);
        }

        v28 = *(v20 - 21);
        if (v28)
        {
          *(v20 - 20) = v28;
          operator delete(v28);
        }

        v29 = *(v20 - 24);
        if (v29)
        {
          *(v20 - 23) = v29;
          operator delete(v29);
        }

        v21 = v20 - 216;
        v20 -= 384;
      }

      while (v21 != v15);
      v14 = __p;
      v32 = v15;
    }

    operator delete(v14);
LABEL_7:
    if (v19)
    {
LABEL_8:
      if (++v12 == v13)
      {
        return v10;
      }

      continue;
    }

    return 1.79769313e308;
  }
}

void sub_119916C(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  if (a3 >= (a1[5] - a1[4]) >> 3 || !sub_4C49E0(a2))
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v8 = *(a1[4] + 8 * a3);
  sub_4C35F8(a2, &v316);
  sub_4C36F8(a2, &v309);
  sub_4C3F14(a2, &v303);
  sub_4C403C(a2, v298);
  sub_4C35F8(v8, &v292);
  sub_4C36F8(v8, &v286);
  sub_4C3F14(v8, &v280);
  sub_4C403C(v8, v275);
  v268 = sub_4C4BD8(a2);
  v269 = sub_4E4B18(a2, 0, 0);
  v270 = 0;
  v271 = 0;
  v272 = 0;
  v273 = 0;
  v274 = 0;
  v161 = 0;
  v261 = sub_4C4BD8(v8);
  v262 = sub_4E4B18(v8, 0, 0);
  v263 = 0;
  v264 = 0;
  v265 = 0;
  v266 = 0;
  v267 = 0;
  v162 = a4;
LABEL_5:
  if (v320 == v321 || v314 == v315)
  {
    if ((v320 == v321) == (v314 == v315))
    {
      goto LABEL_377;
    }
  }

  else if (v317 == v311)
  {
    if (v316)
    {
      v10 = *(&v316 + 1);
      v11 = sub_4D1DC0(v316);
      v12 = v10 < v11;
      v13 = v309;
      if (!v309)
      {
        if (v10 >= v11)
        {
          goto LABEL_377;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v13 = v309;
      if (!v309)
      {
        goto LABEL_377;
      }

      v12 = 0;
    }

    v14 = v310;
    v15 = sub_4D1DC0(v13);
    if (v14 < v15 && v12)
    {
      v17 = sub_4D1F50(v316, *(&v316 + 1));
      if (v17 == sub_4D1F50(v309, v310))
      {
        goto LABEL_377;
      }
    }

    else if (v12 == v14 < v15)
    {
      goto LABEL_377;
    }
  }

LABEL_26:
  if (v296 == v297 || v290 == v291)
  {
    if ((v296 == v297) != (v290 == v291))
    {
      goto LABEL_47;
    }

    goto LABEL_377;
  }

  if (v293 != v287)
  {
    goto LABEL_47;
  }

  if (v292)
  {
    v19 = *(&v292 + 1);
    v20 = sub_4D1DC0(v292);
    v21 = v19 < v20;
    v22 = v286;
    if (!v286)
    {
      if (v19 < v20)
      {
        goto LABEL_47;
      }

      goto LABEL_377;
    }
  }

  else
  {
    v22 = v286;
    if (!v286)
    {
      goto LABEL_377;
    }

    v21 = 0;
  }

  v23 = *(&v286 + 1);
  v24 = sub_4D1DC0(v22);
  if (v23 < v24 && v21)
  {
    v26 = sub_4D1F50(v292, *(&v292 + 1));
    if (v26 != sub_4D1F50(v286, *(&v286 + 1)))
    {
      goto LABEL_47;
    }

    goto LABEL_377;
  }

  if (v21 == v23 < v24)
  {
    goto LABEL_377;
  }

  while (1)
  {
LABEL_47:
    if (v320 == v321 || v314 == v315)
    {
      if ((v320 == v321) == (v314 == v315))
      {
        break;
      }

      goto LABEL_68;
    }

    if (v317 != v311)
    {
      goto LABEL_68;
    }

    if (v316)
    {
      v28 = *(&v316 + 1);
      v29 = sub_4D1DC0(v316);
      v30 = v28 < v29;
      v31 = v309;
      if (!v309)
      {
        if (v28 >= v29)
        {
          break;
        }

        goto LABEL_68;
      }
    }

    else
    {
      v31 = v309;
      if (!v309)
      {
        break;
      }

      v30 = 0;
    }

    v32 = v310;
    v33 = sub_4D1DC0(v31);
    if (v32 < v33 && v30)
    {
      v35 = sub_4D1F50(v316, *(&v316 + 1));
      if (v35 == sub_4D1F50(v309, v310))
      {
        break;
      }
    }

    else if (v30 == v32 < v33)
    {
      break;
    }

LABEL_68:
    if (v296 == v297 || v290 == v291)
    {
      if ((v296 == v297) == (v290 == v291))
      {
        break;
      }

      goto LABEL_89;
    }

    if (v293 != v287)
    {
      goto LABEL_89;
    }

    if (v292)
    {
      v37 = *(&v292 + 1);
      v38 = sub_4D1DC0(v292);
      v39 = v37 < v38;
      v40 = v286;
      if (!v286)
      {
        if (v37 >= v38)
        {
          break;
        }

        goto LABEL_89;
      }
    }

    else
    {
      v40 = v286;
      if (!v286)
      {
        break;
      }

      v39 = 0;
    }

    v41 = *(&v286 + 1);
    v42 = sub_4D1DC0(v40);
    if (v41 < v42 && v39)
    {
      v44 = sub_4D1F50(v292, *(&v292 + 1));
      if (v44 == sub_4D1F50(v286, *(&v286 + 1)))
      {
        break;
      }
    }

    else if (v39 == v41 < v42)
    {
      break;
    }

LABEL_89:
    v45 = sub_4D1F50(v316, *(&v316 + 1));
    v46 = *(sub_4D1F50(v292, *(&v292 + 1)) + 32);
    if (__PAIR64__(*(v45 + 36), *(v45 + 32)) != __PAIR64__(WORD2(v46), v46) || *(v45 + 38) != BYTE6(v46))
    {
      break;
    }

    v48 = sub_4D23F8(v316, *(&v316 + 1), v47);
    v49 = *v303;
    v270 += v48;
    v271 += v49;
    v51 = sub_4D23F8(v292, *(&v292 + 1), v50);
    v52 = *v280;
    v263 += v51;
    v264 += v52;
    sub_3E3AF4(&v316);
    v53 = v303 + 1;
    v54 = (v308 - v307) >> 3;
    ++v303;
    if (v304 < v54 - 1)
    {
      v55 = v304 + 1;
      v56 = (v307 + 8 * v304);
      do
      {
        if (v53 != *v56)
        {
          break;
        }

        v304 = v55;
        v53 = *(v305 + v55);
        v303 = v53;
        ++v55;
        ++v56;
      }

      while (v54 != v55);
    }

    sub_3E3AF4(&v292);
    v57 = v280 + 1;
    v58 = (v285 - v284) >> 3;
    ++v280;
    if (v281 < v58 - 1)
    {
      v59 = v281 + 1;
      v60 = (v284 + 8 * v281);
      do
      {
        if (v57 != *v60)
        {
          break;
        }

        v281 = v59;
        v57 = *(v282 + v59);
        v280 = v57;
        ++v59;
        ++v60;
      }

      while (v58 != v59);
    }
  }

  if (v320 == v321 || v314 == v315)
  {
    if ((v320 == v321) != (v314 == v315))
    {
      goto LABEL_139;
    }

    goto LABEL_106;
  }

  if (v317 != v311)
  {
    goto LABEL_139;
  }

  if (!v316)
  {
    v69 = v309;
    if (!v309)
    {
      goto LABEL_106;
    }

    v68 = 0;
LABEL_122:
    v70 = v310;
    v71 = sub_4D1DC0(v69);
    if (v70 < v71 && v68)
    {
      v73 = sub_4D1F50(v316, *(&v316 + 1));
      if (v73 != sub_4D1F50(v309, v310))
      {
        goto LABEL_139;
      }

      goto LABEL_106;
    }

    if (((v68 ^ (v70 < v71)) & 1) == 0)
    {
      goto LABEL_106;
    }

LABEL_139:
    v253 = v316;
    v254 = v317;
    v256 = 0;
    v257 = 0;
    v255 = 0;
    if (v319 != v318)
    {
      if (((v319 - v318) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v258 = 0;
    v259 = 0;
    v260 = 0;
    if (v321 != v320)
    {
      if (((v321 - v320) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v245 = v292;
    v246 = v293;
    v248 = 0;
    v249 = 0;
    v247 = 0;
    if (v295 != v294)
    {
      if (((v295 - v294) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v250 = 0;
    v251 = 0;
    v252 = 0;
    if (v297 != v296)
    {
      if (((v297 - v296) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    while (v320 != v321 && v314 != v315)
    {
      v79 = v316;
      if (v317 == v311)
      {
        if (v316)
        {
          v80 = *(&v316 + 1);
          v81 = sub_4D1DC0(v316);
          v82 = v80 < v81;
          v83 = v309;
          if (!v309)
          {
            if (v80 >= v81)
            {
              goto LABEL_186;
            }

            goto LABEL_157;
          }
        }

        else
        {
          v83 = v309;
          if (!v309)
          {
            goto LABEL_186;
          }

          v82 = 0;
        }

        v99 = v310;
        v100 = sub_4D1DC0(v83);
        if (v99 < v100 && v82)
        {
          v102 = sub_4D1F50(v316, *(&v316 + 1));
          if (v102 == sub_4D1F50(v309, v310))
          {
            goto LABEL_186;
          }
        }

        else if (v82 == v99 < v100)
        {
LABEL_186:
          if (v320 == v321 || v314 == v315)
          {
            if ((v320 == v321) != (v314 == v315))
            {
              goto LABEL_207;
            }

            goto LABEL_258;
          }

          if (v317 != v311)
          {
            goto LABEL_207;
          }

          if (v316)
          {
            v104 = *(&v316 + 1);
            v105 = sub_4D1DC0(v316);
            v106 = v104 < v105;
            v107 = v309;
            if (!v309)
            {
              if (v104 >= v105)
              {
                goto LABEL_258;
              }

LABEL_207:
              while (2)
              {
                if (v296 == v297 || v290 == v291)
                {
                  if ((v296 == v297) == (v290 == v291))
                  {
                    goto LABEL_243;
                  }

                  goto LABEL_213;
                }

                v113 = v292;
                if (v293 == v287)
                {
                  if (v292)
                  {
                    v114 = *(&v292 + 1);
                    v115 = sub_4D1DC0(v292);
                    v116 = v114 < v115;
                    v117 = v286;
                    if (!v286)
                    {
                      if (v114 >= v115)
                      {
                        goto LABEL_243;
                      }

                      goto LABEL_213;
                    }
                  }

                  else
                  {
                    v117 = v286;
                    if (!v286)
                    {
                      goto LABEL_243;
                    }

                    v116 = 0;
                  }

                  v133 = *(&v286 + 1);
                  v134 = sub_4D1DC0(v117);
                  if (v133 < v134 && v116)
                  {
                    v136 = sub_4D1F50(v292, *(&v292 + 1));
                    if (v136 == sub_4D1F50(v286, *(&v286 + 1)))
                    {
                      goto LABEL_243;
                    }
                  }

                  else if (v116 == v133 < v134)
                  {
                    goto LABEL_243;
                  }

LABEL_213:
                  v113 = v292;
                }

                v118 = sub_4D1F50(v113, *(&v292 + 1));
                v119 = *(sub_4D1F50(v316, *(&v316 + 1)) + 32);
                if (__PAIR64__(*(v118 + 36), *(v118 + 32)) == __PAIR64__(WORD2(v119), v119) && *(v118 + 38) == BYTE6(v119))
                {
LABEL_243:
                  v187 = v253;
                  v188 = v254;
                  v190 = 0;
                  v191 = 0;
                  v189 = 0;
                  v192 = 0;
                  v193 = 0;
                  v194 = 0;
                  a4 = v162;
                  v179 = v316;
                  v180 = v317;
                  v182 = 0;
                  v183 = 0;
                  v181 = 0;
                  if (v319 != v318)
                  {
                    if (((v319 - v318) & 0x8000000000000000) == 0)
                    {
                      operator new();
                    }

                    sub_1794();
                  }

                  v184 = 0;
                  v185 = 0;
                  v186 = 0;
                  if (v321 != v320)
                  {
                    if (((v321 - v320) & 0x8000000000000000) == 0)
                    {
                      operator new();
                    }

                    sub_1794();
                  }

                  sub_119AFBC(&v268, &v187, &v179, 1, &v236);
                  v171 = v245;
                  v172 = v246;
                  v174 = 0;
                  v175 = 0;
                  v173 = 0;
                  v176 = 0;
                  v177 = 0;
                  v178 = 0;
                  v163 = v292;
                  v164 = v293;
                  v166 = 0;
                  v167 = 0;
                  v165 = 0;
                  if (v295 != v294)
                  {
                    if (((v295 - v294) & 0x8000000000000000) == 0)
                    {
                      operator new();
                    }

                    sub_1794();
                  }

                  v168 = 0;
                  v169 = 0;
                  v170 = 0;
                  if (v297 != v296)
                  {
                    if (((v297 - v296) & 0x8000000000000000) == 0)
                    {
                      operator new();
                    }

                    sub_1794();
                  }

                  sub_119AFBC(&v261, &v171, &v163, 1, &v211);
                  v137 = v162[1];
                  if (v137 >= v162[2])
                  {
                    v138 = sub_119EF40(v162, &v236, &v211);
                  }

                  else
                  {
                    sub_1197780(v162[1], &v236, &v211);
                    v138 = v137 + 384;
                  }

                  v162[1] = v138;
                  if (__p)
                  {
                    v219 = __p;
                    operator delete(__p);
                  }

                  if (v216)
                  {
                    v217 = v216;
                    operator delete(v216);
                  }

                  if (v214)
                  {
                    v215 = v214;
                    operator delete(v214);
                  }

                  if (v212)
                  {
                    v213 = v212;
                    operator delete(v212);
                  }

                  if (v168)
                  {
                    v169 = v168;
                    operator delete(v168);
                  }

                  if (v165)
                  {
                    v166 = v165;
                    operator delete(v165);
                  }

                  if (v176)
                  {
                    v177 = v176;
                    operator delete(v176);
                  }

                  if (v173)
                  {
                    v174 = v173;
                    operator delete(v173);
                  }

                  if (v243)
                  {
                    v244 = v243;
                    operator delete(v243);
                  }

                  if (v241)
                  {
                    v242 = v241;
                    operator delete(v241);
                  }

                  if (v239)
                  {
                    v240 = v239;
                    operator delete(v239);
                  }

                  if (v237)
                  {
                    v238 = v237;
                    operator delete(v237);
                  }

                  if (v184)
                  {
                    v185 = v184;
                    operator delete(v184);
                  }

                  if (v181)
                  {
                    v182 = v181;
                    operator delete(v181);
                  }

                  if (v192)
                  {
                    v193 = v192;
                    operator delete(v192);
                  }

                  if (v189)
                  {
                    v190 = v189;
                    operator delete(v189);
                  }

                  v157 = 0;
                  goto LABEL_335;
                }

                v121 = sub_4D23F8(v292, *(&v292 + 1), v120);
                v122 = *v280;
                v265 += v121;
                v266 += v122;
                v123 = sub_4D1F50(v292, *(&v292 + 1));
                v124 = *v123;
                v125 = &(*v123)[-**v123];
                v126 = *v125;
                if (v126 >= 0x2F && *(v125 + 23) && v124[*(v125 + 23)] == 21)
                {
                  v127 = 1;
                  if (v126 < 0x9B)
                  {
LABEL_229:
                    v267 |= v127;
                    sub_3E3AF4(&v292);
                    v129 = v280 + 1;
                    v130 = (v285 - v284) >> 3;
                    ++v280;
                    if (v281 < v130 - 1)
                    {
                      v131 = v281 + 1;
                      v132 = (v284 + 8 * v281);
                      do
                      {
                        if (v129 != *v132)
                        {
                          break;
                        }

                        v281 = v131;
                        v129 = *(v282 + v131);
                        v280 = v129;
                        ++v131;
                        ++v132;
                      }

                      while (v130 != v131);
                    }

                    continue;
                  }
                }

                else
                {
                  v127 = 0;
                  if (v126 < 0x9B)
                  {
                    goto LABEL_229;
                  }
                }

                break;
              }

              v128 = *(v125 + 77);
              if (v128)
              {
                v127 |= (*&v124[v128] >> 2) & 2;
              }

              goto LABEL_229;
            }
          }

          else
          {
            v107 = v309;
            if (!v309)
            {
              goto LABEL_258;
            }

            v106 = 0;
          }

          v108 = v310;
          v109 = sub_4D1DC0(v107);
          if (v108 < v109 && v106)
          {
            v111 = sub_4D1F50(v316, *(&v316 + 1));
            if (v111 != sub_4D1F50(v309, v310))
            {
              goto LABEL_207;
            }
          }

          else if ((v106 ^ (v108 < v109)))
          {
            goto LABEL_207;
          }

LABEL_258:
          while (2)
          {
            if (v296 == v297 || v290 == v291)
            {
              if ((v296 == v297) == (v290 == v291))
              {
                goto LABEL_287;
              }

              goto LABEL_264;
            }

            v140 = v292;
            if (v293 != v287)
            {
              goto LABEL_270;
            }

            if (v292)
            {
              v141 = *(&v292 + 1);
              v142 = sub_4D1DC0(v292);
              v143 = v141 < v142;
              v144 = v286;
              if (!v286)
              {
                if (v141 >= v142)
                {
                  goto LABEL_287;
                }

                goto LABEL_264;
              }
            }

            else
            {
              v144 = v286;
              if (!v286)
              {
                goto LABEL_287;
              }

              v143 = 0;
            }

            v151 = *(&v286 + 1);
            v152 = sub_4D1DC0(v144);
            if (v151 < v152 && v143)
            {
              v154 = sub_4D1F50(v292, *(&v292 + 1));
              if (v154 == sub_4D1F50(v286, *(&v286 + 1)))
              {
                goto LABEL_287;
              }

LABEL_264:
              v140 = v292;
LABEL_270:
              v145 = sub_4D1F50(v140, *(&v292 + 1));
              v146 = *v145;
              v147 = &(*v145)[-**v145];
              v148 = *v147;
              if (v148 >= 0x2F && *(v147 + 23) && v146[*(v147 + 23)] == 21)
              {
                v149 = 1;
                if (v148 >= 0x9B)
                {
                  goto LABEL_276;
                }
              }

              else
              {
                v149 = 0;
                if (v148 >= 0x9B)
                {
LABEL_276:
                  v150 = *(v147 + 77);
                  if (v150)
                  {
                    v149 |= (*&v146[v150] >> 2) & 2;
                  }
                }
              }

              v267 |= v149;
              sub_3E3AF4(&v292);
              continue;
            }

            break;
          }

          if (v143 != v151 < v152)
          {
            goto LABEL_264;
          }

LABEL_287:
          v228 = v253;
          v229 = v254;
          v231 = 0;
          v232 = 0;
          v230 = 0;
          v233 = 0;
          v234 = 0;
          v235 = 0;
          a4 = v162;
          v220 = v316;
          v221 = v317;
          v223 = 0;
          v224 = 0;
          v222 = 0;
          if (v319 != v318)
          {
            if (((v319 - v318) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v225 = 0;
          v226 = 0;
          v227 = 0;
          if (v321 != v320)
          {
            if (((v321 - v320) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          sub_119AFBC(&v268, &v228, &v220, 0, &v236);
          v203 = v245;
          v204 = v246;
          v206 = 0;
          v207 = 0;
          v205 = 0;
          v208 = 0;
          v209 = 0;
          v210 = 0;
          v195 = v286;
          v196 = v287;
          v198 = 0;
          v199 = 0;
          v197 = 0;
          if (v289 != v288)
          {
            if (((v289 - v288) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          v200 = 0;
          v201 = 0;
          v202 = 0;
          if (v291 != v290)
          {
            if (((v291 - v290) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            sub_1794();
          }

          sub_119AFBC(&v261, &v203, &v195, 0, &v211);
          v155 = v162[1];
          if (v155 >= v162[2])
          {
            v156 = sub_119EF40(v162, &v236, &v211);
          }

          else
          {
            sub_1197780(v162[1], &v236, &v211);
            v156 = v155 + 384;
          }

          v162[1] = v156;
          if (__p)
          {
            v219 = __p;
            operator delete(__p);
          }

          if (v216)
          {
            v217 = v216;
            operator delete(v216);
          }

          if (v214)
          {
            v215 = v214;
            operator delete(v214);
          }

          if (v212)
          {
            v213 = v212;
            operator delete(v212);
          }

          if (v200)
          {
            v201 = v200;
            operator delete(v200);
          }

          if (v197)
          {
            v198 = v197;
            operator delete(v197);
          }

          if (v208)
          {
            v209 = v208;
            operator delete(v208);
          }

          if (v205)
          {
            v206 = v205;
            operator delete(v205);
          }

          if (v243)
          {
            v244 = v243;
            operator delete(v243);
          }

          if (v241)
          {
            v242 = v241;
            operator delete(v241);
          }

          if (v239)
          {
            v240 = v239;
            operator delete(v239);
          }

          if (v237)
          {
            v238 = v237;
            operator delete(v237);
          }

          if (v225)
          {
            v226 = v225;
            operator delete(v225);
          }

          if (v222)
          {
            v223 = v222;
            operator delete(v222);
          }

          if (v233)
          {
            v234 = v233;
            operator delete(v233);
          }

          if (v230)
          {
            v231 = v230;
            operator delete(v230);
          }

          v157 = 1;
          v161 = 1;
LABEL_335:
          if (v247)
          {
            operator delete(v247);
          }

          if (v258)
          {
            operator delete(v258);
          }

          if (v255)
          {
            operator delete(v255);
          }

          if (v157)
          {
            goto LABEL_378;
          }

          goto LABEL_5;
        }

        goto LABEL_157;
      }

LABEL_163:
      v84 = a1[1];
      v85 = *(sub_4D1F50(v79, *(&v316 + 1)) + 32);
      LODWORD(v236) = v85;
      BYTE6(v236) = BYTE6(v85);
      WORD2(v236) = WORD2(v85);
      if (sub_100A97C(v84 + 80 * a3, &v236) != -1)
      {
        goto LABEL_186;
      }

      v87 = sub_4D23F8(v316, *(&v316 + 1), v86);
      v88 = *v303;
      v272 += v87;
      v273 += v88;
      v89 = sub_4D1F50(v316, *(&v316 + 1));
      v90 = *v89;
      v91 = &(*v89)[-**v89];
      v92 = *v91;
      if (v92 >= 0x2F && *(v91 + 23) && v90[*(v91 + 23)] == 21)
      {
        v93 = 1;
        if (v92 < 0x9B)
        {
          goto LABEL_172;
        }
      }

      else
      {
        v93 = 0;
        if (v92 < 0x9B)
        {
          goto LABEL_172;
        }
      }

      v94 = *(v91 + 77);
      if (v94)
      {
        v93 |= (*&v90[v94] >> 2) & 2;
      }

LABEL_172:
      v274 |= v93;
      sub_3E3AF4(&v316);
      v95 = v303 + 1;
      v96 = (v308 - v307) >> 3;
      ++v303;
      if (v304 < v96 - 1)
      {
        v97 = v304 + 1;
        v98 = (v307 + 8 * v304);
        do
        {
          if (v95 != *v98)
          {
            break;
          }

          v304 = v97;
          v95 = *(v305 + v97);
          v303 = v95;
          ++v97;
          ++v98;
        }

        while (v96 != v97);
      }
    }

    if ((v320 == v321) == (v314 == v315))
    {
      goto LABEL_186;
    }

LABEL_157:
    v79 = v316;
    goto LABEL_163;
  }

  v66 = *(&v316 + 1);
  v67 = sub_4D1DC0(v316);
  v68 = v66 < v67;
  v69 = v309;
  if (v309)
  {
    goto LABEL_122;
  }

  if (v66 < v67)
  {
    goto LABEL_139;
  }

LABEL_106:
  if (v296 == v297 || v290 == v291)
  {
    if ((v296 == v297) != (v290 == v291))
    {
      goto LABEL_139;
    }
  }

  else
  {
    if (v293 != v287)
    {
      goto LABEL_139;
    }

    if (v292)
    {
      v62 = *(&v292 + 1);
      v63 = sub_4D1DC0(v292);
      v64 = v62 < v63;
      v65 = v286;
      if (!v286)
      {
        if (v62 < v63)
        {
          goto LABEL_139;
        }

        goto LABEL_377;
      }
    }

    else
    {
      v65 = v286;
      if (!v286)
      {
        goto LABEL_377;
      }

      v64 = 0;
    }

    v74 = *(&v286 + 1);
    v75 = sub_4D1DC0(v65);
    if (v74 < v75 && v64)
    {
      v77 = sub_4D1F50(v292, *(&v292 + 1));
      if (v77 != sub_4D1F50(v286, *(&v286 + 1)))
      {
        goto LABEL_139;
      }
    }

    else if (v64 != v74 < v75)
    {
      goto LABEL_139;
    }
  }

LABEL_377:
  v161 = 1;
LABEL_378:
  if (v278)
  {
    v279 = v278;
    operator delete(v278);
  }

  if (v276)
  {
    v277 = v276;
    operator delete(v276);
  }

  if (v284)
  {
    v285 = v284;
    operator delete(v284);
  }

  if (v282)
  {
    v283 = v282;
    operator delete(v282);
  }

  if (v290)
  {
    v291 = v290;
    operator delete(v290);
  }

  if (v288)
  {
    v289 = v288;
    operator delete(v288);
  }

  if (v296)
  {
    v297 = v296;
    operator delete(v296);
  }

  if (v294)
  {
    v295 = v294;
    operator delete(v294);
  }

  if (v301)
  {
    v302 = v301;
    operator delete(v301);
  }

  if (v299)
  {
    v300 = v299;
    operator delete(v299);
  }

  if (v307)
  {
    v308 = v307;
    operator delete(v307);
  }

  if (v305)
  {
    v306 = v305;
    operator delete(v305);
  }

  if (v314)
  {
    v315 = v314;
    operator delete(v314);
  }

  if (v312)
  {
    v313 = v312;
    operator delete(v312);
  }

  if (v320)
  {
    v321 = v320;
    operator delete(v320);
  }

  if (v318)
  {
    v319 = v318;
    operator delete(v318);
  }

  if ((v161 & 1) == 0)
  {
    v158 = *a4;
    if (*a4)
    {
      v159 = a4[1];
      v160 = *a4;
      if (v159 != v158)
      {
        do
        {
          v159 = sub_1135B64(v159 - 48);
        }

        while (v159 != v158);
        v160 = *a4;
      }

      a4[1] = v158;
      operator delete(v160);
    }
  }
}

void sub_119ABF8(_Unwind_Exception *a1)
{
  sub_334D18(&STACK[0x580]);
  sub_3DB674(&STACK[0x5C0]);
  sub_3DB674(&STACK[0x608]);
  sub_334D18(&STACK[0x650]);
  sub_334D18(&STACK[0x690]);
  sub_3DB674((v2 - 240));
  sub_3DB674((v2 - 168));
  sub_1135B08(v1);
  _Unwind_Resume(a1);
}

char *sub_119AFBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 24) = 0u;
  result = (a5 + 24);
  *(a5 + 56) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 72) = 0;
  *(a5 + 80) = -1;
  *(a5 + 184) = 0;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 120) = 0u;
  *(a5 + 136) = 0u;
  *(a5 + 152) = 0u;
  *(a5 + 164) = 0u;
  *a5 = *a2;
  *(a5 + 16) = *(a2 + 16);
  if (a5 != a2)
  {
    sub_11930D0(result, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 4);
    result = sub_11930D0((a5 + 48), *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 4);
  }

  *(a5 + 72) = *a3;
  *(a5 + 88) = *(a3 + 16);
  if (a5 + 72 != a3)
  {
    sub_11930D0((a5 + 96), *(a3 + 24), *(a3 + 32), (*(a3 + 32) - *(a3 + 24)) >> 4);
    result = sub_11930D0((a5 + 120), *(a3 + 48), *(a3 + 56), (*(a3 + 56) - *(a3 + 48)) >> 4);
  }

  *(a5 + 184) = a1[6];
  v11 = a1[4];
  v12 = *(a1 + 10);
  v13 = a1[2];
  *(a5 + 144) = v13;
  *(a5 + 152) = v11;
  v14 = *(a1 + 6);
  *(a5 + 168) = v14;
  *(a5 + 172) = v12;
  v15 = *a1;
  if (a4)
  {
    v16 = v13 + v11;
    v17 = (v15 - v16) & ~((v15 - v16) >> 63);
    v18 = *(a1 + 2);
    v19 = v14 + v12;
    a1[2] = v16;
    *(a1 + 6) = v19;
    *(a1 + 10) = 0;
    v20 = (v18 - v19) & ~((v18 - v19) >> 31);
    a1[4] = 0;
    a1[6] = 0;
  }

  else
  {
    v17 = 0;
    v20 = 0;
    *(a5 + 152) = (v15 - v13) & ~((v15 - v13) >> 63);
    *(a5 + 172) = (*(a1 + 2) - v14) & ~((*(a1 + 2) - v14) >> 31);
  }

  *(a5 + 160) = v17;
  *(a5 + 176) = v20;
  return result;
}

uint64_t sub_119B154(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1[4];
  v4 = a1[5];
  if (v3 == v4)
  {
    return 0;
  }

  v5 = 0;
  v57 = (v4 - v3) >> 3;
  v6 = *a3 / 100.0;
  do
  {
    v61 = *(a1[4] + 8 * v5);
    sub_119916C(a1, a2, v5, &v119);
    v8 = v119;
    v59 = v120;
    if (v119 != v120)
    {
      v58 = v5;
      v9 = 0.0;
      while (1)
      {
        v11 = *v8;
        v10 = v8[1];
        v13 = v8[2];
        v12 = v8[3];
        v14 = v8[4];
        if (v14 != v12)
        {
          if (((v14 - v12) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v16 = v8[6];
        v15 = v8[7];
        if (v15 != v16)
        {
          if (((v15 - v16) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v18 = v8[24];
        v17 = v8[25];
        v20 = v8[26];
        v19 = v8[27];
        v21 = v8[28];
        if (v21 != v19)
        {
          if (((v21 - v19) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v23 = v8[30];
        v22 = v8[31];
        if (v22 != v23)
        {
          if (((v22 - v23) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v24 = v8[12];
        v25 = v8[13];
        if (v25 != v24)
        {
          if (((v25 - v24) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v27 = v8[15];
        v26 = v8[16];
        if (v26 != v27)
        {
          if (((v26 - v27) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v28 = v8[36];
        v29 = v8[37];
        if (v29 != v28)
        {
          if (((v29 - v28) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v60 = v8;
        v31 = v8[39];
        v30 = v8[40];
        if (v30 != v31)
        {
          if (((v30 - v31) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v118 = a1;
        v111[0] = v11;
        v111[1] = v10;
        v111[2] = v13;
        v113 = 0;
        v114 = 0;
        v112 = 0;
        v115 = 0;
        v116 = 0;
        v117 = 0;
        sub_4C36F8(a2, v106);
        v64 = sub_119CD9C(&v118, v111, v106);
        if (__p)
        {
          v110 = __p;
          operator delete(__p);
        }

        if (v107)
        {
          v108 = v107;
          operator delete(v107);
        }

        if (v115)
        {
          v116 = v115;
          operator delete(v115);
        }

        if (v112)
        {
          v113 = v112;
          operator delete(v112);
        }

        v99[0] = v18;
        v99[1] = v17;
        v99[2] = v20;
        v101 = 0;
        v102 = 0;
        v100 = 0;
        v103 = 0;
        v104 = 0;
        v105 = 0;
        sub_4C36F8(v61, v94);
        v63 = sub_119CD9C(&v118, v99, v94);
        if (v97)
        {
          v98 = v97;
          operator delete(v97);
        }

        if (v95)
        {
          v96 = v95;
          operator delete(v95);
        }

        if (v103)
        {
          v104 = v103;
          operator delete(v103);
        }

        if (v100)
        {
          v101 = v100;
          operator delete(v100);
        }

        v32 = sqrt(((v64 - v63) * (v64 - v63) + (HIDWORD(v64) - HIDWORD(v63)) * (HIDWORD(v64) - HIDWORD(v63)))) / 100.0;
        v85 = v11;
        v86 = v10;
        v87 = v13;
        v89 = 0;
        v90 = 0;
        if (v9 < v32)
        {
          v9 = v32;
        }

        v88 = 0;
        v91 = 0;
        v92 = 0;
        v93 = 0;
        sub_4C36F8(a2, &v80);
        if (v83 != v84)
        {
          break;
        }

        v36 = v83;
        if (v83)
        {
          goto LABEL_56;
        }

LABEL_57:
        if (v81)
        {
          v82 = v81;
          operator delete(v81);
        }

        v71 = v18;
        v72 = v17;
        v73 = v20;
        v75 = 0;
        v76 = 0;
        v74 = 0;
        v77 = 0;
        v78 = 0;
        v79 = 0;
        sub_4C36F8(v61, &v66);
        if (v69 == v70)
        {
          v40 = v69;
          if (!v69)
          {
            goto LABEL_65;
          }

LABEL_64:
          v70 = v40;
          operator delete(v40);
          goto LABEL_65;
        }

        v37 = *a1;
        v38 = sub_4D1F50(v18, v17);
        sub_2B7A20(v37, *(v38 + 32) & 0xFFFFFFFFFFFFFFLL, &v121);
        v39 = v122;
        if (v122 != v123)
        {
          sub_31AA0C(&v121);
          v39 = v122;
          if (!v122)
          {
            goto LABEL_63;
          }

LABEL_62:
          v123 = v39;
          operator delete(v39);
          goto LABEL_63;
        }

        if (v122)
        {
          goto LABEL_62;
        }

LABEL_63:
        v40 = v69;
        if (v69)
        {
          goto LABEL_64;
        }

LABEL_65:
        if (v67)
        {
          v68 = v67;
          operator delete(v67);
        }

        v8 += 48;
        if (v60 + 48 == v59)
        {
          v8 = v119;
          v5 = v58;
          if (v9 < v6)
          {
            v6 = v9;
          }

          if (!v119)
          {
            goto LABEL_5;
          }

LABEL_83:
          v7 = v8;
          if (v120 != v8)
          {
            v41 = v5;
            v42 = v120 - 21;
            do
            {
              v44 = v42[12];
              if (v44)
              {
                v42[13] = v44;
                operator delete(v44);
              }

              v45 = v42[9];
              if (v45)
              {
                v42[10] = v45;
                operator delete(v45);
              }

              v46 = v42[3];
              if (v46)
              {
                v42[4] = v46;
                operator delete(v46);
              }

              v47 = *v42;
              if (*v42)
              {
                v42[1] = v47;
                operator delete(v47);
              }

              v48 = *(v42 - 12);
              if (v48)
              {
                *(v42 - 11) = v48;
                operator delete(v48);
              }

              v49 = *(v42 - 15);
              if (v49)
              {
                *(v42 - 14) = v49;
                operator delete(v49);
              }

              v50 = *(v42 - 21);
              if (v50)
              {
                *(v42 - 20) = v50;
                operator delete(v50);
              }

              v51 = *(v42 - 24);
              if (v51)
              {
                *(v42 - 23) = v51;
                operator delete(v51);
              }

              v43 = v42 - 27;
              v42 -= 48;
            }

            while (v43 != v8);
            v7 = v119;
            v5 = v41;
          }

          v120 = v8;
          operator delete(v7);
          goto LABEL_5;
        }
      }

      v33 = *a1;
      v34 = sub_4D1F50(v11, v10);
      sub_2B7A20(v33, *(v34 + 32) & 0xFFFFFFFFFFFFFFLL, &v121);
      v35 = v122;
      if (v122 == v123)
      {
        if (!v122)
        {
LABEL_55:
          v36 = v83;
          if (!v83)
          {
            goto LABEL_57;
          }

LABEL_56:
          v84 = v36;
          operator delete(v36);
          goto LABEL_57;
        }
      }

      else
      {
        sub_31AA0C(&v121);
        v35 = v122;
        if (!v122)
        {
          goto LABEL_55;
        }
      }

      v123 = v35;
      operator delete(v35);
      goto LABEL_55;
    }

    if (v6 > 0.0)
    {
      v6 = 0.0;
    }

    if (v119)
    {
      goto LABEL_83;
    }

LABEL_5:
    ++v5;
  }

  while (v5 != v57);
  if (v6 == 1.79769313e308)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v53 = v6 * 100.0;
  if (v6 * 100.0 >= 0.0)
  {
    v54 = v6 * 100.0;
    if (v53 < 4.50359963e15)
    {
      v55 = (v53 + v53) + 1;
LABEL_110:
      v54 = (v55 >> 1);
    }
  }

  else
  {
    v54 = v6 * 100.0;
    if (v53 > -4.50359963e15)
    {
      v55 = (v53 + v53) - 1 + (((v53 + v53) - 1) >> 63);
      goto LABEL_110;
    }
  }

  if (v54 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v53 >= 0.0)
  {
    if (v53 < 4.50359963e15)
    {
      v56 = (v53 + v53) + 1;
      return (v56 >> 1);
    }
  }

  else if (v53 > -4.50359963e15)
  {
    v56 = (v53 + v53) - 1 + (((v53 + v53) - 1) >> 63);
    return (v56 >> 1);
  }

  return v53;
}

void sub_119CA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, void *__p, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = *(v72 - 168);
  if (v74)
  {
    *(v72 - 160) = v74;
    operator delete(v74);
  }

  sub_3DB674(&a63);
  sub_3DB674(&a72);
  if (a18)
  {
    operator delete(a18);
    v75 = a14;
    if (!a14)
    {
LABEL_5:
      v76 = a19;
      if (!a19)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v75 = a14;
    if (!a14)
    {
      goto LABEL_5;
    }
  }

  operator delete(v75);
  v76 = a19;
  if (!a19)
  {
LABEL_6:
    v77 = a15;
    if (!a15)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v76);
  v77 = a15;
  if (!a15)
  {
LABEL_7:
    v78 = a23;
    if (!a23)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(v77);
  v78 = a23;
  if (!a23)
  {
LABEL_8:
    v79 = a22;
    if (!a22)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v78);
  v79 = a22;
  if (!a22)
  {
LABEL_9:
    v80 = a24;
    if (!a24)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(v79);
  v80 = a24;
  if (!a24)
  {
LABEL_10:
    v81 = __p;
    if (!__p)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_21:
  operator delete(v80);
  v81 = __p;
  if (!__p)
  {
LABEL_12:
    if (*(v72 - 200))
    {
      sub_21E9284(v72 - 192);
    }

    _Unwind_Resume(a1);
  }

LABEL_11:
  operator delete(v81);
  goto LABEL_12;
}

unint64_t sub_119CD9C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = sub_3E6794(a2, a3);
  v6 = *v4;
  if (!v5)
  {
    v9 = sub_4D1F50(*a2, *(a2 + 8));
    sub_2B7A20(v6, *(v9 + 32) & 0xFFFFFFFFFFFFFFLL, &v32);
    v10 = __p;
    if (__p == v34)
    {
      v13 = 0xFFFFFFFF00000000;
      v14 = 0xFFFFFFFFLL;
      if (!__p)
      {
        return v13 | v14;
      }
    }

    else
    {
      v11 = sub_31A76C(&v32);
      v12 = v11;
      v13 = v11 & 0xFFFFFFFF00000000;
      v10 = __p;
      v14 = v12;
      if (!__p)
      {
        return v13 | v14;
      }
    }

    v34 = v10;
    operator delete(v10);
    return v13 | v14;
  }

  v24 = *a2;
  v7 = *(a2 + 24);
  v25 = *(a2 + 16);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v8 = *(a2 + 32);
  if (v8 != v7)
  {
    if (((v8 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  v17 = *(a2 + 48);
  v16 = *(a2 + 56);
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_119EDAC(&v24, &v32);
  v18 = sub_4D1F50(v32, __p);
  sub_2B7A20(v6, *(v18 + 32) & 0xFFFFFFFFFFFFFFLL, v39);
  v19 = v40;
  if (v40 == v41)
  {
    v22 = 0xFFFFFFFF00000000;
    v23 = 0xFFFFFFFFLL;
    if (!v40)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v20 = sub_31AA0C(v39);
  v21 = v20;
  v22 = v20 & 0xFFFFFFFF00000000;
  v19 = v40;
  v23 = v21;
  if (v40)
  {
LABEL_14:
    v41 = v19;
    operator delete(v19);
  }

LABEL_15:
  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  result = v22 | v23;
  if (v26)
  {
    v27 = v26;
    operator delete(v26);
    return v22 | v23;
  }

  return result;
}

void sub_119CFF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  v23 = *(v21 - 96);
  if (v23)
  {
    *(v21 - 88) = v23;
    operator delete(v23);
    sub_3DB674(&a19);
    sub_3DB674(&a9);
    _Unwind_Resume(a1);
  }

  sub_3DB674(&a19);
  sub_3DB674(&a9);
  _Unwind_Resume(a1);
}

void sub_119D07C(void *a1, uint64_t a2)
{
  v6 = a1[1];
  v5 = a1[2];
  v4 = a1 + 1;
  if (v5 - v6 == -80)
  {
    while (v5 != v6)
    {
      v7 = *(v5 - 8);
      if (v7)
      {
        free(v7);
      }

      v5 -= 80;
    }

    a1[2] = v6;
  }

  else
  {
    sub_119E724(v4, 1uLL);
    v6 = a1[2];
  }

  *(v6 - 55) = 1;
  *(v6 - 16) = 0xFFFFFFFF00000000;
  v8 = (v6 - 16);
  v9 = malloc_type_malloc(8 * *(v6 - 24), 0x100004000313F17uLL);
  *(v6 - 8) = v9;
  v10 = (v6 - 80);
  v11 = *(v6 - 24);
  if (v11)
  {
    v12 = (v9 + 8 * v11);
    v13 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v13 < 0xF)
    {
      goto LABEL_96;
    }

    if (v9 < v6 - 8 && v8 < v12)
    {
      goto LABEL_96;
    }

    v15 = v13 + 1;
    v16 = (v13 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v17 = vld1q_dup_f64(v8);
    v18 = v9 + 1;
    v19 = v16;
    do
    {
      v18[-1] = v17;
      *v18 = v17;
      v18 += 2;
      v19 -= 4;
    }

    while (v19);
    v9 = (v9 + 8 * v16);
    if (v15 != v16)
    {
LABEL_96:
      do
      {
        v9->f64[0] = *v8;
        v9 = (v9 + 8);
      }

      while (v9 != v12);
    }
  }

  v20 = sub_4C4B5C(a2);
  if (!v20 || (*(v6 - 56) & 1) != 0)
  {
    sub_119588C(v6 - 80);
  }

  v21 = *(v6 - 32);
  if (v20 > v21)
  {
    sub_11955C0(v6 - 80, v20 - v21);
  }

  sub_4C6594(a2, &v64);
  v56 = v64;
  v57 = v65;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  if (v67 != v66)
  {
    if (((v67 - v66) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v61 = 0;
  v62 = 0;
  v63 = 0;
  if (v69 != v68)
  {
    if (((v69 - v68) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v48 = v70;
  v49 = v71;
  __p = 0;
  v51 = 0;
  v52 = 0;
  if (v73 != v72)
  {
    if (((v73 - v72) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v53 = 0;
  v54 = 0;
  v55 = 0;
  if (v75 != v74)
  {
    if (((v75 - v74) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  while (1)
  {
    v22 = v53;
    if (v61 == v62 || v53 == v54)
    {
      if ((v61 == v62) == (v53 == v54))
      {
        goto LABEL_58;
      }

      goto LABEL_42;
    }

    v24 = v56;
    if (v57 == v49)
    {
      break;
    }

LABEL_48:
    v29 = sub_4D1F50(v24, *(&v56 + 1));
    v47 = *(v29 + 32) | ((*(v29 + 36) & 0x1FFFFFFF) << 32);
    sub_11969DC(v10, &v47, v46);
    sub_3E3AF4(&v56);
  }

  if (v56)
  {
    v25 = *(&v56 + 1);
    v26 = sub_4D1DC0(v56);
    v27 = v25 < v26;
    v28 = v48;
    if (!v48)
    {
      if (v25 >= v26)
      {
        goto LABEL_58;
      }

      goto LABEL_42;
    }
  }

  else
  {
    v28 = v48;
    if (!v48)
    {
      goto LABEL_58;
    }

    v27 = 0;
  }

  v30 = *(&v48 + 1);
  v31 = sub_4D1DC0(v28);
  if (v30 < v31 && v27)
  {
    v33 = sub_4D1F50(v56, *(&v56 + 1));
    if (v33 == sub_4D1F50(v28, v30))
    {
      goto LABEL_58;
    }

    goto LABEL_42;
  }

  if (v27 != v30 < v31)
  {
LABEL_42:
    v24 = v56;
    goto LABEL_48;
  }

LABEL_58:
  if (v22)
  {
    operator delete(v22);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  v35 = a1[5];
  v34 = a1[6];
  if (v35 >= v34)
  {
    v37 = a1[4];
    v38 = v35 - v37;
    v39 = (v35 - v37) >> 3;
    v40 = v39 + 1;
    if ((v39 + 1) >> 61)
    {
      sub_1794();
    }

    v41 = v34 - v37;
    if (v41 >> 2 > v40)
    {
      v40 = v41 >> 2;
    }

    if (v41 >= 0x7FFFFFFFFFFFFFF8)
    {
      v42 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v42 = v40;
    }

    if (v42)
    {
      if (!(v42 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v43 = (v35 - v37) >> 3;
    v44 = (8 * v39);
    v45 = (8 * v39 - 8 * v43);
    *v44 = a2;
    v36 = v44 + 1;
    memcpy(v45, v37, v38);
    a1[4] = v45;
    a1[5] = v36;
    a1[6] = 0;
    if (v37)
    {
      operator delete(v37);
    }
  }

  else
  {
    *v35 = a2;
    v36 = v35 + 1;
  }

  a1[5] = v36;
}

void sub_119D5B0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (v32)
  {
    operator delete(v32);
  }

  sub_4A48(a1);
}

void sub_119D5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  sub_3DB674(&a15);
  sub_3DB674(&a25);
  sub_3DB6B8(&a35);
  _Unwind_Resume(a1);
}

uint64_t sub_119D628(uint64_t a1, uint64_t a2, void *a3)
{
  sub_4C6594(a2, &v14);
  sub_43DE60(&v14, &v26);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  v14 = v26;
  v15 = v27;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (v29 != v28)
  {
    if (((v29 - v28) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (v31 != v30)
  {
    if (((v31 - v30) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = v32;
  if (v34 != v33)
  {
    if (((v34 - v33) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v36 != v35)
  {
    if (((v36 - v35) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = 0;
  v7 = 0;
  while (v19 != v20 && v6 < *a3)
  {
    v9 = sub_4D23F8(v14, *(&v14 + 1), v5);
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    if (v10 != v11)
    {
      while (1)
      {
        v12 = sub_4D1F50(v14, *(&v14 + 1));
        v37[0] = *(v12 + 32) | ((*(v12 + 36) & 0x1FFFFFFF) << 32);
        if (sub_10550EC(v10, v37) != -1)
        {
          break;
        }

        v10 += 80;
        if (v10 == v11)
        {
          goto LABEL_23;
        }
      }

      v7 += v9;
    }

LABEL_23:
    v6 += v9;
    sub_3E3AF4(&v14);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  return v7;
}

void sub_119DA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_3DB6B8(va);
  _Unwind_Resume(a1);
}

void sub_119DA34(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (v26)
  {
    operator delete(v26);
  }

  sub_4A48(a1);
}

void sub_119DA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  sub_3DB6B8(&a38);
  _Unwind_Resume(a1);
}

void sub_119DAAC(void *a1, uint64_t a2)
{
  v6 = a1[1];
  v5 = a1[2];
  v4 = a1 + 1;
  if (v5 - v6 == -80)
  {
    while (v5 != v6)
    {
      v7 = *(v5 - 8);
      if (v7)
      {
        free(v7);
      }

      v5 -= 80;
    }

    a1[2] = v6;
  }

  else
  {
    sub_119EA44(v4, 1uLL);
    v6 = a1[2];
  }

  *(v6 - 55) = 1;
  *(v6 - 16) = 0x1000000000000;
  v8 = (v6 - 16);
  v9 = malloc_type_malloc(8 * *(v6 - 24), 0x100004087442A64uLL);
  *(v6 - 8) = v9;
  v10 = v6 - 80;
  v11 = *(v6 - 24);
  if (v11)
  {
    v12 = (v9 + 8 * v11);
    v13 = (v11 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v13 < 0xF)
    {
      goto LABEL_98;
    }

    if (v9 < v6 - 8 && v8 < v12)
    {
      goto LABEL_98;
    }

    v15 = v13 + 1;
    v16 = (v13 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v17 = vld1q_dup_f64(v8);
    v18 = v9 + 1;
    v19 = v16;
    do
    {
      v18[-1] = v17;
      *v18 = v17;
      v18 += 2;
      v19 -= 4;
    }

    while (v19);
    v9 = (v9 + 8 * v16);
    if (v15 != v16)
    {
LABEL_98:
      do
      {
        v9->f64[0] = *v8;
        v9 = (v9 + 8);
      }

      while (v9 != v12);
    }
  }

  v20 = sub_4C4B5C(a2);
  if (!v20 || (*(v6 - 56) & 1) != 0)
  {
    sub_100A844(v6 - 80);
  }

  v21 = *(v6 - 32);
  if (v20 > v21)
  {
    sub_100A578(v6 - 80, v20 - v21);
  }

  sub_4C6594(a2, &v65);
  v57 = v65;
  v58 = v66;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  if (v68 != v67)
  {
    if (((v68 - v67) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v62 = 0;
  v63 = 0;
  v64 = 0;
  if (v70 != v69)
  {
    if (((v70 - v69) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v49 = v71;
  v50 = v72;
  __p = 0;
  v52 = 0;
  v53 = 0;
  if (v74 != v73)
  {
    if (((v74 - v73) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  if (v76 != v75)
  {
    if (((v76 - v75) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  while (1)
  {
    v22 = v54;
    if (v62 == v63 || v54 == v55)
    {
      if ((v62 == v63) == (v54 == v55))
      {
        goto LABEL_60;
      }

      goto LABEL_43;
    }

    v24 = v57;
    if (v58 == v50)
    {
      break;
    }

LABEL_49:
    v29 = sub_4D1F50(v24, *(&v57 + 1));
    v30 = *(v29 + 36);
    LODWORD(v48) = *(v29 + 32);
    WORD2(v48) = v30;
    BYTE6(v48) = (v30 & 0x20000000) == 0;
    sub_100A578(v10, 1);
    if (sub_100A97C(v10, &v48) == -1)
    {
      sub_100AA78(v10, &v48, v31, v77);
    }

    sub_3E3AF4(&v57);
  }

  if (v57)
  {
    v25 = *(&v57 + 1);
    v26 = sub_4D1DC0(v57);
    v27 = v25 < v26;
    v28 = v49;
    if (!v49)
    {
      if (v25 >= v26)
      {
        goto LABEL_60;
      }

      goto LABEL_43;
    }
  }

  else
  {
    v28 = v49;
    if (!v49)
    {
      goto LABEL_60;
    }

    v27 = 0;
  }

  v32 = *(&v49 + 1);
  v33 = sub_4D1DC0(v28);
  if (v32 < v33 && v27)
  {
    v35 = sub_4D1F50(v57, *(&v57 + 1));
    if (v35 == sub_4D1F50(v28, v32))
    {
      goto LABEL_60;
    }

    goto LABEL_43;
  }

  if (v27 != v32 < v33)
  {
LABEL_43:
    v24 = v57;
    goto LABEL_49;
  }

LABEL_60:
  if (v22)
  {
    operator delete(v22);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  v37 = a1[5];
  v36 = a1[6];
  if (v37 >= v36)
  {
    v39 = a1[4];
    v40 = v37 - v39;
    v41 = (v37 - v39) >> 3;
    v42 = v41 + 1;
    if ((v41 + 1) >> 61)
    {
      sub_1794();
    }

    v43 = v36 - v39;
    if (v43 >> 2 > v42)
    {
      v42 = v43 >> 2;
    }

    if (v43 >= 0x7FFFFFFFFFFFFFF8)
    {
      v44 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v44 = v42;
    }

    if (v44)
    {
      if (!(v44 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v45 = (v37 - v39) >> 3;
    v46 = (8 * v41);
    v47 = (8 * v41 - 8 * v45);
    *v46 = a2;
    v38 = v46 + 1;
    memcpy(v47, v39, v40);
    a1[4] = v47;
    a1[5] = v38;
    a1[6] = 0;
    if (v39)
    {
      operator delete(v39);
    }
  }

  else
  {
    *v37 = a2;
    v38 = v37 + 1;
  }

  a1[5] = v38;
}

void sub_119E014(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (v28)
  {
    operator delete(v28);
  }

  sub_4A48(a1);
}

void sub_119E060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_3DB674(&a11);
  sub_3DB674(&a21);
  sub_3DB6B8(&a31);
  _Unwind_Resume(a1);
}

uint64_t sub_119E08C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_4C6594(a2, &v15);
  sub_43DE60(&v15, &v27);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  v15 = v27;
  v16 = v28;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (v30 != v29)
  {
    if (((v30 - v29) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (v32 != v31)
  {
    if (((v32 - v31) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v5 = v33;
  if (v35 != v34)
  {
    if (((v35 - v34) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  if (v37 != v36)
  {
    if (((v37 - v36) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = 0;
  v7 = 0;
  while (v20 != v21 && v6 < *a3)
  {
    v9 = sub_4D23F8(v15, *(&v15 + 1), v5);
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    if (v10 != v11)
    {
      while (1)
      {
        v12 = sub_4D1F50(v15, *(&v15 + 1));
        v13 = *(v12 + 36);
        LODWORD(v38) = *(v12 + 32);
        WORD2(v38) = v13;
        BYTE6(v38) = (v13 & 0x20000000) == 0;
        if (sub_100A97C(v10, &v38) != -1)
        {
          break;
        }

        v10 += 80;
        if (v10 == v11)
        {
          goto LABEL_23;
        }
      }

      v7 += v9;
    }

LABEL_23:
    v6 += v9;
    sub_3E3AF4(&v15);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  return v7;
}

void sub_119E490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_3DB6B8(va);
  _Unwind_Resume(a1);
}

void sub_119E4A4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (v26)
  {
    operator delete(v26);
  }

  sub_4A48(a1);
}

void sub_119E4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_3DB674(&a9);
  sub_3DB674(&a19);
  sub_3DB6B8(&a38);
  _Unwind_Resume(a1);
}

uint64_t sub_119E51C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5FC64(a2);
  v5 = sub_445EF4(a2);
  if (v4 == v5)
  {
LABEL_2:
    if (v4 == sub_445EF4(a2))
    {
      return 0;
    }
  }

  else
  {
    v6 = v5;
    do
    {
      v9 = sub_4D2130(v4);
      v10 = *(v9 + 112);
      if (v10)
      {
        if (v10 == 2)
        {
          v7 = *(v9 + 104);
          if (v7 <= 0xFFFFFFFEFFFFFFFFLL && v7 != 0)
          {
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 != 1)
          {
LABEL_46:
            sub_5AF20();
          }

          if (*(v9 + 104) != -1)
          {
            goto LABEL_2;
          }
        }
      }

      v4 += 1096;
    }

    while (v4 != v6);
    v4 = v6;
    if (v6 == sub_445EF4(a2))
    {
      return 0;
    }
  }

  v11 = sub_4D2130(v4);
  v12 = *(v11 + 112);
  v27 = *(v11 + 104);
  v28 = v12;
  if (!v12)
  {
    return 0;
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  while (v13 != v14)
  {
    v15 = *v13;
    v16 = sub_5FC64(*v13);
    v17 = sub_445EF4(v15);
    if (v16 != v17)
    {
      v18 = v17;
      do
      {
        v21 = sub_4D2130(v16);
        v22 = *(v21 + 112);
        if (v22)
        {
          if (v22 == 2)
          {
            v19 = *(v21 + 104);
            if (v19 <= 0xFFFFFFFEFFFFFFFFLL && v19 != 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            if (v22 != 1)
            {
              goto LABEL_46;
            }

            if (*(v21 + 104) != -1)
            {
              goto LABEL_36;
            }
          }
        }

        v16 += 1096;
      }

      while (v16 != v18);
      v16 = v18;
    }

LABEL_36:
    if (v16 != sub_445EF4(v15))
    {
      v23 = sub_4D2130(v16);
      v24 = *(v23 + 112);
      v29[0] = *(v23 + 104);
      v29[1] = v24;
      if (v24)
      {
        if (v24 != -1 && v28 == v24)
        {
          v31 = &v30;
          if (((off_2675B40[v24])(&v31, v29, &v27) & 1) == 0)
          {
            return 0;
          }
        }

        else if (v28 == v24)
        {
          return 0;
        }
      }
    }

    ++v13;
  }

  return 1;
}

void sub_119E724(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = 0;
      do
      {
        v10 = v3 + v9;
        *(v10 + 26) = 0;
        *(v10 + 16) = 0x3E4CCCCD3F000000;
        *(v10 + 28) = 0;
        *(v10 + 32) = 0;
        *(v10 + 36) = -1;
        *(v10 + 40) = 0;
        *(v10 + 48) = 0;
        *(v10 + 56) = 32;
        *(v10 + 64) = 0xFFFFFFFF00000000;
        *(v10 + 72) = 0;
        *v10 = xmmword_2267060;
        v9 += 80;
        *(v10 + 24) = 0;
      }

      while (80 * a2 != v9);
      a1[1] = v3 + 80 * a2;
    }

    else
    {
      a1[1] = v3;
    }
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 4);
    v6 = v5 + a2;
    if (v5 + a2 > 0x333333333333333)
    {
      sub_1794();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x199999999999999)
    {
      v8 = 0x333333333333333;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x333333333333333)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = 0;
    v12 = 80 * v5;
    v13 = 80 * v5 + 80 * a2;
    do
    {
      v14 = v12 + v11;
      *(v14 + 26) = 0;
      *(v14 + 16) = 0x3E4CCCCD3F000000;
      *(v14 + 28) = 0;
      *(v14 + 32) = 0;
      *(v14 + 36) = -1;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 32;
      *(v14 + 64) = 0xFFFFFFFF00000000;
      *(v14 + 72) = 0;
      *v14 = xmmword_2267060;
      v11 += 80;
      *(v14 + 24) = 0;
    }

    while (80 * a2 != v11);
    v21 = v12 + 80 * a2;
    v15 = *a1;
    v16 = a1[1];
    v17 = v12 + *a1 - v16;
    v22 = v17;
    if (*a1 != v16)
    {
      v18 = v12 + v15 - v16;
      v19 = v15;
      do
      {
        sub_D621A0(v18, v19, 0x20uLL);
        v19 += 80;
        v18 = v22 + 80;
        v22 += 80;
      }

      while (v19 != v16);
      do
      {
        v20 = *(v15 + 9);
        if (v20)
        {
          free(v20);
        }

        v15 += 80;
      }

      while (v15 != v16);
      v15 = *a1;
      v13 = v21;
    }

    *a1 = v17;
    a1[1] = v13;
    a1[2] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }
}

void sub_119E9BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_D6253C(va1);
  sub_119E9D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_119E9D8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 80;
        *(a1 + 16) = v2 - 80;
        v5 = *(v2 - 8);
        if (!v5)
        {
          break;
        }

        free(v5);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 80;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_119EA44(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v3) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = 0;
      do
      {
        v10 = v3 + v9;
        *(v10 + 26) = 0;
        *(v10 + 16) = 0x3E4CCCCD3F000000;
        *(v10 + 28) = 0;
        *(v10 + 32) = 0;
        *(v10 + 36) = 0;
        *(v10 + 38) = 1;
        *(v10 + 40) = 0;
        *(v10 + 48) = 0;
        *(v10 + 56) = 32;
        *(v10 + 64) = 0;
        *(v10 + 68) = 0;
        *(v10 + 70) = 1;
        *(v10 + 72) = 0;
        *v10 = xmmword_2267060;
        v9 += 80;
        *(v10 + 24) = 0;
      }

      while (80 * a2 != v9);
      a1[1] = v3 + 80 * a2;
    }

    else
    {
      a1[1] = v3;
    }
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 4);
    v6 = v5 + a2;
    if (v5 + a2 > 0x333333333333333)
    {
      sub_1794();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x199999999999999)
    {
      v8 = 0x333333333333333;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x333333333333333)
      {
        operator new();
      }

      sub_1808();
    }

    v11 = 0;
    v12 = 80 * v5;
    v13 = 80 * v5 + 80 * a2;
    do
    {
      v14 = v12 + v11;
      *(v14 + 26) = 0;
      *(v14 + 16) = 0x3E4CCCCD3F000000;
      *(v14 + 28) = 0;
      *(v14 + 32) = 0;
      *(v14 + 36) = 0;
      *(v14 + 38) = 1;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 32;
      *(v14 + 64) = 0;
      *(v14 + 68) = 0;
      *(v14 + 70) = 1;
      *(v14 + 72) = 0;
      *v14 = xmmword_2267060;
      v11 += 80;
      *(v14 + 24) = 0;
    }

    while (80 * a2 != v11);
    v21 = v12 + 80 * a2;
    v15 = *a1;
    v16 = a1[1];
    v17 = v12 + *a1 - v16;
    v22 = v17;
    if (*a1 != v16)
    {
      v18 = v12 + v15 - v16;
      v19 = v15;
      do
      {
        sub_FE7F78(v18, v19, 0x20uLL);
        v19 += 80;
        v18 = v22 + 80;
        v22 += 80;
      }

      while (v19 != v16);
      do
      {
        v20 = *(v15 + 9);
        if (v20)
        {
          free(v20);
        }

        v15 += 80;
      }

      while (v15 != v16);
      v15 = *a1;
      v13 = v21;
    }

    *a1 = v17;
    a1[1] = v13;
    a1[2] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }
}

void sub_119ECEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_D6253C(va1);
  sub_119E9D8(va);
  _Unwind_Resume(a1);
}

void *sub_119ED08(void *a1)
{
  v2 = a1[31];
  if (v2)
  {
    a1[32] = v2;
    operator delete(v2);
  }

  v3 = a1[28];
  if (v3)
  {
    a1[29] = v3;
    operator delete(v3);
  }

  v4 = a1[23];
  if (v4)
  {
    a1[24] = v4;
    operator delete(v4);
  }

  v5 = a1[20];
  if (v5)
  {
    a1[21] = v5;
    operator delete(v5);
  }

  v6 = a1[14];
  if (v6)
  {
    a1[15] = v6;
    operator delete(v6);
  }

  v7 = a1[11];
  if (v7)
  {
    a1[12] = v7;
    operator delete(v7);
  }

  v8 = a1[6];
  if (v8)
  {
    a1[7] = v8;
    operator delete(v8);
  }

  v9 = a1[3];
  if (v9)
  {
    a1[4] = v9;
    operator delete(v9);
  }

  return a1;
}

__n128 sub_119EDAC@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *(a1 + 2);
  v19 = *(a1 + 24);
  v20 = *a1;
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  v4 = *(a1 + 5);
  v3 = *(a1 + 6);
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  v18 = *(a1 + 56);
  *(a1 + 7) = 0;
  *(a1 + 8) = 0;
  if (v21)
  {
    v5 = v21 - 1;
    v6 = (16 * v21 + v3 - 16);
    v7 = v19 + 16 * v21;
    do
    {
      if (v20)
      {
        v9 = sub_4D1DC0(v20);
        v10 = *(&v20 + 1) < v9;
        v11 = *v7;
        if (!*v7)
        {
          if (*(&v20 + 1) < v9)
          {
            break;
          }

          goto LABEL_4;
        }
      }

      else
      {
        v11 = *v7;
        if (!*v7)
        {
          goto LABEL_4;
        }

        v10 = 0;
      }

      v12 = *(v7 + 8);
      v13 = sub_4D1DC0(v11);
      if (v12 < v13 && v10)
      {
        v15 = sub_4D1F50(v20, *(&v20 + 1));
        if (v15 != sub_4D1F50(*v7, *(v7 + 8)))
        {
          break;
        }
      }

      else if ((v10 ^ (v12 < v13)))
      {
        break;
      }

LABEL_4:
      v21 = v5;
      v8 = *v6--;
      v20 = v8;
      --v5;
      v7 -= 16;
    }

    while (v5 != -1);
  }

  --*(&v20 + 1);
  *(a2 + 16) = v21;
  *a2 = v20;
  *&v16 = v4;
  *(&v16 + 1) = v3;
  *(a2 + 24) = v19;
  *(a2 + 40) = v16;
  result = v18;
  *(a2 + 56) = v18;
  return result;
}

void sub_119EF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_3DB674(va);
  _Unwind_Resume(a1);
}

uint64_t sub_119EF40(void *a1, __int128 *a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 7);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 7) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 7);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 7) >= 0x55555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0xAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v22 = ((a1[1] - *a1) >> 7 << 7);
  sub_1197780(v22, a2, a3);
  v7 = 384 * v3 + 384;
  v8 = *a1;
  v9 = a1[1];
  v10 = v22 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v22 + *a1 - v9;
    do
    {
      v13 = v11[2];
      *v12 = *v11;
      *(v12 + 2) = v13;
      *(v12 + 3) = 0;
      *(v12 + 4) = 0;
      *(v12 + 5) = 0;
      *(v12 + 24) = *(v11 + 3);
      *(v12 + 5) = v11[5];
      v11[3] = 0;
      v11[4] = 0;
      v11[5] = 0;
      *(v12 + 6) = 0;
      *(v12 + 7) = 0;
      *(v12 + 8) = 0;
      *(v12 + 3) = *(v11 + 3);
      *(v12 + 8) = v11[8];
      v11[6] = 0;
      v11[7] = 0;
      v11[8] = 0;
      v14 = v11[11];
      *(v12 + 72) = *(v11 + 9);
      *(v12 + 11) = v14;
      *(v12 + 12) = 0;
      *(v12 + 13) = 0;
      *(v12 + 14) = 0;
      *(v12 + 6) = *(v11 + 6);
      *(v12 + 14) = v11[14];
      v11[12] = 0;
      v11[13] = 0;
      v11[14] = 0;
      *(v12 + 15) = 0;
      *(v12 + 16) = 0;
      *(v12 + 17) = 0;
      *(v12 + 120) = *(v11 + 15);
      *(v12 + 17) = v11[17];
      v11[15] = 0;
      v11[16] = 0;
      v11[17] = 0;
      v15 = *(v11 + 9);
      v16 = *(v11 + 11);
      *(v12 + 10) = *(v11 + 10);
      *(v12 + 11) = v16;
      *(v12 + 9) = v15;
      v17 = v11[26];
      *(v12 + 12) = *(v11 + 12);
      *(v12 + 26) = v17;
      *(v12 + 27) = 0;
      *(v12 + 28) = 0;
      *(v12 + 29) = 0;
      *(v12 + 216) = *(v11 + 27);
      *(v12 + 29) = v11[29];
      v11[27] = 0;
      v11[28] = 0;
      v11[29] = 0;
      *(v12 + 30) = 0;
      *(v12 + 31) = 0;
      *(v12 + 32) = 0;
      *(v12 + 15) = *(v11 + 15);
      *(v12 + 32) = v11[32];
      v11[30] = 0;
      v11[31] = 0;
      v11[32] = 0;
      v18 = v11[35];
      *(v12 + 264) = *(v11 + 33);
      *(v12 + 35) = v18;
      *(v12 + 36) = 0;
      *(v12 + 37) = 0;
      *(v12 + 38) = 0;
      *(v12 + 18) = *(v11 + 18);
      *(v12 + 38) = v11[38];
      v11[36] = 0;
      v11[37] = 0;
      v11[38] = 0;
      *(v12 + 39) = 0;
      *(v12 + 40) = 0;
      *(v12 + 41) = 0;
      *(v12 + 39) = v11[39];
      *(v12 + 20) = *(v11 + 20);
      v11[39] = 0;
      v11[40] = 0;
      v11[41] = 0;
      v19 = *(v11 + 21);
      v20 = *(v11 + 23);
      *(v12 + 22) = *(v11 + 22);
      *(v12 + 23) = v20;
      *(v12 + 21) = v19;
      v11 += 48;
      v12 += 384;
    }

    while (v11 != v9);
    do
    {
      v8 = sub_1135B64(v8) + 48;
    }

    while (v8 != v9);
    v8 = *a1;
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

void sub_119F1F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_119F208(va);
  _Unwind_Resume(a1);
}

uint64_t sub_119F208(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 384;
    sub_1135B64((i - 384));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_119F2A8(void *a1@<X8>)
{
  *v2 = v1;

  operator delete(a1);
}

uint64_t sub_119F2C0(void *a1, uint64_t a2)
{
  v3 = (sub_5FC64(a1) + 88 * a2);
  v4 = v3 + 11;
  if (v3 > sub_5FC64(a1))
  {
    v5 = v3 - 11;
    while (v4 < sub_445EF4(a1))
    {
      v6 = *(v5 + 9);
      v7 = *(v5 + 19);
      if (((((v6 & 0x20000000) == 0) ^ ((v7 & 0x20000000u) >> 29)) & 1) == 0 && ((v7 ^ v6) & 0x1FFFFFFF) == 0 && *(v5 + 8) == *(v5 + 18))
      {
        break;
      }

      v9 = v4[9];
      v10 = v4[19];
      if (((v9 & 0x20000000) == 0) == (v10 & 0x20000000u) >> 29)
      {
        v11 = v4[18];
        if (((v10 ^ v9) & 0x1FFFFFFF) == 0 && v4[8] == v11)
        {
          break;
        }
      }

      else
      {
        v11 = v4[18];
      }

      if (*(v5 + 8) == v11 && ((v10 ^ v6) & 0x1FFFFFFF) == 0)
      {
        v3 -= 11;
        v4 += 22;
        v5 -= 11;
        if (v3 > sub_5FC64(a1))
        {
          continue;
        }
      }

      break;
    }
  }

  v12 = sub_5FC64(a1);
  v13 = sub_445EF4(a1);
  v14 = v13;
  v15 = v4 != v13;
  if (v3 == v12 && v4 == v13)
  {
    v20 = (*(sub_F6F6F4(a1) + 36) & 0x20000000) == 0;
    if (((v20 ^ ((*(sub_F6F70C(a1) + 39) & 0x20) >> 5)) & 1) == 0)
    {
      v49 = sub_F6A040(a1);
      if (v49 >= sub_F6A054(a1))
      {
        v75 = sub_F6F638(a1);
        v76 = sub_F6F6F4(a1);
        v77 = sub_F692C8(a1, 0);
        sub_F69060(a1, v75, v76, v77);
        v78 = sub_F69058(a1);
        v79 = *(v78 + 16);
        v92 = *v78;
        v80 = *(v78 + 80);
        v82 = *(v78 + 48);
        v81 = *(v78 + 64);
        v83 = *(v78 + 32);
        v93 = v79;
        v94 = v83;
        v97 = v80;
        v95 = v82;
        v96 = v81;
        v74 = 1000000000 - v92;
        goto LABEL_64;
      }

      v50 = sub_F6F698(a1);
      v51 = sub_F6F70C(a1);
      v52 = sub_F69D08(a1);
      v53 = sub_F692C8(a1, v52);
      sub_F69060(a1, v50, v51, v53);
      v54 = sub_73F1C(a1);
      v55 = *(v54 + 16);
      v92 = *v54;
      v56 = *(v54 + 80);
      v58 = *(v54 + 48);
      v57 = *(v54 + 64);
      v59 = *(v54 + 32);
      v93 = v55;
      v94 = v59;
      v97 = v56;
      v95 = v58;
      v96 = v57;
      LODWORD(v92) = 1000000000 - v92;
      LOBYTE(v94) = v59 ^ 1;
      if (BYTE9(v57) == 1)
      {
        if (BYTE8(v96))
        {
          v60 = 256;
        }

        else
        {
          v60 = 257;
        }

        WORD4(v96) = v60;
      }

      return sub_F68F20(a1, &v92);
    }

    v21 = (*(sub_F6F6F4(a1) + 36) & 0x20000000) == 0;
    if (v21 != (*(sub_F6F70C(a1) + 39) & 0x20) >> 5)
    {
      v22 = sub_F6F70C(a1);
      v23 = *v22;
      v24 = *(v22 + 16);
      v91 = *(v22 + 32);
      v90[0] = v23;
      v90[1] = v24;
      v25 = HIDWORD(v91);
      v26 = v91;
      v27 = (HIDWORD(v91) & 0x7FFFFFFF | ((HIDWORD(v91) >> 30 == 0) << 31)) ^ 0x20000000;
      v91 = v91 | (v27 << 32);
      v28 = sub_F6F698(a1);
      v29 = v25 & 0x40000000;
      if ((v27 & 0x80000000) != 0 && v29 == 0)
      {
        v31 = 0x40000000;
      }

      else
      {
        v31 = 0;
      }

      v32 = v26 | ((v25 & 0xFFFFFFF | (v29 >> 1) | HIDWORD(v28) & 0x80000000 | (v27 >> 1) & 0x10000000 | v31) << 32);
      v33 = sub_F692C8(a1, 1uLL);
      sub_F69060(a1, v32, v90, v33);
      v34 = sub_73F1C(a1);
      v35 = *(v34 + 16);
      v92 = *v34;
      v36 = *(v34 + 80);
      v38 = *(v34 + 48);
      v37 = *(v34 + 64);
      v39 = *(v34 + 32);
      v93 = v35;
      v94 = v39;
      v97 = v36;
      v95 = v38;
      v96 = v37;
      LODWORD(v92) = 1000000000 - v92;
      LOBYTE(v94) = v39 ^ 1;
      if (BYTE9(v37) == 1)
      {
        if (BYTE8(v96))
        {
          v40 = 256;
        }

        else
        {
          v40 = 257;
        }

        WORD4(v96) = v40;
      }

      sub_F68F20(a1, &v92);
      v41 = sub_F69058(a1);
      v42 = *(v41 + 16);
      v85[0] = *v41;
      v43 = *(v41 + 80);
      v45 = *(v41 + 48);
      v44 = *(v41 + 64);
      v46 = *(v41 + 32);
      v85[1] = v42;
      v86 = v46;
      v89 = v43;
      v87 = v45;
      v88 = v44;
      LODWORD(v85[0]) = 1000000000 - LODWORD(v85[0]);
      LOBYTE(v86) = v46 ^ 1;
      if (BYTE9(v44) == 1)
      {
        if (BYTE8(v88))
        {
          v47 = 256;
        }

        else
        {
          v47 = 257;
        }

        WORD4(v88) = v47;
      }

      v48 = v85;
      return sub_F6901C(a1, v48);
    }

    v18 = 0;
  }

  else
  {
    v18 = v3 != v12 && v4 != v13;
  }

  result = sub_F70DF4(a1, v3, &v4[22 * v18], v15);
  if (v3 != v12)
  {
    if (v4 != v14)
    {
      return result;
    }

    goto LABEL_61;
  }

  v61 = sub_73F1C(a1);
  v62 = *(v61 + 16);
  v92 = *v61;
  v63 = *(v61 + 80);
  v65 = *(v61 + 48);
  v64 = *(v61 + 64);
  v66 = *(v61 + 32);
  v93 = v62;
  v94 = v66;
  v97 = v63;
  v95 = v65;
  v96 = v64;
  LODWORD(v92) = 1000000000 - v92;
  LOBYTE(v94) = v66 ^ 1;
  if (BYTE9(v64) == 1)
  {
    if (BYTE8(v96))
    {
      v67 = 256;
    }

    else
    {
      v67 = 257;
    }

    WORD4(v96) = v67;
  }

  result = sub_F68F20(a1, &v92);
  if (v4 == v14)
  {
LABEL_61:
    v68 = sub_F69058(a1);
    v69 = *(v68 + 16);
    v92 = *v68;
    v70 = *(v68 + 80);
    v72 = *(v68 + 48);
    v71 = *(v68 + 64);
    v73 = *(v68 + 32);
    v93 = v69;
    v94 = v73;
    v97 = v70;
    v95 = v72;
    v96 = v71;
    v74 = 1000000000 - v92;
LABEL_64:
    LODWORD(v92) = v74;
    LOBYTE(v94) = v94 ^ 1;
    if (BYTE9(v96) == 1)
    {
      if (BYTE8(v96))
      {
        v84 = 256;
      }

      else
      {
        v84 = 257;
      }

      WORD4(v96) = v84;
    }

    v48 = &v92;
    return sub_F6901C(a1, v48);
  }

  return result;
}

uint64_t sub_119F860(void *a1)
{
  v2 = sub_F69D08(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  do
  {
    v5 = 0;
    while (1)
    {
      v6 = sub_F6FB64(a1, v5);
      v7 = v6[9];
      v8 = v6[19];
      if (((((v7 & 0x20000000) == 0) ^ ((v8 & 0x20000000u) >> 29)) & 1) == 0 && ((v8 ^ v7) & 0x1FFFFFFF) == 0 && v6[8] == v6[18])
      {
        break;
      }

      if (v3 == ++v5)
      {
        return v4;
      }
    }

    sub_119F2C0(a1, v5);
    v4 = (v4 + 1);
    v3 = sub_F69D08(a1);
  }

  while (v3);
  return v4;
}

uint64_t sub_119F91C(uint64_t a1)
{
  v1 = nullsub_1(a1);
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*v1 == v3)
  {
    return 0;
  }

  LODWORD(v4) = 0;
  do
  {
    v6 = sub_F69D08(v2);
    if (v6)
    {
      v7 = v6;
      v5 = 0;
      do
      {
        v8 = 0;
        while (1)
        {
          v9 = sub_F6FB64(v2, v8);
          v10 = v9[9];
          v11 = v9[19];
          if (((((v10 & 0x20000000) == 0) ^ ((v11 & 0x20000000u) >> 29)) & 1) == 0 && ((v11 ^ v10) & 0x1FFFFFFF) == 0 && v9[8] == v9[18])
          {
            break;
          }

          if (v7 == ++v8)
          {
            goto LABEL_4;
          }
        }

        sub_119F2C0(v2, v8);
        ++v5;
        v7 = sub_F69D08(v2);
      }

      while (v7);
    }

    else
    {
      v5 = 0;
    }

LABEL_4:
    v4 = (v5 + v4);
    v2 += 69;
  }

  while (v2 != v3);
  return v4;
}

void sub_119FA0C(BOOL *a1, uint64_t a2, unsigned int a3)
{
  v7[23] = 12;
  strcpy(v7, "BuddySnapper");
  memset(v6, 0, sizeof(v6));
  v5 = sub_3AEC94(a2, v7, v6);
  sub_41D60C(v5, a3, 0, v8);
  sub_119FBB8(a1, v8);
}

void sub_119FB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_6BB60(&a18);
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_119FBB8(BOOL *a1, void *a2)
{
  v6 = 7;
  strcpy(__p, "enabled");
  v3 = sub_5F9D0(a2, __p);
  if (v6 < 0)
  {
    v4 = v3;
    operator delete(__p[0]);
    v3 = v4;
  }

  *a1 = v3;
  operator new();
}

void sub_119FD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_119FDA4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v10 = a3;
  v12 = a1;
  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v14 = sub_2B51D8(*(a1 + 32), *(a3 + 32));
  v15 = (v14 - *v14);
  v16 = *v15;
  if (v16 < 0x5F)
  {
    LODWORD(v17) = 0;
    LODWORD(v18) = 0;
LABEL_9:
    if (!(v18 + v17))
    {
      return;
    }

    goto LABEL_10;
  }

  v17 = v15[47];
  if (v15[47])
  {
    LODWORD(v17) = *(v14 + v17 + *(v14 + v17));
  }

  if (v16 >= 0x61)
  {
    v18 = v15[48];
    if (v18)
    {
      if (!(*(v14 + v18 + *(v14 + v18)) + v17))
      {
        return;
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v17)
  {
    return;
  }

LABEL_10:
  sub_11A00E4(v12, *(v10 + 32), &v37);
  v19 = v37;
  v20 = v38;
  if (v37 == v38)
  {
LABEL_14:
    if (v19 == v20)
    {
      goto LABEL_33;
    }

    do
    {
      *&v39 = *v19;
      v24 = *(a6 + 24);
      if (!v24)
      {
        sub_2B7420();
      }

      if ((*(*v24 + 48))(v24, &v39))
      {
        v47 = *v19;
        v25 = sub_3A8760(a5, &v47);
        if (v25)
        {
          v26 = *(v25 + 7);
          v40 = *(v25 + 5);
          v41 = v26;
          v42 = *(v25 + 9);
          v43 = *(v25 + 88);
          v39 = *(v25 + 3);
          v44 = *(v25 + 24);
          __p[1] = 0;
          v46 = 0;
          __p[0] = 0;
          sub_C58C34(__p, v25[13], v25[14], (v25[14] - v25[13]) >> 5);
        }

        else
        {
          sub_11A0C2C(v12, a2, v10, v47, &v39);
        }

        v27 = a7[1];
        if (v27 < a7[2])
        {
          *v27 = v39;
          v21 = v40;
          v22 = v41;
          v23 = v42;
          *(v27 + 64) = v43;
          *(v27 + 32) = v22;
          *(v27 + 48) = v23;
          *(v27 + 16) = v21;
          *(v27 + 72) = v44;
          *(v27 + 88) = 0;
          *(v27 + 96) = 0;
          *(v27 + 80) = 0;
          *(v27 + 80) = *__p;
          *(v27 + 96) = v46;
          a7[1] = v27 + 104;
        }

        else
        {
          v28 = sub_11A1B50(a7, &v39);
          v29 = __p[0];
          a7[1] = v28;
          if (v29)
          {
            v30 = a5;
            v31 = v12;
            v32 = v10;
            v33 = a2;
            v34 = __p[1];
            v35 = v29;
            if (__p[1] != v29)
            {
              do
              {
                v36 = *(v34 - 9);
                v34 -= 4;
                if (v36 < 0)
                {
                  operator delete(*v34);
                }
              }

              while (v34 != v29);
              v35 = __p[0];
            }

            __p[1] = v29;
            operator delete(v35);
            a2 = v33;
            v10 = v32;
            v12 = v31;
            a5 = v30;
          }
        }
      }

      ++v19;
    }

    while (v19 != v20);
  }

  else
  {
    while (1)
    {
      *&v39 = *v19;
      if (sub_3A8760(a4, &v39))
      {
        break;
      }

      if (++v19 == v20)
      {
        v19 = v37;
        v20 = v38;
        goto LABEL_14;
      }
    }
  }

  v19 = v37;
LABEL_33:
  if (v19)
  {
    v38 = v19;
    operator delete(v19);
  }
}

void sub_11A00A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_C6A790(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  sub_48C8F4(v13);
  _Unwind_Resume(a1);
}

void sub_11A00E4(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_2B51D8(*(a1 + 32), a2);
  v7 = (v6 - *v6);
  if (*v7 < 0x2Fu)
  {
    v9 = 3;
  }

  else
  {
    v8 = v7[23];
    v9 = 3;
    if (v8)
    {
      if (*(v6 + v8) == 44)
      {
        v9 = 8;
      }

      else
      {
        v9 = 3;
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v10 = *(a1 + 32);
  v19 = a3;
  v11 = sub_2B51D8(v10, a2);
  v12 = v11;
  v13 = (v11 - *v11);
  if (*v13 >= 0x5Fu && (v14 = v13[47]) != 0)
  {
    v15 = (v11 + v14 + *(v11 + v14));
  }

  else
  {
    v15 = 0;
  }

  sub_11A1D5C(v10, v15, v9, &v19);
  v16 = (v12 - *v12);
  if (*v16 >= 0x61u && (v17 = v16[48]) != 0)
  {
    v18 = (v12 + v17 + *(v12 + v17));
  }

  else
  {
    v18 = 0;
  }

  sub_11A1D5C(v10, v18, v9, &v19);
}

void sub_11A0200(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_11A0248(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 == 1)
  {
    *v76 = 0u;
    *v77 = 0u;
    v78 = 1065353216;
    sub_11A1EBC(v88, v76, a2 + 22);
    v8 = a2[22];
    v9 = a2[23];
    for (i = a2; v8 != v9; v8 += 104)
    {
      v88[0] = *(v8 + 32);
      sub_49B7A4(v76, v88);
    }

    *v73 = 0u;
    v74 = 0u;
    v75 = 1065353216;
    sub_11A1EBC(v88, v73, a2 + 25);
    v10 = a2[25];
    for (j = a2[26]; v10 != j; v10 += 104)
    {
      v79 = *(v10 + 32);
      v13 = *(v10 + 16);
      v14 = *(v10 + 32);
      v15 = *(v10 + 48);
      v84 = *(v10 + 64);
      v80 = *v10;
      v83 = v15;
      v82 = v14;
      v81 = v13;
      v85 = *(v10 + 72);
      v87 = 0;
      __p = 0uLL;
      sub_C58C34(&__p, *(v10 + 80), *(v10 + 88), (*(v10 + 88) - *(v10 + 80)) >> 5);
      v88[0] = v79;
      *&v88[3] = v81;
      *&v88[5] = v82;
      *&v88[7] = v83;
      v89 = v84;
      *&v88[1] = v80;
      v90 = v85;
      v91 = __p;
      v92 = v87;
      v87 = 0;
      __p = 0uLL;
      sub_11A1FEC(v73, v88);
      v16 = v91;
      if (v91)
      {
        v17 = *(&v91 + 1);
        v18 = v91;
        if (*(&v91 + 1) != v91)
        {
          do
          {
            v19 = *(v17 - 9);
            v17 -= 4;
            if (v19 < 0)
            {
              operator delete(*v17);
            }
          }

          while (v17 != v16);
          v18 = v91;
        }

        *(&v91 + 1) = v16;
        operator delete(v18);
      }

      v20 = __p;
      if (__p)
      {
        v21 = *(&__p + 1);
        v12 = __p;
        if (*(&__p + 1) != __p)
        {
          do
          {
            v22 = *(v21 - 9);
            v21 -= 4;
            if (v22 < 0)
            {
              operator delete(*v21);
            }
          }

          while (v21 != v20);
          v12 = __p;
        }

        *(&__p + 1) = v20;
        operator delete(v12);
      }
    }

    v23 = 0uLL;
    memset(v88, 0, 24);
    v24 = i[22];
    v25 = i[23];
    if (v24 != v25)
    {
      do
      {
        sub_119FDA4(a1, a3, v24, v76, v73, a4, &v79);
        sub_11A098C(a1, &v79);
        sub_11A1310(v88, v88[1], v79, v80, 0x4EC4EC4EC4EC4EC5 * ((v80 - v79) >> 3));
        v27 = v79;
        if (v79)
        {
          v28 = v80;
          v26 = v79;
          if (v80 != v79)
          {
            do
            {
              v30 = *(v28 - 3);
              if (v30)
              {
                v31 = *(v28 - 2);
                v29 = *(v28 - 3);
                if (v31 != v30)
                {
                  do
                  {
                    v32 = *(v31 - 9);
                    v31 -= 4;
                    if (v32 < 0)
                    {
                      operator delete(*v31);
                    }
                  }

                  while (v31 != v30);
                  v29 = *(v28 - 3);
                }

                *(v28 - 2) = v30;
                operator delete(v29);
              }

              v28 -= 104;
            }

            while (v28 != v27);
            v26 = v79;
          }

          *&v80 = v27;
          operator delete(v26);
        }

        v24 += 104;
      }

      while (v24 != v25);
      v23 = *v88;
    }

    v33 = 126 - 2 * __clz(0x4EC4EC4EC4EC4EC5 * ((*(&v23 + 1) - v23) >> 3));
    v79 = sub_11A021C;
    if (*(&v23 + 1) == v23)
    {
      v34 = 0;
    }

    else
    {
      v34 = v33;
    }

    sub_11A263C(v23, *(&v23 + 1), &v79, v34, 1);
    v79 = sub_11A0230;
    v35 = sub_11A24B4(v88[0], v88[1], &v79);
    sub_11A119C(v88, v35, v88[1]);
    v36 = i;
    sub_11A1310(i + 22, i[23], v88[0], v88[1], 0x4EC4EC4EC4EC4EC5 * ((v88[1] - v88[0]) >> 3));
    v38 = i[25];
    v37 = i[26];
    if (v38 != v37)
    {
      if (v88[0] == v88[1])
      {
        v38 += 13 * ((v37 - v38 - 104) / 0x68uLL) + 13;
      }

      else
      {
LABEL_46:
        v39 = v88[0];
        while (*(v39 + 32) != *(v38 + 8) || *(v39 + 36) != *(v38 + 9))
        {
          v39 += 104;
          if (v39 == v88[1])
          {
            v38 += 13;
            if (v38 != v37)
            {
              goto LABEL_46;
            }

            goto LABEL_75;
          }
        }
      }
    }

    if (v38 == v37)
    {
LABEL_75:
      v54 = i[26];
    }

    else
    {
      v41 = v38 + 13;
      if (v38 + 13 == v37)
      {
        v54 = i[26];
        v37 = v38;
      }

      else
      {
        v42 = v38;
        do
        {
          v44 = v41;
          v45 = v88[0];
          if (v88[0] == v88[1])
          {
LABEL_68:
            *v42 = *v44;
            v47 = v38[14];
            *(v42 + 16) = *(v38 + 30);
            *(v42 + 8) = v47;
            v48 = *(v38 + 8);
            v49 = *(v38 + 9);
            *(v42 + 49) = *(v38 + 153);
            *(v42 + 40) = v49;
            *(v42 + 24) = v48;
            *(v42 + 72) = *(v38 + 44);
            v50 = (v42 + 80);
            v51 = *(v42 + 80);
            if (v51)
            {
              v52 = *(v42 + 88);
              v43 = *(v42 + 80);
              if (v52 != v51)
              {
                do
                {
                  v53 = *(v52 - 9);
                  v52 -= 4;
                  if (v53 < 0)
                  {
                    operator delete(*v52);
                  }
                }

                while (v52 != v51);
                v43 = *v50;
              }

              *(v42 + 88) = v51;
              operator delete(v43);
              *v50 = 0;
              *(v42 + 88) = 0;
              *(v42 + 96) = 0;
            }

            *(v42 + 80) = *(v38 + 23);
            *(v42 + 96) = v38[25];
            v38[23] = 0;
            v38[24] = 0;
            v38[25] = 0;
            v42 += 104;
          }

          else
          {
            while (*(v45 + 32) != *(v38 + 34) || *(v45 + 36) != *(v38 + 35))
            {
              v45 += 104;
              if (v45 == v88[1])
              {
                goto LABEL_68;
              }
            }
          }

          v41 = v44 + 13;
          v38 = v44;
        }

        while (v44 + 13 != v37);
        v36 = i;
        v54 = i[26];
        v37 = v42;
      }
    }

    sub_11A119C((v36 + 25), v37, v54);
    v55 = v88[0];
    if (v88[0])
    {
      v56 = v88[1];
      v57 = v88[0];
      if (v88[1] != v88[0])
      {
        do
        {
          v59 = *(v56 - 24);
          if (v59)
          {
            v60 = *(v56 - 16);
            v58 = *(v56 - 24);
            if (v60 != v59)
            {
              do
              {
                v61 = *(v60 - 9);
                v60 -= 4;
                if (v61 < 0)
                {
                  operator delete(*v60);
                }
              }

              while (v60 != v59);
              v58 = *(v56 - 24);
            }

            *(v56 - 16) = v59;
            operator delete(v58);
          }

          v56 -= 104;
        }

        while (v56 != v55);
        v57 = v88[0];
      }

      v88[1] = v55;
      operator delete(v57);
    }

    v62 = v74;
    if (v74)
    {
      do
      {
        v68 = *v62;
        v69 = v62[13];
        if (v69)
        {
          v70 = v62[14];
          v67 = v62[13];
          if (v70 != v69)
          {
            do
            {
              v71 = *(v70 - 9);
              v70 -= 4;
              if (v71 < 0)
              {
                operator delete(*v70);
              }
            }

            while (v70 != v69);
            v67 = v62[13];
          }

          v62[14] = v69;
          operator delete(v67);
        }

        operator delete(v62);
        v62 = v68;
      }

      while (v68);
    }

    v63 = v73[0];
    v73[0] = 0;
    if (v63)
    {
      operator delete(v63);
    }

    v64 = v77[0];
    if (v77[0])
    {
      do
      {
        v65 = *v64;
        operator delete(v64);
        v64 = v65;
      }

      while (v65);
    }

    v66 = v76[0];
    v76[0] = 0;
    if (v66)
    {
      operator delete(v66);
    }
  }
}

void sub_11A08D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  sub_48C8F4((v3 - 208));
  sub_11A0B84(va);
  sub_11BD8(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_11A098C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  result = v4;
  if (v4 == v5)
  {
    return result;
  }

  v18 = sub_11A021C;
  sub_11A263C(v4, v5, &v18, 126 - 2 * __clz(0x4EC4EC4EC4EC4EC5 * ((v5 - v4) >> 3)), 1);
  v7 = *a2;
  v8 = **a2;
  v9 = *(a1 + 16) * v8;
  if (v9 >= 0.0)
  {
    if (v9 >= 4.50359963e15)
    {
      goto LABEL_8;
    }

    v10 = (v9 + v9) + 1;
  }

  else
  {
    if (v9 <= -4.50359963e15)
    {
      goto LABEL_8;
    }

    v10 = (v9 + v9) - 1 + (((v9 + v9) - 1) >> 63);
  }

  v9 = (v10 >> 1);
LABEL_8:
  v11 = *(a1 + 24) * 100.0;
  if (v11 >= 0.0)
  {
    v12 = *(a1 + 24) * 100.0;
    if (v11 < 4.50359963e15)
    {
      v12 = (((v11 + v11) + 1) >> 1);
    }
  }

  else if (v11 > -4.50359963e15)
  {
    v12 = (((v11 + v11) - 1) / 2);
  }

  else
  {
    v12 = *(a1 + 24) * 100.0;
  }

  if (v12 >= 9.22337204e18)
  {
    v14 = 0x7FFFFFFFFFFFFFFELL;
    goto LABEL_23;
  }

  if (v11 >= 0.0)
  {
    if (v11 < 4.50359963e15)
    {
      v13 = (v11 + v11) + 1;
      goto LABEL_21;
    }
  }

  else if (v11 > -4.50359963e15)
  {
    v13 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
LABEL_21:
    v11 = (v13 >> 1);
  }

  v14 = v11;
LABEL_23:
  v15 = v14 + v8;
  if (v15 <= v9)
  {
    v15 = v9;
  }

  v16 = *(a2 + 8);
  while (v16 != v7)
  {
    v17 = *(v16 - 104);
    v16 -= 104;
    if (v17 <= v15)
    {
      v7 = v16 + 104;
      return sub_11A119C(a2, v7, *(a2 + 8));
    }
  }

  return sub_11A119C(a2, v7, *(a2 + 8));
}

uint64_t sub_11A0B84(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v6 = *v2;
      v7 = v2[13];
      if (v7)
      {
        v8 = v2[14];
        v5 = v2[13];
        if (v8 != v7)
        {
          do
          {
            v9 = *(v8 - 9);
            v8 -= 4;
            if (v9 < 0)
            {
              operator delete(*v8);
            }
          }

          while (v8 != v7);
          v5 = v2[13];
        }

        v2[14] = v7;
        operator delete(v5);
      }

      operator delete(v2);
      v2 = v6;
    }

    while (v6);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_11A0C2C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2B79D0(*(a1 + 32), a4, &v53);
  v10 = sub_31BF20(&v53, &v56).n128_u64[0];
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  sub_6D5084(&v56, a2, 0, 0, &v53, v10);
  v11 = v53 * 100.0;
  if (v53 * 100.0 >= 0.0)
  {
    v12 = v53 * 100.0;
    if (v11 >= 4.50359963e15)
    {
      goto LABEL_9;
    }

    v13 = (v11 + v11) + 1;
  }

  else
  {
    v12 = v53 * 100.0;
    if (v11 <= -4.50359963e15)
    {
      goto LABEL_9;
    }

    v13 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
  }

  v12 = (v13 >> 1);
LABEL_9:
  if (v12 < 9.22337204e18)
  {
    if (v11 >= 0.0)
    {
      if (v11 < 4.50359963e15)
      {
        v14 = (v11 + v11) + 1;
        goto LABEL_16;
      }
    }

    else if (v11 > -4.50359963e15)
    {
      v14 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
LABEL_16:
      v11 = (v14 >> 1);
    }

    v15 = v11;
    goto LABEL_18;
  }

  v15 = 0x7FFFFFFFFFFFFFFELL;
LABEL_18:
  v51 = __p;
  v52 = v55;
  v16 = sub_2B51D8(*(a1 + 32), a4);
  v18 = (v16 - *v16);
  v19 = 0.0;
  if (*v18 >= 9u)
  {
    v20 = v18[4];
    if (v20)
    {
      LODWORD(v17) = *(v16 + v20);
      v19 = v17;
    }
  }

  sub_47190(&v51, &v56);
  v22 = v19 * v21;
  if (v22 >= 0.0)
  {
    if (v22 >= 4.50359963e15)
    {
      goto LABEL_27;
    }

    v23 = (v22 + v22) + 1;
  }

  else
  {
    if (v22 <= -4.50359963e15)
    {
      goto LABEL_27;
    }

    v23 = (v22 + v22) - 1 + (((v22 + v22) - 1) >> 63);
  }

  v22 = (v23 >> 1);
LABEL_27:
  if (*(a3 + 43) == 1)
  {
    v24 = sub_4A7FF4(&v56, 0, 0xAAAAAAAAAAAAAAABLL * ((v57 - v56) >> 2) - 1, a2, 0, 0x7FFFFFFFFFFFFFFFLL, 1);
    v25 = v56 + 12 * v24;
    v26 = *(v25 + 12);
    v27.i64[0] = v26;
    v27.i64[1] = HIDWORD(v26);
    v28 = vcvtq_f64_u64(v27);
    v27.i64[0] = *v25;
    v27.i64[1] = HIDWORD(*v25);
    v29 = vcvtq_f64_u64(v27);
    v27.i64[0] = *a2;
    v27.i64[1] = HIDWORD(*a2);
    v30 = vsubq_f64(vcvtq_f64_u64(v27), v28);
    v31 = vmulq_f64(vsubq_f64(v29, v28), vextq_s8(v30, v30, 8uLL));
    v32 = vsubq_f64(vdupq_laneq_s64(v31, 1), v31).f64[0];
    if (v32 == 0.0)
    {
      v33 = 2;
    }

    else
    {
      v33 = 1;
    }

    if (v32 >= 0.0)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v35 = 1;
    v36 = *(a2 + 50);
    if (v36 >> 5 > 0x464)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = *(a2 + 50);
    if (v36 >> 5 > 0x464)
    {
LABEL_35:
      v37 = 0;
      v38 = 0;
      goto LABEL_52;
    }
  }

  v39 = sub_4A7FF4(&v56, 0, 0xAAAAAAAAAAAAAAABLL * ((v57 - v56) >> 2) - 1, a2, 0, 0x7FFFFFFFFFFFFFFFLL, 1);
  v40 = v56 + 12 * v39;
  v41 = v40[3];
  v42 = v41 - *v40;
  if (v41 != *v40)
  {
    v44 = v40[4];
    v43 = v40[1];
    goto LABEL_41;
  }

  v43 = v40[1];
  v44 = v40[4];
  i = 0.0;
  if (v43 != v44)
  {
LABEL_41:
    v46 = --v42;
    if (v42 < -v42)
    {
      v46 = v42;
    }

      ;
    }

      ;
    }
  }

    ;
  }

    ;
  }

  v37 = fabs(j) > *(a1 + 8);
  v38 = 1;
LABEL_52:
  v48 = v37 | (v38 << 8);
  v49 = *(a3 + 48);
  v50 = v51;
  *a5 = v15;
  *(a5 + 8) = v50;
  *(a5 + 16) = v52;
  *(a5 + 24) = v22;
  *(a5 + 32) = a4;
  *(a5 + 40) = v48;
  *(a5 + 42) = v34 | (v35 << 8);
  *(a5 + 48) = v49;
  *(a5 + 56) = 0;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 0;
  *(a5 + 64) = *(a3 + 64);
  *(a5 + 72) = *(a3 + 72);
  if (a5 != a3)
  {
    sub_C5BF94((a5 + 80), *(a3 + 80), *(a3 + 88), (*(a3 + 88) - *(a3 + 80)) >> 5);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }
}

void sub_11A1150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11A119C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        *v7 = *v4;
        v9 = *(v4 + 8);
        *(v7 + 16) = *(v4 + 16);
        *(v7 + 8) = v9;
        v10 = *(v4 + 24);
        v11 = *(v4 + 40);
        *(v7 + 49) = *(v4 + 49);
        *(v7 + 40) = v11;
        *(v7 + 24) = v10;
        *(v7 + 72) = *(v4 + 72);
        v12 = (v7 + 80);
        v13 = *(v7 + 80);
        if (v13)
        {
          v14 = *(v7 + 88);
          v8 = *(v7 + 80);
          if (v14 != v13)
          {
            do
            {
              v15 = *(v14 - 9);
              v14 -= 4;
              if (v15 < 0)
              {
                operator delete(*v14);
              }
            }

            while (v14 != v13);
            v8 = *v12;
          }

          *(v7 + 88) = v13;
          operator delete(v8);
          *v12 = 0;
          *(v7 + 88) = 0;
          *(v7 + 96) = 0;
        }

        *(v7 + 80) = *(v4 + 80);
        *(v7 + 96) = *(v4 + 96);
        *(v4 + 80) = 0;
        *(v4 + 88) = 0;
        *(v4 + 96) = 0;
        v4 += 104;
        v7 += 104;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v17 = *(v6 - 24);
      if (v17)
      {
        v18 = *(v6 - 16);
        v16 = *(v6 - 24);
        if (v18 != v17)
        {
          do
          {
            v19 = *(v18 - 9);
            v18 -= 4;
            if (v19 < 0)
            {
              operator delete(*v18);
            }
          }

          while (v18 != v17);
          v16 = *(v6 - 24);
        }

        *(v6 - 16) = v17;
        operator delete(v16);
      }

      v6 -= 104;
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t sub_11A1310(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v8 = a1[1];
    v7 = a1[2];
    if (0x4EC4EC4EC4EC4EC5 * ((v7 - v8) >> 3) >= a5)
    {
      v13 = v8 - a2;
      if (0x4EC4EC4EC4EC4EC5 * ((v8 - a2) >> 3) >= a5)
      {
        v23 = 104 * a5;
        sub_11A16D8(a1, a2, a1[1], a2 + 104 * a5);
        v24 = (v23 + a3);
        v25 = (v5 + 80);
        v26 = (a3 + 88);
        do
        {
          v27 = v26 - 11;
          *(v25 - 5) = *(v26 - 11);
          v28 = *(v26 - 9);
          v29 = *(v26 - 7);
          v30 = *(v26 - 5);
          *(v25 - 16) = *(v26 - 24);
          *(v25 - 3) = v29;
          *(v25 - 2) = v30;
          *(v25 - 4) = v28;
          *(v25 - 2) = *(v26 - 4);
          if (v25 - 10 != v26 - 11)
          {
            sub_C5BF94(v25, *(v26 - 1), *v26, (*v26 - *(v26 - 1)) >> 5);
          }

          v25 += 13;
          v26 += 13;
        }

        while (v27 + 13 != v24);
      }

      else
      {
        v15 = (v13 + a3);
        a1[1] = sub_11A1A78(a1, v13 + a3, a4, a1[1]);
        if (v13 >= 1)
        {
          sub_11A16D8(a1, v5, v8, v5 + 104 * a5);
          v17 = (v5 + 80);
          v18 = (a3 + 88);
          do
          {
            v19 = v18 - 11;
            *(v17 - 5) = *(v18 - 11);
            v20 = *(v18 - 9);
            v21 = *(v18 - 7);
            v22 = *(v18 - 5);
            *(v17 - 16) = *(v18 - 24);
            *(v17 - 3) = v21;
            *(v17 - 2) = v22;
            *(v17 - 4) = v20;
            *(v17 - 2) = *(v18 - 4);
            if (v17 - 10 != v18 - 11)
            {
              sub_C5BF94(v17, *(v18 - 1), *v18, (*v18 - *(v18 - 1)) >> 5);
            }

            v17 += 13;
            v18 += 13;
          }

          while (v19 + 13 != v15);
        }
      }
    }

    else
    {
      v9 = *a1;
      v10 = a5 + 0x4EC4EC4EC4EC4EC5 * ((v8 - *a1) >> 3);
      if (v10 > 0x276276276276276)
      {
        sub_1794();
      }

      v11 = 0x4EC4EC4EC4EC4EC5 * ((v7 - v9) >> 3);
      if (2 * v11 > v10)
      {
        v10 = 2 * v11;
      }

      if (v11 >= 0x13B13B13B13B13BLL)
      {
        v12 = 0x276276276276276;
      }

      else
      {
        v12 = v10;
      }

      v53 = a1;
      if (v12)
      {
        if (v12 <= 0x276276276276276)
        {
          operator new();
        }

        sub_1808();
      }

      v32 = 0;
      v33 = 8 * ((a2 - v9) >> 3);
      __p = 0;
      v50 = v33;
      v51 = v33;
      v52 = 0;
      v34 = 104 * a5;
      v35 = v33 + 104 * a5;
      do
      {
        v36 = v33 + v32;
        *v36 = *(a3 + v32);
        v37 = *(a3 + v32 + 16);
        v38 = *(a3 + v32 + 32);
        v39 = *(a3 + v32 + 48);
        *(v36 + 64) = *(a3 + v32 + 64);
        *(v36 + 32) = v38;
        *(v36 + 48) = v39;
        *(v36 + 16) = v37;
        LODWORD(v37) = *(a3 + v32 + 72);
        *(v33 + v32 + 80) = 0;
        v40 = v33 + v32 + 80;
        *(v40 - 8) = v37;
        *(v40 + 8) = 0;
        *(v40 + 16) = 0;
        sub_C58C34(v40, *(a3 + v32 + 80), *(a3 + v32 + 88), (*(a3 + v32 + 88) - *(a3 + v32 + 80)) >> 5);
        v32 += 104;
      }

      while (v34 != v32);
      v51 = v35;
      v5 = sub_11A1854(a1, &__p, v5);
      v41 = v50;
      for (i = v51; v51 != v41; i = v51)
      {
        while (1)
        {
          v45 = i - 104;
          v51 = i - 104;
          v46 = *(i - 24);
          if (v46)
          {
            break;
          }

          i -= 104;
          if (v45 == v41)
          {
            goto LABEL_25;
          }
        }

        v47 = *(i - 16);
        v44 = *(i - 24);
        if (v47 != v46)
        {
          do
          {
            v48 = *(v47 - 9);
            v47 -= 4;
            if (v48 < 0)
            {
              operator delete(*v47);
            }
          }

          while (v47 != v46);
          v44 = *(i - 24);
        }

        *(i - 16) = v46;
        operator delete(v44);
      }

LABEL_25:
      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_11A16AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49BB1C(va);
  _Unwind_Resume(a1);
}

void sub_11A16C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_49BB1C(va);
  _Unwind_Resume(a1);
}

__n128 sub_11A16D8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  v6 = a2 + v5 - a4;
  v7 = v5;
  if (v6 < a3)
  {
    v8 = a2 + v5 - a4;
    v7 = *(a1 + 8);
    do
    {
      *v7 = *v8;
      v9 = *(v8 + 16);
      v10 = *(v8 + 32);
      v11 = *(v8 + 48);
      *(v7 + 64) = *(v8 + 64);
      *(v7 + 32) = v10;
      *(v7 + 48) = v11;
      *(v7 + 16) = v9;
      *(v7 + 72) = *(v8 + 72);
      *(v7 + 88) = 0;
      *(v7 + 96) = 0;
      *(v7 + 80) = 0;
      result = *(v8 + 80);
      *(v7 + 80) = result;
      *(v7 + 96) = *(v8 + 96);
      *(v8 + 80) = 0;
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      v8 += 104;
      v7 += 104;
    }

    while (v8 < a3);
  }

  *(a1 + 8) = v7;
  if (v5 != a4)
  {
    v13 = a2 + v5 - a4;
    v14 = v5;
    do
    {
      v16 = *(v13 - 104);
      v13 -= 104;
      *(v14 - 104) = v16;
      v14 -= 104;
      v17 = *(v13 + 8);
      *(v14 + 16) = *(v13 + 16);
      *(v14 + 8) = v17;
      v18 = *(v13 + 24);
      v19 = *(v13 + 40);
      *(v14 + 49) = *(v13 + 49);
      *(v14 + 40) = v19;
      *(v14 + 24) = v18;
      *(v14 + 72) = *(v13 + 72);
      v20 = (v14 + 80);
      v21 = *(v14 + 80);
      if (v21)
      {
        v22 = *(v5 - 16);
        v15 = *(v14 + 80);
        if (v22 != v21)
        {
          do
          {
            v23 = *(v22 - 9);
            v22 -= 4;
            if (v23 < 0)
            {
              operator delete(*v22);
            }
          }

          while (v22 != v21);
          v15 = *v20;
        }

        *(v5 - 16) = v21;
        operator delete(v15);
        *v20 = 0;
        *(v14 + 88) = 0;
        *(v14 + 96) = 0;
      }

      result = *(v6 - 24);
      *(v5 - 24) = result;
      *(v5 - 8) = *(v6 - 8);
      *(v6 - 24) = 0;
      *(v6 - 16) = 0;
      *(v6 - 8) = 0;
      v5 = v14;
      v6 = v13;
    }

    while (v13 != a2);
  }

  return result;
}

uint64_t sub_11A1854(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      *v8 = *v9;
      v10 = *(v9 + 16);
      v11 = *(v9 + 32);
      v12 = *(v9 + 48);
      *(v8 + 64) = *(v9 + 64);
      *(v8 + 32) = v11;
      *(v8 + 48) = v12;
      *(v8 + 16) = v10;
      *(v8 + 72) = *(v9 + 72);
      *(v8 + 88) = 0;
      *(v8 + 96) = 0;
      *(v8 + 80) = 0;
      *(v8 + 80) = *(v9 + 80);
      *(v8 + 96) = *(v9 + 96);
      *(v9 + 80) = 0;
      *(v9 + 88) = 0;
      *(v9 + 96) = 0;
      v9 += 104;
      v8 += 104;
    }

    while (v9 != v7);
    v13 = a3;
    do
    {
      v15 = *(v13 + 80);
      if (v15)
      {
        v16 = *(v13 + 88);
        v14 = *(v13 + 80);
        if (v16 != v15)
        {
          do
          {
            v17 = *(v16 - 9);
            v16 -= 4;
            if (v17 < 0)
            {
              operator delete(*v16);
            }
          }

          while (v16 != v15);
          v14 = *(v13 + 80);
        }

        *(v13 + 88) = v15;
        operator delete(v14);
      }

      v13 += 104;
    }

    while (v13 != v7);
  }

  v18 = *a1;
  v19 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v20 = v19 + v18 - a3;
  if (v18 != a3)
  {
    v21 = v18;
    v22 = v19 + v18 - a3;
    do
    {
      *v22 = *v21;
      v23 = *(v21 + 16);
      v24 = *(v21 + 32);
      v25 = *(v21 + 48);
      *(v22 + 64) = *(v21 + 64);
      *(v22 + 32) = v24;
      *(v22 + 48) = v25;
      *(v22 + 16) = v23;
      *(v22 + 72) = *(v21 + 72);
      *(v22 + 88) = 0;
      *(v22 + 96) = 0;
      *(v22 + 80) = 0;
      *(v22 + 80) = *(v21 + 80);
      *(v22 + 96) = *(v21 + 96);
      *(v21 + 80) = 0;
      *(v21 + 88) = 0;
      *(v21 + 96) = 0;
      v21 += 104;
      v22 += 104;
    }

    while (v21 != a3);
    do
    {
      v27 = *(v18 + 80);
      if (v27)
      {
        v28 = *(v18 + 88);
        v26 = *(v18 + 80);
        if (v28 != v27)
        {
          do
          {
            v29 = *(v28 - 9);
            v28 -= 4;
            if (v29 < 0)
            {
              operator delete(*v28);
            }
          }

          while (v28 != v27);
          v26 = *(v18 + 80);
        }

        *(v18 + 88) = v27;
        operator delete(v26);
      }

      v18 += 104;
    }

    while (v18 != a3);
  }

  a2[1] = v20;
  v30 = *a1;
  *a1 = v20;
  a1[1] = v30;
  a2[1] = v30;
  v31 = a1[1];
  a1[1] = a2[2];
  a2[2] = v31;
  v32 = a1[2];
  a1[2] = a2[3];
  a2[3] = v32;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_11A1A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  if (a2 == a3)
  {
    return a4;
  }

  v6 = a2;
  result = a4;
  do
  {
    *result = *v6;
    v7 = *(v6 + 16);
    v8 = *(v6 + 32);
    v9 = *(v6 + 48);
    *(result + 64) = *(v6 + 64);
    *(result + 32) = v8;
    *(result + 48) = v9;
    *(result + 16) = v7;
    LODWORD(v7) = *(v6 + 72);
    *(result + 80) = 0;
    v10 = result + 80;
    *(v10 - 8) = v7;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    sub_C58C34(v10, *(v6 + 80), *(v6 + 88), (*(v6 + 88) - *(v6 + 80)) >> 5);
    v6 += 104;
    result = v11 + 104;
    v11 += 104;
  }

  while (v6 != a3);
  return result;
}

uint64_t sub_11A1B50(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    sub_1794();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v5 = 0x276276276276276;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x276276276276276)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = *(a2 + 48);
  v7 = 8 * ((a1[1] - *a1) >> 3);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = v6;
  *(v7 + 64) = *(a2 + 64);
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 72) = *(a2 + 72);
  *(v7 + 80) = *(a2 + 80);
  *(v7 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v9 = 104 * v2 + 104;
  v10 = *a1;
  v11 = a1[1];
  v12 = v7 + *a1 - v11;
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = v7 + *a1 - v11;
    do
    {
      *v14 = *v13;
      v15 = *(v13 + 1);
      v16 = *(v13 + 2);
      v17 = *(v13 + 3);
      *(v14 + 64) = *(v13 + 64);
      *(v14 + 32) = v16;
      *(v14 + 48) = v17;
      *(v14 + 16) = v15;
      *(v14 + 72) = *(v13 + 18);
      *(v14 + 88) = 0;
      *(v14 + 96) = 0;
      *(v14 + 80) = *(v13 + 5);
      *(v14 + 96) = v13[12];
      v13[10] = 0;
      v13[11] = 0;
      v13[12] = 0;
      v13 += 13;
      v14 += 104;
    }

    while (v13 != v11);
    do
    {
      v19 = v10[10];
      if (v19)
      {
        v20 = v10[11];
        v18 = v10[10];
        if (v20 != v19)
        {
          do
          {
            v21 = *(v20 - 9);
            v20 -= 4;
            if (v21 < 0)
            {
              operator delete(*v20);
            }
          }

          while (v20 != v19);
          v18 = v10[10];
        }

        v10[11] = v19;
        operator delete(v18);
      }

      v10 += 13;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}