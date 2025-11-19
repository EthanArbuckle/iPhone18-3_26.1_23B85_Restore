uint64_t cv::recip_<unsigned char>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, double a6)
{
  v6 = a5[1];
  a5[1] = v6 - 1;
  if (!v6)
  {
    return result;
  }

  LODWORD(v7) = *a5;
  do
  {
    if (v7 < 4)
    {
      v8 = 0;
      goto LABEL_35;
    }

    v8 = 0;
    do
    {
      v9 = *(result + v8);
      if (*(result + v8))
      {
        v10 = result + v8;
        v11 = *(result + v8 + 1);
        if (*(result + v8 + 1))
        {
          v12 = *(v10 + 2);
          if (*(v10 + 2))
          {
            v13 = *(result + v8 + 3);
            if (*(result + v8 + 3))
            {
              v14 = v8 + 2;
              v15 = v8 + 3;
              v16 = v9;
              v17 = v12;
              v18 = v9 * v11;
              v19 = v12 * v13;
              v20 = a6 / (v18 * v19);
              v21 = v19 * v20;
              v22 = v18 * v20;
              v23 = rint(v21 * v11);
              v9 = v23 & ~(v23 >> 31);
              v24 = rint(v21 * v16);
              if (v9 >= 255)
              {
                LOBYTE(v9) = -1;
              }

              v25 = v24 & ~(v24 >> 31);
              if (v25 >= 255)
              {
                LOBYTE(v25) = -1;
              }

              v26 = rint(v22 * v13);
              v27 = v26 & ~(v26 >> 31);
              if (v27 >= 255)
              {
                LOBYTE(v27) = -1;
              }

              v28 = v22 * v17;
              goto LABEL_31;
            }
          }
        }

        v29 = rint(a6 / v9);
        v9 = v29 & ~(v29 >> 31);
        if (v9 >= 255)
        {
          LOBYTE(v9) = -1;
        }
      }

      if (*(result + v8 + 1))
      {
        v30 = rint(a6 / *(result + v8 + 1));
        if ((v30 & ~(v30 >> 31)) >= 255)
        {
          LOBYTE(v25) = -1;
        }

        else
        {
          LOBYTE(v25) = v30 & ~(v30 >> 31);
        }
      }

      else
      {
        LOBYTE(v25) = 0;
      }

      if (*(result + v8 + 2))
      {
        v31 = rint(a6 / *(result + v8 + 2));
        if ((v31 & ~(v31 >> 31)) >= 255)
        {
          LOBYTE(v27) = -1;
        }

        else
        {
          LOBYTE(v27) = v31 & ~(v31 >> 31);
        }
      }

      else
      {
        LOBYTE(v27) = 0;
      }

      v14 = v8 | 2;
      v15 = v8 | 3;
      v32 = *(result + v8 + 3);
      if (!*(result + v8 + 3))
      {
        goto LABEL_33;
      }

      v28 = a6 / v32;
LABEL_31:
      v33 = rint(v28);
      v32 = v33 & ~(v33 >> 31);
      if (v32 >= 255)
      {
        LOBYTE(v32) = -1;
      }

LABEL_33:
      v34 = (a3 + v8);
      *v34 = v9;
      v34[1] = v25;
      *(a3 + v14) = v27;
      *(a3 + v15) = v32;
      v8 += 4;
      v7 = *a5;
    }

    while (v8 <= v7 - 4);
    v8 = v8;
LABEL_35:
    if (v8 < v7)
    {
      do
      {
        v35 = *(result + v8);
        if (*(result + v8))
        {
          v36 = rint(a6 / v35);
          v35 = v36 & ~(v36 >> 31);
          if (v35 >= 255)
          {
            LOBYTE(v35) = -1;
          }
        }

        *(a3 + v8++) = v35;
        v7 = *a5;
      }

      while (v8 < v7);
    }

    result += a2;
    a3 += a4;
    v37 = a5[1];
    a5[1] = v37 - 1;
  }

  while (v37);
  return result;
}

void cv::recip8s(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return;
  }

  v9 = *a7;
  v10 = *a8;
  do
  {
    if (v9 < 4)
    {
      v11 = 0;
      goto LABEL_48;
    }

    v11 = 0;
    do
    {
      LOBYTE(v12) = *(a3 + v11);
      LOBYTE(v13) = *(a3 + v11 + 1);
      if (v12)
      {
        if (*(a3 + v11 + 1))
        {
          if (*(a3 + v11 + 2))
          {
            v14 = *(a3 + v11 + 3);
            if (v14)
            {
              v15 = v11 | 2;
              v16 = v12;
              v17 = v11 | 3;
              v18 = v13;
              v19 = *(a3 + v11 + 2);
              v20 = v14;
              v21 = v10 / (v16 * v18 * (v19 * v20));
              v22 = v19 * v20 * v21;
              v23 = v16 * v18 * v21;
              v12 = rint(v22 * v18);
              if (v12 <= -128)
              {
                LODWORD(v12) = -128;
              }

              if (v12 >= 127)
              {
                LOBYTE(v12) = 127;
              }

              v13 = rint(v22 * v16);
              if (v13 <= -128)
              {
                LODWORD(v13) = -128;
              }

              if (v13 >= 127)
              {
                LOBYTE(v13) = 127;
              }

              v24 = rint(v23 * v20);
              if (v24 <= -128)
              {
                LODWORD(v24) = -128;
              }

              if (v24 >= 127)
              {
                LOBYTE(v24) = 127;
              }

              v25 = v23 * v19;
              goto LABEL_42;
            }
          }
        }

        v12 = rint(v10 / v12);
        if (v12 <= -128)
        {
          LODWORD(v12) = -128;
        }

        if (v12 >= 127)
        {
          LOBYTE(v12) = 127;
        }
      }

      if (*(a3 + v11 + 1))
      {
        v26 = rint(v10 / v13);
        if (v26 <= -128)
        {
          LODWORD(v26) = -128;
        }

        if (v26 >= 127)
        {
          LOBYTE(v13) = 127;
        }

        else
        {
          LOBYTE(v13) = v26;
        }
      }

      if (*(a3 + v11 + 2))
      {
        v27 = rint(v10 / *(a3 + v11 + 2));
        if (v27 <= -128)
        {
          LODWORD(v27) = -128;
        }

        if (v27 >= 127)
        {
          LOBYTE(v24) = 127;
        }

        else
        {
          LOBYTE(v24) = v27;
        }
      }

      else
      {
        LOBYTE(v24) = 0;
      }

      v15 = v11 + 2;
      v17 = v11 + 3;
      LOBYTE(v28) = *(a3 + v11 + 3);
      if (v28)
      {
        v25 = v10 / v28;
LABEL_42:
        v28 = rint(v25);
        if (v28 <= -128)
        {
          LODWORD(v28) = -128;
        }

        if (v28 >= 127)
        {
          LOBYTE(v28) = 127;
        }
      }

      v29 = (a5 + v11);
      *v29 = v12;
      v29[1] = v13;
      *(a5 + v15) = v24;
      *(a5 + v17) = v28;
      v11 += 4;
    }

    while (v11 <= v9 - 4);
    v11 = v11;
LABEL_48:
    if (v11 < v9)
    {
      do
      {
        LOBYTE(v30) = *(a3 + v11);
        if (v30)
        {
          v30 = rint(v10 / v30);
          if (v30 <= -128)
          {
            LODWORD(v30) = -128;
          }

          if (v30 >= 127)
          {
            LOBYTE(v30) = 127;
          }
        }

        *(a5 + v11++) = v30;
      }

      while (v11 < v9);
    }

    a3 += a4;
    a5 += a6;
    --v8;
  }

  while (v8);
}

void cv::recip16u(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return;
  }

  v9 = *a7;
  v10 = *a7;
  v11 = *a8;
  v12 = 2 * (a6 >> 1);
  v13 = 2 * (a4 >> 1);
  do
  {
    if (v9 < 4)
    {
      v14 = 0;
      goto LABEL_34;
    }

    v15 = 0;
    v14 = 0;
    do
    {
      v16 = *(a3 + v15);
      v17 = *(a3 + v15 + 2);
      if (*(a3 + v15))
      {
        if (*(a3 + v15 + 2))
        {
          v18 = a3 + v15;
          v19 = *(a3 + v15 + 4);
          if (*(a3 + v15 + 4))
          {
            v20 = *(v18 + 6);
            if (*(v18 + 6))
            {
              v21 = v14 | 2;
              v22 = v14 | 3;
              v23 = v16;
              v24 = v19;
              v25 = v16 * v17;
              v26 = v19 * v20;
              v27 = v11 / (v25 * v26);
              v28 = v26 * v27;
              v29 = v25 * v27;
              v30 = rint(v28 * v17);
              v16 = v30 & ~(v30 >> 31);
              v31 = rint(v28 * v23);
              if (v16 >= 0xFFFF)
              {
                LOWORD(v16) = -1;
              }

              v17 = v31 & ~(v31 >> 31);
              if (v17 >= 0xFFFF)
              {
                LOWORD(v17) = -1;
              }

              v32 = rint(v29 * v20);
              v33 = v32 & ~(v32 >> 31);
              if (v33 >= 0xFFFF)
              {
                LOWORD(v33) = -1;
              }

              v34 = v29 * v24;
              goto LABEL_30;
            }
          }
        }

        v35 = rint(v11 / v16);
        v16 = v35 & ~(v35 >> 31);
        if (v16 >= 0xFFFF)
        {
          LOWORD(v16) = -1;
        }
      }

      if (*(a3 + v15 + 2))
      {
        v36 = rint(v11 / v17);
        if ((v36 & ~(v36 >> 31)) >= 0xFFFF)
        {
          LOWORD(v17) = -1;
        }

        else
        {
          LOWORD(v17) = v36 & ~(v36 >> 31);
        }
      }

      if (*(a3 + v15 + 4))
      {
        v37 = rint(v11 / *(a3 + v15 + 4));
        if ((v37 & ~(v37 >> 31)) >= 0xFFFF)
        {
          LOWORD(v33) = -1;
        }

        else
        {
          LOWORD(v33) = v37 & ~(v37 >> 31);
        }
      }

      else
      {
        LOWORD(v33) = 0;
      }

      v21 = v14 + 2;
      v22 = v14 + 3;
      v38 = *(a3 + v15 + 6);
      if (*(a3 + v15 + 6))
      {
        v34 = v11 / v38;
LABEL_30:
        v39 = rint(v34);
        v38 = v39 & ~(v39 >> 31);
        if (v38 >= 0xFFFF)
        {
          LOWORD(v38) = -1;
        }
      }

      v40 = (a5 + v15);
      *v40 = v16;
      v40[1] = v17;
      *(a5 + 2 * v21) = v33;
      *(a5 + 2 * v22) = v38;
      v14 += 4;
      v15 += 8;
    }

    while (v14 <= v9 - 4);
    v14 = v14;
LABEL_34:
    if (v14 < v10)
    {
      do
      {
        v41 = *(a3 + 2 * v14);
        if (*(a3 + 2 * v14))
        {
          v42 = rint(v11 / v41);
          v41 = v42 & ~(v42 >> 31);
          if (v41 >= 0xFFFF)
          {
            LOWORD(v41) = -1;
          }
        }

        *(a5 + 2 * v14++) = v41;
      }

      while (v9 != v14);
    }

    a5 += v12;
    a3 += v13;
    --v8;
  }

  while (v8);
}

void cv::recip16s(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return;
  }

  v9 = *a7;
  v10 = *a7;
  v11 = *a8;
  v12 = 2 * (a6 >> 1);
  v13 = 2 * (a4 >> 1);
  do
  {
    if (v9 < 4)
    {
      v14 = 0;
      goto LABEL_48;
    }

    v15 = 0;
    v14 = 0;
    do
    {
      LOWORD(v16) = *(a3 + v15);
      LOWORD(v17) = *(a3 + v15 + 2);
      if (v16)
      {
        if (*(a3 + v15 + 2))
        {
          if (*(a3 + v15 + 4))
          {
            v18 = *(a3 + v15 + 6);
            if (v18)
            {
              v19 = v14 | 2;
              v20 = v16;
              v21 = v14 | 3;
              v22 = v17;
              v23 = *(a3 + v15 + 4);
              v24 = v18;
              v25 = v11 / (v20 * v22 * (v23 * v24));
              v26 = v23 * v24 * v25;
              v27 = v20 * v22 * v25;
              v16 = rint(v26 * v22);
              if (v16 <= -32768)
              {
                LODWORD(v16) = -32768;
              }

              if (v16 >= 0x7FFF)
              {
                LOWORD(v16) = 0x7FFF;
              }

              v17 = rint(v26 * v20);
              if (v17 <= -32768)
              {
                LODWORD(v17) = -32768;
              }

              if (v17 >= 0x7FFF)
              {
                LOWORD(v17) = 0x7FFF;
              }

              v28 = rint(v27 * v24);
              if (v28 <= -32768)
              {
                LODWORD(v28) = -32768;
              }

              if (v28 >= 0x7FFF)
              {
                LOWORD(v28) = 0x7FFF;
              }

              v29 = v27 * v23;
              goto LABEL_42;
            }
          }
        }

        v16 = rint(v11 / v16);
        if (v16 <= -32768)
        {
          LODWORD(v16) = -32768;
        }

        if (v16 >= 0x7FFF)
        {
          LOWORD(v16) = 0x7FFF;
        }
      }

      if (*(a3 + v15 + 2))
      {
        v30 = rint(v11 / v17);
        if (v30 <= -32768)
        {
          LODWORD(v30) = -32768;
        }

        if (v30 >= 0x7FFF)
        {
          LOWORD(v17) = 0x7FFF;
        }

        else
        {
          LOWORD(v17) = v30;
        }
      }

      if (*(a3 + v15 + 4))
      {
        v31 = rint(v11 / *(a3 + v15 + 4));
        if (v31 <= -32768)
        {
          LODWORD(v31) = -32768;
        }

        if (v31 >= 0x7FFF)
        {
          LOWORD(v28) = 0x7FFF;
        }

        else
        {
          LOWORD(v28) = v31;
        }
      }

      else
      {
        LOWORD(v28) = 0;
      }

      v19 = v14 + 2;
      v21 = v14 + 3;
      LOWORD(v32) = *(a3 + v15 + 6);
      if (v32)
      {
        v29 = v11 / v32;
LABEL_42:
        v32 = rint(v29);
        if (v32 <= -32768)
        {
          LODWORD(v32) = -32768;
        }

        if (v32 >= 0x7FFF)
        {
          LOWORD(v32) = 0x7FFF;
        }
      }

      v33 = (a5 + v15);
      *v33 = v16;
      v33[1] = v17;
      *(a5 + 2 * v19) = v28;
      *(a5 + 2 * v21) = v32;
      v14 += 4;
      v15 += 8;
    }

    while (v14 <= v9 - 4);
    v14 = v14;
LABEL_48:
    if (v14 < v10)
    {
      do
      {
        LOWORD(v34) = *(a3 + 2 * v14);
        if (v34)
        {
          v34 = rint(v11 / v34);
          if (v34 <= -32768)
          {
            LODWORD(v34) = -32768;
          }

          if (v34 >= 0x7FFF)
          {
            LOWORD(v34) = 0x7FFF;
          }
        }

        *(a5 + 2 * v14++) = v34;
      }

      while (v9 != v14);
    }

    a5 += v12;
    a3 += v13;
    --v8;
  }

  while (v8);
}

void cv::recip32s(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return;
  }

  v9 = *a7;
  v10 = *a8;
  v11 = 4 * (a6 >> 2);
  v12 = 4 * (a4 >> 2);
  do
  {
    if (v9 < 4)
    {
      v13 = 0;
      goto LABEL_21;
    }

    v14 = 0;
    v13 = 0;
    do
    {
      LODWORD(v15) = *(a3 + v14);
      LODWORD(v16) = *(a3 + v14 + 4);
      if (v15)
      {
        if (v16)
        {
          v17 = *(a3 + v14 + 8);
          if (v17)
          {
            v18 = *(a3 + v14 + 12);
            if (v18)
            {
              v19 = v13 | 2;
              v20 = v15;
              v21 = v17;
              v22 = v15 * v16;
              v23 = v17 * v18;
              v24 = v10 / (v22 * v23);
              v25 = v23 * v24;
              v26 = v22 * v24;
              v15 = rint(v25 * v16);
              v16 = rint(v25 * v20);
              v27 = rint(v26 * v18);
              v28 = v13 | 3;
              v29 = rint(v26 * v21);
              goto LABEL_19;
            }
          }
        }

        v15 = rint(v10 / v15);
      }

      if (v16)
      {
        v16 = rint(v10 / v16);
      }

      v30 = *(a3 + v14 + 8);
      if (v30)
      {
        v27 = rint(v10 / v30);
      }

      else
      {
        LODWORD(v27) = 0;
      }

      v19 = v13 + 2;
      v28 = v13 + 3;
      LODWORD(v29) = *(a3 + v14 + 12);
      if (v29)
      {
        v29 = rint(v10 / v29);
      }

LABEL_19:
      v31 = (a5 + v14);
      *v31 = v15;
      v31[1] = v16;
      *(a5 + 4 * v19) = v27;
      *(a5 + 4 * v28) = v29;
      v13 += 4;
      v14 += 16;
    }

    while (v13 <= v9 - 4);
    v13 = v13;
LABEL_21:
    if (v13 < v9)
    {
      do
      {
        LODWORD(v32) = *(a3 + 4 * v13);
        if (v32)
        {
          v32 = rint(v10 / v32);
        }

        *(a5 + 4 * v13++) = v32;
      }

      while (v13 < v9);
    }

    a5 += v11;
    a3 += v12;
    --v8;
  }

  while (v8);
}

float *cv::recip32f(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a7;
  v10 = *a7;
  v11 = *a8;
  do
  {
    if (v9 < 4)
    {
      v12 = 0;
      goto LABEL_21;
    }

    v13 = 0;
    v12 = 0;
    do
    {
      v15 = *(a3 + v13);
      v14 = *(a3 + v13 + 4);
      v16 = 0.0;
      v17 = 0.0;
      if (v15 != 0.0)
      {
        if (v14 != 0.0)
        {
          v18 = *(a3 + v13 + 8);
          if (v18 != 0.0)
          {
            v19 = *(a3 + v13 + 12);
            if (v19 != 0.0)
            {
              v20 = v12 + 2;
              v21 = v12 + 3;
              v22 = v15;
              v23 = v14;
              v24 = v15 * v23;
              v25 = v18;
              v26 = v19;
              v27 = v18 * v26;
              v28 = v11 / (v24 * v27);
              v29 = v27 * v28;
              v30 = v24 * v28;
              v17 = v29 * v23;
              v16 = v29 * v22;
              v31 = v30 * v26;
              v32 = v30 * v25;
LABEL_18:
              v34 = v32;
              goto LABEL_19;
            }
          }
        }

        v17 = v11 / v15;
      }

      if (v14 != 0.0)
      {
        v16 = v11 / v14;
      }

      v33 = *(a3 + v13 + 8);
      v34 = 0.0;
      v31 = 0.0;
      if (v33 != 0.0)
      {
        v31 = v11 / v33;
      }

      v20 = v12 | 2;
      v21 = v12 | 3;
      v35 = *(a3 + v13 + 12);
      if (v35 != 0.0)
      {
        v32 = v11 / v35;
        goto LABEL_18;
      }

LABEL_19:
      result = (a5 + v13);
      *result = v17;
      result[1] = v16;
      *(a5 + 4 * v20) = v31;
      *(a5 + 4 * v21) = v34;
      v12 += 4;
      v13 += 16;
    }

    while (v12 <= v9 - 4);
    v12 = v12;
LABEL_21:
    if (v12 < v10)
    {
      do
      {
        v37 = *(a3 + 4 * v12);
        if (v37 == 0.0)
        {
          v38 = 0.0;
        }

        else
        {
          v38 = v11 / v37;
        }

        *(a5 + 4 * v12++) = v38;
      }

      while (v9 != v12);
    }

    a5 += 4 * (a6 >> 2);
    a3 += 4 * (a4 >> 2);
    --v8;
  }

  while (v8);
  return result;
}

double *cv::recip64f(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, uint64_t *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a7;
  v10 = *a7;
  v11 = *a8;
  v12 = vdupq_lane_s64(*a8, 0);
  do
  {
    if (v9 < 4)
    {
      v13 = 0;
      goto LABEL_19;
    }

    v14 = 0;
    v13 = 0;
    do
    {
      v16 = *(a3 + v14);
      v15 = *(a3 + v14 + 8);
      if (v16 == 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        if (v15 != 0.0)
        {
          v17 = *(a3 + v14 + 16);
          if (v17 != 0.0)
          {
            v18.f64[0] = *(a3 + v14 + 24);
            if (v18.f64[0] != 0.0)
            {
              v19 = v13 + 2;
              v20 = v13 + 3;
              v21 = v11 / (v16 * v15 * (v17 * v18.f64[0]));
              v22 = v17 * v18.f64[0] * v21;
              v23 = v16 * v15 * v21;
              v24 = v15 * v22;
              v25 = v16 * v22;
              v18.f64[1] = *(a3 + v14 + 16);
              v26 = vmulq_n_f64(v18, v23);
              goto LABEL_17;
            }
          }
        }

        v24 = v11 / v16;
      }

      if (v15 == 0.0)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = v11 / v15;
      }

      v19 = v13 | 2;
      v20 = v13 | 3;
      v26 = vbicq_s8(vdivq_f64(v12, *(a3 + v14 + 16)), vceqzq_f64(*(a3 + v14 + 16)));
LABEL_17:
      result = (a5 + v14);
      *result = v24;
      result[1] = v25;
      *(a5 + 8 * v19) = v26.f64[0];
      *(a5 + 8 * v20) = v26.f64[1];
      v13 += 4;
      v14 += 32;
    }

    while (v13 <= v9 - 4);
    v13 = v13;
LABEL_19:
    if (v13 < v10)
    {
      do
      {
        v28 = *(a3 + 8 * v13);
        if (v28 == 0.0)
        {
          v29 = 0.0;
        }

        else
        {
          v29 = v11 / v28;
        }

        *(a5 + 8 * v13++) = v29;
      }

      while (v9 != v13);
    }

    a5 += 8 * (a6 >> 3);
    a3 += 8 * (a4 >> 3);
    --v8;
  }

  while (v8);
  return result;
}

uint64_t cv::addWeighted8u(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8)
{
  v8 = *a8;
  v9 = a8[1];
  v10 = a8[2];
  v11 = a7[1];
  a7[1] = v11 - 1;
  if (v11)
  {
    v12 = v8;
    v13 = v9;
    v14 = v10;
    LODWORD(v15) = *a7;
    do
    {
      if (v15 >= 4)
      {
        v17 = 1;
        do
        {
          v18 = result + v17;
          v19 = a3 + v17;
          v20 = rint((((cv::g_8x32fTab[*(a3 + v17 - 1) + 128] * v13) + (cv::g_8x32fTab[*(result + v17 - 1) + 128] * v12)) + v14));
          v21 = v20 & ~(v20 >> 31);
          v22 = (a5 + v17);
          if (v21 >= 255)
          {
            LOBYTE(v21) = -1;
          }

          v23 = rint((((cv::g_8x32fTab[*(a3 + v17) + 128] * v13) + (cv::g_8x32fTab[*(result + v17) + 128] * v12)) + v14));
          *(v22 - 1) = v21;
          if ((v23 & ~(v23 >> 31)) >= 255)
          {
            v24 = -1;
          }

          else
          {
            v24 = v23 & ~(v23 >> 31);
          }

          *v22 = v24;
          v25 = (cv::g_8x32fTab[*(v19 + 2) + 128] * v13) + (cv::g_8x32fTab[*(v18 + 2) + 128] * v12);
          v26 = rint((((cv::g_8x32fTab[*(v19 + 1) + 128] * v13) + (cv::g_8x32fTab[*(v18 + 1) + 128] * v12)) + v14));
          v27 = v26 & ~(v26 >> 31);
          v28 = rint((v25 + v14));
          if (v27 >= 255)
          {
            LOBYTE(v27) = -1;
          }

          v29 = v28 & ~(v28 >> 31);
          if (v29 >= 255)
          {
            LOBYTE(v29) = -1;
          }

          v22[1] = v27;
          v22[2] = v29;
          v15 = *a7;
          v30 = v17 + 3;
          v17 += 4;
        }

        while (v30 <= v15 - 4);
        v16 = (v17 - 1);
      }

      else
      {
        v16 = 0;
      }

      if (v16 < v15)
      {
        do
        {
          v31 = rint((((cv::g_8x32fTab[*(a3 + v16) + 128] * v13) + (cv::g_8x32fTab[*(result + v16) + 128] * v12)) + v14));
          v32 = v31 & ~(v31 >> 31);
          if (v32 >= 255)
          {
            LOBYTE(v32) = -1;
          }

          *(a5 + v16++) = v32;
          v15 = *a7;
        }

        while (v16 < v15);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v33 = a7[1];
      a7[1] = v33 - 1;
    }

    while (v33);
  }

  return result;
}

uint64_t cv::addWeighted8s(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a8;
    v11 = a8[1];
    v12 = a8[2];
    do
    {
      if (v9 >= 4)
      {
        v13 = 0;
        do
        {
          v14 = result + v13;
          v15 = (a3 + v13);
          v16 = rint((((v11 * *(a3 + v13)) + (*(result + v13) * v10)) + v12));
          if (v16 <= -128)
          {
            LODWORD(v16) = -128;
          }

          v17 = rint((((v11 * v15[1]) + (*(result + v13 + 1) * v10)) + v12));
          if (v16 >= 127)
          {
            LOBYTE(v16) = 127;
          }

          v18 = v17;
          if (v17 <= -128)
          {
            LODWORD(v18) = -128;
          }

          if (v18 >= 127)
          {
            LOBYTE(v18) = 127;
          }

          v19 = (a5 + v13);
          *v19 = v16;
          v19[1] = v18;
          v20 = rint((((v11 * v15[2]) + (*(v14 + 2) * v10)) + v12));
          if (v20 <= -128)
          {
            LODWORD(v20) = -128;
          }

          v21 = ((v11 * v15[3]) + (*(v14 + 3) * v10)) + v12;
          if (v20 >= 127)
          {
            v22 = 127;
          }

          else
          {
            v22 = v20;
          }

          v23 = rint(v21);
          if (v23 <= -128)
          {
            LODWORD(v23) = -128;
          }

          if (v23 >= 127)
          {
            LOBYTE(v23) = 127;
          }

          v19[2] = v22;
          v19[3] = v23;
          v13 += 4;
        }

        while (v13 <= v9 - 4);
        v13 = v13;
      }

      else
      {
        v13 = 0;
      }

      if (v13 < v9)
      {
        do
        {
          v24 = rint((((v11 * *(a3 + v13)) + (*(result + v13) * v10)) + v12));
          if (v24 <= -128)
          {
            LODWORD(v24) = -128;
          }

          if (v24 >= 127)
          {
            LOBYTE(v24) = 127;
          }

          *(a5 + v13++) = v24;
        }

        while (v13 < v9);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::addWeighted16u(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8, double a9, double a10, double a11, double a12, float a13)
{
  v13 = a7[1];
  if (v13)
  {
    v14 = *a7;
    v15 = *a7;
    v16 = *a8;
    v17 = a8[1];
    v18 = 2 * (a6 >> 1);
    v19 = a8[2];
    v20 = 2 * (a4 >> 1);
    v21 = 2 * (a2 >> 1);
    do
    {
      if (v14 >= 4)
      {
        v23 = 0;
        v22 = 0;
        do
        {
          v24 = result + v23;
          LOWORD(a12) = *(result + v23);
          v25 = a3 + v23;
          LOWORD(a13) = *(a3 + v23);
          *&v26 = v17 * LODWORD(a13);
          v27 = rint(((*&v26 + (LODWORD(a12) * v16)) + v19));
          v28 = v27 & ~(v27 >> 31);
          LOWORD(v27) = *(result + v23 + 2);
          LOWORD(v26) = *(a3 + v23 + 2);
          v29 = v17 * v26;
          v30 = ((v29 + (LODWORD(v27) * v16)) + v19);
          if (v28 >= 0xFFFF)
          {
            LOWORD(v28) = -1;
          }

          v31 = rint(v30);
          v32 = v31 & ~(v31 >> 31);
          if (v32 >= 0xFFFF)
          {
            LOWORD(v32) = -1;
          }

          v33 = (a5 + v23);
          *v33 = v28;
          v33[1] = v32;
          LOWORD(v31) = *(v24 + 4);
          LOWORD(v29) = *(v25 + 4);
          *&v34 = v17 * LODWORD(v29);
          v35 = rint(((*&v34 + (LODWORD(v31) * v16)) + v19));
          v36 = v35 & ~(v35 >> 31);
          LOWORD(v35) = *(v24 + 6);
          LOWORD(v34) = *(v25 + 6);
          a13 = v17 * v34;
          v37 = (a13 + (LODWORD(v35) * v16)) + v19;
          if (v36 >= 0xFFFF)
          {
            v38 = -1;
          }

          else
          {
            v38 = v36;
          }

          a12 = rint(v37);
          v39 = a12 & ~(a12 >> 31);
          if (v39 >= 0xFFFF)
          {
            LOWORD(v39) = -1;
          }

          v33[2] = v38;
          v33[3] = v39;
          v22 += 4;
          v23 += 8;
        }

        while (v22 <= v14 - 4);
        v22 = v22;
      }

      else
      {
        v22 = 0;
      }

      if (v22 < v15)
      {
        do
        {
          LOWORD(a12) = *(result + 2 * v22);
          LOWORD(a13) = *(a3 + 2 * v22);
          a13 = v17 * LODWORD(a13);
          a12 = rint(((a13 + (LODWORD(a12) * v16)) + v19));
          v40 = a12 & ~(a12 >> 31);
          if (v40 >= 0xFFFF)
          {
            LOWORD(v40) = -1;
          }

          *(a5 + 2 * v22++) = v40;
        }

        while (v14 != v22);
      }

      a5 += v18;
      a3 += v20;
      result += v21;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t cv::addWeighted16s(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = a8[1];
    v13 = 2 * (a6 >> 1);
    v14 = a8[2];
    v15 = 2 * (a4 >> 1);
    v16 = 2 * (a2 >> 1);
    do
    {
      if (v9 >= 4)
      {
        v18 = 0;
        v17 = 0;
        do
        {
          v19 = result + v18;
          v20 = (a3 + v18);
          v21 = rint((((v12 * *(a3 + v18)) + (*(result + v18) * v11)) + v14));
          if (v21 <= -32768)
          {
            LODWORD(v21) = -32768;
          }

          v22 = rint((((v12 * v20[1]) + (*(result + v18 + 2) * v11)) + v14));
          if (v21 >= 0x7FFF)
          {
            LOWORD(v21) = 0x7FFF;
          }

          v23 = v22;
          if (v22 <= -32768)
          {
            LODWORD(v23) = -32768;
          }

          if (v23 >= 0x7FFF)
          {
            LOWORD(v23) = 0x7FFF;
          }

          v24 = (a5 + v18);
          *v24 = v21;
          v24[1] = v23;
          v25 = rint((((v12 * v20[2]) + (*(v19 + 4) * v11)) + v14));
          v26 = *(v19 + 6);
          if (v25 <= -32768)
          {
            v27 = -32768;
          }

          else
          {
            v27 = v25;
          }

          v28 = (((v12 * v20[3]) + (v26 * v11)) + v14);
          if (v27 >= 0x7FFF)
          {
            LOWORD(v27) = 0x7FFF;
          }

          v29 = rint(v28);
          if (v29 <= -32768)
          {
            LODWORD(v29) = -32768;
          }

          if (v29 >= 0x7FFF)
          {
            LOWORD(v29) = 0x7FFF;
          }

          v24[2] = v27;
          v24[3] = v29;
          v17 += 4;
          v18 += 8;
        }

        while (v17 <= v9 - 4);
        v17 = v17;
      }

      else
      {
        v17 = 0;
      }

      if (v17 < v10)
      {
        do
        {
          v30 = rint((((v12 * *(a3 + 2 * v17)) + (*(result + 2 * v17) * v11)) + v14));
          if (v30 <= -32768)
          {
            LODWORD(v30) = -32768;
          }

          if (v30 >= 0x7FFF)
          {
            LOWORD(v30) = 0x7FFF;
          }

          *(a5 + 2 * v17++) = v30;
        }

        while (v9 != v17);
      }

      a5 += v13;
      a3 += v15;
      result += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::addWeighted32s(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a8;
    v11 = a8[1];
    v12 = a8[2];
    v13 = 4 * (a6 >> 2);
    do
    {
      if (v9 >= 4)
      {
        v15 = 0;
        v14 = 0;
        do
        {
          v16 = rint(v12 + v11 * *(a3 + v15 + 4) + *(result + v15 + 4) * v10);
          v17 = (a5 + v15);
          *v17 = rint(v12 + v11 * *(a3 + v15) + *(result + v15) * v10);
          v17[1] = v16;
          v18 = rint(v12 + v11 * *(a3 + v15 + 12) + *(result + v15 + 12) * v10);
          v17[2] = rint(v12 + v11 * *(a3 + v15 + 8) + *(result + v15 + 8) * v10);
          v17[3] = v18;
          v14 += 4;
          v15 += 16;
        }

        while (v14 <= v9 - 4);
        v14 = v14;
      }

      else
      {
        v14 = 0;
      }

      if (v14 < v9)
      {
        do
        {
          *(a5 + 4 * v14) = rint(v12 + v11 * *(a3 + 4 * v14) + *(result + 4 * v14) * v10);
          ++v14;
        }

        while (v14 < v9);
      }

      a5 += v13;
      a3 += 4 * (a4 >> 2);
      result += 4 * (a2 >> 2);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::addWeighted32f(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, uint64_t a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = *(a8 + 8);
    v13 = *(a8 + 16);
    v14 = vdupq_lane_s64(*a8, 0);
    v15 = vdupq_lane_s64(v13, 0);
    v16 = 4 * (a4 >> 2);
    do
    {
      if (v9 >= 4)
      {
        v18 = 0;
        v17 = 0;
        do
        {
          v19 = (a5 + v18);
          *v19 = vcvt_f32_f64(vaddq_f64(v15, vmlaq_f64(vmulq_n_f64(vcvtq_f64_f32(*(a3 + v18)), v12), v14, vcvtq_f64_f32(*(result + v18)))));
          v19[1] = vcvt_f32_f64(vaddq_f64(v15, vmlaq_f64(vmulq_n_f64(vcvtq_f64_f32(*(a3 + v18 + 8)), v12), v14, vcvtq_f64_f32(*(result + v18 + 8)))));
          v17 += 4;
          v18 += 16;
        }

        while (v17 <= v9 - 4);
        v17 = v17;
      }

      else
      {
        v17 = 0;
      }

      if (v17 < v10)
      {
        do
        {
          v20 = *&v13 + v12 * *(a3 + 4 * v17) + *(result + 4 * v17) * v11;
          *(a5 + 4 * v17++) = v20;
        }

        while (v9 != v17);
      }

      a5 += 4 * (a6 >> 2);
      a3 += v16;
      result += 4 * (a2 >> 2);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::addWeighted64f(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, uint64_t a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = *(a8 + 8);
    v13 = *(a8 + 16);
    v14 = vdupq_lane_s64(*a8, 0);
    v15 = vdupq_lane_s64(v13, 0);
    v16 = 8 * (a4 >> 3);
    do
    {
      if (v9 >= 4)
      {
        v18 = 0;
        v17 = 0;
        do
        {
          v19 = (a5 + v18);
          *v19 = vaddq_f64(v15, vmlaq_f64(vmulq_n_f64(*(a3 + v18), v12), v14, *(result + v18)));
          v19[1] = vaddq_f64(v15, vmlaq_f64(vmulq_n_f64(*(a3 + v18 + 16), v12), v14, *(result + v18 + 16)));
          v17 += 4;
          v18 += 32;
        }

        while (v17 <= v9 - 4);
        v17 = v17;
      }

      else
      {
        v17 = 0;
      }

      if (v17 < v10)
      {
        do
        {
          *(a5 + 8 * v17) = *&v13 + v12 * *(a3 + 8 * v17) + *(result + 8 * v17) * v11;
          ++v17;
        }

        while (v9 != v17);
      }

      a5 += 8 * (a6 >> 3);
      a3 += v16;
      result += 8 * (a2 >> 3);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cmp8u(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, int *a8)
{
  v8 = *a8;
  if ((*a8 & 0xFFFFFFFE) == 2)
  {
    v9 = v8 != 2;
    v10 = a2;
    v11 = result;
    goto LABEL_9;
  }

  v9 = v8 == 1;
  if (v8 == 4 || v8 == 1)
  {
    v10 = a4;
    v11 = a3;
    a4 = a2;
    a3 = result;
LABEL_9:
    v13 = a7[1];
    v14 = v13 - 1;
    a7[1] = v13 - 1;
    if (v13)
    {
      LODWORD(v15) = *a7;
      do
      {
        if (v15 >= 1)
        {
          v16 = 0;
          do
          {
            *(a5 + v16) = (v9 ^ (*(a3 + v16) <= *(v11 + v16))) << 31 >> 31;
            ++v16;
            v15 = *a7;
          }

          while (v16 < v15);
          v14 = a7[1];
        }

        v17 = v14;
        a3 += a4;
        v11 += v10;
        a5 += a6;
        a7[1] = --v14;
      }

      while (v17);
    }

    return result;
  }

  if (v8 == 5 || v8 == 0)
  {
    v19 = a7[1];
    v20 = v19 - 1;
    a7[1] = v19 - 1;
    if (v19)
    {
      LODWORD(v21) = *a7;
      do
      {
        if (v21 >= 1)
        {
          v22 = 0;
          do
          {
            *(a5 + v22) = ((v8 == 0) ^ (*(result + v22) != *(a3 + v22))) << 31 >> 31;
            ++v22;
            v21 = *a7;
          }

          while (v22 < v21);
          v20 = a7[1];
        }

        v23 = v20;
        result += a2;
        a3 += a4;
        a5 += a6;
        a7[1] = --v20;
      }

      while (v23);
    }
  }

  return result;
}

uint64_t cv::cmp8s(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, int *a8)
{
  v8 = a7[1];
  v9 = *a7;
  v10 = *a8;
  if ((*a8 & 0xFFFFFFFE) == 2)
  {
    v11 = v10 != 2;
    v12 = a2;
    v13 = result;
    a2 = a4;
    result = a3;
LABEL_3:
    if (v11)
    {
      v14 = 0;
    }

    else
    {
      v14 = -1;
    }

    for (; v8; --v8)
    {
      if (v9 >= 4)
      {
        v15 = 0;
        do
        {
          v16 = result + v15;
          v17 = v13 + v15;
          if (*(result + v15 + 1) <= *(v13 + v15 + 1))
          {
            v18 = v14;
          }

          else
          {
            v18 = ~v14;
          }

          if (*(result + v15) <= *(v13 + v15))
          {
            v19 = v14;
          }

          else
          {
            v19 = ~v14;
          }

          v20 = (a5 + v15);
          *v20 = v19;
          v20[1] = v18;
          if (*(v16 + 3) <= *(v17 + 3))
          {
            v21 = v14;
          }

          else
          {
            v21 = ~v14;
          }

          if (*(v16 + 2) <= *(v17 + 2))
          {
            v22 = v14;
          }

          else
          {
            v22 = ~v14;
          }

          v20[2] = v22;
          v20[3] = v21;
          v15 += 4;
        }

        while (v15 <= v9 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < v9)
      {
        do
        {
          if (*(result + v15) <= *(v13 + v15))
          {
            v23 = v14;
          }

          else
          {
            v23 = ~v14;
          }

          *(a5 + v15++) = v23;
        }

        while (v15 < v9);
      }

      result += a2;
      v13 += v12;
      a5 += a6;
    }

    return result;
  }

  v11 = v10 == 1;
  if (v10 > 3)
  {
    if (v10 != 5)
    {
      v12 = a4;
      v13 = a3;
      if (v10 != 4)
      {
        return result;
      }

      goto LABEL_3;
    }
  }

  else if (v10)
  {
    v12 = a4;
    v13 = a3;
    if (v10 != 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v10)
  {
    v24 = -1;
  }

  else
  {
    v24 = 0;
  }

  for (; v8; --v8)
  {
    if (v9 >= 4)
    {
      v25 = 0;
      do
      {
        v26 = result + v25;
        v27 = a3 + v25;
        if (*(result + v25 + 1) == *(a3 + v25 + 1))
        {
          v28 = ~v24;
        }

        else
        {
          v28 = v24;
        }

        if (*(result + v25) == *(a3 + v25))
        {
          v29 = ~v24;
        }

        else
        {
          v29 = v24;
        }

        v30 = (a5 + v25);
        *v30 = v29;
        v30[1] = v28;
        if (*(v26 + 3) == *(v27 + 3))
        {
          v31 = ~v24;
        }

        else
        {
          v31 = v24;
        }

        if (*(v26 + 2) == *(v27 + 2))
        {
          v32 = ~v24;
        }

        else
        {
          v32 = v24;
        }

        v30[2] = v32;
        v30[3] = v31;
        v25 += 4;
      }

      while (v25 <= v9 - 4);
      v25 = v25;
    }

    else
    {
      v25 = 0;
    }

    if (v25 < v9)
    {
      do
      {
        if (*(result + v25) == *(a3 + v25))
        {
          v33 = ~v24;
        }

        else
        {
          v33 = v24;
        }

        *(a5 + v25++) = v33;
      }

      while (v25 < v9);
    }

    result += a2;
    a3 += a4;
    a5 += a6;
  }

  return result;
}

uint64_t cv::cmp16u(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int *a7, int *a8)
{
  v8 = a7[1];
  v9 = *a7;
  v10 = *a8;
  v11 = a2 >> 1;
  if ((*a8 & 0xFFFFFFFE) == 2)
  {
    v12 = v10 != 2;
    v13 = a2 >> 1;
    v14 = result;
    v11 = a4 >> 1;
    result = a3;
LABEL_3:
    if (v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = -1;
    }

    if (v8)
    {
      v16 = 2 * v13;
      v17 = 2 * v11;
      do
      {
        if (v9 >= 4)
        {
          v19 = 0;
          v18 = 0;
          do
          {
            v20 = result + v19;
            v21 = v14 + v19;
            if (*(result + v19 + 2) <= *(v14 + v19 + 2))
            {
              v22 = v15;
            }

            else
            {
              v22 = ~v15;
            }

            if (*(result + v19) <= *(v14 + v19))
            {
              v23 = v15;
            }

            else
            {
              v23 = ~v15;
            }

            v24 = (a5 + v18);
            *v24 = v23;
            v24[1] = v22;
            if (*(v20 + 6) <= *(v21 + 6))
            {
              v25 = v15;
            }

            else
            {
              v25 = ~v15;
            }

            if (*(v20 + 4) <= *(v21 + 4))
            {
              v26 = v15;
            }

            else
            {
              v26 = ~v15;
            }

            v24[2] = v26;
            v24[3] = v25;
            v18 += 4;
            v19 += 8;
          }

          while (v18 <= v9 - 4);
          v18 = v18;
        }

        else
        {
          v18 = 0;
        }

        if (v18 < v9)
        {
          do
          {
            if (*(result + 2 * v18) <= *(v14 + 2 * v18))
            {
              v27 = v15;
            }

            else
            {
              v27 = ~v15;
            }

            *(a5 + v18++) = v27;
          }

          while (v18 < v9);
        }

        a5 += a6;
        v14 += v16;
        result += v17;
        --v8;
      }

      while (v8);
    }

    return result;
  }

  v12 = v10 == 1;
  if (v10 > 3)
  {
    if (v10 != 5)
    {
      v13 = a4 >> 1;
      v14 = a3;
      if (v10 != 4)
      {
        return result;
      }

      goto LABEL_3;
    }
  }

  else if (v10)
  {
    v13 = a4 >> 1;
    v14 = a3;
    if (v10 != 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v10)
  {
    v28 = -1;
  }

  else
  {
    v28 = 0;
  }

  if (v8)
  {
    v29 = 2 * (a4 >> 1);
    v30 = 2 * v11;
    do
    {
      if (v9 >= 4)
      {
        v32 = 0;
        v31 = 0;
        do
        {
          v33 = result + v32;
          v34 = a3 + v32;
          if (*(result + v32 + 2) == *(a3 + v32 + 2))
          {
            v35 = ~v28;
          }

          else
          {
            v35 = v28;
          }

          if (*(result + v32) == *(a3 + v32))
          {
            v36 = ~v28;
          }

          else
          {
            v36 = v28;
          }

          v37 = (a5 + v31);
          *v37 = v36;
          v37[1] = v35;
          if (*(v33 + 6) == *(v34 + 6))
          {
            v38 = ~v28;
          }

          else
          {
            v38 = v28;
          }

          if (*(v33 + 4) == *(v34 + 4))
          {
            v39 = ~v28;
          }

          else
          {
            v39 = v28;
          }

          v37[2] = v39;
          v37[3] = v38;
          v31 += 4;
          v32 += 8;
        }

        while (v31 <= v9 - 4);
        v31 = v31;
      }

      else
      {
        v31 = 0;
      }

      if (v31 < v9)
      {
        do
        {
          if (*(result + 2 * v31) == *(a3 + 2 * v31))
          {
            v40 = ~v28;
          }

          else
          {
            v40 = v28;
          }

          *(a5 + v31++) = v40;
        }

        while (v31 < v9);
      }

      a5 += a6;
      a3 += v29;
      result += v30;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cmp16s(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int *a7, int *a8)
{
  v8 = *a8;
  v9 = a4 >> 1;
  if ((*a8 & 0xFFFFFFFE) == 2)
  {
    v10 = v8 != 2;
    v11 = a2 >> 1;
    v12 = result;
    goto LABEL_9;
  }

  v10 = v8 == 1;
  if (v8 == 4 || v8 == 1)
  {
    v11 = a4 >> 1;
    v12 = a3;
    v9 = a2 >> 1;
    a3 = result;
LABEL_9:
    v14 = a7[1];
    v15 = v14 - 1;
    a7[1] = v14 - 1;
    if (v14)
    {
      LODWORD(v16) = *a7;
      v17 = 2 * v11;
      v18 = 2 * v9;
      do
      {
        if (v16 >= 1)
        {
          v19 = 0;
          do
          {
            *(a5 + v19) = (v10 ^ (*(a3 + 2 * v19) <= *(v12 + 2 * v19))) << 31 >> 31;
            ++v19;
            v16 = *a7;
          }

          while (v19 < v16);
          v15 = a7[1];
        }

        v20 = v15;
        a5 += a6;
        a7[1] = --v15;
        v12 += v17;
        a3 += v18;
      }

      while (v20);
    }

    return result;
  }

  if (v8 == 5 || v8 == 0)
  {
    v22 = a7[1];
    v23 = v22 - 1;
    a7[1] = v22 - 1;
    if (v22)
    {
      LODWORD(v24) = *a7;
      v25 = 2 * v9;
      do
      {
        if (v24 >= 1)
        {
          v26 = 0;
          do
          {
            *(a5 + v26) = ((v8 == 0) ^ (*(result + 2 * v26) != *(a3 + 2 * v26))) << 31 >> 31;
            ++v26;
            v24 = *a7;
          }

          while (v26 < v24);
          v23 = a7[1];
        }

        v27 = v23;
        a5 += a6;
        a7[1] = --v23;
        a3 += v25;
        result += 2 * (a2 >> 1);
      }

      while (v27);
    }
  }

  return result;
}

uint64_t cv::cmp32s(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int *a7, int *a8)
{
  v8 = a7[1];
  v9 = *a7;
  v10 = *a8;
  v11 = a2 >> 2;
  if ((*a8 & 0xFFFFFFFE) == 2)
  {
    v12 = v10 != 2;
    v13 = a2 >> 2;
    v14 = result;
    v11 = a4 >> 2;
    result = a3;
LABEL_3:
    if (v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = -1;
    }

    if (v8)
    {
      v16 = 4 * v13;
      v17 = 4 * v11;
      do
      {
        if (v9 >= 4)
        {
          v19 = 0;
          v18 = 0;
          do
          {
            v20 = result + v19;
            v21 = v14 + v19;
            if (*(result + v19 + 4) <= *(v14 + v19 + 4))
            {
              v22 = v15;
            }

            else
            {
              v22 = ~v15;
            }

            if (*(result + v19) <= *(v14 + v19))
            {
              v23 = v15;
            }

            else
            {
              v23 = ~v15;
            }

            v24 = (a5 + v18);
            *v24 = v23;
            v24[1] = v22;
            v27 = v20 + 8;
            v26 = *(v20 + 8);
            v25 = *(v27 + 4);
            v29 = v21 + 8;
            v28 = *(v21 + 8);
            if (v25 <= *(v29 + 4))
            {
              v30 = v15;
            }

            else
            {
              v30 = ~v15;
            }

            if (v26 <= v28)
            {
              v31 = v15;
            }

            else
            {
              v31 = ~v15;
            }

            v24[2] = v31;
            v24[3] = v30;
            v18 += 4;
            v19 += 16;
          }

          while (v18 <= v9 - 4);
          v18 = v18;
        }

        else
        {
          v18 = 0;
        }

        if (v18 < v9)
        {
          do
          {
            if (*(result + 4 * v18) <= *(v14 + 4 * v18))
            {
              v32 = v15;
            }

            else
            {
              v32 = ~v15;
            }

            *(a5 + v18++) = v32;
          }

          while (v18 < v9);
        }

        a5 += a6;
        v14 += v16;
        result += v17;
        --v8;
      }

      while (v8);
    }

    return result;
  }

  v12 = v10 == 1;
  if (v10 > 3)
  {
    if (v10 != 5)
    {
      v13 = a4 >> 2;
      v14 = a3;
      if (v10 != 4)
      {
        return result;
      }

      goto LABEL_3;
    }
  }

  else if (v10)
  {
    v13 = a4 >> 2;
    v14 = a3;
    if (v10 != 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v10)
  {
    v33 = -1;
  }

  else
  {
    v33 = 0;
  }

  if (v8)
  {
    v34 = 4 * (a4 >> 2);
    v35 = 4 * v11;
    do
    {
      if (v9 >= 4)
      {
        v37 = 0;
        v36 = 0;
        do
        {
          v38 = result + v37;
          v39 = a3 + v37;
          if (*(result + v37 + 4) == *(a3 + v37 + 4))
          {
            v40 = ~v33;
          }

          else
          {
            v40 = v33;
          }

          if (*(result + v37) == *(a3 + v37))
          {
            v41 = ~v33;
          }

          else
          {
            v41 = v33;
          }

          v42 = (a5 + v36);
          *v42 = v41;
          v42[1] = v40;
          v45 = v38 + 8;
          v44 = *(v38 + 8);
          v43 = *(v45 + 4);
          v47 = v39 + 8;
          v46 = *(v39 + 8);
          if (v43 == *(v47 + 4))
          {
            v48 = ~v33;
          }

          else
          {
            v48 = v33;
          }

          if (v44 == v46)
          {
            v49 = ~v33;
          }

          else
          {
            v49 = v33;
          }

          v42[2] = v49;
          v42[3] = v48;
          v36 += 4;
          v37 += 16;
        }

        while (v36 <= v9 - 4);
        v36 = v36;
      }

      else
      {
        v36 = 0;
      }

      if (v36 < v9)
      {
        do
        {
          if (*(result + 4 * v36) == *(a3 + 4 * v36))
          {
            v50 = ~v33;
          }

          else
          {
            v50 = v33;
          }

          *(a5 + v36++) = v50;
        }

        while (v36 < v9);
      }

      a5 += a6;
      a3 += v34;
      result += v35;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cmp32f(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int *a7, int *a8)
{
  v8 = a7[1];
  v9 = *a7;
  v10 = *a8;
  v11 = a2 >> 2;
  if ((*a8 & 0xFFFFFFFE) == 2)
  {
    v12 = v10 != 2;
    v13 = a2 >> 2;
    v14 = result;
    v11 = a4 >> 2;
    result = a3;
LABEL_3:
    if (v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = -1;
    }

    if (v8)
    {
      v16 = 4 * v13;
      v17 = 4 * v11;
      do
      {
        if (v9 >= 4)
        {
          v19 = 0;
          v18 = 0;
          do
          {
            v20 = result + v19;
            v21 = v14 + v19;
            if (*(result + v19) <= *(v14 + v19))
            {
              v22 = 0;
            }

            else
            {
              v22 = -1;
            }

            v23 = v15 ^ v22;
            if (*(result + v19 + 4) <= *(v14 + v19 + 4))
            {
              v24 = 0;
            }

            else
            {
              v24 = -1;
            }

            v25 = (a5 + v18);
            *v25 = v23;
            v25[1] = v15 ^ v24;
            v26 = *(v20 + 12);
            if (*(v20 + 8) <= *(v21 + 8))
            {
              v27 = 0;
            }

            else
            {
              v27 = -1;
            }

            v28 = v15 ^ v27;
            if (v26 <= *(v21 + 12))
            {
              v29 = 0;
            }

            else
            {
              v29 = -1;
            }

            v25[2] = v28;
            v25[3] = v15 ^ v29;
            v18 += 4;
            v19 += 16;
          }

          while (v18 <= v9 - 4);
          v18 = v18;
        }

        else
        {
          v18 = 0;
        }

        if (v18 < v9)
        {
          do
          {
            if (*(result + 4 * v18) <= *(v14 + 4 * v18))
            {
              v30 = 0;
            }

            else
            {
              v30 = -1;
            }

            *(a5 + v18++) = v15 ^ v30;
          }

          while (v18 < v9);
        }

        a5 += a6;
        v14 += v16;
        result += v17;
        --v8;
      }

      while (v8);
    }

    return result;
  }

  v12 = v10 == 1;
  if (v10 > 3)
  {
    if (v10 != 5)
    {
      v13 = a4 >> 2;
      v14 = a3;
      if (v10 != 4)
      {
        return result;
      }

      goto LABEL_3;
    }
  }

  else if (v10)
  {
    v13 = a4 >> 2;
    v14 = a3;
    if (v10 != 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v10)
  {
    v31 = -1;
  }

  else
  {
    v31 = 0;
  }

  if (v8)
  {
    v32 = 4 * (a4 >> 2);
    v33 = 4 * v11;
    do
    {
      if (v9 >= 4)
      {
        v35 = 0;
        v34 = 0;
        do
        {
          v36 = result + v35;
          v37 = a3 + v35;
          if (*(result + v35) == *(a3 + v35))
          {
            v38 = -1;
          }

          else
          {
            v38 = 0;
          }

          v39 = v31 ^ v38;
          if (*(result + v35 + 4) == *(a3 + v35 + 4))
          {
            v40 = -1;
          }

          else
          {
            v40 = 0;
          }

          v41 = (a5 + v34);
          *v41 = v39;
          v41[1] = v31 ^ v40;
          v42 = *(v36 + 12);
          if (*(v36 + 8) == *(v37 + 8))
          {
            v43 = -1;
          }

          else
          {
            v43 = 0;
          }

          v44 = v31 ^ v43;
          if (v42 == *(v37 + 12))
          {
            v45 = -1;
          }

          else
          {
            v45 = 0;
          }

          v41[2] = v44;
          v41[3] = v31 ^ v45;
          v34 += 4;
          v35 += 16;
        }

        while (v34 <= v9 - 4);
        v34 = v34;
      }

      else
      {
        v34 = 0;
      }

      if (v34 < v9)
      {
        do
        {
          if (*(result + 4 * v34) == *(a3 + 4 * v34))
          {
            v46 = -1;
          }

          else
          {
            v46 = 0;
          }

          *(a5 + v34++) = v31 ^ v46;
        }

        while (v34 < v9);
      }

      a5 += a6;
      a3 += v32;
      result += v33;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cmp64f(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int *a7, int *a8)
{
  v8 = a7[1];
  v9 = *a7;
  v10 = *a8;
  v11 = a2 >> 3;
  if ((*a8 & 0xFFFFFFFE) == 2)
  {
    v12 = v10 != 2;
    v13 = a2 >> 3;
    v14 = result;
    v11 = a4 >> 3;
    result = a3;
LABEL_3:
    if (v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = -1;
    }

    if (v8)
    {
      v16 = 8 * v13;
      v17 = 8 * v11;
      do
      {
        if (v9 >= 4)
        {
          v19 = 0;
          v18 = 0;
          do
          {
            v20 = result + v19;
            v21 = v14 + v19;
            if (*(result + v19) <= *(v14 + v19))
            {
              v22 = 0;
            }

            else
            {
              v22 = -1;
            }

            v23 = v15 ^ v22;
            if (*(result + v19 + 8) <= *(v14 + v19 + 8))
            {
              v24 = 0;
            }

            else
            {
              v24 = -1;
            }

            v25 = (a5 + v18);
            *v25 = v23;
            v25[1] = v15 ^ v24;
            v26 = *(v20 + 24);
            if (*(v20 + 16) <= *(v21 + 16))
            {
              v27 = 0;
            }

            else
            {
              v27 = -1;
            }

            v28 = v15 ^ v27;
            if (v26 <= *(v21 + 24))
            {
              v29 = 0;
            }

            else
            {
              v29 = -1;
            }

            v25[2] = v28;
            v25[3] = v15 ^ v29;
            v18 += 4;
            v19 += 32;
          }

          while (v18 <= v9 - 4);
          v18 = v18;
        }

        else
        {
          v18 = 0;
        }

        if (v18 < v9)
        {
          do
          {
            if (*(result + 8 * v18) <= *(v14 + 8 * v18))
            {
              v30 = 0;
            }

            else
            {
              v30 = -1;
            }

            *(a5 + v18++) = v15 ^ v30;
          }

          while (v18 < v9);
        }

        a5 += a6;
        v14 += v16;
        result += v17;
        --v8;
      }

      while (v8);
    }

    return result;
  }

  v12 = v10 == 1;
  if (v10 > 3)
  {
    if (v10 != 5)
    {
      v13 = a4 >> 3;
      v14 = a3;
      if (v10 != 4)
      {
        return result;
      }

      goto LABEL_3;
    }
  }

  else if (v10)
  {
    v13 = a4 >> 3;
    v14 = a3;
    if (v10 != 1)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v10)
  {
    v31 = -1;
  }

  else
  {
    v31 = 0;
  }

  if (v8)
  {
    v32 = 8 * (a4 >> 3);
    v33 = 8 * v11;
    do
    {
      if (v9 >= 4)
      {
        v35 = 0;
        v34 = 0;
        do
        {
          v36 = result + v35;
          v37 = a3 + v35;
          if (*(result + v35) == *(a3 + v35))
          {
            v38 = -1;
          }

          else
          {
            v38 = 0;
          }

          v39 = v31 ^ v38;
          if (*(result + v35 + 8) == *(a3 + v35 + 8))
          {
            v40 = -1;
          }

          else
          {
            v40 = 0;
          }

          v41 = (a5 + v34);
          *v41 = v39;
          v41[1] = v31 ^ v40;
          v42 = *(v36 + 24);
          if (*(v36 + 16) == *(v37 + 16))
          {
            v43 = -1;
          }

          else
          {
            v43 = 0;
          }

          v44 = v31 ^ v43;
          if (v42 == *(v37 + 24))
          {
            v45 = -1;
          }

          else
          {
            v45 = 0;
          }

          v41[2] = v44;
          v41[3] = v31 ^ v45;
          v34 += 4;
          v35 += 32;
        }

        while (v34 <= v9 - 4);
        v34 = v34;
      }

      else
      {
        v34 = 0;
      }

      if (v34 < v9)
      {
        do
        {
          if (*(result + 8 * v34) == *(a3 + 8 * v34))
          {
            v46 = -1;
          }

          else
          {
            v46 = 0;
          }

          *(a5 + v34++) = v31 ^ v46;
        }

        while (v34 < v9);
      }

      a5 += a6;
      a3 += v32;
      result += v33;
      --v8;
    }

    while (v8);
  }

  return result;
}

void cv::crossCorr(cv::Mat *a1, cv::Mat *a2, int32x2_t *this, int *a4, unsigned __int16 a5, int32x2_t *a6, char a7, double a8)
{
  v280[5] = *MEMORY[0x277D85DE8];
  v235 = 0;
  v234 = 0;
  v236 = 0;
  v14 = *a2;
  *v226 = *a2;
  v15 = *(a2 + 2);
  v16 = *(a2 + 24);
  v228 = v16;
  v229 = *(a2 + 40);
  v17 = *(a2 + 7);
  v227 = v15;
  v230 = v17;
  v231 = &v226[2];
  v232 = v233;
  v233[1] = 0;
  v233[0] = 0;
  if (v16)
  {
    atomic_fetch_add(v16, 1u);
    v18 = *(a2 + 1);
  }

  else
  {
    v18 = DWORD1(v14);
  }

  if (v18 > 2)
  {
    v226[1] = 0;
    cv::Mat::copySize(v226, a2);
  }

  else
  {
    v19 = *(a2 + 9);
    v20 = v232;
    *v232 = *v19;
    v20[1] = v19[1];
  }

  v21 = v226[0];
  if (*(a1 + 1) > 2 || v226[1] > 2 || this->i32[1] >= 3)
  {
    std::string::basic_string[abi:ne200100]<0>(v273, "img.dims <= 2 && templ.dims <= 2 && corr.dims <= 2");
    std::string::basic_string[abi:ne200100]<0>(v264, "crossCorr");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/templmatch.cpp");
    v22 = cv::Exception::Exception(v277, 4294967081, v273, v264, __p, 60);
    cv::error(v22, v23);
  }

  v183 = *a1;
  v24 = *a1 & 7;
  v25 = v24;
  if (v24 != (v226[0] & 7))
  {
    if (v24 <= 5)
    {
      v26 = 5;
    }

    else
    {
      v26 = *a1 & 7;
    }

    v25 = v226[0] & 7;
    if (v25 != v26)
    {
      cv::_OutputArray::_OutputArray(v277, v226);
      cv::Mat::convertTo(a2, v277, v26, 1.0, 0.0);
      v25 = v226[0] & 7;
    }

    if (v24 != v25 && v25 != 5)
    {
      std::string::basic_string[abi:ne200100]<0>(v273, "depth == tdepth || tdepth == CV_32F");
      std::string::basic_string[abi:ne200100]<0>(v264, "crossCorr");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/templmatch.cpp");
      v27 = cv::Exception::Exception(v277, 4294967081, v273, v264, __p, 68);
      cv::error(v27, v28);
    }
  }

  if (a4[1] >= v226[2] + *(a1 + 2) || *a4 >= v226[3] + *(a1 + 3))
  {
    std::string::basic_string[abi:ne200100]<0>(v273, "corrsize.height <= img.rows + templ.rows - 1 && corrsize.width <= img.cols + templ.cols - 1");
    std::string::basic_string[abi:ne200100]<0>(v264, "crossCorr");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/templmatch.cpp");
    v29 = cv::Exception::Exception(v277, 4294967081, v273, v264, __p, 70);
    cv::error(v29, v30);
  }

  if ((a5 & 0xFF8) != 0 && a8 != 0.0)
  {
    std::string::basic_string[abi:ne200100]<0>(v273, "ccn == 1 || delta == 0");
    std::string::basic_string[abi:ne200100]<0>(v264, "crossCorr");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/templmatch.cpp");
    v31 = cv::Exception::Exception(v277, 4294967081, v273, v264, __p, 72);
    cv::error(v31, v32);
  }

  v33 = *a4;
  v34 = a4[1];
  v35 = a5 & 0xFFF;
  v177 = a1;
  if (this->i32[1] > 2 || this[1].i32[0] != v34 || this[1].i32[1] != v33 || (this->i32[0] & 0xFFF) != v35 || !*&this[2])
  {
    v277[0] = a4[1];
    v277[1] = v33;
    cv::Mat::create(this, 2, v277, v35);
    v34 = this[1].i32[0];
    v33 = this[1].i32[1];
  }

  v36 = a5 & 7;
  if (v25 <= v36)
  {
    v37 = a5 & 7;
  }

  else
  {
    v37 = v25;
  }

  if (v37 <= 5)
  {
    v37 = 5;
  }

  if (v24 > 1)
  {
    v37 = 6;
  }

  v188 = v37;
  v38 = v226[2];
  v39 = rint(v226[3] * 4.5);
  if (257 - v226[3] > v39)
  {
    LODWORD(v39) = 257 - v226[3];
  }

  if (v33 >= v39)
  {
    v33 = v39;
  }

  OptimalDFTSize = cv::getOptimalDFTSize((v226[3] + v33 - 1));
  v41 = 257 - v38;
  v42 = rint(v38 * 4.5);
  if (257 - v38 <= v42)
  {
    v41 = v42;
  }

  if (v34 < v41)
  {
    v41 = v34;
  }

  if (OptimalDFTSize <= 2)
  {
    v43 = 2;
  }

  else
  {
    v43 = OptimalDFTSize;
  }

  v44 = cv::getOptimalDFTSize((v41 + v226[2] - 1));
  if (v44 <= 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v273, "the input arrays are too big");
    std::string::basic_string[abi:ne200100]<0>(v264, "crossCorr");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/templmatch.cpp");
    v45 = cv::Exception::Exception(v277, 4294967085, v273, v264, __p, 89);
    cv::error(v45, v46);
  }

  v47 = *&v226[2];
  v187 = (v21 >> 3) & 0x1FF;
  v48 = this[1];
  v278 = &v277[2];
  v279 = v280;
  v280[0] = 0;
  v280[1] = 0;
  v277[0] = 1124007936;
  memset(&v277[1], 0, 60);
  LODWORD(v273[0]) = v44 * (v187 + 1);
  DWORD1(v273[0]) = v43;
  v49 = v43;
  cv::Mat::create(v277, 2, v273, v188);
  v274 = v273 + 8;
  v275 = v276;
  v276[1] = 0;
  v276[0] = 0;
  LODWORD(v273[0]) = 1124007936;
  memset(v273 + 4, 0, 48);
  v273[3] = 0u;
  v264[0] = __PAIR64__(v43, v44);
  cv::Mat::create(v273, 2, v264, v188);
  v50 = 0;
  v186 = v44;
  v189 = (v183 >> 3) & 0x1FF;
  v51 = vsub_s32(__PAIR64__(v43, v44), v47);
  v52 = vadd_s32(v51, 0x100000001);
  v53 = vcgt_s32(v48, v51);
  v54 = 2 * v25;
  if (v187 && v25 != v188)
  {
    v50 = (v226[2] * v226[3]) << ((0xFA50u >> v54) & 3);
  }

  v55 = vbsl_s8(v53, v52, v48);
  v171 = v55;
  if (v189)
  {
    if (v24 != v188)
    {
      v56 = vadd_s32(v55, vadd_s32(*&v226[2], -1));
      v57 = vmul_lane_s32(v56, v56, 1).u32[0] << ((0xFA50u >> (2 * v24)) & 3);
      if (v50 <= v57)
      {
        v50 = v57;
      }
    }
  }

  if (((v183 | a5) & 0xFF8) != 0 && v36 != v188)
  {
    v58 = vmul_lane_s32(v171, v171, 1).u32[0] << ((0xFA50u >> (2 * v36)) & 3);
    if (v50 <= v58)
    {
      v50 = v58;
    }
  }

  v170 = this;
  v175 = 2 * v36;
  if (v50 <= (v235 - v234))
  {
    if (v50 < (v235 - v234))
    {
      v235 = v234 + v50;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(&v234, v50 - (v235 - v234));
  }

  v59 = 0;
  v180 = (0xFA50u >> v54) & 3;
  do
  {
    *v264 = *v226;
    v266 = v228;
    v267 = v229;
    v265 = v227;
    v268 = v230;
    v269 = &v264[1];
    v270 = &v271;
    v271 = 0;
    v272 = 0;
    if (v228)
    {
      atomic_fetch_add(v228, 1u);
    }

    if (v226[1] > 2)
    {
      HIDWORD(v264[0]) = 0;
      cv::Mat::copySize(v264, v226);
    }

    else
    {
      v60 = v232;
      v61 = v270;
      *v270 = *v232;
      v61[1] = v60[1];
    }

    v210.i32[0] = 0;
    v210.i32[1] = v59 * v186;
    v210.i64[1] = __PAIR64__(v186, v49);
    cv::Mat::Mat(__p, v277, &v210);
    v255.i32[0] = 0;
    v255.i32[1] = v59 * v186;
    v255.u64[1] = vrev64_s32(*&v226[2]);
    cv::Mat::Mat(&v210, v277, &v255);
    if (v187)
    {
      if (v25 == v188)
      {
        v255 = v210;
        v257 = v212;
        v258 = v213;
        v256 = v211;
        v259 = v214;
        v260 = &v255.i8[8];
        v261 = &v262;
        v262 = 0;
        v263 = 0;
        if (v212)
        {
          atomic_fetch_add(v212, 1u);
        }

        if (v210.i32[1] > 2)
        {
          v255.i32[1] = 0;
          cv::Mat::copySize(&v255, &v210);
        }

        else
        {
          v63 = v216;
          v64 = v261;
          *v261 = *v216;
          v64[1] = v63[1];
        }
      }

      else
      {
        v62 = v231[1];
        v255.i32[2] = *v231;
        v255.i32[3] = v62;
        v256 = v234;
        *&v257 = 0;
        v260 = &v255.i8[8];
        v261 = &v262;
        v255.i32[1] = 2;
        v255.i32[0] = v25 | 0x42FF4000;
        v262 = v62 << v180;
        v263 = (1 << ((0xFA50u >> v54) & 3));
        v259 = 0;
        *(&v258 + 1) = v234 + (v62 << v180) * v255.i32[2];
        *(&v257 + 1) = v234;
        *&v258 = *(&v258 + 1);
      }

      if (v257)
      {
        atomic_fetch_add(v257, 1u);
      }

      if (v266 && atomic_fetch_add(v266, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v264);
      }

      v265 = 0;
      v267 = 0uLL;
      *(&v266 + 1) = 0;
      if (v264[0] <= 0)
      {
        *&v266 = 0;
        LODWORD(v264[0]) = v255.i32[0];
      }

      else
      {
        v65 = 0;
        v66 = v269;
        do
        {
          *(v66 + v65++) = 0;
        }

        while (v65 < SHIDWORD(v264[0]));
        *&v266 = 0;
        LODWORD(v264[0]) = v255.i32[0];
        if (SHIDWORD(v264[0]) > 2)
        {
          goto LABEL_94;
        }
      }

      if (v255.i32[1] <= 2)
      {
        HIDWORD(v264[0]) = v255.i32[1];
        v264[1] = v255.i64[1];
        v67 = v261;
        v68 = v270;
        *v270 = *v261;
        v68[1] = v67[1];
        goto LABEL_95;
      }

LABEL_94:
      cv::Mat::copySize(v264, &v255);
LABEL_95:
      v267 = v258;
      v266 = v257;
      v265 = v256;
      v268 = v259;
      if (v257 && atomic_fetch_add(v257, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v255);
      }

      v256 = 0;
      v258 = 0uLL;
      *(&v257 + 1) = 0;
      if (v255.i32[1] >= 1)
      {
        v69 = 0;
        v70 = v260;
        do
        {
          *&v70[4 * v69++] = 0;
        }

        while (v69 < v255.i32[1]);
      }

      *&v257 = 0;
      if (v261)
      {
        v71 = v261 == &v262;
      }

      else
      {
        v71 = 1;
      }

      if (!v71)
      {
        free(v261);
      }

      v255.i64[0] = v59;
      cv::mixChannels(v226, 1, v264, 1, &v255, 1);
    }

    if (v211 != v265)
    {
      cv::_OutputArray::_OutputArray(&v255, &v210);
      cv::Mat::convertTo(v264, &v255, v210.i8[0] & 7, 1.0, 0.0);
    }

    if (SHIDWORD(__p[1]) > v226[3])
    {
      v200.i32[0] = 0;
      v200.i32[1] = v226[2];
      v192.i64[0] = __PAIR64__(HIDWORD(__p[1]), v226[3]);
      cv::Mat::Mat(&v255, __p, &v200, &v192);
      v200 = 0u;
      v201 = 0u;
      cv::Mat::operator=(&v255, &v200);
      if (v257 && atomic_fetch_add(v257, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v255);
      }

      v256 = 0;
      v258 = 0uLL;
      *(&v257 + 1) = 0;
      if (v255.i32[1] >= 1)
      {
        v72 = 0;
        v73 = v260;
        do
        {
          *&v73[4 * v72++] = 0;
        }

        while (v72 < v255.i32[1]);
      }

      *&v257 = 0;
      if (v261)
      {
        v74 = v261 == &v262;
      }

      else
      {
        v74 = 1;
      }

      if (!v74)
      {
        free(v261);
      }
    }

    cv::_InputArray::_InputArray(&v255, __p);
    cv::_OutputArray::_OutputArray(&v200, __p);
    cv::dft(&v255, &v200, 0);
    if (v212 && atomic_fetch_add(v212, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(&v210);
    }

    v211 = 0;
    v213 = 0uLL;
    *(&v212 + 1) = 0;
    if (v210.i32[1] >= 1)
    {
      v75 = 0;
      v76 = v215;
      do
      {
        *(v76 + 4 * v75++) = 0;
      }

      while (v75 < v210.i32[1]);
    }

    *&v212 = 0;
    if (v216)
    {
      v77 = v216 == v217;
    }

    else
    {
      v77 = 1;
    }

    if (!v77)
    {
      free(v216);
    }

    if (v220 && atomic_fetch_add(v220, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(__p);
    }

    v219 = 0;
    v221 = 0uLL;
    *(&v220 + 1) = 0;
    if (SHIDWORD(__p[0]) >= 1)
    {
      v78 = 0;
      v79 = v223;
      do
      {
        *(v79 + 4 * v78++) = 0;
      }

      while (v78 < SHIDWORD(__p[0]));
    }

    *&v220 = 0;
    if (v224)
    {
      v80 = v224 == v225;
    }

    else
    {
      v80 = 1;
    }

    if (!v80)
    {
      free(v224);
    }

    if (v266 && atomic_fetch_add(v266, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v264);
    }

    v265 = 0;
    v267 = 0uLL;
    *(&v266 + 1) = 0;
    if (SHIDWORD(v264[0]) >= 1)
    {
      v81 = 0;
      v82 = v269;
      do
      {
        *(v82 + v81++) = 0;
      }

      while (v81 < SHIDWORD(v264[0]));
    }

    *&v266 = 0;
    if (v270)
    {
      v83 = v270 == &v271;
    }

    else
    {
      v83 = 1;
    }

    if (!v83)
    {
      free(v270);
    }

    v71 = v59++ == v187;
  }

  while (!v71);
  v85 = this[1].i32[0];
  v84 = this[1].i32[1];
  v86 = *(v177 + 7);
  v209 = vrev64_s32(**(v177 + 8));
  *v208 = 0;
  v87 = *v177;
  *v264 = *v177;
  v88 = *(v177 + 24);
  v266 = v88;
  v267 = *(v177 + 40);
  v265 = *(v177 + 2);
  v268 = v86;
  v269 = &v264[1];
  v270 = &v271;
  v272 = 0;
  v271 = 0;
  if (v88)
  {
    atomic_fetch_add(v88, 1u);
    v89 = *(v177 + 1);
  }

  else
  {
    v89 = DWORD1(v87);
  }

  if (v89 > 2)
  {
    HIDWORD(v264[0]) = 0;
    cv::Mat::copySize(v264, v177);
  }

  else
  {
    v90 = *(v177 + 9);
    v91 = v270;
    *v270 = *v90;
    v91[1] = v90[1];
  }

  if ((a7 & 0x10) == 0)
  {
    cv::Mat::locateROI(v177, &v209, v208);
    cv::Mat::adjustROI(v264, v208[1], v209.i32[1] - (v208[1] + *(v177 + 2)), v208[0], v209.i32[0] - (v208[0] + *(v177 + 3)));
  }

  v167 = (v171.i32[0] + v85 - 1) / v171.i32[0] * ((v171.i32[1] + v84 - 1) / v171.i32[1]);
  v168 = (v171.i32[1] + v84 - 1) / v171.i32[1];
  if (v167 >= 1)
  {
    v92 = 0;
    v166 = (0xFA50uLL >> (2 * v24)) & 3;
    v165 = (0xFA50u >> v175) & 3;
    v176 = (1 << ((0xFA50u >> v175) & 3));
    do
    {
      v93.i32[0] = v92 / v168;
      v93.i32[1] = v92 % v168;
      v94 = vmul_s32(v93, v171);
      v181 = vmin_s32(vsub_s32(this[1], v94), v171);
      v182 = v94;
      v184 = vadd_s32(vadd_s32(*&v226[2], -1), v181);
      v95 = vadd_s32(vsub_s32(v94, vrev64_s32(*a6)), vrev64_s32(*v208));
      v96 = vmax_s32(v95, 0);
      v97 = vmin_s32(vadd_s32(v95, v184), v264[1]);
      *v210.i8 = vzip1_s32(v96, v97);
      *v255.i8 = vzip2_s32(v96, v97);
      cv::Mat::Mat(__p, v264, &v210, &v255);
      v255.i64[0] = 0;
      v255.u64[1] = vrev64_s32(v184);
      cv::Mat::Mat(&v210, v273, &v255);
      v174 = vsub_s32(v97, v96);
      *v200.i8 = vrev64_s32(vsub_s32(v96, v95));
      v200.u64[1] = vrev64_s32(v174);
      cv::Mat::Mat(&v255, v273, &v200);
      v172 = v92;
      v98.i64[0] = v182;
      v98.u64[1] = v181;
      v192 = vrev64q_s32(v98);
      cv::Mat::Mat(&v200, this, &v192);
      v99 = 0;
      v173 = (v174.i32[1] << v166) * v174.i32[0];
      v185 = vcgt_s32(v184, v174).i32[1] | (v174.i32[0] < v184.i32[0]);
      v178 = (v181.i32[1] << v165) * v181.i32[0];
      do
      {
        v193 = v219;
        v192 = *__p;
        v194 = v220;
        v195 = v221;
        v196 = v222;
        v197 = &v192.i8[8];
        v198 = v199;
        v199[0] = 0;
        v199[1] = 0;
        if (v220)
        {
          atomic_fetch_add(v220, 1u);
        }

        if (SHIDWORD(__p[0]) > 2)
        {
          v192.i32[1] = 0;
          cv::Mat::copySize(&v192, __p);
        }

        else
        {
          v100 = v224;
          v101 = v198;
          *v198 = *v224;
          v101[1] = v100[1];
        }

        *v248 = 0u;
        v247 = 0u;
        cv::Mat::operator=(v273, &v247);
        if (v189)
        {
          if (v24 == v188)
          {
            v247 = v255;
            *&v248[8] = v257;
            v249 = v258;
            *v248 = v256;
            v250 = v259;
            v251 = &v247.i64[1];
            v252 = &v253;
            v253 = 0;
            v254 = 0;
            if (v257)
            {
              atomic_fetch_add(v257, 1u);
            }

            if (v255.i32[1] > 2)
            {
              v247.i32[1] = 0;
              cv::Mat::copySize(&v247, &v255);
            }

            else
            {
              v102 = v261;
              v103 = v252;
              *v252 = *v261;
              v103[1] = v102[1];
            }
          }

          else
          {
            v247.u64[1] = v174;
            *v248 = v234;
            v251 = &v247.i64[1];
            v252 = &v253;
            v247.i32[1] = 2;
            v247.i32[0] = v24 | 0x42FF4000;
            v253 = v174.i32[1] << v166;
            v254 = 1 << v166;
            v250 = 0;
            *(&v249 + 1) = v234 + v173;
            *&v248[16] = v234;
            *&v249 = v234 + v173;
          }

          if (*&v248[8])
          {
            atomic_fetch_add(*&v248[8], 1u);
          }

          if (v194 && atomic_fetch_add(v194, 0xFFFFFFFF) == 1)
          {
            cv::Mat::deallocate(&v192);
          }

          v193 = 0;
          v195 = 0uLL;
          *(&v194 + 1) = 0;
          if (v192.i64[0] <= 0)
          {
            *&v194 = 0;
            v192.i32[0] = v247.i32[0];
          }

          else
          {
            v104 = 0;
            v105 = v197;
            do
            {
              *&v105[4 * v104++] = 0;
            }

            while (v104 < v192.i32[1]);
            *&v194 = 0;
            v192.i32[0] = v247.i32[0];
            if (v192.i32[1] > 2)
            {
LABEL_193:
              cv::Mat::copySize(&v192, &v247);
              goto LABEL_194;
            }
          }

          if (v247.i32[1] > 2)
          {
            goto LABEL_193;
          }

          v192.i32[1] = v247.i32[1];
          v192.i64[1] = v247.i64[1];
          v106 = v252;
          v107 = v198;
          *v198 = *v252;
          v107[1] = v106[1];
LABEL_194:
          v193 = *v248;
          v195 = v249;
          v194 = *&v248[8];
          v196 = v250;
          if (*&v248[8] && atomic_fetch_add(*&v248[8], 0xFFFFFFFF) == 1)
          {
            cv::Mat::deallocate(&v247);
          }

          *v248 = 0;
          v249 = 0uLL;
          *&v248[16] = 0;
          if (v247.i32[1] >= 1)
          {
            v108 = 0;
            v109 = v251;
            do
            {
              *(v109 + v108++) = 0;
            }

            while (v108 < v247.i32[1]);
          }

          *&v248[8] = 0;
          if (v252)
          {
            v110 = v252 == &v253;
          }

          else
          {
            v110 = 1;
          }

          if (!v110)
          {
            free(v252);
          }

          v247.i64[0] = v99;
          cv::mixChannels(__p, 1, &v192, 1, &v247, 1);
        }

        if (v256 != v193)
        {
          cv::_OutputArray::_OutputArray(&v247, &v255);
          cv::Mat::convertTo(&v192, &v247, v255.i8[0] & 7, 1.0, 0.0);
        }

        if (v185)
        {
          cv::_InputArray::_InputArray(&v247, &v255);
          cv::_OutputArray::_OutputArray(&v237, &v210);
          memset(v191, 0, sizeof(v191));
          cv::copyMakeBorder(&v247, &v237);
        }

        cv::_InputArray::_InputArray(&v247, v273);
        cv::_OutputArray::_OutputArray(&v237, v273);
        cv::dft(&v247, &v237, 0);
        v111 = v99 * v186;
        if (!v187)
        {
          v111 = 0;
        }

        LODWORD(v237) = 0;
        HIDWORD(v237) = v111;
        v238 = __PAIR64__(v186, v49);
        cv::Mat::Mat(&v247, v277, &v237);
        cv::_InputArray::_InputArray(&v237, v273);
        cv::_InputArray::_InputArray(v191, &v247);
        cv::_OutputArray::_OutputArray(v190, v273);
        cv::mulSpectrums(&v237, v191, v190, 0, 1);
        cv::_InputArray::_InputArray(&v237, v273);
        cv::_OutputArray::_OutputArray(v191, v273);
        cv::dft(&v237, v191, 3);
        *&v191[0] = 0;
        *(&v191[0] + 1) = __PAIR64__(v181.u32[0], v181.u32[1]);
        cv::Mat::Mat(&v237, v273, v191);
        if (v240)
        {
          atomic_fetch_add(v240, 1u);
        }

        if (v194 && atomic_fetch_add(v194, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(&v192);
        }

        v193 = 0;
        v195 = 0uLL;
        *(&v194 + 1) = 0;
        if (v192.i64[0] <= 0)
        {
          *&v194 = 0;
          v192.i32[0] = v237;
        }

        else
        {
          v112 = 0;
          v113 = v197;
          do
          {
            *&v113[4 * v112++] = 0;
          }

          while (v112 < v192.i32[1]);
          *&v194 = 0;
          v192.i32[0] = v237;
          if (v192.i32[1] > 2)
          {
LABEL_225:
            cv::Mat::copySize(&v192, &v237);
            goto LABEL_226;
          }
        }

        if (SHIDWORD(v237) > 2)
        {
          goto LABEL_225;
        }

        v192.i32[1] = HIDWORD(v237);
        v192.i64[1] = v238;
        v114 = v244;
        v115 = v198;
        *v198 = *v244;
        v115[1] = v114[1];
LABEL_226:
        v193 = v239;
        v195 = v241;
        v194 = v240;
        v196 = v242;
        if (v240 && atomic_fetch_add(v240, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(&v237);
        }

        v239 = 0;
        v241 = 0uLL;
        *(&v240 + 1) = 0;
        if (SHIDWORD(v237) >= 1)
        {
          v116 = 0;
          v117 = v243;
          do
          {
            *(v117 + v116++) = 0;
          }

          while (v116 < SHIDWORD(v237));
        }

        *&v240 = 0;
        if (v244)
        {
          v118 = v244 == &v245;
        }

        else
        {
          v118 = 1;
        }

        if (!v118)
        {
          free(v244);
        }

        if ((a5 & 0xFF8) != 0)
        {
          if (v36 != v188)
          {
            v238 = v181;
            v239 = v234;
            *&v240 = 0;
            v243 = &v238;
            v244 = &v245;
            HIDWORD(v237) = 2;
            LODWORD(v237) = v36 | 0x42FF4000;
            v245 = v181.i32[1] << v165;
            v246 = v176;
            v242 = 0;
            *(&v241 + 1) = v234 + v178;
            *(&v240 + 1) = v234;
            *&v241 = v234 + v178;
            cv::_OutputArray::_OutputArray(v191, &v237);
            cv::Mat::convertTo(&v192, v191, v36, 1.0, a8);
            if (v240)
            {
              atomic_fetch_add(v240, 1u);
            }

            if (v194 && atomic_fetch_add(v194, 0xFFFFFFFF) == 1)
            {
              cv::Mat::deallocate(&v192);
            }

            v193 = 0;
            v195 = 0uLL;
            *(&v194 + 1) = 0;
            if (v192.i64[0] <= 0)
            {
              *&v194 = 0;
              v192.i32[0] = v237;
            }

            else
            {
              v119 = 0;
              v120 = v197;
              do
              {
                *&v120[4 * v119++] = 0;
              }

              while (v119 < v192.i32[1]);
              *&v194 = 0;
              v192.i32[0] = v237;
              if (v192.i32[1] > 2)
              {
LABEL_265:
                cv::Mat::copySize(&v192, &v237);
                goto LABEL_266;
              }
            }

            if (SHIDWORD(v237) > 2)
            {
              goto LABEL_265;
            }

            v192.i32[1] = HIDWORD(v237);
            v192.i64[1] = v238;
            v123 = v244;
            v124 = v198;
            *v198 = *v244;
            v124[1] = v123[1];
LABEL_266:
            v193 = v239;
            v195 = v241;
            v194 = v240;
            v196 = v242;
            if (v240 && atomic_fetch_add(v240, 0xFFFFFFFF) == 1)
            {
              cv::Mat::deallocate(&v237);
            }

            v239 = 0;
            v241 = 0uLL;
            *(&v240 + 1) = 0;
            if (SHIDWORD(v237) >= 1)
            {
              v125 = 0;
              v126 = v243;
              do
              {
                *(v126 + v125++) = 0;
              }

              while (v125 < SHIDWORD(v237));
            }

            *&v240 = 0;
            if (v244)
            {
              v127 = v244 == &v245;
            }

            else
            {
              v127 = 1;
            }

            if (!v127)
            {
              free(v244);
            }
          }

          LODWORD(v237) = 0;
          HIDWORD(v237) = v99;
          cv::mixChannels(&v192, 1, &v200, 1, &v237, 1);
          goto LABEL_294;
        }

        if (v99)
        {
          if (v36 != v188)
          {
            v238 = v181;
            v239 = v234;
            *&v240 = 0;
            v243 = &v238;
            v244 = &v245;
            HIDWORD(v237) = 2;
            LODWORD(v237) = v36 | 0x42FF4000;
            v245 = v181.i32[1] << v165;
            v246 = v176;
            v242 = 0;
            *(&v241 + 1) = v234 + v178;
            *(&v240 + 1) = v234;
            *&v241 = v234 + v178;
            cv::_OutputArray::_OutputArray(v191, &v237);
            cv::Mat::convertTo(&v192, v191, v36, 1.0, 0.0);
            if (v240)
            {
              atomic_fetch_add(v240, 1u);
            }

            if (v194 && atomic_fetch_add(v194, 0xFFFFFFFF) == 1)
            {
              cv::Mat::deallocate(&v192);
            }

            v193 = 0;
            v195 = 0uLL;
            *(&v194 + 1) = 0;
            if (v192.i64[0] <= 0)
            {
              *&v194 = 0;
              v192.i32[0] = v237;
            }

            else
            {
              v121 = 0;
              v122 = v197;
              do
              {
                *&v122[4 * v121++] = 0;
              }

              while (v121 < v192.i32[1]);
              *&v194 = 0;
              v192.i32[0] = v237;
              if (v192.i32[1] > 2)
              {
LABEL_281:
                cv::Mat::copySize(&v192, &v237);
                goto LABEL_282;
              }
            }

            if (SHIDWORD(v237) > 2)
            {
              goto LABEL_281;
            }

            v192.i32[1] = HIDWORD(v237);
            v192.i64[1] = v238;
            v128 = v244;
            v129 = v198;
            *v198 = *v244;
            v129[1] = v128[1];
LABEL_282:
            v193 = v239;
            v195 = v241;
            v194 = v240;
            v196 = v242;
            if (v240 && atomic_fetch_add(v240, 0xFFFFFFFF) == 1)
            {
              cv::Mat::deallocate(&v237);
            }

            v239 = 0;
            v241 = 0uLL;
            *(&v240 + 1) = 0;
            if (SHIDWORD(v237) >= 1)
            {
              v130 = 0;
              v131 = v243;
              do
              {
                *(v131 + v130++) = 0;
              }

              while (v130 < SHIDWORD(v237));
            }

            *&v240 = 0;
            if (v244)
            {
              v132 = v244 == &v245;
            }

            else
            {
              v132 = 1;
            }

            if (!v132)
            {
              free(v244);
            }
          }

          cv::_InputArray::_InputArray(&v237, &v192);
          cv::_InputArray::_InputArray(v191, &v200);
          v133 = cv::_OutputArray::_OutputArray(v190, &v200);
          v134 = cv::noArray(v133);
          cv::add(&v237, v191, v190, v134, 0xFFFFFFFFLL);
          goto LABEL_294;
        }

        cv::_OutputArray::_OutputArray(&v237, &v200);
        cv::Mat::convertTo(&v192, &v237, v36, 1.0, a8);
LABEL_294:
        if (*&v248[8] && atomic_fetch_add(*&v248[8], 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(&v247);
        }

        *v248 = 0;
        v249 = 0uLL;
        *&v248[16] = 0;
        if (v247.i32[1] >= 1)
        {
          v135 = 0;
          v136 = v251;
          do
          {
            *(v136 + v135++) = 0;
          }

          while (v135 < v247.i32[1]);
        }

        *&v248[8] = 0;
        if (v252)
        {
          v137 = v252 == &v253;
        }

        else
        {
          v137 = 1;
        }

        if (!v137)
        {
          free(v252);
        }

        if (v194 && atomic_fetch_add(v194, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(&v192);
        }

        v193 = 0;
        v195 = 0uLL;
        *(&v194 + 1) = 0;
        if (v192.i32[1] >= 1)
        {
          v138 = 0;
          v139 = v197;
          do
          {
            *&v139[4 * v138++] = 0;
          }

          while (v138 < v192.i32[1]);
        }

        *&v194 = 0;
        if (v198)
        {
          v140 = v198 == v199;
        }

        else
        {
          v140 = 1;
        }

        if (!v140)
        {
          free(v198);
        }

        v71 = v99++ == v189;
      }

      while (!v71);
      if (*(&v201 + 1) && atomic_fetch_add(*(&v201 + 1), 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v200);
      }

      *&v201 = 0;
      v203 = 0;
      v204 = 0;
      v202 = 0;
      this = v170;
      if (v200.i32[1] >= 1)
      {
        v141 = 0;
        v142 = v205;
        do
        {
          *(v142 + 4 * v141++) = 0;
        }

        while (v141 < v200.i32[1]);
      }

      *(&v201 + 1) = 0;
      if (v206)
      {
        v143 = v206 == &v207;
      }

      else
      {
        v143 = 1;
      }

      if (!v143)
      {
        free(v206);
      }

      if (v257 && atomic_fetch_add(v257, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v255);
      }

      v256 = 0;
      v258 = 0uLL;
      *(&v257 + 1) = 0;
      if (v255.i32[1] >= 1)
      {
        v144 = 0;
        v145 = v260;
        do
        {
          *&v145[4 * v144++] = 0;
        }

        while (v144 < v255.i32[1]);
      }

      *&v257 = 0;
      if (v261)
      {
        v146 = v261 == &v262;
      }

      else
      {
        v146 = 1;
      }

      if (!v146)
      {
        free(v261);
      }

      if (v212 && atomic_fetch_add(v212, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v210);
      }

      v211 = 0;
      v213 = 0uLL;
      *(&v212 + 1) = 0;
      if (v210.i32[1] >= 1)
      {
        v147 = 0;
        v148 = v215;
        do
        {
          *(v148 + 4 * v147++) = 0;
        }

        while (v147 < v210.i32[1]);
      }

      *&v212 = 0;
      if (v216)
      {
        v149 = v216 == v217;
      }

      else
      {
        v149 = 1;
      }

      if (!v149)
      {
        free(v216);
      }

      if (v220 && atomic_fetch_add(v220, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(__p);
      }

      v219 = 0;
      v221 = 0uLL;
      *(&v220 + 1) = 0;
      if (SHIDWORD(__p[0]) >= 1)
      {
        v150 = 0;
        v151 = v223;
        do
        {
          *(v151 + 4 * v150++) = 0;
        }

        while (v150 < SHIDWORD(__p[0]));
      }

      *&v220 = 0;
      if (v224)
      {
        v152 = v224 == v225;
      }

      else
      {
        v152 = 1;
      }

      if (!v152)
      {
        free(v224);
      }

      ++v92;
    }

    while (v172 + 1 != v167);
  }

  if (v266 && atomic_fetch_add(v266, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v264);
  }

  v265 = 0;
  v267 = 0uLL;
  *(&v266 + 1) = 0;
  if (SHIDWORD(v264[0]) >= 1)
  {
    v153 = 0;
    v154 = v269;
    do
    {
      *(v154 + v153++) = 0;
    }

    while (v153 < SHIDWORD(v264[0]));
  }

  *&v266 = 0;
  if (v270)
  {
    v155 = v270 == &v271;
  }

  else
  {
    v155 = 1;
  }

  if (!v155)
  {
    free(v270);
  }

  if (*(&v273[1] + 1) && atomic_fetch_add(*(&v273[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v273);
  }

  *&v273[1] = 0;
  memset(&v273[2], 0, 24);
  if (SDWORD1(v273[0]) >= 1)
  {
    v156 = 0;
    v157 = v274;
    do
    {
      *&v157[4 * v156++] = 0;
    }

    while (v156 < SDWORD1(v273[0]));
  }

  *(&v273[1] + 1) = 0;
  if (v275)
  {
    v158 = v275 == v276;
  }

  else
  {
    v158 = 1;
  }

  if (!v158)
  {
    free(v275);
  }

  if (*&v277[6] && atomic_fetch_add(*&v277[6], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v277);
  }

  *&v277[4] = 0;
  memset(&v277[8], 0, 24);
  if (v277[1] >= 1)
  {
    v159 = 0;
    v160 = v278;
    do
    {
      v160[v159++] = 0;
    }

    while (v159 < v277[1]);
  }

  *&v277[6] = 0;
  if (v279)
  {
    v161 = v279 == v280;
  }

  else
  {
    v161 = 1;
  }

  if (!v161)
  {
    free(v279);
  }

  if (v228 && atomic_fetch_add(v228, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v226);
  }

  v227 = 0;
  v229 = 0uLL;
  *(&v228 + 1) = 0;
  if (v226[1] >= 1)
  {
    v162 = 0;
    v163 = v231;
    do
    {
      v163[v162++] = 0;
    }

    while (v162 < v226[1]);
  }

  *&v228 = 0;
  if (v232)
  {
    v164 = v232 == v233;
  }

  else
  {
    v164 = 1;
  }

  if (!v164)
  {
    free(v232);
  }

  if (v234)
  {
    v235 = v234;
    operator delete(v234);
  }
}

void sub_22D2394E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  cv::Exception::~Exception((v10 - 256));
  if (SLOBYTE(STACK[0x2E7]) < 0)
  {
    operator delete(STACK[0x2D0]);
  }

  if (SLOBYTE(STACK[0x4E7]) < 0)
  {
    operator delete(STACK[0x4D0]);
  }

  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(STACK[0x530]);
  }

  if (STACK[0x348] && atomic_fetch_add(STACK[0x348], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&STACK[0x330]);
  }

  STACK[0x340] = 0;
  STACK[0x358] = 0;
  STACK[0x360] = 0;
  STACK[0x350] = 0;
  if (SLODWORD(STACK[0x334]) >= 1)
  {
    v12 = 0;
    v13 = STACK[0x370];
    do
    {
      *(v13 + 4 * v12++) = 0;
    }

    while (v12 < SLODWORD(STACK[0x334]));
  }

  STACK[0x348] = 0;
  v14 = STACK[0x378];
  if (STACK[0x378])
  {
    v15 = v14 == a10;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    free(v14);
  }

  v16 = STACK[0x398];
  if (STACK[0x398])
  {
    STACK[0x3A0] = v16;
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

void cv::getRowSumFilter(cv *this, uint64_t a2)
{
  if (((a2 ^ this) & 0xFF8) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "CV_MAT_CN(sumType) == CV_MAT_CN(srcType)");
    std::string::basic_string[abi:ne200100]<0>(v7, "getRowSumFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
    cv::Exception::Exception(v9, 4294967081, v8, v7, __p, 619);
    cv::error(v9, v2);
  }

  v3 = a2 & 7;
  v4 = this & 7;
  if ((this & 7) == 0 && v3 == 4)
  {
    operator new();
  }

  if ((this & 7) == 0 && v3 == 6)
  {
    operator new();
  }

  if (v4 == 2 && v3 == 4)
  {
    operator new();
  }

  if (v4 == 2 && v3 == 6)
  {
    operator new();
  }

  if (v4 == 3 && v3 == 4)
  {
    operator new();
  }

  if (v4 == 4 && v3 == 4)
  {
    operator new();
  }

  if (v4 == 3 && v3 == 6)
  {
    operator new();
  }

  if (v4 == 5 && v3 == 6)
  {
    operator new();
  }

  if (v4 == 6 && v3 == 6)
  {
    operator new();
  }

  cv::format(v8, this, a2);
  std::string::basic_string[abi:ne200100]<0>(v7, "getRowSumFilter");
  std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
  cv::Exception::Exception(v9, 4294967083, v8, v7, __p, 645);
  cv::error(v9, v5);
}

void sub_22D239FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  cv::Exception::~Exception(&a29);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void cv::getColumnSumFilter(cv *this, uint64_t a2, double a3)
{
  if (((a2 ^ this) & 0xFF8) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v9, "CV_MAT_CN(sumType) == CV_MAT_CN(dstType)");
    std::string::basic_string[abi:ne200100]<0>(v8, "getColumnSumFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
    cv::Exception::Exception(v10, 4294967081, v9, v8, __p, 655);
    cv::error(v10, v3);
  }

  v4 = this & 7;
  v5 = a2 & 7;
  if (v4 == 4 && (a2 & 7) == 0)
  {
    operator new();
  }

  if (v4 == 6 && (a2 & 7) == 0)
  {
    operator new();
  }

  if (v4 == 4 && v5 == 2)
  {
    operator new();
  }

  if (v4 == 6 && v5 == 2)
  {
    operator new();
  }

  if (v4 == 4 && v5 == 3)
  {
    operator new();
  }

  if (v4 == 6 && v5 == 3)
  {
    operator new();
  }

  if (v4 == 4 && v5 == 4)
  {
    operator new();
  }

  if (v4 == 4 && v5 == 5)
  {
    operator new();
  }

  if (v4 == 6 && v5 == 5)
  {
    operator new();
  }

  if (v4 == 4 && v5 == 6)
  {
    operator new();
  }

  if (v4 == 6 && v5 == 6)
  {
    operator new();
  }

  cv::format(v9, this, a2);
  std::string::basic_string[abi:ne200100]<0>(v8, "getColumnSumFilter");
  std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
  cv::Exception::Exception(v10, 4294967083, v9, v8, __p, 685);
  cv::error(v10, v6);
}

void sub_22D23A5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  cv::Exception::~Exception(&a29);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void cv::createBoxFilter(cv *this, uint64_t a2, _DWORD *a3, uint64_t a4, int a5)
{
  if ((this & 7u) > 4 || a5 && ((this & 7) != 2 ? (v5 = 0x10000) : (v5 = 0x8000), (this & 7) != 0 ? (v6 = v5) : (v6 = 0x800000), a3[1] * *a3 > v6))
  {
    v7 = 6;
  }

  else
  {
    v7 = 4;
  }

  cv::getRowSumFilter(this, v7 | this & 0xFF8u);
}

void sub_22D23A8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  cv::Ptr<cv::BaseFilter>::~Ptr(va);
  cv::Ptr<cv::BaseColumnFilter>::~Ptr(va1);
  cv::Ptr<cv::BaseRowFilter>::~Ptr(va2);
  _Unwind_Resume(a1);
}

void cv::boxFilter(void (***a1)(uint64_t *__return_ptr), uint64_t a2, int a3, _DWORD *a4, uint64_t *a5, int a6, char a7)
{
  (**a1)(&v17);
  v13 = v17;
  if (a3 >= 0)
  {
    v13 = a3;
  }

  v16[0] = vrev64_s32(*v20);
  (*(*a2 + 128))(a2, v16, v17 & 0xFF8 | v13 & 7, 0xFFFFFFFFLL, 0, 0);
  (**a2)(v16, a2, 0xFFFFFFFFLL);
  if ((a7 & 0x10) != 0 && a6)
  {
    if (v18 == 1)
    {
      a4[1] = 1;
    }

    if (v19 == 1)
    {
      *a4 = 1;
    }
  }

  *&v14 = *a4;
  v15 = *a5;
  cv::createBoxFilter((v17 & 0xFFF), v16[0] & 0xFFF, &v14, &v15, a6);
}

void sub_22D23AC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  cv::Ptr<cv::FilterEngine>::~Ptr(&a13);
  cv::Mat::~Mat(&a15);
  cv::Mat::~Mat(&a27);
  _Unwind_Resume(a1);
}

void cv::ColumnSum<int,unsigned char>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_284055BF0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284055BF0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<int,unsigned char>::operator()(uint64_t a1, int **a2, uint64_t a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *&v12[-1].__end_;
  if (((v12->__end_ - v14) >> 2) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v36, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(v35, "operator()");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v37, 4294967081, v36, v35, __p, 254);
        cv::error(v37, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_13;
    }
  }

  else
  {
    std::vector<float>::resize(v12, a6);
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  bzero(v13, 4 * a6);
  v19 = *(a1 + 24);
  for (i = *(a1 + 8); v19 < i - 1; ++v10)
  {
    if (a6 >= 1)
    {
      v21 = *v10;
      v22 = a6;
      v23 = v13;
      do
      {
        v24 = *v21++;
        *v23++ += v24;
        --v22;
      }

      while (v22);
      v19 = *(a1 + 24);
      i = *(a1 + 8);
    }

    *(a1 + 24) = ++v19;
  }

LABEL_13:
  while (a5)
  {
    v25 = *v10;
    v26 = v10[1 - *(a1 + 8)];
    if (v15 == 1.0)
    {
      if (a6 >= 1)
      {
        v31 = 0;
        do
        {
          v32 = v25[v31] + *(v13 + v31);
          v33 = v32 & ~(v32 >> 31);
          if (v33 >= 255)
          {
            LOBYTE(v33) = -1;
          }

          *(a3 + v31) = v33;
          *(v13 + v31) = v32 - v26[v31];
          ++v31;
        }

        while (a6 != v31);
      }
    }

    else if (a6 >= 1)
    {
      v27 = 0;
      do
      {
        v28 = v25[v27] + *(v13 + v27);
        v29 = rint(v15 * v28);
        v30 = v29 & ~(v29 >> 31);
        if (v30 >= 255)
        {
          LOBYTE(v30) = -1;
        }

        *(a3 + v27) = v30;
        *(v13 + v27) = v28 - v26[v27];
        ++v27;
      }

      while (a6 != v27);
    }

    a3 += a4;
    ++v10;
    --a5;
  }
}

void sub_22D23AFC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void cv::ColumnSum<int,unsigned short>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_284055C38;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284055C38;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<int,unsigned short>::operator()(uint64_t a1, int **a2, uint64_t a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *&v12[-1].__end_;
  if (((v12->__end_ - v14) >> 2) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v36, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(v35, "operator()");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v37, 4294967081, v36, v35, __p, 531);
        cv::error(v37, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_13;
    }
  }

  else
  {
    std::vector<float>::resize(v12, a6);
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  bzero(v13, 4 * a6);
  v19 = *(a1 + 24);
  for (i = *(a1 + 8); v19 < i - 1; ++v10)
  {
    if (a6 >= 1)
    {
      v21 = *v10;
      v22 = a6;
      v23 = v13;
      do
      {
        v24 = *v21++;
        *v23++ += v24;
        --v22;
      }

      while (v22);
      v19 = *(a1 + 24);
      i = *(a1 + 8);
    }

    *(a1 + 24) = ++v19;
  }

LABEL_13:
  while (a5)
  {
    v25 = *v10;
    v26 = v10[1 - *(a1 + 8)];
    if (v15 == 1.0)
    {
      if (a6 >= 1)
      {
        v31 = 0;
        do
        {
          v32 = v25[v31] + *(v13 + v31);
          v33 = v32 & ~(v32 >> 31);
          if (v33 >= 0xFFFF)
          {
            LOWORD(v33) = -1;
          }

          *(a3 + 2 * v31) = v33;
          *(v13 + v31) = v32 - v26[v31];
          ++v31;
        }

        while (a6 != v31);
      }
    }

    else if (a6 >= 1)
    {
      v27 = 0;
      do
      {
        v28 = v25[v27] + *(v13 + v27);
        v29 = rint(v15 * v28);
        v30 = v29 & ~(v29 >> 31);
        if (v30 >= 0xFFFF)
        {
          LOWORD(v30) = -1;
        }

        *(a3 + 2 * v27) = v30;
        *(v13 + v27) = v28 - v26[v27];
        ++v27;
      }

      while (a6 != v27);
    }

    a3 += a4;
    ++v10;
    --a5;
  }
}

void sub_22D23B37C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void cv::ColumnSum<int,short>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_284055C80;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284055C80;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<int,short>::operator()(uint64_t a1, int **a2, uint64_t a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *&v12[-1].__end_;
  if (((v12->__end_ - v14) >> 2) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v35, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(v34, "operator()");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v36, 4294967081, v35, v34, __p, 394);
        cv::error(v36, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_13;
    }
  }

  else
  {
    std::vector<float>::resize(v12, a6);
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  bzero(v13, 4 * a6);
  v19 = *(a1 + 24);
  for (i = *(a1 + 8); v19 < i - 1; ++v10)
  {
    if (a6 >= 1)
    {
      v21 = *v10;
      v22 = a6;
      v23 = v13;
      do
      {
        v24 = *v21++;
        *v23++ += v24;
        --v22;
      }

      while (v22);
      v19 = *(a1 + 24);
      i = *(a1 + 8);
    }

    *(a1 + 24) = ++v19;
  }

LABEL_13:
  while (a5)
  {
    v25 = *v10;
    v26 = v10[1 - *(a1 + 8)];
    if (v15 == 1.0)
    {
      if (a6 >= 1)
      {
        v30 = 0;
        do
        {
          v31 = v25[v30] + *(v13 + v30);
          if (v31 <= -32768)
          {
            v32 = -32768;
          }

          else
          {
            v32 = v25[v30] + *(v13 + v30);
          }

          if (v32 >= 0x7FFF)
          {
            LOWORD(v32) = 0x7FFF;
          }

          *(a3 + 2 * v30) = v32;
          *(v13 + v30) = v31 - v26[v30];
          ++v30;
        }

        while (a6 != v30);
      }
    }

    else if (a6 >= 1)
    {
      v27 = 0;
      do
      {
        v28 = v25[v27] + *(v13 + v27);
        v29 = rint(v15 * v28);
        if (v29 <= -32768)
        {
          LODWORD(v29) = -32768;
        }

        if (v29 >= 0x7FFF)
        {
          LOWORD(v29) = 0x7FFF;
        }

        *(a3 + 2 * v27) = v29;
        *(v13 + v27) = v28 - v26[v27];
        ++v27;
      }

      while (a6 != v27);
    }

    a3 += a4;
    ++v10;
    --a5;
  }
}

void sub_22D23B744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void cv::RowSum<unsigned char,int>::~RowSum(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::RowSum<unsigned char,int>::operator()(uint64_t result, uint64_t a2, _DWORD *a3, int a4, unsigned int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = *(result + 8) * a5;
    v7 = ((a4 - 1) * a5);
    v8 = &a3[a5];
    do
    {
      if (v6 < 1)
      {
        v10 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v10 += *(a2 + v9);
          v9 += a5;
        }

        while (v6 > v9);
      }

      *a3 = v10;
      if (v7 >= 1)
      {
        for (i = 0; i < v7; i += a5)
        {
          result = *(a2 + i);
          v10 = v10 - result + *(a2 + v6 + i);
          v8[i] = v10;
        }
      }

      ++v5;
      ++a2;
      ++a3;
      ++v8;
    }

    while (v5 != a5);
  }

  return result;
}

void cv::RowSum<unsigned char,double>::~RowSum(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::RowSum<unsigned char,double>::operator()(uint64_t result, uint64_t a2, double *a3, int a4, unsigned int a5, double a6, double a7)
{
  if (a5 >= 1)
  {
    v7 = 0;
    v8 = *(result + 8) * a5;
    v9 = ((a4 - 1) * a5);
    v10 = &a3[a5];
    do
    {
      if (v8 < 1)
      {
        v12 = 0.0;
      }

      else
      {
        v11 = 0;
        v12 = 0.0;
        do
        {
          LOBYTE(a7) = *(a2 + v11);
          a7 = *&a7;
          v12 = v12 + a7;
          v11 += a5;
        }

        while (v8 > v11);
      }

      *a3 = v12;
      if (v9 >= 1)
      {
        for (i = 0; i < v9; i += a5)
        {
          a7 = (*(a2 + v8 + i) - *(a2 + i));
          v12 = v12 + a7;
          v10[i] = v12;
        }
      }

      ++v7;
      ++a2;
      ++a3;
      ++v10;
    }

    while (v7 != a5);
  }

  return result;
}

void cv::RowSum<unsigned short,int>::~RowSum(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::RowSum<unsigned short,int>::operator()(uint64_t result, unsigned __int16 *a2, int *a3, int a4, unsigned int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = ((a4 - 1) * a5);
    v7 = *(result + 8) * a5;
    v8 = &a3[a5];
    do
    {
      if (v7 < 1)
      {
        v10 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = a2;
        do
        {
          result = *v11;
          v10 += result;
          v11 += a5;
          v9 += a5;
        }

        while (v7 > v9);
      }

      *a3 = v10;
      if (v6 >= 1)
      {
        v12 = 0;
        do
        {
          v10 = v10 - a2[v12] + a2[v7 + v12];
          v8[v12] = v10;
          result = v12 + a5;
          v12 = result;
        }

        while (result < v6);
      }

      ++v5;
      ++a2;
      ++a3;
      ++v8;
    }

    while (v5 != a5);
  }

  return result;
}

void cv::RowSum<unsigned short,double>::~RowSum(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::RowSum<unsigned short,double>::operator()(uint64_t result, _WORD *a2, double *a3, int a4, unsigned int a5, double a6, double a7)
{
  if (a5 >= 1)
  {
    v7 = 0;
    v8 = ((a4 - 1) * a5);
    v9 = *(result + 8) * a5;
    v10 = &a3[a5];
    do
    {
      if (v9 < 1)
      {
        v12 = 0.0;
      }

      else
      {
        v11 = 0;
        v12 = 0.0;
        v13 = a2;
        do
        {
          LOWORD(a7) = *v13;
          a7 = *&a7;
          v12 = v12 + a7;
          v13 += a5;
          v11 += a5;
        }

        while (v9 > v11);
      }

      *a3 = v12;
      if (v8 >= 1)
      {
        for (i = 0; i < v8; i += a5)
        {
          result = a2[i];
          a7 = (a2[v9 + i] - result);
          v12 = v12 + a7;
          v10[i] = v12;
        }
      }

      ++v7;
      ++a2;
      ++a3;
      ++v10;
    }

    while (v7 != a5);
  }

  return result;
}

void cv::RowSum<short,int>::~RowSum(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::RowSum<short,int>::operator()(uint64_t result, __int16 *a2, int *a3, int a4, unsigned int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = ((a4 - 1) * a5);
    v7 = *(result + 8) * a5;
    v8 = &a3[a5];
    do
    {
      if (v7 < 1)
      {
        v10 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = a2;
        do
        {
          result = *v11;
          v10 += result;
          v11 += a5;
          v9 += a5;
        }

        while (v7 > v9);
      }

      *a3 = v10;
      if (v6 >= 1)
      {
        v12 = 0;
        do
        {
          v10 = v10 - a2[v12] + a2[v7 + v12];
          v8[v12] = v10;
          result = v12 + a5;
          v12 = result;
        }

        while (result < v6);
      }

      ++v5;
      ++a2;
      ++a3;
      ++v8;
    }

    while (v5 != a5);
  }

  return result;
}

void cv::RowSum<int,int>::~RowSum(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::RowSum<int,int>::operator()(uint64_t result, unsigned int *a2, _DWORD *a3, int a4, unsigned int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = ((a4 - 1) * a5);
    v7 = *(result + 8) * a5;
    v8 = &a3[a5];
    do
    {
      if (v7 < 1)
      {
        v10 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = a2;
        do
        {
          result = *v11;
          v10 += result;
          v11 += a5;
          v9 += a5;
        }

        while (v7 > v9);
      }

      *a3 = v10;
      if (v6 >= 1)
      {
        v12 = 0;
        do
        {
          v10 += a2[v7 + v12] - a2[v12];
          v8[v12] = v10;
          result = v12 + a5;
          v12 = result;
        }

        while (result < v6);
      }

      ++v5;
      ++a2;
      ++a3;
      ++v8;
    }

    while (v5 != a5);
  }

  return result;
}

void cv::RowSum<short,double>::~RowSum(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::RowSum<short,double>::operator()(uint64_t result, __int16 *a2, double *a3, int a4, unsigned int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = ((a4 - 1) * a5);
    v7 = *(result + 8) * a5;
    v8 = &a3[a5];
    do
    {
      if (v7 < 1)
      {
        v10 = 0.0;
      }

      else
      {
        v9 = 0;
        v10 = 0.0;
        v11 = a2;
        do
        {
          v10 = v10 + *v11;
          v11 += a5;
          v9 += a5;
        }

        while (v7 > v9);
      }

      *a3 = v10;
      if (v6 >= 1)
      {
        for (i = 0; i < v6; i += a5)
        {
          result = a2[i];
          v10 = v10 + (a2[v7 + i] - result);
          v8[i] = v10;
        }
      }

      ++v5;
      ++a2;
      ++a3;
      ++v8;
    }

    while (v5 != a5);
  }

  return result;
}

void cv::RowSum<float,double>::~RowSum(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::RowSum<float,double>::operator()(uint64_t result, float *a2, double *a3, int a4, unsigned int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = ((a4 - 1) * a5);
    v7 = *(result + 8) * a5;
    v8 = &a3[a5];
    do
    {
      if (v7 < 1)
      {
        v10 = 0.0;
      }

      else
      {
        v9 = 0;
        v10 = 0.0;
        v11 = a2;
        do
        {
          v10 = v10 + *v11;
          v11 += a5;
          v9 += a5;
        }

        while (v7 > v9);
      }

      *a3 = v10;
      if (v6 >= 1)
      {
        for (i = 0; i < v6; i += a5)
        {
          v10 = v10 + (a2[v7 + i] - a2[i]);
          v8[i] = v10;
        }
      }

      ++v5;
      ++a2;
      ++a3;
      ++v8;
    }

    while (v5 != a5);
  }

  return result;
}

void cv::RowSum<double,double>::~RowSum(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::RowSum<double,double>::operator()(uint64_t result, double *a2, double *a3, int a4, unsigned int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    v6 = ((a4 - 1) * a5);
    v7 = *(result + 8) * a5;
    v8 = &a3[a5];
    do
    {
      if (v7 < 1)
      {
        v10 = 0.0;
      }

      else
      {
        v9 = 0;
        v10 = 0.0;
        v11 = a2;
        do
        {
          v10 = v10 + *v11;
          v11 += a5;
          v9 += a5;
        }

        while (v7 > v9);
      }

      *a3 = v10;
      if (v6 >= 1)
      {
        for (i = 0; i < v6; i += a5)
        {
          v10 = v10 + a2[v7 + i] - a2[i];
          v8[i] = v10;
        }
      }

      ++v5;
      ++a2;
      ++a3;
      ++v8;
    }

    while (v5 != a5);
  }

  return result;
}

void cv::ColumnSum<double,unsigned char>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_284055F08;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284055F08;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<double,unsigned char>::operator()(uint64_t a1, float64x2_t **a2, uint64_t a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *(v12 - 2);
  if (((*(v12 + 1) - v14) >> 3) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v68, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(v67, "operator()");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v69, 4294967081, v68, v67, __p, 145);
        cv::error(v69, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_21;
    }
  }

  else
  {
    std::vector<long long>::resize(v12, a6);
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  if (a6 >= 1)
  {
    bzero(v13, 8 * a6);
  }

  v19 = *(a1 + 8);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (!((v21 < 0) ^ v20 | (v21 == 0)))
  {
    v22 = 0;
    do
    {
      v23 = *v10;
      if (a6 >= 2)
      {
        v25 = 0;
        v26 = v13;
        v27 = *v10;
        do
        {
          v28 = *v27++;
          *v26 = vaddq_f64(*v26, v28);
          ++v26;
          v25 += 2;
        }

        while (v25 <= a6 - 2);
        v24 = v25;
      }

      else
      {
        v24 = 0;
      }

      if (v24 < a6)
      {
        v29 = &v13->f64[v24];
        v30 = a6 - v24;
        v31 = &v23->f64[v24];
        do
        {
          v32 = *v31++;
          *v29 = v32 + *v29;
          ++v29;
          --v30;
        }

        while (v30);
      }

      ++v22;
      ++v10;
    }

    while (v22 != v21);
    *(a1 + 24) = v21;
  }

LABEL_21:
  if (a5)
  {
    v33 = a6 - 2;
    do
    {
      v34 = *v10;
      v35 = v10[1 - *(a1 + 8)];
      if (v15 == 1.0)
      {
        if (a6 >= 2)
        {
          v37 = 0;
          v52 = v13;
          v53 = *v10;
          v54 = v10[1 - *(a1 + 8)];
          do
          {
            v55 = (a3 + v37);
            v56 = *v53++;
            v57 = vaddq_f64(*v52, v56);
            v58 = rint(v57.f64[0]);
            v59 = v58 & ~(v58 >> 31);
            if (v59 >= 255)
            {
              LOBYTE(v59) = -1;
            }

            *v55 = v59;
            v60 = rint(v57.f64[1]);
            v61 = v60 & ~(v60 >> 31);
            if (v61 >= 255)
            {
              LOBYTE(v61) = -1;
            }

            v55[1] = v61;
            v62 = *v54++;
            *v52++ = vsubq_f64(v57, v62);
            v37 += 2;
          }

          while (v37 <= v33);
          v37 = v37;
        }

        else
        {
          v37 = 0;
        }

        if (v37 < a6)
        {
          do
          {
            v63 = v13->f64[v37] + v34->f64[v37];
            v64 = rint(v63);
            v65 = v64 & ~(v64 >> 31);
            if (v65 >= 255)
            {
              LOBYTE(v65) = -1;
            }

            *(a3 + v37) = v65;
            v13->f64[v37] = v63 - v35->f64[v37];
            ++v37;
          }

          while (a6 != v37);
        }
      }

      else
      {
        if (a6 >= 2)
        {
          v36 = 0;
          v38 = v13;
          v39 = *v10;
          v40 = v10[1 - *(a1 + 8)];
          do
          {
            v41 = (a3 + v36);
            v42 = *v39++;
            v43 = vaddq_f64(*v38, v42);
            v44 = rint(v15 * v43.f64[0]);
            v45 = v44 & ~(v44 >> 31);
            if (v45 >= 255)
            {
              LOBYTE(v45) = -1;
            }

            *v41 = v45;
            v46 = rint(vmuld_lane_f64(v15, v43, 1));
            v47 = v46 & ~(v46 >> 31);
            if (v47 >= 255)
            {
              LOBYTE(v47) = -1;
            }

            v41[1] = v47;
            v48 = *v40++;
            *v38++ = vsubq_f64(v43, v48);
            v36 += 2;
          }

          while (v36 <= v33);
          v36 = v36;
        }

        else
        {
          v36 = 0;
        }

        if (v36 < a6)
        {
          do
          {
            v49 = v13->f64[v36] + v34->f64[v36];
            v50 = rint(v15 * v49);
            v51 = v50 & ~(v50 >> 31);
            if (v51 >= 255)
            {
              LOBYTE(v51) = -1;
            }

            *(a3 + v36) = v51;
            v13->f64[v36] = v49 - v35->f64[v36];
            ++v36;
          }

          while (a6 != v36);
        }
      }

      a3 += a4;
      ++v10;
      --a5;
    }

    while (a5);
  }
}

void sub_22D23C4E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void cv::ColumnSum<double,unsigned short>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_284055F50;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284055F50;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<double,unsigned short>::operator()(uint64_t a1, float64x2_t **a2, uint64_t a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *(v12 - 2);
  if (((*(v12 + 1) - v14) >> 3) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v67, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(v66, "operator()");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v68, 4294967081, v67, v66, __p, 145);
        cv::error(v68, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_21;
    }
  }

  else
  {
    std::vector<long long>::resize(v12, a6);
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  if (a6 >= 1)
  {
    bzero(v13, 8 * a6);
  }

  v17 = *(a1 + 8);
  v19 = v17 - 1;
  if (v17 > 1)
  {
    v20 = 0;
    do
    {
      v21 = *v10;
      if (a6 >= 2)
      {
        v23 = 0;
        v24 = v13;
        v25 = *v10;
        do
        {
          v26 = *v25++;
          *v24 = vaddq_f64(*v24, v26);
          ++v24;
          v23 += 2;
        }

        while (v23 <= a6 - 2);
        v22 = v23;
      }

      else
      {
        v22 = 0;
      }

      if (v22 < a6)
      {
        v27 = &v13->f64[v22];
        v28 = a6 - v22;
        v29 = &v21->f64[v22];
        do
        {
          v30 = *v29++;
          *v27 = v30 + *v27;
          ++v27;
          --v28;
        }

        while (v28);
      }

      ++v20;
      ++v10;
    }

    while (v20 != v19);
    *(a1 + 24) = v19;
  }

LABEL_21:
  if (a5)
  {
    v31 = 1 - v17;
    v32 = a6 - 2;
    do
    {
      v33 = *v10;
      v34 = v10[v31];
      if (v15 == 1.0)
      {
        if (a6 >= 2)
        {
          v36 = 0;
          v51 = v13;
          v52 = *v10;
          v53 = v10[v31];
          do
          {
            v54 = (a3 + 2 * v36);
            v55 = *v52++;
            v56 = vaddq_f64(*v51, v55);
            v57 = rint(v56.f64[0]);
            v58 = v57 & ~(v57 >> 31);
            if (v58 >= 0xFFFF)
            {
              LOWORD(v58) = -1;
            }

            v59 = rint(v56.f64[1]);
            *v54 = v58;
            v60 = v59 & ~(v59 >> 31);
            if (v60 >= 0xFFFF)
            {
              LOWORD(v60) = -1;
            }

            v61 = *v53++;
            v54[1] = v60;
            *v51++ = vsubq_f64(v56, v61);
            v36 += 2;
          }

          while (v36 <= v32);
          v36 = v36;
        }

        else
        {
          v36 = 0;
        }

        if (v36 < a6)
        {
          do
          {
            v62 = v13->f64[v36] + v33->f64[v36];
            v63 = rint(v62);
            v64 = v63 & ~(v63 >> 31);
            if (v64 >= 0xFFFF)
            {
              LOWORD(v64) = -1;
            }

            *(a3 + 2 * v36) = v64;
            v13->f64[v36] = v62 - v34->f64[v36];
            ++v36;
          }

          while (a6 != v36);
        }
      }

      else
      {
        if (a6 >= 2)
        {
          v35 = 0;
          v37 = v13;
          v38 = *v10;
          v39 = v10[v31];
          do
          {
            v40 = (a3 + 2 * v35);
            v41 = *v38++;
            v42 = vaddq_f64(*v37, v41);
            v43 = rint(v15 * v42.f64[0]);
            v44 = v43 & ~(v43 >> 31);
            if (v44 >= 0xFFFF)
            {
              LOWORD(v44) = -1;
            }

            v45 = rint(vmuld_lane_f64(v15, v42, 1));
            *v40 = v44;
            v46 = v45 & ~(v45 >> 31);
            if (v46 >= 0xFFFF)
            {
              LOWORD(v46) = -1;
            }

            v47 = *v39++;
            v40[1] = v46;
            *v37++ = vsubq_f64(v42, v47);
            v35 += 2;
          }

          while (v35 <= v32);
          v35 = v35;
        }

        else
        {
          v35 = 0;
        }

        if (v35 < a6)
        {
          do
          {
            v48 = v13->f64[v35] + v33->f64[v35];
            v49 = rint(v15 * v48);
            v50 = v49 & ~(v49 >> 31);
            if (v50 >= 0xFFFF)
            {
              LOWORD(v50) = -1;
            }

            *(a3 + 2 * v35) = v50;
            v13->f64[v35] = v48 - v34->f64[v35];
            ++v35;
          }

          while (a6 != v35);
        }
      }

      a3 += a4;
      ++v10;
      --a5;
    }

    while (a5);
  }
}

void sub_22D23C9E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void cv::ColumnSum<double,short>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_284055F98;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284055F98;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<double,short>::operator()(uint64_t a1, float64x2_t **a2, uint64_t a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *(v12 - 2);
  if (((*(v12 + 1) - v14) >> 3) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v61, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(v60, "operator()");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v62, 4294967081, v61, v60, __p, 145);
        cv::error(v62, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_21;
    }
  }

  else
  {
    std::vector<long long>::resize(v12, a6);
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  if (a6 >= 1)
  {
    bzero(v13, 8 * a6);
  }

  v17 = *(a1 + 8);
  v19 = v17 - 1;
  if (v17 > 1)
  {
    v20 = 0;
    do
    {
      v21 = *v10;
      if (a6 >= 2)
      {
        v23 = 0;
        v24 = v13;
        v25 = *v10;
        do
        {
          v26 = *v25++;
          *v24 = vaddq_f64(*v24, v26);
          ++v24;
          v23 += 2;
        }

        while (v23 <= a6 - 2);
        v22 = v23;
      }

      else
      {
        v22 = 0;
      }

      if (v22 < a6)
      {
        v27 = &v13->f64[v22];
        v28 = a6 - v22;
        v29 = &v21->f64[v22];
        do
        {
          v30 = *v29++;
          *v27 = v30 + *v27;
          ++v27;
          --v28;
        }

        while (v28);
      }

      ++v20;
      ++v10;
    }

    while (v20 != v19);
    *(a1 + 24) = v19;
  }

LABEL_21:
  if (a5)
  {
    v31 = 1 - v17;
    v32 = a6 - 2;
    do
    {
      v33 = *v10;
      v34 = v10[v31];
      if (v15 == 1.0)
      {
        if (a6 >= 2)
        {
          v36 = 0;
          v48 = v13;
          v49 = *v10;
          v50 = v10[v31];
          do
          {
            v51 = (a3 + 2 * v36);
            v52 = *v49++;
            v53 = vaddq_f64(*v48, v52);
            v54 = rint(v53.f64[0]);
            if (v54 <= -32768)
            {
              LODWORD(v54) = -32768;
            }

            if (v54 >= 0x7FFF)
            {
              LOWORD(v54) = 0x7FFF;
            }

            *v51 = v54;
            v55 = rint(v53.f64[1]);
            if (v55 <= -32768)
            {
              LODWORD(v55) = -32768;
            }

            if (v55 >= 0x7FFF)
            {
              LOWORD(v55) = 0x7FFF;
            }

            v56 = *v50++;
            v51[1] = v55;
            *v48++ = vsubq_f64(v53, v56);
            v36 += 2;
          }

          while (v36 <= v32);
          v36 = v36;
        }

        else
        {
          v36 = 0;
        }

        if (v36 < a6)
        {
          do
          {
            v57 = v13->f64[v36] + v33->f64[v36];
            v58 = rint(v57);
            if (v58 <= -32768)
            {
              LODWORD(v58) = -32768;
            }

            if (v58 >= 0x7FFF)
            {
              LOWORD(v58) = 0x7FFF;
            }

            *(a3 + 2 * v36) = v58;
            v13->f64[v36] = v57 - v34->f64[v36];
            ++v36;
          }

          while (a6 != v36);
        }
      }

      else
      {
        if (a6 >= 2)
        {
          v35 = 0;
          v37 = v13;
          v38 = *v10;
          v39 = v10[v31];
          do
          {
            v40 = (a3 + 2 * v35);
            v41 = *v38++;
            v42 = vaddq_f64(*v37, v41);
            v43 = rint(v15 * v42.f64[0]);
            if (v43 <= -32768)
            {
              LODWORD(v43) = -32768;
            }

            if (v43 >= 0x7FFF)
            {
              LOWORD(v43) = 0x7FFF;
            }

            *v40 = v43;
            v44 = rint(vmuld_lane_f64(v15, v42, 1));
            if (v44 <= -32768)
            {
              LODWORD(v44) = -32768;
            }

            if (v44 >= 0x7FFF)
            {
              LOWORD(v44) = 0x7FFF;
            }

            v45 = *v39++;
            v40[1] = v44;
            *v37++ = vsubq_f64(v42, v45);
            v35 += 2;
          }

          while (v35 <= v32);
          v35 = v35;
        }

        else
        {
          v35 = 0;
        }

        if (v35 < a6)
        {
          do
          {
            v46 = v13->f64[v35] + v33->f64[v35];
            v47 = rint(v15 * v46);
            if (v47 <= -32768)
            {
              LODWORD(v47) = -32768;
            }

            if (v47 >= 0x7FFF)
            {
              LOWORD(v47) = 0x7FFF;
            }

            *(a3 + 2 * v35) = v47;
            v13->f64[v35] = v46 - v34->f64[v35];
            ++v35;
          }

          while (a6 != v35);
        }
      }

      a3 += a4;
      ++v10;
      --a5;
    }

    while (a5);
  }
}

void sub_22D23CF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void cv::ColumnSum<int,int>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_284055FE0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284055FE0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<int,int>::operator()(uint64_t a1, int32x2_t **a2, uint64_t a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *&v12[-1].__end_;
  if (((v12->__end_ - v14) >> 2) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v49, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(v48, "operator()");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v50, 4294967081, v49, v48, __p, 145);
        cv::error(v50, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_20;
    }
  }

  else
  {
    std::vector<float>::resize(v12, a6);
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  if (a6 < 1)
  {
    v19 = 0;
  }

  else
  {
    bzero(v13, 4 * a6);
    v19 = *(a1 + 24);
  }

  if (v19 < *(a1 + 8) - 1)
  {
    do
    {
      v20 = *v10;
      if (a6 >= 2)
      {
        v22 = 0;
        v23 = v13;
        v24 = *v10;
        do
        {
          v25 = *v24++;
          *v23 = vadd_s32(v25, *v23);
          ++v23;
          v22 += 2;
        }

        while (v22 <= a6 - 2);
        v21 = v22;
      }

      else
      {
        v21 = 0;
      }

      if (v21 < a6)
      {
        v26 = v13 + v21;
        v27 = a6 - v21;
        v28 = v20 + v21;
        do
        {
          v29 = *v28++;
          *v26++ += v29;
          --v27;
        }

        while (v27);
      }

      v30 = *(a1 + 24) + 1;
      *(a1 + 24) = v30;
      ++v10;
    }

    while (v30 < *(a1 + 8) - 1);
  }

LABEL_20:
  if (a5)
  {
    v31 = a6 - 2;
    do
    {
      v32 = *v10;
      v33 = v10[1 - *(a1 + 8)];
      if (v15 == 1.0)
      {
        if (a6 >= 2)
        {
          v44 = 0;
          v35 = 0;
          do
          {
            v45 = vadd_s32(v32[v44], v13[v44]);
            *(a3 + v44 * 8) = v45;
            v13[v44] = vsub_s32(v45, v33[v44]);
            v35 += 2;
            ++v44;
          }

          while (v35 <= v31);
          v35 = v35;
        }

        else
        {
          v35 = 0;
        }

        if (v35 < a6)
        {
          do
          {
            v46 = v32->i32[v35] + v13->i32[v35];
            *(a3 + 4 * v35) = v46;
            v13->i32[v35] = v46 - v33->i32[v35];
            ++v35;
          }

          while (a6 != v35);
        }
      }

      else
      {
        if (a6 >= 2)
        {
          v34 = 0;
          v36 = v13;
          v37 = *v10;
          v38 = v10[1 - *(a1 + 8)];
          do
          {
            v39 = (a3 + 4 * v34);
            v40 = *v37++;
            v41 = vadd_s32(v40, *v36);
            *v39 = rint(v15 * v41.i32[0]);
            v39[1] = rint(v15 * v41.i32[1]);
            v42 = *v38++;
            *v36++ = vsub_s32(v41, v42);
            v34 += 2;
          }

          while (v34 <= v31);
          v34 = v34;
        }

        else
        {
          v34 = 0;
        }

        if (v34 < a6)
        {
          do
          {
            v43 = v32->i32[v34] + v13->i32[v34];
            *(a3 + 4 * v34) = rint(v15 * v43);
            v13->i32[v34] = v43 - v33->i32[v34];
            ++v34;
          }

          while (a6 != v34);
        }
      }

      a3 += a4;
      ++v10;
      --a5;
    }

    while (a5);
  }
}

void sub_22D23D3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void cv::ColumnSum<int,float>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_284056028;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284056028;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<int,float>::operator()(uint64_t a1, int32x2_t **a2, uint64_t a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *&v12[-1].__end_;
  if (((v12->__end_ - v14) >> 2) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v47, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(v46, "operator()");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v48, 4294967081, v47, v46, __p, 145);
        cv::error(v48, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_21;
    }

    end = v12[-1].__end_;
  }

  else
  {
    end = v12[-1].__end_;
    std::vector<float>::resize(v12, a6);
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  if (a6 < 1)
  {
    v19 = 0;
  }

  else
  {
    bzero(v13, 4 * a6);
    v19 = *(a1 + 24);
  }

  v15 = *&end;
  if (v19 < *(a1 + 8) - 1)
  {
    do
    {
      v20 = *v10;
      if (a6 >= 2)
      {
        v22 = 0;
        v23 = v13;
        v24 = *v10;
        do
        {
          v25 = *v24++;
          *v23 = vadd_s32(v25, *v23);
          ++v23;
          v22 += 2;
        }

        while (v22 <= a6 - 2);
        v21 = v22;
      }

      else
      {
        v21 = 0;
      }

      if (v21 < a6)
      {
        v26 = v13 + v21;
        v27 = a6 - v21;
        v28 = v20 + v21;
        do
        {
          v29 = *v28++;
          *v26++ += v29;
          --v27;
        }

        while (v27);
      }

      v30 = *(a1 + 24) + 1;
      *(a1 + 24) = v30;
      ++v10;
    }

    while (v30 < *(a1 + 8) - 1);
  }

LABEL_21:
  if (a5)
  {
    v31 = a6 - 2;
    do
    {
      v32 = *v10;
      v33 = v10[1 - *(a1 + 8)];
      if (v15 == 1.0)
      {
        if (a6 >= 2)
        {
          v41 = 0;
          v35 = 0;
          do
          {
            v42 = vadd_s32(v32[v41], v13[v41]);
            *(a3 + v41 * 8) = vcvt_f32_s32(v42);
            v13[v41] = vsub_s32(v42, v33[v41]);
            v35 += 2;
            ++v41;
          }

          while (v35 <= v31);
          v35 = v35;
        }

        else
        {
          v35 = 0;
        }

        if (v35 < a6)
        {
          do
          {
            v43 = v32->i32[v35] + v13->i32[v35];
            *(a3 + 4 * v35) = v43;
            v13->i32[v35] = v43 - v33->i32[v35];
            ++v35;
          }

          while (a6 != v35);
        }
      }

      else
      {
        if (a6 >= 2)
        {
          v36 = 0;
          v34 = 0;
          do
          {
            v37 = vadd_s32(v32[v36], v13[v36]);
            v38.i64[0] = v37.i32[0];
            v38.i64[1] = v37.i32[1];
            *(a3 + v36 * 8) = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_s64(v38), v15));
            v13[v36] = vsub_s32(v37, v33[v36]);
            v34 += 2;
            ++v36;
          }

          while (v34 <= v31);
          v34 = v34;
        }

        else
        {
          v34 = 0;
        }

        if (v34 < a6)
        {
          do
          {
            v39 = v32->i32[v34] + v13->i32[v34];
            v40 = v15 * v39;
            *(a3 + 4 * v34) = v40;
            v13->i32[v34] = v39 - v33->i32[v34];
            ++v34;
          }

          while (a6 != v34);
        }
      }

      a3 += a4;
      ++v10;
      --a5;
    }

    while (a5);
  }
}

void sub_22D23D864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  cv::Exception::~Exception(&a29);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void cv::ColumnSum<double,float>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_284056070;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284056070;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<double,float>::operator()(uint64_t a1, float64x2_t **a2, float32x2_t *a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *(v12 - 2);
  v55 = v15;
  if (((*(v12 + 1) - v14) >> 3) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v58, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(v57, "operator()");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v59, 4294967081, v58, v57, __p, 145);
        cv::error(v59, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_21;
    }
  }

  else
  {
    std::vector<long long>::resize(v12, a6);
    v15 = v55;
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  if (a6 >= 1)
  {
    bzero(v13, 8 * a6);
    v15 = v55;
  }

  v17 = *(a1 + 8);
  v19 = v17 - 1;
  if (v17 > 1)
  {
    v20 = 0;
    do
    {
      v21 = *v10;
      if (a6 >= 2)
      {
        v23 = 0;
        v24 = v13;
        v25 = *v10;
        do
        {
          v26 = *v25++;
          *v24 = vaddq_f64(*v24, v26);
          ++v24;
          v23 += 2;
        }

        while (v23 <= a6 - 2);
        v22 = v23;
      }

      else
      {
        v22 = 0;
      }

      if (v22 < a6)
      {
        v27 = &v13->f64[v22];
        v28 = a6 - v22;
        v29 = &v21->f64[v22];
        do
        {
          v30 = *v29++;
          *v27 = v30 + *v27;
          ++v27;
          --v28;
        }

        while (v28);
      }

      ++v20;
      ++v10;
    }

    while (v20 != v19);
    *(a1 + 24) = v19;
  }

LABEL_21:
  if (a5)
  {
    v31 = 1 - v17;
    v32 = a6 - 2;
    do
    {
      v33 = *v10;
      v34 = v10[v31];
      if (v15 == 1.0)
      {
        if (a6 >= 2)
        {
          v36 = 0;
          v46 = v13;
          v47 = *v10;
          v48 = a3;
          v49 = v10[v31];
          do
          {
            v50 = *v47++;
            v51 = vaddq_f64(*v46, v50);
            *v48++ = vcvt_f32_f64(v51);
            v52 = *v49++;
            *v46++ = vsubq_f64(v51, v52);
            v36 += 2;
          }

          while (v36 <= v32);
          v36 = v36;
        }

        else
        {
          v36 = 0;
        }

        if (v36 < a6)
        {
          do
          {
            v53 = v13->f64[v36] + v33->f64[v36];
            v54 = v53;
            a3->f32[v36] = v54;
            v13->f64[v36] = v53 - v34->f64[v36];
            ++v36;
          }

          while (a6 != v36);
        }
      }

      else
      {
        if (a6 >= 2)
        {
          v35 = 0;
          v37 = v13;
          v38 = *v10;
          v39 = a3;
          v40 = v10[v31];
          do
          {
            v41 = *v38++;
            v42 = vaddq_f64(*v37, v41);
            *v39++ = vcvt_f32_f64(vmulq_n_f64(v42, v15));
            v43 = *v40++;
            *v37++ = vsubq_f64(v42, v43);
            v35 += 2;
          }

          while (v35 <= v32);
          v35 = v35;
        }

        else
        {
          v35 = 0;
        }

        if (v35 < a6)
        {
          do
          {
            v44 = v13->f64[v35] + v33->f64[v35];
            v45 = v15 * v44;
            a3->f32[v35] = v45;
            v13->f64[v35] = v44 - v34->f64[v35];
            ++v35;
          }

          while (a6 != v35);
        }
      }

      a3 = (a3 + a4);
      ++v10;
      --a5;
    }

    while (a5);
  }
}

void sub_22D23DCF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  cv::Exception::~Exception(&a29);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void cv::ColumnSum<int,double>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_2840560B8;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_2840560B8;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<int,double>::operator()(uint64_t a1, int32x2_t **a2, float64x2_t *a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *&v12[-1].__end_;
  if (((v12->__end_ - v14) >> 2) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v57, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(v56, "operator()");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v58, 4294967081, v57, v56, __p, 145);
        cv::error(v58, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_21;
    }

    end = v12[-1].__end_;
  }

  else
  {
    end = v12[-1].__end_;
    std::vector<float>::resize(v12, a6);
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  if (a6 < 1)
  {
    v19 = 0;
  }

  else
  {
    bzero(v13, 4 * a6);
    v19 = *(a1 + 24);
  }

  v15 = *&end;
  if (v19 < *(a1 + 8) - 1)
  {
    do
    {
      v20 = *v10;
      if (a6 >= 2)
      {
        v22 = 0;
        v23 = v13;
        v24 = *v10;
        do
        {
          v25 = *v24++;
          *v23 = vadd_s32(v25, *v23);
          ++v23;
          v22 += 2;
        }

        while (v22 <= a6 - 2);
        v21 = v22;
      }

      else
      {
        v21 = 0;
      }

      if (v21 < a6)
      {
        v26 = v13 + v21;
        v27 = a6 - v21;
        v28 = v20 + v21;
        do
        {
          v29 = *v28++;
          *v26++ += v29;
          --v27;
        }

        while (v27);
      }

      v30 = *(a1 + 24) + 1;
      *(a1 + 24) = v30;
      ++v10;
    }

    while (v30 < *(a1 + 8) - 1);
  }

LABEL_21:
  if (a5)
  {
    v31 = a6 - 2;
    do
    {
      v32 = *v10;
      v33 = v10[1 - *(a1 + 8)];
      if (v15 == 1.0)
      {
        if (a6 >= 2)
        {
          v35 = 0;
          v45 = v13;
          v46 = *v10;
          v47 = a3;
          v48 = v10[1 - *(a1 + 8)];
          do
          {
            v49 = *v46++;
            v50 = vadd_s32(v49, *v45);
            v51.i64[0] = v50.i32[0];
            v51.i64[1] = v50.i32[1];
            *v47++ = vcvtq_f64_s64(v51);
            v52 = *v48++;
            *v45++ = vsub_s32(v50, v52);
            v35 += 2;
          }

          while (v35 <= v31);
          v35 = v35;
        }

        else
        {
          v35 = 0;
        }

        if (v35 < a6)
        {
          do
          {
            v53 = v32->i32[v35] + v13->i32[v35];
            a3->f64[v35] = v53;
            v13->i32[v35] = v53 - v33->i32[v35];
            ++v35;
          }

          while (a6 != v35);
        }
      }

      else
      {
        if (a6 >= 2)
        {
          v34 = 0;
          v36 = v13;
          v37 = *v10;
          v38 = a3;
          v39 = v10[1 - *(a1 + 8)];
          do
          {
            v40 = *v37++;
            v41 = vadd_s32(v40, *v36);
            v42.i64[0] = v41.i32[0];
            v42.i64[1] = v41.i32[1];
            *v38++ = vmulq_n_f64(vcvtq_f64_s64(v42), v15);
            v43 = *v39++;
            *v36++ = vsub_s32(v41, v43);
            v34 += 2;
          }

          while (v34 <= v31);
          v34 = v34;
        }

        else
        {
          v34 = 0;
        }

        if (v34 < a6)
        {
          do
          {
            v44 = v32->i32[v34] + v13->i32[v34];
            a3->f64[v34] = v15 * v44;
            v13->i32[v34] = v44 - v33->i32[v34];
            ++v34;
          }

          while (a6 != v34);
        }
      }

      a3 = (a3 + a4);
      ++v10;
      --a5;
    }

    while (a5);
  }
}

void sub_22D23E1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  cv::Exception::~Exception(&a29);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void cv::ColumnSum<double,double>::~ColumnSum(cv::BaseRowFilter *this)
{
  *this = &unk_284056100;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284056100;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void cv::ColumnSum<double,double>::operator()(uint64_t a1, float64x2_t **a2, uint64_t a3, int a4, int a5, int a6)
{
  v10 = a2;
  v14 = *(a1 + 32);
  v12 = (a1 + 32);
  v13 = v14;
  v15 = *(v12 - 2);
  v43 = v15;
  if (((*(v12 + 1) - v14) >> 3) == a6)
  {
    v16 = *(a1 + 24);
    if (v16)
    {
      v17 = *(a1 + 8);
      if (v16 != v17 - 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v46, "sumCount == ksize-1");
        std::string::basic_string[abi:ne200100]<0>(v45, "operator()");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/smooth.cpp");
        cv::Exception::Exception(v47, 4294967081, v46, v45, __p, 145);
        cv::error(v47, v18);
      }

      v10 = &a2[v17 - 1];
      goto LABEL_21;
    }
  }

  else
  {
    std::vector<long long>::resize(v12, a6);
    v15 = v43;
    *(a1 + 24) = 0;
    v13 = *(a1 + 32);
  }

  if (a6 >= 1)
  {
    bzero(v13, 8 * a6);
    v15 = v43;
  }

  v17 = *(a1 + 8);
  v19 = v17 - 1;
  if (v17 > 1)
  {
    v20 = 0;
    do
    {
      v21 = *v10;
      if (a6 >= 2)
      {
        v23 = 0;
        v24 = v13;
        v25 = *v10;
        do
        {
          v26 = *v25++;
          *v24 = vaddq_f64(*v24, v26);
          ++v24;
          v23 += 2;
        }

        while (v23 <= a6 - 2);
        v22 = v23;
      }

      else
      {
        v22 = 0;
      }

      if (v22 < a6)
      {
        v27 = &v13->f64[v22];
        v28 = a6 - v22;
        v29 = &v21->f64[v22];
        do
        {
          v30 = *v29++;
          *v27 = v30 + *v27;
          ++v27;
          --v28;
        }

        while (v28);
      }

      ++v20;
      ++v10;
    }

    while (v20 != v19);
    *(a1 + 24) = v19;
  }

LABEL_21:
  if (a5)
  {
    v31 = 1 - v17;
    v32 = a6 - 2;
    do
    {
      v33 = *v10;
      v34 = v10[v31];
      if (v15 == 1.0)
      {
        if (a6 >= 2)
        {
          v40 = 0;
          v36 = 0;
          do
          {
            v41 = vaddq_f64(v13[v40], v33[v40]);
            *(a3 + v40 * 16) = v41;
            v13[v40] = vsubq_f64(v41, v34[v40]);
            v36 += 2;
            ++v40;
          }

          while (v36 <= v32);
          v36 = v36;
        }

        else
        {
          v36 = 0;
        }

        if (v36 < a6)
        {
          do
          {
            v42 = v13->f64[v36] + v33->f64[v36];
            *(a3 + 8 * v36) = v42;
            v13->f64[v36] = v42 - v34->f64[v36];
            ++v36;
          }

          while (a6 != v36);
        }
      }

      else
      {
        if (a6 >= 2)
        {
          v37 = 0;
          v35 = 0;
          do
          {
            v38 = vaddq_f64(v13[v37], v33[v37]);
            *(a3 + v37 * 16) = vmulq_n_f64(v38, v15);
            v13[v37] = vsubq_f64(v38, v34[v37]);
            v35 += 2;
            ++v37;
          }

          while (v35 <= v32);
          v35 = v35;
        }

        else
        {
          v35 = 0;
        }

        if (v35 < a6)
        {
          do
          {
            v39 = v13->f64[v35] + v33->f64[v35];
            *(a3 + 8 * v35) = v15 * v39;
            v13->f64[v35] = v39 - v34->f64[v35];
            ++v35;
          }

          while (a6 != v35);
        }
      }

      a3 += a4;
      ++v10;
      --a5;
    }

    while (a5);
  }
}

void sub_22D23E614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  cv::Exception::~Exception(&a29);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void cv::copyMakeBorder(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v179[515] = *MEMORY[0x277D85DE8];
  (**v2)(&v166);
  if ((v12 | v14 | v10 | v8) < 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v177, "top >= 0 && bottom >= 0 && left >= 0 && right >= 0");
    std::string::basic_string[abi:ne200100]<0>(v156, "copyMakeBorder");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/utils.cpp");
    cv::Exception::Exception(&v152, 4294967081, &v177, v156, __p, 208);
    cv::error(&v152, v17);
  }

  v18 = v166;
  if ((v6 & 0x10) == 0 && (v166 & 0x8000) != 0)
  {
    v146 = v6;
    v19 = v4;
    v152 = 0;
    v177 = 0;
    cv::Mat::locateROI(&v166, &v152, &v177);
    if (SHIDWORD(v177) >= v14)
    {
      v20 = v14;
    }

    else
    {
      v20 = HIDWORD(v177);
    }

    if (HIDWORD(v152) - (HIDWORD(v177) + v167) >= v12)
    {
      v21 = v12;
    }

    else
    {
      v21 = HIDWORD(v152) - (HIDWORD(v177) + v167);
    }

    if (v177 >= v10)
    {
      v22 = v10;
    }

    else
    {
      v22 = v177;
    }

    if (v152 - (v177 + v168) >= v8)
    {
      v23 = v8;
    }

    else
    {
      v23 = v152 - (v177 + v168);
    }

    cv::Mat::adjustROI(&v166, v20, v21, v22, v23);
    v14 -= v20;
    v10 -= v22;
    v12 -= v21;
    v8 -= v23;
    v18 = v166;
    v4 = v19;
    v6 = v146;
  }

  (*(*v16 + 136))(v16, (v14 + v12 + v167), (v10 + v8 + v168), v18 & 0xFFF, 0xFFFFFFFFLL, 0, 0);
  (**v16)(v156, v16, 0xFFFFFFFFLL);
  if (!v14 && !v10 && !v12 && !v8)
  {
    if (__src != v157 || v176 != v164)
    {
      cv::_OutputArray::_OutputArray(&v152, v156);
      cv::Mat::copyTo(&v166, &v152);
    }

    goto LABEL_123;
  }

  v140 = v6 & 0xFFFFFFEF;
  v131 = v14;
  if ((v6 & 0xFFFFFFEF) != 0)
  {
    v136 = v176;
    v24 = __src;
    v25 = v174[1];
    v26 = v164;
    v130 = v157;
    v27 = v162[1];
    if (SHIDWORD(v166) < 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(v175 + 2 * HIDWORD(v166) - 2);
    }

    v138 = *v174;
    v127 = *v162;
    v135 = ((__src | v157 | v28 | v176) | v164) & 3;
    if ((((__src | v157 | v28 | v176) | v164) & 3) != 0)
    {
      v33 = v28;
    }

    else
    {
      v33 = (v28 / 4);
    }

    v34 = v33 * (v27 - v25);
    v152 = &v154;
    v153 = 1032;
    if (v34 >= 0x409)
    {
      v153 = v34;
      operator new[]();
    }

    v128 = v27;
    if (v10 >= 1)
    {
      v35 = 0;
      v36 = &v155;
      __n = vdupq_n_s64(4uLL);
      v147 = vdupq_n_s64(v33 - 1);
      do
      {
        v37 = cv::borderInterpolate((v35 - v10), v25, v140);
        if (v33 >= 1)
        {
          v38 = v37 * v33;
          v39 = (v33 + 3) & 0xFFFFFFFC;
          v40 = v36;
          v41 = xmmword_22D297DE0;
          v42 = xmmword_22D297DD0;
          do
          {
            v43 = vmovn_s64(vcgeq_u64(v147, v41));
            if (vuzp1_s16(v43, *v41.i8).u8[0])
            {
              *(v40 - 2) = v38;
            }

            if (vuzp1_s16(v43, *&v41).i8[2])
            {
              *(v40 - 1) = v38 + 1;
            }

            if (vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v147, *&v42))).i32[1])
            {
              *v40 = v38 + 2;
              *(v40 + 1) = v38 + 3;
            }

            v42 = vaddq_s64(v42, __n);
            v41 = vaddq_s64(v41, __n);
            v38 += 4;
            v40 += 2;
            v39 -= 4;
          }

          while (v39);
        }

        ++v35;
        v36 = (v36 + 4 * v33);
      }

      while (v35 != v10);
    }

    v44 = (v128 - (v25 + v10));
    if (v44 >= 1)
    {
      v45 = 0;
      v148 = vdupq_n_s64(v33 - 1);
      v46 = &v154 + 4 * v33 * v10 + 8;
      __na = vdupq_n_s64(4uLL);
      do
      {
        v47 = cv::borderInterpolate((v25 + v45), v25, v140);
        if (v33 >= 1)
        {
          v48 = v47 * v33;
          v49 = (v33 + 3) & 0xFFFFFFFC;
          v50 = v46;
          v51 = xmmword_22D297DE0;
          v52 = xmmword_22D297DD0;
          do
          {
            v53 = vmovn_s64(vcgeq_u64(v148, v51));
            if (vuzp1_s16(v53, *v51.i8).u8[0])
            {
              *(v50 - 2) = v48;
            }

            if (vuzp1_s16(v53, *&v51).i8[2])
            {
              *(v50 - 1) = v48 + 1;
            }

            if (vuzp1_s16(*&v51, vmovn_s64(vcgeq_u64(v148, *&v52))).i32[1])
            {
              *v50 = v48 + 2;
              v50[1] = v48 + 3;
            }

            v52 = vaddq_s64(v52, __na);
            v51 = vaddq_s64(v51, __na);
            v48 += 4;
            v50 += 4;
            v49 -= 4;
          }

          while (v49);
        }

        ++v45;
        v46 += 4 * v33;
      }

      while (v45 != v44);
    }

    v129 = v33 * v128;
    v54 = v26 * v131;
    v133 = &v130[v54];
    v132 = 2 * (v135 == 0);
    if (v138 >= 1)
    {
      v55 = 0;
      v56 = (v33 * v10);
      v57 = &v133[v56 << v132];
      v58 = v33 * v25;
      __nb = (v33 * v25) << v132;
      v59 = (v33 * v44);
      v60 = v54 + (v56 << v132);
      v61 = &v130[v60 - v56];
      v62 = &v130[v60 + v58];
      v63 = &v130[v60 - 4 * v56];
      v64 = &v130[4 * v58 + v60];
      do
      {
        if (v57 != v24)
        {
          memcpy(v57, v24, __nb);
        }

        if (v135)
        {
          v65 = &v154;
          v66 = v61;
          v67 = v56;
          if (v56 >= 1)
          {
            do
            {
              v68 = *v65;
              v65 = (v65 + 4);
              *v66++ = v24[v68];
              --v67;
            }

            while (v67);
          }

          v69 = &v154 + v56;
          v70 = v62;
          v71 = v59;
          if (v59 >= 1)
          {
            do
            {
              v72 = *v69++;
              *v70++ = v24[v72];
              --v71;
            }

            while (v71);
          }
        }

        else
        {
          v73 = &v154;
          v74 = v63;
          v75 = v56;
          if (v56 >= 1)
          {
            do
            {
              v76 = *v73;
              v73 = (v73 + 4);
              *v74 = *&v24[4 * v76];
              v74 += 4;
              --v75;
            }

            while (v75);
          }

          v77 = &v154 + v56;
          v78 = v64;
          v79 = v59;
          if (v59 >= 1)
          {
            do
            {
              v80 = *v77++;
              *v78 = *&v24[4 * v80];
              v78 += 4;
              --v79;
            }

            while (v79);
          }
        }

        ++v55;
        v57 += v26;
        v24 += v136;
        v61 += v26;
        v62 += v26;
        v63 += v26;
        v64 += v26;
      }

      while (v55 != v138);
    }

    v81 = v129 << v132;
    if (v131 >= 1)
    {
      v82 = v130;
      v83 = -v131;
      v84 = v131;
      do
      {
        v85 = cv::borderInterpolate(v83, v138, v140);
        memcpy(v82, &v133[v26 * v85], v81);
        v82 += v26;
        v83 = (v83 + 1);
        --v84;
      }

      while (v84);
    }

    v86 = (v127 - (v138 + v131));
    if (v86 >= 1)
    {
      v87 = &v130[v26 * (v131 + v138)];
      v88 = v138;
      do
      {
        v89 = cv::borderInterpolate(v88, v138, v140);
        memcpy(v87, &v133[v26 * v89], v81);
        v87 += v26;
        v88 = (v88 + 1);
        --v86;
      }

      while (v86);
    }

    if (v152 != &v154 && v152 != 0)
    {
LABEL_122:
      MEMORY[0x2318CB180]();
    }
  }

  else
  {
    v29 = (v166 >> 3) & 0x1FF;
    v30 = v29 + 1;
    v152 = &v154;
    v153 = 520;
    if (v29 < 4)
    {
      v32 = v29 + 1;
    }

    else
    {
      v31 = *v4;
      if (*v4 != v4[1] || v31 != v4[2] || v31 != v4[3])
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "value[0] == value[1] && value[0] == value[2] && value[0] == value[3]");
        std::string::basic_string[abi:ne200100]<0>(v151, "copyMakeBorder");
        std::string::basic_string[abi:ne200100]<0>(v150, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/utils.cpp");
        cv::Exception::Exception(&v177, 4294967081, __p, v151, v150, 248);
        cv::error(&v177, v91);
      }

      v32 = 1;
    }

    v92.n128_f64[0] = cv::scalarToRawData(v4, &v154, (v166 & 7 | (8 * v32)) - 8, v30);
    v93 = v162[1];
    if (SHIDWORD(v166) < 1)
    {
      v94 = 0;
    }

    else
    {
      v94 = *(v175 + 2 * HIDWORD(v166) - 2);
    }

    v95 = __src;
    v96 = v176;
    v97 = v174[1];
    v149 = *v174;
    v98 = v164;
    v137 = *v162;
    v99 = v152;
    v177 = v179;
    v178 = 4104;
    v141 = v94 * v93;
    __nc = v157;
    if ((v94 * v93) >= 0x1009)
    {
      v178 = v141;
      operator new[]();
    }

    if (v93 >= 1)
    {
      v100 = 0;
      v101 = v179;
      do
      {
        if (v94 >= 1)
        {
          v102 = v99;
          v103 = v101;
          v104 = v94;
          do
          {
            v105 = *v102;
            v102 = (v102 + 1);
            *v103++ = v105;
            --v104;
          }

          while (v104);
        }

        ++v100;
        v101 = (v101 + v94);
      }

      while (v100 != v93);
    }

    v134 = v149 + v14;
    v139 = v14;
    if (v149 >= 1)
    {
      v106 = v93 - (v97 + v10);
      v107 = v94 * v10;
      v108 = &__nc[v98 * v14];
      v109 = v107;
      v110 = v94 * v97;
      v111 = v94 * v106;
      v112 = v110;
      v113 = v109 + v110;
      v114 = v149;
      do
      {
        if (v95 != &v108[v109])
        {
          memcpy(&v108[v109], v95, v112);
        }

        memcpy(v108, v179, v109);
        memcpy(&v108[v113], v179, v111);
        v95 += v96;
        v108 += v98;
        --v114;
      }

      while (v114);
    }

    v115 = (v137 - v134);
    if (v131 >= 1)
    {
      v116 = __nc;
      v117 = v131;
      do
      {
        memcpy(v116, v179, v141);
        v116 += v98;
        --v117;
      }

      while (v117);
    }

    if (v115 >= 1)
    {
      v118 = &__nc[v98 * (v139 + v149)];
      do
      {
        memcpy(v118, v179, v141);
        v118 += v98;
        --v115;
      }

      while (v115);
    }

    if (v177 != v179 && v177 != 0)
    {
      MEMORY[0x2318CB180](v92);
    }

    if (v152 != &v154 && v152 != 0)
    {
      goto LABEL_122;
    }
  }

LABEL_123:
  if (v158 && atomic_fetch_add(v158, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v156);
  }

  v157 = 0;
  v159 = 0;
  v161 = 0;
  v160 = 0;
  if (SHIDWORD(v156[0]) >= 1)
  {
    v121 = 0;
    v122 = v162;
    do
    {
      v122[v121++] = 0;
    }

    while (v121 < SHIDWORD(v156[0]));
  }

  v158 = 0;
  if (v163)
  {
    v123 = v163 == &v164;
  }

  else
  {
    v123 = 1;
  }

  if (!v123)
  {
    free(v163);
  }

  if (v170 && atomic_fetch_add(v170, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v166);
  }

  __src = 0;
  v171 = 0;
  v173 = 0;
  v172 = 0;
  if (SHIDWORD(v166) >= 1)
  {
    v124 = 0;
    v125 = v174;
    do
    {
      v125[v124++] = 0;
    }

    while (v124 < SHIDWORD(v166));
  }

  v170 = 0;
  if (v175)
  {
    v126 = v175 == &v176;
  }

  else
  {
    v126 = 1;
  }

  if (!v126)
  {
    free(v175);
  }
}

void sub_22D23F3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41)
{
  cv::Exception::~Exception(&STACK[0x1208]);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (SLOBYTE(STACK[0x11A7]) < 0)
  {
    operator delete(STACK[0x1190]);
  }

  if (a41 != a22)
  {
    if (a41)
    {
      MEMORY[0x2318CB180]();
    }
  }

  cv::Mat::~Mat(&STACK[0x1130]);
  cv::Mat::~Mat(&STACK[0x11A8]);
  _Unwind_Resume(a1);
}

void cv::getDerivKernels(cv *this, const cv::_OutputArray *a2, const cv::_OutputArray *a3, int a4, int a5, char a6, unsigned int a7)
{
  if (a5 <= 0)
  {
    cv::getScharrKernels(this, a2, a3, a4, a6, a7);
  }

  else
  {
    cv::getSobelKernels(this, a2, a3, a4, a5, a6, a7);
  }
}

void cv::getScharrKernels(cv *this, const cv::_OutputArray *a2, const cv::_OutputArray *a3, int a4, unsigned __int8 a5, unsigned int a6)
{
  v32 = a3;
  v66 = *MEMORY[0x277D85DE8];
  if (a6 - 5 >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(v45, "ktype == CV_32F || ktype == CV_64F");
    std::string::basic_string[abi:ne200100]<0>(v37, "getScharrKernels");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/deriv.cpp");
    v8 = cv::Exception::Exception(&v53, 4294967081, v45, v37, __p, 136);
    cv::error(v8, v9);
  }

  (*(*this + 136))(this, 3, 1, a6, 0xFFFFFFFFLL, 1, 0);
  (*(*a2 + 136))(a2, 3, 1, a6, 0xFFFFFFFFLL, 1, 0);
  (**this)(v45, this, 0xFFFFFFFFLL);
  (**a2)(v37, a2, 0xFFFFFFFFLL);
  if ((a4 | v32) < 0 || a4 + v32 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "dx >= 0 && dy >= 0 && dx+dy == 1");
    std::string::basic_string[abi:ne200100]<0>(&v64, "getScharrKernels");
    std::string::basic_string[abi:ne200100]<0>(v36, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/deriv.cpp");
    v10 = cv::Exception::Exception(&v53, 4294967081, __p, &v64, v36, 142);
    cv::error(v10, v11);
  }

  v12 = 1;
  do
  {
    v13 = v12;
    if (v12)
    {
      v14 = v45;
    }

    else
    {
      v14 = v37;
    }

    if (v12)
    {
      v15 = v32;
    }

    else
    {
      v15 = a4;
    }

    if (v15)
    {
      if (v15 != 1)
      {
        goto LABEL_18;
      }

      v16 = 0xFFFFFFFFLL;
      v17 = 1;
    }

    else
    {
      v17 = 3;
      v16 = 0xA00000003;
    }

    v64 = v16;
    v65 = v17;
LABEL_18:
    if (v13)
    {
      v18 = v45;
    }

    else
    {
      v18 = v37;
    }

    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    v54[0] = v20;
    v54[1] = v19;
    v55 = &v64;
    v56 = 0;
    v61 = v54;
    v62 = v63;
    v53 = 0x242FF4004;
    v63[0] = 4 * v19;
    v63[1] = 4;
    v59 = &v64 + 4 * v19 * v20;
    v60 = 0;
    v57 = &v64;
    v58 = v59;
    cv::_OutputArray::_OutputArray(__p, v14);
    v21 = 0.03125;
    if (((v15 != 1) & a5) == 0)
    {
      v21 = 1.0;
    }

    cv::Mat::convertTo(&v53, __p, a6, v21, 0.0);
    if (v56 && atomic_fetch_add(v56, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(&v53);
    }

    v55 = 0;
    v58 = 0;
    v59 = 0;
    v57 = 0;
    if (SHIDWORD(v53) >= 1)
    {
      v22 = 0;
      v23 = v61;
      do
      {
        v23[v22++] = 0;
      }

      while (v22 < SHIDWORD(v53));
    }

    v56 = 0;
    if (v62)
    {
      v24 = v62 == v63;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      free(v62);
    }

    v12 = 0;
  }

  while ((v13 & 1) != 0);
  if (v38 && atomic_fetch_add(v38, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v37);
  }

  v37[2] = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  if (SHIDWORD(v37[0]) >= 1)
  {
    v25 = 0;
    v26 = v42;
    do
    {
      *(v26 + 4 * v25++) = 0;
    }

    while (v25 < SHIDWORD(v37[0]));
  }

  v38 = 0;
  if (v43)
  {
    v27 = v43 == &v44;
  }

  else
  {
    v27 = 1;
  }

  if (!v27)
  {
    free(v43);
  }

  if (v46 && atomic_fetch_add(v46, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v45);
  }

  v45[2] = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  if (SHIDWORD(v45[0]) >= 1)
  {
    v28 = 0;
    v29 = v50;
    do
    {
      *(v29 + 4 * v28++) = 0;
    }

    while (v28 < SHIDWORD(v45[0]));
  }

  v46 = 0;
  if (v51)
  {
    v30 = v51 == &v52;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    free(v51);
  }
}

void sub_22D23FA70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void cv::getSobelKernels(cv *this, const cv::_OutputArray *a2, const cv::_OutputArray *a3, int a4, int a5, int a6, unsigned int a7)
{
  v59 = a3;
  if (a3 > 0 && a5 == 1)
  {
    v10 = 3;
  }

  else
  {
    v10 = a5;
  }

  if (a4 > 0 && a5 == 1)
  {
    v11 = 3;
  }

  else
  {
    v11 = a5;
  }

  v61 = v11;
  v62 = v10;
  if (a7 - 5 >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(v75, "ktype == CV_32F || ktype == CV_64F");
    std::string::basic_string[abi:ne200100]<0>(v67, "getSobelKernels");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/deriv.cpp");
    v12 = cv::Exception::Exception(&v83, 4294967081, v75, v67, __p, 171);
    cv::error(v12, v13);
  }

  (*(*this + 136))(this, v10, 1, a7, 0xFFFFFFFFLL, 1, 0);
  (*(*a2 + 136))(a2, v61, 1, a7, 0xFFFFFFFFLL, 1, 0);
  (**this)(v75, this, 0xFFFFFFFFLL);
  (**a2)(v67, a2, 0xFFFFFFFFLL);
  if (a5 > 31 || (a5 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "The kernel size must be odd and not larger than 31");
    std::string::basic_string[abi:ne200100]<0>(v66, "getSobelKernels");
    std::string::basic_string[abi:ne200100]<0>(v65, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/deriv.cpp");
    v14 = cv::Exception::Exception(&v83, 4294967085, __p, v66, v65, 179);
    cv::error(v14, v15);
  }

  v16 = v62;
  if (v62 <= v61)
  {
    v16 = v61;
  }

  std::vector<int>::vector[abi:ne200100](v66, v16 + 1);
  if ((a4 | v59) < 0 || (a4 + v59 < 0) ^ __OFADD__(a4, v59) | (a4 + v59 == 0))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "dx >= 0 && dy >= 0 && dx+dy > 0");
    std::string::basic_string[abi:ne200100]<0>(v65, "getSobelKernels");
    std::string::basic_string[abi:ne200100]<0>(v64, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/deriv.cpp");
    v17 = cv::Exception::Exception(&v83, 4294967081, __p, v65, v64, 182);
    cv::error(v17, v18);
  }

  v19 = 1;
  do
  {
    v20 = v19;
    if (v19)
    {
      v21 = v75;
    }

    else
    {
      v21 = v67;
    }

    if (v19)
    {
      v22 = v59;
    }

    else
    {
      v22 = a4;
    }

    if (v19)
    {
      v23 = v62;
    }

    else
    {
      v23 = v61;
    }

    if (v23 <= v22)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ksize > order");
      std::string::basic_string[abi:ne200100]<0>(v65, "getSobelKernels");
      std::string::basic_string[abi:ne200100]<0>(v64, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/deriv.cpp");
      v24 = cv::Exception::Exception(&v83, 4294967081, __p, v65, v64, 190);
      cv::error(v24, v25);
    }

    v26 = v66[0];
    v27 = v66[0];
    if (v23 == 1)
    {
      goto LABEL_51;
    }

    if (v23 == 3)
    {
      v28 = 0x200000001;
      if (v22)
      {
        if (v22 == 1)
        {
          v28 = 0xFFFFFFFFLL;
        }

        else
        {
          v28 = 0xFFFFFFFE00000001;
        }
      }

      v27 = v66[0] + 8;
      *v66[0] = v28;
LABEL_51:
      *v27 = 1;
      goto LABEL_52;
    }

    *v66[0] = 1;
    if (v23 >= 1)
    {
      bzero(v26 + 1, 4 * v23);
    }

    v29 = v23 + ~v22;
    if (v29 >= 1)
    {
      for (i = 0; i != v29; ++i)
      {
        if (v23 >= 1)
        {
          v31 = *v26;
          v32 = (v23 + 1) - 1;
          v33 = v26;
          v34 = v26;
          do
          {
            v35 = v34[1];
            ++v34;
            v36 = *v33;
            *v33 = v31;
            v31 = v36 + v35;
            v33 = v34;
            --v32;
          }

          while (v32);
        }
      }
    }

    if (v22 >= 1)
    {
      for (j = 0; j != v22; ++j)
      {
        if (v23 >= 1)
        {
          v38 = -*v26;
          v39 = (v23 + 1) - 1;
          v40 = v26;
          v41 = v26;
          do
          {
            v42 = v41[1];
            ++v41;
            v43 = *v40;
            *v40 = v38;
            v38 = v43 - v42;
            v40 = v41;
            --v39;
          }

          while (v39);
        }
      }
    }

LABEL_52:
    if (v20)
    {
      v44 = v75;
    }

    else
    {
      v44 = v67;
    }

    v46 = *(v44 + 2);
    v45 = *(v44 + 3);
    v84[0] = v46;
    v84[1] = v45;
    v85 = v26;
    v86 = 0;
    v91 = v84;
    v92 = v93;
    v83 = 0x242FF4004;
    v93[0] = 4 * v45;
    v93[1] = 4;
    v89 = v26 + 4 * v45 * v46;
    v90 = 0;
    v87 = v26;
    v88 = v89;
    v47 = 1.0;
    if (a6)
    {
      v47 = 1.0 / (1 << (v23 + ~v22));
    }

    cv::_OutputArray::_OutputArray(__p, v21);
    cv::Mat::convertTo(&v83, __p, a7, v47, 0.0);
    if (v86 && atomic_fetch_add(v86, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(&v83);
    }

    v85 = 0;
    v88 = 0;
    v89 = 0;
    v87 = 0;
    if (SHIDWORD(v83) >= 1)
    {
      v48 = 0;
      v49 = v91;
      do
      {
        v49[v48++] = 0;
      }

      while (v48 < SHIDWORD(v83));
    }

    v86 = 0;
    if (v92)
    {
      v50 = v92 == v93;
    }

    else
    {
      v50 = 1;
    }

    if (!v50)
    {
      free(v92);
    }

    v19 = 0;
  }

  while ((v20 & 1) != 0);
  if (v66[0])
  {
    v66[1] = v66[0];
    operator delete(v66[0]);
  }

  if (v68 && atomic_fetch_add(v68, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v67);
  }

  v67[2] = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  if (SHIDWORD(v67[0]) >= 1)
  {
    v51 = 0;
    v52 = v72;
    do
    {
      *(v52 + 4 * v51++) = 0;
    }

    while (v51 < SHIDWORD(v67[0]));
  }

  v68 = 0;
  if (v73)
  {
    v53 = v73 == &v74;
  }

  else
  {
    v53 = 1;
  }

  if (!v53)
  {
    free(v73);
  }

  if (v76 && atomic_fetch_add(v76, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v75);
  }

  v75[2] = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  if (SHIDWORD(v75[0]) >= 1)
  {
    v54 = 0;
    v55 = v80;
    do
    {
      *(v55 + 4 * v54++) = 0;
    }

    while (v54 < SHIDWORD(v75[0]));
  }

  v76 = 0;
  if (v81)
  {
    v56 = v81 == &v82;
  }

  else
  {
    v56 = 1;
  }

  if (!v56)
  {
    free(v81);
  }
}

void sub_22D2402E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  cv::Exception::~Exception((v57 - 240));
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a31)
  {
    operator delete(a31);
  }

  cv::Mat::~Mat(&a37);
  cv::Mat::~Mat(&a52);
  _Unwind_Resume(a1);
}

void cv::Sobel(cv *this, const cv::_InputArray *a2, const cv::_OutputArray *a3, const cv::_OutputArray *a4, int a5, int a6, double a7, double a8)
{
  v12 = a3;
  (**this)(v29);
  if (v12 < 0)
  {
    v12 = v29[0] & 7;
  }

  v28[0] = vrev64_s32(*v29[8]);
  (*(*a2 + 128))(a2, v28, v29[0] & 0xFF8 | v12 & 7u, 0xFFFFFFFFLL, 0, 0);
  (**a2)(v28, a2, 0xFFFFFFFFLL);
  v14 = v29[0] & 7;
  v25 = &v24[2];
  v26 = v27;
  if (v12 > v14)
  {
    v14 = v12;
  }

  v27[0] = 0;
  v27[1] = 0;
  if (v14 <= 5)
  {
    v15 = 5;
  }

  else
  {
    v15 = v14;
  }

  v24[0] = 1124007936;
  memset(&v24[1], 0, 60);
  v21 = &v20[2];
  v22 = v23;
  v23[0] = 0;
  v23[1] = 0;
  v20[0] = 1124007936;
  memset(&v20[1], 0, 60);
  cv::_OutputArray::_OutputArray(v30, v24);
  cv::_OutputArray::_OutputArray(v19, v20);
  cv::getDerivKernels(v30, v19, a4, a5, a6, 0, v15);
  if (a7 != 1.0)
  {
    if (a4)
    {
      cv::_OutputArray::_OutputArray(v30, v20);
      cv::Mat::convertTo(v20, v30, -1, a7, 0.0);
    }

    else
    {
      cv::_OutputArray::_OutputArray(v30, v24);
      cv::Mat::convertTo(v24, v30, -1, a7, 0.0);
    }
  }

  cv::_InputArray::_InputArray(v30, v29);
  cv::_OutputArray::_OutputArray(v19, v28);
  cv::_InputArray::_InputArray(v18, v24);
  cv::_InputArray::_InputArray(v17, v20);
  v16 = -1;
  cv::sepFilter2D(v30, v19, v12, v18, v17, &v16);
}

void sub_22D2408B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  cv::Mat::~Mat(&a23);
  cv::Mat::~Mat(&a35);
  cv::Mat::~Mat(&a47);
  cv::Mat::~Mat((v47 - 224));
  _Unwind_Resume(a1);
}

void cv::Scharr(cv *this, const cv::_InputArray *a2, const cv::_OutputArray *a3, const cv::_OutputArray *a4, int a5, double a6, double a7)
{
  v10 = a3;
  (**this)(v27);
  if (v10 < 0)
  {
    v10 = v27[0] & 7;
  }

  v26[0] = vrev64_s32(*v27[8]);
  (*(*a2 + 128))(a2, v26, v27[0] & 0xFF8 | v10 & 7u, 0xFFFFFFFFLL, 0, 0);
  (**a2)(v26, a2, 0xFFFFFFFFLL);
  v12 = v27[0] & 7;
  v23 = &v22[2];
  v24 = v25;
  if (v10 > v12)
  {
    v12 = v10;
  }

  v25[0] = 0;
  v25[1] = 0;
  if (v12 <= 5)
  {
    v13 = 5;
  }

  else
  {
    v13 = v12;
  }

  v22[0] = 1124007936;
  memset(&v22[1], 0, 60);
  v19 = &v18[2];
  v20 = v21;
  v21[0] = 0;
  v21[1] = 0;
  v18[0] = 1124007936;
  memset(&v18[1], 0, 60);
  cv::_OutputArray::_OutputArray(v28, v22);
  cv::_OutputArray::_OutputArray(v17, v18);
  cv::getScharrKernels(v28, v17, a4, a5, 0, v13);
  if (a6 != 1.0)
  {
    if (a4)
    {
      cv::_OutputArray::_OutputArray(v28, v18);
      cv::Mat::convertTo(v18, v28, -1, a6, 0.0);
    }

    else
    {
      cv::_OutputArray::_OutputArray(v28, v22);
      cv::Mat::convertTo(v22, v28, -1, a6, 0.0);
    }
  }

  cv::_InputArray::_InputArray(v28, v27);
  cv::_OutputArray::_OutputArray(v17, v26);
  cv::_InputArray::_InputArray(v16, v22);
  cv::_InputArray::_InputArray(v15, v18);
  v14 = -1;
  cv::sepFilter2D(v28, v17, v10, v16, v15, &v14);
}

void sub_22D240D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  cv::Mat::~Mat(&a23);
  cv::Mat::~Mat(&a35);
  cv::Mat::~Mat(&a47);
  cv::Mat::~Mat((v47 - 208));
  _Unwind_Resume(a1);
}

void cv::Laplacian(cv *this, const cv::_InputArray *a2, const cv::_OutputArray *a3, int a4, char a5, double a6, double a7)
{
  v11 = a3;
  v57[3] = *MEMORY[0x277D85DE8];
  (**this)(v42);
  if (v11 < 0)
  {
    v11 = v42[0] & 7;
  }

  v34[0] = vrev64_s32(*v47);
  (*(*a2 + 128))(a2, v34, v42[0] & 0xFF8 | v11 & 7u, 0xFFFFFFFFLL, 0, 0);
  (**a2)(v34, a2, 0xFFFFFFFFLL);
  if ((a4 | 2) != 3)
  {
    v22 = v42[0];
    v31 = v30 + 8;
    v32 = &v33;
    if ((v42[0] & 7) < 6)
    {
      v23 = 5;
    }

    else
    {
      v23 = 6;
    }

    v24 = (v42[0] & 7) == 0 && a4 < 6;
    v33 = 0uLL;
    LODWORD(v30[0]) = 1124007936;
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = v23;
    }

    memset(v30 + 4, 0, 32);
    if (v11 <= (v42[0] & 7))
    {
      v26 = v42[0] & 7;
    }

    else
    {
      v26 = v11;
    }

    *(&v30[2] + 4) = 0uLL;
    if (v26 <= 5)
    {
      v27 = 5;
    }

    else
    {
      v27 = v26;
    }

    v30[3] = 0uLL;
    v55 = v54 + 8;
    v56 = v57;
    v57[0] = 0;
    v57[1] = 0;
    LODWORD(v54[0]) = 1124007936;
    memset(v54 + 4, 0, 60);
    cv::_OutputArray::_OutputArray(&v29, v30);
    cv::_OutputArray::_OutputArray(&v53, v54);
    cv::getSobelKernels(&v29, &v53, 2, 0, a4, 0, v27);
    v28 = v42[0];
    cv::_InputArray::_InputArray(&v29, v30);
    cv::_InputArray::_InputArray(&v53, v54);
    *v50 = -1;
    *v51 = 0u;
    v52 = 0u;
    cv::createSeparableLinearFilter(v28 & 0xFFF, v25 | v22 & 0xFF8, &v29, &v53, v50);
  }

  v55 = 0x4000000000000000;
  v54[0] = xmmword_22D29BA20;
  v54[1] = unk_22D29BA30;
  v54[2] = xmmword_22D29BA40;
  v54[3] = unk_22D29BA50;
  *(v30 + 4) = 0x300000002;
  *&v30[1] = v54 + 36 * (a4 == 3);
  *(&v30[1] + 1) = 0;
  v31 = v30 + 8;
  v32 = &v33;
  HIDWORD(v30[0]) = 3;
  LODWORD(v30[0]) = 1124024325;
  v33 = xmmword_22D29BA10;
  v30[3] = (*&v30[1] + 36);
  *&v30[2] = *&v30[1];
  *(&v30[2] + 1) = *&v30[1] + 36;
  if (a6 != 1.0)
  {
    cv::_OutputArray::_OutputArray(&v29, v30);
    cv::Mat::convertTo(v30, &v29, -1, a6, 0.0);
  }

  cv::_InputArray::_InputArray(&v29, v42);
  cv::_OutputArray::_OutputArray(&v53, v34);
  cv::_InputArray::_InputArray(v51, v30);
  *v50 = -1;
  cv::filter2D(&v29, &v53, v11, v51, v50, a5, a7);
  if (*(&v30[1] + 1) && atomic_fetch_add(*(&v30[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v30);
  }

  *&v30[1] = 0;
  memset(&v30[2], 0, 24);
  if (SDWORD1(v30[0]) >= 1)
  {
    v13 = 0;
    v14 = v31;
    do
    {
      *&v14[4 * v13++] = 0;
    }

    while (v13 < SDWORD1(v30[0]));
  }

  *(&v30[1] + 1) = 0;
  if (v32)
  {
    v15 = v32 == &v33;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    free(v32);
  }

  if (v35 && atomic_fetch_add(v35, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v34);
  }

  v34[2] = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (SHIDWORD(v34[0]) >= 1)
  {
    v16 = 0;
    v17 = v39;
    do
    {
      *(v17 + 4 * v16++) = 0;
    }

    while (v16 < SHIDWORD(v34[0]));
  }

  v35 = 0;
  if (v40)
  {
    v18 = v40 == &v41;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    free(v40);
  }

  if (v43 && atomic_fetch_add(v43, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v42);
  }

  v42[2] = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if (SHIDWORD(v42[0]) >= 1)
  {
    v19 = 0;
    v20 = v47;
    do
    {
      v20->i32[v19++] = 0;
    }

    while (v19 < SHIDWORD(v42[0]));
  }

  v43 = 0;
  if (v48)
  {
    v21 = v48 == &v49;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    free(v48);
  }
}