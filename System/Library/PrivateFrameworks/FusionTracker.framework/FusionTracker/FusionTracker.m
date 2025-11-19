void ft::HungarianMatcher::UpdateBuffers(std::vector<unsigned int> *this, unint64_t a2)
{
  if (this[3].__begin_ < a2)
  {
    begin = this[1].__begin_;
    v4 = this + 1;
    v5 = begin;
    v4[2].__begin_ = a2;
    v7 = v4->__end_ - begin;
    v8 = a2 >= v7;
    v9 = a2 > v7;
    v10 = a2 - v7;
    if (v9)
    {
      std::vector<unsigned int>::__append(v4, v10);
    }

    else if (!v8)
    {
      this[1].__end_ = &v5[a2];
    }

    v11 = this->__end_ - this->__begin_;
    if (a2 * a2 <= v11)
    {
      if (a2 * a2 < v11)
      {
        this->__end_ = &this->__begin_[a2 * a2];
      }
    }

    else
    {
      std::vector<unsigned int>::__append(this, a2 * a2 - v11);
    }

    v12 = bmMunkresTempBytes(a2);
    v14 = this[2].__begin_;
    end = this[2].__end_;
    if (v12 <= end - v14)
    {
      if (v12 < end - v14)
      {
        this[2].__end_ = (v14 + v12);
      }
    }

    else
    {
      value = this[2].__end_cap_.__value_;
      if (value - end < v12 - (end - v14))
      {
        operator new();
      }

      v16 = (v14 + v12);
      bzero(end, v12 - (end - v14));
      this[2].__end_ = v16;
    }

    LOBYTE(this[3].__end_) = 1;
  }
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v10 = 4 * __n;
      bzero(this->__end_, 4 * __n);
      end = (end + v10);
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v6 = end - this->__begin_;
    v7 = (v6 >> 2) + __n;
    if (v7 >> 62)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v8 = value - begin;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * __n;
    bzero(v11, 4 * __n);
    memcpy(0, begin, v6);
    this->__begin_ = 0;
    this->__end_ = &v11[v12];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

ft::HungarianMatcher *ft::HungarianMatcher::HungarianMatcher(ft::HungarianMatcher *this, unint64_t a2)
{
  *(this + 80) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ft::HungarianMatcher::UpdateBuffers(this, a2);
  return this;
}

{
  *(this + 80) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ft::HungarianMatcher::UpdateBuffers(this, a2);
  return this;
}

void sub_24BC316AC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    *(v1 + 56) = v3;
    operator delete(v3);
  }

  ft::HungarianMatcher::HungarianMatcher((v1 + 24), v1);
  _Unwind_Resume(a1);
}

uint64_t bmMunkresGetTempBuffers(int a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  BmMixedBufSize::BmMixedBufSize(&v22);
  if (v23)
  {
    rtcv::simImageChMeanTempBytes();
  }

  v8 = v22;
  BmMixedBufSize::BmMixedBufSize(&v22);
  if (v23)
  {
    rtcv::simImageChMeanTempBytes();
  }

  v9 = a1 * a1 + 12 * a1 + v8 + 6;
  v10 = 4 * a1 * a1;
  v11 = ((4 * a1) | 3) + v10 + 2 * (((4 * a1) | 3) + a1) + v9 + v22;
  result = (v11 + 3);
  v22 = v11 + 3;
  if (a2)
  {
    if (result > a3)
    {
      bmMunkresGetTempBuffers();
    }

    if (!a4)
    {
      bmMunkresGetTempBuffers();
    }

    v23 = a1 * a1 + 12 * a1 + v8 + 6;
    if (result < v9)
    {
      rtcv::simImageChMean();
    }

    *(a4 + 8) = v9;
    *a4 = a2;
    v13 = a2 + v9;
    v14 = a1 - a2;
    v23 = a1 - a2 + v13;
    if (result < v23)
    {
      rtcv::simImageChMean();
    }

    *(a4 + 16) = v13;
    v15 = a2 + (v14 + v13);
    v23 = v14 + v15;
    if (result < v14 + v15)
    {
      rtcv::simImageChMean();
    }

    *(a4 + 24) = v15;
    v16 = (a2 + (v14 + v15) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v17 = 4 * a1 - a2;
    v23 = v16 + v17;
    if (result < v16 + v17)
    {
      rtcv::simImageChMean();
    }

    *(a4 + 32) = v16;
    v18 = (a2 + (v16 + v17) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v23 = v18 + v17;
    if (result < v18 + v17)
    {
      rtcv::simImageChMean();
    }

    *(a4 + 48) = 4 * a1;
    *(a4 + 40) = v18;
    v19 = (a2 + (v18 + v17) + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v19 - a2 + v10;
    v23 = v20;
    if (result < v20)
    {
      rtcv::simImageChMean();
    }

    *(a4 + 56) = v19;
    v21 = (a2 + v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v23 = v21 + v17;
    if (result < v21 + v17)
    {
      rtcv::simImageChMean();
    }

    *(a4 + 64) = v21;
  }

  return result;
}

void BmMixedBufSize::BmMixedBufSize(BmMixedBufSize *this)
{
  *this = 0;
}

{
  *this = 0;
}

__n128 ft::KalmanTrack::KalmanTrack(ft::Track *a1, const uint64_t *a2, uint64_t a3)
{
  ft::Track::Track(a1, a2);
  *v4 = &unk_285F8F3D8;
  v5 = *(a3 + 16);
  *(v4 + 264) = *a3;
  *(v4 + 280) = v5;
  *(v4 + 368) = xmmword_24BC6B700;
  *(v4 + 384) = xmmword_24BC6B710;
  *(v4 + 400) = xmmword_24BC6B720;
  *(v4 + 416) = xmmword_24BC6B730;
  *(v4 + 432) = 1065353216;
  *(v4 + 440) = 0x3F80000000000000;
  *(v4 + 480) = 0;
  *(v4 + 488) = 0;
  *(v4 + 496) = xmmword_24BC6B700;
  *(v4 + 512) = xmmword_24BC6B710;
  *(v4 + 528) = xmmword_24BC6B720;
  *(v4 + 544) = xmmword_24BC6B730;
  *(v4 + 464) = 0;
  *(v4 + 472) = 0;
  *(v4 + 448) = 1065353216;
  *(v4 + 456) = 0x3F80000000000000;
  *(v4 + 304) = xmmword_24BC6B700;
  *(v4 + 320) = xmmword_24BC6B710;
  *(v4 + 336) = xmmword_24BC6B740;
  *(v4 + 352) = xmmword_24BC6B750;
  v6 = vdup_lane_s32(COERCE_UNSIGNED_INT(*(a3 + 8) * *(a3 + 8)), 0);
  LODWORD(v5) = v6.i32[0];
  v6.i32[0] = 0;
  *(v4 + 432) = v5;
  *(v4 + 440) = v6;
  LODWORD(v7) = 0;
  *(&v7 + 1) = *(a3 + 12) * *(a3 + 12);
  result.n128_u64[0] = 0;
  result.n128_u32[2] = 0;
  *&v5 = *(a3 + 16) * *(a3 + 16);
  *&v8 = 0;
  *(&v8 + 1) = v5;
  *(v4 + 368) = HIDWORD(v7);
  *(v4 + 384) = v7;
  result.n128_u32[3] = v5;
  *(v4 + 400) = v8;
  *(v4 + 416) = result;
  return result;
}

{
  ft::Track::Track(a1, a2);
  *v4 = &unk_285F8F3D8;
  v5 = *(a3 + 16);
  *(v4 + 264) = *a3;
  *(v4 + 280) = v5;
  *(v4 + 368) = xmmword_24BC6B700;
  *(v4 + 384) = xmmword_24BC6B710;
  *(v4 + 400) = xmmword_24BC6B720;
  *(v4 + 416) = xmmword_24BC6B730;
  *(v4 + 432) = 1065353216;
  *(v4 + 440) = 0x3F80000000000000;
  *(v4 + 480) = 0;
  *(v4 + 488) = 0;
  *(v4 + 496) = xmmword_24BC6B700;
  *(v4 + 512) = xmmword_24BC6B710;
  *(v4 + 528) = xmmword_24BC6B720;
  *(v4 + 544) = xmmword_24BC6B730;
  *(v4 + 464) = 0;
  *(v4 + 472) = 0;
  *(v4 + 448) = 1065353216;
  *(v4 + 456) = 0x3F80000000000000;
  *(v4 + 304) = xmmword_24BC6B700;
  *(v4 + 320) = xmmword_24BC6B710;
  *(v4 + 336) = xmmword_24BC6B740;
  *(v4 + 352) = xmmword_24BC6B750;
  v6 = vdup_lane_s32(COERCE_UNSIGNED_INT(*(a3 + 8) * *(a3 + 8)), 0);
  LODWORD(v5) = v6.i32[0];
  v6.i32[0] = 0;
  *(v4 + 432) = v5;
  *(v4 + 440) = v6;
  LODWORD(v7) = 0;
  *(&v7 + 1) = *(a3 + 12) * *(a3 + 12);
  result.n128_u64[0] = 0;
  result.n128_u32[2] = 0;
  *&v5 = *(a3 + 16) * *(a3 + 16);
  *&v8 = 0;
  *(&v8 + 1) = v5;
  *(v4 + 368) = HIDWORD(v7);
  *(v4 + 384) = v7;
  result.n128_u32[3] = v5;
  *(v4 + 400) = v8;
  *(v4 + 416) = result;
  return result;
}

void ft::KalmanTrack::~KalmanTrack(ft::KalmanTrack *this)
{
  ft::Track::~Track(this);

  JUMPOUT(0x24C253380);
}

float64x2_t ft::KalmanTrack::SyncFromFilter(ft::KalmanTrack *this)
{
  v2 = 2.0 / (expf(-sqrtf(((*(this + 124) + *(this + 129)) + *(this + 134)) + *(this + 139)) / *(this + 73)) + 1.0) + -1.0;
  v3 = 1.0 - v2;
  *(this + 31) = v3;
  *(this + 240) = v3 < *(this + 72);
  __asm { FMOV            V2.2D, #-0.5 }

  result = vaddq_f64(vcvtq_f64_f32(*(this + 480)), vmulq_f64(*(this + 40), _Q2));
  *(this + 24) = result;
  return result;
}

__n128 ft::KalmanTrack::UpdateTimeDelta(ft::KalmanTrack *this, const Frame *a2)
{
  if ((*(this + 572) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Prior time step not established.");
    goto LABEL_6;
  }

  if ((*(a2 + 12) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Frame has invalid timestamp.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = *(this + 71);
  *&lhs.value = *a2;
  lhs.epoch = *(a2 + 2);
  v8 = *(this + 560);
  CMTimeSubtract(&time, &lhs, &v8);
  v5 = CMTimeGetSeconds(&time) * v4;
  *(this + 84) = v5;
  *(this + 89) = v5;
  result = *a2;
  *(this + 72) = *(a2 + 2);
  *(this + 35) = result;
  return result;
}

float64x2_t ft::KalmanTrack::PredictState(ft::KalmanTrack *this, const Frame *a2)
{
  ft::KalmanTrack::UpdateTimeDelta(this, a2);
  v4 = *(this + 19);
  v3 = *(this + 20);
  v6 = *(this + 21);
  v5 = *(this + 22);
  v27 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(this + 30))), v3, *(this + 480), 1), v6, *(this + 30), 2), v5, *(this + 30), 3);
  v7 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(this + 31))), v3, *(this + 496), 1), v6, *(this + 31), 2), v5, *(this + 31), 3);
  v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(this + 32))), v3, *(this + 512), 1), v6, *(this + 32), 2), v5, *(this + 32), 3);
  v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(this + 33))), v3, *(this + 528), 1), v6, *(this + 33), 2), v5, *(this + 33), 3);
  v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(this + 34))), v3, *(this + 544), 1), v6, *(this + 34), 2), v5, *(this + 34), 3);
  v11 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v7, v4.f32[0]), v8, v3.f32[0]), v9, v6.f32[0]), v10, v5.f32[0]);
  v12 = vmlaq_lane_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v7, *v4.f32, 1), v8, *v3.f32, 1), v9, *v6.f32, 1), v10, *v5.f32, 1);
  v13 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v7, v4, 2), v8, v3, 2), v9, v6, 2), v10, v5, 2);
  v14 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v7, v4, 3), v8, v3, 3), v9, v6, 3), v10, v5, 3);
  v15 = vaddq_f32(*(this + 23), v11);
  v16 = vaddq_f32(*(this + 24), v12);
  v17 = vaddq_f32(*(this + 25), v13);
  v18 = vaddq_f32(*(this + 26), v14);
  *(this + 30) = v27;
  *(this + 31) = v15;
  *(this + 32) = v16;
  *(this + 33) = v17;
  *(this + 34) = v18;
  v19 = 2.0 / (expf(-sqrtf(((v15.f32[0] + v16.f32[1]) + v17.f32[2]) + v18.f32[3]) / *(this + 73)) + 1.0) + -1.0;
  v20 = 1.0 - v19;
  *(this + 31) = v20;
  *(this + 240) = v20 < *(this + 72);
  __asm { FMOV            V2.2D, #-0.5 }

  result = vaddq_f64(vcvtq_f64_f32(*v27.f32), vmulq_f64(*(this + 40), _Q2));
  *(this + 24) = result;
  return result;
}

float64x2_t ft::KalmanTrack::UpdateState(uint64_t a1, uint64_t a2, float64x2_t *a3)
{
  v5 = *a3;
  *&v6 = vcvt_f32_f64(vaddq_f64(*a3, vcvtq_f64_f32(vmul_f32(vcvt_f32_f64(a3[1]), 0x3F0000003F000000))));
  *(a1 + 40) = a3[1];
  *(a1 + 24) = v5;
  if (*(a1 + 232) == 1)
  {
    v24[3] = v3;
    v24[4] = v4;
    v23 = v6;
    ft::KalmanTrack::UpdateTimeDelta(a1, a2);
    v24[0] = v23;
    ft::KalmanFilter<float,4ul,2ul>::Update(a1 + 304, v24);
    v8 = 2.0 / (expf(-sqrtf(((*(a1 + 496) + *(a1 + 516)) + *(a1 + 536)) + *(a1 + 556)) / *(a1 + 292)) + 1.0) + -1.0;
    v9 = 1.0 - v8;
    *(a1 + 248) = v9;
    *(a1 + 240) = v9 < *(a1 + 288);
    __asm { FMOV            V2.2D, #-0.5 }

    result = vaddq_f64(vcvtq_f64_f32(*(a1 + 480)), vmulq_f64(*(a1 + 40), _Q2));
    *(a1 + 24) = result;
  }

  else
  {
    *(&v6 + 1) = vextq_s8(*(a1 + 480), *(a1 + 480), 8uLL).u64[0];
    v16 = *(a1 + 268);
    *&v17 = *(a1 + 264) * *(a1 + 264);
    *&v18 = 0;
    DWORD2(v18) = 0;
    *(a1 + 480) = v6;
    *(a1 + 496) = v17;
    LODWORD(v19) = 0;
    HIDWORD(v19) = v17;
    *&v20 = v16 * v16;
    *&v21 = 0;
    *(&v21 + 1) = v20;
    HIDWORD(v18) = v20;
    *(a1 + 512) = v19;
    *(a1 + 528) = v21;
    *(a1 + 544) = v18;
    v22 = *(a2 + 16);
    result = *a2;
    *(a1 + 560) = *a2;
    *(a1 + 576) = v22;
  }

  return result;
}

uint64_t ft::KalmanFilter<float,4ul,2ul>::Update(uint64_t a1, float32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 + 176;
  v43 = *(a1 + 176);
  v4 = *(a1 + 144);
  v5 = *(a1 + 152);
  v6 = *(a1 + 160);
  v7 = *(a1 + 168);
  v8 = *(a1 + 192);
  v9 = *(a1 + 208);
  v11 = *(a1 + 224);
  v10 = *(a1 + 240);
  v12 = vmla_laneq_f32(vmla_laneq_f32(vmla_lane_f32(vmul_n_f32(v4, v8.f32[0]), v5, *v8.f32, 1), v6, v8, 2), v7, v8, 3);
  v13 = vmla_laneq_f32(vmla_laneq_f32(vmla_lane_f32(vmul_n_f32(v4, v9.f32[0]), v5, *v9.f32, 1), v6, v9, 2), v7, v9, 3);
  v14 = vmla_laneq_f32(vmla_laneq_f32(vmla_lane_f32(vmul_n_f32(v4, v11.f32[0]), v5, *v11.f32, 1), v6, v11, 2), v7, v11, 3);
  v15 = vmla_laneq_f32(vmla_laneq_f32(vmla_lane_f32(vmul_n_f32(v4, v10.f32[0]), v5, *v10.f32, 1), v6, v10, 2), v7, v10, 3);
  v16 = vadd_f32(*(a1 + 128), vmla_f32(vmla_f32(vmla_f32(vmul_n_f32(v12, v4.f32[0]), *&vdupq_lane_s32(v5, 0), v13), *&vdupq_lane_s32(v6, 0), v14), *&vdupq_lane_s32(v7, 0), v15));
  v39 = v4;
  v42 = v5;
  v40 = v7;
  v41 = v6;
  v37 = vmlaq_lane_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v8, v4, 1), v9, v5, 1), v11, v6, 1), v10, v7, 1);
  v38 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, v4.f32[0]), v9, v5.f32[0]), v11, v6.f32[0]), v10, v7.f32[0]);
  *v10.f32 = vadd_f32(*(a1 + 136), vmla_f32(vmla_f32(vmla_f32(vmul_lane_f32(v12, v4, 1), *&vdupq_lane_s32(v5, 1), v13), *&vdupq_lane_s32(v6, 1), v14), *&vdupq_lane_s32(v7, 1), v15));
  v17 = __invert_f2(*(&v10 - 8));
  v18 = vmlaq_lane_f32(vmulq_n_f32(v38, v17.columns[0].f32[0]), v37, v17.columns[0], 1);
  v19 = vmlaq_lane_f32(vmulq_n_f32(v38, v17.columns[1].f32[0]), v37, v17.columns[1], 1);
  v20 = vsub_f32(v2, vmla_laneq_f32(vmla_laneq_f32(vmla_lane_f32(vmul_n_f32(v39, v43.f32[0]), v42, *v43.f32, 1), v41, v43, 2), v40, v43, 3));
  v21 = vsubq_f32(xmmword_24BC6B700, vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*(v3 - 32))), v19, *(v3 - 32), 1));
  v22 = vsubq_f32(xmmword_24BC6B710, vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*(v3 - 24))), v19, *(v3 - 24), 1));
  v23 = vsubq_f32(xmmword_24BC6B720, vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*(v3 - 16))), v19, *(v3 - 16), 1));
  v24 = vsubq_f32(xmmword_24BC6B730, vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*(v3 - 8))), v19, *(v3 - 8), 1));
  v25 = vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*(v3 - 48))), v19, *(v3 - 48), 1);
  v26 = vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(*(v3 - 40))), v19, *(v3 - 40), 1);
  v27 = vmlaq_laneq_f32(vmulq_laneq_f32(v25, v18, 2), v26, v19, 2);
  v28 = vmlaq_laneq_f32(vmulq_laneq_f32(v25, v18, 3), v26, v19, 3);
  v29 = vaddq_f32(vmlaq_n_f32(vmulq_n_f32(v25, v18.f32[0]), v26, v19.f32[0]), 0);
  v30 = vaddq_f32(vmlaq_lane_f32(vmulq_lane_f32(v25, *v18.f32, 1), v26, *v19.f32, 1), 0);
  v31 = vaddq_f32(v28, 0);
  v32 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(v3 + 16))), v22, *(v3 + 16), 1), v23, *(v3 + 16), 2), v24, *(v3 + 16), 3);
  v33 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(v3 + 32))), v22, *(v3 + 32), 1), v23, *(v3 + 32), 2), v24, *(v3 + 32), 3);
  v34 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(v3 + 48))), v22, *(v3 + 48), 1), v23, *(v3 + 48), 2), v24, *(v3 + 48), 3);
  v35 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(v3 + 64))), v22, *(v3 + 64), 1), v23, *(v3 + 64), 2), v24, *(v3 + 64), 3);
  *v3 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, v20.f32[0]), v19, v20, 1), *v3);
  *(v3 + 16) = vaddq_f32(v29, vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v32, v21.f32[0]), v33, v22.f32[0]), v34, v23.f32[0]), v35, v24.f32[0]));
  *(v3 + 32) = vaddq_f32(v30, vmlaq_lane_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v32, *v21.f32, 1), v33, *v22.f32, 1), v34, *v23.f32, 1), v35, *v24.f32, 1));
  *(v3 + 48) = vaddq_f32(vaddq_f32(v27, 0), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v32, v21, 2), v33, v22, 2), v34, v23, 2), v35, v24, 2));
  *(v3 + 64) = vaddq_f32(v31, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v32, v21, 3), v33, v22, 3), v34, v23, 3), v35, v24, 3));
  return v3;
}

uint64_t AcAttrNode::AcAttrNode(uint64_t a1, _DWORD *a2)
{
  bzero(a1, 0x31CuLL);
  *(a1 + 1056) = 0;
  *(a1 + 1040) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 800) = 0u;
  *a2 = 1;
  return a1;
}

{
  bzero(a1, 0x31CuLL);
  *(a1 + 1056) = 0;
  *(a1 + 1040) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 800) = 0u;
  *a2 = 1;
  return a1;
}

void AcAttrNode::~AcAttrNode(AcAttrNode *this)
{
  AcAttrNode::releaseBuffers(this);
}

{
  AcAttrNode::releaseBuffers(this);
}

uint64_t AcAttrNode::releaseBuffers(AcAttrNode *this)
{
  v2 = *(this + 104);
  if (v2)
  {
    MEMORY[0x24C253360](v2, 0x1000C8052888210);
    *(this + 104) = 0;
  }

  v3 = *(this + 103);
  if (v3)
  {
    MEMORY[0x24C253360](v3, 0x1000C8052888210);
    *(this + 103) = 0;
  }

  v4 = *(this + 102);
  if (v4)
  {
    MEMORY[0x24C253360](v4, 0x1000C8052888210);
    *(this + 102) = 0;
  }

  v5 = *(this + 101);
  if (v5)
  {
    MEMORY[0x24C253360](v5, 0x1000C8052888210);
    *(this + 101) = 0;
  }

  v6 = *(this + 100);
  if (v6)
  {
    MEMORY[0x24C253360](v6, 0x1000C8052888210);
    *(this + 100) = 0;
  }

  v7 = *(this + 105);
  if (v7)
  {
    MEMORY[0x24C253360](v7, 0x1000C8052888210);
    *(this + 105) = 0;
  }

  v8 = *(this + 106);
  if (v8)
  {
    MEMORY[0x24C253360](v8, 0x1000C8052888210);
    *(this + 106) = 0;
  }

  v9 = *(this + 107);
  if (v9)
  {
    MEMORY[0x24C253360](v9, 0x1000C8052888210);
    *(this + 107) = 0;
  }

  v10 = *(this + 108);
  if (v10)
  {
    MEMORY[0x24C253360](v10, 0x1000C8052888210);
    *(this + 108) = 0;
  }

  v11 = *(this + 109);
  if (v11)
  {
    MEMORY[0x24C253360](v11, 0x1000C8052888210);
    *(this + 109) = 0;
  }

  v12 = *(this + 110);
  if (v12)
  {
    MEMORY[0x24C253360](v12, 0x1000C8052888210);
    *(this + 110) = 0;
  }

  result = *(this + 111);
  if (result)
  {
    result = MEMORY[0x24C253360](result, 0x1000C8052888210);
    *(this + 111) = 0;
  }

  return result;
}

uint64_t AcAttrNode::init(AcAttrNode *a1, const char *a2, _DWORD *a3)
{
  if (*a3 == 1)
  {
    AcAttrNode::releaseBuffers(a1);
    if (a2)
    {
      v6 = a1;
      v7 = a2;
    }

    else
    {
      v7 = "1.7.3";
      v6 = a1;
    }

    memcpy(v6, v7, 0x31CuLL);
    operator new[]();
  }

  return 4294967289;
}

void AcAttrNode::initBinCenters(AcAttrNode *this, float *a2, float a3, float a4, unsigned int a5)
{
  if (a5)
  {
    v5 = (a3 - a4) / a5;
    v6 = (v5 * 0.5) + a4;
    v7 = a5;
    do
    {
      *a2++ = v6;
      v6 = v5 + v6;
      --v7;
    }

    while (v7);
  }
}

uint64_t AcAttrNode::preProcess(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4, float32x2_t *a5, unsigned int a6, _DWORD *a7, uint64_t a8, _DWORD *a9)
{
  if (a6 >= 0xB)
  {
    AcAttrNode::preProcess();
  }

  LODWORD(v10) = a6;
  std::chrono::steady_clock::now();
  if (*a7 != 1)
  {
    return 4294967289;
  }

  *a9 = v10;
  if (v10)
  {
    v16 = (a9 + 101);
    v17 = (a9 + 1);
    v18 = a7 + 2;
    v19 = a5 + 2;
    v10 = v10;
    do
    {
      v20 = vmul_n_f32(*v19, *(a1 + 64));
      v21 = vadd_f32(v19[-1], vmul_f32(vsub_f32(*v19, v20), 0x3F0000003F000000));
      *v16 = v21;
      v16[1] = v20;
      v16 += 2;
      *v18++ = acCropResizeGenerateConfig(a2, a3, a4, *(a1 + 68), *(a1 + 72), 1, v17, v21.f32[0], v21.f32[1], v20.f32[0], v20.f32[1]);
      v17 += 40;
      v19 = (v19 + 92);
      --v10;
    }

    while (v10);
  }

  return 0;
}

uint64_t AcAttrNode::postProcess(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, uint64_t a5, unsigned int a6, double a7, double a8, double a9, double a10, double a11, double a12, float32x4_t a13, float32x4_t a14)
{
  v87 = *MEMORY[0x277D85DE8];
  if (*a4 != 1)
  {
    return 4294967289;
  }

  if (a3 != 7)
  {
    return 4294967292;
  }

  if (!*(a4 + a6 + 8))
  {
    result = 0;
    *(a5 + 81) = 0;
    *(a5 + 83) = 0;
    return result;
  }

  v15 = 0;
  v16 = a1 + 840;
  v17 = a1 + 192;
  while (1)
  {
    v18 = (a2 + 24 * v15);
    v19 = a1 + 896 + 24 * v15;
    v20 = *v18;
    *(v19 + 16) = *(v18 + 2);
    *v19 = v20;
    v21 = *(v18 + 5);
    if (v21 != 6)
    {
      break;
    }

LABEL_5:
    if (++v15 == 7)
    {
      *(a5 + 81) = 257;
      *(a5 + 83) = 1;
      *(a5 + 36) = acAttrReduceSmile(a1 + 896, *(a1 + 20));
      v84 = 0;
      *(a5 + 40) = acAttrReduceBlink((a1 + 920), *(a1 + 24), *(a1 + 28), &v84 + 1, v62);
      *(a5 + 44) = acAttrReduceBlink((a1 + 944), *(a1 + 24), *(a1 + 28), &v84, v63);
      v64.n128_f64[0] = acAttrReducePitch(a1 + 968, *(a1 + 800), *(a1 + 148));
      v66 = v65;
      v67 = acAttrReduceYaw(a1 + 992, *(a1 + 808), *(a1 + 152), v64);
      if (fabsf(v66) >= *(a1 + 60))
      {
        v71 = a5;
        *(a5 + 40) = 0;
        *(a5 + 36) = 0;
      }

      else
      {
        v68 = HIBYTE(v84) | v84;
        v69 = fabsf(v67);
        v70 = *(a1 + 56);
        v71 = a5;
        if ((v69 >= v70) | (HIBYTE(v84) | v84) & 1 && (*(a5 + 40) = 0, v69 >= v70))
        {
          *(a5 + 36) = 0;
        }

        else if ((v68 & 1) == 0)
        {
          if (!*(a1 + 1052) || (v72 = *(a1 + 1048)) == 0 || (v73 = *(a1 + 1040), v85[0] = *v73, v72 == 1) || (v74 = *(a1 + 1056), v85[1] = *(v73 + v74), v72 == 2) || (v86[0] = *(v73 + (2 * v74)), v72 == 3))
          {
            AcAttrNode::postProcess();
          }

          v86[1] = *(v73 + (3 * v74));
          v75 = *(a5 + 16);
          v76 = vmul_n_f32(v75, *(a1 + 64));
          v83[0] = vadd_f32(*(a5 + 8), vmul_f32(vsub_f32(v75, v76), 0x3F0000003F000000));
          v83[1] = v76;
          *(a5 + 48) = acAttrEyeLoc(v86, v83);
          *(a5 + 52) = v77;
          *(a5 + 56) = v78;
          *(a5 + 60) = v79;
          *(a5 + 64) = acAttrEyeLoc(v85, v83);
          *(a5 + 68) = v80;
          *(a5 + 72) = v81;
          *(a5 + 76) = v82;
          return 0;
        }
      }

      *(v71 + 48) = 0u;
      *(v71 + 64) = 0u;
      return 0;
    }
  }

  if (v21 == 1)
  {
    v40 = *(v19 + 12);
    v41 = (4 * v40);
    *(v19 + 16) = v41;
    *(v19 + 20) = 6;
    v42 = *(v16 + 8 * v15);
    *v19 = v42;
    if (*(v18 + 5) != 1)
    {
      AcAttrNode::postProcess();
    }

    v43 = *(v18 + 2);
    if (v43 != *(v19 + 8))
    {
      AcAttrNode::postProcess();
    }

    if (*(v18 + 3) != v40)
    {
      AcAttrNode::postProcess();
    }

    if (v43 && v40)
    {
      LODWORD(v20) = *(v17 + 4 * v15);
      v44 = *(v18 + 4);
      v45 = *v18;
      if (v40 > 7)
      {
        if (v42 >= v45 + v44 * (v43 - 1) + v40 || v45 >= v42->n128_u64 + 4 * v40 + v41 * (v43 - 1))
        {
          v49 = 0;
          a13 = vdupq_lane_s32(*&v20, 0);
          v50 = (v45 + 4);
          v51 = v42 + 1;
          do
          {
            v52 = v40 & 0xFFFFFFF8;
            v53 = v51;
            v54 = v50;
            do
            {
              a14.i32[0] = *(v54 - 1);
              v14.i32[0] = *v54;
              v14 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v14.f32)));
              v55 = vmlaq_f32(0, vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a14.f32))), a13);
              a14 = vmlaq_f32(0, v14, a13);
              v53[-1] = v55;
              *v53 = a14;
              v54 += 2;
              v53 += 2;
              v52 -= 8;
            }

            while (v52);
            if ((v40 & 0xFFFFFFF8) != v40)
            {
              v56 = v40 & 0xFFFFFFF8;
              do
              {
                a14.i8[0] = *(v45 + v56);
                a14.f32[0] = (*&v20 * a14.u32[0]) + 0.0;
                v42->n128_u32[v56++] = a14.i32[0];
              }

              while (v40 != v56);
            }

            v45 += v44;
            v42 = (v42 + v41);
            ++v49;
            v50 = (v50 + v44);
            v51 = (v51 + v41);
          }

          while (v49 != v43);
        }

        else
        {
          for (i = 0; i != v43; ++i)
          {
            for (j = 0; j != v40; ++j)
            {
              a13.i8[0] = *(v45 + j);
              a13.f32[0] = (*&v20 * a13.u32[0]) + 0.0;
              v42->n128_u32[j] = a13.i32[0];
            }

            v45 += v44;
            v42 = (v42 + v41);
          }
        }
      }

      else
      {
        v46 = (v45 + 3);
        v47 = &v42->n128_u32[3];
        do
        {
          a13.i8[0] = *(v46 - 3);
          a13.f32[0] = (*&v20 * a13.u32[0]) + 0.0;
          *(v47 - 3) = a13.i32[0];
          if (v40 != 1)
          {
            a13.i8[0] = *(v46 - 2);
            a13.f32[0] = (*&v20 * a13.u32[0]) + 0.0;
            *(v47 - 2) = a13.i32[0];
            if (v40 != 2)
            {
              a13.i8[0] = *(v46 - 1);
              a13.f32[0] = (*&v20 * a13.u32[0]) + 0.0;
              *(v47 - 1) = a13.i32[0];
              if (v40 != 3)
              {
                a13.i8[0] = *v46;
                a13.f32[0] = (*&v20 * a13.u32[0]) + 0.0;
                *v47 = a13.i32[0];
                if (v40 != 4)
                {
                  a13.i8[0] = v46[1];
                  a13.f32[0] = (*&v20 * a13.u32[0]) + 0.0;
                  v47[1] = a13.i32[0];
                  if (v40 != 5)
                  {
                    a13.i8[0] = v46[2];
                    a13.f32[0] = (*&v20 * a13.u32[0]) + 0.0;
                    v47[2] = a13.i32[0];
                    if (v40 != 6)
                    {
                      a13.i8[0] = v46[3];
                      a13.f32[0] = (*&v20 * a13.u32[0]) + 0.0;
                      v47[3] = a13.i32[0];
                    }
                  }
                }
              }
            }
          }

          v46 += v44;
          v47 = (v47 + v41);
          --v43;
        }

        while (v43);
      }
    }

    goto LABEL_5;
  }

  if (!v21)
  {
    v22 = *(v19 + 12);
    v23 = (4 * v22);
    *(v19 + 16) = v23;
    *(v19 + 20) = 6;
    v24 = *(v16 + 8 * v15);
    *v19 = v24;
    if (*(v18 + 5))
    {
      AcAttrNode::postProcess();
    }

    v25 = *(v18 + 2);
    if (v25 != *(v19 + 8))
    {
      AcAttrNode::postProcess();
    }

    if (*(v18 + 3) != v22)
    {
      AcAttrNode::postProcess();
    }

    if (v25 && v22)
    {
      v26 = 0;
      LODWORD(v20) = *(v17 + 4 * v15);
      v27 = *(v18 + 4);
      v28 = *v18;
      v30 = v24 < v28 + v27 * (v25 - 1) + v22 && v28 < v24 + v23 * (v25 - 1) + 4 * v22;
      a13 = vdupq_lane_s32(*&v20, 0);
      v31 = v22 < 4 || v30;
      v32 = v22 & 0xFFFFFFFC;
      while (1)
      {
        if (v31)
        {
          v33 = 0;
        }

        else
        {
          if (v22 < 0x10)
          {
            v34 = 0;
LABEL_30:
            v39 = 4 * v34;
            do
            {
              a14.i32[0] = *(v28 + v34);
              a14 = vcvtq_n_f32_s32(vqtbl1q_s8(a14, xmmword_24BC6B790), 0x18uLL);
              v14 = vmlaq_f32(0, a14, a13);
              *(v24 + v39) = v14;
              v34 += 4;
              v39 += 16;
            }

            while (v32 != v34);
            v33 = v22 & 0xFFFFFFFC;
            if (v32 == v22)
            {
              goto LABEL_21;
            }

            goto LABEL_33;
          }

          v35 = 0;
          v36 = v28;
          do
          {
            v37 = *v36++;
            a14 = vcvtq_n_f32_s32(vqtbl1q_s8(v37, xmmword_24BC6B7C0), 0x18uLL);
            v14 = vmlaq_f32(0, vcvtq_n_f32_s32(vqtbl1q_s8(v37, xmmword_24BC6B7A0), 0x18uLL), a13);
            v38 = (v24 + v35);
            v38[2] = vmlaq_f32(0, vcvtq_n_f32_s32(vqtbl1q_s8(v37, xmmword_24BC6B7B0), 0x18uLL), a13);
            v38[3] = vmlaq_f32(0, a14, a13);
            *v38 = vmlaq_f32(0, vcvtq_n_f32_s32(vqtbl1q_s8(v37, xmmword_24BC6B790), 0x18uLL), a13);
            v38[1] = v14;
            v35 += 64;
          }

          while (((4 * v22) & 0x3FFFFFFC0) != v35);
          if ((v22 & 0xFFFFFFF0) == v22)
          {
            goto LABEL_21;
          }

          v34 = v22 & 0xFFFFFFF0;
          v33 = v34;
          if ((v22 & 0xC) != 0)
          {
            goto LABEL_30;
          }
        }

        do
        {
LABEL_33:
          a14.i8[0] = *(v28 + v33);
          a14 = vmovl_s16(*&vmovl_s8(*a14.f32));
          a14.f32[0] = (*&v20 * a14.i32[0]) + 0.0;
          *(v24 + 4 * v33++) = a14.i32[0];
        }

        while (v22 != v33);
LABEL_21:
        v28 += v27;
        v24 += v23;
        if (++v26 == v25)
        {
          goto LABEL_5;
        }
      }
    }

    goto LABEL_5;
  }

  return 4294967293;
}

uint64_t AcAttrNode::getParams(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*a2 != 1)
  {
    return 4294967289;
  }

  v3 = *(a1 + 76);
  *&v4 = *(a1 + 20);
  *(&v4 + 1) = *(a1 + 68);
  *a3 = v4;
  *(a3 + 16) = v3;
  *(a3 + 20) = 10 * ((v3 * DWORD2(v4) + 63) & 0x7FFFFFC0) * HIDWORD(v4);
  *(a3 + 24) = *(a1 + 80);
  *(a3 + 52) = *(a1 + 108);
  *(a3 + 80) = *(a1 + 136);
  *(a3 + 28) = *(a1 + 84);
  *(a3 + 56) = *(a1 + 112);
  *(a3 + 84) = *(a1 + 140);
  *(a3 + 32) = *(a1 + 88);
  *(a3 + 60) = *(a1 + 116);
  *(a3 + 88) = *(a1 + 144);
  *(a3 + 36) = *(a1 + 92);
  *(a3 + 64) = *(a1 + 120);
  *(a3 + 92) = *(a1 + 148);
  *(a3 + 40) = *(a1 + 96);
  *(a3 + 68) = *(a1 + 124);
  *(a3 + 96) = *(a1 + 152);
  *(a3 + 44) = *(a1 + 100);
  *(a3 + 72) = *(a1 + 128);
  *(a3 + 100) = *(a1 + 156);
  *(a3 + 48) = *(a1 + 104);
  *(a3 + 76) = *(a1 + 132);
  *(a3 + 104) = *(a1 + 160);
  *(a3 + 112) = *(a1 + 168);
  *(a3 + 116) = *(a1 + 172);
  *(a3 + 120) = *(a1 + 176);
  *(a3 + 124) = *(a1 + 180);
  *(a3 + 128) = *(a1 + 184);
  v5 = *(a1 + 188);
  *(a3 + 132) = v5;
  v6 = *(a1 + 164);
  if (v6 >= 8 || ((0xFBu >> v6) & 1) == 0 || (v7 = *(a1 + 136) * *(a1 + 108) * ((dword_24BC6B7D0[v6] * *(a1 + 80) + 63) & 0xFFFFFFC0), *(a3 + 136) = v7, v8 = *(a1 + 168), v8 > 7) || ((0xFBu >> v8) & 1) == 0 || (v9 = v7 + *(a1 + 140) * *(a1 + 112) * ((dword_24BC6B7D0[v8] * *(a1 + 84) + 63) & 0xFFFFFFC0), *(a3 + 136) = v9, v10 = *(a1 + 172), v10 > 7) || ((0xFBu >> v10) & 1) == 0 || (v11 = v9 + *(a1 + 144) * *(a1 + 116) * ((dword_24BC6B7D0[v10] * *(a1 + 88) + 63) & 0xFFFFFFC0), *(a3 + 136) = v11, v12 = *(a1 + 176), v12 > 7) || ((0xFBu >> v12) & 1) == 0 || (v13 = v11 + *(a1 + 148) * *(a1 + 120) * ((dword_24BC6B7D0[v12] * *(a1 + 92) + 63) & 0xFFFFFFC0), *(a3 + 136) = v13, v14 = *(a1 + 180), v14 > 7) || ((0xFBu >> v14) & 1) == 0 || (v15 = v13 + *(a1 + 152) * *(a1 + 124) * ((dword_24BC6B7D0[v14] * *(a1 + 96) + 63) & 0xFFFFFFC0), *(a3 + 136) = v15, v16 = *(a1 + 184), v16 > 7) || ((0xFBu >> v16) & 1) == 0 || (v17 = v15 + *(a1 + 156) * *(a1 + 128) * ((dword_24BC6B7D0[v16] * *(a1 + 100) + 63) & 0xFFFFFFC0), *(a3 + 136) = v17, v5 > 7) || ((0xFBu >> v5) & 1) == 0)
  {
    AcAttrNode::getParams();
  }

  *(a3 + 136) = 10 * (v17 + *(a1 + 160) * *(a1 + 132) * ((dword_24BC6B7D0[v5] * *(a1 + 104) + 63) & 0x7FFFFFC0));
  *(a3 + 140) = *(a1 + 192);
  v18 = *(a1 + 220);
  *(a3 + 184) = *(a1 + 236);
  *(a3 + 168) = v18;
  *(a3 + 144) = *(a1 + 196);
  v19 = *(a1 + 252);
  *(a3 + 216) = *(a1 + 268);
  *(a3 + 200) = v19;
  *(a3 + 148) = *(a1 + 200);
  v20 = *(a1 + 284);
  *(a3 + 248) = *(a1 + 300);
  *(a3 + 232) = v20;
  *(a3 + 152) = *(a1 + 204);
  v21 = *(a1 + 332);
  *(a3 + 264) = *(a1 + 316);
  *(a3 + 280) = v21;
  *(a3 + 156) = *(a1 + 208);
  v22 = *(a1 + 364);
  *(a3 + 296) = *(a1 + 348);
  *(a3 + 312) = v22;
  *(a3 + 160) = *(a1 + 212);
  v23 = *(a1 + 396);
  *(a3 + 328) = *(a1 + 380);
  *(a3 + 344) = v23;
  *(a3 + 164) = *(a1 + 216);
  v24 = *(a1 + 428);
  *(a3 + 360) = *(a1 + 412);
  *(a3 + 376) = v24;
  v25 = *(a1 + 460);
  *(a3 + 392) = *(a1 + 444);
  *(a3 + 408) = v25;
  v26 = *(a1 + 492);
  *(a3 + 424) = *(a1 + 476);
  *(a3 + 440) = v26;
  v27 = *(a1 + 524);
  *(a3 + 456) = *(a1 + 508);
  *(a3 + 472) = v27;
  v28 = *(a1 + 556);
  *(a3 + 488) = *(a1 + 540);
  *(a3 + 504) = v28;
  v29 = *(a1 + 588);
  *(a3 + 520) = *(a1 + 572);
  *(a3 + 536) = v29;
  v30 = *(a1 + 620);
  *(a3 + 552) = *(a1 + 604);
  *(a3 + 568) = v30;
  v31 = *(a1 + 652);
  *(a3 + 584) = *(a1 + 636);
  *(a3 + 600) = v31;
  v32 = *(a1 + 684);
  *(a3 + 616) = *(a1 + 668);
  *(a3 + 632) = v32;
  v33 = *(a1 + 716);
  *(a3 + 648) = *(a1 + 700);
  *(a3 + 664) = v33;
  v34 = *(a1 + 748);
  *(a3 + 680) = *(a1 + 732);
  *(a3 + 696) = v34;
  v35 = *(a1 + 780);
  *(a3 + 712) = *(a1 + 764);
  *(a3 + 728) = v35;
  return 0;
}

uint64_t AcAttrNode::setUpNetBuffers(uint64_t result, uint64_t a2, _DWORD *a3, int *a4)
{
  if (result > 0xA)
  {
    return 4294967292;
  }

  v4 = *(a2 + 4);
  if (!v4)
  {
    return 4294967292;
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    return 4294967292;
  }

  v6 = *(a2 + 12);
  if (v6 < a3[5])
  {
    return 4294967292;
  }

  v7 = *(a2 + 24);
  if (v7 < a3[34])
  {
    return 4294967292;
  }

  if (result)
  {
    v8 = a3[3];
    v9 = a3[4] * a3[2];
    v10 = (v9 + 63) & 0xFFFFFFC0;
    v11 = result;
    v12 = v10 * v8;
    v13 = a4 + 3;
    v14 = v12;
    v15 = result;
    while (1)
    {
      *(v13 - 3) = v4;
      *(v13 - 1) = v8;
      *v13 = v9;
      v13[1] = v10;
      v13[2] = 1;
      if (v14 > v6)
      {
        return 4294967292;
      }

      v4 += v12;
      v13 += 6;
      v14 += v12;
      if (!--v15)
      {
        if (*a2 != 1)
        {
          v46 = v5 + *(a2 + 28);
          v47 = a3[27];
          v48 = a4 + 65;
          v49 = result;
          do
          {
            *(v48 - 5) = v46;
            v50 = a3[6];
            *(v48 - 2) = v50;
            v51 = a3[20] * a3[13];
            *(v48 - 3) = v51;
            *v48 = v47;
            if (v47 > 7 || ((0xFBu >> v47) & 1) == 0)
            {
              goto LABEL_74;
            }

            v52 = (dword_24BC6B7D0[v47] * v50 + 63) & 0xFFFFFFC0;
            *(v48 - 1) = v52;
            v46 += v52 * v51;
            if (v46 - v5 > v7)
            {
              return 4294967292;
            }

            v48 += 42;
            --v49;
          }

          while (v49);
          v53 = v5 + *(a2 + 32);
          v54 = a3[28];
          v55 = a4 + 71;
          v56 = v11;
          do
          {
            *(v55 - 5) = v53;
            v57 = a3[7];
            *(v55 - 2) = v57;
            v58 = a3[21] * a3[14];
            *(v55 - 3) = v58;
            *v55 = v54;
            if (v54 > 7 || ((0xFBu >> v54) & 1) == 0)
            {
              goto LABEL_74;
            }

            v59 = (dword_24BC6B7D0[v54] * v57 + 63) & 0xFFFFFFC0;
            *(v55 - 1) = v59;
            v53 += v59 * v58;
            if (v53 - v5 > v7)
            {
              return 4294967292;
            }

            v55 += 42;
            --v56;
          }

          while (v56);
          v60 = v5 + *(a2 + 36);
          v61 = a3[29];
          v62 = a4 + 77;
          v63 = v11;
          do
          {
            *(v62 - 5) = v60;
            v64 = a3[8];
            *(v62 - 2) = v64;
            v65 = a3[22] * a3[15];
            *(v62 - 3) = v65;
            *v62 = v61;
            if (v61 > 7 || ((0xFBu >> v61) & 1) == 0)
            {
              goto LABEL_74;
            }

            v66 = (dword_24BC6B7D0[v61] * v64 + 63) & 0xFFFFFFC0;
            *(v62 - 1) = v66;
            v60 += v66 * v65;
            if (v60 - v5 > v7)
            {
              return 4294967292;
            }

            v62 += 42;
            --v63;
          }

          while (v63);
          v67 = v5 + *(a2 + 40);
          v68 = a3[30];
          v69 = a4 + 83;
          v70 = v11;
          do
          {
            *(v69 - 5) = v67;
            v71 = a3[9];
            *(v69 - 2) = v71;
            v72 = a3[23] * a3[16];
            *(v69 - 3) = v72;
            *v69 = v68;
            if (v68 > 7 || ((0xFBu >> v68) & 1) == 0)
            {
              goto LABEL_74;
            }

            v73 = (dword_24BC6B7D0[v68] * v71 + 63) & 0xFFFFFFC0;
            *(v69 - 1) = v73;
            v67 += v73 * v72;
            if (v67 - v5 > v7)
            {
              return 4294967292;
            }

            v69 += 42;
            --v70;
          }

          while (v70);
          v74 = v5 + *(a2 + 44);
          v75 = a3[31];
          v76 = a4 + 89;
          v77 = v11;
          do
          {
            *(v76 - 5) = v74;
            v78 = a3[10];
            *(v76 - 2) = v78;
            v79 = a3[24] * a3[17];
            *(v76 - 3) = v79;
            *v76 = v75;
            if (v75 > 7 || ((0xFBu >> v75) & 1) == 0)
            {
              goto LABEL_74;
            }

            v80 = (dword_24BC6B7D0[v75] * v78 + 63) & 0xFFFFFFC0;
            *(v76 - 1) = v80;
            v74 += v80 * v79;
            if (v74 - v5 > v7)
            {
              return 4294967292;
            }

            v76 += 42;
            --v77;
          }

          while (v77);
          v81 = v5 + *(a2 + 48);
          v82 = a3[32];
          v83 = a4 + 95;
          v84 = v11;
          do
          {
            *(v83 - 5) = v81;
            v85 = a3[11];
            *(v83 - 2) = v85;
            v86 = a3[25] * a3[18];
            *(v83 - 3) = v86;
            *v83 = v82;
            if (v82 > 7 || ((0xFBu >> v82) & 1) == 0)
            {
              goto LABEL_74;
            }

            v87 = (dword_24BC6B7D0[v82] * v85 + 63) & 0xFFFFFFC0;
            *(v83 - 1) = v87;
            v81 += v87 * v86;
            if (v81 - v5 > v7)
            {
              return 4294967292;
            }

            v83 += 42;
            --v84;
          }

          while (v84);
          v88 = v5 + *(a2 + 52);
          v89 = a3[33];
          for (i = a4 + 101; ; i += 42)
          {
            *(i - 5) = v88;
            v91 = a3[12];
            *(i - 2) = v91;
            v92 = a3[26] * a3[19];
            *(i - 3) = v92;
            *i = v89;
            if (v89 > 7 || ((0xFBu >> v89) & 1) == 0)
            {
              break;
            }

            v93 = (dword_24BC6B7D0[v89] * v91 + 63) & 0xFFFFFFC0;
            *(i - 1) = v93;
            v88 += v93 * v92;
            if (v88 - v5 > v7)
            {
              return 4294967292;
            }

            result = 0;
            if (!--v11)
            {
              return result;
            }
          }

LABEL_74:
          AcAttrNode::getParams();
        }

        v16 = a3[27];
        v17 = a3[28];
        v18 = a3[29];
        v19 = a3[30];
        v20 = a3[31];
        v21 = a3[32];
        v22 = a3[33];
        v23 = a4 + 101;
        v24 = v5;
        while (1)
        {
          *(v23 - 41) = v24 + *(a2 + 28);
          v25 = a3[6];
          *(v23 - 38) = v25;
          v26 = a3[20] * a3[13];
          *(v23 - 39) = v26;
          *(v23 - 36) = v16;
          if (v16 > 7 || ((0xFBu >> v16) & 1) == 0)
          {
            goto LABEL_75;
          }

          v27 = (dword_24BC6B7D0[v16] * v25 + 63) & 0xFFFFFFC0;
          *(v23 - 37) = v27;
          if (v24 + *(a2 + 28) + v27 * v26 - v5 > v7)
          {
            return 4294967292;
          }

          *(v23 - 35) = v24 + *(a2 + 32);
          v28 = a3[7];
          *(v23 - 32) = v28;
          v29 = a3[21] * a3[14];
          *(v23 - 33) = v29;
          *(v23 - 30) = v17;
          if (v17 > 7 || ((0xFBu >> v17) & 1) == 0)
          {
            goto LABEL_75;
          }

          v30 = (dword_24BC6B7D0[v17] * v28 + 63) & 0xFFFFFFC0;
          *(v23 - 31) = v30;
          if (v24 + *(a2 + 32) + v30 * v29 - v5 > v7)
          {
            return 4294967292;
          }

          *(v23 - 29) = v24 + *(a2 + 36);
          v31 = a3[8];
          *(v23 - 26) = v31;
          v32 = a3[22] * a3[15];
          *(v23 - 27) = v32;
          *(v23 - 24) = v18;
          if (v18 > 7 || ((0xFBu >> v18) & 1) == 0)
          {
            goto LABEL_75;
          }

          v33 = (dword_24BC6B7D0[v18] * v31 + 63) & 0xFFFFFFC0;
          *(v23 - 25) = v33;
          if (v24 + *(a2 + 36) + v33 * v32 - v5 > v7)
          {
            return 4294967292;
          }

          *(v23 - 23) = v24 + *(a2 + 40);
          v34 = a3[9];
          *(v23 - 20) = v34;
          v35 = a3[23] * a3[16];
          *(v23 - 21) = v35;
          *(v23 - 18) = v19;
          if (v19 > 7 || ((0xFBu >> v19) & 1) == 0)
          {
            goto LABEL_75;
          }

          v36 = (dword_24BC6B7D0[v19] * v34 + 63) & 0xFFFFFFC0;
          *(v23 - 19) = v36;
          if (v24 + *(a2 + 40) + v36 * v35 - v5 > v7)
          {
            return 4294967292;
          }

          *(v23 - 17) = v24 + *(a2 + 44);
          v37 = a3[10];
          *(v23 - 14) = v37;
          v38 = a3[24] * a3[17];
          *(v23 - 15) = v38;
          *(v23 - 12) = v20;
          if (v20 > 7 || ((0xFBu >> v20) & 1) == 0)
          {
            goto LABEL_75;
          }

          v39 = (dword_24BC6B7D0[v20] * v37 + 63) & 0xFFFFFFC0;
          *(v23 - 13) = v39;
          if (v24 + *(a2 + 44) + v39 * v38 - v5 > v7)
          {
            return 4294967292;
          }

          *(v23 - 11) = v24 + *(a2 + 48);
          v40 = a3[11];
          *(v23 - 8) = v40;
          v41 = a3[25] * a3[18];
          *(v23 - 9) = v41;
          *(v23 - 6) = v21;
          if (v21 > 7 || ((0xFBu >> v21) & 1) == 0)
          {
            goto LABEL_75;
          }

          v42 = (dword_24BC6B7D0[v21] * v40 + 63) & 0xFFFFFFC0;
          *(v23 - 7) = v42;
          if (v24 + *(a2 + 48) + v42 * v41 - v5 > v7)
          {
            return 4294967292;
          }

          *(v23 - 5) = v24 + *(a2 + 52);
          v43 = a3[12];
          *(v23 - 2) = v43;
          v44 = a3[26] * a3[19];
          *(v23 - 3) = v44;
          *v23 = v22;
          if (v22 > 7 || ((0xFBu >> v22) & 1) == 0)
          {
LABEL_75:
            AcAttrNode::getParams();
          }

          v45 = (dword_24BC6B7D0[v22] * v43 + 63) & 0xFFFFFFC0;
          *(v23 - 1) = v45;
          v24 += *(a2 + 52) + (v45 * v44);
          if (v24 - v5 > v7)
          {
            return 4294967292;
          }

          result = 0;
          v23 += 42;
          if (!--v11)
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

void ttDetRectOverlap(float *a1, float *a2)
{
  bmMaximum(0.0, a1[2] - *a1);
  bmMaximum(0.0, a1[3] - a1[1]);
  bmMaximum(0.0, a2[2] - *a2);
  bmMaximum(0.0, a2[3] - a2[1]);
  v4 = bmMaximum(*a1, *a2);
  v5 = bmMaximum(a1[1], a2[1]);
  v6 = bmMinimum(a1[2], a2[2]);
  v7 = bmMinimum(a1[3], a2[3]);
  bmMaximum(a1[6], a2[6]);
  bmMaximum(0.0, v6 - v4);
  bmMaximum(0.0, v7 - v5);
}

void ttDetRectOverlap2(float *a1, float *a2)
{
  bmMaximum(0.0, a1[2] - *a1);
  bmMaximum(0.0, a1[3] - a1[1]);
  bmMaximum(0.0, a2[2] - *a2);
  bmMaximum(0.0, a2[3] - a2[1]);
  v4 = bmMaximum(*a1, *a2);
  v5 = bmMaximum(a1[1], a2[1]);
  v6 = bmMinimum(a1[2], a2[2]);
  v7 = bmMinimum(a1[3], a2[3]);
  bmMaximum(a1[6], a2[6]);
  bmMaximum(0.0, v6 - v4);
  bmMaximum(0.0, v7 - v5);
}

void ttDetRectOverlapSmallbox(float *a1, float *a2)
{
  v4 = bmMaximum(0.0, a1[2] - *a1);
  v5 = v4 * bmMaximum(0.0, a1[3] - a1[1]);
  v6 = bmMaximum(0.0, a2[2] - *a2);
  v7 = v6 * bmMaximum(0.0, a2[3] - a2[1]);
  v8 = bmMaximum(*a1, *a2);
  v9 = bmMaximum(a1[1], a2[1]);
  v10 = bmMinimum(a1[2], a2[2]);
  v11 = bmMinimum(a1[3], a2[3]);
  bmMaximum(a1[6], a2[6]);
  bmMaximum(0.0, v10 - v8);
  bmMaximum(0.0, v11 - v9);
  bmMinimum(v5, v7);
}

int32x2_t ttDetRectFromObject@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = vadd_f32(v2, *(a1 + 16));
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = *(a1 + 4);
  if (v4 >= 7)
  {
    ttDetRectFromObject();
  }

  *(a2 + 16) = v4 + 1;
  *(a2 + 24) = *(a1 + 24) / 1000.0;
  result = vrev64_s32(vcvt_f32_u32(*(a1 + 28)));
  *(a2 + 28) = result;
  return result;
}

void sub_24BC340F4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    *(v1 + 56) = v3;
    operator delete(v3);
  }

  ft::HungarianMatcher::HungarianMatcher((v1 + 24), v1);
  _Unwind_Resume(a1);
}

void ft::HungarianMatcher::~HungarianMatcher(ft::HungarianMatcher *this)
{
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

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

{
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

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void ft::HungarianMatcher::Match(ft::HungarianMatcher *this@<X0>, float *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  if (a3 <= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a3;
  }

  if (*(this + 9) < v10)
  {
    ft::HungarianMatcher::UpdateBuffers(this, v10);
    if ((*(this + 80) & 1) == 0)
    {
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
      return;
    }
  }

  v11 = *this;
  if (a3 && a4)
  {
    v12 = 4 * v10;
    if (a4 < 8)
    {
      v13 = v11 + 3;
      v14 = a3;
      do
      {
        *(v13 - 3) = *a2;
        if (a4 == 1)
        {
          ++a2;
        }

        else
        {
          *(v13 - 2) = a2[1];
          if (a4 == 2)
          {
            a2 += 2;
          }

          else
          {
            *(v13 - 1) = a2[2];
            if (a4 == 3)
            {
              a2 += 3;
            }

            else
            {
              *v13 = a2[3];
              if (a4 == 4)
              {
                a2 += 4;
              }

              else
              {
                v13[1] = a2[4];
                if (a4 == 5)
                {
                  a2 += 5;
                }

                else
                {
                  v13[2] = a2[5];
                  if (a4 == 6)
                  {
                    a2 += 6;
                  }

                  else
                  {
                    v13[3] = a2[6];
                    a2 += 7;
                  }
                }
              }
            }
          }
        }

        v13 = (v13 + v12);
        --v14;
      }

      while (v14);
      goto LABEL_34;
    }

    v15 = 0;
    v16 = v11 + 4;
    v17 = *this;
    do
    {
      if ((v11 + v12 * v15 - a2) >= 0x20)
      {
        v19 = &a2[a4 & 0xFFFFFFFFFFFFFFF8];
        v20 = a2 + 4;
        v21 = a4 & 0xFFFFFFFFFFFFFFF8;
        v22 = v16;
        do
        {
          v23 = *v20;
          *(v22 - 1) = *(v20 - 1);
          *v22 = v23;
          v22 += 8;
          v20 += 8;
          v21 -= 8;
        }

        while (v21);
        v18 = a4 & 0xFFFFFFFFFFFFFFF8;
        if ((a4 & 0xFFFFFFFFFFFFFFF8) == a4)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v18 = 0;
        v19 = a2;
      }

      do
      {
        v24 = *v19++;
        *(v17 + 4 * v18++) = v24;
      }

      while (a4 != v18);
LABEL_26:
      ++v15;
      v16 = (v16 + v12);
      v17 += v12;
      a2 = v19;
    }

    while (v15 != a3);
  }

LABEL_34:
  if (a3 != a4)
  {
    v25 = a3 >= a4 ? 0 : a3;
    v26 = a3 >= a4 ? a4 : 0;
    v27 = v10 - v25;
    if (v10 > v25 && v10 != v26)
    {
      v28 = &v11[v25 * v10 + v26];
      v29 = 4 * (v10 - v26);
      do
      {
        bzero(v28, v29);
        v28 += v10;
        --v27;
      }

      while (v27);
    }
  }

  bmMunkres(v11, v10, *(this + 6), *(this + 14) - *(this + 6), *(this + 3), v10, 0);
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (a3)
  {
    if (!(a3 >> 61))
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  if (v10)
  {
      ;
    }
  }
}

void *ft::HungarianMatcher::copyFromCostMatrix(void *this, float *a2, unint64_t a3, unint64_t a4)
{
  if (a3 <= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  if (a3 && a4)
  {
    v5 = *this;
    v6 = 4 * v4;
    if (a4 > 7)
    {
      v8 = 4 * (a4 & 0xFFFFFFFFFFFFFFF8);
      if ((a4 & 0xFFFFFFFFFFFFFFF8) == a4)
      {
        v9 = 0;
        v10 = (v5 + 16);
        v11 = *this;
        do
        {
          if ((v5 + v6 * v9 - a2) > 0x1F)
          {
            v14 = a2 + 4;
            v15 = v10;
            this = (a4 & 0xFFFFFFFFFFFFFFF8);
            do
            {
              v16 = *v14;
              *(v15 - 1) = *(v14 - 1);
              *v15 = v16;
              v15 += 2;
              v14 += 8;
              --this;
            }

            while (this);
            a2 = (a2 + v8);
          }

          else
          {
            for (i = 0; i != a4; ++i)
            {
              v13 = *a2++;
              *(v11 + 4 * i) = v13;
            }
          }

          ++v9;
          v10 = (v10 + v6);
          v11 += v6;
        }

        while (v9 != a3);
      }

      else
      {
        v17 = 0;
        v18 = (v5 + 16);
        v19 = *this;
        do
        {
          if ((v5 + v6 * v17 - a2) >= 0x20)
          {
            v21 = a2 + 4;
            v22 = a4 & 0xFFFFFFFFFFFFFFF8;
            this = v18;
            do
            {
              v23 = *v21;
              *(this - 1) = *(v21 - 1);
              *this = v23;
              v21 += 8;
              this += 4;
              v22 -= 8;
            }

            while (v22);
            v20 = a4 & 0xFFFFFFFFFFFFFFF8;
            a2 = (a2 + v8);
          }

          else
          {
            v20 = 0;
          }

          do
          {
            v24 = *a2++;
            *(v19 + 4 * v20++) = v24;
          }

          while (a4 != v20);
          ++v17;
          v18 = (v18 + v6);
          v19 += v6;
        }

        while (v17 != a3);
      }
    }

    else
    {
      v7 = (v5 + 12);
      do
      {
        *(v7 - 3) = *a2;
        if (a4 == 1)
        {
          ++a2;
        }

        else
        {
          *(v7 - 2) = a2[1];
          if (a4 == 2)
          {
            a2 += 2;
          }

          else
          {
            *(v7 - 1) = a2[2];
            if (a4 == 3)
            {
              a2 += 3;
            }

            else
            {
              *v7 = a2[3];
              if (a4 == 4)
              {
                a2 += 4;
              }

              else
              {
                v7[1] = a2[4];
                if (a4 == 5)
                {
                  a2 += 5;
                }

                else
                {
                  v7[2] = a2[5];
                  if (a4 == 6)
                  {
                    a2 += 6;
                  }

                  else
                  {
                    v7[3] = a2[6];
                    a2 += 7;
                  }
                }
              }
            }
          }
        }

        v7 = (v7 + v6);
        --a3;
      }

      while (a3);
    }
  }

  return this;
}

uint64_t *ft::HungarianMatcher::padToSquare(uint64_t *this, int32x2_t a2, unint64_t a3, unint64_t a4)
{
  if (a3 <= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  if (a3 != a4)
  {
    v5 = a3 >= a4 ? 0 : a3;
    v6 = a3 >= a4 ? a4 : 0;
    if (v5 < v4)
    {
      v7 = v4 - v6;
      if (v4 != v6)
      {
        v8 = v4 - v6;
        v9 = *this;
        v10 = v5 * v4;
        if (v4 - v6 > 7)
        {
          v13 = v8 & 0xFFFFFFFFFFFFFFF8;
          v14 = vdupq_lane_s32(a2, 0);
          if (v8 == (v8 & 0xFFFFFFFFFFFFFFF8))
          {
            v15 = 4 * v10 + 4 * v6 + v9 + 16;
            do
            {
              v16 = v15;
              v17 = v13;
              do
              {
                *(v16 - 1) = v14;
                *v16 = v14;
                v16 += 2;
                v17 -= 8;
              }

              while (v17);
              ++v5;
              v15 += 4 * v4;
            }

            while (v5 != v4);
          }

          else
          {
            v18 = (4 * v10 + 4 * v6 + v9);
            v19 = v18 + 1;
            v20 = 4 * v4;
            v21 = v7 - v13;
            v22 = &v18[2 * (v8 >> 3)];
            do
            {
              v23 = v13;
              v24 = v19;
              do
              {
                v24[-1] = v14;
                *v24 = v14;
                v24 += 2;
                v23 -= 8;
              }

              while (v23);
              v25 = v22;
              v26 = v21;
              do
              {
                v25->i32[0] = a2.i32[0];
                v25 = (v25 + 4);
                --v26;
              }

              while (v26);
              ++v5;
              v19 = (v19 + v20);
              v22 = (v22 + v20);
            }

            while (v5 != v4);
          }
        }

        else
        {
          v11 = v9 + 4 * v10 + 4 * v6;
          do
          {
            v12 = 0;
            do
            {
              *(v11 + 4 * v12++) = a2.i32[0];
            }

            while (v8 != v12);
            ++v5;
            v11 += 4 * v4;
          }

          while (v5 != v4);
        }
      }
    }
  }

  return this;
}

void ft::HungarianMatcher::Match(ft::HungarianMatcher *this@<X0>, unsigned int *a2@<X5>, int *a3@<X1>, unint64_t a4@<X2>, unint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t *a7@<X6>, void *a8@<X8>, float a9@<S0>, double a10@<D2>)
{
  *&a10 = a9;
  if (a4 <= a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = a4;
  }

  if (*(this + 9) >= v18 || (v58 = a10, ft::HungarianMatcher::UpdateBuffers(this, v18), a10 = v58, (*(this + 80) & 1) != 0))
  {
    if (!a4 || !a5)
    {
LABEL_36:
      if (a4 == a5)
      {
        v33 = *this;
      }

      else
      {
        if (a4 >= a5)
        {
          v35 = 0;
        }

        else
        {
          v35 = a4;
        }

        if (a4 >= a5)
        {
          v36 = a5;
        }

        else
        {
          v36 = 0;
        }

        v33 = *this;
        if (v35 < v18)
        {
          v37 = v18 - v36;
          if (v18 != v36)
          {
            v38 = v18 - v36;
            v39 = v35 * v18;
            if (v18 - v36 > 7)
            {
              v43 = v38 & 0xFFFFFFFFFFFFFFF8;
              v44 = vdupq_lane_s32(*&a10, 0);
              v45 = 4 * v39;
              if (v38 == (v38 & 0xFFFFFFFFFFFFFFF8))
              {
                v46 = &v33[4 * v36 + 16 + v45];
                do
                {
                  v47 = v46;
                  v48 = v43;
                  do
                  {
                    *(v47 - 1) = v44;
                    *v47 = v44;
                    v47 += 2;
                    v48 -= 8;
                  }

                  while (v48);
                  ++v35;
                  v46 += 4 * v18;
                }

                while (v35 != v18);
              }

              else
              {
                v49 = v45 + 4 * v36;
                v50 = &v33[v49 + 16];
                v51 = 4 * v18;
                v52 = v37 - v43;
                v53 = v49 + 32 * (v38 >> 3);
                do
                {
                  v54 = v43;
                  v55 = v50;
                  do
                  {
                    *(v55 - 1) = v44;
                    *v55 = v44;
                    v55 += 2;
                    v54 -= 8;
                  }

                  while (v54);
                  v56 = v53;
                  v57 = v52;
                  do
                  {
                    *&v33[v56] = LODWORD(a10);
                    v56 += 4;
                    --v57;
                  }

                  while (v57);
                  ++v35;
                  v50 += v51;
                  v53 += v51;
                }

                while (v35 != v18);
              }
            }

            else
            {
              v40 = &v33[4 * v39 + 4 * v36];
              do
              {
                v41 = 0;
                do
                {
                  *(v40 + 4 * v41++) = LODWORD(a10);
                }

                while (v38 != v41);
                ++v35;
                v40 += 4 * v18;
              }

              while (v35 != v18);
            }
          }
        }
      }

      v34 = bmMunkresExtended(v33, v18, *(this + 6), *(this + 14) - *(this + 6), *(this + 3), v18, a2, a6);
      if (a7)
      {
        *a7 = v34;
      }

      *a8 = 0;
      a8[1] = 0;
      a8[2] = 0;
      if (a4)
      {
        if (!(a4 >> 61))
        {
          operator new();
        }

        std::vector<long long>::__throw_length_error[abi:ne200100]();
      }

      if (v18)
      {
          ;
        }
      }

      return;
    }

    v19 = *this;
    v20 = 4 * v18;
    if (a5 < 8)
    {
      v21 = v19 + 12;
      v22 = a4;
      do
      {
        *(v21 - 3) = *a3;
        if (a5 == 1)
        {
          ++a3;
        }

        else
        {
          *(v21 - 2) = a3[1];
          if (a5 == 2)
          {
            a3 += 2;
          }

          else
          {
            *(v21 - 1) = a3[2];
            if (a5 == 3)
            {
              a3 += 3;
            }

            else
            {
              *v21 = a3[3];
              if (a5 == 4)
              {
                a3 += 4;
              }

              else
              {
                v21[1] = a3[4];
                if (a5 == 5)
                {
                  a3 += 5;
                }

                else
                {
                  v21[2] = a3[5];
                  if (a5 == 6)
                  {
                    a3 += 6;
                  }

                  else
                  {
                    v21[3] = a3[6];
                    a3 += 7;
                  }
                }
              }
            }
          }
        }

        v21 = (v21 + v20);
        --v22;
      }

      while (v22);
      goto LABEL_36;
    }

    v23 = 0;
    v24 = v19 + 16;
    v25 = *this;
    while (1)
    {
      if ((&v19[v20 * v23] - a3) >= 0x20)
      {
        v27 = &a3[a5 & 0xFFFFFFFFFFFFFFF8];
        v28 = (a3 + 4);
        v29 = a5 & 0xFFFFFFFFFFFFFFF8;
        v30 = v24;
        do
        {
          v31 = *v28;
          *(v30 - 1) = *(v28 - 1);
          *v30 = v31;
          v28 += 2;
          v30 += 32;
          v29 -= 8;
        }

        while (v29);
        v26 = a5 & 0xFFFFFFFFFFFFFFF8;
        if ((a5 & 0xFFFFFFFFFFFFFFF8) == a5)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v26 = 0;
        v27 = a3;
      }

      do
      {
        v32 = *v27++;
        *&v25[4 * v26++] = v32;
      }

      while (a5 != v26);
LABEL_28:
      ++v23;
      v24 += v20;
      v25 += v20;
      a3 = v27;
      if (v23 == a4)
      {
        goto LABEL_36;
      }
    }
  }

  if (a7)
  {
    *a7 = 2;
  }

  *a8 = 0;
  a8[1] = 0;
  a8[2] = 0;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27916B3C8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t acCropResizeGenerateConfig(unsigned int a1, unsigned int a2, _DWORD *a3, unsigned int a4, unsigned int a5, char a6, uint64_t a7, float a8, float a9, float a10, float a11)
{
  if ((a5 | a4))
  {
    acCropResizeGenerateConfig();
  }

  v12 = a3[1];
  if (v12 >= 5)
  {
    acCropResizeGenerateConfig();
  }

  result = 0;
  *a7 = 0;
  if (a8 >= 0.0 && a9 >= 0.0 && !*a3 && v12)
  {
    v20 = a5;
    v21 = a4;
    v22 = a3 + 2;
    v23 = a3 + 6;
    v24 = a1;
    v25 = a2;
    v26 = a4;
    v27 = a5;
    v28 = bmMinimum(a3[2] / a1, a3[6] / a2);
    v52 = a10;
    v53 = a11;
    v29 = v26 / bmMaximum(1.0, v28 * a10);
    v30 = bmMaximum(1.0, v28 * a11);
    v31 = bmMinimum(v29, v27 / v30);
    if (v31 > 4.0)
    {
      return 0;
    }

    v32 = 0.5;
    if (v31 >= 0.5)
    {
      LOBYTE(v35) = 0;
LABEL_18:
      v33 = v52;
      a11 = v53;
      *(a7 + 1) = v35;
    }

    else
    {
      v33 = v52;
      if (a3[1] >= 2u)
      {
        v34 = a3 + 7;
        v35 = 1;
        do
        {
          v36 = *(v34 - 4);
          if (v36 > *(v34 - 5))
          {
            acCropResizeGenerateConfig();
          }

          if (*v34 > *(v34 - 1))
          {
            acCropResizeGenerateConfig();
          }

          v28 = bmMinimum(v36 / v24, *v34 / v25);
          v37 = v26 / bmMaximum(1.0, v28 * v33);
          v38 = bmMaximum(1.0, v28 * a11);
          v31 = bmMinimum(v37, v27 / v38);
          if (v31 > 4.0)
          {
            return 0;
          }

          v32 = 0.5;
          if (v31 >= 0.5)
          {
            goto LABEL_18;
          }

          ++v34;
          ++v35;
          v33 = v52;
          a11 = v53;
        }

        while (v35 < a3[1]);
      }
    }

    if (v31 < v32)
    {
      return 0;
    }

    v39 = *(a7 + 1);
    v40 = v22[v39];
    if ((v28 * a8) > (v40 + -1.0) || (v28 * a9) > (v23[v39] + -1.0))
    {
      return 0;
    }

    *(a7 + 20) = v21;
    *(a7 + 22) = v20;
    v41 = llroundf((v28 * a8) * 8.0);
    *(a7 + 24) = v41;
    *(a7 + 26) = v41 >> 1;
    v42 = llroundf((v28 * a9) * 8.0);
    *(a7 + 30) = v42 >> 1;
    v43 = llroundf(16384.0 / v31);
    *(a7 + 28) = v42;
    *(a7 + 32) = v43;
    *(a7 + 36) = v43;
    v43 >>= 1;
    *(a7 + 34) = v43;
    *(a7 + 38) = v43;
    if (a6)
    {
      v45 = (v41 >> 3) & 0x1FC0;
      v46 = (v42 >> 3) & 0x1FFE;
      v47 = &a3[2 * v39];
      *(a7 + 12) = v45 + v47[10] * v46;
      *(a7 + 16) = v45 + v47[11] * (v42 >> 4);
      v48 = v22[v39];
      if (v48 <= v45)
      {
        acCropResizeGenerateConfig();
      }

      if (v23[v39] <= v46)
      {
        acCropResizeGenerateConfig();
      }

      *(a7 + 4) = bmMinimum(v48 - v45, (v28 * v33) + 63);
      *(a7 + 8) = bmMinimum(v23[*(a7 + 1)] - v46, (v28 * a11) + 1);
      v49 = *(a7 + 24) - 8 * v45;
      *(a7 + 24) = v49;
      v50 = *(a7 + 28) - 8 * v46;
      *(a7 + 28) = v50;
      *(a7 + 26) = v49 >> 1;
      *(a7 + 30) = v50 >> 1;
      result = 1;
      *a7 = 1;
    }

    else
    {
      *(a7 + 4) = v40;
      v44 = v23[v39];
      *(a7 + 12) = 0;
      *(a7 + 16) = 0;
      *(a7 + 8) = v44;
      return 1;
    }
  }

  return result;
}

uint64_t AcDetNode::AcDetNode(uint64_t a1, uint64_t a2)
{
  *(a1 + 3308) = 0u;
  *(a1 + 3324) = 0u;
  *(a1 + 3276) = 0u;
  *(a1 + 3292) = 0u;
  *(a1 + 3244) = 0u;
  *(a1 + 3260) = 0u;
  *(a1 + 3212) = 0u;
  *(a1 + 3228) = 0u;
  *(a1 + 3196) = 0u;
  *(a1 + 3412) = 0;
  bzero(a1, 0x9A4uLL);
  bzero((a1 + 2512), 0x294uLL);
  *(a2 + 8) = 0;
  *a2 = 0xDE7C00000001;
  return a1;
}

{
  *(a1 + 3308) = 0u;
  *(a1 + 3324) = 0u;
  *(a1 + 3276) = 0u;
  *(a1 + 3292) = 0u;
  *(a1 + 3244) = 0u;
  *(a1 + 3260) = 0u;
  *(a1 + 3212) = 0u;
  *(a1 + 3228) = 0u;
  *(a1 + 3196) = 0u;
  *(a1 + 3412) = 0;
  bzero(a1, 0x9A4uLL);
  bzero((a1 + 2512), 0x294uLL);
  *(a2 + 8) = 0;
  *a2 = 0xDE7C00000001;
  return a1;
}

void AcDetNode::~AcDetNode(AcDetNode *this)
{
  v2 = *(this + 314);
  if (v2)
  {
    MEMORY[0x24C253360](v2, 0x1000C8077774924);
  }

  v3 = *(this + 306);
  if (v3)
  {
    MEMORY[0x24C253360](v3, 0x1000C8052888210);
  }

  v4 = (this + 3364);
  v5 = *(this + 307);
  if (v5)
  {
    MEMORY[0x24C253360](v5, 0x1000C8052888210);
  }

  if (*v4)
  {
    MEMORY[0x24C253360](*v4, 0x1000C8077774924);
  }

  v6 = *(this + 3388);
  if (v6)
  {
    MEMORY[0x24C253360](v6, 0x1000C8077774924);
  }
}

{
  v2 = *(this + 314);
  if (v2)
  {
    MEMORY[0x24C253360](v2, 0x1000C8077774924);
  }

  v3 = *(this + 306);
  if (v3)
  {
    MEMORY[0x24C253360](v3, 0x1000C8052888210);
  }

  v4 = (this + 3364);
  v5 = *(this + 307);
  if (v5)
  {
    MEMORY[0x24C253360](v5, 0x1000C8052888210);
  }

  if (*v4)
  {
    MEMORY[0x24C253360](*v4, 0x1000C8077774924);
  }

  v6 = *(this + 3388);
  if (v6)
  {
    MEMORY[0x24C253360](v6, 0x1000C8077774924);
  }
}

uint64_t AcDetNode::init(uint64_t a1, _DWORD *__src, _DWORD *a3, int a4)
{
  if (*a3 != 1)
  {
    return 4294967289;
  }

  v4 = a3[1];
  if (v4 != 56956 && v4 != 56945)
  {
    return 4294967292;
  }

  v6 = &kAcODNodeConfigDefaultRawData;
  if (!a4)
  {
    v6 = &kAcDetFaceNodeConfigDefaultRawData;
  }

  if (__src)
  {
LABEL_10:
    if (__src[6])
    {
      if (__src[5])
      {
        if (__src[11] >= 2u && (__src[12] - 11) >= 0xFFFFFFF6)
        {
          v7 = __src[26];
          if (v7 - 7 >= 0xFFFFFFFA && __src[393] <= v7 && __src[394] <= 5u && !*(__src + 1706) && !*(__src + 1738) && !*(__src + 1770) && !*(__src + 1802) && !*(__src + 1834))
          {
            v8 = __src;
            if (!*(__src + 1866) && !*(__src + 1898) && !*(__src + 1930) && !*(__src + 1962) && !*(__src + 1994) && !*(__src + 2026) && !*(__src + 2058) && !*(__src + 2090) && !*(__src + 2122) && !*(__src + 2154) && !*(__src + 2186) && !*(__src + 2218) && !*(__src + 2250) && !*(__src + 2282) && !*(__src + 2314) && !*(__src + 2346) && !*(__src + 2378) && !*(__src + 2410) && !*(__src + 2442))
            {
              memcpy(a1, __src, 0x990uLL);
              *(a1 + 2468) = logf(*(a1 + 1380) / (1.0 - *(a1 + 1380)));
              __asm { FMOV            V9.2S, #1.0 }

              v15 = vdiv_f32(*(a1 + 1384), vsub_f32(_D9, *(a1 + 1384)));
              v33 = v15.f32[0];
              v37 = logf(v15.f32[1]);
              *&v16 = logf(v33);
              *(&v16 + 1) = v37;
              *(a1 + 2472) = v16;
              __asm { FMOV            V1.4S, #1.0 }

              v38 = vdivq_f32(*(a1 + 1392), vsubq_f32(_Q1, *(a1 + 1392)));
              v34 = logf(v38.f32[1]);
              *&v18 = logf(v38.f32[0]);
              *(&v18 + 1) = v34;
              v35 = v18;
              v19 = logf(v38.f32[2]);
              v20 = v35;
              *(&v20 + 2) = v19;
              v36 = v20;
              v21 = logf(v38.f32[3]);
              v22 = v36;
              *(&v22 + 3) = v21;
              *(a1 + 2480) = v22;
              v23 = vdiv_f32(*(a1 + 1408), vsub_f32(_D9, *(a1 + 1408)));
              LODWORD(v36) = v23.i32[0];
              v38.i32[0] = logf(v23.f32[1]);
              *&v24 = logf(*&v36);
              HIDWORD(v24) = v38.i32[0];
              *(a1 + 2496) = v24;
              *(a1 + 2504) = logf(*(a1 + 1416) / (1.0 - *(a1 + 1416)));
              v25 = *(a1 + 2512);
              if (v25)
              {
                MEMORY[0x24C253360](v25, 0x1000C8077774924);
              }

              *(a1 + 2464) = 0;
              *(a1 + 2520) = 0;
              v26 = *(a1 + 104);
              if (v26)
              {
                v27 = 0;
                v28 = 0;
                v29 = (a1 + 132);
                v30 = v8 + 57;
                do
                {
                  v31 = *v29 * *(v29 - 6);
                  if (!v31)
                  {
                    AcDetNode::init();
                  }

                  if (!v29[24])
                  {
                    AcDetNode::init();
                  }

                  ++v29;
                  if (v31 > v28)
                  {
                    v28 = v31;
                  }

                  v32 = *v30++;
                  v27 += v32;
                  *(a1 + 2464) = v27;
                  --v26;
                }

                while (v26);
              }

              else
              {
                v28 = 0;
              }

              *(a1 + 2520) = v28;
              operator new[]();
            }
          }
        }
      }
    }

    return 4294967292;
  }

  if (a4 != 1)
  {
    __src = v6;
    goto LABEL_10;
  }

  return 4294967288;
}

uint64_t AcDetNode::postProcess(uint64_t a1, uint64_t a2, int a3, _DWORD *a4, unsigned int *a5)
{
  if (*a4 != 1)
  {
    return 4294967289;
  }

  result = 4294967292;
  if (a3 == 24 && a4[1] == 56945)
  {
    std::chrono::steady_clock::now();
    AcDetNode::postProcessDet(a1, a2, v10, a4, a5);
    return 0;
  }

  return result;
}

uint64_t AcDetNode::postProcessDet(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v7 = *(a4 + 8);
  a5[54] = v7;
  *(a4 + 8) = v7 + 1;
  if (*(a1 + 104))
  {
    v8 = 0;
    v9 = a1 + 2692;
    v10 = a1 + 1580;
    v11 = a1 + 2980;
    v12 = a1 + 2524;
    v13 = (a1 + 2668);
    do
    {
      v80 = -1;
      v81 = -1;
      v79 = -1;
      acDetBboxCoderGetClsBufferInds(*(a1 + 1572), v8, &v81, &v80, &v79);
      v27 = v81;
      if (v81 == -1)
      {
        v28 = v80;
        if (v80 == -1)
        {
          AcDetNode::postProcessDet();
        }

        v27 = v79;
        if (v79 == -1)
        {
          AcDetNode::postProcessDet();
        }

        v14 = (a2 + 24 * v80);
        v15 = v9 + 24 * v80;
        v16 = *v14;
        *(v15 + 16) = *(v14 + 2);
        *v15 = v16;
        *(v11 + 4 * v28) = *(v10 + 4 * v28);
      }

      v17 = (a2 + 24 * v27);
      v18 = v9 + 24 * v27;
      v19 = *v17;
      v20 = *(v17 + 2);
      *v18 = v19;
      LODWORD(v19) = *(v10 + 4 * v27);
      *(v18 + 16) = v20;
      *(v11 + 4 * v27) = v19;
      v21 = (a2 + 24 * (v8 + 6));
      v22 = *v21;
      *(v12 + 16) = *(v21 + 2);
      *v12 = v22;
      *v13 = *(v10 + 4 * (v8 + 6));
      v23 = (a2 + 24 * (v8 + 12));
      v24 = *v23;
      *(v12 + 520) = *(v23 + 2);
      *(v12 + 504) = v24;
      v13[126] = *(v10 + 4 * (v8 + 12));
      v25 = (a2 + 24 * (v8 + 18));
      v26 = *v25;
      *(v12 + 688) = *(v25 + 2);
      *(v12 + 672) = v26;
      v13[168] = *(v10 + 4 * (v8++ + 18));
      v12 += 24;
      ++v13;
    }

    while (v8 < *(a1 + 104));
  }

  std::chrono::steady_clock::now();
  if (*(a2 + 20))
  {
    v32 = acDetBboxCoderDecodeAllFloat(a1, a1 + 2468, a1 + 2692, a1 + 2524, a1 + 3028, a1 + 3196, *(a1 + 2448), *(a1 + 2456), *(a1 + 2464), *(a1 + 3412), *(a1 + 2512), *(a1 + 2520), a1 + 3364, a1 + 3388);
  }

  else
  {
    v32 = acDetBboxCoderDecodeAll(a1, a1 + 2468, a1 + 2692, a1 + 2524, a1 + 3028, a1 + 3196, a1 + 2980, a1 + 2668, v29, v30, v31, a1 + 3172, a1 + 3340, *(a1 + 2448), *(a1 + 2456), *(a1 + 2464), *(a1 + 3412), *(a1 + 2512), *(a1 + 2520), a1 + 3364, a1 + 3388);
  }

  v33 = v32;
  bmHeapsort(*(a1 + 2512), v32, 0x24uLL, acDetBboxCoderRectDefDistCostCompare);
  acDetBboxCoderRectToDetRect(*(a1 + 2512), v33, *(a1 + 2512));
  v34 = *(a1 + 96);
  if (v34 >= v33 || *(*(a1 + 2512) + 36 * v34 + 24) < *(a1 + 100))
  {
    if (*(a1 + 2444) == 1)
    {
      std::chrono::steady_clock::now();
      v33 = acDetRectWeightedMerge(*(a1 + 2512), v33, *(a1 + 60), *(a1 + 64));
      bmHeapsort(*(a1 + 2512), v33, 0x24uLL, acDetRectScoreCompare);
    }

    std::chrono::steady_clock::now();
    v35 = acNonMaxSuppression(*(a1 + 2512), v33, *(a1 + 68));
    std::chrono::steady_clock::now();
    v36 = acCrossClassSuppression(*(a1 + 2512), 1, 2, v35, *(a1 + 72));
    bmHeapsort(*(a1 + 2512), v36, 0x24uLL, acDetRectScoreCompare);
    if (*(a1 + 2444) == 1)
    {
      std::chrono::steady_clock::now();
      v37 = acDetRectSmallRectSuppression(*(a1 + 2512), v36, *(a1 + 76), *(a1 + 80));
      bmHeapsort(*(a1 + 2512), v37, 0x24uLL, acDetRectSortIndexCompare);
      std::chrono::steady_clock::now();
      v36 = acDetRectLowMergeCountSuppression(*(a1 + 2512), v37, *(a1 + 88), *(a1 + 92), *(a1 + 84));
    }

    v38 = 1380;
    if (*(a1 + 3412))
    {
      v38 = 1420;
    }

    v78 = a1 + v38;
    v39 = acDetRectFilterByScore(*(a1 + 2512), v36, a1 + v38);
    v40 = bmMinimum(v39, *(a1 + 48));
    if (v40)
    {
      v41 = 0;
      v42 = a5 + 287;
      v43 = a5 + 286;
      v44 = a5 + 56;
      v45 = a5 + 55;
      v46 = 36 * v40;
      v47 = 1;
      v77 = v46;
      do
      {
        v58 = *(a1 + 2512);
        v59 = v58 + v41;
        v60 = *(v58 + v41 + 16);
        if (v60 > 2)
        {
          v69 = *v43;
          v42[8 * v69] = v47;
          if (v60 >= 10)
          {
            AcDetNode::postProcessDet();
          }

          if (v60 <= 9)
          {
            v48 = dword_24BC6BFE8[v60];
          }

          else
          {
            v48 = 0;
          }

          v49 = &v42[8 * v69];
          v49[1] = v48;
          v50 = (v58 + v41);
          *v51.f32 = *v50;
          *v52.i8 = vcvt_f32_u32(*(a1 + 20));
          v52.i64[1] = v52.i64[0];
          *&v51.u32[2] = vsub_f32(v50[1], *v50);
          *(v49 + 2) = vmulq_f32(v51, vrev64q_s32(v52));
          v53 = bmClamp(((((v50[3].f32[0] - *(v78 + 4 * v60)) / (1.0 - *(v78 + 4 * v60))) * 1000.0) + 0.5), 1u, 1000);
          v54 = *v43;
          v55 = &v42[8 * v54];
          v55[6] = v53;
          v56 = v55 + 7;
          v57 = v43;
        }

        else
        {
          v61 = *v45;
          v44[23 * *v45] = v47;
          if (!v60)
          {
            AcDetNode::postProcessDet();
          }

          v44[23 * v61 + 1] = 0;
          v62 = (v58 + v41);
          if (v60 == 1)
          {
            v64 = *v62;
            v63 = v62[1];
            v65 = vsub_f32(v63, *v62);
            v66 = vcvt_f32_u32(*(a1 + 20));
            v67 = vrev64_s32(v66);
            v65.f32[0] = (COERCE_FLOAT(vmul_f32(v65, v67).i32[1]) + (v65.f32[0] * *&v66.i32[1])) * 0.5;
            *v64.i32 = v65.f32[0] * 0.5;
            *v68.f32 = vsub_f32(vmul_f32(vmul_f32(vadd_f32(v63, *v62), 0x3F0000003F000000), v67), vdup_lane_s32(v64, 0));
            v68.i32[2] = v65.i32[0];
            v68.i32[3] = v65.i32[0];
          }

          else
          {
            *v70.i8 = vcvt_f32_u32(*(a1 + 20));
            v70.i64[1] = v70.i64[0];
            *v71.f32 = *v62;
            *&v71.u32[2] = vsub_f32(v62[1], *v62);
            v68 = vmulq_f32(v71, vrev64q_s32(v70));
          }

          *&v44[23 * v61 + 2] = v68;
          v72 = v58 + v41;
          v73 = bmClamp(((((*(v58 + v41 + 24) - *(v78 + 4 * v60)) / (1.0 - *(v78 + 4 * v60))) * 1000.0) + 0.5), 1u, 1000);
          LODWORD(v54) = *v45;
          v74 = &v44[23 * *v45];
          v74[6] = v73;
          *(v74 + 80) = 1;
          *(v74 + 7) = vrev64_s32(vcvt_s32_f32(*(v72 + 28)));
          *(v74 + 84) = *(v59 + 16) == 1;
          v56 = v74 + 22;
          v57 = v45;
          v46 = v77;
        }

        *v56 = 0;
        *v57 = v54 + 1;
        v41 += 36;
        ++v47;
      }

      while (v46 != v41);
    }
  }

  return 0;
}

uint64_t AcDetNode::getClsBufferInds(AcDetNode *this, unsigned int a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  result = acDetBboxCoderGetClsBufferInds(*(this + 393), a2, a3, a4, a5);
  if (*a3 == -1)
  {
    if (*a4 == -1)
    {
      AcDetNode::postProcessDet();
    }

    if (*a5 == -1)
    {
      AcDetNode::postProcessDet();
    }
  }

  return result;
}

uint64_t AcDetNode::getParams(uint64_t a1, _DWORD *a2, uint64_t a3, unsigned int a4)
{
  if (*a2 != 1)
  {
    return 4294967289;
  }

  if (a2[1] != 56945)
  {
    return 4294967292;
  }

  v6 = a4;
  v7 = a3 + 24 * a4;
  v8 = *(a1 + 20);
  *(v7 + 16) = *(a1 + 36);
  *v7 = v8;
  if (*(a1 + 104))
  {
    v9 = 0;
    v38 = a3;
    v10 = a3 + 72;
    v11 = (a1 + 132);
    v12 = a1;
    do
    {
      v40 = -1;
      v41 = -1;
      v39 = -1;
      acDetBboxCoderGetClsBufferInds(*(a1 + 1572), v9, &v41, &v40, &v39);
      v14 = v41;
      if (v41 == -1)
      {
        v18 = v40;
        if (v40 == -1)
        {
          AcDetNode::postProcessDet();
        }

        v14 = v39;
        if (v39 == -1)
        {
          AcDetNode::postProcessDet();
        }

        v19 = (v10 + 576 * v6 + 24 * v40);
        v19[1] = v12[27];
        *v19 = v12[33];
        if (a2[1] != 56945)
        {
          AcDetNode::getParams();
        }

        v20 = v10 + 576 * v6;
        v21 = v20 + 24 * v18;
        *(v21 + 8) = v12[303] * v12[57];
        *(v21 + 12) = 0;
        v22 = (v20 + 24 * v14);
        v22[1] = v12[27];
        *v22 = v12[33];
        v16 = v12[57];
        v17 = *(a1 + 1576);
      }

      else
      {
        v15 = (v10 + 576 * v6 + 24 * v41);
        v15[1] = v12[27];
        *v15 = v12[33];
        if (a2[1] != 56945)
        {
          AcDetNode::getParams();
        }

        v16 = v12[57];
        v17 = *(a1 + 44);
      }

      *(v10 + 576 * v6 + 24 * v14 + 8) = (v17 * v16);
      ++v9;
      v13 = *(a1 + 104);
      ++v12;
    }

    while (v9 < v13);
    a3 = v38;
    if (v13)
    {
      if (a2[1] != 56945)
      {
        AcDetNode::getParams((a1 + 108), v10, v6, (a1 + 132));
      }

      v24 = 6;
      v25 = *(a1 + 104);
      v26 = (a1 + 132);
      do
      {
        v27 = v10 + 576 * v6 + 24 * v24;
        *(v27 + 4) = *(v26 - 6);
        *v27 = *v26;
        *(v27 + 8) = (4 * v26[24]);
        ++v24;
        ++v26;
        --v25;
      }

      while (v25);
      if (a2[1] != 56945)
      {
        AcDetNode::getParams((a1 + 108), v10, v6, (a1 + 132));
      }

      v28 = *(a1 + 1484);
      v29 = 12;
      v30 = v13;
      v31 = (a1 + 132);
      do
      {
        v32 = v10 + 576 * v6 + 24 * v29;
        *(v32 + 4) = *(v31 - 6);
        *v32 = *v31;
        *(v32 + 8) = (v28 * v31[24]);
        ++v29;
        ++v31;
        --v30;
      }

      while (v30);
      if (a2[1] != 56945)
      {
        AcDetNode::getParams((a1 + 108), v10, v6, (a1 + 132));
      }

      v33 = *(a1 + 1536);
      v34 = 18;
      do
      {
        v35 = v10 + 576 * v6 + 24 * v34;
        *(v35 + 4) = *(v11 - 6);
        *v35 = *v11;
        *(v35 + 8) = (v33 * v11[24]);
        ++v34;
        ++v11;
        --v13;
      }

      while (v13);
    }
  }

  v36 = (a3 + 576 * v6);
  v37 = (a3 + 768 * v6);
  v36[22] = *(a1 + 1580);
  v36[23] = 0;
  strncpy(v37 + 1800, (a1 + 1676), 0x20uLL);
  v36[28] = *(a1 + 1584);
  v36[29] = 0;
  strncpy(v37 + 1832, (a1 + 1708), 0x20uLL);
  v36[34] = *(a1 + 1588);
  v36[35] = 0;
  strncpy(v37 + 1864, (a1 + 1740), 0x20uLL);
  v36[40] = *(a1 + 1592);
  v36[41] = 0;
  strncpy(v37 + 1896, (a1 + 1772), 0x20uLL);
  v36[46] = *(a1 + 1596);
  v36[47] = 0;
  strncpy(v37 + 1928, (a1 + 1804), 0x20uLL);
  v36[52] = *(a1 + 1600);
  v36[53] = 0;
  strncpy(v37 + 1960, (a1 + 1836), 0x20uLL);
  v36[58] = *(a1 + 1604);
  v36[59] = 0;
  strncpy(v37 + 1992, (a1 + 1868), 0x20uLL);
  v36[64] = *(a1 + 1608);
  v36[65] = 0;
  strncpy(v37 + 2024, (a1 + 1900), 0x20uLL);
  v36[70] = *(a1 + 1612);
  v36[71] = 0;
  strncpy(v37 + 2056, (a1 + 1932), 0x20uLL);
  v36[76] = *(a1 + 1616);
  v36[77] = 0;
  strncpy(v37 + 2088, (a1 + 1964), 0x20uLL);
  v36[82] = *(a1 + 1620);
  v36[83] = 0;
  strncpy(v37 + 2120, (a1 + 1996), 0x20uLL);
  v36[88] = *(a1 + 1624);
  v36[89] = 0;
  strncpy(v37 + 2152, (a1 + 2028), 0x20uLL);
  v36[94] = *(a1 + 1628);
  v36[95] = 0;
  strncpy(v37 + 2184, (a1 + 2060), 0x20uLL);
  v36[100] = *(a1 + 1632);
  v36[101] = 0;
  strncpy(v37 + 2216, (a1 + 2092), 0x20uLL);
  v36[106] = *(a1 + 1636);
  v36[107] = 0;
  strncpy(v37 + 2248, (a1 + 2124), 0x20uLL);
  v36[112] = *(a1 + 1640);
  v36[113] = 0;
  strncpy(v37 + 2280, (a1 + 2156), 0x20uLL);
  v36[118] = *(a1 + 1644);
  v36[119] = 0;
  strncpy(v37 + 2312, (a1 + 2188), 0x20uLL);
  v36[124] = *(a1 + 1648);
  v36[125] = 0;
  strncpy(v37 + 2344, (a1 + 2220), 0x20uLL);
  v36[130] = *(a1 + 1652);
  v36[131] = 0;
  strncpy(v37 + 2376, (a1 + 2252), 0x20uLL);
  v36[136] = *(a1 + 1656);
  v36[137] = 0;
  strncpy(v37 + 2408, (a1 + 2284), 0x20uLL);
  v36[142] = *(a1 + 1660);
  v36[143] = 0;
  strncpy(v37 + 2440, (a1 + 2316), 0x20uLL);
  v36[148] = *(a1 + 1664);
  v36[149] = 0;
  strncpy(v37 + 2472, (a1 + 2348), 0x20uLL);
  v36[154] = *(a1 + 1668);
  v36[155] = 0;
  strncpy(v37 + 2504, (a1 + 2380), 0x20uLL);
  v36[160] = *(a1 + 1672);
  v36[161] = 0;
  strncpy(v37 + 2536, (a1 + 2412), 0x20uLL);
  return 0;
}

uint64_t AcDetNode::classBufChCount(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 4) != 56945)
  {
    AcDetNode::getParams();
  }

  return (*(a1 + 44) * *(a1 + 4 * a2 + 228));
}

uint64_t AcDetNode::classPosBufChCount(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 4) != 56945)
  {
    AcDetNode::getParams();
  }

  return (*(a1 + 4 * a2 + 1212) * *(a1 + 4 * a2 + 228));
}

uint64_t AcDetNode::classNegBufChCount(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 4) != 56945)
  {
    AcDetNode::classNegBufChCount();
  }

  return (*(a1 + 1576) * *(a1 + 4 * a2 + 228));
}

uint64_t AcDetNode::bboxBufChCount(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 4) != 56945)
  {
    AcDetNode::bboxBufChCount();
  }

  return (4 * *(a1 + 4 * a2 + 228));
}

uint64_t AcDetNode::rollBufChCount(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 4) != 56945)
  {
    AcDetNode::rollBufChCount();
  }

  return (*(a1 + 1484) * *(a1 + 4 * a2 + 228));
}

uint64_t AcDetNode::yawBufChCount(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 4) != 56945)
  {
    AcDetNode::yawBufChCount();
  }

  return (*(a1 + 1536) * *(a1 + 4 * a2 + 228));
}

void AcDetNode::useLowThresholds(AcDetNode *this, int a2)
{
  *(this + 3412) = a2;
  v3 = 1380;
  if (a2)
  {
    v3 = 1420;
    v4 = 1424;
  }

  else
  {
    v4 = 1384;
  }

  if (a2)
  {
    v5 = 1428;
  }

  else
  {
    v5 = 1388;
  }

  if (a2)
  {
    v6 = 1432;
  }

  else
  {
    v6 = 1392;
  }

  if (a2)
  {
    v7 = 1436;
  }

  else
  {
    v7 = 1396;
  }

  if (a2)
  {
    v8 = 1440;
  }

  else
  {
    v8 = 1400;
  }

  if (a2)
  {
    v9 = 1444;
  }

  else
  {
    v9 = 1404;
  }

  if (a2)
  {
    v10 = 1448;
  }

  else
  {
    v10 = 1408;
  }

  if (a2)
  {
    v11 = 1452;
  }

  else
  {
    v11 = 1412;
  }

  if (a2)
  {
    v12 = 1456;
  }

  else
  {
    v12 = 1416;
  }

  *(this + 617) = logf(*(this + v3) / (1.0 - *(this + v3)));
  *(this + 618) = logf(*(this + v4) / (1.0 - *(this + v4)));
  *(this + 619) = logf(*(this + v5) / (1.0 - *(this + v5)));
  *(this + 620) = logf(*(this + v6) / (1.0 - *(this + v6)));
  *(this + 621) = logf(*(this + v7) / (1.0 - *(this + v7)));
  *(this + 622) = logf(*(this + v8) / (1.0 - *(this + v8)));
  *(this + 623) = logf(*(this + v9) / (1.0 - *(this + v9)));
  *(this + 624) = logf(*(this + v10) / (1.0 - *(this + v10)));
  *(this + 625) = logf(*(this + v11) / (1.0 - *(this + v11)));
  *(this + 626) = logf(*(this + v12) / (1.0 - *(this + v12)));
}

uint64_t ttMemBlockCoalesce(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 >= 2)
  {
    v4 = a2;
    bmHeapsort(a1, a2, 0xCuLL, ttMemBlockCompareAddress);
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

uint64_t ttMemBlockCoalesceNoSort(uint64_t a1, uint64_t a2)
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

uint64_t acAttrReduceSmile(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0x65)
  {
    acAttrReduceSmile();
  }

  if (!*(a1 + 12) || (v2 = *(a1 + 8)) == 0)
  {
    AcAttrNode::postProcess();
  }

  if (v2 <= 1)
  {
    AcAttrNode::postProcess();
  }

  v3 = a2 / 100.0;
  v4 = bmSoftmax2(**a1, *(*a1 + *(a1 + 16)));
  if (v4 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  return bmClamp(((((v4 - v3) / (1.0 - v3)) * 100.0) + 0.5), 1u, 100);
}

uint64_t acAttrReduceBlink(float **a1, unsigned int a2, unsigned int a3, BOOL *a4, __n128 a5)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 2) <= 2u)
  {
    acAttrReduceBlink();
  }

  if (a2 >= 0x65)
  {
    acAttrReduceBlink();
  }

  if (a3 >= 0x65)
  {
    acAttrReduceBlink();
  }

  if (!*(a1 + 3))
  {
    AcAttrNode::postProcess();
  }

  v7 = *a1;
  v8 = *(a1 + 4);
  v16[0] = **a1;
  v9 = a3 / 100.0;
  v16[1] = *(v7 + v8);
  v17 = *(v7 + (2 * v8));
  a5.n128_u32[0] = v17;
  bmSoftmax(v16, &v13, 3u, a5);
  v10 = v15 <= v9;
  *a4 = v15 > v9;
  if (!v10)
  {
    return 0;
  }

  v12 = a2 / 100.0;
  if (v14 >= v12)
  {
    return bmClamp(((((v14 - v12) / (1.0 - v12)) * 100.0) + 0.5), 1u, 100);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t acAttrReduceYaw(uint64_t a1, float *a2, unsigned int a3, __n128 a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3 >= 0xB)
  {
    acAttrReduceYaw();
  }

  if (a3)
  {
    if (!*(a1 + 12))
    {
LABEL_14:
      AcAttrNode::postProcess();
    }

    v5 = 0;
    v6 = a3;
    v7 = *(a1 + 8);
    do
    {
      if (v7 == v5)
      {
        goto LABEL_14;
      }

      a4.n128_u32[0] = *(*a1 + (*(a1 + 16) * v5));
      v15[0].i32[v5++] = a4.n128_u32[0];
    }

    while (a3 != v5);
    v8 = v15;
    bmSoftmax(v15, v15[0].f32, a3, a4);
    v9 = 0.0;
    do
    {
      v10 = v8->f32[0];
      v8 = (v8 + 4);
      v11 = v10;
      v12 = *a2++;
      v9 = v9 + (v11 * v12);
      --v6;
    }

    while (v6);
  }

  else
  {
    bmSoftmax(v15, v15[0].f32, 0, a4);
    v9 = 0.0;
  }

  v13 = -0.5;
  if (v9 > 0.0)
  {
    v13 = 0.5;
  }

  return (v9 + v13);
}

uint64_t acAttrReduceRoll(uint64_t a1, float *a2, float *a3, unsigned int a4, __n128 a5)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a4 >= 0xB)
  {
    acAttrReduceRoll();
  }

  if (a4)
  {
    if (!*(a1 + 12))
    {
LABEL_14:
      AcAttrNode::postProcess();
    }

    v7 = 0;
    v8 = a4;
    v9 = *(a1 + 8);
    do
    {
      if (v9 == v7)
      {
        goto LABEL_14;
      }

      a5.n128_u32[0] = *(*a1 + (*(a1 + 16) * v7));
      v20[0].i32[v7++] = a5.n128_u32[0];
    }

    while (a4 != v7);
    v10 = v20;
    bmSoftmax(v20, v20[0].f32, a4, a5);
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      v13 = v10->f32[0];
      v10 = (v10 + 4);
      v14 = v13;
      v15 = *a2++;
      v12 = v12 + (v14 * v15);
      v16 = *a3++;
      v11 = v11 + (v14 * v16);
      --v8;
    }

    while (v8);
  }

  else
  {
    bmSoftmax(v20, v20[0].f32, 0, a5);
    v12 = 0.0;
    v11 = 0.0;
  }

  v17 = (atan2f(v12, v11) / 3.1416) * 180.0;
  v18 = -0.5;
  if (v17 > 0.0)
  {
    v18 = 0.5;
  }

  return (v17 + v18);
}

double acDetRectNull@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void acDetRectIntersect(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  *a3 = bmMaximum(*a1, *a2);
  a3[1] = bmMaximum(a1[1], a2[1]);
  a3[2] = bmMinimum(a1[2], a2[2]);
  a3[3] = bmMinimum(a1[3], a2[3]);
  a3[6] = bmMaximum(a1[6], a2[6]);
}

void acDetRectOverlap(float *a1, float *a2)
{
  bmMaximum(0.0, a1[2] - *a1);
  bmMaximum(0.0, a1[3] - a1[1]);
  bmMaximum(0.0, a2[2] - *a2);
  bmMaximum(0.0, a2[3] - a2[1]);
  v4 = bmMaximum(*a1, *a2);
  v5 = bmMaximum(a1[1], a2[1]);
  v6 = bmMinimum(a1[2], a2[2]);
  v7 = bmMinimum(a1[3], a2[3]);
  bmMaximum(a1[6], a2[6]);
  bmMaximum(0.0, v6 - v4);
  bmMaximum(0.0, v7 - v5);
}

void acDetRectOverlapSmallbox(float *a1, float *a2)
{
  v4 = bmMaximum(0.0, a1[2] - *a1);
  v5 = v4 * bmMaximum(0.0, a1[3] - a1[1]);
  v6 = bmMaximum(0.0, a2[2] - *a2);
  v7 = v6 * bmMaximum(0.0, a2[3] - a2[1]);
  v8 = bmMaximum(*a1, *a2);
  v9 = bmMaximum(a1[1], a2[1]);
  v10 = bmMinimum(a1[2], a2[2]);
  v11 = bmMinimum(a1[3], a2[3]);
  bmMaximum(a1[6], a2[6]);
  bmMaximum(0.0, v10 - v8);
  bmMaximum(0.0, v11 - v9);
  bmMinimum(v5, v7);
}

uint64_t acDetRectFilterByScore(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = 0;
  if (a2)
  {
    v4 = (a1 + 16);
    v5 = a2;
    do
    {
      if (*(v4 + 2) > *(a3 + 4 * *v4))
      {
        v6 = a1 + 36 * v3;
        v3 = (v3 + 1);
        v7 = *(v4 - 1);
        v8 = *v4;
        *(v6 + 32) = v4[4];
        *v6 = v7;
        *(v6 + 16) = v8;
      }

      v4 += 9;
      --v5;
    }

    while (v5);
  }

  return v3;
}

unint64_t acDetRectSmallRectSuppression(uint64_t a1, unsigned int a2, float a3, float a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = 0;
  v8 = (a1 + 36);
  v9 = 1;
  v10 = a2;
  do
  {
    v11 = v7 + 1;
    v12 = (v7 + 1);
    if (v7 + 1 < v10)
    {
      v13 = a1 + 36 * v7;
      v14 = v8;
      v15 = v9;
      do
      {
        if (*(v13 + 24) < *(v14 + 6))
        {
          acDetRectSmallRectSuppression();
        }

        if (*(v13 + 16) != *(v14 + 4) || ((v16 = bmMaximum(*v13, *v14), v17 = bmMaximum(*(v13 + 4), *(v14 + 1)), v18 = bmMinimum(*(v13 + 8), *(v14 + 2)), v19 = bmMinimum(*(v13 + 12), *(v14 + 3)), bmMaximum(*(v13 + 24), *(v14 + 6)), v20 = bmMaximum(0.0, v18 - v16), v21 = v20 * bmMaximum(0.0, v19 - v17), v22 = bmMaximum(0.0, *(v14 + 2) - *v14), v23 = v22 * bmMaximum(0.0, *(v14 + 3) - *(v14 + 1)), v24 = bmMaximum(0.0, *(v13 + 8) - *v13), v25 = (v24 * bmMaximum(0.0, *(v13 + 12) - *(v13 + 4))) * a4, (v21 / v23) > a3) ? (v26 = v23 > v25) : (v26 = 1), v26))
        {
          if (v15 < v12)
          {
            acDetRectSmallRectSuppression();
          }

          v27 = a1 + 36 * v12++;
          v28 = *v14;
          v29 = v14[1];
          *(v27 + 32) = *(v14 + 8);
          *v27 = v28;
          *(v27 + 16) = v29;
        }

        ++v15;
        v14 = (v14 + 36);
      }

      while (v10 != v15);
    }

    ++v9;
    v8 = (v8 + 36);
    v7 = v11;
    v10 = v12;
  }

  while (v11 < v12);
  return v12;
}

unint64_t acDetRectLowMergeCountSuppression(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (!a2)
  {
    return 0;
  }

  v8 = 0;
  v9 = a1 + 60;
  v10 = 1;
  v11 = a2;
  do
  {
    v13 = a1 + 36 * v8++;
    if (*(v13 + 20) <= a4)
    {
      v12 = v11;
    }

    else
    {
      v12 = v8;
      if (v8 < v11)
      {
        v14 = v9;
        v15 = v10;
        do
        {
          if (*(v13 + 16) != *(v14 - 8))
          {
            goto LABEL_19;
          }

          v16 = bmMaximum(0.0, *(v13 + 8) - *v13);
          v17 = v16 * bmMaximum(0.0, *(v13 + 12) - *(v13 + 4));
          v18 = bmMaximum(0.0, *(v14 - 16) - *(v14 - 24));
          v19 = v18 * bmMaximum(0.0, *(v14 - 12) - *(v14 - 20));
          v20 = bmMaximum(*v13, *(v14 - 24));
          v21 = bmMaximum(*(v13 + 4), *(v14 - 20));
          v22 = bmMinimum(*(v13 + 8), *(v14 - 16));
          v23 = bmMinimum(*(v13 + 12), *(v14 - 12));
          bmMaximum(*(v13 + 24), *v14);
          v24 = bmMaximum(0.0, v22 - v20);
          v25 = v24 * bmMaximum(0.0, v23 - v21);
          v26 = (v17 + v19) - v25;
          v27 = v25 / v26;
          if (v26 < 0.00000011921)
          {
            v27 = 0.0;
          }

          v28 = *(v13 + 20);
          v29 = *(v14 - 4);
          v30 = v27 > a5 && v28 >= v29;
          if (!v30 || v28 - v29 <= a3)
          {
LABEL_19:
            if (v15 < v12)
            {
              acDetRectLowMergeCountSuppression();
            }

            v32 = a1 + 36 * v12++;
            v33 = *(v14 - 24);
            v34 = *(v14 - 8);
            *(v32 + 32) = *(v14 + 8);
            *v32 = v33;
            *(v32 + 16) = v34;
          }

          ++v15;
          v14 += 36;
        }

        while (v11 != v15);
      }
    }

    ++v10;
    v9 += 36;
    v11 = v12;
  }

  while (v8 < v12);
  return v12;
}

unint64_t acDetRectWeightedMerge(uint64_t a1, unsigned int a2, float a3, float a4)
{
  if (!a1)
  {
    acDetRectWeightedMerge();
  }

  v4 = a2;
  if (!a2)
  {
    return 0;
  }

  v6 = 0;
  v7 = (a1 + 36);
  v8 = 1;
  do
  {
    v10 = v6 + 1;
    v11 = (a1 + 36 * v6);
    v12 = v11[3].f32[0];
    v13 = v11->f32[1];
    v51 = v12 * v11->f32[0];
    v52 = v12 * v13;
    v59 = bmMaximum(0.0, v11[1].f32[1] - v13);
    v14.i32[0] = bmMaximum(0.0, v11[1].f32[0] - v11->f32[0]);
    v15 = v11[3].f32[0];
    v49 = v59 * v15;
    v50 = v15;
    v48 = v14.f32[0] * v15;
    v16 = v10;
    v46 = v10;
    if (v10 >= v4)
    {
      v9 = 1;
    }

    else
    {
      v56 = (v11->f32[1] + v11[1].f32[1]) * 0.5;
      v57 = (v11->f32[0] + v11[1].f32[0]) * 0.5;
      v55 = fminf(v14.f32[0], v59);
      v14.f32[1] = v59;
      v47 = v14;
      v9 = 1;
      v17 = v7;
      v18 = v8;
      do
      {
        while (1)
        {
          v60 = bmMaximum(0.0, *(v17 + 3) - *(v17 + 1));
          v58 = bmMaximum(0.0, *(v17 + 2) - *v17);
          v25 = (*v17 + *(v17 + 2)) * 0.5;
          v26 = (*(v17 + 1) + *(v17 + 3)) * 0.5;
          v27 = bmMaximum(0.0, v11[1].f32[0] - v11->f32[0]);
          v28 = v27 * bmMaximum(0.0, v11[1].f32[1] - v11->f32[1]);
          v29 = bmMaximum(0.0, *(v17 + 2) - *v17);
          v30 = v29 * bmMaximum(0.0, *(v17 + 3) - *(v17 + 1));
          v31 = bmMaximum(v11->f32[0], *v17);
          v32 = bmMaximum(v11->f32[1], *(v17 + 1));
          v33 = bmMinimum(v11[1].f32[0], *(v17 + 2));
          v34 = bmMinimum(v11[1].f32[1], *(v17 + 3));
          bmMaximum(v11[3].f32[0], *(v17 + 6));
          v35 = bmMaximum(0.0, v33 - v31);
          v36 = v35 * bmMaximum(0.0, v34 - v32);
          v37 = (v28 + v30) - v36;
          v38 = v36 / v37;
          if (v37 < 0.00000011921)
          {
            v38 = 0.0;
          }

          v39 = ((sqrtf(((v56 - v26) * (v56 - v26)) + ((v57 - v25) * (v57 - v25))) * a4) / v55) + (1.0 - sqrtf(v38));
          if (v39 >= a3)
          {
            break;
          }

          _D0 = *v17;
          v41 = vmvn_s8(vcge_f32(vmaxnm_f32(vsub_f32(vminnm_f32(v17[1], v11[1]), vmaxnm_f32(*v17, *v11)), 0), vmul_n_f32(v47, 1.0 - v39)));
          if ((v41.i32[0] | v41.i32[1]))
          {
            break;
          }

          _S1 = *(v17 + 6);
          __asm { FMLA            S2, S1, V0.S[1] }

          v51 = v51 + (_S1 * *&_D0);
          v52 = _S2;
          v48 = v48 + (_S1 * v58);
          v49 = v49 + (_S1 * v60);
          v50 = v50 + _S1;
          ++v9;
          ++v18;
          v17 = (v17 + 36);
          if (v4 == v18)
          {
            goto LABEL_5;
          }
        }

        if (v18 < v16)
        {
          acDetRectWeightedMerge();
        }

        v42 = a1 + 36 * v16++;
        v43 = *v17;
        v44 = *(v17 + 1);
        *(v42 + 32) = *(v17 + 8);
        *v42 = v43;
        *(v42 + 16) = v44;
        ++v18;
        v17 = (v17 + 36);
      }

      while (v4 != v18);
    }

LABEL_5:
    v11->f32[0] = v51 / v50;
    v11->f32[1] = v52 / v50;
    ++v8;
    v11[1].f32[0] = (v48 / v50) + (v51 / v50);
    v11[1].f32[1] = (v49 / v50) + (v52 / v50);
    v11[2].i32[1] = v9;
    v7 = (v7 + 36);
    v6 = v46;
    v4 = v16;
  }

  while (v46 < v16);
  return v16;
}

int32x2_t acDetRectFromFace@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = vadd_f32(v2, *(a1 + 16));
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = *(a1 + 4);
  if (v4 >= 7)
  {
    acDetRectFromFace();
  }

  *(a2 + 16) = v4 + 1;
  *(a2 + 24) = *(a1 + 24) / 1000.0;
  result = vrev64_s32(vcvt_f32_s32(*(a1 + 28)));
  *(a2 + 28) = result;
  return result;
}

char *TtTrkRpnNode::TtTrkRpnNode(char *a1, void *a2)
{
  v4 = a1 + 536;
  bzero(a1, 0x218uLL);
  *a2 = 0x721CC00000001;
  *v4 = 0u;
  return a1;
}

{
  v4 = a1 + 536;
  bzero(a1, 0x218uLL);
  *a2 = 0x721CC00000001;
  *v4 = 0u;
  return a1;
}

void TtTrkRpnNode::~TtTrkRpnNode(TtTrkRpnNode *this)
{
  TtTrkRpnNode::releaseBuffers(this);
}

{
  TtTrkRpnNode::releaseBuffers(this);
}

uint64_t TtTrkRpnNode::releaseBuffers(TtTrkRpnNode *this)
{
  v2 = *(this + 55);
  if (v2)
  {
    MEMORY[0x24C253360](v2, 0x1000C80451B5BE8);
  }

  v3 = *(this + 56);
  if (v3)
  {
    MEMORY[0x24C253360](v3, 0x1000C80451B5BE8);
  }

  v4 = *(this + 57);
  if (v4)
  {
    MEMORY[0x24C253360](v4, 0x1000C8052888210);
  }

  v5 = *(this + 58);
  if (v5)
  {
    MEMORY[0x24C253360](v5, 0x1000C8052888210);
  }

  v6 = *(this + 59);
  if (v6)
  {
    MEMORY[0x24C253360](v6, 0x1000C8052888210);
  }

  v7 = *(this + 60);
  if (v7)
  {
    MEMORY[0x24C253360](v7, 0x1000C8052888210);
  }

  v8 = *(this + 67);
  if (v8)
  {
    MEMORY[0x24C253360](v8, 0x1000C8052888210);
  }

  result = *(this + 68);
  if (result)
  {

    JUMPOUT(0x24C253360);
  }

  return result;
}

uint64_t TtTrkRpnNode::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*a3 != 1)
  {
    return 4294967289;
  }

  if ((*(a3 + 4) - 467393) <= 0xB && ((1 << (*(a3 + 4) + 63)) & 0xB01) != 0)
  {
    v6 = TtTrkRpnNode::releaseBuffers(a1);
    *(a1 + 20) = 0x800000013;
    *(a1 + 28) = 0x4100000000000001;
    *(a1 + 52) = 5;
    *(a1 + 56) = xmmword_24BC6C040;
    *(a1 + 132) = xmmword_24BC6C050;
    *(a1 + 260) = 0x1400000013;
    *(a1 + 268) = 10;
    *(a1 + 148) = xmmword_24BC6C060;
    *(a1 + 164) = xmmword_24BC6C070;
    *(a1 + 336) = 6;
    *(a1 + 244) = xmmword_24BC6C080;
    *(a1 + 72) = xmmword_24BC6C090;
    *(a1 + 116) = xmmword_24BC6C0A0;
    *(a1 + 88) = xmmword_24BC6C0B0;
    *(a1 + 104) = 0x3E4CCCCD3BB60B61;
    *(a1 + 112) = 1069547520;
    v7 = ft::UserDefaults::Get(v6);
    v8 = *(v7 + 1);
    if (v8 > 3)
    {
      if (v8 != 4)
      {
        if (v8 == 5)
        {
          *(a1 + 92) = 0x3F4CCCCD3F0F5C29;
          *(a1 + 100) = 1058642330;
        }

LABEL_18:
        OsLog = ft::GetOsLog(v7);
        if (os_log_type_enabled(OsLog, OS_LOG_TYPE_INFO))
        {
          v12 = *(a1 + 92);
          v13 = 134217984;
          v14 = v12;
          _os_log_impl(&dword_24BC30000, OsLog, OS_LOG_TYPE_INFO, "RPN score cutoff set to %0.4f", &v13, 0xCu);
        }

        *(a3 + 4) = 467393;
        *(a3 + 1856) = 0;
        *(a3 + 1820) = 1065353216;
        *(a3 + 1836) = 0u;
        *(a3 + 1861) = 0;
        *(a3 + 1852) = 0;
        *(a3 + 1572) = 0u;
        *(a3 + 1588) = 0u;
        *(a3 + 1604) = 0u;
        *(a3 + 1620) = 0u;
        *(a3 + 1636) = 0u;
        *(a3 + 1652) = 0u;
        *(a3 + 1668) = 0u;
        *(a3 + 1684) = 0u;
        *(a3 + 1700) = 0u;
        *(a3 + 1716) = 0u;
        *(a3 + 1732) = 0u;
        *(a3 + 1748) = 0u;
        *(a3 + 1764) = 0u;
        *(a3 + 1780) = 0u;
        *(a3 + 1796) = 0u;
        *(a1 + 436) = *(a1 + 20) * *(a1 + 20) * *(a1 + 28) * *(a1 + 52);
        operator new[]();
      }

      v9 = 1056964608;
    }

    else if (v8 == 1)
    {
      v9 = 1050924810;
    }

    else
    {
      if (v8 != 2)
      {
        goto LABEL_18;
      }

      v9 = 1053609165;
    }

    *(a1 + 92) = v9;
    goto LABEL_18;
  }

  return 4294967292;
}

double TtTrkRpnNode::killTrackedObject(uint64_t a1, uint64_t a2)
{
  *(a2 + 1856) = 0;
  *(a2 + 1820) = 1065353216;
  result = 0.0;
  *(a2 + 1836) = 0u;
  *(a2 + 1861) = 0;
  *(a2 + 1852) = 0;
  *(a2 + 1572) = 0u;
  *(a2 + 1588) = 0u;
  *(a2 + 1604) = 0u;
  *(a2 + 1620) = 0u;
  *(a2 + 1636) = 0u;
  *(a2 + 1652) = 0u;
  *(a2 + 1668) = 0u;
  *(a2 + 1684) = 0u;
  *(a2 + 1700) = 0u;
  *(a2 + 1716) = 0u;
  *(a2 + 1732) = 0u;
  *(a2 + 1748) = 0u;
  *(a2 + 1764) = 0u;
  *(a2 + 1780) = 0u;
  *(a2 + 1796) = 0u;
  return result;
}

uint64_t TtTrkRpnNode::PopulateAnchorBoxes(uint64_t this)
{
  v2 = *(this + 52);
  if (!v2)
  {
    return this;
  }

  v3 = *(this + 20);
  v4 = *(this + 28);
  if (!v4 || v3 == 0)
  {
    return this;
  }

  v6 = *(this + 24);
  v7 = v3 >> 1;
  v8 = (v6 * v6);
  v9 = this + 56;
  v10 = this + 32;
  v11 = *(this + 440);
  if (v3 >= 8)
  {
    v36 = 0;
    v37 = 0;
    v38 = vdupq_n_s32(v7);
    v39 = vdupq_n_s32(v6);
    this = v3 & 0xFFFFFFF8;
    v40.i64[0] = 0x400000004;
    v40.i64[1] = 0x400000004;
    v41.i64[0] = 0x800000008;
    v41.i64[1] = 0x800000008;
    while (1)
    {
      v42 = 0;
      v43 = *(v9 + 4 * v36);
      v44.f32[0] = v8 / v43;
      v44.f32[1] = v43 * v8;
      v45 = vcvt_f32_s32(vcvt_s32_f32(vsqrt_f32(v44)));
      do
      {
        v46 = 0;
        v47 = vcvt_f32_s32(vcvt_s32_f32(vmul_n_f32(v45, *(v10 + 4 * v42))));
        v48 = vdupq_lane_s32(v47, 1);
        v49 = vdupq_lane_s32(v47, 0);
        do
        {
          *v1.i32 = ((v46 - v7) * v6);
          if (v37 > -v3)
          {
            v50 = 0;
            v51 = v37;
LABEL_31:
            v59 = v3 - v50;
            v60 = v6 * (v50 - v7);
            v37 = v51;
            do
            {
              v61 = v11 + 16 * v37;
              *v61 = v60;
              *(v61 + 4) = v1.i32[0];
              *(v61 + 8) = v47;
              ++v37;
              v60 += v6;
              --v59;
            }

            while (v59);
            goto LABEL_25;
          }

          v51 = v37 + this;
          v52 = vdupq_lane_s32(v1, 0);
          v53 = v3 & 0xFFFFFFF8;
          v54 = xmmword_24BC6C0C0;
          do
          {
            v55 = vsubq_s32(v54, v38);
            v56 = vcvtq_f32_s32(vmulq_s32(v55, v39));
            v62.val[0] = vcvtq_f32_s32(vmulq_s32(vaddq_s32(v55, v40), v39));
            v62.val[1] = v52;
            v62.val[2] = v49;
            v62.val[3] = v48;
            v57 = (v11 + 16 * v37);
            v58 = (v11 + 16 * (v37 + 4));
            vst4q_f32(v57, *(&v49 - 2));
            vst4q_f32(v58, v62);
            v54 = vaddq_s32(v54, v41);
            v37 += 8;
            v53 -= 8;
          }

          while (v53);
          v50 = v3 & 0xFFFFFFF8;
          v37 = v51;
          if (v3 != this)
          {
            goto LABEL_31;
          }

LABEL_25:
          ++v46;
        }

        while (v46 != v3);
        ++v42;
      }

      while (v42 != v4);
      if (++v36 == v2)
      {
        return this;
      }
    }
  }

  v12 = 0;
  v13 = 0;
  v14 = (v6 - v7 * v6);
  v15 = ((2 - v7) * v6);
  v16 = ((3 - v7) * v6);
  v17 = ((4 - v7) * v6);
  v18 = ((5 - v7) * v6);
  v19 = ((6 - v7) * v6);
  v20 = -(v7 * v6);
  do
  {
    this = 0;
    v21 = *(v9 + 4 * v12);
    v22.f32[0] = v8 / v21;
    v22.f32[1] = v21 * v8;
    v23 = vcvt_f32_s32(vcvt_s32_f32(vsqrt_f32(v22)));
    do
    {
      v24 = vcvt_f32_s32(vcvt_s32_f32(vmul_n_f32(v23, *(v10 + 4 * this))));
      v25 = v20;
      v26 = v3;
      do
      {
        v27 = v13;
        v28 = v25;
        v29 = (v11 + 16 * v13);
        v29->f32[0] = v20;
        v29->f32[1] = v25;
        v29[1] = v24;
        v13 = v27 + 1;
        if (v3 != 1)
        {
          v30 = (v11 + 16 * v13);
          v30->f32[0] = v14;
          v30->f32[1] = v28;
          v30[1] = v24;
          v13 = v27 + 2;
          if (v3 != 2)
          {
            v31 = (v11 + 16 * v13);
            v31->f32[0] = v15;
            v31->f32[1] = v28;
            v31[1] = v24;
            v13 = v27 + 3;
            if (v3 != 3)
            {
              v32 = (v11 + 16 * v13);
              v32->f32[0] = v16;
              v32->f32[1] = v28;
              v32[1] = v24;
              v13 = v27 + 4;
              if (v3 != 4)
              {
                v33 = (v11 + 16 * v13);
                v33->f32[0] = v17;
                v33->f32[1] = v28;
                v33[1] = v24;
                v13 = v27 + 5;
                if (v3 != 5)
                {
                  v34 = (v11 + 16 * v13);
                  v34->f32[0] = v18;
                  v34->f32[1] = v28;
                  v34[1] = v24;
                  v13 = v27 + 6;
                  if (v3 != 6)
                  {
                    v35 = (v11 + 16 * v13);
                    v35->f32[0] = v19;
                    v35->f32[1] = v28;
                    v35[1] = v24;
                    v13 = v27 + 7;
                  }
                }
              }
            }
          }
        }

        v25 += v6;
        --v26;
      }

      while (v26);
      ++this;
    }

    while (this != v4);
    ++v12;
  }

  while (v12 != v2);
  return this;
}

uint64_t TtTrkRpnNode::restart(uint64_t a1, uint64_t a2)
{
  if (*a2 != 1)
  {
    return 4294967289;
  }

  v2 = *(a2 + 4);
  if (v2 != 467402 && v2 != 467393)
  {
    return 4294967289;
  }

  result = 0;
  *(a2 + 1820) = 1065353216;
  *(a2 + 1836) = 0u;
  *(a2 + 1861) = 0;
  *(a2 + 1856) = 0;
  *(a2 + 1852) = 0;
  *(a2 + 1572) = 0u;
  *(a2 + 1588) = 0u;
  *(a2 + 1604) = 0u;
  *(a2 + 1620) = 0u;
  *(a2 + 1636) = 0u;
  *(a2 + 1652) = 0u;
  *(a2 + 1668) = 0u;
  *(a2 + 1684) = 0u;
  *(a2 + 1700) = 0u;
  *(a2 + 1716) = 0u;
  *(a2 + 1732) = 0u;
  *(a2 + 1748) = 0u;
  *(a2 + 1764) = 0u;
  *(a2 + 1780) = 0u;
  *(a2 + 1796) = 0u;
  return result;
}

uint64_t TtTrkRpnNode::exemplarPreProcess(uint64_t a1, uint64_t a2, __int128 *a3, int *a4, uint64_t a5, uint64_t a6)
{
  std::chrono::steady_clock::now();
  if (*a5 != 1 || *(a5 + 4) != 467393)
  {
    return 4294967289;
  }

  v11 = *a4;
  if (*a4)
  {
    v12 = *a3;
    *(a5 + 24) = a3[1];
    *(a5 + 8) = v12;
    v13 = a3[2];
    v14 = a3[3];
    v15 = a3[4];
    *(a5 + 88) = *(a3 + 10);
    *(a5 + 72) = v15;
    *(a5 + 56) = v14;
    *(a5 + 40) = v13;
    LOBYTE(v11) = 1;
    *(a6 + 81) = 1;
    *&v15 = *(a5 + 24);
    v16 = vaddv_f32(*&v15);
    *&v13 = roundf(sqrtf((*&v15 + (*(a1 + 88) * v16)) * (*(&v15 + 1) + (*(a1 + 88) * v16))));
    *(a5 + 96) = vmla_n_f32(vmla_f32(*(a5 + 16), 0x3F0000003F000000, *&v15), 0xBF000000BF000000, *&v13);
    *(a5 + 104) = v13;
    *(a5 + 108) = v13;
  }

  result = 0;
  *(a5 + 1856) = v11;
  *(a5 + 4) = 467402;
  return result;
}

uint64_t TtTrkRpnNode::instancePreProcess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x2_t *a5, uint64_t a6)
{
  std::chrono::steady_clock::now();
  if (a5->i32[0] != 1 || a5->i32[1] != 467393)
  {
    return 4294967289;
  }

  v9 = a5[232].i8[0];
  if (v9)
  {
    v9 = 1;
    *(a6 + 80) = 1;
    v10 = *(a1 + 144);
    v11 = a5[3];
    v12 = vaddv_f32(v11);
    v13 = a5[227].f32[1] * sqrtf((v11.f32[0] + (*(a1 + 88) * v12)) * (v11.f32[1] + (*(a1 + 88) * v12)));
    v14 = v10 / v13;
    v15 = v13 + ((vcvts_n_f32_u32(*(a1 + 132) - v10, 1uLL) / v14) * 2.0);
    a5[14] = vmla_n_f32(vmla_f32(a5[2], 0x3F0000003F000000, v11), 0xBF000000BF000000, v15);
    a5[15].f32[0] = v15;
    a5[15].f32[1] = v15;
    a5[228].f32[0] = v14;
    a5[3] = vmul_n_f32(v11, v14);
  }

  result = 0;
  a5[232].i8[1] = v9;
  a5->i32[1] = 467401;
  return result;
}

uint64_t TtTrkRpnNode::exemplarPostProcess(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, _DWORD *a5)
{
  std::chrono::steady_clock::now();
  if (*a5 != 1 || a5[1] != 467402)
  {
    return 4294967289;
  }

  if (a3 > 2)
  {
    return 4294967292;
  }

  result = 0;
  a5[1] = 467393;
  return result;
}

uint64_t TtTrkRpnNode::instancePostProcess(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  std::chrono::steady_clock::now();
  if (*a5 != 1 || *(a5 + 4) != 467401)
  {
    return 4294967289;
  }

  if (a3 != 2)
  {
    return 4294967292;
  }

  if (*(a5 + 1857))
  {
    v14 = *(a2 + 20);
    if ((v14 - 8) <= 0xFFFFFFFD || (v14 != 7 ? (v16 = (a2 + 8), v17 = (a2 + 12), v18 = (a2 + 16), v15 = a2) : (v15 = (a1 + 488), bmBufferDequantizeHalf(a2, (a1 + 488)), v16 = (a1 + 496), v17 = (a1 + 500), v18 = (a1 + 504)), v20 = *(a2 + 44), (v20 - 8) < 0xFFFFFFFE))
    {
      TtTrkRpnNode::instancePostProcess();
    }

    v21 = *v15;
    v22 = *v16;
    v23 = *v17;
    v24 = (a2 + 24);
    v185 = *v18;
    if (v20 == 7)
    {
      bmBufferDequantizeHalf(v24, (a1 + 512));
      v25 = (a1 + 520);
      v26 = (a1 + 524);
      v27 = (a1 + 528);
      v24 = (a1 + 512);
    }

    else
    {
      v25 = (a2 + 32);
      v26 = (a2 + 36);
      v27 = (a2 + 40);
    }

    v28 = *v27;
    v29 = *v26;
    v184 = *v25;
    v179 = *v24;
    v30 = *(a1 + 436);
    v187 = a4;
    if (v30)
    {
      v31 = *(a1 + 20);
      if (v31 <= 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = v31;
      }

      v188 = v32;
      if (!v23)
      {
LABEL_83:
        AcAttrNode::postProcess();
      }

      v33 = 0;
      v34 = *(a1 + 52) * v31 * *(a1 + 28);
      v170 = v32 - 1;
      v35 = 16 * (v32 - 1);
      v168 = v32 & 0xFFFFFFFC;
      v169 = v21 + 4 * v32;
      v167 = v168;
      do
      {
        v36 = v34 + v33 / v31;
        v37 = v34 + v36;
        v38 = v34 + v34 + v36;
        if (v22 <= v33 / v31 || v22 <= v36 || v22 <= v37 || v22 <= v38)
        {
          goto LABEL_83;
        }

        v174 = v30;
        v175 = v29;
        v180 = a7;
        v42 = v185 * (v33 / v31);
        v43 = (v21 + v42);
        v44 = v185 * v36;
        v45 = (v21 + v44);
        v46 = v185 * v37;
        v47 = (v21 + v46);
        v48 = v185 * v38;
        v49 = (v21 + v48);
        v50 = *(a1 + 440);
        v51 = *(a1 + 448);
        v205 = v50;
        v182 = a6;
        v177 = v21;
        v178 = a1;
        v176 = v22;
        v172 = v34;
        v173 = v31;
        v186 = v33;
        v171 = v35;
        v52 = 0;
        if (v31 <= 0xB || (!__CFADD__(v33, v170) ? (v69 = 0) : (v69 = 1), (v70 = 16 * v33, v71 = v51 + v70, v51 + v70 + v35 < (v51 + v70)) || v71 + 4 + v35 < v71 + 4 || v71 + 12 + v35 < v71 + 12 || v71 + 8 + v35 < v71 + 8 || (v69 & 1) != 0 || ((v52 = 0, v72 = 16 * (v188 + v33), v73 = v51 + v72, v74 = v169 + v46, v75 = v169 + v44, v76 = v169 + v42, v77 = v50 + v72, v47 < v73) ? (v78 = v71 >= v74) : (v78 = 1), v78 ? (v79 = 0) : (v79 = 1), v45 < v73 ? (v80 = v71 >= v75) : (v80 = 1), v80 ? (v81 = 0) : (v81 = 1), v43 < v73 ? (v82 = v71 >= v76) : (v82 = 1), v82 ? (v83 = 0) : (v83 = 1), (v78 = v71 >= v77, v84 = v169 + v48, !v78) ? (v85 = v50 + v70 >= v73) : (v85 = 1), v85 ? (v86 = 0) : (v86 = 1), v71 < v84 ? (v87 = v49 >= v73) : (v87 = 1), !v87 || (v79 & 1) != 0 || (v81 & 1) != 0 || (v83 & 1) != 0 || (v86 & 1) != 0)))
        {
          v53 = v43;
          v54 = v45;
          v55 = v47;
          v56 = v49;
        }

        else
        {
          v166 = v28;
          v88 = 0;
          v89 = v168;
          v53 = &v43[v167];
          v54 = &v45[v167];
          v55 = &v47[v167];
          v56 = &v49[v167];
          v90 = v33;
          v189 = v49;
          v190 = v45;
          v191 = v47;
          v192 = v51;
          do
          {
            v91 = 16 * v90;
            v92 = (v50 + v91);
            v215 = vld4q_f32(v92);
            v200 = vmlaq_f32(v215.val[0], v215.val[2], *&v43[v88]);
            v201 = vmlaq_f32(v215.val[1], v215.val[3], *&v45[v88]);
            v202 = v215.val[2];
            v204 = v215.val[3];
            v198 = *&v47[v88];
            v93 = v43;
            v193 = expf(COERCE_FLOAT(HIDWORD(*&v47[v88])));
            v94.f32[0] = expf(*&v198);
            v94.f32[1] = v193;
            v194 = v94;
            v95 = expf(*(&v198 + 2));
            v96 = v194;
            v96.f32[2] = v95;
            v195 = v96;
            v97 = expf(*(&v198 + 3));
            v98 = v195;
            v98.f32[3] = v97;
            v203 = vmulq_f32(v98, v202);
            v199 = *&v189[v88];
            v195.i32[0] = expf(COERCE_FLOAT(HIDWORD(*&v189[v88])));
            v99.f32[0] = expf(*&v199);
            v99.i32[1] = v195.i32[0];
            v196 = v99;
            v100 = expf(*(&v199 + 2));
            v101 = v196;
            v101.f32[2] = v100;
            v197 = v101;
            v102 = expf(*(&v199 + 3));
            v43 = v93;
            v45 = v190;
            v47 = v191;
            v51 = v192;
            v50 = v205;
            v103 = v197;
            v103.f32[3] = v102;
            v214.val[0] = v200;
            v214.val[1] = v201;
            v214.val[2] = v203;
            v214.val[3] = vmulq_f32(v103, v204);
            v104 = (v192 + v91);
            vst4q_f32(v104, v214);
            v88 += 4;
            v90 += 4;
            v89 -= 4;
          }

          while (v89);
          v52 = v168;
          v28 = v166;
          if (v168 == v188)
          {
            goto LABEL_36;
          }
        }

        v57 = v186 + v52;
        v58 = v188 - v52;
        do
        {
          v59 = *v53++;
          v60 = 16 * v57;
          v61 = *(v50 + v60 + 8);
          v62 = *(v50 + v60 + 12);
          v63 = *(v50 + v60 + 4);
          v64 = (v51 + v60);
          *v64 = *(v50 + v60) + (v59 * v61);
          v65 = *v54++;
          v64[1] = v63 + (v65 * v62);
          v66 = *v55++;
          v64[2] = expf(v66) * v61;
          v67 = *v56++;
          v68 = expf(v67);
          v50 = v205;
          v64[3] = v68 * v62;
          ++v57;
          --v58;
        }

        while (v58);
LABEL_36:
        v31 = v173;
        v30 = v174;
        a4 = v187;
        v33 = v186 + v173;
        a7 = v180;
        a6 = v182;
        v21 = v177;
        a1 = v178;
        v29 = v175;
        v22 = v176;
        v34 = v172;
        v35 = v171;
      }

      while (v186 + v173 < v174);
    }

    if (v30)
    {
      if (v29)
      {
        v105 = 0;
        while (1)
        {
          v106 = *(a1 + 20);
          v107 = v105 / v106;
          v108 = v105 / v106 + *(a1 + 52) * v106 * *(a1 + 28);
          if (v184 <= v107 || v184 <= v108)
          {
            break;
          }

          v110 = a7;
          v111 = 0;
          v112 = (v179 + v28 * v107);
          v113 = (v179 + v28 * v108);
          v114 = v105;
          do
          {
            v115 = *v112++;
            v116 = v115;
            v117 = *v113++;
            *(*(a1 + 456) + 4 * v114) = bmSoftmax2(v116, v117);
            ++v111;
            v118 = *(a1 + 20);
            ++v114;
          }

          while (v111 < v118);
          v119 = *(a1 + 436);
          v105 += v118;
          a7 = v110;
          a4 = v187;
          if (v105 >= v119)
          {
            goto LABEL_98;
          }
        }
      }

      AcAttrNode::postProcess();
    }

    v119 = 0;
LABEL_98:
    v120 = *(a1 + 448);
    if (v119)
    {
      v181 = a7;
      v183 = a6;
      v121 = 0;
      v122 = 0;
      v124 = *(a1 + 456);
      v123 = *(a1 + 464);
      v125 = v119;
      v127 = *(a1 + 472);
      v126 = *(a1 + 480);
      v206 = *(a1 + 448);
      v128 = (v120 + 12);
      v129 = -3.4028e38;
      do
      {
        v130 = *(v128 - 1);
        v131 = *(a5 + 24);
        v132 = *(a5 + 28);
        v133 = sqrtf((v130 + ((v130 + *v128) * 0.5)) * (*v128 + ((v130 + *v128) * 0.5))) / sqrtf((v131 + ((v131 + v132) * 0.5)) * (v132 + ((v131 + v132) * 0.5)));
        v134 = expf(-(((fmaxf((v131 / v132) / (v130 / *v128), 1.0 / ((v131 / v132) / (v130 / *v128))) * fmaxf(v133, 1.0 / v133)) + -1.0) * *(a1 + 76)));
        *(v127 + 4 * v121) = v134;
        v135 = *(v124 + 4 * v121) * v134;
        *(v123 + 4 * v121) = v135;
        v136 = (*(a1 + 80) * *(v126 + 4 * v121)) + (v135 * (1.0 - *(a1 + 80)));
        *(v123 + 4 * v121) = v136;
        if (v136 > v129)
        {
          v122 = v121;
          v129 = v136;
        }

        ++v121;
        v128 += 4;
      }

      while (v125 != v121);
      a7 = v181;
      a6 = v183;
      a4 = v187;
      v120 = v206;
    }

    else
    {
      v122 = 0;
      v127 = *(a1 + 472);
      v124 = *(a1 + 456);
    }

    v137 = *(a5 + 1824);
    v138 = *(a5 + 24) / v137;
    v139 = *(a5 + 28) / v137;
    v140 = (v120 + 16 * v122);
    v141 = (*(v127 + 4 * v122) * *(v124 + 4 * v122)) * *(a1 + 84);
    v142 = (*(a5 + 20) + (v139 * 0.5)) + (v140[1] / v137);
    v143 = ((v140[2] / v137) * v141) + (v138 * (1.0 - v141));
    v144 = ((v140[3] / v137) * v141) + (v139 * (1.0 - v141));
    v145 = bmClamp((*(a5 + 16) + (v138 * 0.5)) + (*v140 / v137), 0.0, *a4);
    v146 = bmClamp(v142, 0.0, a4[1]);
    v147 = bmClamp(v143, 10.0, *a4);
    v148 = bmClamp(v144, 10.0, a4[1]);
    *(a5 + 16) = v145 - (v147 * 0.5);
    *(a5 + 20) = v146 - (v148 * 0.5);
    *(a5 + 24) = v147;
    *(a5 + 28) = v148;
    v213 = *(a6 + 8);
    *(a6 + 8) = *(a5 + 16);
    *a7 = 1;
    v149 = *(a1 + 456);
    v150 = *(v149 + 4 * v122);
    *(a6 + 24) = (v150 * 1000.0);
    v151 = *(a1 + 20);
    v210 = (v149 + 4 * v122 / (v151 * v151) * v151 * v151);
    LODWORD(v212) = 4 * v151;
    HIDWORD(v212) = 6;
    LODWORD(v211) = v151;
    HIDWORD(v211) = v151;
    ttTrkScoreNormalize(&v210);
    v209 = 0;
    v208 = 0;
    ttTrkScoreFindMaxScore(&v210, &v209 + 1, &v209, &v208);
    if (!*(a5 + 1861))
    {
      *(a5 + 1861) = 1;
      memcpy((a5 + 128), v210, (v211 * v212));
      v152 = v208;
      *(a5 + 1828) = v209;
      *(a5 + 1832) = v152;
    }

    v207[1] = v211;
    v207[2] = v212;
    v207[0] = a5 + 128;
    v153 = -1.0;
    if (*(a1 + 96) < 1.0 && *(a1 + 100) > 0.0)
    {
      v153 = ttTrkComputeKL(v207, &v210, *(a5 + 1828), *(a5 + 1832), v209, v208);
    }

    if (*(a5 + 1862))
    {
      v154 = v213;
      *(a5 + 16) = v213;
      *(a6 + 8) = v154;
      v155 = *(a5 + 1852);
      if (v155 >= *(a1 + 128))
      {
        *(a5 + 1856) = 0;
        *(a5 + 1820) = 1065353216;
        *(a5 + 1836) = 0u;
        *(a5 + 1861) = 0;
        *(a5 + 1852) = 0;
        *(a5 + 1572) = 0u;
        *(a5 + 1588) = 0u;
        *(a5 + 1604) = 0u;
        *(a5 + 1620) = 0u;
        *(a5 + 1636) = 0u;
        *(a5 + 1652) = 0u;
        *(a5 + 1668) = 0u;
        *(a5 + 1684) = 0u;
        *(a5 + 1700) = 0u;
        *(a5 + 1716) = 0u;
        *(a5 + 1732) = 0u;
        *(a5 + 1748) = 0u;
        *(a5 + 1764) = 0u;
        *(a5 + 1780) = 0u;
        *(a5 + 1796) = 0u;
        *a7 = 0;
        goto LABEL_135;
      }

      v156 = v155 + 1;
      *(a5 + 1852) = v156;
      if (*(a5 + 1812) < v150)
      {
        v157 = *(a5 + 1848) + 1;
      }

      else
      {
        v157 = 0;
      }

      *(a5 + 1848) = v157;
      if (v157 >= *(a1 + 116))
      {
        *(a5 + 1862) = 0;
        *(a5 + 1852) = 0;
        *(a5 + 1820) = 1065353216;
        *(a5 + 1840) = 0;
        *(a5 + 1836) = 0;
        *(a5 + 1572) = 0u;
        *(a5 + 1588) = 0u;
        *(a5 + 1604) = 0u;
        *(a5 + 1620) = 0u;
        *(a5 + 1636) = 0u;
        *(a5 + 1652) = 0u;
        *(a5 + 1668) = 0u;
        *(a5 + 1684) = 0u;
        *(a5 + 1700) = 0u;
        *(a5 + 1716) = 0u;
        *(a5 + 1732) = 0u;
        *(a5 + 1748) = 0u;
        *(a5 + 1764) = 0u;
        *(a5 + 1780) = 0u;
        *(a5 + 1796) = 0u;
      }

      else
      {
        *(a5 + 1820) = (*(a1 + 104) * v156) + 1.0;
      }
    }

    else
    {
      v158 = *(a1 + 96);
      if (*(a1 + 92) > v150)
      {
        v159 = *(a5 + 1840) + 1;
      }

      else
      {
        v159 = 0;
      }

      *(a5 + 1840) = v159;
      if (v158 >= v153 || *(a1 + 100) <= v150)
      {
        v160 = 0;
        *(a5 + 1844) = 0;
      }

      else
      {
        v160 = *(a5 + 1844) + 1;
        *(a5 + 1844) = v160;
      }

      v161 = *(a1 + 120);
      if (v159 >= v161 || v160 >= v161)
      {
        *(a5 + 1862) = 1;
        TtTrkRpnNode::terminate(a1, a5, v153);
      }

      else
      {
        v162 = *(a5 + 1836);
        v163 = a5 + 4 * v162;
        *(v163 + 1572) = v150;
        *(v163 + 1692) = v153;
        if ((v162 + 1) < *(a1 + 124))
        {
          v164 = v162 + 1;
        }

        else
        {
          v164 = 0;
        }

        *(a5 + 1836) = v164;
      }
    }

    if (*(a5 + 1862))
    {
      v165 = 2;
LABEL_136:
      *(a6 + 84) = v165;
      goto LABEL_137;
    }

LABEL_135:
    v165 = 1;
    goto LABEL_136;
  }

LABEL_137:
  result = 0;
  *(a5 + 4) = 467393;
  return result;
}

uint64_t bmBufferDequantizeHalf(uint64_t result, uint64_t *a2)
{
  if (*(result + 20) != 7)
  {
    bmBufferDequantizeHalf();
  }

  if (*(a2 + 5) != 6)
  {
    bmBufferDequantizeHalf();
  }

  v2 = *(result + 8);
  if (v2 != *(a2 + 2))
  {
    bmBufferDequantizeHalf();
  }

  v3 = *(result + 12);
  if (v3 != *(a2 + 3))
  {
    bmBufferDequantizeHalf();
  }

  if (v2 && v3)
  {
    v4 = 0;
    v5 = *(result + 16);
    v6 = *(a2 + 4);
    v7 = *result;
    v8 = *a2;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        while (1)
        {
          while (1)
          {
            v14 = *(v7 + 2 * i);
            result = v14 & 0x80000000;
            v11 = (v14 >> 10) & 0x1F;
            v15 = *(v7 + 2 * i) << 13;
            v12 = v15 & 0x7FE000;
            if (!v11)
            {
              break;
            }

            if (v11 != 31)
            {
              goto LABEL_12;
            }

            v16 = v15 | result | 0x7FC00000;
            LODWORD(result) = result | 0x7F800000;
            if (v12)
            {
              result = v16;
            }

            else
            {
              result = result;
            }

            *(v8 + 4 * i++) = result;
            if (v3 == i)
            {
              goto LABEL_8;
            }
          }

          if (!v12)
          {
            break;
          }

          v10 = __clz(v12);
          v11 = 9 - v10;
          v12 = (v15 << (v10 - 8)) & 0x7FE000;
LABEL_12:
          result = ((v12 | (v11 << 23)) + 939524096) | result;
          *(v8 + 4 * i++) = result;
          if (v3 == i)
          {
            goto LABEL_8;
          }
        }

        if (result)
        {
          v13 = -0.0;
        }

        else
        {
          v13 = 0.0;
        }

        *(v8 + 4 * i) = v13;
      }

LABEL_8:
      v7 += v5;
      v8 += v6;
      ++v4;
    }

    while (v4 != v2);
  }

  return result;
}

BOOL TtTrkRpnNode::checkToReId(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a2 + 1812) < a3)
  {
    v3 = *(a2 + 1848) + 1;
  }

  else
  {
    v3 = 0;
  }

  *(a2 + 1848) = v3;
  return v3 >= *(a1 + 116);
}

double TtTrkRpnNode::reId(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 1840) = 0;
  *(a2 + 1836) = 0;
  *(a2 + 1572) = 0u;
  *(a2 + 1588) = 0u;
  *(a2 + 1604) = 0u;
  *(a2 + 1620) = 0u;
  *(a2 + 1636) = 0u;
  *(a2 + 1652) = 0u;
  *(a2 + 1668) = 0u;
  *(a2 + 1684) = 0u;
  *(a2 + 1700) = 0u;
  *(a2 + 1716) = 0u;
  *(a2 + 1732) = 0u;
  *(a2 + 1748) = 0u;
  *(a2 + 1764) = 0u;
  *(a2 + 1780) = 0u;
  *(a2 + 1796) = 0u;
  return result;
}

BOOL TtTrkRpnNode::checkToTerminate(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v4 = *(a1 + 96);
  if (*(a1 + 92) > a3)
  {
    v5 = *(a2 + 1840) + 1;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 1840) = v5;
  if (v4 >= a4 || *(a1 + 100) <= a3)
  {
    *(a2 + 1844) = 0;
    v10 = *(a1 + 120);
    return v5 >= v10 || v10 == 0;
  }

  else
  {
    v6 = *(a2 + 1844) + 1;
    *(a2 + 1844) = v6;
    v7 = *(a1 + 120);
    return v5 >= v7 || v6 >= v7;
  }
}

float TtTrkRpnNode::terminate(uint64_t a1, uint64_t a2, float result)
{
  *(a2 + 1848) = 0;
  v3 = *(a1 + 124);
  if (v3)
  {
    v4 = 0;
    v5 = (a2 + 1572);
    v6 = 0.0;
    v7 = *(a1 + 124);
    do
    {
      v8 = *v5++;
      v9 = v6 + v8;
      if (v8 > 0.0)
      {
        v6 = v9;
        ++v4;
      }

      --v7;
    }

    while (v7);
    if (v4)
    {
      *(a2 + 1812) = v6 / v4;
    }

    v10 = 0;
    v11 = (a2 + 1692);
    result = 0.0;
    do
    {
      v12 = *v11++;
      v13 = result + v12;
      if (v12 > 0.0)
      {
        result = v13;
        ++v10;
      }

      --v3;
    }

    while (v3);
    if (v10)
    {
      result = result / v10;
      *(a2 + 1816) = result;
    }
  }

  return result;
}

uint64_t TtTrkRpnNode::getParams(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*a2 != 1)
  {
    return 4294967289;
  }

  v3 = a2[1];
  if (v3 != 467402 && v3 != 467393)
  {
    return 4294967289;
  }

  v5 = (*(a1 + 152) * *(a1 + 144) + 63) & 0xFFFFFFC0;
  v6 = (*(a1 + 140) * *(a1 + 132) + 63) & 0xFFFFFFC0;
  *(a3 + 196) = 0u;
  *(a3 + 184) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 152) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  *a3 = 0x100000001;
  v7 = *(a1 + 132);
  *(a3 + 8) = *(a1 + 28);
  *(a3 + 12) = v7;
  v8 = *(a1 + 136);
  *(a3 + 16) = v8;
  v9 = *(a1 + 144);
  *(a3 + 24) = v8 * v6;
  *(a3 + 28) = v9;
  v10 = *(a1 + 148);
  *(a3 + 32) = v10;
  *(a3 + 40) = v10 * v5;
  v11 = *(a1 + 336);
  *(a3 + 44) = *(a1 + 248);
  *(a3 + 52) = *(a1 + 256);
  v12 = *(a1 + 264);
  *(a3 + 60) = v12;
  v13 = *(a1 + 248);
  if (v11 <= 5)
  {
    if ((v11 - 3) >= 3)
    {
      if (v11 >= 2)
      {
        goto LABEL_34;
      }

      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    *(a3 + 68) = v14 * v13 * *(a1 + 256) * v12;
    *(a3 + 48) = *(a1 + 252);
    *(a3 + 56) = *(a1 + 260);
    v16 = *(a1 + 268);
    *(a3 + 64) = v16;
    v17 = *(a1 + 252);
    if ((v11 - 3) >= 3)
    {
      if (v11 < 2)
      {
        v18 = 1;
        goto LABEL_21;
      }

LABEL_34:
      AcAttrNode::getParams();
    }

    goto LABEL_19;
  }

  if (v11 != 6)
  {
    if (v11 != 7)
    {
      goto LABEL_34;
    }

    *(a3 + 68) = 2 * v13 * *(a1 + 256) * v12;
    *(a3 + 48) = *(a1 + 252);
    *(a3 + 56) = *(a1 + 260);
    v16 = *(a1 + 268);
    *(a3 + 64) = v16;
    v17 = *(a1 + 252);
LABEL_19:
    v18 = 2;
    goto LABEL_21;
  }

  *(a3 + 68) = 4 * v13 * *(a1 + 256) * v12;
  *(a3 + 48) = *(a1 + 252);
  *(a3 + 56) = *(a1 + 260);
  v16 = *(a1 + 268);
  *(a3 + 64) = v16;
  v17 = *(a1 + 252);
  v18 = 4;
LABEL_21:
  *(a3 + 72) = v18 * v17 * *(a1 + 260) * v16;
  *(a3 + 76) = v11;
  *(a3 + 80) = *(a1 + 156);
  *(a3 + 88) = *(a1 + 164);
  v19 = *(a1 + 172);
  *(a3 + 96) = v19;
  v20 = *(a1 + 156);
  if (v11 > 5)
  {
    if (v11 == 6)
    {
      *(a3 + 104) = 4 * v20 * *(a1 + 164) * v19;
      *(a3 + 84) = *(a1 + 160);
      *(a3 + 92) = *(a1 + 168);
      v22 = *(a1 + 176);
      *(a3 + 100) = v22;
      v23 = *(a1 + 160);
      v24 = 4;
      goto LABEL_33;
    }

    *(a3 + 104) = 2 * v20 * *(a1 + 164) * v19;
    *(a3 + 84) = *(a1 + 160);
    *(a3 + 92) = *(a1 + 168);
    v22 = *(a1 + 176);
    *(a3 + 100) = v22;
    v23 = *(a1 + 160);
    goto LABEL_31;
  }

  if ((v11 - 3) >= 3)
  {
    if (v11 >= 2)
    {
      goto LABEL_35;
    }

    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  *(a3 + 104) = v21 * v20 * *(a1 + 164) * v19;
  *(a3 + 84) = *(a1 + 160);
  *(a3 + 92) = *(a1 + 168);
  v22 = *(a1 + 176);
  *(a3 + 100) = v22;
  v23 = *(a1 + 160);
  if ((v11 - 3) < 3)
  {
LABEL_31:
    v24 = 2;
    goto LABEL_33;
  }

  if (v11 >= 2)
  {
LABEL_35:
    AcAttrNode::getParams();
  }

  v24 = 1;
LABEL_33:
  v25 = v24 * v23 * *(a1 + 168);
  v26 = *(a1 + 244);
  result = 0;
  *(a3 + 108) = v25 * v22;
  *(a3 + 112) = v26;
  return result;
}

uint64_t TtTrkRpnNode::setUpNetBuffers(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (!*a1)
  {
    return 4294967292;
  }

  v3 = *(a1 + 12);
  if (!v3)
  {
    return 4294967292;
  }

  if (!*(a1 + 24) || *(a1 + 32) == 0)
  {
    return 4294967292;
  }

  if (!*(a1 + 48))
  {
    return 4294967292;
  }

  if (!*(a1 + 56))
  {
    return 4294967292;
  }

  v6 = a2[6];
  if (*(a1 + 8) < v6)
  {
    return 4294967292;
  }

  v7 = a2[10];
  if (*(a1 + 20) < v7)
  {
    return 4294967292;
  }

  *a3 = *a1;
  v8 = a2[4];
  v9 = a2[5] * a2[3];
  *(a3 + 8) = v8;
  *(a3 + 12) = v9;
  v10 = (v9 + 63) & 0xFFFFFFC0;
  *(a3 + 16) = v10;
  *(a3 + 20) = 1;
  if (v10 * v8 != v6)
  {
    TtTrkRpnNode::setUpNetBuffers();
  }

  *(a3 + 24) = v3;
  v11 = a2[8];
  v12 = a2[9] * a2[7];
  *(a3 + 32) = v11;
  *(a3 + 36) = v12;
  v13 = (v12 + 63) & 0xFFFFFFC0;
  *(a3 + 40) = v13;
  *(a3 + 44) = 1;
  if (v13 * v11 != v7)
  {
    TtTrkRpnNode::setUpNetBuffers();
  }

  v14 = a2[28];
  v15 = *(a1 + 24);
  *(a3 + 48) = v15;
  v16 = a2[20];
  *(a3 + 60) = v16;
  v17 = a2[24] * a2[22];
  *(a3 + 56) = v17;
  *(a3 + 68) = v14;
  if (v14 >= 8 || ((0xFBu >> v14) & 1) == 0)
  {
    AcAttrNode::getParams();
  }

  v18 = dword_24BC6C0D0[v14] * v16;
  *(a3 + 64) = v18;
  if (v15 + (v18 * v17) - *(a1 + 24) != a2[26] || (v19 = *(a1 + 32), *(a3 + 72) = v19, v20 = a2[21], *(a3 + 84) = v20, v21 = a2[25] * a2[23], *(a3 + 80) = v21, v22 = dword_24BC6C0D0[v14] * v20, *(a3 + 88) = v22, *(a3 + 92) = v14, v19 + (v22 * v21) - *(a1 + 32) != a2[27]))
  {
    TtTrkRpnNode::setUpNetBuffers();
  }

  v23 = a2[19];
  v24 = *(a1 + 48);
  *(a3 + 96) = v24;
  v25 = a2[11];
  *(a3 + 108) = v25;
  v26 = a2[15] * a2[13];
  *(a3 + 104) = v26;
  *(a3 + 116) = v23;
  if (v23 >= 8 || ((0xFBu >> v23) & 1) == 0)
  {
    AcAttrNode::getParams();
  }

  v27 = dword_24BC6C0D0[v23] * v25;
  *(a3 + 112) = v27;
  if (v24 + (v27 * v26) - *(a1 + 48) != a2[17] || (v28 = *(a1 + 56), *(a3 + 120) = v28, v29 = a2[12], *(a3 + 132) = v29, v30 = a2[16] * a2[14], *(a3 + 128) = v30, v31 = dword_24BC6C0D0[v23] * v29, *(a3 + 136) = v31, *(a3 + 140) = v23, v28 + (v31 * v30) - *(a1 + 56) != a2[18]))
  {
    TtTrkRpnNode::setUpNetBuffers();
  }

  return 0;
}

void sub_24BC3A260(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);

  _Unwind_Resume(a1);
}

void sub_24BC3ADE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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
      std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](v23 - 48);
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

uint64_t std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void ReportException(std::exception *a1)
{
  v2 = ft::GetOsLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    ReportException(a1, v2);
  }
}

{
  v2 = ft::GetOsLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    ReportException(a1, v2);
  }
}

void sub_24BC3B820(_Unwind_Exception *a1)
{
  __cxa_free_exception(v1);
  std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](v2 - 48);
  _Unwind_Resume(a1);
}

void sub_24BC3B9CC(_Unwind_Exception *a1)
{
  std::recursive_mutex::unlock((v2 + 80));

  _Unwind_Resume(a1);
}

void AsEspressoBufferMap(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v29 = v3;
  v30 = a1;
  *(a1 + 32) = 1065353216;
  prime = vcvtps_u32_f32([v3 count] / *(a1 + 32));
  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
  }

  v5 = *(a1 + 8);
  if (prime > *&v5)
  {
    goto LABEL_6;
  }

  if (prime < *&v5)
  {
    v6 = vcvtps_u32_f32(*(v30 + 24) / *(v30 + 32));
    if (*&v5 < 3uLL || (v7 = vcnt_s8(v5), v7.i16[0] = vaddlv_u8(v7), v7.u32[0] > 1uLL))
    {
      v6 = std::__next_prime(v6);
    }

    else
    {
      v8 = 1 << -__clz(v6 - 1);
      if (v6 >= 2)
      {
        v6 = v8;
      }
    }

    if (prime <= v6)
    {
      prime = v6;
    }

    if (prime < *&v5)
    {
LABEL_6:
      std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__do_rehash<true>(v30, prime);
    }
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = v29;
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v10)
  {
    v11 = *v45;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        v14 = [v9 objectForKeyedSubscript:v13];
        v15 = v14;
        if (v14)
        {
          [v14 buffer];
        }

        else
        {
          v43 = 0;
          v41 = 0u;
          v42 = 0u;
          v40 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v33 = 0u;
        }

        v16 = v13;
        v17 = [v13 UTF8String];
        v18 = strlen(v17);
        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v19 = v18;
        if (v18 >= 0x17)
        {
          operator new();
        }

        v32 = v18;
        if (v18)
        {
          memmove(&__dst, v17, v18);
        }

        *(&__dst + v19) = 0;
        p_dst = &__dst;
        v20 = std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v30, &__dst);
        v22 = v38;
        v21 = v39;
        v23 = v37;
        *(v20 + 11) = v36;
        v24 = v43;
        v26 = v41;
        v25 = v42;
        *(v20 + 19) = v40;
        *(v20 + 21) = v26;
        *(v20 + 23) = v25;
        v20[25] = v24;
        *(v20 + 13) = v23;
        *(v20 + 15) = v22;
        *(v20 + 17) = v21;
        v27 = v34;
        v28 = v35;
        *(v20 + 5) = v33;
        *(v20 + 7) = v27;
        *(v20 + 9) = v28;
        if (v32 < 0)
        {
          operator delete(__dst);
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v10);
  }
}

void sub_24BC3BD48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  std::unordered_map<std::string,espresso_buffer_t>::~unordered_map[abi:ne200100](a11);

  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,espresso_buffer_t>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_24BC3BF38(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unordered_map<std::string,espresso_buffer_t>::~unordered_map[abi:ne200100](va);
  if (a2 == 1)
  {
    v7 = __cxa_begin_catch(a1);
    ReportException(v7);
    __cxa_end_catch();
    JUMPOUT(0x24BC3BED4);
  }

  std::recursive_mutex::unlock((v4 + 80));

  _Unwind_Resume(a1);
}

void ft::CinematicTracker::TerminateHighPriorityTrack(ft::CinematicTracker *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    v3 = *(this + 24);
    v4 = *(this + 20);
    v9 = v2;
    v10 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ft::TrackPool::RemoveTrack(v3, &v9);
    v5 = v10;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  v7 = 0;
  v8 = 0;
  ft::CinematicTracker::SetHighPriorityTrack(this, &v7);
  v6 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void sub_24BC3C0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__CFString *FTCinematicHighPriorityTrackerOpDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_27916B3D8[a1];
  }
}

void sub_24BC3C4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](&a11);

  _Unwind_Resume(a1);
}

void sub_24BC3CCA0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](&a28);

  if (a2 == 1)
  {
    v34 = __cxa_begin_catch(a1);
    ReportException(v34);
    __cxa_end_catch();
    JUMPOUT(0x24BC3C9D4);
  }

  std::recursive_mutex::unlock((a14 + 80));
  _Unwind_Resume(a1);
}

void sub_24BC3CE38(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ft::CinematicTracker::TerminateHighlyOverlappingDetectionlessTrack(ft::CinematicTracker *this)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(this + 21);
  if (v1)
  {
    v18 = *(v1 + 40);
    v19 = *(v1 + 24);
    ActiveTracks = ft::TrackPool::GetActiveTracks(*(this + 24));
    v4 = *ActiveTracks;
    v5 = *(ActiveTracks + 1);
    if (*ActiveTracks != v5)
    {
      v6 = vaddq_f64(v19, v18);
      v7 = vmulq_laneq_f64(v18, v18, 1);
      while (1)
      {
        v8 = *v4;
        if (*v4 != *(this + 21))
        {
          v9 = *(v8 + 24);
          v10 = vbslq_s8(vcgtq_f64(v19, v9), v19, v9);
          v11 = *(v8 + 40);
          v12 = vaddq_f64(v9, v11);
          v13 = vbslq_s8(vcgtq_f64(v12, v6), v6, v12);
          v14 = vandq_s8(vsubq_f64(v13, v10), vcgtq_f64(v13, v10));
          *v14.f64 = vmulq_laneq_f64(v14, v14, 1).f64[0];
          *v10.f64 = vaddq_f64(v7, vmulq_laneq_f64(v11, v11, 1)).f64[0] - *v14.f64;
          v15 = *v14.f64 / *v10.f64;
          v16 = *v10.f64 >= 0.00000011921 ? v15 : 0.0;
          if (v16 > 0.4)
          {
            break;
          }
        }

        v4 += 2;
        if (v4 == v5)
        {
          return;
        }
      }

      v17 = ft::GetOsLog(ActiveTracks);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v21 = v16;
        v22 = 2048;
        v23 = 0x3FD99999A0000000;
        _os_log_impl(&dword_24BC30000, v17, OS_LOG_TYPE_INFO, "Terminating detectionless track. IoU exceeded: %0.2f > %0.2f", buf, 0x16u);
      }

      ft::CinematicTracker::TerminateDetectionlessTrack(this);
    }
  }
}

void sub_24BC3D3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  v12 = *a11;
  if (*a11)
  {
    *(a11 + 8) = v12;
    operator delete(v12);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void std::vector<ft::Observation>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    v6 = *(a2 + 32);
    v7 = *(a2 + 48);
    v8 = *(a2 + 80);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 80) = v8;
    *(v3 + 32) = v6;
    *(v3 + 48) = v7;
    v9 = *(a2 + 96);
    v10 = *(a2 + 112);
    v11 = *(a2 + 128);
    *(v3 + 144) = *(a2 + 144);
    *(v3 + 112) = v10;
    *(v3 + 128) = v11;
    *(v3 + 96) = v9;
    v12 = v3 + 152;
LABEL_3:
    *(a1 + 8) = v12;
    return;
  }

  v13 = *a1;
  v14 = 0x86BCA1AF286BCA1BLL * ((v3 - *a1) >> 3);
  v15 = v14 + 1;
  if (v14 + 1 > 0x1AF286BCA1AF286)
  {
    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  v16 = 0x86BCA1AF286BCA1BLL * ((v4 - v13) >> 3);
  if (2 * v16 > v15)
  {
    v15 = 2 * v16;
  }

  if (v16 >= 0xD79435E50D7943)
  {
    v17 = 0x1AF286BCA1AF286;
  }

  else
  {
    v17 = v15;
  }

  if (v17)
  {
    if (v17 <= 0x1AF286BCA1AF286)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v18 = *(a2 + 112);
  v19 = 8 * ((v3 - *a1) >> 3);
  *(v19 + 96) = *(a2 + 96);
  *(v19 + 112) = v18;
  *(v19 + 128) = *(a2 + 128);
  *(v19 + 144) = *(a2 + 144);
  v20 = *(a2 + 48);
  *(v19 + 32) = *(a2 + 32);
  *(v19 + 48) = v20;
  v21 = *(a2 + 80);
  *(v19 + 64) = *(a2 + 64);
  *(v19 + 80) = v21;
  v22 = *(a2 + 16);
  v12 = 152 * v14 + 152;
  v23 = 152 * v14 - (v3 - v13);
  *v19 = *a2;
  *(v19 + 16) = v22;
  memcpy((v19 - (v3 - v13)), v13, v3 - v13);
  *a1 = v23;
  *(a1 + 8) = v12;
  *(a1 + 16) = 0;
  if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  *(a1 + 8) = v12;
}

void sub_24BC3D7AC(_Unwind_Exception *a1)
{
  v4 = v3;
  std::__shared_weak_count::~__shared_weak_count(v4);
  operator delete(v6);

  _Unwind_Resume(a1);
}

void sub_24BC3DCA8(_Unwind_Exception *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  if (v9)
  {
  }

  std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](va);
  if (a2 == 1)
  {
    v16 = __cxa_begin_catch(a1);
    ReportException(v16);
    __cxa_end_catch();
    JUMPOUT(0x24BC3DBB8);
  }

  std::recursive_mutex::unlock((a4 + 80));

  _Unwind_Resume(a1);
}

void ft::CinematicTracker::Track(ft::TrackPool **this, const Frame *a2)
{
  ActiveTracks = ft::TrackPool::GetActiveTracks(this[24]);
  v5 = *ActiveTracks;
  v6 = *(ActiveTracks + 8);
  if (*ActiveTracks != v6)
  {
    do
    {
      v7 = *v5;
      v5 += 2;
      ft::Track::Predict(v7, a2);
    }

    while (v5 != v6);
  }

  ft::TrackPool::UpdateForeignTracks(this[24], a2, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  ft::TrackPool::RetireLostTracks(this[24]);
  ft::CinematicTracker::ProcessTap(this, a2);
  ft::CinematicTracker::ManageHighPriorityTrack(this, a2);
}

void sub_24BC3DFAC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t a2)
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

void sub_24BC3E904(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,espresso_buffer_t>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,espresso_buffer_t>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,espresso_buffer_t>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,espresso_buffer_t>,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v23 = *(a2 + a3 - 48);
      v24 = *(a2 + a3 - 40);
      v25 = *(a2 + a3 - 24);
      v26 = *(a2 + a3 - 56);
      v27 = *(a2 + a3 - 16);
      v28 = *(a2 + a3 - 8);
      v29 = v26 + v27;
      v30 = 0x9DDFEA08EB382D69 * (v25 ^ ((0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v25 ^ (v23 + a3))));
      v31 = 0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47));
      v32 = *(a2 + a3 - 64) + a3;
      v33 = v32 + v26 + v23;
      v34 = __ROR8__(v33, 44) + v32;
      v35 = __ROR8__(v24 + v32 + v31, 21);
      v36 = v33 + v24;
      v37 = v34 + v35;
      v38 = v29 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v39 = v38 + v25 + v27;
      v40 = v39 + v28;
      v41 = __ROR8__(v39, 44) + v38 + __ROR8__(v38 + v24 + v28, 21);
      v43 = *a2;
      v42 = a2 + 4;
      v44 = v43 - 0x4B6D499041670D8DLL * v24;
      v45 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v46 = *(v42 - 3);
        v47 = v44 + v36 + v29 + v46;
        v48 = v42[2];
        v49 = v42[3];
        v50 = v42[1];
        v29 = v50 + v36 - 0x4B6D499041670D8DLL * __ROR8__(v29 + v37 + v48, 42);
        v51 = v31 + v40;
        v52 = *(v42 - 2);
        v53 = *(v42 - 1);
        v54 = *(v42 - 4) - 0x4B6D499041670D8DLL * v37;
        v55 = v54 + v40 + v53;
        v56 = v54 + v46 + v52;
        v36 = v56 + v53;
        v57 = __ROR8__(v56, 44) + v54;
        v58 = (0xB492B66FBE98F273 * __ROR8__(v47, 37)) ^ v41;
        v44 = 0xB492B66FBE98F273 * __ROR8__(v51, 33);
        v37 = v57 + __ROR8__(v55 + v58, 21);
        v59 = v44 + v41 + *v42;
        v40 = v59 + v50 + v48 + v49;
        v41 = __ROR8__(v59 + v50 + v48, 44) + v59 + __ROR8__(v29 + v52 + v59 + v49, 21);
        v42 += 8;
        v31 = v58;
        v45 += 64;
      }

      while (v45);
      v60 = v58 - 0x4B6D499041670D8DLL * (v29 ^ (v29 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) ^ ((0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v40 ^ v36)) >> 47) ^ (0x9DDFEA08EB382D69 * (v40 ^ v36)))) >> 47));
      v61 = v44 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) ^ ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ v37)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ v37)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v60)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v60)))) >> 47));
    }

    else
    {
      v6 = *(a2 + a3 - 16);
      v7 = *a2 - 0x3C5A37A36834CED9 * (v6 + a3);
      v9 = a2[2];
      v8 = a2[3];
      v10 = __ROR8__(v7 + v8, 52);
      v11 = v7 + a2[1];
      v12 = __ROR8__(v11, 7);
      v13 = v11 + v9;
      v14 = *(a2 + a3 - 32) + v9;
      v15 = v12 + __ROR8__(*a2 - 0x3C5A37A36834CED9 * (v6 + a3), 37) + v10 + __ROR8__(v13, 31);
      v16 = *(a2 + a3 - 24) + v14 + v6;
      v17 = 0xC3A5C85C97CB3127 * (v16 + *(a2 + a3 - 8) + v8 + v15) - 0x651E95C4D06FBFB1 * (v13 + v8 + __ROR8__(v14, 37) + __ROR8__(*(a2 + a3 - 24) + v14, 7) + __ROR8__(*(a2 + a3 - 8) + v8 + v14, 52) + __ROR8__(v16, 31));
      return 0x9AE16A3B2F90404FLL * ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) ^ ((v15 - 0x3C5A37A36834CED9 * (v17 ^ (v17 >> 47))) >> 47));
    }
  }

  else if (a3 > 0x10)
  {
    v18 = a2[1];
    v19 = 0xB492B66FBE98F273 * *a2;
    v20 = __ROR8__(0x9AE16A3B2F90404FLL * *(a2 + a3 - 8), 30) + __ROR8__(v19 - v18, 43);
    v21 = v19 + a3 + __ROR8__(v18 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a2 + a3 - 8);
    v22 = 0x9DDFEA08EB382D69 * ((v20 - 0x3C5A37A36834CED9 * *(a2 + a3 - 16)) ^ v21);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) ^ ((0x9DDFEA08EB382D69 * (v21 ^ (v22 >> 47) ^ v22)) >> 47));
  }

  else if (a3 < 9)
  {
    if (a3 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a3)
      {
        v64 = (0xC949D7C7509E6557 * (a3 | (4 * *(a2 + a3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a2 | (*(a2 + (a3 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v64 ^ (v64 >> 47));
      }
    }

    else
    {
      v62 = *(a2 + a3 - 4);
      v63 = 0x9DDFEA08EB382D69 * (((8 * *a2) + a3) ^ v62);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) ^ ((0x9DDFEA08EB382D69 * (v62 ^ (v63 >> 47) ^ v63)) >> 47));
    }
  }

  else
  {
    v3 = *(a2 + a3 - 8);
    v4 = __ROR8__(v3 + a3, a3);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a2)))) >> 47))) ^ v3;
  }

  return result;
}

uint64_t *ft::CinematicTracker::SetHighPriorityTrack(uint64_t *this, uint64_t *a2)
{
  v3 = *a2;
  if (*a2 != this[19])
  {
    v5 = this;
    if (this[21])
    {
      ft::CinematicTracker::TerminateDetectionlessTrack(this);
      v3 = *a2;
    }

    if (v3 && (*(v3 + 8) & 1) != 0)
    {
      v6 = a2[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v7 = v5[22];
      v5[21] = v3;
      v5[22] = v6;
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }

    v9 = *a2;
    v8 = a2[1];
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v5[20];
    v5[19] = v9;
    v5[20] = v8;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v11 = v5 + 25;
    }

    else
    {
      v11 = v5 + 25;
    }

    return ft::SiameseRpnSession::Reset(v11);
  }

  return this;
}

void ft::CinematicTracker::TerminateDetectionlessTrack(ft::CinematicTracker *this)
{
  v2 = *(this + 21);
  if (v2 != *(this + 19))
  {
    v3 = ft::GetOsLog(this);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ft::CinematicTracker::TerminateDetectionlessTrack();
    }

    v2 = *(this + 21);
  }

  v4 = *(this + 24);
  v5 = *(this + 22);
  v9 = v2;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ft::TrackPool::RemoveTrack(v4, &v9);
  v6 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(this + 22);
  *(this + 21) = 0;
  *(this + 22) = 0;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 20);
  *(this + 19) = 0;
  *(this + 20) = 0;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void ft::CinematicTracker::ProcessTap(ft::CinematicTracker *this, const Frame *a2)
{
  if (*(a2 + 80) == 1)
  {
    ft::TrackPool::GetTrackById(*(this + 24), *(a2 + 7), &v16);
    if (v16)
    {
      v4 = *a2;
      *(this + 4) = *(a2 + 2);
      *(this + 1) = v4;
      v14 = *(v16 + 16);
      *&v15 = &v14;
      v5 = std::__hash_table<std::__hash_value_type<long long,CMTime>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,CMTime>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,CMTime>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,CMTime>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long &&>,std::tuple<>>(this + 5, &v14);
      v6 = *a2;
      v5[5] = *(a2 + 2);
      *(v5 + 3) = v6;
    }

    else
    {
      v7 = *(a2 + 4);
      __asm { FMOV            V1.2D, #1.0 }

      LODWORD(_Q1.f64[0]) = vuzp1_s16(vmovn_s64(vcgeq_f64(_Q1, v7)), *&v7.f64[0]).u32[0];
      *&v7.f64[0] = vmovn_s64(vcgezq_f64(v7));
      HIDWORD(_Q1.f64[0]) = vuzp1_s16(*&v7, *&v7).i32[1];
      if (vminv_u16(*&_Q1.f64[0]))
      {
        ft::TrackPool::CreateNewDetectionlessTrack(&v15);
      }
    }

    v13 = v17;
    if (v17)
    {
      if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }
    }
  }
}

void sub_24BC3F32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_24BC3F348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_24BC3F35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ft::CinematicTracker::ManageHighPriorityTrack(ft::CinematicTracker *this, const Frame *a2)
{
  v4 = *(this + 19);
  if (v4 && *(v4 + 240) == 1 && (v9 = 0, v10 = 0, ft::CinematicTracker::SetHighPriorityTrack(this, &v9), (v5 = v10) != 0) && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if ([*this allowTrackPromotion])
    {
      goto LABEL_6;
    }
  }

  else if ([*this allowTrackPromotion])
  {
LABEL_6:
    if (*(a2 + 96) == 1)
    {
      ft::CinematicTracker::PromoteTrackById(this, *(a2 + 11));
    }

    if (!*(this + 19))
    {
      ft::CinematicTracker::AutoPromoteExistingTrackToHighPriority(this);
    }

    return;
  }

  v6 = *(this + 19);
  if (v6)
  {
    if (*(v6 + 232) == 1)
    {
      time1 = *(v6 + 124);
      v7 = *a2;
      if (!CMTimeCompare(&time1, &v7))
      {
        ft::SiameseRpnSession::Reset(this + 25);
      }
    }
  }
}

void ft::CinematicTracker::PromoteTrackById(ft::CinematicTracker *this, uint64_t a2)
{
  if (a2 != -1)
  {
    ft::TrackPool::GetTrackById(*(this + 24), a2, &v9);
    if (v9)
    {
      if (*(v9 + 232) == 1)
      {
        v3 = *(v9 + 24);
        if (v3 >= 0.0)
        {
          v4 = *(v9 + 32);
          if (v4 >= 0.0 && v3 + *(v9 + 40) <= 1.0 && v4 + *(v9 + 48) <= 1.0)
          {
            v7 = v9;
            v8 = v10;
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            ft::CinematicTracker::SetHighPriorityTrack(this, &v7);
            v5 = v8;
            if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v5->__on_zero_shared)(v5);
              std::__shared_weak_count::__release_weak(v5);
            }
          }
        }
      }
    }

    v6 = v10;
    if (v10)
    {
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void sub_24BC3F634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void ft::CinematicTracker::AutoPromoteExistingTrackToHighPriority(ft::TrackPool **this)
{
  ActiveTracks = ft::TrackPool::GetActiveTracks(this[24]);
  v3 = *ActiveTracks;
  v4 = *(ActiveTracks + 8);
  if (*ActiveTracks != v4)
  {
    v5 = *ActiveTracks;
    while (1)
    {
      v6 = *v5;
      if (*(*v5 + 232) == 1)
      {
        v7 = v6[3];
        if (v7 >= 0.0)
        {
          v8 = v6[4];
          if (v8 >= 0.0 && v7 + v6[5] <= 1.0 && v8 + v6[6] <= 1.0)
          {
            break;
          }
        }
      }

      v5 += 2;
      if (v5 == v4)
      {
        return;
      }
    }

    v10 = *v3;
    v9 = v3[1];
    v12 = v10;
    v13 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ft::CinematicTracker::SetHighPriorityTrack(this, &v12);
    v11 = v13;
    if (v13)
    {
      if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }
}

void *std::__hash_table<std::__hash_value_type<long long,CMTime>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,CMTime>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,CMTime>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,CMTime>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long &&>,std::tuple<>>(void *a1, unint64_t *a2)
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
    if (v2 >= *&v3)
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
        if (v7[2] == v2)
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

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void std::__shared_ptr_emplace<ft::CinematicTracker>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F8F130;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C253380);
}

void ft::CinematicTracker::CinematicTracker(ft::CinematicTracker *this, FTCinematicConfig *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CC0898];
  *this = v3;
  *(this + 1) = 0;
  v5 = *(v4 + 16);
  *(this + 1) = *v4;
  *(this + 4) = v5;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
  MEMORY[0x24C2532C0](this + 80);
  *(this + 9) = 0u;
  *(this + 22) = 0;
  *(this + 10) = 0u;
  v6 = 10;
  v7 = 0x13E4CCCCDLL;
  operator new();
}

void sub_24BC3FC3C(_Unwind_Exception *a1)
{
  std::unique_ptr<ft::TrackPool>::~unique_ptr[abi:ne200100]((v1 + 192));
  std::unique_ptr<ft::TrackMatcher>::~unique_ptr[abi:ne200100]((v4 + 40));
  std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](v4 + 24);
  std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](v4 + 8);

  std::recursive_mutex::~recursive_mutex((v1 + 80));
  std::unordered_map<long long,CMTime>::~unordered_map[abi:ne200100](v3);

  _Unwind_Resume(a1);
}

ft::TrackPool **std::unique_ptr<ft::TrackPool>::~unique_ptr[abi:ne200100](ft::TrackPool **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    ft::TrackPool::~TrackPool(v2);
    MEMORY[0x24C253380]();
    return v3;
  }

  return v1;
}

ft::TrackMatcher **std::unique_ptr<ft::TrackMatcher>::~unique_ptr[abi:ne200100](ft::TrackMatcher **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    ft::TrackMatcher::~TrackMatcher(v2);
    MEMORY[0x24C253380]();
    return v3;
  }

  return v1;
}

uint64_t std::unordered_map<long long,CMTime>::~unordered_map[abi:ne200100](uint64_t a1)
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

void ft::CinematicTracker::~CinematicTracker(ft::CinematicTracker *this)
{
  ft::SiameseRpnSession::~SiameseRpnSession((this + 200));
  v2 = *(this + 24);
  *(this + 24) = 0;
  if (v2)
  {
    ft::TrackPool::~TrackPool(v2);
    MEMORY[0x24C253380]();
  }

  v3 = *(this + 23);
  *(this + 23) = 0;
  if (v3)
  {
    ft::TrackMatcher::~TrackMatcher(v3);
    MEMORY[0x24C253380]();
  }

  v4 = *(this + 22);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 20);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  std::recursive_mutex::~recursive_mutex((this + 80));
  v6 = *(this + 7);
  if (v6)
  {
    do
    {
      v7 = *v6;
      operator delete(v6);
      v6 = v7;
    }

    while (v7);
  }

  v8 = *(this + 5);
  *(this + 5) = 0;
  if (v8)
  {
    operator delete(v8);
  }
}

void std::__shared_ptr_emplace<ft::Frame>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F8F0F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C253380);
}

void std::__shared_ptr_emplace<ft::Frame>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t rtcv::bmBufferPixelFormatTypeFromString(uint64_t a1, _DWORD *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, *a1, *(a1 + 8));
  }

  else
  {
    v34 = *a1;
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = (&v34 + HIBYTE(v34.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v3 = (v34.__r_.__value_.__r.__words[0] + v34.__r_.__value_.__l.__size_);
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v34;
  }

  else
  {
    v4 = v34.__r_.__value_.__r.__words[0];
  }

  for (; v4 != v3; v4 = (v4 + 1))
  {
    v4->__r_.__value_.__s.__data_[0] = __tolower(v4->__r_.__value_.__s.__data_[0]);
  }

  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals))
  {
    v33 = 0;
    std::pair<std::string const,BmBufferPixelFormatType>::pair[abi:ne200100]<char const(&)[5],BmBufferPixelFormatType,0>(v35, "int8", &v33);
    v32 = 1;
    std::pair<std::string const,BmBufferPixelFormatType>::pair[abi:ne200100]<char const(&)[5],BmBufferPixelFormatType,0>(&v37, "uint8", &v32);
    v31 = 2;
    std::pair<std::string const,BmBufferPixelFormatType>::pair[abi:ne200100]<char const(&)[5],BmBufferPixelFormatType,0>(&__p, "uint10", &v31);
    v30 = 3;
    std::pair<std::string const,BmBufferPixelFormatType>::pair[abi:ne200100]<char const(&)[5],BmBufferPixelFormatType,0>(&v41, "uint12", &v30);
    v29 = 4;
    std::pair<std::string const,BmBufferPixelFormatType>::pair[abi:ne200100]<char const(&)[5],BmBufferPixelFormatType,0>(&v43, "uint14", &v29);
    v28 = 5;
    std::pair<std::string const,BmBufferPixelFormatType>::pair[abi:ne200100]<char const(&)[5],BmBufferPixelFormatType,0>(&v45, "uint16", &v28);
    v27 = 6;
    std::pair<std::string const,BmBufferPixelFormatType>::pair[abi:ne200100]<char const(&)[5],BmBufferPixelFormatType,0>(&v47, "float", &v27);
    v26 = 7;
    std::pair<std::string const,BmBufferPixelFormatType>::pair[abi:ne200100]<char const(&)[5],BmBufferPixelFormatType,0>(&v49, "half", &v26);
    std::map<std::string,BmBufferPixelFormatType>::map[abi:ne200100](&unk_280F7BFC0, v35, 8);
    if (v50 < 0)
    {
      operator delete(v49);
      if ((v48 & 0x80000000) == 0)
      {
LABEL_60:
        if ((v46 & 0x80000000) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_69;
      }
    }

    else if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    operator delete(v47);
    if ((v46 & 0x80000000) == 0)
    {
LABEL_61:
      if ((v44 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_70;
    }

LABEL_69:
    operator delete(v45);
    if ((v44 & 0x80000000) == 0)
    {
LABEL_62:
      if ((v42 & 0x80000000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_71;
    }

LABEL_70:
    operator delete(v43);
    if ((v42 & 0x80000000) == 0)
    {
LABEL_63:
      if ((v40 & 0x80000000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_72;
    }

LABEL_71:
    operator delete(v41);
    if ((v40 & 0x80000000) == 0)
    {
LABEL_64:
      if ((v38 & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_73;
    }

LABEL_72:
    operator delete(__p);
    if ((v38 & 0x80000000) == 0)
    {
LABEL_65:
      if ((v36 & 0x80000000) == 0)
      {
LABEL_66:
        __cxa_atexit(std::map<std::string,BmBufferPixelFormatType>::~map[abi:ne200100], &unk_280F7BFC0, &dword_24BC30000);
        __cxa_guard_release(&_MergedGlobals);
        goto LABEL_13;
      }

LABEL_74:
      operator delete(v35[0]);
      goto LABEL_66;
    }

LABEL_73:
    operator delete(v37);
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_74;
  }

LABEL_13:
  v5 = qword_280F7BFC8;
  v6 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  if (qword_280F7BFC8)
  {
    v7 = (v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v34.__r_.__value_.__r.__words[2]) : v34.__r_.__value_.__l.__size_;
    v8 = (v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v34 : v34.__r_.__value_.__r.__words[0];
    v9 = &qword_280F7BFC8;
    do
    {
      v10 = *(v5 + 55);
      if (v10 >= 0)
      {
        v11 = *(v5 + 55);
      }

      else
      {
        v11 = *(v5 + 40);
      }

      if (v10 >= 0)
      {
        v12 = (v5 + 32);
      }

      else
      {
        v12 = *(v5 + 32);
      }

      if (v7 >= v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = v7;
      }

      v14 = memcmp(v12, v8, v13);
      v15 = v11 < v7;
      if (v14)
      {
        v15 = v14 < 0;
      }

      v16 = !v15;
      if (v15)
      {
        v17 = 8;
      }

      else
      {
        v17 = 0;
      }

      if (v16)
      {
        v9 = v5;
      }

      v5 = *(v5 + v17);
    }

    while (v5);
    if (v9 != &qword_280F7BFC8)
    {
      v18 = *(v9 + 55);
      v19 = v18 >= 0 ? *(v9 + 55) : v9[5];
      v20 = v18 >= 0 ? v9 + 4 : v9[4];
      v21 = v19 >= v7 ? v7 : v19;
      v22 = memcmp(v8, v20, v21);
      v23 = v7 < v19;
      if (v22)
      {
        v23 = v22 < 0;
      }

      if (!v23)
      {
        *a2 = *(v9 + 14);
        v24 = 1;
        if ((v6 & 0x80) == 0)
        {
          return v24;
        }

        goto LABEL_53;
      }
    }
  }

  v24 = 0;
  if (v6 < 0)
  {
LABEL_53:
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  return v24;
}

void sub_24BC403F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  if (a72 < 0)
  {
    operator delete(v72[28]);
    if ((a68 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a68 & 0x80000000) == 0)
  {
LABEL_3:
    if (a61 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  operator delete(v72[24]);
  if (a61 < 0)
  {
LABEL_4:
    operator delete(v72[20]);
    if ((a54 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  if ((a54 & 0x80000000) == 0)
  {
LABEL_5:
    if (a47 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v72[16]);
  if (a47 < 0)
  {
LABEL_6:
    operator delete(v72[12]);
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  if ((a40 & 0x80000000) == 0)
  {
LABEL_7:
    if (a33 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a35);
  if (a33 < 0)
  {
LABEL_8:
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
LABEL_18:
      __cxa_guard_abort(&_MergedGlobals);
      if (a20 < 0)
      {
        operator delete(a15);
      }

      _Unwind_Resume(a1);
    }

LABEL_17:
    operator delete(a21);
    goto LABEL_18;
  }

LABEL_16:
  if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  goto LABEL_17;
}

uint64_t std::pair<std::string const,BmBufferPixelFormatType>::pair[abi:ne200100]<char const(&)[5],BmBufferPixelFormatType,0>(uint64_t a1, char *__s, _DWORD *a3)
{
  v6 = strlen(__s);
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
    memmove(a1, __s, v6);
  }

  *(a1 + v7) = 0;
  *(a1 + 24) = *a3;
  return a1;
}

void rtcv::bmBufferPixelFormatTypeToString(int a1@<W0>, std::string *a2@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280F7BFB8, memory_order_acquire) & 1) == 0)
  {
    v5 = a1;
    v6 = a2;
    v7 = __cxa_guard_acquire(&qword_280F7BFB8);
    a2 = v6;
    v8 = v7;
    a1 = v5;
    if (v8)
    {
      v16 = 0;
      std::pair<BmBufferPixelFormatType const,std::string>::pair[abi:ne200100]<BmBufferPixelFormatType,char const(&)[5],0>(&v17, &v16, "int8");
      v15 = 1;
      std::pair<BmBufferPixelFormatType const,std::string>::pair[abi:ne200100]<BmBufferPixelFormatType,char const(&)[5],0>(&v20, &v15, "uint8");
      v14 = 2;
      std::pair<BmBufferPixelFormatType const,std::string>::pair[abi:ne200100]<BmBufferPixelFormatType,char const(&)[5],0>(&v23, &v14, "uint10");
      v13 = 3;
      std::pair<BmBufferPixelFormatType const,std::string>::pair[abi:ne200100]<BmBufferPixelFormatType,char const(&)[5],0>(&v26, &v13, "uint12");
      v12 = 4;
      std::pair<BmBufferPixelFormatType const,std::string>::pair[abi:ne200100]<BmBufferPixelFormatType,char const(&)[5],0>(&v29, &v12, "uint14");
      v11 = 5;
      std::pair<BmBufferPixelFormatType const,std::string>::pair[abi:ne200100]<BmBufferPixelFormatType,char const(&)[5],0>(&v32, &v11, "uint16");
      v10 = 6;
      std::pair<BmBufferPixelFormatType const,std::string>::pair[abi:ne200100]<BmBufferPixelFormatType,char const(&)[5],0>(&v35, &v10, "float");
      v9 = 7;
      std::pair<BmBufferPixelFormatType const,std::string>::pair[abi:ne200100]<BmBufferPixelFormatType,char const(&)[5],0>(&v38, &v9, "half");
      std::map<BmBufferPixelFormatType,std::string>::map[abi:ne200100](&qword_280F7BFD8, &v17, 8);
      if (v40 < 0)
      {
        operator delete(__p);
        if ((v37 & 0x80000000) == 0)
        {
LABEL_15:
          if ((v34 & 0x80000000) == 0)
          {
            goto LABEL_16;
          }

          goto LABEL_24;
        }
      }

      else if ((v37 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      operator delete(v36);
      if ((v34 & 0x80000000) == 0)
      {
LABEL_16:
        if ((v31 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_25;
      }

LABEL_24:
      operator delete(v33);
      if ((v31 & 0x80000000) == 0)
      {
LABEL_17:
        if ((v28 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_26;
      }

LABEL_25:
      operator delete(v30);
      if ((v28 & 0x80000000) == 0)
      {
LABEL_18:
        if ((v25 & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_27;
      }

LABEL_26:
      operator delete(v27);
      if ((v25 & 0x80000000) == 0)
      {
LABEL_19:
        if ((v22 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_28;
      }

LABEL_27:
      operator delete(v24);
      if ((v22 & 0x80000000) == 0)
      {
LABEL_20:
        if ((v19 & 0x80000000) == 0)
        {
LABEL_21:
          __cxa_atexit(std::map<BmBufferPixelFormatType,std::string>::~map[abi:ne200100], &qword_280F7BFD8, &dword_24BC30000);
          __cxa_guard_release(&qword_280F7BFB8);
          a2 = v6;
          a1 = v5;
          goto LABEL_2;
        }

LABEL_29:
        operator delete(v18);
        goto LABEL_21;
      }

LABEL_28:
      operator delete(v21);
      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_29;
    }
  }

LABEL_2:
  v2 = qword_280F7BFE0;
  if (!qword_280F7BFE0)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v3 = *(v2 + 32);
      if (v3 <= a1)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v3 >= a1)
    {
      break;
    }

    v2 = *(v2 + 8);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  if (*(v2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v2 + 40), *(v2 + 48));
  }

  else
  {
    v4 = *(v2 + 40);
    a2->__r_.__value_.__r.__words[2] = *(v2 + 56);
    *&a2->__r_.__value_.__l.__data_ = v4;
  }
}

void sub_24BC40948(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _Unwind_Exception *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a53 < 0)
  {
    operator delete(__p);
  }

  rtcv::bmBufferPixelFormatTypeToString(&a19, a1, a2, &a13, &a18);
  v56 = a13;
  if (&a19 != v53 && (a18 & 1) == 0)
  {
    do
    {
      if (*(v53 - 1) < 0)
      {
        operator delete(*(v53 - 3));
      }

      v53 -= 32;
    }

    while (v53 != &a19);
  }

  __cxa_guard_abort(&qword_280F7BFB8);
  _Unwind_Resume(v56);
}

uint64_t std::pair<BmBufferPixelFormatType const,std::string>::pair[abi:ne200100]<BmBufferPixelFormatType,char const(&)[5],0>(uint64_t a1, _DWORD *a2, char *__s)
{
  *a1 = *a2;
  v5 = (a1 + 8);
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = v6;
  if (v6)
  {
    memmove(v5, __s, v6);
  }

  *(v5 + v7) = 0;
  return a1;
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

uint64_t std::map<std::string,BmBufferPixelFormatType>::map[abi:ne200100](uint64_t a1, const void **a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,BmBufferPixelFormatType>,std::__map_value_compare<std::string,std::__value_type<std::string,BmBufferPixelFormatType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BmBufferPixelFormatType>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,BmBufferPixelFormatType> const&>(a1, v4, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,BmBufferPixelFormatType>,std::__map_value_compare<std::string,std::__value_type<std::string,BmBufferPixelFormatType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BmBufferPixelFormatType>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,BmBufferPixelFormatType> const&>(uint64_t **a1, uint64_t *a2, const void **a3)
{
  v3 = std::__tree<std::__value_type<std::string,BmBufferPixelFormatType>,std::__map_value_compare<std::string,std::__value_type<std::string,BmBufferPixelFormatType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BmBufferPixelFormatType>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!*v3)
  {
    operator new();
  }

  return *v3;
}

void sub_24BC40D20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,BmBufferPixelFormatType>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,BmBufferPixelFormatType>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,BmBufferPixelFormatType>,std::__map_value_compare<std::string,std::__value_type<std::string,BmBufferPixelFormatType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BmBufferPixelFormatType>>>::__find_equal<std::string>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_20;
  }

  v10 = *(a2 + 55);
  v11 = *(a5 + 23);
  if (v11 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  if (v11 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = *a5;
  }

  if (v10 >= 0)
  {
    v14 = *(a2 + 55);
  }

  else
  {
    v14 = a2[5];
  }

  if (v10 >= 0)
  {
    v15 = a2 + 4;
  }

  else
  {
    v15 = a2[4];
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  v18 = v12 < v14;
  if (v17)
  {
    v18 = v17 < 0;
  }

  if (v18)
  {
LABEL_20:
    v19 = *a2;
    if (*a1 == a2)
    {
      v21 = a2;
LABEL_53:
      if (v19)
      {
        *a3 = v21;
        return v21 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v19)
    {
      v20 = *a2;
      do
      {
        v21 = v20;
        v20 = v20[1];
      }

      while (v20);
    }

    else
    {
      v26 = a2;
      do
      {
        v21 = v26[2];
        v27 = *v21 == v26;
        v26 = v21;
      }

      while (v27);
    }

    v28 = *(a5 + 23);
    v29 = *(v21 + 55);
    if (v29 >= 0)
    {
      v30 = *(v21 + 55);
    }

    else
    {
      v30 = v21[5];
    }

    if (v29 >= 0)
    {
      v31 = v21 + 4;
    }

    else
    {
      v31 = v21[4];
    }

    if (v28 >= 0)
    {
      v32 = *(a5 + 23);
    }

    else
    {
      v32 = a5[1];
    }

    if (v28 >= 0)
    {
      v33 = a5;
    }

    else
    {
      v33 = *a5;
    }

    if (v32 >= v30)
    {
      v34 = v30;
    }

    else
    {
      v34 = v32;
    }

    v35 = memcmp(v31, v33, v34);
    v36 = v30 < v32;
    if (v35)
    {
      v36 = v35 < 0;
    }

    if (v36)
    {
      goto LABEL_53;
    }

    v37 = *v8;
    if (*v8)
    {
      do
      {
        while (1)
        {
          v38 = v37;
          v41 = v37[4];
          v39 = v37 + 4;
          v40 = v41;
          v42 = *(v39 + 23);
          if (v42 >= 0)
          {
            v43 = *(v39 + 23);
          }

          else
          {
            v43 = v39[1];
          }

          if (v42 >= 0)
          {
            v44 = v39;
          }

          else
          {
            v44 = v40;
          }

          if (v43 >= v32)
          {
            v45 = v32;
          }

          else
          {
            v45 = v43;
          }

          v46 = memcmp(v33, v44, v45);
          v47 = v32 < v43;
          if (v46)
          {
            v47 = v46 < 0;
          }

          if (!v47)
          {
            break;
          }

          v37 = *v38;
          v8 = v38;
          if (!*v38)
          {
            goto LABEL_74;
          }
        }

        v48 = memcmp(v44, v33, v45);
        v49 = v43 < v32;
        if (v48)
        {
          v49 = v48 < 0;
        }

        if (!v49)
        {
          break;
        }

        v8 = v38 + 1;
        v37 = v38[1];
      }

      while (v37);
    }

    else
    {
      v38 = v8;
    }

LABEL_74:
    *a3 = v38;
    return v8;
  }

  v22 = memcmp(v15, v13, v16);
  v23 = v14 < v12;
  if (v22)
  {
    v23 = v22 < 0;
  }

  if (!v23)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v24 = a2[1];
  if (v24)
  {
    v25 = a2[1];
    do
    {
      a4 = v25;
      v25 = *v25;
    }

    while (v25);
  }

  else
  {
    v50 = a2;
    do
    {
      a4 = v50[2];
      v27 = *a4 == v50;
      v50 = a4;
    }

    while (!v27);
  }

  if (a4 != v8)
  {
    v51 = *(a4 + 55);
    if (v51 >= 0)
    {
      v52 = *(a4 + 55);
    }

    else
    {
      v52 = a4[5];
    }

    if (v51 >= 0)
    {
      v53 = (a4 + 4);
    }

    else
    {
      v53 = a4[4];
    }

    if (v52 >= v12)
    {
      v54 = v12;
    }

    else
    {
      v54 = v52;
    }

    v55 = memcmp(v13, v53, v54);
    v56 = v12 < v52;
    if (v55)
    {
      v56 = v55 < 0;
    }

    if (!v56)
    {
      v57 = *v8;
      if (*v8)
      {
        v58 = a3;
        do
        {
          while (1)
          {
            v59 = v57;
            v62 = v57[4];
            v60 = v57 + 4;
            v61 = v62;
            v63 = *(v60 + 23);
            if (v63 >= 0)
            {
              v64 = *(v60 + 23);
            }

            else
            {
              v64 = v60[1];
            }

            if (v63 >= 0)
            {
              v65 = v60;
            }

            else
            {
              v65 = v61;
            }

            if (v64 >= v12)
            {
              v66 = v12;
            }

            else
            {
              v66 = v64;
            }

            v67 = memcmp(v13, v65, v66);
            v68 = v12 < v64;
            if (v67)
            {
              v68 = v67 < 0;
            }

            if (!v68)
            {
              break;
            }

            v57 = *v59;
            v8 = v59;
            if (!*v59)
            {
              goto LABEL_119;
            }
          }

          v69 = memcmp(v65, v13, v66);
          v70 = v64 < v12;
          if (v69)
          {
            v70 = v69 < 0;
          }

          if (!v70)
          {
            break;
          }

          v8 = v59 + 1;
          v57 = v59[1];
        }

        while (v57);
      }

      else
      {
        v59 = v8;
        v58 = a3;
      }

LABEL_119:
      *v58 = v59;
      return v8;
    }
  }

  if (v24)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

void *std::unique_ptr<std::__tree_node<std::__value_type<std::string,BmBufferPixelFormatType>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,BmBufferPixelFormatType>,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 55) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 32));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void std::__tree<std::__value_type<std::string,BmBufferPixelFormatType>,std::__map_value_compare<std::string,std::__value_type<std::string,BmBufferPixelFormatType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BmBufferPixelFormatType>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,BmBufferPixelFormatType>,std::__map_value_compare<std::string,std::__value_type<std::string,BmBufferPixelFormatType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BmBufferPixelFormatType>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,BmBufferPixelFormatType>,std::__map_value_compare<std::string,std::__value_type<std::string,BmBufferPixelFormatType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BmBufferPixelFormatType>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

void *std::map<BmBufferPixelFormatType,std::string>::map[abi:ne200100](void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<BmBufferPixelFormatType,std::string>,std::__map_value_compare<BmBufferPixelFormatType,std::__value_type<BmBufferPixelFormatType,std::string>,std::less<BmBufferPixelFormatType>,true>,std::allocator<std::__value_type<BmBufferPixelFormatType,std::string>>>::__emplace_hint_unique_key_args<BmBufferPixelFormatType,std::pair<BmBufferPixelFormatType const,std::string> const&>(a1, v4, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<BmBufferPixelFormatType,std::string>,std::__map_value_compare<BmBufferPixelFormatType,std::__value_type<BmBufferPixelFormatType,std::string>,std::less<BmBufferPixelFormatType>,true>,std::allocator<std::__value_type<BmBufferPixelFormatType,std::string>>>::__emplace_hint_unique_key_args<BmBufferPixelFormatType,std::pair<BmBufferPixelFormatType const,std::string> const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = std::__tree<std::__value_type<BmBufferPixelFormatType,std::string>,std::__map_value_compare<BmBufferPixelFormatType,std::__value_type<BmBufferPixelFormatType,std::string>,std::less<BmBufferPixelFormatType>,true>,std::allocator<std::__value_type<BmBufferPixelFormatType,std::string>>>::__find_equal<BmBufferPixelFormatType>(a1, a2, &v6, &v5, a3);
  if (!*v3)
  {
    operator new();
  }

  return *v3;
}

void sub_24BC41548(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<BmBufferPixelFormatType,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<BmBufferPixelFormatType,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<BmBufferPixelFormatType,std::string>,std::__map_value_compare<BmBufferPixelFormatType,std::__value_type<BmBufferPixelFormatType,std::string>,std::less<BmBufferPixelFormatType>,true>,std::allocator<std::__value_type<BmBufferPixelFormatType,std::string>>>::__find_equal<BmBufferPixelFormatType>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = *(v18 + 32);
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < *(v13 + 8))
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = *(v22 + 32);
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

void *std::unique_ptr<std::__tree_node<std::__value_type<BmBufferPixelFormatType,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<BmBufferPixelFormatType,std::string>,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 63) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 40));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void std::__tree<std::__value_type<BmBufferPixelFormatType,std::string>,std::__map_value_compare<BmBufferPixelFormatType,std::__value_type<BmBufferPixelFormatType,std::string>,std::less<BmBufferPixelFormatType>,true>,std::allocator<std::__value_type<BmBufferPixelFormatType,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<BmBufferPixelFormatType,std::string>,std::__map_value_compare<BmBufferPixelFormatType,std::__value_type<BmBufferPixelFormatType,std::string>,std::less<BmBufferPixelFormatType>,true>,std::allocator<std::__value_type<BmBufferPixelFormatType,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<BmBufferPixelFormatType,std::string>,std::__map_value_compare<BmBufferPixelFormatType,std::__value_type<BmBufferPixelFormatType,std::string>,std::less<BmBufferPixelFormatType>,true>,std::allocator<std::__value_type<BmBufferPixelFormatType,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27916B3D0, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

id ft::GetOsLog(ft *this)
{
  if (ft::GetOsLog(void)::token == -1)
  {
    v2 = ft::GetOsLog(void)::os_log;
  }

  else
  {
    ft::GetOsLog();
    v2 = ft::GetOsLog(void)::os_log;
  }

  return v2;
}

uint64_t ___ZN2ft8GetOsLogEv_block_invoke()
{
  ft::GetOsLog(void)::os_log = os_log_create("com.apple.FusionTracker", "default");

  return MEMORY[0x2821F96F8]();
}

void *ft::UserDefaults::Get(ft::UserDefaults *this)
{
  if ((atomic_load_explicit(&qword_280F7BFF8, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_280F7BFF8))
  {
    return &_MergedGlobals_0;
  }

  ft::UserDefaults::UserDefaults(&_MergedGlobals_0);
  __cxa_guard_release(&qword_280F7BFF8);
  return &_MergedGlobals_0;
}

ft::UserDefaults *ft::UserDefaults::UserDefaults(ft::UserDefaults *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.coremedia"];
  *this = [v2 BOOLForKey:@"enable_tap_to_track_overlap_with_isp_mitigation"];
  v3 = [v2 integerForKey:@"ttt_rpn_precision_level"];
  v4 = v3;
  if ((v3 - 1) >= 5)
  {
    v5 = 3;
  }

  else
  {
    v5 = v3;
  }

  *(this + 1) = v5;
  v6 = ft::GetOsLog(v3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(this + 1);
    v9[0] = 67109376;
    v9[1] = v7;
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_24BC30000, v6, OS_LOG_TYPE_INFO, "RPN Precision Level set to %d (defaults value: %d)", v9, 0xEu);
  }

  return this;
}

uint64_t simResizeVisPipeBinning@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>, float a7@<S3>)
{
  if (a6 != 0.0 || a7 != 0.0)
  {
    simResizeVisPipeBinning();
  }

  LODWORD(a3) = vcvtas_u32_f32(1.0 / a4);
  v7 = (1 << a3) & 0x116;
  if (a3 > 8 || v7 == 0)
  {
    simResizeVisPipeBinning();
  }

  LODWORD(v7) = vcvtas_u32_f32(1.0 / a5);
  if (v7 > 8 || ((1 << v7) & 0x116) == 0)
  {
    simResizeVisPipeBinning();
  }

  v10 = *(a1 + 12);
  v11 = (v10 / a3) & 0xFFFFFFFE;
  v12 = *(a2 + 2);
  v13 = *(a2 + 3);
  if (v13 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(a1 + 8) / v7;
  if (v12 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    if (!v13)
    {
      goto LABEL_67;
    }

    if (!v11)
    {
      v33 = 0;
      while (v33 < v12)
      {
        if (++v33 >= v16)
        {
          return 1;
        }
      }

LABEL_67:
      simResizeVisPipeBinning();
    }

    v70 = *a2;
    v69 = *(a2 + 4);
    v17 = a3 >> 1;
    v18 = v7 >> 1;
    v19 = v7 - 1;
    v68 = v16;
    if (a3 < 4)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      while (v22 < *(a2 + 2))
      {
        v23 = 0;
        v24 = (v70 + (v69 * v22));
        do
        {
          if (v10 <= v23 * a3)
          {
            goto LABEL_66;
          }

          v25 = *(a1 + 8);
          if (v25 <= v21)
          {
            v25 = v21;
          }

          if (v20 + v25 <= v19)
          {
            goto LABEL_66;
          }

          v26 = 0;
          v27 = 0;
          do
          {
            v28 = 0;
            v29 = (*a1 + 2 * (v23 * a3) + (*(a1 + 16) * (v22 * v7 + v26)));
            v30 = a3;
            do
            {
              v31 = *v29++;
              v28 += v31;
              --v30;
            }

            while (v30);
            v27 += (v28 + v17) / a3;
            ++v26;
          }

          while (v26 != v7);
          v32 = (v27 + v18) / v7;
          if (v32 >= 0xFFFF)
          {
            v32 = 0xFFFF;
          }

          *v24++ = v32 & ~(v32 >> 31);
          ++v23;
        }

        while (v23 < v14);
        ++v22;
        v20 -= v7;
        v21 += v7;
        if (v22 >= v68)
        {
          return 1;
        }
      }

      goto LABEL_67;
    }

    v35 = 0;
    v36 = 0;
    v37 = 0;
LABEL_43:
    if (v37 >= *(a2 + 2))
    {
      goto LABEL_67;
    }

    v38 = 0;
    v39 = 0;
    v40 = v37 * v7;
    v67 = v37;
    v41 = (v70 + (v69 * v37));
LABEL_48:
    if (v10 <= v39 * a3)
    {
      goto LABEL_66;
    }

    v43 = *(a1 + 8);
    if (v43 <= v36)
    {
      v43 = v36;
    }

    if (v35 + v43 <= v19)
    {
LABEL_66:
      simResizeVisPipeBinning();
    }

    v44 = 0;
    v45 = 0;
    v46 = *(a1 + 16);
    v47 = *a1 + 2 * v38;
    v48 = v36 * v46;
    while (1)
    {
      v49 = v48;
      if (a3 < 0x10)
      {
        break;
      }

      v52 = (v47 + 16 + v48);
      v53 = 0uLL;
      v54 = a3 & 0x7FFFFFF0;
      v55 = 0uLL;
      v56 = 0uLL;
      v57 = 0uLL;
      do
      {
        v58 = v52[-1];
        v55 = vaddw_high_u16(v55, v58);
        v53 = vaddw_u16(v53, *v58.i8);
        v57 = vaddw_high_u16(v57, *v52);
        v56 = vaddw_u16(v56, *v52->i8);
        v52 += 2;
        v54 -= 16;
      }

      while (v54);
      v50 = vaddvq_s32(vaddq_s32(vaddq_s32(v56, v53), vaddq_s32(v57, v55)));
      if ((a3 & 0x7FFFFFF0) == a3)
      {
        goto LABEL_53;
      }

      v51 = a3 & 0x7FFFFFF0;
      v59 = v51;
      if ((a3 & 0xC) != 0)
      {
        goto LABEL_60;
      }

LABEL_63:
      v64 = (*a1 + 2 * (v39 * a3) + (v46 * (v40 + v44)) + 2 * v59);
      v65 = a3 - v59;
      do
      {
        v66 = *v64++;
        v50 += v66;
        --v65;
      }

      while (v65);
LABEL_53:
      v45 += (v50 + v17) / a3;
      ++v44;
      v48 = v49 + v46;
      if (v44 == v7)
      {
        v42 = (v45 + v18) / v7;
        if (v42 >= 0xFFFF)
        {
          v42 = 0xFFFF;
        }

        *v41++ = v42 & ~(v42 >> 31);
        ++v39;
        v38 += a3;
        if (v39 < v14)
        {
          goto LABEL_48;
        }

        v37 = v67 + 1;
        v35 -= v7;
        v36 += v7;
        if (v67 + 1 >= v16)
        {
          return 1;
        }

        goto LABEL_43;
      }
    }

    v50 = 0;
    v51 = 0;
LABEL_60:
    v60 = v50;
    v61 = (v47 + v49 + 2 * v51);
    v62 = v51 - (a3 & 0x7FFFFFFC);
    do
    {
      v63 = *v61++;
      v60 = vaddw_u16(v60, v63);
      v62 += 4;
    }

    while (v62);
    v50 = vaddvq_s32(v60);
    v59 = a3 & 0x7FFFFFFC;
    if (v59 == a3)
    {
      goto LABEL_53;
    }

    goto LABEL_63;
  }

  return 1;
}

uint64_t simResizeVisPipeArea(uint64_t *a1, uint64_t *a2, uint64_t *a3, float a4, float a5, float a6, float a7)
{
  v9 = *(a2 + 3);
  v73 = *(a2 + 2);
  v79 = *(a1 + 2);
  if (v79)
  {
    v10 = *(a1 + 3);
    if (!v10)
    {
      goto LABEL_87;
    }

    if (!*(a3 + 3))
    {
      goto LABEL_88;
    }

    if (v9)
    {
      v11 = 0;
      v12 = vcvtas_u32_f32(65536.0 / a4);
      LODWORD(v7) = vcvtas_u32_f32(a4 * 65536.0);
      v8 = vcvtas_u32_f32(a6 * 8.0) << 13;
      v77 = *a1;
      v75 = *(a1 + 4);
      v13 = *a3;
      v14 = v10 - 1;
      v15 = *(a3 + 4);
      while (v11 < *(a1 + 2))
      {
        if (v11 >= *(a3 + 2))
        {
          goto LABEL_88;
        }

        v16 = 0;
        v17 = v77 + (v75 * v11);
        v18 = (v13 + (v15 * v11));
        v19 = v8 + v12;
        v20 = v8;
        do
        {
          v24 = HIWORD(v20);
          v25 = HIWORD(v20) + 1;
          v26 = 0x10000 - v20;
          v20 += v12;
          v27 = HIWORD(v20);
          if (v14 >= v24)
          {
            v28 = v24;
          }

          else
          {
            v28 = v14;
          }

          v29 = v26 * *(v17 + 2 * v28);
          if (v25 < v27)
          {
            v30 = ~v24;
            v31 = v30 + ((v8 + v12 + v16 * v12) >> 16);
            if (v31 <= 1)
            {
              goto LABEL_92;
            }

            v32 = 0;
            v33 = (v30 + HIWORD(v19)) & 0xFFFFFFFE;
            v34 = v25;
            v25 += v31 & 0xFFFFFFFE;
            do
            {
              if (v14 >= v34)
              {
                v35 = v34;
              }

              else
              {
                v35 = v14;
              }

              if (v14 >= v34 + 1)
              {
                v36 = v34 + 1;
              }

              else
              {
                v36 = v14;
              }

              v29 += *(v17 + 2 * v35) << 16;
              v32 += *(v17 + 2 * v36) << 16;
              v34 += 2;
              v33 -= 2;
            }

            while (v33);
            v29 += v32;
            if (v31 != (v31 & 0xFFFFFFFE))
            {
LABEL_92:
              do
              {
                if (v14 >= v25)
                {
                  v37 = v25;
                }

                else
                {
                  v37 = v14;
                }

                v29 += *(v17 + 2 * v37) << 16;
                ++v25;
              }

              while (v25 < v27);
            }
          }

          if (v14 >= v27)
          {
            v21 = HIWORD(v20);
          }

          else
          {
            v21 = v14;
          }

          v22 = *(v17 + 2 * v21);
          v23 = ((v29 + v20 * v22) * v7 + (((v29 + v20 * v22) * v7) >> 63) + 0x80000000) >> 32;
          if (v23 >= 0xFFFF)
          {
            v23 = 0xFFFFLL;
          }

          *v18++ = v23 & ~(v23 >> 63);
          ++v16;
          v19 += v12;
        }

        while (v16 != v9);
        if (++v11 == v79)
        {
          goto LABEL_44;
        }
      }

LABEL_87:
      simResizeVisPipeBinning();
    }

    v38 = *(a3 + 2);
    if (v79 > v38)
    {
      if (v38 >= v79 - 1)
      {
        v39 = v79 - 1;
      }

      else
      {
        v39 = *(a3 + 2);
      }

      if (v39 >= v79)
      {
        v40 = *(a1 + 2);
      }

      else
      {
        v40 = v39;
      }

      if (v79 <= v39)
      {
        goto LABEL_87;
      }

      if (v38 == v40)
      {
LABEL_88:
        simResizeVisPipeBinning();
      }
    }
  }

LABEL_44:
  if (v73)
  {
    if (v9)
    {
      v41 = 0;
      v42 = 0;
      v43 = vcvtas_u32_f32(65536.0 / a5);
      LODWORD(v8) = vcvtas_u32_f32(a5 * 65536.0);
      v76 = *a2;
      v78 = *(a2 + 4);
      v44 = v79 - 1;
      v45 = vcvtas_u32_f32(a7 * 8.0) << 13;
      v46 = *(a3 + 3);
      v47 = v43 + v45;
      while (1)
      {
        v48 = HIWORD(v45);
        if (HIWORD(v45) >= v44)
        {
          v49 = v79 - 1;
        }

        else
        {
          v49 = HIWORD(v45);
        }

        v50 = HIWORD(v47);
        if (HIWORD(v47) >= v44)
        {
          v50 = v79 - 1;
        }

        if (v42 >= *(a2 + 2))
        {
          break;
        }

        v51 = v45 + v43;
        v52 = (v45 + v43) >> 16;
        v53 = 0x10000 - v45;
        if (v44 >= v48)
        {
          v54 = v48;
        }

        else
        {
          v54 = v79 - 1;
        }

        v55 = *a3;
        v56 = *(a3 + 4);
        v57 = v48 + 1;
        if (v44 >= v52)
        {
          v58 = HIWORD(v51);
        }

        else
        {
          v58 = v79 - 1;
        }

        if (v57 < v52)
        {
          v59 = 0;
          v60 = (v76 + (v78 * v42));
          while (v59 < v46)
          {
            v61 = *(a3 + 2);
            if (v61 <= v54)
            {
              break;
            }

            v62 = v53 * *(v55 + v56 * v54 + 2 * v59);
            v63 = v57;
            do
            {
              if (v44 >= v63)
              {
                v64 = v63;
              }

              else
              {
                v64 = v79 - 1;
              }

              if (v61 <= v64)
              {
                simResizeVisPipeBinning();
              }

              v62 += *(v55 + 2 * v59 + v64 * v56) << 16;
              ++v63;
            }

            while (v63 < v52);
            if (v61 <= v58)
            {
              goto LABEL_86;
            }

            v65 = (v62 + v51 * *(v55 + v56 * v58 + 2 * v59)) * v8;
            v66 = (v65 + (v65 >> 63) + 0x80000000) >> 32;
            if (v66 >= 0xFFFF)
            {
              v66 = 0xFFFFLL;
            }

            *v60++ = v66 & ~(v66 >> 63);
            if (++v59 == v9)
            {
              goto LABEL_47;
            }
          }

LABEL_85:
          simResizeVisPipeBinning();
        }

        v67 = 0;
        v68 = v55 + v56 * v49;
        v69 = v55 + v56 * v50;
        do
        {
          if (v67 >= v46)
          {
            goto LABEL_85;
          }

          v70 = *(a3 + 2);
          if (v70 <= v54)
          {
            goto LABEL_85;
          }

          if (v70 <= v58)
          {
LABEL_86:
            simResizeVisPipeBinning();
          }

          v71 = (v8 * (v53 * *(v68 + 2 * v67) + v51 * *(v69 + 2 * v67)) + 0x80000000) >> 32;
          if (v71 >= 0xFFFF)
          {
            LOWORD(v71) = -1;
          }

          *(v76 + v41 + 2 * v67++) = v71;
        }

        while (v9 != v67);
LABEL_47:
        ++v42;
        v47 += v43;
        v41 += v78;
        v45 = v51;
        if (v42 == v73)
        {
          return 1;
        }
      }
    }

    simResizeVisPipeBinning();
  }

  return 1;
}