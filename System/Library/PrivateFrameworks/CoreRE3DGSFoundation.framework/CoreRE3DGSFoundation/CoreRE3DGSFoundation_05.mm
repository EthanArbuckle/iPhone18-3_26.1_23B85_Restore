void sub_247457A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, std::locale a52)
{
  if (*(v52 - 217) < 0)
  {
    operator delete(*(v52 - 240));
    apple3dgs::MeasureTime::~MeasureTime((v52 - 192));
    _Unwind_Resume(a1);
  }

  apple3dgs::MeasureTime::~MeasureTime((v52 - 192));
  _Unwind_Resume(a1);
}

void apple3dgs::SortWorker::Job::~Job(apple3dgs::SortWorker::Job *this)
{
  v1 = *(this + 5);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  v3 = *(this + 3);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = this;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    this = v4;
  }

  v5 = *(this + 1);
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

uint64_t *_ZNSt3__16vectorINS_5arrayIDF16_Lm4EEENS_9allocatorIS2_EEE6assignEmRKS2_(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 16);
  v6 = *a1;
  result = v6;
  if (a2 > (v5 - v6) >> 3)
  {
    if (v6)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
      v5 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a2 >> 61))
    {
      v8 = v5 >> 2;
      if (v5 >> 2 <= a2)
      {
        v8 = a2;
      }

      v9 = v5 >= 0x7FFFFFFFFFFFFFF8;
      v10 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v9)
      {
        v10 = v8;
      }

      if (!(v10 >> 61))
      {
        operator new();
      }
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v6;
  v12 = v11 >> 3;
  if (v11 >> 3 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = v11 >> 3;
  }

  if (v13)
  {
    if (v13 < 8 || v6 < a3 + 1 && &v6[v13] > a3)
    {
      goto LABEL_35;
    }

    result = &v6[v13 & 0xFFFFFFFFFFFFFFFCLL];
    v14 = vdupq_lane_s64(*a3, 0);
    v15 = (v6 + 2);
    v16 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v15[-1] = v14;
      *v15 = v14;
      v15 += 2;
      v16 -= 4;
    }

    while (v16);
    v17 = v13 == (v13 & 0xFFFFFFFFFFFFFFFCLL);
    v13 &= 3u;
    if (!v17)
    {
LABEL_35:
      do
      {
        *result++ = *a3;
        --v13;
      }

      while (v13);
    }
  }

  v9 = a2 >= v12;
  v18 = a2 - v12;
  if (v18 != 0 && v9)
  {
    v19 = *(a1 + 8);
    v20 = &v19[v18];
    v21 = 8 * a2 - v11 - 8;
    if (v21 < 0x98 || v19 < a3 + 1 && (v19 + (v21 & 0xFFFFFFFFFFFFFFF8) + 8) > a3)
    {
      goto LABEL_36;
    }

    v22 = (v21 >> 3) + 1;
    v23 = &v19[v22 & 0x3FFFFFFFFFFFFFFCLL];
    v24 = vdupq_lane_s64(*a3, 0);
    v25 = (v19 + 2);
    v26 = v22 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v25[-1] = v24;
      *v25 = v24;
      v25 += 2;
      v26 -= 4;
    }

    while (v26);
    v19 = v23;
    if (v22 != (v22 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_36:
      do
      {
        *v19++ = *a3;
      }

      while (v19 != v20);
    }

    *(a1 + 8) = v20;
  }

  else
  {
    *(a1 + 8) = *a1 + 8 * a2;
  }

  return result;
}

_DWORD *std::vector<std::array<float,3ul>>::assign(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + 16);
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 2) < a2)
  {
    if (result)
    {
      *(a1 + 8) = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a2 <= 0x1555555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 2);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0x1555555555555555;
      }

      else
      {
        v9 = v8;
      }

      if (v9 <= 0x1555555555555555)
      {
        operator new();
      }
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - result) >> 2);
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - result) >> 2);
  }

  for (; v11; --v11)
  {
    v12 = *a3;
    result[2] = *(a3 + 2);
    *result = v12;
    result += 3;
  }

  if (a2 <= v10)
  {
    *(a1 + 8) = *a1 + 12 * a2;
  }

  else
  {
    v13 = *(a1 + 8);
    v14 = v13 + 12 * (a2 - v10);
    v15 = 12 * a2 - 12 * v10;
    do
    {
      v16 = *a3;
      *(v13 + 8) = *(a3 + 2);
      *v13 = v16;
      v13 += 12;
      v15 -= 12;
    }

    while (v15);
    *(a1 + 8) = v14;
  }

  return result;
}

void *std::vector<std::array<float,6ul>>::assign(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v5 = *(a1 + 16);
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 3) < a2)
  {
    if (result)
    {
      *(a1 + 8) = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - result) >> 3);
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - result) >> 3);
  }

  for (; v11; --v11)
  {
    v12 = *a3;
    result[2] = *(a3 + 2);
    *result = v12;
    result += 3;
  }

  if (a2 <= v10)
  {
    *(a1 + 8) = *a1 + 24 * a2;
  }

  else
  {
    v13 = *(a1 + 8);
    v14 = v13 + 24 * (a2 - v10);
    v15 = 24 * a2 - 24 * v10;
    do
    {
      v16 = *a3;
      *(v13 + 16) = *(a3 + 2);
      *v13 = v16;
      v13 += 24;
      v15 -= 24;
    }

    while (v15);
    *(a1 + 8) = v14;
  }

  return result;
}

void std::vector<unsigned int>::assign(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n, std::vector<unsigned int>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  v7 = begin;
  if (__n > (value - begin) >> 2)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (!(__n >> 62))
    {
      v8 = value >> 1;
      if (value >> 1 <= __n)
      {
        v8 = __n;
      }

      v9 = value >= 0x7FFFFFFFFFFFFFFCLL;
      v10 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v9)
      {
        v10 = v8;
      }

      if (!(v10 >> 62))
      {
        operator new();
      }
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v12 = end - begin;
  v13 = end - begin;
  if (v13 >= __n)
  {
    v14 = __n;
  }

  else
  {
    v14 = end - begin;
  }

  if (v14)
  {
    v15 = *__u;
    v16 = v14;
    if (v14 < 8)
    {
      goto LABEL_31;
    }

    v7 = &begin[v14 & 0xFFFFFFFFFFFFFFF8];
    v16 = v14 & 7;
    v17 = vdupq_n_s32(v15);
    v18 = (begin + 4);
    v19 = v14 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v18[-1] = v17;
      *v18 = v17;
      v18 += 2;
      v19 -= 8;
    }

    while (v19);
    if (v14 != (v14 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_31:
      do
      {
        *v7++ = v15;
        --v16;
      }

      while (v16);
    }
  }

  v9 = __n >= v13;
  v20 = __n - v13;
  if (v20 != 0 && v9)
  {
    v21 = &end[v20];
    v22 = *__u;
    v23 = 4 * __n - v12 - 4;
    v24 = end;
    if (v23 < 0x1C)
    {
      goto LABEL_32;
    }

    v25 = (v23 >> 2) + 1;
    v24 = &end[v25 & 0x7FFFFFFFFFFFFFF8];
    v26 = vdupq_n_s32(v22);
    v27 = (end + 4);
    v28 = v25 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v27[-1] = v26;
      *v27 = v26;
      v27 += 2;
      v28 -= 8;
    }

    while (v28);
    if (v25 != (v25 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_32:
      do
      {
        *v24++ = v22;
      }

      while (v24 != v21);
    }

    this->__end_ = v21;
  }

  else
  {
    this->__end_ = &begin[__n];
  }
}

void apple3dgs::MeasureTime::P(uint64_t a1, uint64_t *a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = (std::chrono::steady_clock::now().__d_.__rep_ - *a1) / 1000;
  if (*(a2 + 23) < 0)
  {
    if (a2[1])
    {
LABEL_3:
      v7 = _gs_log();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_13;
      }

      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
          goto LABEL_6;
        }
      }

      else if ((*(a2 + 23) & 0x80000000) == 0)
      {
LABEL_6:
        v14 = 136315650;
        v15 = v8;
        v16 = 2080;
        v17 = *&a2;
        v18 = 2048;
        v19 = (v6 / 1000.0);
        v9 = "[A3DGSR] [Measure] %s (%s) time elapsed: %.3f ms";
        v10 = v7;
        v11 = 32;
        goto LABEL_12;
      }

      a2 = *a2;
      goto LABEL_6;
    }
  }

  else if (*(a2 + 23))
  {
    goto LABEL_3;
  }

  v7 = _gs_log();
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_13;
  }

  v12 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v12 = *v12;
  }

  v14 = 136315394;
  v15 = v12;
  v16 = 2048;
  v17 = (v6 / 1000.0);
  v9 = "[A3DGSR] [Measure] %s time elapsed: %.3f ms";
  v10 = v7;
  v11 = 22;
LABEL_12:
  _os_log_impl(&dword_2473FC000, v10, OS_LOG_TYPE_DEBUG, v9, &v14, v11);
LABEL_13:

  if (a3)
  {
    *a1 = std::chrono::steady_clock::now();
  }

  v13 = *MEMORY[0x277D85DE8];
}

void apple3dgs::MeasureTime::~MeasureTime(void **this)
{
  if (*(this + 32) != 1 || (v3 = 0, LOBYTE(__p) = 0, apple3dgs::MeasureTime::P(this, &__p, 1), (v3 & 0x80000000) == 0))
  {
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_6:
    operator delete(this[1]);
    return;
  }

  operator delete(__p);
  if (*(this + 31) < 0)
  {
    goto LABEL_6;
  }
}

void apple3dgs::PrecomputeDistanceAndColor(uint64_t a1, void *a2, float32x2_t *a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  a2;
  v11 = a6;
  v12 = a7;
  v28 = *(a4 + 160);
  v29 = *(a4 + 144);
  v26 = *(a4 + 192);
  v27 = *(a4 + 176);
  v13 = *(a4 + 16);
  v14 = *(a4 + 32);
  v15 = *(a4 + 48);
  v16 = *(a4 + 64);
  v33.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*a3[50].f32)), v14, a3[50], 1), v15, *a3[50].f32, 2), v16, *a3[50].f32, 3);
  v33.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*a3[52].f32)), v14, a3[52], 1), v15, *a3[52].f32, 2), v16, *a3[52].f32, 3);
  v33.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*a3[54].f32)), v14, a3[54], 1), v15, *a3[54].f32, 2), v16, *a3[54].f32, 3);
  v33.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*a3[56].f32)), v14, a3[56], 1), v15, *a3[56].f32, 2), v16, *a3[56].f32, 3);
  v24 = v33.columns[1];
  v25 = v33.columns[0];
  v22 = v33.columns[3];
  v23 = v33.columns[2];
  v34 = __invert_f4(v33);
  v17 = (sqrtf(a3[70].u32[0]) + -1.0);
  if (*(a4 + 448) < v17)
  {
    v17 = *(a4 + 448);
  }

  v32[0] = v17;
  [objc_alloc_init(MEMORY[0x277CD6D70]) setConstantValue:v32 type:33 atIndex:{5, *&v34.columns[3], *&v22, *&v23, *&v24, *&v25, v26, v27, v28, v29}];
  v31 = objc_opt_new();
  v18 = [v31 attributes];
  v19 = [v18 objectAtIndexedSubscript:0];

  [v19 setFormat:*&a3[28]];
  [v19 setOffset:*&a3[30]];
  [v19 setBufferIndex:0];
  v20 = [v31 layouts];
  v21 = [v20 objectAtIndexedSubscript:0];

  [v21 setStepFunction:5];
  [v21 setStride:*&a3[29]];

  v30[0] = &v31;
  v30[1] = a3;
  apple3dgs::PrecomputeDistanceAndColor(MetalContext &,objc_object  {objcproto16MTLCommandBuffer}*,apple3dgs::Asset const&,apple3dgs::RenderDescriptor const&,apple3dgs::SorterDescriptor const&,objc_object  {objcproto9MTLBuffer}*,objc_object  {objcproto10MTLTexture}*)::$_0::operator()(v30, 0, 1u);
  if (v32[0])
  {
    apple3dgs::PrecomputeDistanceAndColor(MetalContext &,objc_object  {objcproto16MTLCommandBuffer}*,apple3dgs::Asset const&,apple3dgs::RenderDescriptor const&,apple3dgs::SorterDescriptor const&,objc_object  {objcproto9MTLBuffer}*,objc_object  {objcproto10MTLTexture}*)::$_0::operator()(v30, 1u, 4u);
    if (v32[0] >= 2)
    {
      apple3dgs::PrecomputeDistanceAndColor(MetalContext &,objc_object  {objcproto16MTLCommandBuffer}*,apple3dgs::Asset const&,apple3dgs::RenderDescriptor const&,apple3dgs::SorterDescriptor const&,objc_object  {objcproto9MTLBuffer}*,objc_object  {objcproto10MTLTexture}*)::$_0::operator()(v30, 4u, 9u);
      if (v32[0] >= 3)
      {
        apple3dgs::PrecomputeDistanceAndColor(MetalContext &,objc_object  {objcproto16MTLCommandBuffer}*,apple3dgs::Asset const&,apple3dgs::RenderDescriptor const&,apple3dgs::SorterDescriptor const&,objc_object  {objcproto9MTLBuffer}*,objc_object  {objcproto10MTLTexture}*)::$_0::operator()(v30, 9u, 0x10u);
      }
    }
  }

  operator new();
}

void apple3dgs::PrecomputeDistanceAndColor(MetalContext &,objc_object  {objcproto16MTLCommandBuffer}*,apple3dgs::Asset const&,apple3dgs::RenderDescriptor const&,apple3dgs::SorterDescriptor const&,objc_object  {objcproto9MTLBuffer}*,objc_object  {objcproto10MTLTexture}*)::$_0::operator()(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 < a3)
  {
    v4 = a2;
    v5 = a3;
    do
    {
      v6 = [**a1 attributes];
      v7 = v4 + 1;
      v8 = [v6 objectAtIndexedSubscript:v4 + 1];

      [v8 setFormat:*(*(a1 + 8) + 184)];
      [v8 setOffset:*(*(a1 + 8) + 192) * v4 / *(*(a1 + 8) + 560) + *(*(a1 + 8) + 200)];
      [v8 setBufferIndex:1];
      v9 = [**a1 layouts];
      v10 = [v9 objectAtIndexedSubscript:1];

      [v10 setStepFunction:5];
      [v10 setStride:*(*(a1 + 8) + 192)];

      v4 = v7;
    }

    while (v5 != v7);
  }
}

void apple3dgs::ComputePrimitiveIndices(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  operator new();
}

void sub_247459144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, char a13, void *a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a13 == 1)
  {

    if (a15 != 1)
    {
LABEL_3:
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (a15 != 1)
  {
    goto LABEL_3;
  }

  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);

  _Unwind_Resume(a1);
}

void apple3dgs::UpdateIndirectBuffer(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  LODWORD(v9) = *(a4 + 12);
  HIDWORD(v9) = v9 + *(a4 + 4) - 1;
  v19 = v9;
  __p[23] = 20;
  strcpy(__p, "UpdateIndirectBuffer");
  LOBYTE(v16) = 0;
  v17 = 0;
  LOBYTE(v14) = 0;
  v15 = 0;
  v10 = MetalContext::computePipelineState(a1, __p, &v16, &v14);
  if (v15 != 1)
  {
    if (v17 != 1)
    {
      goto LABEL_3;
    }

LABEL_6:

    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    operator delete(*__p);
    goto LABEL_4;
  }

  if (v17 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((__p[23] & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = [v7 computeCommandEncoder];
  [v11 setComputePipelineState:v10];
  [v11 setBytes:&v19 length:8 atIndex:0];
  [v11 setBytes:a4 length:4 atIndex:1];
  [v11 setBytes:a4 + 8 length:4 atIndex:2];
  [v11 setBuffer:v8 offset:0 atIndex:3];
  *__p = vdupq_n_s64(1uLL);
  *&__p[16] = 1;
  v12 = *__p;
  v13 = 1;
  [v11 dispatchThreads:__p threadsPerThreadgroup:&v12];
  [v11 endEncoding];
}

void sub_2474593C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, char a14, void *a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 == 1)
  {

    if (a16 != 1)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (a16 != 1)
  {
    goto LABEL_3;
  }

  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);

  _Unwind_Resume(a1);
}

void apple3dgs::UpdateIndirectBuffer(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v19 = -1;
  v20 = 0;
  __p[23] = 20;
  strcpy(__p, "UpdateIndirectBuffer");
  LOBYTE(v16) = 0;
  v17 = 0;
  LOBYTE(v14) = 0;
  v15 = 0;
  v10 = MetalContext::computePipelineState(a1, __p, &v16, &v14);
  if (v15 != 1)
  {
    if (v17 != 1)
    {
      goto LABEL_3;
    }

LABEL_6:

    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    operator delete(*__p);
    goto LABEL_4;
  }

  if (v17 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((__p[23] & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = [v7 computeCommandEncoder];
  [v11 setComputePipelineState:v10];
  [v11 setBuffer:v9 offset:0 atIndex:0];
  [v11 setBytes:&v19 length:4 atIndex:1];
  [v11 setBytes:&v20 length:4 atIndex:2];
  [v11 setBuffer:v8 offset:0 atIndex:3];
  *__p = vdupq_n_s64(1uLL);
  *&__p[16] = 1;
  v12 = *__p;
  v13 = 1;
  [v11 dispatchThreads:__p threadsPerThreadgroup:&v12];
  [v11 endEncoding];
}

void sub_24745961C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, char a14, void *a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 == 1)
  {

    if (a16 != 1)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (a16 != 1)
  {
    goto LABEL_3;
  }

  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);

  _Unwind_Resume(a1);
}

void apple3dgs::SortWorker::CommitGPU(void **a1, void *a2, float32x2_t **a3)
{
  v5 = a2;
  v6 = (*a3)[54].i32[0] - 1;
  if (v6 >= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = 2 * v6 + 4;
  }

  v8 = a3[4][68].i32[0];
  v9[0] = v7;
  v9[1] = v8;
  v10 = 0;
  apple3dgs::UpdateIndirectBuffer((a1 + 1), v5, a1[81], v9);
  apple3dgs::PrecomputeDistanceAndColor((a1 + 1), v5, a3[4], *a3, a3[2], a1[119], a1[121]);
}

id apple3dgs::CreateMemoryLessTexture(void *a1, uint64_t a2, unsigned int a3, __n128 a4)
{
  v6 = a1;
  v7 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:a2 width:a4.n128_u32[0] height:a4.n128_u32[1] mipmapped:0];
  v8 = v7;
  if (a3 == 1)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  [v7 setTextureType:{v9, *&a4}];
  [v8 setStorageMode:3];
  [v8 setArrayLength:a3];
  [v8 setUsage:5];
  v10 = [v6 newTextureWithDescriptor:v8];

  return v10;
}

apple3dgs::SortWorker::RenderingBuffers *apple3dgs::SortWorker::GetRenderingBuffers@<X0>(apple3dgs::SortWorker::RenderingBuffers *this@<X0>, apple3dgs::SortWorker::RenderingBuffers *a2@<X8>)
{
  if (*(this + 54))
  {
    this = apple3dgs::SortWorker::RenderingBuffers::RenderingBuffers(a2, (this + 312));
    *(a2 + 128) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 128) = 0;
  }

  return this;
}

uint64_t apple3dgs::SortWorker::Sort(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  apple3dgs::SortWorker::Allocate(a1, *(*(a3 + 32) + 544));
  v6 = *(*(a3 + 16) + 4);
  if (v6 == 1)
  {
    apple3dgs::SortWorker::StopCPUSort(a1);
    apple3dgs::SortWorker::CommitGPU(a1, v5, a3);
  }

  if (v6 || (apple3dgs::SortWorker::StartCPUSort(a1), apple3dgs::SortWorker::AddJobCPU(a1, a3), std::mutex::lock((a1 + 584)), v7 = *([*(a1 + 648) contents] + 4), std::mutex::unlock((a1 + 584)), v7))
  {

    return 1;
  }

  else
  {

    return 0;
  }
}

void sub_247459BEC(_Unwind_Exception *a1)
{
  std::mutex::unlock((v2 + 584));

  _Unwind_Resume(a1);
}

void apple3dgs::SortWorker::UpdateIndirectBuffer(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 432))
  {
    v4 = *(*(a1 + 344) + 544);
    operator new();
  }
}

void sub_247459E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  operator delete(v23);

  _Unwind_Resume(a1);
}

uint64_t apple3dgs::EstimateBoundingBox(void *a1, unsigned int a2, float32x4_t *a3, float32x4_t *a4)
{
  result = [a1 contents];
  v8.i64[0] = 0x80000000800000;
  v8.i64[1] = 0x80000000800000;
  *a3 = vnegq_f32(v8);
  *a4 = v8;
  if (a2)
  {
    v9 = 0;
    do
    {
      v10 = a3->i32[0];
      if (*(result + 4 * v9) < a3->f32[0])
      {
        v10 = *(result + 4 * v9);
      }

      a3->i32[0] = v10;
      v11 = a4->i32[0];
      if (a4->f32[0] < *(result + 4 * v9))
      {
        v11 = *(result + 4 * v9);
      }

      a4->i32[0] = v11;
      v12 = *(result + 4 * (v9 + 1));
      if (v12 >= a3->f32[1])
      {
        v12 = a3->f32[1];
      }

      a3->f32[1] = v12;
      v13 = *(result + 4 * (v9 + 1));
      if (a4->f32[1] >= v13)
      {
        v13 = a4->f32[1];
      }

      a4->f32[1] = v13;
      v14 = *(result + 4 * (v9 + 2));
      if (v14 >= a3->f32[2])
      {
        v14 = a3->f32[2];
      }

      a3->f32[2] = v14;
      v15 = *(result + 4 * (v9 + 2));
      if (a4->f32[2] >= v15)
      {
        v15 = a4->f32[2];
      }

      a4->f32[2] = v15;
      v9 += 3;
    }

    while (3 * a2 != v9);
  }

  return result;
}

double apple3dgs::EstimateCamera(void *a1, int a2)
{
  [a1 contents];
  if (a2)
  {
    operator new();
  }

  std::__sort<std::__less<float,float> &,float *>();
  std::__sort<std::__less<float,float> &,float *>();
  std::__sort<std::__less<float,float> &,float *>();
  v3.i32[1] = 0;
  v3.f32[0] = 0.0 / 0;
  v4 = v3;
  v5.i32[1] = 0;
  v5.f32[0] = v3.f32[0];
  v4.f32[2] = v3.f32[0];
  v4.f32[1] = v3.f32[0];
  v49 = v4;
  v4.i32[0] = MEMORY[0];
  v4.i32[1] = MEMORY[0];
  v4.i32[2] = MEMORY[0];
  v48 = v4;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  v6 = vmulq_n_f32(0, 1.0 / 0);
  v45.i32[2] = v6.i32[2];
  DWORD2(v46) = v6.i32[2];
  v45.i64[0] = v6.i64[0];
  *&v46 = v6.i64[0];
  DWORD2(v47) = v6.i32[2];
  *&v47 = v6.i64[0];
  v8 = apple3dgs::ComputeEigen(&v45, v7, *v6.i64, *v6.i64, *v6.i64, v5, 0.0);
  v40 = v9;
  v41.i32[2] = v10;
  v42.i32[2] = v11;
  v39 = v8;
  v41.i64[0] = v12;
  v44 = v13;
  v42.i64[0] = v14;
  v43 = v15;
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "centroid: ", 10);
  v17 = apple3dgs::operator<<(v16, &v49);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "median: ", 8);
  v20 = apple3dgs::operator<<(v19, &v48);
  std::ios_base::getloc((v20 + *(*v20 - 24)));
  v21 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v21->__vftable[2].~facet_0)(v21, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "cov: ", 5);
  v23 = apple3dgs::operator<<(v22, &v45);
  std::ios_base::getloc((v23 + *(*v23 - 24)));
  v24 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v24->__vftable[2].~facet_0)(v24, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "eigen values: ", 14);
  v26 = apple3dgs::operator<<(v25, &v39);
  std::ios_base::getloc((v26 + *(*v26 - 24)));
  v27 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v27->__vftable[2].~facet_0)(v27, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "eigen vectors: ", 15);
  v29 = apple3dgs::operator<<(v28, &v41);
  std::ios_base::getloc((v29 + *(*v29 - 24)));
  v30 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v30->__vftable[2].~facet_0)(v30, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  v31 = vzip2q_s32(v41, v42);
  v31.i32[2] = v44;
  v52.columns[2] = vtrn2q_s32(v41, v42);
  v52.columns[2].i32[2] = HIDWORD(v43);
  v52.columns[0] = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v52.columns[2], v52.columns[2]), v52.columns[2], 0xCuLL), vnegq_f32(v31)), v52.columns[2], vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL));
  v32 = vdupq_lane_s32(*v52.columns[0].f32, 1);
  v33 = vdupq_lane_s32(*v52.columns[0].f32, 0);
  v52.columns[0].i64[0] = __PAIR64__(vdupq_laneq_s32(v52.columns[0], 2).u32[0], v41.u32[2]);
  v52.columns[0].i64[1] = v41.u32[1];
  v52.columns[1].i64[0] = __PAIR64__(v33.u32[1], v42.u32[2]);
  v52.columns[1].i64[1] = v42.u32[1];
  v52.columns[2].i64[0] = __PAIR64__(v32.u32[2], v44);
  v52.columns[2].i64[1] = HIDWORD(v43);
  v52.columns[3] = v48;
  v52.columns[3].i32[3] = 1.0;
  v50 = __invert_f4(v52);
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "estimated camera extrinsic: ", 28);
  std::ios_base::getloc((v34 + *(*v34 - 24)));
  v35 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v35->__vftable[2].~facet_0)(v35, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  v36 = apple3dgs::operator<<(MEMORY[0x277D82678], &v50);
  std::ios_base::getloc((v36 + *(*v36 - 24)));
  v37 = std::locale::use_facet(&v51, MEMORY[0x277D82680]);
  (v37->__vftable[2].~facet_0)(v37, 10);
  std::locale::~locale(&v51);
  std::ostream::put();
  std::ostream::flush();
  return *v50.columns[0].i64;
}

void sub_24745AA38(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void apple3dgs::ComputeColorFromSH(uint64_t a1, unsigned int a2, void *a3, void *a4, void *a5, __n128 a6, uint64_t a7, int a8, void *a9)
{
  v30 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v29 = a6;
  v28 = a8;
  v17 = a9;
  HIBYTE(__p[2]) = 18;
  strcpy(__p, "ComputeColorFromSH");
  LOBYTE(v25) = 0;
  v26 = 0;
  LOBYTE(v23) = 0;
  v24 = 0;
  v18 = MetalContext::computePipelineState(a1, __p, &v25, &v23);
  if (v24 != 1)
  {
    if (v26 != 1)
    {
      goto LABEL_3;
    }

LABEL_6:

    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    operator delete(__p[0]);
    goto LABEL_4;
  }

  if (v26 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v19 = [v14 computeCommandEncoder];
  [v19 setComputePipelineState:v18];
  [v19 setBuffer:v15 offset:0 atIndex:0];
  [v19 setBuffer:v16 offset:0 atIndex:1];
  [v19 setBytes:&v29 length:16 atIndex:2];
  [v19 setBytes:&v28 length:4 atIndex:3];
  [v19 setBytes:&v30 length:4 atIndex:4];
  [v19 setBuffer:v17 offset:0 atIndex:5];
  __p[0] = v30;
  *&__p[1] = vdupq_n_s64(1uLL);
  v21 = [v18 threadExecutionWidth];
  v22 = vdupq_n_s64(1uLL);
  [v19 dispatchThreads:__p threadsPerThreadgroup:&v21];
  [v19 endEncoding];
}

void apple3dgs::RGBDPanoToMPI(uint64_t a1, void *a2, id *a3, float32x2_t *a4, uint64_t a5, float a6)
{
  v10 = a2;
  v11 = *(a3 + 6);
  *(a5 + 24) = fmaxf(*(a3 + 5) / 1.7321, 0.15);
  *(a5 + 28) = v11 * 1.7321;
  *(a5 + 32) = 1;
  v49 = a5;
  v13 = [*a5 arrayLength];
  if (v13 != -1)
  {
    operator new();
  }

  v14 = *(a5 + 24);
  v15 = *(a5 + 28);
  *&v16 = v14 / (v14 - v15);
  *&v17 = -(v15 * v14) / (v14 - v15);
  LODWORD(v18) = -1.0;
  *&v19 = __PAIR64__(1.0, -1.0);
  *(&v19 + 1) = __PAIR64__(1.0, v16);
  *&v20 = 0;
  *(&v20 + 1) = v17;
  v56[0] = xmmword_247478B30;
  v56[1] = xmmword_247478B50;
  v56[2] = v19;
  v56[3] = v20;
  v21 = v13;
  v22 = 0;
  v23 = a6 / v21;
  v24 = v21;
  HIDWORD(v18) = 1.0;
  v47 = v18;
  v46 = xmmword_24747A560;
  do
  {
    v25 = *(4 * v22 + 4);
    v27 = apple3dgs::RealDepthToNDCDepth(v56, *(4 * v22), v12) - v23;
    if (v27 < 0.0)
    {
      v27 = 0.0;
    }

    v28 = apple3dgs::NDCDepthToRealDepth(v56, v27, v26);
    v29.i64[0] = v47;
    v29.f32[2] = v25 / (v25 - v28);
    v29.i32[3] = 1.0;
    v30.i64[0] = 0;
    v30.i32[3] = 0;
    v30.f32[2] = -(v28 * v25) / (v25 - v28);
    v31 = vmlaq_f32(vmlaq_f32(xmmword_247477B90, 0, v29), 0, v30);
    v32 = vmlaq_f32(vmlaq_f32(xmmword_24747A550, 0, v29), 0, v30);
    v33 = vmlaq_f32(vaddq_f32(v29, v46), 0, v30);
    v34 = vaddq_f32(v30, vmlaq_f32(0, 0, v29));
    v35 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, COERCE_FLOAT(*a4->f32)), v32, *a4, 1), v33, *a4->f32, 2), v34, *a4->f32, 3);
    v36 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, COERCE_FLOAT(*a4[2].f32)), v32, a4[2], 1), v33, *a4[2].f32, 2), v34, *a4[2].f32, 3);
    v37 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, COERCE_FLOAT(*a4[4].f32)), v32, a4[4], 1), v33, *a4[4].f32, 2), v34, *a4[4].f32, 3);
    v38 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, COERCE_FLOAT(*a4[6].f32)), v32, a4[6], 1), v33, *a4[6].f32, 2), v34, *a4[6].f32, 3);
    v55[0] = v35;
    v55[1] = v36;
    v55[2] = v37;
    v55[3] = v38;
    v39 = objc_opt_new();
    v40 = [v39 colorAttachments];
    v41 = [v40 objectAtIndexedSubscript:0];

    [v41 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    [v41 setLoadAction:2];
    [v41 setStoreAction:1];
    v42 = [*v49 newTextureViewWithPixelFormat:objc_msgSend(*v49 textureType:"pixelFormat") levels:2 slices:0, 1, v22, 1];
    [v41 setTexture:v42];

    v43 = [v39 depthAttachment];
    [v43 setClearDepth:0.0];
    [v43 setLoadAction:2];
    [v43 setStoreAction:1];
    v44 = [v49[1] newTextureViewWithPixelFormat:objc_msgSend(v49[1] textureType:"pixelFormat") levels:2 slices:0, 1, v22, 1];
    [v43 setTexture:v44];

    v45 = [v10 renderCommandEncoderWithDescriptor:v39];
    v53 = 12;
    strcpy(v52, "RasterPanoVS");
    v51 = 12;
    strcpy(__p, "RasterPanoFS");
    MetalContext::renderPipelineState(a1, v52, __p, v54);
    if (v51 < 0)
    {
      operator delete(__p[0]);
      if ((v53 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else if ((v53 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    operator delete(v52[0]);
LABEL_9:
    [v45 setRenderPipelineState:{v54[0], v46.i64[0]}];
    [v45 setCullMode:0];
    [v45 setVertexTexture:a3[1] atIndex:0];
    [v45 setVertexBytes:v55 length:64 atIndex:0];
    [v45 setVertexBytes:a3 + 2 length:4 atIndex:1];
    [v45 setFragmentTexture:*a3 atIndex:0];
    [v45 setCullMode:0];
    [v45 drawPrimitives:4 vertexStart:0 vertexCount:2 * objc_msgSend(*a3 instanceCount:"width") + 2 baseInstance:{objc_msgSend(*a3, "height") - 1, 0}];

    [v45 endEncoding];
    ++v22;
  }

  while (v24 != v22);
  operator delete(0);
}

void sub_24745B3A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32)
{
  if (v32)
  {
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

void apple3dgs::MinAreaFilter(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v24 = a5;
  HIBYTE(__p[2]) = 18;
  strcpy(__p, "SeparableMinFilter");
  LOBYTE(v21) = 0;
  v22 = 0;
  LOBYTE(v19) = 0;
  v20 = 0;
  v12 = MetalContext::computePipelineState(a1, __p, &v21, &v19);
  if (v20 == 1)
  {

    if (v22 != 1)
    {
      goto LABEL_3;
    }

LABEL_8:

    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    operator delete(__p[0]);
    goto LABEL_4;
  }

  if (v22 == 1)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  [v9 setComputePipelineState:v12];
  [v9 setBytes:&v24 length:4 atIndex:0];
  v18 = 1065353216;
  [v9 setBytes:&v18 length:4 atIndex:2];
  v17 = 0;
  v14 = vdupq_n_s64(0x20uLL);
  do
  {
    v13 = v10;
    v10 = v11;
    [v9 setTexture:v13 atIndex:{0, *&v14}];
    [v9 setTexture:v11 atIndex:1];
    [v9 setBytes:&v17 length:4 atIndex:1];
    __p[0] = [v11 width];
    __p[1] = [v11 height];
    __p[2] = 1;
    v15 = v14;
    v16 = 1;
    [v9 dispatchThreads:__p threadsPerThreadgroup:&v15];
    ++v17;
    v11 = v13;
  }

  while (v17 < 2);
}

void apple3dgs::BoxFilter(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v24 = a5;
  HIBYTE(__p[2]) = 18;
  strcpy(__p, "SeparableBoxFilter");
  LOBYTE(v21) = 0;
  v22 = 0;
  LOBYTE(v19) = 0;
  v20 = 0;
  v12 = MetalContext::computePipelineState(a1, __p, &v21, &v19);
  if (v20 == 1)
  {

    if (v22 != 1)
    {
      goto LABEL_3;
    }

LABEL_8:

    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    operator delete(__p[0]);
    goto LABEL_4;
  }

  if (v22 == 1)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  [v9 setComputePipelineState:v12];
  [v9 setBytes:&v24 length:4 atIndex:0];
  v18 = 0;
  [v9 setBytes:&v18 length:4 atIndex:2];
  v17 = 0;
  v14 = vdupq_n_s64(0x20uLL);
  do
  {
    v13 = v10;
    v10 = v11;
    [v9 setTexture:v13 atIndex:{0, *&v14}];
    [v9 setTexture:v11 atIndex:1];
    [v9 setBytes:&v17 length:4 atIndex:1];
    __p[0] = [v11 width];
    __p[1] = [v11 height];
    __p[2] = 1;
    v15 = v14;
    v16 = 1;
    [v9 dispatchThreads:__p threadsPerThreadgroup:&v15];
    ++v17;
    v11 = v13;
  }

  while (v17 < 2);
}

void apple3dgs::ComputeRefinementWeight(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [a2 computeCommandEncoder];
  objc_claimAutoreleasedReturnValue();
  operator new();
}

void sub_24745BBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, char a13, void *a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a13 == 1)
  {

    if (a15 != 1)
    {
LABEL_3:
      if ((a21 & 0x80000000) == 0)
      {
LABEL_8:

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(__p);

      _Unwind_Resume(a1);
    }
  }

  else if (a15 != 1)
  {
    goto LABEL_3;
  }

  if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void apple3dgs::RefineMPI(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, unsigned int a13, uint64_t a14)
{
  v49 = *MEMORY[0x277D85DE8];
  v41[0] = a9;
  v41[1] = a10;
  v41[2] = a11;
  v41[3] = a12;
  v37 = a2;
  v36 = a3;
  v21 = a4;
  v34 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = objc_opt_new();
  v26 = [v21 width];
  v27 = [v21 height];
  v28 = [v23 width];
  v29 = [v23 height];
  v30 = ((v28 / v29) * v27) - v26;
  if (v30 < 0)
  {
    v30 = v26 - ((v28 / v29) * v27);
  }

  if (v30 >= 3)
  {
    v31 = _gs_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218752;
      *&buf[4] = v26;
      v43 = 2048;
      v44 = v27;
      v45 = 2048;
      v46 = [v23 width];
      v47 = 2048;
      v48 = [v23 height];
      _os_log_impl(&dword_2473FC000, v31, OS_LOG_TYPE_ERROR, "[A3DGSR /SortWorker.mm:1002] MPI (%lux%lu) should have the same aspect ratio as GT image (%lux%lu).", buf, 0x2Au);
    }
  }

  [v25 setRenderTargetWidth:{v26, v34}];
  [v25 setRenderTargetHeight:v27];
  [v25 setDefaultRasterSampleCount:1];
  v32 = [v37 renderCommandEncoderWithDescriptor:v25];
  HIBYTE(v45) = 5;
  strcpy(buf, "MPIVS");
  v39 = 11;
  strcpy(__p, "MPIRefineFS");
  MetalContext::renderPipelineState(a1, buf, __p, v40);
  if (v39 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    operator delete(*buf);
    goto LABEL_9;
  }

  if (SHIBYTE(v45) < 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  [v32 setRenderPipelineState:v40[0]];
  [v32 setCullMode:0];
  [v32 setVertexBuffer:v36 offset:0 atIndex:0];
  [v32 setVertexBytes:v41 length:64 atIndex:1];
  [v32 setVertexBytes:&a13 length:4 atIndex:2];
  [v32 setFragmentTexture:v21 atIndex:0];
  [v32 setFragmentTexture:v35 atIndex:1];
  [v32 setFragmentTexture:v22 atIndex:2];
  [v32 setFragmentTexture:v23 atIndex:3];
  [v32 setFragmentTexture:v24 atIndex:4];
  [v32 setFragmentBytes:&a13 length:4 atIndex:0];
  [v32 setFragmentBytes:a14 length:48 atIndex:1];
  [v32 drawPrimitives:4 vertexStart:0 vertexCount:4 instanceCount:a13 baseInstance:0];

  [v32 endEncoding];
  v33 = *MEMORY[0x277D85DE8];
}

void apple3dgs::SortWorker::RenderingBuffers::~RenderingBuffers(id *this)
{
  v2 = this[5];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = this[3];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = this[1];
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,apple3dgs::SortWorker::Process(apple3dgs::SortWorker::Job const&)::$_0 &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v147 = *v10;
        v148 = *(**a3 + 420);
        v149 = v148 == 1;
        if (v148 == 1)
        {
          v150 = *v10;
        }

        else
        {
          v150 = *(a2 - 1);
        }

        if (v149)
        {
          v151 = *(a2 - 1);
        }

        else
        {
          v151 = *v10;
        }

        if (*(*(a3[1] + 440) + 4 * v150) < *(*(a3[1] + 440) + 4 * v151))
        {
          *v10 = *(a2 - 1);
          *(a2 - 1) = v147;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v165 = v10 + 1;
      v166 = v10[1];
      v167 = v10 + 2;
      v168 = v10[2];
      v169 = *(a3[1] + 440);
      v170 = *(**a3 + 420);
      v171 = v10[1];
      v172 = *v10;
      if (v170 == 1)
      {
        v173 = *v10;
      }

      else
      {
        v173 = v10[1];
      }

      if (v170 == 1)
      {
        v174 = v10[1];
      }

      else
      {
        v174 = *v10;
      }

      v175 = *(v169 + 4 * v173);
      v176 = *(v169 + 4 * v174);
      if (v170 == 1)
      {
        v177 = v10[1];
      }

      else
      {
        v177 = v10[2];
      }

      if (v170 == 1)
      {
        v178 = v10[2];
      }

      else
      {
        v178 = v10[1];
      }

      v179 = *(v169 + 4 * v177);
      v180 = *(v169 + 4 * v178);
      if (v175 >= v176)
      {
        if (v179 < v180)
        {
          *v165 = v168;
          *v167 = v171;
          if (v170 == 1)
          {
            v249 = v172;
          }

          else
          {
            v249 = v168;
          }

          v250 = *(v169 + 4 * v249);
          if (v170 == 1)
          {
            v251 = v168;
          }

          else
          {
            v251 = v172;
          }

          v252 = *(v169 + 4 * v251);
          v181 = v10;
          v182 = v10 + 1;
          if (v250 < v252)
          {
            goto LABEL_429;
          }

LABEL_431:
          if (v170 == 1)
          {
            v268 = v166;
          }

          else
          {
            v268 = *(a2 - 1);
          }

          if (v170 == 1)
          {
            v166 = *(a2 - 1);
          }

          if (*(v169 + 4 * v268) < *(v169 + 4 * v166))
          {
            *v167 = *(a2 - 1);
            *(a2 - 1) = v171;
            v269 = *v167;
            v270 = *v165;
            v271 = v170 == 1 ? v270 : v269;
            v272 = v170 == 1 ? v269 : v270;
            if (*(v169 + 4 * v271) < *(v169 + 4 * v272))
            {
              v10[1] = v269;
              v10[2] = v270;
              v273 = *v10;
              v274 = v170 == 1;
              v275 = v170 == 1 ? *v10 : v269;
              v276 = v274 ? v269 : *v10;
              if (*(v169 + 4 * v275) < *(v169 + 4 * v276))
              {
                *v10 = v269;
                v10[1] = v273;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v179 < v180)
        {
          v181 = v10;
          v182 = v10 + 2;
          v166 = *v10;
          v171 = *v10;
          goto LABEL_429;
        }

        if (v170 == 1)
        {
          v264 = *v10;
        }

        else
        {
          v264 = v10[2];
        }

        if (v170 == 1)
        {
          v265 = v10[2];
        }

        else
        {
          v265 = *v10;
        }

        v266 = *(v169 + 4 * v264);
        v267 = *(v169 + 4 * v265);
        *v10 = v171;
        v10[1] = v172;
        v181 = v10 + 1;
        v182 = v10 + 2;
        v166 = v172;
        v171 = v172;
        if (v266 < v267)
        {
LABEL_429:
          *v181 = v168;
          *v182 = v172;
          goto LABEL_431;
        }
      }

      v166 = v168;
      v171 = v168;
      goto LABEL_431;
    }

    if (v11 == 5)
    {
      v145 = *(a3[1] + 440);
      v146 = *(**a3 + 420);

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::SortWorker::Process(apple3dgs::SortWorker::Job const&)::$_0 &,unsigned int *,0>(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, v146, v145);
    }

LABEL_10:
    if (v11 <= 23)
    {
      v184 = *a3;
      v183 = a3[1];
      if (a5)
      {
        if (v10 != a2)
        {
          v185 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v186 = *(v183 + 440);
            if (*(*v184 + 420) == 1)
            {
              v187 = 0;
              v188 = v10;
              do
              {
                v242 = *v188;
                v241 = v188[1];
                v188 = v185;
                v243 = *(v186 + 4 * v241);
                if (*(v186 + 4 * v242) < v243)
                {
                  v244 = v187;
                  do
                  {
                    *(v10 + v244 + 4) = v242;
                    if (!v244)
                    {
                      v240 = v10;
                      goto LABEL_376;
                    }

                    v242 = *(v10 + v244 - 4);
                    v244 -= 4;
                  }

                  while (*(v186 + 4 * v242) < v243);
                  v240 = (v10 + v244 + 4);
LABEL_376:
                  *v240 = v241;
                }

                v185 = v188 + 1;
                v187 += 4;
              }

              while (v188 + 1 != a2);
            }

            else
            {
              v277 = 0;
              v278 = v10;
              do
              {
                v281 = *v278;
                v280 = v278[1];
                v278 = v185;
                v282 = *(v186 + 4 * v280);
                if (v282 < *(v186 + 4 * v281))
                {
                  v283 = v277;
                  do
                  {
                    *(v10 + v283 + 4) = v281;
                    if (!v283)
                    {
                      v279 = v10;
                      goto LABEL_454;
                    }

                    v281 = *(v10 + v283 - 4);
                    v283 -= 4;
                  }

                  while (v282 < *(v186 + 4 * v281));
                  v279 = (v10 + v283 + 4);
LABEL_454:
                  *v279 = v280;
                }

                v185 = v278 + 1;
                v277 += 4;
              }

              while (v278 + 1 != a2);
            }
          }
        }
      }

      else if (v10 != a2)
      {
        v253 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v254 = *(v183 + 440);
          if (*(*v184 + 420) == 1)
          {
            do
            {
              v256 = *v9;
              v255 = v9[1];
              v9 = v253;
              v257 = *(v254 + 4 * v255);
              if (*(v254 + 4 * v256) < v257)
              {
                do
                {
                  *v253 = v256;
                  v256 = *(v253 - 2);
                  --v253;
                }

                while (*(v254 + 4 * v256) < v257);
                *v253 = v255;
              }

              v253 = v9 + 1;
            }

            while (v9 + 1 != a2);
          }

          else
          {
            do
            {
              v259 = *v9;
              v258 = v9[1];
              v9 = v253;
              v260 = *(v254 + 4 * v258);
              if (v260 < *(v254 + 4 * v259))
              {
                do
                {
                  *v253 = v259;
                  v259 = *(v253 - 2);
                  --v253;
                }

                while (v260 < *(v254 + 4 * v259));
                *v253 = v258;
              }

              v253 = v9 + 1;
            }

            while (v9 + 1 != a2);
          }
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v189 = (v11 - 2) >> 1;
        v190 = v189;
        do
        {
          v191 = v190;
          if (v189 >= v190)
          {
            v192 = a3[1];
            v193 = (2 * v190) | 1;
            v194 = &v10[v193];
            v195 = **a3;
            if (2 * v191 + 2 >= v11)
            {
              v198 = *(v195 + 420);
              v199 = *(v192 + 440);
            }

            else
            {
              v196 = *v194;
              v197 = v194[1];
              v198 = *(v195 + 420);
              v199 = *(v192 + 440);
              if (v198 == 1)
              {
                v200 = v194[1];
              }

              else
              {
                v200 = *v194;
              }

              if (v198 != 1)
              {
                v196 = v194[1];
              }

              if (*(v199 + 4 * v200) < *(v199 + 4 * v196))
              {
                ++v194;
                v193 = 2 * v191 + 2;
              }
            }

            v201 = &v10[v191];
            LODWORD(v202) = *v194;
            v203 = *v201;
            if (v198 == 1)
            {
              v204 = *v201;
            }

            else
            {
              v204 = *v194;
            }

            if (v198 == 1)
            {
              v205 = *v194;
            }

            else
            {
              v205 = *v201;
            }

            if (*(v199 + 4 * v204) >= *(v199 + 4 * v205))
            {
              if (v198 == 1)
              {
                do
                {
                  v206 = v194;
                  *v201 = v202;
                  if (v189 < v193)
                  {
                    break;
                  }

                  v207 = 2 * v193;
                  v193 = (2 * v193) | 1;
                  v194 = &v10[v193];
                  v208 = v207 + 2;
                  if (v208 < v11 && *(v199 + 4 * v194[1]) < *(v199 + 4 * *v194))
                  {
                    ++v194;
                    v193 = v208;
                  }

                  v202 = *v194;
                  v201 = v206;
                }

                while (*(v199 + 4 * v203) >= *(v199 + 4 * v202));
              }

              else
              {
                do
                {
                  v206 = v194;
                  *v201 = v202;
                  if (v189 < v193)
                  {
                    break;
                  }

                  v209 = 2 * v193;
                  v193 = (2 * v193) | 1;
                  v194 = &v10[v193];
                  v210 = v209 + 2;
                  if (v210 < v11 && *(v199 + 4 * *v194) < *(v199 + 4 * v194[1]))
                  {
                    ++v194;
                    v193 = v210;
                  }

                  v202 = *v194;
                  v201 = v206;
                }

                while (*(v199 + 4 * v202) >= *(v199 + 4 * v203));
              }

              *v206 = v203;
            }
          }

          v190 = v191 - 1;
        }

        while (v191);
        do
        {
          v212 = 0;
          v213 = *v10;
          v214 = *a3;
          v215 = a3[1];
          v216 = v10;
          do
          {
            v217 = v216;
            v218 = &v216[v212];
            v216 = v218 + 1;
            v219 = 2 * v212;
            result = (2 * v212) | 1;
            v212 = result;
            v220 = v219 + 2;
            if (v220 < v11)
            {
              v222 = v218[2];
              v221 = v218 + 2;
              result = v222;
              v223 = *(v221 - 1);
              v224 = *(*v214 + 420);
              v225 = v224 == 1;
              if (v224 == 1)
              {
                v226 = result;
              }

              else
              {
                v226 = *(v221 - 1);
              }

              if (v225)
              {
                result = *(v221 - 1);
              }

              if (*(*(v215 + 440) + 4 * v226) < *(*(v215 + 440) + 4 * result))
              {
                v216 = v221;
                v212 = v220;
              }
            }

            *v217 = *v216;
          }

          while (v212 <= ((v11 - 2) >> 1));
          if (v216 == --a2)
          {
            *v216 = v213;
          }

          else
          {
            *v216 = *a2;
            *a2 = v213;
            v227 = (v216 - v10 + 4) >> 2;
            v211 = v227 < 2;
            v228 = v227 - 2;
            if (!v211)
            {
              v229 = v228 >> 1;
              v230 = &v10[v228 >> 1];
              v231 = *v230;
              v232 = *v216;
              v233 = *(**a3 + 420);
              v234 = *(a3[1] + 440);
              v235 = v233 == 1 ? *v216 : *v230;
              v236 = v233 == 1 ? *v230 : *v216;
              if (*(v234 + 4 * v235) < *(v234 + 4 * v236))
              {
                if (v233 == 1)
                {
                  LODWORD(v237) = *v230;
                  do
                  {
                    v238 = v230;
                    *v216 = v237;
                    if (!v229)
                    {
                      break;
                    }

                    v229 = (v229 - 1) >> 1;
                    v230 = &v10[v229];
                    v237 = *v230;
                    v216 = v238;
                  }

                  while (*(v234 + 4 * v232) < *(v234 + 4 * v237));
                }

                else
                {
                  LODWORD(v239) = *v230;
                  do
                  {
                    v238 = v230;
                    *v216 = v239;
                    if (!v229)
                    {
                      break;
                    }

                    v229 = (v229 - 1) >> 1;
                    v230 = &v10[v229];
                    v239 = *v230;
                    v216 = v238;
                  }

                  while (*(v234 + 4 * v239) < *(v234 + 4 * v232));
                }

                *v238 = v232;
              }
            }
          }

          v211 = v11-- <= 2;
        }

        while (!v211);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(a3[1] + 440);
    v15 = *(**a3 + 420);
    v16 = *(a2 - 1);
    if (v11 < 0x81)
    {
      v27 = *v10;
      v28 = *v13;
      if (v15 == 1)
      {
        v29 = *v13;
      }

      else
      {
        v29 = *v10;
      }

      if (v15 == 1)
      {
        v30 = *v10;
      }

      else
      {
        v30 = *v13;
      }

      v31 = *(v14 + 4 * v29);
      v32 = *(v14 + 4 * v30);
      if (v15 == 1)
      {
        v33 = *v10;
      }

      else
      {
        v33 = *(a2 - 1);
      }

      if (v15 == 1)
      {
        v34 = *(a2 - 1);
      }

      else
      {
        v34 = *v10;
      }

      v35 = *(v14 + 4 * v33);
      v36 = *(v14 + 4 * v34);
      if (v31 < v32)
      {
        if (v35 < v36)
        {
          *v13 = v16;
          goto LABEL_103;
        }

        *v13 = v27;
        *v10 = v28;
        if (v15 == 1)
        {
          v61 = v28;
        }

        else
        {
          v61 = *(a2 - 1);
        }

        if (v15 == 1)
        {
          v62 = *(a2 - 1);
        }

        else
        {
          v62 = v28;
        }

        if (*(v14 + 4 * v61) < *(v14 + 4 * v62))
        {
          *v10 = *(a2 - 1);
LABEL_103:
          *(a2 - 1) = v28;
        }

LABEL_104:
        --a4;
        v43 = *v10;
        if (a5)
        {
          goto LABEL_187;
        }

        goto LABEL_181;
      }

      if (v35 >= v36)
      {
        goto LABEL_104;
      }

      *v10 = v16;
      *(a2 - 1) = v27;
      v40 = *v13;
      v41 = v15 == 1 ? *v13 : *v10;
      v42 = v15 == 1 ? *v10 : *v13;
      if (*(v14 + 4 * v41) >= *(v14 + 4 * v42))
      {
        goto LABEL_104;
      }

      *v13 = *v10;
      *v10 = v40;
      --a4;
      v43 = v40;
      if (a5)
      {
        goto LABEL_187;
      }

      goto LABEL_181;
    }

    v17 = *v12;
    v18 = *v10;
    if (v15 == 1)
    {
      v19 = *v10;
    }

    else
    {
      v19 = *v12;
    }

    if (v15 == 1)
    {
      v20 = *v12;
    }

    else
    {
      v20 = *v10;
    }

    v21 = *(v14 + 4 * v19);
    v22 = *(v14 + 4 * v20);
    if (v15 == 1)
    {
      v23 = *v12;
    }

    else
    {
      v23 = *(a2 - 1);
    }

    if (v15 == 1)
    {
      v24 = *(a2 - 1);
    }

    else
    {
      v24 = *v12;
    }

    v25 = *(v14 + 4 * v23);
    v26 = *(v14 + 4 * v24);
    if (v21 >= v22)
    {
      if (v25 < v26)
      {
        *v12 = v16;
        *(a2 - 1) = v17;
        v37 = *v10;
        v38 = v15 == 1 ? *v10 : *v12;
        v39 = v15 == 1 ? *v12 : *v10;
        if (*(v14 + 4 * v38) < *(v14 + 4 * v39))
        {
          *v10 = *v12;
          *v12 = v37;
        }
      }
    }

    else
    {
      if (v25 < v26)
      {
        *v10 = v16;
LABEL_70:
        *(a2 - 1) = v18;
        goto LABEL_71;
      }

      *v10 = v17;
      *v12 = v18;
      if (v15 == 1)
      {
        v44 = v18;
      }

      else
      {
        v44 = *(a2 - 1);
      }

      if (v15 == 1)
      {
        v45 = *(a2 - 1);
      }

      else
      {
        v45 = v18;
      }

      if (*(v14 + 4 * v44) < *(v14 + 4 * v45))
      {
        *v12 = *(a2 - 1);
        goto LABEL_70;
      }
    }

LABEL_71:
    v46 = v12 - 1;
    v47 = *(v12 - 1);
    v48 = v10[1];
    if (v15 == 1)
    {
      v49 = v10[1];
    }

    else
    {
      v49 = *(v12 - 1);
    }

    if (v15 == 1)
    {
      v50 = *(v12 - 1);
    }

    else
    {
      v50 = v10[1];
    }

    v51 = *(v14 + 4 * v49);
    v52 = *(v14 + 4 * v50);
    v53 = *(a2 - 2);
    if (v15 == 1)
    {
      v54 = *(v12 - 1);
    }

    else
    {
      v54 = *(a2 - 2);
    }

    if (v15 == 1)
    {
      v55 = *(a2 - 2);
    }

    else
    {
      v55 = *(v12 - 1);
    }

    v56 = *(v14 + 4 * v54);
    v57 = *(v14 + 4 * v55);
    if (v51 >= v52)
    {
      if (v56 < v57)
      {
        *v46 = v53;
        *(a2 - 2) = v47;
        v58 = v10[1];
        v59 = v15 == 1 ? v10[1] : *v46;
        v60 = v15 == 1 ? *v46 : v10[1];
        if (*(v14 + 4 * v59) < *(v14 + 4 * v60))
        {
          v10[1] = *v46;
          *v46 = v58;
        }
      }
    }

    else
    {
      if (v56 < v57)
      {
        v10[1] = v53;
LABEL_114:
        *(a2 - 2) = v48;
        goto LABEL_115;
      }

      v10[1] = v47;
      *v46 = v48;
      if (v15 == 1)
      {
        v63 = v48;
      }

      else
      {
        v63 = *(a2 - 2);
      }

      if (v15 == 1)
      {
        v64 = *(a2 - 2);
      }

      else
      {
        v64 = v48;
      }

      if (*(v14 + 4 * v63) < *(v14 + 4 * v64))
      {
        *v46 = *(a2 - 2);
        goto LABEL_114;
      }
    }

LABEL_115:
    v67 = v12[1];
    v65 = v12 + 1;
    v66 = v67;
    v68 = v10[2];
    if (v15 == 1)
    {
      v69 = v10[2];
    }

    else
    {
      v69 = v66;
    }

    if (v15 == 1)
    {
      v70 = v66;
    }

    else
    {
      v70 = v10[2];
    }

    v71 = *(v14 + 4 * v69);
    v72 = *(v14 + 4 * v70);
    v73 = *(a2 - 3);
    if (v15 == 1)
    {
      v74 = v66;
    }

    else
    {
      v74 = *(a2 - 3);
    }

    if (v15 == 1)
    {
      v75 = *(a2 - 3);
    }

    else
    {
      v75 = v66;
    }

    v76 = *(v14 + 4 * v74);
    v77 = *(v14 + 4 * v75);
    if (v71 >= v72)
    {
      if (v76 < v77)
      {
        *v65 = v73;
        *(a2 - 3) = v66;
        v78 = v10[2];
        v79 = v15 == 1 ? v10[2] : *v65;
        v80 = v15 == 1 ? *v65 : v10[2];
        if (*(v14 + 4 * v79) < *(v14 + 4 * v80))
        {
          v10[2] = *v65;
          *v65 = v78;
        }
      }

      goto LABEL_148;
    }

    if (v76 >= v77)
    {
      v10[2] = v66;
      *v65 = v68;
      if (v15 == 1)
      {
        v81 = v68;
      }

      else
      {
        v81 = *(a2 - 3);
      }

      if (v15 == 1)
      {
        v82 = *(a2 - 3);
      }

      else
      {
        v82 = v68;
      }

      if (*(v14 + 4 * v81) >= *(v14 + 4 * v82))
      {
        goto LABEL_148;
      }

      *v65 = *(a2 - 3);
    }

    else
    {
      v10[2] = v73;
    }

    *(a2 - 3) = v68;
LABEL_148:
    v83 = *v13;
    v84 = *v46;
    if (v15 == 1)
    {
      v85 = *v46;
    }

    else
    {
      v85 = *v13;
    }

    if (v15 == 1)
    {
      v86 = *v13;
    }

    else
    {
      v86 = *v46;
    }

    v87 = *(v14 + 4 * v85);
    v88 = *(v14 + 4 * v86);
    v89 = *v65;
    if (v15 == 1)
    {
      v90 = *v13;
    }

    else
    {
      v90 = *v65;
    }

    if (v15 == 1)
    {
      v91 = *v65;
    }

    else
    {
      v91 = *v13;
    }

    v92 = *(v14 + 4 * v90);
    v93 = *(v14 + 4 * v91);
    if (v87 >= v88)
    {
      if (v92 < v93)
      {
        *v13 = v89;
        *v65 = v83;
        if (v15 == 1)
        {
          v99 = v84;
        }

        else
        {
          v99 = v89;
        }

        v100 = *(v14 + 4 * v99);
        if (v15 == 1)
        {
          v101 = v89;
        }

        else
        {
          v101 = v84;
        }

        v102 = *(v14 + 4 * v101);
        v65 = v13;
        v83 = v84;
        if (v100 >= v102)
        {
          v126 = *v10;
          *v10 = v89;
          *v13 = v126;
          --a4;
          v43 = *v10;
          if (a5)
          {
            goto LABEL_187;
          }

          goto LABEL_181;
        }

LABEL_179:
        *v46 = v89;
        *v65 = v84;
      }

      v103 = *v10;
      *v10 = v83;
      *v13 = v103;
      --a4;
      v43 = *v10;
      if (a5)
      {
        goto LABEL_187;
      }

      goto LABEL_181;
    }

    if (v92 < v93)
    {
      goto LABEL_179;
    }

    *v46 = v83;
    *v13 = v84;
    v94 = v15 == 1 ? v84 : v89;
    v95 = *(v14 + 4 * v94);
    v96 = v15 == 1 ? v89 : v84;
    v97 = *(v14 + 4 * v96);
    v46 = v13;
    v83 = v89;
    if (v95 < v97)
    {
      goto LABEL_179;
    }

    v98 = *v10;
    *v10 = v84;
    *v13 = v98;
    --a4;
    v43 = *v10;
    if (a5)
    {
      goto LABEL_187;
    }

LABEL_181:
    v104 = *(v10 - 1);
    if (v15 == 1)
    {
      v105 = v43;
    }

    else
    {
      v105 = *(v10 - 1);
    }

    if (v15 != 1)
    {
      v104 = v43;
    }

    if (*(v14 + 4 * v105) >= *(v14 + 4 * v104))
    {
      v127 = *(a2 - 1);
      if (v15 == 1)
      {
        v128 = *(a2 - 1);
      }

      else
      {
        v128 = v43;
      }

      if (v15 == 1)
      {
        v127 = v43;
      }

      if (*(v14 + 4 * v128) >= *(v14 + 4 * v127))
      {
        v132 = v10 + 1;
        if (v15 == 1)
        {
          do
          {
            v10 = v132;
            if (v132 >= a2)
            {
              break;
            }

            ++v132;
          }

          while (*(v14 + 4 * *v10) >= *(v14 + 4 * v43));
        }

        else
        {
          do
          {
            v10 = v132;
            if (v132 >= a2)
            {
              break;
            }

            ++v132;
          }

          while (*(v14 + 4 * v43) >= *(v14 + 4 * *v10));
        }
      }

      else
      {
        v129 = *(v14 + 4 * v43);
        if (v15 == 1)
        {
          do
          {
            v130 = v10[1];
            ++v10;
          }

          while (*(v14 + 4 * v130) >= v129);
        }

        else
        {
          do
          {
            v131 = v10[1];
            ++v10;
          }

          while (v129 >= *(v14 + 4 * v131));
        }
      }

      v133 = a2;
      if (v10 < a2)
      {
        v134 = *(v14 + 4 * v43);
        v133 = a2;
        if (v15 == 1)
        {
          v133 = a2;
          do
          {
            v135 = *--v133;
          }

          while (*(v14 + 4 * v135) < v134);
        }

        else
        {
          do
          {
            v136 = *--v133;
          }

          while (v134 < *(v14 + 4 * v136));
        }
      }

      if (v10 < v133)
      {
        v137 = *v10;
        v138 = *v133;
        v139 = *(v14 + 4 * v43);
        do
        {
          *v10 = v138;
          *v133 = v137;
          if (v15 == 1)
          {
            do
            {
              v140 = v10[1];
              ++v10;
              v137 = v140;
            }

            while (*(v14 + 4 * v140) >= v139);
            do
            {
              v142 = *--v133;
              v138 = v142;
            }

            while (*(v14 + 4 * v142) < v139);
          }

          else
          {
            do
            {
              v141 = v10[1];
              ++v10;
              v137 = v141;
            }

            while (v139 >= *(v14 + 4 * v141));
            do
            {
              v143 = *--v133;
              v138 = v143;
            }

            while (v139 < *(v14 + 4 * v143));
          }
        }

        while (v10 < v133);
      }

      v144 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v144;
      }

      a5 = 0;
      *v144 = v43;
    }

    else
    {
LABEL_187:
      v106 = *(**a3 + 420);
      v107 = *(a3[1] + 440);
      v108 = *(v107 + 4 * v43);
      v109 = v10;
      if (v106 == 1)
      {
        v109 = v10;
        do
        {
          v111 = v109[1];
          ++v109;
          v110 = v111;
        }

        while (v108 < *(v107 + 4 * v111));
      }

      else
      {
        do
        {
          v112 = v109[1];
          ++v109;
          v110 = v112;
        }

        while (*(v107 + 4 * v112) < v108);
      }

      if (v109 - 1 == v10)
      {
        v113 = a2;
        if (v106 == 1)
        {
          v113 = a2;
          do
          {
            if (v109 >= v113)
            {
              break;
            }

            v116 = *--v113;
          }

          while (v108 >= *(v107 + 4 * v116));
        }

        else
        {
          do
          {
            if (v109 >= v113)
            {
              break;
            }

            v117 = *--v113;
          }

          while (*(v107 + 4 * v117) >= v108);
        }
      }

      else
      {
        v113 = a2;
        if (v106 == 1)
        {
          v113 = a2;
          do
          {
            v114 = *--v113;
          }

          while (v108 >= *(v107 + 4 * v114));
        }

        else
        {
          do
          {
            v115 = *--v113;
          }

          while (*(v107 + 4 * v115) >= v108);
        }
      }

      v10 = v109;
      if (v109 < v113)
      {
        v118 = *v113;
        v10 = v109;
        v119 = v113;
        do
        {
          *v10 = v118;
          *v119 = v110;
          if (v106 == 1)
          {
            do
            {
              v120 = v10[1];
              ++v10;
              v110 = v120;
            }

            while (v108 < *(v107 + 4 * v120));
            do
            {
              v122 = *--v119;
              v118 = v122;
            }

            while (v108 >= *(v107 + 4 * v122));
          }

          else
          {
            do
            {
              v121 = v10[1];
              ++v10;
              v110 = v121;
            }

            while (*(v107 + 4 * v121) < v108);
            do
            {
              v123 = *--v119;
              v118 = v123;
            }

            while (*(v107 + 4 * v123) >= v108);
          }
        }

        while (v10 < v119);
      }

      v124 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v124;
      }

      *v124 = v43;
      if (v109 < v113)
      {
        goto LABEL_223;
      }

      v125 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::SortWorker::Process(apple3dgs::SortWorker::Job const&)::$_0 &,unsigned int *>(v9, v10 - 1, *a3, a3[1]);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::SortWorker::Process(apple3dgs::SortWorker::Job const&)::$_0 &,unsigned int *>(v10, a2, *a3, a3[1]);
      if (result)
      {
        a2 = v10 - 1;
        if (!v125)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v125)
      {
LABEL_223:
        result = std::__introsort<std::_ClassicAlgPolicy,apple3dgs::SortWorker::Process(apple3dgs::SortWorker::Job const&)::$_0 &,unsigned int *,false>(v9, v10 - 1, a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  v152 = *(a3[1] + 440);
  v153 = *(**a3 + 420);
  v154 = *v10;
  v155 = v10[1];
  if (v153 == 1)
  {
    v156 = *v10;
  }

  else
  {
    v156 = v10[1];
  }

  if (v153 == 1)
  {
    v157 = v10[1];
  }

  else
  {
    v157 = *v10;
  }

  v158 = *(v152 + 4 * v156);
  v159 = *(v152 + 4 * v157);
  v160 = *(a2 - 1);
  if (v153 == 1)
  {
    v161 = v10[1];
  }

  else
  {
    v161 = *(a2 - 1);
  }

  if (v153 == 1)
  {
    v162 = *(a2 - 1);
  }

  else
  {
    v162 = v10[1];
  }

  v163 = *(v152 + 4 * v161);
  v164 = *(v152 + 4 * v162);
  if (v158 < v159)
  {
    if (v163 >= v164)
    {
      *v10 = v155;
      v10[1] = v154;
      v261 = v153 == 1;
      if (v153 == 1)
      {
        v262 = v154;
      }

      else
      {
        v262 = *(a2 - 1);
      }

      if (v261)
      {
        v263 = *(a2 - 1);
      }

      else
      {
        v263 = v154;
      }

      if (*(v152 + 4 * v262) >= *(v152 + 4 * v263))
      {
        return result;
      }

      v10[1] = *(a2 - 1);
    }

    else
    {
      *v10 = v160;
    }

    *(a2 - 1) = v154;
    return result;
  }

  if (v163 < v164)
  {
    v10[1] = v160;
    *(a2 - 1) = v155;
    v245 = *v10;
    v246 = v153 == 1;
    v247 = v153 == 1 ? *v10 : v10[1];
    v248 = v246 ? v10[1] : *v10;
    if (*(v152 + 4 * v247) < *(v152 + 4 * v248))
    {
      *v10 = v10[1];
      v10[1] = v245;
    }
  }

  return result;
}

unsigned int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::SortWorker::Process(apple3dgs::SortWorker::Job const&)::$_0 &,unsigned int *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, int a6, uint64_t a7)
{
  v7 = *a2;
  v8 = *a2;
  v9 = *result;
  if (a6 == 1)
  {
    v10 = *result;
  }

  else
  {
    v10 = *a2;
  }

  if (a6 == 1)
  {
    v11 = *a2;
  }

  else
  {
    v11 = *result;
  }

  v12 = *(a7 + 4 * v10);
  v13 = *(a7 + 4 * v11);
  v14 = *a3;
  if (a6 == 1)
  {
    v15 = *a2;
  }

  else
  {
    v15 = *a3;
  }

  if (a6 == 1)
  {
    v16 = *a3;
  }

  else
  {
    v16 = *a2;
  }

  v17 = *(a7 + 4 * v15);
  v18 = *(a7 + 4 * v16);
  if (v12 >= v13)
  {
    if (v17 >= v18)
    {
      v7 = *a3;
      v8 = *a3;
    }

    else
    {
      *a2 = v14;
      *a3 = v8;
      v19 = *result;
      if (a6 == 1)
      {
        v20 = *result;
      }

      else
      {
        v20 = *a2;
      }

      if (a6 == 1)
      {
        v21 = *a2;
      }

      else
      {
        v21 = *result;
      }

      if (*(a7 + 4 * v20) < *(a7 + 4 * v21))
      {
        *result = *a2;
        *a2 = v19;
        v7 = *a3;
        v8 = *a3;
      }
    }
  }

  else
  {
    if (v17 < v18)
    {
      *result = v14;
LABEL_33:
      *a3 = v9;
      v7 = v9;
      v8 = v9;
      goto LABEL_35;
    }

    *result = v8;
    *a2 = v9;
    v7 = *a3;
    v8 = *a3;
    if (a6 == 1)
    {
      v22 = v9;
    }

    else
    {
      v22 = *a3;
    }

    if (a6 == 1)
    {
      v23 = *a3;
    }

    else
    {
      v23 = v9;
    }

    if (*(a7 + 4 * v22) < *(a7 + 4 * v23))
    {
      *a2 = v8;
      goto LABEL_33;
    }
  }

LABEL_35:
  if (a6 == 1)
  {
    v24 = v7;
  }

  else
  {
    v24 = *a4;
  }

  if (a6 == 1)
  {
    v7 = *a4;
  }

  if (*(a7 + 4 * v24) < *(a7 + 4 * v7))
  {
    *a3 = *a4;
    *a4 = v8;
    v25 = *a2;
    v26 = a6 == 1 ? *a2 : *a3;
    v27 = a6 == 1 ? *a3 : *a2;
    if (*(a7 + 4 * v26) < *(a7 + 4 * v27))
    {
      *a2 = *a3;
      *a3 = v25;
      v28 = *result;
      v29 = a6 == 1 ? *result : *a2;
      v30 = a6 == 1 ? *a2 : *result;
      if (*(a7 + 4 * v29) < *(a7 + 4 * v30))
      {
        *result = *a2;
        *a2 = v28;
      }
    }
  }

  v31 = *a4;
  if (a6 == 1)
  {
    v32 = *a4;
  }

  else
  {
    v32 = *a5;
  }

  if (a6 == 1)
  {
    v33 = *a5;
  }

  else
  {
    v33 = *a4;
  }

  if (*(a7 + 4 * v32) < *(a7 + 4 * v33))
  {
    *a4 = *a5;
    *a5 = v31;
    v34 = *a3;
    v35 = a6 == 1 ? *a3 : *a4;
    v36 = a6 == 1 ? *a4 : *a3;
    if (*(a7 + 4 * v35) < *(a7 + 4 * v36))
    {
      *a3 = *a4;
      *a4 = v34;
      v37 = *a2;
      v38 = a6 == 1 ? *a2 : *a3;
      v39 = a6 == 1 ? *a3 : *a2;
      if (*(a7 + 4 * v38) < *(a7 + 4 * v39))
      {
        *a2 = *a3;
        *a3 = v37;
        v40 = *result;
        if (a6 == 1)
        {
          v41 = *result;
        }

        else
        {
          v41 = *a2;
        }

        if (a6 == 1)
        {
          v42 = *a2;
        }

        else
        {
          v42 = *result;
        }

        if (*(a7 + 4 * v41) < *(a7 + 4 * v42))
        {
          *result = *a2;
          *a2 = v40;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::SortWorker::Process(apple3dgs::SortWorker::Job const&)::$_0 &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v11 = *(a4 + 440);
      v12 = *(*a3 + 420);
      v13 = *a1;
      v14 = a1[1];
      if (v12 == 1)
      {
        v15 = *a1;
      }

      else
      {
        v15 = a1[1];
      }

      if (v12 == 1)
      {
        v16 = a1[1];
      }

      else
      {
        v16 = *a1;
      }

      v17 = *(v11 + 4 * v15);
      v18 = *(v11 + 4 * v16);
      v19 = *(a2 - 1);
      if (v12 == 1)
      {
        v20 = a1[1];
      }

      else
      {
        v20 = *(a2 - 1);
      }

      if (v12 == 1)
      {
        v21 = *(a2 - 1);
      }

      else
      {
        v21 = a1[1];
      }

      v22 = *(v11 + 4 * v20);
      v23 = *(v11 + 4 * v21);
      if (v17 >= v18)
      {
        if (v22 < v23)
        {
          a1[1] = v19;
          *(a2 - 1) = v14;
          v61 = *a1;
          v62 = v12 == 1;
          v63 = v12 == 1 ? *a1 : a1[1];
          v64 = v62 ? a1[1] : *a1;
          if (*(v11 + 4 * v63) < *(v11 + 4 * v64))
          {
            *a1 = a1[1];
            a1[1] = v61;
            return 1;
          }
        }
      }

      else
      {
        if (v22 < v23)
        {
          *a1 = v19;
          *(a2 - 1) = v13;
          return 1;
        }

        *a1 = v14;
        a1[1] = v13;
        v87 = v12 == 1;
        if (v12 == 1)
        {
          v88 = v13;
        }

        else
        {
          v88 = *(a2 - 1);
        }

        if (v87)
        {
          v89 = *(a2 - 1);
        }

        else
        {
          v89 = v13;
        }

        if (*(v11 + 4 * v88) < *(v11 + 4 * v89))
        {
          a1[1] = *(a2 - 1);
          *(a2 - 1) = v13;
          return 1;
        }
      }

      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::SortWorker::Process(apple3dgs::SortWorker::Job const&)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *(*a3 + 420), *(a4 + 440));
        return 1;
      }

      goto LABEL_32;
    }

    v43 = a1 + 1;
    v44 = a1[1];
    v45 = a1 + 2;
    v46 = a1[2];
    v47 = *(a4 + 440);
    v48 = *(*a3 + 420);
    v49 = a1[1];
    v50 = *a1;
    if (v48 == 1)
    {
      v51 = *a1;
    }

    else
    {
      v51 = a1[1];
    }

    if (v48 == 1)
    {
      v52 = a1[1];
    }

    else
    {
      v52 = *a1;
    }

    v53 = *(v47 + 4 * v51);
    v54 = *(v47 + 4 * v52);
    if (v48 == 1)
    {
      v55 = a1[1];
    }

    else
    {
      v55 = a1[2];
    }

    if (v48 == 1)
    {
      v56 = a1[2];
    }

    else
    {
      v56 = a1[1];
    }

    v57 = *(v47 + 4 * v55);
    v58 = *(v47 + 4 * v56);
    if (v53 >= v54)
    {
      if (v57 < v58)
      {
        *v43 = v46;
        *v45 = v49;
        if (v48 == 1)
        {
          v76 = v50;
        }

        else
        {
          v76 = v46;
        }

        v77 = *(v47 + 4 * v76);
        if (v48 == 1)
        {
          v78 = v46;
        }

        else
        {
          v78 = v50;
        }

        v79 = *(v47 + 4 * v78);
        v59 = a1;
        v60 = a1 + 1;
        if (v77 < v79)
        {
          goto LABEL_131;
        }

LABEL_133:
        if (v48 == 1)
        {
          v94 = v44;
        }

        else
        {
          v94 = *(a2 - 1);
        }

        if (v48 == 1)
        {
          v44 = *(a2 - 1);
        }

        if (*(v47 + 4 * v94) < *(v47 + 4 * v44))
        {
          *v45 = *(a2 - 1);
          *(a2 - 1) = v49;
          v95 = *v45;
          v96 = *v43;
          v97 = v48 == 1 ? v96 : v95;
          v98 = v48 == 1 ? v95 : v96;
          if (*(v47 + 4 * v97) < *(v47 + 4 * v98))
          {
            a1[1] = v95;
            a1[2] = v96;
            v99 = *a1;
            v100 = v48 == 1;
            v101 = v48 == 1 ? *a1 : v95;
            v102 = v100 ? v95 : *a1;
            if (*(v47 + 4 * v101) < *(v47 + 4 * v102))
            {
              *a1 = v95;
              a1[1] = v99;
              return 1;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      if (v57 < v58)
      {
        v59 = a1;
        v60 = a1 + 2;
        v44 = *a1;
        v49 = *a1;
LABEL_131:
        *v59 = v46;
        *v60 = v50;
        goto LABEL_133;
      }

      if (v48 == 1)
      {
        v90 = *a1;
      }

      else
      {
        v90 = a1[2];
      }

      if (v48 == 1)
      {
        v91 = a1[2];
      }

      else
      {
        v91 = *a1;
      }

      v92 = *(v47 + 4 * v90);
      v93 = *(v47 + 4 * v91);
      *a1 = v49;
      a1[1] = v50;
      v59 = a1 + 1;
      v60 = a1 + 2;
      v44 = v50;
      v49 = v50;
      if (v92 < v93)
      {
        goto LABEL_131;
      }
    }

    v44 = v46;
    v49 = v46;
    goto LABEL_133;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v6 = *a1;
    v7 = *(*a3 + 420);
    v8 = v7 == 1;
    if (v7 == 1)
    {
      v9 = *a1;
    }

    else
    {
      v9 = *(a2 - 1);
    }

    if (v8)
    {
      v10 = *(a2 - 1);
    }

    else
    {
      v10 = *a1;
    }

    if (*(*(a4 + 440) + 4 * v9) < *(*(a4 + 440) + 4 * v10))
    {
      *a1 = *(a2 - 1);
      *(a2 - 1) = v6;
      return 1;
    }

    return 1;
  }

LABEL_32:
  v25 = a1 + 2;
  v24 = a1[2];
  v26 = a1[1];
  v27 = *(a4 + 440);
  v28 = *(*a3 + 420);
  v29 = *a1;
  if (v28 == 1)
  {
    v30 = *a1;
  }

  else
  {
    v30 = a1[1];
  }

  if (v28 == 1)
  {
    v31 = a1[1];
  }

  else
  {
    v31 = *a1;
  }

  v32 = *(v27 + 4 * v30);
  v33 = *(v27 + 4 * v31);
  if (v28 == 1)
  {
    v34 = a1[1];
  }

  else
  {
    v34 = a1[2];
  }

  if (v28 == 1)
  {
    v35 = a1[2];
  }

  else
  {
    v35 = a1[1];
  }

  v36 = *(v27 + 4 * v34);
  v37 = *(v27 + 4 * v35);
  if (v32 < v33)
  {
    v38 = a1;
    v39 = a1 + 2;
    if (v36 >= v37)
    {
      *a1 = v26;
      a1[1] = v29;
      v40 = v28 == 1 ? v29 : v24;
      v41 = *(v27 + 4 * v40);
      v42 = v28 == 1 ? v24 : v29;
      v38 = a1 + 1;
      v39 = a1 + 2;
      if (v41 >= *(v27 + 4 * v42))
      {
        goto LABEL_87;
      }
    }

LABEL_86:
    *v38 = v24;
    *v39 = v29;
    goto LABEL_87;
  }

  if (v36 < v37)
  {
    a1[1] = v24;
    *v25 = v26;
    v65 = v28 == 1 ? v29 : v24;
    v66 = *(v27 + 4 * v65);
    v67 = v28 == 1 ? v24 : v29;
    v38 = a1;
    v39 = a1 + 1;
    if (v66 < *(v27 + 4 * v67))
    {
      goto LABEL_86;
    }
  }

LABEL_87:
  v68 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  if (v28 == 1)
  {
    v69 = 0;
    for (i = 12; ; i += 4)
    {
      v71 = *v68;
      v72 = *v25;
      v73 = *(v27 + 4 * v71);
      if (*(v27 + 4 * v72) < v73)
      {
        break;
      }

LABEL_91:
      v25 = v68++;
      if (v68 == a2)
      {
        return 1;
      }
    }

    v74 = i;
    do
    {
      *(a1 + v74) = v72;
      v75 = v74 - 4;
      if (v74 == 4)
      {
        *a1 = v71;
        if (++v69 == 8)
        {
          return v68 + 1 == a2;
        }

        goto LABEL_91;
      }

      v72 = *(a1 + v74 - 8);
      v74 -= 4;
    }

    while (*(v27 + 4 * v72) < v73);
    *(a1 + v75) = v71;
    if (++v69 != 8)
    {
      goto LABEL_91;
    }
  }

  else
  {
    v80 = 0;
    for (j = 12; ; j += 4)
    {
      v82 = *v68;
      v83 = *v25;
      v84 = *(v27 + 4 * v82);
      if (v84 < *(v27 + 4 * v83))
      {
        break;
      }

LABEL_109:
      v25 = v68++;
      if (v68 == a2)
      {
        return 1;
      }
    }

    v85 = j;
    do
    {
      *(a1 + v85) = v83;
      v86 = v85 - 4;
      if (v85 == 4)
      {
        *a1 = v82;
        if (++v80 == 8)
        {
          return v68 + 1 == a2;
        }

        goto LABEL_109;
      }

      v83 = *(a1 + v85 - 8);
      v85 -= 4;
    }

    while (v84 < *(v27 + 4 * v83));
    *(a1 + v86) = v82;
    if (++v80 != 8)
    {
      goto LABEL_109;
    }
  }

  return v68 + 1 == a2;
}

apple3dgs::SortWorker::RenderingBuffers *apple3dgs::SortWorker::RenderingBuffers::RenderingBuffers(apple3dgs::SortWorker::RenderingBuffers *this, const apple3dgs::SortWorker::RenderingBuffers *a2)
{
  v4 = *(a2 + 1);
  *this = *a2;
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 3);
  *(this + 2) = *(a2 + 2);
  *(this + 3) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 5);
  *(this + 4) = *(a2 + 4);
  *(this + 5) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 6) = *(a2 + 6);
  *(this + 7) = *(a2 + 7);
  v7 = *(a2 + 5);
  *(this + 4) = *(a2 + 4);
  *(this + 5) = v7;
  *(this + 12) = *(a2 + 12);
  *(this + 13) = *(a2 + 13);
  *(this + 14) = *(a2 + 14);
  *(this + 15) = *(a2 + 15);
  return this;
}

uint64_t std::deque<apple3dgs::SortWorker::Job>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v9 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 / 0x55];
    v6 = *v5 + 48 * (v4 % 0x55);
    v7 = v2[(*(a1 + 40) + v4) / 0x55] + 48 * ((*(a1 + 40) + v4) % 0x55);
    if (v6 != v7)
    {
      do
      {
        std::__destroy_at[abi:ne200100]<apple3dgs::SortWorker::Job,0>(v6);
        v6 += 48;
        if (v6 - *v5 == 4080)
        {
          v8 = v5[1];
          ++v5;
          v6 = v8;
        }
      }

      while (v6 != v7);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v9 = v3 - v2;
    if (v9 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v9 = v3 - v2;
      }

      while (v9 > 2);
    }
  }

  if (v9 == 1)
  {
    v10 = 42;
    goto LABEL_15;
  }

  if (v9 == 2)
  {
    v10 = 85;
LABEL_15:
    *(a1 + 32) = v10;
  }

  if (v2 != v3)
  {
    do
    {
      v11 = *v2++;
      operator delete(v11);
    }

    while (v2 != v3);
    v13 = *(a1 + 8);
    v12 = *(a1 + 16);
    if (v12 != v13)
    {
      *(a1 + 16) = v12 + ((v13 - v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<apple3dgs::SortWorker::Job,0>(void *a1)
{
  v2 = a1[5];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1[1];
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = a1[1];
    if (!v4)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,apple3dgs::SortWorker::StartCPUSort(void)::$_0>>(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  apple3dgs::SortWorker::StartRunning(*(a1 + 8));
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    v5 = MEMORY[0x24C1A1E00]();
    MEMORY[0x24C1A2010](v5, 0x20C4093837F09);
  }

  MEMORY[0x24C1A2010](a1, 0x20C40A4A59CD2);
  return 0;
}

void sub_24745DD64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,apple3dgs::SortWorker::StartCPUSort(void)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,apple3dgs::SortWorker::StartCPUSort(void)::$_0>>::~unique_ptr[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      v4 = MEMORY[0x24C1A1E00]();
      MEMORY[0x24C1A2010](v4, 0x20C4093837F09);
    }

    MEMORY[0x24C1A2010](v1, 0x20C40A4A59CD2);
    return v2;
  }

  return result;
}

void *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x24C1A1E00]();
    MEMORY[0x24C1A2010](v4, 0x20C4093837F09);
    return v3;
  }

  return v1;
}

void *std::deque<apple3dgs::SortWorker::Job>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x55;
  v3 = v1 - 85;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> *,std::allocator<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> *>>::emplace_back<std::function<void ()(cv3d::aspenbase::concurrency::AsyncManager::ThreadContext &)> *&>(a1, &v11);
}

void sub_24745E1A8(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

id apple3dgs::GetDefaultLibrary(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreRE3DGSFoundation"];
  v5 = [v3 newDefaultLibraryWithBundle:v4 error:a2];
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.Apple3DGSRendering"];

    v5 = [v3 newDefaultLibraryWithBundle:v6 error:a2];
    if (!v5)
    {
      v7 = [MEMORY[0x277CCA8D8] mainBundle];

      v5 = [v3 newDefaultLibraryWithBundle:v7 error:a2];
      if (v5)
      {
        v6 = v7;
      }

      else
      {
        v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

        v5 = [v3 newDefaultLibraryWithBundle:v6 error:a2];
      }
    }
  }

  return v5;
}

id apple3dgs::GetDefaultArchive(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreRE3DGSFoundation"];
  v5 = objc_alloc_init(MEMORY[0x277CD6C88]);
  v6 = [v4 URLForResource:@"archive" withExtension:@"metallib"];
  [v5 setUrl:v6];

  v7 = [v5 url];

  if (!v7)
  {
    v8 = [MEMORY[0x277CCA8D8] mainBundle];

    v9 = [v8 URLForResource:@"archive" withExtension:@"metallib"];
    [v5 setUrl:v9];

    v4 = v8;
  }

  v10 = [v5 url];

  if (!v10)
  {
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

    v12 = [v11 URLForResource:@"archive" withExtension:@"metallib"];
    [v5 setUrl:v12];

    v4 = v11;
  }

  v13 = [v5 url];

  if (v13)
  {
    v14 = [v3 newBinaryArchiveWithDescriptor:v5 error:a2];
  }

  else
  {
    v15 = _gs_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(&dword_2473FC000, v15, OS_LOG_TYPE_ERROR, "[A3DGSR /Renderer.mm:56] No archive found, shaders will be re-compiled", v17, 2u);
    }

    v14 = 0;
  }

  return v14;
}

id apple3dgs::details::CreateMemoryLessTexture(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:a2 width:objc_msgSend(v5 height:"width") mipmapped:objc_msgSend(v5, "height"), 0];
  [v6 setTextureType:{objc_msgSend(v5, "textureType")}];
  [v6 setArrayLength:{objc_msgSend(v5, "arrayLength")}];
  [v6 setStorageMode:3];
  if (a3 >= 2)
  {
    if ([v5 arrayLength] <= 1)
    {
      v7 = 4;
    }

    else
    {
      v7 = 8;
    }

    [v6 setTextureType:v7];
  }

  [v6 setSampleCount:a3];
  [v6 setUsage:5];
  v8 = [v5 device];
  v9 = [v8 newTextureWithDescriptor:v6];

  return v9;
}

id apple3dgs::BlendingVariant::GetFunctionConstants(apple3dgs::BlendingVariant *this)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6D70]);
  v5 = *this == 0;
  [v2 setConstantValue:&v5 type:53 atIndex:0];
  [v2 setConstantValue:this + 4 type:53 atIndex:1];
  [v2 setConstantValue:this + 5 type:53 atIndex:2];
  [v2 setConstantValue:this + 6 type:53 atIndex:3];
  v4 = *(this + 2) == 0;
  [v2 setConstantValue:&v4 type:53 atIndex:4];

  return v2;
}

uint64_t apple3dgs::Renderer::Renderer(uint64_t a1, void *a2, void *a3, _OWORD *a4, uint64_t *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v9 = a2;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *a1 = a1 + 8;
  *(a1 + 32) = 0;
  v10 = a4[1];
  *(a1 + 40) = *a4;
  *(a1 + 56) = v10;
  v11 = apple3dgs::GetDefaultLibrary(v9, a5);
  if (v11)
  {
    v12 = apple3dgs::GetDefaultArchive(v9, a5);
    if (*(a1 + 64))
    {
      v13 = 4;
    }

    else
    {
      v13 = 0;
    }

    if (apple3dgs::Renderer::BuildBlendingPipeline(a1, v11, v12, a3, *(a1 + 40), *(a1 + 48), a5, v13))
    {
      std::allocate_shared[abi:ne200100]<apple3dgs::PostAlphaBlend,std::allocator<apple3dgs::PostAlphaBlend>,objc_object  {objcproto10MTLLibrary}* {__strong}&,NSError * {__autoreleasing}*&,0>();
    }

    v14 = v11;
  }

  else
  {
    v14 = _gs_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *a5;
      *buf = 138412290;
      *&buf[4] = v15;
      _os_log_impl(&dword_2473FC000, v14, OS_LOG_TYPE_ERROR, "[A3DGSR /Renderer.mm:133] Failed to get DefaultLibrary from Metal: %@", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_24745EB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  std::shared_ptr<apple3dgs::Asset>::~shared_ptr[abi:ne200100](v12);
  std::__tree<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::__map_value_compare<apple3dgs::BlendingVariant,std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::less<apple3dgs::BlendingVariant>,true>,std::allocator<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>>>::destroy(v9, *(v9 + 8));

  _Unwind_Resume(a1);
}

BOOL apple3dgs::Renderer::BuildBlendingPipeline(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v59[1] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v55 = a3;
  v51 = v10;
  v50 = [v10 device];
  v46 = a4[1];
  if (*a4 != v46)
  {
    v12 = a6;
    if (a6 != 260)
    {
      v12 = 0;
    }

    v45 = v12;
    v13 = *a4 + 12;
    *&v11 = 138412290;
    v44 = v11;
    while (1)
    {
      v14 = objc_alloc_init(MEMORY[0x277CD6D78]);
      [v14 setName:@"AlphaBlendVS"];
      v15 = apple3dgs::BlendingVariant::GetFunctionConstants((v13 - 12));
      [v14 setConstantValues:v15];

      if (v55)
      {
        v59[0] = v55;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:1];
        [v14 setBinaryArchives:v16];
      }

      if ((a8 & 4) != 0)
      {
        [v14 setOptions:{objc_msgSend(v14, "options") | 4}];
      }

      v17 = [v51 newFunctionWithDescriptor:v14 error:{a7, v44}];
      v18 = v17;
      if (!v17)
      {
LABEL_32:

        v49 = 0;
        goto LABEL_33;
      }

      [v17 setLabel:@"A3DGS.AlphaBlendVS"];
      v19 = objc_alloc_init(MEMORY[0x277CD6D78]);
      [v19 setName:@"AlphaBlendFS"];
      v20 = apple3dgs::BlendingVariant::GetFunctionConstants((v13 - 12));
      [v19 setConstantValues:v20];

      if (v55)
      {
        v58 = v55;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
        [v19 setBinaryArchives:v21];
      }

      if ((a8 & 4) != 0)
      {
        [v19 setOptions:{objc_msgSend(v19, "options") | 4}];
      }

      v22 = [v51 newFunctionWithDescriptor:v19 error:a7];
      v23 = v22;
      if (!v22)
      {

        goto LABEL_32;
      }

      [v22 setLabel:@"A3DGS.AlphaBlendFS"];
      v24 = objc_alloc_init(MEMORY[0x277CD6F78]);
      [v24 setVertexFunction:v18];
      [v24 setFragmentFunction:v23];
      [v24 setRasterSampleCount:*(a1 + 56)];
      if (v55)
      {
        v57 = v55;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
        [v24 setBinaryArchives:v25];
      }

      [v24 setLabel:@"A3DGS.BlendingPipeline"];
      v26 = [v24 colorAttachments];
      v27 = [v26 objectAtIndexedSubscript:0];

      [v27 setPixelFormat:115];
      v28 = [v24 colorAttachments];
      v29 = [v28 objectAtIndexedSubscript:1];

      [v29 setPixelFormat:55];
      v30 = [v24 colorAttachments];
      v31 = [v30 objectAtIndexedSubscript:2];

      [v31 setPixelFormat:a5];
      [v31 setWriteMask:0];

      [v24 setMaxVertexAmplificationCount:2];
      [v24 setInputPrimitiveTopology:3];
      [v24 setDepthAttachmentPixelFormat:a6];
      [v24 setStencilAttachmentPixelFormat:v45];
      [v24 setInputPrimitiveTopology:3];
      v32 = [v50 newRenderPipelineStateWithDescriptor:v24 options:a8 reflection:0 error:a7];
      *buf = v13 - 12;
      v33 = std::__tree<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::__map_value_compare<apple3dgs::BlendingVariant,std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::less<apple3dgs::BlendingVariant>,true>,std::allocator<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>>>::__emplace_unique_key_args<apple3dgs::BlendingVariant,std::piecewise_construct_t const&,std::tuple<apple3dgs::BlendingVariant const&>,std::tuple<>>(a1, v13 - 12);
      v34 = v33[6];
      v33[6] = v32;

      *buf = v13 - 12;
      v35 = std::__tree<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::__map_value_compare<apple3dgs::BlendingVariant,std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::less<apple3dgs::BlendingVariant>,true>,std::allocator<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>>>::__emplace_unique_key_args<apple3dgs::BlendingVariant,std::piecewise_construct_t const&,std::tuple<apple3dgs::BlendingVariant const&>,std::tuple<>>(a1, v13 - 12)[6];
      v49 = v35 != 0;
      if (v35)
      {
        if (*(v13 - 7) == 1)
        {
          v36 = objc_alloc_init(MEMORY[0x277CD6D60]);
          [v36 setDepthWriteEnabled:*(v13 - 4) == 1];
          [v36 setDepthCompareFunction:6];
          v37 = [v50 newDepthStencilStateWithDescriptor:v36];
          *buf = v13 - 12;
          v38 = std::__tree<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::__map_value_compare<apple3dgs::BlendingVariant,std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::less<apple3dgs::BlendingVariant>,true>,std::allocator<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>>>::__emplace_unique_key_args<apple3dgs::BlendingVariant,std::piecewise_construct_t const&,std::tuple<apple3dgs::BlendingVariant const&>,std::tuple<>>(a1, v13 - 12);
          v39 = v38[7];
          v38[7] = v37;

LABEL_20:
        }
      }

      else if (a7 && *a7)
      {
        v36 = _gs_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v40 = *a7;
          *buf = v44;
          *&buf[4] = v40;
          _os_log_impl(&dword_2473FC000, v36, OS_LOG_TYPE_ERROR, "[A3DGSR /Renderer.mm:300] Failed to build blending pipeline %@", buf, 0xCu);
        }

        goto LABEL_20;
      }

      v41 = v13 != v46 && v35 != 0;
      v13 += 12;
      if (!v41)
      {
        goto LABEL_33;
      }
    }
  }

  v49 = 1;
LABEL_33:

  v42 = *MEMORY[0x277D85DE8];
  return v49;
}

void apple3dgs::Renderer::CreateDeferredRenderPipeline(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = [v12 device];
  v15 = objc_alloc_init(MEMORY[0x277CD6F78]);
  if (v11 || (apple3dgs::GetDefaultArchive(v14, a5), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v34[0] = v11;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
    [v15 setBinaryArchives:v16];
  }

  [v15 setVertexFunction:v12];
  [v15 setFragmentFunction:v13];
  [v15 setRasterSampleCount:*(a1 + 56)];
  [v15 setLabel:@"A3DGS.DeferredRenderPipeline"];
  v17 = [v15 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript:0];

  [v18 setPixelFormat:115];
  [v18 setWriteMask:0];

  v19 = [v15 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript:1];

  [v20 setPixelFormat:55];
  [v20 setWriteMask:0];

  v21 = [v15 colorAttachments];
  v22 = [v21 objectAtIndexedSubscript:2];

  [v22 setPixelFormat:*(a1 + 40)];
  [v22 setBlendingEnabled:0];

  [v15 setMaxVertexAmplificationCount:2];
  [v15 setInputPrimitiveTopology:3];
  [v15 setDepthAttachmentPixelFormat:*(a1 + 48)];
  if (*(a1 + 48) == 260)
  {
    v23 = 260;
  }

  else
  {
    v23 = 0;
  }

  [v15 setStencilAttachmentPixelFormat:v23];
  if (*(a1 + 64))
  {
    v24 = 4;
  }

  else
  {
    v24 = 0;
  }

  v25 = [v14 newRenderPipelineStateWithDescriptor:v15 options:v24 reflection:0 error:a5];
  if (v25)
  {
    if (*(a1 + 48))
    {
      v26 = objc_alloc_init(MEMORY[0x277CD6D60]);
      [v26 setDepthWriteEnabled:1];
      [v26 setDepthCompareFunction:7];
      v27 = [v14 newDepthStencilStateWithDescriptor:v26];
    }

    else
    {
      v27 = 0;
    }

    *a6 = v25;
    *(a6 + 8) = v27;
    v30 = 1;
  }

  else
  {
    if (a5 && *a5)
    {
      v28 = _gs_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = *a5;
        v32 = 138412290;
        v33 = v29;
        _os_log_impl(&dword_2473FC000, v28, OS_LOG_TYPE_ERROR, "[A3DGSR /Renderer.mm:384] Failed to create a new rendering pipeline: %@", &v32, 0xCu);
      }
    }

    v30 = 0;
    *a6 = 0;
  }

  *(a6 + 16) = v30;

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t apple3dgs::Renderer::Renderer(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v57 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v53 = a6;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *a1 = a1 + 8;
  *(a1 + 32) = 0;
  *(a1 + 40) = a3;
  *(a1 + 48) = a4;
  *(a1 + 56) = a5;
  *(a1 + 64) = 0;
  v52 = apple3dgs::GetDefaultLibrary(v11, a6);
  if (v52)
  {
    v46 = a6;
    v48 = v11;
    v49 = a1;
    v47 = apple3dgs::GetDefaultArchive(v11, a6);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v45 = a4;
    v15 = a4 != 0;
    buf = 0uLL;
    v56 = 0;
    *v54 = 0x100000000;
    do
    {
      v16 = 0;
      v50 = v12;
      v17 = *&v54[v12];
      v51 = 256;
      do
      {
        v18 = *(&v51 + v16);
        v19 = v13 - v14;
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 2) + 1;
        if (v20 > 0x1555555555555555)
        {
LABEL_64:
          *(&buf + 1) = v13;
          v56 = 0;
          *&buf = v14;
          std::vector<char>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * (-v14 >> 2) > v20)
        {
          v20 = 0x5555555555555556 * (-v14 >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v14 >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v21 = 0x1555555555555555;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          if (v21 <= 0x1555555555555555)
          {
            operator new();
          }

          goto LABEL_65;
        }

        v22 = 4 * ((v13 - v14) >> 2);
        *v22 = 0;
        *(v22 + 4) = 0;
        *(v22 + 5) = v15;
        *(v22 + 6) = v18;
        *(v22 + 8) = v17;
        v13 = v22 + 12;
        v23 = v22 - v19;
        memcpy((v22 - v19), v14, v19);
        if (v14)
        {
          operator delete(v14);
        }

        v14 = v23;
        v24 = v13 - v23;
        v25 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v23) >> 2) + 1;
        if (v25 > 0x1555555555555555)
        {
          goto LABEL_64;
        }

        if (0x5555555555555556 * (-v23 >> 2) > v25)
        {
          v25 = 0x5555555555555556 * (-v23 >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v23 >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v26 = 0x1555555555555555;
        }

        else
        {
          v26 = v25;
        }

        if (v26)
        {
          if (v26 <= 0x1555555555555555)
          {
            operator new();
          }

          goto LABEL_65;
        }

        v27 = 4 * ((v13 - v23) >> 2);
        *v27 = 1;
        *(v27 + 4) = 0;
        *(v27 + 5) = v15;
        *(v27 + 6) = v18;
        *(v27 + 8) = v17;
        v13 = v27 + 12;
        v28 = v27 - v24;
        memcpy((v27 - v24), v14, v24);
        if (v14)
        {
          operator delete(v14);
        }

        v14 = v28;
        v29 = v13 - v28;
        v30 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v28) >> 2) + 1;
        if (v30 > 0x1555555555555555)
        {
          goto LABEL_64;
        }

        if (0x5555555555555556 * (-v28 >> 2) > v30)
        {
          v30 = 0x5555555555555556 * (-v28 >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v28 >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v31 = 0x1555555555555555;
        }

        else
        {
          v31 = v30;
        }

        if (v31)
        {
          if (v31 <= 0x1555555555555555)
          {
            operator new();
          }

          goto LABEL_65;
        }

        v32 = 4 * ((v13 - v28) >> 2);
        *v32 = 0;
        *(v32 + 4) = 1;
        *(v32 + 5) = v15;
        *(v32 + 6) = v18;
        *(v32 + 8) = v17;
        v13 = v32 + 12;
        v33 = v32 - v29;
        memcpy((v32 - v29), v14, v29);
        if (v14)
        {
          operator delete(v14);
        }

        v14 = v33;
        v34 = v13 - v33;
        v35 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v33) >> 2) + 1;
        if (v35 > 0x1555555555555555)
        {
          goto LABEL_64;
        }

        if (0x5555555555555556 * (-v33 >> 2) > v35)
        {
          v35 = 0x5555555555555556 * (-v33 >> 2);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v33 >> 2) >= 0xAAAAAAAAAAAAAAALL)
        {
          v36 = 0x1555555555555555;
        }

        else
        {
          v36 = v35;
        }

        if (v36)
        {
          if (v36 <= 0x1555555555555555)
          {
            operator new();
          }

LABEL_65:
          *(&buf + 1) = v13;
          v56 = 0;
          *&buf = v14;
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v37 = 4 * ((v13 - v33) >> 2);
        *v37 = 1;
        *(v37 + 4) = 1;
        *(v37 + 5) = v15;
        *(v37 + 6) = v18;
        *(v37 + 8) = v17;
        v13 = v37 + 12;
        v38 = (v37 + 12 * (v34 / -12));
        memcpy(v38, v14, v34);
        if (v14)
        {
          operator delete(v14);
        }

        v14 = v38;
        ++v16;
      }

      while (v16 != 2);
      v12 = v50 + 4;
    }

    while (v50 != 4);
    *(&buf + 1) = v13;
    v56 = 0;
    *&buf = v38;
    a1 = v49;
    v11 = v48;
    if (apple3dgs::Renderer::BuildBlendingPipeline(v49, v52, v47, &buf, a3, v45, v46, 0))
    {
      std::allocate_shared[abi:ne200100]<apple3dgs::PostAlphaBlend,std::allocator<apple3dgs::PostAlphaBlend>,objc_object  {objcproto10MTLLibrary}* {__strong}&,NSError * {__autoreleasing}*&,0>();
    }

    if (v46 && *v46)
    {
      v41 = _gs_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = *v46;
        *v54 = 138412290;
        *&v54[4] = v42;
        _os_log_impl(&dword_2473FC000, v41, OS_LOG_TYPE_ERROR, "[A3DGSR /Renderer.mm:198] Failed to build blending pipeline: %@", v54, 0xCu);
      }
    }

    if (v38)
    {
      *(&buf + 1) = v38;
      operator delete(v38);
    }

    v39 = v52;
  }

  else
  {
    v39 = _gs_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = *a6;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v40;
      _os_log_impl(&dword_2473FC000, v39, OS_LOG_TYPE_ERROR, "[A3DGSR /Renderer.mm:171] Failed to get DefaultLibrary from Metal: %@", &buf, 0xCu);
    }
  }

  v43 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_24745FE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (v20)
  {
    *(v23 - 104) = v20;
    operator delete(v20);
  }

  v25 = *(v21 + 32);
  if (v25)
  {
    if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
    }
  }

  std::__tree<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::__map_value_compare<apple3dgs::BlendingVariant,std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::less<apple3dgs::BlendingVariant>,true>,std::allocator<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>>>::destroy(v21, *(v21 + 8));

  _Unwind_Resume(a1);
}

id apple3dgs::Renderer::CreateRenderPassDescriptor(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = apple3dgs::details::CreateMemoryLessTexture(v7, 115, *(a1 + 56));
  v11 = apple3dgs::details::CreateMemoryLessTexture(v7, 55, *(a1 + 56));
  v12 = apple3dgs::Renderer::CreateRenderPassDescriptor(a1, v7, v8, v10, v11, v9);

  return v12;
}

id apple3dgs::Renderer::CreateRenderPassDescriptor(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_opt_new();
  v17 = [v16 colorAttachments];
  v18 = [v17 objectAtIndexedSubscript:0];

  [v18 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  [v18 setLoadAction:2];
  [v18 setStoreAction:0];
  [v18 setTexture:v13];

  v19 = [v16 colorAttachments];
  v20 = [v19 objectAtIndexedSubscript:1];

  [v20 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  [v20 setLoadAction:2];
  [v20 setStoreAction:0];
  [v20 setTexture:v14];

  v21 = [v16 colorAttachments];
  v22 = [v21 objectAtIndexedSubscript:2];

  [v22 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  [v22 setLoadAction:2];
  if (*(a1 + 56) < 2uLL)
  {
    [v22 setStoreAction:1];
    [v22 setTexture:v11];
  }

  else
  {
    [v22 setStoreAction:2];
    v23 = apple3dgs::details::CreateMemoryLessTexture(v11, [v11 pixelFormat], *(a1 + 56));
    [v22 setTexture:v23];

    [v22 setResolveTexture:v11];
  }

  if ([v12 pixelFormat])
  {
    v24 = [v16 depthAttachment];
    [v24 setLoadAction:2];
    [v24 setStoreAction:1];
    [v24 setClearDepth:0.0];
    if (*(a1 + 56) < 2uLL)
    {
      [v24 setTexture:v12];
      [v24 setStoreAction:1];
    }

    else
    {
      [v24 setStoreAction:2];
      v25 = apple3dgs::details::CreateMemoryLessTexture(v12, [v12 pixelFormat], *(a1 + 56));
      [v24 setTexture:v25];

      [v24 setResolveTexture:v12];
    }
  }

  if ([v12 pixelFormat] == 260)
  {
    v26 = [v16 stencilAttachment];
    [v26 setTexture:v12];
    [v26 setLoadAction:2];
    [v26 setStoreAction:1];
    [v26 setClearStencil:0];
  }

  [v16 setRasterizationRateMap:v15];
  [v16 setRenderTargetArrayLength:{objc_msgSend(v11, "arrayLength")}];

  return v16;
}

uint64_t apple3dgs::Renderer::UpdateSorterRange(uint64_t a1, void *a2, _DWORD *a3, float32x4_t *a4)
{
  v6 = a2;
  (*(*a3 + 16))(&v28, a3);
  if (a4[24].i8[0] == 1 && a3[33] == 0)
  {
    v11 = a4[12].f32[2];
    v12 = a4[11].f32[2];
    *&v13 = v11 / (1.0 - v12);
    *(&v13 + 1) = -v11 / v12;
    v27 = v13;
    v14 = v28;
    v15 = v29;
    while (v14 != v15)
    {
      apple3dgs::SortWorker::GetRenderingBuffers(*v14, v24);
      if ((v26 & 1) == 0)
      {
        v8 = 0;
        v9 = v28;
        if (v28)
        {
          goto LABEL_6;
        }

        goto LABEL_7;
      }

      v16 = a4[1];
      v17 = a4[2];
      v18 = a4[3];
      v19 = a4[4];
      v20 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*v25[50].f32)), v17, v25[50], 1), v18, *v25[50].f32, 2), v19, *v25[50].f32, 3);
      v21 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*v25[52].f32)), v17, v25[52], 1), v18, *v25[52].f32, 2), v19, *v25[52].f32, 3);
      v22 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*v25[54].f32)), v17, v25[54], 1), v18, *v25[54].f32, 2), v19, *v25[54].f32, 3);
      v23 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*v25[56].f32)), v17, v25[56], 1), v18, *v25[56].f32, 2), v19, *v25[56].f32, 3);
      apple3dgs::SortWorker::UpdateIndirectBuffer(*v14, v6);
      if (v26 == 1)
      {
        apple3dgs::SortWorker::RenderingBuffers::~RenderingBuffers(v24);
      }

      ++v14;
    }
  }

  v8 = 1;
  v9 = v28;
  if (v28)
  {
LABEL_6:
    v29 = v9;
    operator delete(v9);
  }

LABEL_7:

  return v8;
}

void sub_2474605D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a34 == 1)
  {
    apple3dgs::SortWorker::RenderingBuffers::~RenderingBuffers(&a18);
    v37 = *(v35 - 72);
    if (!v37)
    {
LABEL_3:

      _Unwind_Resume(a1);
    }
  }

  else
  {
    v37 = *(v35 - 72);
    if (!v37)
    {
      goto LABEL_3;
    }
  }

  *(v35 - 64) = v37;
  operator delete(v37);

  _Unwind_Resume(a1);
}

uint64_t apple3dgs::Renderer::EncodeRender(uint64_t *a1, void *a2, _DWORD *a3, void *a4, double *a5)
{
  v148 = *MEMORY[0x277D85DE8];
  v82 = a2;
  v7 = a4;
  v8 = *(a5 + 104);
  LODWORD(a4) = *(a5 + 384);
  v77 = v7;
  v9 = [v7 depthAttachment];
  v10 = [v9 texture];
  v11 = *(a5 + 107);
  v12 = *(a5 + 105);

  v76 = [v77 renderTargetArrayLength];
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v13 = 2 * a4;
  v14 = a1[1];
  if (!v14)
  {
LABEL_7:
    v17 = _gs_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v13 | (4 * (v10 != 0)) | (8 * (v11 == 1)) | (16 * (v12 == 0)) | v8;
      _os_log_impl(&dword_2473FC000, v17, OS_LOG_TYPE_ERROR, "[A3DGSR /Renderer.mm:531] Unable to find a blending pipeline for the requested variant: %u", buf, 8u);
    }

    v81 = 0;
    goto LABEL_10;
  }

  v15 = v13 | (4 * (v10 != 0)) | (8 * (v11 == 1)) | (16 * (v12 == 0)) | v8;
  while (1)
  {
    v16 = (8 * *(v14 + 38)) | (16 * (*(v14 + 10) == 0)) | (4 * *(v14 + 37)) | *(v14 + 8) | (2 * *(v14 + 36));
    if (v15 >= v16)
    {
      break;
    }

LABEL_3:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  if (v16 < v15)
  {
    ++v14;
    goto LABEL_3;
  }

  v20 = [v77 colorAttachments];
  v21 = [v20 objectAtIndexedSubscript:0];
  v17 = [v21 texture];

  v22 = [v17 width];
  v23 = [v17 height];
  (*(*a3 + 16))(&__p);
  v24 = __p;
  v79 = v94;
  if (__p == v94)
  {
    v81 = 1;
    if (!__p)
    {
      goto LABEL_10;
    }

LABEL_55:
    v94 = v24;
    operator delete(v24);
    goto LABEL_10;
  }

  v74 = __PAIR64__(v23, v22);
  v25.f32[0] = (v22 * v22);
  v25.f32[1] = (v23 * v23);
  v75 = v25;
  do
  {
    apple3dgs::SortWorker::GetRenderingBuffers(*v24, v85);
    v81 = v92;
    if (v92 == 1)
    {
      v26 = *a5;
      if (v26)
      {
        v27 = 0;
        v28 = *(v86 + 25);
        v29 = *(v86 + 26);
        v30 = *(v86 + 27);
        v31 = *(v86 + 28);
        v32 = vdupq_lane_s32(*v28.i8, 1);
        v33 = vdupq_laneq_s32(v28, 2);
        v34 = vdupq_laneq_s32(v28, 3);
        v35 = vdupq_lane_s32(*v29.i8, 1);
        v36 = vdupq_laneq_s32(v29, 2);
        v37 = vdupq_laneq_s32(v29, 3);
        v38 = vdupq_lane_s32(*v30.i8, 1);
        v39 = vdupq_laneq_s32(v30, 2);
        v40 = vdupq_laneq_s32(v30, 3);
        v41 = vdupq_lane_s32(*v31.i8, 1);
        v42 = vdupq_laneq_s32(v31, 2);
        v43 = vdupq_laneq_s32(v31, 3);
        do
        {
          v44 = (&v95 + v27);
          v45 = *&a5[v27 / 8 + 20];
          *v44 = *&a5[v27 / 8 + 18];
          v44[1] = v45;
          v46 = *&a5[v27 / 8 + 24];
          v44[2] = *&a5[v27 / 8 + 22];
          v44[3] = v46;
          v47 = *&a5[v27 / 8 + 2];
          v48 = *&a5[v27 / 8 + 4];
          v49 = *&a5[v27 / 8 + 6];
          v50 = *&a5[v27 / 8 + 8];
          v51 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v47, *v28.i32), v32, v48), v33, v49), v34, v50);
          v52 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v47, *v29.i32), v35, v48), v36, v49), v37, v50);
          v53 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v47, *v30.i32), v38, v48), v39, v49), v40, v50);
          v54 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v47, *v31.i32), v41, v48), v42, v49), v43, v50);
          v55 = (&v105 + v27);
          *(&v103 + v27) = v51;
          v55[-1] = v52;
          *v55 = v53;
          v55[1] = v54;
          v56 = *(&v95 + v27);
          v57 = *(&v95 + v27 + 16);
          v58 = *(&v97 + v27);
          v59 = *(&v98 + v27);
          v60 = (&v111 + v27);
          *v60 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, v51.f32[0]), v57, *v51.f32, 1), v58, v51, 2), v59, v51, 3);
          v60[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, v52.f32[0]), v57, *v52.f32, 1), v58, v52, 2), v59, v52, 3);
          v60[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, v53.f32[0]), v57, *v53.f32, 1), v58, v53, 2), v59, v53, 3);
          v60[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, v54.f32[0]), v57, *v54.f32, 1), v58, v54, 2), v59, v54, 3);
          v27 += 64;
        }

        while (v26 << 6 != v27);
      }

      v61 = (v86 + 33);
      v62 = vld1_dup_f32(v61);
      v63 = vdiv_f32(v62, v75);
      if (*(a5 + 104) == 1)
      {
        v64.i32[0] = vld2_f32(&v95).val[0].u32[0];
        v64.i32[1] = DWORD1(v96);
        v63 = vdiv_f32(v63, vmul_f32(v64, v64));
      }

      if (a5[36] > 0.0)
      {
        [v82 setViewports:a5 + 34 count:?];
        [v82 setVertexAmplificationCount:*a5 viewMappings:a5 + 46];
      }

      v65 = a1;
      do
      {
        v65 = v65[1];
        if (!v65)
        {
          goto LABEL_56;
        }

        while (1)
        {
          v66 = (8 * *(v65 + 38)) | (16 * (*(v65 + 10) == 0)) | (4 * *(v65 + 37)) | *(v65 + 8) | (2 * *(v65 + 36));
          if (v15 >= v66)
          {
            break;
          }

          v65 = *v65;
          if (!v65)
          {
            goto LABEL_56;
          }
        }
      }

      while (v66 < v15);
      [v82 setRenderPipelineState:v65[6]];
      v68 = a1[1];
      if (!v68)
      {
LABEL_56:
        std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
      }

      v69 = a1[1];
      while (1)
      {
        while (1)
        {
          v70 = (8 * *(v69 + 38)) | (16 * (*(v69 + 10) == 0)) | (4 * *(v69 + 37)) | *(v69 + 8) | (2 * *(v69 + 36));
          if (v15 >= v70)
          {
            break;
          }

          v69 = *v69;
          if (!v69)
          {
            goto LABEL_56;
          }
        }

        if (v70 >= v15)
        {
          break;
        }

        v69 = v69[1];
        if (!v69)
        {
          goto LABEL_56;
        }
      }

      if (v69[7])
      {
        while (1)
        {
          while (1)
          {
            v71 = (8 * *(v68 + 38)) | (16 * (*(v68 + 10) == 0)) | (4 * *(v68 + 37)) | *(v68 + 8) | (2 * *(v68 + 36));
            if (v15 >= v71)
            {
              break;
            }

            v68 = *v68;
            if (!v68)
            {
              goto LABEL_56;
            }
          }

          if (v71 >= v15)
          {
            break;
          }

          v68 = v68[1];
          if (!v68)
          {
            goto LABEL_56;
          }
        }

        [v82 setDepthStencilState:v68[7]];
      }

      [v82 setCullMode:0];
      [v82 setVertexBuffer:v90 offset:0 atIndex:0];
      [v82 setVertexBuffer:v87 offset:0 atIndex:1];
      v72 = v88;
      [v82 setVertexBuffer:v72 offset:0 atIndex:2];

      [v82 setVertexTexture:v89 atIndex:0];
      v123 = v107;
      v124 = v108;
      v125 = v109;
      v126 = v110;
      *buf = v103;
      v120 = v104;
      v121 = v105;
      v122 = v106;
      v129 = v97;
      v130 = v98;
      v127 = v95;
      v128 = v96;
      v133 = v101;
      v134 = v102;
      v131 = v99;
      v132 = v100;
      v137 = v113;
      v138 = v114;
      v135 = v111;
      v136 = v112;
      v141 = v117;
      v142 = v118;
      v139 = v115;
      v140 = v116;
      v143 = v63;
      v144 = v74;
      v145 = *(a5 + 108);
      v146 = v76;
      v147 = a3[33];
      v73 = *(a5 + 106);
      v83[0] = *(a5 + 109);
      v83[1] = v73;
      v84 = *(a5 + 55);
      [v82 setVertexBytes:buf length:416 atIndex:3];
      if (*(a5 + 384) == 1)
      {
        [v82 setVertexBytes:*(a5 + 49) length:*(a5 + 50) - *(a5 + 49) atIndex:4];
      }

      [v82 setFragmentBytes:v83 length:16 atIndex:0];
      [v82 drawPrimitives:4 indirectBuffer:v91 indirectBufferOffset:0];
    }

    else
    {
      v67 = _gs_log();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_2473FC000, v67, OS_LOG_TYPE_DEBUG, "[A3DGSR] sorter worker failed to get rendering buffers", buf, 2u);
      }
    }

    if (v92 == 1)
    {
      apple3dgs::SortWorker::RenderingBuffers::~RenderingBuffers(v85);
    }

    if (!v81)
    {
      break;
    }

    ++v24;
  }

  while (v24 != v79);
  v24 = __p;
  if (__p)
  {
    goto LABEL_55;
  }

LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
  return v81;
}

uint64_t apple3dgs::Renderer::EncodePostRender(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  v12 = a4;
  v13 = v12;
  if ((*(a5 + 384) & 1) == 0)
  {
    v17 = *(a5 + 424);
    LODWORD(v23) = *(a3 + 128);
    HIDWORD(v23) = v17;
    v14 = 1;
    goto LABEL_5;
  }

  v14 = [v12 renderTargetArrayLength];
  v15 = *(a5 + 424);
  LODWORD(v23) = *(a3 + 128);
  HIDWORD(v23) = v15;
  if (v14)
  {
LABEL_5:
    v18 = 1;
    do
    {
      if (*(a5 + 480))
      {
        v27 = v23;
        v26 = v11;
        v25 = v18 - 1;
        v24 = a6;
        v20 = *(a5 + 480);
        if (!v20)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v21 = (*(*v20 + 48))(v20, &v26, &v27, &v25, &v24);

        if ((v21 & 1) == 0)
        {
LABEL_13:
          v16 = 0;
          goto LABEL_14;
        }
      }

      else if (!(***(a1 + 24))(*(a1 + 24), v11, &v23, v18 - 1, a6))
      {
        goto LABEL_13;
      }
    }

    while (v14 > v18++);
  }

  v16 = 1;
LABEL_14:

  return v16;
}

uint64_t apple3dgs::Renderer::EncodeSplatting(uint64_t *a1, void *a2, _DWORD *a3, void *a4, double *a5, uint64_t a6)
{
  v11 = a2;
  v12 = a4;
  v13 = (*(*a3 + 8))(a3, v11);
  if (apple3dgs::Renderer::UpdateSorterRange(v13, v11, a3, a5))
  {
    v14 = [v11 renderCommandEncoderWithDescriptor:v12];
    [v14 setLabel:@"A3DGS.encodeRender"];
    if (apple3dgs::Renderer::EncodeRender(a1, v14, a3, v12, a5))
    {
      if (apple3dgs::Renderer::EncodePostRender(a1, v14, a3, v12, a5, a6))
      {
        [v14 endEncoding];
        v15 = 1;
LABEL_12:

        goto LABEL_13;
      }

      v16 = _gs_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v20 = 0;
        v17 = "[A3DGSR /Renderer.mm:690] Failed to encode post-renderer";
        v18 = &v20;
        goto LABEL_10;
      }
    }

    else
    {
      v16 = _gs_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v21 = 0;
        v17 = "[A3DGSR /Renderer.mm:684] Failed to encode renderer";
        v18 = &v21;
LABEL_10:
        _os_log_impl(&dword_2473FC000, v16, OS_LOG_TYPE_ERROR, v17, v18, 2u);
      }
    }

    [v14 endEncoding];
    v15 = 0;
    goto LABEL_12;
  }

  v15 = 0;
LABEL_13:

  return v15;
}

void sub_247461350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v16);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<apple3dgs::PostAlphaBlend>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28593E158;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A2010);
}

uint64_t apple3dgs::DeferredPass::DeferredPass(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a2;
  *a1 = &unk_28593E1A8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  v6 = [v5 newFunctionWithName:@"PostAlphaBlendVS"];
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;

  [*(a1 + 8) setLabel:@"A3DGS.DeferredPassVS"];
  if (*(a3 + 23) >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  v10 = [v5 newFunctionWithName:v9];
  v11 = *(a1 + 16);
  *(a1 + 16) = v10;

  [*(a1 + 16) setLabel:@"A3DGS.DeferredPassFS"];
  return a1;
}

void sub_2474614F4(_Unwind_Exception *a1)
{
  v4 = v3;

  apple3dgs::Asset::Derived::~Derived(v2 + 3);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::__map_value_compare<apple3dgs::BlendingVariant,std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::less<apple3dgs::BlendingVariant>,true>,std::allocator<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>>>::__emplace_unique_key_args<apple3dgs::BlendingVariant,std::piecewise_construct_t const&,std::tuple<apple3dgs::BlendingVariant const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  v3 = (8 * *(a2 + 6)) | (16 * (*(a2 + 8) == 0)) | (4 * *(a2 + 5)) | *a2 | (2 * *(a2 + 4));
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = (8 * *(v4 + 38)) | (16 * (*(v2 + 10) == 0)) | (4 * *(v4 + 37)) | *(v4 + 8) | (2 * *(v4 + 36));
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

apple3dgs::MultiLayerData *apple3dgs::MultiLayerData::MultiLayerData(apple3dgs::MultiLayerData *a1, void *a2, const MultiLayerOptions *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  *a1 = v9;
  *(a1 + 1) = 0;
  *(a1 + 2) = a4;
  *(a1 + 3) = a5;
  v10 = apple3dgs::MultiLayerData::GetHeapDescriptor(a1, a3);
  v11 = [v9 newHeapWithDescriptor:v10];
  v12 = *(a1 + 1);
  *(a1 + 1) = v11;

  return a1;
}

id apple3dgs::MultiLayerData::GetHeapDescriptor(apple3dgs::MultiLayerData *this, const MultiLayerOptions *a2)
{
  v4 = objc_opt_new();
  v5 = v4;
  v6 = *a2;
  if (!*a2)
  {
    v9 = _gs_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "[A3DGSR /MultiLayerRenderer.mm:95] Number of layers should be larger than 0";
      v11 = buf;
      goto LABEL_7;
    }

LABEL_8:

    v12 = 0;
    goto LABEL_15;
  }

  v7 = *(a2 + 3);
  v8 = v6 / v7;
  if (v6 % v7)
  {
    v9 = _gs_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v41 = 0;
      v10 = "[A3DGSR /MultiLayerRenderer.mm:100] Number of layers should be divisible by number of passes.";
      v11 = &v41;
LABEL_7:
      _os_log_impl(&dword_2473FC000, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v40 = *(a2 + 26);
  [v4 setHazardTrackingMode:2];
  v13 = *this;
  v14 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:*(this + 2) width:v40 height:HIDWORD(v40) mipmapped:0];
  [v14 setUsage:5];
  [v14 setStorageMode:2];
  [v5 setSize:{objc_msgSend(v5, "size") + objc_msgSend(v13, "heapTextureSizeAndAlignWithDescriptor:", v14)}];

  v15 = *this;
  v16 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:*(this + 3) width:v40 height:HIDWORD(v40) mipmapped:0];
  [v16 setUsage:5];
  [v16 setStorageMode:2];
  [v5 setSize:{objc_msgSend(v5, "size") + objc_msgSend(v15, "heapTextureSizeAndAlignWithDescriptor:", v16)}];

  v17 = *this;
  v18 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:25 width:v40 height:HIDWORD(v40) mipmapped:0];
  [v18 setUsage:3];
  [v18 setStorageMode:2];
  [v5 setSize:{objc_msgSend(v5, "size") + objc_msgSend(v17, "heapTextureSizeAndAlignWithDescriptor:", v18)}];

  v19 = *this;
  v20 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:25 width:v40 height:HIDWORD(v40) mipmapped:0];
  [v20 setUsage:3];
  [v20 setStorageMode:2];
  [v5 setSize:{objc_msgSend(v5, "size") + objc_msgSend(v19, "heapTextureSizeAndAlignWithDescriptor:", v20)}];

  v21 = *this;
  v22 = apple3dgs::MultiLayerData::GetRGBAArrayDescriptor(this, v40, HIDWORD(v40), v8);
  [v5 setSize:{objc_msgSend(v5, "size") + objc_msgSend(v21, "heapTextureSizeAndAlignWithDescriptor:", v22)}];

  v23 = *this;
  v24 = apple3dgs::MultiLayerData::GetDepthArrayDescriptor(this, v40, HIDWORD(v40), v8);
  [v5 setSize:{objc_msgSend(v5, "size") + objc_msgSend(v23, "heapTextureSizeAndAlignWithDescriptor:", v24)}];

  v25 = *this;
  v26 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:55 width:v40 height:HIDWORD(v40) mipmapped:0];
  [v26 setUsage:3];
  [v26 setStorageMode:2];
  [v5 setSize:{objc_msgSend(v5, "size") + objc_msgSend(v25, "heapTextureSizeAndAlignWithDescriptor:", v26)}];

  if (*(a2 + 16) == 1 && *(a2 + 17) == 1)
  {
    v27 = *this;
    v28 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:55 width:v40 height:HIDWORD(v40) mipmapped:0];
    [v28 setUsage:3];
    [v28 setStorageMode:2];
    [v5 setSize:{objc_msgSend(v5, "size") + objc_msgSend(v27, "heapTextureSizeAndAlignWithDescriptor:", v28)}];
  }

  if ((*(a2 + 232) & 1) == 0)
  {
    v29 = *this;
    v30 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:v40 height:HIDWORD(v40) mipmapped:0];
    [v30 setUsage:5];
    [v30 setStorageMode:2];
    [v5 setSize:{objc_msgSend(v5, "size") + objc_msgSend(v29, "heapTextureSizeAndAlignWithDescriptor:", v30)}];

    v31 = *this;
    v32 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:55 width:v40 height:HIDWORD(v40) mipmapped:0];
    [v32 setUsage:5];
    [v32 setStorageMode:2];
    [v5 setSize:{objc_msgSend(v5, "size") + objc_msgSend(v31, "heapTextureSizeAndAlignWithDescriptor:", v32)}];

    v33 = *this;
    v35 = apple3dgs::MultiLayerData::GetRGBAIntermediateArrayDescriptor(v34, v40, HIDWORD(v40), v8);
    [v5 setSize:{objc_msgSend(v5, "size") + objc_msgSend(v33, "heapTextureSizeAndAlignWithDescriptor:", v35)}];

    v36 = *this;
    v38 = apple3dgs::MultiLayerData::GetDepthIntermediateArrayDescriptor(v37, v40, HIDWORD(v40), v8);
    [v5 setSize:{objc_msgSend(v5, "size") + objc_msgSend(v36, "heapTextureSizeAndAlignWithDescriptor:", v38)}];
  }

  v12 = v5;
LABEL_15:

  return v12;
}

id apple3dgs::MultiLayerData::GetRenderedRGBDescriptor(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3)
{
  v3 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:*(this + 2) width:a2 height:a3 mipmapped:0];
  [v3 setUsage:5];
  [v3 setStorageMode:2];

  return v3;
}

id apple3dgs::MultiLayerData::GetRenderedDepthDescriptor(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3)
{
  v3 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:*(this + 3) width:a2 height:a3 mipmapped:0];
  [v3 setUsage:5];
  [v3 setStorageMode:2];

  return v3;
}

id apple3dgs::MultiLayerData::GetRefinementWeightmapDescriptor(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3)
{
  v3 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:25 width:a2 height:a3 mipmapped:0];
  [v3 setUsage:3];
  [v3 setStorageMode:2];

  return v3;
}

id apple3dgs::MultiLayerData::GetRGBAArrayDescriptor(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v5 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:*(this + 2) width:a2 height:a3 mipmapped:0];
  [v5 setUsage:23];
  [v5 setStorageMode:2];
  [v5 setArrayLength:a4];
  [v5 setTextureType:3];

  return v5;
}

id apple3dgs::MultiLayerData::GetDepthArrayDescriptor(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v5 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:*(this + 3) width:a2 height:a3 mipmapped:0];
  [v5 setUsage:23];
  [v5 setStorageMode:2];
  [v5 setArrayLength:a4];
  [v5 setTextureType:3];

  return v5;
}

id apple3dgs::MultiLayerData::GetTransmittanceDescriptor(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3)
{
  v3 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:55 width:a2 height:a3 mipmapped:0];
  [v3 setUsage:3];
  [v3 setStorageMode:2];

  return v3;
}

id apple3dgs::MultiLayerData::GetRealDepthDescriptor(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3)
{
  v3 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:55 width:a2 height:a3 mipmapped:0];
  [v3 setUsage:3];
  [v3 setStorageMode:2];

  return v3;
}

id apple3dgs::MultiLayerData::GetRGBAIntermediateDescriptor(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3)
{
  v3 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:a2 height:a3 mipmapped:0];
  [v3 setUsage:5];
  [v3 setStorageMode:2];

  return v3;
}

id apple3dgs::MultiLayerData::GetDepthIntermediateDescriptor(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3)
{
  v3 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:55 width:a2 height:a3 mipmapped:0];
  [v3 setUsage:5];
  [v3 setStorageMode:2];

  return v3;
}

id apple3dgs::MultiLayerData::GetRGBAIntermediateArrayDescriptor(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v5 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:a2 height:a3 mipmapped:0];
  [v5 setUsage:5];
  [v5 setStorageMode:2];
  [v5 setArrayLength:a4];
  [v5 setTextureType:3];

  return v5;
}

id apple3dgs::MultiLayerData::GetDepthIntermediateArrayDescriptor(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v5 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:55 width:a2 height:a3 mipmapped:0];
  [v5 setUsage:5];
  [v5 setStorageMode:2];
  [v5 setArrayLength:a4];
  [v5 setTextureType:3];

  return v5;
}

id apple3dgs::MultiLayerData::GetTexture2DDescriptor(apple3dgs::MultiLayerData *this, unsigned int a2, uint64_t a3, MTLPixelFormat a4)
{
  v5 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:a3 width:this height:a2 mipmapped:0];
  [v5 setUsage:a4];
  [v5 setStorageMode:2];

  return v5;
}

id apple3dgs::MultiLayerData::GetTexture2DArrayDescriptor(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3, uint64_t a4, MTLPixelFormat a5)
{
  v7 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:a4 width:this height:a2 mipmapped:0];
  [v7 setUsage:a5];
  [v7 setStorageMode:2];
  [v7 setArrayLength:a3];
  [v7 setTextureType:3];

  return v7;
}

id apple3dgs::MultiLayerData::GetRenderedRGB(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 1);
  v4 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:*(this + 2) width:a2 height:a3 mipmapped:0];
  [v4 setUsage:5];
  [v4 setStorageMode:2];
  v5 = [v3 newTextureWithDescriptor:v4];

  return v5;
}

id apple3dgs::MultiLayerData::GetRenderedDepth(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 1);
  v4 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:*(this + 3) width:a2 height:a3 mipmapped:0];
  [v4 setUsage:5];
  [v4 setStorageMode:2];
  v5 = [v3 newTextureWithDescriptor:v4];

  return v5;
}

id apple3dgs::MultiLayerData::GetRefinementWeightmap(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 1);
  v4 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:25 width:a2 height:a3 mipmapped:0];
  [v4 setUsage:3];
  [v4 setStorageMode:2];
  v5 = [v3 newTextureWithDescriptor:v4];

  return v5;
}

id apple3dgs::MultiLayerData::GetRealDepth(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 1);
  v4 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:55 width:a2 height:a3 mipmapped:0];
  [v4 setUsage:3];
  [v4 setStorageMode:2];
  v5 = [v3 newTextureWithDescriptor:v4];

  return v5;
}

id apple3dgs::MultiLayerData::GetTransmittance(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 1);
  v4 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:55 width:a2 height:a3 mipmapped:0];
  [v4 setUsage:3];
  [v4 setStorageMode:2];
  v5 = [v3 newTextureWithDescriptor:v4];

  return v5;
}

id apple3dgs::MultiLayerData::GetColorArray(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = *(this + 1);
  v5 = apple3dgs::MultiLayerData::GetRGBAArrayDescriptor(this, a2, a3, a4);
  v6 = [v4 newTextureWithDescriptor:v5];

  return v6;
}

id apple3dgs::MultiLayerData::GetDepthArray(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = *(this + 1);
  v5 = apple3dgs::MultiLayerData::GetDepthArrayDescriptor(this, a2, a3, a4);
  v6 = [v4 newTextureWithDescriptor:v5];

  return v6;
}

id apple3dgs::MultiLayerData::GetColorIntermediate(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 1);
  v4 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:a2 height:a3 mipmapped:0];
  [v4 setUsage:5];
  [v4 setStorageMode:2];
  v5 = [v3 newTextureWithDescriptor:v4];

  return v5;
}

id apple3dgs::MultiLayerData::GetDepthIntermediate(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 1);
  v4 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:55 width:a2 height:a3 mipmapped:0];
  [v4 setUsage:5];
  [v4 setStorageMode:2];
  v5 = [v3 newTextureWithDescriptor:v4];

  return v5;
}

id apple3dgs::MultiLayerData::GetColorArrayIntermediate(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = *(this + 1);
  v5 = apple3dgs::MultiLayerData::GetRGBAIntermediateArrayDescriptor(this, a2, a3, a4);
  v6 = [v4 newTextureWithDescriptor:v5];

  return v6;
}

id apple3dgs::MultiLayerData::GetDepthArrayIntermediate(apple3dgs::MultiLayerData *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = *(this + 1);
  v5 = apple3dgs::MultiLayerData::GetDepthIntermediateArrayDescriptor(this, a2, a3, a4);
  v6 = [v4 newTextureWithDescriptor:v5];

  return v6;
}

void apple3dgs::MultiLayerRenderer::MultiLayerRenderer(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  *a1 = v7;
  MetalContext::MetalContext(a1 + 1, v7, 0);
  a1[16] = a3;
  a1[17] = a4;
  operator new();
}

void sub_24746377C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  std::mutex::~mutex((v18 + 576));
  std::condition_variable::~condition_variable((v18 + 528));
  std::thread::~thread((v18 + 520));
  std::unique_ptr<apple3dgs::MultiLayerData>::~unique_ptr[abi:ne200100]((v18 + 512));
  apple3dgs::UniqueSorter::~UniqueSorter((v18 + 352));
  apple3dgs::Refiner::~Refiner(v21);
  apple3dgs::Renderer::~Renderer((v18 + 144));
  MetalContext::~MetalContext(v20);

  _Unwind_Resume(a1);
}

id **std::unique_ptr<apple3dgs::MultiLayerData>::~unique_ptr[abi:ne200100](id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;

    MEMORY[0x24C1A2010](v1, 0x1080C404FE48876);
    return v2;
  }

  return result;
}

void apple3dgs::UniqueSorter::~UniqueSorter(apple3dgs::UniqueSorter *this)
{
  *this = &unk_28593E2F0;
  v2 = *(this + 19);
  *(this + 19) = 0;
  if (v2)
  {
    apple3dgs::SortWorker::~SortWorker(v2);
    MEMORY[0x24C1A2010]();
  }

  *this = &unk_28593E1F0;
  MetalContext::~MetalContext((this + 8));
}

{
  *this = &unk_28593E2F0;
  v2 = *(this + 19);
  *(this + 19) = 0;
  if (v2)
  {
    apple3dgs::SortWorker::~SortWorker(v2);
    MEMORY[0x24C1A2010]();
  }

  *this = &unk_28593E1F0;
  MetalContext::~MetalContext((this + 8));

  JUMPOUT(0x24C1A2010);
}

void apple3dgs::Refiner::~Refiner(id *this)
{
}

{

  JUMPOUT(0x24C1A2010);
}

void apple3dgs::Renderer::~Renderer(apple3dgs::Renderer *this)
{
  v1 = *(this + 4);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  std::__tree<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::__map_value_compare<apple3dgs::BlendingVariant,std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::less<apple3dgs::BlendingVariant>,true>,std::allocator<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>>>::destroy(this, *(this + 1));
}

void apple3dgs::MultiLayerRenderer::MultiLayerRenderer(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  *a1 = v9;
  MetalContext::MetalContext(a1 + 1, v9, *(a3 + 233));
  a1[16] = a4;
  a1[17] = a5;
  if (*(a3 + 4) == 1)
  {
    __p = 0;
    v11 = 0;
    v12 = 0;
    operator new();
  }

  __p = 0;
  v11 = 0;
  v12 = 0;
  operator new();
}

void sub_247463D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::mutex::~mutex((v14 + 576));
  std::condition_variable::~condition_variable((v14 + 528));
  std::thread::~thread((v14 + 520));
  std::unique_ptr<apple3dgs::MultiLayerData>::~unique_ptr[abi:ne200100]((v14 + 512));
  apple3dgs::UniqueSorter::~UniqueSorter((v14 + 352));
  apple3dgs::Refiner::~Refiner(v17);
  apple3dgs::Renderer::~Renderer((v14 + 144));
  MetalContext::~MetalContext(v16);

  _Unwind_Resume(a1);
}

void sub_247463DA0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x247463D84);
}

void apple3dgs::MultiLayerRenderer::CheckAlloc(apple3dgs::MultiLayerRenderer *this, const MultiLayerOptions *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(this + 64);
  if (!v3 || (v4 = [v3[1] size], apple3dgs::MultiLayerData::GetHeapDescriptor(v3, a2), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "size"), v5, v4 < v6))
  {
    operator new();
  }

  v7 = *MEMORY[0x277D85DE8];
}

void apple3dgs::MultiLayerRenderer::~MultiLayerRenderer(apple3dgs::MultiLayerRenderer *this)
{
  std::mutex::lock(this + 9);
  *(this + 640) = 0;
  std::mutex::unlock(this + 9);
  std::condition_variable::notify_all(this + 11);
  if (*(this + 65))
  {
    std::thread::join(this + 65);
  }

  std::mutex::~mutex(this + 9);
  std::condition_variable::~condition_variable(this + 11);
  std::thread::~thread(this + 65);
  v2 = *(this + 64);
  *(this + 64) = 0;
  if (v2)
  {

    MEMORY[0x24C1A2010](v2, 0x1080C404FE48876);
  }

  *(this + 44) = &unk_28593E2F0;
  v3 = *(this + 63);
  *(this + 63) = 0;
  if (v3)
  {
    apple3dgs::SortWorker::~SortWorker(v3);
    MEMORY[0x24C1A2010]();
  }

  *(this + 44) = &unk_28593E1F0;
  MetalContext::~MetalContext(this + 3);

  v4 = *(this + 22);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  std::__tree<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::__map_value_compare<apple3dgs::BlendingVariant,std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>,std::less<apple3dgs::BlendingVariant>,true>,std::allocator<std::__value_type<apple3dgs::BlendingVariant,apple3dgs::RenderPipeline>>>::destroy(this + 144, *(this + 19));
  MetalContext::~MetalContext((this + 8));
}

void apple3dgs::MultiLayerRenderer::StopWarmUpThread(apple3dgs::MultiLayerRenderer *this)
{
  std::mutex::lock(this + 9);
  *(this + 640) = 0;
  std::mutex::unlock(this + 9);
  std::condition_variable::notify_all(this + 11);
  if (*(this + 65))
  {

    std::thread::join(this + 65);
  }
}

BOOL apple3dgs::MultiLayerRenderer::Render(apple3dgs::MultiLayerData **a1, void *a2, const std::__fs::filesystem::path **a3, uint64_t a4)
{
  v92[19] = *MEMORY[0x277D85DE8];
  v74 = a2;
  v7 = objc_autoreleasePoolPush();
  v8 = apple3dgs::UserDefaults::Get<BOOL>(@"WritePLY");
  if ((v8 & 0x100) != 0 && (v8 & 1) != 0 && *a3)
  {
    v9 = apple3dgs::GetTemporaryDirectory(v8);
    v10 = MEMORY[0x277CCACA8];
    v11 = [(*a3)[5].__pn_.__r_.__value_.__l.__data_ UUIDString];
    v12 = [v10 stringWithFormat:@"baking-input-%@.ply", v11];

    v13 = [v9 stringByAppendingPathComponent:v12];

    v14 = [v13 UTF8String];
    memset(&__p, 0, sizeof(__p));
    v15 = (v14 - 1);
    do
    {
      v16 = v15->__r_.__value_.__s.__data_[1];
      v15 = (v15 + 1);
    }

    while (v16);
    std::string::append[abi:ne200100]<char const*,0>(&__p, v14, v15);
    apple3dgs::savePly(&__p, *a3, v17);
  }

  v18 = apple3dgs::UserDefaults::Get<BOOL>(@"EnableCallback");
  if ((v18 & 0x100) != 0)
  {
    v19 = v18;
    *(a4 + 244) = v18;
    v20 = _gs_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v19;
      _os_log_impl(&dword_2473FC000, v20, OS_LOG_TYPE_DEBUG, "[A3DGSR] EnableCallback: %d{BOOL}\n", &__p, 8u);
    }
  }

  v21 = apple3dgs::UserDefaults::Get<int>(@"AdaptiveLayerSamplingMethod");
  if ((v21 & 0x100000000) != 0)
  {
    *(a4 + 240) = v21;
    v22 = _gs_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a4 + 240);
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v23;
      _os_log_impl(&dword_2473FC000, v22, OS_LOG_TYPE_DEBUG, "[A3DGSR] AdaptiveLayerSamplingMethod: %d\n", &__p, 8u);
    }
  }

  v24 = apple3dgs::UserDefaults::Get<float>(@"NDCOverlapFactor");
  if ((v24 & 0x100000000) != 0)
  {
    *(a4 + 24) = v24;
    v25 = _gs_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(a4 + 24);
      LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
      *(__p.__r_.__value_.__r.__words + 4) = v26;
      _os_log_impl(&dword_2473FC000, v25, OS_LOG_TYPE_DEBUG, "[A3DGSR] NDCOverlapFactor: %f\n", &__p, 0xCu);
    }
  }

  if (*(a4 + 24) > 0.0)
  {
    v27 = _gs_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_2473FC000, v27, OS_LOG_TYPE_DEFAULT, "[A3DGSR] Overlap is enabled, using one pass per layer", &__p, 2u);
    }

    *(a4 + 12) = *a4;
  }

  v71 = *(a4 + 208);
  v28 = _gs_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = (*a3)[22].__pn_.__r_.__value_.__r.__words[2];
    LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = v29;
    _os_log_impl(&dword_2473FC000, v28, OS_LOG_TYPE_DEFAULT, "[A3DGSR] Rendering asset with %d splats", &__p, 8u);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&__p);
  apple3dgs::operator<<(&__p.__r_.__value_.__r.__words[2], a4);
  v30 = _gs_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    if ((v91 & 0x10) != 0)
    {
      v32 = v90;
      if (v90 < v87)
      {
        v90 = v87;
        v32 = v87;
      }

      v33 = v86;
      v31 = v32 - v86;
      if (v32 - v86 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if ((v91 & 8) == 0)
      {
        v31 = 0;
        v78 = 0;
LABEL_37:
        __dst[v31] = 0;
        v34 = __dst;
        if (v78 < 0)
        {
          v34 = *__dst;
        }

        buf = 136315138;
        *buf_4 = v34;
        _os_log_impl(&dword_2473FC000, v30, OS_LOG_TYPE_DEFAULT, "[A3DGSR] MultiLayerRenderer options: \n%s", &buf, 0xCu);
        if (v78 < 0)
        {
          operator delete(*__dst);
        }

        goto LABEL_41;
      }

      v33 = v84;
      v31 = v85 - v84;
      if ((v85 - v84) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_61:
        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    v78 = v31;
    if (v31)
    {
      memmove(__dst, v33, v31);
    }

    goto LABEL_37;
  }

LABEL_41:

  __p.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v35 = *(MEMORY[0x277D82818] + 72);
  *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  __p.__r_.__value_.__r.__words[2] = v35;
  v82 = MEMORY[0x277D82878] + 16;
  if (v89 < 0)
  {
    operator delete(v88);
  }

  v82 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v83);
  std::iostream::~basic_iostream();
  MEMORY[0x24C1A1F80](v92);
  apple3dgs::MultiLayerRenderer::CheckAlloc(a1, a4);
  v36 = *a4;
  if (!*a4)
  {
    v39 = _gs_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_2473FC000, v39, OS_LOG_TYPE_ERROR, "[A3DGSR /MultiLayerRenderer.mm:450] Number of layers should be larger than 0", &__p, 2u);
    }

    goto LABEL_64;
  }

  v37 = *(a4 + 12);
  v38 = v36 / v37;
  if (v36 % v37)
  {
    v39 = _gs_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_2473FC000, v39, OS_LOG_TYPE_ERROR, "[A3DGSR /MultiLayerRenderer.mm:456] Number of layers should be divisible by number of passes.", &__p, 2u);
    }

LABEL_64:

    v73 = 0;
    goto LABEL_65;
  }

  v40 = _gs_log();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = v38;
    _os_log_impl(&dword_2473FC000, v40, OS_LOG_TYPE_DEFAULT, "[A3DGSR] Each pass has %d sublayers.", &__p, 8u);
  }

  v41 = *(a4 + 208);
  if (!v41 || !HIDWORD(v41))
  {
    v39 = _gs_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_2473FC000, v39, OS_LOG_TYPE_ERROR, "[A3DGSR /MultiLayerRenderer.mm:463] Image size should be larger than 0", &__p, 2u);
    }

    goto LABEL_64;
  }

  v42 = *(a4 + 224);
  memset(&__p, 0, sizeof(__p));
  v82 = *(a4 + 216);
  v43 = *(&v82 + 1);
  v68 = *&v82;
  v73 = *(&v82 + 1) > *&v82;
  if (*(&v82 + 1) > *&v82)
  {
    v67 = v42;
    v44 = v71;
    v45 = HIDWORD(v71);
    v72 = apple3dgs::MultiLayerData::GetRenderedRGB(a1[64], v71, HIDWORD(v71));
    v70 = apple3dgs::MultiLayerData::GetRenderedDepth(a1[64], v44, v45);
    [(apple3dgs::MultiLayerData *)*a1 newBufferWithLength:2 * v44 * v45 options:0];
    if (v67)
    {
      apple3dgs::MultiLayerData::GetRefinementWeightmap(a1[64], v44, v45);
      objc_claimAutoreleasedReturnValue();
      apple3dgs::MultiLayerData::GetRefinementWeightmap(a1[64], v44, v45);
      objc_claimAutoreleasedReturnValue();
      if (*(a4 + 16) != 1)
      {
        goto LABEL_72;
      }
    }

    else if (*(a4 + 16) != 1)
    {
      goto LABEL_72;
    }

    if (*(a4 + 17) == 1)
    {
      apple3dgs::MultiLayerData::GetRealDepth(a1[64], v44, v45);
      objc_claimAutoreleasedReturnValue();
    }

LABEL_72:
    __p.__r_.__value_.__r.__words[2] = apple3dgs::MultiLayerData::GetTransmittance(a1[64], v44, v45);
    v50 = a1[64];
    v51 = *(v50 + 1);
    v52 = apple3dgs::MultiLayerData::GetRGBAArrayDescriptor(v50, v44, v45, v38);
    v53 = [v51 newTextureWithDescriptor:v52];

    __p.__r_.__value_.__r.__words[0] = v53;
    v54 = a1[64];
    v55 = *(v54 + 1);
    v56 = apple3dgs::MultiLayerData::GetDepthArrayDescriptor(v54, v44, v45, v38);
    v69 = [v55 newTextureWithDescriptor:v56];

    __p.__r_.__value_.__l.__size_ = v69;
    if (*(a4 + 232) == 1)
    {
      apple3dgs::Renderer::CreateRenderPassDescriptor((a1 + 18), v72, v70, 0);
      objc_claimAutoreleasedReturnValue();
    }

    else
    {
      v57 = apple3dgs::MultiLayerData::GetColorIntermediate(a1[64], v44, v45);
      v58 = apple3dgs::MultiLayerData::GetDepthIntermediate(a1[64], v44, v45);
      apple3dgs::Renderer::CreateRenderPassDescriptor((a1 + 18), v72, v70, v57, v58, 0);
      objc_claimAutoreleasedReturnValue();
    }

    v59.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    if (*(a4 + 232) == 1)
    {
      apple3dgs::Renderer::CreateRenderPassDescriptor((a1 + 18), v53, v69, 0);
      objc_claimAutoreleasedReturnValue();
    }

    else
    {
      v60 = *(a1[64] + 1);
      v61 = apple3dgs::MultiLayerData::GetRGBAIntermediateArrayDescriptor(v59.__d_.__rep_, v44, v45, v38);
      v62 = [v60 newTextureWithDescriptor:v61];

      v63 = *(a1[64] + 1);
      v65 = apple3dgs::MultiLayerData::GetDepthIntermediateArrayDescriptor(v64, v44, v45, v38);
      v66 = [v63 newTextureWithDescriptor:v65];

      apple3dgs::Renderer::CreateRenderPassDescriptor((a1 + 18), v53, v69, v62, v66, 0);
      objc_claimAutoreleasedReturnValue();
    }

    operator new();
  }

  v48 = _gs_log();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    *__dst = 134218240;
    *&__dst[4] = v68;
    v76 = 2048;
    v77 = v43;
    _os_log_impl(&dword_2473FC000, v48, OS_LOG_TYPE_ERROR, "[A3DGSR /MultiLayerRenderer.mm:476] Provided option's near far plane are invalid: near %.2f, far %.2f", __dst, 0x16u);
  }

LABEL_65:
  objc_autoreleasePoolPop(v7);

  v46 = *MEMORY[0x277D85DE8];
  return v73;
}

void sub_2474654DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, void *a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, char a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  std::shared_ptr<apple3dgs::Asset>::~shared_ptr[abi:ne200100](&a47);
  std::shared_ptr<apple3dgs::Asset>::~shared_ptr[abi:ne200100](&a49);
  std::function<void ()(objc_object  {objcproto16MTLCommandBuffer}*,unsigned int,apple3dgs::ConvertMXIFace,objc_object  {objcproto10MTLTexture}*,objc_object,simd::float4x4)>::~function(&a63);
  std::shared_ptr<apple3dgs::Asset>::~shared_ptr[abi:ne200100](&a51);
  std::shared_ptr<apple3dgs::Asset>::~shared_ptr[abi:ne200100](&a54);
  std::unordered_map<apple3dgs::ConvertMXIFace,simd::float4x4>::~unordered_map[abi:ne200100](&a67);
  std::shared_ptr<apple3dgs::Asset>::~shared_ptr[abi:ne200100](&STACK[0x200]);

  apple3dgs::DenseMPI::~DenseMPI(&STACK[0x210]);
  _Unwind_Resume(a1);
}

uint64_t apple3dgs::UserDefaults::Get<BOOL>(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.apple3dgs"];
  v3 = [v2 objectForKey:v1];

  if (v3)
  {
    LODWORD(v3) = [v2 BOOLForKey:v1];
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return v3 | (v4 << 8);
}

uint64_t apple3dgs::UserDefaults::Get<int>(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.apple3dgs"];
  v3 = [v2 objectForKey:v1];

  if (v3)
  {
    v4 = [v2 integerForKey:v1];
    v3 = v4 & 0xFFFFFF00;
    v5 = v4;
    v6 = 0x100000000;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5 | v3;
}

uint64_t apple3dgs::UserDefaults::Get<float>(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.apple3dgs"];
  v3 = [v2 objectForKey:v1];

  if (v3)
  {
    [v2 floatForKey:v1];
    v3 = v4 & 0xFFFFFF00;
    v5 = v4;
    v6 = 0x100000000;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5 | v3;
}

__n128 apple3dgs::GetCubMapPoses@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v3 = vrsqrte_f32(1065353216);
  v4 = vmul_f32(v3, vrsqrts_f32(1065353216, vmul_f32(v3, v3)));
  LODWORD(v57) = vmul_f32(v4, vrsqrts_f32(1065353216, vmul_f32(v4, v4))).u32[0];
  v59 = 0;
  v60 = &v59;
  v5 = std::__hash_table<std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>,std::__unordered_map_hasher<apple3dgs::ConvertMXIFace,std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>,std::hash<apple3dgs::ConvertMXIFace>,std::equal_to<apple3dgs::ConvertMXIFace>,true>,std::__unordered_map_equal<apple3dgs::ConvertMXIFace,std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>,std::equal_to<apple3dgs::ConvertMXIFace>,std::hash<apple3dgs::ConvertMXIFace>,true>,std::allocator<std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>>>::__emplace_unique_key_args<apple3dgs::ConvertMXIFace,std::piecewise_construct_t const&,std::tuple<apple3dgs::ConvertMXIFace&&>,std::tuple<>>(a1, &v59);
  v6 = vmulq_n_f32(xmmword_247477BA0, v57);
  v7 = v6.f32[1];
  v8 = v6.f32[2];
  v9 = vmuls_lane_f32(v6.f32[0], *v6.f32, 1);
  v10 = vmuls_lane_f32(v6.f32[0], v6, 2);
  v11 = vmuls_lane_f32(v6.f32[1], *v6.f32, 1);
  v12 = vmuls_lane_f32(v6.f32[2], *v6.f32, 1);
  v13 = vmuls_lane_f32(v6.f32[2], v6, 2);
  v14 = v6.f32[1] * -0.000000087423;
  v54 = v6.f32[0];
  v55 = vmulq_f32(v6, v6).f32[0];
  v6.f32[0] = v6.f32[0] * -0.000000087423;
  HIDWORD(v15) = 0;
  *&v15 = (v6.f32[1] * -0.000000087423) + (v10 * 2.0);
  *(&v15 + 1) = -(v6.f32[0] - (v12 * 2.0));
  *(&v15 + 2) = (v13 * 2.0) + -1.0;
  HIDWORD(v16) = 0;
  *&v16 = -((v6.f32[2] * -0.000000087423) - (v9 * 2.0));
  *(&v16 + 1) = (v11 * 2.0) + -1.0;
  *(&v16 + 2) = v6.f32[0] + (v12 * 2.0);
  v6.i32[3] = 0;
  v6.f32[0] = (v55 * 2.0) + -1.0;
  v6.f32[1] = (v6.f32[2] * -0.000000087423) + (v9 * 2.0);
  v6.f32[2] = -(v14 - (v10 * 2.0));
  *(v5 + 2) = v6;
  *(v5 + 3) = v16;
  *(v5 + 4) = v15;
  *(v5 + 5) = xmmword_247477BC0;
  v59 = 1;
  v60 = &v59;
  v17 = std::__hash_table<std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>,std::__unordered_map_hasher<apple3dgs::ConvertMXIFace,std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>,std::hash<apple3dgs::ConvertMXIFace>,std::equal_to<apple3dgs::ConvertMXIFace>,true>,std::__unordered_map_equal<apple3dgs::ConvertMXIFace,std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>,std::equal_to<apple3dgs::ConvertMXIFace>,std::hash<apple3dgs::ConvertMXIFace>,true>,std::allocator<std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>>>::__emplace_unique_key_args<apple3dgs::ConvertMXIFace,std::piecewise_construct_t const&,std::tuple<apple3dgs::ConvertMXIFace&&>,std::tuple<>>(a1, &v59);
  v18 = vmulq_n_f32(xmmword_247477B90, v57);
  v19 = v18.f32[2];
  *&v20 = vmulq_f32(v18, v18).f32[0] + -0.000000043711;
  v21 = v18.f32[1];
  v22 = vmuls_lane_f32(v18.f32[1], *v18.f32, 1) + -0.000000043711;
  v23 = v18.f32[2] * v18.f32[0];
  v24 = v18.f32[1] * v18.f32[0];
  *&v51 = vmuls_lane_f32(v18.f32[2], v18, 2) + -0.000000043711;
  v52 = v18.f32[1] + (v18.f32[2] * v18.f32[0]);
  *&v25 = v52;
  *&v50 = (v18.f32[2] * v18.f32[1]) - v18.f32[0];
  *(&v25 + 1) = *&v50;
  *(&v25 + 1) = v51;
  *&v26 = v18.f32[0] + (v18.f32[2] * v18.f32[1]);
  v18.f32[0] = (v18.f32[1] * v18.f32[0]) - v18.f32[2];
  v49 = v18.f32[0];
  v53 = v22;
  v18.f32[1] = v22;
  v48 = v26;
  v18.i64[1] = v26;
  v27 = v19 + v24;
  v58 = v20;
  v28 = v20;
  *(&v28 + 1) = v27;
  *&v46 = v23 - v21;
  v47 = v27;
  *(&v28 + 2) = v23 - v21;
  *(v17 + 2) = v28;
  *(v17 + 3) = v18;
  *(v17 + 4) = v25;
  *(v17 + 5) = xmmword_247477BC0;
  v59 = 2;
  v60 = &v59;
  v29 = std::__hash_table<std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>,std::__unordered_map_hasher<apple3dgs::ConvertMXIFace,std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>,std::hash<apple3dgs::ConvertMXIFace>,std::equal_to<apple3dgs::ConvertMXIFace>,true>,std::__unordered_map_equal<apple3dgs::ConvertMXIFace,std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>,std::equal_to<apple3dgs::ConvertMXIFace>,std::hash<apple3dgs::ConvertMXIFace>,true>,std::allocator<std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>>>::__emplace_unique_key_args<apple3dgs::ConvertMXIFace,std::piecewise_construct_t const&,std::tuple<apple3dgs::ConvertMXIFace&&>,std::tuple<>>(a1, &v59);
  HIDWORD(v30) = 0;
  *&v30 = (v7 * 0.0) + (v10 * 0.0);
  *(&v30 + 1) = -((v54 * 0.0) - (v12 * 0.0));
  *(&v30 + 2) = (v13 * 0.0) + 1.0;
  HIDWORD(v31) = 0;
  *&v31 = -((v8 * 0.0) - (v9 * 0.0));
  *(&v31 + 1) = (v11 * 0.0) + 1.0;
  *(&v31 + 2) = (v54 * 0.0) + (v12 * 0.0);
  HIDWORD(v32) = 0;
  *&v32 = (v55 * 0.0) + 1.0;
  *(&v32 + 1) = (v8 * 0.0) + (v9 * 0.0);
  *(&v32 + 2) = -((v7 * 0.0) - (v10 * 0.0));
  *(v29 + 2) = v32;
  *(v29 + 3) = v31;
  *(v29 + 4) = v30;
  *(v29 + 5) = xmmword_247477BC0;
  v59 = 3;
  v60 = &v59;
  v33 = std::__hash_table<std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>,std::__unordered_map_hasher<apple3dgs::ConvertMXIFace,std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>,std::hash<apple3dgs::ConvertMXIFace>,std::equal_to<apple3dgs::ConvertMXIFace>,true>,std::__unordered_map_equal<apple3dgs::ConvertMXIFace,std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>,std::equal_to<apple3dgs::ConvertMXIFace>,std::hash<apple3dgs::ConvertMXIFace>,true>,std::allocator<std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>>>::__emplace_unique_key_args<apple3dgs::ConvertMXIFace,std::piecewise_construct_t const&,std::tuple<apple3dgs::ConvertMXIFace&&>,std::tuple<>>(a1, &v59);
  HIDWORD(v34) = 0;
  *&v34 = v7 + v10;
  *(&v34 + 1) = v12 - v54;
  *(&v34 + 2) = v13 + -0.000000043711;
  *&v35 = v9 - v8;
  *(&v35 + 1) = v11 + -0.000000043711;
  *(&v35 + 1) = COERCE_UNSIGNED_INT(v54 + v12);
  v56 = COERCE_UNSIGNED_INT(v55 + -0.000000043711);
  v36 = v56;
  *(&v36 + 1) = v8 + v9;
  *(&v36 + 2) = v10 - v7;
  *(v33 + 2) = v36;
  *(v33 + 3) = v35;
  *(v33 + 4) = v34;
  *(v33 + 5) = xmmword_247477BC0;
  v59 = 4;
  v60 = &v59;
  v37 = std::__hash_table<std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>,std::__unordered_map_hasher<apple3dgs::ConvertMXIFace,std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>,std::hash<apple3dgs::ConvertMXIFace>,std::equal_to<apple3dgs::ConvertMXIFace>,true>,std::__unordered_map_equal<apple3dgs::ConvertMXIFace,std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>,std::equal_to<apple3dgs::ConvertMXIFace>,std::hash<apple3dgs::ConvertMXIFace>,true>,std::allocator<std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>>>::__emplace_unique_key_args<apple3dgs::ConvertMXIFace,std::piecewise_construct_t const&,std::tuple<apple3dgs::ConvertMXIFace&&>,std::tuple<>>(a1, &v59);
  *&v38 = v10 - v7;
  *(&v38 + 1) = v54 + v12;
  *(&v38 + 1) = COERCE_UNSIGNED_INT(v13 + -0.000000043711);
  *&v39 = v8 + v9;
  *(&v39 + 1) = v11 + -0.000000043711;
  *(&v39 + 1) = COERCE_UNSIGNED_INT(v12 - v54);
  v40 = v56;
  *(&v40 + 1) = v9 - v8;
  *(&v40 + 2) = v7 + v10;
  *(v37 + 2) = v40;
  *(v37 + 3) = v39;
  *(v37 + 4) = v38;
  *(v37 + 5) = xmmword_247477BC0;
  v59 = 5;
  v60 = &v59;
  v41 = std::__hash_table<std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>,std::__unordered_map_hasher<apple3dgs::ConvertMXIFace,std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>,std::hash<apple3dgs::ConvertMXIFace>,std::equal_to<apple3dgs::ConvertMXIFace>,true>,std::__unordered_map_equal<apple3dgs::ConvertMXIFace,std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>,std::equal_to<apple3dgs::ConvertMXIFace>,std::hash<apple3dgs::ConvertMXIFace>,true>,std::allocator<std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>>>::__emplace_unique_key_args<apple3dgs::ConvertMXIFace,std::piecewise_construct_t const&,std::tuple<apple3dgs::ConvertMXIFace&&>,std::tuple<>>(a1, &v59);
  *&v42 = __PAIR64__(v48, v46);
  *(&v42 + 1) = v51;
  *&v43 = __PAIR64__(LODWORD(v53), LODWORD(v47));
  *(&v43 + 1) = v50;
  v44 = v58;
  *(&v44 + 1) = v49;
  *(&v44 + 2) = v52;
  *(v41 + 2) = v44;
  *(v41 + 3) = v43;
  result = xmmword_247477BC0;
  *(v41 + 4) = v42;
  *(v41 + 5) = xmmword_247477BC0;
  return result;
}

void apple3dgs::MultiLayerRenderer::RenderFace(uint64_t a1, void *a2, void *a3, uint32x2_t *a4, uint64_t a5, uint64_t a6, unsigned int **a7, uint64_t a8, void *a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18)
{
  v96[19] = *MEMORY[0x277D85DE8];
  a2;
  a9;
  v54 = a10;
  a12;
  v55 = a13;
  a14;
  a15;
  v60 = a16;
  v53 = a17;
  objc_autoreleasePoolPush();
  *&v20 = apple3dgs::NdcProjection(&a4[12], v19, *(a11 + 24), *(a11 + 28));
  v80 = v20;
  v81 = v21;
  v82 = v22;
  v83 = v23;
  v63 = a4->i32[0];
  v62 = a4[1].i32[1];
  v79 = vcvt_f32_u32(a4[26]);
  v24 = a4 + 18;
  v61 = &a4[12];
  if (!a4[24].i8[0])
  {
    v24 = a4 + 12;
  }

  v25 = *v24[2].i8;
  v78[0] = *v24->i8;
  v78[1] = v25;
  v78[2] = *v24[4].i8;
  v26 = a4[28];
  v58 = *(MEMORY[0x277D860B0] + 16);
  v59 = *MEMORY[0x277D860B0];
  v57 = *(MEMORY[0x277D860B0] + 32);
  if (v26)
  {
    *buf = 0;
    v27 = a1;
    v28 = a7;
    v29 = a8;
    v30 = [v26 width];
    v31 = [*&a4[28] height];
    *&v32 = v30;
    *(&v32 + 1) = v31;
    *buf = v32;
    apple3dgs::GetPixelTransformationFromMPIToImage(v61, v78, &v79, buf);
  }

  else
  {
    v27 = a1;
    v28 = a7;
    v29 = a8;
  }

  v56 = [*(v27 + 32) commandBuffer];
  apple3dgs::SetFloatTextureValue(*(a11 + 16), v27 + 8, v56, xmmword_247477B90);
  if ([*&a4[28] mipmapLevelCount] >= 2)
  {
    v33 = [v56 blitCommandEncoder];
    [v33 generateMipmapsForTexture:*&a4[28]];
    [v33 endEncoding];

    v28 = a7;
    v27 = a1;
  }

  v34 = *v28;
  *(*v28 + 384) = 1;
  v35 = *(v29 + 8);
  v76 = *v29;
  v77 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    v34 = *v28;
  }

  v36 = v28[1];
  v74 = v34;
  v75 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(v36 + 1, 1uLL, memory_order_relaxed);
  }

  apple3dgs::UniqueSorter::EncodeSorting(v27 + 352, v56, a3, 1, &v76, &v74);
  v37 = v75;
  if (v75 && !atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  v38 = v77;
  if (v77 && !atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
  apple3dgs::operator<<(&v85, *v29);
  v69 = 17;
  strcpy(v68, "Sorter descriptor");
  if ((v95 & 0x10) != 0)
  {
    v40 = v94;
    if (v94 < v91)
    {
      v94 = v91;
      v40 = v91;
    }

    v41 = v90;
    v39 = v40 - v90;
    if (v40 - v90 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_50;
    }
  }

  else
  {
    if ((v95 & 8) == 0)
    {
      v39 = 0;
      v71 = 0;
      goto LABEL_29;
    }

    v41 = v88;
    v39 = v89 - v88;
    if ((v89 - v88) > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_50:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v39 >= 0x17)
  {
    operator new();
  }

  v71 = v39;
  if (v39)
  {
    memmove(&__dst, v41, v39);
  }

LABEL_29:
  *(&__dst + v39) = 0;
  if (v71 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v43 = strlen(p_dst);
  if (v43 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v44 = v43;
  if (v43 >= 0x17)
  {
    operator new();
  }

  v73 = v43;
  if (v43)
  {
    memmove(&v72, p_dst, v43);
  }

  *(&v72 + v44) = 0;
  GSLogFormattedString<GSLoggerDebug>(v68, &v72);
  if (v73 < 0)
  {
    operator delete(v72);
    if ((v71 & 0x80000000) == 0)
    {
LABEL_40:
      if ((v69 & 0x80000000) == 0)
      {
        goto LABEL_41;
      }

LABEL_48:
      operator delete(*v68);
LABEL_41:
      *buf = *MEMORY[0x277D82818];
      v45 = *(MEMORY[0x277D82818] + 72);
      *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
      v85 = v45;
      v86 = MEMORY[0x277D82878] + 16;
      if (v93 < 0)
      {
        operator delete(__p);
      }

      v86 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v87);
      std::iostream::~basic_iostream();
      MEMORY[0x24C1A1F80](v96);
      v46 = *v28;
      *(v46 + 384) = 0;
      apple3dgs::Renderer::EncodeSplatting((v27 + 144), v56, (v27 + 352), v54, v46, a18);
      if (v26)
      {
        PixelTransformationFromMPIToImage = apple3dgs::GetPixelTransformationFromMPIToImage(v61, v78, &v79, &v79);
        *&buf[8] = v48;
        LODWORD(v86) = v49;
        *buf = PixelTransformationFromMPIToImage;
        v85 = v50;
        LODWORD(v88) = v51;
        v87.__locale_ = v52;
        apple3dgs::ComputeRefinementWeight(v27 + 8, v56, v55, v60, v53);
      }

      *(*v28 + 384) = 1;
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
      apple3dgs::operator<<(&v85, *v28);
      operator new();
    }
  }

  else if ((v71 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

  operator delete(__dst);
  if ((v69 & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  goto LABEL_48;
}

uint64_t std::function<void ()(objc_object  {objcproto16MTLCommandBuffer}*,unsigned int,apple3dgs::ConvertMXIFace,objc_object  {objcproto10MTLTexture}*,objc_object,simd::float4x4)>::function(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    if (v2 == a2)
    {
      *(result + 24) = result;
      v5 = result;
      (*(**(a2 + 24) + 24))(*(a2 + 24), result);
      return v5;
    }

    else
    {
      v3 = result;
      v4 = (*(*v2 + 16))(*(a2 + 24));
      result = v3;
      *(v3 + 24) = v4;
    }
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

void ___ZN9apple3dgs18MultiLayerRenderer6RenderEPU27objcproto16MTLCommandBuffer11objc_objectNSt3__110shared_ptrIKNS_5AssetEEENS_17MultiLayerOptionsENS3_8functionIFvS2_jNS_14ConvertMXIFaceEPU21objcproto10MTLTexture11objc_objectSC_N4simd8float4x4EEEEPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  [v2 GPUEndTime];
  v4 = v3;
  [v2 GPUStartTime];
  v6 = v5;
  v7 = _gs_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134217984;
    v10 = (v4 - v6) * 1000.0;
    _os_log_impl(&dword_2473FC000, v7, OS_LOG_TYPE_DEBUG, "[A3DGSR] Render multilayer GPU time elapsed: %.3f ms", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t std::unordered_map<apple3dgs::ConvertMXIFace,simd::float4x4>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void apple3dgs::MultiLayerRenderer::StartWarmUpThread(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = objc_autoreleasePoolPush();
  *(a1 + 640) = 1;
  v9 = *(a3 + 24);
  if (v9)
  {
    if (v9 == a3)
    {
      v11 = v10;
      (*(*v9 + 24))(v9, v10);
LABEL_6:
      v12 = v7;
      v13 = a4;
      operator new();
    }

    v9 = (*(*v9 + 16))(v9);
  }

  v11 = v9;
  goto LABEL_6;
}

void sub_2474679FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t apple3dgs::MultiLayerRenderer::StartWarmUpThread(objc_object  {objcproto15MTLCommandQueue}*,std::function<void ()(objc_object  {objcproto16MTLCommandBuffer}*,unsigned int,apple3dgs::ConvertMXIFace,objc_object  {objcproto10MTLTexture}*,apple3dgs::ConvertMXIFace,simd::float4x4)>,objc_object  {objcproto15MTLCommandQueue}*::chrono::duration<long long,objc_object  {objcproto15MTLCommandQueue}*::ratio<1l,1000l>>)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 == a1 + 8)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>,std::__unordered_map_hasher<apple3dgs::ConvertMXIFace,std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>,std::hash<apple3dgs::ConvertMXIFace>,std::equal_to<apple3dgs::ConvertMXIFace>,true>,std::__unordered_map_equal<apple3dgs::ConvertMXIFace,std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>,std::equal_to<apple3dgs::ConvertMXIFace>,std::hash<apple3dgs::ConvertMXIFace>,true>,std::allocator<std::__hash_value_type<apple3dgs::ConvertMXIFace,simd::float4x4>>>::__emplace_unique_key_args<apple3dgs::ConvertMXIFace,std::piecewise_construct_t const&,std::tuple<apple3dgs::ConvertMXIFace&&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

uint64_t std::__function::__func<apple3dgs::MultiLayerRenderer::RenderFace(objc_object  {objcproto16MTLCommandBuffer}*,std::shared_ptr<apple3dgs::Asset const>,apple3dgs::MultiLayerOptions const&,std::function<void ()(objc_object  {objcproto16MTLCommandBuffer},unsigned int,apple3dgs::ConvertMXIFace,objc_object  {objcproto10MTLTexture}*,objc_object,simd::float4x4)>,std::function,objc_object  {objcproto16MTLCommandBuffer}*<apple3dgs::RenderDescriptor>,objc_object  {objcproto16MTLCommandBuffer}*<apple3dgs::SorterDescriptor>,MTLRenderPassDescriptor *,objc_object  {objcproto16MTLCommandBuffer}*<apple3dgs::SorterDescriptor>,apple3dgs::DenseMPI const&,objc_object,objc_object,objc_object,objc_object  {objcproto9MTLBuffer}*,objc_object,objc_object,NSError * {__autoreleasing}*)::$_0,std::allocator<NSError *>,BOOL ()(objc_object  {objcproto23MTLRenderCommandEncoder}*,apple3dgs::DeferredUniformsFS,unsigned int,NSError)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &off_28593E228;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<apple3dgs::MultiLayerRenderer::RenderFace(objc_object  {objcproto16MTLCommandBuffer}*,std::shared_ptr<apple3dgs::Asset const>,apple3dgs::MultiLayerOptions const&,std::function<void ()(objc_object  {objcproto16MTLCommandBuffer},unsigned int,apple3dgs::ConvertMXIFace,objc_object  {objcproto10MTLTexture}*,objc_object,simd::float4x4)>,std::function,objc_object  {objcproto16MTLCommandBuffer}*<apple3dgs::RenderDescriptor>,objc_object  {objcproto16MTLCommandBuffer}*<apple3dgs::SorterDescriptor>,MTLRenderPassDescriptor *,objc_object  {objcproto16MTLCommandBuffer}*<apple3dgs::SorterDescriptor>,apple3dgs::DenseMPI const&,objc_object,objc_object,objc_object,objc_object  {objcproto9MTLBuffer}*,objc_object,objc_object,NSError * {__autoreleasing}*)::$_0,std::allocator<NSError *>,BOOL ()(objc_object  {objcproto23MTLRenderCommandEncoder}*,apple3dgs::DeferredUniformsFS,unsigned int,NSError)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN9apple3dgs18MultiLayerRenderer10RenderFaceEPU27objcproto16MTLCommandBuffer11objc_objectNSt3__110shared_ptrIKNS_5AssetEEERKNS_17MultiLayerOptionsENS3_8functionIFvS2_jNS_14ConvertMXIFaceEPU21objcproto10MTLTexture11objc_objectSE_N4simd8float4x4EEEESC_NS4_INS_16RenderDescriptorEEENS4_INS_16SorterDescriptorEEEP23MTLRenderPassDescriptorSO_RKNS_8DenseMPIESE_SE_SE_PU19objcproto9MTLBuffer11objc_objectSE_SE_PU15__autoreleasingP7NSErrorE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN9apple3dgs18MultiLayerRenderer10RenderFaceEPU27objcproto16MTLCommandBuffer11objc_objectNSt3__110shared_ptrIKNS_5AssetEEERKNS_17MultiLayerOptionsENS3_8functionIFvS2_jNS_14ConvertMXIFaceEPU21objcproto10MTLTexture11objc_objectSE_N4simd8float4x4EEEESC_NS4_INS_16RenderDescriptorEEENS4_INS_16SorterDescriptorEEEP23MTLRenderPassDescriptorSO_RKNS_8DenseMPIESE_SE_SE_PU19objcproto9MTLBuffer11objc_objectSE_SE_PU15__autoreleasingP7NSErrorE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN9apple3dgs18MultiLayerRenderer10RenderFaceEPU27objcproto16MTLCommandBuffer11objc_objectNSt3__110shared_ptrIKNS_5AssetEEERKNS_17MultiLayerOptionsENS3_8functionIFvS2_jNS_14ConvertMXIFaceEPU21objcproto10MTLTexture11objc_objectSE_N4simd8float4x4EEEESC_NS4_INS_16RenderDescriptorEEENS4_INS_16SorterDescriptorEEEP23MTLRenderPassDescriptorSO_RKNS_8DenseMPIESE_SE_SE_PU19objcproto9MTLBuffer11objc_objectSE_SE_PU15__autoreleasingP7NSErrorE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN9apple3dgs18MultiLayerRenderer10RenderFaceEPU27objcproto16MTLCommandBuffer11objc_objectNSt3__110shared_ptrIKNS_5AssetEEERKNS_17MultiLayerOptionsENS3_8functionIFvS2_jNS_14ConvertMXIFaceEPU21objcproto10MTLTexture11objc_objectSE_N4simd8float4x4EEEESC_NS4_INS_16RenderDescriptorEEENS4_INS_16SorterDescriptorEEEP23MTLRenderPassDescriptorSO_RKNS_8DenseMPIESE_SE_SE_PU19objcproto9MTLBuffer11objc_objectSE_SE_PU15__autoreleasingP7NSErrorE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__value_func<BOOL ()(objc_object  {objcproto23MTLRenderCommandEncoder}*,apple3dgs::DeferredUniformsFS,unsigned int,NSError * {__autoreleasing}*)>::swap[abi:ne200100](void *result, void *a2)
{
  v8[3] = *MEMORY[0x277D85DE8];
  if (a2 == result)
  {
LABEL_8:
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = result;
  result = result[3];
  v4 = a2[3];
  if (result != v3)
  {
    if (v4 != a2)
    {
      v3[3] = v4;
      a2[3] = result;
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }

    (*(*v4 + 24))(a2[3], v3);
    result = (*(*a2[3] + 32))(a2[3]);
    a2[3] = v3[3];
    v3[3] = v3;
    goto LABEL_8;
  }

  if (v4 == a2)
  {
    (*(*result + 24))(result, v8);
    (*(*v3[3] + 32))(v3[3]);
    v3[3] = 0;
    (*(*a2[3] + 24))(a2[3], v3);
    (*(*a2[3] + 32))(a2[3]);
    a2[3] = 0;
    v3[3] = v3;
    (*(v8[0] + 24))(v8, a2);
    result = (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*result + 24))(result, a2);
    result = (*(*v3[3] + 32))(v3[3]);
    v3[3] = a2[3];
  }

  a2[3] = a2;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_247468204(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,apple3dgs::MultiLayerRenderer::StartWarmUpThread(objc_object  {objcproto15MTLCommandQueue}*,std::function<void ()(objc_object  {objcproto16MTLCommandBuffer}*,unsigned int,apple3dgs::ConvertMXIFace,objc_object  {objcproto10MTLTexture}*,apple3dgs::ConvertMXIFace,simd::float4x4)>,std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_0>>(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 8);
  v5 = _gs_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_2473FC000, v5, OS_LOG_TYPE_DEBUG, "[A3DGSR] Starting warmup thread", buf, 2u);
  }

  v6 = *(a1 + 48);
  v7[0] = xmmword_247477B70;
  v7[1] = xmmword_247477B80;
  v8 = 27;
  apple3dgs::CreateSimpleAsset(v6, v7, 0x186A0u, 0, buf);
  operator new();
}

void sub_2474688B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  std::shared_ptr<apple3dgs::Asset>::~shared_ptr[abi:ne200100](&a33);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,apple3dgs::MultiLayerRenderer::StartWarmUpThread(objc_object  {objcproto15MTLCommandQueue}*,std::function<void ()(objc_object  {objcproto16MTLCommandBuffer}*,unsigned int,apple3dgs::ConvertMXIFace,objc_object  {objcproto10MTLTexture}*,apple3dgs::ConvertMXIFace,simd::float4x4)>,std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_0>>::~unique_ptr[abi:ne200100](&a26);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,apple3dgs::MultiLayerRenderer::StartWarmUpThread(objc_object  {objcproto15MTLCommandQueue}*,std::function<void ()(objc_object  {objcproto16MTLCommandBuffer}*,unsigned int,apple3dgs::ConvertMXIFace,objc_object  {objcproto10MTLTexture}*,apple3dgs::ConvertMXIFace,simd::float4x4)>,std::chrono::duration<long long,std::ratio<1l,1000l>>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;

    v3 = v1[5];
    if (v3 == v1 + 2)
    {
      (*(*v3 + 32))(v3);
      v6 = *v1;
      *v1 = 0;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v3)
      {
        (*(*v3 + 40))(v3);
      }

      v4 = *v1;
      *v1 = 0;
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    v5 = MEMORY[0x24C1A1E00]();
    MEMORY[0x24C1A2010](v5, 0x20C4093837F09);
LABEL_7:
    MEMORY[0x24C1A2010](v1, 0x10A0C401F121063);
    return v2;
  }

  return result;
}

uint64_t apple3dgs::Sorter::Sorter(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  *a1 = &unk_28593E1F0;
  v17 = v9;
  MetalContext::MetalContext(a1 + 8, v9, 0);
  *(a1 + 132) = xmmword_2474786F0;
  v10 = *(a5 + 2);
  *(a1 + 148) = *a5;
  *(a1 + 150) = v10;
  *a1 = &unk_28593E2B8;
  *(a1 + 160) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (a4)
  {
    v11 = [*(*a3 + 120) UUIDString];
    v12 = [v11 UTF8String];
    v13 = strlen(v12);
    if (v13 < 0x7FFFFFFFFFFFFFF8)
    {
      v14 = v13;
      if (v13 < 0x17)
      {
        v19 = v13;
        if (v13)
        {
          memmove(&__dst, v12, v13);
        }

        *(&__dst + v14) = 0;

        v15 = *a3;
        operator new();
      }

      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_247468CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void ***a10, MetalContext *a11, uint64_t a12, uint64_t a13, void *a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::vector<std::string>::~vector[abi:ne200100](a10);
  std::__tree<std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>>>::destroy(v21, *(a13 + 160));
  *a13 = a12;
  MetalContext::~MetalContext(a11);

  _Unwind_Resume(a1);
}

apple3dgs::SortWorker **std::unique_ptr<apple3dgs::SortWorker>::~unique_ptr[abi:ne200100](apple3dgs::SortWorker **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    apple3dgs::SortWorker::~SortWorker(v2);
    MEMORY[0x24C1A2010]();
    return v3;
  }

  return v1;
}

uint64_t apple3dgs::Sorter::EncodeSorting(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v75 = a3;
  v76 = a4;
  v61 = a2;
  if (a4)
  {
    if (!(a4 >> 62))
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v8 = 0;
  v68 = a6;
  v69 = &v75;
  std::__introsort<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *,false>(0, 0, &v68, 0, 1);
  v9 = *(a1 + 176);
  v10 = *(a1 + 184);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3);
  if (v76 <= v11)
  {
    if (v76 < v11)
    {
      v12 = (v9 + 24 * v76);
      while (v10 != v12)
      {
        v13 = *(v10 - 1);
        v10 -= 3;
        if (v13 < 0)
        {
          operator delete(*v10);
        }
      }

      *(a1 + 184) = v12;
    }
  }

  else
  {
    std::vector<std::string>::__append((a1 + 176), v76 - v11);
  }

  if (!v76)
  {
    goto LABEL_98;
  }

  v58 = (a1 + 176);
  v14 = 0;
  for (i = 0; i < v76; v14 = ++i)
  {
LABEL_16:
    v16 = v8;
    v17 = (v75 + 16 * *(v8 + 4 * v14));
    v18 = [*(*v17 + 120) UUIDString];
    v19 = [v18 UTF8String];
    v20 = strlen(v19);
    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v21 = v20;
    if (v20 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v74) = v20;
    if (v20)
    {
      memmove(&__dst, v19, v20);
    }

    *(&__dst + v21) = 0;

    v22 = *v58 + 24 * v14;
    if (v22 != &__dst)
    {
      if (*(v22 + 23) < 0)
      {
        if (v74 >= 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst;
        }

        if (v74 >= 0)
        {
          v25 = HIBYTE(v74);
        }

        else
        {
          v25 = *(&__dst + 1);
        }

        std::string::__assign_no_alias<false>(v22, p_dst, v25);
      }

      else if (v74 < 0)
      {
        std::string::__assign_no_alias<true>(v22, __dst, *(&__dst + 1));
      }

      else
      {
        v23 = __dst;
        *(v22 + 16) = v74;
        *v22 = v23;
      }
    }

    v26 = *(a1 + 160);
    if (!v26)
    {
LABEL_62:
      [v61 device];
      objc_claimAutoreleasedReturnValue();
      v35 = *v17;
      operator new();
    }

    if (v74 >= 0)
    {
      v27 = &__dst;
    }

    else
    {
      v27 = __dst;
    }

    if (v74 >= 0)
    {
      v28 = HIBYTE(v74);
    }

    else
    {
      v28 = *(&__dst + 1);
    }

    while (1)
    {
      v29 = *(v26 + 55);
      if (v29 >= 0)
      {
        v30 = (v26 + 4);
      }

      else
      {
        v30 = v26[4];
      }

      if (v29 >= 0)
      {
        v31 = *(v26 + 55);
      }

      else
      {
        v31 = v26[5];
      }

      if (v31 >= v28)
      {
        v32 = v28;
      }

      else
      {
        v32 = v31;
      }

      v33 = memcmp(v27, v30, v32);
      if (v33)
      {
        if (v33 < 0)
        {
          goto LABEL_45;
        }
      }

      else if (v28 < v31)
      {
        goto LABEL_45;
      }

      v34 = memcmp(v30, v27, v32);
      if (!v34)
      {
        if (v31 >= v28)
        {
          break;
        }

        goto LABEL_44;
      }

      if ((v34 & 0x80000000) == 0)
      {
        break;
      }

LABEL_44:
      ++v26;
LABEL_45:
      v26 = *v26;
      if (!v26)
      {
        goto LABEL_62;
      }
    }

    v37 = *a6;
    v36 = *(a6 + 8);
    v68 = *a6;
    v69 = v36;
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v39 = *a5;
    v38 = *(a5 + 8);
    v70 = *a5;
    v71 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v40 = *v17;
    v72 = v40;
    v60 = v40;
    v41 = *(&v40 + 1);
    if (*(&v40 + 1))
    {
      atomic_fetch_add_explicit((*(&v40 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 132) = **a5;
    *buf = &__dst;
    v42 = std::__tree<std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1 + 152, &__dst)[7];
    v63 = v37;
    v64 = v36;
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v65 = v39;
    v66 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v67 = v60;
    if (v41)
    {
      atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
    }

    v43 = apple3dgs::SortWorker::Sort(v42, v61, &v63);
    v44 = *(&v67 + 1);
    v8 = v16;
    if (*(&v67 + 1) && !atomic_fetch_add((*(&v67 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v44->__on_zero_shared)(v44);
      std::__shared_weak_count::__release_weak(v44);
      v45 = v66;
      if (v66)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v45 = v66;
      if (v66)
      {
LABEL_78:
        if (!atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v45->__on_zero_shared)(v45);
          std::__shared_weak_count::__release_weak(v45);
        }
      }
    }

    v46 = v64;
    if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v46->__on_zero_shared)(v46);
      std::__shared_weak_count::__release_weak(v46);
    }

    if ((v43 & 1) == 0)
    {
      goto LABEL_103;
    }

    v47 = *v17;
    if (!i)
    {
      *(a1 + 128) = *(v47 + 556);
      v49 = *(&v72 + 1);
      if (!*(&v72 + 1))
      {
        goto LABEL_91;
      }

      goto LABEL_90;
    }

    v48 = *(a1 + 128);
    if (v48 != *(v47 + 556))
    {
      v54 = _gs_log();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_2473FC000, v54, OS_LOG_TYPE_ERROR, "[A3DGSR /Sorter.mm:64] Assets have different color space, this is not supported", buf, 2u);
      }

LABEL_103:
      v55 = *(&v72 + 1);
      if (*(&v72 + 1) && !atomic_fetch_add((*(&v72 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v55->__on_zero_shared)(v55);
        std::__shared_weak_count::__release_weak(v55);
      }

      v56 = v71;
      if (v71 && !atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v56->__on_zero_shared)(v56);
        std::__shared_weak_count::__release_weak(v56);
        v57 = v69;
        if (!v69)
        {
          goto LABEL_110;
        }

LABEL_109:
        if (atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_110;
        }

        (v57->__on_zero_shared)(v57);
        std::__shared_weak_count::__release_weak(v57);
        if ((SHIBYTE(v74) & 0x80000000) == 0)
        {
LABEL_111:
          v52 = 0;
          goto LABEL_99;
        }
      }

      else
      {
        v57 = v69;
        if (v69)
        {
          goto LABEL_109;
        }

LABEL_110:
        if ((SHIBYTE(v74) & 0x80000000) == 0)
        {
          goto LABEL_111;
        }
      }

      operator delete(__dst);
      v52 = 0;
      goto LABEL_99;
    }

    *(a1 + 128) = v48;
    v49 = *(&v72 + 1);
    if (!*(&v72 + 1))
    {
LABEL_91:
      v50 = v71;
      if (v71)
      {
        goto LABEL_92;
      }

      goto LABEL_95;
    }

LABEL_90:
    if (atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_91;
    }

    (v49->__on_zero_shared)(v49);
    std::__shared_weak_count::__release_weak(v49);
    v50 = v71;
    if (v71)
    {
LABEL_92:
      if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v50->__on_zero_shared)(v50);
        std::__shared_weak_count::__release_weak(v50);
      }
    }

LABEL_95:
    v51 = v69;
    if (v69 && !atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v51->__on_zero_shared)(v51);
      std::__shared_weak_count::__release_weak(v51);
    }

    if ((SHIBYTE(v74) & 0x80000000) == 0)
    {
      v14 = ++i;
      if (v76 <= i)
      {
        break;
      }

      goto LABEL_16;
    }

    operator delete(__dst);
  }

LABEL_98:
  v52 = 1;
LABEL_99:

  return v52;
}

void sub_24746962C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  apple3dgs::SortWorker::Job::~Job(&a21);
  if (a32 < 0)
  {
    operator delete(__p);
    if (v32)
    {
      goto LABEL_3;
    }
  }

  else if (v32)
  {
LABEL_3:
    operator delete(v32);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t apple3dgs::UniqueSorter::UniqueSorter(uint64_t a1, void *a2, __int16 *a3, int a4)
{
  v7 = a2;
  *a1 = &unk_28593E1F0;
  MetalContext::MetalContext(a1 + 8, v7, 0);
  *(a1 + 132) = xmmword_2474786F0;
  v8 = *a3;
  *(a1 + 150) = *(a3 + 2);
  *(a1 + 148) = v8;
  *a1 = &unk_28593E2F0;
  if (a4)
  {
    operator new();
  }

  *(a1 + 152) = 0;

  return a1;
}

void sub_247469814(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A2010](v5, 0x10F0C40A1AD85C7);
  *v2 = v3;
  MetalContext::~MetalContext(v4);

  _Unwind_Resume(a1);
}

uint64_t apple3dgs::UniqueSorter::EncodeSorting(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = a2;
  v11 = v10;
  if (!*(a1 + 152))
  {
    [v10 device];
    objc_claimAutoreleasedReturnValue();
    v12 = *a3;
    operator new();
  }

  v14 = *a6;
  v13 = a6[1];
  v34 = *a6;
  v35 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *a5;
  v15 = *(a5 + 8);
  v36 = *a5;
  v37 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *a3;
  v17 = a3[1];
  v38 = *a3;
  v39 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 132) = **a5;
  v19 = *(a1 + 152);
  v28 = v14;
  v29 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = v16;
  v31 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = v18;
  v33 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = apple3dgs::SortWorker::Sort(v19, v11, &v28);
  v21 = v33;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  v22 = v31;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = v29;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
    if ((v20 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v20)
  {
LABEL_24:
    *(a1 + 128) = *(*a3 + 556);
  }

LABEL_25:
  v24 = v39;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  return v20;
}

void sub_247469B9C(_Unwind_Exception *a1)
{
  MEMORY[0x24C1A2010](v3, 0x10F0C40A1AD85C7);

  _Unwind_Resume(a1);
}

void sub_247469BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  apple3dgs::SortWorker::Job::~Job(&a9);
  apple3dgs::SortWorker::Job::~Job(&a15);

  _Unwind_Resume(a1);
}

void apple3dgs::Sorter::WaitForSortWorkers(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 136) != 1)
  {
    v4 = *(a1 + 152);
    v5 = (a1 + 160);
    if (v4 != v5)
    {
      do
      {
        apple3dgs::SortWorker::Lock(v4[7]);
        v9[0] = MEMORY[0x277D85DD0];
        v9[1] = 3221225472;
        v9[2] = ___ZN9apple3dgs6Sorter18WaitForSortWorkersEPU27objcproto16MTLCommandBuffer11objc_object_block_invoke;
        v9[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
        v9[4] = v4 + 4;
        [v3 addCompletedHandler:v9];
        v6 = v4[1];
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = v4[2];
            v8 = *v7 == v4;
            v4 = v7;
          }

          while (!v8);
        }

        v4 = v7;
      }

      while (v7 != v5);
    }
  }
}

void apple3dgs::Sorter::GetSortWorkers(apple3dgs::Sorter *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 22);
  for (i = *(this + 23); v2 != i; v2 = (v2 + 24))
  {
    if (*(v2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v8, *v2, *(v2 + 1));
    }

    else
    {
      v6 = *v2;
      v8.__r_.__value_.__r.__words[2] = *(v2 + 2);
      *&v8.__r_.__value_.__l.__data_ = v6;
    }

    v7 = *std::map<std::string,std::unique_ptr<apple3dgs::SortWorker>>::at(this + 152, &v8.__r_.__value_.__l.__data_);
    std::vector<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *,std::allocator<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void> *>>::push_back[abi:ne200100](a2, &v7);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }
}

void sub_247469DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = *v16;
  if (!*v16)
  {
    _Unwind_Resume(exception_object);
  }

  *(v16 + 8) = v18;
  operator delete(v18);
  _Unwind_Resume(exception_object);
}

void apple3dgs::Sorter::~Sorter(apple3dgs::Sorter *this)
{
  *this = &unk_28593E2B8;
  v2 = *(this + 22);
  if (v2)
  {
    v3 = *(this + 23);
    v4 = *(this + 22);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 22);
    }

    *(this + 23) = v2;
    operator delete(v4);
  }

  std::__tree<std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>>>::destroy(this + 152, *(this + 20));
  *this = &unk_28593E1F0;
  MetalContext::~MetalContext((this + 8));
}

{
  *this = &unk_28593E2B8;
  v2 = *(this + 22);
  if (v2)
  {
    v3 = *(this + 23);
    v4 = *(this + 22);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 22);
    }

    *(this + 23) = v2;
    operator delete(v4);
  }

  std::__tree<std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>>>::destroy(this + 152, *(this + 20));
  *this = &unk_28593E1F0;
  MetalContext::~MetalContext((this + 8));

  JUMPOUT(0x24C1A2010);
}

void apple3dgs::UniqueSorter::WaitForSortWorkers(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 136) != 1)
  {
    apple3dgs::SortWorker::Lock(*(a1 + 152));
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = ___ZN9apple3dgs12UniqueSorter18WaitForSortWorkersEPU27objcproto16MTLCommandBuffer11objc_object_block_invoke;
    v4[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
    v4[4] = a1;
    [v3 addCompletedHandler:v4];
  }
}

void apple3dgs::UniqueSorter::GetSortWorkers(apple3dgs::UniqueSorter *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 19);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  operator new();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *,false>(uint64_t result, unsigned int *a2, float32x4_t ***a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v10 = a2 - 1;
    v11 = v9;
    while (1)
    {
      while (1)
      {
        v9 = v11;
        v12 = a2 - v11;
        if (v12 > 2)
        {
          switch(v12)
          {
            case 3:
              v139 = **a3;
              v140 = *a3[1];

              return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *,0>(v11, v11 + 1, v10, v139, v140);
            case 4:

              return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *,0>(v11, v11 + 1, v11 + 2, v10, a3);
            case 5:

              return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *,0>(v11, v11 + 1, v11 + 2, v11 + 3, v10, a3);
          }
        }

        else
        {
          if (v12 < 2)
          {
            return result;
          }

          if (v12 == 2)
          {
            v117 = *(a2 - 1);
            v118 = *v11;
            v119 = **a3;
            v120 = *a3[1];
            v122 = v119[1];
            v121 = v119[2];
            v124 = v119[3];
            v123 = v119[4];
            v125 = *(v120 + 16 * v117);
            v126 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v122, COERCE_FLOAT(*v125[50].f32)), v121, v125[50], 1), v124, *v125[50].f32, 2), v123, *v125[50].f32, 3);
            v127 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v122, COERCE_FLOAT(*v125[52].f32)), v121, v125[52], 1), v124, *v125[52].f32, 2), v123, *v125[52].f32, 3);
            v128 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v122, COERCE_FLOAT(*v125[54].f32)), v121, v125[54], 1), v124, *v125[54].f32, 2), v123, *v125[54].f32, 3);
            v129 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v122, COERCE_FLOAT(*v125[56].f32)), v121, v125[56], 1), v124, *v125[56].f32, 2), v123, *v125[56].f32, 3);
            v130 = *(v120 + 16 * v118);
            v131 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v122, COERCE_FLOAT(*v130[50].f32)), v121, v130[50], 1), v124, *v130[50].f32, 2), v123, *v130[50].f32, 3);
            v132 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v122, COERCE_FLOAT(*v130[52].f32)), v121, v130[52], 1), v124, *v130[52].f32, 2), v123, *v130[52].f32, 3);
            v133 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v122, COERCE_FLOAT(*v130[54].f32)), v121, v130[54], 1), v124, *v130[54].f32, 2), v123, *v130[54].f32, 3);
            v134 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v122, COERCE_FLOAT(*v130[56].f32)), v121, v130[56], 1), v124, *v130[56].f32, 2), v123, *v130[56].f32, 3);
            v135 = vaddq_f32(v129, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v126, COERCE_FLOAT(*v125[74].f32)), v127, v125[74], 1), v128, *v125[74].f32, 2));
            v136 = vaddq_f32(v134, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v131, COERCE_FLOAT(*v130[74].f32)), v132, v130[74], 1), v133, *v130[74].f32, 2));
            v137 = vmulq_f32(v135, v135);
            v138 = vmulq_f32(v136, v136);
            *v137.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v137, v137, 8uLL), *&vextq_s8(v138, v138, 8uLL)), vadd_f32(vzip1_s32(*v137.i8, *v138.i8), vzip2_s32(*v137.i8, *v138.i8))));
            if (vcgt_f32(*v137.i8, vdup_lane_s32(*v137.i8, 1)).u32[0])
            {
              *v11 = v117;
              *(a2 - 1) = v118;
            }

            return result;
          }
        }

        if (v12 <= 23)
        {
          v141 = *a3;
          v142 = a3[1];
          if (a5)
          {
            if (v11 != a2)
            {
              v143 = v11 + 1;
              if (v11 + 1 != a2)
              {
                v144 = 0;
                v145 = *v141;
                v146 = *v142;
                v147 = v11;
                do
                {
                  v150 = *v147;
                  v149 = v147[1];
                  v147 = v143;
                  v152 = v145[1];
                  v151 = v145[2];
                  v154 = v145[3];
                  v153 = v145[4];
                  v155 = v146[v149].i64[0];
                  v156 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v152, COERCE_FLOAT(*v155[50].f32)), v151, v155[50], 1), v154, *v155[50].f32, 2), v153, *v155[50].f32, 3);
                  v157 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v152, COERCE_FLOAT(*v155[52].f32)), v151, v155[52], 1), v154, *v155[52].f32, 2), v153, *v155[52].f32, 3);
                  v158 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v152, COERCE_FLOAT(*v155[54].f32)), v151, v155[54], 1), v154, *v155[54].f32, 2), v153, *v155[54].f32, 3);
                  v159 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v152, COERCE_FLOAT(*v155[56].f32)), v151, v155[56], 1), v154, *v155[56].f32, 2), v153, *v155[56].f32, 3);
                  v160 = v146[v150].i64[0];
                  v161 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v152, COERCE_FLOAT(*v160[50].f32)), v151, v160[50], 1), v154, *v160[50].f32, 2), v153, *v160[50].f32, 3);
                  v162 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v152, COERCE_FLOAT(*v160[52].f32)), v151, v160[52], 1), v154, *v160[52].f32, 2), v153, *v160[52].f32, 3);
                  v163 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v152, COERCE_FLOAT(*v160[54].f32)), v151, v160[54], 1), v154, *v160[54].f32, 2), v153, *v160[54].f32, 3);
                  v164 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v152, COERCE_FLOAT(*v160[56].f32)), v151, v160[56], 1), v154, *v160[56].f32, 2), v153, *v160[56].f32, 3);
                  v165 = vaddq_f32(v159, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v156, COERCE_FLOAT(*v155[74].f32)), v157, v155[74], 1), v158, *v155[74].f32, 2));
                  v166 = vaddq_f32(v164, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v161, COERCE_FLOAT(*v160[74].f32)), v162, v160[74], 1), v163, *v160[74].f32, 2));
                  v167 = vmulq_f32(v165, v165);
                  v168 = vmulq_f32(v166, v166);
                  *v167.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v167, v167, 8uLL), *&vextq_s8(v168, v168, 8uLL)), vadd_f32(vzip1_s32(*v167.i8, *v168.i8), vzip2_s32(*v167.i8, *v168.i8))));
                  if (vcgt_f32(*v167.i8, vdup_lane_s32(*v167.i8, 1)).u32[0])
                  {
                    v169 = v144;
                    do
                    {
                      *(v11 + v169 + 4) = *(v11 + v169);
                      if (!v169)
                      {
                        v148 = v11;
                        goto LABEL_76;
                      }

                      v170 = v145[1];
                      v171 = v145[2];
                      v173 = v145[3];
                      v172 = v145[4];
                      v174 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v170, COERCE_FLOAT(*v155[50].f32)), v171, v155[50], 1), v173, *v155[50].f32, 2), v172, *v155[50].f32, 3);
                      v175 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v170, COERCE_FLOAT(*v155[52].f32)), v171, v155[52], 1), v173, *v155[52].f32, 2), v172, *v155[52].f32, 3);
                      v176 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v170, COERCE_FLOAT(*v155[54].f32)), v171, v155[54], 1), v173, *v155[54].f32, 2), v172, *v155[54].f32, 3);
                      v177 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v170, COERCE_FLOAT(*v155[56].f32)), v171, v155[56], 1), v173, *v155[56].f32, 2), v172, *v155[56].f32, 3);
                      v178 = v146[*(v11 + v169 - 4)].i64[0];
                      v179 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v170, COERCE_FLOAT(*v178[50].f32)), v171, v178[50], 1), v173, *v178[50].f32, 2), v172, *v178[50].f32, 3);
                      v180 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v170, COERCE_FLOAT(*v178[52].f32)), v171, v178[52], 1), v173, *v178[52].f32, 2), v172, *v178[52].f32, 3);
                      v181 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v170, COERCE_FLOAT(*v178[54].f32)), v171, v178[54], 1), v173, *v178[54].f32, 2), v172, *v178[54].f32, 3);
                      v182 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v170, COERCE_FLOAT(*v178[56].f32)), v171, v178[56], 1), v173, *v178[56].f32, 2), v172, *v178[56].f32, 3);
                      v183 = vaddq_f32(v177, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v174, COERCE_FLOAT(*v155[74].f32)), v175, v155[74], 1), v176, *v155[74].f32, 2));
                      v184 = vaddq_f32(v182, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v179, COERCE_FLOAT(*v178[74].f32)), v180, v178[74], 1), v181, *v178[74].f32, 2));
                      v185 = vmulq_f32(v183, v183);
                      v186 = vmulq_f32(v184, v184);
                      *v185.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v185, v185, 8uLL), *&vextq_s8(v186, v186, 8uLL)), vadd_f32(vzip1_s32(*v185.i8, *v186.i8), vzip2_s32(*v185.i8, *v186.i8))));
                      v169 -= 4;
                    }

                    while ((vcgt_f32(*v185.i8, vdup_lane_s32(*v185.i8, 1)).u32[0] & 1) != 0);
                    v148 = (v11 + v169 + 4);
LABEL_76:
                    *v148 = v149;
                  }

                  v143 = v147 + 1;
                  v144 += 4;
                }

                while (v147 + 1 != a2);
              }
            }
          }

          else if (v11 != a2)
          {
            v345 = v11 + 1;
            if (v11 + 1 != a2)
            {
              v346 = *v141;
              v347 = *v142;
              do
              {
                v349 = *v9;
                v348 = v9[1];
                v9 = v345;
                v351 = v346[1];
                v350 = v346[2];
                v353 = v346[3];
                v352 = v346[4];
                v354 = v347[v348].i64[0];
                v355 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, COERCE_FLOAT(*v354[50].f32)), v350, v354[50], 1), v353, *v354[50].f32, 2), v352, *v354[50].f32, 3);
                v356 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, COERCE_FLOAT(*v354[52].f32)), v350, v354[52], 1), v353, *v354[52].f32, 2), v352, *v354[52].f32, 3);
                v357 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, COERCE_FLOAT(*v354[54].f32)), v350, v354[54], 1), v353, *v354[54].f32, 2), v352, *v354[54].f32, 3);
                v358 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, COERCE_FLOAT(*v354[56].f32)), v350, v354[56], 1), v353, *v354[56].f32, 2), v352, *v354[56].f32, 3);
                v359 = v347[v349].i64[0];
                v360 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, COERCE_FLOAT(*v359[50].f32)), v350, v359[50], 1), v353, *v359[50].f32, 2), v352, *v359[50].f32, 3);
                v361 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, COERCE_FLOAT(*v359[52].f32)), v350, v359[52], 1), v353, *v359[52].f32, 2), v352, *v359[52].f32, 3);
                v362 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, COERCE_FLOAT(*v359[54].f32)), v350, v359[54], 1), v353, *v359[54].f32, 2), v352, *v359[54].f32, 3);
                v363 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v351, COERCE_FLOAT(*v359[56].f32)), v350, v359[56], 1), v353, *v359[56].f32, 2), v352, *v359[56].f32, 3);
                v364 = vaddq_f32(v358, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v355, COERCE_FLOAT(*v354[74].f32)), v356, v354[74], 1), v357, *v354[74].f32, 2));
                v365 = vaddq_f32(v363, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v360, COERCE_FLOAT(*v359[74].f32)), v361, v359[74], 1), v362, *v359[74].f32, 2));
                v366 = vmulq_f32(v364, v364);
                v367 = vmulq_f32(v365, v365);
                *v366.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v366, v366, 8uLL), *&vextq_s8(v367, v367, 8uLL)), vadd_f32(vzip1_s32(*v366.i8, *v367.i8), vzip2_s32(*v366.i8, *v367.i8))));
                if (vcgt_f32(*v366.i8, vdup_lane_s32(*v366.i8, 1)).u32[0])
                {
                  v368 = v9;
                  do
                  {
                    v369 = v368;
                    v370 = *--v368;
                    *v369 = v370;
                    v372 = v346[1];
                    v371 = v346[2];
                    v374 = v346[3];
                    v373 = v346[4];
                    v375 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, COERCE_FLOAT(*v354[50].f32)), v371, v354[50], 1), v374, *v354[50].f32, 2), v373, *v354[50].f32, 3);
                    v376 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, COERCE_FLOAT(*v354[52].f32)), v371, v354[52], 1), v374, *v354[52].f32, 2), v373, *v354[52].f32, 3);
                    v377 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, COERCE_FLOAT(*v354[54].f32)), v371, v354[54], 1), v374, *v354[54].f32, 2), v373, *v354[54].f32, 3);
                    v378 = v347[*(v369 - 2)].i64[0];
                    v379 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, COERCE_FLOAT(*v354[56].f32)), v371, v354[56], 1), v374, *v354[56].f32, 2), v373, *v354[56].f32, 3);
                    v380 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, COERCE_FLOAT(*v378[50].f32)), v371, v378[50], 1), v374, *v378[50].f32, 2), v373, *v378[50].f32, 3);
                    v381 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, COERCE_FLOAT(*v378[52].f32)), v371, v378[52], 1), v374, *v378[52].f32, 2), v373, *v378[52].f32, 3);
                    v382 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, COERCE_FLOAT(*v378[54].f32)), v371, v378[54], 1), v374, *v378[54].f32, 2), v373, *v378[54].f32, 3);
                    v383 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v372, COERCE_FLOAT(*v378[56].f32)), v371, v378[56], 1), v374, *v378[56].f32, 2), v373, *v378[56].f32, 3);
                    v384 = vaddq_f32(v379, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v375, COERCE_FLOAT(*v354[74].f32)), v376, v354[74], 1), v377, *v354[74].f32, 2));
                    v385 = vaddq_f32(v383, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v380, COERCE_FLOAT(*v378[74].f32)), v381, v378[74], 1), v382, *v378[74].f32, 2));
                    v386 = vmulq_f32(v384, v384);
                    v387 = vmulq_f32(v385, v385);
                    *v387.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v386, v386, 8uLL), *&vextq_s8(v387, v387, 8uLL)), vadd_f32(vzip1_s32(*v386.i8, *v387.i8), vzip2_s32(*v386.i8, *v387.i8))));
                  }

                  while ((vcgt_f32(*v387.i8, vdup_lane_s32(*v387.i8, 1)).u32[0] & 1) != 0);
                  *v368 = v348;
                }

                v345 = v9 + 1;
              }

              while (v9 + 1 != a2);
            }
          }

          return result;
        }

        if (!a4)
        {
          if (v11 != a2)
          {
            v187 = (v12 - 2) >> 1;
            v188 = v187;
            do
            {
              v189 = v188;
              if (v187 >= v188)
              {
                v190 = *a3;
                v191 = a3[1];
                v192 = (2 * v188) | 1;
                v193 = &v11[v192];
                if (2 * v189 + 2 < v12)
                {
                  v195 = (*v190)[1];
                  v194 = (*v190)[2];
                  v196 = (*v191)[*v193].i64[0];
                  v198 = (*v190)[3];
                  v197 = (*v190)[4];
                  v199 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v195, COERCE_FLOAT(*v196[50].f32)), v194, v196[50], 1), v198, *v196[50].f32, 2), v197, *v196[50].f32, 3);
                  v200 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v195, COERCE_FLOAT(*v196[52].f32)), v194, v196[52], 1), v198, *v196[52].f32, 2), v197, *v196[52].f32, 3);
                  v201 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v195, COERCE_FLOAT(*v196[54].f32)), v194, v196[54], 1), v198, *v196[54].f32, 2), v197, *v196[54].f32, 3);
                  v202 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v195, COERCE_FLOAT(*v196[56].f32)), v194, v196[56], 1), v198, *v196[56].f32, 2), v197, *v196[56].f32, 3);
                  v203 = (*v191)[v193[1]].i64[0];
                  v204 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v195, COERCE_FLOAT(*v203[50].f32)), v194, v203[50], 1), v198, *v203[50].f32, 2), v197, *v203[50].f32, 3);
                  v205 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v195, COERCE_FLOAT(*v203[52].f32)), v194, v203[52], 1), v198, *v203[52].f32, 2), v197, *v203[52].f32, 3);
                  v206 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v195, COERCE_FLOAT(*v203[54].f32)), v194, v203[54], 1), v198, *v203[54].f32, 2), v197, *v203[54].f32, 3);
                  v207 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v195, COERCE_FLOAT(*v203[56].f32)), v194, v203[56], 1), v198, *v203[56].f32, 2), v197, *v203[56].f32, 3);
                  v208 = vaddq_f32(v202, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v199, COERCE_FLOAT(*v196[74].f32)), v200, v196[74], 1), v201, *v196[74].f32, 2));
                  v209 = vaddq_f32(v207, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v204, COERCE_FLOAT(*v203[74].f32)), v205, v203[74], 1), v206, *v203[74].f32, 2));
                  v210 = vmulq_f32(v208, v208);
                  v211 = vmulq_f32(v209, v209);
                  *v210.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v210, v210, 8uLL), *&vextq_s8(v211, v211, 8uLL)), vadd_f32(vzip1_s32(*v210.i8, *v211.i8), vzip2_s32(*v210.i8, *v211.i8))));
                  if (vcgt_f32(*v210.i8, vdup_lane_s32(*v210.i8, 1)).u8[0])
                  {
                    ++v193;
                    v192 = 2 * v189 + 2;
                  }
                }

                v212 = &v11[v189];
                v213 = *v212;
                v214 = *v190;
                v215 = *v191;
                v217 = v214[1];
                v216 = v214[2];
                v219 = v214[3];
                v218 = v214[4];
                v220 = v215[*v193].i64[0];
                v221 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v217, COERCE_FLOAT(*v220[50].f32)), v216, v220[50], 1), v219, *v220[50].f32, 2), v218, *v220[50].f32, 3);
                v222 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v217, COERCE_FLOAT(*v220[52].f32)), v216, v220[52], 1), v219, *v220[52].f32, 2), v218, *v220[52].f32, 3);
                v223 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v217, COERCE_FLOAT(*v220[54].f32)), v216, v220[54], 1), v219, *v220[54].f32, 2), v218, *v220[54].f32, 3);
                v224 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v217, COERCE_FLOAT(*v220[56].f32)), v216, v220[56], 1), v219, *v220[56].f32, 2), v218, *v220[56].f32, 3);
                v225 = v215[v213].i64[0];
                v226 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v217, COERCE_FLOAT(*v225[50].f32)), v216, v225[50], 1), v219, *v225[50].f32, 2), v218, *v225[50].f32, 3);
                v227 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v217, COERCE_FLOAT(*v225[52].f32)), v216, v225[52], 1), v219, *v225[52].f32, 2), v218, *v225[52].f32, 3);
                v228 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v217, COERCE_FLOAT(*v225[54].f32)), v216, v225[54], 1), v219, *v225[54].f32, 2), v218, *v225[54].f32, 3);
                v229 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v217, COERCE_FLOAT(*v225[56].f32)), v216, v225[56], 1), v219, *v225[56].f32, 2), v218, *v225[56].f32, 3);
                v230 = vaddq_f32(v224, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v221, COERCE_FLOAT(*v220[74].f32)), v222, v220[74], 1), v223, *v220[74].f32, 2));
                v231 = vaddq_f32(v229, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v226, COERCE_FLOAT(*v225[74].f32)), v227, v225[74], 1), v228, *v225[74].f32, 2));
                v232 = vmulq_f32(v230, v230);
                v233 = vmulq_f32(v231, v231);
                *v232.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v232, v232, 8uLL), *&vextq_s8(v233, v233, 8uLL)), vadd_f32(vzip1_s32(*v232.i8, *v233.i8), vzip2_s32(*v232.i8, *v233.i8))));
                if ((vcgt_f32(*v232.i8, vdup_lane_s32(*v232.i8, 1)).u32[0] & 1) == 0)
                {
                  do
                  {
                    v251 = v193;
                    *v212 = *v193;
                    if (v187 < v192)
                    {
                      break;
                    }

                    v252 = (2 * v192) | 1;
                    v193 = &v11[v252];
                    v253 = 2 * v192 + 2;
                    if (v253 < v12)
                    {
                      v255 = v214[1];
                      v254 = v214[2];
                      v256 = v215[*v193].i64[0];
                      v258 = v214[3];
                      v257 = v214[4];
                      v259 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v255, COERCE_FLOAT(*v256[50].f32)), v254, v256[50], 1), v258, *v256[50].f32, 2), v257, *v256[50].f32, 3);
                      v260 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v255, COERCE_FLOAT(*v256[52].f32)), v254, v256[52], 1), v258, *v256[52].f32, 2), v257, *v256[52].f32, 3);
                      v261 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v255, COERCE_FLOAT(*v256[54].f32)), v254, v256[54], 1), v258, *v256[54].f32, 2), v257, *v256[54].f32, 3);
                      v262 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v255, COERCE_FLOAT(*v256[56].f32)), v254, v256[56], 1), v258, *v256[56].f32, 2), v257, *v256[56].f32, 3);
                      v263 = v215[v193[1]].i64[0];
                      v264 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v255, COERCE_FLOAT(*v263[50].f32)), v254, v263[50], 1), v258, *v263[50].f32, 2), v257, *v263[50].f32, 3);
                      v265 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v255, COERCE_FLOAT(*v263[52].f32)), v254, v263[52], 1), v258, *v263[52].f32, 2), v257, *v263[52].f32, 3);
                      v266 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v255, COERCE_FLOAT(*v263[54].f32)), v254, v263[54], 1), v258, *v263[54].f32, 2), v257, *v263[54].f32, 3);
                      v267 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v255, COERCE_FLOAT(*v263[56].f32)), v254, v263[56], 1), v258, *v263[56].f32, 2), v257, *v263[56].f32, 3);
                      v268 = vaddq_f32(v262, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v259, COERCE_FLOAT(*v256[74].f32)), v260, v256[74], 1), v261, *v256[74].f32, 2));
                      v269 = vaddq_f32(v267, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v264, COERCE_FLOAT(*v263[74].f32)), v265, v263[74], 1), v266, *v263[74].f32, 2));
                      v270 = vmulq_f32(v268, v268);
                      v271 = vmulq_f32(v269, v269);
                      *v270.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v270, v270, 8uLL), *&vextq_s8(v271, v271, 8uLL)), vadd_f32(vzip1_s32(*v270.i8, *v271.i8), vzip2_s32(*v270.i8, *v271.i8))));
                      if (vcgt_f32(*v270.i8, vdup_lane_s32(*v270.i8, 1)).u8[0])
                      {
                        ++v193;
                        v252 = v253;
                      }
                    }

                    v234 = v214[1];
                    v235 = v214[2];
                    v237 = v214[3];
                    v236 = v214[4];
                    v238 = v215[*v193].i64[0];
                    v239 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v234, COERCE_FLOAT(*v238[50].f32)), v235, v238[50], 1), v237, *v238[50].f32, 2), v236, *v238[50].f32, 3);
                    v240 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v234, COERCE_FLOAT(*v238[52].f32)), v235, v238[52], 1), v237, *v238[52].f32, 2), v236, *v238[52].f32, 3);
                    v241 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v234, COERCE_FLOAT(*v238[54].f32)), v235, v238[54], 1), v237, *v238[54].f32, 2), v236, *v238[54].f32, 3);
                    v242 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v234, COERCE_FLOAT(*v238[56].f32)), v235, v238[56], 1), v237, *v238[56].f32, 2), v236, *v238[56].f32, 3);
                    v243 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v234, COERCE_FLOAT(*v225[50].f32)), v235, v225[50], 1), v237, *v225[50].f32, 2), v236, *v225[50].f32, 3);
                    v244 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v234, COERCE_FLOAT(*v225[52].f32)), v235, v225[52], 1), v237, *v225[52].f32, 2), v236, *v225[52].f32, 3);
                    v245 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v234, COERCE_FLOAT(*v225[54].f32)), v235, v225[54], 1), v237, *v225[54].f32, 2), v236, *v225[54].f32, 3);
                    v246 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v234, COERCE_FLOAT(*v225[56].f32)), v235, v225[56], 1), v237, *v225[56].f32, 2), v236, *v225[56].f32, 3);
                    v247 = vaddq_f32(v242, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v239, COERCE_FLOAT(*v238[74].f32)), v240, v238[74], 1), v241, *v238[74].f32, 2));
                    v248 = vaddq_f32(v246, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v243, COERCE_FLOAT(*v225[74].f32)), v244, v225[74], 1), v245, *v225[74].f32, 2));
                    v249 = vmulq_f32(v247, v247);
                    v250 = vmulq_f32(v248, v248);
                    *v249.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v249, v249, 8uLL), *&vextq_s8(v250, v250, 8uLL)), vadd_f32(vzip1_s32(*v249.i8, *v250.i8), vzip2_s32(*v249.i8, *v250.i8))));
                    v212 = v251;
                    v192 = v252;
                  }

                  while ((vcgt_f32(*v249.i8, vdup_lane_s32(*v249.i8, 1)).u32[0] & 1) == 0);
                  *v251 = v213;
                }
              }

              v188 = v189 - 1;
            }

            while (v189);
            do
            {
              v273 = 0;
              v274 = *v11;
              v275 = *a3;
              v276 = a3[1];
              v277 = (v12 - 2) >> 1;
              v278 = v11;
              do
              {
                while (1)
                {
                  v300 = &v278[v273];
                  v299 = v300 + 1;
                  result = 2 * v273;
                  v301 = (2 * v273) | 1;
                  v273 = 2 * v273 + 2;
                  if (v273 < v12)
                  {
                    break;
                  }

                  v273 = v301;
                  *v278 = *v299;
                  v278 = v300 + 1;
                  if (v301 > v277)
                  {
                    goto LABEL_108;
                  }
                }

                v280 = v300[2];
                v279 = v300 + 2;
                v282 = (*v275)[1];
                v281 = (*v275)[2];
                v283 = (*v276)[*(v279 - 1)].i64[0];
                v285 = (*v275)[3];
                v284 = (*v275)[4];
                v286 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v282, COERCE_FLOAT(*v283[50].f32)), v281, v283[50], 1), v285, *v283[50].f32, 2), v284, *v283[50].f32, 3);
                v287 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v282, COERCE_FLOAT(*v283[52].f32)), v281, v283[52], 1), v285, *v283[52].f32, 2), v284, *v283[52].f32, 3);
                v288 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v282, COERCE_FLOAT(*v283[54].f32)), v281, v283[54], 1), v285, *v283[54].f32, 2), v284, *v283[54].f32, 3);
                v289 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v282, COERCE_FLOAT(*v283[56].f32)), v281, v283[56], 1), v285, *v283[56].f32, 2), v284, *v283[56].f32, 3);
                v290 = (*v276)[v280].i64[0];
                v291 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v282, COERCE_FLOAT(*v290[50].f32)), v281, v290[50], 1), v285, *v290[50].f32, 2), v284, *v290[50].f32, 3);
                v292 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v282, COERCE_FLOAT(*v290[52].f32)), v281, v290[52], 1), v285, *v290[52].f32, 2), v284, *v290[52].f32, 3);
                v293 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v282, COERCE_FLOAT(*v290[54].f32)), v281, v290[54], 1), v285, *v290[54].f32, 2), v284, *v290[54].f32, 3);
                v294 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v282, COERCE_FLOAT(*v290[56].f32)), v281, v290[56], 1), v285, *v290[56].f32, 2), v284, *v290[56].f32, 3);
                v295 = vaddq_f32(v289, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v286, COERCE_FLOAT(*v283[74].f32)), v287, v283[74], 1), v288, *v283[74].f32, 2));
                v296 = vaddq_f32(v294, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v291, COERCE_FLOAT(*v290[74].f32)), v292, v290[74], 1), v293, *v290[74].f32, 2));
                v297 = vmulq_f32(v295, v295);
                v298 = vmulq_f32(v296, v296);
                *v297.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v297, v297, 8uLL), *&vextq_s8(v298, v298, 8uLL)), vadd_f32(vzip1_s32(*v297.i8, *v298.i8), vzip2_s32(*v297.i8, *v298.i8))));
                v297.i32[0] = vcgt_f32(*v297.i8, vdup_lane_s32(*v297.i8, 1)).u32[0];
                result = v297.u32[0];
                if (v297.i8[0])
                {
                  v299 = v279;
                }

                else
                {
                  v273 = v301;
                }

                *v278 = *v299;
                v278 = v299;
              }

              while (v273 <= v277);
LABEL_108:
              if (v299 == --a2)
              {
                *v299 = v274;
              }

              else
              {
                *v299 = *a2;
                *a2 = v274;
                v302 = (v299 - v11 + 4) >> 2;
                v272 = v302 < 2;
                v303 = v302 - 2;
                if (!v272)
                {
                  v304 = v303 >> 1;
                  v305 = &v11[v304];
                  v306 = *v299;
                  v307 = **a3;
                  v308 = *a3[1];
                  v310 = v307[1];
                  v309 = v307[2];
                  v312 = v307[3];
                  v311 = v307[4];
                  v313 = *(v308 + 16 * *v305);
                  v314 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v310, COERCE_FLOAT(*v313[50].f32)), v309, v313[50], 1), v312, *v313[50].f32, 2), v311, *v313[50].f32, 3);
                  v315 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v310, COERCE_FLOAT(*v313[52].f32)), v309, v313[52], 1), v312, *v313[52].f32, 2), v311, *v313[52].f32, 3);
                  v316 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v310, COERCE_FLOAT(*v313[54].f32)), v309, v313[54], 1), v312, *v313[54].f32, 2), v311, *v313[54].f32, 3);
                  v317 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v310, COERCE_FLOAT(*v313[56].f32)), v309, v313[56], 1), v312, *v313[56].f32, 2), v311, *v313[56].f32, 3);
                  v318 = *(v308 + 16 * v306);
                  v319 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v310, COERCE_FLOAT(*v318[50].f32)), v309, v318[50], 1), v312, *v318[50].f32, 2), v311, *v318[50].f32, 3);
                  v320 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v310, COERCE_FLOAT(*v318[52].f32)), v309, v318[52], 1), v312, *v318[52].f32, 2), v311, *v318[52].f32, 3);
                  v321 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v310, COERCE_FLOAT(*v318[54].f32)), v309, v318[54], 1), v312, *v318[54].f32, 2), v311, *v318[54].f32, 3);
                  v322 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v310, COERCE_FLOAT(*v318[56].f32)), v309, v318[56], 1), v312, *v318[56].f32, 2), v311, *v318[56].f32, 3);
                  v323 = vaddq_f32(v317, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v314, COERCE_FLOAT(*v313[74].f32)), v315, v313[74], 1), v316, *v313[74].f32, 2));
                  v324 = vaddq_f32(v322, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v319, COERCE_FLOAT(*v318[74].f32)), v320, v318[74], 1), v321, *v318[74].f32, 2));
                  v325 = vmulq_f32(v323, v323);
                  v326 = vmulq_f32(v324, v324);
                  *v325.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v325, v325, 8uLL), *&vextq_s8(v326, v326, 8uLL)), vadd_f32(vzip1_s32(*v325.i8, *v326.i8), vzip2_s32(*v325.i8, *v326.i8))));
                  if (vcgt_f32(*v325.i8, vdup_lane_s32(*v325.i8, 1)).u32[0])
                  {
                    do
                    {
                      v327 = v305;
                      *v299 = *v305;
                      if (!v304)
                      {
                        break;
                      }

                      v304 = (v304 - 1) >> 1;
                      v305 = &v11[v304];
                      v329 = v307[1];
                      v328 = v307[2];
                      v330 = *(v308 + 16 * *v305);
                      v331 = v307[3];
                      v332 = v307[4];
                      v333 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v329, COERCE_FLOAT(*v330[50].f32)), v328, v330[50], 1), v331, *v330[50].f32, 2), v332, *v330[50].f32, 3);
                      v334 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v329, COERCE_FLOAT(*v330[52].f32)), v328, v330[52], 1), v331, *v330[52].f32, 2), v332, *v330[52].f32, 3);
                      v335 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v329, COERCE_FLOAT(*v330[54].f32)), v328, v330[54], 1), v331, *v330[54].f32, 2), v332, *v330[54].f32, 3);
                      v336 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v329, COERCE_FLOAT(*v330[56].f32)), v328, v330[56], 1), v331, *v330[56].f32, 2), v332, *v330[56].f32, 3);
                      v337 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v329, COERCE_FLOAT(*v318[50].f32)), v328, v318[50], 1), v331, *v318[50].f32, 2), v332, *v318[50].f32, 3);
                      v338 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v329, COERCE_FLOAT(*v318[52].f32)), v328, v318[52], 1), v331, *v318[52].f32, 2), v332, *v318[52].f32, 3);
                      v339 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v329, COERCE_FLOAT(*v318[54].f32)), v328, v318[54], 1), v331, *v318[54].f32, 2), v332, *v318[54].f32, 3);
                      v340 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v329, COERCE_FLOAT(*v318[56].f32)), v328, v318[56], 1), v331, *v318[56].f32, 2), v332, *v318[56].f32, 3);
                      v341 = vaddq_f32(v336, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v333, COERCE_FLOAT(*v330[74].f32)), v334, v330[74], 1), v335, *v330[74].f32, 2));
                      v342 = vaddq_f32(v340, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v337, COERCE_FLOAT(*v318[74].f32)), v338, v318[74], 1), v339, *v318[74].f32, 2));
                      v343 = vmulq_f32(v341, v341);
                      v344 = vmulq_f32(v342, v342);
                      *v343.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v343, v343, 8uLL), *&vextq_s8(v344, v344, 8uLL)), vadd_f32(vzip1_s32(*v343.i8, *v344.i8), vzip2_s32(*v343.i8, *v344.i8))));
                      v299 = v327;
                    }

                    while ((vcgt_f32(*v343.i8, vdup_lane_s32(*v343.i8, 1)).u32[0] & 1) != 0);
                    *v327 = v306;
                  }
                }
              }

              v272 = v12-- <= 2;
            }

            while (!v272);
          }

          return result;
        }

        v13 = v12 >> 1;
        v14 = &v11[v12 >> 1];
        v15 = **a3;
        v16 = *a3[1];
        if (v12 < 0x81)
        {
          break;
        }

        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *,0>(v9, &v9[v12 >> 1], v10, v15, v16);
        v17 = &v9[v13];
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *,0>(v9 + 1, v17 - 1, a2 - 2, **a3, *a3[1]);
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *,0>(v9 + 2, &v9[v13 + 1], a2 - 3, **a3, *a3[1]);
        result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *,0>(v17 - 1, v14, &v9[v13 + 1], **a3, *a3[1]);
        v18 = *v9;
        *v9 = *v17;
        *v17 = v18;
        v10 = a2 - 1;
        --a4;
        if (a5)
        {
          goto LABEL_17;
        }

LABEL_16:
        v19 = *v9;
        v20 = **a3;
        v21 = *a3[1];
        v22 = v20[1];
        v23 = v20[2];
        v24 = *(v21 + 16 * *(v9 - 1));
        v25 = v20[3];
        v26 = v20[4];
        v27 = *(v21 + 16 * v19);
        v28 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v24[56].f32)), v23, v24[56], 1), v25, *v24[56].f32, 2), v26, *v24[56].f32, 3), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v24[50].f32)), v23, v24[50], 1), v25, *v24[50].f32, 2), v26, *v24[50].f32, 3), COERCE_FLOAT(*v24[74].f32)), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v24[52].f32)), v23, v24[52], 1), v25, *v24[52].f32, 2), v26, *v24[52].f32, 3), v24[74], 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v24[54].f32)), v23, v24[54], 1), v25, *v24[54].f32, 2), v26, *v24[54].f32, 3), *v24[74].f32, 2));
        v29 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v27[56].f32)), v23, v27[56], 1), v25, *v27[56].f32, 2), v26, *v27[56].f32, 3), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v27[50].f32)), v23, v27[50], 1), v25, *v27[50].f32, 2), v26, *v27[50].f32, 3), COERCE_FLOAT(*v27[74].f32)), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v27[52].f32)), v23, v27[52], 1), v25, *v27[52].f32, 2), v26, *v27[52].f32, 3), v27[74], 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v27[54].f32)), v23, v27[54], 1), v25, *v27[54].f32, 2), v26, *v27[54].f32, 3), *v27[74].f32, 2));
        v30 = vmulq_f32(v28, v28);
        v31 = vmulq_f32(v29, v29);
        *v31.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v30, v30, 8uLL), *&vextq_s8(v31, v31, 8uLL)), vadd_f32(vzip1_s32(*v30.i8, *v31.i8), vzip2_s32(*v30.i8, *v31.i8))));
        v32 = *&v31.i32[1];
        if (*v31.i32 > *&v31.i32[1])
        {
          goto LABEL_17;
        }

        v83 = *(v21 + 16 * *v10);
        v84 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v83[56].f32)), v23, v83[56], 1), v25, *v83[56].f32, 2), v26, *v83[56].f32, 3), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v83[50].f32)), v23, v83[50], 1), v25, *v83[50].f32, 2), v26, *v83[50].f32, 3), COERCE_FLOAT(*v83[74].f32)), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v83[52].f32)), v23, v83[52], 1), v25, *v83[52].f32, 2), v26, *v83[52].f32, 3), v83[74], 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v83[54].f32)), v23, v83[54], 1), v25, *v83[54].f32, 2), v26, *v83[54].f32, 3), *v83[74].f32, 2));
        v85 = vmulq_f32(v84, v84);
        if (v32 <= sqrtf(v85.f32[2] + vaddv_f32(*v85.f32)))
        {
          v90 = v9 + 1;
          do
          {
            v11 = v90;
            if (v90 >= a2)
            {
              break;
            }

            ++v90;
            v91 = *(v21 + 16 * *v11);
            v92 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v91[56].f32)), v23, v91[56], 1), v25, *v91[56].f32, 2), v26, *v91[56].f32, 3), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v91[50].f32)), v23, v91[50], 1), v25, *v91[50].f32, 2), v26, *v91[50].f32, 3), COERCE_FLOAT(*v91[74].f32)), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v91[52].f32)), v23, v91[52], 1), v25, *v91[52].f32, 2), v26, *v91[52].f32, 3), v91[74], 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v91[54].f32)), v23, v91[54], 1), v25, *v91[54].f32, 2), v26, *v91[54].f32, 3), *v91[74].f32, 2));
            v93 = vmulq_f32(v92, v92);
          }

          while (v32 <= sqrtf(v93.f32[2] + vaddv_f32(*v93.f32)));
        }

        else
        {
          v11 = v9;
          do
          {
            v86 = v11[1];
            ++v11;
            v87 = *(v21 + 16 * v86);
            v88 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v87[56].f32)), v23, v87[56], 1), v25, *v87[56].f32, 2), v26, *v87[56].f32, 3), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v87[50].f32)), v23, v87[50], 1), v25, *v87[50].f32, 2), v26, *v87[50].f32, 3), COERCE_FLOAT(*v87[74].f32)), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v87[52].f32)), v23, v87[52], 1), v25, *v87[52].f32, 2), v26, *v87[52].f32, 3), v87[74], 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v87[54].f32)), v23, v87[54], 1), v25, *v87[54].f32, 2), v26, *v87[54].f32, 3), *v87[74].f32, 2));
            v89 = vmulq_f32(v88, v88);
          }

          while (v32 <= sqrtf(v89.f32[2] + vaddv_f32(*v89.f32)));
        }

        v94 = a2;
        if (v11 < a2)
        {
          v94 = a2;
          do
          {
            v95 = *--v94;
            v96 = *(v21 + 16 * v95);
            v97 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v96[56].f32)), v23, v96[56], 1), v25, *v96[56].f32, 2), v26, *v96[56].f32, 3), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v96[50].f32)), v23, v96[50], 1), v25, *v96[50].f32, 2), v26, *v96[50].f32, 3), COERCE_FLOAT(*v96[74].f32)), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v96[52].f32)), v23, v96[52], 1), v25, *v96[52].f32, 2), v26, *v96[52].f32, 3), v96[74], 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v96[54].f32)), v23, v96[54], 1), v25, *v96[54].f32, 2), v26, *v96[54].f32, 3), *v96[74].f32, 2));
            v98 = vmulq_f32(v97, v97);
          }

          while (v32 > sqrtf(v98.f32[2] + vaddv_f32(*v98.f32)));
        }

        if (v11 < v94)
        {
          v99 = *v11;
          v100 = *v94;
          do
          {
            *v11 = v100;
            *v94 = v99;
            v101 = v20[1];
            v102 = v20[2];
            v103 = v20[3];
            v104 = v20[4];
            v105 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101, COERCE_FLOAT(*v27[56].f32)), v102, v27[56], 1), v103, *v27[56].f32, 2), v104, *v27[56].f32, 3), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101, COERCE_FLOAT(*v27[50].f32)), v102, v27[50], 1), v103, *v27[50].f32, 2), v104, *v27[50].f32, 3), COERCE_FLOAT(*v27[74].f32)), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101, COERCE_FLOAT(*v27[52].f32)), v102, v27[52], 1), v103, *v27[52].f32, 2), v104, *v27[52].f32, 3), v27[74], 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101, COERCE_FLOAT(*v27[54].f32)), v102, v27[54], 1), v103, *v27[54].f32, 2), v104, *v27[54].f32, 3), *v27[74].f32, 2));
            v106 = vmulq_f32(v105, v105);
            v107 = sqrtf(v106.f32[2] + vaddv_f32(*v106.f32));
            do
            {
              v108 = v11[1];
              ++v11;
              v99 = v108;
              v109 = *(v21 + 16 * v108);
              v110 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101, COERCE_FLOAT(*v109[56].f32)), v102, v109[56], 1), v103, *v109[56].f32, 2), v104, *v109[56].f32, 3), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101, COERCE_FLOAT(*v109[50].f32)), v102, v109[50], 1), v103, *v109[50].f32, 2), v104, *v109[50].f32, 3), COERCE_FLOAT(*v109[74].f32)), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101, COERCE_FLOAT(*v109[52].f32)), v102, v109[52], 1), v103, *v109[52].f32, 2), v104, *v109[52].f32, 3), v109[74], 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101, COERCE_FLOAT(*v109[54].f32)), v102, v109[54], 1), v103, *v109[54].f32, 2), v104, *v109[54].f32, 3), *v109[74].f32, 2));
              v111 = vmulq_f32(v110, v110);
            }

            while (v107 <= sqrtf(v111.f32[2] + vaddv_f32(*v111.f32)));
            do
            {
              v112 = *--v94;
              v100 = v112;
              v113 = *(v21 + 16 * v112);
              v114 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101, COERCE_FLOAT(*v113[56].f32)), v102, v113[56], 1), v103, *v113[56].f32, 2), v104, *v113[56].f32, 3), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101, COERCE_FLOAT(*v113[50].f32)), v102, v113[50], 1), v103, *v113[50].f32, 2), v104, *v113[50].f32, 3), COERCE_FLOAT(*v113[74].f32)), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101, COERCE_FLOAT(*v113[52].f32)), v102, v113[52], 1), v103, *v113[52].f32, 2), v104, *v113[52].f32, 3), v113[74], 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101, COERCE_FLOAT(*v113[54].f32)), v102, v113[54], 1), v103, *v113[54].f32, 2), v104, *v113[54].f32, 3), *v113[74].f32, 2));
              v115 = vmulq_f32(v114, v114);
            }

            while (v107 > sqrtf(v115.f32[2] + vaddv_f32(*v115.f32)));
          }

          while (v11 < v94);
        }

        v116 = v11 - 1;
        if (v11 - 1 != v9)
        {
          *v9 = *v116;
        }

        a5 = 0;
        *v116 = v19;
      }

      result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *,0>(&v9[v12 >> 1], v9, v10, v15, v16);
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_17:
      v33 = 0;
      v34 = *v9;
      v35 = **a3;
      v36 = *a3[1];
      v37 = v35[1];
      v38 = v35[2];
      v39 = v35[3];
      v40 = v35[4];
      v41 = *(v36 + 16 * v34);
      v42 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*v41[56].f32)), v38, v41[56], 1), v39, *v41[56].f32, 2), v40, *v41[56].f32, 3), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*v41[50].f32)), v38, v41[50], 1), v39, *v41[50].f32, 2), v40, *v41[50].f32, 3), COERCE_FLOAT(*v41[74].f32)), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*v41[52].f32)), v38, v41[52], 1), v39, *v41[52].f32, 2), v40, *v41[52].f32, 3), v41[74], 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*v41[54].f32)), v38, v41[54], 1), v39, *v41[54].f32, 2), v40, *v41[54].f32, 3), *v41[74].f32, 2));
      v43 = vmulq_f32(v42, v42);
      v44 = sqrtf(v43.f32[2] + vaddv_f32(*v43.f32));
      do
      {
        v45 = v9[v33 + 1];
        v46 = *(v36 + 16 * v45);
        v47 = *(v46 + 592);
        v48 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*(v46 + 448))), v38, *(v46 + 448), 1), v39, *(v46 + 448), 2), v40, *(v46 + 448), 3), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*(v46 + 400))), v38, *(v46 + 400), 1), v39, *(v46 + 400), 2), v40, *(v46 + 400), 3), v47.f32[0]), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*(v46 + 416))), v38, *(v46 + 416), 1), v39, *(v46 + 416), 2), v40, *(v46 + 416), 3), *v47.f32, 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*(v46 + 432))), v38, *(v46 + 432), 1), v39, *(v46 + 432), 2), v40, *(v46 + 432), 3), v47, 2));
        v49 = vmulq_f32(v48, v48);
        ++v33;
      }

      while (sqrtf(v49.f32[2] + vaddv_f32(*v49.f32)) > v44);
      v50 = &v9[v33];
      v51 = a2;
      if (v33 == 1)
      {
        v51 = a2;
        do
        {
          if (v50 >= v51)
          {
            break;
          }

          v57 = *--v51;
          v58 = *(v36 + 16 * v57);
          v59 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*v58[56].f32)), v38, v58[56], 1), v39, *v58[56].f32, 2), v40, *v58[56].f32, 3), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*v58[50].f32)), v38, v58[50], 1), v39, *v58[50].f32, 2), v40, *v58[50].f32, 3), COERCE_FLOAT(*v58[74].f32)), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*v58[52].f32)), v38, v58[52], 1), v39, *v58[52].f32, 2), v40, *v58[52].f32, 3), v58[74], 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*v58[54].f32)), v38, v58[54], 1), v39, *v58[54].f32, 2), v40, *v58[54].f32, 3), *v58[74].f32, 2));
          v60 = vmulq_f32(v59, v59);
        }

        while (sqrtf(v60.f32[2] + vaddv_f32(*v60.f32)) <= v44);
      }

      else
      {
        do
        {
          v52 = *--v51;
          v53 = *(v36 + 16 * v52);
          v54 = *(v53 + 592);
          v55 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*(v53 + 448))), v38, *(v53 + 448), 1), v39, *(v53 + 448), 2), v40, *(v53 + 448), 3), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*(v53 + 400))), v38, *(v53 + 400), 1), v39, *(v53 + 400), 2), v40, *(v53 + 400), 3), v54.f32[0]), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*(v53 + 416))), v38, *(v53 + 416), 1), v39, *(v53 + 416), 2), v40, *(v53 + 416), 3), *v54.f32, 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(*(v53 + 432))), v38, *(v53 + 432), 1), v39, *(v53 + 432), 2), v40, *(v53 + 432), 3), v54, 2));
          v56 = vmulq_f32(v55, v55);
        }

        while (sqrtf(v56.f32[2] + vaddv_f32(*v56.f32)) <= v44);
      }

      if (v50 >= v51)
      {
        v81 = v50 - 1;
        if (v50 - 1 == v9)
        {
          goto LABEL_35;
        }

LABEL_34:
        *v9 = *v81;
        goto LABEL_35;
      }

      v61 = *v51;
      v62 = v45;
      v63 = v50;
      v64 = v51;
      do
      {
        *v63 = v61;
        *v64 = v62;
        v65 = v35[1];
        v66 = v35[2];
        v67 = v35[3];
        v68 = v35[4];
        v69 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, COERCE_FLOAT(*v41[56].f32)), v66, v41[56], 1), v67, *v41[56].f32, 2), v68, *v41[56].f32, 3), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, COERCE_FLOAT(*v41[50].f32)), v66, v41[50], 1), v67, *v41[50].f32, 2), v68, *v41[50].f32, 3), COERCE_FLOAT(*v41[74].f32)), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, COERCE_FLOAT(*v41[52].f32)), v66, v41[52], 1), v67, *v41[52].f32, 2), v68, *v41[52].f32, 3), v41[74], 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, COERCE_FLOAT(*v41[54].f32)), v66, v41[54], 1), v67, *v41[54].f32, 2), v68, *v41[54].f32, 3), *v41[74].f32, 2));
        v70 = vmulq_f32(v69, v69);
        v71 = sqrtf(v70.f32[2] + vaddv_f32(*v70.f32));
        do
        {
          v72 = v63[1];
          ++v63;
          v62 = v72;
          v73 = *(v36 + 16 * v72);
          v74 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, COERCE_FLOAT(*v73[56].f32)), v66, v73[56], 1), v67, *v73[56].f32, 2), v68, *v73[56].f32, 3), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, COERCE_FLOAT(*v73[50].f32)), v66, v73[50], 1), v67, *v73[50].f32, 2), v68, *v73[50].f32, 3), COERCE_FLOAT(*v73[74].f32)), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, COERCE_FLOAT(*v73[52].f32)), v66, v73[52], 1), v67, *v73[52].f32, 2), v68, *v73[52].f32, 3), v73[74], 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, COERCE_FLOAT(*v73[54].f32)), v66, v73[54], 1), v67, *v73[54].f32, 2), v68, *v73[54].f32, 3), *v73[74].f32, 2));
          v75 = vmulq_f32(v74, v74);
        }

        while (sqrtf(v75.f32[2] + vaddv_f32(*v75.f32)) > v71);
        do
        {
          v76 = *--v64;
          v61 = v76;
          v77 = *(v36 + 16 * v76);
          v78 = *(v77 + 592);
          v79 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, COERCE_FLOAT(*(v77 + 448))), v66, *(v77 + 448), 1), v67, *(v77 + 448), 2), v68, *(v77 + 448), 3), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, COERCE_FLOAT(*(v77 + 400))), v66, *(v77 + 400), 1), v67, *(v77 + 400), 2), v68, *(v77 + 400), 3), v78.f32[0]), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, COERCE_FLOAT(*(v77 + 416))), v66, *(v77 + 416), 1), v67, *(v77 + 416), 2), v68, *(v77 + 416), 3), *v78.f32, 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, COERCE_FLOAT(*(v77 + 432))), v66, *(v77 + 432), 1), v67, *(v77 + 432), 2), v68, *(v77 + 432), 3), v78, 2));
          v80 = vmulq_f32(v79, v79);
        }

        while (sqrtf(v80.f32[2] + vaddv_f32(*v80.f32)) <= v71);
      }

      while (v63 < v64);
      v81 = v63 - 1;
      if (v63 - 1 != v9)
      {
        goto LABEL_34;
      }

LABEL_35:
      *v81 = v34;
      if (v50 < v51)
      {
        goto LABEL_38;
      }

      v82 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *>(v9, v81, a3);
      v11 = v81 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *>(v81 + 1, a2, a3);
      if (result)
      {
        break;
      }

      if (!v82)
      {
LABEL_38:
        result = std::__introsort<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *,false>(v9, v81, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v81 + 1;
      }
    }

    a2 = v81;
    if (!v82)
    {
      continue;
    }

    return result;
  }
}

_DWORD *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *,0>(_DWORD *result, _DWORD *a2, _DWORD *a3, float32x4_t *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *result;
  v8 = a4[1];
  v7 = a4[2];
  v10 = a4[3];
  v9 = a4[4];
  v11 = *(a5 + 16 * v5);
  v12 = *(a5 + 16 * v6);
  v13 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*v11[56].f32)), v7, v11[56], 1), v10, *v11[56].f32, 2), v9, *v11[56].f32, 3), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*v11[50].f32)), v7, v11[50], 1), v10, *v11[50].f32, 2), v9, *v11[50].f32, 3), COERCE_FLOAT(*v11[74].f32)), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*v11[52].f32)), v7, v11[52], 1), v10, *v11[52].f32, 2), v9, *v11[52].f32, 3), v11[74], 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*v11[54].f32)), v7, v11[54], 1), v10, *v11[54].f32, 2), v9, *v11[54].f32, 3), *v11[74].f32, 2));
  v14 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*v12[56].f32)), v7, v12[56], 1), v10, *v12[56].f32, 2), v9, *v12[56].f32, 3), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*v12[50].f32)), v7, v12[50], 1), v10, *v12[50].f32, 2), v9, *v12[50].f32, 3), COERCE_FLOAT(*v12[74].f32)), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*v12[52].f32)), v7, v12[52], 1), v10, *v12[52].f32, 2), v9, *v12[52].f32, 3), v12[74], 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*v12[54].f32)), v7, v12[54], 1), v10, *v12[54].f32, 2), v9, *v12[54].f32, 3), *v12[74].f32, 2));
  v15 = vmulq_f32(v13, v13);
  v16 = vmulq_f32(v14, v14);
  v17 = *a3;
  v18 = *(a5 + 16 * v17);
  v19 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*v18[56].f32)), v7, v18[56], 1), v10, *v18[56].f32, 2), v9, *v18[56].f32, 3), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*v18[50].f32)), v7, v18[50], 1), v10, *v18[50].f32, 2), v9, *v18[50].f32, 3), COERCE_FLOAT(*v18[74].f32)), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*v18[52].f32)), v7, v18[52], 1), v10, *v18[52].f32, 2), v9, *v18[52].f32, 3), v18[74], 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*v18[54].f32)), v7, v18[54], 1), v10, *v18[54].f32, 2), v9, *v18[54].f32, 3), *v18[74].f32, 2));
  v20 = vmulq_f32(v19, v19);
  v21 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v15, v15, 8uLL)), vadd_f32(vzip1_s32(*v20.i8, *v15.i8), vzip2_s32(*v20.i8, *v15.i8))));
  if (v21.f32[1] <= sqrtf(v16.f32[2] + vaddv_f32(*v16.f32)))
  {
    if (v21.f32[0] > v21.f32[1])
    {
      *a2 = v17;
      *a3 = v5;
      v22 = *a2;
      v23 = *result;
      v25 = a4[1];
      v24 = a4[2];
      v27 = a4[3];
      v26 = a4[4];
      v28 = *(a5 + 16 * v22);
      v29 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*v28[50].f32)), v24, v28[50], 1), v27, *v28[50].f32, 2), v26, *v28[50].f32, 3);
      v30 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*v28[52].f32)), v24, v28[52], 1), v27, *v28[52].f32, 2), v26, *v28[52].f32, 3);
      v31 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*v28[54].f32)), v24, v28[54], 1), v27, *v28[54].f32, 2), v26, *v28[54].f32, 3);
      v32 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*v28[56].f32)), v24, v28[56], 1), v27, *v28[56].f32, 2), v26, *v28[56].f32, 3);
      v33 = *(a5 + 16 * v23);
      v34 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*v33[50].f32)), v24, v33[50], 1), v27, *v33[50].f32, 2), v26, *v33[50].f32, 3);
      v35 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*v33[52].f32)), v24, v33[52], 1), v27, *v33[52].f32, 2), v26, *v33[52].f32, 3);
      v36 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*v33[54].f32)), v24, v33[54], 1), v27, *v33[54].f32, 2), v26, *v33[54].f32, 3);
      v37 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*v33[56].f32)), v24, v33[56], 1), v27, *v33[56].f32, 2), v26, *v33[56].f32, 3);
      v38 = vaddq_f32(v32, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*v28[74].f32)), v30, v28[74], 1), v31, *v28[74].f32, 2));
      v39 = vaddq_f32(v37, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(*v33[74].f32)), v35, v33[74], 1), v36, *v33[74].f32, 2));
      v40 = vmulq_f32(v38, v38);
      v41 = vmulq_f32(v39, v39);
      *v40.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v40, v40, 8uLL), *&vextq_s8(v41, v41, 8uLL)), vadd_f32(vzip1_s32(*v40.i8, *v41.i8), vzip2_s32(*v40.i8, *v41.i8))));
      if (vcgt_f32(*v40.i8, vdup_lane_s32(*v40.i8, 1)).u32[0])
      {
        *result = v22;
        *a2 = v23;
      }
    }
  }

  else
  {
    if (v21.f32[0] <= v21.f32[1])
    {
      *result = v5;
      *a2 = v6;
      v42 = *a3;
      v43 = a4[1];
      v44 = a4[2];
      v46 = a4[3];
      v45 = a4[4];
      v47 = *(a5 + 16 * v42);
      v48 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(*v47[50].f32)), v44, v47[50], 1), v46, *v47[50].f32, 2), v45, *v47[50].f32, 3);
      v49 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(*v47[52].f32)), v44, v47[52], 1), v46, *v47[52].f32, 2), v45, *v47[52].f32, 3);
      v50 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(*v47[54].f32)), v44, v47[54], 1), v46, *v47[54].f32, 2), v45, *v47[54].f32, 3);
      v51 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(*v47[56].f32)), v44, v47[56], 1), v46, *v47[56].f32, 2), v45, *v47[56].f32, 3);
      v52 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(*v12[50].f32)), v44, v12[50], 1), v46, *v12[50].f32, 2), v45, *v12[50].f32, 3);
      v53 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(*v12[52].f32)), v44, v12[52], 1), v46, *v12[52].f32, 2), v45, *v12[52].f32, 3);
      v54 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(*v12[54].f32)), v44, v12[54], 1), v46, *v12[54].f32, 2), v45, *v12[54].f32, 3);
      v55 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(*v12[56].f32)), v44, v12[56], 1), v46, *v12[56].f32, 2), v45, *v12[56].f32, 3);
      v56 = vaddq_f32(v51, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v48, COERCE_FLOAT(*v47[74].f32)), v49, v47[74], 1), v50, *v47[74].f32, 2));
      v57 = vaddq_f32(v55, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v52, COERCE_FLOAT(*v12[74].f32)), v53, v12[74], 1), v54, *v12[74].f32, 2));
      v58 = vmulq_f32(v56, v56);
      v59 = vmulq_f32(v57, v57);
      *v58.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v58, v58, 8uLL), *&vextq_s8(v59, v59, 8uLL)), vadd_f32(vzip1_s32(*v58.i8, *v59.i8), vzip2_s32(*v58.i8, *v59.i8))));
      if ((vcgt_f32(*v58.i8, vdup_lane_s32(*v58.i8, 1)).u32[0] & 1) == 0)
      {
        return result;
      }

      *a2 = v42;
    }

    else
    {
      *result = v17;
    }

    *a3 = v6;
  }

  return result;
}

_DWORD *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *,0>(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, float32x4_t ***a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *,0>(a1, a2, a3, **a5, *a5[1]);
  v11 = *a4;
  v12 = *a3;
  v13 = **a5;
  v14 = *a5[1];
  v16 = v13[1];
  v15 = v13[2];
  v18 = v13[3];
  v17 = v13[4];
  v19 = *(v14 + 16 * v11);
  v20 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*v19[50].f32)), v15, v19[50], 1), v18, *v19[50].f32, 2), v17, *v19[50].f32, 3);
  v21 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*v19[52].f32)), v15, v19[52], 1), v18, *v19[52].f32, 2), v17, *v19[52].f32, 3);
  v22 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*v19[54].f32)), v15, v19[54], 1), v18, *v19[54].f32, 2), v17, *v19[54].f32, 3);
  v23 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*v19[56].f32)), v15, v19[56], 1), v18, *v19[56].f32, 2), v17, *v19[56].f32, 3);
  v24 = *(v14 + 16 * v12);
  v25 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*v24[50].f32)), v15, v24[50], 1), v18, *v24[50].f32, 2), v17, *v24[50].f32, 3);
  v26 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*v24[52].f32)), v15, v24[52], 1), v18, *v24[52].f32, 2), v17, *v24[52].f32, 3);
  v27 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*v24[54].f32)), v15, v24[54], 1), v18, *v24[54].f32, 2), v17, *v24[54].f32, 3);
  v28 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*v24[56].f32)), v15, v24[56], 1), v18, *v24[56].f32, 2), v17, *v24[56].f32, 3);
  v29 = vaddq_f32(v23, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, COERCE_FLOAT(*v19[74].f32)), v21, v19[74], 1), v22, *v19[74].f32, 2));
  v30 = vaddq_f32(v28, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*v24[74].f32)), v26, v24[74], 1), v27, *v24[74].f32, 2));
  v31 = vmulq_f32(v29, v29);
  v32 = vmulq_f32(v30, v30);
  *v31.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v32, v32, 8uLL)), vadd_f32(vzip1_s32(*v31.i8, *v32.i8), vzip2_s32(*v31.i8, *v32.i8))));
  if (vcgt_f32(*v31.i8, vdup_lane_s32(*v31.i8, 1)).u32[0])
  {
    *a3 = v11;
    *a4 = v12;
    v33 = *a3;
    v34 = *a2;
    v36 = v13[1];
    v35 = v13[2];
    v38 = v13[3];
    v37 = v13[4];
    v39 = *(v14 + 16 * v33);
    v40 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*v39[50].f32)), v35, v39[50], 1), v38, *v39[50].f32, 2), v37, *v39[50].f32, 3);
    v41 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*v39[52].f32)), v35, v39[52], 1), v38, *v39[52].f32, 2), v37, *v39[52].f32, 3);
    v42 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*v39[54].f32)), v35, v39[54], 1), v38, *v39[54].f32, 2), v37, *v39[54].f32, 3);
    v43 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*v39[56].f32)), v35, v39[56], 1), v38, *v39[56].f32, 2), v37, *v39[56].f32, 3);
    v44 = *(v14 + 16 * v34);
    v45 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*v44[50].f32)), v35, v44[50], 1), v38, *v44[50].f32, 2), v37, *v44[50].f32, 3);
    v46 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*v44[52].f32)), v35, v44[52], 1), v38, *v44[52].f32, 2), v37, *v44[52].f32, 3);
    v47 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*v44[54].f32)), v35, v44[54], 1), v38, *v44[54].f32, 2), v37, *v44[54].f32, 3);
    v48 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*v44[56].f32)), v35, v44[56], 1), v38, *v44[56].f32, 2), v37, *v44[56].f32, 3);
    v49 = vaddq_f32(v43, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, COERCE_FLOAT(*v39[74].f32)), v41, v39[74], 1), v42, *v39[74].f32, 2));
    v50 = vaddq_f32(v48, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45, COERCE_FLOAT(*v44[74].f32)), v46, v44[74], 1), v47, *v44[74].f32, 2));
    v51 = vmulq_f32(v49, v49);
    v52 = vmulq_f32(v50, v50);
    *v51.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v51, v51, 8uLL), *&vextq_s8(v52, v52, 8uLL)), vadd_f32(vzip1_s32(*v51.i8, *v52.i8), vzip2_s32(*v51.i8, *v52.i8))));
    if (vcgt_f32(*v51.i8, vdup_lane_s32(*v51.i8, 1)).u32[0])
    {
      *a2 = v33;
      *a3 = v34;
      v53 = *a2;
      v54 = *a1;
      v56 = v13[1];
      v55 = v13[2];
      v58 = v13[3];
      v57 = v13[4];
      v59 = *(v14 + 16 * v53);
      v60 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*v59[50].f32)), v55, v59[50], 1), v58, *v59[50].f32, 2), v57, *v59[50].f32, 3);
      v61 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*v59[52].f32)), v55, v59[52], 1), v58, *v59[52].f32, 2), v57, *v59[52].f32, 3);
      v62 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*v59[54].f32)), v55, v59[54], 1), v58, *v59[54].f32, 2), v57, *v59[54].f32, 3);
      v63 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*v59[56].f32)), v55, v59[56], 1), v58, *v59[56].f32, 2), v57, *v59[56].f32, 3);
      v64 = *(v14 + 16 * v54);
      v65 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*v64[50].f32)), v55, v64[50], 1), v58, *v64[50].f32, 2), v57, *v64[50].f32, 3);
      v66 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*v64[52].f32)), v55, v64[52], 1), v58, *v64[52].f32, 2), v57, *v64[52].f32, 3);
      v67 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*v64[54].f32)), v55, v64[54], 1), v58, *v64[54].f32, 2), v57, *v64[54].f32, 3);
      v68 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*v64[56].f32)), v55, v64[56], 1), v58, *v64[56].f32, 2), v57, *v64[56].f32, 3);
      v69 = vaddq_f32(v63, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v60, COERCE_FLOAT(*v59[74].f32)), v61, v59[74], 1), v62, *v59[74].f32, 2));
      v70 = vaddq_f32(v68, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, COERCE_FLOAT(*v64[74].f32)), v66, v64[74], 1), v67, *v64[74].f32, 2));
      v71 = vmulq_f32(v69, v69);
      v72 = vmulq_f32(v70, v70);
      *v71.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v71, v71, 8uLL), *&vextq_s8(v72, v72, 8uLL)), vadd_f32(vzip1_s32(*v71.i8, *v72.i8), vzip2_s32(*v71.i8, *v72.i8))));
      if (vcgt_f32(*v71.i8, vdup_lane_s32(*v71.i8, 1)).u32[0])
      {
        *a1 = v53;
        *a2 = v54;
      }
    }
  }

  return result;
}

_DWORD *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *,0>(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, float32x4_t ***a6)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *,0>(a1, a2, a3, a4, a6);
  v13 = *a5;
  v14 = *a4;
  v15 = **a6;
  v16 = *a6[1];
  v18 = v15[1];
  v17 = v15[2];
  v20 = v15[3];
  v19 = v15[4];
  v21 = *(v16 + 16 * v13);
  v22 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*v21[50].f32)), v17, v21[50], 1), v20, *v21[50].f32, 2), v19, *v21[50].f32, 3);
  v23 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*v21[52].f32)), v17, v21[52], 1), v20, *v21[52].f32, 2), v19, *v21[52].f32, 3);
  v24 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*v21[54].f32)), v17, v21[54], 1), v20, *v21[54].f32, 2), v19, *v21[54].f32, 3);
  v25 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*v21[56].f32)), v17, v21[56], 1), v20, *v21[56].f32, 2), v19, *v21[56].f32, 3);
  v26 = *(v16 + 16 * v14);
  v27 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*v26[50].f32)), v17, v26[50], 1), v20, *v26[50].f32, 2), v19, *v26[50].f32, 3);
  v28 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*v26[52].f32)), v17, v26[52], 1), v20, *v26[52].f32, 2), v19, *v26[52].f32, 3);
  v29 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*v26[54].f32)), v17, v26[54], 1), v20, *v26[54].f32, 2), v19, *v26[54].f32, 3);
  v30 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*v26[56].f32)), v17, v26[56], 1), v20, *v26[56].f32, 2), v19, *v26[56].f32, 3);
  v31 = vaddq_f32(v25, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*v21[74].f32)), v23, v21[74], 1), v24, *v21[74].f32, 2));
  v32 = vaddq_f32(v30, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*v26[74].f32)), v28, v26[74], 1), v29, *v26[74].f32, 2));
  v33 = vmulq_f32(v31, v31);
  v34 = vmulq_f32(v32, v32);
  *v33.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v33, v33, 8uLL), *&vextq_s8(v34, v34, 8uLL)), vadd_f32(vzip1_s32(*v33.i8, *v34.i8), vzip2_s32(*v33.i8, *v34.i8))));
  if (vcgt_f32(*v33.i8, vdup_lane_s32(*v33.i8, 1)).u32[0])
  {
    *a4 = v13;
    *a5 = v14;
    v35 = *a4;
    v36 = *a3;
    v38 = v15[1];
    v37 = v15[2];
    v40 = v15[3];
    v39 = v15[4];
    v41 = *(v16 + 16 * v35);
    v42 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v41[50].f32)), v37, v41[50], 1), v40, *v41[50].f32, 2), v39, *v41[50].f32, 3);
    v43 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v41[52].f32)), v37, v41[52], 1), v40, *v41[52].f32, 2), v39, *v41[52].f32, 3);
    v44 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v41[54].f32)), v37, v41[54], 1), v40, *v41[54].f32, 2), v39, *v41[54].f32, 3);
    v45 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v41[56].f32)), v37, v41[56], 1), v40, *v41[56].f32, 2), v39, *v41[56].f32, 3);
    v46 = *(v16 + 16 * v36);
    v47 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v46[50].f32)), v37, v46[50], 1), v40, *v46[50].f32, 2), v39, *v46[50].f32, 3);
    v48 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v46[52].f32)), v37, v46[52], 1), v40, *v46[52].f32, 2), v39, *v46[52].f32, 3);
    v49 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v46[54].f32)), v37, v46[54], 1), v40, *v46[54].f32, 2), v39, *v46[54].f32, 3);
    v50 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v46[56].f32)), v37, v46[56], 1), v40, *v46[56].f32, 2), v39, *v46[56].f32, 3);
    v51 = vaddq_f32(v45, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v42, COERCE_FLOAT(*v41[74].f32)), v43, v41[74], 1), v44, *v41[74].f32, 2));
    v52 = vaddq_f32(v50, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v47, COERCE_FLOAT(*v46[74].f32)), v48, v46[74], 1), v49, *v46[74].f32, 2));
    v53 = vmulq_f32(v51, v51);
    v54 = vmulq_f32(v52, v52);
    *v53.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v53, v53, 8uLL), *&vextq_s8(v54, v54, 8uLL)), vadd_f32(vzip1_s32(*v53.i8, *v54.i8), vzip2_s32(*v53.i8, *v54.i8))));
    if (vcgt_f32(*v53.i8, vdup_lane_s32(*v53.i8, 1)).u32[0])
    {
      *a3 = v35;
      *a4 = v36;
      v55 = *a3;
      v56 = *a2;
      v58 = v15[1];
      v57 = v15[2];
      v60 = v15[3];
      v59 = v15[4];
      v61 = *(v16 + 16 * v55);
      v62 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, COERCE_FLOAT(*v61[50].f32)), v57, v61[50], 1), v60, *v61[50].f32, 2), v59, *v61[50].f32, 3);
      v63 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, COERCE_FLOAT(*v61[52].f32)), v57, v61[52], 1), v60, *v61[52].f32, 2), v59, *v61[52].f32, 3);
      v64 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, COERCE_FLOAT(*v61[54].f32)), v57, v61[54], 1), v60, *v61[54].f32, 2), v59, *v61[54].f32, 3);
      v65 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, COERCE_FLOAT(*v61[56].f32)), v57, v61[56], 1), v60, *v61[56].f32, 2), v59, *v61[56].f32, 3);
      v66 = *(v16 + 16 * v56);
      v67 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, COERCE_FLOAT(*v66[50].f32)), v57, v66[50], 1), v60, *v66[50].f32, 2), v59, *v66[50].f32, 3);
      v68 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, COERCE_FLOAT(*v66[52].f32)), v57, v66[52], 1), v60, *v66[52].f32, 2), v59, *v66[52].f32, 3);
      v69 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, COERCE_FLOAT(*v66[54].f32)), v57, v66[54], 1), v60, *v66[54].f32, 2), v59, *v66[54].f32, 3);
      v70 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, COERCE_FLOAT(*v66[56].f32)), v57, v66[56], 1), v60, *v66[56].f32, 2), v59, *v66[56].f32, 3);
      v71 = vaddq_f32(v65, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v62, COERCE_FLOAT(*v61[74].f32)), v63, v61[74], 1), v64, *v61[74].f32, 2));
      v72 = vaddq_f32(v70, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, COERCE_FLOAT(*v66[74].f32)), v68, v66[74], 1), v69, *v66[74].f32, 2));
      v73 = vmulq_f32(v71, v71);
      v74 = vmulq_f32(v72, v72);
      *v73.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v73, v73, 8uLL), *&vextq_s8(v74, v74, 8uLL)), vadd_f32(vzip1_s32(*v73.i8, *v74.i8), vzip2_s32(*v73.i8, *v74.i8))));
      if (vcgt_f32(*v73.i8, vdup_lane_s32(*v73.i8, 1)).u32[0])
      {
        *a2 = v55;
        *a3 = v56;
        v75 = *a2;
        v76 = *a1;
        v78 = v15[1];
        v77 = v15[2];
        v80 = v15[3];
        v79 = v15[4];
        v81 = *(v16 + 16 * v75);
        v82 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*v81[50].f32)), v77, v81[50], 1), v80, *v81[50].f32, 2), v79, *v81[50].f32, 3);
        v83 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*v81[52].f32)), v77, v81[52], 1), v80, *v81[52].f32, 2), v79, *v81[52].f32, 3);
        v84 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*v81[54].f32)), v77, v81[54], 1), v80, *v81[54].f32, 2), v79, *v81[54].f32, 3);
        v85 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*v81[56].f32)), v77, v81[56], 1), v80, *v81[56].f32, 2), v79, *v81[56].f32, 3);
        v86 = *(v16 + 16 * v76);
        v87 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*v86[50].f32)), v77, v86[50], 1), v80, *v86[50].f32, 2), v79, *v86[50].f32, 3);
        v88 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*v86[52].f32)), v77, v86[52], 1), v80, *v86[52].f32, 2), v79, *v86[52].f32, 3);
        v89 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*v86[54].f32)), v77, v86[54], 1), v80, *v86[54].f32, 2), v79, *v86[54].f32, 3);
        v90 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*v86[56].f32)), v77, v86[56], 1), v80, *v86[56].f32, 2), v79, *v86[56].f32, 3);
        v91 = vaddq_f32(v85, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v82, COERCE_FLOAT(*v81[74].f32)), v83, v81[74], 1), v84, *v81[74].f32, 2));
        v92 = vaddq_f32(v90, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v87, COERCE_FLOAT(*v86[74].f32)), v88, v86[74], 1), v89, *v86[74].f32, 2));
        v93 = vmulq_f32(v91, v91);
        v94 = vmulq_f32(v92, v92);
        *v93.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v93, v93, 8uLL), *&vextq_s8(v94, v94, 8uLL)), vadd_f32(vzip1_s32(*v93.i8, *v94.i8), vzip2_s32(*v93.i8, *v94.i8))));
        if (vcgt_f32(*v93.i8, vdup_lane_s32(*v93.i8, 1)).u32[0])
        {
          *a1 = v75;
          *a2 = v76;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *>(unsigned int *a1, unsigned int *a2, float32x4_t ***a3)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *,0>(a1, a1 + 1, a2 - 1, **a3, *a3[1]);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
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
      v8 = *a3[1];
      v10 = v7[1];
      v9 = v7[2];
      v12 = v7[3];
      v11 = v7[4];
      v13 = *(v8 + 16 * v5);
      v14 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*v13[50].f32)), v9, v13[50], 1), v12, *v13[50].f32, 2), v11, *v13[50].f32, 3);
      v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*v13[52].f32)), v9, v13[52], 1), v12, *v13[52].f32, 2), v11, *v13[52].f32, 3);
      v16 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*v13[54].f32)), v9, v13[54], 1), v12, *v13[54].f32, 2), v11, *v13[54].f32, 3);
      v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*v13[56].f32)), v9, v13[56], 1), v12, *v13[56].f32, 2), v11, *v13[56].f32, 3);
      v18 = *(v8 + 16 * v6);
      v19 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*v18[50].f32)), v9, v18[50], 1), v12, *v18[50].f32, 2), v11, *v18[50].f32, 3);
      v20 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*v18[52].f32)), v9, v18[52], 1), v12, *v18[52].f32, 2), v11, *v18[52].f32, 3);
      v21 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*v18[54].f32)), v9, v18[54], 1), v12, *v18[54].f32, 2), v11, *v18[54].f32, 3);
      v22 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*v18[56].f32)), v9, v18[56], 1), v12, *v18[56].f32, 2), v11, *v18[56].f32, 3);
      v23 = vaddq_f32(v17, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(*v13[74].f32)), v15, v13[74], 1), v16, *v13[74].f32, 2));
      v24 = vaddq_f32(v22, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*v18[74].f32)), v20, v18[74], 1), v21, *v18[74].f32, 2));
      v25 = vmulq_f32(v23, v23);
      v26 = vmulq_f32(v24, v24);
      *v25.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v25, v25, 8uLL), *&vextq_s8(v26, v26, 8uLL)), vadd_f32(vzip1_s32(*v25.i8, *v26.i8), vzip2_s32(*v25.i8, *v26.i8))));
      if (vcgt_f32(*v25.i8, vdup_lane_s32(*v25.i8, 1)).u32[0])
      {
        *a1 = v5;
        *(a2 - 1) = v6;
        return 1;
      }

      return 1;
    }
  }

  v28 = a1 + 2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,apple3dgs::Sorter::EncodeSorting(objc_object  {objcproto16MTLCommandBuffer}*,std::span<std::shared_ptr<apple3dgs::Asset const> const,18446744073709551615ul>,std::span<apple3dgs::SorterDescriptor const>,std::span<apple3dgs::RenderDescriptor const>,NSError * {__autoreleasing}*)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, **a3, *a3[1]);
  v31 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v32 = 0;
  v33 = 0;
  v34 = **a3;
  v35 = *a3[1];
  while (1)
  {
    v36 = *v31;
    v38 = v34[1];
    v37 = v34[2];
    v40 = v34[3];
    v39 = v34[4];
    v41 = *(v35 + 16 * v36);
    v42 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v41[50].f32)), v37, v41[50], 1), v40, *v41[50].f32, 2), v39, *v41[50].f32, 3);
    v43 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v41[52].f32)), v37, v41[52], 1), v40, *v41[52].f32, 2), v39, *v41[52].f32, 3);
    v44 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v41[54].f32)), v37, v41[54], 1), v40, *v41[54].f32, 2), v39, *v41[54].f32, 3);
    v45 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v41[56].f32)), v37, v41[56], 1), v40, *v41[56].f32, 2), v39, *v41[56].f32, 3);
    v46 = *(v35 + 16 * *v28);
    v47 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v46[50].f32)), v37, v46[50], 1), v40, *v46[50].f32, 2), v39, *v46[50].f32, 3);
    v48 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v46[52].f32)), v37, v46[52], 1), v40, *v46[52].f32, 2), v39, *v46[52].f32, 3);
    v49 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v46[54].f32)), v37, v46[54], 1), v40, *v46[54].f32, 2), v39, *v46[54].f32, 3);
    v50 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(*v46[56].f32)), v37, v46[56], 1), v40, *v46[56].f32, 2), v39, *v46[56].f32, 3);
    v51 = vaddq_f32(v45, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v42, COERCE_FLOAT(*v41[74].f32)), v43, v41[74], 1), v44, *v41[74].f32, 2));
    v52 = vaddq_f32(v50, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v47, COERCE_FLOAT(*v46[74].f32)), v48, v46[74], 1), v49, *v46[74].f32, 2));
    v53 = vmulq_f32(v51, v51);
    v54 = vmulq_f32(v52, v52);
    *v53.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v53, v53, 8uLL), *&vextq_s8(v54, v54, 8uLL)), vadd_f32(vzip1_s32(*v53.i8, *v54.i8), vzip2_s32(*v53.i8, *v54.i8))));
    if (vcgt_f32(*v53.i8, vdup_lane_s32(*v53.i8, 1)).u32[0])
    {
      break;
    }

LABEL_20:
    v28 = v31;
    v32 += 4;
    if (++v31 == a2)
    {
      return 1;
    }
  }

  v55 = v32;
  do
  {
    *(a1 + v55 + 12) = *(a1 + v55 + 8);
    if (v55 == -8)
    {
      *a1 = v36;
      if (++v33 != 8)
      {
        goto LABEL_20;
      }

      return v31 + 1 == a2;
    }

    v56 = v34[1];
    v57 = v34[2];
    v59 = v34[3];
    v58 = v34[4];
    v60 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*v41[50].f32)), v57, v41[50], 1), v59, *v41[50].f32, 2), v58, *v41[50].f32, 3);
    v61 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*v41[52].f32)), v57, v41[52], 1), v59, *v41[52].f32, 2), v58, *v41[52].f32, 3);
    v62 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*v41[54].f32)), v57, v41[54], 1), v59, *v41[54].f32, 2), v58, *v41[54].f32, 3);
    v63 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*v41[56].f32)), v57, v41[56], 1), v59, *v41[56].f32, 2), v58, *v41[56].f32, 3);
    v64 = *(v35 + 16 * *(a1 + v55 + 4));
    v65 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*v64[50].f32)), v57, v64[50], 1), v59, *v64[50].f32, 2), v58, *v64[50].f32, 3);
    v66 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*v64[52].f32)), v57, v64[52], 1), v59, *v64[52].f32, 2), v58, *v64[52].f32, 3);
    v67 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*v64[54].f32)), v57, v64[54], 1), v59, *v64[54].f32, 2), v58, *v64[54].f32, 3);
    v68 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*v64[56].f32)), v57, v64[56], 1), v59, *v64[56].f32, 2), v58, *v64[56].f32, 3);
    v69 = vaddq_f32(v63, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v60, COERCE_FLOAT(*v41[74].f32)), v61, v41[74], 1), v62, *v41[74].f32, 2));
    v70 = vaddq_f32(v68, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, COERCE_FLOAT(*v64[74].f32)), v66, v64[74], 1), v67, *v64[74].f32, 2));
    v71 = vmulq_f32(v69, v69);
    v72 = vmulq_f32(v70, v70);
    *v71.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v71, v71, 8uLL), *&vextq_s8(v72, v72, 8uLL)), vadd_f32(vzip1_s32(*v71.i8, *v72.i8), vzip2_s32(*v71.i8, *v72.i8))));
    v55 -= 4;
  }

  while ((vcgt_f32(*v71.i8, vdup_lane_s32(*v71.i8, 1)).u32[0] & 1) != 0);
  *(a1 + v55 + 12) = v36;
  if (++v33 != 8)
  {
    goto LABEL_20;
  }

  return v31 + 1 == a2;
}

void std::vector<std::string>::__append(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v10 = 24 * ((24 * __n - 24) / 0x18) + 24;
      bzero(this->__end_, v10);
      end = (end + v10);
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v6 = end - this->__begin_;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + __n;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
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

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 24 * ((24 * __n - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    memcpy(v14, begin, v6);
    this->__begin_ = v14;
    this->__end_ = v13;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

uint64_t *std::map<std::string,std::unique_ptr<apple3dgs::SortWorker>>::at(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = *(v2 + 55);
      v7 = v6 >= 0 ? (v2 + 4) : v2[4];
      v8 = v6 >= 0 ? *(v2 + 55) : v2[5];
      v9 = (v8 >= v5 ? v5 : v8);
      v10 = memcmp(v4, v7, v9);
      if (v10)
      {
        break;
      }

      if (v5 >= v8)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v2;
      if (!v2)
      {
        goto LABEL_27;
      }
    }

    if (v10 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v11 = memcmp(v7, v4, v9);
    if (v11)
    {
      if ((v11 & 0x80000000) == 0)
      {
        return (v2 + 7);
      }

      goto LABEL_26;
    }

    if (v8 >= v5)
    {
      return (v2 + 7);
    }

LABEL_26:
    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void std::__tree<std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>>>::destroy(a1, *(a2 + 1));
    v4 = *(a2 + 7);
    *(a2 + 7) = 0;
    if (v4)
    {
      apple3dgs::SortWorker::~SortWorker(v4);
      MEMORY[0x24C1A2010]();
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

void *std::__tree<std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
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
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void sub_24746D254(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::unique_ptr<apple3dgs::SortWorker>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 56);
      *(v2 + 56) = 0;
      if (v3)
      {
        apple3dgs::SortWorker::~SortWorker(v3);
        MEMORY[0x24C1A2010]();
      }

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t apple3dgs::RadixSorter::RadixSorter(uint64_t a1, void *a2, unsigned int a3, char a4, uint64_t a5)
{
  v9 = a2;
  MetalContext::MetalContext(a1, v9, a5);
  *(a1 + 152) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 168) = 0x10000000008;
  *(a1 + 176) = a4;
  apple3dgs::CheckAlloc((a1 + 152), 0x1000uLL, v9, 0);
  apple3dgs::CheckAlloc((a1 + 160), 0x1000uLL, v9, 0);
  apple3dgs::RadixSorter::CheckInternalDataAlloc(a1, a3);

  return a1;
}

void sub_24746D3A0(_Unwind_Exception *a1)
{
  MetalContext::~MetalContext(v2);

  _Unwind_Resume(a1);
}

void apple3dgs::RadixSorter::CheckInternalDataAlloc(apple3dgs::RadixSorter *this, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0x400000)
    {
      v3 = 8;
    }

    else
    {
      v3 = 4;
    }

    *(this + 42) = v3;
    *(this + 43) = 1 << v3;
    v4 = a2 + 1023;
    apple3dgs::CheckAlloc(this + 15, 4 * ((a2 + 1023) >> 10 << v3), *this, 0);
    apple3dgs::CheckAlloc(this + 16, 4 * (v4 & 0xFFFFFC00), *this, 0);
    v6 = 4 * a2;
    apple3dgs::CheckAlloc(this + 17, v6, *this, 0);
    v7 = *this;

    apple3dgs::CheckAlloc(this + 18, v6, v7, 0);
  }
}

void apple3dgs::RadixSorter::Sort(uint64_t a1, void *a2, void *a3, void *a4, unsigned int a5)
{
  v13 = a2;
  v9 = a3;
  v10 = a4;
  apple3dgs::RadixSorter::CheckInternalDataAlloc(a1, a5);
  v11 = *(a1 + 168);
  v12 = [v13 computeCommandEncoder];
  apple3dgs::RadixSorter::InitIndices(a1, v12, v10, a5);
  if (v11 <= 0xFFFFFFE0)
  {
    apple3dgs::RadixSorter::ComputeHistogram(a1, v12, v9, *(a1 + 120), 0, a5);
    apple3dgs::RadixSorter::PrefixSum(a1, v12, *(a1 + 152), *(a1 + 160), *(a1 + 120), *(a1 + 128), a5);
  }

  [v12 endEncoding];
}

void apple3dgs::RadixSorter::InitIndices(uint64_t a1, void *a2, void *a3, unsigned int a4)
{
  v7 = a2;
  v8 = a3;
  __p[23] = 11;
  strcpy(__p, "InitIndices");
  LOBYTE(v14) = 0;
  v15 = 0;
  LOBYTE(v12) = 0;
  v13 = 0;
  v9 = MetalContext::computePipelineState(a1, __p, &v14, &v12);
  if (v13 != 1)
  {
    if (v15 != 1)
    {
      goto LABEL_3;
    }

LABEL_6:

    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    operator delete(*__p);
    goto LABEL_4;
  }

  if (v15 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((__p[23] & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  [v7 setComputePipelineState:v9];
  [v7 setBuffer:v8 offset:0 atIndex:0];
  *__p = a4;
  *&__p[8] = vdupq_n_s64(1uLL);
  v10 = 1024;
  v11 = *&__p[8];
  [v7 dispatchThreads:__p threadsPerThreadgroup:&v10];
}

void sub_24746D7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, char a13, void *a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a13 == 1)
  {

    if (a15 != 1)
    {
LABEL_3:
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (a15 != 1)
  {
    goto LABEL_3;
  }

  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);

  _Unwind_Resume(a1);
}

void apple3dgs::RadixSorter::ComputeHistogram(uint64_t a1, void *a2, void *a3, void *a4, int a5, int a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v26 = a6;
  v27 = a5;
  snprintf(__str, 0x100uLL, "RadixSortMakeHistogramKernel%d_uint", *(a1 + 172));
  v14 = strlen(__str);
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    operator new();
  }

  v25.i8[15] = v14;
  if (v14)
  {
    memcpy(&__dst, __str, v14);
  }

  *(&__dst + v15) = 0;
  LOBYTE(v22) = 0;
  v23 = 0;
  LOBYTE(v20) = 0;
  v21 = 0;
  v16 = MetalContext::computePipelineState(a1, &__dst, &v22, &v20);
  if (v21 == 1)
  {
  }

  if (v23 == 1)
  {
  }

  if (v25.i8[15] < 0)
  {
    operator delete(__dst);
  }

  [v11 setComputePipelineState:v16];
  [v11 setBytes:&v27 length:4 atIndex:0];
  [v11 setBytes:&v26 length:4 atIndex:1];
  [v11 setBuffer:v12 offset:0 atIndex:2];
  [v11 setBuffer:v13 offset:0 atIndex:3];
  __dst = ((v26 + 1023) >> 10);
  v25 = vdupq_n_s64(1uLL);
  v18 = 1024;
  v19 = v25;
  [v11 dispatchThreadgroups:&__dst threadsPerThreadgroup:&v18];

  v17 = *MEMORY[0x277D85DE8];
}

void apple3dgs::RadixSorter::PrefixSum(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, int a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  apple3dgs::RadixSorter::ClearBuffer(a1, v13, v14, 0x400u, 0);
  v18 = *(a1 + 172);
  HIBYTE(__p[2]) = 20;
  strcpy(__p, "ReduceSumKernel_uint");
  LOBYTE(v24) = 0;
  v25 = 0;
  LOBYTE(v22) = 0;
  v23 = 0;
  v19 = MetalContext::computePipelineState(a1, __p, &v24, &v22);
  if (v23 == 1)
  {

    if (v25 != 1)
    {
LABEL_3:
      if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_7:
      operator delete(__p[0]);
LABEL_4:
      [v13 setComputePipelineState:v19];
      [v13 setBuffer:v16 offset:0 atIndex:0];
      [v13 setBuffer:v14 offset:0 atIndex:1];
      __p[0] = ((v18 * ((a7 + 1023) >> 10) + 1023) >> 10);
      *&__p[1] = vdupq_n_s64(1uLL);
      v20 = 1024;
      v21 = *&__p[1];
      [v13 dispatchThreadgroups:__p threadsPerThreadgroup:&v20];

      operator new();
    }
  }

  else if (v25 != 1)
  {
    goto LABEL_3;
  }

  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  goto LABEL_7;
}

void sub_24746DF14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11, void *a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a11 == 1)
  {
  }

  if (a13 == 1)
  {
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void apple3dgs::RadixSorter::Reorder(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, int a8, int a9)
{
  v36 = *MEMORY[0x277D85DE8];
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v34 = a8;
  snprintf(__str, 0x100uLL, "RadixSortReorderKernel%d_uint", *(a1 + 172));
  v22 = strlen(__str);
  if (v22 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v23 = v22;
  if (v22 >= 0x17)
  {
    operator new();
  }

  v33.i8[15] = v22;
  if (v22)
  {
    memcpy(&__dst, __str, v22);
  }

  *(&__dst + v23) = 0;
  LOBYTE(v30) = 0;
  v31 = 0;
  LOBYTE(v28) = 0;
  v29 = 0;
  v24 = MetalContext::computePipelineState(a1, &__dst, &v30, &v28);
  if (v29 == 1)
  {
  }

  if (v31 == 1)
  {
  }

  if (v33.i8[15] < 0)
  {
    operator delete(__dst);
  }

  [v16 setComputePipelineState:v24];
  [v16 setBytes:&v34 length:4 atIndex:0];
  [v16 setBytes:&a9 length:4 atIndex:1];
  [v16 setBuffer:v17 offset:0 atIndex:2];
  [v16 setBuffer:v19 offset:0 atIndex:3];
  [v16 setBuffer:v21 offset:0 atIndex:4];
  [v16 setBuffer:v18 offset:0 atIndex:5];
  [v16 setBuffer:v20 offset:0 atIndex:6];
  __dst = ((a9 + 1023) >> 10);
  v33 = vdupq_n_s64(1uLL);
  v26 = xmmword_24747AB60;
  v27 = 1;
  [v16 dispatchThreadgroups:&__dst threadsPerThreadgroup:&v26];

  v25 = *MEMORY[0x277D85DE8];
}

void apple3dgs::RadixSorter::ClearBuffer(uint64_t a1, void *a2, void *a3, unsigned int a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v19 = a5;
  HIBYTE(__p[2]) = 11;
  strcpy(__p, "ClearBuffer");
  LOBYTE(v16) = 0;
  v17 = 0;
  LOBYTE(v14) = 0;
  v15 = 0;
  v11 = MetalContext::computePipelineState(a1, __p, &v16, &v14);
  if (v15 != 1)
  {
    if (v17 != 1)
    {
      goto LABEL_3;
    }

LABEL_6:

    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    operator delete(__p[0]);
    goto LABEL_4;
  }

  if (v17 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  [v9 setComputePipelineState:v11];
  [v9 setBuffer:v10 offset:0 atIndex:0];
  [v9 setBytes:&v19 length:4 atIndex:1];
  __p[0] = a4;
  *&__p[1] = vdupq_n_s64(1uLL);
  v12 = xmmword_24747AB60;
  v13 = 1;
  [v9 dispatchThreads:__p threadsPerThreadgroup:&v12];
}

void sub_24746E498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, char a14, void *a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 == 1)
  {

    if (a16 != 1)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (a16 != 1)
  {
    goto LABEL_3;
  }

  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);

  _Unwind_Resume(a1);
}

uint64_t apple3dgs::Refiner::Encode(void *a1, void *a2, uint64_t a3, int a4)
{
  v7 = a2;
  v9 = a4;
  [v7 setRenderPipelineState:a1[3]];
  if (a1[4])
  {
    [v7 setDepthStencilState:?];
  }

  [v7 setVertexBytes:&v9 length:4 atIndex:0];
  [v7 setFragmentBytes:a3 length:8 atIndex:0];
  [v7 setFragmentBytes:a1 + 10 length:48 atIndex:1];
  [v7 setFragmentTexture:a1[6] atIndex:0];
  [v7 setFragmentTexture:a1[7] atIndex:1];
  [v7 setFragmentTexture:a1[8] atIndex:2];
  [v7 setFragmentTexture:a1[9] atIndex:3];
  [v7 setCullMode:0];
  [v7 drawPrimitives:3 vertexStart:0 vertexCount:6];

  return 1;
}

uint64_t apple3dgs::PostAlphaBlend::Encode(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v7 = a2;
  v9 = a4;
  [v7 setRenderPipelineState:*(a1 + 24)];
  if (*(a1 + 32))
  {
    [v7 setDepthStencilState:?];
  }

  [v7 setVertexBytes:&v9 length:4 atIndex:0];
  [v7 setFragmentBytes:a3 length:8 atIndex:0];
  [v7 setCullMode:0];
  [v7 drawPrimitives:3 vertexStart:0 vertexCount:6];

  return 1;
}

void apple3dgs::PostAlphaBlend::~PostAlphaBlend(id *this)
{
}

{

  JUMPOUT(0x24C1A2010);
}

void happly::PLYData::parseASCII(void ***a1, void **a2, void **a3)
{
  v5 = *a1;
  v6 = a2;
  if (v5 != a2)
  {
    do
    {
      v8 = *(v5 - 1);
      v5 -= 3;
      if (v8 < 0)
      {
        operator delete(*v5);
      }
    }

    while (v5 != a2);
    v6 = *a3;
  }

  *a1 = a2;
  operator delete(v6);
}

void happly::TypedListProperty<unsigned char>::TypedListProperty(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_0(a1);
  if (v3)
  {
    *(v2 + 40) = v3;
    operator delete(v3);
  }

  OUTLINED_FUNCTION_1();
  if (v4 < 0)
  {
    operator delete(*v1);
  }
}

void apple3dgs::TVData::TVData(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    OUTLINED_FUNCTION_0_0(v2, a1);
  }
}

uint64_t nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(uint64_t result, void *a2)
{
  v2 = (result + 40);
  v3 = *(result + 40);
  *(result + 24) = 1;
  --*a2;
  if (v3 || (v2 = (result + 48), (v3 = *(result + 48)) != 0))
  {
    *v2 = v3 - 1;
  }

  if (*(result + 20) != -1)
  {
    --*(result + 64);
  }

  return result;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan(int64x2_t *a1, _DWORD *a2)
{
  nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::skip_whitespace(a1);
  if (a1[1].i8[0] == 1)
  {
    do
    {
      if (a1[1].i32[1] != 47)
      {
        break;
      }

      if (!nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_comment(a1))
      {
        goto LABEL_36;
      }

      nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::skip_whitespace(a1);
    }

    while ((a1[1].i8[0] & 1) != 0);
  }

  v4 = a1[1].i32[1];
  switch(v4)
  {
    case '""':
      result = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_string(a1);
      goto LABEL_37;
    case '#':
    case '$':
    case '%':
    case '&':
    case '\'':
    case '(':
    case ')':
    case '*':
    case '+':
    case '.':
    case '/':
      goto LABEL_35;
    case ',':
      result = 13;
      goto LABEL_37;
    case '-':
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
      result = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_number(a1);
      goto LABEL_37;
    case ':':
      result = 12;
      goto LABEL_37;
    default:
      if ((v4 + 1) < 2)
      {
        result = 15;
        goto LABEL_37;
      }

      switch(v4)
      {
        case '[':
          result = 8;
          goto LABEL_37;
        case ']':
          result = 10;
          goto LABEL_37;
        case 'f':
          if (nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) == 97 && nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) == 108 && nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) == 115 && nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) == 101)
          {
            result = 2;
            goto LABEL_37;
          }

          break;
        case 'n':
          if (nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) == 117 && nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) == 108 && nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) == 108)
          {
            result = 3;
            goto LABEL_37;
          }

          break;
        case 't':
          if (nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) == 114 && nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) == 117 && nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a1) == 101)
          {
            result = 1;
            goto LABEL_37;
          }

          break;
        case '{':
          result = 9;
          goto LABEL_37;
        case '}':
          result = 11;
          goto LABEL_37;
      }

LABEL_35:
      a1[6].i64[1] = "invalid literal";
      break;
  }

LABEL_36:
  result = 14;
LABEL_37:
  *a2 = result;
  return result;
}

uint64_t nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::scan_number(std::string::value_type *a1, std::string *this, int64x2_t *a3, _DWORD *a4)
{
  std::string::push_back(this, *a1);
  result = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a3);
  if ((result - 48) <= 9)
  {
    do
    {
      std::string::push_back(this, *a1);
      result = nlohmann::json_abi_v3_11_2::detail::lexer<nlohmann::json_abi_v3_11_2::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::json_abi_v3_11_2::adl_serializer,std::vector<unsigned char>,void>,nlohmann::json_abi_v3_11_2::detail::iterator_input_adapter<std::__wrap_iter<char const*>>>::get(a3);
    }

    while ((result - 48) < 0xA);
  }

  *a4 = 7;
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

void apple3dgs::SVD<float>()
{
    ;
  }
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__extension(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73F0](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

uint64_t std::istream::seekg()
{
  return MEMORY[0x2821F77E0]();
}

{
  return MEMORY[0x2821F77E8]();
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x2821F7830]();
}

{
  return MEMORY[0x2821F7838]();
}

{
  return MEMORY[0x2821F7840]();
}

{
  return MEMORY[0x2821F7848]();
}

{
  return MEMORY[0x2821F7858]();
}

{
  return MEMORY[0x2821F7860]();
}

{
  return MEMORY[0x2821F7868]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7920]();
}

{
  return MEMORY[0x2821F7928]();
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

void operator new()
{
    ;
  }
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2822043A0](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}