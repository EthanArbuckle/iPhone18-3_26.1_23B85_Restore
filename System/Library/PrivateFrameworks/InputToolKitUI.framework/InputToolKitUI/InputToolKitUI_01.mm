void sub_254C1F9CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  ClipperLib::Clipper::~Clipper(&a18);
  _Unwind_Resume(a1);
}

void *std::vector<ClipperLib::DoublePoint>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(result, a2);
    }

    std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<ClipperLib::DoublePoint>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void ClipperLib::ClipperOffset::OffsetPoint(ClipperLib::ClipperOffset *this, int a2, int *a3, int a4)
{
  v7 = *a3;
  v8 = *(this + 11);
  v9 = a2;
  v10 = (v8 + 16 * a2);
  v12 = *v10;
  v11 = v10[1];
  v13 = *(v8 + 16 * v7);
  v14 = *(v8 + 16 * v7 + 8);
  v15 = vmuld_lane_f64(-*v10, v13, 1) + v13.f64[0] * v11;
  *(this + 15) = v15;
  v16 = *(this + 14);
  v17 = 1.0;
  if (fabs(v15 * v16) >= 1.0)
  {
    if (v15 > 1.0 || (v17 = -1.0, v15 < -1.0))
    {
      *(this + 15) = v17;
      v15 = v17;
    }
  }

  else if (v11 * v14 + v13.f64[0] * v12 > 0.0)
  {
    v18 = vmlaq_n_f64(vcvtq_f64_s64(*(*(this + 5) + 24 * a2)), v13, v16);
    __asm
    {
      FMOV            V2.2D, #0.5
      FMOV            V3.2D, #-0.5
    }

    v34 = vcvtq_s64_f64(vaddq_f64(v18, vbslq_s8(vcltzq_f64(v18), _Q3, _Q2)));
    __asm { FMOV            V0.2S, #-1.0 }

    v35 = _D0;
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v34.i8);
    return;
  }

  if (v15 * v16 < 0.0)
  {
    v26 = vmlaq_n_f64(vcvtq_f64_s64(*(*(this + 5) + 24 * a2)), v13, v16);
    __asm
    {
      FMOV            V2.2D, #0.5
      FMOV            V3.2D, #-0.5
    }

    v32 = _Q2;
    v33 = _Q3;
    v34 = vcvtq_s64_f64(vaddq_f64(v26, vbslq_s8(vcltzq_f64(v26), _Q3, _Q2)));
    __asm { FMOV            V8.2S, #-1.0 }

    v35 = _D8;
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v34.i8);
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, (*(this + 5) + 24 * v9));
    v30 = vmlaq_n_f64(vcvtq_f64_s64(*(*(this + 5) + 24 * v9)), *(*(this + 11) + 16 * v9), *(this + 14));
    v34 = vcvtq_s64_f64(vaddq_f64(v30, vbslq_s8(vcltzq_f64(v30), v33, v32)));
    v35 = _D8;
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v34.i8);
    goto LABEL_16;
  }

  switch(a4)
  {
    case 0:
LABEL_13:
      ClipperLib::ClipperOffset::DoSquare(this, a2, v7);
      break;
    case 1:
      ClipperLib::ClipperOffset::DoRound(this, a2, v7);
      break;
    case 2:
      v31 = v11 * v14 + v12 * v13.f64[0] + 1.0;
      if (v31 >= *(this + 18))
      {
        ClipperLib::ClipperOffset::DoMiter(this, a2, v7, v31);
        break;
      }

      goto LABEL_13;
  }

LABEL_16:
  *a3 = a2;
}

void ClipperLib::ClipperOffset::DoSquare(ClipperLib::ClipperOffset *this, int a2, int a3)
{
  v5 = *(this + 11);
  v21 = *(v5 + 16 * a3);
  v6 = *(v5 + 16 * a3 + 8);
  v7 = atan2(*(this + 15), vmuld_lane_f64(*(v5 + 16 * a2 + 8), v21, 1) + v21.f64[0] * *(v5 + 16 * a2));
  v23 = tan(v7 * 0.25);
  v8 = vdupq_lane_s64(*&v21.f64[0], 0);
  v8.f64[0] = -v6;
  v9 = vmlaq_n_f64(vcvtq_f64_s64(*(*(this + 5) + 24 * a2)), vmlaq_n_f64(v21, v8, v23), *(this + 14));
  __asm
  {
    FMOV            V2.2D, #0.5
    FMOV            V3.2D, #-0.5
  }

  v20 = _Q2;
  v22 = _Q3;
  v24 = vcvtq_s64_f64(vaddq_f64(v9, vbslq_s8(vcltzq_f64(v9), _Q3, _Q2)));
  __asm { FMOV            V8.2S, #-1.0 }

  v25 = _D8;
  std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v24.i8);
  v17 = *(*(this + 11) + 16 * a2);
  *&v18.f64[0] = vdupq_laneq_s64(v17, 1).u64[0];
  v18.f64[1] = -v17.f64[0];
  v19 = vmlaq_n_f64(vcvtq_f64_s64(*(*(this + 5) + 24 * a2)), vmlaq_n_f64(v17, v18, v23), *(this + 14));
  v24 = vcvtq_s64_f64(vaddq_f64(v19, vbslq_s8(vcltzq_f64(v19), v22, v20)));
  v25 = _D8;
  std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v24.i8);
}

void ClipperLib::ClipperOffset::DoRound(ClipperLib::ClipperOffset *this, int a2, int a3)
{
  v4 = *(this + 11);
  v5 = (v4 + 16 * a3);
  v6 = a2;
  v8 = *v5;
  v7 = v5[1];
  v9 = *(this + 19) * fabs(atan2(*(this + 15), v7 * *(v4 + 16 * a2 + 8) + *v5 * *(v4 + 16 * a2)));
  if (v9 >= 0.0)
  {
    v10 = 0.5;
  }

  else
  {
    v10 = -0.5;
  }

  if ((v9 + v10) <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = (v9 + v10);
  }

  __asm { FMOV            V10.2S, #-1.0 }

  do
  {
    v17 = (*(this + 5) + 24 * v6);
    v18 = v17[1];
    v19 = *(this + 14);
    v20 = *v17 + v8 * v19;
    if (v20 >= 0.0)
    {
      v21 = 0.5;
    }

    else
    {
      v21 = -0.5;
    }

    v22 = (v20 + v21);
    v23 = v18 + v7 * v19;
    if (v23 >= 0.0)
    {
      v24 = 0.5;
    }

    else
    {
      v24 = -0.5;
    }

    v31.i64[0] = v22;
    v31.i64[1] = (v23 + v24);
    v32 = _D10;
    std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v31.i8);
    v26 = *(this + 16);
    v25 = *(this + 17);
    v27 = -(v26 * v7);
    v7 = v7 * v25 + v8 * v26;
    v8 = v27 + v8 * v25;
    --v11;
  }

  while (v11);
  v28 = vmlaq_n_f64(vcvtq_f64_s64(*(*(this + 5) + 24 * v6)), *(*(this + 11) + 16 * v6), *(this + 14));
  __asm
  {
    FMOV            V2.2D, #0.5
    FMOV            V3.2D, #-0.5
  }

  v31 = vcvtq_s64_f64(vaddq_f64(v28, vbslq_s8(vcltzq_f64(v28), _Q3, _Q2)));
  v32 = _D10;
  std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v31.i8);
}

double ClipperLib::ClipperOffset::DoMiter(ClipperLib::ClipperOffset *this, int a2, int a3, double a4)
{
  v4 = vmlaq_n_f64(vcvtq_f64_s64(*(*(this + 5) + 24 * a2)), vaddq_f64(*(*(this + 11) + 16 * a3), *(*(this + 11) + 16 * a2)), *(this + 14) / a4);
  __asm
  {
    FMOV            V2.2D, #0.5
    FMOV            V3.2D, #-0.5
  }

  v13 = vcvtq_s64_f64(vaddq_f64(v4, vbslq_s8(vcltzq_f64(v4), _Q3, _Q2)));
  __asm { FMOV            V0.2S, #-1.0 }

  v14 = _D0;
  std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v13.i8);
  return result;
}

uint64_t *ClipperLib::ReversePaths(uint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  if (v1 != *result)
  {
    v3 = 0;
    do
    {
      v4 = (v2 + 24 * v3);
      v5 = *v4;
      v6 = v4[1];
      v7 = v6 - 24;
      if (v5 != v6 && v7 > v5)
      {
        v9 = v5 + 24;
        do
        {
          v10 = *(v9 - 8);
          v11 = *(v9 - 24);
          v12 = *(v7 + 16);
          *(v9 - 24) = *v7;
          *(v9 - 8) = v12;
          *v7 = v11;
          *(v7 + 16) = v10;
          v7 -= 24;
          v13 = v9 >= v7;
          v9 += 24;
        }

        while (!v13);
        v2 = *result;
        v1 = result[1];
      }

      ++v3;
    }

    while (v3 < 0xAAAAAAAAAAAAAAABLL * ((v1 - v2) >> 3));
  }

  return result;
}

void ClipperLib::SimplifyPolygon(uint64_t a1, void *a2, int a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v17 = 0u;
  v18 = 0u;
  v5 = &unk_286711450;
  *v6 = 0u;
  *v7 = 0u;
  v8 = 0u;
  *__p = 0u;
  v10 = 0;
  v11[0] = v11;
  v11[1] = v11;
  v11[2] = 0;
  v12 = 0;
  v19 = 0;
  v13 = 0;
  v23 = 0;
  v15 = 0;
  v16 = &unk_286711498;
  v14 = 1;
  ClipperLib::ClipperBase::AddPath(&v16, a1, 0, 1);
  ClipperLib::Clipper::Execute(&v5, 1, a2, a3, a3);
  v5 = &unk_286711450;
  v16 = &unk_286711498;
  std::__list_imp<long long>::clear(v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[1])
  {
    *&v8 = v7[1];
    operator delete(v7[1]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  ClipperLib::ClipperBase::~ClipperBase(&v16);
}

void sub_254C202B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

void ClipperLib::SimplifyPolygons(uint64_t *a1, void *a2, int a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v17 = 0u;
  v18 = 0u;
  v5 = &unk_286711450;
  *v6 = 0u;
  *v7 = 0u;
  v8 = 0u;
  *__p = 0u;
  v10 = 0;
  v11[0] = v11;
  v11[1] = v11;
  v11[2] = 0;
  v12 = 0;
  v19 = 0;
  v13 = 0;
  v23 = 0;
  v15 = 0;
  v16 = &unk_286711498;
  v14 = 1;
  ClipperLib::ClipperBase::AddPaths(&v16, a1, 0, 1);
  ClipperLib::Clipper::Execute(&v5, 1, a2, a3, a3);
  v5 = &unk_286711450;
  v16 = &unk_286711498;
  std::__list_imp<long long>::clear(v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[1])
  {
    *&v8 = v7[1];
    operator delete(v7[1]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  ClipperLib::ClipperBase::~ClipperBase(&v16);
}

void sub_254C2044C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

double ClipperLib::DistanceFromLineSqrd(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = a2[1];
  v4 = (v3 - a3[1]);
  v5 = *a3 - *a2;
  v6 = v5 * a1[1] + v4 * *a1 - (v3 * v5 + v4 * *a2);
  return v6 * v6 / (v5 * v5 + v4 * v4);
}

BOOL ClipperLib::SlopesNearCollinear(uint64_t *a1, uint64_t *a2, uint64_t *a3, double a4)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  if (*a1 - *a2 >= 0)
  {
    v8 = *a1 - *a2;
  }

  else
  {
    v8 = *a2 - *a1;
  }

  v9 = v4 - v6;
  if (v4 - v6 >= 0)
  {
    v10 = v4 - v6;
  }

  else
  {
    v10 = v6 - v4;
  }

  if (v8 <= v10)
  {
    v14 = a3[1];
    if (v4 > v6 != v4 >= v14)
    {
      v12 = (v6 - v14);
      v13 = *a3 - v7;
      goto LABEL_12;
    }

    if (v4 < v6 != v6 >= v14)
    {
      v12 = (v4 - v14);
      v15 = (*a3 - v5);
      goto LABEL_17;
    }

    v12 = v9;
    v15 = (v7 - v5);
    v16 = v4 * v15 + v9 * v5;
    v17 = *a3;
    v21 = v14;
LABEL_21:
    v20 = v15 * v21;
    return (v20 + v12 * v17 - v16) * (v20 + v12 * v17 - v16) / (v15 * v15 + v12 * v12) < a4;
  }

  v11 = *a3;
  if (v7 < v5 == *a3 <= v5)
  {
    v19 = v7 - v5;
    if (v7 > v5 != v11 <= v7)
    {
      v12 = (v4 - a3[1]);
      v15 = (*a3 - v5);
LABEL_17:
      v16 = v4 * v15 + v12 * v5;
      v17 = v7;
      v18 = v6;
      goto LABEL_18;
    }

    v12 = v9;
    v15 = v19;
    v16 = v4 * v19 + v9 * v5;
    v17 = v11;
    v21 = a3[1];
    goto LABEL_21;
  }

  v12 = (v6 - a3[1]);
  v13 = v11 - v7;
LABEL_12:
  v15 = v13;
  v16 = v6 * v13 + v12 * v7;
  v17 = v5;
  v18 = v4;
LABEL_18:
  v20 = v18 * v15;
  return (v20 + v12 * v17 - v16) * (v20 + v12 * v17 - v16) / (v15 * v15 + v12 * v12) < a4;
}

BOOL ClipperLib::PointsAreClose(uint64_t *a1, uint64_t *a2, double a3)
{
  v3 = *a1 - *a2;
  v4 = a1[1] - a2[1];
  return v4 * v4 + v3 * v3 <= a3;
}

uint64_t ClipperLib::ExcludeOp(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  *(v1 + 32) = v2;
  *(v2 + 40) = v1;
  *v1 = 0;
  return v1;
}

void *ClipperLib::CleanPolygon(void *result, void *a2)
{
  v2 = result[1] - *result;
  if (v2)
  {
    is_mul_ok(0xAAAAAAAAAAAAAAABLL * (v2 >> 3), 0x30uLL);
    operator new[]();
  }

  a2[1] = *a2;
  return result;
}

void std::vector<ClipperLib::IntPoint>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<ClipperLib::IntPoint>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void ClipperLib::CleanPolygons(uint64_t *a1, void *a2)
{
  std::vector<std::vector<ClipperLib::IntPoint>>::resize(a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ClipperLib::CleanPolygon((v4 + v5), (*a2 + v5));
      ++v6;
      v4 = *a1;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  }
}

void ClipperLib::Minkowski(uint64_t *a1, void *a2, uint64_t *a3, char a4, unsigned int a5)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a2[1] - *a2;
  if (v8)
  {
    _ZF = v6 == v7;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {

    std::vector<std::vector<ClipperLib::IntPoint>>::clear[abi:ne200100](a3);
  }

  else
  {
    v14 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
    memset(v49, 0, 24);
    std::vector<std::vector<ClipperLib::IntPoint>>::reserve(v49, v14);
    v41 = a5;
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
    if (v14 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v14;
    }

    v42 = v16;
    __asm { FMOV            V8.2S, #-1.0 }

    if (a4)
    {
      for (i = 0; i != v42; ++i)
      {
        __p = 0;
        v47 = 0;
        v48 = 0;
        std::vector<ClipperLib::IntPoint>::reserve(&__p, v15);
        v22 = *a1;
        if (a1[1] != *a1)
        {
          v23 = 0;
          v24 = 0;
          do
          {
            v44 = vaddq_s64(*(v22 + v23), *(*a2 + 24 * i));
            v45 = _D8;
            std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](&__p, v44.i8);
            ++v24;
            v22 = *a1;
            v23 += 24;
          }

          while (v24 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
        }

        std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](v49, &__p);
        if (__p)
        {
          v47 = __p;
          operator delete(__p);
        }
      }
    }

    else
    {
      for (j = 0; j != v42; ++j)
      {
        __p = 0;
        v47 = 0;
        v48 = 0;
        std::vector<ClipperLib::IntPoint>::reserve(&__p, v15);
        v26 = *a1;
        if (a1[1] != *a1)
        {
          v27 = 0;
          v28 = 0;
          do
          {
            v44 = vsubq_s64(*(*a2 + 24 * j), *(v26 + v27));
            v45 = _D8;
            std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](&__p, v44.i8);
            ++v28;
            v26 = *a1;
            v27 += 24;
          }

          while (v28 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
        }

        std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](v49, &__p);
        if (__p)
        {
          v47 = __p;
          operator delete(__p);
        }
      }
    }

    std::vector<std::vector<ClipperLib::IntPoint>>::clear[abi:ne200100](a3);
    v29 = v14;
    v30 = v14 + v41;
    std::vector<std::vector<ClipperLib::IntPoint>>::reserve(a3, v30 + v30 * v15);
    v43 = v29;
    if (v30 != 1)
    {
      v31 = 0;
      if (v15 <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = v15;
      }

      do
      {
        v33 = 0;
        v34 = v31 % v43;
        v35 = ++v31 % v43;
        do
        {
          __p = 0;
          v47 = 0;
          v48 = 0;
          std::vector<ClipperLib::IntPoint>::reserve(&__p, 4uLL);
          std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](&__p, (*(v49[0] + 24 * v34) + 24 * (v33 % v15)));
          std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](&__p, (*(v49[0] + 24 * v35) + 24 * (v33 % v15)));
          std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](&__p, (*(v49[0] + 24 * v35) + 24 * (++v33 % v15)));
          std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](&__p, (*(v49[0] + 24 * v34) + 24 * (v33 % v15)));
          if (ClipperLib::Area(&__p) < 0.0 && __p != v47)
          {
            v36 = v47 - 24;
            if (v47 - 24 > __p)
            {
              v37 = __p + 24;
              do
              {
                v38 = *(v37 - 1);
                v39 = *(v37 - 24);
                v40 = *(v36 + 2);
                *(v37 - 24) = *v36;
                *(v37 - 1) = v40;
                *v36 = v39;
                *(v36 + 2) = v38;
                v36 -= 24;
                _CF = v37 >= v36;
                v37 += 24;
              }

              while (!_CF);
            }
          }

          std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](a3, &__p);
          if (__p)
          {
            v47 = __p;
            operator delete(__p);
          }
        }

        while (v33 != v32);
      }

      while (v31 != v30 - 1);
    }

    __p = v49;
    std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&__p);
  }
}

void sub_254C20DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, uint64_t a17, char a18)
{
  __p = &a18;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void ClipperLib::MinkowskiSum(uint64_t *a1, void *a2, uint64_t *a3, unsigned int a4)
{
  v30 = *MEMORY[0x277D85DE8];
  ClipperLib::Minkowski(a1, a2, a3, 1, a4);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v17 = 0u;
  v18 = 0u;
  v5 = &unk_286711450;
  *v6 = 0u;
  *v7 = 0u;
  v8 = 0u;
  *__p = 0u;
  v10 = 0;
  v11[0] = v11;
  v11[1] = v11;
  v11[2] = 0;
  v12 = 0;
  v19 = 0;
  v13 = 0;
  v14 = 0;
  v23 = 0;
  v15 = 0;
  v16 = &unk_286711498;
  ClipperLib::ClipperBase::AddPaths(&v16, a3, 0, 1);
  ClipperLib::Clipper::Execute(&v5, 1, a3, 1, 1);
  v5 = &unk_286711450;
  v16 = &unk_286711498;
  std::__list_imp<long long>::clear(v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[1])
  {
    *&v8 = v7[1];
    operator delete(v7[1]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  ClipperLib::ClipperBase::~ClipperBase(&v16);
}

void sub_254C20F84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

void ClipperLib::TranslatePath(void *a1, int64x2_t **a2, int64x2_t *a3)
{
  std::vector<ClipperLib::IntPoint>::resize(a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  v6 = *a1;
  v7 = a1[1] - *a1;
  if (v7)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
    if (v8 <= 1)
    {
      v8 = 1;
    }

    v9 = *a2 + 1;
    __asm { FMOV            V0.2S, #-1.0 }

    do
    {
      v15 = *v6;
      v6 = (v6 + 24);
      v9[-1] = vaddq_s64(*a3, v15);
      v9->i64[0] = _D0;
      v9 = (v9 + 24);
      --v8;
    }

    while (v8);
  }
}

void ClipperLib::MinkowskiSum(uint64_t *a1, uint64_t *a2, void *a3, unsigned int a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v36 = 0u;
  v37 = 0u;
  v24 = &unk_286711450;
  *v25 = 0u;
  *v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v30[0] = v30;
  v30[1] = v30;
  v30[2] = 0;
  v31 = 0;
  v38 = 0;
  v32 = 0;
  v33 = 0;
  v42 = 0;
  v34 = 0;
  v35 = &unk_286711498;
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v8 = 0;
    do
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      ClipperLib::Minkowski(a1, (v4 + 24 * v8), &v21, 1, a4);
      v9 = v21;
      if (v22 != v21)
      {
        v10 = 0;
        v11 = 0;
        v12 = &v25[-1] + *(v24 - 3);
        do
        {
          (*(*v12 + 16))(v12, v9 + v10, 0, 1);
          ++v11;
          v9 = v21;
          v10 += 24;
        }

        while (v11 < 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3));
      }

      if (a4)
      {
        __p = 0;
        v19 = 0;
        v20 = 0;
        v13 = (*a2 + 24 * v8);
        v14 = *a1;
        v16 = **a1;
        v17 = *(v14 + 16);
        ClipperLib::TranslatePath(v13, &__p, &v16);
        ClipperLib::ClipperBase::AddPath(&v25[-1] + *(v24 - 3), &__p, 1, 1);
        if (__p)
        {
          v19 = __p;
          operator delete(__p);
        }
      }

      __p = &v21;
      std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&__p);
      ++v8;
      v4 = *a2;
    }

    while (v8 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  ClipperLib::Clipper::Execute(&v24, 1, a3, 1, 1);
  v24 = &unk_286711450;
  v35 = &unk_286711498;
  std::__list_imp<long long>::clear(v30);
  if (v28)
  {
    *(&v28 + 1) = v28;
    operator delete(v28);
  }

  if (v26[1])
  {
    *&v27 = v26[1];
    operator delete(v26[1]);
  }

  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  ClipperLib::ClipperBase::~ClipperBase(&v35);
}

void ClipperLib::MinkowskiDiff(uint64_t *a1, void *a2, uint64_t *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  ClipperLib::Minkowski(a1, a2, a3, 0, 1u);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v16 = 0u;
  v17 = 0u;
  v4 = &unk_286711450;
  *v5 = 0u;
  *v6 = 0u;
  v7 = 0u;
  *__p = 0u;
  v9 = 0;
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v11 = 0;
  v18 = 0;
  v12 = 0;
  v13 = 0;
  v22 = 0;
  v14 = 0;
  v15 = &unk_286711498;
  ClipperLib::ClipperBase::AddPaths(&v15, a3, 0, 1);
  ClipperLib::Clipper::Execute(&v4, 1, a3, 1, 1);
  v4 = &unk_286711450;
  v15 = &unk_286711498;
  std::__list_imp<long long>::clear(v10);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[1])
  {
    *&v7 = v6[1];
    operator delete(v6[1]);
  }

  if (v5[0])
  {
    v5[1] = v5[0];
    operator delete(v5[0]);
  }

  ClipperLib::ClipperBase::~ClipperBase(&v15);
}

void sub_254C214C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

uint64_t ClipperLib::AddPolyNodeToPaths(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != 1)
  {
    v5 = result;
    if (a2 == 2)
    {
      v6 = *(result + 68);
    }

    else
    {
      v6 = 0;
    }

    if (*(result + 8) != *(result + 16) && (v6 & 1) == 0)
    {
      result = std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](a3, (result + 8));
    }

    v7 = *(v5 + 32);
    if (((*(v5 + 40) - v7) >> 3) >= 1)
    {
      v8 = 0;
      do
      {
        result = ClipperLib::AddPolyNodeToPaths(*(v7 + 8 * v8++), a2, a3);
        v7 = *(v5 + 32);
      }

      while (v8 < ((*(v5 + 40) - v7) >> 3));
    }
  }

  return result;
}

uint64_t ClipperLib::PolyTreeToPaths(uint64_t a1, void *a2)
{
  std::vector<std::vector<ClipperLib::IntPoint>>::resize(a2, 0);
  v4 = *(a1 + 80);
  v5 = (*(a1 + 88) - v4) >> 3;
  if (v5 >= 1)
  {
    LODWORD(v5) = v5 - (**(a1 + 32) != *v4);
  }

  std::vector<std::vector<ClipperLib::IntPoint>>::reserve(a2, v5);

  return ClipperLib::AddPolyNodeToPaths(a1, 0, a2);
}

uint64_t ClipperLib::ClosedPathsFromPolyTree(uint64_t a1, void *a2)
{
  std::vector<std::vector<ClipperLib::IntPoint>>::resize(a2, 0);
  v4 = *(a1 + 80);
  v5 = (*(a1 + 88) - v4) >> 3;
  if (v5 >= 1)
  {
    LODWORD(v5) = v5 - (**(a1 + 32) != *v4);
  }

  std::vector<std::vector<ClipperLib::IntPoint>>::reserve(a2, v5);

  return ClipperLib::AddPolyNodeToPaths(a1, 2, a2);
}

uint64_t ClipperLib::OpenPathsFromPolyTree(uint64_t a1, void *a2)
{
  std::vector<std::vector<ClipperLib::IntPoint>>::resize(a2, 0);
  v4 = *(a1 + 80);
  v5 = (*(a1 + 88) - v4) >> 3;
  if (v5 >= 1)
  {
    LODWORD(v5) = v5 - (**(a1 + 32) != *v4);
  }

  result = std::vector<std::vector<ClipperLib::IntPoint>>::reserve(a2, v5);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (((v7 - v8) >> 3) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(v8 + 8 * v9);
      if (*(v10 + 68) == 1)
      {
        result = std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](a2, (v10 + 8));
        v8 = *(a1 + 32);
        v7 = *(a1 + 40);
      }

      ++v9;
    }

    while (v9 < ((v7 - v8) >> 3));
  }

  return result;
}

void *ClipperLib::operator<<(void *a1, void *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "(", 1);
  v5 = MEMORY[0x259C28320](v4, *a2);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ",", 1);
  v7 = MEMORY[0x259C28320](v6, a2[1]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ")", 1);
  return a1;
}

{
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = (v3 - *a2) >> 3;
    v6 = 0xAAAAAAAAAAAAAAABLL * v5 - 1;
    if (0xAAAAAAAAAAAAAAABLL * v5 != 1)
    {
      v7 = 0;
      v8 = 0xAAAAAAAAAAAAAAABLL * v5 - 1;
      do
      {
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "(", 1);
        v10 = MEMORY[0x259C28320](v9, *(*a2 + v7));
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ",", 1);
        v12 = MEMORY[0x259C28320](v11, *(*a2 + v7 + 8));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "), ", 3);
        v7 += 24;
        --v8;
      }

      while (v8);
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "(", 1);
    v14 = MEMORY[0x259C28320](v13, *(*a2 + 24 * v6));
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ",", 1);
    v16 = MEMORY[0x259C28320](v15, *(*a2 + 24 * v6 + 8));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ")\n", 2);
  }

  return a1;
}

void *ClipperLib::operator<<(void *a1, uint64_t *a2)
{
  v3 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ClipperLib::operator<<(a1, (v3 + v5));
      ++v6;
      v3 = *a2;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "\n", 1);
  return a1;
}

void virtual thunk toClipperLib::Clipper::~Clipper(ClipperLib::Clipper *this)
{
  v1 = (this + *(*this - 24));
  *v1 = &unk_286711450;
  v1[18] = &unk_286711498;
  std::__list_imp<long long>::clear(v1 + 11);
  v2 = v1[7];
  if (v2)
  {
    v1[8] = v2;
    operator delete(v2);
  }

  v3 = v1[4];
  if (v3)
  {
    v1[5] = v3;
    operator delete(v3);
  }

  v4 = v1[1];
  if (v4)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  ClipperLib::ClipperBase::~ClipperBase((v1 + 18));
}

{
  v1 = (this + *(*this - 24));
  *v1 = &unk_286711450;
  v1[18] = &unk_286711498;
  std::__list_imp<long long>::clear(v1 + 11);
  v2 = v1[7];
  if (v2)
  {
    v1[8] = v2;
    operator delete(v2);
  }

  v3 = v1[4];
  if (v3)
  {
    v1[5] = v3;
    operator delete(v3);
  }

  v4 = v1[1];
  if (v4)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  ClipperLib::ClipperBase::~ClipperBase((v1 + 18));

  JUMPOUT(0x259C283A0);
}

void std::vector<ClipperLib::PolyNode *>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::TEdge *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

ClipperLib::clipperException *ClipperLib::clipperException::clipperException(ClipperLib::clipperException *this, const char *__s)
{
  *this = &unk_286711518;
  v4 = this + 8;
  v5 = strlen(__s);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(this + 31) = v5;
  if (v5)
  {
    memmove(v4, __s, v5);
  }

  v4[v6] = 0;
  return this;
}

void ClipperLib::clipperException::~clipperException(std::exception *this)
{
  ClipperLib::clipperException::~clipperException(this);

  JUMPOUT(0x259C283A0);
}

{
  this->__vftable = &unk_286711518;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

uint64_t ClipperLib::clipperException::what(ClipperLib::clipperException *this)
{
  result = this + 8;
  if (*(this + 31) < 0)
  {
    return *result;
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,false>(__n128 *a1, char *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 24;
  v10 = a2 - 48;
  v11 = a2 - 72;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    v16 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v16 <= 2)
    {
      if (v16 < 2)
      {
        return result;
      }

      if (v16 == 2)
      {
        v77 = *(a2 - 3);
        v73 = (a2 - 24);
        if (*v12 >= v77)
        {
          return result;
        }

        goto LABEL_75;
      }

      goto LABEL_10;
    }

    if (v16 == 3)
    {
      break;
    }

    if (v16 == 4)
    {
      v70 = (v12 + 24);
      v79 = *(v12 + 3);
      v80 = (v12 + 48);
      v81 = *(v12 + 6);
      if (*v12 >= v79)
      {
        if (v79 < v81)
        {
          v85 = *(v12 + 5);
          result = *v70;
          *v70 = *v80;
          *(v12 + 5) = *(v12 + 8);
          *v80 = result;
          *(v12 + 8) = v85;
          if (*v12 < *(v12 + 3))
          {
            v143 = *(v12 + 2);
            v115 = *v12;
            *v12 = *v70;
            *(v12 + 2) = *(v12 + 5);
            result = v115;
            *v70 = v115;
            *(v12 + 5) = v143;
          }
        }
      }

      else
      {
        if (v79 < v81)
        {
          v142 = *(v12 + 2);
          v114 = *v12;
          *v12 = *v80;
          *(v12 + 2) = *(v12 + 8);
          result = v114;
          *v80 = v114;
          v82 = v142;
          goto LABEL_102;
        }

        v144 = *(v12 + 2);
        v117 = *v12;
        *v12 = *v70;
        *(v12 + 2) = *(v12 + 5);
        result = v117;
        *v70 = v117;
        *(v12 + 5) = v144;
        if (*(v12 + 3) < v81)
        {
          v82 = *(v12 + 5);
          result = *v70;
          *v70 = *v80;
          *(v12 + 5) = *(v12 + 8);
          *v80 = result;
LABEL_102:
          *(v12 + 8) = v82;
        }
      }

      if (v80->n128_u64[0] >= *v9)
      {
        return result;
      }

      v91 = *(v12 + 8);
      result = *v80;
      v92 = *(a2 - 1);
      *v80 = *v9;
      *(v12 + 8) = v92;
      *v9 = result;
      *(a2 - 1) = v91;
      if (v70->n128_u64[0] >= v80->n128_u64[0])
      {
        return result;
      }

      v93 = *(v12 + 5);
      result = *v70;
      *v70 = *v80;
      *(v12 + 5) = *(v12 + 8);
      *v80 = result;
      *(v12 + 8) = v93;
LABEL_106:
      if (*v12 < *(v12 + 3))
      {
        v145 = *(v12 + 2);
        v118 = *v12;
        *v12 = *v70;
        *(v12 + 2) = v70[1].n128_u64[0];
        result = v118;
        *v70 = v118;
        v70[1].n128_u64[0] = v145;
      }

      return result;
    }

    if (v16 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,0>(v12, (v12 + 24), v12 + 6, (v12 + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(v12, a2);
      }

      else if (v12 != a2)
      {
        v86 = v12 + 24;
        while (v86 != a2)
        {
          v87 = v86;
          v88 = a1[1].n128_i64[1];
          if (a1->n128_u64[0] < v88)
          {
            v116 = a1[2];
            v89 = v87;
            do
            {
              *v89 = *(v89 - 24);
              v89[1].n128_u64[0] = v89[-1].n128_u64[1];
              v90 = v89[-3].n128_i64[0];
              v89 = (v89 - 24);
            }

            while (v90 < v88);
            v89->n128_u64[0] = v88;
            result = v116;
            *(v89 + 8) = v116;
          }

          v86 = &v87[1].n128_i8[8];
          a1 = v87;
        }
      }

      return result;
    }

    if (v14 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,ClipperLib::LocalMinimum *>(v12, a2, a2, a3);
      }

      return result;
    }

    v17 = v16 >> 1;
    v18 = &v12[24 * (v16 >> 1)];
    v19 = *v9;
    if (v15 >= 0xC01)
    {
      v20 = *v18;
      if (*v12 >= *v18)
      {
        if (v20 < v19)
        {
          v121 = *(v18 + 2);
          v97 = *v18;
          v24 = *v9;
          *(v18 + 2) = *(a2 - 1);
          *v18 = v24;
          *v9 = v97;
          *(a2 - 1) = v121;
          if (*v12 < *v18)
          {
            v122 = *(v12 + 2);
            v98 = *v12;
            v25 = *v18;
            *(v12 + 2) = *(v18 + 2);
            *v12 = v25;
            *(v18 + 2) = v122;
            *v18 = v98;
          }
        }
      }

      else
      {
        if (v20 < v19)
        {
          v119 = *(v12 + 2);
          v95 = *v12;
          v21 = *v9;
          *(v12 + 2) = *(a2 - 1);
          *v12 = v21;
          goto LABEL_27;
        }

        v125 = *(v12 + 2);
        v101 = *v12;
        v28 = *v18;
        *(v12 + 2) = *(v18 + 2);
        *v12 = v28;
        *(v18 + 2) = v125;
        *v18 = v101;
        if (*v18 < *v9)
        {
          v119 = *(v18 + 2);
          v95 = *v18;
          v29 = *v9;
          *(v18 + 2) = *(a2 - 1);
          *v18 = v29;
LABEL_27:
          *v9 = v95;
          *(a2 - 1) = v119;
        }
      }

      v30 = (v12 + 24);
      v31 = &v12[24 * v17];
      v34 = *(v31 - 3);
      v32 = v31 - 24;
      v33 = v34;
      v35 = *v10;
      if (*(v12 + 3) >= v34)
      {
        if (v33 < v35)
        {
          v126 = *(v32 + 2);
          v102 = *v32;
          v39 = *v10;
          *(v32 + 2) = *(a2 - 4);
          *v32 = v39;
          *v10 = v102;
          *(a2 - 4) = v126;
          if (*v30 < *v32)
          {
            v40 = *v30;
            v127 = *(v12 + 5);
            v41 = *(v32 + 2);
            *v30 = *v32;
            *(v12 + 5) = v41;
            *(v32 + 2) = v127;
            *v32 = v40;
          }
        }
      }

      else if (v33 >= v35)
      {
        v44 = *v30;
        v129 = *(v12 + 5);
        v45 = *(v32 + 2);
        *v30 = *v32;
        *(v12 + 5) = v45;
        *(v32 + 2) = v129;
        *v32 = v44;
        if (*v32 < *v10)
        {
          v130 = *(v32 + 2);
          v104 = *v32;
          v46 = *v10;
          *(v32 + 2) = *(a2 - 4);
          *v32 = v46;
          *v10 = v104;
          *(a2 - 4) = v130;
        }
      }

      else
      {
        v36 = *(v12 + 5);
        v37 = *v30;
        v38 = *(a2 - 4);
        *v30 = *v10;
        *(v12 + 5) = v38;
        *v10 = v37;
        *(a2 - 4) = v36;
      }

      v47 = (v12 + 48);
      v48 = &v12[24 * v17];
      v51 = *(v48 + 3);
      v49 = v48 + 24;
      v50 = v51;
      v52 = *v11;
      if (*(v12 + 6) >= v51)
      {
        if (v50 < v52)
        {
          v131 = v49[2];
          v105 = *v49;
          v56 = *v11;
          v49[2] = *(a2 - 7);
          *v49 = v56;
          *v11 = v105;
          *(a2 - 7) = v131;
          if (*v47 < *v49)
          {
            v57 = *v47;
            v132 = *(v12 + 8);
            v58 = v49[2];
            *v47 = *v49;
            *(v12 + 8) = v58;
            v49[2] = v132;
            *v49 = v57;
          }
        }
      }

      else if (v50 >= v52)
      {
        v59 = *v47;
        v133 = *(v12 + 8);
        v60 = v49[2];
        *v47 = *v49;
        *(v12 + 8) = v60;
        v49[2] = v133;
        *v49 = v59;
        if (*v49 < *v11)
        {
          v134 = v49[2];
          v106 = *v49;
          v61 = *v11;
          v49[2] = *(a2 - 7);
          *v49 = v61;
          *v11 = v106;
          *(a2 - 7) = v134;
        }
      }

      else
      {
        v53 = *(v12 + 8);
        v54 = *v47;
        v55 = *(a2 - 7);
        *v47 = *v11;
        *(v12 + 8) = v55;
        *v11 = v54;
        *(a2 - 7) = v53;
      }

      v62 = *v18;
      v63 = *v49;
      if (*v32 >= *v18)
      {
        if (v62 < v63)
        {
          v136 = *(v18 + 2);
          v108 = *v18;
          *v18 = *v49;
          *(v18 + 2) = v49[2];
          v49[2] = v136;
          *v49 = v108;
          if (*v32 < *v18)
          {
            v137 = *(v32 + 2);
            v109 = *v32;
            *v32 = *v18;
            *(v32 + 2) = *(v18 + 2);
            *(v18 + 2) = v137;
            *v18 = v109;
          }
        }
      }

      else
      {
        if (v62 < v63)
        {
          v135 = *(v32 + 2);
          v107 = *v32;
          *v32 = *v49;
          *(v32 + 2) = v49[2];
          goto LABEL_55;
        }

        v138 = *(v32 + 2);
        v110 = *v32;
        *v32 = *v18;
        *(v32 + 2) = *(v18 + 2);
        *(v18 + 2) = v138;
        *v18 = v110;
        if (*v18 < *v49)
        {
          v135 = *(v18 + 2);
          v107 = *v18;
          *v18 = *v49;
          *(v18 + 2) = v49[2];
LABEL_55:
          v49[2] = v135;
          *v49 = v107;
        }
      }

      v139 = *(v12 + 2);
      v111 = *v12;
      v64 = *v18;
      *(v12 + 2) = *(v18 + 2);
      *v12 = v64;
      *(v18 + 2) = v139;
      *v18 = v111;
      goto LABEL_57;
    }

    v22 = *v12;
    if (*v18 >= *v12)
    {
      if (v22 < v19)
      {
        v123 = *(v12 + 2);
        v99 = *v12;
        v26 = *v9;
        *(v12 + 2) = *(a2 - 1);
        *v12 = v26;
        *v9 = v99;
        *(a2 - 1) = v123;
        if (*v18 < *v12)
        {
          v124 = *(v18 + 2);
          v100 = *v18;
          v27 = *v12;
          *(v18 + 2) = *(v12 + 2);
          *v18 = v27;
          *(v12 + 2) = v124;
          *v12 = v100;
        }
      }
    }

    else
    {
      if (v22 < v19)
      {
        v120 = *(v18 + 2);
        v96 = *v18;
        v23 = *v9;
        *(v18 + 2) = *(a2 - 1);
        *v18 = v23;
LABEL_36:
        *v9 = v96;
        *(a2 - 1) = v120;
        goto LABEL_57;
      }

      v128 = *(v18 + 2);
      v103 = *v18;
      v42 = *v12;
      *(v18 + 2) = *(v12 + 2);
      *v18 = v42;
      *(v12 + 2) = v128;
      *v12 = v103;
      if (*v12 < *v9)
      {
        v120 = *(v12 + 2);
        v96 = *v12;
        v43 = *v9;
        *(v12 + 2) = *(a2 - 1);
        *v12 = v43;
        goto LABEL_36;
      }
    }

LABEL_57:
    if ((a5 & 1) == 0 && *v12 >= *(v12 - 3))
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocalMinimum *,ClipperLib::LocMinSorter &>(v12, a2);
      goto LABEL_64;
    }

    v65 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocalMinimum *,ClipperLib::LocMinSorter &>(v12, a2);
    if ((v67 & 1) == 0)
    {
      goto LABEL_62;
    }

    v68 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(v12, v65, v66);
    v12 = (v65 + 3);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>((v65 + 3), a2, v69))
    {
      a4 = -v14;
      a2 = v65;
      if (v68)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v68)
    {
LABEL_62:
      std::__introsort<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,false>(a1, v65, a3, -v14, a5 & 1);
      v12 = (v65 + 3);
LABEL_64:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v70 = (v12 + 24);
  v71 = *(v12 + 3);
  v74 = *(a2 - 3);
  v73 = (a2 - 24);
  v72 = v74;
  if (*v12 >= v71)
  {
    if (v71 >= v72)
    {
      return result;
    }

    v83 = *(v12 + 5);
    result = *v70;
    v84 = v73[1].n128_u64[0];
    *v70 = *v73;
    *(v12 + 5) = v84;
    *v73 = result;
    v73[1].n128_u64[0] = v83;
    goto LABEL_106;
  }

  if (v71 < v72)
  {
LABEL_75:
    v141 = *(v12 + 2);
    v113 = *v12;
    v78 = *v73;
    *(v12 + 2) = v73[1].n128_u64[0];
    *v12 = v78;
    result = v113;
    *v73 = v113;
    v73[1].n128_u64[0] = v141;
    return result;
  }

  v140 = *(v12 + 2);
  v112 = *v12;
  *v12 = *v70;
  *(v12 + 2) = *(v12 + 5);
  result = v112;
  *v70 = v112;
  *(v12 + 5) = v140;
  if (*(v12 + 3) < v73->n128_u64[0])
  {
    v75 = *(v12 + 5);
    result = *v70;
    v76 = v73[1].n128_u64[0];
    *v70 = *v73;
    *(v12 + 5) = v76;
    *v73 = result;
    v73[1].n128_u64[0] = v75;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,0>(__n128 *a1, __n128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a1->n128_u64[0] >= a2->n128_u64[0])
  {
    if (v6 < v7)
    {
      v10 = a2[1].n128_i64[0];
      result = *a2;
      v11 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[2] = v10;
      if (a1->n128_u64[0] < a2->n128_u64[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v6 < v7)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[2];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[2] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a2->n128_u64[0] < *a3)
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a3 < *a4)
  {
    v17 = a3[2];
    result = *a3;
    v18 = *(a4 + 16);
    *a3 = *a4;
    a3[2] = v18;
    *a4 = result;
    *(a4 + 16) = v17;
    if (a2->n128_u64[0] < *a3)
    {
      v19 = a2[1].n128_i64[0];
      result = *a2;
      v20 = a3[2];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[2] = v19;
      if (a1->n128_u64[0] < a2->n128_u64[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  if (*a4 < *a5)
  {
    v23 = *(a4 + 16);
    result = *a4;
    v24 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v24;
    *a5 = result;
    *(a5 + 16) = v23;
    if (*a3 < *a4)
    {
      v25 = a3[2];
      result = *a3;
      v26 = *(a4 + 16);
      *a3 = *a4;
      a3[2] = v26;
      *a4 = result;
      *(a4 + 16) = v25;
      if (a2->n128_u64[0] < *a3)
      {
        v27 = a2[1].n128_i64[0];
        result = *a2;
        v28 = a3[2];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[2] = v27;
        if (a1->n128_u64[0] < a2->n128_u64[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 24;
    if (result + 24 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 24);
        if (*v4 < v6)
        {
          v10 = *(v4 + 32);
          v7 = v3;
          while (1)
          {
            v8 = result + v7;
            *(v8 + 24) = *(result + v7);
            *(v8 + 40) = *(result + v7 + 16);
            if (!v7)
            {
              break;
            }

            v7 -= 24;
            if (*(v8 - 24) >= v6)
            {
              v9 = result + v7 + 24;
              goto LABEL_10;
            }
          }

          v9 = result;
LABEL_10:
          *v9 = v6;
          *(v9 + 8) = v10;
        }

        v2 = v5 + 24;
        v3 += 24;
        v4 = v5;
      }

      while (v5 + 24 != a2);
    }
  }

  return result;
}

void *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocalMinimum *,ClipperLib::LocMinSorter &>(void *a1, unint64_t a2)
{
  v2 = *a1;
  if (*(a2 - 24) >= *a1)
  {
    v5 = a1 + 3;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 += 3;
    }

    while (*v3 >= v2);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[3];
      v3 += 3;
    }

    while (v4 >= v2);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 24);
      a2 -= 24;
    }

    while (v6 < v2);
  }

  while (v3 < a2)
  {
    v14 = v3[2];
    v13 = *v3;
    v7 = *a2;
    v3[2] = *(a2 + 16);
    *v3 = v7;
    *(a2 + 16) = v14;
    *a2 = v13;
    do
    {
      v8 = v3[3];
      v3 += 3;
    }

    while (v8 >= v2);
    do
    {
      v9 = *(a2 - 24);
      a2 -= 24;
    }

    while (v9 < v2);
  }

  if (v3 - 3 != a1)
  {
    v10 = *(v3 - 3);
    a1[2] = *(v3 - 1);
    *a1 = v10;
  }

  *(v3 - 3) = v2;
  *(v3 - 1) = v12;
  return v3;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocalMinimum *,ClipperLib::LocMinSorter &>(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = a1[v2 + 3];
    v2 += 3;
  }

  while (v3 < v4);
  v5 = &a1[v2];
  if (v2 == 3)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v7 = *(a2 - 24);
      a2 -= 24;
    }

    while (v3 >= v7);
  }

  else
  {
    do
    {
      v6 = *(a2 - 24);
      a2 -= 24;
    }

    while (v3 >= v6);
  }

  v8 = &a1[v2];
  if (v5 < a2)
  {
    v9 = a2;
    do
    {
      v10 = *v8;
      v11 = v8[2];
      v12 = *(v9 + 16);
      *v8 = *v9;
      v8[2] = v12;
      *(v9 + 16) = v11;
      *v9 = v10;
      do
      {
        v13 = v8[3];
        v8 += 3;
      }

      while (v3 < v13);
      do
      {
        v14 = *(v9 - 24);
        v9 -= 24;
      }

      while (v3 >= v14);
    }

    while (v8 < v9);
  }

  if (v8 - 3 != a1)
  {
    v15 = *(v8 - 3);
    a1[2] = *(v8 - 1);
    *a1 = v15;
  }

  *(v8 - 3) = v3;
  *(v8 - 1) = v17;
  return v8 - 3;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(uint64_t a1, _OWORD *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v9 = *(a2 - 3);
      v4 = (a2 - 24);
      v8 = v9;
      if (*a1 < v7)
      {
        if (v7 >= v8)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (*(a1 + 24) < v4->n128_u64[0])
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = v4[1].n128_i64[0];
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            v4[1].n128_u64[0] = v40;
          }

          return 1;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        return 1;
      }

      if (v7 >= v8)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = v4[1].n128_i64[0];
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      v4[1].n128_u64[0] = v27;
LABEL_48:
      if (*a1 < *(a1 + 24))
      {
        v62 = *(a1 + 16);
        v63 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v63;
        v6[1].n128_u64[0] = v62;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,0>(a1, (a1 + 24), (a1 + 48), a1 + 72, a2 - 24, a3);
      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 24);
    v24 = *a1;
    if (*a1 >= v20)
    {
      if (v20 < v22)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v24 < v6->n128_u64[0])
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v20 >= v22)
    {
      v55 = *(a1 + 16);
      v56 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v56;
      *(a1 + 40) = v55;
      if (*(a1 + 24) >= v22)
      {
        goto LABEL_45;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_45:
    if (v21->n128_u64[0] >= v23->n128_u64[0])
    {
      return 1;
    }

    v57 = *(a1 + 64);
    v58 = *v21;
    v59 = *(a2 - 1);
    *v21 = *v23;
    *(a1 + 64) = v59;
    *v23 = v58;
    *(a2 - 1) = v57;
    if (v6->n128_u64[0] >= v21->n128_u64[0])
    {
      return 1;
    }

    v60 = *(a1 + 40);
    v61 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v61;
    *(a1 + 64) = v60;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 3);
    v4 = (a2 - 24);
    if (*a1 >= v5)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (*a1 >= v16)
  {
    if (v16 < v14)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v17 < v15->n128_u64[0])
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v16 >= v14)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (*(a1 + 24) < v14)
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = v13->n128_u64[0];
    v51 = *v47;
    if (v50 < *v47)
    {
      v65 = *(v47 + 8);
      v52 = v48;
      while (1)
      {
        v53 = a1 + v52;
        *(v53 + 72) = *(a1 + v52 + 48);
        *(v53 + 88) = *(a1 + v52 + 64);
        if (v52 == -48)
        {
          break;
        }

        v52 -= 24;
        if (*(v53 + 24) >= v51)
        {
          v54 = a1 + v52 + 72;
          goto LABEL_39;
        }
      }

      v54 = a1;
LABEL_39:
      *v54 = v51;
      *(v54 + 8) = v65;
      if (++v49 == 8)
      {
        return (v47 + 24) == a2;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 = (v47 + 24);
    if (v47 == a2)
    {
      return 1;
    }
  }
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,ClipperLib::LocalMinimum *>(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[24 * v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(a1, a4, v9, v12);
        v12 -= 24;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        if (*a1 < *v13)
        {
          v14 = *(v13 + 2);
          v15 = *v13;
          v16 = *(a1 + 2);
          *v13 = *a1;
          *(v13 + 2) = v16;
          *a1 = v15;
          *(a1 + 2) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(a1, a4, v9, a1);
        }

        v13 += 24;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      do
      {
        v18 = 0;
        v29 = *a1;
        v30 = *(a1 + 2);
        v19 = a1;
        do
        {
          v20 = &v19[24 * v18];
          v21 = v20 + 24;
          v22 = (2 * v18) | 1;
          v18 = 2 * v18 + 2;
          if (v18 >= v17)
          {
            v18 = v22;
          }

          else
          {
            v24 = *(v20 + 6);
            v23 = v20 + 48;
            if (v24 >= *(v23 - 3))
            {
              v18 = v22;
            }

            else
            {
              v21 = v23;
            }
          }

          v25 = *v21;
          *(v19 + 2) = *(v21 + 2);
          *v19 = v25;
          v19 = v21;
        }

        while (v18 <= ((v17 - 2) >> 1));
        v6 -= 24;
        if (v21 == v6)
        {
          *(v21 + 2) = v30;
          *v21 = v29;
        }

        else
        {
          v26 = *v6;
          *(v21 + 2) = *(v6 + 2);
          *v21 = v26;
          *v6 = v29;
          *(v6 + 2) = v30;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(a1, (v21 + 24), a4, 0xAAAAAAAAAAAAAAABLL * ((v21 + 24 - a1) >> 3));
        }
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v5 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v6 = (a1 + 24 * v5);
      if (0x5555555555555556 * ((a4 - a1) >> 3) + 2 >= a3)
      {
        v7 = *v6;
      }

      else
      {
        v7 = v6[3];
        v9 = __OFSUB__(v7, *v6);
        v8 = v7 - *v6 < 0;
        if (v7 >= *v6)
        {
          v7 = *v6;
        }

        if (v8 != v9)
        {
          v6 += 3;
          v5 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
        }
      }

      v10 = *a4;
      if (*a4 >= v7)
      {
        v18 = *(a4 + 1);
        do
        {
          v11 = a4;
          a4 = v6;
          v12 = *v6;
          v11[2] = v6[2];
          *v11 = v12;
          if (v4 < v5)
          {
            break;
          }

          v13 = (2 * v5) | 1;
          v6 = (a1 + 24 * v13);
          v5 = 2 * v5 + 2;
          if (v5 >= a3)
          {
            v14 = *v6;
            v5 = v13;
          }

          else
          {
            v14 = v6[3];
            v16 = __OFSUB__(v14, *v6);
            v15 = v14 - *v6 < 0;
            if (v14 >= *v6)
            {
              v14 = *v6;
            }

            if (v15 != v16)
            {
              v6 += 3;
            }

            else
            {
              v5 = v13;
            }
          }
        }

        while (v10 >= v14);
        *a4 = v10;
        result = v18;
        *(a4 + 1) = v18;
      }
    }
  }

  return result;
}

__n128 std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (a1 + 24 * v4);
    v6 = (a2 - 24);
    v7 = *(a2 - 24);
    if (v7 < *v5)
    {
      v11 = *(a2 - 16);
      do
      {
        v8 = v6;
        v6 = v5;
        v9 = *v5;
        *(v8 + 2) = *(v5 + 2);
        *v8 = v9;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (a1 + 24 * v4);
      }

      while (v7 < *v5);
      *v6 = v7;
      result = v11;
      *(v6 + 8) = v11;
    }
  }

  return result;
}

void std::vector<std::vector<ClipperLib::IntPoint>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
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

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<ClipperLib::IntPoint>>::~__split_buffer(v18);
  }
}

uint64_t std::__split_buffer<std::vector<ClipperLib::IntPoint>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<ClipperLib::IntPoint>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<ClipperLib::IntPoint>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,false>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      result = (*a3)(*(a2 - 1), v9->i64[0]);
      if (result)
      {
        v59 = v9->i64[0];
        v9->i64[0] = *(a2 - 1);
LABEL_98:
        *(a2 - 1) = v59;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,ClipperLib::IntersectNode **>(v9->i64, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(v8[v13], *v8);
      v16 = (*a3)(*(a2 - 1), v8[v13]);
      if (v15)
      {
        v17 = *v8;
        if (v16)
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v17;
        }

        else
        {
          *v8 = v8[v13];
          v8[v13] = v17;
          if ((*a3)(*(a2 - 1)))
          {
            v25 = v8[v13];
            v8[v13] = *(a2 - 1);
            *(a2 - 1) = v25;
          }
        }
      }

      else if (v16)
      {
        v21 = v8[v13];
        v8[v13] = *(a2 - 1);
        *(a2 - 1) = v21;
        if ((*a3)(v8[v13], *v8))
        {
          v22 = *v8;
          *v8 = v8[v13];
          v8[v13] = v22;
        }
      }

      v26 = v13 - 1;
      v27 = (*a3)(v8[v13 - 1], v8[1]);
      v28 = (*a3)(*(a2 - 2), v8[v13 - 1]);
      if (v27)
      {
        v29 = v8[1];
        if (v28)
        {
          v8[1] = *(a2 - 2);
          *(a2 - 2) = v29;
        }

        else
        {
          v8[1] = v8[v26];
          v8[v26] = v29;
          if ((*a3)(*(a2 - 2)))
          {
            v33 = v8[v26];
            v8[v26] = *(a2 - 2);
            *(a2 - 2) = v33;
          }
        }
      }

      else if (v28)
      {
        v30 = v8[v26];
        v8[v26] = *(a2 - 2);
        *(a2 - 2) = v30;
        if ((*a3)(v8[v26], v8[1]))
        {
          v31 = v8[1];
          v8[1] = v8[v26];
          v8[v26] = v31;
        }
      }

      v34 = v13 + 1;
      v35 = (*a3)(v8[v13 + 1], v8[2]);
      v36 = (*a3)(*(a2 - 3), v8[v13 + 1]);
      if (v35)
      {
        v37 = v8[2];
        if (v36)
        {
          v8[2] = *(a2 - 3);
          *(a2 - 3) = v37;
        }

        else
        {
          v8[2] = v8[v34];
          v8[v34] = v37;
          if ((*a3)(*(a2 - 3)))
          {
            v40 = v8[v34];
            v8[v34] = *(a2 - 3);
            *(a2 - 3) = v40;
          }
        }
      }

      else if (v36)
      {
        v38 = v8[v34];
        v8[v34] = *(a2 - 3);
        *(a2 - 3) = v38;
        if ((*a3)(v8[v34], v8[2]))
        {
          v39 = v8[2];
          v8[2] = v8[v34];
          v8[v34] = v39;
        }
      }

      v41 = (*a3)(v8[v13], v8[v26]);
      v42 = (*a3)(v8[v34], v8[v13]);
      if (v41)
      {
        v43 = v8[v26];
        if (v42)
        {
          v8[v26] = v8[v34];
          v8[v34] = v43;
          v44 = v8[v13];
          goto LABEL_59;
        }

        v8[v26] = v8[v13];
        v8[v13] = v43;
        v47 = (*a3)(v8[v34]);
        v44 = v8[v13];
        if (v47)
        {
          v46 = v8[v34];
          v8[v13] = v46;
          v8[v34] = v44;
LABEL_58:
          v44 = v46;
        }
      }

      else
      {
        v44 = v8[v13];
        if (v42)
        {
          v8[v13] = v8[v34];
          v8[v34] = v44;
          v45 = (*a3)();
          v44 = v8[v13];
          if (v45)
          {
            v46 = v8[v26];
            v8[v26] = v44;
            v8[v13] = v46;
            goto LABEL_58;
          }
        }
      }

LABEL_59:
      v48 = *v8;
      *v8 = v44;
      v8[v13] = v48;
      if (a5)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v18 = v14(*v8, v8[v13]);
    v19 = (*a3)(*(a2 - 1), *v8);
    if (v18)
    {
      v20 = v8[v13];
      if (!v19)
      {
        v8[v13] = *v8;
        *v8 = v20;
        if ((*a3)(*(a2 - 1)))
        {
          v32 = *v8;
          *v8 = *(a2 - 1);
          *(a2 - 1) = v32;
        }

LABEL_38:
        if (a5)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      v8[v13] = *(a2 - 1);
      *(a2 - 1) = v20;
      if (a5)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (!v19)
      {
        goto LABEL_38;
      }

      v23 = *v8;
      *v8 = *(a2 - 1);
      *(a2 - 1) = v23;
      if (!(*a3)(*v8, v8[v13]))
      {
        goto LABEL_38;
      }

      v24 = v8[v13];
      v8[v13] = *v8;
      *v8 = v24;
      if (a5)
      {
        goto LABEL_61;
      }
    }

LABEL_60:
    if (((*a3)(*(v8 - 1), *v8) & 1) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::IntersectNode **,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *)>(v8, a2, a3);
      v9 = result;
      goto LABEL_66;
    }

LABEL_61:
    v49 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::IntersectNode **,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *)>(v8, a2, a3);
    if ((v50 & 1) == 0)
    {
      goto LABEL_64;
    }

    v51 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(v8, v49, a3);
    v9 = (v49 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(v49 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v49;
      if (v51)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v51)
    {
LABEL_64:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,false>(v8, v49, a3, -v11, a5 & 1);
      v9 = (v49 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,0>(v9, &v9->i64[1], v9[1].i64, a2 - 1, a3);
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,0>(v9, &v9->i64[1], v9[1].i64, &v9[1].i64[1], a3);
      result = (*a3)(*(a2 - 1), v9[1].i64[1]);
      if (!result)
      {
        return result;
      }

      v54 = v9[1].i64[1];
      v9[1].i64[1] = *(a2 - 1);
      *(a2 - 1) = v54;
      result = (*a3)(v9[1].i64[1], v9[1].i64[0]);
      if (!result)
      {
        return result;
      }

      v55 = v9[1].i64[0];
      v9[1].i64[0] = v9[1].i64[1];
      v9[1].i64[1] = v55;
      result = (*a3)();
      if (!result)
      {
        return result;
      }

      v57 = v9->i64[1];
      v56 = v9[1].i64[0];
      v58 = v9->i64[0];
      v9->i64[1] = v56;
      v9[1].i64[0] = v57;
      result = (*a3)(v56, v58);
      goto LABEL_91;
    }

    goto LABEL_11;
  }

  v52 = (*a3)(v9->i64[1], v9->i64[0]);
  result = (*a3)(*(a2 - 1), v9->i64[1]);
  if ((v52 & 1) == 0)
  {
    if (!result)
    {
      return result;
    }

    v60 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    *(a2 - 1) = v60;
    result = (*a3)(v9->i64[1], v9->i64[0]);
LABEL_91:
    if (result)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }

    return result;
  }

  v53 = v9->i64[0];
  if (result)
  {
    v9->i64[0] = *(a2 - 1);
    *(a2 - 1) = v53;
    return result;
  }

  v9->i64[0] = v9->i64[1];
  v9->i64[1] = v53;
  result = (*a3)(*(a2 - 1));
  if (result)
  {
    v59 = v9->i64[1];
    v9->i64[1] = *(a2 - 1);
    goto LABEL_98;
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,0>(void *a1, void *a2, void *a3, void *a4, unsigned int (**a5)(void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if ((*a5)(*a3))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = (*a5)(*a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = (*a5)(*a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = (*a5)(*a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 8);
    if ((result + 8) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = *v8;
        v9 = v8[1];
        v8 = v5;
        result = (*a3)(v9, v10);
        if (result)
        {
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 8) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v11, *(v4 + v12 - 8));
            v12 -= 8;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v11;
        }

        v5 = v8 + 1;
        v7 += 8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 8); v4 + 1 != a2; i = v4 + 1)
    {
      v8 = *v4;
      v7 = v4[1];
      v4 = i;
      result = (*a3)(v7, v8);
      if (result)
      {
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10;
          v12 = *--v10;
          *v11 = v12;
          result = (*a3)(v9, *(v11 - 2));
        }

        while ((result & 1) != 0);
        *v10 = v9;
      }
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::IntersectNode **,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  if ((*a3)(*a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while (((*a3)(v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 1;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      ++v9;
    }

    while (!(*a3)(v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while (((*a3)(v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v11 = *v7;
    *v7 = *v4;
    *v4 = v11;
    do
    {
      v12 = v7[1];
      ++v7;
    }

    while (!(*a3)(v6, v12));
    do
    {
      v13 = *--v4;
    }

    while (((*a3)(v6, v13) & 1) != 0);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v6;
  return v7;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,ClipperLib::IntersectNode **,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = (*a3)(a1[++v6], v7);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while (((*a3)(v12, v7) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (!(*a3)(v11, v7));
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while (((*a3)(v16, v7) & 1) != 0);
      do
      {
        v17 = *--v14;
      }

      while (!(*a3)(v17, v7));
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(void *a1, void *a2, unsigned int (**a3)(uint64_t))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v14 = (*a3)(a1[1], *a1);
        v15 = (*a3)(*(a2 - 1), a1[1]);
        if (v14)
        {
          v16 = *a1;
          if (v15)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v16;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v16;
          if (!(*a3)(*(a2 - 1)))
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v15)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v21;
        v13 = (*a3)(a1[1], *a1);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!(*a3)(*(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!(*a3)(a1[3], a1[2]))
        {
          return 1;
        }

        v9 = a1[2];
        a1[2] = a1[3];
        a1[3] = v9;
        if (!(*a3)())
        {
          return 1;
        }

        v11 = a1[1];
        v10 = a1[2];
        v12 = *a1;
        a1[1] = v10;
        a1[2] = v11;
        v13 = (*a3)(v10, v12);
        break;
      default:
        goto LABEL_17;
    }

    if (v13)
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(*(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v17 = (*a3)(a1[1], *a1);
  v18 = a1 + 2;
  v19 = (*a3)(a1[2], a1[1]);
  if (v17)
  {
    v20 = *a1;
    if (v19)
    {
      *a1 = a1[2];
      a1[2] = v20;
    }

    else
    {
      v23 = a1[2];
      *a1 = a1[1];
      a1[1] = v20;
      if ((*a3)(v23))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v19)
  {
    v22 = a1[1];
    a1[1] = a1[2];
    a1[2] = v22;
    if ((*a3)())
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v24 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    if ((*a3)(*v24, *v18))
    {
      v27 = *v24;
      v28 = v25;
      while (1)
      {
        v29 = a1 + v28;
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v28 -= 8;
        if (((*a3)(v27, *(v29 + 1)) & 1) == 0)
        {
          v30 = (a1 + v28 + 24);
          goto LABEL_40;
        }
      }

      v30 = a1;
LABEL_40:
      *v30 = v27;
      if (++v26 == 8)
      {
        return v24 + 1 == a2;
      }
    }

    v18 = v24;
    v25 += 8;
    if (++v24 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,ClipperLib::IntersectNode **>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(*v12, v12[1]))
      {
        ++v12;
        v11 = v13;
      }

      result = (*a2)(*v12, *v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v12;
          *v5 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 8 * v16);
          if (2 * v11 + 2 < a3)
          {
            if ((*a2)(*v12, v12[1]))
            {
              ++v12;
              v16 = 2 * v11 + 2;
            }
          }

          result = (*a2)(*v12, v14);
          v5 = v15;
          v11 = v16;
        }

        while (!result);
        *v15 = v14;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(void *a1, unsigned int (**a2)(void, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = v8[2];
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 1), v13))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **>(uint64_t result, uint64_t a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = (*a3)(*v8, *(a2 - 8));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = (*a3)(*v8, v10);
        v9 = v11;
      }

      while ((result & 1) != 0);
      *v11 = v10;
    }
  }

  return result;
}

uint64_t std::vector<std::vector<ClipperLib::IntPoint>>::__construct_one_at_end[abi:ne200100]<std::vector<ClipperLib::IntPoint> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<ClipperLib::IntPoint>>::__emplace_back_slow_path<std::vector<ClipperLib::IntPoint> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(24 * v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<ClipperLib::IntPoint>>::~__split_buffer(&v14);
  return v8;
}

void sub_254C24CE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<ClipperLib::IntPoint>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::vector<ClipperLib::IntPoint>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<ClipperLib::IntPoint>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_254C24D60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<ClipperLib::IntPoint>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void *std::vector<ClipperLib::IntPoint>::__assign_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<ClipperLib::IntPoint>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<ClipperLib::IntPoint>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = &v4[3 * a2];
      __asm { FMOV            V0.2S, #-1.0 }

      do
      {
        *v4 = 0;
        v4[1] = 0;
        v4[2] = _D0;
        v4 += 3;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(a1, v9);
    }

    v16 = 24 * v6;
    v17 = 24 * v6 + 24 * a2;
    __asm { FMOV            V0.2S, #-1.0 }

    v19 = v16;
    do
    {
      *v19 = 0;
      v19[1] = 0;
      v19[2] = _D0;
      v19 += 3;
    }

    while (v19 != v17);
    v20 = *(a1 + 8) - *a1;
    v21 = v16 - v20;
    memcpy((v16 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v17;
    *(a1 + 16) = 0;
    if (v22)
    {

      operator delete(v22);
    }
  }
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<long long> &,std::__wrap_iter<long long *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v8 = *(a2 - 8);
    v6 = (a2 - 8);
    v7 = v8;
    v9 = *v5;
    if (*v5 < v8)
    {
      do
      {
        *v6 = v9;
        v6 = v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v9 = *v5;
      }

      while (*v5 < v7);
      *v6 = v7;
    }
  }

  return result;
}

void *std::list<long long>::__move_assign(uint64_t *a1, void *a2)
{
  result = std::__list_imp<long long>::clear(a1);
  v5 = a2[2];
  if (v5)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = *(*a2 + 8);
    v9 = *v6;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a1;
    *(v10 + 8) = v6;
    *v6 = v10;
    *a1 = v7;
    *(v7 + 8) = a1;
    a1[2] += v5;
    a2[2] = 0;
  }

  return result;
}

uint64_t *std::list<long long>::__sort<std::__less<void,void>>(uint64_t *result, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = *a2;
      if (*(*a2 + 16) < result[2])
      {
        v7 = *v5;
        v6 = v5[1];
        *(v7 + 8) = v6;
        *v6 = v7;
        v8 = *result;
        *(v8 + 8) = v5;
        *v5 = v8;
        *result = v5;
        v5[1] = result;
        return v5;
      }
    }

    else
    {
      v11 = a3 >> 1;
      v12 = (a3 >> 1) + 1;
      v13 = result;
      do
      {
        v13 = v13[1];
        --v12;
      }

      while (v12 > 1);
      v14 = std::list<long long>::__sort<std::__less<void,void>>(result, v13, a3 >> 1, a4);
      result = std::list<long long>::__sort<std::__less<void,void>>(v13, a2, a3 - v11, a4);
      v15 = v14[2];
      if (result[2] >= v15)
      {
        v17 = v14[1];
        i = result;
        result = v14;
      }

      else
      {
          ;
        }

        v18 = *i;
        v19 = *(*i + 8);
        v20 = *result;
        *(v20 + 8) = v19;
        *v19 = v20;
        v21 = *v14;
        v17 = v14[1];
        *(v21 + 8) = result;
        *result = v21;
        *v14 = v18;
        *(v18 + 8) = v14;
      }

      if (v17 != i && i != a2)
      {
        v22 = i;
        do
        {
          v23 = v17[2];
          if (i[2] >= v23)
          {
            v17 = v17[1];
          }

          else
          {
              ;
            }

            v25 = *j;
            v26 = *(*j + 8);
            v27 = *i;
            *(v27 + 8) = v26;
            *v26 = v27;
            if (v22 == i)
            {
              v22 = j;
            }

            v29 = *v17;
            v28 = v17[1];
            *(v29 + 8) = i;
            *i = v29;
            *v17 = v25;
            *(v25 + 8) = v17;
            v17 = v28;
            i = j;
          }
        }

        while (v17 != v22 && i != a2);
      }
    }
  }

  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x259C28300](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x259C28310](v13);
  return a1;
}

void sub_254C25438(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x259C28310](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x254C25418);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_254C2566C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ITKDeviceRGBColorSpace()
{
  if (ITKDeviceRGBColorSpace_sDeviceRGBDispatchOnce != -1)
  {
    ITKDeviceRGBColorSpace_cold_1();
  }

  return ITKDeviceRGBColorSpace_sDeviceRGBColorSpace;
}

CGColorSpaceRef __ITKDeviceRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceRGB();
  ITKDeviceRGBColorSpace_sDeviceRGBColorSpace = result;
  return result;
}

uint64_t ITKDeviceCMYKColorSpace()
{
  if (ITKDeviceCMYKColorSpace_sDeviceCMYKDispatchOnce != -1)
  {
    ITKDeviceCMYKColorSpace_cold_1();
  }

  return ITKDeviceCMYKColorSpace_sDeviceCMYKColorSpace;
}

CGColorSpaceRef __ITKDeviceCMYKColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceCMYK();
  ITKDeviceCMYKColorSpace_sDeviceCMYKColorSpace = result;
  return result;
}

uint64_t ITKDeviceGrayColorSpace()
{
  if (ITKDeviceGrayColorSpace_sDeviceGrayDispatchOnce != -1)
  {
    ITKDeviceGrayColorSpace_cold_1();
  }

  return ITKDeviceGrayColorSpace_sDeviceGrayColorSpace;
}

CGColorSpaceRef __ITKDeviceGrayColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceGray();
  ITKDeviceGrayColorSpace_sDeviceGrayColorSpace = result;
  return result;
}

CGColorRef ITKCGColorCreateDeviceRGB(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[4] = *MEMORY[0x277D85DE8];
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  if (ITKDeviceRGBColorSpace_sDeviceRGBDispatchOnce != -1)
  {
    ITKDeviceRGBColorSpace_cold_1();
  }

  return CGColorCreate(ITKDeviceRGBColorSpace_sDeviceRGBColorSpace, components);
}

CGColorRef ITKCGColorCreateDeviceGray(CGFloat a1, CGFloat a2)
{
  components[2] = *MEMORY[0x277D85DE8];
  components[0] = a1;
  components[1] = a2;
  if (ITKDeviceGrayColorSpace_sDeviceGrayDispatchOnce != -1)
  {
    ITKDeviceGrayColorSpace_cold_1();
  }

  return CGColorCreate(ITKDeviceGrayColorSpace_sDeviceGrayColorSpace, components);
}

CGPatternRef ITKCGPatternCreateWithImageAndTransform(CGImageRef image, __int128 *a2)
{
  if (!image)
  {
    [MEMORY[0x277D1C0E8] handleFailedAssertWithCondition:"image != ((void*)0)" functionName:"CGPatternRef ITKCGPatternCreateWithImageAndTransform(CGImageRef simulateCrash:const CGAffineTransform *)" showAlert:0 format:{0, @"can't create an image pattern without an image"}];
  }

  CGImageRetain(image);
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  if (a2)
  {
    v8 = a2[1];
    v13 = *a2;
    v14 = v8;
    v9 = a2[2];
  }

  else
  {
    v10 = *(MEMORY[0x277CBF2C0] + 16);
    v13 = *MEMORY[0x277CBF2C0];
    v14 = v10;
    v9 = *(MEMORY[0x277CBF2C0] + 32);
  }

  v15 = v9;
  v16.size.height = Height;
  v16.size.width = Width;
  *&v12.a = v13;
  *&v12.c = v14;
  *&v12.tx = v9;
  v16.origin.x = v4;
  v16.origin.y = v5;
  return CGPatternCreate(image, v16, &v12, Width, v16.size.height, kCGPatternTilingConstantSpacing, 1, &ITKCGPatternCreateWithImageAndTransform_sCallbacks);
}

void ITKDrawImageAtOriginInContext(CGImage *a1, CGContext *a2)
{
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v8 = v4;
  v9 = v5;
  v10 = Width;

  CGContextDrawImage(a2, *&v8, a1);
}

CGColorRef ITKCGColorCreatePatternWithImageAndTransform(CGImage *a1, __int128 *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = ITKCGPatternCreateWithImageAndTransform(a1, a2);
  Pattern = CGColorSpaceCreatePattern(0);
  v6[0] = 1.0;
  v4 = CGColorCreateWithPattern(Pattern, v2, v6);
  CGColorSpaceRelease(Pattern);
  CGPatternRelease(v2);
  return v4;
}

uint64_t ITKHSBFromCGColorRef(CGColorRef color, double *a2, double *a3, double *a4, CGFloat *a5)
{
  *a5 = 0.0;
  *a4 = 0.0;
  *a3 = 0.0;
  *a2 = 0.0;
  if (!color)
  {
    [MEMORY[0x277D1C0E8] handleFailedAssertWithCondition:"color" functionName:"BOOL ITKHSBFromCGColorRef(CGColorRef simulateCrash:CGFloat * showAlert:CGFloat * format:{CGFloat *, CGFloat *)", 0, 0, @"NULL color"}];
  }

  ColorSpace = CGColorGetColorSpace(color);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB || CGColorGetNumberOfComponents(color) != 4)
  {
    return 0;
  }

  *a5 = CGColorGetAlpha(color);
  Components = CGColorGetComponents(color);
  ITKRGBToHSB(a2, a3, a4, *Components, Components[1], Components[2]);
  return 1;
}

double ITKRGBToHSB(double *a1, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a4 < a5 || a4 < a6)
  {
    if (a5 >= a4)
    {
      v7 = a4;
    }

    else
    {
      v7 = a5;
    }

    if (a4 >= a6)
    {
      v8 = a6;
    }

    else
    {
      v8 = a4;
    }

    v9 = a5 < a4 || a5 < a6;
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = a6;
    }

    else
    {
      v11 = a5;
    }
  }

  else
  {
    if (a5 >= a6)
    {
      v10 = a6;
    }

    else
    {
      v10 = a5;
    }

    v11 = a4;
  }

  v12 = 0.0;
  if (v11 <= 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v13 = v11 - v10;
    v14 = (v11 - v10) / v11;
    if (v14 != 0.0)
    {
      v15 = (v11 - a5) / v13;
      v16 = (v11 - a6) / v13;
      if (v11 == a4)
      {
        if (v10 == a5)
        {
          v12 = v16 + 5.0;
        }

        else
        {
          v12 = 1.0 - v15;
        }
      }

      else
      {
        v18 = v11 == a5;
        v19 = (v11 - a4) / v13;
        if (v18)
        {
          if (v10 == a6)
          {
            v12 = v19 + 1.0;
          }

          else
          {
            v12 = 3.0 - v16;
          }
        }

        else if (v10 == a4)
        {
          v12 = v15 + 3.0;
        }

        else
        {
          v12 = 5.0 - v19;
        }
      }
    }
  }

  *a3 = v11;
  result = v12 / 6.0;
  *a1 = v12 / 6.0;
  *a2 = v14;
  return result;
}

double *ITKHSBToRGB(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  v6 = a4 * 6.0;
  v7 = a4 == 1.0;
  v8 = 0.0;
  if (!v7)
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = v8 - v8;
  v11 = (1.0 - a5) * a6;
  v12 = (1.0 - a5 * v10) * a6;
  v13 = (1.0 - a5 * (1.0 - v10)) * a6;
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        v14 = (1.0 - a5) * a6;
        v15 = a6;
        if (v9 != 2)
        {
          return result;
        }

LABEL_19:
        *result = v14;
        *a2 = v15;
        *a3 = v13;
        return result;
      }

      v14 = v12;
      v15 = a6;
    }

    else
    {
      v14 = a6;
      v15 = v13;
    }

    v13 = v11;
    goto LABEL_19;
  }

  switch(v9)
  {
    case 3:
      v14 = (1.0 - a5) * a6;
      v15 = v12;
LABEL_18:
      v13 = a6;
      goto LABEL_19;
    case 4:
      v14 = v13;
      v15 = v11;
      goto LABEL_18;
    case 5:
      v14 = a6;
      v15 = v11;
      v13 = v12;
      goto LABEL_19;
  }

  return result;
}

double ITKCMYKToRGB(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7)
{
  *a1 = 1.0 - fmin(a7 + a4 * (1.0 - a7), 1.0);
  *a2 = 1.0 - fmin(a7 + a5 * (1.0 - a7), 1.0);
  result = 1.0 - fmin(a7 + a6 * (1.0 - a7), 1.0);
  *a3 = result;
  return result;
}

BOOL ITKColorIsBlack(CGColor *a1)
{
  ColorSpace = CGColorGetColorSpace(a1);
  Model = CGColorSpaceGetModel(ColorSpace);
  Components = CGColorGetComponents(a1);
  v5 = 0.0;
  if (Model)
  {
    if (Model == kCGColorSpaceModelCMYK)
    {
      Components += 3;
      v5 = 1.0;
    }

    else
    {
      if (Model != kCGColorSpaceModelRGB || *Components != 0.0 || Components[1] != 0.0)
      {
        return 0;
      }

      Components += 2;
    }
  }

  return *Components == v5;
}

CGFloat ITKColorLightness(CGColor *a1)
{
  ColorSpace = CGColorGetColorSpace(a1);
  Model = CGColorSpaceGetModel(ColorSpace);
  switch(Model)
  {
    case kCGColorSpaceModelMonochrome:
      return *CGColorGetComponents(a1);
    case kCGColorSpaceModelCMYK:
      Components = CGColorGetComponents(a1);
      v7 = Components[3];
      v8 = 1.0 - fmin(v7 + *Components * (1.0 - v7), 1.0);
      v9 = 1.0 - fmin(v7 + Components[1] * (1.0 - v7), 1.0);
      v10 = 1.0 - fmin(v7 + Components[2] * (1.0 - v7), 1.0);
      v5 = fmax(fmax(v8, v9), v10) + fmin(fmin(v8, v9), v10);
      return v5 * 0.5;
    case kCGColorSpaceModelRGB:
      v4 = CGColorGetComponents(a1);
      v5 = fmax(fmax(*v4, v4[1]), v4[2]) + fmin(fmin(*v4, v4[1]), v4[2]);
      return v5 * 0.5;
  }

  NSLog(&cfstr_WarningTesting.isa);
  return 0.0;
}

CGContext *ITKCreateRGBABitmapContext(int a1, double a2, CGFloat a3, CGFloat a4)
{
  if (ITKDeviceRGBColorSpace_sDeviceRGBDispatchOnce != -1)
  {
    ITKDeviceRGBColorSpace_cold_1();
  }

  v8 = CGBitmapContextCreate(0, (a2 * a4), (a3 * a4), 8uLL, (4 * (a2 * a4) + 31) & 0xFFFFFFFFFFFFFFE0, ITKDeviceRGBColorSpace_sDeviceRGBColorSpace, 0x2002u);
  CGAffineTransformMakeScale(&v10, a4, a4);
  CGContextConcatCTM(v8, &v10);
  if (a1)
  {
    CGContextTranslateCTM(v8, 0.0, a3);
    CGAffineTransformMakeScale(&v10, 1.0, -1.0);
    CGContextConcatCTM(v8, &v10);
  }

  return v8;
}

CGColorRef ITKCreateCheckerBoardColor(CGColor *a1, CGColor *a2, CGFloat a3, CGFloat a4)
{
  v8 = a3 + a3;
  v9 = a4 + a4;
  v10 = ITKCreateRGBABitmapContext(0, a3 + a3, a4 + a4, 1.0);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  CGContextSetFillColorWithColor(v10, a1);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = v8;
  v15.size.height = v9;
  CGContextFillRect(v11, v15);
  CGContextSetFillColorWithColor(v11, a2);
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = a3;
  v16.size.height = a4;
  CGContextFillRect(v11, v16);
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a3;
  v17.size.height = a4;
  CGContextFillRect(v11, v17);
  Image = CGBitmapContextCreateImage(v11);
  CGContextRelease(v11);
  if (!Image)
  {
    return 0;
  }

  PatternWithImageAndTransform = ITKCGColorCreatePatternWithImageAndTransform(Image, 0);
  CGImageRelease(Image);
  return PatternWithImageAndTransform;
}

id __ITKVNBaselineAngles_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 getCROutputRegion];
  [v2 visualTextAngle];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:-v3];

  return v4;
}

double ITKVNGlobalBaselineAngleFromAngles(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = [v1 sortedArrayUsingSelector:sel_compare_];
    v3 = [v2 objectAtIndexedSubscript:{objc_msgSend(v2, "count") >> 1}];
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

id ITKVNRectClosestToPoint(void *a1, double a2, double a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __ITKVNRectClosestToPoint_block_invoke;
  v6[3] = &__block_descriptor_48_e59_q24__0__VNRectangleObservation_8__VNRectangleObservation_16l;
  *&v6[4] = a2;
  *&v6[5] = a3;
  v3 = [a1 sortedArrayUsingComparator:v6];
  if ([v3 count])
  {
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __ITKVNRectClosestToPoint_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 boundingBox];
  ITKCenterOfRect();
  [v4 boundingBox];

  ITKCenterOfRect();
  ITKDistanceSquared();
  v6 = v5;
  ITKDistanceSquared();
  if (v6 >= v7)
  {
    return v7 < v6;
  }

  else
  {
    return -1;
  }
}

uint64_t itk_orientationByRotatingLeft(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return qword_254C2B4D0[a1];
  }
}

uint64_t itk_orientationByRotatingRight(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return qword_254C2B510[a1];
  }
}

void itk_orientationApplyToRectAtPoint(CGAffineTransform *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeTranslation(&v17, -a6, -a7);
  _transformFromImageOrientation(a1, 0, &t2);
  v14 = v17;
  CGAffineTransformConcat(&v16, &v14, &t2);
  v17 = v16;
  CGAffineTransformMakeTranslation(&t2, a6, a7);
  v14 = v17;
  CGAffineTransformConcat(&v16, &v14, &t2);
  v17 = v16;
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectApplyAffineTransform(v18, &v16);
}

uint64_t itk_clockwiseRotationsFromUpToMatchOrientation(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_254C2B550[a1 - 1];
  }
}

uint64_t itk_counterClockwiseRotationsFromUpToMatchOrientation(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 0;
  }

  else
  {
    return qword_254C2B588[a1 - 1];
  }
}

CGAffineTransform *_transformFromImageOrientation@<X0>(CGAffineTransform *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = MEMORY[0x277CBF2C0];
  v6 = *MEMORY[0x277CBF2C0];
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  *a3 = *MEMORY[0x277CBF2C0];
  *(a3 + 16) = v7;
  v8 = *(v5 + 32);
  *(a3 + 32) = v8;
  if (result <= 3)
  {
    if (result == 1)
    {
      v9 = 3.14159265;
    }

    else if (result == 2)
    {
      v9 = -1.57079633;
    }

    else
    {
      if (result != 3)
      {
        return result;
      }

      v9 = 1.57079633;
    }

LABEL_17:
    v10 = -v9;
    if (!a2)
    {
      v10 = v9;
    }

    CGAffineTransformMakeRotation(&t2, v10);
    v11 = *(a3 + 16);
    *&v13.a = *a3;
    *&v13.c = v11;
    *&v13.tx = *(a3 + 32);
    result = CGAffineTransformConcat(&v15, &v13, &t2);
    v12 = *&v15.c;
    *a3 = *&v15.a;
    *(a3 + 16) = v12;
    *(a3 + 32) = *&v15.tx;
    return result;
  }

  if (result > 5)
  {
    if (result == 6)
    {
      v9 = -1.57079633;
    }

    else
    {
      if (result != 7)
      {
        return result;
      }

      v9 = 1.57079633;
    }
  }

  else
  {
    v9 = 0.0;
    if (result != 4)
    {
      v9 = 3.14159265;
    }
  }

  *&v15.a = v6;
  *&v15.c = v7;
  *&v15.tx = v8;
  result = CGAffineTransformScale(a3, &v15, -1.0, 1.0);
  if (v9 != 0.0)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t itk_cgImagePropertyOrientationFromITKOrientation(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return 1;
  }

  else
  {
    return dword_254C2B5C0[a1 - 1];
  }
}

uint64_t itk_imageOrientationFromTransform(__int128 *a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v1 = a1[1];
  v5 = *a1;
  v6 = v1;
  v4[2] = __itk_imageOrientationFromTransform_block_invoke;
  v4[3] = &unk_2797B05E0;
  v7 = a1[2];
  v4[4] = &v8;
  [&unk_286712890 enumerateObjectsUsingBlock:v4];
  v2 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v2;
}

CGAffineTransform *__itk_imageOrientationFromTransform_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 integerValue];
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  result = _transformFromImageOrientation(v6, 0, &v8);
  if (vabdd_f64(*(a1 + 40), *&v8) < 0.00999999978 && vabdd_f64(*(a1 + 48), *(&v8 + 1)) < 0.00999999978 && vabdd_f64(*(a1 + 56), *&v9) < 0.00999999978 && vabdd_f64(*(a1 + 64), *(&v9 + 1)) < 0.00999999978)
  {
    *(*(*(a1 + 32) + 8) + 24) = v6;
    *a4 = 1;
  }

  return result;
}

unint64_t itk_swapLeftAndRightImageOrientation(unint64_t result)
{
  if (result <= 7)
  {
    return qword_254C2B5E0[result];
  }

  return result;
}

uint64_t itk_orientationFromCGImagePropertyOrientation(int a1)
{
  if ((a1 - 2) > 6)
  {
    return 0;
  }

  else
  {
    return qword_254C2B620[a1 - 2];
  }
}

void sub_254C27490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CGPathRandomAccess::CGPathRandomAccess(CGPathRandomAccess *this, const CGPath *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  CGPathRandomAccess::addPath(this, a2);
}

void sub_254C2767C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t CGPathRandomAccess::addPath(CGPathRandomAccess *this, CGPathRef path)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x4812000000;
  v10[3] = __Block_byref_object_copy__1;
  v10[4] = __Block_byref_object_dispose__1;
  v10[5] = &unk_254C2D841;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN18CGPathRandomAccess7addPathEPK6CGPath_block_invoke;
  block[3] = &unk_2797B0298;
  block[4] = v10;
  CGPathApplyWithBlock(path, block);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 4);
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x4012000000;
  v7[3] = __Block_byref_object_copy__1;
  v7[4] = __Block_byref_object_dispose__2;
  v7[5] = &unk_254C2D841;
  v8 = *MEMORY[0x277CBF348];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___ZN18CGPathRandomAccess7addPathEPK6CGPath_block_invoke_4;
  v6[3] = &unk_2797B0608;
  v6[6] = this;
  v6[7] = v4;
  v6[4] = v10;
  v6[5] = v7;
  CGPathApplyWithBlock(path, v6);
  CGPathRandomAccessSubpath::closeIfNeeded((*(this + 1) - 48));
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(v10, 8);
  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  return v4;
}

void sub_254C27888(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 136), 8);
  v3 = *(v1 - 88);
  if (v3)
  {
    *(v1 - 80) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

{
  result = a2[3];
  a1[3] = result;
  return result;
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN18CGPathRandomAccess7addPathEPK6CGPath_block_invoke(uint64_t a1, int *a2)
{
  v2 = *a2;
  if ((*a2 - 2) < 2)
  {
    v7 = *(*(*(a1 + 32) + 8) + 56);
    ++*(v7 - 16);
    v8 = *(*(*(a1 + 32) + 8) + 56);
    v9 = *(v8 - 8) + 3;
LABEL_8:
    *(v8 - 8) = v9;
    return;
  }

  if (v2 == 1)
  {
    v10 = *(*(*(a1 + 32) + 8) + 56);
    ++*(v10 - 16);
    v8 = *(*(*(a1 + 32) + 8) + 56);
    v9 = *(v8 - 8) + 1;
    goto LABEL_8;
  }

  if (!v2)
  {
    v3 = *(*(a1 + 32) + 8);
    v5 = v3[7];
    v4 = v3[8];
    if (v5 >= v4)
    {
      v11 = v3[6];
      v12 = v5 - v11;
      v13 = (v5 - v11) >> 4;
      v14 = v13 + 1;
      if ((v13 + 1) >> 60)
      {
        std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
      }

      v15 = v4 - v11;
      if (v15 >> 3 > v14)
      {
        v14 = v15 >> 3;
      }

      v16 = v15 >= 0x7FFFFFFFFFFFFFF0;
      v17 = 0xFFFFFFFFFFFFFFFLL;
      if (!v16)
      {
        v17 = v14;
      }

      if (v17)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>((v3 + 6), v17);
      }

      v18 = (v5 - v11) >> 4;
      v19 = (16 * v13);
      v20 = (16 * v13 - 16 * v18);
      *v19 = vdupq_n_s64(1uLL);
      v6 = v19 + 1;
      memcpy(v20, v11, v12);
      v21 = v3[6];
      v3[6] = v20;
      v3[7] = v6;
      v3[8] = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v5 = vdupq_n_s64(1uLL);
      v6 = v5 + 1;
    }

    v3[7] = v6;
  }
}

void ___ZN18CGPathRandomAccess7addPathEPK6CGPath_block_invoke_4(void *a1, uint64_t a2)
{
  v3 = a1[6];
  v4 = *a2;
  if (*a2 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        return;
      }

      v5 = v3[1];
      v6 = ((*(v5 - 16) - *(v5 - 24)) >> 4) - 1;
      v8 = *(v5 - 40);
      v7 = *(v5 - 32);
      if (v8 < v7)
      {
        *v8 = v6;
        *(v8 + 8) = 0;
        v9 = v8 + 16;
        goto LABEL_50;
      }

      v23 = *(v5 - 48);
      v24 = v8 - v23;
      v25 = (v8 - v23) >> 4;
      v26 = v25 + 1;
      if (!((v25 + 1) >> 60))
      {
        v27 = v7 - v23;
        if (v27 >> 3 > v26)
        {
          v26 = v27 >> 3;
        }

        v28 = v27 >= 0x7FFFFFFFFFFFFFF0;
        v29 = 0xFFFFFFFFFFFFFFFLL;
        if (!v28)
        {
          v29 = v26;
        }

        if (v29)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessElement>>(v5 - 48, v29);
        }

        v54 = v25;
        v55 = 16 * v25;
        *v55 = v6;
        *(v55 + 8) = 0;
        v9 = 16 * v25 + 16;
        v56 = (v55 - 16 * v54);
        memcpy(v56, v23, v24);
        v57 = *(v5 - 48);
        *(v5 - 48) = v56;
        *(v5 - 40) = v9;
        *(v5 - 32) = 0;
        if (v57)
        {
          operator delete(v57);
        }

LABEL_50:
        *(v5 - 40) = v9;
        v38 = v3[1];
        v58 = *(a2 + 8);
        v41 = *(v38 - 16);
        v59 = *(v38 - 8);
        if (v41 < v59)
        {
          v42 = *v58;
          goto LABEL_93;
        }

        v60 = *(v38 - 24);
        v61 = (v41 - v60) >> 4;
        v62 = v61 + 1;
        if (!((v61 + 1) >> 60))
        {
          v63 = v59 - v60;
          if (v63 >> 3 > v62)
          {
            v62 = v63 >> 3;
          }

          if (v63 >= 0x7FFFFFFFFFFFFFF0)
          {
            v64 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v64 = v62;
          }

          if (v64)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(v38 - 24, v64);
          }

          v87 = (16 * v61);
          v88 = *v58;
LABEL_103:
          *v87 = v88;
          v110 = v87 + 1;
          v116 = *(v38 - 24);
          v117 = *(v38 - 16) - v116;
          v118 = v87 - v117;
          memcpy(v87 - v117, v116, v117);
          v119 = *(v38 - 24);
          *(v38 - 24) = v118;
          *(v38 - 16) = v110;
          *(v38 - 8) = 0;
          if (v119)
          {
            operator delete(v119);
          }

          goto LABEL_105;
        }

        goto LABEL_107;
      }

LABEL_108:
      std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
    }

    v16 = v3[1];
    if (v16 != *v3)
    {
      CGPathRandomAccessSubpath::closeIfNeeded((v16 - 3));
      v16 = v3[1];
    }

    if (v16 >= v3[2])
    {
      v17 = std::vector<CGPathRandomAccessSubpath>::__emplace_back_slow_path<>(v3);
    }

    else
    {
      v16[1] = 0u;
      v16[2] = 0u;
      *v16 = 0u;
      v17 = (v16 + 3);
    }

    v3[1] = v17;
    v36 = (*(*(a1[4] + 8) + 48) - 0x5555555555555555 * (v17 - *v3) + 16 * ~a1[7]);
    v37 = v36[1];
    std::vector<CGPathRandomAccessElement>::reserve((v17 - 48), *v36);
    std::vector<ClipperLib::DoublePoint>::reserve((v3[1] - 24), v37);
    *(*(a1[5] + 8) + 48) = **(a2 + 8);
    v38 = v3[1];
    v39 = *(a1[5] + 8);
    v41 = *(v38 - 16);
    v40 = *(v38 - 8);
    if (v41 < v40)
    {
      v42 = *(v39 + 48);
LABEL_93:
      *v41 = v42;
      v110 = v41 + 1;
LABEL_105:
      *(v38 - 16) = v110;
      return;
    }

    v49 = *(v38 - 24);
    v50 = (v41 - v49) >> 4;
    v51 = v50 + 1;
    if (!((v50 + 1) >> 60))
    {
      v52 = v40 - v49;
      if (v52 >> 3 > v51)
      {
        v51 = v52 >> 3;
      }

      if (v52 >= 0x7FFFFFFFFFFFFFF0)
      {
        v53 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v53 = v51;
      }

      if (v53)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(v38 - 24, v53);
      }

      v87 = (16 * v50);
      v88 = *(v39 + 48);
      goto LABEL_103;
    }

LABEL_107:
    std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
  }

  if (v4 == 2)
  {
    v18 = v3[1];
    v19 = ((*(v18 - 16) - *(v18 - 24)) >> 4) - 1;
    v21 = *(v18 - 40);
    v20 = *(v18 - 32);
    if (v21 >= v20)
    {
      v43 = *(v18 - 48);
      v44 = v21 - v43;
      v45 = (v21 - v43) >> 4;
      v46 = v45 + 1;
      if ((v45 + 1) >> 60)
      {
        goto LABEL_108;
      }

      v47 = v20 - v43;
      if (v47 >> 3 > v46)
      {
        v46 = v47 >> 3;
      }

      v28 = v47 >= 0x7FFFFFFFFFFFFFF0;
      v48 = 0xFFFFFFFFFFFFFFFLL;
      if (!v28)
      {
        v48 = v46;
      }

      if (v48)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessElement>>(v18 - 48, v48);
      }

      v72 = v45;
      v73 = 16 * v45;
      *v73 = v19;
      *(v73 + 8) = 1;
      v22 = 16 * v45 + 16;
      v74 = (v73 - 16 * v72);
      memcpy(v74, v43, v44);
      v75 = *(v18 - 48);
      *(v18 - 48) = v74;
      *(v18 - 40) = v22;
      *(v18 - 32) = 0;
      if (v75)
      {
        operator delete(v75);
      }
    }

    else
    {
      *v21 = v19;
      *(v21 + 8) = 1;
      v22 = v21 + 16;
    }

    *(v18 - 40) = v22;
    v76 = v3[1];
    v78 = *(v76 - 16);
    v77 = *(v76 - 8);
    v79 = vmlaq_f64(v78[-1], vdupq_n_s64(0x3FE5555555555555uLL), vsubq_f64(**(a2 + 8), v78[-1]));
    if (v78 >= v77)
    {
      v81 = *(v76 - 24);
      v82 = v78 - v81;
      v83 = (v78 - v81) >> 4;
      v84 = v83 + 1;
      if ((v83 + 1) >> 60)
      {
        goto LABEL_107;
      }

      v85 = v77 - v81;
      if (v85 >> 3 > v84)
      {
        v84 = v85 >> 3;
      }

      v28 = v85 >= 0x7FFFFFFFFFFFFFF0;
      v86 = 0xFFFFFFFFFFFFFFFLL;
      if (!v28)
      {
        v86 = v84;
      }

      if (v86)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(v76 - 24, v86);
      }

      v89 = (v78 - v81) >> 4;
      v90 = (16 * v83);
      v91 = (16 * v83 - 16 * v89);
      *v90 = v79;
      f64 = v90[1].f64;
      memcpy(v91, v81, v82);
      v92 = *(v76 - 24);
      *(v76 - 24) = v91;
      *(v76 - 16) = f64;
      *(v76 - 8) = 0;
      if (v92)
      {
        operator delete(v92);
      }
    }

    else
    {
      *v78 = v79;
      f64 = v78[1].f64;
    }

    *(v76 - 16) = f64;
    v93 = v3[1];
    v94 = vmlaq_f64(*(*(a2 + 8) + 16), vdupq_n_s64(0x3FE5555555555555uLL), vsubq_f64(**(a2 + 8), *(*(a2 + 8) + 16)));
    v96 = *(v93 - 16);
    v95 = *(v93 - 8);
    if (v96 >= v95)
    {
      v98 = *(v93 - 24);
      v99 = v96 - v98;
      v100 = (v96 - v98) >> 4;
      v101 = v100 + 1;
      if ((v100 + 1) >> 60)
      {
        goto LABEL_107;
      }

      v102 = v95 - v98;
      if (v102 >> 3 > v101)
      {
        v101 = v102 >> 3;
      }

      v28 = v102 >= 0x7FFFFFFFFFFFFFF0;
      v103 = 0xFFFFFFFFFFFFFFFLL;
      if (!v28)
      {
        v103 = v101;
      }

      if (v103)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(v93 - 24, v103);
      }

      v104 = (v96 - v98) >> 4;
      v105 = (16 * v100);
      v106 = (16 * v100 - 16 * v104);
      *v105 = v94;
      v97 = v105[1].f64;
      memcpy(v106, v98, v99);
      v107 = *(v93 - 24);
      *(v93 - 24) = v106;
      *(v93 - 16) = v97;
      *(v93 - 8) = 0;
      if (v107)
      {
        operator delete(v107);
      }
    }

    else
    {
      *v96 = v94;
      v97 = v96 + 16;
    }

    *(v93 - 16) = v97;
    v38 = v3[1];
    v108 = *(a2 + 8);
    v41 = *(v38 - 16);
    v109 = *(v38 - 8);
    if (v41 < v109)
    {
      v42 = *(v108 + 16);
      goto LABEL_93;
    }

    v111 = *(v38 - 24);
    v112 = (v41 - v111) >> 4;
    v113 = v112 + 1;
    if (!((v112 + 1) >> 60))
    {
      v114 = v109 - v111;
      if (v114 >> 3 > v113)
      {
        v113 = v114 >> 3;
      }

      if (v114 >= 0x7FFFFFFFFFFFFFF0)
      {
        v115 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v115 = v113;
      }

      if (v115)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(v38 - 24, v115);
      }

      v87 = (16 * v112);
      v88 = *(v108 + 16);
      goto LABEL_103;
    }

    goto LABEL_107;
  }

  if (v4 != 3)
  {
    return;
  }

  v10 = v3[1];
  v11 = ((*(v10 - 16) - *(v10 - 24)) >> 4) - 1;
  v13 = *(v10 - 40);
  v12 = *(v10 - 32);
  if (v13 >= v12)
  {
    v30 = *(v10 - 48);
    v31 = v13 - v30;
    v32 = (v13 - v30) >> 4;
    v33 = v32 + 1;
    if ((v32 + 1) >> 60)
    {
      goto LABEL_108;
    }

    v34 = v12 - v30;
    if (v34 >> 3 > v33)
    {
      v33 = v34 >> 3;
    }

    v28 = v34 >= 0x7FFFFFFFFFFFFFF0;
    v35 = 0xFFFFFFFFFFFFFFFLL;
    if (!v28)
    {
      v35 = v33;
    }

    if (v35)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessElement>>(v10 - 48, v35);
    }

    v65 = v32;
    v66 = 16 * v32;
    *v66 = v11;
    *(v66 + 8) = 1;
    v14 = 16 * v32 + 16;
    v67 = (v66 - 16 * v65);
    memcpy(v67, v30, v31);
    v68 = *(v10 - 48);
    *(v10 - 48) = v67;
    *(v10 - 40) = v14;
    *(v10 - 32) = 0;
    if (v68)
    {
      operator delete(v68);
    }
  }

  else
  {
    *v13 = v11;
    *(v13 + 8) = 1;
    v14 = v13 + 16;
  }

  *(v10 - 40) = v14;
  v69 = v3[1];
  v70 = *(v69 - 16);
  v71 = *(a2 + 8);

  std::vector<CGPoint>::__insert_with_size[abi:ne200100]<CGPoint*,CGPoint*>(v69 - 24, v70, v71, v71 + 48, 3);
}

void CGPathRandomAccessSubpath::closeIfNeeded(CGPathRandomAccessSubpath *this)
{
  v1 = *this;
  v2 = *(this + 1);
  v3 = v2 - *this;
  v4 = v3 >> 4;
  if ((v3 >> 4) >= 2)
  {
    v6 = *(this + 3);
    v7 = *(this + 4);
    v8 = ((v7 - v6) >> 4) - 1;
    if (*(v2 - 16) != v8 && (*(v7 - 16) != *v6 || *(v7 - 8) != v6[1]))
    {
      v10 = *(this + 2);
      if (v2 >= v10)
      {
        v12 = v4 + 1;
        if ((v4 + 1) >> 60)
        {
          std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
        }

        v13 = v10 - v1;
        if (v13 >> 3 > v12)
        {
          v12 = v13 >> 3;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF0)
        {
          v12 = 0xFFFFFFFFFFFFFFFLL;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessElement>>(this, v12);
        }

        v14 = 16 * v4;
        *v14 = v8;
        *(v14 + 8) = 0;
        v11 = 16 * v4 + 16;
        memcpy(0, v1, v3);
        v15 = *this;
        *this = 0;
        *(this + 1) = v11;
        *(this + 2) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v2 = v8;
        *(v2 + 8) = 0;
        v11 = v2 + 16;
      }

      *(this + 1) = v11;
    }
  }
}

void *std::vector<CGPathRandomAccessElement>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessElement>>(result, a2);
    }

    std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<CGPathRandomAccessSubpath>::__emplace_back_slow_path<>(uint64_t *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v2 = v1 + 1;
  if (v1 + 1 > 0x555555555555555)
  {
    std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v4 = 0x555555555555555;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessSubpath>>(a1, v4);
  }

  v5 = 48 * v1;
  v12 = 0;
  v13 = v5;
  *(&v14 + 1) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *&v14 = 48 * v1 + 48;
  v6 = a1[1];
  v7 = 48 * v1 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CGPathRandomAccessSubpath>,CGPathRandomAccessSubpath*>(a1, *a1, v6, (v5 + *a1 - v6));
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<CGPathRandomAccessSubpath>::~__split_buffer(&v12);
  return v11;
}

void sub_254C2844C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CGPathRandomAccessSubpath>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessSubpath>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CGPathRandomAccessSubpath>,CGPathRandomAccessSubpath*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v6 + 24);
      a4[5] = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      v6 += 48;
      a4 += 6;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<CGPathRandomAccessSubpath,0>(v5);
      v5 += 48;
    }
  }
}

void std::__destroy_at[abi:ne200100]<CGPathRandomAccessSubpath,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

uint64_t std::__split_buffer<CGPathRandomAccessSubpath>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__destroy_at[abi:ne200100]<CGPathRandomAccessSubpath,0>(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessElement>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *std::vector<CGPoint>::__insert_with_size[abi:ne200100]<CGPoint*,CGPoint*>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 4)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(a1, v15);
    }

    v33 = 16 * v16;
    v34 = 16 * a5;
    v35 = (16 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 16;
    }

    while (v34);
    memcpy((v33 + 16 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 16 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (16 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 4;
  if (v18 >= a5)
  {
    v29 = &__dst[16 * a5];
    v30 = (v10 - 16 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[16 * a5], __dst, v10 - v29);
    }

    v28 = 16 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[16 * a5];
    v23 = v10 + v20;
    if (&v21[-16 * a5] < v10)
    {
      v24 = &a4[v5];
      v25 = &a4[v5 + -16 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 16;
        v24 += 16;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[16 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<CGPathRandomAccessSubpath,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void CGPathRandomAccessSubpath::clipperPath(uint64_t *a1, uint64_t *a2, double a3)
{
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    __asm
    {
      FMOV            V1.2D, #3.0
      FMOV            V0.2D, #6.0
    }

    v73 = _Q0;
    v74 = _Q1;
    __asm
    {
      FMOV            V1.2D, #0.125
      FMOV            V0.2D, #0.25
    }

    v71 = _Q0;
    v72 = _Q1;
    __asm { FMOV            V0.2D, #0.5 }

    v70 = _Q0;
    do
    {
      if (!v6)
      {
        v15 = vmovn_s64(vcvtq_s64_f64(vmulq_n_f64(*a1[3], a3)));
        v16 = a2[1];
        v17 = a2[2];
        if (v16 >= v17)
        {
          v20 = *a2;
          v21 = v16 - *a2;
          v22 = 0xAAAAAAAAAAAAAAABLL * (v21 >> 3) + 1;
          if (v22 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_49;
          }

          v23 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v20) >> 3);
          if (2 * v23 > v22)
          {
            v22 = 2 * v23;
          }

          if (v23 >= 0x555555555555555)
          {
            v22 = 0xAAAAAAAAAAAAAAALL;
          }

          if (v22)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(a2, v22);
          }

          v24 = 8 * (v21 >> 3);
          *&v25 = v15.i32[0];
          *(&v25 + 1) = v15.i32[1];
          *v24 = v25;
          *(v24 + 16) = 0;
          v19 = v24 + 24;
          v26 = v24 - v21;
          memcpy((v24 - v21), v20, v21);
          v27 = *a2;
          *a2 = v26;
          a2[1] = v19;
          a2[2] = 0;
          if (v27)
          {
            operator delete(v27);
          }
        }

        else
        {
          *&v18 = v15.i32[0];
          *(&v18 + 1) = v15.i32[1];
          *v16 = v18;
          *(v16 + 16) = 0;
          v19 = v16 + 24;
        }

        a2[1] = v19;
        v4 = *a1;
      }

      v28 = v4 + 16 * v6;
      if (*(v28 + 8) == 1)
      {
        v86[0] = 0;
        v86[1] = v86;
        v86[2] = 0x3812000000;
        v86[3] = __Block_byref_object_copy__7;
        v86[4] = __Block_byref_object_dispose__8;
        v86[5] = &unk_254C2D841;
        v86[6] = 0;
        v29 = a1[3] + 16 * *v28;
        v80[0] = MEMORY[0x277D85DD0];
        v80[1] = 3221225472;
        v81 = ___ZNK25CGPathRandomAccessSubpath11clipperPathEdRNSt3__16vectorIN10ClipperLib8IntPointENS0_9allocatorIS3_EEEE_block_invoke;
        v82 = &unk_2797B0630;
        v85 = a3;
        v83 = v86;
        v84 = a2;
        v30 = v80;
        v32 = *v29;
        v31 = *(v29 + 16);
        v33 = vsubq_f64(v31, *v29);
        v35 = *(v29 + 32);
        v34 = *(v29 + 48);
        v36 = vsubq_f64(v35, v31);
        v37 = vsubq_f64(v36, v33);
        v38 = vsubq_f64(vsubq_f64(v34, v35), v36);
        v39 = vzip2q_s64(v37, v38);
        v40 = vzip1q_s64(v37, v38);
        v41 = vmlaq_f64(vmulq_f64(v39, v39), v40, v40);
        if (v41.n128_f64[0] <= v41.n128_f64[1])
        {
          v41.n128_f64[0] = v41.n128_f64[1];
        }

        v42 = v41.n128_f64[0] * 9.0 * 0.0625;
        v41.n128_u64[0] = *(v29 + 56);
        if (v42 > 0.04)
        {
          v43 = vsubq_f64(v38, v37);
          v44 = vmulq_f64(v43, v73);
          v45 = vmlaq_f64(v43, v74, vaddq_f64(v33, v37));
          v46 = vmulq_f64(vaddq_f64(v37, v43), v73);
          v47 = 1;
          do
          {
            v44 = vmulq_f64(v44, v72);
            v46 = vsubq_f64(vmulq_f64(v46, v71), v44);
            v45 = vsubq_f64(vmulq_f64(v45, v70), vmulq_f64(v46, v70));
            v47 *= 2;
            v42 = v42 * 0.0625;
          }

          while (v42 > 0.04 && v47 <= 0x10000);
          if (v47 >= 2)
          {
            for (i = 1; i != v47; ++i)
            {
              v76 = v45;
              v77 = v46;
              v78 = v44;
              v79 = vaddq_f64(v32, v45);
              (v81)(v30, v79.f64[0], v79.f64[1], i / v47);
              v41.n128_u64[1] = *&v76.f64[1];
              v34.n128_u64[1] = *&v77.f64[1];
              v45 = vaddq_f64(v76, v77);
              v44 = v78;
              v32 = v79;
              v46 = vaddq_f64(v78, v77);
            }

            v34.n128_u64[0] = *(v29 + 48);
            v41.n128_u64[0] = *(v29 + 56);
          }
        }

        (v81)(v30, v34, v41, 1.0);

        _Block_object_dispose(v86, 8);
      }

      else
      {
        v49 = vmovn_s64(vcvtq_s64_f64(vmulq_n_f64(*(a1[3] + 16 * ((*v28 + 1) % ((a1[4] - a1[3]) >> 4))), a3)));
        v50 = a2[1];
        v51 = a2[2];
        if (v50 >= v51)
        {
          v54 = *a2;
          v55 = v50 - *a2;
          v56 = 0xAAAAAAAAAAAAAAABLL * (v55 >> 3) + 1;
          if (v56 > 0xAAAAAAAAAAAAAAALL)
          {
LABEL_49:
            std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
          }

          v57 = 0xAAAAAAAAAAAAAAABLL * ((v51 - v54) >> 3);
          if (2 * v57 > v56)
          {
            v56 = 2 * v57;
          }

          if (v57 >= 0x555555555555555)
          {
            v56 = 0xAAAAAAAAAAAAAAALL;
          }

          if (v56)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(a2, v56);
          }

          v58 = 8 * (v55 >> 3);
          *&v59 = v49.i32[0];
          *(&v59 + 1) = v49.i32[1];
          *v58 = v59;
          *(v58 + 16) = 0;
          v53 = v58 + 24;
          v60 = v58 - v55;
          memcpy((v58 - v55), v54, v55);
          v61 = *a2;
          *a2 = v60;
          a2[1] = v53;
          a2[2] = 0;
          if (v61)
          {
            operator delete(v61);
          }
        }

        else
        {
          *&v52 = v49.i32[0];
          *(&v52 + 1) = v49.i32[1];
          *v50 = v52;
          *(v50 + 16) = 0;
          v53 = v50 + 24;
        }

        a2[1] = v53;
      }

      ++v6;
      v4 = *a1;
    }

    while (v6 < (a1[1] - *a1) >> 4);
  }

  v63 = *a2;
  v62 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v62 - *a2) >> 3) > 1)
  {
    v65 = *(v62 - 24);
    v66 = *(v62 - 16);
    v64 = v62 - 24;
    v68 = *v63;
    v67 = v63[1];
    if (v65 == v68 && v66 == v67)
    {
      a2[1] = v64;
    }
  }
}

void ___ZNK25CGPathRandomAccessSubpath11clipperPathEdRNSt3__16vectorIN10ClipperLib8IntPointENS0_9allocatorIS3_EEEE_block_invoke(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 48);
  v4 = (a2 * v3);
  v5 = (a3 * v3);
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  if (v8 >= v9)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
    v12 = *v6;
    v13 = v8 - *v6;
    v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3) + 1;
    if (v14 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v12) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 < 0x555555555555555)
    {
      v11 = v14;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(*(a1 + 40), v11);
    }

    v16 = (8 * (v13 >> 3));
    *v16 = v4;
    v16[1] = v5;
    v16[2] = *(v7 + 48);
    v10 = v16 + 3;
    v17 = v16 - v13;
    memcpy(v16 - v13, v12, v13);
    v18 = *v6;
    *v6 = v17;
    *(v6 + 8) = v10;
    *(v6 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v8 = v4;
    v8[1] = v5;
    v8[2] = *(v7 + 48);
    v10 = v8 + 3;
  }

  *(v6 + 8) = v10;
}

uint64_t static UIViewAutoresizing.itk_flexibleWidth.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F752DC0 = a1;
  return result;
}

uint64_t static UIViewAutoresizing.itk_flexibleHeight.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27F752DC8 = a1;
  return result;
}

CGRect __swiftcall CGRect.init(itk_point1:point2:)(CGPoint itk_point1, CGPoint point2)
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

Swift::Bool __swiftcall CGRect.itk_isEqualToRect(_:)(CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v10.origin.x = v1;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  return CGRectEqualToRect(v10, v11);
}

BOOL static CGRect.== infix(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1 == a5;
  if (a2 != a6)
  {
    v8 = 0;
  }

  if (a3 != a7)
  {
    v8 = 0;
  }

  return a4 == a8 && v8;
}

CGRect __swiftcall CGRect.init(point1:point2:)(CGPoint point1, CGPoint point2)
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

Swift::Bool __swiftcall CGPoint.itk_isEqualToPoint(_:)(CGPoint a1)
{
  y = a1.y;
  x = a1.x;
  v6.x = v1;
  v6.y = v2;
  v7.x = x;
  v7.y = y;
  return CGPointEqualToPoint(v6, v7);
}

CGPoint __swiftcall CGPoint.itk_addPoint(_:)(CGPoint a1)
{
  ITKAddPoints();
  result.y = v2;
  result.x = v1;
  return result;
}

CGPoint __swiftcall CGPoint.itk_subtractPoint(_:)(CGPoint a1)
{
  ITKSubtractPoints();
  result.y = v2;
  result.x = v1;
  return result;
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

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void operator delete[]()
{
    ;
  }
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

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}