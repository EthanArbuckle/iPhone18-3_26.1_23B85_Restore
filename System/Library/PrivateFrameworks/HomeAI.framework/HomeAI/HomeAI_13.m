void cv::MorphColumnFilter<cv::MinOp<unsigned short>,cv::MorphColumnNoVec>::~MorphColumnFilter(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::MorphColumnFilter<cv::MinOp<unsigned short>,cv::MorphColumnNoVec>::operator()(uint64_t result, uint64_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = a4 >> 1;
  v8 = v6 <= 1 || a5 <= 1;
  if (v8)
  {
    v9 = a5;
  }

  else
  {
    v10 = (a4 & 0xFFFFFFFE);
    v11 = 8 * v6;
    do
    {
      if (a6 >= 4)
      {
        v12 = 0;
        v14 = *a2;
        v13 = a2[1];
        do
        {
          v15 = *(v13 + 2 * v12);
          if (v6 < 3)
          {
            v17 = 2;
          }

          else
          {
            v16 = 16;
            do
            {
              v15 = vmin_u16(*(a2[v16 / 8] + 2 * v12), v15);
              v16 += 8;
            }

            while (v11 != v16);
            v17 = v6;
          }

          v18 = (v14 + 2 * v12);
          v19 = *v18;
          if (v19 >= v15.u16[0])
          {
            LOWORD(v19) = v15.i16[0];
          }

          v20 = (a3 + 2 * v12);
          *v20 = v19;
          v21 = v18[1];
          if (v21 >= v15.u16[1])
          {
            LOWORD(v21) = v15.i16[1];
          }

          v20[1] = v21;
          v22 = v18[2];
          if (v22 >= v15.u16[2])
          {
            LOWORD(v22) = v15.i16[2];
          }

          v20[2] = v22;
          v23 = v18[3];
          if (v23 >= v15.u16[3])
          {
            LOWORD(v23) = v15.i16[3];
          }

          v20[3] = v23;
          result = a2[v17] + 2 * v12;
          v24 = *result;
          if (v24 >= v15.u16[0])
          {
            LOWORD(v24) = v15.i16[0];
          }

          v25 = (a3 + 2 * (v12 + v7));
          *v25 = v24;
          v26 = *(result + 2);
          if (v26 >= v15.u16[1])
          {
            LOWORD(v26) = v15.i16[1];
          }

          v25[1] = v26;
          v27 = *(result + 4);
          if (v27 >= v15.u16[2])
          {
            LOWORD(v27) = v15.i16[2];
          }

          v25[2] = v27;
          LODWORD(result) = *(result + 6);
          if (result >= v15.u16[3])
          {
            result = v15.u16[3];
          }

          else
          {
            result = result;
          }

          v25[3] = result;
          v12 += 4;
        }

        while (v12 <= a6 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < a6)
      {
        v29 = *a2;
        v28 = a2[1];
        do
        {
          LODWORD(result) = *(v28 + 2 * v12);
          if (v6 < 3)
          {
            v31 = 2;
          }

          else
          {
            v30 = 16;
            do
            {
              if (*(a2[v30 / 8] + 2 * v12) >= result)
              {
                LODWORD(result) = result;
              }

              else
              {
                LODWORD(result) = *(a2[v30 / 8] + 2 * v12);
              }

              v30 += 8;
            }

            while (v11 != v30);
            v31 = v6;
          }

          v32 = *(v29 + 2 * v12);
          if (v32 >= result)
          {
            LOWORD(v32) = result;
          }

          *(a3 + 2 * v12) = v32;
          v33 = *(a2[v31] + 2 * v12);
          if (v33 >= result)
          {
            result = result;
          }

          else
          {
            result = v33;
          }

          *(a3 + 2 * (v12 + v7)) = result;
          ++v12;
        }

        while (v12 != a6);
      }

      v9 = a5 - 2;
      a3 += 2 * v10;
      a2 += 2;
      v8 = a5 <= 3;
      a5 -= 2;
    }

    while (!v8);
  }

  if (v9 >= 1)
  {
    v34 = 8 * v6;
    do
    {
      if (a6 >= 4)
      {
        v35 = 0;
        v36 = *a2;
        do
        {
          v37 = *(v36 + 2 * v35);
          if (v6 >= 2)
          {
            v38 = 8;
            do
            {
              result = a2[v38 / 8];
              v37 = vmin_u16(*(result + 2 * v35), v37);
              v38 += 8;
            }

            while (v34 != v38);
          }

          *(a3 + 2 * v35) = v37;
          v35 += 4;
        }

        while (v35 <= a6 - 4);
        v35 = v35;
      }

      else
      {
        v35 = 0;
      }

      if (v35 < a6)
      {
        v39 = *a2;
        do
        {
          v40 = *(v39 + 2 * v35);
          if (v6 >= 2)
          {
            v41 = 8;
            do
            {
              result = *(a2[v41 / 8] + 2 * v35);
              if (result < v40)
              {
                v40 = *(a2[v41 / 8] + 2 * v35);
              }

              v41 += 8;
            }

            while (v34 != v41);
          }

          *(a3 + 2 * v35++) = v40;
        }

        while (v35 != a6);
      }

      a3 += 2 * v7;
      ++a2;
      v42 = __OFSUB__(v9--, 1);
    }

    while (!((v9 < 0) ^ v42 | (v9 == 0)));
  }

  return result;
}

void cv::MorphColumnFilter<cv::MinOp<short>,cv::MorphColumnNoVec>::~MorphColumnFilter(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::MorphColumnFilter<cv::MinOp<short>,cv::MorphColumnNoVec>::operator()(uint64_t result, uint64_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = a4 >> 1;
  v8 = v6 <= 1 || a5 <= 1;
  if (v8)
  {
    v9 = a5;
  }

  else
  {
    v10 = (a4 & 0xFFFFFFFE);
    v11 = 8 * v6;
    do
    {
      if (a6 >= 4)
      {
        v12 = 0;
        v14 = *a2;
        v13 = a2[1];
        do
        {
          v15 = *(v13 + 2 * v12);
          if (v6 < 3)
          {
            v17 = 2;
          }

          else
          {
            v16 = 16;
            do
            {
              v15 = vmin_s16(*(a2[v16 / 8] + 2 * v12), v15);
              v16 += 8;
            }

            while (v11 != v16);
            v17 = v6;
          }

          v18 = (v14 + 2 * v12);
          v19 = *v18;
          if (v19 >= v15.i16[0])
          {
            LOWORD(v19) = v15.i16[0];
          }

          v20 = (a3 + 2 * v12);
          *v20 = v19;
          v21 = v18[1];
          if (v21 >= v15.i16[1])
          {
            LOWORD(v21) = v15.i16[1];
          }

          v20[1] = v21;
          v22 = v18[2];
          if (v22 >= v15.i16[2])
          {
            LOWORD(v22) = v15.i16[2];
          }

          v20[2] = v22;
          v23 = v18[3];
          if (v23 >= v15.i16[3])
          {
            LOWORD(v23) = v15.i16[3];
          }

          v20[3] = v23;
          result = a2[v17] + 2 * v12;
          v24 = *result;
          if (v24 >= v15.i16[0])
          {
            LOWORD(v24) = v15.i16[0];
          }

          v25 = (a3 + 2 * (v12 + v7));
          *v25 = v24;
          v26 = *(result + 2);
          if (v26 >= v15.i16[1])
          {
            LOWORD(v26) = v15.i16[1];
          }

          v25[1] = v26;
          v27 = *(result + 4);
          if (v27 >= v15.i16[2])
          {
            LOWORD(v27) = v15.i16[2];
          }

          v25[2] = v27;
          LODWORD(result) = *(result + 6);
          if (result >= v15.i16[3])
          {
            result = v15.i16[3];
          }

          else
          {
            result = result;
          }

          v25[3] = result;
          v12 += 4;
        }

        while (v12 <= a6 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < a6)
      {
        v29 = *a2;
        v28 = a2[1];
        do
        {
          v30 = *(v28 + 2 * v12);
          if (v6 < 3)
          {
            v32 = 2;
          }

          else
          {
            v31 = 16;
            do
            {
              if (*(a2[v31 / 8] + 2 * v12) < v30)
              {
                v30 = *(a2[v31 / 8] + 2 * v12);
              }

              v31 += 8;
            }

            while (v11 != v31);
            v32 = v6;
          }

          v33 = *(v29 + 2 * v12);
          if (v33 >= v30)
          {
            LOWORD(v33) = v30;
          }

          *(a3 + 2 * v12) = v33;
          v34 = *(a2[v32] + 2 * v12);
          if (v34 >= v30)
          {
            result = v30;
          }

          else
          {
            result = v34;
          }

          *(a3 + 2 * (v12 + v7)) = result;
          ++v12;
        }

        while (v12 != a6);
      }

      v9 = a5 - 2;
      a3 += 2 * v10;
      a2 += 2;
      v8 = a5 <= 3;
      a5 -= 2;
    }

    while (!v8);
  }

  if (v9 >= 1)
  {
    v35 = 8 * v6;
    do
    {
      if (a6 >= 4)
      {
        v36 = 0;
        v37 = *a2;
        do
        {
          v38 = *(v37 + 2 * v36);
          if (v6 >= 2)
          {
            v39 = 8;
            do
            {
              result = a2[v39 / 8];
              v38 = vmin_s16(*(result + 2 * v36), v38);
              v39 += 8;
            }

            while (v35 != v39);
          }

          *(a3 + 2 * v36) = v38;
          v36 += 4;
        }

        while (v36 <= a6 - 4);
        v36 = v36;
      }

      else
      {
        v36 = 0;
      }

      if (v36 < a6)
      {
        v40 = *a2;
        do
        {
          v41 = *(v40 + 2 * v36);
          if (v6 >= 2)
          {
            v42 = 8;
            do
            {
              result = *(a2[v42 / 8] + 2 * v36);
              if (result < v41)
              {
                v41 = *(a2[v42 / 8] + 2 * v36);
              }

              v42 += 8;
            }

            while (v35 != v42);
          }

          *(a3 + 2 * v36++) = v41;
        }

        while (v36 != a6);
      }

      a3 += 2 * v7;
      ++a2;
      v43 = __OFSUB__(v9--, 1);
    }

    while (!((v9 < 0) ^ v43 | (v9 == 0)));
  }

  return result;
}

void cv::MorphColumnFilter<cv::MinOp<float>,cv::MorphColumnNoVec>::~MorphColumnFilter(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::MorphColumnFilter<cv::MinOp<float>,cv::MorphColumnNoVec>::operator()(uint64_t result, uint64_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = a4 >> 2;
  v8 = v6 <= 1 || a5 <= 1;
  if (v8)
  {
    v9 = a5;
  }

  else
  {
    v10 = 8 * v6;
    do
    {
      if (a6 >= 4)
      {
        v11 = 0;
        v13 = *a2;
        v12 = a2[1];
        do
        {
          v14 = *(v12 + 4 * v11);
          if (v6 < 3)
          {
            v17 = 2;
          }

          else
          {
            v15 = 16;
            do
            {
              v16 = *(a2[v15 / 8] + 4 * v11);
              v14 = vbslq_s8(vcgtq_f32(v14, v16), v16, v14);
              v15 += 8;
            }

            while (v10 != v15);
            v17 = v6;
          }

          v18 = (v13 + 4 * v11);
          v19 = *v18;
          if (*v18 >= v14.f32[0])
          {
            v19 = v14.f32[0];
          }

          v20 = (a3 + 4 * v11);
          *v20 = v19;
          v21 = v18[1];
          if (v21 >= v14.f32[1])
          {
            v21 = v14.f32[1];
          }

          v20[1] = v21;
          v22 = v18[2];
          if (v22 >= v14.f32[2])
          {
            v22 = v14.f32[2];
          }

          v20[2] = v22;
          v23 = v18[3];
          if (v23 >= v14.f32[3])
          {
            v23 = v14.f32[3];
          }

          v20[3] = v23;
          result = a2[v17] + 4 * v11;
          if (*result < v14.f32[0])
          {
            v14.i32[0] = *result;
          }

          v24 = (a3 + 4 * (v11 + v7));
          *v24 = v14.i32[0];
          v14.i32[0] = *(result + 4);
          if (v14.f32[0] >= v14.f32[1])
          {
            v14.f32[0] = v14.f32[1];
          }

          v24[1] = v14.i32[0];
          v14.i32[0] = *(result + 8);
          if (v14.f32[0] >= v14.f32[2])
          {
            v14.f32[0] = v14.f32[2];
          }

          v24[2] = v14.i32[0];
          v14.i32[0] = *(result + 12);
          if (v14.f32[0] >= v14.f32[3])
          {
            v14.f32[0] = v14.f32[3];
          }

          v24[3] = v14.i32[0];
          v11 += 4;
        }

        while (v11 <= a6 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < a6)
      {
        v26 = *a2;
        v25 = a2[1];
        do
        {
          v27 = *(v25 + 4 * v11);
          if (v6 < 3)
          {
            v30 = 2;
          }

          else
          {
            v28 = 16;
            do
            {
              v29 = a2[v28 / 8];
              if (*(v29 + 4 * v11) < v27)
              {
                v27 = *(v29 + 4 * v11);
              }

              v28 += 8;
            }

            while (v10 != v28);
            v30 = v6;
          }

          v31 = *(v26 + 4 * v11);
          if (v31 >= v27)
          {
            v31 = v27;
          }

          *(a3 + 4 * v11) = v31;
          v32 = a2[v30];
          if (*(v32 + 4 * v11) < v27)
          {
            v27 = *(v32 + 4 * v11);
          }

          result = v11 + v7;
          *(a3 + 4 * result) = v27;
          ++v11;
        }

        while (v11 != a6);
      }

      v9 = a5 - 2;
      a3 += 8 * v7;
      a2 += 2;
      v8 = a5 <= 3;
      a5 -= 2;
    }

    while (!v8);
  }

  if (v9 >= 1)
  {
    v33 = 8 * v6;
    do
    {
      if (a6 >= 4)
      {
        v34 = 0;
        v35 = *a2;
        do
        {
          v36 = *(v35 + 4 * v34);
          if (v6 >= 2)
          {
            v37 = 8;
            do
            {
              result = a2[v37 / 8];
              v36 = vbslq_s8(vcgtq_f32(v36, *(result + 4 * v34)), *(result + 4 * v34), v36);
              v37 += 8;
            }

            while (v33 != v37);
          }

          *(a3 + 4 * v34) = v36;
          v34 += 4;
        }

        while (v34 <= a6 - 4);
        v34 = v34;
      }

      else
      {
        v34 = 0;
      }

      if (v34 < a6)
      {
        v38 = *a2;
        do
        {
          v39 = *(v38 + 4 * v34);
          if (v6 >= 2)
          {
            v40 = 8;
            do
            {
              v41 = a2[v40 / 8];
              if (*(v41 + 4 * v34) < v39)
              {
                v39 = *(v41 + 4 * v34);
              }

              v40 += 8;
            }

            while (v33 != v40);
          }

          *(a3 + 4 * v34++) = v39;
        }

        while (v34 != a6);
      }

      a3 += 4 * v7;
      ++a2;
      v42 = __OFSUB__(v9--, 1);
    }

    while (!((v9 < 0) ^ v42 | (v9 == 0)));
  }

  return result;
}

void cv::MorphColumnFilter<cv::MinOp<double>,cv::MorphColumnNoVec>::~MorphColumnFilter(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::MorphColumnFilter<cv::MinOp<double>,cv::MorphColumnNoVec>::operator()(uint64_t result, uint64_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = a4 >> 3;
  v8 = v6 <= 1 || a5 <= 1;
  if (v8)
  {
    v9 = a5;
  }

  else
  {
    v10 = 8 * v6;
    do
    {
      if (a6 >= 4)
      {
        v11 = 0;
        v13 = *a2;
        v12 = a2[1];
        do
        {
          v14 = (v12 + 8 * v11);
          v16 = *v14;
          v15 = v14[1];
          if (v6 < 3)
          {
            v19 = 2;
          }

          else
          {
            v17 = 16;
            do
            {
              v18 = (a2[v17 / 8] + 8 * v11);
              v15 = vbslq_s8(vcgtq_f64(v15, v18[1]), v18[1], v15);
              v16 = vbslq_s8(vcgtq_f64(v16, *v18), *v18, v16);
              v17 += 8;
            }

            while (v10 != v17);
            v19 = v6;
          }

          v20 = (v13 + 8 * v11);
          v21 = *v20;
          if (*v20 >= v16.f64[0])
          {
            v21 = v16.f64[0];
          }

          v22 = (a3 + 8 * v11);
          *v22 = v21;
          v23 = v20[1];
          if (v23 >= v16.f64[1])
          {
            v23 = v16.f64[1];
          }

          v22[1] = v23;
          v24 = v20[2];
          if (v24 >= v15.f64[0])
          {
            v24 = v15.f64[0];
          }

          v22[2] = v24;
          v25 = v20[3];
          if (v25 >= v15.f64[1])
          {
            v25 = v15.f64[1];
          }

          v22[3] = v25;
          result = a2[v19] + 8 * v11;
          if (*result < v16.f64[0])
          {
            v16.f64[0] = *result;
          }

          v26 = (a3 + 8 * (v11 + v7));
          *v26 = *&v16.f64[0];
          v16.f64[0] = *(result + 8);
          if (v16.f64[0] >= v16.f64[1])
          {
            v16.f64[0] = v16.f64[1];
          }

          v26[1] = *&v16.f64[0];
          if (*(result + 16) < v15.f64[0])
          {
            v15.f64[0] = *(result + 16);
          }

          v26[2] = *&v15.f64[0];
          v15.f64[0] = *(result + 24);
          if (v15.f64[0] >= v15.f64[1])
          {
            v15.f64[0] = v15.f64[1];
          }

          v26[3] = *&v15.f64[0];
          v11 += 4;
        }

        while (v11 <= a6 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < a6)
      {
        v28 = *a2;
        v27 = a2[1];
        do
        {
          v29 = *(v27 + 8 * v11);
          if (v6 < 3)
          {
            v32 = 2;
          }

          else
          {
            v30 = 16;
            do
            {
              v31 = a2[v30 / 8];
              if (*(v31 + 8 * v11) < v29)
              {
                v29 = *(v31 + 8 * v11);
              }

              v30 += 8;
            }

            while (v10 != v30);
            v32 = v6;
          }

          v33 = *(v28 + 8 * v11);
          if (v33 >= v29)
          {
            v33 = v29;
          }

          *(a3 + 8 * v11) = v33;
          v34 = a2[v32];
          if (*(v34 + 8 * v11) < v29)
          {
            v29 = *(v34 + 8 * v11);
          }

          result = v11 + v7;
          *(a3 + 8 * result) = v29;
          ++v11;
        }

        while (v11 != a6);
      }

      v9 = a5 - 2;
      a3 += 16 * v7;
      a2 += 2;
      v8 = a5 <= 3;
      a5 -= 2;
    }

    while (!v8);
  }

  if (v9 >= 1)
  {
    v35 = 8 * v6;
    do
    {
      if (a6 >= 4)
      {
        v36 = 0;
        v37 = *a2;
        do
        {
          v38 = (v37 + 8 * v36);
          v39 = *v38;
          v40 = v38[1];
          if (v6 >= 2)
          {
            v41 = 8;
            do
            {
              v42 = (a2[v41 / 8] + 8 * v36);
              v39 = vbslq_s8(vcgtq_f64(v39, *v42), *v42, v39);
              v40 = vbslq_s8(vcgtq_f64(v40, v42[1]), v42[1], v40);
              v41 += 8;
            }

            while (v35 != v41);
          }

          v43 = (a3 + 8 * v36);
          *v43 = v39;
          v43[1] = v40;
          v36 += 4;
        }

        while (v36 <= a6 - 4);
        v36 = v36;
      }

      else
      {
        v36 = 0;
      }

      if (v36 < a6)
      {
        v44 = *a2;
        do
        {
          v45 = *(v44 + 8 * v36);
          if (v6 >= 2)
          {
            v46 = 8;
            do
            {
              v47 = a2[v46 / 8];
              if (*(v47 + 8 * v36) < v45)
              {
                v45 = *(v47 + 8 * v36);
              }

              v46 += 8;
            }

            while (v35 != v46);
          }

          *(a3 + 8 * v36++) = v45;
        }

        while (v36 != a6);
      }

      a3 += 8 * v7;
      ++a2;
      v48 = __OFSUB__(v9--, 1);
    }

    while (!((v9 < 0) ^ v48 | (v9 == 0)));
  }

  return result;
}

void cv::MorphColumnFilter<cv::MaxOp<unsigned char>,cv::MorphColumnNoVec>::~MorphColumnFilter(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::MorphColumnFilter<cv::MaxOp<unsigned char>,cv::MorphColumnNoVec>::operator()(uint64_t result, void *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = a4;
  v8 = v6 <= 1 || a5 <= 1;
  if (v8)
  {
    v9 = a5;
  }

  else
  {
    v10 = 8 * v6;
    do
    {
      if (a6 >= 4)
      {
        v11 = 0;
        do
        {
          v12 = (a2[1] + v11);
          v13 = *v12;
          v14 = v12[1];
          v15 = v12[2];
          v16 = v12[3];
          if (v6 < 3)
          {
            v19 = 2;
          }

          else
          {
            v17 = 16;
            do
            {
              v18 = (a2[v17 / 8] + v11);
              v13 += icvSaturate8u_cv[*v18 - v13 + 256];
              v14 += icvSaturate8u_cv[v18[1] - v14 + 256];
              v15 += icvSaturate8u_cv[v18[2] - v15 + 256];
              v16 += icvSaturate8u_cv[v18[3] - v16 + 256];
              v17 += 8;
            }

            while (v10 != v17);
            v19 = v6;
          }

          v20 = (*a2 + v11);
          v21 = &icvSaturate8u_cv[-v13];
          v22 = (a3 + v11);
          *v22 = v21[*v20 + 256] + v13;
          v23 = &icvSaturate8u_cv[-v14];
          v22[1] = v23[v20[1] + 256] + v14;
          v24 = &icvSaturate8u_cv[-v15];
          v22[2] = v24[v20[2] + 256] + v15;
          v25 = &icvSaturate8u_cv[-v16];
          v22[3] = v25[v20[3] + 256] + v16;
          v26 = (a2[v19] + v11);
          v27 = (a3 + v11 + v7);
          *v27 = v21[*v26 + 256] + v13;
          v27[1] = v23[v26[1] + 256] + v14;
          result = v24[v26[2] + 256];
          v27[2] = result + v15;
          v27[3] = v25[v26[3] + 256] + v16;
          v11 += 4;
        }

        while (v11 <= a6 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < a6)
      {
        do
        {
          v28 = *(a2[1] + v11);
          if (v6 < 3)
          {
            v30 = 2;
          }

          else
          {
            v29 = 16;
            do
            {
              v28 += icvSaturate8u_cv[*(a2[v29 / 8] + v11) - v28 + 256];
              v29 += 8;
            }

            while (v10 != v29);
            v30 = v6;
          }

          v31 = &icvSaturate8u_cv[-v28];
          result = v31[*(*a2 + v11) + 256] + v28;
          *(a3 + v11) = v31[*(*a2 + v11) + 256] + v28;
          *(a3 + v11 + v7) = v31[*(a2[v30] + v11) + 256] + v28;
          ++v11;
        }

        while (v11 != a6);
      }

      v9 = a5 - 2;
      a3 += 2 * v7;
      a2 += 2;
      v8 = a5 <= 3;
      a5 -= 2;
    }

    while (!v8);
  }

  if (v9 >= 1)
  {
    v32 = 8 * v6;
    do
    {
      if (a6 >= 4)
      {
        v33 = 0;
        do
        {
          v34 = (*a2 + v33);
          v35 = *v34;
          v36 = v34[1];
          result = v34[2];
          v37 = v34[3];
          if (v6 >= 2)
          {
            v38 = 8;
            do
            {
              v39 = (a2[v38 / 8] + v33);
              v35 += icvSaturate8u_cv[*v39 - v35 + 256];
              v36 += icvSaturate8u_cv[v39[1] - v36 + 256];
              result = icvSaturate8u_cv[v39[2] - result + 256] + result;
              v37 += icvSaturate8u_cv[v39[3] - v37 + 256];
              v38 += 8;
            }

            while (v32 != v38);
          }

          v40 = (a3 + v33);
          *v40 = v35;
          v40[1] = v36;
          v40[2] = result;
          v40[3] = v37;
          v33 += 4;
        }

        while (v33 <= a6 - 4);
        v33 = v33;
      }

      else
      {
        v33 = 0;
      }

      if (v33 < a6)
      {
        do
        {
          v41 = *(*a2 + v33);
          if (v6 >= 2)
          {
            v42 = 8;
            do
            {
              result = icvSaturate8u_cv[*(a2[v42 / 8] + v33) - v41 + 256];
              v41 += result;
              v42 += 8;
            }

            while (v32 != v42);
          }

          *(a3 + v33++) = v41;
        }

        while (v33 != a6);
      }

      a3 += v7;
      ++a2;
      v43 = __OFSUB__(v9--, 1);
    }

    while (!((v9 < 0) ^ v43 | (v9 == 0)));
  }

  return result;
}

void cv::MorphColumnFilter<cv::MaxOp<unsigned short>,cv::MorphColumnNoVec>::~MorphColumnFilter(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::MorphColumnFilter<cv::MaxOp<unsigned short>,cv::MorphColumnNoVec>::operator()(uint64_t result, uint64_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = a4 >> 1;
  v8 = v6 <= 1 || a5 <= 1;
  if (v8)
  {
    v9 = a5;
  }

  else
  {
    v10 = (a4 & 0xFFFFFFFE);
    v11 = 8 * v6;
    do
    {
      if (a6 >= 4)
      {
        v12 = 0;
        v14 = *a2;
        v13 = a2[1];
        do
        {
          v15 = *(v13 + 2 * v12);
          if (v6 < 3)
          {
            v17 = 2;
          }

          else
          {
            v16 = 16;
            do
            {
              v15 = vmax_u16(v15, *(a2[v16 / 8] + 2 * v12));
              v16 += 8;
            }

            while (v11 != v16);
            v17 = v6;
          }

          v18 = (v14 + 2 * v12);
          v19 = *v18;
          if (v15.u16[0] > v19)
          {
            LOWORD(v19) = v15.i16[0];
          }

          v20 = (a3 + 2 * v12);
          *v20 = v19;
          v21 = v18[1];
          if (v15.u16[1] > v21)
          {
            LOWORD(v21) = v15.i16[1];
          }

          v20[1] = v21;
          v22 = v18[2];
          if (v15.u16[2] > v22)
          {
            LOWORD(v22) = v15.i16[2];
          }

          v20[2] = v22;
          v23 = v18[3];
          if (v15.u16[3] > v23)
          {
            LOWORD(v23) = v15.i16[3];
          }

          v20[3] = v23;
          result = a2[v17] + 2 * v12;
          v24 = *result;
          if (v15.u16[0] > v24)
          {
            LOWORD(v24) = v15.i16[0];
          }

          v25 = (a3 + 2 * (v12 + v7));
          *v25 = v24;
          v26 = *(result + 2);
          if (v15.u16[1] > v26)
          {
            LOWORD(v26) = v15.i16[1];
          }

          v25[1] = v26;
          v27 = *(result + 4);
          if (v15.u16[2] > v27)
          {
            LOWORD(v27) = v15.i16[2];
          }

          v25[2] = v27;
          LODWORD(result) = *(result + 6);
          if (v15.u16[3] <= result)
          {
            result = result;
          }

          else
          {
            result = v15.u16[3];
          }

          v25[3] = result;
          v12 += 4;
        }

        while (v12 <= a6 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < a6)
      {
        v29 = *a2;
        v28 = a2[1];
        do
        {
          LODWORD(result) = *(v28 + 2 * v12);
          if (v6 < 3)
          {
            v31 = 2;
          }

          else
          {
            v30 = 16;
            do
            {
              LODWORD(result) = result;
              if (result <= *(a2[v30 / 8] + 2 * v12))
              {
                LODWORD(result) = *(a2[v30 / 8] + 2 * v12);
              }

              v30 += 8;
            }

            while (v11 != v30);
            v31 = v6;
          }

          v32 = *(v29 + 2 * v12);
          if (result > v32)
          {
            LOWORD(v32) = result;
          }

          *(a3 + 2 * v12) = v32;
          v33 = *(a2[v31] + 2 * v12);
          if (result <= v33)
          {
            result = v33;
          }

          else
          {
            result = result;
          }

          *(a3 + 2 * (v12 + v7)) = result;
          ++v12;
        }

        while (v12 != a6);
      }

      v9 = a5 - 2;
      a3 += 2 * v10;
      a2 += 2;
      v8 = a5 <= 3;
      a5 -= 2;
    }

    while (!v8);
  }

  if (v9 >= 1)
  {
    v34 = 8 * v6;
    do
    {
      if (a6 >= 4)
      {
        v35 = 0;
        v36 = *a2;
        do
        {
          v37 = *(v36 + 2 * v35);
          if (v6 >= 2)
          {
            v38 = 8;
            do
            {
              result = a2[v38 / 8];
              v37 = vmax_u16(v37, *(result + 2 * v35));
              v38 += 8;
            }

            while (v34 != v38);
          }

          *(a3 + 2 * v35) = v37;
          v35 += 4;
        }

        while (v35 <= a6 - 4);
        v35 = v35;
      }

      else
      {
        v35 = 0;
      }

      if (v35 < a6)
      {
        v39 = *a2;
        do
        {
          v40 = *(v39 + 2 * v35);
          if (v6 >= 2)
          {
            v41 = 8;
            do
            {
              result = *(a2[v41 / 8] + 2 * v35);
              if (v40 <= result)
              {
                v40 = *(a2[v41 / 8] + 2 * v35);
              }

              v41 += 8;
            }

            while (v34 != v41);
          }

          *(a3 + 2 * v35++) = v40;
        }

        while (v35 != a6);
      }

      a3 += 2 * v7;
      ++a2;
      v42 = __OFSUB__(v9--, 1);
    }

    while (!((v9 < 0) ^ v42 | (v9 == 0)));
  }

  return result;
}

void cv::MorphColumnFilter<cv::MaxOp<short>,cv::MorphColumnNoVec>::~MorphColumnFilter(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::MorphColumnFilter<cv::MaxOp<short>,cv::MorphColumnNoVec>::operator()(uint64_t result, uint64_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = a4 >> 1;
  v8 = v6 <= 1 || a5 <= 1;
  if (v8)
  {
    v9 = a5;
  }

  else
  {
    v10 = (a4 & 0xFFFFFFFE);
    v11 = 8 * v6;
    do
    {
      if (a6 >= 4)
      {
        v12 = 0;
        v14 = *a2;
        v13 = a2[1];
        do
        {
          v15 = *(v13 + 2 * v12);
          if (v6 < 3)
          {
            v17 = 2;
          }

          else
          {
            v16 = 16;
            do
            {
              v15 = vmax_s16(v15, *(a2[v16 / 8] + 2 * v12));
              v16 += 8;
            }

            while (v11 != v16);
            v17 = v6;
          }

          v18 = (v14 + 2 * v12);
          v19 = *v18;
          if (v15.i16[0] > v19)
          {
            LOWORD(v19) = v15.i16[0];
          }

          v20 = (a3 + 2 * v12);
          *v20 = v19;
          v21 = v18[1];
          if (v15.i16[1] > v21)
          {
            LOWORD(v21) = v15.i16[1];
          }

          v20[1] = v21;
          v22 = v18[2];
          if (v15.i16[2] > v22)
          {
            LOWORD(v22) = v15.i16[2];
          }

          v20[2] = v22;
          v23 = v18[3];
          if (v15.i16[3] > v23)
          {
            LOWORD(v23) = v15.i16[3];
          }

          v20[3] = v23;
          result = a2[v17] + 2 * v12;
          v24 = *result;
          if (v15.i16[0] > v24)
          {
            LOWORD(v24) = v15.i16[0];
          }

          v25 = (a3 + 2 * (v12 + v7));
          *v25 = v24;
          v26 = *(result + 2);
          if (v15.i16[1] > v26)
          {
            LOWORD(v26) = v15.i16[1];
          }

          v25[1] = v26;
          v27 = *(result + 4);
          if (v15.i16[2] > v27)
          {
            LOWORD(v27) = v15.i16[2];
          }

          v25[2] = v27;
          LODWORD(result) = *(result + 6);
          if (v15.i16[3] <= result)
          {
            result = result;
          }

          else
          {
            result = v15.i16[3];
          }

          v25[3] = result;
          v12 += 4;
        }

        while (v12 <= a6 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < a6)
      {
        v29 = *a2;
        v28 = a2[1];
        do
        {
          v30 = *(v28 + 2 * v12);
          if (v6 < 3)
          {
            v32 = 2;
          }

          else
          {
            v31 = 16;
            do
            {
              if (v30 <= *(a2[v31 / 8] + 2 * v12))
              {
                v30 = *(a2[v31 / 8] + 2 * v12);
              }

              v31 += 8;
            }

            while (v11 != v31);
            v32 = v6;
          }

          v33 = *(v29 + 2 * v12);
          if (v30 > v33)
          {
            LOWORD(v33) = v30;
          }

          *(a3 + 2 * v12) = v33;
          v34 = *(a2[v32] + 2 * v12);
          if (v30 <= v34)
          {
            result = v34;
          }

          else
          {
            result = v30;
          }

          *(a3 + 2 * (v12 + v7)) = result;
          ++v12;
        }

        while (v12 != a6);
      }

      v9 = a5 - 2;
      a3 += 2 * v10;
      a2 += 2;
      v8 = a5 <= 3;
      a5 -= 2;
    }

    while (!v8);
  }

  if (v9 >= 1)
  {
    v35 = 8 * v6;
    do
    {
      if (a6 >= 4)
      {
        v36 = 0;
        v37 = *a2;
        do
        {
          v38 = *(v37 + 2 * v36);
          if (v6 >= 2)
          {
            v39 = 8;
            do
            {
              result = a2[v39 / 8];
              v38 = vmax_s16(v38, *(result + 2 * v36));
              v39 += 8;
            }

            while (v35 != v39);
          }

          *(a3 + 2 * v36) = v38;
          v36 += 4;
        }

        while (v36 <= a6 - 4);
        v36 = v36;
      }

      else
      {
        v36 = 0;
      }

      if (v36 < a6)
      {
        v40 = *a2;
        do
        {
          v41 = *(v40 + 2 * v36);
          if (v6 >= 2)
          {
            v42 = 8;
            do
            {
              result = *(a2[v42 / 8] + 2 * v36);
              if (v41 <= result)
              {
                v41 = *(a2[v42 / 8] + 2 * v36);
              }

              v42 += 8;
            }

            while (v35 != v42);
          }

          *(a3 + 2 * v36++) = v41;
        }

        while (v36 != a6);
      }

      a3 += 2 * v7;
      ++a2;
      v43 = __OFSUB__(v9--, 1);
    }

    while (!((v9 < 0) ^ v43 | (v9 == 0)));
  }

  return result;
}

void cv::MorphColumnFilter<cv::MaxOp<float>,cv::MorphColumnNoVec>::~MorphColumnFilter(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::MorphColumnFilter<cv::MaxOp<float>,cv::MorphColumnNoVec>::operator()(uint64_t result, uint64_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = a4 >> 2;
  v8 = v6 <= 1 || a5 <= 1;
  if (v8)
  {
    v9 = a5;
  }

  else
  {
    v10 = 8 * v6;
    do
    {
      if (a6 >= 4)
      {
        v11 = 0;
        v13 = *a2;
        v12 = a2[1];
        do
        {
          v14 = *(v12 + 4 * v11);
          if (v6 < 3)
          {
            v17 = 2;
          }

          else
          {
            v15 = 16;
            do
            {
              v16 = *(a2[v15 / 8] + 4 * v11);
              v14 = vbslq_s8(vcgtq_f32(v16, v14), v16, v14);
              v15 += 8;
            }

            while (v10 != v15);
            v17 = v6;
          }

          v18 = (v13 + 4 * v11);
          v19 = *v18;
          if (v14.f32[0] >= *v18)
          {
            v19 = v14.f32[0];
          }

          v20 = (a3 + 4 * v11);
          *v20 = v19;
          v21 = v18[1];
          if (v14.f32[1] >= v21)
          {
            v21 = v14.f32[1];
          }

          v20[1] = v21;
          v22 = v18[2];
          if (v14.f32[2] >= v22)
          {
            v22 = v14.f32[2];
          }

          v20[2] = v22;
          v23 = v18[3];
          if (v14.f32[3] >= v23)
          {
            v23 = v14.f32[3];
          }

          v20[3] = v23;
          result = a2[v17] + 4 * v11;
          if (v14.f32[0] < *result)
          {
            v14.i32[0] = *result;
          }

          v24 = (a3 + 4 * (v11 + v7));
          *v24 = v14.i32[0];
          v14.i32[0] = *(result + 4);
          if (v14.f32[1] >= v14.f32[0])
          {
            v14.f32[0] = v14.f32[1];
          }

          v24[1] = v14.i32[0];
          v14.i32[0] = *(result + 8);
          if (v14.f32[2] >= v14.f32[0])
          {
            v14.f32[0] = v14.f32[2];
          }

          v24[2] = v14.i32[0];
          v14.i32[0] = *(result + 12);
          if (v14.f32[3] >= v14.f32[0])
          {
            v14.f32[0] = v14.f32[3];
          }

          v24[3] = v14.i32[0];
          v11 += 4;
        }

        while (v11 <= a6 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < a6)
      {
        v26 = *a2;
        v25 = a2[1];
        do
        {
          v27 = *(v25 + 4 * v11);
          if (v6 < 3)
          {
            v30 = 2;
          }

          else
          {
            v28 = 16;
            do
            {
              v29 = a2[v28 / 8];
              if (v27 < *(v29 + 4 * v11))
              {
                v27 = *(v29 + 4 * v11);
              }

              v28 += 8;
            }

            while (v10 != v28);
            v30 = v6;
          }

          v31 = *(v26 + 4 * v11);
          if (v27 >= v31)
          {
            v31 = v27;
          }

          *(a3 + 4 * v11) = v31;
          v32 = a2[v30];
          if (v27 < *(v32 + 4 * v11))
          {
            v27 = *(v32 + 4 * v11);
          }

          result = v11 + v7;
          *(a3 + 4 * result) = v27;
          ++v11;
        }

        while (v11 != a6);
      }

      v9 = a5 - 2;
      a3 += 8 * v7;
      a2 += 2;
      v8 = a5 <= 3;
      a5 -= 2;
    }

    while (!v8);
  }

  if (v9 >= 1)
  {
    v33 = 8 * v6;
    do
    {
      if (a6 >= 4)
      {
        v34 = 0;
        v35 = *a2;
        do
        {
          v36 = *(v35 + 4 * v34);
          if (v6 >= 2)
          {
            v37 = 8;
            do
            {
              result = a2[v37 / 8];
              v36 = vbslq_s8(vcgtq_f32(*(result + 4 * v34), v36), *(result + 4 * v34), v36);
              v37 += 8;
            }

            while (v33 != v37);
          }

          *(a3 + 4 * v34) = v36;
          v34 += 4;
        }

        while (v34 <= a6 - 4);
        v34 = v34;
      }

      else
      {
        v34 = 0;
      }

      if (v34 < a6)
      {
        v38 = *a2;
        do
        {
          v39 = *(v38 + 4 * v34);
          if (v6 >= 2)
          {
            v40 = 8;
            do
            {
              v41 = a2[v40 / 8];
              if (v39 < *(v41 + 4 * v34))
              {
                v39 = *(v41 + 4 * v34);
              }

              v40 += 8;
            }

            while (v33 != v40);
          }

          *(a3 + 4 * v34++) = v39;
        }

        while (v34 != a6);
      }

      a3 += 4 * v7;
      ++a2;
      v42 = __OFSUB__(v9--, 1);
    }

    while (!((v9 < 0) ^ v42 | (v9 == 0)));
  }

  return result;
}

void cv::MorphColumnFilter<cv::MaxOp<double>,cv::MorphColumnNoVec>::~MorphColumnFilter(cv::BaseRowFilter *a1)
{
  cv::BaseRowFilter::~BaseRowFilter(a1);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::MorphColumnFilter<cv::MaxOp<double>,cv::MorphColumnNoVec>::operator()(uint64_t result, uint64_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = a4 >> 3;
  v8 = v6 <= 1 || a5 <= 1;
  if (v8)
  {
    v9 = a5;
  }

  else
  {
    v10 = 8 * v6;
    do
    {
      if (a6 >= 4)
      {
        v11 = 0;
        v13 = *a2;
        v12 = a2[1];
        do
        {
          v14 = (v12 + 8 * v11);
          v16 = *v14;
          v15 = v14[1];
          if (v6 < 3)
          {
            v19 = 2;
          }

          else
          {
            v17 = 16;
            do
            {
              v18 = (a2[v17 / 8] + 8 * v11);
              v15 = vbslq_s8(vcgtq_f64(v18[1], v15), v18[1], v15);
              v16 = vbslq_s8(vcgtq_f64(*v18, v16), *v18, v16);
              v17 += 8;
            }

            while (v10 != v17);
            v19 = v6;
          }

          v20 = (v13 + 8 * v11);
          v21 = *v20;
          if (v16.f64[0] >= *v20)
          {
            v21 = v16.f64[0];
          }

          v22 = (a3 + 8 * v11);
          *v22 = v21;
          v23 = v20[1];
          if (v16.f64[1] >= v23)
          {
            v23 = v16.f64[1];
          }

          v22[1] = v23;
          v24 = v20[2];
          if (v15.f64[0] >= v24)
          {
            v24 = v15.f64[0];
          }

          v22[2] = v24;
          v25 = v20[3];
          if (v15.f64[1] >= v25)
          {
            v25 = v15.f64[1];
          }

          v22[3] = v25;
          result = a2[v19] + 8 * v11;
          if (v16.f64[0] < *result)
          {
            v16.f64[0] = *result;
          }

          v26 = (a3 + 8 * (v11 + v7));
          *v26 = *&v16.f64[0];
          v16.f64[0] = *(result + 8);
          if (v16.f64[1] >= v16.f64[0])
          {
            v16.f64[0] = v16.f64[1];
          }

          v26[1] = *&v16.f64[0];
          if (v15.f64[0] < *(result + 16))
          {
            v15.f64[0] = *(result + 16);
          }

          v26[2] = *&v15.f64[0];
          v15.f64[0] = *(result + 24);
          if (v15.f64[1] >= v15.f64[0])
          {
            v15.f64[0] = v15.f64[1];
          }

          v26[3] = *&v15.f64[0];
          v11 += 4;
        }

        while (v11 <= a6 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < a6)
      {
        v28 = *a2;
        v27 = a2[1];
        do
        {
          v29 = *(v27 + 8 * v11);
          if (v6 < 3)
          {
            v32 = 2;
          }

          else
          {
            v30 = 16;
            do
            {
              v31 = a2[v30 / 8];
              if (v29 < *(v31 + 8 * v11))
              {
                v29 = *(v31 + 8 * v11);
              }

              v30 += 8;
            }

            while (v10 != v30);
            v32 = v6;
          }

          v33 = *(v28 + 8 * v11);
          if (v29 >= v33)
          {
            v33 = v29;
          }

          *(a3 + 8 * v11) = v33;
          v34 = a2[v32];
          if (v29 < *(v34 + 8 * v11))
          {
            v29 = *(v34 + 8 * v11);
          }

          result = v11 + v7;
          *(a3 + 8 * result) = v29;
          ++v11;
        }

        while (v11 != a6);
      }

      v9 = a5 - 2;
      a3 += 16 * v7;
      a2 += 2;
      v8 = a5 <= 3;
      a5 -= 2;
    }

    while (!v8);
  }

  if (v9 >= 1)
  {
    v35 = 8 * v6;
    do
    {
      if (a6 >= 4)
      {
        v36 = 0;
        v37 = *a2;
        do
        {
          v38 = (v37 + 8 * v36);
          v39 = *v38;
          v40 = v38[1];
          if (v6 >= 2)
          {
            v41 = 8;
            do
            {
              v42 = (a2[v41 / 8] + 8 * v36);
              v39 = vbslq_s8(vcgtq_f64(*v42, v39), *v42, v39);
              v40 = vbslq_s8(vcgtq_f64(v42[1], v40), v42[1], v40);
              v41 += 8;
            }

            while (v35 != v41);
          }

          v43 = (a3 + 8 * v36);
          *v43 = v39;
          v43[1] = v40;
          v36 += 4;
        }

        while (v36 <= a6 - 4);
        v36 = v36;
      }

      else
      {
        v36 = 0;
      }

      if (v36 < a6)
      {
        v44 = *a2;
        do
        {
          v45 = *(v44 + 8 * v36);
          if (v6 >= 2)
          {
            v46 = 8;
            do
            {
              v47 = a2[v46 / 8];
              if (v45 < *(v47 + 8 * v36))
              {
                v45 = *(v47 + 8 * v36);
              }

              v46 += 8;
            }

            while (v35 != v46);
          }

          *(a3 + 8 * v36++) = v45;
        }

        while (v36 != a6);
      }

      a3 += 8 * v7;
      ++a2;
      v48 = __OFSUB__(v9--, 1);
    }

    while (!((v9 < 0) ^ v48 | (v9 == 0)));
  }

  return result;
}

void *cv::MorphFilter<cv::MinOp<unsigned char>,cv::MorphNoVec>::MorphFilter(void *a1, int32x2_t **a2, void *a3)
{
  v6 = cv::BaseFilter::BaseFilter(a1);
  *v6 = &unk_284057108;
  *(v6 + 3) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 7) = 0u;
  v6[2] = *a3;
  v6[1] = vrev64_s32(*a2[8]);
  if ((*a2 & 0xFFF) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "_kernel.type() == CV_8U");
    std::string::basic_string[abi:ne200100]<0>(v10, "MorphFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/morph.cpp");
    cv::Exception::Exception(&v12, 4294967081, v11, v10, __p, 783);
    cv::error(&v12, v7);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  cv::preprocess2DKernel(a2, v6 + 3, &v12);
  std::vector<unsigned char *>::resize(a1 + 6, (a1[4] - a1[3]) >> 3);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  return a1;
}

void sub_22D27F8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28)
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

  v31 = *(v28 + 6);
  if (v31)
  {
    *(v28 + 7) = v31;
    operator delete(v31);
  }

  v32 = *v29;
  if (*v29)
  {
    *(v28 + 4) = v32;
    operator delete(v32);
  }

  cv::BaseRowFilter::~BaseRowFilter(v28);
  _Unwind_Resume(a1);
}

void cv::MorphFilter<cv::MinOp<unsigned char>,cv::MorphNoVec>::~MorphFilter(cv::BaseRowFilter *this)
{
  *this = &unk_284057108;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284057108;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::MorphFilter<cv::MinOp<unsigned char>,cv::MorphNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  if (a5 >= 1)
  {
    v7 = *(result + 48);
    v8 = (a7 * a6);
    v9 = *(result + 24);
    v10 = (*(result + 32) - v9) >> 3;
    v11 = a4;
    v12 = (v9 + 4);
    do
    {
      v13 = v10 & 0x7FFFFFFF;
      v14 = v12;
      v15 = v7;
      if (v10 >= 1)
      {
        do
        {
          *v15++ = *(a2 + 8 * *v14) + *(v14 - 1) * a7;
          v14 += 2;
          --v13;
        }

        while (v13);
      }

      if (v8 >= 4)
      {
        result = 0;
        do
        {
          v16 = (*v7 + result);
          v17 = *v16;
          v18 = v16[1];
          v19 = v16[2];
          v20 = v16[3];
          if (v10 >= 2)
          {
            v21 = (v10 & 0x7FFFFFFF) - 1;
            v22 = v7 + 1;
            do
            {
              v23 = *v22++;
              v17 -= icvSaturate8u_cv[(v17 | 0x100) - *(v23 + result)];
              v18 -= icvSaturate8u_cv[(v18 | 0x100) - *(v23 + result + 1)];
              v19 -= icvSaturate8u_cv[(v19 | 0x100) - *(v23 + result + 2)];
              v20 -= icvSaturate8u_cv[(v20 | 0x100) - *(v23 + result + 3)];
              --v21;
            }

            while (v21);
          }

          v24 = (a3 + result);
          *v24 = v17;
          v24[1] = v18;
          v24[2] = v19;
          v24[3] = v20;
          result += 4;
        }

        while (result <= v8 - 4);
        result = result;
      }

      else
      {
        result = 0;
      }

      if (result < v8)
      {
        do
        {
          v25 = *(*v7 + result);
          if (v10 >= 2)
          {
            v26 = (v10 & 0x7FFFFFFF) - 1;
            v27 = v7 + 1;
            do
            {
              v28 = *v27++;
              v25 -= icvSaturate8u_cv[(v25 | 0x100) - *(v28 + result)];
              --v26;
            }

            while (v26);
          }

          *(a3 + result++) = v25;
        }

        while (result != v8);
      }

      a3 += v11;
      a2 += 8;
      v29 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v29 | (a5 == 0)));
  }

  return result;
}

void *cv::MorphFilter<cv::MinOp<unsigned short>,cv::MorphNoVec>::MorphFilter(void *a1, int32x2_t **a2, void *a3)
{
  v6 = cv::BaseFilter::BaseFilter(a1);
  *v6 = &unk_284057150;
  *(v6 + 3) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 7) = 0u;
  v6[2] = *a3;
  v6[1] = vrev64_s32(*a2[8]);
  if ((*a2 & 0xFFF) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "_kernel.type() == CV_8U");
    std::string::basic_string[abi:ne200100]<0>(v10, "MorphFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/morph.cpp");
    cv::Exception::Exception(&v12, 4294967081, v11, v10, __p, 783);
    cv::error(&v12, v7);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  cv::preprocess2DKernel(a2, v6 + 3, &v12);
  std::vector<unsigned char *>::resize(a1 + 6, (a1[4] - a1[3]) >> 3);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  return a1;
}

void sub_22D27FDAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28)
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

  v31 = *(v28 + 6);
  if (v31)
  {
    *(v28 + 7) = v31;
    operator delete(v31);
  }

  v32 = *v29;
  if (*v29)
  {
    *(v28 + 4) = v32;
    operator delete(v32);
  }

  cv::BaseRowFilter::~BaseRowFilter(v28);
  _Unwind_Resume(a1);
}

void cv::MorphFilter<cv::MinOp<unsigned short>,cv::MorphNoVec>::~MorphFilter(cv::BaseRowFilter *this)
{
  *this = &unk_284057150;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284057150;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void *cv::MorphFilter<cv::MinOp<unsigned short>,cv::MorphNoVec>::operator()(void *result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  if (a5 >= 1)
  {
    v7 = (a7 * a6);
    v8 = result[3];
    v9 = result[6];
    v10 = (result[4] - v8) >> 3;
    v11 = a4;
    v12 = (v8 + 4);
    do
    {
      v13 = v10 & 0x7FFFFFFF;
      result = v12;
      v14 = v9;
      if (v10 >= 1)
      {
        do
        {
          *v14++ = *(a2 + 8 * *result) + 2 * *(result - 1) * a7;
          ++result;
          --v13;
        }

        while (v13);
      }

      if (v7 >= 4)
      {
        v15 = 0;
        result = *v9;
        do
        {
          v16 = *(result + 2 * v15);
          if (v10 >= 2)
          {
            v17 = (v10 & 0x7FFFFFFF) - 1;
            v18 = (v9 + 1);
            do
            {
              v19 = *v18++;
              v16 = vmin_u16(*(v19 + 2 * v15), v16);
              --v17;
            }

            while (v17);
          }

          *(a3 + 2 * v15) = v16;
          v15 += 4;
        }

        while (v15 <= v7 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < v7)
      {
        result = *v9;
        do
        {
          v20 = *(result + v15);
          if (v10 >= 2)
          {
            v21 = (v10 & 0x7FFFFFFF) - 1;
            v22 = (v9 + 1);
            do
            {
              v23 = *v22++;
              v24 = *(v23 + 2 * v15);
              if (v24 < v20)
              {
                v20 = v24;
              }

              --v21;
            }

            while (v21);
          }

          *(a3 + 2 * v15++) = v20;
        }

        while (v15 != v7);
      }

      a3 += v11;
      a2 += 8;
      v25 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v25 | (a5 == 0)));
  }

  return result;
}

void *cv::MorphFilter<cv::MinOp<short>,cv::MorphNoVec>::MorphFilter(void *a1, int32x2_t **a2, void *a3)
{
  v6 = cv::BaseFilter::BaseFilter(a1);
  *v6 = &unk_284057198;
  *(v6 + 3) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 7) = 0u;
  v6[2] = *a3;
  v6[1] = vrev64_s32(*a2[8]);
  if ((*a2 & 0xFFF) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "_kernel.type() == CV_8U");
    std::string::basic_string[abi:ne200100]<0>(v10, "MorphFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/morph.cpp");
    cv::Exception::Exception(&v12, 4294967081, v11, v10, __p, 783);
    cv::error(&v12, v7);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  cv::preprocess2DKernel(a2, v6 + 3, &v12);
  std::vector<unsigned char *>::resize(a1 + 6, (a1[4] - a1[3]) >> 3);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  return a1;
}

void sub_22D2801CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28)
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

  v31 = *(v28 + 6);
  if (v31)
  {
    *(v28 + 7) = v31;
    operator delete(v31);
  }

  v32 = *v29;
  if (*v29)
  {
    *(v28 + 4) = v32;
    operator delete(v32);
  }

  cv::BaseRowFilter::~BaseRowFilter(v28);
  _Unwind_Resume(a1);
}

void cv::MorphFilter<cv::MinOp<short>,cv::MorphNoVec>::~MorphFilter(cv::BaseRowFilter *this)
{
  *this = &unk_284057198;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284057198;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void *cv::MorphFilter<cv::MinOp<short>,cv::MorphNoVec>::operator()(void *result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  if (a5 >= 1)
  {
    v7 = (a7 * a6);
    v8 = result[3];
    v9 = result[6];
    v10 = (result[4] - v8) >> 3;
    v11 = a4;
    v12 = (v8 + 4);
    do
    {
      v13 = v10 & 0x7FFFFFFF;
      result = v12;
      v14 = v9;
      if (v10 >= 1)
      {
        do
        {
          *v14++ = *(a2 + 8 * *result) + 2 * *(result - 1) * a7;
          ++result;
          --v13;
        }

        while (v13);
      }

      if (v7 >= 4)
      {
        v15 = 0;
        result = *v9;
        do
        {
          v16 = *(result + 2 * v15);
          if (v10 >= 2)
          {
            v17 = (v10 & 0x7FFFFFFF) - 1;
            v18 = (v9 + 1);
            do
            {
              v19 = *v18++;
              v16 = vmin_s16(*(v19 + 2 * v15), v16);
              --v17;
            }

            while (v17);
          }

          *(a3 + 2 * v15) = v16;
          v15 += 4;
        }

        while (v15 <= v7 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < v7)
      {
        result = *v9;
        do
        {
          v20 = *(result + v15);
          if (v10 >= 2)
          {
            v21 = (v10 & 0x7FFFFFFF) - 1;
            v22 = (v9 + 1);
            do
            {
              v23 = *v22++;
              v24 = *(v23 + 2 * v15);
              if (v24 < v20)
              {
                v20 = v24;
              }

              --v21;
            }

            while (v21);
          }

          *(a3 + 2 * v15++) = v20;
        }

        while (v15 != v7);
      }

      a3 += v11;
      a2 += 8;
      v25 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v25 | (a5 == 0)));
  }

  return result;
}

void *cv::MorphFilter<cv::MinOp<float>,cv::MorphNoVec>::MorphFilter(void *a1, int32x2_t **a2, void *a3)
{
  v6 = cv::BaseFilter::BaseFilter(a1);
  *v6 = &unk_2840571E0;
  *(v6 + 3) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 7) = 0u;
  v6[2] = *a3;
  v6[1] = vrev64_s32(*a2[8]);
  if ((*a2 & 0xFFF) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "_kernel.type() == CV_8U");
    std::string::basic_string[abi:ne200100]<0>(v10, "MorphFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/morph.cpp");
    cv::Exception::Exception(&v12, 4294967081, v11, v10, __p, 783);
    cv::error(&v12, v7);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  cv::preprocess2DKernel(a2, v6 + 3, &v12);
  std::vector<unsigned char *>::resize(a1 + 6, (a1[4] - a1[3]) >> 3);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  return a1;
}

void sub_22D2805EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28)
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

  v31 = *(v28 + 6);
  if (v31)
  {
    *(v28 + 7) = v31;
    operator delete(v31);
  }

  v32 = *v29;
  if (*v29)
  {
    *(v28 + 4) = v32;
    operator delete(v32);
  }

  cv::BaseRowFilter::~BaseRowFilter(v28);
  _Unwind_Resume(a1);
}

void cv::MorphFilter<cv::MinOp<float>,cv::MorphNoVec>::~MorphFilter(cv::BaseRowFilter *this)
{
  *this = &unk_2840571E0;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_2840571E0;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void *cv::MorphFilter<cv::MinOp<float>,cv::MorphNoVec>::operator()(void *result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  if (a5 >= 1)
  {
    v7 = (a7 * a6);
    v8 = result[3];
    v9 = result[6];
    v10 = (result[4] - v8) >> 3;
    v11 = a4;
    v12 = (v8 + 4);
    do
    {
      v13 = v10 & 0x7FFFFFFF;
      result = v12;
      v14 = v9;
      if (v10 >= 1)
      {
        do
        {
          *v14++ = *(a2 + 8 * *result) + 4 * *(result - 1) * a7;
          ++result;
          --v13;
        }

        while (v13);
      }

      if (v7 >= 4)
      {
        v15 = 0;
        result = *v9;
        do
        {
          v16 = *(result + 4 * v15);
          if (v10 >= 2)
          {
            v17 = (v10 & 0x7FFFFFFF) - 1;
            v18 = (v9 + 1);
            do
            {
              v19 = *v18++;
              v16 = vbslq_s8(vcgtq_f32(v16, *(v19 + 4 * v15)), *(v19 + 4 * v15), v16);
              --v17;
            }

            while (v17);
          }

          *(a3 + 4 * v15) = v16;
          v15 += 4;
        }

        while (v15 <= v7 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < v7)
      {
        result = *v9;
        do
        {
          v20 = *(result + v15);
          if (v10 >= 2)
          {
            v21 = (v10 & 0x7FFFFFFF) - 1;
            v22 = (v9 + 1);
            do
            {
              v23 = *v22++;
              v24 = *(v23 + 4 * v15);
              if (v24 < v20)
              {
                v20 = v24;
              }

              --v21;
            }

            while (v21);
          }

          *(a3 + 4 * v15++) = v20;
        }

        while (v15 != v7);
      }

      a3 += v11;
      a2 += 8;
      v25 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v25 | (a5 == 0)));
  }

  return result;
}

void *cv::MorphFilter<cv::MinOp<double>,cv::MorphNoVec>::MorphFilter(void *a1, int32x2_t **a2, void *a3)
{
  v6 = cv::BaseFilter::BaseFilter(a1);
  *v6 = &unk_284057228;
  *(v6 + 3) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 7) = 0u;
  v6[2] = *a3;
  v6[1] = vrev64_s32(*a2[8]);
  if ((*a2 & 0xFFF) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "_kernel.type() == CV_8U");
    std::string::basic_string[abi:ne200100]<0>(v10, "MorphFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/morph.cpp");
    cv::Exception::Exception(&v12, 4294967081, v11, v10, __p, 783);
    cv::error(&v12, v7);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  cv::preprocess2DKernel(a2, v6 + 3, &v12);
  std::vector<unsigned char *>::resize(a1 + 6, (a1[4] - a1[3]) >> 3);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  return a1;
}

void sub_22D280A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28)
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

  v31 = *(v28 + 6);
  if (v31)
  {
    *(v28 + 7) = v31;
    operator delete(v31);
  }

  v32 = *v29;
  if (*v29)
  {
    *(v28 + 4) = v32;
    operator delete(v32);
  }

  cv::BaseRowFilter::~BaseRowFilter(v28);
  _Unwind_Resume(a1);
}

void cv::MorphFilter<cv::MinOp<double>,cv::MorphNoVec>::~MorphFilter(cv::BaseRowFilter *this)
{
  *this = &unk_284057228;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284057228;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void *cv::MorphFilter<cv::MinOp<double>,cv::MorphNoVec>::operator()(void *result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  if (a5 >= 1)
  {
    v7 = (a7 * a6);
    v8 = result[3];
    v9 = result[6];
    v10 = (result[4] - v8) >> 3;
    v11 = a4;
    v12 = (v8 + 4);
    do
    {
      v13 = v10 & 0x7FFFFFFF;
      result = v12;
      v14 = v9;
      if (v10 >= 1)
      {
        do
        {
          *v14++ = *(a2 + 8 * *result) + 8 * *(result - 1) * a7;
          ++result;
          --v13;
        }

        while (v13);
      }

      if (v7 >= 4)
      {
        v15 = 0;
        result = *v9;
        do
        {
          v16 = &result[v15];
          v17 = *v16;
          v18 = v16[1];
          if (v10 >= 2)
          {
            v19 = (v10 & 0x7FFFFFFF) - 1;
            v20 = (v9 + 1);
            do
            {
              v21 = *v20++;
              v22 = (v21 + 8 * v15);
              v17 = vbslq_s8(vcgtq_f64(v17, *v22), *v22, v17);
              v18 = vbslq_s8(vcgtq_f64(v18, v22[1]), v22[1], v18);
              --v19;
            }

            while (v19);
          }

          v23 = (a3 + 8 * v15);
          *v23 = v17;
          v23[1] = v18;
          v15 += 4;
        }

        while (v15 <= v7 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < v7)
      {
        result = *v9;
        do
        {
          v24 = *&result[v15];
          if (v10 >= 2)
          {
            v25 = (v10 & 0x7FFFFFFF) - 1;
            v26 = (v9 + 1);
            do
            {
              v27 = *v26++;
              v28 = *(v27 + 8 * v15);
              if (v28 < v24)
              {
                v24 = v28;
              }

              --v25;
            }

            while (v25);
          }

          *(a3 + 8 * v15++) = v24;
        }

        while (v15 != v7);
      }

      a3 += v11;
      a2 += 8;
      v29 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v29 | (a5 == 0)));
  }

  return result;
}

void *cv::MorphFilter<cv::MaxOp<unsigned char>,cv::MorphNoVec>::MorphFilter(void *a1, int32x2_t **a2, void *a3)
{
  v6 = cv::BaseFilter::BaseFilter(a1);
  *v6 = &unk_284057270;
  *(v6 + 3) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 7) = 0u;
  v6[2] = *a3;
  v6[1] = vrev64_s32(*a2[8]);
  if ((*a2 & 0xFFF) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "_kernel.type() == CV_8U");
    std::string::basic_string[abi:ne200100]<0>(v10, "MorphFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/morph.cpp");
    cv::Exception::Exception(&v12, 4294967081, v11, v10, __p, 783);
    cv::error(&v12, v7);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  cv::preprocess2DKernel(a2, v6 + 3, &v12);
  std::vector<unsigned char *>::resize(a1 + 6, (a1[4] - a1[3]) >> 3);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  return a1;
}

void sub_22D280E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28)
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

  v31 = *(v28 + 6);
  if (v31)
  {
    *(v28 + 7) = v31;
    operator delete(v31);
  }

  v32 = *v29;
  if (*v29)
  {
    *(v28 + 4) = v32;
    operator delete(v32);
  }

  cv::BaseRowFilter::~BaseRowFilter(v28);
  _Unwind_Resume(a1);
}

void cv::MorphFilter<cv::MaxOp<unsigned char>,cv::MorphNoVec>::~MorphFilter(cv::BaseRowFilter *this)
{
  *this = &unk_284057270;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284057270;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::MorphFilter<cv::MaxOp<unsigned char>,cv::MorphNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  if (a5 >= 1)
  {
    v7 = *(result + 48);
    v8 = (a7 * a6);
    v9 = *(result + 24);
    v10 = (*(result + 32) - v9) >> 3;
    v11 = a4;
    v12 = (v9 + 4);
    do
    {
      v13 = v10 & 0x7FFFFFFF;
      v14 = v12;
      v15 = v7;
      if (v10 >= 1)
      {
        do
        {
          *v15++ = *(a2 + 8 * *v14) + *(v14 - 1) * a7;
          v14 += 2;
          --v13;
        }

        while (v13);
      }

      if (v8 >= 4)
      {
        result = 0;
        do
        {
          v16 = (*v7 + result);
          v17 = *v16;
          v18 = v16[1];
          v19 = v16[2];
          v20 = v16[3];
          if (v10 >= 2)
          {
            v21 = (v10 & 0x7FFFFFFF) - 1;
            v22 = v7 + 1;
            do
            {
              v23 = *v22++;
              v17 += icvSaturate8u_cv[*(v23 + result) - v17 + 256];
              v18 += icvSaturate8u_cv[*(v23 + result + 1) - v18 + 256];
              v19 += icvSaturate8u_cv[*(v23 + result + 2) - v19 + 256];
              v20 += icvSaturate8u_cv[*(v23 + result + 3) - v20 + 256];
              --v21;
            }

            while (v21);
          }

          v24 = (a3 + result);
          *v24 = v17;
          v24[1] = v18;
          v24[2] = v19;
          v24[3] = v20;
          result += 4;
        }

        while (result <= v8 - 4);
        result = result;
      }

      else
      {
        result = 0;
      }

      if (result < v8)
      {
        do
        {
          v25 = *(*v7 + result);
          if (v10 >= 2)
          {
            v26 = (v10 & 0x7FFFFFFF) - 1;
            v27 = v7 + 1;
            do
            {
              v28 = *v27++;
              v25 += icvSaturate8u_cv[*(v28 + result) - v25 + 256];
              --v26;
            }

            while (v26);
          }

          *(a3 + result++) = v25;
        }

        while (result != v8);
      }

      a3 += v11;
      a2 += 8;
      v29 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v29 | (a5 == 0)));
  }

  return result;
}

void *cv::MorphFilter<cv::MaxOp<unsigned short>,cv::MorphNoVec>::MorphFilter(void *a1, int32x2_t **a2, void *a3)
{
  v6 = cv::BaseFilter::BaseFilter(a1);
  *v6 = &unk_2840572B8;
  *(v6 + 3) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 7) = 0u;
  v6[2] = *a3;
  v6[1] = vrev64_s32(*a2[8]);
  if ((*a2 & 0xFFF) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "_kernel.type() == CV_8U");
    std::string::basic_string[abi:ne200100]<0>(v10, "MorphFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/morph.cpp");
    cv::Exception::Exception(&v12, 4294967081, v11, v10, __p, 783);
    cv::error(&v12, v7);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  cv::preprocess2DKernel(a2, v6 + 3, &v12);
  std::vector<unsigned char *>::resize(a1 + 6, (a1[4] - a1[3]) >> 3);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  return a1;
}

void sub_22D2812D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28)
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

  v31 = *(v28 + 6);
  if (v31)
  {
    *(v28 + 7) = v31;
    operator delete(v31);
  }

  v32 = *v29;
  if (*v29)
  {
    *(v28 + 4) = v32;
    operator delete(v32);
  }

  cv::BaseRowFilter::~BaseRowFilter(v28);
  _Unwind_Resume(a1);
}

void cv::MorphFilter<cv::MaxOp<unsigned short>,cv::MorphNoVec>::~MorphFilter(cv::BaseRowFilter *this)
{
  *this = &unk_2840572B8;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_2840572B8;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void *cv::MorphFilter<cv::MaxOp<unsigned short>,cv::MorphNoVec>::operator()(void *result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  if (a5 >= 1)
  {
    v7 = (a7 * a6);
    v8 = result[3];
    v9 = result[6];
    v10 = (result[4] - v8) >> 3;
    v11 = a4;
    v12 = (v8 + 4);
    do
    {
      v13 = v10 & 0x7FFFFFFF;
      result = v12;
      v14 = v9;
      if (v10 >= 1)
      {
        do
        {
          *v14++ = *(a2 + 8 * *result) + 2 * *(result - 1) * a7;
          ++result;
          --v13;
        }

        while (v13);
      }

      if (v7 >= 4)
      {
        v15 = 0;
        result = *v9;
        do
        {
          v16 = *(result + 2 * v15);
          if (v10 >= 2)
          {
            v17 = (v10 & 0x7FFFFFFF) - 1;
            v18 = (v9 + 1);
            do
            {
              v19 = *v18++;
              v16 = vmax_u16(v16, *(v19 + 2 * v15));
              --v17;
            }

            while (v17);
          }

          *(a3 + 2 * v15) = v16;
          v15 += 4;
        }

        while (v15 <= v7 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < v7)
      {
        result = *v9;
        do
        {
          v20 = *(result + v15);
          if (v10 >= 2)
          {
            v21 = (v10 & 0x7FFFFFFF) - 1;
            v22 = (v9 + 1);
            do
            {
              v23 = *v22++;
              v24 = *(v23 + 2 * v15);
              if (v20 <= v24)
              {
                v20 = v24;
              }

              --v21;
            }

            while (v21);
          }

          *(a3 + 2 * v15++) = v20;
        }

        while (v15 != v7);
      }

      a3 += v11;
      a2 += 8;
      v25 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v25 | (a5 == 0)));
  }

  return result;
}

void *cv::MorphFilter<cv::MaxOp<short>,cv::MorphNoVec>::MorphFilter(void *a1, int32x2_t **a2, void *a3)
{
  v6 = cv::BaseFilter::BaseFilter(a1);
  *v6 = &unk_284057300;
  *(v6 + 3) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 7) = 0u;
  v6[2] = *a3;
  v6[1] = vrev64_s32(*a2[8]);
  if ((*a2 & 0xFFF) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "_kernel.type() == CV_8U");
    std::string::basic_string[abi:ne200100]<0>(v10, "MorphFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/morph.cpp");
    cv::Exception::Exception(&v12, 4294967081, v11, v10, __p, 783);
    cv::error(&v12, v7);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  cv::preprocess2DKernel(a2, v6 + 3, &v12);
  std::vector<unsigned char *>::resize(a1 + 6, (a1[4] - a1[3]) >> 3);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  return a1;
}

void sub_22D2816F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28)
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

  v31 = *(v28 + 6);
  if (v31)
  {
    *(v28 + 7) = v31;
    operator delete(v31);
  }

  v32 = *v29;
  if (*v29)
  {
    *(v28 + 4) = v32;
    operator delete(v32);
  }

  cv::BaseRowFilter::~BaseRowFilter(v28);
  _Unwind_Resume(a1);
}

void cv::MorphFilter<cv::MaxOp<short>,cv::MorphNoVec>::~MorphFilter(cv::BaseRowFilter *this)
{
  *this = &unk_284057300;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284057300;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void *cv::MorphFilter<cv::MaxOp<short>,cv::MorphNoVec>::operator()(void *result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  if (a5 >= 1)
  {
    v7 = (a7 * a6);
    v8 = result[3];
    v9 = result[6];
    v10 = (result[4] - v8) >> 3;
    v11 = a4;
    v12 = (v8 + 4);
    do
    {
      v13 = v10 & 0x7FFFFFFF;
      result = v12;
      v14 = v9;
      if (v10 >= 1)
      {
        do
        {
          *v14++ = *(a2 + 8 * *result) + 2 * *(result - 1) * a7;
          ++result;
          --v13;
        }

        while (v13);
      }

      if (v7 >= 4)
      {
        v15 = 0;
        result = *v9;
        do
        {
          v16 = *(result + 2 * v15);
          if (v10 >= 2)
          {
            v17 = (v10 & 0x7FFFFFFF) - 1;
            v18 = (v9 + 1);
            do
            {
              v19 = *v18++;
              v16 = vmax_s16(v16, *(v19 + 2 * v15));
              --v17;
            }

            while (v17);
          }

          *(a3 + 2 * v15) = v16;
          v15 += 4;
        }

        while (v15 <= v7 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < v7)
      {
        result = *v9;
        do
        {
          v20 = *(result + v15);
          if (v10 >= 2)
          {
            v21 = (v10 & 0x7FFFFFFF) - 1;
            v22 = (v9 + 1);
            do
            {
              v23 = *v22++;
              v24 = *(v23 + 2 * v15);
              if (v20 <= v24)
              {
                v20 = v24;
              }

              --v21;
            }

            while (v21);
          }

          *(a3 + 2 * v15++) = v20;
        }

        while (v15 != v7);
      }

      a3 += v11;
      a2 += 8;
      v25 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v25 | (a5 == 0)));
  }

  return result;
}

void *cv::MorphFilter<cv::MaxOp<float>,cv::MorphNoVec>::MorphFilter(void *a1, int32x2_t **a2, void *a3)
{
  v6 = cv::BaseFilter::BaseFilter(a1);
  *v6 = &unk_284057348;
  *(v6 + 3) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 7) = 0u;
  v6[2] = *a3;
  v6[1] = vrev64_s32(*a2[8]);
  if ((*a2 & 0xFFF) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "_kernel.type() == CV_8U");
    std::string::basic_string[abi:ne200100]<0>(v10, "MorphFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/morph.cpp");
    cv::Exception::Exception(&v12, 4294967081, v11, v10, __p, 783);
    cv::error(&v12, v7);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  cv::preprocess2DKernel(a2, v6 + 3, &v12);
  std::vector<unsigned char *>::resize(a1 + 6, (a1[4] - a1[3]) >> 3);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  return a1;
}

void sub_22D281B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28)
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

  v31 = *(v28 + 6);
  if (v31)
  {
    *(v28 + 7) = v31;
    operator delete(v31);
  }

  v32 = *v29;
  if (*v29)
  {
    *(v28 + 4) = v32;
    operator delete(v32);
  }

  cv::BaseRowFilter::~BaseRowFilter(v28);
  _Unwind_Resume(a1);
}

void cv::MorphFilter<cv::MaxOp<float>,cv::MorphNoVec>::~MorphFilter(cv::BaseRowFilter *this)
{
  *this = &unk_284057348;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284057348;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void *cv::MorphFilter<cv::MaxOp<float>,cv::MorphNoVec>::operator()(void *result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  if (a5 >= 1)
  {
    v7 = (a7 * a6);
    v8 = result[3];
    v9 = result[6];
    v10 = (result[4] - v8) >> 3;
    v11 = a4;
    v12 = (v8 + 4);
    do
    {
      v13 = v10 & 0x7FFFFFFF;
      result = v12;
      v14 = v9;
      if (v10 >= 1)
      {
        do
        {
          *v14++ = *(a2 + 8 * *result) + 4 * *(result - 1) * a7;
          ++result;
          --v13;
        }

        while (v13);
      }

      if (v7 >= 4)
      {
        v15 = 0;
        result = *v9;
        do
        {
          v16 = *(result + 4 * v15);
          if (v10 >= 2)
          {
            v17 = (v10 & 0x7FFFFFFF) - 1;
            v18 = (v9 + 1);
            do
            {
              v19 = *v18++;
              v16 = vbslq_s8(vcgtq_f32(*(v19 + 4 * v15), v16), *(v19 + 4 * v15), v16);
              --v17;
            }

            while (v17);
          }

          *(a3 + 4 * v15) = v16;
          v15 += 4;
        }

        while (v15 <= v7 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < v7)
      {
        result = *v9;
        do
        {
          v20 = *(result + v15);
          if (v10 >= 2)
          {
            v21 = (v10 & 0x7FFFFFFF) - 1;
            v22 = (v9 + 1);
            do
            {
              v23 = *v22++;
              v24 = *(v23 + 4 * v15);
              if (v20 < v24)
              {
                v20 = v24;
              }

              --v21;
            }

            while (v21);
          }

          *(a3 + 4 * v15++) = v20;
        }

        while (v15 != v7);
      }

      a3 += v11;
      a2 += 8;
      v25 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v25 | (a5 == 0)));
  }

  return result;
}

void *cv::MorphFilter<cv::MaxOp<double>,cv::MorphNoVec>::MorphFilter(void *a1, int32x2_t **a2, void *a3)
{
  v6 = cv::BaseFilter::BaseFilter(a1);
  *v6 = &unk_284057390;
  *(v6 + 3) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 7) = 0u;
  v6[2] = *a3;
  v6[1] = vrev64_s32(*a2[8]);
  if ((*a2 & 0xFFF) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "_kernel.type() == CV_8U");
    std::string::basic_string[abi:ne200100]<0>(v10, "MorphFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/morph.cpp");
    cv::Exception::Exception(&v12, 4294967081, v11, v10, __p, 783);
    cv::error(&v12, v7);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  cv::preprocess2DKernel(a2, v6 + 3, &v12);
  std::vector<unsigned char *>::resize(a1 + 6, (a1[4] - a1[3]) >> 3);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  return a1;
}

void sub_22D281F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28)
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

  v31 = *(v28 + 6);
  if (v31)
  {
    *(v28 + 7) = v31;
    operator delete(v31);
  }

  v32 = *v29;
  if (*v29)
  {
    *(v28 + 4) = v32;
    operator delete(v32);
  }

  cv::BaseRowFilter::~BaseRowFilter(v28);
  _Unwind_Resume(a1);
}

void cv::MorphFilter<cv::MaxOp<double>,cv::MorphNoVec>::~MorphFilter(cv::BaseRowFilter *this)
{
  *this = &unk_284057390;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

{
  *this = &unk_284057390;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

void *cv::MorphFilter<cv::MaxOp<double>,cv::MorphNoVec>::operator()(void *result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  if (a5 >= 1)
  {
    v7 = (a7 * a6);
    v8 = result[3];
    v9 = result[6];
    v10 = (result[4] - v8) >> 3;
    v11 = a4;
    v12 = (v8 + 4);
    do
    {
      v13 = v10 & 0x7FFFFFFF;
      result = v12;
      v14 = v9;
      if (v10 >= 1)
      {
        do
        {
          *v14++ = *(a2 + 8 * *result) + 8 * *(result - 1) * a7;
          ++result;
          --v13;
        }

        while (v13);
      }

      if (v7 >= 4)
      {
        v15 = 0;
        result = *v9;
        do
        {
          v16 = &result[v15];
          v17 = *v16;
          v18 = v16[1];
          if (v10 >= 2)
          {
            v19 = (v10 & 0x7FFFFFFF) - 1;
            v20 = (v9 + 1);
            do
            {
              v21 = *v20++;
              v22 = (v21 + 8 * v15);
              v17 = vbslq_s8(vcgtq_f64(*v22, v17), *v22, v17);
              v18 = vbslq_s8(vcgtq_f64(v22[1], v18), v22[1], v18);
              --v19;
            }

            while (v19);
          }

          v23 = (a3 + 8 * v15);
          *v23 = v17;
          v23[1] = v18;
          v15 += 4;
        }

        while (v15 <= v7 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < v7)
      {
        result = *v9;
        do
        {
          v24 = *&result[v15];
          if (v10 >= 2)
          {
            v25 = (v10 & 0x7FFFFFFF) - 1;
            v26 = (v9 + 1);
            do
            {
              v27 = *v26++;
              v28 = *(v27 + 8 * v15);
              if (v24 < v28)
              {
                v24 = v28;
              }

              --v25;
            }

            while (v25);
          }

          *(a3 + 8 * v15++) = v24;
        }

        while (v15 != v7);
      }

      a3 += v11;
      a2 += 8;
      v29 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v29 | (a5 == 0)));
  }

  return result;
}

double cv::eigen2x2(cv *this, const float *a2, float *a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = (a2 + 3);
    v5 = (this + 8);
    result = 0.5;
    do
    {
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v10 = (v7 + v9) * 0.5;
      v11 = sqrt(v8 * v8 + (v7 - v9) * (v7 - v9) * 0.25);
      v12 = v10 + v11;
      v13 = fabs(v8);
      if (v13 + vabdd_f64(v10 + v11, v7) >= 0.0001)
      {
        v17 = v12 - v7;
        v14 = *(v5 - 1);
      }

      else
      {
        v14 = v12 - v9;
        v15 = v13 + vabdd_f64(v12, v9);
        if (v15 >= 0.0001)
        {
          v17 = *(v5 - 1);
        }

        else
        {
          v16 = 1.0 / (v15 + 0.00000011920929);
          v14 = v14 * v16;
          v17 = v16 * v8;
        }
      }

      v18 = v10 - v11;
      v19 = 1.0 / sqrt(v17 * v17 + v14 * v14 + 2.22044605e-16);
      v20 = v12;
      *(v4 - 3) = v20;
      v21 = v14 * v19;
      *&v19 = v17 * v19;
      *(v4 - 1) = v21;
      *v4 = *&v19;
      if (v13 + vabdd_f64(v18, v7) >= 0.0001)
      {
        v22 = v8;
        v8 = v18 - v7;
      }

      else
      {
        v22 = v18 - v9;
        v23 = v13 + vabdd_f64(v18, v9);
        if (v23 < 0.0001)
        {
          v24 = 1.0 / (v23 + 0.00000011920929);
          v22 = v22 * v24;
          v8 = v24 * v8;
        }
      }

      v25 = 1.0 / sqrt(v8 * v8 + v22 * v22 + 2.22044605e-16);
      v26 = v18;
      *(v4 - 2) = v26;
      v27 = v22 * v25;
      v28 = v8 * v25;
      v4[1] = v27;
      v4[2] = v28;
      v4 += 6;
      v5 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

void cv::cornerMinEigenVal(void (***this)(void **__return_ptr), const cv::_InputArray *a2, const cv::_OutputArray *a3, int a4)
{
  (**this)(v8);
  v7[0] = vrev64_s32(*v8[8]);
  (*(*a2 + 128))(a2, v7, 5, 0xFFFFFFFFLL, 0, 0);
  (**a2)(v7, a2, 0xFFFFFFFFLL);
  cv::cornerEigenValsVecs(v8, v7, a3, a4, 0.0);
}

void sub_22D282564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  cv::Mat::~Mat(&a9);
  cv::Mat::~Mat(&a21);
  _Unwind_Resume(a1);
}

void cv::cornerEigenValsVecs(cv *this, const cv::Mat *a2, cv::Mat *a3, int a4, double a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = 1 << (a4 - 1);
  if (a4 <= 0)
  {
    v6 = 4;
  }

  v7 = a3 * v6;
  if (a4 < 0)
  {
    v7 = v7 + v7;
  }

  if ((*this & 7) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 * 255.0;
  }

  v9 = *this & 0xFFF;
  if (v9 && v9 != 5)
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "src.type() == CV_8UC1 || src.type() == CV_32FC1");
    std::string::basic_string[abi:ne200100]<0>(__p, "cornerEigenValsVecs");
    std::string::basic_string[abi:ne200100]<0>(v21, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/corner.cpp");
    cv::Exception::Exception(v17, 4294967081, v13, __p, v21, 263);
    cv::error(v17, v10);
  }

  v18 = &v17[2];
  v19 = v20;
  v20[0] = 0;
  v20[1] = 0;
  v17[0] = 1124007936;
  v11 = 1.0 / v8;
  memset(&v17[1], 0, 60);
  v14 = &v13[2];
  v15 = v16;
  v16[0] = 0;
  v16[1] = 0;
  v13[0] = 1124007936;
  memset(&v13[1], 0, 60);
  if (a4 >= 1)
  {
    cv::_InputArray::_InputArray(__p, this);
    cv::_OutputArray::_OutputArray(v21, v17);
    cv::Sobel(__p, v21, 5, 1, 0, a4, v11, 0.0);
  }

  cv::_InputArray::_InputArray(__p, this);
  cv::_OutputArray::_OutputArray(v21, v17);
  cv::Scharr(__p, v21, 5, 1, 0, v11, 0.0);
}

void sub_22D282C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void cv::cornerHarris(void (***this)(void **__return_ptr), const cv::_InputArray *a2, const cv::_OutputArray *a3, int a4, double a5)
{
  (**this)(v10);
  v9[0] = vrev64_s32(*v10[8]);
  (*(*a2 + 128))(a2, v9, 5, 0xFFFFFFFFLL, 0, 0);
  (**a2)(v9, a2, 0xFFFFFFFFLL);
  cv::cornerEigenValsVecs(v10, v9, a3, a4, a5);
}

void sub_22D282F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  cv::Mat::~Mat(&a9);
  cv::Mat::~Mat(&a21);
  _Unwind_Resume(a1);
}

void cv::MatOp::roi(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (!(*(*a1 + 16))(a1))
  {
    v88 = &v87[8];
    v89 = &v90;
    v90 = 0;
    v91 = 0;
    *v87 = 1124007936;
    memset(&v87[4], 0, 60);
    (*(**a2 + 24))(*a2, a2, v87, 0xFFFFFFFFLL);
    v26 = *a4;
    *v78 = *a3;
    *v74 = v26;
    cv::Mat::Mat(v83, v87, v78, v74);
    v79 = &v78[8];
    v80 = &v81;
    v81 = 0;
    v82 = 0;
    *v78 = 1124007936;
    memset(&v78[4], 0, 60);
    v75 = &v74[8];
    v76 = v77;
    v77[0] = 0;
    v77[1] = 0;
    *v74 = 1124007936;
    memset(&v74[4], 0, 60);
    memset(v73, 0, sizeof(v73));
    cv::MatExpr::MatExpr(&v92, &cv::g_MatOp_Identity, 0, v83, v78, v74, v73, 1.0, 1.0);
    cv::MatExpr::operator=(a5, &v92);
    cv::MatExpr::~MatExpr(&v92);
    if (*&v74[24] && atomic_fetch_add(*&v74[24], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v74);
    }

    *&v74[16] = 0;
    memset(&v74[32], 0, 24);
    if (*&v74[4] >= 1)
    {
      v27 = 0;
      v28 = v75;
      do
      {
        *&v28[4 * v27++] = 0;
      }

      while (v27 < *&v74[4]);
    }

    *&v74[24] = 0;
    if (v76)
    {
      v29 = v76 == v77;
    }

    else
    {
      v29 = 1;
    }

    if (!v29)
    {
      free(v76);
    }

    if (*&v78[24] && atomic_fetch_add(*&v78[24], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v78);
    }

    *&v78[16] = 0;
    memset(&v78[32], 0, 24);
    if (*&v78[4] >= 1)
    {
      v30 = 0;
      v31 = v79;
      do
      {
        *&v31[4 * v30++] = 0;
      }

      while (v30 < *&v78[4]);
    }

    *&v78[24] = 0;
    if (v80)
    {
      v32 = v80 == &v81;
    }

    else
    {
      v32 = 1;
    }

    if (!v32)
    {
      free(v80);
    }

    if (*&v83[24] && atomic_fetch_add(*&v83[24], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v83);
    }

    *&v83[16] = 0;
    memset(&v83[32], 0, 24);
    if (*&v83[4] >= 1)
    {
      v33 = 0;
      v34 = v84;
      do
      {
        *&v34[4 * v33++] = 0;
      }

      while (v33 < *&v83[4]);
    }

    *&v83[24] = 0;
    if (v85)
    {
      v35 = v85 == v86;
    }

    else
    {
      v35 = 1;
    }

    if (!v35)
    {
      free(v85);
    }

    if (*&v87[24] && atomic_fetch_add(*&v87[24], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v87);
    }

    *&v87[16] = 0;
    memset(&v87[32], 0, 24);
    if (*&v87[4] >= 1)
    {
      v36 = 0;
      v37 = v88;
      do
      {
        *&v37[4 * v36++] = 0;
      }

      while (v36 < *&v87[4]);
    }

    *&v87[24] = 0;
    v38 = v89;
    if (v89)
    {
      v39 = v89 == &v90;
    }

    else
    {
      v39 = 1;
    }

    if (!v39)
    {
      goto LABEL_163;
    }

    return;
  }

  v9 = *a2;
  v10 = *(a2 + 2);
  v88 = &v87[8];
  v89 = &v90;
  v90 = 0;
  v91 = 0;
  *v87 = 1124007936;
  memset(&v87[4], 0, 60);
  v84 = &v83[8];
  v85 = v86;
  v86[0] = 0;
  v86[1] = 0;
  *v83 = 1124007936;
  memset(&v83[4], 0, 60);
  v79 = &v78[8];
  v80 = &v81;
  v81 = 0;
  v82 = 0;
  *v78 = 1124007936;
  memset(&v78[4], 0, 60);
  cv::MatExpr::MatExpr(&v92, v9, v10, v87, v83, v78, a2 + 40, *(a2 + 38), *(a2 + 39));
  cv::MatExpr::operator=(a5, &v92);
  cv::MatExpr::~MatExpr(&v92);
  if (*&v78[24] && atomic_fetch_add(*&v78[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v78);
  }

  *&v78[16] = 0;
  memset(&v78[32], 0, 24);
  if (*&v78[4] >= 1)
  {
    v11 = 0;
    v12 = v79;
    do
    {
      *&v12[4 * v11++] = 0;
    }

    while (v11 < *&v78[4]);
  }

  *&v78[24] = 0;
  if (v80)
  {
    v13 = v80 == &v81;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    free(v80);
  }

  if (*&v83[24] && atomic_fetch_add(*&v83[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v83);
  }

  *&v83[16] = 0;
  memset(&v83[32], 0, 24);
  if (*&v83[4] >= 1)
  {
    v14 = 0;
    v15 = v84;
    do
    {
      *&v15[4 * v14++] = 0;
    }

    while (v14 < *&v83[4]);
  }

  *&v83[24] = 0;
  if (v85)
  {
    v16 = v85 == v86;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    free(v85);
  }

  if (*&v87[24] && atomic_fetch_add(*&v87[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v87);
  }

  *&v87[16] = 0;
  memset(&v87[32], 0, 24);
  if (*&v87[4] >= 1)
  {
    v17 = 0;
    v18 = v88;
    do
    {
      *&v18[4 * v17++] = 0;
    }

    while (v17 < *&v87[4]);
  }

  *&v87[24] = 0;
  if (v89)
  {
    v19 = v89 == &v90;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    free(v89);
  }

  if (a2[4])
  {
    v20 = *a4;
    *v87 = *a3;
    *v83 = v20;
    cv::Mat::Mat(&v92, a2 + 2, v87, v83);
    v21 = v95;
    if ((a5 + 16) == &v92)
    {
      goto LABEL_97;
    }

    if (v95)
    {
      atomic_fetch_add(v95, 1u);
    }

    v22 = *(a5 + 40);
    if (v22 && atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate((a5 + 16));
    }

    *(a5 + 32) = 0;
    *(a5 + 56) = 0;
    *(a5 + 64) = 0;
    *(a5 + 48) = 0;
    if (*(a5 + 20) <= 0)
    {
      *(a5 + 40) = 0;
      *(a5 + 16) = v92;
    }

    else
    {
      v23 = 0;
      v24 = *(a5 + 80);
      do
      {
        *(v24 + 4 * v23++) = 0;
        v25 = *(a5 + 20);
      }

      while (v23 < v25);
      *(a5 + 40) = 0;
      *(a5 + 16) = v92;
      if (v25 > 2)
      {
        goto LABEL_95;
      }
    }

    if (SHIDWORD(v92) <= 2)
    {
      *(a5 + 20) = HIDWORD(v92);
      *(a5 + 24) = v93;
      v40 = v99;
      v41 = *(a5 + 88);
      *v41 = *v99;
      v41[1] = v40[1];
LABEL_96:
      v42 = v97;
      *(a5 + 32) = v94;
      *(a5 + 56) = v96;
      v43 = v95;
      *(a5 + 40) = v95;
      *(a5 + 72) = v42;
      v21 = v43;
LABEL_97:
      if (v21 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v92);
      }

      v94 = 0;
      *(&v95 + 1) = 0;
      v96 = 0uLL;
      if (SHIDWORD(v92) >= 1)
      {
        v44 = 0;
        v45 = v98;
        do
        {
          *(v45 + 4 * v44++) = 0;
        }

        while (v44 < SHIDWORD(v92));
      }

      *&v95 = 0;
      if (v99)
      {
        v46 = v99 == v100;
      }

      else
      {
        v46 = 1;
      }

      if (!v46)
      {
        free(v99);
      }

      goto LABEL_108;
    }

LABEL_95:
    cv::Mat::copySize((a5 + 16), &v92);
    goto LABEL_96;
  }

LABEL_108:
  if (!a2[16])
  {
    goto LABEL_136;
  }

  v47 = *a4;
  *v87 = *a3;
  *v83 = v47;
  cv::Mat::Mat(&v92, a2 + 14, v87, v83);
  v48 = v95;
  if ((a5 + 112) != &v92)
  {
    if (v95)
    {
      atomic_fetch_add(v95, 1u);
    }

    v49 = *(a5 + 136);
    if (v49 && atomic_fetch_add(v49, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate((a5 + 112));
    }

    *(a5 + 128) = 0;
    *(a5 + 152) = 0;
    *(a5 + 160) = 0;
    *(a5 + 144) = 0;
    if (*(a5 + 116) <= 0)
    {
      *(a5 + 136) = 0;
      *(a5 + 112) = v92;
    }

    else
    {
      v50 = 0;
      v51 = *(a5 + 176);
      do
      {
        *(v51 + 4 * v50++) = 0;
        v52 = *(a5 + 116);
      }

      while (v50 < v52);
      *(a5 + 136) = 0;
      *(a5 + 112) = v92;
      if (v52 > 2)
      {
        goto LABEL_123;
      }
    }

    if (SHIDWORD(v92) <= 2)
    {
      *(a5 + 116) = HIDWORD(v92);
      *(a5 + 120) = v93;
      v53 = v99;
      v54 = *(a5 + 184);
      *v54 = *v99;
      v54[1] = v53[1];
LABEL_124:
      v55 = v97;
      *(a5 + 128) = v94;
      *(a5 + 152) = v96;
      v56 = v95;
      *(a5 + 136) = v95;
      *(a5 + 168) = v55;
      v48 = v56;
      goto LABEL_125;
    }

LABEL_123:
    cv::Mat::copySize((a5 + 112), &v92);
    goto LABEL_124;
  }

LABEL_125:
  if (v48 && atomic_fetch_add(v48, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v92);
  }

  v94 = 0;
  *(&v95 + 1) = 0;
  v96 = 0uLL;
  if (SHIDWORD(v92) >= 1)
  {
    v57 = 0;
    v58 = v98;
    do
    {
      *(v58 + 4 * v57++) = 0;
    }

    while (v57 < SHIDWORD(v92));
  }

  *&v95 = 0;
  if (v99)
  {
    v59 = v99 == v100;
  }

  else
  {
    v59 = 1;
  }

  if (!v59)
  {
    free(v99);
  }

LABEL_136:
  if (!a2[28])
  {
    return;
  }

  v60 = *a4;
  *v87 = *a3;
  *v83 = v60;
  cv::Mat::Mat(&v92, a2 + 26, v87, v83);
  v61 = v95;
  if ((a5 + 208) != &v92)
  {
    if (v95)
    {
      atomic_fetch_add(v95, 1u);
    }

    v62 = *(a5 + 232);
    if (v62 && atomic_fetch_add(v62, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate((a5 + 208));
    }

    *(a5 + 224) = 0;
    *(a5 + 248) = 0;
    *(a5 + 256) = 0;
    *(a5 + 240) = 0;
    if (*(a5 + 212) <= 0)
    {
      *(a5 + 232) = 0;
      *(a5 + 208) = v92;
    }

    else
    {
      v63 = 0;
      v64 = *(a5 + 272);
      do
      {
        *(v64 + 4 * v63++) = 0;
        v65 = *(a5 + 212);
      }

      while (v63 < v65);
      *(a5 + 232) = 0;
      *(a5 + 208) = v92;
      if (v65 > 2)
      {
        goto LABEL_151;
      }
    }

    if (SHIDWORD(v92) <= 2)
    {
      *(a5 + 212) = HIDWORD(v92);
      *(a5 + 216) = v93;
      v66 = v99;
      v67 = *(a5 + 280);
      *v67 = *v99;
      v67[1] = v66[1];
LABEL_152:
      v68 = v97;
      *(a5 + 224) = v94;
      *(a5 + 248) = v96;
      v69 = v95;
      *(a5 + 232) = v95;
      *(a5 + 264) = v68;
      v61 = v69;
      goto LABEL_153;
    }

LABEL_151:
    cv::Mat::copySize((a5 + 208), &v92);
    goto LABEL_152;
  }

LABEL_153:
  if (v61 && atomic_fetch_add(v61, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v92);
  }

  v94 = 0;
  *(&v95 + 1) = 0;
  v96 = 0uLL;
  if (SHIDWORD(v92) >= 1)
  {
    v70 = 0;
    v71 = v98;
    do
    {
      *(v71 + 4 * v70++) = 0;
    }

    while (v70 < SHIDWORD(v92));
  }

  *&v95 = 0;
  v38 = v99;
  if (v99)
  {
    v72 = v99 == v100;
  }

  else
  {
    v72 = 1;
  }

  if (!v72)
  {
LABEL_163:
    free(v38);
  }
}

uint64_t cv::MatExpr::operator=(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  if (a1 != a2)
  {
    v5 = a2[5];
    if (v5)
    {
      atomic_fetch_add(v5, 1u);
    }

    v6 = *(a1 + 40);
    if (v6 && atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate((a1 + 16));
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *(a2 + 4);
    }

    else
    {
      v7 = 0;
      v8 = *(a1 + 80);
      do
      {
        *(v8 + 4 * v7++) = 0;
        v9 = *(a1 + 20);
      }

      while (v7 < v9);
      *(a1 + 40) = 0;
      *(a1 + 16) = *(a2 + 4);
      if (v9 > 2)
      {
        goto LABEL_15;
      }
    }

    v10 = *(a2 + 5);
    if (v10 <= 2)
    {
      *(a1 + 20) = v10;
      *(a1 + 24) = a2[3];
      v11 = a2[11];
      v12 = *(a1 + 88);
      *v12 = *v11;
      v12[1] = v11[1];
      goto LABEL_16;
    }

LABEL_15:
    cv::Mat::copySize((a1 + 16), (a2 + 2));
LABEL_16:
    *(a1 + 48) = *(a2 + 3);
    *(a1 + 64) = a2[8];
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 72) = a2[9];
    v13 = a2[17];
    if (v13)
    {
      atomic_fetch_add(v13, 1u);
    }

    v14 = *(a1 + 136);
    if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate((a1 + 112));
    }

    *(a1 + 128) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 144) = 0;
    if (*(a1 + 116) <= 0)
    {
      *(a1 + 136) = 0;
      *(a1 + 112) = *(a2 + 28);
    }

    else
    {
      v15 = 0;
      v16 = *(a1 + 176);
      do
      {
        *(v16 + 4 * v15++) = 0;
        v17 = *(a1 + 116);
      }

      while (v15 < v17);
      *(a1 + 136) = 0;
      *(a1 + 112) = *(a2 + 28);
      if (v17 > 2)
      {
        goto LABEL_29;
      }
    }

    v18 = *(a2 + 29);
    if (v18 <= 2)
    {
      *(a1 + 116) = v18;
      *(a1 + 120) = a2[15];
      v19 = a2[23];
      v20 = *(a1 + 184);
      *v20 = *v19;
      v20[1] = v19[1];
      goto LABEL_30;
    }

LABEL_29:
    cv::Mat::copySize((a1 + 112), (a2 + 14));
LABEL_30:
    *(a1 + 144) = *(a2 + 9);
    *(a1 + 160) = a2[20];
    *(a1 + 128) = *(a2 + 8);
    *(a1 + 168) = a2[21];
    v21 = a2[29];
    if (v21)
    {
      atomic_fetch_add(v21, 1u);
    }

    v22 = *(a1 + 232);
    if (v22 && atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate((a1 + 208));
    }

    *(a1 + 224) = 0;
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
    *(a1 + 240) = 0;
    if (*(a1 + 212) <= 0)
    {
      *(a1 + 232) = 0;
      *(a1 + 208) = *(a2 + 52);
    }

    else
    {
      v23 = 0;
      v24 = *(a1 + 272);
      do
      {
        *(v24 + 4 * v23++) = 0;
        v25 = *(a1 + 212);
      }

      while (v23 < v25);
      *(a1 + 232) = 0;
      *(a1 + 208) = *(a2 + 52);
      if (v25 > 2)
      {
        goto LABEL_43;
      }
    }

    v26 = *(a2 + 53);
    if (v26 <= 2)
    {
      *(a1 + 212) = v26;
      *(a1 + 216) = a2[27];
      v27 = a2[35];
      v28 = *(a1 + 280);
      *v28 = *v27;
      v28[1] = v27[1];
LABEL_44:
      *(a1 + 240) = *(a2 + 15);
      *(a1 + 256) = a2[32];
      *(a1 + 224) = *(a2 + 14);
      *(a1 + 264) = a2[33];
      goto LABEL_45;
    }

LABEL_43:
    cv::Mat::copySize((a1 + 208), (a2 + 26));
    goto LABEL_44;
  }

LABEL_45:
  v29 = *(a2 + 19);
  v30 = *(a2 + 21);
  *(a1 + 320) = *(a2 + 20);
  *(a1 + 336) = v30;
  *(a1 + 304) = v29;
  return a1;
}

void cv::MatOp::diag(cv::MatOp *this, const cv::MatExpr *a2, unsigned int a3, cv::MatExpr *a4)
{
  if (!(*(*this + 16))(this))
  {
    v84 = &v83[1];
    v85 = &v86;
    v86 = 0;
    v87 = 0;
    v82 = 1124007936;
    memset(v83, 0, sizeof(v83));
    (*(**a2 + 24))(*a2, a2, &v82, 0xFFFFFFFFLL);
    cv::Mat::diag(&v82, a3, v78);
    v74 = &v73[1];
    v75 = &v76;
    v76 = 0;
    v77 = 0;
    v72 = 1124007936;
    memset(v73, 0, sizeof(v73));
    v69 = v68 + 8;
    v70 = v71;
    v71[0] = 0;
    v71[1] = 0;
    LODWORD(v68[0]) = 1124007936;
    memset(v68 + 4, 0, 48);
    v68[3] = 0u;
    memset(v67, 0, sizeof(v67));
    cv::MatExpr::MatExpr(&v88, &cv::g_MatOp_Identity, 0, v78, &v72, v68, v67, 1.0, 1.0);
    cv::MatExpr::operator=(a4, &v88);
    cv::MatExpr::~MatExpr(&v88);
    if (*(&v68[1] + 1) && atomic_fetch_add(*(&v68[1] + 1), 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v68);
    }

    *&v68[1] = 0;
    memset(&v68[2], 0, 24);
    if (SDWORD1(v68[0]) >= 1)
    {
      v23 = 0;
      v24 = v69;
      do
      {
        *&v24[4 * v23++] = 0;
      }

      while (v23 < SDWORD1(v68[0]));
    }

    *(&v68[1] + 1) = 0;
    if (v70)
    {
      v25 = v70 == v71;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      free(v70);
    }

    if (*&v73[5] && atomic_fetch_add(*&v73[5], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(&v72);
    }

    *&v73[3] = 0;
    memset(&v73[7], 0, 24);
    if (v73[0] >= 1)
    {
      v26 = 0;
      v27 = v74;
      do
      {
        v27[v26++] = 0;
      }

      while (v26 < v73[0]);
    }

    *&v73[5] = 0;
    if (v75)
    {
      v28 = v75 == &v76;
    }

    else
    {
      v28 = 1;
    }

    if (!v28)
    {
      free(v75);
    }

    if (*(&v78[1] + 1) && atomic_fetch_add(*(&v78[1] + 1), 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v78);
    }

    *&v78[1] = 0;
    memset(&v78[2], 0, 24);
    if (SDWORD1(v78[0]) >= 1)
    {
      v29 = 0;
      v30 = v79;
      do
      {
        *&v30[4 * v29++] = 0;
      }

      while (v29 < SDWORD1(v78[0]));
    }

    *(&v78[1] + 1) = 0;
    if (v80)
    {
      v31 = v80 == v81;
    }

    else
    {
      v31 = 1;
    }

    if (!v31)
    {
      free(v80);
    }

    if (*&v83[5] && atomic_fetch_add(*&v83[5], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(&v82);
    }

    *&v83[3] = 0;
    memset(&v83[7], 0, 24);
    if (v83[0] >= 1)
    {
      v32 = 0;
      v33 = v84;
      do
      {
        v33[v32++] = 0;
      }

      while (v32 < v83[0]);
    }

    *&v83[5] = 0;
    v34 = v85;
    if (v85)
    {
      v35 = v85 == &v86;
    }

    else
    {
      v35 = 1;
    }

    if (!v35)
    {
      goto LABEL_163;
    }

    return;
  }

  v7 = *a2;
  v8 = *(a2 + 2);
  v84 = &v83[1];
  v85 = &v86;
  v86 = 0;
  v87 = 0;
  v82 = 1124007936;
  memset(v83, 0, sizeof(v83));
  v79 = v78 + 8;
  v80 = v81;
  v81[0] = 0;
  v81[1] = 0;
  LODWORD(v78[0]) = 1124007936;
  memset(v78 + 4, 0, 48);
  v78[3] = 0u;
  v74 = &v73[1];
  v75 = &v76;
  v76 = 0;
  v77 = 0;
  v72 = 1124007936;
  memset(v73, 0, sizeof(v73));
  cv::MatExpr::MatExpr(&v88, v7, v8, &v82, v78, &v72, a2 + 40, *(a2 + 38), *(a2 + 39));
  cv::MatExpr::operator=(a4, &v88);
  cv::MatExpr::~MatExpr(&v88);
  if (*&v73[5] && atomic_fetch_add(*&v73[5], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v72);
  }

  *&v73[3] = 0;
  memset(&v73[7], 0, 24);
  if (v73[0] >= 1)
  {
    v9 = 0;
    v10 = v74;
    do
    {
      v10[v9++] = 0;
    }

    while (v9 < v73[0]);
  }

  *&v73[5] = 0;
  if (v75)
  {
    v11 = v75 == &v76;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    free(v75);
  }

  if (*(&v78[1] + 1) && atomic_fetch_add(*(&v78[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v78);
  }

  *&v78[1] = 0;
  memset(&v78[2], 0, 24);
  if (SDWORD1(v78[0]) >= 1)
  {
    v12 = 0;
    v13 = v79;
    do
    {
      *&v13[4 * v12++] = 0;
    }

    while (v12 < SDWORD1(v78[0]));
  }

  *(&v78[1] + 1) = 0;
  if (v80)
  {
    v14 = v80 == v81;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    free(v80);
  }

  if (*&v83[5] && atomic_fetch_add(*&v83[5], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v82);
  }

  *&v83[3] = 0;
  memset(&v83[7], 0, 24);
  if (v83[0] >= 1)
  {
    v15 = 0;
    v16 = v84;
    do
    {
      v16[v15++] = 0;
    }

    while (v15 < v83[0]);
  }

  *&v83[5] = 0;
  if (v85)
  {
    v17 = v85 == &v86;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    free(v85);
  }

  if (*(a2 + 4))
  {
    cv::Mat::diag((a2 + 16), a3, &v88);
    v18 = v91;
    if ((a4 + 16) == &v88)
    {
      goto LABEL_97;
    }

    if (v91)
    {
      atomic_fetch_add(v91, 1u);
    }

    v19 = *(a4 + 5);
    if (v19 && atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate((a4 + 16));
    }

    *(a4 + 4) = 0;
    *(a4 + 7) = 0;
    *(a4 + 8) = 0;
    *(a4 + 6) = 0;
    if (*(a4 + 5) <= 0)
    {
      *(a4 + 5) = 0;
      *(a4 + 4) = v88;
    }

    else
    {
      v20 = 0;
      v21 = *(a4 + 10);
      do
      {
        *(v21 + 4 * v20++) = 0;
        v22 = *(a4 + 5);
      }

      while (v20 < v22);
      *(a4 + 5) = 0;
      *(a4 + 4) = v88;
      if (v22 > 2)
      {
        goto LABEL_95;
      }
    }

    if (SHIDWORD(v88) <= 2)
    {
      *(a4 + 5) = HIDWORD(v88);
      *(a4 + 3) = v89;
      v36 = v95;
      v37 = *(a4 + 11);
      *v37 = *v95;
      v37[1] = v36[1];
LABEL_96:
      v38 = v93;
      *(a4 + 4) = v90;
      *(a4 + 56) = v92;
      v39 = v91;
      *(a4 + 40) = v91;
      *(a4 + 9) = v38;
      v18 = v39;
LABEL_97:
      if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v88);
      }

      v90 = 0;
      *(&v91 + 1) = 0;
      v92 = 0uLL;
      if (SHIDWORD(v88) >= 1)
      {
        v40 = 0;
        v41 = v94;
        do
        {
          *(v41 + 4 * v40++) = 0;
        }

        while (v40 < SHIDWORD(v88));
      }

      *&v91 = 0;
      if (v95)
      {
        v42 = v95 == v96;
      }

      else
      {
        v42 = 1;
      }

      if (!v42)
      {
        free(v95);
      }

      goto LABEL_108;
    }

LABEL_95:
    cv::Mat::copySize((a4 + 16), &v88);
    goto LABEL_96;
  }

LABEL_108:
  if (!*(a2 + 16))
  {
    goto LABEL_136;
  }

  cv::Mat::diag((a2 + 112), a3, &v88);
  v43 = v91;
  if ((a4 + 112) != &v88)
  {
    if (v91)
    {
      atomic_fetch_add(v91, 1u);
    }

    v44 = *(a4 + 17);
    if (v44 && atomic_fetch_add(v44, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate((a4 + 112));
    }

    *(a4 + 16) = 0;
    *(a4 + 19) = 0;
    *(a4 + 20) = 0;
    *(a4 + 18) = 0;
    if (*(a4 + 29) <= 0)
    {
      *(a4 + 17) = 0;
      *(a4 + 28) = v88;
    }

    else
    {
      v45 = 0;
      v46 = *(a4 + 22);
      do
      {
        *(v46 + 4 * v45++) = 0;
        v47 = *(a4 + 29);
      }

      while (v45 < v47);
      *(a4 + 17) = 0;
      *(a4 + 28) = v88;
      if (v47 > 2)
      {
        goto LABEL_123;
      }
    }

    if (SHIDWORD(v88) <= 2)
    {
      *(a4 + 29) = HIDWORD(v88);
      *(a4 + 15) = v89;
      v48 = v95;
      v49 = *(a4 + 23);
      *v49 = *v95;
      v49[1] = v48[1];
LABEL_124:
      v50 = v93;
      *(a4 + 16) = v90;
      *(a4 + 152) = v92;
      v51 = v91;
      *(a4 + 136) = v91;
      *(a4 + 21) = v50;
      v43 = v51;
      goto LABEL_125;
    }

LABEL_123:
    cv::Mat::copySize((a4 + 112), &v88);
    goto LABEL_124;
  }

LABEL_125:
  if (v43 && atomic_fetch_add(v43, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v88);
  }

  v90 = 0;
  *(&v91 + 1) = 0;
  v92 = 0uLL;
  if (SHIDWORD(v88) >= 1)
  {
    v52 = 0;
    v53 = v94;
    do
    {
      *(v53 + 4 * v52++) = 0;
    }

    while (v52 < SHIDWORD(v88));
  }

  *&v91 = 0;
  if (v95)
  {
    v54 = v95 == v96;
  }

  else
  {
    v54 = 1;
  }

  if (!v54)
  {
    free(v95);
  }

LABEL_136:
  if (!*(a2 + 28))
  {
    return;
  }

  cv::Mat::diag((a2 + 208), a3, &v88);
  v55 = v91;
  if ((a4 + 208) != &v88)
  {
    if (v91)
    {
      atomic_fetch_add(v91, 1u);
    }

    v56 = *(a4 + 29);
    if (v56 && atomic_fetch_add(v56, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate((a4 + 208));
    }

    *(a4 + 28) = 0;
    *(a4 + 31) = 0;
    *(a4 + 32) = 0;
    *(a4 + 30) = 0;
    if (*(a4 + 53) <= 0)
    {
      *(a4 + 29) = 0;
      *(a4 + 52) = v88;
    }

    else
    {
      v57 = 0;
      v58 = *(a4 + 34);
      do
      {
        *(v58 + 4 * v57++) = 0;
        v59 = *(a4 + 53);
      }

      while (v57 < v59);
      *(a4 + 29) = 0;
      *(a4 + 52) = v88;
      if (v59 > 2)
      {
        goto LABEL_151;
      }
    }

    if (SHIDWORD(v88) <= 2)
    {
      *(a4 + 53) = HIDWORD(v88);
      *(a4 + 27) = v89;
      v60 = v95;
      v61 = *(a4 + 35);
      *v61 = *v95;
      v61[1] = v60[1];
LABEL_152:
      v62 = v93;
      *(a4 + 28) = v90;
      *(a4 + 248) = v92;
      v63 = v91;
      *(a4 + 232) = v91;
      *(a4 + 33) = v62;
      v55 = v63;
      goto LABEL_153;
    }

LABEL_151:
    cv::Mat::copySize((a4 + 208), &v88);
    goto LABEL_152;
  }

LABEL_153:
  if (v55 && atomic_fetch_add(v55, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v88);
  }

  v90 = 0;
  *(&v91 + 1) = 0;
  v92 = 0uLL;
  if (SHIDWORD(v88) >= 1)
  {
    v64 = 0;
    v65 = v94;
    do
    {
      *(v65 + 4 * v64++) = 0;
    }

    while (v64 < SHIDWORD(v88));
  }

  *&v91 = 0;
  v34 = v95;
  if (v95)
  {
    v66 = v95 == v96;
  }

  else
  {
    v66 = 1;
  }

  if (!v66)
  {
LABEL_163:
    free(v34);
  }
}

void cv::MatOp::augAssignAdd(cv::MatOp *this, const cv::MatExpr *a2, cv::Mat *a3)
{
  v10 = &v9[1];
  v11 = v12;
  v12[0] = 0;
  v12[1] = 0;
  LODWORD(v9[0]) = 1124007936;
  memset(v9 + 4, 0, 32);
  memset(&v9[4] + 4, 0, 28);
  (*(**a2 + 24))(*a2, a2, v9, 0xFFFFFFFFLL);
  cv::_InputArray::_InputArray(v15, a3);
  cv::_InputArray::_InputArray(v14, v9);
  v4 = cv::_OutputArray::_OutputArray(v13, a3);
  v5 = cv::noArray(v4);
  cv::add(v15, v14, v13, v5, 0xFFFFFFFFLL);
  if (v9[3] && atomic_fetch_add(v9[3], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v9);
  }

  v9[2] = 0;
  memset(&v9[4], 0, 24);
  if (SHIDWORD(v9[0]) >= 1)
  {
    v6 = 0;
    v7 = v10;
    do
    {
      *(v7 + v6++) = 0;
    }

    while (v6 < SHIDWORD(v9[0]));
  }

  v9[3] = 0;
  if (v11)
  {
    v8 = v11 == v12;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    free(v11);
  }
}

void cv::MatOp::augAssignSubtract(cv::MatOp *this, const cv::MatExpr *a2, cv::Mat *a3)
{
  v10 = &v9[1];
  v11 = v12;
  v12[0] = 0;
  v12[1] = 0;
  LODWORD(v9[0]) = 1124007936;
  memset(v9 + 4, 0, 32);
  memset(&v9[4] + 4, 0, 28);
  (*(**a2 + 24))(*a2, a2, v9, 0xFFFFFFFFLL);
  cv::_InputArray::_InputArray(v15, a3);
  cv::_InputArray::_InputArray(v14, v9);
  v4 = cv::_OutputArray::_OutputArray(v13, a3);
  v5 = cv::noArray(v4);
  cv::subtract(v15, v14, v13, v5, 0xFFFFFFFFLL);
  if (v9[3] && atomic_fetch_add(v9[3], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v9);
  }

  v9[2] = 0;
  memset(&v9[4], 0, 24);
  if (SHIDWORD(v9[0]) >= 1)
  {
    v6 = 0;
    v7 = v10;
    do
    {
      *(v7 + v6++) = 0;
    }

    while (v6 < SHIDWORD(v9[0]));
  }

  v9[3] = 0;
  if (v11)
  {
    v8 = v11 == v12;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    free(v11);
  }
}

void cv::MatOp::augAssignMultiply(cv::MatOp *this, const cv::MatExpr *a2, cv::Mat *a3)
{
  v11 = &v10[1];
  v12 = v13;
  v13[0] = 0;
  v13[1] = 0;
  LODWORD(v10[0]) = 1124007936;
  memset(v10 + 4, 0, 32);
  memset(&v10[4] + 4, 0, 28);
  (*(**a2 + 24))(*a2, a2, v10, 0xFFFFFFFFLL);
  cv::_InputArray::_InputArray(v21, a3);
  cv::_InputArray::_InputArray(v20, v10);
  v16 = v15 + 8;
  v17 = v18;
  v18[0] = 0;
  v18[1] = 0;
  LODWORD(v15[0]) = 1124007936;
  memset(v15 + 4, 0, 48);
  v15[3] = 0u;
  cv::_InputArray::_InputArray(v19, v15);
  cv::_OutputArray::_OutputArray(v14, a3);
  cv::gemm(v21, v20, v19, 1.0, v14, 0.0, 0);
  if (*(&v15[1] + 1) && atomic_fetch_add(*(&v15[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v15);
  }

  *&v15[1] = 0;
  memset(&v15[2], 0, 24);
  if (SDWORD1(v15[0]) >= 1)
  {
    v4 = 0;
    v5 = v16;
    do
    {
      *&v5[4 * v4++] = 0;
    }

    while (v4 < SDWORD1(v15[0]));
  }

  *(&v15[1] + 1) = 0;
  if (v17)
  {
    v6 = v17 == v18;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v17);
  }

  if (v10[3] && atomic_fetch_add(v10[3], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v10);
  }

  v10[2] = 0;
  memset(&v10[4], 0, 24);
  if (SHIDWORD(v10[0]) >= 1)
  {
    v7 = 0;
    v8 = v11;
    do
    {
      *(v8 + v7++) = 0;
    }

    while (v7 < SHIDWORD(v10[0]));
  }

  v10[3] = 0;
  if (v12)
  {
    v9 = v12 == v13;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    free(v12);
  }
}

void sub_22D284C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  cv::Mat::~Mat(&a25);
  cv::Mat::~Mat(&a9);
  _Unwind_Resume(a1);
}

void cv::MatOp::augAssignDivide(cv::MatOp *this, const cv::MatExpr *a2, cv::Mat *a3)
{
  v8 = &v7[1];
  v9 = v10;
  v10[0] = 0;
  v10[1] = 0;
  LODWORD(v7[0]) = 1124007936;
  memset(v7 + 4, 0, 32);
  memset(&v7[4] + 4, 0, 28);
  (*(**a2 + 24))(*a2, a2, v7, 0xFFFFFFFFLL);
  cv::_InputArray::_InputArray(v13, a3);
  cv::_InputArray::_InputArray(v12, v7);
  cv::_OutputArray::_OutputArray(v11, a3);
  cv::divide(v13, v12, v11, 0xFFFFFFFFLL, 1.0);
  if (v7[3] && atomic_fetch_add(v7[3], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v7);
  }

  v7[2] = 0;
  memset(&v7[4], 0, 24);
  if (SHIDWORD(v7[0]) >= 1)
  {
    v4 = 0;
    v5 = v8;
    do
    {
      *(v5 + v4++) = 0;
    }

    while (v4 < SHIDWORD(v7[0]));
  }

  v7[3] = 0;
  if (v9)
  {
    v6 = v9 == v10;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v9);
  }
}

void cv::MatOp::augAssignAnd(cv::MatOp *this, const cv::MatExpr *a2, cv::Mat *a3)
{
  v11 = &v10[1];
  v12 = v13;
  v13[0] = 0;
  v13[1] = 0;
  LODWORD(v10[0]) = 1124007936;
  memset(v10 + 4, 0, 32);
  memset(&v10[4] + 4, 0, 28);
  (*(**a2 + 24))(*a2, a2, v10, 0xFFFFFFFFLL);
  cv::_InputArray::_InputArray(v16, a3);
  cv::_InputArray::_InputArray(v15, v10);
  v4 = cv::_OutputArray::_OutputArray(v14, a3);
  v5 = cv::noArray(v4);
  cv::bitwise_and(v16, v15, v14, v5, v6);
  if (v10[3] && atomic_fetch_add(v10[3], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v10);
  }

  v10[2] = 0;
  memset(&v10[4], 0, 24);
  if (SHIDWORD(v10[0]) >= 1)
  {
    v7 = 0;
    v8 = v11;
    do
    {
      *(v8 + v7++) = 0;
    }

    while (v7 < SHIDWORD(v10[0]));
  }

  v10[3] = 0;
  if (v12)
  {
    v9 = v12 == v13;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    free(v12);
  }
}

void cv::MatOp::augAssignOr(cv::MatOp *this, const cv::MatExpr *a2, cv::Mat *a3)
{
  v11 = &v10[1];
  v12 = v13;
  v13[0] = 0;
  v13[1] = 0;
  LODWORD(v10[0]) = 1124007936;
  memset(v10 + 4, 0, 32);
  memset(&v10[4] + 4, 0, 28);
  (*(**a2 + 24))(*a2, a2, v10, 0xFFFFFFFFLL);
  cv::_InputArray::_InputArray(v16, a3);
  cv::_InputArray::_InputArray(v15, v10);
  v4 = cv::_OutputArray::_OutputArray(v14, a3);
  v5 = cv::noArray(v4);
  cv::bitwise_or(v16, v15, v14, v5, v6);
  if (v10[3] && atomic_fetch_add(v10[3], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v10);
  }

  v10[2] = 0;
  memset(&v10[4], 0, 24);
  if (SHIDWORD(v10[0]) >= 1)
  {
    v7 = 0;
    v8 = v11;
    do
    {
      *(v8 + v7++) = 0;
    }

    while (v7 < SHIDWORD(v10[0]));
  }

  v10[3] = 0;
  if (v12)
  {
    v9 = v12 == v13;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    free(v12);
  }
}

void cv::MatOp::augAssignXor(cv::MatOp *this, const cv::MatExpr *a2, cv::Mat *a3)
{
  v11 = &v10[1];
  v12 = v13;
  v13[0] = 0;
  v13[1] = 0;
  LODWORD(v10[0]) = 1124007936;
  memset(v10 + 4, 0, 32);
  memset(&v10[4] + 4, 0, 28);
  (*(**a2 + 24))(*a2, a2, v10, 0xFFFFFFFFLL);
  cv::_InputArray::_InputArray(v16, a3);
  cv::_InputArray::_InputArray(v15, v10);
  v4 = cv::_OutputArray::_OutputArray(v14, a3);
  v5 = cv::noArray(v4);
  cv::bitwise_xor(v16, v15, v14, v5, v6);
  if (v10[3] && atomic_fetch_add(v10[3], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v10);
  }

  v10[2] = 0;
  memset(&v10[4], 0, 24);
  if (SHIDWORD(v10[0]) >= 1)
  {
    v7 = 0;
    v8 = v11;
    do
    {
      *(v8 + v7++) = 0;
    }

    while (v7 < SHIDWORD(v10[0]));
  }

  v10[3] = 0;
  if (v12)
  {
    v9 = v12 == v13;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    free(v12);
  }
}

void cv::MatOp::add(cv::MatOp *this, const cv::MatExpr *a2, const cv::MatExpr *a3, cv::MatExpr *a4)
{
  if (*a3 != this)
  {
    v7 = *(**a3 + 104);

    v7();
    return;
  }

  v41 = 0u;
  v42 = 0u;
  v38 = &v37[8];
  v39 = v40;
  v40[0] = 0;
  v40[1] = 0;
  *v37 = 1124007936;
  memset(&v37[4], 0, 60);
  v34 = &v33[8];
  v35 = v36;
  v36[0] = 0;
  v36[1] = 0;
  *v33 = 1124007936;
  memset(&v33[4], 0, 60);
  if (*a2 == &cv::g_MatOp_AddEx && (!*(a2 + 16) || *(a2 + 39) == 0.0))
  {
    v16 = (a2 + 16);
    if (v37 == a2 + 16)
    {
LABEL_62:
      v8 = *(a2 + 38);
      v28 = *(a2 + 21);
      v41 = *(a2 + 20);
      v42 = v28;
      goto LABEL_9;
    }

    v17 = *(a2 + 5);
    if (v17)
    {
      atomic_fetch_add(v17, 1u);
      if (*&v37[24])
      {
        if (atomic_fetch_add(*&v37[24], 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(v37);
        }
      }
    }

    *&v37[16] = 0;
    memset(&v37[32], 0, 24);
    if (*v37 <= 0)
    {
      *&v37[24] = 0;
      *v37 = *v16;
    }

    else
    {
      v18 = 0;
      v19 = v38;
      do
      {
        *&v19[4 * v18++] = 0;
      }

      while (v18 < *&v37[4]);
      *&v37[24] = 0;
      *v37 = *v16;
      if (*&v37[4] > 2)
      {
        goto LABEL_60;
      }
    }

    if (*(a2 + 5) <= 2)
    {
      *&v37[4] = *(a2 + 5);
      *&v37[8] = *(a2 + 3);
      v24 = *(a2 + 11);
      v25 = v39;
      *v39 = *v24;
      v25[1] = v24[1];
LABEL_61:
      v26 = *(a2 + 5);
      *&v37[16] = *(a2 + 4);
      *&v37[24] = v26;
      v27 = *(a2 + 4);
      *&v37[32] = *(a2 + 3);
      *&v37[48] = v27;
      goto LABEL_62;
    }

LABEL_60:
    cv::Mat::copySize(v37, (a2 + 16));
    goto LABEL_61;
  }

  v8 = 1.0;
  (*(**a2 + 24))(*a2, a2, v37, 0xFFFFFFFFLL);
LABEL_9:
  if (*a3 != &cv::g_MatOp_AddEx || *(a3 + 16) && *(a3 + 39) != 0.0)
  {
    v9 = 1.0;
    (*(**a3 + 24))(*a3, a3, v33, 0xFFFFFFFFLL);
    goto LABEL_13;
  }

  v20 = (a3 + 16);
  if (v33 != a3 + 16)
  {
    v21 = *(a3 + 5);
    if (v21)
    {
      atomic_fetch_add(v21, 1u);
    }

    if (*&v33[24] && atomic_fetch_add(*&v33[24], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v33);
    }

    *&v33[16] = 0;
    memset(&v33[32], 0, 24);
    if (*v33 <= 0)
    {
      *&v33[24] = 0;
      *v33 = *v20;
    }

    else
    {
      v22 = 0;
      v23 = v34;
      do
      {
        *&v23[4 * v22++] = 0;
      }

      while (v22 < *&v33[4]);
      *&v33[24] = 0;
      *v33 = *v20;
      if (*&v33[4] > 2)
      {
        goto LABEL_66;
      }
    }

    if (*(a3 + 5) <= 2)
    {
      *&v33[4] = *(a3 + 5);
      *&v33[8] = *(a3 + 3);
      v29 = *(a3 + 11);
      v30 = v35;
      *v35 = *v29;
      v30[1] = v29[1];
LABEL_67:
      v31 = *(a3 + 3);
      *&v33[16] = *(a3 + 2);
      *&v33[32] = v31;
      *&v33[48] = *(a3 + 4);
      goto LABEL_68;
    }

LABEL_66:
    cv::Mat::copySize(v33, (a3 + 16));
    goto LABEL_67;
  }

LABEL_68:
  v9 = *(a3 + 38);
  v32 = vaddq_f64(v42, *(a3 + 21));
  v41 = vaddq_f64(v41, *(a3 + 20));
  v42 = v32;
LABEL_13:
  cv::MatOp_AddEx::makeExpr(a4, v37, v33, &v41, v8, v9);
  if (*&v33[24] && atomic_fetch_add(*&v33[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v33);
  }

  *&v33[16] = 0;
  memset(&v33[32], 0, 24);
  if (*&v33[4] >= 1)
  {
    v10 = 0;
    v11 = v34;
    do
    {
      *&v11[4 * v10++] = 0;
    }

    while (v10 < *&v33[4]);
  }

  *&v33[24] = 0;
  if (v35)
  {
    v12 = v35 == v36;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    free(v35);
  }

  if (*&v37[24] && atomic_fetch_add(*&v37[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v37);
  }

  *&v37[16] = 0;
  memset(&v37[32], 0, 24);
  if (*&v37[4] >= 1)
  {
    v13 = 0;
    v14 = v38;
    do
    {
      *&v14[4 * v13++] = 0;
    }

    while (v13 < *&v37[4]);
  }

  *&v37[24] = 0;
  if (v39)
  {
    v15 = v39 == v40;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    free(v39);
  }
}

void sub_22D285634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  cv::Mat::~Mat(&a9);
  cv::Mat::~Mat(&a21);
  _Unwind_Resume(a1);
}

void cv::MatOp_AddEx::makeExpr(uint64_t a1, cv::Mat *a2, cv::Mat *a3, uint64_t *a4, double a5, double a6)
{
  v11 = v10 + 8;
  v12 = v13;
  v13[0] = 0;
  v13[1] = 0;
  LODWORD(v10[0]) = 1124007936;
  memset(v10 + 4, 0, 48);
  v10[3] = 0u;
  cv::MatExpr::MatExpr(v14, &cv::g_MatOp_AddEx, 0, a2, a3, v10, a4, a5, a6);
  cv::MatExpr::operator=(a1, v14);
  cv::MatExpr::~MatExpr(v14);
  if (*(&v10[1] + 1) && atomic_fetch_add(*(&v10[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v10);
  }

  *&v10[1] = 0;
  memset(&v10[2], 0, 24);
  if (SDWORD1(v10[0]) >= 1)
  {
    v7 = 0;
    v8 = v11;
    do
    {
      *&v8[4 * v7++] = 0;
    }

    while (v7 < SDWORD1(v10[0]));
  }

  *(&v10[1] + 1) = 0;
  if (v12)
  {
    v9 = v12 == v13;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    free(v12);
  }
}

void sub_22D285758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  cv::MatExpr::~MatExpr(&a21);
  cv::Mat::~Mat(&a9);
  _Unwind_Resume(a1);
}

void cv::MatOp::add(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v17 = &v16[1];
  v18 = v19;
  v19[0] = 0;
  v19[1] = 0;
  LODWORD(v16[0]) = 1124007936;
  memset(v16 + 4, 0, 32);
  memset(&v16[4] + 4, 0, 28);
  (*(**a2 + 24))(*a2, a2, v16, 0xFFFFFFFFLL);
  v13 = v12 + 8;
  v14 = v15;
  v15[0] = 0;
  v15[1] = 0;
  LODWORD(v12[0]) = 1124007936;
  memset(v12 + 4, 0, 48);
  v12[3] = 0u;
  cv::MatOp_AddEx::makeExpr(a4, v16, v12, a3, 1.0, 0.0);
  if (*(&v12[1] + 1) && atomic_fetch_add(*(&v12[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v12);
  }

  *&v12[1] = 0;
  memset(&v12[2], 0, 24);
  if (SDWORD1(v12[0]) >= 1)
  {
    v6 = 0;
    v7 = v13;
    do
    {
      *&v7[4 * v6++] = 0;
    }

    while (v6 < SDWORD1(v12[0]));
  }

  *(&v12[1] + 1) = 0;
  if (v14)
  {
    v8 = v14 == v15;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    free(v14);
  }

  if (v16[3] && atomic_fetch_add(v16[3], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v16);
  }

  v16[2] = 0;
  memset(&v16[4], 0, 24);
  if (SHIDWORD(v16[0]) >= 1)
  {
    v9 = 0;
    v10 = v17;
    do
    {
      *(v10 + v9++) = 0;
    }

    while (v9 < SHIDWORD(v16[0]));
  }

  v16[3] = 0;
  if (v18)
  {
    v11 = v18 == v19;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    free(v18);
  }
}

void sub_22D285940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  cv::Mat::~Mat(&a9);
  cv::Mat::~Mat(&a21);
  _Unwind_Resume(a1);
}

void cv::MatOp::subtract(cv::MatOp *this, const cv::MatExpr *a2, const cv::MatExpr *a3, cv::MatExpr *a4)
{
  if (*a3 != this)
  {
    v7 = *(**a3 + 120);

    v7();
    return;
  }

  v41 = 0u;
  v42 = 0u;
  v38 = &v37[8];
  v39 = v40;
  v40[0] = 0;
  v40[1] = 0;
  *v37 = 1124007936;
  memset(&v37[4], 0, 60);
  v34 = &v33[8];
  v35 = v36;
  v36[0] = 0;
  v36[1] = 0;
  *v33 = 1124007936;
  memset(&v33[4], 0, 60);
  if (*a2 == &cv::g_MatOp_AddEx && (!*(a2 + 16) || *(a2 + 39) == 0.0))
  {
    v16 = (a2 + 16);
    if (v37 == a2 + 16)
    {
LABEL_62:
      v8 = *(a2 + 38);
      v28 = *(a2 + 21);
      v41 = *(a2 + 20);
      v42 = v28;
      goto LABEL_9;
    }

    v17 = *(a2 + 5);
    if (v17)
    {
      atomic_fetch_add(v17, 1u);
      if (*&v37[24])
      {
        if (atomic_fetch_add(*&v37[24], 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(v37);
        }
      }
    }

    *&v37[16] = 0;
    memset(&v37[32], 0, 24);
    if (*v37 <= 0)
    {
      *&v37[24] = 0;
      *v37 = *v16;
    }

    else
    {
      v18 = 0;
      v19 = v38;
      do
      {
        *&v19[4 * v18++] = 0;
      }

      while (v18 < *&v37[4]);
      *&v37[24] = 0;
      *v37 = *v16;
      if (*&v37[4] > 2)
      {
        goto LABEL_60;
      }
    }

    if (*(a2 + 5) <= 2)
    {
      *&v37[4] = *(a2 + 5);
      *&v37[8] = *(a2 + 3);
      v24 = *(a2 + 11);
      v25 = v39;
      *v39 = *v24;
      v25[1] = v24[1];
LABEL_61:
      v26 = *(a2 + 5);
      *&v37[16] = *(a2 + 4);
      *&v37[24] = v26;
      v27 = *(a2 + 4);
      *&v37[32] = *(a2 + 3);
      *&v37[48] = v27;
      goto LABEL_62;
    }

LABEL_60:
    cv::Mat::copySize(v37, (a2 + 16));
    goto LABEL_61;
  }

  v8 = 1.0;
  (*(**a2 + 24))(*a2, a2, v37, 0xFFFFFFFFLL);
LABEL_9:
  if (*a3 != &cv::g_MatOp_AddEx || *(a3 + 16) && *(a3 + 39) != 0.0)
  {
    v9 = -1.0;
    (*(**a3 + 24))(*a3, a3, v33, 0xFFFFFFFFLL);
    goto LABEL_13;
  }

  v20 = (a3 + 16);
  if (v33 != a3 + 16)
  {
    v21 = *(a3 + 5);
    if (v21)
    {
      atomic_fetch_add(v21, 1u);
    }

    if (*&v33[24] && atomic_fetch_add(*&v33[24], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v33);
    }

    *&v33[16] = 0;
    memset(&v33[32], 0, 24);
    if (*v33 <= 0)
    {
      *&v33[24] = 0;
      *v33 = *v20;
    }

    else
    {
      v22 = 0;
      v23 = v34;
      do
      {
        *&v23[4 * v22++] = 0;
      }

      while (v22 < *&v33[4]);
      *&v33[24] = 0;
      *v33 = *v20;
      if (*&v33[4] > 2)
      {
        goto LABEL_66;
      }
    }

    if (*(a3 + 5) <= 2)
    {
      *&v33[4] = *(a3 + 5);
      *&v33[8] = *(a3 + 3);
      v29 = *(a3 + 11);
      v30 = v35;
      *v35 = *v29;
      v30[1] = v29[1];
LABEL_67:
      v31 = *(a3 + 3);
      *&v33[16] = *(a3 + 2);
      *&v33[32] = v31;
      *&v33[48] = *(a3 + 4);
      goto LABEL_68;
    }

LABEL_66:
    cv::Mat::copySize(v33, (a3 + 16));
    goto LABEL_67;
  }

LABEL_68:
  v9 = -*(a3 + 38);
  v32 = vsubq_f64(v42, *(a3 + 21));
  v41 = vsubq_f64(v41, *(a3 + 20));
  v42 = v32;
LABEL_13:
  cv::MatOp_AddEx::makeExpr(a4, v37, v33, &v41, v8, v9);
  if (*&v33[24] && atomic_fetch_add(*&v33[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v33);
  }

  *&v33[16] = 0;
  memset(&v33[32], 0, 24);
  if (*&v33[4] >= 1)
  {
    v10 = 0;
    v11 = v34;
    do
    {
      *&v11[4 * v10++] = 0;
    }

    while (v10 < *&v33[4]);
  }

  *&v33[24] = 0;
  if (v35)
  {
    v12 = v35 == v36;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    free(v35);
  }

  if (*&v37[24] && atomic_fetch_add(*&v37[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v37);
  }

  *&v37[16] = 0;
  memset(&v37[32], 0, 24);
  if (*&v37[4] >= 1)
  {
    v13 = 0;
    v14 = v38;
    do
    {
      *&v14[4 * v13++] = 0;
    }

    while (v13 < *&v37[4]);
  }

  *&v37[24] = 0;
  if (v39)
  {
    v15 = v39 == v40;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    free(v39);
  }
}

void sub_22D285E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  cv::Mat::~Mat(&a9);
  cv::Mat::~Mat(&a21);
  _Unwind_Resume(a1);
}

void cv::MatOp::subtract(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v17 = &v16[1];
  v18 = v19;
  v19[0] = 0;
  v19[1] = 0;
  LODWORD(v16[0]) = 1124007936;
  memset(v16 + 4, 0, 32);
  memset(&v16[4] + 4, 0, 28);
  (*(**a3 + 24))(*a3, a3, v16, 0xFFFFFFFFLL);
  v13 = v12 + 8;
  v14 = v15;
  v15[0] = 0;
  v15[1] = 0;
  LODWORD(v12[0]) = 1124007936;
  memset(v12 + 4, 0, 48);
  v12[3] = 0u;
  cv::MatOp_AddEx::makeExpr(a4, v16, v12, a2, -1.0, 0.0);
  if (*(&v12[1] + 1) && atomic_fetch_add(*(&v12[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v12);
  }

  *&v12[1] = 0;
  memset(&v12[2], 0, 24);
  if (SDWORD1(v12[0]) >= 1)
  {
    v6 = 0;
    v7 = v13;
    do
    {
      *&v7[4 * v6++] = 0;
    }

    while (v6 < SDWORD1(v12[0]));
  }

  *(&v12[1] + 1) = 0;
  if (v14)
  {
    v8 = v14 == v15;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    free(v14);
  }

  if (v16[3] && atomic_fetch_add(v16[3], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v16);
  }

  v16[2] = 0;
  memset(&v16[4], 0, 24);
  if (SHIDWORD(v16[0]) >= 1)
  {
    v9 = 0;
    v10 = v17;
    do
    {
      *(v10 + v9++) = 0;
    }

    while (v9 < SHIDWORD(v16[0]));
  }

  v16[3] = 0;
  if (v18)
  {
    v11 = v18 == v19;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    free(v18);
  }
}

void sub_22D286010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  cv::Mat::~Mat(&a9);
  cv::Mat::~Mat(&a21);
  _Unwind_Resume(a1);
}

void cv::MatOp::multiply(cv::MatOp *this, float64x2_t *a2, const cv::MatExpr *a3, cv::MatExpr *a4, double a5, const cv::Mat *a6)
{
  v6 = a5;
  v11 = *a3;
  if (*a3 != this)
  {
    v12 = *(*v11 + 136);

    v12();
    return;
  }

  v57 = &v56[8];
  v58 = v59;
  v59[0] = 0;
  v59[1] = 0;
  *v56 = 1124007936;
  memset(&v56[4], 0, 60);
  v53 = &v52[8];
  v54 = v55;
  v55[0] = 0;
  v55[1] = 0;
  *v52 = 1124007936;
  memset(&v52[4], 0, 60);
  v13 = *&a2->f64[0];
  if (*&a2->f64[0] == &cv::g_MatOp_Bin && LODWORD(a2->f64[1]) == 47)
  {
    if (!*&a2[8].f64[0] || a2[19].f64[1] == 0.0)
    {
      if (this != &cv::g_MatOp_AddEx || *(a3 + 16) && *(a3 + 39) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a3 + 20)), vceqzq_f64(*(a3 + 21)))))) & 1) != 0)
      {
        (*(*v11 + 24))(v11, a3, v52, 0xFFFFFFFFLL);
LABEL_14:
        cv::MatOp_Bin::makeExpr(a4, 0x2F, v52, &a2[1], a6, v6 / a2[19].f64[0]);
        goto LABEL_42;
      }

      v6 = *(a3 + 38) * a5;
      v37 = (a3 + 16);
      if (v52 == a3 + 16)
      {
        goto LABEL_14;
      }

      v38 = *(a3 + 5);
      if (v38)
      {
        atomic_fetch_add(v38, 1u);
        if (*&v52[24])
        {
          if (atomic_fetch_add(*&v52[24], 0xFFFFFFFF) == 1)
          {
            cv::Mat::deallocate(v52);
          }
        }
      }

      *&v52[16] = 0;
      memset(&v52[32], 0, 24);
      if (*v52 <= 0)
      {
        *&v52[24] = 0;
        *v52 = *v37;
      }

      else
      {
        v39 = 0;
        v40 = v53;
        do
        {
          *&v40[4 * v39++] = 0;
        }

        while (v39 < *&v52[4]);
        *&v52[24] = 0;
        *v52 = *v37;
        if (*&v52[4] > 2)
        {
          goto LABEL_117;
        }
      }

      if (*(a3 + 5) <= 2)
      {
        *&v52[4] = *(a3 + 5);
        *&v52[8] = *(a3 + 3);
        v48 = *(a3 + 11);
        v49 = v54;
        *v54 = *v48;
        v49[1] = v48[1];
LABEL_118:
        v50 = *(a3 + 5);
        *&v52[16] = *(a3 + 4);
        *&v52[24] = v50;
        v51 = *(a3 + 4);
        *&v52[32] = *(a3 + 3);
        *&v52[48] = v51;
        goto LABEL_14;
      }

LABEL_117:
      cv::Mat::copySize(v52, (a3 + 16));
      goto LABEL_118;
    }

    goto LABEL_19;
  }

  if (v13 != &cv::g_MatOp_AddEx || *&a2[8].f64[0] && a2[19].f64[1] != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(a2[20]), vceqzq_f64(a2[21]))))) & 1) != 0)
  {
LABEL_19:
    (*(*v13 + 24))(*&a2->f64[0], a2, v56, 0xFFFFFFFFLL);
    goto LABEL_20;
  }

  v30 = a2 + 1;
  if (v56 != &a2[1])
  {
    v31 = *&a2[2].f64[1];
    if (v31)
    {
      atomic_fetch_add(v31, 1u);
      if (*&v56[24])
      {
        if (atomic_fetch_add(*&v56[24], 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(v56);
        }
      }
    }

    *&v56[16] = 0;
    memset(&v56[32], 0, 24);
    if (*v56 <= 0)
    {
      *&v56[24] = 0;
      *v56 = LODWORD(v30->f64[0]);
    }

    else
    {
      v32 = 0;
      v33 = v57;
      do
      {
        *&v33[4 * v32++] = 0;
      }

      while (v32 < *&v56[4]);
      *&v56[24] = 0;
      *v56 = LODWORD(v30->f64[0]);
      if (*&v56[4] > 2)
      {
        goto LABEL_111;
      }
    }

    if (SHIDWORD(a2[1].f64[0]) <= 2)
    {
      *&v56[4] = HIDWORD(a2[1].f64[0]);
      *&v56[8] = a2[1].f64[1];
      v44 = a2[5].f64[1];
      v45 = v58;
      *v58 = **&v44;
      v45[1] = *(*&v44 + 8);
LABEL_112:
      v46 = a2[2].f64[1];
      *&v56[16] = a2[2].f64[0];
      *&v56[24] = v46;
      v47 = a2[4];
      *&v56[32] = a2[3];
      *&v56[48] = v47;
      goto LABEL_113;
    }

LABEL_111:
    cv::Mat::copySize(v56, &a2[1]);
    goto LABEL_112;
  }

LABEL_113:
  v6 = a2[19].f64[0] * v6;
LABEL_20:
  v14 = *a3;
  if (*a3 != &cv::g_MatOp_AddEx)
  {
    if (v14 == &cv::g_MatOp_Bin && *(a3 + 2) == 47 && (!*(a3 + 16) || *(a3 + 39) == 0.0))
    {
      v15 = (a3 + 16);
      if (v52 == a3 + 16)
      {
LABEL_91:
        v19 = 47;
        v6 = v6 / *(a3 + 38);
        goto LABEL_41;
      }

      v16 = *(a3 + 5);
      if (v16)
      {
        atomic_fetch_add(v16, 1u);
      }

      if (*&v52[24] && atomic_fetch_add(*&v52[24], 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v52);
      }

      *&v52[16] = 0;
      memset(&v52[32], 0, 24);
      if (*v52 <= 0)
      {
        *&v52[24] = 0;
        *v52 = *v15;
      }

      else
      {
        v17 = 0;
        v18 = v53;
        do
        {
          *&v18[4 * v17++] = 0;
        }

        while (v17 < *&v52[4]);
        *&v52[24] = 0;
        *v52 = *v15;
        if (*&v52[4] > 2)
        {
          goto LABEL_89;
        }
      }

      if (*(a3 + 5) <= 2)
      {
        *&v52[4] = *(a3 + 5);
        *&v52[8] = *(a3 + 3);
        v34 = *(a3 + 11);
        v35 = v54;
        *v54 = *v34;
        v35[1] = v34[1];
LABEL_90:
        v36 = *(a3 + 3);
        *&v52[16] = *(a3 + 2);
        *&v52[32] = v36;
        *&v52[48] = *(a3 + 4);
        goto LABEL_91;
      }

LABEL_89:
      cv::Mat::copySize(v52, (a3 + 16));
      goto LABEL_90;
    }

    goto LABEL_39;
  }

  if ((!*(a3 + 16) || *(a3 + 39) == 0.0) && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a3 + 20)), vceqzq_f64(*(a3 + 21)))))) & 1) == 0)
  {
    v26 = (a3 + 16);
    if (v52 == a3 + 16)
    {
LABEL_107:
      v6 = v6 * *(a3 + 38);
      goto LABEL_40;
    }

    v27 = *(a3 + 5);
    if (v27)
    {
      atomic_fetch_add(v27, 1u);
    }

    if (*&v52[24] && atomic_fetch_add(*&v52[24], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v52);
    }

    *&v52[16] = 0;
    memset(&v52[32], 0, 24);
    if (*v52 <= 0)
    {
      *&v52[24] = 0;
      *v52 = *v26;
    }

    else
    {
      v28 = 0;
      v29 = v53;
      do
      {
        *&v29[4 * v28++] = 0;
      }

      while (v28 < *&v52[4]);
      *&v52[24] = 0;
      *v52 = *v26;
      if (*&v52[4] > 2)
      {
        goto LABEL_105;
      }
    }

    if (*(a3 + 5) <= 2)
    {
      *&v52[4] = *(a3 + 5);
      *&v52[8] = *(a3 + 3);
      v41 = *(a3 + 11);
      v42 = v54;
      *v54 = *v41;
      v42[1] = v41[1];
LABEL_106:
      v43 = *(a3 + 3);
      *&v52[16] = *(a3 + 2);
      *&v52[32] = v43;
      *&v52[48] = *(a3 + 4);
      goto LABEL_107;
    }

LABEL_105:
    cv::Mat::copySize(v52, (a3 + 16));
    goto LABEL_106;
  }

LABEL_39:
  (*(*v14 + 24))(v14, a3, v52, 0xFFFFFFFFLL);
LABEL_40:
  v19 = 42;
LABEL_41:
  cv::MatOp_Bin::makeExpr(a4, v19, v56, v52, a6, v6);
LABEL_42:
  if (*&v52[24] && atomic_fetch_add(*&v52[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v52);
  }

  *&v52[16] = 0;
  memset(&v52[32], 0, 24);
  if (*&v52[4] >= 1)
  {
    v20 = 0;
    v21 = v53;
    do
    {
      *&v21[4 * v20++] = 0;
    }

    while (v20 < *&v52[4]);
  }

  *&v52[24] = 0;
  if (v54)
  {
    v22 = v54 == v55;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    free(v54);
  }

  if (*&v56[24] && atomic_fetch_add(*&v56[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v56);
  }

  *&v56[16] = 0;
  memset(&v56[32], 0, 24);
  if (*&v56[4] >= 1)
  {
    v23 = 0;
    v24 = v57;
    do
    {
      *&v24[4 * v23++] = 0;
    }

    while (v23 < *&v56[4]);
  }

  *&v56[24] = 0;
  if (v58)
  {
    v25 = v58 == v59;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    free(v58);
  }
}

void sub_22D286804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  cv::Mat::~Mat(&a9);
  cv::Mat::~Mat(&a21);
  _Unwind_Resume(a1);
}

void cv::MatOp_Bin::makeExpr(cv::MatOp_Bin *this, cv::MatExpr *a2, cv::Mat *a3, const cv::Mat *a4, const cv::Mat *a5, double a6)
{
  v14 = v13 + 8;
  v15 = v16;
  v16[0] = 0;
  v16[1] = 0;
  LODWORD(v13[0]) = 1124007936;
  memset(v13 + 4, 0, 48);
  v13[3] = 0u;
  v7 = *(a4 + 2);
  memset(v12, 0, sizeof(v12));
  v8 = 0.0;
  if (v7)
  {
    v8 = 1.0;
  }

  cv::MatExpr::MatExpr(v17, &cv::g_MatOp_Bin, a2, a3, a4, v13, v12, a6, v8);
  cv::MatExpr::operator=(this, v17);
  cv::MatExpr::~MatExpr(v17);
  if (*(&v13[1] + 1) && atomic_fetch_add(*(&v13[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v13);
  }

  *&v13[1] = 0;
  memset(&v13[2], 0, 24);
  if (SDWORD1(v13[0]) >= 1)
  {
    v9 = 0;
    v10 = v14;
    do
    {
      *&v10[4 * v9++] = 0;
    }

    while (v9 < SDWORD1(v13[0]));
  }

  *(&v13[1] + 1) = 0;
  if (v15)
  {
    v11 = v15 == v16;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    free(v15);
  }
}

void sub_22D286944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  cv::MatExpr::~MatExpr(va1);
  cv::Mat::~Mat(va);
  _Unwind_Resume(a1);
}

void cv::MatOp::multiply(cv::MatOp *this, const cv::MatExpr *a2, double a3, cv::MatExpr *a4)
{
  v18 = &v17[1];
  v19 = v20;
  v20[0] = 0;
  v20[1] = 0;
  LODWORD(v17[0]) = 1124007936;
  memset(v17 + 4, 0, 32);
  memset(&v17[4] + 4, 0, 28);
  (*(**a2 + 24))(*a2, a2, v17, 0xFFFFFFFFLL);
  v14 = v13 + 8;
  v15 = v16;
  v16[0] = 0;
  v16[1] = 0;
  LODWORD(v13[0]) = 1124007936;
  memset(v13 + 4, 0, 48);
  v13[3] = 0u;
  memset(v12, 0, sizeof(v12));
  cv::MatOp_AddEx::makeExpr(a4, v17, v13, v12, a3, 0.0);
  if (*(&v13[1] + 1) && atomic_fetch_add(*(&v13[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v13);
  }

  *&v13[1] = 0;
  memset(&v13[2], 0, 24);
  if (SDWORD1(v13[0]) >= 1)
  {
    v6 = 0;
    v7 = v14;
    do
    {
      *&v7[4 * v6++] = 0;
    }

    while (v6 < SDWORD1(v13[0]));
  }

  *(&v13[1] + 1) = 0;
  if (v15)
  {
    v8 = v15 == v16;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    free(v15);
  }

  if (v17[3] && atomic_fetch_add(v17[3], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v17);
  }

  v17[2] = 0;
  memset(&v17[4], 0, 24);
  if (SHIDWORD(v17[0]) >= 1)
  {
    v9 = 0;
    v10 = v18;
    do
    {
      *(v10 + v9++) = 0;
    }

    while (v9 < SHIDWORD(v17[0]));
  }

  v17[3] = 0;
  if (v19)
  {
    v11 = v19 == v20;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    free(v19);
  }
}

void sub_22D286B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  cv::Mat::~Mat(va);
  cv::Mat::~Mat(va1);
  _Unwind_Resume(a1);
}

void cv::MatOp::divide(cv::MatOp *this, float64x2_t *a2, float64x2_t *a3, cv::MatExpr *a4, double a5, const cv::Mat *a6)
{
  if (*&a3->f64[0] != this)
  {
    v11 = *(**&a3->f64[0] + 152);

    v11();
    return;
  }

  v12 = *&a2->f64[0];
  if (*&a2->f64[0] == &cv::g_MatOp_Bin && LODWORD(a2->f64[1]) == 47 && (!*&a2[8].f64[0] || a2[19].f64[1] == 0.0) && this == &cv::g_MatOp_Bin && LODWORD(a3->f64[1]) == 47 && (!*&a3[8].f64[0] || a3[19].f64[1] == 0.0))
  {
    v19 = a2[19].f64[0] / a3[19].f64[0];
    v20 = &a3[1];

    cv::MatOp_Bin::makeExpr(a4, 0x2F, v20, &a2[1], a6, v19);
    return;
  }

  v51 = &v50[8];
  v52 = v53;
  v53[0] = 0;
  v53[1] = 0;
  *v50 = 1124007936;
  memset(&v50[4], 0, 60);
  v47 = &v46[8];
  v48 = v49;
  v49[0] = 0;
  v49[1] = 0;
  *v46 = 1124007936;
  memset(&v46[4], 0, 60);
  if (v12 != &cv::g_MatOp_AddEx || *&a2[8].f64[0] && a2[19].f64[1] != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(a2[20]), vceqzq_f64(a2[21]))))) & 1) != 0)
  {
    (*(*v12 + 24))(v12, a2, v50, 0xFFFFFFFFLL);
    goto LABEL_14;
  }

  v21 = a2 + 1;
  if (v50 != &a2[1])
  {
    v22 = *&a2[2].f64[1];
    if (v22)
    {
      atomic_fetch_add(v22, 1u);
      if (*&v50[24])
      {
        if (atomic_fetch_add(*&v50[24], 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(v50);
        }
      }
    }

    *&v50[16] = 0;
    memset(&v50[32], 0, 24);
    if (*v50 <= 0)
    {
      *&v50[24] = 0;
      *v50 = LODWORD(v21->f64[0]);
    }

    else
    {
      v23 = 0;
      v24 = v51;
      do
      {
        *&v24[4 * v23++] = 0;
      }

      while (v23 < *&v50[4]);
      *&v50[24] = 0;
      *v50 = LODWORD(v21->f64[0]);
      if (*&v50[4] > 2)
      {
        goto LABEL_71;
      }
    }

    if (SHIDWORD(a2[1].f64[0]) <= 2)
    {
      *&v50[4] = HIDWORD(a2[1].f64[0]);
      *&v50[8] = a2[1].f64[1];
      v33 = a2[5].f64[1];
      v34 = v52;
      *v52 = **&v33;
      v34[1] = *(*&v33 + 8);
LABEL_72:
      v35 = a2[2].f64[1];
      *&v50[16] = a2[2].f64[0];
      *&v50[24] = v35;
      v36 = a2[4];
      *&v50[32] = a2[3];
      *&v50[48] = v36;
      goto LABEL_73;
    }

LABEL_71:
    cv::Mat::copySize(v50, &a2[1]);
    goto LABEL_72;
  }

LABEL_73:
  a5 = a2[19].f64[0] * a5;
LABEL_14:
  v13 = *&a3->f64[0];
  if (*&a3->f64[0] == &cv::g_MatOp_AddEx)
  {
    if (*&a3[8].f64[0] && a3[19].f64[1] != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(a3[20]), vceqzq_f64(a3[21]))))) & 1) != 0)
    {
      goto LABEL_33;
    }

    v25 = a3 + 1;
    if (v46 == &a3[1])
    {
LABEL_79:
      v32 = a3[19].f64[0];
      v18 = 47;
      goto LABEL_80;
    }

    v26 = *&a3[2].f64[1];
    if (v26)
    {
      atomic_fetch_add(v26, 1u);
    }

    if (*&v46[24] && atomic_fetch_add(*&v46[24], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v46);
    }

    *&v46[16] = 0;
    memset(&v46[32], 0, 24);
    if (*v46 <= 0)
    {
      *&v46[24] = 0;
      *v46 = LODWORD(v25->f64[0]);
    }

    else
    {
      v27 = 0;
      v28 = v47;
      do
      {
        *&v28[4 * v27++] = 0;
      }

      while (v27 < *&v46[4]);
      *&v46[24] = 0;
      *v46 = LODWORD(v25->f64[0]);
      if (*&v46[4] > 2)
      {
        goto LABEL_77;
      }
    }

    if (SHIDWORD(a3[1].f64[0]) <= 2)
    {
      *&v46[4] = HIDWORD(a3[1].f64[0]);
      *&v46[8] = a3[1].f64[1];
      v37 = a3[5].f64[1];
      v38 = v48;
      *v48 = **&v37;
      v38[1] = *(*&v37 + 8);
LABEL_78:
      v39 = a3[3];
      *&v46[16] = a3[2];
      *&v46[32] = v39;
      *&v46[48] = a3[4];
      goto LABEL_79;
    }

LABEL_77:
    cv::Mat::copySize(v46, &a3[1]);
    goto LABEL_78;
  }

  if (v13 != &cv::g_MatOp_Bin || LODWORD(a3->f64[1]) != 47 || *&a3[8].f64[0] && a3[19].f64[1] != 0.0)
  {
LABEL_33:
    (*(*v13 + 24))(v13, a3, v46, 0xFFFFFFFFLL);
    v18 = 47;
    goto LABEL_81;
  }

  v14 = a3 + 1;
  if (v46 != &a3[1])
  {
    v15 = *&a3[2].f64[1];
    if (v15)
    {
      atomic_fetch_add(v15, 1u);
    }

    if (*&v46[24] && atomic_fetch_add(*&v46[24], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v46);
    }

    *&v46[16] = 0;
    memset(&v46[32], 0, 24);
    if (*v46 <= 0)
    {
      *&v46[24] = 0;
      *v46 = LODWORD(v14->f64[0]);
    }

    else
    {
      v16 = 0;
      v17 = v47;
      do
      {
        *&v17[4 * v16++] = 0;
      }

      while (v16 < *&v46[4]);
      *&v46[24] = 0;
      *v46 = LODWORD(v14->f64[0]);
      if (*&v46[4] > 2)
      {
        goto LABEL_65;
      }
    }

    if (SHIDWORD(a3[1].f64[0]) <= 2)
    {
      *&v46[4] = HIDWORD(a3[1].f64[0]);
      *&v46[8] = a3[1].f64[1];
      v29 = a3[5].f64[1];
      v30 = v48;
      *v48 = **&v29;
      v30[1] = *(*&v29 + 8);
LABEL_66:
      v31 = a3[3];
      *&v46[16] = a3[2];
      *&v46[32] = v31;
      *&v46[48] = a3[4];
      goto LABEL_67;
    }

LABEL_65:
    cv::Mat::copySize(v46, &a3[1]);
    goto LABEL_66;
  }

LABEL_67:
  v32 = a3[19].f64[0];
  v18 = 42;
LABEL_80:
  a5 = a5 / v32;
LABEL_81:
  cv::MatOp_Bin::makeExpr(a4, v18, v50, v46, a6, a5);
  if (*&v46[24] && atomic_fetch_add(*&v46[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v46);
  }

  *&v46[16] = 0;
  memset(&v46[32], 0, 24);
  if (*&v46[4] >= 1)
  {
    v40 = 0;
    v41 = v47;
    do
    {
      *&v41[4 * v40++] = 0;
    }

    while (v40 < *&v46[4]);
  }

  *&v46[24] = 0;
  if (v48)
  {
    v42 = v48 == v49;
  }

  else
  {
    v42 = 1;
  }

  if (!v42)
  {
    free(v48);
  }

  if (*&v50[24] && atomic_fetch_add(*&v50[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v50);
  }

  *&v50[16] = 0;
  memset(&v50[32], 0, 24);
  if (*&v50[4] >= 1)
  {
    v43 = 0;
    v44 = v51;
    do
    {
      *&v44[4 * v43++] = 0;
    }

    while (v43 < *&v50[4]);
  }

  *&v50[24] = 0;
  if (v52)
  {
    v45 = v52 == v53;
  }

  else
  {
    v45 = 1;
  }

  if (!v45)
  {
    free(v52);
  }
}

void sub_22D28721C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  cv::Mat::~Mat(&a9);
  cv::Mat::~Mat(&a21);
  _Unwind_Resume(a1);
}

void cv::MatOp::divide(cv::MatOp *this, double a2, const cv::MatExpr *a3, cv::MatExpr *a4)
{
  v18 = &v17[1];
  v19 = v20;
  v20[0] = 0;
  v20[1] = 0;
  LODWORD(v17[0]) = 1124007936;
  memset(v17 + 4, 0, 32);
  memset(&v17[4] + 4, 0, 28);
  (*(**a3 + 24))(*a3, a3, v17, 0xFFFFFFFFLL);
  v14 = v13 + 8;
  v15 = v16;
  v16[0] = 0;
  v16[1] = 0;
  LODWORD(v13[0]) = 1124007936;
  memset(v13 + 4, 0, 48);
  v13[3] = 0u;
  cv::MatOp_Bin::makeExpr(a4, 0x2F, v17, v13, v6, a2);
  if (*(&v13[1] + 1) && atomic_fetch_add(*(&v13[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v13);
  }

  *&v13[1] = 0;
  memset(&v13[2], 0, 24);
  if (SDWORD1(v13[0]) >= 1)
  {
    v7 = 0;
    v8 = v14;
    do
    {
      *&v8[4 * v7++] = 0;
    }

    while (v7 < SDWORD1(v13[0]));
  }

  *(&v13[1] + 1) = 0;
  if (v15)
  {
    v9 = v15 == v16;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    free(v15);
  }

  if (v17[3] && atomic_fetch_add(v17[3], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v17);
  }

  v17[2] = 0;
  memset(&v17[4], 0, 24);
  if (SHIDWORD(v17[0]) >= 1)
  {
    v10 = 0;
    v11 = v18;
    do
    {
      *(v11 + v10++) = 0;
    }

    while (v10 < SHIDWORD(v17[0]));
  }

  v17[3] = 0;
  if (v19)
  {
    v12 = v19 == v20;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    free(v19);
  }
}

void sub_22D287400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  cv::Mat::~Mat(&a9);
  cv::Mat::~Mat(&a21);
  _Unwind_Resume(a1);
}

void cv::MatOp::abs(cv::MatOp *this, const cv::MatExpr *a2, cv::MatExpr *a3)
{
  v16 = &v15[1];
  v17 = v18;
  v18[0] = 0;
  v18[1] = 0;
  LODWORD(v15[0]) = 1124007936;
  memset(v15 + 4, 0, 32);
  memset(&v15[4] + 4, 0, 28);
  (*(**a2 + 24))(*a2, a2, v15, 0xFFFFFFFFLL);
  v12 = v11 + 8;
  v13 = v14;
  v14[0] = 0;
  v14[1] = 0;
  LODWORD(v11[0]) = 1124007936;
  memset(v11 + 4, 0, 48);
  v11[3] = 0u;
  cv::MatOp_Bin::makeExpr(a3, 0x61, v15, v11, v4, 1.0);
  if (*(&v11[1] + 1) && atomic_fetch_add(*(&v11[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v11);
  }

  *&v11[1] = 0;
  memset(&v11[2], 0, 24);
  if (SDWORD1(v11[0]) >= 1)
  {
    v5 = 0;
    v6 = v12;
    do
    {
      *&v6[4 * v5++] = 0;
    }

    while (v5 < SDWORD1(v11[0]));
  }

  *(&v11[1] + 1) = 0;
  if (v13)
  {
    v7 = v13 == v14;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    free(v13);
  }

  if (v15[3] && atomic_fetch_add(v15[3], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v15);
  }

  v15[2] = 0;
  memset(&v15[4], 0, 24);
  if (SHIDWORD(v15[0]) >= 1)
  {
    v8 = 0;
    v9 = v16;
    do
    {
      *(v9 + v8++) = 0;
    }

    while (v8 < SHIDWORD(v15[0]));
  }

  v15[3] = 0;
  if (v17)
  {
    v10 = v17 == v18;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    free(v17);
  }
}

void sub_22D2875D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  cv::Mat::~Mat(&a9);
  cv::Mat::~Mat(&a21);
  _Unwind_Resume(a1);
}

void cv::MatOp::transpose(cv::MatOp *this, const cv::MatExpr *a2, cv::MatExpr *a3)
{
  v9 = &v8[1];
  v10 = v11;
  v11[0] = 0;
  v11[1] = 0;
  LODWORD(v8[0]) = 1124007936;
  memset(v8 + 4, 0, 32);
  memset(&v8[4] + 4, 0, 28);
  (*(**a2 + 24))(*a2, a2, v8, 0xFFFFFFFFLL);
  cv::MatOp_T::makeExpr(a3, v8, v4, 1.0);
  if (v8[3] && atomic_fetch_add(v8[3], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v8);
  }

  v8[2] = 0;
  memset(&v8[4], 0, 24);
  if (SHIDWORD(v8[0]) >= 1)
  {
    v5 = 0;
    v6 = v9;
    do
    {
      *(v6 + v5++) = 0;
    }

    while (v5 < SHIDWORD(v8[0]));
  }

  v8[3] = 0;
  if (v10)
  {
    v7 = v10 == v11;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    free(v10);
  }
}

void cv::MatOp_T::makeExpr(cv::MatOp_T *this, cv::MatExpr *a2, const cv::Mat *a3, double a4)
{
  v17 = v16 + 8;
  v18 = v19;
  v19[0] = 0;
  v19[1] = 0;
  LODWORD(v16[0]) = 1124007936;
  memset(v16 + 4, 0, 48);
  v16[3] = 0u;
  v13 = v12 + 8;
  v14 = v15;
  v15[0] = 0;
  v15[1] = 0;
  LODWORD(v12[0]) = 1124007936;
  memset(v12 + 4, 0, 48);
  v12[3] = 0u;
  memset(v11, 0, sizeof(v11));
  cv::MatExpr::MatExpr(v20, &cv::g_MatOp_T, 0, a2, v16, v12, v11, a4, 0.0);
  cv::MatExpr::operator=(this, v20);
  cv::MatExpr::~MatExpr(v20);
  if (*(&v12[1] + 1) && atomic_fetch_add(*(&v12[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v12);
  }

  *&v12[1] = 0;
  memset(&v12[2], 0, 24);
  if (SDWORD1(v12[0]) >= 1)
  {
    v5 = 0;
    v6 = v13;
    do
    {
      *&v6[4 * v5++] = 0;
    }

    while (v5 < SDWORD1(v12[0]));
  }

  *(&v12[1] + 1) = 0;
  if (v14)
  {
    v7 = v14 == v15;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    free(v14);
  }

  if (*(&v16[1] + 1) && atomic_fetch_add(*(&v16[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v16);
  }

  *&v16[1] = 0;
  memset(&v16[2], 0, 24);
  if (SDWORD1(v16[0]) >= 1)
  {
    v8 = 0;
    v9 = v17;
    do
    {
      *&v9[4 * v8++] = 0;
    }

    while (v8 < SDWORD1(v16[0]));
  }

  *(&v16[1] + 1) = 0;
  if (v18)
  {
    v10 = v18 == v19;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    free(v18);
  }
}

void sub_22D2878C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  cv::MatExpr::~MatExpr(&a37);
  cv::Mat::~Mat(&a13);
  cv::Mat::~Mat(&a25);
  _Unwind_Resume(a1);
}

void cv::MatOp::matmul(cv::MatOp *this, const cv::MatExpr *a2, const cv::MatExpr *a3, cv::MatExpr *a4)
{
  if (*a3 != this)
  {
    v7 = *(**a3 + 184);

    v7();
    return;
  }

  v56 = &v55[8];
  v57 = v58;
  v58[0] = 0;
  v58[1] = 0;
  *v55 = 1124007936;
  memset(&v55[4], 0, 60);
  v52 = &v51[8];
  v53 = v54;
  v54[0] = 0;
  v54[1] = 0;
  *v51 = 1124007936;
  memset(&v51[4], 0, 60);
  v8 = *a2;
  if (*a2 == &cv::g_MatOp_T)
  {
    v10 = *(a2 + 38);
    if (v55 == a2 + 16)
    {
      v9 = 1;
      goto LABEL_29;
    }

    v11 = *(a2 + 5);
    if (v11)
    {
      atomic_fetch_add(v11, 1u);
      if (*&v55[24])
      {
        if (atomic_fetch_add(*&v55[24], 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(v55);
        }
      }
    }

    *&v55[16] = 0;
    memset(&v55[32], 0, 24);
    if (*v55 <= 0)
    {
      *&v55[24] = 0;
      v14 = *(a2 + 5);
      *v55 = *(a2 + 4);
      if (v14 >= 3)
      {
LABEL_23:
        cv::Mat::copySize(v55, (a2 + 16));
        v9 = 1;
LABEL_28:
        *&v55[16] = *(a2 + 2);
        v18 = *(a2 + 6);
        *&v55[40] = *(a2 + 56);
        v19 = *(a2 + 9);
        *&v55[32] = v18;
        *&v55[56] = v19;
        goto LABEL_29;
      }
    }

    else
    {
      v12 = 0;
      v13 = v56;
      do
      {
        *&v13[4 * v12++] = 0;
      }

      while (v12 < *&v55[4]);
      *&v55[24] = 0;
      v14 = *(a2 + 5);
      *v55 = *(a2 + 4);
      if (*&v55[4] > 2 || v14 >= 3)
      {
        goto LABEL_23;
      }
    }

    v9 = 1;
LABEL_27:
    *&v55[4] = v14;
    *&v55[8] = *(a2 + 3);
    v16 = *(a2 + 11);
    v17 = v57;
    *v57 = *v16;
    v17[1] = v16[1];
    goto LABEL_28;
  }

  if (v8 != &cv::g_MatOp_AddEx || *(a2 + 16) && *(a2 + 39) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a2 + 20)), vceqzq_f64(*(a2 + 21)))))) & 1) != 0)
  {
    (*(*v8 + 24))(v8, a2, v55, 0xFFFFFFFFLL);
    v9 = 0;
    v10 = 1.0;
    goto LABEL_29;
  }

  v10 = *(a2 + 38);
  if (v55 != a2 + 16)
  {
    v39 = *(a2 + 5);
    if (v39)
    {
      atomic_fetch_add(v39, 1u);
      if (*&v55[24])
      {
        if (atomic_fetch_add(*&v55[24], 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(v55);
        }
      }
    }

    *&v55[16] = 0;
    memset(&v55[32], 0, 24);
    if (*v55 <= 0)
    {
      *&v55[24] = 0;
      v14 = *(a2 + 5);
      *v55 = *(a2 + 4);
      if (v14 >= 3)
      {
LABEL_99:
        cv::Mat::copySize(v55, (a2 + 16));
        v9 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v40 = 0;
      v41 = v56;
      do
      {
        *&v41[4 * v40++] = 0;
      }

      while (v40 < *&v55[4]);
      *&v55[24] = 0;
      v14 = *(a2 + 5);
      *v55 = *(a2 + 4);
      if (*&v55[4] > 2 || v14 >= 3)
      {
        goto LABEL_99;
      }
    }

    v9 = 0;
    goto LABEL_27;
  }

  v9 = 0;
LABEL_29:
  v20 = *a3;
  if (*a3 == &cv::g_MatOp_T)
  {
    v9 |= 2u;
    v10 = v10 * *(a3 + 38);
    if (v51 == a3 + 16)
    {
      goto LABEL_53;
    }

    v21 = *(a3 + 5);
    if (v21)
    {
      atomic_fetch_add(v21, 1u);
    }

    if (*&v51[24] && atomic_fetch_add(*&v51[24], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v51);
    }

    *&v51[16] = 0;
    memset(&v51[32], 0, 24);
    if (*v51 > 0)
    {
      v22 = 0;
      v23 = v52;
      do
      {
        *&v23[4 * v22++] = 0;
      }

      while (v22 < *&v51[4]);
      *&v51[24] = 0;
      v24 = *(a3 + 5);
      *v51 = *(a3 + 4);
      if (*&v51[4] > 2 || v24 >= 3)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    *&v51[24] = 0;
    v24 = *(a3 + 5);
    *v51 = *(a3 + 4);
    if (v24 < 3)
    {
      goto LABEL_50;
    }

LABEL_51:
    cv::Mat::copySize(v51, (a3 + 16));
    goto LABEL_52;
  }

  if (v20 != &cv::g_MatOp_AddEx || *(a3 + 16) && *(a3 + 39) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a3 + 20)), vceqzq_f64(*(a3 + 21)))))) & 1) != 0)
  {
    (*(*v20 + 24))(v20, a3, v51, 0xFFFFFFFFLL);
    goto LABEL_53;
  }

  v10 = v10 * *(a3 + 38);
  if (v51 != a3 + 16)
  {
    v43 = *(a3 + 5);
    if (v43)
    {
      atomic_fetch_add(v43, 1u);
    }

    if (*&v51[24] && atomic_fetch_add(*&v51[24], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v51);
    }

    *&v51[16] = 0;
    memset(&v51[32], 0, 24);
    if (*v51 > 0)
    {
      v44 = 0;
      v45 = v52;
      do
      {
        *&v45[4 * v44++] = 0;
      }

      while (v44 < *&v51[4]);
      *&v51[24] = 0;
      v24 = *(a3 + 5);
      *v51 = *(a3 + 4);
      if (*&v51[4] > 2 || v24 >= 3)
      {
        goto LABEL_51;
      }

LABEL_50:
      *&v51[4] = v24;
      *&v51[8] = *(a3 + 3);
      v26 = *(a3 + 11);
      v27 = v53;
      *v53 = *v26;
      v27[1] = v26[1];
LABEL_52:
      *&v51[16] = *(a3 + 2);
      v28 = *(a3 + 6);
      *&v51[40] = *(a3 + 56);
      v29 = *(a3 + 9);
      *&v51[32] = v28;
      *&v51[56] = v29;
      goto LABEL_53;
    }

    *&v51[24] = 0;
    v24 = *(a3 + 5);
    *v51 = *(a3 + 4);
    if (v24 < 3)
    {
      goto LABEL_50;
    }

    goto LABEL_51;
  }

LABEL_53:
  v48 = v47 + 8;
  v49 = v50;
  v50[0] = 0;
  v50[1] = 0;
  LODWORD(v47[0]) = 1124007936;
  memset(v47 + 4, 0, 48);
  v47[3] = 0u;
  memset(v59, 0, sizeof(v59));
  cv::MatExpr::MatExpr(v60, &cv::g_MatOp_GEMM, v9, v55, v51, v47, v59, v10, 1.0);
  cv::MatExpr::operator=(a4, v60);
  cv::MatExpr::~MatExpr(v60);
  if (*(&v47[1] + 1) && atomic_fetch_add(*(&v47[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v47);
  }

  *&v47[1] = 0;
  memset(&v47[2], 0, 24);
  if (SDWORD1(v47[0]) >= 1)
  {
    v30 = 0;
    v31 = v48;
    do
    {
      *&v31[4 * v30++] = 0;
    }

    while (v30 < SDWORD1(v47[0]));
  }

  *(&v47[1] + 1) = 0;
  if (v49)
  {
    v32 = v49 == v50;
  }

  else
  {
    v32 = 1;
  }

  if (!v32)
  {
    free(v49);
  }

  if (*&v51[24] && atomic_fetch_add(*&v51[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v51);
  }

  *&v51[16] = 0;
  memset(&v51[32], 0, 24);
  if (*&v51[4] >= 1)
  {
    v33 = 0;
    v34 = v52;
    do
    {
      *&v34[4 * v33++] = 0;
    }

    while (v33 < *&v51[4]);
  }

  *&v51[24] = 0;
  if (v53)
  {
    v35 = v53 == v54;
  }

  else
  {
    v35 = 1;
  }

  if (!v35)
  {
    free(v53);
  }

  if (*&v55[24] && atomic_fetch_add(*&v55[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v55);
  }

  *&v55[16] = 0;
  memset(&v55[32], 0, 24);
  if (*&v55[4] >= 1)
  {
    v36 = 0;
    v37 = v56;
    do
    {
      *&v37[4 * v36++] = 0;
    }

    while (v36 < *&v55[4]);
  }

  *&v55[24] = 0;
  if (v57)
  {
    v38 = v57 == v58;
  }

  else
  {
    v38 = 1;
  }

  if (!v38)
  {
    free(v57);
  }
}

void sub_22D288074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  cv::MatExpr::~MatExpr(&a49);
  cv::Mat::~Mat(&a9);
  cv::Mat::~Mat(&a21);
  cv::Mat::~Mat(&a33);
  _Unwind_Resume(a1);
}

void cv::MatOp::invert(cv::MatOp *this, const cv::MatExpr *a2, cv::MatExpr *a3, cv::MatExpr *a4)
{
  v11 = &v10[1];
  v12 = v13;
  v13[0] = 0;
  v13[1] = 0;
  LODWORD(v10[0]) = 1124007936;
  memset(v10 + 4, 0, 32);
  memset(&v10[4] + 4, 0, 28);
  (*(**a2 + 24))(*a2, a2, v10, 0xFFFFFFFFLL);
  cv::MatOp_Invert::makeExpr(a4, a3, v10, v6);
  if (v10[3] && atomic_fetch_add(v10[3], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v10);
  }

  v10[2] = 0;
  memset(&v10[4], 0, 24);
  if (SHIDWORD(v10[0]) >= 1)
  {
    v7 = 0;
    v8 = v11;
    do
    {
      *(v8 + v7++) = 0;
    }

    while (v7 < SHIDWORD(v10[0]));
  }

  v10[3] = 0;
  if (v12)
  {
    v9 = v12 == v13;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    free(v12);
  }
}

void cv::MatOp_Invert::makeExpr(cv::MatOp_Invert *this, cv::MatExpr *a2, cv::Mat *a3, const cv::Mat *a4)
{
  v17 = v16 + 8;
  v18 = v19;
  v19[0] = 0;
  v19[1] = 0;
  LODWORD(v16[0]) = 1124007936;
  memset(v16 + 4, 0, 48);
  v16[3] = 0u;
  v13 = v12 + 8;
  v14 = v15;
  v15[0] = 0;
  v15[1] = 0;
  LODWORD(v12[0]) = 1124007936;
  memset(v12 + 4, 0, 48);
  v12[3] = 0u;
  memset(v11, 0, sizeof(v11));
  cv::MatExpr::MatExpr(v20, &cv::g_MatOp_Invert, a2, a3, v16, v12, v11, 1.0, 0.0);
  cv::MatExpr::operator=(this, v20);
  cv::MatExpr::~MatExpr(v20);
  if (*(&v12[1] + 1) && atomic_fetch_add(*(&v12[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v12);
  }

  *&v12[1] = 0;
  memset(&v12[2], 0, 24);
  if (SDWORD1(v12[0]) >= 1)
  {
    v5 = 0;
    v6 = v13;
    do
    {
      *&v6[4 * v5++] = 0;
    }

    while (v5 < SDWORD1(v12[0]));
  }

  *(&v12[1] + 1) = 0;
  if (v14)
  {
    v7 = v14 == v15;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    free(v14);
  }

  if (*(&v16[1] + 1) && atomic_fetch_add(*(&v16[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v16);
  }

  *&v16[1] = 0;
  memset(&v16[2], 0, 24);
  if (SDWORD1(v16[0]) >= 1)
  {
    v8 = 0;
    v9 = v17;
    do
    {
      *&v9[4 * v8++] = 0;
    }

    while (v8 < SDWORD1(v16[0]));
  }

  *(&v16[1] + 1) = 0;
  if (v18)
  {
    v10 = v18 == v19;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    free(v18);
  }
}

void sub_22D288384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  cv::MatExpr::~MatExpr(&a37);
  cv::Mat::~Mat(&a13);
  cv::Mat::~Mat(&a25);
  _Unwind_Resume(a1);
}

int32x2_t cv::MatOp::size@<D0>(uint64_t a1@<X1>, int32x2_t *a2@<X8>)
{
  if (!*(a1 + 32))
  {
    goto LABEL_19;
  }

  v2 = *(a1 + 20);
  if (v2 >= 3)
  {
    v4 = *(a1 + 80);
    v3 = 1;
    do
    {
      v5 = *v4++;
      v3 *= v5;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = *(a1 + 28) * *(a1 + 24);
  }

  if (v3)
  {
    v6 = 80;
  }

  else
  {
LABEL_19:
    if (*(a1 + 128))
    {
      v7 = *(a1 + 116);
      if (v7 >= 3)
      {
        v9 = *(a1 + 176);
        v8 = 1;
        do
        {
          v10 = *v9++;
          v8 *= v10;
          --v7;
        }

        while (v7);
      }

      else
      {
        v8 = *(a1 + 124) * *(a1 + 120);
      }

      v6 = 272;
      if (!v8)
      {
        v6 = 176;
      }
    }

    else
    {
      v6 = 176;
    }
  }

  result = vrev64_s32(**(a1 + v6));
  *a2 = result;
  return result;
}

uint64_t cv::MatOp::type(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_7;
  }

  v2 = (a2 + 16);
  v3 = *(a2 + 20);
  if (v3 >= 3)
  {
    v5 = *(a2 + 80);
    v4 = 1;
    do
    {
      v6 = *v5++;
      v4 *= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = *(a2 + 28) * *(a2 + 24);
  }

  if (!v4)
  {
LABEL_7:
    v2 = (a2 + 112);
    if (*(a2 + 128))
    {
      v7 = *(a2 + 116);
      if (v7 >= 3)
      {
        v9 = *(a2 + 176);
        v8 = 1;
        do
        {
          v10 = *v9++;
          v8 *= v10;
          --v7;
        }

        while (v7);
      }

      else
      {
        v8 = *(a2 + 124) * *(a2 + 120);
      }

      if (v8)
      {
        v2 = (a2 + 208);
      }
    }
  }

  return *v2 & 0xFFF;
}

void cv::MatOp_Bin::makeExpr(uint64_t a1, int a2, cv::Mat *a3, uint64_t *a4)
{
  v16 = v15 + 8;
  v17 = v18;
  v18[0] = 0;
  v18[1] = 0;
  LODWORD(v15[0]) = 1124007936;
  memset(v15 + 4, 0, 48);
  v15[3] = 0u;
  v12 = v11 + 8;
  v13 = v14;
  v14[0] = 0;
  v14[1] = 0;
  LODWORD(v11[0]) = 1124007936;
  memset(v11 + 4, 0, 48);
  v11[3] = 0u;
  cv::MatExpr::MatExpr(v19, &cv::g_MatOp_Bin, a2, a3, v15, v11, a4, 1.0, 0.0);
  cv::MatExpr::operator=(a1, v19);
  cv::MatExpr::~MatExpr(v19);
  if (*(&v11[1] + 1) && atomic_fetch_add(*(&v11[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v11);
  }

  *&v11[1] = 0;
  memset(&v11[2], 0, 24);
  if (SDWORD1(v11[0]) >= 1)
  {
    v5 = 0;
    v6 = v12;
    do
    {
      *&v6[4 * v5++] = 0;
    }

    while (v5 < SDWORD1(v11[0]));
  }

  *(&v11[1] + 1) = 0;
  if (v13)
  {
    v7 = v13 == v14;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    free(v13);
  }

  if (*(&v15[1] + 1) && atomic_fetch_add(*(&v15[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v15);
  }

  *&v15[1] = 0;
  memset(&v15[2], 0, 24);
  if (SDWORD1(v15[0]) >= 1)
  {
    v8 = 0;
    v9 = v16;
    do
    {
      *&v9[4 * v8++] = 0;
    }

    while (v8 < SDWORD1(v15[0]));
  }

  *(&v15[1] + 1) = 0;
  if (v17)
  {
    v10 = v17 == v18;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    free(v17);
  }
}

void sub_22D288694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  cv::MatExpr::~MatExpr(&a33);
  cv::Mat::~Mat(&a9);
  cv::Mat::~Mat(&a21);
  _Unwind_Resume(a1);
}

void cv::MatExpr::size(cv::MatExpr *this@<X0>, int32x2_t *a2@<X8>)
{
  v4 = *this;
  if (*this == &cv::g_MatOp_T || v4 == &cv::g_MatOp_Invert)
  {
    v6 = *(this + 24);
LABEL_7:
    *a2 = v6;
    return;
  }

  if (v4 == &cv::g_MatOp_GEMM)
  {
    v8 = *(this + 31);
    v9 = *(this + 6);
LABEL_17:
    a2->i32[0] = v8;
    a2->i32[1] = v9;
    return;
  }

  if (v4 == &cv::g_MatOp_Solve)
  {
    v8 = *(this + 31);
    v9 = *(this + 7);
    goto LABEL_17;
  }

  cv::getGlobalMatOpInitializer(this);
  if (v4 == &_MergedGlobals_0)
  {
    v6 = vrev64_s32(**(this + 10));
    goto LABEL_7;
  }

  if (*this)
  {
    v7 = *(**this + 200);

    v7();
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t cv::MatExpr::type(uint64_t **this)
{
  v2 = *this;
  cv::getGlobalMatOpInitializer(this);
  if (v2 == &_MergedGlobals_0)
  {
    return this[2] & 0xFFF;
  }

  v3 = *this;
  if (*this == &cv::g_MatOp_Cmp)
  {
    return 0;
  }

  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(*v3 + 208);

  return v4();
}

__n128 cv::MatOp_Identity::assign(cv::MatOp_Identity *this, __n128 *a2, __n128 *a3, int a4)
{
  if (a4 == -1 || (v7 = a2[1].n128_u32[0], (v7 & 0xFFF) == a4))
  {
    v8 = a2 + 1;
    if (&a2[1] == a3)
    {
      return result;
    }

    v9 = a2[2].n128_u64[1];
    if (v9)
    {
      atomic_fetch_add(v9, 1u);
    }

    v10 = a3[1].n128_u64[1];
    if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(a3);
    }

    a3[1].n128_u64[0] = 0;
    a3[2].n128_u64[1] = 0;
    a3[3].n128_u64[0] = 0;
    a3[2].n128_u64[0] = 0;
    if (a3->n128_i32[1] <= 0)
    {
      a3[1].n128_u64[1] = 0;
      a3->n128_u32[0] = v8->n128_u32[0];
    }

    else
    {
      v11 = 0;
      v12 = a3[4].n128_u64[0];
      do
      {
        *(v12 + 4 * v11++) = 0;
        v13 = a3->n128_i32[1];
      }

      while (v11 < v13);
      a3[1].n128_u64[1] = 0;
      a3->n128_u32[0] = v8->n128_u32[0];
      if (v13 > 2)
      {
        goto LABEL_20;
      }
    }

    v16 = a2[1].n128_i32[1];
    if (v16 <= 2)
    {
      a3->n128_u32[1] = v16;
      a3->n128_u64[1] = a2[1].n128_u64[1];
      v17 = a2[5].n128_u64[1];
      v18 = a3[4].n128_u64[1];
      *v18 = *v17;
      v18[1] = v17[1];
LABEL_21:
      a3[2] = a2[3];
      a3[3].n128_u64[0] = a2[4].n128_u64[0];
      result = a2[2];
      a3[1] = result;
      a3[3].n128_u64[1] = a2[4].n128_u64[1];
      return result;
    }

LABEL_20:
    cv::Mat::copySize(a3, &a2[1]);
    goto LABEL_21;
  }

  if (((v7 ^ a4) & 0xFF8) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v21, "CV_MAT_CN(_type) == e.a.channels()");
    std::string::basic_string[abi:ne200100]<0>(v20, "assign");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matop.cpp");
    cv::Exception::Exception(v22, 4294967081, v21, v20, __p, 1195);
    cv::error(v22, v14);
  }

  cv::_OutputArray::_OutputArray(v22, a3);
  cv::Mat::convertTo(&a2[1], v22, a4, 1.0, 0.0);
  return result;
}

void sub_22D288A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

void cv::MatOp_AddEx::assign(cv::MatOp_AddEx *this, const cv::MatExpr *a2, cv::Mat *a3, int a4)
{
  v52 = v51 + 8;
  v53 = v54;
  v54[0] = 0;
  v54[1] = 0;
  LODWORD(v51[0]) = 1124007936;
  memset(v51 + 4, 0, 48);
  v7 = (a3 + 16);
  v51[3] = 0u;
  if (a4 == -1 || (*(a2 + 4) & 0xFFF) == a4)
  {
    v8 = (a3 + 16);
    v9 = a3;
  }

  else
  {
    v8 = &v51[1];
    v9 = v51;
  }

  v10 = a2 + 320;
  if (*(a2 + 16))
  {
    v12 = *(a2 + 20);
    v11 = *(a2 + 21);
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v12), vceqzq_f64(v11))))) & 1) != 0 && v12.f64[1] == 0.0 && v11.f64[0] == 0.0 && v11.f64[1] == 0.0)
    {
      cv::_InputArray::_InputArray(&v47, (a2 + 16));
      v13 = *(a2 + 38);
      cv::_InputArray::_InputArray(&v43, (a2 + 112));
      v14 = *(a2 + 39);
      v15 = *(a2 + 40);
      cv::_OutputArray::_OutputArray(v42, v9);
      cv::addWeighted(&v47, &v43, v13, v42, v14, v15, 0xFFFFFFFFLL);
    }

    else
    {
      v18 = *(a2 + 38);
      v17 = *(a2 + 39);
      if (v18 == 1.0)
      {
        if (v17 == 1.0)
        {
          cv::_InputArray::_InputArray(&v47, (a2 + 16));
          cv::_InputArray::_InputArray(&v43, (a2 + 112));
          v19 = cv::_OutputArray::_OutputArray(v42, v9);
          v20 = cv::noArray(v19);
          cv::add(&v47, &v43, v42, v20, 0xFFFFFFFFLL);
        }

        else if (v17 == -1.0)
        {
          cv::_InputArray::_InputArray(&v47, (a2 + 16));
          cv::_InputArray::_InputArray(&v43, (a2 + 112));
          v27 = cv::_OutputArray::_OutputArray(v42, v9);
          v28 = cv::noArray(v27);
          cv::subtract(&v47, &v43, v42, v28, 0xFFFFFFFFLL);
        }

        else
        {
          cv::_InputArray::_InputArray(&v47, (a2 + 112));
          v35 = *(a2 + 39);
          cv::_InputArray::_InputArray(&v43, (a2 + 16));
          cv::_OutputArray::_OutputArray(v42, v9);
          cv::scaleAdd(&v47, &v43, v35, v42, v36);
        }
      }

      else if (v17 == 1.0)
      {
        if (v18 == -1.0)
        {
          cv::_InputArray::_InputArray(&v47, (a2 + 112));
          cv::_InputArray::_InputArray(&v43, (a2 + 16));
          v23 = cv::_OutputArray::_OutputArray(v42, v9);
          v24 = cv::noArray(v23);
          cv::subtract(&v47, &v43, v42, v24, 0xFFFFFFFFLL);
        }

        else
        {
          cv::_InputArray::_InputArray(&v47, (a2 + 16));
          v33 = *(a2 + 38);
          cv::_InputArray::_InputArray(&v43, (a2 + 112));
          cv::_OutputArray::_OutputArray(v42, v9);
          cv::scaleAdd(&v47, &v43, v33, v42, v34);
        }
      }

      else
      {
        cv::_InputArray::_InputArray(&v47, (a2 + 16));
        v29 = *(a2 + 38);
        cv::_InputArray::_InputArray(&v43, (a2 + 112));
        v30 = *(a2 + 39);
        cv::_OutputArray::_OutputArray(v42, v9);
        cv::addWeighted(&v47, &v43, v29, v42, v30, 0.0, 0xFFFFFFFFLL);
      }

      if (*(a2 + 41) != 0.0 || *(a2 + 42) != 0.0 || *(a2 + 43) != 0.0)
      {
        cv::_InputArray::_InputArray(&v47, v9);
        v43 = &unk_284056738;
        v44 = -1073610746;
        v45 = a2 + 320;
        v46 = 0x400000001;
        v37 = cv::_OutputArray::_OutputArray(v42, v9);
        v38 = cv::noArray(v37);
        cv::add(&v47, &v43, v42, v38, 0xFFFFFFFFLL);
      }
    }
  }

  else
  {
    if (*(a2 + 41) == 0.0 && *(a2 + 42) == 0.0 && *(a2 + 43) == 0.0)
    {
      if (*v8 != *v7 || (v16 = *(a2 + 38), fabs(v16) != 1.0))
      {
        cv::_OutputArray::_OutputArray(&v47, a3);
        cv::Mat::convertTo((a2 + 16), &v47, a4, *(a2 + 38), *(a2 + 40));
        goto LABEL_40;
      }
    }

    else
    {
      v16 = *(a2 + 38);
    }

    if (v16 == 1.0)
    {
      cv::_InputArray::_InputArray(&v47, (a2 + 16));
      v43 = &unk_284056738;
      v44 = -1073610746;
      v45 = a2 + 320;
      v46 = 0x400000001;
      v21 = cv::_OutputArray::_OutputArray(v42, v9);
      v22 = cv::noArray(v21);
      cv::add(&v47, &v43, v42, v22, 0xFFFFFFFFLL);
    }

    else if (v16 == -1.0)
    {
      v47 = &unk_284056738;
      v48 = -1073610746;
      v49 = a2 + 320;
      v50 = 0x400000001;
      cv::_InputArray::_InputArray(&v43, (a2 + 16));
      v25 = cv::_OutputArray::_OutputArray(v42, v9);
      v26 = cv::noArray(v25);
      cv::subtract(&v47, &v43, v42, v26, 0xFFFFFFFFLL);
    }

    else
    {
      cv::_OutputArray::_OutputArray(&v47, v9);
      cv::Mat::convertTo((a2 + 16), &v47, *(a2 + 4) & 0xFFF, *(a2 + 38), 0.0);
      cv::_InputArray::_InputArray(&v47, v9);
      v43 = &unk_284056738;
      v44 = -1073610746;
      v45 = v10;
      v46 = 0x400000001;
      v31 = cv::_OutputArray::_OutputArray(v42, v9);
      v32 = cv::noArray(v31);
      cv::add(&v47, &v43, v42, v32, 0xFFFFFFFFLL);
    }
  }

  if (*v8 != *v7)
  {
    cv::_OutputArray::_OutputArray(&v47, a3);
    cv::Mat::convertTo(v9, &v47, *a3 & 0xFFF, 1.0, 0.0);
  }

LABEL_40:
  if (*(&v51[1] + 1) && atomic_fetch_add(*(&v51[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v51);
  }

  *&v51[1] = 0;
  memset(&v51[2], 0, 24);
  if (SDWORD1(v51[0]) >= 1)
  {
    v39 = 0;
    v40 = v52;
    do
    {
      *&v40[4 * v39++] = 0;
    }

    while (v39 < SDWORD1(v51[0]));
  }

  *(&v51[1] + 1) = 0;
  if (v53)
  {
    v41 = v53 == v54;
  }

  else
  {
    v41 = 1;
  }

  if (!v41)
  {
    free(v53);
  }
}

void sub_22D289150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  cv::Mat::~Mat(va);
  _Unwind_Resume(a1);
}

double cv::MatOp_AddEx::add(uint64_t a1, uint64_t *a2, double *a3, double *a4)
{
  cv::MatExpr::operator=(a4, a2);
  v6 = a4[41];
  a4[40] = a4[40] + *a3;
  a4[41] = v6 + a3[1];
  v7 = a4[43];
  a4[42] = a4[42] + a3[2];
  result = v7 + a3[3];
  a4[43] = result;
  return result;
}

float64x2_t cv::MatOp_AddEx::subtract(uint64_t a1, float64x2_t *a2, uint64_t *a3, uint64_t a4)
{
  cv::MatExpr::operator=(a4, a3);
  v6 = *(a4 + 320);
  *(a4 + 304) = vnegq_f64(*(a4 + 304));
  result = vsubq_f64(*a2, v6);
  v8 = vsubq_f64(a2[1], *(a4 + 336));
  *(a4 + 320) = result;
  *(a4 + 336) = v8;
  return result;
}

float64x2_t cv::MatOp_AddEx::multiply(cv::MatOp_AddEx *this, const cv::MatExpr *a2, double a3, float64x2_t *a4)
{
  cv::MatExpr::operator=(a4, a2);
  v5 = vmulq_n_f64(a4[20], a3);
  a4[19] = vmulq_n_f64(a4[19], a3);
  a4[20] = v5;
  result = vmulq_n_f64(a4[21], a3);
  a4[21] = result;
  return result;
}

void cv::MatOp_AddEx::divide(cv::MatOp_AddEx *this, double a2, float64x2_t *a3, cv::MatExpr *a4, uint64_t a5, const cv::Mat *a6)
{
  if (*&a3->f64[0] == &cv::g_MatOp_AddEx && (!*&a3[8].f64[0] || a3[19].f64[1] == 0.0) && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(a3[20]), vceqzq_f64(a3[21]))))) & 1) == 0)
  {
    v10 = v9 + 8;
    v11 = v12;
    v12[0] = 0;
    v12[1] = 0;
    LODWORD(v9[0]) = 1124007936;
    memset(v9 + 4, 0, 48);
    v9[3] = 0u;
    cv::MatOp_Bin::makeExpr(a4, 0x2F, &a3[1], v9, a6, a2 / a3[19].f64[0]);
    if (*(&v9[1] + 1) && atomic_fetch_add(*(&v9[1] + 1), 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v9);
    }

    *&v9[1] = 0;
    memset(&v9[2], 0, 24);
    if (SDWORD1(v9[0]) >= 1)
    {
      v6 = 0;
      v7 = v10;
      do
      {
        *&v7[4 * v6++] = 0;
      }

      while (v6 < SDWORD1(v9[0]));
    }

    *(&v9[1] + 1) = 0;
    if (v11)
    {
      v8 = v11 == v12;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      free(v11);
    }
  }

  else
  {

    cv::MatOp::divide(a4, a2, a3, a4);
  }
}

void cv::MatOp_AddEx::transpose(cv::MatOp_AddEx *this, float64x2_t *a2, cv::MatExpr *a3)
{
  if (*&a2->f64[0] == &cv::g_MatOp_AddEx && (!*&a2[8].f64[0] || a2[19].f64[1] == 0.0) && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(a2[20]), vceqzq_f64(a2[21]))))) & 1) == 0)
  {
    cv::MatOp_T::makeExpr(a3, &a2[1], a3, a2[19].f64[0]);
  }

  else
  {
    cv::MatOp::transpose(this, a2, a3);
  }
}

void cv::MatOp_AddEx::abs(cv::MatOp_AddEx *this, const cv::MatExpr *a2, cv::MatExpr *a3, uint64_t a4, const cv::Mat *a5)
{
  v7 = *(a2 + 16);
  v8 = *(a2 + 38);
  v9 = *(a2 + 39);
  if (!v7 || v9 == 0.0)
  {
    if (fabs(v8) == 1.0)
    {
      v16 = v5;
      v17 = v6;
      v13 = vmulq_n_f64(vnegq_f64(*(a2 + 20)), v8);
      v14 = vmulq_n_f64(vnegq_f64(*(a2 + 21)), v8);
      v15[0] = v13;
      v15[1] = v14;
      cv::MatOp_Bin::makeExpr(a3, 97, (a2 + 16), v15);
      return;
    }

    if (!v7)
    {
      goto LABEL_7;
    }
  }

  v10 = v9 + v8;
  v11 = v9 * v8;
  if (v10 == 0.0 && v11 == -1.0)
  {

    cv::MatOp_Bin::makeExpr(a3, 0x61, (a2 + 16), (a2 + 112), a5, 1.0);
  }

  else
  {
LABEL_7:

    cv::MatOp::abs(a3, a2, a3);
  }
}

void cv::MatOp_Bin::assign(cv::MatOp_Bin *this, const cv::MatExpr *a2, cv::Mat *a3, cv::Mat *a4)
{
  v4 = a4;
  v39 = v38 + 8;
  v40 = v41;
  v41[0] = 0;
  v41[1] = 0;
  LODWORD(v38[0]) = 1124007936;
  memset(v38 + 4, 0, 48);
  v7 = (a3 + 16);
  v38[3] = 0u;
  if (a4 == -1 || (*(a2 + 4) & 0xFFF) == a4)
  {
    v8 = (a3 + 16);
    v9 = a3;
  }

  else
  {
    v8 = &v38[1];
    v9 = v38;
  }

  v10 = *(a2 + 2);
  if (v10 == 47)
  {
    if (*(a2 + 16))
    {
      cv::_InputArray::_InputArray(v32, (a2 + 16));
      cv::_InputArray::_InputArray(&v34, (a2 + 112));
      cv::_OutputArray::_OutputArray(v33, v9);
      cv::divide(v32, &v34, v33, 0xFFFFFFFFLL, *(a2 + 38));
    }

    else
    {
      v15 = *(a2 + 38);
      cv::_InputArray::_InputArray(v32, (a2 + 16));
      cv::_OutputArray::_OutputArray(&v34, v9);
      cv::divide(v32, v15, &v34, 0xFFFFFFFFLL);
    }
  }

  else
  {
    if (v10 == 42)
    {
      cv::_InputArray::_InputArray(v32, (a2 + 16));
      cv::_InputArray::_InputArray(&v34, (a2 + 112));
      cv::_OutputArray::_OutputArray(v33, v9);
      cv::multiply(v32, &v34, v33, 0xFFFFFFFFLL, *(a2 + 38));
      goto LABEL_34;
    }

    v11 = *(a2 + 16);
    switch(v10)
    {
      case '|':
        if (v11)
        {
          cv::_InputArray::_InputArray(v32, (a2 + 16));
          cv::_InputArray::_InputArray(&v34, (a2 + 112));
        }

        else
        {
          cv::_InputArray::_InputArray(v32, (a2 + 16));
          v34 = &unk_284056738;
          v35 = -1073610746;
          v36 = a2 + 320;
          v37 = 0x400000001;
        }

        v19 = cv::_OutputArray::_OutputArray(v33, v9);
        v20 = cv::noArray(v19);
        cv::bitwise_or(v32, &v34, v33, v20, v21);
        break;
      case '^':
        if (v11)
        {
          cv::_InputArray::_InputArray(v32, (a2 + 16));
          cv::_InputArray::_InputArray(&v34, (a2 + 112));
        }

        else
        {
          cv::_InputArray::_InputArray(v32, (a2 + 16));
          v34 = &unk_284056738;
          v35 = -1073610746;
          v36 = a2 + 320;
          v37 = 0x400000001;
        }

        v16 = cv::_OutputArray::_OutputArray(v33, v9);
        v17 = cv::noArray(v16);
        cv::bitwise_xor(v32, &v34, v33, v17, v18);
        break;
      case '&':
        if (v11)
        {
          cv::_InputArray::_InputArray(v32, (a2 + 16));
          cv::_InputArray::_InputArray(&v34, (a2 + 112));
        }

        else
        {
          cv::_InputArray::_InputArray(v32, (a2 + 16));
          v34 = &unk_284056738;
          v35 = -1073610746;
          v36 = a2 + 320;
          v37 = 0x400000001;
        }

        v12 = cv::_OutputArray::_OutputArray(v33, v9);
        v13 = cv::noArray(v12);
        cv::bitwise_and(v32, &v34, v33, v13, v14);
        break;
      default:
        if (v10 == 126 && !v11)
        {
          cv::_InputArray::_InputArray(v32, (a2 + 16));
          v22 = cv::_OutputArray::_OutputArray(&v34, v9);
          v23 = cv::noArray(v22);
          cv::bitwise_not(v32, &v34, v23, v24);
          break;
        }

        if (v10 <= 96)
        {
          if (v10 == 77)
          {
            cv::max((a2 + 16), (a2 + 112), v9, a4);
            break;
          }

          if (v10 == 78)
          {
            cv::max((a2 + 16), v9, *(a2 + 40), a3);
            break;
          }
        }

        else
        {
          switch(v10)
          {
            case 'a':
              if (v11)
              {
                cv::_InputArray::_InputArray(v32, (a2 + 16));
                cv::_InputArray::_InputArray(&v34, (a2 + 112));
                cv::_OutputArray::_OutputArray(v33, v9);
                cv::absdiff(v32, &v34, v33, v28);
                goto LABEL_34;
              }

              break;
            case 'n':
              cv::min((a2 + 16), v9, *(a2 + 40), a3);
              goto LABEL_34;
            case 'm':
              cv::min((a2 + 16), (a2 + 112), v9, a4);
              goto LABEL_34;
          }
        }

        if (v10 != 97 || v11)
        {
          std::string::basic_string[abi:ne200100]<0>(&v34, "Unknown operation");
          std::string::basic_string[abi:ne200100]<0>(v33, "assign");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matop.cpp");
          cv::Exception::Exception(v32, 4294967294, &v34, v33, __p, 1353);
          cv::error(v32, v30);
        }

        cv::_InputArray::_InputArray(v32, (a2 + 16));
        v34 = &unk_284056738;
        v35 = -1073610746;
        v36 = a2 + 320;
        v37 = 0x400000001;
        cv::_OutputArray::_OutputArray(v33, v9);
        cv::absdiff(v32, &v34, v33, v29);
        break;
    }
  }

LABEL_34:
  if (*v8 != *v7)
  {
    cv::_OutputArray::_OutputArray(v32, a3);
    cv::Mat::convertTo(v9, v32, v4, 1.0, 0.0);
  }

  if (*(&v38[1] + 1) && atomic_fetch_add(*(&v38[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v38);
  }

  *&v38[1] = 0;
  memset(&v38[2], 0, 24);
  if (SDWORD1(v38[0]) >= 1)
  {
    v25 = 0;
    v26 = v39;
    do
    {
      *&v26[4 * v25++] = 0;
    }

    while (v25 < SDWORD1(v38[0]));
  }

  *(&v38[1] + 1) = 0;
  if (v40)
  {
    v27 = v40 == v41;
  }

  else
  {
    v27 = 1;
  }

  if (!v27)
  {
    free(v40);
  }
}

void cv::MatOp_Bin::multiply(cv::MatOp_Bin *this, const cv::MatExpr *a2, double a3, cv::MatExpr *a4)
{
  v6 = *(a2 + 2);
  if (v6 == 47 || v6 == 42)
  {
    cv::MatExpr::operator=(a4, a2);
    *(a4 + 38) = *(a4 + 38) * a3;
  }

  else
  {

    cv::MatOp::multiply(this, a2, a3, a4);
  }
}

void cv::MatOp_Bin::divide(cv::MatOp_Bin *this, double a2, const cv::MatExpr *a3, cv::MatExpr *a4)
{
  if (*(a3 + 2) == 47 && (!*(a3 + 16) || *(a3 + 39) == 0.0))
  {
    v10 = v9 + 8;
    v11 = v12;
    v12[0] = 0;
    v12[1] = 0;
    LODWORD(v9[0]) = 1124007936;
    memset(v9 + 4, 0, 48);
    v9[3] = 0u;
    v4 = *(a3 + 38);
    memset(v8, 0, sizeof(v8));
    cv::MatOp_AddEx::makeExpr(a4, (a3 + 16), v9, v8, a2 / v4, 0.0);
    if (*(&v9[1] + 1) && atomic_fetch_add(*(&v9[1] + 1), 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v9);
    }

    *&v9[1] = 0;
    memset(&v9[2], 0, 24);
    if (SDWORD1(v9[0]) >= 1)
    {
      v5 = 0;
      v6 = v10;
      do
      {
        *&v6[4 * v5++] = 0;
      }

      while (v5 < SDWORD1(v9[0]));
    }

    *(&v9[1] + 1) = 0;
    if (v11)
    {
      v7 = v11 == v12;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      free(v11);
    }
  }

  else
  {

    cv::MatOp::divide(a4, a2, a3, a4);
  }
}

void sub_22D289E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  cv::Mat::~Mat(va);
  _Unwind_Resume(a1);
}

void cv::MatOp_Cmp::assign(cv::MatOp_Cmp *this, const cv::MatExpr *a2, cv::Mat *a3, int a4)
{
  v16 = v15 + 8;
  v17 = v18;
  v18[0] = 0;
  v18[1] = 0;
  LODWORD(v15[0]) = 1124007936;
  memset(v15 + 4, 0, 48);
  v15[3] = 0u;
  v7 = a4 + 1;
  if ((a4 + 1) >= 2)
  {
    v8 = v15;
  }

  else
  {
    v8 = a3;
  }

  if (*(a2 + 16))
  {
    cv::_InputArray::_InputArray(v14, (a2 + 16));
    cv::_InputArray::_InputArray(v13, (a2 + 112));
  }

  else
  {
    cv::_InputArray::_InputArray(v14, (a2 + 16));
    cv::_InputArray::_InputArray(v13, a2 + 38);
  }

  cv::_OutputArray::_OutputArray(v12, v8);
  cv::compare(v14, v13, v12, *(a2 + 2));
  if (v7 >= 2 && *&v15[1] != *(a3 + 2))
  {
    cv::_OutputArray::_OutputArray(v14, a3);
    cv::Mat::convertTo(v15, v14, a4, 1.0, 0.0);
  }

  if (*(&v15[1] + 1) && atomic_fetch_add(*(&v15[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v15);
  }

  *&v15[1] = 0;
  memset(&v15[2], 0, 24);
  if (SDWORD1(v15[0]) >= 1)
  {
    v9 = 0;
    v10 = v16;
    do
    {
      *&v10[4 * v9++] = 0;
    }

    while (v9 < SDWORD1(v15[0]));
  }

  *(&v15[1] + 1) = 0;
  if (v17)
  {
    v11 = v17 == v18;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    free(v17);
  }
}

void sub_22D28A028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  cv::Mat::~Mat(va);
  _Unwind_Resume(a1);
}

void cv::MatOp_T::assign(cv::MatOp_T *this, const cv::MatExpr *a2, cv::Mat *a3, int a4)
{
  v17 = v16 + 8;
  v18 = v19;
  v19[0] = 0;
  v19[1] = 0;
  LODWORD(v16[0]) = 1124007936;
  memset(v16 + 4, 0, 48);
  v7 = (a3 + 16);
  v16[3] = 0u;
  if (a4 == -1 || (*(a2 + 4) & 0xFFF) == a4)
  {
    v8 = (a3 + 16);
    v9 = a3;
  }

  else
  {
    v8 = &v16[1];
    v9 = v16;
  }

  cv::_InputArray::_InputArray(v15, (a2 + 16));
  cv::_OutputArray::_OutputArray(v14, v9);
  cv::transpose(v15, v14, v10);
  if (*v8 != *v7 || *(a2 + 38) != 1.0)
  {
    cv::_OutputArray::_OutputArray(v15, a3);
    cv::Mat::convertTo(v9, v15, a4, *(a2 + 38), 0.0);
  }

  if (*(&v16[1] + 1) && atomic_fetch_add(*(&v16[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v16);
  }

  *&v16[1] = 0;
  memset(&v16[2], 0, 24);
  if (SDWORD1(v16[0]) >= 1)
  {
    v11 = 0;
    v12 = v17;
    do
    {
      *&v12[4 * v11++] = 0;
    }

    while (v11 < SDWORD1(v16[0]));
  }

  *(&v16[1] + 1) = 0;
  if (v18)
  {
    v13 = v18 == v19;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    free(v18);
  }
}

void sub_22D28A1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  cv::Mat::~Mat(va);
  _Unwind_Resume(a1);
}

double cv::MatOp_T::multiply(cv::MatOp_T *this, const cv::MatExpr *a2, double a3, cv::MatExpr *a4)
{
  cv::MatExpr::operator=(a4, a2);
  result = *(a4 + 38) * a3;
  *(a4 + 38) = result;
  return result;
}

void cv::MatOp_T::transpose(cv::MatOp_T *this, const cv::MatExpr *a2, cv::MatExpr *a3)
{
  v3 = *(a2 + 38);
  if (v3 == 1.0)
  {
    v4 = (a2 + 16);

    cv::MatOp_Identity::makeExpr(a3, v4, a3);
  }

  else
  {
    v10 = v9 + 8;
    v11 = v12;
    v12[0] = 0;
    v12[1] = 0;
    LODWORD(v9[0]) = 1124007936;
    memset(v9 + 4, 0, 48);
    v9[3] = 0u;
    memset(v8, 0, sizeof(v8));
    cv::MatOp_AddEx::makeExpr(a3, (a2 + 16), v9, v8, v3, 0.0);
    if (*(&v9[1] + 1) && atomic_fetch_add(*(&v9[1] + 1), 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v9);
    }

    *&v9[1] = 0;
    memset(&v9[2], 0, 24);
    if (SDWORD1(v9[0]) >= 1)
    {
      v5 = 0;
      v6 = v10;
      do
      {
        *&v6[4 * v5++] = 0;
      }

      while (v5 < SDWORD1(v9[0]));
    }

    *(&v9[1] + 1) = 0;
    if (v11)
    {
      v7 = v11 == v12;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      free(v11);
    }
  }
}

void sub_22D28A344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  cv::Mat::~Mat(va);
  _Unwind_Resume(a1);
}

void cv::MatOp_Identity::makeExpr(cv::MatOp_Identity *this, cv::MatExpr *a2, const cv::Mat *a3)
{
  v16 = v15 + 8;
  v17 = v18;
  v18[0] = 0;
  v18[1] = 0;
  LODWORD(v15[0]) = 1124007936;
  memset(v15 + 4, 0, 48);
  v15[3] = 0u;
  v12 = v11 + 8;
  v13 = v14;
  v14[0] = 0;
  v14[1] = 0;
  LODWORD(v11[0]) = 1124007936;
  memset(v11 + 4, 0, 48);
  v11[3] = 0u;
  memset(v10, 0, sizeof(v10));
  cv::MatExpr::MatExpr(v19, &cv::g_MatOp_Identity, 0, a2, v15, v11, v10, 1.0, 0.0);
  cv::MatExpr::operator=(this, v19);
  cv::MatExpr::~MatExpr(v19);
  if (*(&v11[1] + 1) && atomic_fetch_add(*(&v11[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v11);
  }

  *&v11[1] = 0;
  memset(&v11[2], 0, 24);
  if (SDWORD1(v11[0]) >= 1)
  {
    v4 = 0;
    v5 = v12;
    do
    {
      *&v5[4 * v4++] = 0;
    }

    while (v4 < SDWORD1(v11[0]));
  }

  *(&v11[1] + 1) = 0;
  if (v13)
  {
    v6 = v13 == v14;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v13);
  }

  if (*(&v15[1] + 1) && atomic_fetch_add(*(&v15[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v15);
  }

  *&v15[1] = 0;
  memset(&v15[2], 0, 24);
  if (SDWORD1(v15[0]) >= 1)
  {
    v7 = 0;
    v8 = v16;
    do
    {
      *&v8[4 * v7++] = 0;
    }

    while (v7 < SDWORD1(v15[0]));
  }

  *(&v15[1] + 1) = 0;
  if (v17)
  {
    v9 = v17 == v18;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    free(v17);
  }
}

void sub_22D28A504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  cv::MatExpr::~MatExpr(&a37);
  cv::Mat::~Mat(&a13);
  cv::Mat::~Mat(&a25);
  _Unwind_Resume(a1);
}

void cv::MatOp_GEMM::assign(cv::MatOp_GEMM *this, const cv::MatExpr *a2, cv::Mat *a3, int a4)
{
  v20 = v19 + 8;
  v21 = v22;
  v22[0] = 0;
  v22[1] = 0;
  LODWORD(v19[0]) = 1124007936;
  memset(v19 + 4, 0, 48);
  v7 = (a3 + 16);
  v19[3] = 0u;
  if (a4 == -1 || (*(a2 + 4) & 0xFFF) == a4)
  {
    v8 = (a3 + 16);
    v9 = a3;
  }

  else
  {
    v8 = &v19[1];
    v9 = v19;
  }

  cv::_InputArray::_InputArray(v18, (a2 + 16));
  cv::_InputArray::_InputArray(v17, (a2 + 112));
  v10 = *(a2 + 38);
  cv::_InputArray::_InputArray(v16, (a2 + 208));
  v11 = *(a2 + 39);
  cv::_OutputArray::_OutputArray(v15, v9);
  cv::gemm(v18, v17, v16, v10, v15, v11, *(a2 + 2));
  if (*v8 != *v7)
  {
    cv::_OutputArray::_OutputArray(v18, a3);
    cv::Mat::convertTo(v9, v18, a4, 1.0, 0.0);
  }

  if (*(&v19[1] + 1) && atomic_fetch_add(*(&v19[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v19);
  }

  *&v19[1] = 0;
  memset(&v19[2], 0, 24);
  if (SDWORD1(v19[0]) >= 1)
  {
    v12 = 0;
    v13 = v20;
    do
    {
      *&v13[4 * v12++] = 0;
    }

    while (v12 < SDWORD1(v19[0]));
  }

  *(&v19[1] + 1) = 0;
  if (v21)
  {
    v14 = v21 == v22;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    free(v21);
  }
}

void sub_22D28A6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  cv::Mat::~Mat(va);
  _Unwind_Resume(a1);
}

void cv::MatOp_GEMM::add(cv::MatOp_GEMM *this, const cv::MatExpr *a2, const cv::MatExpr *a3, cv::MatExpr *a4)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *(a2 + 38);
  v9 = 1.0;
  if (*a2 == &cv::g_MatOp_Identity)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = *(a2 + 38);
  }

  v11 = *(a3 + 38);
  if (v7 != &cv::g_MatOp_Identity)
  {
    v9 = *(a3 + 38);
  }

  if (v6 != &cv::g_MatOp_GEMM || *(a2 + 28) && *(a2 + 39) != 0.0)
  {
    goto LABEL_9;
  }

  if (v7 == &cv::g_MatOp_Identity)
  {
LABEL_30:
    v13 = *(a2 + 2);
    v15 = 0u;
    v16 = 0u;
    cv::MatExpr::MatExpr(v17, &cv::g_MatOp_GEMM, v13 & 0xFFFFFFFB | (4 * (v7 == &cv::g_MatOp_T)), (a2 + 16), (a2 + 112), (a3 + 16), &v15, v8, v9);
    cv::MatExpr::operator=(a4, v17);
LABEL_35:
    cv::MatExpr::~MatExpr(v17);
    return;
  }

  if (v7 == &cv::g_MatOp_AddEx)
  {
    if (*(a3 + 16) && *(a3 + 39) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a3 + 20)), vceqzq_f64(*(a3 + 21)))))) & 1) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

  if (v7 == &cv::g_MatOp_T)
  {
    goto LABEL_30;
  }

LABEL_9:
  if (v7 != &cv::g_MatOp_GEMM || *(a3 + 28) && *(a3 + 39) != 0.0)
  {
    goto LABEL_12;
  }

  if (v6 == &cv::g_MatOp_Identity)
  {
    goto LABEL_34;
  }

  if (v6 != &cv::g_MatOp_AddEx)
  {
    if (v6 != &cv::g_MatOp_T)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

  if ((!*(a2 + 16) || *(a2 + 39) == 0.0) && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a2 + 20)), vceqzq_f64(*(a2 + 21)))))) & 1) == 0)
  {
LABEL_34:
    v14 = *(a3 + 2);
    v15 = 0u;
    v16 = 0u;
    cv::MatExpr::MatExpr(v17, &cv::g_MatOp_GEMM, v14 & 0xFFFFFFFB | (4 * (v6 == &cv::g_MatOp_T)), (a3 + 16), (a3 + 112), (a2 + 16), &v15, v11, v10);
    cv::MatExpr::operator=(a4, v17);
    goto LABEL_35;
  }

LABEL_12:
  if (v7 == this)
  {

    cv::MatOp::add(this, a2, a3, a4);
  }

  else
  {
    v12 = *(*v7 + 104);

    v12();
  }
}

void sub_22D28A990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  cv::MatExpr::~MatExpr(va);
  _Unwind_Resume(a1);
}

void cv::MatOp_GEMM::subtract(cv::MatOp_GEMM *this, const cv::MatExpr *a2, float64x2_t *a3, cv::MatExpr *a4)
{
  v6 = *a2;
  v7 = *&a3->f64[0];
  v8 = *(a2 + 38);
  v9 = 1.0;
  if (*a2 != &cv::g_MatOp_Identity)
  {
    v9 = *(a2 + 38);
  }

  v10 = a3[19].f64[0];
  if (v6 != &cv::g_MatOp_GEMM || *(a2 + 28) && *(a2 + 39) != 0.0)
  {
    goto LABEL_6;
  }

  if (v7 == &cv::g_MatOp_Identity)
  {
LABEL_27:
    v12 = *(a2 + 2) & 0xFFFFFFFB | (4 * (v7 == &cv::g_MatOp_T));
    v13 = -v10;
    if (v7 == &cv::g_MatOp_Identity)
    {
      v13 = -1.0;
    }

    v15 = 0u;
    v16 = 0u;
    cv::MatExpr::MatExpr(v17, &cv::g_MatOp_GEMM, v12, (a2 + 16), (a2 + 112), &a3[1], &v15, v8, v13);
    cv::MatExpr::operator=(a4, v17);
    goto LABEL_34;
  }

  if (v7 == &cv::g_MatOp_AddEx)
  {
    if (*&a3[8].f64[0] && a3[19].f64[1] != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(a3[20]), vceqzq_f64(a3[21]))))) & 1) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

  if (v7 == &cv::g_MatOp_T)
  {
    goto LABEL_27;
  }

LABEL_6:
  if (v7 != &cv::g_MatOp_GEMM || *&a3[14].f64[0] && a3[19].f64[1] != 0.0)
  {
    goto LABEL_9;
  }

  if (v6 == &cv::g_MatOp_Identity)
  {
    goto LABEL_33;
  }

  if (v6 != &cv::g_MatOp_AddEx)
  {
    if (v6 != &cv::g_MatOp_T)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

  if ((!*(a2 + 16) || *(a2 + 39) == 0.0) && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a2 + 20)), vceqzq_f64(*(a2 + 21)))))) & 1) == 0)
  {
LABEL_33:
    v14 = LODWORD(a3->f64[1]);
    v15 = 0u;
    v16 = 0u;
    cv::MatExpr::MatExpr(v17, &cv::g_MatOp_GEMM, v14 & 0xFFFFFFFB | (4 * (v6 == &cv::g_MatOp_T)), &a3[1], &a3[7], (a2 + 16), &v15, -v10, v9);
    cv::MatExpr::operator=(a4, v17);
LABEL_34:
    cv::MatExpr::~MatExpr(v17);
    return;
  }

LABEL_9:
  if (v7 == this)
  {

    cv::MatOp::subtract(this, a2, a3, a4);
  }

  else
  {
    v11 = *(*v7 + 120);

    v11();
  }
}

void sub_22D28AC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  cv::MatExpr::~MatExpr(va);
  _Unwind_Resume(a1);
}

float64x2_t cv::MatOp_GEMM::multiply(cv::MatOp_GEMM *this, const cv::MatExpr *a2, double a3, float64x2_t *a4)
{
  cv::MatExpr::operator=(a4, a2);
  result = vmulq_n_f64(a4[19], a3);
  a4[19] = result;
  return result;
}

int *cv::MatOp_GEMM::transpose(cv::MatOp_GEMM *this, const cv::MatExpr *a2, cv::MatExpr *a3)
{
  cv::MatExpr::operator=(a3, a2);
  *(a3 + 2) = (*(a2 + 2) & 4 | (__rbit32(~*(a2 + 2)) >> 30)) ^ 4;

  return cv::swap(a3 + 4, (a3 + 112), v5);
}

void cv::MatOp_Invert::assign(cv::MatOp_Invert *this, const cv::MatExpr *a2, cv::Mat *a3, int a4)
{
  v16 = v15 + 8;
  v17 = v18;
  v18[0] = 0;
  v18[1] = 0;
  LODWORD(v15[0]) = 1124007936;
  memset(v15 + 4, 0, 48);
  v7 = (a3 + 16);
  v15[3] = 0u;
  if (a4 == -1 || (*(a2 + 4) & 0xFFF) == a4)
  {
    v8 = (a3 + 16);
    v9 = a3;
  }

  else
  {
    v8 = &v15[1];
    v9 = v15;
  }

  cv::_InputArray::_InputArray(v14, (a2 + 16));
  cv::_OutputArray::_OutputArray(v13, v9);
  cv::invert(v14, v13, *(a2 + 2));
  if (*v8 != *v7)
  {
    cv::_OutputArray::_OutputArray(v14, a3);
    cv::Mat::convertTo(v9, v14, a4, 1.0, 0.0);
  }

  if (*(&v15[1] + 1) && atomic_fetch_add(*(&v15[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v15);
  }

  *&v15[1] = 0;
  memset(&v15[2], 0, 24);
  if (SDWORD1(v15[0]) >= 1)
  {
    v10 = 0;
    v11 = v16;
    do
    {
      *&v11[4 * v10++] = 0;
    }

    while (v10 < SDWORD1(v15[0]));
  }

  *(&v15[1] + 1) = 0;
  if (v17)
  {
    v12 = v17 == v18;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    free(v17);
  }
}

void sub_22D28AE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  cv::Mat::~Mat(va);
  _Unwind_Resume(a1);
}

void cv::MatOp_Invert::matmul(cv::MatOp_Invert *this, const cv::MatExpr *a2, cv::MatOp_Invert **a3, cv::MatExpr *a4, const cv::Mat *a5)
{
  v6 = *a3;
  if (*a2 == &cv::g_MatOp_Invert && v6 == &cv::g_MatOp_Identity)
  {
    cv::MatOp_Solve::makeExpr(a4, *(a2 + 2), (a2 + 16), (a3 + 2), a5);
  }

  else if (v6 == this)
  {
    cv::MatOp::matmul(this, a2, a3, a4);
  }

  else
  {
    (*(*v6 + 184))();
  }
}

void cv::MatOp_Solve::makeExpr(cv::MatOp_Solve *this, cv::MatExpr *a2, cv::Mat *a3, const cv::Mat *a4, const cv::Mat *a5)
{
  v11 = v10 + 8;
  v12 = v13;
  v13[0] = 0;
  v13[1] = 0;
  LODWORD(v10[0]) = 1124007936;
  memset(v10 + 4, 0, 48);
  v10[3] = 0u;
  memset(v9, 0, sizeof(v9));
  cv::MatExpr::MatExpr(v14, &cv::g_MatOp_Solve, a2, a3, a4, v10, v9, 1.0, 1.0);
  cv::MatExpr::operator=(this, v14);
  cv::MatExpr::~MatExpr(v14);
  if (*(&v10[1] + 1) && atomic_fetch_add(*(&v10[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v10);
  }

  *&v10[1] = 0;
  memset(&v10[2], 0, 24);
  if (SDWORD1(v10[0]) >= 1)
  {
    v6 = 0;
    v7 = v11;
    do
    {
      *&v7[4 * v6++] = 0;
    }

    while (v6 < SDWORD1(v10[0]));
  }

  *(&v10[1] + 1) = 0;
  if (v12)
  {
    v8 = v12 == v13;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    free(v12);
  }
}

void sub_22D28B028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  cv::MatExpr::~MatExpr(va1);
  cv::Mat::~Mat(va);
  _Unwind_Resume(a1);
}

void cv::MatOp_Solve::assign(cv::MatOp_Solve *this, const cv::MatExpr *a2, cv::Mat *a3, int a4)
{
  v17 = v16 + 8;
  v18 = v19;
  v19[0] = 0;
  v19[1] = 0;
  LODWORD(v16[0]) = 1124007936;
  memset(v16 + 4, 0, 48);
  v7 = (a3 + 16);
  v16[3] = 0u;
  if (a4 == -1 || (*(a2 + 4) & 0xFFF) == a4)
  {
    v8 = (a3 + 16);
    v9 = a3;
  }

  else
  {
    v8 = &v16[1];
    v9 = v16;
  }

  cv::_InputArray::_InputArray(v15, (a2 + 16));
  cv::_InputArray::_InputArray(v14, (a2 + 112));
  cv::_OutputArray::_OutputArray(v13, v9);
  cv::solve(v15, v14, v13, *(a2 + 2));
  if (*v8 != *v7)
  {
    cv::_OutputArray::_OutputArray(v15, a3);
    cv::Mat::convertTo(v9, v15, a4, 1.0, 0.0);
  }

  if (*(&v16[1] + 1) && atomic_fetch_add(*(&v16[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v16);
  }

  *&v16[1] = 0;
  memset(&v16[2], 0, 24);
  if (SDWORD1(v16[0]) >= 1)
  {
    v10 = 0;
    v11 = v17;
    do
    {
      *&v11[4 * v10++] = 0;
    }

    while (v10 < SDWORD1(v16[0]));
  }

  *(&v16[1] + 1) = 0;
  if (v18)
  {
    v12 = v18 == v19;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    free(v18);
  }
}

void sub_22D28B1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  cv::Mat::~Mat(va);
  _Unwind_Resume(a1);
}

void cv::MatOp_Initializer::assign(cv::MatOp_Initializer *this, const cv::MatExpr *a2, cv::Mat *a3, int a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 4);
  v6 = *(a2 + 5);
  v8 = v7 & 0xFFF;
  if (a4 == -1)
  {
    LOWORD(a4) = v8;
  }

  v9 = *(a2 + 10);
  if (v6 > 2)
  {
    cv::Mat::create(a3, v6, v9, a4);
  }

  else
  {
    v10 = *(v9 + 4);
    v11 = a4 & 0xFFF;
    v13 = *(a3 + 1) <= 2 && *(a3 + 2) == *v9 && *(a3 + 3) == v10;
    if (!v13 || ((*a3 & 0xFFF) == v11 ? (v14 = *(a3 + 2) == 0) : (v14 = 1), v14))
    {
      v23[0] = *v9;
      v23[1] = v10;
      cv::Mat::create(a3, 2, v23, v11);
    }
  }

  v15 = *(a2 + 2);
  if (v15 == 73 && *(a2 + 5) <= 2)
  {
    cv::_OutputArray::_OutputArray(v23, a3);
    v20 = *(a2 + 38);
    v21 = 0;
    v22 = 0;
    cv::setIdentity(v23, &v20);
  }

  else if (v15 == 49)
  {
    *v23 = *(a2 + 38);
    v24 = 0uLL;
    *&v23[2] = 0;
    cv::Mat::operator=(a3, v23);
  }

  else
  {
    if (v15 != 48)
    {
      std::string::basic_string[abi:ne200100]<0>(&v20, "Invalid matrix initializer type");
      std::string::basic_string[abi:ne200100]<0>(v19, "assign");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matop.cpp");
      cv::Exception::Exception(v23, 4294967294, &v20, v19, __p, 1572);
      cv::error(v23, v17);
    }

    *v23 = 0u;
    v24 = 0u;
    cv::Mat::operator=(a3, v23);
  }
}

void sub_22D28B3D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  cv::Exception::~Exception(&a28);
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

double cv::MatOp_Initializer::multiply(cv::MatOp_Initializer *this, const cv::MatExpr *a2, double a3, cv::MatExpr *a4)
{
  cv::MatExpr::operator=(a4, a2);
  result = *(a4 + 38) * a3;
  *(a4 + 38) = result;
  return result;
}

void cv::MatOp_Initializer::makeExpr(cv *a1, int a2, int *a3, unsigned int a4, double a5)
{
  cv::getGlobalMatOpInitializer(a1);
  v10 = *a3;
  v31[0] = a3[1];
  v31[1] = v10;
  v32 = 0;
  v33 = 0;
  v38 = v31;
  v39 = v40;
  v29 = a4 & 0xFFF | 0x42FF4000;
  v30 = 2;
  v40[0] = v10 * ((((a4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a4 & 7))) & 3));
  v40[1] = (((a4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a4 & 7))) & 3);
  v36 = v40[0] * v31[0];
  v37 = 0;
  v34 = 0;
  v35 = v36;
  v26 = v25 + 8;
  v27 = v28;
  v28[0] = 0;
  v28[1] = 0;
  LODWORD(v25[0]) = 1124007936;
  memset(v25 + 4, 0, 48);
  v25[3] = 0u;
  v22 = v21 + 8;
  v23 = v24;
  v24[0] = 0;
  v24[1] = 0;
  LODWORD(v21[0]) = 1124007936;
  memset(v21 + 4, 0, 48);
  v21[3] = 0u;
  memset(v20, 0, sizeof(v20));
  cv::MatExpr::MatExpr(v41, &_MergedGlobals_0, a2, &v29, v25, v21, v20, a5, 0.0);
  cv::MatExpr::operator=(a1, v41);
  cv::MatExpr::~MatExpr(v41);
  if (*(&v21[1] + 1) && atomic_fetch_add(*(&v21[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v21);
  }

  *&v21[1] = 0;
  memset(&v21[2], 0, 24);
  if (SDWORD1(v21[0]) >= 1)
  {
    v11 = 0;
    v12 = v22;
    do
    {
      *&v12[4 * v11++] = 0;
    }

    while (v11 < SDWORD1(v21[0]));
  }

  *(&v21[1] + 1) = 0;
  if (v23)
  {
    v13 = v23 == v24;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    free(v23);
  }

  if (*(&v25[1] + 1) && atomic_fetch_add(*(&v25[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v25);
  }

  *&v25[1] = 0;
  memset(&v25[2], 0, 24);
  if (SDWORD1(v25[0]) >= 1)
  {
    v14 = 0;
    v15 = v26;
    do
    {
      *&v15[4 * v14++] = 0;
    }

    while (v14 < SDWORD1(v25[0]));
  }

  *(&v25[1] + 1) = 0;
  if (v27)
  {
    v16 = v27 == v28;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    free(v27);
  }

  if (v33 && atomic_fetch_add(v33, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v29);
  }

  v32 = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  if (v30 >= 1)
  {
    v17 = 0;
    v18 = v38;
    do
    {
      v18[v17++] = 0;
    }

    while (v17 < v30);
  }

  v33 = 0;
  if (v39)
  {
    v19 = v39 == v40;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    free(v39);
  }
}

void sub_22D28B71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  cv::MatExpr::~MatExpr(&a49);
  cv::Mat::~Mat(&a13);
  cv::Mat::~Mat(&a25);
  cv::Mat::~Mat(&a37);
  _Unwind_Resume(a1);
}

void cv::Mat::zeros(uint64_t *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 96) = 0;
  *(a3 + 80) = a3 + 24;
  *(a3 + 88) = a3 + 96;
  *(a3 + 104) = 0;
  *(a3 + 16) = 1124007936;
  *(a3 + 20) = 0u;
  *(a3 + 36) = 0u;
  *(a3 + 52) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 192) = 0;
  *(a3 + 176) = a3 + 120;
  *(a3 + 184) = a3 + 192;
  *(a3 + 200) = 0;
  *(a3 + 112) = 1124007936;
  *(a3 + 160) = 0u;
  *(a3 + 148) = 0u;
  *(a3 + 132) = 0u;
  *(a3 + 116) = 0u;
  *(a3 + 272) = a3 + 216;
  *(a3 + 280) = a3 + 288;
  *(a3 + 288) = 0;
  *(a3 + 296) = 0;
  *(a3 + 208) = 1124007936;
  *(a3 + 256) = 0u;
  *(a3 + 244) = 0u;
  *(a3 + 228) = 0u;
  *(a3 + 212) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 304) = 0u;
  v3 = *a1;
  cv::MatOp_Initializer::makeExpr(a3, 48, &v3, a2, 1.0);
}

uint64_t cv::MatExpr::MatExpr(uint64_t a1, uint64_t a2, int a3, cv::Mat *a4, cv::Mat *a5, cv::Mat *a6, uint64_t *a7, double a8, double a9)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v15 = *a4;
  *(a1 + 32) = *(a4 + 2);
  v16 = *(a4 + 24);
  *(a1 + 40) = v16;
  *(a1 + 56) = *(a4 + 40);
  v17 = *(a4 + 7);
  *(a1 + 96) = 0;
  *(a1 + 72) = v17;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 16) = v15;
  if (v16)
  {
    atomic_fetch_add(v16, 1u);
  }

  if (*(a4 + 1) > 2)
  {
    *(a1 + 20) = 0;
    cv::Mat::copySize((a1 + 16), a4);
  }

  else
  {
    v18 = *(a4 + 9);
    v19 = *(a1 + 88);
    *v19 = *v18;
    v19[1] = v18[1];
  }

  v20 = *a5;
  *(a1 + 128) = *(a5 + 2);
  v21 = *(a5 + 24);
  *(a1 + 136) = v21;
  *(a1 + 152) = *(a5 + 40);
  v22 = *(a5 + 7);
  *(a1 + 192) = 0;
  *(a1 + 168) = v22;
  *(a1 + 176) = a1 + 120;
  *(a1 + 184) = a1 + 192;
  *(a1 + 200) = 0;
  *(a1 + 112) = v20;
  if (v21)
  {
    atomic_fetch_add(v21, 1u);
  }

  if (*(a5 + 1) > 2)
  {
    *(a1 + 116) = 0;
    cv::Mat::copySize((a1 + 112), a5);
  }

  else
  {
    v23 = *(a5 + 9);
    v24 = *(a1 + 184);
    *v24 = *v23;
    v24[1] = v23[1];
  }

  *(a1 + 208) = *a6;
  *(a1 + 224) = *(a6 + 2);
  v25 = *(a6 + 24);
  *(a1 + 232) = v25;
  *(a1 + 248) = *(a6 + 40);
  *(a1 + 264) = *(a6 + 7);
  *(a1 + 272) = a1 + 216;
  *(a1 + 280) = a1 + 288;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  if (v25)
  {
    atomic_fetch_add(v25, 1u);
  }

  if (*(a6 + 1) > 2)
  {
    *(a1 + 212) = 0;
    cv::Mat::copySize((a1 + 208), a6);
  }

  else
  {
    v26 = *(a6 + 9);
    v27 = *(a1 + 280);
    *v27 = *v26;
    v27[1] = v26[1];
  }

  *(a1 + 304) = a8;
  *(a1 + 312) = a9;
  for (i = 40; i != 44; ++i)
  {
    v29 = *a7++;
    *(a1 + 8 * i) = v29;
  }

  return a1;
}

void sub_22D28BB50(_Unwind_Exception *a1)
{
  cv::Mat::~Mat(v2);
  cv::Mat::~Mat(v1);
  _Unwind_Resume(a1);
}

void cv::getGlobalMatOpInitializer(cv *this)
{
  if ((atomic_load_explicit(&qword_27D9FAF00, memory_order_acquire) & 1) == 0)
  {
    cv::getGlobalMatOpInitializer();
  }
}

void cv::getGlobalMatOpInitializer()
{
  if (__cxa_guard_acquire(&qword_27D9FAF00))
  {
    _MergedGlobals_0 = &unk_284057BE8;

    __cxa_guard_release(&qword_27D9FAF00);
  }
}

void _GLOBAL__sub_I_matop_cpp()
{
  cv::g_MatOp_Identity = &unk_2840573E8;
  cv::g_MatOp_AddEx = &unk_2840574E8;
  cv::g_MatOp_Bin = &unk_2840575E8;
  cv::g_MatOp_Cmp = &unk_2840576E8;
  cv::g_MatOp_GEMM = &unk_2840577E8;
  cv::g_MatOp_Invert = &unk_2840578E8;
  cv::g_MatOp_T = &unk_2840579E8;
  cv::g_MatOp_Solve = &unk_284057AE8;
}

double HMISimulateCrash_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return [(HMIThermalMonitorService *)v0 readValue];
}

void homeai::clustering::GreedyClusterer::getConnectedComponents(uint64_t a1)
{
  if (__cxa_guard_acquire(&qword_27D9FABE8))
  {
    _MergedGlobals = *(a1 + 16);

    __cxa_guard_release(&qword_27D9FABE8);
  }
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x282111610](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSRangeFromString(NSString *aString)
{
  v1 = MEMORY[0x28211F860](aString);
  result.length = v2;
  result.location = v1;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7918]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}