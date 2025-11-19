uint64_t std::pair<std::string const,OUDataLoader::DataArray>::~pair(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<unsigned short>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<unsigned short>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<unsigned short>>>>::__deallocate_node(int a1, void *__p)
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

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<unsigned short>>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(void *a1, unsigned __int8 *a2)
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
      v5 = v2 % a1[1];
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned char,std::vector<unsigned short>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<unsigned short>>>>::find<unsigned char>(void *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 16) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,int>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,int>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,int>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,int>>>::__emplace_unique_key_args<unsigned char,std::piecewise_construct_t const&,std::tuple<unsigned char const&>,std::tuple<>>(void *a1, unsigned __int8 *a2)
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
      v5 = v2 % a1[1];
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void _GLOBAL__sub_I_CadModelRetriever_mm()
{
  v77 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  LODWORD(v25) = 0;
  *(&v25 + 1) = @"Unknown";
  LODWORD(v26) = 1;
  *(&v26 + 1) = *(&v25 + 1);
  LODWORD(v27) = 2;
  *(&v27 + 1) = *(&v26 + 1);
  LODWORD(v28) = 3;
  *(&v28 + 1) = *(&v27 + 1);
  LODWORD(v29) = 4;
  *(&v29 + 1) = *(&v28 + 1);
  LODWORD(v30) = 5;
  *(&v30 + 1) = *(&v29 + 1);
  LODWORD(v31) = 6;
  v24 = @"Door";
  *(&v31 + 1) = v24;
  LODWORD(v32) = 7;
  v23 = @"Window";
  *(&v32 + 1) = v23;
  LODWORD(v33) = 8;
  *(&v33 + 1) = *(&v30 + 1);
  LODWORD(v34) = 9;
  v21 = @"Fireplace";
  *(&v34 + 1) = v21;
  LODWORD(v35) = 10;
  *(&v35 + 1) = *(&v33 + 1);
  LODWORD(v36) = 11;
  *(&v36 + 1) = *(&v35 + 1);
  LODWORD(v37) = 12;
  v22 = @"Stairs";
  *(&v37 + 1) = v22;
  LODWORD(v38) = 13;
  v17 = @"Bed";
  *(&v38 + 1) = v17;
  LODWORD(v39) = 14;
  v40 = @"Cabinet";
  v41 = 15;
  v20 = @"Chair";
  v42 = v20;
  v43 = 16;
  v44 = v40;
  v45 = 17;
  v46 = v44;
  v47 = 18;
  v19 = @"Sofa";
  v48 = v19;
  v49 = 19;
  v18 = @"Table";
  v50 = v18;
  v51 = 20;
  v16 = @"Toilet";
  v52 = v16;
  v53 = 21;
  v0 = @"Sink";
  v54 = v0;
  v55 = 22;
  v15 = @"Bathtub";
  v56 = v15;
  v57 = 23;
  v58 = *(&v36 + 1);
  v59 = 24;
  v1 = @"Refrigerator";
  v60 = v1;
  v61 = 25;
  v2 = @"Stove";
  v62 = v2;
  v63 = 26;
  v3 = @"Washer";
  v64 = v3;
  v65 = 27;
  v4 = @"Oven";
  v66 = v4;
  v67 = 28;
  v5 = @"Dishwasher";
  v68 = v5;
  v69 = 29;
  v70 = v58;
  v71 = 30;
  v6 = v46;
  v72 = v6;
  v73 = 31;
  v74 = v70;
  v75 = 32;
  v7 = @"Screen";
  v76 = v7;
  std::unordered_map<int,NSString * {__strong}>::unordered_map(&kSemanticsODLabelMap, &v25, 33);
  for (i = 520; i != -8; i -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<int,NSString * {__strong}>::~unordered_map[abi:ne200100], &kSemanticsODLabelMap, &dword_25D1DB000);
  v35 = xmmword_25D278678;
  v36 = unk_25D278688;
  v37 = xmmword_25D278698;
  v38 = unk_25D2786A8;
  v31 = xmmword_25D278638;
  v32 = unk_25D278648;
  v33 = xmmword_25D278658;
  v34 = unk_25D278668;
  v27 = xmmword_25D2785F8;
  v28 = unk_25D278608;
  v29 = xmmword_25D278618;
  v30 = unk_25D278628;
  v25 = xmmword_25D2785D8;
  v26 = unk_25D2785E8;
  v39 = 28;
  std::unordered_map<int,SemanticLabelv5>::unordered_map(&kSparseSSDSemanticLabels, &v25, 29);
  __cxa_atexit(std::unordered_map<int,SemanticLabelv5>::~unordered_map[abi:ne200100], &kSparseSSDSemanticLabels, &dword_25D1DB000);
  LODWORD(v25) = 0;
  *(&v25 + 1) = v6;
  LODWORD(v26) = 1;
  *(&v26 + 1) = v1;
  LODWORD(v27) = 2;
  *(&v27 + 1) = @"Shelf";
  LODWORD(v28) = 3;
  *(&v28 + 1) = v2;
  LODWORD(v29) = 4;
  *(&v29 + 1) = v17;
  LODWORD(v30) = 5;
  *(&v30 + 1) = v0;
  LODWORD(v31) = 6;
  *(&v31 + 1) = v3;
  LODWORD(v32) = 7;
  *(&v32 + 1) = v16;
  LODWORD(v33) = 8;
  *(&v33 + 1) = v15;
  LODWORD(v34) = 9;
  *(&v34 + 1) = v4;
  LODWORD(v35) = 10;
  *(&v35 + 1) = v5;
  LODWORD(v36) = 11;
  *(&v36 + 1) = v21;
  LODWORD(v37) = 12;
  *(&v37 + 1) = @"Stool";
  LODWORD(v38) = 13;
  v9 = v20;
  *(&v38 + 1) = v9;
  LODWORD(v39) = 14;
  v40 = v18;
  v41 = 15;
  v42 = v7;
  v43 = 16;
  v10 = v19;
  v44 = v10;
  v45 = 17;
  v46 = v22;
  v47 = 18;
  v48 = v23;
  v49 = 19;
  v50 = v24;
  v51 = 20;
  v52 = @"BuildInCabinet";
  std::unordered_map<int,NSString * {__strong}>::unordered_map(&kSparseSSDObjectLabels, &v25, 21);
  for (j = 328; j != -8; j -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<int,NSString * {__strong}>::~unordered_map[abi:ne200100], &kSparseSSDObjectLabels, &dword_25D1DB000);
  std::string::basic_string[abi:ne200100]<0>(&v25, -[__CFString UTF8String](v10, "UTF8String"));
  BYTE8(v26) = 0;
  std::string::basic_string[abi:ne200100]<0>(&v27, -[__CFString UTF8String](v9, "UTF8String"));
  BYTE8(v28) = 1;
  std::unordered_map<std::string,unsigned char>::unordered_map(kObjectTypeToRetrievelClassIdx, &v25, 2);
  for (k = 0; k != -64; k -= 32)
  {
    if (*(&v28 + k + 7) < 0)
    {
      operator delete(*(&v27 + k));
    }
  }

  __cxa_atexit(std::unordered_map<std::string,unsigned char>::~unordered_map[abi:ne200100], kObjectTypeToRetrievelClassIdx, &dword_25D1DB000);
  objc_autoreleasePoolPop(context);
  v13 = *MEMORY[0x277D85DE8];
}

void sub_25D2249A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  v28 = (v26 + 55);
  v29 = -64;
  v30 = v28;
  while (1)
  {
    v31 = *v30;
    v30 -= 32;
    if (v31 < 0)
    {
      operator delete(*(v28 - 23));
    }

    v28 = v30;
    v29 += 32;
    if (!v29)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t is_sample_points_equal(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = 0;
  v7 = ([v5 count] + 29) / 0x1EuLL;
  v8 = (a1 + 8);
  v9 = (a3 + 8);
  v10 = 1;
  while (v6 < [v5 count])
  {
    v11 = [v5 points];
    v12 = *(v11 + v6);
    *(v9 - 2) = v12;
    v13 = test_utils::Comparator::closeEnoughWPercent(v11, *(v8 - 2), *&v12, 0.000001);
    v14 = v13;
    v15 = test_utils::Comparator::closeEnoughWPercent(v13, *(v8 - 1), *(v9 - 1), 0.000001);
    v10 &= test_utils::Comparator::closeEnoughWPercent(v15, *v8, *v9, 0.000001) && v15 && v14;
    v6 += v7;
    v8 += 4;
    v9 += 4;
  }

  return v10 & 1;
}

void sub_25D2257DC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

double rotationXMatrix(float a1)
{
  __sincosf_stret(a1);
  *&result = 1065353216;
  return result;
}

__n128 swapCornerGT2QA@<Q0>(const box3d *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  *a2 = *(a1 + 3);
  *(a2 + 16) = v2;
  *(a2 + 32) = v3;
  *(a2 + 48) = v4;
  result = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(a1 + 6);
  *(a2 + 64) = *(a1 + 7);
  *(a2 + 80) = result;
  *(a2 + 96) = v6;
  *(a2 + 112) = v7;
  return result;
}

float32x2_t box3dToCentroidSizeAngle@<D0>(float32x4_t *a1@<X0>, void *a2@<X8>)
{
  v3 = vsubq_f32(*a1, a1[3]);
  v4 = vsubq_f32(*a1, a1[1]);
  v12 = vmulq_f32(v4, v4);
  v13 = vmulq_f32(v3, v3);
  v5 = vsubq_f32(*a1, a1[4]);
  v6 = vmulq_f32(v5, v5);
  v7 = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
  v6.i64[0] = 0x3F0000003F000000;
  v6.i64[1] = 0x3F0000003F000000;
  v11 = vmulq_f32(vaddq_f32(*a1, a1[6]), v6);
  v8 = atan2f(v4.f32[0], v4.f32[1]);
  std::vector<float>::vector[abi:ne200100](a2, 7uLL);
  v9 = *a2;
  *(*a2 + 8) = v11.i32[2];
  *v9 = v11.i64[0];
  result = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v12, v12, 8uLL)), vadd_f32(vzip1_s32(*v13.i8, *v12.i8), vzip2_s32(*v13.i8, *v12.i8))));
  *(v9 + 12) = result;
  *(v9 + 20) = v7;
  *(v9 + 24) = v8;
  return result;
}

void box3dVol(const float *a1)
{
  if (a1)
  {
    std::vector<float>::vector[abi:ne200100](__A, 3uLL);
    __C = 0.0;
    MEMORY[0x25F895930](a1 + 3, 1, a1, 1, __A[0], 1, 3);
    vDSP_svesq(__A[0], 1, &__C, 3uLL);
    MEMORY[0x25F895930](a1 + 6, 1, a1 + 3, 1, __A[0], 1, 3);
    vDSP_svesq(__A[0], 1, &__C, 3uLL);
    MEMORY[0x25F895930](a1 + 12, 1, a1, 1, __A[0], 1, 3);
    vDSP_svesq(__A[0], 1, &__C, 3uLL);
    if (__A[0])
    {
      __A[1] = __A[0];
      operator delete(__A[0]);
    }
  }
}

void sub_25D22762C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float boxVolume(const box3d *a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 5);
  v22[4] = *(a1 + 4);
  v22[5] = v1;
  v2 = *(a1 + 7);
  v22[6] = *(a1 + 6);
  v22[7] = v2;
  v3 = *(a1 + 1);
  v22[0] = *a1;
  v22[1] = v3;
  v4 = *(a1 + 3);
  v22[2] = *(a1 + 2);
  v22[3] = v4;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  std::vector<box3d>::__init_with_size[abi:ne200100]<box3d const*,box3d const*>(&v18, v22, v23, 1uLL);
  std::vector<float>::vector[abi:ne200100](__p, 8 * (((v19 - v18) >> 6) + ((v19 - v18) >> 7)));
  v5 = v18;
  if (v19 != v18)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v6;
      v10 = v7;
      v11 = 8;
      do
      {
        v12 = __p[0] + v9;
        v13 = *&v18[v10];
        *(v12 + 2) = *&v18[v10 + 8];
        *v12 = v13;
        v10 += 16;
        v9 += 12;
        --v11;
      }

      while (v11);
      ++v8;
      v5 = v18;
      v7 += 128;
      v6 += 96;
    }

    while (v8 < (v19 - v18) >> 7);
  }

  if (v5)
  {
    v19 = v5;
    operator delete(v5);
  }

  box3dVol(__p[0]);
  v15 = v14;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_25D2277A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t box3dToYDownCoord@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  for (i = 0; i != 128; i += 16)
  {
    v3 = vmulq_f32(*(result + i), xmmword_25D2786F0);
    *(a2 + i) = vuzp1q_s32(v3, vrev64q_s32(v3));
  }

  return result;
}

uint64_t box3dToZUpCoord@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v8 = vnegq_f64(_Q0);
  do
  {
    v9 = vmulq_f32(*(result + v2), v8);
    *(a2 + v2) = vuzp1q_s32(v9, vrev64q_s32(v9));
    v2 += 16;
  }

  while (v2 != 128);
  return result;
}

float flipAxisToWorld@<S0>(const box3d *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = 0;
  v3 = *(a1 + 5);
  a2[4] = *(a1 + 4);
  a2[5] = v3;
  v4 = *(a1 + 7);
  a2[6] = *(a1 + 6);
  a2[7] = v4;
  v5 = *(a1 + 1);
  *a2 = *a1;
  a2[1] = v5;
  v6 = *(a1 + 3);
  a2[2] = *(a1 + 2);
  a2[3] = v6;
  do
  {
    v7 = &a2[v2];
    v8 = vuzp1q_s32(a2[v2], a2[v2]).u64[0];
    result = -COERCE_FLOAT(HIDWORD(*&a2[v2]));
    v7[2] = result;
    *v7 = v8;
    ++v2;
  }

  while (v2 != 8);
  return result;
}

void box3dIou(float32x4_t *a1@<X0>, float32x4_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v79 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = *a2;
  v9 = vsubq_f32(*a1, *a2);
  v10 = vmulq_f32(v9, v9);
  if (sqrtf(v10.f32[2] + vaddv_f32(*v10.f32)) <= 0.001)
  {
    v25 = 1;
    while (v25 != 8)
    {
      v26 = vsubq_f32(a1[v25], a2[v25]);
      v27 = vmulq_f32(v26, v26);
      ++v25;
      if (sqrtf(v27.f32[2] + vaddv_f32(*v27.f32)) > 0.001)
      {
        if ((v25 - 2) < 7)
        {
          goto LABEL_2;
        }

        break;
      }
    }

    __asm { FMOV            V0.2S, #1.0 }

    *a4 = _D0;
    *(a4 + 8) = boxVolume(a1);
    *(a4 + 12) = xmmword_25D278700;
    *(a4 + 28) = xmmword_25D277BC0;
    *(a4 + 44) = 0;
  }

  else
  {
LABEL_2:
    if (a3)
    {
      v11 = 0;
      v12 = a1[5];
      v73 = a1[4];
      v74 = v12;
      v13 = a1[7];
      v75 = a1[6];
      v76 = v13;
      v14 = a1[1];
      *v69 = *a1;
      v70 = v14;
      v15 = a1[3];
      v71 = a1[2];
      v72 = v15;
      do
      {
        v16 = &v69[v11];
        v17 = vuzp1q_s32(*&v69[v11], *&v69[v11]).u64[0];
        *(v16 + 2) = -COERCE_FLOAT(v69[v11] >> 32);
        *v16 = v17;
        v11 += 2;
      }

      while (v11 != 16);
      v18 = 0;
      v19 = a2[7];
      v67 = a2[6];
      v68 = v19;
      v20 = a2[5];
      v65 = a2[4];
      v66 = v20;
      v21 = a2[1];
      *v61 = *a2;
      v62 = v21;
      v22 = a2[3];
      v63 = a2[2];
      v64 = v22;
      do
      {
        v23 = &v61[v18];
        v24 = vuzp1q_s32(*&v61[v18], *&v61[v18]).u64[0];
        *(v23 + 2) = -COERCE_FLOAT(v61[v18] >> 32);
        *v23 = v24;
        v18 += 2;
      }

      while (v18 != 16);
      box3dIou(v69, v61, 0);
    }

    else
    {
      v33 = a1[2];
      v7.i64[1] = a1[1].i64[0];
      v33.i64[1] = a1[3].i64[0];
      v34 = a2[1];
      v35 = a2[2];
      v8.i64[1] = a2[1].i64[0];
      v78[0] = v7;
      v78[1] = v33;
      v36 = a2[3];
      v35.i64[1] = a2[3].i64[0];
      v77[0] = v8;
      v77[1] = v35;
      OU::Polygon::Polygon(v69, v78, 4);
      OU::Polygon::Polygon(v61, v77, 4);
      OU::clip(v69, v61, __p);
      v38 = OU::area(v69, v37);
      v40 = OU::area(v61, v39);
      v42 = OU::area(__p, v41);
      v43 = a1->f32[2];
      v44 = a2->f32[2];
      v45 = a1[4].f32[2];
      v46 = a2[4].f32[2];
      v48 = OU::area(v69, v47);
      v58 = *a1;
      v59 = a1[4];
      v50 = OU::area(v61, v49);
      v51 = (v38 + v40) - v42;
      v52 = fmax((fminf(v45, v46) - fmaxf(v43, v44)), 0.0);
      v53 = v42 * v52;
      v54 = v48 * vabds_f32(v59.f32[2], v58.f32[2]);
      v55 = v50 * vabds_f32(a2[4].f32[2], a2->f32[2]);
      v56 = (v54 + v55) - v53;
      *a4 = v53 / v56;
      *(a4 + 4) = v53;
      *(a4 + 8) = v56;
      *(a4 + 12) = v53 / fminf(v54, v55);
      *(a4 + 16) = v53 / v54;
      *(a4 + 20) = v53 / v55;
      *(a4 + 24) = v42 / v51;
      *(a4 + 28) = v42;
      *(a4 + 32) = v51;
      *(a4 + 36) = v42 / fminf(v38, v40);
      *(a4 + 40) = v42 / v38;
      *(a4 + 44) = v42 / v40;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v61[0])
      {
        v61[1] = v61[0];
        operator delete(v61[0]);
      }

      if (v69[0])
      {
        v69[1] = v69[0];
        operator delete(v69[0]);
      }
    }
  }

  v57 = *MEMORY[0x277D85DE8];
}

void sub_25D227BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a35)
  {
    operator delete(a35);
  }

  _Unwind_Resume(exception_object);
}

void centroidSizeAngleToBox3d(_OWORD *a1@<X8>, __n128 a2@<Q0>, int8x16_t a3@<Q1>, float a4@<S2>)
{
  std::vector<float>::vector[abi:ne200100](__p, 7uLL);
  v6 = a2;
  v6.n128_u32[3] = a3.i32[0];
  v7 = __p[0];
  *__p[0] = v6;
  v7[2] = vext_s8(*a3.i8, *&vextq_s8(a3, a3, 8uLL), 4uLL);
  *v7[3].i32 = a4;
  centroidSizeAngleToBox3d(__p, 1, a1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_25D227CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void centroidSizeAngleToBox3d(float32x2_t **a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = vmul_f32((*a1)[2], 0x3F0000003F000000);
  v26 = (*a1)[1].f32[1] * 0.5;
  v7 = vneg_f32(v6);
  v27 = __PAIR64__(v7.u32[1], v6.u32[0]);
  v28 = v26;
  v29 = v7;
  v30 = -v26;
  v31 = v7;
  v32 = -v26;
  v33 = __PAIR64__(v7.u32[1], v6.u32[0]);
  v34 = v26;
  v35 = v6;
  v36 = v26;
  v7.i32[1] = v6.i32[1];
  v37 = v7;
  v38 = -v26;
  v39 = v7;
  v40 = -v26;
  v41 = v6;
  __p = 0;
  v24 = 0;
  v25 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, &v26, &v42, 0x18uLL);
  v8 = 0;
  v9.i32[3] = 0;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v10 = a3;
  v11 = __p;
  do
  {
    *v10 = *&v11[v8];
    *(v10 + 2) = *&v11[v8 + 8];
    v8 += 12;
    ++v10;
  }

  while (v8 != 96);
  v12 = *a1;
  if (a2)
  {
    v13 = __sincosf_stret(v12[3].f32[0]);
    v14 = 0;
    v15.i64[1] = 0;
    v15.i32[0] = HIDWORD(v13);
    v9.i32[3] = 0;
    do
    {
      v15.f32[1] = -*&v13;
      a3[v14] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(a3[v14])), v13, *&a3[v14], 1), xmmword_25D277BC0, a3[v14], 2);
      ++v14;
    }

    while (v14 != 8);
  }

  v16 = 0;
  *v9.f32 = *v12;
  v9.i32[2] = v12[1].i32[0];
  do
  {
    a3[v16] = vaddq_f32(v9, a3[v16]);
    ++v16;
  }

  while (v16 != 8);
  if ((a2 & 1) == 0)
  {
    v18 = __sincosf_stret(v12[3].f32[0]);
    *v17.i8 = v18;
    v19 = 0;
    v20 = vzip1q_s32(v17, 0);
    v21 = vzip2q_s32(vzip1q_s32(vdupq_lane_s32(*v20.i8, 0), 0), v20);
    do
    {
      a3[v19] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(__PAIR64__(-v18.__sinval, LODWORD(v18.__cosval)), COERCE_FLOAT(a3[v19])), v21, *&a3[v19], 1), xmmword_25D277BC0, a3[v19], 2);
      ++v19;
    }

    while (v19 != 8);
  }

  if (v11)
  {
    v24 = v11;
    operator delete(v11);
  }

  v22 = *MEMORY[0x277D85DE8];
}

double getCentroid(const box3d *a1)
{
  v1 = 0;
  v2 = 0uLL;
  do
  {
    v2 = vaddq_f32(v2, *(a1 + v1));
    v1 += 16;
  }

  while (v1 != 128);
  v3.i64[0] = 0x3E0000003E000000;
  v3.i64[1] = 0x3E0000003E000000;
  *&result = vmulq_f32(v2, v3).u64[0];
  return result;
}

int32x4_t *rotateBoxCorners@<X0>(int32x4_t *result@<X0>, const box3d *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = result[1];
  v5 = result[2];
  v6 = result[3];
  v7 = vzip1q_s32(*result, v5);
  v8 = vzip2q_s32(*result, v5);
  v9 = vzip1q_s32(v4, v6);
  v10 = vzip2q_s32(v4, v6);
  v11 = vzip1q_s32(v7, v9);
  v12 = vzip2q_s32(v7, v9);
  v13 = vzip1q_s32(v8, v10);
  v14 = vzip2q_s32(v8, v10);
  v15 = vzip1q_s32(v11, v13);
  v16 = vzip2q_s32(v11, v13);
  v17 = vzip1q_s32(v12, v14);
  v18 = vzip2q_s32(v12, v14);
  v19 = vzip1q_s32(v15, v17);
  v20 = vzip2q_s32(v15, v17);
  v21 = vzip1q_s32(v16, v18);
  v22 = vzip2q_s32(v16, v18);
  do
  {
    *(a3 + v3) = vaddq_f32(v22, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(*(a2 + v3))), v20, *(a2 + v3), 1), v21, *(a2 + v3), 2));
    v3 += 16;
  }

  while (v3 != 128);
  return result;
}

float32x4_t *rotateBoxCorners@<X0>(float32x4_t *result@<X0>, const box3d *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v4 = *result;
  v5 = result[1];
  v6 = result[2];
  do
  {
    *(a3 + v3) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*(a2 + v3))), v5, *(a2 + v3), 1), v6, *(a2 + v3), 2);
    v3 += 16;
  }

  while (v3 != 128);
  return result;
}

void writeBox3ds(const void **a1, uint64_t *a2, unsigned int **a3)
{
  v52 = *MEMORY[0x277D85DE8];
  if (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5) == a3[1] - *a3)
  {
    if (*(a1 + 23) >= 0)
    {
      v6 = *(a1 + 23);
    }

    else
    {
      v6 = a1[1];
    }

    v7 = &v47;
    std::string::basic_string[abi:ne200100](&v47, v6 + 11);
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v47.__r_.__value_.__r.__words[0];
    }

    if (v6)
    {
      if (*(a1 + 23) >= 0)
      {
        v8 = a1;
      }

      else
      {
        v8 = *a1;
      }

      memmove(v7, v8, v6);
    }

    strcpy(v7 + v6, "corners.txt");
    if (*(a1 + 23) >= 0)
    {
      v9 = *(a1 + 23);
    }

    else
    {
      v9 = a1[1];
    }

    p_s = &__s;
    std::string::basic_string[abi:ne200100](&__s, v9 + 9);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if (v9)
    {
      if (*(a1 + 23) >= 0)
      {
        v11 = a1;
      }

      else
      {
        v11 = *a1;
      }

      memmove(p_s, v11, v9);
    }

    strcpy(p_s + v9, "types.txt");
    if (*(a1 + 23) >= 0)
    {
      v12 = *(a1 + 23);
    }

    else
    {
      v12 = a1[1];
    }

    v13 = &v45;
    std::string::basic_string[abi:ne200100](&v45, v12 + 15);
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = v45.__r_.__value_.__r.__words[0];
    }

    if (v12)
    {
      if (*(a1 + 23) >= 0)
      {
        v14 = a1;
      }

      else
      {
        v14 = *a1;
      }

      memmove(v13, v14, v12);
    }

    strcpy(v13 + v12, "confidences.txt");
    if (*(a1 + 23) >= 0)
    {
      v15 = *(a1 + 23);
    }

    else
    {
      v15 = a1[1];
    }

    v16 = &v44;
    std::string::basic_string[abi:ne200100](&v44, v15 + 9);
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = v44.__r_.__value_.__r.__words[0];
    }

    if (v15)
    {
      if (*(a1 + 23) >= 0)
      {
        v17 = a1;
      }

      else
      {
        v17 = *a1;
      }

      memmove(v16, v17, v15);
    }

    strcpy(v16 + v15, "uuids.txt");
    std::vector<float>::vector[abi:ne200100](v43, 0x4924924924924928 * ((a2[1] - *a2) >> 5));
    std::vector<float>::vector[abi:ne200100](__p, 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
    std::vector<std::string>::vector[abi:ne200100](&v40, 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
    v18 = *a2;
    if (a2[1] != *a2)
    {
      v19 = 0;
      v20 = 4;
      v21 = 4;
      do
      {
        v22 = v18 + 224 * v19;
        v23 = (v18 + v21);
        v24 = v43[0] + v20;
        v25 = 8;
        do
        {
          *(v24 - 1) = *(v23 - 1);
          *v24 = *v23;
          v24[1] = v23[1];
          v23 += 4;
          v24 += 3;
          --v25;
        }

        while (v25);
        *(__p[0] + v19) = *(v22 + 136);
        v26 = [*(v22 + 144) UUIDString];
        v27 = v26;
        v28 = [v26 UTF8String];
        std::string::__assign_external((v40 + 24 * v19), v28);

        ++v19;
        v18 = *a2;
        v21 += 224;
        v20 += 96;
      }

      while (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5) > v19);
    }

    ObjectUnderstandingTest::writeValue<std::vector<float>>(&v47, v43);
    v49.__loc_ = 0;
    v48.__sb_.__extbufnext_ = 0;
    v48.__sb_.__extbuf_ = &unk_286EBC0C8;
    v49.__vftable = &unk_286EBC0F0;
    std::ios_base::init(&v49, v48.__sb_.__extbuf_min_);
    v51 = -1;
    v50 = 0;
    MEMORY[0x25F894BC0](v48.__sb_.__extbuf_min_);
    std::fstream::open(&v48, &__s, 0x10u);
    v29 = *a3;
    v30 = a3[1];
    if (*a3 != v30)
    {
      do
      {
        v31 = MEMORY[0x25F894C60](&v48.__sb_.__extbufend_, *v29);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " ", 1);
        ++v29;
      }

      while (v29 != v30);
    }

    if (!std::filebuf::close())
    {
      std::ios_base::clear((&v48 + *(v48.__sb_.__extbuf_ - 3)), *&v48.__sb_.__extbuf_min_[*(v48.__sb_.__extbuf_ - 3) + 8] | 4);
    }

    MEMORY[0x25F894BD0](v48.__sb_.__extbuf_min_);
    std::iostream::~basic_iostream();
    MEMORY[0x25F894D60](&v49);
    ObjectUnderstandingTest::writeValue<std::vector<float>>(&v45, __p);
    v49.__loc_ = 0;
    v48.__sb_.__extbufnext_ = 0;
    v48.__sb_.__extbuf_ = &unk_286EBC0C8;
    v49.__vftable = &unk_286EBC0F0;
    std::ios_base::init(&v49, v48.__sb_.__extbuf_min_);
    v51 = -1;
    v50 = 0;
    MEMORY[0x25F894BC0](v48.__sb_.__extbuf_min_);
    std::fstream::open(&v48, &v44, 0x10u);
    v32 = v40;
    for (i = v41; v32 != i; v32 += 24)
    {
      v34 = *(v32 + 23);
      if (v34 >= 0)
      {
        v35 = v32;
      }

      else
      {
        v35 = *v32;
      }

      if (v34 >= 0)
      {
        v36 = *(v32 + 23);
      }

      else
      {
        v36 = *(v32 + 8);
      }

      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48.__sb_.__extbufend_, v35, v36);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " ", 1);
    }

    if (!std::filebuf::close())
    {
      std::ios_base::clear((&v48 + *(v48.__sb_.__extbuf_ - 3)), *&v48.__sb_.__extbuf_min_[*(v48.__sb_.__extbuf_ - 3) + 8] | 4);
    }

    MEMORY[0x25F894BD0](v48.__sb_.__extbuf_min_);
    std::iostream::~basic_iostream();
    MEMORY[0x25F894D60](&v49);
    v48.__sb_.__extbuf_ = &v40;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v48);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v43[0])
    {
      v43[1] = v43[0];
      operator delete(v43[0]);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v38 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      writeBox3ds();
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

void sub_25D22873C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char *a43, char a44)
{
  std::iostream::~basic_iostream();
  MEMORY[0x25F894D60](v44);
  a43 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a43);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  if (a16)
  {
    a17 = a16;
    operator delete(a16);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

uint64_t ObjectUnderstandingTest::writeValue<std::vector<float>>(const std::string *a1, int **a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v11.__loc_ = 0;
  v10.__sb_.__extbufnext_ = 0;
  v11.__vftable = &unk_286EBC0F0;
  std::ios_base::init(&v11, v10.__sb_.__extbuf_min_);
  v13 = -1;
  v12 = 0;
  MEMORY[0x25F894BC0](v10.__sb_.__extbuf_min_);
  std::fstream::open(&v10, a1, 0x10u);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v6 = *v4;
      v7 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " ", 1);
      ++v4;
    }

    while (v4 != v5);
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear((&v10 + *(v10.__sb_.__extbuf_ - 3)), *&v10.__sb_.__extbuf_min_[*(v10.__sb_.__extbuf_ - 3) + 8] | 4);
  }

  MEMORY[0x25F894BD0](v10.__sb_.__extbuf_min_);
  std::iostream::~basic_iostream();
  result = MEMORY[0x25F894D60](&v11);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25D228A4C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x25F894D60](v1);
  _Unwind_Resume(a1);
}

uint64_t loadBoxes(uint64_t *a1, void *a2)
{
  v24[19] = *MEMORY[0x277D85DE8];
  __p = 0;
  v18 = 0;
  v19 = 0;
  std::ifstream::basic_ifstream(v21, a1);
  v3 = v23;
  if (v23)
  {
    for (i = 0; ; std::vector<float>::push_back[abi:ne200100](&__p, &i))
    {
      v4 = MEMORY[0x25F894C10](v21, &i);
      if ((*(v4 + *(*v4 - 24) + 32) & 5) != 0)
      {
        break;
      }
    }

    if (!std::filebuf::close())
    {
      std::ios_base::clear((v21 + *(v21[0] - 24)), *&v22[*(v21[0] - 24) + 16] | 4);
    }
  }

  v21[0] = *MEMORY[0x277D82808];
  *(v21 + *(v21[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x25F894BD0](v22);
  std::istream::~istream();
  MEMORY[0x25F894D60](v24);
  if (v3 && (v5 = (v18 - __p) >> 2, !(v5 % 0x18)))
  {
    a2[1] = *a2;
    std::vector<box3d>::resize(a2, v5 / 0x18);
    if (v5 >= 0x18)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = 8;
        v13 = v9;
        v14 = v10;
        do
        {
          *&v8 = *(__p + v14);
          DWORD2(v8) = *(__p + v14 + 8);
          *(*a2 + v13) = v8;
          v14 += 12;
          v13 += 16;
          --v12;
        }

        while (v12);
        ++v11;
        v10 += 96;
        v9 += 128;
      }

      while (v11 != v5 / 0x18);
    }

    v7 = 1;
  }

  else
  {
    v6 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      loadBoxes();
    }

    v7 = 0;
  }

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_25D228D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<box3d>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + (a2 << 7);
    }
  }

  else
  {
    std::vector<box3d>::__append(a1, a2 - v2);
  }
}

uint64_t box2boxCornerdist(uint64_t result, const box3d *a2)
{
  v2 = 0;
  v3 = 3.4028e38;
  do
  {
    for (i = 0; i != 128; i += 16)
    {
      v5 = vsubq_f32(*(result + 16 * v2), *(a2 + i));
      v6 = vmulq_f32(v5, v5);
      v7 = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
      if (v7 < v3)
      {
        v3 = v7;
      }
    }

    ++v2;
  }

  while (v2 != 8);
  return result;
}

void box3dEnlarge(float32x4_t *a1@<X0>, float32x2_t a2@<D0>, float32_t a3@<S1>, float a4@<S2>, _OWORD *a5@<X8>)
{
  v7 = vsubq_f32(*a1, a1[3]);
  v8 = vmulq_f32(v7, v7);
  v9 = vsubq_f32(*a1, a1[1]);
  v19 = *a1;
  v10 = vmulq_f32(v9, v9);
  v11 = vadd_f32(vzip1_s32(*v8.i8, *v10.i8), vzip2_s32(*v8.i8, *v10.i8));
  v12 = vextq_s8(v8, v8, 8uLL);
  a2.f32[1] = a3;
  *v12.i8 = vmaxnm_f32(vadd_f32(vsqrt_f32(vadd_f32(vzip1_s32(*v12.i8, *&vextq_s8(v10, v10, 8uLL)), v11)), a2), vdup_n_s32(0x3DCCCCCDu));
  v13 = vsubq_f32(*a1, a1[4]);
  v14 = vmulq_f32(v13, v13);
  v12.i32[2] = fmaxf(sqrtf(v14.f32[2] + vaddv_f32(*v14.f32)) + a4, 0.1);
  v18 = v12;
  v15 = atan2f(v9.f32[0], v9.f32[1]);
  v16.i64[0] = 0x3F0000003F000000;
  v16.i64[1] = 0x3F0000003F000000;
  v17 = vmulq_f32(vaddq_f32(v19, a1[6]), v16);

  centroidSizeAngleToBox3d(a5, v17, v18, v15);
}

void box3dFromNSArray(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v18 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "[3DOD] box3dFromNSArray takes non-null pointer).");
    goto LABEL_10;
  }

  if ([v3 count] != 8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "[3DOD] box3dFromNSArray takes non-8 corners box).");
LABEL_10:
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  for (i = 0; i != 8; ++i)
  {
    v5 = [v18 objectAtIndexedSubscript:i];
    v6 = [v5 objectAtIndexedSubscript:0];
    [v6 floatValue];
    v17 = v7;
    v8 = [v18 objectAtIndexedSubscript:i];
    v9 = [v8 objectAtIndexedSubscript:1];
    [v9 floatValue];
    v16 = v10;
    v11 = [v18 objectAtIndexedSubscript:i];
    v12 = [v11 objectAtIndexedSubscript:2];
    [v12 floatValue];
    v13 = v17;
    DWORD1(v13) = v16;
    DWORD2(v13) = v14;
    *(a2 + 16 * i) = v13;
  }
}

void sub_25D22908C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  __cxa_free_exception(v14);

  _Unwind_Resume(a1);
}

BOOL areBoxesEqualByCorners(const box3d *a1, const box3d *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = vdup_n_s32(0x358637BDu);
  do
  {
    v5 = vsubq_f32(*a1, *a2);
    if (fabsf(*v5.i32) > 0.000001)
    {
      break;
    }

    v6 = vcgt_f32(vabs_f32(*&vextq_s8(v5, v5, 4uLL)), v4);
    if (v6.i8[0])
    {
      break;
    }

    if (v6.i8[4])
    {
      break;
    }

    v3 = v2 > 6;
    a1 = (a1 + 16);
    a2 = (a2 + 16);
    ++v2;
  }

  while (v2 != 8);
  return v3;
}

id boxesToObjects(uint64_t *a1, void *a2, unsigned int a3)
{
  v27 = a2;
  v5 = *a1;
  v4 = a1[1];
  v6 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 5);
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:v6];
  v8 = v4 == v5;
  v9 = v7;
  if (!v8)
  {
    v10 = 0;
    if (v6 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v6;
    }

    v25 = xmmword_25D278710;
    do
    {
      v12 = objc_alloc_init(OU3DObject);
      [(OU3DObject *)v12 setType:*(*a1 + 224 * v10 + 128)];
      v13 = [*(*a1 + 224 * v10 + 152) copy];
      [(OU3DObject *)v12 setDetection_source:v13];

      v14 = [*(*a1 + 224 * v10 + 144) copy];
      [(OU3DObject *)v12 setIdentifier:v14];

      LODWORD(v15) = *(*a1 + 224 * v10 + 136);
      [(OU3DObject *)v12 setConfidence:v15];
      v16 = *a1 + 224 * v10;
      v29 = 0;
      v30 = 0;
      v28 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v28, *(v16 + 160), *(v16 + 168), (*(v16 + 168) - *(v16 + 160)) >> 2);
      v31 = 0;
      v32 = 0;
      v33 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v31, v28, v29, (v29 - v28) >> 2);
      __p = 0;
      v35 = 0;
      v36 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v31, v32, (v32 - v31) >> 2);
      v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:(v35 - __p) >> 2];
      v19 = __p;
      if (v35 != __p)
      {
        v20 = 0;
        do
        {
          LODWORD(v18) = v19[v20];
          v21 = [MEMORY[0x277CCABB0] numberWithFloat:{v18, v25}];
          [v17 addObject:v21];

          ++v20;
          v19 = __p;
        }

        while (v20 < (v35 - __p) >> 2);
      }

      v22 = [v17 copy];

      v9 = v7;
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      if (v31)
      {
        v32 = v31;
        operator delete(v31);
      }

      [(OU3DObject *)v12 setLogits:v22];

      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }

      [(OU3DObject *)v12 setStatus:a3];
      [(OU3DObject *)v12 setColor:*&v25];
      [(OU3DObject *)v12 addGroupId:*(*a1 + 224 * v10 + 216) forGroupType:*(*a1 + 224 * v10 + 208)];
      [(OU3DObject *)v12 addBoxesDict:*a1 + 224 * v10 forDictKey:v27];
      [v7 addObject:v12];

      ++v10;
    }

    while (v10 != v11);
  }

  v23 = [v9 copy];

  return v23;
}

void updateObjectsWithBoxes(uint64_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v25 = a3;
  v6 = [v5 count];
  if (v6)
  {
    v7 = 0;
    v24 = v6;
    do
    {
      v8 = [v5 objectAtIndexedSubscript:v7];
      v9 = *a1;
      if (a1[1] != *a1)
      {
        v10 = 0;
        do
        {
          v11 = *(v9 + 224 * v10 + 144);
          v12 = [v5 objectAtIndexedSubscript:v7];
          v13 = [v12 identifier];
          LOBYTE(v11) = [v11 isEqual:v13];

          if (v11)
          {
            [v8 setType:*(*a1 + 224 * v10 + 128)];
            v14 = [*(*a1 + 224 * v10 + 152) copy];
            [v8 setDetection_source:v14];

            v15 = [*(*a1 + 224 * v10 + 144) copy];
            [v8 setIdentifier:v15];

            LODWORD(v16) = *(*a1 + 224 * v10 + 136);
            [v8 setConfidence:v16];
            v17 = *a1 + 224 * v10;
            v27 = 0;
            v28 = 0;
            v26 = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v26, *(v17 + 160), *(v17 + 168), (*(v17 + 168) - *(v17 + 160)) >> 2);
            v29 = 0;
            v30 = 0;
            v31 = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v29, v26, v27, (v27 - v26) >> 2);
            __p = 0;
            v33 = 0;
            v34 = 0;
            std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v29, v30, (v30 - v29) >> 2);
            v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:(v33 - __p) >> 2];
            v20 = __p;
            if (v33 != __p)
            {
              v21 = 0;
              do
              {
                LODWORD(v19) = v20[v21];
                v22 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
                [v18 addObject:v22];

                ++v21;
                v20 = __p;
              }

              while (v21 < (v33 - __p) >> 2);
            }

            v23 = [v18 copy];

            if (__p)
            {
              v33 = __p;
              operator delete(__p);
            }

            if (v29)
            {
              v30 = v29;
              operator delete(v29);
            }

            [v8 setLogits:v23];

            if (v26)
            {
              v27 = v26;
              operator delete(v26);
            }

            [v8 addGroupId:*(*a1 + 224 * v10 + 216) forGroupType:*(*a1 + 224 * v10 + 208)];
            [v8 addBoxesDict:*a1 + 224 * v10 forDictKey:v25];
          }

          ++v10;
          v9 = *a1;
        }

        while (v10 < 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5));
      }

      ++v7;
    }

    while (v7 != v24);
  }
}

uint64_t isBoxRectangle(float32x4_t *a1)
{
  for (i = 0; i != 4; ++i)
  {
    v2 = vmovn_s32(vmvnq_s8(vceqq_f32(a1[i], a1[i + 4])));
    if (v2.i8[0] & 1 | v2.i8[2] & 1)
    {
      return 0;
    }
  }

  v3 = *a1[1].f32;
  v4 = vsub_f32(*a1->f32, v3);
  v5 = vmul_f32(v4, v4);
  v6 = *a1[2].f32;
  v7 = *a1[3].f32;
  v8 = vsub_f32(v6, v7);
  v9 = vmul_f32(v8, v8);
  v10 = vsqrt_f32(vadd_f32(vzip1_s32(v5, v9), vzip2_s32(v5, v9)));
  if (fabsf(vsub_f32(v10, vdup_lane_s32(v10, 1)).f32[0]) > 0.00005)
  {
    return 0;
  }

  v11 = vsub_f32(v3, v6);
  v12 = vmul_f32(v11, v11);
  v13 = vsub_f32(*a1->f32, v7);
  v14 = vmul_f32(v13, v13);
  v15 = vsqrt_f32(vadd_f32(vzip1_s32(v14, v12), vzip2_s32(v14, v12)));
  if (fabsf(vsub_f32(v15, vdup_lane_s32(v15, 1)).f32[0]) > 0.00005)
  {
    return 0;
  }

  v16 = a1[1];
  v17 = a1[2];
  v18 = vsubq_f32(v17, v16);
  if (vaddv_f32(*&vmulq_f32(vsubq_f32(v16, *a1), v18)) > 0.00001)
  {
    v19 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      isBoxRectangle();
    }

LABEL_16:

    return 0;
  }

  v21 = a1[3];
  v22 = vsubq_f32(v21, v17);
  if (vaddv_f32(*&vmulq_f32(v18, v22)) > 0.00001)
  {
    v19 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      isBoxRectangle();
    }

    goto LABEL_16;
  }

  if (vaddv_f32(*&vmulq_f32(v22, vsubq_f32(*a1, v21))) > 0.00001)
  {
    v19 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      isBoxRectangle();
    }

    goto LABEL_16;
  }

  return 1;
}

void Box3dEnlarge(int32x2_t a1@<D0>, float32x4_t *a2@<X1>, int a3@<W0>, float32x4_t *a4@<X8>)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v6 = a2[3];
  v7 = a2[5];
  v37 = a2[4];
  a4[4] = v37;
  a4[5] = v7;
  v8 = a2[7];
  a4[6] = a2[6];
  a4[7] = v8;
  v9 = a2[1];
  v34 = v6;
  v36 = *a2;
  *a4 = *a2;
  a4[1] = v9;
  v10 = a2[3];
  v32 = v9;
  a4[2] = a2[2];
  a4[3] = v10;
  *__p = xmmword_25D278080;
  v48.i64[0] = 0;
  v47 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v47, __p, &v41, 4uLL);
  v46 = xmmword_25D2780D0;
  v49 = 0uLL;
  v48.i64[1] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v48.i64[1], &v46, &v47, 4uLL);
  v45 = xmmword_25D278090;
  v51.i64[0] = 0;
  v50 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v50, &v45, &v46, 4uLL);
  v44 = xmmword_25D2780A0;
  v52 = 0uLL;
  v51.i64[1] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v51.i64[1], &v44, &v45, 4uLL);
  v43 = xmmword_25D2780B0;
  memset(v53, 0, sizeof(v53));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v53, &v43, &v44, 4uLL);
  v42 = xmmword_25D2780C0;
  v55[0] = 0;
  v55[1] = 0;
  v54 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v54, &v42, &v43, 4uLL);
  memset(v39, 0, sizeof(v39));
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(v39, &v47, v56, 6uLL);
  v11 = 0;
  v12 = vsubq_f32(v32, v36);
  v13 = vmulq_f32(v12, v12);
  v14 = vaddv_f32(*v13.f32);
  *v13.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v13.f32[2] + v14));
  *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v13.f32[2] + v14), vmul_f32(*v13.f32, *v13.f32)));
  v15 = vsubq_f32(v34, v36);
  v16 = vmulq_f32(v15, v15);
  *&v17 = v16.f32[2] + vaddv_f32(*v16.f32);
  v18 = vmulq_n_f32(v12, vmul_f32(*v13.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v13.f32[2] + v14), vmul_f32(*v13.f32, *v13.f32))).f32[0]);
  *v12.f32 = vrsqrte_f32(v17);
  *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v17, vmul_f32(*v12.f32, *v12.f32)));
  v33 = vmulq_n_f32(v15, vmul_f32(*v12.f32, vrsqrts_f32(v17, vmul_f32(*v12.f32, *v12.f32))).f32[0]);
  v35 = v18;
  v19 = vsubq_f32(v37, v36);
  v20 = vmulq_f32(v19, v19);
  *&v21 = v20.f32[2] + vaddv_f32(*v20.f32);
  *v20.f32 = vrsqrte_f32(v21);
  *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32)));
  v38 = vmulq_n_f32(v19, vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32))).f32[0]);
  do
  {
    v22 = v55[v11 - 1];
    if (v22)
    {
      v55[v11] = v22;
      operator delete(v22);
    }

    v11 -= 3;
  }

  while (v11 != -18);
  v47 = v38;
  v48 = v38;
  v49 = v33;
  v50 = v35;
  v51 = v33;
  v52 = v35;
  __p[1] = 0;
  v41 = 0;
  __p[0] = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(__p, &v47, v53, 6uLL);
  v23 = v39[0] + 24 * a3;
  v24 = *v23;
  v25 = *(v23 + 8);
  v26 = __p[0];
  if (v24 != v25)
  {
    v27 = *(__p[0] + a3);
    v28 = vdupq_lane_s32(a1, 0);
    do
    {
      v29 = *v24++;
      a4[v29] = vmlaq_f32(a4[v29], v27, v28);
    }

    while (v24 != v25);
  }

  if (v26)
  {
    __p[1] = v26;
    operator delete(v26);
  }

  v47.i64[0] = v39;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v47);
  v30 = *MEMORY[0x277D85DE8];
}

void sub_25D229DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  *(v20 - 208) = &a20;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v20 - 208));
  _Unwind_Resume(a1);
}

void boxesFromObjects(void *a1@<X0>, void *a2@<X1>, const void **a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a1;
  v43 = a2;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (a3)
  {
    a3[1] = *a3;
  }

  for (i = 0; ; i = v58[0] + 1)
  {
    v58[0] = i;
    if ([v7 count] <= i)
    {
      break;
    }

    v9 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    while (1)
    {
      v10 = [v7 objectAtIndexedSubscript:v58[0]];
      v11 = [v10 logits];
      v12 = [v11 count];

      if (v12 <= v9)
      {
        break;
      }

      v13 = [v7 objectAtIndexedSubscript:v58[0]];
      v14 = [v13 logits];
      v15 = [v14 objectAtIndex:v9];
      [v15 floatValue];
      v17 = v16;

      LODWORD(v45[0]) = v17;
      std::vector<float>::push_back[abi:ne200100](&v55, v45);
      ++v9;
    }

    v18 = [v7 objectAtIndexedSubscript:v58[0]];
    v19 = [v18 hasBoxesDict:v43];

    if (v19)
    {
      memset(v54, 0, sizeof(v54));
      v20 = [v7 objectAtIndexedSubscript:v58[0]];
      v21 = [v20 boxesDict];
      v22 = [v21 objectForKeyedSubscript:v43];
      box3dFromNSArray(v22, v54);

      v23 = [v7 objectAtIndexedSubscript:v58[0]];
      v44 = [v23 type];
      v24 = [v7 objectAtIndexedSubscript:v58[0]];
      [v24 confidence];
      v26 = v25;
      v27 = [v7 objectAtIndexedSubscript:v58[0]];
      v28 = a3;
      v29 = [v27 identifier];
      v30 = [v7 objectAtIndexedSubscript:v58[0]];
      v31 = [v30 detection_source];
      OUBox3d::OUBox3d(v45, v54, &v44, v29, &v55, v31, v26);
      v32 = a4[1];
      if (v32 >= a4[2])
      {
        v42 = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d>(a4, v45);
      }

      else
      {
        v33 = v45[0];
        v34 = v45[1];
        v35 = v45[3];
        *(v32 + 32) = v45[2];
        *(v32 + 48) = v35;
        *v32 = v33;
        *(v32 + 16) = v34;
        v36 = v45[4];
        v37 = v45[5];
        v38 = v45[7];
        *(v32 + 96) = v45[6];
        *(v32 + 112) = v38;
        *(v32 + 64) = v36;
        *(v32 + 80) = v37;
        v39 = v46;
        v46 = 0;
        *(v32 + 128) = v39;
        *(v32 + 136) = v47;
        v40 = v48;
        v48 = 0u;
        *(v32 + 176) = 0;
        *(v32 + 144) = v40;
        *(v32 + 160) = 0u;
        *(v32 + 160) = v49;
        *(v32 + 176) = v50;
        v49 = 0u;
        v50 = 0;
        *(v32 + 184) = __p[0];
        *(v32 + 192) = *&__p[1];
        memset(__p, 0, sizeof(__p));
        v41 = v52;
        v52 = 0;
        *(v32 + 208) = v41;
        *(v32 + 216) = v53;
        v42 = v32 + 224;
      }

      a4[1] = v42;

      if (__p[0])
      {
        operator delete(__p[0]);
      }

      if (v49)
      {
        *(&v49 + 1) = v49;
        operator delete(v49);
      }

      a3 = v28;
      if (v28)
      {
        std::vector<int>::push_back[abi:ne200100](v28, v58);
      }
    }

    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }
  }
}

void sub_25D22A240(_Unwind_Exception *a1, uint64_t a2, OUBox3d *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  OUBox3d::~OUBox3d(&a11);

  v20 = *(v18 - 144);
  if (v20)
  {
    *(v18 - 136) = v20;
    operator delete(v20);
  }

  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&a11);

  _Unwind_Resume(a1);
}

void NonMaximumSuppression(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  if (a2)
  {
    std::vector<int>::vector[abi:ne200100](&v27, a2);
    begin = v27.__begin_;
    end = v27.__end_;
    if (v27.__begin_ != v27.__end_)
    {
      v11 = 0;
      v12 = (v27.__end_ - v27.__begin_ - 4) >> 2;
      v13 = vdupq_n_s64(v12);
      v14 = (v12 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v15 = v27.__begin_ + 2;
      do
      {
        v16 = vdupq_n_s64(v11);
        v17 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_25D277E60)));
        if (vuzp1_s16(v17, *v13.i8).u8[0])
        {
          *(v15 - 2) = v11;
        }

        if (vuzp1_s16(v17, *&v13).i8[2])
        {
          *(v15 - 1) = v11 + 1;
        }

        if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, vorrq_s8(v16, xmmword_25D277E50)))).i32[1])
        {
          *v15 = v11 + 2;
          v15[1] = v11 + 3;
        }

        v11 += 4;
        v15 += 4;
      }

      while (v14 != v11);
    }

    v18 = 126 - 2 * __clz(end - begin);
    v28 = a1;
    if (end == begin)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    std::__introsort<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,false>(begin, end, &v28, v19, 1);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    while (v27.__begin_ != v27.__end_)
    {
      v20 = *(v27.__end_ - 1);
      v28 = v20;
      std::vector<unsigned long>::push_back[abi:ne200100](a4, &v28);
      v21 = v27.__begin_;
      v22 = v27.__end_ - 1;
      v27.__end_ = v22;
      if (v27.__begin_ == v22)
      {
        v26 = 0;
      }

      else
      {
        v23 = 0;
        do
        {
          v24 = *v21;
          std::function<float ()(int,int)>::operator()(a3, v20, *v21);
          if (v25 <= a5)
          {
            v27.__begin_[v23++] = v24;
          }

          ++v21;
        }

        while (v21 != v22);
        v26 = v23;
      }

      std::vector<float>::resize(&v27, v26);
    }

    if (v27.__begin_)
    {
      v27.__end_ = v27.__begin_;
      operator delete(v27.__begin_);
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }
}

void sub_25D22A50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<float ()(int,int)>::operator()(uint64_t a1, int a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t nmsSameCls@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[0] = &unk_286EBC178;
  v8[1] = a1;
  v8[3] = v8;
  v4 = -1227133513 * ((a1[1] - *a1) >> 5);
  v7[0] = &unk_286EBC208;
  v7[1] = a1;
  v7[2] = a2;
  v7[3] = v7;
  NonMaximumSuppression(v8, v4, v7, a3, a4);
  std::__function::__value_func<float ()(int,int)>::~__value_func[abi:ne200100](v7);
  result = std::__function::__value_func<float ()(int)>::~__value_func[abi:ne200100](v8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25D22A674(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<float ()(int,int)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<float ()(int)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void nmsSameCls(id **a1@<X0>, float (*a2)(_OWORD *, _OWORD *)@<X1>, void *a3@<X2>, const void **a4@<X8>, float a5@<S0>)
{
  v9 = a3;
  v10 = a1[1];
  if (*a1 == v10)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    std::vector<float>::vector[abi:ne200100](&v54, v10 - *a1);
    v11 = *a1;
    v12 = a1[1];
    v13 = v54;
    if (*a1 != v12)
    {
      do
      {
        [*v11 confidence];
        *v13++ = v14;
        ++v11;
      }

      while (v11 != v12);
      v13 = v54;
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    std::vector<int>::vector[abi:ne200100](&v52, (v55 - v13) >> 2);
    v15 = v52;
    v16 = v53;
    if (v52 != v53)
    {
      v17 = 0;
      v18 = (v53 - v52 - 4) >> 2;
      v19 = vdupq_n_s64(v18);
      v20 = (v18 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v21 = v52 + 2;
      do
      {
        v22 = vdupq_n_s64(v17);
        v23 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_25D277E60)));
        if (vuzp1_s16(v23, *v19.i8).u8[0])
        {
          *(v21 - 2) = v17;
        }

        if (vuzp1_s16(v23, *&v19).i8[2])
        {
          *(v21 - 1) = v17 + 1;
        }

        if (vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_25D277E50)))).i32[1])
        {
          *v21 = v17 + 2;
          v21[1] = v17 + 3;
        }

        v17 += 4;
        v21 += 4;
      }

      while (v20 != v17);
    }

    v24 = 126 - 2 * __clz((v16 - v15) >> 2);
    *&v51[0] = &v54;
    if (v16 == v15)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24;
    }

    std::__introsort<std::_ClassicAlgPolicy,ou3dor::CadModelRetriever::SortByDistance(std::vector<unsigned short> const&,std::array<float,256ul> const&)::$_0 &,int *,false>(v15, v16, v51, v25, 1);
    v26 = v52;
    v27 = v53;
    if (v52 != v53)
    {
      do
      {
        v28 = *(v27 - 4);
        if (([(*a1)[v28] hasBoxesDict:v9] & 1) == 0)
        {
          *&v53 = v53 - 4;
        }

        memset(v51, 0, sizeof(v51));
        v29 = [(*a1)[v28] boxesDict];
        v30 = [v29 objectForKeyedSubscript:v9];
        box3dFromNSArray(v30, v51);

        v32 = a4[1];
        v31 = a4[2];
        if (v32 >= v31)
        {
          v34 = *a4;
          v35 = v32 - *a4;
          v36 = v35 >> 3;
          v37 = (v35 >> 3) + 1;
          if (v37 >> 61)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v38 = v31 - v34;
          if (v38 >> 2 > v37)
          {
            v37 = v38 >> 2;
          }

          if (v38 >= 0x7FFFFFFFFFFFFFF8)
          {
            v39 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v39 = v37;
          }

          if (v39)
          {
            _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a4, v39);
          }

          *(8 * v36) = v28;
          v33 = 8 * v36 + 8;
          memcpy(0, v34, v35);
          v40 = *a4;
          *a4 = 0;
          a4[1] = v33;
          a4[2] = 0;
          if (v40)
          {
            operator delete(v40);
          }
        }

        else
        {
          *v32 = v28;
          v33 = (v32 + 8);
        }

        a4[1] = v33;
        __p = 0;
        v50 = 0uLL;
        v41 = v52;
        if (v53 - v52 != 4)
        {
          v42 = 0;
          do
          {
            v48 = v41[v42];
            if ([(*a1)[v48] hasBoxesDict:v9])
            {
              v43 = [(*a1)[v28] type];
              v44 = [(*a1)[v48] type];

              if (v43 != v44)
              {
                goto LABEL_37;
              }

              memset(v47, 0, sizeof(v47));
              v45 = [(*a1)[v48] boxesDict];
              v46 = [v45 objectForKeyedSubscript:v9];
              box3dFromNSArray(v46, v47);

              if (a2(v51, v47) <= a5)
              {
LABEL_37:
                std::vector<int>::push_back[abi:ne200100](&__p, &v48);
              }
            }

            ++v42;
            v41 = v52;
          }

          while (((v53 - v52) >> 2) - 1 > v42);
        }

        if (v41)
        {
          *&v53 = v41;
          operator delete(v41);
        }

        v26 = __p;
        v52 = __p;
        v53 = v50;
        v27 = v50;
      }

      while (__p != v50);
    }

    if (v26)
    {
      *&v53 = v26;
      operator delete(v26);
    }

    if (v54)
    {
      v55 = v54;
      operator delete(v54);
    }
  }
}

void sub_25D22AAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  v31 = *v28;
  if (*v28)
  {
    *(v28 + 8) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 136);
  if (v32)
  {
    *(v29 - 128) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

uint64_t nmsAgnosticCls@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[0] = &unk_286EBC298;
  v8[1] = a1;
  v8[3] = v8;
  v4 = -1227133513 * ((a1[1] - *a1) >> 5);
  v7[0] = &unk_286EBC318;
  v7[1] = a1;
  v7[2] = a2;
  v7[3] = v7;
  NonMaximumSuppression(v8, v4, v7, a3, a4);
  std::__function::__value_func<float ()(int,int)>::~__value_func[abi:ne200100](v7);
  result = std::__function::__value_func<float ()(int)>::~__value_func[abi:ne200100](v8);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25D22AC38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<float ()(int,int)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<float ()(int)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t nmsWReference@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, float (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  if (*a2 == a2[1])
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  else
  {
    v9 = result;
    memset(v19, 0, sizeof(v19));
    v20 = 1065353216;
    v17[0] = 0;
    do
    {
      if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v19, v17))
      {
        v10 = *v9;
        if (v9[1] != *v9)
        {
          v11 = 0;
          v12 = 0;
          do
          {
            if (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5) <= v17[0])
            {
              std::vector<OUBox3d>::__throw_out_of_range[abi:ne200100]();
            }

            if (a3(*a2 + 224 * v17[0], v10 + v11) > a5)
            {
              std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v19, v17);
            }

            ++v12;
            v10 = *v9;
            v11 += 224;
          }

          while (0x6DB6DB6DB6DB6DB7 * ((v9[1] - *v9) >> 5) > v12);
        }
      }

      v13 = ++v17[0];
      v15 = *a2;
      v14 = a2[1];
    }

    while (0x6DB6DB6DB6DB6DB7 * ((v14 - *a2) >> 5) > v13);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    v18 = 0;
    if (v14 != v15)
    {
      do
      {
        if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v19, &v18))
        {
          *v17 = v18;
          std::vector<unsigned long>::push_back[abi:ne200100](a4, v17);
        }

        v16 = ++v18;
      }

      while (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5) > v16);
    }

    return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v19);
  }

  return result;
}

void sub_25D22AE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

id packBoxesDict(void *a1, uint64_t *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [v5 mutableCopy];
  v8 = 0;
  memset(v34, 0, sizeof(v34));
  v35 = 1065353216;
  while (v8 < [v7 count])
  {
    v9 = [v7 objectAtIndexedSubscript:v8];
    v10 = [v9 identifier];
    v11 = [v10 UUIDString];
    std::string::basic_string[abi:ne200100]<0>(&v39, [v11 UTF8String]);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(v34, &v39);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(v39);
    }

    v12 = *a2;
    if (a2[1] != *a2)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = *(v12 + v13 + 144);
        v16 = [v9 identifier];
        LODWORD(v15) = [v15 isEqual:v16];

        if (v15)
        {
          [v9 addBoxesDict:*a2 + v13 forDictKey:v6];
          [v9 addGroupId:*(*a2 + v13 + 216) forGroupType:*(*a2 + v13 + 208)];
        }

        ++v14;
        v12 = *a2;
        v13 += 224;
      }

      while (0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5) > v14);
    }

    ++v8;
  }

  if ([v6 isEqualToString:@"lshaped"])
  {
    v17 = *a2;
    v18 = a2[1];
    if (*a2 != v18)
    {
      do
      {
        v19 = [*(v17 + 144) UUIDString];
        std::string::basic_string[abi:ne200100]<0>(&v39, [v19 UTF8String]);
        v20 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v34, &v39);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(v39);
        }

        if (!v20)
        {
          v21 = objc_alloc_init(OU3DObject);
          [(OU3DObject *)v21 setType:*(v17 + 128)];
          v22 = [*(v17 + 144) copy];
          [(OU3DObject *)v21 setIdentifier:v22];

          LODWORD(v23) = *(v17 + 136);
          [(OU3DObject *)v21 setConfidence:v23];
          v31 = 0;
          v32 = 0;
          v33 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v31, *(v17 + 160), *(v17 + 168), (*(v17 + 168) - *(v17 + 160)) >> 2);
          __p = 0;
          v37 = 0;
          v38 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v31, v32, (v32 - v31) >> 2);
          v39 = 0;
          v40 = 0;
          v41 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v39, __p, v37, (v37 - __p) >> 2);
          v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:(v40 - v39) >> 2];
          v26 = v39;
          if (v40 != v39)
          {
            v27 = 0;
            do
            {
              LODWORD(v25) = v26[v27];
              v28 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
              [v24 addObject:v28];

              ++v27;
              v26 = v39;
            }

            while (v27 < (v40 - v39) >> 2);
          }

          v29 = [v24 copy];

          if (v39)
          {
            v40 = v39;
            operator delete(v39);
          }

          if (__p)
          {
            v37 = __p;
            operator delete(__p);
          }

          [(OU3DObject *)v21 setLogits:v29];

          if (v31)
          {
            v32 = v31;
            operator delete(v31);
          }

          [(OU3DObject *)v21 setStatus:1];
          [(OU3DObject *)v21 setColor:0.000195791275];
          [(OU3DObject *)v21 addGroupId:*(v17 + 216) forGroupType:*(v17 + 208)];
          [(OU3DObject *)v21 addBoxesDict:v17 forDictKey:v6];
          [v7 insertObject:v21 atIndex:0];
        }

        v17 += 224;
      }

      while (v17 != v18);
    }
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v34);

  return v7;
}

void sub_25D22B228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a17);

  _Unwind_Resume(a1);
}

uint64_t std::vector<box3d>::__init_with_size[abi:ne200100]<box3d const*,box3d const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<box3d>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25D22B3D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::string>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void std::vector<box3d>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 7)
  {
    if (a2)
    {
      bzero(*(a1 + 8), a2 << 7);
      v5 += a2 << 7;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 7);
    if (v7 >> 57)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 6 > v7)
    {
      v7 = v8 >> 6;
    }

    if (v8 >= 0x7FFFFFFFFFFFFF80)
    {
      v9 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<box3d>>(a1, v9);
    }

    v10 = (v6 >> 7 << 7);
    bzero(v10, a2 << 7);
    v11 = &v10[128 * a2];
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

uint64_t std::__introsort<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,false>(uint64_t result, int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v10 = a2 - 1;
    v151 = a2;
    v152 = a2 - 2;
    v150 = a2 - 3;
    v11 = v9;
    while (1)
    {
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

                return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(v11, v11 + 1, v10, a3);
              case 4:

                return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(v11, v11 + 1, v11 + 2, v10, a3);
              case 5:

                return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(v11, v11 + 1, v11 + 2, v11 + 3, v10, a3);
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
              std::function<float ()(int)>::operator()(*a3, *(a2 - 1));
              v75 = v74;
              result = std::function<float ()(int)>::operator()(*a3, *v11);
              if (v75 < v76)
              {
                v77 = *v11;
                *v11 = *(a2 - 1);
                *(a2 - 1) = v77;
              }

              return result;
            }
          }

          if (v12 <= 23)
          {
            v78 = v11 + 1;
            v80 = v11 == a2 || v78 == a2;
            if (a5)
            {
              if (!v80)
              {
                v81 = 0;
                v82 = v11;
                do
                {
                  v83 = v82;
                  v82 = v78;
                  std::function<float ()(int)>::operator()(*a3, v83[1]);
                  v85 = v84;
                  result = std::function<float ()(int)>::operator()(*a3, *v83);
                  if (v85 < v86)
                  {
                    v87 = *v82;
                    v88 = v81;
                    while (1)
                    {
                      *(v11 + v88 + 4) = *(v11 + v88);
                      if (!v88)
                      {
                        break;
                      }

                      std::function<float ()(int)>::operator()(*a3, v87);
                      v90 = v89;
                      result = std::function<float ()(int)>::operator()(*a3, *(v11 + v88 - 4));
                      v88 -= 4;
                      if (v90 >= v91)
                      {
                        v92 = (v11 + v88 + 4);
                        goto LABEL_86;
                      }
                    }

                    v92 = v11;
LABEL_86:
                    *v92 = v87;
                  }

                  v78 = v82 + 1;
                  v81 += 4;
                }

                while (v82 + 1 != a2);
              }
            }

            else if (!v80)
            {
              do
              {
                v139 = v9;
                v9 = v78;
                std::function<float ()(int)>::operator()(*a3, v139[1]);
                v141 = v140;
                result = std::function<float ()(int)>::operator()(*a3, *v139);
                if (v141 < v142)
                {
                  v143 = *v9;
                  v144 = v9;
                  do
                  {
                    v145 = v144;
                    v146 = *--v144;
                    *v145 = v146;
                    std::function<float ()(int)>::operator()(*a3, v143);
                    v148 = v147;
                    result = std::function<float ()(int)>::operator()(*a3, *(v145 - 2));
                  }

                  while (v148 < v149);
                  *v144 = v143;
                }

                v78 = v9 + 1;
              }

              while (v9 + 1 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v11 != a2)
            {
              v93 = (v12 - 2) >> 1;
              v153 = v93;
              do
              {
                v94 = v93;
                if (v153 >= v93)
                {
                  v95 = (2 * v93) | 1;
                  v96 = &v11[v95];
                  if (2 * v93 + 2 < v12)
                  {
                    std::function<float ()(int)>::operator()(*a3, *v96);
                    v98 = v97;
                    std::function<float ()(int)>::operator()(*a3, v96[1]);
                    if (v98 < v99)
                    {
                      ++v96;
                      v95 = 2 * v94 + 2;
                    }
                  }

                  v100 = &v11[v94];
                  std::function<float ()(int)>::operator()(*a3, *v96);
                  v102 = v101;
                  result = std::function<float ()(int)>::operator()(*a3, *v100);
                  a2 = v151;
                  if (v102 >= v103)
                  {
                    v104 = *v100;
                    do
                    {
                      v105 = v100;
                      v100 = v96;
                      *v105 = *v96;
                      if (v153 < v95)
                      {
                        break;
                      }

                      v106 = 2 * v95;
                      v95 = (2 * v95) | 1;
                      v96 = &v11[v95];
                      v107 = v106 + 2;
                      if (v106 + 2 < v12)
                      {
                        std::function<float ()(int)>::operator()(*a3, *v96);
                        v109 = v108;
                        std::function<float ()(int)>::operator()(*a3, v96[1]);
                        if (v109 < v110)
                        {
                          ++v96;
                          v95 = v107;
                        }
                      }

                      std::function<float ()(int)>::operator()(*a3, *v96);
                      v112 = v111;
                      result = std::function<float ()(int)>::operator()(*a3, v104);
                    }

                    while (v112 >= v113);
                    *v100 = v104;
                    a2 = v151;
                  }
                }

                v93 = v94 - 1;
              }

              while (v94);
              do
              {
                v114 = a2;
                v115 = 0;
                v154 = *v9;
                v116 = v9;
                do
                {
                  v117 = v116;
                  v118 = &v116[v115];
                  v116 = v118 + 1;
                  v119 = 2 * v115;
                  v115 = (2 * v115) | 1;
                  v120 = v119 + 2;
                  if (v119 + 2 < v12)
                  {
                    std::function<float ()(int)>::operator()(*a3, v118[1]);
                    v122 = v121;
                    v124 = v118[2];
                    v123 = v118 + 2;
                    result = std::function<float ()(int)>::operator()(*a3, v124);
                    if (v122 < v125)
                    {
                      v116 = v123;
                      v115 = v120;
                    }
                  }

                  *v117 = *v116;
                }

                while (v115 <= ((v12 - 2) >> 1));
                a2 = v114 - 1;
                if (v116 == v114 - 1)
                {
                  *v116 = v154;
                }

                else
                {
                  *v116 = *a2;
                  *a2 = v154;
                  v126 = (v116 - v9 + 4) >> 2;
                  v127 = v126 < 2;
                  v128 = v126 - 2;
                  if (!v127)
                  {
                    v129 = v128 >> 1;
                    v130 = &v9[v128 >> 1];
                    std::function<float ()(int)>::operator()(*a3, *v130);
                    v132 = v131;
                    result = std::function<float ()(int)>::operator()(*a3, *v116);
                    if (v132 < v133)
                    {
                      v134 = *v116;
                      do
                      {
                        v135 = v116;
                        v116 = v130;
                        *v135 = *v130;
                        if (!v129)
                        {
                          break;
                        }

                        v129 = (v129 - 1) >> 1;
                        v130 = &v9[v129];
                        std::function<float ()(int)>::operator()(*a3, *v130);
                        v137 = v136;
                        result = std::function<float ()(int)>::operator()(*a3, v134);
                      }

                      while (v137 < v138);
                      *v116 = v134;
                    }
                  }
                }

                v127 = v12-- <= 2;
              }

              while (!v127);
            }

            return result;
          }

          v13 = v12 >> 1;
          v14 = &v11[v12 >> 1];
          if (v12 < 0x81)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(&v9[v12 >> 1], v9, v10, a3);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(v9, &v9[v12 >> 1], v10, a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(v9 + 1, v14 - 1, v152, a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(v9 + 2, &v9[v13 + 1], v150, a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(v14 - 1, &v9[v12 >> 1], &v9[v13 + 1], a3);
            v15 = *v9;
            *v9 = *v14;
            *v14 = v15;
          }

          --a4;
          if (a5)
          {
            break;
          }

          std::function<float ()(int)>::operator()(*a3, *(v9 - 1));
          v17 = v16;
          std::function<float ()(int)>::operator()(*a3, *v9);
          if (v17 < v18)
          {
            break;
          }

          v47 = *v9;
          std::function<float ()(int)>::operator()(*a3, *v9);
          v49 = v48;
          result = std::function<float ()(int)>::operator()(*a3, *v10);
          if (v49 >= v50)
          {
            v55 = v9 + 1;
            do
            {
              v11 = v55;
              if (v55 >= a2)
              {
                break;
              }

              std::function<float ()(int)>::operator()(*a3, v47);
              v57 = v56;
              ++v55;
              result = std::function<float ()(int)>::operator()(*a3, *v11);
            }

            while (v57 >= v58);
          }

          else
          {
            v11 = v9;
            do
            {
              std::function<float ()(int)>::operator()(*a3, v47);
              v52 = v51;
              v53 = v11[1];
              ++v11;
              result = std::function<float ()(int)>::operator()(*a3, v53);
            }

            while (v52 >= v54);
          }

          v59 = a2;
          if (v11 < a2)
          {
            v59 = a2;
            do
            {
              std::function<float ()(int)>::operator()(*a3, v47);
              v61 = v60;
              v62 = *--v59;
              result = std::function<float ()(int)>::operator()(*a3, v62);
            }

            while (v61 < v63);
          }

          while (v11 < v59)
          {
            v64 = *v11;
            *v11 = *v59;
            *v59 = v64;
            do
            {
              std::function<float ()(int)>::operator()(*a3, v47);
              v66 = v65;
              v67 = v11[1];
              ++v11;
              std::function<float ()(int)>::operator()(*a3, v67);
            }

            while (v66 >= v68);
            do
            {
              std::function<float ()(int)>::operator()(*a3, v47);
              v70 = v69;
              v71 = *--v59;
              result = std::function<float ()(int)>::operator()(*a3, v71);
            }

            while (v70 < v72);
          }

          v73 = v11 - 1;
          if (v11 - 1 != v9)
          {
            *v9 = *v73;
          }

          a5 = 0;
          *v73 = v47;
        }

        v19 = 0;
        v20 = *v9;
        do
        {
          std::function<float ()(int)>::operator()(*a3, v9[v19 + 1]);
          v22 = v21;
          std::function<float ()(int)>::operator()(*a3, v20);
          ++v19;
        }

        while (v22 < v23);
        v24 = &v9[v19];
        if (v19 == 1)
        {
          a2 = v151;
          do
          {
            if (v24 >= a2)
            {
              break;
            }

            v29 = *--a2;
            std::function<float ()(int)>::operator()(*a3, v29);
            v31 = v30;
            std::function<float ()(int)>::operator()(*a3, v20);
          }

          while (v31 >= v32);
        }

        else
        {
          do
          {
            v25 = *--a2;
            std::function<float ()(int)>::operator()(*a3, v25);
            v27 = v26;
            std::function<float ()(int)>::operator()(*a3, v20);
          }

          while (v27 >= v28);
        }

        if (v24 >= a2)
        {
          v44 = v24 - 1;
        }

        else
        {
          v33 = &v9[v19];
          v34 = a2;
          do
          {
            v35 = *v33;
            *v33 = *v34;
            *v34 = v35;
            do
            {
              v36 = v33[1];
              ++v33;
              std::function<float ()(int)>::operator()(*a3, v36);
              v38 = v37;
              std::function<float ()(int)>::operator()(*a3, v20);
            }

            while (v38 < v39);
            do
            {
              v40 = *--v34;
              std::function<float ()(int)>::operator()(*a3, v40);
              v42 = v41;
              std::function<float ()(int)>::operator()(*a3, v20);
            }

            while (v42 >= v43);
          }

          while (v33 < v34);
          v44 = v33 - 1;
        }

        if (v44 != v9)
        {
          *v9 = *v44;
        }

        *v44 = v20;
        v45 = v24 >= a2;
        a2 = v151;
        if (v45)
        {
          break;
        }

LABEL_39:
        result = std::__introsort<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,false>(v9, v44, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v44 + 1;
      }

      v46 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *>(v9, v44, a3);
      v11 = v44 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *>(v44 + 1, v151, a3);
      if (result)
      {
        break;
      }

      if (!v46)
      {
        goto LABEL_39;
      }
    }

    a2 = v44;
    if (!v46)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(int *a1, int *a2, int *a3, uint64_t *a4)
{
  std::function<float ()(int)>::operator()(*a4, *a2);
  v9 = v8;
  std::function<float ()(int)>::operator()(*a4, *a1);
  v11 = v10;
  std::function<float ()(int)>::operator()(*a4, *a3);
  v13 = v12;
  result = std::function<float ()(int)>::operator()(*a4, *a2);
  if (v9 >= v11)
  {
    if (v13 < v15)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      std::function<float ()(int)>::operator()(*a4, *a2);
      v19 = v18;
      result = std::function<float ()(int)>::operator()(*a4, *a1);
      if (v19 < v20)
      {
        v21 = *a1;
        *a1 = *a2;
        *a2 = v21;
      }
    }
  }

  else
  {
    v16 = *a1;
    if (v13 >= v15)
    {
      *a1 = *a2;
      *a2 = v16;
      std::function<float ()(int)>::operator()(*a4, *a3);
      v23 = v22;
      result = std::function<float ()(int)>::operator()(*a4, *a2);
      if (v23 >= v24)
      {
        return result;
      }

      v16 = *a2;
      *a2 = *a3;
    }

    else
    {
      *a1 = *a3;
    }

    *a3 = v16;
  }

  return result;
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(int *a1, int *a2, int *a3, int *a4, uint64_t *a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(a1, a2, a3, a5);
  std::function<float ()(int)>::operator()(*a5, *a4);
  v11 = v10;
  result = std::function<float ()(int)>::operator()(*a5, *a3);
  if (v11 < v13)
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    std::function<float ()(int)>::operator()(*a5, *a3);
    v16 = v15;
    result = std::function<float ()(int)>::operator()(*a5, *a2);
    if (v16 < v17)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      std::function<float ()(int)>::operator()(*a5, *a2);
      v20 = v19;
      result = std::function<float ()(int)>::operator()(*a5, *a1);
      if (v20 < v21)
      {
        v22 = *a1;
        *a1 = *a2;
        *a2 = v22;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(int *a1, int *a2, int *a3, int *a4, int *a5, uint64_t *a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(a1, a2, a3, a4, a6);
  std::function<float ()(int)>::operator()(*a6, *a5);
  v13 = v12;
  result = std::function<float ()(int)>::operator()(*a6, *a4);
  if (v13 < v15)
  {
    v16 = *a4;
    *a4 = *a5;
    *a5 = v16;
    std::function<float ()(int)>::operator()(*a6, *a4);
    v18 = v17;
    result = std::function<float ()(int)>::operator()(*a6, *a3);
    if (v18 < v19)
    {
      v20 = *a3;
      *a3 = *a4;
      *a4 = v20;
      std::function<float ()(int)>::operator()(*a6, *a3);
      v22 = v21;
      result = std::function<float ()(int)>::operator()(*a6, *a2);
      if (v22 < v23)
      {
        v24 = *a2;
        *a2 = *a3;
        *a3 = v24;
        std::function<float ()(int)>::operator()(*a6, *a2);
        v26 = v25;
        result = std::function<float ()(int)>::operator()(*a6, *a1);
        if (v26 < v27)
        {
          v28 = *a1;
          *a1 = *a2;
          *a2 = v28;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *>(int *a1, int *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        std::function<float ()(int)>::operator()(*a3, *(a2 - 1));
        v8 = v7;
        std::function<float ()(int)>::operator()(*a3, *a1);
        if (v8 < v9)
        {
          v10 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v10;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_11:
  v11 = a1 + 2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,NonMaximumSuppression(std::function<float ()(int)> const&,int,std::function<float ()(int,int)> const&,float)::$_0 &,int *,0>(a1, a1 + 1, a1 + 2, a3);
  v12 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    std::function<float ()(int)>::operator()(*a3, *v12);
    v16 = v15;
    std::function<float ()(int)>::operator()(*a3, *v11);
    if (v16 < v17)
    {
      v18 = *v12;
      v19 = v13;
      while (1)
      {
        *(a1 + v19 + 12) = *(a1 + v19 + 8);
        if (v19 == -8)
        {
          break;
        }

        std::function<float ()(int)>::operator()(*a3, v18);
        v21 = v20;
        std::function<float ()(int)>::operator()(*a3, *(a1 + v19 + 4));
        v19 -= 4;
        if (v21 >= v22)
        {
          v23 = (a1 + v19 + 12);
          goto LABEL_19;
        }
      }

      v23 = a1;
LABEL_19:
      *v23 = v18;
      if (++v14 == 8)
      {
        return v12 + 1 == a2;
      }
    }

    v11 = v12;
    v13 += 4;
    if (++v12 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::function<float ()(int)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void std::fstream::open(std::fstream *this, const std::string *__s, std::ios_base::openmode __mode)
{
  if ((__s->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v4 = __s->__r_.__value_.__r.__words[0];
  }

  v5 = std::filebuf::open();
  v6 = (this + *(this->__sb_.__extbuf_ - 3));
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6->__rdstate_ | 4;
  }

  std::ios_base::clear(v6, v7);
}

void (__cdecl ***std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this)))(std::fstream *__hidden this)
{
  v2 = a1 + 54;
  MEMORY[0x25F894BD0](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x25F894D60](v2);
  return a1;
}

void std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  v1 = a1 + 54;
  MEMORY[0x25F894BD0](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x25F894D60](v1);

  JUMPOUT(0x25F894DE0);
}

void non-virtual thunk tostd::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  MEMORY[0x25F894BD0](a1 + 1);
  std::iostream::~basic_iostream();

  JUMPOUT(0x25F894D60);
}

{
  v1 = a1 + 52;
  MEMORY[0x25F894BD0](a1 + 1);
  std::iostream::~basic_iostream();
  MEMORY[0x25F894D60](v1);

  JUMPOUT(0x25F894DE0);
}

void virtual thunk tostd::fstream::~fstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x25F894BD0](v1 + 3);
  std::iostream::~basic_iostream();

  JUMPOUT(0x25F894D60);
}

{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x25F894BD0](v1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x25F894D60](v1 + 54);

  JUMPOUT(0x25F894DE0);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x25F894C20](v13, a1);
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

  MEMORY[0x25F894C30](v13);
  return a1;
}

void sub_25D22CC10(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x25F894C30](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x25D22CBF0);
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

void sub_25D22CE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0,std::allocator<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0>,float ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EBC178;
  a2[1] = v2;
  return result;
}

float std::__function::__func<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0,std::allocator<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0>,float ()(int)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = **(a1 + 8);
  if (0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 8) + 8) - v3) >> 5) <= v2)
  {
    std::vector<OUBox3d>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v3 + 224 * v2 + 136);
}

uint64_t std::__function::__func<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0,std::allocator<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0>,float ()(int)>::target(uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<float ()(int)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1,std::allocator<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1>,float ()(int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286EBC208;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1,std::allocator<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1>,float ()(int,int)>::operator()(uint64_t result, int *a2, int *a3)
{
  v3 = *a2;
  v4 = **(result + 8);
  v5 = 0x6DB6DB6DB6DB6DB7 * ((*(*(result + 8) + 8) - v4) >> 5);
  if (v5 <= v3 || (v6 = *a3, v5 <= v6))
  {
    std::vector<OUBox3d>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = v4 + 224 * v3;
  if (*(v7 + 128) == *(v4 + 224 * v6 + 128))
  {
    v8 = *(result + 16);

    return v8(v7);
  }

  return result;
}

uint64_t std::__function::__func<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1,std::allocator<nmsSameCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1>,float ()(int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<float ()(int,int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0,std::allocator<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0>,float ()(int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286EBC298;
  a2[1] = v2;
  return result;
}

float std::__function::__func<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0,std::allocator<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0>,float ()(int)>::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = **(a1 + 8);
  if (0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 8) + 8) - v3) >> 5) <= v2)
  {
    std::vector<OUBox3d>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v3 + 224 * v2 + 136);
}

uint64_t std::__function::__func<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0,std::allocator<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_0>,float ()(int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1,std::allocator<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1>,float ()(int,int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286EBC318;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1,std::allocator<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1>,float ()(int,int)>::operator()(uint64_t a1, int *a2, int *a3)
{
  v3 = *a2;
  v4 = **(a1 + 8);
  v5 = 0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 8) + 8) - v4) >> 5);
  if (v5 <= v3 || (v6 = *a3, v5 <= v6))
  {
    std::vector<OUBox3d>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = *(a1 + 16);

  return v7(v4 + 224 * v3, v4 + 224 * v6);
}

uint64_t std::__function::__func<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1,std::allocator<nmsAgnosticCls(std::vector<OUBox3d> *,float,float (*)(box3d const&,box3d const&))::$_1>,float ()(int,int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _GLOBAL__sub_I_OUBoxUtils_mm()
{
  v0 = objc_autoreleasePoolPush();
  ObjectUnderstandingTest::Bundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ObjectUnderstandingTests"];

  objc_autoreleasePoolPop(v0);
}

void OUDataLoader::OUDataLoader(std::string *this, __int128 *a2)
{
  v109[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  *&this[1].__r_.__value_.__l.__data_ = 0u;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  LODWORD(this[2].__r_.__value_.__r.__words[1]) = 1065353216;
  v87 = this + 1;
  v4 = this;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = this->__r_.__value_.__r.__words[0];
  }

  v88 = this;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/metadata.json", v4];
  v83 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5];
  [MEMORY[0x277CCAAA0] JSONObjectWithData:? options:? error:?];
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  obj = v101 = 0u;
  v89 = [obj countByEnumeratingWithState:&v100 objects:v106 count:16];
  if (v89)
  {
    v95 = 0;
    v6 = *v101;
    v7 = *(MEMORY[0x277D82808] + 24);
    v84 = v7;
    v85 = *MEMORY[0x277D82808];
    v86 = *v101;
    v8 = v5;
    while (1)
    {
      if (v6 != v86)
      {
        objc_enumerationMutation(obj);
      }

      v92 = *(*(&v100 + 1) + 8 * v95);
      v9 = [v92 UTF8String];
      v10 = strlen(v9);
      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v10;
      if (v10 >= 0x17)
      {
        operator new();
      }

      *(&__dst[0].__r_.__value_.__s + 23) = v10;
      if (v10)
      {
        memmove(__dst, v9, v10);
      }

      __dst[0].__r_.__value_.__s.__data_[v11] = 0;
      v104.__r_.__value_.__r.__words[0] = __dst;
      v12 = std::__hash_table<std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,OUDataLoader::DataArray>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(v87, &__dst[0].__r_.__value_.__l.__data_);
      if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst[0].__r_.__value_.__l.__data_);
      }

      v93 = [obj objectForKey:v92];
      v94 = [v93 objectForKey:@"type"];
      v13 = v94;
      v91 = v12 + 5;
      std::string::__assign_external((v12 + 5), [v94 UTF8String]);
      v14 = [v93 objectForKey:@"shape"];
      v12[11] = 1;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v96 objects:v105 count:16];
      if (v16)
      {
        v17 = *v97;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v97 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = [*(*(&v96 + 1) + 8 * i) intValue];
            v20 = v19;
            v22 = v12[9];
            v21 = v12[10];
            if (v22 >= v21)
            {
              v24 = v12[8];
              v25 = v22 - v24;
              v26 = (v22 - v24) >> 3;
              v27 = v26 + 1;
              if ((v26 + 1) >> 61)
              {
                std::vector<float>::__throw_length_error[abi:ne200100]();
              }

              v28 = v21 - v24;
              if (v28 >> 2 > v27)
              {
                v27 = v28 >> 2;
              }

              v29 = v28 >= 0x7FFFFFFFFFFFFFF8;
              v30 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v29)
              {
                v30 = v27;
              }

              if (v30)
              {
                _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m((v12 + 8), v30);
              }

              v31 = (v22 - v24) >> 3;
              v32 = (8 * v26);
              v33 = (8 * v26 - 8 * v31);
              *v32 = v19;
              v23 = v32 + 1;
              memcpy(v33, v24, v25);
              v34 = v12[8];
              v12[8] = v33;
              v12[9] = v23;
              v12[10] = 0;
              if (v34)
              {
                operator delete(v34);
              }

              v5 = v8;
            }

            else
            {
              *v22 = v19;
              v23 = v22 + 8;
            }

            v12[9] = v23;
            v12[11] = (v12[11] * v20);
          }

          v16 = [v15 countByEnumeratingWithState:&v96 objects:v105 count:16];
        }

        while (v16);
      }

      v35 = v88;
      if (SHIBYTE(v88->__r_.__value_.__r.__words[2]) < 0)
      {
        v35 = v88->__r_.__value_.__r.__words[0];
      }

      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/%@.bin", v35, v92];
      v37 = v36;
      [v36 UTF8String];
      std::ifstream::basic_ifstream(__dst);
      if (v108)
      {
        v104.__r_.__value_.__s.__data_[0] = 0;
        while (std::istream::peek() != -1)
        {
          std::istream::read();
          v39 = v12[13];
          v38 = v12[14];
          if (v39 >= v38)
          {
            v41 = v12[12];
            v42 = (v39 - v41);
            v43 = v39 - v41 + 1;
            if (v43 < 0)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v44 = v38 - v41;
            if (2 * v44 > v43)
            {
              v43 = 2 * v44;
            }

            if (v44 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v45 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v45 = v43;
            }

            if (v45)
            {
              operator new();
            }

            v46 = v39 - v41;
            *v42 = v104.__r_.__value_.__s.__data_[0];
            v40 = v42 + 1;
            memcpy(0, v41, v46);
            v12[12] = 0;
            v12[13] = v42 + 1;
            v12[14] = 0;
            if (v41)
            {
              operator delete(v41);
            }
          }

          else
          {
            *v39 = v104.__r_.__value_.__s.__data_[0];
            v40 = v39 + 1;
          }

          v12[13] = v40;
        }

        if (!std::filebuf::close())
        {
          std::ios_base::clear((__dst + *(__dst[0].__r_.__value_.__r.__words[0] - 24)), *(&__dst[1].__r_.__value_.__r.__words[1] + *(__dst[0].__r_.__value_.__r.__words[0] - 24)) | 4);
        }
      }

      __dst[0].__r_.__value_.__r.__words[0] = v85;
      *(__dst[0].__r_.__value_.__r.__words + *(v85 - 24)) = v84;
      MEMORY[0x25F894BD0](&__dst[0].__r_.__value_.__r.__words[2]);
      std::istream::~istream();
      MEMORY[0x25F894D60](v109);

      v47 = *(v12 + 63);
      if ((*(v12 + 63) & 0x80000000) == 0)
      {
        if (*(v12 + 63) > 5u)
        {
          if (v47 == 6)
          {
            if (*v91 == 1953393013 && *(v12 + 22) == 13366)
            {
              goto LABEL_143;
            }

            if (*v91 == 1953393013 && *(v12 + 22) == 12851)
            {
              goto LABEL_144;
            }

            if (*v91 != 1953393013 || *(v12 + 22) != 13873)
            {
LABEL_174:
              exception = __cxa_allocate_exception(0x10uLL);
              std::operator+<char>();
              v81 = std::string::append(&v104, ") .", 3uLL);
              v82 = *&v81->__r_.__value_.__l.__data_;
              __dst[0].__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
              *&__dst[0].__r_.__value_.__l.__data_ = v82;
              v81->__r_.__value_.__l.__size_ = 0;
              v81->__r_.__value_.__r.__words[2] = 0;
              v81->__r_.__value_.__r.__words[0] = 0;
              std::logic_error::logic_error(exception, __dst);
              exception->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
            }
          }

          else
          {
            if (v47 != 7)
            {
              goto LABEL_174;
            }

            if (*v91 == 1634692198 && *(v12 + 43) == 875983969)
            {
LABEL_143:
              v75 = 8;
              goto LABEL_164;
            }

            if (*v91 == 1634692198 && *(v12 + 43) == 842232929)
            {
LABEL_144:
              v75 = 4;
              goto LABEL_164;
            }

            if (*v91 != 1634692198 || *(v12 + 43) != 909210721)
            {
              goto LABEL_174;
            }
          }

LABEL_154:
          v75 = 2;
          goto LABEL_164;
        }

        v48 = v12 + 5;
        if (v47 != 4)
        {
          if (v47 != 5)
          {
            goto LABEL_174;
          }

          if (*v91 == 913600105 && *(v12 + 44) == 52)
          {
            goto LABEL_143;
          }

          if (*v91 == 863268457 && *(v12 + 44) == 50)
          {
            goto LABEL_144;
          }

          goto LABEL_134;
        }

        goto LABEL_162;
      }

      v51 = v12[6];
      if (v51 == 5)
      {
        v67 = *v91;
        if (**v91 == 913600105 && *(*v91 + 4) == 52)
        {
          goto LABEL_143;
        }

        v69 = *v67;
        v55 = v67[4];
        v56 = v69 == 863268457;
        v57 = 50;
      }

      else if (v51 == 6)
      {
        v64 = *v91;
        if (**v91 == 1953393013 && *(*v91 + 2) == 13366)
        {
          goto LABEL_143;
        }

        v66 = *v64;
        v55 = v64[2];
        v56 = v66 == 1953393013;
        v57 = 12851;
      }

      else
      {
        if (v51 != 7)
        {
          goto LABEL_121;
        }

        v52 = *v91;
        if (**v91 == 1634692198 && *(*v91 + 3) == 875983969)
        {
          goto LABEL_143;
        }

        v54 = *v52;
        v55 = *(v52 + 3);
        v56 = v54 == 1634692198;
        v57 = 842232929;
      }

      if (v56 && v55 == v57)
      {
        goto LABEL_144;
      }

LABEL_121:
      if (v12[6] == 7 && **v91 == 1634692198 && *(*v91 + 3) == 909210721)
      {
        goto LABEL_154;
      }

      if (v12[6] == 6)
      {
        if (**v91 == 1953393013 && *(*v91 + 2) == 13873)
        {
          goto LABEL_154;
        }

        if ((v47 & 0x80) == 0)
        {
          v48 = v12 + 5;
          if (v47 != 4)
          {
            if (v47 != 5)
            {
              goto LABEL_174;
            }

LABEL_134:
            if (*v91 == 829714025 && *(v12 + 44) == 54)
            {
              goto LABEL_154;
            }

LABEL_138:
            if (*v91 != 1953393013 || *(v12 + 44) != 56)
            {
              goto LABEL_174;
            }

            goto LABEL_163;
          }

          goto LABEL_162;
        }
      }

      if (v12[6] == 5)
      {
        if (**v91 == 829714025 && *(*v91 + 4) == 54)
        {
          goto LABEL_154;
        }

        if ((v47 & 0x80) == 0)
        {
          v48 = v12 + 5;
          if (v47 != 4)
          {
            if (v47 != 5)
            {
              goto LABEL_174;
            }

            goto LABEL_138;
          }

          goto LABEL_162;
        }
      }

      if (v12[6] != 5 || (**v91 == 1953393013 ? (v77 = *(*v91 + 4) == 56) : (v77 = 0), !v77))
      {
        if (v12[6] != 4)
        {
          goto LABEL_174;
        }

        v48 = *v91;
LABEL_162:
        if (*v48 != 947154537)
        {
          goto LABEL_174;
        }
      }

LABEL_163:
      v75 = 1;
LABEL_164:
      if (v12[13] - v12[12] != v75 * v12[11])
      {
        v79 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x25F894AD0](v79, "[OUDataLoader] mismatching data size; bin file might be corrupted.");
        __cxa_throw(v79, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (++v95 >= v89)
      {
        v89 = [obj countByEnumeratingWithState:&v100 objects:v106 count:16];
        if (!v89)
        {
          break;
        }

        v95 = 0;
      }

      v6 = *v101;
    }
  }

  v78 = *MEMORY[0x277D85DE8];
}

void sub_25D22E10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  std::__hash_table<std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,OUDataLoader::DataArray>>>::~__hash_table(a16);
  if (*(a17 + 23) < 0)
  {
    operator delete(*a17);
  }

  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,OUDataLoader::DataArray>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,OUDataLoader::DataArray>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    operator new();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,OUDataLoader::DataArray>,void *>>>::operator()[abi:ne200100](uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(__p + 12);
    if (v3)
    {
      *(__p + 13) = v3;
      operator delete(v3);
    }

    v4 = *(__p + 8);
    if (v4)
    {
      *(__p + 9) = v4;
      operator delete(v4);
    }

    if (__p[63] < 0)
    {
      operator delete(*(__p + 5));
    }

    if (__p[39] < 0)
    {
      operator delete(*(__p + 2));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v3 = *(MEMORY[0x277D82808] + 16);
  v4 = *(MEMORY[0x277D82808] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x277D82858] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x25F894BC0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_25D22E75C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x25F894D60](v1);
  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_OUDataLoader_mm()
{
  v0 = objc_autoreleasePoolPush();
  ObjectUnderstandingTest::Bundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ObjectUnderstandingTests"];

  objc_autoreleasePoolPop(v0);
}

uint64_t std::vector<int>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void ou3dod::OU3DSparseSSDetector::createForEspressoCPU(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 72);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v33, *a2, a2[1], (a2[1] - *a2) >> 2);
  v3 = v33;
  for (i = v34; v3 != i; ++v3)
  {
    *v3 = (v2 - 1 + *v3) / v2;
  }

  v32 = 0;
  v31 = 0u;
  memset(v30, 0, sizeof(v30));
  std::string::__assign_external(v30, "sparse_voxelssd_cpu.espresso.net", 0x20uLL);
  v5 = qword_28155B600;
  if (!qword_28155B600)
  {
LABEL_36:
    for (j = qword_28155B5D8; j; j = *j)
    {
      v19 = (j + 16);
      v20 = j + 16;
      if (*(j + 39) < 0)
      {
        v20 = *v19;
      }

      v21 = *(v20 + 1);
      LODWORD(v24.__r_.__value_.__l.__data_) = -1;
      std::vector<int>::vector[abi:ne200100](&v28, 3uLL);
      v22 = v28;
      *v28 = v33[v21 - 48];
      if (*(j + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, *(j + 16), *(j + 24));
        v22 = v28;
      }

      else
      {
        *&v24.__r_.__value_.__l.__data_ = *v19;
        v24.__r_.__value_.__r.__words[2] = *(j + 32);
      }

      __p = 0;
      v26 = 0;
      v27 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v22, v29, (v29 - v22) >> 2);
      std::vector<OUEspressoInference::ModelInfo::BlobInfo>::push_back[abi:ne200100](&v31, &v24);
      if (__p)
      {
        v26 = __p;
        operator delete(__p);
      }

      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }
    }

    [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  while (1)
  {
    v6 = (v5 + 16);
    v7 = *(v5 + 39);
    if (v7 < 0)
    {
      v10 = *(v5 + 16);
      v7 = *(v5 + 24);
      if (v7 != 13 || (*v10 == 0x765F657372617073 ? (v11 = *(v10 + 5) == 0x736C65786F765F65) : (v11 = 0), !v11))
      {
        v9 = v10 + 1;
        goto LABEL_17;
      }
    }

    else if (v7 != 13 || (*v6 == 0x765F657372617073 ? (v8 = *(v5 + 21) == 0x736C65786F765F65) : (v8 = 0), !v8))
    {
      v9 = (v5 + 17);
      v10 = (v5 + 16);
LABEL_17:
      v12 = *v9;
      v13 = *(v10 + v7 - 1);
      switch(v13)
      {
        case '1':
          v14 = v12 - 48;
          break;
        case 'r':
          v14 = v12 - 49;
          break;
        case '2':
          v14 = v12 - 47;
          break;
        default:
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x25F894AD0](exception, "[3DOD IS] unexpected post-script.");
          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v15 = v14;
      v16 = 5;
      goto LABEL_24;
    }

    v15 = 0;
    v16 = 3;
LABEL_24:
    LODWORD(v24.__r_.__value_.__l.__data_) = -1;
    std::vector<int>::vector[abi:ne200100](&v28, v16);
    v17 = v28;
    *v28 = v33[v15];
    if (*(v5 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v24, *(v5 + 16), *(v5 + 24));
      v17 = v28;
    }

    else
    {
      *&v24.__r_.__value_.__l.__data_ = *v6;
      v24.__r_.__value_.__r.__words[2] = *(v5 + 32);
    }

    __p = 0;
    v26 = 0;
    v27 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v17, v29, (v29 - v17) >> 2);
    std::vector<OUEspressoInference::ModelInfo::BlobInfo>::push_back[abi:ne200100](&v30[1], &v24);
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }

    v5 = *v5;
    if (!v5)
    {
      goto LABEL_36;
    }
  }
}

void sub_25D22ED14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24)
{
  *a10 = 0;
  (*(*v25 + 8))(v25);

  OUEspressoInference::ModelInfo::~ModelInfo(&a24);
  v28 = *(v26 - 112);
  if (v28)
  {
    *(v26 - 104) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<OUEspressoInference::ModelInfo::BlobInfo>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__emplace_back_slow_path<OUEspressoInference::ModelInfo::BlobInfo>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

void OUEspressoInference::ModelInfo::BlobInfo::~BlobInfo(OUEspressoInference::ModelInfo::BlobInfo *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void ou3dod::OU3DSparseSSDetector::createForEspressoANETunneled()
{
  v8 = 0;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  std::string::__assign_external(v6, "sparse_voxelssd_ane.espresso.net", 0x20uLL);
  for (i = qword_28155B600; i; i = *i)
  {
    if (*(i + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v2, *(i + 16), *(i + 24));
    }

    else
    {
      v2 = *(i + 16);
    }

    __p = 0;
    v4 = 0;
    v5 = 0;
    std::vector<OUEspressoInference::ModelInfo::BlobInfo>::push_back[abi:ne200100](&v6[1], &v2);
    if (__p)
    {
      v4 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v2.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v2.__r_.__value_.__l.__data_);
    }
  }

  for (j = qword_28155B5D8; j; j = *j)
  {
    if (*(j + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v2, *(j + 16), *(j + 24));
    }

    else
    {
      v2 = *(j + 16);
    }

    __p = 0;
    v4 = 0;
    v5 = 0;
    std::vector<OUEspressoInference::ModelInfo::BlobInfo>::push_back[abi:ne200100](&v7, &v2);
    if (__p)
    {
      v4 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v2.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v2.__r_.__value_.__l.__data_);
    }
  }

  [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  operator new();
}

void sub_25D22F430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34)
{
  if (__p)
  {
    ou3dod::OU3DAnchorFreeDetector::createForOnline(__p);
  }

  MEMORY[0x25F894DE0](v35, 0x10B1C40E4B8FA47);

  OUEspressoInference::ModelInfo::~ModelInfo(&a34);
  _Unwind_Resume(a1);
}

uint64_t ou3dod::OU3DSparseSSDetector::OU3DSparseSSDetector(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  v5 = ou3dod::OU3DODInterface::OU3DODInterface(a1, a2);
  *v5 = &unk_286EBC398;
  v6 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  *(v5 + 9) = a3[6];
  v9 = a3[1];
  v10 = a3[2];
  *(v5 + 3) = *a3;
  *(v5 + 4) = v9;
  *(v5 + 7) = v7;
  *(v5 + 8) = v8;
  *(v5 + 5) = v10;
  *(v5 + 6) = v6;
  if (*(v5 + 152) == 1)
  {
    v11 = *(a1 + 48) + 3;
  }

  else
  {
    v11 = 3;
  }

  *(a1 + 160) = v11;
  _ZNSt3__16vectorINS0_IDv3_iNS_9allocatorIS1_EEEENS2_IS4_EEEC2B8ne200100Em((a1 + 168), (*(a1 + 116) + 1));
  *(a1 + 192) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 248) = 1065353216;
  std::vector<std::span<float,18446744073709551615ul>>::vector[abi:ne200100]((a1 + 256), (*(a1 + 116) + 1));
  std::vector<std::span<float,18446744073709551615ul>>::vector[abi:ne200100]((a1 + 280), (*(a1 + 116) + 1));
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 464) = 1065353216;
  *(a1 + 472) = 1;
  v12 = *(a1 + 80);
  if (*&v12 != COERCE_FLOAT(HIDWORD(*(a1 + 80))) || *&v12 != *(&v12 + 2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "[3DOD IS] Expect the voxel size is identical across all three dimensions.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  return a1;
}

void sub_25D22F728(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table(v2 + 432);

  v4 = *(v2 + 400);
  if (v4)
  {
    *(v2 + 408) = v4;
    operator delete(v4);
  }

  v5 = *(v2 + 376);
  if (v5)
  {
    *(v2 + 384) = v5;
    operator delete(v5);
  }

  v6 = *(v2 + 352);
  if (v6)
  {
    *(v2 + 360) = v6;
    operator delete(v6);
  }

  v7 = *(v2 + 328);
  if (v7)
  {
    *(v2 + 336) = v7;
    operator delete(v7);
  }

  v8 = *(v2 + 304);
  if (v8)
  {
    *(v2 + 312) = v8;
    operator delete(v8);
  }

  v9 = *(v2 + 280);
  if (v9)
  {
    *(v2 + 288) = v9;
    operator delete(v9);
  }

  v10 = *(a2 + 64);
  if (v10)
  {
    *(v2 + 264) = v10;
    operator delete(v10);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table(a2 + 24);
  v11 = *a2;
  if (*a2)
  {
    *(v2 + 200) = v11;
    operator delete(v11);
  }

  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](va);
  ou3dod::OU3DODInterface::~OU3DODInterface(v2);
  _Unwind_Resume(a1);
}

void ou3dod::OU3DSparseSSDetector::Preprocess(ou3dod::OU3DSparseSSDetector *this, OUPointCloudCpp *a2)
{
  if (OUPointCloudCpp::IsValid(a2))
  {
    ou3dod::OU3DSparseSSDetector::VoxelizePointCloud(this, a2, *(this + 20));
  }

  v4 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    ou3dod::OU3DSparseSSDetector::Preprocess(v4);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::invalid_argument::invalid_argument[abi:ne200100](exception, &unk_25D2878C2);
  __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
}

void ou3dod::OU3DSparseSSDetector::VoxelizePointCloud(ou3dod::OU3DSparseSSDetector *this, const OUPointCloudCpp *a2, float a3)
{
  v46 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&__p, "sparse_voxels");
  v6 = **(this + 24);
  memset(v40, 0, sizeof(v40));
  v41 = 1065353216;
  v7 = *(this + 21);
  v7[1] = *v7;
  memset(&v39, 0, sizeof(v39));
  std::vector<int>::reserve(&v39, v6);
  v8 = *a2;
  if (*(a2 + 1) != *a2)
  {
    v9 = 0;
    do
    {
      v10 = 0;
      v11 = *(a2 + 3);
      v12 = *(v8 + 16 * v9);
      while (1)
      {
        v38 = v12;
        if (v10 > 2)
        {
          break;
        }

        v13 = *(&v38 & 0xFFFFFFFFFFFFFFF3 | (4 * (v10++ & 3)));
      }

      v14 = 0;
      v15 = *(v11 + 16 * v9);
      while (1)
      {
        v37 = v15;
        if (v14 > 2)
        {
          break;
        }

        v16 = *(&v37 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14++ & 3)));
      }

      v17 = 0;
      *buf = 0;
      *&buf[8] = 0;
      v18 = 0uLL;
      do
      {
        v19 = vcvtms_s32_f32(*(v11 + 16 * v9 + 4 * (v17 & 3)) / a3);
        v36 = v18;
        *(&v36 & 0xFFFFFFFFFFFFFFF3 | (4 * (v17 & 3))) = v19;
        v18 = v36;
        *&buf[8] = DWORD2(v36);
        *buf = v36;
        ++v17;
      }

      while (v17 != 3);
      if (!_ZNKSt3__112__hash_tableINS_17__hash_value_typeIDv3_iiEENS_22__unordered_map_hasherIS2_S3_N5utils8SimdHashIS2_EENS5_9SimdEqualIS2_EELb1EEENS_21__unordered_map_equalIS2_S3_S9_S7_Lb1EEENS_9allocatorIS3_EEE4findIS2_EENS_21__hash_const_iteratorIPNS_11__hash_nodeIS3_PvEEEERKT_(v40, buf))
      {
        _ZNSt3__112__hash_tableIDv3_iN5utils8SimdHashIS1_EENS2_9SimdEqualIS1_EENS_9allocatorIS1_EEE25__emplace_unique_key_argsIS1_JRKS1_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS1_PvEEEEbEERKT_DpOT0_(v40, buf);
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(v7, buf);
        end = v39.__end_;
        if (v39.__end_ >= v39.__end_cap_.__value_)
        {
          begin = v39.__begin_;
          v23 = v39.__end_ - v39.__begin_;
          v24 = v39.__end_ - v39.__begin_;
          v25 = v24 + 1;
          if ((v24 + 1) >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v26 = v39.__end_cap_.__value_ - v39.__begin_;
          if ((v39.__end_cap_.__value_ - v39.__begin_) >> 1 > v25)
          {
            v25 = v26 >> 1;
          }

          v27 = v26 >= 0x7FFFFFFFFFFFFFFCLL;
          v28 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v27)
          {
            v28 = v25;
          }

          if (v28)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v39, v28);
          }

          *(4 * v24) = v9;
          v21 = (4 * v24 + 4);
          memcpy(0, begin, v23);
          v29 = v39.__begin_;
          v39.__begin_ = 0;
          v39.__end_ = v21;
          v39.__end_cap_.__value_ = 0;
          if (v29)
          {
            operator delete(v29);
          }
        }

        else
        {
          *v39.__end_ = v9;
          v21 = end + 1;
        }

        v39.__end_ = v21;
      }

      v8 = *a2;
      ++v9;
    }

    while (v9 < (*(a2 + 1) - *a2) >> 4);
  }

  v30 = (v7[1] - *v7) >> 4;
  if (v30 > v6)
  {
    v31 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "SparseSSD";
      *&buf[12] = 2048;
      *&buf[14] = v30;
      v44 = 1024;
      v45 = v6;
      _os_log_impl(&dword_25D1DB000, v31, OS_LOG_TYPE_INFO, "[3DOD][%s] Voxel count %lu > capacity %d, triggers resampling; this would cause regression to detection and/or segmentation.", buf, 0x1Cu);
    }

    utils::Resample(v30, v6, buf);
    v32 = *buf;
    if (*&buf[8] != *buf)
    {
      v33 = 0;
      do
      {
        v34 = *(v32 + 8 * v33);
        *(*v7 + 16 * v33) = *(*v7 + 16 * v34);
        v39.__begin_[v33++] = v39.__begin_[v34];
        v32 = *buf;
      }

      while (v33 < (*&buf[8] - *buf) >> 3);
    }

    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v7, v6);
    std::vector<float>::resize(&v39, v6);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }
  }

  v35 = *(this + 4);
  OUDnnInferenceInterface::GetInputSpan<float,void>();
}

void sub_25D22FDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a19);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void ou3dod::OU3DSparseSSDetector::ComputeNeighborMaps(ou3dod::OU3DSparseSSDetector *this, int a2, double a3, int32x4_t a4)
{
  v32[0] = this;
  if (a2)
  {
    memset(v30, 0, sizeof(v30));
    v31 = 1065353216;
    v4 = *(this + 21);
    v5 = (v4 + 24);
    v4[2].i64[0] = v4[1].i64[1];
    if (v4->i64[1] != v4->i64[0])
    {
      v6 = 0;
      do
      {
        v7 = 0;
        LODWORD(v28[1]) = 0;
        v28[0] = 0;
        v8 = *(v4->i64[0] + 16 * v6);
        v9 = 0uLL;
        do
        {
          v22 = v8;
          v10 = vcvtms_s32_f32(*(&v22 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3))) * 0.5);
          v23 = v9;
          *(&v23 & 0xFFFFFFFFFFFFFFF3 | (4 * (v7 & 3))) = v10;
          v11 = v23;
          HIDWORD(v11) = HIDWORD(v9);
          ++v7;
          v9 = v11;
        }

        while (v7 != 3);
        *v28 = v23;
        if (!_ZNKSt3__112__hash_tableINS_17__hash_value_typeIDv3_iiEENS_22__unordered_map_hasherIS2_S3_N5utils8SimdHashIS2_EENS5_9SimdEqualIS2_EELb1EEENS_21__unordered_map_equalIS2_S3_S9_S7_Lb1EEENS_9allocatorIS3_EEE4findIS2_EENS_21__hash_const_iteratorIPNS_11__hash_nodeIS3_PvEEEERKT_(v30, v28))
        {
          _ZNSt3__112__hash_tableIDv3_iN5utils8SimdHashIS1_EENS2_9SimdEqualIS1_EENS_9allocatorIS1_EEE25__emplace_unique_key_argsIS1_JRKS1_EEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS1_PvEEEEbEERKT_DpOT0_(v30, v28);
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(v5, v28);
        }

        ++v6;
      }

      while (v6 < (v4->i64[1] - v4->i64[0]) >> 4);
    }

    std::to_string(&v24, 0);
    v13 = std::string::insert(&v24, 0, "l", 1uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v25, "_k3_s1", 6uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    ou3dod::OU3DSparseSSDetector::ComputeNeighborMaps::$_0::operator()(v32, &__p.__r_.__value_.__l.__data_, v28, v4->i64, 1, 3, 0);
  }

  v17 = *(this + 21);
  std::to_string(&__p, 0);
  v18 = std::string::insert(&__p, 0, "l", 1uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v27, "_k3_s1", 6uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v29 = v20->__r_.__value_.__r.__words[2];
  *v28 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  ou3dod::OU3DSparseSSDetector::ComputeNeighborMaps::$_0::operator()(v32, v28, v30, v17->i64, 1, 3, 0);
}

void sub_25D2304E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v52 - 160);
  _Unwind_Resume(a1);
}

int32x4_t *anonymous namespace::NeighborMapHelper::InitCoordToIndexMap@<X0>(int32x4_t *result@<X0>, unsigned __int32 a2@<W1>, uint64_t a3@<X8>, int32x4_t a4@<Q1>)
{
  v5.i32[1] = 0;
  v5.i64[1] = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v6 = result->i64[1] - result->i64[0];
  if ((v6 >> 4) >= 1)
  {
    v7 = result;
    v8 = 0;
    v5.i32[0] = 1;
    a4.i32[0] = a2;
    v9 = vdupq_lane_s32(*&vceqq_s32(a4, v5), 0);
    v10.i64[0] = 0x100000001;
    v10.i64[1] = 0x100000001;
    v12 = vbicq_s8(v10, v9);
    v11 = (v6 >> 4) & 0x7FFFFFFF;
    do
    {
      v13 = vshlq_u32(*(*v7 + 16 * v8), v12);
      v14 = &v13;
      result = _ZNSt3__112__hash_tableINS_17__hash_value_typeIDv3_iiEENS_22__unordered_map_hasherIS2_S3_N5utils8SimdHashIS2_EENS5_9SimdEqualIS2_EELb1EEENS_21__unordered_map_equalIS2_S3_S9_S7_Lb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIS2_JRKNS_21piecewise_construct_tENS_5tupleIJOS2_EEENSK_IJEEEEEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS3_PvEEEEbEERKT_DpOT0_(a3, &v13);
      result[2].i32[0] = v8++;
    }

    while (v11 != v8);
  }

  return result;
}

void ou3dod::OU3DSparseSSDetector::ComputeNeighborMaps(unsigned int)::$_0::operator()(uint64_t *a1, const void **a2, uint64_t a3, uint64_t *a4, int a5, int a6, char a7)
{
  v12 = *a1;
  v44 = 0;
  v45 = &v44;
  v46 = 0x4812000000;
  v47 = __Block_byref_object_copy_;
  v48 = __Block_byref_object_dispose_;
  v49 = "";
  v13 = (a6 * a6 * a6 * ((a4[1] - *a4) >> 4));
  LODWORD(block[0]) = -1;
  std::vector<int>::vector[abi:ne200100](v50, v13);
  std::vector<int>::vector[abi:ne200100](&v42, a6);
  v14 = v42;
  if (a6 >= 1)
  {
    v15 = (a6 + 3) & 0xFFFFFFFC;
    v16 = vdupq_n_s64(a6 - 1);
    v17 = xmmword_25D277E50;
    v18 = xmmword_25D277E60;
    v19 = v42 + 8;
    v20 = -1;
    v21 = vdupq_n_s64(4uLL);
    do
    {
      v22 = vmovn_s64(vcgeq_u64(v16, v18));
      if (vuzp1_s16(v22, *v16.i8).u8[0])
      {
        *(v19 - 2) = v20;
      }

      if (vuzp1_s16(v22, *&v16).i8[2])
      {
        *(v19 - 1) = v20 + 1;
      }

      if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, *&v17))).i32[1])
      {
        *v19 = v20 + 2;
        v19[1] = v20 + 3;
      }

      v17 = vaddq_s64(v17, v21);
      v18 = vaddq_s64(v18, v21);
      v20 += 4;
      v19 += 4;
      v15 -= 4;
    }

    while (v15);
  }

  v23 = a3;
  v31 = a2;
  v24 = dispatch_get_global_queue(0, 0);
  v26 = *a4;
  v25 = a4[1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN12_GLOBAL__N_117NeighborMapHelper7ComputeERKNSt3__113unordered_mapIDv3_iiN5utils8SimdHashIS3_EENS4_9SimdEqualIS3_EENS1_9allocatorINS1_4pairIKS3_iEEEEEERKNS1_6vectorIS3_NS9_IS3_EEEEjib_block_invoke;
  block[3] = &unk_286EBC3D8;
  v41 = a7;
  v39 = a6;
  v40 = a5;
  block[5] = a4;
  __p = 0;
  v36 = 0;
  v37 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v14, v43, (v43 - v14) >> 2);
  v38 = v23;
  block[4] = &v44;
  dispatch_apply((v25 - v26) >> 4, v24, block);
  v33 = 0;
  v32 = 0uLL;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v32, v45[6], v45[7], (v45[7] - v45[6]) >> 2);
  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  _Block_object_dispose(&v44, 8);
  if (v50[0])
  {
    v50[1] = v50[0];
    operator delete(v50[0]);
  }

  block[0] = v31;
  v27 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v12 + 216), v31);
  v28 = v27[5];
  if (v28)
  {
    v27[6] = v28;
    operator delete(v28);
    v27[5] = 0;
    v27[6] = 0;
    v27[7] = 0;
  }

  *(v27 + 5) = v32;
  v27[7] = v33;
  v29 = *(v12 + 32);
  OUDnnInferenceInterface::GetInputSpan<float,void>();
}

void ou3dod::OU3DSparseSSDetector::ParseNetOutput(ou3dod::OU3DSparseSSDetector *this)
{
  v2 = *(this + 39);
  if (v2 > 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = qword_25D278DE0[v2];
  }

  v21 = (*(this + 33) - *(this + 34));
  v3 = *(this + 29);
  if ((v3 & 0x80000000) == 0)
  {
    std::to_string(&v23, v3);
    v4 = std::string::insert(&v23, 0, "l", 1uLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v24, "_", 1uLL);
    __p = *v6;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    v7 = *(*(this + 21) + 24 * v3);
    v8 = *(*(this + 21) + 24 * v3 + 8);
    v9 = *(this + 4);
    v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::string::basic_string[abi:ne200100](&v24, size + 7);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v24;
    }

    else
    {
      v12 = v24.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if (v10 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      memmove(v12, p_p, size);
    }

    strcpy(v12 + size, "preds_1");
    OUDnnInferenceInterface::GetOutputSpan<float,void>();
  }

  *(this + 39) = *(this + 38);
  *(this + 42) = *(this + 41);
  *(this + 45) = *(this + 44);
  *(this + 48) = *(this + 47);
  std::vector<box3d>::reserve(this + 38, 0);
  std::vector<int>::reserve((this + 328), 0);
  std::vector<int>::reserve((this + 352), 0);
  std::vector<box3d>::reserve(this + 47, (*(*(this + 21) + 8) - **(this + 21)) >> 4);
  __p.__r_.__value_.__r.__words[0] = this;
  __p.__r_.__value_.__l.__size_ = v22;
  v14 = *(this + 29);
  if ((v14 & 0x80000000) == 0)
  {
    v15 = *(this + 20);
    v16.n128_f64[0] = exp2(v14) * v15;
    v16.n128_f32[0] = v16.n128_f64[0];
    if (v14)
    {
      v17 = v14 - 1;
      v18 = 16 * v14;
      v19 = 24 * v14;
      do
      {
        ou3dod::OU3DSparseSSDetector::ParseNetOutput(void)::$_0::operator()(&__p, this + 304, this + 41, (*(this + 21) + v19), (*(this + 32) + v18), v16);
        std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(this + 352, *(this + 45), *(*(this + 35) + v18), (*(*(this + 35) + v18) + 4 * *(*(this + 35) + v18 + 8)), *(*(this + 35) + v18 + 8));
        v20 = *(this + 20);
        v16.n128_f64[0] = exp2(v17) * v20;
        v16.n128_f32[0] = v16.n128_f64[0];
        --v17;
        v19 -= 24;
        v18 -= 16;
      }

      while (v18);
    }

    ou3dod::OU3DSparseSSDetector::ParseNetOutput(void)::$_0::operator()(&__p, this + 376, 0, *(this + 21), *(this + 32), v16);
  }
}

void sub_25D231110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<box3d>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 7)
  {
    if (!(a2 >> 57))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<box3d>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void ou3dod::OU3DSparseSSDetector::ParseNetOutput(void)::$_0::operator()(uint64_t *a1, uint64_t a2, const void **a3, uint64_t *a4, void *a5, __n128 a6)
{
  v92 = *MEMORY[0x277D85DE8];
  v6 = *a4;
  if (a4[1] != *a4)
  {
    v10 = 0;
    v11 = 0;
    v71 = *a1;
    do
    {
      v75 = *(v6 + 16 * v10);
      v12 = (*a5 + 4 * v11);
      v13 = *(v71 + 156);
      v14 = expf(*v12);
      v15 = expf(v12[1]);
      v16 = expf(v12[2]);
      v17 = expf(v12[3]);
      v18 = expf(v12[4]);
      v19 = expf(v12[5]);
      if (v13 == 2)
      {
        v21 = 0;
        v22 = -1;
        v23 = -3.4028e38;
        do
        {
          if (v12[v21 + 6] > v23)
          {
            v23 = v12[v21 + 6];
            v22 = v21;
          }

          ++v21;
        }

        while (v21 != 12);
        v24 = v22;
        v25 = expf(v12[v22 + 18]);
        v20 = (v25 + (v24 * 0.5236)) - floor((v25 + (v24 * 0.5236)) / 6.28318531) * 6.28318531;
      }

      else
      {
        v20 = 0.0;
        if (v13 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::invalid_argument::invalid_argument[abi:ne200100](exception, "[OU3D IS] Not implemented.");
          __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
        }
      }

      v26 = 0;
      v27.i32[3] = a6.n128_i32[3];
      v27.f32[0] = v15 - v14;
      v27.f32[1] = v17 - v16;
      v27.f32[2] = v19 - v18;
      v30.i64[0] = 0x3F0000003F000000;
      v30.i64[1] = 0x3F0000003F000000;
      v29 = vmulq_f32(v27, v30);
      v28 = vaddq_f32(vmulq_n_f32(vcvtq_f32_s32(v75), a6.n128_f32[0]), v29);
      v29.f32[0] = (v14 + v15) * 0.5;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      *&v84 = -((v18 + v19) * 0.5);
      *(&v84 + 1) = (v18 + v19) * 0.5;
      v30.f32[0] = -v29.f32[0];
      v31 = v30;
      v32 = v29;
      v33 = &v78;
      do
      {
        v34 = *(&v84 + v26);
        v31.f32[1] = -((v16 + v17) * 0.5);
        v35 = v31;
        v35.i32[2] = v34;
        v30.f32[1] = (v16 + v17) * 0.5;
        v36 = v30;
        v36.i32[2] = v34;
        v33[-2] = vaddq_f32(v28, v35);
        v33[-1] = vaddq_f32(v28, v36);
        v32.f32[1] = v30.f32[1];
        v37 = v32;
        v37.i32[2] = v34;
        v29.f32[1] = v31.f32[1];
        v38 = v29;
        v38.i32[2] = v34;
        v26 += 4;
        *v33 = vaddq_f32(v28, v37);
        v33[1] = vaddq_f32(v28, v38);
        v33 += 4;
      }

      while (v26 != 8);
      v88 = v80;
      v89 = v81;
      v90 = v82;
      v91 = v83;
      v84 = v76;
      v85 = v77;
      v86 = v78;
      v87 = v79;
      v39 = *(a2 + 8);
      v40 = *(a2 + 16);
      if (v39 >= v40)
      {
        v46 = (v39 - *a2) >> 7;
        v47 = v46 + 1;
        if ((v46 + 1) >> 57)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v48 = v40 - *a2;
        if (v48 >> 6 > v47)
        {
          v47 = v48 >> 6;
        }

        if (v48 >= 0x7FFFFFFFFFFFFF80)
        {
          v49 = 0x1FFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v47;
        }

        if (v49)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<box3d>>(a2, v49);
        }

        v50 = (v46 << 7);
        v51 = v89;
        v50[4] = v88;
        v50[5] = v51;
        v52 = v91;
        v50[6] = v90;
        v50[7] = v52;
        v53 = v85;
        *v50 = v84;
        v50[1] = v53;
        v54 = v87;
        v50[2] = v86;
        v50[3] = v54;
        v45 = (v46 << 7) + 128;
        v55 = *(a2 + 8) - *a2;
        v56 = v50 - v55;
        memcpy(v50 - v55, *a2, v55);
        v57 = *a2;
        *a2 = v56;
        *(a2 + 8) = v45;
        *(a2 + 16) = 0;
        if (v57)
        {
          operator delete(v57);
        }
      }

      else
      {
        v41 = v89;
        v39[4] = v88;
        v39[5] = v41;
        v42 = v91;
        v39[6] = v90;
        v39[7] = v42;
        v43 = v85;
        *v39 = v84;
        v39[1] = v43;
        v44 = v87;
        v39[2] = v86;
        v39[3] = v44;
        v45 = (v39 + 8);
      }

      *(a2 + 8) = v45;
      if (a3)
      {
        v59 = a3[1];
        v58 = a3[2];
        if (v59 >= v58)
        {
          v61 = *a3;
          v62 = v59 - *a3;
          v63 = v62 >> 2;
          v64 = (v62 >> 2) + 1;
          if (v64 >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v65 = v58 - v61;
          if (v65 >> 1 > v64)
          {
            v64 = v65 >> 1;
          }

          v66 = v65 >= 0x7FFFFFFFFFFFFFFCLL;
          v67 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v66)
          {
            v67 = v64;
          }

          if (v67)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a3, v67);
          }

          *(4 * v63) = v20;
          v60 = 4 * v63 + 4;
          memcpy(0, v61, v62);
          v68 = *a3;
          *a3 = 0;
          a3[1] = v60;
          a3[2] = 0;
          if (v68)
          {
            operator delete(v68);
          }
        }

        else
        {
          *v59 = v20;
          v60 = (v59 + 1);
        }

        a3[1] = v60;
      }

      ++v10;
      v11 += a1[1];
      v6 = *a4;
    }

    while (v10 < (a4[1] - *a4) >> 4);
  }

  v69 = *MEMORY[0x277D85DE8];
}

void ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(ou3dod::OU3DSparseSSDetector *this)
{
  v146 = *MEMORY[0x277D85DE8];
  v2 = *(this + 33);
  v3 = *(this + 34);
  v4 = (*(this + 39) - *(this + 38)) >> 7;
  LODWORD(__p[0]) = 0;
  std::vector<int>::vector[abi:ne200100](&v126, v4);
  v5 = (v2 - v3);
  v6 = *(this + 39) - *(this + 38);
  v7 = v6 >> 7;
  if ((v6 >> 7) >= 1)
  {
    v8 = 0;
    v9 = vdupq_n_s64(((v6 >> 7) & 0x7FFFFFFF) - 1);
    v10 = xmmword_25D277E50;
    v11 = xmmword_25D277E60;
    v12 = v126.__begin_ + 2;
    v13 = vdupq_n_s64(4uLL);
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v9, v11));
      if (vuzp1_s16(v14, *v9.i8).u8[0])
      {
        *(v12 - 2) = v8;
      }

      if (vuzp1_s16(v14, *&v9).i8[2])
      {
        *(v12 - 1) = v8 + 1;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, *&v10))).i32[1])
      {
        *v12 = v8 + 2;
        v12[1] = v8 + 3;
      }

      v8 += 4;
      v10 = vaddq_s64(v10, v13);
      v11 = vaddq_s64(v11, v13);
      v12 += 4;
    }

    while (((v7 + 3) & 0xFFFFFFFC) != v8);
  }

  if (v7 > *(this + 32))
  {
    LODWORD(v143) = -8388609;
    std::vector<float>::vector[abi:ne200100](__p, v7);
    v15 = *(this + 39) - *(this + 38);
    if ((v15 >> 7) >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = __p[0];
      if (v5 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = (v2 - v3);
      }

      v20 = (v15 >> 7) & 0x7FFFFFFF;
      do
      {
        if (v2 != v3)
        {
          v21 = v18[v16];
          v22 = (*(this + 44) + 4 * v17);
          v17 += v19;
          v23 = v19;
          do
          {
            v24 = *v22;
            if (v21 < *v22)
            {
              v18[v16] = v24;
              v21 = v24;
            }

            ++v22;
            --v23;
          }

          while (v23);
        }

        ++v16;
      }

      while (v16 != v20);
    }

    v25 = *(this + 32);
    begin = v126.__begin_;
    end = v126.__end_;
    v143 = __p;
    if (v25)
    {
      v28 = &v126.__begin_[v25];
      if (v25 != 1)
      {
        v29 = (v25 - 2) >> 1;
        v30 = &v126.__begin_[v29];
        v31 = v29 + 1;
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::$_0 &,std::__wrap_iter<int *>>(begin, &v143, v25, v30--);
          --v31;
        }

        while (v31);
      }

      if (v28 != end)
      {
        v32 = &begin[v25];
        do
        {
          v33 = *v32;
          v34 = *begin;
          if (*(__p[0] + v33) > *(__p[0] + v34))
          {
            *v32 = v34;
            *begin = v33;
            std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::$_0 &,std::__wrap_iter<int *>>(begin, &v143, v25, begin);
          }

          ++v32;
        }

        while (v32 != end);
      }

      if (v25 != 1)
      {
        do
        {
          v35 = 0;
          v36 = *begin;
          v37 = v143;
          v38 = begin;
          do
          {
            v39 = v38;
            v38 += v35 + 1;
            v40 = 2 * v35;
            v35 = (2 * v35) | 1;
            v41 = v40 + 2;
            if (v41 < v25 && *(*v37 + *v38) > *(*v37 + v38[1]))
            {
              ++v38;
              v35 = v41;
            }

            *v39 = *v38;
          }

          while (v35 <= ((v25 - 2) >> 1));
          if (v38 == --v28)
          {
            *v38 = v36;
          }

          else
          {
            *v38 = *v28;
            *v28 = v36;
            v42 = (v38 - begin + 4) >> 2;
            v43 = v42 < 2;
            v44 = v42 - 2;
            if (!v43)
            {
              v45 = v44 >> 1;
              v46 = &begin[v45];
              v47 = *v46;
              v48 = *v37;
              v49 = *v38;
              v50 = v48[v49];
              if (v48[v47] > v50)
              {
                do
                {
                  *v38 = v47;
                  v38 = v46;
                  if (!v45)
                  {
                    break;
                  }

                  v45 = (v45 - 1) >> 1;
                  v46 = &begin[v45];
                  v47 = *v46;
                }

                while (v48[v47] > v50);
                *v38 = v49;
              }
            }
          }

          v43 = v25-- <= 2;
        }

        while (!v43);
      }
    }

    std::vector<float>::resize(&v126, *(this + 32));
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  v124 = 0;
  v125 = 0uLL;
  if (v5 < 1)
  {
    v93 = 0;
    v92 = 0;
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      v122 = 0;
      v123 = 0uLL;
      v52 = v126.__begin_;
      v53 = v126.__end_;
      if (v126.__begin_ == v126.__end_)
      {
        v67 = 0;
      }

      else
      {
        v54 = 0;
        do
        {
          v55 = *v52;
          v56 = *(*(this + 44) + 4 * v55 * v5 + 4 * i);
          if (v56 > *(this + 35))
          {
            v57 = (*(this + 38) + (v55 << 7));
            v131 = v57[4];
            v132 = v57[5];
            v133 = v57[6];
            v134 = v57[7];
            *__p = *v57;
            v128 = v57[1];
            v129 = v57[2];
            v130 = v57[3];
            v58 = *(*(this + 41) + 4 * v55);
            if (v54 >= *(&v123 + 1))
            {
              v59 = 0x8E38E38E38E38E39 * ((v54 - v122) >> 4);
              v60 = v59 + 1;
              if ((v59 + 1) > 0x1C71C71C71C71C7)
              {
                std::vector<float>::__throw_length_error[abi:ne200100]();
              }

              if (0x1C71C71C71C71C72 * ((*(&v123 + 1) - v122) >> 4) > v60)
              {
                v60 = 0x1C71C71C71C71C72 * ((*(&v123 + 1) - v122) >> 4);
              }

              if (0x8E38E38E38E38E39 * ((*(&v123 + 1) - v122) >> 4) >= 0xE38E38E38E38E3)
              {
                v61 = 0x1C71C71C71C71C7;
              }

              else
              {
                v61 = v60;
              }

              std::__split_buffer<ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore,std::allocator<ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore> &>::__split_buffer(&v143, v61, v59, &v122);
              v62 = v145;
              *(v145 + 64) = v131;
              *(v62 + 80) = v132;
              *(v62 + 96) = v133;
              *(v62 + 112) = v134;
              *v62 = *__p;
              *(v62 + 16) = v128;
              *(v62 + 32) = v129;
              *(v62 + 48) = v130;
              *(v62 + 128) = v58;
              *(v62 + 132) = i;
              *(v62 + 136) = v56;
              *&v145 = v62 + 144;
              v63 = v144 - (v123 - v122);
              memcpy(v63, v122, v123 - v122);
              v64 = v122;
              v65 = *(&v123 + 1);
              v122 = v63;
              v66 = v145;
              v123 = v145;
              *&v145 = v64;
              *(&v145 + 1) = v65;
              v143 = v64;
              v144 = v64;
              if (v64)
              {
                v118 = v66;
                operator delete(v64);
                v66 = v118;
              }

              v54 = v66;
            }

            else
            {
              memmove(v54, v57, 0x80uLL);
              *(v54 + 128) = v58;
              *(v54 + 132) = i;
              *(v54 + 136) = v56;
              v54 += 144;
            }

            *&v123 = v54;
          }

          ++v52;
        }

        while (v52 != v53);
        v67 = 954437177 * ((v54 - v122) >> 4);
      }

      __p[0] = &unk_286EBC418;
      __p[1] = &v122;
      *(&v128 + 1) = __p;
      v143 = &unk_286EBC498;
      v144 = &v122;
      *(&v145 + 1) = &v143;
      NonMaximumSuppression(__p, v67, &v143, &v120, *(this + 36));
      std::__function::__value_func<float ()(int,int)>::~__value_func[abi:ne200100](&v143);
      std::__function::__value_func<float ()(int)>::~__value_func[abi:ne200100](__p);
      v68 = v120;
      v69 = v121;
      if (v120 != v121)
      {
        v70 = v125;
        do
        {
          v71 = v122 + 144 * *v68;
          if (v70 >= *(&v125 + 1))
          {
            v78 = 0x8E38E38E38E38E39 * ((v70 - v124) >> 4);
            v79 = v78 + 1;
            if ((v78 + 1) > 0x1C71C71C71C71C7)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            if (0x1C71C71C71C71C72 * ((*(&v125 + 1) - v124) >> 4) > v79)
            {
              v79 = 0x1C71C71C71C71C72 * ((*(&v125 + 1) - v124) >> 4);
            }

            if (0x8E38E38E38E38E39 * ((*(&v125 + 1) - v124) >> 4) >= 0xE38E38E38E38E3)
            {
              v80 = 0x1C71C71C71C71C7;
            }

            else
            {
              v80 = v79;
            }

            std::__split_buffer<ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore,std::allocator<ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore> &>::__split_buffer(__p, v80, v78, &v124);
            v81 = v128;
            *v128 = *v71;
            v82 = v71[4];
            v84 = v71[1];
            v83 = v71[2];
            v81[3] = v71[3];
            v81[4] = v82;
            v81[1] = v84;
            v81[2] = v83;
            v85 = v71[8];
            v87 = v71[5];
            v86 = v71[6];
            v81[7] = v71[7];
            v81[8] = v85;
            v81[5] = v87;
            v81[6] = v86;
            *&v128 = v81 + 9;
            v88 = __p[1] - (v125 - v124);
            memcpy(v88, v124, v125 - v124);
            v89 = v124;
            v90 = *(&v125 + 1);
            v124 = v88;
            v91 = v128;
            v125 = v128;
            *&v128 = v89;
            *(&v128 + 1) = v90;
            __p[0] = v89;
            __p[1] = v89;
            if (v89)
            {
              v119 = v91;
              operator delete(v89);
              v91 = v119;
            }

            v70 = v91;
          }

          else
          {
            *v70 = *v71;
            v72 = v71[1];
            v73 = v71[2];
            v74 = v71[4];
            *(v70 + 3) = v71[3];
            *(v70 + 4) = v74;
            *(v70 + 1) = v72;
            *(v70 + 2) = v73;
            v75 = v71[5];
            v76 = v71[6];
            v77 = v71[8];
            *(v70 + 7) = v71[7];
            *(v70 + 8) = v77;
            *(v70 + 5) = v75;
            *(v70 + 6) = v76;
            v70 += 144;
          }

          *&v125 = v70;
          ++v68;
        }

        while (v68 != v69);
        v68 = v120;
      }

      if (v68)
      {
        v121 = v68;
        operator delete(v68);
      }

      if (v122)
      {
        *&v123 = v122;
        operator delete(v122);
      }
    }

    v92 = v124;
    v93 = v125;
  }

  v94 = 126 - 2 * __clz(0x8E38E38E38E38E39 * ((v93 - v92) >> 4));
  if (v93 == v92)
  {
    v95 = 0;
  }

  else
  {
    v95 = v94;
  }

  std::__introsort<std::_ClassicAlgPolicy,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::$_3 &,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore *,false>(v92, v93, v95, 1);
  if (0x8E38E38E38E38E39 * ((v125 - v124) >> 4) >= *(this + 31))
  {
    v96 = *(this + 31);
  }

  else
  {
    v96 = 0x8E38E38E38E38E39 * ((v125 - v124) >> 4);
  }

  std::vector<OUBox3d>::__base_destruct_at_end[abi:ne200100](this + 8, *(this + 1));
  std::vector<OUBox3d>::reserve(this + 1, v96);
  std::vector<float>::resize((this + 400), v96);
  v97 = v124;
  if (v96)
  {
    v98 = 0;
    v99 = 0;
    v100 = 4 * v96;
    do
    {
      v101 = &v97[v98];
      v102 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(kSparseSSDObjectLabels, &v97[v98 + 132]);
      if (!v102)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v103 = *(v124 + v98 + 136);
      v104 = [MEMORY[0x277CCAD78] UUID];
      LODWORD(v122) = 0;
      std::vector<float>::vector[abi:ne200100](&v143, 0x15uLL);
      if (*(this + 473))
      {
        v105 = @"online";
      }

      else
      {
        v105 = @"offline";
      }

      OUBox3d::OUBox3d(__p, v101, v102 + 3, v104, &v143, v105, v103);
      v106 = *(this + 2);
      if (v106 >= *(this + 3))
      {
        v116 = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d>(this + 1, __p);
      }

      else
      {
        v107 = *__p;
        v108 = v128;
        v109 = v130;
        *(v106 + 32) = v129;
        *(v106 + 48) = v109;
        *v106 = v107;
        *(v106 + 16) = v108;
        v110 = v131;
        v111 = v132;
        v112 = v134;
        *(v106 + 96) = v133;
        *(v106 + 112) = v112;
        *(v106 + 64) = v110;
        *(v106 + 80) = v111;
        v113 = v135;
        v135 = 0;
        *(v106 + 128) = v113;
        *(v106 + 136) = v136;
        v114 = v137;
        v137 = 0u;
        *(v106 + 176) = 0;
        *(v106 + 144) = v114;
        *(v106 + 160) = 0u;
        *(v106 + 160) = *v138;
        *(v106 + 176) = v139;
        *v138 = 0u;
        v139 = 0;
        *(v106 + 184) = v140[0];
        *(v106 + 192) = *&v140[1];
        memset(v140, 0, sizeof(v140));
        v115 = v141;
        v141 = 0;
        *(v106 + 208) = v115;
        *(v106 + 216) = v142;
        v116 = v106 + 224;
        *(this + 2) = v106 + 224;
      }

      *(this + 2) = v116;

      if (v140[0])
      {
        operator delete(v140[0]);
      }

      if (v138[0])
      {
        v138[1] = v138[0];
        operator delete(v138[0]);
      }

      if (v143)
      {
        v144 = v143;
        operator delete(v143);
      }

      v97 = v124;
      *(*(this + 50) + v99) = *(v124 + v98 + 128);
      v99 += 4;
      v98 += 144;
    }

    while (v100 != v99);
  }

  else if (!v124)
  {
    goto LABEL_115;
  }

  *&v125 = v97;
  operator delete(v97);
LABEL_115:
  if (v126.__begin_)
  {
    v126.__end_ = v126.__begin_;
    operator delete(v126.__begin_);
  }

  v117 = *MEMORY[0x277D85DE8];
}

void sub_25D2320F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
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

uint64_t ou3dod::OU3DSparseSSDetector::InstanceSegmentation(ou3dod::OU3DSparseSSDetector *this)
{
  v2 = *(this + 21);
  v4 = *v2;
  v3 = v2[1];
  v5 = (v3 - *v2) >> 4;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:v5];
  v7 = *(this + 53);
  *(this + 53) = v6;

  if (v3 == v4)
  {
    v33 = 3.7912e-37;
    v34 = 0;
    std::unordered_set<SemanticLabelv5>::unordered_set(v35, &v33, 5);
  }

  else
  {
    v32 = v3;
    v8 = 0;
    if (v5 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v5;
    }

    do
    {
      v10 = objc_alloc_init(OU3DVoxel);
      v11.i64[0] = 0x3F0000003F000000;
      v11.i64[1] = 0x3F0000003F000000;
      [(OU3DVoxel *)v10 setCenter:*vmulq_f32(*(this + 5), vaddq_f32(vcvtq_f32_s32(*(**(this + 21) + 16 * v8)), v11)).i64];
      [(OU3DVoxel *)v10 setSize:*(this + 10)];
      [*(this + 53) addObject:v10];

      ++v8;
    }

    while (v9 != v8);
    v12 = 0;
    v13 = 0;
    v14 = *(this + 35);
    do
    {
      v33 = 0.0;
      v15 = *(this + 33);
      if (v15 < 2)
      {
        ++v13;
      }

      else
      {
        v16 = (*v14 + 4 * v13);
        v17 = *v16;
        v18 = 1;
        do
        {
          v19 = v16[v18];
          if (v19 > v17)
          {
            v33 = *&v18;
            v17 = v19;
          }

          ++v18;
        }

        while (v15 != v18);
        v13 += v15 - 2 + 2;
      }

      v20 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(kSparseSSDSemanticLabels, &v33);
      if (!v20)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v21 = *(v20 + 20);
      v22 = [*(this + 53) objectAtIndexedSubscript:v12];
      [v22 setSemantic_label:v21];

      ++v12;
    }

    while (v12 != v9);
    v33 = 3.7912e-37;
    v34 = 0;
    std::unordered_set<SemanticLabelv5>::unordered_set(v35, &v33, 5);
    if (v32 != v4)
    {
      v23 = 0;
      if (v5 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v5;
      }

      do
      {
        v25 = [*(this + 53) objectAtIndexedSubscript:{v23, v32}];
        LOBYTE(v33) = [v25 semantic_label];
        if (!std::__hash_table<std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned short>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<unsigned short>>>>::find<unsigned char>(v35, &v33))
        {
          v26 = *(this + 1);
          if (*(this + 2) != v26)
          {
            v27 = 0;
            v28 = (*(this + 47) + (v23 << 7));
            v29 = 144;
            while (1)
            {
              box3dIou(v28, (v26 + v29 - 144), 0, &v33);
              *&v30 = v33;
              if (v33 > *(this + 37))
              {
                break;
              }

              ++v27;
              v26 = *(this + 1);
              v29 += 224;
              if (v27 >= 0x6DB6DB6DB6DB6DB7 * ((*(this + 2) - v26) >> 5))
              {
                goto LABEL_21;
              }
            }

            [v25 setObject_id:{*(v26 + v29), v30}];
          }
        }

LABEL_21:

        ++v23;
      }

      while (v23 != v24);
    }
  }

  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v35);
}

void sub_25D23249C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void ou3dod::OU3DSparseSSDetector::Postprocess(ou3dod::OU3DSparseSSDetector *this)
{
  ou3dod::OU3DSparseSSDetector::ParseNetOutput(this);
  ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(this);
  ou3dod::OU3DSparseSSDetector::InstanceSegmentation(this);
  v2 = *(this + 1);
  if (*(this + 2) != v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      _KR00_8 = __sincosf_stret(*(*(this + 50) + 4 * v4));
      v6 = 0;
      v7.i64[0] = 0x3F0000003F000000;
      v7.i64[1] = 0x3F0000003F000000;
      v8 = vmulq_f32(vaddq_f32(*(v2 + 224 * v4), *(v2 + 224 * v4 + 32)), v7);
      _S4 = -_KR00_8.__sinval;
      v10 = v2 + v3;
      do
      {
        v11 = *(v10 + v6);
        _Q6 = vsubq_f32(v11, v8);
        __asm { FMLA            S7, S4, V6.S[1] }

        *(v10 + v6 + 8) = v11.i32[2];
        v11.i32[0] = _S7;
        __asm { FMLA            S16, S1, V6.S[1] }

        v11.i32[1] = _S16;
        *(v10 + v6) = v11.i64[0];
        v6 += 16;
      }

      while (v6 != 128);
      ++v4;
      v2 = *(this + 1);
      v3 += 224;
    }

    while (v4 < 0x6DB6DB6DB6DB6DB7 * ((*(this + 2) - v2) >> 5));
  }
}

void ou3dod::OU3DSparseSSDetector::~OU3DSparseSSDetector(id *this)
{
  ou3dod::OU3DSparseSSDetector::~OU3DSparseSSDetector(this);

  JUMPOUT(0x25F894DE0);
}

{
  *this = &unk_286EBC398;
  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table((this + 54));

  v2 = this[50];
  if (v2)
  {
    this[51] = v2;
    operator delete(v2);
  }

  v3 = this[47];
  if (v3)
  {
    this[48] = v3;
    operator delete(v3);
  }

  v4 = this[44];
  if (v4)
  {
    this[45] = v4;
    operator delete(v4);
  }

  v5 = this[41];
  if (v5)
  {
    this[42] = v5;
    operator delete(v5);
  }

  v6 = this[38];
  if (v6)
  {
    this[39] = v6;
    operator delete(v6);
  }

  v7 = this[35];
  if (v7)
  {
    this[36] = v7;
    operator delete(v7);
  }

  v8 = this[32];
  if (v8)
  {
    this[33] = v8;
    operator delete(v8);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table((this + 27));
  v9 = this[24];
  if (v9)
  {
    this[25] = v9;
    operator delete(v9);
  }

  v10 = this + 21;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v10);
  ou3dod::OU3DODInterface::~OU3DODInterface(this);
}

uint64_t std::vector<OUEspressoInference::ModelInfo::BlobInfo>::__emplace_back_slow_path<OUEspressoInference::ModelInfo::BlobInfo>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OUEspressoInference::ModelInfo::BlobInfo>>(a1, v6);
  }

  v7 = 48 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *&v17 = 48 * v2 + 48;
  v9 = a1[1];
  v10 = 48 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OUEspressoInference::ModelInfo::BlobInfo>,OUEspressoInference::ModelInfo::BlobInfo*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<OUEspressoInference::ModelInfo::BlobInfo>::~__split_buffer(&v15);
  return v14;
}

void sub_25D232758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<OUEspressoInference::ModelInfo::BlobInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OUEspressoInference::ModelInfo::BlobInfo>,OUEspressoInference::ModelInfo::BlobInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *a4 = v7;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      v6 += 48;
      a4 += 48;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      std::__destroy_at[abi:ne200100]<OUEspressoInference::ModelInfo::BlobInfo,0>(v5);
      v5 += 48;
    }
  }
}

uint64_t std::__split_buffer<OUEspressoInference::ModelInfo::BlobInfo>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__destroy_at[abi:ne200100]<OUEspressoInference::ModelInfo::BlobInfo,0>(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *_ZNSt3__16vectorINS0_IDv3_iNS_9allocatorIS1_EEEENS2_IS4_EEEC2B8ne200100Em(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void *std::vector<std::span<float,18446744073709551615ul>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::span<float,18446744073709551615ul>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_25D232950(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::span<float,18446744073709551615ul>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::span<float,18446744073709551615ul>>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

int32x4_t *_ZNSt3__112__hash_tableINS_17__hash_value_typeIDv3_iiEENS_22__unordered_map_hasherIS2_S3_N5utils8SimdHashIS2_EENS5_9SimdEqualIS2_EELb1EEENS_21__unordered_map_equalIS2_S3_S9_S7_Lb1EEENS_9allocatorIS3_EEE25__emplace_unique_key_argsIS2_JRKNS_21piecewise_construct_tENS_5tupleIJOS2_EEENSK_IJEEEEEENS_4pairINS_15__hash_iteratorIPNS_11__hash_nodeIS3_PvEEEEbEERKT_DpOT0_(void *a1, int32x4_t *a2)
{
  v2 = a2->i32[0] ^ (HIDWORD(a2->i64[0]) << 7) ^ (a2->i64[1] << 14);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  v5 = v4.u32[0];
  if (v4.u32[0] > 1uLL)
  {
    v6 = a2->i32[0] ^ (HIDWORD(a2->i64[0]) << 7) ^ (a2->i64[1] << 14);
    if (v2 >= *&v3)
    {
      v6 = v2 % *&v3;
    }
  }

  else
  {
    v6 = v2 & (*&v3 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8->u64[1];
    if (v9 == v2)
    {
      break;
    }

    if (v5 > 1)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = v8->i64[0];
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  v10 = vceqq_s32(v8[1], *a2);
  v10.i32[3] = v10.i32[2];
  if ((vminvq_u32(v10) & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  return v8;
}

__n128 __Block_byref_object_copy_(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose_(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

int32x4_t *___ZN12_GLOBAL__N_117NeighborMapHelper7ComputeERKNSt3__113unordered_mapIDv3_iiN5utils8SimdHashIS3_EENS4_9SimdEqualIS3_EENS1_9allocatorINS1_4pairIKS3_iEEEEEERKNS1_6vectorIS3_NS9_IS3_EEEEjib_block_invoke(int32x4_t *result, uint64_t a2, int32x4_t a3)
{
  v3 = result;
  v4 = *(*result[2].i64[1] + 16 * a2);
  if ((result[5].i8[8] & 1) == 0)
  {
    v5 = &result[5].i32[1];
    a3 = vld1q_dup_f32(v5);
    v4 = vmulq_s32(a3, v4);
  }

  v6 = result[3].i64[0];
  v7 = result[3].i64[1];
  if (v6 != v7)
  {
    v8 = result[5].i32[0] * a2 * result[5].i32[0] * result[5].i32[0];
    v16 = v4;
    do
    {
      v9 = v3[3].i64[0];
      v10 = v3[3].i64[1];
      if (v9 != v10)
      {
        a3.i32[0] = *v6;
        v15 = a3;
        do
        {
          v11 = v3[3].i64[0];
          v12 = v3[3].i64[1];
          if (v11 != v12)
          {
            v13 = v15;
            v13.i32[1] = *v9;
            v13.i32[2] = v15.i32[2];
            v17 = v13;
            do
            {
              v14 = v17;
              v14.i32[2] = *v11;
              v18 = vaddq_s32(v14, v4);
              result = _ZNKSt3__112__hash_tableINS_17__hash_value_typeIDv3_iiEENS_22__unordered_map_hasherIS2_S3_N5utils8SimdHashIS2_EENS5_9SimdEqualIS2_EELb1EEENS_21__unordered_map_equalIS2_S3_S9_S7_Lb1EEENS_9allocatorIS3_EEE4findIS2_EENS_21__hash_const_iteratorIPNS_11__hash_nodeIS3_PvEEEERKT_(v3[4].i64[1], &v18);
              if (result)
              {
                *(*(*(v3[2].i64[0] + 8) + 48) + 4 * v8) = result[2].i32[0];
              }

              ++v8;
              ++v11;
              v4 = v16;
            }

            while (v11 != v12);
          }

          ++v9;
        }

        while (v9 != v10);
      }

      ++v6;
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t __copy_helper_block_ea8_48c39_ZTSNSt3__16vectorIiNS_9allocatorIiEEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v2 = a1 + 48;
  *(v2 + 16) = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v2, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 2);
}

void __destroy_helper_block_ea8_48c39_ZTSNSt3__16vectorIiNS_9allocatorIiEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

int32x4_t *_ZNKSt3__112__hash_tableINS_17__hash_value_typeIDv3_iiEENS_22__unordered_map_hasherIS2_S3_N5utils8SimdHashIS2_EENS5_9SimdEqualIS2_EELb1EEENS_21__unordered_map_equalIS2_S3_S9_S7_Lb1EEENS_9allocatorIS3_EEE4findIS2_EENS_21__hash_const_iteratorIPNS_11__hash_nodeIS3_PvEEEERKT_(void *a1, int32x4_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2->i32[0] ^ (HIDWORD(a2->i64[0]) << 7) ^ (a2->i64[1] << 14);
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  v5 = v4.u32[0];
  if (v4.u32[0] > 1uLL)
  {
    v6 = a2->i32[0] ^ (HIDWORD(a2->i64[0]) << 7) ^ (a2->i64[1] << 14);
    if (v3 >= *&v2)
    {
      v6 = v3 % *&v2;
    }
  }

  else
  {
    v6 = v3 & (*&v2 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  for (result = *v7; result; result = result->i64[0])
  {
    v9 = result->u64[1];
    if (v3 == v9)
    {
      v10 = vceqq_s32(result[1], *a2);
      v10.i32[3] = v10.i32[2];
      if ((vminvq_u32(v10) & 0x80000000) != 0)
      {
        return result;
      }
    }

    else
    {
      if (v5 > 1)
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
  }

  return result;
}

char *std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + *(a1 + 8) - v5;
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

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
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
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
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

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::$_0 &,std::__wrap_iter<int *>>(uint64_t result, uint64_t **a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (a4 - result) >> 2)
    {
      v5 = (a4 - result) >> 1;
      v6 = v5 | 1;
      v7 = (result + 4 * (v5 | 1));
      v8 = v5 + 2;
      v9 = **a2;
      if (v8 < a3 && *(v9 + 4 * *v7) > *(v9 + 4 * v7[1]))
      {
        ++v7;
        v6 = v8;
      }

      v10 = *v7;
      v11 = *a4;
      v12 = *(v9 + 4 * v11);
      if (*(v9 + 4 * v10) <= v12)
      {
        do
        {
          *a4 = v10;
          a4 = v7;
          if (v4 < v6)
          {
            break;
          }

          v13 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 4 * v6);
          v14 = v13 + 2;
          if (v14 < a3 && *(v9 + 4 * *v7) > *(v9 + 4 * v7[1]))
          {
            ++v7;
            v6 = v14;
          }

          v10 = *v7;
        }

        while (*(v9 + 4 * v10) <= v12);
        *a4 = v11;
      }
    }
  }

  return result;
}

void *std::__split_buffer<ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore,std::allocator<ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore> &>::__split_buffer(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (a2 < 0x1C71C71C71C71C8)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *result = 0;
  result[1] = 144 * a3;
  result[2] = 144 * a3;
  result[3] = 0;
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::$_3 &,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore *,false>(uint64_t a1, float *a2, uint64_t a3, char a4)
{
  v651 = *MEMORY[0x277D85DE8];
LABEL_2:
  v8 = a2 - 36;
  v9 = a2 - 72;
  v10 = a2 - 108;
  v335 = a2 - 74;
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = a2 - v11;
    v13 = 0x8E38E38E38E38E39 * ((a2 - v11) >> 4);
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        goto LABEL_181;
      }

      if (v13 == 2)
      {
        if (*(a2 - 2) > *(v11 + 136))
        {
          v386 = *v11;
          v482 = *(v11 + 48);
          v514 = *(v11 + 64);
          v418 = *(v11 + 16);
          v450 = *(v11 + 32);
          v610 = *(v11 + 112);
          v642 = *(v11 + 128);
          v546 = *(v11 + 80);
          v578 = *(v11 + 96);
          *v11 = *(a2 - 9);
          v226 = *(a2 - 8);
          v227 = *(a2 - 7);
          v228 = *(a2 - 5);
          *(v11 + 48) = *(a2 - 6);
          *(v11 + 64) = v228;
          *(v11 + 16) = v226;
          *(v11 + 32) = v227;
          v229 = *(a2 - 4);
          v230 = *(a2 - 3);
          v231 = *(a2 - 1);
          *(v11 + 112) = *(a2 - 2);
          *(v11 + 128) = v231;
          *(v11 + 80) = v229;
          *(v11 + 96) = v230;
          *(a2 - 9) = v386;
          *(a2 - 6) = v482;
          *(a2 - 5) = v514;
          *(a2 - 8) = v418;
          *(a2 - 7) = v450;
          *(a2 - 2) = v610;
          *(a2 - 1) = v642;
          *(a2 - 4) = v546;
          *(a2 - 3) = v578;
        }

        goto LABEL_181;
      }

      goto LABEL_10;
    }

    if (v13 == 3)
    {
      v232 = *(v11 + 280);
      v233 = *(a2 - 2);
      if (v232 <= *(v11 + 136))
      {
        if (v233 > v232)
        {
          v455 = *(v11 + 176);
          v487 = *(v11 + 192);
          v615 = *(v11 + 256);
          v647 = *(v11 + 272);
          v551 = *(v11 + 224);
          v583 = *(v11 + 240);
          v519 = *(v11 + 208);
          v391 = *(v11 + 144);
          v423 = *(v11 + 160);
          *(v11 + 144) = *v8;
          v307 = *(a2 - 8);
          v308 = *(a2 - 7);
          v309 = *(a2 - 5);
          *(v11 + 192) = *(a2 - 6);
          *(v11 + 208) = v309;
          *(v11 + 160) = v307;
          *(v11 + 176) = v308;
          v310 = *(a2 - 4);
          v311 = *(a2 - 3);
          v312 = *(a2 - 1);
          *(v11 + 256) = *(a2 - 2);
          *(v11 + 272) = v312;
          *(v11 + 224) = v310;
          *(v11 + 240) = v311;
          *v8 = v391;
          *(a2 - 6) = v487;
          *(a2 - 5) = v519;
          *(a2 - 8) = v423;
          *(a2 - 7) = v455;
          *(a2 - 2) = v615;
          *(a2 - 1) = v647;
          *(a2 - 4) = v551;
          *(a2 - 3) = v583;
          if (*(v11 + 280) > *(v11 + 136))
          {
            v392 = *v11;
            v488 = *(v11 + 48);
            v520 = *(v11 + 64);
            v424 = *(v11 + 16);
            v456 = *(v11 + 32);
            v616 = *(v11 + 112);
            v648 = *(v11 + 128);
            v552 = *(v11 + 80);
            v584 = *(v11 + 96);
            v313 = *(v11 + 192);
            *(v11 + 32) = *(v11 + 176);
            *(v11 + 48) = v313;
            v314 = *(v11 + 272);
            *(v11 + 112) = *(v11 + 256);
            *(v11 + 128) = v314;
            v315 = *(v11 + 240);
            *(v11 + 80) = *(v11 + 224);
            *(v11 + 96) = v315;
            *(v11 + 64) = *(v11 + 208);
            v316 = *(v11 + 160);
            *v11 = *(v11 + 144);
            *(v11 + 16) = v316;
            *(v11 + 240) = v584;
            *(v11 + 256) = v616;
            *(v11 + 272) = v648;
            *(v11 + 176) = v456;
            *(v11 + 192) = v488;
            *(v11 + 208) = v520;
            *(v11 + 224) = v552;
            *(v11 + 144) = v392;
            *(v11 + 160) = v424;
          }
        }

        goto LABEL_181;
      }

      if (v233 <= v232)
      {
        v394 = *v11;
        v490 = *(v11 + 48);
        v522 = *(v11 + 64);
        v426 = *(v11 + 16);
        v458 = *(v11 + 32);
        v618 = *(v11 + 112);
        v650 = *(v11 + 128);
        v554 = *(v11 + 80);
        v586 = *(v11 + 96);
        v324 = *(v11 + 192);
        *(v11 + 32) = *(v11 + 176);
        *(v11 + 48) = v324;
        v325 = *(v11 + 272);
        *(v11 + 112) = *(v11 + 256);
        *(v11 + 128) = v325;
        v326 = *(v11 + 240);
        *(v11 + 80) = *(v11 + 224);
        *(v11 + 96) = v326;
        *(v11 + 64) = *(v11 + 208);
        v327 = *(v11 + 160);
        *v11 = *(v11 + 144);
        *(v11 + 16) = v327;
        *(v11 + 240) = v586;
        *(v11 + 256) = v618;
        *(v11 + 272) = v650;
        *(v11 + 176) = v458;
        *(v11 + 192) = v490;
        *(v11 + 208) = v522;
        *(v11 + 224) = v554;
        *(v11 + 144) = v394;
        *(v11 + 160) = v426;
        if (*(a2 - 2) <= *(v11 + 280))
        {
LABEL_181:
          v334 = *MEMORY[0x277D85DE8];
          return;
        }

        v451 = *(v11 + 176);
        v483 = *(v11 + 192);
        v611 = *(v11 + 256);
        v643 = *(v11 + 272);
        v547 = *(v11 + 224);
        v579 = *(v11 + 240);
        v515 = *(v11 + 208);
        v387 = *(v11 + 144);
        v419 = *(v11 + 160);
        *(v11 + 144) = *v8;
        v328 = *(a2 - 8);
        v329 = *(a2 - 7);
        v330 = *(a2 - 5);
        *(v11 + 192) = *(a2 - 6);
        *(v11 + 208) = v330;
        *(v11 + 160) = v328;
        *(v11 + 176) = v329;
        v331 = *(a2 - 4);
        v332 = *(a2 - 3);
        v333 = *(a2 - 1);
        *(v11 + 256) = *(a2 - 2);
        *(v11 + 272) = v333;
        *(v11 + 224) = v331;
        *(v11 + 240) = v332;
      }

      else
      {
        v387 = *v11;
        v483 = *(v11 + 48);
        v515 = *(v11 + 64);
        v419 = *(v11 + 16);
        v451 = *(v11 + 32);
        v611 = *(v11 + 112);
        v643 = *(v11 + 128);
        v547 = *(v11 + 80);
        v579 = *(v11 + 96);
        *v11 = *v8;
        v234 = *(a2 - 8);
        v235 = *(a2 - 7);
        v236 = *(a2 - 5);
        *(v11 + 48) = *(a2 - 6);
        *(v11 + 64) = v236;
        *(v11 + 16) = v234;
        *(v11 + 32) = v235;
        v237 = *(a2 - 4);
        v238 = *(a2 - 3);
        v239 = *(a2 - 1);
        *(v11 + 112) = *(a2 - 2);
        *(v11 + 128) = v239;
        *(v11 + 80) = v237;
        *(v11 + 96) = v238;
      }

      *v8 = v387;
      *(a2 - 6) = v483;
      *(a2 - 5) = v515;
      *(a2 - 8) = v419;
      *(a2 - 7) = v451;
      *(a2 - 2) = v611;
      *(a2 - 1) = v643;
      *(a2 - 4) = v547;
      *(a2 - 3) = v579;
      goto LABEL_181;
    }

    if (v13 == 4)
    {
      break;
    }

    if (v13 == 5)
    {
      v225 = *MEMORY[0x277D85DE8];

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::$_3 &,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore *,0>(v11, (v11 + 144), (v11 + 288), (v11 + 432), a2 - 9);
      return;
    }

LABEL_10:
    if (v12 <= 3455)
    {
      v241 = (v11 + 144);
      v243 = v11 == a2 || v241 == a2;
      if (a4)
      {
        if (!v243)
        {
          v244 = 0;
          v245 = v11;
          do
          {
            v246 = v241;
            v247 = *(v245 + 280);
            if (v247 > *(v245 + 136))
            {
              v388 = *v241;
              v484 = *(v241 + 3);
              v516 = *(v241 + 4);
              v420 = *(v241 + 1);
              v452 = *(v241 + 2);
              v644 = *(v241 + 16);
              v580 = *(v241 + 6);
              v612 = *(v241 + 7);
              v548 = *(v241 + 5);
              v248 = *(v245 + 284);
              v249 = v244;
              while (1)
              {
                v250 = (v11 + v249);
                v251 = *(v11 + v249 + 112);
                *(v250 + 15) = *(v11 + v249 + 96);
                *(v250 + 16) = v251;
                *(v250 + 17) = *(v11 + v249 + 128);
                v252 = *(v11 + v249 + 48);
                *(v250 + 11) = *(v11 + v249 + 32);
                *(v250 + 12) = v252;
                v253 = *(v11 + v249 + 80);
                *(v250 + 13) = *(v11 + v249 + 64);
                *(v250 + 14) = v253;
                v254 = *(v11 + v249 + 16);
                *(v250 + 9) = *(v11 + v249);
                *(v250 + 10) = v254;
                if (!v249)
                {
                  break;
                }

                v249 -= 144;
                if (v247 <= *(v250 - 2))
                {
                  v255 = v11 + v249 + 144;
                  goto LABEL_131;
                }
              }

              v255 = v11;
LABEL_131:
              *v255 = v388;
              *(v255 + 48) = v484;
              *(v255 + 64) = v516;
              *(v255 + 16) = v420;
              *(v255 + 32) = v452;
              *(v255 + 128) = v644;
              *(v255 + 96) = v580;
              *(v255 + 112) = v612;
              *(v255 + 80) = v548;
              *(v255 + 136) = v247;
              *(v255 + 140) = v248;
            }

            v241 = v246 + 36;
            v244 += 144;
            v245 = v246;
          }

          while (v246 + 36 != a2);
        }
      }

      else if (!v243)
      {
        do
        {
          v317 = v241;
          v318 = *(a1 + 280);
          if (v318 > *(a1 + 136))
          {
            v393 = *v241;
            v489 = *(v241 + 3);
            v521 = *(v241 + 4);
            v425 = *(v241 + 1);
            v457 = *(v241 + 2);
            v649 = *(v241 + 16);
            v585 = *(v241 + 6);
            v617 = *(v241 + 7);
            v553 = *(v241 + 5);
            v319 = *(a1 + 284);
            do
            {
              v320 = *(v241 - 2);
              *(v241 + 6) = *(v241 - 3);
              *(v241 + 7) = v320;
              *(v241 + 8) = *(v241 - 1);
              v321 = *(v241 - 6);
              *(v241 + 2) = *(v241 - 7);
              *(v241 + 3) = v321;
              v322 = *(v241 - 4);
              *(v241 + 4) = *(v241 - 5);
              *(v241 + 5) = v322;
              v323 = *(v241 - 8);
              *v241 = *(v241 - 9);
              *(v241 + 1) = v323;
              *&v323 = *(v241 - 38);
              v241 -= 36;
            }

            while (v318 > *&v323);
            *v241 = v393;
            *(v241 + 3) = v489;
            *(v241 + 4) = v521;
            *(v241 + 1) = v425;
            *(v241 + 2) = v457;
            *(v241 + 16) = v649;
            *(v241 + 6) = v585;
            *(v241 + 7) = v617;
            *(v241 + 5) = v553;
            v241[34] = v318;
            *(v241 + 35) = v319;
          }

          v241 = (v317 + 144);
          a1 = v317;
        }

        while ((v317 + 144) != a2);
      }

      goto LABEL_181;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v256 = (v13 - 2) >> 1;
        v257 = v256;
        do
        {
          v258 = v257;
          if (v256 >= v257)
          {
            v259 = (2 * v257) | 1;
            v260 = v11 + 144 * v259;
            if (2 * v257 + 2 < v13 && *(v260 + 136) > *(v260 + 280))
            {
              v260 += 144;
              v259 = 2 * v257 + 2;
            }

            v261 = v11 + 144 * v257;
            v262 = *(v261 + 136);
            if (*(v260 + 136) <= v262)
            {
              v389 = *v261;
              v485 = *(v261 + 48);
              v517 = *(v261 + 64);
              v421 = *(v261 + 16);
              v453 = *(v261 + 32);
              v645 = *(v261 + 128);
              v581 = *(v261 + 96);
              v613 = *(v261 + 112);
              v549 = *(v261 + 80);
              v263 = *(v261 + 140);
              do
              {
                v264 = v261;
                v261 = v260;
                *v264 = *v260;
                v265 = *(v260 + 16);
                v266 = *(v260 + 32);
                v267 = *(v260 + 64);
                v264[3] = *(v260 + 48);
                v264[4] = v267;
                v264[1] = v265;
                v264[2] = v266;
                v268 = *(v260 + 80);
                v269 = *(v260 + 96);
                v270 = *(v260 + 128);
                v264[7] = *(v260 + 112);
                v264[8] = v270;
                v264[5] = v268;
                v264[6] = v269;
                if (v256 < v259)
                {
                  break;
                }

                v271 = 2 * v259;
                v259 = (2 * v259) | 1;
                v260 = v11 + 144 * v259;
                v272 = v271 + 2;
                if (v272 < v13 && *(v260 + 136) > *(v260 + 280))
                {
                  v260 += 144;
                  v259 = v272;
                }
              }

              while (*(v260 + 136) <= v262);
              *v261 = v389;
              *(v261 + 48) = v485;
              *(v261 + 64) = v517;
              *(v261 + 16) = v421;
              *(v261 + 32) = v453;
              *(v261 + 128) = v645;
              *(v261 + 96) = v581;
              *(v261 + 112) = v613;
              *(v261 + 80) = v549;
              *(v261 + 136) = v262;
              *(v261 + 140) = v263;
            }
          }

          v257 = v258 - 1;
        }

        while (v258);
        v273 = 0x8E38E38E38E38E39 * (v12 >> 4);
        do
        {
          v274 = 0;
          v390 = *v11;
          v486 = *(v11 + 48);
          v518 = *(v11 + 64);
          v422 = *(v11 + 16);
          v454 = *(v11 + 32);
          v614 = *(v11 + 112);
          v646 = *(v11 + 128);
          v550 = *(v11 + 80);
          v582 = *(v11 + 96);
          v275 = v11;
          do
          {
            v276 = &v275[9 * v274];
            v277 = v276 + 36;
            v278 = (2 * v274) | 1;
            v274 = 2 * v274 + 2;
            if (v274 >= v273)
            {
              v274 = v278;
            }

            else
            {
              v279 = v276[70];
              v280 = v276[106];
              v281 = v276 + 72;
              if (v279 <= v280)
              {
                v274 = v278;
              }

              else
              {
                v277 = v281;
              }
            }

            *v275 = *v277;
            v282 = *(v277 + 1);
            v283 = *(v277 + 2);
            v284 = *(v277 + 4);
            v275[3] = *(v277 + 3);
            v275[4] = v284;
            v275[1] = v282;
            v275[2] = v283;
            v285 = *(v277 + 5);
            v286 = *(v277 + 6);
            v287 = *(v277 + 8);
            v275[7] = *(v277 + 7);
            v275[8] = v287;
            v275[5] = v285;
            v275[6] = v286;
            v275 = v277;
          }

          while (v274 <= ((v273 - 2) >> 1));
          a2 -= 36;
          if (v277 == a2)
          {
            *v277 = v390;
            *(v277 + 3) = v486;
            *(v277 + 4) = v518;
            *(v277 + 1) = v422;
            *(v277 + 2) = v454;
            *(v277 + 7) = v614;
            *(v277 + 8) = v646;
            *(v277 + 5) = v550;
            *(v277 + 6) = v582;
          }

          else
          {
            *v277 = *a2;
            v288 = *(a2 + 1);
            v289 = *(a2 + 2);
            v290 = *(a2 + 4);
            *(v277 + 3) = *(a2 + 3);
            *(v277 + 4) = v290;
            *(v277 + 1) = v288;
            *(v277 + 2) = v289;
            v291 = *(a2 + 5);
            v292 = *(a2 + 6);
            v293 = *(a2 + 8);
            *(v277 + 7) = *(a2 + 7);
            *(v277 + 8) = v293;
            *(v277 + 5) = v291;
            *(v277 + 6) = v292;
            *a2 = v390;
            *(a2 + 3) = v486;
            *(a2 + 4) = v518;
            *(a2 + 1) = v422;
            *(a2 + 2) = v454;
            *(a2 + 7) = v614;
            *(a2 + 8) = v646;
            *(a2 + 5) = v550;
            *(a2 + 6) = v582;
            v294 = v277 - v11 + 144;
            if (v294 >= 145)
            {
              v295 = (-2 - 0x71C71C71C71C71C7 * (v294 >> 4)) >> 1;
              v296 = v11 + 144 * v295;
              v297 = v277[34];
              if (*(v296 + 136) > v297)
              {
                v338 = *v277;
                v347 = *(v277 + 3);
                v350 = *(v277 + 4);
                v341 = *(v277 + 1);
                v344 = *(v277 + 2);
                v362 = *(v277 + 16);
                v356 = *(v277 + 6);
                v359 = *(v277 + 7);
                v353 = *(v277 + 5);
                v298 = *(v277 + 35);
                do
                {
                  v299 = v277;
                  v277 = v296;
                  *v299 = *v296;
                  v300 = *(v296 + 16);
                  v301 = *(v296 + 32);
                  v302 = *(v296 + 64);
                  *(v299 + 3) = *(v296 + 48);
                  *(v299 + 4) = v302;
                  *(v299 + 1) = v300;
                  *(v299 + 2) = v301;
                  v303 = *(v296 + 80);
                  v304 = *(v296 + 96);
                  v305 = *(v296 + 128);
                  *(v299 + 7) = *(v296 + 112);
                  *(v299 + 8) = v305;
                  *(v299 + 5) = v303;
                  *(v299 + 6) = v304;
                  if (!v295)
                  {
                    break;
                  }

                  v295 = (v295 - 1) >> 1;
                  v296 = v11 + 144 * v295;
                }

                while (*(v296 + 136) > v297);
                *v277 = v338;
                *(v277 + 3) = v347;
                *(v277 + 4) = v350;
                *(v277 + 1) = v341;
                *(v277 + 2) = v344;
                *(v277 + 16) = v362;
                *(v277 + 6) = v356;
                *(v277 + 7) = v359;
                *(v277 + 5) = v353;
                v277[34] = v297;
                *(v277 + 35) = v298;
              }
            }
          }
        }

        while (v273-- > 2);
      }

      goto LABEL_181;
    }

    v14 = v13 >> 1;
    v15 = v11 + 144 * (v13 >> 1);
    v16 = *(a2 - 2);
    if (v12 >= 0x4801)
    {
      v17 = *(v15 + 136);
      if (v17 <= *(v11 + 136))
      {
        if (v16 > v17)
        {
          v365 = *v15;
          v461 = *(v15 + 48);
          v493 = *(v15 + 64);
          v397 = *(v15 + 16);
          v429 = *(v15 + 32);
          v589 = *(v15 + 112);
          v621 = *(v15 + 128);
          v525 = *(v15 + 80);
          v557 = *(v15 + 96);
          *v15 = *v8;
          v31 = *(a2 - 8);
          v32 = *(a2 - 7);
          v33 = *(a2 - 5);
          *(v15 + 48) = *(a2 - 6);
          *(v15 + 64) = v33;
          *(v15 + 16) = v31;
          *(v15 + 32) = v32;
          v34 = *(a2 - 4);
          v35 = *(a2 - 3);
          v36 = *(a2 - 1);
          *(v15 + 112) = *(a2 - 2);
          *(v15 + 128) = v36;
          *(v15 + 80) = v34;
          *(v15 + 96) = v35;
          *v8 = v365;
          *(a2 - 6) = v461;
          *(a2 - 5) = v493;
          *(a2 - 8) = v397;
          *(a2 - 7) = v429;
          *(a2 - 2) = v589;
          *(a2 - 1) = v621;
          *(a2 - 4) = v525;
          *(a2 - 3) = v557;
          if (*(v15 + 136) > *(v11 + 136))
          {
            v366 = *v11;
            v462 = *(v11 + 48);
            v494 = *(v11 + 64);
            v398 = *(v11 + 16);
            v430 = *(v11 + 32);
            v590 = *(v11 + 112);
            v622 = *(v11 + 128);
            v526 = *(v11 + 80);
            v558 = *(v11 + 96);
            *v11 = *v15;
            v37 = *(v15 + 16);
            v38 = *(v15 + 32);
            v39 = *(v15 + 64);
            *(v11 + 48) = *(v15 + 48);
            *(v11 + 64) = v39;
            *(v11 + 16) = v37;
            *(v11 + 32) = v38;
            v40 = *(v15 + 80);
            v41 = *(v15 + 96);
            v42 = *(v15 + 128);
            *(v11 + 112) = *(v15 + 112);
            *(v11 + 128) = v42;
            *(v11 + 80) = v40;
            *(v11 + 96) = v41;
            *v15 = v366;
            *(v15 + 48) = v462;
            *(v15 + 64) = v494;
            *(v15 + 16) = v398;
            *(v15 + 32) = v430;
            *(v15 + 112) = v590;
            *(v15 + 128) = v622;
            *(v15 + 80) = v526;
            *(v15 + 96) = v558;
          }
        }
      }

      else
      {
        if (v16 > v17)
        {
          v363 = *v11;
          v459 = *(v11 + 48);
          v491 = *(v11 + 64);
          v395 = *(v11 + 16);
          v427 = *(v11 + 32);
          v587 = *(v11 + 112);
          v619 = *(v11 + 128);
          v523 = *(v11 + 80);
          v555 = *(v11 + 96);
          *v11 = *v8;
          v18 = *(a2 - 8);
          v19 = *(a2 - 7);
          v20 = *(a2 - 5);
          *(v11 + 48) = *(a2 - 6);
          *(v11 + 64) = v20;
          *(v11 + 16) = v18;
          *(v11 + 32) = v19;
          v21 = *(a2 - 4);
          v22 = *(a2 - 3);
          v23 = *(a2 - 1);
          *(v11 + 112) = *(a2 - 2);
          *(v11 + 128) = v23;
          *(v11 + 80) = v21;
          *(v11 + 96) = v22;
          goto LABEL_27;
        }

        v369 = *v11;
        v465 = *(v11 + 48);
        v497 = *(v11 + 64);
        v401 = *(v11 + 16);
        v433 = *(v11 + 32);
        v593 = *(v11 + 112);
        v625 = *(v11 + 128);
        v529 = *(v11 + 80);
        v561 = *(v11 + 96);
        *v11 = *v15;
        v55 = *(v15 + 16);
        v56 = *(v15 + 32);
        v57 = *(v15 + 64);
        *(v11 + 48) = *(v15 + 48);
        *(v11 + 64) = v57;
        *(v11 + 16) = v55;
        *(v11 + 32) = v56;
        v58 = *(v15 + 80);
        v59 = *(v15 + 96);
        v60 = *(v15 + 128);
        *(v11 + 112) = *(v15 + 112);
        *(v11 + 128) = v60;
        *(v11 + 80) = v58;
        *(v11 + 96) = v59;
        *v15 = v369;
        *(v15 + 48) = v465;
        *(v15 + 64) = v497;
        *(v15 + 16) = v401;
        *(v15 + 32) = v433;
        *(v15 + 112) = v593;
        *(v15 + 128) = v625;
        *(v15 + 80) = v529;
        *(v15 + 96) = v561;
        if (*(a2 - 2) > *(v15 + 136))
        {
          v363 = *v15;
          v459 = *(v15 + 48);
          v491 = *(v15 + 64);
          v395 = *(v15 + 16);
          v427 = *(v15 + 32);
          v587 = *(v15 + 112);
          v619 = *(v15 + 128);
          v523 = *(v15 + 80);
          v555 = *(v15 + 96);
          *v15 = *v8;
          v61 = *(a2 - 8);
          v62 = *(a2 - 7);
          v63 = *(a2 - 5);
          *(v15 + 48) = *(a2 - 6);
          *(v15 + 64) = v63;
          *(v15 + 16) = v61;
          *(v15 + 32) = v62;
          v64 = *(a2 - 4);
          v65 = *(a2 - 3);
          v66 = *(a2 - 1);
          *(v15 + 112) = *(a2 - 2);
          *(v15 + 128) = v66;
          *(v15 + 80) = v64;
          *(v15 + 96) = v65;
LABEL_27:
          *v8 = v363;
          *(a2 - 6) = v459;
          *(a2 - 5) = v491;
          *(a2 - 8) = v395;
          *(a2 - 7) = v427;
          *(a2 - 2) = v587;
          *(a2 - 1) = v619;
          *(a2 - 4) = v523;
          *(a2 - 3) = v555;
        }
      }

      v67 = v11 + 144 * v14;
      v68 = v67 - 144;
      v69 = *(v67 - 8);
      v70 = *(a2 - 38);
      if (v69 <= *(v11 + 280))
      {
        if (v70 > v69)
        {
          v371 = *v68;
          v467 = *(v67 - 96);
          v499 = *(v67 - 80);
          v403 = *(v67 - 128);
          v435 = *(v67 - 112);
          v595 = *(v67 - 32);
          v627 = *(v67 - 16);
          v531 = *(v67 - 64);
          v563 = *(v67 - 48);
          *v68 = *v9;
          v77 = *(a2 - 17);
          v78 = *(a2 - 16);
          v79 = *(a2 - 14);
          *(v67 - 96) = *(a2 - 15);
          *(v67 - 80) = v79;
          *(v67 - 128) = v77;
          *(v67 - 112) = v78;
          v80 = *(a2 - 13);
          v81 = *(a2 - 12);
          v82 = *(a2 - 10);
          *(v67 - 32) = *(a2 - 11);
          *(v67 - 16) = v82;
          *(v67 - 64) = v80;
          *(v67 - 48) = v81;
          *v9 = v371;
          *(a2 - 15) = v467;
          *(a2 - 14) = v499;
          *(a2 - 17) = v403;
          *(a2 - 16) = v435;
          *(a2 - 11) = v595;
          *(a2 - 10) = v627;
          *(a2 - 13) = v531;
          *(a2 - 12) = v563;
          if (*(v67 - 8) > *(v11 + 280))
          {
            v436 = *(v11 + 176);
            v468 = *(v11 + 192);
            v596 = *(v11 + 256);
            v628 = *(v11 + 272);
            v532 = *(v11 + 224);
            v564 = *(v11 + 240);
            v500 = *(v11 + 208);
            v372 = *(v11 + 144);
            v404 = *(v11 + 160);
            *(v11 + 144) = *v68;
            v83 = *(v67 - 128);
            v84 = *(v67 - 112);
            v85 = *(v67 - 80);
            *(v11 + 192) = *(v67 - 96);
            *(v11 + 208) = v85;
            *(v11 + 160) = v83;
            *(v11 + 176) = v84;
            v86 = *(v67 - 64);
            v87 = *(v67 - 48);
            v88 = *(v67 - 16);
            *(v11 + 256) = *(v67 - 32);
            *(v11 + 272) = v88;
            *(v11 + 224) = v86;
            *(v11 + 240) = v87;
            *v68 = v372;
            *(v67 - 96) = v468;
            *(v67 - 80) = v500;
            *(v67 - 128) = v404;
            *(v67 - 112) = v436;
            *(v67 - 32) = v596;
            *(v67 - 16) = v628;
            *(v67 - 64) = v532;
            *(v67 - 48) = v564;
          }
        }
      }

      else
      {
        if (v70 > v69)
        {
          v434 = *(v11 + 176);
          v466 = *(v11 + 192);
          v594 = *(v11 + 256);
          v626 = *(v11 + 272);
          v530 = *(v11 + 224);
          v562 = *(v11 + 240);
          v498 = *(v11 + 208);
          v370 = *(v11 + 144);
          v402 = *(v11 + 160);
          *(v11 + 144) = *v9;
          v71 = *(a2 - 17);
          v72 = *(a2 - 16);
          v73 = *(a2 - 14);
          *(v11 + 192) = *(a2 - 15);
          *(v11 + 208) = v73;
          *(v11 + 160) = v71;
          *(v11 + 176) = v72;
          v74 = *(a2 - 13);
          v75 = *(a2 - 12);
          v76 = *(a2 - 10);
          *(v11 + 256) = *(a2 - 11);
          *(v11 + 272) = v76;
          *(v11 + 224) = v74;
          *(v11 + 240) = v75;
          goto LABEL_39;
        }

        v438 = *(v11 + 176);
        v470 = *(v11 + 192);
        v598 = *(v11 + 256);
        v630 = *(v11 + 272);
        v534 = *(v11 + 224);
        v566 = *(v11 + 240);
        v502 = *(v11 + 208);
        v374 = *(v11 + 144);
        v406 = *(v11 + 160);
        *(v11 + 144) = *v68;
        v101 = *(v67 - 128);
        v102 = *(v67 - 112);
        v103 = *(v67 - 80);
        *(v11 + 192) = *(v67 - 96);
        *(v11 + 208) = v103;
        *(v11 + 160) = v101;
        *(v11 + 176) = v102;
        v104 = *(v67 - 64);
        v105 = *(v67 - 48);
        v106 = *(v67 - 16);
        *(v11 + 256) = *(v67 - 32);
        *(v11 + 272) = v106;
        *(v11 + 224) = v104;
        *(v11 + 240) = v105;
        *v68 = v374;
        *(v67 - 96) = v470;
        *(v67 - 80) = v502;
        *(v67 - 128) = v406;
        *(v67 - 112) = v438;
        *(v67 - 32) = v598;
        *(v67 - 16) = v630;
        *(v67 - 64) = v534;
        *(v67 - 48) = v566;
        if (*(a2 - 38) > *(v67 - 8))
        {
          v370 = *v68;
          v466 = *(v67 - 96);
          v498 = *(v67 - 80);
          v402 = *(v67 - 128);
          v434 = *(v67 - 112);
          v594 = *(v67 - 32);
          v626 = *(v67 - 16);
          v530 = *(v67 - 64);
          v562 = *(v67 - 48);
          *v68 = *v9;
          v107 = *(a2 - 17);
          v108 = *(a2 - 16);
          v109 = *(a2 - 14);
          *(v67 - 96) = *(a2 - 15);
          *(v67 - 80) = v109;
          *(v67 - 128) = v107;
          *(v67 - 112) = v108;
          v110 = *(a2 - 13);
          v111 = *(a2 - 12);
          v112 = *(a2 - 10);
          *(v67 - 32) = *(a2 - 11);
          *(v67 - 16) = v112;
          *(v67 - 64) = v110;
          *(v67 - 48) = v111;
LABEL_39:
          *v9 = v370;
          *(a2 - 15) = v466;
          *(a2 - 14) = v498;
          *(a2 - 17) = v402;
          *(a2 - 16) = v434;
          *(a2 - 11) = v594;
          *(a2 - 10) = v626;
          *(a2 - 13) = v530;
          *(a2 - 12) = v562;
        }
      }

      v113 = v11 + 144 * v14;
      v114 = (v113 + 144);
      v115 = *(v113 + 280);
      v116 = *v335;
      if (v115 <= *(v11 + 424))
      {
        if (v116 > v115)
        {
          v376 = *v114;
          v472 = *(v113 + 192);
          v504 = *(v113 + 208);
          v408 = *(v113 + 160);
          v440 = *(v113 + 176);
          v600 = *(v113 + 256);
          v632 = *(v113 + 272);
          v536 = *(v113 + 224);
          v568 = *(v113 + 240);
          *v114 = *v10;
          v123 = *(a2 - 26);
          v124 = *(a2 - 25);
          v125 = *(a2 - 23);
          *(v113 + 192) = *(a2 - 24);
          *(v113 + 208) = v125;
          *(v113 + 160) = v123;
          *(v113 + 176) = v124;
          v126 = *(a2 - 22);
          v127 = *(a2 - 21);
          v128 = *(a2 - 19);
          *(v113 + 256) = *(a2 - 20);
          *(v113 + 272) = v128;
          *(v113 + 224) = v126;
          *(v113 + 240) = v127;
          *v10 = v376;
          *(a2 - 24) = v472;
          *(a2 - 23) = v504;
          *(a2 - 26) = v408;
          *(a2 - 25) = v440;
          *(a2 - 20) = v600;
          *(a2 - 19) = v632;
          *(a2 - 22) = v536;
          *(a2 - 21) = v568;
          if (*(v113 + 280) > *(v11 + 424))
          {
            v441 = *(v11 + 320);
            v473 = *(v11 + 336);
            v601 = *(v11 + 400);
            v633 = *(v11 + 416);
            v537 = *(v11 + 368);
            v569 = *(v11 + 384);
            v505 = *(v11 + 352);
            v377 = *(v11 + 288);
            v409 = *(v11 + 304);
            *(v11 + 288) = *v114;
            v129 = *(v113 + 160);
            v130 = *(v113 + 176);
            v131 = *(v113 + 208);
            *(v11 + 336) = *(v113 + 192);
            *(v11 + 352) = v131;
            *(v11 + 304) = v129;
            *(v11 + 320) = v130;
            v132 = *(v113 + 224);
            v133 = *(v113 + 240);
            v134 = *(v113 + 272);
            *(v11 + 400) = *(v113 + 256);
            *(v11 + 416) = v134;
            *(v11 + 368) = v132;
            *(v11 + 384) = v133;
            *v114 = v377;
            *(v113 + 192) = v473;
            *(v113 + 208) = v505;
            *(v113 + 160) = v409;
            *(v113 + 176) = v441;
            *(v113 + 256) = v601;
            *(v113 + 272) = v633;
            *(v113 + 224) = v537;
            *(v113 + 240) = v569;
          }
        }
      }

      else
      {
        if (v116 > v115)
        {
          v439 = *(v11 + 320);
          v471 = *(v11 + 336);
          v599 = *(v11 + 400);
          v631 = *(v11 + 416);
          v535 = *(v11 + 368);
          v567 = *(v11 + 384);
          v503 = *(v11 + 352);
          v375 = *(v11 + 288);
          v407 = *(v11 + 304);
          *(v11 + 288) = *v10;
          v117 = *(a2 - 26);
          v118 = *(a2 - 25);
          v119 = *(a2 - 23);
          *(v11 + 336) = *(a2 - 24);
          *(v11 + 352) = v119;
          *(v11 + 304) = v117;
          *(v11 + 320) = v118;
          v120 = *(a2 - 22);
          v121 = *(a2 - 21);
          v122 = *(a2 - 19);
          *(v11 + 400) = *(a2 - 20);
          *(v11 + 416) = v122;
          *(v11 + 368) = v120;
          *(v11 + 384) = v121;
          goto LABEL_48;
        }

        v442 = *(v11 + 320);
        v474 = *(v11 + 336);
        v602 = *(v11 + 400);
        v634 = *(v11 + 416);
        v538 = *(v11 + 368);
        v570 = *(v11 + 384);
        v506 = *(v11 + 352);
        v378 = *(v11 + 288);
        v410 = *(v11 + 304);
        *(v11 + 288) = *v114;
        v135 = *(v113 + 160);
        v136 = *(v113 + 176);
        v137 = *(v113 + 208);
        *(v11 + 336) = *(v113 + 192);
        *(v11 + 352) = v137;
        *(v11 + 304) = v135;
        *(v11 + 320) = v136;
        v138 = *(v113 + 224);
        v139 = *(v113 + 240);
        v140 = *(v113 + 272);
        *(v11 + 400) = *(v113 + 256);
        *(v11 + 416) = v140;
        *(v11 + 368) = v138;
        *(v11 + 384) = v139;
        *v114 = v378;
        *(v113 + 192) = v474;
        *(v113 + 208) = v506;
        *(v113 + 160) = v410;
        *(v113 + 176) = v442;
        *(v113 + 256) = v602;
        *(v113 + 272) = v634;
        *(v113 + 224) = v538;
        *(v113 + 240) = v570;
        if (*v335 > *(v113 + 280))
        {
          v375 = *v114;
          v471 = *(v113 + 192);
          v503 = *(v113 + 208);
          v407 = *(v113 + 160);
          v439 = *(v113 + 176);
          v599 = *(v113 + 256);
          v631 = *(v113 + 272);
          v535 = *(v113 + 224);
          v567 = *(v113 + 240);
          *v114 = *v10;
          v141 = *(a2 - 26);
          v142 = *(a2 - 25);
          v143 = *(a2 - 23);
          *(v113 + 192) = *(a2 - 24);
          *(v113 + 208) = v143;
          *(v113 + 160) = v141;
          *(v113 + 176) = v142;
          v144 = *(a2 - 22);
          v145 = *(a2 - 21);
          v146 = *(a2 - 19);
          *(v113 + 256) = *(a2 - 20);
          *(v113 + 272) = v146;
          *(v113 + 224) = v144;
          *(v113 + 240) = v145;
LABEL_48:
          *v10 = v375;
          *(a2 - 24) = v471;
          *(a2 - 23) = v503;
          *(a2 - 26) = v407;
          *(a2 - 25) = v439;
          *(a2 - 20) = v599;
          *(a2 - 19) = v631;
          *(a2 - 22) = v535;
          *(a2 - 21) = v567;
        }
      }

      v147 = *(v15 + 136);
      v148 = *(v113 + 280);
      if (v147 <= *(v68 + 136))
      {
        if (v148 > v147)
        {
          v380 = *v15;
          v476 = *(v15 + 48);
          v508 = *(v15 + 64);
          v412 = *(v15 + 16);
          v444 = *(v15 + 32);
          v604 = *(v15 + 112);
          v636 = *(v15 + 128);
          v540 = *(v15 + 80);
          v572 = *(v15 + 96);
          v153 = *(v113 + 192);
          *(v15 + 32) = *(v113 + 176);
          *(v15 + 48) = v153;
          v154 = *(v113 + 272);
          *(v15 + 112) = *(v113 + 256);
          *(v15 + 128) = v154;
          v155 = *(v113 + 240);
          *(v15 + 80) = *(v113 + 224);
          *(v15 + 96) = v155;
          *(v15 + 64) = *(v113 + 208);
          v156 = *(v113 + 160);
          *v15 = *v114;
          *(v15 + 16) = v156;
          *v114 = v380;
          *(v113 + 192) = v476;
          *(v113 + 208) = v508;
          *(v113 + 160) = v412;
          *(v113 + 176) = v444;
          *(v113 + 256) = v604;
          *(v113 + 272) = v636;
          *(v113 + 224) = v540;
          *(v113 + 240) = v572;
          if (*(v15 + 136) > *(v68 + 136))
          {
            v381 = *v68;
            v477 = *(v68 + 48);
            v509 = *(v68 + 64);
            v413 = *(v68 + 16);
            v445 = *(v68 + 32);
            v605 = *(v68 + 112);
            v637 = *(v68 + 128);
            v541 = *(v68 + 80);
            v573 = *(v68 + 96);
            v157 = *(v15 + 48);
            *(v68 + 32) = *(v15 + 32);
            *(v68 + 48) = v157;
            v158 = *(v15 + 128);
            *(v68 + 112) = *(v15 + 112);
            *(v68 + 128) = v158;
            v159 = *(v15 + 96);
            *(v68 + 80) = *(v15 + 80);
            *(v68 + 96) = v159;
            *(v68 + 64) = *(v15 + 64);
            v160 = *(v15 + 16);
            *v68 = *v15;
            *(v68 + 16) = v160;
            *v15 = v381;
            *(v15 + 48) = v477;
            *(v15 + 64) = v509;
            *(v15 + 16) = v413;
            *(v15 + 32) = v445;
            *(v15 + 112) = v605;
            *(v15 + 128) = v637;
            *(v15 + 80) = v541;
            *(v15 + 96) = v573;
          }
        }
      }

      else
      {
        if (v148 > v147)
        {
          v379 = *v68;
          v475 = *(v68 + 48);
          v507 = *(v68 + 64);
          v411 = *(v68 + 16);
          v443 = *(v68 + 32);
          v603 = *(v68 + 112);
          v635 = *(v68 + 128);
          v539 = *(v68 + 80);
          v571 = *(v68 + 96);
          v149 = *(v113 + 192);
          *(v68 + 32) = *(v113 + 176);
          *(v68 + 48) = v149;
          v150 = *(v113 + 272);
          *(v68 + 112) = *(v113 + 256);
          *(v68 + 128) = v150;
          v151 = *(v113 + 240);
          *(v68 + 80) = *(v113 + 224);
          *(v68 + 96) = v151;
          *(v68 + 64) = *(v113 + 208);
          v152 = *(v113 + 160);
          *v68 = *v114;
          *(v68 + 16) = v152;
          goto LABEL_57;
        }

        v382 = *v68;
        v478 = *(v68 + 48);
        v510 = *(v68 + 64);
        v414 = *(v68 + 16);
        v446 = *(v68 + 32);
        v606 = *(v68 + 112);
        v638 = *(v68 + 128);
        v542 = *(v68 + 80);
        v574 = *(v68 + 96);
        v161 = *(v15 + 48);
        *(v68 + 32) = *(v15 + 32);
        *(v68 + 48) = v161;
        v162 = *(v15 + 128);
        *(v68 + 112) = *(v15 + 112);
        *(v68 + 128) = v162;
        v163 = *(v15 + 96);
        *(v68 + 80) = *(v15 + 80);
        *(v68 + 96) = v163;
        *(v68 + 64) = *(v15 + 64);
        v164 = *(v15 + 16);
        *v68 = *v15;
        *(v68 + 16) = v164;
        *v15 = v382;
        *(v15 + 48) = v478;
        *(v15 + 64) = v510;
        *(v15 + 16) = v414;
        *(v15 + 32) = v446;
        *(v15 + 112) = v606;
        *(v15 + 128) = v638;
        *(v15 + 80) = v542;
        *(v15 + 96) = v574;
        if (*(v113 + 280) > *(v15 + 136))
        {
          v379 = *v15;
          v475 = *(v15 + 48);
          v507 = *(v15 + 64);
          v411 = *(v15 + 16);
          v443 = *(v15 + 32);
          v603 = *(v15 + 112);
          v635 = *(v15 + 128);
          v539 = *(v15 + 80);
          v571 = *(v15 + 96);
          v165 = *(v113 + 192);
          *(v15 + 32) = *(v113 + 176);
          *(v15 + 48) = v165;
          v166 = *(v113 + 272);
          *(v15 + 112) = *(v113 + 256);
          *(v15 + 128) = v166;
          v167 = *(v113 + 240);
          *(v15 + 80) = *(v113 + 224);
          *(v15 + 96) = v167;
          *(v15 + 64) = *(v113 + 208);
          v168 = *(v113 + 160);
          *v15 = *v114;
          *(v15 + 16) = v168;
LABEL_57:
          *v114 = v379;
          *(v113 + 192) = v475;
          *(v113 + 208) = v507;
          *(v113 + 160) = v411;
          *(v113 + 176) = v443;
          *(v113 + 256) = v603;
          *(v113 + 272) = v635;
          *(v113 + 224) = v539;
          *(v113 + 240) = v571;
        }
      }

      v383 = *v11;
      v479 = *(v11 + 48);
      v511 = *(v11 + 64);
      v415 = *(v11 + 16);
      v447 = *(v11 + 32);
      v607 = *(v11 + 112);
      v639 = *(v11 + 128);
      v543 = *(v11 + 80);
      v575 = *(v11 + 96);
      *v11 = *v15;
      v169 = *(v15 + 16);
      v170 = *(v15 + 32);
      v171 = *(v15 + 64);
      *(v11 + 48) = *(v15 + 48);
      *(v11 + 64) = v171;
      *(v11 + 16) = v169;
      *(v11 + 32) = v170;
      v172 = *(v15 + 80);
      v173 = *(v15 + 96);
      v174 = *(v15 + 128);
      *(v11 + 112) = *(v15 + 112);
      *(v11 + 128) = v174;
      *(v11 + 80) = v172;
      *(v11 + 96) = v173;
      *v15 = v383;
      *(v15 + 48) = v479;
      *(v15 + 64) = v511;
      *(v15 + 16) = v415;
      *(v15 + 32) = v447;
      *(v15 + 112) = v607;
      *(v15 + 128) = v639;
      *(v15 + 80) = v543;
      *(v15 + 96) = v575;
      goto LABEL_59;
    }

    v24 = *(v11 + 136);
    if (v24 <= *(v15 + 136))
    {
      if (v16 > v24)
      {
        v367 = *v11;
        v463 = *(v11 + 48);
        v495 = *(v11 + 64);
        v399 = *(v11 + 16);
        v431 = *(v11 + 32);
        v591 = *(v11 + 112);
        v623 = *(v11 + 128);
        v527 = *(v11 + 80);
        v559 = *(v11 + 96);
        *v11 = *v8;
        v43 = *(a2 - 8);
        v44 = *(a2 - 7);
        v45 = *(a2 - 5);
        *(v11 + 48) = *(a2 - 6);
        *(v11 + 64) = v45;
        *(v11 + 16) = v43;
        *(v11 + 32) = v44;
        v46 = *(a2 - 4);
        v47 = *(a2 - 3);
        v48 = *(a2 - 1);
        *(v11 + 112) = *(a2 - 2);
        *(v11 + 128) = v48;
        *(v11 + 80) = v46;
        *(v11 + 96) = v47;
        *v8 = v367;
        *(a2 - 6) = v463;
        *(a2 - 5) = v495;
        *(a2 - 8) = v399;
        *(a2 - 7) = v431;
        *(a2 - 2) = v591;
        *(a2 - 1) = v623;
        *(a2 - 4) = v527;
        *(a2 - 3) = v559;
        if (*(v11 + 136) > *(v15 + 136))
        {
          v368 = *v15;
          v464 = *(v15 + 48);
          v496 = *(v15 + 64);
          v400 = *(v15 + 16);
          v432 = *(v15 + 32);
          v592 = *(v15 + 112);
          v624 = *(v15 + 128);
          v528 = *(v15 + 80);
          v560 = *(v15 + 96);
          *v15 = *v11;
          v49 = *(v11 + 16);
          v50 = *(v11 + 32);
          v51 = *(v11 + 64);
          *(v15 + 48) = *(v11 + 48);
          *(v15 + 64) = v51;
          *(v15 + 16) = v49;
          *(v15 + 32) = v50;
          v52 = *(v11 + 80);
          v53 = *(v11 + 96);
          v54 = *(v11 + 128);
          *(v15 + 112) = *(v11 + 112);
          *(v15 + 128) = v54;
          *(v15 + 80) = v52;
          *(v15 + 96) = v53;
          *v11 = v368;
          *(v11 + 48) = v464;
          *(v11 + 64) = v496;
          *(v11 + 16) = v400;
          *(v11 + 32) = v432;
          *(v11 + 112) = v592;
          *(v11 + 128) = v624;
          *(v11 + 80) = v528;
          *(v11 + 96) = v560;
        }
      }

      goto LABEL_59;
    }

    if (v16 > v24)
    {
      v364 = *v15;
      v460 = *(v15 + 48);
      v492 = *(v15 + 64);
      v396 = *(v15 + 16);
      v428 = *(v15 + 32);
      v588 = *(v15 + 112);
      v620 = *(v15 + 128);
      v524 = *(v15 + 80);
      v556 = *(v15 + 96);
      *v15 = *v8;
      v25 = *(a2 - 8);
      v26 = *(a2 - 7);
      v27 = *(a2 - 5);
      *(v15 + 48) = *(a2 - 6);
      *(v15 + 64) = v27;
      *(v15 + 16) = v25;
      *(v15 + 32) = v26;
      v28 = *(a2 - 4);
      v29 = *(a2 - 3);
      v30 = *(a2 - 1);
      *(v15 + 112) = *(a2 - 2);
      *(v15 + 128) = v30;
      *(v15 + 80) = v28;
      *(v15 + 96) = v29;
LABEL_36:
      *v8 = v364;
      *(a2 - 6) = v460;
      *(a2 - 5) = v492;
      *(a2 - 8) = v396;
      *(a2 - 7) = v428;
      *(a2 - 2) = v588;
      *(a2 - 1) = v620;
      *(a2 - 4) = v524;
      *(a2 - 3) = v556;
      goto LABEL_59;
    }

    v373 = *v15;
    v469 = *(v15 + 48);
    v501 = *(v15 + 64);
    v405 = *(v15 + 16);
    v437 = *(v15 + 32);
    v597 = *(v15 + 112);
    v629 = *(v15 + 128);
    v533 = *(v15 + 80);
    v565 = *(v15 + 96);
    *v15 = *v11;
    v89 = *(v11 + 16);
    v90 = *(v11 + 32);
    v91 = *(v11 + 64);
    *(v15 + 48) = *(v11 + 48);
    *(v15 + 64) = v91;
    *(v15 + 16) = v89;
    *(v15 + 32) = v90;
    v92 = *(v11 + 80);
    v93 = *(v11 + 96);
    v94 = *(v11 + 128);
    *(v15 + 112) = *(v11 + 112);
    *(v15 + 128) = v94;
    *(v15 + 80) = v92;
    *(v15 + 96) = v93;
    *v11 = v373;
    *(v11 + 48) = v469;
    *(v11 + 64) = v501;
    *(v11 + 16) = v405;
    *(v11 + 32) = v437;
    *(v11 + 112) = v597;
    *(v11 + 128) = v629;
    *(v11 + 80) = v533;
    *(v11 + 96) = v565;
    if (*(a2 - 2) > *(v11 + 136))
    {
      v364 = *v11;
      v460 = *(v11 + 48);
      v492 = *(v11 + 64);
      v396 = *(v11 + 16);
      v428 = *(v11 + 32);
      v588 = *(v11 + 112);
      v620 = *(v11 + 128);
      v524 = *(v11 + 80);
      v556 = *(v11 + 96);
      *v11 = *v8;
      v95 = *(a2 - 8);
      v96 = *(a2 - 7);
      v97 = *(a2 - 5);
      *(v11 + 48) = *(a2 - 6);
      *(v11 + 64) = v97;
      *(v11 + 16) = v95;
      *(v11 + 32) = v96;
      v98 = *(a2 - 4);
      v99 = *(a2 - 3);
      v100 = *(a2 - 1);
      *(v11 + 112) = *(a2 - 2);
      *(v11 + 128) = v100;
      *(v11 + 80) = v98;
      *(v11 + 96) = v99;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v175 = *(v11 + 136);
LABEL_62:
      v176 = 0;
      v336 = *v11;
      v345 = *(v11 + 48);
      v348 = *(v11 + 64);
      v339 = *(v11 + 16);
      v342 = *(v11 + 32);
      v360 = *(v11 + 128);
      v354 = *(v11 + 96);
      v357 = *(v11 + 112);
      v351 = *(v11 + 80);
      v177 = *(v11 + 140);
      do
      {
        v178 = *(v11 + v176 + 280);
        v176 += 144;
      }

      while (v178 > v175);
      v179 = v11 + v176;
      v180 = a2;
      if (v176 == 144)
      {
        v183 = a2;
        while (v179 < v183)
        {
          v181 = v183 - 36;
          v184 = *(v183 - 2);
          v183 -= 36;
          if (v184 > v175)
          {
            goto LABEL_72;
          }
        }

        v181 = v183;
      }

      else
      {
        do
        {
          v181 = v180 - 36;
          v182 = *(v180 - 2);
          v180 -= 36;
        }

        while (v182 <= v175);
      }

LABEL_72:
      v11 = v179;
      if (v179 < v181)
      {
        v185 = v181;
        do
        {
          v384 = *v11;
          v480 = *(v11 + 48);
          v512 = *(v11 + 64);
          v416 = *(v11 + 16);
          v448 = *(v11 + 32);
          v608 = *(v11 + 112);
          v640 = *(v11 + 128);
          v544 = *(v11 + 80);
          v576 = *(v11 + 96);
          *v11 = *v185;
          v186 = *(v185 + 1);
          v187 = *(v185 + 2);
          v188 = *(v185 + 4);
          *(v11 + 48) = *(v185 + 3);
          *(v11 + 64) = v188;
          *(v11 + 16) = v186;
          *(v11 + 32) = v187;
          v189 = *(v185 + 5);
          v190 = *(v185 + 6);
          v191 = *(v185 + 8);
          *(v11 + 112) = *(v185 + 7);
          *(v11 + 128) = v191;
          *(v11 + 80) = v189;
          *(v11 + 96) = v190;
          *v185 = v384;
          *(v185 + 3) = v480;
          *(v185 + 4) = v512;
          *(v185 + 1) = v416;
          *(v185 + 2) = v448;
          *(v185 + 7) = v608;
          *(v185 + 8) = v640;
          *(v185 + 5) = v544;
          *(v185 + 6) = v576;
          do
          {
            v192 = *(v11 + 280);
            v11 += 144;
          }

          while (v192 > v175);
          do
          {
            v193 = *(v185 - 2);
            v185 -= 36;
          }

          while (v193 <= v175);
        }

        while (v11 < v185);
      }

      v194 = (v11 - 144);
      if (v11 - 144 != a1)
      {
        *a1 = *v194;
        v195 = *(v11 - 128);
        v196 = *(v11 - 112);
        v197 = *(v11 - 80);
        *(a1 + 48) = *(v11 - 96);
        *(a1 + 64) = v197;
        *(a1 + 16) = v195;
        *(a1 + 32) = v196;
        v198 = *(v11 - 64);
        v199 = *(v11 - 48);
        v200 = *(v11 - 16);
        *(a1 + 112) = *(v11 - 32);
        *(a1 + 128) = v200;
        *(a1 + 80) = v198;
        *(a1 + 96) = v199;
      }

      *v194 = v336;
      *(v11 - 96) = v345;
      *(v11 - 80) = v348;
      *(v11 - 128) = v339;
      *(v11 - 112) = v342;
      *(v11 - 16) = v360;
      *(v11 - 48) = v354;
      *(v11 - 32) = v357;
      *(v11 - 64) = v351;
      *(v11 - 8) = v175;
      *(v11 - 4) = v177;
      if (v179 < v181)
      {
        goto LABEL_83;
      }

      v201 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::$_3 &,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore *>(a1, v11 - 144);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::$_3 &,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore *>(v11, a2))
      {
        a2 = (v11 - 144);
        if (!v201)
        {
          goto LABEL_2;
        }

        goto LABEL_181;
      }

      if (!v201)
      {
LABEL_83:
        std::__introsort<std::_ClassicAlgPolicy,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::$_3 &,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore *,false>(a1, v11 - 144, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v175 = *(v11 + 136);
      if (*(v11 - 8) > v175)
      {
        goto LABEL_62;
      }

      v337 = *v11;
      v346 = *(v11 + 48);
      v349 = *(v11 + 64);
      v340 = *(v11 + 16);
      v343 = *(v11 + 32);
      v361 = *(v11 + 128);
      v355 = *(v11 + 96);
      v358 = *(v11 + 112);
      v352 = *(v11 + 80);
      if (v175 <= *(a2 - 2))
      {
        v204 = v11 + 144;
        do
        {
          v11 = v204;
          if (v204 >= a2)
          {
            break;
          }

          v205 = *(v204 + 136);
          v204 += 144;
        }

        while (v175 <= v205);
      }

      else
      {
        v202 = v11;
        do
        {
          v11 = v202 + 144;
          v203 = *(v202 + 280);
          v202 += 144;
        }

        while (v175 <= v203);
      }

      v206 = a2;
      if (v11 < a2)
      {
        v207 = a2;
        do
        {
          v206 = v207 - 36;
          v208 = *(v207 - 2);
          v207 -= 36;
        }

        while (v175 > v208);
      }

      v209 = *(a1 + 140);
      while (v11 < v206)
      {
        v385 = *v11;
        v481 = *(v11 + 48);
        v513 = *(v11 + 64);
        v417 = *(v11 + 16);
        v449 = *(v11 + 32);
        v609 = *(v11 + 112);
        v641 = *(v11 + 128);
        v545 = *(v11 + 80);
        v577 = *(v11 + 96);
        *v11 = *v206;
        v210 = *(v206 + 1);
        v211 = *(v206 + 2);
        v212 = *(v206 + 4);
        *(v11 + 48) = *(v206 + 3);
        *(v11 + 64) = v212;
        *(v11 + 16) = v210;
        *(v11 + 32) = v211;
        v213 = *(v206 + 5);
        v214 = *(v206 + 6);
        v215 = *(v206 + 8);
        *(v11 + 112) = *(v206 + 7);
        *(v11 + 128) = v215;
        *(v11 + 80) = v213;
        *(v11 + 96) = v214;
        *v206 = v385;
        *(v206 + 3) = v481;
        *(v206 + 4) = v513;
        *(v206 + 1) = v417;
        *(v206 + 2) = v449;
        *(v206 + 7) = v609;
        *(v206 + 8) = v641;
        *(v206 + 5) = v545;
        *(v206 + 6) = v577;
        do
        {
          v216 = *(v11 + 280);
          v11 += 144;
        }

        while (v175 <= v216);
        do
        {
          v217 = *(v206 - 2);
          v206 -= 36;
        }

        while (v175 > v217);
      }

      v218 = (v11 - 144);
      if (v11 - 144 != a1)
      {
        *a1 = *v218;
        v219 = *(v11 - 128);
        v220 = *(v11 - 112);
        v221 = *(v11 - 80);
        *(a1 + 48) = *(v11 - 96);
        *(a1 + 64) = v221;
        *(a1 + 16) = v219;
        *(a1 + 32) = v220;
        v222 = *(v11 - 64);
        v223 = *(v11 - 48);
        v224 = *(v11 - 16);
        *(a1 + 112) = *(v11 - 32);
        *(a1 + 128) = v224;
        *(a1 + 80) = v222;
        *(a1 + 96) = v223;
      }

      a4 = 0;
      *v218 = v337;
      *(v11 - 96) = v346;
      *(v11 - 80) = v349;
      *(v11 - 128) = v340;
      *(v11 - 112) = v343;
      *(v11 - 16) = v361;
      *(v11 - 48) = v355;
      *(v11 - 32) = v358;
      *(v11 - 64) = v352;
      *(v11 - 8) = v175;
      *(v11 - 4) = v209;
    }
  }

  v240 = *MEMORY[0x277D85DE8];

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::$_3 &,ou3dod::OU3DSparseSSDetector::NonMaximumSuppression(void)::BoxHeadingClassScore *,0>(v11, (v11 + 144), (v11 + 288), a2 - 9);
}