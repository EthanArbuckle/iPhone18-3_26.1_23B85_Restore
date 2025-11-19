void std::vector<std::vector<float>>::resize(size_t *a1, unint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    std::vector<std::vector<float>>::__append(a1, v7, a3);
  }

  else if (!v6)
  {
    v8 = *a1 + 24 * a2;
    if (v4 != v8)
    {
      v9 = a1[1];
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v4 - 16) = v10;
          operator delete(v10);
        }

        v4 = v9;
      }

      while (v9 != v8);
    }

    a1[1] = v8;
  }
}

void sizeRevision(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    while (1)
    {
      if ([*(v1 + 128) isEqualToString:@"Stove"])
      {
        box3dToCentroidSizeAngle(v1, v10);
        v10[0][2].i32[1] = 1036831949;
        centroidSizeAngleToBox3d(v10, 1, v9);
        goto LABEL_8;
      }

      if ([*(v1 + 128) isEqualToString:@"Sink"])
      {
        break;
      }

      if ([*(v1 + 128) isEqualToString:@"Screen"])
      {
        box3dToCentroidSizeAngle(v1, v10);
        v10[0][2].i32[0] = 1036831949;
        centroidSizeAngleToBox3d(v10, 1, v9);
LABEL_8:
        v3 = v9[0];
        v4 = v9[1];
        v5 = v9[3];
        *(v1 + 32) = v9[2];
        *(v1 + 48) = v5;
        *v1 = v3;
        *(v1 + 16) = v4;
        v6 = v9[4];
        v7 = v9[5];
        v8 = v9[7];
        *(v1 + 96) = v9[6];
        *(v1 + 112) = v8;
        *(v1 + 64) = v6;
        *(v1 + 80) = v7;
        if (v10[0])
        {
          v10[1] = v10[0];
          operator delete(v10[0]);
        }
      }

      v1 += 224;
      if (v1 == v2)
      {
        return;
      }
    }

    box3dToCentroidSizeAngle(v1, v10);
    v10[0][2].i32[1] = 1050253722;
    centroidSizeAngleToBox3d(v10, 1, v9);
    goto LABEL_8;
  }
}

void sub_25D24C690(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 88);
  if (v3)
  {
    *(v1 - 80) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::swap[abi:ne200100]<OUBox3d>(uint64_t a1, __n128 *a2)
{
  v3 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v3;
  v4 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v6;
  v7 = *(a1 + 128);
  *(a1 + 128) = 0;
  v12 = v7;
  v13 = *(a1 + 136);
  v8 = *(a1 + 160);
  v14 = *(a1 + 144);
  *v15 = v8;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  v9 = *(a1 + 184);
  v16 = *(a1 + 176);
  __p = v9;
  v18 = *(a1 + 192);
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  v10 = *(a1 + 208);
  *(a1 + 208) = 0;
  v19 = v10;
  v20 = *(a1 + 216);
  OUBox3d::operator=(a1, a2);
  OUBox3d::operator=(a2, v11);

  if (__p)
  {
    operator delete(__p);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }
}

__n128 *std::vector<OUBox3d>::erase(uint64_t a1, __n128 *a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<OUBox3d *,OUBox3d *,OUBox3d *>(&v7, a3, *(a1 + 8), a2);
    std::vector<OUBox3d>::__base_destruct_at_end[abi:ne200100](a1, v5);
  }

  return a2;
}

void sub_25D24CFC0(_Unwind_Exception *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *__p, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char *__pa, char *a16, OUBox3d *a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  a21 = &a25;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&a21);
  if (__pa)
  {
    a16 = __pa;
    operator delete(__pa);
  }

  __pa = &a18;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__pa);
  _Unwind_Resume(a1);
}

void sub_25D24DD48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char **a16, char **a17, uint64_t a18, char *a19, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    a17 = a16;
    operator delete(a16);
  }

  a16 = &a19;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&a16);
  a19 = &a22;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&a19);

  _Unwind_Resume(a1);
}

void sub_25D24E154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a41);

  _Unwind_Resume(a1);
}

void sub_25D24E54C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __p = (v20 - 136);
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = (v20 - 112);
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_25D250424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a35);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&__p);
  __p = &a26;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a29;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a68;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(&a71, a72);
  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(&STACK[0x208], STACK[0x210]);
  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(&STACK[0x220], STACK[0x228]);
  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(v72 - 248, *(v72 - 240));
  __p = (v72 - 224);
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = (v72 - 200);
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_25D250AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void OU3DObjectRGBSizeRefinerParams::OU3DObjectRGBSizeRefinerParams(OU3DObjectRGBSizeRefinerParams *this, const OU3DObjectRGBSizeRefinerParams *a2)
{
  v4 = *a2;
  *(this + 12) = *(a2 + 12);
  *this = v4;
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = *(a2 + 2);
    *(this + 6) = *(a2 + 6);
    *(this + 2) = v5;
  }

  v6 = *(a2 + 56);
  *(this + 68) = *(a2 + 68);
  *(this + 56) = v6;
  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v7 = *(a2 + 88);
    *(this + 13) = *(a2 + 13);
    *(this + 88) = v7;
  }

  *(this + 14) = *(a2 + 14);
}

void sub_25D250B8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

uint64_t OUBox3d::OUBox3d(uint64_t a1, __int128 *a2, id *a3, void *a4, float a5)
{
  v9 = a4;
  v10 = a2[3];
  v12 = *a2;
  v11 = a2[1];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v10;
  *a1 = v12;
  *(a1 + 16) = v11;
  v13 = a2[7];
  v15 = a2[4];
  v14 = a2[5];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v13;
  *(a1 + 64) = v15;
  *(a1 + 80) = v14;
  *(a1 + 128) = *a3;
  *(a1 + 136) = a5;
  *(a1 + 144) = [v9 copy];
  *(a1 + 152) = @"unknown";
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = -1;

  return a1;
}

uint64_t std::vector<OUBox3d>::__init_with_size[abi:ne200100]<OUBox3d const*,OUBox3d const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<OUBox3d>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25D250CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<OUBox3d>::__assign_with_size[abi:ne200100]<OUBox3d*,OUBox3d*>(uint64_t *a1, __int128 *a2, OUBox3d *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 5) < a4)
  {
    std::vector<OUBox3d>::__vdeallocate(a1);
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

      std::vector<OUBox3d>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v11 - v8) >> 5) >= a4)
  {
    while (v6 != a3)
    {
      OUBox3d::operator=(v8, v6);
      v6 += 14;
      v8 += 224;
    }

    std::vector<OUBox3d>::__base_destruct_at_end[abi:ne200100](a1, v8);
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        OUBox3d::operator=(v8, v14);
        v14 += 14;
        v8 += 224;
        v13 -= 224;
      }

      while (v13);
      v11 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<OUBox3d>,OUBox3d*,OUBox3d*,OUBox3d*>(a1, &v12[v6], a3, v11);
  }
}

char *std::vector<int>::__insert_with_size[abi:ne200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
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

uint64_t std::__introsort<std::_ClassicAlgPolicy,withinClassNMS(std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&,std::vector<OUBox3d> const&,float,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<int,std::allocator<int>> *,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>> *,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>>,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>>)::$_0 &,unsigned long *,false>(uint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
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
        v92 = *(a2 - 1);
        v93 = *v10;
        if ((*(**a3 + 4 * v92) * *(*a3[1] + 4 * v92)) > (*(**a3 + 4 * *v10) * *(*a3[1] + 4 * *v10)))
        {
          *v10 = v92;
          *(a2 - 1) = v93;
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

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,withinClassNMS(std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&,std::vector<OUBox3d> const&,float,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<int,std::allocator<int>> *,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>> *,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>>,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>>)::$_0 &,unsigned long *,0>(v10, v10 + 1, v10 + 2, a2 - 1, a3);
    }

    if (v11 == 5)
    {
      result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,withinClassNMS(std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&,std::vector<OUBox3d> const&,float,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<int,std::allocator<int>> *,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>> *,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>>,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>>)::$_0 &,unsigned long *,0>(v10, v10 + 1, v10 + 2, v10 + 3, a3);
      v80 = *(a2 - 1);
      v81 = v10[3];
      v82 = a3[1];
      v83 = **a3;
      v84 = *v82;
      if ((*(v83 + 4 * v80) * *(*v82 + 4 * v80)) <= (*(v83 + 4 * v81) * *(*v82 + 4 * v81)))
      {
        return result;
      }

      v10[3] = v80;
      *(a2 - 1) = v81;
      v86 = v10[2];
      v85 = v10[3];
      v87 = *(v83 + 4 * v85) * *(v84 + 4 * v85);
      if (v87 <= (*(v83 + 4 * v86) * *(v84 + 4 * v86)))
      {
        return result;
      }

      v88 = v10[1];
      v89 = *(v83 + 4 * v88);
      v10[2] = v85;
      v10[3] = v86;
      if (v87 <= (v89 * *(v84 + 4 * v88)))
      {
        return result;
      }

      v90 = *v10;
      v91 = *(v83 + 4 * *v10);
      v10[1] = v85;
      v10[2] = v88;
      if (v87 <= (v91 * *(v84 + 4 * v90)))
      {
        return result;
      }

      *v10 = v85;
      goto LABEL_162;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v102 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v103 = 0;
            v104 = **a3;
            v105 = *a3[1];
            v106 = v10;
            do
            {
              v108 = *v106;
              v107 = v106[1];
              v106 = v102;
              v109 = *(v104 + 4 * v107) * *(v105 + 4 * v107);
              if (v109 > (*(v104 + 4 * v108) * *(v105 + 4 * v108)))
              {
                v110 = v103;
                while (1)
                {
                  *(v10 + v110 + 8) = v108;
                  if (!v110)
                  {
                    break;
                  }

                  v108 = *(v10 + v110 - 8);
                  v110 -= 8;
                  if (v109 <= (*(v104 + 4 * v108) * *(v105 + 4 * v108)))
                  {
                    v111 = (v10 + v110 + 8);
                    goto LABEL_126;
                  }
                }

                v111 = v10;
LABEL_126:
                *v111 = v107;
              }

              v102 = v106 + 1;
              v103 += 8;
            }

            while (v106 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v152 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v153 = **a3;
          v154 = *a3[1];
          do
          {
            v156 = *v9;
            v155 = v9[1];
            v9 = v152;
            v157 = *(v153 + 4 * v155) * *(v154 + 4 * v155);
            if (v157 > (*(v153 + 4 * v156) * *(v154 + 4 * v156)))
            {
              do
              {
                *v152 = v156;
                v156 = *(v152 - 2);
                --v152;
              }

              while (v157 > (*(v153 + 4 * v156) * *(v154 + 4 * v156)));
              *v152 = v155;
            }

            v152 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v112 = (v11 - 2) >> 1;
        v113 = *a3;
        v114 = a3[1];
        v115 = v112;
        do
        {
          v116 = v115;
          if (v112 >= v115)
          {
            v117 = (2 * v115) | 1;
            v118 = &v10[v117];
            v119 = 2 * v115 + 2;
            v120 = *v113;
            if (v119 >= v11)
            {
              v121 = *v114;
            }

            else
            {
              v121 = *v114;
              if ((*(v120 + 4 * *v118) * *(*v114 + 4 * *v118)) > (*(v120 + 4 * v118[1]) * *(*v114 + 4 * v118[1])))
              {
                ++v118;
                v117 = 2 * v116 + 2;
              }
            }

            v122 = &v10[v116];
            v123 = *v118;
            v124 = *v122;
            v125 = *(v120 + 4 * *v122) * *(v121 + 4 * *v122);
            if ((*(v120 + 4 * *v118) * *(v121 + 4 * *v118)) <= v125)
            {
              do
              {
                v126 = v118;
                *v122 = v123;
                if (v112 < v117)
                {
                  break;
                }

                v127 = 2 * v117;
                v117 = (2 * v117) | 1;
                v118 = &v10[v117];
                v128 = v127 + 2;
                if (v128 < v11 && (*(v120 + 4 * *v118) * *(v121 + 4 * *v118)) > (*(v120 + 4 * v118[1]) * *(v121 + 4 * v118[1])))
                {
                  ++v118;
                  v117 = v128;
                }

                v123 = *v118;
                v122 = v126;
              }

              while ((*(v120 + 4 * *v118) * *(v121 + 4 * *v118)) <= v125);
              *v126 = v124;
            }
          }

          v115 = v116 - 1;
        }

        while (v116);
        do
        {
          v129 = 0;
          v130 = *v10;
          v131 = *a3;
          v132 = a3[1];
          v133 = v10;
          do
          {
            v134 = v133;
            v135 = &v133[v129];
            v133 = v135 + 1;
            v136 = 2 * v129;
            result = (2 * v129) | 1;
            v129 = result;
            v137 = v136 + 2;
            if (v137 < v11)
            {
              v139 = v135[2];
              v138 = v135 + 2;
              result = v139;
              if ((*(*v131 + 4 * *(v138 - 1)) * *(*v132 + 4 * *(v138 - 1))) > (*(*v131 + 4 * v139) * *(*v132 + 4 * v139)))
              {
                v133 = v138;
                v129 = v137;
              }
            }

            *v134 = *v133;
          }

          while (v129 <= ((v11 - 2) >> 1));
          if (v133 == --a2)
          {
            *v133 = v130;
          }

          else
          {
            *v133 = *a2;
            *a2 = v130;
            v140 = (v133 - v10 + 8) >> 3;
            v141 = v140 < 2;
            v142 = v140 - 2;
            if (!v141)
            {
              v143 = v142 >> 1;
              v144 = &v10[v143];
              v145 = *v144;
              v146 = *v133;
              v147 = *v131;
              v148 = *v132;
              v149 = *(v147 + 4 * *v133) * *(v148 + 4 * *v133);
              if ((*(v147 + 4 * *v144) * *(v148 + 4 * *v144)) > v149)
              {
                do
                {
                  v150 = v144;
                  *v133 = v145;
                  if (!v143)
                  {
                    break;
                  }

                  v143 = (v143 - 1) >> 1;
                  v144 = &v10[v143];
                  v145 = *v144;
                  v133 = v150;
                }

                while ((*(v147 + 4 * *v144) * *(v148 + 4 * *v144)) > v149);
                *v150 = v146;
              }
            }
          }

          v141 = v11-- <= 2;
        }

        while (!v141);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = **a3;
    v15 = *(a2 - 1);
    v16 = *a3[1];
    v17 = *(v14 + 4 * v15) * *(v16 + 4 * v15);
    if (v11 >= 0x81)
    {
      v18 = *v12;
      v19 = *v10;
      v20 = *(v14 + 4 * *v12) * *(v16 + 4 * *v12);
      v21 = *(v14 + 4 * *v10) * *(v16 + 4 * *v10);
      if (v20 <= v21)
      {
        if (v17 > v20)
        {
          *v12 = v15;
          *(a2 - 1) = v18;
          v26 = *v10;
          if ((*(v14 + 4 * *v12) * *(v16 + 4 * *v12)) > (*(v14 + 4 * *v10) * *(v16 + 4 * *v10)))
          {
            *v10 = *v12;
            *v12 = v26;
          }
        }
      }

      else
      {
        if (v17 > v20)
        {
          *v10 = v15;
          goto LABEL_27;
        }

        *v10 = v18;
        *v12 = v19;
        v28 = *(a2 - 1);
        if ((*(v14 + 4 * v28) * *(v16 + 4 * v28)) > v21)
        {
          *v12 = v28;
LABEL_27:
          *(a2 - 1) = v19;
        }
      }

      v29 = v12 - 1;
      v30 = *(v12 - 1);
      v31 = v10[1];
      v32 = *(v14 + 4 * v30) * *(v16 + 4 * v30);
      v33 = *(a2 - 2);
      v34 = *(v14 + 4 * v31) * *(v16 + 4 * v31);
      v35 = *(v14 + 4 * v33) * *(v16 + 4 * v33);
      if (v32 <= v34)
      {
        if (v35 > v32)
        {
          *v29 = v33;
          *(a2 - 2) = v30;
          v36 = v10[1];
          if ((*(v14 + 4 * *v29) * *(v16 + 4 * *v29)) > (*(v14 + 4 * v36) * *(v16 + 4 * v36)))
          {
            v10[1] = *v29;
            *v29 = v36;
          }
        }
      }

      else
      {
        if (v35 > v32)
        {
          v10[1] = v33;
          goto LABEL_39;
        }

        v10[1] = v30;
        *v29 = v31;
        v38 = *(a2 - 2);
        if ((*(v14 + 4 * v38) * *(v16 + 4 * v38)) > v34)
        {
          *v29 = v38;
LABEL_39:
          *(a2 - 2) = v31;
        }
      }

      v41 = v12[1];
      v39 = v12 + 1;
      v40 = v41;
      v42 = v10[2];
      v43 = *(v14 + 4 * v41) * *(v16 + 4 * v41);
      v44 = *(a2 - 3);
      v45 = *(v14 + 4 * v42) * *(v16 + 4 * v42);
      v46 = *(v14 + 4 * v44) * *(v16 + 4 * v44);
      if (v43 <= v45)
      {
        if (v46 > v43)
        {
          *v39 = v44;
          *(a2 - 3) = v40;
          v47 = v10[2];
          if ((*(v14 + 4 * *v39) * *(v16 + 4 * *v39)) > (*(v14 + 4 * v47) * *(v16 + 4 * v47)))
          {
            v10[2] = *v39;
            *v39 = v47;
          }
        }
      }

      else
      {
        if (v46 > v43)
        {
          v10[2] = v44;
          goto LABEL_48;
        }

        v10[2] = v40;
        *v39 = v42;
        v48 = *(a2 - 3);
        if ((*(v14 + 4 * v48) * *(v16 + 4 * v48)) > v45)
        {
          *v39 = v48;
LABEL_48:
          *(a2 - 3) = v42;
        }
      }

      v49 = *v13;
      v50 = *v29;
      v51 = *(v14 + 4 * *v13) * *(v16 + 4 * *v13);
      v52 = *v39;
      v53 = *(v14 + 4 * *v29) * *(v16 + 4 * *v29);
      v54 = *(v14 + 4 * *v39) * *(v16 + 4 * *v39);
      if (v51 <= v53)
      {
        if (v54 <= v51)
        {
          goto LABEL_56;
        }

        *v13 = v52;
        *v39 = v49;
        v39 = v13;
        v49 = v50;
        if (v54 <= v53)
        {
          v49 = v52;
          goto LABEL_56;
        }
      }

      else if (v54 <= v51)
      {
        *v29 = v49;
        *v13 = v50;
        v29 = v13;
        v49 = v52;
        if (v54 <= v53)
        {
          v49 = v50;
LABEL_56:
          v55 = *v10;
          *v10 = v49;
          *v13 = v55;
          goto LABEL_57;
        }
      }

      *v29 = v52;
      *v39 = v50;
      goto LABEL_56;
    }

    v22 = *v10;
    v23 = *v13;
    v24 = *(v14 + 4 * *v10) * *(v16 + 4 * *v10);
    v25 = *(v14 + 4 * *v13) * *(v16 + 4 * *v13);
    if (v24 <= v25)
    {
      if (v17 > v24)
      {
        *v10 = v15;
        *(a2 - 1) = v22;
        v27 = *v13;
        if ((*(v14 + 4 * *v10) * *(v16 + 4 * *v10)) > (*(v14 + 4 * *v13) * *(v16 + 4 * *v13)))
        {
          *v13 = *v10;
          *v10 = v27;
        }
      }

      goto LABEL_57;
    }

    if (v17 > v24)
    {
      *v13 = v15;
LABEL_36:
      *(a2 - 1) = v23;
      goto LABEL_57;
    }

    *v13 = v22;
    *v10 = v23;
    v37 = *(a2 - 1);
    if ((*(v14 + 4 * v37) * *(v16 + 4 * v37)) > v25)
    {
      *v10 = v37;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v56 = *v10;
    if (a5)
    {
      v57 = *(v14 + 4 * v56) * *(v16 + 4 * v56);
LABEL_60:
      v58 = 0;
      do
      {
        v59 = v10[++v58];
      }

      while ((*(v14 + 4 * v59) * *(v16 + 4 * v59)) > v57);
      v60 = &v10[v58];
      v61 = a2;
      if (v58 == 1)
      {
        v61 = a2;
        do
        {
          if (v60 >= v61)
          {
            break;
          }

          v63 = *--v61;
        }

        while ((*(v14 + 4 * v63) * *(v16 + 4 * v63)) <= v57);
      }

      else
      {
        do
        {
          v62 = *--v61;
        }

        while ((*(v14 + 4 * v62) * *(v16 + 4 * v62)) <= v57);
      }

      if (v60 >= v61)
      {
        v69 = v60 - 1;
      }

      else
      {
        v64 = *v61;
        v65 = &v10[v58];
        v66 = v61;
        do
        {
          *v65 = v64;
          *v66 = v59;
          do
          {
            v67 = v65[1];
            ++v65;
            v59 = v67;
          }

          while ((*(v14 + 4 * v67) * *(v16 + 4 * v67)) > v57);
          do
          {
            v68 = *--v66;
            v64 = v68;
          }

          while ((*(v14 + 4 * v68) * *(v16 + 4 * v68)) <= v57);
        }

        while (v65 < v66);
        v69 = v65 - 1;
      }

      if (v69 != v10)
      {
        *v10 = *v69;
      }

      *v69 = v56;
      if (v60 < v61)
      {
        goto LABEL_81;
      }

      v70 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,withinClassNMS(std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&,std::vector<OUBox3d> const&,float,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<int,std::allocator<int>> *,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>> *,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>>,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>>)::$_0 &,unsigned long *>(v10, v69, a3);
      v10 = v69 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,withinClassNMS(std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&,std::vector<OUBox3d> const&,float,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<int,std::allocator<int>> *,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>> *,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>>,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>>)::$_0 &,unsigned long *>(v69 + 1, a2, a3);
      if (result)
      {
        a2 = v69;
        if (!v70)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v70)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,withinClassNMS(std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&,std::vector<OUBox3d> const&,float,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<int,std::allocator<int>> *,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>> *,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>>,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>>)::$_0 &,unsigned long *,false>(v9, v69, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v69 + 1;
      }
    }

    else
    {
      v57 = *(v14 + 4 * v56) * *(v16 + 4 * v56);
      if ((*(v14 + 4 * *(v10 - 1)) * *(v16 + 4 * *(v10 - 1))) > v57)
      {
        goto LABEL_60;
      }

      if (v57 <= (*(v14 + 4 * *(a2 - 1)) * *(v16 + 4 * *(a2 - 1))))
      {
        v72 = v10 + 1;
        do
        {
          v10 = v72;
          if (v72 >= a2)
          {
            break;
          }

          ++v72;
        }

        while (v57 <= (*(v14 + 4 * *v10) * *(v16 + 4 * *v10)));
      }

      else
      {
        do
        {
          v71 = v10[1];
          ++v10;
        }

        while (v57 <= (*(v14 + 4 * v71) * *(v16 + 4 * v71)));
      }

      v73 = a2;
      if (v10 < a2)
      {
        v73 = a2;
        do
        {
          v74 = *--v73;
        }

        while (v57 > (*(v14 + 4 * v74) * *(v16 + 4 * v74)));
      }

      if (v10 < v73)
      {
        v75 = *v10;
        v76 = *v73;
        do
        {
          *v10 = v76;
          *v73 = v75;
          do
          {
            v77 = v10[1];
            ++v10;
            v75 = v77;
          }

          while (v57 <= (*(v14 + 4 * v77) * *(v16 + 4 * v77)));
          do
          {
            v78 = *--v73;
            v76 = v78;
          }

          while (v57 > (*(v14 + 4 * v78) * *(v16 + 4 * v78)));
        }

        while (v10 < v73);
      }

      v79 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v79;
      }

      a5 = 0;
      *v79 = v56;
    }
  }

  v94 = *v10;
  v95 = v10[1];
  v96 = **a3;
  v97 = *a3[1];
  v98 = *(v96 + 4 * v95) * *(v97 + 4 * v95);
  v99 = *(a2 - 1);
  v100 = *(v96 + 4 * *v10) * *(v97 + 4 * *v10);
  v101 = *(v96 + 4 * v99) * *(v97 + 4 * v99);
  if (v98 <= v100)
  {
    if (v101 <= v98)
    {
      return result;
    }

    v10[1] = v99;
    *(a2 - 1) = v95;
    v90 = *v10;
    v151 = v10[1];
    if ((*(v96 + 4 * v151) * *(v97 + 4 * v151)) <= (*(v96 + 4 * *v10) * *(v97 + 4 * *v10)))
    {
      return result;
    }

    *v10 = v151;
LABEL_162:
    v10[1] = v90;
    return result;
  }

  if (v101 <= v98)
  {
    *v10 = v95;
    v10[1] = v94;
    v158 = *(a2 - 1);
    if ((*(v96 + 4 * v158) * *(v97 + 4 * v158)) <= v100)
    {
      return result;
    }

    v10[1] = v158;
  }

  else
  {
    *v10 = v99;
  }

  *(a2 - 1) = v94;
  return result;
}

uint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,withinClassNMS(std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&,std::vector<OUBox3d> const&,float,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<int,std::allocator<int>> *,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>> *,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>>,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>>)::$_0 &,unsigned long *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t **a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = **a5;
  v8 = *a5[1];
  v9 = *(v7 + 4 * *a2) * *(v8 + 4 * *a2);
  v10 = *a3;
  v11 = *(v7 + 4 * *result) * *(v8 + 4 * *result);
  v12 = *(v7 + 4 * *a3) * *(v8 + 4 * *a3);
  if (v9 <= v11)
  {
    if (v12 <= v9)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v10;
      *a3 = v5;
      v13 = *result;
      if ((*(v7 + 4 * *a2) * *(v8 + 4 * *a2)) > (*(v7 + 4 * *result) * *(v8 + 4 * *result)))
      {
        *result = *a2;
        *a2 = v13;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v12 > v9)
    {
      *result = v10;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if ((*(v7 + 4 * *a3) * *(v8 + 4 * *a3)) > v11)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if ((*(v7 + 4 * *a4) * *(v8 + 4 * *a4)) > (*(v7 + 4 * v5) * *(v8 + 4 * v5)))
  {
    *a3 = *a4;
    *a4 = v5;
    v14 = *a2;
    if ((*(v7 + 4 * *a3) * *(v8 + 4 * *a3)) > (*(v7 + 4 * *a2) * *(v8 + 4 * *a2)))
    {
      *a2 = *a3;
      *a3 = v14;
      v15 = *result;
      if ((*(v7 + 4 * *a2) * *(v8 + 4 * *a2)) > (*(v7 + 4 * *result) * *(v8 + 4 * *result)))
      {
        *result = *a2;
        *a2 = v15;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,withinClassNMS(std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&,std::vector<OUBox3d> const&,float,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<int,std::allocator<int>> *,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>> *,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>>,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>>)::$_0 &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v21 = *a1;
        v22 = a1[1];
        v23 = **a3;
        v24 = *a3[1];
        v25 = *(v23 + 4 * v22) * *(v24 + 4 * v22);
        v26 = *(a2 - 1);
        v27 = *(v23 + 4 * *a1) * *(v24 + 4 * *a1);
        v28 = *(v23 + 4 * v26) * *(v24 + 4 * v26);
        if (v25 > v27)
        {
          if (v28 <= v25)
          {
            *a1 = v22;
            a1[1] = v21;
            v50 = *(a2 - 1);
            if ((*(v23 + 4 * v50) * *(v24 + 4 * v50)) <= v27)
            {
              return 1;
            }

            a1[1] = v50;
          }

          else
          {
            *a1 = v26;
          }

          *(a2 - 1) = v21;
          return 1;
        }

        if (v28 <= v25)
        {
          return 1;
        }

        a1[1] = v26;
        *(a2 - 1) = v22;
        v19 = *a1;
        v40 = a1[1];
        if ((*(v23 + 4 * v40) * *(v24 + 4 * v40)) <= (*(v23 + 4 * *a1) * *(v24 + 4 * *a1)))
        {
          return 1;
        }

        *a1 = v40;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,withinClassNMS(std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&,std::vector<OUBox3d> const&,float,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<int,std::allocator<int>> *,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>> *,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>>,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>>)::$_0 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,withinClassNMS(std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&,std::vector<OUBox3d> const&,float,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<int,std::allocator<int>> *,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>> *,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>>,std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<std::map<NSString * {__strong},short,CompareNSString,std::allocator<std::pair<NSString * const {__strong},short>>> const&<float,std::allocator<float>>,std::allocator<std::allocator<float>>>)::$_0 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = a3[1];
        v12 = **a3;
        v13 = *v11;
        if ((*(v12 + 4 * v9) * *(*v11 + 4 * v9)) <= (*(v12 + 4 * v10) * *(*v11 + 4 * v10)))
        {
          return 1;
        }

        a1[3] = v9;
        *(a2 - 1) = v10;
        v15 = a1[2];
        v14 = a1[3];
        v16 = *(v12 + 4 * v14) * *(v13 + 4 * v14);
        if (v16 <= (*(v12 + 4 * v15) * *(v13 + 4 * v15)))
        {
          return 1;
        }

        v17 = a1[1];
        v18 = *(v12 + 4 * v17);
        a1[2] = v14;
        a1[3] = v15;
        if (v16 <= (v18 * *(v13 + 4 * v17)))
        {
          return 1;
        }

        v19 = *a1;
        v20 = *(v12 + 4 * *a1);
        a1[1] = v14;
        a1[2] = v17;
        if (v16 <= (v20 * *(v13 + 4 * v19)))
        {
          return 1;
        }

        *a1 = v14;
        break;
      default:
        goto LABEL_17;
    }

    a1[1] = v19;
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *a1;
    if ((*(**a3 + 4 * v7) * *(*a3[1] + 4 * v7)) > (*(**a3 + 4 * *a1) * *(*a3[1] + 4 * *a1)))
    {
      *a1 = v7;
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v30 = a1 + 2;
  v29 = a1[2];
  v31 = a1[1];
  v32 = *a1;
  v33 = **a3;
  v34 = *a3[1];
  v35 = *(v33 + 4 * v31) * *(v34 + 4 * v31);
  v36 = *(v33 + 4 * *a1) * *(v34 + 4 * *a1);
  v37 = *(v33 + 4 * v29) * *(v34 + 4 * v29);
  if (v35 > v36)
  {
    v38 = a1;
    v39 = a1 + 2;
    if (v37 <= v35)
    {
      *a1 = v31;
      a1[1] = v32;
      v38 = a1 + 1;
      v39 = a1 + 2;
      if (v37 <= v36)
      {
        goto LABEL_29;
      }
    }

LABEL_28:
    *v38 = v29;
    *v39 = v32;
    goto LABEL_29;
  }

  if (v37 > v35)
  {
    a1[1] = v29;
    *v30 = v31;
    v38 = a1;
    v39 = a1 + 1;
    if (v37 > v36)
    {
      goto LABEL_28;
    }
  }

LABEL_29:
  v41 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v42 = 0;
  for (i = 24; ; i += 8)
  {
    v44 = *v41;
    v45 = *v30;
    v46 = *(v33 + 4 * *v41) * *(v34 + 4 * *v41);
    if (v46 > (*(v33 + 4 * v45) * *(v34 + 4 * v45)))
    {
      v47 = i;
      while (1)
      {
        *(a1 + v47) = v45;
        v48 = v47 - 8;
        if (v47 == 8)
        {
          break;
        }

        v45 = *(a1 + v47 - 16);
        v47 -= 8;
        if (v46 <= (*(v33 + 4 * v45) * *(v34 + 4 * v45)))
        {
          v49 = (a1 + v48);
          goto LABEL_37;
        }
      }

      v49 = a1;
LABEL_37:
      *v49 = v44;
      if (++v42 == 8)
      {
        break;
      }
    }

    v30 = v41++;
    if (v41 == a2)
    {
      return 1;
    }
  }

  return v41 + 1 == a2;
}

size_t *std::vector<std::vector<float>>::__append(size_t *result, unint64_t a2, uint64_t *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = &v7[3 * a2];
      v13 = 24 * a2;
      do
      {
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v7, *a3, a3[1], (a3[1] - *a3) >> 2);
        v7 += 3;
        v13 -= 24;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v21 = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(result, v11);
    }

    v18 = 0;
    v19 = 24 * v8;
    v20 = 24 * v8;
    std::__split_buffer<std::vector<float>>::__construct_at_end(&v18, a2, a3);
    v14 = v5[1] - *v5;
    v15 = v19 - v14;
    memcpy((v19 - v14), *v5, v14);
    v16 = *v5;
    *v5 = v15;
    v17 = v5[2];
    *(v5 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<std::vector<float>>::~__split_buffer(&v18);
  }

  return result;
}

void sub_25D252610(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::vector<float>>::__construct_at_end(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a2)
  {
    v6 = &v4[3 * a2];
    v7 = 24 * a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *a3, a3[1], (a3[1] - *a3) >> 2);
      v4 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

__n128 *OUBox3d::operator=(__n128 *a1, __n128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;
  *a1 = v4;
  a1[1] = v5;
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[7];
  a1[6] = a2[6];
  a1[7] = v9;
  a1[4] = v7;
  a1[5] = v8;
  v10 = a2[8].n128_i64[0];
  a2[8].n128_u64[0] = 0;
  v11 = a1[8].n128_u64[0];
  a1[8].n128_u64[0] = v10;

  a1[8].n128_u32[2] = a2[8].n128_u32[2];
  v12 = a2[9].n128_i64[0];
  a2[9].n128_u64[0] = 0;
  v13 = a1[9].n128_u64[0];
  a1[9].n128_u64[0] = v12;

  v14 = a2[9].n128_i64[1];
  a2[9].n128_u64[1] = 0;
  v15 = a1[9].n128_u64[1];
  a1[9].n128_u64[1] = v14;

  std::vector<float>::__move_assign(&a1[10], a2 + 10);
  std::vector<BOOL>::__move_assign(&a1[11].n128_i64[1], &a2[11].n128_i64[1]);
  v16 = a2[13].n128_i64[0];
  a2[13].n128_u64[0] = 0;
  v17 = a1[13].n128_u64[0];
  a1[13].n128_u64[0] = v16;

  a1[13].n128_u16[4] = a2[13].n128_u16[4];
  return a1;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<OUBox3d *,OUBox3d *,OUBox3d *>(uint64_t a1, __int128 *a2, __int128 *a3, __n128 *a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    v7 = *v5;
    v8 = v5[1];
    v9 = v5[3];
    a4[2] = v5[2];
    a4[3] = v9;
    *a4 = v7;
    a4[1] = v8;
    v10 = v5[4];
    v11 = v5[5];
    v12 = v5[7];
    a4[6] = v5[6];
    a4[7] = v12;
    a4[4] = v10;
    a4[5] = v11;
    v13 = v5[8].n128_i64[0];
    v5[8].n128_u64[0] = 0;
    v14 = a4[8].n128_u64[0];
    a4[8].n128_u64[0] = v13;

    a4[8].n128_u32[2] = v5[8].n128_u32[2];
    v15 = v5[9].n128_i64[0];
    v5[9].n128_u64[0] = 0;
    v16 = a4[9].n128_u64[0];
    a4[9].n128_u64[0] = v15;

    v17 = v5[9].n128_i64[1];
    v5[9].n128_u64[1] = 0;
    v18 = a4[9].n128_u64[1];
    a4[9].n128_u64[1] = v17;

    std::vector<float>::__move_assign(&a4[10], v5 + 10);
    std::vector<BOOL>::__move_assign(&a4[11].n128_i64[1], &v5[11].n128_i64[1]);
    v19 = v5[13].n128_i64[0];
    v5[13].n128_u64[0] = 0;
    v20 = a4[13].n128_u64[0];
    a4[13].n128_u64[0] = v19;

    a4[13].n128_u16[4] = v5[13].n128_u16[4];
    a4 += 14;
    v5 += 14;
  }

  while (v5 != v6);
  return v6;
}

uint64_t std::vector<OUBox3d>::__insert_with_size[abi:ne200100]<std::__wrap_iter<OUBox3d*>,std::__wrap_iter<OUBox3d*>>(uint64_t *a1, uint64_t a2, __int128 *a3, OUBox3d *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v9 - v10) >> 5) >= a5)
    {
      v16 = v10 - a2;
      if (0x6DB6DB6DB6DB6DB7 * ((v10 - a2) >> 5) >= a5)
      {
        v19 = 14 * a5;
        std::vector<OUBox3d>::__move_range(a1, a2, a1[1], a2 + 224 * a5);
        v20 = &v7[v19];
        v21 = v5;
        do
        {
          OUBox3d::operator=(v21, v7);
          v7 += 14;
          v21 += 224;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<OUBox3d>,OUBox3d*,OUBox3d*,OUBox3d*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 >= 1)
        {
          std::vector<OUBox3d>::__move_range(a1, v5, v10, v5 + 224 * a5);
          v18 = v5;
          do
          {
            OUBox3d::operator=(v18, v7);
            v7 += 14;
            v18 += 224;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *a1) >> 5);
      if (v12 > 0x124924924924924)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v13 = a2 - v11;
      v14 = 0x6DB6DB6DB6DB6DB7 * ((v9 - v11) >> 5);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x92492492492492)
      {
        v15 = 0x124924924924924;
      }

      else
      {
        v15 = v12;
      }

      v29 = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<OUBox3d>>(a1, v15);
      }

      v22 = (32 * (v13 >> 5));
      v26[0] = 0;
      v26[1] = v22;
      v27 = v22;
      v28 = 0;
      v23 = 224 * a5;
      v24 = (v22 + 224 * a5);
      do
      {
        OUBox3d::OUBox3d(v22, v7);
        v22 = (v22 + 224);
        v7 += 14;
        v23 -= 224;
      }

      while (v23);
      v27 = v24;
      v5 = std::vector<OUBox3d>::__swap_out_circular_buffer(a1, v26, v5);
      std::__split_buffer<OUBox3d>::~__split_buffer(v26);
    }
  }

  return v5;
}

int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[OU3DObjectDetector assignIdentifiersForNewObjects:withOldObjects:]::$_0 &,int *,0>(int *result, int *a2, int *a3, int *a4, int *a5, uint64_t *a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *a6;
  v9 = *(*a6 + 24 * *(a6 + 6));
  v10 = *(v9 + 4 * *a2);
  v11 = *a3;
  v12 = *(v9 + 4 * *a3);
  if (v10 <= *(v9 + 4 * *result))
  {
    if (v12 <= v10)
    {
      v13 = v11;
      goto LABEL_13;
    }

    *a2 = v11;
    *a3 = v6;
    v14 = *a2;
    v15 = *(v8 + 24 * *(a6 + 6));
    v16 = *result;
    if (*(v15 + 4 * v14) <= *(v15 + 4 * v16))
    {
      v13 = v6;
      v11 = v6;
      goto LABEL_13;
    }

    *result = v14;
    *a2 = v16;
    v11 = *a3;
    goto LABEL_11;
  }

  v13 = v7;
  if (v12 <= v10)
  {
    *result = v6;
    *a2 = v7;
    v17 = *(v8 + 24 * *(a6 + 6));
    v11 = *a3;
    if (*(v17 + 4 * *a3) > *(v17 + 4 * v7))
    {
      *a2 = v11;
      goto LABEL_9;
    }

LABEL_11:
    v13 = v11;
    goto LABEL_13;
  }

  *result = v11;
LABEL_9:
  *a3 = v7;
  v11 = v7;
LABEL_13:
  v18 = *(v8 + 24 * *(a6 + 6));
  v19 = *a4;
  if (*(v18 + 4 * v19) > *(v18 + 4 * v13))
  {
    *a3 = v19;
    *a4 = v11;
    v20 = *a3;
    v18 = *(v8 + 24 * *(a6 + 6));
    v21 = *a2;
    if (*(v18 + 4 * v20) > *(v18 + 4 * v21))
    {
      *a2 = v20;
      *a3 = v21;
      v22 = *a2;
      v18 = *(v8 + 24 * *(a6 + 6));
      v23 = *result;
      if (*(v18 + 4 * v22) > *(v18 + 4 * v23))
      {
        *result = v22;
        *a2 = v23;
        v18 = *(v8 + 24 * *(a6 + 6));
      }
    }
  }

  v24 = *a5;
  v25 = *a4;
  if (*(v18 + 4 * v24) > *(v18 + 4 * v25))
  {
    *a4 = v24;
    *a5 = v25;
    v26 = *a4;
    v27 = *(v8 + 24 * *(a6 + 6));
    v28 = *a3;
    if (*(v27 + 4 * v26) > *(v27 + 4 * v28))
    {
      *a3 = v26;
      *a4 = v28;
      v29 = *a3;
      v30 = *(v8 + 24 * *(a6 + 6));
      v31 = *a2;
      if (*(v30 + 4 * v29) > *(v30 + 4 * v31))
      {
        *a2 = v29;
        *a3 = v31;
        v32 = *a2;
        v33 = *(v8 + 24 * *(a6 + 6));
        v34 = *result;
        if (*(v33 + 4 * v32) > *(v33 + 4 * v34))
        {
          *result = v32;
          *a2 = v34;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[OU3DObjectDetector assignIdentifiersForNewObjects:withOldObjects:]::$_0 &,int *>(int *a1, int *a2, uint64_t a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      LODWORD(v6) = *a1;
      v7 = a1[1];
      v8 = *a3;
      v9 = *(*a3 + 24 * *(a3 + 24));
      v10 = *(v9 + 4 * v7);
      v11 = *(a2 - 1);
      v12 = *(v9 + 4 * v11);
      if (v10 <= *(v9 + 4 * *a1))
      {
        if (v12 > v10)
        {
          a1[1] = v11;
          *(a2 - 1) = v7;
          v37 = *(v8 + 24 * *(a3 + 24));
          v39 = *a1;
          v38 = a1[1];
          if (*(v37 + 4 * v38) > *(v37 + 4 * v39))
          {
            *a1 = v38;
            a1[1] = v39;
          }
        }

        return 1;
      }

      if (v12 > v10)
      {
        *a1 = v11;
        goto LABEL_42;
      }

      *a1 = v7;
      a1[1] = v6;
      v56 = *(v8 + 24 * *(a3 + 24));
      v57 = *(a2 - 1);
      if (*(v56 + 4 * v57) > *(v56 + 4 * v6))
      {
        a1[1] = v57;
        goto LABEL_42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[OU3DObjectDetector assignIdentifiersForNewObjects:withOldObjects:]::$_0 &,int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      }

      goto LABEL_13;
    }

    v24 = a1 + 1;
    v25 = a1[1];
    v26 = a1 + 2;
    v27 = a1[2];
    v28 = *a1;
    v29 = *a3;
    v30 = *(*a3 + 24 * *(a3 + 24));
    v31 = *(v30 + 4 * v25);
    v32 = *a1;
    v33 = v27;
    v34 = *(v30 + 4 * v27);
    if (v31 <= *(v30 + 4 * v32))
    {
      if (v34 > v31)
      {
        *v24 = v27;
        *v26 = v25;
        v53 = *(v29 + 24 * *(a3 + 24));
        v54 = *(v53 + 4 * v27);
        v55 = *(v53 + 4 * v28);
        v32 = v25;
        v35 = a1;
        v36 = a1 + 1;
        v33 = v25;
        if (v54 <= v55)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v34 > v31)
      {
        v35 = a1;
        v36 = a1 + 2;
        v25 = *a1;
LABEL_44:
        *v35 = v27;
        *v36 = v28;
        v33 = v32;
LABEL_46:
        v61 = *(v29 + 24 * *(a3 + 24));
        v62 = *(a2 - 1);
        if (*(v61 + 4 * v62) > *(v61 + 4 * v33))
        {
          *v26 = v62;
          *(a2 - 1) = v25;
          v63 = *v26;
          v64 = *(v29 + 24 * *(a3 + 24));
          v65 = *v24;
          if (*(v64 + 4 * v63) > *(v64 + 4 * v65))
          {
            a1[1] = v63;
            a1[2] = v65;
            v66 = *(v29 + 24 * *(a3 + 24));
            v67 = *a1;
            if (*(v66 + 4 * v63) > *(v66 + 4 * v67))
            {
              *a1 = v63;
              a1[1] = v67;
            }
          }
        }

        return 1;
      }

      *a1 = v25;
      a1[1] = v28;
      v58 = *(v29 + 24 * *(a3 + 24));
      v59 = *(v58 + 4 * v27);
      v60 = *(v58 + 4 * v28);
      v35 = a1 + 1;
      v36 = a1 + 2;
      v25 = v28;
      if (v59 > v60)
      {
        goto LABEL_44;
      }
    }

    v25 = v27;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *(*a3 + 24 * *(a3 + 24));
    v6 = *a1;
    if (*(v5 + 4 * v4) > *(v5 + 4 * v6))
    {
      *a1 = v4;
LABEL_42:
      *(a2 - 1) = v6;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = a1[2];
  v15 = a1[1];
  v16 = *a1;
  v17 = *a3;
  v18 = *(*a3 + 24 * *(a3 + 24));
  v19 = *(v18 + 4 * v15);
  v20 = *(v18 + 4 * v14);
  if (v19 > *(v18 + 4 * *a1))
  {
    v21 = a1;
    v22 = a1 + 2;
    if (v20 <= v19)
    {
      *a1 = v15;
      a1[1] = v16;
      v23 = *(v17 + 24 * *(a3 + 24));
      v21 = a1 + 1;
      v22 = a1 + 2;
      if (*(v23 + 4 * v14) <= *(v23 + 4 * v16))
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v21 = v14;
    *v22 = v16;
    goto LABEL_26;
  }

  if (v20 > v19)
  {
    a1[1] = v14;
    *v13 = v15;
    v40 = *(v17 + 24 * *(a3 + 24));
    v21 = a1;
    v22 = a1 + 1;
    if (*(v40 + 4 * v14) > *(v40 + 4 * v16))
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v41 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v42 = 0;
  for (i = 12; ; i += 4)
  {
    v44 = *v41;
    v45 = *(v17 + 24 * *(a3 + 24));
    v46 = *v13;
    if (*(v45 + 4 * *v41) > *(v45 + 4 * v46))
    {
      v47 = i;
      while (1)
      {
        *(a1 + v47) = v46;
        v48 = v47 - 4;
        if (v47 == 4)
        {
          break;
        }

        v46 = *(a1 + v47 - 8);
        v49 = *(v17 + 24 * *(a3 + 24));
        v50 = *(v49 + 4 * v44);
        v51 = *(v49 + 4 * v46);
        v47 = v48;
        if (v50 <= v51)
        {
          v52 = (a1 + v48);
          goto LABEL_34;
        }
      }

      v52 = a1;
LABEL_34:
      *v52 = v44;
      if (++v42 == 8)
      {
        break;
      }
    }

    v13 = v41++;
    if (v41 == a2)
    {
      return 1;
    }
  }

  return v41 + 1 == a2;
}

uint64_t std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25D253E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

int *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[OU3DObjectDetector assignIdentifiersForNewObjects:withOldObjects:]::$_1 &,int *,0>(int *result, int *a2, int *a3, int *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a5;
  v8 = *(a5 + 6);
  v9 = *(*(*a5 + 24 * *a2) + 4 * v8);
  v10 = *(*a5 + 24 * *result);
  v11 = *a3;
  v12 = *(*(*a5 + 24 * *a3) + 4 * v8);
  if (v9 <= *(v10 + 4 * v8))
  {
    if (v12 <= v9)
    {
      v13 = *a3;
      goto LABEL_13;
    }

    *a2 = v11;
    *a3 = v5;
    v14 = *result;
    if (*(*(v7 + 24 * *a2) + 4 * *(a5 + 6)) <= *(*(v7 + 24 * *result) + 4 * *(a5 + 6)))
    {
      v13 = v5;
      v11 = v5;
      goto LABEL_13;
    }

    *result = *a2;
    *a2 = v14;
    v11 = *a3;
    goto LABEL_11;
  }

  v13 = *result;
  if (v12 <= v9)
  {
    *result = v5;
    *a2 = v6;
    v11 = *a3;
    if (*(*(v7 + 24 * *a3) + 4 * *(a5 + 6)) > *(v10 + 4 * *(a5 + 6)))
    {
      *a2 = v11;
      goto LABEL_9;
    }

LABEL_11:
    v13 = v11;
    goto LABEL_13;
  }

  *result = v11;
LABEL_9:
  *a3 = v6;
  v11 = v6;
LABEL_13:
  if (*(*(v7 + 24 * *a4) + 4 * *(a5 + 6)) > *(*(v7 + 24 * v13) + 4 * *(a5 + 6)))
  {
    *a3 = *a4;
    *a4 = v11;
    v15 = *a2;
    if (*(*(v7 + 24 * *a3) + 4 * *(a5 + 6)) > *(*(v7 + 24 * *a2) + 4 * *(a5 + 6)))
    {
      *a2 = *a3;
      *a3 = v15;
      v16 = *result;
      if (*(*(v7 + 24 * *a2) + 4 * *(a5 + 6)) > *(*(v7 + 24 * *result) + 4 * *(a5 + 6)))
      {
        *result = *a2;
        *a2 = v16;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[OU3DObjectDetector assignIdentifiersForNewObjects:withOldObjects:]::$_1 &,int *>(int *a1, int *a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v8 = *a1;
        v17 = a1[1];
        v18 = *a3;
        v19 = *(a3 + 24);
        v20 = *(*(*a3 + 24 * v17) + 4 * v19);
        v21 = *(*a3 + 24 * *a1);
        v22 = *(a2 - 1);
        v23 = *(*(*a3 + 24 * v22) + 4 * v19);
        if (v20 <= *(v21 + 4 * v19))
        {
          if (v23 > v20)
          {
            a1[1] = v22;
            *(a2 - 1) = v17;
            v37 = *a1;
            v36 = a1[1];
            if (*(*(v18 + 24 * v36) + 4 * *(a3 + 24)) > *(*(v18 + 24 * *a1) + 4 * *(a3 + 24)))
            {
              *a1 = v36;
              a1[1] = v37;
            }
          }

          return 1;
        }

        if (v23 > v20)
        {
          *a1 = v22;
          goto LABEL_41;
        }

        *a1 = v17;
        a1[1] = v8;
        v50 = *(a2 - 1);
        if (*(*(v18 + 24 * v50) + 4 * *(a3 + 24)) > *(v21 + 4 * *(a3 + 24)))
        {
          a1[1] = v50;
          goto LABEL_41;
        }

        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[OU3DObjectDetector assignIdentifiersForNewObjects:withOldObjects:]::$_1 &,int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[OU3DObjectDetector assignIdentifiersForNewObjects:withOldObjects:]::$_1 &,int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = *a3;
        if (*(*(*a3 + 24 * v9) + 4 * *(a3 + 24)) > *(*(*a3 + 24 * v10) + 4 * *(a3 + 24)))
        {
          a1[3] = v9;
          *(a2 - 1) = v10;
          v13 = a1[2];
          v12 = a1[3];
          v14 = *(v11 + 24 * v12);
          if (*(v14 + 4 * *(a3 + 24)) > *(*(v11 + 24 * v13) + 4 * *(a3 + 24)))
          {
            a1[2] = v12;
            a1[3] = v13;
            v15 = a1[1];
            if (*(v14 + 4 * *(a3 + 24)) > *(*(v11 + 24 * v15) + 4 * *(a3 + 24)))
            {
              a1[1] = v12;
              a1[2] = v15;
              v16 = *a1;
              if (*(v14 + 4 * *(a3 + 24)) > *(*(v11 + 24 * *a1) + 4 * *(a3 + 24)))
              {
                *a1 = v12;
                a1[1] = v16;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *a1;
      if (*(*(*a3 + 24 * v7) + 4 * *(a3 + 24)) > *(*(*a3 + 24 * *a1) + 4 * *(a3 + 24)))
      {
        *a1 = v7;
LABEL_41:
        *(a2 - 1) = v8;
        return 1;
      }

      return 1;
    }
  }

  v24 = a1 + 2;
  v25 = a1[2];
  v26 = a1[1];
  v27 = *a3;
  v28 = *(a3 + 24);
  v29 = *(*(*a3 + 24 * v26) + 4 * v28);
  v30 = *a1;
  v31 = *(*a3 + 24 * *a1);
  v32 = *(*a3 + 24 * v25);
  v33 = *(v32 + 4 * v28);
  if (v29 > *(v31 + 4 * v28))
  {
    v34 = a1;
    v35 = a1 + 2;
    if (v33 <= v29)
    {
      *a1 = v26;
      a1[1] = v30;
      v34 = a1 + 1;
      v35 = a1 + 2;
      if (*(v32 + 4 * *(a3 + 24)) <= *(v31 + 4 * *(a3 + 24)))
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    *v34 = v25;
    *v35 = v30;
    goto LABEL_28;
  }

  if (v33 > v29)
  {
    a1[1] = v25;
    *v24 = v26;
    v34 = a1;
    v35 = a1 + 1;
    if (*(v32 + 4 * *(a3 + 24)) > *(v31 + 4 * *(a3 + 24)))
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  v38 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v39 = 0;
  for (i = 12; ; i += 4)
  {
    v41 = *v38;
    v42 = *v24;
    v43 = *(v27 + 24 * *v38);
    if (*(v43 + 4 * *(a3 + 24)) > *(*(v27 + 24 * v42) + 4 * *(a3 + 24)))
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v42;
        v45 = v44 - 4;
        if (v44 == 4)
        {
          break;
        }

        v42 = *(a1 + v44 - 8);
        v46 = *(a3 + 24);
        v47 = *(v43 + 4 * v46);
        v48 = *(*(v27 + 24 * v42) + 4 * v46);
        v44 = v45;
        if (v47 <= v48)
        {
          v49 = (a1 + v45);
          goto LABEL_36;
        }
      }

      v49 = a1;
LABEL_36:
      *v49 = v41;
      if (++v39 == 8)
      {
        break;
      }
    }

    v24 = v38++;
    if (v38 == a2)
    {
      return 1;
    }
  }

  return v38 + 1 == a2;
}

void std::vector<OU3DKitchenObject>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      std::__tree<int>::destroy(v3 - 32, *(v3 - 24));

      v4 = *(v3 - 88);
      if (v4)
      {
        operator delete(v4);
      }

      v5 = *(v3 - 112);
      if (v5)
      {
        *(v3 - 104) = v5;
        operator delete(v5);
      }

      v3 -= 272;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

void *_ZNSt3__13mapIU8__strongP8NSStringDv3_f15CompareNSStringNS_9allocatorINS_4pairIU8__strongKS2_S4_EEEEEC2B8ne200100ESt16initializer_listIS9_ERKS5_(void *a1, void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      _ZNSt3__16__treeINS_12__value_typeIU8__strongP8NSStringDv3_fEENS_19__map_value_compareIS4_S6_15CompareNSStringLb1EEENS_9allocatorIS6_EEE30__emplace_hint_unique_key_argsIS4_JRKNS_4pairIU8__strongKS3_S5_EEEEENSE_INS_15__tree_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEEbEENS_21__tree_const_iteratorIS6_SN_lEERKT_DpOT0_(a1, v4, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t _ZNSt3__16__treeINS_12__value_typeIU8__strongP8NSStringDv3_fEENS_19__map_value_compareIS4_S6_15CompareNSStringLb1EEENS_9allocatorIS6_EEE30__emplace_hint_unique_key_argsIS4_JRKNS_4pairIU8__strongKS3_S5_EEEEENSE_INS_15__tree_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEEbEENS_21__tree_const_iteratorIS6_SN_lEERKT_DpOT0_(void *a1, uint64_t a2, void **a3)
{
  v3 = *std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::__find_equal<NSString * {__strong}>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::multimap<NSString * {__strong},SemanticLabelv5,CompareNSString,std::allocator<std::pair<NSString * const {__strong},SemanticLabelv5>>>::multimap[abi:ne200100](void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a3)
  {
    std::__tree<std::__value_type<NSString * {__strong},SemanticLabelv5>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},SemanticLabelv5>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},SemanticLabelv5>>>::__emplace_hint_multi<std::pair<NSString * const {__strong},SemanticLabelv5> const&>();
  }

  return result;
}

void sub_25D2554A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<NSString * {__strong},float>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<NSString * {__strong},float>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<NSString * {__strong},SemanticLabelv5>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},SemanticLabelv5>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},SemanticLabelv5>>>::__find_leaf(void *a1, uint64_t a2, void *a3, void **a4)
{
  v6 = a2;
  if (a1 + 1 != a2 && CompareNSString::operator()(a1, *(a2 + 32), *a4))
  {

    return std::__tree<std::__value_type<NSString * {__strong},SemanticLabelv5>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},SemanticLabelv5>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},SemanticLabelv5>>>::__find_leaf_low(a1, a3, a4);
  }

  if (*a1 == v6)
  {
    v10 = v6;
LABEL_17:
    if (*v6)
    {
      *a3 = v10;
      return v10 + 1;
    }

    else
    {
      *a3 = v6;
    }

    return v6;
  }

  v9 = *v6;
  if (*v6)
  {
    do
    {
      v10 = v9;
      v9 = v9[1];
    }

    while (v9);
  }

  else
  {
    v11 = v6;
    do
    {
      v10 = v11[2];
      v12 = *v10 == v11;
      v11 = v10;
    }

    while (v12);
  }

  if (!CompareNSString::operator()(a1, *a4, v10[4]))
  {
    goto LABEL_17;
  }

  return std::__tree<std::__value_type<NSString * {__strong},SemanticLabelv5>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},SemanticLabelv5>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},SemanticLabelv5>>>::__find_leaf_high(a1, a3, a4);
}

void *std::__tree<std::__value_type<NSString * {__strong},SemanticLabelv5>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},SemanticLabelv5>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},SemanticLabelv5>>>::__find_leaf_high(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!CompareNSString::operator()(a1, *a3, *(v4 + 32)))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

void *std::__tree<std::__value_type<NSString * {__strong},SemanticLabelv5>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},SemanticLabelv5>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},SemanticLabelv5>>>::__find_leaf_low(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (CompareNSString::operator()(a1, *(v4 + 32), *a3))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

OU3DObjectRGBSizeRefiner *std::unique_ptr<OU3DObjectRGBSizeRefiner>::reset[abi:ne200100](OU3DObjectRGBSizeRefiner **a1, OU3DObjectRGBSizeRefiner *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    OU3DObjectRGBSizeRefiner::~OU3DObjectRGBSizeRefiner(result);

    JUMPOUT(0x25F894DE0);
  }

  return result;
}

void OU3DObjectRGBSizeRefiner::~OU3DObjectRGBSizeRefiner(OU3DObjectRGBSizeRefiner *this)
{
  v2 = *(this + 40);
  if (v2)
  {
    *(this + 41) = v2;
    operator delete(v2);
  }

  v3 = *(this + 37);
  if (v3)
  {
    *(this + 38) = v3;
    operator delete(v3);
  }

  v4 = *(this + 34);
  if (v4)
  {
    *(this + 35) = v4;
    operator delete(v4);
  }

  v5 = *(this + 31);
  if (v5)
  {
    *(this + 32) = v5;
    operator delete(v5);
  }

  v6 = *(this + 28);
  if (v6)
  {
    *(this + 29) = v6;
    operator delete(v6);
  }

  std::__tree<std::__value_type<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>,std::__map_value_compare<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong},std::less<NSString * {__strong}>,true>,std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>::destroy(this + 200, *(this + 26));
  std::__tree<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>>>::destroy(this + 168, *(this + 22));
  v7 = *(this + 20);
  *(this + 20) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  v8 = *(this + 1);
  if (v8)
  {
    *(this + 2) = v8;
    operator delete(v8);
  }
}

void std::__tree<std::__value_type<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>,std::__map_value_compare<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong},std::less<NSString * {__strong}>,true>,std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>,std::__map_value_compare<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong},std::less<NSString * {__strong}>,true>,std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>::destroy(a1, *a2);
    std::__tree<std::__value_type<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>,std::__map_value_compare<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong},std::less<NSString * {__strong}>,true>,std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<NSString * const {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *a1;
}

uint64_t std::__tree<std::__value_type<NSString * {__strong},short>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},short>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},short>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>(uint64_t a1, void **a2)
{
  v2 = *std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::__find_equal<NSString * {__strong}>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void _GLOBAL__sub_I_OU3DObjectDetector_mm()
{
  v229 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  LODWORD(v153) = 0;
  *(&v153 + 1) = @"Unknown";
  LODWORD(v154) = 1;
  *(&v154 + 1) = *(&v153 + 1);
  LODWORD(v155) = 2;
  *(&v155 + 1) = *(&v154 + 1);
  LODWORD(v156) = 3;
  *(&v156 + 1) = *(&v155 + 1);
  LODWORD(v157) = 4;
  *(&v157 + 1) = *(&v156 + 1);
  LODWORD(v158) = 5;
  *(&v158 + 1) = *(&v157 + 1);
  LODWORD(v159) = 6;
  v115 = @"Door";
  *(&v159 + 1) = v115;
  LODWORD(v160) = 7;
  v111 = @"Window";
  *(&v160 + 1) = v111;
  LODWORD(v161) = 8;
  *(&v161 + 1) = *(&v158 + 1);
  LODWORD(v162) = 9;
  v142 = @"Fireplace";
  *(&v162 + 1) = v142;
  LODWORD(v163) = 10;
  *(&v163 + 1) = *(&v161 + 1);
  LODWORD(v164) = 11;
  *(&v164 + 1) = *(&v163 + 1);
  LODWORD(v165) = 12;
  v149 = @"Stairs";
  *(&v165 + 1) = v149;
  LODWORD(v166) = 13;
  v120 = @"Bed";
  *(&v166 + 1) = v120;
  LODWORD(v167) = 14;
  v168 = @"Cabinet";
  LODWORD(v169) = 15;
  v136 = @"Chair";
  *(&v169 + 1) = v136;
  LODWORD(v170) = 16;
  v171 = v168;
  LODWORD(v172) = 17;
  *(&v172 + 1) = v171;
  LODWORD(v173) = 18;
  v131 = @"Sofa";
  v174 = v131;
  LODWORD(v175) = 19;
  v126 = @"Table";
  *(&v175 + 1) = v126;
  LODWORD(v176) = 20;
  v106 = @"Toilet";
  v177 = v106;
  LODWORD(v178) = 21;
  v0 = @"Sink";
  *(&v178 + 1) = v0;
  LODWORD(v179) = 22;
  v101 = @"Bathtub";
  v180 = v101;
  LODWORD(v181) = 23;
  *(&v181 + 1) = *(&v164 + 1);
  LODWORD(v182) = 24;
  v1 = @"Refrigerator";
  v183 = v1;
  LODWORD(v184) = 25;
  v2 = @"Stove";
  *(&v184 + 1) = v2;
  LODWORD(v185) = 26;
  v3 = @"Washer";
  v186 = v3;
  LODWORD(v187) = 27;
  v4 = @"Oven";
  *(&v187 + 1) = v4;
  LODWORD(v188) = 28;
  v5 = @"Dishwasher";
  v189 = v5;
  LODWORD(v190) = 29;
  *(&v190 + 1) = *(&v181 + 1);
  LODWORD(v191) = 30;
  v6 = *(&v172 + 1);
  v192 = v6;
  LODWORD(v193) = 31;
  *(&v193 + 1) = *(&v190 + 1);
  LODWORD(v194) = 32;
  v95 = @"Screen";
  v195 = v95;
  std::unordered_map<int,NSString * {__strong}>::unordered_map(&kSemanticsODLabelMap, &v153, 33);
  for (i = 520; i != -8; i -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<int,NSString * {__strong}>::~unordered_map[abi:ne200100], &kSemanticsODLabelMap, &dword_25D1DB000);
  v163 = xmmword_25D279630;
  v164 = unk_25D279640;
  v165 = xmmword_25D279650;
  v166 = unk_25D279660;
  v159 = xmmword_25D2795F0;
  v160 = unk_25D279600;
  v161 = xmmword_25D279610;
  v162 = unk_25D279620;
  v155 = xmmword_25D2795B0;
  v156 = unk_25D2795C0;
  v157 = xmmword_25D2795D0;
  v158 = unk_25D2795E0;
  v153 = xmmword_25D279590;
  v154 = unk_25D2795A0;
  v167 = 28;
  std::unordered_map<int,SemanticLabelv5>::unordered_map(&kSparseSSDSemanticLabels, &v153, 29);
  __cxa_atexit(std::unordered_map<int,SemanticLabelv5>::~unordered_map[abi:ne200100], &kSparseSSDSemanticLabels, &dword_25D1DB000);
  LODWORD(v153) = 0;
  v90 = v6;
  *(&v153 + 1) = v90;
  LODWORD(v154) = 1;
  v86 = v1;
  *(&v154 + 1) = v86;
  LODWORD(v155) = 2;
  v82 = @"Shelf";
  *(&v155 + 1) = v82;
  LODWORD(v156) = 3;
  v80 = v2;
  *(&v156 + 1) = v80;
  LODWORD(v157) = 4;
  v121 = v120;
  *(&v157 + 1) = v121;
  LODWORD(v158) = 5;
  v78 = v0;
  *(&v158 + 1) = v78;
  LODWORD(v159) = 6;
  v76 = v3;
  *(&v159 + 1) = v76;
  LODWORD(v160) = 7;
  v107 = v106;
  *(&v160 + 1) = v107;
  LODWORD(v161) = 8;
  v102 = v101;
  *(&v161 + 1) = v102;
  LODWORD(v162) = 9;
  v75 = v4;
  *(&v162 + 1) = v75;
  LODWORD(v163) = 10;
  v74 = v5;
  *(&v163 + 1) = v74;
  LODWORD(v164) = 11;
  v143 = v142;
  *(&v164 + 1) = v143;
  LODWORD(v165) = 12;
  v73 = @"Stool";
  *(&v165 + 1) = v73;
  LODWORD(v166) = 13;
  v137 = v136;
  *(&v166 + 1) = v137;
  LODWORD(v167) = 14;
  v8 = v126;
  v168 = v8;
  LODWORD(v169) = 15;
  v9 = v95;
  *(&v169 + 1) = v9;
  LODWORD(v170) = 16;
  v10 = v131;
  v171 = v10;
  LODWORD(v172) = 17;
  v11 = v149;
  *(&v172 + 1) = v11;
  LODWORD(v173) = 18;
  v12 = v111;
  v174 = v12;
  LODWORD(v175) = 19;
  v13 = v115;
  *(&v175 + 1) = v13;
  LODWORD(v176) = 20;
  v14 = @"BuildInCabinet";
  v177 = v14;
  std::unordered_map<int,NSString * {__strong}>::unordered_map(&kSparseSSDObjectLabels, &v153, 21);
  for (j = 328; j != -8; j -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<int,NSString * {__strong}>::~unordered_map[abi:ne200100], &kSparseSSDObjectLabels, &dword_25D1DB000);
  v16 = v90;
  *&v153 = v16;
  v72 = v86;
  *(&v153 + 1) = v72;
  v83 = v82;
  *&v154 = v83;
  v87 = v80;
  *(&v154 + 1) = v87;
  v150 = v121;
  *&v155 = v150;
  v91 = v78;
  *(&v155 + 1) = v91;
  v96 = v76;
  *&v156 = v96;
  v112 = v107;
  *(&v156 + 1) = v112;
  v17 = v102;
  *&v157 = v17;
  v116 = v75;
  *(&v157 + 1) = v116;
  v122 = v74;
  *&v158 = v122;
  v127 = v143;
  *(&v158 + 1) = v127;
  v132 = v73;
  *&v159 = v132;
  v144 = v137;
  *(&v159 + 1) = v144;
  v18 = v8;
  *&v160 = v18;
  v138 = v9;
  *(&v160 + 1) = v138;
  v19 = v10;
  *&v161 = v19;
  *(&v161 + 1) = v11;
  *&v162 = v12;
  *(&v162 + 1) = v13;
  *&v163 = v14;
  qword_28155A990 = 0;
  unk_28155A998 = 0;
  ou3dod::kObjectTypesLUT = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&ou3dod::kObjectTypesLUT, &v153, &v163 + 8, 0x15uLL);
  for (k = 160; k != -8; k -= 8)
  {
  }

  __cxa_atexit(std::vector<NSString * {__strong}>::~vector[abi:ne200100], &ou3dod::kObjectTypesLUT, &dword_25D1DB000);
  v21 = v16;
  *&v153 = v21;
  qword_28155A7D8 = 0;
  unk_28155A7E0 = 0;
  ou3dod::kAFClassIdToObjectTypeOffline = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&ou3dod::kAFClassIdToObjectTypeOffline, &v153, &v153 + 8, 1uLL);

  __cxa_atexit(std::vector<NSString * {__strong}>::~vector[abi:ne200100], &ou3dod::kAFClassIdToObjectTypeOffline, &dword_25D1DB000);
  v22 = v21;
  *&v153 = v22;
  v23 = v150;
  *(&v153 + 1) = v23;
  v24 = v17;
  *&v154 = v24;
  v25 = v18;
  *(&v154 + 1) = v25;
  v26 = v19;
  *&v155 = v26;
  qword_28155A900 = 0;
  unk_28155A908 = 0;
  ou3dod::kOfflineSsdTypesLUT = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&ou3dod::kOfflineSsdTypesLUT, &v153, &v155 + 8, 5uLL);
  for (m = 32; m != -8; m -= 8)
  {
  }

  __cxa_atexit(std::vector<NSString * {__strong}>::~vector[abi:ne200100], &ou3dod::kOfflineSsdTypesLUT, &dword_25D1DB000);
  v155 = xmmword_25D2796A0;
  v156 = unk_25D2796B0;
  v157 = xmmword_25D2796C0;
  v153 = xmmword_25D279680;
  v154 = unk_25D279690;
  qword_28155A868 = 0;
  unk_28155A870 = 0;
  ou3dod::kOfflineSSDAnchorSizeList = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&ou3dod::kOfflineSSDAnchorSizeList, &v153, &v158, 5uLL);
  __cxa_atexit(_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEED1B8ne200100Ev, &ou3dod::kOfflineSSDAnchorSizeList, &dword_25D1DB000);
  v28 = v22;
  *&v153 = v28;
  DWORD2(v153) = 1055286886;
  v29 = v23;
  *&v154 = v29;
  DWORD2(v154) = 1039516303;
  v30 = v24;
  *&v155 = v30;
  DWORD2(v155) = 1045220557;
  v31 = v25;
  *&v156 = v31;
  DWORD2(v156) = 1050253722;
  v32 = v26;
  *&v157 = v32;
  DWORD2(v157) = 1047904911;
  std::map<NSString * {__strong},float,CompareNSString,std::allocator<std::pair<NSString * const {__strong},float>>>::map[abi:ne200100](&ou3dod::kOfflineSSD3dConfThresholdMap, &v153, 5);
  for (n = 64; n != -16; n -= 16)
  {
  }

  __cxa_atexit(std::map<NSString * {__strong},float,CompareNSString,std::allocator<std::pair<NSString * const {__strong},float>>>::~map[abi:ne200100], &ou3dod::kOfflineSSD3dConfThresholdMap, &dword_25D1DB000);
  *(&v153 + 1) = @"Chair-chair_type-dining";
  LODWORD(v154) = 2;
  *(&v154 + 1) = @"Chair-chair_type-swivel";
  LODWORD(v155) = 3;
  *(&v155 + 1) = @"Chair-chair_type-other";
  LODWORD(v156) = 4;
  *(&v156 + 1) = @"Chair-chair_leg_type-four";
  LODWORD(v157) = 5;
  *(&v157 + 1) = @"Chair-chair_leg_type-star";
  LODWORD(v158) = 6;
  *(&v158 + 1) = @"Chair-chair_leg_type-other";
  LODWORD(v159) = 7;
  *(&v159 + 1) = @"Chair-chair_arm_type-missing";
  LODWORD(v160) = 8;
  *(&v160 + 1) = @"Chair-chair_arm_type-existing";
  LODWORD(v161) = 9;
  *(&v161 + 1) = @"Chair-chair_back_type-missing";
  LODWORD(v162) = 10;
  *(&v162 + 1) = @"Chair-chair_back_type-existing";
  LODWORD(v163) = 11;
  *(&v163 + 1) = @"Chair-chair_seat_height-tall_seat";
  LODWORD(v164) = 12;
  *(&v164 + 1) = @"Chair-chair_seat_height-normal/low_seat";
  LODWORD(v165) = 13;
  *(&v165 + 1) = @"Chair-chair_seat_shape-rectangular";
  LODWORD(v166) = 14;
  *(&v166 + 1) = @"Chair-chair_seat_shape-round";
  LODWORD(v167) = 15;
  v168 = @"Chair-chair_seat_shape-none";
  LODWORD(v169) = 16;
  *(&v169 + 1) = @"Sofa-sofa_type-rectangular";
  LODWORD(v170) = 17;
  v171 = @"Sofa-sofa_type-lShaped";
  LODWORD(v172) = 18;
  *(&v172 + 1) = @"Sofa-sofa_type-singleSeat";
  LODWORD(v173) = 19;
  v174 = @"Sofa-sofa_type-lShapedMain";
  LODWORD(v175) = 20;
  *(&v175 + 1) = @"Sofa-sofa_type-lShapedExtension";
  LODWORD(v176) = 21;
  v177 = @"Sofa-sofa_type-lShapedMiddle";
  LODWORD(v178) = 22;
  *(&v178 + 1) = @"Sofa-sofa_type-other";
  LODWORD(v179) = 23;
  v180 = @"Sofa-sofa_arm_type-missing";
  LODWORD(v181) = 24;
  *(&v181 + 1) = @"Sofa-sofa_arm_type-two_arms";
  LODWORD(v182) = 25;
  v183 = @"Sofa-sofa_arm_type-none";
  LODWORD(v184) = 26;
  *(&v184 + 1) = @"Sofa-sofa_back_type-missing";
  LODWORD(v185) = 27;
  v186 = @"Sofa-sofa_back_type-existing";
  LODWORD(v187) = 28;
  *(&v187 + 1) = @"Table-table_type-desk";
  LODWORD(v188) = 29;
  v189 = @"Table-table_type-coffee";
  LODWORD(v190) = 30;
  *(&v190 + 1) = @"Table-table_type-dining";
  LODWORD(v191) = 31;
  v192 = @"Table-table_type-other";
  LODWORD(v193) = 32;
  *(&v193 + 1) = @"Table-table_shape-rectangular";
  LODWORD(v194) = 33;
  v195 = @"Table-table_shape-lShaped";
  LODWORD(v196) = 34;
  *(&v196 + 1) = @"Table-table_shape-circularElliptic";
  v197 = 35;
  v198 = @"Table-table_shape-other";
  v199 = 36;
  v200 = @"Table-table_leg_type-two_leg";
  v201 = 37;
  v202 = @"Table-table_leg_type-four_leg";
  v203 = 38;
  v204 = @"Table-table_leg_type-none";
  v205 = 39;
  v206 = @"Table-table_attribute-with_storage";
  v207 = 40;
  v208 = @"Table-table_attribute-without_storage";
  v209 = 41;
  v210 = @"Cabinet-cabinet_type-standalone_cabinet";
  v211 = 42;
  v212 = @"Cabinet-cabinet_type-kitchen_cabinet";
  v213 = 43;
  v214 = @"Cabinet-cabinet_type-nightstand";
  v215 = 44;
  v216 = @"Cabinet-cabinet_type-none";
  v217 = 45;
  v218 = @"Cabinet-cabinet_attribute-no_countertop";
  v219 = 46;
  v220 = @"Cabinet-cabinet_attribute-with_countertop";
  v221 = 100;
  v222 = @"Sofa-sofa_arm_type-existing";
  v223 = 101;
  LODWORD(v153) = 0;
  v224 = @"Storage-storage_type-cabinet";
  v225 = 102;
  v226 = @"Storage-storage_type-shelf";
  v227 = 103;
  v228 = @"Chair-chair_type-stool";
  std::unordered_map<ou3dor::PartAttributeID,NSString * {__strong}>::unordered_map(ou3dor::k3DORSupportedAttributeTypeMap, &v153, 50);
  for (ii = 792; ii != -8; ii -= 16)
  {
  }

  __cxa_atexit(std::unordered_map<ou3dor::PartAttributeID,NSString * {__strong}>::~unordered_map[abi:ne200100], ou3dor::k3DORSupportedAttributeTypeMap, &dword_25D1DB000);
  RW_VW = xmmword_25D277BA0;
  unk_28155B240 = xmmword_25D277BD0;
  xmmword_28155B250 = xmmword_25D277BB0;
  unk_28155B260 = xmmword_25D277B90;
  *VW_RW = __invert_f4(*_PromotedConst_2);
  RC_VC = xmmword_25D277BA0;
  *algn_28155ACF0 = xmmword_25D277BE0;
  xmmword_28155AD00 = xmmword_25D277BD0;
  unk_28155AD10 = xmmword_25D277B90;
  *VC_RC = __invert_f4(*_PromotedConst_445);
  ARKit_VW_RW = xmmword_25D277BE0;
  *algn_28155B110 = xmmword_25D277BC0;
  xmmword_28155B120 = xmmword_25D277BF0;
  unk_28155B130 = xmmword_25D277B90;
  ObjectUnderstandingTest::Bundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ObjectUnderstandingTests"];
  v35 = v28;
  *&v153 = v35;
  DWORD2(v153) = 1065185444;
  v36 = v72;
  *&v154 = v36;
  DWORD2(v154) = 1064766013;
  v151 = v83;
  *&v155 = v151;
  DWORD2(v155) = 1064011039;
  v108 = v87;
  *&v156 = v108;
  DWORD2(v156) = 1065017672;
  v103 = v29;
  *&v157 = v103;
  DWORD2(v157) = 1065185444;
  v92 = v91;
  *&v158 = v92;
  v37 = v31;
  DWORD2(v158) = 1065101558;
  v97 = v96;
  *&v159 = v97;
  DWORD2(v159) = 1065185444;
  v38 = v112;
  *&v160 = v38;
  DWORD2(v160) = 1065185444;
  v39 = v30;
  *&v161 = v39;
  DWORD2(v161) = 1065017672;
  v117 = v116;
  *&v162 = v117;
  DWORD2(v162) = 1064178811;
  v123 = v122;
  *&v163 = v123;
  DWORD2(v163) = 1065101558;
  v40 = v127;
  *&v164 = v40;
  DWORD2(v164) = 1064178811;
  v133 = v132;
  *&v165 = v133;
  DWORD2(v165) = 1063675494;
  v145 = v144;
  *&v166 = v145;
  DWORD2(v166) = 1065185444;
  v41 = v37;
  v167 = v41;
  LODWORD(v168) = 1064430469;
  v139 = v138;
  *&v169 = v139;
  DWORD2(v169) = 1065185444;
  v42 = v32;
  v170 = v42;
  LODWORD(v171) = 1064514355;
  std::map<NSString * {__strong},float,CompareNSString,std::allocator<std::pair<NSString * const {__strong},float>>>::map[abi:ne200100](&kFloorplanConfThresholdMap, &v153, 17);
  v84 = v42;
  v88 = v41;
  v128 = v39;
  for (jj = 256; jj != -16; jj -= 16)
  {
  }

  __cxa_atexit(std::map<NSString * {__strong},float,CompareNSString,std::allocator<std::pair<NSString * const {__strong},float>>>::~map[abi:ne200100], &kFloorplanConfThresholdMap, &dword_25D1DB000);
  v44 = v35;
  kFloorplanOU3DObjectTypeLUT = v44;
  v45 = v36;
  qword_28155AD88 = v45;
  v46 = v151;
  qword_28155AD90 = v46;
  v47 = v108;
  qword_28155AD98 = v47;
  v48 = v103;
  qword_28155ADA0 = v48;
  v49 = v92;
  qword_28155ADA8 = v49;
  v50 = v97;
  qword_28155ADB0 = v50;
  v51 = v38;
  qword_28155ADB8 = v51;
  v98 = v128;
  qword_28155ADC0 = v98;
  v104 = v117;
  qword_28155ADC8 = v104;
  v109 = v123;
  qword_28155ADD0 = v109;
  v118 = v40;
  qword_28155ADD8 = v118;
  v124 = v133;
  qword_28155ADE0 = v124;
  v129 = v145;
  qword_28155ADE8 = v129;
  v134 = v88;
  qword_28155ADF0 = v134;
  v140 = v139;
  qword_28155ADF8 = v140;
  v146 = v84;
  qword_28155AE00 = v146;
  v77 = v44;
  *&v153 = v77;
  v154 = xmmword_25D2794F0;
  v113 = v45;
  *&v155 = v113;
  v156 = xmmword_25D279500;
  v89 = v46;
  *&v157 = v89;
  v158 = xmmword_25D279500;
  v93 = v47;
  *&v159 = v93;
  v160 = xmmword_25D279510;
  v85 = v48;
  *&v161 = v85;
  v162 = xmmword_25D279520;
  v52 = v49;
  *&v163 = v52;
  v164 = xmmword_25D279530;
  v79 = v50;
  *&v165 = v79;
  v166 = xmmword_25D279500;
  v81 = v51;
  v167 = v81;
  v169 = 0u;
  v99 = v98;
  v170 = v99;
  v172 = 0u;
  v53 = v104;
  v173 = v53;
  v175 = xmmword_25D279500;
  v54 = v109;
  v176 = v54;
  v178 = xmmword_25D279500;
  v55 = v118;
  v179 = v55;
  v181 = xmmword_25D279540;
  v125 = v124;
  v182 = v125;
  v184 = 0u;
  v56 = v129;
  v185 = v56;
  v187 = xmmword_25D279550;
  v57 = v134;
  v188 = v57;
  v190 = xmmword_25D279560;
  v58 = v140;
  v191 = v58;
  v193 = xmmword_25D279540;
  v59 = v146;
  v194 = v59;
  v196 = 0u;
  _ZNSt3__13mapIU8__strongP8NSStringDv3_f15CompareNSStringNS_9allocatorINS_4pairIU8__strongKS2_S4_EEEEEC2B8ne200100ESt16initializer_listIS9_ERKS5_(&kFloorplanBoxPaddingMap, &v153, 17);
  v141 = v53;
  v147 = v58;
  v152 = v59;
  for (kk = 512; kk != -32; kk -= 32)
  {
  }

  __cxa_atexit(_ZNSt3__13mapIU8__strongP8NSStringDv3_f15CompareNSStringNS_9allocatorINS_4pairIU8__strongKS2_S4_EEEEED1B8ne200100Ev, &kFloorplanBoxPaddingMap, &dword_25D1DB000);
  *&v153 = v77;
  BYTE8(v153) = 14;
  *&v154 = v153;
  BYTE8(v154) = 16;
  *&v155 = v154;
  BYTE8(v155) = 30;
  *&v156 = v155;
  BYTE8(v156) = 21;
  *&v157 = v156;
  BYTE8(v157) = 25;
  v135 = v157;
  *&v158 = v135;
  BYTE8(v158) = 19;
  v130 = v113;
  *&v159 = v130;
  BYTE8(v159) = 24;
  v61 = v89;
  *&v160 = v61;
  BYTE8(v160) = 17;
  v114 = v93;
  *&v161 = v114;
  BYTE8(v161) = 25;
  v110 = v85;
  *&v162 = v110;
  BYTE8(v162) = 13;
  v105 = v52;
  *&v163 = v105;
  BYTE8(v163) = 21;
  v119 = v79;
  *&v164 = v119;
  BYTE8(v164) = 26;
  v94 = v81;
  *&v165 = v94;
  BYTE8(v165) = 20;
  v100 = v99;
  *&v166 = v100;
  BYTE8(v166) = 22;
  v167 = v141;
  LOBYTE(v168) = 27;
  *&v169 = v167;
  BYTE8(v169) = 25;
  v62 = v169;
  v170 = v62;
  LOBYTE(v171) = 28;
  v63 = v54;
  *&v172 = v63;
  BYTE8(v172) = 28;
  v64 = v55;
  v173 = v64;
  LOBYTE(v174) = 9;
  v65 = v56;
  *&v175 = v65;
  BYTE8(v175) = 15;
  v66 = v57;
  v176 = v66;
  LOBYTE(v177) = 19;
  v148 = v147;
  *&v178 = v148;
  BYTE8(v178) = 32;
  v179 = v152;
  LOBYTE(v180) = 18;
  v67 = v179;
  *&v181 = v67;
  BYTE8(v181) = 15;
  std::multimap<NSString * {__strong},SemanticLabelv5,CompareNSString,std::allocator<std::pair<NSString * const {__strong},SemanticLabelv5>>>::multimap[abi:ne200100](&kFloorplanClassToSemMap, &v153, 24);
  for (mm = 368; mm != -16; mm -= 16)
  {
  }

  __cxa_atexit(std::multimap<NSString * {__strong},SemanticLabelv5,CompareNSString,std::allocator<std::pair<NSString * const {__strong},SemanticLabelv5>>>::~multimap[abi:ne200100], &kFloorplanClassToSemMap, &dword_25D1DB000);
  *&v153 = v135;
  DWORD2(v153) = 1051931443;
  *&v154 = v130;
  DWORD2(v154) = 1051931443;
  *&v155 = v61;
  DWORD2(v155) = 1036831949;
  *&v156 = v114;
  DWORD2(v156) = 1036831949;
  *&v157 = v110;
  DWORD2(v157) = 1041865114;
  *&v158 = v105;
  DWORD2(v158) = 1045220557;
  *&v159 = v119;
  DWORD2(v159) = 1041865114;
  *&v160 = v94;
  DWORD2(v160) = 1048576000;
  *&v161 = v100;
  DWORD2(v161) = 1036831949;
  *&v162 = v62;
  DWORD2(v162) = 1041865114;
  *&v163 = v63;
  DWORD2(v163) = 981668463;
  *&v164 = v64;
  DWORD2(v164) = 1048576000;
  *&v165 = v125;
  DWORD2(v165) = 1036831949;
  *&v166 = v65;
  DWORD2(v166) = 1041865114;
  v167 = v66;
  LODWORD(v168) = 1025758986;
  *&v169 = v148;
  DWORD2(v169) = 1048576000;
  v170 = v67;
  LODWORD(v171) = 1041865114;
  std::map<NSString * {__strong},float,CompareNSString,std::allocator<std::pair<NSString * const {__strong},float>>>::map[abi:ne200100](&kFloorplanBoxSemThresholdMap, &v153, 17);
  for (nn = 256; nn != -16; nn -= 16)
  {
  }

  __cxa_atexit(std::map<NSString * {__strong},float,CompareNSString,std::allocator<std::pair<NSString * const {__strong},float>>>::~map[abi:ne200100], &kFloorplanBoxSemThresholdMap, &dword_25D1DB000);
  objc_autoreleasePoolPop(context);
  v70 = *MEMORY[0x277D85DE8];
}

void sub_25D25728C(_Unwind_Exception *a1)
{
  for (i = 256; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t circularMean(float **a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    v11 = 0;
    v10 = 0.0;
  }

  else
  {
    v5 = 0.0;
    v6 = 0.0;
    v7 = *a1;
    do
    {
      v8 = *v7;
      if ((a2 & 1) == 0)
      {
        v8 = v8 * 3.14159265 / 180.0;
      }

      v9 = __sincosf_stret(v8);
      v5 = v5 + v9.__sinval;
      v6 = v6 + v9.__cosval;
      ++v7;
    }

    while (v7 != v3);
    v10 = atan2f(v5 / (v3 - v2), v6 / (v3 - v2));
    if ((a2 & 1) == 0)
    {
      v10 = (v10 * 180.0) / 3.14159265;
    }

    v11 = 0x100000000;
  }

  return v11 | LODWORD(v10);
}

uint64_t FindLinesIntersect@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float32x4_t a3@<Q0>, float32x4_t a4@<Q1>, float32x4_t a5@<Q2>, float32x4_t a6@<Q3>)
{
  v6 = a3;
  v6.i32[2] = 1.0;
  v7 = a4;
  v7.i32[2] = 1.0;
  v8 = a5;
  v8.i32[2] = 1.0;
  v9 = a6;
  v9.i32[2] = 1.0;
  v10 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), vnegq_f32(v6)), v7, vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL));
  v11 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
  v12 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), vnegq_f32(v8)), v9, vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL));
  v13 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
  v14 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v13, v13), v13, 0xCuLL), vnegq_f32(v11)), v13, vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL));
  if (fabsf(v14.f32[1]) < 1.0e-10)
  {
    goto LABEL_2;
  }

  v16 = v14.f32[2] / v14.f32[1];
  v17 = v14.f32[0] / v14.f32[1];
  __asm { FMOV            V4.4S, #1.0 }

  *&_Q4 = __PAIR64__(LODWORD(v17), LODWORD(v16));
  if (result)
  {
    goto LABEL_4;
  }

  v23 = (vmovn_s32(vcgtq_f32(a3, a4)).u8[0] & 1) != 0 ? a4.f32[0] : a3.f32[0];
  if (v16 < v23)
  {
    goto LABEL_2;
  }

  v24 = (vmovn_s32(vcgtq_f32(a5, a6)).u8[0] & 1) != 0 ? a6.f32[0] : a5.f32[0];
  if (v16 < v24)
  {
    goto LABEL_2;
  }

  v25 = (vmovn_s32(vcgtq_f32(a4, a3)).u8[0] & 1) != 0 ? a4.f32[0] : a3.f32[0];
  if (v16 > v25)
  {
    goto LABEL_2;
  }

  v26 = (vmovn_s32(vcgtq_f32(a6, a5)).u8[0] & 1) != 0 ? a6.f32[0] : a5.f32[0];
  if (v16 > v26)
  {
    goto LABEL_2;
  }

  a3.i32[0] = a3.i32[1];
  v27 = a4.f32[1] >= a3.f32[1] ? a3.f32[1] : a4.f32[1];
  if (v17 < v27)
  {
    goto LABEL_2;
  }

  v28 = a6.f32[1] >= a5.f32[1] ? a5.f32[1] : a6.f32[1];
  if (v17 < v28)
  {
    goto LABEL_2;
  }

  if (a3.f32[1] < a4.f32[1])
  {
    a3.f32[0] = a4.f32[1];
  }

  if (v17 <= a3.f32[0] && (a5.f32[1] >= a6.f32[1] ? (v29 = a5.f32[1]) : (v29 = a6.f32[1]), v17 <= v29))
  {
LABEL_4:
    *a2 = _Q4;
    v15 = 1;
  }

  else
  {
LABEL_2:
    v15 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v15;
  return result;
}

void FindSegmentInteractWithLine(uint64_t a1@<X8>, float32x4_t a2@<Q0>, float32x4_t a3@<Q1>, float32x4_t a4@<Q2>, int32x4_t a5@<Q3>)
{
  v5 = a2;
  v5.i32[2] = 1.0;
  v6 = a3;
  v6.i32[2] = 1.0;
  a4.i32[2] = 1.0;
  a5.i32[2] = 1.0;
  v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL), vnegq_f32(v5)), v6, vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL));
  v8 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(a5, a5), a5, 0xCuLL), vnegq_f32(a4)), a5, vextq_s8(vuzp1q_s32(a4, a4), a4, 0xCuLL));
  v10 = vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL);
  v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), vnegq_f32(v8)), v10, vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL));
  if (fabsf(v11.f32[1]) < 1.0e-10)
  {
    goto LABEL_17;
  }

  v12 = v11.f32[2] / v11.f32[1];
  v13 = v11.f32[0] / v11.f32[1];
  __asm { FMOV            V2.4S, #1.0 }

  *&_Q2 = __PAIR64__(LODWORD(v13), LODWORD(v12));
  v19 = (vmovn_s32(vcgtq_f32(a2, a3)).u8[0] & 1) != 0 ? a3.f32[0] : a2.f32[0];
  if (v12 >= v19)
  {
    v20 = (vmovn_s32(vcgtq_f32(a3, a2)).u8[0] & 1) != 0 ? a3.f32[0] : a2.f32[0];
    if (v12 <= v20)
    {
      goto LABEL_18;
    }
  }

  a2.i32[0] = a2.i32[1];
  v21 = a3.f32[1] >= a2.f32[1] ? a2.f32[1] : a3.f32[1];
  if (v13 < v21)
  {
    goto LABEL_17;
  }

  if (a2.f32[1] < a3.f32[1])
  {
    a2.f32[0] = a3.f32[1];
  }

  if (v13 <= a2.f32[0])
  {
LABEL_18:
    *a1 = _Q2;
    v22 = 1;
  }

  else
  {
LABEL_17:
    v22 = 0;
    *a1 = 0;
  }

  *(a1 + 16) = v22;
}

void OUVizTool::OUVizTool(OUVizTool *this)
{
  *this = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"com.apple.objectunderstanding.room_dev_dump"];

  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"com.apple.objectunderstanding.room_clt_dump"];

  if ((v3 | v5))
  {
    if (v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    *this = v6;
    v7 = objc_alloc_init(MEMORY[0x277CBF740]);
    v8 = *(this + 16);
    *(this + 16) = v7;

    *(this + 1) = 0;
    v9 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v9 setDateFormat:@"MM_dd_yyyy_HH_mm_ss_SSS"];
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [v9 stringFromDate:v10];

    std::string::basic_string[abi:ne200100]<0>(&v12, [v11 UTF8String]);
    if (*(this + 55) < 0)
    {
      operator delete(*(this + 4));
    }

    *(this + 2) = v12;
    *(this + 6) = v13;
    OUVizTool::MaybeReset(this);
  }
}

void sub_25D25790C(_Unwind_Exception *a1)
{
  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v4);
  }

  _Unwind_Resume(a1);
}

void OUVizTool::MaybeReset(OUVizTool *this)
{
  v28[2] = *MEMORY[0x277D85DE8];
  if (*this)
  {
    if (*this == 1)
    {
      *(&__p.__r_.__value_.__s + 23) = 14;
      strcpy(&__p, "/tmp/viz_tool/");
      v2 = *(this + 55);
      if (v2 >= 0)
      {
        v3 = this + 32;
      }

      else
      {
        v3 = *(this + 4);
      }

      if (v2 >= 0)
      {
        v4 = *(this + 55);
      }

      else
      {
        v4 = *(this + 5);
      }

      v5 = std::string::append(&__p, v3, v4);
      v6 = v5->__r_.__value_.__r.__words[0];
      v27.__r_.__value_.__r.__words[0] = v5->__r_.__value_.__l.__size_;
      *(v27.__r_.__value_.__r.__words + 7) = *(&v5->__r_.__value_.__r.__words[1] + 7);
      v7 = HIBYTE(v5->__r_.__value_.__r.__words[2]);
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      if (*(this + 79) < 0)
      {
        operator delete(*(this + 7));
      }

      v8 = v27.__r_.__value_.__r.__words[0];
      *(this + 7) = v6;
      *(this + 8) = v8;
      *(this + 71) = *(v27.__r_.__value_.__r.__words + 7);
      *(this + 79) = v7;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      OUVizTool::SetOriginalAndOnlineFolder(this);
    }

    else
    {
      *(&__p.__r_.__value_.__s + 23) = 21;
      strcpy(&__p, "/tmp/cur_scene_id.txt");
      v9 = [MEMORY[0x277CCACA8] stringWithCString:&__p encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v10 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v9 encoding:4 error:0];
      v11 = v10;
      std::string::basic_string[abi:ne200100]<0>(&__p, [v10 UTF8String]);
      if (!v10)
      {
        goto LABEL_30;
      }

      v12 = *(this + 31);
      if (v12 >= 0)
      {
        v13 = *(this + 31);
      }

      else
      {
        v13 = *(this + 2);
      }

      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (v13 != size || (v12 >= 0 ? (v16 = this + 8) : (v16 = *(this + 1)), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_p = &__p) : (p_p = __p.__r_.__value_.__r.__words[0]), memcmp(v16, p_p, v13)))
      {
LABEL_30:
        std::string::operator=((this + 8), &__p);
        *(this + 1) = 0;
        *(&v27.__r_.__value_.__s + 23) = 14;
        strcpy(&v27, "/tmp/viz_tool/");
        v18 = *(this + 31);
        if (v18 >= 0)
        {
          v19 = this + 8;
        }

        else
        {
          v19 = *(this + 1);
        }

        if (v18 >= 0)
        {
          v20 = *(this + 31);
        }

        else
        {
          v20 = *(this + 2);
        }

        v21 = std::string::append(&v27, v19, v20);
        v22 = v21->__r_.__value_.__r.__words[0];
        v28[0] = v21->__r_.__value_.__l.__size_;
        *(v28 + 7) = *(&v21->__r_.__value_.__r.__words[1] + 7);
        v23 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        if (*(this + 79) < 0)
        {
          operator delete(*(this + 7));
        }

        v24 = v28[0];
        *(this + 7) = v22;
        *(this + 8) = v24;
        *(this + 71) = *(v28 + 7);
        *(this + 79) = v23;
        if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v27.__r_.__value_.__l.__data_);
        }

        OUVizTool::SetOriginalAndOnlineFolder(this);
        v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      if (v15 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_25D257C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void OUVizTool::SetOriginalAndOnlineFolder(OUVizTool *this)
{
  v2 = this + 56;
  if (*(this + 79) >= 0)
  {
    v3 = *(this + 79);
  }

  else
  {
    v3 = *(this + 8);
  }

  v4 = &v11;
  std::string::basic_string[abi:ne200100](&v11, v3 + 10);
  if (v12 < 0)
  {
    v4 = v11;
  }

  if (v3)
  {
    if (*(this + 79) >= 0)
    {
      v5 = v2;
    }

    else
    {
      v5 = *(this + 7);
    }

    memmove(v4, v5, v3);
  }

  strcpy(v4 + v3, "/original/");
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  *(this + 5) = v11;
  *(this + 12) = v12;
  if (*(this + 79) >= 0)
  {
    v6 = *(this + 79);
  }

  else
  {
    v6 = *(this + 8);
  }

  v7 = &v11;
  v8 = std::string::basic_string[abi:ne200100](&v11, v6 + 8);
  if (v12 < 0)
  {
    v7 = v11;
  }

  if (v6)
  {
    if (*(this + 79) >= 0)
    {
      v9 = v2;
    }

    else
    {
      v9 = *(this + 7);
    }

    v8 = memmove(v7, v9, v6);
  }

  strcpy(v7 + v6, "/online/");
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  *(this + 104) = v11;
  *(this + 15) = v12;
  OUVizTool::CreateDirectory(v8, this + 10);
  OUVizTool::CreateDirectory(v10, this + 13);
}

void OUVizTool::CreateDirectory(uint64_t a1, uint64_t *a2)
{
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a2 + 23);
  v5 = *a2;
  v6 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = v5;
  }

  v8 = [v3 stringWithCString:v7 encoding:v6];
  [v9 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];
}

void OUVizTool::SaveObjects(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v72[3] = *MEMORY[0x277D85DE8];
  v55 = a3;
  v7 = a4;
  if (*a1 == 1)
  {
    v54 = v7;
    OUVizTool::MaybeReset(a1);
    if (*(a1 + 79) >= 0)
    {
      v8 = *(a1 + 79);
    }

    else
    {
      v8 = *(a1 + 64);
    }

    std::string::basic_string[abi:ne200100](&v57, v8 + 1);
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v57;
    }

    else
    {
      v9 = v57.__r_.__value_.__r.__words[0];
    }

    if (v8)
    {
      if (*(a1 + 79) >= 0)
      {
        v10 = (a1 + 56);
      }

      else
      {
        v10 = *(a1 + 56);
      }

      memmove(v9, v10, v8);
    }

    *(&v9->__r_.__value_.__l.__data_ + v8) = 47;
    std::to_string(&v56, *(a1 + 4));
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v56;
    }

    else
    {
      v11 = v56.__r_.__value_.__r.__words[0];
    }

    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v56.__r_.__value_.__l.__size_;
    }

    v13 = std::string::append(&v57, v11, size);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v58, "/", 1uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = *(a2 + 23);
    if (v17 >= 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = *a2;
    }

    if (v17 >= 0)
    {
      v19 = *(a2 + 23);
    }

    else
    {
      v19 = *(a2 + 8);
    }

    v20 = std::string::append(&v59, v18, v19);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(&v60, ".json", 5uLL);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v62 = v22->__r_.__value_.__r.__words[2];
    *__p = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    v24 = MEMORY[0x277CCACA8];
    v25 = SHIBYTE(v62);
    v26 = __p[0];
    v27 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
    if (v25 >= 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = v26;
    }

    v52 = [v24 stringWithCString:v28 encoding:v27];
    v29 = [v55 count];
    v53 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v55, "count")}];
    if (v29 >= 1)
    {
      v30 = 0;
      v31 = v29 & 0x7FFFFFFF;
      do
      {
        v32 = [v55 objectAtIndexedSubscript:v30];
        if ([v32 hasBoxesDict:v54])
        {
          v33 = [v32 boxesDict];
          v34 = [v33 objectForKeyedSubscript:v54];

          v35 = MEMORY[0x277CCACA8];
          [v32 confidence];
          v37 = [v35 stringWithFormat:@"%.03f", v36];
          v71[0] = @"uuid";
          v38 = [v32 identifier];
          v39 = [v38 UUIDString];
          v72[0] = v39;
          v72[1] = v37;
          v71[1] = @"confidence";
          v71[2] = @"parts";
          v40 = [v32 parts];
          v41 = [v40 allKeys];
          v72[2] = v41;
          v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:3];

          v69[0] = @"id";
          v43 = [MEMORY[0x277CCABB0] numberWithInt:v30];
          v70[0] = v43;
          v70[1] = v34;
          v69[1] = @"bbox";
          v69[2] = @"type";
          v44 = [v55 objectAtIndexedSubscript:v30];
          v45 = [v44 type];
          v69[3] = @"attributes";
          v70[2] = v45;
          v70[3] = v42;
          v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:4];

          [v53 addObject:v46];
        }

        ++v30;
      }

      while (v31 != v30);
    }

    v67 = @"bbox";
    v68 = v53;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    v65 = @"data";
    v66 = v47;
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v63 = @"data";
    v64 = v48;
    v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    v50 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v49 options:1 error:0];
    [v50 writeToFile:v52 atomically:1];

    if (SHIBYTE(v62) < 0)
    {
      operator delete(__p[0]);
    }

    v7 = v54;
  }

  v51 = *MEMORY[0x277D85DE8];
}

void sub_25D25848C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a53 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void OUVizTool::SaveBoxes(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = rawBoxesToObjects(a3, 1u);
  OUVizTool::SaveObjects(a1, a2, v5, @"rawdetection");
}

void OUVizTool::SaveARFrameImage(OUVizTool *this, __CVBuffer *a2)
{
  if (*this)
  {
    std::to_string(&v11, *(this + 1));
    v4 = *(this + 103);
    if (v4 >= 0)
    {
      v5 = this + 80;
    }

    else
    {
      v5 = *(this + 10);
    }

    if (v4 >= 0)
    {
      v6 = *(this + 103);
    }

    else
    {
      v6 = *(this + 11);
    }

    v7 = std::string::insert(&v11, 0, v5, v6);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v12.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v12.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v12, ".png", 4uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v14 = v9->__r_.__value_.__r.__words[2];
    v13 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    OUVizTool::SaveCVPixelBufferInternal(this, &v13, a2);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13);
    }
  }
}

void sub_25D2587A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  _Unwind_Resume(exception_object);
}

void OUVizTool::SaveCVPixelBufferInternal(OUVizTool *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1)
  {
    OUVizTool::MaybeReset(a1);
    v6 = *MEMORY[0x277CBF970];
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v8 = *(a1 + 16);

    utils::WriteToTiff(a3, a2, v6, DeviceRGB, v8);
  }
}

void OUVizTool::SaveObjectImageCrop(OUVizTool *this, OU3DObject *a2, __CVBuffer *a3)
{
  v5 = a2;
  v6 = v5;
  if (*this)
  {
    v7 = [(OU3DObject *)v5 identifier];
    v8 = [v7 UUIDString];
    std::string::basic_string[abi:ne200100]<0>(&__str, [v8 UTF8String]);

    std::string::basic_string(&v34, &__str, 0, 8uLL, &__p);
    v9 = *(this + 127);
    if (v9 >= 0)
    {
      v10 = this + 104;
    }

    else
    {
      v10 = *(this + 13);
    }

    if (v9 >= 0)
    {
      v11 = *(this + 127);
    }

    else
    {
      v11 = *(this + 14);
    }

    v12 = std::string::insert(&v34, 0, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(&__p, "_");
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v16 = std::string::append(&v35, p_p, size);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = [(OU3DObject *)v6 type];
    v19 = [v18 UTF8String];
    v20 = strlen(v19);
    v21 = std::string::append(&v36, v19, v20);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v38 = v21->__r_.__value_.__r.__words[2];
    v37 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    OUVizTool::CreateDirectory(v23, &v37);
    if (v38 >= 0)
    {
      v24 = HIBYTE(v38);
    }

    else
    {
      v24 = *(&v37 + 1);
    }

    v25 = &v34;
    std::string::basic_string[abi:ne200100](&v34, v24 + 1);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v25 = v34.__r_.__value_.__r.__words[0];
    }

    if (v24)
    {
      if (v38 >= 0)
      {
        v26 = &v37;
      }

      else
      {
        v26 = v37;
      }

      memmove(v25, v26, v24);
    }

    *(&v25->__r_.__value_.__l.__data_ + v24) = 47;
    std::to_string(&__p, *(this + 1));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &__p;
    }

    else
    {
      v27 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v28 = __p.__r_.__value_.__l.__size_;
    }

    v29 = std::string::append(&v34, v27, v28);
    v30 = *&v29->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    v31 = std::string::append(&v35, "_cropped.png", 0xCuLL);
    v32 = *&v31->__r_.__value_.__l.__data_;
    v36.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
    *&v36.__r_.__value_.__l.__data_ = v32;
    v31->__r_.__value_.__l.__size_ = 0;
    v31->__r_.__value_.__r.__words[2] = 0;
    v31->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    OUVizTool::SaveCVPixelBufferInternal(this, &v36, a3);
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(v37);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

void sub_25D258B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (*(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  if (*(v34 - 49) < 0)
  {
    operator delete(*(v34 - 72));
  }

  _Unwind_Resume(a1);
}

void OUVizTool::SavePointCloudInternal(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = fopen(v4, "w");
  if (v5)
  {
    v6 = v5;
    v7 = *a3;
    v8 = a3[1];
    v9 = (v8 - *a3) >> 4;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v65, v7, v8, v9);
    v63 = 0uLL;
    v64 = 0;
    memset(&v62, 0, sizeof(v62));
    if (v9 < 0xC351)
    {
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(&v63, v65, v66, (v66 - v65) >> 4);
      std::to_string(&v68, v9);
      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      v62 = v68;
    }

    else
    {
      utils::Resample(v9, 0xC350uLL, &v59);
      v58 = 0;
      v57 = 0uLL;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&v57, (v60 - v59) >> 3);
      v10 = v59;
      v11 = v60;
      memset(&v68, 0, sizeof(v68));
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v68, v65, v66, (v66 - v65) >> 4);
      if (v10 != v11)
      {
        v12 = *(&v57 + 1);
        do
        {
          if (v12 >= v58)
          {
            v13 = (v12 - v57) >> 4;
            if ((v13 + 1) >> 60)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v14 = (v58 - v57) >> 3;
            if (v14 <= v13 + 1)
            {
              v14 = v13 + 1;
            }

            if (v58 - v57 >= 0x7FFFFFFFFFFFFFF0)
            {
              v15 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v15 = v14;
            }

            if (v15)
            {
              _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&v57, v15);
            }

            *(16 * v13) = *(v68.__r_.__value_.__r.__words[0] + 16 * *v10);
            v12 = (16 * v13 + 16);
            v16 = (16 * v13 - (*(&v57 + 1) - v57));
            memcpy(v16, v57, *(&v57 + 1) - v57);
            v17 = v57;
            *&v57 = v16;
            *(&v57 + 1) = v12;
            v58 = 0;
            if (v17)
            {
              operator delete(v17);
            }
          }

          else
          {
            *v12++ = *(v68.__r_.__value_.__r.__words[0] + 16 * *v10);
          }

          *(&v57 + 1) = v12;
          ++v10;
        }

        while (v10 != v11);
      }

      if (v68.__r_.__value_.__r.__words[0])
      {
        v68.__r_.__value_.__l.__size_ = v68.__r_.__value_.__r.__words[0];
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (v63)
      {
        *(&v63 + 1) = v63;
        operator delete(v63);
      }

      v63 = v57;
      v64 = v58;
      std::to_string(&v68, 0xC350uLL);
      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      v62 = v68;
      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v68, "ply");
    std::string::basic_string[abi:ne200100]<0>(&v59, "format ascii 1.0");
    std::operator+<char>();
    std::string::basic_string[abi:ne200100]<0>(v55, "property float x");
    std::string::basic_string[abi:ne200100]<0>(v53, "property float y");
    std::string::basic_string[abi:ne200100]<0>(v51, "property float z");
    std::string::basic_string[abi:ne200100]<0>(v49, "end_header");
    v18 = &v68;
    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v68.__r_.__value_.__r.__words[0];
    }

    fprintf(v6, "%s\n", v18);
    v19 = &v59;
    if (v61 < 0)
    {
      v19 = v59;
    }

    fprintf(v6, "%s\n", v19);
    v20 = &v57;
    if ((v58 & 0x8000000000000000) != 0)
    {
      v20 = v57;
    }

    fprintf(v6, "%s\n", v20);
    v21 = v55;
    if (v56 < 0)
    {
      v21 = v55[0];
    }

    fprintf(v6, "%s\n", v21);
    v22 = v53;
    if (v54 < 0)
    {
      v22 = v53[0];
    }

    fprintf(v6, "%s\n", v22);
    v23 = v51;
    if (v52 < 0)
    {
      v23 = v51[0];
    }

    fprintf(v6, "%s\n", v23);
    if (v50 >= 0)
    {
      v24 = v49;
    }

    else
    {
      v24 = v49[0];
    }

    fprintf(v6, "%s\n", v24);
    v25 = v63;
    if (*(&v63 + 1) != v63)
    {
      v26 = 0;
      do
      {
        v40 = *(v25 + 16 * v26);
        std::to_string(&v43, *&v40);
        v27 = std::string::append(&v43, " ", 1uLL);
        v28 = *&v27->__r_.__value_.__l.__data_;
        v44.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
        *&v44.__r_.__value_.__l.__data_ = v28;
        v27->__r_.__value_.__l.__size_ = 0;
        v27->__r_.__value_.__r.__words[2] = 0;
        v27->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v42, *(&v40 + 1));
        if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v42;
        }

        else
        {
          v29 = v42.__r_.__value_.__r.__words[0];
        }

        if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v42.__r_.__value_.__l.__size_;
        }

        v31 = std::string::append(&v44, v29, size);
        v32 = *&v31->__r_.__value_.__l.__data_;
        v45.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
        *&v45.__r_.__value_.__l.__data_ = v32;
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        v33 = std::string::append(&v45, " ", 1uLL);
        v34 = *&v33->__r_.__value_.__l.__data_;
        v46.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
        *&v46.__r_.__value_.__l.__data_ = v34;
        v33->__r_.__value_.__l.__size_ = 0;
        v33->__r_.__value_.__r.__words[2] = 0;
        v33->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v41, *(&v40 + 2));
        if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &v41;
        }

        else
        {
          v35 = v41.__r_.__value_.__r.__words[0];
        }

        if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v36 = v41.__r_.__value_.__l.__size_;
        }

        v37 = std::string::append(&v46, v35, v36);
        v38 = *&v37->__r_.__value_.__l.__data_;
        v48 = v37->__r_.__value_.__r.__words[2];
        __p = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v42.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }

        if (v48 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        fprintf(v6, "%s\n", p_p);
        if (SHIBYTE(v48) < 0)
        {
          operator delete(__p);
        }

        ++v26;
        v25 = v63;
      }

      while (v26 < (*(&v63 + 1) - v63) >> 4);
    }

    fclose(v6);
    if (v50 < 0)
    {
      operator delete(v49[0]);
    }

    if (v52 < 0)
    {
      operator delete(v51[0]);
    }

    if (v54 < 0)
    {
      operator delete(v53[0]);
    }

    if (v56 < 0)
    {
      operator delete(v55[0]);
    }

    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57);
    }

    if (v61 < 0)
    {
      operator delete(v59);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (v63)
    {
      *(&v63 + 1) = v63;
      operator delete(v63);
    }

    if (v65)
    {
      v66 = v65;
      operator delete(v65);
    }
  }
}

void sub_25D2592E8(_Unwind_Exception *a1)
{
  v3 = *(v1 - 216);
  if (v3)
  {
    *(v1 - 208) = v3;
    operator delete(v3);
  }

  if (*(v1 - 169) < 0)
  {
    operator delete(*(v1 - 192));
  }

  v4 = *(v1 - 160);
  if (v4)
  {
    *(v1 - 152) = v4;
    operator delete(v4);
  }

  v5 = *(v1 - 128);
  if (v5)
  {
    *(v1 - 120) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void OUVizTool::SaveObjectPointCloud(OUVizTool *a1, void *a2, uint64_t *a3)
{
  v5 = a2;
  if (!*a1)
  {
    goto LABEL_38;
  }

  OUVizTool::MaybeReset(a1);
  v6 = [v5 identifier];
  v7 = [v6 UUIDString];
  std::string::basic_string[abi:ne200100]<0>(&__str, [v7 UTF8String]);

  std::string::basic_string(&v32, &__str, 0, 8uLL, __p);
  v10 = *(a1 + 13);
  v9 = a1 + 104;
  v8 = v10;
  v11 = v9[23];
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = *(v9 + 23);
  }

  else
  {
    v13 = *(v9 + 1);
  }

  v14 = std::string::insert(&v32, 0, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "_");
  if ((v31 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v17 = v31;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(&v33, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = [v5 type];
  v21 = [v20 UTF8String];
  v22 = strlen(v21);
  v23 = std::string::append(&v34, v21, v22);
  v35 = *v23;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v24 = SHIBYTE(v35.__r_.__value_.__r.__words[2]);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v35.__r_.__value_.__l.__size_;
  }

  v26 = &v33;
  std::string::basic_string[abi:ne200100](&v33, size + 1);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v26 = v33.__r_.__value_.__r.__words[0];
  }

  if (size)
  {
    if (v24 >= 0)
    {
      v27 = &v35;
    }

    else
    {
      v27 = v35.__r_.__value_.__r.__words[0];
    }

    memmove(v26, v27, size);
  }

  *(&v26->__r_.__value_.__l.__data_ + size) = 47;
  v28 = std::string::append(&v33, "obj.ply", 7uLL);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  OUVizTool::SavePointCloudInternal(v28, &v34, a3);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }
  }

  else if ((v24 & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(v35.__r_.__value_.__l.__data_);
LABEL_36:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_38:
}

void sub_25D25974C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (v34 < 0)
  {
    operator delete(*(v35 - 96));
  }

  if (*(v35 - 49) < 0)
  {
    operator delete(*(v35 - 72));
  }

  _Unwind_Resume(a1);
}

void OUVizTool::StartNewFrame(OUVizTool *this)
{
  if (*this)
  {
    ++*(this + 1);
    OUVizTool::MaybeReset(this);
    if (*this == 1)
    {
      if (*(this + 79) >= 0)
      {
        v2 = *(this + 79);
      }

      else
      {
        v2 = *(this + 8);
      }

      v3 = &v12;
      std::string::basic_string[abi:ne200100](&v12, v2 + 1);
      if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v3 = v12.__r_.__value_.__r.__words[0];
      }

      if (v2)
      {
        if (*(this + 79) >= 0)
        {
          v4 = this + 56;
        }

        else
        {
          v4 = *(this + 7);
        }

        memmove(v3, v4, v2);
      }

      *(&v3->__r_.__value_.__l.__data_ + v2) = 47;
      std::to_string(&__p, *(this + 1));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v7 = std::string::append(&v12, p_p, size);
      v8 = *&v7->__r_.__value_.__l.__data_;
      v13.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&v13.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      v9 = std::string::append(&v13, "/", 1uLL);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v15 = v9->__r_.__value_.__r.__words[2];
      v14 = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }

      OUVizTool::CreateDirectory(v9, &v14);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14);
      }
    }
  }
}

void sub_25D2599AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_25D25A054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEE6resizeEm(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEE8__appendEm(a1, a2 - v2);
  }
}

void sub_25D25A5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id OUPointCloudToDictionary(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v1, "count")}];
  [v2 setObject:v3 forKeyedSubscript:@"count"];

  v4 = [v1 points];
  v5 = [v1 points];
  v6 = [v1 count];
  v45 = 0;
  v46 = 0;
  v47 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&v45, v4, v5 + 16 * v6, (v5 + 16 * v6 - v4) >> 4);
  std::vector<float>::vector[abi:ne200100](&v43, ((v46 - v45) >> 3) + ((v46 - v45) >> 4));
  v7 = v45;
  if (v46 != v45)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = v43 + v8;
      v12 = &v7[v9];
      v13 = *v12;
      *(v11 + 2) = *(v12 + 2);
      *v11 = v13;
      ++v10;
      v7 = v45;
      v9 += 16;
      v8 += 12;
    }

    while (v10 < (v46 - v45) >> 4);
  }

  if (v44 == v43)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  else
  {
    v14 = [MEMORY[0x277CBEA90] dataWithBytes:v43 length:v44 - v43];
  }

  v15 = v14;
  [v2 setObject:v14 forKeyedSubscript:@"points"];

  v16 = [v1 semanticLabels];
  v17 = [v1 count];
  if (v16 && v17)
  {
    v18 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:4 * v17];
  }

  else
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v19 = v18;
  [v2 setObject:v18 forKeyedSubscript:@"semanticLabels"];

  v20 = [v1 semanticVotes];
  v21 = [v1 count];
  if (v20 && v21)
  {
    v22 = [MEMORY[0x277CBEA90] dataWithBytes:v20 length:8 * v21];
  }

  else
  {
    v22 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v23 = v22;
  [v2 setObject:v22 forKeyedSubscript:@"semanticVotes"];

  v24 = [v1 colors];
  v25 = [v1 colors];
  v26 = [v1 count];
  v40 = 0;
  v41 = 0;
  v42 = 0;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&v40, v24, v25 + 16 * v26, (v25 + 16 * v26 - v24) >> 4);
  std::vector<float>::vector[abi:ne200100](&__p, ((v41 - v40) >> 3) + ((v41 - v40) >> 4));
  v27 = v40;
  if (v41 != v40)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    do
    {
      v31 = __p + v28;
      v32 = &v27[v29];
      v33 = *v32;
      *(v31 + 2) = *(v32 + 2);
      *v31 = v33;
      ++v30;
      v27 = v40;
      v29 += 16;
      v28 += 12;
    }

    while (v30 < (v41 - v40) >> 4);
  }

  if (v39 == __p)
  {
    v34 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  else
  {
    v34 = [MEMORY[0x277CBEA90] dataWithBytes:__p length:v39 - __p];
  }

  v35 = v34;
  [v2 setObject:v34 forKeyedSubscript:@"colors"];

  v36 = v2;
  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  return v36;
}

void sub_25D25AA30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  v22 = v21;

  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

OUPointCloud *OUPointCloudFromDictionary(void *a1)
{
  v1 = a1;
  v2 = [[OUPointCloud alloc] initWithDictionary:v1];

  return v2;
}

void _ZNSt3__16vectorIDv4_hNS_9allocatorIS1_EEE8__appendEm(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 2);
    if (v7 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v9);
    }

    v10 = (4 * (v6 >> 2));
    bzero(v10, 4 * a2);
    v11 = &v10[4 * a2];
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

void sub_25D25B0D4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

uint64_t ou3dor::OU3DOROnlineEspressoV2::GetOutputInternal<half>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 232))
  {
    v3 = *(*(result + 160) + 40);
    Width = CVPixelBufferGetWidth(v3);
    Height = CVPixelBufferGetHeight(v3);
    v6 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      ou3dor::OU3DOROnlineEspressoV2::GetOutputInternal<half>();
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      ou3dor::OU3DOROnlineEspressoV2::GetOutputInternal<half>();
    }

    v7 = Height * Width;

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      ou3dor::OU3DOROnlineEspressoV2::GetOutputInternal<half>();
    }

    CVPixelBufferLockBaseAddress(v3, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(v3);
    std::vector<float>::vector[abi:ne200100](&v17, v7);
    if (v7)
    {
      v9 = v17;
      do
      {
        v10 = *BaseAddress++;
        _H0 = v10;
        __asm { FCVT            S0, H0 }

        *v9++ = _S0;
        --v7;
      }

      while (v7);
    }

    result = CVPixelBufferUnlockBaseAddress(v3, 1uLL);
    *a2 = v17;
    *(a2 + 16) = v18;
    *(a2 + 24) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

void sub_25D25B440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ou3dor::OU3DOROnlineEspressoV2::GetOutputInternal<float>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 232))
  {
    v3 = *(*(result + 160) + 40);
    Width = CVPixelBufferGetWidth(v3);
    Height = CVPixelBufferGetHeight(v3);
    v6 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      ou3dor::OU3DOROnlineEspressoV2::GetOutputInternal<half>();
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      ou3dor::OU3DOROnlineEspressoV2::GetOutputInternal<half>();
    }

    v7 = Height * Width;

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      ou3dor::OU3DOROnlineEspressoV2::GetOutputInternal<half>();
    }

    CVPixelBufferLockBaseAddress(v3, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(v3);
    std::vector<float>::vector[abi:ne200100](&v11, v7);
    if (v7)
    {
      v9 = v11;
      do
      {
        v10 = *BaseAddress++;
        *v9++ = v10;
        --v7;
      }

      while (v7);
    }

    result = CVPixelBufferUnlockBaseAddress(v3, 1uLL);
    *a2 = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

void sub_25D25B5A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ou3dor::OU3DOROnlineEspressoV2::SetInputInternal<half>(uint64_t a1, CVPixelBufferRef pixelBuffer)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 233) & 1) == 0)
  {
    v24 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      ou3dor::OU3DOROnlineEspressoV2::SetInputInternal<half>();
    }

    goto LABEL_25;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v6 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v27 = 134217984;
    v28 = Width;
    _os_log_impl(&dword_25D1DB000, v6, OS_LOG_TYPE_INFO, "[3DOR] input image shape w %lu", &v27, 0xCu);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v27 = 134217984;
    v28 = Height;
    _os_log_impl(&dword_25D1DB000, v6, OS_LOG_TYPE_INFO, "[3DOR] input image tensor shape h %lu", &v27, 0xCu);
  }

  if (CVPixelBufferGetPixelFormatType(pixelBuffer) != 1111970369)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ou3dor::OU3DOROnlineEspressoV2::SetInputInternal<half>();
    }

    goto LABEL_24;
  }

  if (Width != 224 || Height != 224)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ou3dor::OU3DOROnlineEspressoV2::SetInputInternal<half>();
    }

    goto LABEL_24;
  }

  kdebug_trace();
  v7 = *(*(a1 + 120) + 40);
  v8 = CVPixelBufferGetHeight(v7);
  if (CVPixelBufferGetWidth(v7) * v8 - 150528 >= 3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ou3dor::OU3DOROnlineEspressoV2::SetInputInternal<half>();
    }

LABEL_24:

LABEL_25:
    v23 = 0;
    goto LABEL_26;
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(v7, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  v10 = CVPixelBufferGetBaseAddress(v7);
  v14 = 0;
  v15 = v10 + 100352;
  v16 = v10 + 50176;
  do
  {
    v17 = 224;
    do
    {
      LOBYTE(_S7) = BaseAddress[2];
      _S7 = ((LODWORD(_S7) * 0.0039216) + -0.485) * 4.3668;
      LOBYTE(_S16) = BaseAddress[1];
      _S16 = ((LODWORD(_S16) * 0.0039216) + -0.456) * 4.4643;
      LOBYTE(v13) = *BaseAddress;
      v13 = (LODWORD(v13) * 0.0039216) + -0.406;
      __asm { FCVT            H7, S7 }

      *v10++ = LOWORD(_S7);
      __asm { FCVT            H7, S16 }

      *v16++ = LOWORD(_S7);
      _S7 = v13 * 4.4444;
      __asm { FCVT            H7, S7 }

      *v15++ = LOWORD(_S7);
      BaseAddress += 4;
      --v17;
    }

    while (v17);
    ++v14;
  }

  while (v14 != 224);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferUnlockBaseAddress(v7, 0);
  *(a1 + 232) = 1;
  kdebug_trace();
  v23 = *(a1 + 232);
LABEL_26:
  v25 = *MEMORY[0x277D85DE8];
  return v23 & 1;
}

uint64_t ou3dor::OU3DOROnlineEspressoV2::SetInputInternal<float>(uint64_t a1, CVPixelBufferRef pixelBuffer)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 233) & 1) == 0)
  {
    v19 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      ou3dor::OU3DOROnlineEspressoV2::SetInputInternal<half>();
    }

    goto LABEL_25;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v6 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v22 = 134217984;
    v23 = Width;
    _os_log_impl(&dword_25D1DB000, v6, OS_LOG_TYPE_INFO, "[3DOR] input image shape w %lu", &v22, 0xCu);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v22 = 134217984;
    v23 = Height;
    _os_log_impl(&dword_25D1DB000, v6, OS_LOG_TYPE_INFO, "[3DOR] input image tensor shape h %lu", &v22, 0xCu);
  }

  if (CVPixelBufferGetPixelFormatType(pixelBuffer) != 1111970369)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ou3dor::OU3DOROnlineEspressoV2::SetInputInternal<half>();
    }

    goto LABEL_24;
  }

  if (Width != 224 || Height != 224)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ou3dor::OU3DOROnlineEspressoV2::SetInputInternal<half>();
    }

    goto LABEL_24;
  }

  kdebug_trace();
  v7 = *(*(a1 + 120) + 40);
  v8 = CVPixelBufferGetHeight(v7);
  if (CVPixelBufferGetWidth(v7) * v8 - 150528 >= 3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ou3dor::OU3DOROnlineEspressoV2::SetInputInternal<half>();
    }

LABEL_24:

LABEL_25:
    v18 = 0;
    goto LABEL_26;
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(v7, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  v10 = CVPixelBufferGetBaseAddress(v7);
  v14 = 0;
  v15 = v10 + 401408;
  v16 = v10 + 200704;
  do
  {
    v17 = 0;
    do
    {
      LOBYTE(v11) = BaseAddress[v17 + 2];
      v11 = ((LODWORD(v11) * 0.0039216) + -0.485) * 4.3668;
      LOBYTE(v12) = BaseAddress[v17 + 1];
      v12 = ((LODWORD(v12) * 0.0039216) + -0.456) * 4.4643;
      LOBYTE(v13) = BaseAddress[v17];
      v13 = ((LODWORD(v13) * 0.0039216) + -0.406) * 4.4444;
      *&v10[v17] = v11;
      *&v16[v17] = v12;
      *&v15[v17] = v13;
      v17 += 4;
    }

    while (v17 != 896);
    ++v14;
    v10 += v17;
    BaseAddress += v17;
    v15 += v17;
    v16 += v17;
  }

  while (v14 != 224);
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferUnlockBaseAddress(v7, 0);
  *(a1 + 232) = 1;
  kdebug_trace();
  v18 = *(a1 + 232);
LABEL_26:
  v20 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

void ou3dor::OU3DOROnlineEspressoV2::~OU3DOROnlineEspressoV2(ou3dor::OU3DOROnlineEspressoV2 *this)
{
  ou3dor::OU3DOREspressoV2Interface::~OU3DOREspressoV2Interface(this);

  JUMPOUT(0x25F894DE0);
}

void *ou3dor::OU3DOROnlineEspressoV2::OU3DOROnlineEspressoV2(ou3dor::OU3DOROnlineEspressoV2 *this)
{
  result = ou3dor::OU3DOREspressoV2Interface::OU3DOREspressoV2Interface(this, v2);
  *result = &unk_286EBC5B8;
  return result;
}

{
  result = ou3dor::OU3DOREspressoV2Interface::OU3DOREspressoV2Interface(this, v2);
  *result = &unk_286EBC5B8;
  return result;
}

void ou3dor::OU3DOROnlineEspressoV2::SetInput(ou3dor::OU3DOROnlineEspressoV2 *this, __CVBuffer *a2)
{
  if (CVPixelBufferGetPixelFormatType(*(*(this + 15) + 40)) == 1278226536)
  {

    ou3dor::OU3DOROnlineEspressoV2::SetInputInternal<half>();
  }

  ou3dor::OU3DOROnlineEspressoV2::SetInputInternal<float>();
}

uint64_t ou3dor::OU3DOROnlineEspressoV2::GetOutput@<X0>(uint64_t this@<X0>, _BYTE *a2@<X8>)
{
  if (*(this + 232))
  {
    if (CVPixelBufferGetPixelFormatType(*(*(this + 160) + 40)) == 1278226536)
    {

      ou3dor::OU3DOROnlineEspressoV2::GetOutputInternal<half>();
    }

    ou3dor::OU3DOROnlineEspressoV2::GetOutputInternal<float>();
  }

  *a2 = 0;
  a2[24] = 0;
  return this;
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t _OULoggingGetOSLogForCategoryObjectUnderstanding()
{
  if (_OULoggingGetOSLogForCategoryObjectUnderstanding_onceToken != -1)
  {
    _OULoggingGetOSLogForCategoryObjectUnderstanding_cold_1();
  }

  return _OULoggingGetOSLogForCategoryObjectUnderstanding_oslog;
}

uint64_t _OULoggingGetOSLogForCategoryKeyframeAccumulation()
{
  if (_OULoggingGetOSLogForCategoryKeyframeAccumulation_onceToken != -1)
  {
    _OULoggingGetOSLogForCategoryKeyframeAccumulation_cold_1();
  }

  return _OULoggingGetOSLogForCategoryKeyframeAccumulation_oslog;
}

uint64_t _OULoggingGetOSLogForCategoryPointCloud()
{
  if (_OULoggingGetOSLogForCategoryPointCloud_onceToken != -1)
  {
    _OULoggingGetOSLogForCategoryPointCloud_cold_1();
  }

  return _OULoggingGetOSLogForCategoryPointCloud_oslog;
}

uint64_t _OULoggingGetOSLogForCategoryPostProcess()
{
  if (_OULoggingGetOSLogForCategoryPostProcess_onceToken != -1)
  {
    _OULoggingGetOSLogForCategoryPostProcess_cold_1();
  }

  return _OULoggingGetOSLogForCategoryPostProcess_oslog;
}

uint64_t _OULoggingGetOSLogForCategoryOnlineOD()
{
  if (_OULoggingGetOSLogForCategoryOnlineOD_onceToken != -1)
  {
    _OULoggingGetOSLogForCategoryOnlineOD_cold_1();
  }

  return _OULoggingGetOSLogForCategoryOnlineOD_oslog;
}

uint64_t _OULoggingGetOSLogForCategoryOfflineOD()
{
  if (_OULoggingGetOSLogForCategoryOfflineOD_onceToken != -1)
  {
    _OULoggingGetOSLogForCategoryOfflineOD_cold_1();
  }

  return _OULoggingGetOSLogForCategoryOfflineOD_oslog;
}

uint64_t _OULoggingGetOSLogForCategoryOUSession()
{
  if (_OULoggingGetOSLogForCategoryOUSession_onceToken != -1)
  {
    _OULoggingGetOSLogForCategoryOUSession_cold_1();
  }

  return _OULoggingGetOSLogForCategoryOUSession_oslog;
}

uint64_t _OULoggingGetOSLogForCategoryRGBRefinement()
{
  if (_OULoggingGetOSLogForCategoryRGBRefinement_onceToken != -1)
  {
    _OULoggingGetOSLogForCategoryRGBRefinement_cold_1();
  }

  return _OULoggingGetOSLogForCategoryRGBRefinement_oslog;
}

void OU3DObjectRGBSizeRefiner::OU3DObjectRGBSizeRefiner(OU3DObjectRGBSizeRefiner *this, const OU3DObjectRGBSizeRefinerParams *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  v4 = *a2;
  *(this + 52) = *(a2 + 12);
  *(this + 40) = v4;
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = *(a2 + 2);
    *(this + 11) = *(a2 + 6);
    *(this + 72) = v5;
  }

  v6 = *(a2 + 56);
  *(this + 108) = *(a2 + 68);
  *(this + 6) = v6;
  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((this + 128), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v7 = *(a2 + 88);
    *(this + 18) = *(a2 + 13);
    *(this + 8) = v7;
  }

  v8 = *(a2 + 14);
  *(this + 26) = 0;
  *(this + 25) = this + 208;
  v9 = this + 200;
  *(v9 - 3) = 0;
  *(v9 - 4) = v9 - 24;
  *(v9 - 6) = v8;
  *(v9 - 5) = 0;
  *(v9 - 2) = 0;
  *(v9 - 1) = 0;
  *(v9 + 2) = 0;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = 0u;
  *(v9 + 120) = 0u;
  *(v9 + 17) = 0;
  *(v9 + 18) = vdiv_f32(vcvt_f32_s32(*(a2 + 12)), vcvt_f32_s32(*(a2 + 20)));
  *(v9 + 38) = 2139095039;
  operator new();
}

void sub_25D25C6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (*(v12 + 95) < 0)
  {
    v14 = a12;
    operator delete(*(a12 + 72));
  }

  else
  {
    v14 = a12;
  }

  v15 = *(a12 + 8);
  if (v15)
  {
    *(a12 + 16) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

float OU3DObjectRGBSizeRefiner::ComputeSemanticRatio(OU3DObjectRGBSizeRefiner *this, const box3d *a2, const simd_float3x3 *a3, const simd_float4x4 *a4)
{
  *v6.i64 = OU3DObjectRGBSizeRefiner::GenerateProjectionMatrix(this, a3, a4);
  v31.columns[0] = v6;
  v31.columns[1] = v7;
  v31.columns[2] = v8;
  v31.columns[3] = v9;
  OU3DObjectRGBSizeRefiner::ProjectToImage(this, &v31, a2, v28);
  OU::ConvexHull(v28, 0, &v21);
  if ((v24 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  *__p = v21;
  v26 = v22;
  v27 = v23;
  *&v21 = a2 + 128;
  v10 = *(std::__tree<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>(this + 168, a2 + 16)[5] + 144);
  CVPixelBufferLockBaseAddress(v10, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(v10);
  v13 = OU::area(__p, v12);
  v14 = 0.0;
  if (v13 >= 0.001)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = 0;
      v18 = BaseAddress;
      do
      {
        *&v19 = v15;
        *(&v19 + 1) = v17;
        *&v21 = v19;
        if ((OU::Polygon::PointInsidePolygon(__p, &v21) & 1) != 0 && *v18)
        {
          ++v16;
        }

        ++v17;
        v18 += 256;
      }

      while (v17 != 192);
      ++v15;
      ++BaseAddress;
    }

    while (v15 != 256);
    CVPixelBufferUnlockBaseAddress(v10, 0);
    v14 = v16 / v13;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v30)
  {
    operator delete(v30);
  }

  if (v29)
  {
    operator delete(v29);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  return v14;
}

void sub_25D25CAB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  OU3DObjectRGBSizeRefiner::ProjectionResult::~ProjectionResult(&a23);
  _Unwind_Resume(a1);
}

double OU3DObjectRGBSizeRefiner::GenerateProjectionMatrix(OU3DObjectRGBSizeRefiner *this, const simd_float3x3 *a2, const simd_float4x4 *a3)
{
  v3 = 0;
  v4 = a2->columns[0];
  v5 = a2->columns[1];
  v4.i32[3] = 0;
  v5.i32[3] = 0;
  v6 = a2->columns[2];
  v6.i32[3] = 0;
  v7 = a3->columns[0];
  v8 = a3->columns[1];
  v9 = a3->columns[3];
  v11[2] = a3->columns[2];
  v11[3] = v9;
  do
  {
    *(&v12 + v3 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(v11[v3])), v5, *&v11[v3], 1), v6, v11[v3], 2), xmmword_25D277B90, v11[v3], 3);
    ++v3;
  }

  while (v3 != 4);
  return *&v12;
}

void OU3DObjectRGBSizeRefiner::ProjectToImage(OU3DObjectRGBSizeRefiner *this@<X0>, const simd_float4x4 *a2@<X1>, const box3d *a3@<X2>, uint64_t a4@<X8>)
{
  __p = 0;
  v29 = 0;
  v30 = 0;
  v26 = 0;
  v27 = 0uLL;
  v24 = 0;
  std::vector<BOOL>::vector(v25, 8);
  v22 = a4;
  std::vector<unsigned long>::reserve(&__p, 8uLL);
  std::vector<BOOL>::reserve(&v26, 8uLL);
  v8 = 0;
  v9 = 0;
  do
  {
    v23 = vaddq_f32(a2->columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a2->columns[0], COERCE_FLOAT(*(a3 + v8))), a2->columns[1], *(a3 + 16 * v8), 1), a2->columns[2], *(a3 + v8), 2));
    v24 = *&v23.i32[2] <= 0.0;
    std::vector<BOOL>::push_back(&v26, &v24);
    *v10.f32 = vdiv_f32(vdiv_f32(*v23.i8, *&vdupq_laneq_s32(v23, 2)), *(this + 344));
    v10.i64[1] = v10.i64[0];
    v11.i32[0] = vmovn_s32(vcgeq_f32(xmmword_25D2798A0, v10)).u32[0];
    v11.i32[1] = vmovn_s32(vcgeq_f32(v10, xmmword_25D2798A0)).i32[1];
    if ((vminv_u16(v11) & 1) != 0 && ((*(v26 + (((v27 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v27 - 1)) & 1) == 0)
    {
      v9 = 1;
      *v25[0] |= 1 << v8;
    }

    v12 = v29;
    if (v29 >= v30)
    {
      v14 = (v29 - __p) >> 3;
      if ((v14 + 1) >> 61)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v15 = (v30 - __p) >> 2;
      if (v15 <= v14 + 1)
      {
        v15 = v14 + 1;
      }

      if (v30 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v16 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      if (v16)
      {
        _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&__p, v16);
      }

      v17 = (8 * v14);
      *v17 = v10.i64[0];
      v13 = 8 * v14 + 8;
      v18 = v17 - (v29 - __p);
      memcpy(v18, __p, v29 - __p);
      v19 = __p;
      __p = v18;
      v29 = v13;
      v30 = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v29 = v10.i64[0];
      v13 = (v12 + 8);
    }

    v29 = v13;
    ++v8;
  }

  while (v8 != 8);
  v20 = v30;
  *v22 = __p;
  *(v22 + 8) = v13;
  v29 = 0;
  v30 = 0;
  v21 = v26;
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;
  *(v22 + 32) = v27;
  v26 = 0;
  v27 = 0uLL;
  __p = 0;
  *(v22 + 48) = v9 & 1;
  std::vector<BOOL>::vector((v22 + 56), v25);
  if (v25[0])
  {
    operator delete(v25[0]);
  }

  if (v26)
  {
    operator delete(v26);
  }

  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }
}

void sub_25D25CE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  v25 = *(v23 + 24);
  if (v25)
  {
    operator delete(v25);
  }

  v26 = *a10;
  if (*a10)
  {
    *(a10 + 8) = v26;
    operator delete(v26);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void OU3DObjectRGBSizeRefiner::ProjectionResult::~ProjectionResult(OU3DObjectRGBSizeRefiner::ProjectionResult *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

OU3DObjectRGBSizeRefiner *OU3DObjectRGBSizeRefiner::ComputeWeightedRGBBuffer(OU3DObjectRGBSizeRefiner *this, double a2, double a3, float a4, float a5)
{
  v5 = 0;
  v6 = *(this + 28);
  v7 = *(this + 34);
  v8 = *(this + 37);
  do
  {
    LOBYTE(a4) = *(v6 + v5);
    LOBYTE(a5) = *(v7 + v5);
    a5 = LODWORD(a5) * 7.0;
    a4 = a5 + (LODWORD(a4) * 0.35);
    *(v8 + 4 * v5++) = a4;
  }

  while (v5 != 49152);
  return this;
}

void OU3DObjectRGBSizeRefiner::InsideFovSides(OU3DObjectRGBSizeRefiner *this@<X0>, const OU3DObjectRGBSizeRefiner::ProjectionResult *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  v32[0] = xmmword_25D279A80;
  v32[1] = unk_25D279A90;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  _ZNSt3__16vectorIDv2_iNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&v34, v32, &v33, 4uLL);
  v31[0] = xmmword_25D279AA0;
  v31[1] = unk_25D279AB0;
  memset(v37, 0, sizeof(v37));
  _ZNSt3__16vectorIDv2_iNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(v37, v31, v32, 4uLL);
  v30[0] = xmmword_25D279AC0;
  v30[1] = unk_25D279AD0;
  memset(v38, 0, sizeof(v38));
  _ZNSt3__16vectorIDv2_iNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(v38, v30, v31, 4uLL);
  v29[0] = xmmword_25D279AE0;
  v29[1] = unk_25D279AF0;
  memset(v39, 0, sizeof(v39));
  _ZNSt3__16vectorIDv2_iNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(v39, v29, v30, 4uLL);
  v28[0] = xmmword_25D279B00;
  v28[1] = unk_25D279B10;
  memset(v40, 0, sizeof(v40));
  _ZNSt3__16vectorIDv2_iNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(v40, v28, v29, 4uLL);
  v27[0] = xmmword_25D279B20;
  v27[1] = unk_25D279B30;
  v42[0] = 0;
  v42[1] = 0;
  v41 = 0;
  _ZNSt3__16vectorIDv2_iNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(&v41, v27, v28, 4uLL);
  memset(v26, 0, sizeof(v26));
  _ZNSt3__16vectorINS0_IDv2_iNS_9allocatorIS1_EEEENS2_IS4_EEE16__init_with_sizeB8ne200100IPKS4_S9_EEvT_T0_m(v26, &v34, &v43, 6uLL);
  for (i = 0; i != -18; i -= 3)
  {
    v6 = v42[i - 1];
    if (v6)
    {
      v42[i] = v6;
      operator delete(v6);
    }
  }

  v7 = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  LODWORD(v30[0]) = 0;
  do
  {
    v8 = v26[0] + 24 * v7;
    v9 = *v8;
    v10 = *(v8 + 8);
    if (*v8 != v10)
    {
      v11 = 0;
      do
      {
        v12 = *v9;
        v13 = *v9;
        v14 = *(a2 + 3);
        v15 = 1 << *v9;
        if ((v15 & *(v14 + 8 * (v13 >> 6))) == 0 || ((*(v14 + ((SHIDWORD(v12) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> SBYTE4(v12)) & 1) == 0)
        {
          v16 = *(a2 + 7);
          if ((*(v16 + 8 * (v13 >> 6)) & v15) != 0)
          {
            goto LABEL_34;
          }

          v17 = SHIDWORD(v12);
          if ((*(v16 + ((SHIDWORD(v12) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> SBYTE4(v12)))
          {
            goto LABEL_34;
          }

          v18 = *a2;
          v34 = 0;
          v35 = 0;
          v34 = *(v18 + 8 * v13);
          v19 = *(v18 + 8 * SHIDWORD(v12));
          v35 = *(v18 + 8 * v17);
          *&v31[0] = 0;
          *&v32[0] = 0;
          *(&v32[0] + 1) = 1132462080;
          v20 = OU::intersect(&v34, v32, v31);
          if (*v31 >= 0.0)
          {
            v21 = v20;
          }

          else
          {
            v21 = 0;
          }

          if (v21 == 1 && *v31 <= 256.0)
          {
            v11 = 1;
          }

          *&v32[0] = 0;
          *(&v32[0] + 1) = 0x4340000000000000;
          if (OU::intersect(&v34, v32, v31) && *(v31 + 1) >= 0.0 && *(v31 + 1) <= 192.0)
          {
            v11 = 1;
          }

          *&v32[0] = 0x4340000000000000;
          *(&v32[0] + 1) = 0x4340000043800000;
          v22 = OU::intersect(&v34, v32, v31);
          if (*v31 >= 0.0)
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }

          if (v23 == 1 && *v31 <= 256.0)
          {
            v11 = 1;
          }

          *&v32[0] = 1132462080;
          *(&v32[0] + 1) = 0x4340000043800000;
          if (OU::intersect(&v34, v32, v31) && *(v31 + 1) >= 0.0 && *(v31 + 1) <= 192.0)
          {
            v11 = 1;
          }
        }

        ++v9;
      }

      while (v9 != v10);
      if ((v11 & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_34:
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a3, v30);
    }

LABEL_35:
    v24 = v30[0];
    v7 = ++LODWORD(v30[0]);
  }

  while (v24 < 5);
  v34 = v26;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v34);
  v25 = *MEMORY[0x277D85DE8];
}

void sub_25D25D320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v40 = (v38 + 128);
  v41 = -144;
  while (1)
  {
    v42 = *(v40 - 1);
    if (v42)
    {
      *v40 = v42;
      operator delete(v42);
    }

    v40 -= 3;
    v41 += 24;
    if (!v41)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void OU3DObjectRGBSizeRefiner::GetSidesEdgesOfInterest(OU3DObjectRGBSizeRefiner *this@<X0>, const box3d *a2@<X1>, void **a3@<X8>)
{
  v78[1] = *MEMORY[0x277D85DE8];
  v5 = *(this + 88);
  v6 = *(a2 + 2);
  OU3DObjectRGBSizeRefiner::ProjectToImage(this, (this + 480), a2, v54);
  OU3DObjectRGBSizeRefiner::InsideFovSides(v7, v54, v53);
  *__p = xmmword_25D2798B0;
  *v71 = xmmword_25D2798C0;
  *&v71[16] = xmmword_25D2798D0;
  v72 = xmmword_25D2798E0;
  v73 = xmmword_25D2798F0;
  v74 = xmmword_25D279900;
  v75 = xmmword_25D279910;
  v76 = xmmword_25D279920;
  v77[0] = xmmword_25D279930;
  v77[1] = xmmword_25D279940;
  v77[2] = xmmword_25D279950;
  v77[3] = xmmword_25D279960;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  std::vector<std::pair<int,int>>::__init_with_size[abi:ne200100]<std::pair<int,int> const*,std::pair<int,int> const*>(a3, __p, v78, 0x18uLL);
  a3[3] = 0;
  v8 = a3 + 3;
  *v63 = 0x500000004;
  *v62 = xmmword_25D279B40;
  a3[4] = 0;
  a3[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>((a3 + 3), v62, &v63[8], 6uLL);
  v9 = *(a2 + 16);
  v69 = @"Table";
  __p[0] = 0;
  __p[1] = 0;
  *v71 = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(__p, &v69, __p, 1uLL);
  LODWORD(v9) = IsObjectBelongType(v9, __p);
  v62[0] = __p;
  std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](v62);

  if (v9)
  {
    *v62 = xmmword_25D2798D0;
    *v63 = xmmword_25D2798E0;
    __p[1] = 0;
    *v71 = 0;
    __p[0] = 0;
    std::vector<std::pair<int,int>>::__init_with_size[abi:ne200100]<std::pair<int,int> const*,std::pair<int,int> const*>(__p, v62, &v63[16], 4uLL);
    v67 = 5;
    v66 = xmmword_25D279B6C;
    memset(&v71[8], 0, 24);
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v71[8], &v66, v68, 5uLL);
    v10 = *a3;
    if (*a3)
    {
      a3[1] = v10;
      operator delete(v10);
    }

    *a3 = *__p;
    a3[2] = *v71;
    __p[1] = 0;
    *v71 = 0;
    __p[0] = 0;
    v11 = a3[3];
    if (v11)
    {
      a3[4] = v11;
      operator delete(v11);
      v11 = __p[0];
    }

    *(a3 + 3) = *&v71[8];
    a3[5] = *&v71[24];
    memset(&v71[8], 0, 24);
    if (v11)
    {
      __p[1] = v11;
      operator delete(v11);
    }
  }

  v12 = *(a2 + 16);
  v65[0] = @"Cabinet";
  v65[1] = @"Refrigerator";
  v65[2] = @"Oven";
  v65[3] = @"Dishwasher";
  v65[4] = @"Washer";
  __p[1] = 0;
  *v71 = 0;
  __p[0] = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(__p, v65, &v66, 5uLL);
  v13 = IsObjectBelongType(v12, __p);
  v14 = vabds_f32(v6, v5);
  v62[0] = __p;
  std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](v62);
  for (i = 4; i != -1; --i)
  {
  }

  if (v13)
  {
    *__p = xmmword_25D2798D0;
    *v71 = xmmword_25D279970;
    *&v71[16] = xmmword_25D279980;
    v72 = xmmword_25D279990;
    v73 = xmmword_25D2799A0;
    v74 = xmmword_25D2799B0;
    v75 = xmmword_25D2799C0;
    *&v76 = 0x200000006;
    v62[1] = 0;
    *v63 = 0;
    v62[0] = 0;
    std::vector<std::pair<int,int>>::__init_with_size[abi:ne200100]<std::pair<int,int> const*,std::pair<int,int> const*>(v62, __p, &v76 + 8, 0xFuLL);
    v67 = 4;
    v66 = xmmword_25D279B58;
    *&v63[16] = 0;
    v64 = 0;
    *&v63[8] = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v63[8], &v66, v68, 5uLL);
    v16 = *a3;
    if (*a3)
    {
      a3[1] = v16;
      operator delete(v16);
    }

    *a3 = *v62;
    a3[2] = *v63;
    v62[1] = 0;
    *v63 = 0;
    v62[0] = 0;
    v17 = a3[3];
    if (v17)
    {
      a3[4] = v17;
      operator delete(v17);
      v17 = v62[0];
    }

    *(a3 + 3) = *&v63[8];
    a3[5] = v64;
    *&v63[16] = 0;
    v64 = 0;
    *&v63[8] = 0;
    if (v17)
    {
      v62[1] = v17;
      operator delete(v17);
    }
  }

  v18 = *(a2 + 16);
  v61[0] = @"Shelf";
  v61[1] = @"Stove";
  v61[2] = @"Sink";
  __p[1] = 0;
  *v71 = 0;
  __p[0] = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(__p, v61, v62, 3uLL);
  v19 = IsObjectBelongType(v18, __p);
  v62[0] = __p;
  std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](v62);
  for (j = 2; j != -1; --j)
  {
  }

  if (v19)
  {
    *__p = xmmword_25D2798D0;
    *v71 = xmmword_25D2798E0;
    *&v71[16] = xmmword_25D2798F0;
    v72 = xmmword_25D279900;
    v73 = xmmword_25D279910;
    v74 = xmmword_25D279920;
    v75 = xmmword_25D279930;
    v76 = xmmword_25D279940;
    v62[1] = 0;
    *v63 = 0;
    v62[0] = 0;
    std::vector<std::pair<int,int>>::__init_with_size[abi:ne200100]<std::pair<int,int> const*,std::pair<int,int> const*>(v62, __p, v77, 0x10uLL);
    v67 = 4;
    v66 = xmmword_25D279B58;
    *&v63[16] = 0;
    v64 = 0;
    *&v63[8] = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v63[8], &v66, v68, 5uLL);
    v21 = *a3;
    if (*a3)
    {
      a3[1] = v21;
      operator delete(v21);
    }

    *a3 = *v62;
    a3[2] = *v63;
    v62[1] = 0;
    *v63 = 0;
    v62[0] = 0;
    v22 = a3[3];
    if (v22)
    {
      a3[4] = v22;
      operator delete(v22);
      v22 = v62[0];
    }

    *(a3 + 3) = *&v63[8];
    a3[5] = v64;
    *&v63[16] = 0;
    v64 = 0;
    *&v63[8] = 0;
    if (v22)
    {
      v62[1] = v22;
      operator delete(v22);
    }
  }

  v23 = *(a2 + 16);
  v60[0] = @"Screen";
  v60[1] = @"Fireplace";
  __p[1] = 0;
  *v71 = 0;
  __p[0] = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(__p, v60, v61, 2uLL);
  v24 = IsObjectBelongType(v23, __p);
  v62[0] = __p;
  std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](v62);
  for (k = 1; k != -1; --k)
  {
  }

  if (v24)
  {
    *v62 = xmmword_25D279910;
    *v63 = xmmword_25D279920;
    __p[1] = 0;
    *v71 = 0;
    __p[0] = 0;
    std::vector<std::pair<int,int>>::__init_with_size[abi:ne200100]<std::pair<int,int> const*,std::pair<int,int> const*>(__p, v62, &v63[16], 4uLL);
    v67 = 4;
    v66 = xmmword_25D279B58;
    memset(&v71[8], 0, 24);
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v71[8], &v66, v68, 5uLL);
    v26 = *a3;
    if (*a3)
    {
      a3[1] = v26;
      operator delete(v26);
    }

    *a3 = *__p;
    a3[2] = *v71;
    __p[1] = 0;
    *v71 = 0;
    __p[0] = 0;
    v27 = a3[3];
    if (v27)
    {
      a3[4] = v27;
      operator delete(v27);
      v27 = __p[0];
    }

    *(a3 + 3) = *&v71[8];
    a3[5] = *&v71[24];
    memset(&v71[8], 0, 24);
    if (v27)
    {
      __p[1] = v27;
      operator delete(v27);
    }
  }

  v28 = *(a2 + 16);
  v59 = @"Sofa";
  __p[1] = 0;
  *v71 = 0;
  __p[0] = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(__p, &v59, v60, 1uLL);
  LODWORD(v28) = IsObjectBelongType(v28, __p);
  v62[0] = __p;
  std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](v62);

  if (v28)
  {
    *__p = xmmword_25D2798B0;
    *v71 = xmmword_25D2798C0;
    *&v71[16] = xmmword_25D2798F0;
    v72 = xmmword_25D2799D0;
    v73 = xmmword_25D2799E0;
    v62[1] = 0;
    *v63 = 0;
    v62[0] = 0;
    std::vector<std::pair<int,int>>::__init_with_size[abi:ne200100]<std::pair<int,int> const*,std::pair<int,int> const*>(v62, __p, &v74, 0xAuLL);
    v66 = xmmword_25D2799F0;
    *&v63[16] = 0;
    v64 = 0;
    *&v63[8] = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v63[8], &v66, &v67, 4uLL);
    v29 = *a3;
    if (*a3)
    {
      a3[1] = v29;
      operator delete(v29);
    }

    *a3 = *v62;
    a3[2] = *v63;
    v62[1] = 0;
    *v63 = 0;
    v62[0] = 0;
    v30 = a3[3];
    if (v30)
    {
      a3[4] = v30;
      operator delete(v30);
      v30 = v62[0];
    }

    *(a3 + 3) = *&v63[8];
    a3[5] = v64;
    *&v63[16] = 0;
    v64 = 0;
    *&v63[8] = 0;
    if (v30)
    {
      v62[1] = v30;
      operator delete(v30);
    }
  }

  v31 = *(a2 + 16);
  v58 = @"Bed";
  __p[1] = 0;
  *v71 = 0;
  __p[0] = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(__p, &v58, &v59, 1uLL);
  LODWORD(v31) = IsObjectBelongType(v31, __p);
  v62[0] = __p;
  std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](v62);

  if (v31)
  {
    *__p = xmmword_25D2798B0;
    *v71 = xmmword_25D2798C0;
    *&v71[16] = xmmword_25D279A00;
    v72 = xmmword_25D279A10;
    v73 = xmmword_25D279930;
    *&v74 = 0x200000006;
    v62[1] = 0;
    *v63 = 0;
    v62[0] = 0;
    std::vector<std::pair<int,int>>::__init_with_size[abi:ne200100]<std::pair<int,int> const*,std::pair<int,int> const*>(v62, __p, &v74 + 8, 0xBuLL);
    v67 = 5;
    v66 = xmmword_25D279B6C;
    *&v63[16] = 0;
    v64 = 0;
    *&v63[8] = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v63[8], &v66, v68, 5uLL);
    v32 = *a3;
    if (*a3)
    {
      a3[1] = v32;
      operator delete(v32);
    }

    *a3 = *v62;
    a3[2] = *v63;
    v62[1] = 0;
    *v63 = 0;
    v62[0] = 0;
    v33 = a3[3];
    if (v33)
    {
      a3[4] = v33;
      operator delete(v33);
      v33 = v62[0];
    }

    *(a3 + 3) = *&v63[8];
    a3[5] = v64;
    *&v63[16] = 0;
    v64 = 0;
    *&v63[8] = 0;
    if (v33)
    {
      v62[1] = v33;
      operator delete(v33);
    }
  }

  v34 = *(a2 + 16);
  v57[0] = @"Toilet";
  v57[1] = @"Bathtub";
  v57[2] = @"Stool";
  v57[3] = @"Chair";
  __p[1] = 0;
  *v71 = 0;
  __p[0] = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(__p, v57, &v58, 4uLL);
  v35 = IsObjectBelongType(v34, __p);
  v62[0] = __p;
  std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](v62);
  for (m = 3; m != -1; --m)
  {
  }

  if (v35)
  {
    *__p = xmmword_25D279A00;
    *v71 = xmmword_25D279A10;
    *&v71[16] = xmmword_25D279930;
    *&v72 = 0x200000006;
    v62[1] = 0;
    *v63 = 0;
    v62[0] = 0;
    std::vector<std::pair<int,int>>::__init_with_size[abi:ne200100]<std::pair<int,int> const*,std::pair<int,int> const*>(v62, __p, &v72 + 8, 7uLL);
    v67 = 5;
    v66 = xmmword_25D279B6C;
    *&v63[16] = 0;
    v64 = 0;
    *&v63[8] = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v63[8], &v66, v68, 5uLL);
    v37 = *a3;
    if (*a3)
    {
      a3[1] = v37;
      operator delete(v37);
    }

    *a3 = *v62;
    a3[2] = *v63;
    v62[1] = 0;
    *v63 = 0;
    v62[0] = 0;
    v38 = a3[3];
    if (v38)
    {
      a3[4] = v38;
      operator delete(v38);
      v38 = v62[0];
    }

    *(a3 + 3) = *&v63[8];
    a3[5] = v64;
    *&v63[16] = 0;
    v64 = 0;
    *&v63[8] = 0;
    if (v38)
    {
      v62[1] = v38;
      operator delete(v38);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  *v71 = 0;
  v39 = a3[3];
  for (n = a3[4]; v39 != n; ++v39)
  {
    LODWORD(v62[0]) = *v39;
    if (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v53, v62))
    {
      v41 = __p[1];
      if (__p[1] >= *v71)
      {
        v43 = __p[0];
        v44 = __p[1] - __p[0];
        v45 = (__p[1] - __p[0]) >> 2;
        v46 = v45 + 1;
        if ((v45 + 1) >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v47 = *v71 - __p[0];
        if ((*v71 - __p[0]) >> 1 > v46)
        {
          v46 = v47 >> 1;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v48 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v46;
        }

        if (v48)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(__p, v48);
        }

        *(4 * v45) = v62[0];
        v42 = (4 * v45 + 4);
        memcpy(0, v43, v44);
        v49 = __p[0];
        __p[0] = 0;
        __p[1] = v42;
        *v71 = 0;
        if (v49)
        {
          operator delete(v49);
        }
      }

      else
      {
        *__p[1] = v62[0];
        v42 = v41 + 4;
      }

      __p[1] = v42;
    }
  }

  if (v8 != __p)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a3 + 3, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
  }

  if (v14 < 0.3 && !**v8)
  {
    v50 = a3[4];
    v51 = *--v50;
    **v8 = v51;
    *v50 = 0;
    a3[4] = v50;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v53);
  if (v56)
  {
    operator delete(v56);
  }

  if (v55)
  {
    operator delete(v55);
  }

  if (v54[0])
  {
    v54[1] = v54[0];
    operator delete(v54[0]);
  }

  v52 = *MEMORY[0x277D85DE8];
}

void sub_25D25E100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56)
{
  if (__p)
  {
    a56 = __p;
    operator delete(__p);
  }

  _ZNSt3__15tupleIJNS_6vectorIDv4_hNS_9allocatorIS2_EEEENS1_IDv4_tNS3_IS6_EEEEEED2Ev(v56);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a29);
  OU3DObjectRGBSizeRefiner::ProjectionResult::~ProjectionResult(&a34);
  _Unwind_Resume(a1);
}

void OU3DObjectRGBSizeRefiner::GenerateRgbFilterdBuffer(OU3DObjectRGBSizeRefiner *this, NSString *a2)
{
  v13[0] = a2;
  v13[2] = v13;
  v3 = *(std::__tree<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>(this + 168, v13)[5] + 144);
  CVPixelBufferLockBaseAddress(v3, 0);
  Height = CVPixelBufferGetHeight(v3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v3);
  BaseAddress = CVPixelBufferGetBaseAddress(v3);
  v7 = BytesPerRow * Height;
  if (v7)
  {
    v8 = *(this + 34);
    v9 = *(this + 28);
    do
    {
      v11 = *BaseAddress++;
      v10 = v11;
      v12 = *v9++;
      *v8++ = v12 * v10;
      --v7;
    }

    while (v7);
  }
}

void OU3DObjectRGBSizeRefiner::ShouldRefineObjects(uint64_t a1@<X0>, void *a2@<X1>, const simd_float3x3 *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2;
  v12 = a5;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v58 = v12;
  v59 = v11;
  boxesFromObjects(v11, @"rawdetection", &v69, v68);
  v13 = -1227133513 * ((v68[1] - v68[0]) >> 5);
  LOBYTE(v72) = 0;
  std::vector<BOOL>::vector(&v66, v13);
  v64 = 0;
  v65 = 0;
  v63 = &v64;
  __p = 0;
  v62 = 0uLL;
  if (v13 > 0)
  {
    v55 = a6;
    v14 = 0;
    v15 = 0;
    v16 = v13 & 0x7FFFFFFF;
    do
    {
      ShouldRefineObject = OU3DObjectRGBSizeRefiner::ShouldRefineObject(a1, v68[0] + v14, a3, a4, v12);
      v18 = ShouldRefineObject;
      if ((ShouldRefineObject & 0x100000000) != 0)
      {
        v19 = [v59 objectAtIndexedSubscript:*(v69 + v15)];
        v20 = [v19 refined_box_history];
        if ([v20 count])
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        v22 = [v59 objectAtIndexedSubscript:*(v69 + v15)];
        v23 = [v22 getFrameIndexOfLastRefine];

        if (v23 == -1)
        {
          v29 = v62;
          if (v62 >= *(&v62 + 1))
          {
            v41 = (v62 - __p) >> 4;
            v42 = v41 + 1;
            if ((v41 + 1) >> 60)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v43 = *(&v62 + 1) - __p;
            if ((*(&v62 + 1) - __p) >> 3 > v42)
            {
              v42 = v43 >> 3;
            }

            if (v43 >= 0x7FFFFFFFFFFFFFF0)
            {
              v44 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v44 = v42;
            }

            v45 = v74;
            v46 = *(a1 + 196);
            *v74 = v21;
            v45[1] = v46;
            v45[2] = v18;
            v45[3] = v15;
            *&v74 = v45 + 4;
            v47 = v73 - (v62 - __p);
            memcpy(v47, __p, v62 - __p);
            v48 = __p;
            v49 = *(&v62 + 1);
            __p = v47;
            v50 = v74;
            v62 = v74;
            *&v74 = v48;
            *(&v74 + 1) = v49;
            v72 = v48;
            v73 = v48;
            if (v48)
            {
              v57 = v50;
              operator delete(v48);
              v50 = v57;
            }

            v31 = v50;
          }

          else
          {
            v30 = *(a1 + 196);
            *v62 = v21;
            v29[1] = v30;
            v29[2] = v18;
            v29[3] = v15;
            v31 = v29 + 4;
          }

          v12 = v58;
          *&v62 = v31;
        }

        else
        {
          v24 = *(a1 + 196);
          v25 = [v59 objectAtIndexedSubscript:*(v69 + v15)];
          v26 = v24 - [v25 getFrameIndexOfLastRefine];
          v27 = v62;
          if (v62 >= *(&v62 + 1))
          {
            v32 = (v62 - __p) >> 4;
            v33 = v32 + 1;
            if ((v32 + 1) >> 60)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v34 = *(&v62 + 1) - __p;
            if ((*(&v62 + 1) - __p) >> 3 > v33)
            {
              v33 = v34 >> 3;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFF0)
            {
              v35 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v33;
            }

            v36 = v74;
            *v74 = v21;
            v36[1] = v26;
            v36[2] = v18;
            v36[3] = v15;
            *&v74 = v36 + 4;
            v37 = v73 - (v62 - __p);
            memcpy(v37, __p, v62 - __p);
            v38 = __p;
            v39 = *(&v62 + 1);
            __p = v37;
            v40 = v74;
            v62 = v74;
            *&v74 = v38;
            *(&v74 + 1) = v39;
            v72 = v38;
            v73 = v38;
            if (v38)
            {
              v56 = v40;
              operator delete(v38);
              v40 = v56;
            }

            v28 = v40;
          }

          else
          {
            *v62 = v21;
            v27[1] = v26;
            v28 = v27 + 4;
            v27[2] = v18;
            v27[3] = v15;
          }

          *&v62 = v28;

          v12 = v58;
        }
      }

      ++v15;
      v14 += 224;
    }

    while (v16 != v15);
    a6 = v55;
    if (__p != v62)
    {
      v51 = *(__p + 3);
      *(v66 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v60 = ObjectTypeConversion(*(v68[0] + 224 * v51 + 128));
      std::__tree<NSString * {__strong}>::__emplace_unique_key_args<NSString * {__strong},NSString * {__strong}>(&v63, &v60);
    }
  }

  v52 = v65;
  *a6 = v66;
  *(a6 + 8) = v67;
  v67 = 0uLL;
  v66 = 0;
  v53 = v64;
  *(a6 + 24) = v63;
  *(a6 + 32) = v53;
  v54 = a6 + 32;
  *(a6 + 40) = v52;
  if (v52)
  {
    v53[2] = v54;
    v63 = &v64;
    v64 = 0;
    v65 = 0;
    v53 = 0;
  }

  else
  {
    *(a6 + 24) = v54;
  }

  if (__p)
  {
    *&v62 = __p;
    operator delete(__p);
    v53 = v64;
  }

  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(&v63, v53);
  if (v66)
  {
    operator delete(v66);
  }

  v72 = v68;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&v72);
  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }
}

void sub_25D25E864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *__p, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(&a19, a20);
  if (a22)
  {
    operator delete(a22);
  }

  a22 = &a25;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&a22);
  if (a28)
  {
    a29 = a28;
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

uint64_t OU3DObjectRGBSizeRefiner::ShouldRefineObject(uint64_t a1, uint64_t a2, const simd_float3x3 *a3, uint64_t a4, void *a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = ObjectTypeConversion(*(a2 + 128));
  v11 = v10;
  v12 = *(a1 + 176);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = a1 + 176;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= v10;
    v16 = v14 < v10;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == a1 + 176 || v10 < *(v13 + 32))
  {
LABEL_9:
    v17 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [*(a2 + 144) UUIDString];
      objc_claimAutoreleasedReturnValue();
      [v11 UTF8String];
      OU3DObjectRGBSizeRefiner::ShouldRefineObject();
    }

LABEL_11:

    goto LABEL_12;
  }

  if (v9 && ([v9 containsObject:*(a2 + 144)] & 1) == 0)
  {
    v17 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [*(a2 + 144) UUIDString];
      objc_claimAutoreleasedReturnValue();
      [v11 UTF8String];
      OU3DObjectRGBSizeRefiner::ShouldRefineObject();
    }

    goto LABEL_11;
  }

  v23 = 0;
  v24 = 3.4028e38;
  do
  {
    v25 = vsubq_f32(*(a4 + 48), *(a2 + v23));
    v26 = vmulq_f32(v25, v25);
    v27 = sqrtf(v26.f32[2] + vaddv_f32(*v26.f32));
    if (v27 < v24)
    {
      v24 = v27;
    }

    v23 += 16;
  }

  while (v23 != 128);
  if (v24 > 5.0)
  {
    v28 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = [*(a2 + 144) UUIDString];
      OU3DObjectRGBSizeRefiner::ShouldRefineObject(v29, v31, v28, v24);
    }

    goto LABEL_12;
  }

  IsBoxInFOVLine = OU3DObjectRGBSizeRefiner::IsBoxInFOVLine(a1, a3, a4, a2);
  if ((IsBoxInFOVLine & 0x100000000) == 0)
  {
    v17 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [*(a2 + 144) UUIDString];
      objc_claimAutoreleasedReturnValue();
      [v11 UTF8String];
      OU3DObjectRGBSizeRefiner::ShouldRefineObject();
    }

    goto LABEL_11;
  }

  if (![*(a2 + 128) isEqualToString:@"Screen"] || (OU3DObjectRGBSizeRefiner::IsBoxInFOVCorner(a1, a3, a4, a2) & 0x100000000) != 0)
  {
    v19 = IsBoxInFOVLine & 0xFF00000000;
    v20 = IsBoxInFOVLine & 0xFFFFFF00;
    v18 = IsBoxInFOVLine;
    goto LABEL_13;
  }

LABEL_12:
  v18 = 0;
  v19 = 0;
  v20 = 0;
LABEL_13:

  v21 = *MEMORY[0x277D85DE8];
  return v19 | v18 | v20;
}

uint64_t OU3DObjectRGBSizeRefiner::IsBoxInFOVCorner(OU3DObjectRGBSizeRefiner *this, const simd_float3x3 *a2, const simd_float4x4 *a3, const box3d *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v36.columns[2] = a3->columns[2];
  v33 = a3->columns[3];
  v36.columns[3] = v33;
  v36.columns[0] = a3->columns[0];
  v36.columns[1] = a3->columns[1];
  v31 = __invert_f4(v36);
  *v8.i64 = OU3DObjectRGBSizeRefiner::GenerateProjectionMatrix(v7, a2, &v31);
  v32.columns[0] = v8;
  v32.columns[1] = v9;
  v32.columns[2] = v10;
  v32.columns[3] = v11;
  OU3DObjectRGBSizeRefiner::ProjectToImage(this, &v32, a4, &v31);
  OU3DObjectRGBSizeRefiner::GetCornerVisibility(a4, &v33, v29);
  std::vector<BOOL>::vector(&v28, v29);
  std::vector<BOOL>::vector(&v27, &v30);
  buf[0] = 0;
  std::vector<BOOL>::vector(&__p, 8);
  v12 = 0;
  v13 = 0;
  v14 = v31.columns[1].i64[1];
  v15 = v31.columns[3].i64[1];
  v16 = __p;
  v17 = v28;
  do
  {
    v18 = 1 << v12;
    if ((*v14 & (1 << v12)) != 0)
    {
      v19 = *v16;
LABEL_4:
      v20 = v19 | v18;
      goto LABEL_7;
    }

    v19 = *v16;
    if ((*v17 & v18) == 0)
    {
      goto LABEL_4;
    }

    v20 = v19 & ~v18;
LABEL_7:
    *v16 = v20;
    if ((*v15 & v18) != 0)
    {
      ++v13;
    }

    ++v12;
  }

  while (v12 != 8);
  if (v13 >= 5)
  {
    v23 = v13 & 0x7FFFFF00;
    v13 = v13;
    v22 = 0x100000000;
  }

  else
  {
    v21 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      OU3DObjectRGBSizeRefiner::IsBoxInFOVCorner([*(a4 + 16) UTF8String], buf, v13, v21);
    }

    v22 = 0;
    v13 = 0;
    v23 = 0;
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v27)
  {
    operator delete(v27);
  }

  if (v28)
  {
    operator delete(v28);
  }

  if (v30)
  {
    operator delete(v30);
  }

  if (v29[0])
  {
    operator delete(v29[0]);
  }

  if (v31.columns[3].i64[1])
  {
    operator delete(v31.columns[3].i64[1]);
  }

  if (v31.columns[1].i64[1])
  {
    operator delete(v31.columns[1].i64[1]);
  }

  if (v31.columns[0].i64[0])
  {
    v31.columns[0].i64[1] = v31.columns[0].i64[0];
    operator delete(v31.columns[0].i64[0]);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v22 | v23 | v13;
}

void sub_25D25EE68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  OU3DObjectRGBSizeRefiner::CornerVisibilityInfo::~CornerVisibilityInfo(&a19);
  OU3DObjectRGBSizeRefiner::ProjectionResult::~ProjectionResult(&a25);
  _Unwind_Resume(a1);
}

void OU3DObjectRGBSizeRefiner::GetCornerVisibility(uint64_t a1@<X1>, float32x4_t *a2@<X2>, void *a3@<X8>)
{
  v56 = *MEMORY[0x277D85DE8];
  LOBYTE(v49[0]) = 0;
  std::vector<BOOL>::vector(v41, 8);
  LOBYTE(v49[0]) = 0;
  std::vector<BOOL>::vector(__p, 8);
  v47 = xmmword_25D278090;
  memset(v49, 0, sizeof(v49));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v49, &v47, &v48, 4uLL);
  v46 = xmmword_25D2780A0;
  memset(v50, 0, sizeof(v50));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v50, &v46, &v47, 4uLL);
  v45 = xmmword_25D2780B0;
  memset(v51, 0, sizeof(v51));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v51, &v45, &v46, 4uLL);
  v44 = xmmword_25D2780C0;
  memset(v52, 0, sizeof(v52));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v52, &v44, &v45, 4uLL);
  v43 = xmmword_25D2780D0;
  memset(v53, 0, sizeof(v53));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v53, &v43, &v44, 4uLL);
  v42 = xmmword_25D278080;
  v55[0] = 0;
  v55[1] = 0;
  v54 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v54, &v42, &v43, 4uLL);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(&v37, v49, &v56, 6uLL);
  for (i = 0; i != -18; i -= 3)
  {
    v7 = v55[i - 1];
    if (v7)
    {
      v55[i] = v7;
      operator delete(v7);
    }
  }

  v8 = v37;
  v9 = v38;
  if (v37 != v38)
  {
    v10 = v41[0];
    __asm { FMOV            V0.4S, #-0.25 }

    do
    {
      v16 = *v8;
      v17 = *(a1 + 16 * **v8);
      v18 = *(a1 + 16 * (*v8)[1]);
      v19 = *(a1 + 16 * (*v8)[2]);
      v20 = vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v17, v18), v19), *(a1 + 16 * (*v8)[3])), _Q0);
      v21 = vsubq_f32(v17, v18);
      v22 = vsubq_f32(v19, v18);
      v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), vnegq_f32(v21)), v22, vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL));
      v24 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
      v25 = vmulq_f32(v23, v23);
      v19.f32[0] = v25.f32[1] + (v25.f32[2] + v25.f32[0]);
      *v25.f32 = vrsqrte_f32(v19.u32[0]);
      *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(v19.u32[0], vmul_f32(*v25.f32, *v25.f32)));
      v26 = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(v19.u32[0], vmul_f32(*v25.f32, *v25.f32))).f32[0]);
      v27 = vaddq_f32(*a2, v20);
      v28 = vmulq_f32(v27, v27);
      v20.f32[0] = v28.f32[2] + vaddv_f32(*v28.f32);
      *v28.f32 = vrsqrte_f32(v20.u32[0]);
      *v28.f32 = vmul_f32(*v28.f32, vrsqrts_f32(v20.u32[0], vmul_f32(*v28.f32, *v28.f32)));
      v29 = vmulq_f32(v26, vmulq_n_f32(v27, vmul_f32(*v28.f32, vrsqrts_f32(v20.u32[0], vmul_f32(*v28.f32, *v28.f32))).f32[0]));
      if ((v29.f32[2] + vaddv_f32(*v29.f32)) > 0.0)
      {
        v30 = v8[1];
        if (v16 != v30)
        {
          v31 = __p[0];
          do
          {
            v32 = *v16;
            v33 = v32 >> 6;
            v34 = 1 << v32;
            v35 = v10[v33];
            if ((v34 & v35) != 0)
            {
              v31[v33] |= v34;
              v35 = v10[v33];
            }

            v10[v33] = v35 | v34;
            ++v16;
          }

          while (v16 != v30);
        }
      }

      v8 += 3;
    }

    while (v8 != v9);
  }

  std::vector<BOOL>::vector(a3, v41);
  std::vector<BOOL>::vector(a3 + 3, __p);
  v49[0] = &v37;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v49);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v41[0])
  {
    operator delete(v41[0]);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void sub_25D25F274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char *a32)
{
  if (*v32)
  {
    operator delete(*v32);
  }

  a32 = &a10;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a32);
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void OU3DObjectRGBSizeRefiner::CornerVisibilityInfo::~CornerVisibilityInfo(OU3DObjectRGBSizeRefiner::CornerVisibilityInfo *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    operator delete(v2);
  }

  if (*this)
  {
    operator delete(*this);
  }
}

uint64_t OU3DObjectRGBSizeRefiner::IsBoxInFOVLine(OU3DObjectRGBSizeRefiner *this, const simd_float3x3 *a2, const simd_float4x4 *a3, const box3d *a4)
{
  v38 = __invert_f4(*a3);
  *v8.i64 = OU3DObjectRGBSizeRefiner::GenerateProjectionMatrix(v7, a2, &v38);
  v39.columns[0] = v8;
  v39.columns[1] = v9;
  v39.columns[2] = v10;
  v39.columns[3] = v11;
  OU3DObjectRGBSizeRefiner::ProjectToImage(this, &v39, a4, &v38);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  OU::ConvexHull(&v38, &v35, __p);
  v12 = 0;
  v13 = 0;
  v14 = v35;
  v15 = (v36 - v35) >> 2;
  while (v12 != v15)
  {
    v16 = v12 + 1;
    v17 = *(v38.columns[0].i64[0] + 8 * *(v35 + v12));
    v18 = *(v38.columns[0].i64[0] + 8 * *(v35 + (v12 + 1) % v15));
    v19 = vsub_f32(v17, v18);
    v20 = sqrtf(vaddv_f32(vmul_f32(v19, v19)));
    if ((v20 & 0x80000000) == 0)
    {
      v21 = 0;
      v22 = vsub_f32(v18, v17);
      v23 = vmul_f32(v22, v22);
      v23.i32[0] = vadd_f32(v23, vdup_lane_s32(v23, 1)).u32[0];
      v24 = vrsqrte_f32(v23.u32[0]);
      v25 = vmul_f32(v24, vrsqrts_f32(v23.u32[0], vmul_f32(v24, v24)));
      v26 = vmul_n_f32(v22, vmul_f32(v25, vrsqrts_f32(v23.u32[0], vmul_f32(v25, v25))).f32[0]);
      v27 = v20 + 1;
      do
      {
        v28 = vcgt_u32(0xC000000100, vcvt_s32_f32(vmla_n_f32(v17, v26, v21)));
        v13 -= v28.i32[0] & v28.i32[1];
        ++v21;
      }

      while (v27 != v21);
    }

    v12 = v16;
    if (v13 >= 101)
    {
      v29 = v13 & 0x7FFFFF00;
      v30 = v13;
      v31 = 0x100000000;
      goto LABEL_9;
    }
  }

  v30 = 0;
  v29 = 0;
  v31 = 0;
LABEL_9:
  if (v34 == 1 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
    v14 = v35;
  }

  if (v14)
  {
    v36 = v14;
    operator delete(v14);
  }

  if (v38.columns[3].i64[1])
  {
    operator delete(v38.columns[3].i64[1]);
  }

  if (v38.columns[1].i64[1])
  {
    operator delete(v38.columns[1].i64[1]);
  }

  if (v38.columns[0].i64[0])
  {
    v38.columns[0].i64[1] = v38.columns[0].i64[0];
    operator delete(v38.columns[0].i64[0]);
  }

  return v31 | v29 | v30;
}

void sub_25D25F57C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  OU3DObjectRGBSizeRefiner::ProjectionResult::~ProjectionResult(&a19);
  _Unwind_Resume(a1);
}

float OU3DObjectRGBSizeRefiner::ComputeSearchGranularity(OU3DObjectRGBSizeRefiner *this, const box3d *a2, const simd_float4x4 *a3)
{
  v3 = 0;
  v4 = 3.4028e38;
  do
  {
    v5 = vsubq_f32(a3->columns[3], *(a2 + v3));
    v6 = vmulq_f32(v5, v5);
    v7 = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
    if (v7 < v4)
    {
      v4 = v7;
    }

    v3 += 16;
  }

  while (v3 != 128);
  v8 = round(v4 + -1.0);
  return fminf(fmaxf(v8, 2.0), 4.0);
}

id OU3DObjectRGBSizeRefiner::RefineObjects(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v245[0] = *MEMORY[0x277D85DE8];
  v153 = a2;
  v13 = a3;
  v150 = a6;
  v151 = a7;
  v152 = a8;
  v154 = v13;
  if (OU3DObjectRGBSizeRefiner::IsOUFrameValid(v13, v14))
  {
    kdebug_trace();
    v15 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.var1) = 0;
      _os_log_impl(&dword_25D1DB000, v15, OS_LOG_TYPE_INFO, "[3DOD RGB Refine] Edge Alignment Start", &buf, 2u);
    }

    ++*(a1 + 196);
    rawBoxesFromObjects(v153, v208);
    v16 = -1227133513 * ((v208[1] - v208[0]) >> 5);
    memset(v207, 0, sizeof(v207));
    std::vector<OUBox3d>::reserve(v207, v16);
    v17 = [(OU3DObjectRGBSizeRefiner *)v13 camera];
    [v17 intrinsics];
    buf.var2 = v18;
    LODWORD(buf.var4) = v19;
    buf.var1 = v20;
    buf.var3 = v21;
    LODWORD(buf.var5.var1) = v22;
    buf.var5.var0 = v23;
    OU3DObjectRGBSizeRefiner::ShouldRefineObjects(a1, v153, &buf, a4, v151, &v203);

    kdebug_trace();
    if (v206)
    {
      kdebug_trace();
      -[OU3DObjectRGBSizeRefiner setSemanticLabelBufferOnWideCamera:](v13, "setSemanticLabelBufferOnWideCamera:", CVPixelBufferRetain([*a1 generateSemanticOnWideCameraWithFrame:v13]));
      kdebug_trace();
      v24 = OUCannyEdgeDetectorInterface::DetectEdges(*(a1 + 160), v13);
      v25 = v204;
      if (v204 != &v205)
      {
        do
        {
          v192.i64[0] = (v25 + 4);
          v26 = std::__tree<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},std::unique_ptr<OUCannyEdgeDetectorSemantic>>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>(a1 + 168, v25 + 4);
          v27 = OUCannyEdgeDetectorInterface::DetectEdges(v26[5], v13);
          v192.i64[0] = (v25 + 4);
          v28 = std::__tree<std::__value_type<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>,std::__map_value_compare<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong},std::less<NSString * {__strong}>,true>,std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::piecewise_construct_t const&<>>(a1 + 200, v25 + 4);
          v29 = v28[5];
          v28[5] = v27;

          v30 = v25[1];
          if (v30)
          {
            do
            {
              v31 = v30;
              v30 = *v30;
            }

            while (v30);
          }

          else
          {
            do
            {
              v31 = v25[2];
              v113 = *v31 == v25;
              v25 = v31;
            }

            while (!v113);
          }

          v25 = v31;
        }

        while (v31 != &v205);
      }

      DownloadMTLTexture(v24, (a1 + 224));
      v33 = OUVizTool::Get(v32);
      std::string::basic_string[abi:ne200100]<0>(&buf, "pre_rgb_refine");
      OUVizTool::SaveBoxes(v33, &buf, v208);
      if (SHIBYTE(buf.var3) < 0)
      {
        operator delete(buf.var1);
      }

      v35 = OUVizTool::Get(v34);
      OUVizTool::SaveARFrameImage(v35, [(OU3DObjectRGBSizeRefiner *)v13 sceneColorBuffer]);

      kdebug_trace();
      kdebug_trace();
      rawBoxesFromObjects(v150, &v201);
      if (v16 < 1)
      {
        goto LABEL_130;
      }

      v37 = 0;
      v158 = v16 & 0x7FFFFFFF;
      v38 = 7.0;
      *&v36 = 138412546;
      v144 = v36;
      v39 = 10.0;
      v40 = 15.0;
      v145 = v15;
      while (1)
      {
        v41 = v208[0] + 224 * v37;
        v200 = ObjectTypeConversion(*(v41 + 128));
        if ((*(v203 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v37))
        {
          v42 = [(OU3DObjectRGBSizeRefiner *)v13 camera];
          [v42 intrinsics];
          *(a1 + 376) = v43;
          *(a1 + 392) = v44;
          *(a1 + 368) = v45;
          *(a1 + 384) = v46;
          *(a1 + 408) = v47;
          *(a1 + 400) = v48;

          *(a1 + 416) = __invert_f4(*a4);
          *&v50 = OU3DObjectRGBSizeRefiner::GenerateProjectionMatrix(v49, (a1 + 368), (a1 + 416));
          *(a1 + 480) = v50;
          *(a1 + 496) = v51;
          *(a1 + 512) = v52;
          *(a1 + 528) = v53;
          v54 = *v41;
          v55 = *(v41 + 16);
          v56 = *(v41 + 48);
          v194 = *(v41 + 32);
          v195 = v56;
          v192 = v54;
          v193 = v55;
          v57 = *(v41 + 64);
          v58 = *(v41 + 80);
          v59 = *(v41 + 112);
          v198 = *(v41 + 96);
          v199 = v59;
          v196 = v57;
          v197 = v58;
          OU3DObjectRGBSizeRefiner::GetSidesEdgesOfInterest(a1, v41, v189);
          v215.var1 = &v200;
          v60 = std::__tree<std::__value_type<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong}>,std::__map_value_compare<NSString * {__strong},objc_object  {objcproto10MTLTexture}* {__strong},std::less<NSString * {__strong}>,true>,std::allocator<objc_object  {objcproto10MTLTexture}* {__strong}>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::piecewise_construct_t const&<>>(a1 + 200, &v200);
          DownloadMTLTexture(v60[5], (a1 + 248));
          OU3DObjectRGBSizeRefiner::GenerateRgbFilterdBuffer(a1, v200);
          v63 = 0;
          v64 = *(a1 + 224);
          v65 = *(a1 + 272);
          v66 = *(a1 + 296);
          do
          {
            LOBYTE(v61) = *(v64 + v63);
            LOBYTE(v62) = *(v65 + v63);
            v62 = LODWORD(v62) * v38;
            v61 = v62 + (LODWORD(v61) * 0.35);
            *(v66 + 4 * v63++) = v61;
          }

          while (v63 != 49152);
          if (OU3DObjectRGBSizeRefiner::ComputeSemanticRatio(a1, v41, (a1 + 368), (a1 + 416)) < 0.15)
          {
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v122 = [*(v41 + 144) UUIDString];
              v123 = [v200 UTF8String];
              LODWORD(buf.var1) = v144;
              *(&buf.var1 + 4) = v122;
              *(&buf.var2 + 2) = 2080;
              *(&buf.var2 + 6) = v123;
              _os_log_debug_impl(&dword_25D1DB000, v15, OS_LOG_TYPE_DEBUG, "[3DOD RGB Refine Debug] Object uuid: %@ box type: %s does not meet semantic ratio ", &buf, 0x16u);
            }

            v67 = [v153 objectAtIndexedSubscript:v37];
            v68 = [v67 refined_box_history];
            v69 = [v68 count] == 0;

            if (!v69)
            {
              OUBox3d::OUBox3d(&buf, v41);
              v70 = v201;
              v71 = v202;
              while (v70 != v71)
              {
                if ([*(v70 + 144) isEqual:*(v41 + 144)])
                {
                  OUBox3d::operator=(&buf, v70);
                  break;
                }

                v70 += 224;
              }

              std::vector<OUBox3d>::push_back[abi:ne200100](v207, &buf);

              if (__p)
              {
                operator delete(__p);
              }

              if (v224)
              {
                v225 = v224;
                operator delete(v224);
              }

LABEL_118:
              if (v190)
              {
                v191 = v190;
                operator delete(v190);
              }

              if (v189[0])
              {
                v189[1] = v189[0];
                operator delete(v189[0]);
              }

              goto LABEL_122;
            }

LABEL_39:
            std::vector<OUBox3d>::push_back[abi:ne200100](v207, v41);
            goto LABEL_118;
          }

          OU3DObjectRGBSizeRefiner::DrawBoxImage(a1, &v192, v189, (a1 + 368), (a1 + 416), 0);
          v77 = OU3DObjectRGBSizeRefiner::ComputeOverlapScore<float>(a1, (a1 + 296), (a1 + 320), &v192);
          OU3DObjectRGBSizeRefiner::DrawBoxImage(a1, &v192, v189, (a1 + 368), (a1 + 416), 1);
          v78 = v77 + (OU3DObjectRGBSizeRefiner::ComputeOverlapScore<unsigned char>(a1, (a1 + 248), (a1 + 320), &v192) * 8.0);
          if (v78 == 0.0)
          {
            goto LABEL_39;
          }

          v160 = v78;
          v79 = 0;
          v80 = 3.4028e38;
          do
          {
            v81 = vsubq_f32(*(a4 + 48), *(&v192 + v79));
            v82 = vmulq_f32(v81, v81);
            v83 = sqrtf(v82.f32[2] + vaddv_f32(*v82.f32));
            if (v83 < v80)
            {
              v80 = v83;
            }

            v79 += 16;
          }

          while (v79 != 128);
          box3dToCentroidSizeAngle(&v192, v188);
          *&v215.var6.var1 = v196;
          *&v215.var7 = v197;
          v216 = v198;
          v217 = v199;
          *&v215.var1 = v192;
          *&v215.var3 = v193;
          *&v215.var5.var0 = v194;
          *&v215.var5.var2 = v195;
          buf.var1 = *(v188[0] + 12);
          buf.var2 = *(v188[0] + 5);
          v187 = 0;
          v185 = 0;
          v186 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v185, &buf, (&buf.var2 + 1), 3uLL);
          v84 = round(v80 + -1.0);
          v85 = fminf(fmaxf(v84, 2.0), 4.0);
          v86 = v185;
          v87 = v186;
          if (v185 != v186)
          {
            do
            {
              if (@"Screen" == v200)
              {
                v88 = v40;
              }

              else
              {
                v88 = v39;
              }

              *v86 = (*v86 * v88) / v85;
              ++v86;
            }

            while (v86 != v87);
          }

          v183 = 0;
          v182 = 0;
          v184 = 0;
          std::vector<std::vector<int>>::reserve(&v182, 6uLL);
          memset(&v212, 0, 24);
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v212, v190, v191, (v191 - v190) >> 2);
          v89 = v160;
          v90 = v191;
          v91 = v190;
          v243 = xmmword_25D279B80;
          v244 = 0x500000003;
          memset(&buf, 0, 24);
          std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&buf, &v243, v245, 6uLL);
          v241 = 0x400000002;
          v240 = xmmword_25D279B98;
          memset(&buf.var4, 0, 24);
          std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&buf.var4, &v240, &v242, 6uLL);
          v238 = 0x500000003;
          v237 = xmmword_25D279BB0;
          memset(&buf.var5.var2, 0, 24);
          std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&buf.var5.var2, &v237, &v239, 6uLL);
          v235 = 0x100000000;
          v234 = xmmword_25D279BC8;
          memset(&buf.var6.var2, 0, 24);
          std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&buf.var6.var2, &v234, &v236, 6uLL);
          v232 = 0x400000002;
          v231 = xmmword_25D279BE0;
          *&v220 = 0;
          v219 = 0uLL;
          std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v219, &v231, &v233, 6uLL);
          v229 = 0x100000000;
          v228 = xmmword_25D279BF8;
          v221[0] = 0;
          v221[1] = 0;
          *(&v220 + 1) = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v220 + 8, &v228, &v230, 6uLL);
          v174 = 0uLL;
          *&v175 = 0;
          std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int> const*,std::vector<int> const*>(&v174, &buf, &v222, 6uLL);
          v92 = 0;
          v93 = v90 - v91;
          do
          {
            v94 = v221[v92 - 1];
            if (v94)
            {
              v221[v92] = v94;
              operator delete(v94);
            }

            v92 -= 3;
          }

          while (v92 != -18);
          v240 = xmmword_25D2799F0;
          std::unordered_set<int>::unordered_set(&buf, &v240, 4);
          v237 = xmmword_25D279A20;
          std::unordered_set<int>::unordered_set(&buf.var5.var1, &v237, 4);
          v234 = xmmword_25D279A30;
          std::unordered_set<int>::unordered_set(&buf.var7, &v234, 4);
          v243 = 0uLL;
          v244 = 0;
          std::vector<std::unordered_set<int>>::__init_with_size[abi:ne200100]<std::unordered_set<int> const*,std::unordered_set<int> const*>(&v243, &buf, &v220 + 8, 3uLL);
          for (i = 80; i != -40; i -= 40)
          {
            std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&buf + i);
          }

          LOBYTE(v240) = 0;
          std::vector<BOOL>::vector(&buf, 3);
          if ((v93 >> 2) >= 1)
          {
            var1 = v212.var1;
            v97 = buf.var1;
            for (j = (v93 >> 2) & 0x7FFFFFFF; j; --j)
            {
              v100 = *var1++;
              v99 = v100;
              if (v100 <= 5)
              {
                if (((1 << v99) & 3) != 0)
                {
                  v101 = 1;
                }

                else
                {
                  if (((1 << v99) & 0x14) != 0)
                  {
                    *v97 |= 2uLL;
                    if (v99 != 3)
                    {
                      continue;
                    }
                  }

                  v101 = 4;
                }

                *v97 |= v101;
              }
            }
          }

          v102 = 0;
          LODWORD(v237) = 0;
          while (1)
          {
            if (((*buf.var1 >> v102) & 1) != 0 || !std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((v243 + 40 * v102), &v237))
            {
              if (++v102 != 3)
              {
                continue;
              }

              v103 = 126 - 2 * __clz((*&v212.var2 - v212.var1) >> 2);
              *&v240 = &v174;
              *(&v240 + 1) = &v237;
              if (*&v212.var2 == v212.var1)
              {
                v104 = 0;
              }

              else
              {
                v104 = v103;
              }

              std::vector<std::vector<int>>::push_back[abi:ne200100](&v182, &v212);
            }

            v102 = 0;
            v105 = v237;
            LODWORD(v237) = v237 + 1;
            if (v105 >= 5)
            {
              if (v182 == v183 && v190 != v191)
              {
                std::vector<std::vector<int>>::push_back[abi:ne200100](&v182, &v190);
              }

              if (buf.var1)
              {
                operator delete(buf.var1);
              }

              buf.var1 = &v243;
              std::vector<std::unordered_set<int>>::__destroy_vector::operator()[abi:ne200100](&buf);
              buf.var1 = &v174;
              std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&buf);
              if (v212.var1)
              {
                *&v212.var2 = v212.var1;
                operator delete(v212.var1);
              }

              v106 = v182;
              v107 = v183;
              if (v182 != v183)
              {
                v108 = v85;
                v109 = v160;
                do
                {
                  *&buf.var6.var1 = v196;
                  *&buf.var7 = v197;
                  v219 = v198;
                  v220 = v199;
                  *&buf.var1 = v192;
                  *&buf.var3 = v193;
                  *&buf.var5.var0 = v194;
                  *&buf.var5.var2 = v195;
                  *&v212.var6.var1 = v196;
                  *&v212.var7 = v197;
                  v213 = v198;
                  v214 = v199;
                  *&v212.var1 = v192;
                  *&v212.var3 = v193;
                  *&v212.var5.var0 = v194;
                  *&v212.var5.var2 = v195;
                  v110 = *v106;
                  v111 = v106[1];
                  while (v110 != v111)
                  {
                    v112 = *v110;
                    if (*v110 < 2)
                    {
                      v114 = (v185 + 8);
                    }

                    else
                    {
                      v113 = v112 == 2 || v112 == 4;
                      if (v113)
                      {
                        v114 = v185;
                      }

                      else
                      {
                        v114 = (v185 + 4);
                      }
                    }

                    v115 = *v114;
                    if (*v114 > 0.0)
                    {
                      v116 = -v115;
                      do
                      {
                        v180 = 0u;
                        v181 = 0u;
                        v178 = 0u;
                        v179 = 0u;
                        v176 = 0u;
                        v177 = 0u;
                        v174 = 0u;
                        v175 = 0u;
                        v117 = v116 / 100.0 * v108;
                        *&v117 = v117;
                        Box3dEnlarge(*&v117, &buf, *v110, &v174);
                        OU3DObjectRGBSizeRefiner::DrawBoxImage(a1, &v174, v189, (a1 + 368), (a1 + 416), 0);
                        v118 = OU3DObjectRGBSizeRefiner::ComputeOverlapScore<float>(a1, (a1 + 296), (a1 + 320), &v174);
                        OU3DObjectRGBSizeRefiner::DrawBoxImage(a1, &v174, v189, (a1 + 368), (a1 + 416), 1);
                        v119 = v118 + (OU3DObjectRGBSizeRefiner::ComputeOverlapScore<unsigned char>(a1, (a1 + 248), (a1 + 320), &v174) * 8.0);
                        if (v119 > v89)
                        {
                          *&v212.var6.var1 = v178;
                          *&v212.var7 = v179;
                          v213 = v180;
                          v214 = v181;
                          *&v212.var1 = v174;
                          *&v212.var3 = v175;
                          v89 = v119;
                          *&v212.var5.var0 = v176;
                          *&v212.var5.var2 = v177;
                        }

                        v116 = v116 + 1.0;
                      }

                      while (v116 < v115);
                    }

                    buf = v212;
                    v219 = v213;
                    v220 = v214;
                    ++v110;
                  }

                  if (v89 > v109)
                  {
                    v215 = v212;
                    v216 = v213;
                    v217 = v214;
                    v109 = v89;
                  }

                  v106 += 3;
                  v89 = v160;
                }

                while (v106 != v107);
              }

              OUBox3d::OUBox3d(&buf, v41);
              buf = v215;
              v219 = v216;
              v220 = v217;
              [v152 addObject:*(v41 + 144)];
              v15 = v145;
              v38 = 7.0;
              v39 = 10.0;
              v40 = 15.0;
              std::vector<OUBox3d>::push_back[abi:ne200100](v207, &buf);

              if (__p)
              {
                operator delete(__p);
              }

              if (v224)
              {
                v225 = v224;
                operator delete(v224);
              }

              buf.var1 = &v182;
              std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&buf);
              if (v185)
              {
                v186 = v185;
                operator delete(v185);
              }

              if (v188[0])
              {
                v188[1] = v188[0];
                operator delete(v188[0]);
              }

              goto LABEL_118;
            }
          }
        }

        v72 = [v153 objectAtIndexedSubscript:v37];
        v73 = [v72 refined_box_history];
        v74 = [v73 count] == 0;

        if (v74)
        {
          std::vector<OUBox3d>::push_back[abi:ne200100](v207, v41);
          goto LABEL_122;
        }

        OUBox3d::OUBox3d(&buf, v41);
        v75 = *(a1 + 176);
        if (!v75)
        {
          goto LABEL_33;
        }

        while (1)
        {
          v76 = v75[4];
          if (v200 >= v76)
          {
            break;
          }

LABEL_32:
          v75 = *v75;
          if (!v75)
          {
            goto LABEL_33;
          }
        }

        if (v76 < v200)
        {
          break;
        }

        v120 = v201;
        v121 = v202;
        while (v120 != v121)
        {
          if ([*(v120 + 144) isEqual:*(v41 + 144)])
          {
            OUBox3d::operator=(&buf, v120);
            break;
          }

          v120 += 224;
        }

LABEL_33:
        std::vector<OUBox3d>::push_back[abi:ne200100](v207, &buf);

        if (__p)
        {
          operator delete(__p);
        }

        if (v224)
        {
          v225 = v224;
          operator delete(v224);
        }

LABEL_122:
        if (++v37 == v158)
        {
LABEL_130:
          *(a1 + 192) = 0;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            LOWORD(buf.var1) = 0;
            _os_log_impl(&dword_25D1DB000, v15, OS_LOG_TYPE_INFO, "Refine Ends", &buf, 2u);
          }

          kdebug_trace();
          v125 = kdebug_trace();
          if (v206)
          {
            v126 = OUVizTool::Get(v125);
            std::string::basic_string[abi:ne200100]<0>(&buf, "rgb_refine");
            OUVizTool::SaveBoxes(v126, &buf, v207);
            if (SHIBYTE(buf.var3) < 0)
            {
              operator delete(buf.var1);
            }
          }

          boxesToObjects(v207, @"rawdetection", 1u);
          v172 = 0u;
          v173 = 0u;
          v170 = 0u;
          obj = v171 = 0u;
          v146 = [obj countByEnumeratingWithState:&v170 objects:v211 count:16];
          if (v146)
          {
            v147 = *v171;
            do
            {
              for (k = 0; k != v146; ++k)
              {
                if (*v171 != v147)
                {
                  objc_enumerationMutation(obj);
                }

                v127 = *(*(&v170 + 1) + 8 * k);
                v166 = 0u;
                v167 = 0u;
                v168 = 0u;
                v169 = 0u;
                v155 = v153;
                v159 = [v155 countByEnumeratingWithState:&v166 objects:v210 count:16];
                if (v159)
                {
                  v157 = *v167;
                  do
                  {
                    for (m = 0; m != v159; ++m)
                    {
                      if (*v167 != v157)
                      {
                        objc_enumerationMutation(v155);
                      }

                      v128 = *(*(&v166 + 1) + 8 * m);
                      v129 = [v127 identifier];
                      v130 = [v128 identifier];
                      v131 = [v129 isEqual:v130];

                      if (v131)
                      {
                        v164 = 0u;
                        v165 = 0u;
                        v162 = 0u;
                        v163 = 0u;
                        v132 = [v128 boxesDict];
                        v133 = [v132 allKeys];

                        v134 = [v133 countByEnumeratingWithState:&v162 objects:v209 count:16];
                        if (v134)
                        {
                          v135 = *v163;
                          do
                          {
                            for (n = 0; n != v134; ++n)
                            {
                              if (*v163 != v135)
                              {
                                objc_enumerationMutation(v133);
                              }

                              v137 = *(*(&v162 + 1) + 8 * n);
                              if (([v137 isEqualToString:@"rawdetection"] & 1) == 0)
                              {
                                v220 = 0u;
                                v219 = 0u;
                                memset(&buf, 0, sizeof(buf));
                                v138 = [v128 boxesDict];
                                v139 = [v138 objectForKey:v137];
                                box3dFromNSArray(v139, &buf);

                                [v127 addBoxesDict:&buf forDictKey:v137];
                              }
                            }

                            v134 = [v133 countByEnumeratingWithState:&v162 objects:v209 count:16];
                          }

                          while (v134);
                        }

                        v140 = [v128 refined_box_history];
                        v141 = [v140 copy];
                        [v127 setRefined_box_history:v141];
                      }
                    }

                    v159 = [v155 countByEnumeratingWithState:&v166 objects:v210 count:16];
                  }

                  while (v159);
                }
              }

              v146 = [obj countByEnumeratingWithState:&v170 objects:v211 count:16];
            }

            while (v146);
          }

          v124 = obj;
          buf.var1 = &v201;
          std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&buf);
          goto LABEL_164;
        }
      }

      ++v75;
      goto LABEL_32;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      OU3DObjectRGBSizeRefiner::RefineObjects(v15);
    }

    v124 = v153;
LABEL_164:
    std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(&v204, v205);
    if (v203)
    {
      operator delete(v203);
    }

    buf.var1 = v207;
    std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&buf);
    buf.var1 = v208;
    std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&buf);
  }

  else
  {
    v124 = v153;
  }

  v142 = *MEMORY[0x277D85DE8];

  return v124;
}

void sub_25D260BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, void *a26, void *a27, void *a28, void *a29, void *a30)
{
  STACK[0x610] = &STACK[0x318];
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&STACK[0x610]);
  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(&STACK[0x348], STACK[0x350]);
  if (STACK[0x330])
  {
    operator delete(STACK[0x330]);
  }

  STACK[0x610] = &STACK[0x360];
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&STACK[0x610]);
  STACK[0x610] = &STACK[0x378];
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&STACK[0x610]);

  _Unwind_Resume(a1);
}

uint64_t OU3DObjectRGBSizeRefiner::IsOUFrameValid(OU3DObjectRGBSizeRefiner *this, _OUFrame *a2)
{
  v2 = this;
  v3 = [(OU3DObjectRGBSizeRefiner *)v2 sceneColorBuffer];
  if (CVPixelBufferGetDataSize([(OU3DObjectRGBSizeRefiner *)v2 semanticLabelBufferOnWideCamera]))
  {
    v4 = [(OU3DObjectRGBSizeRefiner *)v2 semanticLabelBufferOnWideCamera];
  }

  else
  {
    v4 = [(OU3DObjectRGBSizeRefiner *)v2 semanticLabelBuffer];
  }

  v5 = v4;
  Width = CVPixelBufferGetWidth(v3);
  Height = CVPixelBufferGetHeight(v3);
  v8 = CVPixelBufferGetWidth(v5);
  v9 = CVPixelBufferGetHeight(v5);
  if (Width)
  {
    v10 = Height == 0;
  }

  else
  {
    v10 = 1;
  }

  v13 = !v10 && v8 != 0 && v9 != 0;

  return v13;
}

BOOL OU3DObjectRGBSizeRefiner::ShouldDrawEdge(uint64_t a1, int a2, int *a3, void *a4, uint64_t a5)
{
  v5 = *a5;
  v6 = *(a5 + 8);
  if (*a5 == v6)
  {
    return 0;
  }

  v8 = *a3;
  v7 = a3[1];
  while (*v5 != __PAIR64__(v7, v8) && *v5 != __PAIR64__(v8, v7))
  {
    if (++v5 == v6)
    {
      return 0;
    }
  }

  return !a2 || ((*(*a4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1) == 0 || ((*(*a4 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1) == 0;
}

void OU3DObjectRGBSizeRefiner::DrawBoxImage(uint64_t a1, const box3d *a2, uint64_t a3, const simd_float3x3 *a4, simd_float4x4 *a5, int a6)
{
  v45[1] = *MEMORY[0x277D85DE8];
  bzero(*(a1 + 320), 0xC000uLL);
  *v13.i64 = OU3DObjectRGBSizeRefiner::GenerateProjectionMatrix(v12, a4, a5);
  v43.columns[0] = v13;
  v43.columns[1] = v14;
  v43.columns[2] = v15;
  v43.columns[3] = v16;
  OU3DObjectRGBSizeRefiner::ProjectToImage(a1, &v43, a2, v39);
  if (v41 != 1)
  {
    goto LABEL_28;
  }

  v46 = __invert_f4(*a5);
  v38 = v46.columns[3];
  OU3DObjectRGBSizeRefiner::GetCornerVisibility(a2, &v38, v36);
  std::vector<BOOL>::vector(&v35, v36);
  std::vector<BOOL>::vector(v34, &v37);
  LOBYTE(v44[0]) = 0;
  std::vector<BOOL>::vector(&__p, 8);
  v17 = 0;
  v18 = v40;
  v19 = __p;
  v20 = v35;
  do
  {
    v21 = 1 << v17;
    if ((*v18 & (1 << v17)) != 0)
    {
      v22 = *v19;
LABEL_5:
      v23 = v22 | v21;
      goto LABEL_8;
    }

    v22 = *v19;
    if ((*v20 & v21) == 0)
    {
      goto LABEL_5;
    }

    v23 = v22 & ~v21;
LABEL_8:
    *v19 = v23;
    ++v17;
  }

  while (v17 != 8);
  v44[0] = xmmword_25D279A40;
  v44[1] = xmmword_25D279A50;
  v44[2] = xmmword_25D279A60;
  v44[3] = xmmword_25D279A70;
  v44[4] = xmmword_25D2798D0;
  v44[5] = xmmword_25D2798E0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  ShouldDrawEdge = std::vector<std::pair<int,int>>::__init_with_size[abi:ne200100]<std::pair<int,int> const*,std::pair<int,int> const*>(&v30, v44, v45, 0xCuLL);
  v25 = v30;
  v26 = v31;
  if (v30 != v31)
  {
    do
    {
      v27 = *v25;
      if (((*(__p + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {
        v28 = v25[1];
        if (((*(__p + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          ShouldDrawEdge = OU3DObjectRGBSizeRefiner::ShouldDrawEdge(ShouldDrawEdge, a6, v25, v34, a3);
          if (ShouldDrawEdge)
          {
            OU3DObjectRGBSizeRefiner::DrawEdge(*(v39[0] + 8 * v27), *(v39[0] + 8 * v28), ShouldDrawEdge, (a1 + 320));
          }
        }
      }

      v25 += 2;
    }

    while (v25 != v26);
    v25 = v30;
  }

  if (v25)
  {
    v31 = v25;
    operator delete(v25);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v34[0])
  {
    operator delete(v34[0]);
  }

  if (v35)
  {
    operator delete(v35);
  }

  if (v37)
  {
    operator delete(v37);
  }

  if (v36[0])
  {
    operator delete(v36[0]);
  }

LABEL_28:
  if (v42)
  {
    operator delete(v42);
  }

  if (v40)
  {
    operator delete(v40);
  }

  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void sub_25D261450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  OU3DObjectRGBSizeRefiner::CornerVisibilityInfo::~CornerVisibilityInfo(&a21);
  OU3DObjectRGBSizeRefiner::ProjectionResult::~ProjectionResult(&a29);
  _Unwind_Resume(a1);
}

void OU3DObjectRGBSizeRefiner::DrawEdge(float32x2_t a1, float32x2_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v4 = vsub_f32(a1, a2);
    v5 = sqrtf(vaddv_f32(vmul_f32(v4, v4)));
    if ((v5 & 0x80000000) == 0)
    {
      v6 = 0;
      v7 = 0;
      v8 = vsub_f32(a2, a1);
      v9 = vmul_f32(v8, v8);
      v9.i32[0] = vadd_f32(v9, vdup_lane_s32(v9, 1)).u32[0];
      v10 = vrsqrte_f32(v9.u32[0]);
      v11 = vmul_f32(v10, vrsqrts_f32(v9.u32[0], vmul_f32(v10, v10)));
      v12 = vmul_n_f32(v8, vmul_f32(v11, vrsqrts_f32(v9.u32[0], vmul_f32(v11, v11))).f32[0]);
      v13 = v5 + 1;
      do
      {
        v14 = vmla_n_f32(a1, v12, v7);
        if (v14.f32[0] <= 0xFF)
        {
          v15 = v14.f32[0] | (v14.f32[1] << 8);
          if (v14.f32[1] <= 0xBF && v6 != v15)
          {
            *(*a4 + v15) = -1;
            v6 = v14.f32[0] | (v14.f32[1] << 8);
          }
        }

        ++v7;
      }

      while (v13 != v7);
    }
  }
}

id OU3DObjectRGBSizeRefiner::GenerateEmptyMTLTexture(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277CD2B88];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:*a2];
  v17[0] = v6;
  v16[1] = *MEMORY[0x277CD2A28];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:a2[1]];
  v8 = *MEMORY[0x277CD2960];
  v17[1] = v7;
  v17[2] = &unk_286EC2218;
  v9 = *MEMORY[0x277CD2A70];
  v16[2] = v8;
  v16[3] = v9;
  v16[4] = *MEMORY[0x277CD2A60];
  v17[3] = &unk_286EC2230;
  v17[4] = &unk_286EC2248;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];

  v11 = IOSurfaceCreate(v10);
  v12 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:a3 width:*a2 height:a2[1] mipmapped:0];
  [v12 setUsage:3];
  v13 = [*(a1 + 32) newTextureWithDescriptor:v12 iosurface:v11 plane:0];
  CFRelease(v11);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void CannyEdgeDetectorSemanticParams::~CannyEdgeDetectorSemanticParams(id *this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t _ZNSt3__16vectorIDv2_iNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_25D261920(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__16vectorINS0_IDv2_iNS_9allocatorIS1_EEEENS2_IS4_EEE16__init_with_sizeB8ne200100IPKS4_S9_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25D2619A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *_ZNSt3__135__uninitialized_allocator_copy_implB8ne200100INS_9allocatorINS_6vectorIDv2_iNS1_IS3_EEEEEEPKS5_S8_PS5_EET2_RT_T0_T1_SA_(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      _ZNSt3__16vectorIDv2_iNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_6vectorIDv2_iNS2_IS4_EEEEEEPS6_EEED2B8ne200100Ev(v8);
  return v4;
}

uint64_t _ZNSt3__16vectorIDv2_iNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_25D261AD8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_6vectorIDv2_iNS2_IS4_EEEEEEPS6_EEED2B8ne200100Ev(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::vector<std::pair<int,int>>::__init_with_size[abi:ne200100]<std::pair<int,int> const*,std::pair<int,int> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_25D261B84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__split_buffer<anonymous namespace::RefinePriority>::__split_buffer(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *result = 0;
  result[1] = 16 * a3;
  result[2] = 16 * a3;
  result[3] = 0;
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,anonymous namespace::RefinePriority *,false>(int *a1, int *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a2 - 4;
  i = a1;
  while (1)
  {
    a1 = i;
    v10 = (a2 - i) >> 4;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          return;
        case 4:
          v60 = a2 - 4;
          v61 = *(a2 - 4);
          v62 = i[8];
          v63 = v61 <= v62;
          if (v61 == v62)
          {
            v64 = *(a2 - 3);
            v65 = i[9];
            v63 = v64 <= v65;
            if (v64 == v65)
            {
              v63 = *(a2 - 2) <= i[10];
            }
          }

          if (!v63)
          {
            v66 = *(i + 2);
            *(i + 2) = *v60;
            *v60 = v66;
            v67 = i[8];
            v68 = i[4];
            v69 = v67 <= v68;
            if (v67 == v68)
            {
              v70 = i[9];
              v71 = i[5];
              v69 = v70 <= v71;
              if (v70 == v71)
              {
                v69 = i[10] <= i[6];
              }
            }

            if (!v69)
            {
              v72 = *(i + 1);
              *(i + 1) = *(i + 2);
              *(i + 2) = v72;
              v73 = i[4];
              v74 = v73 <= *i;
              if (v73 == *i)
              {
                v75 = i[5];
                v76 = i[1];
                v74 = v75 <= v76;
                if (v75 == v76)
                {
                  v74 = i[6] <= i[2];
                }
              }

              if (!v74)
              {
                v156 = *i;
                *i = *(i + 1);
                *(i + 1) = v156;
              }
            }
          }

          return;
        case 5:

          return;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        v55 = a2 - 4;
        v56 = *(a2 - 4);
        v57 = v56 <= *i;
        if (v56 == *i)
        {
          v58 = *(a2 - 3);
          v59 = i[1];
          v57 = v58 <= v59;
          if (v58 == v59)
          {
            v57 = *(a2 - 2) <= i[2];
          }
        }

        if (!v57)
        {
          v155 = *i;
          *i = *v55;
          *v55 = v155;
        }

        return;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return;
      }

      v94 = (v10 - 2) >> 1;
      v95 = v94;
      while (1)
      {
        v96 = v95;
        if (v94 >= v95)
        {
          v97 = (2 * v95) | 1;
          v98 = &i[4 * v97];
          if (2 * v96 + 2 < v10)
          {
            v99 = v98[4];
            v100 = *v98 <= v99;
            if (*v98 == v99)
            {
              v101 = v98[1];
              v102 = v98[5];
              v100 = v101 <= v102;
              if (v101 == v102)
              {
                v100 = v98[2] <= v98[6];
              }
            }

            if (!v100)
            {
              v98 += 4;
              v97 = 2 * v96 + 2;
            }
          }

          v103 = &i[4 * v96];
          v104 = *v103;
          if (*v98 == *v103)
          {
            v105 = v98[1];
            v106 = v103[1];
            v107 = v105 <= v106;
            if (v105 == v106)
            {
              v106 = v98[1];
              v107 = v98[2] <= v103[2];
            }

            if (v107)
            {
              goto LABEL_184;
            }
          }

          else if (*v98 <= v104)
          {
            v106 = v103[1];
LABEL_184:
            v108 = *(v103 + 1);
            *v103 = *v98;
            if (v94 >= v97)
            {
              while (1)
              {
                v109 = v98;
                v110 = 2 * v97;
                v97 = (2 * v97) | 1;
                v98 = &i[4 * v97];
                v111 = v110 + 2;
                if (v111 < v10)
                {
                  v112 = v98[4];
                  v113 = *v98 <= v112;
                  if (*v98 == v112)
                  {
                    v114 = v98[1];
                    v115 = v98[5];
                    v113 = v114 <= v115;
                    if (v114 == v115)
                    {
                      v113 = v98[2] <= v98[6];
                    }
                  }

                  if (!v113)
                  {
                    v98 += 4;
                    v97 = v111;
                  }
                }

                v116 = *v98 <= v104;
                if (*v98 == v104)
                {
                  v117 = v98[1];
                  v116 = v117 <= v106;
                  if (v117 == v106)
                  {
                    v116 = v98[2] <= v108;
                  }
                }

                if (!v116)
                {
                  break;
                }

                *v109 = *v98;
                if (v94 < v97)
                {
                  goto LABEL_197;
                }
              }

              v98 = v109;
            }

LABEL_197:
            *v98 = v104;
            v98[1] = v106;
            *(v98 + 1) = v108;
          }
        }

        v95 = v96 - 1;
        if (!v96)
        {
          while (1)
          {
            v118 = 0;
            v157 = *i;
            v119 = i;
            do
            {
              v120 = v119;
              v121 = &v119[4 * v118];
              v119 = v121 + 4;
              v122 = 2 * v118;
              v118 = (2 * v118) | 1;
              v123 = v122 + 2;
              if (v123 < v10)
              {
                v124 = v121[8];
                v125 = v121[4];
                v126 = v125 <= v124;
                if (v125 == v124)
                {
                  v127 = v121[5];
                  v128 = v121[9];
                  v126 = v127 <= v128;
                  if (v127 == v128)
                  {
                    v126 = v121[6] <= v121[10];
                  }
                }

                if (!v126)
                {
                  v119 = v121 + 8;
                  v118 = v123;
                }
              }

              *v120 = *v119;
            }

            while (v118 <= ((v10 - 2) >> 1));
            a2 -= 4;
            if (v119 == a2)
            {
              *v119 = v157;
            }

            else
            {
              *v119 = *a2;
              *a2 = v157;
              v129 = (v119 - i + 16) >> 4;
              v130 = v129 - 2;
              if (v129 >= 2)
              {
                v131 = v130 >> 1;
                v132 = &i[4 * (v130 >> 1)];
                v133 = *v119;
                if (*v132 == *v119)
                {
                  v134 = v132[1];
                  v135 = v119[1];
                  v136 = v134 <= v135;
                  if (v134 == v135)
                  {
                    v135 = v132[1];
                    v136 = v132[2] <= v119[2];
                  }

                  if (!v136)
                  {
                    goto LABEL_218;
                  }
                }

                else if (*v132 > v133)
                {
                  v135 = v119[1];
LABEL_218:
                  v137 = *(v119 + 1);
                  *v119 = *v132;
                  if (v130 >= 2)
                  {
                    while (1)
                    {
                      v138 = v132;
                      v139 = v131 - 1;
                      v131 = (v131 - 1) >> 1;
                      v132 = &i[4 * v131];
                      v140 = *v132 <= v133;
                      if (*v132 == v133)
                      {
                        v141 = v132[1];
                        v140 = v141 <= v135;
                        if (v141 == v135)
                        {
                          v140 = v132[2] <= v137;
                        }
                      }

                      if (v140)
                      {
                        break;
                      }

                      *v138 = *v132;
                      if (v139 <= 1)
                      {
                        goto LABEL_226;
                      }
                    }

                    v132 = v138;
                  }

LABEL_226:
                  *v132 = v133;
                  v132[1] = v135;
                  *(v132 + 1) = v137;
                }
              }
            }

            v21 = v10-- <= 2;
            if (v21)
            {
              return;
            }
          }
        }
      }
    }

    v11 = v10 >> 1;
    v12 = &i[4 * (v10 >> 1)];
    if (v10 < 0x81)
    {
    }

    else
    {
      v152 = *a1;
      *a1 = *v12;
      *v12 = v152;
    }

    --a3;
    v13 = *a1;
    if (a4)
    {
      goto LABEL_22;
    }

    v14 = *(a1 - 4);
    if (v14 == v13)
    {
      v15 = *(a1 - 3);
      v16 = a1[1];
      if (v15 != v16)
      {
        if (v15 <= v16)
        {
          goto LABEL_70;
        }

        goto LABEL_22;
      }

      if (*(a1 - 2) > a1[2])
      {
        goto LABEL_22;
      }

      v16 = *(a1 - 3);
LABEL_70:
      v37 = *(a1 + 1);
      v38 = *v8;
      v39 = v13 <= *v8;
      if (v13 == *v8)
      {
        v40 = *(a2 - 3);
        v39 = v16 <= v40;
        if (v16 == v40)
        {
          v39 = v37 <= *(a2 - 2);
        }
      }

      if (v39)
      {
        for (i = a1 + 4; i < a2; i += 4)
        {
          v43 = v13 <= *i;
          if (v13 == *i)
          {
            v44 = i[1];
            v43 = v16 <= v44;
            if (v16 == v44)
            {
              v43 = v37 <= i[2];
            }
          }

          if (!v43)
          {
            break;
          }
        }
      }

      else
      {
        for (i = a1 + 4; ; i += 4)
        {
          v41 = v13 <= *i;
          if (v13 == *i)
          {
            v42 = i[1];
            v41 = v16 <= v42;
            if (v16 == v42)
            {
              v41 = v37 <= i[2];
            }
          }

          if (!v41)
          {
            break;
          }
        }
      }

      j = a2;
      if (i < a2)
      {
        for (j = a2 - 4; ; j -= 4)
        {
          v46 = v13 <= v38;
          if (v13 == v38)
          {
            v47 = j[1];
            v46 = v16 <= v47;
            if (v16 == v47)
            {
              v46 = v37 <= j[2];
            }
          }

          if (v46)
          {
            break;
          }

          v48 = *(j - 4);
          v38 = v48;
        }
      }

      while (i < j)
      {
        v154 = *i;
        *i = *j;
        *j = v154;
        do
        {
          v49 = i[4];
          i += 4;
          v50 = v13 <= v49;
          if (v13 == v49)
          {
            v51 = i[1];
            v50 = v16 <= v51;
            if (v16 == v51)
            {
              v50 = v37 <= i[2];
            }
          }
        }

        while (v50);
        do
        {
          v52 = *(j - 4);
          j -= 4;
          v53 = v13 <= v52;
          if (v13 == v52)
          {
            v54 = j[1];
            v53 = v16 <= v54;
            if (v16 == v54)
            {
              v53 = v37 <= j[2];
            }
          }
        }

        while (!v53);
      }

      if (i - 4 != a1)
      {
        *a1 = *(i - 1);
      }

      a4 = 0;
      *(i - 4) = v13;
      *(i - 3) = v16;
      *(i - 1) = v37;
    }

    else
    {
      if (v14 <= v13)
      {
        v16 = a1[1];
        goto LABEL_70;
      }

LABEL_22:
      v17 = 0;
      v18 = a1[1];
      v19 = *(a1 + 1);
      while (1)
      {
        v20 = a1[v17 + 4];
        v21 = v20 <= v13;
        if (v20 == v13)
        {
          v22 = a1[v17 + 5];
          v21 = v22 <= v18;
          if (v22 == v18)
          {
            v21 = a1[v17 + 6] <= v19;
          }
        }

        if (v21)
        {
          break;
        }

        v17 += 4;
      }

      v23 = &a1[v17 + 4];
      k = a2 - 4;
      if (v17 * 4)
      {
        while (1)
        {
          v25 = *k <= v13;
          if (*k == v13)
          {
            v26 = k[1];
            v25 = v26 <= v18;
            if (v26 == v18)
            {
              v25 = k[2] <= v19;
            }
          }

          if (!v25)
          {
            break;
          }

          k -= 4;
        }
      }

      else
      {
        k = a2;
        if (v23 < a2)
        {
          for (k = a2 - 4; ; k -= 4)
          {
            if (*k == v13)
            {
              v27 = k[1];
              if (v27 == v18)
              {
                if (v23 >= k || k[2] > v19)
                {
                  break;
                }
              }

              else if (v23 >= k || v27 > v18)
              {
                break;
              }
            }

            else if (*k > v13 || v23 >= k)
            {
              break;
            }
          }
        }
      }

      i = v23;
      if (v23 < k)
      {
        v29 = k;
        do
        {
          v153 = *i;
          *i = *v29;
          *v29 = v153;
          do
          {
            v30 = i[4];
            i += 4;
            v31 = v30 <= v13;
            if (v30 == v13)
            {
              v32 = i[1];
              v31 = v32 <= v18;
              if (v32 == v18)
              {
                v31 = i[2] <= v19;
              }
            }
          }

          while (!v31);
          do
          {
            v33 = *(v29 - 4);
            v29 -= 4;
            v34 = v33 <= v13;
            if (v33 == v13)
            {
              v35 = v29[1];
              v34 = v35 <= v18;
              if (v35 == v18)
              {
                v34 = v29[2] <= v19;
              }
            }
          }

          while (v34);
        }

        while (i < v29);
      }

      if (i - 4 != a1)
      {
        *a1 = *(i - 1);
      }

      *(i - 4) = v13;
      *(i - 3) = v18;
      *(i - 1) = v19;
      if (v23 < k)
      {
LABEL_69:
        a4 = 0;
      }

      else
      {
        {
          a2 = i - 4;
          if (v36)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v36)
        {
          goto LABEL_69;
        }
      }
    }
  }

  v77 = i + 4;
  v79 = i == a2 || v77 == a2;
  if ((a4 & 1) == 0)
  {
    if (v79)
    {
      return;
    }

    while (1)
    {
      v142 = a1;
      a1 = v77;
      v143 = v142[4];
      if (v143 == *v142)
      {
        break;
      }

      if (v143 > *v142)
      {
        v144 = v142[5];
LABEL_239:
        v147 = *(v142 + 3);
        do
        {
          v148 = v142;
          *(v142 + 1) = *v142;
          v149 = *(v142 - 4);
          v142 -= 4;
          v150 = v143 <= v149;
          if (v143 == v149)
          {
            v151 = *(v148 - 3);
            v150 = v144 <= v151;
            if (v144 == v151)
            {
              v150 = v147 <= *(v148 - 2);
            }
          }
        }

        while (!v150);
        *v148 = v143;
        v148[1] = v144;
        *(v148 + 1) = v147;
      }

LABEL_246:
      v77 = a1 + 4;
      if (a1 + 4 == a2)
      {
        return;
      }
    }

    v144 = v142[5];
    v145 = v142[1];
    v146 = v144 <= v145;
    if (v144 == v145)
    {
      v146 = v142[6] <= v142[2];
    }

    if (v146)
    {
      goto LABEL_246;
    }

    goto LABEL_239;
  }

  if (v79)
  {
    return;
  }

  v80 = 0;
  v81 = i;
  while (2)
  {
    v82 = v81;
    v81 = v77;
    v83 = v82[4];
    if (v83 == *v82)
    {
      v84 = v82[5];
      v85 = v82[1];
      v86 = v84 <= v85;
      if (v84 == v85)
      {
        v86 = v82[6] <= v82[2];
      }

      if (v86)
      {
        goto LABEL_166;
      }
    }

    else
    {
      if (v83 <= *v82)
      {
        goto LABEL_166;
      }

      v84 = v82[5];
    }

    v87 = *(v82 + 3);
    *v81 = *v82;
    v88 = i;
    if (v82 == i)
    {
      goto LABEL_165;
    }

    v89 = v80;
    while (2)
    {
      v90 = (i + v89);
      v91 = *(i + v89 - 16);
      v92 = v83 <= v91;
      if (v83 != v91)
      {
LABEL_158:
        if (v92)
        {
          v88 = v82;
          goto LABEL_165;
        }

        goto LABEL_162;
      }

      v93 = *(v90 - 3);
      if (v84 == v93)
      {
        v92 = v87 <= *(i + v89 - 8);
        goto LABEL_158;
      }

      if (v84 > v93)
      {
LABEL_162:
        v82 -= 4;
        *v90 = *(i + v89 - 16);
        v89 -= 16;
        if (!v89)
        {
          v88 = i;
          goto LABEL_165;
        }

        continue;
      }

      break;
    }

    v88 = (i + v89);
LABEL_165:
    *v88 = v83;
    v88[1] = v84;
    *(v88 + 1) = v87;
LABEL_166:
    v77 = v81 + 4;
    v80 += 16;
    if (v81 + 4 != a2)
    {
      continue;
    }

    break;
  }
}