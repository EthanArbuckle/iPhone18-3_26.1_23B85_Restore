uint64_t cv::ColumnFilter<cv::Cast<float,short>,cv::ColumnNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_2840550F0;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

{
  *a1 = &unk_2840550F0;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::ColumnFilter<cv::Cast<float,short>,cv::ColumnNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_2840550F0;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::ColumnFilter<cv::Cast<float,short>,cv::ColumnNoVec>::operator()(uint64_t result, uint64_t *a2, uint64_t a3, int a4, int a5, int a6, double a7)
{
  if (a5)
  {
    v7 = *(result + 32);
    LODWORD(a7) = *(result + 116);
    v8 = *(result + 8);
    v9 = vdupq_lane_s32(*&a7, 0);
    do
    {
      if (a6 >= 4)
      {
        v10 = 0;
        v11 = *a2;
        v12 = vld1q_dup_f32(v7);
        do
        {
          v13 = vmlaq_f32(v9, *(v11 + 4 * v10), v12);
          if (v8 >= 2)
          {
            for (result = 1; result != v8; ++result)
            {
              v13 = vmlaq_n_f32(v13, *(a2[result] + 4 * v10), v7[result]);
            }
          }

          *(a3 + 2 * v10) = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(*v13.f32))), vcvtq_s64_f64(vrndxq_f64(vcvt_hight_f64_f32(v13)))));
          v10 += 4;
        }

        while (v10 <= a6 - 4);
        v10 = v10;
      }

      else
      {
        v10 = 0;
      }

      if (v10 < a6)
      {
        v14 = *v7;
        v15 = *a2;
        do
        {
          v16 = *&a7 + (v14 * *(v15 + 4 * v10));
          if (v8 >= 2)
          {
            for (i = 1; i != v8; ++i)
            {
              result = a2[i];
              v16 = v16 + (v7[i] * *(result + 4 * v10));
            }
          }

          v18 = rint(v16);
          if (v18 <= -32768)
          {
            LODWORD(v18) = -32768;
          }

          if (v18 >= 0x7FFF)
          {
            LOWORD(v18) = 0x7FFF;
          }

          *(a3 + 2 * v10++) = v18;
        }

        while (v10 != a6);
      }

      a3 += a4;
      ++a2;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::ColumnFilter<cv::Cast<double,short>,cv::ColumnNoVec>::ColumnFilter(uint64_t a1, cv::Mat *a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *a1 = &unk_284055138;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_18;
    }

    v10 = *(a2 + 3);
    if (v10)
    {
      atomic_fetch_add(v10, 1u);
      v11 = *(a1 + 40);
      if (v11)
      {
        if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v14 > 2)
      {
        goto LABEL_16;
      }
    }

    v15 = *(a2 + 1);
    if (v15 <= 2)
    {
      *(a1 + 20) = v15;
      *(a1 + 24) = *(a2 + 1);
      v16 = *(a2 + 9);
      v17 = *(a1 + 88);
      *v17 = *v16;
      v17[1] = v16[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v8, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v25, v8);
  cv::Mat::copyTo(a2, v25);
LABEL_18:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  *(a1 + 120) = a4;
  if ((*(a1 + 16) & 0xFFF) != 6 || v19 != 1 && v18 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v23, "ColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v25, 4294967081, v24, v23, __p, 2460);
    cv::error(v25, v20);
  }

  return a1;
}

uint64_t cv::ColumnFilter<cv::Cast<double,short>,cv::ColumnNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055138;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

{
  *a1 = &unk_284055138;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::ColumnFilter<cv::Cast<double,short>,cv::ColumnNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055138;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::ColumnFilter<cv::Cast<double,short>,cv::ColumnNoVec>::operator()(uint64_t result, uint64_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  if (a5)
  {
    v6 = *(result + 32);
    v7 = *(result + 120);
    v8 = *(result + 8);
    v9 = a4;
    v10 = vdupq_lane_s64(v7, 0);
    v11 = 8 * v8;
    do
    {
      if (a6 >= 4)
      {
        v12 = 0;
        v13 = *a2;
        v14 = vld1q_dup_f64(v6);
        do
        {
          v15 = (v13 + 8 * v12);
          v16 = vmlaq_f64(v10, v15[1], v14);
          v17 = vmlaq_f64(v10, *v15, v14);
          if (v8 >= 2)
          {
            v18 = 8;
            do
            {
              v19 = (a2[v18 / 8] + 8 * v12);
              v20 = v6[v18 / 8];
              v16 = vmlaq_n_f64(v16, v19[1], v20);
              v17 = vmlaq_n_f64(v17, *v19, v20);
              v18 += 8;
            }

            while (v11 != v18);
          }

          result = 2 * v12;
          *(a3 + 2 * v12) = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v17)), vcvtq_s64_f64(vrndxq_f64(v16))));
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
        v21 = *v6;
        v22 = *a2;
        do
        {
          v23 = *&v7 + v21 * *(v22 + 8 * v12);
          if (v8 >= 2)
          {
            v24 = 8;
            do
            {
              v23 = v23 + v6[v24 / 8] * *(a2[v24 / 8] + 8 * v12);
              v24 += 8;
            }

            while (v11 != v24);
          }

          result = rint(v23);
          if (result <= -32768)
          {
            LODWORD(result) = -32768;
          }

          if (result >= 0x7FFF)
          {
            result = 0x7FFFLL;
          }

          else
          {
            result = result;
          }

          *(a3 + 2 * v12++) = result;
        }

        while (v12 != a6);
      }

      a3 += v9;
      ++a2;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::ColumnFilter<cv::Cast<float,float>,cv::ColumnNoVec>::ColumnFilter(uint64_t a1, cv::Mat *a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *a1 = &unk_284055180;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_18;
    }

    v10 = *(a2 + 3);
    if (v10)
    {
      atomic_fetch_add(v10, 1u);
      v11 = *(a1 + 40);
      if (v11)
      {
        if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v14 > 2)
      {
        goto LABEL_16;
      }
    }

    v15 = *(a2 + 1);
    if (v15 <= 2)
    {
      *(a1 + 20) = v15;
      *(a1 + 24) = *(a2 + 1);
      v16 = *(a2 + 9);
      v17 = *(a1 + 88);
      *v17 = *v16;
      v17[1] = v16[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v8, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v26, v8);
  cv::Mat::copyTo(a2, v26);
LABEL_18:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  v20 = a4;
  *(a1 + 116) = v20;
  if ((*(a1 + 16) & 0xFFF) != 5 || v19 != 1 && v18 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v25, "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v24, "ColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v26, 4294967081, v25, v24, __p, 2460);
    cv::error(v26, v21);
  }

  return a1;
}

uint64_t cv::ColumnFilter<cv::Cast<float,float>,cv::ColumnNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055180;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

{
  *a1 = &unk_284055180;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::ColumnFilter<cv::Cast<float,float>,cv::ColumnNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055180;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::ColumnFilter<cv::Cast<float,float>,cv::ColumnNoVec>::operator()(uint64_t result, uint64_t *a2, uint64_t a3, int a4, int a5, int a6, double a7)
{
  if (a5)
  {
    v7 = *(result + 32);
    LODWORD(a7) = *(result + 116);
    v8 = *(result + 8);
    v9 = vdupq_lane_s32(*&a7, 0);
    do
    {
      if (a6 >= 4)
      {
        v10 = 0;
        v11 = *a2;
        do
        {
          v12 = vmlaq_n_f32(v9, *(v11 + 4 * v10), *v7);
          if (v8 >= 2)
          {
            for (i = 1; i != v8; ++i)
            {
              v12 = vmlaq_n_f32(v12, *(a2[i] + 4 * v10), v7[i]);
            }
          }

          *(a3 + 4 * v10) = v12;
          v10 += 4;
        }

        while (v10 <= a6 - 4);
        v10 = v10;
      }

      else
      {
        v10 = 0;
      }

      if (v10 < a6)
      {
        v14 = *a2;
        do
        {
          v15 = *&a7 + (*v7 * *(v14 + 4 * v10));
          if (v8 >= 2)
          {
            for (j = 1; j != v8; ++j)
            {
              v15 = v15 + (v7[j] * *(a2[j] + 4 * v10));
            }
          }

          *(a3 + 4 * v10++) = v15;
        }

        while (v10 != a6);
      }

      a3 += a4;
      ++a2;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::ColumnFilter<cv::Cast<double,double>,cv::ColumnNoVec>::ColumnFilter(uint64_t a1, cv::Mat *a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *a1 = &unk_2840551C8;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_18;
    }

    v10 = *(a2 + 3);
    if (v10)
    {
      atomic_fetch_add(v10, 1u);
      v11 = *(a1 + 40);
      if (v11)
      {
        if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v14 > 2)
      {
        goto LABEL_16;
      }
    }

    v15 = *(a2 + 1);
    if (v15 <= 2)
    {
      *(a1 + 20) = v15;
      *(a1 + 24) = *(a2 + 1);
      v16 = *(a2 + 9);
      v17 = *(a1 + 88);
      *v17 = *v16;
      v17[1] = v16[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v8, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v25, v8);
  cv::Mat::copyTo(a2, v25);
LABEL_18:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  *(a1 + 120) = a4;
  if ((*(a1 + 16) & 0xFFF) != 6 || v19 != 1 && v18 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v23, "ColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v25, 4294967081, v24, v23, __p, 2460);
    cv::error(v25, v20);
  }

  return a1;
}

uint64_t cv::ColumnFilter<cv::Cast<double,double>,cv::ColumnNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_2840551C8;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

{
  *a1 = &unk_2840551C8;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::ColumnFilter<cv::Cast<double,double>,cv::ColumnNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_2840551C8;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::ColumnFilter<cv::Cast<double,double>,cv::ColumnNoVec>::operator()(uint64_t result, uint64_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  if (a5)
  {
    v6 = *(result + 32);
    v7 = *(result + 120);
    v8 = *(result + 8);
    v9 = vdupq_lane_s64(v7, 0);
    v10 = 8 * v8;
    do
    {
      if (a6 >= 4)
      {
        v11 = 0;
        v12 = *a2;
        do
        {
          v13 = v12 + 8 * v11;
          v14 = *&v7 + *v6 * *v13;
          v15 = vmlaq_n_f64(v9, *(v13 + 8), *v6);
          v16 = *&v7 + *v6 * *(v13 + 24);
          if (v8 >= 2)
          {
            v17 = 8;
            do
            {
              v18 = a2[v17 / 8] + 8 * v11;
              v19 = v6[v17 / 8];
              v14 = v14 + v19 * *v18;
              v15 = vmlaq_n_f64(v15, *(v18 + 8), v19);
              v16 = v16 + v19 * *(v18 + 24);
              v17 += 8;
            }

            while (v10 != v17);
          }

          v20 = a3 + 8 * v11;
          *v20 = v14;
          *(v20 + 8) = v15;
          *(v20 + 24) = v16;
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
        v21 = *a2;
        do
        {
          v22 = *&v7 + *v6 * *(v21 + 8 * v11);
          if (v8 >= 2)
          {
            v23 = 8;
            do
            {
              v22 = v22 + v6[v23 / 8] * *(a2[v23 / 8] + 8 * v11);
              v23 += 8;
            }

            while (v10 != v23);
          }

          *(a3 + 8 * v11++) = v22;
        }

        while (v11 != a6);
      }

      a3 += a4;
      ++a2;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::SymmColumnSmallFilter<cv::FixedPtCastEx<int,unsigned char>,cv::ColumnNoVec>::SymmColumnSmallFilter(uint64_t a1, cv::Mat *a2, int a3, int a4, void *a5, double a6)
{
  v7 = cv::SymmColumnFilter<cv::FixedPtCastEx<int,unsigned char>,cv::ColumnNoVec>::SymmColumnFilter(a1, a2, a3, a4, a5, a6);
  *v7 = &unk_284055210;
  if (*(v7 + 8) != 3)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "this->ksize == 3");
    std::string::basic_string[abi:ne200100]<0>(v11, "SymmColumnSmallFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v13, 4294967081, v12, v11, __p, 2629);
    cv::error(v13, v8);
  }

  return a1;
}

void sub_22D204654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  cv::ColumnFilter<cv::FixedPtCastEx<int,unsigned char>,cv::ColumnNoVec>::~ColumnFilter(v27);
  _Unwind_Resume(a1);
}

uint64_t cv::SymmColumnFilter<cv::FixedPtCastEx<int,unsigned char>,cv::ColumnNoVec>::SymmColumnFilter(uint64_t a1, cv::Mat *a2, int a3, int a4, void *a5, double a6)
{
  v8 = cv::ColumnFilter<cv::FixedPtCastEx<int,unsigned char>,cv::ColumnNoVec>::ColumnFilter(a1, a2, a3, a5, a6);
  *v8 = &unk_284055270;
  *(v8 + 128) = a4;
  if ((a4 & 3) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0");
    std::string::basic_string[abi:ne200100]<0>(v12, "SymmColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v14, 4294967081, v13, v12, __p, 2523);
    cv::error(v14, v9);
  }

  return a1;
}

void sub_22D2047B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  cv::ColumnFilter<cv::FixedPtCastEx<int,unsigned char>,cv::ColumnNoVec>::~ColumnFilter(v27);
  _Unwind_Resume(a1);
}

uint64_t cv::SymmColumnSmallFilter<cv::FixedPtCastEx<int,unsigned char>,cv::ColumnNoVec>::~SymmColumnSmallFilter(uint64_t a1)
{
  *a1 = &unk_284054F88;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::SymmColumnSmallFilter<cv::FixedPtCastEx<int,unsigned char>,cv::ColumnNoVec>::~SymmColumnSmallFilter(uint64_t a1)
{
  *a1 = &unk_284054F88;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::SymmColumnSmallFilter<cv::FixedPtCastEx<int,unsigned char>,cv::ColumnNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = (*(result + 32) + 4 * (*(result + 8) / 2));
  v7 = *v6;
  v8 = v6[1];
  v9 = v8 == 1;
  if (*v6 != 2)
  {
    v9 = 0;
  }

  if (v7 == -2)
  {
    v9 = 0;
    v10 = v8 == 1;
  }

  else
  {
    v10 = 0;
  }

  v152 = v10;
  if (v8 == 1 || v8 == -1)
  {
    if (v8 + *(v6 - 1))
    {
      v12 = 0;
    }

    else
    {
      v12 = v7 == 0;
    }

    v13 = v12;
    if (a5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v13 = 0;
    if (a5)
    {
LABEL_20:
      v14 = *(result + 112);
      v15 = (a2 + 8 * ((*(result + 8) + (*(result + 8) >> 31)) >> 1));
      v16 = *(result + 128);
      v17 = *(result + 124) + HIDWORD(v14);
      result = a4;
      v18 = a6 - 4;
      v151 = v6;
      do
      {
        v19 = *(v15 - 1);
        v20 = *v15;
        v22 = v15[1];
        ++v15;
        v21 = v22;
        if (v16)
        {
          if (!v9)
          {
            if (v152)
            {
              if (a6 >= 4)
              {
                v25 = 0;
                v87 = (v20 + 8);
                v88 = (v19 + 8);
                v89 = (v21 + 8);
                do
                {
                  v90 = *(v88 - 1);
                  v91 = *(v87 - 1);
                  v92 = *(v89 - 1);
                  v93 = (v17 + *(v88 - 2) - 2 * *(v87 - 2) + *(v89 - 2)) >> v14;
                  v94 = v93 & ~(v93 >> 31);
                  if (v94 >= 255)
                  {
                    LOBYTE(v94) = -1;
                  }

                  v95 = (a3 + v25);
                  *(a3 + v25) = v94;
                  v96 = (v17 + v90 - 2 * v91 + v92) >> v14;
                  v97 = v96 & ~(v96 >> 31);
                  if (v97 >= 255)
                  {
                    LOBYTE(v97) = -1;
                  }

                  v95[1] = v97;
                  v98 = *v88;
                  v99 = v88[1];
                  v88 += 4;
                  v100 = *v87;
                  v101 = v87[1];
                  v87 += 4;
                  v102 = *v89;
                  v103 = v89[1];
                  v89 += 4;
                  v104 = (v17 + v98 - 2 * v100 + v102) >> v14;
                  v105 = v104 & ~(v104 >> 31);
                  if (v105 >= 255)
                  {
                    LOBYTE(v105) = -1;
                  }

                  v106 = (v17 + v99 - 2 * v101 + v103) >> v14;
                  v107 = v106 & ~(v106 >> 31);
                  if (v107 >= 255)
                  {
                    LOBYTE(v107) = -1;
                  }

                  v25 += 4;
                  v95[2] = v105;
                  v95[3] = v107;
                }

                while (v25 <= v18);
                v25 = v25;
                v6 = v151;
              }

              else
              {
                v25 = 0;
              }

              if (v25 < a6)
              {
                do
                {
                  v108 = (v17 + *(v19 + 4 * v25) - 2 * *(v20 + 4 * v25) + *(v21 + 4 * v25)) >> v14;
                  v109 = v108 & ~(v108 >> 31);
                  if (v109 >= 255)
                  {
                    LOBYTE(v109) = -1;
                  }

                  *(a3 + v25++) = v109;
                }

                while (a6 != v25);
                goto LABEL_143;
              }
            }

            else
            {
              if (a6 >= 4)
              {
                v25 = 0;
                v110 = (v21 + 8);
                v111 = (v19 + 8);
                v112 = (v20 + 8);
                do
                {
                  v113 = *(v110 - 1) + *(v111 - 1);
                  v114 = *(v112 - 1);
                  v115 = (v17 + *(v112 - 2) * v7 + (*(v110 - 2) + *(v111 - 2)) * v8) >> v14;
                  v116 = v115 & ~(v115 >> 31);
                  if (v116 >= 255)
                  {
                    LOBYTE(v116) = -1;
                  }

                  v117 = (a3 + v25);
                  *(a3 + v25) = v116;
                  v118 = (v17 + v114 * v7 + v113 * v8) >> v14;
                  v119 = v118 & ~(v118 >> 31);
                  if (v119 >= 255)
                  {
                    LOBYTE(v119) = -1;
                  }

                  v117[1] = v119;
                  v120 = *v111;
                  v121 = v111[1];
                  v111 += 4;
                  v122 = *v110;
                  v123 = v110[1];
                  v110 += 4;
                  v124 = v122 + v120;
                  v125 = v123 + v121;
                  v126 = *v112;
                  v127 = v112[1];
                  v112 += 4;
                  v128 = ((v17 + v126 * v7 + v124 * v8) >> v14) & ~((v17 + v126 * v7 + v124 * v8) >> v14 >> 31);
                  if (v128 >= 255)
                  {
                    LOBYTE(v128) = -1;
                  }

                  v117[2] = v128;
                  v129 = (v17 + v127 * v7 + v125 * v8) >> v14;
                  v130 = v129 & ~(v129 >> 31);
                  if (v130 >= 255)
                  {
                    LOBYTE(v130) = -1;
                  }

                  v117[3] = v130;
                  v25 += 4;
                }

                while (v25 <= v18);
                v25 = v25;
              }

              else
              {
                v25 = 0;
              }

              if (v25 < a6)
              {
                do
                {
                  v131 = (v17 + *(v20 + 4 * v25) * v7 + (*(v21 + 4 * v25) + *(v19 + 4 * v25)) * v8) >> v14;
                  v132 = v131 & ~(v131 >> 31);
                  if (v132 >= 255)
                  {
                    LOBYTE(v132) = -1;
                  }

                  *(a3 + v25++) = v132;
                }

                while (a6 != v25);
                goto LABEL_143;
              }
            }

LABEL_123:
            if (v25 < a6)
            {
              do
              {
                v133 = (v17 + *(v20 + 4 * v25) * v7 + (*(v21 + 4 * v25) + *(v19 + 4 * v25)) * v8) >> v14;
                v134 = v133 & ~(v133 >> 31);
                if (v134 >= 255)
                {
                  LOBYTE(v134) = -1;
                }

                *(a3 + v25++) = v134;
              }

              while (a6 != v25);
            }

            goto LABEL_143;
          }

          if (a6 >= 4)
          {
            v25 = 0;
            v43 = (v20 + 8);
            v44 = (v19 + 8);
            v45 = (v21 + 8);
            do
            {
              v46 = *(v44 - 1);
              v47 = *(v43 - 1);
              v48 = *(v45 - 1);
              v49 = (v17 + *(v44 - 2) + 2 * *(v43 - 2) + *(v45 - 2)) >> v14;
              v50 = v49 & ~(v49 >> 31);
              if (v50 >= 255)
              {
                LOBYTE(v50) = -1;
              }

              v51 = (a3 + v25);
              *(a3 + v25) = v50;
              v52 = ((v17 + v46 + 2 * v47 + v48) >> v14) & ~((v17 + v46 + 2 * v47 + v48) >> v14 >> 31);
              if (v52 >= 255)
              {
                LOBYTE(v52) = -1;
              }

              v51[1] = v52;
              v53 = *v44;
              v54 = v44[1];
              v44 += 4;
              v55 = *v43;
              v56 = v43[1];
              v43 += 4;
              v58 = *v45;
              v57 = v45[1];
              v45 += 4;
              v59 = (v17 + v53 + 2 * v55 + v58) >> v14;
              v60 = v59 & ~(v59 >> 31);
              if (v60 >= 255)
              {
                LOBYTE(v60) = -1;
              }

              v61 = ((v17 + v54 + 2 * v56 + v57) >> v14) & ~((v17 + v54 + 2 * v56 + v57) >> v14 >> 31);
              if (v61 >= 255)
              {
                LOBYTE(v61) = -1;
              }

              v25 += 4;
              v51[2] = v60;
              v51[3] = v61;
            }

            while (v25 <= v18);
            v25 = v25;
            v6 = v151;
          }

          else
          {
            v25 = 0;
          }

          if (v25 >= a6)
          {
            goto LABEL_123;
          }

          do
          {
            v62 = (v17 + *(v19 + 4 * v25) + 2 * *(v20 + 4 * v25) + *(v21 + 4 * v25)) >> v14;
            v63 = v62 & ~(v62 >> 31);
            if (v63 >= 255)
            {
              LOBYTE(v63) = -1;
            }

            *(a3 + v25++) = v63;
          }

          while (a6 != v25);
        }

        else if (v13)
        {
          if (v8 >= 0)
          {
            v23 = v19;
          }

          else
          {
            v23 = v21;
          }

          if (v8 >= 0)
          {
            v19 = v21;
          }

          if (a6 >= 4)
          {
            v24 = 0;
            v27 = (v19 + 8);
            v28 = (v23 + 8);
            do
            {
              v29 = *(v27 - 1);
              v30 = *(v28 - 1);
              v31 = (v17 + *(v27 - 2) - *(v28 - 2)) >> v14;
              v32 = v31 & ~(v31 >> 31);
              if (v32 >= 255)
              {
                LOBYTE(v32) = -1;
              }

              v33 = (a3 + v24);
              *(a3 + v24) = v32;
              v34 = ((v17 + v29 - v30) >> v14) & ~((v17 + v29 - v30) >> v14 >> 31);
              if (v34 >= 255)
              {
                LOBYTE(v34) = -1;
              }

              v33[1] = v34;
              v35 = *v27;
              v36 = v27[1];
              v27 += 4;
              v37 = *v28;
              v38 = v28[1];
              v28 += 4;
              v39 = ((v17 + v35 - v37) >> v14) & ~((v17 + v35 - v37) >> v14 >> 31);
              if (v39 >= 255)
              {
                LOBYTE(v39) = -1;
              }

              v33[2] = v39;
              v40 = ((v17 + v36 - v38) >> v14) & ~((v17 + v36 - v38) >> v14 >> 31);
              if (v40 >= 255)
              {
                LOBYTE(v40) = -1;
              }

              v33[3] = v40;
              v24 += 4;
            }

            while (v24 <= v18);
            v24 = v24;
          }

          else
          {
            v24 = 0;
          }

          if (v24 < a6)
          {
            do
            {
              v41 = (v17 + *(v19 + 4 * v24) - *(v23 + 4 * v24)) >> v14;
              v42 = v41 & ~(v41 >> 31);
              if (v42 >= 255)
              {
                LOBYTE(v42) = -1;
              }

              *(a3 + v24++) = v42;
            }

            while (a6 != v24);
          }
        }

        else if (*v6)
        {
          if (a6 >= 4)
          {
            v26 = 0;
            v65 = (v19 + 8);
            v66 = (v21 + 8);
            v67 = (v20 + 8);
            do
            {
              v68 = *(v66 - 1) - *(v65 - 1);
              v69 = *(v67 - 1);
              v70 = (v17 + *(v67 - 2) * v7 + (*(v66 - 2) - *(v65 - 2)) * v8) >> v14;
              v71 = v70 & ~(v70 >> 31);
              if (v71 >= 255)
              {
                LOBYTE(v71) = -1;
              }

              v72 = (a3 + v26);
              *(a3 + v26) = v71;
              v73 = (v17 + v69 * v7 + v68 * v8) >> v14;
              v74 = v73 & ~(v73 >> 31);
              if (v74 >= 255)
              {
                LOBYTE(v74) = -1;
              }

              v72[1] = v74;
              v75 = *v66;
              v76 = v66[1];
              v66 += 4;
              v77 = *v65;
              v78 = v65[1];
              v65 += 4;
              v79 = v75 - v77;
              v80 = *v67;
              v67 += 4;
              v81 = v76 - v78;
              v82 = v17 + v80 * v7;
              v83 = ((v82 + v79 * v8) >> v14) & ~((v82 + v79 * v8) >> v14 >> 31);
              if (v83 >= 255)
              {
                LOBYTE(v83) = -1;
              }

              v72[2] = v83;
              v84 = ((v82 + v81 * v8) >> v14) & ~((v82 + v81 * v8) >> v14 >> 31);
              if (v84 >= 255)
              {
                LOBYTE(v84) = -1;
              }

              v72[3] = v84;
              v26 += 4;
            }

            while (v26 <= v18);
            v26 = v26;
          }

          else
          {
            v26 = 0;
          }

          if (v26 < a6)
          {
            do
            {
              v85 = (v17 + *(v20 + 4 * v26) * v7 + (*(v21 + 4 * v26) - *(v19 + 4 * v26)) * v8) >> v14;
              v86 = v85 & ~(v85 >> 31);
              if (v86 >= 255)
              {
                LOBYTE(v86) = -1;
              }

              *(a3 + v26++) = v86;
            }

            while (a6 != v26);
          }
        }

        else
        {
          if (a6 >= 4)
          {
            v64 = 0;
            v135 = (v21 + 8);
            v136 = (v19 + 8);
            do
            {
              v137 = *(v135 - 1) - *(v136 - 1);
              v138 = (v17 + (*(v135 - 2) - *(v136 - 2)) * v8) >> v14;
              v139 = v138 & ~(v138 >> 31);
              if (v139 >= 255)
              {
                LOBYTE(v139) = -1;
              }

              v140 = (a3 + v64);
              *(a3 + v64) = v139;
              v141 = ((v17 + v137 * v8) >> v14) & ~((v17 + v137 * v8) >> v14 >> 31);
              if (v141 >= 255)
              {
                LOBYTE(v141) = -1;
              }

              v140[1] = v141;
              v142 = *v135;
              v143 = v135[1];
              v135 += 4;
              v144 = *v136;
              v145 = v136[1];
              v136 += 4;
              v146 = v143 - v145;
              v147 = ((v17 + (v142 - v144) * v8) >> v14) & ~((v17 + (v142 - v144) * v8) >> v14 >> 31);
              if (v147 >= 255)
              {
                LOBYTE(v147) = -1;
              }

              v140[2] = v147;
              v148 = ((v17 + v146 * v8) >> v14) & ~((v17 + v146 * v8) >> v14 >> 31);
              if (v148 >= 255)
              {
                LOBYTE(v148) = -1;
              }

              v140[3] = v148;
              v64 += 4;
            }

            while (v64 <= v18);
            v64 = v64;
          }

          else
          {
            v64 = 0;
          }

          if (v64 < a6)
          {
            do
            {
              v149 = (v17 + (*(v21 + 4 * v64) - *(v19 + 4 * v64)) * v8) >> v14;
              v150 = v149 & ~(v149 >> 31);
              if (v150 >= 255)
              {
                LOBYTE(v150) = -1;
              }

              *(a3 + v64++) = v150;
            }

            while (a6 != v64);
          }
        }

LABEL_143:
        a3 += a4;
        --a5;
      }

      while (a5);
    }
  }

  return result;
}

uint64_t cv::SymmColumnFilter<cv::FixedPtCastEx<int,unsigned char>,cv::ColumnNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_284054F88;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::SymmColumnFilter<cv::FixedPtCastEx<int,unsigned char>,cv::ColumnNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_284054F88;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::SymmColumnFilter<cv::FixedPtCastEx<int,unsigned char>,cv::ColumnNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = (v6 + (v6 >> 31)) >> 1;
  v8 = (*(result + 32) + 4 * (v6 / 2));
  v9 = *(result + 124);
  v10 = *(result + 112);
  v11 = *(result + 116);
  v12 = (a2 + 8 * (v6 / 2));
  if (*(result + 128))
  {
    if (a5)
    {
      v31 = a4;
      v32 = (v6 / 2 + 1);
      v33 = vdupq_n_s32(v9);
      v34 = vdupq_n_s32(v11);
      result = a2 + 8 * v7 - 8;
      v35 = vnegq_s32(vdupq_n_s32(v10));
      v36.i64[0] = 0xFF000000FFLL;
      v36.i64[1] = 0xFF000000FFLL;
      do
      {
        if (a6 >= 4)
        {
          v37 = 0;
          do
          {
            v38 = vld1q_dup_f32(v8);
            v39 = vmlaq_s32(v33, *(*v12 + 4 * v37), v38);
            if (v6 >= 2)
            {
              v40 = result;
              v41 = 1;
              do
              {
                v42 = *v40--;
                v43 = &v8[v41];
                v44 = vld1q_dup_f32(v43);
                v39 = vmlaq_s32(v39, vaddq_s32(*(v42 + 4 * v37), *(v12[v41++] + 4 * v37)), v44);
              }

              while (v32 != v41);
            }

            *(a3 + v37) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v39, v34), v35), 0), v36)), *v33.i8).u32[0];
            v37 += 4;
          }

          while (v37 <= a6 - 4);
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
            v45 = v9 + *(*v12 + 4 * v37) * *v8;
            if (v6 >= 2)
            {
              v46 = result;
              v47 = 1;
              do
              {
                v48 = *v46--;
                v45 += (*(v48 + 4 * v37) + *(v12[v47] + 4 * v37)) * LODWORD(v8[v47]);
                ++v47;
              }

              while (v32 != v47);
            }

            v49 = ((v45 + v11) >> v10) & ~((v45 + v11) >> v10 >> 31);
            if (v49 >= 255)
            {
              LOBYTE(v49) = -1;
            }

            *(a3 + v37++) = v49;
          }

          while (v37 != a6);
        }

        a3 += v31;
        ++v12;
        result += 8;
        --a5;
      }

      while (a5);
    }
  }

  else if (a5)
  {
    v13 = a4;
    v14 = (v6 / 2 + 1);
    v15 = vdupq_n_s32(v9);
    v16 = vdupq_n_s32(v11);
    result = a2 + 8 * v7 - 8;
    v17 = vnegq_s32(vdupq_n_s32(v10));
    v18.i64[0] = 0xFF000000FFLL;
    v18.i64[1] = 0xFF000000FFLL;
    do
    {
      if (a6 >= 4)
      {
        v19 = 0;
        do
        {
          v20 = v15;
          if (v6 >= 2)
          {
            v21 = result;
            v22 = 1;
            v20 = v15;
            do
            {
              v23 = *v21--;
              v24 = &v8[v22];
              v25 = vld1q_dup_f32(v24);
              v20 = vmlaq_s32(v20, vsubq_s32(*(v12[v22++] + 4 * v19), *(v23 + 4 * v19)), v25);
            }

            while (v14 != v22);
          }

          *(a3 + v19) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v20, v16), v17), 0), v18)), *v15.i8).u32[0];
          v19 += 4;
        }

        while (v19 <= a6 - 4);
        v19 = v19;
      }

      else
      {
        v19 = 0;
      }

      if (v19 < a6)
      {
        do
        {
          v26 = v9;
          if (v6 >= 2)
          {
            v27 = result;
            v28 = 1;
            v26 = v9;
            do
            {
              v29 = *v27--;
              v26 += (*(v12[v28] + 4 * v19) - *(v29 + 4 * v19)) * LODWORD(v8[v28]);
              ++v28;
            }

            while (v14 != v28);
          }

          v30 = ((v26 + v11) >> v10) & ~((v26 + v11) >> v10 >> 31);
          if (v30 >= 255)
          {
            LOBYTE(v30) = -1;
          }

          *(a3 + v19++) = v30;
        }

        while (v19 != a6);
      }

      a3 += v13;
      ++v12;
      result += 8;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::SymmColumnSmallFilter<cv::Cast<int,short>,cv::SymmColumnSmallNoVec>::SymmColumnSmallFilter(uint64_t a1, cv::Mat *a2, int a3, int a4, double a5)
{
  v6 = cv::SymmColumnFilter<cv::Cast<int,short>,cv::SymmColumnSmallNoVec>::SymmColumnFilter(a1, a2, a3, a4, a5);
  *v6 = &unk_2840552A0;
  if (*(v6 + 8) != 3)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "this->ksize == 3");
    std::string::basic_string[abi:ne200100]<0>(v10, "SymmColumnSmallFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v12, 4294967081, v11, v10, __p, 2629);
    cv::error(v12, v7);
  }

  return a1;
}

void sub_22D205664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  cv::ColumnFilter<cv::Cast<int,short>,cv::SymmColumnSmallNoVec>::~ColumnFilter(v27);
  _Unwind_Resume(a1);
}

uint64_t cv::SymmColumnFilter<cv::Cast<int,short>,cv::SymmColumnSmallNoVec>::SymmColumnFilter(uint64_t a1, cv::Mat *a2, int a3, int a4, double a5)
{
  v7 = cv::ColumnFilter<cv::Cast<int,short>,cv::SymmColumnSmallNoVec>::ColumnFilter(a1, a2, a3, a5);
  *v7 = &unk_284055318;
  *(v7 + 120) = a4;
  if ((a4 & 3) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0");
    std::string::basic_string[abi:ne200100]<0>(v11, "SymmColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v13, 4294967081, v12, v11, __p, 2523);
    cv::error(v13, v8);
  }

  return a1;
}

void sub_22D2057C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  cv::ColumnFilter<cv::Cast<int,short>,cv::SymmColumnSmallNoVec>::~ColumnFilter(v27);
  _Unwind_Resume(a1);
}

uint64_t cv::SymmColumnSmallFilter<cv::Cast<int,short>,cv::SymmColumnSmallNoVec>::~SymmColumnSmallFilter(uint64_t a1)
{
  *a1 = &unk_284055348;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::SymmColumnSmallFilter<cv::Cast<int,short>,cv::SymmColumnSmallNoVec>::~SymmColumnSmallFilter(uint64_t a1)
{
  *a1 = &unk_284055348;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::SymmColumnSmallFilter<cv::Cast<int,short>,cv::SymmColumnSmallNoVec>::operator()(uint64_t result, uint64_t a2, int16x4_t *a3, int a4, int a5, int a6, double a7, double a8, double a9, int8x16_t a10, double a11, int32x4_t a12)
{
  v12 = (*(result + 32) + 4 * (*(result + 8) / 2));
  a10.i64[0] = *v12;
  v13 = *v12;
  v14 = HIDWORD(*v12) == 1;
  v15 = v14;
  if (v13 != 2)
  {
    v15 = 0;
  }

  if (v13 == -2)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
  }

  v16 = HIDWORD(*v12);
  if (a10.i32[1] == 1 || a10.i32[1] == -1)
  {
    v18.i32[0] = 0;
    v18.i32[1] = -*(v12 - 1);
    v19 = vceq_s32(*a10.i8, v18);
    v20 = vand_s8(v19, vdup_lane_s32(v19, 1)).u8[0];
  }

  else
  {
    v20 = 0;
  }

  if (a5)
  {
    v22 = *(result + 116);
    v21 = *(result + 120);
    v23 = (a2 + 8 * ((*(result + 8) + (*(result + 8) >> 31)) >> 1));
    v24 = a6 - 4;
    v25 = *v23;
    result = a6;
    v26 = vdupq_lane_s32(*a10.i8, 1);
    v27 = vdupq_lane_s32(*a10.i8, 0);
    v28 = vdupq_n_s32(v22);
    v29 = vextq_s8(a10, a10, 4uLL);
    v30 = v29;
    v30.i32[1] = v22;
    v31 = vzip1q_s32(v30, v30);
    v31.i32[2] = v29.i32[0];
    v32 = vextq_s8(v29, v29, 8uLL).u64[0];
    do
    {
      v33 = v25;
      v34 = v23[1];
      ++v23;
      v25 = v34;
      v35 = *(v23 - 2);
      if (v21)
      {
        v38 = 0;
        if (!v15)
        {
          if (v14)
          {
            if (a6 >= 4)
            {
              v49 = *(v23 - 2);
              v50 = v33;
              v51 = v25;
              v52 = a3;
              do
              {
                v53 = *v49++;
                v54 = v53;
                v55 = *v50++;
                v56 = v55;
                v57 = *v51++;
                a12 = vaddq_s32(vsubq_s32(vaddq_s32(v54, v28), vaddq_s32(v56, v56)), v57);
                *v52++ = vqmovn_s32(a12);
                v38 += 4;
              }

              while (v38 <= v24);
              v38 = v38;
            }

            if (v38 < a6)
            {
              do
              {
                v58 = v35->i32[v38] + v22 - 2 * v33->i32[v38] + v25->i32[v38];
                if (v58 <= -32768)
                {
                  v58 = -32768;
                }

                if (v58 >= 0x7FFF)
                {
                  LOWORD(v58) = 0x7FFF;
                }

                a3->i16[v38++] = v58;
              }

              while (a6 != v38);
              goto LABEL_98;
            }
          }

          else
          {
            if (a6 >= 4)
            {
              v66 = *(v23 - 2);
              v67 = v25;
              v68 = v33;
              v69 = a3;
              do
              {
                v70 = *v66++;
                v71 = v70;
                v72 = *v67++;
                a12 = vaddq_s32(v72, v71);
                v73 = *v68++;
                *v69++ = vqmovn_s32(vmlaq_s32(vmlaq_s32(v28, v73, v27), a12, v26));
                v38 += 4;
              }

              while (v38 <= v24);
              v38 = v38;
            }

            if (v38 < a6)
            {
              do
              {
                v74 = v22 + v33->i32[v38] * v13 + (v25->i32[v38] + v35->i32[v38]) * v16;
                if (v74 <= -32768)
                {
                  v74 = -32768;
                }

                if (v74 >= 0x7FFF)
                {
                  LOWORD(v74) = 0x7FFF;
                }

                a3->i16[v38++] = v74;
              }

              while (a6 != v38);
              goto LABEL_98;
            }
          }

LABEL_72:
          if (v38 < a6)
          {
            do
            {
              v75 = v22 + v33->i32[v38] * v13 + (v25->i32[v38] + v35->i32[v38]) * v16;
              if (v75 <= -32768)
              {
                v75 = -32768;
              }

              if (v75 >= 0x7FFF)
              {
                LOWORD(v75) = 0x7FFF;
              }

              a3->i16[v38++] = v75;
            }

            while (a6 != v38);
          }

          goto LABEL_98;
        }

        if (a6 >= 4)
        {
          v39 = *(v23 - 2);
          v40 = v33;
          v41 = v25;
          v42 = a3;
          do
          {
            v43 = *v39++;
            v44 = v43;
            v45 = *v40++;
            v46 = vaddq_s32(v45, v45);
            v47 = *v41++;
            a12 = vaddq_s32(vaddq_s32(vaddq_s32(v44, v28), v46), v47);
            *v42++ = vqmovn_s32(a12);
            v38 += 4;
          }

          while (v38 <= v24);
          v38 = v38;
        }

        if (v38 >= a6)
        {
          goto LABEL_72;
        }

        do
        {
          v48 = v35->i32[v38] + v22 + 2 * v33->i32[v38] + v25->i32[v38];
          if (v48 <= -32768)
          {
            v48 = -32768;
          }

          if (v48 >= 0x7FFF)
          {
            LOWORD(v48) = 0x7FFF;
          }

          a3->i16[v38++] = v48;
        }

        while (a6 != v38);
      }

      else if (v20)
      {
        if (v16 >= 0)
        {
          v36 = *(v23 - 2);
        }

        else
        {
          v36 = v25;
        }

        if (v16 >= 0)
        {
          v35 = v25;
        }

        if (a6 >= 4)
        {
          v37 = 0;
          v59 = v35;
          v60 = v36;
          v61 = a3;
          do
          {
            v62 = *v59++;
            v63 = v62;
            v64 = *v60++;
            a12 = vsubq_s32(vaddq_s32(v63, v28), v64);
            *v61++ = vqmovn_s32(a12);
            v37 += 4;
          }

          while (v37 <= v24);
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
            v65 = v35->i32[v37] + v22 - v36->i32[v37];
            if (v65 <= -32768)
            {
              v65 = -32768;
            }

            if (v65 >= 0x7FFF)
            {
              LOWORD(v65) = 0x7FFF;
            }

            a3->i16[v37++] = v65;
          }

          while (a6 != v37);
        }
      }

      else if (v13)
      {
        if (a6 < 4)
        {
          v85 = 0;
        }

        else
        {
          v84 = 0;
          v85 = 0;
          v86 = a3;
          do
          {
            a12.i64[0] = v25[v84].i64[0];
            v87.i64[0] = v35[v84].i64[0];
            *v88.i8 = vmla_s32(*v28.i8, *v33[v84].i8, *v27.i8);
            a12.i32[2] = v25[v84].i32[2];
            v89 = a12;
            v89.i32[3] = v33[v84].i32[2];
            v87.i64[1] = v32;
            v90 = vmlaq_s32(v31, v89, v87);
            v87.i32[2] = v35[v84].i32[2];
            v91 = vmulq_s32(vsubq_s32(a12, v87), v31);
            v91.i32[3] = v90.i32[3];
            v88.i32[2] = v90.i32[3];
            v88.i32[3] = (v25[v84].i32[3] - v35[v84].i32[3]) * v16;
            a12 = vaddq_s32(v91, v88);
            *v86++ = vqmovn_s32(a12);
            v85 += 4;
            ++v84;
          }

          while (v85 <= v24);
          v85 = v85;
        }

        if (v85 < a6)
        {
          do
          {
            v92 = v22 + v33->i32[v85] * v13 + (v25->i32[v85] - v35->i32[v85]) * v16;
            if (v92 <= -32768)
            {
              v92 = -32768;
            }

            if (v92 >= 0x7FFF)
            {
              LOWORD(v92) = 0x7FFF;
            }

            a3->i16[v85++] = v92;
          }

          while (a6 != v85);
        }
      }

      else
      {
        v76 = 0;
        if (a6 >= 4)
        {
          v77 = v25;
          v78 = *(v23 - 2);
          v79 = a3;
          do
          {
            v80 = *v77++;
            v81 = v80;
            v82 = *v78++;
            a12 = vsubq_s32(v81, v82);
            *v79++ = vqmovn_s32(vmlaq_s32(v28, a12, v26));
            v76 += 4;
          }

          while (v76 <= v24);
          v76 = v76;
        }

        if (v76 < a6)
        {
          do
          {
            v83 = v22 + (v25->i32[v76] - v35->i32[v76]) * v16;
            if (v83 <= -32768)
            {
              v83 = -32768;
            }

            if (v83 >= 0x7FFF)
            {
              LOWORD(v83) = 0x7FFF;
            }

            a3->i16[v76++] = v83;
          }

          while (a6 != v76);
        }
      }

LABEL_98:
      a3 = (a3 + a4);
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::ColumnFilter<cv::Cast<int,short>,cv::SymmColumnSmallNoVec>::ColumnFilter(uint64_t a1, cv::Mat *a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *a1 = &unk_284055348;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_18;
    }

    v10 = *(a2 + 3);
    if (v10)
    {
      atomic_fetch_add(v10, 1u);
      v11 = *(a1 + 40);
      if (v11)
      {
        if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v14 > 2)
      {
        goto LABEL_16;
      }
    }

    v15 = *(a2 + 1);
    if (v15 <= 2)
    {
      *(a1 + 20) = v15;
      *(a1 + 24) = *(a2 + 1);
      v16 = *(a2 + 9);
      v17 = *(a1 + 88);
      *v17 = *v16;
      v17[1] = v16[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v8, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v25, v8);
  cv::Mat::copyTo(a2, v25);
LABEL_18:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  *(a1 + 116) = rint(a4);
  if ((*(a1 + 16) & 0xFFF) != 4 || v19 != 1 && v18 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v23, "ColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v25, 4294967081, v24, v23, __p, 2460);
    cv::error(v25, v20);
  }

  return a1;
}

uint64_t cv::ColumnFilter<cv::Cast<int,short>,cv::SymmColumnSmallNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055348;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

{
  *a1 = &unk_284055348;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

uint64_t cv::SymmColumnFilter<cv::Cast<int,short>,cv::SymmColumnSmallNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055348;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::SymmColumnFilter<cv::Cast<int,short>,cv::SymmColumnSmallNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055348;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::SymmColumnFilter<cv::Cast<int,short>,cv::SymmColumnSmallNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = (v6 + (v6 >> 31)) >> 1;
  v8 = (*(result + 32) + 4 * (v6 / 2));
  v9 = *(result + 116);
  v10 = (a2 + 8 * (v6 / 2));
  if (*(result + 120))
  {
    if (a5)
    {
      v26 = a4;
      v27 = (v6 / 2 + 1);
      v28 = vdupq_n_s32(v9);
      v29 = a2 + 8 * v7 - 8;
      result = 0x7FFFLL;
      do
      {
        if (a6 >= 4)
        {
          v30 = 0;
          v31 = *v10;
          v32 = vld1q_dup_f32(v8);
          do
          {
            v33 = vmlaq_s32(v28, *(v31 + 4 * v30), v32);
            if (v6 >= 2)
            {
              v34 = v29;
              v35 = 1;
              do
              {
                v36 = *v34--;
                v37 = &v8[v35];
                v38 = vld1q_dup_f32(v37);
                v33 = vmlaq_s32(v33, vaddq_s32(*(v36 + 4 * v30), *(v10[v35++] + 4 * v30)), v38);
              }

              while (v27 != v35);
            }

            *(a3 + 2 * v30) = vqmovn_s32(v33);
            v30 += 4;
          }

          while (v30 <= a6 - 4);
          v30 = v30;
        }

        else
        {
          v30 = 0;
        }

        if (v30 < a6)
        {
          v39 = *v8;
          v40 = *v10;
          do
          {
            v41 = v9 + *(v40 + 4 * v30) * LODWORD(v39);
            if (v6 >= 2)
            {
              v42 = v29;
              v43 = 1;
              do
              {
                v44 = *v42--;
                v41 += (*(v44 + 4 * v30) + *(v10[v43] + 4 * v30)) * LODWORD(v8[v43]);
                ++v43;
              }

              while (v27 != v43);
            }

            if (v41 <= -32768)
            {
              v41 = -32768;
            }

            if (v41 >= 0x7FFF)
            {
              LOWORD(v41) = 0x7FFF;
            }

            *(a3 + 2 * v30++) = v41;
          }

          while (v30 != a6);
        }

        a3 += v26;
        ++v10;
        v29 += 8;
        --a5;
      }

      while (a5);
    }
  }

  else if (a5)
  {
    v11 = a4;
    v12 = (v6 / 2 + 1);
    v13 = vdupq_n_s32(v9);
    v14 = a2 + 8 * v7 - 8;
    result = 0x7FFFLL;
    do
    {
      if (a6 >= 4)
      {
        v15 = 0;
        do
        {
          v16 = v13;
          if (v6 >= 2)
          {
            v17 = v14;
            v18 = 1;
            v16 = v13;
            do
            {
              v19 = *v17--;
              v20 = &v8[v18];
              v21 = vld1q_dup_f32(v20);
              v16 = vmlaq_s32(v16, vsubq_s32(*(v10[v18++] + 4 * v15), *(v19 + 4 * v15)), v21);
            }

            while (v12 != v18);
          }

          *(a3 + 2 * v15) = vqmovn_s32(v16);
          v15 += 4;
        }

        while (v15 <= a6 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < a6)
      {
        do
        {
          v22 = v9;
          if (v6 >= 2)
          {
            v23 = v14;
            v24 = 1;
            v22 = v9;
            do
            {
              v25 = *v23--;
              v22 += (*(v10[v24] + 4 * v15) - *(v25 + 4 * v15)) * LODWORD(v8[v24]);
              ++v24;
            }

            while (v12 != v24);
          }

          if (v22 <= -32768)
          {
            v22 = -32768;
          }

          if (v22 >= 0x7FFF)
          {
            LOWORD(v22) = 0x7FFF;
          }

          *(a3 + 2 * v15++) = v22;
        }

        while (v15 != a6);
      }

      a3 += v11;
      ++v10;
      v14 += 8;
      --a5;
    }

    while (a5);
  }

  return result;
}

void cv::ColumnFilter<cv::Cast<int,short>,cv::SymmColumnSmallNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055348;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::ColumnFilter<cv::Cast<int,short>,cv::SymmColumnSmallNoVec>::operator()(uint64_t result, uint64_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  if (a5)
  {
    v6 = *(result + 32);
    v7 = *(result + 116);
    v8 = *(result + 8);
    v9 = a4;
    v10 = vdupq_n_s32(v7);
    do
    {
      if (a6 >= 4)
      {
        v11 = 0;
        v12 = *a2;
        v13 = vld1q_dup_f32(v6);
        do
        {
          v14 = vmlaq_s32(v10, *(v12 + 4 * v11), v13);
          if (v8 >= 2)
          {
            for (i = 1; i != v8; ++i)
            {
              v16 = &v6[i];
              v17 = vld1q_dup_f32(v16);
              v14 = vmlaq_s32(v14, *(a2[i] + 4 * v11), v17);
            }
          }

          result = 2 * v11;
          *(a3 + 2 * v11) = vqmovn_s32(v14);
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
        v18 = *v6;
        result = *a2;
        do
        {
          v19 = v7 + *(result + 4 * v11) * LODWORD(v18);
          if (v8 >= 2)
          {
            for (j = 1; j != v8; ++j)
            {
              v19 += *(a2[j] + 4 * v11) * LODWORD(v6[j]);
            }
          }

          if (v19 <= -32768)
          {
            v19 = -32768;
          }

          if (v19 >= 0x7FFF)
          {
            LOWORD(v19) = 0x7FFF;
          }

          *(a3 + 2 * v11++) = v19;
        }

        while (v11 != a6);
      }

      a3 += v9;
      ++a2;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::SymmColumnSmallFilter<cv::Cast<float,float>,cv::SymmColumnSmallNoVec>::SymmColumnSmallFilter(uint64_t a1, cv::Mat *a2, int a3, int a4, double a5)
{
  v6 = cv::SymmColumnFilter<cv::Cast<float,float>,cv::SymmColumnSmallNoVec>::SymmColumnFilter(a1, a2, a3, a4, a5);
  *v6 = &unk_284055378;
  if (*(v6 + 8) != 3)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "this->ksize == 3");
    std::string::basic_string[abi:ne200100]<0>(v10, "SymmColumnSmallFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v12, 4294967081, v11, v10, __p, 2629);
    cv::error(v12, v7);
  }

  return a1;
}

void sub_22D206A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  cv::ColumnFilter<cv::Cast<float,float>,cv::SymmColumnSmallNoVec>::~ColumnFilter(v27);
  _Unwind_Resume(a1);
}

uint64_t cv::SymmColumnFilter<cv::Cast<float,float>,cv::SymmColumnSmallNoVec>::SymmColumnFilter(uint64_t a1, cv::Mat *a2, int a3, int a4, double a5)
{
  v7 = cv::ColumnFilter<cv::Cast<float,float>,cv::SymmColumnSmallNoVec>::ColumnFilter(a1, a2, a3, a5);
  *v7 = &unk_2840553F0;
  *(v7 + 120) = a4;
  if ((a4 & 3) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0");
    std::string::basic_string[abi:ne200100]<0>(v11, "SymmColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v13, 4294967081, v12, v11, __p, 2523);
    cv::error(v13, v8);
  }

  return a1;
}

void sub_22D206B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  cv::ColumnFilter<cv::Cast<float,float>,cv::SymmColumnSmallNoVec>::~ColumnFilter(v27);
  _Unwind_Resume(a1);
}

uint64_t cv::SymmColumnSmallFilter<cv::Cast<float,float>,cv::SymmColumnSmallNoVec>::~SymmColumnSmallFilter(uint64_t a1)
{
  *a1 = &unk_284055420;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::SymmColumnSmallFilter<cv::Cast<float,float>,cv::SymmColumnSmallNoVec>::~SymmColumnSmallFilter(uint64_t a1)
{
  *a1 = &unk_284055420;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

float32x2_t *cv::SymmColumnSmallFilter<cv::Cast<float,float>,cv::SymmColumnSmallNoVec>::operator()(float32x2_t *result, uint64_t a2, float32x2_t *a3, int a4, int a5, int a6, double a7, double a8, double a9)
{
  v9 = (*&result[4] + 4 * (result[1].i32[0] / 2));
  v10 = *v9;
  v11 = *v9 == 2.0 && v9[1] == 1.0;
  *&a8 = v9[1];
  v13 = *&a8 == 1.0 && v10 == -2.0;
  v14 = *&a8 == 1.0 || *&a8 == -1.0;
  v15 = v14 && *&a8 == -*(v9 - 1) && v10 == 0.0;
  if (a5)
  {
    v16 = result[15].i32[0];
    LODWORD(a9) = result[14].i32[1];
    v17 = (a2 + 8 * ((result[1].i32[0] + (result[1].i32[0] >> 31)) >> 1));
    v18 = a4;
    v19 = a6 - 4;
    v20 = *v17;
    v21 = vdup_lane_s32(*&a8, 0);
    v22 = vdup_lane_s32(*&a9, 0);
    result = a3 + 1;
    do
    {
      v23 = v20;
      v24 = v17[1];
      ++v17;
      v20 = v24;
      v25 = *(v17 - 2);
      if (v16)
      {
        v28 = 0;
        if (v11)
        {
          if (a6 >= 4)
          {
            v29 = v23 + 1;
            v30 = v25 + 1;
            v31 = v20 + 1;
            v32 = result;
            do
            {
              v32[-1] = vadd_f32(v22, vadd_f32(vmla_f32(v30[-1], 0x4000000040000000, v29[-1]), v31[-1]));
              v33 = *v30;
              v30 += 2;
              v34 = v33;
              v35 = *v29;
              v29 += 2;
              v36 = vmla_f32(v34, 0x4000000040000000, v35);
              v37 = *v31;
              v31 += 2;
              v28 += 4;
              *v32 = vadd_f32(v22, vadd_f32(v36, v37));
              v32 += 2;
            }

            while (v28 <= v19);
            v28 = v28;
          }

          if (v28 >= a6)
          {
            goto LABEL_61;
          }

          do
          {
            a3->f32[v28] = *&a9 + ((v25->f32[v28] + (v23->f32[v28] * 2.0)) + v20->f32[v28]);
            ++v28;
          }

          while (a6 != v28);
        }

        else if (v13)
        {
          if (a6 >= 4)
          {
            v39 = v23 + 1;
            v40 = v25 + 1;
            v41 = v20 + 1;
            v42 = result;
            do
            {
              v42[-1] = vadd_f32(v22, vadd_f32(vmls_f32(v40[-1], 0x4000000040000000, v39[-1]), v41[-1]));
              v43 = *v40;
              v40 += 2;
              v44 = v43;
              v45 = *v39;
              v39 += 2;
              v46 = vmls_f32(v44, 0x4000000040000000, v45);
              v47 = *v41;
              v41 += 2;
              v28 += 4;
              *v42 = vadd_f32(v22, vadd_f32(v46, v47));
              v42 += 2;
            }

            while (v28 <= v19);
            v28 = v28;
          }

          if (v28 >= a6)
          {
            goto LABEL_61;
          }

          do
          {
            a3->f32[v28] = *&a9 + ((v25->f32[v28] + (v23->f32[v28] * -2.0)) + v20->f32[v28]);
            ++v28;
          }

          while (a6 != v28);
        }

        else
        {
          if (a6 >= 4)
          {
            v54 = v20 + 1;
            v55 = v25 + 1;
            v56 = v23 + 1;
            v57 = result;
            do
            {
              v57[-1] = vadd_f32(v22, vmla_f32(vmul_n_f32(v56[-1], v10), v21, vadd_f32(v55[-1], v54[-1])));
              v58 = *v55;
              v55 += 2;
              v59 = v58;
              v60 = *v54;
              v54 += 2;
              v61 = vadd_f32(v59, v60);
              v62 = *v56;
              v56 += 2;
              v28 += 4;
              *v57 = vadd_f32(v22, vmla_f32(vmul_n_f32(v62, v10), v21, v61));
              v57 += 2;
            }

            while (v28 <= v19);
            v28 = v28;
          }

          if (v28 >= a6)
          {
LABEL_61:
            if (v28 < a6)
            {
              do
              {
                a3->f32[v28] = *&a9 + ((v10 * v23->f32[v28]) + ((v25->f32[v28] + v20->f32[v28]) * *&a8));
                ++v28;
              }

              while (a6 != v28);
            }

            goto LABEL_77;
          }

          do
          {
            a3->f32[v28] = *&a9 + ((v10 * v23->f32[v28]) + ((v25->f32[v28] + v20->f32[v28]) * *&a8));
            ++v28;
          }

          while (a6 != v28);
        }
      }

      else if (v15)
      {
        if (*&a8 >= 0.0)
        {
          v26 = *(v17 - 2);
        }

        else
        {
          v26 = v20;
        }

        if (*&a8 >= 0.0)
        {
          v25 = v20;
        }

        if (a6 >= 4)
        {
          v27 = 0;
          v48 = v26 + 1;
          v49 = v25 + 1;
          v50 = result;
          do
          {
            v50[-1] = vadd_f32(v22, vsub_f32(v49[-1], v48[-1]));
            v51 = *v49;
            v49 += 2;
            v52 = v51;
            v53 = *v48;
            v48 += 2;
            v27 += 4;
            *v50 = vadd_f32(v22, vsub_f32(v52, v53));
            v50 += 2;
          }

          while (v27 <= v19);
          v27 = v27;
        }

        else
        {
          v27 = 0;
        }

        if (v27 < a6)
        {
          do
          {
            a3->f32[v27] = *&a9 + (v25->f32[v27] - v26->f32[v27]);
            ++v27;
          }

          while (a6 != v27);
        }
      }

      else if (*v9 == 0.0)
      {
        if (a6 >= 4)
        {
          v38 = 0;
          v64 = v25 + 1;
          v65 = v20 + 1;
          v66 = result;
          do
          {
            v66[-1] = vmla_f32(v22, v21, vsub_f32(v65[-1], v64[-1]));
            v67 = *v65;
            v65 += 2;
            v68 = v67;
            v69 = *v64;
            v64 += 2;
            v38 += 4;
            *v66 = vmla_f32(v22, v21, vsub_f32(v68, v69));
            v66 += 2;
          }

          while (v38 <= v19);
          v38 = v38;
        }

        else
        {
          v38 = 0;
        }

        if (v38 < a6)
        {
          do
          {
            a3->f32[v38] = *&a9 + ((v20->f32[v38] - v25->f32[v38]) * *&a8);
            ++v38;
          }

          while (a6 != v38);
        }
      }

      else
      {
        if (a6 >= 4)
        {
          v63 = 0;
          v70 = &v23[1];
          v71 = v20 + 1;
          v72 = v25 + 1;
          v73 = result;
          do
          {
            v74 = vadd_f32(v22, vmla_f32(vmul_n_f32(*(v70 - 2), v10), v21, vsub_f32(v71[-1], v72[-1])));
            v73[-1] = v74;
            v75 = *v70;
            v70 += 4;
            *v74.i32 = v10 * v75;
            v76 = *v71;
            v71 += 2;
            v77 = v76;
            v78 = *v72;
            v72 += 2;
            v63 += 4;
            *v73 = vadd_f32(v22, vmla_f32(vdup_lane_s32(v74, 0), v21, vsub_f32(v77, v78)));
            v73 += 2;
          }

          while (v63 <= v19);
          v63 = v63;
        }

        else
        {
          v63 = 0;
        }

        if (v63 < a6)
        {
          do
          {
            a3->f32[v63] = *&a9 + ((v10 * v23->f32[v63]) + ((v20->f32[v63] - v25->f32[v63]) * *&a8));
            ++v63;
          }

          while (a6 != v63);
        }
      }

LABEL_77:
      a3 = (a3 + v18);
      result = (result + v18);
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::ColumnFilter<cv::Cast<float,float>,cv::SymmColumnSmallNoVec>::ColumnFilter(uint64_t a1, cv::Mat *a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *a1 = &unk_284055420;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_18;
    }

    v10 = *(a2 + 3);
    if (v10)
    {
      atomic_fetch_add(v10, 1u);
      v11 = *(a1 + 40);
      if (v11)
      {
        if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v14 > 2)
      {
        goto LABEL_16;
      }
    }

    v15 = *(a2 + 1);
    if (v15 <= 2)
    {
      *(a1 + 20) = v15;
      *(a1 + 24) = *(a2 + 1);
      v16 = *(a2 + 9);
      v17 = *(a1 + 88);
      *v17 = *v16;
      v17[1] = v16[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v8, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v26, v8);
  cv::Mat::copyTo(a2, v26);
LABEL_18:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  v20 = a4;
  *(a1 + 116) = v20;
  if ((*(a1 + 16) & 0xFFF) != 5 || v19 != 1 && v18 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v25, "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v24, "ColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v26, 4294967081, v25, v24, __p, 2460);
    cv::error(v26, v21);
  }

  return a1;
}

uint64_t cv::ColumnFilter<cv::Cast<float,float>,cv::SymmColumnSmallNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055420;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

{
  *a1 = &unk_284055420;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

uint64_t cv::SymmColumnFilter<cv::Cast<float,float>,cv::SymmColumnSmallNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055420;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::SymmColumnFilter<cv::Cast<float,float>,cv::SymmColumnSmallNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055420;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::SymmColumnFilter<cv::Cast<float,float>,cv::SymmColumnSmallNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, double a7)
{
  v7 = *(result + 8);
  v8 = (v7 + (v7 >> 31)) >> 1;
  v9 = (*(result + 32) + 4 * (v7 / 2));
  LODWORD(a7) = *(result + 116);
  v10 = (a2 + 8 * (v7 / 2));
  if (*(result + 120))
  {
    if (a5)
    {
      v21 = a4;
      v22 = (v7 / 2 + 1);
      v23 = vdupq_lane_s32(*&a7, 0);
      v24 = a2 + 8 * v8 - 8;
      do
      {
        if (a6 >= 4)
        {
          v25 = 0;
          v26 = *v10;
          do
          {
            result = 4 * v25;
            v27 = vmlaq_n_f32(v23, *(v26 + 4 * v25), *v9);
            if (v7 >= 2)
            {
              v28 = v24;
              v29 = 1;
              do
              {
                v30 = *v28--;
                v27 = vmlaq_n_f32(v27, vaddq_f32(*(v10[v29] + 4 * v25), *(v30 + 4 * v25)), v9[v29]);
                ++v29;
              }

              while (v22 != v29);
            }

            *(a3 + 4 * v25) = v27;
            v25 += 4;
          }

          while (v25 <= a6 - 4);
          v25 = v25;
        }

        else
        {
          v25 = 0;
        }

        if (v25 < a6)
        {
          v31 = *v10;
          do
          {
            v32 = *&a7 + (*v9 * *(v31 + 4 * v25));
            if (v7 >= 2)
            {
              result = v24;
              v33 = 1;
              do
              {
                v34 = *result;
                result -= 8;
                v32 = v32 + (v9[v33] * (*(v10[v33] + 4 * v25) + *(v34 + 4 * v25)));
                ++v33;
              }

              while (v22 != v33);
            }

            *(a3 + 4 * v25++) = v32;
          }

          while (v25 != a6);
        }

        a3 += v21;
        ++v10;
        v24 += 8;
        --a5;
      }

      while (a5);
    }
  }

  else if (a5)
  {
    v11 = (v7 / 2 + 1);
    v12 = vdupq_lane_s32(*&a7, 0);
    v13 = a2 + 8 * v8 - 8;
    do
    {
      if (a6 >= 4)
      {
        v14 = 0;
        do
        {
          v15 = v12;
          if (v7 >= 2)
          {
            result = v13;
            v16 = 1;
            v15 = v12;
            do
            {
              v17 = *result;
              result -= 8;
              v15 = vmlaq_n_f32(v15, vsubq_f32(*(v10[v16] + 4 * v14), *(v17 + 4 * v14)), v9[v16]);
              ++v16;
            }

            while (v11 != v16);
          }

          *(a3 + 4 * v14) = v15;
          v14 += 4;
        }

        while (v14 <= a6 - 4);
        v14 = v14;
      }

      else
      {
        v14 = 0;
      }

      if (v14 < a6)
      {
        do
        {
          v18 = *&a7;
          if (v7 >= 2)
          {
            v19 = v13;
            result = 1;
            v18 = *&a7;
            do
            {
              v20 = *v19--;
              v18 = v18 + (v9[result] * (*(v10[result] + 4 * v14) - *(v20 + 4 * v14)));
              ++result;
            }

            while (v11 != result);
          }

          *(a3 + 4 * v14++) = v18;
        }

        while (v14 != a6);
      }

      a3 += a4;
      ++v10;
      v13 += 8;
      --a5;
    }

    while (a5);
  }

  return result;
}

void cv::ColumnFilter<cv::Cast<float,float>,cv::SymmColumnSmallNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055420;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::ColumnFilter<cv::Cast<float,float>,cv::SymmColumnSmallNoVec>::operator()(uint64_t result, uint64_t *a2, uint64_t a3, int a4, int a5, int a6, double a7)
{
  if (a5)
  {
    v7 = *(result + 32);
    LODWORD(a7) = *(result + 116);
    v8 = *(result + 8);
    v9 = vdupq_lane_s32(*&a7, 0);
    do
    {
      if (a6 >= 4)
      {
        v10 = 0;
        v11 = *a2;
        do
        {
          v12 = vmlaq_n_f32(v9, *(v11 + 4 * v10), *v7);
          if (v8 >= 2)
          {
            for (i = 1; i != v8; ++i)
            {
              v12 = vmlaq_n_f32(v12, *(a2[i] + 4 * v10), v7[i]);
            }
          }

          *(a3 + 4 * v10) = v12;
          v10 += 4;
        }

        while (v10 <= a6 - 4);
        v10 = v10;
      }

      else
      {
        v10 = 0;
      }

      if (v10 < a6)
      {
        v14 = *a2;
        do
        {
          v15 = *&a7 + (*v7 * *(v14 + 4 * v10));
          if (v8 >= 2)
          {
            for (j = 1; j != v8; ++j)
            {
              v15 = v15 + (v7[j] * *(a2[j] + 4 * v10));
            }
          }

          *(a3 + 4 * v10++) = v15;
        }

        while (v10 != a6);
      }

      a3 += a4;
      ++a2;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::SymmColumnFilter<cv::Cast<float,unsigned char>,cv::ColumnNoVec>::SymmColumnFilter(uint64_t a1, cv::Mat *a2, int a3, int a4, double a5)
{
  v7 = cv::ColumnFilter<cv::Cast<float,unsigned char>,cv::ColumnNoVec>::ColumnFilter(a1, a2, a3, a5);
  *v7 = &unk_284055450;
  *(v7 + 120) = a4;
  if ((a4 & 3) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0");
    std::string::basic_string[abi:ne200100]<0>(v11, "SymmColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v13, 4294967081, v12, v11, __p, 2523);
    cv::error(v13, v8);
  }

  return a1;
}

void sub_22D207D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  cv::ColumnFilter<cv::Cast<float,unsigned char>,cv::ColumnNoVec>::~ColumnFilter(v27);
  _Unwind_Resume(a1);
}

uint64_t cv::SymmColumnFilter<cv::Cast<float,unsigned char>,cv::ColumnNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_284054FD0;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::SymmColumnFilter<cv::Cast<float,unsigned char>,cv::ColumnNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_284054FD0;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::SymmColumnFilter<cv::Cast<float,unsigned char>,cv::ColumnNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, double a7)
{
  v7 = *(result + 8);
  v8 = (v7 + (v7 >> 31)) >> 1;
  v9 = (*(result + 32) + 4 * (v7 / 2));
  LODWORD(a7) = *(result + 116);
  v10 = (a2 + 8 * (v7 / 2));
  if (*(result + 120))
  {
    if (a5)
    {
      v24 = a4;
      v25 = (v7 / 2 + 1);
      v26 = vdupq_lane_s32(*&a7, 0);
      v27 = a2 + 8 * v8 - 8;
      v28.i64[0] = 0xFF000000FFLL;
      v28.i64[1] = 0xFF000000FFLL;
      do
      {
        if (a6 >= 4)
        {
          v29 = 0;
          do
          {
            result = 4 * v29;
            v30 = vmlaq_n_f32(v26, *(*v10 + 4 * v29), *v9);
            if (v7 >= 2)
            {
              v31 = v27;
              v32 = 1;
              do
              {
                v33 = *v31--;
                v30 = vmlaq_n_f32(v30, vaddq_f32(*(v10[v32] + 4 * v29), *(v33 + 4 * v29)), v9[v32]);
                ++v32;
              }

              while (v25 != v32);
            }

            *(a3 + v29) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(*v30.f32))), vcvtq_s64_f64(vrndxq_f64(vcvt_hight_f64_f32(v30)))), 0), v28)), *&a7).u32[0];
            v29 += 4;
          }

          while (v29 <= a6 - 4);
          v29 = v29;
        }

        else
        {
          v29 = 0;
        }

        if (v29 < a6)
        {
          do
          {
            v34 = *&a7 + (*v9 * *(*v10 + 4 * v29));
            if (v7 >= 2)
            {
              v35 = v27;
              v36 = 1;
              do
              {
                v37 = *v35--;
                v34 = v34 + (v9[v36] * (*(v10[v36] + 4 * v29) + *(v37 + 4 * v29)));
                ++v36;
              }

              while (v25 != v36);
            }

            v38 = rint(v34);
            LODWORD(result) = v38 & ~(v38 >> 31);
            if (result >= 255)
            {
              result = 255;
            }

            else
            {
              result = result;
            }

            *(a3 + v29++) = result;
          }

          while (v29 != a6);
        }

        a3 += v24;
        ++v10;
        v27 += 8;
        --a5;
      }

      while (a5);
    }
  }

  else if (a5)
  {
    v11 = (v7 / 2 + 1);
    v12 = vdupq_lane_s32(*&a7, 0);
    v13 = a2 + 8 * v8 - 8;
    v14.i64[0] = 0xFF000000FFLL;
    v14.i64[1] = 0xFF000000FFLL;
    do
    {
      if (a6 >= 4)
      {
        v15 = 0;
        do
        {
          v16 = v12;
          if (v7 >= 2)
          {
            result = v13;
            v17 = 1;
            v16 = v12;
            do
            {
              v18 = *result;
              result -= 8;
              v16 = vmlaq_n_f32(v16, vsubq_f32(*(v10[v17] + 4 * v15), *(v18 + 4 * v15)), v9[v17]);
              ++v17;
            }

            while (v11 != v17);
          }

          *(a3 + v15) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(*v16.f32))), vcvtq_s64_f64(vrndxq_f64(vcvt_hight_f64_f32(v16)))), 0), v14)), *&a7).u32[0];
          v15 += 4;
        }

        while (v15 <= a6 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < a6)
      {
        do
        {
          v19 = *&a7;
          if (v7 >= 2)
          {
            v20 = v13;
            v21 = 1;
            v19 = *&a7;
            do
            {
              v22 = *v20--;
              v19 = v19 + (v9[v21] * (*(v10[v21] + 4 * v15) - *(v22 + 4 * v15)));
              ++v21;
            }

            while (v11 != v21);
          }

          v23 = rint(v19);
          LODWORD(result) = v23 & ~(v23 >> 31);
          if (result >= 255)
          {
            result = 255;
          }

          else
          {
            result = result;
          }

          *(a3 + v15++) = result;
        }

        while (v15 != a6);
      }

      a3 += a4;
      ++v10;
      v13 += 8;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::SymmColumnFilter<cv::Cast<double,unsigned char>,cv::ColumnNoVec>::SymmColumnFilter(uint64_t a1, cv::Mat *a2, int a3, int a4, double a5)
{
  v7 = cv::ColumnFilter<cv::Cast<double,unsigned char>,cv::ColumnNoVec>::ColumnFilter(a1, a2, a3, a5);
  *v7 = &unk_284055498;
  *(v7 + 128) = a4;
  if ((a4 & 3) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0");
    std::string::basic_string[abi:ne200100]<0>(v11, "SymmColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v13, 4294967081, v12, v11, __p, 2523);
    cv::error(v13, v8);
  }

  return a1;
}

void sub_22D2082D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  cv::ColumnFilter<cv::Cast<double,unsigned char>,cv::ColumnNoVec>::~ColumnFilter(v27);
  _Unwind_Resume(a1);
}

uint64_t cv::SymmColumnFilter<cv::Cast<double,unsigned char>,cv::ColumnNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055018;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::SymmColumnFilter<cv::Cast<double,unsigned char>,cv::ColumnNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055018;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::SymmColumnFilter<cv::Cast<double,unsigned char>,cv::ColumnNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = (v6 + (v6 >> 31)) >> 1;
  v8 = (*(result + 32) + 8 * (v6 / 2));
  v9 = *(result + 120);
  v10 = (a2 + 8 * (v6 / 2));
  if (*(result + 128))
  {
    if (a5)
    {
      v29 = a4;
      v30 = vdupq_lane_s64(v9, 0);
      v31 = a2 + 8 * v7 - 8;
      v32 = 8 * (v6 / 2 + 1);
      v33.i64[0] = 0xFF000000FFLL;
      v33.i64[1] = 0xFF000000FFLL;
      do
      {
        if (a6 >= 4)
        {
          v34 = 0;
          do
          {
            result = *v10 + 8 * v34;
            v35 = vmlaq_n_f64(v30, *(result + 16), *v8);
            v36 = vmlaq_n_f64(v30, *result, *v8);
            if (v6 >= 2)
            {
              result = 8;
              v37 = v31;
              do
              {
                v38 = (*(v10 + result) + 8 * v34);
                v39 = *v37--;
                v40 = (v39 + 8 * v34);
                v41 = *(v8 + result);
                v35 = vmlaq_n_f64(v35, vaddq_f64(v38[1], v40[1]), v41);
                v36 = vmlaq_n_f64(v36, vaddq_f64(*v38, *v40), v41);
                result += 8;
              }

              while (v32 != result);
            }

            *(a3 + v34) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v36)), vcvtq_s64_f64(vrndxq_f64(v35))), 0), v33)), v9).u32[0];
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
          do
          {
            v42 = *&v9 + *v8 * *(*v10 + 8 * v34);
            if (v6 >= 2)
            {
              v43 = 8;
              v44 = v31;
              do
              {
                v45 = *v44--;
                v42 = v42 + v8[v43 / 8] * (*(v10[v43 / 8] + 8 * v34) + *(v45 + 8 * v34));
                v43 += 8;
              }

              while (v32 != v43);
            }

            v46 = rint(v42);
            LODWORD(result) = v46 & ~(v46 >> 31);
            if (result >= 255)
            {
              result = 255;
            }

            else
            {
              result = result;
            }

            *(a3 + v34++) = result;
          }

          while (v34 != a6);
        }

        a3 += v29;
        ++v10;
        v31 += 8;
        --a5;
      }

      while (a5);
    }
  }

  else if (a5)
  {
    v11 = a4;
    v12 = vdupq_lane_s64(v9, 0);
    v13 = a2 + 8 * v7 - 8;
    v14 = 8 * (v6 / 2 + 1);
    v15.i64[0] = 0xFF000000FFLL;
    v15.i64[1] = 0xFF000000FFLL;
    do
    {
      if (a6 >= 4)
      {
        v16 = 0;
        do
        {
          v17 = v12;
          v18 = v12;
          if (v6 >= 2)
          {
            result = 8;
            v19 = v13;
            v17 = v12;
            v18 = v12;
            do
            {
              v20 = (*(v10 + result) + 8 * v16);
              v21 = *v19--;
              v22 = (v21 + 8 * v16);
              v23 = *(v8 + result);
              v18 = vmlaq_n_f64(v18, vsubq_f64(v20[1], v22[1]), v23);
              v17 = vmlaq_n_f64(v17, vsubq_f64(*v20, *v22), v23);
              result += 8;
            }

            while (v14 != result);
          }

          *(a3 + v16) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v17)), vcvtq_s64_f64(vrndxq_f64(v18))), 0), v15)), v9).u32[0];
          v16 += 4;
        }

        while (v16 <= a6 - 4);
        v16 = v16;
      }

      else
      {
        v16 = 0;
      }

      if (v16 < a6)
      {
        do
        {
          v24 = *&v9;
          if (v6 >= 2)
          {
            v25 = 8;
            v26 = v13;
            v24 = *&v9;
            do
            {
              v27 = *v26--;
              v24 = v24 + v8[v25 / 8] * (*(v10[v25 / 8] + 8 * v16) - *(v27 + 8 * v16));
              v25 += 8;
            }

            while (v14 != v25);
          }

          v28 = rint(v24);
          LODWORD(result) = v28 & ~(v28 >> 31);
          if (result >= 255)
          {
            result = 255;
          }

          else
          {
            result = result;
          }

          *(a3 + v16++) = result;
        }

        while (v16 != a6);
      }

      a3 += v11;
      ++v10;
      v13 += 8;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::SymmColumnFilter<cv::Cast<float,unsigned short>,cv::ColumnNoVec>::SymmColumnFilter(uint64_t a1, cv::Mat *a2, int a3, int a4, double a5)
{
  v7 = cv::ColumnFilter<cv::Cast<float,unsigned short>,cv::ColumnNoVec>::ColumnFilter(a1, a2, a3, a5);
  *v7 = &unk_2840554E0;
  *(v7 + 120) = a4;
  if ((a4 & 3) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0");
    std::string::basic_string[abi:ne200100]<0>(v11, "SymmColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v13, 4294967081, v12, v11, __p, 2523);
    cv::error(v13, v8);
  }

  return a1;
}

void sub_22D2088B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  cv::ColumnFilter<cv::Cast<float,unsigned short>,cv::ColumnNoVec>::~ColumnFilter(v27);
  _Unwind_Resume(a1);
}

uint64_t cv::SymmColumnFilter<cv::Cast<float,unsigned short>,cv::ColumnNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055060;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::SymmColumnFilter<cv::Cast<float,unsigned short>,cv::ColumnNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055060;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::SymmColumnFilter<cv::Cast<float,unsigned short>,cv::ColumnNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, double a7)
{
  v7 = *(result + 8);
  v8 = (v7 + (v7 >> 31)) >> 1;
  v9 = (*(result + 32) + 4 * (v7 / 2));
  LODWORD(a7) = *(result + 116);
  v10 = (a2 + 8 * (v7 / 2));
  if (*(result + 120))
  {
    if (a5)
    {
      v25 = a4;
      v26 = (v7 / 2 + 1);
      v27 = vdupq_lane_s32(*&a7, 0);
      v28 = a2 + 8 * v8 - 8;
      v29.i64[0] = 0xFFFF0000FFFFLL;
      v29.i64[1] = 0xFFFF0000FFFFLL;
      do
      {
        if (a6 >= 4)
        {
          v30 = 0;
          result = *v10;
          v31 = vld1q_dup_f32(v9);
          do
          {
            v32 = vmlaq_f32(v27, *(result + 4 * v30), v31);
            if (v7 >= 2)
            {
              v33 = v28;
              v34 = 1;
              do
              {
                v35 = *v33--;
                v32 = vmlaq_n_f32(v32, vaddq_f32(*(v10[v34] + 4 * v30), *(v35 + 4 * v30)), v9[v34]);
                ++v34;
              }

              while (v26 != v34);
            }

            *(a3 + 2 * v30) = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(*v32.f32))), vcvtq_s64_f64(vrndxq_f64(vcvt_hight_f64_f32(v32)))), 0), v29));
            v30 += 4;
          }

          while (v30 <= a6 - 4);
          v30 = v30;
        }

        else
        {
          v30 = 0;
        }

        if (v30 < a6)
        {
          v36 = *v9;
          result = *v10;
          do
          {
            v37 = *&a7 + (v36 * *(result + 4 * v30));
            if (v7 >= 2)
            {
              v38 = v28;
              v39 = 1;
              do
              {
                v40 = *v38--;
                v37 = v37 + (v9[v39] * (*(v10[v39] + 4 * v30) + *(v40 + 4 * v30)));
                ++v39;
              }

              while (v26 != v39);
            }

            v41 = rint(v37);
            v42 = v41 & ~(v41 >> 31);
            if (v42 >= 0xFFFF)
            {
              LOWORD(v42) = -1;
            }

            *(a3 + 2 * v30++) = v42;
          }

          while (v30 != a6);
        }

        a3 += v25;
        ++v10;
        v28 += 8;
        --a5;
      }

      while (a5);
    }
  }

  else if (a5)
  {
    v11 = (v7 / 2 + 1);
    v12 = vdupq_lane_s32(*&a7, 0);
    v13 = a2 + 8 * v8 - 8;
    v14.i64[0] = 0xFFFF0000FFFFLL;
    v14.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      if (a6 >= 4)
      {
        v15 = 0;
        do
        {
          v16 = v12;
          if (v7 >= 2)
          {
            v17 = v13;
            v18 = 1;
            v16 = v12;
            do
            {
              v19 = *v17--;
              v16 = vmlaq_n_f32(v16, vsubq_f32(*(v10[v18] + 4 * v15), *(v19 + 4 * v15)), v9[v18]);
              ++v18;
            }

            while (v11 != v18);
          }

          result = 2 * v15;
          *(a3 + 2 * v15) = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(*v16.f32))), vcvtq_s64_f64(vrndxq_f64(vcvt_hight_f64_f32(v16)))), 0), v14));
          v15 += 4;
        }

        while (v15 <= a6 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < a6)
      {
        do
        {
          v20 = *&a7;
          if (v7 >= 2)
          {
            v21 = v13;
            v22 = 1;
            v20 = *&a7;
            do
            {
              v23 = *v21--;
              v20 = v20 + (v9[v22] * (*(v10[v22] + 4 * v15) - *(v23 + 4 * v15)));
              ++v22;
            }

            while (v11 != v22);
          }

          v24 = rint(v20);
          LODWORD(result) = v24 & ~(v24 >> 31);
          if (result >= 0xFFFF)
          {
            result = 0xFFFFLL;
          }

          else
          {
            result = result;
          }

          *(a3 + 2 * v15++) = result;
        }

        while (v15 != a6);
      }

      a3 += a4;
      ++v10;
      v13 += 8;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::SymmColumnFilter<cv::Cast<double,unsigned short>,cv::ColumnNoVec>::SymmColumnFilter(uint64_t a1, cv::Mat *a2, int a3, int a4, double a5)
{
  v7 = cv::ColumnFilter<cv::Cast<double,unsigned short>,cv::ColumnNoVec>::ColumnFilter(a1, a2, a3, a5);
  *v7 = &unk_284055528;
  *(v7 + 128) = a4;
  if ((a4 & 3) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0");
    std::string::basic_string[abi:ne200100]<0>(v11, "SymmColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v13, 4294967081, v12, v11, __p, 2523);
    cv::error(v13, v8);
  }

  return a1;
}

void sub_22D208E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  cv::ColumnFilter<cv::Cast<double,unsigned short>,cv::ColumnNoVec>::~ColumnFilter(v27);
  _Unwind_Resume(a1);
}

uint64_t cv::SymmColumnFilter<cv::Cast<double,unsigned short>,cv::ColumnNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_2840550A8;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::SymmColumnFilter<cv::Cast<double,unsigned short>,cv::ColumnNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_2840550A8;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::SymmColumnFilter<cv::Cast<double,unsigned short>,cv::ColumnNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = (v6 + (v6 >> 31)) >> 1;
  v8 = (*(result + 32) + 8 * (v6 / 2));
  v9 = *(result + 120);
  v10 = (a2 + 8 * (v6 / 2));
  if (*(result + 128))
  {
    if (a5)
    {
      v30 = a4;
      v31 = vdupq_lane_s64(v9, 0);
      v32 = a2 + 8 * v7 - 8;
      v33 = 8 * (v6 / 2 + 1);
      v34.i64[0] = 0xFFFF0000FFFFLL;
      v34.i64[1] = 0xFFFF0000FFFFLL;
      do
      {
        if (a6 >= 4)
        {
          v35 = 0;
          result = *v10;
          v36 = vld1q_dup_f64(v8);
          do
          {
            v37 = (result + 8 * v35);
            v38 = vmlaq_f64(v31, v37[1], v36);
            v39 = vmlaq_f64(v31, *v37, v36);
            if (v6 >= 2)
            {
              v40 = 8;
              v41 = v32;
              do
              {
                v42 = (v10[v40 / 8] + 8 * v35);
                v43 = *v41--;
                v44 = (v43 + 8 * v35);
                v45 = v8[v40 / 8];
                v38 = vmlaq_n_f64(v38, vaddq_f64(v42[1], v44[1]), v45);
                v39 = vmlaq_n_f64(v39, vaddq_f64(*v42, *v44), v45);
                v40 += 8;
              }

              while (v33 != v40);
            }

            *(a3 + 2 * v35) = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v39)), vcvtq_s64_f64(vrndxq_f64(v38))), 0), v34));
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
          v46 = *v8;
          result = *v10;
          do
          {
            v47 = *&v9 + v46 * *(result + 8 * v35);
            if (v6 >= 2)
            {
              v48 = 8;
              v49 = v32;
              do
              {
                v50 = *v49--;
                v47 = v47 + v8[v48 / 8] * (*(v10[v48 / 8] + 8 * v35) + *(v50 + 8 * v35));
                v48 += 8;
              }

              while (v33 != v48);
            }

            v51 = rint(v47);
            v52 = v51 & ~(v51 >> 31);
            if (v52 >= 0xFFFF)
            {
              LOWORD(v52) = -1;
            }

            *(a3 + 2 * v35++) = v52;
          }

          while (v35 != a6);
        }

        a3 += v30;
        ++v10;
        v32 += 8;
        --a5;
      }

      while (a5);
    }
  }

  else if (a5)
  {
    v11 = a4;
    v12 = vdupq_lane_s64(v9, 0);
    v13 = a2 + 8 * v7 - 8;
    v14 = 8 * (v6 / 2 + 1);
    v15.i64[0] = 0xFFFF0000FFFFLL;
    v15.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      if (a6 >= 4)
      {
        v16 = 0;
        do
        {
          v17 = v12;
          v18 = v12;
          if (v6 >= 2)
          {
            v19 = 8;
            v20 = v13;
            v17 = v12;
            v18 = v12;
            do
            {
              v21 = (v10[v19 / 8] + 8 * v16);
              v22 = *v20--;
              v23 = (v22 + 8 * v16);
              v24 = v8[v19 / 8];
              v18 = vmlaq_n_f64(v18, vsubq_f64(v21[1], v23[1]), v24);
              v17 = vmlaq_n_f64(v17, vsubq_f64(*v21, *v23), v24);
              v19 += 8;
            }

            while (v14 != v19);
          }

          result = 2 * v16;
          *(a3 + 2 * v16) = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v17)), vcvtq_s64_f64(vrndxq_f64(v18))), 0), v15));
          v16 += 4;
        }

        while (v16 <= a6 - 4);
        v16 = v16;
      }

      else
      {
        v16 = 0;
      }

      if (v16 < a6)
      {
        do
        {
          v25 = *&v9;
          if (v6 >= 2)
          {
            v26 = 8;
            v27 = v13;
            v25 = *&v9;
            do
            {
              v28 = *v27--;
              v25 = v25 + v8[v26 / 8] * (*(v10[v26 / 8] + 8 * v16) - *(v28 + 8 * v16));
              v26 += 8;
            }

            while (v14 != v26);
          }

          v29 = rint(v25);
          LODWORD(result) = v29 & ~(v29 >> 31);
          if (result >= 0xFFFF)
          {
            result = 0xFFFFLL;
          }

          else
          {
            result = result;
          }

          *(a3 + 2 * v16++) = result;
        }

        while (v16 != a6);
      }

      a3 += v11;
      ++v10;
      v13 += 8;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::SymmColumnFilter<cv::Cast<int,short>,cv::ColumnNoVec>::SymmColumnFilter(uint64_t a1, cv::Mat *a2, int a3, int a4, double a5)
{
  v7 = cv::ColumnFilter<cv::Cast<int,short>,cv::ColumnNoVec>::ColumnFilter(a1, a2, a3, a5);
  *v7 = &unk_284055570;
  *(v7 + 120) = a4;
  if ((a4 & 3) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0");
    std::string::basic_string[abi:ne200100]<0>(v11, "SymmColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v13, 4294967081, v12, v11, __p, 2523);
    cv::error(v13, v8);
  }

  return a1;
}

void sub_22D209458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  cv::ColumnFilter<cv::Cast<int,short>,cv::ColumnNoVec>::~ColumnFilter(v27);
  _Unwind_Resume(a1);
}

uint64_t cv::ColumnFilter<cv::Cast<int,short>,cv::ColumnNoVec>::ColumnFilter(uint64_t a1, cv::Mat *a2, int a3, double a4)
{
  *(a1 + 8) = -1;
  *a1 = &unk_2840555D0;
  *(a1 + 16) = 1124007936;
  v8 = (a1 + 16);
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 20) = 0u;
  v9 = (a1 + 20);
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 64) = 0u;
  if ((*(a2 + 1) & 0x40) != 0)
  {
    if (v8 == a2)
    {
      goto LABEL_18;
    }

    v10 = *(a2 + 3);
    if (v10)
    {
      atomic_fetch_add(v10, 1u);
      v11 = *(a1 + 40);
      if (v11)
      {
        if (atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 16));
        }
      }
    }

    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
    }

    else
    {
      v12 = 0;
      v13 = *(a1 + 80);
      do
      {
        *(v13 + 4 * v12++) = 0;
        v14 = *v9;
      }

      while (v12 < v14);
      *(a1 + 40) = 0;
      *(a1 + 16) = *a2;
      if (v14 > 2)
      {
        goto LABEL_16;
      }
    }

    v15 = *(a2 + 1);
    if (v15 <= 2)
    {
      *(a1 + 20) = v15;
      *(a1 + 24) = *(a2 + 1);
      v16 = *(a2 + 9);
      v17 = *(a1 + 88);
      *v17 = *v16;
      v17[1] = v16[1];
LABEL_17:
      *(a1 + 48) = *(a2 + 2);
      *(a1 + 64) = *(a2 + 6);
      *(a1 + 32) = *(a2 + 1);
      *(a1 + 72) = *(a2 + 7);
      goto LABEL_18;
    }

LABEL_16:
    cv::Mat::copySize(v8, a2);
    goto LABEL_17;
  }

  cv::_OutputArray::_OutputArray(v25, v8);
  cv::Mat::copyTo(a2, v25);
LABEL_18:
  v19 = *(a1 + 24);
  v18 = *(a1 + 28);
  *(a1 + 8) = v19 + v18 - 1;
  *(a1 + 12) = a3;
  *(a1 + 116) = rint(a4);
  if ((*(a1 + 16) & 0xFFF) != 4 || v19 != 1 && v18 != 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "kernel.type() == DataType<ST>::type && (kernel.rows == 1 || kernel.cols == 1)");
    std::string::basic_string[abi:ne200100]<0>(v23, "ColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v25, 4294967081, v24, v23, __p, 2460);
    cv::error(v25, v20);
  }

  return a1;
}

uint64_t cv::ColumnFilter<cv::Cast<int,short>,cv::ColumnNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_2840555D0;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

{
  *a1 = &unk_2840555D0;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

uint64_t cv::SymmColumnFilter<cv::Cast<int,short>,cv::ColumnNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_2840555D0;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::SymmColumnFilter<cv::Cast<int,short>,cv::ColumnNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_2840555D0;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::SymmColumnFilter<cv::Cast<int,short>,cv::ColumnNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = (v6 + (v6 >> 31)) >> 1;
  v8 = (*(result + 32) + 4 * (v6 / 2));
  v9 = *(result + 116);
  v10 = (a2 + 8 * (v6 / 2));
  if (*(result + 120))
  {
    if (a5)
    {
      v26 = a4;
      v27 = (v6 / 2 + 1);
      v28 = vdupq_n_s32(v9);
      v29 = a2 + 8 * v7 - 8;
      result = 0x7FFFLL;
      do
      {
        if (a6 >= 4)
        {
          v30 = 0;
          v31 = *v10;
          v32 = vld1q_dup_f32(v8);
          do
          {
            v33 = vmlaq_s32(v28, *(v31 + 4 * v30), v32);
            if (v6 >= 2)
            {
              v34 = v29;
              v35 = 1;
              do
              {
                v36 = *v34--;
                v37 = &v8[v35];
                v38 = vld1q_dup_f32(v37);
                v33 = vmlaq_s32(v33, vaddq_s32(*(v36 + 4 * v30), *(v10[v35++] + 4 * v30)), v38);
              }

              while (v27 != v35);
            }

            *(a3 + 2 * v30) = vqmovn_s32(v33);
            v30 += 4;
          }

          while (v30 <= a6 - 4);
          v30 = v30;
        }

        else
        {
          v30 = 0;
        }

        if (v30 < a6)
        {
          v39 = *v8;
          v40 = *v10;
          do
          {
            v41 = v9 + *(v40 + 4 * v30) * LODWORD(v39);
            if (v6 >= 2)
            {
              v42 = v29;
              v43 = 1;
              do
              {
                v44 = *v42--;
                v41 += (*(v44 + 4 * v30) + *(v10[v43] + 4 * v30)) * LODWORD(v8[v43]);
                ++v43;
              }

              while (v27 != v43);
            }

            if (v41 <= -32768)
            {
              v41 = -32768;
            }

            if (v41 >= 0x7FFF)
            {
              LOWORD(v41) = 0x7FFF;
            }

            *(a3 + 2 * v30++) = v41;
          }

          while (v30 != a6);
        }

        a3 += v26;
        ++v10;
        v29 += 8;
        --a5;
      }

      while (a5);
    }
  }

  else if (a5)
  {
    v11 = a4;
    v12 = (v6 / 2 + 1);
    v13 = vdupq_n_s32(v9);
    v14 = a2 + 8 * v7 - 8;
    result = 0x7FFFLL;
    do
    {
      if (a6 >= 4)
      {
        v15 = 0;
        do
        {
          v16 = v13;
          if (v6 >= 2)
          {
            v17 = v14;
            v18 = 1;
            v16 = v13;
            do
            {
              v19 = *v17--;
              v20 = &v8[v18];
              v21 = vld1q_dup_f32(v20);
              v16 = vmlaq_s32(v16, vsubq_s32(*(v10[v18++] + 4 * v15), *(v19 + 4 * v15)), v21);
            }

            while (v12 != v18);
          }

          *(a3 + 2 * v15) = vqmovn_s32(v16);
          v15 += 4;
        }

        while (v15 <= a6 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < a6)
      {
        do
        {
          v22 = v9;
          if (v6 >= 2)
          {
            v23 = v14;
            v24 = 1;
            v22 = v9;
            do
            {
              v25 = *v23--;
              v22 += (*(v10[v24] + 4 * v15) - *(v25 + 4 * v15)) * LODWORD(v8[v24]);
              ++v24;
            }

            while (v12 != v24);
          }

          if (v22 <= -32768)
          {
            v22 = -32768;
          }

          if (v22 >= 0x7FFF)
          {
            LOWORD(v22) = 0x7FFF;
          }

          *(a3 + 2 * v15++) = v22;
        }

        while (v15 != a6);
      }

      a3 += v11;
      ++v10;
      v14 += 8;
      --a5;
    }

    while (a5);
  }

  return result;
}

void cv::ColumnFilter<cv::Cast<int,short>,cv::ColumnNoVec>::~ColumnFilter(uint64_t a1)
{
  *a1 = &unk_2840555D0;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::ColumnFilter<cv::Cast<int,short>,cv::ColumnNoVec>::operator()(uint64_t result, uint64_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  if (a5)
  {
    v6 = *(result + 32);
    v7 = *(result + 116);
    v8 = *(result + 8);
    v9 = a4;
    v10 = vdupq_n_s32(v7);
    do
    {
      if (a6 >= 4)
      {
        v11 = 0;
        v12 = *a2;
        v13 = vld1q_dup_f32(v6);
        do
        {
          v14 = vmlaq_s32(v10, *(v12 + 4 * v11), v13);
          if (v8 >= 2)
          {
            for (i = 1; i != v8; ++i)
            {
              v16 = &v6[i];
              v17 = vld1q_dup_f32(v16);
              v14 = vmlaq_s32(v14, *(a2[i] + 4 * v11), v17);
            }
          }

          result = 2 * v11;
          *(a3 + 2 * v11) = vqmovn_s32(v14);
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
        v18 = *v6;
        result = *a2;
        do
        {
          v19 = v7 + *(result + 4 * v11) * LODWORD(v18);
          if (v8 >= 2)
          {
            for (j = 1; j != v8; ++j)
            {
              v19 += *(a2[j] + 4 * v11) * LODWORD(v6[j]);
            }
          }

          if (v19 <= -32768)
          {
            v19 = -32768;
          }

          if (v19 >= 0x7FFF)
          {
            LOWORD(v19) = 0x7FFF;
          }

          *(a3 + 2 * v11++) = v19;
        }

        while (v11 != a6);
      }

      a3 += v9;
      ++a2;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::SymmColumnFilter<cv::Cast<float,short>,cv::ColumnNoVec>::SymmColumnFilter(uint64_t a1, cv::Mat *a2, int a3, int a4, double a5)
{
  v7 = cv::ColumnFilter<cv::Cast<float,short>,cv::ColumnNoVec>::ColumnFilter(a1, a2, a3, a5);
  *v7 = &unk_284055600;
  *(v7 + 120) = a4;
  if ((a4 & 3) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0");
    std::string::basic_string[abi:ne200100]<0>(v11, "SymmColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v13, 4294967081, v12, v11, __p, 2523);
    cv::error(v13, v8);
  }

  return a1;
}

void sub_22D20A02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  cv::ColumnFilter<cv::Cast<float,short>,cv::ColumnNoVec>::~ColumnFilter(v27);
  _Unwind_Resume(a1);
}

uint64_t cv::SymmColumnFilter<cv::Cast<float,short>,cv::ColumnNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_2840550F0;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::SymmColumnFilter<cv::Cast<float,short>,cv::ColumnNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_2840550F0;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::SymmColumnFilter<cv::Cast<float,short>,cv::ColumnNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, double a7)
{
  v7 = *(result + 8);
  v8 = (v7 + (v7 >> 31)) >> 1;
  v9 = (*(result + 32) + 4 * (v7 / 2));
  LODWORD(a7) = *(result + 116);
  v10 = (a2 + 8 * (v7 / 2));
  if (*(result + 120))
  {
    if (a5)
    {
      v24 = a4;
      v25 = (v7 / 2 + 1);
      v26 = vdupq_lane_s32(*&a7, 0);
      v27 = a2 + 8 * v8 - 8;
      do
      {
        if (a6 >= 4)
        {
          result = 0;
          v28 = *v10;
          v29 = vld1q_dup_f32(v9);
          do
          {
            v30 = vmlaq_f32(v26, *(v28 + 4 * result), v29);
            if (v7 >= 2)
            {
              v31 = v27;
              v32 = 1;
              do
              {
                v33 = *v31--;
                v30 = vmlaq_n_f32(v30, vaddq_f32(*(v10[v32] + 4 * result), *(v33 + 4 * result)), v9[v32]);
                ++v32;
              }

              while (v25 != v32);
            }

            *(a3 + 2 * result) = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(*v30.f32))), vcvtq_s64_f64(vrndxq_f64(vcvt_hight_f64_f32(v30)))));
            result += 4;
          }

          while (result <= a6 - 4);
          result = result;
        }

        else
        {
          result = 0;
        }

        if (result < a6)
        {
          v34 = *v9;
          v35 = *v10;
          do
          {
            v36 = *&a7 + (v34 * *(v35 + 4 * result));
            if (v7 >= 2)
            {
              v37 = v27;
              v38 = 1;
              do
              {
                v39 = *v37--;
                v36 = v36 + (v9[v38] * (*(v10[v38] + 4 * result) + *(v39 + 4 * result)));
                ++v38;
              }

              while (v25 != v38);
            }

            v40 = rint(v36);
            if (v40 <= -32768)
            {
              LODWORD(v40) = -32768;
            }

            if (v40 >= 0x7FFF)
            {
              LOWORD(v40) = 0x7FFF;
            }

            *(a3 + 2 * result++) = v40;
          }

          while (result != a6);
        }

        a3 += v24;
        ++v10;
        v27 += 8;
        --a5;
      }

      while (a5);
    }
  }

  else if (a5)
  {
    v11 = a4;
    v12 = (v7 / 2 + 1);
    v13 = vdupq_lane_s32(*&a7, 0);
    v14 = a2 + 8 * v8 - 8;
    do
    {
      if (a6 >= 4)
      {
        result = 0;
        do
        {
          v15 = v13;
          if (v7 >= 2)
          {
            v16 = v14;
            v17 = 1;
            v15 = v13;
            do
            {
              v18 = *v16--;
              v15 = vmlaq_n_f32(v15, vsubq_f32(*(v10[v17] + 4 * result), *(v18 + 4 * result)), v9[v17]);
              ++v17;
            }

            while (v12 != v17);
          }

          *(a3 + 2 * result) = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(*v15.f32))), vcvtq_s64_f64(vrndxq_f64(vcvt_hight_f64_f32(v15)))));
          result += 4;
        }

        while (result <= a6 - 4);
        result = result;
      }

      else
      {
        result = 0;
      }

      if (result < a6)
      {
        do
        {
          v19 = *&a7;
          if (v7 >= 2)
          {
            v20 = v14;
            v21 = 1;
            v19 = *&a7;
            do
            {
              v22 = *v20--;
              v19 = v19 + (v9[v21] * (*(v10[v21] + 4 * result) - *(v22 + 4 * result)));
              ++v21;
            }

            while (v12 != v21);
          }

          v23 = rint(v19);
          if (v23 <= -32768)
          {
            LODWORD(v23) = -32768;
          }

          if (v23 >= 0x7FFF)
          {
            LOWORD(v23) = 0x7FFF;
          }

          *(a3 + 2 * result++) = v23;
        }

        while (result != a6);
      }

      a3 += v11;
      ++v10;
      v14 += 8;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::SymmColumnFilter<cv::Cast<double,short>,cv::ColumnNoVec>::SymmColumnFilter(uint64_t a1, cv::Mat *a2, int a3, int a4, double a5)
{
  v7 = cv::ColumnFilter<cv::Cast<double,short>,cv::ColumnNoVec>::ColumnFilter(a1, a2, a3, a5);
  *v7 = &unk_284055648;
  *(v7 + 128) = a4;
  if ((a4 & 3) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0");
    std::string::basic_string[abi:ne200100]<0>(v11, "SymmColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v13, 4294967081, v12, v11, __p, 2523);
    cv::error(v13, v8);
  }

  return a1;
}

void sub_22D20A5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  cv::ColumnFilter<cv::Cast<double,short>,cv::ColumnNoVec>::~ColumnFilter(v27);
  _Unwind_Resume(a1);
}

uint64_t cv::SymmColumnFilter<cv::Cast<double,short>,cv::ColumnNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055138;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::SymmColumnFilter<cv::Cast<double,short>,cv::ColumnNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055138;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::SymmColumnFilter<cv::Cast<double,short>,cv::ColumnNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = (v6 + (v6 >> 31)) >> 1;
  v8 = (*(result + 32) + 8 * (v6 / 2));
  v9 = *(result + 120);
  v10 = (a2 + 8 * (v6 / 2));
  if (*(result + 128))
  {
    if (a5)
    {
      v28 = a4;
      v29 = vdupq_lane_s64(v9, 0);
      v30 = a2 + 8 * v7 - 8;
      v31 = 8 * (v6 / 2 + 1);
      do
      {
        if (a6 >= 4)
        {
          result = 0;
          v32 = *v10;
          v33 = vld1q_dup_f64(v8);
          do
          {
            v34 = (v32 + 8 * result);
            v35 = vmlaq_f64(v29, v34[1], v33);
            v36 = vmlaq_f64(v29, *v34, v33);
            if (v6 >= 2)
            {
              v37 = 8;
              v38 = v30;
              do
              {
                v39 = (v10[v37 / 8] + 8 * result);
                v40 = *v38--;
                v41 = (v40 + 8 * result);
                v42 = v8[v37 / 8];
                v35 = vmlaq_n_f64(v35, vaddq_f64(v39[1], v41[1]), v42);
                v36 = vmlaq_n_f64(v36, vaddq_f64(*v39, *v41), v42);
                v37 += 8;
              }

              while (v31 != v37);
            }

            *(a3 + 2 * result) = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v36)), vcvtq_s64_f64(vrndxq_f64(v35))));
            result += 4;
          }

          while (result <= a6 - 4);
          result = result;
        }

        else
        {
          result = 0;
        }

        if (result < a6)
        {
          v43 = *v8;
          v44 = *v10;
          do
          {
            v45 = *&v9 + v43 * *(v44 + 8 * result);
            if (v6 >= 2)
            {
              v46 = 8;
              v47 = v30;
              do
              {
                v48 = *v47--;
                v45 = v45 + v8[v46 / 8] * (*(v10[v46 / 8] + 8 * result) + *(v48 + 8 * result));
                v46 += 8;
              }

              while (v31 != v46);
            }

            v49 = rint(v45);
            if (v49 <= -32768)
            {
              LODWORD(v49) = -32768;
            }

            if (v49 >= 0x7FFF)
            {
              LOWORD(v49) = 0x7FFF;
            }

            *(a3 + 2 * result++) = v49;
          }

          while (result != a6);
        }

        a3 += v28;
        ++v10;
        v30 += 8;
        --a5;
      }

      while (a5);
    }
  }

  else if (a5)
  {
    v11 = a4;
    v12 = vdupq_lane_s64(v9, 0);
    v13 = a2 + 8 * v7 - 8;
    v14 = 8 * (v6 / 2 + 1);
    do
    {
      if (a6 >= 4)
      {
        result = 0;
        do
        {
          v15 = v12;
          v16 = v12;
          if (v6 >= 2)
          {
            v17 = 8;
            v18 = v13;
            v15 = v12;
            v16 = v12;
            do
            {
              v19 = (v10[v17 / 8] + 8 * result);
              v20 = *v18--;
              v21 = (v20 + 8 * result);
              v22 = v8[v17 / 8];
              v16 = vmlaq_n_f64(v16, vsubq_f64(v19[1], v21[1]), v22);
              v15 = vmlaq_n_f64(v15, vsubq_f64(*v19, *v21), v22);
              v17 += 8;
            }

            while (v14 != v17);
          }

          *(a3 + 2 * result) = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v15)), vcvtq_s64_f64(vrndxq_f64(v16))));
          result += 4;
        }

        while (result <= a6 - 4);
        result = result;
      }

      else
      {
        result = 0;
      }

      if (result < a6)
      {
        do
        {
          v23 = *&v9;
          if (v6 >= 2)
          {
            v24 = 8;
            v25 = v13;
            v23 = *&v9;
            do
            {
              v26 = *v25--;
              v23 = v23 + v8[v24 / 8] * (*(v10[v24 / 8] + 8 * result) - *(v26 + 8 * result));
              v24 += 8;
            }

            while (v14 != v24);
          }

          v27 = rint(v23);
          if (v27 <= -32768)
          {
            LODWORD(v27) = -32768;
          }

          if (v27 >= 0x7FFF)
          {
            LOWORD(v27) = 0x7FFF;
          }

          *(a3 + 2 * result++) = v27;
        }

        while (result != a6);
      }

      a3 += v11;
      ++v10;
      v13 += 8;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::SymmColumnFilter<cv::Cast<float,float>,cv::ColumnNoVec>::SymmColumnFilter(uint64_t a1, cv::Mat *a2, int a3, int a4, double a5)
{
  v7 = cv::ColumnFilter<cv::Cast<float,float>,cv::ColumnNoVec>::ColumnFilter(a1, a2, a3, a5);
  *v7 = &unk_284055690;
  *(v7 + 120) = a4;
  if ((a4 & 3) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0");
    std::string::basic_string[abi:ne200100]<0>(v11, "SymmColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v13, 4294967081, v12, v11, __p, 2523);
    cv::error(v13, v8);
  }

  return a1;
}

void sub_22D20ABB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  cv::ColumnFilter<cv::Cast<float,float>,cv::ColumnNoVec>::~ColumnFilter(v27);
  _Unwind_Resume(a1);
}

uint64_t cv::SymmColumnFilter<cv::Cast<float,float>,cv::ColumnNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055180;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::SymmColumnFilter<cv::Cast<float,float>,cv::ColumnNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_284055180;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::SymmColumnFilter<cv::Cast<float,float>,cv::ColumnNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, double a7)
{
  v7 = *(result + 8);
  v8 = (v7 + (v7 >> 31)) >> 1;
  v9 = (*(result + 32) + 4 * (v7 / 2));
  LODWORD(a7) = *(result + 116);
  v10 = (a2 + 8 * (v7 / 2));
  if (*(result + 120))
  {
    if (a5)
    {
      v21 = a4;
      v22 = (v7 / 2 + 1);
      v23 = vdupq_lane_s32(*&a7, 0);
      v24 = a2 + 8 * v8 - 8;
      do
      {
        if (a6 >= 4)
        {
          v25 = 0;
          v26 = *v10;
          do
          {
            result = 4 * v25;
            v27 = vmlaq_n_f32(v23, *(v26 + 4 * v25), *v9);
            if (v7 >= 2)
            {
              v28 = v24;
              v29 = 1;
              do
              {
                v30 = *v28--;
                v27 = vmlaq_n_f32(v27, vaddq_f32(*(v10[v29] + 4 * v25), *(v30 + 4 * v25)), v9[v29]);
                ++v29;
              }

              while (v22 != v29);
            }

            *(a3 + 4 * v25) = v27;
            v25 += 4;
          }

          while (v25 <= a6 - 4);
          v25 = v25;
        }

        else
        {
          v25 = 0;
        }

        if (v25 < a6)
        {
          v31 = *v10;
          do
          {
            v32 = *&a7 + (*v9 * *(v31 + 4 * v25));
            if (v7 >= 2)
            {
              result = v24;
              v33 = 1;
              do
              {
                v34 = *result;
                result -= 8;
                v32 = v32 + (v9[v33] * (*(v10[v33] + 4 * v25) + *(v34 + 4 * v25)));
                ++v33;
              }

              while (v22 != v33);
            }

            *(a3 + 4 * v25++) = v32;
          }

          while (v25 != a6);
        }

        a3 += v21;
        ++v10;
        v24 += 8;
        --a5;
      }

      while (a5);
    }
  }

  else if (a5)
  {
    v11 = (v7 / 2 + 1);
    v12 = vdupq_lane_s32(*&a7, 0);
    v13 = a2 + 8 * v8 - 8;
    do
    {
      if (a6 >= 4)
      {
        v14 = 0;
        do
        {
          v15 = v12;
          if (v7 >= 2)
          {
            result = v13;
            v16 = 1;
            v15 = v12;
            do
            {
              v17 = *result;
              result -= 8;
              v15 = vmlaq_n_f32(v15, vsubq_f32(*(v10[v16] + 4 * v14), *(v17 + 4 * v14)), v9[v16]);
              ++v16;
            }

            while (v11 != v16);
          }

          *(a3 + 4 * v14) = v15;
          v14 += 4;
        }

        while (v14 <= a6 - 4);
        v14 = v14;
      }

      else
      {
        v14 = 0;
      }

      if (v14 < a6)
      {
        do
        {
          v18 = *&a7;
          if (v7 >= 2)
          {
            v19 = v13;
            result = 1;
            v18 = *&a7;
            do
            {
              v20 = *v19--;
              v18 = v18 + (v9[result] * (*(v10[result] + 4 * v14) - *(v20 + 4 * v14)));
              ++result;
            }

            while (v11 != result);
          }

          *(a3 + 4 * v14++) = v18;
        }

        while (v14 != a6);
      }

      a3 += a4;
      ++v10;
      v13 += 8;
      --a5;
    }

    while (a5);
  }

  return result;
}

uint64_t cv::SymmColumnFilter<cv::Cast<double,double>,cv::ColumnNoVec>::SymmColumnFilter(uint64_t a1, cv::Mat *a2, int a3, int a4, double a5)
{
  v7 = cv::ColumnFilter<cv::Cast<double,double>,cv::ColumnNoVec>::ColumnFilter(a1, a2, a3, a5);
  *v7 = &unk_2840556D8;
  *(v7 + 128) = a4;
  if ((a4 & 3) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v12, "(symmetryType & (KERNEL_SYMMETRICAL | KERNEL_ASYMMETRICAL)) != 0");
    std::string::basic_string[abi:ne200100]<0>(v11, "SymmColumnFilter");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v13, 4294967081, v12, v11, __p, 2523);
    cv::error(v13, v8);
  }

  return a1;
}

void sub_22D20B0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  cv::ColumnFilter<cv::Cast<double,double>,cv::ColumnNoVec>::~ColumnFilter(v27);
  _Unwind_Resume(a1);
}

uint64_t cv::SymmColumnFilter<cv::Cast<double,double>,cv::ColumnNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_2840551C8;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  return a1;
}

void cv::SymmColumnFilter<cv::Cast<double,double>,cv::ColumnNoVec>::~SymmColumnFilter(uint64_t a1)
{
  *a1 = &unk_2840551C8;
  v2 = *(a1 + 40);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((a1 + 16));
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 20) >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 80);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(a1 + 20));
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 88);
  if (v5)
  {
    v6 = v5 == (a1 + 96);
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::SymmColumnFilter<cv::Cast<double,double>,cv::ColumnNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = *(result + 8);
  v7 = (v6 + (v6 >> 31)) >> 1;
  v8 = (*(result + 32) + 8 * (v6 / 2));
  v9 = *(result + 120);
  v10 = (a2 + 8 * (v6 / 2));
  if (*(result + 128))
  {
    if (a5)
    {
      v27 = a4;
      v28 = vdupq_lane_s64(v9, 0);
      v29 = a2 + 8 * v7 - 8;
      v30 = 8 * (v6 / 2 + 1);
      do
      {
        if (a6 >= 4)
        {
          v31 = 0;
          v32 = *v10;
          do
          {
            v33 = (v32 + 8 * v31);
            v34 = vmlaq_n_f64(v28, *v33, *v8);
            v35 = vmlaq_n_f64(v28, v33[1], *v8);
            if (v6 >= 2)
            {
              v36 = 8;
              v37 = v29;
              do
              {
                v38 = (v10[v36 / 8] + 8 * v31);
                v39 = *v37--;
                v40 = (v39 + 8 * v31);
                v41 = v8[v36 / 8];
                v34 = vmlaq_n_f64(v34, vaddq_f64(*v38, *v40), v41);
                v35 = vmlaq_n_f64(v35, vaddq_f64(v38[1], v40[1]), v41);
                v36 += 8;
              }

              while (v30 != v36);
            }

            result = a3 + 8 * v31;
            *result = v34;
            *(result + 16) = v35;
            v31 += 4;
          }

          while (v31 <= a6 - 4);
          v31 = v31;
        }

        else
        {
          v31 = 0;
        }

        if (v31 < a6)
        {
          v42 = *v10;
          do
          {
            v43 = *&v9 + *v8 * *(v42 + 8 * v31);
            if (v6 >= 2)
            {
              result = 8;
              v44 = v29;
              do
              {
                v45 = *v44--;
                v43 = v43 + *(v8 + result) * (*(*(v10 + result) + 8 * v31) + *(v45 + 8 * v31));
                result += 8;
              }

              while (v30 != result);
            }

            *(a3 + 8 * v31++) = v43;
          }

          while (v31 != a6);
        }

        a3 += v27;
        ++v10;
        v29 += 8;
        --a5;
      }

      while (a5);
    }
  }

  else if (a5)
  {
    v11 = a4;
    v12 = vdupq_lane_s64(v9, 0);
    v13 = a2 + 8 * v7 - 8;
    v14 = 8 * (v6 / 2 + 1);
    do
    {
      if (a6 >= 4)
      {
        v15 = 0;
        do
        {
          v16 = v12;
          v17 = v12;
          if (v6 >= 2)
          {
            v18 = 8;
            result = v13;
            v16 = v12;
            v17 = v12;
            do
            {
              v19 = (v10[v18 / 8] + 8 * v15);
              v20 = *result;
              result -= 8;
              v21 = (v20 + 8 * v15);
              v22 = v8[v18 / 8];
              v16 = vmlaq_n_f64(v16, vsubq_f64(*v19, *v21), v22);
              v17 = vmlaq_n_f64(v17, vsubq_f64(v19[1], v21[1]), v22);
              v18 += 8;
            }

            while (v14 != v18);
          }

          v23 = (a3 + 8 * v15);
          *v23 = v16;
          v23[1] = v17;
          v15 += 4;
        }

        while (v15 <= a6 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < a6)
      {
        do
        {
          v24 = *&v9;
          if (v6 >= 2)
          {
            v25 = 8;
            result = v13;
            v24 = *&v9;
            do
            {
              v26 = *result;
              result -= 8;
              v24 = v24 + v8[v25 / 8] * (*(v10[v25 / 8] + 8 * v15) - *(v26 + 8 * v15));
              v25 += 8;
            }

            while (v14 != v25);
          }

          *(a3 + 8 * v15++) = v24;
        }

        while (v15 != a6);
      }

      a3 += v11;
      ++v10;
      v13 += 8;
      --a5;
    }

    while (a5);
  }

  return result;
}

void std::vector<cv::Point_<int>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 3;
    v9 = v4 - *a1;
    if (v9 >> 2 > v7)
    {
      v7 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a1, v10);
    }

    __p = 0;
    v12 = 8 * v8;
    v14 = 0;
    bzero((8 * v8), 8 * a2);
    v13 = 8 * v8 + 8 * a2;
    std::vector<cv::Point_<int>>::__swap_out_circular_buffer(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_22D20B654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::vector<cv::Point_<int>>::__swap_out_circular_buffer(uint64_t **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

uint64_t cv::Filter2D<unsigned char,cv::Cast<float,unsigned char>,cv::FilterNoVec>::Filter2D(uint64_t a1, int32x2_t **a2, void *a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = -1;
  *(a1 + 24) = 0u;
  *a1 = &unk_284055720;
  *(a1 + 72) = 0u;
  v5 = (a1 + 72);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 16) = *a3;
  *(a1 + 8) = vrev64_s32(*a2[8]);
  v6 = a4;
  *(a1 + 96) = v6;
  if ((*a2 & 0xFFF) != 5)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "_kernel.type() == DataType<KT>::type");
    std::string::basic_string[abi:ne200100]<0>(v10, "Filter2D");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v12, 4294967081, v11, v10, __p, 3116);
    cv::error(v12, v7);
  }

  cv::preprocess2DKernel(a2, (a1 + 24), a1 + 48);
  std::vector<unsigned char *>::resize(v5, (*(a1 + 32) - *(a1 + 24)) >> 3);
  return a1;
}

void sub_22D20B854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  v31 = *v29;
  if (*v29)
  {
    v27[10] = v31;
    operator delete(v31);
  }

  v32 = v27[6];
  if (v32)
  {
    v27[7] = v32;
    operator delete(v32);
  }

  v33 = *v28;
  if (*v28)
  {
    v27[4] = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void *cv::Filter2D<unsigned char,cv::Cast<float,unsigned char>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_284055720;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void cv::Filter2D<unsigned char,cv::Cast<float,unsigned char>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_284055720;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::Filter2D<unsigned char,cv::Cast<float,unsigned char>,cv::FilterNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, float32x4_t a14)
{
  if (a5 >= 1)
  {
    LODWORD(a8) = *(result + 96);
    v14 = *(result + 48);
    v15 = *(result + 72);
    v16 = (a7 * a6);
    v17 = *(result + 24);
    v18 = (*(result + 32) - v17) >> 3;
    v19 = a4;
    v20 = vdupq_lane_s32(*&a8, 0);
    v21 = v17 + 4;
    v22.i64[0] = 0xFF000000FFLL;
    v22.i64[1] = 0xFF000000FFLL;
    do
    {
      v23 = v18 & 0x7FFFFFFF;
      result = v21;
      v24 = v15;
      if (v18 >= 1)
      {
        do
        {
          *v24++ = *(a2 + 8 * *result) + *(result - 4) * a7;
          result += 8;
          --v23;
        }

        while (v23);
      }

      if (v16 >= 4)
      {
        v25 = 0;
        do
        {
          v26 = v20;
          if (v18 >= 1)
          {
            result = v18 & 0x7FFFFFFF;
            v27 = v15;
            v28 = v14;
            v26 = v20;
            do
            {
              v30 = *v27++;
              v29 = v30;
              LODWORD(v30) = *v28++;
              a14.i32[0] = *(v29 + v25);
              a14 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a14.f32)));
              v26 = vmlaq_n_f32(v26, a14, *&v30);
              --result;
            }

            while (result);
          }

          *(a3 + v25) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(*v26.f32))), vcvtq_s64_f64(vrndxq_f64(vcvt_hight_f64_f32(v26)))), 0), v22)), *&a8).u32[0];
          v25 += 4;
        }

        while (v25 <= v16 - 4);
        v25 = v25;
      }

      else
      {
        v25 = 0;
      }

      if (v25 < v16)
      {
        do
        {
          v31 = *&a8;
          if (v18 >= 1)
          {
            v32 = v18 & 0x7FFFFFFF;
            v33 = v14;
            v34 = v15;
            v31 = *&a8;
            do
            {
              v35 = *v33++;
              v36 = v35;
              v37 = *v34++;
              a14.i8[0] = *(v37 + v25);
              a14.f32[0] = a14.u32[0];
              v31 = v31 + (v36 * a14.f32[0]);
              --v32;
            }

            while (v32);
          }

          v38 = rint(v31);
          LODWORD(result) = v38 & ~(v38 >> 31);
          if (result >= 255)
          {
            result = 255;
          }

          else
          {
            result = result;
          }

          *(a3 + v25++) = result;
        }

        while (v25 != v16);
      }

      a3 += v19;
      a2 += 8;
      v39 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v39 | (a5 == 0)));
  }

  return result;
}

uint64_t cv::Filter2D<unsigned char,cv::Cast<float,unsigned short>,cv::FilterNoVec>::Filter2D(uint64_t a1, int32x2_t **a2, void *a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = -1;
  *(a1 + 24) = 0u;
  *a1 = &unk_284055768;
  *(a1 + 72) = 0u;
  v5 = (a1 + 72);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 16) = *a3;
  *(a1 + 8) = vrev64_s32(*a2[8]);
  v6 = a4;
  *(a1 + 96) = v6;
  if ((*a2 & 0xFFF) != 5)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "_kernel.type() == DataType<KT>::type");
    std::string::basic_string[abi:ne200100]<0>(v10, "Filter2D");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v12, 4294967081, v11, v10, __p, 3116);
    cv::error(v12, v7);
  }

  cv::preprocess2DKernel(a2, (a1 + 24), a1 + 48);
  std::vector<unsigned char *>::resize(v5, (*(a1 + 32) - *(a1 + 24)) >> 3);
  return a1;
}

void sub_22D20BCD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  v31 = *v29;
  if (*v29)
  {
    v27[10] = v31;
    operator delete(v31);
  }

  v32 = v27[6];
  if (v32)
  {
    v27[7] = v32;
    operator delete(v32);
  }

  v33 = *v28;
  if (*v28)
  {
    v27[4] = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void *cv::Filter2D<unsigned char,cv::Cast<float,unsigned short>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_284055768;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void cv::Filter2D<unsigned char,cv::Cast<float,unsigned short>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_284055768;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::Filter2D<unsigned char,cv::Cast<float,unsigned short>,cv::FilterNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, float32x4_t a14)
{
  if (a5 >= 1)
  {
    LODWORD(a8) = *(result + 96);
    v14 = *(result + 48);
    v15 = *(result + 72);
    v16 = (a7 * a6);
    v17 = *(result + 24);
    v18 = (*(result + 32) - v17) >> 3;
    v19 = a4;
    v20 = vdupq_lane_s32(*&a8, 0);
    v21 = v17 + 4;
    v22.i64[0] = 0xFFFF0000FFFFLL;
    v22.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      v23 = v18 & 0x7FFFFFFF;
      result = v21;
      v24 = v15;
      if (v18 >= 1)
      {
        do
        {
          *v24++ = *(a2 + 8 * *result) + *(result - 4) * a7;
          result += 8;
          --v23;
        }

        while (v23);
      }

      if (v16 >= 4)
      {
        v25 = 0;
        do
        {
          v26 = v20;
          if (v18 >= 1)
          {
            v27 = v18 & 0x7FFFFFFF;
            v28 = v15;
            v29 = v14;
            v26 = v20;
            do
            {
              v31 = *v28++;
              v30 = v31;
              LODWORD(v31) = *v29++;
              a14.i32[0] = *(v30 + v25);
              a14 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a14.f32)));
              v26 = vmlaq_n_f32(v26, a14, *&v31);
              --v27;
            }

            while (v27);
          }

          result = 2 * v25;
          *(a3 + 2 * v25) = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(*v26.f32))), vcvtq_s64_f64(vrndxq_f64(vcvt_hight_f64_f32(v26)))), 0), v22));
          v25 += 4;
        }

        while (v25 <= v16 - 4);
        v25 = v25;
      }

      else
      {
        v25 = 0;
      }

      if (v25 < v16)
      {
        do
        {
          v32 = *&a8;
          if (v18 >= 1)
          {
            v33 = v18 & 0x7FFFFFFF;
            v34 = v14;
            v35 = v15;
            v32 = *&a8;
            do
            {
              v36 = *v34++;
              v37 = v36;
              v38 = *v35++;
              a14.i8[0] = *(v38 + v25);
              a14.f32[0] = a14.u32[0];
              v32 = v32 + (v37 * a14.f32[0]);
              --v33;
            }

            while (v33);
          }

          v39 = rint(v32);
          LODWORD(result) = v39 & ~(v39 >> 31);
          if (result >= 0xFFFF)
          {
            result = 0xFFFFLL;
          }

          else
          {
            result = result;
          }

          *(a3 + 2 * v25++) = result;
        }

        while (v25 != v16);
      }

      a3 += v19;
      a2 += 8;
      v40 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v40 | (a5 == 0)));
  }

  return result;
}

uint64_t cv::Filter2D<unsigned char,cv::Cast<float,short>,cv::FilterNoVec>::Filter2D(uint64_t a1, int32x2_t **a2, void *a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = -1;
  *(a1 + 24) = 0u;
  *a1 = &unk_2840557B0;
  *(a1 + 72) = 0u;
  v5 = (a1 + 72);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 16) = *a3;
  *(a1 + 8) = vrev64_s32(*a2[8]);
  v6 = a4;
  *(a1 + 96) = v6;
  if ((*a2 & 0xFFF) != 5)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "_kernel.type() == DataType<KT>::type");
    std::string::basic_string[abi:ne200100]<0>(v10, "Filter2D");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v12, 4294967081, v11, v10, __p, 3116);
    cv::error(v12, v7);
  }

  cv::preprocess2DKernel(a2, (a1 + 24), a1 + 48);
  std::vector<unsigned char *>::resize(v5, (*(a1 + 32) - *(a1 + 24)) >> 3);
  return a1;
}

void sub_22D20C14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  v31 = *v29;
  if (*v29)
  {
    v27[10] = v31;
    operator delete(v31);
  }

  v32 = v27[6];
  if (v32)
  {
    v27[7] = v32;
    operator delete(v32);
  }

  v33 = *v28;
  if (*v28)
  {
    v27[4] = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void *cv::Filter2D<unsigned char,cv::Cast<float,short>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_2840557B0;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void cv::Filter2D<unsigned char,cv::Cast<float,short>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_2840557B0;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::Filter2D<unsigned char,cv::Cast<float,short>,cv::FilterNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, double a8, double a9, double a10, double a11, float32x4_t a12)
{
  if (a5 >= 1)
  {
    LODWORD(a8) = *(result + 96);
    v12 = *(result + 48);
    v13 = *(result + 72);
    v14 = (a7 * a6);
    v15 = *(result + 24);
    v16 = (*(result + 32) - v15) >> 3;
    v17 = a4;
    v18 = vdupq_lane_s32(*&a8, 0);
    v19 = (v15 + 4);
    do
    {
      v20 = v16 & 0x7FFFFFFF;
      v21 = v19;
      v22 = v13;
      if (v16 >= 1)
      {
        do
        {
          *v22++ = *(a2 + 8 * *v21) + *(v21 - 1) * a7;
          v21 += 2;
          --v20;
        }

        while (v20);
      }

      if (v14 >= 4)
      {
        result = 0;
        do
        {
          v23 = v18;
          if (v16 >= 1)
          {
            v24 = v16 & 0x7FFFFFFF;
            v25 = v13;
            v26 = v12;
            v23 = v18;
            do
            {
              v28 = *v25++;
              v27 = v28;
              LODWORD(v28) = *v26++;
              a12.i32[0] = *(v27 + result);
              a12 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a12.f32)));
              v23 = vmlaq_n_f32(v23, a12, *&v28);
              --v24;
            }

            while (v24);
          }

          *(a3 + 2 * result) = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(*v23.f32))), vcvtq_s64_f64(vrndxq_f64(vcvt_hight_f64_f32(v23)))));
          result += 4;
        }

        while (result <= v14 - 4);
        result = result;
      }

      else
      {
        result = 0;
      }

      if (result < v14)
      {
        do
        {
          v29 = *&a8;
          if (v16 >= 1)
          {
            v30 = v16 & 0x7FFFFFFF;
            v31 = v12;
            v32 = v13;
            v29 = *&a8;
            do
            {
              v33 = *v31++;
              v34 = v33;
              v35 = *v32++;
              a12.i8[0] = *(v35 + result);
              a12.f32[0] = a12.u32[0];
              v29 = v29 + (v34 * a12.f32[0]);
              --v30;
            }

            while (v30);
          }

          v36 = rint(v29);
          if (v36 <= -32768)
          {
            LODWORD(v36) = -32768;
          }

          if (v36 >= 0x7FFF)
          {
            LOWORD(v36) = 0x7FFF;
          }

          *(a3 + 2 * result++) = v36;
        }

        while (result != v14);
      }

      a3 += v17;
      a2 += 8;
      v37 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v37 | (a5 == 0)));
  }

  return result;
}

uint64_t cv::Filter2D<unsigned char,cv::Cast<float,float>,cv::FilterNoVec>::Filter2D(uint64_t a1, int32x2_t **a2, void *a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = -1;
  *(a1 + 24) = 0u;
  *a1 = &unk_2840557F8;
  *(a1 + 72) = 0u;
  v5 = (a1 + 72);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 16) = *a3;
  *(a1 + 8) = vrev64_s32(*a2[8]);
  v6 = a4;
  *(a1 + 96) = v6;
  if ((*a2 & 0xFFF) != 5)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "_kernel.type() == DataType<KT>::type");
    std::string::basic_string[abi:ne200100]<0>(v10, "Filter2D");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v12, 4294967081, v11, v10, __p, 3116);
    cv::error(v12, v7);
  }

  cv::preprocess2DKernel(a2, (a1 + 24), a1 + 48);
  std::vector<unsigned char *>::resize(v5, (*(a1 + 32) - *(a1 + 24)) >> 3);
  return a1;
}

void sub_22D20C5C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  v31 = *v29;
  if (*v29)
  {
    v27[10] = v31;
    operator delete(v31);
  }

  v32 = v27[6];
  if (v32)
  {
    v27[7] = v32;
    operator delete(v32);
  }

  v33 = *v28;
  if (*v28)
  {
    v27[4] = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void *cv::Filter2D<unsigned char,cv::Cast<float,float>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_2840557F8;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void cv::Filter2D<unsigned char,cv::Cast<float,float>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_2840557F8;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t *cv::Filter2D<unsigned char,cv::Cast<float,float>,cv::FilterNoVec>::operator()(uint64_t *result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, double a8, double a9, double a10, double a11, float32x4_t a12)
{
  if (a5 >= 1)
  {
    LODWORD(a8) = *(result + 24);
    v12 = result[6];
    v13 = result[9];
    v14 = (a7 * a6);
    v15 = result[3];
    v16 = (result[4] - v15) >> 3;
    v17 = a4;
    v18 = vdupq_lane_s32(*&a8, 0);
    v19 = (v15 + 4);
    do
    {
      v20 = v16 & 0x7FFFFFFF;
      v21 = v19;
      result = v13;
      if (v16 >= 1)
      {
        do
        {
          *result++ = *(a2 + 8 * *v21) + *(v21 - 1) * a7;
          v21 += 2;
          --v20;
        }

        while (v20);
      }

      if (v14 >= 4)
      {
        v22 = 0;
        do
        {
          v23 = v18;
          if (v16 >= 1)
          {
            v24 = v16 & 0x7FFFFFFF;
            result = v13;
            v25 = v12;
            v23 = v18;
            do
            {
              v27 = *result++;
              v26 = v27;
              LODWORD(v27) = *v25++;
              a12.i32[0] = *(v26 + v22);
              a12 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a12.f32)));
              v23 = vmlaq_n_f32(v23, a12, *&v27);
              --v24;
            }

            while (v24);
          }

          *(a3 + 4 * v22) = v23;
          v22 += 4;
        }

        while (v22 <= v14 - 4);
        v22 = v22;
      }

      else
      {
        v22 = 0;
      }

      if (v22 < v14)
      {
        do
        {
          v28 = *&a8;
          if (v16 >= 1)
          {
            v29 = v16 & 0x7FFFFFFF;
            result = v12;
            v30 = v13;
            v28 = *&a8;
            do
            {
              v31 = *result;
              result = (result + 4);
              v32 = v31;
              v33 = *v30++;
              a12.i8[0] = *(v33 + v22);
              a12.f32[0] = a12.u32[0];
              v28 = v28 + (v32 * a12.f32[0]);
              --v29;
            }

            while (v29);
          }

          *(a3 + 4 * v22++) = v28;
        }

        while (v22 != v14);
      }

      a3 += v17;
      a2 += 8;
      v34 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v34 | (a5 == 0)));
  }

  return result;
}

uint64_t cv::Filter2D<unsigned char,cv::Cast<double,double>,cv::FilterNoVec>::Filter2D(uint64_t a1, int32x2_t **a2, void *a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = -1;
  *a1 = &unk_284055840;
  *(a1 + 24) = 0u;
  *(a1 + 72) = 0u;
  v5 = (a1 + 72);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 16) = *a3;
  *(a1 + 8) = vrev64_s32(*a2[8]);
  *(a1 + 96) = a4;
  if ((*a2 & 0xFFF) != 6)
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "_kernel.type() == DataType<KT>::type");
    std::string::basic_string[abi:ne200100]<0>(v9, "Filter2D");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v11, 4294967081, v10, v9, __p, 3116);
    cv::error(v11, v6);
  }

  cv::preprocess2DKernel(a2, (a1 + 24), a1 + 48);
  std::vector<unsigned char *>::resize(v5, (*(a1 + 32) - *(a1 + 24)) >> 3);
  return a1;
}

void sub_22D20C9F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  v31 = *v29;
  if (*v29)
  {
    v27[10] = v31;
    operator delete(v31);
  }

  v32 = v27[6];
  if (v32)
  {
    v27[7] = v32;
    operator delete(v32);
  }

  v33 = *v28;
  if (*v28)
  {
    v27[4] = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void *cv::Filter2D<unsigned char,cv::Cast<double,double>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_284055840;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void cv::Filter2D<unsigned char,cv::Cast<double,double>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_284055840;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2318CB1A0);
}

double *cv::Filter2D<unsigned char,cv::Cast<double,double>,cv::FilterNoVec>::operator()(double *result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  if (a5 >= 1)
  {
    v14 = result[12];
    v15 = *(result + 6);
    v16 = *(result + 9);
    v17 = (a7 * a6);
    v18 = *(result + 3);
    v19 = (*(result + 4) - v18) >> 3;
    v20 = a4;
    v21 = (v18 + 4);
    do
    {
      v22 = v19 & 0x7FFFFFFF;
      v23 = v21;
      result = v16;
      if (v19 >= 1)
      {
        do
        {
          *result++ = *(a2 + 8 * *v23) + *(v23 - 1) * a7;
          v23 += 2;
          --v22;
        }

        while (v22);
      }

      if (v17 >= 4)
      {
        v24 = 0;
        do
        {
          v25 = v14;
          a11 = v14;
          v26 = v14;
          v27 = v14;
          if (v19 >= 1)
          {
            v28 = v19 & 0x7FFFFFFF;
            result = v16;
            v29 = v15;
            v27 = v14;
            v26 = v14;
            a11 = v14;
            v25 = v14;
            do
            {
              v30 = *result++;
              v31 = (v30 + v24);
              v32 = *v29++;
              LOBYTE(a14) = *v31;
              *&v33 = *&a14;
              v25 = v25 + v32 * *&v33;
              LOBYTE(v33) = v31[1];
              *&v34 = v33;
              a11 = a11 + v32 * *&v34;
              LOBYTE(v34) = v31[2];
              *&v35 = v34;
              v26 = v26 + v32 * *&v35;
              LOBYTE(v35) = v31[3];
              a14 = v35;
              v27 = v27 + v32 * a14;
              --v28;
            }

            while (v28);
          }

          v36 = (a3 + 8 * v24);
          *v36 = v25;
          v36[1] = a11;
          v36[2] = v26;
          v36[3] = v27;
          v24 += 4;
        }

        while (v24 <= v17 - 4);
        v24 = v24;
      }

      else
      {
        v24 = 0;
      }

      if (v24 < v17)
      {
        do
        {
          v37 = v14;
          if (v19 >= 1)
          {
            v38 = v19 & 0x7FFFFFFF;
            result = v15;
            v39 = v16;
            v37 = v14;
            do
            {
              v40 = *result++;
              v41 = v40;
              v42 = *v39++;
              LOBYTE(a11) = *(v42 + v24);
              a11 = *&a11;
              v37 = v37 + v41 * a11;
              --v38;
            }

            while (v38);
          }

          *(a3 + 8 * v24++) = v37;
        }

        while (v24 != v17);
      }

      a3 += v20;
      a2 += 8;
      v43 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v43 | (a5 == 0)));
  }

  return result;
}

uint64_t cv::Filter2D<unsigned short,cv::Cast<float,unsigned short>,cv::FilterNoVec>::Filter2D(uint64_t a1, int32x2_t **a2, void *a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = -1;
  *(a1 + 24) = 0u;
  *a1 = &unk_284055888;
  *(a1 + 72) = 0u;
  v5 = (a1 + 72);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 16) = *a3;
  *(a1 + 8) = vrev64_s32(*a2[8]);
  v6 = a4;
  *(a1 + 96) = v6;
  if ((*a2 & 0xFFF) != 5)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "_kernel.type() == DataType<KT>::type");
    std::string::basic_string[abi:ne200100]<0>(v10, "Filter2D");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v12, 4294967081, v11, v10, __p, 3116);
    cv::error(v12, v7);
  }

  cv::preprocess2DKernel(a2, (a1 + 24), a1 + 48);
  std::vector<unsigned char *>::resize(v5, (*(a1 + 32) - *(a1 + 24)) >> 3);
  return a1;
}

void sub_22D20CE5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  v31 = *v29;
  if (*v29)
  {
    v27[10] = v31;
    operator delete(v31);
  }

  v32 = v27[6];
  if (v32)
  {
    v27[7] = v32;
    operator delete(v32);
  }

  v33 = *v28;
  if (*v28)
  {
    v27[4] = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void *cv::Filter2D<unsigned short,cv::Cast<float,unsigned short>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_284055888;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void cv::Filter2D<unsigned short,cv::Cast<float,unsigned short>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_284055888;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::Filter2D<unsigned short,cv::Cast<float,unsigned short>,cv::FilterNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, float32x4_t a14)
{
  if (a5 >= 1)
  {
    LODWORD(a8) = *(result + 96);
    v14 = *(result + 48);
    v15 = *(result + 72);
    v16 = (a7 * a6);
    v17 = *(result + 24);
    v18 = (*(result + 32) - v17) >> 3;
    v19 = a4;
    v20 = vdupq_lane_s32(*&a8, 0);
    v21 = v17 + 4;
    v22.i64[0] = 0xFFFF0000FFFFLL;
    v22.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      v23 = v18 & 0x7FFFFFFF;
      result = v21;
      v24 = v15;
      if (v18 >= 1)
      {
        do
        {
          *v24++ = *(a2 + 8 * *result) + 2 * *(result - 4) * a7;
          result += 8;
          --v23;
        }

        while (v23);
      }

      if (v16 >= 4)
      {
        v25 = 0;
        do
        {
          result = 2 * v25;
          v26 = v20;
          if (v18 >= 1)
          {
            v27 = v18 & 0x7FFFFFFF;
            v28 = v15;
            v29 = v14;
            v26 = v20;
            do
            {
              v31 = *v28++;
              v30 = v31;
              LODWORD(v31) = *v29++;
              a14 = vcvtq_f32_u32(vmovl_u16(*(v30 + 2 * v25)));
              v26 = vmlaq_n_f32(v26, a14, *&v31);
              --v27;
            }

            while (v27);
          }

          *(a3 + 2 * v25) = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(*v26.f32))), vcvtq_s64_f64(vrndxq_f64(vcvt_hight_f64_f32(v26)))), 0), v22));
          v25 += 4;
        }

        while (v25 <= v16 - 4);
        v25 = v25;
      }

      else
      {
        v25 = 0;
      }

      if (v25 < v16)
      {
        do
        {
          v32 = *&a8;
          if (v18 >= 1)
          {
            v33 = v18 & 0x7FFFFFFF;
            v34 = v14;
            v35 = v15;
            v32 = *&a8;
            do
            {
              v36 = *v34++;
              v37 = v36;
              v38 = *v35++;
              a14.i16[0] = *(v38 + 2 * v25);
              a14.f32[0] = a14.u32[0];
              v32 = v32 + (v37 * a14.f32[0]);
              --v33;
            }

            while (v33);
          }

          v39 = rint(v32);
          LODWORD(result) = v39 & ~(v39 >> 31);
          if (result >= 0xFFFF)
          {
            result = 0xFFFFLL;
          }

          else
          {
            result = result;
          }

          *(a3 + 2 * v25++) = result;
        }

        while (v25 != v16);
      }

      a3 += v19;
      a2 += 8;
      v40 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v40 | (a5 == 0)));
  }

  return result;
}

uint64_t cv::Filter2D<unsigned short,cv::Cast<float,float>,cv::FilterNoVec>::Filter2D(uint64_t a1, int32x2_t **a2, void *a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = -1;
  *(a1 + 24) = 0u;
  *a1 = &unk_2840558D0;
  *(a1 + 72) = 0u;
  v5 = (a1 + 72);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 16) = *a3;
  *(a1 + 8) = vrev64_s32(*a2[8]);
  v6 = a4;
  *(a1 + 96) = v6;
  if ((*a2 & 0xFFF) != 5)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "_kernel.type() == DataType<KT>::type");
    std::string::basic_string[abi:ne200100]<0>(v10, "Filter2D");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v12, 4294967081, v11, v10, __p, 3116);
    cv::error(v12, v7);
  }

  cv::preprocess2DKernel(a2, (a1 + 24), a1 + 48);
  std::vector<unsigned char *>::resize(v5, (*(a1 + 32) - *(a1 + 24)) >> 3);
  return a1;
}

void sub_22D20D2E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  v31 = *v29;
  if (*v29)
  {
    v27[10] = v31;
    operator delete(v31);
  }

  v32 = v27[6];
  if (v32)
  {
    v27[7] = v32;
    operator delete(v32);
  }

  v33 = *v28;
  if (*v28)
  {
    v27[4] = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void *cv::Filter2D<unsigned short,cv::Cast<float,float>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_2840558D0;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void cv::Filter2D<unsigned short,cv::Cast<float,float>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_2840558D0;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t *cv::Filter2D<unsigned short,cv::Cast<float,float>,cv::FilterNoVec>::operator()(uint64_t *result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, double a8, double a9, double a10, double a11, float32x4_t a12)
{
  if (a5 >= 1)
  {
    LODWORD(a8) = *(result + 24);
    v12 = result[6];
    v13 = result[9];
    v14 = (a7 * a6);
    v15 = result[3];
    v16 = (result[4] - v15) >> 3;
    v17 = a4;
    v18 = vdupq_lane_s32(*&a8, 0);
    v19 = (v15 + 4);
    do
    {
      v20 = v16 & 0x7FFFFFFF;
      v21 = v19;
      result = v13;
      if (v16 >= 1)
      {
        do
        {
          *result++ = *(a2 + 8 * *v21) + 2 * *(v21 - 1) * a7;
          v21 += 2;
          --v20;
        }

        while (v20);
      }

      if (v14 >= 4)
      {
        v22 = 0;
        do
        {
          v23 = v18;
          if (v16 >= 1)
          {
            v24 = v16 & 0x7FFFFFFF;
            result = v13;
            v25 = v12;
            v23 = v18;
            do
            {
              v27 = *result++;
              v26 = v27;
              LODWORD(v27) = *v25++;
              a12 = vcvtq_f32_u32(vmovl_u16(*(v26 + 2 * v22)));
              v23 = vmlaq_n_f32(v23, a12, *&v27);
              --v24;
            }

            while (v24);
          }

          *(a3 + 4 * v22) = v23;
          v22 += 4;
        }

        while (v22 <= v14 - 4);
        v22 = v22;
      }

      else
      {
        v22 = 0;
      }

      if (v22 < v14)
      {
        do
        {
          v28 = *&a8;
          if (v16 >= 1)
          {
            v29 = v16 & 0x7FFFFFFF;
            result = v12;
            v30 = v13;
            v28 = *&a8;
            do
            {
              v31 = *result;
              result = (result + 4);
              v32 = v31;
              v33 = *v30++;
              a12.i16[0] = *(v33 + 2 * v22);
              a12.f32[0] = a12.u32[0];
              v28 = v28 + (v32 * a12.f32[0]);
              --v29;
            }

            while (v29);
          }

          *(a3 + 4 * v22++) = v28;
        }

        while (v22 != v14);
      }

      a3 += v17;
      a2 += 8;
      v34 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v34 | (a5 == 0)));
  }

  return result;
}

uint64_t cv::Filter2D<unsigned short,cv::Cast<double,double>,cv::FilterNoVec>::Filter2D(uint64_t a1, int32x2_t **a2, void *a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = -1;
  *a1 = &unk_284055918;
  *(a1 + 24) = 0u;
  *(a1 + 72) = 0u;
  v5 = (a1 + 72);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 16) = *a3;
  *(a1 + 8) = vrev64_s32(*a2[8]);
  *(a1 + 96) = a4;
  if ((*a2 & 0xFFF) != 6)
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "_kernel.type() == DataType<KT>::type");
    std::string::basic_string[abi:ne200100]<0>(v9, "Filter2D");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v11, 4294967081, v10, v9, __p, 3116);
    cv::error(v11, v6);
  }

  cv::preprocess2DKernel(a2, (a1 + 24), a1 + 48);
  std::vector<unsigned char *>::resize(v5, (*(a1 + 32) - *(a1 + 24)) >> 3);
  return a1;
}

void sub_22D20D718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  v31 = *v29;
  if (*v29)
  {
    v27[10] = v31;
    operator delete(v31);
  }

  v32 = v27[6];
  if (v32)
  {
    v27[7] = v32;
    operator delete(v32);
  }

  v33 = *v28;
  if (*v28)
  {
    v27[4] = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void *cv::Filter2D<unsigned short,cv::Cast<double,double>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_284055918;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void cv::Filter2D<unsigned short,cv::Cast<double,double>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_284055918;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2318CB1A0);
}

double *cv::Filter2D<unsigned short,cv::Cast<double,double>,cv::FilterNoVec>::operator()(double *result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  if (a5 >= 1)
  {
    v14 = result[12];
    v15 = *(result + 6);
    v16 = *(result + 9);
    v17 = (a7 * a6);
    v18 = *(result + 3);
    v19 = (*(result + 4) - v18) >> 3;
    v20 = a4;
    v21 = (v18 + 4);
    do
    {
      v22 = v19 & 0x7FFFFFFF;
      v23 = v21;
      result = v16;
      if (v19 >= 1)
      {
        do
        {
          *result++ = *(a2 + 8 * *v23) + 2 * *(v23 - 1) * a7;
          v23 += 2;
          --v22;
        }

        while (v22);
      }

      if (v17 >= 4)
      {
        v24 = 0;
        do
        {
          v25 = v14;
          a11 = v14;
          v26 = v14;
          v27 = v14;
          if (v19 >= 1)
          {
            v28 = v19 & 0x7FFFFFFF;
            result = v16;
            v29 = v15;
            v27 = v14;
            v26 = v14;
            a11 = v14;
            v25 = v14;
            do
            {
              v30 = *result++;
              v31 = (v30 + 2 * v24);
              v32 = *v29++;
              LOWORD(a14) = *v31;
              *&v33 = *&a14;
              v25 = v25 + v32 * *&v33;
              LOWORD(v33) = v31[1];
              *&v34 = v33;
              a11 = a11 + v32 * *&v34;
              LOWORD(v34) = v31[2];
              *&v35 = v34;
              v26 = v26 + v32 * *&v35;
              LOWORD(v35) = v31[3];
              a14 = v35;
              v27 = v27 + v32 * a14;
              --v28;
            }

            while (v28);
          }

          v36 = (a3 + 8 * v24);
          *v36 = v25;
          v36[1] = a11;
          v36[2] = v26;
          v36[3] = v27;
          v24 += 4;
        }

        while (v24 <= v17 - 4);
        v24 = v24;
      }

      else
      {
        v24 = 0;
      }

      if (v24 < v17)
      {
        do
        {
          v37 = v14;
          if (v19 >= 1)
          {
            v38 = v19 & 0x7FFFFFFF;
            result = v15;
            v39 = v16;
            v37 = v14;
            do
            {
              v40 = *result++;
              v41 = v40;
              v42 = *v39++;
              LOWORD(a11) = *(v42 + 2 * v24);
              a11 = *&a11;
              v37 = v37 + v41 * a11;
              --v38;
            }

            while (v38);
          }

          *(a3 + 8 * v24++) = v37;
        }

        while (v24 != v17);
      }

      a3 += v20;
      a2 += 8;
      v43 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v43 | (a5 == 0)));
  }

  return result;
}

uint64_t cv::Filter2D<short,cv::Cast<float,short>,cv::FilterNoVec>::Filter2D(uint64_t a1, int32x2_t **a2, void *a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = -1;
  *(a1 + 24) = 0u;
  *a1 = &unk_284055960;
  *(a1 + 72) = 0u;
  v5 = (a1 + 72);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 16) = *a3;
  *(a1 + 8) = vrev64_s32(*a2[8]);
  v6 = a4;
  *(a1 + 96) = v6;
  if ((*a2 & 0xFFF) != 5)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "_kernel.type() == DataType<KT>::type");
    std::string::basic_string[abi:ne200100]<0>(v10, "Filter2D");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/filter.cpp");
    cv::Exception::Exception(v12, 4294967081, v11, v10, __p, 3116);
    cv::error(v12, v7);
  }

  cv::preprocess2DKernel(a2, (a1 + 24), a1 + 48);
  std::vector<unsigned char *>::resize(v5, (*(a1 + 32) - *(a1 + 24)) >> 3);
  return a1;
}

void sub_22D20DB88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  v31 = *v29;
  if (*v29)
  {
    v27[10] = v31;
    operator delete(v31);
  }

  v32 = v27[6];
  if (v32)
  {
    v27[7] = v32;
    operator delete(v32);
  }

  v33 = *v28;
  if (*v28)
  {
    v27[4] = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void *cv::Filter2D<short,cv::Cast<float,short>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_284055960;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  return a1;
}

void cv::Filter2D<short,cv::Cast<float,short>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_284055960;
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::Filter2D<short,cv::Cast<float,short>,cv::FilterNoVec>::operator()(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, double a8)
{
  if (a5 >= 1)
  {
    LODWORD(a8) = *(result + 96);
    v8 = *(result + 48);
    v9 = *(result + 72);
    v10 = (a7 * a6);
    v11 = *(result + 24);
    v12 = (*(result + 32) - v11) >> 3;
    v13 = a4;
    v14 = vdupq_lane_s32(*&a8, 0);
    v15 = (v11 + 4);
    do
    {
      v16 = v12 & 0x7FFFFFFF;
      v17 = v15;
      v18 = v9;
      if (v12 >= 1)
      {
        do
        {
          *v18++ = *(a2 + 8 * *v17) + 2 * *(v17 - 1) * a7;
          v17 += 2;
          --v16;
        }

        while (v16);
      }

      if (v10 >= 4)
      {
        result = 0;
        do
        {
          v19 = v14;
          if (v12 >= 1)
          {
            v20 = v12 & 0x7FFFFFFF;
            v21 = v9;
            v22 = v8;
            v19 = v14;
            do
            {
              v24 = *v21++;
              v23 = v24;
              LODWORD(v24) = *v22++;
              v19 = vmlaq_n_f32(v19, vcvtq_f32_s32(vmovl_s16(*(v23 + 2 * result))), *&v24);
              --v20;
            }

            while (v20);
          }

          *(a3 + 2 * result) = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(*v19.f32))), vcvtq_s64_f64(vrndxq_f64(vcvt_hight_f64_f32(v19)))));
          result += 4;
        }

        while (result <= v10 - 4);
        result = result;
      }

      else
      {
        result = 0;
      }

      if (result < v10)
      {
        do
        {
          v25 = *&a8;
          if (v12 >= 1)
          {
            v26 = v12 & 0x7FFFFFFF;
            v27 = v8;
            v28 = v9;
            v25 = *&a8;
            do
            {
              v29 = *v27++;
              v30 = v29;
              v31 = *v28++;
              v25 = v25 + (v30 * *(v31 + 2 * result));
              --v26;
            }

            while (v26);
          }

          v32 = rint(v25);
          if (v32 <= -32768)
          {
            LODWORD(v32) = -32768;
          }

          if (v32 >= 0x7FFF)
          {
            LOWORD(v32) = 0x7FFF;
          }

          *(a3 + 2 * result++) = v32;
        }

        while (result != v10);
      }

      a3 += v13;
      a2 += 8;
      v33 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v33 | (a5 == 0)));
  }

  return result;
}