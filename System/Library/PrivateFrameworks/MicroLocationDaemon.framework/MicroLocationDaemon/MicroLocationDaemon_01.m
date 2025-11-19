void sub_259008F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *__p, char *a13, uint64_t a14, char a15)
{
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void *std::vector<ULPointLocation>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULPointLocation>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<std::shared_ptr<ULTrajectoryPoint>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ULTrajectoryPoint>>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

float ULHomeSlamLocalizationPipeline::getMovement(float32x2_t *this, const ULPointLocation *a2, const ULPointLocation *a3)
{
  v7 = vsub_f32(*&a2->var0, *this);
  v5 = (atan2f(v7.f32[1], v7.f32[0]) * 180.0) / 3.1416;
  atan2f(a2->var2 - this[1].f32[0], sqrtf(vaddv_f32(vmul_f32(v7, v7))));
  return v5;
}

void ULHomeSlamLocalizationPipeline::getPointsVector(float32x2_t *a1, float32x2_t *a2, uint64_t a3, const void **a4, double a5)
{
  v5 = *(a3 + 224);
  if (v5)
  {
    v8 = 0;
    *&a5 = (v5 - 1);
    v9 = vdiv_f32(vsub_f32(*a2, *a1), vdup_lane_s32(*&a5, 0));
    v10 = (a2[1].f32[0] - a1[1].f32[0]) / *&a5;
    v11 = a4[1];
    do
    {
      v12 = vmla_n_f32(*a1, v9, v8);
      v13 = a1[1].f32[0] + (v8 * v10);
      v14 = a4[2];
      if (v11 >= v14)
      {
        v15 = *a4;
        v16 = v11 - *a4;
        v17 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 2) + 1;
        if (v17 > 0x1555555555555555)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v18 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 2);
        if (2 * v18 > v17)
        {
          v17 = 2 * v18;
        }

        if (v18 >= 0xAAAAAAAAAAAAAAALL)
        {
          v19 = 0x1555555555555555;
        }

        else
        {
          v19 = v17;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ULPointLocation>>(a4, v19);
        }

        v20 = 4 * (v16 >> 2);
        *v20 = v12;
        *(v20 + 8) = v13;
        v11 = (v20 + 12);
        v21 = v20 - v16;
        memcpy((v20 - v16), v15, v16);
        v22 = *a4;
        *a4 = v21;
        a4[1] = v11;
        a4[2] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *v11 = v12;
        v11[1].f32[0] = v13;
        v11 = (v11 + 12);
      }

      a4[1] = v11;
      ++v8;
    }

    while (v5 != v8);
  }
}

void std::vector<std::shared_ptr<ULTrajectoryPoint>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

uint64_t ULHomeSlamLocalizationPipeline::getPointROI(float *a1, uint64_t *a2, float a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a1[1];
  v6 = a1[2];
  v8 = 0xFFFFFFFFLL;
  v9 = 0.0;
  v10 = *a1;
  do
  {
    v11 = *v3;
    v12 = *(v3 + 8);
    while (v11 != v12)
    {
      if (vabds_f32(v6, v11[2]) < 0.5)
      {
        v13 = hypotf(v10 - *v11, v7 - v11[1]);
        if (v13 < a3 && (v8 == -1 || v13 < v9))
        {
          v8 = *(v3 + 24);
          v9 = v13;
        }
      }

      v11 += 60;
    }

    v3 += 32;
  }

  while (v3 != v4);
  return v8;
}

void ULHomeSlamLocalizationPipeline::calcDirectionalProximityScore(ULHomeSlamLocalizationPipeline *a1, int32x2_t *a2, ULPointLocation *a3, uint64_t a4)
{
  v7 = ULHomeSlamLocalizationPipeline::geoDistULPoints(a1, a3, a3);
  if (v7 <= *(a4 + 12))
  {
    v9 = *&a3[1].var0;
    v9.i32[1] = LODWORD(a3[1].var2);
    v10 = vsub_f32(vdup_lane_s32(*a2, 0), v9);
    v19 = v10.f32[0];
    v20 = *&a3[1].var1;
    v21 = vdup_lane_s32(*(a4 + 20), 0);
    fmodf(v10.f32[1], *&v21.i32[1]);
    fmodf(v19, *v21.i32);
    __asm
    {
      FMOV            V2.2S, #30.0
      FMOV            V3.2S, #1.0
    }

    v8 = a2 + 1;
    vld1_dup_f32(v8);
    var0 = a3[2].var0;
    __asm { FMOV            V6.2S, #20.0 }

    if (v7 >= 0.5)
    {
      expf(-(*(a4 + 16) * v7));
    }
  }
}

BOOL ULHomeSlamLocalizationPipeline::didParticlesDiverge(uint64_t *a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    ULHomeSlamLocalizationPipeline::ingestValidIOUpdate();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    *v18 = 0;
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEBUG, "#HomeSlam, checking divergence", v18, 2u);
  }

  v6 = *a1;
  v5 = a1[1];
  *v19 = *a2;
  *(&v19[1] + 6) = *(a2 + 14);
  v20 = *(a2 + 32);
  v21 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  memset(v22, 0, sizeof(v22));
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v22, v7, v8, (v8 - v7) >> 3);
  memset(v23, 0, sizeof(v23));
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v23, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 3);
  memset(v24, 0, 24);
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v24, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
  v24[3] = *(a2 + 120);
  v25 = *(a2 + 128);
  memset(v26, 0, sizeof(v26));
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v26, *(a2 + 136), *(a2 + 144), (*(a2 + 144) - *(a2 + 136)) >> 3);
  memset(v27, 0, sizeof(v27));
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v27, *(a2 + 160), *(a2 + 168), (*(a2 + 168) - *(a2 + 160)) >> 3);
  memset(v28, 0, sizeof(v28));
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v28, *(a2 + 184), *(a2 + 192), (*(a2 + 192) - *(a2 + 184)) >> 3);
  v9 = *(a2 + 224);
  v29 = *(a2 + 208);
  v30 = v9;
  v31 = *(a2 + 240);
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__value_func[abi:ne200100](v32, a2 + 256);
  v32[2] = *(a2 + 288);
  v10 = *(a2 + 312);
  v33 = *(a2 + 304);
  v34 = v10;
  v11 = *(a2 + 336);
  v35 = *(a2 + 320);
  v36 = v11;
  v37 = *(a2 + 352);
  if (v6 == v5)
  {
    v14 = 1;
  }

  else
  {
    v12 = v6 + 20;
    do
    {
      v13 = *(v12 - 8);
      v14 = v13 <= *&v29;
      v15 = v13 > *&v29 || v12 == v5;
      v12 += 20;
    }

    while (!v15);
  }

  ULHomeSlamSettings::~ULHomeSlamSettings(v19);
  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_259009798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  ULHomeSlamFpLikelihoodSettings::~ULHomeSlamFpLikelihoodSettings((v33 + 120));
  ULHomeSlamFpLikelihoodSettings::~ULHomeSlamFpLikelihoodSettings((v32 + 32));
  _Unwind_Resume(a1);
}

void ULHomeSlamLocalizationPipeline::resetParticles(ULHomeSlamLocalizationPipeline *this, ULHomeSlamLocalizerState *a2, const ULHomeSlamModel *a3)
{
  if ((*(ULHomeSlamModel::getTrajectoryPointCloud(a2) + 32) & 1) == 0)
  {
    ULHomeSlamLocalizationPipeline::resetParticles();
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULHomeSlamLocalizationPipeline::ingestValidIOUpdate();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "#HomeSlam, reseting particles!", buf, 2u);
  }

  boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::seed(buf, this + 104);
  TrajectoryPointCloud = ULHomeSlamModel::getTrajectoryPointCloud(a2);
  if ((*(TrajectoryPointCloud + 32) & 1) == 0)
  {
LABEL_22:
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  ULTrajectoryPointCloud::getAllPoints(TrajectoryPointCloud, &v18);
  if (v19 == v18)
  {
    ULHomeSlamLocalizationPipeline::resetParticles(v13);

    abort_report_np();
    __break(1u);
    goto LABEL_22;
  }

  v17[0] = 0;
  v17[1] = -1227133513 * ((v19 - v18) >> 2) - 1;
  __p = 0;
  v15 = 0;
  v16 = 0;
  if (*(this + 59) < 1)
  {
    v10 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = std::uniform_int_distribution<int>::operator()<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(v17, buf, v17);
      v9 = v18 + 28 * v8;
      v13[0] = *v9;
      *(v13 + 12) = *(v9 + 12);
      *&v11 = *&v13[0];
      v12 = 0;
      *(&v11 + 1) = DWORD2(v13[0]);
      std::vector<ULParticle>::push_back[abi:ne200100](&__p, &v11);
      ++v7;
    }

    while (v7 < *(this + 59));
    v10 = __p;
  }

  if ((this + 392) != &__p)
  {
    std::vector<ULParticle>::__assign_with_size[abi:ne200100]<ULParticle*,ULParticle*>(this + 49, v10, v15, 0xCCCCCCCCCCCCCCCDLL * ((v15 - v10) >> 2));
    v10 = __p;
  }

  *(this + 456) = 1;
  *(this + 55) = 0;
  *(this + 112) = 0;
  *(this + 468) = 0;
  if (v10)
  {
    v15 = v10;
    operator delete(v10);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

void sub_259009A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void ULHomeSlamLocalizationPipeline::resampleParticles()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  if (onceToken_MicroLocation_Default != -1)
  {
    ULHomeSlamLocalizationPipeline::ingestValidIOUpdate();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEBUG, "#HomeSlam, resampling particles with likelihood", buf, 2u);
  }

  buf[0] = v6;
  v9 = 1;
  v10 = v6;
  do
  {
    v10 = v9 + 1812433253 * (v10 ^ (v10 >> 30));
    buf[v9++] = v10;
  }

  while (v9 != 624);
  v44 = 624;
  boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::normalize_state(buf);
  v41[0] = v6;
  for (i = 1; i != 624; ++i)
  {
    v6 = i + 1812433253 * (v6 ^ (v6 >> 30));
    v41[i] = v6;
  }

  v42 = 624;
  boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::normalize_state(v41);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  __src = 0;
  v36 = 0;
  v37 = 0;
  v12 = *v7;
  v13 = v7[1];
  if (*v7 != v13)
  {
    v14 = 0;
    do
    {
      v15 = v12[3];
      if (v14 >= v37)
      {
        v16 = __src;
        v17 = v14 - __src;
        v18 = (v14 - __src) >> 2;
        v19 = v18 + 1;
        if ((v18 + 1) >> 62)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v20 = v37 - __src;
        if ((v37 - __src) >> 1 > v19)
        {
          v19 = v20 >> 1;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v21 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(&__src, v21);
        }

        v22 = (v14 - __src) >> 2;
        v23 = (4 * v18);
        v24 = (4 * v18 - 4 * v22);
        *v23 = v15;
        v14 = (v23 + 1);
        memcpy(v24, v16, v17);
        v25 = __src;
        __src = v24;
        v36 = v14;
        v37 = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v14 = v15;
        v14 += 4;
      }

      v36 = v14;
      v12 += 5;
    }

    while (v12 != v13);
  }

  boost::random::discrete_distribution<int,double>::discrete_distribution<std::vector<float>>(__p, &__src);
  if (v4 >= 1)
  {
    do
    {
      v26 = boost::random::discrete_distribution<int,double>::operator()<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(__p, buf);
      if (v2)
      {
        boost::random::detail::generate_uniform_real<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,double>(v41, 0.0, 6.28318531);
        v28 = v27;
        v29 = *v7;
      }

      else
      {
        v29 = *v7;
        v28 = *(*v7 + 5 * v26 + 4);
      }

      v30 = &v29[20 * v26];
      v31 = *v30;
      LODWORD(v30) = *(v30 + 2);
      *&v32 = v31;
      *(&v32 + 1) = v30;
      v33 = v28;
      std::vector<ULParticle>::push_back[abi:ne200100](&v38, &v32);
      --v4;
    }

    while (v4);
  }

  if (&v38 != v7)
  {
    std::vector<ULParticle>::__assign_with_size[abi:ne200100]<ULParticle*,ULParticle*>(v7, v38, v39, 0xCCCCCCCCCCCCCCCDLL * ((v39 - v38) >> 2));
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (__src)
  {
    v36 = __src;
    operator delete(__src);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

void sub_259009D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void ULHomeSlamLocalizationPipeline::initState(ULHomeSlamLocalizationPipeline *this@<X0>, ULHomeSlamLocalizerState *a2@<X8>)
{
  AnchorsAppearanceMap = ULHomeSlamModel::getAnchorsAppearanceMap(this);
  ULHomeSlamLocalizerState::ULHomeSlamLocalizerState(a2, AnchorsAppearanceMap);
  if (ULHomeSlamModel::getWorkMode(this))
  {
    ULHomeSlamLocalizationPipeline::resetParticles(a2, this, v6);
  }
}

void std::vector<ULParticle>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0xCCCCCCCCCCCCCCCLL)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x666666666666666)
    {
      v11 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULParticle>>(a1, v11);
    }

    v12 = 20 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 4);
    *v12 = v13;
    v7 = 20 * v8 + 20;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 4);
    *v5 = v6;
    v7 = v5 + 20;
  }

  *(a1 + 8) = v7;
}

uint64_t boost::random::discrete_distribution<int,double>::operator()<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if (*a1 == v2)
  {
    boost::random::discrete_distribution<int,double>::operator()<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>();
  }

  v3 = (v2 - *a1) >> 4;
  if (v3 - 1 < 0)
  {
    boost::random::discrete_distribution<int,double>::operator()<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>();
  }

  v6 = boost::random::detail::generate_uniform_int<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,int>(a2, 0, (v3 - 1));
  boost::random::detail::new_uniform_01<double>::operator()<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v10, a2);
  v7 = *a1 + 16 * v6;
  if (v8 >= *v7)
  {
    return *(v7 + 8);
  }

  return v6;
}

void ULHomeSlamLocalizationPipeline::clusterParticles(const ULPointLocation **a1, void *a2, void *a3, uint64_t a4, int16x4_t a5)
{
  v56[4] = *MEMORY[0x277D85DE8];
  v53 = 0;
  v54 = 0;
  v51 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 2);
  v52 = 0;
  LODWORD(__p[0]) = 0;
  std::vector<float>::resize(&v52, (v51 + v51 * v51) >> 1, __p, a5);
  v7 = v51;
  if (v51)
  {
    v8 = 0;
    v9 = 0;
    v10 = *a1;
    v46 = v52;
    v11 = 2;
    do
    {
      v12 = v10 + 20 * v9;
      *__p = *v12;
      v50 = *(v12 + 4);
      if (v9)
      {
        v13 = 0;
        v14 = v9 + 1;
        v15 = v10;
        do
        {
          v46[(v8 >> 1) + v13++] = ULHomeSlamLocalizationPipeline::geoDistULPoints(__p, v15, v6);
          v15 = (v15 + 20);
        }

        while (v9 != v13);
      }

      else
      {
        v14 = 1;
      }

      ++v9;
      v8 += v11;
      v11 += 2;
    }

    while (v14 != v7);
  }

  v56[0] = &unk_286A54628;
  v56[1] = CLHierarchicalClustering::averageLinkage;
  v56[3] = v56;
  CLHierarchicalClustering::CLHierarchicalClustering(__p, &v51, v56);
  std::__function::__value_func<float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::~__value_func[abi:ne200100](v56);
  CLHierarchicalClustering::getClusterLabels(__p, a2, 0, 2.0, 0.0);
  v17 = *a1;
  v16 = a1[1];
  if (v16 == *a1)
  {
    goto LABEL_19;
  }

  v18 = 0;
  do
  {
    v19 = *(*a2 + 8 * v18);
    v48 = v19;
    v20 = a3[1];
    if (!v20)
    {
LABEL_16:
      v55 = &v48;
      *(std::__tree<std::__value_type<unsigned long,int>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,int>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a3, &v48) + 10) = 1;
      goto LABEL_18;
    }

    while (1)
    {
      v21 = v20[4];
      if (v19 >= v21)
      {
        break;
      }

LABEL_15:
      v20 = *v20;
      if (!v20)
      {
        goto LABEL_16;
      }
    }

    if (v21 < v19)
    {
      ++v20;
      goto LABEL_15;
    }

    v55 = &v48;
    v22 = std::__tree<std::__value_type<unsigned long,int>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,int>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a3, &v48);
    ++*(v22 + 10);
LABEL_18:
    ++v18;
    v17 = *a1;
    v16 = a1[1];
  }

  while (v18 < 0xCCCCCCCCCCCCCCCDLL * ((v16 - *a1) >> 2));
LABEL_19:
  if (v16 == v17)
  {
    goto LABEL_29;
  }

  v23 = 0;
  while (2)
  {
    v24 = *(*a2 + 8 * v23);
    v48 = v24;
    v25 = *(a4 + 8);
    if (!v25)
    {
LABEL_26:
      v55 = &v48;
      v27 = std::__tree<std::__value_type<unsigned long,ULPointLocation>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,ULPointLocation>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,ULPointLocation>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a4, &v48);
      v28 = (v17 + 20 * v23);
      v29 = *v28;
      *(v27 + 12) = *(v28 + 2);
      v27[5] = v29;
      v17 = *a1;
      goto LABEL_28;
    }

    while (2)
    {
      v26 = v25[4];
      if (v24 < v26)
      {
LABEL_25:
        v25 = *v25;
        if (!v25)
        {
          goto LABEL_26;
        }

        continue;
      }

      break;
    }

    if (v26 < v24)
    {
      ++v25;
      goto LABEL_25;
    }

    v55 = &v48;
    v30 = std::__tree<std::__value_type<unsigned long,ULPointLocation>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,ULPointLocation>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,ULPointLocation>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a4, &v48);
    v17 = *a1;
    v31 = (*a1 + 20 * v23);
    v32 = v31[1].f32[0];
    v30[5] = vadd_f32(*v31, v30[5]);
    v30[6].f32[0] = v32 + v30[6].f32[0];
LABEL_28:
    if (++v23 < 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - v17) >> 2))
    {
      continue;
    }

    break;
  }

LABEL_29:
  v33 = *a3;
  if (*a3 != a3 + 1)
  {
    do
    {
      v34 = *(v33 + 10);
      v55 = v33 + 4;
      v35 = std::__tree<std::__value_type<unsigned long,ULPointLocation>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,ULPointLocation>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,ULPointLocation>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a4, v33 + 4);
      v35[10] = v35[10] / v34;
      v36 = *(v33 + 10);
      v55 = v33 + 4;
      v37 = std::__tree<std::__value_type<unsigned long,ULPointLocation>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,ULPointLocation>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,ULPointLocation>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a4, v33 + 4);
      v37[11] = v37[11] / v36;
      v38 = *(v33 + 10);
      v55 = v33 + 4;
      v39 = std::__tree<std::__value_type<unsigned long,ULPointLocation>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,ULPointLocation>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,ULPointLocation>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a4, v33 + 4);
      v39[12] = v39[12] / v38;
      v40 = v33[1];
      if (v40)
      {
        do
        {
          v41 = v40;
          v40 = *v40;
        }

        while (v40);
      }

      else
      {
        do
        {
          v41 = v33[2];
          v42 = *v41 == v33;
          v33 = v41;
        }

        while (!v42);
      }

      v33 = v41;
    }

    while (v41 != a3 + 1);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  v43 = *MEMORY[0x277D85DE8];
}

void sub_25900A428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void ULPointLocation::str(ULPointLocation *this@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v21, this->var0);
  v4 = std::string::insert(&v21, 0, "(", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v22.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v22.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v22, ",", 1uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v20, this->var1);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v20;
  }

  else
  {
    v8 = v20.__r_.__value_.__r.__words[0];
  }

  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v20.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v23, v8, size);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v24, ",", 1uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v19, this->var2);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v19.__r_.__value_.__l.__size_;
  }

  v16 = std::string::append(&v25, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v26, ")", 1uLL);
  *a2 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_25900A680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 41) < 0)
  {
    operator delete(*(v40 - 64));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 73) < 0)
  {
    operator delete(*(v40 - 96));
  }

  if (*(v40 - 105) < 0)
  {
    operator delete(*(v40 - 128));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_2()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::vector<ULParticle>::__init_with_size[abi:ne200100]<ULParticle*,ULParticle*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULParticle>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25900A7E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ULParticle>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULParticle>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULParticle>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<ULPhotoFeaturesDO>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<ULPhotoFeaturesDO>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 32);
      v4 -= 32;
      v5 = v6;
      if (v6)
      {
        *(v2 - 24) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(uint64_t a1)
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

uint64_t std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v2 + 4));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_286A545E8[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJyN5boost5uuids4uuidENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSI_1EJySA_SG_EEEEEEDcSK_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void CLMicroLocationFingerprint::CLMicroLocationFingerprint(CLMicroLocationFingerprint *this, const CLMicroLocationFingerprint *a2)
{
  v4 = std::unordered_set<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::unordered_set(this, a2);
  v5 = *(a2 + 40);
  *(v4 + 56) = *(a2 + 7);
  *(v4 + 40) = v5;
  std::unordered_set<CLMicroLocationProto::DataType>::unordered_set(v4 + 64, a2 + 64);
  std::unordered_map<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>::unordered_map(this + 104, a2 + 104);
  v6 = *(a2 + 9);
  v7 = *(a2 + 40);
  *(this + 21) = 0;
  *(this + 40) = v7;
  *(this + 9) = v6;
  *(this + 22) = 0;
  *(this + 23) = 0;
  std::vector<CLMicroLocationProto::ConfidenceReason>::__init_with_size[abi:ne200100]<CLMicroLocationProto::ConfidenceReason*,CLMicroLocationProto::ConfidenceReason*>(this + 168, *(a2 + 21), *(a2 + 22), (*(a2 + 22) - *(a2 + 21)) >> 2);
  v8 = *(a2 + 192);
  *(this + 25) = 0;
  *(this + 192) = v8;
  *(this + 26) = 0;
  *(this + 27) = 0;
  std::vector<ULPhotoFeaturesDO>::__init_with_size[abi:ne200100]<ULPhotoFeaturesDO*,ULPhotoFeaturesDO*>(this + 200, *(a2 + 25), *(a2 + 26), (*(a2 + 26) - *(a2 + 25)) >> 5);
}

void sub_25900AB3C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 176) = v4;
    operator delete(v4);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v1 + 104);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v1 + 64);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__emplace_unique_key_args<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement const&>(a1, (i + 2));
  }

  return a1;
}

void std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

void *std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__emplace_unique_key_args<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement const&>(void *a1, uint64_t a2)
{
  v4 = CLMicroLocationFingerprint::Measurement::HashMeasurement::operator()(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__construct_node_hash<CLMicroLocationFingerprint::Measurement const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if ((CLMicroLocationFingerprint::Measurement::PredicateMeasurement::operator()(a1, (v11 + 2), a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25900B09C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_286A54600[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJyN5boost5uuids4uuidENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISH_LNS0_6_TraitE1EEEEEvRSI_OT_EUlSR_E_JRKNS0_6__baseILSL_1EJySA_SG_EEEEEEDcSQ_DpT0_(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJyN5boost5uuids4uuidENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISH_LNS0_6_TraitE1EEEEEvRSI_OT_EUlSR_E_JRKNS0_6__baseILSL_1EJySA_SG_EEEEEEDcSQ_DpT0_(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

uint64_t std::unordered_set<CLMicroLocationProto::DataType>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,CLMicroLocationProto::DataType const&>(a1, i + 4);
  }

  return a1;
}

uint64_t *std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,CLMicroLocationProto::DataType const&>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::unordered_map<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::pair<CLMicroLocationProto::DataType const,CLMicroLocationFingerprint::StartAndEndTimestamps> const&>(a1, i + 4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::pair<CLMicroLocationProto::DataType const,CLMicroLocationFingerprint::StartAndEndTimestamps> const&>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::vector<CLMicroLocationProto::ConfidenceReason>::__init_with_size[abi:ne200100]<CLMicroLocationProto::ConfidenceReason*,CLMicroLocationProto::ConfidenceReason*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CLMicroLocationProto::ConfidenceReason>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25900B834(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CLMicroLocationProto::ConfidenceReason>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<ULPhotoFeaturesDO>::__init_with_size[abi:ne200100]<ULPhotoFeaturesDO*,ULPhotoFeaturesDO*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULPhotoFeaturesDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25900B93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ULPhotoFeaturesDO>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULPhotoFeaturesDO>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULPhotoFeaturesDO>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULPhotoFeaturesDO>,ULPhotoFeaturesDO*,ULPhotoFeaturesDO*,ULPhotoFeaturesDO*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *v6, v6[1], (v6[1] - *v6) >> 2);
      v4[3] = v6[3];
      v6 += 4;
      v4 = v11 + 4;
      v11 += 4;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULPhotoFeaturesDO>,ULPhotoFeaturesDO*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CLMicroLocationProto::ConfidenceReason>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25900BAFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULPhotoFeaturesDO>,ULPhotoFeaturesDO*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<ULPhotoFeaturesDO>,ULPhotoFeaturesDO*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<ULPhotoFeaturesDO>,ULPhotoFeaturesDO*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 32);
      v3 -= 32;
      v4 = v5;
      if (v5)
      {
        *(v1 - 24) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULPointLocation>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ULTrajectoryPoint>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<ULTrajectoryPoint>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<ULTrajectoryPoint>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<ULTrajectoryPoint>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<ULTrajectoryPoint>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void ULHomeSlamLocalizerState::ULHomeSlamLocalizerState(ULHomeSlamLocalizerState *this, const CLMicroLocationAnchorAppearanceMap *a2)
{
  std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(v5, a2);
  v6 = *(a2 + 40);
  ULHomeSlamSettings::ULHomeSlamSettings(this, v5);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v5);
  *(this + 360) = 0;
  *(this + 384) = 0;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 49) = 0;
  *(this + 104) = 1;
  *(this + 424) = 0;
  *(this + 432) = 0;
  v4 = *(this + 82);
  *(this + 55) = 0;
  *(this + 112) = 0;
  *(this + 113) = v4;
  *(this + 456) = 1;
  *(this + 460) = 0;
  *(this + 464) = 0;
  *(this + 468) = 0;
}

void sub_25900BE1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,CLMicroLocationAnchorAppearance> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,CLMicroLocationAnchorAppearance> const&>(void *a1, void *a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2;
    if (v2 >= *&v4)
    {
      v6 = v2 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v8;
}

uint64_t ULHomeSlamSettings::ULHomeSlamSettings(uint64_t a1, uint64_t a2)
{
  v249 = *MEMORY[0x277D85DE8];
  v3 = +[ULDefaultsSingleton shared];
  v4 = [v3 defaultsDictionary];

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapRotationRandomNoiseSigma"];
  v6 = [v4 objectForKey:v5];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v6 floatValue];
  }

  else
  {
    [&unk_286A72B40 floatValue];
  }

  v8 = v7;

  *a1 = v8;
  v9 = +[ULDefaultsSingleton shared];
  v10 = [v9 defaultsDictionary];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamIORandomNoiseXYSigma"];
  v12 = [v10 objectForKey:v11];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v12 floatValue];
  }

  else
  {
    [&unk_286A72B60 floatValue];
  }

  v14 = v13;

  *(a1 + 4) = v14;
  v15 = +[ULDefaultsSingleton shared];
  v16 = [v15 defaultsDictionary];

  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamIORandomNoiseZSigma"];
  v18 = [v16 objectForKey:v17];
  if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v18 floatValue];
  }

  else
  {
    [&unk_286A72B20 floatValue];
  }

  v20 = v19;

  *(a1 + 8) = v20;
  v21 = +[ULDefaultsSingleton shared];
  v22 = [v21 defaultsDictionary];

  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMaxDistFromTrajectories"];
  v24 = [v22 objectForKey:v23];
  if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v24 floatValue];
  }

  else
  {
    [&unk_286A72B70 floatValue];
  }

  v26 = v25;

  *(a1 + 12) = v26;
  v27 = +[ULDefaultsSingleton shared];
  v28 = [v27 defaultsDictionary];

  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamGaussianSmoothingAlpha"];
  v30 = [v28 objectForKey:v29];
  if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v30 floatValue];
  }

  else
  {
    [&unk_286A72B80 floatValue];
  }

  v32 = v31;

  *(a1 + 16) = v32;
  v33 = +[ULDefaultsSingleton shared];
  v34 = [v33 defaultsDictionary];

  v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMaxAzimuthRange"];
  v36 = [v34 objectForKey:v35];
  if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v36 floatValue];
  }

  else
  {
    [&unk_286A71448 floatValue];
  }

  v38 = v37;

  *(a1 + 20) = v38;
  v39 = +[ULDefaultsSingleton shared];
  v40 = [v39 defaultsDictionary];

  v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamFingerprintDistanceFunctionType"];
  v42 = [v40 objectForKey:v41];
  if (v42 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v43 = [v42 unsignedIntValue];
  }

  else
  {
    v43 = [&unk_286A713B8 unsignedIntValue];
  }

  v44 = v43;

  *(a1 + 24) = v44;
  v45 = +[ULDefaultsSingleton shared];
  v46 = [v45 defaultsDictionary];

  v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveSensorsEnable"];
  v48 = [v46 objectForKey:v47];
  if (v48 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v49 = [v48 BOOLValue];
  }

  else
  {
    v49 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v50 = v49;

  *(a1 + 28) = v50;
  v51 = +[ULDefaultsSingleton shared];
  v52 = [v51 defaultsDictionary];

  v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveAnchorsEnable"];
  v54 = [v52 objectForKey:v53];
  if (v54 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v55 = [v54 BOOLValue];
  }

  else
  {
    v55 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v56 = v55;

  *(a1 + 29) = v56;
  v57 = ULSettings::get<ULSettings::HomeSlamFingerprintDistancePercentile>();
  v58 = +[ULDefaultsSingleton shared];
  v59 = [v58 defaultsDictionary];

  v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamRFDistanceSnapThreshhold"];
  v61 = [v59 objectForKey:v60];
  if (v61 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v61 floatValue];
  }

  else
  {
    [&unk_286A72B60 floatValue];
  }

  v63 = v62;

  v64 = ULSettings::get<ULSettings::HomeSlamGeoDistanceSnapThreshhold>();
  v65 = +[ULDefaultsSingleton shared];
  v66 = [v65 defaultsDictionary];

  v67 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamGeoRFFlatTable"];
  v68 = [v66 objectForKey:v67];
  if (v68 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v68, &v230);
    v246 = v230;
    v69 = v231;
  }

  else
  {
    ULSettings::convert<std::initializer_list<double>,std::vector<double>>(_ZGRN10ULSettings14SettingsTraitsINS_22HomeSlamGeoRFFlatTableEE12defaultValueE_, 0x10uLL, &v230);
    v69 = v231;
    v246 = v230;
  }

  v247 = v69;

  v70 = +[ULDefaultsSingleton shared];
  v71 = [v70 defaultsDictionary];

  v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamRFRangeBins"];
  v73 = [v71 objectForKey:v72];
  if (v73 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v73, &v230);
    *v244 = v230;
    v74 = v231;
  }

  else
  {
    ULSettings::convert<std::initializer_list<double>,std::vector<double>>(_ZGRN10ULSettings14SettingsTraitsINS_19HomeSlamRFRangeBinsEE12defaultValueE_, 4uLL, &v230);
    v74 = v231;
    *v244 = v230;
  }

  v245 = v74;

  v75 = +[ULDefaultsSingleton shared];
  v76 = [v75 defaultsDictionary];

  v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamGeoRFRangeBins"];
  v78 = [v76 objectForKey:v77];
  if (v78 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v78, &v230);
    *__p = v230;
    v79 = v231;
  }

  else
  {
    ULSettings::convert<std::initializer_list<double>,std::vector<double>>(_ZGRN10ULSettings14SettingsTraitsINS_22HomeSlamGeoRFRangeBinsEE12defaultValueE_, 4uLL, &v230);
    v79 = v231;
    *__p = v230;
  }

  v243 = v79;

  ULHomeSlamFpLikelihoodSettings::ULHomeSlamFpLikelihoodSettings(a1 + 32, &v246, v244, __p, v57, v63, v64);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v244[0])
  {
    v244[1] = v244[0];
    operator delete(v244[0]);
  }

  if (v246)
  {
    *(&v246 + 1) = v246;
    operator delete(v246);
  }

  v80 = ULSettings::get<ULSettings::HomeSlamFingerprintDistancePercentile>();
  v81 = +[ULDefaultsSingleton shared];
  v82 = [v81 defaultsDictionary];

  v83 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamVisionDistanceSnapThreshhold"];
  v84 = [v82 objectForKey:v83];
  if (v84 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v84 floatValue];
  }

  else
  {
    [&unk_286A72B10 floatValue];
  }

  v86 = v85;

  v87 = ULSettings::get<ULSettings::HomeSlamGeoDistanceSnapThreshhold>();
  v88 = +[ULDefaultsSingleton shared];
  v89 = [v88 defaultsDictionary];

  v90 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamGeoVisionFlatTable"];
  v91 = [v89 objectForKey:v90];
  if (v91 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v91, &v230);
    *v240 = v230;
    v92 = v231;
  }

  else
  {
    ULSettings::convert<std::initializer_list<double>,std::vector<double>>(_ZGRN10ULSettings14SettingsTraitsINS_26HomeSlamGeoVisionFlatTableEE12defaultValueE_, 6uLL, &v230);
    v92 = v231;
    *v240 = v230;
  }

  v241 = v92;

  v93 = +[ULDefaultsSingleton shared];
  v94 = [v93 defaultsDictionary];

  v95 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamVisionRangeBins"];
  v96 = [v94 objectForKey:v95];
  if (v96 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v96, &v230);
    *v238 = v230;
    v97 = v231;
  }

  else
  {
    ULSettings::convert<std::initializer_list<double>,std::vector<double>>(_ZGRN10ULSettings14SettingsTraitsINS_23HomeSlamVisionRangeBinsEE12defaultValueE_, 3uLL, &v230);
    v97 = v231;
    *v238 = v230;
  }

  v239 = v97;

  v98 = +[ULDefaultsSingleton shared];
  v99 = [v98 defaultsDictionary];

  v100 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamGeoVisionRangeBins"];
  v101 = [v99 objectForKey:v100];
  if (v101 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(v101, &v230);
    *v236 = v230;
    v102 = v231;
  }

  else
  {
    ULSettings::convert<std::initializer_list<double>,std::vector<double>>(&_ZGRN10ULSettings14SettingsTraitsINS_26HomeSlamGeoVisionRangeBinsEE12defaultValueE_, 2uLL, &v230);
    v102 = v231;
    *v236 = v230;
  }

  v237 = v102;

  ULHomeSlamFpLikelihoodSettings::ULHomeSlamFpLikelihoodSettings(a1 + 120, v240, v238, v236, v80, v86, v87);
  if (v236[0])
  {
    v236[1] = v236[0];
    operator delete(v236[0]);
  }

  if (v238[0])
  {
    v238[1] = v238[0];
    operator delete(v238[0]);
  }

  if (v240[0])
  {
    v240[1] = v240[0];
    operator delete(v240[0]);
  }

  v103 = +[ULDefaultsSingleton shared];
  v104 = [v103 defaultsDictionary];

  v105 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamLikelihoodThreshholdForDivergence"];
  v106 = [v104 objectForKey:v105];
  if (v106 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v106 floatValue];
  }

  else
  {
    [&unk_286A71388 floatValue];
  }

  v108 = v107;

  *(a1 + 208) = v108;
  v109 = +[ULDefaultsSingleton shared];
  v110 = [v109 defaultsDictionary];

  v111 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamParticlesClusterMinRelSize"];
  v112 = [v110 objectForKey:v111];
  if (v112 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v112 floatValue];
  }

  else
  {
    [&unk_286A72B00 floatValue];
  }

  v114 = v113;

  *(a1 + 212) = v114;
  v115 = +[ULDefaultsSingleton shared];
  v116 = [v115 defaultsDictionary];

  v117 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMinBlueDotClusterRelSize"];
  v118 = [v116 objectForKey:v117];
  if (v118 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v118 floatValue];
  }

  else
  {
    [&unk_286A72B60 floatValue];
  }

  v120 = v119;

  *(a1 + 216) = v120;
  v121 = +[ULDefaultsSingleton shared];
  v122 = [v121 defaultsDictionary];

  v123 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamTrajectoryVectorPointsCount"];
  v124 = [v122 objectForKey:v123];
  if (v124 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v125 = [v124 unsignedLongValue];
  }

  else
  {
    v125 = [&unk_286A71460 unsignedLongValue];
  }

  v126 = v125;

  *(a1 + 224) = v126;
  v127 = +[ULDefaultsSingleton shared];
  v128 = [v127 defaultsDictionary];

  v129 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamLargeParticleCount"];
  v130 = [v128 objectForKey:v129];
  if (v130 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v131 = [v130 intValue];
  }

  else
  {
    v131 = [&unk_286A71400 intValue];
  }

  v132 = v131;

  *(a1 + 232) = v132;
  v133 = +[ULDefaultsSingleton shared];
  v134 = [v133 defaultsDictionary];

  v135 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamParticleCount"];
  v136 = [v134 objectForKey:v135];
  if (v136 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v137 = [v136 intValue];
  }

  else
  {
    v137 = [&unk_286A713E8 intValue];
  }

  v138 = v137;

  *(a1 + 236) = v138;
  v139 = +[ULDefaultsSingleton shared];
  v140 = [v139 defaultsDictionary];

  v141 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamGeoDistancePercentile"];
  v142 = [v140 objectForKey:v141];
  if (v142 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v142 floatValue];
  }

  else
  {
    [&unk_286A71388 floatValue];
  }

  v144 = v143;

  *(a1 + 240) = v144;
  v145 = +[ULDefaultsSingleton shared];
  v146 = [v145 defaultsDictionary];

  v147 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingWifiRssiEnable"];
  v148 = [v146 objectForKey:v147];
  if (v148 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v149 = [v148 BOOLValue];
  }

  else
  {
    v149 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v150 = v149;

  v151 = +[ULDefaultsSingleton shared];
  v152 = [v151 defaultsDictionary];

  v153 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingBleLeechEnable"];
  v154 = [v152 objectForKey:v153];
  if (v154 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v155 = [v154 BOOLValue];
  }

  else
  {
    v155 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v156 = v155;

  v157 = +[ULDefaultsSingleton shared];
  v158 = [v157 defaultsDictionary];

  v159 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingUwbRangeEnable"];
  v160 = [v158 objectForKey:v159];
  if (v160 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v161 = [v160 BOOLValue];
  }

  else
  {
    v161 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v162 = v161;

  if (v162)
  {
    isUwbRangingSupportedOnDevice = ULHomeNearbyRangingSupport::isUwbRangingSupportedOnDevice(v163);
  }

  else
  {
    isUwbRangingSupportedOnDevice = 0;
  }

  v165 = +[ULDefaultsSingleton shared];
  v166 = [v165 defaultsDictionary];

  v167 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMeasurementProcessingPhotoFeaturesEnable"];
  v168 = [v166 objectForKey:v167];
  if (v168 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v169 = [v168 BOOLValue];
  }

  else
  {
    v169 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v170 = v169;

  *(a1 + 248) = CLMicroLocationUtils::createEnabledTechnologies(v150, v156, isUwbRangingSupportedOnDevice, v170);
  *(a1 + 280) = 0;
  v171 = +[ULDefaultsSingleton shared];
  v172 = [v171 defaultsDictionary];

  v173 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamDistanceReductionFunction"];
  v174 = [v172 objectForKey:v173];
  if (v174 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v175 = [v174 unsignedIntValue];
  }

  else
  {
    v175 = [&unk_286A71430 unsignedIntValue];
  }

  v176 = v175;

  *(a1 + 288) = v176;
  v177 = +[ULDefaultsSingleton shared];
  v178 = [v177 defaultsDictionary];

  v179 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamDistanceReductionFunctionMinPercentile"];
  v180 = [v178 objectForKey:v179];
  if (v180 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v180 doubleValue];
  }

  else
  {
    [&unk_286A72B10 doubleValue];
  }

  v182 = v181;

  *(a1 + 296) = v182;
  v183 = +[ULDefaultsSingleton shared];
  v184 = [v183 defaultsDictionary];

  v185 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamDistanceReductionFunctionMaxPercentile"];
  v186 = [v184 objectForKey:v185];
  if (v186 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v186 doubleValue];
  }

  else
  {
    [&unk_286A72B50 doubleValue];
  }

  v188 = v187;

  *(a1 + 304) = v188;
  v189 = +[ULDefaultsSingleton shared];
  v190 = [v189 defaultsDictionary];

  v191 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamKernelFunctionVision"];
  v192 = [v190 objectForKey:v191];
  if (v192 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v193 = v192;
  }

  else
  {
    v193 = &unk_286A73390;
  }

  *(a1 + 312) = v193;
  v194 = +[ULDefaultsSingleton shared];
  v195 = [v194 defaultsDictionary];

  v196 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamOcteeQueryInitialMemory"];
  v197 = [v195 objectForKey:v196];
  if (v197 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v198 = [v197 unsignedLongValue];
  }

  else
  {
    v198 = [&unk_286A713E8 unsignedLongValue];
  }

  v199 = v198;

  *(a1 + 320) = v199;
  v200 = +[ULDefaultsSingleton shared];
  v201 = [v200 defaultsDictionary];

  v202 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamLocalizerFenceSizeForParticlesCountMeters"];
  v203 = [v201 objectForKey:v202];
  if (v203 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v203 floatValue];
  }

  else
  {
    [&unk_286A71418 floatValue];
  }

  v205 = v204;

  *(a1 + 328) = v205;
  *(a1 + 332) = ULSettings::get<ULSettings::HomeSlamLocalizerRadiusAroundROIPointMeters>();
  *(a1 + 336) = ULSettings::get<ULSettings::HomeSlamLocalizerRadiusAroundROIPointMeters>();
  v206 = +[ULDefaultsSingleton shared];
  v207 = [v206 defaultsDictionary];

  v208 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamVisionProbVectorKnnThreshold"];
  v209 = [v207 objectForKey:v208];
  if (v209 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v209 floatValue];
  }

  else
  {
    [&unk_286A72B90 floatValue];
  }

  v211 = v210;

  *(a1 + 340) = v211;
  v212 = +[ULDefaultsSingleton shared];
  v213 = [v212 defaultsDictionary];

  v214 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamVisionProbVectorKnnNumElements"];
  v215 = [v213 objectForKey:v214];
  if (v215 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v216 = [v215 unsignedLongValue];
  }

  else
  {
    v216 = [&unk_286A713D0 unsignedLongValue];
  }

  v217 = v216;

  *(a1 + 344) = v217;
  v218 = +[ULDefaultsSingleton shared];
  v219 = [v218 defaultsDictionary];

  v220 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamSendParticlesInResult"];
  v221 = [v219 objectForKey:v220];
  if (v221 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v222 = [v221 BOOLValue];
  }

  else
  {
    v222 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v223 = v222;

  *(a1 + 352) = v223;
  v224 = *(a1 + 24);
  v225 = ULSettings::getFingerprintDistanceFunctionParamsForType(v224);
  v234 = *(a1 + 248);
  v235 = *(a1 + 28);
  if (*(a1 + 29) == 1)
  {
    std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(&v230, a2);
    v232 = *(a2 + 40);
    v226 = 1;
  }

  else
  {
    v226 = 0;
    LOBYTE(v230) = 0;
  }

  v233 = v226;
  ULAlgorithms::createLocalizeFingerprintDistanceFunction(v224, v225, &v234, &v230, v248);
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::operator=[abi:ne200100](a1 + 256, v248);
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v248);
  if (v233 == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v230);
  }

  v227 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_25900D9CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100]((v38 + 32));
  ULHomeSlamFpLikelihoodSettings::~ULHomeSlamFpLikelihoodSettings((v38 + 15));
  ULHomeSlamFpLikelihoodSettings::~ULHomeSlamFpLikelihoodSettings((v38 + 4));
  _Unwind_Resume(a1);
}

float ULSettings::get<ULSettings::HomeSlamFingerprintDistancePercentile>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamFingerprintDistancePercentile"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 floatValue];
  }

  else
  {
    [&unk_286A71388 floatValue];
  }

  v5 = v4;

  return v5;
}

float ULSettings::get<ULSettings::HomeSlamGeoDistanceSnapThreshhold>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamGeoDistanceSnapThreshhold"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 floatValue];
  }

  else
  {
    [&unk_286A72B30 floatValue];
  }

  v5 = v4;

  return v5;
}

float ULSettings::get<ULSettings::HomeSlamLocalizerRadiusAroundROIPointMeters>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamLocalizerRadiusAroundROIPointMeters"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 floatValue];
  }

  else
  {
    [&unk_286A713A0 floatValue];
  }

  v5 = v4;

  return v5;
}

void ULHomeSlamFpLikelihoodSettings::~ULHomeSlamFpLikelihoodSettings(ULHomeSlamFpLikelihoodSettings *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    *(this + 6) = v3;
    operator delete(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 3) = v4;
    operator delete(v4);
  }
}

void ULSettings::convert<NSArray<NSNumber *> * {__strong},std::vector<double>>(void *a1@<X0>, const void **a2@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v20 = v3;
  std::vector<double>::reserve(a2, [v3 count]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v20;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v21 + 1) + 8 * i) doubleValue];
        v10 = a2[1];
        v9 = a2[2];
        if (v10 >= v9)
        {
          v12 = *a2;
          v13 = v10 - *a2;
          v14 = v13 >> 3;
          v15 = (v13 >> 3) + 1;
          if (v15 >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v16 = v9 - v12;
          if (v16 >> 2 > v15)
          {
            v15 = v16 >> 2;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a2, v17);
          }

          *(8 * v14) = v8;
          v11 = 8 * v14 + 8;
          memcpy(0, v12, v13);
          v18 = *a2;
          *a2 = 0;
          a2[1] = v11;
          a2[2] = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v10 = v8;
          v11 = (v10 + 8);
        }

        a2[1] = v11;
      }

      v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v19 = *MEMORY[0x277D85DE8];
}

{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v20 = v3;
  std::vector<double>::reserve(a2, [v3 count]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v20;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v21 + 1) + 8 * i) doubleValue];
        v10 = a2[1];
        v9 = a2[2];
        if (v10 >= v9)
        {
          v12 = *a2;
          v13 = v10 - *a2;
          v14 = v13 >> 3;
          v15 = (v13 >> 3) + 1;
          if (v15 >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v16 = v9 - v12;
          if (v16 >> 2 > v15)
          {
            v15 = v16 >> 2;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a2, v17);
          }

          *(8 * v14) = v8;
          v11 = 8 * v14 + 8;
          memcpy(0, v12, v13);
          v18 = *a2;
          *a2 = 0;
          a2[1] = v11;
          a2[2] = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v10 = v8;
          v11 = (v10 + 8);
        }

        a2[1] = v11;
      }

      v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v19 = *MEMORY[0x277D85DE8];
}

{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v20 = v3;
  std::vector<double>::reserve(a2, [v3 count]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v20;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v21 + 1) + 8 * i) doubleValue];
        v10 = a2[1];
        v9 = a2[2];
        if (v10 >= v9)
        {
          v12 = *a2;
          v13 = v10 - *a2;
          v14 = v13 >> 3;
          v15 = (v13 >> 3) + 1;
          if (v15 >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v16 = v9 - v12;
          if (v16 >> 2 > v15)
          {
            v15 = v16 >> 2;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a2, v17);
          }

          *(8 * v14) = v8;
          v11 = 8 * v14 + 8;
          memcpy(0, v12, v13);
          v18 = *a2;
          *a2 = 0;
          a2[1] = v11;
          a2[2] = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v10 = v8;
          v11 = (v10 + 8);
        }

        a2[1] = v11;
      }

      v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v19 = *MEMORY[0x277D85DE8];
}

{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v20 = v3;
  std::vector<double>::reserve(a2, [v3 count]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v20;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v21 + 1) + 8 * i) doubleValue];
        v10 = a2[1];
        v9 = a2[2];
        if (v10 >= v9)
        {
          v12 = *a2;
          v13 = v10 - *a2;
          v14 = v13 >> 3;
          v15 = (v13 >> 3) + 1;
          if (v15 >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v16 = v9 - v12;
          if (v16 >> 2 > v15)
          {
            v15 = v16 >> 2;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a2, v17);
          }

          *(8 * v14) = v8;
          v11 = 8 * v14 + 8;
          memcpy(0, v12, v13);
          v18 = *a2;
          *a2 = 0;
          a2[1] = v11;
          a2[2] = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v10 = v8;
          v11 = (v10 + 8);
        }

        a2[1] = v11;
      }

      v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v19 = *MEMORY[0x277D85DE8];
}

{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v20 = v3;
  std::vector<double>::reserve(a2, [v3 count]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v20;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v21 + 1) + 8 * i) doubleValue];
        v10 = a2[1];
        v9 = a2[2];
        if (v10 >= v9)
        {
          v12 = *a2;
          v13 = v10 - *a2;
          v14 = v13 >> 3;
          v15 = (v13 >> 3) + 1;
          if (v15 >> 61)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v16 = v9 - v12;
          if (v16 >> 2 > v15)
          {
            v15 = v16 >> 2;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a2, v17);
          }

          *(8 * v14) = v8;
          v11 = 8 * v14 + 8;
          memcpy(0, v12, v13);
          v18 = *a2;
          *a2 = 0;
          a2[1] = v11;
          a2[2] = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v10 = v8;
          v11 = (v10 + 8);
        }

        a2[1] = v11;
      }

      v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_25900E720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(a1);
}

void ULSettings::convert<std::initializer_list<double>,std::vector<double>>(uint64_t *a1@<X0>, unint64_t a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<double>::reserve(a3, a2);
  if (a2)
  {
    v6 = a3[1];
    v7 = 8 * a2;
    do
    {
      v8 = *a1;
      v9 = a3[2];
      if (v6 >= v9)
      {
        v10 = *a3;
        v11 = v6 - *a3;
        v12 = v11 >> 3;
        v13 = (v11 >> 3) + 1;
        if (v13 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v14 = v9 - v10;
        if (v14 >> 2 > v13)
        {
          v13 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a3, v15);
        }

        *(8 * v12) = v8;
        v6 = (8 * v12 + 8);
        memcpy(0, v10, v11);
        v16 = *a3;
        *a3 = 0;
        a3[1] = v6;
        a3[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v6 = v8;
        v6 += 8;
      }

      a3[1] = v6;
      ++a1;
      v7 -= 8;
    }

    while (v7);
  }
}

{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<double>::reserve(a3, a2);
  if (a2)
  {
    v6 = a3[1];
    v7 = 8 * a2;
    do
    {
      v8 = *a1;
      v9 = a3[2];
      if (v6 >= v9)
      {
        v10 = *a3;
        v11 = v6 - *a3;
        v12 = v11 >> 3;
        v13 = (v11 >> 3) + 1;
        if (v13 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v14 = v9 - v10;
        if (v14 >> 2 > v13)
        {
          v13 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a3, v15);
        }

        *(8 * v12) = v8;
        v6 = (8 * v12 + 8);
        memcpy(0, v10, v11);
        v16 = *a3;
        *a3 = 0;
        a3[1] = v6;
        a3[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v6 = v8;
        v6 += 8;
      }

      a3[1] = v6;
      ++a1;
      v7 -= 8;
    }

    while (v7);
  }
}

{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<double>::reserve(a3, a2);
  if (a2)
  {
    v6 = a3[1];
    v7 = 8 * a2;
    do
    {
      v8 = *a1;
      v9 = a3[2];
      if (v6 >= v9)
      {
        v10 = *a3;
        v11 = v6 - *a3;
        v12 = v11 >> 3;
        v13 = (v11 >> 3) + 1;
        if (v13 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v14 = v9 - v10;
        if (v14 >> 2 > v13)
        {
          v13 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a3, v15);
        }

        *(8 * v12) = v8;
        v6 = (8 * v12 + 8);
        memcpy(0, v10, v11);
        v16 = *a3;
        *a3 = 0;
        a3[1] = v6;
        a3[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v6 = v8;
        v6 += 8;
      }

      a3[1] = v6;
      ++a1;
      v7 -= 8;
    }

    while (v7);
  }
}

{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<double>::reserve(a3, a2);
  if (a2)
  {
    v6 = a3[1];
    v7 = 8 * a2;
    do
    {
      v8 = *a1;
      v9 = a3[2];
      if (v6 >= v9)
      {
        v10 = *a3;
        v11 = v6 - *a3;
        v12 = v11 >> 3;
        v13 = (v11 >> 3) + 1;
        if (v13 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v14 = v9 - v10;
        if (v14 >> 2 > v13)
        {
          v13 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a3, v15);
        }

        *(8 * v12) = v8;
        v6 = (8 * v12 + 8);
        memcpy(0, v10, v11);
        v16 = *a3;
        *a3 = 0;
        a3[1] = v6;
        a3[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v6 = v8;
        v6 += 8;
      }

      a3[1] = v6;
      ++a1;
      v7 -= 8;
    }

    while (v7);
  }
}

{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<double>::reserve(a3, a2);
  if (a2)
  {
    v6 = a3[1];
    v7 = 8 * a2;
    do
    {
      v8 = *a1;
      v9 = a3[2];
      if (v6 >= v9)
      {
        v10 = *a3;
        v11 = v6 - *a3;
        v12 = v11 >> 3;
        v13 = (v11 >> 3) + 1;
        if (v13 >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v14 = v9 - v10;
        if (v14 >> 2 > v13)
        {
          v13 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a3, v15);
        }

        *(8 * v12) = v8;
        v6 = (8 * v12 + 8);
        memcpy(0, v10, v11);
        v16 = *a3;
        *a3 = 0;
        a3[1] = v6;
        a3[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v6 = v8;
        v6 += 8;
      }

      a3[1] = v6;
      ++a1;
      v7 -= 8;
    }

    while (v7);
  }
}

void sub_25900E88C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<double>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t ULHomeSlamFpLikelihoodSettings::ULHomeSlamFpLikelihoodSettings(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, float a5, float a6, float a7)
{
  *a1 = a5;
  *(a1 + 4) = a6;
  *(a1 + 8) = a7;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 16, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 40, *a3, a3[1], (a3[1] - *a3) >> 3);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1 + 64, *a4, a4[1], (a4[1] - *a4) >> 3);
  return a1;
}

void sub_25900EA3C(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25900EAD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void ULHomeSlamSettings::~ULHomeSlamSettings(id *this)
{
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100]((this + 32));
  v2 = this[23];
  if (v2)
  {
    this[24] = v2;
    operator delete(v2);
  }

  v3 = this[20];
  if (v3)
  {
    this[21] = v3;
    operator delete(v3);
  }

  v4 = this[17];
  if (v4)
  {
    this[18] = v4;
    operator delete(v4);
  }

  v5 = this[12];
  if (v5)
  {
    this[13] = v5;
    operator delete(v5);
  }

  v6 = this[9];
  if (v6)
  {
    this[10] = v6;
    operator delete(v6);
  }

  v7 = this[6];
  if (v7)
  {
    this[7] = v7;
    operator delete(v7);
  }
}

void ULHomeSlamLocalizerState::~ULHomeSlamLocalizerState(ULHomeSlamLocalizerState *this)
{
  v2 = *(this + 49);
  if (v2)
  {
    *(this + 50) = v2;
    operator delete(v2);
  }

  ULHomeSlamSettings::~ULHomeSlamSettings(this);
}

void *std::vector<ULParticle>::__assign_with_size[abi:ne200100]<ULParticle*,ULParticle*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 2) < a4)
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

    if (a4 <= 0xCCCCCCCCCCCCCCCLL)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x666666666666666)
      {
        v11 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<ULParticle>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v8) >> 2) >= a4)
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

uint64_t std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2798D4068, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void **std::__advance[abi:ne200100]<std::__tree_const_iterator<float,std::__tree_node<float,void *> *,long>>(void **result, uint64_t a2)
{
  if (a2 < 0)
  {
    v7 = *result;
    do
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v4 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v5 = *v4 == v7;
          v7 = v4;
        }

        while (v5);
      }

      v7 = v4;
    }

    while (!__CFADD__(a2++, 1));
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = *result;
    do
    {
      v3 = v2[1];
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
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (a2-- > 1);
  }

  *result = v4;
  return result;
}

unsigned int *boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::seed(unsigned int *result, unsigned int *a2)
{
  v2 = *a2;
  *result = *a2;
  for (i = 1; i != 624; ++i)
  {
    v2 = i + 1812433253 * (v2 ^ (v2 >> 30));
    result[i] = v2;
  }

  *(result + 312) = 624;
  return boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::normalize_state(result);
}

unsigned int *boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::normalize_state(unsigned int *result)
{
  v1 = 0;
  v2 = result[623] ^ result[396];
  if (v2 >= 0)
  {
    v3 = 2 * v2;
  }

  else
  {
    v3 = (2 * v2) ^ 0x321161BF;
  }

  *result = *result & 0x80000000 | v3 & 0x7FFFFFFF;
  while (!result[v1])
  {
    if (++v1 == 624)
    {
      *result = 0x80000000;
      return result;
    }
  }

  return result;
}

double boost::random::detail::unit_normal_distribution<double>::operator()<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t a1, uint64_t a2)
{
  boost::random::detail::generate_int_float_pair<double,8ul,boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(a2);
  v5 = v4;
  v6 = boost::random::detail::normal_table<double>::table_x[v4 >> 1];
  v7 = v4 >> 1;
  v9 = v6 * v8;
  v10 = v7 + 1;
  v11 = boost::random::detail::normal_table<double>::table_x[v7 + 1];
  if (v6 * v8 < v11)
  {
LABEL_12:
    v20 = 2 * (v5 & 1);
  }

  else
  {
    while (v5 > 1)
    {
      boost::random::detail::new_uniform_01<double>::operator()<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v22, a2);
      v12 = boost::random::detail::normal_table<double>::table_y[v7];
      v14 = v12 + v13 * (boost::random::detail::normal_table<double>::table_y[v10] - v12);
      v15 = -(v6 - v9 - (v6 - v11) * v13);
      v16 = v14 - (v12 + (v6 - v9) * v12 * v6);
      if (v6 >= 1.0)
      {
        v17 = v15;
      }

      else
      {
        v17 = v16;
      }

      if (v17 >= 0.0)
      {
        goto LABEL_17;
      }

      if (v6 >= 1.0)
      {
        v15 = v16;
      }

      if (v15 >= 0.0 && v14 >= exp(v9 * v9 * -0.5))
      {
LABEL_17:
        boost::random::detail::generate_int_float_pair<double,8ul,boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(a2);
        v5 = v18;
        v6 = boost::random::detail::normal_table<double>::table_x[v18 >> 1];
        v7 = v18 >> 1;
        v9 = v6 * v19;
        v10 = v7 + 1;
        v11 = boost::random::detail::normal_table<double>::table_x[v7 + 1];
        if (v6 * v19 >= v11)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

    v20 = 2 * v5;
    v9 = boost::random::detail::unit_normal_distribution<double>::generate_tail<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(a1, a2);
  }

  return v9 * (v20 - 1);
}

double boost::random::detail::unit_normal_distribution<double>::generate_tail<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t a1, uint64_t a2)
{
  do
  {
    v3 = boost::random::detail::unit_exponential_distribution<double>::operator()<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v6, a2) / 3.44261986;
    v4 = boost::random::detail::unit_exponential_distribution<double>::operator()<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v7, a2);
  }

  while (v4 + v4 <= v3 * v3);
  return v3 + 3.44261986;
}

int *boost::random::detail::new_uniform_01<double>::operator()<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 2496);
  do
  {
    if (v3 == 624)
    {
      result = boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::twist(a2);
      v3 = *(a2 + 2496);
    }

    v5 = *(a2 + 4 * v3++);
    *(a2 + 2496) = v3;
    v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  }

  while (vcvtd_n_f64_u32((v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18), 0x20uLL) >= 1.0);
  return result;
}

double boost::random::detail::generate_int_float_pair<double,8ul,boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t a1)
{
  v2 = *(a1 + 2496);
  if (v2 == 624)
  {
    boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::twist(a1);
    v2 = *(a1 + 2496);
  }

  v3 = *(a1 + 4 * v2);
  v4 = v2 + 1;
  *(a1 + 2496) = v4;
  if (v4 == 624)
  {
    boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::twist(a1);
    v4 = *(a1 + 2496);
  }

  v5 = ((v3 ^ (v3 >> 11)) << 7) & 0x9D2C5680 ^ v3 ^ (v3 >> 11);
  v6 = *(a1 + 4 * v4);
  *(a1 + 2496) = v4 + 1;
  v7 = ((v6 ^ (v6 >> 11)) << 7) & 0x9D2C5680 ^ v6 ^ (v6 >> 11);
  return (vcvtd_n_f64_u32(((v5 << 15) & 0xEFC60000 ^ v5 ^ (((v5 << 15) & 0xEFC60000 ^ v5) >> 18)) >> 8, 0x18uLL) + (((v7 << 15) & 0xEFC60000 ^ v7) & 0x1FFFFFFF ^ (((v7 << 15) & 0xEFC60000 ^ v7) >> 18))) * 0.00000000186264515;
}

int *boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::twist(int *result)
{
  v1 = 0;
  v2 = *result;
  do
  {
    v3 = v2 & 0x80000000;
    v2 = result[v1 + 1];
    v4 = v2 & 0x7FFFFFFE | v3;
    if (v2)
    {
      v5 = -1727483681;
    }

    else
    {
      v5 = 0;
    }

    result[v1] = v5 ^ result[v1 + 397] ^ (v4 >> 1);
    ++v1;
  }

  while (v1 != 222);
  v6 = 0;
  v7 = result[222];
  do
  {
    v8 = v7 & 0x80000000;
    v7 = result[v6 + 223];
    v9 = v7 & 0x7FFFFFFE | v8;
    if (v7)
    {
      v10 = -1727483681;
    }

    else
    {
      v10 = 0;
    }

    result[v6 + 222] = v10 ^ result[v6 + 619] ^ (v9 >> 1);
    ++v6;
  }

  while (v6 != 5);
  v11 = 0;
  v12 = (result + 227);
  v13 = vld1q_dup_f32(v12);
  v14.i64[0] = 0x8000000080000000;
  v14.i64[1] = 0x8000000080000000;
  v15.i64[0] = 0x100000001;
  v15.i64[1] = 0x100000001;
  v16 = vnegq_f32(v15);
  v17 = vdupq_n_s32(0x9908B0DF);
  do
  {
    v18 = *&result[v11 + 228];
    *&result[v11 + 227] = veorq_s8(veorq_s8(vandq_s8(vcltzq_s32(vshlq_n_s32(v18, 0x1FuLL)), v17), *&result[v11]), vshrq_n_u32(vorrq_s8(vandq_s8(v18, v16), vandq_s8(vextq_s8(v13, v18, 0xCuLL), v14)), 1uLL));
    v11 += 4;
    v13 = v18;
  }

  while (v11 != 396);
  if (*result)
  {
    v19 = -1727483681;
  }

  else
  {
    v19 = 0;
  }

  result[623] = v19 ^ result[396] ^ ((*result & 0x7FFFFFFE | result[623] & 0x80000000) >> 1);
  *(result + 312) = 0;
  return result;
}

double boost::random::detail::unit_exponential_distribution<double>::operator()<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t a1, uint64_t a2)
{
  boost::random::detail::generate_int_float_pair<double,8ul,boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(a2);
  v4 = boost::random::detail::exponential_table<double>::table_x[v3];
  v6 = v4 * v5;
  v7 = (v3 << 32) + 0x100000000;
  v8 = *(boost::random::detail::exponential_table<double>::table_x + (v7 >> 29));
  v9 = 0.0;
  if (v4 * v5 >= v8)
  {
    v10 = v3;
    v11 = v3;
    v12 = v7 >> 32;
    do
    {
      if (v10)
      {
        boost::random::detail::new_uniform_01<double>::operator()<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v20, a2);
        if (-(v4 - v6 - (v4 - v8) * v13) < 0.0)
        {
          v14 = boost::random::detail::exponential_table<double>::table_y[v12];
          v15 = boost::random::detail::exponential_table<double>::table_y[v11] + v13 * (v14 - boost::random::detail::exponential_table<double>::table_y[v11]);
          if (v15 < v14 + (v8 - v6) * v14 || v15 < exp(-v6))
          {
            return v9 + v6;
          }
        }
      }

      else
      {
        v9 = v9 + 7.69711747;
      }

      boost::random::detail::generate_int_float_pair<double,8ul,boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(a2);
      v10 = v16;
      v11 = v16;
      v4 = boost::random::detail::exponential_table<double>::table_x[v16];
      v6 = v4 * v17;
      v18 = (v16 << 32) + 0x100000000;
      v12 = v18 >> 32;
      v8 = *(boost::random::detail::exponential_table<double>::table_x + (v18 >> 29));
    }

    while (v4 * v17 >= v8);
  }

  return v9 + v6;
}

uint64_t std::uniform_int_distribution<int>::operator()<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = a3[1];
  v6 = result - *a3;
  if (result != *a3)
  {
    v23 = v3;
    v24 = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      v17 = a2;
      v18 = vdupq_n_s64(0x20uLL);
      *v21 = 0;
      v19 = 1;
      v20 = 1;
      *&v21[4] = 0xFFFFFFFF00000000;
      v22 = -1;
      return std::__independent_bits_engine<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned int>::operator()[abi:ne200100](&v17);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 31;
      if (((v7 << v9) & 0x7FFFFFFF) != 0)
      {
        v10 = 32;
      }

      v11 = v10 - v9;
      v17 = a2;
      v18.i64[0] = v11;
      v12 = v11 >> 5;
      if ((v11 & 0x1F) != 0)
      {
        ++v12;
      }

      v13 = v11 / v12;
      v18.i64[1] = v11 / v12;
      v19 = v12;
      v20 = v12 - ((v12 - 1) & v11);
      *v21 = 0;
      if (v12 <= v11)
      {
        v14 = 0xFFFFFFFF >> -v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = 0xFFFFFFFF >> ~v13;
      if (v13 >= 0x1F)
      {
        v15 = -1;
      }

      *&v21[8] = v14;
      v22 = v15;
      do
      {
        v16 = std::__independent_bits_engine<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned int>::operator()[abi:ne200100](&v17);
      }

      while (v16 >= v7);
      return *a3 + v16;
    }
  }

  return result;
}

uint64_t std::__independent_bits_engine<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned int>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 2496);
  if (v3 == 624)
  {
    boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::twist(*a1);
    v3 = *(v2 + 2496);
  }

  v4 = *(v2 + 4 * v3);
  *(v2 + 2496) = v3 + 1;
  v5 = ((v4 ^ (v4 >> 11)) << 7) & 0x9D2C5680 ^ v4 ^ (v4 >> 11);
  return ((v5 << 15) & 0xEFC60000 ^ v5 ^ (((v5 << 15) & 0xEFC60000 ^ v5) >> 18)) & a1[6];
}

uint64_t *boost::random::discrete_distribution<int,double>::discrete_distribution<std::vector<float>>(uint64_t *a1, float **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  boost::random::discrete_distribution<int,double>::init<std::__wrap_iter<float const*>>(a1, *a2, a2[1]);
  return a1;
}

void sub_25900FC5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void boost::random::discrete_distribution<int,double>::init<std::__wrap_iter<float const*>>(uint64_t *a1, float *a2, float *a3)
{
  if (a2 == a3)
  {
    v3 = *a1;
    a1[1] = *a1;
    v4 = a1[2];
    if (v3 >= v4)
    {
      v5 = v4 - v3;
      v6 = v5 >> 3;
      if ((v5 >> 3) <= 1)
      {
        v6 = 1;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFF0)
      {
        v7 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = v6;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<double,int>>>(a1, v7);
    }

    *v3 = 0x3FF0000000000000;
    *(v3 + 8) = 0;
    a1[1] = v3 + 16;
  }

  else
  {

    boost::random::discrete_distribution<int,double>::init<std::__wrap_iter<float const*>>(a1, a2, a3);
  }
}

{
  v4 = a2;
  __p = 0;
  v30 = 0;
  v6 = a3 - a2;
  v31 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  std::vector<std::pair<double,int>>::reserve(&__p, v6);
  std::vector<std::pair<double,int>>::reserve(&v26, v6);
  v7 = boost::random::detail::real_alias_table<int,double>::init_average<std::__wrap_iter<float const*>>(a1, v4, a3);
  if (a3 != v4)
  {
    v8 = v7;
    v9 = 0;
    do
    {
      *&v25 = *v4 / v8;
      DWORD2(v25) = v9;
      if (*&v25 >= 1.0)
      {
        p_p = &v26;
      }

      else
      {
        p_p = &__p;
      }

      std::vector<std::pair<double,int>>::push_back[abi:ne200100](p_p, &v25);
      ++v4;
      ++v9;
    }

    while (v4 != a3);
  }

  v11 = __p;
  v12 = v30;
  v13 = v26;
  v14 = v27;
  v15 = v26;
  v16 = __p;
  if (__p != v30)
  {
    v15 = v26;
    v16 = __p;
    if (v26 != v27)
    {
      v17 = *a1;
      v16 = __p;
      v15 = v26;
      do
      {
        v18 = *v16;
        v19 = *(v15 + 2);
        v20 = v17 + 16 * *(v16 + 2);
        *v20 = *v16;
        *(v20 + 8) = v19;
        v21 = *v15 - (1.0 - v18);
        *v15 = v21;
        if (v21 >= 1.0)
        {
          v16 += 2;
        }

        else
        {
          v22 = *(v15 + 2);
          v15 += 2;
          *v16 = v21;
          *(v16 + 2) = v22;
        }
      }

      while (v16 != v12 && v15 != v14);
    }
  }

  if (v16 != v12)
  {
    v23 = *a1;
    do
    {
      *(v23 + 16 * *(v16 + 2)) = 0x3FF0000000000000;
      v16 += 2;
    }

    while (v16 != v12);
  }

  if (v15 != v14)
  {
    v24 = *a1;
    do
    {
      *(v24 + 16 * *(v15 + 2)) = 0x3FF0000000000000;
      v15 += 2;
    }

    while (v15 != v14);
  }

  if (v13)
  {
    v27 = v13;
    operator delete(v13);
    v11 = __p;
  }

  if (v11)
  {
    v30 = v11;
    operator delete(v11);
  }
}

void sub_25900FF34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<double,int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<std::pair<double,int>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<double,int>>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

double boost::random::detail::real_alias_table<int,double>::init_average<std::__wrap_iter<float const*>>(void *a1, float *a2, float *a3)
{
  v3 = 0.0;
  for (i = a3 - a2; a2 != a3; v3 = v3 + v5)
  {
    v5 = *a2++;
  }

  v6 = i >> 2;
  std::vector<std::pair<double,int>>::resize(a1, i >> 2);
  return v3 / v6;
}

void std::vector<std::pair<double,int>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<double,int>>>(a1, v10);
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

void std::vector<std::pair<double,int>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<std::pair<double,int>>::__append(a1, a2 - v2);
  }
}

void std::vector<std::pair<double,int>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 4)
  {
    if (a2)
    {
      v11 = v4 + 16 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        v4 += 16;
      }

      while (v4 != v11);
      v4 = v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = v4 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 4;
    v9 = v5 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<double,int>>>(a1, v10);
    }

    v12 = 16 * v8;
    v13 = 16 * v8 + 16 * a2;
    v14 = v12;
    do
    {
      *v14 = 0;
      *(v14 + 8) = 0;
      v14 += 16;
    }

    while (v14 != v13);
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v17)
    {

      operator delete(v17);
    }
  }
}

uint64_t boost::random::detail::generate_uniform_int<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,int>(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (a3 != a2)
  {
    if (v3 == -1)
    {
      v12 = *(a1 + 2496);
      if (v12 == 624)
      {
        boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::twist(a1);
        v12 = *(a1 + 2496);
      }

      v13 = *(a1 + 4 * v12);
      *(a1 + 2496) = v12 + 1;
      v14 = ((v13 ^ (v13 >> 11)) << 7) & 0x9D2C5680 ^ v13 ^ (v13 >> 11);
      return ((v14 << 15) & 0xEFC60000 ^ v14 ^ (((v14 << 15) & 0xEFC60000 ^ v14) >> 18)) + a2;
    }

    else
    {
      v6 = 0xFFFFFFFF / (v3 + 1);
      if (~(v6 * (v3 + 1)) == v3)
      {
        v7 = v6 + 1;
      }

      else
      {
        v7 = 0xFFFFFFFF / (v3 + 1);
      }

      v8 = *(a1 + 2496);
      do
      {
        if (v8 == 624)
        {
          boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::twist(a1);
          v8 = *(a1 + 2496);
        }

        v9 = *(a1 + 4 * v8++);
        *(a1 + 2496) = v8;
        v10 = ((v9 ^ (v9 >> 11)) << 7) & 0x9D2C5680 ^ v9 ^ (v9 >> 11);
        v11 = ((v10 << 15) & 0xEFC60000 ^ v10 ^ (((v10 << 15) & 0xEFC60000 ^ v10) >> 18)) / v7;
      }

      while (v11 > v3);
      return v11 + a2;
    }
  }

  return a3;
}

void boost::random::detail::generate_uniform_real<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,double>(int *a1, double a2, double a3)
{
  if (a3 * 0.5 - a2 * 0.5 <= 8.98846567e307)
  {

    boost::random::detail::generate_uniform_real<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,double>(a1, a2, a3);
  }

  else
  {
    boost::random::detail::generate_uniform_real<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,double>(a2 * 0.5, a3 * 0.5);
  }
}

int *boost::random::detail::generate_uniform_real<boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,double>(int *result, double a2, double a3)
{
  v5 = result;
  v6 = a3 - a2;
  v7 = *(result + 312);
  do
  {
    if (v7 == 624)
    {
      result = boost::random::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::twist(v5);
      v7 = *(v5 + 312);
    }

    v8 = v5[v7++];
    *(v5 + 312) = v7;
    v9 = ((v8 ^ (v8 >> 11)) << 7) & 0x9D2C5680 ^ v8 ^ (v8 >> 11);
  }

  while (a2 + vcvtd_n_f64_u32((v9 << 15) & 0xEFC60000 ^ v9 ^ (((v9 << 15) & 0xEFC60000 ^ v9) >> 18), 0x20uLL) * v6 >= a3);
  return result;
}

void *std::__tree<std::__value_type<unsigned long,ULPointLocation>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,ULPointLocation>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,ULPointLocation>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<std::__value_type<unsigned long,int>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,int>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::vector<float>::resize(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (a1[1] - *a1) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(a1, a2 - v4, a3, a4);
  }
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v13 = 0;
      a4.i32[0] = *a3;
      v14 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = v7 + 4 * a2;
      v17 = v14 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v18 = (v7 + 8);
      do
      {
        v19 = vdupq_n_s64(v13);
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_25921A970)));
        if (vuzp1_s16(v20, a4).u8[0])
        {
          *(v18 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v20, a4).i8[2])
        {
          *(v18 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_25921A960)))).i32[1])
        {
          *v18 = a4.i32[0];
          v18[1] = a4.i32[0];
        }

        v13 += 4;
        v18 += 4;
      }

      while (v17 != v13);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(a1, v12);
    }

    v21 = 0;
    v22 = 4 * v10;
    a4.i32[0] = *a3;
    v23 = 4 * v10 + 4 * a2;
    v24 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v25 = vdupq_n_s64(v24);
    v26 = v24 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v27 = (4 * v10 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_25921A970)));
      if (vuzp1_s16(v29, a4).u8[0])
      {
        *(v27 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v29, a4).i8[2])
      {
        *(v27 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_25921A960)))).i32[1])
      {
        *v27 = a4.i32[0];
        v27[1] = a4.i32[0];
      }

      v21 += 4;
      v27 += 4;
    }

    while (v26 != v21);
    v30 = *(a1 + 8) - *a1;
    v31 = v22 - v30;
    memcpy((v22 - v30), *a1, v30);
    v32 = *a1;
    *a1 = v31;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    if (v32)
    {

      operator delete(v32);
    }
  }
}

uint64_t std::__function::__func<float (*)(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>),std::allocator<float (*)(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>,float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A54628;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<float (*)(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>),std::allocator<float (*)(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>,float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void OUTLINED_FUNCTION_2(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_signpost_emit_with_name_impl(a1, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, &buf, 0x26u);
}

void OUTLINED_FUNCTION_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_INFO, a4, &buf, 0x26u);
}

void OUTLINED_FUNCTION_4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x26u);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_signpost_emit_with_name_impl(a1, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, &a9, 0x26u);
}

BOOL OUTLINED_FUNCTION_6(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

BOOL OUTLINED_FUNCTION_7(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

void *ULEndpointClusteringAlgorithm::clusterEndpoints@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*result == result[1])
  {
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 1065353216;
  }

  else
  {
    ULEndpointClusteringAlgorithm::getClusterLabels(result, a2, a3, a4, a5, v11);
    ULEndpointClusteringAlgorithm::pruneClusters(v11);
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 1065353216;
    for (i = v12; i; i = *i)
    {
      v8 = i[3];
      v9 = i[4];
      while (v8 != v9)
      {
        v13 = *v8;
        v14 = *(i + 4);
        std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,int>>(a6, &v13);
        ++v8;
      }
    }

    result = std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::~__hash_table(v11);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259010CE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t ULEndpointClusteringAlgorithm::getClusterLabels@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v145 = *MEMORY[0x277D85DE8];
  v12 = ULSettings::get<ULSettings::HomeSlamMapperUseSecondOrderConnections>();
  ULEndpointClusteringAlgorithm::createDistanceFunction(a1, a2, v141);
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::__value_func[abi:ne200100](v140, v141);
  CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>::CLDistanceMatrixTemplate<std::vector<CLMicroLocationFingerprint>,std::function<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>>(&v129, a1, v140, v13);
  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v140);
  ULEndpointClusteringAlgorithm::extractIoFeatures(a3, a1, v128);
  ULEndpointClusteringAlgorithm::buildSparseIoEuclideanDistanceMatrix(v128, &v122);
  CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>::CLDistanceMatrixTemplate(&v119, 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 5), v14);
  ULEndpointClusteringAlgorithm::calculateFirstOrderFusionMatrix(v128, &v122, &v129, &v119);
  if (v12)
  {
    ULEndpointClusteringAlgorithm::calculateSecondOrderFusionMatrix(v128, &v122, &v129, &v119);
  }

  if (a5)
  {
    CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>::CLDistanceMatrixTemplate(&v142, 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 5), v15);
    v17 = *a1;
    v16 = *(a1 + 8);
    if (v16 != *a1)
    {
      v18 = 0;
      do
      {
        v19 = 0x6DB6DB6DB6DB6DB7 * ((v16 - v17) >> 5);
        for (i = v18; i < v19; v19 = 0x6DB6DB6DB6DB6DB7 * ((v16 - *a1) >> 5))
        {
          v21 = ULSparseDistanceMatrix<float>::get(&v122, v18, i);
          if (v18 <= i)
          {
            v22 = i;
          }

          else
          {
            v22 = v18;
          }

          if (v18 >= i)
          {
            v23 = i;
          }

          else
          {
            v23 = v18;
          }

          v143[((v22 + v22 * v22) >> 1) + v23] = v21;
          ++i;
          v17 = *a1;
          v16 = *(a1 + 8);
        }

        ++v18;
      }

      while (v18 < v19);
    }

    std::optional<CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>>::operator=[abi:ne200100]<CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>&,void>(a4 + 440, &v129);
    std::optional<CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>>::operator=[abi:ne200100]<CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>&,void>(a4 + 480, &v142);
    std::optional<CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>>::operator=[abi:ne200100]<CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>&,void>(a4 + 520, &v119);
    std::optional<CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>>::operator=[abi:ne200100]<CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>&,void>(a4 + 376, &v119);
    if (a4 + 416 != a1)
    {
      std::vector<CLMicroLocationFingerprint>::__assign_with_size[abi:ne200100]<CLMicroLocationFingerprint*,CLMicroLocationFingerprint*>((a4 + 416), *a1, *(a1 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 5));
    }

    if (v143)
    {
      v144 = v143;
      operator delete(v143);
    }
  }

  v24 = +[ULDefaultsSingleton shared];
  v25 = [v24 defaultsDictionary];

  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLinkageFunctionHomeSlamEndPoints"];
  v27 = [v25 objectForKey:v26];
  if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v28 = [v27 unsignedIntValue];
  }

  else
  {
    v28 = [&unk_286A71538 unsignedIntValue];
  }

  v29 = v28;

  ULAlgorithms::createLinkageFunction(v29, v139);
  std::__function::__value_func<float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::__value_func[abi:ne200100](v138, v139);
  CLHierarchicalClustering::CLHierarchicalClustering(v118, &v119, v138);
  std::__function::__value_func<float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::~__value_func[abi:ne200100](v138);
  v30 = +[ULDefaultsSingleton shared];
  v31 = [v30 defaultsDictionary];

  v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapperRFSmallClusterSize"];
  v33 = [v31 objectForKey:v32];
  if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v34 = [v33 unsignedLongValue];
  }

  else
  {
    v34 = [&unk_286A714A8 unsignedLongValue];
  }

  v35 = v34;

  v36 = +[ULDefaultsSingleton shared];
  v37 = [v36 defaultsDictionary];

  v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapperRFClusterRelativeSize"];
  v39 = [v37 objectForKey:v38];
  if (v39 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v39 doubleValue];
  }

  else
  {
    [&unk_286A714A8 doubleValue];
  }

  v41 = v40;

  v42 = vcvtmd_u64_f64(v41 * (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 5)));
  if (v35 <= v42)
  {
    v43 = v42;
  }

  else
  {
    v43 = v35;
  }

  v115 = 0;
  v116 = 0;
  v117 = 0;
  v44 = +[ULDefaultsSingleton shared];
  v45 = [v44 defaultsDictionary];

  v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapperRFClusterDistanceThresholdVector"];
  v47 = [v45 objectForKey:v46];
  v112 = a6;
  if (v47 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v48 = v47;
    __src[1] = 0;
    v133 = 0;
    __src[0] = 0;
    v111 = v48;
    std::vector<double>::reserve(__src, [v48 count]);
    v108 = v47;
    v109 = v46;
    v110 = v45;
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v49 = v111;
    v50 = [v49 countByEnumeratingWithState:&v134 objects:&v142 count:16];
    if (v50)
    {
      v51 = *v135;
      do
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v135 != v51)
          {
            objc_enumerationMutation(v49);
          }

          [*(*(&v134 + 1) + 8 * j) doubleValue];
          v54 = __src[1];
          if (__src[1] >= v133)
          {
            v56 = __src[0];
            v57 = __src[1] - __src[0];
            v58 = (__src[1] - __src[0]) >> 3;
            v59 = v58 + 1;
            if ((v58 + 1) >> 61)
            {
              std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
            }

            v60 = v133 - __src[0];
            if ((v133 - __src[0]) >> 2 > v59)
            {
              v59 = v60 >> 2;
            }

            if (v60 >= 0x7FFFFFFFFFFFFFF8)
            {
              v61 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v61 = v59;
            }

            if (v61)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(__src, v61);
            }

            *(8 * v58) = v53;
            v55 = (8 * v58 + 8);
            memcpy(0, v56, v57);
            v62 = __src[0];
            __src[0] = 0;
            __src[1] = v55;
            v133 = 0;
            if (v62)
            {
              operator delete(v62);
            }
          }

          else
          {
            *__src[1] = v53;
            v55 = v54 + 8;
          }

          __src[1] = v55;
        }

        v50 = [v49 countByEnumeratingWithState:&v134 objects:&v142 count:16];
      }

      while (v50);
    }

    a6 = v112;
    v46 = v109;
    v45 = v110;
    v47 = v108;

    *__p = *__src;
    v114 = v133;
  }

  else
  {
    v142 = 0;
    v143 = 0;
    v144 = 0;
    std::vector<double>::reserve(&v142, 1uLL);
    v63 = v143;
    if (v143 >= v144)
    {
      v65 = v142;
      v66 = (v143 - v142);
      v67 = (v143 - v142) >> 3;
      v68 = v67 + 1;
      if ((v67 + 1) >> 61)
      {
        std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
      }

      v69 = v144 - v142;
      if ((v144 - v142) >> 2 > v68)
      {
        v68 = v69 >> 2;
      }

      v70 = v69 >= 0x7FFFFFFFFFFFFFF8;
      v71 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v70)
      {
        v71 = v68;
      }

      if (v71)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&v142, v71);
      }

      v72 = (8 * v67);
      v73 = &v72[-((v143 - v142) >> 3)];
      *v72 = 0x3FD8000000000000;
      v64 = (v72 + 1);
      memcpy(v73, v65, v66);
      v74 = v142;
      v142 = v73;
      v143 = v64;
      v144 = 0;
      if (v74)
      {
        operator delete(v74);
      }
    }

    else
    {
      *v143 = 0x3FD8000000000000;
      v64 = v63 + 2;
    }

    __p[0] = v142;
    __p[1] = v64;
    v114 = v144;
  }

  v75 = +[ULDefaultsSingleton shared];
  v76 = [v75 defaultsDictionary];

  v77 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapperRFSmallClusterDistanceThreshold"];
  v78 = [v76 objectForKey:v77];
  if (v78 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v78 doubleValue];
  }

  else
  {
    [&unk_286A714A8 doubleValue];
  }

  v80 = v79;

  v81 = +[ULDefaultsSingleton shared];
  v82 = [v81 defaultsDictionary];

  v83 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapperRFMinimumNumberOfClusters"];
  v84 = [v82 objectForKey:v83];
  if (v84 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v85 = [v84 unsignedIntValue];
  }

  else
  {
    v85 = [&unk_286A714C0 unsignedIntValue];
  }

  v86 = v85;

  CLHierarchicalClustering::getClusterLabels(v118, &v115, __p, v43, v86, v80);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 1065353216;
  v87 = v115;
  if (v116 != v115)
  {
    v88 = 0;
    v89 = 40;
    do
    {
      LODWORD(v134) = *&v87[8 * v88];
      v142 = &v134;
      v90 = std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(a6, &v134);
      v91 = v90;
      v92 = *a1;
      v94 = v90[4];
      v93 = v90[5];
      if (v94 >= v93)
      {
        v96 = v90[3];
        v97 = (v94 - v96) >> 4;
        v98 = v97 + 1;
        if ((v97 + 1) >> 60)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v99 = v93 - v96;
        if (v99 >> 3 > v98)
        {
          v98 = v99 >> 3;
        }

        if (v99 >= 0x7FFFFFFFFFFFFFF0)
        {
          v100 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v100 = v98;
        }

        if (v100)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>((v90 + 3), v100);
        }

        v101 = (16 * v97);
        *v101 = *(v92 + v89);
        v95 = 16 * v97 + 16;
        v102 = v90[3];
        v103 = v90[4] - v102;
        v104 = v101 - v103;
        memcpy(v101 - v103, v102, v103);
        v105 = v91[3];
        v91[3] = v104;
        v91[4] = v95;
        v91[5] = 0;
        if (v105)
        {
          operator delete(v105);
        }

        a6 = v112;
      }

      else
      {
        *v94 = *(v92 + v89);
        v95 = (v94 + 1);
      }

      v91[4] = v95;
      ++v88;
      v87 = v115;
      v89 += 224;
    }

    while (v88 < (v116 - v115) >> 3);
  }

  if (v87)
  {
    v116 = v87;
    operator delete(v87);
  }

  if (v118[0])
  {
    v118[1] = v118[0];
    operator delete(v118[0]);
  }

  std::__function::__value_func<float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::~__value_func[abi:ne200100](v139);
  if (v120)
  {
    v121 = v120;
    operator delete(v120);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v127);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v126);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v125);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v124);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v123);
  if (v128[0])
  {
    v128[1] = v128[0];
    operator delete(v128[0]);
  }

  if (v130)
  {
    v131 = v130;
    operator delete(v130);
  }

  result = std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](v141);
  v107 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259011780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  v68 = *(v66 - 240);
  if (v68)
  {
    *(v66 - 232) = v68;
    operator delete(v68);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  std::__function::__value_func<float ()(CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>> const&,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>)>::~__value_func[abi:ne200100](&STACK[0x240]);
  if (a25)
  {
    operator delete(a25);
  }

  ULEndpointClusteringAlgorithm::IOSparseMatrices::~IOSparseMatrices(&a28);
  if (a58)
  {
    a59 = a58;
    operator delete(a58);
  }

  if (a62)
  {
    a63 = a62;
    operator delete(a62);
  }

  std::__function::__value_func<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>::~__value_func[abi:ne200100](&STACK[0x280]);
  _Unwind_Resume(a1);
}

void ULEndpointClusteringAlgorithm::pruneClusters(uint64_t *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a1[3])
  {
    v2 = +[ULDefaultsSingleton shared];
    v3 = [v2 defaultsDictionary];

    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapperRFClusterSizeRatio"];
    v5 = [v3 objectForKey:v4];
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v5 doubleValue];
    }

    else
    {
      [&unk_286A72BC0 doubleValue];
    }

    v7 = v6;

    v8 = a1[2];
    if (v8)
    {
      v9 = 0;
      do
      {
        v9 += (v8[4] - v8[3]) >> 4;
        v8 = *v8;
      }

      while (v8);
      v10 = v9;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = +[ULDefaultsSingleton shared];
    v12 = [v11 defaultsDictionary];

    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapperRFClusterMaximalSizeForRelativePruning"];
    v14 = [v12 objectForKey:v13];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = [v14 intValue];
    }

    else
    {
      v15 = [&unk_286A71520 intValue];
    }

    v16 = v15;

    if (v16 >= (v7 * v10))
    {
      v17 = (v7 * v10);
    }

    else
    {
      v17 = v16;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      ULEndpointClusteringAlgorithm::pruneClusters();
    }

    v18 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 68289282;
      v28 = 2082;
      v29 = "";
      v30 = 2050;
      v31 = v17;
      _os_log_impl(&dword_258FE9000, v18, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Using relative cluster size threshold : , size:%{public}.5f}", &v27, 0x1Cu);
    }

    v19 = +[ULDefaultsSingleton shared];
    v20 = [v19 defaultsDictionary];

    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapperRFClusterSizeThreshold"];
    v22 = [v20 objectForKey:v21];
    if (v22 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v23 = [v22 unsignedLongValue];
    }

    else
    {
      v23 = [&unk_286A714F0 unsignedLongValue];
    }

    v24 = v23;

    ULEndpointClusteringAlgorithm::pruneSmallClusters(a1, v24);
    if (a1[3])
    {
      ULEndpointClusteringAlgorithm::pruneSmallClusters(a1, v17);
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        ULEndpointClusteringAlgorithm::pruneClusters();
      }

      v25 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_258FE9000, v25, OS_LOG_TYPE_DEFAULT, "All clusters were deleted after pruning clusters with absolute size threshold", &v27, 2u);
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void ULEndpointClusteringAlgorithm::createDistanceFunction(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = ULSettings::get<ULSettings::HomeSlamMapperUseSecondOrderConnections>();
  v5 = +[ULDefaultsSingleton shared];
  v6 = [v5 defaultsDictionary];

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapperEnpointClusteringFingerprintDistanceFunctionType"];
  v8 = [v6 objectForKey:v7];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 unsignedIntValue];
  }

  else
  {
    v9 = [&unk_286A71508 unsignedIntValue];
  }

  v10 = v9;

  v11 = ULSettings::getFingerprintDistanceFunctionParamsForType(v10);
  v12 = [v11 mutableCopy];
  v13 = +[ULDefaultsSingleton shared];
  v14 = [v13 defaultsDictionary];

  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAdaptiveAnchorsEnable"];
  v16 = [v14 objectForKey:v15];
  if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = [v16 BOOLValue];
  }

  else
  {
    v17 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v18 = v17;

  if (v4)
  {
    v19 = [v11 objectForKeyedSubscript:@"min_base_rssi"];
    v20 = v19;
    if (!v19)
    {
      ULEndpointClusteringAlgorithm::createDistanceFunction(v32);

      abort_report_np();
      __break(1u);
      return;
    }

    [v19 floatValue];
    *&v21 = ULEndpointClusteringAlgorithm::calculateMinBaseRSSIForRFDistance(a1);
    v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
    [v12 setObject:v22 forKeyedSubscript:@"min_base_rssi"];

    v23 = MEMORY[0x277CCABB0];
    *&v24 = ULSettings::get<ULSettings::HomeSlamMapperGroupingMinRfDistance>();
    v25 = [v23 numberWithFloat:v24];
    [v12 setObject:v25 forKeyedSubscript:@"min_allowed_distance"];

    v26 = MEMORY[0x277CCABB0];
    *&v27 = ULSettings::get<ULSettings::HomeSlamMapperGroupingDistanceFactor>();
    v28 = [v26 numberWithFloat:v27];
    [v12 setObject:v28 forKeyedSubscript:@"distance_factor"];
  }

  else
  {
    [v12 setObject:&unk_286A71490 forKeyedSubscript:@"min_base_rssi"];
    [v12 setObject:&unk_286A714A8 forKeyedSubscript:@"min_intersection_size"];
    [v12 setObject:&unk_286A714C0 forKeyedSubscript:@"distance_factor"];
    [v12 setObject:&unk_286A714D8 forKeyedSubscript:@"min_allowed_distance"];
  }

  if (v18)
  {
    std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(v32, a2);
    v33 = *(a2 + 40);
    v29 = 1;
  }

  else
  {
    v29 = 0;
    LOBYTE(v32[0]) = 0;
  }

  v34 = v29;
  ULAlgorithms::createLearnFingerprintDistanceFunction(v10, v12, v32, a3);
  if (v34 == 1)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v32);
  }
}

uint64_t ULSettings::get<ULSettings::HomeSlamMapperUseSecondOrderConnections>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapperUseSecondOrderConnections"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v5 = v4;

  return v5;
}

float ULEndpointClusteringAlgorithm::calculateMinBaseRSSIForRFDistance(uint64_t *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v8[1] = 0;
  v7 = v8;
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    do
    {
      for (i = *(v1 + 16); i; i = *i)
      {
        if ((*(i + 6) | 4) == 5)
        {
          *buf = i[7];
          std::__tree<double>::__emplace_multi<double>();
        }
      }

      v1 += 224;
    }

    while (v1 != v2);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULEndpointClusteringAlgorithm::pruneClusters();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:EndpointClusteringAlgorithm calculateMinBaseRSSIForRFDistance no rssi values in fingerprints}", buf, 0x12u);
  }

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v7, v8[0]);
  v5 = *MEMORY[0x277D85DE8];
  return -INFINITY;
}

float ULSettings::get<ULSettings::HomeSlamMapperGroupingMinRfDistance>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapperGroupingMinRfDistance"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 floatValue];
  }

  else
  {
    [&unk_286A72BE0 floatValue];
  }

  v5 = v4;

  return v5;
}

float ULSettings::get<ULSettings::HomeSlamMapperGroupingDistanceFactor>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapperGroupingDistanceFactor"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 floatValue];
  }

  else
  {
    [&unk_286A72BB0 floatValue];
  }

  v5 = v4;

  return v5;
}

void ULEndpointClusteringAlgorithm::extractIoFeatures(uint64_t *a1@<X0>, uint64_t *a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<ULEndpointClusteringAlgorithm::FingerprintCumulativeOdometryState>::reserve(a3, 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  std::vector<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>::vector[abi:ne200100](__p, 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v8 = __p[0];
    do
    {
      *v8++ = (*(v6 + 144) + *(v6 + 152)) * 0.5;
      v6 += 224;
    }

    while (v6 != v7);
  }

  v9 = *a1;
  v70 = a1[1];
  if (v70 == *a1 || *__p[0] >= *(v9 + 40))
  {
    v11 = 0;
  }

  else
  {
    v10 = 1;
    do
    {
      v11 = v10;
      v13 = a3[1];
      v12 = a3[2];
      if (v13 >= v12)
      {
        v15 = (v13 - *a3) >> 5;
        v16 = v15 + 1;
        if ((v15 + 1) >> 59)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v17 = v12 - *a3;
        if (v17 >> 4 > v16)
        {
          v16 = v17 >> 4;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFE0)
        {
          v18 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<ULEndpointClusteringAlgorithm::FingerprintCumulativeOdometryState>>(a3, v18);
        }

        v19 = (32 * v15);
        v14 = 32 * v15 + 32;
        *v19 = 0u;
        v19[1] = 0u;
        v20 = a3[1] - *a3;
        v21 = 32 * v15 - v20;
        memcpy(v19 - v20, *a3, v20);
        v22 = *a3;
        *a3 = v21;
        a3[1] = v14;
        a3[2] = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        v14 = (v13 + 32);
        *v13 = 0u;
        *(v13 + 1) = 0u;
      }

      a3[1] = v14;
      v9 = *a1;
      v70 = a1[1];
      if (v70 == *a1)
      {
        break;
      }

      v10 = v11 + 1;
    }

    while (*(__p[0] + v11) < *(v9 + 40));
  }

  if (v9 != v70)
  {
    v23 = 0;
    v24 = 0.0;
    v25 = 0.0;
    v26 = 0.0;
    v27 = 0.0;
    while (1)
    {
      if (v11 < 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5))
      {
        v28 = *(v9 + 40);
        do
        {
          if (v28 < *(__p[0] + v11))
          {
            break;
          }

          v29 = [v23 UUIDString];
          v30 = [v29 UTF8String];
          v31 = strlen(v30);
          v32 = boost::uuids::string_generator::operator()<char const*>(&v71, v30, &v30[v31]);
          v34 = v33;

          v35 = a3[1];
          v36 = a3[2];
          if (v35 >= v36)
          {
            v38 = (v35 - *a3) >> 5;
            v39 = v38 + 1;
            if ((v38 + 1) >> 59)
            {
              std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
            }

            v40 = v36 - *a3;
            if (v40 >> 4 > v39)
            {
              v39 = v40 >> 4;
            }

            if (v40 >= 0x7FFFFFFFFFFFFFE0)
            {
              v41 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v41 = v39;
            }

            if (v41)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<ULEndpointClusteringAlgorithm::FingerprintCumulativeOdometryState>>(a3, v41);
            }

            v42 = 32 * v38;
            *v42 = v27;
            *(v42 + 4) = v26;
            *(v42 + 8) = v25;
            *(v42 + 12) = v24;
            *(v42 + 16) = v32;
            *(v42 + 24) = v34;
            v37 = 32 * v38 + 32;
            v43 = a3[1] - *a3;
            v44 = v42 - v43;
            memcpy((v42 - v43), *a3, v43);
            v45 = *a3;
            *a3 = v44;
            a3[1] = v37;
            a3[2] = 0;
            if (v45)
            {
              operator delete(v45);
            }
          }

          else
          {
            *v35 = v27;
            v35[1] = v26;
            v35[2] = v25;
            v35[3] = v24;
            v37 = (v35 + 8);
            *(v35 + 2) = v32;
            *(v35 + 3) = v34;
          }

          a3[1] = v37;
          ++v11;
        }

        while (v11 < 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
      }

      if (([*(v9 + 48) isEqual:v23] & 1) == 0)
      {
        v27 = 0.0;
        v26 = 0.0;
        v25 = 0.0;
        v24 = 0.0;
      }

      v46 = *(v9 + 24);
      v47 = *(v9 + 28);
      v48 = *(v9 + 32);
      v49 = fmaxf(fabsf(v46), fmaxf(fabsf(v47), fabsf(v48)));
      if (v49 > 1.8447e19)
      {
        break;
      }

      v51 = 1.0;
      if (v49 < 5.421e-20)
      {
        v50 = 1769996288;
        goto LABEL_47;
      }

LABEL_48:
      v26 = v26 + v46;
      v25 = v25 + v47;
      v24 = v24 + v48;
      v27 = v27 + (sqrtf((((v47 * v51) * (v47 * v51)) + ((v46 * v51) * (v46 * v51))) + ((v48 * v51) * (v48 * v51))) / v51);
      v52 = *(v9 + 48);

      v9 += 64;
      v23 = v52;
      if (v9 == v70)
      {
        goto LABEL_51;
      }
    }

    v50 = 360710144;
LABEL_47:
    v51 = *&v50;
    goto LABEL_48;
  }

  v52 = 0;
  v27 = 0.0;
  v26 = 0.0;
  v25 = 0.0;
  v24 = 0.0;
LABEL_51:
  while (v11 < 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5))
  {
    if (v52)
    {
      v53 = [v52 UUIDString];
      v54 = [v53 UTF8String];
      v55 = strlen(v54);
      v56 = boost::uuids::string_generator::operator()<char const*>(&v71, v54, &v54[v55]);
      v58 = v57;
    }

    else
    {
      v58 = 0;
      v56 = 0;
    }

    v59 = a3[1];
    v60 = a3[2];
    if (v59 >= v60)
    {
      v62 = (v59 - *a3) >> 5;
      v63 = v62 + 1;
      if ((v62 + 1) >> 59)
      {
        std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
      }

      v64 = v60 - *a3;
      if (v64 >> 4 > v63)
      {
        v63 = v64 >> 4;
      }

      if (v64 >= 0x7FFFFFFFFFFFFFE0)
      {
        v65 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v65 = v63;
      }

      if (v65)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ULEndpointClusteringAlgorithm::FingerprintCumulativeOdometryState>>(a3, v65);
      }

      v66 = 32 * v62;
      *v66 = v27;
      *(v66 + 4) = v26;
      *(v66 + 8) = v25;
      *(v66 + 12) = v24;
      *(v66 + 16) = v56;
      *(v66 + 24) = v58;
      v61 = 32 * v62 + 32;
      v67 = a3[1] - *a3;
      v68 = v66 - v67;
      memcpy((v66 - v67), *a3, v67);
      v69 = *a3;
      *a3 = v68;
      a3[1] = v61;
      a3[2] = 0;
      if (v69)
      {
        operator delete(v69);
      }
    }

    else
    {
      *v59 = v27;
      v59[1] = v26;
      v59[2] = v25;
      v59[3] = v24;
      v61 = (v59 + 8);
      *(v59 + 2) = v56;
      *(v59 + 3) = v58;
    }

    a3[1] = v61;
    ++v11;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_259012E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void ULEndpointClusteringAlgorithm::buildSparseIoEuclideanDistanceMatrix(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  *a2 = 2139095040;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 1065353216;
  *(a2 + 48) = 2139095040;
  v45 = a2 + 48;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 1065353216;
  *(a2 + 96) = 2139095040;
  v44 = a2 + 96;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 1065353216;
  *(a2 + 144) = 2139095040;
  v43 = a2 + 144;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 1065353216;
  *(a2 + 192) = 2139095040;
  v41 = a2;
  v42 = a2 + 192;
  *(a2 + 216) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 232) = 1065353216;
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = v2 - v3;
      if (v6 < (v2 - v3) >> 5)
      {
        break;
      }

LABEL_30:
      ++v6;
      v5 += 32;
      if (v6 >= v7 >> 5)
      {
        goto LABEL_31;
      }
    }

    v8 = v3 + 32 * v6;
    v9 = v5;
    v10 = v6;
    while (1)
    {
      if (*(v8 + 16) != 0 && *(v8 + 16) == *(v3 + v9 + 16) && *(v8 + 24) == *(v3 + v9 + 24))
      {
        v12 = *v8;
        v13 = *(v3 + v9);
        v14 = +[ULDefaultsSingleton shared];
        v15 = [v14 defaultsDictionary];

        v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMaximumLengthForFusion"];
        v17 = [v15 objectForKey:v16];
        if (!v17)
        {
          goto LABEL_14;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v17 doubleValue];
        }

        else
        {
LABEL_14:
          [&unk_286A714D8 doubleValue];
        }

        v19 = v18;
        v20 = vabds_f32(v12, v13);

        if (v19 > v20)
        {
          break;
        }
      }

LABEL_29:
      ++v10;
      v3 = *a1;
      v2 = a1[1];
      v7 = v2 - *a1;
      v9 += 32;
      if (v10 >= v7 >> 5)
      {
        goto LABEL_30;
      }
    }

    v21 = (v3 + v9);
    v22 = *(v8 + 4);
    v23 = *(v8 + 8);
    v24 = v21[1];
    v25 = v21[2];
    v26 = *(v8 + 12);
    v27 = v21[3];
    v28 = fmaxf(vabds_f32(v22, v24), fmaxf(vabds_f32(v23, v25), vabds_f32(v26, v27)));
    if (v28 <= 1.8447e19)
    {
      v30 = 1.0;
      if (v28 >= 5.421e-20)
      {
        goto LABEL_21;
      }

      *&v29 = 1.9343e25;
    }

    else
    {
      *&v29 = 5.1699e-26;
    }

    v30 = *&v29;
LABEL_21:
    v31 = ULSettings::get<ULSettings::HomeSlamIoEuclideanDistanceForConnection>();
    v32 = sqrtf(((((v23 - v25) * v30) * ((v23 - v25) * v30)) + (((v22 - v24) * v30) * ((v22 - v24) * v30))) + (((v26 - v27) * v30) * ((v26 - v27) * v30))) / v30;
    v33 = 0.0;
    if (v32 < v31)
    {
      goto LABEL_27;
    }

    v34 = +[ULDefaultsSingleton shared];
    v35 = [v34 defaultsDictionary];

    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamIoEuclideanDistanceForDisconnection"];
    v37 = [v35 objectForKey:v36];
    if (!v37)
    {
      goto LABEL_25;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v37 floatValue];
    }

    else
    {
LABEL_25:
      [&unk_286A72BF0 floatValue];
    }

    v39 = v38;

    v33 = 1.0;
    if (v32 >= v39)
    {
LABEL_27:
      ULSparseDistanceMatrix<float>::set(v41, v6, v10, v33);
    }

    ULSparseDistanceMatrix<float>::set(v45, v6, v10, v21[1] - *(v8 + 4));
    ULSparseDistanceMatrix<float>::set(v44, v6, v10, v21[2] - *(v8 + 8));
    ULSparseDistanceMatrix<float>::set(v43, v6, v10, v21[3] - *(v8 + 12));
    ULSparseDistanceMatrix<float>::set(v42, v6, v10, v20);
    goto LABEL_29;
  }

LABEL_31:
  v40 = *MEMORY[0x277D85DE8];
}

void ULEndpointClusteringAlgorithm::calculateFirstOrderFusionMatrix(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v4 = a1[1];
  if (v4 != *a1)
  {
    v10 = 0;
    do
    {
      v11 = v4 - v5;
      for (i = v10; i < v11 >> 5; v11 = v4 - *a1)
      {
        v13 = ULSparseDistanceMatrix<float>::get(a2, v10, i);
        if (v10 <= i)
        {
          v14 = i;
        }

        else
        {
          v14 = v10;
        }

        if (v10 >= i)
        {
          v15 = i;
        }

        else
        {
          v15 = v10;
        }

        v16 = (v14 + v14 * v14) >> 1;
        if ((LODWORD(v13) & 0x7FFFFFFFu) >= 0x7F800000)
        {
          v13 = *(*(a3 + 8) + 4 * v16 + 4 * v15);
        }

        *(*(a4 + 8) + 4 * v16 + 4 * v15) = v13;
        ++i;
        v5 = *a1;
        v4 = a1[1];
      }

      ++v10;
    }

    while (v10 < v11 >> 5);
  }
}

void ULEndpointClusteringAlgorithm::calculateSecondOrderFusionMatrix(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = ULSettings::get<ULSettings::HomeSlamMapperGroupingMinRfDistance>();
  v8 = ULSettings::get<ULSettings::HomeSlamMapperGroupingDistanceFactor>();
  v9 = +[ULDefaultsSingleton shared];
  v10 = [v9 defaultsDictionary];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMapperSecondOrderConnectionStrictnessFactor"];
  v12 = [v10 objectForKey:v11];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v12 floatValue];
  }

  else
  {
    [&unk_286A72BB0 floatValue];
  }

  v14 = v13;

  v15 = ULSettings::get<ULSettings::HomeSlamIoEuclideanDistanceForConnection>();
  v17 = *a1;
  v16 = a1[1];
  if (v16 != *a1)
  {
    v18 = 0;
    v19 = v7 * v8;
    v20 = v14 * v15;
    while (1)
    {
      v21 = v18++;
      if (v18 < (v16 - v17) >> 5)
      {
        break;
      }

      v53 = (v16 - v17) >> 5;
LABEL_57:
      if (v18 >= v53)
      {
        return;
      }
    }

    v54 = v18;
    while (1)
    {
      v22 = v17 + 32 * v21;
      v23 = v17 + 32 * v18;
      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      v27 = *(v23 + 16);
      v26 = *(v23 + 24);
      if (v25 != v27 || v24 != v26)
      {
        v29 = v21 <= v18 ? v18 : v21;
        v30 = v21 >= v18 ? v18 : v21;
        v56 = (v29 + v29 * v29) >> 1;
        v57 = v30;
        v31 = *(*(a3 + 8) + 4 * v56 + 4 * v30);
        if ((LODWORD(v31) & 0x7FFFFFFFu) <= 0x7F7FFFFF && v31 < v19)
        {
          v33 = ULSparseDistanceMatrix<float>::get(a2, v21, v18);
          v17 = *a1;
          v16 = a1[1];
          if ((LODWORD(v33) & 0x7FFFFFFFu) >= 0x7F800000 && v16 != v17)
          {
            break;
          }
        }
      }

LABEL_54:
      if (++v18 >= (v16 - v17) >> 5)
      {
        v53 = (v16 - v17) >> 5;
        v18 = v54;
        goto LABEL_57;
      }
    }

    v34 = 0;
    while (1)
    {
      v35 = ULSparseDistanceMatrix<float>::get(a2 + 24, v21, v34);
      v36 = ULSettings::get<ULSettings::HomeSlamMaximumLengthForTransitiveFusion>();
      v17 = *a1;
      v16 = a1[1];
      if (v36 > v35 && v16 != v17)
      {
        break;
      }

LABEL_53:
      if (++v34 >= (v16 - v17) >> 5)
      {
        goto LABEL_54;
      }
    }

    v38 = 0;
    while (1)
    {
      v39 = ULSparseDistanceMatrix<float>::get(a2 + 24, v18, v38);
      v40 = ULSettings::get<ULSettings::HomeSlamMaximumLengthForTransitiveFusion>();
      if (v18 == v38 || v21 == v38 || v34 == v38 || v34 == v18 || v34 == v21 || v40 <= v39)
      {
        goto LABEL_52;
      }

      v41 = v34 <= v38 ? v38 : v34;
      v42 = v34 >= v38 ? v38 : v34;
      v43 = (v41 + v41 * v41) >> 1;
      if ((*(*(a4 + 8) + 4 * v43 + 4 * v42) & 0x7FFFFFFFu) < 0x7F800000)
      {
        goto LABEL_52;
      }

      v44 = ULSparseDistanceMatrix<float>::get(a2 + 6, v21, v34);
      v45 = ULSparseDistanceMatrix<float>::get(a2 + 6, v18, v38);
      v46 = ULSparseDistanceMatrix<float>::get(a2 + 12, v21, v34);
      v47 = ULSparseDistanceMatrix<float>::get(a2 + 12, v18, v38);
      v48 = ULSparseDistanceMatrix<float>::get(a2 + 18, v21, v34);
      v49 = ULSparseDistanceMatrix<float>::get(a2 + 18, v18, v38);
      v50 = fmaxf(vabds_f32(v44, v45), fmaxf(vabds_f32(v46, v47), vabds_f32(v48, v49)));
      if (v50 <= 1.8447e19)
      {
        v52 = 1.0;
        if (v50 >= 5.421e-20)
        {
          goto LABEL_50;
        }

        *&v51 = 1.9343e25;
      }

      else
      {
        *&v51 = 5.1699e-26;
      }

      v52 = *&v51;
LABEL_50:
      if ((sqrtf(((((v46 - v47) * v52) * ((v46 - v47) * v52)) + (((v44 - v45) * v52) * ((v44 - v45) * v52))) + (((v48 - v49) * v52) * ((v48 - v49) * v52))) / v52) < v20)
      {
        *(*(a4 + 8) + 4 * v43 + 4 * v42) = *(*(a4 + 8) + 4 * v56 + 4 * v57);
      }

LABEL_52:
      ++v38;
      v17 = *a1;
      v16 = a1[1];
      if (v38 >= (v16 - *a1) >> 5)
      {
        goto LABEL_53;
      }
    }
  }
}

float ULSparseDistanceMatrix<float>::get(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a2;
  if (a3 > a2)
  {
    a2 = a3;
    a3 = v3;
  }

  return ULSparseDistanceMatrix<float>::lookupVal(a1, a2, a3);
}

uint64_t std::optional<CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>>::operator=[abi:ne200100]<CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>&,void>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  *a1 = *a2;
  if (v3 == 1)
  {
    if (a1 != a2)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    }
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    *(a1 + 32) = 1;
  }

  return a1;
}

void ULEndpointClusteringAlgorithm::IOSparseMatrices::~IOSparseMatrices(ULEndpointClusteringAlgorithm::IOSparseMatrices *this)
{
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(this + 200);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(this + 152);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(this + 104);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(this + 56);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(this + 8);
}

uint64_t ULEndpointClusteringAlgorithm::pruneSmallClusters(uint64_t *a1, unint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a1[2];
  v22 = a1 + 2;
  for (i = 0; v4; v4 = *v4)
  {
    i += (v4[4] - v4[3]) >> 4;
  }

  ULEndpointClusteringAlgorithm::getClusterIdentifiers(a1, v26);
  for (j = v27; j; j = *j)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      ULEndpointClusteringAlgorithm::pruneClusters();
    }

    v7 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(j + 4);
      v9 = std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::find<int>(a1, j + 4);
      if (!v9)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v10 = (v9[4] - v9[3]) >> 4;
      *buf = 68289794;
      *&buf[4] = 0;
      v30 = 2082;
      v31 = "";
      v32 = 1026;
      *v33 = v8;
      *&v33[4] = 2050;
      *&v33[6] = v10;
      v34 = 2050;
      v35 = a2;
      _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:pruneSmallClusters, cluster ID:%{public}d, cluster size:%{public}lu, threshold:%{public}lu}", buf, 0x2Cu);
    }

    v11 = std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::find<int>(a1, j + 4);
    if (!v11)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if (a2 > (v11[4] - v11[3]) >> 4)
    {
      std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::__erase_unique<int>(a1, j + 4);
    }
  }

  v23 = 0;
  v24 = 0;
  v12 = v22;
  v25 = 0;
  while (1)
  {
    v12 = *v12;
    if (!v12)
    {
      break;
    }

    std::vector<std::vector<boost::uuids::uuid>>::push_back[abi:ne200100](&v23, v12 + 3);
  }

  std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::clear(a1);
  v13 = v23;
  if (v24 != v23)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      *buf = v15;
      v28 = buf;
      v16 = std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(a1, buf) + 3;
      if ((v13 + v14) != v16)
      {
        std::vector<boost::uuids::uuid>::__assign_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(v16, *(v13 + v14), *(v13 + v14 + 8), (*(v13 + v14 + 8) - *(v13 + v14)) >> 4);
      }

      ++v15;
      v13 = v23;
      v14 += 24;
    }

    while (v15 < 0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3));
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    ULEndpointClusteringAlgorithm::pruneClusters();
  }

  v17 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *v22;
    if (*v22)
    {
      v19 = 0;
      do
      {
        v19 += (v18[4] - v18[3]) >> 4;
        v18 = *v18;
      }

      while (v18);
    }

    else
    {
      v19 = 0;
    }

    *buf = 68289794;
    *&buf[4] = 0;
    v30 = 2082;
    v31 = "";
    v32 = 2050;
    *v33 = a2;
    *&v33[8] = 1026;
    *&v33[10] = i;
    v34 = 1026;
    LODWORD(v35) = v19;
    _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:pruneSmallClusters, clusterSizeThreshold:%{public}lu, numFingerprintsPrePruning:%{public}d, numFingerprintsPostPruning:%{public}d}", buf, 0x28u);
  }

  *buf = &v23;
  std::vector<std::vector<boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](buf);
  result = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v26);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259013C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t *ULEndpointClusteringAlgorithm::getClusterIdentifiers@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  for (i = result + 2; ; result = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a2, i + 4))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  return result;
}

uint64_t std::vector<std::vector<boost::uuids::uuid>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<boost::uuids::uuid>>::__emplace_back_slow_path<std::vector<boost::uuids::uuid> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<boost::uuids::uuid>>::__construct_one_at_end[abi:ne200100]<std::vector<boost::uuids::uuid> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

double **CLReducerFunction<std::multiset<double>,double>::parametrizedPercentileSorted(double **result, double a2)
{
  v2 = result[2];
  if (!v2)
  {
    CLReducerFunction<std::multiset<float>,float>::parametrizedPercentileSorted();
  }

  if (a2 < 0.0 || a2 > 1.0)
  {
    CLReducerFunction<std::multiset<float>,float>::parametrizedPercentileSorted();
  }

  v4 = a2 == 0.0 || v2 == 1;
  if (v4)
  {
    v5 = *result;
LABEL_17:
    v8 = *(v5 + 4);
    return result;
  }

  if (a2 == 1.0)
  {
    v7 = result[1];
    ++result;
    v6 = v7;
    if (v7)
    {
      do
      {
        v5 = v6;
        v6 = *(v6 + 1);
      }

      while (v6);
    }

    else
    {
      do
      {
        v5 = result[2];
        v4 = *v5 == result;
        result = v5;
      }

      while (v4);
    }

    goto LABEL_17;
  }

  v9 = (v2 - 1);
  v10 = v9 * a2;
  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  if (v10 <= v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = (v2 - 1);
  }

  v12 = floor(v11);
  v13 = llround(v12);
  if (v13 < 0 || v13 > v2 - 2)
  {
    CLReducerFunction<std::multiset<float>,float>::parametrizedPercentileSorted();
  }

  v18 = *result;
  result = std::__advance[abi:ne200100]<std::__tree_const_iterator<float,std::__tree_node<float,void *> *,long>>(&v18, v13);
  v14 = v18;
  v15 = *(v18 + 1);
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
      v16 = *(v14 + 2);
      v4 = *v16 == v14;
      v14 = v16;
    }

    while (!v4);
  }

  v17 = v18[4] + (v11 - v12) * (v16[4] - v18[4]);
  return result;
}

void *std::vector<ULEndpointClusteringAlgorithm::FingerprintCumulativeOdometryState>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULEndpointClusteringAlgorithm::FingerprintCumulativeOdometryState>>(result, a2);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

float ULSettings::get<ULSettings::HomeSlamIoEuclideanDistanceForConnection>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamIoEuclideanDistanceForConnection"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 floatValue];
  }

  else
  {
    [&unk_286A72BD0 floatValue];
  }

  v5 = v4;

  return v5;
}

float *ULSparseDistanceMatrix<float>::set(uint64_t a1, unint64_t a2, unint64_t a3, float a4)
{
  if (a3 > a2)
  {
    v9 = a3;
    v10 = a2;
    v11 = &v9;
    *(std::__hash_table<std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>,std::__unordered_map_hasher<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>,boost::hash<std::pair<unsigned long,unsigned long>>,std::equal_to<std::pair<unsigned long,unsigned long>>,true>,std::__unordered_map_equal<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>,std::equal_to<std::pair<unsigned long,unsigned long>>,boost::hash<std::pair<unsigned long,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>>>::__emplace_unique_key_args<std::pair<unsigned long,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::pair<unsigned long,unsigned long>&&>,std::tuple<>>((a1 + 8), &v9) + 8) = a4;
  }

  v9 = a2;
  v10 = a3;
  v11 = &v9;
  result = std::__hash_table<std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>,std::__unordered_map_hasher<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>,boost::hash<std::pair<unsigned long,unsigned long>>,std::equal_to<std::pair<unsigned long,unsigned long>>,true>,std::__unordered_map_equal<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>,std::equal_to<std::pair<unsigned long,unsigned long>>,boost::hash<std::pair<unsigned long,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>>>::__emplace_unique_key_args<std::pair<unsigned long,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::pair<unsigned long,unsigned long>&&>,std::tuple<>>((a1 + 8), &v9);
  result[8] = a4;
  return result;
}

double ULSettings::get<ULSettings::HomeSlamMaximumLengthForTransitiveFusion>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamMaximumLengthForTransitiveFusion"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 doubleValue];
  }

  else
  {
    [&unk_286A72C00 doubleValue];
  }

  v5 = v4;

  return v5;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_3()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

void *std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<CLMicroLocationProto::ConfidenceReason>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

CLMicroLocationFingerprint *std::vector<CLMicroLocationFingerprint>::__assign_with_size[abi:ne200100]<CLMicroLocationFingerprint*,CLMicroLocationFingerprint*>(uint64_t *a1, uint64_t a2, CLMicroLocationFingerprint *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 5) < a4)
  {
    std::vector<CLMicroLocationFingerprint>::__vdeallocate(a1);
    if (a4 <= 0x124924924924924)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 5)) >= 0x92492492492492)
      {
        v10 = 0x124924924924924;
      }

      else
      {
        v10 = v9;
      }

      std::vector<CLMicroLocationFingerprint>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v11 - v8) >> 5) >= a4)
  {
    while (v6 != a3)
    {
      CLMicroLocationFingerprint::operator=(v8, v6);
      v6 += 224;
      v8 += 224;
    }

    return std::vector<CLMicroLocationFingerprint>::__base_destruct_at_end[abi:ne200100](a1, v8);
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        CLMicroLocationFingerprint::operator=(v8, v14);
        v14 += 224;
        v8 += 224;
        v13 -= 224;
      }

      while (v13);
      v11 = a1[1];
    }

    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<CLMicroLocationFingerprint>,CLMicroLocationFingerprint*,CLMicroLocationFingerprint*,CLMicroLocationFingerprint*>(a1, &v12[v6], a3, v11);
    a1[1] = result;
  }

  return result;
}

void std::vector<CLMicroLocationFingerprint>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<CLMicroLocationFingerprint>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<CLMicroLocationFingerprint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x124924924924925)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationFingerprint>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

CLMicroLocationFingerprint *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<CLMicroLocationFingerprint>,CLMicroLocationFingerprint*,CLMicroLocationFingerprint*,CLMicroLocationFingerprint*>(uint64_t a1, CLMicroLocationFingerprint *a2, CLMicroLocationFingerprint *a3, CLMicroLocationFingerprint *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      CLMicroLocationFingerprint::CLMicroLocationFingerprint(v4, v6);
      v6 = (v6 + 224);
      v4 = (v11 + 224);
      v11 = (v11 + 224);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CLMicroLocationFingerprint>,CLMicroLocationFingerprint*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CLMicroLocationFingerprint>,CLMicroLocationFingerprint*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<CLMicroLocationFingerprint>,std::reverse_iterator<CLMicroLocationFingerprint*>,std::reverse_iterator<CLMicroLocationFingerprint*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<CLMicroLocationFingerprint>,std::reverse_iterator<CLMicroLocationFingerprint*>,std::reverse_iterator<CLMicroLocationFingerprint*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v10[5] = v5;
    v10[6] = v6;
    v8 = a3;
    do
    {
      v10[0] = (v8 - 24);
      std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](v10);
      v9 = *(v8 - 56);
      if (v9)
      {
        *(v8 - 48) = v9;
        operator delete(v9);
      }

      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v8 - 120);
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v8 - 160);
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v8 - 224);
      v8 -= 224;
    }

    while (v8 != a5);
  }
}

void CLMicroLocationFingerprint::~CLMicroLocationFingerprint(CLMicroLocationFingerprint *this)
{
  v3 = (this + 200);
  std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(this + 104);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(this + 64);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(this);
}

uint64_t CLMicroLocationFingerprint::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v6;
    v7 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v7;
    *(a1 + 192) = *(a2 + 192);
  }

  else
  {
    *(a1 + 32) = *(a2 + 32);
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *> *>>(a1, *(a2 + 16), 0);
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
    *(a1 + 96) = *(a2 + 96);
    std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<CLMicroLocationProto::DataType,void *> *>>((a1 + 64), *(a2 + 80), 0);
    *(a1 + 136) = *(a2 + 136);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,void *> *>>((a1 + 104), *(a2 + 120), 0);
    v5 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v5;
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((a1 + 168), *(a2 + 168), *(a2 + 176), (*(a2 + 176) - *(a2 + 168)) >> 2);
    *(a1 + 192) = *(a2 + 192);
    std::vector<ULPhotoFeaturesDO>::__assign_with_size[abi:ne200100]<ULPhotoFeaturesDO*,ULPhotoFeaturesDO*>((a1 + 200), *(a2 + 200), *(a2 + 208), (*(a2 + 208) - *(a2 + 200)) >> 5);
  }

  return a1;
}

void std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        *(v8 + 1) = *(v4 + 1);
        std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__generic_assign[abi:ne200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1> const&>((v8 + 4), (v4 + 4));
        v10 = *v8;
        std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__node_insert_multi(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__deallocate_node(a1, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__emplace_multi<CLMicroLocationFingerprint::Measurement const&>();
  }
}

void sub_259014944(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

void *std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__node_insert_multi(void *a1, void *a2)
{
  v4 = CLMicroLocationFingerprint::Measurement::HashMeasurement::operator()(a1, (a2 + 2));
  a2[1] = v4;
  inserted = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__node_insert_multi_prepare(a1, v4, (a2 + 2));
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__node_insert_multi_perform(a1, a2, inserted);
  return a2;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__generic_assign[abi:ne200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(result + 24) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_286A546E8[v4])(v6);
    }
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJyN5boost5uuids4uuidENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISH_LNS0_6_TraitE1EEEEEvOT_EUlRSP_OT0_E_JRNS0_6__baseILSL_1EJySA_SG_EEERKSX_EEEDcSP_DpT0_(uint64_t *result, void *a2, void *a3)
{
  v4 = *result;
  if (*(*result + 24))
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *v4 = *a3;
    *(v4 + 24) = 0;
  }

  else
  {
    *a2 = *a3;
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJyN5boost5uuids4uuidENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEE16__generic_assignB8ne200100IRKNS0_17__copy_assignmentISH_LNS0_6_TraitE1EEEEEvOT_EUlRSP_OT0_E_JRNS0_6__baseILSL_1EJySA_SG_EEERKSX_EEEDcSP_DpT0_(uint64_t *a1, __n128 *a2, __n128 *a3)
{
  v4 = *a1;
  if (*(*a1 + 24) == 1)
  {
    result = *a3;
    *a2 = *a3;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
    result = *a3;
    *v4 = *a3;
    *(v4 + 24) = 1;
  }

  return result;
}

double std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__assign_alt[abi:ne200100]<2ul,std::string,std::string const&>(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 24) == 2)
  {

    std::string::operator=(this, __str);
  }

  else
  {
    v6[2] = v3;
    v6[3] = v4;
    v6[0] = a1;
    v6[1] = __str;
    *&result = std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__assign_alt[abi:ne200100]<2ul,std::string,std::string const&>(std::__variant_detail::__alt<2ul,std::string> &,std::string const&)::{unnamed type#1}::operator()(v6).n128_u64[0];
  }

  return result;
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>>::__assign_alt[abi:ne200100]<2ul,std::string,std::string const&>(std::__variant_detail::__alt<2ul,std::string> &,std::string const&)::{unnamed type#1}::operator()(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (*(v1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *v1, *(v1 + 1));
  }

  else
  {
    v3 = *v1;
    v5.__r_.__value_.__r.__words[2] = *(v1 + 2);
    *&v5.__r_.__value_.__l.__data_ = v3;
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned long long,boost::uuids::uuid,std::string>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2);
  result = *&v5.__r_.__value_.__l.__data_;
  v2[1].n128_u64[0] = v5.__r_.__value_.__r.__words[2];
  *v2 = result;
  v2[1].n128_u32[2] = 2;
  return result;
}

void *std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__rehash<false>(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        v21 = v19 == a2 ? CLMicroLocationFingerprint::Measurement::PredicateMeasurement::operator()(a1, (v17 + 2), a3) : 0;
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void *std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
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

void sub_259015100(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<CLMicroLocationFingerprint::Measurement,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<CLMicroLocationProto::DataType,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 4);
        *(v8 + 4) = v9;
        v10 = *v8;
        v8[1] = v9;
        inserted = std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__node_insert_multi_prepare(a1, v9, v8 + 4);
        std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__emplace_multi<CLMicroLocationProto::DataType const&>();
  }
}

void sub_259015284(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__do_rehash<false>(a1, prime);
    }
  }
}

void std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
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

void std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 4);
        *(v8 + 4) = v9;
        *(v8 + 3) = *(a2 + 3);
        v10 = *v8;
        v8[1] = v9;
        inserted = std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__node_insert_multi_prepare(a1, v9, v8 + 4);
        std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::__emplace_multi<std::pair<CLMicroLocationProto::DataType const,CLMicroLocationFingerprint::StartAndEndTimestamps> const&>();
  }
}

void sub_2590157EC(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void std::vector<ULPhotoFeaturesDO>::__assign_with_size[abi:ne200100]<ULPhotoFeaturesDO*,ULPhotoFeaturesDO*>(uint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<ULPhotoFeaturesDO>::__vdeallocate(a1);
    if (!(a4 >> 59))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<ULPhotoFeaturesDO>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 5)
  {
    std::__copy_impl::operator()[abi:ne200100]<ULPhotoFeaturesDO *,ULPhotoFeaturesDO *,ULPhotoFeaturesDO *>(&v20, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      v16 = a1[1];
      do
      {
        v18 = *(v16 - 32);
        v16 -= 32;
        v17 = v18;
        if (v18)
        {
          *(v15 - 24) = v17;
          operator delete(v17);
        }

        v15 = v16;
      }

      while (v16 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<ULPhotoFeaturesDO *,ULPhotoFeaturesDO *,ULPhotoFeaturesDO *>(&v19, a2, a2 + v12, v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULPhotoFeaturesDO>,ULPhotoFeaturesDO*,ULPhotoFeaturesDO*,ULPhotoFeaturesDO*>(a1, (a2 + v12), a3, a1[1]);
  }
}

void std::vector<ULPhotoFeaturesDO>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<ULPhotoFeaturesDO>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<ULPhotoFeaturesDO *,ULPhotoFeaturesDO *,ULPhotoFeaturesDO *>(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a4, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 2);
      }

      a4[3] = *(v5 + 24);
      v5 += 32;
      a4 += 4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::vector<CLMicroLocationFingerprint>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 224)
  {
    v6 = (i - 24);
    std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v6);
    v5 = *(i - 56);
    if (v5)
    {
      *(i - 48) = v5;
      operator delete(v5);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(i - 120);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(i - 160);
    result = std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(i - 224);
  }

  *(v3 + 8) = a2;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationFingerprint>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x124924924924925)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::vector<boost::uuids::uuid>>::__construct_one_at_end[abi:ne200100]<std::vector<boost::uuids::uuid> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(v3, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<boost::uuids::uuid>>::__emplace_back_slow_path<std::vector<boost::uuids::uuid> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<boost::uuids::uuid>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 4);
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
  std::__split_buffer<std::vector<boost::uuids::uuid>>::~__split_buffer(&v14);
  return v8;
}

void sub_259015D54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<boost::uuids::uuid>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<boost::uuids::uuid>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259015DC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<boost::uuids::uuid>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<boost::uuids::uuid>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<boost::uuids::uuid>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<boost::uuids::uuid>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<boost::uuids::uuid>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<boost::uuids::uuid>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::vector<boost::uuids::uuid>::__assign_with_size[abi:ne200100]<boost::uuids::uuid*,boost::uuids::uuid*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<boost::uuids::uuid>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<std::vector<boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<boost::uuids::uuid>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<boost::uuids::uuid>>::clear[abi:ne200100](uint64_t *a1)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<ULEndpointClusteringAlgorithm::FingerprintCumulativeOdometryState>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25901618C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void boost::throw_exception<std::runtime_error>(uint64_t a1, uint64_t a2)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::runtime_error>::wrapexcept(exception, a1, a2);
}

uint64_t boost::wrapexcept<std::runtime_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

uint64_t boost::wrapexcept<std::runtime_error>::wrapexcept(uint64_t a1, const std::runtime_error *a2, int8x16_t *a3)
{
  *a1 = &unk_286A547F0;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = &unk_286A54778;
  *(a1 + 8) = &unk_286A547A8;
  *(a1 + 24) = &unk_286A547D0;
  *(a1 + 32) = 0;
  *(a1 + 56) = a3[1].i32[0];
  *(a1 + 40) = vextq_s8(*a3, *a3, 8uLL);
  return a1;
}

void sub_2590164D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<std::runtime_error>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<std::runtime_error>::wrapexcept(exception, a1);
}

void boost::wrapexcept<std::runtime_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toboost::wrapexcept<std::runtime_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 16) = &unk_286A54820;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toboost::wrapexcept<std::runtime_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_286A54820;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

{
  *a1 = &unk_286A54820;
  v1 = (a1 - 2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  JUMPOUT(0x259CA1F90);
}

uint64_t *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

uint64_t boost::wrapexcept<std::runtime_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286A547F0;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_286A54820;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_286A54778;
  *(a1 + 8) = &unk_286A547A8;
  *(a1 + 24) = &unk_286A547D0;
  return a1;
}

uint64_t boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<boost::uuids::uuid>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<boost::uuids::uuid>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,int>>(void *a1, void *a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2;
    if (v2 >= *&v4)
    {
      v6 = v2 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v8;
}

uint64_t *CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>::CLDistanceMatrixTemplate<std::vector<CLMicroLocationFingerprint>,std::function<float ()(CLMicroLocationFingerprint const&,CLMicroLocationFingerprint const&)>>(uint64_t *a1, void *a2, uint64_t a3, int16x4_t a4)
{
  v24[3] = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  v7 = a1 + 1;
  a1[2] = 0;
  a1[3] = 0;
  v8 = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5);
  *a1 = v8;
  v19[0] = 0;
  std::vector<float>::resize(a1 + 1, (v8 + v8 * v8) >> 1, v19, a4);
  if (*a1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 2;
    do
    {
      CLMicroLocationFingerprint::CLMicroLocationFingerprint(v19, (*a2 + 224 * v10));
      if (v10)
      {
        v12 = 0;
        v13 = (2 * v9) & 0xFFFFFFFFFFFFFFFCLL;
        v14 = v10;
        do
        {
          v15 = *(a3 + 24);
          if (!v15)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          *(*v7 + v13) = (*(*v15 + 48))(v15, v19, *a2 + v12);
          v12 += 224;
          v13 += 4;
          --v14;
        }

        while (v14);
      }

      v18 = v24;
      std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v18);
      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v21);
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v20);
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v19);
      ++v10;
      v9 += v11;
      v11 += 2;
    }

    while (v10 < *a1);
  }

  v16 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_259016E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v14 = *v11;
  if (*v11)
  {
    *(v12 + 16) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void *CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>::CLDistanceMatrixTemplate(void *a1, uint64_t a2, int16x4_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = a2;
  v5 = 0;
  std::vector<float>::resize(a1 + 1, (a2 + a2 * a2) >> 1, &v5, a3);
  return a1;
}

void sub_259016F04(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

float ULSparseDistanceMatrix<float>::lookupVal(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = a2;
  v9 = a3;
  if (!std::__hash_table<std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>,std::__unordered_map_hasher<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>,boost::hash<std::pair<unsigned long,unsigned long>>,std::equal_to<std::pair<unsigned long,unsigned long>>,true>,std::__unordered_map_equal<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>,std::equal_to<std::pair<unsigned long,unsigned long>>,boost::hash<std::pair<unsigned long,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>>>::find<std::pair<unsigned long,unsigned long>>(a1 + 1, &v8))
  {
    return *a1;
  }

  v8 = a2;
  v9 = a3;
  v6 = std::__hash_table<std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>,std::__unordered_map_hasher<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>,boost::hash<std::pair<unsigned long,unsigned long>>,std::equal_to<std::pair<unsigned long,unsigned long>>,true>,std::__unordered_map_equal<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>,std::equal_to<std::pair<unsigned long,unsigned long>>,boost::hash<std::pair<unsigned long,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>>>::find<std::pair<unsigned long,unsigned long>>(a1 + 1, &v8);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v6[8];
}

void *std::__hash_table<std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>,std::__unordered_map_hasher<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>,boost::hash<std::pair<unsigned long,unsigned long>>,std::equal_to<std::pair<unsigned long,unsigned long>>,true>,std::__unordered_map_equal<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>,std::equal_to<std::pair<unsigned long,unsigned long>>,boost::hash<std::pair<unsigned long,unsigned long>>,true>,std::allocator<std::__hash_value_type<std::pair<unsigned long,unsigned long>,float>>>::find<std::pair<unsigned long,unsigned long>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v3) ^ ((0xC6A4A7935BD1E995 * v3) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * *a2) ^ ((0xC6A4A7935BD1E995 * *a2) >> 47)) + 3864292196u)) + 3864292196u;
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v3) ^ ((0xC6A4A7935BD1E995 * v3) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * *a2) ^ ((0xC6A4A7935BD1E995 * *a2) >> 47)) + 3864292196u)) + 3864292196u;
    if (v4 >= *&v2)
    {
      v6 = v4 % *&v2;
    }
  }

  else
  {
    v6 = v4 & (*&v2 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  result = *v7;
  if (*v7)
  {
    do
    {
      v9 = result[1];
      if (v4 == v9)
      {
        if (result[2] == *a2 && result[3] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v5.u32[0] > 1uLL)
        {
          if (v9 >= *&v2)
          {
            v9 %= *&v2;
          }
        }

        else
        {
          v9 &= *&v2 - 1;
        }

        if (v9 != v6)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}