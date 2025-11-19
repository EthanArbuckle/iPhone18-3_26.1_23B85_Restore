uint64_t *sub_19D390308(uint64_t *result, uint64_t *a2, void *a3, void *a4)
{
  v4 = a2[1];
  v5 = result + 1;
  v6 = a3 + 1;
  v7 = a3[1];
  if (v4 <= result[1])
  {
    if (v7 > v4)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      v7 = a2[1];
      a2[1] = a3[1];
      a3[1] = v7;
      if (a2[1] > *v5)
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
        v9 = result + 1;
        v12 = a2 + 1;
LABEL_10:
        v15 = *v9;
        *v9 = *v12;
        *v12 = v15;
        v7 = *v6;
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 > v4)
    {
      *result = *a3;
      *a3 = v8;
      v9 = result + 1;
LABEL_9:
      v12 = a3 + 1;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v8;
    v13 = result[1];
    result[1] = a2[1];
    a2[1] = v13;
    v7 = *v6;
    if (*v6 > v13)
    {
      v14 = *a2;
      *a2 = *a3;
      *a3 = v14;
      v9 = a2 + 1;
      goto LABEL_9;
    }
  }

  if (a4[1] > v7)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    v17 = a3[1];
    a3[1] = a4[1];
    a4[1] = v17;
    if (a3[1] > a2[1])
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      v19 = a2[1];
      a2[1] = a3[1];
      a3[1] = v19;
      if (a2[1] > *v5)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        v21 = result[1];
        result[1] = a2[1];
        a2[1] = v21;
      }
    }
  }

  return result;
}

BOOL sub_19D390480(uint64_t *a1, uint64_t *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        sub_19D390308(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v2 == 5)
      {
        sub_19D390308(a1, a1 + 2, a1 + 4, a1 + 6);
        if (*(a2 - 1) > a1[7])
        {
          v8 = a1[6];
          a1[6] = *(a2 - 2);
          *(a2 - 2) = v8;
          v9 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v9;
          v10 = a1[7];
          v11 = a1[5];
          if (v10 > v11)
          {
            v12 = a1[6];
            v13 = a1[3];
            v14 = a1[4];
            a1[4] = v12;
            a1[5] = v10;
            a1[6] = v14;
            a1[7] = v11;
            if (v10 > v13)
            {
              v15 = a1[1];
              v16 = a1[2];
              a1[2] = v12;
              a1[3] = v10;
              a1[4] = v16;
              a1[5] = v13;
              if (v10 > v15)
              {
                v17 = *a1;
                *a1 = v12;
                a1[1] = v10;
                a1[2] = v17;
                a1[3] = v15;
                return 1;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    v18 = a1 + 3;
    v19 = a1[3];
    v20 = a1 + 1;
    v21 = a1[1];
    v22 = *(a2 - 1);
    if (v19 <= v21)
    {
      if (v22 <= v19)
      {
        return 1;
      }

      v30 = a1[2];
      a1[2] = *(a2 - 2);
      *(a2 - 2) = v30;
      v31 = a1[3];
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v31;
      if (a1[3] <= a1[1])
      {
        return 1;
      }

      v32 = *a1;
      *a1 = a1[2];
      a1[2] = v32;
    }

    else
    {
      v23 = *a1;
      if (v22 <= v19)
      {
        *a1 = a1[2];
        a1[1] = v19;
        a1[2] = v23;
        a1[3] = v21;
        if (*(a2 - 1) <= v21)
        {
          return 1;
        }

        a1[2] = *(a2 - 2);
        *(a2 - 2) = v23;
        v20 = a1 + 3;
      }

      else
      {
        *a1 = *(a2 - 2);
        *(a2 - 2) = v23;
      }

      v18 = a2 - 1;
    }

    v36 = *v20;
    *v20 = *v18;
    *v18 = v36;
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 1) > a1[1])
    {
      v3 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v3;
      v4 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v4;
      return 1;
    }

    return 1;
  }

LABEL_17:
  v24 = a1[3];
  v26 = (a1 + 1);
  v25 = a1[1];
  v28 = (a1 + 5);
  v27 = a1[5];
  if (v24 > v25)
  {
    v29 = *a1;
    if (v27 <= v24)
    {
      *a1 = a1[2];
      a1[1] = v24;
      a1[2] = v29;
      a1[3] = v25;
      if (v27 <= v25)
      {
        goto LABEL_34;
      }

      a1[2] = a1[4];
      a1[4] = v29;
      v26 = (a1 + 3);
    }

    else
    {
      *a1 = a1[4];
      a1[4] = v29;
    }

    goto LABEL_33;
  }

  if (v27 > v24)
  {
    v33 = a1[2];
    v34 = a1[4];
    a1[2] = v34;
    a1[3] = v27;
    a1[4] = v33;
    a1[5] = v24;
    if (v27 > v25)
    {
      v35 = *a1;
      *a1 = v34;
      a1[2] = v35;
      v28 = (a1 + 3);
LABEL_33:
      *v26 = v27;
      *v28 = v25;
    }
  }

LABEL_34:
  v37 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v38 = 0;
  v39 = 0;
  v40 = a1 + 4;
  while (1)
  {
    v41 = v37[1];
    if (v41 > v40[1])
    {
      break;
    }

LABEL_43:
    v40 = v37;
    v38 += 16;
    v37 += 2;
    if (v37 == a2)
    {
      return 1;
    }
  }

  v42 = *v37;
  v43 = v38;
  do
  {
    v44 = (a1 + v43);
    v45 = *(a1 + v43 + 40);
    v44[6] = *(a1 + v43 + 32);
    v44[7] = v45;
    if (v43 == -32)
    {
      *a1 = v42;
      a1[1] = v41;
      if (++v39 != 8)
      {
        goto LABEL_43;
      }

      return v37 + 2 == a2;
    }

    v43 -= 16;
  }

  while (v41 > v44[3]);
  v46 = a1 + v43;
  *(v46 + 6) = v42;
  *(v46 + 7) = v41;
  if (++v39 != 8)
  {
    goto LABEL_43;
  }

  return v37 + 2 == a2;
}

void sub_19D391E7C(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_19D391EE0(uint64_t a1, void *a2)
{
  v32 = a2;
  v6 = objc_msgSend_data(*(a1 + 32), v3, v4, v5);
  v7 = v6;
  v11 = objc_msgSend_contents(v7, v8, v9, v10);

  v12 = *(a1 + 40);
  v16 = objc_msgSend_rows(*(a1 + 32), v13, v14, v15);
  v20 = objc_msgSend_columns(*(a1 + 32), v17, v18, v19);
  NSLog(&cfstr_TuXTu.isa, v12, v16, v20);
  v24 = 0;
  for (i = 0; i < objc_msgSend_rows(*(a1 + 32), v21, v22, v23); ++i)
  {
    v29 = 0;
    v30 = v11;
    while (v29 < objc_msgSend_columns(*(a1 + 32), v26, v27, v28))
    {
      v31 = objc_msgSend_columns(*(a1 + 32), v21, v22, v23);
      NSLog(&cfstr_Lf.isa, *(v30 + v24 * v31));
      ++v29;
      v30 += 4;
    }

    v24 += 4;
  }
}

id sub_19D392A38(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_network(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend_deviceHandler(v5, v6, v7, v8);
  v13 = objc_msgSend_vocabSize(*(a1 + 32), v10, v11, v12);
  v17 = objc_msgSend_embeddingDimension(*(a1 + 32), v14, v15, v16);
  v19 = objc_msgSend_weightMatrixWithRows_columns_stdDev_initialValues_columnMajor_(v9, v18, v13, v17, 0, 0, 0.0);

  v23 = objc_msgSend_network(*(a1 + 32), v20, v21, v22);
  v27 = objc_msgSend_deviceHandler(v23, v24, v25, v26);
  v30 = objc_msgSend_matrixToVector_(v27, v28, v19, v29);

  return v30;
}

void sub_19D39486C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_weights(*(a1 + 32), a2, a3, a4);

  if (v5)
  {
    v9 = objc_msgSend_weights(*(a1 + 32), v6, v7, v8);
    v13 = objc_msgSend_data(v9, v10, v11, v12);
    v14 = v13;
    v18 = objc_msgSend_contents(v14, v15, v16, v17);

    v19 = *(a1 + 40);
    if (v19)
    {
      v20 = *(a1 + 48);
      if (v20)
      {
        v22 = *(a1 + 56);
        v21 = *(a1 + 64);
        if (v20 > 7)
        {
          v25 = 4 * v20;
          v26 = v18 >= v22 + 4 * v19 * v20 || v22 >= v18 + v21 * (v19 - 1) + 4 * v20;
          if (!v26 || (v25 | v21) < 0)
          {
            for (i = 0; i != v19; ++i)
            {
              v36 = v18;
              v37 = v22;
              v38 = v20;
              do
              {
                v39 = *v36++;
                *v37++ = v39;
                --v38;
              }

              while (v38);
              v22 += v25;
              v18 += v21;
            }
          }

          else
          {
            v27 = v20 & 0xFFFFFFFFFFFFFFF8;
            v28 = v20 - (v20 & 0xFFFFFFFFFFFFFFF8);
            if (v28)
            {
              v40 = 0;
              v41 = (v18 + 16);
              v42 = (v22 + 16);
              v43 = (v18 + (v25 & 0xFFFFFFFFFFFFFFE0));
              v44 = (v22 + (v25 & 0xFFFFFFFFFFFFFFE0));
              do
              {
                v45 = v27;
                v46 = v42;
                v47 = v41;
                do
                {
                  v48 = *v47;
                  *(v46 - 1) = *(v47 - 1);
                  *v46 = v48;
                  v47 += 2;
                  v46 += 2;
                  v45 -= 8;
                }

                while (v45);
                v49 = v28;
                v50 = v44;
                v51 = v43;
                do
                {
                  v52 = *v51++;
                  *v50++ = v52;
                  --v49;
                }

                while (v49);
                ++v40;
                v41 = (v41 + v21);
                v42 = (v42 + v25);
                v43 = (v43 + v21);
                v44 = (v44 + v25);
              }

              while (v40 != v19);
            }

            else
            {
              v29 = (v22 + 16);
              v30 = (v18 + 16);
              do
              {
                v31 = v30;
                v32 = v29;
                v33 = v27;
                do
                {
                  v34 = *v31;
                  *(v32 - 1) = *(v31 - 1);
                  *v32 = v34;
                  v32 += 2;
                  v31 += 2;
                  v33 -= 8;
                }

                while (v33);
                ++v28;
                v29 = (v29 + v25);
                v30 = (v30 + v21);
              }

              while (v28 != v19);
            }
          }
        }

        else
        {
          v23 = (v18 + 12);
          v24 = (v22 + 12);
          do
          {
            *(v24 - 3) = *(v23 - 3);
            if (v20 != 1)
            {
              *(v24 - 2) = *(v23 - 2);
              if (v20 != 2)
              {
                *(v24 - 1) = *(v23 - 1);
                if (v20 != 3)
                {
                  *v24 = *v23;
                  if (v20 != 4)
                  {
                    v24[1] = v23[1];
                    if (v20 != 5)
                    {
                      v24[2] = v23[2];
                      if (v20 != 6)
                      {
                        v24[3] = v23[3];
                      }
                    }
                  }
                }
              }
            }

            v23 = (v23 + v21);
            v24 += v20;
            --v19;
          }

          while (v19);
        }
      }
    }
  }
}

void sub_19D394DE8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_19D394DE8(a1, *a2);
    sub_19D394DE8(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void sub_19D394E4C(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      v10 = 24 * a2;
      v11 = (v3 + 8);
      do
      {
        *v11 = 0;
        v11[1] = 0;
        *(v11 - 1) = v11;
        v11 += 3;
        v10 -= 24;
      }

      while (v10);
      a1[1] = v9;
    }

    else
    {
      a1[1] = v3;
    }
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_19D2AE2B4();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_19D2AD81C();
    }

    v12 = 24 * a2;
    v13 = 24 * v5 + 24 * a2;
    v14 = (24 * v5 + 8);
    do
    {
      *v14 = 0;
      v14[1] = 0;
      *(v14 - 1) = v14;
      v14 += 3;
      v12 -= 24;
    }

    while (v12);
    v15 = *a1;
    v16 = a1[1];
    v17 = 24 * v5 - (v16 - *a1);
    if (v16 != *a1)
    {
      v18 = 0;
      v19 = -8 * ((v16 - *a1) >> 3) + 24 * v5;
      do
      {
        while (1)
        {
          v20 = (v19 + v18 * 8);
          v21 = &v15[v18 + 1];
          v22 = *v21;
          *v20 = v15[v18];
          *(v19 + v18 * 8 + 8) = v22;
          v23 = v19 + v18 * 8 + 8;
          v24 = v15[v18 + 2];
          v20[2] = v24;
          if (!v24)
          {
            break;
          }

          *(v22 + 16) = v23;
          v15[v18] = v21;
          *v21 = 0;
          v15[v18 + 2] = 0;
          v18 += 3;
          if (&v15[v18] == v16)
          {
            goto LABEL_24;
          }
        }

        *v20 = v23;
        v18 += 3;
      }

      while (&v15[v18] != v16);
      do
      {
LABEL_24:
        sub_19D394DE8(v15, v15[1]);
        v15 += 3;
      }

      while (v15 != v16);
      v15 = *a1;
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

unint64_t sub_19D395094(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  if (v1 == 2)
  {
    return (v2 + 2 * a1[3] - a1[1]) / a1[2] + 1;
  }

  if (v1)
  {
    return (v2 / a1[2]);
  }

  return vcvtps_u32_f32((v2 - a1[1] + 1) / a1[2]);
}

unint64_t sub_19D3950F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (v1 == 2)
    {
      return *(a1 + 24);
    }

    return (*(a1 + 8) - *a1 + ((*a1 / *(a1 + 16)) - 1) * *(a1 + 16) + 1) >> 1;
  }

  return v1;
}

uint64_t sub_19D395140(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v49 = *MEMORY[0x1E69E9840];
  v44 = 6;
  strcpy(v43, "filter");
  v45 = -1;
  v12 = *(a4 + 16);
  if (v12 != -1)
  {
    v42 = &v44 + 1;
    (off_1F10BAA50[v12])(&v42, a4);
    v45 = v12;
  }

  v47 = 6;
  strcpy(__p, "stride");
  v48 = -1;
  v13 = *(a5 + 16);
  if (v13 != -1)
  {
    v42 = &v47 + 1;
    (off_1F10BAA50[v13])(&v42, a5);
    v48 = v13;
  }

  v41[0] = 0;
  v41[1] = 0;
  v40 = v41;
  sub_19D3956C4(&v40, v41, v43);
  sub_19D3956C4(&v40, v41, __p);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  v14 = v40;
  v15 = a6;
  if (v40 != v41)
  {
    do
    {
      sub_19D3956C4(a1, (a1 + 8), v14 + 4);
      v35 = v14[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = v14[2];
          v37 = *v36 == v14;
          v14 = v36;
        }

        while (!v37);
      }

      v14 = v36;
    }

    while (v36 != v41);
  }

  sub_19D2A3E48(&v40, v41[0]);
  if (v47 < 0)
  {
    operator delete(__p[0]);
    if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_23:
    operator delete(v43[0]);
    goto LABEL_8;
  }

  if (v44 < 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = a3[2];
  *(a1 + 112) = a2;
  v16 = *a3;
  LODWORD(v40) = 0;
  v17 = *(a4 + 16);
  if (v17 == -1 || (v43[0] = &v40, v18 = (off_1F10BAA60[v17])(v43, a4), LODWORD(v40) = 0, v19 = *(a5 + 16), v19 == -1) || (v20 = v18, v43[0] = &v40, v21 = (off_1F10BAA60[v19])(v43, a5), LODWORD(v40) = 0, v22 = *(a7 + 16), v22 == -1) || (v23 = v21, v43[0] = &v40, v24 = (off_1F10BAA60[v22])(v43, a7), *(a1 + 24) = v16, *(a1 + 32) = v20, *(a1 + 40) = v23, *(a1 + 48) = v24, *(a1 + 56) = a6, v25 = a3[1], LODWORD(v40) = 1, v26 = *(a4 + 16), v26 == -1) || (v43[0] = &v40, v27 = (off_1F10BAA60[v26])(v43, a4), LODWORD(v40) = 1, v28 = *(a5 + 16), v28 == -1) || (v29 = v27, v43[0] = &v40, v30 = (off_1F10BAA60[v28])(v43, a5), LODWORD(v40) = 1, v31 = *(a7 + 16), v31 == -1))
  {
    sub_19D37EF7C();
  }

  v32 = v30;
  v43[0] = &v40;
  v33 = (off_1F10BAA60[v31])(v43, a7);
  *(a1 + 64) = v25;
  *(a1 + 72) = v29;
  *(a1 + 80) = v32;
  *(a1 + 88) = v33;
  *(a1 + 96) = v15;
  return a1;
}

void sub_19D3954B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a2)
  {
    sub_19D2ABE10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_19D395534(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 320);
  v3 = *(a2 + 328);
  *&v4 = v2;
  *(&v4 + 1) = SHIDWORD(v2);
  v15 = v4;
  v5 = *(a2 + 136);
  v6 = *(a2 + 256);
  v16 = 1;
  *&v4 = v3;
  *(&v4 + 1) = SHIDWORD(v3);
  v13 = v4;
  v14 = 1;
  v7 = *(a2 + 336);
  v8 = *(a2 + 344);
  v11[0] = *(a2 + 340);
  v11[1] = v8;
  v12 = 1;
  v9 = *(a2 + 128);
  *&v4 = v9;
  *(&v4 + 1) = SHIDWORD(v9);
  v17 = v4;
  v18 = v5;
  return sub_19D395140(a1, v6, &v17, &v15, &v13, v7, v11);
}

uint64_t sub_19D3955B4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  v5 = (a2 + 8);
  v6 = *a2;
  if (*a2 != a2 + 8)
  {
    do
    {
      sub_19D3956C4(a1, v4, v6 + 4);
      v11 = v6[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v6[2];
          v13 = *v12 == v6;
          v6 = v12;
        }

        while (!v13);
      }

      v6 = v12;
    }

    while (v12 != v5);
  }

  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 40);
  v8 = *(a2 + 56);
  v9 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v9;
  *(a1 + 56) = v8;
  *(a1 + 40) = v7;
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

__n128 sub_19D3956B4(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

uint64_t sub_19D3956C4(uint64_t **a1, uint64_t *a2, const void **a3)
{
  v3 = *sub_19D2C3F28(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_19D395804(uint64_t result, uint64_t a2, _DWORD *a3, __int128 *a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, void *a9)
{
  *result = &unk_1F10BAA80;
  *(result + 8) = a2;
  v9 = *a4;
  v10 = a4[1];
  *(result + 48) = *(a4 + 4);
  *(result + 16) = v9;
  *(result + 32) = v10;
  v11 = *a6;
  v12 = a6[1];
  v13 = *(a6 + 4);
  *(result + 120) = 0;
  *(result + 56) = v11;
  *(result + 72) = v12;
  *(result + 88) = v13;
  *(result + 96) = a5;
  *(result + 104) = a7;
  *(result + 112) = a8;
  *(result + 128) = 0;
  *(result + 136) = 0;
  v14 = a9[1];
  if (v14 != *a9)
  {
    if (((v14 - *a9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  *(result + 144) = *a3;
  return result;
}

void sub_19D3958E0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 128) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3958FC(uint64_t a1)
{
  if (*(a1 + 48) * *(a1 + 40))
  {
    v2 = 0;
    for (i = 0; *(a1 + 48) * *(a1 + 40) > i; ++i)
    {
      v4 = **(a1 + 96);
      v5 = (*(a1 + 16) * *(a1 + 24) * *(a1 + 32));
      v6 = v5;
      v7 = (v4 + 4 * v5 * i);
      v8 = **(a1 + 104);
      v9 = *(a1 + 56) * *(a1 + 64) * *(a1 + 72);
      v10 = (v8 + 4 * v9 * i);
      v11 = *(a1 + 144);
      if (v11 > 7)
      {
        switch(v11)
        {
          case 8:
            vDSP_measqv(v7, 1, v10, v5);
            break;
          case 9:
            vDSP_rmsqv(v7, 1, v10, v5);
            break;
          case 10:
            vDSP_svesq(v7, 1, v10, v5);
            break;
        }

        goto LABEL_4;
      }

      if (v11 != 4)
      {
        if (v11 == 6)
        {
          vDSP_sve(v7, 1, v10, v5);
        }

        else if (v11 == 7)
        {
          vDSP_meanv(v7, 1, v10, v5);
        }

        goto LABEL_4;
      }

      if (v5 << 32)
      {
        if (v5 <= 1)
        {
          v5 = 1;
        }

        else
        {
          v5 = v5;
        }

        if (v6 > 7 && v8 + v9 * 4 * i - (v4 + v6 * 4 * i) >= 0x20)
        {
          v12 = v5 & 0xFFFFFFFFFFFFFFF8;
          v17 = (v4 + v6 * v2 + 16);
          v18 = (v8 + v9 * v2 + 16);
          v19 = v5 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v20 = vsqrtq_f32(*v17);
            v18[-1] = vsqrtq_f32(v17[-1]);
            *v18 = v20;
            v17 += 2;
            v18 += 2;
            v19 -= 8;
          }

          while (v19);
          if (v6 == v12)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v12 = 0;
        }

        v13 = (v8 + 4 * v12 + v9 * v2);
        v14 = (v4 + 4 * v12 + v6 * v2);
        v15 = v5 - v12;
        do
        {
          v16 = *v14++;
          *v13++ = sqrtf(v16);
          --v15;
        }

        while (v15);
      }

LABEL_4:
      v2 += 4;
    }
  }

  v30[0] = *(a1 + 16) * *(a1 + 24) * *(a1 + 32);
  v30[1] = 0x3F80000000010020;
  v30[2] = 0;
  v29[1] = 0x3F80000000010020;
  v29[2] = 0;
  v29[0] = v30[0];
  memset(v28, 0, sizeof(v28));
  v21 = *(a1 + 112);
  if (v21 > 7)
  {
    if (v21 > 9)
    {
      if (v21 == 10 || v21 == 12)
      {
        return;
      }
    }

    else
    {
      if (v21 == 8)
      {
        return;
      }

      LODWORD(v28[0]) = 8;
      *(v28 + 4) = **(a1 + 120);
    }
  }

  else if (v21 > 3)
  {
    if (v21 == 4)
    {
      v22 = 11;
      goto LABEL_46;
    }

    if (v21 == 5)
    {
      v22 = 1;
      goto LABEL_46;
    }
  }

  else
  {
    if (v21 == 1)
    {
      v22 = 3;
      goto LABEL_46;
    }

    if (v21 == 2)
    {
      v22 = 4;
LABEL_46:
      LODWORD(v28[0]) = v22;
    }
  }

  v23 = MEMORY[0x19EAF99F0](v30, v29, v28, 0);
  if (v23)
  {
    v24 = *(a1 + 16) * *(a1 + 24) * *(a1 + 32);
    v25 = **(a1 + 104);
    v26 = v24 * *(a1 + 40) * *(a1 + 48) / v24;
    v27 = v23;
    BNNSFilterApplyBatch(v23, v26, v25, v24, v25, v24);
    v23 = v27;
  }

  BNNSFilterDestroy(v23);
}

void *sub_19D395C1C(void *result)
{
  *result = &unk_1F10BAA80;
  v1 = result[15];
  if (v1)
  {
    result[16] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_19D395C74(void *a1)
{
  *a1 = &unk_1F10BAA80;
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_19D395EF0(uint64_t a1, uint64_t a2, uint64_t a3, void *__src)
{
  v53 = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    v6 = a3;
    sub_19D2AD6B8(__p, *a2, *(a2 + 8));
    a3 = v6;
  }

  else
  {
    *__p = *a2;
    v42 = *(a2 + 16);
  }

  sub_19D38622C(a1, __p, a3, __src);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_1F10BAAC0;
  sub_19D395534(a1 + 1016, __src);
  *(a1 + 1136) = 0;
  *(a1 + 1184) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1192) = 0;
  *(a1 + 1208) = __src[7];
  v7 = *(a1 + 1040);
  v8 = *(a1 + 1080);
  v9 = *(a1 + 1120);
  LODWORD(__s2) = 1;
  v45 = v7;
  v46 = v8;
  v48 = 0;
  v49 = 0;
  v47 = v9;
  sub_19D2AD9C0(a1 + 16, &__s2, &v50);
  v10 = sub_19D395094((a1 + 1040));
  v11 = sub_19D395094((a1 + 1080));
  v12 = *(a1 + 1128);
  LODWORD(__s2) = 9;
  v45 = v10;
  v46 = v11;
  v48 = 0;
  v49 = 0;
  v47 = v12;
  sub_19D2AD9C0(a1 + 40, &__s2, &v50);
  v13 = __src[56];
  HIBYTE(v46) = 6;
  strcpy(&__s2, "weight");
  v47 = v13;
  v14 = __src[72];
  v51 = 4;
  strcpy(&v48, "bias");
  v52 = v14;
  v40[0] = 0;
  v40[1] = 0;
  v39 = v40;
  sub_19D37F190(&v39, v40, &__s2);
  sub_19D37F190(&v39, v40, &v48);
  if (v51 < 0)
  {
    operator delete(v48);
    if ((SHIBYTE(v46) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_44:
    operator delete(__s2);
    goto LABEL_8;
  }

  if (SHIBYTE(v46) < 0)
  {
    goto LABEL_44;
  }

LABEL_8:
  HIBYTE(v46) = 4;
  strcpy(&__s2, "bias");
  v15 = v40[0];
  do
  {
    v16 = v15[55];
    v17 = v16;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(v15 + 5);
    }

    if (v17 >= 0)
    {
      v18 = v15 + 32;
    }

    else
    {
      v18 = *(v15 + 4);
    }

    if (v16 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v16;
    }

    v20 = v16 < 4;
    v21 = memcmp(v18, &__s2, v19);
    v22 = v21 < 0;
    if (!v21)
    {
      v22 = v20;
    }

    if (v22)
    {
      v23 = 8;
    }

    else
    {
      v23 = 0;
    }

    v15 = *&v15[v23];
  }

  while (v15);
  p_s2 = &__s2;
  v24 = sub_19D396AB8(&v39, &__s2)[7];
  v25 = *(a1 + 1128);
  *(a1 + 1184) = 0;
  *(a1 + 1192) = v25;
  *(a1 + 1200) = v24;
  if (SHIBYTE(v46) < 0)
  {
    operator delete(__s2);
  }

  HIBYTE(v46) = 6;
  strcpy(&__s2, "weight");
  v26 = v40[0];
  do
  {
    v27 = v26[55];
    v28 = v27;
    if ((v27 & 0x80u) != 0)
    {
      v27 = *(v26 + 5);
    }

    if (v28 >= 0)
    {
      v29 = v26 + 32;
    }

    else
    {
      v29 = *(v26 + 4);
    }

    if (v27 >= 6)
    {
      v30 = 6;
    }

    else
    {
      v30 = v27;
    }

    v31 = v27 < 6;
    v32 = memcmp(v29, &__s2, v30);
    v33 = v32 < 0;
    if (!v32)
    {
      v33 = v31;
    }

    if (v33)
    {
      v34 = 8;
    }

    else
    {
      v34 = 0;
    }

    v26 = *&v26[v34];
  }

  while (v26);
  p_s2 = &__s2;
  v35 = sub_19D396AB8(&v39, &__s2)[7];
  v36 = sub_19D37EE00(a1 + 1016, 0);
  v37 = sub_19D37EE00(a1 + 1016, 1);
  *(a1 + 1136) = 1;
  *(a1 + 1144) = v36;
  *(a1 + 1152) = v37;
  *(a1 + 1160) = *(a1 + 1120);
  *(a1 + 1176) = v35;
  if (SHIBYTE(v46) < 0)
  {
    operator delete(__s2);
  }

  sub_19D2A3E48(&v39, v40[0]);
  return a1;
}

void sub_19D3962BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, char *a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_19D2A3E48(&a10, a11);
  sub_19D2A3E48(v33 + 1016, *(v33 + 1024));
  sub_19D38640C(v33);
  _Unwind_Resume(a1);
}

uint64_t sub_19D39638C(void *a1, uint64_t a2)
{
  v4 = a1[20];
  v5 = a1[21];
  if (v4 == v5)
  {
    a1[21] = v4;
    if (!a1[31])
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  do
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  while (v4 != v5);
  a1[21] = a1[20];
  if (a1[31])
  {
LABEL_8:
    v6 = a1[30];
    v7 = *(a1[29] + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    a1[31] = 0;
    if (v6 != a1 + 29)
    {
      do
      {
        v9 = v6[1];
        operator delete(v6);
        v6 = v9;
      }

      while (v9 != a1 + 29);
    }
  }

LABEL_10:
  v10 = *(*a2 + 192);

  return v10(a2, a1);
}

uint64_t sub_19D396490(uint64_t a1, int a2, int a3)
{
  *(a1 + 280) = a3;
  v4 = *(a1 + 160);
  v5 = *(a1 + 168);
  if (v4 != v5)
  {
    v6 = (a3 * a2);
    do
    {
      v7 = *v4++;
      (*(*v7 + 16))(v7, v6);
    }

    while (v4 != v5);
  }

  v8 = *(*a1 + 32);

  return v8(a1);
}

uint64_t sub_19D396534(void *a1, int a2)
{
  v4 = a1[2];
  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  v7 = sub_19D3950F8((a1 + 130));
  v8 = sub_19D37EE00((a1 + 127), 0);
  sub_19D37EE00((a1 + 127), 1);
  v9 = sub_19D37F014((a1 + 127), 0);
  sub_19D37F014((a1 + 127), 1);
  v10 = sub_19D3950F8((a1 + 135));
  sub_19D37EE00((a1 + 127), 0);
  v18 = sub_19D37EE00((a1 + 127), 1);
  sub_19D37F014((a1 + 127), 0);
  v16 = sub_19D37F014((a1 + 127), 1);
  v17 = a1[141];
  v15 = (*(*a1 + 224))(a1);
  result = (*(*a1 + 216))(a1, 1);
  v12 = a1[6];
  if (!v12)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v13 = v12;
      v14 = *(v12 + 32);
      if (v14 <= a2)
      {
        break;
      }

      v12 = *v13;
      if (!*v13)
      {
        goto LABEL_8;
      }
    }

    if (v14 >= a2)
    {
      break;
    }

    v12 = v13[1];
    if (!v12)
    {
      goto LABEL_8;
    }
  }

  v13[5] = (v5 + 2 * v7 - v8) / v9 + 1;
  v13[6] = (v6 + 2 * v10 - v18) / v16 + 1;
  v13[7] = v17;
  v13[8] = v15;
  v13[9] = result;
  return result;
}

BOOL sub_19D396788(uint64_t a1, void *a2, int a3)
{
  if ((a3 - 8) < 0xFFFFFFF9)
  {
    return 0;
  }

  v5 = (a1 + 24);
  v4 = *(a1 + 24);
  if (!v4)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v7 <= a3)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_9;
      }
    }

    if (v7 >= a3)
    {
      break;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  if (v6[5] != *a2)
  {
    return 1;
  }

  v8 = *v5;
  if (!*v5)
  {
LABEL_17:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v9 = v8;
      v10 = *(v8 + 32);
      if (v10 <= a3)
      {
        break;
      }

      v8 = *v9;
      if (!*v9)
      {
        goto LABEL_17;
      }
    }

    if (v10 >= a3)
    {
      break;
    }

    v8 = v9[1];
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  if (v9[6] != a2[1])
  {
    return 1;
  }

  v11 = *v5;
  if (!*v5)
  {
LABEL_26:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v12 = v11;
      v13 = *(v11 + 32);
      if (v13 <= a3)
      {
        break;
      }

      v11 = *v12;
      if (!*v12)
      {
        goto LABEL_26;
      }
    }

    if (v13 >= a3)
    {
      return v12[7] != a2[2];
    }

    v11 = v12[1];
    if (!v11)
    {
      goto LABEL_26;
    }
  }
}

uint64_t sub_19D3969FC(uint64_t a1)
{
  *a1 = &unk_1F10BAAC0;
  sub_19D2A3E48(a1 + 1016, *(a1 + 1024));

  return sub_19D38640C(a1);
}

void sub_19D396A58(uint64_t a1)
{
  *a1 = &unk_1F10BAAC0;
  sub_19D2A3E48(a1 + 1016, *(a1 + 1024));
  v2 = sub_19D38640C(a1);

  operator delete(v2);
}

void *sub_19D396AB8(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_25;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void sub_19D396C60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_19D2B0DCC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_19D396C74(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && *(result + 16) && *result >= 1)
  {
    v2 = result;
    operator delete[](v1);
    return v2;
  }

  return result;
}

void sub_19D396CC0(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  operator new[]();
}

uint64_t sub_19D396D08(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

void *sub_19D396D14(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  result = sub_19D435408(a1, a2, a3, a4);
  *result = &unk_1F10BAC48;
  return result;
}

uint64_t sub_19D396D48(void *a1, uint64_t a2)
{
  v4 = a1[20];
  v5 = a1[21];
  if (v4 == v5)
  {
    a1[21] = v4;
    if (!a1[31])
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  do
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  while (v4 != v5);
  a1[21] = a1[20];
  if (a1[31])
  {
LABEL_8:
    v6 = a1[30];
    v7 = *(a1[29] + 8);
    v8 = *v6;
    *(v8 + 8) = v7;
    *v7 = v8;
    a1[31] = 0;
    if (v6 != a1 + 29)
    {
      do
      {
        v9 = v6[1];
        operator delete(v6);
        v6 = v9;
      }

      while (v9 != a1 + 29);
    }
  }

LABEL_10:
  v10 = *(*a2 + 88);

  return v10(a2, a1);
}

void sub_19D396E50(uint64_t a1)
{
  v1 = sub_19D38640C(a1);

  operator delete(v1);
}

uint64_t sub_19D397E8C(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, int a8, float a9, int a10)
{
  *result = &unk_1F10B9AB8;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 48) = 0;
  *(result + 32) = a5;
  *(result + 40) = a6;
  *(result + 56) = 0;
  *(result + 64) = 0;
  v10 = a7[1];
  if (v10 != *a7)
  {
    if (((v10 - *a7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_19D2AE2B4();
  }

  v11 = a10;
  if (!a10)
  {
    v11 = a4;
  }

  *(result + 72) = a8;
  *(result + 76) = v11;
  *(result + 80) = a9;
  *result = &unk_1F10BADD0;
  return result;
}

void sub_19D397F84(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D397FA0(uint64_t a1, int a2)
{
  v2 = a2;
  v4 = 0;
  v5 = *(a1 + 24);
  v60[0] = v5;
  v60[1] = 0x3F80000000010020;
  v60[2] = 0;
  v59[1] = 0x3F80000000010020;
  v59[2] = 0;
  v59[0] = v5;
  memset(v58, 0, sizeof(v58));
  v6 = *(a1 + 16);
  if (v6 <= 5)
  {
    if (v6 <= 1)
    {
      if (!v6)
      {
        goto LABEL_31;
      }

      if (v6 != 1)
      {
        goto LABEL_33;
      }

      v7 = 3;
    }

    else
    {
      switch(v6)
      {
        case 2:
          v7 = 4;
          break;
        case 4:
          v7 = 11;
          break;
        case 5:
          v7 = 1;
          break;
        default:
          goto LABEL_33;
      }
    }

    LODWORD(v58[0]) = v7;
    v4 = MEMORY[0x19EAF99F0](v60, v59, v58, 0);
    if (!v4)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v6 > 9)
  {
    if (v6 == 10)
    {
      v24 = (v5 * a2);
      if (v24 >= 1)
      {
        v25 = *(a1 + 40);
        v26 = 4 * *(a1 + 72);
        v27 = (**(a1 + 32) + v26);
        v28 = (*v25 + v26);
        do
        {
          v29 = *v27++;
          v30 = v29 * 0.5 + erf(v29 * 0.707106781) * (v29 * 0.5);
          *v28++ = v30;
          --v24;
        }

        while (v24);
      }

      return;
    }

    if (v6 != 11)
    {
      if (v6 == 12)
      {
        v8 = (v5 * a2);
        if (v8 < 1)
        {
          return;
        }

        v9 = *(a1 + 40);
        v10 = **(a1 + 32);
        v11 = *(a1 + 72);
        v12 = *v9;
        if (v8 >= 4 && (*v9 - v10) >= 0x10)
        {
          v31 = (v10 + 4 * v11);
          v32 = (v12 + 4 * v11);
          v14 = v8 & 0x7FFFFFFC;
          __asm { FMOV            V0.4S, #1.0 }

          v48 = _Q0;
          v49 = vdupq_n_s64(0x3FFB3B645A1CAC08uLL);
          v37 = v14;
          do
          {
            v38 = *v31++;
            v53 = vmulq_f64(vcvtq_f64_f32(*v38.f32), v49);
            __x = vmulq_f64(vcvt_hight_f64_f32(v38), v49);
            v51 = exp(__x.f64[1]);
            v39.f64[0] = exp(__x.f64[0]);
            v39.f64[1] = v51;
            v52 = v39;
            __x.f64[0] = exp(v53.f64[1]);
            v40.f64[0] = exp(v53.f64[0]);
            v40.f64[1] = __x.f64[0];
            v41 = vcvt_hight_f32_f64(vcvt_f32_f64(v40), v52);
            *v32++ = vdivq_f32(vmulq_f32(v38, v41), vaddq_f32(v41, v48));
            v37 -= 4;
          }

          while (v37);
          if (v14 == v8)
          {
            return;
          }
        }

        else
        {
          v14 = 0;
        }

        v42 = 4 * v14 + 4 * v11;
        v43 = (v12 + v42);
        v44 = (v10 + v42);
        v45 = v8 - v14;
        do
        {
          v46 = *v44++;
          v47 = exp(v46 * 1.702);
          *v43++ = (v46 * v47) / (v47 + 1.0);
          --v45;
        }

        while (v45);
        return;
      }

LABEL_33:
      BNNSFilterDestroy(v4);
      return;
    }

    LODWORD(v58[0]) = 2;
    DWORD1(v58[0]) = *(a1 + 80);
LABEL_31:
    v4 = MEMORY[0x19EAF99F0](v60, v59, v58, 0);
    if (v4)
    {
LABEL_32:
      v19 = *(a1 + 76);
      v20 = 4 * *(a1 + 72);
      v21 = (**(a1 + 32) + v20);
      v22 = (**(a1 + 40) + v20);
      v23 = v4;
      BNNSFilterApplyBatch(v4, v2, v21, v19, v22, v19);
      v4 = v23;
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  if (v6 == 6)
  {
    goto LABEL_31;
  }

  if (v6 != 8)
  {
    if (v6 != 9)
    {
      goto LABEL_33;
    }

    LODWORD(v58[0]) = 8;
    *(v58 + 4) = **(a1 + 48);
    v4 = MEMORY[0x19EAF99F0](v60, v59, v58, 0);
    if (!v4)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v57 = 1045220557;
  __B = 0.0;
  v56 = 1056964608;
  __C = 1.0;
  if (a2 >= 1)
  {
    v15 = 4 * *(a1 + 72);
    v16 = (**(a1 + 40) + v15);
    v17 = **(a1 + 32) + v15;
    do
    {
      MEMORY[0x19EAFB200](v17, 1, &v57, &v56, v16, 1, *(a1 + 24));
      vDSP_vclip(v16, 1, &__B, &__C, v16, 1, *(a1 + 24));
      v18 = 4 * *(a1 + 76);
      v17 += v18;
      v16 = (v16 + v18);
      --v2;
    }

    while (v2);
  }
}

void *sub_19D3983B0(void *result)
{
  *result = &unk_1F10B9AB8;
  v1 = result[6];
  if (v1)
  {
    result[7] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_19D398408(void *a1)
{
  *a1 = &unk_1F10B9AB8;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

uint64_t sub_19D39846C(uint64_t result, int a2, double a3, int32x2_t a4)
{
  v4 = (*(result + 20) * a2);
  if (v4 < 1)
  {
    return result;
  }

  v5 = *(result + 16);
  v6 = (result + 40);
  v7 = (result + 44);
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v16 = **(result + 24);
        v17 = **(result + 32);
        do
        {
          v18 = (*v6 * -0.0078125) * *v16;
          *v17 = v18;
          v19 = *v7;
          if (v18 > *v7 || (v19 = *v6, v18 < *v6))
          {
            *v17 = v19;
          }

          ++v16;
          ++v17;
          --v4;
        }

        while (v4);
      }
    }

    else
    {
      v31 = **(result + 24);
      v32 = **(result + 32);
      if (v4 >= 8)
      {
        v33 = 0;
        v48 = v32 + 4 * v4;
        v50 = v32 < v31 + 4 * v4 && v31 < v48;
        if ((v6 >= v48 || v32 >= result + 48) && !v50)
        {
          v33 = v4 & 0x7FFFFFFC;
          v52 = vld1q_dup_f32(v6);
          v53 = vld1q_dup_f32(v7);
          __asm { FMOV            V3.4S, #1.0 }

          v58 = vmulq_f32(vdivq_f32(_Q3, vsubq_f32(v52, v53)), vdupq_n_s32(0xC3800000));
          v59.i64[0] = 0x7F0000007FLL;
          v59.i64[1] = 0x7F0000007FLL;
          v60.i64[0] = 0x7E0000007ELL;
          v60.i64[1] = 0x7E0000007ELL;
          v61 = vdupq_n_s32(0xC2FE0000);
          v62 = vdupq_n_s32(0x42FE0000u);
          v63 = v33;
          v64 = **(result + 32);
          v65 = **(result + 24);
          do
          {
            v66 = *v65++;
            v67 = vmovn_s32(vcgtq_f32(v66, v52));
            v68 = vmovn_s32(vcgtq_f32(v53, v66));
            v69 = vcvtq_s32_f32(vrndaq_f32(vmulq_f32(v66, v58)));
            v70 = vand_s8(v67, v68);
            v71 = vmovn_s32(vcgtq_s32(v69, v59));
            *v64++ = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vbic_s8(v70, v71)), 0x1FuLL)), vcvtq_f32_s32(vmaxq_s32(v69, v60)), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vorr_s8(vand_s8(v70, v71), vbic_s8(v67, v68))), 0x1FuLL)), v62, v61));
            v63 -= 4;
          }

          while (v63);
          if (v33 == v4)
          {
            return result;
          }
        }
      }

      else
      {
        v33 = 0;
      }

      v34 = (v31 + 4 * v33);
      v35 = (v32 + 4 * v33);
      v36 = v4 - v33;
      do
      {
        while (1)
        {
          while (1)
          {
            v37 = *v34;
            if (*v34 > *v6)
            {
              break;
            }

            *v35++ = -127.0;
            ++v34;
            if (!--v36)
            {
              return result;
            }
          }

          if (v37 < *v7)
          {
            v38 = llroundf((v37 * -256.0) / (*v6 - *v7));
            if (v38 <= 127)
            {
              break;
            }
          }

          *v35++ = 127.0;
          ++v34;
          if (!--v36)
          {
            return result;
          }
        }

        if (v38 <= -127)
        {
          v38 = -127;
        }

        *v35++ = v38;
        ++v34;
        --v36;
      }

      while (v36);
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        v20 = **(result + 24);
        v21 = **(result + 32);
        do
        {
          v22 = (((*v6 * -0.0078125) * (*v6 * -0.0078125)) * *v20) * roundf(-128.0 / *v6);
          *v21 = v22;
          v23 = *v7;
          if (v22 > *v7 || (v23 = *v6, v22 < *v6))
          {
            *v21 = v23;
          }

          ++v20;
          ++v21;
          --v4;
        }

        while (v4);
        break;
      case 3:
        v24 = **(result + 24);
        v25 = **(result + 32);
        if (v4 >= 8)
        {
          v26 = 0;
          v39 = v25 + 4 * v4;
          v41 = v25 < v24->u64 + 4 * v4 && v24 < v39;
          if ((v6 >= v39 || v25 >= v7) && !v41)
          {
            v26 = v4 & 0x7FFFFFF8;
            v43 = (*v6 * *v6) * 0.000061035;
            v44 = v24 + 1;
            v45 = (v25 + 16);
            v46 = v26;
            do
            {
              v47 = vmulq_n_f32(*v44, v43);
              v45[-1] = vmulq_n_f32(v44[-1], v43);
              *v45 = v47;
              v44 += 2;
              v45 += 2;
              v46 -= 8;
            }

            while (v46);
            if (v26 == v4)
            {
              return result;
            }
          }
        }

        else
        {
          v26 = 0;
        }

        v27 = &v24->f32[v26];
        v28 = (v25 + 4 * v26);
        v29 = v4 - v26;
        do
        {
          v30 = *v27++;
          *v28++ = (*v6 * *v6) * (0.000061035 * v30);
          --v29;
        }

        while (v29);
        return result;
      case 4:
        v8 = **(result + 24);
        v9 = **(result + 32);
        if (v4 >= 8)
        {
          v10 = 0;
          v72 = v9 + 4 * v4;
          v74 = v9 < v8 + 4 * v4 && v8 < v72;
          if ((v6 >= v72 || v9 >= result + 48) && !v74)
          {
            v10 = v4 & 0x7FFFFFFC;
            *a4.i32 = *v6;
            v76 = vdupq_lane_s32(a4, 0);
            v77.i64[0] = 0xBC000000BC000000;
            v77.i64[1] = 0xBC000000BC000000;
            v78 = vmulq_n_f32(v77, *v6);
            v79 = vld1q_dup_f32(v7);
            v80 = v10;
            v81 = **(result + 32);
            v82 = **(result + 24);
            do
            {
              v83 = *v82++;
              v84 = vmulq_f32(v78, v83);
              v85 = vcgeq_f32(v79, v84);
              *v81 = vaddq_f32(*v81, vbslq_s8(v85, vbslq_s8(vcltzq_s32(vshlq_n_s32(vandq_s8(v85, vcgeq_f32(v84, v76)), 0x1FuLL)), v84, v76), v79));
              ++v81;
              v80 -= 4;
            }

            while (v80);
            if (v10 == v4)
            {
              return result;
            }
          }
        }

        else
        {
          v10 = 0;
        }

        v11 = (v8 + 4 * v10);
        v12 = (v9 + 4 * v10);
        v13 = v4 - v10;
        do
        {
          v14 = (*v6 * -0.0078125) * *v11;
          v15 = *v7;
          if (v14 <= *v7)
          {
            v15 = (*v6 * -0.0078125) * *v11;
            if (v14 < *v6)
            {
              v15 = *v6;
            }
          }

          *v12 = *v12 + v15;
          ++v12;
          ++v11;
          --v13;
        }

        while (v13);
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_19D39890C(uint64_t result, int a2, double a3, double a4, double a5)
{
  if (*(result + 20) * a2 >= 1)
  {
    for (i = 0; i < *(result + 20) * a2; ++i)
    {
      v8 = *(result + 16);
      if (v8 <= 1)
      {
        if (!v8)
        {
          v20 = *(result + 40);
          v21 = *(**(result + 24) + 4 * i);
          v17 = **(result + 32);
          if (v21 <= v20)
          {
            goto LABEL_28;
          }

          v22 = *(result + 44);
          if (v21 >= v22 || (v19 = llroundf((v21 * -256.0) / (v20 - v22)), v19 >= 128))
          {
            *(v17 + i) = 127;
            continue;
          }

          if (v19 <= -128)
          {
LABEL_28:
            *(v17 + i) = -127;
            continue;
          }

          goto LABEL_19;
        }

        if (v8 == 1)
        {
          v13 = *(result + 32);
          LODWORD(a5) = *(**(result + 24) + 4 * i);
          v14 = *(result + 40) * -0.0078125;
LABEL_16:
          *&a5 = v14 * *&a5;
          *(*v13 + i) = *&a5;
          v17 = **(result + 32);
          LOBYTE(a5) = *(v17 + i);
          *&a5 = vmovl_s16(*&vmovl_s8(*&a5)).u64[0];
          *&a5 = SLODWORD(a5);
          v18 = *(result + 44);
          if (v18 >= *&a5)
          {
            v18 = *(result + 40);
            if (v18 <= *&a5)
            {
              continue;
            }
          }

          v19 = v18;
LABEL_19:
          *(v17 + i) = v19;
        }
      }

      else
      {
        switch(v8)
        {
          case 2:
            v15 = *(result + 40);
            v16 = v15 * -0.0078125;
            *&a5 = roundf(-128.0 / v15);
            v13 = *(result + 32);
            v14 = (v16 * v16) * *(**(result + 24) + 4 * i);
            goto LABEL_16;
          case 3:
            v6 = (((*(result + 40) * *(result + 40)) * 0.000061035) * *(**(result + 24) + 4 * i));
            v7 = **(result + 32);
            break;
          case 4:
            v9 = *(result + 40);
            v10 = *(result + 44);
            v11 = (v9 * -0.0078125) * *(**(result + 24) + 4 * i);
            v12 = truncf(v11);
            if (v10 >= v12)
            {
              v6 = v11;
              if (v9 > v12)
              {
                v6 = v9;
              }
            }

            else
            {
              v6 = v10;
            }

            v7 = **(result + 32);
            LOBYTE(v6) = *(v7 + i) + v6;
            break;
          default:
            continue;
        }

        *(v7 + i) = v6;
      }
    }
  }

  return result;
}

uint64_t sub_19D398AE4()
{
  if (qword_1EB014810[0] != -1)
  {
    sub_19D454FF8();
  }

  return qword_1EB014808;
}

os_log_t sub_19D398B24()
{
  result = os_log_create("com.apple.Montreal", "Default");
  qword_1EB014808 = result;
  return result;
}

id sub_19D398EBC(void *a1, void *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v8 = objc_msgSend_string(MEMORY[0x1E696AD60], v5, v6, v7);
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"\r %@ [", v10, v4);
  objc_msgSend_appendString_(v8, v12, v11, v13);

  v14 = v4;
  v17 = objc_msgSend_indentByFactor_(v4, v15, 1, v16);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v18 = v3;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v50, v54, 16);
  if (v20)
  {
    v21 = v20;
    v22 = *v51;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        while (1)
        {
          if (*v51 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v28 = *(*(&v50 + 1) + 8 * i);
          v29 = objc_opt_respondsToSelector();
          v32 = MEMORY[0x1E696AEC0];
          if (v29)
          {
            break;
          }

          v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v30, @" \r %@ %@", v31, v17, v28, v50);
          objc_msgSend_appendString_(v8, v25, v24, v26);

          if (v21 == ++i)
          {
            goto LABEL_3;
          }
        }

        v33 = objc_msgSend_descriptionWithIndent_(v28, v30, v14, v31);
        v36 = objc_msgSend_stringWithFormat_(v32, v34, @" %@", v35, v33);
        objc_msgSend_appendString_(v8, v37, v36, v38);
      }

LABEL_3:
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v27, &v50, v54, 16);
    }

    while (v21);
  }

  v39 = v14;
  v42 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v40, @"\r %@ ]", v41, v14);
  objc_msgSend_appendString_(v8, v43, v42, v44);

  v48 = objc_msgSend_copy(v8, v45, v46, v47);

  return v48;
}

id sub_19D39912C(void *a1, void *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v8 = objc_msgSend_string(MEMORY[0x1E696AD60], v5, v6, v7);
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, @"\r %@ {", v10, v4);
  v55 = v8;
  objc_msgSend_appendString_(v8, v12, v11, v13);

  v54 = v4;
  v16 = objc_msgSend_indentByFactor_(v4, v14, 1, v15);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v17 = v3;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v56, v60, 16);
  if (v19)
  {
    v22 = v19;
    v23 = *v57;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        while (1)
        {
          if (*v57 != v23)
          {
            objc_enumerationMutation(v17);
          }

          v28 = *(*(&v56 + 1) + 8 * i);
          v29 = objc_msgSend_objectForKeyedSubscript_(v17, v20, v28, v21);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = MEMORY[0x1E696AEC0];
            v33 = objc_msgSend_indentByFactor_(v16, v30, 1, v31);
            v34 = sub_19D39912C(v29, v33);
            goto LABEL_12;
          }

          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v32 = MEMORY[0x1E696AEC0];
          if (isKindOfClass)
          {
            break;
          }

          v25 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v38, @" \r %@ %@ : %@", v39, v16, v28, v29);
          objc_msgSend_appendString_(v55, v26, v25, v27);

          if (v22 == ++i)
          {
            goto LABEL_3;
          }
        }

        v33 = objc_msgSend_indentByFactor_(v16, v38, 1, v39);
        v34 = sub_19D398EBC(v29, v33);
LABEL_12:
        v40 = v34;
        v41 = objc_msgSend_stringWithFormat_(v32, v35, @" \r %@ %@ : %@", v36, v16, v28, v34);
        objc_msgSend_appendString_(v55, v42, v41, v43);
      }

LABEL_3:
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v56, v60, 16);
    }

    while (v22);
  }

  v46 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v44, @"\r %@ }", v45, v54);
  objc_msgSend_appendString_(v55, v47, v46, v48);

  v52 = objc_msgSend_copy(v55, v49, v50, v51);

  return v52;
}

id sub_19D399430(void *a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v8 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7);
  v11 = objc_msgSend_exMRL_arrayForKey_(v3, v9, v4, v10);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v37, v41, 16);
  if (v13)
  {
    v17 = v13;
    v18 = *v38;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v38 != v18)
        {
          objc_enumerationMutation(v11);
        }

        v21 = *(*(&v37 + 1) + 8 * i);
        v22 = [MontrealNNModelTensor alloc];
        v27 = objc_msgSend_initWithDictionary_(v22, v23, v21, v24);
        if (v27)
        {
          if (objc_msgSend_containsObject_(v8, v25, v27, v26))
          {
            sub_19D2C78CC(@"Tensor %@ is already present", v28, v29, v30, v31, v32, v33, v34, v27);
          }

          objc_msgSend_addObject_(v8, v28, v27, v30);
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v20, &v37, v41, 16);
    }

    while (v17);
  }

  v35 = objc_msgSend_copy(v8, v14, v15, v16);

  return v35;
}

id sub_19D3995E0(void *a1, void *a2, void *a3, void *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v14 = objc_msgSend_array(MEMORY[0x1E695DF70], v11, v12, v13);
  v42 = v8;
  v17 = objc_msgSend_exMRL_arrayForKey_(v7, v15, v8, v16);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v43, v47, 16);
  if (v19)
  {
    v23 = v19;
    v24 = *v44;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v44 != v24)
        {
          objc_enumerationMutation(v17);
        }

        v27 = *(*(&v43 + 1) + 8 * i);
        v28 = [MontrealNNModelWeight alloc];
        v32 = objc_msgSend_initWithDictionary_quantization_jsonDir_(v28, v29, v27, v9, v10);
        if (v32)
        {
          if (objc_msgSend_containsObject_(v14, v30, v32, v31))
          {
            sub_19D2C78CC(@"Weight %@ is already present", v33, v34, v35, v36, v37, v38, v39, v32);
          }

          objc_msgSend_addObject_(v14, v33, v32, v35);
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v26, &v43, v47, 16);
    }

    while (v23);
  }

  v40 = objc_msgSend_copy(v14, v20, v21, v22);

  return v40;
}

id sub_19D3997C4(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v5 = objc_msgSend_array(MEMORY[0x1E695DF70], v2, v3, v4);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v1;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v23, v27, 16);
  if (v8)
  {
    v12 = v8;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = objc_msgSend_jsonDescription(*(*(&v23 + 1) + 8 * i), v9, v10, v11, v23);
        objc_msgSend_addObject_(v5, v16, v15, v17);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v23, v27, 16);
    }

    while (v12);
  }

  v21 = objc_msgSend_copy(v5, v18, v19, v20);

  return v21;
}

id sub_19D39991C(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v51 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17 = objc_msgSend_array(MEMORY[0x1E695DF70], v14, v15, v16);
  v45 = v9;
  v20 = objc_msgSend_exMRL_arrayForKey_(v9, v18, v10, v19);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v46, v50, 16);
  if (v22)
  {
    v26 = v22;
    v27 = *v47;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v47 != v27)
        {
          objc_enumerationMutation(v20);
        }

        v30 = *(*(&v46 + 1) + 8 * i);
        v31 = [MontrealNNModelNode alloc];
        v33 = objc_msgSend_initWithDictionary_tensors_quantization_jsonDir_(v31, v32, v30, v11, v12, v13);
        if (objc_msgSend_containsObject_(v17, v34, v33, v35))
        {
          sub_19D2C78CC(@"Node %@ is already present", v36, v37, v38, v39, v40, v41, v42, v33);
        }

        objc_msgSend_addObject_(v17, v36, v33, v38);
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v29, &v46, v50, 16);
    }

    while (v26);
  }

  v43 = objc_msgSend_copy(v17, v23, v24, v25);

  return v43;
}

uint64_t sub_19D399B0C(uint64_t result)
{
  *result = &unk_1F10BAEC8;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void *sub_19D399B30(void *result)
{
  *result = &unk_1F10BAEC8;
  if (result[1])
  {
    v1 = result;
    v2 = sub_19D3AF1BC(result[1]);
    operator delete(v2);
    return v1;
  }

  return result;
}

void sub_19D399B84(void *a1)
{
  *a1 = &unk_1F10BAEC8;
  if (a1[1])
  {
    v1 = a1;
    v2 = sub_19D3AF1BC(a1[1]);
    operator delete(v2);
    a1 = v1;
  }

  operator delete(a1);
}

__CFData *sub_19D399BE8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  Mutable = CFDataCreateMutable(0, v2);
  CFDataAppendBytes(Mutable, **(a1 + 8), *(*(a1 + 8) + 8));
  return Mutable;
}

uint64_t sub_19D399C40(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3 || mlock(*v2, v3) == -1)
  {
    return 0;
  }

  result = 1;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_19D399CB8(uint64_t a1)
{
  if (*(a1 + 16) != 1)
  {
    return 1;
  }

  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2 || munlock(*v1, v2) == -1)
  {
    return 0;
  }

  *(a1 + 16) = 0;
  return 1;
}

void sub_19D399EE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      operator delete(v20);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  operator delete(v20);
  _Unwind_Resume(a1);
}

std::runtime_error *sub_19D399F44(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_1F10B6058;
  return result;
}

uint64_t sub_19D399F78(uint64_t a1, void *a2, __int128 *a3, unint64_t a4)
{
  v136 = *MEMORY[0x1E69E9840];
  if (a4 <= 0x57)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Flat model file corrupted");
    exception->__vftable = &unk_1F10B6058;
    __cxa_throw(exception, &unk_1F10B5FD8, std::runtime_error::~runtime_error);
  }

  v5 = a3[3];
  v133 = a3[2];
  v134[0] = v5;
  v134[1] = a3[4];
  v135 = *(a3 + 10);
  v6 = a3[1];
  v131 = *a3;
  v132 = v6;
  v7 = strlen(v134 + 8);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_19D2AD774();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v130 = v7;
  if (v7)
  {
    memcpy(&__dst, v134 + 8, v7);
  }

  *(&__dst + v8) = 0;
  if (v131 != 1001)
  {
    v111 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v111, "Flat model version incorrect");
    goto LABEL_214;
  }

  if (HIDWORD(v131) + 400 * DWORD2(v131) > a4)
  {
    v111 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v111, "Flat model file corrupted");
LABEL_214:
    v111->__vftable = &unk_1F10B6058;
    __cxa_throw(v111, &unk_1F10B5FD8, std::runtime_error::~runtime_error);
  }

  __s = a3 + HIDWORD(v131);
  if (!DWORD2(v131))
  {
    memset(v127, 0, 24);
    __p = 0;
    v125 = 0;
    v126 = 0;
    v121 = 0;
    v122 = 0;
    v11 = 1;
    v123 = 0;
    goto LABEL_146;
  }

  if (DWORD2(v131) == 1)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v9 = DWORD2(v131) & 0xFFFFFFFE;
    v13 = v9;
    v14 = a3 + HIDWORD(v131);
    do
    {
      if (v10 <= *(v14 + 388))
      {
        v10 = *(v14 + 388);
      }

      if (v12 <= *(v14 + 788))
      {
        v12 = *(v14 + 788);
      }

      v14 += 800;
      v13 -= 2;
    }

    while (v13);
    if (v10 <= v12)
    {
      v10 = v12;
    }

    if (v9 == DWORD2(v131))
    {
      goto LABEL_27;
    }
  }

  v15 = (&a3[25 * v9 + 24] + HIDWORD(v131) + 4);
  v16 = DWORD2(v131) - v9;
  do
  {
    if (v10 <= *v15)
    {
      v10 = *v15;
    }

    v15 += 100;
    --v16;
  }

  while (v16);
LABEL_27:
  if (v10 > a4)
  {
    v112 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v112, "Flat model file corrupted");
    v112->__vftable = &unk_1F10B6058;
    __cxa_throw(v112, &unk_1F10B5FD8, std::runtime_error::~runtime_error);
  }

  v17 = 0;
  do
  {
    v18 = &__s[400 * v17];
    bzero(__src, 0x2C0uLL);
    *&__src[3] = v18[38];
    v19.i32[0] = *(v18 + 8);
    v20 = vmovl_u8(v19).u64[0];
    v21 = vmovl_u16(v20);
    v22.i64[0] = v21.u32[0];
    v22.i64[1] = v21.u32[1];
    v23.i64[0] = 255;
    v23.i64[1] = 255;
    v24 = vandq_s8(v22, v23);
    v22.i64[0] = v21.u32[2];
    v22.i64[1] = v21.u32[3];
    __src[1] = vandq_s8(v22, v23);
    __src[0] = v24;
    v25 = v18[36];
    v26 = v18[37];
    *&__src[2] = v18[36];
    *(&__src[2] + 1) = v26;
    v27 = *(v18 + 132);
    __src[12] = *(v18 + 116);
    __src[13] = v27;
    v28 = *(v18 + 164);
    __src[14] = *(v18 + 148);
    __src[15] = v28;
    v29 = *(v18 + 68);
    __src[8] = *(v18 + 52);
    __src[9] = v29;
    v30 = *(v18 + 100);
    __src[10] = *(v18 + 84);
    __src[11] = v30;
    v31 = *(v18 + 196);
    __src[16] = *(v18 + 180);
    __src[17] = v31;
    v32 = *(v18 + 228);
    __src[18] = *(v18 + 212);
    __src[19] = v32;
    v33 = *(v18 + 260);
    v34 = *(v18 + 276);
    __src[20] = *(v18 + 244);
    __src[21] = v33;
    v35 = *(v18 + 292);
    __src[22] = v34;
    __src[23] = v35;
    v36 = *(v18 + 308);
    v37 = *(v18 + 324);
    v38 = *(v18 + 356);
    __src[26] = *(v18 + 340);
    __src[27] = v38;
    __src[24] = v36;
    __src[25] = v37;
    v39 = v18[41];
    *(&__src[3] + 1) = v18[40];
    *&__src[4] = v39;
    v40 = v18[43];
    *(&__src[4] + 1) = v18[42];
    *&__src[5] = v40;
    v41 = v18[45];
    *(&__src[5] + 1) = v18[44];
    *&__src[6] = v41;
    v42 = v18[47];
    *(&__src[6] + 1) = v18[46];
    *&__src[7] = v42;
    LODWORD(v26) = *(v18 + 12);
    v43 = *(&__src[7] + 1) | v26 & 0x20;
    v44 = v43 | v26 & 0x7D4;
    v45 = a3 + *(v18 + 97);
    *(&__src[7] + 1) = v44;
    if (v20.u16[0] <= 0x12u)
    {
      if (v20.u16[0] > 4u)
      {
        if (v20.u16[0] - 5 < 2)
        {
          if (SLODWORD(__src[20]) <= 0)
          {
            v48 = __src[16];
          }

          else
          {
            v48 = __src[20];
          }

          if ((v43 & 0x20) != 0 && (v44 & 0x80) != 0)
          {
            operator new();
          }

          v49 = 2 * (v25 != 2);
          v50 = (4 * v48 * LODWORD(__src[8])) << v49;
          v51 = (4 * LODWORD(__src[16]) * v48) << v49;
          *&__src[36] = v45 + v50;
          v52 = 16 * v48;
          *&__src[28] = v45;
          *(&__src[28] + 1) = *&__src[36] + v52;
          v53 = *&__src[36] + v52 + v51;
          if ((v44 & 0x80) != 0)
          {
            if (v20.u8[0] == 6)
            {
              *&__src[37] = v53 + v50;
              *&__src[29] = *&__src[36] + v52 + v51;
              *(&__src[29] + 1) = *&__src[37] + v52;
            }
          }

          else
          {
            *(&__src[36] + 1) = *&__src[36] + v52 + v51;
            v54 = v53 + v52;
            if (v20.u8[0] == 6)
            {
              *&__src[37] = v54 + v50;
              *&__src[29] = v54;
              *(&__src[29] + 1) = *&__src[37] + v52;
              *(&__src[37] + 1) = *&__src[37] + v52 + v51;
            }
          }

          operator new();
        }

        if (v20.u16[0] != 11 && v20.u16[0] != 13)
        {
          goto LABEL_73;
        }

        goto LABEL_50;
      }

      if (!v20.i16[0])
      {
LABEL_50:
        v46 = 2 * (v25 != 2);
        if (v20.u8[0] == 11)
        {
          v47 = (LODWORD(__src[20]) * LODWORD(__src[16]) * DWORD1(__src[20]) * DWORD2(__src[8])) << v46;
        }

        else
        {
          v47 = (LODWORD(__src[16]) * LODWORD(__src[8])) << v46;
          if (v20.u8[0] == 13)
          {
            v47 *= 2;
          }
        }

        *&__src[28] = v45;
        v55 = v45 + v47;
        v56 = -v47 < 0;
        v57 = -v47 & 3;
        v58 = v47 & 3;
        if (!v56)
        {
          v58 = -v57;
        }

        if (v58)
        {
          v59 = 8 - v58;
        }

        else
        {
          v59 = 0;
        }

        if (v59 >= 5)
        {
          operator new();
        }

        if ((v44 & 0x100) != 0)
        {
          goto LABEL_73;
        }

LABEL_93:
        *&__src[36] = v55;
        if (v18[32] - 249 < 2)
        {
          goto LABEL_29;
        }

        goto LABEL_74;
      }

      if (v20.u16[0] == 1)
      {
        if ((v44 & 0x40) == 0)
        {
          v109 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v109, "Only kMRLNeuralNetworkWeight                                                    AttributeBatchNormalizationIntegrated weight attribute supported");
          v109->__vftable = &unk_1F10B6058;
          __cxa_throw(v109, &unk_1F10B5FD8, std::runtime_error::~runtime_error);
        }

        *&__src[28] = v45;
        v62 = __src[8];
        if (SDWORD2(__src[8]) > 1)
        {
          v62 = DWORD2(__src[8]);
        }

        v63 = v62 << (2 * (v25 != 2));
        v55 = v45 + v63;
        v64 = v63 & 3;
        v65 = -v63;
        v56 = v65 < 0;
        v66 = v65 & 3;
        if (v56)
        {
          v67 = v64;
        }

        else
        {
          v67 = -v66;
        }

        if (v67)
        {
          v68 = 8 - v67;
        }

        else
        {
          v68 = 0;
        }

        if (v68 >= 5)
        {
          operator new();
        }

        goto LABEL_93;
      }

      if (v20.u16[0] != 4)
      {
        goto LABEL_73;
      }

      goto LABEL_59;
    }

    if (v20.u16[0] > 0x16u)
    {
      if (v20.u16[0] != 23)
      {
        if (v20.u16[0] == 26)
        {
          *&__src[35] = v45;
          *(&__src[35] + 1) = v45 + 4 * LODWORD(__src[20]);
          operator new();
        }

        if (v20.u16[0] == 27)
        {
          *&__src[35] = v45;
          *(&__src[35] + 1) = v45 + 4 * LODWORD(__src[20]);
          operator new();
        }

LABEL_73:
        if (v18[32] - 249 < 2)
        {
          goto LABEL_29;
        }

        goto LABEL_74;
      }

LABEL_59:
      *&__src[28] = v45;
      if (v18[32] - 249 < 2)
      {
        goto LABEL_29;
      }

      goto LABEL_74;
    }

    if (v20.u16[0] != 19)
    {
      if (v20.u16[0] == 20)
      {
        v69 = 4 * DWORD1(__src[20]) * LODWORD(__src[20]);
        v70 = v69 * LODWORD(__src[8]);
        *&__src[28] = v45;
        *(&__src[28] + 1) = v45 + v70;
        *&__src[29] = v45 + v70 + v70;
        *&__src[36] = *&__src[29] + v70;
        *(&__src[36] + 1) = *&__src[29] + v70 + v69;
        *&__src[37] = *(&__src[36] + 1) + v69;
        if (v18[32] - 249 < 2)
        {
          goto LABEL_29;
        }

        goto LABEL_74;
      }

      if (v20.u16[0] != 21)
      {
        goto LABEL_73;
      }

      *&__src[28] = v45;
      *&__src[36] = v45 + 4 * LODWORD(__src[8]);
      if (v18[32] - 249 < 2)
      {
        goto LABEL_29;
      }

LABEL_74:
      memcpy(v127, __src, sizeof(v127));
      v60 = strlen(v18);
      if (v60 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_19D2AD774();
      }

      v61 = v60;
      if (v60 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v126) = v60;
      if (v60)
      {
        memcpy(&__p, v18, v60);
      }

      *(&__p + v61) = 0;
      sub_19D42B3F4(a2, v127, &__p);
      if (SHIBYTE(v126) < 0)
      {
        operator delete(__p);
      }

      goto LABEL_29;
    }

    if ((v44 & 0x40) != 0)
    {
      *&__src[28] = v45;
      *(&__src[28] + 1) = v45 + 4 * LODWORD(__src[20]) * (LODWORD(__src[9]) + LODWORD(__src[8]));
      *&__src[36] = *(&__src[28] + 1) + 4 * LODWORD(__src[20]);
      if (v18[32] - 249 < 2)
      {
        goto LABEL_29;
      }

      goto LABEL_74;
    }

    if ((v44 & 0x200) == 0)
    {
      *&__src[28] = v45;
      v45 += 4 * LODWORD(__src[9]) * LODWORD(__src[20]);
    }

    if ((v44 & 0x400) == 0)
    {
      *(&__src[28] + 1) = v45;
      v45 += 4 * LODWORD(__src[8]) * LODWORD(__src[20]);
    }

    *&__src[29] = v45;
    *&__src[36] = v45 + 4 * LODWORD(__src[20]);
    if (v18[32] - 249 >= 2)
    {
      goto LABEL_74;
    }

LABEL_29:
    ++v17;
  }

  while (v17 < DWORD2(v131));
  memset(v127, 0, 24);
  __p = 0;
  v125 = 0;
  v126 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0;
  if (DWORD2(v131))
  {
    v71 = 0;
    v72 = __s;
    while (1)
    {
      v74 = v127[1];
      if (v127[1] >= v127[2])
      {
        v127[1] = sub_19D3AFB60(v127, v72);
        v77 = v72[32];
        if (v77 != 250)
        {
          goto LABEL_120;
        }
      }

      else
      {
        v75 = strlen(v72);
        if (v75 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_19D2AD774();
        }

        v76 = v75;
        if (v75 >= 0x17)
        {
          operator new();
        }

        *(v127[1] + 23) = v75;
        if (v75)
        {
          memmove(v74, v72, v75);
          v74[v76] = 0;
          v127[1] = v74 + 24;
          v77 = v72[32];
          if (v77 != 250)
          {
LABEL_120:
            if (v77 == 249)
            {
              goto LABEL_136;
            }

            goto LABEL_114;
          }
        }

        else
        {
          *v74 = 0;
          v127[1] = v74 + 24;
          v77 = v72[32];
          if (v77 != 250)
          {
            goto LABEL_120;
          }
        }
      }

      v78 = v125;
      if (v125 >= v126)
      {
        v125 = sub_19D3AFB60(&__p, v72);
        if (v72[32] == 249)
        {
          goto LABEL_136;
        }
      }

      else
      {
        v79 = strlen(v72);
        if (v79 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_19D2AD774();
        }

        v80 = v79;
        if (v79 >= 0x17)
        {
          operator new();
        }

        v125[23] = v79;
        if (v79)
        {
          memmove(v78, v72, v79);
          v78[v80] = 0;
          v125 = v78 + 24;
          if (v72[32] == 249)
          {
LABEL_136:
            v81 = v122;
            if (v122 >= v123)
            {
              v73 = sub_19D3AFB60(&v121, v72);
            }

            else
            {
              v82 = strlen(v72);
              if (v82 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_19D2AD774();
              }

              v83 = v82;
              if (v82 >= 0x17)
              {
                operator new();
              }

              *(v122 + 23) = v82;
              if (v82)
              {
                memmove(v81, v72, v82);
              }

              *(v81 + v83) = 0;
              v73 = v81 + 3;
            }

            v122 = v73;
          }
        }

        else
        {
          *v78 = 0;
          v125 = v78 + 24;
          if (v72[32] == 249)
          {
            goto LABEL_136;
          }
        }
      }

LABEL_114:
      ++v71;
      v72 += 400;
      if (v71 >= DWORD2(v131))
      {
        v11 = DWORD2(v131) == 0;
        goto LABEL_146;
      }
    }
  }

  v11 = 1;
LABEL_146:
  sub_19D42AAB0(a2, &__p, &v121);
  if (!v11)
  {
    v88 = 0;
    do
    {
      v89 = 0;
      v114 = v88;
      v90 = &__s[400 * v88];
      v91 = v90 + 372;
      do
      {
        if (!*&v91[2 * v89])
        {
          ++v89;
          continue;
        }

        v92 = &__s[400 * *&v91[2 * v89] - 400];
        v93 = v92[32];
        if (v93 == 250)
        {
          v94 = 0;
        }

        else
        {
          v94 = v90[39];
        }

        ++v89;
        if (v93 == 249)
        {
          v95 = 0;
        }

        else
        {
          v95 = v89;
        }

        v96 = strlen(v92);
        if (v96 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_19D2AD774();
        }

        v97 = v96;
        if (v96 >= 0x17)
        {
          operator new();
        }

        v120 = v96;
        if (v96)
        {
          memcpy(&v119, v92, v96);
        }

        *(&v119 + v97) = 0;
        v98 = strlen(v90);
        if (v98 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_19D2AD774();
        }

        v99 = v98;
        if (v98 >= 0x17)
        {
          operator new();
        }

        v118 = v98;
        if (v98)
        {
          memcpy(&v117, v90, v98);
        }

        *(&v117 + v99) = 0;
        sub_19D42D0E0(a2, &v119, v94, &v117, v95);
        if (v118 < 0)
        {
          operator delete(v117);
          if ((v120 & 0x80000000) == 0)
          {
            continue;
          }
        }

        else if ((v120 & 0x80000000) == 0)
        {
          continue;
        }

        operator delete(v119);
      }

      while (v89 != 8);
      v88 = v114 + 1;
    }

    while ((v114 + 1) < DWORD2(v131));
  }

  v84 = v121;
  if (v121)
  {
    v85 = v122;
    v86 = v121;
    if (v122 != v121)
    {
      do
      {
        v87 = *(v85 - 1);
        v85 -= 3;
        if (v87 < 0)
        {
          operator delete(*v85);
        }
      }

      while (v85 != v84);
      v86 = v121;
    }

    v122 = v84;
    operator delete(v86);
  }

  v100 = __p;
  if (__p)
  {
    v101 = v125;
    v102 = __p;
    if (v125 != __p)
    {
      do
      {
        v103 = *(v101 - 1);
        v101 -= 3;
        if (v103 < 0)
        {
          operator delete(*v101);
        }
      }

      while (v101 != v100);
      v102 = __p;
    }

    v125 = v100;
    operator delete(v102);
  }

  v104 = v127[0];
  if (v127[0])
  {
    v105 = v127[1];
    v106 = v127[0];
    if (v127[1] != v127[0])
    {
      do
      {
        v107 = *(v105 - 1);
        v105 -= 3;
        if (v107 < 0)
        {
          operator delete(*v105);
        }
      }

      while (v105 != v104);
      v106 = v127[0];
    }

    v127[1] = v104;
    operator delete(v106);
  }

  if (v130 < 0)
  {
    operator delete(__dst);
  }

  return 1;
}

void sub_19D39BC34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (*(v2 - 209) < 0)
    {
      operator delete(*(v2 - 232));
    }

    if (a2 == 2)
    {
      exception_ptr = __cxa_get_exception_ptr(a1);
      std::runtime_error::runtime_error(&STACK[0x378], exception_ptr);
      STACK[0x378] = &unk_1F10B6058;
      __cxa_begin_catch(a1);
      exception = __cxa_allocate_exception(0x10uLL);
      v7 = std::runtime_error::what(&STACK[0x378]);
      std::runtime_error::runtime_error(exception, v7);
      exception->__vftable = &unk_1F10B6058;
      __cxa_throw(exception, &unk_1F10B5FD8, std::runtime_error::~runtime_error);
    }

    __cxa_begin_catch(a1);
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "unknown exception");
    v8->__vftable = &unk_1F10BAF40;
    __cxa_throw(v8, &unk_1F10BAF00, std::runtime_error::~runtime_error);
  }

  _Unwind_Resume(a1);
}

void sub_19D39C028(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x19D39C030);
  }

  sub_19D2ABE10(a1);
}

uint64_t sub_19D39C044(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, const char *a5, int *a6)
{
  v511 = *MEMORY[0x1E69E9840];
  v490 = 0;
  v489 = 0;
  v488 = &v489;
  v9 = a3[1];
  v10 = (a3 + 2);
  if (v9 != a3 + 2)
  {
    do
    {
      sub_19D2C3E1C(&v488, &v489, v9 + 4);
      v13 = v9[1];
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
          v14 = v9[2];
          v81 = *v14 == v9;
          v9 = v14;
        }

        while (!v81);
      }

      v9 = v14;
    }

    while (v14 != v10);
  }

  v487 = 0;
  v486 = 0;
  v485 = &v486;
  v11 = a3[4];
  if (v11 != a3 + 5)
  {
    do
    {
      sub_19D2C3E1C(&v485, &v486, v11 + 4);
      v15 = v11[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v11[2];
          v81 = *v16 == v11;
          v11 = v16;
        }

        while (!v81);
      }

      v11 = v16;
    }

    while (v16 != a3 + 5);
  }

  sub_19D3AF984(&v483, a3 + 15);
  v482 = 0;
  v481 = 0;
  v480 = &v481;
  v12 = v488;
  if (v488 != &v489)
  {
    do
    {
      if (*(v12 + 55) < 0)
      {
        sub_19D2AD6B8(__p, v12[4], v12[5]);
      }

      else
      {
        __p[0] = *(v12 + 2);
        __p[1].i64[0] = v12[6];
      }

      v17 = v482;
      v449[0] = __p;
      *(sub_19D3AFD10(&v480, __p) + 28) = v17 + 1;
      if (__p[1].i8[7] < 0)
      {
        operator delete(__p[0].i64[0]);
        v18 = v12[1];
        if (v18)
        {
          do
          {
LABEL_27:
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
          goto LABEL_19;
        }
      }

      else
      {
        v18 = v12[1];
        if (v18)
        {
          goto LABEL_27;
        }
      }

      do
      {
        v19 = v12[2];
        v81 = *v19 == v12;
        v12 = v19;
      }

      while (!v81);
LABEL_19:
      v12 = v19;
    }

    while (v19 != &v489);
  }

  v20 = v483;
  v21 = v484;
  if (v483 != v484)
  {
    v22 = v484;
    do
    {
      if (v20[23] < 0)
      {
        v24 = v20;
        sub_19D2AD6B8(__p, *v20, *(v20 + 1));
      }

      else
      {
        v23 = *v20;
        v24 = v20;
        __p[1].i64[0] = *(v20 + 2);
        __p[0] = v23;
      }

      v25 = v482;
      v449[0] = __p;
      *(sub_19D3AFD10(&v480, __p) + 28) = v25 + 1;
      if (__p[1].i8[7] < 0)
      {
        operator delete(__p[0].i64[0]);
      }

      v20 = v24 + 24;
    }

    while (v24 + 24 != v22);
    v21 = v484;
    v20 = v483;
  }

  v26 = *a6;
  v506 = 1001;
  v507 = v26;
  v27 = v487 + v490 - 1431655765 * ((v21 - v20) >> 3);
  v508 = v27;
  v28 = *(a5 + 23);
  if ((v28 & 0x80) != 0)
  {
    if (*(a5 + 1) <= 0x1FuLL)
    {
      a5 = *a5;
      goto LABEL_46;
    }

LABEL_767:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Model name cannot be greater than 31 characters.");
    exception->__vftable = &unk_1F10BAF68;
    __cxa_throw(exception, &unk_1F10B6008, std::runtime_error::~runtime_error);
  }

  if (v28 > 0x1F)
  {
    goto LABEL_767;
  }

LABEL_46:
  strcpy(v510, a5);
  v509 = 88;
  v478 = 0;
  v477 = 0;
  v479 = 0;
  v29 = v488;
  if (v488 != &v489)
  {
    v30 = 0;
    v31 = 0;
    while (1)
    {
      if (*(v29 + 55) < 0)
      {
        sub_19D2AD6B8(v449, v29[4], v29[5]);
      }

      else
      {
        *v449 = *(v29 + 2);
        *&v450[0] = v29[6];
      }

      bzero(__p, 0x190uLL);
      if ((SBYTE7(v450[0]) & 0x80u) == 0)
      {
        v32 = v449;
      }

      else
      {
        v32 = v449[0];
      }

      strcpy(__p[0].i8, v32);
      __p[2].i8[0] = -6;
      v34 = &v31[-v30];
      v35 = 0x8F5C28F5C28F5C29 * (&v31[-v30] >> 4);
      v36 = v35 + 1;
      if (v35 + 1 > 0xA3D70A3D70A3D7)
      {
        sub_19D2AE2B4();
      }

      if (0x1EB851EB851EB852 * (-v30 >> 4) > v36)
      {
        v36 = 0x1EB851EB851EB852 * (-v30 >> 4);
      }

      if (0x8F5C28F5C28F5C29 * (-v30 >> 4) >= 0x51EB851EB851EBLL)
      {
        v37 = 0xA3D70A3D70A3D7;
      }

      else
      {
        v37 = v36;
      }

      if (v37)
      {
        if (v37 <= 0xA3D70A3D70A3D7)
        {
          operator new();
        }

        sub_19D2AD81C();
      }

      v38 = 400 * v35;
      memcpy(v38, __p, 0x190uLL);
      v31 = (v38 + 400);
      v39 = ((v34 * 0x5C28F5C28F5C28F5) >> 64) - v34;
      v40 = (v38 + 400 * ((v39 >> 8) + (v39 >> 63)));
      memcpy(v40, v30, v34);
      if (v30)
      {
        operator delete(v30);
      }

      v30 = v40;
      if (SBYTE7(v450[0]) < 0)
      {
        operator delete(v449[0]);
        v33 = v29[1];
        if (!v33)
        {
          do
          {
LABEL_73:
            v41 = v29[2];
            v81 = *v41 == v29;
            v29 = v41;
          }

          while (!v81);
          goto LABEL_48;
        }
      }

      else
      {
        v33 = v29[1];
        if (!v33)
        {
          goto LABEL_73;
        }
      }

      do
      {
        v41 = v33;
        v33 = *v33;
      }

      while (v33);
LABEL_48:
      v29 = v41;
      if (v41 == &v489)
      {
        v42 = v483;
        v43 = v484;
        goto LABEL_78;
      }
    }
  }

  v42 = v20;
  v31 = 0;
  v43 = v21;
  v30 = 0;
LABEL_78:
  v423 = v31;
  v475 = 0u;
  *v474 = 0u;
  v476 = 1065353216;
  v417 = v43;
  if (v42 != v43)
  {
    v44 = v42;
    v45 = 0;
    *&v431[8] = 0;
    *v431 = (400 * v27 + 88);
    v420 = (a4 + 8);
    v425 = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
    while (1)
    {
      v426 = v30;
      if (*(v44 + 23) < 0)
      {
        sub_19D2AD6B8(v472, *v44, v44[1]);
      }

      else
      {
        v46 = *v44;
        v473 = v44[2];
        *v472 = v46;
      }

      bzero(__dst, 0x190uLL);
      if (SHIBYTE(v473) >= 0)
      {
        v47 = v472;
      }

      else
      {
        v47 = v472[0];
      }

      strcpy(__dst, v47);
      v499 = 0u;
      v498 = 0u;
      v497 = 0u;
      v496 = 0u;
      v495 = 0u;
      v494 = 0u;
      v493 = 0u;
      memset(__p, 0, sizeof(__p));
      sub_19D430AF8(a3, v472);
      v418 = v44;
      HIBYTE(__dst[19]) = 9;
      v48.i64[1] = __p[0].i64[1];
      v49 = vmovn_s64(__p[1]);
      *v48.i8 = vmovn_s64(__p[0]);
      v48.i16[1] = v48.i16[2];
      v48.i16[2] = v49.i16[0];
      v48.i16[3] = v49.i16[2];
      *&__dst[16] = vmovn_s16(v48).u32[0];
      LOBYTE(__dst[18]) = __p[2].i8[0];
      HIBYTE(__dst[18]) = __p[2].i8[8];
      LOBYTE(__dst[19]) = __p[3].i8[0];
      *&__dst[20] = vmovn_s16(vuzp1q_s16(vuzp1q_s32(*(&__p[3] + 8), *(&__p[4] + 8)), vuzp1q_s32(*(&__p[5] + 8), *(&__p[6] + 8))));
      *&__dst[24] = __p[7].i32[2];
      *&__dst[58] = __p[12];
      *&__dst[66] = __p[13];
      *&__dst[74] = __p[14];
      *&__dst[82] = __p[15];
      *&__dst[26] = __p[8];
      *&__dst[34] = __p[9];
      *&__dst[42] = __p[10];
      *&__dst[50] = __p[11];
      *&__dst[90] = __p[16];
      *&__dst[98] = __p[17];
      *&__dst[106] = __p[18];
      *&__dst[114] = __p[19];
      *&__dst[122] = __p[20];
      *&__dst[130] = __p[21];
      *&__dst[138] = __p[22];
      *&__dst[146] = __p[23];
      *&__dst[170] = v494;
      *&__dst[178] = v495;
      *&__dst[154] = __p[24];
      *&__dst[162] = v493;
      sub_19D43042C(a3, v472, &v470);
      v50 = v470;
      v51 = v471;
      v437 = v45;
      if (v470 == v471)
      {
        if (!v470)
        {
          goto LABEL_129;
        }
      }

      else
      {
        do
        {
          if (*(v50 + 23) < 0)
          {
            sub_19D2AD6B8(v449, *v50, v50[1]);
          }

          else
          {
            v54 = *v50;
            *&v450[0] = v50[2];
            *v449 = v54;
          }

          v55 = *(v50 + 6);
          DWORD2(v450[0]) = v55;
          if (v55)
          {
            v56 = v481;
            if (!v481)
            {
LABEL_121:
              operator new();
            }

            if ((SBYTE7(v450[0]) & 0x80u) == 0)
            {
              v57 = BYTE7(v450[0]);
            }

            else
            {
              v57 = v449[1];
            }

            if ((SBYTE7(v450[0]) & 0x80u) == 0)
            {
              v58 = v449;
            }

            else
            {
              v58 = v449[0];
            }

            while (1)
            {
              while (1)
              {
                v59 = v56;
                v62 = *(v56 + 4);
                v60 = v56 + 32;
                v61 = v62;
                v63 = v60[23];
                if (v63 >= 0)
                {
                  v64 = v60[23];
                }

                else
                {
                  v64 = *(v60 + 1);
                }

                if (v63 >= 0)
                {
                  v65 = v60;
                }

                else
                {
                  v65 = v61;
                }

                if (v64 >= v57)
                {
                  v66 = v57;
                }

                else
                {
                  v66 = v64;
                }

                v67 = memcmp(v58, v65, v66);
                v68 = v57 < v64;
                if (v67)
                {
                  v68 = v67 < 0;
                }

                if (!v68)
                {
                  break;
                }

                v56 = *v59;
                if (!*v59)
                {
                  goto LABEL_121;
                }
              }

              v69 = memcmp(v65, v58, v66);
              v70 = v64 < v57;
              if (v69)
              {
                v70 = v69 < 0;
              }

              if (!v70)
              {
                break;
              }

              v56 = *(v59 + 1);
              if (!v56)
              {
                goto LABEL_121;
              }
            }

            __dst[v55 + 185] = *(v59 + 28);
          }

          if (SBYTE7(v450[0]) < 0)
          {
            operator delete(v449[0]);
          }

          v50 += 4;
          v45 = v437;
        }

        while (v50 != v51);
        v50 = v470;
        if (!v470)
        {
LABEL_129:
          v53 = *v420;
          if (!*v420)
          {
            goto LABEL_173;
          }

          goto LABEL_132;
        }
      }

      v52 = v471;
      if (v471 == v50)
      {
        v471 = v50;
        operator delete(v50);
        v53 = *v420;
        if (!*v420)
        {
          goto LABEL_173;
        }
      }

      else
      {
        do
        {
          v71 = *(v52 - 9);
          v52 -= 4;
          if (v71 < 0)
          {
            operator delete(*v52);
          }
        }

        while (v52 != v50);
        v471 = v50;
        operator delete(v470);
        v53 = *v420;
        if (!*v420)
        {
          goto LABEL_173;
        }
      }

LABEL_132:
      if (SHIBYTE(v473) >= 0)
      {
        v72 = HIBYTE(v473);
      }

      else
      {
        v72 = v472[1];
      }

      if (SHIBYTE(v473) >= 0)
      {
        v73 = v472;
      }

      else
      {
        v73 = v472[0];
      }

      v74 = v420;
      do
      {
        v75 = *(v53 + 55);
        if (v75 >= 0)
        {
          v76 = *(v53 + 55);
        }

        else
        {
          v76 = *(v53 + 40);
        }

        if (v75 >= 0)
        {
          v77 = (v53 + 32);
        }

        else
        {
          v77 = *(v53 + 32);
        }

        if (v72 >= v76)
        {
          v78 = v76;
        }

        else
        {
          v78 = v72;
        }

        v79 = memcmp(v77, v73, v78);
        v80 = v76 < v72;
        if (v79)
        {
          v80 = v79 < 0;
        }

        v81 = !v80;
        if (v80)
        {
          v82 = 8;
        }

        else
        {
          v82 = 0;
        }

        if (v81)
        {
          v74 = v53;
        }

        v53 = *(v53 + v82);
      }

      while (v53);
      if (v74 != v420)
      {
        v83 = *(v74 + 55);
        if (v83 >= 0)
        {
          v84 = *(v74 + 55);
        }

        else
        {
          v84 = v74[5];
        }

        if (v83 >= 0)
        {
          v85 = v74 + 4;
        }

        else
        {
          v85 = v74[4];
        }

        if (v84 >= v72)
        {
          v86 = v72;
        }

        else
        {
          v86 = v84;
        }

        v87 = memcmp(v73, v85, v86);
        v88 = v72 >= v84;
        if (v87)
        {
          v88 = v87 >= 0;
        }

        if (v88 && __p[2].i64[0] == 0)
        {
          v90 = *(v74 + 14);
          v91 = *(v74 + 15);
          LOBYTE(__dst[18]) = 2;
          *&__dst[182] = v90;
          *&__dst[184] = v91;
          v430 = 1;
          goto LABEL_188;
        }
      }

LABEL_173:
      v90 = 0;
      if (LOBYTE(__dst[18]) != 2)
      {
        v430 = 0;
        v419 = 0;
        v92 = 4;
        v91 = 0;
        v93 = v426;
        *&__dst[194] = *v431;
        v94 = __p[0].i64[0];
        if (__p[0].i64[0] > 18)
        {
          goto LABEL_176;
        }

        goto LABEL_189;
      }

      v430 = 0;
      v91 = 0;
LABEL_188:
      v93 = v426;
      v419 = 1;
      v92 = 1;
      *&__dst[194] = *v431;
      v94 = __p[0].i64[0];
      if (__p[0].i64[0] > 18)
      {
LABEL_176:
        if (v94 <= 22)
        {
          if (v94 == 19)
          {
            if ((__p[7].i8[8] & 0x40) != 0)
            {
              *&__dst[24] |= 0x40u;
              v199 = 4 * __p[20].i32[0] * (__p[9].i32[0] + __p[8].i32[0]);
              v214 = *&v431[4] - v437;
              v215 = 0xAAAAAAAAAAAAAAABLL * ((*&v431[4] - v437) >> 3) + 1;
              if (v215 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_19D2AE2B4();
              }

              if (0x5555555555555556 * (-v437 >> 3) > v215)
              {
                v215 = 0x5555555555555556 * (-v437 >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * (-v437 >> 3) >= 0x555555555555555)
              {
                v216 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v216 = v215;
              }

              v434 = 4 * __p[20].i32[0];
              if (v216)
              {
                if (v216 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_19D2AD81C();
              }

              v291 = *(&v496 + 1);
              v292 = __p[20].i32[0];
              v293 = v502;
              v294 = 8 * ((*&v431[4] - v437) >> 3);
              *v294 = v496;
              *(v294 + 8) = v199;
              *(v294 + 12) = v430;
              *(v294 + 16) = v90;
              *(v294 + 20) = v91;
              v295 = v294 + 24;
              v296 = v294 - v214;
              memcpy((v294 - v214), v437, v214);
              if (v437)
              {
                operator delete(v437);
              }

              v444 = v296;
              v297 = v293;
              v298 = v292;
              v299 = v295 - v296;
              v300 = 0xAAAAAAAAAAAAAAABLL * ((v295 - v296) >> 3);
              v301 = v300 + 1;
              if (v300 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_19D2AE2B4();
              }

              if (0x5555555555555556 * (-v444 >> 3) > v301)
              {
                v301 = 0x5555555555555556 * (-v444 >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * (-v444 >> 3) >= 0x555555555555555)
              {
                v302 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v302 = v301;
              }

              if (v302)
              {
                if (v302 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_19D2AD81C();
              }

              v303 = 24 * v300;
              *v303 = v291;
              *(v303 + 8) = v434;
              *(v303 + 12) = v430;
              *(v303 + 16) = v90;
              *(v303 + 20) = v91;
              v304 = 24 * v300 + 24;
              v305 = 24 * v300 - v299;
              memcpy((v303 - v299), v444, v299);
              if (v444)
              {
                operator delete(v444);
              }

              v445 = v305;
              v306 = v304 - v305;
              v307 = 0xAAAAAAAAAAAAAAABLL * ((v304 - v305) >> 3);
              v308 = v307 + 1;
              if (v307 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_19D2AE2B4();
              }

              if (0x5555555555555556 * (-v305 >> 3) > v308)
              {
                v308 = 0x5555555555555556 * (-v305 >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * (-v305 >> 3) >= 0x555555555555555)
              {
                v309 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v309 = v308;
              }

              if (v309)
              {
                if (v309 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_19D2AD81C();
              }

              v317 = 24 * v307;
              *v317 = v297;
              *(v317 + 8) = v434;
              *(v317 + 12) = 0;
              *(v317 + 16) = 0;
              *&v431[4] = 24 * v307 + 24;
              v45 = 24 * v307 - v306;
              memcpy((v317 - v306), v445, v306);
              if (v445)
              {
                operator delete(v445);
              }

              *v431 += 8 * v298 + v199;
              v93 = v426;
              v134 = v423;
              goto LABEL_321;
            }

            v119 = *(&v496 + 1);
            v120 = v497;
            v432 = v502;
            v121 = __p[20].i32[0];
            v122 = __p[8].i32[0];
            if (v496)
            {
              v123 = 4 * __p[9].i32[0] * __p[20].i32[0];
              v283 = *&v431[4] - v437;
              v284 = 0xAAAAAAAAAAAAAAABLL * ((*&v431[4] - v437) >> 3);
              v285 = v284 + 1;
              if (v284 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_19D2AE2B4();
              }

              if (0x5555555555555556 * (-v437 >> 3) > v285)
              {
                v285 = 0x5555555555555556 * (-v437 >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * (-v437 >> 3) >= 0x555555555555555)
              {
                v286 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v286 = v285;
              }

              if (v286)
              {
                if (v286 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_19D2AD81C();
              }

              v361 = 8 * ((*&v431[4] - v437) >> 3);
              *v361 = v496;
              *(v361 + 8) = v123;
              *(v361 + 12) = v430;
              *(v361 + 16) = v90;
              *(v361 + 20) = v91;
              *&v431[4] = v361 + 24;
              memcpy((24 * v284 - v283), v437, v283);
              if (v437)
              {
                operator delete(v437);
              }

              v437 = 24 * v284 - v283;
              *v431 += v123;
              v217 = 4 * v121;
              if (!v119)
              {
LABEL_247:
                *&__dst[24] |= 0x400u;
                v124 = v437;
                v125 = *&v431[4];
LABEL_248:
                v126 = v125 - v124;
                v127 = 0xAAAAAAAAAAAAAAABLL * ((v125 - v124) >> 3) + 1;
                if (v127 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_19D2AE2B4();
                }

                if (0x5555555555555556 * (-v124 >> 3) > v127)
                {
                  v127 = 0x5555555555555556 * (-v124 >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * (-v124 >> 3) >= 0x555555555555555)
                {
                  v128 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v128 = v127;
                }

                if (v128)
                {
                  if (v128 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  sub_19D2AD81C();
                }

                v310 = 8 * ((v125 - v124) >> 3);
                *v310 = v120;
                *(v310 + 8) = v217;
                *(v310 + 12) = v430;
                *(v310 + 16) = v90;
                *(v310 + 20) = v91;
                v311 = v310 + 24;
                v312 = v310 - v126;
                memcpy((v310 - v126), v124, v126);
                if (v124)
                {
                  operator delete(v124);
                }

                v313 = v311 - v312;
                v314 = 0xAAAAAAAAAAAAAAABLL * ((v311 - v312) >> 3);
                v315 = v314 + 1;
                if (v314 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_19D2AE2B4();
                }

                if (0x5555555555555556 * (-v312 >> 3) > v315)
                {
                  v315 = 0x5555555555555556 * (-v312 >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * (-v312 >> 3) >= 0x555555555555555)
                {
                  v316 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v316 = v315;
                }

                if (v316)
                {
                  if (v316 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  sub_19D2AD81C();
                }

                v318 = 24 * v314;
                *v318 = v432;
                *(v318 + 8) = v217;
                *(v318 + 12) = 0;
                *(v318 + 16) = 0;
                *&v431[4] = 24 * v314 + 24;
                memcpy((24 * v314 - v313), v312, v313);
                if (v312)
                {
                  operator delete(v312);
                }

                v45 = 24 * v314 - v313;
                v93 = v426;
                *v431 += 8 * v121;
                v134 = v423;
                goto LABEL_321;
              }
            }

            else
            {
              *&__dst[24] |= 0x200u;
              v217 = 4 * __p[20].i32[0];
              if (!*(&v496 + 1))
              {
                goto LABEL_247;
              }
            }

            v218 = v217 * v122;
            v287 = *&v431[4] - v437;
            v288 = 0xAAAAAAAAAAAAAAABLL * ((*&v431[4] - v437) >> 3);
            v289 = v288 + 1;
            if (v288 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_19D2AE2B4();
            }

            if (0x5555555555555556 * (-v437 >> 3) > v289)
            {
              v289 = 0x5555555555555556 * (-v437 >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * (-v437 >> 3) >= 0x555555555555555)
            {
              v290 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v290 = v289;
            }

            if (v290)
            {
              if (v290 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_19D2AD81C();
            }

            v362 = 8 * ((*&v431[4] - v437) >> 3);
            *v362 = v119;
            *(v362 + 8) = v218;
            *(v362 + 12) = v430;
            *(v362 + 16) = v90;
            *(v362 + 20) = v91;
            *&v431[4] = v362 + 24;
            memcpy((24 * v288 - v287), v437, v287);
            if (v437)
            {
              operator delete(v437);
            }

            *v431 += v218;
            v124 = 24 * v288 - v287;
            v125 = *&v431[4];
            goto LABEL_248;
          }

          if (v94 == 20)
          {
            v129 = *(&v496 + 1);
            v130 = v497;
            v131 = v502;
            v132 = v503;
            v433 = __p[20].i32[1] * __p[20].i32[0];
            v133 = 4 * __p[20].i32[1] * __p[20].i32[0] * __p[8].i32[0];
            v424 = __p[20].i32[1] * __p[20].i32[0] * __p[8].i32[0];
            v421 = v504;
            v200 = *&v431[4] - v437;
            v201 = 0xAAAAAAAAAAAAAAABLL * ((*&v431[4] - v437) >> 3) + 1;
            if (v201 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_19D2AE2B4();
            }

            if (0x5555555555555556 * (-v437 >> 3) > v201)
            {
              v201 = 0x5555555555555556 * (-v437 >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * (-v437 >> 3) >= 0x555555555555555)
            {
              v202 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v202 = v201;
            }

            if (v202)
            {
              if (v202 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_19D2AD81C();
            }

            v223 = 8 * ((*&v431[4] - v437) >> 3);
            *v223 = v496;
            *(v223 + 8) = v133;
            *(v223 + 12) = v430;
            *(v223 + 16) = v90;
            *(v223 + 20) = v91;
            v224 = v223 + 24;
            memcpy((v223 - v200), v437, v200);
            if (v437)
            {
              operator delete(v437);
            }

            v439 = 8 * ((*&v431[4] - v437) >> 3) - v200;
            v225 = v224 - v439;
            v226 = 0xAAAAAAAAAAAAAAABLL * ((v224 - v439) >> 3);
            v227 = v226 + 1;
            if (v226 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_19D2AE2B4();
            }

            if (0x5555555555555556 * (-v439 >> 3) > v227)
            {
              v227 = 0x5555555555555556 * (-v439 >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * (-v439 >> 3) >= 0x555555555555555)
            {
              v228 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v228 = v227;
            }

            if (v228)
            {
              if (v228 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_19D2AD81C();
            }

            v239 = 24 * v226;
            *v239 = v129;
            *(v239 + 8) = v133;
            *(v239 + 12) = v430;
            *(v239 + 16) = v90;
            *(v239 + 20) = v91;
            v240 = 24 * v226 + 24;
            v241 = v239 - v225;
            memcpy((v239 - v225), v439, v225);
            if (v439)
            {
              operator delete(v439);
            }

            v441 = v241;
            v242 = v240 - v241;
            v243 = 0xAAAAAAAAAAAAAAABLL * ((v240 - v241) >> 3);
            v244 = v243 + 1;
            if (v243 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_19D2AE2B4();
            }

            if (0x5555555555555556 * (-v241 >> 3) > v244)
            {
              v244 = 0x5555555555555556 * (-v241 >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * (-v241 >> 3) >= 0x555555555555555)
            {
              v245 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v245 = v244;
            }

            if (v245)
            {
              if (v245 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_19D2AD81C();
            }

            v248 = 24 * v243;
            *v248 = v130;
            *(v248 + 8) = v133;
            *(v248 + 12) = v430;
            *(v248 + 16) = v90;
            *(v248 + 20) = v91;
            v249 = 24 * v243 + 24;
            v250 = 24 * v243 - v242;
            memcpy(v250, v441, v242);
            if (v441)
            {
              operator delete(v441);
            }

            v442 = (24 * v243 - v242);
            v251 = 4 * v433;
            v252 = v249 - v250;
            v253 = 0xAAAAAAAAAAAAAAABLL * ((v249 - v250) >> 3) + 1;
            if (v253 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_19D2AE2B4();
            }

            if (0x5555555555555556 * (-v250 >> 3) > v253)
            {
              v253 = 0x5555555555555556 * (-v250 >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * (-v250 >> 3) >= 0x555555555555555)
            {
              v254 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v254 = v253;
            }

            if (v254)
            {
              if (v254 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_19D2AD81C();
            }

            v267 = 8 * ((v249 - v250) >> 3);
            *v267 = v131;
            *(v267 + 8) = v251;
            *(v267 + 12) = 0;
            *(v267 + 16) = 0;
            v268 = v267 + 24;
            v269 = v267 - v252;
            memcpy((v267 - v252), v442, v252);
            if (v442)
            {
              operator delete(v442);
            }

            v443 = v269;
            v270 = v268 - v269;
            v271 = 0xAAAAAAAAAAAAAAABLL * ((v268 - v269) >> 3);
            v272 = v271 + 1;
            if (v271 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_19D2AE2B4();
            }

            if (0x5555555555555556 * (-v269 >> 3) > v272)
            {
              v272 = 0x5555555555555556 * (-v269 >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * (-v269 >> 3) >= 0x555555555555555)
            {
              v273 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v273 = v272;
            }

            if (v273)
            {
              if (v273 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_19D2AD81C();
            }

            v275 = 24 * v271;
            *v275 = v132;
            *(v275 + 8) = v251;
            *(v275 + 12) = 0;
            *(v275 + 16) = 0;
            v276 = 24 * v271 + 24;
            v277 = 24 * v271 - v270;
            memcpy(v277, v443, v270);
            if (v443)
            {
              operator delete(v443);
            }

            v278 = v276 - v277;
            v279 = 0xAAAAAAAAAAAAAAABLL * ((v276 - v277) >> 3);
            v280 = v279 + 1;
            if (v279 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_19D2AE2B4();
            }

            if (0x5555555555555556 * (-v277 >> 3) > v280)
            {
              v280 = 0x5555555555555556 * (-v277 >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * (-v277 >> 3) >= 0x555555555555555)
            {
              v281 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v281 = v280;
            }

            if (v281)
            {
              if (v281 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_19D2AD81C();
            }

            v282 = 8 * ((v276 - v277) >> 3);
            *v282 = v421;
            *(v282 + 8) = v251;
            *(v282 + 12) = 0;
            *(v282 + 16) = 0;
            *&v431[4] = v282 + 24;
            v45 = v282 - v278;
            memcpy((24 * v279 - v278), v277, v278);
            if (v277)
            {
              operator delete(v277);
            }

            v93 = v426;
            *v431 += v133 + v251 + 8 * (v433 + v424);
            v134 = v423;
            goto LABEL_321;
          }

          if (v94 != 21)
          {
            goto LABEL_630;
          }

          v95 = __p[8].i32[0];
          v96 = 4 * __p[8].i32[0];
          v207 = *&v431[4] - v45;
          v208 = 0xAAAAAAAAAAAAAAABLL * ((*&v431[4] - v45) >> 3);
          v209 = v208 + 1;
          if (v208 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_19D2AE2B4();
          }

          if (0x5555555555555556 * (-v45 >> 3) > v209)
          {
            v209 = 0x5555555555555556 * (-v45 >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v45 >> 3) >= 0x555555555555555)
          {
            v210 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v210 = v209;
          }

          if (v210)
          {
            if (v210 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_19D2AD81C();
          }

          v232 = 24 * v208;
          *v232 = v496;
          *(v232 + 8) = v96;
          *(v232 + 12) = v430;
          *(v232 + 16) = v90;
          *(v232 + 20) = v91;
          v233 = 24 * v208 + 24;
          v234 = v232 - v207;
          memcpy((v232 - v207), v437, v207);
          if (v437)
          {
            operator delete(v437);
          }

          v235 = v233 - v234;
          v236 = 0xAAAAAAAAAAAAAAABLL * ((v233 - v234) >> 3);
          v237 = v236 + 1;
          v440 = v234;
          if (v236 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_19D2AE2B4();
          }

          if (0x5555555555555556 * (-v234 >> 3) > v237)
          {
            v237 = 0x5555555555555556 * (-v234 >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * (-v234 >> 3) >= 0x555555555555555)
          {
            v238 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v238 = v237;
          }

          if (v238)
          {
            if (v238 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_19D2AD81C();
          }

          v246 = 24 * v236;
          *v246 = v502;
          *(v246 + 8) = v96;
          *(v246 + 12) = v430;
          *(v246 + 16) = v90;
          *(v246 + 20) = v91;
          *&v431[4] = 24 * v236 + 24;
          v45 = 24 * v236 - v235;
          memcpy(v45, v440, v235);
          if (v440)
          {
            operator delete(v440);
          }

          *v431 += 8 * v95;
          v247 = *&__dst[196] | 0x10001;
          goto LABEL_485;
        }

        v97 = v419;
        switch(v94)
        {
          case 23:
LABEL_200:
            if (__p[22].i32[0] != 1)
            {
              v135 = __p[8].i32[0];
              if (__p[8].i32[0] <= 1u)
              {
                v135 = 1;
              }

              v136 = __p[16].i32[0] / v135 * __p[20].i32[0];
              if (v97)
              {
                v137 = 0;
              }

              else
              {
                v137 = 2;
              }

              v138 = v136 << v137;
              v203 = *&v431[4] - v45;
              v204 = 0xAAAAAAAAAAAAAAABLL * ((*&v431[4] - v45) >> 3);
              v205 = v204 + 1;
              if (v204 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_19D2AE2B4();
              }

              if (0x5555555555555556 * (-v45 >> 3) > v205)
              {
                v205 = 0x5555555555555556 * (-v45 >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * (-v45 >> 3) >= 0x555555555555555)
              {
                v206 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v206 = v205;
              }

              if (v206)
              {
                if (v206 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_19D2AD81C();
              }

              v229 = 8 * ((*&v431[4] - v45) >> 3);
              *v229 = v496;
              *(v229 + 8) = v138;
              *(v229 + 12) = v430;
              *(v229 + 16) = v90;
              *(v229 + 20) = v91;
              *&v431[4] = v229 + 24;
              memcpy((24 * v204 - v203), v45, v203);
              if (v45)
              {
                operator delete(v45);
              }

              v45 = 24 * v204 - v203;
              *&__dst[196] |= 1u;
              if (v138 <= 0)
              {
                v230 = -(-v138 & 3);
              }

              else
              {
                v230 = v138 & 3;
              }

              if (v230)
              {
                v231 = v138 - v230 + 8;
              }

              else
              {
                v231 = v138;
              }

              *v431 += v231;
              v93 = v426;
              v134 = v423;
              goto LABEL_321;
            }

            *&__dst[138] = 1;
            *&__dst[196] |= 1u;
            v449[0] = v472;
            v102 = sub_19D3AFECC(v474, v472);
            break;
          case 26:
            if (__p[22].i32[0] != 1)
            {
              __src = (4 * __p[20].u32[0]);
              v422 = __p[20].i32[0];
              if (__p[20].i32[0] >= 1)
              {
                operator new();
              }

              v219 = 4 * __p[20].i32[0];
              v220 = *&v431[4] - v437;
              v221 = 0xAAAAAAAAAAAAAAABLL * ((*&v431[4] - v437) >> 3) + 1;
              if (v221 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_19D2AE2B4();
              }

              if (0x5555555555555556 * (-v437 >> 3) > v221)
              {
                v221 = 0x5555555555555556 * (-v437 >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * (-v437 >> 3) >= 0x555555555555555)
              {
                v222 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v222 = v221;
              }

              if (v222)
              {
                if (v222 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_19D2AD81C();
              }

              v319 = 8 * ((*&v431[4] - v437) >> 3);
              *v319 = v500;
              *(v319 + 8) = v219;
              *(v319 + 12) = 0;
              *(v319 + 16) = 0;
              v320 = v319 + 24;
              v321 = v319 - v220;
              memcpy((v319 - v220), v437, v220);
              if (v437)
              {
                operator delete(v437);
              }

              v322 = v321;
              v323 = v320 - v321;
              v324 = 0xAAAAAAAAAAAAAAABLL * ((v320 - v321) >> 3);
              v325 = v324 + 1;
              if (v324 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_19D2AE2B4();
              }

              if (0x5555555555555556 * (-v321 >> 3) > v325)
              {
                v325 = 0x5555555555555556 * (-v321 >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * (-v321 >> 3) >= 0x555555555555555)
              {
                v326 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v326 = v325;
              }

              if (v326)
              {
                if (v326 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_19D2AD81C();
              }

              v327 = 24 * v324;
              *v327 = v501;
              *(v327 + 8) = v219;
              *(v327 + 12) = 0;
              *(v327 + 16) = 0;
              v328 = 24 * v324 + 24;
              v329 = 24 * v324 - v323;
              memcpy(v329, v322, v323);
              if (v322)
              {
                operator delete(v322);
              }

              if (v419)
              {
                v330 = 0;
              }

              else
              {
                v330 = 2;
              }

              v331 = v330;
              v332 = (MEMORY[0] * MEMORY[0]) << v330;
              v333 = v328 - v329;
              v334 = 0xAAAAAAAAAAAAAAABLL * ((v328 - v329) >> 3);
              v335 = v334 + 1;
              if (v334 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_19D2AE2B4();
              }

              if (0x5555555555555556 * (-v329 >> 3) > v335)
              {
                v335 = 0x5555555555555556 * (-v329 >> 3);
              }

              if (0xAAAAAAAAAAAAAAABLL * (-v329 >> 3) >= 0x555555555555555)
              {
                v336 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v336 = v335;
              }

              if (v336)
              {
                if (v336 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                sub_19D2AD81C();
              }

              v337 = 24 * v334;
              *v337 = v496;
              *(v337 + 8) = v332;
              *(v337 + 12) = v430;
              *(v337 + 16) = v90;
              *(v337 + 20) = v91;
              *&v431[4] = 24 * v334 + 24;
              memcpy((24 * v334 - v333), v329, v333);
              if (v329)
              {
                operator delete(v329);
              }

              v338 = 24 * v334 - v333;
              v93 = v426;
              v446 = v338;
              *&__dst[196] |= 1u;
              if (v332 <= 0)
              {
                v339 = -(-v332 & 3);
              }

              else
              {
                v339 = v332 & 3;
              }

              if (v339)
              {
                v340 = v332 - v339 + 8;
              }

              else
              {
                v340 = v332;
              }

              *v431 += 8 * v422 + v340;
              if (v422 >= 2)
              {
                v341 = 4;
                v342 = &v496 + 1;
                v343 = v331;
                do
                {
                  v346 = (*v341 * *v341) << v343;
                  v347 = *&v431[4] - v446;
                  v348 = 0xAAAAAAAAAAAAAAABLL * ((*&v431[4] - v446) >> 3) + 1;
                  if (v348 > 0xAAAAAAAAAAAAAAALL)
                  {
                    sub_19D2AE2B4();
                  }

                  if (0x5555555555555556 * (-v446 >> 3) > v348)
                  {
                    v348 = 0x5555555555555556 * (-v446 >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * (-v446 >> 3) >= 0x555555555555555)
                  {
                    v349 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v349 = v348;
                  }

                  if (v349)
                  {
                    if (v349 <= 0xAAAAAAAAAAAAAAALL)
                    {
                      operator new();
                    }

                    sub_19D2AD81C();
                  }

                  v350 = 8 * ((*&v431[4] - v446) >> 3);
                  *v350 = *v342;
                  *(v350 + 8) = v346;
                  *(v350 + 12) = v430;
                  *(v350 + 16) = v90;
                  *(v350 + 20) = v91;
                  v351 = v350 + 24;
                  v352 = v350 - v347;
                  memcpy((v350 - v347), v446, v347);
                  if (v446)
                  {
                    operator delete(v446);
                  }

                  v447 = v352;
                  if (v346 <= 0)
                  {
                    v353 = -(-v346 & 3);
                  }

                  else
                  {
                    v353 = v346 & 3;
                  }

                  if (v353)
                  {
                    v354 = v346 - v353 + 8;
                  }

                  else
                  {
                    v354 = v346;
                  }

                  v355 = (MEMORY[0] * *v341) << v343;
                  v356 = v351 - v352;
                  v357 = 0xAAAAAAAAAAAAAAABLL * ((v351 - v352) >> 3);
                  v358 = v357 + 1;
                  if (v357 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    sub_19D2AE2B4();
                  }

                  if (0x5555555555555556 * (-v352 >> 3) > v358)
                  {
                    v358 = 0x5555555555555556 * (-v352 >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * (-v352 >> 3) >= 0x555555555555555)
                  {
                    v359 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v359 = v358;
                  }

                  if (v359)
                  {
                    if (v359 <= 0xAAAAAAAAAAAAAAALL)
                    {
                      operator new();
                    }

                    sub_19D2AD81C();
                  }

                  v360 = 24 * v357;
                  *v360 = v342[15];
                  *(v360 + 8) = v355;
                  *(v360 + 12) = v430;
                  *(v360 + 16) = v90;
                  *(v360 + 20) = v91;
                  *&v431[4] = 24 * v357 + 24;
                  memcpy((24 * v357 - v356), v447, v356);
                  if (v447)
                  {
                    operator delete(v447);
                  }

                  v446 = 24 * v357 - v356;
                  v93 = v426;
                  if (v355 <= 0)
                  {
                    v344 = -(-v355 & 3);
                  }

                  else
                  {
                    v344 = v355 & 3;
                  }

                  if (v344)
                  {
                    v345 = v355 - v344 + 8;
                  }

                  else
                  {
                    v345 = v355;
                  }

                  *v431 += v354 + v345;
                  ++v342;
                  v341 += 4;
                }

                while (__src != v341);
              }

              operator delete(0);
              operator delete(0);
              v45 = v446;
              goto LABEL_630;
            }

            *&__dst[138] = 1;
            *&__dst[196] |= 7u;
            v449[0] = v472;
            v102 = sub_19D3AFECC(v474, v472);
            break;
          case 27:
            if (__p[7].i8[9])
            {
              *&__dst[24] |= 0x100u;
            }

            operator new();
          default:
LABEL_630:
            v134 = v423;
            goto LABEL_321;
        }

        v93 = v426;
        *(v102 + 10) = -1030792151 * ((v423 - v426) >> 4);
        v134 = v423;
        goto LABEL_321;
      }

LABEL_189:
      if (v94 <= 4)
      {
        if (v94)
        {
          if (v94 == 1)
          {
            v109 = v496;
            v110 = v502;
            v111 = __p[8].i32[2];
            if (__p[8].i32[2] <= 1u)
            {
              v111 = __p[8].i32[0];
            }

            v112 = v111;
            v113 = v419;
            if ((__p[7].i8[8] & 0x40) == 0)
            {
              *&__dst[24] |= 0x40u;
              v449[0] = 0;
              v449[1] = 0;
              *&v450[0] = 0;
              if (v111)
              {
                if ((v111 & 0x80000000) == 0)
                {
                  operator new();
                }

                sub_19D2AE2B4();
              }

              sub_19D3A32D0(&v477, v449);
              if (v449[0])
              {
                v449[1] = v449[0];
                operator delete(v449[0]);
              }

              v449[0] = 0;
              v449[1] = 0;
              *&v450[0] = 0;
              sub_19D3A32D0(&v477, v449);
              if (v449[0])
              {
                v449[1] = v449[0];
                operator delete(v449[0]);
              }

              v114 = v478;
              sub_19D43FEE8(v112, v449);
              v115 = (v114 - 24);
              v116 = *(v114 - 3);
              if (v116)
              {
                *(v114 - 2) = v116;
                operator delete(v116);
                *v115 = 0;
                *(v114 - 2) = 0;
                *(v114 - 1) = 0;
              }

              v117 = (v114 - 48);
              *(v114 - 24) = *v449;
              *(v114 - 1) = *&v450[0];
              v449[0] = 0;
              v449[1] = 0;
              *&v450[0] = 0;
              v118 = *(v114 - 6);
              if (v118)
              {
                *(v114 - 5) = v118;
                operator delete(v118);
                *v117 = 0;
                *(v114 - 5) = 0;
                *(v114 - 4) = 0;
              }

              *(v114 - 3) = *(v450 + 8);
              *(v114 - 4) = *(&v450[1] + 1);
              memset(v450 + 8, 0, 24);
              if (v449[0])
              {
                v449[1] = v449[0];
                operator delete(v449[0]);
              }

              v109 = *v115;
              v110 = *v117;
              v113 = v419;
            }

            if (v113)
            {
              v197 = 0;
            }

            else
            {
              v197 = 2;
            }

            v198 = v112 << v197;
            v211 = *&v431[4] - v45;
            v212 = 0xAAAAAAAAAAAAAAABLL * ((*&v431[4] - v45) >> 3) + 1;
            if (v212 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_19D2AE2B4();
            }

            if (0x5555555555555556 * (-v45 >> 3) > v212)
            {
              v212 = 0x5555555555555556 * (-v45 >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * (-v45 >> 3) >= 0x555555555555555)
            {
              v213 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v213 = v212;
            }

            if (v213)
            {
              if (v213 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_19D2AD81C();
            }

            v255 = 8 * ((*&v431[4] - v45) >> 3);
            *v255 = v109;
            *(v255 + 8) = v198;
            *(v255 + 12) = v430;
            *(v255 + 16) = v90;
            *(v255 + 20) = v91;
            v256 = v255 + 24;
            v257 = v255 - v211;
            memcpy((v255 - v211), v45, v211);
            if (v45)
            {
              operator delete(v45);
            }

            v258 = 8 * ((*&v431[4] - v45) >> 3) - v211;
            if (v198 <= 0)
            {
              v259 = -(-v198 & 3);
            }

            else
            {
              v259 = v198 & 3;
            }

            if (v259)
            {
              v198 = v198 - v259 + 8;
            }

            *&__dst[196] |= 1u;
            v260 = __p[8].i32[2];
            if (__p[8].i32[2] <= 1)
            {
              v260 = __p[8].i32[0];
            }

            v261 = 4 * v260;
            v262 = v256 - v257;
            v263 = 0xAAAAAAAAAAAAAAABLL * ((v256 - v258) >> 3);
            v264 = v263 + 1;
            if (v263 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_19D2AE2B4();
            }

            v265 = v258;
            if (0x5555555555555556 * (-v258 >> 3) > v264)
            {
              v264 = 0x5555555555555556 * (-v258 >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * (-v258 >> 3) >= 0x555555555555555)
            {
              v266 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v266 = v264;
            }

            if (v266)
            {
              if (v266 <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_19D2AD81C();
            }

            v274 = 24 * v263;
            *v274 = v110;
            *(v274 + 8) = v261;
            *(v274 + 12) = 0;
            *(v274 + 16) = 0;
            *&v431[4] = 24 * v263 + 24;
            v45 = 24 * v263 - v262;
            memcpy(v45, v265, v262);
            if (v265)
            {
              operator delete(v265);
            }

            *v431 += v198 + v261;
            v247 = *&__dst[196] | 0x10000;
LABEL_485:
            *&__dst[196] = v247;
            v93 = v426;
            v134 = v423;
            goto LABEL_321;
          }

          v97 = v419;
          if (v94 != 4)
          {
            goto LABEL_630;
          }

          goto LABEL_200;
        }

        if (v419)
        {
          v104 = 0;
        }

        else
        {
          v104 = 2;
        }

        if ((__p[7].i16[4] & 0x100) != 0)
        {
          *&__dst[24] |= 0x100u;
        }

        v99 = (__p[16].i32[0] * __p[8].i32[0]) << v104;
        if ((__p[7].i16[4] & 0x100) != 0)
        {
          v100 = 0;
        }

        else
        {
          v100 = 4 * __p[16].i32[0];
        }

        v101 = *&v431[4];
      }

      else
      {
        if ((v94 - 5) < 2)
        {
          if ((__p[7].i8[8] & 0x20) == 0)
          {
            operator new();
          }

          operator new();
        }

        if (v94 == 11)
        {
          if (v419)
          {
            v103 = 0;
          }

          else
          {
            v103 = 2;
          }

          v99 = (__p[20].i32[1] * __p[20].i32[0] * __p[8].i32[2] * __p[16].i32[0]) << v103;
          v100 = 4 * __p[16].i32[0];
          v101 = *&v431[4];
        }

        else
        {
          if (v94 != 13)
          {
            goto LABEL_630;
          }

          if (v419)
          {
            v98 = 0;
          }

          else
          {
            v98 = 2;
          }

          v99 = (2 * __p[8].i32[0] * __p[16].i32[0]) << v98;
          v100 = 8 * __p[16].i32[0];
          v101 = *&v431[4];
        }
      }

      v105 = v101 - v45;
      v106 = 0xAAAAAAAAAAAAAAABLL * ((v101 - v45) >> 3);
      v107 = v106 + 1;
      if (v106 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_19D2AE2B4();
      }

      if (0x5555555555555556 * (-v45 >> 3) > v107)
      {
        v107 = 0x5555555555555556 * (-v45 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v45 >> 3) >= 0x555555555555555)
      {
        v108 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v108 = v107;
      }

      if (v108)
      {
        if (v108 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_19D2AD81C();
      }

      v139 = 24 * v106;
      *v139 = v496;
      *(v139 + 8) = v99;
      *(v139 + 12) = v430;
      *(v139 + 16) = v90;
      *(v139 + 20) = v91;
      v140 = 24 * v106 + 24;
      v141 = 24 * v106 - v105;
      memcpy(v141, v437, v105);
      if (v437)
      {
        operator delete(v437);
      }

      v438 = (24 * v106 - v105);
      if (v99 <= 0)
      {
        v142 = -(-v99 & 3);
      }

      else
      {
        v142 = v99 & 3;
      }

      if (v142)
      {
        v143 = v99 - v142 + 8;
      }

      else
      {
        v143 = v99;
      }

      *&__dst[196] |= 1u;
      v144 = v140 - v141;
      v145 = 0xAAAAAAAAAAAAAAABLL * ((v140 - v141) >> 3);
      v146 = v145 + 1;
      if (v145 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_19D2AE2B4();
      }

      if (0x5555555555555556 * (-v141 >> 3) > v146)
      {
        v146 = 0x5555555555555556 * (-v141 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v141 >> 3) >= 0x555555555555555)
      {
        v147 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v147 = v146;
      }

      if (v147)
      {
        if (v147 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_19D2AD81C();
      }

      v148 = 24 * v145;
      *v148 = v502;
      *(v148 + 8) = v100;
      *(v148 + 12) = 0;
      *(v148 + 16) = 0;
      *&v431[4] = 24 * v145 + 24;
      v45 = 24 * v145 - v144;
      memcpy((v148 - v144), v438, v144);
      if (v438)
      {
        operator delete(v438);
      }

      if (v100 <= 0)
      {
        v149 = -(-v100 & 3);
      }

      else
      {
        v149 = v100 & 3;
      }

      if (v149)
      {
        v150 = v100 - v149 + 8;
      }

      else
      {
        v150 = v100;
      }

      *v431 += v150 + v143;
      v151 = *&__dst[196];
      *&__dst[196] |= 0x10000u;
      if (__p[22].i32[0] == 1)
      {
        *&__dst[138] = 1;
        *&__dst[196] = v151 | 0x10001;
        v152 = v475;
        if (v475)
        {
          v153 = (v99 / v92);
          while (1)
          {
            if (*(v152 + 39) < 0)
            {
              sub_19D2AD6B8(v467, v152[2], v152[3]);
            }

            else
            {
              *v467 = *(v152 + 1);
              v468 = v152[4];
            }

            v469 = *(v152 + 10);
            v465 = 0u;
            v466 = 0u;
            v463 = 0u;
            v464 = 0u;
            v461 = 0u;
            v462 = 0u;
            v459 = 0u;
            v460 = 0u;
            v457 = 0u;
            v458 = 0u;
            v455 = 0u;
            v456 = 0u;
            v453 = 0u;
            v454 = 0u;
            v451 = 0u;
            v452 = 0u;
            *v449 = 0u;
            memset(v450, 0, sizeof(v450));
            sub_19D430AF8(a3, v467);
            if (__p[16].i32[0] * __p[8].i32[0] != v451 * v455)
            {
              goto LABEL_296;
            }

            if (v153 >= 1)
            {
              break;
            }

LABEL_295:
            v470 = v467;
            v154 = sub_19D3AFECC(v474, v467);
            *&v426[400 * *(v154 + 10) + 388] = *&__dst[194];
LABEL_296:
            if (SHIBYTE(v468) < 0)
            {
              operator delete(v467[0]);
              v152 = *v152;
              if (!v152)
              {
                goto LABEL_320;
              }
            }

            else
            {
              v152 = *v152;
              if (!v152)
              {
                goto LABEL_320;
              }
            }
          }

          if (v153 < 4)
          {
            v155 = 0;
            LOBYTE(v156) = 1;
            goto LABEL_316;
          }

          if (v153 >= 0x20)
          {
            v155 = v153 & 0x7FFFFFE0;
            v157 = (v496 + 64);
            v158 = (v463 + 64);
            v159 = 0uLL;
            v160 = v155;
            v161 = 0uLL;
            do
            {
              v162 = v158[2];
              v163 = vabdq_f32(v157[-1], v158[-1]);
              v164 = vabdq_f32(v157[-2], v158[-2]);
              v165 = vabdq_f32(v157[-3], v158[-3]);
              v166 = vabdq_f32(v157[-4], v158[-4]);
              v167 = vabdq_f32(v157[3], v158[3]);
              v168 = *v158;
              v169 = v158[1];
              v158 += 8;
              v170 = vabdq_f32(v157[2], v162);
              v171 = vabdq_f32(v157[1], v169);
              v172 = vabdq_f32(*v157, v168);
              v159 = vorrq_s8(v159, vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_f64(vcvtq_f64_f32(*v166.f32), v425), vcgtq_f64(vcvt_hight_f64_f32(v166), v425)), vuzp1q_s32(vcgtq_f64(vcvtq_f64_f32(*v165.f32), v425), vcgtq_f64(vcvt_hight_f64_f32(v165), v425))), vuzp1q_s16(vuzp1q_s32(vcgtq_f64(vcvtq_f64_f32(*v164.f32), v425), vcgtq_f64(vcvt_hight_f64_f32(v164), v425)), vuzp1q_s32(vcgtq_f64(vcvtq_f64_f32(*v163.f32), v425), vcgtq_f64(vcvt_hight_f64_f32(v163), v425)))));
              v161 = vorrq_s8(v161, vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vcgtq_f64(vcvtq_f64_f32(*v172.f32), v425), vcgtq_f64(vcvt_hight_f64_f32(v172), v425)), vuzp1q_s32(vcgtq_f64(vcvtq_f64_f32(*v171.f32), v425), vcgtq_f64(vcvt_hight_f64_f32(v171), v425))), vuzp1q_s16(vuzp1q_s32(vcgtq_f64(vcvtq_f64_f32(*v170.f32), v425), vcgtq_f64(vcvt_hight_f64_f32(v170), v425)), vuzp1q_s32(vcgtq_f64(vcvtq_f64_f32(*v167.f32), v425), vcgtq_f64(vcvt_hight_f64_f32(v167), v425)))));
              v157 += 8;
              v160 -= 32;
            }

            while (v160);
            v173 = vcltzq_s8(vshlq_n_s8(vorrq_s8(v161, v159), 7uLL));
            v173.i8[0] = vmaxvq_u8(v173);
            v156 = v173.i32[0] ^ 1;
            if (v155 != v153)
            {
              if ((v153 & 0x1C) == 0)
              {
                goto LABEL_316;
              }

              goto LABEL_313;
            }
          }

          else
          {
            v155 = 0;
            v156 = 1;
LABEL_313:
            v174 = v155;
            v155 = v153 & 0x7FFFFFFC;
            v175 = vdup_n_s16(v156 ^ 1u);
            v176 = (v496 + 4 * v174);
            v177 = (v463 + 4 * v174);
            v178 = v174 - v155;
            do
            {
              v179 = *v176++;
              v180 = v179;
              v181 = *v177++;
              v182 = vabdq_f32(v180, v181);
              v175 = vorr_s8(v175, vmovn_s32(vuzp1q_s32(vcgtq_f64(vcvtq_f64_f32(*v182.f32), v425), vcgtq_f64(vcvt_hight_f64_f32(v182), v425))));
              v178 += 4;
            }

            while (v178);
            LOBYTE(v156) = vmaxv_u16(vcltz_s16(vshl_n_s16(v175, 0xFuLL))) ^ 1;
            if (v155 != v153)
            {
LABEL_316:
              v183 = (v463 + 4 * v155);
              v184 = (v496 + 4 * v155);
              v185 = v153 - v155;
              do
              {
                v186 = *v184++;
                v187 = v186;
                v188 = *v183++;
                LOBYTE(v156) = (vabds_f32(v187, v188) <= 0.001) & v156;
                --v185;
              }

              while (v185);
            }
          }

          if ((v156 & 1) == 0)
          {
            goto LABEL_296;
          }

          goto LABEL_295;
        }
      }

LABEL_320:
      v93 = v426;
      v134 = v423;
LABEL_321:
      v189 = v134 - v93;
      v190 = v93;
      v191 = 0x8F5C28F5C28F5C29 * ((v134 - v93) >> 4);
      v192 = v191 + 1;
      if (v191 + 1 > 0xA3D70A3D70A3D7)
      {
        sub_19D2AE2B4();
      }

      v193 = 0x8F5C28F5C28F5C29 * (-v190 >> 4);
      if (2 * v193 > v192)
      {
        v192 = 2 * v193;
      }

      if (v193 >= 0x51EB851EB851EBLL)
      {
        v194 = 0xA3D70A3D70A3D7;
      }

      else
      {
        v194 = v192;
      }

      if (v194)
      {
        if (v194 <= 0xA3D70A3D70A3D7)
        {
          operator new();
        }

        sub_19D2AD81C();
      }

      memcpy((400 * v191), __dst, 0x190uLL);
      v423 = (400 * v191 + 400);
      v195 = ((v189 * 0x5C28F5C28F5C28F5) >> 64) - v189;
      v196 = (400 * v191 + 400 * ((v195 >> 8) + (v195 >> 63)));
      memcpy(v196, v426, v189);
      if (v426)
      {
        operator delete(v426);
      }

      v30 = v196;
      if (SHIBYTE(v473) < 0)
      {
        operator delete(v472[0]);
      }

      v44 = v418 + 3;
      if (v418 + 3 == v417)
      {
        goto LABEL_639;
      }
    }
  }

  *&v431[4] = 0;
  v45 = 0;
LABEL_639:
  v363 = v485;
  v448 = v45;
  if (v485 != &v486)
  {
    v364 = a3;
    do
    {
      v427 = v30;
      if (*(v363 + 55) < 0)
      {
        sub_19D2AD6B8(v467, v363[4], v363[5]);
      }

      else
      {
        *v467 = *(v363 + 2);
        v468 = v363[6];
      }

      bzero(__p, 0x190uLL);
      if (v468 >= 0)
      {
        v365 = v467;
      }

      else
      {
        v365 = v467[0];
      }

      strcpy(__p[0].i8, v365);
      __p[2].i8[0] = -7;
      sub_19D43042C(v364, v467, v472);
      v366 = v472[0];
      v436 = v472[1];
      if (v472[0] == v472[1])
      {
        if (!v472[0])
        {
          goto LABEL_696;
        }
      }

      else
      {
        do
        {
          if (*(v366 + 23) < 0)
          {
            sub_19D2AD6B8(v449, *v366, v366[1]);
          }

          else
          {
            v373 = *v366;
            *&v450[0] = v366[2];
            *v449 = v373;
          }

          v374 = *(v366 + 6);
          DWORD2(v450[0]) = *(v366 + 6);
          v375 = v481;
          if (!v481)
          {
LABEL_689:
            operator new();
          }

          if ((SBYTE7(v450[0]) & 0x80u) == 0)
          {
            v376 = BYTE7(v450[0]);
          }

          else
          {
            v376 = v449[1];
          }

          if ((SBYTE7(v450[0]) & 0x80u) == 0)
          {
            v377 = v449;
          }

          else
          {
            v377 = v449[0];
          }

          while (1)
          {
            while (1)
            {
              v378 = v375;
              v381 = *(v375 + 4);
              v379 = v375 + 32;
              v380 = v381;
              v382 = v379[23];
              if (v382 >= 0)
              {
                v383 = v379[23];
              }

              else
              {
                v383 = *(v379 + 1);
              }

              if (v382 >= 0)
              {
                v384 = v379;
              }

              else
              {
                v384 = v380;
              }

              if (v383 >= v376)
              {
                v385 = v376;
              }

              else
              {
                v385 = v383;
              }

              v386 = memcmp(v377, v384, v385);
              v387 = v376 < v383;
              if (v386)
              {
                v387 = v386 < 0;
              }

              if (!v387)
              {
                break;
              }

              v375 = *v378;
              if (!*v378)
              {
                goto LABEL_689;
              }
            }

            v388 = memcmp(v384, v377, v385);
            v389 = v383 < v376;
            if (v388)
            {
              v389 = v388 < 0;
            }

            if (!v389)
            {
              break;
            }

            v375 = *(v378 + 1);
            if (!v375)
            {
              goto LABEL_689;
            }
          }

          __p[23].i16[v374 + 2] = *(v378 + 28);
          v45 = v448;
          __p[2].i8[7] = sub_19D430998(a3, v449, v467);
          if (SBYTE7(v450[0]) < 0)
          {
            operator delete(v449[0]);
          }

          v366 += 4;
        }

        while (v366 != v436);
        v366 = v472[0];
        if (!v472[0])
        {
LABEL_696:
          v368 = v423;
          goto LABEL_652;
        }
      }

      v367 = v472[1];
      if (v472[1] == v366)
      {
        v472[1] = v366;
        operator delete(v366);
        v368 = v423;
      }

      else
      {
        do
        {
          v390 = *(v367 - 9);
          v367 -= 4;
          if (v390 < 0)
          {
            operator delete(*v367);
          }
        }

        while (v367 != v366);
        v472[1] = v366;
        operator delete(v472[0]);
        v368 = v423;
      }

LABEL_652:
      v369 = &v368[-v427];
      v370 = 0x8F5C28F5C28F5C29 * (&v368[-v427] >> 4);
      v371 = v370 + 1;
      if (v370 + 1 > 0xA3D70A3D70A3D7)
      {
        sub_19D2AE2B4();
      }

      if (0x1EB851EB851EB852 * (-v427 >> 4) > v371)
      {
        v371 = 0x1EB851EB851EB852 * (-v427 >> 4);
      }

      if (0x8F5C28F5C28F5C29 * (-v427 >> 4) >= 0x51EB851EB851EBLL)
      {
        v372 = 0xA3D70A3D70A3D7;
      }

      else
      {
        v372 = v371;
      }

      if (v372)
      {
        if (v372 <= 0xA3D70A3D70A3D7)
        {
          operator new();
        }

        sub_19D2AD81C();
      }

      memcpy((400 * v370), __p, 0x190uLL);
      v423 = (400 * v370 + 400);
      v392 = ((v369 * 0x5C28F5C28F5C28F5) >> 64) - v369;
      v393 = (400 * v370 + 400 * ((v392 >> 8) + (v392 >> 63)));
      memcpy(v393, v427, v369);
      if (v427)
      {
        operator delete(v427);
      }

      v30 = v393;
      v364 = a3;
      if (SHIBYTE(v468) < 0)
      {
        operator delete(v467[0]);
        v391 = v363[1];
        if (!v391)
        {
          do
          {
LABEL_706:
            v394 = v363[2];
            v81 = *v394 == v363;
            v363 = v394;
          }

          while (!v81);
          goto LABEL_641;
        }
      }

      else
      {
        v391 = v363[1];
        if (!v391)
        {
          goto LABEL_706;
        }
      }

      do
      {
        v394 = v391;
        v391 = *v391;
      }

      while (v391);
LABEL_641:
      v363 = v394;
    }

    while (v394 != &v486);
  }

  v428 = v30;
  sub_19D2B83D8(__p[0].i64);
  std::ostream::write();
  std::ostream::write();
  if (v45 != *&v431[4])
  {
    v395 = v45;
    do
    {
      v396 = *v395;
      v397 = *(v395 + 8);
      v398 = *(v395 + 12);
      *__dst = 0;
      if (v398)
      {
        v467[0] = v396;
        operator new[]();
      }

      std::ostream::write();
      if (*__dst)
      {
        operator delete[](*__dst);
      }

      if (v397 <= 0)
      {
        v399 = -(-v397 & 3);
      }

      else
      {
        v399 = v397 & 3;
      }

      if (v399)
      {
        LOBYTE(v449[0]) = 0;
        v400 = 9 - v399;
        while (--v400 >= 5)
        {
          std::ostream::write();
        }

        LOBYTE(v467[0]) = 1;
        LOBYTE(v472[0]) = 2;
        LOBYTE(v470) = 2;
        v491 = 8;
        std::ostream::write();
        std::ostream::write();
        std::ostream::write();
        std::ostream::write();
      }

      v395 += 24;
    }

    while (v395 != *&v431[4]);
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear((__p + *(__p[0].i64[0] - 24)), *(__p[2].i32 + *(__p[0].i64[0] - 24)) | 4);
  }

  __p[0].i64[0] = *MEMORY[0x1E69E54D0];
  *(__p[0].i64 + *(__p[0].i64[0] - 24)) = *(MEMORY[0x1E69E54D0] + 24);
  MEMORY[0x19EAFA1F0](&__p[0].u64[1]);
  std::ostream::~ostream();
  MEMORY[0x19EAFA410](&v494);
  v401 = v475;
  if (v475)
  {
    do
    {
      v407 = *v401;
      if (*(v401 + 39) < 0)
      {
        v408 = v401;
        operator delete(v401[2]);
        v401 = v408;
      }

      operator delete(v401);
      v401 = v407;
    }

    while (v407);
  }

  v402 = v474[0];
  v474[0] = 0;
  if (v402)
  {
    operator delete(v402);
  }

  v403 = v477;
  if (v477)
  {
    v404 = v478;
    v405 = v477;
    if (v478 != v477)
    {
      v406 = v478;
      do
      {
        v410 = *(v406 - 3);
        v406 -= 24;
        v409 = v410;
        if (v410)
        {
          *(v404 - 2) = v409;
          operator delete(v409);
        }

        v404 = v406;
      }

      while (v406 != v403);
      v405 = v477;
    }

    v478 = v403;
    operator delete(v405);
  }

  if (v45)
  {
    operator delete(v45);
  }

  if (v428)
  {
    operator delete(v428);
  }

  sub_19D2A3E48(&v480, v481);
  v411 = v483;
  if (v483)
  {
    v412 = v484;
    v413 = v483;
    if (v484 != v483)
    {
      do
      {
        v414 = *(v412 - 1);
        v412 -= 3;
        if (v414 < 0)
        {
          operator delete(*v412);
        }
      }

      while (v412 != v411);
      v413 = v483;
    }

    v484 = v411;
    operator delete(v413);
  }

  sub_19D2A3E48(&v485, v486);
  sub_19D2A3E48(&v488, v489);
  return 1;
}

void sub_19D3A2CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (SLOBYTE(STACK[0x457]) < 0)
  {
    operator delete(STACK[0x440]);
  }

  v50 = STACK[0x470];
  if (STACK[0x470])
  {
    do
    {
      v55 = *v50;
      if (*(v50 + 39) < 0)
      {
        v56 = v50;
        operator delete(v50[2]);
        v50 = v56;
      }

      operator delete(v50);
      v50 = v55;
    }

    while (v55);
  }

  v51 = STACK[0x460];
  STACK[0x460] = 0;
  if (v51)
  {
    operator delete(v51);
  }

  if (STACK[0x490])
  {
    sub_19D45504C();
  }

  if (a46)
  {
    operator delete(a46);
  }

  if (a34)
  {
    operator delete(a34);
  }

  sub_19D2A3E48(&STACK[0x4A8], STACK[0x4B0]);
  v52 = STACK[0x4C0];
  if (STACK[0x4C0])
  {
    v53 = STACK[0x4C8];
    v54 = STACK[0x4C0];
    if (STACK[0x4C8] != v52)
    {
      do
      {
        v57 = *(v53 - 1);
        v53 -= 3;
        if (v57 < 0)
        {
          operator delete(*v53);
        }
      }

      while (v53 != v52);
      v54 = STACK[0x4C0];
    }

    STACK[0x4C8] = v52;
    operator delete(v54);
  }

  sub_19D2A3E48(&STACK[0x4D8], STACK[0x4E0]);
  sub_19D2A3E48(&STACK[0x4F0], STACK[0x4F8]);
  _Unwind_Resume(a1);
}

void ***sub_19D3A325C(void ***a1)
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
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
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

void sub_19D3A32D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = (v3 + 3);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v7 = v6 + 1;
  if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_19D2AE2B4();
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (2 * v8 > v7)
  {
    v7 = 2 * v8;
  }

  if (v8 >= 0x555555555555555)
  {
    v9 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (v9 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v10 = 24 * v6;
  *v10 = *a2;
  *(v10 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v5 = 24 * v6 + 24;
  v11 = *a1;
  v12 = *(a1 + 8) - *a1;
  v13 = v10 - v12;
  memcpy((v10 - v12), *a1, v12);
  *a1 = v13;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v11)
  {
    goto LABEL_3;
  }

  operator delete(v11);
  *(a1 + 8) = v5;
}

void sub_19D3A3434(uint64_t a1, uint64_t a2, __int128 **a3, uint64_t a4, const void **a5)
{
  v5 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    v7 = (a4 + 8);
    while (*(v5 + 23) < 0)
    {
      sub_19D2AD6B8(__p, *v5, *(v5 + 1));
      v108 = *(v5 + 6);
      v9 = *v7;
      v10 = HIBYTE(v107);
      LODWORD(v11) = SHIBYTE(v107);
      if (*v7)
      {
        goto LABEL_9;
      }

LABEL_3:
      if ((v11 & 0x80) != 0)
      {
        operator delete(__p[0]);
        v5 += 2;
        if (v5 == v6)
        {
          goto LABEL_69;
        }
      }

      else
      {
        v5 += 2;
        if (v5 == v6)
        {
          goto LABEL_69;
        }
      }
    }

    v8 = *v5;
    v107 = *(v5 + 2);
    *__p = v8;
    v108 = *(v5 + 6);
    v9 = *v7;
    v10 = HIBYTE(v107);
    LODWORD(v11) = SHIBYTE(v107);
    if (!*v7)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v11 >= 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = __p[1];
    }

    if (v11 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v14 = v7;
    do
    {
      v15 = *(v9 + 55);
      if (v15 >= 0)
      {
        v16 = *(v9 + 55);
      }

      else
      {
        v16 = *(v9 + 40);
      }

      if (v15 >= 0)
      {
        v17 = (v9 + 32);
      }

      else
      {
        v17 = *(v9 + 32);
      }

      if (v12 >= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v12;
      }

      v19 = memcmp(v17, v13, v18);
      v20 = v16 < v12;
      if (v19)
      {
        v20 = v19 < 0;
      }

      v21 = !v20;
      if (v20)
      {
        v22 = 8;
      }

      else
      {
        v22 = 0;
      }

      if (v21)
      {
        v14 = v9;
      }

      v9 = *(v9 + v22);
    }

    while (v9);
    if (v14 == v7)
    {
      goto LABEL_3;
    }

    v25 = v14[4];
    v24 = v14 + 4;
    v23 = v25;
    v26 = *(v24 + 23);
    if (v26 >= 0)
    {
      v27 = *(v24 + 23);
    }

    else
    {
      v27 = v24[1];
    }

    if (v26 >= 0)
    {
      v28 = v24;
    }

    else
    {
      v28 = v23;
    }

    if (v27 >= v12)
    {
      v29 = v12;
    }

    else
    {
      v29 = v27;
    }

    v30 = memcmp(v13, v28, v29);
    v32 = v12 >= v27;
    if (v30)
    {
      v32 = v30 >= 0;
    }

    if (!v32)
    {
      goto LABEL_3;
    }

    v33 = *a2;
    if (*a2 > 16)
    {
      switch(v33)
      {
        case 17:
          v31.i64[0] = *(a2 + 128);
          v31.i32[2] = *(a2 + 136);
          v102 = v31;
          v34 = sub_19D3B048C(a1, __p);
          v40.i64[0] = 0x100000001;
          v40.i64[1] = 0x100000001;
          v36 = vmaxq_s32(v102, v40);
          v35 = v34 + 8;
          goto LABEL_60;
        case 22:
          v31.i64[0] = *(a2 + 128);
          v31.i32[2] = *(a2 + 136);
          v103 = v31;
          v41 = *(a2 + 140);
          v34 = sub_19D3B048C(a1, __p);
          if (v41 <= 1)
          {
            v42 = 1;
          }

          else
          {
            v42 = v41;
          }

          v43.i64[0] = 0x100000001;
          v43.i64[1] = 0x100000001;
          v44 = vmaxq_s32(v103, v43);
          *(v34 + 16) = v44.i32[2];
          v34[7] = v44.i64[0];
          *(v34 + 17) = 1;
          *(v34 + 18) = v42;
          *(v34 + 19) = -1;
          v34[10] = 0;
          v34[11] = 0;
          v11 = v34 + 12;
          v39 = v34[12];
          if (!v39)
          {
            goto LABEL_63;
          }

          goto LABEL_62;
        case 23:
LABEL_57:
          v34 = sub_19D3B048C(a1, __p);
          *&v38 = 0x100000001;
          *(&v38 + 1) = 0x100000001;
          *(v34 + 7) = v38;
          v34[9] = 0xFFFFFFFF00000001;
          v34[10] = 0;
          v34[11] = 0;
          v11 = v34 + 12;
          v39 = v34[12];
          if (!v39)
          {
            goto LABEL_63;
          }

          goto LABEL_62;
      }
    }

    else
    {
      if ((v33 - 11) < 2)
      {
        v31.i64[0] = *(a2 + 128);
        v31.i32[2] = *(a2 + 136);
        v101 = v31;
        v34 = sub_19D3B048C(a1, __p);
        v35 = v34 + 8;
        v36 = v101;
LABEL_60:
        *v35 = v36.i32[2];
        v34[7] = v36.i64[0];
LABEL_61:
        *(v34 + 19) = -1;
        *(v34 + 68) = 0x100000001;
        v34[10] = 0;
        v34[11] = 0;
        v11 = v34 + 12;
        v39 = v34[12];
        if (!v39)
        {
LABEL_63:
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
          *(sub_19D3B048C(a1, __p) + 19) = 5;
          LOBYTE(v11) = HIBYTE(v107);
          goto LABEL_3;
        }

LABEL_62:
        v34[13] = v39;
        operator delete(v39);
        *v11 = 0;
        v11[1] = 0;
        v11[2] = 0;
        goto LABEL_63;
      }

      if (v33 == 4)
      {
        goto LABEL_57;
      }
    }

    v37 = *(a2 + 128);
    v34 = sub_19D3B048C(a1, __p);
    v34[7] = 0x100000001;
    *(v34 + 16) = v37;
    goto LABEL_61;
  }

LABEL_69:
  v45 = *a2;
  if (*a2 == 5)
  {
    v46 = *(a2 + 256);
    if (*(a5 + 23) >= 0)
    {
      v47 = *(a5 + 23);
    }

    else
    {
      v47 = a5[1];
    }

    if (v47 + 5 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_222;
    }

    if (v47 + 5 >= 0x17)
    {
      operator new();
    }

    __p[1] = 0;
    v107 = 0;
    __p[0] = 0;
    HIBYTE(v107) = v47 + 5;
    if (v47)
    {
      if (*(a5 + 23) >= 0)
      {
        v48 = a5;
      }

      else
      {
        v48 = *a5;
      }

      memmove(__p, v48, v47);
    }

    strcpy(__p + v47, "_h_in");
    v109 = __p;
    v49 = sub_19D3B06CC(a1, __p);
    v49[7] = 0x100000001;
    *(v49 + 16) = v46;
    *(v49 + 19) = -1;
    *(v49 + 68) = 0x100000001;
    *(v49 + 5) = 0uLL;
    v51 = v49 + 12;
    v50 = v49[12];
    if (v50)
    {
      v49[13] = v50;
      operator delete(v50);
      *v51 = 0;
      v51[1] = 0;
      v51[2] = 0;
    }

    *v51 = 0;
    v51[1] = 0;
    v51[2] = 0;
    if (SHIBYTE(v107) < 0)
    {
      operator delete(__p[0]);
    }

    v52 = *(a2 + 256);
    v53 = *(a5 + 23) >= 0 ? *(a5 + 23) : a5[1];
    if (v53 + 5 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_222:
      sub_19D2AD774();
    }

    if (v53 + 5 >= 0x17)
    {
      operator new();
    }

    __p[1] = 0;
    v107 = 0;
    __p[0] = 0;
    HIBYTE(v107) = v53 + 5;
    if (v53)
    {
      if (*(a5 + 23) >= 0)
      {
        v54 = a5;
      }

      else
      {
        v54 = *a5;
      }

      memmove(__p, v54, v53);
    }

    strcpy(__p + v53, "_c_in");
    v109 = __p;
    v55 = sub_19D3B06CC(a1, __p);
    v55[7] = 0x100000001;
    *(v55 + 16) = v52;
    *(v55 + 19) = -1;
    *(v55 + 68) = 0x100000001;
    *(v55 + 5) = 0uLL;
    v57 = v55 + 12;
    v56 = v55[12];
    if (v56)
    {
      v55[13] = v56;
      operator delete(v56);
      *v57 = 0;
      v57[1] = 0;
      v57[2] = 0;
    }

    *v57 = 0;
    v57[1] = 0;
    v57[2] = 0;
    if (SHIBYTE(v107) < 0)
    {
      operator delete(__p[0]);
    }

    v45 = *a2;
  }

  if (v45 == 6)
  {
    if (*(a5 + 23) >= 0)
    {
      v58 = *(a5 + 23);
    }

    else
    {
      v58 = a5[1];
    }

    if (v58 + 5 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_221;
    }

    v59 = *(a2 + 256);
    if (v58 + 5 > 0x16)
    {
      operator new();
    }

    __p[1] = 0;
    v107 = 0;
    __p[0] = 0;
    HIBYTE(v107) = v58 + 5;
    if (v58)
    {
      if (*(a5 + 23) >= 0)
      {
        v60 = a5;
      }

      else
      {
        v60 = *a5;
      }

      memmove(__p, v60, v58);
    }

    strcpy(__p + v58, "_h_in");
    v61 = sub_19D3B06CC(a1, __p);
    v61[7] = 0x100000001;
    *(v61 + 16) = v59;
    *(v61 + 19) = -1;
    *(v61 + 68) = 0x100000001;
    v61[10] = 0;
    v61[11] = 0;
    v63 = v61 + 12;
    v62 = v61[12];
    if (v62)
    {
      v61[13] = v62;
      operator delete(v62);
      *v63 = 0;
      v63[1] = 0;
      v63[2] = 0;
    }

    *v63 = 0;
    v63[1] = 0;
    v63[2] = 0;
    if (SHIBYTE(v107) < 0)
    {
      operator delete(__p[0]);
    }

    v64 = *(a5 + 23) >= 0 ? *(a5 + 23) : a5[1];
    if (v64 + 5 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_221;
    }

    v65 = *(a2 + 256);
    if (v64 + 5 > 0x16)
    {
      operator new();
    }

    __p[1] = 0;
    v107 = 0;
    __p[0] = 0;
    HIBYTE(v107) = v64 + 5;
    if (v64)
    {
      if (*(a5 + 23) >= 0)
      {
        v66 = a5;
      }

      else
      {
        v66 = *a5;
      }

      memmove(__p, v66, v64);
    }

    strcpy(__p + v64, "_c_in");
    v67 = sub_19D3B06CC(a1, __p);
    v67[7] = 0x100000001;
    *(v67 + 16) = v65;
    *(v67 + 19) = -1;
    *(v67 + 68) = 0x100000001;
    v67[10] = 0;
    v67[11] = 0;
    v69 = v67 + 12;
    v68 = v67[12];
    if (v68)
    {
      v67[13] = v68;
      operator delete(v68);
      *v69 = 0;
      v69[1] = 0;
      v69[2] = 0;
    }

    *v69 = 0;
    v69[1] = 0;
    v69[2] = 0;
    if (SHIBYTE(v107) < 0)
    {
      operator delete(__p[0]);
    }

    v70 = *(a5 + 23) >= 0 ? *(a5 + 23) : a5[1];
    if (v70 + 7 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_221;
    }

    v71 = *(a2 + 256);
    if (v70 + 7 > 0x16)
    {
      operator new();
    }

    __p[1] = 0;
    v107 = 0;
    __p[0] = 0;
    HIBYTE(v107) = v70 + 7;
    if (v70)
    {
      if (*(a5 + 23) >= 0)
      {
        v72 = a5;
      }

      else
      {
        v72 = *a5;
      }

      memmove(__p, v72, v70);
    }

    strcpy(__p + v70, "_r_h_in");
    v73 = sub_19D3B06CC(a1, __p);
    v73[7] = 0x100000001;
    *(v73 + 16) = v71;
    *(v73 + 19) = -1;
    *(v73 + 68) = 0x100000001;
    v73[10] = 0;
    v73[11] = 0;
    v75 = v73 + 12;
    v74 = v73[12];
    if (v74)
    {
      v73[13] = v74;
      operator delete(v74);
      *v75 = 0;
      v75[1] = 0;
      v75[2] = 0;
    }

    *v75 = 0;
    v75[1] = 0;
    v75[2] = 0;
    if (SHIBYTE(v107) < 0)
    {
      operator delete(__p[0]);
    }

    v76 = *(a5 + 23) >= 0 ? *(a5 + 23) : a5[1];
    if (v76 + 7 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_221:
      sub_19D2AD774();
    }

    v77 = *(a2 + 256);
    if (v76 + 7 > 0x16)
    {
      operator new();
    }

    __p[1] = 0;
    v107 = 0;
    __p[0] = 0;
    HIBYTE(v107) = v76 + 7;
    if (v76)
    {
      if (*(a5 + 23) >= 0)
      {
        v78 = a5;
      }

      else
      {
        v78 = *a5;
      }

      memmove(__p, v78, v76);
    }

    strcpy(__p + v76, "_r_c_in");
    v79 = sub_19D3B06CC(a1, __p);
    v79[7] = 0x100000001;
    *(v79 + 16) = v77;
    *(v79 + 19) = -1;
    *(v79 + 68) = 0x100000001;
    v79[10] = 0;
    v79[11] = 0;
    v81 = v79 + 12;
    v80 = v79[12];
    if (v80)
    {
      v79[13] = v80;
      operator delete(v80);
      *v81 = 0;
      v81[1] = 0;
      v81[2] = 0;
    }

    *v81 = 0;
    v81[1] = 0;
    v81[2] = 0;
    if (SHIBYTE(v107) < 0)
    {
      operator delete(__p[0]);
    }

    v45 = *a2;
  }

  if (v45 == 20)
  {
    v82 = *(a2 + 320);
    v83 = *(a2 + 324);
    if (*(a5 + 23) >= 0)
    {
      v84 = *(a5 + 23);
    }

    else
    {
      v84 = a5[1];
    }

    if (v84 + 7 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v84 + 7 >= 0x17)
      {
        operator new();
      }

      __p[1] = 0;
      v107 = 0;
      __p[0] = 0;
      HIBYTE(v107) = v84 + 7;
      if (v84)
      {
        if (*(a5 + 23) >= 0)
        {
          v85 = a5;
        }

        else
        {
          v85 = *a5;
        }

        memmove(__p, v85, v84);
      }

      strcpy(__p + v84, "_k_s_in");
      v109 = __p;
      v86 = sub_19D3B06CC(a1, __p);
      *(v86 + 14) = v82;
      *(v86 + 15) = 0;
      *(v86 + 16) = v83;
      *(v86 + 19) = -1;
      *(v86 + 68) = 0x100000001;
      *(v86 + 5) = 0uLL;
      v88 = v86 + 12;
      v87 = v86[12];
      if (v87)
      {
        v86[13] = v87;
        operator delete(v87);
        *v88 = 0;
        v88[1] = 0;
        v88[2] = 0;
      }

      *v88 = 0;
      v88[1] = 0;
      v88[2] = 0;
      if (SHIBYTE(v107) < 0)
      {
        operator delete(__p[0]);
      }

      if (*(a5 + 23) >= 0)
      {
        v89 = *(a5 + 23);
      }

      else
      {
        v89 = a5[1];
      }

      if (v89 + 7 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_224;
      }

      if (v89 + 7 >= 0x17)
      {
        operator new();
      }

      __p[1] = 0;
      v107 = 0;
      __p[0] = 0;
      HIBYTE(v107) = v89 + 7;
      if (v89)
      {
        if (*(a5 + 23) >= 0)
        {
          v90 = a5;
        }

        else
        {
          v90 = *a5;
        }

        memmove(__p, v90, v89);
      }

      strcpy(__p + v89, "_k_s_in");
      *(sub_19D3B06CC(a1, __p) + 19) = 5;
      if (SHIBYTE(v107) < 0)
      {
        operator delete(__p[0]);
      }

      v91 = *(a2 + 320);
      v92 = *(a2 + 324);
      if (*(a5 + 23) >= 0)
      {
        v93 = *(a5 + 23);
      }

      else
      {
        v93 = a5[1];
      }

      if (v93 + 7 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v93 + 7 >= 0x17)
        {
          operator new();
        }

        __p[1] = 0;
        v107 = 0;
        __p[0] = 0;
        HIBYTE(v107) = v93 + 7;
        if (v93)
        {
          if (*(a5 + 23) >= 0)
          {
            v94 = a5;
          }

          else
          {
            v94 = *a5;
          }

          memmove(__p, v94, v93);
        }

        strcpy(__p + v93, "_v_s_in");
        v109 = __p;
        v95 = sub_19D3B06CC(a1, __p);
        *(v95 + 14) = v91;
        *(v95 + 15) = 0;
        *(v95 + 16) = v92;
        *(v95 + 19) = -1;
        *(v95 + 68) = 0x100000001;
        *(v95 + 5) = 0uLL;
        v97 = v95 + 12;
        v96 = v95[12];
        if (v96)
        {
          v95[13] = v96;
          operator delete(v96);
          *v97 = 0;
          v97[1] = 0;
          v97[2] = 0;
        }

        *v97 = 0;
        v97[1] = 0;
        v97[2] = 0;
        if (SHIBYTE(v107) < 0)
        {
          operator delete(__p[0]);
        }

        if (*(a5 + 23) >= 0)
        {
          v98 = *(a5 + 23);
        }

        else
        {
          v98 = a5[1];
        }

        if (v98 + 7 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (v98 + 7 >= 0x17)
          {
            operator new();
          }

          __p[1] = 0;
          v107 = 0;
          __p[0] = 0;
          HIBYTE(v107) = v98 + 7;
          if (v98)
          {
            if (*(a5 + 23) >= 0)
            {
              v99 = a5;
            }

            else
            {
              v99 = *a5;
            }

            memmove(__p, v99, v98);
          }

          strcpy(__p + v98, "_v_s_in");
          *(sub_19D3B06CC(a1, __p) + 19) = 5;
          if (SHIBYTE(v107) < 0)
          {
            operator delete(__p[0]);
          }

          return;
        }

LABEL_224:
        sub_19D2AD774();
      }
    }

    sub_19D2AD774();
  }
}

void sub_19D3A4428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3A4478(__int128 **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v6 = a6;
  v104 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  *v93 = 0u;
  *v94 = 0u;
  v95 = 1065353216;
  v7 = *a1;
  v82 = a1[1];
  if (*a1 != v82)
  {
    v86 = (a4 + 8);
    while (1)
    {
      if (*(v7 + 23) < 0)
      {
        sub_19D2AD6B8(__p, *v7, *(v7 + 1));
      }

      else
      {
        v9 = *v7;
        v97 = *(v7 + 2);
        *__p = v9;
      }

      v10 = *(v7 + 6);
      LODWORD(v98[0]) = *(v7 + 6);
      if (v93[1])
      {
        v11 = vcnt_s8(v93[1]);
        v11.i16[0] = vaddlv_u8(v11);
        if (v11.u32[0] > 1uLL)
        {
          v12 = v10;
          if (v93[1] <= v10)
          {
            v12 = v10 % LODWORD(v93[1]);
          }
        }

        else
        {
          v12 = (LODWORD(v93[1]) - 1) & v10;
        }

        v13 = *(v93[0] + v12);
        if (v13)
        {
          v14 = *v13;
          if (v14)
          {
            if (v11.u32[0] < 2uLL)
            {
              while (1)
              {
                v16 = v14[1];
                if (v16 == v10)
                {
                  if (*(v14 + 4) == v10)
                  {
                    goto LABEL_5;
                  }
                }

                else if ((v16 & (v93[1] - 1)) != v12)
                {
                  goto LABEL_32;
                }

                v14 = *v14;
                if (!v14)
                {
                  goto LABEL_32;
                }
              }
            }

            do
            {
              v15 = v14[1];
              if (v15 == v10)
              {
                if (*(v14 + 4) == v10)
                {
                  goto LABEL_5;
                }
              }

              else
              {
                if (v15 >= v93[1])
                {
                  v15 %= v93[1];
                }

                if (v15 != v12)
                {
                  break;
                }
              }

              v14 = *v14;
            }

            while (v14);
          }
        }
      }

LABEL_32:
      sub_19D3B0874(v93, v98);
      v17 = *v86;
      if (a5)
      {
        v18 = HIBYTE(v97);
        v19 = __p[1];
        if (!v17)
        {
          goto LABEL_117;
        }

        v20 = __p[0];
        v21 = v97 >= 0 ? HIBYTE(v97) : __p[1];
        v22 = v97 >= 0 ? __p : __p[0];
        v23 = v86;
        do
        {
          v24 = *(v17 + 55);
          if (v24 >= 0)
          {
            v25 = *(v17 + 55);
          }

          else
          {
            v25 = *(v17 + 40);
          }

          if (v24 >= 0)
          {
            v26 = (v17 + 32);
          }

          else
          {
            v26 = *(v17 + 32);
          }

          if (v21 >= v25)
          {
            v27 = v25;
          }

          else
          {
            v27 = v21;
          }

          v28 = memcmp(v26, v22, v27);
          v29 = v25 < v21;
          if (v28)
          {
            v29 = v28 < 0;
          }

          v30 = !v29;
          if (v29)
          {
            v31 = 8;
          }

          else
          {
            v31 = 0;
          }

          if (v30)
          {
            v23 = v17;
          }

          v17 = *(v17 + v31);
        }

        while (v17);
        if (v23 == v86)
        {
          goto LABEL_117;
        }

        v34 = v23[4];
        v33 = v23 + 4;
        v32 = v34;
        v35 = *(v33 + 23);
        if (v35 >= 0)
        {
          v36 = *(v33 + 23);
        }

        else
        {
          v36 = v33[1];
        }

        if (v35 >= 0)
        {
          v37 = v33;
        }

        else
        {
          v37 = v32;
        }

        if (v36 >= v21)
        {
          v38 = v21;
        }

        else
        {
          v38 = v36;
        }

        v39 = memcmp(v22, v37, v38);
        v40 = v21 >= v36;
        if (v39)
        {
          v40 = v39 >= 0;
        }

        if (!v40)
        {
LABEL_117:
          if ((v18 & 0x80u) == 0)
          {
            v19 = v18;
          }

          if (v19 + 4 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_19D2AD774();
          }

          if (v19 + 4 >= 0x17)
          {
            operator new();
          }

          v92 = 0uLL;
          v91 = 0;
          HIBYTE(v92) = v19 + 4;
          v6 = a6;
          if (v19)
          {
            if (v97 >= 0)
            {
              v66 = __p;
            }

            else
            {
              v66 = __p[0];
            }

            memmove(&v91, v66, v19);
          }

LABEL_139:
          strcpy(&v91 + v19, "_out");
          sub_19D37D5A4(v6, &v91);
          if (SHIBYTE(v92) < 0)
          {
            operator delete(v91);
          }

          goto LABEL_5;
        }

        v6 = a6;
        v41 = a6[1];
        if (v41 < a6[2])
        {
          if ((v18 & 0x80) == 0)
          {
            goto LABEL_116;
          }

          sub_19D2AD6B8(a6[1], v20, v19);
          goto LABEL_143;
        }
      }

      else
      {
        if (!v17)
        {
          goto LABEL_122;
        }

        v42 = SHIBYTE(v97);
        v43 = __p[0];
        v44 = __p[1];
        v45 = v97 >= 0 ? HIBYTE(v97) : __p[1];
        v46 = v97 >= 0 ? __p : __p[0];
        v47 = v86;
        do
        {
          v48 = *(v17 + 55);
          if (v48 >= 0)
          {
            v49 = *(v17 + 55);
          }

          else
          {
            v49 = *(v17 + 40);
          }

          if (v48 >= 0)
          {
            v50 = (v17 + 32);
          }

          else
          {
            v50 = *(v17 + 32);
          }

          if (v45 >= v49)
          {
            v51 = v49;
          }

          else
          {
            v51 = v45;
          }

          v52 = memcmp(v50, v46, v51);
          v53 = v49 < v45;
          if (v52)
          {
            v53 = v52 < 0;
          }

          v54 = !v53;
          if (v53)
          {
            v55 = 8;
          }

          else
          {
            v55 = 0;
          }

          if (v54)
          {
            v47 = v17;
          }

          v17 = *(v17 + v55);
        }

        while (v17);
        if (v47 == v86)
        {
          goto LABEL_122;
        }

        v58 = v47[4];
        v57 = v47 + 4;
        v56 = v58;
        v59 = *(v57 + 23);
        if (v59 >= 0)
        {
          v60 = *(v57 + 23);
        }

        else
        {
          v60 = v57[1];
        }

        if (v59 >= 0)
        {
          v61 = v57;
        }

        else
        {
          v61 = v56;
        }

        if (v60 >= v45)
        {
          v62 = v45;
        }

        else
        {
          v62 = v60;
        }

        v63 = memcmp(v46, v61, v62);
        v64 = v45 >= v60;
        if (v63)
        {
          v64 = v63 >= 0;
        }

        if (!v64)
        {
LABEL_122:
          if (*(a2 + 23) >= 0)
          {
            v19 = *(a2 + 23);
          }

          else
          {
            v19 = a2[1];
          }

          if (v19 + 4 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_19D2AD774();
          }

          if (v19 + 4 >= 0x17)
          {
            operator new();
          }

          v92 = 0uLL;
          v91 = 0;
          HIBYTE(v92) = v19 + 4;
          v6 = a6;
          if (v19)
          {
            if (*(a2 + 23) >= 0)
            {
              v67 = a2;
            }

            else
            {
              v67 = *a2;
            }

            memmove(&v91, v67, v19);
          }

          goto LABEL_139;
        }

        v6 = a6;
        v41 = a6[1];
        if (v41 < a6[2])
        {
          if (v42 < 0)
          {
            sub_19D2AD6B8(a6[1], v43, v44);
          }

          else
          {
LABEL_116:
            v65 = *__p;
            *(v41 + 16) = v97;
            *v41 = v65;
          }

LABEL_143:
          v8 = v41 + 24;
          v6 = a6;
          goto LABEL_4;
        }
      }

      v8 = sub_19D2A48F8(a6, __p);
LABEL_4:
      *(v6 + 8) = v8;
LABEL_5:
      if (SHIBYTE(v97) < 0)
      {
        operator delete(__p[0]);
        v7 += 2;
        if (v7 == v82)
        {
          break;
        }
      }

      else
      {
        v7 += 2;
        if (v7 == v82)
        {
          break;
        }
      }
    }
  }

  v91 = 0;
  v92 = 0uLL;
  if (a3 == 5)
  {
    if (a5)
    {
      HIBYTE(v97) = 5;
      strcpy(__p, "_h_in");
      v99 = 5;
      strcpy(v98, "_c_in");
    }

    else
    {
      HIBYTE(v97) = 6;
      strcpy(__p, "_h_out");
      v99 = 6;
      strcpy(v98, "_c_out");
    }

    goto LABEL_149;
  }

  if (a3 == 6)
  {
    if (a5)
    {
      HIBYTE(v97) = 5;
      strcpy(__p, "_h_in");
      v99 = 5;
      strcpy(v98, "_c_in");
      v101 = 7;
      strcpy(v100, "_r_h_in");
      v103 = 7;
      strcpy(v102, "_r_c_in");
    }

    else
    {
      HIBYTE(v97) = 6;
      strcpy(__p, "_h_out");
      v99 = 6;
      strcpy(v98, "_c_out");
      v101 = 8;
      strcpy(v100, "_r_h_out");
      v103 = 8;
      strcpy(v102, "_r_c_out");
    }

    sub_19D3781C8(v90, __p, 4uLL);
    v68 = v90[0];
    v87 = v90[1];
    v92 = *&v90[1];
    v91 = v90[0];
    memset(v90, 0, sizeof(v90));
    if (v103 < 0)
    {
      operator delete(v102[0]);
      if ((v101 & 0x80000000) == 0)
      {
LABEL_157:
        if (v99 < 0)
        {
          goto LABEL_164;
        }

        goto LABEL_158;
      }
    }

    else if ((v101 & 0x80000000) == 0)
    {
      goto LABEL_157;
    }

    operator delete(v100[0]);
    if (v99 < 0)
    {
      goto LABEL_164;
    }

LABEL_158:
    if (SHIBYTE(v97) < 0)
    {
      goto LABEL_165;
    }

LABEL_159:
    v69 = v87;
    if (v68 != v87)
    {
LABEL_166:
      v70 = v68;
      while (1)
      {
        if (*(v70 + 23) < 0)
        {
          sub_19D2AD6B8(v90, *v70, v70[1]);
        }

        else
        {
          v71 = *v70;
          v90[2] = v70[2];
          *v90 = v71;
        }

        if (*(a2 + 23) >= 0)
        {
          v72 = *(a2 + 23);
        }

        else
        {
          v72 = a2[1];
        }

        if (SHIBYTE(v90[2]) >= 0)
        {
          v73 = HIBYTE(v90[2]);
        }

        else
        {
          v73 = v90[1];
        }

        if (v73 + v72 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_19D2AD774();
        }

        if (v73 + v72 > 0x16)
        {
          operator new();
        }

        v88[1] = 0;
        v89 = 0;
        v88[0] = 0;
        HIBYTE(v89) = v73 + v72;
        if (v72)
        {
          if (*(a2 + 23) >= 0)
          {
            v74 = a2;
          }

          else
          {
            v74 = *a2;
          }

          memmove(v88, v74, v72);
        }

        v75 = v88 + v72;
        if (v73)
        {
          if (SHIBYTE(v90[2]) >= 0)
          {
            v76 = v90;
          }

          else
          {
            v76 = v90[0];
          }

          memmove(v75, v76, v73);
        }

        v75[v73] = 0;
        sub_19D37D5A4(v6, v88);
        if (SHIBYTE(v89) < 0)
        {
          operator delete(v88[0]);
          if ((SHIBYTE(v90[2]) & 0x80000000) == 0)
          {
            goto LABEL_168;
          }

LABEL_193:
          operator delete(v90[0]);
          v70 += 3;
          if (v70 == v69)
          {
            goto LABEL_194;
          }
        }

        else
        {
          if (SHIBYTE(v90[2]) < 0)
          {
            goto LABEL_193;
          }

LABEL_168:
          v70 += 3;
          if (v70 == v69)
          {
            goto LABEL_194;
          }
        }
      }
    }

    goto LABEL_194;
  }

  if (a3 != 20)
  {
    goto LABEL_197;
  }

  if (a5)
  {
    HIBYTE(v97) = 7;
    strcpy(__p, "_k_s_in");
    v99 = 7;
    strcpy(v98, "_v_s_in");
  }

  else
  {
    HIBYTE(v97) = 8;
    strcpy(__p, "_k_s_out");
    v99 = 8;
    strcpy(v98, "_v_s_out");
  }

LABEL_149:
  sub_19D3781C8(v90, __p, 2uLL);
  v68 = v90[0];
  v87 = v90[1];
  v92 = *&v90[1];
  v91 = v90[0];
  memset(v90, 0, sizeof(v90));
  if ((v99 & 0x80000000) == 0)
  {
    goto LABEL_158;
  }

LABEL_164:
  operator delete(v98[0]);
  if ((SHIBYTE(v97) & 0x80000000) == 0)
  {
    goto LABEL_159;
  }

LABEL_165:
  operator delete(__p[0]);
  v69 = v87;
  if (v68 != v87)
  {
    goto LABEL_166;
  }

LABEL_194:
  if (v68)
  {
    while (v69 != v68)
    {
      v80 = *(v69 - 1);
      v69 -= 3;
      if (v80 < 0)
      {
        operator delete(*v69);
      }
    }

    operator delete(v68);
  }

LABEL_197:
  v77 = v94[0];
  if (v94[0])
  {
    do
    {
      v78 = *v77;
      operator delete(v77);
      v77 = v78;
    }

    while (v78);
  }

  v79 = v93[0];
  v93[0] = 0;
  if (v79)
  {
    operator delete(v79);
  }
}

void sub_19D3A4F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void ***a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  sub_19D2AD850(&a24);
  sub_19D360EA8(&a27);
  sub_19D2AD850(a13);
  _Unwind_Resume(a1);
}

void sub_19D3A50F0(void *a1@<X0>, void *a2@<X1>, const char *a3@<X2>, void *a4@<X8>)
{
  sub_19D3AF984(&v417, a2 + 15);
  v414 = 0;
  v415 = 0;
  v416 = 0;
  a4[2] = 0;
  a4[1] = 0;
  v267 = a4;
  v268 = a2;
  *a4 = a4 + 1;
  v413[0] = 0;
  v413[1] = 0;
  v412 = v413;
  v6 = a2[1];
  v7 = (a2 + 2);
  if (v6 != v7)
  {
    do
    {
      sub_19D2C3E1C(&v412, v413, v6 + 4);
      v15 = v6[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v6[2];
          _ZF = *v16 == v6;
          v6 = v16;
        }

        while (!_ZF);
      }

      v6 = v16;
    }

    while (v16 != v7);
  }

  v411[0] = 0;
  v411[1] = 0;
  v410 = v411;
  v8 = *(v268 + 32);
  if (v8 != v268 + 40)
  {
    do
    {
      sub_19D2C3E1C(&v410, v411, (v8 + 32));
      v17 = *(v8 + 8);
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = *(v8 + 16);
          _ZF = *v18 == v8;
          v8 = v18;
        }

        while (!_ZF);
      }

      v8 = v18;
    }

    while (v18 != (v268 + 40));
  }

  v9 = v417;
  v266 = v418;
  v10 = v268;
  if (v417 != v418)
  {
    __asm
    {
      FMOV            V8.2S, #1.0
      FMOV            V3.4S, #1.0
    }

    while (2)
    {
      v270 = v9;
      if (*(v9 + 23) < 0)
      {
        sub_19D2AD6B8(v408, *v9, v9[1]);
      }

      else
      {
        v19 = *v9;
        v409 = v9[2];
        *v408 = v19;
      }

      v407 = 0u;
      v406 = 0u;
      v405 = 0u;
      v404 = 0u;
      v403 = 0u;
      v402 = 0u;
      v401 = 0u;
      v400 = 0u;
      v399 = 0u;
      v398 = 0u;
      v397 = 0u;
      v396 = 0u;
      v395 = 0u;
      v394 = 0u;
      v393 = 0u;
      v392 = 0u;
      v391 = 0u;
      v390 = 0u;
      v389 = 0u;
      v388 = 0u;
      v387 = 0u;
      v386 = 0u;
      v385 = 0u;
      v384 = 0u;
      v383 = 0u;
      v382 = 0u;
      v381 = 0u;
      v380 = 0u;
      v379 = 0u;
      v378 = 0u;
      v377 = 0u;
      *v376 = 0u;
      sub_19D430AF8(v10, v408);
      sub_19D43042C(v10, v408, &v374);
      sub_19D4306F0(v10, v408, &v372);
      v20 = v376[0];
      if (v376[0] == 20)
      {
        v8 &= 0xFFFFFFFFFFFFFF00;
        memset(__p, 0, 24);
        *&__src[0] = __p;
        BYTE8(__src[0]) = 0;
        if (v375 != v374)
        {
          if (((v375 - v374) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_19D2AE2B4();
        }

        sub_19D3B0C30(&v374, 0, 0, 0);
        v21 = *__p;
        if (*__p)
        {
          v22 = *&__p[8];
          v23 = *__p;
          if (*&__p[8] != *__p)
          {
            do
            {
              v24 = *(v22 - 9);
              v22 -= 4;
              if (v24 < 0)
              {
                operator delete(*v22);
              }
            }

            while (v22 != v21);
            v23 = *__p;
          }

          *&__p[8] = v21;
          operator delete(v23);
        }

        v20 = v376[0];
      }

      v370[1] = 0;
      v370[0] = 0;
      v371 = 0;
      v368[1] = 0;
      v368[0] = 0;
      v369 = 0;
      sub_19D3A4478(&v374, v408, v20, &v412, 1, __p);
      v25 = v370[0];
      if (v370[0])
      {
        v26 = v370[1];
        v27 = v370[0];
        if (v370[1] != v370[0])
        {
          do
          {
            v28 = *(v26 - 1);
            v26 -= 3;
            if (v28 < 0)
            {
              operator delete(*v26);
            }
          }

          while (v26 != v25);
          v27 = v370[0];
        }

        v370[1] = v25;
        operator delete(v27);
      }

      *v370 = *__p;
      v371 = *&__p[16];
      sub_19D3A4478(&v372, v408, v376[0], &v410, 0, __p);
      v29 = v368[0];
      if (v368[0])
      {
        v30 = v368[1];
        v31 = v368[0];
        if (v368[1] != v368[0])
        {
          do
          {
            v32 = *(v30 - 1);
            v30 -= 3;
            if (v32 < 0)
            {
              operator delete(*v30);
            }
          }

          while (v30 != v29);
          v31 = v368[0];
        }

        v368[1] = v29;
        operator delete(v31);
      }

      *v368 = *__p;
      v369 = *&__p[16];
      sub_19D3A3434(v267, v376, &v374, &v412, v408);
      switch(v376[0])
      {
        case 0uLL:
          *&__p[4] = v384;
          *__p = v392;
          *&__p[28] = 0;
          *&__p[8] = (WORD4(v383) & 0x100) == 0;
          __p[40] = 0;
          *&__p[52] = -1;
          *&__p[56] = _D8;
          *v323 = 0;
          *&__p[12] = 0;
          *&__p[20] = _D8;
          *&__p[84] = 0;
          *&__p[44] = 0;
          *&__p[32] = 0;
          memset(&__p[100], 0, 24);
          __dst[1] = 0;
          __dst[0] = 0;
          v361 = 0;
          if (*(&v379 + 1) <= 2)
          {
            switch(*(&v379 + 1))
            {
              case 0:
                *&__p[52] = -1;
                goto LABEL_479;
              case 1:
                v199 = 3;
LABEL_444:
                *&__p[52] = v199;
                goto LABEL_479;
              case 2:
                *&__p[52] = 1;
                goto LABEL_479;
            }

LABEL_438:
            if ((*(&v379 + 1) & 0xFFFFFFFFFFFFFFFELL) == 6)
            {
              goto LABEL_479;
            }

            switch(*(&v379 + 1))
            {
              case 0xCLL:
                v199 = 22;
                break;
              case 0xALL:
                v199 = 19;
                break;
              case 8:
                v199 = 7;
                break;
              default:
                goto LABEL_479;
            }

            goto LABEL_444;
          }

          switch(*(&v379 + 1))
          {
            case 3:
              *&__p[52] = 5;
              *&__p[56] = 0x3F3745393F2AAAB0;
              goto LABEL_479;
            case 4:
              sub_19D3B1E08(__src, v368[0], v368[1]);
              v200 = __dst[0];
              if (__dst[0])
              {
                v201 = __dst[1];
                v202 = __dst[0];
                if (__dst[1] != __dst[0])
                {
                  do
                  {
                    v203 = *(v201 - 1);
                    v201 -= 3;
                    if (v203 < 0)
                    {
                      operator delete(*v201);
                    }
                  }

                  while (v201 != v200);
                  v202 = __dst[0];
                }

                __dst[1] = v200;
                operator delete(v202);
              }

              *__dst = __src[0];
              v361 = *&__src[1];
              if (*(v368[0] + 23) >= 0)
              {
                v239 = *(v368[0] + 23);
              }

              else
              {
                v239 = *(v368[0] + 1);
              }

              if (v239 + 15 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_19D2AD774();
              }

              if (v239 + 15 >= 0x17)
              {
                operator new();
              }

              memset(__src, 0, 24);
              BYTE7(__src[1]) = v239 + 15;
              if (v239)
              {
                if (*(v368[0] + 23) >= 0)
                {
                  v240 = v368[0];
                }

                else
                {
                  v240 = *v368[0];
                }

                memmove(__src, v240, v239);
              }

              strcpy(__src + v239, "_before_softmax");
              v214 = v368[0];
              if ((*(v368[0] + 23) & 0x80000000) == 0)
              {
                goto LABEL_478;
              }

              break;
            case 5:
              sub_19D3B1E08(__src, v368[0], v368[1]);
              v126 = __dst[0];
              if (__dst[0])
              {
                v127 = __dst[1];
                v128 = __dst[0];
                if (__dst[1] != __dst[0])
                {
                  do
                  {
                    v129 = *(v127 - 1);
                    v127 -= 3;
                    if (v129 < 0)
                    {
                      operator delete(*v127);
                    }
                  }

                  while (v127 != v126);
                  v128 = __dst[0];
                }

                __dst[1] = v126;
                operator delete(v128);
              }

              *__dst = __src[0];
              v361 = *&__src[1];
              if (*(v368[0] + 23) >= 0)
              {
                v212 = *(v368[0] + 23);
              }

              else
              {
                v212 = *(v368[0] + 1);
              }

              if (v212 + 12 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_19D2AD774();
              }

              if (v212 + 12 >= 0x17)
              {
                operator new();
              }

              memset(__src, 0, 24);
              BYTE7(__src[1]) = v212 + 12;
              if (v212)
              {
                if (*(v368[0] + 23) >= 0)
                {
                  v213 = v368[0];
                }

                else
                {
                  v213 = *v368[0];
                }

                memmove(__src, v213, v212);
              }

              strcpy(__src + v212, "_before_relu");
              v214 = v368[0];
              if ((*(v368[0] + 23) & 0x80000000) == 0)
              {
LABEL_478:
                *v214 = __src[0];
                v214[2] = *&__src[1];
LABEL_479:
                BYTE7(__src[1]) = 13;
                strcpy(__src, "inner_product");
                sub_19D3AF984(&v308, v370);
                sub_19D3AF984(&v306, v368);
                sub_19D3ADD98(a1, &v308, &v306, &v350);
                v215 = v306;
                if (v306)
                {
                  v216 = v307;
                  v217 = v306;
                  if (v307 != v306)
                  {
                    do
                    {
                      v218 = *(v216 - 1);
                      v216 -= 3;
                      if (v218 < 0)
                      {
                        operator delete(*v216);
                      }
                    }

                    while (v216 != v215);
                    v217 = v306;
                  }

                  v307 = v215;
                  operator delete(v217);
                }

                v219 = v308;
                if (v308)
                {
                  v220 = v309;
                  v221 = v308;
                  if (v309 != v308)
                  {
                    do
                    {
                      v222 = *(v220 - 1);
                      v220 -= 3;
                      if (v222 < 0)
                      {
                        operator delete(*v220);
                      }
                    }

                    while (v220 != v219);
                    v221 = v308;
                  }

                  v309 = v219;
                  operator delete(v221);
                }

                if (SBYTE7(__src[1]) < 0)
                {
                  operator delete(*&__src[0]);
                }

                operator new();
              }

              break;
            default:
              goto LABEL_438;
          }

          operator delete(*v214);
          goto LABEL_478;
        case 1uLL:
          *&__p[4] = 0;
          *&__p[12] = 0x3F6666663727C5ACLL;
          *&__p[20] = 0;
          memset(&__p[24], 0, 32);
          *&__p[56] = 1065353216;
          *&__p[60] = 0;
          *&__p[68] = 0x200000000;
          v83 = DWORD2(v384);
          if (SDWORD2(v384) < 1)
          {
            *&__p[40] = 0x100000001;
            v83 = v384;
          }

          else
          {
            *&__p[40] = v384;
          }

          *__p = v83;
          BYTE7(__src[1]) = 9;
          strcpy(__src, "batchnorm");
          sub_19D3AF984(&v312, v370);
          sub_19D3AF984(&v310, v368);
          sub_19D3AD9D8(a1, &v312, &v310, __dst);
          v171 = v310;
          if (v310)
          {
            v172 = v311;
            v173 = v310;
            if (v311 != v310)
            {
              do
              {
                v174 = *(v172 - 1);
                v172 -= 3;
                if (v174 < 0)
                {
                  operator delete(*v172);
                }
              }

              while (v172 != v171);
              v173 = v310;
            }

            v311 = v171;
            operator delete(v173);
          }

          v175 = v312;
          if (v312)
          {
            v176 = v313;
            v177 = v312;
            if (v313 != v312)
            {
              do
              {
                v178 = *(v176 - 1);
                v176 -= 3;
                if (v178 < 0)
                {
                  operator delete(*v176);
                }
              }

              while (v176 != v175);
              v177 = v312;
            }

            v313 = v175;
            operator delete(v177);
          }

          if (SBYTE7(__src[1]) < 0)
          {
            operator delete(*&__src[0]);
          }

          LODWORD(v358[0]) = 4 * *__p;
          LODWORD(v304[0]) = 1;
          LODWORD(v350) = 1;
          LODWORD(v342) = 1;
          sub_19D3B1CEC();
        case 2uLL:
          if (*(&v379 + 1) == 4)
          {
            *&__p[24] = 256;
            *__p = xmmword_19D475D10;
            *&__p[16] = 1;
            BYTE7(__src[1]) = 7;
            strcpy(__src, "softmax");
            sub_19D3AF984(&v297, v370);
            sub_19D3AF984(&v295, v368);
            sub_19D3AE158(a1, &v297, &v295, __dst);
            v71 = v295;
            if (v295)
            {
              v72 = v296;
              v73 = v295;
              if (v296 != v295)
              {
                do
                {
                  v74 = *(v72 - 1);
                  v72 -= 3;
                  if (v74 < 0)
                  {
                    operator delete(*v72);
                  }
                }

                while (v72 != v71);
                v73 = v295;
              }

              v296 = v71;
              operator delete(v73);
            }

            v196 = v297;
            if (v297)
            {
              v197 = v298;
              v137 = v297;
              if (v298 != v297)
              {
                do
                {
                  v198 = *(v197 - 1);
                  v197 -= 3;
                  if (v198 < 0)
                  {
                    operator delete(*v197);
                  }
                }

                while (v197 != v196);
                v137 = v297;
              }

              v298 = v196;
LABEL_429:
              operator delete(v137);
            }
          }

          else
          {
            *__p = 0;
            *&__p[4] = _D8;
            memset(&__p[12], 0, 24);
            switch(*(&v379 + 1))
            {
              case 0xCLL:
                *__p = 22;
                BYTE7(__src[1]) = 10;
                strcpy(__src, "activation");
                sub_19D3AF984(&v285, v370);
                sub_19D3AF984(&v283, v368);
                sub_19D3AE518(a1, &v285, &v283, __dst);
                v208 = v283;
                if (v283)
                {
                  v209 = v284;
                  v210 = v283;
                  if (v284 != v283)
                  {
                    do
                    {
                      v211 = *(v209 - 1);
                      v209 -= 3;
                      if (v211 < 0)
                      {
                        operator delete(*v209);
                      }
                    }

                    while (v209 != v208);
                    v210 = v283;
                  }

                  v284 = v208;
                  operator delete(v210);
                }

                v244 = v285;
                if (v285)
                {
                  v245 = v286;
                  v137 = v285;
                  if (v286 != v285)
                  {
                    do
                    {
                      v246 = *(v245 - 1);
                      v245 -= 3;
                      if (v246 < 0)
                      {
                        operator delete(*v245);
                      }
                    }

                    while (v245 != v244);
                    v137 = v285;
                  }

                  v286 = v244;
                  goto LABEL_429;
                }

                break;
              case 0xALL:
                *__p = 19;
                BYTE7(__src[1]) = 10;
                strcpy(__src, "activation");
                sub_19D3AF984(&v289, v370);
                sub_19D3AF984(&v287, v368);
                sub_19D3AE518(a1, &v289, &v287, __dst);
                v204 = v287;
                if (v287)
                {
                  v205 = v288;
                  v206 = v287;
                  if (v288 != v287)
                  {
                    do
                    {
                      v207 = *(v205 - 1);
                      v205 -= 3;
                      if (v207 < 0)
                      {
                        operator delete(*v205);
                      }
                    }

                    while (v205 != v204);
                    v206 = v287;
                  }

                  v288 = v204;
                  operator delete(v206);
                }

                v241 = v289;
                if (v289)
                {
                  v242 = v290;
                  v137 = v289;
                  if (v290 != v289)
                  {
                    do
                    {
                      v243 = *(v242 - 1);
                      v242 -= 3;
                      if (v243 < 0)
                      {
                        operator delete(*v242);
                      }
                    }

                    while (v242 != v241);
                    v137 = v289;
                  }

                  v290 = v241;
                  goto LABEL_429;
                }

                break;
              case 5:
                BYTE7(__src[1]) = 10;
                strcpy(__src, "activation");
                sub_19D3AF984(&v293, v370);
                sub_19D3AF984(&v291, v368);
                sub_19D3AE518(a1, &v293, &v291, __dst);
                v122 = v291;
                if (v291)
                {
                  v123 = v292;
                  v124 = v291;
                  if (v292 != v291)
                  {
                    do
                    {
                      v125 = *(v123 - 1);
                      v123 -= 3;
                      if (v125 < 0)
                      {
                        operator delete(*v123);
                      }
                    }

                    while (v123 != v122);
                    v124 = v291;
                  }

                  v292 = v122;
                  operator delete(v124);
                }

                v247 = v293;
                if (v293)
                {
                  v248 = v294;
                  v137 = v293;
                  if (v294 != v293)
                  {
                    do
                    {
                      v249 = *(v248 - 1);
                      v248 -= 3;
                      if (v249 < 0)
                      {
                        operator delete(*v248);
                      }
                    }

                    while (v248 != v247);
                    v137 = v293;
                  }

                  v294 = v247;
                  goto LABEL_429;
                }

                break;
              default:
                goto LABEL_498;
            }
          }

LABEL_430:
          if (SBYTE7(__src[1]) < 0)
          {
            v147 = *&__src[0];
LABEL_432:
            operator delete(v147);
          }

LABEL_433:
          v152 = __dst[1];
          if (__dst[1])
          {
LABEL_434:
            if (!atomic_fetch_add(&v152->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v152->__on_zero_shared)(v152);
              std::__shared_weak_count::__release_weak(v152);
            }
          }

LABEL_498:
          v223 = v368[0];
          if (v368[0])
          {
            v224 = v368[1];
            v225 = v368[0];
            if (v368[1] != v368[0])
            {
              do
              {
                v226 = *(v224 - 1);
                v224 -= 3;
                if (v226 < 0)
                {
                  operator delete(*v224);
                }
              }

              while (v224 != v223);
              v225 = v368[0];
            }

            v368[1] = v223;
            operator delete(v225);
          }

          v227 = v370[0];
          if (v370[0])
          {
            v228 = v370[1];
            v229 = v370[0];
            if (v370[1] != v370[0])
            {
              do
              {
                v230 = *(v228 - 1);
                v228 -= 3;
                if (v230 < 0)
                {
                  operator delete(*v228);
                }
              }

              while (v228 != v227);
              v229 = v370[0];
            }

            v370[1] = v227;
            operator delete(v229);
          }

          v231 = v372;
          if (v372)
          {
            v232 = v373;
            v233 = v372;
            if (v373 != v372)
            {
              do
              {
                v234 = *(v232 - 9);
                v232 -= 4;
                if (v234 < 0)
                {
                  operator delete(*v232);
                }
              }

              while (v232 != v231);
              v233 = v372;
            }

            v373 = v231;
            operator delete(v233);
          }

          v235 = v374;
          if (v374)
          {
            v236 = v375;
            v237 = v374;
            if (v375 != v374)
            {
              do
              {
                v238 = *(v236 - 9);
                v236 -= 4;
                if (v238 < 0)
                {
                  operator delete(*v236);
                }
              }

              while (v236 != v235);
              v237 = v374;
            }

            v375 = v235;
            operator delete(v237);
          }

          if (SHIBYTE(v409) < 0)
          {
            operator delete(v408[0]);
          }

          v9 = v270 + 3;
          v10 = v268;
          if (v270 + 3 == v266)
          {
            goto LABEL_579;
          }

          continue;
        case 3uLL:
          LODWORD(__dst[0]) = 2;
          WORD2(__dst[0]) = 0;
          __p[23] = 14;
          strcpy(__p, "general_concat");
          sub_19D3AF984(&v332, v370);
          sub_19D3AF984(&v330, v368);
          sub_19D3AD110(a1, &v332, &v330, __src);
          v84 = v330;
          if (v330)
          {
            v85 = v331;
            v86 = v330;
            if (v331 != v330)
            {
              do
              {
                v87 = *(v85 - 1);
                v85 -= 3;
                if (v87 < 0)
                {
                  operator delete(*v85);
                }
              }

              while (v85 != v84);
              v86 = v330;
            }

            v331 = v84;
            operator delete(v86);
          }

          v148 = v332;
          if (v332)
          {
            v149 = v333;
            v150 = v332;
            if (v333 != v332)
            {
              do
              {
                v151 = *(v149 - 1);
                v149 -= 3;
                if (v151 < 0)
                {
                  operator delete(*v149);
                }
              }

              while (v149 != v148);
              v150 = v332;
            }

            v333 = v148;
            operator delete(v150);
          }

          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          v152 = *(&__src[0] + 1);
          if (!*(&__src[0] + 1))
          {
            goto LABEL_498;
          }

          goto LABEL_434;
        case 4uLL:
        case 0x17uLL:
          v33 = v396;
          v34 = v392;
          __p[40] = 0;
          *&__p[52] = -1;
          *&__p[56] = _D8;
          *v323 = 0;
          *&__p[20] = _D8;
          *&__p[88] = 0;
          *&__p[84] = 0;
          *&__p[44] = 0;
          memset(&__p[100], 0, 24);
          *&__p[4] = v396;
          *__p = v392;
          *&__p[8] = 0;
          *&__p[16] = 0;
          *&__p[36] = 0;
          *&__p[28] = 0x100000000;
          BYTE7(__src[1]) = 13;
          strcpy(__src, "inner_product");
          sub_19D3AF984(&v301, v370);
          sub_19D3AF984(&v299, v368);
          sub_19D3ADD98(a1, &v301, &v299, __dst);
          v35 = v299;
          if (v299)
          {
            v36 = v300;
            v37 = v299;
            if (v300 != v299)
            {
              do
              {
                v38 = *(v36 - 1);
                v36 -= 3;
                if (v38 < 0)
                {
                  operator delete(*v36);
                }
              }

              while (v36 != v35);
              v37 = v299;
            }

            v300 = v35;
            operator delete(v37);
          }

          v96 = v301;
          if (v301)
          {
            v97 = v302;
            v98 = v301;
            if (v302 != v301)
            {
              do
              {
                v99 = *(v97 - 1);
                v97 -= 3;
                if (v99 < 0)
                {
                  operator delete(*v97);
                }
              }

              while (v97 != v96);
              v98 = v301;
            }

            v302 = v96;
            operator delete(v98);
          }

          if (SBYTE7(__src[1]) < 0)
          {
            operator delete(*&__src[0]);
            v100 = v404;
            v101 = v34 * v33;
            memset(__src, 0, 24);
            if (v34 * v33)
            {
LABEL_191:
              if ((v101 & 0x80000000) == 0)
              {
                operator new();
              }

              sub_19D2AE2B4();
            }
          }

          else
          {
            v100 = v404;
            v101 = v34 * v33;
            memset(__src, 0, 24);
            if (v34 * v33)
            {
              goto LABEL_191;
            }
          }

          if (v33 < 1)
          {
LABEL_218:
            v120 = v415;
            if (v415 >= v416)
            {
              v121 = sub_19D3B1F54(&v414, __src);
            }

            else
            {
              *v415 = 0;
              v120[1] = 0;
              v120[2] = 0;
              if (*(&__src[0] + 1) != *&__src[0])
              {
                if (((*(&__src[0] + 1) - *&__src[0]) & 0x8000000000000000) == 0)
                {
                  operator new();
                }

                sub_19D2AE2B4();
              }

              v121 = v120 + 3;
            }

            v415 = v121;
            operator new();
          }

          v102 = 0;
          if (v100 + 4 * v33 * v34)
          {
            _CF = v100 >= 4 * (v33 + v34) - 4;
          }

          else
          {
            _CF = 1;
          }

          v104 = !_CF;
          _ZF = v34 >= 8 && v33 == 1;
          v106 = !_ZF;
          v107 = v106 | v104;
          v108 = (v100 + 16);
          v109 = 4 * v34;
          v110 = 16;
          while (1)
          {
            if (v34 >= 1)
            {
              if (v107)
              {
                v111 = 0;
              }

              else
              {
                v112 = v34 & 0x7FFFFFF8;
                v113 = v110;
                v114 = v108;
                do
                {
                  v115 = *v114;
                  *(v113 - 1) = *(v114 - 1);
                  *v113 = v115;
                  v114 += 2;
                  v113 += 2;
                  v112 -= 8;
                }

                while (v112);
                v111 = v34 & 0x7FFFFFF8;
                if (v111 == v34)
                {
                  goto LABEL_208;
                }
              }

              v116 = (v100 + 4 * v111);
              v117 = (4 * (v102 + v33 * v111));
              v118 = v34 - v111;
              do
              {
                v119 = *v116++;
                *v117 = v119;
                v117 += v33;
                --v118;
              }

              while (v118);
            }

LABEL_208:
            ++v102;
            v108 = (v108 + v109);
            v110 += 4;
            v100 += v109;
            if (v102 == v33)
            {
              goto LABEL_218;
            }
          }

        case 5uLL:
        case 6uLL:
          *&__p[64] = 0;
          *&__p[76] = v392;
          *&__p[8] = _D8;
          *__p = 0;
          *&__p[20] = _D8;
          *&__p[32] = _D8;
          *&__p[16] = 2;
          *&__p[28] = 0;
          *&__p[44] = _D8;
          *&__p[56] = _D8;
          *&__p[40] = 0;
          *&__p[52] = 2;
          *&__p[68] = _D8;
          *&__p[108] = 0x100000000;
          *&__p[104] = 1112014848;
          *v323 = 1065353216;
          *&__p[116] = 1065353216;
          *&v323[4] = 0;
          LOWORD(v326) = 0;
          *&__p[80] = v384;
          *&__p[88] = xmmword_19D475720;
          v325 = 1;
          v324 = 1;
          operator new();
        case 0xBuLL:
          *&__p[64] = _D8;
          *&__p[72] = 1;
          memset(&__p[74], 0, 18);
          *&__p[96] = 65537;
          *&__p[120] = 1;
          v328 = 0;
          v329 = 0;
          v324 = 0;
          v325 = 0;
          memset(__p, 0, 32);
          *&__p[32] = 1;
          *&__p[104] = xmmword_19D475D30;
          *v323 = 0;
          *&v323[10] = 1;
          *&__p[56] = 0xFFFFFFFF00000000;
          *&v323[8] = 0;
          v326 = 0;
          v327 = 1;
          *&__p[40] = v392;
          *&__p[44] = DWORD2(v384);
          *&__p[48] = v396;
          *&__p[92] = WORD4(v396);
          *&__p[94] = WORD6(v396);
          if (v397 != 2)
          {
            if (v397 == 1)
            {
              *&__p[72] = 1;
            }

            else if (!v397)
            {
              *&__p[72] = 2;
              v65 = *(&v379 + 1);
              v66 = &__p[24];
              if (*(&v379 + 1) == 5)
              {
                goto LABEL_397;
              }

              goto LABEL_395;
            }

            v65 = *(&v379 + 1);
            v66 = &__p[24];
            if (*(&v379 + 1) == 5)
            {
              goto LABEL_397;
            }

            goto LABEL_395;
          }

          *&__p[72] = 0;
          v195 = vuzp1_s16(*(&v397 + 4), *(&v397 + 4));
          *&__p[80] = vzip1_s16(v195, v195);
          v65 = *(&v379 + 1);
          v66 = &__p[24];
          if (*(&v379 + 1) == 5)
          {
            goto LABEL_397;
          }

LABEL_395:
          if (v65 != 2)
          {
            goto LABEL_398;
          }

          v66 = &__p[28];
LABEL_397:
          *v66 = 1;
LABEL_398:
          BYTE7(__src[1]) = 11;
          strcpy(__src, "convolution");
          sub_19D3AF984(&v320, v370);
          sub_19D3AF984(&v318, v368);
          sub_19D3AD258(a1, &v320, &v318, __dst);
          v187 = v318;
          if (v318)
          {
            v188 = v319;
            v189 = v318;
            if (v319 != v318)
            {
              do
              {
                v190 = *(v188 - 1);
                v188 -= 3;
                if (v190 < 0)
                {
                  operator delete(*v188);
                }
              }

              while (v188 != v187);
              v189 = v318;
            }

            v319 = v187;
            operator delete(v189);
          }

          v191 = v320;
          if (v320)
          {
            v192 = v321;
            v193 = v320;
            if (v321 != v320)
            {
              do
              {
                v194 = *(v192 - 1);
                v192 -= 3;
                if (v194 < 0)
                {
                  operator delete(*v192);
                }
              }

              while (v192 != v191);
              v193 = v320;
            }

            v321 = v191;
            operator delete(v193);
          }

          if (SBYTE7(__src[1]) < 0)
          {
            operator delete(*&__src[0]);
          }

          operator new();
        case 0xCuLL:
          *&__p[4] = v396;
          *&__p[32] = 2;
          *&__p[24] = 1;
          *&__p[36] = 1;
          memset(&__p[38], 0, 32);
          *&__p[72] = 0;
          *&__p[80] = 0;
          *&__p[88] = 0x100000001;
          *&__p[96] = 0;
          *&__p[104] = 0;
          *&__p[12] = 0;
          *__p = 1;
          *&__p[16] = *(&v396 + 1);
          if (v397 == 2)
          {
            *&__p[36] = 0;
            v179 = vuzp1_s16(*(&v397 + 4), *(&v397 + 4));
            *&__p[44] = vzip1_s16(v179, v179);
          }

          else if (!v397)
          {
            *&__p[36] = 2;
          }

          BYTE7(__src[1]) = 4;
          strcpy(__src, "pool");
          sub_19D3AF984(&v316, v370);
          sub_19D3AF984(&v314, v368);
          sub_19D3AD618(a1, &v316, &v314, __dst);
          v180 = v314;
          if (v314)
          {
            v181 = v315;
            v182 = v314;
            if (v315 != v314)
            {
              do
              {
                v183 = *(v181 - 1);
                v181 -= 3;
                if (v183 < 0)
                {
                  operator delete(*v181);
                }
              }

              while (v181 != v180);
              v182 = v314;
            }

            v315 = v180;
            operator delete(v182);
          }

          v184 = v316;
          if (!v316)
          {
            goto LABEL_430;
          }

          v185 = v317;
          v137 = v316;
          if (v317 != v316)
          {
            do
            {
              v186 = *(v185 - 1);
              v185 -= 3;
              if (v186 < 0)
              {
                operator delete(*v185);
              }
            }

            while (v185 != v184);
            v137 = v316;
          }

          v317 = v184;
          goto LABEL_429;
        case 0xFuLL:
          *__p = 0;
          *&__p[8] = 1065353216;
          *&__p[16] = 897988541;
          __p[24] = 0;
          *&__p[44] = 0;
          BYTE7(__src[1]) = 11;
          strcpy(__src, "elementwise");
          sub_19D3AF984(&v340, v370);
          sub_19D3AF984(&v338, v368);
          sub_19D3ACFC8(a1, &v340, &v338, __dst);
          v67 = v338;
          if (v338)
          {
            v68 = v339;
            v69 = v338;
            if (v339 != v338)
            {
              do
              {
                v70 = *(v68 - 1);
                v68 -= 3;
                if (v70 < 0)
                {
                  operator delete(*v68);
                }
              }

              while (v68 != v67);
              v69 = v338;
            }

            v339 = v67;
            operator delete(v69);
          }

          v135 = v340;
          if (!v340)
          {
            goto LABEL_430;
          }

          v136 = v341;
          v137 = v340;
          if (v341 != v340)
          {
            do
            {
              v138 = *(v136 - 1);
              v136 -= 3;
              if (v138 < 0)
              {
                operator delete(*v136);
              }
            }

            while (v136 != v135);
            v137 = v340;
          }

          v341 = v135;
          goto LABEL_429;
        case 0x11uLL:
          __src[0] = v396;
          LODWORD(__src[1]) = v397;
          __p[23] = 9;
          strcpy(__p, "transpose");
          sub_19D3AF984(&v281, v370);
          sub_19D3AF984(&v279, v368);
          sub_19D3AC848(a1, &v281, &v279, __dst);
          v79 = v279;
          if (v279)
          {
            v80 = v280;
            v81 = v279;
            if (v280 != v279)
            {
              do
              {
                v82 = *(v80 - 1);
                v80 -= 3;
                if (v82 < 0)
                {
                  operator delete(*v80);
                }
              }

              while (v80 != v79);
              v81 = v279;
            }

            v280 = v79;
            operator delete(v81);
          }

          v143 = v281;
          if (v281)
          {
            v144 = v282;
            v145 = v281;
            if (v282 != v281)
            {
              do
              {
                v146 = *(v144 - 1);
                v144 -= 3;
                if (v146 < 0)
                {
                  operator delete(*v144);
                }
              }

              while (v144 != v143);
              v145 = v281;
            }

            v282 = v143;
            operator delete(v145);
          }

          if ((__p[23] & 0x80000000) == 0)
          {
            goto LABEL_433;
          }

          v147 = *__p;
          goto LABEL_432;
        case 0x14uLL:
          v343 = DWORD1(v396) * v396;
          v344 = DWORD1(v396);
          LOBYTE(v345) = DWORD2(v396) == 1;
          __p[23] = 14;
          strcpy(__p, "self_attention");
          sub_19D3AF984(&v366, v370);
          sub_19D3AF984(&v364, v368);
          sub_19D3AC488(a1, &v366, &v364, __src);
          v75 = v364;
          if (v364)
          {
            v76 = v365;
            v77 = v364;
            if (v365 != v364)
            {
              do
              {
                v78 = *(v76 - 1);
                v76 -= 3;
                if (v78 < 0)
                {
                  operator delete(*v76);
                }
              }

              while (v76 != v75);
              v77 = v364;
            }

            v365 = v75;
            operator delete(v77);
          }

          v139 = v366;
          if (v366)
          {
            v140 = v367;
            v141 = v366;
            if (v367 != v366)
            {
              do
              {
                v142 = *(v140 - 1);
                v140 -= 3;
                if (v142 < 0)
                {
                  operator delete(*v140);
                }
              }

              while (v140 != v139);
              v141 = v366;
            }

            v367 = v139;
            operator delete(v141);
          }

          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }

          operator new();
        case 0x15uLL:
          *v304 = xmmword_19D475D40;
          v305 = 1;
          memset(__p, 0, 24);
          memset(__src, 0, 24);
          v39 = v368[0];
          v40 = v368[1];
          if (v368[0] == v368[1])
          {
            goto LABEL_61;
          }

          break;
        case 0x16uLL:
          *&__p[20] = 0xFFFFFFFFLL;
          *&__p[32] = 1;
          *&__p[36] = 1;
          *__p = v392;
          *&__p[8] = DWORD2(v392);
          *&__p[28] = 0;
          *&__p[16] = HIDWORD(v392);
          BYTE7(__src[1]) = 7;
          strcpy(__src, "reshape");
          sub_19D3AF984(&v277, v370);
          sub_19D3AF984(&v275, v368);
          sub_19D3AEA20(a1, &v277, &v275, __dst);
          v88 = v275;
          if (v275)
          {
            v89 = v276;
            v90 = v275;
            if (v276 != v275)
            {
              do
              {
                v91 = *(v89 - 1);
                v89 -= 3;
                if (v91 < 0)
                {
                  operator delete(*v89);
                }
              }

              while (v89 != v88);
              v90 = v275;
            }

            v276 = v88;
            operator delete(v90);
          }

          v153 = v277;
          if (!v277)
          {
            goto LABEL_430;
          }

          v154 = v278;
          v137 = v277;
          if (v278 != v277)
          {
            do
            {
              v155 = *(v154 - 1);
              v154 -= 3;
              if (v155 < 0)
              {
                operator delete(*v154);
              }
            }

            while (v154 != v153);
            v137 = v277;
          }

          v278 = v153;
          goto LABEL_429;
        case 0x1CuLL:
          *&__p[8] = 1065353216;
          *&__p[16] = 897988541;
          *&__p[48] = 0;
          *&__p[44] = 0;
          *__p = 1;
          __p[24] = 1;
          BYTE7(__src[1]) = 11;
          strcpy(__src, "elementwise");
          sub_19D3AF984(&v336, v370);
          sub_19D3AF984(&v334, v368);
          sub_19D3ACFC8(a1, &v336, &v334, __dst);
          v92 = v334;
          if (v334)
          {
            v93 = v335;
            v94 = v334;
            if (v335 != v334)
            {
              do
              {
                v95 = *(v93 - 1);
                v93 -= 3;
                if (v95 < 0)
                {
                  operator delete(*v93);
                }
              }

              while (v93 != v92);
              v94 = v334;
            }

            v335 = v92;
            operator delete(v94);
          }

          v156 = v336;
          if (!v336)
          {
            goto LABEL_430;
          }

          v157 = v337;
          v137 = v336;
          if (v337 != v336)
          {
            do
            {
              v158 = *(v157 - 1);
              v157 -= 3;
              if (v158 < 0)
              {
                operator delete(*v157);
              }
            }

            while (v157 != v156);
            v137 = v336;
          }

          v337 = v156;
          goto LABEL_429;
        default:
          goto LABEL_498;
      }

      break;
    }

    while (1)
    {
      if (v39[23] < 0)
      {
        sub_19D2AD6B8(__dst, *v39, *(v39 + 1));
      }

      else
      {
        v42 = *v39;
        v361 = *(v39 + 2);
        *__dst = v42;
      }

      if (v361 >= 0)
      {
        v43 = HIBYTE(v361);
      }

      else
      {
        v43 = __dst[1];
      }

      if (v43 + 22 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_19D2AD774();
      }

      if (v43 + 22 >= 0x17)
      {
        operator new();
      }

      v359 = 0;
      v358[1] = 0;
      v358[0] = 0;
      HIBYTE(v359) = v43 + 22;
      if (v43)
      {
        if (v361 >= 0)
        {
          v44 = __dst;
        }

        else
        {
          v44 = __dst[0];
        }

        memmove(v358, v44, v43);
      }

      strcpy(v358 + v43, "_after_input_transpose");
      v45 = *&__p[8];
      if (*&__p[8] >= *&__p[16])
      {
        v47 = *__p;
        v48 = *&__p[8] - *__p;
        v49 = 0xAAAAAAAAAAAAAAABLL * ((*&__p[8] - *__p) >> 3);
        v50 = v49 + 1;
        if (v49 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_19D2AE2B4();
        }

        if (0x5555555555555556 * ((*&__p[16] - *__p) >> 3) > v50)
        {
          v50 = 0x5555555555555556 * ((*&__p[16] - *__p) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((*&__p[16] - *__p) >> 3) >= 0x555555555555555)
        {
          v51 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v51 = v50;
        }

        if (v51)
        {
          if (v51 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_19D2AD81C();
        }

        v52 = 8 * ((*&__p[8] - *__p) >> 3);
        *v52 = *v358;
        *(v52 + 16) = v359;
        v46 = 24 * v49 + 24;
        v53 = 24 * v49 - v48;
        memcpy((v52 - v48), v47, v48);
        *__p = v53;
        *&__p[8] = v46;
        *&__p[16] = 0;
        if (v47)
        {
          operator delete(v47);
        }
      }

      else
      {
        **&__p[8] = *v358;
        *(v45 + 16) = v359;
        v46 = v45 + 24;
      }

      *&__p[8] = v46;
      if (v361 >= 0)
      {
        v54 = HIBYTE(v361);
      }

      else
      {
        v54 = __dst[1];
      }

      if (v54 + 23 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_19D2AD774();
      }

      if (v54 < 0xFFFFFFFFFFFFFFE9)
      {
        operator new();
      }

      v359 = 0;
      v358[1] = 0;
      v358[0] = 0;
      HIBYTE(v359) = v54 + 23;
      if (v361 >= 0)
      {
        v55 = __dst;
      }

      else
      {
        v55 = __dst[0];
      }

      memmove(v358, v55, v54);
      strcpy(v358 + v54, "_after_output_transpose");
      v56 = *(&__src[0] + 1);
      if (*(&__src[0] + 1) >= *&__src[1])
      {
        v57 = *&__src[0];
        v58 = *(&__src[0] + 1) - *&__src[0];
        v59 = 0xAAAAAAAAAAAAAAABLL * ((*(&__src[0] + 1) - *&__src[0]) >> 3);
        v60 = v59 + 1;
        if (v59 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_19D2AE2B4();
        }

        if (0x5555555555555556 * ((*&__src[1] - *&__src[0]) >> 3) > v60)
        {
          v60 = 0x5555555555555556 * ((*&__src[1] - *&__src[0]) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((*&__src[1] - *&__src[0]) >> 3) >= 0x555555555555555)
        {
          v61 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v61 = v60;
        }

        if (v61)
        {
          if (v61 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_19D2AD81C();
        }

        v62 = 8 * ((*(&__src[0] + 1) - *&__src[0]) >> 3);
        *v62 = *v358;
        *(v62 + 16) = v359;
        v63 = 24 * v59 + 24;
        v64 = 24 * v59 - v58;
        memcpy((v62 - v58), v57, v58);
        *&__src[0] = v64;
        *(&__src[0] + 1) = v63;
        *&__src[1] = 0;
        if (v57)
        {
          operator delete(v57);
        }

        *(&__src[0] + 1) = v63;
        if ((SHIBYTE(v361) & 0x80000000) == 0)
        {
          goto LABEL_68;
        }
      }

      else
      {
        **(&__src[0] + 1) = *v358;
        *(v56 + 16) = v359;
        *(&__src[0] + 1) = v56 + 24;
        if ((SHIBYTE(v361) & 0x80000000) == 0)
        {
          goto LABEL_68;
        }
      }

      operator delete(__dst[0]);
LABEL_68:
      v39 += 24;
      if (v39 == v40)
      {
LABEL_61:
        HIBYTE(v361) = 9;
        strcpy(__dst, "transpose");
        if (SHIBYTE(v409) >= 0)
        {
          v41 = HIBYTE(v409);
        }

        else
        {
          v41 = v408[1];
        }

        if (v41 + 8 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_19D2AD774();
        }

        if (v41 + 8 >= 0x17)
        {
          operator new();
        }

        v359 = 0;
        v358[1] = 0;
        v358[0] = 0;
        HIBYTE(v359) = v41 + 8;
        if (v41)
        {
          if (SHIBYTE(v409) >= 0)
          {
            v130 = v408;
          }

          else
          {
            v130 = v408[0];
          }

          memmove(v358, v130, v41);
        }

        strcpy(v358 + v41, "_input_t");
        sub_19D3AF984(&v356, v370);
        sub_19D3AF984(&v354, __p);
        sub_19D3AC848(a1, &v356, &v354, &v363);
        v131 = v354;
        if (v354)
        {
          v132 = v355;
          v133 = v354;
          if (v355 != v354)
          {
            do
            {
              v134 = *(v132 - 1);
              v132 -= 3;
              if (v134 < 0)
              {
                operator delete(*v132);
              }
            }

            while (v132 != v131);
            v133 = v354;
          }

          v355 = v131;
          operator delete(v133);
        }

        v159 = v356;
        if (v356)
        {
          v160 = v357;
          v161 = v356;
          if (v357 != v356)
          {
            do
            {
              v162 = *(v160 - 1);
              v160 -= 3;
              if (v162 < 0)
              {
                operator delete(*v160);
              }
            }

            while (v160 != v159);
            v161 = v356;
          }

          v357 = v159;
          operator delete(v161);
        }

        if (SHIBYTE(v359) < 0)
        {
          operator delete(v358[0]);
          if (SHIBYTE(v361) < 0)
          {
            goto LABEL_375;
          }
        }

        else
        {
          if ((SHIBYTE(v361) & 0x80000000) == 0)
          {
            goto LABEL_335;
          }

LABEL_375:
          operator delete(__dst[0]);
        }

LABEL_335:
        v353 = 0;
        LODWORD(v350) = 1;
        HIDWORD(v350) = v400;
        v352 = v396 == 0;
        v351 = v396 != 0;
        HIBYTE(v361) = 15;
        strcpy(__dst, "instancenorm_1d");
        sub_19D3AF984(&v348, __p);
        sub_19D3AF984(&v346, __src);
        sub_19D3ACC08(a1, &v348, &v346, &v362);
        v163 = v346;
        if (v346)
        {
          v164 = v347;
          v165 = v346;
          if (v347 != v346)
          {
            do
            {
              v166 = *(v164 - 1);
              v164 -= 3;
              if (v166 < 0)
              {
                operator delete(*v164);
              }
            }

            while (v164 != v163);
            v165 = v346;
          }

          v347 = v163;
          operator delete(v165);
        }

        v167 = v348;
        if (v348)
        {
          v168 = v349;
          v169 = v348;
          if (v349 != v348)
          {
            do
            {
              v170 = *(v168 - 1);
              v168 -= 3;
              if (v170 < 0)
              {
                operator delete(*v168);
              }
            }

            while (v168 != v167);
            v169 = v348;
          }

          v349 = v167;
          operator delete(v169);
        }

        if (SHIBYTE(v361) < 0)
        {
          operator delete(__dst[0]);
        }

        operator new();
      }
    }
  }

LABEL_579:
  Espresso::sequential_builder::build_from_shapes();
  BYTE7(v377) = 12;
  strcpy(v376, "fast_reshape");
  *&__src[0] = v376;
  v250 = sub_19D3B2354(*__p + 472, v376);
  MEMORY[0x19EAFA160](v250 + 7, "1");
  if (SBYTE7(v377) < 0)
  {
    operator delete(v376[0]);
  }

  v273 = *__p;
  v274 = *&__p[8];
  if (*&__p[8])
  {
    atomic_fetch_add_explicit((*&__p[8] + 8), 1uLL, memory_order_relaxed);
  }

  v251 = strlen(a3);
  if (v251 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_19D2AD774();
  }

  v252 = v251;
  if (v251 >= 0x17)
  {
    operator new();
  }

  v272 = v251;
  if (v251)
  {
    memcpy(&v271, a3, v251);
  }

  *(&v271 + v252) = 0;
  Espresso::dump_network_binserializer();
  if (v272 < 0)
  {
    operator delete(v271);
    v253 = v274;
    if (!v274)
    {
      goto LABEL_595;
    }
  }

  else
  {
    v253 = v274;
    if (!v274)
    {
      goto LABEL_595;
    }
  }

  if (!atomic_fetch_add(&v253->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v253->__on_zero_shared)(v253);
    std::__shared_weak_count::__release_weak(v253);
  }

LABEL_595:
  v254 = *&__p[8];
  if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v254->__on_zero_shared)(v254);
    std::__shared_weak_count::__release_weak(v254);
  }

  sub_19D2A3E48(&v410, v411[0]);
  sub_19D2A3E48(&v412, v413[0]);
  v255 = v414;
  if (v414)
  {
    v256 = v415;
    v257 = v414;
    if (v415 != v414)
    {
      v258 = v415;
      do
      {
        v260 = *(v258 - 3);
        v258 -= 3;
        v259 = v260;
        if (v260)
        {
          *(v256 - 2) = v259;
          operator delete(v259);
        }

        v256 = v258;
      }

      while (v258 != v255);
      v257 = v414;
    }

    v415 = v255;
    operator delete(v257);
  }

  v261 = v417;
  if (v417)
  {
    v262 = v418;
    v263 = v417;
    if (v418 != v417)
    {
      do
      {
        v264 = *(v262 - 1);
        v262 -= 3;
        if (v264 < 0)
        {
          operator delete(*v262);
        }
      }

      while (v262 != v261);
      v263 = v417;
    }

    v418 = v261;
    operator delete(v263);
  }
}