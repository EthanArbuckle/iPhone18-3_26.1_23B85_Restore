void sub_247414FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::locale a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::find<std::string>(void *a1, uint64_t a2)
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

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
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
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::piecewise_construct_t const&<>>(void *a1, uint64_t a2)
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

void sub_2474157CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2474157E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
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

uint64_t **std::__hash_table<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>,std::__unordered_map_hasher<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t a2)
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

void sub_247415D90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_247415DA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void apple3dgs::StartCapture(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MTLCreateSystemDefaultDevice();
  v4 = [MEMORY[0x277CD6CD8] sharedCaptureManager];
  v5 = [v4 newCaptureScopeWithDevice:v3];
  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = &apple3dgs::scope;
  }

  objc_storeStrong(v6, v5);
  v7 = objc_opt_new();
  [v7 setCaptureObject:v5];
  v12 = 0;
  [v4 startCaptureWithDescriptor:v7 error:&v12];
  v8 = v12;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 localizedDescription];
    v11 = [v9 description];
    NSLog(&cfstr_FailedToCaptur.isa, v10, v11);
  }

  [v5 beginScope];

  objc_autoreleasePoolPop(v2);
}

void apple3dgs::StopCapture(void *a1)
{
  v5 = a1;
  v1 = objc_autoreleasePoolPush();
  v2 = apple3dgs::scope;
  if (v5)
  {
    v2 = v5;
  }

  v3 = v2;
  v4 = v3;
  if (v3)
  {
    [v3 endScope];
  }

  objc_autoreleasePoolPop(v1);
}

float apple3dgs::RowMajorToColMajor(_DWORD **a1, uint64_t a2)
{
  *a2 = **a1;
  *(a2 + 16) = (*a1)[1];
  *(a2 + 32) = (*a1)[2];
  *(a2 + 4) = (*a1)[3];
  *(a2 + 20) = (*a1)[4];
  *(a2 + 36) = (*a1)[5];
  *(a2 + 8) = (*a1)[6];
  *(a2 + 24) = (*a1)[7];
  result = *(*a1 + 8);
  *(a2 + 40) = result;
  return result;
}

{
  *a2 = **a1;
  *(a2 + 16) = (*a1)[1];
  *(a2 + 32) = (*a1)[2];
  *(a2 + 48) = (*a1)[3];
  *(a2 + 4) = (*a1)[4];
  *(a2 + 20) = (*a1)[5];
  *(a2 + 36) = (*a1)[6];
  *(a2 + 52) = (*a1)[7];
  *(a2 + 8) = (*a1)[8];
  *(a2 + 24) = (*a1)[9];
  *(a2 + 40) = (*a1)[10];
  *(a2 + 56) = (*a1)[11];
  *(a2 + 12) = (*a1)[12];
  *(a2 + 28) = (*a1)[13];
  *(a2 + 44) = (*a1)[14];
  result = *(*a1 + 15);
  *(a2 + 60) = result;
  return result;
}

float32x4_t *apple3dgs::PowerIteration@<X0>(float32x4_t *this@<X0>, const simd::float3x3 *a2@<X1>, float32x4_t *a3@<X8>, double a4@<D4>)
{
  if (a2)
  {
    __asm { FMOV            V3.4S, #1.0 }

    do
    {
      v9 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*this, _Q3.f32[0]), this[1], *_Q3.f32, 1), this[2], _Q3, 2);
      v10 = v9.f32[1];
      LODWORD(a4) = v9.i32[2];
      if (v9.f32[0] >= v9.f32[1])
      {
        v10 = v9.f32[0];
      }

      if (v10 >= v9.f32[2])
      {
        *&a4 = v10;
      }

      _Q3 = vdivq_f32(v9, vdupq_lane_s32(*&a4, 0));
      LODWORD(a2) = a2 - 1;
    }

    while (a2);
    a3->i32[0] = LODWORD(a4);
    a3[1] = _Q3;
  }

  else
  {
    __asm { FMOV            V3.4S, #1.0 }

    a3->i32[0] = 0;
    a3[1] = _Q3;
  }

  return this;
}

double apple3dgs::ComputeEigen(float32x4_t *this, const simd::float3x3 *a2, double a3, double a4, double a5, float32x4_t _Q3, double a7)
{
  v7 = *this;
  v8 = this[1];
  v9 = this[2];
  __asm { FMOV            V1.4S, #1.0 }

  v15 = 100;
  do
  {
    v16 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, _Q1.f32[0]), v8, *_Q1.f32, 1), v9, _Q1, 2);
    v17 = v16.f32[1];
    if (v16.f32[0] >= v16.f32[1])
    {
      v17 = v16.f32[0];
    }

    if (v17 >= v16.f32[2])
    {
      *&a7 = v17;
    }

    else
    {
      *&a7 = v16.f32[2];
    }

    _Q1 = vdivq_f32(v16, vdupq_lane_s32(*&a7, 0));
    --v15;
  }

  while (v15);
  v18 = vmulq_f32(_Q1, _Q1);
  _Q3.f32[0] = v18.f32[2] + vaddv_f32(*v18.f32);
  *v18.f32 = vrsqrte_f32(_Q3.u32[0]);
  *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(_Q3.u32[0], vmul_f32(*v18.f32, *v18.f32)));
  _Q2 = vmulq_n_f32(_Q1, vmul_f32(*v18.f32, vrsqrts_f32(_Q3.u32[0], vmul_f32(*v18.f32, *v18.f32))).f32[0]);
  _Q3.f32[0] = -*&a7 * _Q2.f32[0];
  *_Q1.f32 = vmla_n_f32(*v7.f32, *_Q2.f32, _Q3.f32[0]);
  __asm { FMLA            S0, S3, V2.S[2] }

  _S17 = vmuls_lane_f32(-*&a7, *_Q2.f32, 1);
  *_Q3.f32 = vmla_n_f32(*v8.f32, *_Q2.f32, _S17);
  __asm { FMLA            S7, S17, V2.S[2] }

  _S17 = vmuls_lane_f32(-*&a7, _Q2, 2);
  *v8.f32 = vmla_n_f32(*v9.f32, *_Q2.f32, _S17);
  v24 = _Q1;
  v24.i32[2] = _S0;
  v25 = _Q3;
  v25.i32[2] = _S7;
  __asm { FMLA            S16, S17, V2.S[2] }

  v27 = v8;
  v27.i32[2] = _S16;
  __asm { FMOV            V17.4S, #1.0 }

  v29 = 100;
  do
  {
    v30 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, _Q17.f32[0]), v25, *_Q17.f32, 1), v27, _Q17, 2);
    v9.i32[0] = v30.i32[1];
    if (v30.f32[0] >= v30.f32[1])
    {
      v9.f32[0] = v30.f32[0];
    }

    if (v9.f32[0] < v30.f32[2])
    {
      v9.f32[0] = v30.f32[2];
    }

    _Q17 = vdivq_f32(v30, vdupq_lane_s32(*v9.f32, 0));
    --v29;
  }

  while (v29);
  _Q18 = vmulq_f32(_Q17, _Q17);
  *&v32 = _Q18.f32[2] + vaddv_f32(*_Q18.f32);
  *_Q18.f32 = vrsqrte_f32(v32);
  *_Q18.f32 = vmul_f32(*_Q18.f32, vrsqrts_f32(v32, vmul_f32(*_Q18.f32, *_Q18.f32)));
  _Q17 = vmulq_n_f32(_Q17, vmul_f32(*_Q18.f32, vrsqrts_f32(v32, vmul_f32(*_Q18.f32, *_Q18.f32))).f32[0]);
  _S19 = -v9.f32[0] * _Q17.f32[0];
  *_Q1.f32 = vmla_n_f32(*_Q1.f32, *_Q17.f32, _S19);
  __asm { FMLA            S0, S19, V17.S[2] }

  _S19 = vmuls_lane_f32(-v9.f32[0], *_Q17.f32, 1);
  *_Q3.f32 = vmla_n_f32(*_Q3.f32, *_Q17.f32, _S19);
  __asm { FMLA            S7, S19, V17.S[2] }

  _Q18.f32[0] = vmuls_lane_f32(-v9.f32[0], _Q17, 2);
  *v8.f32 = vmla_n_f32(*v8.f32, *_Q17.f32, _Q18.f32[0]);
  __asm { FMLA            S16, S18, V17.S[2] }

  _Q1.i32[2] = _S0;
  _Q3.i32[2] = _S7;
  v8.i32[2] = _S16;
  __asm { FMOV            V7.4S, #1.0 }

  v40 = 100;
  do
  {
    v41 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(_Q1, _Q7.f32[0]), _Q3, *_Q7.f32, 1), v8, _Q7, 2);
    v7.i32[0] = v41.i32[1];
    if (v41.f32[0] >= v41.f32[1])
    {
      v7.f32[0] = v41.f32[0];
    }

    if (v7.f32[0] < v41.f32[2])
    {
      v7.f32[0] = v41.f32[2];
    }

    _Q7 = vdivq_f32(v41, vdupq_lane_s32(*v7.f32, 0));
    --v40;
  }

  while (v40);
  v7.i32[1] = v9.i32[0];
  return *v7.i64;
}

void apple3dgs::TransformGaussians(float32x2_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  _Q4 = a4[3];
  *a1->f32 = vaddq_f32(_Q4, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a4, COERCE_FLOAT(*a1->f32)), a4[1], *a1, 1), a4[2], *a1->f32, 2));
  v6 = vmulq_f32(*a2, *a2);
  v7 = vextq_s8(v6, v6, 8uLL);
  *v6.i8 = vadd_f32(*v6.i8, *v7.i8);
  v6.i32[0] = vadd_f32(*v6.i8, vdup_lane_s32(*v6.i8, 1)).u32[0];
  *v7.i8 = vrsqrte_f32(v6.u32[0]);
  *v7.i8 = vmul_f32(*v7.i8, vrsqrts_f32(v6.u32[0], vmul_f32(*v7.i8, *v7.i8)));
  _Q7 = vmulq_n_f32(*a2, vmul_f32(*v7.i8, vrsqrts_f32(v6.u32[0], vmul_f32(*v7.i8, *v7.i8))).f32[0]);
  *a2 = _Q7;
  _S16 = _Q7.i32[1];
  _S17 = _Q7.i32[2];
  __asm { FMLA            S0, S16, V7.S[1] }

  _S18 = _Q7.i32[3];
  __asm { FMLS            S0, S18, V7.S[3] }

  *v7.i32 = _S0 + (_Q7.f32[0] * _Q7.f32[0]);
  __asm { FMLA            S0, S17, V7.S[1] }

  *v6.i32 = _S0 + _S0;
  __asm { FMLA            S0, S18, V7.S[1] }

  v20 = _S0 + _S0;
  __asm { FMLA            S4, S17, V7.S[1] }

  _Q4.f32[0] = _Q4.f32[0] + _Q4.f32[0];
  __asm
  {
    FMLA            S3, S17, V7.S[2]
    FMLS            S3, S16, V7.S[1]
    FMLA            S19, S18, V7.S[2]
    FMLA            S5, S16, V7.S[3]
  }

  v4.f32[0] = _S5 + _S5;
  __asm { FMLA            S5, S18, V7.S[2] }

  v26 = _S5 + _S5;
  __asm
  {
    FMLA            S5, S18, V7.S[3]
    FMLS            S5, S16, V7.S[1]
    FMLS            S5, S17, V7.S[2]
  }

  v30 = v4;
  v30.f32[1] = v26;
  v30.f32[2] = _S5;
  v31 = _S19 + _S19;
  v32 = v7;
  v32.i32[1] = v6.i32[0];
  v32.f32[2] = v20;
  v33 = _Q4;
  v33.f32[1] = _S3;
  v33.f32[2] = v31;
  v34 = vmulq_f32(*a3, *a3);
  v35 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v32, v34.f32[0]), 0, v33), 0, v30);
  v36 = vmulq_f32(v32, 0);
  v37 = vmlaq_f32(vmlaq_lane_f32(v36, v33, *v34.f32, 1), 0, v30);
  v38 = vmlaq_laneq_f32(vmlaq_f32(v36, 0, v33), v30, v34, 2);
  v39 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v35, *v7.i32), v37, _Q4.f32[0]), v38, v4.f32[0]);
  v40 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v35, *v6.i32), v37, _S3), v38, v26);
  v41 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v35, v20), v37, v31), v38, _S5);
  v42 = a4[1];
  v43 = a4[2];
  v44 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a4, v39.f32[0]), v42, *v39.f32, 1), v43, v39, 2);
  v45 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a4, v40.f32[0]), v42, *v40.f32, 1), v43, v40, 2);
  v46 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a4, v41.f32[0]), v42, *v41.f32, 1), v43, v41, 2);
  v47 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v44, COERCE_FLOAT(*a4)), v45, v42.f32[0]), v46, v43.f32[0]);
  v48 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v44, *a4->f32, 1), v45, *v42.f32, 1), v46, *v43.f32, 1);
  v49 = vmlaq_laneq_f32(vmulq_laneq_f32(v44, *a4, 2), v45, v42, 2);
  v52 = v47.i32[2];
  v54 = v48.i32[2];
  v50 = vmlaq_laneq_f32(v49, v46, v43, 2);
  v51 = v47.i64[0];
  v53 = v48.i64[0];
  v56 = v50.i32[2];
  v55 = v50.i64[0];
  apple3dgs::SVD<float>();
}

void *apple3dgs::TransformGaussians(void *result, void *a2, void *a3, uint64_t a4, float32x4_t *a5, int a6)
{
  v56 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    goto LABEL_41;
  }

  _Q0 = xmmword_2474787F0;
  v7 = result[2];
  result[3];
  v8 = result[1] + result[4];
  if (v7 > 29)
  {
    if (v7 == 30)
    {
      _Q0.i64[0] = *v8;
      _Q0.i32[2] = *(v8 + 8);
    }

    else
    {
      if (v7 != 53)
      {
        goto LABEL_41;
      }

      _Q0.i16[0] = *v8;
      __asm { FCVT            S0, H0 }

      _Q0 = vdupq_lane_s32(*_Q0.f32, 0);
    }
  }

  else if (v7 == 26)
  {
    _Q0.i32[0] = *v8;
    _Q0 = vcvtq_f32_f16(*_Q0.f32);
    _H1 = *(v8 + 4);
    __asm { FCVT            S1, H1 }

    _Q0.i32[2] = _S1;
  }

  else
  {
    if (v7 != 28)
    {
      goto LABEL_41;
    }

    _Q0 = vld1q_dup_f32(v8);
  }

  v54 = _Q0;
  v55 = 1;
  v15 = a2[2];
  a2[3];
  v16 = (a2[1] + a2[4]);
  if (v15 > 29)
  {
    if (v15 != 30)
    {
      if (v15 == 31)
      {
        _Q0 = *v16->i8;
      }

      else
      {
        if (v15 != 53)
        {
          goto LABEL_41;
        }

        _Q0.i16[0] = v16->i16[0];
        __asm { FCVT            S0, H0 }

        _Q0 = vdupq_lane_s32(*_Q0.f32, 0);
      }

      goto LABEL_25;
    }

    *_Q0.f32 = *v16;
    _Q0.i32[2] = v16[1].i32[0];
LABEL_22:
    _Q0.i32[3] = 1.0;
    goto LABEL_25;
  }

  switch(v15)
  {
    case 26:
      _Q0.i32[0] = v16->i32[0];
      _Q0.i64[0] = vcvtq_f32_f16(*_Q0.f32).u64[0];
      _H1 = v16->i16[2];
      __asm { FCVT            S1, H1 }

      _Q0.i32[2] = _S1;
      goto LABEL_22;
    case 27:
      _Q0 = vcvtq_f32_f16(*v16);
      break;
    case 28:
      _Q0 = vld1q_dup_f32(v16);
      break;
    default:
      goto LABEL_41;
  }

LABEL_25:
  v52 = _Q0;
  v53 = 1;
  v19 = a3[2];
  a3[3];
  v20 = a3[1] + a3[4];
  if (v19 <= 29)
  {
    if (v19 != 26)
    {
      if (v19 == 28)
      {
        _Q0 = vld1q_dup_f32(v20);
        v50 = _Q0;
        v51 = 1;
        if (a6 == 2)
        {
          goto LABEL_39;
        }

LABEL_35:
        if (a6 == 1)
        {
          __asm
          {
            FCVT            H0, S0
            FCVT            S0, H0; float
          }

          _S0 = expf(_S0);
          __asm
          {
            FCVT            H0, S0
            FCVT            S0, H0
          }

          v50.i32[0] = _S0;
          _S0 = v50.i32[1];
          __asm
          {
            FCVT            H0, S0
            FCVT            S0, H0; float
          }

          _S0 = expf(_S0);
          __asm
          {
            FCVT            H0, S0
            FCVT            S0, H0
          }

          v50.i32[1] = _S0;
          _S0 = v50.i32[2];
          __asm
          {
            FCVT            H0, S0
            FCVT            S0, H0; float
          }

          _S0 = expf(_S0);
          __asm
          {
            FCVT            H0, S0
            FCVT            S0, H0
          }
        }

        else
        {
          v50.i32[0] = _Q0.i32[0];
          _S0 = v50.f32[2];
        }

LABEL_40:
        v50.f32[2] = _S0;
        apple3dgs::TransformGaussians(&v54, &v52, &v50, a5);
      }

      goto LABEL_41;
    }

    _Q0.i32[0] = *v20;
    _Q0 = vcvtq_f32_f16(*_Q0.f32);
    _H1 = *(v20 + 4);
    __asm { FCVT            S1, H1 }

    _Q0.i32[2] = _S1;
    v50 = _Q0;
    v51 = 1;
    if (a6 != 2)
    {
      goto LABEL_35;
    }

LABEL_39:
    __asm { FCVT            H0, S0 }

    _H0 = -_H0;
    __asm { FCVT            S0, H0; float }

    _S0 = expf(_S0);
    __asm
    {
      FCVT            H0, S0
      FCVT            S0, H0
    }

    v50.f32[0] = 1.0 / (_S0 + 1.0);
    _S0 = v50.i32[1];
    __asm { FCVT            H0, S0 }

    *&_S0 = -*&_S0;
    __asm { FCVT            S0, H0; float }

    _S0 = expf(_S0);
    __asm
    {
      FCVT            H0, S0
      FCVT            S0, H0
    }

    v50.f32[1] = 1.0 / (_S0 + 1.0);
    _S0 = v50.i32[2];
    __asm { FCVT            H0, S0 }

    *&_S0 = -*&_S0;
    __asm { FCVT            S0, H0; float }

    _S0 = expf(_S0);
    __asm
    {
      FCVT            H0, S0
      FCVT            S0, H0
    }

    _S0 = 1.0 / (_S0 + 1.0);
    goto LABEL_40;
  }

  if (v19 == 30)
  {
    _Q0.i64[0] = *v20;
    _Q0.i32[2] = *(v20 + 8);
    v50 = _Q0;
    v51 = 1;
    if (a6 != 2)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

  if (v19 == 53)
  {
    _Q0.i16[0] = *v20;
    __asm { FCVT            S0, H0 }

    _Q0 = vdupq_lane_s32(*_Q0.f32, 0);
    v50 = _Q0;
    v51 = 1;
    if (a6 == 2)
    {
      goto LABEL_39;
    }

    goto LABEL_35;
  }

LABEL_41:
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

void apple3dgs::CheckAlloc(id *a1, unint64_t a2, void *a3, uint64_t a4)
{
  v10 = a3;
  v7 = objc_autoreleasePoolPush();
  if (!*a1 || [*a1 length] < a2)
  {
    v8 = [v10 newBufferWithLength:a2 options:a4];
    v9 = *a1;
    *a1 = v8;
  }

  objc_autoreleasePoolPop(v7);
}

void apple3dgs::CheckAlloc(id *a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, void *a6)
{
  v18 = a6;
  v11 = objc_autoreleasePoolPush();
  if (!*a1)
  {
    v13 = a3;
LABEL_6:
    v15 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:a2 width:v13 height:a4 mipmapped:0];
    [v15 setUsage:a5];
    v16 = [v18 newTextureWithDescriptor:v15];
    v17 = *a1;
    *a1 = v16;

    goto LABEL_7;
  }

  v12 = [*a1 width];
  v13 = a3;
  if (v12 != a3)
  {
    goto LABEL_6;
  }

  v14 = [*a1 height];
  v13 = a3;
  if (v14 != a4)
  {
    goto LABEL_6;
  }

LABEL_7:
  objc_autoreleasePoolPop(v11);
}

void apple3dgs::CheckAllocArray(id *a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6, void *a7)
{
  v20 = a7;
  v13 = objc_autoreleasePoolPush();
  if (!*a1)
  {
    v15 = a3;
    goto LABEL_8;
  }

  v14 = [*a1 width];
  v15 = a3;
  if (v14 != a3)
  {
    goto LABEL_8;
  }

  if ([*a1 height] != a4)
  {
    v15 = a3;
    goto LABEL_8;
  }

  v16 = [*a1 arrayLength];
  v15 = a3;
  if (v16 != a5)
  {
LABEL_8:
    v17 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:a2 width:v15 height:a4 mipmapped:0];
    [v17 setUsage:a6];
    [v17 setArrayLength:a5];
    [v17 setTextureType:3];
    v18 = [v20 newTextureWithDescriptor:v17];
    v19 = *a1;
    *a1 = v18;
  }

  objc_autoreleasePoolPop(v13);
}

void apple3dgs::SetFloatTextureValue(void *a1, uint64_t a2, void *a3, __n128 a4)
{
  v6 = a1;
  v18 = a4;
  v7 = a3;
  HIBYTE(__p[2]) = 20;
  strcpy(__p, "SetTextureValueFloat");
  LOBYTE(v15) = 0;
  v16 = 0;
  LOBYTE(v13) = 0;
  v14 = 0;
  v8 = MetalContext::computePipelineState(a2, __p, &v15, &v13);
  if (v14 != 1)
  {
    if (v16 != 1)
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

  if (v16 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = [v7 computeCommandEncoder];
  [v9 setLabel:@"A3DGS.SetTextureValueFloat"];
  [v9 setComputePipelineState:v8];
  [v9 setTexture:v6 atIndex:0];
  [v9 setBytes:&v18 length:16 atIndex:0];
  __p[0] = [v6 width];
  __p[1] = [v6 height];
  __p[2] = 1;
  v11 = vdupq_n_s64(0x20uLL);
  v12 = 1;
  [v9 dispatchThreads:__p threadsPerThreadgroup:&v11];
  [v9 endEncoding];
}

void sub_247417100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, char a16, void *a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a16 == 1)
  {

    if (a18 != 1)
    {
LABEL_3:
      if ((a24 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if (a18 != 1)
  {
    goto LABEL_3;
  }

  if ((a24 & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);

  _Unwind_Resume(a1);
}

void apple3dgs::SetHalfTextureValue(void *a1, uint64_t a2, void *a3, double a4)
{
  v7 = a1;
  v18 = a4;
  v8 = a3;
  __p[23] = 19;
  strcpy(__p, "SetTextureValueHalf");
  LOBYTE(v15) = 0;
  v16 = 0;
  LOBYTE(v13) = 0;
  v14 = 0;
  v9 = MetalContext::computePipelineState(a2, __p, &v15, &v13);
  if (v14 != 1)
  {
    if (v16 != 1)
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

  if (v16 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((__p[23] & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = [v8 computeCommandEncoder];
  [v10 setLabel:@"A3DGS.SetTextureValueHalf"];
  [v10 setComputePipelineState:v9];
  [v10 setTexture:v7 atIndex:0];
  [v10 setBytes:&v18 length:8 atIndex:0];
  *__p = [v7 width];
  *&__p[8] = [v7 height];
  *&__p[16] = 1;
  v11 = vdupq_n_s64(0x20uLL);
  v12 = 1;
  [v10 dispatchThreads:__p threadsPerThreadgroup:&v11];
  [v10 endEncoding];
}

void sub_247417344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, char a14, void *a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void apple3dgs::NDCDepthToRealDepth(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a5;
  HIBYTE(__p[2]) = 19;
  strcpy(__p, "NDCDepthToRealDepth");
  LOBYTE(v18) = 0;
  v19 = 0;
  LOBYTE(v16) = 0;
  v17 = 0;
  v12 = MetalContext::computePipelineState(a4, __p, &v18, &v16);
  if (v17 != 1)
  {
    if (v19 != 1)
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

  if (v19 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = [v11 computeCommandEncoder];
  [v13 setComputePipelineState:v12];
  [v13 setLabel:@"A3DGS.NDCDepthToRealDepth"];
  [v13 setTexture:v9 atIndex:0];
  [v13 setTexture:v10 atIndex:1];
  [v13 setBytes:a3 length:64 atIndex:0];
  __p[0] = [v9 width];
  __p[1] = [v9 height];
  __p[2] = 1;
  v14 = vdupq_n_s64(0x20uLL);
  v15 = 1;
  [v13 dispatchThreads:__p threadsPerThreadgroup:&v14];
  [v13 endEncoding];
}

void sub_2474175A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, char a14, void *a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void apple3dgs::FlipYAxisMTLTexture(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  HIBYTE(v19) = 9;
  strcpy(&__p, "FlipYAxis");
  LOBYTE(v16) = 0;
  v17 = 0;
  LOBYTE(v14) = 0;
  v15 = 0;
  v10 = MetalContext::computePipelineState(a3, &__p, &v16, &v14);
  if (v15 != 1)
  {
    if (v17 != 1)
    {
      goto LABEL_3;
    }

LABEL_6:

    if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    operator delete(__p);
    goto LABEL_4;
  }

  if (v17 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (SHIBYTE(v19) < 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = [v9 computeCommandEncoder];
  [v11 setLabel:@"A3DGS.FlipYAxis"];
  [v11 setComputePipelineState:v10];
  [v11 setTexture:v7 atIndex:0];
  [v11 setTexture:v8 atIndex:1];
  *&__p = [v7 width];
  *(&__p + 1) = [v7 height];
  v19 = 1;
  v12 = vdupq_n_s64(0x20uLL);
  v13 = 1;
  [v11 dispatchThreads:&__p threadsPerThreadgroup:&v12];
  [v11 endEncoding];
}

void sub_2474177E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, char a13, void *a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

double apple3dgs::GetPixelTransformationFromMPIToImage(float32x2_t *a1, float32x2_t *a2, void *a3, void *a4)
{
  v4.i32[0] = 0;
  v4.i32[3] = 0;
  v5 = *a4;
  v6.i32[0] = 0;
  v6.i32[3] = 0;
  *(v6.i64 + 4) = HIDWORD(*a4);
  v7.i64[0] = 0;
  v7.i64[1] = COERCE_UNSIGNED_INT(1.0);
  v13 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*a2->f32)), v6, *a2, 1), v7, *a2->f32, 2);
  v12 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*a2[2].f32)), v6, a2[2], 1), v7, *a2[2].f32, 2);
  v11 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*a2[4].f32)), v6, a2[4], 1), v7, *a2[4].f32, 2);
  v8 = *a3;
  *(v4.i64 + 4) = HIDWORD(*a3);
  v14.columns[0] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*a1->f32)), v4, *a1, 1), v7, *a1->f32, 2);
  v14.columns[1] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*a1[2].f32)), v4, a1[2], 1), v7, *a1[2].f32, 2);
  v14.columns[2] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*a1[4].f32)), v4, a1[4], 1), v7, *a1[4].f32, 2);
  v9 = __invert_f3(v14);
  *&result = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, *&v9), v12, *&v9, 1), v11, v9, 2).u64[0];
  return result;
}

BOOL apple3dgs::CGColorSpaceGetTransferFunction(apple3dgs *this, CGColorSpace *a2)
{
  if (this)
  {
    Name = CGColorSpaceGetName(this);
    if (Name)
    {
      v3 = Name;
      v4 = CFStringCreateWithCString(0, "Linear", 0x8000100u);
      location = CFStringFind(v3, v4, 1uLL).location;
      CFRelease(v4);
      return location != -1;
    }

    v7 = _gs_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v8 = "[A3DGSR /backend_utils.mm:355] CGColorSpaceGetTransferFunction recieves a colorspace without name";
      v9 = &v10;
      goto LABEL_8;
    }
  }

  else
  {
    v7 = _gs_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v8 = "[A3DGSR /backend_utils.mm:348] CGColorSpaceGetTransferFunction recieves NULL colorspace.";
      v9 = &v11;
LABEL_8:
      _os_log_impl(&dword_2473FC000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
    }
  }

  return 1;
}

CGColorSpaceRef apple3dgs::CGColorSpaceCreateSRGBGamutWithTransferFunction(CGColorSpaceRef result)
{
  if (!result)
  {
    return CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  }

  if (result == 1)
  {
    return CGColorSpaceCreateWithName(*MEMORY[0x277CBF4A8]);
  }

  return result;
}

CGColorSpaceRef apple3dgs::CGColorSpaceCreateCopyWithSameName(apple3dgs *this, CGColorSpace *a2)
{
  if (!this)
  {
    v4 = _gs_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 0;
      v5 = "[A3DGSR /backend_utils.mm:382] Provided colorspace is NULL";
      v6 = &v8;
LABEL_10:
      _os_log_impl(&dword_2473FC000, v4, OS_LOG_TYPE_ERROR, v5, v6, 2u);
    }

LABEL_11:

    return 0;
  }

  Name = CGColorSpaceGetName(this);
  if (!Name)
  {
    v4 = _gs_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 0;
      v5 = "[A3DGSR /backend_utils.mm:388] Provided colorspace does not have a name";
      v6 = &v7;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  return CGColorSpaceCreateWithName(Name);
}

void *apple3dgs::operator<<(void *a1, int *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v4 = *a2;
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v5 = a2[1];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v6 = a2[2];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]\n", 2);
  return a1;
}

{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v4 = *a2;
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v5 = a2[1];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v6 = a2[2];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v7 = a2[3];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]\n", 2);
  return a1;
}

void *apple3dgs::operator<<(void *a1, uint64_t *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  _D0 = *a2;
  __asm { FCVT            S0, H0 }

  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  _H0 = *(a2 + 1);
  __asm { FCVT            S0, H0 }

  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  _H0 = *(a2 + 2);
  __asm { FCVT            S0, H0 }

  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]\n", 2);
  return a1;
}

void *_ZN9apple3dgslsIDv4_DF16_Li4EEERNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEES7_RKT_(void *a1, uint64_t *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  _D0 = *a2;
  __asm { FCVT            S0, H0 }

  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  _H0 = *(a2 + 1);
  __asm { FCVT            S0, H0 }

  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  _H0 = *(a2 + 2);
  __asm { FCVT            S0, H0 }

  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  _H0 = *(a2 + 3);
  __asm { FCVT            S0, H0 }

  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]\n", 2);
  return a1;
}

void *apple3dgs::operator<<<simd::float4x4,4,4>(void *a1, int *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v4 = *a2;
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v5 = a2[1];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v6 = a2[2];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v7 = a2[3];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]\n", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v8 = a2[4];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v9 = a2[5];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v10 = a2[6];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v11 = a2[7];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]\n", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v12 = a2[8];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v13 = a2[9];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v14 = a2[10];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v15 = a2[11];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]\n", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v16 = a2[12];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v17 = a2[13];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v18 = a2[14];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v19 = a2[15];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]\n", 2);
  return a1;
}

void *apple3dgs::operator<<<simd::float3x3,3,3>(void *a1, int *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v4 = *a2;
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v5 = a2[1];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v6 = a2[2];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]\n", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v7 = a2[4];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v8 = a2[5];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v9 = a2[6];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]\n", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v10 = a2[8];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v11 = a2[9];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", ", 2);
  v12 = a2[10];
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]\n", 2);
  return a1;
}

simd::quatf *__cdecl simd::quatf::quatf(simd::quatf *this, simd_float3x3 matrix)
{
  v2 = matrix.columns[2].f32[2] + (matrix.columns[0].f32[0] + matrix.columns[1].f32[1]);
  if (v2 >= 0.0)
  {
    v11 = sqrtf(v2 + 1.0);
    v12 = v11 + v11;
    v13 = vrecpe_f32(COERCE_UNSIGNED_INT(v11 + v11));
    v14 = vmul_f32(v13, vrecps_f32(COERCE_UNSIGNED_INT(v11 + v11), v13));
    v14.i32[0] = vmul_f32(v14, vrecps_f32(COERCE_UNSIGNED_INT(v11 + v11), v14)).u32[0];
    *v15.vector.f32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(matrix.columns[1], matrix.columns[1], 8uLL), *matrix.columns[2].f32), vext_s8(*matrix.columns[2].f32, *&vextq_s8(matrix.columns[0], matrix.columns[0], 8uLL), 4uLL)), v14.f32[0]);
    v16.f32[0] = matrix.columns[0].f32[1] - matrix.columns[1].f32[0];
    v16.f32[1] = v12;
    v14.i32[1] = 0.25;
    *&v15.vector.u32[2] = vmul_f32(v16, v14);
    *this = v15;
  }

  else if (matrix.columns[0].f32[0] < matrix.columns[1].f32[1] || matrix.columns[0].f32[0] < matrix.columns[2].f32[2])
  {
    v4 = 1.0 - matrix.columns[0].f32[0];
    if (matrix.columns[1].f32[1] >= matrix.columns[2].f32[2])
    {
      v27 = sqrtf(matrix.columns[1].f32[1] + (v4 - matrix.columns[2].f32[2]));
      *&v28 = v27 + v27;
      v29 = vrecpe_f32(v28);
      v30 = vmul_f32(v29, vrecps_f32(v28, v29));
      v31.i32[0] = vmul_f32(v30, vrecps_f32(v28, v30)).u32[0];
      v30.f32[0] = matrix.columns[0].f32[1] + matrix.columns[1].f32[0];
      v30.i32[1] = v28;
      v31.i32[1] = 0.25;
      *v10.vector.f32 = vmul_f32(v30, v31);
      *&v10.vector.u32[2] = vmul_n_f32(vext_s8(vadd_f32(*matrix.columns[2].f32, vdup_laneq_s32(matrix.columns[1], 2)), vsub_f32(*matrix.columns[2].f32, *&vextq_s8(matrix.columns[0], matrix.columns[0], 8uLL)), 4uLL), v31.f32[0]);
    }

    else
    {
      v5 = sqrtf(matrix.columns[2].f32[2] + (v4 - matrix.columns[1].f32[1]));
      v6.f32[0] = v5 + v5;
      v7 = vrecpe_f32(COERCE_UNSIGNED_INT(v5 + v5));
      v8 = vmul_f32(v7, vrecps_f32(COERCE_UNSIGNED_INT(v5 + v5), v7));
      v8.i32[0] = vmul_f32(v8, vrecps_f32(COERCE_UNSIGNED_INT(v5 + v5), v8)).u32[0];
      *v10.vector.f32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(matrix.columns[0], matrix.columns[0], 8uLL), *&vextq_s8(matrix.columns[1], matrix.columns[1], 8uLL)), *matrix.columns[2].f32), v8.f32[0]);
      v6.f32[1] = matrix.columns[0].f32[1] - matrix.columns[1].f32[0];
      __asm { FMOV            V0.2S, #0.25 }

      _D0.i32[1] = v8.i32[0];
      *&v10.vector.u32[2] = vmul_f32(v6, _D0);
    }

    *this = v10;
  }

  else
  {
    v17 = sqrtf(matrix.columns[0].f32[0] + ((1.0 - matrix.columns[1].f32[1]) - matrix.columns[2].f32[2]));
    v18.f32[0] = v17 + v17;
    v19 = vrecpe_f32(v18.u32[0]);
    v20 = vmul_f32(v19, vrecps_f32(v18.u32[0], v19));
    LODWORD(v21) = vmul_f32(v20, vrecps_f32(v18.u32[0], v20)).u32[0];
    v18.f32[1] = matrix.columns[0].f32[1] + matrix.columns[1].f32[0];
    __asm { FMOV            V5.2S, #0.25 }

    _D5.f32[1] = v21;
    *v26.vector.f32 = vmul_f32(v18, _D5);
    matrix.columns[0].i32[0] = vadd_f32(*&vextq_s8(matrix.columns[0], matrix.columns[0], 8uLL), *matrix.columns[2].f32).u32[0];
    matrix.columns[0].i32[1] = vsub_f32(vdup_laneq_s32(*(&matrix + 16), 2), *(&matrix + 32)).i32[1];
    *&v26.vector.u32[2] = vmul_n_f32(*matrix.columns[0].f32, v21);
    *this = v26;
  }

  return this;
}

double apple3dgs::SVD<float>@<D0>(int8x16_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v14 = vextq_s8(vextq_s8(a1[1], a1[1], 0xCuLL), a1[2], 8uLL);
  sgesvd_NEWLAPACK();
  result = v10[0];
  *&v5 = v10[3];
  DWORD2(v5) = v11;
  *&v6 = *&v8[24];
  DWORD2(v6) = v9;
  *&v7 = v12;
  DWORD2(v7) = v13;
  *a2 = *v10;
  a2[1] = *(&v10[1] + 4);
  a2[2] = v5;
  a2[3] = v7;
  a2[4] = *v8;
  a2[5] = *&v8[12];
  a2[6] = v6;
  return result;
}

__n128 apple3dgs::SVD<double>@<Q0>(__int128 *a1@<X0>, __n128 *a2@<X8>)
{
  v25 = *a1;
  v26 = *(a1 + 2);
  v27 = a1[2];
  v28 = *(a1 + 6);
  v29 = a1[4];
  v30 = *(a1 + 10);
  dgesvd_NEWLAPACK();
  result = v17;
  v4.n128_u64[0] = v18;
  v5.n128_u64[0] = v20;
  v6.n128_u64[0] = v22;
  v7.n128_u64[0] = v12;
  v8.n128_u64[0] = v14;
  v9.n128_u64[0] = v16;
  v10.n128_u64[0] = v24;
  *a2 = v17;
  a2[1] = v4;
  a2[2] = v19;
  a2[3] = v5;
  a2[4] = v21;
  a2[5] = v6;
  a2[6] = v23;
  a2[7] = v10;
  a2[8] = v11;
  a2[9] = v7;
  a2[10] = v13;
  a2[11] = v8;
  a2[12] = v15;
  a2[13] = v9;
  return result;
}

void apple3dgs::loadTv(const std::__fs::filesystem::path *a1@<X0>, unsigned int a2@<W1>, void *a3@<X2>, void *a4@<X4>, _BYTE *a5@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v9 = objc_autoreleasePoolPush();
  apple3dgs::Asset::Asset(v39, v8, 0);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Loading TV...", 13);
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(__dst, MEMORY[0x277D82680]);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(__dst);
  std::ostream::put();
  std::ostream::flush();
  v12 = std::__fs::filesystem::path::__extension(a1);
  if (v12.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v12.__size_ >= 0x17)
  {
    operator new();
  }

  *(&__dst[0].__r_.__value_.__s + 23) = v12.__size_;
  if (v12.__size_)
  {
    memmove(__dst, v12.__data_, v12.__size_);
  }

  __dst[0].__r_.__value_.__s.__data_[v12.__size_] = 0;
  v34 = __dst[0];
  std::__fs::filesystem::__status(a1, 0);
  if (!__dst[0].__r_.__value_.__s.__data_[0] || __dst[0].__r_.__value_.__s.__data_[0] == 255)
  {
    goto LABEL_28;
  }

  memset(__dst, 0, 24);
  std::string::append[abi:ne200100]<char const*,0>(__dst, ".tv", "");
  if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13.__data_ = __dst;
  }

  else
  {
    v13.__data_ = __dst[0].__r_.__value_.__r.__words[0];
  }

  if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13.__size_ = HIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13.__size_ = __dst[0].__r_.__value_.__l.__size_;
  }

  if (!std::__fs::filesystem::path::__compare(&v34, v13))
  {
    v15 = 0;
    if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_38;
  }

  memset(&__p, 0, sizeof(__p));
  std::string::append[abi:ne200100]<char const*,0>(&__p, ".TV", "");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14.__data_ = &__p;
  }

  else
  {
    v14.__data_ = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14.__size_ = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14.__size_ = __p.__r_.__value_.__l.__size_;
  }

  v15 = std::__fs::filesystem::path::__compare(&v34, v14) != 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_38:
    operator delete(__dst[0].__r_.__value_.__l.__data_);
    if (!v15)
    {
      goto LABEL_39;
    }

LABEL_28:
    if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a1;
    }

    else
    {
      v16 = a1->__pn_.__r_.__value_.__r.__words[0];
    }

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"TV does not exist at %s", v16];
    v18 = MEMORY[0x24C1A1D60](MEMORY[0x277D82670], v17 != 0);
    std::ios_base::getloc((v18 + *(*v18 - 24)));
    v19 = std::locale::use_facet(__dst, MEMORY[0x277D82680]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(__dst);
    std::ostream::put();
    v20 = std::ostream::flush();
    v21 = MEMORY[0x277CCA9B8];
    v22 = apple3dgs::ErrorDomain(v20);
    v37 = *MEMORY[0x277CCA450];
    v38 = v17;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v24 = [v21 errorWithDomain:v22 code:-1 userInfo:v23];

    *a5 = 0;
    a5[656] = 0;

    if ((SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_27:
  if (v15)
  {
    goto LABEL_28;
  }

LABEL_39:
  if (SHIBYTE(a1->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(__dst, a1->__pn_.__r_.__value_.__l.__data_, a1->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst[0] = a1->__pn_;
  }

  apple3dgs::TVData::TVData(v28, __dst, 1, a2, 1);
  if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst[0].__r_.__value_.__l.__data_);
    if (v31)
    {
LABEL_44:
      cv3d::aspenbase::concurrency::AsyncManager::AsyncManager(__dst, 0, 0);
    }
  }

  else if (v31)
  {
    goto LABEL_44;
  }

  *a5 = 0;
  a5[656] = 0;
  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  v24 = 0;
  if (SHIBYTE(v34.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_32:
    operator delete(v34.__pn_.__r_.__value_.__l.__data_);
  }

LABEL_33:
  apple3dgs::Asset::~Asset(v39);
  objc_autoreleasePoolPop(v9);
  if (a4 && v24)
  {
    v25 = v24;
    *a4 = v24;
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_247418FF8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, std::locale a62)
{
  if (a2)
  {
    std::function<void ()(unsigned long)>::~function(&a32);
    cv3d::aspenbase::concurrency::AsyncManager::~AsyncManager(&a62);
    apple3dgs::TVData::~TVData(&a12);
    if (a30 < 0)
    {
      operator delete(__p);
    }

    apple3dgs::Asset::~Asset(&STACK[0x300]);
    objc_begin_catch(a1);
    if (!v62)
    {
      JUMPOUT(0x247418A74);
    }

    JUMPOUT(0x247418A64);
  }

  _Unwind_Resume(a1);
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void apple3dgs::TVData::~TVData(void **this)
{
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  v2 = this[3];
  if (v2)
  {
    this[4] = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    this[1] = v3;
    operator delete(v3);
  }
}

uint64_t apple3dgs::updateFromTv(uint64_t a1, const std::__fs::filesystem::path *a2, unsigned int a3, void *a4)
{
  v29[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *a4 = 0;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = std::__fs::filesystem::path::__extension(a2);
  if (v9.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9.__size_ >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v9.__size_;
  if (v9.__size_)
  {
    memmove(&__dst, v9.__data_, v9.__size_);
  }

  __dst.__r_.__value_.__s.__data_[v9.__size_] = 0;
  v27.__pn_ = __dst;
  std::__fs::filesystem::__status(a2, 0);
  if (__dst.__r_.__value_.__s.__data_[0] && __dst.__r_.__value_.__s.__data_[0] != 255)
  {
    memset(&__dst, 0, sizeof(__dst));
    std::string::append[abi:ne200100]<char const*,0>(&__dst, ".tv", "");
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10.__data_ = &__dst;
    }

    else
    {
      v10.__data_ = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10.__size_ = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v10.__size_ = __dst.__r_.__value_.__l.__size_;
    }

    if (std::__fs::filesystem::path::__compare(&v27, v10))
    {
      memset(&__p, 0, sizeof(__p));
      std::string::append[abi:ne200100]<char const*,0>(&__p.__pn_, ".TV", "");
      if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11.__data_ = &__p;
      }

      else
      {
        v11.__data_ = __p.__pn_.__r_.__value_.__r.__words[0];
      }

      if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11.__size_ = HIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v11.__size_ = __p.__pn_.__r_.__value_.__l.__size_;
      }

      v12 = std::__fs::filesystem::path::__compare(&v27, v11) != 0;
      if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__pn_.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_27:
        if (v12)
        {
          goto LABEL_28;
        }

LABEL_39:
        if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p.__pn_, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          __p.__pn_ = a2->__pn_;
        }

        apple3dgs::TVData::TVData(&__dst, &__p, *(a1 + 616), *(a1 + 544));
        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
        }

        apple3dgs::TVData::LoadFrame(&__dst, a3, *(a1 + 624));
        apple3dgs::Asset::UpdateFromCachedTvData(a1);
      }
    }

    else
    {
      v12 = 0;
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    if (!v12)
    {
      goto LABEL_39;
    }
  }

LABEL_28:
  if ((a2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = a2->__pn_.__r_.__value_.__r.__words[0];
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"TV does not exist at %s", v13];
  v15 = MEMORY[0x24C1A1D60](MEMORY[0x277D82670], v14 != 0);
  std::ios_base::getloc((v15 + *(*v15 - 24)));
  v16 = std::locale::use_facet(&__dst, MEMORY[0x277D82680]);
  (v16->__vftable[2].~facet_0)(v16, 10);
  std::locale::~locale(&__dst);
  std::ostream::put();
  v17 = std::ostream::flush();
  v18 = MEMORY[0x277CCA9B8];
  v19 = apple3dgs::ErrorDomain(v17);
  v28 = *MEMORY[0x277CCA450];
  v29[0] = v14;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v21 = [v18 errorWithDomain:v19 code:-1 userInfo:v20];

  if (SHIBYTE(v27.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__pn_.__r_.__value_.__l.__data_);
  }

  objc_autoreleasePoolPop(v8);
  if (a4 && v21)
  {
    v22 = v21;
    *a4 = v21;
  }

  v23 = *MEMORY[0x277D85DE8];
  return 0;
}

void sub_2474196A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    if (*(v32 - 105) < 0)
    {
      operator delete(*(v32 - 128));
    }

    objc_begin_catch(exception_object);
    if (!v31)
    {
      JUMPOUT(0x247419590);
    }

    JUMPOUT(0x247419580);
  }

  _Unwind_Resume(exception_object);
}

void apple3dgs::loadPly(const std::__fs::filesystem::path *a1@<X0>, void *a2@<X1>, void *a3@<X3>, _BYTE *a4@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v26 = a2;
  if (a3)
  {
    *a3 = 0;
  }

  v24 = a3;
  context = objc_autoreleasePoolPush();
  apple3dgs::Asset::Asset(v33, v26, 0);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Loading PLY...", 14);
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(__dst, MEMORY[0x277D82680]);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(__dst);
  std::ostream::put();
  std::ostream::flush();
  v8 = std::__fs::filesystem::path::__extension(a1);
  if (v8.__size_ > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8.__size_ >= 0x17)
  {
    operator new();
  }

  *(&__dst[0].__r_.__value_.__s + 23) = v8.__size_;
  if (v8.__size_)
  {
    memmove(__dst, v8.__data_, v8.__size_);
  }

  __dst[0].__r_.__value_.__s.__data_[v8.__size_] = 0;
  v28 = __dst[0];
  std::__fs::filesystem::__status(a1, 0);
  if (!__dst[0].__r_.__value_.__s.__data_[0] || __dst[0].__r_.__value_.__s.__data_[0] == 255)
  {
    goto LABEL_27;
  }

  memset(__dst, 0, 24);
  std::string::append[abi:ne200100]<char const*,0>(__dst, ".ply", "");
  if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9.__data_ = __dst;
  }

  else
  {
    v9.__data_ = __dst[0].__r_.__value_.__r.__words[0];
  }

  if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9.__size_ = HIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9.__size_ = __dst[0].__r_.__value_.__l.__size_;
  }

  if (!std::__fs::filesystem::path::__compare(&v28, v9))
  {
    v11 = 0;
    if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_37;
    }

LABEL_26:
    if (v11)
    {
      goto LABEL_27;
    }

LABEL_38:
    if (SHIBYTE(a1->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(__dst, a1->__pn_.__r_.__value_.__l.__data_, a1->__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst[0] = a1->__pn_;
    }

    happly::PLYData::PLYData(v27, __dst, 0);
    if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst[0].__r_.__value_.__l.__data_);
    }

    cv3d::aspenbase::concurrency::AsyncManager::AsyncManager(__dst, 0, 0);
  }

  memset(&__p, 0, sizeof(__p));
  std::string::append[abi:ne200100]<char const*,0>(&__p, ".PLY", "");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10.__data_ = &__p;
  }

  else
  {
    v10.__data_ = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10.__size_ = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10.__size_ = __p.__r_.__value_.__l.__size_;
  }

  v11 = std::__fs::filesystem::path::__compare(&v28, v10) != 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_37;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

LABEL_37:
  operator delete(__dst[0].__r_.__value_.__l.__data_);
  if (!v11)
  {
    goto LABEL_38;
  }

LABEL_27:
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"PLY does not exist at %s", v12];
  v14 = MEMORY[0x24C1A1D60](MEMORY[0x277D82670], v13 != 0);
  std::ios_base::getloc((v14 + *(*v14 - 24)));
  v15 = std::locale::use_facet(__dst, MEMORY[0x277D82680]);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(__dst);
  std::ostream::put();
  v16 = std::ostream::flush();
  v17 = MEMORY[0x277CCA9B8];
  v18 = apple3dgs::ErrorDomain(v16);
  v31 = *MEMORY[0x277CCA450];
  v32 = v13;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v20 = [v17 errorWithDomain:v18 code:-1 userInfo:v19];

  *a4 = 0;
  a4[656] = 0;

  if (SHIBYTE(v28.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__pn_.__r_.__value_.__l.__data_);
  }

  apple3dgs::Asset::~Asset(v33);
  objc_autoreleasePoolPop(context);
  if (v24 && v20)
  {
    v21 = v20;
    *v24 = v20;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void sub_24741CD80(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (a2)
  {
    v67 = STACK[0x3B0];
    if (STACK[0x3B0])
    {
      STACK[0x3B8] = v67;
      operator delete(v67);
    }

    if (a33)
    {
      operator delete(a33);
    }

    v68 = STACK[0x240];
    if (STACK[0x240])
    {
      STACK[0x248] = v68;
      operator delete(v68);
    }

    cv3d::aspenbase::concurrency::AsyncManager::~AsyncManager(&STACK[0x3D0]);
    happly::PLYData::~PLYData(&a66);
    if (SLOBYTE(STACK[0x237]) < 0)
    {
      operator delete(STACK[0x220]);
    }

    apple3dgs::Asset::~Asset(&STACK[0x540]);
    objc_begin_catch(a1);
    if (!a15)
    {
      JUMPOUT(0x247419BCCLL);
    }

    JUMPOUT(0x247419BB8);
  }

  _Unwind_Resume(a1);
}

uint64_t happly::PLYData::getElement(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  if (v2 == v3)
  {
LABEL_17:
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    MEMORY[0x24C1A1B50](exception, v12);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  while (1)
  {
    v7 = *(v2 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v2 + 8);
    }

    if (v7 == v5)
    {
      v9 = v8 >= 0 ? v2 : *v2;
      if (!memcmp(v9, v6, v5))
      {
        return v2;
      }
    }

    v2 += 56;
    if (v2 == v3)
    {
      goto LABEL_17;
    }
  }
}

void sub_24741D740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t GSLogFormattedString<GSLoggerDebug>(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  v4 = strlen(v3);
  if (v4 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v36 = v4;
  if (v4)
  {
    memmove(&__dst, v3, v4);
  }

  *(&__dst + v5) = 0;
  v6 = _gs_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    p_dst = &__dst;
    if (v36 < 0)
    {
      p_dst = __dst;
    }

    *buf = 136315138;
    *&buf[4] = p_dst;
    _os_log_impl(&dword_2473FC000, v6, OS_LOG_TYPE_DEBUG, "[A3DGSR] %s", buf, 0xCu);
  }

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  v8 = *(a2 + 23);
  v9 = *a2;
  v10 = *(a2 + 8);
  if ((v8 & 0x80u) == 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  if ((v8 & 0x80u) == 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11)
  {
    v13 = memchr(v12, 10, v11);
    if (v13)
    {
      v14 = (v13 - v12);
      if (v13 - v12 != -1)
      {
        v15 = 0;
        v16 = 1;
        while (1)
        {
          v17 = v16;
          if ((v8 & 0x80) != 0)
          {
            if (v10 < v15)
            {
LABEL_83:
              std::string::__throw_out_of_range[abi:ne200100]();
            }

            v18 = *a2;
            v8 = v10;
          }

          else
          {
            v18 = a2;
            if (v15 > v8)
            {
              goto LABEL_83;
            }
          }

          if (v8 - v15 >= v14 - v15)
          {
            v19 = v14 - v15;
          }

          else
          {
            v19 = v8 - v15;
          }

          if (v19 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v19 >= 0x17)
          {
            operator new();
          }

          v38 = v19;
          if (v19)
          {
            memmove(buf, &v15[v18], v19);
          }

          buf[v19] = 0;
          if (v38 >= 0)
          {
            v20 = buf;
          }

          else
          {
            v20 = *buf;
          }

          v21 = strlen(v20);
          if (v21 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v22 = v21;
          if (v21 >= 0x17)
          {
            operator new();
          }

          v36 = v21;
          if (v21)
          {
            memmove(&__dst, v20, v21);
          }

          *(&__dst + v22) = 0;
          v23 = _gs_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            v24 = &__dst;
            if (v36 < 0)
            {
              v24 = __dst;
            }

            *v39 = 136315138;
            v40 = v24;
            _os_log_impl(&dword_2473FC000, v23, OS_LOG_TYPE_DEBUG, "[A3DGSR] %s", v39, 0xCu);
          }

          if (v36 < 0)
          {
            operator delete(__dst);
            if (v38 < 0)
            {
LABEL_66:
              operator delete(*buf);
            }
          }

          else if (v38 < 0)
          {
            goto LABEL_66;
          }

          v15 = v14 + 1;
          v25 = *(a2 + 23);
          v8 = *(a2 + 23);
          v10 = *(a2 + 8);
          if (v25 >= 0)
          {
            v26 = *(a2 + 23);
          }

          else
          {
            v26 = *(a2 + 8);
          }

          if (v26 > v15)
          {
            v27 = v25 >= 0 ? a2 : *a2;
            v28 = memchr(&v15[v27], 10, v26 - v15);
            if (v28)
            {
              v14 = &v28[-v27];
              v16 = v17 + 1;
              if (&v28[-v27] != -1)
              {
                continue;
              }
            }
          }

          goto LABEL_80;
        }
      }
    }
  }

  v29 = strlen(v12);
  if (v29 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v30 = v29;
  if (v29 >= 0x17)
  {
    operator new();
  }

  v36 = v29;
  if (v29)
  {
    memmove(&__dst, v12, v29);
  }

  *(&__dst + v30) = 0;
  v31 = _gs_log();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v32 = &__dst;
    if (v36 < 0)
    {
      v32 = __dst;
    }

    *buf = 136315138;
    *&buf[4] = v32;
    _os_log_impl(&dword_2473FC000, v31, OS_LOG_TYPE_DEBUG, "[A3DGSR] %s", buf, 0xCu);
  }

  if (v36 < 0)
  {
    operator delete(__dst);
  }

  v17 = 1;
LABEL_80:
  v33 = *MEMORY[0x277D85DE8];
  return v17;
}

void sub_24741DC74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<unsigned int,std::vector<float>>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        v2[4] = v6;
        operator delete(v6);
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

void ***std::vector<std::string>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
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
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void apple3dgs::savePly(apple3dgs *this, const std::__fs::filesystem::path *a2, const apple3dgs::Asset *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  data = a2[23].__pn_.__r_.__value_.__l.__data_;
  objc_autoreleasePoolPush();
  v5 = _gs_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a2[22].__pn_.__r_.__value_.__r.__words[2];
    *buf = 67109376;
    *&buf[4] = v6;
    *&buf[8] = 1024;
    *&buf[10] = (sqrt((data / 3)) + -1.0);
    _os_log_impl(&dword_2473FC000, v5, OS_LOG_TYPE_DEFAULT, "[A3DGSR] Saving PLY with %u gaussians, degree %u", buf, 0xEu);
  }

  v35 = 0;
  v34 = 0u;
  memset(v33, 0, sizeof(v33));
  v36 = xmmword_247478BD0;
  HIBYTE(v38) = 7;
  strcpy(buf, "version");
  __dst[0] = 3;
  v7 = std::vector<happly::Element>::__emplace_back_slow_path<std::string &,unsigned long &>(&v34, buf, __dst);
  *(&v34 + 1) = v7;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(*buf);
    v7 = *(&v34 + 1);
  }

  HIBYTE(v38) = 9;
  strcpy(buf, "extrinsic");
  __dst[0] = 16;
  if (v7 >= v35)
  {
    v9 = std::vector<happly::Element>::__emplace_back_slow_path<std::string &,unsigned long &>(&v34, buf, __dst);
  }

  else
  {
    v8 = v38;
    *v7 = *buf;
    *(v7 + 16) = v8;
    *(v7 + 24) = 16;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 32) = 0;
    v9 = v7 + 56;
  }

  *(&v34 + 1) = v9;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(*buf);
    v9 = *(&v34 + 1);
  }

  HIBYTE(v38) = 9;
  strcpy(buf, "intrinsic");
  __dst[0] = 9;
  if (v9 >= v35)
  {
    v11 = std::vector<happly::Element>::__emplace_back_slow_path<std::string &,unsigned long &>(&v34, buf, __dst);
  }

  else
  {
    v10 = v38;
    *v9 = *buf;
    *(v9 + 16) = v10;
    *(v9 + 24) = 9;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 32) = 0;
    v11 = v9 + 56;
  }

  *(&v34 + 1) = v11;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(*buf);
    v11 = *(&v34 + 1);
  }

  HIBYTE(v38) = 10;
  strcpy(buf, "image_size");
  __dst[0] = 2;
  if (v11 >= v35)
  {
    v13 = std::vector<happly::Element>::__emplace_back_slow_path<std::string &,unsigned long &>(&v34, buf, __dst);
  }

  else
  {
    v12 = v38;
    *v11 = *buf;
    *(v11 + 16) = v12;
    *(v11 + 24) = 2;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 32) = 0;
    v13 = v11 + 56;
  }

  *(&v34 + 1) = v13;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(*buf);
    v13 = *(&v34 + 1);
  }

  HIBYTE(v38) = 11;
  strcpy(buf, "color_space");
  __dst[0] = 1;
  if (v13 >= v35)
  {
    v15 = std::vector<happly::Element>::__emplace_back_slow_path<std::string &,unsigned long &>(&v34, buf, __dst);
  }

  else
  {
    v14 = v38;
    *v13 = *buf;
    *(v13 + 16) = v14;
    *(v13 + 24) = 1;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 32) = 0;
    v15 = v13 + 56;
  }

  *(&v34 + 1) = v15;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(*buf);
    v15 = *(&v34 + 1);
  }

  HIBYTE(v38) = 12;
  strcpy(buf, "sorting_mode");
  __dst[0] = 1;
  if (v15 >= v35)
  {
    v17 = std::vector<happly::Element>::__emplace_back_slow_path<std::string &,unsigned long &>(&v34, buf, __dst);
  }

  else
  {
    v16 = v38;
    *v15 = *buf;
    *(v15 + 16) = v16;
    *(v15 + 24) = 1;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 32) = 0;
    v17 = v15 + 56;
  }

  *(&v34 + 1) = v17;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(*buf);
    v17 = *(&v34 + 1);
  }

  HIBYTE(v38) = 14;
  strcpy(buf, "splatting_mode");
  __dst[0] = 1;
  if (v17 >= v35)
  {
    v19 = std::vector<happly::Element>::__emplace_back_slow_path<std::string &,unsigned long &>(&v34, buf, __dst);
  }

  else
  {
    v18 = v38;
    *v17 = *buf;
    *(v17 + 16) = v18;
    *(v17 + 24) = 1;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 32) = 0;
    v19 = v17 + 56;
  }

  *(&v34 + 1) = v19;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(*buf);
  }

  v20 = [(__CFString *)CGColorSpaceGetName(a2[27].__pn_.__r_.__value_.__l.__data_) UTF8String];
  v21 = strlen(v20);
  if (v21 < 0x7FFFFFFFFFFFFFF8)
  {
    v22 = v21;
    if (v21 < 0x17)
    {
      v32 = v21;
      if (v21)
      {
        memmove(__dst, v20, v21);
      }

      *(__dst + v22) = 0;
      HIBYTE(v38) = 14;
      strcpy(buf, "cg_color_space");
      if ((v32 & 0x80u) == 0)
      {
        v23 = v32;
      }

      else
      {
        v23 = __dst[1];
      }

      v30 = v23;
      v24 = *(&v34 + 1);
      if (*(&v34 + 1) >= v35)
      {
        v26 = std::vector<happly::Element>::__emplace_back_slow_path<std::string &,unsigned long &>(&v34, buf, &v30);
      }

      else
      {
        v25 = v38;
        **(&v34 + 1) = *buf;
        v24[2] = v25;
        v24[3] = v23;
        v24[5] = 0;
        v24[6] = 0;
        v24[4] = 0;
        v26 = (v24 + 7);
      }

      *(&v34 + 1) = v26;
      if (SHIBYTE(v38) < 0)
      {
        operator delete(*buf);
        v26 = *(&v34 + 1);
      }

      HIBYTE(v38) = 6;
      strcpy(buf, "vertex");
      v27 = LODWORD(a2[22].__pn_.__r_.__value_.__r.__words[2]);
      v30 = v27;
      if (v26 >= v35)
      {
        v29 = std::vector<happly::Element>::__emplace_back_slow_path<std::string &,unsigned long &>(&v34, buf, &v30);
      }

      else
      {
        v28 = v38;
        *v26 = *buf;
        *(v26 + 16) = v28;
        *(v26 + 24) = v27;
        *(v26 + 40) = 0;
        *(v26 + 48) = 0;
        *(v26 + 32) = 0;
        v29 = v26 + 56;
      }

      *(&v34 + 1) = v29;
      if (SHIBYTE(v38) < 0)
      {
        operator delete(*buf);
      }

      HIBYTE(v38) = 6;
      strcpy(buf, "vertex");
      happly::PLYData::getElement(v33, buf);
      if (SHIBYTE(v38) < 0)
      {
        operator delete(*buf);
      }

      cv3d::aspenbase::concurrency::AsyncManager::AsyncManager(buf, 0, 0);
    }

    operator new();
  }

  std::string::__throw_length_error[abi:ne200100]();
}

void sub_24741F66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::vector<std::vector<float>>::~vector[abi:ne200100](&a48);
  std::vector<std::vector<float>>::~vector[abi:ne200100](&a51);
  std::vector<std::vector<float>>::~vector[abi:ne200100](&a54);
  std::vector<std::vector<float>>::~vector[abi:ne200100](&a57);
  std::vector<std::vector<float>>::~vector[abi:ne200100](&a60);
  if (a63)
  {
    a64 = a63;
    operator delete(a63);
  }

  cv3d::aspenbase::concurrency::AsyncManager::~AsyncManager(&STACK[0x280]);
  if (a71 < 0)
  {
    operator delete(a66);
  }

  happly::PLYData::~PLYData(&a72);
  _Unwind_Resume(a1);
}

void happly::Element::addProperty<float>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = v4 - *a3;
  if (a1[3] != v6 >> 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v29 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" has size which does not match element", &v30, &__p);
    MEMORY[0x24C1A1B50](exception, &__p, v29);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = a1[4];
  v8 = a1[5];
  if (v8 != v9)
  {
    v11 = 0;
    do
    {
      while (1)
      {
        v12 = v9[v11];
        v13 = *(v12 + 31);
        if (v13 >= 0)
        {
          v14 = *(v12 + 31);
        }

        else
        {
          v14 = *(v12 + 16);
        }

        v15 = *(a2 + 23);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = a2[1];
        }

        if (v14 == v15)
        {
          v19 = *(v12 + 8);
          v17 = v12 + 8;
          v18 = v19;
          v20 = (v13 >= 0 ? v17 : v18);
          v21 = *a2;
          v22 = v16 >= 0 ? a2 : *a2;
          if (!memcmp(v20, v22, v14))
          {
            break;
          }
        }

        if (++v11 >= v8 - v9)
        {
          goto LABEL_28;
        }
      }

      v23 = &v9[v11];
      v24 = v23 + 1;
      if (v23 + 1 != v8)
      {
        do
        {
          v25 = *(v24 - 1);
          *(v24 - 1) = *v24;
          *v24 = 0;
          if (v25)
          {
            (*(*v25 + 8))(v25);
          }

          ++v24;
        }

        while (v24 != v8);
        v8 = a1[5];
        v23 = v24 - 1;
      }

      while (v8 != v23)
      {
        v27 = *--v8;
        v26 = v27;
        *v8 = 0;
        if (v27)
        {
          (*(*v26 + 8))(v26);
        }
      }

      a1[5] = v23;
      v9 = a1[4];
      v8 = v23;
    }

    while (v11 < v23 - v9);
LABEL_28:
    v5 = *a3;
    v4 = a3[1];
    v6 = v4 - *a3;
  }

  memset(&__p, 0, sizeof(__p));
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  operator new();
}

void sub_24741FD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  _Unwind_Resume(a1);
}

void happly::Element::addProperty<unsigned char>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = v4 - *a3;
  if (v6 != a1[3])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v29 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" has size which does not match element", &v30, &__p);
    MEMORY[0x24C1A1B50](exception, &__p, v29);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = a1[4];
  v8 = a1[5];
  if (v8 != v9)
  {
    v11 = 0;
    do
    {
      while (1)
      {
        v12 = v9[v11];
        v13 = *(v12 + 31);
        if (v13 >= 0)
        {
          v14 = *(v12 + 31);
        }

        else
        {
          v14 = *(v12 + 16);
        }

        v15 = *(a2 + 23);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = a2[1];
        }

        if (v14 == v15)
        {
          v19 = *(v12 + 8);
          v17 = v12 + 8;
          v18 = v19;
          v20 = (v13 >= 0 ? v17 : v18);
          v21 = *a2;
          v22 = v16 >= 0 ? a2 : *a2;
          if (!memcmp(v20, v22, v14))
          {
            break;
          }
        }

        if (++v11 >= v8 - v9)
        {
          goto LABEL_28;
        }
      }

      v23 = &v9[v11];
      v24 = v23 + 1;
      if (v23 + 1 != v8)
      {
        do
        {
          v25 = *(v24 - 1);
          *(v24 - 1) = *v24;
          *v24 = 0;
          if (v25)
          {
            (*(*v25 + 8))(v25);
          }

          ++v24;
        }

        while (v24 != v8);
        v8 = a1[5];
        v23 = v24 - 1;
      }

      while (v8 != v23)
      {
        v27 = *--v8;
        v26 = v27;
        *v8 = 0;
        if (v27)
        {
          (*(*v26 + 8))(v26);
        }
      }

      a1[5] = v23;
      v9 = a1[4];
      v8 = v23;
    }

    while (v11 < v23 - v9);
LABEL_28:
    v5 = *a3;
    v4 = a3[1];
    v6 = v4 - *a3;
  }

  memset(&__p, 0, sizeof(__p));
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  operator new();
}

void sub_247420124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  _Unwind_Resume(a1);
}

void happly::Element::addProperty<unsigned int>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = v4 - *a3;
  if (a1[3] != v6 >> 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v29 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" has size which does not match element", &v30, &__p);
    MEMORY[0x24C1A1B50](exception, &__p, v29);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = a1[4];
  v8 = a1[5];
  if (v8 != v9)
  {
    v11 = 0;
    do
    {
      while (1)
      {
        v12 = v9[v11];
        v13 = *(v12 + 31);
        if (v13 >= 0)
        {
          v14 = *(v12 + 31);
        }

        else
        {
          v14 = *(v12 + 16);
        }

        v15 = *(a2 + 23);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = a2[1];
        }

        if (v14 == v15)
        {
          v19 = *(v12 + 8);
          v17 = v12 + 8;
          v18 = v19;
          v20 = (v13 >= 0 ? v17 : v18);
          v21 = *a2;
          v22 = v16 >= 0 ? a2 : *a2;
          if (!memcmp(v20, v22, v14))
          {
            break;
          }
        }

        if (++v11 >= v8 - v9)
        {
          goto LABEL_28;
        }
      }

      v23 = &v9[v11];
      v24 = v23 + 1;
      if (v23 + 1 != v8)
      {
        do
        {
          v25 = *(v24 - 1);
          *(v24 - 1) = *v24;
          *v24 = 0;
          if (v25)
          {
            (*(*v25 + 8))(v25);
          }

          ++v24;
        }

        while (v24 != v8);
        v8 = a1[5];
        v23 = v24 - 1;
      }

      while (v8 != v23)
      {
        v27 = *--v8;
        v26 = v27;
        *v8 = 0;
        if (v27)
        {
          (*(*v26 + 8))(v26);
        }
      }

      a1[5] = v23;
      v9 = a1[4];
      v8 = v23;
    }

    while (v11 < v23 - v9);
LABEL_28:
    v5 = *a3;
    v4 = a3[1];
    v6 = v4 - *a3;
  }

  memset(&__p, 0, sizeof(__p));
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  operator new();
}

void sub_247420528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  _Unwind_Resume(a1);
}

void happly::Element::addProperty<char>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = v4 - *a3;
  if (v6 != a1[3])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v29 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" has size which does not match element", &v30, &__p);
    MEMORY[0x24C1A1B50](exception, &__p, v29);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = a1[4];
  v8 = a1[5];
  if (v8 != v9)
  {
    v11 = 0;
    do
    {
      while (1)
      {
        v12 = v9[v11];
        v13 = *(v12 + 31);
        if (v13 >= 0)
        {
          v14 = *(v12 + 31);
        }

        else
        {
          v14 = *(v12 + 16);
        }

        v15 = *(a2 + 23);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = a2[1];
        }

        if (v14 == v15)
        {
          v19 = *(v12 + 8);
          v17 = v12 + 8;
          v18 = v19;
          v20 = (v13 >= 0 ? v17 : v18);
          v21 = *a2;
          v22 = v16 >= 0 ? a2 : *a2;
          if (!memcmp(v20, v22, v14))
          {
            break;
          }
        }

        if (++v11 >= v8 - v9)
        {
          goto LABEL_28;
        }
      }

      v23 = &v9[v11];
      v24 = v23 + 1;
      if (v23 + 1 != v8)
      {
        do
        {
          v25 = *(v24 - 1);
          *(v24 - 1) = *v24;
          *v24 = 0;
          if (v25)
          {
            (*(*v25 + 8))(v25);
          }

          ++v24;
        }

        while (v24 != v8);
        v8 = a1[5];
        v23 = v24 - 1;
      }

      while (v8 != v23)
      {
        v27 = *--v8;
        v26 = v27;
        *v8 = 0;
        if (v27)
        {
          (*(*v26 + 8))(v26);
        }
      }

      a1[5] = v23;
      v9 = a1[4];
      v8 = v23;
    }

    while (v11 < v23 - v9);
LABEL_28:
    v5 = *a3;
    v4 = a3[1];
    v6 = v4 - *a3;
  }

  memset(&__p, 0, sizeof(__p));
  if (v4 != v5)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  operator new();
}

void sub_24742091C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  _Unwind_Resume(a1);
}

void happly::PLYData::write(unsigned int *a1, uint64_t *a2, unsigned int a3)
{
  v9[71] = *MEMORY[0x277D85DE8];
  a1[21] = a3;
  happly::PLYData::validate(a1);
  std::ofstream::basic_ofstream(v9, a2);
  if (!*(&v9[4] + *(v9[0] - 24)))
  {
    happly::PLYData::writePLY(a1, v9);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::operator+<char>();
  v6 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" for writing", &v7, &v8);
  MEMORY[0x24C1A1B50](exception, &v8, v6);
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_247420BA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      std::ofstream::~ofstream(&a21);
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  std::ofstream::~ofstream(&a21);
  _Unwind_Resume(a1);
}

double apple3dgs::CFDictionaryGetFloat(apple3dgs *this, const __CFDictionary *a2, const void *a3)
{
  v5 = objc_autoreleasePoolPush();
  valuePtr = 0.0;
  Value = CFDictionaryGetValue(this, a2);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberCGFloatType, &valuePtr);
    v7 = valuePtr;
  }

  else
  {
    v7 = 0.0;
  }

  objc_autoreleasePoolPop(v5);
  return v7;
}

void apple3dgs::CFDictionaryGetString(apple3dgs *this@<X0>, const __CFDictionary *a2@<X1>, void *a3@<X8>)
{
  v7 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(this, a2);
  if (Value)
  {
    CStringPtr = CFStringGetCStringPtr(Value, 0);
    v10 = strlen(CStringPtr);
    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v11 = v10;
    if (v10 >= 0x17)
    {
      operator new();
    }

    *(a3 + 23) = v10;
    if (v10)
    {
      memmove(a3, CStringPtr, v10);
    }

    *(a3 + v11) = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  objc_autoreleasePoolPop(v7);
}

BOOL apple3dgs::CFDictionaryGetBool(apple3dgs *this, const __CFDictionary *a2, const void *a3)
{
  v5 = objc_autoreleasePoolPush();
  value = 0;
  v7 = CFDictionaryGetValueIfPresent(this, a2, &value) && (v6 = CFGetTypeID(value), v6 == CFBooleanGetTypeID()) && CFBooleanGetValue(value) != 0;
  objc_autoreleasePoolPop(v5);
  return v7;
}

void apple3dgs::resize(void *a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7)
{
  v13 = (a5 * a4 * a6);
  v14 = *(a7 + 8);
  v15 = &v14[-*a7];
  v16 = v13 - v15;
  if (v13 <= v15)
  {
    if (v13 < v15)
    {
      *(a7 + 8) = *a7 + v13;
    }
  }

  else
  {
    v17 = *(a7 + 16);
    if (v17 - v14 < v16)
    {
      operator new();
    }

    v18 = &v14[v16];
    bzero(v14, v16);
    *(a7 + 8) = v18;
  }

  v21 = 0x4038000000000000;
  v20[0] = xmmword_247478BF0;
  v20[1] = xmmword_247478C00;
  v20[2] = xmmword_247478C10;
  v20[3] = xmmword_247478C20;
  v20[4] = xmmword_247478BE0;
  avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::CImageResizer(v22, 8, 0, v20);
  avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::resizeImage<unsigned char,unsigned char>(v22, *a1, a2, a3, 0, *a7, a5, a6, 0.0, a4, 0);
  free(v26);
  free(v25);
  free(v24);
  free(v23);
}

void avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::resizeImage<unsigned char,unsigned char>(uint64_t a1, int a2, int a3, int a4, int a5, void *a6, int a7, int a8, double a9, int a10, _BYTE *a11)
{
  if (a3 && a4)
  {
    if (a7 && a8)
    {
      v64 = 0;
      v63 = 0;
      v62 = 0u;
      v65 = 0xFFFFFFFFLL;
      if (a11)
      {
        v11 = a11;
      }

      else
      {
        v11 = v61;
      }

      v60 = &unk_28593DB38;
      if (*(v11 + 12))
      {
        v12 = *(v11 + 12);
      }

      v13 = *(v11 + 10);
      v14 = *(v11 + 11);
      v15 = -a9;
      v16 = (a9 + -1.0) * 0.5 + v13;
      if (a9 > 0.0)
      {
        v15 = a9;
      }

      else
      {
        v17 = *(v11 + 11);
        v16 = *(v11 + 10);
      }

      v18 = v13 + (a3 / a7 + -1.0) * 0.5;
      if (a9 == 0.0)
      {
        v19 = v18;
      }

      else
      {
        v19 = v16;
      }

      if (a9 == 0.0)
      {
        v20 = a3 / a7;
      }

      else
      {
        v20 = v15;
      }

      if (a11)
      {
        v21 = a11;
      }

      else
      {
        v21 = v61;
      }

      if (v21[104] == 1)
      {
        if (a11)
        {
          v22 = a11;
        }

        else
        {
          v22 = v61;
        }

        *(v22 + 4) = xmmword_247478C30;
      }

      *v11 = a10;
      if (a11)
      {
        v23 = a11;
      }

      else
      {
        v23 = v61;
      }

      *(v23 + 1) = a10;
      *(v23 + 8) = xmmword_247478C40;
      v51 = -1;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v46 = 0;
      v49 = 0;
      v47 = 0;
      v48 = 0;
      v42 = 0;
      v45 = 0;
      v43 = 0;
      v44 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      *(a1 + 124);
      v26 = *(v23 + 27);
      if ((v26 & 0x80000000) == 0)
      {
        v24 = v61;
        if (a11)
        {
          v24 = a11;
        }

        v24[5] = v20;
        v24[6] = v19;
        avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::buildFilterSteps(a1, &v46, v11, v50, v26);
      }

      if (a11)
      {
        v25 = a11;
      }

      else
      {
        v25 = v61;
      }

      v30 = -1;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      LODWORD(v27[0]) = 0;
      v28 = 0uLL;
      v27[1] = 0;
      v25[5] = v20;
      v25[6] = v19;
      avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::buildFilterSteps(a1, v27, v11, v29, 0);
    }
  }

  else
  {

    bzero(a6, a8 * a7);
  }
}

void sub_247421E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  avir::CStructArray<avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::CThreadData<unsigned char,unsigned char>>::~CStructArray(&a44);
  free(a72);
  avir::CImageResizerFilterStep<float,float>::CRPosBufArray::~CRPosBufArray(&STACK[0x210]);
  avir::CStructArray<avir::CImageResizerFilterStepINL<float,float>>::~CStructArray(&STACK[0x230]);
  avir::CDSPFracFilterBankLin<float>::~CDSPFracFilterBankLin(&STACK[0x250]);
  _Unwind_Resume(a1);
}

void **avir::CImageResizer<avir::fpclass_def<float,float,avir::CImageResizerDithererDefINL<float>>>::~CImageResizer(void **a1)
{
  free(a1[32]);
  free(a1[25]);
  free(a1[22]);
  free(a1[19]);
  return a1;
}

void apple3dgs::scaleImage(int a1, void **a2, int *a3, int *a4, float a5)
{
  v7 = *a3;
  v8 = (*a3 * a5);
  v9 = *a4;
  v10 = *a4 * a5;
  v11 = v10;
  if (v7 != v8 || v9 != v11)
  {
    memset(__src, 0, sizeof(__src));
    apple3dgs::resize(a2, v7, v9, a1, v8, v10, __src);
    v15 = v8 * a1 * v11;
    v16 = a2[1];
    v17 = (v16 - *a2);
    v18 = v15 - v17;
    if (v15 <= v17)
    {
      if (v15 < v17)
      {
        a2[1] = *a2 + v15;
      }
    }

    else
    {
      if (a2[2] - v16 < v18)
      {
        operator new();
      }

      v19 = &v16[v18];
      bzero(v16, v15 - v17);
      a2[1] = v19;
    }

    v20 = *a2;
    v21 = __src[0];
    memcpy(v20, __src[0], v15);
    *a3 = v8;
    *a4 = v11;
    if (v21)
    {
      operator delete(v21);
    }
  }
}

void sub_247422140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t apple3dgs::ToCIFormat(apple3dgs *this, MTLPixelFormat a2)
{
  v2 = 0;
  LOBYTE(v3) = 0;
  v4 = 0;
  switch(this)
  {
    case 0xAuLL:
    case 0xBuLL:
    case 0xDuLL:
      v5 = MEMORY[0x277CBF9A8];
      goto LABEL_15;
    case 0x14uLL:
    case 0x17uLL:
      v5 = MEMORY[0x277CBF9A0];
      goto LABEL_15;
    case 0x19uLL:
      v5 = MEMORY[0x277CBF9F8];
      goto LABEL_15;
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x21uLL:
      v5 = MEMORY[0x277CBF9B8];
      goto LABEL_15;
    case 0x37uLL:
      v5 = MEMORY[0x277CBF9F0];
      goto LABEL_15;
    case 0x3CuLL:
    case 0x3FuLL:
      v5 = MEMORY[0x277CBF9B0];
      goto LABEL_15;
    case 0x41uLL:
      v5 = MEMORY[0x277CBF9E8];
      goto LABEL_15;
    case 0x46uLL:
    case 0x47uLL:
    case 0x49uLL:
      v5 = MEMORY[0x277CBF9C8];
      goto LABEL_15;
    case 0x50uLL:
    case 0x51uLL:
      v5 = MEMORY[0x277CBF970];
      goto LABEL_15;
    case 0x69uLL:
      v5 = MEMORY[0x277CBF9E0];
      goto LABEL_15;
    case 0x6EuLL:
    case 0x71uLL:
      v5 = MEMORY[0x277CBF9C0];
      goto LABEL_15;
    case 0x73uLL:
      v5 = MEMORY[0x277CBF9D8];
      goto LABEL_15;
    case 0x7DuLL:
      v5 = MEMORY[0x277CBF9D0];
LABEL_15:
      v3 = *v5;
      v4 = v3 & 0xFFFFFF00;
      v2 = 0x100000000;
      break;
    default:
      return v2 | v4 | v3;
  }

  return v2 | v4 | v3;
}

uint64_t apple3dgs::ToMTLFormat(apple3dgs *this)
{
  if (*MEMORY[0x277CBF970] == this)
  {
    return 80;
  }

  if (*MEMORY[0x277CBF968] == this || *MEMORY[0x277CBF9C8] == this || *MEMORY[0x277CBF960] == this)
  {
    return 70;
  }

  if (*MEMORY[0x277CBF9D8] == this || *MEMORY[0x277CBF9C0] == this)
  {
    return 115;
  }

  if (*MEMORY[0x277CBF9D0] == this)
  {
    return 125;
  }

  if (*MEMORY[0x277CBF958] == this)
  {
    return 1;
  }

  if (*MEMORY[0x277CBF9A8] == this)
  {
    return 10;
  }

  if (*MEMORY[0x277CBF9A0] == this)
  {
    return 20;
  }

  if (*MEMORY[0x277CBF9F8] == this)
  {
    return 25;
  }

  if (*MEMORY[0x277CBF9F0] == this)
  {
    return 55;
  }

  if (*MEMORY[0x277CBF9B8] == this)
  {
    return 30;
  }

  if (*MEMORY[0x277CBF9B0] == this)
  {
    return 60;
  }

  if (*MEMORY[0x277CBF9E8] == this)
  {
    return 65;
  }

  if (*MEMORY[0x277CBF9E0] == this)
  {
    return 105;
  }

  return 0;
}

id apple3dgs::LoadImage(uint64_t *a1, void *a2, uint64_t a3)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v29 = *MEMORY[0x277CBFA08];
  v30[0] = MEMORY[0x277CBEC38];
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  v6 = MEMORY[0x277CBEBC0];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{a1, v27}];
  v8 = [v6 fileURLWithPath:v7];

  v9 = [MEMORY[0x277CBF758] imageWithContentsOfURL:v8 options:v28];
  if ([v9 colorSpace] && (Name = CGColorSpaceGetName(objc_msgSend(v9, "colorSpace")), apple3dgs::CFStringEquals(Name, *MEMORY[0x277CBF3E0], v11)))
  {
    v12 = MEMORY[0x277CBF490];
  }

  else
  {
    v12 = MEMORY[0x277CBF4A8];
  }

  v13 = CGColorSpaceCreateWithName(*v12);
  v14 = MEMORY[0x277CD7058];
  [v9 extent];
  v16 = v15;
  [v9 extent];
  v18 = [v14 texture2DDescriptorWithPixelFormat:a3 width:v16 height:v17 mipmapped:1];
  [v18 setUsage:3];
  v19 = [v5 newTextureWithDescriptor:v18];
  v20 = [v5 newTextureWithDescriptor:v18];
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals))
  {
    v26 = MTLCreateSystemDefaultDevice();
    MetalContext::MetalContext(&unk_27EE51148, v26, 0);

    __cxa_atexit(MetalContext::~MetalContext, &unk_27EE51148, &dword_2473FC000);
    __cxa_guard_release(&_MergedGlobals);
  }

  v21 = [v5 newCommandQueue];
  v22 = [v21 commandBuffer];
  [v22 setLabel:@"A3DGS.loadImage"];
  v23 = [MEMORY[0x277CBF740] contextWithMTLCommandQueue:v21];
  [v9 extent];
  [v23 render:v9 toMTLTexture:v19 commandBuffer:v22 bounds:v13 colorSpace:?];
  apple3dgs::FlipYAxisMTLTexture(v19, v20, &unk_27EE51148, v22);
  [v22 commit];
  [v22 waitUntilCompleted];

  v24 = *MEMORY[0x277D85DE8];

  return v20;
}

void sub_2474228E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  __cxa_guard_abort(&_MergedGlobals);

  _Unwind_Resume(a1);
}

uint64_t apple3dgs::SaveImage(void *a1, void *a2, int a3, CGColorSpace *a4, void *a5)
{
  v31[3] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a5;
  v12 = a4;
  if (!a4)
  {
    v12 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4A8]);
  }

  v13 = MEMORY[0x277CBF758];
  v14 = *MEMORY[0x277CBFA58];
  v30[0] = *MEMORY[0x277CBFA40];
  v30[1] = v14;
  v31[0] = v12;
  v31[1] = @"YES";
  v30[2] = *MEMORY[0x277CBFA60];
  v31[2] = @"YES";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v16 = [v13 imageWithMTLTexture:v9 options:v15];

  v17 = objc_alloc_init(MEMORY[0x277CBF740]);
  v18 = [v9 pixelFormat];
  v20 = apple3dgs::ToCIFormat(v18, v19);
  if ((v20 & 0x100000000) == 0)
  {
    goto LABEL_4;
  }

  switch(a3)
  {
    case 2:
      v27 = v11;
      v21 = [v17 writeTIFFRepresentationOfImage:v16 toURL:v10 format:v20 colorSpace:v12 options:MEMORY[0x277CBEC10] error:&v27];
      v22 = v27;

      goto LABEL_11;
    case 1:
      v28 = v11;
      v21 = [v17 writeJPEGRepresentationOfImage:v16 toURL:v10 colorSpace:v12 options:&unk_28593F458 error:&v28];
      v22 = v28;

      goto LABEL_11;
    case 0:
      v29 = v11;
      v21 = [v17 writePNGRepresentationOfImage:v16 toURL:v10 format:v20 colorSpace:v12 options:MEMORY[0x277CBEC10] error:&v29];
      v22 = v29;

LABEL_11:
      v11 = v22;
      goto LABEL_12;
  }

  if (v11)
  {
    v25 = [v11 description];
    NSLog(&stru_28593E428.isa, v25);

    v26 = [v11 localizedFailureReason];
    NSLog(&stru_28593E428.isa, v26);

LABEL_4:
    v21 = 0;
    goto LABEL_12;
  }

  if (!a4)
  {
    CGColorSpaceRelease(v12);
  }

  v11 = 0;
  v21 = 1;
LABEL_12:

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

void sub_247422C5C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(a1);
    v11 = [v10 name];
    NSLog(&stru_28593E668.isa);

    v12 = [v10 reason];
    NSLog(&cfstr_Reason.isa);

    objc_end_catch();
    JUMPOUT(0x247422BA4);
  }

  _Unwind_Resume(a1);
}

uint64_t apple3dgs::GetFileFormat(const std::__fs::filesystem::path *this, const std::__fs::filesystem::path *a2)
{
  v2 = std::__fs::filesystem::path::__extension(this);
  if (v2.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v2.__size_ >= 0x17)
  {
    operator new();
  }

  size = v2.__size_;
  if (v2.__size_)
  {
    memmove(&__dst, v2.__data_, v2.__size_);
  }

  v24[v2.__size_ - 16] = 0;
  v3 = *(&__dst + 1);
  v4 = __dst;
  v20 = *v24;
  HIBYTE(v20) = v24[3];
  v5 = size;
  if (size < 0)
  {
    std::string::__init_copy_ctor_external(&v21, __dst, *(&__dst + 1));
    v7 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    v3 = v21.__r_.__value_.__l.__size_;
    v6 = v21.__r_.__value_.__r.__words[0];
  }

  else
  {
    *&v21.__r_.__value_.__l.__data_ = __dst;
    LODWORD(v21.__r_.__value_.__r.__words[2]) = v20;
    *(&v21.__r_.__value_.__r.__words[2] + 3) = *&v24[3];
    *(&v21.__r_.__value_.__s + 23) = size;
    v6 = __dst;
    v7 = size;
  }

  v8 = v7;
  v9 = (&v21 + v7);
  if (v8 >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = (v6 + v3);
  }

  if (v8 >= 0)
  {
    v11 = &v21;
  }

  else
  {
    v11 = v6;
  }

  for (; v11 != v10; v11 = (v11 + 1))
  {
    v11->__r_.__value_.__s.__data_[0] = __tolower(v11->__r_.__value_.__s.__data_[0]);
  }

  __p = v21;
  memset(&v21, 0, sizeof(v21));
  if ((v5 & 0x80000000) == 0)
  {
    v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_20;
    }

LABEL_34:
    if (__p.__r_.__value_.__l.__size_ == 4 && *__p.__r_.__value_.__l.__data_ == 1735290926)
    {
      v18 = 0;
      v17 = 0x100000000;
      if ((v12 & 0x80) != 0)
      {
        goto LABEL_70;
      }

      return v18 | v17;
    }

    if (__p.__r_.__value_.__l.__size_ == 4 && *__p.__r_.__value_.__l.__data_ == 1735420462)
    {
      v17 = 0x100000000;
      v18 = 1;
      goto LABEL_70;
    }

    if (__p.__r_.__value_.__l.__size_ == 5 && *__p.__r_.__value_.__l.__data_ == 1701866030 && *(__p.__r_.__value_.__r.__words[0] + 4) == 103)
    {
      v17 = 0x100000000;
      v18 = 1;
      if ((v12 & 0x80) == 0)
      {
        return v18 | v17;
      }

      goto LABEL_70;
    }

    if (__p.__r_.__value_.__l.__size_ == 4 && *__p.__r_.__value_.__l.__data_ == 1718187054)
    {
LABEL_57:
      v17 = 0x100000000;
      v18 = 2;
      if ((v12 & 0x80) != 0)
      {
        goto LABEL_70;
      }

      return v18 | v17;
    }

    if (__p.__r_.__value_.__l.__size_ == 5 && *__p.__r_.__value_.__l.__data_ == 1718187054 && *(__p.__r_.__value_.__r.__words[0] + 4) == 102)
    {
      v17 = 0x100000000;
      v18 = 2;
      goto LABEL_70;
    }

    if (__p.__r_.__value_.__l.__size_ != 4 || *__p.__r_.__value_.__l.__data_ != 879783214)
    {
      goto LABEL_64;
    }

LABEL_52:
    v17 = 0x100000000;
    v18 = 3;
    if ((v12 & 0x80) == 0)
    {
      return v18 | v17;
    }

LABEL_70:
    operator delete(__p.__r_.__value_.__l.__data_);
    return v18 | v17;
  }

  operator delete(v4);
  v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_34;
  }

LABEL_20:
  if (v12 != 4)
  {
    if (v12 != 5)
    {
      goto LABEL_64;
    }

    if (LODWORD(__p.__r_.__value_.__l.__data_) == 1701866030 && __p.__r_.__value_.__s.__data_[4] == 103)
    {
      return 0x100000001;
    }

    if (LODWORD(__p.__r_.__value_.__l.__data_) != 1718187054 || __p.__r_.__value_.__s.__data_[4] != 102)
    {
LABEL_64:
      v17 = 0;
      v18 = 0;
      if ((v12 & 0x80) == 0)
      {
        return v18 | v17;
      }

      goto LABEL_70;
    }

    goto LABEL_57;
  }

  v17 = 0x100000000;
  if (LODWORD(__p.__r_.__value_.__l.__data_) == 1735290926)
  {
    return 0x100000000;
  }

  if (LODWORD(__p.__r_.__value_.__l.__data_) == 1735420462)
  {
    v18 = 1;
    return v18 | v17;
  }

  if (LODWORD(__p.__r_.__value_.__l.__data_) != 1718187054)
  {
    if (LODWORD(__p.__r_.__value_.__l.__data_) != 879783214)
    {
      goto LABEL_64;
    }

    goto LABEL_52;
  }

  return 0x100000002;
}

void sub_24742317C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_3:
    _Unwind_Resume(a1);
  }

  operator delete(v15);
  _Unwind_Resume(a1);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t apple3dgs::SaveImage(void *a1, const std::__fs::filesystem::path *a2, CGColorSpace *a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  FileFormat = apple3dgs::GetFileFormat(a2, v9);
  v11 = FileFormat;
  if ((FileFormat & 0x100000000) != 0)
  {
    v13 = MEMORY[0x277CBEBC0];
    if ((a2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = a2->__pn_.__r_.__value_.__r.__words[0];
    }

    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
    v16 = [v13 fileURLWithPath:v15];
    v12 = apple3dgs::SaveImage(v7, v16, v11, a3, v8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id apple3dgs::GetTemporaryDirectory(apple3dgs *this)
{
  memset(&__p, 0, sizeof(__p));
  std::string::append[abi:ne200100]<char const*,0>(&__p, "/tmp/corere3dgs", "");
  std::__fs::filesystem::__status(&__p, 0);
  if (v8 == 255 || v8 == 0)
  {
    std::__fs::filesystem::__create_directories(&__p, 0);
  }

  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v4 = [v2 initWithCString:p_p encoding:4];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = v4;
    operator delete(__p.__r_.__value_.__l.__data_);
    v4 = v6;
  }

  return v4;
}

void sub_247423434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

apple3dgs::Asset *apple3dgs::Asset::Asset(apple3dgs::Asset *this, const apple3dgs::Asset *a2)
{
  MetalContext::MetalContext(this, a2);
  *(this + 15) = objc_alloc_init(MEMORY[0x277CCAD78]);
  *(this + 16) = *(a2 + 16);
  v4 = *(a2 + 152);
  *(this + 136) = *(a2 + 136);
  *(this + 152) = v4;
  *(this + 21) = *(a2 + 21);
  v5 = *(a2 + 12);
  *(this + 11) = *(a2 + 11);
  *(this + 12) = v5;
  *(this + 26) = *(a2 + 26);
  v6 = *(a2 + 232);
  *(this + 216) = *(a2 + 216);
  *(this + 232) = v6;
  *(this + 31) = *(a2 + 31);
  v7 = *(a2 + 17);
  *(this + 16) = *(a2 + 16);
  *(this + 17) = v7;
  *(this + 36) = *(a2 + 36);
  v8 = *(a2 + 312);
  *(this + 296) = *(a2 + 296);
  *(this + 312) = v8;
  v9 = *(a2 + 25);
  v11 = *(a2 + 22);
  v10 = *(a2 + 23);
  *(this + 24) = *(a2 + 24);
  *(this + 25) = v9;
  *(this + 22) = v11;
  *(this + 23) = v10;
  v12 = *(a2 + 29);
  v14 = *(a2 + 26);
  v13 = *(a2 + 27);
  *(this + 28) = *(a2 + 28);
  *(this + 29) = v12;
  *(this + 26) = v14;
  *(this + 27) = v13;
  v15 = *(a2 + 33);
  v17 = *(a2 + 30);
  v16 = *(a2 + 31);
  *(this + 32) = *(a2 + 32);
  *(this + 33) = v15;
  *(this + 30) = v17;
  *(this + 31) = v16;
  *(this + 21) = *(a2 + 21);
  v18 = *(a2 + 34);
  *(this + 556) = *(a2 + 556);
  *(this + 34) = v18;
  *(this + 72) = *(a2 + 72);
  *(this + 73) = *(a2 + 73);
  *(this + 37) = *(a2 + 37);
  v20 = *(a2 + 76);
  *(this + 154) = *(a2 + 154);
  *(this + 76) = v20;
  *(this + 79) = 0;
  *(this + 80) = 0;
  *(this + 78) = 0;
  v21 = *(a2 + 78);
  v22 = *(a2 + 79);
  if (v22 != v21)
  {
    if (((v22 - v21) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  *(this + 81) = 0;
  CopyWithSameName = apple3dgs::CGColorSpaceCreateCopyWithSameName(*(a2 + 81), v19);
  v24 = *(this + 81);
  if (v24 != CopyWithSameName)
  {
    CGColorSpaceRelease(v24);
    *(this + 81) = CopyWithSameName;
    CGColorSpaceRetain(CopyWithSameName);
    *(this + 139) = apple3dgs::CGColorSpaceGetTransferFunction(*(this + 81), v25);
  }

  CGColorSpaceRelease(CopyWithSameName);
  return this;
}

void sub_247423650(_Unwind_Exception *a1)
{
  v4 = *(v2 + 496);
  if (v4)
  {
    v1[5].compute_pipelines.__table_.__bucket_list_.__ptr_ = v4;
    operator delete(v4);
  }

  apple3dgs::Asset::Derived::~Derived((v2 + 448));
  apple3dgs::Asset::Attributes::~Attributes(v2);

  MetalContext::~MetalContext(v1);
  _Unwind_Resume(a1);
}

void MetalContext::MetalContext(MetalContext *this, const MetalContext *a2)
{
  this->device = a2->device;
  this->library = a2->library;
  this->archive = a2->archive;
  this->commandQueue = a2->commandQueue;
  std::unordered_map<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>::unordered_map(&this->compute_pipelines, &a2->compute_pipelines);
  std::unordered_map<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>::unordered_map(&this->render_pipelines, &a2->render_pipelines);
  this->force_binary_archive_ = a2->force_binary_archive_;
}

void sub_247423708(_Unwind_Exception *a1)
{
  std::unordered_map<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>::~unordered_map[abi:ne200100]((v1 + 4));

  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__do_rehash<true>(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__emplace_unique_key_args<std::string,std::pair<std::string const,objc_object  {objcproto23MTLComputePipelineState}*> const&>(a1, (i + 2));
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__emplace_unique_key_args<std::string,std::pair<std::string const,objc_object  {objcproto23MTLComputePipelineState}*> const&>(void *a1, uint64_t a2)
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

void sub_247423C8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_247423CA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,void *>,std::__hash_node_destructor<std::allocator<void *>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    std::__hash_table<std::__hash_value_type<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong}>,std::__unordered_map_hasher<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto23MTLComputePipelineState}* {__strong},std::equal_to,std::hash,true>,std::allocator<objc_object  {objcproto23MTLComputePipelineState}* {__strong}>>::__do_rehash<true>(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>,std::__unordered_map_hasher<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>::__emplace_unique_key_args<std::string,std::pair<std::string const,objc_object  {objcproto20MTLDepthStencilState}*> const&>(a1, (i + 2));
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>,std::__unordered_map_hasher<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,objc_object  {objcproto20MTLDepthStencilState}* {__strong},std::hash<std::string>,std::__unordered_map_hasher,true>,std::allocator<objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>::__emplace_unique_key_args<std::string,std::pair<std::string const,objc_object  {objcproto20MTLDepthStencilState}*> const&>(void *a1, uint64_t a2)
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

void sub_24742420C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_247424220(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_value_type<std::string,std::tuple<objc_object  {objcproto22MTLRenderPipelineState}* {__strong},objc_object  {objcproto20MTLDepthStencilState}* {__strong}>>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t happly::PLYData::PLYData(uint64_t a1, uint64_t a2, int a3)
{
  v21[19] = *MEMORY[0x277D85DE8];
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = xmmword_247478BD0;
  if (a3)
  {
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "PLY parser: Reading ply file: ", 30);
    v7 = *(a2 + 23);
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    if (v7 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v19, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v19);
    std::ostream::put();
    std::ostream::flush();
  }

  std::ifstream::basic_ifstream(&v19, a2);
  if ((v20[*(v19.__locale_ - 3) + 16] & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    MEMORY[0x24C1A1B50](exception, v18);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  happly::PLYData::parseHeader(a1, &v19, a3);
  v12 = *(a1 + 80);
  if (v12)
  {
    if (v12 == 2)
    {
      happly::PLYData::parseBinaryBigEndian(a1, &v19, a3);
    }

    else if (v12 == 1)
    {
      happly::PLYData::parseBinary(a1, &v19, a3);
    }
  }

  else
  {
    happly::PLYData::parseASCII(a1, &v19, a3);
  }

  if (a3)
  {
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "  - Finished parsing file.", 26);
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v14 = std::locale::use_facet(v18, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(v18);
    std::ostream::put();
    std::ostream::flush();
  }

  v19.__locale_ = *MEMORY[0x277D82808];
  *(&v19 + *(v19.__locale_ - 3)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x24C1A1C20](v20);
  std::istream::~istream();
  MEMORY[0x24C1A1F80](v21);
  v15 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2474245B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ifstream::~ifstream(&a15);
      std::vector<happly::Element>::~vector[abi:ne200100](v15 + 6);
      std::vector<std::string>::~vector[abi:ne200100](v15 + 3);
      std::vector<std::string>::~vector[abi:ne200100](v15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2)
{
  a1[59] = 0;
  v4 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v5 = *(MEMORY[0x277D82808] + 16);
  v6 = *(MEMORY[0x277D82808] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x277D82858] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x24C1A1C10](a1 + 2);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_2474247D8(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x24C1A1F80](v1);
  _Unwind_Resume(a1);
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x277D82808];
  v3 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x24C1A1C20](a1 + 2);
  std::istream::~istream();
  MEMORY[0x24C1A1F80](a1 + 53);
  return a1;
}

void ***std::vector<happly::Element>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          v6 = *(v3 - 2);
          v7 = *(v3 - 3);
          if (v6 != v5)
          {
            do
            {
              v9 = *--v6;
              v8 = v9;
              *v6 = 0;
              if (v9)
              {
                (*(*v8 + 8))(v8);
              }
            }

            while (v6 != v5);
            v7 = *(v3 - 3);
          }

          *(v3 - 2) = v5;
          operator delete(v7);
        }

        v10 = v3 - 7;
        if (*(v3 - 33) < 0)
        {
          operator delete(*v10);
        }

        v3 -= 7;
      }

      while (v10 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void happly::PLYData::parseHeader(uint64_t a1, uint64_t *a2, int a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v122 = 0;
  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v6 = std::locale::use_facet(&__s1, MEMORY[0x277D82680]);
  v7 = (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&__s1);
  std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, __p, v7);
  if (SHIBYTE(v131) < 0)
  {
    if (v130 != 3)
    {
      operator delete(__s1.__locale_);
      goto LABEL_318;
    }

    v10 = *__s1.__locale_ != 27760 || *(__s1.__locale_ + 2) != 121;
    operator delete(__s1.__locale_);
    if (v10)
    {
LABEL_318:
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x24C1A1B40](exception, "PLY parser: File does not appear to be ply file. First line should be 'ply'");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    if (SHIBYTE(v131) != 3)
    {
      goto LABEL_318;
    }

    if (LOWORD(__s1.__locale_) != 27760 || BYTE2(__s1.__locale_) != 121)
    {
      goto LABEL_318;
    }
  }

  if (SHIBYTE(v122) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = 0;
  __p[1] = 0;
  v122 = 0;
  std::ios_base::getloc((a2 + *(*a2 - 24)));
  v11 = std::locale::use_facet(&__s1, MEMORY[0x277D82680]);
  v12 = (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&__s1);
  std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, __p, v12);
  locale = __s1.__locale_;
  if (v130 - __s1.__locale_ != 72)
  {
    v113 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x24C1A1B40](v113, "PLY parser: bad format line");
    __cxa_throw(v113, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if ((*(__s1.__locale_ + 23) & 0x80000000) == 0)
  {
    v14 = *__s1.__locale_;
    v128.__r_.__value_.__r.__words[2] = *(__s1.__locale_ + 2);
    *&v128.__r_.__value_.__l.__data_ = v14;
    if ((*(__s1.__locale_ + 47) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    std::string::__init_copy_ctor_external(&v127, *(locale + 3), *(locale + 4));
    locale = __s1.__locale_;
    if ((*(__s1.__locale_ + 71) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  std::string::__init_copy_ctor_external(&v128, *__s1.__locale_, *(__s1.__locale_ + 1));
  locale = __s1.__locale_;
  if (*(__s1.__locale_ + 47) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v127 = *(locale + 1);
  if ((*(locale + 71) & 0x80000000) == 0)
  {
LABEL_22:
    v126 = *(locale + 2);
    goto LABEL_26;
  }

LABEL_25:
  std::string::__init_copy_ctor_external(&v126, *(locale + 6), *(locale + 7));
LABEL_26:
  if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) == 6)
    {
      v15 = &v128;
      goto LABEL_31;
    }

LABEL_307:
    v111 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x24C1A1B40](v111, "PLY parser: bad format line");
LABEL_308:
    __cxa_throw(v111, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v128.__r_.__value_.__l.__size_ != 6)
  {
    goto LABEL_307;
  }

  v15 = v128.__r_.__value_.__r.__words[0];
LABEL_31:
  data = v15->__r_.__value_.__l.__data_;
  v17 = WORD2(v15->__r_.__value_.__r.__words[0]);
  if (data != 1836216166 || v17 != 29793)
  {
    goto LABEL_307;
  }

  if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v127.__r_.__value_.__r.__words[2]) != 5)
    {
      if (HIBYTE(v127.__r_.__value_.__r.__words[2]) != 17)
      {
        if (HIBYTE(v127.__r_.__value_.__r.__words[2]) != 20)
        {
          goto LABEL_307;
        }

        v19 = v127.__r_.__value_.__r.__words[0] == 0x6C5F7972616E6962 && v127.__r_.__value_.__l.__size_ == 0x6E655F656C747469;
        if (!v19 || LODWORD(v127.__r_.__value_.__r.__words[2]) != 1851877732)
        {
          goto LABEL_307;
        }

        goto LABEL_59;
      }

      v25 = &v127;
      goto LABEL_68;
    }

    if (LODWORD(v127.__r_.__value_.__l.__data_) != 1768125281 || v127.__r_.__value_.__s.__data_[4] != 105)
    {
      goto LABEL_307;
    }

LABEL_83:
    *(a1 + 80) = 0;
    if ((a3 & 1) == 0)
    {
      goto LABEL_86;
    }

    v23 = "  - Type: ascii";
    v24 = 15;
    goto LABEL_85;
  }

  if (v127.__r_.__value_.__l.__size_ == 5)
  {
    if (*v127.__r_.__value_.__l.__data_ != 1768125281 || *(v127.__r_.__value_.__r.__words[0] + 4) != 105)
    {
      goto LABEL_307;
    }

    goto LABEL_83;
  }

  if (v127.__r_.__value_.__l.__size_ != 17)
  {
    if (v127.__r_.__value_.__l.__size_ != 20)
    {
      goto LABEL_307;
    }

    v21 = *v127.__r_.__value_.__l.__data_ == 0x6C5F7972616E6962 && *(v127.__r_.__value_.__r.__words[0] + 8) == 0x6E655F656C747469;
    if (!v21 || *(v127.__r_.__value_.__r.__words[0] + 16) != 1851877732)
    {
      goto LABEL_307;
    }

LABEL_59:
    *(a1 + 80) = 1;
    if ((a3 & 1) == 0)
    {
      goto LABEL_86;
    }

    v23 = "  - Type: binary";
    v24 = 16;
    goto LABEL_85;
  }

  v25 = v127.__r_.__value_.__r.__words[0];
LABEL_68:
  v27 = v25->__r_.__value_.__r.__words[0];
  size = v25->__r_.__value_.__l.__size_;
  v29 = v25->__r_.__value_.__s.__data_[16];
  if (v27 != 0x625F7972616E6962 || size != 0x6169646E655F6769 || v29 != 110)
  {
    goto LABEL_307;
  }

  *(a1 + 80) = 2;
  if (a3)
  {
    v23 = "  - Type: binary big endian";
    v24 = 27;
LABEL_85:
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], v23, v24);
    std::ios_base::getloc((v33 + *(*v33 - 24)));
    v34 = std::locale::use_facet(&v132, MEMORY[0x277D82680]);
    (v34->__vftable[2].~facet_0)(v34, 10);
    std::locale::~locale(&v132);
    std::ostream::put();
    std::ostream::flush();
  }

LABEL_86:
  v35 = HIBYTE(v126.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v126.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) == 3)
    {
      v36 = &v126;
      goto LABEL_91;
    }

LABEL_305:
    v111 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x24C1A1B40](v111, "PLY parser: encountered file with version != 1.0. Don't know how to parse that");
    goto LABEL_308;
  }

  if (v126.__r_.__value_.__l.__size_ != 3)
  {
    goto LABEL_305;
  }

  v36 = v126.__r_.__value_.__r.__words[0];
LABEL_91:
  data_low = LOWORD(v36->__r_.__value_.__l.__data_);
  v38 = v36->__r_.__value_.__s.__data_[2];
  if (data_low != 11825 || v38 != 48)
  {
    goto LABEL_305;
  }

  if (a3)
  {
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "  - Version: ", 13);
    if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v126;
    }

    else
    {
      v41 = v126.__r_.__value_.__r.__words[0];
    }

    if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(v126.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = v126.__r_.__value_.__l.__size_;
    }

    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v41, v42);
    std::ios_base::getloc((v43 + *(*v43 - 24)));
    v44 = std::locale::use_facet(&v132, MEMORY[0x277D82680]);
    (v44->__vftable[2].~facet_0)(v44, 10);
    std::locale::~locale(&v132);
    std::ostream::put();
    std::ostream::flush();
    v35 = HIBYTE(v126.__r_.__value_.__r.__words[2]);
  }

  if (v35 < 0)
  {
    operator delete(v126.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_106:
      if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_118;
    }
  }

  else if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_106;
  }

  operator delete(v127.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_107:
    v45 = __s1.__locale_;
    if (__s1.__locale_)
    {
      goto LABEL_108;
    }

LABEL_119:
    if ((SHIBYTE(v122) & 0x80000000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_110;
  }

LABEL_118:
  operator delete(v128.__r_.__value_.__l.__data_);
  v45 = __s1.__locale_;
  if (!__s1.__locale_)
  {
    goto LABEL_119;
  }

LABEL_108:
  v46 = v130;
  if (v130 != v45)
  {
    do
    {
      v47 = *(v46 - 1);
      v46 -= 3;
      if (v47 < 0)
      {
        operator delete(*v46);
      }
    }

    while (v46 != v45);
    v130 = v45;
    operator delete(__s1.__locale_);
    if ((SHIBYTE(v122) & 0x80000000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_110;
  }

  v130 = v45;
  operator delete(v45);
  if (SHIBYTE(v122) < 0)
  {
LABEL_110:
    operator delete(__p[0]);
  }

LABEL_120:
  v120 = &v122;
  v48 = MEMORY[0x277D82680];
  v49 = *(MEMORY[0x277D82820] + 24);
  v118 = v49;
  v119 = *MEMORY[0x277D82820];
  do
  {
    v50 = *a2;
    if (*(a2 + *(*a2 - 24) + 32))
    {
      break;
    }

    __s1.__locale_ = 0;
    v130 = 0;
    v131 = 0;
    std::ios_base::getloc((a2 + *(v50 - 24)));
    v51 = std::locale::use_facet(__p, v48);
    v52 = (v51->__vftable[2].~facet_0)(v51, 10);
    std::locale::~locale(__p);
    std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &__s1, v52);
    HIBYTE(v122) = 7;
    strcpy(__p, "comment");
    v53 = SHIBYTE(v131);
    if ((SHIBYTE(v131) & 0x8000000000000000) != 0)
    {
      if (v130 >= 7)
      {
        v56 = 7;
      }

      else
      {
        v56 = v130;
      }

      v55 = memcmp(__s1.__locale_, __p, v56);
      if (v56 != 7)
      {
        goto LABEL_139;
      }
    }

    else
    {
      if (SHIBYTE(v131) >= 7)
      {
        v54 = 7;
      }

      else
      {
        v54 = SHIBYTE(v131);
      }

      v55 = memcmp(&__s1, __p, v54);
      if (v54 != 7)
      {
        goto LABEL_139;
      }
    }

    if (!v55)
    {
      if ((v53 & 0x80000000) != 0)
      {
        v53 = v130;
        if (v130 < 8)
        {
LABEL_300:
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        p_s1 = __s1.__locale_;
        if (v130 <= 7)
        {
LABEL_301:
          std::string::__throw_length_error[abi:ne200100]();
        }
      }

      else
      {
        if (v53 <= 7)
        {
          goto LABEL_300;
        }

        p_s1 = &__s1;
        if (v53 <= 7)
        {
          goto LABEL_301;
        }
      }

      v65 = v53 - 8;
      if ((v53 - 8) >= 0x17)
      {
        operator new();
      }

      HIBYTE(v122) = v53 - 8;
      if (v53 == 8)
      {
        LOBYTE(__p[0]) = 0;
        if (!a3)
        {
          goto LABEL_175;
        }
      }

      else
      {
        memmove(__p, p_s1 + 8, v65);
        *(__p + v65) = 0;
        if (!a3)
        {
          goto LABEL_175;
        }
      }

      v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "  - Comment: ", 13);
      if (v122 >= 0)
      {
        v67 = __p;
      }

      else
      {
        v67 = __p[0];
      }

      if (v122 >= 0)
      {
        v68 = HIBYTE(v122);
      }

      else
      {
        v68 = __p[1];
      }

      v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, v67, v68);
      std::ios_base::getloc((v69 + *(*v69 - 24)));
      v70 = std::locale::use_facet(&v128, v48);
      (v70->__vftable[2].~facet_0)(v70, 10);
      std::locale::~locale(&v128);
      std::ostream::put();
      std::ostream::flush();
LABEL_175:
      v71 = *(a1 + 8);
      if (v71 >= *(a1 + 16))
      {
        *(a1 + 8) = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, __p);
        if ((SHIBYTE(v122) & 0x80000000) == 0)
        {
          goto LABEL_295;
        }
      }

      else
      {
        if (SHIBYTE(v122) < 0)
        {
          std::string::__init_copy_ctor_external(*(a1 + 8), __p[0], __p[1]);
        }

        else
        {
          v72 = *__p;
          *(v71 + 16) = v122;
          *v71 = v72;
        }

        *(a1 + 8) = v71 + 24;
        *(a1 + 8) = v71 + 24;
        if ((SHIBYTE(v122) & 0x80000000) == 0)
        {
          goto LABEL_295;
        }
      }

      goto LABEL_242;
    }

LABEL_139:
    HIBYTE(v122) = 8;
    strcpy(__p, "obj_info");
    if ((v53 & 0x80000000) != 0)
    {
      if (v130 >= 8)
      {
        v60 = 8;
      }

      else
      {
        v60 = v130;
      }

      v59 = memcmp(__s1.__locale_, __p, v60);
      if (v60 != 8)
      {
        goto LABEL_154;
      }
    }

    else
    {
      if (v53 >= 8)
      {
        v58 = 8;
      }

      else
      {
        v58 = v53;
      }

      v59 = memcmp(&__s1, __p, v58);
      if (v58 != 8)
      {
        goto LABEL_154;
      }
    }

    if (!v59)
    {
      if ((v53 & 0x80000000) != 0)
      {
        if (v130 < 9)
        {
LABEL_303:
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v61 = __s1.__locale_;
        v62 = v130 - 9;
        if (v130 - 9 >= 0x7FFFFFFFFFFFFFF8)
        {
LABEL_302:
          std::string::__throw_length_error[abi:ne200100]();
        }
      }

      else
      {
        if (v53 <= 8)
        {
          goto LABEL_303;
        }

        v61 = &__s1;
        v62 = v53 - 9;
        if ((v53 - 9) >= 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_302;
        }
      }

      if (v62 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v122) = v62;
      if (!v62)
      {
        LOBYTE(__p[0]) = 0;
        if (!a3)
        {
          goto LABEL_209;
        }

LABEL_202:
        v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "  - obj_info: ", 14);
        if (v122 >= 0)
        {
          v78 = __p;
        }

        else
        {
          v78 = __p[0];
        }

        if (v122 >= 0)
        {
          v79 = HIBYTE(v122);
        }

        else
        {
          v79 = __p[1];
        }

        v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, v78, v79);
        std::ios_base::getloc((v80 + *(*v80 - 24)));
        v81 = std::locale::use_facet(&v128, v48);
        (v81->__vftable[2].~facet_0)(v81, 10);
        std::locale::~locale(&v128);
        std::ostream::put();
        std::ostream::flush();
        goto LABEL_209;
      }

      memmove(__p, v61 + 9, v62);
      *(__p + v62) = 0;
      if (a3)
      {
        goto LABEL_202;
      }

LABEL_209:
      v82 = *(a1 + 32);
      if (v82 >= *(a1 + 40))
      {
        *(a1 + 32) = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1 + 24, __p);
        if ((SHIBYTE(v122) & 0x80000000) == 0)
        {
          goto LABEL_295;
        }
      }

      else
      {
        if (SHIBYTE(v122) < 0)
        {
          std::string::__init_copy_ctor_external(*(a1 + 32), __p[0], __p[1]);
        }

        else
        {
          v83 = *__p;
          *(v82 + 16) = v122;
          *v82 = v83;
        }

        *(a1 + 32) = v82 + 24;
        *(a1 + 32) = v82 + 24;
        if ((SHIBYTE(v122) & 0x80000000) == 0)
        {
          goto LABEL_295;
        }
      }

LABEL_242:
      v91 = __p[0];
      goto LABEL_297;
    }

LABEL_154:
    HIBYTE(v122) = 7;
    strcpy(__p, "element");
    if ((v53 & 0x80000000) != 0)
    {
      if (v130 >= 7)
      {
        v73 = 7;
      }

      else
      {
        v73 = v130;
      }

      v64 = memcmp(__s1.__locale_, __p, v73);
      if (v73 != 7)
      {
        goto LABEL_188;
      }
    }

    else
    {
      if (v53 >= 7)
      {
        v63 = 7;
      }

      else
      {
        v63 = v53;
      }

      v64 = memcmp(&__s1, __p, v63);
      if (v63 != 7)
      {
        goto LABEL_188;
      }
    }

    if (!v64)
    {
      v74 = v128.__r_.__value_.__r.__words[0];
      if (v128.__r_.__value_.__l.__size_ - v128.__r_.__value_.__r.__words[0] != 72)
      {
        v112 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x24C1A1B40](v112, "PLY parser: Invalid element line");
        __cxa_throw(v112, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (*(v128.__r_.__value_.__r.__words[0] + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v127, *(v128.__r_.__value_.__r.__words[0] + 24), *(v128.__r_.__value_.__r.__words[0] + 32));
        v74 = v128.__r_.__value_.__r.__words[0];
      }

      else
      {
        v127 = *(v128.__r_.__value_.__r.__words[0] + 24);
      }

      v132.__locale_ = 0;
      std::istringstream::basic_istringstream[abi:ne200100](__p, (v74 + 48), 8);
      MEMORY[0x24C1A1CD0](__p, &v132);
      v88 = *(a1 + 56);
      if (v88 >= *(a1 + 64))
      {
        *(a1 + 56) = std::vector<happly::Element>::__emplace_back_slow_path<std::string &,unsigned long &>((a1 + 48), &v127, &v132);
        if (a3)
        {
          goto LABEL_265;
        }
      }

      else
      {
        v89 = v132.__locale_;
        if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(*(a1 + 56), v127.__r_.__value_.__l.__data_, v127.__r_.__value_.__l.__size_);
        }

        else
        {
          v90 = *&v127.__r_.__value_.__l.__data_;
          *(v88 + 16) = *(&v127.__r_.__value_.__l + 2);
          *v88 = v90;
        }

        *(v88 + 24) = v89;
        *(v88 + 32) = 0;
        *(v88 + 40) = 0;
        *(v88 + 48) = 0;
        *(a1 + 56) = v88 + 56;
        *(a1 + 56) = v88 + 56;
        if (a3)
        {
LABEL_265:
          v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "  - Found element: ", 19);
          if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v98 = &v127;
          }

          else
          {
            v98 = v127.__r_.__value_.__r.__words[0];
          }

          if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v99 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v99 = v127.__r_.__value_.__l.__size_;
          }

          v100 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, v98, v99);
          v101 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v100, " (count = ", 10);
          v102 = MEMORY[0x24C1A1DB0](v101, v132.__locale_);
          v103 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v102, ")", 1);
          std::ios_base::getloc((v103 + *(*v103 - 24)));
          v104 = std::locale::use_facet(&v126, v48);
          (v104->__vftable[2].~facet_0)(v104, 10);
          std::locale::~locale(&v126);
          std::ostream::put();
          std::ostream::flush();
        }
      }

      __p[0] = v119;
      *(__p + *(v119 - 3)) = v118;
      v122 = MEMORY[0x277D82878] + 16;
      if (v124 < 0)
      {
        operator delete(v123[7].__locale_);
      }

      v122 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v123);
      std::istream::~istream();
      MEMORY[0x24C1A1F80](&v125);
      if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        v105 = v128.__r_.__value_.__r.__words[0];
        if (!v128.__r_.__value_.__r.__words[0])
        {
          goto LABEL_295;
        }

LABEL_278:
        v106 = v128.__r_.__value_.__l.__size_;
        v91 = v105;
        if (v128.__r_.__value_.__l.__size_ != v105)
        {
          do
          {
            v107 = *(v106 - 1);
            v106 -= 3;
            if (v107 < 0)
            {
              operator delete(*v106);
            }
          }

          while (v106 != v105);
          v91 = v128.__r_.__value_.__r.__words[0];
        }

        v128.__r_.__value_.__l.__size_ = v105;
LABEL_297:
        operator delete(v91);
        v109 = 1;
        if ((SHIBYTE(v131) & 0x80000000) == 0)
        {
          continue;
        }

LABEL_121:
        operator delete(__s1.__locale_);
        continue;
      }

      operator delete(v127.__r_.__value_.__l.__data_);
      v105 = v128.__r_.__value_.__r.__words[0];
      if (v128.__r_.__value_.__r.__words[0])
      {
        goto LABEL_278;
      }

LABEL_295:
      v109 = 1;
      if ((SHIBYTE(v131) & 0x80000000) == 0)
      {
        continue;
      }

      goto LABEL_121;
    }

LABEL_188:
    HIBYTE(v122) = 13;
    strcpy(__p, "property list");
    if ((v53 & 0x80000000) != 0)
    {
      if (v130 >= 0xD)
      {
        v84 = 13;
      }

      else
      {
        v84 = v130;
      }

      v76 = memcmp(__s1.__locale_, __p, v84);
      if (v84 != 13)
      {
        goto LABEL_228;
      }
    }

    else
    {
      if (v53 >= 0xD)
      {
        v75 = 13;
      }

      else
      {
        v75 = v53;
      }

      v76 = memcmp(&__s1, __p, v75);
      if (v75 != 13)
      {
        goto LABEL_228;
      }
    }

    if (!v76)
    {
      v85 = __p[0];
      if ((__p[1] - __p[0]) == 120)
      {
        if (*(a1 + 56) != *(a1 + 48))
        {
          if (*(__p[0] + 71) < 0)
          {
            std::string::__init_copy_ctor_external(&v128, *(__p[0] + 6), *(__p[0] + 7));
            v85 = __p[0];
            if (*(__p[0] + 95) < 0)
            {
              goto LABEL_260;
            }

LABEL_226:
            v127 = *(v85 + 3);
            if ((v85[119] & 0x80000000) == 0)
            {
              goto LABEL_227;
            }

LABEL_261:
            std::string::__init_copy_ctor_external(&v126, *(v85 + 12), *(v85 + 13));
          }

          else
          {
            v128 = *(__p[0] + 2);
            if ((*(__p[0] + 95) & 0x80000000) == 0)
            {
              goto LABEL_226;
            }

LABEL_260:
            std::string::__init_copy_ctor_external(&v127, *(v85 + 9), *(v85 + 10));
            v85 = __p[0];
            if (*(__p[0] + 119) < 0)
            {
              goto LABEL_261;
            }

LABEL_227:
            v126 = *(v85 + 4);
          }

          v96 = *(a1 + 56);
          happly::createPropertyWithType(&v126, &v127, 1, &v128);
        }

        v114 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x24C1A1B40](v114, "PLY parser: Found property list without previous element");
      }

      else
      {
        v114 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x24C1A1B40](v114, "PLY parser: Invalid property list line");
      }

      __cxa_throw(v114, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

LABEL_228:
    HIBYTE(v122) = 8;
    strcpy(__p, "property");
    if ((v53 & 0x80000000) != 0)
    {
      if (v130 >= 8)
      {
        v92 = 8;
      }

      else
      {
        v92 = v130;
      }

      v87 = memcmp(__s1.__locale_, __p, v92);
      if (v92 != 8)
      {
        goto LABEL_253;
      }
    }

    else
    {
      if (v53 >= 8)
      {
        v86 = 8;
      }

      else
      {
        v86 = v53;
      }

      v87 = memcmp(&__s1, __p, v86);
      if (v86 != 8)
      {
        goto LABEL_253;
      }
    }

    if (!v87)
    {
      v93 = __p[0];
      if ((__p[1] - __p[0]) == 72)
      {
        if (*(a1 + 56) != *(a1 + 48))
        {
          if (*(__p[0] + 47) < 0)
          {
            std::string::__init_copy_ctor_external(&v128, *(__p[0] + 3), *(__p[0] + 4));
            v93 = __p[0];
            if (*(__p[0] + 71) < 0)
            {
              goto LABEL_293;
            }

LABEL_252:
            v127 = v93[2];
          }

          else
          {
            v128 = *(__p[0] + 1);
            if ((*(__p[0] + 71) & 0x80000000) == 0)
            {
              goto LABEL_252;
            }

LABEL_293:
            std::string::__init_copy_ctor_external(&v127, v93[2].__r_.__value_.__l.__data_, v93[2].__r_.__value_.__l.__size_);
          }

          v110 = *(a1 + 56);
          *(&v126.__r_.__value_.__s + 23) = 0;
          v126.__r_.__value_.__s.__data_[0] = 0;
          happly::createPropertyWithType(&v127, &v128, 0, &v126);
        }

        v116 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x24C1A1B40](v116, "PLY parser: Found property without previous element");
      }

      else
      {
        v116 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x24C1A1B40](v116, "PLY parser: Invalid property line");
      }

      __cxa_throw(v116, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

LABEL_253:
    HIBYTE(v122) = 10;
    strcpy(__p, "end_header");
    if ((v53 & 0x80000000) != 0)
    {
      if (v130 >= 0xA)
      {
        v108 = 10;
      }

      else
      {
        v108 = v130;
      }

      v95 = memcmp(__s1.__locale_, __p, v108);
      if (v108 != 10)
      {
LABEL_313:
        v115 = __cxa_allocate_exception(0x10uLL);
        std::operator+<char>();
        MEMORY[0x24C1A1B50](v115, __p);
        __cxa_throw(v115, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }
    }

    else
    {
      if (v53 >= 0xA)
      {
        v94 = 10;
      }

      else
      {
        v94 = v53;
      }

      v95 = memcmp(&__s1, __p, v94);
      if (v94 != 10)
      {
        goto LABEL_313;
      }
    }

    if (v95)
    {
      goto LABEL_313;
    }

    v109 = 0;
    if (SHIBYTE(v131) < 0)
    {
      goto LABEL_121;
    }
  }

  while ((v109 & 1) != 0);
}

void sub_24742623C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 121) < 0)
  {
    operator delete(*(v18 - 144));
  }

  std::vector<std::string>::~vector[abi:ne200100](&__p);
  if (*(v18 - 97) < 0)
  {
    operator delete(*(v18 - 120));
  }

  _Unwind_Resume(a1);
}

uint64_t happly::PLYData::parseBinary(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 48);
  v4 = *(result + 56);
  if (v3 != v4)
  {
    v7 = MEMORY[0x277D82678];
    v8 = MEMORY[0x277D82680];
    do
    {
      if (a3)
      {
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "  - Processing element: ", 24);
        v10 = *(v3 + 23);
        if (v10 >= 0)
        {
          v11 = v3;
        }

        else
        {
          v11 = *v3;
        }

        if (v10 >= 0)
        {
          v12 = *(v3 + 23);
        }

        else
        {
          v12 = *(v3 + 8);
        }

        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
        std::ios_base::getloc((v13 + *(*v13 - 24)));
        v14 = std::locale::use_facet(&v21, v8);
        (v14->__vftable[2].~facet_0)(v14, 10);
        std::locale::~locale(&v21);
        std::ostream::put();
        result = std::ostream::flush();
      }

      v15 = *(v3 + 32);
      v16 = *(v3 + 40);
      if (v16 != v15)
      {
        v17 = 0;
        do
        {
          result = (*(**(v15 + 8 * v17) + 16))(*(v15 + 8 * v17), *(v3 + 24));
          ++v17;
          v15 = *(v3 + 32);
          v16 = *(v3 + 40);
        }

        while (v17 < (v16 - v15) >> 3);
      }

      v18 = *(v3 + 24);
      if (v18)
      {
        for (i = 0; i < v18; ++i)
        {
          while (v16 == v15)
          {
            v16 = v15;
            if (++i >= v18)
            {
              goto LABEL_3;
            }
          }

          v20 = 0;
          do
          {
            result = (*(**(v15 + 8 * v20) + 32))(*(v15 + 8 * v20), a2);
            ++v20;
            v15 = *(v3 + 32);
            v16 = *(v3 + 40);
          }

          while (v20 < (v16 - v15) >> 3);
          v18 = *(v3 + 24);
        }
      }

LABEL_3:
      v3 += 56;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t happly::PLYData::parseBinaryBigEndian(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(result + 48);
  v4 = *(result + 56);
  if (v3 != v4)
  {
    v7 = MEMORY[0x277D82678];
    v8 = MEMORY[0x277D82680];
    do
    {
      if (a3)
      {
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "  - Processing element: ", 24);
        v10 = *(v3 + 23);
        if (v10 >= 0)
        {
          v11 = v3;
        }

        else
        {
          v11 = *v3;
        }

        if (v10 >= 0)
        {
          v12 = *(v3 + 23);
        }

        else
        {
          v12 = *(v3 + 8);
        }

        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
        std::ios_base::getloc((v13 + *(*v13 - 24)));
        v14 = std::locale::use_facet(&v21, v8);
        (v14->__vftable[2].~facet_0)(v14, 10);
        std::locale::~locale(&v21);
        std::ostream::put();
        result = std::ostream::flush();
      }

      v15 = *(v3 + 32);
      v16 = *(v3 + 40);
      if (v16 != v15)
      {
        v17 = 0;
        do
        {
          result = (*(**(v15 + 8 * v17) + 16))(*(v15 + 8 * v17), *(v3 + 24));
          ++v17;
          v15 = *(v3 + 32);
          v16 = *(v3 + 40);
        }

        while (v17 < (v16 - v15) >> 3);
      }

      v18 = *(v3 + 24);
      if (v18)
      {
        for (i = 0; i < v18; ++i)
        {
          while (v16 == v15)
          {
            v16 = v15;
            if (++i >= v18)
            {
              goto LABEL_3;
            }
          }

          v20 = 0;
          do
          {
            result = (*(**(v15 + 8 * v20) + 40))(*(v15 + 8 * v20), a2);
            ++v20;
            v15 = *(v3 + 32);
            v16 = *(v3 + 40);
          }

          while (v20 < (v16 - v15) >> 3);
          v18 = *(v3 + 24);
        }
      }

LABEL_3:
      v3 += 56;
    }

    while (v3 != v4);
  }

  return result;
}

void happly::PLYData::parseASCII(uint64_t a1, void *a2, int a3)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3 != v4)
  {
    v7 = MEMORY[0x277D82678];
    v8 = MEMORY[0x277D82680];
    do
    {
      if (a3)
      {
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "  - Processing element: ", 24);
        v10 = *(v3 + 23);
        if (v10 >= 0)
        {
          v11 = v3;
        }

        else
        {
          v11 = *v3;
        }

        if (v10 >= 0)
        {
          v12 = *(v3 + 23);
        }

        else
        {
          v12 = *(v3 + 8);
        }

        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
        std::ios_base::getloc((v13 + *(*v13 - 24)));
        v14 = std::locale::use_facet(&v32, v8);
        (v14->__vftable[2].~facet_0)(v14, 10);
        std::locale::~locale(&v32);
        std::ostream::put();
        std::ostream::flush();
      }

      v15 = *(v3 + 32);
      if (*(v3 + 40) != v15)
      {
        v16 = 0;
        do
        {
          (*(**(v15 + 8 * v16) + 16))(*(v15 + 8 * v16), *(v3 + 24));
          ++v16;
          v15 = *(v3 + 32);
        }

        while (v16 < (*(v3 + 40) - v15) >> 3);
      }

      if (*(v3 + 24))
      {
        v17 = 0;
        do
        {
          v32.__locale_ = 0;
          v33 = 0;
          v34 = 0;
          std::ios_base::getloc((a2 + *(*a2 - 24)));
          v18 = std::locale::use_facet(&v30, v8);
          v19 = (v18->__vftable[2].~facet_0)(v18, 10);
          std::locale::~locale(&v30);
          std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v32, v19);
          if (*(v3 + 32) != *(v3 + 40))
          {
            while (1)
            {
              v20 = HIBYTE(v34);
              if (v34 < 0)
              {
                v20 = v33;
              }

              if (v20)
              {
                break;
              }

              std::ios_base::getloc((a2 + *(*a2 - 24)));
              v21 = std::locale::use_facet(&v30, v8);
              v22 = (v21->__vftable[2].~facet_0)(v21, 10);
              std::locale::~locale(&v30);
              std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v32, v22);
            }
          }

          v29 = 0;
          v23 = *(v3 + 32);
          if (*(v3 + 40) != v23)
          {
            v24 = 0;
            do
            {
              (*(**(v23 + 8 * v24) + 24))(*(v23 + 8 * v24), &v30, &v29);
              ++v24;
              v23 = *(v3 + 32);
            }

            while (v24 < (*(v3 + 40) - v23) >> 3);
          }

          locale = v30.__locale_;
          if (v30.__locale_)
          {
            v26 = v31;
            v27 = v30.__locale_;
            if (v31 != v30.__locale_)
            {
              do
              {
                v28 = *(v26 - 1);
                v26 -= 3;
                if (v28 < 0)
                {
                  operator delete(*v26);
                }
              }

              while (v26 != locale);
              v27 = v30.__locale_;
            }

            v31 = locale;
            operator delete(v27);
          }

          if (SHIBYTE(v34) < 0)
          {
            operator delete(v32.__locale_);
          }

          ++v17;
        }

        while (v17 < *(v3 + 24));
      }

      v3 += 56;
    }

    while (v3 != v4);
  }
}

void sub_247426D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *happly::anonymous namespace::trimSpaces(_BYTE *__dst, uint64_t *a2)
{
  v2 = a2;
  v3 = __dst;
  v4 = *(a2 + 23);
  v5 = 0;
  if ((v4 & 0x80u) == 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v6)
  {
    if ((v4 & 0x80u) == 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    while (*(v7 + v5) == 32)
    {
      if (v6 == ++v5)
      {
        v5 = v6;
        goto LABEL_22;
      }
    }

    if (v6 > v5)
    {
      if ((v4 & 0x80u) == 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      v9 = v8 - 1;
      while (1)
      {
        v10 = *(v9 + v6);
        v11 = v10 > 0x20;
        v12 = (1 << v10) & 0x100002400;
        if (v11 || v12 == 0)
        {
          break;
        }

        if (--v6 <= v5)
        {
          v6 = v5;
          break;
        }
      }
    }
  }

LABEL_22:
  if ((v4 & 0x80) != 0)
  {
    if (a2[1] < v5)
    {
      goto LABEL_36;
    }

    v2 = *a2;
    v4 = a2[1];
  }

  else if (v5 > v4)
  {
LABEL_36:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v14 = v6 - v5;
  v15 = v4 - v5;
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  if (v16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v16 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v16;
  if (v16)
  {
    __dst = memmove(__dst, v2 + v5, v16);
    v3[v16] = 0;
  }

  else
  {
    *__dst = 0;
  }

  return __dst;
}

void happly::anonymous namespace::tokenSplit(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 23);
  v5 = *(a2 + 23);
  v6 = v4 < 0;
  v7 = *(a2 + 8);
  v8 = 0;
  if (v4 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  if (v9)
  {
    do
    {
      v11 = *v2;
      if (v6)
      {
        v12 = *v2;
      }

      else
      {
        v12 = v2;
      }

      v13 = memchr(&v8[v12], 32, v9 - v8);
      v14 = &v13[-v12];
      if (v13)
      {
        v15 = v14 + 1 == 0;
      }

      else
      {
        v15 = 1;
      }

      if (v15)
      {
        break;
      }

      if (v6)
      {
        if (v7 < v8)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v7 = v5;
        v11 = v2;
        if (v8 > v5)
        {
LABEL_70:
          std::string::__throw_out_of_range[abi:ne200100]();
        }
      }

      if (v7 - v8 >= (v14 - v8))
      {
        v16 = v14 - v8;
      }

      else
      {
        v16 = v7 - v8;
      }

      if (v16 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v31) = v16;
      if (v16)
      {
        memmove(&__dst, &v8[v11], v16);
      }

      *(&__dst + v16) = 0;
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__dst);
      }

      v31 = v29;
      __dst = v28;
      v17 = HIBYTE(v29);
      v18 = HIBYTE(v29);
      if ((v29 & 0x8000000000000000) != 0)
      {
        v17 = *(&v28 + 1);
      }

      if (v17)
      {
        v19 = *(a1 + 8);
        if (v19 >= *(a1 + 16))
        {
          v21 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, &__dst);
        }

        else
        {
          if (SHIBYTE(v29) < 0)
          {
            std::string::__init_copy_ctor_external(*(a1 + 8), __dst, *(&v28 + 1));
          }

          else
          {
            v20 = __dst;
            *(v19 + 16) = v31;
            *v19 = v20;
          }

          v21 = v19 + 24;
        }

        *(a1 + 8) = v21;
        v18 = HIBYTE(v31);
      }

      if (v18 < 0)
      {
        operator delete(__dst);
      }

      v8 = v14 + 1;
      v10 = *(v2 + 23);
      v5 = *(v2 + 23);
      v6 = v10 < 0;
      v7 = *(v2 + 8);
      v9 = v10 >= 0 ? *(v2 + 23) : *(v2 + 8);
    }

    while (v9 > v8);
  }

  if (v6)
  {
    if (v7 >= v8)
    {
      v2 = *v2;
      v5 = v7;
      goto LABEL_48;
    }

LABEL_71:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v8 > v5)
  {
    goto LABEL_71;
  }

LABEL_48:
  v22 = v5 - v8;
  if ((v5 - v8) > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v22 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v31) = v5 - v8;
  if (v5 != v8)
  {
    memmove(&__dst, &v8[v2], v22);
  }

  *(&__dst + v22) = 0;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__dst);
  }

  v31 = v29;
  __dst = v28;
  v23 = HIBYTE(v29);
  v24 = HIBYTE(v29);
  if ((v29 & 0x8000000000000000) != 0)
  {
    v23 = *(&v28 + 1);
  }

  if (!v23)
  {
LABEL_63:
    if ((v24 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_64;
  }

  v25 = *(a1 + 8);
  if (v25 >= *(a1 + 16))
  {
    v27 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, &__dst);
    v24 = HIBYTE(v31);
    *(a1 + 8) = v27;
    goto LABEL_63;
  }

  if (SHIBYTE(v29) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), __dst, *(&v28 + 1));
  }

  else
  {
    v26 = __dst;
    *(v25 + 16) = v31;
    *v25 = v26;
  }

  *(a1 + 8) = v25 + 24;
  if (v24 < 0)
  {
LABEL_64:
    operator delete(__dst);
  }
}

void sub_247427290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  *(v18 + 8) = v19;
  if (a18 < 0)
  {
    operator delete(__p);
    std::vector<std::string>::~vector[abi:ne200100](v18);
    _Unwind_Resume(a1);
  }

  std::vector<std::string>::~vector[abi:ne200100](v18);
  _Unwind_Resume(a1);
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, __int128 *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x277D82898] + 64;
  a1[15] = MEMORY[0x277D82898] + 64;
  v7 = *(MEMORY[0x277D82820] + 16);
  v8 = *(MEMORY[0x277D82820] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x277D82898] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_247427470(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x24C1A1F80](v1);
  _Unwind_Resume(a1);
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82820];
  v3 = *MEMORY[0x277D82820];
  *a1 = *MEMORY[0x277D82820];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x24C1A1F80](a1 + 120);
  return a1;
}

void std::vector<std::unique_ptr<happly::Property>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = v8 >> 3;
  v10 = (v8 >> 3) + 1;
  if (v10 >> 61)
  {
    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v11 = v3 - v7;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = *a2;
  *a2 = 0;
  *(8 * v9) = v13;
  v6 = 8 * v9 + 8;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void happly::createPropertyWithType(int a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!a3)
  {
    v8 = *(a2 + 23);
    if (v8 < 0)
    {
      goto LABEL_81;
    }

    goto LABEL_51;
  }

  if (*(a4 + 23) < 0)
  {
    if (*(a4 + 8) != 5 || (**a4 == 1634231157 ? (v9 = *(*a4 + 4) == 114) : (v9 = 0), !v9))
    {
      if (*(a4 + 8) != 5 || (**a4 == 1953393013 ? (v10 = *(*a4 + 4) == 56) : (v10 = 0), !v10))
      {
        if ((*(a4 + 8) != 4 || **a4 != 1918986339) && (*(a4 + 8) != 4 || **a4 != 947154537))
        {
          if (*(a4 + 8) == 6)
          {
            v7 = *a4;
            goto LABEL_25;
          }

          goto LABEL_47;
        }
      }
    }
  }

  else
  {
    v6 = *(a4 + 23);
    if (v6 != 4)
    {
      if (v6 != 5 || (*a4 == 1634231157 ? (v14 = *(a4 + 4) == 114) : (v14 = 0), !v14 && (*a4 == 1953393013 ? (v15 = *(a4 + 4) == 56) : (v15 = 0), !v15)))
      {
        v7 = a4;
        if (v6 != 6)
        {
          goto LABEL_47;
        }

LABEL_25:
        v11 = *v7;
        v12 = *(v7 + 2);
        if (v11 == 1869116277 && v12 == 29810)
        {
          goto LABEL_50;
        }

        goto LABEL_47;
      }

      goto LABEL_45;
    }

    if (*a4 != 947154537 && *a4 != 1918986339)
    {
LABEL_47:
      if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a4, "uint16") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a4, "short") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a4, "int16"))
      {
        if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a4, "uint") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a4, "uint32") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a4, "int") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a4, "int32"))
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::operator+<char>();
          MEMORY[0x24C1A1B50](exception, &v35);
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v8 = *(a2 + 23);
        if ((v8 & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_81;
      }

LABEL_50:
      v8 = *(a2 + 23);
      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

LABEL_81:
      if (*(a2 + 8) != 5 || (**a2 == 1634231157 ? (v23 = *(*a2 + 4) == 114) : (v23 = 0), !v23))
      {
        if (*(a2 + 8) != 5 || (**a2 == 1953393013 ? (v24 = *(*a2 + 4) == 56) : (v24 = 0), !v24))
        {
          if (*(a2 + 8) != 6 || (**a2 == 1869116277 ? (v25 = *(*a2 + 4) == 29810) : (v25 = 0), !v25))
          {
            if (*(a2 + 8) != 6 || (**a2 == 1953393013 ? (v26 = *(*a2 + 4) == 13873) : (v26 = 0), !v26))
            {
              v27 = *(a2 + 8);
              if (v27 == 4)
              {
                if (**a2 != 1953393013)
                {
                  goto LABEL_108;
                }

                goto LABEL_124;
              }

              if (v27 != 6)
              {
                goto LABEL_108;
              }

              v22 = *a2;
              goto LABEL_104;
            }
          }

          goto LABEL_114;
        }
      }

LABEL_112:
      if (a3)
      {
        operator new();
      }

      operator new();
    }
  }

LABEL_45:
  v8 = *(a2 + 23);
  if (v8 < 0)
  {
    goto LABEL_81;
  }

LABEL_51:
  if (v8 == 4)
  {
    if (*a2 != 1953393013)
    {
      goto LABEL_108;
    }

    goto LABEL_124;
  }

  if (v8 != 5)
  {
    if (v8 != 6)
    {
      goto LABEL_108;
    }

    if ((*a2 != 1869116277 || *(a2 + 4) != 29810) && (*a2 != 1953393013 || *(a2 + 4) != 13873))
    {
      goto LABEL_72;
    }

LABEL_114:
    if (a3)
    {
      operator new();
    }

    operator new();
  }

  if ((*a2 != 1634231157 || *(a2 + 4) != 114) && (*a2 != 1953393013 || *(a2 + 4) != 56))
  {
LABEL_72:
    v22 = a2;
    if (v8 != 6)
    {
      goto LABEL_108;
    }

LABEL_104:
    v28 = *v22;
    v29 = *(v22 + 2);
    if (v28 != 1953393013 || v29 != 12851)
    {
LABEL_108:
      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "char") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "int8"))
      {
        if (a3)
        {
          operator new();
        }

        operator new();
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "short") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "int16"))
      {
        if (a3)
        {
          operator new();
        }

        operator new();
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "int") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "int32"))
      {
        if (a3)
        {
          operator new();
        }

        operator new();
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "float") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "float32"))
      {
        if (a3)
        {
          operator new();
        }

        operator new();
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "double") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, "float64"))
      {
        if (a3)
        {
          operator new();
        }

        operator new();
      }

      v32 = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      v33 = std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(" cannot be mapped to .ply format", &v34, &v35);
      MEMORY[0x24C1A1B50](v32, &v35, v33);
      __cxa_throw(v32, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

LABEL_124:
    if (a3)
    {
      operator new();
    }

    operator new();
  }

  goto LABEL_112;
}

void sub_2474280EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x24C1A1C70](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_247428468(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x247428428);
  }

  __cxa_rethrow();
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278EA70F0, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 8 * ((*(a1 + 8) - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v6, *a2, *(a2 + 8));
    v6 = 24 * v2;
  }

  else
  {
    *v6 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 16);
  }

  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = v6 - v8;
  memcpy((v6 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, __int128 *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x24C1A1F00](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  if ((a1 + 64) != a2)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__assign_no_alias<true>((a1 + 64), *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(a1 + 80) = *(a2 + 2);
      *(a1 + 64) = v6;
    }
  }

  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_24742882C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t std::vector<happly::Element>::__emplace_back_slow_path<std::string &,unsigned long &>(uint64_t *a1, uint64_t a2, std::string::size_type *a3)
{
  v3 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x492492492492492)
  {
    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v4;
  }

  v23 = a1;
  if (v6)
  {
    if (v6 <= 0x492492492492492)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = (56 * v3);
  __p = 0;
  v20 = v7;
  v21 = v7;
  v22 = 0;
  v8 = *a3;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 8));
    v9 = v21;
  }

  else
  {
    *&v7->__r_.__value_.__l.__data_ = *a2;
    v7->__r_.__value_.__r.__words[2] = *(a2 + 16);
    v9 = v7;
  }

  v7[1].__r_.__value_.__r.__words[0] = v8;
  v7[1].__r_.__value_.__l.__size_ = 0;
  v7[1].__r_.__value_.__r.__words[2] = 0;
  v7[2].__r_.__value_.__r.__words[0] = 0;
  v21 = (v9 + 56);
  std::vector<happly::Element>::__swap_out_circular_buffer(a1, &__p);
  v10 = a1[1];
  v11 = v20;
  while (1)
  {
    v12 = v21;
    if (v21 == v11)
    {
      break;
    }

    v21 = (v21 - 56);
    data = v12[-1].__r_.__value_.__l.__data_;
    if (data)
    {
      size = v12[-1].__r_.__value_.__l.__size_;
      v15 = v12[-1].__r_.__value_.__l.__data_;
      if (size != data)
      {
        do
        {
          v17 = *--size;
          v16 = v17;
          *size = 0;
          if (v17)
          {
            (*(*v16 + 8))(v16);
          }
        }

        while (size != data);
        v15 = v12[-1].__r_.__value_.__l.__data_;
      }

      v12[-1].__r_.__value_.__l.__size_ = data;
      operator delete(v15);
    }

    if (v12[-2].__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v12[-3].__r_.__value_.__r.__words[2]);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_247428A48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<happly::Element>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<happly::Element>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *(v8 + 16) = *(v7 + 2);
      *v8 = v9;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 0;
      *(v8 + 24) = *(v7 + 3);
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = v7[2];
      *(v8 + 48) = *(v7 + 6);
      *(v7 + 4) = 0;
      *(v7 + 5) = 0;
      *(v7 + 6) = 0;
      v7 = (v7 + 56);
      v8 += 56;
    }

    while (v7 != v4);
    do
    {
      v10 = *(v5 + 32);
      if (v10)
      {
        v11 = *(v5 + 40);
        v12 = *(v5 + 32);
        if (v11 != v10)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              (*(*v13 + 8))(v13);
            }
          }

          while (v11 != v10);
          v12 = *(v5 + 32);
        }

        *(v5 + 40) = v10;
        operator delete(v12);
      }

      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 56;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v15 = *a1;
  *a1 = v6;
  a1[1] = v15;
  a2[1] = v15;
  v16 = a1[1];
  a1[1] = a2[2];
  a2[2] = v16;
  v17 = a1[2];
  a1[2] = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<happly::Element>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    v4 = *(i - 24);
    if (v4)
    {
      v5 = *(i - 16);
      v6 = *(i - 24);
      if (v5 != v4)
      {
        do
        {
          v8 = *--v5;
          v7 = v8;
          *v5 = 0;
          if (v8)
          {
            (*(*v7 + 8))(v7);
          }
        }

        while (v5 != v4);
        v6 = *(i - 24);
      }

      *(i - 16) = v4;
      operator delete(v6);
    }

    if (*(i - 33) < 0)
    {
      operator delete(*(i - 56));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *happly::TypedProperty<signed char>::TypedProperty(void *result, __int128 *a2)
{
  *result = &unk_28593D150;
  if (*(a2 + 23) < 0)
  {
    v3 = result;
    std::string::__init_copy_ctor_external((result + 1), *a2, *(a2 + 1));
    result = v3;
    *v3 = &unk_28593D4F0;
    v3[5] = 0;
    v3[6] = 0;
    v3[4] = 0;
  }

  else
  {
    v2 = *a2;
    result[3] = *(a2 + 2);
    *(result + 1) = v2;
    *result = &unk_28593D4F0;
    result[5] = 0;
    result[6] = 0;
    result[4] = 0;
  }

  return result;
}

void *happly::TypedProperty<short>::TypedProperty(void *result, __int128 *a2)
{
  *result = &unk_28593D150;
  if (*(a2 + 23) < 0)
  {
    v3 = result;
    std::string::__init_copy_ctor_external((result + 1), *a2, *(a2 + 1));
    result = v3;
    *v3 = &unk_28593D600;
    v3[5] = 0;
    v3[6] = 0;
    v3[4] = 0;
  }

  else
  {
    v2 = *a2;
    result[3] = *(a2 + 2);
    *(result + 1) = v2;
    *result = &unk_28593D600;
    result[5] = 0;
    result[6] = 0;
    result[4] = 0;
  }

  return result;
}

void *happly::TypedProperty<int>::TypedProperty(void *result, __int128 *a2)
{
  *result = &unk_28593D150;
  if (*(a2 + 23) < 0)
  {
    v3 = result;
    std::string::__init_copy_ctor_external((result + 1), *a2, *(a2 + 1));
    result = v3;
    *v3 = &unk_28593D710;
    v3[5] = 0;
    v3[6] = 0;
    v3[4] = 0;
  }

  else
  {
    v2 = *a2;
    result[3] = *(a2 + 2);
    *(result + 1) = v2;
    *result = &unk_28593D710;
    result[5] = 0;
    result[6] = 0;
    result[4] = 0;
  }

  return result;
}

void *happly::TypedProperty<float>::TypedProperty(void *result, __int128 *a2)
{
  *result = &unk_28593D150;
  if (*(a2 + 23) < 0)
  {
    v3 = result;
    std::string::__init_copy_ctor_external((result + 1), *a2, *(a2 + 1));
    result = v3;
    *v3 = &unk_28593D820;
    v3[5] = 0;
    v3[6] = 0;
    v3[4] = 0;
  }

  else
  {
    v2 = *a2;
    result[3] = *(a2 + 2);
    *(result + 1) = v2;
    *result = &unk_28593D820;
    result[5] = 0;
    result[6] = 0;
    result[4] = 0;
  }

  return result;
}

void *happly::TypedProperty<double>::TypedProperty(void *result, __int128 *a2)
{
  *result = &unk_28593D150;
  if (*(a2 + 23) < 0)
  {
    v3 = result;
    std::string::__init_copy_ctor_external((result + 1), *a2, *(a2 + 1));
    result = v3;
    *v3 = &unk_28593D930;
    v3[5] = 0;
    v3[6] = 0;
    v3[4] = 0;
  }

  else
  {
    v2 = *a2;
    result[3] = *(a2 + 2);
    *(result + 1) = v2;
    *result = &unk_28593D930;
    result[5] = 0;
    result[6] = 0;
    result[4] = 0;
  }

  return result;
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(char *__s@<X1>, std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t happly::TypedListProperty<unsigned char>::TypedListProperty(uint64_t a1, __int128 *a2, int a3)
{
  *a1 = &unk_28593D150;
  v5 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    v5->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *a1 = &unk_28593D0B8;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a3;
  v8 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a1 + 56, &v8);
  return a1;
}

void sub_247429160(_Unwind_Exception *a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    *(v1 + 64) = v3;
    operator delete(v3);
  }

  happly::TypedListProperty<unsigned char>::TypedListProperty(v1 + 32);
  _Unwind_Resume(a1);
}

void std::vector<unsigned long>::push_back[abi:ne200100](uint64_t a1, void *a2)
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
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
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

uint64_t happly::TypedListProperty<unsigned char>::~TypedListProperty(uint64_t a1)
{
  *a1 = &unk_28593D0B8;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void happly::TypedListProperty<unsigned char>::~TypedListProperty(uint64_t a1)
{
  *a1 = &unk_28593D0B8;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x24C1A2010);
}

void *happly::TypedListProperty<unsigned char>::reserve(void *result, uint64_t a2)
{
  v2 = result[4];
  if (result[6] - v2 < (3 * a2))
  {
    if (((3 * a2) & 0x8000000000000000) == 0)
    {
      v3 = result[5] - v2;
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  v4 = result[7];
  if (a2 + 1 > ((result[9] - v4) >> 3))
  {
    if (!((a2 + 1) >> 61))
    {
      v5 = result[8] - v4;
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t happly::TypedListProperty<unsigned char>::parseNext(void *a1, void *a2, void *a3)
{
  std::istringstream::basic_istringstream[abi:ne200100](v38, (*a2 + 24 * *a3), 8);
  v37 = 0;
  MEMORY[0x24C1A1CD0](v38, &v37);
  ++*a3;
  v6 = a1[4];
  v5 = a1[5];
  v7 = &v5[-v6];
  v8 = v37;
  v9 = &v5[v37 - v6];
  v10 = MEMORY[0x277D82820];
  if (&v5[-v6] >= v9)
  {
    v12 = MEMORY[0x277D82820];
    if (&v5[-v6] > v9)
    {
      a1[5] = &v5[v37];
    }
  }

  else
  {
    v11 = a1[6];
    if (v11 - v5 < v37)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v23 = &v5[v37];
    bzero(v5, v37);
    a1[5] = v23;
    v24 = *v10;
    v12 = v10;
    v25 = v10[3];
    do
    {
      std::istringstream::basic_istringstream[abi:ne200100](v32, (*a2 + 24 * *a3), 8);
      v31 = 0;
      MEMORY[0x24C1A1CB0](v32, &v31);
      v7[a1[4]] = v31;
      ++*a3;
      v32[0] = v24;
      *(v32 + *(v24 - 24)) = v25;
      v33 = MEMORY[0x277D82878] + 16;
      if (v35 < 0)
      {
        operator delete(v34[7].__locale_);
      }

      v33 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v34);
      std::istream::~istream();
      MEMORY[0x24C1A1F80](&v36);
      ++v7;
      --v8;
    }

    while (v8);
  }

  v14 = a1[8];
  v13 = a1[9];
  if (v14 >= v13)
  {
    v17 = a1[7];
    v18 = v14 - v17;
    v19 = (v14 - v17) >> 3;
    v20 = v19 + 1;
    if ((v19 + 1) >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v16 = v12;
    v21 = v13 - v17;
    if (v21 >> 2 > v20)
    {
      v20 = v21 >> 2;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      v22 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v20;
    }

    if (v22)
    {
      if (!(v22 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v26 = v19;
    v27 = (8 * v19);
    v28 = &v27[-v26];
    *v27 = v9;
    v15 = v27 + 1;
    memcpy(v28, v17, v18);
    a1[7] = v28;
    a1[8] = v15;
    a1[9] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v14 = v9;
    v15 = v14 + 8;
    v16 = v12;
  }

  a1[8] = v15;
  v38[0] = *v16;
  *(v38 + *(v38[0] - 24)) = v16[3];
  v39 = MEMORY[0x277D82878] + 16;
  if (v41 < 0)
  {
    operator delete(v40[7].__locale_);
  }

  v39 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v40);
  std::istream::~istream();
  return MEMORY[0x24C1A1F80](&v42);
}

void sub_247429A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  std::istringstream::~istringstream(&a15);
  std::istringstream::~istringstream(&a50);
  _Unwind_Resume(a1);
}

void happly::TypedListProperty<unsigned char>::readNext(uint64_t a1)
{
  v2 = *(a1 + 80);
  std::istream::read();
  v3 = *(a1 + 40) - *(a1 + 32);
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v5 >= v4)
  {
    v7 = *(a1 + 56);
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = (v5 - v7) >> 3;
    v14 = (8 * v9);
    v15 = (8 * v9 - 8 * v13);
    *v14 = v3;
    v6 = v14 + 1;
    memcpy(v15, v7, v8);
    *(a1 + 56) = v15;
    *(a1 + 64) = v6;
    *(a1 + 72) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = v3;
    v6 = v5 + 8;
  }

  *(a1 + 64) = v6;
}

void happly::TypedListProperty<unsigned char>::readNextBigEndian(uint64_t a1)
{
  v23 = 0;
  v2 = *(a1 + 80);
  std::istream::read();
  v3 = *(a1 + 80);
  v4 = 0;
  switch(v3)
  {
    case 2:
      v4 = bswap32(0) >> 16;
      break;
    case 4:
      v4 = bswap32(0);
      break;
    case 8:
      v4 = bswap64(0);
      break;
    default:
      goto LABEL_8;
  }

  v23 = v4;
LABEL_8:
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = &v5[v4 - v6];
  if (&v5[-v6] >= v7)
  {
    if (&v5[-v6] <= v7)
    {
      goto LABEL_16;
    }

    *(a1 + 40) = &v5[v4];
  }

  else
  {
    v8 = *(a1 + 48);
    if (v8 - v5 < v4)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v9 = &v5[v4];
    bzero(v5, v4);
    *(a1 + 40) = v9;
  }

  v4 = v23;
LABEL_16:
  if (v4)
  {
    v10 = *(a1 + 32);
    std::istream::read();
  }

  v12 = *(a1 + 64);
  v11 = *(a1 + 72);
  if (v12 >= v11)
  {
    v14 = *(a1 + 56);
    v15 = v12 - v14;
    v16 = (v12 - v14) >> 3;
    v17 = v16 + 1;
    if ((v16 + 1) >> 61)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v18 = v11 - v14;
    if (v18 >> 2 > v17)
    {
      v17 = v18 >> 2;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      v19 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      if (!(v19 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v20 = (v12 - v14) >> 3;
    v21 = (8 * v16);
    v22 = (8 * v16 - 8 * v20);
    *v21 = v7;
    v13 = v21 + 1;
    memcpy(v22, v14, v15);
    *(a1 + 56) = v22;
    *(a1 + 64) = v13;
    *(a1 + 72) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v12 = v7;
    v13 = v12 + 8;
  }

  *(a1 + 64) = v13;
}

void happly::TypedListProperty<unsigned char>::writeHeader(uint64_t a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "property list uchar ", 20);
  v14 = 5;
  strcpy(__p, "uchar");
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, __p, 5);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_247429F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t happly::TypedListProperty<unsigned char>::writeDataASCII(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (*(a1 + 56) + 8 * a3);
  v5 = *v4;
  v6 = v4[1];
  if (v6 - *v4 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x24C1A1B40](exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = MEMORY[0x24C1A1DB0](a2);
  *(a2 + *(*a2 - 24) + 16) = 0;
  if (v6 > v5)
  {
    do
    {
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " ", 1);
      result = MEMORY[0x24C1A1D90](v9, *(*(a1 + 32) + v5++));
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t happly::TypedListProperty<unsigned char>::writeDataBinary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 56) + 8 * a3 + 8) - *(*(a1 + 56) + 8 * a3) >= 0x100uLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x24C1A1B40](exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  std::ostream::write();
  v4 = *(a1 + 32);
  return std::ostream::write();
}

uint64_t happly::TypedListProperty<unsigned char>::writeDataBinaryBigEndian(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 56) + 8 * a3);
  v4 = *v3;
  v5 = v3[1];
  if (v5 - *v3 >= 0x100)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x24C1A1B40](exception, "List property has an element with more entries than fit in a uchar. See note in README.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  result = std::ostream::write();
  if (v5 > v4)
  {
    do
    {
      v9 = *(*(a1 + 32) + v4);
      result = std::ostream::write();
      ++v4;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t happly::TypedProperty<unsigned char>::~TypedProperty(uint64_t a1)
{
  *a1 = &unk_28593D1C0;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void happly::TypedProperty<unsigned char>::~TypedProperty(uint64_t a1)
{
  *a1 = &unk_28593D1C0;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  *a1 = &unk_28593D150;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x24C1A2010);
}

void *happly::TypedProperty<unsigned char>::reserve(void *result, unint64_t a2)
{
  v2 = result[4];
  if (result[6] - v2 < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v3 = result[5] - v2;
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t happly::TypedProperty<unsigned char>::parseNext(void *a1, void *a2, void *a3)
{
  v7 = a1[5];
  v6 = a1[6];
  if (v7 >= v6)
  {
    v9 = a1[4];
    v10 = (v7 - v9);
    v11 = v7 - v9 + 1;
    if (v11 < 0)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v12 = v6 - v9;
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      operator new();
    }

    v14 = v7 - v9;
    *v10 = 0;
    v8 = v10 + 1;
    memcpy(0, v9, v14);
    a1[4] = 0;
    a1[5] = v10 + 1;
    a1[6] = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = 0;
    v8 = v7 + 1;
  }

  a1[5] = v8;
  std::istringstream::basic_istringstream[abi:ne200100](v17, (*a2 + 24 * *a3), 8);
  v16 = 0;
  MEMORY[0x24C1A1CB0](v17, &v16);
  *(a1[5] - 1) = v16;
  ++*a3;
  v17[0] = *MEMORY[0x277D82820];
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82820] + 24);
  v18 = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::istream::~istream();
  return MEMORY[0x24C1A1F80](&v21);
}

void sub_24742A67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::istringstream::~istringstream(va);
  _Unwind_Resume(a1);
}

uint64_t happly::TypedProperty<unsigned char>::readNext(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  if (v3 >= v2)
  {
    v5 = a1[4];
    v6 = (v3 - v5);
    v7 = v3 - v5 + 1;
    if (v7 < 0)
    {
      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v2 - v5;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      operator new();
    }

    v10 = v3 - v5;
    *v6 = 0;
    v4 = v6 + 1;
    memcpy(0, v5, v10);
    a1[4] = 0;
    a1[5] = v6 + 1;
    a1[6] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v3 = 0;
    v4 = v3 + 1;
  }

  a1[5] = v4;

  return std::istream::read();
}

void happly::TypedProperty<unsigned char>::writeHeader(uint64_t a1, void *a2)
{
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "property ", 9);
  v14 = 5;
  strcpy(__p, "uchar");
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, __p, 5);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24742A85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void happly::TypedProperty<unsigned char>::writeDataASCII(uint64_t a1, void *a2, uint64_t a3)
{
  *(a2 + *(*a2 - 24) + 16) = 0;
  v3 = *(*(a1 + 32) + a3);
  JUMPOUT(0x24C1A1D90);
}

uint64_t happly::TypedListProperty<unsigned short>::TypedListProperty(uint64_t a1, __int128 *a2, int a3)
{
  *a1 = &unk_28593D150;
  v5 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v5, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    v5->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v5->__r_.__value_.__l.__data_ = v6;
  }

  *a1 = &unk_28593D248;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a3;
  v8 = 0;
  std::vector<unsigned long>::push_back[abi:ne200100](a1 + 56, &v8);
  return a1;
}