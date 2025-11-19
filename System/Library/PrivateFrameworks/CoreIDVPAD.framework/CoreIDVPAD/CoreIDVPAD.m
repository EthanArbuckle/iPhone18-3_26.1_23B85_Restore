void sub_2456886D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<vision::mod::LivenessCheck_Options>::~shared_ptr[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

void sub_245688E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  std::vector<std::vector<float>>::~vector[abi:ne200100](&a14);
  if (a17)
  {
    a18 = a17;
    operator delete(a17);
    v31 = a20;
    if (!a20)
    {
LABEL_3:
      v32 = a23;
      if (!a23)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v31 = a20;
    if (!a20)
    {
      goto LABEL_3;
    }
  }

  a21 = v31;
  operator delete(v31);
  v32 = a23;
  if (!a23)
  {
LABEL_4:
    v33 = __p;
    if (!__p)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  a24 = v32;
  operator delete(v32);
  v33 = __p;
  if (!__p)
  {
LABEL_6:

    _Unwind_Resume(a1);
  }

LABEL_5:
  a27 = v33;
  operator delete(v33);
  goto LABEL_6;
}

void NSArrayAsVector(void *a1, void *a2)
{
  v3 = a2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v8 = v3;
  v4 = [v3 count];
  if (v4)
  {
    std::vector<float>::__append(a1, v4);
  }

  for (i = 0; i < [v8 count]; ++i)
  {
    v6 = [v8 objectAtIndexedSubscript:i];
    [v6 floatValue];
    *(*a1 + 4 * i) = v7;
  }
}

void sub_245688FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void **std::vector<std::vector<float>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_245689734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  std::vector<std::vector<float>>::~vector[abi:ne200100](&a16);
  if (a19)
  {
    a20 = a19;
    operator delete(a19);
    v33 = a22;
    if (!a22)
    {
LABEL_3:
      v34 = a25;
      if (!a25)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v33 = a22;
    if (!a22)
    {
      goto LABEL_3;
    }
  }

  a23 = v33;
  operator delete(v33);
  v34 = a25;
  if (!a25)
  {
LABEL_4:
    v35 = __p;
    if (!__p)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  a26 = v34;
  operator delete(v34);
  v35 = __p;
  if (!__p)
  {
LABEL_6:

    _Unwind_Resume(a1);
  }

LABEL_5:
  a29 = v35;
  operator delete(v35);
  goto LABEL_6;
}

void sub_245689A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_245689C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_24568A7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::vector<std::vector<float>>::~vector[abi:ne200100](&a15);

  _Unwind_Resume(a1);
}

id PADVNFaceprintInit(VNFaceObservation *a1)
{
  v1 = a1;
  v2 = [(VNFaceObservation *)v1 faceprint];
  v3 = [v2 elementCount];

  if (v3)
  {
    v4 = [(VNFaceObservation *)v1 faceprint];
    v5 = [v4 descriptorData];
    v6 = [v5 bytes];

    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:v3];
    do
    {
      LODWORD(v8) = *v6;
      v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
      [v7 addObject:v9];

      ++v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v10 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      PADVNFaceprintInit();
    }

    v7 = 0;
  }

  return v7;
}

void ___ZL25LivenessActionFromGesture18PADLivenessGesture_block_invoke(uint64_t a1)
{
  if (___ZL25LivenessActionFromGesture18PADLivenessGesture_block_invoke_2())
  {
    v2 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      ___ZL25LivenessActionFromGesture18PADLivenessGesture_block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
    }
  }
}

uint64_t ___ZL25LivenessActionFromGesture18PADLivenessGesture_block_invoke_2()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2 = [v1 persistentDomainForName:*MEMORY[0x277CCA208]];

    v3 = [v2 objectForKeyedSubscript:@"CIDVPAD.use-verbose-logging"];
    v4 = v3;
    if (!v3)
    {
      v3 = MEMORY[0x277CBEC28];
    }

    v5 = [v3 BOOLValue];

    return v5;
  }

  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__shared_ptr_emplace<vision::mod::LivenessCheck_Options>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285873278;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245D6EF30);
}

uint64_t std::shared_ptr<vision::mod::LivenessCheck_Options>::~shared_ptr[abi:ne200100](uint64_t result)
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

void std::__shared_ptr_emplace<vision::mod::LivenessCheckPredictor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2858732C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245D6EF30);
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v10 = 4 * a2;
      bzero(*(a1 + 8), 4 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 2) + a2;
    if (v7 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v3 - v5;
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
    v12 = 4 * a2;
    bzero(v11, 4 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278E83588, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::vector<std::vector<float>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + a2;
    if (v7 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
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
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    memcpy(v14, v5, v6);
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 8u);
}

void vision::mod::LivenessCheckPredictor::LivenessCheckPredictor(vision::mod::LivenessCheckPredictor *this, const LivenessCheck_Options *a2)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v4;
  *this = v3;
  v5 = *(a2 + 3);
  v6 = *(a2 + 4);
  v7 = *(a2 + 6);
  *(this + 5) = *(a2 + 5);
  *(this + 6) = v7;
  *(this + 3) = v5;
  *(this + 4) = v6;
  *(this + 28) = 0;
  *(this + 58) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 74) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 61) = 0;
  *(this + 62) = 0;
  *(this + 128) = 0;
  *(this + 63) = 0;
  *(this + 130) = 1041865114;
  *(this + 524) = 0;
  v9 = *(a2 + 24);
  v8 = *(a2 + 25);
  *(this + 76) = v9;
  *(this + 77) = v8;
  *(this + 129) = *(a2 + 22);
  *(this + 66) = vrev64_s32(*(a2 + 104));
  MEMORY[0x245D6F890](this + 312, v9);
  *(this + 42) = 4 * *(this + 77);
  MEMORY[0x245D6F890](this + 344, *(this + 76));
  *(this + 46) = 3 * *(this + 77);
  MEMORY[0x245D6F890](this + 376, *(this + 76));
  *(this + 50) = 12 * *(this + 77);
  MEMORY[0x245D6F890](this + 408, *(this + 76));
  *(this + 54) = 12 * *(this + 77);
  MEMORY[0x245D6F890](this + 440, *(this + 76));
  *(this + 58) = 12 * *(this + 77);
  *(this + 128) = 0;
  operator new();
}

void sub_24568B60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::vector<std::vector<std::vector<float>>>::~vector[abi:ne200100]((v21 + 488));
  v24 = *(v21 + 272);
  if (v24)
  {
    *(v21 + 280) = v24;
    operator delete(v24);
    v25 = *(v21 + 144);
    if (!v25)
    {
LABEL_5:
      v26 = *v22;
      if (!*v22)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v25 = *(v21 + 144);
    if (!v25)
    {
      goto LABEL_5;
    }
  }

  *(v21 + 152) = v25;
  operator delete(v25);
  v26 = *v22;
  if (!*v22)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_9:
  *(v21 + 128) = v26;
  operator delete(v26);
  _Unwind_Resume(a1);
}

void vision::mod::LivenessCheckPredictor::~LivenessCheckPredictor(vision::mod::LivenessCheckPredictor *this)
{
  v2 = *(this + 61);
  if (v2)
  {
    v3 = *(this + 62);
    v4 = *(this + 61);
    if (v3 != v2)
    {
      v5 = *(this + 62);
      do
      {
        v8 = *(v5 - 3);
        v5 -= 3;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 2);
          v6 = v7;
          if (v9 != v7)
          {
            v10 = *(v3 - 2);
            do
            {
              v12 = *(v10 - 3);
              v10 -= 24;
              v11 = v12;
              if (v12)
              {
                *(v9 - 2) = v11;
                operator delete(v11);
              }

              v9 = v10;
            }

            while (v10 != v7);
            v6 = *v5;
          }

          *(v3 - 2) = v7;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(this + 61);
    }

    *(this + 62) = v2;
    operator delete(v4);
  }

  v13 = *(this + 34);
  if (v13)
  {
    *(this + 35) = v13;
    operator delete(v13);
  }

  v14 = *(this + 18);
  if (v14)
  {
    *(this + 19) = v14;
    operator delete(v14);
  }

  v15 = *(this + 15);
  if (v15)
  {
    *(this + 16) = v15;
    operator delete(v15);
  }
}

uint64_t vision::mod::LivenessCheckPredictor::getRaiseEyebrowsReferenceIndex@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + 144);
  v2 = *(this + 152);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return this;
}

uint64_t vision::mod::LivenessCheckPredictor::getIDmatchingFrameIndex@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + 120);
  v2 = *(this + 128);
  if (v2 != v3)
  {
    if (((v2 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return this;
}

float vision::mod::LivenessCheckPredictor::computeMouthHeight(uint64_t a1, float32x2_t **a2)
{
  v2 = vcvtq_f64_f32(vsub_f32((*a2)[34], (*a2)[39]));
  *v2.f64 = vaddvq_f64(vmulq_f64(v2, v2));
  v3 = vcvtq_f64_f32(vsub_f32((*a2)[35], (*a2)[38]));
  *v3.f64 = vaddvq_f64(vmulq_f64(v3, v3));
  *v2.f64 = (sqrtf(*v2.f64) + 0.0) + sqrtf(*v3.f64);
  v4 = vcvtq_f64_f32(vsub_f32((*a2)[36], (*a2)[37]));
  *v4.f64 = vaddvq_f64(vmulq_f64(v4, v4));
  v2.f64[0] = (*v2.f64 + sqrtf(*v4.f64));
  v5 = vcvtq_f64_f32(vsub_f32((*a2)[33], (*a2)[29]));
  *v5.f64 = vaddvq_f64(vmulq_f64(v5, v5));
  return v2.f64[0] / (sqrtf(*v5.f64) * 3.0);
}

float vision::mod::LivenessCheckPredictor::computeEyebrow2EyeHeight(uint64_t a1, float32x2_t **a2)
{
  v2 = vcvtq_f64_f32(vsub_f32((*a2)[1], (*a2)[15]));
  *v2.f64 = vaddvq_f64(vmulq_f64(v2, v2));
  v3 = vcvtq_f64_f32(vsub_f32((*a2)[2], (*a2)[14]));
  *v3.f64 = vaddvq_f64(vmulq_f64(v3, v3));
  *v2.f64 = (sqrtf(*v2.f64) + 0.0) + sqrtf(*v3.f64);
  v4 = vcvtq_f64_f32(vsub_f32((*a2)[5], (*a2)[23]));
  *v4.f64 = vaddvq_f64(vmulq_f64(v4, v4));
  *v2.f64 = *v2.f64 + sqrtf(*v4.f64);
  v5 = vcvtq_f64_f32(vsub_f32((*a2)[6], (*a2)[22]));
  *v5.f64 = vaddvq_f64(vmulq_f64(v5, v5));
  return (*v2.f64 + sqrtf(*v5.f64)) * 0.25;
}

float vision::mod::LivenessCheckPredictor::computeEyeAspectRatio(uint64_t a1, uint64_t a2)
{
  v2.i32[0] = *(*a2 + 72);
  v3.i32[0] = *(*a2 + 76);
  v4.i32[0] = *(*a2 + 120);
  v5.i32[0] = *(*a2 + 124);
  v7.i32[0] = *(*a2 + 88);
  v6.i32[0] = *(*a2 + 92);
  v9.i32[0] = *(*a2 + 112);
  v8.i32[0] = *(*a2 + 116);
  v11.i32[0] = *(*a2 + 64);
  v10.i32[0] = *(*a2 + 68);
  v13.i32[0] = *(*a2 + 104);
  v12.i32[0] = *(*a2 + 108);
  v2.i32[1] = *(*a2 + 136);
  v4.i32[1] = *(*a2 + 184);
  v3.i32[1] = *(*a2 + 140);
  v5.i32[1] = *(*a2 + 188);
  v14 = vcvtq_f64_f32(vsub_f32(v2, v4));
  v15 = vcvtq_f64_f32(vsub_f32(v3, v5));
  v7.i32[1] = *(*a2 + 152);
  v9.i32[1] = *(*a2 + 168);
  v6.i32[1] = *(*a2 + 156);
  v8.i32[1] = *(*a2 + 172);
  v16 = vsub_f32(v6, v8);
  v17 = vcvtq_f64_f32(vsub_f32(v7, v9));
  v18 = vcvtq_f64_f32(v16);
  v11.i32[1] = *(*a2 + 128);
  v13.i32[1] = *(*a2 + 160);
  v10.i32[1] = *(*a2 + 132);
  v12.i32[1] = *(*a2 + 164);
  v19 = vsub_f32(v10, v12);
  v20 = vcvtq_f64_f32(vsub_f32(v11, v13));
  v21 = vcvtq_f64_f32(v19);
  v22 = vcvtq_f64_f32(vsqrt_f32(vcvt_f32_f64(vaddq_f64(vmulq_f64(v20, v20), vmulq_f64(v21, v21)))));
  return vaddv_f32(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(vadd_f32(vadd_f32(vsqrt_f32(vcvt_f32_f64(vaddq_f64(vmulq_f64(v14, v14), vmulq_f64(v15, v15)))), 0), vsqrt_f32(vcvt_f32_f64(vaddq_f64(vmulq_f64(v17, v17), vmulq_f64(v18, v18)))))), vmaxnmq_f64(vaddq_f64(v22, v22), vdupq_n_s64(0x3DDB7CDFD9D7BDBBuLL))))) * 0.5;
}

uint64_t vision::mod::LivenessCheckPredictor::getMaxAngle(vision::mod::LivenessCheckPredictor *this, float a2, float a3, float a4)
{
  v4 = fabsf(a2);
  v5 = fabsf(a3);
  v6 = fabsf(a4);
  if (v4 > v5)
  {
    v7 = v4 == v6;
    v8 = v4 < v6;
  }

  else
  {
    v7 = 1;
    v8 = 0;
  }

  if (!v8 && !v7)
  {
    return 0;
  }

  if (v5 > v4)
  {
    v9 = v5 == v6;
    v10 = v5 < v6;
  }

  else
  {
    v9 = 1;
    v10 = 0;
  }

  if (!v10 && !v9)
  {
    return 1;
  }

  if (v6 > v5)
  {
    v11 = v6 == v4;
    v12 = v6 < v4;
  }

  else
  {
    v11 = 1;
    v12 = 0;
  }

  if (v12 || v11)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t vision::mod::LivenessCheckPredictor::runStitchDetector(vision::mod::LivenessCheckPredictor *this, const vImage_Buffer *src, BOOL *a3, float *a4, int a5)
{
  vImageScale_ARGB8888(src, (this + 312), 0, 8u);
  vImageConvert_RGBA8888toRGB888((this + 312), (this + 344), 0x100u);
  *(this + 45) *= 3;
  *(this + 49) *= 3;
  vImageConvert_Planar8toPlanarF((this + 344), (this + 376), 255.0, 0.0, 0x100u);
  *(this + 45) /= 3uLL;
  *(this + 49) /= 3uLL;
  __StandardDeviation = 0;
  vDSP_normalize(*(this + 47), 1, *(this + 4 * *(this + 524) + 51), 1, &__StandardDeviation + 1, &__StandardDeviation, 3 * *(this + 77) * *(this + 76));
  __C = 0.0;
  v9 = *(this + 132);
  if (v9)
  {
    if ((v9 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  std::vector<std::vector<float>>::vector[abi:ne200100](&v47, *(this + 133));
  v10 = *(this + 76);
  v11 = 0.0;
  if (v10 >= 1)
  {
    LODWORD(v12) = *(this + 132);
    if (v12 >= 1)
    {
      for (i = 0; i < v10; ++i)
      {
        if (v12 >= 1)
        {
          v14 = 0;
          v15 = 0;
          do
          {
            v16 = *(this + 77);
            vDSP_dotpr((*(this + 51) + 4 * 3 * i * v16 + 4 * (v14 * v16 / v12)), 1, (*(this + 55) + 4 * 3 * i * v16 + 4 * (v14 * v16 / v12)), 1, &__C, 3 * v16 / v12);
            v10 = *(this + 76);
            v17 = *(v47 + 3 * (*(this + 133) * i / v10));
            *(v17 + 4 * v15) = __C + *(v17 + 4 * v15);
            v11 = v11 + __C;
            ++v15;
            v12 = *(this + 132);
            v14 += 3;
          }

          while (v15 < v12);
        }
      }
    }
  }

  v18 = *(this + 133);
  if (v18 >= 1)
  {
    v19 = *(this + 132);
    if (v19 >= 1)
    {
      v20 = 0;
      v21 = v47;
      v22 = *(this + 61);
      v23 = (3 * v10 * *(this + 77) / v19 / v18);
      do
      {
        v24 = *(v22 + 24 * v20);
        v25 = v21[3 * v20];
        v26 = v19;
        do
        {
          v28 = *v24;
          v24 += 3;
          v27 = v28;
          *v28 = *(v28 + 4);
          LODWORD(v28) = *v25++;
          v27[2] = *&v28 / v23;
          --v26;
        }

        while (v26);
        ++v20;
      }

      while (v20 != v18);
    }
  }

  v29 = *(this + 119);
  *(this + 118) = v29;
  v30 = *(this + 120);
  *(this + 119) = v30;
  v31 = v11 / (3 * v10 * *(this + 77));
  *(this + 120) = v31;
  v32 = *(this + 128);
  *(this + 128) = v32 + 1;
  if (v32 < 3)
  {
    *a3 = 0;
    *(this + 524) ^= 1u;
    v40 = v47;
    if (!v47)
    {
      return 0;
    }

    goto LABEL_33;
  }

  v33 = 0.0;
  if (v18 >= 1 && *(this + 132) >= 1)
  {
    for (j = 0; j != v18; ++j)
    {
      v35 = *(*(this + 61) + 24 * j);
      v36 = *(this + 132);
      do
      {
        v37 = *v35;
        v35 += 3;
        v38 = (*v37 + (v37[1] * -2.0)) + v37[2];
        if (v38 > v33)
        {
          v33 = v38;
        }

        --v36;
      }

      while (v36);
    }
  }

  if (a5)
  {
    v39 = *(this + 129);
  }

  else
  {
    v33 = (v29 + (v30 * -2.0)) + v31;
    v39 = *(this + 130);
  }

  *a3 = v33 >= v39;
  *a4 = v33;
  *(this + 524) ^= 1u;
  v40 = v47;
  if (v47)
  {
LABEL_33:
    v41 = v48;
    v42 = v40;
    if (v48 != v40)
    {
      v43 = v48;
      do
      {
        v45 = *(v43 - 3);
        v43 -= 24;
        v44 = v45;
        if (v45)
        {
          *(v41 - 2) = v44;
          operator delete(v44);
        }

        v41 = v43;
      }

      while (v43 != v40);
      v42 = v47;
    }

    v48 = v40;
    operator delete(v42);
  }

  return 0;
}

void sub_24568BFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24568C00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::vector<float>>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t vision::mod::LivenessCheckPredictor::processFacePoseData(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, void *a6, int *a7)
{
  v8 = a1 + 120;
  v7 = *(a1 + 120);
  *(a1 + 116) = 0;
  *(a1 + 128) = v7;
  *(a1 + 152) = *(a1 + 144);
  v9 = a1 + 208;
  *(a1 + 208 + 4 * *a7) = 0;
  v26 = 0;
  v10 = *a3;
  if (a3[1] != *a3)
  {
    v17 = 0;
    do
    {
      v18 = *a7;
      v19 = *(v9 + 4 * *a7);
      if (v19 <= 1 && fabsf(*(v10 + 4 * v17)) < 10.0 && fabsf(*(*a5 + 4 * v17)) < 10.0 && fabsf(*(*a4 + 4 * v17)) < 10.0)
      {
        *(v9 + 4 * v18) = v19 + 1;
        std::vector<int>::push_back[abi:ne200100](v8, &v26);
        v18 = *a7;
      }

      if (v18 == 9 && 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3) > v26)
      {
        v20 = (*a6 + 24 * v26);
        v21 = v20[1];
        v22 = v21 - *v20;
        if (v21 != *v20)
        {
          v23 = *(a1 + 256);
          if (v23 <= 9)
          {
            if (fabsf(*(*a3 + 4 * v26)) < 10.0 && fabsf(*(*a5 + 4 * v26)) < 5.0 && fabsf(*(*a4 + 4 * v26)) < 5.0)
            {
              if (v23)
              {
                if ((v22 & 0x8000000000000000) == 0)
                {
                  operator new();
                }
              }

              else if ((v22 & 0x8000000000000000) == 0)
              {
                operator new();
              }

              goto LABEL_29;
            }

            if (!v23)
            {
              v24 = *(a1 + 260);
              if (v24 <= 4)
              {
                if (v24)
                {
                  if ((v22 & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }
                }

                else if ((v22 & 0x8000000000000000) == 0)
                {
                  operator new();
                }

LABEL_29:
                std::vector<float>::__throw_length_error[abi:ne200100]();
              }
            }
          }
        }
      }

      v17 = ++v26;
      v10 = *a3;
    }

    while (v17 < (a3[1] - *a3) >> 2);
  }

  return 0;
}

void std::vector<int>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void *std::vector<float>::vector[abi:ne200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_24568C6E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vision::mod::LivenessCheckPredictor::runFaceActionClassification(void *a1, void *a2, uint64_t *a3, void *a4, void *a5, void *a6, int *a7)
{
  v8 = a1[15];
  *(a1 + 58) = 0;
  a1[16] = v8;
  a1[19] = a1[18];
  v67 = (a1 + 15);
  v9 = (a1 + 26);
  *(a1 + *a7 + 52) = 0;
  LODWORD(v74.__locale_) = 0;
  v10 = *a3;
  if (a3[1] != *a3)
  {
    v15 = a1;
    v65 = (a1 + 18);
    v16 = 0;
    v68 = 0;
    v17 = (a1 + 21);
    while (1)
    {
      v18 = *a7;
      v19 = *&v9[4 * *a7];
      if (v19 <= 1 && fabsf(*(v10 + 4 * v16)) < 10.0 && fabsf(*(*a5 + 4 * v16)) < 10.0 && fabsf(*(*a4 + 4 * v16)) < 10.0)
      {
        *&v9[4 * v18] = v19 + 1;
        std::vector<int>::push_back[abi:ne200100](v67, &v74);
        v18 = *a7;
      }

      if (v18 > 4)
      {
        break;
      }

      if (v18 <= 1)
      {
        if (v18)
        {
          if (v18 != 1)
          {
            goto LABEL_123;
          }

          locale_low = SLODWORD(v74.__locale_);
          v26 = *(*a4 + 4 * SLODWORD(v74.__locale_));
          if (v26 >= *v15)
          {
            goto LABEL_123;
          }
        }

        else
        {
          locale_low = SLODWORD(v74.__locale_);
          v26 = *(*a4 + 4 * SLODWORD(v74.__locale_));
          if (v26 <= *(v15 + 1))
          {
            goto LABEL_123;
          }
        }

        v27 = fabsf(*(*a5 + 4 * locale_low));
        v28 = fabsf(*(*a3 + 4 * locale_low));
        v29 = fabsf(v26);
        if (v27 > v29 && v27 > v28)
        {
          goto LABEL_123;
        }

        v31 = v28 <= v27 || v28 <= v29;
        v32 = !v31 || v29 <= v27;
        if (v32 || v29 <= v28)
        {
          goto LABEL_123;
        }
      }

      else
      {
        if (v18 == 2)
        {
          v34 = SLODWORD(v74.__locale_);
          v35 = *(*a3 + 4 * SLODWORD(v74.__locale_));
          if (v35 >= *(v15 + 2))
          {
            goto LABEL_123;
          }
        }

        else
        {
          if (v18 != 3)
          {
            if (fabsf(*(*a3 + 4 * SLODWORD(v74.__locale_))) > 33.0 || fabsf(*(*a4 + 4 * SLODWORD(v74.__locale_))) > 39.0 || *(*a5 + 4 * SLODWORD(v74.__locale_)) >= *(v15 + 5))
            {
              goto LABEL_123;
            }

            goto LABEL_81;
          }

          v34 = SLODWORD(v74.__locale_);
          v35 = *(*a3 + 4 * SLODWORD(v74.__locale_));
          if (v35 <= *(v15 + 3))
          {
            goto LABEL_123;
          }
        }

        v39 = fabsf(*(*a5 + 4 * v34));
        v40 = fabsf(v35);
        v41 = fabsf(*(*a4 + 4 * v34));
        if (v39 > v40 && v39 > v41 || v40 <= v39 || v40 <= v41)
        {
          goto LABEL_123;
        }
      }

LABEL_81:
      ++*&v17[4 * *a7];
      v45 = *a7;
      v46 = *&v17[4 * v45];
      v47 = v68;
      if (v46 > v68)
      {
        v47 = *&v17[4 * v45];
      }

      v68 = v47;
      if (v45 == 9 || v45 == 7)
      {
        if (v46 < *(v15 + 10))
        {
          goto LABEL_124;
        }

LABEL_93:
        *(v15 + 117) = 1;
        goto LABEL_124;
      }

      if (v46 >= *(v15 + 9))
      {
        goto LABEL_93;
      }

LABEL_124:
      v16 = SLODWORD(v74.__locale_) + 1;
      ++LODWORD(v74.__locale_);
      v10 = *a3;
      if (v16 >= (a3[1] - *a3) >> 2)
      {
        goto LABEL_128;
      }
    }

    if (v18 <= 6)
    {
      if (v18 == 5)
      {
        if (fabsf(*(*a3 + 4 * SLODWORD(v74.__locale_))) > 33.0 || fabsf(*(*a4 + 4 * SLODWORD(v74.__locale_))) > 39.0 || *(*a5 + 4 * SLODWORD(v74.__locale_)) <= *(v15 + 5))
        {
          goto LABEL_123;
        }
      }

      else if (fabsf(*(*a3 + 4 * SLODWORD(v74.__locale_))) > 33.0 || fabsf(*(*a4 + 4 * SLODWORD(v74.__locale_))) > 39.0 || fabsf(*(*a5 + 4 * SLODWORD(v74.__locale_))) > 27.0 || *(*a2 + 4 * SLODWORD(v74.__locale_)) <= 0.9)
      {
        goto LABEL_123;
      }

      goto LABEL_81;
    }

    if (v18 == 7)
    {
      if (fabsf(*(*a5 + 4 * SLODWORD(v74.__locale_))) > 27.0 || fabsf(*(*a3 + 4 * SLODWORD(v74.__locale_))) > 33.0 || fabsf(*(*a4 + 4 * SLODWORD(v74.__locale_))) > 39.0)
      {
        goto LABEL_123;
      }

      v36 = (*a6 + 24 * SLODWORD(v74.__locale_));
      memset(v73, 0, sizeof(v73));
      v38 = *v36;
      v37 = v36[1];
      if (v37 != v38)
      {
        if (((v37 - v38) & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_130:
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v49 = vision::mod::LivenessCheckPredictor::computeEyeAspectRatio(a1, v73);
      if (v49 >= *(v15 + 7))
      {
        goto LABEL_123;
      }

      goto LABEL_81;
    }

    if (v18 == 8)
    {
      if (fabsf(*(*a5 + 4 * SLODWORD(v74.__locale_))) <= 27.0 && fabsf(*(*a3 + 4 * SLODWORD(v74.__locale_))) <= 33.0 && fabsf(*(*a4 + 4 * SLODWORD(v74.__locale_))) <= 39.0)
      {
        if ((*(*a6 + 24 * SLODWORD(v74.__locale_) + 8) - *(*a6 + 24 * SLODWORD(v74.__locale_))) >= 0)
        {
          operator new();
        }

        goto LABEL_130;
      }

LABEL_123:
      *&v17[4 * *a7] = 0;
      goto LABEL_124;
    }

    if (v18 != 9)
    {
      goto LABEL_123;
    }

    v20 = SLODWORD(v74.__locale_);
    if (0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3) <= SLODWORD(v74.__locale_))
    {
      goto LABEL_123;
    }

    v21 = (*a6 + 24 * SLODWORD(v74.__locale_));
    v22 = v21[1];
    v23 = v22 - *v21;
    if (v22 == *v21)
    {
      goto LABEL_123;
    }

    v24 = *(v15 + 64);
    if (v24 <= 9)
    {
      if (fabsf(*(*a3 + 4 * SLODWORD(v74.__locale_))) >= 10.0 || fabsf(*(*a5 + 4 * SLODWORD(v74.__locale_))) >= 5.0 || fabsf(*(*a4 + 4 * SLODWORD(v74.__locale_))) >= 5.0)
      {
        if (v24)
        {
          goto LABEL_107;
        }

        v48 = *(v15 + 65);
        if (v48 > 4)
        {
          goto LABEL_107;
        }

        if (v48)
        {
          if ((v23 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_130;
        }

        v50 = std::vector<float>::vector[abi:ne200100](__p, v21);
        *(v15 + 63) = vision::mod::LivenessCheckPredictor::computeEyebrow2EyeHeight(v50, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        ++*(v15 + 65);
      }

      else
      {
        if (v24)
        {
          if ((v23 & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_130;
        }

        v51 = std::vector<float>::vector[abi:ne200100](v72, v21);
        *(v15 + 62) = vision::mod::LivenessCheckPredictor::computeEyebrow2EyeHeight(v51, v72);
        if (v72[0])
        {
          v72[1] = v72[0];
          operator delete(v72[0]);
        }

        ++*(v15 + 64);
      }

      std::vector<int>::push_back[abi:ne200100](v65, &v74);
      v20 = SLODWORD(v74.__locale_);
    }

LABEL_107:
    if (fabsf(*(*a5 + 4 * v20)) > 27.0 || fabsf(*(*a3 + 4 * v20)) > 33.0 || fabsf(*(*a4 + 4 * v20)) > 39.0)
    {
      goto LABEL_123;
    }

    v52 = (*a6 + 24 * v20);
    memset(v70, 0, sizeof(v70));
    v54 = *v52;
    v53 = v52[1];
    if (v53 != v54)
    {
      if (((v53 - v54) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_130;
    }

    v58 = vision::mod::LivenessCheckPredictor::computeEyeAspectRatio(a1, v70);
    if (v58 < *(v15 + 7))
    {
      goto LABEL_123;
    }

    if (*(v15 + 62) != 0.0)
    {
      if ((*(*a6 + 24 * SLODWORD(v74.__locale_) + 8) - *(*a6 + 24 * SLODWORD(v74.__locale_))) >= 0)
      {
        operator new();
      }

      goto LABEL_130;
    }

    if (*(v15 + 63) == 0.0)
    {
      goto LABEL_122;
    }

    v55 = std::vector<float>::vector[abi:ne200100](v69, (*a6 + 24 * SLODWORD(v74.__locale_)));
    v56 = vision::mod::LivenessCheckPredictor::computeEyebrow2EyeHeight(v55, v69);
    v57 = *(v15 + 6) * *(v15 + 63);
    a1 = v69[0];
    if (v69[0])
    {
      v69[1] = v69[0];
      operator delete(v69[0]);
    }

    if (v56 <= v57)
    {
LABEL_122:
      if (*(v15 + 62) == 0.0 && *(v15 + 63) == 0.0)
      {
        return 6;
      }

      goto LABEL_123;
    }

    goto LABEL_81;
  }

  v68 = 0;
LABEL_128:
  v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Buffer Processed for SIML gesture ", 34);
  v60 = MEMORY[0x245D6EEB0](v59, *a7);
  v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, ", max action consecutive: ", 26);
  v62 = MEMORY[0x245D6EEB0](v61, v68);
  std::ios_base::getloc((v62 + *(*v62 - 24)));
  v63 = std::locale::use_facet(&v74, MEMORY[0x277D82680]);
  (v63->__vftable[2].~facet_0)(v63, 10);
  std::locale::~locale(&v74);
  std::ostream::put();
  std::ostream::flush();
  return 0;
}

uint64_t vision::mod::LivenessCheckPredictor::runTrajectoryAnalysis(uint64_t a1, void *a2, uint64_t a3)
{
  v199 = a3;
  v215 = *MEMORY[0x277D85DE8];
  if (*(a1 + 52) < 2)
  {
    return 3;
  }

  v212 = 0;
  v213 = 0;
  v214 = 0;
  v4 = *a2;
  v5 = a2[1];
  __s1[0] = &v212;
  LOBYTE(__s1[1]) = 0;
  if (v5 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v197 = a2;
  v205 = 0;
  v198 = 0;
  v200 = 0;
  v201 = 0;
  v6 = *(v199 + 8);
  v196 = a1;
  do
  {
    v211 = 2;
    strcpy(__s1, "x1");
    if (!v6)
    {
LABEL_304:
      std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
    }

    v9 = v6;
    while (1)
    {
      while (1)
      {
        v10 = *(v9 + 55);
        if (v10 >= 0)
        {
          v11 = *(v9 + 55);
        }

        else
        {
          v11 = v9[5];
        }

        if (v10 >= 0)
        {
          v12 = (v9 + 4);
        }

        else
        {
          v12 = v9[4];
        }

        if (v11 >= 2)
        {
          v13 = 2;
        }

        else
        {
          v13 = v11;
        }

        v14 = memcmp(__s1, v12, v13);
        v15 = v14 < 0;
        if (!v14)
        {
          v15 = v11 > 2;
        }

        if (!v15)
        {
          break;
        }

        v9 = *v9;
        if (!v9)
        {
          goto LABEL_304;
        }
      }

      v16 = memcmp(v12, __s1, v13);
      v17 = v11 < 2;
      if (v16)
      {
        v17 = v16 < 0;
      }

      if (!v17)
      {
        break;
      }

      v9 = v9[1];
      if (!v9)
      {
        goto LABEL_304;
      }
    }

    v18 = *(v9[7] + v205);
    v209 = 2;
    strcpy(__s2, "x0");
    v19 = v6;
    while (1)
    {
      while (1)
      {
        v20 = *(v19 + 55);
        if (v20 >= 0)
        {
          v21 = *(v19 + 55);
        }

        else
        {
          v21 = v19[5];
        }

        if (v20 >= 0)
        {
          v22 = (v19 + 4);
        }

        else
        {
          v22 = v19[4];
        }

        if (v21 >= 2)
        {
          v23 = 2;
        }

        else
        {
          v23 = v21;
        }

        v24 = memcmp(__s2, v22, v23);
        v25 = v24 < 0;
        if (!v24)
        {
          v25 = v21 > 2;
        }

        if (!v25)
        {
          break;
        }

        v19 = *v19;
        if (!v19)
        {
          goto LABEL_306;
        }
      }

      v26 = memcmp(v22, __s2, v23);
      v27 = v21 < 2;
      if (v26)
      {
        v27 = v26 < 0;
      }

      if (!v27)
      {
        break;
      }

      v19 = v19[1];
      if (!v19)
      {
LABEL_306:
        std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
      }
    }

    v28 = v18 - *(v19[7] + v205);
    if (v28 < 0)
    {
      v28 = *(v19[7] + v205) - v18;
    }

    v29 = v28;
    v207 = 11;
    v203 = *"image_width";
    strcpy(v206, "image_width");
    v30 = v6;
    while (1)
    {
      while (1)
      {
        v31 = *(v30 + 55);
        if (v31 >= 0)
        {
          v32 = *(v30 + 55);
        }

        else
        {
          v32 = v30[5];
        }

        if (v31 >= 0)
        {
          v33 = (v30 + 4);
        }

        else
        {
          v33 = v30[4];
        }

        if (v32 >= 0xB)
        {
          v34 = 11;
        }

        else
        {
          v34 = v32;
        }

        v35 = memcmp(v206, v33, v34);
        v36 = v35 < 0;
        if (!v35)
        {
          v36 = v32 > 0xB;
        }

        if (!v36)
        {
          break;
        }

        v30 = *v30;
        if (!v30)
        {
          goto LABEL_307;
        }
      }

      v37 = memcmp(v33, v206, v34);
      v38 = v32 < 0xB;
      if (v37)
      {
        v38 = v37 < 0;
      }

      if (!v38)
      {
        break;
      }

      v30 = v30[1];
      if (!v30)
      {
LABEL_307:
        std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
      }
    }

    v39 = *(v30[7] + v205);
    v211 = 2;
    v40 = v29 / v39;
    strcpy(__s1, "y1");
    v41 = v6;
    while (1)
    {
      while (1)
      {
        v42 = *(v41 + 55);
        if (v42 >= 0)
        {
          v43 = *(v41 + 55);
        }

        else
        {
          v43 = v41[5];
        }

        if (v42 >= 0)
        {
          v44 = (v41 + 4);
        }

        else
        {
          v44 = v41[4];
        }

        if (v43 >= 2)
        {
          v45 = 2;
        }

        else
        {
          v45 = v43;
        }

        v46 = memcmp(__s1, v44, v45);
        v47 = v46 < 0;
        if (!v46)
        {
          v47 = v43 > 2;
        }

        if (!v47)
        {
          break;
        }

        v41 = *v41;
        if (!v41)
        {
          goto LABEL_308;
        }
      }

      v48 = memcmp(v44, __s1, v45);
      v49 = v43 < 2;
      if (v48)
      {
        v49 = v48 < 0;
      }

      if (!v49)
      {
        break;
      }

      v41 = v41[1];
      if (!v41)
      {
LABEL_308:
        std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
      }
    }

    v50 = *(v41[7] + v205);
    v209 = 2;
    strcpy(__s2, "y0");
    v51 = v6;
    while (1)
    {
      while (1)
      {
        v52 = *(v51 + 55);
        if (v52 >= 0)
        {
          v53 = *(v51 + 55);
        }

        else
        {
          v53 = v51[5];
        }

        if (v52 >= 0)
        {
          v54 = (v51 + 4);
        }

        else
        {
          v54 = v51[4];
        }

        if (v53 >= 2)
        {
          v55 = 2;
        }

        else
        {
          v55 = v53;
        }

        v56 = memcmp(__s2, v54, v55);
        v57 = v56 < 0;
        if (!v56)
        {
          v57 = v53 > 2;
        }

        if (!v57)
        {
          break;
        }

        v51 = *v51;
        if (!v51)
        {
          goto LABEL_309;
        }
      }

      v58 = memcmp(v54, __s2, v55);
      v59 = v53 < 2;
      if (v58)
      {
        v59 = v58 < 0;
      }

      if (!v59)
      {
        break;
      }

      v51 = v51[1];
      if (!v51)
      {
LABEL_309:
        std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
      }
    }

    v60 = v50 - *(v51[7] + v205);
    if (v60 < 0)
    {
      v60 = *(v51[7] + v205) - v50;
    }

    v61 = v60;
    v207 = 12;
    v202 = *"image_height";
    strcpy(v206, "image_height");
    while (1)
    {
      while (1)
      {
        v62 = *(v6 + 55);
        if (v62 >= 0)
        {
          v63 = *(v6 + 55);
        }

        else
        {
          v63 = v6[5];
        }

        if (v62 >= 0)
        {
          v64 = v6 + 4;
        }

        else
        {
          v64 = v6[4];
        }

        if (v63 >= 0xC)
        {
          v65 = 12;
        }

        else
        {
          v65 = v63;
        }

        v66 = memcmp(v206, v64, v65);
        v67 = v66 < 0;
        if (!v66)
        {
          v67 = v63 > 0xC;
        }

        if (!v67)
        {
          break;
        }

        v6 = *v6;
        if (!v6)
        {
          goto LABEL_310;
        }
      }

      v68 = memcmp(v64, v206, v65);
      v69 = v63 < 0xC;
      if (v68)
      {
        v69 = v68 < 0;
      }

      if (!v69)
      {
        break;
      }

      v6 = v6[1];
      if (!v6)
      {
LABEL_310:
        std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
      }
    }

    v70 = (v40 + (v61 / *(v6[7] + 4 * v205))) * 0.5;
    v71 = v201;
    if (v201 >= v200)
    {
      v72 = v198;
      v73 = v201 - v198;
      v74 = (v201 - v198) >> 2;
      v75 = v74 + 1;
      if ((v74 + 1) >> 62)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v76 = v200 - v198;
      if ((v200 - v198) >> 1 > v75)
      {
        v75 = v76 >> 1;
      }

      if (v76 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v77 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v77 = v75;
      }

      if (v77)
      {
        if (!(v77 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v200 = 0;
      *(4 * v74) = v70;
      v201 = (4 * v74 + 4);
      memcpy(0, v72, v73);
      if (v72)
      {
        operator delete(v72);
      }

      v198 = 0;
    }

    else
    {
      *v201 = v70;
      v201 = v71 + 1;
    }

    v211 = 2;
    strcpy(__s1, "x0");
    v6 = *(v199 + 8);
    if (!v6)
    {
LABEL_305:
      std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
    }

    v78 = *(v199 + 8);
    while (1)
    {
      while (1)
      {
        v79 = *(v78 + 55);
        if (v79 >= 0)
        {
          v80 = *(v78 + 55);
        }

        else
        {
          v80 = v78[5];
        }

        if (v79 >= 0)
        {
          v81 = (v78 + 4);
        }

        else
        {
          v81 = v78[4];
        }

        if (v80 >= 2)
        {
          v82 = 2;
        }

        else
        {
          v82 = v80;
        }

        v83 = memcmp(__s1, v81, v82);
        v84 = v83 < 0;
        if (!v83)
        {
          v84 = v80 > 2;
        }

        if (!v84)
        {
          break;
        }

        v78 = *v78;
        if (!v78)
        {
          goto LABEL_305;
        }
      }

      v85 = memcmp(v81, __s1, v82);
      v86 = v80 < 2;
      if (v85)
      {
        v86 = v85 < 0;
      }

      if (!v86)
      {
        break;
      }

      v78 = v78[1];
      if (!v78)
      {
        goto LABEL_305;
      }
    }

    v87 = v40;
    v88 = -v87;
    v89 = (*(v78[7] + v205) + v87 * -0.1);
    v211 = 2;
    strcpy(__s1, "y0");
    v90 = v6;
    while (1)
    {
      while (1)
      {
        v91 = *(v90 + 55);
        if (v91 >= 0)
        {
          v92 = *(v90 + 55);
        }

        else
        {
          v92 = v90[5];
        }

        if (v91 >= 0)
        {
          v93 = (v90 + 4);
        }

        else
        {
          v93 = v90[4];
        }

        if (v92 >= 2)
        {
          v94 = 2;
        }

        else
        {
          v94 = v92;
        }

        v95 = memcmp(__s1, v93, v94);
        v96 = v95 < 0;
        if (!v95)
        {
          v96 = v92 > 2;
        }

        if (!v96)
        {
          break;
        }

        v90 = *v90;
        if (!v90)
        {
          goto LABEL_311;
        }
      }

      v97 = memcmp(v93, __s1, v94);
      v98 = v92 < 2;
      if (v97)
      {
        v98 = v97 < 0;
      }

      if (!v98)
      {
        break;
      }

      v90 = v90[1];
      if (!v90)
      {
LABEL_311:
        std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
      }
    }

    v99 = (*(v90[7] + v205) + v88 * 0.1);
    v100 = fmax(v89, 0.0);
    v211 = 11;
    strcpy(__s1 + 7, "idth");
    __s1[0] = v203;
    v101 = v6;
    while (1)
    {
      while (1)
      {
        v102 = *(v101 + 55);
        if (v102 >= 0)
        {
          v103 = *(v101 + 55);
        }

        else
        {
          v103 = v101[5];
        }

        if (v102 >= 0)
        {
          v104 = (v101 + 4);
        }

        else
        {
          v104 = v101[4];
        }

        if (v103 >= 0xB)
        {
          v105 = 11;
        }

        else
        {
          v105 = v103;
        }

        v106 = memcmp(__s1, v104, v105);
        v107 = v106 < 0;
        if (!v106)
        {
          v107 = v103 > 0xB;
        }

        if (!v107)
        {
          break;
        }

        v101 = *v101;
        if (!v101)
        {
          goto LABEL_312;
        }
      }

      v108 = memcmp(v104, __s1, v105);
      v109 = v103 < 0xB;
      if (v108)
      {
        v109 = v108 < 0;
      }

      if (!v109)
      {
        break;
      }

      v101 = v101[1];
      if (!v101)
      {
LABEL_312:
        std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
      }
    }

    v110 = fmin(v100, *(v101[7] + v205));
    v111 = fmax(v99, 0.0);
    v211 = 12;
    strcpy(&__s1[1], "ight");
    __s1[0] = v202;
    v112 = v6;
    while (1)
    {
      while (1)
      {
        v113 = *(v112 + 55);
        if (v113 >= 0)
        {
          v114 = *(v112 + 55);
        }

        else
        {
          v114 = v112[5];
        }

        if (v113 >= 0)
        {
          v115 = (v112 + 4);
        }

        else
        {
          v115 = v112[4];
        }

        if (v114 >= 0xC)
        {
          v116 = 12;
        }

        else
        {
          v116 = v114;
        }

        v117 = memcmp(__s1, v115, v116);
        v118 = v117 < 0;
        if (!v117)
        {
          v118 = v114 > 0xC;
        }

        if (!v118)
        {
          break;
        }

        v112 = *v112;
        if (!v112)
        {
          goto LABEL_313;
        }
      }

      v119 = memcmp(v115, __s1, v116);
      v120 = v114 < 0xC;
      if (v119)
      {
        v120 = v119 < 0;
      }

      if (!v120)
      {
        break;
      }

      v112 = v112[1];
      if (!v112)
      {
LABEL_313:
        std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
      }
    }

    v121 = (*v197 + 24 * v205);
    v122 = *v121;
    if (v121[1] != *v121)
    {
      v123 = 0;
      v124 = fmin(v111, *(v112[7] + v205));
      v125 = v110;
      v204 = &v212[24 * v205];
      do
      {
        v126 = *(v122 + 4 * v123);
        if (v123)
        {
          v127 = v126 + v124;
          v211 = 12;
          strcpy(&__s1[1], "ight");
          __s1[0] = v202;
          v128 = v6;
          while (1)
          {
            while (1)
            {
              v137 = *(v128 + 55);
              if (v137 >= 0)
              {
                v138 = *(v128 + 55);
              }

              else
              {
                v138 = v128[5];
              }

              if (v137 >= 0)
              {
                v139 = (v128 + 4);
              }

              else
              {
                v139 = v128[4];
              }

              if (v138 >= 0xC)
              {
                v140 = 12;
              }

              else
              {
                v140 = v138;
              }

              v141 = memcmp(__s1, v139, v140);
              v142 = v141 < 0;
              if (!v141)
              {
                v142 = v138 > 0xC;
              }

              if (!v142)
              {
                break;
              }

              v128 = *v128;
              if (!v128)
              {
                goto LABEL_259;
              }
            }

            v143 = memcmp(v139, __s1, v140);
            v144 = v138 < 0xC;
            if (v143)
            {
              v144 = v143 < 0;
            }

            if (!v144)
            {
              break;
            }

            v128 = v128[1];
            if (!v128)
            {
LABEL_259:
              std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
            }
          }
        }

        else
        {
          v127 = v126 + v125;
          v211 = 11;
          strcpy(__s1 + 7, "idth");
          __s1[0] = v203;
          v128 = v6;
          while (1)
          {
            while (1)
            {
              v129 = *(v128 + 55);
              if (v129 >= 0)
              {
                v130 = *(v128 + 55);
              }

              else
              {
                v130 = v128[5];
              }

              if (v129 >= 0)
              {
                v131 = (v128 + 4);
              }

              else
              {
                v131 = v128[4];
              }

              if (v130 >= 0xB)
              {
                v132 = 11;
              }

              else
              {
                v132 = v130;
              }

              v133 = memcmp(__s1, v131, v132);
              v134 = v133 < 0;
              if (!v133)
              {
                v134 = v130 > 0xB;
              }

              if (!v134)
              {
                break;
              }

              v128 = *v128;
              if (!v128)
              {
                goto LABEL_303;
              }
            }

            v135 = memcmp(v131, __s1, v132);
            v136 = v130 < 0xB;
            if (v135)
            {
              v136 = v135 < 0;
            }

            if (!v136)
            {
              break;
            }

            v128 = v128[1];
            if (!v128)
            {
LABEL_303:
              std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
            }
          }
        }

        *(*v204 + 4 * v123++) = v127 / *(v128[7] + v205);
        v122 = *v121;
      }

      while (v123 < (v121[1] - *v121) >> 2);
    }

    v7 = v196;
    v8 = *(v196 + 52);
    ++v205;
  }

  while (v205 < v8);
  v145 = v198;
  v146 = MEMORY[0x28223BE20](&v196);
  v148 = &v196 - v147;
  v149 = *(v7 + 52);
  *(&v196 + 4 * v149 - v147 - 4) = -1082130432;
  if (v149 <= 1)
  {
    MEMORY[0x28223BE20](v146);
    v177 = &v196 - ((v181 + 15) & 0x7FFFFFFF0);
    *&v177[4 * v182 - 4] = -1054867456;
    *v177 = -1054867456;
    goto LABEL_280;
  }

  v150 = v212;
  v151 = 1;
  do
  {
    while (1)
    {
      v152 = &v150[24 * v151];
      v153 = *v152;
      if (*v152 != v152[1])
      {
        v154 = &v150[24 * v151 - 24];
        v155 = *v154;
        v156 = v154[1];
        if (v155 != v156)
        {
          break;
        }
      }

      *&v148[4 * v151++ - 4] = -1082130432;
      if (v151 == v149)
      {
        goto LABEL_276;
      }
    }

    v157 = (v156 - v155) >> 2;
    if (v157 <= 1)
    {
      v158 = 1;
    }

    else
    {
      v158 = v157;
    }

    if (v157 <= 7)
    {
      v159 = 0;
      v160 = 0.0;
LABEL_273:
      v168 = &v153->f32[v159];
      v169 = &v155->f32[v159];
      v170 = v158 - v159;
      do
      {
        v171 = *v169++;
        v172 = v171;
        v173 = *v168++;
        v160 = v160 + ((v172 - v173) * (v172 - v173));
        --v170;
      }

      while (v170);
      goto LABEL_275;
    }

    v159 = v158 & 0xFFFFFFFFFFFFFFF8;
    v161 = v155 + 1;
    v162 = v153 + 1;
    v160 = 0.0;
    v163 = v158 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v164 = vsubq_f32(v161[-1], v162[-1]);
      v165 = vsubq_f32(*v161, *v162);
      v166 = vmulq_f32(v164, v164);
      v167 = vmulq_f32(v165, v165);
      v160 = (((((((v160 + v166.f32[0]) + v166.f32[1]) + v166.f32[2]) + v166.f32[3]) + v167.f32[0]) + v167.f32[1]) + v167.f32[2]) + v167.f32[3];
      v161 += 2;
      v162 += 2;
      v163 -= 8;
    }

    while (v163);
    if (v157 != v159)
    {
      goto LABEL_273;
    }

LABEL_275:
    *&v148[4 * v151 - 4] = (sqrtf(v160) / v157) / v145[v151];
    ++v151;
  }

  while (v151 != v149);
LABEL_276:
  MEMORY[0x28223BE20](v146);
  v177 = &v196 - ((v176 + 15) & 0x7FFFFFFF0);
  *&v177[4 * v178 - 4] = -1054867456;
  *v177 = -1054867456;
  if (v178 == 2)
  {
    v179 = 2;
    *(v7 + 264) = 0;
    if (v174 < 1)
    {
      goto LABEL_278;
    }

LABEL_281:
    v183 = 0;
    v184 = *(v7 + 56);
    do
    {
      if (*v177 > v184)
      {
        *(v7 + 264) = ++v183;
      }

      v177 += 4;
      --v179;
    }

    while (v179);
    v180 = v183;
    goto LABEL_286;
  }

  v191 = (v175 + 8);
  v192 = 1;
  do
  {
    v193 = *(v191 - 1);
    v194 = -10.0;
    if (v193 != -1.0)
    {
      v195 = *(v191 - 2);
      if (v195 != -1.0 && *v191 != -1.0)
      {
        v194 = -(v195 - (v193 * 2.0)) - *v191;
      }
    }

    *&v177[4 * v192++] = v194;
    ++v191;
  }

  while (v174 - 1 != v192);
LABEL_280:
  v179 = v174;
  *(v7 + 264) = 0;
  if (v174 >= 1)
  {
    goto LABEL_281;
  }

LABEL_278:
  v180 = 0.0;
LABEL_286:
  *(v7 + 268) = 1.0 - (v180 / v174);
  v185 = v212;
  if (v212)
  {
    v186 = v213;
    v187 = v212;
    if (v213 != v212)
    {
      v188 = v213;
      do
      {
        v190 = *(v188 - 3);
        v188 -= 24;
        v189 = v190;
        if (v190)
        {
          *(v186 - 2) = v189;
          operator delete(v189);
        }

        v186 = v188;
      }

      while (v188 != v185);
      v187 = v212;
    }

    v213 = v185;
    operator delete(v187);
  }

  if (v145)
  {
    operator delete(v145);
  }

  return 0;
}

void sub_24568E47C(_Unwind_Exception *a1)
{
  *(v2 - 176) = v1;
  std::__exception_guard_exceptions<std::vector<std::vector<float>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100]((v2 - 208));
  _Unwind_Resume(a1);
}

void sub_24568E4A8(_Unwind_Exception *a1)
{
  std::vector<std::vector<float>>::~vector[abi:ne200100]((v2 - 184));
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t vision::mod::LivenessCheckPredictor::runIDMatching(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*a2 == a2[1])
  {
    return 5;
  }

  v4 = *a3;
  if (*a3 == a3[1])
  {
    return 5;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  do
  {
    v11 = v7 - v6;
    v12 = (v7 - v6) >> 2;
    v13 = v12 + 1;
    if ((v12 + 1) >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    if (-v6 >> 1 > v13)
    {
      v13 = -v6 >> 1;
    }

    if (-v6 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      if (!(v14 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = v12;
    v16 = (4 * v12);
    v17 = *(v4 + 4 * v8);
    v18 = &v16[-v15];
    *v16 = v17;
    v7 = (v16 + 1);
    memcpy(v18, v6, v11);
    v107 = v18;
    v109 = 0;
    if (v6)
    {
      operator delete(v6);
    }

    v6 = v18;
    v108 = v7;
    ++v8;
    v4 = *a3;
    v9 = a3[1];
    v10 = (v9 - *a3) >> 2;
  }

  while (v10 > v8);
  if (v9 == v4)
  {
    goto LABEL_33;
  }

  if (v10 > 7)
  {
    v20 = v10 & 0xFFFFFFFFFFFFFFF8;
    v22 = v6 + 1;
    v21 = 0;
    v23 = v10 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v24 = vmulq_f32(v22[-1], v22[-1]);
      v25 = vmulq_f32(*v22, *v22);
      *v21.i32 = (((((((*v21.i32 + v24.f32[0]) + v24.f32[1]) + v24.f32[2]) + v24.f32[3]) + v25.f32[0]) + v25.f32[1]) + v25.f32[2]) + v25.f32[3];
      v22 += 2;
      v23 -= 8;
    }

    while (v23);
    if (v10 == v20)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v26 = &v6->f32[v20];
  v27 = v10 - v20;
  do
  {
    v28 = *v26++;
    *v21.i32 = *v21.i32 + (v28 * v28);
    --v27;
  }

  while (v27);
LABEL_26:
  *v21.i32 = sqrtf(*v21.i32);
  if (v10 > 7)
  {
    v29 = v10 & 0xFFFFFFFFFFFFFFF8;
    v30 = vdupq_lane_s32(v21, 0);
    v31 = v6 + 1;
    v32 = v10 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v33 = vdivq_f32(*v31, v30);
      v31[-1] = vdivq_f32(v31[-1], v30);
      *v31 = v33;
      v31 += 2;
      v32 -= 8;
    }

    while (v32);
    if (v10 == v29)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v29 = 0;
  }

  v34 = &v6->f32[v29];
  v35 = v10 - v29;
  do
  {
    *v34 = *v34 / *v21.i32;
    ++v34;
    --v35;
  }

  while (v35);
LABEL_33:
  v36 = v111;
  if (v111 >= v112)
  {
    v38 = std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(&v110, &v107);
    v37 = a1;
  }

  else
  {
    *v111 = 0;
    v36[1] = 0;
    v36[2] = 0;
    v37 = a1;
    if (v7 != v6)
    {
      if (((v7 - v6) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v38 = v36 + 3;
  }

  v111 = v38;
  *(v37 + 296) = 0;
  v39 = *a2;
  if (a2[1] != *a2)
  {
    v40 = 0;
    while (1)
    {
      __p = 0;
      v105 = 0;
      v106 = 0;
      v41 = (v39 + 24 * v40);
      v42 = *v41;
      if (v41[1] == *v41)
      {
        v46 = 0;
      }

      else
      {
        v43 = 0;
        v44 = 0;
        do
        {
          if (v43 < v106)
          {
            *v43 = *(v42 + 4 * v44);
            v43 += 4;
          }

          else
          {
            v47 = __p;
            v48 = v43 - __p;
            v49 = (v43 - __p) >> 2;
            v50 = v49 + 1;
            if ((v49 + 1) >> 62)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v51 = v106 - __p;
            if ((v106 - __p) >> 1 > v50)
            {
              v50 = v51 >> 1;
            }

            if (v51 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v52 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v52 = v50;
            }

            if (v52)
            {
              if (!(v52 >> 62))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v53 = v49;
            v54 = (4 * v49);
            v55 = *(v42 + 4 * v44);
            v56 = &v54[-v53];
            *v54 = v55;
            v43 = (v54 + 1);
            memcpy(v56, v47, v48);
            __p = v56;
            v105 = v43;
            v106 = 0;
            if (v47)
            {
              operator delete(v47);
            }
          }

          v105 = v43;
          ++v44;
          v45 = (*a2 + 24 * v40);
          v42 = *v45;
          v46 = (v45[1] - *v45) >> 2;
        }

        while (v46 > v44);
      }

      if (!v46)
      {
        goto LABEL_74;
      }

      if (v46 <= 7)
      {
        break;
      }

      v57 = v46 & 0xFFFFFFFFFFFFFFF8;
      v59 = (__p + 16);
      v58 = 0;
      v60 = v46 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v61 = vmulq_f32(v59[-1], v59[-1]);
        v62 = vmulq_f32(*v59, *v59);
        *v58.i32 = (((((((*v58.i32 + v61.f32[0]) + v61.f32[1]) + v61.f32[2]) + v61.f32[3]) + v62.f32[0]) + v62.f32[1]) + v62.f32[2]) + v62.f32[3];
        v59 += 2;
        v60 -= 8;
      }

      while (v60);
      if (v46 != v57)
      {
        goto LABEL_65;
      }

LABEL_67:
      v66 = __p;
      *v58.i32 = sqrtf(*v58.i32);
      if (v46 > 7)
      {
        v67 = v46 & 0xFFFFFFFFFFFFFFF8;
        v68 = vdupq_lane_s32(v58, 0);
        v69 = (__p + 16);
        v70 = v46 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v71 = vdivq_f32(*v69, v68);
          v69[-1] = vdivq_f32(v69[-1], v68);
          *v69 = v71;
          v69 += 2;
          v70 -= 8;
        }

        while (v70);
        if (v46 == v67)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v67 = 0;
      }

      v72 = &v66[4 * v67];
      v73 = v46 - v67;
      do
      {
        *v72 = *v72 / *v58.i32;
        ++v72;
        --v73;
      }

      while (v73);
LABEL_74:
      v74 = v111;
      if (v111 >= v112)
      {
        v75 = std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(&v110, &__p);
      }

      else
      {
        *v111 = 0;
        v74[1] = 0;
        v74[2] = 0;
        if (v105 != __p)
        {
          if (((v105 - __p) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v75 = v74 + 3;
      }

      v111 = v75;
      if (__p)
      {
        v105 = __p;
        operator delete(__p);
      }

      ++v40;
      v39 = *a2;
      if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v40)
      {
        v38 = v111;
        v37 = a1;
        goto LABEL_83;
      }
    }

    v57 = 0;
    v58 = 0;
LABEL_65:
    v63 = (__p + 4 * v57);
    v64 = v46 - v57;
    do
    {
      v65 = *v63++;
      *v58.i32 = *v58.i32 + (v65 * v65);
      --v64;
    }

    while (v64);
    goto LABEL_67;
  }

LABEL_83:
  *(v37 + 296) = 1065353216;
  v76 = v110;
  v77 = 0xAAAAAAAAAAAAAAABLL * ((v38 - v110) >> 3);
  if (v77 != 1)
  {
    v78 = 0;
    v79 = 1;
    v80 = v77 - 1;
    v81 = 1.0;
    do
    {
      v82 = v78 + 1;
      if (v77 > v78 + 1)
      {
        v85 = &v76[3 * v78];
        v83 = *v85;
        v84 = v85[1];
        v86 = v84 - *v85;
        if (v86 <= 1)
        {
          v86 = 1;
        }

        if (v84 == v83)
        {
          v97 = v80;
          do
          {
            --v97;
          }

          while (v97);
          *(v37 + 296) = v81;
        }

        else
        {
          v87 = v79;
          do
          {
            v88 = v76[3 * v87];
            v89 = 0.0;
            v90 = v86;
            v91 = v83;
            v92 = 0.0;
            v93 = 0.0;
            do
            {
              v94 = *v91++;
              v95 = v94;
              v96 = *v88++;
              v93 = v93 + (v95 * v96);
              v92 = v92 + (v95 * v95);
              v89 = v89 + (v96 * v96);
              --v90;
            }

            while (v90);
            v81 = fminf(v81, ((v93 / (sqrtf(v92) * sqrtf(v89))) + 1.0) * 0.5);
            *(v37 + 296) = v81;
            ++v87;
          }

          while (v87 != v77);
        }
      }

      ++v79;
      --v80;
      v78 = v82;
    }

    while (v82 != v77 - 1);
  }

  if (v107)
  {
    v108 = v107;
    operator delete(v107);
    v76 = v110;
  }

  if (v76)
  {
    v98 = v111;
    v99 = v76;
    if (v111 != v76)
    {
      v100 = v111;
      do
      {
        v102 = *(v100 - 3);
        v100 -= 3;
        v101 = v102;
        if (v102)
        {
          *(v98 - 2) = v101;
          operator delete(v101);
        }

        v98 = v100;
      }

      while (v100 != v76);
      v99 = v110;
    }

    v111 = v76;
    operator delete(v99);
  }

  return 0;
}

void sub_24568EC5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (!__p)
  {
    std::vector<std::vector<float>>::~vector[abi:ne200100](&a16);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::vector<std::vector<float>>::~vector[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

uint64_t vision::mod::LivenessCheckPredictor::runSpoofingClassification(vision::mod::LivenessCheckPredictor *this, const float *a2, float *a3, const float *a4, const float *a5, const float *a6)
{
  v6 = *a3;
  v7 = *(this + 16);
  v8 = *a2 < *(this + 15) || v6 > v7;
  if (v8 || *a5 < *(this + 19) || *a4 >= *(this + 17) || *a6 < *(this + 21))
  {
    if (v6 <= v7)
    {
      if (*a4 < *(this + 17) || *a5 >= *(this + 19))
      {
        if (*a6 >= *(this + 21))
        {
          v10 = 0;
        }

        else
        {
          v10 = 2;
        }

        *(this + 75) = v10;
        return 0;
      }

      else
      {
        *(this + 75) = 2;
        return 0;
      }
    }

    else
    {
      *(this + 75) = 2;
      return 0;
    }
  }

  else
  {
    *(this + 75) = 1;
    return 0;
  }
}

void ***std::vector<std::vector<std::vector<float>>>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v8 = *(v5 - 3);
        v5 -= 3;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 2);
          v6 = v7;
          if (v9 != v7)
          {
            v10 = *(v3 - 2);
            do
            {
              v12 = *(v10 - 3);
              v10 -= 24;
              v11 = v12;
              if (v12)
              {
                *(v9 - 2) = v11;
                operator delete(v11);
              }

              v9 = v10;
            }

            while (v10 != v7);
            v6 = *v5;
          }

          *(v3 - 2) = v7;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *std::vector<std::vector<float>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_24568F008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  *(v9 + 8) = v10;
  std::__exception_guard_exceptions<std::vector<std::vector<float>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ***std::__exception_guard_exceptions<std::vector<std::vector<float>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v8 = *(v6 - 3);
          v6 -= 24;
          v7 = v8;
          if (v8)
          {
            *(v4 - 2) = v7;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void ****std::__exception_guard_exceptions<std::vector<std::vector<std::vector<float>>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        v6 = v2[1];
        do
        {
          v9 = *(v6 - 3);
          v6 -= 3;
          v8 = v9;
          if (v9)
          {
            v10 = *(v4 - 2);
            v7 = v8;
            if (v10 != v8)
            {
              v11 = *(v4 - 2);
              do
              {
                v13 = *(v11 - 3);
                v11 -= 24;
                v12 = v13;
                if (v13)
                {
                  *(v10 - 2) = v12;
                  operator delete(v12);
                }

                v10 = v11;
              }

              while (v11 != v8);
              v7 = *v6;
            }

            *(v4 - 2) = v8;
            operator delete(v7);
          }

          v4 = v6;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x245D6EE90](v14, a1);
  if (v14[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x245D6EEA0](v14);
  return a1;
}

void sub_24568F2D0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x245D6EEA0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x24568F2B0);
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

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v19 < 0)
      {
        v15 = v14;
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_24568F514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_24568F62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
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
  }

  return a1;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278E83590, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void *std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v7 = v5 + 3;
  v8 = *a1;
  v9 = *(a1 + 8) - *a1;
  v10 = v5 - v9;
  memcpy(v10, *a1, v9);
  *a1 = v10;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_24568F8C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::vector<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v5 = v2 - 24;
        v4 = *(v2 - 24);
        *(a1 + 16) = v2 - 24;
        if (!v4)
        {
          break;
        }

        *(v2 - 16) = v4;
        operator delete(v4);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 24;
    }

    while (v5 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

id VNFaceLandmarkRegion2DGetNormalizedPoints(void *a1)
{
  v1 = a1;
  v2 = [v1 pointCount];
  v3 = [MEMORY[0x277CBEBF8] mutableCopy];
  v4 = [v1 normalizedPoints];
  if (v2)
  {
    v5 = (v4 + 8);
    do
    {
      v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(v5 - 1)];
      [v3 addObject:v6];

      v7 = *v5;
      v5 += 2;
      v8 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
      [v3 addObject:v8];

      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t VNFaceObservationWithAVFoundationFaceBounds(double a1, double a2, double a3, double a4)
{
  v8 = __VNFaceObservationWithAVFoundationFaceBounds_block_invoke();
  v9 = MEMORY[0x277CE2CD0];

  return [v9 faceObservationWithRequestRevision:v8 boundingBox:0 roll:0 yaw:0 pitch:{a1, a2, a3, a4}];
}

uint64_t __VNFaceObservationWithAVFoundationFaceBounds_block_invoke()
{
  v0 = MGGetProductType();
  if (v0 <= 2081274471)
  {
    if (v0 > 1060988940)
    {
      if (v0 > 1429914405)
      {
        if (v0 > 1737882205)
        {
          if (v0 != 1737882206)
          {
            if (v0 != 2032616841)
            {
              v1 = 2080700391;
              goto LABEL_39;
            }

            return 2;
          }

          return 1;
        }

        if (v0 == 1429914406)
        {
          return 1;
        }

        v2 = 1721691077;
        return v0 == v2;
      }

      if (v0 > 1234705394)
      {
        if (v0 != 1234705395)
        {
          v1 = 1371389549;
LABEL_39:
          if (v0 == v1)
          {
            return 3737841664;
          }

          return 0;
        }

        return 2;
      }

      if (v0 != 1060988941)
      {
        if (v0 != 1169082144)
        {
          return 0;
        }

        return 3737841666;
      }

      return 3;
    }

    if (v0 <= 502329936)
    {
      if (v0 > 337183580)
      {
        if (v0 == 337183581)
        {
          return 1;
        }

        v2 = 445396642;
      }

      else
      {
        if (v0 == 42878382)
        {
          return 1;
        }

        v2 = 253148925;
      }

      return v0 == v2;
    }

    if (v0 <= 910181309)
    {
      if (v0 == 502329937)
      {
        return 1;
      }

      v4 = 689804742;
LABEL_47:
      if (v0 != v4)
      {
        return 0;
      }

      return 3;
    }

    if (v0 == 910181310)
    {
      return 2;
    }

    v2 = 952317141;
    return v0 == v2;
  }

  if (v0 > 2722529671)
  {
    if (v0 > 3242623366)
    {
      if (v0 > 3743999267)
      {
        if (v0 == 3743999268)
        {
          return 2;
        }

        if (v0 != 3885279870 && v0 != 4201643249)
        {
          return 0;
        }

        return 3737841666;
      }

      if (v0 == 3242623367)
      {
        return 1;
      }

      v4 = 3585085679;
      goto LABEL_47;
    }

    if (v0 > 3001488777)
    {
      if (v0 == 3001488778)
      {
        return 3737841666;
      }

      v2 = 3196805751;
    }

    else
    {
      if (v0 == 2722529672)
      {
        return 3737841664;
      }

      v2 = 2781508713;
    }

    return v0 == v2;
  }

  if (v0 > 2309863437)
  {
    if (v0 > 2336512886)
    {
      if (v0 == 2336512887)
      {
        return 1;
      }

      v2 = 2468178735;
    }

    else
    {
      if (v0 == 2309863438)
      {
        return 3;
      }

      v2 = 2311900306;
    }

    return v0 == v2;
  }

  if (v0 > 2162679682)
  {
    if (v0 == 2162679683)
    {
      return 1;
    }

    v2 = 2270970153;
    return v0 == v2;
  }

  if (v0 == 2081274472)
  {
    return 1;
  }

  if (v0 == 2159747553)
  {
    return 3737841666;
  }

  return 0;
}

id PADAuditDataRepositoryDefault()
{
  if (__PADAuditDataRepositoryDefault_block_invoke())
  {
    WeakRetained = objc_loadWeakRetained(&PADAuditDataRepositoryDefault__sharedInstance);

    if (WeakRetained)
    {
      v1 = objc_loadWeakRetained(&PADAuditDataRepositoryDefault__sharedInstance);
    }

    else
    {
      v3 = objc_alloc_init(_PADAuditDataRepository);
      objc_storeWeak(&PADAuditDataRepositoryDefault__sharedInstance, v3);
      v1 = v3;
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t __PADAuditDataRepositoryDefault_block_invoke()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2 = [v1 persistentDomainForName:*MEMORY[0x277CCA208]];

    v3 = [v2 objectForKeyedSubscript:@"CIDVPAD.persist-capture-data"];
    v4 = v3;
    if (!v3)
    {
      v3 = MEMORY[0x277CBEC28];
    }

    v5 = [v3 BOOLValue];

    return v5;
  }

  return result;
}

id DataFromCGImage(uint64_t a1)
{
  v1 = [MEMORY[0x277CBF758] imageWithCGImage:a1];
  v2 = [MEMORY[0x277CBF740] context];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v4 = [v2 JPEGRepresentationOfImage:v1 colorSpace:DeviceRGB options:MEMORY[0x277CBEC10]];
  CGColorSpaceRelease(DeviceRGB);

  return v4;
}

__CFString *PADLivenessGestureToString(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_278E83668[a1];
  }
}

id PADVNFaceprintInit(void *a1)
{
  v1 = a1;
  v2 = [v1 faceprint];
  v3 = [v2 elementCount];

  if (v3)
  {
    v4 = [v1 faceprint];
    v5 = [v4 descriptorData];
    v6 = [v5 bytes];

    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:v3];
    do
    {
      v9 = *v6++;
      LODWORD(v8) = v9;
      v10 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
      [v7 addObject:v10];

      --v3;
    }

    while (v3);
  }

  else
  {
    v11 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      PADVNFaceprintInit_cold_1(v11);
    }

    v7 = 0;
  }

  return v7;
}

id VNCreateFaceprintRequestInit(void *a1)
{
  v1 = MEMORY[0x277CE2C48];
  v2 = a1;
  v3 = [[v1 alloc] initWithCompletionHandler:v2];

  v8 = 0;
  v4 = [v3 setRevision:3737841667 error:&v8];
  v5 = v8;
  if ((v4 & 1) == 0)
  {
    v6 = os_log_create("com.apple.CoreIDV", "RGBLiveness");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      VNCreateFaceprintRequestInit_cold_1(v5, v6);
    }
  }

  return v3;
}

_PADVNFaceprintDetector *PADVNFaceprintDetectorInit()
{
  v0 = objc_alloc_init(_PADVNFaceprintDetector);

  return v0;
}

void CGRectRotate(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  memset(&v17, 0, sizeof(v17));
  MidX = CGRectGetMidX(*&a1);
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  MidY = CGRectGetMidY(v18);
  CGAffineTransformMakeTranslation(&v17, MidX, MidY);
  v15 = v17;
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformRotate(&v16, &v15, a5);
  memset(&v15, 0, sizeof(v15));
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  v12 = -CGRectGetMidX(v19);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  v13 = CGRectGetMidY(v20);
  v14 = v16;
  CGAffineTransformTranslate(&v15, &v14, v12, -v13);
  v14 = v15;
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  CGRectApplyAffineTransform(v21, &v14);
}

void CGRectTranslate(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  CGAffineTransformMakeTranslation(&v10, a5, a6);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectApplyAffineTransform(v11, &v10);
}

double CGRectCenterScaleUp(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v10 = -(a5 * CGRectGetWidth(*&a1)) * 0.5;
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  v11 = -(a5 * CGRectGetHeight(v18)) * 0.5;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;

  *&result = CGRectInset(*&v12, v10, v11);
  return result;
}

uint64_t PADClassifierFrameOptionsInit(int a1, int a2, int a3)
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return v4 | a1 | v3;
}

_PADClassifier *PADClassifierInit()
{
  v0 = objc_alloc_init(_PADClassifier);

  return v0;
}

void sub_245693384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_245693A50(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245693A70(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_245693AD8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245693AF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_245693B38()
{
  v0 = sub_2456CAF58();
  __swift_allocate_value_buffer(v0, qword_27EE20D08);
  __swift_project_value_buffer(v0, qword_27EE20D08);
  return sub_2456CAF48();
}

uint64_t sub_245693BBC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = sub_2456CAF58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2456AB8E0(a3);
  if (result)
  {
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v6, qword_27EE20D08);
    (*(v7 + 16))(v9, v11, v6);

    v12 = sub_2456CAF38();
    v13 = sub_2456CB1C8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_2456A3F34(a1, a2, &v17);
      _os_log_impl(&dword_245686000, v12, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x245D6F740](v15, -1, -1);
      MEMORY[0x245D6F740](v14, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_245693DEC(uint64_t a1, id *a2)
{
  result = sub_2456CAFE8();
  *a2 = 0;
  return result;
}

uint64_t sub_245693E64(uint64_t a1, id *a2)
{
  v3 = sub_2456CAFF8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_245693EE4@<X0>(uint64_t *a1@<X8>)
{
  sub_2456CB008();
  v2 = sub_2456CAFD8();

  *a1 = v2;
  return result;
}

uint64_t sub_245693F28()
{
  v0 = sub_2456CB008();
  v1 = MEMORY[0x245D6E5B0](v0);

  return v1;
}

uint64_t sub_245693F64()
{
  sub_2456CB008();
  sub_2456CB058();
}

uint64_t sub_245693FB8()
{
  sub_2456CB008();
  sub_2456CB588();
  sub_2456CB058();
  v0 = sub_2456CB5A8();

  return v0;
}

uint64_t sub_245694030()
{
  v0 = sub_2456CB008();
  v2 = v1;
  if (v0 == sub_2456CB008() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2456CB538();
  }

  return v5 & 1;
}

uint64_t sub_2456940B8(uint64_t a1)
{
  v2 = sub_2456945F4(&qword_27EE20E98, type metadata accessor for CIImageRepresentationOption);
  v3 = sub_2456945F4(&qword_27EE20EA0, type metadata accessor for CIImageRepresentationOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_245694178@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2456CB008();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2456941A4(uint64_t a1)
{
  v2 = sub_2456945F4(&qword_27EE20EA8, type metadata accessor for MLModelMetadataKey);
  v3 = sub_2456945F4(&qword_27EE20EB0, type metadata accessor for MLModelMetadataKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_245694260@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2456CAFD8();

  *a1 = v2;
  return result;
}

uint64_t sub_2456942A8(uint64_t a1)
{
  v2 = sub_2456945F4(&qword_27EE20EB8, type metadata accessor for VNImageOption);
  v3 = sub_2456945F4(&unk_27EE20EC0, type metadata accessor for VNImageOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_245694494(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2456944B4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_245694518(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2456945F4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_245694864(void *a1, void *a2)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v4 = sub_2456CAF58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2456B6AB8;
    aBlock[3] = &block_descriptor;
    a1 = _Block_copy(aBlock);
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CE2C78]) initWithCompletionHandler_];
  _Block_release(a1);
  aBlock[0] = 0;
  if ([v8 setRevision:2 error:aBlock])
  {
    v9 = aBlock[0];
  }

  else
  {
    v10 = aBlock[0];
    v11 = sub_2456CAE08();

    swift_willThrow();
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v4, qword_27EE20D08);
    (*(v5 + 16))(v7, v12, v4);
    v13 = v11;
    v14 = sub_2456CAF38();
    v15 = sub_2456CB1D8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v24 = v5;
      v17 = v16;
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_2456CB578();
      v21 = sub_2456A3F34(v19, v20, aBlock);

      *(v17 + 4) = v21;
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x245D6F740](v18, -1, -1);
      MEMORY[0x245D6F740](v17, -1, -1);

      (*(v24 + 8))(v7, v4);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }

  return v8;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t PADSWClassifierResult.deviceInfo.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t PADSWClassifierResult.ageLabel.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t PADSWClassifierResult.sexLabel.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

uint64_t PADSWClassifierResult.skintoneLabel.getter()
{
  v1 = *(v0 + 168);

  return v1;
}

uint64_t PADSWClassifierResult.ethnicityLabel.getter()
{
  v1 = *(v0 + 184);

  return v1;
}

uint64_t PADSWClassifierResult.faceHairLabel.getter()
{
  v1 = *(v0 + 200);

  return v1;
}

uint64_t PADSWClassifierResult.headgearLabel.getter()
{
  v1 = *(v0 + 216);

  return v1;
}

uint64_t PADSWClassifierResult.glassesLabel.getter()
{
  v1 = *(v0 + 232);

  return v1;
}

uint64_t PADSWClassifierResult.init(livenessLabel:gestureSequence:assessmentsFAC:assessmentsPRD:assessmentsTA:timestampsFAC:timestampsID:timestampsButtonPressed:faceprintsID:assessmentFAC:assessmentTA:assessmentFakePRD:assessmentLivePRD:assessmentID:maxNccLow:maxNccHigh:ignoredStitches:deviceInfo:ageLabel:sexLabel:skintoneLabel:ethnicityLabel:faceHairLabel:headgearLabel:glassesLabel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, float a12@<S2>, float a13@<S3>, float a14@<S4>, float a15@<S5>, uint64_t a16, uint64_t a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, uint64_t a26)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a16;
  *(a9 + 72) = a10;
  *(a9 + 80) = a17;
  *(a9 + 88) = a11;
  *(a9 + 92) = a12;
  *(a9 + 96) = a13;
  *(a9 + 100) = a14;
  *(a9 + 104) = a15;
  *(a9 + 112) = a18;
  *(a9 + 128) = a19;
  *(a9 + 144) = a20;
  *(a9 + 160) = a21;
  *(a9 + 176) = a22;
  *(a9 + 192) = a23;
  *(a9 + 208) = a24;
  *(a9 + 224) = a25;
  *(a9 + 240) = a26;
  return result;
}

void sub_245694E58(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a3 + 2);
  v45 = *(a3 + 1);
  v56 = v6;
  v57[0] = v45;
  v7 = *(v6 + 16);
  v43 = *(a5 + 128);
  v42 = *(a4 + 192);
  if (!v7)
  {
    sub_24569BF14(v57, v53, &qword_27EE20F68);

    v10 = MEMORY[0x277D84F90];
LABEL_16:
    v21 = *(a3 + 4);
    v55 = v21;
    v22 = *(v21 + 16);
    v23 = MEMORY[0x277D84F90];
    if (v22)
    {
      v53[0] = MEMORY[0x277D84F90];
      sub_2456C5A98(0, v22, 0);
      v24 = v53[0];
      v25 = (v21 + 32);
      v26 = *(v53[0] + 16);
      do
      {
        v28 = *v25;
        v25 += 3;
        v27 = v28;
        v53[0] = v24;
        v29 = *(v24 + 24);
        if (v26 >= v29 >> 1)
        {
          sub_2456C5A98((v29 > 1), v26 + 1, 1);
          v24 = v53[0];
        }

        *(v24 + 16) = v26 + 1;
        *(v24 + 8 * v26++ + 32) = v27;
        --v22;
      }

      while (v22);
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }

    v54 = *(a3 + 3);

    sub_24569BFE0(v57, &qword_27EE20F68);
    sub_24569BFE0(&v56, &qword_27EE210D8);
    sub_24569BFE0(&v54, &unk_27EE215D0);
    sub_24569BFE0(&v55, &unk_27EE215E0);
    v30 = v54;
    v31 = *a3;
    swift_beginAccess();
    v32 = *(a4 + 160);
    v33 = *(a4 + 168);
    sub_2456CB238();
    sub_2456CB248();

    v34 = sub_2456BE5E8();
    v35 = sub_2456BE7C4();
    v36 = *(a4 + 176);
    swift_beginAccess();
    v37 = *(a4 + 144);
    v38 = *(a4 + 152);
    sub_2456CB238();
    sub_2456CB248();

    v39 = sub_2456CAFD8();
    v40 = MGGetStringAnswer();

    if (v40)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        goto LABEL_28;
      }

      sub_2456CAFF8();
    }

LABEL_28:
    *a6 = a1;
    *(a6 + 8) = a2;
    *(a6 + 16) = v45;
    *(a6 + 24) = v43;
    *(a6 + 32) = v42;
    *(a6 + 40) = v10;
    *(a6 + 48) = v24;
    *(a6 + 56) = v23;
    *(a6 + 64) = v30;
    *(a6 + 72) = v31;
    *(a6 + 80) = v32;
    *(a6 + 88) = v34;
    *(a6 + 92) = v35;
    *(a6 + 96) = -1082130432;
    *(a6 + 100) = v36;
    *(a6 + 112) = v37;
    *(a6 + 120) = 0;
    *(a6 + 128) = 0;
    *(a6 + 136) = 0u;
    *(a6 + 152) = 0u;
    *(a6 + 168) = 0u;
    *(a6 + 184) = 0u;
    *(a6 + 200) = 0u;
    *(a6 + 216) = 0u;
    *(a6 + 232) = 0u;
    return;
  }

  v8 = MEMORY[0x277D84F90];
  sub_24569BF14(v57, v53, &qword_27EE20F68);
  v53[0] = v8;

  sub_2456C5AC8(0, v7, 0);
  v9 = 0;
  v10 = v53[0];
  v49 = v7;
  v50 = v6 + 32;
  while (v9 < *(v6 + 16))
  {
    v11 = *(v50 + 8 * v9);
    v12 = *(v11 + 16);
    if (v12)
    {
      v51 = v10;
      v13 = v6;
      v52 = MEMORY[0x277D84F90];

      sub_2456C5A98(0, v12, 0);
      v14 = v52;
      v15 = *(v52 + 16);
      v16 = 32;
      do
      {
        v17 = *(v11 + v16);
        v18 = *(v52 + 24);
        if (v15 >= v18 >> 1)
        {
          sub_2456C5A98((v18 > 1), v15 + 1, 1);
        }

        *(v52 + 16) = v15 + 1;
        *(v52 + 8 * v15 + 32) = v17;
        v16 += 24;
        ++v15;
        --v12;
      }

      while (v12);

      v6 = v13;
      v10 = v51;
      v7 = v49;
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    v53[0] = v10;
    v20 = *(v10 + 16);
    v19 = *(v10 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_2456C5AC8((v19 > 1), v20 + 1, 1);
      v10 = v53[0];
    }

    ++v9;
    *(v10 + 16) = v20 + 1;
    *(v10 + 8 * v20 + 32) = v14;
    if (v9 == v7)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_245695384(char a1)
{
  result = 0x7373656E6576696CLL;
  switch(a1)
  {
    case 1:
      result = 0x5365727574736567;
      break;
    case 2:
    case 3:
    case 4:
    case 10:
      result = 0x656D737365737361;
      break;
    case 5:
      result = 0x6D617473656D6974;
      break;
    case 6:
      result = 0x6D617473656D6974;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0x6E69727065636166;
      break;
    case 9:
      result = 0x656D737365737361;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x656D737365737361;
      break;
    case 14:
      result = 0x6F4C63634E78616DLL;
      break;
    case 15:
      result = 0x694863634E78616DLL;
      break;
    case 16:
      result = 0x536465726F6E6769;
      break;
    case 17:
      result = 0x6E49656369766564;
      break;
    case 18:
      v3 = 1281714017;
      goto LABEL_23;
    case 19:
      v3 = 1282958707;
LABEL_23:
      result = v3 | 0x6C65626100000000;
      break;
    case 20:
      result = 0x656E6F746E696B73;
      break;
    case 21:
      result = 0x746963696E687465;
      break;
    case 22:
      result = 0x7269614865636166;
      break;
    case 23:
      result = 0x7261656764616568;
      break;
    case 24:
      result = 0x4C73657373616C67;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2456956E8()
{
  v1 = *v0;
  sub_2456CB588();
  MEMORY[0x245D6EAC0](v1);
  return sub_2456CB5A8();
}

uint64_t sub_24569575C()
{
  v1 = *v0;
  sub_2456CB588();
  MEMORY[0x245D6EAC0](v1);
  return sub_2456CB5A8();
}

uint64_t sub_2456957A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24569A8B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2456957E8(uint64_t a1)
{
  v2 = sub_245696130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_245695824(uint64_t a1)
{
  v2 = sub_245696130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PADSWClassifierResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20F38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v28 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[3];
  v35 = v1[2];
  v36 = v7;
  v10 = v1[5];
  v33 = v1[4];
  v34 = v9;
  v11 = v1[7];
  v31 = v1[6];
  v32 = v10;
  v29 = v1[8];
  v30 = v11;
  v12 = v1[10];
  v13 = v1[15];
  v28[15] = v1[14];
  v28[16] = v12;
  v28[1] = v13;
  v14 = v1[17];
  v28[2] = v1[16];
  v28[3] = v14;
  v15 = v1[19];
  v28[4] = v1[18];
  v28[5] = v15;
  v16 = v1[21];
  v28[6] = v1[20];
  v28[7] = v16;
  v17 = v1[23];
  v28[8] = v1[22];
  v28[9] = v17;
  v18 = v1[25];
  v28[10] = v1[24];
  v28[11] = v18;
  v19 = v1[27];
  v28[12] = v1[26];
  v28[13] = v19;
  v20 = v1[29];
  v28[14] = v1[28];
  v28[0] = v20;
  v21 = v1[30];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_245696130();
  v22 = v3;
  sub_2456CB5C8();
  v39 = v8;
  v38 = 0;
  sub_245696184();
  v23 = v37;
  sub_2456CB4F8();
  if (v23)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v25 = v34;
  v26 = v35;
  v27 = v33;
  v37 = v21;
  v39 = v36;
  v38 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20F50);
  sub_2456961D8();
  sub_2456CB4F8();
  v39 = v26;
  v38 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20F68);
  sub_2456962F8();
  sub_2456CB4F8();
  v39 = v25;
  v38 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20F80);
  sub_2456963D0();
  sub_2456CB4F8();
  v39 = v27;
  v38 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20F98);
  sub_2456964A8();
  sub_2456CB4F8();
  v39 = v32;
  v38 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20FB0);
  sub_2456979CC(&qword_27EE20FB8, &qword_27EE20FC0);
  sub_2456CB4F8();
  v39 = v31;
  v38 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21590);
  sub_245697A58(&qword_27EE20FC0);
  sub_2456CB4F8();
  v39 = v30;
  v38 = 7;
  sub_2456CB4F8();
  v39 = v29;
  v38 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE215D0);
  sub_245696580(&qword_27EE20FC8, &qword_27EE20FD0);
  sub_2456CB4F8();
  LOBYTE(v39) = 9;
  sub_2456CB4D8();
  LOBYTE(v39) = 10;
  sub_2456CB4E8();
  LOBYTE(v39) = 11;
  sub_2456CB4D8();
  LOBYTE(v39) = 12;
  sub_2456CB4D8();
  LOBYTE(v39) = 13;
  sub_2456CB4D8();
  LOBYTE(v39) = 14;
  sub_2456CB4D8();
  LOBYTE(v39) = 15;
  sub_2456CB4D8();
  LOBYTE(v39) = 16;
  sub_2456CB4E8();
  LOBYTE(v39) = 17;
  sub_2456CB4A8();
  LOBYTE(v39) = 18;
  sub_2456CB4A8();
  LOBYTE(v39) = 19;
  sub_2456CB4A8();
  LOBYTE(v39) = 20;
  sub_2456CB4A8();
  LOBYTE(v39) = 21;
  sub_2456CB4A8();
  LOBYTE(v39) = 22;
  sub_2456CB4A8();
  LOBYTE(v39) = 23;
  sub_2456CB4A8();
  LOBYTE(v39) = 24;
  sub_2456CB4A8();
  return (*(v4 + 8))(v6, v22);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_245696130()
{
  result = qword_27EE20F40;
  if (!qword_27EE20F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE20F40);
  }

  return result;
}

unint64_t sub_245696184()
{
  result = qword_27EE20F48;
  if (!qword_27EE20F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE20F48);
  }

  return result;
}

unint64_t sub_2456961D8()
{
  result = qword_27EE20F58;
  if (!qword_27EE20F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE20F50);
    sub_2456962A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE20F58);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2456962A4()
{
  result = qword_27EE20F60;
  if (!qword_27EE20F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE20F60);
  }

  return result;
}

unint64_t sub_2456962F8()
{
  result = qword_27EE20F70;
  if (!qword_27EE20F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE20F68);
    sub_24569637C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE20F70);
  }

  return result;
}

unint64_t sub_24569637C()
{
  result = qword_27EE20F78;
  if (!qword_27EE20F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE20F78);
  }

  return result;
}

unint64_t sub_2456963D0()
{
  result = qword_27EE20F88;
  if (!qword_27EE20F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE20F80);
    sub_245696454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE20F88);
  }

  return result;
}

unint64_t sub_245696454()
{
  result = qword_27EE20F90;
  if (!qword_27EE20F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE20F90);
  }

  return result;
}

unint64_t sub_2456964A8()
{
  result = qword_27EE20FA0;
  if (!qword_27EE20FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE20F98);
    sub_24569652C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE20FA0);
  }

  return result;
}

unint64_t sub_24569652C()
{
  result = qword_27EE20FA8;
  if (!qword_27EE20FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE20FA8);
  }

  return result;
}

uint64_t sub_245696580(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EE215D0);
    sub_24569660C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24569660C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE20FD8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PADSWClassifierResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20FE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - v7;
  v9 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_245696130();
  sub_2456CB5B8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v76);
  }

  v10 = v6;
  LOBYTE(v77) = 0;
  sub_245697618();
  sub_2456CB498();
  v11 = v93[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20F50);
  LOBYTE(v77) = 1;
  sub_24569766C();
  sub_2456CB498();
  v75 = v93[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20F68);
  LOBYTE(v77) = 2;
  sub_245697744();
  sub_2456CB498();
  v68 = v93[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20F80);
  LOBYTE(v77) = 3;
  sub_24569781C();
  v67 = 0;
  sub_2456CB498();
  v66 = v93[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20F98);
  LOBYTE(v77) = 4;
  sub_2456978F4();
  sub_2456CB498();
  v65 = v93[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20FB0);
  LOBYTE(v77) = 5;
  sub_2456979CC(&qword_27EE21030, &qword_27EE21038);
  sub_2456CB498();
  v64 = v93[0];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE21590);
  LOBYTE(v77) = 6;
  v73 = sub_245697A58(&qword_27EE21038);
  v74 = v12;
  sub_2456CB498();
  v63 = v93[0];
  LOBYTE(v77) = 7;
  sub_2456CB498();
  v62 = v93[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE215D0);
  LOBYTE(v77) = 8;
  sub_245696580(&qword_27EE21040, &qword_27EE21048);
  sub_2456CB498();
  v61 = v93[0];
  LOBYTE(v93[0]) = 9;
  sub_2456CB478();
  v14 = v13;
  LOBYTE(v93[0]) = 10;
  v15 = sub_2456CB488();
  LOBYTE(v93[0]) = 11;
  sub_2456CB478();
  v17 = v16;
  LOBYTE(v93[0]) = 12;
  sub_2456CB478();
  v19 = v18;
  LOBYTE(v93[0]) = 13;
  sub_2456CB478();
  v21 = v20;
  LOBYTE(v93[0]) = 14;
  sub_2456CB478();
  v23 = v22;
  LOBYTE(v93[0]) = 15;
  sub_2456CB478();
  v25 = v24;
  LOBYTE(v93[0]) = 16;
  v74 = sub_2456CB488();
  LOBYTE(v93[0]) = 17;
  v73 = sub_2456CB448();
  v60 = v26;
  LOBYTE(v93[0]) = 18;
  v72 = sub_2456CB448();
  v59 = v27;
  LOBYTE(v93[0]) = 19;
  v71 = sub_2456CB448();
  v58 = v28;
  LOBYTE(v93[0]) = 20;
  v70 = sub_2456CB448();
  v57 = v29;
  LOBYTE(v93[0]) = 21;
  v69 = sub_2456CB448();
  v56 = v30;
  LOBYTE(v93[0]) = 22;
  v54 = sub_2456CB448();
  v55 = v31;
  LOBYTE(v93[0]) = 23;
  v52 = sub_2456CB448();
  v53 = v32;
  v118 = 24;
  v33 = sub_2456CB448();
  v67 = v34;
  v35 = v33;
  (*(v10 + 8))(v8, v5);
  *&v77 = v11;
  *(&v77 + 1) = v75;
  v36 = v68;
  v37 = v66;
  *&v78 = v68;
  *(&v78 + 1) = v66;
  *&v79 = v65;
  *(&v79 + 1) = v64;
  *&v80 = v63;
  *(&v80 + 1) = v62;
  *&v81 = v61;
  DWORD2(v81) = v14;
  *&v82 = v15;
  *(&v82 + 1) = __PAIR64__(v19, v17);
  *&v83 = __PAIR64__(v23, v21);
  DWORD2(v83) = v25;
  *&v84 = v74;
  *(&v84 + 1) = v73;
  *&v85 = v60;
  *(&v85 + 1) = v72;
  *&v86 = v59;
  *(&v86 + 1) = v71;
  *&v87 = v58;
  *(&v87 + 1) = v70;
  *&v88 = v57;
  *(&v88 + 1) = v69;
  *&v89 = v56;
  *(&v89 + 1) = v54;
  *&v90 = v55;
  *(&v90 + 1) = v52;
  *&v91 = v53;
  *(&v91 + 1) = v35;
  v38 = v67;
  v92 = v67;
  v39 = v85;
  v40 = v86;
  v41 = v88;
  *(a2 + 160) = v87;
  *(a2 + 176) = v41;
  *(a2 + 128) = v39;
  *(a2 + 144) = v40;
  v42 = v89;
  v43 = v90;
  v44 = v91;
  *(a2 + 240) = v38;
  *(a2 + 208) = v43;
  *(a2 + 224) = v44;
  *(a2 + 192) = v42;
  v45 = v77;
  v46 = v78;
  v47 = v80;
  *(a2 + 32) = v79;
  *(a2 + 48) = v47;
  *a2 = v45;
  *(a2 + 16) = v46;
  v48 = v81;
  v49 = v82;
  v50 = v84;
  *(a2 + 96) = v83;
  *(a2 + 112) = v50;
  *(a2 + 64) = v48;
  *(a2 + 80) = v49;
  sub_245697AC4(&v77, v93);
  __swift_destroy_boxed_opaque_existential_0(v76);
  v93[0] = v11;
  v93[1] = v75;
  v93[2] = v36;
  v93[3] = v37;
  v93[4] = v65;
  v93[5] = v64;
  v93[6] = v63;
  v93[7] = v62;
  v93[8] = v61;
  v94 = v14;
  v95 = v15;
  v96 = v17;
  v97 = v19;
  v98 = v21;
  v99 = v23;
  v100 = v25;
  v101 = v74;
  v102 = v73;
  v103 = v60;
  v104 = v72;
  v105 = v59;
  v106 = v71;
  v107 = v58;
  v108 = v70;
  v109 = v57;
  v110 = v69;
  v111 = v56;
  v112 = v54;
  v113 = v55;
  v114 = v52;
  v115 = v53;
  v116 = v35;
  v117 = v38;
  return sub_245697AFC(v93);
}

unint64_t sub_245697618()
{
  result = qword_27EE20FE8;
  if (!qword_27EE20FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE20FE8);
  }

  return result;
}

unint64_t sub_24569766C()
{
  result = qword_27EE20FF0;
  if (!qword_27EE20FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE20F50);
    sub_2456976F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE20FF0);
  }

  return result;
}

unint64_t sub_2456976F0()
{
  result = qword_27EE20FF8;
  if (!qword_27EE20FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE20FF8);
  }

  return result;
}

unint64_t sub_245697744()
{
  result = qword_27EE21000;
  if (!qword_27EE21000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE20F68);
    sub_2456977C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21000);
  }

  return result;
}

unint64_t sub_2456977C8()
{
  result = qword_27EE21008;
  if (!qword_27EE21008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21008);
  }

  return result;
}

unint64_t sub_24569781C()
{
  result = qword_27EE21010;
  if (!qword_27EE21010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE20F80);
    sub_2456978A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21010);
  }

  return result;
}

unint64_t sub_2456978A0()
{
  result = qword_27EE21018;
  if (!qword_27EE21018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21018);
  }

  return result;
}

unint64_t sub_2456978F4()
{
  result = qword_27EE21020;
  if (!qword_27EE21020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE20F98);
    sub_245697978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21020);
  }

  return result;
}

unint64_t sub_245697978()
{
  result = qword_27EE21028;
  if (!qword_27EE21028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE21028);
  }

  return result;
}

uint64_t sub_2456979CC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE20FB0);
    sub_245697A58(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_245697A58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE21590);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_245697B5C(uint64_t a1, uint64_t *a2)
{
  sub_24569BF14(a1, v6, &qword_27EE213C0);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_delegate;
  swift_beginAccess();
  sub_245697C98(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_245697BD0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_delegate;
  swift_beginAccess();
  return sub_24569BF14(v1 + v3, a1, &qword_27EE213C0);
}

uint64_t sub_245697C38(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_delegate;
  swift_beginAccess();
  sub_245697C98(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_245697C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE213C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_245697D6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_fac);
  swift_beginAccess();
  v3 = v1[20];
  v2 = v1[21];
  v4 = v1[18];
  v5 = v2;

  sub_2456CB238();
  sub_2456CB248();
  if ((v3 & 0x8000000000000000) != 0 || v3 >= *(v4 + 16))
  {

    return 10;
  }

  else
  {
    v6 = *(v4 + 8 * v3 + 32);

    return v6;
  }
}

_BYTE *(*sub_245697E44(uint64_t a1))(_BYTE *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_ta);
  *a1 = v2;
  *(a1 + 8) = *(v2 + 185);
  return sub_245697E7C;
}

uint64_t static PADSWClassifier.FrameProcessingOptions.allEnabled.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27EE20D20 != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = HIBYTE(word_27EE20F30);
  v2 = byte_27EE20F32;
  *a1 = word_27EE20F30;
  a1[1] = v1;
  a1[2] = v2;
  return result;
}

uint64_t PADSWClassifier.__allocating_init(delegate:)(uint64_t a1)
{
  *(v1 + 528) = a1;
  type metadata accessor for PADModelManager();
  swift_allocObject();
  v2 = swift_task_alloc();
  *(v1 + 536) = v2;
  *v2 = v1;
  v2[1] = sub_245697FC8;

  return sub_2456AB084();
}

uint64_t sub_245697FC8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 544) = v1;

  if (v1)
  {
    v5 = sub_2456980F0;
  }

  else
  {
    *(v4 + 552) = a1;
    v5 = sub_245698164;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2456980F0()
{
  sub_24569BFE0(*(v0 + 528), &qword_27EE213C0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_245698164()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 528);
  v45 = v2;
  sub_2456AD1F8(v0 + 16);
  type metadata accessor for PADLivenessClassifier();
  v3 = swift_allocObject();
  swift_weakInit();
  swift_retain_n();
  sub_2456AC01C();
  v4 = objc_allocWithZone(PADAlgorithms);
  sub_24569B080();
  v5 = sub_2456CAFA8();

  v6 = [v4 initWithPADModelConfiguration_];

  v7 = *(v0 + 144);
  *(v3 + 168) = *(v0 + 160);
  v8 = *(v0 + 192);
  *(v3 + 184) = *(v0 + 176);
  *(v3 + 200) = v8;
  *(v3 + 216) = *(v0 + 208);
  v9 = *(v0 + 80);
  *(v3 + 104) = *(v0 + 96);
  v10 = *(v0 + 128);
  *(v3 + 120) = *(v0 + 112);
  *(v3 + 136) = v10;
  *(v3 + 152) = v7;
  v11 = *(v0 + 16);
  *(v3 + 40) = *(v0 + 32);
  v12 = *(v0 + 64);
  *(v3 + 56) = *(v0 + 48);
  *(v3 + 72) = v12;
  *(v3 + 88) = v9;
  *(v3 + 16) = v6;
  *(v3 + 24) = v11;
  swift_weakAssign();

  type metadata accessor for PADFaceActionController();
  swift_allocObject();

  v13 = sub_2456C6BF0(0, 0, v3);
  sub_24569BF14(v2, v0 + 384, &qword_27EE213C0);
  v44 = type metadata accessor for PADSWClassifier();
  v14 = objc_allocWithZone(v44);
  v15 = &v14[OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_facResult];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  v16 = &v14[OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult];

  sub_24569B0F0((v0 + 224));
  v17 = *(v0 + 240);
  *v16 = *(v0 + 224);
  *(v16 + 1) = v17;
  v18 = *(v0 + 256);
  v19 = *(v0 + 272);
  v20 = *(v0 + 304);
  *(v16 + 4) = *(v0 + 288);
  *(v16 + 5) = v20;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  v21 = *(v0 + 320);
  v22 = *(v0 + 336);
  v23 = *(v0 + 368);
  *(v16 + 8) = *(v0 + 352);
  *(v16 + 9) = v23;
  *(v16 + 6) = v21;
  *(v16 + 7) = v22;
  v24 = &v14[OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_request];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = &v14[OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_delegate];
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  swift_beginAccess();
  sub_24569B10C(v0 + 384, v25, &qword_27EE213C0);
  swift_endAccess();
  *&v14[OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_modelManager] = v1;
  v26 = OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_livenessClassifier;
  *&v14[OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_livenessClassifier] = v3;
  *&v14[OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_fac] = v13;
  type metadata accessor for PADTrajectoryAnalysisController();
  v27 = swift_allocObject();
  swift_retain_n();
  swift_retain_n();

  v28 = dispatch_semaphore_create(1);
  *(v27 + 128) = 0;
  *(v27 + 136) = v28;
  v29 = dispatch_semaphore_create(1);
  *(v27 + 144) = 0;
  *(v27 + 152) = v29;
  v30 = dispatch_semaphore_create(1);
  *(v27 + 160) = 0;
  *(v27 + 168) = v30;
  *(v27 + 176) = 0;
  *(v27 + 184) = 256;
  v31 = MEMORY[0x277D84F90];
  *(v27 + 192) = MEMORY[0x277D84F90];
  v32 = v31;
  *(v27 + 208) = 0;
  swift_unknownObjectWeakInit();
  *(v27 + 208) = 0;
  swift_unknownObjectWeakAssign();
  *&v14[OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_ta] = sub_2456B323C(v3);
  *(v0 + 456) = 0;
  *(v0 + 424) = 0u;
  *(v0 + 440) = 0u;
  v33 = *&v14[v26];
  type metadata accessor for PADPrintReplayController();
  v34 = swift_allocObject();
  *(v34 + 128) = v32;
  *(v34 + 136) = 0;
  *(v34 + 144) = 0;
  *(v34 + 152) = 0;
  *(v34 + 160) = 1;
  *(v34 + 184) = 0u;
  *(v34 + 200) = 0;
  *(v34 + 168) = 0u;
  v35 = v34 + 168;
  swift_beginAccess();

  sub_24569B10C(v0 + 424, v35, &qword_27EE21098);
  swift_endAccess();
  v36 = sub_2456B323C(v33);
  sub_24569BFE0(v0 + 424, &qword_27EE21098);
  *&v14[OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_prd] = v36;
  type metadata accessor for PADSelfieAnalysisController();
  v37 = swift_allocObject();
  v37[19] = 0;
  v37[16] = 0;
  v37[17] = 0;
  swift_unknownObjectWeakInit();
  v38 = MEMORY[0x277D84F90];
  v37[19] = 0;
  v37[20] = v38;
  swift_unknownObjectWeakAssign();

  v40 = sub_2456B323C(v39);

  *&v14[OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieAnalyzer] = v40;
  *(v0 + 512) = v14;
  *(v0 + 520) = v44;
  v41 = objc_msgSendSuper2((v0 + 512), sel_init);

  sub_24569BFE0(v0 + 384, &qword_27EE213C0);

  sub_24569BFE0(v45, &qword_27EE213C0);
  *(*&v41[OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_fac] + 136) = &off_285873708;
  swift_unknownObjectWeakAssign();
  *(*&v41[OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_ta] + 208) = &off_285873738;
  swift_unknownObjectWeakAssign();
  *(*&v41[OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieAnalyzer] + 152) = &off_285873750;
  swift_unknownObjectWeakAssign();
  v42 = *(v0 + 8);

  return v42(v41);
}

uint64_t sub_245698714(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = (v1 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_request);
  *v5 = *a1;
  v5[1] = v4;

  if (qword_27EE20D28 != -1)
  {
    swift_once();
  }

  if (qword_27EE210E0)
  {
    sub_24569C344();
  }

  v6 = *(v1 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_fac);
  sub_2456C0164(v3, v4);
  *(v6 + 136) = &off_285873708;
  swift_unknownObjectWeakAssign();
  *(*(v2 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_ta) + 208) = &off_285873738;
  swift_unknownObjectWeakAssign();
  *(*(v2 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieAnalyzer) + 152) = &off_285873750;

  return swift_unknownObjectWeakAssign();
}

void sub_245698930(void *a1, unsigned __int8 *a2)
{
  v4 = 0xD000000000000016;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  sub_2456CB348();
  MEMORY[0x245D6E590](0xD00000000000001ELL, 0x80000002456D09D0);
  type metadata accessor for CMTime(0);
  v8 = sub_2456CB038();
  MEMORY[0x245D6E590](v8);

  MEMORY[0x245D6E590](0xD000000000000016, 0x80000002456D09F0);
  v9 = sub_2456CB038();
  MEMORY[0x245D6E590](v9);

  MEMORY[0x245D6E590](0x646F4D636166202CLL, 0xEB00000000203A65);
  v10 = *(v2 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_fac);
  if (*(v10 + 256))
  {
    if (*(v10 + 256) == 1)
    {
      v11 = 0x80000002456D0A10;
    }

    else
    {
      v11 = 0xE600000000000000;
      v4 = 0x646573756170;
    }
  }

  else
  {
    v11 = 0xEE00736572757473;
    v4 = 0x6547746365746564;
  }

  MEMORY[0x245D6E590](v4, v11);

  sub_245693BB4(0, 0xE000000000000000);

  if (v5)
  {
    sub_2456B34D0(a1);
    if (!v6)
    {
LABEL_8:
      if (!v7)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (!v6)
  {
    goto LABEL_8;
  }

  sub_2456B34D0(a1);
  if (!v7)
  {
    return;
  }

LABEL_9:
  sub_2456B7CFC(a1);
}

uint64_t sub_245698B6C()
{
  v1 = sub_2456CAF58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_facResult + 8))
  {

    return sub_245699E5C();
  }

  else
  {
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v6 = __swift_project_value_buffer(v1, qword_27EE20D08);
    (*(v2 + 16))(v4, v6, v1);
    v7 = sub_2456CAF38();
    v8 = sub_2456CB1C8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_245686000, v7, v8, "FAC results are not complete, unable to finish processing without selfie.", v9, 2u);
      MEMORY[0x245D6F740](v9, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_245698D38(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_delegate;
  swift_beginAccess();
  sub_24569BF14(v1 + v3, v10, &qword_27EE213C0);
  if (!v11)
  {
    return sub_24569BFE0(v10, &qword_27EE213C0);
  }

  sub_24569B370(v10, v7);
  sub_24569BFE0(v10, &qword_27EE213C0);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 56))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_245698E24(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = (v1 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_facResult);
  v7 = *(v1 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_facResult);
  v8 = *(v1 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_facResult + 8);
  *v6 = *a1;
  v6[1] = v2;
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v5;
  v20 = v3;
  v21 = v2;
  v18 = v5;
  v19 = v4;
  sub_24569BF14(&v21, v16, &qword_27EE20F68);
  sub_24569BF14(&v20, v16, &qword_27EE210D8);
  sub_24569BF14(&v19, v16, &unk_27EE215D0);
  sub_24569BF14(&v18, v16, &unk_27EE215E0);
  sub_24569BF7C(v7, v8);
  v9 = OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_delegate;
  swift_beginAccess();
  sub_24569BF14(v1 + v9, v16, &qword_27EE213C0);
  if (!v17)
  {
    return sub_24569BFE0(v16, &qword_27EE213C0);
  }

  sub_24569B370(v16, v13);
  sub_24569BFE0(v16, &qword_27EE213C0);
  v10 = v14;
  v11 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v11 + 40))(v10, v11);
  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t sub_245698FD0()
{
  v200 = *MEMORY[0x277D85DE8];
  v1 = sub_2456CAF58();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v124 - v5;
  MEMORY[0x28223BE20](v4);
  v9 = &v124 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_request);
  if (v10)
  {
    v11 = (v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_facResult);
    v12 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_facResult + 8);
    if (!v12)
    {
      goto LABEL_5;
    }

    v144 = v7;
    v13 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 112);
    v14 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 80);
    v186 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 96);
    v187 = v13;
    v15 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 112);
    v16 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 144);
    v188 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 128);
    v189 = v16;
    v17 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 48);
    v18 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 16);
    v182 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 32);
    v183 = v17;
    v19 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 48);
    v20 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 80);
    v184 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 64);
    v185 = v20;
    v21 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 16);
    v181[0] = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult);
    v181[1] = v21;
    v196 = v186;
    v197 = v15;
    v22 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_selfieResult + 144);
    v198 = v188;
    v199 = v22;
    v192 = v182;
    v193 = v19;
    v194 = v184;
    v195 = v14;
    v23 = *v11;
    v25 = v11[2];
    v24 = v11[3];
    v141 = v11[4];
    v190 = v181[0];
    v191 = v18;
    if (sub_24569BE98(&v190) == 1)
    {
      sub_24569BEB0(v23, v12);

LABEL_5:
      if (qword_27EE20D00 == -1)
      {
LABEL_6:
        v26 = __swift_project_value_buffer(v1, qword_27EE20D08);
        (*(v2 + 16))(v9, v26, v1);
        v27 = sub_2456CAF38();
        v28 = sub_2456CB1D8();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_245686000, v27, v28, "Attempted to finalize liveness results before FAC and selfie processing has completed", v29, 2u);
          MEMORY[0x245D6F740](v29, -1, -1);
        }

        return (*(v2 + 8))(v9, v1);
      }

LABEL_56:
      swift_once();
      goto LABEL_6;
    }

    v35 = v23;
    v140 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_livenessClassifier);
    v36 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_ta);
    swift_beginAccess();
    v143 = *(v36 + 160);
    v37 = v23;
    v133 = v23;
    v134 = v36;
    v38 = *(v36 + 168);
    v136 = v24;
    sub_24569BEB0(v37, v12);
    v39 = v38;

    sub_24569BF14(v181, &v165, &qword_27EE210C8);
    v142 = v25;
    sub_2456CB238();
    sub_2456CB248();

    v138 = v0;
    v40 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_prd);
    v41 = sub_2456BE5E8();
    v135 = v40;
    v42 = sub_2456BE7C4();
    v43 = v190;
    v44 = *(v140 + 2);
    v45 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v137 = v10;
    LODWORD(v46) = v35;
    v47 = [v45 initWithFloat_];
    v48 = sub_2456CB198();
    v49 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    *&v50 = v41;
    v51 = [v49 initWithFloat_];
    v139 = v12;
    v52 = v51;
    v53 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    *&v54 = v42;
    v55 = [v53 initWithFloat_];
    v56 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    LODWORD(v57) = v43;
    v58 = [v56 initWithFloat_];
    *&v165 = 0;
    v59 = [v44 performSC:v47 assessmentTA:v48 assessmentFakePRD:v52 assessmentLivePRD:v55 assessmentID:v58 error:&v165];

    v60 = v165;
    if (v165)
    {
      v61 = v165;

      swift_willThrow();
      sub_24569BFE0(v181, &qword_27EE210C8);

      if (qword_27EE20D00 != -1)
      {
        swift_once();
      }

      v62 = __swift_project_value_buffer(v1, qword_27EE20D08);
      v63 = v144;
      (*(v2 + 16))(v144, v62, v1);
      v64 = v61;
      v65 = sub_2456CAF38();
      v66 = sub_2456CB1D8();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v67 = 138412290;
        v69 = v64;
        v70 = _swift_stdlib_bridgeErrorToNSError();
        *(v67 + 4) = v70;
        *v68 = v70;
        _os_log_impl(&dword_245686000, v65, v66, "Error occurred finalizing liveness result: %@", v67, 0xCu);
        sub_24569BFE0(v68, &qword_27EE210D0);
        MEMORY[0x245D6F740](v68, -1, -1);
        v71 = v67;
        v63 = v144;
        MEMORY[0x245D6F740](v71, -1, -1);
      }

      (*(v2 + 8))(v63, v1);
      v72 = OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_delegate;
      v73 = v138;
      swift_beginAccess();
      sub_24569BF14(v73 + v72, &v165, &qword_27EE213C0);
      if (*(&v166 + 1))
      {
        sub_24569B370(&v165, &v145);
        sub_24569BFE0(&v165, &qword_27EE213C0);
        v74 = *(&v146 + 1);
        v75 = v147;
        __swift_project_boxed_opaque_existential_1(&v145, *(&v146 + 1));
        v76 = *(v75 + 56);
        v77 = v64;
        v76(v60, v74, v75);

        return __swift_destroy_boxed_opaque_existential_0(&v145);
      }

      else
      {

        return sub_24569BFE0(&v165, &qword_27EE213C0);
      }
    }

    v78 = v59 == 1;
    if (v59 == 2)
    {
      v78 = 2;
    }

    v79 = *(v134 + 192);
    v80 = v142;
    v9 = *(v142 + 16);
    v132 = *(v135 + 128);
    v130 = v78;
    v131 = v79;
    if (v9)
    {
      *&v165 = MEMORY[0x277D84F90];

      sub_2456C5AC8(0, v9, 0);
      v81 = 0;
      v82 = v165;
      v143 = v80 + 32;
      v140 = v9;
      while (v81 < *(v80 + 16))
      {
        v1 = *(v143 + 8 * v81);
        v2 = *(v1 + 16);
        if (v2)
        {
          v144 = v82;
          *&v145 = MEMORY[0x277D84F90];

          sub_2456C5A98(0, v2, 0);
          v83 = v145;
          v84 = *(v145 + 16);
          v85 = 32;
          do
          {
            v86 = *(v1 + v85);
            *&v145 = v83;
            v87 = *(v83 + 24);
            if (v84 >= v87 >> 1)
            {
              sub_2456C5A98((v87 > 1), v84 + 1, 1);
              v83 = v145;
            }

            *(v83 + 16) = v84 + 1;
            *(v83 + 8 * v84 + 32) = v86;
            v85 += 24;
            ++v84;
            --v2;
          }

          while (v2);

          v80 = v142;
          v82 = v144;
          v9 = v140;
        }

        else
        {
          v83 = MEMORY[0x277D84F90];
        }

        *&v165 = v82;
        v89 = *(v82 + 16);
        v88 = *(v82 + 24);
        if (v89 >= v88 >> 1)
        {
          sub_2456C5AC8((v88 > 1), v89 + 1, 1);
          v82 = v165;
        }

        ++v81;
        *(v82 + 16) = v89 + 1;
        *(v82 + 8 * v89 + 32) = v83;
        if (v81 == v9)
        {
          v90 = v134;
          goto LABEL_39;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v90 = v134;

    v82 = MEMORY[0x277D84F90];
LABEL_39:
    v144 = v82;
    v91 = v141;
    v92 = *(v141 + 16);
    v93 = MEMORY[0x277D84F90];
    if (v92)
    {
      *&v165 = MEMORY[0x277D84F90];
      sub_2456C5A98(0, v92, 0);
      v93 = v165;
      v94 = (v91 + 32);
      v95 = *(v165 + 16);
      do
      {
        v97 = *v94;
        v94 += 3;
        v96 = v97;
        *&v165 = v93;
        v98 = *(v93 + 24);
        if (v95 >= v98 >> 1)
        {
          sub_2456C5A98((v98 > 1), v95 + 1, 1);
          v93 = v165;
        }

        *(v93 + 16) = v95 + 1;
        *(v93 + 8 * v95++ + 32) = v96;
        --v92;
      }

      while (v92);
    }

    v99 = *(v90 + 160);
    v100 = *(v90 + 168);
    sub_2456CB238();
    sub_2456CB248();

    v101 = sub_2456BE5E8();
    v102 = sub_2456BE7C4();
    v103 = *(v90 + 176);
    swift_beginAccess();
    v104 = *(v90 + 144);
    v105 = *(v90 + 152);
    sub_2456CB238();
    sub_2456CB248();

    v106 = sub_2456CAFD8();
    v107 = MGGetStringAnswer();

    v142 = v99;
    v143 = v104;
    if (!v107)
    {
      v140 = 0;
      v141 = 0;
      v112 = v131;
      goto LABEL_52;
    }

    objc_opt_self();
    v108 = swift_dynamicCastObjCClass();
    v109 = v131;
    if (v108)
    {
      v165 = 0uLL;
      sub_2456CAFF8();

      v110 = *(&v165 + 1);
      if (*(&v165 + 1))
      {
        v111 = v165;
        *&v165 = 60;
        *(&v165 + 1) = 0xE100000000000000;
        MEMORY[0x245D6E590](v111, v110);

        MEMORY[0x245D6E590](62, 0xE100000000000000);
        v140 = *(&v165 + 1);
        v141 = v165;
LABEL_51:
        v112 = v109;
LABEL_52:
        v134 = *(&v191 + 1);
        v113 = v191;
        v135 = *(&v190 + 1);
        v114 = v192;
        v128 = *(&v193 + 1);
        v115 = v193;
        v129 = *(&v192 + 1);
        v116 = v194;
        v126 = *(&v195 + 1);
        v117 = v195;
        v127 = *(&v194 + 1);
        v125 = *(&v196 + 1);
        v118 = v196;
        v119 = v197;

        sub_24569BFE0(v181, &qword_27EE210C8);
        *&v165 = v130;
        *(&v165 + 1) = v137;
        *&v166 = v139;
        *(&v166 + 1) = v132;
        *&v167 = v112;
        *(&v167 + 1) = v144;
        *&v168 = v93;
        *(&v168 + 1) = MEMORY[0x277D84F90];
        *&v169 = v136;
        DWORD2(v169) = v133;
        *&v170 = v142;
        *(&v170 + 1) = __PAIR64__(LODWORD(v102), LODWORD(v101));
        LODWORD(v171) = v43;
        *(&v171 + 4) = v103;
        *&v172 = v143;
        *(&v172 + 1) = v141;
        *&v173 = v140;
        *(&v173 + 1) = v135;
        *&v174 = v113;
        *(&v174 + 1) = v134;
        *&v175 = v114;
        *(&v175 + 1) = v129;
        *&v176 = v115;
        *(&v176 + 1) = v128;
        *&v177 = v116;
        *(&v177 + 1) = v127;
        *&v178 = v117;
        *(&v178 + 1) = v126;
        *&v179 = v118;
        *(&v179 + 1) = v125;
        v180 = v119;
        v120 = OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_delegate;
        v121 = v138;
        swift_beginAccess();
        sub_24569BF14(v121 + v120, v164, &qword_27EE213C0);
        if (v164[3])
        {
          sub_24569B370(v164, v161);
          sub_24569BFE0(v164, &qword_27EE213C0);
          v122 = v162;
          v123 = v163;
          __swift_project_boxed_opaque_existential_1(v161, v162);
          v157 = v177;
          v158 = v178;
          v159 = v179;
          v160 = v180;
          v153 = v173;
          v154 = v174;
          v155 = v175;
          v156 = v176;
          v149 = v169;
          v150 = v170;
          v151 = v171;
          v152 = v172;
          v145 = v165;
          v146 = v166;
          v147 = v167;
          v148 = v168;
          (*(v123 + 48))(&v145, v122, v123);
          sub_245697AFC(&v165);
          return __swift_destroy_boxed_opaque_existential_0(v161);
        }

        else
        {
          sub_245697AFC(&v165);
          return sub_24569BFE0(v164, &qword_27EE213C0);
        }
      }
    }

    else
    {
    }

    v140 = 0;
    v141 = 0;
    goto LABEL_51;
  }

  if (qword_27EE20D00 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v1, qword_27EE20D08);
  (*(v2 + 16))(v6, v31, v1);
  v32 = sub_2456CAF38();
  v33 = sub_2456CB1D8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_245686000, v32, v33, "Attempted to finalize liveness results without a classifier request set.", v34, 2u);
    MEMORY[0x245D6F740](v34, -1, -1);
  }

  return (*(v2 + 8))(v6, v1);
}

uint64_t sub_245699E5C()
{
  v118 = *MEMORY[0x277D85DE8];
  v1 = sub_2456CAF58();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v71 - v5;
  MEMORY[0x28223BE20](v4);
  v9 = v71 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_request);
  if (v10)
  {
    v11 = (v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_facResult);
    v12 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_facResult + 8);
    if (v12)
    {
      v72 = v7;
      v73 = v2;
      v74 = v1;
      v14 = v11[3];
      v13 = v11[4];
      v15 = v11[2];
      v16 = *v11;
      v17 = *v11;
      v77 = v17;
      v78 = v12;
      v79 = v15;
      v80 = v14;
      v81 = v13;
      v76 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_livenessClassifier);
      v18 = *(v0 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_ta);
      swift_beginAccess();
      v19 = v0;
      v20 = *(v18 + 168);
      v75 = *(v18 + 160);
      v71[0] = v18;
      v21 = v20;

      v71[3] = v15;
      v71[4] = v12;
      v71[1] = v13;
      v71[2] = v14;
      v22 = v19;
      sub_24569BEB0(v16, v12);
      sub_2456CB238();
      sub_2456CB248();

      v23 = *(v19 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_prd);
      v24 = sub_2456BE5E8();
      v25 = sub_2456BE7C4();
      v76 = v76[2];
      v26 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v27) = v17;
      v28 = [v26 initWithFloat_];
      v29 = sub_2456CB198();
      v30 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      *&v31 = v24;
      v32 = [v30 initWithFloat_];
      v33 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      *&v34 = v25;
      v35 = [v33 initWithFloat_];
      v36 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v37) = -1.0;
      v38 = [v36 initWithFloat_];
      *&v102 = 0;
      v39 = [v76 performSC:v28 assessmentTA:v29 assessmentFakePRD:v32 assessmentLivePRD:v35 assessmentID:v38 error:&v102];

      if (v102)
      {
        v76 = v102;
        v40 = v102;

        swift_willThrow();

        if (qword_27EE20D00 != -1)
        {
          swift_once();
        }

        v41 = v74;
        v42 = __swift_project_value_buffer(v74, qword_27EE20D08);
        v44 = v72;
        v43 = v73;
        (*(v73 + 16))(v72, v42, v41);
        v45 = v40;
        v46 = sub_2456CAF38();
        v47 = sub_2456CB1D8();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = 138412290;
          v50 = v45;
          v51 = _swift_stdlib_bridgeErrorToNSError();
          *(v48 + 4) = v51;
          *v49 = v51;
          _os_log_impl(&dword_245686000, v46, v47, "Error occurred finalizing liveness result: %@", v48, 0xCu);
          sub_24569BFE0(v49, &qword_27EE210D0);
          MEMORY[0x245D6F740](v49, -1, -1);
          MEMORY[0x245D6F740](v48, -1, -1);
        }

        (*(v43 + 8))(v44, v41);
        v52 = OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_delegate;
        swift_beginAccess();
        sub_24569BF14(v22 + v52, &v102, &qword_27EE213C0);
        if (*(&v103 + 1))
        {
          sub_24569B370(&v102, &v82);
          sub_24569BFE0(&v102, &qword_27EE213C0);
          v53 = *(&v83 + 1);
          v54 = v84;
          __swift_project_boxed_opaque_existential_1(&v82, *(&v83 + 1));
          v55 = *(v54 + 56);
          v56 = v45;
          v55(v76, v53, v54);

          return __swift_destroy_boxed_opaque_existential_0(&v82);
        }

        else
        {

          return sub_24569BFE0(&v102, &qword_27EE213C0);
        }
      }

      else
      {
        if (v39 == 2)
        {
          v66 = 2;
        }

        else
        {
          v66 = v39 == 1;
        }

        v67 = v71[0];

        sub_245694E58(v66, v10, &v77, v67, v23, &v102);
        v68 = OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_delegate;
        swift_beginAccess();
        sub_24569BF14(v22 + v68, v101, &qword_27EE213C0);
        if (v101[3])
        {
          sub_24569B370(v101, v98);
          sub_24569BFE0(v101, &qword_27EE213C0);
          v69 = v99;
          v70 = v100;
          __swift_project_boxed_opaque_existential_1(v98, v99);
          v94 = v114;
          v95 = v115;
          v96 = v116;
          v97 = v117;
          v90 = v110;
          v91 = v111;
          v92 = v112;
          v93 = v113;
          v86 = v106;
          v87 = v107;
          v88 = v108;
          v89 = v109;
          v82 = v102;
          v83 = v103;
          v84 = v104;
          v85 = v105;
          (*(v70 + 48))(&v82, v69, v70);
          sub_245697AFC(&v102);
          return __swift_destroy_boxed_opaque_existential_0(v98);
        }

        else
        {
          sub_245697AFC(&v102);
          return sub_24569BFE0(v101, &qword_27EE213C0);
        }
      }
    }

    else
    {
      if (qword_27EE20D00 != -1)
      {
        swift_once();
      }

      v62 = __swift_project_value_buffer(v1, qword_27EE20D08);
      (*(v2 + 16))(v9, v62, v1);
      v63 = sub_2456CAF38();
      v64 = sub_2456CB1D8();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_245686000, v63, v64, "Attempted to finalize liveness results before FAC processing has completed", v65, 2u);
        MEMORY[0x245D6F740](v65, -1, -1);
      }

      return (*(v2 + 8))(v9, v1);
    }
  }

  else
  {
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v58 = __swift_project_value_buffer(v1, qword_27EE20D08);
    (*(v2 + 16))(v6, v58, v1);
    v59 = sub_2456CAF38();
    v60 = sub_2456CB1D8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_245686000, v59, v60, "Attempted to finalize liveness results without a classifier request set.", v61, 2u);
      MEMORY[0x245D6F740](v61, -1, -1);
    }

    return (*(v2 + 8))(v6, v1);
  }
}

id PADSWClassifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PADSWClassifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PADSWClassifier();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24569A8B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373656E6576696CLL && a2 == 0xED00006C6562614CLL;
  if (v4 || (sub_2456CB538() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5365727574736567 && a2 == 0xEF65636E65757165 || (sub_2456CB538() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D737365737361 && a2 == 0xEE0043414673746ELL || (sub_2456CB538() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D737365737361 && a2 == 0xEE0044525073746ELL || (sub_2456CB538() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D737365737361 && a2 == 0xED0000415473746ELL || (sub_2456CB538() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xED00004341467370 || (sub_2456CB538() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xEC00000044497370 || (sub_2456CB538() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x80000002456D0B00 == a2 || (sub_2456CB538() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E69727065636166 && a2 == 0xEC00000044497374 || (sub_2456CB538() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x656D737365737361 && a2 == 0xED0000434146746ELL || (sub_2456CB538() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656D737365737361 && a2 == 0xEC0000004154746ELL || (sub_2456CB538() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002456D0B20 == a2 || (sub_2456CB538() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002456D0B40 == a2 || (sub_2456CB538() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x656D737365737361 && a2 == 0xEC0000004449746ELL || (sub_2456CB538() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6F4C63634E78616DLL && a2 == 0xE900000000000077 || (sub_2456CB538() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x694863634E78616DLL && a2 == 0xEA00000000006867 || (sub_2456CB538() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x536465726F6E6769 && a2 == 0xEF73656863746974 || (sub_2456CB538() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6E49656369766564 && a2 == 0xEA00000000006F66 || (sub_2456CB538() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6C6562614C656761 && a2 == 0xE800000000000000 || (sub_2456CB538() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6C6562614C786573 && a2 == 0xE800000000000000 || (sub_2456CB538() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x656E6F746E696B73 && a2 == 0xED00006C6562614CLL || (sub_2456CB538() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x746963696E687465 && a2 == 0xEE006C6562614C79 || (sub_2456CB538() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x7269614865636166 && a2 == 0xED00006C6562614CLL || (sub_2456CB538() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x7261656764616568 && a2 == 0xED00006C6562614CLL || (sub_2456CB538() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x4C73657373616C67 && a2 == 0xEC0000006C656261)
  {

    return 24;
  }

  else
  {
    v6 = sub_2456CB538();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

unint64_t sub_24569B080()
{
  result = qword_27EE21068;
  if (!qword_27EE21068)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE21068);
  }

  return result;
}

double sub_24569B0F0(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_24569B10C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_24569B174(void *a1, char a2)
{
  v5 = sub_2456CAF58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_facResult + 8))
  {
    if (a2)
    {
      v9 = *(v2 + OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_facResult + 24);
    }

    else
    {
      v9 = 0;
    }

    v15 = a1;
    sub_2456B8A98(v15, v9);

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v5, qword_27EE20D08);
    (*(v6 + 16))(v8, v10, v5);
    v11 = sub_2456CAF38();
    v12 = sub_2456CB1C8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_245686000, v11, v12, "FAC not complete; unable to process selfie.", v13, 2u);
      MEMORY[0x245D6F740](v13, -1, -1);
    }

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_24569B370(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24569B3D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC10CoreIDVPAD15PADSWClassifier_delegate;
  swift_beginAccess();
  return sub_24569BF14(v3 + v4, a2, &qword_27EE213C0);
}

uint64_t sub_24569B508(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24569B550(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_24569B5E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24569B630(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 248) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PADSWClassifier.FrameProcessingOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for PADSWClassifier.FrameProcessingOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PADSWClassifierResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PADSWClassifierResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24569BD94()
{
  result = qword_27EE210B0;
  if (!qword_27EE210B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE210B0);
  }

  return result;
}

unint64_t sub_24569BDEC()
{
  result = qword_27EE210B8;
  if (!qword_27EE210B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE210B8);
  }

  return result;
}

unint64_t sub_24569BE44()
{
  result = qword_27EE210C0;
  if (!qword_27EE210C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE210C0);
  }

  return result;
}

uint64_t sub_24569BE98(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24569BEB0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24569BF14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24569BF7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_24569BFE0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24569C040()
{
  type metadata accessor for PADSWAuditDataRecorder();
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v1;
  v2 = OBJC_IVAR____TtC10CoreIDVPAD22PADSWAuditDataRecorder_directory;
  v3 = sub_2456CAE98();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  result = sub_2456AB8E0(0);
  if ((result & 1) == 0)
  {

    v0 = 0;
  }

  qword_27EE210E0 = v0;
  return result;
}

uint64_t PADSWAuditDataRecorder.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v1;
  v2 = OBJC_IVAR____TtC10CoreIDVPAD22PADSWAuditDataRecorder_directory;
  v3 = sub_2456CAE98();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  if ((sub_2456AB8E0(0) & 1) == 0)
  {

    return 0;
  }

  return v0;
}

uint64_t static PADSWAuditDataRecorder.shared.getter()
{
  if (qword_27EE20D28 != -1)
  {
    swift_once();
  }
}

uint64_t PADSWAuditDataRecorder.init()()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v1;
  v2 = OBJC_IVAR____TtC10CoreIDVPAD22PADSWAuditDataRecorder_directory;
  v3 = sub_2456CAE98();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  if ((sub_2456AB8E0(0) & 1) == 0)
  {

    return 0;
  }

  return v0;
}

uint64_t PADSWAuditDataRecorder.deinit()
{
  sub_2456A21CC();

  sub_24569BFE0(v0 + OBJC_IVAR____TtC10CoreIDVPAD22PADSWAuditDataRecorder_directory, &qword_27EE210F0);
  return v0;
}

uint64_t PADSWAuditDataRecorder.__deallocating_deinit()
{
  sub_2456A21CC();

  sub_24569BFE0(v0 + OBJC_IVAR____TtC10CoreIDVPAD22PADSWAuditDataRecorder_directory, &qword_27EE210F0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24569C344()
{
  v1 = v0;
  v103 = *MEMORY[0x277D85DE8];
  v97 = sub_2456CAF58();
  v99 = *(v97 - 8);
  v2 = MEMORY[0x28223BE20](v97);
  v94 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v90 - v5;
  MEMORY[0x28223BE20](v4);
  v95 = &v90 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE210F0);
  MEMORY[0x28223BE20](v8 - 8);
  v92 = &v90 - v9;
  v96 = sub_2456CAF28();
  v10 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2456CAE98();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v93 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v98 = &v90 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v90 - v19;
  swift_beginAccess();
  v21 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];

  *(v1 + 24) = v21;

  v22 = objc_opt_self();
  v23 = [v22 defaultManager];
  v24 = [v23 URLsForDirectory:13 inDomains:1];

  v25 = sub_2456CB0D8();
  if (*(v25 + 16))
  {
    v91 = v14;
    v6 = *(v14 + 16);
    (v6)(v20, v25 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);

    v101 = 0;
    v102 = 0xE000000000000000;
    sub_2456CB348();

    v101 = 0xD000000000000010;
    v102 = 0x80000002456D0C00;
    sub_2456CAF18();
    sub_2456CAF08();
    v27 = v26;
    v28 = v26;
    (*(v10 + 8))(v12, v96);
    v96 = v13;
    if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v27 > -9.22337204e18)
    {
      if (v27 < 9.22337204e18)
      {
        v29 = v6;
        v100 = v27;
        v30 = sub_2456CB518();
        MEMORY[0x245D6E590](v30);

        v31 = v98;
        sub_2456CAE58();

        v32 = [v22 defaultManager];
        v33 = sub_2456CAE48();
        v101 = 0;
        v34 = [v32 createDirectoryAtURL:v33 withIntermediateDirectories:1 attributes:0 error:&v101];

        v35 = v101;
        if (v34)
        {
          v90 = v20;
          v36 = v92;
          v37 = v96;
          (v29)(v92, v31, v96);
          v38 = v91;
          (*(v91 + 56))(v36, 0, 1, v37);
          v39 = OBJC_IVAR____TtC10CoreIDVPAD22PADSWAuditDataRecorder_directory;
          swift_beginAccess();
          v40 = v35;
          sub_2456A54AC(v36, v1 + v39);
          swift_endAccess();
          if (qword_27EE20D00 != -1)
          {
            swift_once();
          }

          v41 = v97;
          v42 = __swift_project_value_buffer(v97, qword_27EE20D08);
          v43 = v99;
          v44 = v95;
          (*(v99 + 16))(v95, v42, v41);
          v45 = v93;
          (v29)(v93, v31, v96);
          v46 = sub_2456CAF38();
          v47 = v31;
          v48 = sub_2456CB1D8();
          if (os_log_type_enabled(v46, v48))
          {
            v49 = v38;
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v52 = v96;
            v94 = v51;
            v101 = v51;
            *v50 = 136315138;
            sub_2456A551C(&qword_27EE211A0, MEMORY[0x277CC9260]);
            v53 = sub_2456CB518();
            v55 = v54;
            v56 = *(v49 + 8);
            v57 = v45;
            v58 = v52;
            v56(v57, v52);
            v59 = sub_2456A3F34(v53, v55, &v101);

            *(v50 + 4) = v59;
            _os_log_impl(&dword_245686000, v46, v48, "Will persist Audit Capture Data under: %s", v50, 0xCu);
            v60 = v94;
            __swift_destroy_boxed_opaque_existential_0(v94);
            MEMORY[0x245D6F740](v60, -1, -1);
            MEMORY[0x245D6F740](v50, -1, -1);

            (*(v99 + 8))(v95, v41);
            v56(v98, v58);
            return (v56)(v90, v58);
          }

          else
          {

            v86 = *(v38 + 8);
            v87 = v96;
            v86(v45, v96);
            (*(v43 + 8))(v44, v41);
            v86(v47, v87);
            return (v86)(v90, v87);
          }
        }

        else
        {
          v69 = v101;
          v70 = sub_2456CAE08();

          swift_willThrow();
          if (qword_27EE20D00 != -1)
          {
            swift_once();
          }

          v71 = v97;
          v72 = __swift_project_value_buffer(v97, qword_27EE20D08);
          v73 = v99;
          v74 = v94;
          (*(v99 + 16))(v94, v72, v71);
          v75 = v70;
          v76 = sub_2456CAF38();
          v77 = sub_2456CB1D8();

          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            v80 = v96;
            v90 = v20;
            v81 = v79;
            v101 = v79;
            *v78 = 136315138;
            swift_getErrorValue();
            v82 = sub_2456CB578();
            v84 = sub_2456A3F34(v82, v83, &v101);

            *(v78 + 4) = v84;
            _os_log_impl(&dword_245686000, v76, v77, "Could not create Audit Data directory: %s", v78, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v81);
            MEMORY[0x245D6F740](v81, -1, -1);
            MEMORY[0x245D6F740](v78, -1, -1);

            (*(v73 + 8))(v94, v71);
            v85 = *(v91 + 8);
            v85(v98, v80);
            return (v85)(v90, v80);
          }

          else
          {

            (*(v73 + 8))(v74, v71);
            v88 = *(v91 + 8);
            v89 = v96;
            v88(v98, v96);
            return (v88)(v20, v89);
          }
        }
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (qword_27EE20D00 != -1)
  {
LABEL_23:
    swift_once();
  }

  v62 = v97;
  v63 = __swift_project_value_buffer(v97, qword_27EE20D08);
  v64 = v99;
  v65 = v6;
  (*(v99 + 16))(v6, v63, v62);
  v66 = sub_2456CAF38();
  v67 = sub_2456CB1D8();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_245686000, v66, v67, "Could not derive base URL for Audit Data directory", v68, 2u);
    MEMORY[0x245D6F740](v68, -1, -1);
  }

  return (*(v64 + 8))(v65, v62);
}

uint64_t sub_24569CE7C(__int128 *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v150 = a3;
  v145 = a2;
  v180 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE210F8);
  MEMORY[0x28223BE20](v6 - 8);
  v155 = v140 - v7;
  v8 = sub_2456CAF58();
  v160 = *(v8 - 8);
  v161 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v141 = v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v149 = v140 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v142 = v140 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v153 = v140 - v16;
  MEMORY[0x28223BE20](v15);
  v147 = v140 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE210F0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v140 - v19;
  v21 = sub_2456CAE98();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v154 = v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v152 = v140 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v159 = v140 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v144 = v140 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v148 = v140 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v143 = v140 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = v140 - v36;
  v151 = v38;
  MEMORY[0x28223BE20](v35);
  v40 = v140 - v39;
  v41 = a1[13];
  v176 = a1[12];
  v177 = v41;
  v178 = a1[14];
  v179 = *(a1 + 30);
  v42 = a1[9];
  v172 = a1[8];
  v173 = v42;
  v43 = a1[11];
  v174 = a1[10];
  v175 = v43;
  v44 = a1[5];
  v168 = a1[4];
  v169 = v44;
  v45 = a1[7];
  v170 = a1[6];
  v171 = v45;
  v46 = a1[1];
  v164 = *a1;
  v165 = v46;
  v47 = a1[3];
  v166 = a1[2];
  v167 = v47;
  v48 = OBJC_IVAR____TtC10CoreIDVPAD22PADSWAuditDataRecorder_directory;
  swift_beginAccess();
  sub_24569BF14(v4 + v48, v20, &qword_27EE210F0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_24569BFE0(v20, &qword_27EE210F0);
  }

  v156 = v22;
  v157 = v21;
  v140[0] = *(v22 + 32);
  v140[1] = v22 + 32;
  (v140[0])(v40, v20, v21);
  sub_2456CAE58();
  v158 = v40;
  v146 = v37;
  if (v150 >> 60 != 15)
  {
    sub_2456CAEE8();
  }

  sub_2456CADE8();
  swift_allocObject();
  sub_2456CADD8();
  v162[12] = v176;
  v162[13] = v177;
  v162[14] = v178;
  v163 = v179;
  v162[8] = v172;
  v162[9] = v173;
  v162[10] = v174;
  v162[11] = v175;
  v162[4] = v168;
  v162[5] = v169;
  v162[6] = v170;
  v162[7] = v171;
  v162[0] = v164;
  v162[1] = v165;
  v162[2] = v166;
  v162[3] = v167;
  sub_2456A4468();
  v50 = sub_2456CADC8();
  v52 = v51;

  v53 = v143;
  sub_2456CAE58();
  sub_2456CAEE8();
  (*(v156 + 8))(v53, v157);
  sub_2456A4960(v50, v52);
  type metadata accessor for PADSWClassifier();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v55 = [objc_opt_self() bundleForClass_];
  v56 = sub_2456CAFD8();
  v57 = sub_2456CAFD8();
  v58 = [v55 URLForResource:v56 withExtension:v57];

  if (!v58)
  {
    goto LABEL_10;
  }

  v59 = v148;
  sub_2456CAE68();

  v60 = objc_opt_self();
  v61 = [v60 defaultManager];
  sub_2456CAE78();
  v62 = sub_2456CAFD8();

  v63 = [v61 fileExistsAtPath_];

  if (!v63)
  {
    (*(v156 + 8))(v59, v157);
LABEL_10:
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v74 = v161;
    v75 = __swift_project_value_buffer(v161, qword_27EE20D08);
    v73 = v160;
    v76 = v147;
    (*(v160 + 16))(v147, v75, v74);
    v77 = sub_2456CAF38();
    v78 = sub_2456CB1C8();
    v79 = os_log_type_enabled(v77, v78);
    v72 = v158;
    if (v79)
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_245686000, v77, v78, "Could not find original SIML params to save to Audit Data directory", v80, 2u);
      MEMORY[0x245D6F740](v80, -1, -1);
    }

    (*(v73 + 8))(v76, v161);
    goto LABEL_15;
  }

  v64 = v144;
  sub_2456CAE58();
  v65 = [v60 defaultManager];
  v66 = sub_2456CAE48();
  v67 = sub_2456CAE48();
  *&v162[0] = 0;
  v68 = [v65 copyItemAtURL:v66 toURL:v67 error:v162];

  if (v68)
  {
    v69 = *(v156 + 8);
    v70 = *&v162[0];
    v71 = v157;
    v69(v64, v157);
    v69(v59, v71);
    v72 = v158;
    v73 = v160;
  }

  else
  {
    v122 = *&v162[0];
    v123 = sub_2456CAE08();

    swift_willThrow();
    v73 = v160;
    if (qword_27EE20D00 != -1)
    {
      swift_once();
    }

    v124 = v161;
    v125 = __swift_project_value_buffer(v161, qword_27EE20D08);
    v126 = v141;
    (*(v73 + 16))(v141, v125, v124);
    v127 = v123;
    v128 = sub_2456CAF38();
    v129 = sub_2456CB1D8();

    v130 = os_log_type_enabled(v128, v129);
    v72 = v158;
    if (v130)
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      *&v162[0] = v132;
      *v131 = 136315138;
      swift_getErrorValue();
      v133 = sub_2456CB578();
      v135 = v72;
      v136 = sub_2456A3F34(v133, v134, v162);

      *(v131 + 4) = v136;
      v72 = v135;
      _os_log_impl(&dword_245686000, v128, v129, "Could not persist parameters to Audit Data directory: %s", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v132);
      v137 = v132;
      v73 = v160;
      MEMORY[0x245D6F740](v137, -1, -1);
      MEMORY[0x245D6F740](v131, -1, -1);

      (*(v73 + 8))(v141, v161);
    }

    else
    {

      (*(v73 + 8))(v126, v161);
    }

    v138 = v157;
    v139 = *(v156 + 8);
    v139(v144, v157);
    v139(v148, v138);
  }

LABEL_15:
  sub_2456CAE58();
  v81 = [objc_opt_self() defaultManager];
  sub_2456CAE78();
  v82 = sub_2456CAFD8();

  v83 = [v81 fileExistsAtPath_];

  if (v83)
  {
    v149 = sub_2456CB168();
    v84 = *(v149 - 1);
    v148 = *(v84 + 56);
    v150 = v84 + 56;
    (v148)(v155, 1, 1, v149);
    v85 = v157;
    v87 = v156 + 16;
    v86 = *(v156 + 16);
    v147 = v86;
    v88 = v152;
    (v86)(v152, v159, v157);
    (v86)(v154, v72, v85);
    v89 = *(v87 + 64);
    v90 = (v151 + v89 + ((v89 + 280) & ~v89)) & ~v89;
    v144 = v90;
    v145 = (v89 + 280) & ~v89;
    v91 = swift_allocObject();
    *(v91 + 16) = 0;
    *(v91 + 24) = 0;
    v92 = v177;
    *(v91 + 224) = v176;
    *(v91 + 240) = v92;
    *(v91 + 256) = v178;
    *(v91 + 272) = v179;
    v93 = v173;
    *(v91 + 160) = v172;
    *(v91 + 176) = v93;
    v94 = v175;
    *(v91 + 192) = v174;
    *(v91 + 208) = v94;
    v95 = v169;
    *(v91 + 96) = v168;
    *(v91 + 112) = v95;
    v96 = v171;
    *(v91 + 128) = v170;
    *(v91 + 144) = v96;
    v97 = v165;
    *(v91 + 32) = v164;
    *(v91 + 48) = v97;
    v98 = v167;
    *(v91 + 64) = v166;
    *(v91 + 80) = v98;
    v99 = v140[0];
    (v140[0])(v91 + ((v89 + 280) & ~v89), v88, v85);
    v100 = v91 + v90;
    v101 = v154;
    v99(v100, v154, v85);
    sub_245697AC4(&v164, v162);
    v102 = v155;
    sub_24569EFFC(0, 0, v155, &unk_2456CDDC8, v91);

    (v148)(v102, 1, 1, v149);
    v103 = v152;
    v104 = v147;
    (v147)(v152, v158, v85);
    (v104)(v101, v159, v85);
    v73 = v160;
    v105 = v144;
    v72 = v158;
    v106 = swift_allocObject();
    *(v106 + 16) = 0;
    *(v106 + 24) = 0;
    v107 = v177;
    *(v106 + 224) = v176;
    *(v106 + 240) = v107;
    *(v106 + 256) = v178;
    *(v106 + 272) = v179;
    v108 = v173;
    *(v106 + 160) = v172;
    *(v106 + 176) = v108;
    v109 = v175;
    *(v106 + 192) = v174;
    *(v106 + 208) = v109;
    v110 = v169;
    *(v106 + 96) = v168;
    *(v106 + 112) = v110;
    v111 = v171;
    *(v106 + 128) = v170;
    *(v106 + 144) = v111;
    v112 = v165;
    *(v106 + 32) = v164;
    *(v106 + 48) = v112;
    v113 = v167;
    *(v106 + 64) = v166;
    *(v106 + 80) = v113;
    v99(v106 + v145, v103, v85);
    v99(&v105[v106], v154, v85);
    sub_245697AC4(&v164, v162);
    sub_2456A0C78(0, 0, v155, &unk_2456CDDD8, v106);
  }

  if (qword_27EE20D00 != -1)
  {
    swift_once();
  }

  v114 = v161;
  v115 = __swift_project_value_buffer(v161, qword_27EE20D08);
  v116 = v153;
  (*(v73 + 16))(v153, v115, v114);
  v117 = sub_2456CAF38();
  v118 = sub_2456CB1D8();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    *v119 = 0;
    _os_log_impl(&dword_245686000, v117, v118, "Did persist Audit capture data", v119, 2u);
    MEMORY[0x245D6F740](v119, -1, -1);
  }

  (*(v73 + 8))(v116, v161);
  v120 = v157;
  v121 = *(v156 + 8);
  v121(v159, v157);
  v121(v146, v120);
  return (v121)(v72, v120);
}

uint64_t sub_24569E154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = sub_2456CAF58();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v8 = sub_2456CAE98();
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24569E2D0, 0, 0);
}

uint64_t sub_24569E2D0()
{
  v18 = v0;
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(v0[12] + 48);
  v0[25] = v1;
  v2 = *(v1 + 16);
  v0[26] = v2;
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];
    sub_2456C5BB8(0, v2, 0);
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      CMTimeMake(&v16, v4, 1000000000);
      value = v16.value;
      v6 = *&v16.timescale;
      epoch = v16.epoch;
      v9 = *(v15 + 16);
      v8 = *(v15 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2456C5BB8((v8 > 1), v9 + 1, 1);
      }

      v0[30] = v15;
      *(v15 + 16) = v9 + 1;
      v10 = (v15 + 24 * v9);
      v10[4] = value;
      v10[5] = v6;
      v10[6] = epoch;
      --v2;
    }

    while (v2);
    (*(v0[21] + 16))(v0[24], v0[13], v0[20]);
    type metadata accessor for PADAVAssetReader();
    swift_allocObject();
    v11 = swift_task_alloc();
    v0[27] = v11;
    *v11 = v0;
    v11[1] = sub_24569E544;
    v12 = v0[24];

    return sub_2456AEAC0(v12);
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_24569E544(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {

    v4 = sub_24569EF20;
  }

  else
  {
    v4 = sub_24569E694;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24569E694()
{
  v55 = v0;
  v54[2] = *MEMORY[0x277D85DE8];
  v1 = v0[29];
  v2 = sub_2456B04B8(v0[30]);

  if (v1)
  {

    v3 = v0[1];
    goto LABEL_21;
  }

  sub_2456CAE58();
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_2456CAE48();
  v0[8] = 0;
  v6 = [v4 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:v0 + 8];

  v7 = v0[8];
  if ((v6 & 1) == 0)
  {
    v25 = v7;

    v8 = sub_2456CAE08();

    swift_willThrow();
    if (qword_27EE20D00 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v8 = *(v2 + 2);
  v9 = v7;
  v52 = v8;
  if (v8)
  {
    v10 = 0;
    v11 = v0[16];
    v49 = (v11 + 8);
    v50 = (v11 + 16);
    v47 = (v0[21] + 8);
    v12 = (v2 + 40);
    v46 = v2;
    while (v10 < *(v2 + 2))
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      if (v10 >= v0[26])
      {
        sub_2456A5458(*(v12 - 1), *v12);
        if (qword_27EE20D00 != -1)
        {
          swift_once();
        }

        v16 = v0[19];
        v17 = v0[15];
        v18 = __swift_project_value_buffer(v17, qword_27EE20D08);
        (*v50)(v16, v18, v17);
        v19 = sub_2456CAF38();
        v20 = sub_2456CB1D8();
        v21 = os_log_type_enabled(v19, v20);
        v8 = v0[19];
        v22 = v0[15];
        if (v21)
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_245686000, v19, v20, "Unable to save ID matching frame to Data Auditing directory: no corresponding timestamp", v23, 2u);
          v24 = v23;
          v2 = v46;
          MEMORY[0x245D6F740](v24, -1, -1);
        }

        sub_2456A4960(v13, v14);

        (*v49)(v8, v22);
      }

      else
      {
        v8 = v0[23];
        v0[10] = *(v0[25] + 8 * v10 + 32);
        sub_2456A5458(v13, v14);
        v54[0] = sub_2456CB518();
        v54[1] = v15;
        MEMORY[0x245D6E590](0x6765706A2ELL, 0xE500000000000000);
        sub_2456CAE58();

        sub_2456CAEE8();
        (*v47)(v0[22], v0[20]);
        sub_2456A4960(v13, v14);
      }

      ++v10;
      v12 += 2;
      if (v52 == v10)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_25:
    swift_once();
LABEL_16:
    v26 = v0[18];
    v27 = v0[15];
    v28 = v0[16];
    v29 = __swift_project_value_buffer(v27, qword_27EE20D08);
    (*(v28 + 16))(v26, v29, v27);
    v30 = v8;
    v31 = sub_2456CAF38();
    v32 = sub_2456CB1D8();

    v33 = os_log_type_enabled(v31, v32);
    v34 = v0[23];
    v35 = v0[20];
    v36 = v0[21];
    v37 = v0[18];
    v38 = v0[15];
    v39 = v0[16];
    if (v33)
    {
      v53 = v0[20];
      v40 = swift_slowAlloc();
      v51 = v37;
      v41 = swift_slowAlloc();
      v54[0] = v41;
      *v40 = 136315138;
      swift_getErrorValue();
      v42 = sub_2456CB578();
      v48 = v38;
      v44 = sub_2456A3F34(v42, v43, v54);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_245686000, v31, v32, "Unable to save ID matching frames for Data Auditing: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x245D6F740](v41, -1, -1);
      MEMORY[0x245D6F740](v40, -1, -1);

      (*(v39 + 8))(v51, v48);
      (*(v36 + 8))(v34, v53);
    }

    else
    {

      (*(v39 + 8))(v37, v38);
      (*(v36 + 8))(v34, v35);
    }

    goto LABEL_20;
  }

LABEL_18:
  (*(v0[21] + 8))(v0[23], v0[20]);

LABEL_20:

  v3 = v0[1];
LABEL_21:

  return v3();
}

uint64_t sub_24569EF20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24569EFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE210F8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24569BF14(a3, v22 - v9, &qword_27EE210F8);
  v11 = sub_2456CB168();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24569BFE0(v10, &qword_27EE210F8);
  }

  else
  {
    sub_2456CB158();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2456CB138();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2456CB048() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_24569BFE0(a3, &qword_27EE210F8);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24569BFE0(a3, &qword_27EE210F8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24569F2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = sub_2456CAF58();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v8 = sub_2456CAE98();
  v6[31] = v8;
  v6[32] = *(v8 - 8);
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24569F430, 0, 0);
}

uint64_t sub_24569F430()
{
  v41 = v0;
  v40[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0[22] + 40);
  v0[36] = v1;
  v2 = *(v1 + 16);
  v0[37] = v2;
  if (v2)
  {
    v3 = 0;
    v4 = 0x278E83000uLL;
    while (v2 != v3)
    {
      if (v3 >= v2)
      {
        __break(1u);
LABEL_21:
        __break(1u);
      }

      if (__OFADD__(v3, 1))
      {
        goto LABEL_21;
      }

      v5 = v0[36];
      v0[38] = v3 + 1;
      v6 = *(v5 + 8 * v3 + 32);
      v0[39] = v6;
      ++v3;
      if (*(v6 + 16))
      {
        v0[11] = 792936774;
        v0[12] = 0xE400000000000000;
        v0[15] = v3 - 1;

        v7 = sub_2456CB518();
        MEMORY[0x245D6E590](v7);

        sub_2456CAE58();

        v8 = [objc_opt_self() *(v4 + 2536)];
        v9 = sub_2456CAE48();
        v0[16] = 0;
        v10 = [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:v0 + 16];

        v11 = v0[16];
        if (v10)
        {
          (*(v0[32] + 16))(v0[34], v0[24], v0[31]);
          type metadata accessor for PADAVAssetReader();
          swift_allocObject();
          v34 = v11;
          v35 = swift_task_alloc();
          v0[40] = v35;
          *v35 = v0;
          v35[1] = sub_24569F95C;
          v36 = v0[34];

          return sub_2456AEAC0(v36);
        }

        v12 = v11;

        v13 = sub_2456CAE08();

        swift_willThrow();
        if (qword_27EE20D00 != -1)
        {
          swift_once();
        }

        v14 = v0[28];
        v15 = v0[25];
        v16 = v0[26];
        v17 = __swift_project_value_buffer(v15, qword_27EE20D08);
        (*(v16 + 16))(v14, v17, v15);
        v18 = v13;
        v19 = sub_2456CAF38();
        v20 = sub_2456CB1D8();

        v21 = os_log_type_enabled(v19, v20);
        v22 = v0[35];
        v23 = v0[31];
        v24 = v0[32];
        v25 = v0[28];
        v26 = v0[26];
        v39 = v0[25];
        if (v21)
        {
          v37 = v0[28];
          v27 = swift_slowAlloc();
          v38 = v23;
          v28 = swift_slowAlloc();
          v40[0] = v28;
          *v27 = 136315138;
          swift_getErrorValue();
          v29 = sub_2456CB578();
          v31 = sub_2456A3F34(v29, v30, v40);

          *(v27 + 4) = v31;
          _os_log_impl(&dword_245686000, v19, v20, "Could not create gesture FAC Data Auditing directory: %s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
          MEMORY[0x245D6F740](v28, -1, -1);
          MEMORY[0x245D6F740](v27, -1, -1);

          (*(v26 + 8))(v37, v39);
          (*(v24 + 8))(v22, v38);
        }

        else
        {

          (*(v26 + 8))(v25, v39);
          (*(v24 + 8))(v22, v23);
        }

        v2 = v0[37];
        v3 = v0[38];
        v4 = 0x278E83000;
      }
    }
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_24569F95C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {

    v4 = sub_2456A0744;
  }

  else
  {
    v4 = sub_24569FAAC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24569FAAC()
{
  v104 = v0;
  v103[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 312);
  v2 = *(v1 + 16);
  if (v2)
  {
    *(v0 + 144) = MEMORY[0x277D84F90];
    sub_2456C5BB8(0, v2, 0);
    v3 = *(v0 + 144);
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      CMTimeMake((v0 + 344), v5, 1000000000);
      v6 = *(v0 + 344);
      v7 = *(v0 + 352);
      v8 = *(v0 + 360);
      *(v0 + 144) = v3;
      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2456C5BB8((v9 > 1), v10 + 1, 1);
        v3 = *(v0 + 144);
      }

      *(v3 + 16) = v10 + 1;
      v11 = (v3 + 24 * v10);
      v11[4] = v6;
      v11[5] = v7;
      v11[6] = v8;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  v12 = *(v0 + 336);
  v13 = sub_2456B04B8(v3);
  v14 = v12;
  v15 = 0x27EE20000uLL;
  if (v12)
  {

    if (qword_27EE20D00 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_10;
  }

  v92 = v13;
  v96 = *(v3 + 16);
  if (!v96)
  {
LABEL_23:
    v55 = *(v0 + 280);
    v56 = *(v0 + 248);
    v57 = *(v0 + 256);

    (*(v57 + 8))(v55, v56);
    goto LABEL_26;
  }

  v35 = 0;
  v94 = *(v13 + 2);
  v14 = (v3 + 32);
  v36 = (v13 + 40);
  while (1)
  {
    v101 = v36;
    v44 = *v14;
    v14 += 3;
    v43 = v44;
    *(v0 + 160) = v44;
    *(v0 + 104) = sub_2456CB518();
    *(v0 + 112) = v45;
    MEMORY[0x245D6E590](0x6765706A2ELL, 0xE500000000000000);
    sub_2456CAE58();

    v98 = v14;
    if (v35 >= v94)
    {
      if (qword_27EE20D00 != -1)
      {
        swift_once();
      }

      v48 = *(v0 + 232);
      v49 = *(v0 + 200);
      v50 = *(v0 + 208);
      v51 = __swift_project_value_buffer(v49, qword_27EE20D08);
      (*(v50 + 16))(v48, v51, v49);
      v52 = sub_2456CAF38();
      v53 = sub_2456CB1D8();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 134217984;
        *(v54 + 4) = v43;
        _os_log_impl(&dword_245686000, v52, v53, "Unable to write FAC frame to Data Auditing directory: no frame at timestamp %lld", v54, 0xCu);
        MEMORY[0x245D6F740](v54, -1, -1);
      }

      v38 = *(v0 + 256);
      v37 = *(v0 + 264);
      v39 = *(v0 + 248);
      v40 = *(v0 + 232);
      v41 = *(v0 + 200);
      v42 = *(v0 + 208);

      (*(v42 + 8))(v40, v41);
      (*(v38 + 8))(v37, v39);
      v15 = 0x27EE20000uLL;
      v36 = v101;
      goto LABEL_15;
    }

    if (v35 >= *(v92 + 2))
    {
      break;
    }

    v47 = *(v36 - 1);
    v46 = *v36;
    sub_2456A5458(v47, *v36);
    sub_2456CAEE8();
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    sub_2456A4960(v47, v46);
LABEL_15:
    ++v35;
    v36 += 2;
    v14 = v98;
    if (v96 == v35)
    {
      goto LABEL_23;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  swift_once();
LABEL_10:
  v16 = *(v0 + 240);
  v17 = *(v0 + 200);
  v18 = *(v0 + 208);
  v19 = __swift_project_value_buffer(v17, qword_27EE20D08);
  (*(v18 + 16))(v16, v19, v17);
  v20 = v14;
  v21 = sub_2456CAF38();
  v22 = sub_2456CB1D8();

  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 280);
  v25 = *(v0 + 248);
  v26 = *(v0 + 240);
  v27 = *(v0 + 200);
  v28 = (*(v0 + 256) + 8);
  v29 = (*(v0 + 208) + 8);
  if (v23)
  {
    v100 = *(v0 + 248);
    v30 = swift_slowAlloc();
    v97 = v26;
    v31 = swift_slowAlloc();
    v103[0] = v31;
    *v30 = 136315138;
    swift_getErrorValue();
    v32 = sub_2456CB578();
    v93 = v27;
    v34 = sub_2456A3F34(v32, v33, v103);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_245686000, v21, v22, "Could not read frames for gesture FAC Data auditing: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x245D6F740](v31, -1, -1);
    MEMORY[0x245D6F740](v30, -1, -1);

    (*v29)(v97, v93);
    (*v28)(v24, v100);
  }

  else
  {

    (*v29)(v26, v27);
    (*v28)(v24, v25);
  }

  v15 = 0x27EE20000uLL;
LABEL_26:
  while (2)
  {
    v59 = *(v0 + 296);
    v58 = *(v0 + 304);
    do
    {
      if (v59 == v58)
      {

        v87 = *(v0 + 8);

        return v87();
      }

      if (v58 >= v59)
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (__OFADD__(v58, 1))
      {
        goto LABEL_44;
      }

      v60 = *(v0 + 288);
      *(v0 + 304) = v58 + 1;
      v61 = *(v60 + 8 * v58 + 32);
      *(v0 + 312) = v61;
      ++v58;
    }

    while (!*(v61 + 16));
    *(v0 + 88) = 792936774;
    *(v0 + 96) = 0xE400000000000000;
    *(v0 + 120) = v58 - 1;

    v62 = sub_2456CB518();
    MEMORY[0x245D6E590](v62);

    sub_2456CAE58();

    v63 = [objc_opt_self() defaultManager];
    v64 = sub_2456CAE48();
    *(v0 + 128) = 0;
    v65 = [v63 createDirectoryAtURL:v64 withIntermediateDirectories:1 attributes:0 error:v0 + 128];

    v66 = *(v0 + 128);
    if (!v65)
    {
      v67 = v66;

      v68 = sub_2456CAE08();

      swift_willThrow();
      if (*(v15 + 3328) != -1)
      {
        swift_once();
      }

      v69 = *(v0 + 224);
      v70 = *(v0 + 200);
      v71 = *(v0 + 208);
      v72 = __swift_project_value_buffer(v70, qword_27EE20D08);
      (*(v71 + 16))(v69, v72, v70);
      v73 = v68;
      v74 = sub_2456CAF38();
      v14 = sub_2456CB1D8();

      v75 = os_log_type_enabled(v74, v14);
      v76 = *(v0 + 280);
      v77 = *(v0 + 248);
      v78 = *(v0 + 256);
      v79 = *(v0 + 224);
      v80 = *(v0 + 208);
      v102 = *(v0 + 200);
      if (v75)
      {
        v81 = swift_slowAlloc();
        v99 = v77;
        v82 = swift_slowAlloc();
        v103[0] = v82;
        *v81 = 136315138;
        swift_getErrorValue();
        v83 = sub_2456CB578();
        v95 = v79;
        v85 = sub_2456A3F34(v83, v84, v103);

        *(v81 + 4) = v85;
        _os_log_impl(&dword_245686000, v74, v14, "Could not create gesture FAC Data Auditing directory: %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v82);
        MEMORY[0x245D6F740](v82, -1, -1);
        v86 = v81;
        v15 = 0x27EE20000;
        MEMORY[0x245D6F740](v86, -1, -1);

        (*(v80 + 8))(v95, v102);
        (*(v78 + 8))(v76, v99);
      }

      else
      {

        (*(v80 + 8))(v79, v102);
        (*(v78 + 8))(v76, v77);
      }

      continue;
    }

    break;
  }

  (*(*(v0 + 256) + 16))(*(v0 + 272), *(v0 + 192), *(v0 + 248));
  type metadata accessor for PADAVAssetReader();
  swift_allocObject();
  v89 = v66;
  v90 = swift_task_alloc();
  *(v0 + 320) = v90;
  *v90 = v0;
  v90[1] = sub_24569F95C;
  v91 = *(v0 + 272);

  return sub_2456AEAC0(v91);
}

uint64_t sub_2456A0744()
{
  v49 = v0;
  v48[1] = *MEMORY[0x277D85DE8];
  v1 = v0[42];
  v2 = qword_27EE20D08;
  v3 = 0x27EE20000uLL;
  v4 = &dword_245686000;
  v5 = "Could not create gesture FAC Data Auditing directory: %s";
  while (2)
  {
    if (*(v3 + 3328) != -1)
    {
      swift_once();
    }

    v6 = v0[28];
    v7 = v0[25];
    v8 = v0[26];
    v9 = __swift_project_value_buffer(v7, v2);
    (*(v8 + 16))(v6, v9, v7);
    v10 = v1;
    v11 = sub_2456CAF38();
    LOBYTE(v7) = sub_2456CB1D8();

    v44 = v7;
    log = v11;
    v12 = os_log_type_enabled(v11, v7);
    v13 = v0[35];
    v15 = v0[31];
    v14 = v0[32];
    v16 = v0[26];
    v45 = v0[25];
    v46 = v0[28];
    if (v12)
    {
      v43 = v0[35];
      v17 = swift_slowAlloc();
      v42 = v15;
      v18 = swift_slowAlloc();
      v48[0] = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_2456CB578();
      v41 = v1;
      v21 = v5;
      v22 = v4;
      v23 = v3;
      v24 = v2;
      v25 = sub_2456A3F34(v19, v20, v48);

      *(v17 + 4) = v25;
      v2 = v24;
      v3 = v23;
      v4 = v22;
      v5 = v21;
      _os_log_impl(v4, log, v44, v21, v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x245D6F740](v18, -1, -1);
      MEMORY[0x245D6F740](v17, -1, -1);

      (*(v16 + 8))(v46, v45);
      (*(v14 + 8))(v43, v42);
    }

    else
    {

      (*(v16 + 8))(v46, v45);
      (*(v14 + 8))(v13, v15);
    }

    v27 = v0[37];
    v26 = v0[38];
    do
    {
      if (v27 == v26)
      {

        v36 = v0[1];

        return v36();
      }

      if (v26 >= v27)
      {
        __break(1u);
LABEL_21:
        __break(1u);
      }

      if (__OFADD__(v26, 1))
      {
        goto LABEL_21;
      }

      v28 = v0[36];
      v0[38] = v26 + 1;
      v29 = *(v28 + 8 * v26 + 32);
      v0[39] = v29;
      ++v26;
    }

    while (!*(v29 + 16));
    v0[11] = 792936774;
    v0[12] = 0xE400000000000000;
    v0[15] = v26 - 1;

    v30 = sub_2456CB518();
    MEMORY[0x245D6E590](v30);

    sub_2456CAE58();

    v31 = [objc_opt_self() defaultManager];
    v32 = sub_2456CAE48();
    v0[16] = 0;
    v33 = [v31 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:v0 + 16];

    v34 = v0[16];
    if (!v33)
    {
      v35 = v34;

      v1 = sub_2456CAE08();

      swift_willThrow();
      continue;
    }

    break;
  }

  (*(v0[32] + 16))(v0[34], v0[24], v0[31]);
  type metadata accessor for PADAVAssetReader();
  swift_allocObject();
  v38 = v34;
  v39 = swift_task_alloc();
  v0[40] = v39;
  *v39 = v0;
  v39[1] = sub_24569F95C;
  v40 = v0[34];

  return sub_2456AEAC0(v40);
}

uint64_t sub_2456A0C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE210F8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24569BF14(a3, v25 - v10, &qword_27EE210F8);
  v12 = sub_2456CB168();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24569BFE0(v11, &qword_27EE210F8);
  }

  else
  {
    sub_2456CB158();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2456CB138();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2456CB048() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_24569BFE0(a3, &qword_27EE210F8);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24569BFE0(a3, &qword_27EE210F8);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}