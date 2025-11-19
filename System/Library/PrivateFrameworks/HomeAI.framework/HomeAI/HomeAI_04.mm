uint64_t cv::Filter2D<short,cv::Cast<float,float>,cv::FilterNoVec>::Filter2D(uint64_t a1, int32x2_t **a2, void *a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = -1;
  *(a1 + 24) = 0u;
  *a1 = &unk_2840559A8;
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

void sub_22D20E008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

void *cv::Filter2D<short,cv::Cast<float,float>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_2840559A8;
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

void cv::Filter2D<short,cv::Cast<float,float>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_2840559A8;
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

uint64_t *cv::Filter2D<short,cv::Cast<float,float>,cv::FilterNoVec>::operator()(uint64_t *result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, double a8)
{
  if (a5 >= 1)
  {
    LODWORD(a8) = *(result + 24);
    v8 = result[6];
    v9 = result[9];
    v10 = (a7 * a6);
    v11 = result[3];
    v12 = (result[4] - v11) >> 3;
    v13 = a4;
    v14 = vdupq_lane_s32(*&a8, 0);
    v15 = (v11 + 4);
    do
    {
      v16 = v12 & 0x7FFFFFFF;
      v17 = v15;
      result = v9;
      if (v12 >= 1)
      {
        do
        {
          *result++ = *(a2 + 8 * *v17) + 2 * *(v17 - 1) * a7;
          v17 += 2;
          --v16;
        }

        while (v16);
      }

      if (v10 >= 4)
      {
        v18 = 0;
        do
        {
          v19 = v14;
          if (v12 >= 1)
          {
            v20 = v12 & 0x7FFFFFFF;
            result = v9;
            v21 = v8;
            v19 = v14;
            do
            {
              v23 = *result++;
              v22 = v23;
              LODWORD(v23) = *v21++;
              v19 = vmlaq_n_f32(v19, vcvtq_f32_s32(vmovl_s16(*(v22 + 2 * v18))), *&v23);
              --v20;
            }

            while (v20);
          }

          *(a3 + 4 * v18) = v19;
          v18 += 4;
        }

        while (v18 <= v10 - 4);
        v18 = v18;
      }

      else
      {
        v18 = 0;
      }

      if (v18 < v10)
      {
        do
        {
          v24 = *&a8;
          if (v12 >= 1)
          {
            v25 = v12 & 0x7FFFFFFF;
            result = v8;
            v26 = v9;
            v24 = *&a8;
            do
            {
              v27 = *result;
              result = (result + 4);
              v28 = v27;
              v29 = *v26++;
              v24 = v24 + (v28 * *(v29 + 2 * v18));
              --v25;
            }

            while (v25);
          }

          *(a3 + 4 * v18++) = v24;
        }

        while (v18 != v10);
      }

      a3 += v13;
      a2 += 8;
      v30 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v30 | (a5 == 0)));
  }

  return result;
}

uint64_t cv::Filter2D<short,cv::Cast<double,double>,cv::FilterNoVec>::Filter2D(uint64_t a1, int32x2_t **a2, void *a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = -1;
  *a1 = &unk_2840559F0;
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

void sub_22D20E43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

void *cv::Filter2D<short,cv::Cast<double,double>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_2840559F0;
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

void cv::Filter2D<short,cv::Cast<double,double>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_2840559F0;
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

double *cv::Filter2D<short,cv::Cast<double,double>,cv::FilterNoVec>::operator()(double *result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  if (a5 >= 1)
  {
    v7 = result[12];
    v8 = *(result + 6);
    v9 = *(result + 9);
    v10 = (a7 * a6);
    v11 = *(result + 3);
    v12 = (*(result + 4) - v11) >> 3;
    v13 = a4;
    v14 = (v11 + 4);
    do
    {
      v15 = v12 & 0x7FFFFFFF;
      v16 = v14;
      result = v9;
      if (v12 >= 1)
      {
        do
        {
          *result++ = *(a2 + 8 * *v16) + 2 * *(v16 - 1) * a7;
          v16 += 2;
          --v15;
        }

        while (v15);
      }

      if (v10 >= 4)
      {
        v17 = 0;
        do
        {
          v18 = v7;
          v19 = v7;
          v20 = v7;
          v21 = v7;
          if (v12 >= 1)
          {
            v22 = v12 & 0x7FFFFFFF;
            result = v9;
            v23 = v8;
            v21 = v7;
            v20 = v7;
            v19 = v7;
            v18 = v7;
            do
            {
              v25 = *result++;
              v24 = v25;
              v26 = *v23++;
              v27 = (v24 + 2 * v17);
              v18 = v18 + v26 * *v27;
              v19 = v19 + v26 * v27[1];
              v20 = v20 + v26 * v27[2];
              v21 = v21 + v26 * v27[3];
              --v22;
            }

            while (v22);
          }

          v28 = (a3 + 8 * v17);
          *v28 = v18;
          v28[1] = v19;
          v28[2] = v20;
          v28[3] = v21;
          v17 += 4;
        }

        while (v17 <= v10 - 4);
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
          v29 = v7;
          if (v12 >= 1)
          {
            v30 = v12 & 0x7FFFFFFF;
            result = v8;
            v31 = v9;
            v29 = v7;
            do
            {
              v32 = *result++;
              v33 = v32;
              v34 = *v31++;
              v29 = v29 + v33 * *(v34 + 2 * v17);
              --v30;
            }

            while (v30);
          }

          *(a3 + 8 * v17++) = v29;
        }

        while (v17 != v10);
      }

      a3 += v13;
      a2 += 8;
      v35 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v35 | (a5 == 0)));
  }

  return result;
}

uint64_t cv::Filter2D<float,cv::Cast<float,float>,cv::FilterNoVec>::Filter2D(uint64_t a1, int32x2_t **a2, void *a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = -1;
  *(a1 + 24) = 0u;
  *a1 = &unk_284055A38;
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

void sub_22D20E8AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

void *cv::Filter2D<float,cv::Cast<float,float>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_284055A38;
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

void cv::Filter2D<float,cv::Cast<float,float>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_284055A38;
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

void *cv::Filter2D<float,cv::Cast<float,float>,cv::FilterNoVec>::operator()(void *result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, double a8)
{
  if (a5 >= 1)
  {
    LODWORD(a8) = *(result + 24);
    v8 = result[6];
    v9 = result[9];
    v10 = (a7 * a6);
    v11 = result[3];
    v12 = (result[4] - v11) >> 3;
    v13 = a4;
    v14 = vdupq_lane_s32(*&a8, 0);
    v15 = (v11 + 4);
    do
    {
      v16 = v12 & 0x7FFFFFFF;
      v17 = v15;
      result = v9;
      if (v12 >= 1)
      {
        do
        {
          *result++ = *(a2 + 8 * *v17) + 4 * *(v17 - 1) * a7;
          v17 += 2;
          --v16;
        }

        while (v16);
      }

      if (v10 >= 4)
      {
        v18 = 0;
        do
        {
          v19 = v14;
          if (v12 >= 1)
          {
            result = (v12 & 0x7FFFFFFF);
            v20 = v9;
            v21 = v8;
            v19 = v14;
            do
            {
              v23 = *v20++;
              v22 = v23;
              LODWORD(v23) = *v21++;
              v19 = vmlaq_n_f32(v19, *(v22 + 4 * v18), *&v23);
              result = (result - 1);
            }

            while (result);
          }

          *(a3 + 4 * v18) = v19;
          v18 += 4;
        }

        while (v18 <= v10 - 4);
        v18 = v18;
      }

      else
      {
        v18 = 0;
      }

      if (v18 < v10)
      {
        do
        {
          v24 = *&a8;
          if (v12 >= 1)
          {
            v25 = v12 & 0x7FFFFFFF;
            result = v8;
            v26 = v9;
            v24 = *&a8;
            do
            {
              v27 = *result;
              result = (result + 4);
              v28 = v27;
              v29 = *v26++;
              v24 = v24 + (v28 * *(v29 + 4 * v18));
              --v25;
            }

            while (v25);
          }

          *(a3 + 4 * v18++) = v24;
        }

        while (v18 != v10);
      }

      a3 += v13;
      a2 += 8;
      v30 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v30 | (a5 == 0)));
  }

  return result;
}

uint64_t cv::Filter2D<double,cv::Cast<double,double>,cv::FilterNoVec>::Filter2D(uint64_t a1, int32x2_t **a2, void *a3, double a4)
{
  *(a1 + 8) = -1;
  *(a1 + 16) = -1;
  *a1 = &unk_284055A80;
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

void sub_22D20ECD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

void *cv::Filter2D<double,cv::Cast<double,double>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_284055A80;
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

void cv::Filter2D<double,cv::Cast<double,double>,cv::FilterNoVec>::~Filter2D(void *a1)
{
  *a1 = &unk_284055A80;
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

double *cv::Filter2D<double,cv::Cast<double,double>,cv::FilterNoVec>::operator()(double *result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  if (a5 >= 1)
  {
    v7 = *(result + 12);
    v8 = *(result + 6);
    v9 = *(result + 9);
    v10 = (a7 * a6);
    v11 = *(result + 3);
    v12 = (*(result + 4) - v11) >> 3;
    v13 = a4;
    v14 = vdupq_lane_s64(v7, 0);
    v15 = (v11 + 4);
    do
    {
      v16 = v12 & 0x7FFFFFFF;
      v17 = v15;
      result = v9;
      if (v12 >= 1)
      {
        do
        {
          *result++ = *(a2 + 8 * *v17) + 8 * *(v17 - 1) * a7;
          v17 += 2;
          --v16;
        }

        while (v16);
      }

      if (v10 >= 4)
      {
        v18 = 0;
        do
        {
          v19 = *&v7;
          v20 = *&v7;
          v21 = v14;
          if (v12 >= 1)
          {
            v22 = v12 & 0x7FFFFFFF;
            result = v9;
            v23 = v8;
            v20 = *&v7;
            v19 = *&v7;
            v21 = v14;
            do
            {
              v24 = *result++;
              v25 = v24 + 8 * v18;
              v26 = *v23++;
              v19 = v19 + v26 * *v25;
              v21 = vmlaq_n_f64(v21, *(v25 + 8), v26);
              v20 = v20 + v26 * *(v25 + 24);
              --v22;
            }

            while (v22);
          }

          v27 = a3 + 8 * v18;
          *v27 = v19;
          *(v27 + 8) = v21;
          *(v27 + 24) = v20;
          v18 += 4;
        }

        while (v18 <= v10 - 4);
        v18 = v18;
      }

      else
      {
        v18 = 0;
      }

      if (v18 < v10)
      {
        do
        {
          v28 = *&v7;
          if (v12 >= 1)
          {
            v29 = v12 & 0x7FFFFFFF;
            result = v8;
            v30 = v9;
            v28 = *&v7;
            do
            {
              v31 = *result++;
              v32 = v31;
              v33 = *v30++;
              v28 = v28 + v32 * *(v33 + 8 * v18);
              --v29;
            }

            while (v29);
          }

          *(a3 + 8 * v18++) = v28;
        }

        while (v18 != v10);
      }

      a3 += v13;
      a2 += 8;
      v34 = __OFSUB__(a5--, 1);
    }

    while (!((a5 < 0) ^ v34 | (a5 == 0)));
  }

  return result;
}

void cvFree_(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void cv::pyrDown(void (***a1)(void **__return_ptr, void, uint64_t), uint64_t a2, int *a3, uint64_t a4)
{
  if (!a4)
  {
    std::string::basic_string[abi:ne200100]<0>(&v30, "borderType != BORDER_CONSTANT");
    std::string::basic_string[abi:ne200100]<0>(__p, "pyrDown");
    std::string::basic_string[abi:ne200100]<0>(&v41, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/pyramids.cpp");
    v7 = cv::Exception::Exception(v42, 4294967081, &v30, __p, &v41, 422);
    cv::error(v7, v8);
  }

  (**a1)(&v30, a1, 0xFFFFFFFFLL);
  v9 = *a3;
  v10 = a3[1];
  if (!*a3)
  {
    v9 = (v32 + 1) / 2;
    v10 = (v31 + 1) / 2;
  }

  v42[0] = v9;
  v42[1] = v10;
  (*(*a2 + 128))(a2, v42, v30 & 0xFFF, 0xFFFFFFFFLL, 0, 0);
  (**a2)(__p, a2, 0xFFFFFFFFLL);
  v11 = v30 & 7;
  if (v11 == 7 || ((0x6Du >> v11) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v41, "");
    std::string::basic_string[abi:ne200100]<0>(&v21, "pyrDown");
    std::string::basic_string[abi:ne200100]<0>(v20, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/pyramids.cpp");
    v18 = cv::Exception::Exception(v42, 4294967086, &v41, &v21, v20, 447);
    cv::error(v18, v19);
  }

  (off_284055AB8[v11])(&v30, __p, a4);
  if (v23 && atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(__p);
  }

  __p[2] = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (SHIDWORD(__p[0]) >= 1)
  {
    v12 = 0;
    v13 = v27;
    do
    {
      *(v13 + 4 * v12++) = 0;
    }

    while (v12 < SHIDWORD(__p[0]));
  }

  v23 = 0;
  if (v28)
  {
    v14 = v28 == &v29;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    free(v28);
  }

  if (v34 && atomic_fetch_add(v34, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v30);
  }

  v33 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (SHIDWORD(v30) >= 1)
  {
    v15 = 0;
    v16 = v38;
    do
    {
      *(v16 + 4 * v15++) = 0;
    }

    while (v15 < SHIDWORD(v30));
  }

  v34 = 0;
  if (v39)
  {
    v17 = v39 == &v40;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    free(v39);
  }
}

void sub_22D20F304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  cv::Exception::~Exception((v41 - 168));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v41 - 169) < 0)
  {
    operator delete(*(v41 - 192));
  }

  cv::Mat::~Mat(&a21);
  cv::Mat::~Mat(&a36);
  _Unwind_Resume(a1);
}

void *cv::pyrDown_<cv::FixPtCast<unsigned char,8>,cv::NoVec<int,unsigned char>>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v97 = v3;
  v131 = *MEMORY[0x277D85DE8];
  if (!*(v2 + 2))
  {
    goto LABEL_7;
  }

  v5 = v2[1];
  if (v5 >= 3)
  {
    v7 = *(v2 + 8);
    v6 = 1;
    do
    {
      v8 = *v7++;
      v6 *= v8;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = v2[3] * v2[2];
  }

  if (!v6)
  {
LABEL_7:
    std::string::basic_string[abi:ne200100]<0>(v129, "!_src.empty()");
    std::string::basic_string[abi:ne200100]<0>(&v123, "pyrDown_");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/pyramids.cpp");
    cv::Exception::Exception(v130, 4294967081, v129, &v123, &__p, 194);
    cv::error(v130, v9);
  }

  v114 = *(*(v2 + 8) + 4);
  v106 = **(v2 + 8);
  v10 = *(*(v3 + 64) + 4);
  v98 = **(v3 + 64);
  v107 = *v2;
  v11 = (v107 >> 3) & 0x1FF;
  v12 = ((v11 + 1) * v10);
  v13 = 0x500000000 * ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 0x1000000000;
  v123 = v125;
  v124 = 1032;
  if ((v13 >> 32) >= 0x409)
  {
    v124 = v13 >> 32;
    operator new[]();
  }

  __p = v122;
  v121 = 1032;
  if (v12 >= 0x409)
  {
    v121 = v12;
    operator new[]();
  }

  v111 = v11 + 1;
  v128 = 0;
  v127 = 0u;
  v126 = 0u;
  v14 = 2 * v10 - v114;
  if (v14 < 0)
  {
    v14 = v114 - 2 * v10;
  }

  if (v14 > 2)
  {
    goto LABEL_18;
  }

  v15 = 2 * v98 - v106;
  if (v15 < 0)
  {
    v15 = v106 - 2 * v98;
  }

  if (v15 >= 3)
  {
LABEL_18:
    std::string::basic_string[abi:ne200100]<0>(v118, "std::abs(dsize.width*2 - ssize.width) <= 2 && std::abs(dsize.height*2 - ssize.height) <= 2");
    std::string::basic_string[abi:ne200100]<0>(v117, "pyrDown_");
    std::string::basic_string[abi:ne200100]<0>(v116, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/pyramids.cpp");
    cv::Exception::Exception(v119, 4294967081, v118, v117, v116, 208);
    cv::error(v119, v16);
  }

  v105 = v2;
  v110 = v4;
  v17 = 0;
  v18 = 0;
  v109 = (v12 + 15) & 0xFFFFFFF0;
  v19 = (v114 - 3) / 2;
  if (v10 >= v19 + 1)
  {
    v20 = v19 + 1;
  }

  else
  {
    v20 = v10;
  }

  v104 = v20;
  v112 = 2 * v20 - 2;
  do
  {
    v21 = cv::borderInterpolate((v18 - 2), v114, v110);
    v22 = cv::borderInterpolate((v112 + v18), v114, v110);
    v23 = v21 * v111;
    v24 = v11 + 1;
    v25 = v17;
    v26 = v22 * v111;
    do
    {
      *&v130[v25] = v23;
      *&v129[v25] = v26++;
      ++v23;
      v25 += 4;
      --v24;
    }

    while (v24);
    ++v18;
    v17 += 4 * ((v107 >> 3) & 0x1FF) + 4;
  }

  while (v18 != 7);
  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      *&v122[4 * i] = i % v111 + 2 * v111 * (i / v111);
    }
  }

  if (v98 < 1)
  {
    goto LABEL_70;
  }

  v103 = 0;
  v28 = 0;
  v29 = v111 * v104;
  v30 = (v107 >> 3) & 0x1FF;
  v113 = 12 * v30 + 12;
  *v115 = 16 * v30 + 16;
  v31 = v30;
  v32 = 8 * v30 + 8;
  v33 = 4294967294;
  v101 = 2;
  do
  {
    v99 = *(v97 + 80);
    v100 = *(v97 + 16);
    v102 = v28;
    if (2 * v28 + 2 < v33)
    {
      goto LABEL_64;
    }

    v34 = v101;
    if (v33 > v101)
    {
      v34 = v33;
    }

    v108 = v34;
    v96 = v34 + 1;
    while (2)
    {
      v35 = cv::borderInterpolate(v33, v106, v110);
      v36 = 0;
      v37 = (v33 + 2) % 5 * v109;
      v38 = *(v105 + 2) + *(v105 + 10) * v35;
      v39 = &v125[4 * v37];
      v40 = &v125[4 * v37 + 8];
      v41 = &v125[4 * v37 + 4];
      v42 = v130;
      for (j = v11 + 1; ; j = (v11 + 1) * v10)
      {
        if (v36 < j)
        {
          v44 = 0;
          v45 = &v42[4 * v36];
          v46 = &v39[4 * v36];
          v47 = &v42[4 * v31 + 4 + 4 * v36];
          v48 = j - v36;
          do
          {
            *&v46[4 * v44] = 6 * *(v38 + *&v45[4 * v44 + v32]) + 4 * (*(v38 + *&v45[4 * v44 + v113]) + *(v38 + *(v47 + 4 * v44))) + *(v38 + *&v45[4 * v44]) + *(v38 + *&v45[4 * v44 + *v115]);
            ++v44;
          }

          while (v48 != v44);
          v36 = j;
        }

        if (v36 == v12)
        {
          break;
        }

        switch(v11)
        {
          case 0:
            if (v36 >= v29)
            {
              break;
            }

            v65 = &v39[4 * v36];
            v66 = v29 - v36;
            v67 = (v38 + 2 * v36);
            do
            {
              v68 = *v67;
              v69 = v67[1] + *(v67 - 1);
              v70 = *(v67 - 2);
              v71 = v67[2];
              v67 += 2;
              *v65++ = v70 + 6 * v68 + 4 * v69 + v71;
              --v66;
            }

            while (v66);
LABEL_59:
            v36 = v111 * v104;
            break;
          case 2:
            if (v36 < v29)
            {
              v57 = v36;
              v58 = &v41[4 * v36];
              v59 = (v38 + 1 + 2 * v36);
              v60 = v59;
              do
              {
                v61 = *(v59 - 7) + 6 * *(v59 - 1) + 4 * (v59[2] + *(v59 - 4)) + v59[5];
                v62 = v60[6];
                v60 += 6;
                v63 = *(v59 - 6) + 6 * *v59 + 4 * (v59[3] + *(v59 - 3)) + v62;
                v64 = *(v59 - 5) + 6 * v59[1] + 4 * (v59[4] + *(v59 - 2)) + v59[7];
                v57 += 3;
                *(v58 - 1) = v61;
                *v58 = v63;
                v58[1] = v64;
                v36 += 3;
                v58 += 3;
                v59 = v60;
              }

              while (v57 < v29);
            }

            break;
          case 3:
            if (v36 < v29)
            {
              v49 = v36;
              v50 = (v38 + 2 * v36);
              v51 = &v40[4 * v36];
              v52 = v50;
              do
              {
                v53 = v52[8];
                v52 += 8;
                v54 = *(v50 - 7) + 6 * v50[1] + 4 * (v50[5] + *(v50 - 3)) + v50[9];
                *(v51 - 2) = *(v50 - 8) + 6 * *v50 + 4 * (v50[4] + *(v50 - 4)) + v53;
                *(v51 - 1) = v54;
                v55 = *(v50 - 6) + 6 * v50[2] + 4 * (v50[6] + *(v50 - 2)) + v50[10];
                v56 = *(v50 - 5) + 6 * v50[3] + 4 * (v50[7] + *(v50 - 1)) + v50[11];
                v49 += 4;
                *v51 = v55;
                v51[1] = v56;
                v51 += 4;
                v36 += 4;
                v50 = v52;
              }

              while (v49 < v29);
            }

            break;
          default:
            if (v36 >= v29)
            {
              break;
            }

            v72 = &v122[4 * v36];
            v73 = &v39[4 * v36];
            v74 = v29 - v36;
            do
            {
              v75 = *v72++;
              *v73++ = *(v38 + v75 - 2 * v111) + 6 * *(v38 + v75) + 4 * (*(v38 + v75 + v111) + *(v38 + v75 - v111)) + *(v38 + v75 + 2 * v111);
              --v74;
            }

            while (v74);
            goto LABEL_59;
        }

        v42 = &v129[-4 * v36];
      }

      v76 = v33 == v108;
      v33 = (v33 + 1);
      if (!v76)
      {
        continue;
      }

      break;
    }

    v33 = v96;
LABEL_64:
    v77 = 0;
    v78 = v103;
    do
    {
      *(&v126 + v77) = &v125[4 * v78 % 5 * v109];
      ++v78;
      v77 += 8;
    }

    while (v77 != 40);
    if (v12 >= 1)
    {
      v80 = *(&v126 + 1);
      v79 = v126;
      v82 = *(&v127 + 1);
      v81 = v127;
      v83 = (v100 + v99 * v102);
      v84 = 4 * ((v11 + 1) * v10);
      v85 = v128;
      do
      {
        v87 = *v81++;
        v86 = v87;
        v89 = *v80++;
        v88 = v89;
        v90 = *v82++;
        v91 = v90 + v88;
        v93 = *v79++;
        v92 = v93;
        v94 = *v85++;
        *v83++ = (v92 + 6 * v86 + 4 * v91 + v94 + 128) >> 8;
        v84 -= 4;
      }

      while (v84);
    }

    v28 = v102 + 1;
    v101 += 2;
    v103 += 2;
  }

  while (v102 + 1 != v98);
LABEL_70:
  if (__p != v122 && __p)
  {
    MEMORY[0x2318CB180]();
  }

  result = v123;
  if (v123 != v125 && v123)
  {
    return MEMORY[0x2318CB180]();
  }

  return result;
}

void sub_22D20FD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (STACK[0x11C0] != a11 && STACK[0x11C0] != 0)
  {
    MEMORY[0x2318CB180]();
  }

  _Unwind_Resume(a1);
}

void *cv::pyrDown_<cv::FixPtCast<short,8>,cv::NoVec<int,short>>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v96 = v3;
  v128 = *MEMORY[0x277D85DE8];
  if (!*(v2 + 2))
  {
    goto LABEL_7;
  }

  v5 = v2[1];
  if (v5 >= 3)
  {
    v7 = *(v2 + 8);
    v6 = 1;
    do
    {
      v8 = *v7++;
      v6 *= v8;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = v2[3] * v2[2];
  }

  if (!v6)
  {
LABEL_7:
    std::string::basic_string[abi:ne200100]<0>(v126, "!_src.empty()");
    std::string::basic_string[abi:ne200100]<0>(&v120, "pyrDown_");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/pyramids.cpp");
    cv::Exception::Exception(v127, 4294967081, v126, &v120, &__p, 194);
    cv::error(v127, v9);
  }

  v111 = *(*(v2 + 8) + 4);
  v106 = **(v2 + 8);
  v10 = *(*(v3 + 64) + 4);
  v97 = **(v3 + 64);
  v104 = *v2;
  v11 = (v104 >> 3) & 0x1FF;
  v12 = v11 + 1;
  v13 = ((v11 + 1) * v10);
  v14 = 0x500000000 * ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 0x1000000000;
  v120 = v122;
  v121 = 1032;
  if ((v14 >> 32) >= 0x409)
  {
    v121 = v14 >> 32;
    operator new[]();
  }

  __p = v119;
  v118 = 1032;
  if (v13 >= 0x409)
  {
    v118 = v13;
    operator new[]();
  }

  v125 = 0;
  v124 = 0u;
  v123 = 0u;
  v15 = 2 * v10 - v111;
  if (v15 < 0)
  {
    v15 = v111 - 2 * v10;
  }

  if (v15 > 2)
  {
    goto LABEL_18;
  }

  v16 = 2 * v97 - v106;
  if (v16 < 0)
  {
    v16 = v106 - 2 * v97;
  }

  if (v16 >= 3)
  {
LABEL_18:
    std::string::basic_string[abi:ne200100]<0>(v115, "std::abs(dsize.width*2 - ssize.width) <= 2 && std::abs(dsize.height*2 - ssize.height) <= 2");
    std::string::basic_string[abi:ne200100]<0>(v114, "pyrDown_");
    std::string::basic_string[abi:ne200100]<0>(v113, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/pyramids.cpp");
    cv::Exception::Exception(v116, 4294967081, v115, v114, v113, 208);
    cv::error(v116, v17);
  }

  v105 = v2;
  v109 = v4;
  v18 = 0;
  v19 = 0;
  v108 = (v13 + 15) & 0xFFFFFFF0;
  v20 = (v111 - 3) / 2;
  if (v10 >= v20 + 1)
  {
    v21 = v20 + 1;
  }

  else
  {
    v21 = v10;
  }

  v101 = v21;
  v110 = 2 * v21 - 2;
  do
  {
    v22 = cv::borderInterpolate((v19 - 2), v111, v109);
    v23 = cv::borderInterpolate((v110 + v19), v111, v109);
    v24 = v22 * v12;
    v25 = v11 + 1;
    v26 = v18;
    v27 = v23 * v12;
    do
    {
      *&v127[v26] = v24;
      *&v126[v26] = v27++;
      ++v24;
      v26 += 4;
      --v25;
    }

    while (v25);
    ++v19;
    v18 += 4 * ((v104 >> 3) & 0x1FF) + 4;
  }

  while (v19 != 7);
  v28 = 2 * v12;
  if (v13 >= 1)
  {
    for (i = 0; i != v13; ++i)
    {
      *&v119[4 * i] = i % v12 + v28 * (i / v12);
    }
  }

  if (v97 < 1)
  {
    goto LABEL_70;
  }

  v103 = 0;
  v30 = 0;
  v31 = v12 * v101;
  v32 = (v104 >> 3) & 0x1FF;
  *v112 = 16 * v32 + 16;
  v33 = 8 * v32 + 8;
  v34 = 4294967294;
  v100 = 2;
  do
  {
    v98 = *(v96 + 80);
    v99 = *(v96 + 16);
    v102 = v30;
    if (2 * v30 + 2 < v34)
    {
      goto LABEL_64;
    }

    v35 = v100;
    if (v34 > v100)
    {
      v35 = v34;
    }

    v107 = v35;
    v95 = v35 + 1;
    while (2)
    {
      v36 = cv::borderInterpolate(v34, v106, v109);
      v37 = 0;
      v38 = (v34 + 2) % 5 * v108;
      v39 = *(v105 + 2) + *(v105 + 10) * v36;
      v40 = &v122[v38];
      v41 = &v122[v38 + 2];
      v42 = v127;
      for (j = v11 + 1; ; j = v13)
      {
        if (v37 < j)
        {
          v44 = 0;
          v45 = &v42[4 * v37];
          v46 = &v40[v37];
          v47 = &v42[4 * ((v104 >> 3) & 0x1FF) + 4 + 4 * v37];
          v48 = j - v37;
          do
          {
            v46[v44] = 6 * *(v39 + 2 * *&v45[4 * v44 + v33]) + 4 * (*(v39 + 2 * *&v45[12 * ((v104 >> 3) & 0x1FF) + 12 + 4 * v44]) + *(v39 + 2 * *(v47 + 4 * v44))) + *(v39 + 2 * *&v45[4 * v44]) + *(v39 + 2 * *&v45[4 * v44 + *v112]);
            ++v44;
          }

          while (v48 != v44);
          v37 = j;
        }

        if (v37 == v13)
        {
          break;
        }

        switch(v11)
        {
          case 0:
            if (v37 >= v31)
            {
              break;
            }

            v64 = &v40[v37];
            v65 = v31 - v37;
            v66 = (v39 + 4 * v37);
            do
            {
              v67 = *v66;
              v68 = v66[1] + *(v66 - 1);
              v69 = *(v66 - 2);
              v70 = v66[2];
              v66 += 2;
              *v64++ = v69 + 6 * v67 + 4 * v68 + v70;
              --v65;
            }

            while (v65);
LABEL_59:
            v37 = v31;
            break;
          case 2:
            if (v37 < v31)
            {
              v56 = v37;
              v57 = &v41[v37];
              v58 = (v39 + 2 + 4 * v37);
              v59 = v58;
              do
              {
                v60 = *(v58 - 7) + 6 * *(v58 - 1) + 4 * (v58[2] + *(v58 - 4)) + v58[5];
                v61 = v59[6];
                v59 += 6;
                v62 = *(v58 - 6) + 6 * *v58 + 4 * (v58[3] + *(v58 - 3)) + v61;
                v63 = *(v58 - 5) + 6 * v58[1] + 4 * (v58[4] + *(v58 - 2)) + v58[7];
                v56 += 3;
                *(v57 - 2) = v60;
                *(v57 - 1) = v62;
                *v57 = v63;
                v57 += 3;
                v37 += 3;
                v58 = v59;
              }

              while (v56 < v31);
            }

            break;
          case 3:
            if (v37 < v31)
            {
              v49 = v37;
              v50 = &v40[v37];
              v51 = (v39 + 4 * v37);
              do
              {
                v52 = vmull_s16(*v51, 0x6000600060006);
                v53 = v51[-2];
                v54 = vshlq_n_s32(vaddl_s16(v51[1], v51[-1]), 2uLL);
                v55 = v51[2];
                v51 += 2;
                *v50++ = vaddw_s16(vaddq_s32(vaddw_s16(v52, v53), v54), v55);
                v49 += 4;
                v37 += 4;
              }

              while (v49 < v31);
            }

            break;
          default:
            if (v37 >= v31)
            {
              break;
            }

            v71 = &v119[4 * v37];
            v72 = &v40[v37];
            v73 = v31 - v37;
            do
            {
              v74 = *v71++;
              *v72++ = *(v39 + 2 * (v74 - v28)) + 6 * *(v39 + 2 * v74) + 4 * (*(v39 + 2 * (v74 + v12)) + *(v39 + 2 * (v74 - v12))) + *(v39 + 2 * (v74 + v28));
              --v73;
            }

            while (v73);
            goto LABEL_59;
        }

        v42 = &v126[-4 * v37];
      }

      v75 = v34 == v107;
      v34 = (v34 + 1);
      if (!v75)
      {
        continue;
      }

      break;
    }

    v34 = v95;
LABEL_64:
    v76 = 0;
    v77 = v103;
    do
    {
      *(&v123 + v76) = &v122[v77 % 5 * v108];
      ++v77;
      v76 += 8;
    }

    while (v76 != 40);
    if (v13 >= 1)
    {
      v79 = *(&v123 + 1);
      v78 = v123;
      v81 = *(&v124 + 1);
      v80 = v124;
      v82 = (v99 + v98 * v102);
      v83 = 2 * v13;
      v84 = v125;
      do
      {
        v86 = *v80++;
        v85 = v86;
        v88 = *v79++;
        v87 = v88;
        v89 = *v81++;
        v90 = v89 + v87;
        v92 = *v78++;
        v91 = v92;
        v93 = *v84++;
        *v82++ = (v91 + 6 * v85 + 4 * v90 + v93 + 128) >> 8;
        v83 -= 2;
      }

      while (v83);
    }

    v30 = v102 + 1;
    v100 += 2;
    v103 += 2;
  }

  while (v102 + 1 != v97);
LABEL_70:
  if (__p != v119 && __p)
  {
    MEMORY[0x2318CB180]();
  }

  result = v120;
  if (v120 != v122 && v120)
  {
    return MEMORY[0x2318CB180]();
  }

  return result;
}

void sub_22D2107E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (STACK[0x11B0] != a11 && STACK[0x11B0] != 0)
  {
    MEMORY[0x2318CB180]();
  }

  _Unwind_Resume(a1);
}

void *cv::pyrDown_<cv::FixPtCast<unsigned short,8>,cv::NoVec<int,unsigned short>>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v96 = v3;
  v128 = *MEMORY[0x277D85DE8];
  if (!*(v2 + 2))
  {
    goto LABEL_7;
  }

  v5 = v2[1];
  if (v5 >= 3)
  {
    v7 = *(v2 + 8);
    v6 = 1;
    do
    {
      v8 = *v7++;
      v6 *= v8;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = v2[3] * v2[2];
  }

  if (!v6)
  {
LABEL_7:
    std::string::basic_string[abi:ne200100]<0>(v126, "!_src.empty()");
    std::string::basic_string[abi:ne200100]<0>(&v120, "pyrDown_");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/pyramids.cpp");
    cv::Exception::Exception(v127, 4294967081, v126, &v120, &__p, 194);
    cv::error(v127, v9);
  }

  v111 = *(*(v2 + 8) + 4);
  v106 = **(v2 + 8);
  v10 = *(*(v3 + 64) + 4);
  v97 = **(v3 + 64);
  v104 = *v2;
  v11 = (v104 >> 3) & 0x1FF;
  v12 = v11 + 1;
  v13 = ((v11 + 1) * v10);
  v14 = 0x500000000 * ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 0x1000000000;
  v120 = v122;
  v121 = 1032;
  if ((v14 >> 32) >= 0x409)
  {
    v121 = v14 >> 32;
    operator new[]();
  }

  __p = v119;
  v118 = 1032;
  if (v13 >= 0x409)
  {
    v118 = v13;
    operator new[]();
  }

  v125 = 0;
  v124 = 0u;
  v123 = 0u;
  v15 = 2 * v10 - v111;
  if (v15 < 0)
  {
    v15 = v111 - 2 * v10;
  }

  if (v15 > 2)
  {
    goto LABEL_18;
  }

  v16 = 2 * v97 - v106;
  if (v16 < 0)
  {
    v16 = v106 - 2 * v97;
  }

  if (v16 >= 3)
  {
LABEL_18:
    std::string::basic_string[abi:ne200100]<0>(v115, "std::abs(dsize.width*2 - ssize.width) <= 2 && std::abs(dsize.height*2 - ssize.height) <= 2");
    std::string::basic_string[abi:ne200100]<0>(v114, "pyrDown_");
    std::string::basic_string[abi:ne200100]<0>(v113, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/pyramids.cpp");
    cv::Exception::Exception(v116, 4294967081, v115, v114, v113, 208);
    cv::error(v116, v17);
  }

  v105 = v2;
  v109 = v4;
  v18 = 0;
  v19 = 0;
  v108 = (v13 + 15) & 0xFFFFFFF0;
  v20 = (v111 - 3) / 2;
  if (v10 >= v20 + 1)
  {
    v21 = v20 + 1;
  }

  else
  {
    v21 = v10;
  }

  v101 = v21;
  v110 = 2 * v21 - 2;
  do
  {
    v22 = cv::borderInterpolate((v19 - 2), v111, v109);
    v23 = cv::borderInterpolate((v110 + v19), v111, v109);
    v24 = v22 * v12;
    v25 = v11 + 1;
    v26 = v18;
    v27 = v23 * v12;
    do
    {
      *&v127[v26] = v24;
      *&v126[v26] = v27++;
      ++v24;
      v26 += 4;
      --v25;
    }

    while (v25);
    ++v19;
    v18 += 4 * ((v104 >> 3) & 0x1FF) + 4;
  }

  while (v19 != 7);
  v28 = 2 * v12;
  if (v13 >= 1)
  {
    for (i = 0; i != v13; ++i)
    {
      *&v119[4 * i] = i % v12 + v28 * (i / v12);
    }
  }

  if (v97 < 1)
  {
    goto LABEL_70;
  }

  v103 = 0;
  v30 = 0;
  v31 = v12 * v101;
  v32 = (v104 >> 3) & 0x1FF;
  *v112 = 16 * v32 + 16;
  v33 = 8 * v32 + 8;
  v34 = 4294967294;
  v100 = 2;
  do
  {
    v98 = *(v96 + 80);
    v99 = *(v96 + 16);
    v102 = v30;
    if (2 * v30 + 2 < v34)
    {
      goto LABEL_64;
    }

    v35 = v100;
    if (v34 > v100)
    {
      v35 = v34;
    }

    v107 = v35;
    v95 = v35 + 1;
    while (2)
    {
      v36 = cv::borderInterpolate(v34, v106, v109);
      v37 = 0;
      v38 = (v34 + 2) % 5 * v108;
      v39 = *(v105 + 2) + *(v105 + 10) * v36;
      v40 = &v122[v38];
      v41 = &v122[v38 + 2];
      v42 = v127;
      for (j = v11 + 1; ; j = v13)
      {
        if (v37 < j)
        {
          v44 = 0;
          v45 = &v42[4 * v37];
          v46 = &v40[v37];
          v47 = &v42[4 * ((v104 >> 3) & 0x1FF) + 4 + 4 * v37];
          v48 = j - v37;
          do
          {
            v46[v44] = 6 * *(v39 + 2 * *&v45[4 * v44 + v33]) + 4 * (*(v39 + 2 * *&v45[12 * ((v104 >> 3) & 0x1FF) + 12 + 4 * v44]) + *(v39 + 2 * *(v47 + 4 * v44))) + *(v39 + 2 * *&v45[4 * v44]) + *(v39 + 2 * *&v45[4 * v44 + *v112]);
            ++v44;
          }

          while (v48 != v44);
          v37 = j;
        }

        if (v37 == v13)
        {
          break;
        }

        switch(v11)
        {
          case 0:
            if (v37 >= v31)
            {
              break;
            }

            v64 = &v40[v37];
            v65 = v31 - v37;
            v66 = (v39 + 4 * v37);
            do
            {
              v67 = *v66;
              v68 = v66[1] + *(v66 - 1);
              v69 = *(v66 - 2);
              v70 = v66[2];
              v66 += 2;
              *v64++ = v69 + 6 * v67 + 4 * v68 + v70;
              --v65;
            }

            while (v65);
LABEL_59:
            v37 = v31;
            break;
          case 2:
            if (v37 < v31)
            {
              v56 = v37;
              v57 = &v41[v37];
              v58 = (v39 + 2 + 4 * v37);
              v59 = v58;
              do
              {
                v60 = *(v58 - 7) + 6 * *(v58 - 1) + 4 * (v58[2] + *(v58 - 4)) + v58[5];
                v61 = v59[6];
                v59 += 6;
                v62 = *(v58 - 6) + 6 * *v58 + 4 * (v58[3] + *(v58 - 3)) + v61;
                v63 = *(v58 - 5) + 6 * v58[1] + 4 * (v58[4] + *(v58 - 2)) + v58[7];
                v56 += 3;
                *(v57 - 2) = v60;
                *(v57 - 1) = v62;
                *v57 = v63;
                v57 += 3;
                v37 += 3;
                v58 = v59;
              }

              while (v56 < v31);
            }

            break;
          case 3:
            if (v37 < v31)
            {
              v49 = v37;
              v50 = &v40[v37];
              v51 = (v39 + 4 * v37);
              do
              {
                v52 = vmull_u16(*v51, 0x6000600060006);
                v53 = v51[-2];
                v54 = vshlq_n_s32(vaddl_u16(v51[1], v51[-1]), 2uLL);
                v55 = v51[2];
                v51 += 2;
                *v50++ = vaddw_u16(vaddq_s32(vaddw_u16(v52, v53), v54), v55);
                v49 += 4;
                v37 += 4;
              }

              while (v49 < v31);
            }

            break;
          default:
            if (v37 >= v31)
            {
              break;
            }

            v71 = &v119[4 * v37];
            v72 = &v40[v37];
            v73 = v31 - v37;
            do
            {
              v74 = *v71++;
              *v72++ = *(v39 + 2 * (v74 - v28)) + 6 * *(v39 + 2 * v74) + 4 * (*(v39 + 2 * (v74 + v12)) + *(v39 + 2 * (v74 - v12))) + *(v39 + 2 * (v74 + v28));
              --v73;
            }

            while (v73);
            goto LABEL_59;
        }

        v42 = &v126[-4 * v37];
      }

      v75 = v34 == v107;
      v34 = (v34 + 1);
      if (!v75)
      {
        continue;
      }

      break;
    }

    v34 = v95;
LABEL_64:
    v76 = 0;
    v77 = v103;
    do
    {
      *(&v123 + v76) = &v122[v77 % 5 * v108];
      ++v77;
      v76 += 8;
    }

    while (v76 != 40);
    if (v13 >= 1)
    {
      v79 = *(&v123 + 1);
      v78 = v123;
      v81 = *(&v124 + 1);
      v80 = v124;
      v82 = (v99 + v98 * v102);
      v83 = 2 * v13;
      v84 = v125;
      do
      {
        v86 = *v80++;
        v85 = v86;
        v88 = *v79++;
        v87 = v88;
        v89 = *v81++;
        v90 = v89 + v87;
        v92 = *v78++;
        v91 = v92;
        v93 = *v84++;
        *v82++ = (v91 + 6 * v85 + 4 * v90 + v93 + 128) >> 8;
        v83 -= 2;
      }

      while (v83);
    }

    v30 = v102 + 1;
    v100 += 2;
    v103 += 2;
  }

  while (v102 + 1 != v97);
LABEL_70:
  if (__p != v119 && __p)
  {
    MEMORY[0x2318CB180]();
  }

  result = v120;
  if (v120 != v122 && v120)
  {
    return MEMORY[0x2318CB180]();
  }

  return result;
}

void sub_22D211230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (STACK[0x11B0] != a11 && STACK[0x11B0] != 0)
  {
    MEMORY[0x2318CB180]();
  }

  _Unwind_Resume(a1);
}

void *cv::pyrDown_<cv::FltCast<float,8>,cv::NoVec<float,float>>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v97 = v3;
  v129 = *MEMORY[0x277D85DE8];
  if (!*(v2 + 2))
  {
    goto LABEL_7;
  }

  v5 = v2[1];
  if (v5 >= 3)
  {
    v7 = *(v2 + 8);
    v6 = 1;
    do
    {
      v8 = *v7++;
      v6 *= v8;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = v2[3] * v2[2];
  }

  if (!v6)
  {
LABEL_7:
    std::string::basic_string[abi:ne200100]<0>(v127, "!_src.empty()");
    std::string::basic_string[abi:ne200100]<0>(&v121, "pyrDown_");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/pyramids.cpp");
    cv::Exception::Exception(v128, 4294967081, v127, &v121, &__p, 194);
    cv::error(v128, v9);
  }

  v112 = *(*(v2 + 8) + 4);
  v107 = **(v2 + 8);
  v10 = *(*(v3 + 64) + 4);
  v98 = **(v3 + 64);
  v105 = *v2;
  v11 = (v105 >> 3) & 0x1FF;
  v12 = v11 + 1;
  v13 = ((v11 + 1) * v10);
  v14 = 0x500000000 * ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 0x1000000000;
  v121 = v123;
  v122 = 1032;
  if ((v14 >> 32) >= 0x409)
  {
    v122 = v14 >> 32;
    operator new[]();
  }

  __p = v120;
  v119 = 1032;
  if (v13 >= 0x409)
  {
    v119 = v13;
    operator new[]();
  }

  v126 = 0;
  v125 = 0u;
  v124 = 0u;
  v15 = 2 * v10 - v112;
  if (v15 < 0)
  {
    v15 = v112 - 2 * v10;
  }

  if (v15 > 2)
  {
    goto LABEL_18;
  }

  v16 = 2 * v98 - v107;
  if (v16 < 0)
  {
    v16 = v107 - 2 * v98;
  }

  if (v16 >= 3)
  {
LABEL_18:
    std::string::basic_string[abi:ne200100]<0>(v116, "std::abs(dsize.width*2 - ssize.width) <= 2 && std::abs(dsize.height*2 - ssize.height) <= 2");
    std::string::basic_string[abi:ne200100]<0>(v115, "pyrDown_");
    std::string::basic_string[abi:ne200100]<0>(v114, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/pyramids.cpp");
    cv::Exception::Exception(v117, 4294967081, v116, v115, v114, 208);
    cv::error(v117, v17);
  }

  v106 = v2;
  v110 = v4;
  v18 = 0;
  v19 = 0;
  v109 = (v13 + 15) & 0xFFFFFFF0;
  v20 = (v112 - 3) / 2;
  if (v10 >= v20 + 1)
  {
    v21 = v20 + 1;
  }

  else
  {
    v21 = v10;
  }

  v102 = v21;
  v111 = 2 * v21 - 2;
  do
  {
    v22 = cv::borderInterpolate((v19 - 2), v112, v110);
    v23 = cv::borderInterpolate((v111 + v19), v112, v110);
    v24 = v22 * v12;
    v25 = v11 + 1;
    v26 = v18;
    v27 = v23 * v12;
    do
    {
      *&v128[v26] = v24;
      *&v127[v26] = v27++;
      ++v24;
      v26 += 4;
      --v25;
    }

    while (v25);
    ++v19;
    v18 += 4 * ((v105 >> 3) & 0x1FF) + 4;
  }

  while (v19 != 7);
  v28 = 2 * v12;
  if (v13 >= 1)
  {
    for (i = 0; i != v13; ++i)
    {
      *&v120[4 * i] = i % v12 + v28 * (i / v12);
    }
  }

  if (v98 < 1)
  {
    goto LABEL_70;
  }

  v104 = 0;
  v30 = 0;
  v31 = v12 * v102;
  v32 = (v105 >> 3) & 0x1FF;
  *v113 = 16 * v32 + 16;
  v33 = 8 * v32 + 8;
  v34 = 4294967294;
  v101 = 2;
  __asm
  {
    FMOV            V10.2S, #4.0
    FMOV            V11.2S, #6.0
  }

  do
  {
    v99 = *(v97 + 80);
    v100 = *(v97 + 16);
    v103 = v30;
    if (2 * v30 + 2 < v34)
    {
      goto LABEL_64;
    }

    v41 = v101;
    if (v34 > v101)
    {
      v41 = v34;
    }

    v108 = v41;
    v96 = v41 + 1;
    while (2)
    {
      v42 = cv::borderInterpolate(v34, v107, v110);
      v43 = 0;
      v44 = (v34 + 2) % 5 * v109;
      v45 = *(v106 + 2) + *(v106 + 10) * v42;
      v46 = &v123[v44];
      v47 = &v123[v44 + 2];
      v48 = v128;
      for (j = v11 + 1; ; j = v13)
      {
        if (v43 < j)
        {
          v50 = 0;
          v51 = &v48[4 * v43];
          v52 = &v46[v43];
          v53 = &v48[4 * ((v105 >> 3) & 0x1FF) + 4 + 4 * v43];
          v54 = j - v43;
          do
          {
            *&v52[v50] = (*(v45 + 4 * *&v51[4 * v50]) + (((*(v45 + 4 * *(v53 + 4 * v50)) + *(v45 + 4 * *&v51[12 * ((v105 >> 3) & 0x1FF) + 12 + 4 * v50])) * 4.0) + (*(v45 + 4 * *&v51[4 * v50 + v33]) * 6.0))) + *(v45 + 4 * *&v51[4 * v50 + *v113]);
            ++v50;
          }

          while (v54 != v50);
          v43 = j;
        }

        if (v43 == v13)
        {
          break;
        }

        switch(v11)
        {
          case 0:
            if (v43 >= v31)
            {
              break;
            }

            v68 = &v46[v43];
            v69 = v31 - v43;
            v70 = (v45 + 8 * v43);
            do
            {
              v71 = *(v70 - 2) + (((*(v70 - 1) + v70[1]) * 4.0) + (*v70 * 6.0));
              v72 = v70[2];
              v70 += 2;
              *v68++ = v72 + v71;
              --v69;
            }

            while (v69);
LABEL_59:
            v43 = v31;
            break;
          case 2:
            if (v43 < v31)
            {
              v60 = 0;
              v61 = 0;
              v62 = v43;
              v63 = &v46[v43];
              v64 = v45 + 8 * v43;
              do
              {
                v65 = *(v64 + 32) + (*(v64 - 16) + (((*(v64 - 4) + *(v64 + 20)) * 4.0) + (*(v64 + 8) * 6.0)));
                v66 = vadd_f32(*(v64 - 24), vmla_f32(vmul_f32(vadd_f32(*(v64 - 12), *(v64 + 12)), _D10), _D11, *v64));
                v67 = *(v64 + 24);
                v64 += 24;
                *&v63[v60] = vadd_f32(v67, v66);
                *&v63[v61 + 2] = v65;
                v61 += 3;
                v60 += 3;
              }

              while (v62 + v61 < v31);
              v43 = v62 + v61;
            }

            break;
          case 3:
            if (v43 < v31)
            {
              v55 = v43;
              v56 = &v47[v43];
              v57 = (v45 + 8 * v43);
              v58 = v57;
              do
              {
                v59 = v58[4];
                v58 += 4;
                v56[-1] = vadd_f32(v59, vadd_f32(v57[-4], vmla_f32(vmul_f32(vadd_f32(v57[-2], v57[2]), _D10), _D11, *v57)));
                v55 += 4;
                *v56 = vadd_f32(v57[5], vadd_f32(v57[-3], vmla_f32(vmul_f32(vadd_f32(v57[-1], v57[3]), _D10), _D11, v57[1])));
                v56 += 2;
                v43 += 4;
                v57 = v58;
              }

              while (v55 < v31);
            }

            break;
          default:
            if (v43 >= v31)
            {
              break;
            }

            v73 = &v120[4 * v43];
            v74 = &v46[v43];
            v75 = v31 - v43;
            do
            {
              v76 = *v73++;
              *v74++ = *(v45 + 4 * (v76 + v28)) + (*(v45 + 4 * (v76 - v28)) + (((*(v45 + 4 * (v76 - v12)) + *(v45 + 4 * (v76 + v12))) * 4.0) + (*(v45 + 4 * v76) * 6.0)));
              --v75;
            }

            while (v75);
            goto LABEL_59;
        }

        v48 = &v127[-4 * v43];
      }

      _ZF = v34 == v108;
      v34 = (v34 + 1);
      if (!_ZF)
      {
        continue;
      }

      break;
    }

    v34 = v96;
LABEL_64:
    v77 = 0;
    v78 = v104;
    do
    {
      *(&v124 + v77) = &v123[v78 % 5 * v109];
      ++v78;
      v77 += 8;
    }

    while (v77 != 40);
    if (v13 >= 1)
    {
      v80 = *(&v124 + 1);
      v79 = v124;
      v82 = *(&v125 + 1);
      v81 = v125;
      v83 = (v100 + v99 * v103);
      v84 = 4 * v13;
      v85 = v126;
      do
      {
        v86 = *v81++;
        v87 = v86;
        v88 = *v80++;
        v89 = v88;
        v90 = *v82++;
        v91 = ((v89 + v90) * 4.0) + (v87 * 6.0);
        v92 = *v79++;
        v93 = v92 + v91;
        v94 = *v85++;
        *v83++ = (v94 + v93) * 0.0039062;
        v84 -= 4;
      }

      while (v84);
    }

    v30 = v103 + 1;
    v101 += 2;
    v104 += 2;
  }

  while (v103 + 1 != v98);
LABEL_70:
  if (__p != v120 && __p)
  {
    MEMORY[0x2318CB180]();
  }

  result = v121;
  if (v121 != v123 && v121)
  {
    return MEMORY[0x2318CB180]();
  }

  return result;
}

void sub_22D211CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (STACK[0x11B0] != a11 && STACK[0x11B0] != 0)
  {
    MEMORY[0x2318CB180]();
  }

  _Unwind_Resume(a1);
}

void *cv::pyrDown_<cv::FltCast<double,8>,cv::NoVec<double,double>>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v98 = v3;
  v133 = *MEMORY[0x277D85DE8];
  if (!*(v2 + 2))
  {
    goto LABEL_7;
  }

  v5 = v2[1];
  if (v5 >= 3)
  {
    v7 = *(v2 + 8);
    v6 = 1;
    do
    {
      v8 = *v7++;
      v6 *= v8;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = v2[3] * v2[2];
  }

  if (!v6)
  {
LABEL_7:
    std::string::basic_string[abi:ne200100]<0>(v131, "!_src.empty()");
    std::string::basic_string[abi:ne200100]<0>(&v125, "pyrDown_");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/pyramids.cpp");
    cv::Exception::Exception(v132, 4294967081, v131, &v125, &__p, 194);
    cv::error(v132, v9);
  }

  v116 = *(*(v2 + 8) + 4);
  v106 = **(v2 + 8);
  v10 = *(*(v3 + 64) + 4);
  v99 = **(v3 + 64);
  v111 = *v2;
  v11 = (v111 >> 3) & 0x1FF;
  v12 = v11 + 1;
  v13 = ((v11 + 1) * v10);
  v14 = 0x500000000 * ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 0x1000000000;
  v125 = v127;
  v126 = 520;
  if ((v14 >> 32) >= 0x209)
  {
    v126 = v14 >> 32;
    operator new[]();
  }

  __p = v124;
  v123 = 1032;
  if (v13 >= 0x409)
  {
    v123 = v13;
    operator new[]();
  }

  v130 = 0;
  v129 = 0u;
  v128 = 0u;
  v15 = 2 * v10 - v116;
  if (v15 < 0)
  {
    v15 = v116 - 2 * v10;
  }

  if (v15 > 2)
  {
    goto LABEL_18;
  }

  v16 = 2 * v99 - v106;
  if (v16 < 0)
  {
    v16 = v106 - 2 * v99;
  }

  if (v16 >= 3)
  {
LABEL_18:
    std::string::basic_string[abi:ne200100]<0>(v120, "std::abs(dsize.width*2 - ssize.width) <= 2 && std::abs(dsize.height*2 - ssize.height) <= 2");
    std::string::basic_string[abi:ne200100]<0>(v119, "pyrDown_");
    std::string::basic_string[abi:ne200100]<0>(v118, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/pyramids.cpp");
    cv::Exception::Exception(v121, 4294967081, v120, v119, v118, 208);
    cv::error(v121, v17);
  }

  v105 = v2;
  v110 = v4;
  v18 = 0;
  v19 = 0;
  v109 = (v13 + 15) & 0xFFFFFFF0;
  v20 = (v116 - 3) / 2;
  if (v10 >= v20 + 1)
  {
    v21 = v20 + 1;
  }

  else
  {
    v21 = v10;
  }

  v107 = v21;
  v114 = 2 * v21 - 2;
  do
  {
    v22 = cv::borderInterpolate((v19 - 2), v116, v110);
    v23 = cv::borderInterpolate((v114 + v19), v116, v110);
    v24 = v22 * v12;
    v25 = v11 + 1;
    v26 = v18;
    v27 = v23 * v12;
    do
    {
      *&v132[v26] = v24;
      *&v131[v26] = v27++;
      ++v24;
      v26 += 4;
      --v25;
    }

    while (v25);
    ++v19;
    v18 += 4 * ((v111 >> 3) & 0x1FF) + 4;
  }

  while (v19 != 7);
  v28 = 2 * v12;
  if (v13 >= 1)
  {
    for (i = 0; i != v13; ++i)
    {
      *&v124[4 * i] = i % v12 + v28 * (i / v12);
    }
  }

  if (v99 < 1)
  {
    goto LABEL_70;
  }

  v104 = 0;
  v30 = 0;
  v31 = v12 * v107;
  v32 = (v111 >> 3) & 0x1FF;
  v115 = 12 * v32 + 12;
  *v117 = 16 * v32 + 16;
  v33 = v32;
  v34 = 8 * v32 + 8;
  v35 = 4294967294;
  v102 = 2;
  __asm
  {
    FMOV            V1.2D, #4.0
    FMOV            V0.2D, #6.0
  }

  v112 = _Q0;
  v113 = _Q1;
  do
  {
    v100 = *(v98 + 80);
    v101 = *(v98 + 16);
    v103 = v30;
    if (2 * v30 + 2 < v35)
    {
      goto LABEL_64;
    }

    v42 = v102;
    if (v35 > v102)
    {
      v42 = v35;
    }

    v108 = v42;
    v97 = v42 + 1;
    while (2)
    {
      v43 = cv::borderInterpolate(v35, v106, v110);
      v44 = 0;
      v45 = (v35 + 2) % 5 * v109;
      v46 = *(v105 + 2) + *(v105 + 10) * v43;
      v47 = &v127[v45];
      v48 = &v127[v45 + 2];
      v49 = v132;
      for (j = v11 + 1; ; j = v13)
      {
        if (v44 < j)
        {
          v51 = 0;
          v52 = &v49[4 * v44];
          v53 = &v47[v44];
          v54 = &v49[4 * v33 + 4 + 4 * v44];
          v55 = j - v44;
          do
          {
            *&v53[v51] = *(v46 + 8 * *&v52[4 * v51]) + (*(v46 + 8 * *(v54 + 4 * v51)) + *(v46 + 8 * *&v52[4 * v51 + v115])) * 4.0 + *(v46 + 8 * *&v52[4 * v51 + v34]) * 6.0 + *(v46 + 8 * *&v52[4 * v51 + *v117]);
            ++v51;
          }

          while (v55 != v51);
          v44 = j;
        }

        if (v44 == v13)
        {
          break;
        }

        switch(v11)
        {
          case 0:
            if (v44 >= v31)
            {
              break;
            }

            v69 = &v47[v44];
            v70 = v31 - v44;
            v71 = (v46 + 16 * v44);
            do
            {
              v72 = *(v71 - 2) + (*(v71 - 1) + v71[1]) * 4.0 + *v71 * 6.0;
              v73 = v71[2];
              v71 += 2;
              *v69++ = v73 + v72;
              --v70;
            }

            while (v70);
LABEL_59:
            v44 = v31;
            break;
          case 2:
            if (v44 < v31)
            {
              v61 = 0;
              v62 = 0;
              v63 = v44;
              v64 = &v47[v44];
              v65 = v46 + 16 * v44;
              do
              {
                v66 = *(v65 + 64) + *(v65 - 32) + (*(v65 - 8) + *(v65 + 40)) * 4.0 + *(v65 + 16) * 6.0;
                v67 = vaddq_f64(*(v65 - 48), vmlaq_f64(vmulq_f64(vaddq_f64(*(v65 - 24), *(v65 + 24)), v113), v112, *v65));
                v68 = *(v65 + 48);
                v65 += 48;
                *&v64[v61] = vaddq_f64(v68, v67);
                *&v64[v62 + 2] = v66;
                v62 += 3;
                v61 += 3;
              }

              while (v63 + v62 < v31);
              v44 = v63 + v62;
            }

            break;
          case 3:
            if (v44 < v31)
            {
              v56 = v44;
              v57 = &v48[v44];
              v58 = (v46 + 16 * v44);
              v59 = v58;
              do
              {
                v60 = v59[4];
                v59 += 4;
                v57[-1] = vaddq_f64(v60, vaddq_f64(v58[-4], vmlaq_f64(vmulq_f64(vaddq_f64(v58[-2], v58[2]), v113), v112, *v58)));
                v56 += 4;
                *v57 = vaddq_f64(v58[5], vaddq_f64(v58[-3], vmlaq_f64(vmulq_f64(vaddq_f64(v58[-1], v58[3]), v113), v112, v58[1])));
                v57 += 2;
                v44 += 4;
                v58 = v59;
              }

              while (v56 < v31);
            }

            break;
          default:
            if (v44 >= v31)
            {
              break;
            }

            v74 = &v124[4 * v44];
            v75 = &v47[v44];
            v76 = v31 - v44;
            do
            {
              v77 = *v74++;
              *v75++ = *(v46 + 8 * (v77 + v28)) + *(v46 + 8 * (v77 - v28)) + (*(v46 + 8 * (v77 - v12)) + *(v46 + 8 * (v77 + v12))) * 4.0 + *(v46 + 8 * v77) * 6.0;
              --v76;
            }

            while (v76);
            goto LABEL_59;
        }

        v49 = &v131[-4 * v44];
      }

      _ZF = v35 == v108;
      v35 = (v35 + 1);
      if (!_ZF)
      {
        continue;
      }

      break;
    }

    v35 = v97;
LABEL_64:
    v78 = 0;
    v79 = v104;
    do
    {
      *(&v128 + v78) = &v127[v79 % 5 * v109];
      ++v79;
      v78 += 8;
    }

    while (v78 != 40);
    if (v13 >= 1)
    {
      v81 = *(&v128 + 1);
      v80 = v128;
      v83 = *(&v129 + 1);
      v82 = v129;
      v84 = (v101 + v100 * v103);
      v85 = 8 * v13;
      v86 = v130;
      do
      {
        v87 = *v82++;
        v88 = v87;
        v89 = *v81++;
        v90 = v89;
        v91 = *v83++;
        v92 = (v90 + v91) * 4.0 + v88 * 6.0;
        v93 = *v80++;
        v94 = v93 + v92;
        v95 = *v86++;
        *v84++ = (v95 + v94) * 0.00390625;
        v85 -= 8;
      }

      while (v85);
    }

    v30 = v103 + 1;
    v102 += 2;
    v104 += 2;
  }

  while (v103 + 1 != v99);
LABEL_70:
  if (__p != v124 && __p)
  {
    MEMORY[0x2318CB180]();
  }

  result = v125;
  if (v125 != v127 && v125)
  {
    return MEMORY[0x2318CB180]();
  }

  return result;
}

void sub_22D21274C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (STACK[0x11C0] != a10 && STACK[0x11C0] != 0)
  {
    MEMORY[0x2318CB180]();
  }

  _Unwind_Resume(a1);
}

void cv::GlBuffer::GlBuffer(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::string::basic_string[abi:ne200100]<0>(v5, "This function in deprecated, do not use it");
  std::string::basic_string[abi:ne200100]<0>(v4, "GlBuffer");
  std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/opengl_interop_deprecated.cpp");
  cv::Exception::Exception(v6, 4294967083, v5, v4, __p, 68);
  cv::error(v6, v2);
}

void sub_22D212944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  cv::Ptr<cv::GlBuffer::Impl>::~Ptr(v27);
  _Unwind_Resume(a1);
}

uint64_t cv::Ptr<cv::GlBuffer::Impl>::~Ptr(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    if (*a1)
    {
      MEMORY[0x2318CB1A0]();
    }

    free(*(a1 + 8));
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  return a1;
}

void cv::GlTexture::GlTexture(cv::GlTexture *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  cv::GlBuffer::GlBuffer(this + 32, 35052);
}

void sub_22D212AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  cv::GlBuffer::~GlBuffer((v27 + 32));
  cv::Ptr<cv::GlBuffer::Impl>::~Ptr(v28);
  _Unwind_Resume(a1);
}

void cv::GlBuffer::~GlBuffer(cv::GlBuffer *this)
{
  v2 = *(this + 3);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    v3 = *(this + 2);
    if (v3)
    {
      MEMORY[0x2318CB1A0](v3, 0xC400A2AC0F1);
    }

    free(*(this + 3));
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

const char *cvAttrValue(const char *result, char *__s1)
{
  if (result)
  {
    v3 = result;
    v4 = 1;
    while (1)
    {
      v5 = *v3;
      if (!*v3)
      {
        return 0;
      }

      if (*v5)
      {
        if (!strcmp(__s1, *v5))
        {
          return v5[v4];
        }

        v6 = 0;
        while (1)
        {
          v7 = v5[v6 + 2];
          if (!v7)
          {
            break;
          }

          v6 += 2;
          if (!strcmp(__s1, v7))
          {
            v4 = v6 & 0xFFFFFFFE | 1;
            return v5[v4];
          }
        }
      }

      v3 = *(v3 + 8);
      if (!v3)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t cvGetFileNodeByName(uint64_t a1, uint64_t a2, _BYTE *__s2)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1 != 1280131417)
  {
    std::string::basic_string[abi:ne200100]<0>(v27, "Invalid pointer to file storage");
    std::string::basic_string[abi:ne200100]<0>(v26, "cvGetFileNodeByName");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v28, 4294967291, v27, v26, __p, 740);
    cv::error(v28, v6);
  }

  if (!__s2)
  {
    std::string::basic_string[abi:ne200100]<0>(v27, "Null element name");
    std::string::basic_string[abi:ne200100]<0>(v26, "cvGetFileNodeByName");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v28, 4294967269, v27, v26, __p, 743);
    cv::error(v28, v7);
  }

  v8 = *__s2;
  if (*__s2)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v10 = 33 * v10 + v8;
      v8 = __s2[++v9];
    }

    while (v8);
    v11 = v10 & 0x7FFFFFFF;
    v12 = v9;
    if (a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v9 = 0;
    if (a2)
    {
LABEL_10:
      v13 = 1;
      goto LABEL_11;
    }
  }

  v22 = *(a1 + 48);
  if (!v22)
  {
    return 0;
  }

  v13 = *(v22 + 40);
  if (v13 < 1)
  {
    return 0;
  }

LABEL_11:
  v14 = 0;
  while (1)
  {
    SeqElem = a2;
    if (!a2)
    {
      SeqElem = cvGetSeqElem(*(a1 + 48), v14);
    }

    v16 = *SeqElem & 7;
    if (v16 != 6)
    {
      if (v16 && (v16 != 5 || *(*(SeqElem + 16) + 40)))
      {
        std::string::basic_string[abi:ne200100]<0>(v27, "The node is neither a map nor an empty collection");
        std::string::basic_string[abi:ne200100]<0>(v26, "cvGetFileNodeByName");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
        cv::Exception::Exception(v28, 4294967294, v27, v26, __p, 770);
        cv::error(v28, v23);
      }

      return 0;
    }

    v17 = *(SeqElem + 16);
    v18 = *(v17 + 108);
    v19 = (v18 & (v18 - 1)) != 0 ? v11 % v18 : (v18 - 1) & v11;
    v20 = *(*(v17 + 112) + 8 * v19);
    if (v20)
    {
      break;
    }

LABEL_23:
    if (++v14 == v13)
    {
      return 0;
    }
  }

  while (1)
  {
    v21 = *(v20 + 32);
    if (*v21 == v11 && *(v21 + 8) == v12 && !memcmp(*(v21 + 16), __s2, v9))
    {
      return v20;
    }

    v20 = *(v20 + 40);
    if (!v20)
    {
      goto LABEL_23;
    }
  }
}

void sub_22D213048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

uint64_t icvPuts(uint64_t a1, char *__s)
{
  v2 = __s;
  v3 = *(a1 + 376);
  if (v3)
  {
    result = strlen(__s);
    if (result)
    {
      v5 = result;
      do
      {
        result = std::deque<char>::push_back(v3, v2++);
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    v6 = *(a1 + 104);
    if (!v6)
    {
      std::string::basic_string[abi:ne200100]<0>(v10, "The storage is not opened");
      std::string::basic_string[abi:ne200100]<0>(v9, "icvPuts");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
      cv::Exception::Exception(v11, 4294967294, v10, v9, __p, 286);
      cv::error(v11, v7);
    }

    return fputs(v2, v6);
  }

  return result;
}

void sub_22D2131E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

uint64_t cvStartWriteStruct(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v4 = 4294967269;
LABEL_5:
    std::string::basic_string[abi:ne200100]<0>(v10, "Invalid pointer to file storage");
    std::string::basic_string[abi:ne200100]<0>(v9, "cvStartWriteStruct");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v11, v4, v10, v9, __p, 2963);
    cv::error(v11, v5);
  }

  if (*a1 != 1280131417)
  {
    v4 = 4294967291;
    goto LABEL_5;
  }

  if (!*(a1 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "The file storage is opened for reading");
    std::string::basic_string[abi:ne200100]<0>(v9, "cvStartWriteStruct");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v11, 4294967294, v10, v9, __p, 2963);
    cv::error(v11, v6);
  }

  return (*(a1 + 296))(a1, a2, a3, a4);
}

void sub_22D2133E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

uint64_t cvEndWriteStruct(uint64_t a1)
{
  if (!a1)
  {
    v1 = 4294967269;
LABEL_5:
    std::string::basic_string[abi:ne200100]<0>(v7, "Invalid pointer to file storage");
    std::string::basic_string[abi:ne200100]<0>(v6, "cvEndWriteStruct");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v8, v1, v7, v6, __p, 2971);
    cv::error(v8, v2);
  }

  if (*a1 != 1280131417)
  {
    v1 = 4294967291;
    goto LABEL_5;
  }

  if (!*(a1 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(v7, "The file storage is opened for reading");
    std::string::basic_string[abi:ne200100]<0>(v6, "cvEndWriteStruct");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v8, 4294967294, v7, v6, __p, 2971);
    cv::error(v8, v3);
  }

  return (*(a1 + 304))(a1);
}

void sub_22D2135C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

uint64_t cvWriteInt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v3 = 4294967269;
LABEL_5:
    std::string::basic_string[abi:ne200100]<0>(v9, "Invalid pointer to file storage");
    std::string::basic_string[abi:ne200100]<0>(v8, "cvWriteInt");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v10, v3, v9, v8, __p, 2979);
    cv::error(v10, v4);
  }

  if (*a1 != 1280131417)
  {
    v3 = 4294967291;
    goto LABEL_5;
  }

  if (!*(a1 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(v9, "The file storage is opened for reading");
    std::string::basic_string[abi:ne200100]<0>(v8, "cvWriteInt");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v10, 4294967294, v9, v8, __p, 2979);
    cv::error(v10, v5);
  }

  return (*(a1 + 312))(a1, a2, a3);
}

void sub_22D2137C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

uint64_t cvWriteString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v4 = 4294967269;
LABEL_5:
    std::string::basic_string[abi:ne200100]<0>(v10, "Invalid pointer to file storage");
    std::string::basic_string[abi:ne200100]<0>(v9, "cvWriteString");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v11, v4, v10, v9, __p, 2995);
    cv::error(v11, v5);
  }

  if (*a1 != 1280131417)
  {
    v4 = 4294967291;
    goto LABEL_5;
  }

  if (!*(a1 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(v10, "The file storage is opened for reading");
    std::string::basic_string[abi:ne200100]<0>(v9, "cvWriteString");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v11, 4294967294, v10, v9, __p, 2995);
    cv::error(v11, v6);
  }

  return (*(a1 + 328))(a1, a2, a3, a4);
}

void sub_22D2139CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

void *cvWriteRawData(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  v42 = a3;
  v51[128] = *MEMORY[0x277D85DE8];
  *__dst = 0u;
  memset(v50, 0, sizeof(v50));
  if (!a1)
  {
    v5 = 4294967269;
LABEL_5:
    std::string::basic_string[abi:ne200100]<0>(v47, "Invalid pointer to file storage");
    std::string::basic_string[abi:ne200100]<0>(v46, "cvWriteRawData");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v48, v5, v47, v46, __p, 3131);
    cv::error(v48, v6);
  }

  if (*a1 != 1280131417)
  {
    v5 = 4294967291;
    goto LABEL_5;
  }

  if (!*(a1 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(v47, "The file storage is opened for reading");
    std::string::basic_string[abi:ne200100]<0>(v46, "cvWriteRawData");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v48, 4294967294, v47, v46, __p, 3131);
    cv::error(v48, v7);
  }

  if (a3 < 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v47, "Negative number of elements");
    std::string::basic_string[abi:ne200100]<0>(v46, "cvWriteRawData");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v48, 4294967085, v47, v46, __p, 3134);
    cv::error(v48, v10);
  }

  result = icvDecodeFormat(a4, v51);
  v41 = result;
  if (v42)
  {
    if (!a2)
    {
      std::string::basic_string[abi:ne200100]<0>(v47, "Null data pointer");
      std::string::basic_string[abi:ne200100]<0>(v46, "cvWriteRawData");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
      cv::Exception::Exception(v48, 4294967269, v47, v46, __p, 3142);
      cv::error(v48, v11);
    }

    if (result == 1)
    {
      LODWORD(v51[0]) *= v42;
      v42 = 1;
    }

    v12 = 0;
    while (v41 < 1)
    {
LABEL_95:
      if (!--v42)
      {
        return result;
      }
    }

    v13 = 0;
    while (1)
    {
      if (v12 == 0x7FFFFFFF || (v14 = &v51[v13], v15 = v14[1], v9.i32[0] = (((v15 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v15 & 7))) & 3), v9 = vcnt_s8(v9), v9.i16[0] = vaddlv_u8(v9), v9.i32[0] >= 2u))
      {
        cvCreateMemStorage_cold_1();
      }

      v17 = *v14;
      v16 = (((v15 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v15 & 7))) & 3);
      v18 = (a2 + ((v12 + v16 - 1) & -v16));
      v43 = v13;
      if (*v14 >= 1)
      {
        break;
      }

LABEL_94:
      v12 = v18 - a2;
      v13 = v43 + 1;
      if (v43 + 1 == v41)
      {
        goto LABEL_95;
      }
    }

    if (v15 > 7)
    {
      cvWriteRawData_cold_1();
    }

    v19 = 0;
    while (1)
    {
      if (v15 <= 2)
      {
        if (!v15)
        {
          v26 = *v18;
          BYTE7(v50[0]) = 0;
          v22 = v50 + 7;
          do
          {
            *--v22 = v26 % 0xA + 48;
            v25 = v26 >= 0xA;
            v26 /= 0xAu;
          }

          while (v25);
LABEL_80:
          v36 = 1;
          goto LABEL_90;
        }

        if (v15 == 1)
        {
          v33 = *v18;
          if (v33 >= 0)
          {
            v34 = *v18;
          }

          else
          {
            v34 = -v33;
          }

          BYTE7(v50[0]) = 0;
          v22 = v50 + 6;
          do
          {
            *v22-- = v34 % 0xA + 48;
            v23 = v34 > 9;
            v34 /= 0xAu;
          }

          while (v23);
          if (v33 < 0)
          {
            *v22 = 45;
          }

          else
          {
            ++v22;
          }

          goto LABEL_80;
        }

        v24 = *v18;
        BYTE7(v50[0]) = 0;
        v22 = v50 + 7;
        do
        {
          *--v22 = v24 % 0xA + 48;
          v25 = v24 >= 0xA;
          v24 /= 0xAu;
        }

        while (v25);
      }

      else
      {
        if (v15 > 4)
        {
          if (v15 != 5)
          {
            if (v15 == 6)
            {
              v22 = __dst;
              icvDoubleToString(__dst, *v18);
            }

            else
            {
              v27 = *v18;
              if (*v18 >= 0)
              {
                v28 = *v18;
              }

              else
              {
                v28 = -v27;
              }

              BYTE7(v50[0]) = 0;
              v22 = v50 + 6;
              do
              {
                *v22-- = v28 % 0xA + 48;
                v23 = v28 > 9;
                v28 /= 0xAu;
              }

              while (v23);
              if ((v27 & 0x80000000) != 0)
              {
                *v22 = 45;
              }

              else
              {
                ++v22;
              }
            }

            v36 = 8;
            goto LABEL_90;
          }

          v31 = *v18;
          if ((~*v18 & 0x7F800000) != 0)
          {
            v35 = rint(v31);
            if (v31 != v35)
            {
              v37 = __dst;
              sprintf(__dst, "%.8e", v31);
              if (__dst[0] == 45 || __dst[0] == 43)
              {
                v37 = &__dst[1];
              }

              do
              {
                v39 = *v37++;
                v38 = v39;
              }

              while ((v39 - 48) < 0xA);
              if (v38 == 44)
              {
                *(v37 - 1) = 46;
              }

              goto LABEL_88;
            }

            v22 = __dst;
            sprintf(__dst, "%d.", v35);
          }

          else
          {
            if (fabsf(v31) == INFINITY)
            {
              if (*v18 >= 0)
              {
                v32 = ".Inf";
              }

              else
              {
                v32 = "-.Inf";
              }

              v22 = __dst;
              strcpy(__dst, v32);
              goto LABEL_89;
            }

            strcpy(__dst, ".Nan");
LABEL_88:
            v22 = __dst;
          }

LABEL_89:
          v36 = 4;
          goto LABEL_90;
        }

        if (v15 != 3)
        {
          v20 = *v18;
          if (*v18 >= 0)
          {
            v21 = *v18;
          }

          else
          {
            v21 = -v20;
          }

          BYTE7(v50[0]) = 0;
          v22 = v50 + 6;
          do
          {
            *v22-- = v21 % 0xA + 48;
            v23 = v21 > 9;
            v21 /= 0xAu;
          }

          while (v23);
          if ((v20 & 0x80000000) != 0)
          {
            *v22 = 45;
          }

          else
          {
            ++v22;
          }

          goto LABEL_89;
        }

        v29 = *v18;
        if (v29 >= 0)
        {
          v30 = *v18;
        }

        else
        {
          v30 = -v29;
        }

        BYTE7(v50[0]) = 0;
        v22 = v50 + 6;
        do
        {
          *v22-- = v30 % 0xA + 48;
          v23 = v30 > 9;
          v30 /= 0xAu;
        }

        while (v23);
        if (v29 < 0)
        {
          *v22 = 45;
        }

        else
        {
          ++v22;
        }
      }

      v36 = 2;
LABEL_90:
      if (*(a1 + 4) == 8)
      {
        v40 = strlen(v22);
        result = icvXMLWriteScalar(a1, 0, v22, v40);
      }

      else
      {
        result = icvYMLWrite(a1, 0, v22);
      }

      v18 = (v18 + v36);
      if (++v19 == v17)
      {
        goto LABEL_94;
      }
    }
  }

  return result;
}

void sub_22D2141BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  cv::Exception::~Exception(&a35);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

const char *icvDecodeFormat(const char *result, int *a2)
{
  if (result)
  {
    v3 = result;
    v4 = strlen(result);
    v5 = v4;
    if (!v4)
    {
      return 0;
    }

    if (!a2)
    {
      icvDecodeFormat();
    }

    *a2 = 0;
    if (v4 >= 1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = &v3[v6];
        v9 = *v8;
        v10 = v9 - 48;
        if ((v9 - 48) > 9)
        {
          v12 = memchr("ucwsifdr", v9, 9uLL);
          if (!v12)
          {
            std::string::basic_string[abi:ne200100]<0>(v21, "Invalid data type specification");
            std::string::basic_string[abi:ne200100]<0>(v20, "icvDecodeFormat");
            std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
            cv::Exception::Exception(__endptr, 4294967291, v21, v20, __p, 3062);
            cv::error(__endptr, v13);
          }

          v14 = &a2[v7];
          v15 = *v14;
          if (!*v14)
          {
            v15 = 1;
            *v14 = 1;
          }

          v16 = v12 - "ucwsifdr";
          v14[1] = v16;
          if (v7 <= 0)
          {
            v10 = 0;
            v7 += 2;
          }

          else
          {
            v17 = &a2[v7];
            if (v16 == *(v17 - 1))
            {
              v10 = 0;
              *(v17 - 2) += v15;
            }

            else
            {
              if (v7 >= 0xFE)
              {
                std::string::basic_string[abi:ne200100]<0>(v21, "Too long data type specification");
                std::string::basic_string[abi:ne200100]<0>(v20, "icvDecodeFormat");
                std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
                cv::Exception::Exception(__endptr, 4294967291, v21, v20, __p, 3072);
                cv::error(__endptr, v18);
              }

              v10 = 0;
              v7 += 2;
            }
          }
        }

        else
        {
          if (*(v8 + 1) - 48 <= 9)
          {
            __endptr[0] = 0;
            v10 = strtol(v8, __endptr, 10);
            v6 = ~v3 + LODWORD(__endptr[0]);
          }

          if (v10 <= 0)
          {
            std::string::basic_string[abi:ne200100]<0>(v21, "Invalid data type specification");
            std::string::basic_string[abi:ne200100]<0>(v20, "icvDecodeFormat");
            std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
            cv::Exception::Exception(__endptr, 4294967291, v21, v20, __p, 3054);
            cv::error(__endptr, v11);
          }
        }

        a2[v7] = v10;
        ++v6;
      }

      while (v6 < v5);
      return (v7 / 2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_22D21456C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  cv::Exception::~Exception(&a28);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

char *icvDoubleToString(char *__dst, double a2)
{
  if ((~HIDWORD(a2) & 0x7FF00000) != 0)
  {
    v4 = rint(a2);
    if (v4 == a2)
    {
      sprintf(__dst, "%d.", v4);
    }

    else
    {
      sprintf(__dst, "%.16e", a2);
      v7 = *__dst;
      if (v7 == 45 || (v8 = __dst, v7 == 43))
      {
        v8 = __dst + 1;
      }

      do
      {
        v10 = *v8++;
        v9 = v10;
      }

      while ((v10 - 48) < 0xA);
      if (v9 == 44)
      {
        *(v8 - 1) = 46;
      }
    }

    return __dst;
  }

  v3 = HIDWORD(a2) & 0x7FFFFFFF;
  if (LODWORD(a2))
  {
    ++v3;
  }

  if (v3 >= 0x7FF00001)
  {
    strcpy(__dst, ".Nan");
    return __dst;
  }

  if (a2 >= 0.0)
  {
    v5 = ".Inf";
  }

  else
  {
    v5 = "-.Inf";
  }

  return strcpy(__dst, v5);
}

void *icvXMLWriteScalar(uint64_t a1, const char *a2, const void *a3, int a4)
{
  if ((*(a1 + 68) & 7) == 6 || a2 && (*(a1 + 68) & 7u) <= 4)
  {
    icvXMLWriteTag(a1, a2, 1, 0, 0);
    v8 = *(a1 + 120);
    v9 = a4;
    v10 = *(a1 + 136);
    if (&v8[a4] >= v10)
    {
      v11 = *(a1 + 128);
      v12 = v8 - v11;
      v13 = (3 * (v10 - v11) + ((3 * (v10 - v11)) >> 63)) >> 1;
      if (v12 + a4 <= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12 + a4;
      }

      v15 = malloc_type_malloc(v14 + 256, 0x100004077774924uLL);
      v16 = v15;
      v17 = *(a1 + 128);
      *(a1 + 120) = &v15[*(a1 + 120) - v17];
      if (v12 >= 1)
      {
        memcpy(v15, v17, v12 & 0x7FFFFFFF);
      }

      *(a1 + 128) = v16;
      *(a1 + 136) = &v16[v14];
      v8 = &v16[v12];
    }

    memcpy(v8, a3, v9);
    *(a1 + 120) = &v8[v9];

    return icvXMLWriteTag(a1, a2, 2, 0, 0);
  }

  else
  {
    v19 = *(a1 + 120);
    if (a2)
    {
      std::string::basic_string[abi:ne200100]<0>(v25, "elements with keys can not be written to sequence");
      std::string::basic_string[abi:ne200100]<0>(v24, "icvXMLWriteScalar");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
      cv::Exception::Exception(v26, 4294967291, v25, v24, __p, 2489);
      cv::error(v26, v20);
    }

    v21 = v19 - *(a1 + 128) + a4;
    *(a1 + 68) = 5;
    if (v21 > *(a1 + 144) && v21 - *(a1 + 64) > 10 || (v22 = *(a1 + 128), v19 > v22) && *(v19 - 1) == 62)
    {
      v19 = icvFSFlush(a1);
    }

    else if (v19 > v22 + *(a1 + 64) && *(v19 - 1) != 62)
    {
      *v19++ = 32;
    }

    result = memcpy(v19, a3, a4);
    *(a1 + 120) = &v19[a4];
  }

  return result;
}

void sub_22D2149A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

char *icvYMLWrite(char *result, const char *a2, const char *a3)
{
  v4 = result;
  v5 = *(result + 17);
  if (a2)
  {
    if (*a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*(result + 17) & 7u) < 5)
  {
    *(result + 3) = 0;
    if (v6)
    {
      v5 = 38;
    }

    else
    {
      v5 = 37;
    }
  }

  else if (((*(result + 17) & 7) == 6) != (v6 != 0))
  {
    std::string::basic_string[abi:ne200100]<0>(v46, "An attempt to add element without a key to a map, or add element with key to sequence");
    std::string::basic_string[abi:ne200100]<0>(v45, "icvYMLWrite");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v47, 4294967291, v46, v45, __p, 1459);
    cv::error(v47, v7);
  }

  if (v6)
  {
    result = strlen(v6);
    if (!result)
    {
      std::string::basic_string[abi:ne200100]<0>(v46, "The key is an empty");
      std::string::basic_string[abi:ne200100]<0>(v45, "icvYMLWrite");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
      cv::Exception::Exception(v47, 4294967291, v46, v45, __p, 1471);
      cv::error(v47, v10);
    }

    v8 = result;
    if (result > 4096)
    {
      std::string::basic_string[abi:ne200100]<0>(v46, "The key is too long");
      std::string::basic_string[abi:ne200100]<0>(v45, "icvYMLWrite");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
      cv::Exception::Exception(v47, 4294967291, v46, v45, __p, 1474);
      cv::error(v47, v9);
    }
  }

  else
  {
    v8 = 0;
  }

  if (a3)
  {
    result = strlen(a3);
    v11 = result;
    if ((v5 & 8) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v11 = 0;
    if ((v5 & 8) == 0)
    {
LABEL_20:
      result = icvFSFlush(v4);
      v12 = result;
      if ((v5 & 7) != 6)
      {
        *result = 45;
        if (a3)
        {
          result[1] = 32;
          v12 = result + 2;
          if (!v6)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v12 = result + 1;
          if (!v6)
          {
            goto LABEL_58;
          }
        }

        goto LABEL_33;
      }

LABEL_32:
      if (!v6)
      {
        goto LABEL_58;
      }

      goto LABEL_33;
    }
  }

  v13 = *(v4 + 120);
  if ((v5 & 0x20) == 0)
  {
    *v13++ = 44;
  }

  v14 = v11 + v8 + v13 - *(v4 + 128);
  if (v14 <= *(v4 + 144) || v14 - *(v4 + 64) < 11)
  {
    *v13 = 32;
    v12 = v13 + 1;
    goto LABEL_32;
  }

  *(v4 + 120) = v13;
  result = icvFSFlush(v4);
  v12 = result;
  if (!v6)
  {
    goto LABEL_58;
  }

LABEL_33:
  v15 = *v6;
  if (v15 != 95 && (v15 & 0xFFFFFFDF) - 65 >= 0x1A)
  {
    std::string::basic_string[abi:ne200100]<0>(v46, "Key must start with a letter or _");
    std::string::basic_string[abi:ne200100]<0>(v45, "icvYMLWrite");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v47, 4294967291, v46, v45, __p, 1509);
    cv::error(v47, v16);
  }

  v17 = *(v4 + 136);
  if (&v12[v8] >= v17)
  {
    v18 = *(v4 + 128);
    v19 = v12 - v18;
    v20 = (3 * (v17 - v18) + ((3 * (v17 - v18)) >> 63)) >> 1;
    v21 = v8 + v12 - v18;
    if (v21 <= v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = v21;
    }

    result = malloc_type_malloc(v22 + 256, 0x100004077774924uLL);
    v23 = result;
    v24 = *(v4 + 128);
    *(v4 + 120) = &result[*(v4 + 120) - v24];
    if (v19 >= 1)
    {
      result = memcpy(result, v24, v19 & 0x7FFFFFFF);
    }

    *(v4 + 128) = v23;
    *(v4 + 136) = v23 + v22;
    v12 = v23 + v19;
  }

  if (v8 >= 1)
  {
    v25 = v8;
    v26 = v12;
    do
    {
      v28 = *v6++;
      v27 = v28;
      *v26 = v28;
      if ((v28 - 58) <= 0xF5u && ((v27 & 0xDF) - 91) <= 0xE5u)
      {
        v29 = v27 - 32;
        v30 = v29 > 0x3F;
        v31 = (1 << v29) & 0x8000000000002001;
        if (v30 || v31 == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(v46, "Key names may only contain alphanumeric characters [a-zA-Z0-9], '-', '_' and ' '");
          std::string::basic_string[abi:ne200100]<0>(v45, "icvYMLWrite");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
          cv::Exception::Exception(v47, 4294967291, v46, v45, __p, 1519);
          cv::error(v47, v33);
        }
      }

      ++v26;
      --v25;
    }

    while (v25);
  }

  v34 = &v12[v8];
  *v34 = 58;
  v12 = v34 + 1;
  if (!a3 || (v5 & 8) != 0)
  {
LABEL_58:
    if (!a3)
    {
      goto LABEL_67;
    }

    goto LABEL_59;
  }

  v12 = v34 + 2;
  v34[1] = 32;
LABEL_59:
  v35 = *(v4 + 136);
  if (&v12[v11] >= v35)
  {
    v36 = *(v4 + 128);
    v37 = v12 - v36;
    v38 = (3 * (v35 - v36) + ((3 * (v35 - v36)) >> 63)) >> 1;
    v39 = v11 + v12 - v36;
    if (v39 <= v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = v39;
    }

    v41 = malloc_type_malloc(v40 + 256, 0x100004077774924uLL);
    v42 = v41;
    v43 = *(v4 + 128);
    *(v4 + 120) = &v41[*(v4 + 120) - v43];
    if (v37 >= 1)
    {
      memcpy(v41, v43, v37 & 0x7FFFFFFF);
    }

    *(v4 + 128) = v42;
    *(v4 + 136) = &v42[v40];
    v12 = &v42[v37];
  }

  result = memcpy(v12, a3, v11);
  v12 += v11;
LABEL_67:
  *(v4 + 120) = v12;
  *(v4 + 68) = v5 & 0xFFFFFFDF;
  return result;
}

void sub_22D215034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  cv::Exception::~Exception(&a28);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

double cvStartReadRawData(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v3 = 4294967269;
LABEL_5:
    std::string::basic_string[abi:ne200100]<0>(v11, "Invalid pointer to file storage");
    std::string::basic_string[abi:ne200100]<0>(v10, "cvStartReadRawData");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v12, v3, v11, v10, __p, 3222);
    cv::error(v12, v4);
  }

  if (*a1 != 1280131417)
  {
    v3 = 4294967291;
    goto LABEL_5;
  }

  if (!a2 || !a3)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "Null pointer to source file node or reader");
    std::string::basic_string[abi:ne200100]<0>(v10, "cvStartReadRawData");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v12, 4294967269, v11, v10, __p, 3225);
    cv::error(v12, v5);
  }

  v6 = *a2 & 7;
  if ((v6 - 1) > 1)
  {
    if (v6)
    {
      if (v6 != 5)
      {
        std::string::basic_string[abi:ne200100]<0>(v11, "The file node should be a numerical scalar or a sequence");
        std::string::basic_string[abi:ne200100]<0>(v10, "cvStartReadRawData");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
        cv::Exception::Exception(v12, 4294967291, v11, v10, __p, 3245);
        cv::error(v12, v8);
      }

      cvStartReadSeq(*(a2 + 16), a3, 0);
    }

    else
    {
      result = 0.0;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    *(a3 + 32) = a2;
    *(a3 + 40) = a2 + 64;
    *(a3 + 24) = a2;
    *(a3 + 8) = 0;
  }

  return result;
}

void sub_22D215334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

void *cvReadRawDataSlice(_DWORD *a1, void *a2, int a3, uint64_t a4, char *a5)
{
  v30 = a3;
  v36[128] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = 4294967269;
LABEL_5:
    std::string::basic_string[abi:ne200100]<0>(v34, "Invalid pointer to file storage");
    std::string::basic_string[abi:ne200100]<0>(v33, "cvReadRawDataSlice");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v35, v6, v34, v33, __p, 3257);
    cv::error(v35, v7);
  }

  if (*a1 != 1280131417)
  {
    v6 = 4294967291;
    goto LABEL_5;
  }

  if (!a2 || !a4)
  {
    std::string::basic_string[abi:ne200100]<0>(v34, "Null pointer to reader or destination array");
    std::string::basic_string[abi:ne200100]<0>(v33, "cvReadRawDataSlice");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v35, 4294967269, v34, v33, __p, 3260);
    cv::error(v35, v8);
  }

  if (a3 != 1 && !a2[1])
  {
    std::string::basic_string[abi:ne200100]<0>(v34, "The readed sequence is a scalar, thus len must be 1");
    std::string::basic_string[abi:ne200100]<0>(v33, "cvReadRawDataSlice");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v35, 4294967095, v34, v33, __p, 3263);
    cv::error(v35, v9);
  }

  result = icvDecodeFormat(a5, v36);
  v12 = 0;
  v13 = result;
  v29 = result;
LABEL_13:
    ;
  }

  v14 = 0;
  while (1)
  {
    if (v12 == 0x7FFFFFFF || (v15 = &v36[v14], v16 = v15[1], LODWORD(v11) = (((v16 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v16 & 7))) & 3), v11 = COERCE_DOUBLE(vcnt_s8(*&v11)), LOWORD(v11) = vaddlv_u8(*&v11), LODWORD(v11) >= 2))
    {
      cvCreateMemStorage_cold_1();
    }

    v18 = *v15;
    v17 = (((v16 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v16 & 7))) & 3);
    v19 = (a4 + ((v12 + v17 - 1) & -v17));
    if (*v15 >= 1)
    {
      break;
    }

LABEL_75:
    v12 = v19 - a4;
    if (++v14 == v13)
    {
      goto LABEL_13;
    }
  }

  v20 = 0;
  while (1)
  {
    v21 = a2[3];
    if ((*v21 & 7) == 2)
    {
      v11 = *(v21 + 16);
      if (v16 > 3)
      {
        if (v16 <= 5)
        {
          if (v16 != 4)
          {
            v25 = v11;
            goto LABEL_41;
          }

          v11 = rint(v11);
          v21 = v11;
LABEL_64:
          *v19++ = v21;
          goto LABEL_70;
        }

        if (v16 != 6)
        {
          if (v16 != 7)
          {
LABEL_85:
            cvReadRawDataSlice_cold_1();
          }

          v11 = rint(v11);
          v21 = v11;
          goto LABEL_55;
        }

LABEL_57:
        *v19 = v11;
        v19 += 2;
        goto LABEL_70;
      }

      if (v16 <= 1)
      {
        if (v16)
        {
          if (v16 != 1)
          {
            goto LABEL_85;
          }

          v11 = rint(v11);
          v21 = v11;
          goto LABEL_31;
        }

        v11 = rint(v11);
        v21 = v11;
LABEL_59:
        LODWORD(v21) = v21 & ~(v21 >> 31);
        v22 = v21 < 255;
        v23 = -1;
LABEL_60:
        if (!v22)
        {
          LOBYTE(v21) = v23;
        }

        *v19 = v21;
        v19 = (v19 + 1);
        goto LABEL_70;
      }

      if (v16 != 2)
      {
        v11 = rint(v11);
        v21 = v11;
LABEL_49:
        if (v21 <= -32768)
        {
          LODWORD(v21) = -32768;
        }

        v26 = 0x7FFF;
        goto LABEL_67;
      }

      v11 = rint(v11);
      v21 = v11;
    }

    else
    {
      if ((*v21 & 7) != 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v34, "The sequence element is not a numerical scalar");
        std::string::basic_string[abi:ne200100]<0>(v33, "cvReadRawDataSlice");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
        cv::Exception::Exception(v35, 4294967294, v34, v33, __p, 3377);
        cv::error(v35, v24);
      }

      LODWORD(v21) = *(v21 + 16);
      if (v16 > 3)
      {
        if (v16 <= 5)
        {
          if (v16 != 4)
          {
            v25 = v21;
LABEL_41:
            *v19++ = v25;
            goto LABEL_70;
          }

          goto LABEL_64;
        }

        if (v16 != 6)
        {
          if (v16 != 7)
          {
LABEL_84:
            cvReadRawDataSlice_cold_2();
          }

LABEL_55:
          *v19 = v21;
          v19 += 2;
          goto LABEL_70;
        }

        v11 = v21;
        goto LABEL_57;
      }

      if (v16 <= 1)
      {
        if (v16)
        {
          if (v16 != 1)
          {
            goto LABEL_84;
          }

LABEL_31:
          if (v21 <= -128)
          {
            LODWORD(v21) = -128;
          }

          v22 = v21 < 127;
          v23 = 127;
          goto LABEL_60;
        }

        goto LABEL_59;
      }

      if (v16 != 2)
      {
        goto LABEL_49;
      }
    }

    LODWORD(v21) = v21 & ~(v21 >> 31);
    v26 = 0xFFFF;
LABEL_67:
    if (v21 >= v26)
    {
      LOWORD(v21) = v26;
    }

    *v19 = v21;
    v19 = (v19 + 2);
LABEL_70:
    v27 = a2[3] + 32;
    a2[3] = v27;
    if (v27 >= a2[5])
    {
      result = cvChangeSeqBlock(a2, 1);
    }

    if (v30 - 1 == v20)
    {
      break;
    }

    if (v18 == ++v20)
    {
      v30 -= v18;
      v13 = v29;
      goto LABEL_75;
    }
  }

  if (v30 != v18 || v29 - 1 != v14)
  {
    std::string::basic_string[abi:ne200100]<0>(v34, "The sequence slice does not fit an integer number of records");
    std::string::basic_string[abi:ne200100]<0>(v33, "cvReadRawDataSlice");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v35, 4294967095, v34, v33, __p, 3391);
    cv::error(v35, v28);
  }

  if (!a2[1])
  {
    a2[3] -= 32;
  }

  return result;
}

void sub_22D215A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  cv::Exception::~Exception(&a31);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void *cvReadRawData(_DWORD *a1, uint64_t a2, uint64_t a3, char *a4)
{
  if (!a2 || !a3)
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "Null pointers to source file node or destination array");
    std::string::basic_string[abi:ne200100]<0>(v12, "cvReadRawData");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v14, 4294967269, v13, v12, __p, 3405);
    cv::error(v14, v8);
  }

  cvStartReadRawData(a1, a2, v15);
  if ((*a2 & 7) == 5)
  {
    v9 = *(*(a2 + 16) + 40);
  }

  else
  {
    v9 = 1;
  }

  return cvReadRawDataSlice(a1, v15, v9, a3, a4);
}

void sub_22D215BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

void *cvRegisterType(uint64_t a1)
{
  if (!a1 || *(a1 + 4) != 72)
  {
    std::string::basic_string[abi:ne200100]<0>(v23, "Invalid type info");
    std::string::basic_string[abi:ne200100]<0>(v22, "cvRegisterType");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v24, 4294967095, v23, v22, __p, 4851);
    cv::error(v24, v2);
  }

  if (!*(a1 + 32) || !*(a1 + 40) || !*(a1 + 48) || !*(a1 + 56))
  {
    std::string::basic_string[abi:ne200100]<0>(v23, "Some of required function pointers (is_instance, release, read or write) are NULL");
    std::string::basic_string[abi:ne200100]<0>(v22, "cvRegisterType");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v24, 4294967269, v23, v22, __p, 4857);
    cv::error(v24, v3);
  }

  v4 = *(a1 + 24);
  v5 = *v4;
  if (v5 != 95 && (v5 & 0xFFFFFFDF) - 65 >= 0x1A)
  {
    std::string::basic_string[abi:ne200100]<0>(v23, "Type name should start with a letter or _");
    std::string::basic_string[abi:ne200100]<0>(v22, "cvRegisterType");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v24, 4294967291, v23, v22, __p, 4861);
    cv::error(v24, v7);
  }

  v8 = strlen(v4);
  v9 = v8;
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *(*(a1 + 24) + v10);
      if ((v11 - 58) <= 0xF5u && ((v11 & 0xDF) - 91) <= 0xE5u)
      {
        v12 = *(*(a1 + 24) + v10);
        if (v12 != 45 && v12 != 95)
        {
          std::string::basic_string[abi:ne200100]<0>(v23, "Type name should contain only letters, digits, - and _");
          std::string::basic_string[abi:ne200100]<0>(v22, "cvRegisterType");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
          cv::Exception::Exception(v24, 4294967291, v23, v22, __p, 4870);
          cv::error(v24, v13);
        }
      }

      ++v10;
    }

    while ((v8 & 0x7FFFFFFF) != v10);
  }

  v14 = malloc_type_malloc(v8 + 73, 0x10F00408F59B1C0uLL);
  v16 = *(a1 + 32);
  v15 = *(a1 + 48);
  v17 = *(a1 + 64);
  v14[1] = *(a1 + 16);
  *v14 = *a1;
  *(v14 + 8) = v17;
  v14[2] = v16;
  v14[3] = v15;
  *(v14 + 3) = v14 + 72;
  result = memcpy(v14 + 72, *(a1 + 24), v9 + 1);
  *v14 = 0;
  v19 = CvType::first;
  *(v14 + 1) = 0;
  *(v14 + 2) = v19;
  if (v19)
  {
    v20 = (v19 + 8);
  }

  else
  {
    v20 = &CvType::last;
  }

  *v20 = v14;
  CvType::first = v14;
  return result;
}

void sub_22D216000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

BOOL icvIsSeq(_BOOL8 result)
{
  if (result)
  {
    return *(result + 2) == 17049;
  }

  return result;
}

void *icvReleaseSeq(void *result)
{
  if (!result)
  {
    std::string::basic_string[abi:ne200100]<0>(v4, "NULL double pointer");
    std::string::basic_string[abi:ne200100]<0>(v3, "icvReleaseSeq");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v5, 4294967269, v4, v3, __p, 4026);
    cv::error(v5, v1);
  }

  *result = 0;
  return result;
}

void sub_22D216160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

int *icvReadSeq(uint64_t a1, uint64_t a2)
{
  v62 = *MEMORY[0x277D85DE8];
  __endptr = 0;
  FileNodeByName = cvGetFileNodeByName(a1, a2, "flags");
  if (FileNodeByName && (*FileNodeByName & 7) == 3)
  {
    v5 = *(FileNodeByName + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = cvGetFileNodeByName(a1, a2, "count");
  if (v6)
  {
    if ((*v6 & 7) == 2)
    {
      v7 = rint(*(v6 + 16));
    }

    else if ((*v6 & 7) == 1)
    {
      LODWORD(v7) = *(v6 + 16);
    }

    else
    {
      LODWORD(v7) = 0x7FFFFFFF;
    }
  }

  else
  {
    LODWORD(v7) = -1;
  }

  v54 = v7;
  v8 = cvGetFileNodeByName(a1, a2, "dt");
  if (!v8 || (*v8 & 7) != 3 || (v9 = *(v8 + 24), !v5) || v54 == -1 || !v9)
  {
    std::string::basic_string[abi:ne200100]<0>(v57, "Some of essential sequence attributes are absent");
    std::string::basic_string[abi:ne200100]<0>(v56, "icvReadSeq");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v58, 4294967294, v57, v56, __p, 4250);
    cv::error(v58, v10);
  }

  if (*v5 - 48 > 9)
  {
    if (strstr(v5, "curve"))
    {
      v15 = 1117327360;
    }

    else
    {
      v15 = 1117323264;
    }

    if (strstr(v5, "closed"))
    {
      v15 |= 0x4000u;
    }

    if (strstr(v5, "hole"))
    {
      v14 = v15 | 0x8000;
    }

    else
    {
      v14 = v15;
    }

    if (!strstr(v5, "untyped"))
    {
      v14 |= icvDecodeSimpleFormat(v9);
    }
  }

  else
  {
    v11 = strtol(v5, &__endptr, 16);
    if (__endptr == v5 || (v11 & 0xFFFF0000) != 0x42990000)
    {
      std::string::basic_string[abi:ne200100]<0>(v57, "The sequence flags are invalid");
      std::string::basic_string[abi:ne200100]<0>(v56, "icvReadSeq");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
      cv::Exception::Exception(v58, 4294967294, v57, v56, __p, 4267);
      cv::error(v58, v12);
    }

    if ((v11 & 0xE00) == 0x200)
    {
      v13 = 1117327360;
    }

    else
    {
      v13 = 1117323264;
    }

    v14 = v11 & 0x81FF | (((v11 >> 12) & 1) << 14) | v13;
  }

  v16 = cvGetFileNodeByName(a1, a2, "header_dt");
  if (v16 && (*v16 & 7) == 3)
  {
    v17 = *(v16 + 24);
  }

  else
  {
    v17 = 0;
  }

  v18 = cvGetFileNodeByName(a1, a2, "header_user_data");
  v19 = v18 != 0;
  if ((v17 != 0) != v19)
  {
    std::string::basic_string[abi:ne200100]<0>(v57, "One of header_dt and header_user_data is there, while the other is not");
    std::string::basic_string[abi:ne200100]<0>(v56, "icvReadSeq");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v58, 4294967294, v57, v56, __p, 4301);
    cv::error(v58, v20);
  }

  v21 = cvGetFileNodeByName(a1, a2, "rect");
  v22 = cvGetFileNodeByName(a1, a2, "origin");
  v23 = v22;
  if (v21)
  {
    v24 = v19 + 1;
  }

  else
  {
    v24 = v18 != 0;
  }

  if (v22)
  {
    ++v24;
  }

  if (v24 >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(v57, "Only one of header_user_data, rect and origin tags may occur");
    std::string::basic_string[abi:ne200100]<0>(v56, "icvReadSeq");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v58, 4294967294, v57, v56, __p, 4307);
    cv::error(v58, v25);
  }

  if (v17)
  {
    v26 = icvCalcElemSize(v17, 96);
  }

  else
  {
    v27 = 96;
    if (v22)
    {
      v27 = 104;
    }

    if (v21)
    {
      v26 = 128;
    }

    else
    {
      v26 = v27;
    }
  }

  v28 = icvCalcElemSize(v9, 0);
  Seq = cvCreateSeq(v14, v26, v28, *(a1 + 24));
  v30 = Seq;
  if (v18)
  {
    cvReadRawData(a1, v18, (Seq + 24), v17);
  }

  else if (v21)
  {
    v31 = cvGetFileNodeByName(a1, v21, "x");
    if (v31)
    {
      if ((*v31 & 7) == 2)
      {
        v32 = rint(*(v31 + 16));
      }

      else if ((*v31 & 7) == 1)
      {
        LODWORD(v32) = *(v31 + 16);
      }

      else
      {
        LODWORD(v32) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v32) = 0;
    }

    v30[24] = v32;
    v35 = cvGetFileNodeByName(a1, v21, "y");
    if (v35)
    {
      if ((*v35 & 7) == 2)
      {
        v36 = rint(*(v35 + 16));
      }

      else if ((*v35 & 7) == 1)
      {
        LODWORD(v36) = *(v35 + 16);
      }

      else
      {
        LODWORD(v36) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v36) = 0;
    }

    v30[25] = v36;
    v37 = cvGetFileNodeByName(a1, v21, "width");
    if (v37)
    {
      if ((*v37 & 7) == 2)
      {
        v38 = rint(*(v37 + 16));
      }

      else if ((*v37 & 7) == 1)
      {
        LODWORD(v38) = *(v37 + 16);
      }

      else
      {
        LODWORD(v38) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v38) = 0;
    }

    v30[26] = v38;
    v39 = cvGetFileNodeByName(a1, v21, "height");
    if (v39)
    {
      if ((*v39 & 7) == 2)
      {
        v40 = rint(*(v39 + 16));
      }

      else if ((*v39 & 7) == 1)
      {
        LODWORD(v40) = *(v39 + 16);
      }

      else
      {
        LODWORD(v40) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v40) = 0;
    }

    v30[27] = v40;
    v41 = cvGetFileNodeByName(a1, a2, "color");
    if (v41)
    {
      if ((*v41 & 7) == 2)
      {
        v42 = rint(*(v41 + 16));
      }

      else if ((*v41 & 7) == 1)
      {
        LODWORD(v42) = *(v41 + 16);
      }

      else
      {
        LODWORD(v42) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v42) = 0;
    }

    v30[28] = v42;
  }

  else if (v23)
  {
    v33 = cvGetFileNodeByName(a1, v23, "x");
    if (v33)
    {
      if ((*v33 & 7) == 2)
      {
        v34 = rint(*(v33 + 16));
      }

      else if ((*v33 & 7) == 1)
      {
        LODWORD(v34) = *(v33 + 16);
      }

      else
      {
        LODWORD(v34) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v34) = 0;
    }

    v30[24] = v34;
    v43 = cvGetFileNodeByName(a1, v23, "y");
    if (v43)
    {
      if ((*v43 & 7) == 2)
      {
        v44 = rint(*(v43 + 16));
      }

      else if ((*v43 & 7) == 1)
      {
        LODWORD(v44) = *(v43 + 16);
      }

      else
      {
        LODWORD(v44) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v44) = 0;
    }

    v30[25] = v44;
  }

  cvSeqPushMulti(v30, 0, v54, 0);
  v45 = icvDecodeFormat(v9, v61);
  if (v45 < 1)
  {
    v47 = 0;
  }

  else
  {
    v46 = 0;
    v47 = 0;
    do
    {
      v47 += v61[v46];
      v46 += 2;
    }

    while (v46 < (2 * v45));
  }

  v48 = cvGetFileNodeByName(a1, a2, "data");
  if (!v48)
  {
    std::string::basic_string[abi:ne200100]<0>(v57, "The image data is not found in file storage");
    std::string::basic_string[abi:ne200100]<0>(v56, "icvReadSeq");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v58, 4294967294, v57, v56, __p, 4349);
    cv::error(v58, v49);
  }

  if ((*v48 & 7u) < 5)
  {
    v50 = (*v48 & 7) != 0;
  }

  else
  {
    v50 = *(*(v48 + 16) + 40);
  }

  if (v50 != v47 * v54)
  {
    std::string::basic_string[abi:ne200100]<0>(v57, "The number of stored elements does not match to count");
    std::string::basic_string[abi:ne200100]<0>(v56, "icvReadSeq");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v58, 4294967294, v57, v56, __p, 4352);
    cv::error(v58, v51);
  }

  cvStartReadRawData(a1, v48, v60);
  for (i = *(v30 + 11); i; i = *(i + 8))
  {
    cvReadRawDataSlice(a1, v60, *(i + 20) * v47, *(i + 24), v9);
    if (i == **(v30 + 11))
    {
      break;
    }
  }

  return v30;
}

void sub_22D216BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x22D2164CCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t icvWriteSeqTree(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v10 = cvAttrValue(&v16, "recursive");
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = v10;
  if (*v10 != 48 || (v12 = v10[1]) != 0)
  {
    if (strcmp(v10, "false") && strcmp(v11, "False"))
    {
      v12 = strcmp(v11, "FALSE") != 0;
      goto LABEL_8;
    }

LABEL_7:
    v12 = 0;
  }

LABEL_8:
  if (!a3 || *(a3 + 2) != 17049)
  {
    icvWriteSeqTree();
  }

  if ((v12 & 1) == 0)
  {
    return icvWriteSeq(a1, a2, a3, a4, a5, 0xFFFFFFFFLL);
  }

  cvStartWriteStruct(a1, a2, 6, "opencv-sequence-tree");
  cvStartWriteStruct(a1, "sequences", 5, 0);
  cvInitTreeNodeIterator(&v14, a3, 0x7FFFFFFF);
  while (v14)
  {
    icvWriteSeq(a1, 0, v14, v16, v17, v15);
    cvNextTreeNode(&v14);
  }

  cvEndWriteStruct(a1);
  return cvEndWriteStruct(a1);
}

uint64_t icvReadSeqTree(_DWORD *a1, uint64_t a2)
{
  FileNodeByName = cvGetFileNodeByName(a1, a2, "sequences");
  if (!FileNodeByName || (*FileNodeByName & 7) != 5)
  {
    std::string::basic_string[abi:ne200100]<0>(v20, "opencv-sequence-tree instance should contain a field sequences that should be a sequence");
    std::string::basic_string[abi:ne200100]<0>(v19, "icvReadSeqTree");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v21, 4294967084, v20, v19, __p, 4383);
    cv::error(v21, v4);
  }

  v5 = *(FileNodeByName + 16);
  v6 = *(v5 + 40);
  cvStartReadSeq(v5, v22, 0);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = v23;
      v13 = cvRead(a1, v23, 0);
      v14 = cvGetFileNodeByName(a1, v12, "level");
      if (!v14)
      {
LABEL_10:
        std::string::basic_string[abi:ne200100]<0>(v20, "All the sequence tree nodes should contain level field");
        std::string::basic_string[abi:ne200100]<0>(v19, "icvReadSeqTree");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
        cv::Exception::Exception(v21, 4294967084, v20, v19, __p, 4397);
        cv::error(v21, v16);
      }

      if ((*v14 & 7) == 2)
      {
        v15 = rint(*(v14 + 16));
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_10;
        }
      }

      else if ((*v14 & 7) == 1)
      {
        LODWORD(v15) = *(v14 + 16);
        if ((v15 & 0x80000000) != 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        LODWORD(v15) = 0x7FFFFFFF;
      }

      if (!v11)
      {
        v11 = v13;
      }

      if (v15 > v7)
      {
        if (v15 != v7 + 1)
        {
          icvReadSeqTree();
        }

        if (v9)
        {
          v9[4] = v13;
        }

        *(v13 + 8) = 0;
        v10 = v9;
        goto LABEL_26;
      }

      if (v15 < v7)
      {
        break;
      }

      *(v13 + 8) = v9;
      if (v9)
      {
        goto LABEL_25;
      }

LABEL_26:
      *(v13 + 24) = v10;
      v23 += *(v5 + 44);
      if (v23 >= v24)
      {
        cvChangeSeqBlock(v22, 1);
      }

      ++v8;
      v7 = v15;
      v9 = v13;
      if (v8 == v6)
      {
        return v11;
      }
    }

    do
    {
      v9 = v9[3];
      --v7;
    }

    while (v7 > v15);
    v10 = v9[3];
    *(v13 + 8) = v9;
LABEL_25:
    v9[2] = v13;
    goto LABEL_26;
  }

  return 0;
}

void sub_22D2170F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  cv::Exception::~Exception(&a28);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

_DWORD *icvIsGraph(_DWORD *result)
{
  if (result)
  {
    if (HIWORD(*result) == 17048)
    {
      return ((*result & 0x3000) == 4096);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *icvReleaseGraph(void *result)
{
  if (!result)
  {
    std::string::basic_string[abi:ne200100]<0>(v4, "NULL double pointer");
    std::string::basic_string[abi:ne200100]<0>(v3, "icvReleaseGraph");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v5, 4294967269, v4, v3, __p, 4440);
    cv::error(v5, v1);
  }

  *result = 0;
  return result;
}

void sub_22D217240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

_DWORD *icvReadGraph(uint64_t a1, uint64_t a2)
{
  v100 = *MEMORY[0x277D85DE8];
  __endptr = 0;
  FileNodeByName = cvGetFileNodeByName(a1, a2, "flags");
  if (FileNodeByName && (*FileNodeByName & 7) == 3)
  {
    v4 = *(FileNodeByName + 24);
  }

  else
  {
    v4 = 0;
  }

  v5 = cvGetFileNodeByName(a1, a2, "vertex_dt");
  if (v5 && (*v5 & 7) == 3)
  {
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
  }

  v7 = cvGetFileNodeByName(a1, a2, "edge_dt");
  if (v7 && (*v7 & 7) == 3)
  {
    v81 = *(v7 + 24);
  }

  else
  {
    v81 = 0;
  }

  v8 = cvGetFileNodeByName(a1, a2, "vertex_count");
  if (v8)
  {
    if ((*v8 & 7) == 2)
    {
      v9 = rint(*(v8 + 16));
    }

    else if ((*v8 & 7) == 1)
    {
      LODWORD(v9) = *(v8 + 16);
    }

    else
    {
      LODWORD(v9) = 0x7FFFFFFF;
    }
  }

  else
  {
    LODWORD(v9) = -1;
  }

  v88 = v9;
  v10 = cvGetFileNodeByName(a1, a2, "edge_count");
  if (v10)
  {
    if ((*v10 & 7) == 2)
    {
      v11 = rint(*(v10 + 16));
    }

    else if ((*v10 & 7) == 1)
    {
      LODWORD(v11) = *(v10 + 16);
    }

    else
    {
      LODWORD(v11) = 0x7FFFFFFF;
    }
  }

  else
  {
    LODWORD(v11) = -1;
  }

  v77 = v11;
  v80 = v6;
  if (!v4 || v88 == -1 || v11 == -1 || !v81)
  {
    std::string::basic_string[abi:ne200100]<0>(v93, "Some of essential graph attributes are absent");
    std::string::basic_string[abi:ne200100]<0>(v95, "icvReadGraph");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v97, 4294967294, v93, v95, __p, 4619);
    cv::error(v97, v12);
  }

  v13 = *v4;
  if ((v13 & 0x8000000000000000) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v13 + 60) & 0x10000) != 0)
  {
    v15 = strtol(v4, &__endptr, 16);
    if (__endptr == v4 || (v15 & 0xFFFF0000) != 0x42980000)
    {
      std::string::basic_string[abi:ne200100]<0>(v93, "The sequence flags are invalid");
      std::string::basic_string[abi:ne200100]<0>(v95, "icvReadGraph");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
      cv::Exception::Exception(v97, 4294967294, v93, v95, __p, 4632);
      cv::error(v97, v16);
    }

    v14 = (v15 & 0x1000) == 0;
  }

  else
  {
    v14 = strstr(v4, "oriented") == 0;
  }

  if (v14)
  {
    v18 = 1117261824;
  }

  else
  {
    v18 = 1117278208;
  }

  v19 = cvGetFileNodeByName(a1, a2, "header_dt");
  if (v19 && (*v19 & 7) == 3)
  {
    v20 = *(v19 + 24);
  }

  else
  {
    v20 = 0;
  }

  v21 = cvGetFileNodeByName(a1, a2, "header_user_data");
  if ((v20 != 0) != (v21 != 0))
  {
    std::string::basic_string[abi:ne200100]<0>(v93, "One of header_dt and header_user_data is there, while the other is not");
    std::string::basic_string[abi:ne200100]<0>(v95, "icvReadGraph");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v97, 4294967294, v93, v95, __p, 4647);
    cv::error(v97, v22);
  }

  if (v20)
  {
    v23 = icvCalcElemSize(v20, 120);
  }

  else
  {
    v23 = 120;
  }

  if (v80)
  {
    v79 = icvCalcElemSize(v80, 0);
    v24 = icvCalcElemSize(v80, 16);
    v25 = icvDecodeFormat(v81, v98);
    if (v25 < 1)
    {
      v76 = 0;
    }

    else
    {
      v26 = 0;
      v27 = 0;
      do
      {
        v27 += v98[v26];
        v26 += 2;
      }

      while (v26 < (2 * v25));
      v76 = v27;
    }
  }

  else
  {
    v76 = 0;
    v79 = 0;
    v24 = 16;
  }

  v28 = icvDecodeFormat(v81, v98);
  if (v28 < 2 || (v98[0] == 2 ? (v29 = v98[1] == 4) : (v29 = 0), v29 ? (v30 = v98[2] < 1) : (v30 = 1), !v30 ? (v31 = v98[3] == 5) : (v31 = 0), !v31))
  {
    std::string::basic_string[abi:ne200100]<0>(v95, "Graph edges should start with 2 integers and a float");
    std::string::basic_string[abi:ne200100]<0>(__p, "icvReadGraph");
    std::string::basic_string[abi:ne200100]<0>(v92, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v93, 4294967291, v95, __p, v92, 4673);
    cv::error(v93, v32);
  }

  if (v28 < 3)
  {
    v33 = 4;
  }

  else if ((((v99 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v99 & 7))) & 3) >= 8)
  {
    v33 = 8;
  }

  else
  {
    v33 = 4;
  }

  v34 = 0;
  v35 = 0;
  do
  {
    v35 += v98[v34];
    v34 += 2;
  }

  while (v34 < (2 * v28));
  v75 = v35;
  v36 = v81[2];
  if (v36 == 102 || v36 == 49 && v81[3] == 102)
  {
    v66 = (v36 - 48) >= 0xA;
    v37 = v81;
    if (!v66)
    {
      v37 = v81 + 1;
    }

    v38 = v37 + 3;
  }

  else
  {
    v39 = strtol(v81 + 2, &__endptr, 10);
    v38 = v97;
    sprintf(v97, "%df%s", v39 - 1, __endptr);
  }

  v84 = icvCalcElemSize(v38, 40);
  v78 = icvCalcElemSize(v81, 0);
  Graph = cvCreateGraph(v18, v23, v24, v84, *(a1 + 24));
  if (v21)
  {
    cvReadRawData(a1, v21, (Graph + 30), v20);
  }

  v40 = 3 * v79;
  if (3 * v79 <= 3 * v78)
  {
    v40 = 3 * v78;
  }

  if (v40 <= 0x10000)
  {
    v41 = 0x10000;
  }

  else
  {
    v41 = v40;
  }

  v72 = v41;
  v90 = malloc_type_malloc(v41, 0x100004077774924uLL);
  v85 = malloc_type_malloc(8 * v88, 0x2004093837F09uLL);
  v73 = cvGetFileNodeByName(a1, a2, "vertices");
  v74 = cvGetFileNodeByName(a1, a2, "edges");
  if (!v74)
  {
    std::string::basic_string[abi:ne200100]<0>(v93, "No edges data");
    std::string::basic_string[abi:ne200100]<0>(v95, "icvReadGraph");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v97, 4294967291, v93, v95, __p, 4709);
    cv::error(v97, v42);
  }

  v43 = v80;
  if (v80 && !v73)
  {
    std::string::basic_string[abi:ne200100]<0>(v93, "No vertices data");
    std::string::basic_string[abi:ne200100]<0>(v95, "icvReadGraph");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v97, 4294967291, v93, v95, __p, 4711);
    cv::error(v97, v44);
  }

  v82 = -v33;
  v83 = v33 - 1;
  v45 = 1;
  do
  {
    v46 = v45;
    v47 = (v45 & 1) == 0;
    if (v45)
    {
      v48 = v43;
    }

    else
    {
      v48 = v81;
    }

    if (v45)
    {
      v49 = v79;
    }

    else
    {
      v49 = v78;
    }

    v50 = v76;
    if (v47)
    {
      v50 = v75;
    }

    v87 = v50;
    if (v47)
    {
      v51 = v77;
    }

    else
    {
      v51 = v88;
    }

    if (v49 <= 1)
    {
      v52 = 1;
    }

    else
    {
      v52 = v49;
    }

    if (v48)
    {
      if (v46)
      {
        v53 = v73;
      }

      else
      {
        v53 = v74;
      }

      cvStartReadRawData(a1, v53, v93);
    }

    if (v51 >= 1)
    {
      v54 = 0;
      v55 = v49;
      v56 = v85;
      v57 = v90;
      v58 = v72 / v52;
      while (1)
      {
        if (v48 && !v54)
        {
          if (v51 >= v58)
          {
            v59 = v58;
          }

          else
          {
            v59 = v51;
          }

          v54 = v59 * v87;
          cvReadRawDataSlice(a1, v93, v59 * v87, v90, v48);
          v57 = v90;
        }

        if ((v46 & 1) == 0)
        {
          break;
        }

        *v97 = 0;
        cvGraphAddVtx(Graph, 0, v97);
        v60 = *v97;
        *v56 = *v97;
        if (v48)
        {
          v61 = (v60 + 16);
          v62 = v57;
          v63 = v79;
LABEL_141:
          memcpy(v61, v62, v63);
        }

LABEL_142:
        v57 = (v57 + v55);
        --v54;
        ++v56;
        if (!--v51)
        {
          goto LABEL_143;
        }
      }

      v91 = 0;
      v64 = v57[1];
      v65 = *v57;
      v66 = v65 >= v88 || v64 >= v88;
      if (v66)
      {
        std::string::basic_string[abi:ne200100]<0>(v95, "Some of stored vertex indices are out of range");
        std::string::basic_string[abi:ne200100]<0>(__p, "icvReadGraph");
        std::string::basic_string[abi:ne200100]<0>(v92, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
        cv::Exception::Exception(v97, 4294967085, v95, __p, v92, 4756);
        cv::error(v97, v67);
      }

      if (!cvGraphAddEdgeByPtr(Graph, v85[v65], v85[v64], 0, &v91))
      {
        std::string::basic_string[abi:ne200100]<0>(v95, "Duplicated edge has occured");
        std::string::basic_string[abi:ne200100]<0>(__p, "icvReadGraph");
        std::string::basic_string[abi:ne200100]<0>(v92, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
        cv::Exception::Exception(v97, 4294967291, v95, __p, v92, 4762);
        cv::error(v97, v69);
      }

      v70 = v91;
      *(v91 + 4) = v57[2];
      if (v84 < 41)
      {
        goto LABEL_142;
      }

      v61 = (v70 + 40);
      v63 = v84 - 40;
      v62 = ((v57 + v83 + 12) & v82);
      goto LABEL_141;
    }

LABEL_143:
    v45 = 0;
    v43 = v80;
  }

  while ((v46 & 1) != 0);
  cvFree_(v90);
  cvFree_(v85);
  return Graph;
}

void sub_22D217E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  cv::Exception::~Exception(&a66);
  if (a58 < 0)
  {
    operator delete(__p);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(a1);
}

void icvWriteGraph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = *MEMORY[0x277D85DE8];
  v58[0] = a4;
  v58[1] = a5;
  if (!a3 || (v5 = a3, (*a3 & 0xFFFF3000) != 0x42981000))
  {
    icvWriteGraph();
  }

  v8 = *(a3 + 104);
  v9 = *(*(a3 + 112) + 104);
  v10 = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
  cvStartReadSeq(v5, v55, 0);
  if (*(v5 + 40) >= 1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = v56;
      if ((*v56 & 0x80000000) == 0)
      {
        v10[v12] = *v56;
        *v13 = v12++;
      }

      v56 = v13 + *(v5 + 44);
      if (v56 >= v57)
      {
        cvChangeSeqBlock(v55, 1);
      }

      ++v11;
    }

    while (v11 < *(v5 + 40));
  }

  v47 = v10;
  cvStartWriteStruct(a1, a2, 6, "opencv-graph");
  if ((*v5 & 0x4000) != 0)
  {
    v14 = "oriented";
  }

  else
  {
    v14 = "";
  }

  cvWriteString(a1, "flags", v14, 1);
  cvWriteInt(a1, "vertex_count", v8);
  Format = icvGetFormat(v5, "vertex_dt", v58, 16, v62);
  if (Format)
  {
    cvWriteString(a1, "vertex_dt", Format, 0);
  }

  cvWriteInt(a1, "edge_count", v9);
  v16 = icvGetFormat(*(v5 + 112), "edge_dt", v58, 40, v63);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = "";
  }

  sprintf(v61, "2if%s", v17);
  cvWriteString(a1, "edge_dt", v61, 0);
  icvWriteHeaderData(a1, v5, v58, 120);
  v18 = *(v5 + 44);
  if (v18 >= 21846)
  {
    v19 = 3 * v18;
  }

  else
  {
    v19 = 0x10000;
  }

  v20 = 3 * *(*(v5 + 112) + 44);
  if (v20 <= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v49 = v21;
  v22 = malloc_type_malloc(v21, 0x100004077774924uLL);
  v23 = 0;
  v24 = 1;
  v48 = v5;
  v50 = Format;
  do
  {
    v25 = v24;
    if (v24)
    {
      v26 = Format;
    }

    else
    {
      v26 = v61;
    }

    if (v26)
    {
      v27 = v5;
      if ((v24 & 1) == 0)
      {
        v27 = *(v5 + 112);
      }

      v54 = *(v27 + 44);
      v28 = icvCalcElemSize(v26, 0);
      if ((v23 & 1) != 0 && icvDecodeFormat(v61, v59) >= 3)
      {
        if ((((v60 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v60 & 7))) & 3) >= 8)
        {
          v29 = 8;
        }

        else
        {
          v29 = 4;
        }
      }

      else
      {
        v29 = 4;
      }

      if (v25)
      {
        v30 = "vertices";
      }

      else
      {
        v30 = "edges";
      }

      cvStartWriteStruct(a1, v30, 13, 0);
      cvStartReadSeq(v27, v55, 0);
      v32 = a1;
      if (*(v27 + 40) >= 1)
      {
        v33 = 0;
        v34 = 0;
        v31.i32[0] = v29;
        v35 = vcnt_s8(v31);
        v35.i16[0] = vaddlv_u8(v35);
        v53 = v35.i32[0];
        v52 = (v29 - 1);
        v51 = -v29;
        v36 = v22;
        while (1)
        {
          v37 = v56;
          if ((*v56 & 0x80000000) == 0)
          {
            break;
          }

LABEL_52:
          v56 += *(v27 + 44);
          if (v56 >= v57)
          {
            cvChangeSeqBlock(v55, 1);
          }

          if (++v33 >= *(v27 + 40))
          {
            v5 = v48;
            if (v34 >= 1)
            {
              cvWriteRawData(v32, v22, v34, v26);
            }

            goto LABEL_57;
          }
        }

        if (v25)
        {
          v38 = v56 + 16;
          v39 = v36;
          v40 = v28;
          goto LABEL_48;
        }

        v36 = ((v36 + 3) & 0xFFFFFFFFFFFFFFFCLL);
        v41 = *(v56 + 4);
        *v36 = **(v56 + 3);
        v36[1] = *v41;
        v36[2] = *(v37 + 1);
        if (v54 >= 41)
        {
          if (v53 >= 2)
          {
            icvWriteGraph();
          }

          v39 = ((v36 + v52 + 12) & v51);
          v38 = v37 + 40;
          v40 = v54 - 40;
LABEL_48:
          memcpy(v39, v38, v40);
        }

        if (++v34 >= v49 / v28)
        {
          cvWriteRawData(v32, v22, v34, v26);
          v34 = 0;
          v36 = v22;
        }

        else
        {
          v36 = (v36 + v28);
        }

        goto LABEL_52;
      }

LABEL_57:
      cvEndWriteStruct(v32);
      a1 = v32;
      Format = v50;
    }

    v24 = 0;
    v23 = 1;
  }

  while ((v25 & 1) != 0);
  cvEndWriteStruct(a1);
  cvStartReadSeq(v5, v55, 0);
  v42 = *(v5 + 40);
  if (v42 >= 1)
  {
    v43 = 0;
    v44 = 0;
    do
    {
      v45 = v56;
      if ((*v56 & 0x80000000) == 0)
      {
        v46 = v47[v44++];
        *v56 = v46;
      }

      v56 = &v45[*(v5 + 44)];
      if (v56 >= v57)
      {
        cvChangeSeqBlock(v55, 1);
        v42 = *(v5 + 40);
      }

      ++v43;
    }

    while (v43 < v42);
  }

  cvFree_(v22);
  cvFree_(v47);
}

BOOL icvIsSparseMat(_BOOL8 result)
{
  if (result)
  {
    return *(result + 2) == 16964;
  }

  return result;
}

_DWORD *icvReadSparseMat(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v43 = *MEMORY[0x277D85DE8];
  FileNodeByName = cvGetFileNodeByName(v2, v3, "sizes");
  v33 = v5;
  v7 = cvGetFileNodeByName(v5, v4, "dt");
  if (!v7 || (*v7 & 7) != 3 || (v8 = *(v7 + 24), !FileNodeByName) || !v8)
  {
    std::string::basic_string[abi:ne200100]<0>(v35, "Some of essential matrix attributes are absent");
    std::string::basic_string[abi:ne200100]<0>(v37, "icvReadSparseMat");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(__src, 4294967294, v35, v37, __p, 3823);
    cv::error(__src, v9);
  }

  if ((*FileNodeByName & 7) == 5)
  {
    v10 = *(*(FileNodeByName + 16) + 40);
  }

  else if ((*FileNodeByName & 7) == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  v32 = *(v7 + 24);
  v29 = v10;
  if ((v10 - 1025) <= 0xFFFFFBFF)
  {
    std::string::basic_string[abi:ne200100]<0>(v35, "Could not determine sparse matrix dimensionality");
    std::string::basic_string[abi:ne200100]<0>(v37, "icvReadSparseMat");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(__src, 4294967084, v35, v37, __p, 3829);
    cv::error(__src, v11);
  }

  cvReadRawData(v33, FileNodeByName, v42, "i");
  v12 = icvDecodeSimpleFormat(v8);
  v13 = cvGetFileNodeByName(v33, v4, "data");
  v14 = v13;
  if (!v13 || (*v13 & 7) != 5)
  {
    std::string::basic_string[abi:ne200100]<0>(v35, "The matrix data is not found in file storage");
    std::string::basic_string[abi:ne200100]<0>(v37, "icvReadSparseMat");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(__src, 4294967294, v35, v37, __p, 3836);
    cv::error(__src, v15);
  }

  SparseMat = cvCreateSparseMat(v29, v42, v12);
  v16 = *(v14 + 16);
  cvStartReadRawData(v33, v14, v38);
  if (*(v16 + 40) >= 1)
  {
    v17 = 0;
    v18 = (v12 >> 3) & 0x1FF;
    v30 = v29 - 1;
    do
    {
      if ((*v39 & 7) != 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v37, "Sparse matrix data is corrupted");
        std::string::basic_string[abi:ne200100]<0>(__p, "icvReadSparseMat");
        std::string::basic_string[abi:ne200100]<0>(v34, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
        cv::Exception::Exception(v35, 4294967084, v37, __p, v34, 3851);
        cv::error(v35, v19);
      }

      v20 = v39[4];
      if (v17 < 1 || (v20 & 0x80000000) != 0)
      {
        if (v17 < 1)
        {
          __src[0] = v39[4];
          v21 = 1;
        }

        else
        {
          v21 = v30 + v20;
        }

        v22 = v29 - v21;
        if (v29 > v21)
        {
          v17 = v29 + v17 - v21;
          v23 = &__src[v21];
          do
          {
            v24 = (v39 + *(v16 + 44));
            v39 = v24;
            if (v24 >= v40)
            {
              cvChangeSeqBlock(v38, 1);
              v24 = v39;
            }

            if ((*v24 & 7) != 1 || (v25 = v24[4], (v25 & 0x80000000) != 0))
            {
              std::string::basic_string[abi:ne200100]<0>(v37, "Sparse matrix data is corrupted");
              std::string::basic_string[abi:ne200100]<0>(__p, "icvReadSparseMat");
              std::string::basic_string[abi:ne200100]<0>(v34, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
              cv::Exception::Exception(v35, 4294967084, v37, __p, v34, 3867);
              cv::error(v35, v26);
            }

            *v23++ = v25;
            --v22;
          }

          while (v22);
        }
      }

      else
      {
        __src[v30] = v20;
      }

      v39 = (v39 + *(v16 + 44));
      if (v39 >= v40)
      {
        cvChangeSeqBlock(v38, 1);
      }

      v27 = cvPtrND(SparseMat, __src, 0, 1, 0);
      cvReadRawDataSlice(v33, v38, v18 + 1, v27, v32);
      v17 += v18 + 2;
    }

    while (v17 < *(v16 + 40));
  }

  return SparseMat;
}

void sub_22D218AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  cv::Exception::~Exception(&a59);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void icvWriteSparseMat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (!a3 || *(a3 + 2) != 16964)
  {
    icvWriteSparseMat();
  }

  MemStorage = cvCreateMemStorage(0);
  cvStartWriteStruct(a1, a2, 6, "opencv-sparse-matrix");
  Dims = cvGetDims(a3, 0);
  cvStartWriteStruct(a1, "sizes", 13, 0);
  cvWriteRawData(a1, a3 + 52, Dims, "i");
  cvEndWriteStruct(a1);
  v6 = icvEncodeFormat(*a3 & 0xFFF, v30);
  cvWriteString(a1, "dt", v6, 0);
  cvStartWriteStruct(a1, "data", 13, 0);
  Seq = cvCreateSeq(7u, 0x60uLL, 8uLL, MemStorage);
  inited = cvInitSparseMatIterator(a3, &v26);
  if (inited)
  {
    while (1)
    {
      __src[0] = inited + *(a3 + 48);
      cvSeqPush(Seq, __src);
      inited = *(v27 + 8);
      if (!inited)
      {
        v9 = v28++;
        v10 = *(v26 + 40);
        if (v28 >= v10)
        {
          break;
        }

        v11 = v9 + 1;
        v12 = ~v9 + v10;
        while (1)
        {
          inited = *(*(v26 + 32) + 8 * v11);
          if (inited)
          {
            break;
          }

          ++v11;
          if (!--v12)
          {
            goto LABEL_12;
          }
        }

        v28 = v11;
      }

      v27 = inited;
    }
  }

LABEL_12:
  cvSeqSort(Seq, icvSortIdxCmpFunc, &Dims);
  cvStartReadSeq(Seq, __src, 0);
  if (Seq[10] >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      if (*(__src[1] + 44) != 8)
      {
        icvWriteSparseMat();
      }

      v15 = *v24++;
      if (v24 >= v25)
      {
        cvChangeSeqBlock(__src, 1);
      }

      v16 = Dims;
      if (v13)
      {
        if (*v15 == *v14)
        {
          v17 = 0;
          v18 = v14 + 1;
          do
          {
            if ((Dims & ~(Dims >> 31)) == v17)
            {
              icvWriteSparseMat();
            }

            LODWORD(v19) = v17 + 1;
            v20 = v15[v17 + 1];
            v21 = v18[v17++];
          }

          while (v20 == v21);
        }

        else
        {
          LODWORD(v19) = 0;
        }

        if (v19 < Dims - 1)
        {
          (*(a1 + 312))(a1, 0, (v19 - Dims + 1));
          v16 = Dims;
        }
      }

      else
      {
        LODWORD(v19) = 0;
      }

      if (v19 < v16)
      {
        v19 = v19;
        do
        {
          (*(a1 + 312))(a1, 0, v15[v19++]);
        }

        while (Dims > v19);
      }

      cvWriteRawData(a1, v15 + *(a3 + 44) - *(a3 + 48), 1, v30);
      ++v13;
      v14 = v15;
    }

    while (v13 < Seq[10]);
  }

  cvEndWriteStruct(a1);
  cvEndWriteStruct(a1);
  cvReleaseMemStorage(&MemStorage);
}

_DWORD *icvIsImage(_DWORD *result)
{
  if (result)
  {
    return (*result == 144);
  }

  return result;
}

int *icvReadImage(_DWORD *a1, uint64_t a2)
{
  FileNodeByName = cvGetFileNodeByName(a1, a2, "width");
  if (FileNodeByName)
  {
    if ((*FileNodeByName & 7) == 2)
    {
      v5 = rint(*(FileNodeByName + 16));
    }

    else if ((*FileNodeByName & 7) == 1)
    {
      LODWORD(v5) = *(FileNodeByName + 16);
    }

    else
    {
      LODWORD(v5) = 0x7FFFFFFF;
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  v6 = cvGetFileNodeByName(a1, a2, "height");
  if (v6)
  {
    if ((*v6 & 7) == 2)
    {
      v7 = rint(*(v6 + 16));
    }

    else if ((*v6 & 7) == 1)
    {
      v7 = *(v6 + 16);
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = cvGetFileNodeByName(a1, a2, "dt");
  if (v8 && (*v8 & 7) == 3)
  {
    v9 = *(v8 + 24);
  }

  else
  {
    v9 = 0;
  }

  v10 = cvGetFileNodeByName(a1, a2, "origin");
  if (!v10 || (*v10 & 7) != 3 || !v5 || !v7 || !v9 || !*(v10 + 24))
  {
    std::string::basic_string[abi:ne200100]<0>(v50, "Some of essential image attributes are absent");
    std::string::basic_string[abi:ne200100]<0>(v49, "icvReadImage");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v51, 4294967294, v50, v49, __p, 3963);
    cv::error(v51, v11);
  }

  v12 = icvDecodeSimpleFormat(v9);
  v13 = cvGetFileNodeByName(a1, a2, "layout");
  if (v13)
  {
    v14 = *(v13 + 24);
  }

  else
  {
    v14 = "interleaved";
  }

  if (strcmp(v14, "interleaved"))
  {
    std::string::basic_string[abi:ne200100]<0>(v50, "Only interleaved images can be read");
    std::string::basic_string[abi:ne200100]<0>(v49, "icvReadImage");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v51, 4294967294, v50, v49, __p, 3968);
    cv::error(v51, v15);
  }

  v16 = cvGetFileNodeByName(a1, a2, "data");
  if (!v16)
  {
    std::string::basic_string[abi:ne200100]<0>(v50, "The image data is not found in file storage");
    std::string::basic_string[abi:ne200100]<0>(v49, "icvReadImage");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v51, 4294967294, v50, v49, __p, 3972);
    cv::error(v51, v17);
  }

  if ((*v16 & 7u) < 5)
  {
    v18 = (*v16 & 7) != 0;
  }

  else
  {
    v18 = *(*(v16 + 16) + 40);
  }

  v19 = v7 * v5;
  v20 = ((v12 >> 3) & 0x1FF) + 1;
  if (v18 != v20 * v7 * v5)
  {
    std::string::basic_string[abi:ne200100]<0>(v50, "The matrix size does not match to the number of stored elements");
    std::string::basic_string[abi:ne200100]<0>(v49, "icvReadImage");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v51, 4294967087, v50, v49, __p, 3976);
    cv::error(v51, v21);
  }

  if ((v12 & 7) == 4 || (v12 & 5) == 1)
  {
    v23 = 0x80000000;
  }

  else
  {
    v23 = 0;
  }

  Image = cvCreateImage(v5 | (v7 << 32), (0x442211088uLL >> (4 * (v12 & 7))) & 0x78 | v23, ((v12 >> 3) & 0x1FF) + 1);
  v25 = cvGetFileNodeByName(a1, a2, "roi");
  if (v25)
  {
    v26 = v25;
    v27 = cvGetFileNodeByName(a1, v25, "x");
    v47 = v5;
    if (v27)
    {
      if ((*v27 & 7) == 2)
      {
        v28 = rint(*(v27 + 16));
      }

      else if ((*v27 & 7) == 1)
      {
        LODWORD(v28) = *(v27 + 16);
      }

      else
      {
        LODWORD(v28) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v28) = 0;
    }

    v29 = v28;
    v30 = cvGetFileNodeByName(a1, v26, "y");
    v46 = v7;
    if (v30)
    {
      if ((*v30 & 7) == 2)
      {
        v31 = rint(*(v30 + 16));
      }

      else if ((*v30 & 7) == 1)
      {
        v31 = *(v30 + 16);
      }

      else
      {
        v31 = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v31 = 0;
    }

    v32 = cvGetFileNodeByName(a1, v26, "width");
    if (v32)
    {
      if ((*v32 & 7) == 2)
      {
        v33 = rint(*(v32 + 16));
      }

      else if ((*v32 & 7) == 1)
      {
        LODWORD(v33) = *(v32 + 16);
      }

      else
      {
        LODWORD(v33) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v33) = 0;
    }

    v5 = v29 | (v31 << 32);
    v34 = v33;
    v35 = cvGetFileNodeByName(a1, v26, "height");
    if (v35)
    {
      if ((*v35 & 7) == 2)
      {
        v36 = rint(*(v35 + 16));
      }

      else if ((*v35 & 7) == 1)
      {
        v36 = *(v35 + 16);
      }

      else
      {
        v36 = 0x7FFFFFFFLL;
      }
    }

    else
    {
      v36 = 0;
    }

    v7 = v34 | (v36 << 32);
    v37 = cvGetFileNodeByName(a1, v26, "coi");
    if (v37)
    {
      if ((*v37 & 7) == 2)
      {
        v38 = rint(*(v37 + 16));
      }

      else if ((*v37 & 7) == 1)
      {
        LODWORD(v38) = *(v37 + 16);
      }

      else
      {
        LODWORD(v38) = 0x7FFFFFFF;
      }
    }

    else
    {
      LODWORD(v38) = 0;
    }

    cvSetImageROI(Image, v5, v7);
    cvSetImageCOI(Image, v38);
    LODWORD(v7) = v46;
    LODWORD(v5) = v47;
  }

  v39 = (v20 << ((0xFA50u >> (2 * (v12 & 7))) & 3)) * v5;
  v40 = Image[24];
  if (v39 == v40)
  {
    v41 = v19;
  }

  else
  {
    v41 = v5;
  }

  if (v39 == v40)
  {
    v42 = 1;
  }

  else
  {
    v42 = v7;
  }

  cvStartReadRawData(a1, v16, v52);
  if (v42 >= 1)
  {
    v43 = 0;
    v44 = v41 * v20;
    do
    {
      cvReadRawDataSlice(a1, v52, v44, *(Image + 11) + Image[24] * v43++, v9);
    }

    while (v42 != v43);
  }

  return Image;
}

void sub_22D2195D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  cv::Exception::~Exception(&a30);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

uint64_t icvWriteImage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!a3 || *a3 != 144 || !*(a3 + 88))
  {
    icvWriteImage();
  }

  if (*(a3 + 28) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v21, "Images with planar data layout are not supported");
    std::string::basic_string[abi:ne200100]<0>(v20, "icvWriteImage");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v22, 4294967086, v21, v20, __p, 3904);
    cv::error(v22, v5);
  }

  cvStartWriteStruct(a1, a2, 6, "opencv-image");
  cvWriteInt(a1, "width", *(a3 + 40));
  cvWriteInt(a1, "height", *(a3 + 44));
  if (*(a3 + 32))
  {
    v6 = "bottom-left";
  }

  else
  {
    v6 = "top-left";
  }

  cvWriteString(a1, "origin", v6, 0);
  if (*(a3 + 28) == 1)
  {
    v7 = "planar";
  }

  else
  {
    v7 = "interleaved";
  }

  cvWriteString(a1, "layout", v7, 0);
  if (*(a3 + 48))
  {
    cvStartWriteStruct(a1, "roi", 14, 0);
    cvWriteInt(a1, "x", *(*(a3 + 48) + 4));
    cvWriteInt(a1, "y", *(*(a3 + 48) + 8));
    cvWriteInt(a1, "width", *(*(a3 + 48) + 12));
    cvWriteInt(a1, "height", *(*(a3 + 48) + 16));
    cvWriteInt(a1, "coi", **(a3 + 48));
    cvEndWriteStruct(a1);
  }

  v8 = (0x43160520u >> (((*(a3 + 16) >> 2) & 0x3C) + ((*(a3 + 16) >> 31) & 0x14))) & 7;
  v9 = &v23;
  sprintf(&v23, "%d%c", *(a3 + 8), icvTypeSymbol[v8]);
  if (v24[1])
  {
    v10 = 0;
  }

  else
  {
    v10 = v23 == 49;
  }

  if (v10)
  {
    v9 = v24;
  }

  cvWriteString(a1, "dt", v9, 0);
  v11 = *(a3 + 40);
  v12 = (*(a3 + 8) * v11) << ((0xFA50u >> (2 * v8)) & 3);
  v13 = *(a3 + 96);
  if (v12 == v13)
  {
    v14 = *(a3 + 44);
  }

  else
  {
    v14 = 1;
  }

  if (v12 == v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = *(a3 + 44);
  }

  cvStartWriteStruct(a1, "data", 13, 0);
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = v14 * v11;
    do
    {
      cvWriteRawData(a1, *(a3 + 88) + *(a3 + 96) * v16++, v17, v9);
    }

    while (v15 != v16);
  }

  cvEndWriteStruct(a1);
  return cvEndWriteStruct(a1);
}

void sub_22D2199E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  cv::Exception::~Exception(&a30);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

BOOL icvIsMat(_BOOL8 result)
{
  if (result)
  {
    return *(result + 2) == 16962 && (*(result + 36) & 0x80000000) == 0 && *(result + 32) >= 0;
  }

  return result;
}

int *icvReadMat(_DWORD *a1, uint64_t a2)
{
  FileNodeByName = cvGetFileNodeByName(a1, a2, "rows");
  if (FileNodeByName)
  {
    if ((*FileNodeByName & 7) == 2)
    {
      v5 = rint(*(FileNodeByName + 16));
    }

    else if ((*FileNodeByName & 7) == 1)
    {
      LODWORD(v5) = *(FileNodeByName + 16);
    }

    else
    {
      LODWORD(v5) = 0x7FFFFFFF;
    }
  }

  else
  {
    LODWORD(v5) = -1;
  }

  v6 = cvGetFileNodeByName(a1, a2, "cols");
  if (v6)
  {
    if ((*v6 & 7) == 2)
    {
      v7 = rint(*(v6 + 16));
    }

    else if ((*v6 & 7) == 1)
    {
      LODWORD(v7) = *(v6 + 16);
    }

    else
    {
      LODWORD(v7) = 0x7FFFFFFF;
    }
  }

  else
  {
    LODWORD(v7) = -1;
  }

  v8 = cvGetFileNodeByName(a1, a2, "dt");
  if (!v8 || (*v8 & 7) != 3 || (v9 = *(v8 + 24), (v5 & 0x80000000) != 0) || (v7 & 0x80000000) != 0 || !v9)
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "Some of essential matrix attributes are absent");
    std::string::basic_string[abi:ne200100]<0>(v21, "icvReadMat");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v23, 4294967294, v22, v21, __p, 3585);
    cv::error(v23, v10);
  }

  v11 = icvDecodeSimpleFormat(v9);
  v12 = cvGetFileNodeByName(a1, a2, "data");
  if (!v12)
  {
    std::string::basic_string[abi:ne200100]<0>(v22, "The matrix data is not found in file storage");
    std::string::basic_string[abi:ne200100]<0>(v21, "icvReadMat");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v23, 4294967294, v22, v21, __p, 3591);
    cv::error(v23, v13);
  }

  if ((*v12 & 7u) < 5)
  {
    v14 = (*v12 & 7) != 0;
  }

  else
  {
    v14 = *(*(v12 + 16) + 40);
  }

  if (v14 < 1)
  {
    if (v5 | v7)
    {
      v17 = v5;
      v18 = v7;
    }

    else
    {
      v17 = 0;
      v18 = 1;
    }

    return cvCreateMatHeader(v17, v18, v11);
  }

  else
  {
    if (v14 != v7 * v5 + v7 * v5 * ((v11 >> 3) & 0x1FF))
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "The matrix size does not match to the number of stored elements");
      std::string::basic_string[abi:ne200100]<0>(v21, "icvReadMat");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
      cv::Exception::Exception(v23, 4294967087, v22, v21, __p, 3596);
      cv::error(v23, v15);
    }

    Mat = cvCreateMat(v5, v7, v11);
    cvReadRawData(a1, v12, *(Mat + 3), v9);
  }

  return Mat;
}

void sub_22D219E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

uint64_t icvWriteMat(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a3 || *(a3 + 2) != 16962 || (*(a3 + 36) & 0x80000000) != 0 || (*(a3 + 32) & 0x80000000) != 0)
  {
    icvWriteMat();
  }

  cvStartWriteStruct(a1, a2, 6, "opencv-matrix");
  cvWriteInt(a1, "rows", *(a3 + 32));
  cvWriteInt(a1, "cols", *(a3 + 36));
  v5 = icvEncodeFormat(*a3 & 0xFFF, v13);
  cvWriteString(a1, "dt", v5, 0);
  cvStartWriteStruct(a1, "data", 13, 0);
  Size = cvGetSize(a3);
  if (Size >= 1)
  {
    v7 = HIDWORD(Size);
    if (SHIDWORD(Size) >= 1)
    {
      if (*(a3 + 24))
      {
        v8 = 0;
        v9 = *a3;
        if ((*a3 & 0x4000) != 0)
        {
          v10 = HIDWORD(Size);
        }

        else
        {
          v10 = 1;
        }

        v11 = v10 * Size;
        do
        {
          cvWriteRawData(a1, *(a3 + 24) + v8 * *(a3 + 4), v11, v13);
          if ((v9 & 0x4000) != 0)
          {
            break;
          }

          ++v8;
        }

        while (v8 < v7);
      }
    }
  }

  cvEndWriteStruct(a1);
  return cvEndWriteStruct(a1);
}

BOOL icvIsMatND(_BOOL8 result)
{
  if (result)
  {
    return *(result + 2) == 16963;
  }

  return result;
}

uint64_t icvReadMatND(_DWORD *a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  FileNodeByName = cvGetFileNodeByName(a1, a2, "sizes");
  v5 = cvGetFileNodeByName(a1, a2, "dt");
  if (!v5 || (*v5 & 7) != 3 || (v6 = *(v5 + 24), !FileNodeByName) || !v6)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "Some of essential matrix attributes are absent");
    std::string::basic_string[abi:ne200100]<0>(v23, "icvReadMatND");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v25, 4294967294, v24, v23, __p, 3670);
    cv::error(v25, v7);
  }

  if ((*FileNodeByName & 7) == 5)
  {
    v8 = *(*(FileNodeByName + 16) + 40);
  }

  else if ((*FileNodeByName & 7) == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  if ((v8 - 33) <= 0xFFFFFFDF)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "Could not determine the matrix dimensionality");
    std::string::basic_string[abi:ne200100]<0>(v23, "icvReadMatND");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v25, 4294967084, v24, v23, __p, 3676);
    cv::error(v25, v9);
  }

  cvReadRawData(a1, FileNodeByName, v26, "i");
  v10 = icvDecodeSimpleFormat(v6);
  v11 = cvGetFileNodeByName(a1, a2, "data");
  if (!v11)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "The matrix data is not found in file storage");
    std::string::basic_string[abi:ne200100]<0>(v23, "icvReadMatND");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v25, 4294967294, v24, v23, __p, 3683);
    cv::error(v25, v12);
  }

  v13 = ((v10 >> 3) & 0x1FF) + 1;
  if (v8 >= 1)
  {
    v14 = v8;
    v15 = v26;
    do
    {
      v16 = *v15++;
      v13 *= v16;
      --v14;
    }

    while (v14);
  }

  if ((*v11 & 7u) < 5)
  {
    v17 = (*v11 & 7) != 0;
  }

  else
  {
    v17 = *(*(v11 + 16) + 40);
  }

  if (v17 >= 1 && v17 != v13)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "The matrix size does not match to the number of stored elements");
    std::string::basic_string[abi:ne200100]<0>(v23, "icvReadMatND");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v25, 4294967087, v24, v23, __p, 3694);
    cv::error(v25, v20);
  }

  if (v17 < 1)
  {
    return cvCreateMatNDHeader(v8, v26, v10);
  }

  MatND = cvCreateMatND(v8, v26, v10);
  cvReadRawData(a1, v11, *(MatND + 3), v6);
  return MatND;
}

void sub_22D21A414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  cv::Exception::~Exception(&a28);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t icvWriteMatND(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = a3;
  if (!a3 || *(a3 + 2) != 16963)
  {
    icvWriteMatND();
  }

  cvStartWriteStruct(a1, a2, 6, "opencv-nd-matrix");
  Dims = cvGetDims(a3, __dst);
  cvStartWriteStruct(a1, "sizes", 13, 0);
  cvWriteRawData(a1, __dst, Dims, "i");
  cvEndWriteStruct(a1);
  ElemType = cvGetElemType(a3);
  v7 = icvEncodeFormat(ElemType, v13);
  cvWriteString(a1, "dt", v7, 0);
  cvStartWriteStruct(a1, "data", 13, 0);
  if (*(a3 + 32) >= 1 && *(a3 + 24))
  {
    cvInitNArrayIterator(1u, &v12, 0, v11, v9, 0);
    do
    {
      cvWriteRawData(a1, *v10, v9[2], v13);
    }

    while (cvNextNArraySlice(v9));
  }

  cvEndWriteStruct(a1);
  return cvEndWriteStruct(a1);
}

uint64_t cvRead(_DWORD *a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    v4 = 4294967269;
LABEL_5:
    std::string::basic_string[abi:ne200100]<0>(v11, "Invalid pointer to file storage");
    std::string::basic_string[abi:ne200100]<0>(v10, "cvRead");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v12, v4, v11, v10, __p, 5000);
    cv::error(v12, v5);
  }

  if (*a1 != 1280131417)
  {
    v4 = 4294967291;
    goto LABEL_5;
  }

  if (!a2)
  {
    return 0;
  }

  if ((*a2 & 0x10) == 0 || (v6 = *(a2 + 8)) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v11, "The node does not represent a user object (unknown type?)");
    std::string::basic_string[abi:ne200100]<0>(v10, "cvRead");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v12, 4294967294, v11, v10, __p, 5006);
    cv::error(v12, v7);
  }

  result = (*(v6 + 48))(a1, a2);
  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void sub_22D21A7CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

uint64_t icvFSFlush(uint64_t a1)
{
  v3 = *(a1 + 120);
  v2 = *(a1 + 128);
  v4 = *(a1 + 88);
  if (v3 > v2 + v4)
  {
    *v3 = 10;
    icvPuts(a1, *(a1 + 128));
    v2 = *(a1 + 128);
    LODWORD(v4) = *(a1 + 88);
  }

  v5 = *(a1 + 64);
  if (v5 == v4)
  {
    v5 = v4;
  }

  else
  {
    if (v5 > v4)
    {
      memset((v2 + v4), 32, v5 - v4);
      v2 = *(a1 + 128);
    }

    *(a1 + 88) = v5;
  }

  result = v2 + v5;
  *(a1 + 120) = result;
  return result;
}

void *std::deque<char>::push_back(void *result, _BYTE *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 9) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    result = std::deque<char>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5] + v3[4];
  }

  *(*(v5 + ((v7 >> 9) & 0x7FFFFFFFFFFFF8)) + (v7 & 0xFFF)) = *a2;
  ++v3[5];
  return result;
}

void *std::deque<char>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1000;
  v3 = v1 - 4096;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned char *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<char *>::emplace_back<char *&>(a1, &v10);
}

void sub_22D21AAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<char *>::emplace_back<char *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned char *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<char *>::emplace_front<char *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned char *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<char *>::emplace_back<char *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned char *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<char *>::emplace_front<char *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned char *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

size_t icvXMLWriteTag(uint64_t a1, const char *a2, int a3, void **a4, uint64_t a5)
{
  v9 = *(a1 + 120);
  v10 = *(a1 + 68);
  if (a2)
  {
    if (*a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if (a3 == 1)
  {
    if ((*(a1 + 68) & 7u) < 5)
    {
      if (v11)
      {
        v10 = 38;
      }

      else
      {
        v10 = 37;
      }

      *(a1 + 12) = 0;
    }

    else if (((*(a1 + 68) & 7) == 6) != (v11 != 0))
    {
      std::string::basic_string[abi:ne200100]<0>(v56, "An attempt to add element without a key to a map, or add element with key to sequence");
      std::string::basic_string[abi:ne200100]<0>(v55, "icvXMLWriteTag");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
      cv::Exception::Exception(v57, 4294967291, v56, v55, __p, 2316);
      cv::error(v57, v12);
    }

    if ((v10 & 0x20) == 0)
    {
      v9 = icvFSFlush(a1);
    }
  }

  if (v11)
  {
    if (*v11 == 95 && !v11[1])
    {
      std::string::basic_string[abi:ne200100]<0>(v56, "A single _ is a reserved tag name");
      std::string::basic_string[abi:ne200100]<0>(v55, "icvXMLWriteTag");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
      cv::Exception::Exception(v57, 4294967291, v56, v55, __p, 2331);
      cv::error(v57, v13);
    }
  }

  else
  {
    v11 = "_";
  }

  result = strlen(v11);
  v15 = result;
  *v9 = 60;
  v16 = v9 + 1;
  if (a3 == 2)
  {
    if (a4)
    {
      std::string::basic_string[abi:ne200100]<0>(v56, "Closing tag should not include any attributes");
      std::string::basic_string[abi:ne200100]<0>(v55, "icvXMLWriteTag");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
      cv::Exception::Exception(v57, 4294967291, v56, v55, __p, 2338);
      cv::error(v57, v17);
    }

    v16 = v9 + 2;
    v9[1] = 47;
  }

  v18 = *v11;
  if (v18 != 95 && (v18 & 0xFFFFFFDF) - 65 >= 0x1A)
  {
    std::string::basic_string[abi:ne200100]<0>(v56, "Key should start with a letter or _");
    std::string::basic_string[abi:ne200100]<0>(v55, "icvXMLWriteTag");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v57, 4294967291, v56, v55, __p, 2343);
    cv::error(v57, v20);
  }

  v21 = *(a1 + 136);
  v52 = v10;
  v22 = a5;
  if (&v16[result] >= v21)
  {
    v23 = *(a1 + 128);
    v24 = v16 - v23;
    v25 = (3 * (v21 - v23) + ((3 * (v21 - v23)) >> 63)) >> 1;
    v26 = v16 - v23 + result;
    if (v26 <= v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = v26;
    }

    result = malloc_type_malloc(v27 + 256, 0x100004077774924uLL);
    v28 = result;
    v29 = *(a1 + 128);
    *(a1 + 120) = result + *(a1 + 120) - v29;
    if (v24 >= 1)
    {
      result = memcpy(result, v29, v24 & 0x7FFFFFFF);
    }

    *(a1 + 128) = v28;
    *(a1 + 136) = &v28[v27];
    v16 = &v28[v24];
  }

  if (v15 >= 1)
  {
    v30 = v15 & 0x7FFFFFFF;
    v31 = v16;
    do
    {
      v33 = *v11++;
      v32 = v33;
      if ((v33 - 58) <= 0xF5u && ((v32 & 0xDF) - 91) <= 0xE5u && v32 != 45 && v32 != 95)
      {
        std::string::basic_string[abi:ne200100]<0>(v56, "Key name may only contain alphanumeric characters [a-zA-Z0-9], '-' and '_'");
        std::string::basic_string[abi:ne200100]<0>(v55, "icvXMLWriteTag");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
        cv::Exception::Exception(v57, 4294967291, v56, v55, __p, 2350);
        cv::error(v57, v34);
      }

      *v31++ = v32;
      --v30;
    }

    while (v30);
  }

  v35 = &v16[v15];
  while (1)
  {
    v53 = v22;
    if (a4)
    {
      result = *a4;
      if (*a4)
      {
        v36 = a4 + 1;
        do
        {
          v37 = strlen(result);
          v38 = strlen(*v36);
          v39 = v37 + v38 + 4;
          v40 = *(a1 + 136);
          if (&v35[v39] >= v40)
          {
            v41 = *(a1 + 128);
            v42 = v35 - v41;
            v43 = (3 * (v40 - v41) + ((3 * (v40 - v41)) >> 63)) >> 1;
            v44 = v39 + v35 - v41;
            if (v44 <= v43)
            {
              v45 = v43;
            }

            else
            {
              v45 = v44;
            }

            v46 = malloc_type_malloc(v45 + 256, 0x100004077774924uLL);
            v47 = v46;
            v48 = *(a1 + 128);
            *(a1 + 120) = &v46[*(a1 + 120) - v48];
            if (v42 >= 1)
            {
              memcpy(v46, v48, v42 & 0x7FFFFFFF);
            }

            *(a1 + 128) = v47;
            *(a1 + 136) = &v47[v45];
            v35 = &v47[v42];
          }

          *v35 = 32;
          v49 = v35 + 1;
          memcpy(v49, *(v36 - 1), v37);
          v50 = &v49[v37];
          *v50 = 8765;
          v50 += 2;
          memcpy(v50, *v36, v38);
          v51 = &v50[v38];
          *v51 = 34;
          v35 = v51 + 1;
          result = v36[1];
          v36 += 2;
        }

        while (result);
      }
    }

    if (!v53)
    {
      break;
    }

    a4 = *v53;
    v22 = *(v53 + 8);
  }

  *v35 = 62;
  *(a1 + 120) = v35 + 1;
  *(a1 + 68) = v52 & 0xFFFFFFDF;
  return result;
}

void sub_22D21B550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  cv::Exception::~Exception(&a30);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

uint64_t icvDecodeSimpleFormat(const char *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (icvDecodeFormat(a1, &v8) != 1 || v8 >= 5)
  {
    std::string::basic_string[abi:ne200100]<0>(v6, "Too complex format for the matrix");
    std::string::basic_string[abi:ne200100]<0>(v5, "icvDecodeSimpleFormat");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
    cv::Exception::Exception(v7, 4294967294, v6, v5, __p, 3115);
    cv::error(v7, v2);
  }

  return (v9 & 7 | (8 * v8)) - 8;
}

void sub_22D21B6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  cv::Exception::~Exception(&a28);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t icvCalcElemSize(const char *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = icvDecodeFormat(a1, &v12);
  result = a2;
  if (v3 >= 1)
  {
    v6 = 0;
    v7 = (2 * v3);
    v8 = &v13;
    LODWORD(result) = a2;
    do
    {
      if (result == 0x7FFFFFFF || (v4.i32[0] = (((*v8 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*v8 & 7))) & 3), v4 = vcnt_s8(v4), v4.i16[0] = vaddlv_u8(v4), v4.i32[0] >= 2u))
      {
        cvCreateMemStorage_cold_1();
      }

      v9 = (((*v8 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*v8 & 7))) & 3);
      result = ((result + v9 - 1) & -v9) + *(v8 - 1) * v9;
      v6 += 2;
      v8 += 2;
    }

    while (v6 < v7);
  }

  if (!a2)
  {
    if (result == 0x7FFFFFFF || (v4.i32[0] = (((v13 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v13 & 7))) & 3), v11 = vcnt_s8(v4), v11.i16[0] = vaddlv_u8(v11), v11.i32[0] >= 2u))
    {
      cvCreateMemStorage_cold_1();
    }

    v10 = (((v13 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v13 & 7))) & 3);
    return (result + v10 - 1) & -v10;
  }

  return result;
}

uint64_t icvWriteSeq(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  if (!a3 || *(a3 + 1) != 17049)
  {
    icvWriteSeq();
  }

  cvStartWriteStruct(a1, a2, 6, "opencv-sequence");
  if ((a6 & 0x80000000) == 0)
  {
    cvWriteInt(a1, "level", a6);
  }

  Format = icvGetFormat(a3, "dt", v14, 0, v15);
  __s[0] = 0;
  v10 = *a3;
  if ((*a3 & 0x4000) != 0)
  {
    *&__s[strlen(__s)] = 0x6465736F6C6320;
  }

  if ((v10 & 0x8000) != 0)
  {
    strcat(__s, " hole");
  }

  if ((v10 & 0x3000) == 0x1000)
  {
    strcat(__s, " curve");
  }

  if ((v10 & 0xFFF) == 0 && a3[11] != 1)
  {
    strcat(__s, " untyped");
  }

  if (__s[0])
  {
    v11 = &__s[1];
  }

  else
  {
    v11 = __s;
  }

  cvWriteString(a1, "flags", v11, 1);
  cvWriteInt(a1, "count", a3[10]);
  cvWriteString(a1, "dt", Format, 0);
  icvWriteHeaderData(a1, a3, v14, 96);
  cvStartWriteStruct(a1, "data", 13, 0);
  for (i = *(a3 + 11); i; i = *(i + 8))
  {
    cvWriteRawData(a1, *(i + 24), *(i + 20), Format);
    if (i == **(a3 + 11))
    {
      break;
    }
  }

  cvEndWriteStruct(a1);
  return cvEndWriteStruct(a1);
}

char *icvGetFormat(_DWORD *a1, char *a2, const char *a3, uint64_t a4, char *a5)
{
  v8 = cvAttrValue(a3, a2);
  if (v8)
  {
    v9 = v8;
    if (icvCalcElemSize(v8, a4) != a1[11])
    {
      std::string::basic_string[abi:ne200100]<0>(v18, "The size of element calculated from dt and the elem_size do not match");
      std::string::basic_string[abi:ne200100]<0>(v17, "icvGetFormat");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
      cv::Exception::Exception(v19, 4294967087, v18, v17, __p, 4116);
      cv::error(v19, v10);
    }
  }

  else
  {
    v11 = a1[11];
    if ((*a1 & 0xFFF) != 0 || v11 == 1)
    {
      if ((((*a1 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*a1 & 7))) & 3) != v11)
      {
        std::string::basic_string[abi:ne200100]<0>(v18, "Size of sequence element (elem_size) is inconsistent with seq->flags");
        std::string::basic_string[abi:ne200100]<0>(v17, "icvGetFormat");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
        cv::Exception::Exception(v19, 4294967087, v18, v17, __p, 4122);
        cv::error(v19, v12);
      }

      return icvEncodeFormat(*a1 & 0xFFF, a5);
    }

    else
    {
      v14 = __OFSUB__(v11, a4);
      v15 = v11 - a4;
      if ((v15 < 0) ^ v14 | (v15 == 0))
      {
        return 0;
      }

      else
      {
        if ((v15 & 3) != 0)
        {
          sprintf(a5, "%uu");
        }

        else
        {
          sprintf(a5, "%ui");
        }

        return a5;
      }
    }
  }

  return v9;
}

void sub_22D21BD18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
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

const char *icvWriteHeaderData(uint64_t a1, int *a2, const char *a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  result = cvAttrValue(a3, "header_dt");
  if (result)
  {
    v8 = result;
    if (icvCalcElemSize(result, a4) > a2[1])
    {
      std::string::basic_string[abi:ne200100]<0>(v18, "The size of header calculated from header_dt is greater than header_size");
      std::string::basic_string[abi:ne200100]<0>(v17, "icvWriteHeaderData");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/persistence.cpp");
      cv::Exception::Exception(v19, 4294967087, v18, v17, __p, 4052);
      cv::error(v19, v9);
    }

LABEL_22:
    cvWriteString(a1, "header_dt", v8, 0);
    cvStartWriteStruct(a1, "header_user_data", 13, 0);
    cvWriteRawData(a1, (a2 + 24), 1, v8);
    return cvEndWriteStruct(a1);
  }

  v10 = a2[1];
  v11 = v10 - a4;
  if (v10 <= a4)
  {
    return result;
  }

  v12 = *a2;
  if (HIWORD(*a2) != 17049)
  {
    goto LABEL_18;
  }

  if (v10 == 128 && (*a2 & 0xFFE) == 0xC && a2[11] == 8)
  {
    cvStartWriteStruct(a1, "rect", 14, 0);
    cvWriteInt(a1, "x", a2[24]);
    cvWriteInt(a1, "y", a2[25]);
    cvWriteInt(a1, "width", a2[26]);
    cvWriteInt(a1, "height", a2[27]);
    cvEndWriteStruct(a1);
    v13 = a2[28];

    return cvWriteInt(a1, "color", v13);
  }

  if ((v12 & 0x42993000) != 0x42991000 || (v12 & 0xFFF) != 0 || a2[11] != 1)
  {
LABEL_18:
    if ((v11 & 3) != 0)
    {
      v15 = (v10 - a4);
      v14 = "%uu";
    }

    else
    {
      v15 = v11 >> 2;
      v14 = "%ui";
    }

    v8 = v20;
    sprintf(v20, v14, v15);
    goto LABEL_22;
  }

  cvStartWriteStruct(a1, "origin", 14, 0);
  cvWriteInt(a1, "x", a2[24]);
  cvWriteInt(a1, "y", a2[25]);

  return cvEndWriteStruct(a1);
}

void sub_22D21C0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  cv::Exception::~Exception(&a28);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

char *icvEncodeFormat(unsigned int a1, char *a2)
{
  sprintf(a2, "%d%c", ((a1 >> 3) & 0x1FF) + 1, icvTypeSymbol[a1 & 7]);
  if (a2[2])
  {
    v3 = 0;
  }

  else
  {
    v3 = *a2 == 49;
  }

  return &a2[v3];
}

uint64_t icvSortIdxCmpFunc(int **a1, int **a2, unsigned int *a3)
{
  v3 = *a3;
  if (v3 < 1)
  {
    return 0;
  }

  v4 = *a1;
  v5 = *a2;
  while (1)
  {
    v7 = *v4++;
    v6 = v7;
    v8 = *v5++;
    result = (v6 - v8);
    if (v6 != v8)
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

void icvWriteGraph()
{
  __assert_rtn("cvAlignPtr", "internal.hpp", 440, "(align & (align-1)) == 0");
}

{
  __assert_rtn("icvWriteGraph", "persistence.cpp", 4467, "CV_IS_GRAPH(graph)");
}

void icvWriteSparseMat()
{
  __assert_rtn("icvWriteSparseMat", "persistence.cpp", 3782, "(reader).seq->elem_size == sizeof(idx)");
}

{
  __assert_rtn("icvWriteSparseMat", "persistence.cpp", 3786, "k < dims");
}

{
  __assert_rtn("icvWriteSparseMat", "persistence.cpp", 3750, "CV_IS_SPARSE_MAT(mat)");
}

void *_GLOBAL__sub_I_persistence_cpp()
{
  v1 = 0x4800000000;
  v3 = 0;
  v4 = "opencv-sequence";
  v2 = 0;
  v5 = icvIsSeq;
  v6 = icvReleaseSeq;
  v9 = icvCloneSeq;
  v7 = icvReadSeq;
  v8 = icvWriteSeqTree;
  cvRegisterType(&v1);
  seq_type = CvType::first;
  v1 = 0x4800000000;
  v2 = 0;
  v3 = 0;
  v4 = "opencv-sequence-tree";
  v5 = icvIsSeq;
  v8 = icvWriteSeqTree;
  v9 = icvCloneSeq;
  v6 = icvReleaseSeq;
  v7 = icvReadSeqTree;
  cvRegisterType(&v1);
  seq_tree_type = CvType::first;
  v1 = 0x4800000000;
  v3 = 0;
  v4 = "opencv-graph";
  v2 = 0;
  v5 = icvIsGraph;
  v6 = icvReleaseGraph;
  v9 = icvCloneGraph;
  v7 = icvReadGraph;
  v8 = icvWriteGraph;
  cvRegisterType(&v1);
  seq_graph_type = CvType::first;
  v1 = 0x4800000000;
  v3 = 0;
  v4 = "opencv-sparse-matrix";
  v2 = 0;
  v5 = icvIsSparseMat;
  v6 = cvReleaseSparseMat;
  v9 = cvCloneSparseMat;
  v7 = icvReadSparseMat;
  v8 = icvWriteSparseMat;
  cvRegisterType(&v1);
  sparse_mat_type = CvType::first;
  v1 = 0x4800000000;
  v3 = 0;
  v4 = "opencv-image";
  v2 = 0;
  v5 = icvIsImage;
  v6 = cvReleaseImage;
  v9 = cvCloneImage;
  v7 = icvReadImage;
  v8 = icvWriteImage;
  cvRegisterType(&v1);
  image_type = CvType::first;
  v1 = 0x4800000000;
  v3 = 0;
  v4 = "opencv-matrix";
  v2 = 0;
  v5 = icvIsMat;
  v6 = cvReleaseMat;
  v9 = cvCloneMat;
  v7 = icvReadMat;
  v8 = icvWriteMat;
  cvRegisterType(&v1);
  mat_type = CvType::first;
  v1 = 0x4800000000;
  v3 = 0;
  v4 = "opencv-nd-matrix";
  v2 = 0;
  v5 = icvIsMatND;
  v6 = cvReleaseMatND;
  v9 = cvCloneMatND;
  v7 = icvReadMatND;
  v8 = icvWriteMatND;
  result = cvRegisterType(&v1);
  matnd_type = CvType::first;
  return result;
}

void *cv::dft(cv *this, const cv::_InputArray *a2, const cv::_OutputArray *a3)
{
  v3 = MEMORY[0x28223BE20](this, a2);
  LODWORD(v173) = v4;
  v6 = v5;
  v8 = v7;
  v221[515] = *MEMORY[0x277D85DE8];
  v219 = v221;
  v220 = 4104;
  (**v3)(&v210);
  v205 = v210;
  *&v206[8] = v212;
  *&v206[24] = v213;
  *v206 = v211;
  *&v206[40] = v214;
  v207 = &v205 + 1;
  v208 = v209;
  v209[1] = 0;
  v209[0] = 0;
  if (v212)
  {
    atomic_fetch_add(v212, 1u);
  }

  if (SDWORD1(v210) > 2)
  {
    DWORD1(v205) = 0;
    cv::Mat::copySize(&v205, &v210);
  }

  else
  {
    v9 = v216;
    v10 = v208;
    *v208 = *v216;
    v10[1] = v9[1];
  }

  v11 = v205;
  v12 = (~v6 & 0x21) == 0;
  if ((v205 & 0xFF8) == 0)
  {
    v12 = 1;
  }

  v168 = v12;
  if ((v205 & 0xFFFu) > 0xE || ((1 << v205) & 0x6060) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v194, "type == CV_32FC1 || type == CV_32FC2 || type == CV_64FC1 || type == CV_64FC2");
    std::string::basic_string[abi:ne200100]<0>(v203, "dft");
    std::string::basic_string[abi:ne200100]<0>(v202, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/dxt.cpp");
    cv::Exception::Exception(v204, 4294967081, &v194, v203, v202, 1546);
    cv::error(v204, v161);
  }

  v13 = v205 & 7;
  v181 = v6 & 1;
  if (v6)
  {
    if ((v6 & 0x20) != 0 && (v205 & 0xFF8) == 8)
    {
      v204[0] = vrev64_s32(*v207);
      (*(*v8 + 128))(v8, v204, v205 & 7, 0xFFFFFFFFLL, 0, 0);
      goto LABEL_18;
    }
  }

  else if ((v6 & 0x10) != 0 && (v205 & 0xFF8) == 0)
  {
    v204[0] = vrev64_s32(*v207);
    (*(*v8 + 128))(v8, v204, v13 | 8u, 0xFFFFFFFFLL, 0, 0);
    goto LABEL_18;
  }

  v204[0] = vrev64_s32(*v207);
  (*(*v8 + 128))(v8, v204, v205 & 0xFFF, 0xFFFFFFFFLL, 0, 0);
LABEL_18:
  (**v8)(&v194, v8, 0xFFFFFFFFLL);
  v16 = (0x88442211uLL >> (4 * (v11 & 7u))) & 0xF;
  v17 = (2 * v16);
  v175 = v16;
  if (v168)
  {
    v18 = v16;
  }

  else
  {
    v18 = 2 * v16;
  }

  v163 = v18;
  if (v173 >= 1 && HIDWORD(v205) == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v203, "This mode (using nonzero_rows with a single-column matrix) breaks the function's logic, so it is prohibited.\nFor fast convolution/correlation use 2-column matrix or single-row matrix instead");
    std::string::basic_string[abi:ne200100]<0>(v202, "dft");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/dxt.cpp");
    cv::Exception::Exception(v204, 4294967083, v203, v202, __p, 1563);
    cv::error(v204, v19);
  }

  v20 = 0;
  if ((v6 & 4) != 0 || SDWORD2(v205) < 2)
  {
    goto LABEL_35;
  }

  if (HIDWORD(v205) != 1)
  {
    v20 = 0;
    v21 = v168;
    if (SHIDWORD(v205) <= 1)
    {
      v21 = 0;
    }

    if ((v6 & 1) == 0 || !v21)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if ((BYTE1(v205) & 0x40) == 0 || (BYTE1(v194) & 0x40) == 0)
  {
LABEL_34:
    v20 = 1;
    goto LABEL_35;
  }

  v20 = 0;
LABEL_35:
  v185 = 0;
  v174 = (4 * v16);
  v166 = v17 + 4;
  v22 = v181 & v168;
  if (v13 == 6)
  {
    v23 = 3;
  }

  else
  {
    v23 = 0;
  }

  v24 = 1;
  if (v6)
  {
    v24 = 2;
  }

  if (!v168)
  {
    v24 = 0;
  }

  v162 = v24 + v23;
  v164 = v23;
  v165 = v6;
  v176 = (2 * v16);
  if (!v20)
  {
    goto LABEL_46;
  }

LABEL_43:
  v25 = 0;
  v26 = v195;
  v27 = &v195 + 1;
  if (!v181)
  {
    v27 = (&v210 | 0xC);
  }

  v28 = *v27;
  v29 = v174 * v195;
  while (1)
  {
    v189 = v28;
    if (v26)
    {
      v185 = cv::DFTFactorize(v26, v218, v14);
    }

    v35 = v218[0];
    v36 = v218[v185 - 1];
    v37 = (v218[0] & 1) != 0 || v185 <= 1;
    v38 = !v37;
    v39 = v218[v38];
    v40 = ((v39 > 5) & v39) != 0 ? v17 + v17 * v39 : 0;
    v41 = v29 + v26 * v166 + v40;
    if (v20)
    {
      v42 = 1;
      if (v20 == 1 && v218[0] != v36)
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (*v206 == v196 && v218[0] != v36 || v25)
      {
LABEL_75:
        v42 = 0;
        v41 += v26 * v17;
        goto LABEL_77;
      }

      v42 = 1;
    }

LABEL_77:
    v43 = v41 + 32;
    v44 = v219;
    if (v220 < v41 + 32)
    {
      if (v219 != v221)
      {
        if (v219)
        {
          MEMORY[0x2318CB180](v219, 0x1000C8077774924);
        }

        v219 = v221;
        v44 = v221;
      }

      v220 = v43;
      if (v43 >= 0x1009)
      {
        operator new[]();
      }
    }

    v152 = v35 == v36;
    v45 = v26 * v17;
    v186 = (v44 + v26 * v17);
    if (v152)
    {
      v46 = 0;
    }

    else
    {
      v46 = v22;
    }

    v184 = v44;
    if (v26 || v46)
    {
      if (v20)
      {
        v47 = 0;
      }

      else
      {
        v47 = v22;
      }

      cv::DFTInit(v26, v185, v218, v186, v17, v44, v47, v15);
    }

    v48 = ((&v186[v26 + 3] + 3) & 0xFFFFFFFFFFFFFFF0);
    v188 = v26;
    if (v20)
    {
      v49 = *v206;
      v183 = v196;
      v50 = (v48 + v45 + v45);
      if (v42)
      {
        v51 = 0;
      }

      else
      {
        v51 = v45;
      }

      v178 = v50 + v51;
      v179 = ((&v186[v26 + 3] + 3) & 0xFFFFFFFFFFFFFFF0);
      if (v42)
      {
        v52 = (&v186[v26 + 3] + 3) & 0xFFFFFFFFFFFFFFF0;
      }

      else
      {
        v52 = v48 + v45;
      }

      __src = v52;
      if (v42)
      {
        v50 = (v48 + v45);
      }

      v171 = (v48 + v45);
      v172 = v50;
      v177 = cv::dft(cv::_InputArray const&,cv::_OutputArray const&,int,int)::dft_tbl[v164];
      v191 = v45;
      if (v168 && v181 && SHIDWORD(v205) >= 2)
      {
        v53 = 0;
        v54 = (v189 & 1) == 0;
        v55 = (v189 + 1) / 2;
        v56 = 1.0;
        v167 = 1;
        v57 = v175;
        v58 = v171;
        goto LABEL_111;
      }

      v56 = 1.0;
      v57 = v175;
      if ((v6 & 2) != 0)
      {
        v56 = 1.0 / (v189 * v26);
      }

      if (!v168)
      {
        v187 = *v206;
        v167 = 0;
        v64 = 0;
        v169 = 1;
        v55 = v189;
        v65 = v196;
        goto LABEL_196;
      }

      v54 = (v189 & 1) == 0;
      v55 = (v189 + 1) / 2;
      v58 = (v48 + v45);
      if (v181)
      {
        v167 = 0;
        v53 = 1;
LABEL_111:
        if ((v205 & 0xFF8) != 0)
        {
          cv::CopyColumn(*v206, v209[0], v48, v17, v26, v17);
          if (v54)
          {
            cv::CopyColumn((v49 + v17 * v55), v209[0], v58, v17, v26, v17);
            v59 = v49 + v17;
            goto LABEL_179;
          }

          v59 = v49 + v17;
LABEL_183:
          (v177)(v48, __src, v26, v185, v218, v186, v184, v26, v56, 0, v178, v181);
          v169 = v53;
          v187 = v59;
          if ((v194 & 0xFF8) != 0)
          {
            if (v181)
            {
              __assert_rtn("dft", "dxt.cpp", 1844, "!inv");
            }

            cv::CopyColumn(__src, v17, v183, v201, v26, v17);
            if (v54)
            {
              cv::CopyColumn(v172, v17, (v183 + v17 * v55), v201, v26, v17);
            }

            v65 = (v183 + v17);
LABEL_195:
            v64 = 1;
LABEL_196:
            if (v64 < v55)
            {
              v94 = v55;
              v190 = (4 * v26);
              v95 = (2 * v26);
              v96 = v187 + 4;
              v97 = v187 + 2;
              v98 = v187 + 1;
              v99 = v65 + 4;
              v100 = v65 + 2;
              v101 = v65 + 1;
              v182 = v55;
              do
              {
                if (v64 + 1 >= v94)
                {
                  v108 = v188;
                  cv::CopyColumn(v187, v209[0], v179, v176, v188, v176);
                }

                else
                {
                  v102 = v209[0] >> 2;
                  if (v175 == 2)
                  {
                    if (v188 >= 1)
                    {
                      v113 = 4 * v102;
                      v114 = v98;
                      v115 = v179;
                      v116 = v188;
                      do
                      {
                        v117 = *v114;
                        *v115 = *(v114 - 1);
                        *(v115++ + v191) = v117;
                        v114 = (v114 + v113);
                        --v116;
                      }

                      while (v116);
                    }
                  }

                  else if (v175 == 4)
                  {
                    if (v188 >= 1)
                    {
                      v109 = 0;
                      v110 = 4 * v102;
                      v111 = v97;
                      v112 = v179;
                      do
                      {
                        *v112 = *(v111 - 1);
                        *(v112 + v191) = *v111;
                        v109 += 2;
                        ++v112;
                        v111 = (v111 + v110);
                      }

                      while (v109 < v95);
                    }
                  }

                  else if (v175 == 8 && v188 >= 1)
                  {
                    v103 = 0;
                    v104 = 4 * v102;
                    v106 = (v179 + v191 + 8);
                    v105 = v179 + 2;
                    v107 = v96;
                    do
                    {
                      *(v105 - 1) = *(v107 - 2);
                      *v105 = *(v107 - 1);
                      v105 += 2;
                      *(v106 - 1) = *v107;
                      v103 += 4;
                      *v106 = v107[1];
                      v106 += 2;
                      v107 = (v107 + v104);
                    }

                    while (v103 < v190);
                  }

                  v108 = v188;
                  (v177)(v171, v172, v188, v185, v218, v186, v184, v188, v56, 0, v178, v181);
                }

                (v177)(v179, __src, v108, v185, v218, v186, v184, v108, v56, 0, v178, v181);
                if (v64 + 1 >= v182)
                {
                  cv::CopyColumn(__src, v176, v65, v201, v188, v176);
                }

                else
                {
                  v118 = v201 >> 2;
                  if (v175 == 2)
                  {
                    if (v188 >= 1)
                    {
                      v133 = 4 * v118;
                      v134 = v101;
                      v135 = __src;
                      v136 = v172;
                      v137 = v188;
                      do
                      {
                        v139 = *v135++;
                        v138 = v139;
                        v140 = *v136;
                        v136 = (v136 + 4);
                        *(v134 - 1) = v138;
                        *v134 = v140;
                        v134 = (v134 + v133);
                        --v137;
                      }

                      while (v137);
                    }
                  }

                  else if (v175 == 4)
                  {
                    if (v188 >= 1)
                    {
                      v126 = 0;
                      v127 = 4 * v118;
                      v128 = v100;
                      v129 = __src;
                      v130 = v172;
                      do
                      {
                        v131 = *v129++;
                        *(v128 - 1) = v131;
                        v132 = *v130;
                        v130 = (v130 + 8);
                        *v128 = v132;
                        v126 += 2;
                        v128 = (v128 + v127);
                      }

                      while (v126 < v95);
                    }
                  }

                  else if (v175 == 8 && v188 >= 1)
                  {
                    v119 = 0;
                    v120 = 4 * v118;
                    v121 = (__src + 2);
                    v122 = (v172 + 8);
                    v123 = v99;
                    do
                    {
                      *(v123 - 2) = *(v121 - 1);
                      v124 = *v121;
                      v121 += 2;
                      *(v123 - 1) = v124;
                      *v123 = *(v122 - 1);
                      v119 += 4;
                      v125 = *v122;
                      v122 += 2;
                      v123[1] = v125;
                      v123 = (v123 + v120);
                    }

                    while (v119 < v190);
                  }
                }

                v187 = (v187 + v174);
                v65 = (v65 + v174);
                v64 += 2;
                v96 = (v96 + v174);
                v97 = (v97 + v174);
                v98 = (v98 + v174);
                v99 = (v99 + v174);
                v100 = (v100 + v174);
                v101 = (v101 + v174);
                v94 = v182;
              }

              while (v64 < v182);
            }

            if ((v167 & 1) == 0)
            {
              v146 = v168;
              if (v181)
              {
                v146 = 0;
              }

              v147 = v188;
              if (v146 && v188 >= 2 && (v194 & 0xFF8) == 8)
              {
                v148 = 2;
LABEL_263:
                cv::complementComplexOutput(&v194, v147, v148);
                goto LABEL_264;
              }

              goto LABEL_264;
            }

            if (*(&v196 + 1))
            {
              atomic_fetch_add(*(&v196 + 1), 1u);
            }

            v22 = v181 & v168;
            v6 = v165;
            v17 = v176;
            v20 = v169;
            if (*&v206[8] && atomic_fetch_add(*&v206[8], 0xFFFFFFFF) == 1)
            {
              cv::Mat::deallocate(&v205);
            }

            *v206 = 0;
            memset(&v206[16], 0, 24);
            if (v205 <= 0)
            {
              *&v206[8] = 0;
              v87 = HIDWORD(v194);
              LODWORD(v205) = v194;
              if (SHIDWORD(v194) >= 3)
              {
                goto LABEL_174;
              }
            }

            else
            {
              v141 = 0;
              v142 = v207;
              do
              {
                v142->i32[v141++] = 0;
              }

              while (v141 < SDWORD1(v205));
              *&v206[8] = 0;
              v87 = HIDWORD(v194);
              LODWORD(v205) = v194;
              if (SDWORD1(v205) > 2 || SHIDWORD(v194) >= 3)
              {
                goto LABEL_174;
              }
            }

            goto LABEL_249;
          }

          if (v181)
          {
            v89 = v183;
            cv::CopyColumn(__src, v17, v183, v201, v26, v57);
            if (v54)
            {
              v90 = (v183 + (v189 - 1) * v57);
              v91 = v201;
              v92 = v172;
              v93 = v17;
              goto LABEL_193;
            }
          }

          else
          {
            memcpy(__src + v57, __src, v57);
            v89 = v183;
            cv::CopyColumn((__src + v57), v57, v183, v201, v26, v57);
            if (v54)
            {
              memcpy(v172 + v57, v172, v57);
              v90 = (v183 + (v189 - 1) * v57);
              v91 = v201;
              v92 = (v172 + v57);
              v93 = v57;
LABEL_193:
              cv::CopyColumn(v92, v93, v90, v91, v26, v57);
            }
          }

          v65 = (v89 + v57);
          goto LABEL_195;
        }

        cv::CopyColumn(*v206, v209[0], v48, v57, v26, v57);
        cv::ExpandCCS(v48, v26, v57);
        if (!v54)
        {
          v59 = v49 + v57;
          goto LABEL_183;
        }

        cv::CopyColumn((v49 + (v189 - 1) * v57), v209[0], v58, v57, v26, v57);
        cv::ExpandCCS(v58, v26, v57);
        v59 = v49 + v57;
      }

      else
      {
        bzero(v48, v45);
        cv::CopyColumn(v49, v209[0], v48, v17, v26, v175);
        v59 = v49 + v175 + v175 * ((v194 >> 3) & 0x1FF);
        if (v189)
        {
          v167 = 0;
          v54 = 0;
          v53 = 1;
          goto LABEL_183;
        }

        bzero(v171, v45);
        cv::CopyColumn(&v59[(v189 - 2) * v175], v209[0], v171, v17, v26, v175);
        v167 = 0;
        v53 = 1;
      }

LABEL_179:
      (v177)(v58, v172, v26, v185, v218, v186, v184, v26, v56, 0, v178, v181);
      v54 = 1;
      goto LABEL_183;
    }

    v60 = 0;
    if (v42)
    {
      v61 = (&v186[v26 + 3] + 3) & 0xFFFFFFFFFFFFFFF0;
      v48 = 0;
LABEL_116:
      v62 = v163;
      v63 = v189;
      goto LABEL_124;
    }

    v61 = v48 + v45;
    if (v181)
    {
      goto LABEL_116;
    }

    v62 = v163;
    v63 = v189;
    if (v26 >= 2 && v25)
    {
      if (((v194 ^ v205) & 0xFF8) != 0)
      {
        v60 = 0;
      }

      else
      {
        v60 = v163;
      }
    }

LABEL_124:
    v66 = (v6 >> 2) & 1;
    v67 = v181;
    if (((v194 ^ v205) & 0xFF8) == 0)
    {
      v67 = 1;
    }

    if (v26)
    {
      v68 = v62;
    }

    else
    {
      v68 = v17;
    }

    if (v67)
    {
      v69 = 0;
    }

    else
    {
      v69 = v68;
    }

    if (v63 < 2)
    {
      v66 = 1;
    }

    v70 = v22 | v66;
    v170 = (v22 | v66) ^ 1;
    v71 = 1.0;
    if ((v6 & 2) != 0 && v70)
    {
      v170 = 0;
      if ((v6 & 4) != 0)
      {
        v72 = 1;
      }

      else
      {
        v72 = v63;
      }

      v71 = 1.0 / (v72 * v188);
    }

    v73 = v69 + v188 * v62;
    LODWORD(v74) = v173 >= v63 ? v63 : v173;
    v74 = v173 >= 1 ? v74 : v63;
    v173 = v74;
    if (v74 < 1)
    {
      v81 = 0;
    }

    else
    {
      v75 = 0;
      v76 = cv::dft(cv::_InputArray const&,cv::_OutputArray const&,int,int)::dft_tbl[v162];
      v192 = v73;
      v77 = v73;
      v78 = v181 | ((((v194 ^ v205) & 0xFF8) != 0) << 9);
      do
      {
        v79 = (v196 + v201 * v75);
        v80 = v48;
        if (!v48)
        {
          v48 = (v196 + v201 * v75);
        }

        (v76)(*v206 + v209[0] * v75, v48, v188, v185, v218, v186, v184, v188, v71, 0, v61, v78);
        if (v48 != v79)
        {
          memcpy(v79, v48 + v60, v77);
        }

        v75 = (v75 + 1);
        v48 = v80;
      }

      while (v173 != v75);
      v81 = v173;
      v22 = v181 & v168;
      v6 = v165;
      v17 = v176;
      v63 = v189;
      v73 = v192;
    }

    if (v81 < v63)
    {
      v82 = v73;
      v83 = v81;
      v84 = v63;
      do
      {
        bzero((v196 + v201 * v83++), v82);
      }

      while (v84 != v83);
    }

    if (v70)
    {
      break;
    }

    if (*(&v196 + 1))
    {
      atomic_fetch_add(*(&v196 + 1), 1u);
    }

    v20 = v170;
    if (*&v206[8] && atomic_fetch_add(*&v206[8], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(&v205);
    }

    *v206 = 0;
    memset(&v206[16], 0, 24);
    if (v205 <= 0)
    {
      *&v206[8] = 0;
      v87 = HIDWORD(v194);
      LODWORD(v205) = v194;
      if (SHIDWORD(v194) >= 3)
      {
        goto LABEL_174;
      }
    }

    else
    {
      v85 = 0;
      v86 = v207;
      do
      {
        v86->i32[v85++] = 0;
      }

      while (v85 < SDWORD1(v205));
      *&v206[8] = 0;
      v87 = HIDWORD(v194);
      LODWORD(v205) = v194;
      if (SDWORD1(v205) > 2 || SHIDWORD(v194) >= 3)
      {
LABEL_174:
        cv::Mat::copySize(&v205, &v194);
        goto LABEL_250;
      }
    }

LABEL_249:
    DWORD1(v205) = v87;
    *(&v205 + 1) = v195;
    v144 = v200;
    v145 = v208;
    *v208 = *v200;
    v145[1] = v144[1];
LABEL_250:
    *v206 = v196;
    *&v206[16] = v197;
    v15 = *&v198;
    *&v206[32] = v198;
    if (v20)
    {
      goto LABEL_43;
    }

LABEL_46:
    v29 = 0;
    v30 = (v6 & 4) == 0;
    v31 = &v195 + 1;
    if (!v181)
    {
      v31 = (&v205 | 0xC);
    }

    v32 = *v31;
    v33 = v195;
    if (!v181)
    {
      v33 = DWORD2(v205);
    }

    v34 = v32 == 1;
    if (v30 && v34)
    {
      v26 = v33;
    }

    else
    {
      v26 = v32;
    }

    if (v30 && v34)
    {
      v28 = 1;
    }

    else
    {
      v28 = DWORD2(v205);
    }

    v25 = v168 & v26;
  }

  v149 = v168;
  if (v181)
  {
    v149 = 0;
  }

  if (v149 && (v194 & 0xFF8) == 8)
  {
    v147 = v173;
    v148 = 1;
    goto LABEL_263;
  }

LABEL_264:
  if (*(&v196 + 1) && atomic_fetch_add(*(&v196 + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v194);
  }

  *&v196 = 0;
  *&v198 = 0;
  v197 = 0uLL;
  if (SHIDWORD(v194) >= 1)
  {
    v150 = 0;
    v151 = v199;
    do
    {
      *(v151 + 4 * v150++) = 0;
    }

    while (v150 < SHIDWORD(v194));
  }

  *(&v196 + 1) = 0;
  if (v200)
  {
    v152 = v200 == &v201;
  }

  else
  {
    v152 = 1;
  }

  if (!v152)
  {
    free(v200);
  }

  if (*&v206[8] && atomic_fetch_add(*&v206[8], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v205);
  }

  *v206 = 0;
  memset(&v206[16], 0, 24);
  if (SDWORD1(v205) >= 1)
  {
    v153 = 0;
    v154 = v207;
    do
    {
      v154->i32[v153++] = 0;
    }

    while (v153 < SDWORD1(v205));
  }

  *&v206[8] = 0;
  if (v208)
  {
    v155 = v208 == v209;
  }

  else
  {
    v155 = 1;
  }

  if (!v155)
  {
    free(v208);
  }

  if (v212 && atomic_fetch_add(v212, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v210);
  }

  v211 = 0;
  v213 = 0uLL;
  *(&v212 + 1) = 0;
  if (SDWORD1(v210) >= 1)
  {
    v156 = 0;
    v157 = v215;
    do
    {
      *(v157 + 4 * v156++) = 0;
    }

    while (v156 < SDWORD1(v210));
  }

  *&v212 = 0;
  if (v216)
  {
    v158 = v216 == &v217;
  }

  else
  {
    v158 = 1;
  }

  if (!v158)
  {
    free(v216);
  }

  result = v219;
  if (v219 != v221 && v219 != 0)
  {
    return MEMORY[0x2318CB180]();
  }

  return result;
}