void sub_24BC51FE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL rtcv::simResize(void *a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, int a6, int a7, void *a8, unsigned int a9, unsigned int a10, unsigned int a11)
{
  if (a6 | a5)
  {
    return 0;
  }

  v18 = a10;
  v19 = a9;
  bzero(a8, a11 * a10);
  if (!a7)
  {
    if (a10 * a2 <= a9 * a3)
    {
      v19 = vcvtas_u32_f32((a10 * a2) / a3);
      if (v19 > a9)
      {
        rtcv::simResize();
      }
    }

    else
    {
      v18 = vcvtas_u32_f32((a9 * a3) / a2);
      if (v18 > a10)
      {
        rtcv::simResize();
      }
    }
  }

  src.data = a1;
  src.height = a3;
  src.width = a2;
  src.rowBytes = a4;
  v20.data = a8;
  v20.height = v18;
  v20.width = v19;
  v20.rowBytes = a11;
  return vImageScale_ARGB8888(&src, &v20, 0, 0) == 0;
}

BOOL rtcv::simCropResize(void *a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, int a6, int a7, void *a8, float a9, float a10, float a11, unsigned int a12, unsigned int a13, unsigned int a14)
{
  if (a6 | a5 | a7)
  {
    return 0;
  }

  v20 = v14;
  v21 = v15;
  v19.data = a1;
  v19.height = a3;
  v19.width = a2;
  v19.rowBytes = a4;
  dest.data = a8;
  dest.height = a13;
  dest.width = a12;
  dest.rowBytes = a14;
  transform.a = a11;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = a11;
  transform.tx = -(a11 * a9);
  transform.ty = a13 - (a11 * (a3 - a10));
  return vImageAffineWarp_ARGB8888(&v19, &dest, 0, &transform, 0, 8u) == 0;
}

BOOL rtcv::simCropResizeExtendMean(void *a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, int a6, int a7, void *a8, float a9, float a10, float a11, unsigned int a12, unsigned int a13, unsigned int a14, uint64_t a15)
{
  if (a6 | a5 | a7)
  {
    return 0;
  }

  v24 = v15;
  v25 = v16;
  v23.data = a1;
  v23.height = a3;
  v23.width = a2;
  v23.rowBytes = a4;
  dest.data = a8;
  dest.height = a13;
  dest.width = a12;
  dest.rowBytes = a14;
  backColor = *a15;
  v20 = *(a15 + 1);
  v21 = -1;
  transform.a = a11;
  *&transform.b = 0;
  transform.d = a11;
  transform.tx = -(a11 * a9);
  transform.ty = a13 - (a11 * (a3 - a10));
  return vImageAffineWarp_ARGB8888(&v23, &dest, 0, &transform, &backColor, 4u) == 0;
}

uint64_t rtcv::simImageChMeanTempBytes(rtcv *this, int a2)
{
  v3 = this;
  BmMixedBufSize::BmMixedBufSize(v5);
  if (v5[1])
  {
    rtcv::simImageChMeanTempBytes();
  }

  return (v5[0] + 12 * v3 * a2 + 9);
}

float rtcv::simImageChMean(const unsigned __int8 *a1, int a2, int a3, int a4, float *a5, unsigned int a6, _BYTE *a7)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    BmMixedBufSize::BmMixedBufSize(&__C);
    if (HIDWORD(__C))
    {
      rtcv::simImageChMeanTempBytes();
    }

    v13 = a3;
    v14 = a2;
    v15 = __C + 12 * a2 * a3 + 9;
    LODWORD(__C) = v15;
    if (a5)
    {
      if (v15 > a6)
      {
        rtcv::simImageChMean();
      }

      v16 = a5;
      v17 = ((a5 + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v18 = 4 * a2 * a3 - a5;
      HIDWORD(__C) = v17 + v18;
      if (v15 < v17 + v18)
      {
        rtcv::simImageChMean();
      }

      a5 = ((a5 + (v17 + v18) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      HIDWORD(__C) = a5 + v18;
      if (v15 < a5 + v18)
      {
        rtcv::simImageChMean();
      }

      v19 = ((v16 + (a5 + v18) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      HIDWORD(__C) = v19 + v18;
      if (v15 < v19 + v18)
      {
        rtcv::simImageChMean();
      }
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v20 = (v13 * a2);
    v24 = 0.0;
    __C = 0;
    vDSP_vfltu8(a1, 4, v19, 1, (v13 * v14));
    vDSP_vfltu8(a1 + 1, 4, a5, 1, v20);
    vDSP_vfltu8(a1 + 2, 4, v17, 1, v20);
    vDSP_meanv(v19, 1, &__C, v20);
    vDSP_meanv(a5, 1, &__C + 1, v20);
    vDSP_meanv(v17, 1, &v24, v20);
    v21 = *(&__C + 1);
    *a7 = (*&__C + 0.5);
    a7[1] = (v21 + 0.5);
    result = v24 + 0.5;
    a7[2] = (v24 + 0.5);
  }

  return result;
}

uint64_t acMemBlockCoalesce(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 >= 2)
  {
    v4 = a2;
    bmHeapsort(a1, a2, 0xCuLL, acMemBlockCompareAddress);
    v5 = 0;
    v6 = 0;
    v7 = v2 - 1;
    v8 = (a1 + 20);
    do
    {
      v9 = a1 + 12 * v5;
      v10 = *v9;
      v11 = v8;
      v12 = v7;
      do
      {
        v13 = *(v9 + 8);
        if (v10 + v13 == *(v11 - 1))
        {
          *(v9 + 8) = *v11 + v13;
          *v11 = 0;
          v6 = 1;
        }

        v11 += 3;
        --v12;
      }

      while (v12);
      ++v5;
      --v7;
      v8 += 3;
    }

    while (v5 != v2 - 1);
    if (v6)
    {
      v2 = 0;
      v14 = (a1 + 8);
      do
      {
        if (*v14)
        {
          v15 = a1 + 12 * v2;
          v16 = *(v14 - 1);
          v2 = (v2 + 1);
          *(v15 + 8) = *v14;
          *v15 = v16;
        }

        v14 += 3;
        --v4;
      }

      while (v4);
    }
  }

  return v2;
}

uint64_t acMemBlockCoalesceNoSort(uint64_t a1, uint64_t a2)
{
  if (a2 >= 2)
  {
    v2 = 0;
    v3 = 0;
    v4 = a2;
    v5 = (a1 + 20);
    v6 = a2 - 1;
    do
    {
      v7 = (a1 + 12 * v2);
      v8 = *v7;
      v9 = v6;
      v10 = v5;
      do
      {
        v11 = *(v7 + 2);
        if (v8 + v11 == *(v10 - 1))
        {
          *(v7 + 2) = *v10 + v11;
          *v10 = 0;
          v3 = 1;
        }

        v10 += 3;
        --v9;
      }

      while (v9);
      ++v2;
      v5 += 3;
      --v6;
    }

    while (v2 != a2 - 1);
    if (v3)
    {
      a2 = 0;
      v12 = (a1 + 8);
      v13 = (a1 + 8);
      do
      {
        v14 = *v13;
        v13 += 3;
        if (v14)
        {
          v15 = a1 + 12 * a2;
          v16 = *(v12 - 1);
          a2 = (a2 + 1);
          *(v15 + 8) = *v12;
          *v15 = v16;
        }

        v12 = v13;
        --v4;
      }

      while (v4);
    }
  }

  return a2;
}

void ft::ProxyTrack::ProxyTrack(ft::ProxyTrack *this, const uint64_t *a2)
{
  ft::Track::Track(this, a2);
  *v2 = &unk_285F8F410;
}

{
  ft::Track::Track(this, a2);
  *v2 = &unk_285F8F410;
}

void ft::ProxyTrack::~ProxyTrack(ft::ProxyTrack *this)
{
  ft::Track::~Track(this);

  JUMPOUT(0x24C253380);
}

double ft::ProxyTrack::UpdateState(uint64_t a1, uint64_t a2, float *a3)
{
  v3 = *a3;
  *(a1 + 40) = *(a3 + 1);
  *(a1 + 24) = v3;
  result = a3[10];
  *(a1 + 248) = result;
  return result;
}

uint64_t *ttTrkScoreFindMaxScore(uint64_t *result, float *a2, _DWORD *a3, unsigned int *a4)
{
  v4 = *(result + 2);
  v5 = *(result + 3);
  *a2 = -3.4028e38;
  *a3 = 0;
  *a4 = 0;
  if (v4)
  {
    if (v5)
    {
      v6 = 0;
      v7 = *result;
      v8 = -3.4028e38;
      while (*(result + 3) && *(result + 2) > v6)
      {
        v10 = 0;
        v11 = v7 + *(result + 4) * v6;
        do
        {
          v12 = *(v11 + 4 * v10);
          if (v12 > v8)
          {
            *a2 = v12;
            *a3 = v10;
            v8 = v12;
            *a4 = v6;
          }

          ++v10;
        }

        while (v5 != v10);
        if (++v6 == v4)
        {
          return result;
        }
      }

LABEL_17:
      AcAttrNode::postProcess();
    }

    if (!*(result + 3) || *(result + 2) <= (v4 - 1))
    {
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t *ttTrkScoreNormalize(uint64_t *result)
{
  v1 = *(result + 2);
  if (v1)
  {
    v2 = *(result + 3);
    if (!v2)
    {
      AcAttrNode::postProcess();
    }

    v3 = *result;
    v4 = *(result + 4);
    v5 = v2 & 0xFFFFFFF8;
    if (v2 > 7)
    {
      v10 = v2 - v5;
      if (v2 == v5)
      {
        v11 = 0;
        v12 = v3 + 16;
        v7 = 0;
        do
        {
          v13 = v12 + v10;
          v14 = v2 & 0xFFFFFFF8;
          do
          {
            *v7.i32 = (((((((*v7.i32 + COERCE_FLOAT(*(v13 - 16))) + COERCE_FLOAT(HIDWORD(*(v13 - 16)))) + COERCE_FLOAT(*(v13 - 8))) + COERCE_FLOAT(HIDWORD(*(v13 - 16)))) + COERCE_FLOAT(*v13)) + COERCE_FLOAT(HIDWORD(*v13))) + COERCE_FLOAT(*(v13 + 8))) + COERCE_FLOAT(HIDWORD(*v13));
            v13 += 32;
            v14 -= 8;
          }

          while (v14);
          ++v11;
          v10 += v4;
        }

        while (v11 != v1);
      }

      else
      {
        v15 = 0;
        v16 = 0;
        v17 = v3 + 16;
        v18 = v3 + ((4 * v2) & 0x3FFFFFFE0);
        v7 = 0;
        do
        {
          v19 = (v18 + v15);
          v20 = v17 + v15;
          v21 = v2 & 0xFFFFFFF8;
          do
          {
            *v7.i32 = (((((((*v7.i32 + COERCE_FLOAT(*(v20 - 16))) + COERCE_FLOAT(HIDWORD(*(v20 - 16)))) + COERCE_FLOAT(*(v20 - 8))) + COERCE_FLOAT(HIDWORD(*(v20 - 16)))) + COERCE_FLOAT(*v20)) + COERCE_FLOAT(HIDWORD(*v20))) + COERCE_FLOAT(*(v20 + 8))) + COERCE_FLOAT(HIDWORD(*v20));
            v20 += 32;
            v21 -= 8;
          }

          while (v21);
          v22 = v2 - v5;
          do
          {
            v23 = *v19++;
            *v7.i32 = *v7.i32 + v23;
            --v22;
          }

          while (v22);
          ++v16;
          v15 += v4;
        }

        while (v16 != v1);
      }
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = *(result + 2);
      do
      {
        v9 = (v3 + v6);
        *v7.i32 = *v7.i32 + *v9;
        if (v2 != 1)
        {
          *v7.i32 = *v7.i32 + v9[1];
          if (v2 != 2)
          {
            *v7.i32 = *v7.i32 + v9[2];
            if (v2 != 3)
            {
              *v7.i32 = *v7.i32 + v9[3];
              if (v2 != 4)
              {
                *v7.i32 = *v7.i32 + v9[4];
                if (v2 != 5)
                {
                  *v7.i32 = *v7.i32 + v9[5];
                  if (v2 != 6)
                  {
                    *v7.i32 = *v7.i32 + v9[6];
                  }
                }
              }
            }
          }
        }

        v6 += v4;
        --v8;
      }

      while (v8);
    }

    if (*v7.i32 > 0.0000001)
    {
      v24 = *result;
      v25 = *(result + 4);
      if (v2 >= 8)
      {
        v30 = 0;
        v31 = 0;
        v32 = vdupq_lane_s32(v7, 0);
        v33 = v24 + 16;
        v34 = v24 + ((4 * v2) & 0x3FFFFFFE0);
        while (v31 < *(result + 2))
        {
          v35 = (v34 + v30);
          v36 = (v33 + v30);
          v37 = v2 & 0xFFFFFFF8;
          do
          {
            v38 = vdivq_f32(*v36, v32);
            v36[-1] = vdivq_f32(v36[-1], v32);
            *v36 = v38;
            v36 += 2;
            v37 -= 8;
          }

          while (v37);
          v39 = v2 - v5;
          if (v2 != v5)
          {
            do
            {
              *v35 = *v35 / *v7.i32;
              ++v35;
              --v39;
            }

            while (v39);
          }

          ++v31;
          v30 += v25;
          if (v31 == v1)
          {
            return result;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
        while (v27 < *(result + 2))
        {
          v28 = (v24 + v26);
          v29 = v2;
          do
          {
            *v28 = *v28 / *v7.i32;
            ++v28;
            --v29;
          }

          while (v29);
          ++v27;
          v26 += v25;
          if (v27 == v1)
          {
            return result;
          }
        }
      }

      AcAttrNode::postProcess();
    }
  }

  return result;
}

float ttTrkComputeKL(uint64_t *a1, uint64_t *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 2);
  v33 = *(a2 + 3);
  v8 = *(a1 + 2);
  v7 = *(a1 + 3);
  v9 = *(a1 + 4);
  v31 = *a2;
  v32 = *a1;
  v10 = *(a2 + 4);
  v30 = a4 - 9;
  v28 = a6 - 9;
  v29 = v9 * (a4 - 9);
  v27 = v10 * (a6 - 9);
  v11 = -9;
  v12 = 0.0;
  v36 = v10;
  do
  {
    v13 = v11 + a5;
    v39 = v11;
    if (v11 + a5 >= 0)
    {
      v14 = v11 + a3;
      if (((v11 + a3) & 0x80000000) == 0 && v13 < v33)
      {
        v15 = 19;
        v16 = v27;
        v17 = v28;
        v19 = v29;
        v18 = v30;
        v20 = v32 + 4 * v14;
        v21 = v31 + 4 * v13;
        v38 = v11 + a3;
        v37 = v21;
        do
        {
          if ((v17 & 0x80000000) == 0 && v17 < v6 && v14 < v7 && (v18 & 0x80000000) == 0 && v18 < v8)
          {
            v22 = *(v20 + v19);
            v23 = *(v21 + v16);
            if (v23 >= 0.000001 && v22 >= 0.000001)
            {
              v25 = logf(v22 / v23);
              v21 = v37;
              v10 = v36;
              v14 = v38;
              v12 = v12 + (v22 * v25);
            }
          }

          ++v18;
          v19 += v9;
          ++v17;
          v16 += v10;
          --v15;
        }

        while (v15);
      }
    }

    v11 = v39 + 1;
  }

  while (v39 != 9);
  return fmaxf(v12, 0.0);
}

void *ft::SiameseRpnSession::SiameseRpnSession(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  return this;
}

void ft::SiameseRpnSession::~SiameseRpnSession(ft::SiameseRpnSession *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    TtTrkRpnStop(*(v1 + 536));
    TtTrkRpnDestroy(*(v1 + 536));
    MEMORY[0x24C253380](v1, 0x10A0C40C54048FFLL);
  }
}

{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    TtTrkRpnStop(*(v1 + 536));
    TtTrkRpnDestroy(*(v1 + 536));
    MEMORY[0x24C253380](v1, 0x10A0C40C54048FFLL);
  }
}

void ft::SiameseRpnSession::ComputeExemplarInputRect(uint64_t a1)
{
  v1 = *MEMORY[0x277D85DE8];
  ft::SiameseRpnSession::EnsureAtStage(a1, 0);
  operator new();
}

void sub_24BC52FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ft::SiameseRpnSession::EnsureAtStage(uint64_t result, unint64_t a2)
{
  if (*(result + 8) != a2)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v14, a2);
    v5 = std::string::insert(&v14, 0, "Expected to be in stage ");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v15, ". Curent stage instead: ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v13, *(v2 + 8));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v13;
    }

    else
    {
      v9 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v11 = std::string::append(&v16, v9, size);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v17);
    exception->__vftable = &unk_285F8F3B0;
  }

  return result;
}

void sub_24BC5313C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a33 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if (a20 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_6:
    operator delete(__p);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }

LABEL_13:
    __cxa_free_exception(v33);
    goto LABEL_14;
  }

LABEL_12:
  if (!v34)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void sub_24BC5332C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_4:
    if (a20 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_5:
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }

LABEL_11:
    __cxa_free_exception(v26);
    goto LABEL_12;
  }

LABEL_10:
  if (!v27)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void ft::SiameseRpnSession::PostProcessExemplarOutputs(uint64_t *a1, void *a2)
{
  ft::SiameseRpnSession::EnsureAtStage(a1, 1uLL);
  v4 = *a1;
  v9 = 16;
  strcpy(__p, "net_exempler_reg");
  v5 = std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::find<std::string>(a2, __p);
  if (v5)
  {
    v6 = (v4 + 2660);
    *v6 = v5[5];
    if (v9 < 0)
    {
      operator delete(*__p);
    }

    v9 = 16;
    strcpy(__p, "net_exempler_cls");
    v7 = std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::find<std::string>(a2, __p);
    if (v7)
    {
      v6[1] = v7[5];
      if (v9 < 0)
      {
        operator delete(*__p);
      }

      operator new();
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_24BC53574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BC5365C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double ft::SiameseRpnSession::ComputeInstanceInputRect(ft::SiameseRpnSession *this)
{
  ft::SiameseRpnSession::EnsureAtStage(this, 2uLL);
  v8 = 0uLL;
  v7 = 21;
  strcpy(__p, "Fetching instance ROI");
  TtTrkRpnGetInstanceCrop((*this + 557), &v8);
  v5 = v2;
  ft::EnsureOK(__p, &v5);
  if (v7 < 0)
  {
    operator delete(*__p);
  }

  LODWORD(v3) = *(*this + 544);
  return v8.n128_f32[0] / v3;
}

void sub_24BC53748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ft::SiameseRpnSession::PostProcessInstanceOutputs(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v8 = 14;
  strcpy(__p, "regress_adjust");
  v4 = std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::find<std::string>(a2, __p);
  if (v4)
  {
    v5 = (v3 + 2684);
    *v5 = v4[5];
    if (v8 < 0)
    {
      operator delete(*__p);
    }

    v8 = 21;
    strcpy(__p, "classification_x_corr");
    v6 = std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::find<std::string>(a2, __p);
    if (v6)
    {
      v5[1] = v6[5];
      if (v8 < 0)
      {
        operator delete(*__p);
      }

      operator new();
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
}

void sub_24BC53984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *ft::SiameseRpnSession::Reset(uint64_t *this)
{
  v1 = *this;
  *this = 0;
  this[1] = 0;
  if (v1)
  {
    TtTrkRpnStop(*(v1 + 536));
    TtTrkRpnDestroy(*(v1 + 536));

    JUMPOUT(0x24C253380);
  }

  return this;
}

void ft::SiameseRpnStageError::~SiameseRpnStageError(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x24C253380);
}

void ft::SiameseRpnCore::SiameseRpnCore(ft::SiameseRpnCore *this)
{
  *(this + 157) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  v2 = (this + 2424);
  v3 = (this + 2792);
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 537) = 0u;
  bzero(this + 556, 0x749uLL);
  *(this + 2774) = 0u;
  v2[20] = 0u;
  v2[21] = 0u;
  v2[18] = 0u;
  v2[19] = 0u;
  v2[16] = 0u;
  v2[17] = 0u;
  v2[14] = 0u;
  v2[15] = 0u;
  v2[12] = 0u;
  v2[13] = 0u;
  v2[10] = 0u;
  v2[11] = 0u;
  v2[8] = 0u;
  v2[9] = 0u;
  v2[6] = 0u;
  v2[7] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  *v2 = 0u;
  v2[1] = 0u;
  v3[7] = 0u;
  v3[8] = 0u;
  v3[5] = 0u;
  v3[6] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  *v3 = 0u;
  operator new();
}

void sub_24BC53CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AcAttrCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 4294967292;
  if (a1 && a2)
  {
    if (a3)
    {
      operator new();
    }
  }

  return result;
}

uint64_t AcAttrDestroy(AcAttrNode **a1)
{
  if (!a1)
  {
    return 4294967292;
  }

  v2 = *a1;
  if (!v2)
  {
    return 4294967292;
  }

  AcAttrNode::~AcAttrNode(v2);
  MEMORY[0x24C253380]();
  MEMORY[0x24C253380](a1, 0x10A0C40947D6BA8);
  return 0;
}

uint64_t AcAttrStart(void *a1)
{
  result = 4294967292;
  if (a1)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      return 4294967292;
    }
  }

  return result;
}

uint64_t AcAttrStop(void *a1)
{
  result = 4294967292;
  if (a1)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      return 4294967292;
    }
  }

  return result;
}

uint64_t AcAttrGetParams(void *a1, uint64_t a2, void *__dst)
{
  if (!a1 || !*a1)
  {
    return 4294967292;
  }

  result = 4294967292;
  if (a2)
  {
    if (__dst)
    {
      memcpy(__dst, a1 + 1, 0x2E8uLL);
      return 0;
    }
  }

  return result;
}

uint64_t AcAttrPreProcess(uint64_t a1, unsigned int *a2, float32x2_t *a3, _DWORD *a4, uint64_t a5, _DWORD *a6, int *a7)
{
  if (!a1 || !*a1)
  {
    return 4294967292;
  }

  result = 4294967292;
  if (a2 && a3 && a4 && a5 && a6 && a7)
  {
    result = AcAttrNode::setUpNetBuffers(a3[27].u32[1], a5, (a1 + 8), a7);
    if (!result)
    {
      return AcAttrNode::preProcess(*a1, *a2, a2[1], a2 + 2, a3 + 28, a3[27].u32[1], a4, a7, a6);
    }
  }

  return result;
}

uint64_t AcAttrPreProcessCropResizeRef(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    return 4294967292;
  }

  result = 4294967292;
  if (a2)
  {
    if (*a1)
    {
      if (a6)
      {
        if (a4)
        {
          if (a5)
          {
            if (*a3)
            {
              if ((*(a3 + 12) & 3) == 0)
              {
                result = AcAttrNode::setUpNetBuffers(*a4, a6, (a1 + 8), (a1 + 752));
                if (!result)
                {
                  v10 = *a4;
                  if (v10)
                  {
                    v11 = a3;
                    v12 = 0;
                    v13 = 0;
                    v14 = (a4 + 101);
                    v15 = (a1 + 768);
                    while (1)
                    {
                      v16 = *(v15 - 2);
                      if (!v16)
                      {
                        break;
                      }

                      if (LOBYTE(a4[v12 + 1]))
                      {
                        if (!rtcv::simCropResize(*v11, *(v11 + 12) >> 2, *(v11 + 8), *(v11 + 16), 0, 0, 0, v16, *v14, v14[1], *(v15 - 2) / fmaxf(v14[3], 1.0), *(v15 - 1) >> 2, *(v15 - 2), *v15))
                        {
                          return 4294967288;
                        }

                        v10 = *a4;
                        v11 = a3;
                      }

                      result = 0;
                      ++v13;
                      v15 += 6;
                      v12 += 10;
                      v14 += 4;
                      if (v13 >= v10)
                      {
                        return result;
                      }
                    }

                    return 4294967292;
                  }

                  else
                  {
                    return 0;
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

__n128 AcAttrPostProcess(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, char *a5, __n128 result)
{
  if (a1 && *a1 && a2 && a3 && a4 && a5 && !AcAttrNode::setUpNetBuffers(*(a5 + 55), a3, (a1 + 8), (a1 + 752)))
  {
    std::chrono::steady_clock::now();
    if (*(a5 + 55))
    {
      v16 = 0;
      v17 = a1 + 992;
      v18 = (a5 + 224);
      while (!AcAttrNode::postProcess(*a1, v17, 7, a4, v18, v16, result.n128_f64[0], v9, v10, v11, v12, v13, v14, v15))
      {
        ++v16;
        v17 += 168;
        v18 += 92;
        if (v16 >= *(a5 + 55))
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      if (*a5 <= 3u)
      {
        v19 = AcCommitHash();
        strncpy(a5 + 1, v19, 0x14uLL);
        v20 = &a5[20 * *a5];
        *(v20 + 37) = 0;
        *(v20 + 21) = *"attr";
        v21 = AcAttrNode::config(*a1);
        result = *v21;
        *(v20 + 117) = v21[1].n128_u32[0];
        *(v20 + 101) = result;
        ++*a5;
      }
    }
  }

  return result;
}

void sub_24BC54BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BC54E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v19);
  if (a15 < 0)
  {
    operator delete(__p);
    MEMORY[0x24C253380](v16, v15);
    _Unwind_Resume(a1);
  }

  MEMORY[0x24C253380](v16, v15);
  _Unwind_Resume(a1);
}

void sub_24BC550A0(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);

  _Unwind_Resume(a1);
}

void sub_24BC553FC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_24BC55688(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ik::PixelBufferScopeLock::~PixelBufferScopeLock(va);
  _Unwind_Resume(a1);
}

void sub_24BC55D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_24BC55F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t std::pair<std::string const,ik::Tensor>::pair[abi:ne200100]<char const*,ik::PixelBufferTensor &,0>(uint64_t a1, const char **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = strlen(*a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, v5, v6);
  }

  *(a1 + v7) = 0;
  v8 = *(a3 + 8);
  *(a1 + 40) = 0;
  *(a1 + 24) = &unk_285F8F1D8;
  *(a1 + 32) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a3 + 48);
  *(a1 + 64) = *(a3 + 40);
  *(a1 + 72) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_24BC560E8(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  std::pair<std::string const,ik::Tensor>::pair[abi:ne200100]<char const(&)[6],ik::PixelBufferTensor &,0>(v1);
  _Unwind_Resume(a1);
}

uint64_t **ik::core::GetOutput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::find<std::string>((a2 + 192), a3))
  {
    v13 = espresso_network_bind_buffer();
    v12 = 21;
    strcpy(__p, "Binding output buffer");
    ik::VerifyEspressoStatus(&v13, __p);
    if (v12 < 0)
    {
      operator delete(*__p);
    }

    *__p = 0;
    ik::EspressoTensor::EspressoTensor();
  }

  result = std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::find<std::string>((a2 + 192), a3);
  if (!result)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  *a1 = &unk_285F8F1D8;
  v7 = *(result + 12);
  *(a1 + 16) = 0;
  *(a1 + 8) = v7;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v9 = result[7];
  v8 = result[8];
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 40) = result[10];
  v10 = result[11];
  *(a1 + 48) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_285F8F338;
  return result;
}

{
  if (!std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::find<std::string>((a2 + 192), a3))
  {
    v13 = espresso_network_bind_buffer();
    v12 = 21;
    strcpy(__p, "Binding output buffer");
    ik::VerifyEspressoStatus(&v13, __p);
    if (v12 < 0)
    {
      operator delete(*__p);
    }

    *__p = 0;
    ik::EspressoTensor::EspressoTensor();
  }

  result = std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::find<std::string>((a2 + 192), a3);
  if (!result)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  *a1 = &unk_285F8F1D8;
  v7 = *(result + 12);
  *(a1 + 16) = 0;
  *(a1 + 8) = v7;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v9 = result[7];
  v8 = result[8];
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 40) = result[10];
  v10 = result[11];
  *(a1 + 48) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_285F8F338;
  return result;
}

void sub_24BC56378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BC56508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
    if ((a33 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a28);
  if ((a14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a9);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if (a20 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_6:
    operator delete(__p);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }

LABEL_13:
    __cxa_free_exception(v33);
    goto LABEL_14;
  }

LABEL_12:
  if (!v34)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

uint64_t ___ZN2ikL28IsAppleNeuralEngineAvailableEv_block_invoke_1()
{
  result = MGGetBoolAnswer();
  _MergedGlobals_3 = result;
  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::__assign_unique<std::pair<std::string const,ik::Tensor> const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (!v7 || a2 == a3)
    {
      v9 = v7;
    }

    else
    {
      do
      {
        std::string::operator=((v7 + 16), a2);
        *(v7 + 48) = *(a2 + 32);
        if (v7 + 16 != a2)
        {
          std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>((v7 + 56), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 3);
        }

        v11 = *(a2 + 64);
        v10 = *(a2 + 72);
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
        }

        v12 = *(v7 + 88);
        *(v7 + 80) = v11;
        *(v7 + 88) = v10;
        if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }

        v9 = *v7;
        std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::__node_insert_unique(a1, v7);
        a2 += 80;
        if (!v9)
        {
          break;
        }

        v7 = v9;
      }

      while (a2 != a3);
    }

    if (v9)
    {
      while (1)
      {
        v13 = *v9;
        v9[5] = &unk_285F8F1D8;
        v14 = v9[11];
        if (v14)
        {
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            break;
          }
        }

        v15 = v9[7];
        if (v15)
        {
          goto LABEL_23;
        }

LABEL_24:
        if (*(v9 + 39) < 0)
        {
          operator delete(v9[2]);
        }

        operator delete(v9);
        v9 = v13;
        if (!v13)
        {
          goto LABEL_29;
        }
      }

      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
      v15 = v9[7];
      if (!v15)
      {
        goto LABEL_24;
      }

LABEL_23:
      v9[8] = v15;
      operator delete(v15);
      goto LABEL_24;
    }
  }

LABEL_29:
  while (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,ik::Tensor> const&>(a1, a2);
    a2 += 80;
  }
}

void sub_24BC56814(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::__node_insert_unique(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  v6 = *(a2 + 24);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v17, v7, v8);
  *(a2 + 8) = v9;
  result = std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::__node_insert_unique_prepare[abi:ne200100](a1, v9, v4);
  if (!result)
  {
    v11 = a1[1];
    v12 = *(a2 + 8);
    v13 = vcnt_s8(v11);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      if (v12 >= *&v11)
      {
        v12 %= *&v11;
      }
    }

    else
    {
      v12 &= *&v11 - 1;
    }

    v14 = *a1;
    v15 = *(*a1 + 8 * v12);
    if (v15)
    {
      *a2 = *v15;
    }

    else
    {
      *a2 = a1[2];
      a1[2] = a2;
      *(v14 + 8 * v12) = a1 + 2;
      if (!*a2)
      {
        goto LABEL_15;
      }

      v16 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }

        v15 = (v14 + 8 * v16);
      }

      else
      {
        v15 = (v14 + 8 * (v16 & (*&v11 - 1)));
      }
    }

    *v15 = a2;
LABEL_15:
    ++a1[3];
    return a2;
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    while (1)
    {
      v3 = *v2;
      v2[5] = &unk_285F8F1D8;
      v4 = v2[11];
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          break;
        }
      }

      v5 = v2[7];
      if (v5)
      {
        goto LABEL_7;
      }

LABEL_8:
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
      if (!v3)
      {
        return;
      }
    }

    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = v2[7];
    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_7:
    v2[8] = v5;
    operator delete(v5);
    goto LABEL_8;
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_42;
  }

  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    if (v4 <= a2)
    {
      v7 = a2 % v4;
    }

    else
    {
      v7 = a2;
    }

    v8 = *(*a1 + 8 * v7);
    if (!v8)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v7 = (v4 - 1) & a2;
    v8 = *(*a1 + 8 * v7);
    if (!v8)
    {
      goto LABEL_42;
    }
  }

  v9 = *v8;
  if (*v8)
  {
    v10 = *(a3 + 23);
    if (v10 >= 0)
    {
      v11 = *(a3 + 23);
    }

    else
    {
      v11 = a3[1];
    }

    if (v10 >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    if (v6.u32[0] < 2uLL)
    {
      while (1)
      {
        v13 = v9[1];
        if (v13 == a2)
        {
          v14 = *(v9 + 39);
          v15 = v14;
          if (v14 < 0)
          {
            v14 = v9[3];
          }

          if (v14 == v11)
          {
            v16 = v15 >= 0 ? (v9 + 2) : v9[2];
            if (!memcmp(v16, v12, v11))
            {
              return v9;
            }
          }
        }

        else if ((v13 & (v4 - 1)) != v7)
        {
          goto LABEL_42;
        }

        v9 = *v9;
        if (!v9)
        {
          goto LABEL_42;
        }
      }
    }

    do
    {
      v17 = v9[1];
      if (v17 == a2)
      {
        v18 = *(v9 + 39);
        v19 = v18;
        if (v18 < 0)
        {
          v18 = v9[3];
        }

        if (v18 == v11)
        {
          v20 = v19 >= 0 ? (v9 + 2) : v9[2];
          if (!memcmp(v20, v12, v11))
          {
            return v9;
          }
        }
      }

      else
      {
        if (v17 >= v4)
        {
          v17 %= v4;
        }

        if (v17 != v7)
        {
          break;
        }
      }

      v9 = *v9;
    }

    while (v9);
  }

LABEL_42:
  v21 = (*(a1 + 24) + 1);
  v22 = *(a1 + 32);
  if (v4 && (v22 * v4) >= v21)
  {
    return 0;
  }

  v23 = 1;
  if (v4 >= 3)
  {
    v23 = (v4 & (v4 - 1)) != 0;
  }

  v24 = v23 | (2 * v4);
  v25 = vcvtps_u32_f32(v21 / v22);
  if (v24 <= v25)
  {
    prime = v25;
  }

  else
  {
    prime = v24;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v4 = *(a1 + 8);
  }

  if (prime <= v4)
  {
    if (prime >= v4)
    {
      return 0;
    }

    v27 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (v4 < 3 || (v28 = vcnt_s8(v4), v28.i16[0] = vaddlv_u8(v28), v28.u32[0] > 1uLL))
    {
      v30 = prime;
      v31 = std::__next_prime(v27);
      if (v30 <= v31)
      {
        prime = v31;
      }

      else
      {
        prime = v30;
      }

      if (prime >= v4)
      {
        return 0;
      }
    }

    else
    {
      v29 = 1 << -__clz(v27 - 1);
      if (v27 >= 2)
      {
        v27 = v29;
      }

      if (prime <= v27)
      {
        prime = v27;
      }

      if (prime >= v4)
      {
        return 0;
      }
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__do_rehash<true>(a1, prime);
  return 0;
}

__n128 swap(void *a1, unsigned int a2, unsigned int a3)
{
  v3 = *a1 + 36 * a2;
  v4 = *(v3 + 32);
  v6 = *v3;
  result = *(v3 + 16);
  v7 = *a1 + 36 * a3;
  v8 = *(v7 + 32);
  v9 = *(v7 + 16);
  *v3 = *v7;
  *(v3 + 16) = v9;
  *(v3 + 32) = v8;
  v10 = *a1 + 36 * a3;
  *v10 = v6;
  *(v10 + 16) = result;
  *(v10 + 32) = v4;
  return result;
}

__n128 percolateUp(uint64_t *a1, unsigned int a2)
{
  if (a2 >= 2)
  {
    v28 = v2;
    v29 = v3;
    v5 = a2;
    do
    {
      v6 = a1[2];
      v7 = *a1;
      v8 = *a1 + 36 * v5;
      v9 = *(v8 + 32);
      v10 = *(v8 + 16);
      v26[0] = *v8;
      v26[1] = v10;
      v27 = v9;
      v11 = v5 >> 1;
      v12 = (v7 + 36 * (v5 >> 1));
      v13 = *v12;
      v14 = v12[1];
      v25 = *(v12 + 8);
      v24[0] = v13;
      v24[1] = v14;
      if (v6(v26, v24) < 1)
      {
        break;
      }

      v16 = *a1 + 36 * v5;
      v17 = *(v16 + 32);
      v18 = *v16;
      result = *(v16 + 16);
      v19 = *a1 + 36 * v11;
      v20 = *(v19 + 32);
      v21 = *(v19 + 16);
      *v16 = *v19;
      *(v16 + 16) = v21;
      *(v16 + 32) = v20;
      v22 = *a1 + 36 * v11;
      *v22 = v18;
      *(v22 + 16) = result;
      *(v22 + 32) = v17;
      v23 = v5 > 3;
      v5 >>= 1;
    }

    while (v23);
  }

  return result;
}

__n128 percolateDown(uint64_t *a1, unsigned int a2)
{
  v2 = 2 * a2;
  v3 = *(a1 + 2);
  if (2 * a2 <= v3)
  {
    v4 = a2;
    do
    {
      if (v2 >= v3)
      {
        v14 = v2;
      }

      else
      {
        v6 = a1[2];
        v7 = *a1;
        v8 = *a1 + 36 * (v2 | 1);
        v9 = *(v8 + 32);
        v10 = *(v8 + 16);
        v35 = *v8;
        v36 = v10;
        v37 = v9;
        v11 = (v7 + 36 * v2);
        v12 = *v11;
        v13 = v11[1];
        v34 = *(v11 + 8);
        v32 = v12;
        v33 = v13;
        if (v6(&v35, &v32) <= 0)
        {
          v14 = v2;
        }

        else
        {
          v14 = v2 + 1;
        }
      }

      v15 = a1[2];
      v16 = *a1;
      v17 = *a1 + 36 * v4;
      v18 = *(v17 + 32);
      v19 = *(v17 + 16);
      v35 = *v17;
      v36 = v19;
      v37 = v18;
      v20 = (v16 + 36 * v14);
      v21 = *v20;
      v22 = v20[1];
      v34 = *(v20 + 8);
      v32 = v21;
      v33 = v22;
      if (v15(&v35, &v32))
      {
        break;
      }

      v24 = *a1 + 36 * v4;
      v25 = *(v24 + 32);
      v26 = *v24;
      result = *(v24 + 16);
      v27 = 36 * v14;
      v28 = *a1 + v27;
      v29 = *(v28 + 32);
      v30 = *(v28 + 16);
      *v24 = *v28;
      *(v24 + 16) = v30;
      *(v24 + 32) = v29;
      v31 = *a1 + v27;
      *v31 = v26;
      *(v31 + 16) = result;
      *(v31 + 32) = v25;
      v2 = 2 * v14;
      v3 = *(a1 + 2);
      v4 = v14;
    }

    while (2 * v14 <= v3);
  }

  return result;
}

uint64_t initHeap(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 12) = a3;
  *(result + 16) = a4;
  *(result + 24) = 305419896;
  return result;
}

__n128 addToHeap(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 6) != 305419896)
  {
    addToHeap();
  }

  v4 = *(a1 + 2);
  if (v4 == *(a1 + 3) - 1)
  {
    v5 = a1[2];
    v6 = *a1;
    v7 = *(*a1 + 52);
    v35 = *(*a1 + 36);
    v36 = v7;
    v37 = *(v6 + 68);
    v8 = *(a2 + 16);
    v32 = *a2;
    v33 = v8;
    v34 = *(a2 + 32);
    if (!v5(&v35, &v32))
    {
      return result;
    }

    removeFromHeap(a1, &v35);
    v4 = *(a1 + 2);
  }

  v10 = *a1;
  v11 = v4 + 1;
  *(a1 + 2) = v11;
  v12 = v10 + 36 * v11;
  result = *a2;
  v13 = *(a2 + 16);
  *(v12 + 32) = *(a2 + 32);
  *v12 = result;
  *(v12 + 16) = v13;
  v14 = *(a1 + 2);
  if (v14 >= 2)
  {
    do
    {
      v15 = a1[2];
      v16 = *a1;
      v17 = *a1 + 36 * v14;
      v18 = *(v17 + 32);
      v19 = *(v17 + 16);
      v35 = *v17;
      v36 = v19;
      v37 = v18;
      v20 = v14 >> 1;
      v21 = v16 + 36 * (v14 >> 1);
      v22 = *v21;
      v23 = *(v21 + 16);
      v34 = *(v21 + 32);
      v32 = v22;
      v33 = v23;
      if (v15(&v35, &v32) < 1)
      {
        break;
      }

      v24 = *a1 + 36 * v14;
      v25 = *(v24 + 32);
      v26 = *v24;
      result = *(v24 + 16);
      v27 = *a1 + 36 * v20;
      v28 = *(v27 + 32);
      v29 = *(v27 + 16);
      *v24 = *v27;
      *(v24 + 16) = v29;
      *(v24 + 32) = v28;
      v30 = *a1 + 36 * v20;
      *v30 = v26;
      *(v30 + 16) = result;
      *(v30 + 32) = v25;
      v31 = v14 > 3;
      v14 >>= 1;
    }

    while (v31);
  }

  return result;
}

uint64_t removeFromHeap(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 6) != 305419896)
  {
    removeFromHeap();
  }

  if (!*(a1 + 2))
  {
    return 4294967290;
  }

  v3 = *(*a1 + 36);
  v4 = *(*a1 + 52);
  *(a2 + 32) = *(*a1 + 68);
  *a2 = v3;
  *(a2 + 16) = v4;
  v5 = *(a1 + 2);
  *(a1 + 2) = v5 - 1;
  v6 = *a1;
  v7 = *(*a1 + 68);
  v8 = *(*a1 + 52);
  v9 = *(*a1 + 36);
  v5 *= 36;
  v10 = *a1 + v5;
  v11 = *(v10 + 32);
  v12 = *(v10 + 16);
  *(v6 + 36) = *v10;
  *(v6 + 52) = v12;
  *(v6 + 68) = v11;
  v13 = *a1 + v5;
  *v13 = v9;
  *(v13 + 16) = v8;
  *(v13 + 32) = v7;
  v14 = *(a1 + 2);
  if (v14 >= 2)
  {
    v15 = 1;
    v16 = 2;
    do
    {
      if (v16 >= v14)
      {
        v25 = v16;
      }

      else
      {
        v17 = a1[2];
        v18 = *a1;
        v19 = *a1 + 36 * (v16 | 1);
        v20 = *(v19 + 32);
        v21 = *(v19 + 16);
        v47 = *v19;
        v48 = v21;
        v49 = v20;
        v22 = (v18 + 36 * v16);
        v23 = *v22;
        v24 = v22[1];
        v46 = *(v22 + 8);
        v44 = v23;
        v45 = v24;
        if (v17(&v47, &v44) <= 0)
        {
          v25 = v16;
        }

        else
        {
          v25 = v16 + 1;
        }
      }

      v26 = a1[2];
      v27 = *a1;
      v28 = *a1 + 36 * v15;
      v29 = *(v28 + 32);
      v30 = *(v28 + 16);
      v47 = *v28;
      v48 = v30;
      v49 = v29;
      v31 = (v27 + 36 * v25);
      v32 = *v31;
      v33 = v31[1];
      v46 = *(v31 + 8);
      v44 = v32;
      v45 = v33;
      if (v26(&v47, &v44))
      {
        break;
      }

      v34 = *a1 + 36 * v15;
      v35 = *(v34 + 32);
      v37 = *v34;
      v36 = *(v34 + 16);
      v38 = 36 * v25;
      v39 = *a1 + v38;
      v40 = *(v39 + 32);
      v41 = *(v39 + 16);
      *v34 = *v39;
      *(v34 + 16) = v41;
      *(v34 + 32) = v40;
      v42 = *a1 + v38;
      *v42 = v37;
      *(v42 + 16) = v36;
      *(v42 + 32) = v35;
      v16 = 2 * v25;
      v14 = *(a1 + 2);
      v15 = v25;
    }

    while (2 * v25 <= v14);
  }

  return 0;
}

void sub_24BC573EC(_Unwind_Exception *a1)
{
  v4 = v3;
  MEMORY[0x24C253380](v4, 0x1020C40F15AEE48);
  MEMORY[0x24C253380](v2, 0x20C4093837F09);

  _Unwind_Resume(a1);
}

void sub_24BC57788(_Unwind_Exception *a1)
{
  ik::PixelBufferScopeLock::~PixelBufferScopeLock((v1 - 176));
  ik::PixelBufferScopeLock::~PixelBufferScopeLock((v1 - 152));
  _Unwind_Resume(a1);
}

void sub_24BC57AF0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_24BC57B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = FTVTScaler;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void ik::core::msr::MSR::Resample(_BYTE *a1, __CVBuffer *a2, __CVBuffer *a3, uint64_t a4)
{
  if (*(a4 + 32) == 1)
  {
    v8 = *(a4 + 16);
    v9 = *(a4 + 24);
    v65.origin = *a4;
    v65.size.width = v8;
    v65.size.height = v9;
    origin = v65.origin;
    if (*(a4 + 72) != 1)
    {
LABEL_3:
      Width = CVPixelBufferGetWidth(a3);
      Height = CVPixelBufferGetHeight(a3);
      v12 = 0.0;
      v13 = 0.0;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = CVPixelBufferGetWidth(a2);
    v9 = CVPixelBufferGetHeight(a2);
    v65.origin = 0u;
    v65.size.width = v8;
    v65.size.height = v9;
    origin = 0;
    if (*(a4 + 72) != 1)
    {
      goto LABEL_3;
    }
  }

  v13 = *(a4 + 40);
  v12 = *(a4 + 48);
  Width = *(a4 + 56);
  Height = *(a4 + 64);
LABEL_6:
  v66 = v13;
  v67 = v12;
  v68 = Width;
  v69 = Height;
  v14 = Width / v8;
  v15 = Height / v9;
  if (v15 >= v14)
  {
    v16 = Width / v8;
  }

  else
  {
    v16 = Height / v9;
  }

  if (v16 >= 0.25)
  {
    v17 = v14 >= v15 ? Width / v8 : Height / v9;
    if (v17 <= 4.0)
    {
      if (CVPixelBufferGetIOSurface(a2) && CVPixelBufferGetIOSurface(a3))
      {
        if (!IOSurfaceGetCompressionTypeOfPlane() || (v31 = CVPixelBufferGetWidth(a3), v71.size.height = CVPixelBufferGetHeight(a3), v71.origin.x = 0.0, v71.origin.y = 0.0, v71.size.width = v31, v72.origin.x = v13, v72.origin.y = v12, v72.size.width = Width, v72.size.height = Height, CGRectEqualToRect(v71, v72)))
        {
          v57.__r_.__value_.__r.__words[2] = vcvtd_n_u64_f64(v8, 0x10uLL);
          v58 = vcvtd_n_u64_f64(v9, 0x10uLL);
          v59 = v13;
          v60 = v12;
          *&v57.__r_.__value_.__l.__data_ = vcvtq_n_u64_f64(origin, 0x10uLL);
          LODWORD(v61) = Width;
          HIDWORD(v61) = Height;
          v64 = *byte_285F8F680;
          v32 = *MEMORY[0x277CBECE8];
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v63.__r_.__value_.__r.__words[0] = Mutable;
          CFDictionarySetValue(Mutable, *MEMORY[0x277D1AEA8], *MEMORY[0x277CBED10]);
          if (*(a4 + 88) != 1)
          {
            goto LABEL_46;
          }

          if (*(a4 + 80))
          {
            v34 = 2;
          }

          else
          {
            v34 = 0;
          }

          LODWORD(valuePtr[0]) = v34;
          if (*(a4 + 81))
          {
            v34 |= 1u;
            LODWORD(valuePtr[0]) = v34;
          }

          v35 = *(a4 + 84);
          switch(v35)
          {
            case 3:
              v36 = v34 ^ 7;
              break;
            case 2:
              v36 = v34 ^ 3;
              break;
            case 1:
              v36 = v34 | 4;
              break;
            default:
LABEL_45:
              v37 = CFNumberCreate(v32, kCFNumberSInt32Type, valuePtr);
              CFDictionarySetValue(Mutable, *MEMORY[0x277D1AEA0], v37);
              CFRelease(v37);
LABEL_46:
              if (*(a4 + 144) == 1)
              {
                if (!*(a4 + 104))
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(exception, "Output histogram pointer is null.");
                  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                }

                LODWORD(valuePtr[0]) = 1;
                v38 = CFNumberCreate(v32, kCFNumberSInt32Type, valuePtr);
                CFDictionarySetValue(Mutable, *MEMORY[0x277D1AE60], v38);
                CFRelease(v38);
                v39 = CFNumberCreate(v32, kCFNumberCGFloatType, (a4 + 112));
                CFDictionarySetValue(Mutable, *MEMORY[0x277D1AE70], v39);
                CFRelease(v39);
                v40 = CFNumberCreate(v32, kCFNumberCGFloatType, (a4 + 120));
                CFDictionarySetValue(Mutable, *MEMORY[0x277D1AE78], v40);
                CFRelease(v40);
                v41 = CFNumberCreate(v32, kCFNumberCGFloatType, (a4 + 128));
                CFDictionarySetValue(Mutable, *MEMORY[0x277D1AE80], v41);
                CFRelease(v41);
                v42 = CFNumberCreate(v32, kCFNumberCGFloatType, (a4 + 136));
                CFDictionarySetValue(Mutable, *MEMORY[0x277D1AE68], v42);
                CFRelease(v42);
              }

              operator new();
          }

          LODWORD(valuePtr[0]) = v36;
          goto LABEL_45;
        }

        v44 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v44, "Destination ROI must be the entire bounds for compressed pixel formats.");
      }

      else
      {
        v44 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v44, "Pixel buffer is not backed by an IOSurface.");
      }

      __cxa_throw(v44, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  if ((*a1 & 1) == 0)
  {
    __cxa_allocate_exception(0x10uLL);
    ik::core::msr::DescribeRect(&v63, &v65);
  }

  v18 = fmax(fmin(v15, 4.0), 0.25);
  v19 = ceil(v9 * v18);
  v20 = floor(v9 * v18);
  if (v18 >= 1.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  v22 = fmax(fmin(v14, 4.0), 0.25);
  v23 = ceil(v8 * v22);
  v24 = floor(v8 * v22);
  if (v22 >= 1.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v70.width = v25;
  v70.height = v21;
  ik::core::msr::MSR::GetIntermediateTensor(a1, v70, PixelFormatType, &v57);
  v27 = *(v61 + 8);
  v64.__r_.__value_.__r.__words[0] = &unk_285F8F1F8;
  *&v64.__r_.__value_.__r.__words[1] = v27;
  if (CVPixelBufferLockBaseAddress(v27, 0))
  {
    v43 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v43, "Failed to lock pixel buffer.");
    goto LABEL_54;
  }

  v64.__r_.__value_.__r.__words[0] = &unk_285F8F2D0;
  v28 = *(v61 + 8);
  v29 = *(a4 + 16);
  valuePtr[0] = *a4;
  valuePtr[1] = v29;
  LOBYTE(v48[0]) = *(a4 + 32);
  LOBYTE(v48[1]) = 0;
  v50 = 0;
  LOBYTE(v51) = 0;
  v52 = 0;
  v53 = 0;
  v54 = *(a4 + 96);
  v55 = 0;
  v56 = 0;
  ik::core::msr::MSR::Resample(a1, a2, v28, valuePtr);
  LOBYTE(valuePtr[0]) = 0;
  LOBYTE(v48[0]) = 0;
  *&v48[1] = *(a4 + 40);
  v49 = *(a4 + 56);
  v50 = *(a4 + 72);
  v51 = *(a4 + 80);
  v52 = *(a4 + 88);
  v53 = *(a4 + 92);
  v54 = *(a4 + 96);
  v55 = 0;
  v56 = 0;
  ik::core::msr::MSR::Resample(a1, v28, a3, valuePtr);
  v64.__r_.__value_.__r.__words[0] = &unk_285F8F1F8;
  if (CVPixelBufferUnlockBaseAddress(v64.__r_.__value_.__l.__size_, v64.__r_.__value_.__r.__words[2]))
  {
    v43 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v43, "Failed to unlock pixel buffer.");
LABEL_54:
    __cxa_throw(v43, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v57.__r_.__value_.__r.__words[0] = &unk_285F8F1D8;
  v30 = v62;
  if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  if (v57.__r_.__value_.__r.__words[2])
  {
    v58 = v57.__r_.__value_.__r.__words[2];
    operator delete(v57.__r_.__value_.__r.__words[2]);
  }
}

void sub_24BC58948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a16 < 0)
  {
    operator delete(a11);
    if ((a50 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a39 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a50 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a45);
  if ((a39 & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v58 - 217) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a34);
  if ((*(v58 - 217) & 0x80000000) == 0)
  {
LABEL_5:
    if (a56 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v58 - 240));
  if (a56 < 0)
  {
LABEL_6:
    operator delete(__p);
    if ((v57 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }

LABEL_13:
    __cxa_free_exception(v56);
    _Unwind_Resume(a1);
  }

LABEL_12:
  if (!v57)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void sub_24BC58D00(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_24BC58D1C(_Unwind_Exception *a1)
{
  MEMORY[0x24C253360](v2, 0x1000C8077774924);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t ik::core::msr::MSR::GetIntermediateTensor@<X0>(uint64_t this@<X0>, CGSize a2@<0:D0, 8:D1>, unsigned int a3@<W1>, uint64_t a4@<X8>)
{
  v26 = a2;
  v27 = a3;
  v5 = *(this + 32);
  if (!v5)
  {
LABEL_31:
    v21[0] = a2.width;
    v21[1] = a2.height;
    v22 = a3;
    v23 = 1;
    v24 = 0;
    v25 = 0;
    ik::PixelBufferTensor::PixelBufferTensor(a4, v21);
  }

  v6 = *(this + 32);
  while (1)
  {
    v7 = *(v6 + 4);
    if (a2.width < v7)
    {
      goto LABEL_4;
    }

    v8 = *(v6 + 5);
    if (a2.width == v7 && a2.height < v8)
    {
      goto LABEL_4;
    }

    v10 = a2.width == v7;
    if (v8 >= a2.height)
    {
      v10 = 0;
    }

    if (v7 >= a2.width && !v10)
    {
      v11 = *(v6 + 12);
      if (v11 > a3)
      {
        goto LABEL_4;
      }

      if (v11 >= a3)
      {
        break;
      }
    }

    ++v6;
LABEL_4:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_31;
    }
  }

  while (1)
  {
    while (1)
    {
      v12 = *(v5 + 4);
      if (a2.width >= v12)
      {
        v13 = *(v5 + 5);
        if (a2.width != v12 || a2.height >= v13)
        {
          v15 = a2.width == v12;
          if (v13 >= a2.height)
          {
            v15 = 0;
          }

          if (v12 < a2.width || v15)
          {
            goto LABEL_29;
          }

          v16 = *(v5 + 12);
          if (v16 <= a3)
          {
            break;
          }
        }
      }

      v5 = *v5;
      if (!v5)
      {
        goto LABEL_30;
      }
    }

    if (v16 >= a3)
    {
      break;
    }

LABEL_29:
    v5 = v5[1];
    if (!v5)
    {
LABEL_30:
      std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
    }
  }

  *a4 = &unk_285F8F1D8;
  v17 = *(v5 + 16);
  *(a4 + 16) = 0;
  *(a4 + 8) = v17;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  v19 = v5[9];
  v18 = v5[10];
  if (v18 != v19)
  {
    if (((v18 - v19) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  *(a4 + 40) = v5[12];
  v20 = v5[13];
  *(a4 + 48) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  *a4 = &unk_285F8F2F0;
  return this;
}

void sub_24BC5904C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void ik::core::msr::Ensure<0,int>(uint64_t a1, int a2)
{
  if (a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v4 = std::string::append(&v11, " / status = ");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v12.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v10, a2);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v10;
    }

    else
    {
      v6 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v12, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v13);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

void sub_24BC59194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_4:
    if (a20 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_5:
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }

LABEL_11:
    __cxa_free_exception(v26);
    goto LABEL_12;
  }

LABEL_10:
  if (!v27)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void std::vector<std::pair<CGRect,CGRect>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    v3[2] = a2[2];
    v3[3] = v7;
    *v3 = v5;
    v3[1] = v6;
    v8 = (v3 + 4);
LABEL_3:
    *(a1 + 8) = v8;
    return;
  }

  v9 = *a1;
  v10 = v3 - *a1;
  v11 = v10 >> 6;
  v12 = (v10 >> 6) + 1;
  if (v12 >> 58)
  {
    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  v13 = v4 - v9;
  if (v13 >> 5 > v12)
  {
    v12 = v13 >> 5;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFC0)
  {
    v14 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    if (!(v14 >> 58))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v15 = (v11 << 6);
  v16 = a2[1];
  *v15 = *a2;
  v15[1] = v16;
  v17 = a2[3];
  v15[2] = a2[2];
  v15[3] = v17;
  v8 = (v11 << 6) + 64;
  memcpy(0, v9, v10);
  *a1 = 0;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (!v9)
  {
    goto LABEL_3;
  }

  operator delete(v9);
  *(a1 + 8) = v8;
}

void sub_24BC594F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_24BC596CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t *std::__tree<std::__value_type<std::pair<CGSize,unsigned int>,ik::PixelBufferTensor>,std::__map_value_compare<std::pair<CGSize,unsigned int>,std::__value_type<std::pair<CGSize,unsigned int>,ik::PixelBufferTensor>,std::less<std::pair<CGSize,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<CGSize,unsigned int>,ik::PixelBufferTensor>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v7, a2);
  a2[7] = &unk_285F8F1D8;
  v8 = a2[13];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = a2[9];
  if (v9)
  {
    a2[10] = v9;
    operator delete(v9);
  }

  operator delete(a2);
  return v4;
}

uint64_t **std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v16 = v14[1];
      v17 = *v16;
      v14[1] = *v16;
      if (v17)
      {
        *(v17 + 16) = v14;
      }

      v18 = v14[2];
      v16[2] = v18;
      v18[*v18 != v14] = v16;
      *v16 = v14;
      v14[2] = v16;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v19 = *v7;
    if (*v7 && *(v19 + 24) != 1)
    {
      v20 = v7[1];
      if (!v20)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v20 + 24) == 1)
      {
LABEL_62:
        *(v19 + 24) = 1;
        *(v7 + 24) = 0;
        v28 = v19[1];
        *v7 = v28;
        if (v28)
        {
          *(v28 + 16) = v7;
        }

        v29 = v7[2];
        v29[*v29 != v7] = v19;
        v19[1] = v7;
        v19[2] = v29;
        v7[2] = v19;
        v20 = v7;
      }

      else
      {
        v19 = v7;
      }

      v30 = v19[2];
      *(v19 + 24) = *(v30 + 24);
      *(v30 + 24) = 1;
      *(v20 + 24) = 1;
      v31 = *(v30 + 8);
      v32 = *v31;
      *(v30 + 8) = *v31;
      if (v32)
      {
        *(v32 + 16) = v30;
      }

      v33 = *(v30 + 16);
      v31[2] = v33;
      v33[*v33 != v30] = v31;
      *v31 = v30;
      *(v30 + 16) = v31;
      return result;
    }

    v20 = v7[1];
    if (v20 && *(v20 + 24) != 1)
    {
      goto LABEL_61;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v21 = v15[1];
    *v14 = v21;
    if (v21)
    {
      v21[2] = v14;
    }

    v22 = v14[2];
    v22[*v22 != v14] = v15;
    v15[1] = v14;
    v15[2] = v22;
    v14[2] = v15;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_69;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_69:
    v25 = v7;
  }

  else
  {
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v26 = *v25;
    v7[1] = *v25;
    if (v26)
    {
      *(v26 + 16) = v7;
    }

    v27 = v7[2];
    v25[2] = v27;
    v27[*v27 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  v34 = v25[2];
  *(v25 + 24) = *(v34 + 24);
  *(v34 + 24) = 1;
  *(v24 + 24) = 1;
  v35 = *v34;
  v36 = *(*v34 + 8);
  *v34 = v36;
  if (v36)
  {
    *(v36 + 16) = v34;
  }

  v37 = v34[2];
  v37[*v37 != v34] = v35;
  *(v35 + 8) = v34;
  *(v35 + 16) = v37;
  v34[2] = v35;
  return result;
}

double *std::__tree<std::__value_type<std::pair<CGSize,unsigned int>,ik::PixelBufferTensor>,std::__map_value_compare<std::pair<CGSize,unsigned int>,std::__value_type<std::pair<CGSize,unsigned int>,ik::PixelBufferTensor>,std::less<std::pair<CGSize,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<CGSize,unsigned int>,ik::PixelBufferTensor>>>::__emplace_unique_key_args<std::pair<CGSize,unsigned int>,std::piecewise_construct_t const&,std::tuple<std::pair<CGSize,unsigned int> const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_16:
    operator new();
  }

  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  while (1)
  {
    while (1)
    {
      v6 = v2;
      v7 = v2[4];
      if (v3 >= v7)
      {
        v8 = v2[5];
        if (v3 != v7 || v4 >= v8)
        {
          v10 = v3 == v7;
          if (v8 >= v4)
          {
            v10 = 0;
          }

          if (v7 < v3 || v10)
          {
            goto LABEL_15;
          }

          v11 = *(v6 + 12);
          if (v5 >= v11)
          {
            break;
          }
        }
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_16;
      }
    }

    if (v11 >= v5)
    {
      return v6;
    }

LABEL_15:
    v2 = *(v6 + 1);
    if (!v2)
    {
      goto LABEL_16;
    }
  }
}

void ik::core::msr::MSR::MSR(uint64_t a1, _OWORD *a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = a1 + 32;
  *(a1 + 40) = 0;
  operator new();
}

void sub_24BC59EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v37 - 57) < 0)
  {
    operator delete(*(v37 - 80));
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a33 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_4:
    if (a27 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a28);
  if (a27 < 0)
  {
LABEL_5:
    operator delete(__p);
    if ((v35 & 1) == 0)
    {
LABEL_12:
      if (a15 < 0)
      {
        operator delete(a10);
        std::__tree<std::__value_type<std::pair<CGSize,unsigned int>,ik::PixelBufferTensor>,std::__map_value_compare<std::pair<CGSize,unsigned int>,std::__value_type<std::pair<CGSize,unsigned int>,ik::PixelBufferTensor>,std::less<std::pair<CGSize,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<CGSize,unsigned int>,ik::PixelBufferTensor>>>::destroy(v33, *v36);
        _Unwind_Resume(a1);
      }

      std::__tree<std::__value_type<std::pair<CGSize,unsigned int>,ik::PixelBufferTensor>,std::__map_value_compare<std::pair<CGSize,unsigned int>,std::__value_type<std::pair<CGSize,unsigned int>,ik::PixelBufferTensor>,std::less<std::pair<CGSize,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<CGSize,unsigned int>,ik::PixelBufferTensor>>>::destroy(v33, *v36);
      _Unwind_Resume(a1);
    }

LABEL_11:
    __cxa_free_exception(v34);
    goto LABEL_12;
  }

LABEL_10:
  if (!v35)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void std::__tree<std::__value_type<std::pair<CGSize,unsigned int>,ik::PixelBufferTensor>,std::__map_value_compare<std::pair<CGSize,unsigned int>,std::__value_type<std::pair<CGSize,unsigned int>,ik::PixelBufferTensor>,std::less<std::pair<CGSize,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<CGSize,unsigned int>,ik::PixelBufferTensor>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<CGSize,unsigned int>,ik::PixelBufferTensor>,std::__map_value_compare<std::pair<CGSize,unsigned int>,std::__value_type<std::pair<CGSize,unsigned int>,ik::PixelBufferTensor>,std::less<std::pair<CGSize,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<CGSize,unsigned int>,ik::PixelBufferTensor>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<CGSize,unsigned int>,ik::PixelBufferTensor>,std::__map_value_compare<std::pair<CGSize,unsigned int>,std::__value_type<std::pair<CGSize,unsigned int>,ik::PixelBufferTensor>,std::less<std::pair<CGSize,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<CGSize,unsigned int>,ik::PixelBufferTensor>>>::destroy(a1, a2[1]);
    a2[7] = &unk_285F8F1D8;
    v4 = a2[13];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = a2[9];
    if (v5)
    {
      a2[10] = v5;
      operator delete(v5);
    }

    operator delete(a2);
  }
}

double AcSaliencyNode::AcSaliencyNode(uint64_t a1, uint64_t a2)
{
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a2 + 8) = 0;
  *&result = 0xDE7C00000001;
  *a2 = 0xDE7C00000001;
  return result;
}

{
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a2 + 8) = 0;
  *&result = 0xDE7C00000001;
  *a2 = 0xDE7C00000001;
  return result;
}

void AcSaliencyNode::~AcSaliencyNode(AcSaliencyNode *this)
{
  if (*(this + 15))
  {
    MEMORY[0x24C253360](*(this + 15), 0x1000C8077774924);
  }
}

{
  if (*(this + 15))
  {
    MEMORY[0x24C253360](*(this + 15), 0x1000C8077774924);
  }
}

uint64_t AcSaliencyNode::init(uint64_t a1, _OWORD *a2, _DWORD *a3)
{
  if (*a3 != 1)
  {
    return 4294967289;
  }

  v3 = a3[1];
  if (v3 == 56956 || v3 == 56945)
  {
    v6 = &kAcSaliencyNodeConfigDefaultRawData;
    if (a2)
    {
      v6 = a2;
    }

    if (*(v6 + 6))
    {
      if (*(v6 + 5))
      {
        v7 = *v6;
        v8 = v6[1];
        v9 = v6[3];
        *(a1 + 32) = v6[2];
        *(a1 + 48) = v9;
        *a1 = v7;
        *(a1 + 16) = v8;
        v10 = v6[4];
        v11 = v6[5];
        v12 = v6[6];
        *(a1 + 112) = *(v6 + 28);
        *(a1 + 80) = v11;
        *(a1 + 96) = v12;
        *(a1 + 64) = v10;
        *(a1 + 128) = 4 * *(a1 + 44) + 4 + (4 * *(a1 + 44) + 4) * *(a1 + 48);
        operator new[]();
      }
    }
  }

  return 4294967292;
}

void AcSaliencyNode::postProcess(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, __n128 *a5)
{
  if (*a4 == 1 && a3 == 1 && a4[1] == 56945)
  {
    v6 = *(a1 + 48);
    a5[374].n128_u16[1] = *(a1 + 44);
    a5[374].n128_u16[0] = v6;
    std::chrono::steady_clock::now();

    AcSaliencyNode::postProcessSaliency(a1, a2, 1, v10, a5, v11, v12);
  }
}

__n128 AcSaliencyNode::postProcessSaliency(uint64_t a1, uint64_t a2, int a3, int a4, __n128 *a5, double a6, double a7)
{
  a5[91].n128_u32[3] = 0;
  if (a3 && (v9 = *(a2 + 12), v10 = a5[374].n128_u16[0], v9 == v10) && (v11 = *(a2 + 8), v12 = a5[374].n128_u16[1], v11 == v12))
  {
    v42 = v7;
    v43 = v8;
    v14 = a5 + 94;
    if (v11 && v9)
    {
      v15 = 0;
      LODWORD(v16) = 1;
      v17 = a5 + 94;
      do
      {
        if (v16)
        {
          v18 = 0;
          do
          {
            LOBYTE(a7) = *(*a2 + (v18 + v15 * *(a2 + 16)));
            *&a7 = vmovl_s16(*&vmovl_s8(*&a7)).u64[0];
            *&a7 = ((*(a1 + 68) * SLODWORD(a7)) + 1.0) * 255.0;
            v17->n128_u8[v18++] = *&a7;
            v16 = *(a2 + 12);
          }

          while (v18 < v16);
          v11 = *(a2 + 8);
        }

        ++v15;
        v17 += 5;
      }

      while (v15 < v11);
      v10 = a5[374].n128_u16[0];
      LODWORD(v12) = a5[374].n128_u16[1];
    }

    v19 = &a5[91].n128_i8[12];
    a5[374].n128_u16[2] = 80;
    a5[374].n128_u8[6] = 1;
    v38 = a5 + 94;
    v39 = v12;
    v40 = v10;
    v41 = 0x100000050;
    convertSaliencyMapToBoundingBoxes(&v38, a5, *(a1 + 120), *(a1 + 128), a1 + 132, 50, *(a1 + 104), *(a1 + 108));
    if (!*(a2 + 8) || !*(a2 + 12))
    {
      goto LABEL_41;
    }

    v24 = 0;
    v25 = 0;
    v26 = 0;
    LODWORD(v27) = 1;
    do
    {
      if (v27)
      {
        *v22.i32 = v25;
        v28 = a5[92].n128_f32[3];
        if (v28 <= v25)
        {
          v31 = 0;
          v32 = a5[92].n128_f32[2];
          do
          {
            v23.i8[0] = *(*a2 + (v31 + v24 * *(a2 + 16)));
            v33 = ((*(a1 + 68) * vmovl_s16(*&vmovl_s8(v23)).i32[0]) - *(a1 + 112)) / (1.0 - *(a1 + 112));
            v23 = 0;
            if (v33 >= 0.0)
            {
              *v23.i32 = v33;
              if (v33 > 1.0)
              {
                v23.i32[0] = 1.0;
              }
            }

            v34 = (*v23.i32 * 255.0);
            *v23.i32 = v31;
            if (v32 <= v31 && (v32 + a5[93].n128_f32[0]) > *v23.i32)
            {
              *v23.i32 = v28 + a5[93].n128_f32[1];
              if (v34)
              {
                v35 = *v23.i32 <= *v22.i32;
              }

              else
              {
                v35 = 1;
              }

              v36 = !v35;
              v26 |= v36;
            }

            v14->n128_u8[v31++] = v34;
          }

          while (v31 < *(a2 + 12));
          LODWORD(v27) = *(a2 + 12);
        }

        else
        {
          v29 = 0;
          do
          {
            v22.i8[0] = *(*a2 + (v29 + v24 * *(a2 + 16)));
            v30 = ((*(a1 + 68) * vmovl_s16(*&vmovl_s8(v22)).i32[0]) - *(a1 + 112)) / (1.0 - *(a1 + 112));
            v22 = 0;
            if (v30 >= 0.0)
            {
              *v22.i32 = v30;
              if (v30 > 1.0)
              {
                v22.i32[0] = 1.0;
              }
            }

            *v22.i32 = *v22.i32 * 255.0;
            v14->n128_u8[v29++] = *v22.i32;
            v27 = *(a2 + 12);
          }

          while (v29 < v27);
        }
      }

      ++v25;
      v14 += 5;
      ++v24;
    }

    while (v25 < *(a2 + 8));
    if (((*v19 != 0) & v26) == 0)
    {
LABEL_41:
      *(v19 + 8) = 0;
      *v19 = 0u;
      *(v19 + 1) = 0u;
    }

    result = a5[92];
    *(a1 + 148) = a5[93];
    *(a1 + 132) = result;
  }

  else
  {
    a5[374].n128_u8[6] = 0;
  }

  return result;
}

uint64_t AcSaliencyNode::getParams(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*a2 != 1)
  {
    return 4294967289;
  }

  if (a2[1] != 56945)
  {
    return 4294967292;
  }

  v3 = *(a1 + 20);
  *(a3 + 64) = *(a1 + 36);
  *(a3 + 48) = v3;
  v4 = *(a1 + 44);
  *(a3 + 1240) = *(a1 + 60);
  *(a3 + 1224) = v4;
  strncpy((a3 + 3336), (a1 + 72), 0x20uLL);
  return 0;
}

uint64_t acDetBboxCoderDecodeAll(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, char a17, uint64_t a18, unsigned int a19, uint64_t a20, uint64_t a21)
{
  v172 = a1 + 11;
  if ((a1[11] & 0xFFFFFFFD) != 5)
  {
    acDetBboxCoderDecodeAll();
  }

  v21 = a1;
  v22 = a1[26];
  if (v22)
  {
    v170 = 0;
    v24 = 0;
    v146 = 0;
    v25 = 345;
    if (a17)
    {
      v25 = 355;
    }

    v138 = a1 + 303;
    v139 = a1 + 57;
    v126 = a1 + 39;
    v127 = a1 + 51;
    v125 = a1 + 45;
    v26 = a1 + 365;
    v27 = a1 + 309;
    v165 = &a1[v25];
    v149 = a1 + 385;
    v150 = a1 + 372;
    v169 = a1 + 365;
    v178 = a1 + 309;
    while (1)
    {
      v29 = v21[393];
      v30 = v146;
      v31 = v146;
      if (v146 >= v29)
      {
        LODWORD(v32) = v146 - v29 + 2 * v29;
        v34 = v139[v146];
        if (v32 != -1)
        {
          v35 = 0;
          v36 = *(a7 + 4 * v32);
          v162 = v36;
          v37 = v172;
          v38 = v24;
          v39 = v138;
          goto LABEL_17;
        }

        v33 = 0xFFFFFFFFLL;
        v32 = 0xFFFFFFFFLL;
      }

      else
      {
        v32 = 2 * v146;
        v33 = (2 * v146) | 1;
        v34 = v139[v146];
      }

      v39 = v138;
      v36 = *(a7 + 4 * v32);
      v35 = a3 + 24 * v33;
      v162 = *(a7 + 4 * v33);
      v37 = &v138[v146];
      v38 = v24;
LABEL_17:
      v173 = &v39[v146];
      if (!*v173)
      {
        acDetBboxCoderDecodeAll();
      }

      v40 = (a3 + 24 * v32);
      if (v40[5])
      {
        acDetBboxCoderDecodeAll();
      }

      if (v35 && *(v35 + 20))
      {
        acDetBboxCoderDecodeAll();
      }

      v41 = a4 + 24 * v146;
      if (*(v41 + 20))
      {
        acDetBboxCoderDecodeAll();
      }

      v42 = a5 + 24 * v146;
      if (*(v42 + 20))
      {
        acDetBboxCoderDecodeAll();
      }

      v43 = a6 + 24 * v146;
      if (*(v43 + 20))
      {
        acDetBboxCoderDecodeAll();
      }

      v44 = *v37 * v34;
      v45 = v40[2];
      v46 = v45 / v44;
      if (v45 / v44 * v44 != v45)
      {
        acDetBboxCoderDecodeAll();
      }

      v174 = v40[3];
      if (v174 != *(v41 + 12))
      {
        acDetBboxCoderDecodeAll();
      }

      if (*(v41 + 8) != 4 * v34 * v46)
      {
        acDetBboxCoderDecodeAll();
      }

      if (!v35)
      {
        v167 = 0;
        if (!v34)
        {
          goto LABEL_10;
        }

LABEL_31:
        v47 = *(v41 + 16) * v46;
        v159 = v47;
        v158 = 2 * v47;
        v157 = 3 * v47;
        if (v44 > v45)
        {
          v28 = a16 - v38;
          if (a16 < v38)
          {
            v28 = 0;
          }

          if (v28 <= v34 - 1)
          {
            goto LABEL_132;
          }
        }

        else
        {
          if (a16 >= v38)
          {
            v48 = a16 - v38;
          }

          else
          {
            v48 = 0;
          }

          if (v174)
          {
            v124 = v48;
            v49 = 0;
            v155 = *(a8 + 4 * v146);
            v161 = *&v127[v146];
            v154 = *&v126[v146];
            v132 = *&v125[v146];
            v133 = v40;
            v50 = v40[4] * v46;
            v152 = (*(v42 + 16) * v46);
            v151 = (*(v43 + 16) * v46);
            v51 = -v162;
            v122 = v34;
            v168 = v35;
            v130 = v46;
            v163 = a2;
            v147 = *(a13 + 4 * v146);
            v148 = *(a12 + 4 * v146);
LABEL_37:
            if (v49 == v124)
            {
              goto LABEL_132;
            }

            v52 = 0;
            v137 = (4 * v159 * v49);
            v136 = v50 * v49;
            v129 = v167 * v49;
            v156 = v38;
            v123 = v49;
            v134 = v151 * v49;
            v135 = v152 * v49;
            v131 = v38;
            while (2)
            {
              if (v35)
              {
                v166 = *v35 + v129 * v21[394] + *(v35 + 16) * v52;
                v53 = v173;
              }

              else
              {
                v166 = 0;
                v53 = v172;
              }

              v54 = 0;
              v55 = (*v41 + v137 + *(v41 + 16) * v52);
              v171 = *v133 + v136 * *v53 + v133[4] * v52;
              v56 = (*(a5 + 24 * v146) + v135 * v21[371] + *(a5 + 24 * v146 + 16) * v52);
              v57 = (*(a6 + 24 * v146) + v134 * v21[384] + *(a6 + 24 * v146 + 16) * v52);
              v144 = v52;
              *&a10 = v161;
              *&a11 = v132;
              v160 = v132 + (v52 * v161);
LABEL_46:
              v58 = v171 + v54;
              v59 = *v172;
              if (v35)
              {
                v60 = *v173;
                if (v60)
                {
                  v61 = 0;
                  v62 = -INFINITY;
                  do
                  {
                    LOBYTE(a10) = *(v58 + (v50 * v61));
                    *&a10 = vmovl_s16(*&vmovl_s8(*&a10)).u64[0];
                    *&a10 = SLODWORD(a10);
                    if (v62 < *&a10)
                    {
                      v62 = *&a10;
                      LODWORD(v59) = v61;
                    }

                    ++v61;
                  }

                  while (v60 != v61);
                }

                else
                {
                  v62 = -INFINITY;
                }

                v67 = v166 + v54;
                v68 = *(v166 + v54);
                v69 = v21[394] * v167;
                if (v167 < v69)
                {
                  v70 = v67 + v69;
                  v71 = (v67 + v167);
                  do
                  {
                    if (*v71 > v68)
                    {
                      v68 = *v71;
                    }

                    v71 += v167;
                  }

                  while (v71 < v70);
                }

                v72 = v68;
                *&a9 = (v36 * v62) + (v51 * v72);
                v73 = v26[v59];
                LODWORD(a10) = *(a2 + 4 * v73);
                if (*&a9 < *&a10)
                {
                  v27 = v178;
                }

                else
                {
                  v175 = v57;
                  v74 = v56;
                  if (v60)
                  {
                    v75 = 0;
                    v59 = v59;
                    v76 = 0.0;
                    v77 = -INFINITY;
                    do
                    {
                      LOBYTE(a9) = *(v58 + (v50 * v75));
                      *&a9 = expf(v36 * vmovl_s16(*&vmovl_s8(*&a9)).i32[0]);
                      if (!v59)
                      {
                        v77 = *&a9;
                      }

                      v76 = v76 + *&a9;
                      ++v75;
                      --v59;
                      --v60;
                    }

                    while (v60);
                  }

                  else
                  {
                    v76 = 0.0;
                    v77 = -INFINITY;
                  }

                  *&a9 = expf(v162 * v72);
                  v35 = v168;
                  v26 = v169;
                  v27 = v178;
                  v31 = v146;
                  v56 = v74;
                  a2 = v163;
                  v21 = a1;
                  v57 = v175;
                  v84 = v77 / (*&a9 + v76);
                  if (v84 > *&v165[v73])
                  {
                    goto LABEL_97;
                  }
                }
              }

              else
              {
                v63 = 0;
                if (v59)
                {
                  v64 = 0;
                  v65 = 0;
                  LODWORD(a9) = -8388608;
                  v66 = *v172;
                  LODWORD(a10) = -8388608;
                  do
                  {
                    LOBYTE(a11) = *(v58 + (v50 * v63));
                    *&a11 = vmovl_s16(*&vmovl_s8(*&a11)).u64[0];
                    *&a11 = v36 * SLODWORD(a11);
                    if (v65 < *v173 && v63 == v27[6 * v31 + v65])
                    {
                      if (*&a11 > *&a9)
                      {
                        v64 = (*&a11 - *&a10) < *(a2 + 4 * v26[v65]);
                        LODWORD(a9) = LODWORD(a11);
                        v66 = v65;
                      }

                      ++v65;
                    }

                    else if (*&a11 > *&a10)
                    {
                      if (v66 == v59)
                      {
                        LODWORD(a10) = LODWORD(a11);
                        v66 = *v172;
                      }

                      else
                      {
                        v64 = (*&a9 - *&a11) < *(a2 + 4 * v26[v66]);
                        LODWORD(a10) = LODWORD(a11);
                      }
                    }

                    ++v63;
                  }

                  while (v59 != v63);
                  if (v64)
                  {
                    goto LABEL_45;
                  }

                  v176 = v57;
                  v153 = v56;
                  v78 = 0;
                  v79 = 0;
                  v80 = *v173;
                  v81 = 0.0;
                  v82 = -INFINITY;
                  do
                  {
                    while (1)
                    {
                      LOBYTE(a9) = *(v58 + (v50 * v78));
                      *&a9 = expf(v36 * vmovl_s16(*&vmovl_s8(*&a9)).i32[0]);
                      if (v79 < v80)
                      {
                        break;
                      }

                      v31 = v146;
                      v81 = v81 + *&a9;
                      if (v59 == ++v78)
                      {
                        goto LABEL_91;
                      }
                    }

                    v31 = v146;
                    if (*&a9 <= v82)
                    {
                      *&a10 = v82;
                    }

                    else
                    {
                      *&a10 = *&a9;
                    }

                    if (*&a9 <= v82)
                    {
                      v83 = v66;
                    }

                    else
                    {
                      v83 = v79;
                    }

                    if (v78 == v178[6 * v146 + v79])
                    {
                      ++v79;
                      v82 = *&a10;
                      v66 = v83;
                    }

                    v81 = v81 + *&a9;
                    ++v78;
                  }

                  while (v59 != v78);
LABEL_91:
                  v63 = v66;
                  a2 = v163;
                  v21 = a1;
                  v35 = v168;
                  v26 = v169;
                  v57 = v176;
                  v27 = v178;
                  v56 = v153;
                }

                else
                {
                  v81 = 0.0;
                  v82 = -INFINITY;
                }

                v73 = v26[v63];
                v84 = v82 / v81;
                if (v84 > *&v165[v73])
                {
LABEL_97:
                  if (v170 >= a19)
                  {
                    acDetBboxCoderDecodeAll();
                  }

                  v177 = v57;
                  v85 = v56;
                  LODWORD(a9) = *(a15 + 4 * v156);
                  v86 = v21[5];
                  v87 = *&a9 / v86;
                  LOBYTE(a9) = v55[v157];
                  v88 = v87 * expf(v155 * vmovl_s16(*&vmovl_s8(*&a9)).i32[0]);
                  v89.i32[0] = *(a14 + 4 * v156);
                  v90 = v21[6];
                  v91 = *v89.i32 / v90;
                  v89.i8[0] = v55[v158];
                  v98.n128_f32[0] = expf(v155 * vmovl_s16(*&vmovl_s8(v89)).i32[0]);
                  v92 = v170;
                  v98.n128_f32[0] = v91 * v98.n128_f32[0];
                  v93.i8[0] = v55[v159];
                  *&a10 = vmovl_s16(*&vmovl_s8(v93)).u64[0];
                  v94.i8[0] = *v55;
                  v95 = (v154 + (v54 * v161)) / v90;
                  *v94.i32 = (v95 + ((v155 * vmovl_s16(*&vmovl_s8(v94)).i32[0]) * v91)) + (v98.n128_f32[0] * -0.5);
                  v96 = a18 + 36 * v170;
                  v98.n128_f32[0] = v98.n128_f32[0] + *v94.i32;
                  *&a10 = ((v160 / v86) + ((v155 * SLODWORD(a10)) * v87)) + (v88 * -0.5);
                  *v96 = v94.i32[0];
                  *(v96 + 4) = LODWORD(a10);
                  *(v96 + 8) = v98.n128_u32[0];
                  *(v96 + 12) = v88 + *&a10;
                  *(v96 + 16) = v73;
                  *(v96 + 20) = v84;
                  v97 = v95 + (v91 * -0.5);
                  *&a11 = (v160 / v86) + (v87 * -0.5);
                  v98.n128_f32[0] = ((v97 + (v91 + v97)) * -0.5) + ((*v94.i32 + v98.n128_f32[0]) * 0.5);
                  *&a10 = ((*&a11 + (v87 + *&a11)) * -0.5) + ((*&a10 + (v88 + *&a10)) * 0.5);
                  *&a11 = (v87 + *&a11) - *&a11;
                  v98.n128_f32[0] = sqrtf(((*&a10 / *&a11) * (*&a10 / *&a11)) + ((v98.n128_f32[0] / ((v91 + v97) - v97)) * (v98.n128_f32[0] / ((v91 + v97) - v97))));
                  *&a10 = 1.0 - v84;
                  v98.n128_f32[0] = (1.0 - v84) + v98.n128_f32[0];
                  *(v96 + 32) = v98.n128_u32[0];
                  if (v73 == 1)
                  {
                    v99 = *a20;
                    v100 = v21[371];
                    v101 = v100;
                    v102 = *a20;
                    v103 = v85;
                    v51 = -v162;
                    if (v100)
                    {
                      do
                      {
                        v98.n128_u8[0] = *v103;
                        v98 = vmovl_s16(*&vmovl_s8(v98.n128_u64[0]));
                        v98.n128_f32[0] = v148 * v98.n128_i32[0];
                        v102->i32[0] = v98.n128_u32[0];
                        v102 = (v102 + 4);
                        v103 += v152;
                        --v101;
                      }

                      while (v101);
                    }

                    bmSoftmax(v99, v99->f32, v100, v98);
                    v105 = v21[371];
                    if (*(a20 + 12) != v105)
                    {
                      acDetBboxCoderDecodeAll();
                    }

                    if (v105 < 2)
                    {
                      v106 = 0;
                      v109 = v151;
                      v110 = v177;
                    }

                    else
                    {
                      LODWORD(v106) = 0;
                      v107 = **a20;
                      v108 = 1;
                      v109 = v151;
                      v110 = v177;
                      do
                      {
                        v111 = *(*a20 + 4 * v108);
                        if (v111 <= v107)
                        {
                          v106 = v106;
                        }

                        else
                        {
                          v106 = v108;
                        }

                        if (v111 > v107)
                        {
                          v107 = *(*a20 + 4 * v108);
                        }

                        ++v108;
                      }

                      while (v105 != v108);
                    }

                    v104.n128_f32[0] = v150[v106];
                    *(v96 + 24) = v104.n128_u32[0];
                    v112 = *a21;
                    v113 = v21[384];
                    v114 = v113;
                    v115 = *a21;
                    v116 = v110;
                    if (v113)
                    {
                      do
                      {
                        v104.n128_u8[0] = *v116;
                        v104 = vmovl_s16(*&vmovl_s8(v104.n128_u64[0]));
                        v104.n128_f32[0] = v147 * v104.n128_i32[0];
                        v115->i32[0] = v104.n128_u32[0];
                        v115 = (v115 + 4);
                        v116 += v109;
                        --v114;
                      }

                      while (v114);
                    }

                    bmSoftmax(v112, v112->f32, v113, v104);
                    v117 = v21[384];
                    if (*(a21 + 12) != v117)
                    {
                      acDetBboxCoderDecodeAll();
                    }

                    if (v117 < 2)
                    {
                      v118 = 0;
                      v35 = v168;
                      v26 = v169;
                      v31 = v146;
                      v56 = v85;
                      v57 = v177;
                    }

                    else
                    {
                      LODWORD(v118) = 0;
                      v119 = **a21;
                      v120 = 1;
                      v35 = v168;
                      v26 = v169;
                      v31 = v146;
                      v56 = v85;
                      v57 = v177;
                      do
                      {
                        LODWORD(a10) = *(*a21 + 4 * v120);
                        if (*&a10 <= v119)
                        {
                          v118 = v118;
                        }

                        else
                        {
                          v118 = v120;
                        }

                        if (*&a10 > v119)
                        {
                          v119 = *(*a21 + 4 * v120);
                        }

                        ++v120;
                      }

                      while (v117 != v120);
                    }

                    *(v96 + 28) = v149[v118];
                    if (++v170 >= a19)
                    {
                      return v170;
                    }
                  }

                  else
                  {
                    *(v96 + 24) = 0;
                    HIDWORD(a9) = 0;
                    v35 = v168;
                    v26 = v169;
                    v31 = v146;
                    v51 = -v162;
                    v56 = v85;
                    v57 = v177;
                    *(v96 + 28) = 0;
                    ++v170;
                    if (v92 + 1 >= a19)
                    {
                      return v170;
                    }
                  }
                }
              }

LABEL_45:
              ++v55;
              ++v56;
              ++v57;
              if (++v54 == v174)
              {
                v52 = v144 + 1;
                v41 = a4 + 24 * v146;
                if (v144 + 1 < v130)
                {
                  continue;
                }

                v49 = v123 + 1;
                v38 = v131 + 1;
                v30 = v146;
                if (v123 + 1 == v122)
                {
                  v24 = v131 + 1;
                  v22 = v21[26];
                  goto LABEL_10;
                }

                goto LABEL_37;
              }

              goto LABEL_46;
            }
          }

          if (v48 <= v34 - 1)
          {
LABEL_132:
            acDetBboxCoderDecodeAll();
          }
        }

        v24 = v34 + v38;
        goto LABEL_10;
      }

      v167 = *(v35 + 16) * v46;
      if (v34)
      {
        goto LABEL_31;
      }

LABEL_10:
      v146 = v30 + 1;
      if (v30 + 1 >= v22)
      {
        return v170;
      }
    }
  }

  return 0;
}

uint64_t acDetBboxCoderGetClsBufferInds(uint64_t result, unsigned int a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  v5 = a2 - result + 2 * result;
  v6 = 2 * a2;
  if (a2 >= result)
  {
    v6 = -1;
  }

  else
  {
    v5 = -1;
  }

  *a3 = v5;
  if (a2 < result)
  {
    v7 = (2 * a2) | 1;
  }

  else
  {
    v7 = -1;
  }

  *a4 = v6;
  *a5 = v7;
  return result;
}

uint64_t acDetBboxCoderDecodeAllFloat(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, char a10, uint64_t a11, unsigned int a12, uint64_t a13, uint64_t a14)
{
  v176 = a1 + 11;
  if ((a1[11] & 0xFFFFFFFD) != 5)
  {
    acDetBboxCoderDecodeAllFloat();
  }

  v14 = a1;
  v15 = a1[26];
  if (v15)
  {
    v16 = a2;
    v172 = 0;
    v17 = 0;
    v148 = 0;
    v18 = 345;
    if (a10)
    {
      v18 = 355;
    }

    v141 = a1 + 57;
    v142 = a1 + 303;
    v130 = a1 + 39;
    v131 = a1 + 51;
    v129 = a1 + 45;
    v19 = a1 + 365;
    v20 = a1 + 309;
    v165 = &a1[v18];
    v149 = a1 + 385;
    v150 = a1 + 372;
    v168 = a1 + 365;
    v177 = a1 + 309;
    while (1)
    {
      v22 = v14[393];
      v23 = v148;
      v24 = 2 * v148;
      if (v148 < v22)
      {
        v25 = -1;
      }

      else
      {
        v25 = v148 - v22 + 2 * v22;
      }

      if (v148 < v22)
      {
        v26 = (2 * v148) | 1;
      }

      else
      {
        v24 = -1;
        v26 = -1;
      }

      v27 = v148;
      v28 = a3 + 24 * v26;
      v29 = v176;
      if (v25 == -1)
      {
        v29 = &v142[v27];
        v30 = v28;
      }

      else
      {
        v30 = 0;
      }

      if (v25 != -1)
      {
        v24 = v25;
      }

      v174 = &v142[v27];
      if (!v142[v148])
      {
        acDetBboxCoderDecodeAllFloat();
      }

      v31 = (a3 + 24 * v24);
      if (v31[5] != 6)
      {
        acDetBboxCoderDecodeAllFloat();
      }

      v32 = v141[v148];
      if (v30 && *(v30 + 20) != 6)
      {
        acDetBboxCoderDecodeAllFloat();
      }

      v33 = v148;
      v34 = a4 + 24 * v148;
      if (*(v34 + 20) != 6)
      {
        acDetBboxCoderDecodeAllFloat();
      }

      v35 = a5 + 24 * v148;
      if (*(v35 + 20) != 6)
      {
        acDetBboxCoderDecodeAllFloat();
      }

      v36 = a6 + 24 * v148;
      if (*(v36 + 20) != 6)
      {
        acDetBboxCoderDecodeAllFloat();
      }

      v37 = *v29 * v32;
      v38 = v31[2];
      v39 = v38 / v37;
      if (v38 / v37 * v37 != v38)
      {
        acDetBboxCoderDecodeAllFloat();
      }

      v175 = v31[3];
      if (v175 != *(v34 + 12))
      {
        acDetBboxCoderDecodeAllFloat();
      }

      if (*(v34 + 8) != 4 * v32 * v39)
      {
        acDetBboxCoderDecodeAllFloat();
      }

      v40 = v31[4] * v39;
      if ((v40 & 3) != 0)
      {
        acDetBboxCoderDecodeAllFloat();
      }

      if (v30)
      {
        v166 = (*(v30 + 16) * v39) >> 2;
        v41 = v17;
        if (!v32)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v166 = 0;
        v41 = v17;
        if (!v32)
        {
          goto LABEL_8;
        }
      }

      if (v37 > v38)
      {
        v124 = a9 - v41;
        if (a9 < v41)
        {
          v124 = 0;
        }

        if (v124 <= v32 - 1)
        {
LABEL_153:
          acDetBboxCoderDecodeAllFloat();
        }

        v17 = v41 + v32;
      }

      else
      {
        if (a9 >= v41)
        {
          v42 = a9 - v41;
        }

        else
        {
          v42 = 0;
        }

        if (v175)
        {
          v128 = v42;
          v136 = v31;
          v125 = v141[v148];
          v43 = 0;
          v162 = *&v131[v148];
          v158 = *&v130[v148];
          v135 = *&v129[v148];
          v44 = v40 >> 2;
          v45 = *(v34 + 16) * v39;
          v152 = (*(v35 + 16) * v39) >> 2;
          v151 = (*(v36 + 16) * v39) >> 2;
          v127 = v45 & 0xFFFFFFFC;
          v156 = 2 * (v45 >> 2);
          v157 = v45 >> 2;
          v155 = 3 * (v45 >> 2);
          v46 = 4 * v166;
          v167 = v30;
          v133 = v39;
LABEL_41:
          if (v43 == v128)
          {
            goto LABEL_153;
          }

          v47 = 0;
          v140 = v127 * v43;
          v139 = v44 * v43;
          v132 = v166 * v43;
          v159 = v41;
          v126 = v43;
          v137 = v151 * v43;
          v138 = v152 * v43;
          v134 = v41;
          while (2)
          {
            if (v30)
            {
              v48 = *v30 + 4 * v132 * v14[394] + ((*(v30 + 16) * v47) & 0xFFFFFFFC);
              v49 = v174;
            }

            else
            {
              v48 = 0;
              v49 = v176;
            }

            v50 = 0;
            v51 = (*v34 + 4 * v140 + ((*(v34 + 16) * v47) & 0xFFFFFFFC));
            v173 = *v136 + 4 * v139 * *v49 + 4 * ((v136[4] * v47) >> 2);
            v154 = *(a5 + 24 * v148) + 4 * v138 * v14[371] + 4 * *(a5 + 24 * v148 + 16) * v47;
            v153 = *(a6 + 24 * v148) + 4 * v137 * v14[384] + 4 * *(a6 + 24 * v148 + 16) * v47;
            v147 = v47;
            v52 = v135 + (v47 * v162);
            v53 = (v48 + v46);
            v169 = v48;
LABEL_50:
            v54 = v173 + 4 * v50;
            v55 = *v176;
            if (v30)
            {
              v56 = *v174;
              if (v56)
              {
                v57 = 0;
                v58 = -INFINITY;
                do
                {
                  if (*(v54 + 4 * v44 * v57) > v58)
                  {
                    v58 = *(v54 + 4 * v44 * v57);
                    LODWORD(v55) = v57;
                  }

                  ++v57;
                }

                while (v56 != v57);
              }

              else
              {
                v58 = -INFINITY;
              }

              v66 = (v48 + 4 * v50);
              v67 = *v66;
              v68 = v14[394] * v166;
              if (v166 < v68)
              {
                v69 = &v66[v68];
                v70 = v53;
                do
                {
                  if (*v70 > v67)
                  {
                    v67 = *v70;
                  }

                  v70 = (v70 + v46);
                }

                while (v70 < v69);
              }

              v71 = v19[v55];
              if ((v58 - v67) < *(v16 + 4 * v71))
              {
                v20 = v177;
              }

              else
              {
                v170 = v53;
                if (v56)
                {
                  v72 = 0;
                  v73 = v55;
                  v74 = 0.0;
                  v75 = -INFINITY;
                  do
                  {
                    v76 = expf(*(v54 + 4 * v44 * v72));
                    if (!v73)
                    {
                      v75 = v76;
                    }

                    v74 = v74 + v76;
                    ++v72;
                    --v73;
                    --v56;
                  }

                  while (v56);
                }

                else
                {
                  v74 = 0.0;
                  v75 = -INFINITY;
                }

                v86 = expf(v67);
                v14 = a1;
                v16 = a2;
                v30 = v167;
                v19 = v168;
                v20 = v177;
                v33 = v148;
                v48 = v169;
                v53 = v170;
                v85 = v75 / (v86 + v74);
                if (v85 > *&v165[v71])
                {
                  goto LABEL_101;
                }
              }
            }

            else
            {
              v59 = 0;
              if (v55)
              {
                v60 = 0;
                v61 = 0;
                v62 = -INFINITY;
                v63 = *v176;
                v64 = -INFINITY;
                do
                {
                  v65 = *(v54 + 4 * v44 * v59);
                  if (v61 < *v174 && v59 == v20[6 * v33 + v61])
                  {
                    if (v65 > v62)
                    {
                      v60 = (v65 - v64) < *(v16 + 4 * v19[v61]);
                      v62 = *(v54 + 4 * v44 * v59);
                      v63 = v61;
                    }

                    ++v61;
                  }

                  else if (v65 > v64)
                  {
                    if (v63 == v55)
                    {
                      v64 = *(v54 + 4 * v44 * v59);
                      v63 = *v176;
                    }

                    else
                    {
                      v60 = (v62 - v65) < *(v16 + 4 * v19[v63]);
                      v64 = *(v54 + 4 * v44 * v59);
                    }
                  }

                  ++v59;
                }

                while (v55 != v59);
                if (v60)
                {
                  goto LABEL_49;
                }

                v171 = v53;
                v77 = 0;
                v78 = 0;
                v79 = *v174;
                v80 = 0.0;
                v81 = -INFINITY;
                do
                {
                  while (1)
                  {
                    v84 = expf(*(v54 + 4 * v44 * v77));
                    if (v78 < v79)
                    {
                      break;
                    }

                    v33 = v148;
                    v80 = v80 + v84;
                    if (v55 == ++v77)
                    {
                      goto LABEL_95;
                    }
                  }

                  v33 = v148;
                  if (v84 <= v81)
                  {
                    v82 = v81;
                  }

                  else
                  {
                    v82 = v84;
                  }

                  if (v84 <= v81)
                  {
                    v83 = v63;
                  }

                  else
                  {
                    v83 = v78;
                  }

                  if (v77 == v177[6 * v148 + v78])
                  {
                    ++v78;
                    v81 = v82;
                    v63 = v83;
                  }

                  v80 = v80 + v84;
                  ++v77;
                }

                while (v55 != v77);
LABEL_95:
                v59 = v63;
                v14 = a1;
                v16 = a2;
                v30 = v167;
                v19 = v168;
                v20 = v177;
                v48 = v169;
                v53 = v171;
              }

              else
              {
                v80 = 0.0;
                v81 = -INFINITY;
              }

              v71 = v19[v59];
              v85 = v81 / v80;
              if (v85 > *&v165[v71])
              {
LABEL_101:
                if (v172 >= a12)
                {
                  acDetBboxCoderDecodeAllFloat();
                }

                v87 = v53;
                v88 = v14[5];
                v89 = *(a8 + 4 * v159) / v88;
                v90 = v89 * expf(v51[v155]);
                v91 = v14[6];
                v92 = *(a7 + 4 * v159) / v91;
                v101.n128_f32[0] = expf(v51[v156]);
                v93 = v172;
                v101.n128_f32[0] = v92 * v101.n128_f32[0];
                v94 = (v158 + (v50 * v162)) / v91;
                v95 = (v94 + (*v51 * v92)) + (v101.n128_f32[0] * -0.5);
                v96 = a11 + 36 * v172;
                v101.n128_f32[0] = v101.n128_f32[0] + v95;
                v97 = ((v52 / v88) + (v51[v157] * v89)) + (v90 * -0.5);
                *v96 = v95;
                *(v96 + 4) = v97;
                *(v96 + 8) = v101.n128_u32[0];
                *(v96 + 12) = v90 + v97;
                *(v96 + 16) = v71;
                *(v96 + 20) = v85;
                v98 = v94 + (v92 * -0.5);
                v99 = (v52 / v88) + (v89 * -0.5);
                v101.n128_f32[0] = ((v98 + (v92 + v98)) * -0.5) + ((v95 + v101.n128_f32[0]) * 0.5);
                v100 = ((v99 + (v89 + v99)) * -0.5) + ((v97 + (v90 + v97)) * 0.5);
                v101.n128_f32[0] = (1.0 - v85) + sqrtf(((v100 / ((v89 + v99) - v99)) * (v100 / ((v89 + v99) - v99))) + ((v101.n128_f32[0] / ((v92 + v98) - v98)) * (v101.n128_f32[0] / ((v92 + v98) - v98))));
                *(v96 + 32) = v101.n128_u32[0];
                if (v71 == 1)
                {
                  v102 = *a13;
                  v103 = v14[371];
                  v104 = v103;
                  v105 = *a13;
                  v106 = v154;
                  if (v103)
                  {
                    do
                    {
                      v101.n128_u32[0] = *v106;
                      v105->i32[0] = *v106;
                      v105 = (v105 + 4);
                      v106 += v152;
                      --v104;
                    }

                    while (v104);
                  }

                  bmSoftmax(v102, v102->f32, v103, v101);
                  v108 = v14[371];
                  if (*(a13 + 12) != v108)
                  {
                    acDetBboxCoderDecodeAll();
                  }

                  if (v108 < 2)
                  {
                    v109 = 0;
                    v112 = v151;
                  }

                  else
                  {
                    LODWORD(v109) = 0;
                    v110 = **a13;
                    v111 = 1;
                    v112 = v151;
                    do
                    {
                      v113 = *(*a13 + 4 * v111);
                      if (v113 <= v110)
                      {
                        v109 = v109;
                      }

                      else
                      {
                        v109 = v111;
                      }

                      if (v113 > v110)
                      {
                        v110 = *(*a13 + 4 * v111);
                      }

                      ++v111;
                    }

                    while (v108 != v111);
                  }

                  v107.n128_f32[0] = v150[v109];
                  *(v96 + 24) = v107.n128_u32[0];
                  v114 = *a14;
                  v115 = v14[384];
                  v116 = v115;
                  v117 = *a14;
                  v118 = v153;
                  if (v115)
                  {
                    do
                    {
                      v107.n128_u32[0] = *v118;
                      v117->i32[0] = *v118;
                      v117 = (v117 + 4);
                      v118 += v112;
                      --v116;
                    }

                    while (v116);
                  }

                  bmSoftmax(v114, v114->f32, v115, v107);
                  v119 = v14[384];
                  if (*(a14 + 12) != v119)
                  {
                    acDetBboxCoderDecodeAll();
                  }

                  if (v119 < 2)
                  {
                    v120 = 0;
                    v30 = v167;
                    v19 = v168;
                    v33 = v148;
                    v48 = v169;
                    v53 = v87;
                  }

                  else
                  {
                    LODWORD(v120) = 0;
                    v121 = **a14;
                    v122 = 1;
                    v30 = v167;
                    v19 = v168;
                    v33 = v148;
                    v48 = v169;
                    v53 = v87;
                    do
                    {
                      v123 = *(*a14 + 4 * v122);
                      if (v123 <= v121)
                      {
                        v120 = v120;
                      }

                      else
                      {
                        v120 = v122;
                      }

                      if (v123 > v121)
                      {
                        v121 = *(*a14 + 4 * v122);
                      }

                      ++v122;
                    }

                    while (v119 != v122);
                  }

                  *(v96 + 28) = v149[v120];
                  if (++v172 >= a12)
                  {
                    return v172;
                  }
                }

                else
                {
                  *(v96 + 24) = 0;
                  v30 = v167;
                  v19 = v168;
                  v33 = v148;
                  v48 = v169;
                  v53 = v87;
                  *(v96 + 28) = 0;
                  ++v172;
                  if (v93 + 1 >= a12)
                  {
                    return v172;
                  }
                }
              }
            }

LABEL_49:
            ++v51;
            ++v50;
            ++v53;
            if (v50 == v175)
            {
              v47 = v147 + 1;
              v34 = a4 + 24 * v148;
              if (v147 + 1 < v133)
              {
                continue;
              }

              v43 = v126 + 1;
              v41 = v134 + 1;
              v23 = v148;
              if (v126 + 1 == v125)
              {
                v17 = v134 + 1;
                v15 = v14[26];
                goto LABEL_8;
              }

              goto LABEL_41;
            }

            goto LABEL_50;
          }
        }

        if (v42 <= v32 - 1)
        {
          goto LABEL_153;
        }

        v17 = v41 + v32;
      }

LABEL_8:
      v148 = v23 + 1;
      if (v23 + 1 >= v15)
      {
        return v172;
      }
    }
  }

  return 0;
}

float acDetBboxCoderRectToDetRect(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2)
  {
    v3 = 0;
    do
    {
      v4 = a3 + v3;
      result = *(a1 + v3 + 28);
      v6 = *(a1 + v3);
      *(v4 + 16) = *(a1 + v3 + 16);
      v7 = *(a1 + v3 + 20);
      *v4 = v6;
      *(v4 + 24) = v7;
      *(v4 + 32) = result;
      v3 += 36;
    }

    while (a1 + v3 < a1 + 36 * a2);
  }

  return result;
}

__n128 acObjectFromFace@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = *(a1 + 12);
  *(a2 + 12) = result;
  *(a2 + 28) = *(a1 + 88);
  return result;
}

__n128 acObjectToFace@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 72) = 0u;
  *(a2 + 60) = 0u;
  *(a2 + 44) = 0u;
  *(a2 + 28) = 0u;
  *a2 = *a1;
  result = *(a1 + 12);
  *(a2 + 12) = result;
  *(a2 + 88) = *(a1 + 28);
  return result;
}

float bmActivationTanh(float a1)
{
  v1 = expf(a1 + a1);
  v2 = 1.0;
  if (fabsf(v1) != INFINITY)
  {
    return (v1 + -1.0) / (v1 + 1.0);
  }

  return v2;
}

void bmActivationSigmoid(unint64_t a1, unsigned int a2, int a3, int a4)
{
  if (a3)
  {
    v4 = a3;
    if (a2)
    {
      v6 = 0;
      v7 = a4 - 4 * a2;
      v8 = 4 * a2;
      __asm { FMOV            V0.4S, #1.0 }

      v26 = _Q0;
      v25 = a2;
      do
      {
        v14 = (v8 + a1);
        if (v8 + a1 <= a1 + 4)
        {
          v14 = (a1 + 4);
        }

        v15 = v14 + ~a1;
        v16 = a1;
        if (v15 < 0xC)
        {
          goto LABEL_16;
        }

        v17 = (v15 >> 2) + 1;
        v16 = (a1 + 4 * (v17 & 0x7FFFFFFFFFFFFFFCLL));
        v18 = v17 & 0x7FFFFFFFFFFFFFFCLL;
        v19 = a1;
        do
        {
          v30 = vnegq_f32(*v19);
          v27 = expf(v30.f32[1]);
          v20.f32[0] = expf(v30.f32[0]);
          v20.f32[1] = v27;
          v28 = v20;
          v21 = expf(v30.f32[2]);
          v22 = v28;
          v22.f32[2] = v21;
          v29 = v22;
          v23 = expf(v30.f32[3]);
          v24 = v29;
          v24.f32[3] = v23;
          *v19++ = vdivq_f32(v26, vaddq_f32(v24, v26));
          v18 -= 4;
        }

        while (v18);
        if (v17 != (v17 & 0x7FFFFFFFFFFFFFFCLL))
        {
LABEL_16:
          do
          {
            *v16 = 1.0 / (expf(-*v16) + 1.0);
            ++v16;
          }

          while (v16 < a1 + 4 * v25);
        }

        a1 = v16 + v7;
        ++v6;
      }

      while (v6 != v4);
    }

    else
    {
      do
      {
        --v4;
      }

      while (v4);
    }
  }
}

void bmActivationSigmoid(const signed __int8 *a1, unsigned int a2, int a3, int a4, float a5, unsigned __int8 *a6, int a7)
{
  if (a3)
  {
    v12 = 0;
    v13 = a7 - a2;
    v14 = a4 - a2;
    v15 = a2;
    do
    {
      if (a2)
      {
        v16 = &a1[v15];
        do
        {
          v17 = *a1++;
          v18 = expf(-(v17 * a5));
          *a6++ = bmClamp(((1.0 / (v18 + 1.0)) * 255.0) + 0.5, 0.0, 255.0);
        }

        while (a1 < v16);
      }

      a1 += v14;
      a6 += v13;
      ++v12;
    }

    while (v12 != a3);
  }
}

void bmActivationTanh(unint64_t a1, unsigned int a2, int a3, int a4)
{
  if (a3)
  {
    v4 = a3;
    if (a2)
    {
      v6 = 0;
      v7 = a4 - 4 * a2;
      v8 = 4 * a2;
      v30 = v8;
      v31 = a2;
      v9.i64[0] = 0x7F0000007FLL;
      v9.i64[1] = 0x7F0000007FLL;
      v10 = vnegq_f32(v9);
      __asm { FMOV            V0.4S, #-1.0 }

      v33 = _Q0;
      v34 = v10;
      __asm { FMOV            V0.4S, #1.0 }

      v32 = _Q0;
      do
      {
        v17 = (v8 + a1);
        if (v8 + a1 <= a1 + 4)
        {
          v17 = (a1 + 4);
        }

        v18 = v17 + ~a1;
        v19 = a1;
        if (v18 < 0xC)
        {
          goto LABEL_18;
        }

        v20 = (v18 >> 2) + 1;
        v19 = (a1 + 4 * (v20 & 0x7FFFFFFFFFFFFFFCLL));
        v21 = v20 & 0x7FFFFFFFFFFFFFFCLL;
        v22 = a1;
        do
        {
          v38 = vaddq_f32(*v22, *v22);
          v35 = expf(v38.f32[1]);
          v23.f32[0] = expf(v38.f32[0]);
          v23.f32[1] = v35;
          v36 = v23;
          v24 = expf(v38.f32[2]);
          v25 = v36;
          v25.f32[2] = v24;
          v37 = v25;
          v26 = expf(v38.f32[3]);
          v27 = v37;
          v27.f32[3] = v26;
          *v22++ = vbslq_s8(vceqq_f32(vabsq_f32(v27), v34), v32, vdivq_f32(vaddq_f32(v27, v33), vaddq_f32(v27, v32)));
          v21 -= 4;
        }

        while (v21);
        v8 = v30;
        if (v20 != (v20 & 0x7FFFFFFFFFFFFFFCLL))
        {
LABEL_18:
          do
          {
            v28 = expf(*v19 + *v19);
            v29 = 1.0;
            if (fabsf(v28) != INFINITY)
            {
              v29 = (v28 + -1.0) / (v28 + 1.0);
            }

            *v19++ = v29;
          }

          while (v19 < a1 + 4 * v31);
        }

        a1 = v19 + v7;
        ++v6;
      }

      while (v6 != v4);
    }

    else
    {
      do
      {
        --v4;
      }

      while (v4);
    }
  }
}

void bmMunkres(float *a1, unsigned int a2, unsigned __int8 *a3, unsigned int a4, int32x4_t *a5, unsigned int a6, unsigned int *a7)
{
  if (!a2)
  {
    bmMunkres();
  }

  if (a6 < a2)
  {
    bmMunkres();
  }

  if (a2 == 1 || (v55 = 0, v56 = a1, v57 = a2, v58 = a2, v59 = 4 * a2, v60 = 6, *__dst = 0u, *__n = 0u, v51 = 0u, *v52 = 0u, bmMunkresGetTempBuffers(a2, a3, a4, &v51), !__dst[0]))
  {
    a5->i32[0] = 0;
    return;
  }

  bmMunkresSubtractMinPerRow(&v56);
  bmMunkresSubtractMinPerCol(&v56);
  while (bmMunkresMaxAssignments(&v56, v51, DWORD2(v51), a5, v52[0], v52[1]) != a2)
  {
    bmMunkresUpdateCost(&v56, v52[0], v52[1]);
  }

  v10 = 0;
  while (a5->i32[v10] != a2)
  {
    if (a2 == ++v10)
    {
      return;
    }
  }

  memcpy(__dst[1], a5, LODWORD(__n[0]));
  bzero(__dst[0], 4 * a2);
  v11 = 0;
  do
  {
    v12 = 0;
    v13 = 0;
    v14 = v56;
    v15 = __n[1];
    v16 = __dst[0];
    do
    {
      if (v13 >= v58 || v57 <= v11)
      {
        AcAttrNode::postProcess();
      }

      if (*(&v14[v13] + v11 * v59) <= 0.000001)
      {
        *(v15 + 4 * (v12 + v16[v13]++)) = v11;
      }

      ++v13;
      v12 += a2;
    }

    while (a2 != v13);
    ++v11;
  }

  while (v11 != a2);
  v18 = 0;
  v19 = __dst[0];
  v20 = __dst[1];
  if (a2 < 8 || (__dst[0] - __dst[1]) <= 0x1F)
  {
LABEL_70:
    v47 = &v20[4 * v18];
    v48 = &v19[4 * v18];
    v49 = a2 - v18;
    do
    {
      v50 = *v47++;
      if (v50 < a2)
      {
        *v48 = 1;
      }

      v48 += 4;
      --v49;
    }

    while (v49);
    goto LABEL_47;
  }

  v18 = a2 & 0xFFFFFFF8;
  v21 = vdupq_n_s32(a2);
  v22 = (__dst[1] + 16);
  v23 = __dst[0] + 16;
  v24 = v18;
  do
  {
    v25 = *v22;
    v26 = vmovn_s32(vcgtq_u32(v21, v22[-1]));
    if (v26.i8[0])
    {
      *(v23 - 4) = 1;
      if ((v26.i8[2] & 1) == 0)
      {
LABEL_31:
        if ((v26.i8[4] & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_40;
      }
    }

    else if ((v26.i8[2] & 1) == 0)
    {
      goto LABEL_31;
    }

    *(v23 - 3) = 1;
    if ((v26.i8[4] & 1) == 0)
    {
LABEL_32:
      if ((v26.i8[6] & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(v23 - 2) = 1;
    if ((v26.i8[6] & 1) == 0)
    {
LABEL_33:
      v27 = vmovn_s32(vcgtq_u32(v21, v25));
      if ((v27.i8[0] & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(v23 - 1) = 1;
    v27 = vmovn_s32(vcgtq_u32(v21, v25));
    if ((v27.i8[0] & 1) == 0)
    {
LABEL_34:
      if ((v27.i8[2] & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
    }

LABEL_42:
    *v23 = 1;
    if ((v27.i8[2] & 1) == 0)
    {
LABEL_35:
      if (v27.i8[4])
      {
        goto LABEL_44;
      }

      goto LABEL_36;
    }

LABEL_43:
    v23[1] = 1;
    if (v27.i8[4])
    {
LABEL_44:
      v23[2] = 1;
      if ((v27.i8[6] & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_45;
    }

LABEL_36:
    if ((v27.i8[6] & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_45:
    v23[3] = 1;
LABEL_28:
    v22 += 2;
    v23 += 8;
    v24 -= 8;
  }

  while (v24);
  if (v18 != a2)
  {
    goto LABEL_70;
  }

LABEL_47:
  bzero(v55, 4 * a2);
  v28 = 0;
  v29 = 0;
  v30 = v52[1];
  do
  {
    bzero(v30, a2);
    v31 = 0;
    do
    {
      v32 = *(__dst[1] + v31);
      if (v32 < a2)
      {
        *(v30 + v32) = 1;
      }

      ++v31;
    }

    while (a2 != v31);
    v33 = 0;
    v34 = 0;
    while (1)
    {
      v35 = *(__dst[1] + v34);
      if (v35 >= a2)
      {
        break;
      }

LABEL_56:
      a5->i32[v34++] = v35;
      v33 += a2;
      if (v34 >= a2)
      {
        if (a7)
        {
          *a7 = v29;
        }

        return;
      }
    }

    v36 = *(v55 + v34);
    v37 = *(__dst[0] + v34);
    if (v36 < v37)
    {
      v38 = -v36;
      v39 = v36 + v33;
      v40 = v37 - v36;
      v41 = v29 + 1;
      do
      {
        v35 = *(__n[1] + 4 * v39);
        if (!*(v30 + v35))
        {
          *(v30 + v35) = 1;
          *(v55 + v34) = -v38;
          v29 = v41;
          goto LABEL_56;
        }

        --v38;
        ++v39;
        ++v41;
        --v40;
      }

      while (v40);
      v29 = v29 + v37 - v36;
    }

    v42 = v55;
    v43 = v34;
    if (v34 < a2)
    {
      bzero(v55 + 4 * v34, 4 * (~v34 + a2) + 4);
      v42 = v55;
    }

    v44 = __dst[0] - 4;
    v45 = (v42 - 1);
    while (v43 >= 1)
    {
      v46 = *&v45[4 * v43] + 1;
      if (v46 < *&v44[4 * v43])
      {
        v42[v43 - 1] = v46;
        break;
      }

      *&v45[4 * v43--] = 0;
      if (!v43)
      {
        bmMunkres();
      }
    }

    ++v28;
  }

  while (v28 != 5);
}

uint64_t *bmMunkresSubtractMinPerRow(uint64_t *result)
{
  v1 = *(result + 3);
  if (v1)
  {
    v2 = *(result + 2);
    if (v2)
    {
      v3 = 0;
      v4 = *result;
      v5 = *(result + 4);
      while (1)
      {
        v6 = 0;
        v8 = 3.4028e38;
        v9 = v2;
        v10 = v2;
        do
        {
          v7 = v4 + 4 * v3;
          if (*(v7 + v6) < v8)
          {
            v8 = *(v7 + v6);
            v10 = v3;
          }

          v6 += v5;
          --v9;
        }

        while (v9);
        if (v8 < 0.0)
        {
          bmMunkresSubtractMinPerRow();
        }

        if (v10 >= v2)
        {
          break;
        }

        if (v8 > 0.0)
        {
          v11 = 0;
          v12 = 0;
          v13 = *(result + 4);
          v14 = *result + 4 * v3;
          do
          {
            if (v12 >= *(result + 2))
            {
              AcAttrNode::postProcess();
            }

            *(v14 + v11) = *(v14 + v11) - v8;
            ++v12;
            v11 += v13;
          }

          while (v2 != v12);
        }

        if (++v3 == v1)
        {
          return result;
        }
      }
    }

    bmMunkresSubtractMinPerRow();
  }

  return result;
}

uint64_t bmMunkresSubtractMinPerCol(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = result;
    for (i = 0; i < *(v1 + 8); ++i)
    {
      result = bmBufferPixelAtFloat(v1, 0, i);
      v4 = *(v1 + 12);
      if (!v4)
      {
        goto LABEL_22;
      }

      v5 = 0;
      v3.i32[0] = 2139095039;
      v6 = *(v1 + 12);
      do
      {
        if (*(result + 4 * v5) < *v3.i32)
        {
          v3.i32[0] = *(result + 4 * v5);
          v6 = v5;
        }

        ++v5;
      }

      while (v4 != v5);
      if (*v3.i32 < 0.0)
      {
        bmMunkresSubtractMinPerCol();
      }

      if (v6 >= v4)
      {
LABEL_22:
        bmMunkresSubtractMinPerCol();
      }

      if (*v3.i32 <= 0.0)
      {
        continue;
      }

      if (v4 >= 8)
      {
        v7 = v4 & 0xFFFFFFF8;
        v8 = vdupq_lane_s32(v3, 0);
        v9 = (result + 16);
        v10 = v7;
        do
        {
          v11 = vsubq_f32(*v9, v8);
          v9[-1] = vsubq_f32(v9[-1], v8);
          *v9 = v11;
          v9 += 2;
          v10 -= 8;
        }

        while (v10);
        if (v7 == v4)
        {
          continue;
        }
      }

      else
      {
        v7 = 0;
      }

      v12 = (result + 4 * v7);
      v13 = v4 - v7;
      do
      {
        *v12 = *v12 - *v3.i32;
        ++v12;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t bmMunkresMaxAssignments(uint64_t a1, char *a2, unsigned int a3, int32x4_t *a4, int8x16_t *a5, int8x16_t *a6)
{
  if (!a2)
  {
    bmMunkresMaxAssignments();
  }

  if (*(a1 + 20) != 6)
  {
    bmMunkresMaxAssignments();
  }

  v7 = *(a1 + 12);
  if (!v7)
  {
    bmMunkresMaxAssignments();
  }

  v8 = *(a1 + 8);
  if (!v8)
  {
    bmMunkresMaxAssignments();
  }

  BmMixedBufSize::BmMixedBufSize(&v177);
  if (v178)
  {
    rtcv::simImageChMeanTempBytes();
  }

  v14 = (4 * v7 + 4 * v8 + v8 * v7 + 2 * (v8 + v7) + v177 + 6);
  v177 = v14;
  if (v14 > a3)
  {
    bmMunkresMaxAssignments();
  }

  v15 = (a2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = v15 - a2 + 4 * v8;
  v178 = v16;
  if (v14 < v16)
  {
    rtcv::simImageChMean();
  }

  v17 = &a2[v16 + 3] & 0xFFFFFFFFFFFFFFFCLL;
  v18 = v17 - a2 + 4 * v7;
  v178 = v18;
  if (v14 < v18)
  {
    rtcv::simImageChMean();
  }

  v19 = v18;
  v20 = v18 + v8 * v7;
  v178 = v20;
  if (v14 < v20)
  {
    rtcv::simImageChMean();
  }

  v176 = &a2[v20];
  v21 = v7 + v20;
  v178 = v7 + v20;
  if (v14 < v7 + v20)
  {
    rtcv::simImageChMean();
  }

  v174 = a6;
  v175 = a5;
  v22 = v21;
  v23 = &a2[v21];
  v24 = v8 + v21;
  v178 = v8 + v21;
  if (v14 < v8 + v21)
  {
    rtcv::simImageChMean();
  }

  v173 = v24;
  v172 = &a2[v24];
  v25 = v8 + v24;
  v178 = v8 + v24;
  if (v14 < v8 + v24)
  {
    rtcv::simImageChMean();
  }

  v178 = v7 + v25;
  if (v14 < v7 + v25)
  {
    rtcv::simImageChMean();
  }

  v26 = &a2[v25];
  v170 = v20;
  v171 = v22;
  v168 = v7 + v25;
  v169 = v25;
  bzero(a2, v14);
  v31 = *(a1 + 8);
  v30 = *(a1 + 12);
  if (v7 > 7)
  {
    v32 = v7 & 0xFFFFFFF8;
    v27 = vdupq_n_s32(v8);
    v33 = a4 + 1;
    v34 = v32;
    do
    {
      v33[-1] = v27;
      *v33 = v27;
      v33 += 2;
      v34 -= 8;
    }

    while (v34);
    if (v32 == v7)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v32 = 0;
  }

  v35 = a4 + v32;
  v36 = v7 - v32;
  do
  {
    *v35++ = v8;
    --v36;
  }

  while (v36);
LABEL_21:
  if (!v30)
  {
LABEL_82:
    bmMunkresMaxAssignments();
  }

  v37 = 0;
  v38 = 0;
  v39 = &a2[v19];
  do
  {
    if (v38 == v31)
    {
      goto LABEL_82;
    }

    v40 = &a2[v19 + v37];
    v41 = (*a1 + (*(a1 + 16) * v38));
    v42 = v7;
    v43 = v17;
    do
    {
      while (*v41 > 0.000001)
      {
        *v40++ = 1;
        ++v41;
        ++v43;
        if (!--v42)
        {
          goto LABEL_23;
        }
      }

      if (*v41 < 0.0)
      {
        bmMunkresMaxAssignments();
      }

      ++*v43++;
      ++*(v15 + 4 * v38);
      ++v41;
      ++v40;
      --v42;
    }

    while (v42);
LABEL_23:
    ++v38;
    v37 += v30;
  }

  while (v38 != v8);
  v44 = 0;
  v45 = 0;
  do
  {
    do
    {
      if (*(v15 + 4 * v45) == 1)
      {
        v46 = 0;
        v47 = &v39[(v30 * v45)];
        do
        {
          if (v46 == v30)
          {
            bmMunkresMaxAssignments();
          }

          if (!v47[v46])
          {
            v48 = 0;
            v49 = 0;
            v23->i8[v45] = 1;
            v47[v46] = 2;
            a4->i32[v46] = v45;
            --*(v15 + 4 * v45);
            --*(v17 + 4 * v46);
            v50 = &v39[v46];
            do
            {
              if (v45 != v49)
              {
                if (v49 >= v31)
                {
                  bmMunkresMaxAssignments();
                }

                if (!v50[v48])
                {
                  v50[v48] = 3;
                  --*(v17 + 4 * v46);
                  --*(v15 + 4 * v49);
                }
              }

              ++v49;
              v48 += v30;
            }

            while (v8 != v49);
            v44 = 1;
          }

          ++v46;
        }

        while (v46 != v7);
      }

      ++v45;
    }

    while (v45 != v8);
    v51 = 0;
    v52 = v44;
    do
    {
      if (*(v17 + 4 * v51) == 1)
      {
        if (v51 < v30)
        {
          v53 = 0;
          v54 = 0;
          while (v54 != v31)
          {
            v55 = &v39[(v30 * v54)];
            if (!v55[v51])
            {
              v56 = 0;
              v23->i8[v54] = 1;
              v55[v51] = 2;
              a4->i32[v51] = v54;
              --*(v15 + 4 * v54);
              v57 = &a2[v19 + v53];
              --*(v17 + 4 * v51);
              do
              {
                if (v51 != v56)
                {
                  if (v56 >= v30)
                  {
                    bmMunkresMaxAssignments();
                  }

                  if (!v57[v56])
                  {
                    v57[v56] = 3;
                    --*(v15 + 4 * v54);
                    --*(v17 + 4 * v56);
                  }
                }

                ++v56;
              }

              while (v7 != v56);
              v52 = 1;
            }

            ++v54;
            v53 += v30;
            if (v54 == v8)
            {
              goto LABEL_46;
            }
          }
        }

        bmMunkresMaxAssignments();
      }

LABEL_46:
      ++v51;
    }

    while (v51 != v7);
    v44 = 0;
    v45 = 0;
  }

  while ((v52 & 1) != 0);
  v58 = 0;
  for (i = 0; i != v8; ++i)
  {
    if (*(v15 + 4 * i))
    {
      v60 = 0;
      v61 = &v39[(v30 * i)];
      v62 = 1;
      do
      {
        if (v60 == v30)
        {
          bmMunkresMaxAssignments();
        }

        if (!v61[v60])
        {
          if (v62)
          {
            v63 = 0;
            v64 = 0;
            v23->i8[i] = 1;
            v61[v60] = 2;
            a4->i32[v60] = i;
            v26->i8[v60] = 1;
            --*(v15 + 4 * i);
            --*(v17 + 4 * v60);
            v65 = &v39[v60];
            do
            {
              if (i != v64)
              {
                if (v64 >= v31)
                {
                  bmMunkresMaxAssignments();
                }

                if (!v65[v63])
                {
                  v65[v63] = 3;
                  --*(v17 + 4 * v60);
                  --*(v15 + 4 * v64);
                }
              }

              ++v64;
              v63 += v30;
            }

            while (v8 != v64);
            v62 = 0;
            v58 = 1;
          }

          else
          {
            v62 = 0;
            v61[v60] = 3;
            --*(v15 + 4 * i);
            --*(v17 + 4 * v60);
          }
        }

        ++v60;
      }

      while (v60 != v7);
    }
  }

  v66 = 0;
  if (v8 < 4)
  {
    v69 = v176;
    v68 = v172;
    v67 = v173;
    goto LABEL_164;
  }

  v68 = v172;
  v67 = v173;
  v69 = v176;
  if ((v173 - v171) < 0x10)
  {
LABEL_164:
    v90 = &a2[v66 + v171];
    v91 = &a2[v66 + v67];
    v92 = v8 - v66;
    do
    {
      if (!*v90++)
      {
        *v91 = 1;
      }

      ++v91;
      --v92;
    }

    while (v92);
    goto LABEL_139;
  }

  if (v8 < 0x10)
  {
    v66 = 0;
    goto LABEL_127;
  }

  v66 = v8 & 0xFFFFFFF0;
  v70 = &a2[v173 + 7];
  v71 = v66;
  do
  {
    v27 = vceqzq_s8(*v23);
    if (v27.i8[0])
    {
      *(v70 - 7) = 1;
      if ((v27.i8[1] & 1) == 0)
      {
        goto LABEL_94;
      }
    }

    else if ((v27.i8[1] & 1) == 0)
    {
LABEL_94:
      if (v27.i8[2])
      {
        goto LABEL_95;
      }

      goto LABEL_111;
    }

    *(v70 - 6) = 1;
    if (v27.i8[2])
    {
LABEL_95:
      *(v70 - 5) = 1;
      if ((v27.i8[3] & 1) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_112;
    }

LABEL_111:
    if ((v27.i8[3] & 1) == 0)
    {
LABEL_96:
      if (v27.i8[4])
      {
        goto LABEL_97;
      }

      goto LABEL_113;
    }

LABEL_112:
    *(v70 - 4) = 1;
    if (v27.i8[4])
    {
LABEL_97:
      *(v70 - 3) = 1;
      if ((v27.i8[5] & 1) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_114;
    }

LABEL_113:
    if ((v27.i8[5] & 1) == 0)
    {
LABEL_98:
      if (v27.i8[6])
      {
        goto LABEL_99;
      }

      goto LABEL_115;
    }

LABEL_114:
    *(v70 - 2) = 1;
    if (v27.i8[6])
    {
LABEL_99:
      *(v70 - 1) = 1;
      if ((v27.i8[7] & 1) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_116;
    }

LABEL_115:
    if ((v27.i8[7] & 1) == 0)
    {
LABEL_100:
      if (v27.i8[8])
      {
        goto LABEL_101;
      }

      goto LABEL_117;
    }

LABEL_116:
    *v70 = 1;
    if (v27.i8[8])
    {
LABEL_101:
      v70[1] = 1;
      if ((v27.i8[9] & 1) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_118;
    }

LABEL_117:
    if ((v27.i8[9] & 1) == 0)
    {
LABEL_102:
      if (v27.i8[10])
      {
        goto LABEL_103;
      }

      goto LABEL_119;
    }

LABEL_118:
    v70[2] = 1;
    if (v27.i8[10])
    {
LABEL_103:
      v70[3] = 1;
      if ((v27.i8[11] & 1) == 0)
      {
        goto LABEL_104;
      }

      goto LABEL_120;
    }

LABEL_119:
    if ((v27.i8[11] & 1) == 0)
    {
LABEL_104:
      if (v27.i8[12])
      {
        goto LABEL_105;
      }

      goto LABEL_121;
    }

LABEL_120:
    v70[4] = 1;
    if (v27.i8[12])
    {
LABEL_105:
      v70[5] = 1;
      if ((v27.i8[13] & 1) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_122;
    }

LABEL_121:
    if ((v27.i8[13] & 1) == 0)
    {
LABEL_106:
      if ((v27.i8[14] & 1) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_107;
    }

LABEL_122:
    v70[6] = 1;
    if ((v27.i8[14] & 1) == 0)
    {
LABEL_123:
      if ((v27.i8[15] & 1) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_124;
    }

LABEL_107:
    v70[7] = 1;
    if ((v27.i8[15] & 1) == 0)
    {
      goto LABEL_91;
    }

LABEL_124:
    v70[8] = 1;
LABEL_91:
    ++v23;
    v70 += 16;
    v71 -= 16;
  }

  while (v71);
  if (v66 != v8)
  {
    if ((v8 & 0xC) == 0)
    {
      goto LABEL_164;
    }

LABEL_127:
    v72 = v66;
    v66 = v8 & 0xFFFFFFFC;
    v73 = v72 - v66;
    v74 = &a2[v72 + v171];
    v75 = &a2[v72 + 1 + v173];
    while (2)
    {
      v27.i32[0] = *v74;
      *v27.i8 = vceqz_s16(*&vmovl_u8(*v27.i8));
      if (v27.i8[0])
      {
        *(v75 - 1) = 1;
        if ((v27.i8[2] & 1) == 0)
        {
          goto LABEL_131;
        }

LABEL_135:
        *v75 = 1;
        if ((v27.i8[4] & 1) == 0)
        {
          goto LABEL_136;
        }

LABEL_132:
        v75[1] = 1;
        if (v27.i8[6])
        {
          goto LABEL_137;
        }
      }

      else
      {
        if (v27.i8[2])
        {
          goto LABEL_135;
        }

LABEL_131:
        if (v27.i8[4])
        {
          goto LABEL_132;
        }

LABEL_136:
        if (v27.i8[6])
        {
LABEL_137:
          v75[2] = 1;
        }
      }

      ++v74;
      v75 += 4;
      v73 += 4;
      if (!v73)
      {
        if (v66 == v8)
        {
          break;
        }

        goto LABEL_164;
      }

      continue;
    }
  }

LABEL_139:
  v76 = 0;
  v77 = 0;
  do
  {
    if (v68[v77])
    {
      v78 = &v39[(v30 * v77)];
      v79 = v7;
      v80 = v69;
      v81 = a4;
      v82 = v30;
      v83 = v76;
      do
      {
        if (!v82)
        {
          bmMunkresMaxAssignments();
        }

        v84 = *v78;
        if ((v84 == 3 || v84 == 0) && !*v80)
        {
          v83 = 1;
          *v80 = 1;
          v86 = v81->u32[0];
          if (v86 < v8 && !v68[v86])
          {
            v68[v86] = 1;
          }
        }

        --v82;
        ++v78;
        v81 = (v81 + 4);
        ++v80;
        --v79;
      }

      while (v79);
    }

    else
    {
      v83 = v76;
    }

    v87 = v77 + 1 == v8;
    v76 = (v77 + 1 != v8) & v83;
    if (v77 + 1 == v8)
    {
      v77 = 0;
    }

    else
    {
      ++v77;
    }
  }

  while (!v87 || (v83 & 1) != 0);
  LODWORD(result) = 0;
  v89 = 0;
  if (v8 < 4 || (v174 - v68) < 0x20)
  {
    goto LABEL_176;
  }

  if (v8 >= 0x20)
  {
    v94 = 0uLL;
    v89 = v8 & 0xFFFFFFE0;
    v95.i64[0] = 0x101010101010101;
    v95.i64[1] = 0x101010101010101;
    v96.i64[0] = 0x100000001;
    v96.i64[1] = 0x100000001;
    v97 = &a2[v67 + 16];
    v98 = 0uLL;
    v99 = v174 + 1;
    v100 = v89;
    v101 = 0uLL;
    v102 = 0uLL;
    v103 = 0uLL;
    v104 = 0uLL;
    v105 = 0uLL;
    v106 = 0uLL;
    do
    {
      v107 = vceqzq_s8(v97[-1]);
      v108 = vceqzq_s8(*v97);
      v109 = vmovl_u8(*v107.i8);
      v99[-1] = vandq_s8(v107, v95);
      *v99 = vandq_s8(v108, v95);
      v110 = vmovl_high_u8(v107);
      v111 = vmovl_u8(*v108.i8);
      v112 = vmovl_high_u8(v108);
      v102 = vaddq_s32(v102, vandq_s8(vmovl_high_u16(v110), v96));
      v101 = vaddq_s32(v101, vandq_s8(vmovl_u16(*v110.i8), v96));
      v98 = vaddq_s32(v98, vandq_s8(vmovl_high_u16(v109), v96));
      v94 = vaddq_s32(v94, vandq_s8(vmovl_u16(*v109.i8), v96));
      v106 = vaddq_s32(v106, vandq_s8(vmovl_high_u16(v112), v96));
      v105 = vaddq_s32(v105, vandq_s8(vmovl_u16(*v112.i8), v96));
      v104 = vaddq_s32(v104, vandq_s8(vmovl_high_u16(v111), v96));
      v103 = vaddq_s32(v103, vandq_s8(vmovl_u16(*v111.i8), v96));
      v97 += 2;
      v99 += 2;
      v100 -= 32;
    }

    while (v100);
    v113 = vaddq_s32(v104, v98);
    v28 = vaddq_s32(v106, v102);
    v29 = vaddq_s32(v105, v101);
    v27 = vaddq_s32(vaddq_s32(vaddq_s32(v103, v94), v29), vaddq_s32(v113, v28));
    LODWORD(result) = vaddvq_s32(v27);
    if (v89 != v8)
    {
      if ((v8 & 0x1C) != 0)
      {
        goto LABEL_173;
      }

      goto LABEL_176;
    }
  }

  else
  {
    LODWORD(result) = 0;
    v89 = 0;
LABEL_173:
    v114 = v89;
    v89 = v8 & 0xFFFFFFFC;
    v27 = result;
    v115 = &a2[v114 + v67];
    v116 = (v174->i32 + v114);
    v117 = v114 - v89;
    v28.i64[0] = 0x100000001;
    v28.i64[1] = 0x100000001;
    do
    {
      v118 = *v115++;
      v29.i32[0] = v118;
      v119 = vceqz_s16(*&vmovl_u8(*v29.i8));
      *v116++ = vuzp1_s8(vand_s8(v119, 0x1000100010001), *v27.i8).u32[0];
      v29 = vandq_s8(vmovl_u16(v119), v28);
      v27 = vaddq_s32(v27, v29);
      v117 += 4;
    }

    while (v117);
    LODWORD(result) = vaddvq_s32(v27);
    if (v89 != v8)
    {
LABEL_176:
      v120 = &a2[v89 + v67];
      v121 = &v174->i8[v89];
      v122 = v8 - v89;
      do
      {
        v123 = *v120++;
        *v121++ = v123 == 0;
        if (!v123)
        {
          LODWORD(result) = result + 1;
        }

        --v122;
      }

      while (v122);
    }
  }

  v124 = 0;
  if (v7 < 4 || (v175 - v69) < 0x20)
  {
    goto LABEL_191;
  }

  if (v7 >= 0x20)
  {
    v124 = v7 & 0xFFFFFFE0;
    v125 = result;
    v126 = 0uLL;
    v127.i64[0] = 0x100000001;
    v127.i64[1] = 0x100000001;
    v128 = &a2[v170 + 16];
    v129 = v175 + 1;
    v130 = v124;
    v131 = 0uLL;
    v132 = 0uLL;
    v133 = 0uLL;
    v134 = 0uLL;
    v135 = 0uLL;
    v136 = 0uLL;
    do
    {
      v137 = v128[-1];
      v138 = *v128;
      v129[-1] = v137;
      *v129 = v138;
      v139 = vtstq_s8(v137, v137);
      v140 = vmovl_u8(*v139.i8);
      v141 = vmovl_high_u8(v139);
      v142 = vtstq_s8(v138, v138);
      v143 = vmovl_u8(*v142.i8);
      v144 = vmovl_high_u8(v142);
      v132 = vaddq_s32(v132, vandq_s8(vmovl_high_u16(v141), v127));
      v131 = vaddq_s32(v131, vandq_s8(vmovl_u16(*v141.i8), v127));
      v126 = vaddq_s32(v126, vandq_s8(vmovl_high_u16(v140), v127));
      v125 = vaddq_s32(v125, vandq_s8(vmovl_u16(*v140.i8), v127));
      v136 = vaddq_s32(v136, vandq_s8(vmovl_high_u16(v144), v127));
      v135 = vaddq_s32(v135, vandq_s8(vmovl_u16(*v144.i8), v127));
      v134 = vaddq_s32(v134, vandq_s8(vmovl_high_u16(v143), v127));
      v133 = vaddq_s32(v133, vandq_s8(vmovl_u16(*v143.i8), v127));
      v128 += 2;
      v129 += 2;
      v130 -= 32;
    }

    while (v130);
    v28 = vaddq_s32(v136, v132);
    v27 = vaddq_s32(vaddq_s32(vaddq_s32(v133, v125), vaddq_s32(v135, v131)), vaddq_s32(vaddq_s32(v134, v126), v28));
    result = vaddvq_s32(v27);
    if (v124 != v7)
    {
      if ((v7 & 0x1C) != 0)
      {
        goto LABEL_188;
      }

      goto LABEL_191;
    }
  }

  else
  {
    v124 = 0;
LABEL_188:
    v145 = v124;
    v27 = result;
    v124 = v7 & 0xFFFFFFFC;
    v146 = &a2[v145 + v170];
    v147 = (v175->i32 + v145);
    v148 = v145 - v124;
    v149.i64[0] = 0x100000001;
    v149.i64[1] = 0x100000001;
    do
    {
      v150 = *v146++;
      v28.i32[0] = v150;
      *v147++ = v150;
      v151 = vmovl_u8(*v28.i8).u64[0];
      v28 = vandq_s8(vmovl_u16(vtst_s16(v151, v151)), v149);
      v27 = vaddq_s32(v27, v28);
      v148 += 4;
    }

    while (v148);
    result = vaddvq_s32(v27);
    if (v124 != v7)
    {
LABEL_191:
      v152 = &a2[v124 + v170];
      v153 = &v175->i8[v124];
      v154 = v7 - v124;
      do
      {
        v155 = *v152++;
        *v153++ = v155;
        if (v155)
        {
          result = (result + 1);
        }

        else
        {
          result = result;
        }

        --v154;
      }

      while (v154);
    }
  }

  if (((result == v7) & v58) != 1)
  {
    return result;
  }

  if (v7 >= 4 && (&a2[v168] <= a4 || v26 >= (a4 + 4 * v7)))
  {
    if (v7 < 0x10)
    {
      v156 = 0;
      goto LABEL_257;
    }

    v156 = v7 & 0xFFFFFFF0;
    v161 = a4 + 2;
    v162 = v156;
    while (1)
    {
      v27 = vtstq_s8(*v26, *v26);
      if (v27.i8[0])
      {
        v161[-2].i32[0] = v8;
        if ((v27.i8[1] & 1) == 0)
        {
          goto LABEL_224;
        }
      }

      else if ((v27.i8[1] & 1) == 0)
      {
LABEL_224:
        if (v27.i8[2])
        {
          goto LABEL_225;
        }

        goto LABEL_241;
      }

      v161[-2].i32[1] = v8;
      if (v27.i8[2])
      {
LABEL_225:
        v161[-2].i32[2] = v8;
        if ((v27.i8[3] & 1) == 0)
        {
          goto LABEL_226;
        }

        goto LABEL_242;
      }

LABEL_241:
      if ((v27.i8[3] & 1) == 0)
      {
LABEL_226:
        if (v27.i8[4])
        {
          goto LABEL_227;
        }

        goto LABEL_243;
      }

LABEL_242:
      v161[-2].i32[3] = v8;
      if (v27.i8[4])
      {
LABEL_227:
        v161[-1].i32[0] = v8;
        if ((v27.i8[5] & 1) == 0)
        {
          goto LABEL_228;
        }

        goto LABEL_244;
      }

LABEL_243:
      if ((v27.i8[5] & 1) == 0)
      {
LABEL_228:
        if (v27.i8[6])
        {
          goto LABEL_229;
        }

        goto LABEL_245;
      }

LABEL_244:
      v161[-1].i32[1] = v8;
      if (v27.i8[6])
      {
LABEL_229:
        v161[-1].i32[2] = v8;
        if ((v27.i8[7] & 1) == 0)
        {
          goto LABEL_230;
        }

        goto LABEL_246;
      }

LABEL_245:
      if ((v27.i8[7] & 1) == 0)
      {
LABEL_230:
        if (v27.i8[8])
        {
          goto LABEL_231;
        }

        goto LABEL_247;
      }

LABEL_246:
      v161[-1].i32[3] = v8;
      if (v27.i8[8])
      {
LABEL_231:
        v161->i32[0] = v8;
        if ((v27.i8[9] & 1) == 0)
        {
          goto LABEL_232;
        }

        goto LABEL_248;
      }

LABEL_247:
      if ((v27.i8[9] & 1) == 0)
      {
LABEL_232:
        if (v27.i8[10])
        {
          goto LABEL_233;
        }

        goto LABEL_249;
      }

LABEL_248:
      v161->i32[1] = v8;
      if (v27.i8[10])
      {
LABEL_233:
        v161->i32[2] = v8;
        if ((v27.i8[11] & 1) == 0)
        {
          goto LABEL_234;
        }

        goto LABEL_250;
      }

LABEL_249:
      if ((v27.i8[11] & 1) == 0)
      {
LABEL_234:
        if (v27.i8[12])
        {
          goto LABEL_235;
        }

        goto LABEL_251;
      }

LABEL_250:
      v161->i32[3] = v8;
      if (v27.i8[12])
      {
LABEL_235:
        v161[1].i32[0] = v8;
        if ((v27.i8[13] & 1) == 0)
        {
          goto LABEL_236;
        }

        goto LABEL_252;
      }

LABEL_251:
      if ((v27.i8[13] & 1) == 0)
      {
LABEL_236:
        if (v27.i8[14])
        {
          goto LABEL_237;
        }

        goto LABEL_253;
      }

LABEL_252:
      v161[1].i32[1] = v8;
      if (v27.i8[14])
      {
LABEL_237:
        v161[1].i32[2] = v8;
        if (v27.i8[15])
        {
          goto LABEL_254;
        }

        goto LABEL_221;
      }

LABEL_253:
      if (v27.i8[15])
      {
LABEL_254:
        v161[1].i32[3] = v8;
      }

LABEL_221:
      ++v26;
      v161 += 4;
      v162 -= 16;
      if (!v162)
      {
        if (v156 == v7)
        {
          return result;
        }

        if ((v7 & 0xC) == 0)
        {
          goto LABEL_201;
        }

LABEL_257:
        v163 = v156;
        v156 = v7 & 0xFFFFFFFC;
        v164 = v163 - v156;
        v165 = &a4->u32[v163 + 2];
        v166 = &a2[v163 + v169];
        while (2)
        {
          v27.i32[0] = *v166;
          v167 = vmovl_u8(*v27.i8).u64[0];
          *v27.i8 = vtst_s16(v167, v167);
          if (v27.i8[0])
          {
            *(v165 - 2) = v8;
            if ((v27.i8[2] & 1) == 0)
            {
              goto LABEL_261;
            }

LABEL_265:
            *(v165 - 1) = v8;
            if ((v27.i8[4] & 1) == 0)
            {
              goto LABEL_266;
            }

LABEL_262:
            *v165 = v8;
            if (v27.i8[6])
            {
              goto LABEL_267;
            }
          }

          else
          {
            if (v27.i8[2])
            {
              goto LABEL_265;
            }

LABEL_261:
            if (v27.i8[4])
            {
              goto LABEL_262;
            }

LABEL_266:
            if (v27.i8[6])
            {
LABEL_267:
              v165[1] = v8;
            }
          }

          v165 += 4;
          ++v166;
          v164 += 4;
          if (!v164)
          {
            if (v156 == v7)
            {
              return result;
            }

            goto LABEL_201;
          }

          continue;
        }
      }
    }
  }

  v156 = 0;
LABEL_201:
  v157 = &a2[v156 + v169];
  v158 = a4 + v156;
  v159 = v7 - v156;
  do
  {
    if (*v157++)
    {
      *v158 = v8;
    }

    ++v158;
    --v159;
  }

  while (v159);
  return result;
}

void bmMunkresUpdateCost(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a2)
  {
    bmMunkresUpdateCost();
  }

  if (!a3)
  {
    bmMunkresUpdateCost();
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    if (*(a1 + 12))
    {
      v7 = 0;
      v8 = 0;
      v9 = 3.4028e38;
      do
      {
        v10 = (*a1 + v7);
        v11 = *(a1 + 12);
        v12 = a2;
        do
        {
          v13 = *v12++;
          if (!v13 && !*(a3 + v8) && *v10 < v9 && *v10 > 0.000001)
          {
            v9 = *v10;
          }

          ++v10;
          --v11;
        }

        while (v11);
        ++v8;
        v7 += *(a1 + 16);
      }

      while (v8 != v5);
    }

    else
    {
      v9 = 3.4028e38;
    }

    v15 = *(a1 + 12);
    if (v15)
    {
      v16 = 0;
      v17 = 1;
      while (!v17)
      {
LABEL_21:
        if (++v16 >= v5)
        {
          return;
        }
      }

      v18 = 0;
      while (1)
      {
        if (a2[v18])
        {
          if (!*(a3 + v16))
          {
            goto LABEL_25;
          }

          if (v16 >= *(a1 + 8))
          {
            AcAttrNode::postProcess();
          }

          v19 = *a1 + (v16 * *(a1 + 16));
          v20 = v9 + *(v19 + 4 * v18);
        }

        else
        {
          if (*(a3 + v16))
          {
            goto LABEL_25;
          }

          if (v16 >= *(a1 + 8))
          {
            AcAttrNode::postProcess();
          }

          v20 = bmMaximum(0.0, *(*a1 + (v16 * *(a1 + 16)) + 4 * v18) - v9);
          v15 = *(a1 + 12);
          if (v18 >= v15 || v16 >= *(a1 + 8))
          {
            AcAttrNode::postProcess();
          }

          v19 = *a1 + (v16 * *(a1 + 16));
        }

        *(v19 + 4 * v18) = v20;
LABEL_25:
        if (++v18 >= v15)
        {
          v5 = *(a1 + 8);
          v17 = v15;
          goto LABEL_21;
        }
      }
    }
  }
}

uint64_t bmBufferPixelAtFloat(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (*(a1 + 12) <= a2 || *(a1 + 8) <= a3)
  {
    AcAttrNode::postProcess();
  }

  return *a1 + *(a1 + 16) * a3 + 4 * a2;
}

uint64_t bmMunkresExtended(float *a1, unsigned int a2, unsigned __int8 *a3, unsigned int a4, int32x4_t *a5, unsigned int a6, unsigned int *a7, uint64_t a8)
{
  if (!a2)
  {
    bmMunkresExtended();
  }

  if (a6 < a2)
  {
    bmMunkresExtended();
  }

  if (a2 == 1 || (v58 = 0, v59 = a1, v60 = a2, v61 = a2, v62 = 4 * a2, v63 = 6, *__dst = 0u, *__n = 0u, v54 = 0u, *v55 = 0u, bmMunkresGetTempBuffers(a2, a3, a4, &v54), !__dst[0]))
  {
    result = 0;
    a5->i32[0] = 0;
    return result;
  }

  bmMunkresSubtractMinPerRow(&v59);
  bmMunkresSubtractMinPerCol(&v59);
  while (bmMunkresMaxAssignments(&v59, v54, DWORD2(v54), a5, v55[0], v55[1]) != a2)
  {
    bmMunkresUpdateCost(&v59, v55[0], v55[1]);
  }

  v13 = 0;
  while (a5->i32[v13] != a2)
  {
    if (a2 == ++v13)
    {
      return 0;
    }
  }

  memcpy(__dst[1], a5, LODWORD(__n[0]));
  bzero(__dst[0], 4 * a2);
  v14 = 0;
  do
  {
    v15 = 0;
    v16 = 0;
    v17 = v59;
    v18 = __n[1];
    v19 = __dst[0];
    do
    {
      if (v16 >= v61 || v60 <= v14)
      {
        AcAttrNode::postProcess();
      }

      if (*(&v17[v16] + v14 * v62) <= 0.000001)
      {
        *(v18 + 4 * (v15 + v19[v16]++)) = v14;
      }

      ++v16;
      v15 += a2;
    }

    while (a2 != v16);
    ++v14;
  }

  while (v14 != a2);
  v21 = 0;
  v22 = __dst[0];
  v23 = __dst[1];
  if (a2 < 8 || (__dst[0] - __dst[1]) <= 0x1F)
  {
LABEL_72:
    v50 = &v23[4 * v21];
    v51 = &v22[4 * v21];
    v52 = a2 - v21;
    do
    {
      v53 = *v50++;
      if (v53 < a2)
      {
        *v51 = 1;
      }

      v51 += 4;
      --v52;
    }

    while (v52);
    goto LABEL_47;
  }

  v21 = a2 & 0xFFFFFFF8;
  v24 = vdupq_n_s32(a2);
  v25 = (__dst[1] + 16);
  v26 = __dst[0] + 16;
  v27 = v21;
  do
  {
    v28 = *v25;
    v29 = vmovn_s32(vcgtq_u32(v24, v25[-1]));
    if (v29.i8[0])
    {
      *(v26 - 4) = 1;
      if ((v29.i8[2] & 1) == 0)
      {
LABEL_31:
        if ((v29.i8[4] & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_40;
      }
    }

    else if ((v29.i8[2] & 1) == 0)
    {
      goto LABEL_31;
    }

    *(v26 - 3) = 1;
    if ((v29.i8[4] & 1) == 0)
    {
LABEL_32:
      if ((v29.i8[6] & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(v26 - 2) = 1;
    if ((v29.i8[6] & 1) == 0)
    {
LABEL_33:
      v30 = vmovn_s32(vcgtq_u32(v24, v28));
      if ((v30.i8[0] & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(v26 - 1) = 1;
    v30 = vmovn_s32(vcgtq_u32(v24, v28));
    if ((v30.i8[0] & 1) == 0)
    {
LABEL_34:
      if ((v30.i8[2] & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
    }

LABEL_42:
    *v26 = 1;
    if ((v30.i8[2] & 1) == 0)
    {
LABEL_35:
      if (v30.i8[4])
      {
        goto LABEL_44;
      }

      goto LABEL_36;
    }

LABEL_43:
    v26[1] = 1;
    if (v30.i8[4])
    {
LABEL_44:
      v26[2] = 1;
      if ((v30.i8[6] & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_45;
    }

LABEL_36:
    if ((v30.i8[6] & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_45:
    v26[3] = 1;
LABEL_28:
    v25 += 2;
    v26 += 8;
    v27 -= 8;
  }

  while (v27);
  if (v21 != a2)
  {
    goto LABEL_72;
  }

LABEL_47:
  bzero(v58, 4 * a2);
  result = 1;
  if (a8)
  {
    v31 = 0;
    v32 = 0;
    v33 = v55[1];
    do
    {
      bzero(v33, a2);
      result = 1;
      v34 = 0;
      do
      {
        v35 = *(__dst[1] + v34);
        if (v35 < a2)
        {
          *(v33 + v35) = 1;
        }

        ++v34;
      }

      while (a2 != v34);
      v36 = 0;
      v37 = 0;
      while (1)
      {
        v38 = *(__dst[1] + v37);
        if (v38 >= a2)
        {
          break;
        }

LABEL_55:
        a5->i32[v37++] = v38;
        v36 += a2;
        if (v37 >= a2)
        {
          result = 0;
          if (a7)
          {
            *a7 = v32;
          }

          return result;
        }
      }

      v39 = *(v58 + v37);
      v40 = *(__dst[0] + v37);
      if (v39 < v40)
      {
        v41 = -v39;
        v42 = v39 + v36;
        v43 = v40 - v39;
        v44 = v32 + 1;
        do
        {
          v38 = *(__n[1] + 4 * v42);
          if (!*(v33 + v38))
          {
            *(v33 + v38) = 1;
            *(v58 + v37) = -v41;
            v32 = v44;
            goto LABEL_55;
          }

          --v41;
          ++v42;
          ++v44;
          --v43;
        }

        while (v43);
        v32 = v32 + v40 - v39;
      }

      v45 = v58;
      v46 = v37;
      if (v37 < a2)
      {
        bzero(v58 + 4 * v37, 4 * (~v37 + a2) + 4);
        result = 1;
        v45 = v58;
      }

      v47 = __dst[0] - 4;
      v48 = (v45 - 1);
      while (v46 >= 1)
      {
        v49 = *&v48[4 * v46] + 1;
        if (v49 < *&v47[4 * v46])
        {
          v45[v46 - 1] = v49;
          break;
        }

        *&v48[4 * v46--] = 0;
        if (!v46)
        {
          return 2;
        }
      }

      ++v31;
    }

    while (v31 != a8);
  }

  return result;
}

void sub_24BC5E3DC(_Unwind_Exception *a1)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

void sub_24BC5EC3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  ik::PixelBufferTensor::~PixelBufferTensor(&a18);

  _Unwind_Resume(a1);
}

void sub_24BC5EEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v23 & 1) == 0)
    {
LABEL_8:

      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_24BC5F248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  ik::EspressoConfig::~EspressoConfig(v15);

  _Unwind_Resume(a1);
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v8 = v7 + 1;
  if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  if (2 * v9 > v8)
  {
    v8 = 2 * v9;
  }

  if (v9 >= 0x555555555555555)
  {
    v10 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (v10 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v11 = 24 * v7;
  *v11 = *a2;
  *(v11 + 16) = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v6 = 24 * v7 + 24;
  v12 = *a1;
  v13 = *(a1 + 8) - *a1;
  v14 = v11 - v13;
  memcpy((v11 - v13), *a1, v13);
  *a1 = v14;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  *(a1 + 8) = v6;
}

void sub_24BC5F690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:

      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);

  _Unwind_Resume(a1);
}

void sub_24BC5F934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);

    if ((v24 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {

    if (!v24)
    {
LABEL_8:

      _Unwind_Resume(a1);
    }
  }

  __cxa_free_exception(v22);

  _Unwind_Resume(a1);
}

void sub_24BC5FFA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  __cxa_free_exception(v32);
  std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::~__hash_table(&a22);

  _Unwind_Resume(a1);
}

id AsEspressoBufferDictionary(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:*(a1 + 24)];
  for (i = *(a1 + 16); i; i = *i)
  {
    v4 = i[10];
    v5 = *(v4 + 40);
    v6 = *(v4 + 24);
    v17[0] = *(v4 + 8);
    v17[1] = v6;
    v17[2] = v5;
    v7 = *(v4 + 88);
    v8 = *(v4 + 104);
    v9 = *(v4 + 72);
    v17[3] = *(v4 + 56);
    v17[4] = v9;
    v10 = *(v4 + 120);
    v11 = *(v4 + 136);
    v12 = *(v4 + 152);
    v18 = *(v4 + 168);
    v17[8] = v11;
    v17[9] = v12;
    v17[6] = v8;
    v17[7] = v10;
    v17[5] = v7;
    v13 = [FTEspressoBuffer bufferWithEspressoBuffer:v17];
    v14 = i + 2;
    if (*(i + 39) < 0)
    {
      v14 = *v14;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
    [v2 setObject:v13 forKeyedSubscript:v15];
  }

  return v2;
}

void sub_24BC60218(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_24BC60A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  __cxa_free_exception(v46);
  std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::~__hash_table(&__p);
  std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::~__hash_table(&a46);

  _Unwind_Resume(a1);
}

void sub_24BC610E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_24BC612BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_24BC61588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BC61718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
    if ((a33 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a28);
  if ((a14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a9);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if (a20 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_6:
    operator delete(__p);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }

LABEL_13:
    __cxa_free_exception(v33);
    goto LABEL_14;
  }

LABEL_12:
  if (!v34)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

uint64_t ___ZN2ikL28IsAppleNeuralEngineAvailableEv_block_invoke_2()
{
  result = MGGetBoolAnswer();
  _MergedGlobals_4 = result;
  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_24BC61C40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ik::Tensor>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ik::Tensor>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

float acAttrEyeLoc(float *a1, float *a2)
{
  v4 = bmClamp(*a1, 0.0, 1.0);
  v5 = bmClamp(a1[1], 0.0, 1.0);
  v6 = a2[2];
  v7 = a2[3];
  v8 = *a2 + (v4 * v6);
  v9 = a2[1] + (v5 * v7);
  v10 = v7 * 0.2;
  v11 = (v6 * 0.2) * 0.5;
  v12 = bmMaximum(v8 - v11, *a2);
  bmMaximum(v9 - (v10 * 0.5), a2[1]);
  bmMinimum(v8 + v11, *a2 + a2[2]);
  bmMinimum(v9 + (v10 * 0.5), a2[1] + a2[3]);
  return v12;
}

uint64_t ft::TrackMatcher::TrackMatcher(uint64_t a1, unint64_t *a2)
{
  *a1 = *a2;
  ft::HungarianMatcher::HungarianMatcher((a1 + 16), *a2);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  return a1;
}

{
  *a1 = *a2;
  ft::HungarianMatcher::HungarianMatcher((a1 + 16), *a2);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  return a1;
}

void ft::TrackMatcher::~TrackMatcher(ft::TrackMatcher *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  ft::HungarianMatcher::~HungarianMatcher((this + 16));
}

{
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  ft::HungarianMatcher::~HungarianMatcher((this + 16));
}

void ft::TrackMatcher::Match(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = 0x86BCA1AF286BCA1BLL * ((v5 - *a2) >> 3);
  v8 = (a3[1] - *a3) >> 4;
  if (v8 * v7)
  {
    ft::TrackMatcher::ComputeCostMatrix(a1, a2, a3);
    ft::HungarianMatcher::Match((a1 + 16), *(a1 + 104), v8, v7, __p);
    a4[1] = 0;
    a4[2] = 0;
    *a4 = 0;
    if (v5 != v6)
    {
      if (v7 < 0x555555555555556)
      {
        operator new();
      }

      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }
}

void sub_24BC61FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ft::TrackMatcher::ComputeCostMatrix(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = 0x86BCA1AF286BCA1BLL * ((a2[1] - *a2) >> 3) * ((a3[1] - *a3) >> 4);
  v8 = *(a1 + 104);
  v7 = (a1 + 104);
  v9 = (*(a1 + 112) - v8) >> 2;
  if (v6 > v9)
  {
    std::vector<unsigned int>::__append((a1 + 104), v6 - v9);
    v8 = *v7;
  }

  v10 = *(a1 + 12);
  if (v10 == 1)
  {
    v12 = a3[1];
    v13 = v12 - *a3;
    if (v12 != *a3)
    {
      if (!((v13 >> 4) >> 61))
      {
        operator new();
      }

      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v41 = v13 >> 4;
    v31 = *a2;
    v32 = a2[1];
    if (*a2 != v32 && v12 != *a3)
    {
      v33 = v41;
      v34 = *a3;
      if (v41 <= 1)
      {
        v33 = 1;
      }

      do
      {
        v35 = *(v31 + 32);
        v36 = v34;
        v37 = v33;
        v38 = 0;
        do
        {
          while (*(*v36 + 88) == v35)
          {
            v39 = *v38++;
            v40 = vsub_f32(v39, vcvt_f32_f64(vaddq_f64(*v31, vcvtq_f64_f32(vmul_f32(vcvt_f32_f64(*(v31 + 16)), 0x3F0000003F000000)))));
            *v8++ = sqrtf(vaddv_f32(vmul_f32(v40, v40)));
            v36 += 16;
            if (!--v37)
            {
              goto LABEL_28;
            }
          }

          *v8++ = 10000000.0;
          ++v38;
          v36 += 16;
          --v37;
        }

        while (v37);
LABEL_28:
        v31 += 152;
      }

      while (v31 != v32);
    }
  }

  else if (!v10)
  {
    v11 = a3[1];
    if (v11 != *a3)
    {
      if (!(((v11 - *a3) >> 4) >> 59))
      {
        operator new();
      }

      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v14 = *a2;
    v15 = a2[1];
    if (*a2 != v15 && v11 != *a3)
    {
      v16 = *a3;
      v17 = (v11 - *a3) >> 4;
      if (v17 <= 1)
      {
        v17 = 1;
      }

      do
      {
        v18 = *(v14 + 32);
        v19 = v16;
        v20 = v17;
        v21 = 16;
        do
        {
          v22 = 10.0;
          if (*(*v19 + 88) == v18)
          {
            v23 = *(v21 - 16);
            v24 = *(v14 + 16);
            v25 = vbslq_s8(vcgtq_f64(*v14, v23), *v14, v23);
            v26 = vaddq_f64(v23, *v21);
            v27 = vaddq_f64(*v14, v24);
            v28 = vbslq_s8(vcgtq_f64(v26, v27), v27, v26);
            v29 = vandq_s8(vsubq_f64(v28, v25), vcgtq_f64(v28, v25));
            *v29.f64 = vmulq_laneq_f64(v29, v29, 1).f64[0];
            v30 = vaddvq_f64(vmulq_f64(vzip1q_s64(*v21, v24), vzip2q_s64(*v21, v24))) - *v29.f64;
            v22 = 1.0 - (*v29.f64 / v30);
            if (v30 < 0.00000011921)
            {
              v22 = 1.0;
            }
          }

          *v8++ = v22;
          v21 += 32;
          v19 += 16;
          --v20;
        }

        while (v20);
        v14 += 152;
      }

      while (v14 != v15);
    }
  }
}

void sub_24BC62600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](va);
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t TtDetNode::TtDetNode(uint64_t a1, uint64_t a2)
{
  bzero(a1, 0x530uLL);
  *(a1 + 1448) = 0u;
  *(a1 + 1464) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1336) = 0u;
  *(a2 + 8) = 0;
  *a2 = 0xDE7C00000001;
  return a1;
}

{
  bzero(a1, 0x530uLL);
  *(a1 + 1448) = 0u;
  *(a1 + 1464) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1384) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1352) = 0u;
  *(a1 + 1368) = 0u;
  *(a1 + 1336) = 0u;
  *(a2 + 8) = 0;
  *a2 = 0xDE7C00000001;
  return a1;
}

void TtDetNode::~TtDetNode(TtDetNode *this)
{
  TtDetNode::releaseBuffers(this);
}

{
  TtDetNode::releaseBuffers(this);
}

uint64_t TtDetNode::releaseBuffers(TtDetNode *this)
{
  v2 = *(this + 167);
  if (v2)
  {
    MEMORY[0x24C253360](v2, 0x1000C80451B5BE8);
  }

  v3 = *(this + 168);
  if (v3)
  {
    MEMORY[0x24C253360](v3, 0x1000C80451B5BE8);
  }

  v4 = *(this + 169);
  if (v4)
  {
    MEMORY[0x24C253360](v4, 0x1000C80451B5BE8);
  }

  v5 = *(this + 171);
  if (v5)
  {
    MEMORY[0x24C253360](v5, 0x1000C808AA14F5FLL);
  }

  v6 = *(this + 172);
  if (v6)
  {
    MEMORY[0x24C253360](v6, 0x1000C808AA14F5FLL);
  }

  v7 = *(this + 173);
  if (v7)
  {
    MEMORY[0x24C253360](v7, 0x1000C8052888210);
    *(this + 173) = 0;
  }

  v8 = *(this + 174);
  if (v8)
  {
    MEMORY[0x24C253360](v8, 0x1000C8052888210);
    *(this + 174) = 0;
  }

  v9 = *(this + 175);
  if (v9)
  {
    MEMORY[0x24C253360](v9, 0x1000C8052888210);
    *(this + 175) = 0;
  }

  v10 = *(this + 176);
  if (v10)
  {
    MEMORY[0x24C253360](v10, 0x1000C8052888210);
    *(this + 176) = 0;
  }

  v11 = *(this + 177);
  if (v11)
  {
    MEMORY[0x24C253360](v11, 0x1000C8052888210);
    *(this + 177) = 0;
  }

  v12 = *(this + 178);
  if (v12)
  {
    MEMORY[0x24C253360](v12, 0x1000C8052888210);
    *(this + 178) = 0;
  }

  v13 = *(this + 179);
  if (v13)
  {
    MEMORY[0x24C253360](v13, 0x1000C8052888210);
    *(this + 179) = 0;
  }

  v14 = *(this + 180);
  if (v14)
  {
    MEMORY[0x24C253360](v14, 0x1000C8052888210);
    *(this + 180) = 0;
  }

  v15 = *(this + 181);
  if (v15)
  {
    MEMORY[0x24C253360](v15, 0x1000C8052888210);
    *(this + 181) = 0;
  }

  v16 = *(this + 182);
  if (v16)
  {
    MEMORY[0x24C253360](v16, 0x1000C8052888210);
    *(this + 182) = 0;
  }

  v17 = *(this + 183);
  if (v17)
  {
    MEMORY[0x24C253360](v17, 0x1000C8052888210);
    *(this + 183) = 0;
  }

  v18 = *(this + 184);
  if (v18)
  {
    MEMORY[0x24C253360](v18, 0x1000C8052888210);
    *(this + 184) = 0;
  }

  result = *(this + 170);
  if (result)
  {

    JUMPOUT(0x24C253360);
  }

  return result;
}

uint64_t TtDetNode::init(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*a3 != 1)
  {
    return 4294967289;
  }

  v3 = a3[1];
  if (v3 == 56956 || v3 == 56945)
  {
    TtDetNode::releaseBuffers(a1);
    strcpy(a1, "Tap-to-track det");
    *(a1 + 36) = 0x400000004;
    *(a1 + 44) = 0x3F19999A3E99999ALL;
    *(a1 + 896) = xmmword_24BC6D4A0;
    *(a1 + 912) = xmmword_24BC6D4B0;
    *(a1 + 928) = xmmword_24BC6D4C0;
    strcpy((a1 + 944), "BoxEncoding_0/Conv2D/q");
    strcpy((a1 + 976), "BoxEncoding_1/Conv2D/q");
    strcpy((a1 + 1008), "BoxEncoding_2/Conv2D/q");
    strcpy((a1 + 1040), "BoxEncoding_3/Conv2D/q");
    strcpy((a1 + 1072), "BoxEncoding_4/Conv2D/q");
    strcpy((a1 + 1104), "BoxEncoding_5/Conv2D/q");
    strcpy((a1 + 1136), "ClassPredictor_0/Conv2D/q");
    strcpy((a1 + 1168), "ClassPredictor_1/Conv2D/q");
    strcpy((a1 + 1200), "ClassPredictor_2/Conv2D/q");
    strcpy((a1 + 1232), "ClassPredictor_3/Conv2D/q");
    strcpy((a1 + 1264), "ClassPredictor_4/Conv2D/q");
    strcpy((a1 + 1296), "ClassPredictor_5/Conv2D/q");
    *(a1 + 768) = 0x100000002;
    *(a1 + 752) = xmmword_24BC6D6B0;
    *(a1 + 792) = 0x100000002;
    *(a1 + 776) = xmmword_24BC6D6B0;
    *(a1 + 800) = xmmword_24BC6D4D0;
    *(a1 + 816) = xmmword_24BC6D4F0;
    *(a1 + 832) = xmmword_24BC6D500;
    *(a1 + 848) = xmmword_24BC6D4E0;
    *(a1 + 864) = xmmword_24BC6D510;
    *(a1 + 880) = vdupq_n_s32(0x222u);
    *(a1 + 432) = 0x100000002;
    *(a1 + 416) = xmmword_24BC6D6B0;
    *(a1 + 472) = xmmword_24BC6D6E8;
    *(a1 + 488) = unk_24BC6D6F8;
    *(a1 + 440) = xmmword_24BC6D6C8;
    *(a1 + 456) = *algn_24BC6D6D8;
    *(a1 + 552) = xmmword_24BC6D738;
    *(a1 + 568) = unk_24BC6D748;
    *(a1 + 520) = unk_24BC6D718;
    *(a1 + 536) = xmmword_24BC6D728;
    *(a1 + 504) = xmmword_24BC6D708;
    *(a1 + 680) = xmmword_24BC6D7B8;
    *(a1 + 696) = unk_24BC6D7C8;
    *(a1 + 712) = xmmword_24BC6D7D8;
    *(a1 + 616) = xmmword_24BC6D778;
    *(a1 + 632) = unk_24BC6D788;
    *(a1 + 648) = xmmword_24BC6D798;
    *(a1 + 664) = unk_24BC6D7A8;
    *(a1 + 584) = xmmword_24BC6D758;
    *(a1 + 600) = unk_24BC6D768;
    *(a1 + 744) = 0x600000006;
    *(a1 + 728) = xmmword_24BC6D7E8;
    *(a1 + 20) = xmmword_24BC6D520;
    memcpy((a1 + 52), &unk_24BC6D800, 0x16CuLL);
    *(a3 + 1) = 0xDE70000DE71;
    a3[3] = 1;
    *(a1 + 1328) = 1917;
    operator new[]();
  }

  return 4294967292;
}

uint64_t TtDetNode::populateAnchorBoxes(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4, unsigned int a5, uint64_t a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  if (a5)
  {
    v14 = 0;
    v15 = 0;
    v16.i64[0] = 0x3F0000003F000000;
    v16.i64[1] = 0x3F0000003F000000;
    v71 = a3;
    v17 = a2;
    v18 = a5;
    while (1)
    {
      v19 = *(a1 + 4 * v14);
      if (v19)
      {
        v20 = *(a4 + 4 * v14);
        if (v20)
        {
          break;
        }
      }

LABEL_3:
      ++v14;
      a3 = (a3 + 24);
      v17 = (v17 + 24);
      if (v14 == v18)
      {
        return v15;
      }
    }

    v21 = 1.0 / v19;
    v22 = v21 * 0.5;
    v23 = 4 * v20;
    if (v20 < 0x10)
    {
      for (i = 0; i != v19; ++i)
      {
        for (j = 0; j != v19; ++j)
        {
          v26 = 0;
          do
          {
            v27 = sqrtf(*(a3 + v26));
            v28 = *(v17 + v26);
            v29 = v28 / v27;
            v30 = v28 * v27;
            v31 = (v22 + (j * v21)) - (v30 * 0.5);
            v32 = (a6 + 16 * v15);
            v33 = (v22 + (i * v21)) - (v29 * 0.5);
            *v32 = v31;
            v32[1] = v33;
            v32[2] = v30 + v31;
            v32[3] = v29 + v33;
            v15 = (v15 + 1);
            v26 += 4;
          }

          while (v23 != v26);
        }
      }

      goto LABEL_3;
    }

    v34 = 0;
    v35 = v71 + 24 * v14;
    v36 = a2 + 24 * v14;
    v37 = a6 + 16 * v20;
    v38 = v35 + v23;
    v39 = v36 + v23;
    v40 = 16 * (v20 - 1);
    v41 = v20 & 0xFFFFFFFC;
LABEL_16:
    v42 = 0;
    *&a12 = v22 + (v34 * v21);
    v43 = vdupq_lane_s32(*&a12, 0);
    while (1)
    {
      v44 = 0;
      *&a14 = v22 + (v42 * v21);
      v45 = __CFADD__(v15, v20 - 1);
      v46 = 16 * v15;
      v47 = a6 + v46;
      if (a6 + v46 + v40 < (a6 + v46) || a6 + 4 + v46 + v40 < (a6 + 4 + v46) || a6 + 12 + v46 + v40 < (a6 + 12 + v46) || a6 + 8 + v46 + v40 < (a6 + 8 + v46) || v45 || (v20 - 1) >> 32 || ((v44 = 0, v48 = v37 + v46, v36 < v37 + v46) ? (v49 = v47 >= v39) : (v49 = 1), v49 ? (v50 = 0) : (v50 = 1), v47 < v38 ? (v51 = v35 >= v48) : (v51 = 1), !v51 || (v50 & 1) != 0))
      {
        LODWORD(v52) = v15;
      }

      else
      {
        v52 = (v15 + v41);
        v53 = vdupq_lane_s32(*&a14, 0);
        v54 = v20 & 0xFFFFFFFC;
        v55 = v17;
        v56 = a3;
        do
        {
          v57 = *v56++;
          v58 = vsqrtq_f32(v57);
          v59 = *v55++;
          v60 = vdivq_f32(v59, v58);
          v61 = vmulq_f32(v59, v58);
          v73.val[0] = vsubq_f32(v53, vmulq_f32(v61, v16));
          v73.val[1] = vsubq_f32(v43, vmulq_f32(v60, v16));
          v73.val[2] = vaddq_f32(v61, v73.val[0]);
          v73.val[3] = vaddq_f32(v60, v73.val[1]);
          v62 = (a6 + 16 * v15);
          vst4q_f32(v62, v73);
          LODWORD(v15) = v15 + 4;
          v54 -= 4;
        }

        while (v54);
        v44 = v20 & 0xFFFFFFFC;
        v15 = v52;
        if (v41 == v20)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v15) = v52;
      do
      {
        v63 = sqrtf(*(a3 + v44));
        v64 = *(v17 + v44);
        v65 = v64 / v63;
        v66 = v64 * v63;
        v67 = *&a14 - (v66 * 0.5);
        v68 = (a6 + 16 * v15);
        v69 = *&a12 - (v65 * 0.5);
        *v68 = v67;
        v68[1] = v69;
        v68[2] = v66 + v67;
        v68[3] = v65 + v69;
        v15 = (v15 + 1);
        ++v44;
      }

      while (v20 != v44);
LABEL_17:
      if (++v42 == v19)
      {
        if (++v34 == v19)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }
    }
  }

  return 0;
}

uint64_t TtDetNode::postProcess(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, uint64_t a5, float *a6, double a7, double a8, double a9, double a10, double a11, double a12, float32x4_t a13, float32x4_t a14)
{
  if (*a4 != 1)
  {
    return 4294967289;
  }

  v16 = 4294967292;
  if (a3 == 12 && a4[1] == 56945)
  {
    v17 = 0;
    v18 = a1 + 1480;
    while (1)
    {
      v19 = (a2 + 24 * v17);
      v20 = v18 + 24 * v17;
      v21 = *v19;
      *(v20 + 16) = *(v19 + 2);
      *v20 = v21;
      v22 = *(v19 + 5);
      if (v22 == 6)
      {
        goto LABEL_5;
      }

      if (v22)
      {
        return 4294967293;
      }

      v23 = *(v20 + 12);
      v24 = (4 * v23);
      *(v20 + 16) = v24;
      *(v20 + 20) = 6;
      v25 = *(a1 + 1384 + 8 * v17);
      *v20 = v25;
      if (*(v19 + 5))
      {
        AcAttrNode::postProcess();
      }

      v26 = *(v19 + 2);
      if (v26 != *(v20 + 8))
      {
        AcAttrNode::postProcess();
      }

      if (*(v19 + 3) != v23)
      {
        AcAttrNode::postProcess();
      }

      if (!v26 || !v23)
      {
        goto LABEL_5;
      }

      LODWORD(v21) = *(a1 + 896 + 4 * v17);
      v27 = *(v19 + 4);
      v28 = *v19;
      if (v23 <= 3)
      {
        v29 = (v25 + 8);
        v30 = (v28 + 2);
        do
        {
          a13.i8[0] = *(v30 - 2);
          a13.i64[0] = vmovl_s16(*&vmovl_s8(*a13.f32)).u64[0];
          a13.f32[0] = (*&v21 * a13.i32[0]) + 0.0;
          *(v29 - 2) = a13.i32[0];
          if (v23 != 1)
          {
            a13.i8[0] = *(v30 - 1);
            a13.i64[0] = vmovl_s16(*&vmovl_s8(*a13.f32)).u64[0];
            a13.f32[0] = (*&v21 * a13.i32[0]) + 0.0;
            *(v29 - 1) = a13.i32[0];
            if (v23 != 2)
            {
              a13.i8[0] = *v30;
              a13.i64[0] = vmovl_s16(*&vmovl_s8(*a13.f32)).u64[0];
              a13.f32[0] = (*&v21 * a13.i32[0]) + 0.0;
              *v29 = a13.i32[0];
            }
          }

          v29 = (v29 + v24);
          v30 += v27;
          --v26;
        }

        while (v26);
        goto LABEL_5;
      }

      if (v25 >= v28 + v27 * (v26 - 1) + v23 || v28 >= v25 + v24 * (v26 - 1) + 4 * v23)
      {
        break;
      }

      for (i = 0; i != v26; ++i)
      {
        for (j = 0; j != v23; ++j)
        {
          a13.i8[0] = *(v28 + j);
          a13.i64[0] = vmovl_s16(*&vmovl_s8(*a13.f32)).u64[0];
          a13.f32[0] = (*&v21 * a13.i32[0]) + 0.0;
          *(v25 + 4 * j) = a13.i32[0];
        }

        v28 += v27;
        v25 += v24;
      }

LABEL_5:
      if (++v17 == 12)
      {
        std::chrono::steady_clock::now();
        v48 = 0;
        v49 = 0;
        v50 = a1 + 752;
        v51 = a1 + 800;
        v52 = a1 + 848;
        do
        {
          v53 = *(v51 + 4 * v49);
          if (v53)
          {
            v54 = *(v50 + 4 * v49);
            if (v54)
            {
              v55 = *(v52 + 4 * v49);
              if (v55)
              {
                v56 = 0;
                v57 = v18 + 24 * v49;
                v58 = *(v57 + 12);
                do
                {
                  for (k = 0; k != v54; ++k)
                  {
                    if (k >= v58)
                    {
LABEL_69:
                      AcAttrNode::postProcess();
                    }

                    v61 = 0;
                    v62 = v56;
                    do
                    {
                      if (*(v57 + 8) <= v62)
                      {
                        goto LABEL_69;
                      }

                      v63 = *(*v57 + *(v57 + 16) * v62 + 4 * k);
                      v64 = *(a1 + 1352);
                      if ((v61 & 3u) > 1)
                      {
                        v65 = v64 + 16 * v48;
                        if ((v61 & 3) == 2)
                        {
                          *(v65 + 12) = v63;
                        }

                        else
                        {
                          *(v65 + 8) = v63;
                          ++v48;
                        }
                      }

                      else if ((v61 & 3) != 0)
                      {
                        *(v64 + 16 * v48) = v63;
                      }

                      else
                      {
                        *(v64 + 16 * v48 + 4) = v63;
                      }

                      ++v61;
                      v62 += v53;
                    }

                    while (v55 != v61);
                  }

                  ++v56;
                }

                while (v56 != v53);
              }

              else
              {
                do
                {
                  v59 = *(v50 + 4 * v49);
                  do
                  {
                    --v59;
                  }

                  while (v59);
                  ++v55;
                }

                while (v55 != v53);
              }
            }

            else
            {
              do
              {
                --v53;
              }

              while (v53);
            }
          }

          ++v49;
        }

        while (v49 != 6);
        v66 = 0;
        v67 = 0;
        for (m = 6; m != 12; ++m)
        {
          v69 = *(v51 + 4 * m);
          if (v69)
          {
            v70 = *(v50 + 4 * m);
            if (v70)
            {
              v71 = *(v52 + 4 * m);
              if (v71)
              {
                v72 = 0;
                v73 = v18 + 24 * m;
                v74 = *(v73 + 12);
                do
                {
                  for (n = 0; n != v70; ++n)
                  {
                    v76 = v72;
                    v77 = v71;
                    if (n >= v74)
                    {
LABEL_95:
                      AcAttrNode::postProcess();
                    }

                    do
                    {
                      if (*(v73 + 8) <= v76)
                      {
                        goto LABEL_95;
                      }

                      *(*(a1 + 1360) + 4 * (v67 + 91 * v66)) = *(*v73 + *(v73 + 16) * v76 + 4 * n);
                      v78 = v67 + 1;
                      if ((v67 + 1) <= 0x5A)
                      {
                        ++v67;
                      }

                      else
                      {
                        v67 = 0;
                      }

                      if (v78 > 0x5A)
                      {
                        ++v66;
                      }

                      v76 += v69;
                      --v77;
                    }

                    while (v77);
                  }

                  ++v72;
                }

                while (v72 != v69);
              }

              else
              {
                do
                {
                  v79 = *(v50 + 4 * m);
                  do
                  {
                    --v79;
                  }

                  while (v79);
                  ++v71;
                }

                while (v71 != v69);
              }
            }

            else
            {
              do
              {
                --v69;
              }

              while (v69);
            }
          }
        }

        v80 = *(a1 + 1328);
        v81 = *(a1 + 1344);
        if (v80)
        {
          v82 = *(a1 + 1352);
          v83 = *(a1 + 1336);
          if (v80 < 4)
          {
            v84 = 0;
LABEL_99:
            v85 = v80 - v84;
            v86 = (16 * v84) | 8;
            v87 = (v83 + v86);
            v88 = (v81 + v86);
            v89 = (v82 + v86);
            v14 = 0x3F0000003F000000;
            __asm
            {
              FMOV            V9.2S, #10.0
              FMOV            V10.2S, #5.0
            }

            do
            {
              v93 = v87[-1];
              v94 = vmul_f32(vadd_f32(v93, *v87), 0x3F0000003F000000);
              v95 = vsub_f32(*v87, v93);
              v96 = vdiv_f32(v89[-1], _D9);
              v97 = vdiv_f32(*v89, _D10);
              v186 = v97.f32[0];
              v190 = expf(v97.f32[1]);
              v98.f32[0] = expf(v186);
              v98.f32[1] = v190;
              v99 = vmul_f32(v95, v98);
              v100 = vsub_f32(vmla_f32(v94, v95, v96), vmul_f32(v99, 0x3F0000003F000000));
              v88[-1] = v100;
              *v88 = vadd_f32(v99, v100);
              v87 += 2;
              v88 += 2;
              v89 += 2;
              --v85;
            }

            while (v85);
            goto LABEL_101;
          }

          v84 = 0;
          v126 = 16 * v80 - 12;
          v127 = v81 + v126;
          v128 = v83 + v126;
          v129 = 16 * v80 - 8;
          v130 = 16 * v80 - 4;
          v131 = v81 + v130;
          v132 = v83 + v130;
          v134 = v81 + 4 < v83 + v129 && v83 + 4 < v81 + v129;
          v136 = v81 + 12 < v83 + 16 * v80 && v83 + 12 < &v81[v80];
          v138 = v81 + 8 < v132 && v83 + 8 < v131;
          if (v83 < v127 && v81 < v128)
          {
            goto LABEL_99;
          }

          if (v134)
          {
            goto LABEL_99;
          }

          if (v136)
          {
            goto LABEL_99;
          }

          if (v138)
          {
            goto LABEL_99;
          }

          v172 = *(a1 + 1352);
          v173 = *(a1 + 1328);
          v140 = v80 & 0xFFFFFFFC;
          __asm
          {
            FMOV            V1.4S, #10.0
            FMOV            V0.4S, #5.0
          }

          v174 = _Q0;
          v175 = _Q1;
          v171 = v140;
          v143 = *(a1 + 1336);
          v144 = *(a1 + 1344);
          do
          {
            v194 = vld4q_f32(v143);
            v143 += 16;
            v145.i64[0] = 0x3F0000003F000000;
            v145.i64[1] = 0x3F0000003F000000;
            v179 = vmulq_f32(vaddq_f32(v194.val[1], v194.val[3]), v145);
            v180 = vmulq_f32(vaddq_f32(v194.val[0], v194.val[2]), v145);
            v181 = vsubq_f32(v194.val[2], v194.val[0]);
            v196 = vld4q_f32(v82);
            v82 += 16;
            v178 = vsubq_f32(v194.val[3], v194.val[1]);
            v176 = vdivq_f32(v196.val[1], v175);
            v177 = vdivq_f32(v196.val[0], v175);
            v187 = vdivq_f32(v196.val[2], v174);
            v191 = vdivq_f32(v196.val[3], v174);
            v182 = expf(v187.f32[1]);
            v146.f32[0] = expf(v187.f32[0]);
            v146.f32[1] = v182;
            v183 = v146;
            v147 = expf(v187.f32[2]);
            v148 = v183;
            v148.f32[2] = v147;
            v184 = v148;
            v149 = expf(v187.f32[3]);
            v150 = v184;
            v150.f32[3] = v149;
            v185 = vmulq_f32(v181, v150);
            v187.i32[0] = expf(v191.f32[1]);
            v151.f32[0] = expf(v191.f32[0]);
            v151.i32[1] = v187.i32[0];
            v188 = v151;
            v152 = expf(v191.f32[2]);
            v153 = v188;
            v153.f32[2] = v152;
            v189 = v153;
            v154 = expf(v191.f32[3]);
            v155 = v189;
            v155.f32[3] = v154;
            v156 = vmulq_f32(v178, v155);
            v157.i64[0] = 0x3F0000003F000000;
            v157.i64[1] = 0x3F0000003F000000;
            v195.val[0] = vsubq_f32(vmlaq_f32(v180, v181, v177), vmulq_f32(v185, v157));
            v195.val[1] = vsubq_f32(vmlaq_f32(v179, v178, v176), vmulq_f32(v156, v157));
            v195.val[2] = vaddq_f32(v185, v195.val[0]);
            v195.val[3] = vaddq_f32(v156, v195.val[1]);
            vst4q_f32(v144, v195);
            v144 += 16;
            v140 -= 4;
          }

          while (v140);
          v82 = v172;
          v80 = v173;
          v84 = v171;
          if (v171 != v173)
          {
            goto LABEL_99;
          }
        }

LABEL_101:
        if (a4[3] == 2)
        {
          v101 = a1;
          v102 = *(a1 + 1360);
          if (*(a5 + 180) == 1)
          {
            v14 = *(a5 + 192);
            _D9 = *(a5 + 200);
            LODWORD(v193[0]) = *(a5 + 188);
            v103 = TtDetNode::multiclassNonmaxSuppress(v81, v102, v80, v193, 1u, *(a1 + 40), *(a1 + 36), *(a1 + 1368), *(a1 + 48), *(a1 + 44), *(a1 + 1376));
            goto LABEL_109;
          }
        }

        else
        {
          v101 = a1;
          v102 = *(a1 + 1360);
        }

        a4[3] = 1;
        v103 = TtDetNode::multiclassNonmaxSuppress(v81, v102, v80, v101 + 52, *(v101 + 32), *(v101 + 40), *(v101 + 36), *(v101 + 1368), *(v101 + 48), *(v101 + 44), *(v101 + 1376));
LABEL_109:
        *(a5 + 180) = v103;
        if (v103)
        {
          *v104.f32 = vcvt_f32_u32(*(a1 + 20));
          v104.i64[1] = v104.i64[0];
          v105 = v103;
          v106 = (*(a1 + 1376) + 8);
          v107 = a5 + 188;
          do
          {
            *v108.f32 = v106[-1];
            *&v108.u32[2] = vsub_f32(*v106, *v108.f32);
            *(v107 + 4) = vmulq_f32(v108, v104);
            v109 = v106[1].i32[0];
            if (!v109)
            {
              TtDetNode::postProcess();
            }

            if (v109 >= 91)
            {
              TtDetNode::postProcess();
            }

            *v107 = v109;
            *(v107 + 80) = 0;
            v106 = (v106 + 36);
            v107 += 88;
            --v105;
          }

          while (v105);
        }

        if (a6)
        {
          if (a4[3] == 1)
          {
            v110 = *a6;
            if (*a6 >= 0.0)
            {
              v111 = a6[1];
              if (v111 >= 0.0 && v103 != 0)
              {
                v113 = 0;
                v114 = (a5 + 184);
                v115 = (a5 + 204);
                v116 = -1;
                v117 = 1000000.0;
                do
                {
                  v119 = *(v115 - 3);
                  v118 = *(v115 - 2);
                  v120 = v119 + *(v115 - 1);
                  v121 = v118 + *v115;
                  if (v119 <= v110 && v110 <= v120 && v118 <= v111 && v111 <= v121)
                  {
                    v125 = sqrtf(((v111 - ((v118 + v121) * 0.5)) * (v111 - ((v118 + v121) * 0.5))) + ((v110 - ((v119 + v120) * 0.5)) * (v110 - ((v119 + v120) * 0.5))));
                    if (v125 < v117)
                    {
                      v116 = v113;
                      v117 = v125;
                    }
                  }

                  ++v113;
                  v115 += 22;
                }

                while (v103 != v113);
                if ((v116 & 0x80000000) == 0)
                {
                  *(a5 + 180) = 1;
                  if (v116)
                  {
                    v168 = v114 + 88 * v116;
                    v169 = *(v168 + 3);
                    *(a5 + 216) = *(v168 + 2);
                    *(a5 + 232) = v169;
                    *(a5 + 248) = *(v168 + 4);
                    *(a5 + 264) = *(v168 + 10);
                    v170 = *(v168 + 1);
                    *v114 = *v168;
                    *(a5 + 200) = v170;
                  }

                  v16 = 0;
                  a4[3] = 2;
                  return v16;
                }
              }
            }
          }

          else if (v103)
          {
            v158 = 0;
            v159 = 0;
            v193[0] = v14;
            v193[1] = vadd_f32(_D9, v14);
            v160 = (a5 + 184);
            v161 = (a5 + 200);
            v162 = -1.0;
            do
            {
              v163 = vadd_f32(v161[-1], *v161);
              v192[0] = v161[-1];
              v192[1] = v163;
              ttDetRectOverlap(v193, v192);
              if (v164 > v162)
              {
                v162 = v164;
                v159 = v158;
              }

              ++v158;
              v161 += 11;
            }

            while (v158 < *(a5 + 180));
            *(a5 + 180) = 1;
            if (v159)
            {
              v165 = v160 + 88 * v159;
              v166 = *(v165 + 3);
              *(a5 + 216) = *(v165 + 2);
              *(a5 + 232) = v166;
              *(a5 + 248) = *(v165 + 4);
              *(a5 + 264) = *(v165 + 10);
              v167 = *(v165 + 1);
              *v160 = *v165;
              *(a5 + 200) = v167;
            }
          }
        }

        return 0;
      }
    }

    v32 = 0;
    a13 = vdupq_lane_s32(*&v21, 0);
    v33 = v23 & 0xFFFFFFFC;
    while (v23 >= 0x10)
    {
      v35 = 0;
      v36 = v28;
      do
      {
        v37 = *v36++;
        a14 = vcvtq_n_f32_s32(vqtbl1q_s8(v37, xmmword_24BC6B7C0), 0x18uLL);
        v38 = (v25 + v35);
        v38[2] = vmlaq_f32(0, vcvtq_n_f32_s32(vqtbl1q_s8(v37, xmmword_24BC6B7B0), 0x18uLL), a13);
        v38[3] = vmlaq_f32(0, a14, a13);
        *v38 = vmlaq_f32(0, vcvtq_n_f32_s32(vqtbl1q_s8(v37, xmmword_24BC6B790), 0x18uLL), a13);
        v38[1] = vmlaq_f32(0, vcvtq_n_f32_s32(vqtbl1q_s8(v37, xmmword_24BC6B7A0), 0x18uLL), a13);
        v35 += 64;
      }

      while (((4 * v23) & 0x3FFFFFFC0) != v35);
      if ((v23 & 0xFFFFFFF0) == v23)
      {
        goto LABEL_25;
      }

      v34 = v23 & 0xFFFFFFF0;
      v39 = v34;
      if ((v23 & 0xC) != 0)
      {
        goto LABEL_32;
      }

      do
      {
LABEL_35:
        a14.i8[0] = *(v28 + v39);
        a14 = vmovl_s16(*&vmovl_s8(*a14.f32));
        a14.f32[0] = (*&v21 * a14.i32[0]) + 0.0;
        *(v25 + 4 * v39++) = a14.i32[0];
      }

      while (v23 != v39);
LABEL_25:
      v28 += v27;
      v25 += v24;
      if (++v32 == v26)
      {
        goto LABEL_5;
      }
    }

    v34 = 0;
LABEL_32:
    v40 = 4 * v34;
    do
    {
      a14.i32[0] = *(v28 + v34);
      a14 = vcvtq_n_f32_s32(vqtbl1q_s8(a14, xmmword_24BC6B790), 0x18uLL);
      *(v25 + v40) = vmlaq_f32(0, a14, a13);
      v34 += 4;
      v40 += 16;
    }

    while (v33 != v34);
    v39 = v23 & 0xFFFFFFFC;
    if (v33 == v23)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  return v16;
}