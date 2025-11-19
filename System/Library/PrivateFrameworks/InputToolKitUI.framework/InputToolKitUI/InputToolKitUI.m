BOOL itk_isiPad()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 1;

  return v1;
}

BOOL itk_isiPhone()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 0;

  return v1;
}

uint64_t ITKMNearlyEqualQuads(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v3 topLeft];
  [v4 topLeft];
  if (ITKNearlyEqualPoints() && ([v3 topRight], objc_msgSend(v4, "topRight"), ITKNearlyEqualPoints()) && (objc_msgSend(v3, "bottomRight"), objc_msgSend(v4, "bottomRight"), ITKNearlyEqualPoints()))
  {
    [v3 bottomLeft];
    [v4 bottomLeft];
    v5 = ITKNearlyEqualPoints();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

double ITKMinimumQuadSideLength(double result, double a2, double a3, double a4)
{
  if (a3 >= a4)
  {
    a3 = a4;
  }

  if (a3 < result)
  {
    result = a3;
  }

  if (result >= a2)
  {
    return a2;
  }

  return result;
}

double computeCornerMatrix@<D0>(double *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a1[7];
  v12 = *a1;
  v13 = a1[1];
  v14 = v8 + *a1 - v6 - v10;
  v15 = v9 + v13 - v7 - v11;
  if (v14 == 0.0 && v15 == 0.0)
  {
    v16 = v6 - v12;
    v17 = v8 - v6;
    v18 = v7 - v13;
    v19 = v9 - v7;
    v20 = 0.0;
    v21 = 0.0;
  }

  else
  {
    v22 = v11 - v9;
    v23 = v7 - v9;
    v24 = v6 - v8;
    v25 = (v6 - v8) * v22 - v23 * (v10 - v8);
    v20 = (v14 * v22 - v15 * (v10 - v8)) / v25;
    v21 = (v24 * v15 - v23 * v14) / v25;
    v16 = v6 - v12 + v20 * v6;
    v18 = v7 - v13 + v20 * v7;
    v17 = v10 - v12 + v21 * v10;
    v19 = v11 - v13 + v21 * v11;
  }

  v26 = 1.0 / a3;
  v27 = 1.0 / a4;
  *a2 = v26 * v16;
  *(a2 + 8) = v26 * v18;
  *(a2 + 16) = 0;
  *(a2 + 24) = v26 * v20;
  *(a2 + 32) = v27 * v17;
  *(a2 + 40) = v27 * v19;
  *(a2 + 48) = 0;
  *(a2 + 56) = v27 * v21;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = xmmword_254C2B2F0;
  *(a2 + 112) = 0;
  *(a2 + 96) = v12 + a6 * v17 + a5 * v16;
  *(a2 + 104) = v13 + a6 * v19 + a5 * v18;
  result = a6 * v21 + a5 * v20 + 1.0;
  *(a2 + 120) = result;
  return result;
}

void sub_254C0C934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_254C0D224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_254C0DA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void **a30)
{
  ClipperLib::Clipper::~Clipper(&a30);
  a30 = &a27;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&a30);

  _Unwind_Resume(a1);
}

void ClipperLib::Clipper::~Clipper(ClipperLib::Clipper *this)
{
  v2 = off_2867114D8;
  *(this + *(v3 - 3)) = v2;
  std::__list_imp<long long>::clear(this + 11);
  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(this + 2) = v6;
    operator delete(v6);
  }

  ClipperLib::ClipperBase::~ClipperBase((this + 144));
}

{
  *this = &unk_286711450;
  v2 = (this + 144);
  *(this + 18) = &unk_286711498;
  std::__list_imp<long long>::clear(this + 11);
  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }

  ClipperLib::ClipperBase::~ClipperBase(v2);

  JUMPOUT(0x259C283A0);
}

void sub_254C0E0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  ClipperLib::ClipperOffset::~ClipperOffset(&a17);
  _Block_object_dispose(&a64, 8);
  ClipperLib::Clipper::~Clipper(v65);
  a64 = &a55;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&a64);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__16(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 48;
  ClipperLib::ClipperBase::ClipperBase((a1 + 192), (a2 + 48 + *(*(a2 + 48) - 24)));
  *(a1 + 48) = &unk_286711450;
  *(a1 + 56) = 0;
  *(a1 + 192) = &unk_286711498;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = *(v4 + 8);
  *(a1 + 72) = *(v4 + 24);
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = *(v4 + 32);
  *(a1 + 96) = *(v4 + 48);
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = *(v4 + 56);
  *(a1 + 120) = *(v4 + 72);
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 56) = 0;
  *(a1 + 128) = *(v4 + 80);
  *(a1 + 136) = a1 + 136;
  *(a1 + 144) = a1 + 136;
  *(a1 + 152) = 0;
  v5 = *(v4 + 104);
  if (v5)
  {
    v7 = *(a2 + 136);
    v6 = *(a2 + 144);
    v8 = *(v7 + 8);
    v9 = *v6;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *(a1 + 136);
    *(v10 + 8) = v6;
    *v6 = v10;
    *(a1 + 136) = v7;
    *(v7 + 8) = a1 + 136;
    *(a1 + 152) = v5;
    *(a2 + 152) = 0;
  }

  result = *(a2 + 160);
  v12 = *(a2 + 176);
  *(a1 + 160) = result;
  *(a1 + 176) = v12;
  return result;
}

void __Block_byref_object_dispose__17(void *a1)
{
  v2 = off_2867114D8;
  *(a1 + *(v3 - 3) + 48) = v2;
  std::__list_imp<long long>::clear(a1 + 17);
  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  ClipperLib::ClipperBase::~ClipperBase((a1 + 24));
}

void sub_254C0E6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL ITKArcIsClockwiseForAngles(double a1, double a2)
{
  ITKNormalizeAngleInRadians();
  v3 = v2;
  ITKNormalizeAngleInRadians();
  return v3 >= v4;
}

void sub_254C0EF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  v31 = v30;

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_254C0FB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, char a45)
{
  ClipperLib::Clipper::~Clipper(&STACK[0x3B0]);
  STACK[0x3B0] = &a24;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3B0]);

  STACK[0x3B0] = &a42;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3B0]);
  _Block_object_dispose(&a45, 8);
  ClipperLib::ClipperOffset::~ClipperOffset((v52 + 48));
  _Block_object_dispose(&STACK[0x258], 8);
  _Block_object_dispose(&STACK[0x278], 8);
  ClipperLib::ClipperOffset::~ClipperOffset((v51 + 48));

  _Unwind_Resume(a1);
}

void sub_254C0FF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<ClipperLib::IntPoint>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<ClipperLib::IntPoint>>::clear[abi:ne200100](uint64_t *a1)
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

void *std::__list_imp<long long>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void *std::vector<std::vector<ClipperLib::IntPoint>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<ClipperLib::IntPoint>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::vector<ClipperLib::IntPoint>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>>(a1, a2);
  }

  std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2797B0118, MEMORY[0x277D825F0]);
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

ClipperLib::ClipperBase *ClipperLib::ClipperBase::ClipperBase(ClipperLib::ClipperBase *this, const ClipperLib::ClipperBase *a2)
{
  v4 = *(a2 + 1);
  *this = &unk_2867113F8;
  *(this + 1) = v4;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  std::vector<ClipperLib::LocalMinimum>::__init_with_size[abi:ne200100]<ClipperLib::LocalMinimum*,ClipperLib::LocalMinimum*>(this + 16, *(a2 + 2), *(a2 + 3), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 3) - *(a2 + 2)) >> 3));
  v5 = *(a2 + 40);
  *(this + 6) = 0;
  *(this + 40) = v5;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<ClipperLib::TEdge *>::__init_with_size[abi:ne200100]<ClipperLib::TEdge **,ClipperLib::TEdge **>(this + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 3);
  v6 = *(a2 + 36);
  *(this + 10) = 0;
  *(this + 36) = v6;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<ClipperLib::OutRec *>::__init_with_size[abi:ne200100]<ClipperLib::OutRec **,ClipperLib::OutRec **>(this + 80, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 3);
  v7 = *(a2 + 13);
  *(this + 14) = 0;
  *(this + 13) = v7;
  *(this + 15) = 0;
  *(this + 16) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(this + 112, *(a2 + 14), *(a2 + 15), (*(a2 + 15) - *(a2 + 14)) >> 3);
  return this;
}

void sub_254C10800(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[11] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[7] = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    v1[3] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<ClipperLib::LocalMinimum>::__init_with_size[abi:ne200100]<ClipperLib::LocalMinimum*,ClipperLib::LocalMinimum*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ClipperLib::LocalMinimum>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254C108AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ClipperLib::LocalMinimum>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::LocalMinimum>>(a1, a2);
  }

  std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::LocalMinimum>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<ClipperLib::TEdge *>::__init_with_size[abi:ne200100]<ClipperLib::TEdge **,ClipperLib::TEdge **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ClipperLib::TEdge *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254C109CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ClipperLib::TEdge *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::TEdge *>>(a1, a2);
  }

  std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::TEdge *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<ClipperLib::OutRec *>::__init_with_size[abi:ne200100]<ClipperLib::OutRec **,ClipperLib::OutRec **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ClipperLib::TEdge *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254C10ACC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254C10B48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a1, a2);
  }

  std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

ClipperLib::ClipperOffset *ClipperLib::ClipperOffset::ClipperOffset(ClipperLib::ClipperOffset *this, const ClipperLib::ClipperOffset *a2)
{
  *this = *a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  std::vector<std::vector<ClipperLib::IntPoint>>::__init_with_size[abi:ne200100]<std::vector<ClipperLib::IntPoint>*,std::vector<ClipperLib::IntPoint>*>(this + 16, *(a2 + 2), *(a2 + 3), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 3) - *(a2 + 2)) >> 3));
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(this + 40, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(this + 64, *(a2 + 8), *(a2 + 9), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 9) - *(a2 + 8)) >> 3));
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  std::vector<ClipperLib::DoublePoint>::__init_with_size[abi:ne200100]<ClipperLib::DoublePoint*,ClipperLib::DoublePoint*>(this + 88, *(a2 + 11), *(a2 + 12), (*(a2 + 12) - *(a2 + 11)) >> 4);
  v4 = *(a2 + 9);
  v5 = *(a2 + 10);
  v6 = *(a2 + 22);
  v8 = *(a2 + 7);
  v7 = *(a2 + 8);
  *(this + 24) = 0;
  *(this + 9) = v4;
  *(this + 10) = v5;
  *(this + 7) = v8;
  *(this + 8) = v7;
  *(this + 22) = v6;
  *(this + 23) = &unk_286711388;
  *(this + 25) = 0;
  *(this + 26) = 0;
  std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(this + 192, *(a2 + 24), *(a2 + 25), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 25) - *(a2 + 24)) >> 3));
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  std::vector<ClipperLib::PolyNode *>::__init_with_size[abi:ne200100]<ClipperLib::PolyNode **,ClipperLib::PolyNode **>(this + 216, *(a2 + 27), *(a2 + 28), (*(a2 + 28) - *(a2 + 27)) >> 3);
  v9 = *(a2 + 15);
  *(this + 32) = *(a2 + 32);
  *(this + 15) = v9;
  return this;
}

void sub_254C10D5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v8 = *v6;
  if (*v6)
  {
    v2[25] = v8;
    operator delete(v8);
  }

  v9 = *v5;
  if (*v5)
  {
    v2[12] = v9;
    operator delete(v9);
  }

  v10 = *v4;
  if (*v4)
  {
    v2[9] = v10;
    operator delete(v10);
  }

  v11 = *v3;
  if (*v3)
  {
    v2[6] = v11;
    operator delete(v11);
  }

  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<ClipperLib::IntPoint>>::__init_with_size[abi:ne200100]<std::vector<ClipperLib::IntPoint>*,std::vector<ClipperLib::IntPoint>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<ClipperLib::IntPoint>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254C10E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>,std::vector<ClipperLib::IntPoint>*,std::vector<ClipperLib::IntPoint>*,std::vector<ClipperLib::IntPoint>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<ClipperLib::IntPoint>>,std::vector<ClipperLib::IntPoint>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<ClipperLib::IntPoint>>,std::vector<ClipperLib::IntPoint>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<ClipperLib::IntPoint>>,std::vector<ClipperLib::IntPoint>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<ClipperLib::IntPoint>>,std::vector<ClipperLib::IntPoint>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

uint64_t std::vector<ClipperLib::IntPoint>::__init_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ClipperLib::IntPoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254C11004(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ClipperLib::IntPoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(a1, a2);
  }

  std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<ClipperLib::DoublePoint>::__init_with_size[abi:ne200100]<ClipperLib::DoublePoint*,ClipperLib::DoublePoint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ClipperLib::DoublePoint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254C11124(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ClipperLib::DoublePoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(a1, a2);
  }

  std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void ClipperLib::PolyNode::~PolyNode(ClipperLib::PolyNode *this)
{
  ClipperLib::PolyNode::~PolyNode(this);

  JUMPOUT(0x259C283A0);
}

{
  *this = &unk_286711388;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

uint64_t std::vector<ClipperLib::PolyNode *>::__init_with_size[abi:ne200100]<ClipperLib::PolyNode **,ClipperLib::PolyNode **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ClipperLib::TEdge *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254C11260(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id itk_dataFromCGImage(CGImage *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v8 = CGImageDestinationCreateWithData(v7, v5, 1uLL, 0);
  if (v8)
  {
    v9 = v8;
    CGImageDestinationAddImage(v8, a1, v6);
    if (CGImageDestinationFinalize(v9))
    {
      CFRelease(v9);
      v10 = [(__CFData *)v7 copy];
      goto LABEL_10;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      itk_dataFromCGImage_cold_1();
    }

    CFRelease(v9);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    itk_dataFromCGImage_cold_2();
  }

  v10 = 0;
LABEL_10:

  return v10;
}

void sub_254C13CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CGImageRef itk_createResizedCGImage(CGImage *a1, size_t a2, size_t a3)
{
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  BytesPerRow = CGImageGetBytesPerRow(a1);
  ColorSpace = CGImageGetColorSpace(a1);
  BitmapInfo = CGImageGetBitmapInfo(a1);
  v10 = CGBitmapContextCreate(0, a2, a3, BitsPerComponent, BytesPerRow, ColorSpace, BitmapInfo);
  CGContextSetInterpolationQuality(v10, kCGInterpolationHigh);
  ITKRectWithSize();
  CGContextDrawImage(v10, v13, a1);
  Image = CGBitmapContextCreateImage(v10);
  CGContextRelease(v10);
  return Image;
}

CGColorSpace *itk_newARGB8BitmapContextFromImage(CGImage *a1)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  result = CGImageGetColorSpace(a1);
  if (result)
  {

    return CGBitmapContextCreate(0, Width, Height, 8uLL, 4 * Width, result, 2u);
  }

  return result;
}

CVPixelBufferRef itk_pixelBufferFromCGImageWithAttributes(CGImage *a1, void *a2, CGColorSpace *a3)
{
  v5 = a2;
  DeviceRGB = a3;
  if (!a3)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  pixelBufferOut = 0;
  if (a1)
  {
    Width = CGImageGetWidth(a1);
    Height = CGImageGetHeight(a1);
    if (!CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x42475241u, v5, &pixelBufferOut))
    {
      CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
      BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
      v13 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, DeviceRGB, 0x2002u);
      v15.size.width = Width;
      v15.size.height = Height;
      v15.origin.x = 0.0;
      v15.origin.y = 0.0;
      CGContextDrawImage(v13, v15, a1);
      CGContextRelease(v13);
      CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
      if (a3)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  if (!a3)
  {
LABEL_6:
    CGColorSpaceRelease(DeviceRGB);
  }

LABEL_7:
  v9 = pixelBufferOut;

  return v9;
}

CVPixelBufferRef itk_ioSurfaceBackedPixelBufferFromCGImage(CGImage *a1, CGColorSpace *a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  DeviceRGB = a2;
  if (!a2)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  v5 = *MEMORY[0x277CC4D70];
  v9[0] = *MEMORY[0x277CC4DE8];
  v9[1] = v5;
  v10[0] = MEMORY[0x277CBEC10];
  v10[1] = MEMORY[0x277CBEC38];
  v9[2] = *MEMORY[0x277CC4D68];
  v10[2] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v7 = itk_pixelBufferFromCGImageWithAttributes(a1, v6, DeviceRGB);
  if (!a2)
  {
    CGColorSpaceRelease(DeviceRGB);
  }

  return v7;
}

CVPixelBufferRef itk_cgImageBackedPixelBufferFromCGImage(CGImage *a1, CGColorSpace *a2)
{
  if (a2)
  {

    return itk_pixelBufferFromCGImageWithAttributes(a1, 0, a2);
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v5 = itk_pixelBufferFromCGImageWithAttributes(a1, 0, DeviceRGB);
    CGColorSpaceRelease(DeviceRGB);
    return v5;
  }
}

__CVBuffer *itk_cgImageFromPixelBuffer(__CVBuffer *result)
{
  v7 = *MEMORY[0x277D85DE8];
  imageOut = 0;
  if (result)
  {
    v1 = result;
    VTCreateCGImageFromCVPixelBuffer(result, 0, &imageOut);
    result = imageOut;
    if (!imageOut)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254C07000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "VT did not return a CGImage from a buffer, trying CI", buf, 2u);
      }

      v2 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:v1];
      v3 = [objc_alloc(MEMORY[0x277CBF740]) initWithOptions:0];
      CVPixelBufferGetHeight(v1);
      CVPixelBufferGetWidth(v1);
      ITKRectWithSize();
      imageOut = [v3 createCGImage:v2 fromRect:?];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v6 = imageOut != 0;
        _os_log_impl(&dword_254C07000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CGImage from CI has result: %d", buf, 8u);
      }

      return imageOut;
    }
  }

  return result;
}

id itk_pngDataFromCGImage(CGImage *a1)
{
  v2 = [*MEMORY[0x277CE1E10] identifier];
  v3 = itk_dataFromCGImage(a1, v2, 0);

  return v3;
}

void itk_cgImageCropZeroAlpha(CGImage *a1, void *a2)
{
  v26 = a2;
  if (!a1)
  {
    [MEMORY[0x277D1C0E8] handleFailedAssertWithCondition:"imageRef" functionName:"void itk_cgImageCropZeroAlpha(CGImageRef _Nonnull simulateCrash:void (^ _Nonnull __strong)(CGImageRef _Nullable showAlert:CGRect))" format:{0, 0, @"Trying to crop a NULL image"}];
  }

  v4 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  v7 = itk_newARGB8BitmapContextFromImage(a1);
  if (v7)
  {
    Width = CGImageGetWidth(a1);
    Height = CGImageGetHeight(a1);
    v10 = Width;
    v28.size.height = Height;
    v28.origin.x = 0.0;
    v28.origin.y = 0.0;
    v28.size.width = Width;
    CGContextDrawImage(v7, v28, a1);
    Data = CGBitmapContextGetData(v7);
    Image = CGBitmapContextCreateImage(v7);
    if (Data)
    {
      if (Height)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = Height;
        v17 = Width;
        do
        {
          if (Width)
          {
            v18 = 0;
            v19 = Data;
            do
            {
              v21 = *v19;
              v19 += 4;
              v20 = v21;
              if (v17 >= v18)
              {
                v22 = v18;
              }

              else
              {
                v22 = v17;
              }

              if (v15 <= v18)
              {
                v23 = v18;
              }

              else
              {
                v23 = v15;
              }

              if (v16 >= v13)
              {
                v24 = v13;
              }

              else
              {
                v24 = v16;
              }

              if (v14 <= v13)
              {
                v25 = v13;
              }

              else
              {
                v25 = v14;
              }

              if (v20)
              {
                v17 = v22;
                v16 = v24;
                v15 = v23;
                v14 = v25;
              }

              ++v18;
            }

            while (Width != v18);
            Data += 4 * Width;
          }

          ++v13;
        }

        while (v13 != Height);
        v10 = v17;
        Width = v17;
      }

      else
      {
        v16 = 0;
        v15 = 0;
        v14 = 0;
      }

      v3 = v16;
      v5 = (v15 - Width + 1);
      v6 = (v14 - v16 + 1);
      v4 = v10;
    }

    CGContextRelease(v7);
    if (Image)
    {
      v29.origin.x = v4;
      v29.origin.y = v3;
      v29.size.width = v5;
      v29.size.height = v6;
      v7 = CGImageCreateWithImageInRect(Image, v29);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    [MEMORY[0x277D1C0E8] handleFailedAssertWithCondition:"context" functionName:"void itk_cgImageCropZeroAlpha(CGImageRef _Nonnull simulateCrash:void (^ _Nonnull __strong)(CGImageRef _Nullable showAlert:CGRect))" format:{0, 0, @"Couldn't create a bitmap context"}];
    Image = 0;
  }

  CGImageRelease(Image);
  v26[2](v26, v7, v4, v3, v5, v6);
  CGImageRelease(v7);
}

BOOL itk_isPixelBufferTransparentAtPoint(__CVBuffer *a1, double a2, double a3, double a4)
{
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  LODWORD(v4) = llround(a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if ((v4 & 0x80000000) != 0 || (LODWORD(v5) = llround(a3), (v5 & 0x80000000) != 0) || Width <= v4)
  {
    if (PixelFormatType == 1278226534)
    {
      return 0;
    }

LABEL_8:
    [MEMORY[0x277D1C0E8] handleFailedAssertWithCondition:"__objc_no" functionName:"BOOL itk_isPixelBufferTransparentAtPoint(CVPixelBufferRef _Nullable simulateCrash:CGPoint showAlert:CGFloat)" format:{0, 0, @"unsupported pixel format for itk_isPixelBufferTransparent"}];
    return 0;
  }

  if (PixelFormatType != 1278226534)
  {
    goto LABEL_8;
  }

  if (Height <= v5)
  {
    return 0;
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  v14 = *(CVPixelBufferGetBaseAddress(a1) + 4 * v4 + BytesPerRow * v5) <= a4;
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v14;
}

CGImageRef itk_createScaledCGImage(CGImage *a1, double a2)
{
  v4 = vcvtmd_u64_f64(CGImageGetWidth(a1) * a2);
  v5 = vcvtmd_u64_f64(CGImageGetHeight(a1) * a2);

  return itk_createResizedCGImage(a1, v4, v5);
}

double itk_sizeForPixelBuffer(__CVBuffer *a1)
{
  if (!a1)
  {
    return *MEMORY[0x277CBF3A8];
  }

  Width = CVPixelBufferGetWidth(a1);
  CVPixelBufferGetHeight(a1);
  return Width;
}

double itk_sizeForCGImage(CGImage *a1)
{
  if (!a1)
  {
    return *MEMORY[0x277CBF3A8];
  }

  Width = CGImageGetWidth(a1);
  CGImageGetHeight(a1);
  return Width;
}

void ClipperLib::PolyTree::Clear(ClipperLib::PolyTree *this)
{
  v2 = *(this + 10);
  v3 = *(this + 11);
  v4 = (this + 80);
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      v6 = *(v2 + 8 * v5);
      if (v6)
      {
        (*(*v6 + 8))(v6);
        v2 = *(this + 10);
        v3 = *(this + 11);
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  std::vector<ClipperLib::PolyNode *>::resize(v4, 0);

  std::vector<ClipperLib::PolyNode *>::resize(this + 4, 0);
}

void std::vector<ClipperLib::PolyNode *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<ClipperLib::PolyNode *>::__append(a1, a2 - v2);
  }
}

uint64_t ClipperLib::PolyTree::GetFirst(ClipperLib::PolyTree *this)
{
  v1 = *(this + 4);
  if (v1 == *(this + 5))
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t ClipperLib::PolyTree::Total(ClipperLib::PolyTree *this)
{
  v2 = *(this + 10);
  result = (*(this + 11) - v2) >> 3;
  if (result >= 1)
  {
    return result - (**(this + 4) != *v2);
  }

  return result;
}

double ClipperLib::PolyNode::PolyNode(ClipperLib::PolyNode *this)
{
  *this = &unk_286711388;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 53) = 0u;
  return result;
}

{
  *this = &unk_286711388;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 53) = 0u;
  return result;
}

void ClipperLib::PolyNode::AddChild(ClipperLib::PolyNode *this, ClipperLib::PolyNode *a2)
{
  v5 = *(this + 4);
  v6 = *(this + 5);
  v4 = this + 32;
  v7 = *(v4 + 2);
  v8 = v6 - v5;
  if (v6 >= v7)
  {
    v10 = v8 >> 3;
    v11 = (v8 >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
    }

    v12 = v7 - v5;
    v13 = v12 >> 2;
    if (v12 >> 2 <= v11)
    {
      v13 = (v8 >> 3) + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::TEdge *>>(v4, v14);
    }

    *(8 * v10) = a2;
    v9 = 8 * v10 + 8;
    v15 = *(this + 4);
    v16 = *(this + 5) - v15;
    v17 = (8 * v10 - v16);
    memcpy(v17, v15, v16);
    v18 = *(this + 4);
    *(this + 4) = v17;
    *(this + 5) = v9;
    *(this + 6) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v6 = a2;
    v9 = (v6 + 1);
  }

  *(this + 5) = v9;
  *(a2 + 7) = this;
  *(a2 + 16) = v8 >> 3;
}

uint64_t ClipperLib::PolyNode::GetNext(ClipperLib::PolyNode *this)
{
  v1 = *(this + 4);
  if (v1 == *(this + 5))
  {
    do
    {
      v4 = *(this + 7);
      if (!v4)
      {
        return 0;
      }

      v2 = *(this + 16);
      v3 = *(v4 + 32);
      this = *(this + 7);
    }

    while (((*(v4 + 40) - v3) >> 3) - 1 == v2);
    v1 = v3 + 8 * (v2 + 1);
  }

  return *v1;
}

uint64_t ClipperLib::PolyNode::GetNextSiblingUp(ClipperLib::PolyNode *this)
{
  while (1)
  {
    v1 = *(this + 7);
    if (!v1)
    {
      break;
    }

    v2 = *(this + 16);
    v3 = *(v1 + 32);
    this = *(this + 7);
    if (((*(v1 + 40) - v3) >> 3) - 1 != v2)
    {
      return *(v3 + 8 * (v2 + 1));
    }
  }

  return 0;
}

uint64_t ClipperLib::PolyNode::IsHole(ClipperLib::PolyNode *this)
{
  v1 = 1;
  do
  {
    v2 = v1;
    this = *(this + 7);
    v1 ^= 1u;
  }

  while (this);
  return v2 & 1;
}

uint64_t ClipperLib::Int128Mul@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = a2 ^ this;
  if (this >= 0)
  {
    v4 = this;
  }

  else
  {
    v4 = -this;
  }

  if (a2 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = -a2;
  }

  v6 = HIDWORD(v5);
  v7 = v5;
  v8 = v5 * v4;
  v9 = v6 * v4 + v7 * HIDWORD(v4);
  v10 = HIDWORD(v9) + v6 * HIDWORD(v4);
  v11 = v8 + (v9 << 32);
  *a3 = v11;
  a3[1] = v10;
  if (__CFADD__(v8, v9 << 32))
  {
    a3[1] = ++v10;
    if ((v3 & 0x8000000000000000) == 0)
    {
      return this;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0)
  {
    return this;
  }

  v12 = -v10;
  if (v11)
  {
    v12 = ~v10;
  }

  *a3 = -v11;
  a3[1] = v12;
  return this;
}

double ClipperLib::Area(uint64_t *a1)
{
  v1 = *a1;
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  result = 0.0;
  if (v2 >= 3)
  {
    v4 = 0;
    v5 = v2 - 1;
    v6 = v2 & 0x7FFFFFFF;
    v7 = (v1 + 8);
    do
    {
      result = result + (*(v1 + 24 * v5) + *(v7 - 1)) * (*(v1 + 24 * v5 + 8) - *v7);
      v5 = v4++;
      v7 += 3;
    }

    while (v6 != v4);
    return result * -0.5;
  }

  return result;
}

double ClipperLib::Area(void *a1)
{
  result = 0.0;
  if (a1)
  {
    v2 = a1;
    do
    {
      result = result + (v2[1] + *(v2[5] + 8)) * (*(v2[5] + 16) - v2[2]);
      v2 = v2[4];
    }

    while (v2 != a1);
    return result * 0.5;
  }

  return result;
}

double ClipperLib::Area(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0.0;
  }

  v2 = 0.0;
  v3 = *(a1 + 24);
  do
  {
    v2 = v2 + (v3[1] + *(v3[5] + 8)) * (*(v3[5] + 16) - v3[2]);
    v3 = v3[4];
  }

  while (v3 != v1);
  return v2 * 0.5;
}

uint64_t ClipperLib::PointIsVertex(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2;
  do
  {
    v5 = v4[1] == v2 && v4[2] == v3;
    result = v5;
    if (v5)
    {
      break;
    }

    v4 = v4[4];
  }

  while (v4 != a2);
  return result;
}

uint64_t ClipperLib::PointInPolygon(void *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3);
  if (v3 < 3)
  {
    return 0;
  }

  result = 0;
  v6 = *v2;
  v7 = v2[1];
  v8 = 1;
  v11 = a1;
  v9 = *a1;
  v10 = v11[1];
  while (1)
  {
    v12 = v3 == v8 ? 0 : v8;
    v13 = &v2[3 * v12];
    v14 = *v13;
    v15 = v13[1];
    if (v15 == v10 && (v14 == v9 || v7 == v10 && v14 > v9 != v6 >= v9))
    {
      return 0xFFFFFFFFLL;
    }

    if (v7 < v10 == v15 >= v10)
    {
      v17 = __OFSUB__(v6, v9);
      v16 = v6 - v9 < 0;
      v18 = v6 - v9;
      if (v16 != v17)
      {
        v19 = v14 - v9;
        if (v14 <= v9)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v19 = v14 - v9;
        if (v14 > v9)
        {
          result = (1 - result);
          goto LABEL_22;
        }
      }

      v20 = v18 * (v15 - v10) - v19 * (v7 - v10);
      if (v20 == 0.0)
      {
        return 0xFFFFFFFFLL;
      }

      if (v15 <= v7 != v20 > 0.0)
      {
        result = (1 - result);
      }

      else
      {
        result = result;
      }
    }

LABEL_22:
    ++v8;
    v7 = v15;
    v6 = v14;
    if (v8 > v3)
    {
      return result;
    }
  }
}

uint64_t ClipperLib::PointInPolygon(void *a1, void *a2)
{
  result = 0;
  v6 = a1;
  v4 = *a1;
  v5 = v6[1];
  v7 = a2;
  while (1)
  {
    v8 = v7;
    v7 = v7[4];
    v9 = v7[2];
    if (v9 != v5)
    {
      v11 = v8[2];
LABEL_9:
      if (v9 >= v5 != v11 < v5)
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    v10 = v7[1];
    if (v10 == v4)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = v8[2];
    if (v11 != v5)
    {
      goto LABEL_9;
    }

    if (v10 > v4 != v8[1] >= v4)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = v5;
    if (v9 >= v5)
    {
      goto LABEL_21;
    }

LABEL_10:
    v12 = v8[1];
    v13 = v7[1];
    v15 = __OFSUB__(v12, v4);
    v14 = v12 - v4 < 0;
    v16 = v12 - v4;
    if (v14 == v15)
    {
      break;
    }

    v15 = __OFSUB__(v13, v4);
    v17 = v13 == v4;
    v14 = v13 - v4 < 0;
    v18 = v13 - v4;
    if (!(v14 ^ v15 | v17))
    {
      goto LABEL_17;
    }

LABEL_21:
    if (v7 == a2)
    {
      return result;
    }
  }

  v15 = __OFSUB__(v13, v4);
  v17 = v13 == v4;
  v14 = v13 - v4 < 0;
  v18 = v13 - v4;
  if (!(v14 ^ v15 | v17))
  {
    result = (1 - result);
    goto LABEL_21;
  }

LABEL_17:
  v19 = v16 * (v9 - v5) - v18 * (v11 - v5);
  if (v19 != 0.0)
  {
    if (v9 <= v11 != v19 > 0.0)
    {
      result = (1 - result);
    }

    else
    {
      result = result;
    }

    goto LABEL_21;
  }

  return 0xFFFFFFFFLL;
}

BOOL ClipperLib::Poly2ContainsPoly1(uint64_t a1, void *a2)
{
  v4 = a1;
  while (1)
  {
    v5 = ClipperLib::PointInPolygon((v4 + 8), a2);
    if ((v5 & 0x80000000) == 0)
    {
      break;
    }

    v4 = *(v4 + 32);
    if (v4 == a1)
    {
      return 1;
    }
  }

  return v5 != 0;
}

BOOL ClipperLib::SlopesEqual(void *a1, void *a2, int a3)
{
  if (a3)
  {
    ClipperLib::Int128Mul(a1[7] - a1[1], a2[6] - *a2, v8);
    ClipperLib::Int128Mul(a1[6] - *a1, a2[7] - a2[1], v7);
    return v8[1] == v7[1] && v8[0] == v7[0];
  }

  else
  {
    return (a2[6] - *a2) * (a1[7] - a1[1]) == (a2[7] - a2[1]) * (a1[6] - *a1);
  }
}

BOOL ClipperLib::SlopesEqual(void *a1, uint64_t *a2, void *a3, int a4)
{
  if (a4)
  {
    v7 = *a2;
    v6 = a2[1];
    ClipperLib::Int128Mul(a1[1] - v6, *a2 - *a3, v11);
    ClipperLib::Int128Mul(*a1 - v7, v6 - a3[1], v10);
    return v11[1] == v10[1] && v11[0] == v10[0];
  }

  else
  {
    return (*a2 - *a3) * (a1[1] - a2[1]) == (a2[1] - a3[1]) * (*a1 - *a2);
  }
}

BOOL ClipperLib::SlopesEqual(void *a1, void *a2, void *a3, void *a4, int a5)
{
  if (a5)
  {
    ClipperLib::Int128Mul(a1[1] - a2[1], *a3 - *a4, v12);
    ClipperLib::Int128Mul(*a1 - *a2, a3[1] - a4[1], v11);
    return v12[1] == v11[1] && v12[0] == v11[0];
  }

  else
  {
    return (*a3 - *a4) * (a1[1] - a2[1]) == (a3[1] - a4[1]) * (*a1 - *a2);
  }
}

uint64_t ClipperLib::IntersectPoint(uint64_t result, uint64_t a2, int64x2_t *a3)
{
  a3[1].i64[0] = 0xBF800000BF800000;
  v3 = *(result + 72);
  v4 = *(a2 + 72);
  if (v3 == v4)
  {
    v5 = *(result + 32);
    a3->i64[1] = v5;
    if (*(result + 56) != v5)
    {
      v11 = v3 * (v5 - *(result + 8));
      v12 = 0.5;
      if (v11 < 0.0)
      {
        v12 = -0.5;
      }

      v6 = *result + (v11 + v12);
      goto LABEL_49;
    }

    goto LABEL_3;
  }

  if (v3 == 0.0)
  {
    v7 = *result;
    a3->i64[0] = *result;
    v8 = *(a2 + 8);
    if (v4 != -1.0e40)
    {
      v9 = v8 - *a2 / v4;
      v10 = v7 / v4;
LABEL_13:
      v14 = v10 + v9;
      v15 = 0.5;
      if (v14 < 0.0)
      {
        v15 = -0.5;
      }

      v8 = (v14 + v15);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (v4 == 0.0)
  {
    v13 = *a2;
    a3->i64[0] = *a2;
    v8 = *(result + 8);
    if (v3 != -1.0e40)
    {
      v9 = v8 - *result / v3;
      v10 = v13 / v3;
      goto LABEL_13;
    }

LABEL_16:
    a3->i64[1] = v8;
    goto LABEL_17;
  }

  v20 = *result - *(result + 8) * v3;
  v21 = *a2 - *(a2 + 8) * v4;
  v22 = (v21 - v20) / (v3 - v4);
  v23 = v21 + v4 * v22;
  v24.f64[0] = v20 + v3 * v22;
  if (fabs(v3) >= fabs(v4))
  {
    v24.f64[0] = v23;
  }

  v24.f64[1] = v22;
  __asm
  {
    FMOV            V4.2D, #0.5
    FMOV            V5.2D, #-0.5
  }

  v31 = vcvtq_s64_f64(vaddq_f64(v24, vbslq_s8(vcltzq_f64(v24), _Q5, _Q4)));
  *a3 = v31;
  v8 = v31.i64[1];
LABEL_17:
  v16 = *(result + 56);
  v17 = *(a2 + 56);
  if (v8 < v16 || v8 < v17)
  {
    if (v16 <= v17)
    {
      v8 = *(a2 + 56);
    }

    else
    {
      v8 = *(result + 56);
    }

    a3->i64[1] = v8;
    if (fabs(v3) >= fabs(v4))
    {
      if (*(a2 + 56) == v8)
      {
        v19 = *(a2 + 48);
        goto LABEL_38;
      }

      v32 = *a2;
      v33 = v4 * (v8 - *(a2 + 8));
    }

    else
    {
      if (*(result + 56) == v8)
      {
        v19 = *(result + 48);
LABEL_38:
        a3->i64[0] = v19;
        goto LABEL_39;
      }

      v32 = *result;
      v33 = v3 * (v8 - *(result + 8));
    }

    v34 = 0.5;
    if (v33 < 0.0)
    {
      v34 = -0.5;
    }

    v19 = v32 + (v33 + v34);
    goto LABEL_38;
  }

LABEL_39:
  v35 = *(result + 32);
  if (v8 <= v35)
  {
    return result;
  }

  a3->i64[1] = v35;
  if (fabs(v3) > fabs(v4))
  {
    if (*(a2 + 56) == v35)
    {
      v6 = *(a2 + 48);
      goto LABEL_49;
    }

    v36 = *a2;
    v37 = v4 * (v35 - *(a2 + 8));
LABEL_46:
    v38 = 0.5;
    if (v37 < 0.0)
    {
      v38 = -0.5;
    }

    v6 = v36 + (v37 + v38);
    goto LABEL_49;
  }

  if (*(result + 56) != v35)
  {
    v36 = *result;
    v37 = v3 * (v35 - *(result + 8));
    goto LABEL_46;
  }

LABEL_3:
  v6 = *(result + 48);
LABEL_49:
  a3->i64[0] = v6;
  return result;
}

int8x16_t ClipperLib::ReversePolyPtLinks(__n128 *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      result = v1[2];
      v1[2] = vextq_s8(result, result, 8uLL);
      v1 = result.i64[0];
    }

    while (result.i64[0] != a1);
  }

  return result;
}

void *ClipperLib::DisposeOutPts(void *result)
{
  if (*result)
  {
    v1 = result;
    *(*(*result + 40) + 32) = 0;
    result = *result;
    if (result)
    {
      do
      {
        *v1 = result[4];
        MEMORY[0x259C283A0]();
        result = *v1;
      }

      while (*v1);
    }
  }

  return result;
}

uint64_t ClipperLib::InitEdge2(uint64_t result, int a2)
{
  v2 = *(result + 104);
  if (*(result + 32) >= *(v2 + 32))
  {
    *result = *(result + 24);
    *(result + 16) = *(result + 40);
    v4 = *(v2 + 40);
    *(result + 48) = *(v2 + 24);
    *(result + 64) = v4;
  }

  else
  {
    *(result + 48) = *(result + 24);
    *(result + 64) = *(result + 40);
    v3 = *(v2 + 40);
    *result = *(v2 + 24);
    *(result + 16) = v3;
  }

  v5 = *(result + 56) - *(result + 8);
  if (v5)
  {
    v6 = (*(result + 48) - *result) / v5;
  }

  else
  {
    v6 = -1.0e40;
  }

  *(result + 72) = v6;
  *(result + 80) = a2;
  return result;
}

uint64_t ClipperLib::RemoveEdge(uint64_t a1)
{
  v1 = *(a1 + 104);
  v2 = *(a1 + 112);
  *(v2 + 104) = v1;
  *(v1 + 112) = v2;
  *(a1 + 112) = 0;
  return v1;
}

__n128 ClipperLib::SwapPoints(__n128 *a1, __n128 *a2)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  v4 = a2[1].n128_u64[0];
  *a1 = *a2;
  a1[1].n128_u64[0] = v4;
  *a2 = result;
  a2[1].n128_u64[0] = v2;
  return result;
}

BOOL ClipperLib::GetOverlapSegment(int64x2_t *a1, int64x2_t *a2, int64x2_t *a3, int64x2_t *a4, int64x2_t *a5, int64x2_t *a6)
{
  v6 = *a1;
  v7 = *a2;
  v8 = vabsq_s64(vsubq_s64(*a1, *a2));
  if (vmovn_s64(vcgtq_u64(v8, vdupq_laneq_s64(v8, 1))).u8[0])
  {
    if (vmovn_s64(vcgtq_s64(v6, v7)).u8[0])
    {
      v9 = a1[1].i64[0];
      v10 = *a1;
      v11 = a2[1].i64[0];
      *a1 = *a2;
      a1[1].i64[0] = v11;
      *a2 = v10;
      a2[1].i64[0] = v9;
    }

    v12 = a3->i64[0];
    if (a3->i64[0] > a4->i64[0])
    {
      v13 = a3[1].i64[0];
      v14 = *a3;
      v15 = a4[1].i64[0];
      *a3 = *a4;
      a3[1].i64[0] = v15;
      *a4 = v14;
      a4[1].i64[0] = v13;
      v12 = a3->i64[0];
    }

    if (a1->i64[0] <= v12)
    {
      v16 = a3;
    }

    else
    {
      v16 = a1;
    }

    v17 = *v16;
    a5[1].i64[0] = v16[1].i64[0];
    *a5 = v17;
    if (a2->i64[0] >= a4->i64[0])
    {
      v18 = a4;
    }

    else
    {
      v18 = a2;
    }

    v19 = *v18;
    a6[1].i64[0] = v18[1].i64[0];
    *a6 = v19;
    return a5->i64[0] < a6->i64[0];
  }

  else
  {
    if (vmovn_s64(vcgtq_s64(v7, v6)).i32[1])
    {
      v21 = a1[1].i64[0];
      v22 = *a1;
      v23 = a2[1].i64[0];
      *a1 = *a2;
      a1[1].i64[0] = v23;
      *a2 = v22;
      a2[1].i64[0] = v21;
    }

    v24 = a3->i64[1];
    if (v24 < a4->i64[1])
    {
      v25 = a3[1].i64[0];
      v26 = *a3;
      v27 = a4[1].i64[0];
      *a3 = *a4;
      a3[1].i64[0] = v27;
      *a4 = v26;
      a4[1].i64[0] = v25;
      v24 = a3->i64[1];
    }

    if (a1->i64[1] >= v24)
    {
      v28 = a3;
    }

    else
    {
      v28 = a1;
    }

    v29 = *v28;
    a5[1].i64[0] = v28[1].i64[0];
    *a5 = v29;
    if (a2->i64[1] <= a4->i64[1])
    {
      v30 = a4;
    }

    else
    {
      v30 = a2;
    }

    v31 = *v30;
    a6[1].i64[0] = v30[1].i64[0];
    *a6 = v31;
    return a5->i64[1] > a6->i64[1];
  }
}

uint64_t ClipperLib::FirstIsBottomPt(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = result;
  do
  {
    v4 = v4[5];
    v5 = v4[1];
    v6 = v4[2];
  }

  while (v4 != result && v5 == v2 && v6 == v3);
  v9 = v6 - v3;
  if (v9)
  {
    v10 = (v5 - v2) / v9;
  }

  else
  {
    v10 = -1.0e40;
  }

  v11 = result;
  do
  {
    v11 = v11[4];
    v12 = v11[1];
    v13 = v11[2];
  }

  while (v11 != result && v12 == v2 && v13 == v3);
  v16 = v13 - v3;
  if (v16)
  {
    v17 = (v12 - v2) / v16;
  }

  else
  {
    v17 = -1.0e40;
  }

  v18 = fabs(v10);
  v19 = a2[1];
  v20 = a2[2];
  v21 = a2;
  do
  {
    v21 = v21[5];
    v22 = v21[1];
    v23 = v21[2];
  }

  while (v21 != a2 && v22 == v19 && v23 == v20);
  if (v23 == v20)
  {
    v26 = -1.0e40;
  }

  else
  {
    v26 = (v22 - v19) / (v23 - v20);
  }

  v27 = fabs(v17);
  v28 = a2;
  do
  {
    v28 = v28[4];
    v29 = v28[1];
    v30 = v28[2];
  }

  while (v28 != a2 && v29 == v19 && v30 == v20);
  v33 = fabs(v26);
  v34 = v30 - v20;
  if (v34)
  {
    v35 = (v29 - v19) / v34;
  }

  else
  {
    v35 = -1.0e40;
  }

  v36 = fabs(v35);
  if (v18 >= v27)
  {
    v37 = v18;
  }

  else
  {
    v37 = v27;
  }

  if (v33 >= v36)
  {
    v38 = v33;
  }

  else
  {
    v38 = v36;
  }

  if (v37 == v38 && (v27 >= v18 ? (v39 = v18) : (v39 = v27), v36 >= v33 ? (v40 = v33) : (v40 = v36), v39 == v40))
  {
    if (result)
    {
      v41 = 0.0;
      v42 = result;
      do
      {
        v41 = v41 + (v42[1] + *(v42[5] + 8)) * (*(v42[5] + 16) - v42[2]);
        v42 = v42[4];
      }

      while (v42 != result);
      return v41 * 0.5 > 0.0;
    }
  }

  else
  {
    v43 = v27 >= v33;
    if (v27 < v36)
    {
      v43 = 0;
    }

    return v18 >= v33 && v18 >= v36 || v43;
  }

  return result;
}

void *ClipperLib::GetBottomPt(void *a1)
{
  v1 = a1;
  v2 = a1[4];
  if (v2 == a1)
  {
    return v1;
  }

  v3 = 0;
  do
  {
    v4 = v2[2];
    v5 = v1[2];
    if (v4 > v5)
    {
LABEL_4:
      v3 = 0;
      v1 = v2;
      goto LABEL_11;
    }

    if (v4 == v5)
    {
      v6 = v2[1];
      v7 = v1[1];
      if (v6 <= v7)
      {
        if (v6 < v7)
        {
          goto LABEL_4;
        }

        if (v2[4] != v1 && v2[5] != v1)
        {
          v3 = v2;
        }
      }
    }

LABEL_11:
    v2 = v2[4];
  }

  while (v2 != v1);
  if (v3)
  {
    while (v3 != v2)
    {
      if (!ClipperLib::FirstIsBottomPt(v2, v3))
      {
        v1 = v3;
      }

      do
      {
        v3 = v3[4];
      }

      while (v3[1] != v1[1] || v3[2] != v1[2]);
    }
  }

  return v1;
}

uint64_t ClipperLib::Pt2IsBetweenPt1AndPt3(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a3;
  v6 = a3[1];
  if (*a1 == *a3 && v4 == v6)
  {
    return 0;
  }

  v8 = *a2;
  v9 = a2[1];
  if (v3 == *a2 && v4 == v9)
  {
    return 0;
  }

  if (v5 == v8 && v6 == v9)
  {
    return 0;
  }

  v12 = (v9 > v4) ^ (v9 >= v6);
  if (v3 == v5)
  {
    return v12;
  }

  else
  {
    return (v8 > v3) ^ (v8 >= v5);
  }
}

BOOL ClipperLib::HorzSegmentsOverlap(ClipperLib *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (this >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = this;
  }

  if (this <= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = this;
  }

  if (a3 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  if (a3 <= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  return v4 < v7 && v6 < v5;
}

double ClipperLib::ClipperBase::ClipperBase(ClipperLib::ClipperBase *this)
{
  *this = &unk_2867113F8;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  return result;
}

{
  *this = &unk_2867113F8;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  return result;
}

void ClipperLib::ClipperBase::~ClipperBase(ClipperLib::ClipperBase *this)
{
  *this = &unk_2867113F8;
  ClipperLib::ClipperBase::Clear(this);
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    *(this + 7) = v4;
    operator delete(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    *(this + 3) = v5;
    operator delete(v5);
  }
}

{
  ClipperLib::ClipperBase::~ClipperBase(this);

  JUMPOUT(0x259C283A0);
}

uint64_t *ClipperLib::RangeTest(uint64_t *result, _BYTE *a2)
{
  v2 = *result;
  if ((*a2 & 1) == 0)
  {
    if (v2 <= 0x3FFFFFFF && v2 >= -1073741823 && (result[1] - 0x40000000) >= 0xFFFFFFFF80000001)
    {
      return result;
    }

    *a2 = 1;
  }

  if (v2 > 0x3FFFFFFFFFFFFFFFLL || (v2 >= 0xC000000000000001 ? (v5 = (result[1] - 0x4000000000000000) > 0x8000000000000000) : (v5 = 0), !v5))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    ClipperLib::clipperException::clipperException(exception, "Coordinate outside allowed range");
  }

  return result;
}

uint64_t ClipperLib::FindNextLocMin(uint64_t result)
{
  while (1)
  {
    while (1)
    {
      v1 = *(result + 112);
      if (*result == *v1 && *(result + 8) == *(v1 + 8) && (*(result + 24) != *(result + 48) || *(result + 32) != *(result + 56)))
      {
        break;
      }

      result = *(result + 104);
    }

    if (*(result + 72) != -1.0e40 && *(v1 + 72) != -1.0e40)
    {
      break;
    }

    v4 = result;
    do
    {
      v5 = v4;
      v4 = *(v4 + 112);
    }

    while (*(v4 + 72) == -1.0e40);
    v6 = v4;
    result = v5;
    if (*(v5 + 72) == -1.0e40)
    {
      result = v5;
      do
      {
        result = *(result + 104);
      }

      while (*(result + 72) == -1.0e40);
      v6 = *(result + 112);
    }

    if (*(result + 56) != *(v6 + 8))
    {
      if (*v4 < *result)
      {
        return v5;
      }

      return result;
    }
  }

  return result;
}

uint64_t ClipperLib::ClipperBase::ProcessBound(uint64_t a1, uint64_t *a2, int a3, __n128 a4)
{
  if (*(a2 + 25) == -2)
  {
    v5 = a2;
    if (a3)
    {
      do
      {
        v6 = v5;
        v7 = *(v5 + 7);
        v5 = *(v5 + 13);
      }

      while (v7 == *(v5 + 1));
      if (v6 != a2)
      {
        a4.n128_u64[0] = 0xC83D6329F1C35CA5;
        do
        {
          if (v6[9] != -1.0e40)
          {
            break;
          }

          v6 = *(v6 + 14);
        }

        while (v6 != a2);
      }
    }

    else
    {
      do
      {
        v6 = v5;
        v8 = *(v5 + 7);
        v5 = *(v5 + 14);
      }

      while (v8 == *(v5 + 1));
      if (v6 != a2)
      {
        a4.n128_u64[0] = 0xC83D6329F1C35CA5;
        do
        {
          if (v6[9] != -1.0e40)
          {
            break;
          }

          v6 = *(v6 + 13);
        }

        while (v6 != a2);
      }
    }

    if (v6 == a2)
    {
      if (a3)
      {
        return *(v6 + 13);
      }

      else
      {
        return *(v6 + 14);
      }
    }

    else
    {
      v9 = 14;
      if (a3)
      {
        v9 = 13;
      }

      v10 = a2[v9];
      v39 = *(v10 + 8);
      v40 = v10;
      *(v10 + 88) = 0;
      v11 = ClipperLib::ClipperBase::ProcessBound(a1, a4);
      std::vector<ClipperLib::LocalMinimum>::push_back[abi:ne200100](a1 + 16, &v39);
      return v11;
    }
  }

  if (*(a2 + 9) == -1.0e40)
  {
    v13 = 13;
    if (a3)
    {
      v13 = 14;
    }

    v14 = a2[v13];
    v15 = *v14;
    v16 = *a2;
    if (v14[9] == -1.0e40)
    {
      if (*&v15 == *&v16 || *(v14 + 6) == *&v16)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (*&v15 != *&v16)
    {
LABEL_28:
      v17 = a2[6];
      *(a2 + 6) = v16;
      *a2 = v17;
      v18 = a2[8];
      a2[8] = a2[2];
      a2[2] = v18;
    }
  }

LABEL_29:
  v19 = a2;
  if (a3)
  {
    do
    {
      v20 = v19;
      v21 = v19[7];
      v19 = v19[13];
    }

    while (v21 == v19[1] && *(v19 + 25) != -2);
    if (v20[9] == -1.0e40 && *(v19 + 25) != -2)
    {
      v22 = v20;
      do
      {
        v22 = *(v22 + 14);
      }

      while (v22[9] == -1.0e40);
      if (*(v22 + 6) > v19[6])
      {
        v20 = v22;
      }
    }

    if (v20 != a2)
    {
      v23 = a2;
      do
      {
        v24 = v23;
        v23 = *(v23 + 13);
        *(v24 + 15) = v23;
        if (v24 != a2 && v24[9] == -1.0e40 && *v24 != *(*(v24 + 14) + 48))
        {
          v25 = *(v24 + 6);
          v24[6] = *v24;
          *v24 = v25;
          v26 = *(v24 + 8);
          v24[8] = v24[2];
          *(v24 + 2) = v26;
        }
      }

      while (v23 != v20);
      if (v23 != a2 && v23[9] == -1.0e40 && *v23 != *(*(v23 + 14) + 48))
      {
        v27 = *(v23 + 6);
        v23[6] = *v23;
        *v23 = v27;
        v28 = *(v23 + 8);
        v23[8] = v23[2];
        *(v23 + 2) = v28;
      }
    }

    v29 = (v20 + 13);
  }

  else
  {
    do
    {
      v30 = v19;
      v31 = v19[7];
      v19 = v19[14];
    }

    while (v31 == v19[1] && *(v19 + 25) != -2);
    if (v30[9] == -1.0e40 && *(v19 + 25) != -2)
    {
      v32 = v30;
      do
      {
        v32 = *(v32 + 13);
      }

      while (v32[9] == -1.0e40);
      if (*(v32 + 6) >= v19[6])
      {
        v30 = v32;
      }
    }

    if (v30 != a2)
    {
      v33 = a2;
      do
      {
        v34 = v33;
        v33 = *(v33 + 14);
        *(v34 + 15) = v33;
        if (v34 != a2 && v34[9] == -1.0e40 && *v34 != *(*(v34 + 13) + 48))
        {
          v35 = *(v34 + 6);
          v34[6] = *v34;
          *v34 = v35;
          v36 = *(v34 + 8);
          v34[8] = v34[2];
          *(v34 + 2) = v36;
        }
      }

      while (v33 != v30);
      if (v33 != a2 && v33[9] == -1.0e40 && *v33 != *(*(v33 + 13) + 48))
      {
        v37 = *(v33 + 6);
        v33[6] = *v33;
        *v33 = v37;
        v38 = *(v33 + 8);
        v33[8] = v33[2];
        *(v33 + 2) = v38;
      }
    }

    v29 = (v30 + 14);
  }

  return *v29;
}

void std::vector<ClipperLib::LocalMinimum>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::LocalMinimum>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
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
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t ClipperLib::ClipperBase::AddPath(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3 == 1 && (a4 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    ClipperLib::clipperException::clipperException(exception, "AddPath: Open paths must be subject.");
  }

  v4 = *a2;
  v5 = -1431655765 * ((*(a2 + 8) - *a2) >> 3);
  v6 = v5 - 1;
  if (a4 && v5 >= 2)
  {
    do
    {
      v7 = &v4[3 * --v5];
      v9 = *v7;
      v8 = v7[1];
      if (v9 != *v4 || v8 != v4[1])
      {
        v6 = v5;
        goto LABEL_12;
      }
    }

    while (v5 > 1);
    v6 = 0;
  }

LABEL_12:
  v11 = v6 & (v6 >> 31);
  while (1)
  {
    v12 = v6 - 1;
    if (v6 < 1)
    {
      break;
    }

    v13 = &v4[3 * v6];
    v14 = &v4[3 * v12];
    v16 = *v13;
    v15 = v13[1];
    v18 = *v14;
    v17 = v14[1];
    v19 = v16 == v18 && v15 == v17;
    v6 = v12;
    if (!v19)
    {
      v11 = v12 + 1;
      break;
    }
  }

  if (v11 > a4)
  {
    operator new[]();
  }

  return 0;
}

void std::vector<ClipperLib::TEdge *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::TEdge *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
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

uint64_t ClipperLib::ClipperBase::AddPaths(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  if (a2[1] == *a2)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v11 |= (*(*a1 + 16))(a1, v4 + v9, a3, a4);
      ++v10;
      v4 = *a2;
      v9 += 24;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  return v11 & 1;
}

void *ClipperLib::ClipperBase::Clear(void *this)
{
  v1 = this;
  v2 = this[2];
  this[3] = v2;
  this[1] = v2;
  v3 = this[6];
  v4 = this[7];
  if (v4 != v3)
  {
    v5 = 0;
    do
    {
      this = *(v3 + 8 * v5);
      if (this)
      {
        this = MEMORY[0x259C28380](this, 0x1020C80A8A5F671);
        v3 = v1[6];
        v4 = v1[7];
      }

      ++v5;
    }

    while (v5 < (v4 - v3) >> 3);
  }

  v1[7] = v3;
  *(v1 + 40) = 0;
  *(v1 + 73) = 0;
  return this;
}

void *ClipperLib::ClipperBase::DisposeLocalMinimaList(void *this)
{
  v1 = this[2];
  this[3] = v1;
  this[1] = v1;
  return this;
}

void ClipperLib::ClipperBase::Reset(ClipperLib::ClipperBase *this, __n128 a2)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  *(this + 1) = v3;
  if (v3 != v4)
  {
    std::__introsort<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,false>(v3, v4, &v9, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3)), 1, a2);
    v5 = *(this + 14);
    if (v5)
    {
      *(this + 15) = v5;
      operator delete(v5);
    }

    *(this + 14) = 0;
    *(this + 15) = 0;
    *(this + 16) = 0;
    v6 = *(this + 2);
    if (v6 != *(this + 3))
    {
      do
      {
        ClipperLib::ClipperBase::InsertScanbeam(this, *v6);
        v7 = v6[1];
        if (v7)
        {
          *(v7 + 24) = *v7;
          *(v7 + 40) = *(v7 + 16);
          *(v7 + 84) = 1;
          *(v7 + 100) = -1;
        }

        v8 = v6[2];
        if (v8)
        {
          *(v8 + 24) = *v8;
          *(v8 + 40) = *(v8 + 16);
          *(v8 + 84) = 2;
          *(v8 + 100) = -1;
        }

        v6 += 3;
      }

      while (v6 != *(this + 3));
      v6 = *(this + 2);
    }

    *(this + 13) = 0;
    *(this + 1) = v6;
  }
}

uint64_t ClipperLib::ClipperBase::InsertScanbeam(ClipperLib::ClipperBase *this, uint64_t a2)
{
  v5 = *(this + 15);
  v4 = *(this + 16);
  if (v5 >= v4)
  {
    v7 = *(this + 14);
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(this + 112, v13);
    }

    v14 = v9;
    v15 = (8 * v9);
    v16 = &v15[-v14];
    *v15 = a2;
    v6 = (v15 + 1);
    memcpy(v16, v7, v8);
    v17 = *(this + 14);
    *(this + 14) = v16;
    *(this + 15) = v6;
    *(this + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 8);
  }

  *(this + 15) = v6;
  return std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<long long> &,std::__wrap_iter<long long *>>(*(this + 14), v6, &v19, (v6 - *(this + 14)) >> 3);
}

uint64_t ClipperLib::ClipperBase::PopLocalMinima(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3 == *(a1 + 24) || *v3 != a2)
  {
    return 0;
  }

  *a3 = v3;
  *(a1 + 8) += 24;
  return 1;
}

double ClipperLib::ClipperBase::GetBounds@<D0>(ClipperLib::ClipperBase *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 == v3)
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v4 = *(v2 + 8);
    v6 = *v4;
    v5 = v4[1];
    *(a2 + 8) = v5;
    v7 = v6;
    v8 = v5;
    do
    {
      v9 = *(v2 + 8);
      v10 = *(v2 + 16);
      if (v5 <= v9[1])
      {
        v5 = v9[1];
      }

      *(a2 + 24) = v5;
      v11 = v9;
      do
      {
        v12 = v11[15];
        if (v12)
        {
          v13 = v11;
          do
          {
            v14 = v12;
            if (*v13 < v6)
            {
              v6 = *v13;
            }

            if (*v13 > v7)
            {
              v7 = *v13;
            }

            v12 = v12[15];
            v13 = v14;
          }

          while (v12);
        }

        else
        {
          v14 = v11;
        }

        *a2 = v6;
        *(a2 + 16) = v7;
        if (*v14 < v6)
        {
          v6 = *v14;
        }

        *a2 = v6;
        if (v7 <= *v14)
        {
          v7 = *v14;
        }

        *(a2 + 16) = v7;
        if (v14[6] < v6)
        {
          v6 = v14[6];
        }

        *a2 = v6;
        if (v7 <= v14[6])
        {
          v7 = v14[6];
        }

        *(a2 + 16) = v7;
        v15 = v14[7];
        if (v15 < v8)
        {
          v8 = v15;
        }

        *(a2 + 8) = v8;
        v16 = v11 == v9;
        v11 = v10;
      }

      while (v16);
      v2 += 24;
    }

    while (v2 != v3);
  }

  return result;
}

BOOL ClipperLib::ClipperBase::PopScanbeam(ClipperLib::ClipperBase *this, uint64_t *a2)
{
  v2 = *(this + 15);
  v3 = *(this + 14);
  if (v3 == v2)
  {
    return v3 != v2;
  }

  v6 = *v3;
  *a2 = *v3;
  v7 = v2 - v3;
  if (v7 >= 2)
  {
    v8 = 0;
    v9 = v3;
    do
    {
      v10 = &v9[v8 + 1];
      v11 = (2 * v8) | 1;
      v12 = 2 * v8 + 2;
      if (v12 < v7)
      {
        v13 = *v10 < v10[1];
        v10 += v13;
        if (v13)
        {
          v11 = v12;
        }
      }

      *v9 = *v10;
      v9 = v10;
      v8 = v11;
    }

    while (v11 <= ((v7 - 2) >> 1));
    v14 = v2 - 1;
    if (v10 != v2 - 1)
    {
      *v10 = *v14;
      *v14 = v6;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<long long> &,std::__wrap_iter<long long *>>(v3, (v10 + 1), &v27, v10 + 1 - v3);
      v15 = *(this + 14);
      v16 = *(this + 15);
      goto LABEL_12;
    }

    *v10 = v6;
  }

  v15 = v3;
  v16 = v2;
LABEL_12:
  for (i = v16 - 1; ; --i)
  {
    *(this + 15) = i;
    if (v15 == i)
    {
      break;
    }

    v18 = *a2;
    if (*a2 != *v15)
    {
      break;
    }

    v19 = i - v15;
    if (v19 >= 2)
    {
      v20 = 0;
      v21 = v15;
      do
      {
        v22 = &v21[v20 + 1];
        v23 = (2 * v20) | 1;
        v24 = 2 * v20 + 2;
        if (v24 < v19)
        {
          v13 = *v22 < v22[1];
          v22 += v13;
          if (v13)
          {
            v23 = v24;
          }
        }

        *v21 = *v22;
        v21 = v22;
        v20 = v23;
      }

      while (v23 <= ((v19 - 2) >> 1));
      v25 = v16 - 2;
      if (v22 == v25)
      {
        *v22 = v18;
      }

      else
      {
        *v22 = *v25;
        *v25 = v18;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::less<long long> &,std::__wrap_iter<long long *>>(v15, (v22 + 1), &v28, v22 + 1 - v15);
        v15 = *(this + 14);
        i = *(this + 15);
      }
    }

    v16 = i;
  }

  return v3 != v2;
}

ClipperLib::ClipperBase *ClipperLib::ClipperBase::DisposeAllOutRecs(ClipperLib::ClipperBase *this)
{
  v1 = this;
  v2 = *(this + 10);
  if (*(this + 11) != v2)
  {
    v3 = 0;
    do
    {
      this = ClipperLib::ClipperBase::DisposeOutRec(v1, v3++);
      v2 = *(v1 + 10);
    }

    while (v3 < (*(v1 + 11) - v2) >> 3);
  }

  *(v1 + 11) = v2;
  return this;
}

uint64_t ClipperLib::ClipperBase::DisposeOutRec(ClipperLib::ClipperBase *this, uint64_t a2)
{
  v4 = *(*(this + 10) + 8 * a2);
  if (*(v4 + 24))
  {
    ClipperLib::DisposeOutPts((v4 + 24));
  }

  result = MEMORY[0x259C283A0](v4, 0x1020C401FC46325);
  *(*(this + 10) + 8 * a2) = 0;
  return result;
}

uint64_t ClipperLib::ClipperBase::DeleteFromAEL(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 128);
  v3 = *(a2 + 136);
  if (*(a2 + 128) == 0)
  {
    if (*(result + 104) != a2)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (!v3)
  {
LABEL_5:
    v4 = (result + 104);
    goto LABEL_6;
  }

  v4 = (v3 + 128);
LABEL_6:
  *v4 = v2;
  if (v2)
  {
    *(v2 + 136) = v3;
  }

  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  return result;
}

uint64_t ClipperLib::ClipperBase::SwapPositionsInAEL(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 128);
  v3 = *(a2 + 136);
  if (v4 != v3)
  {
    v6 = *(a3 + 128);
    v5 = *(a3 + 136);
    if (v6 != v5)
    {
      if (v4 == a3)
      {
        if (v6)
        {
          *(v6 + 136) = a2;
          v3 = *(a2 + 136);
        }

        if (v3)
        {
          *(v3 + 128) = a3;
        }

        *(a3 + 128) = a2;
        *(a3 + 136) = v3;
        *(a2 + 128) = v6;
        *(a2 + 136) = a3;
        v3 = *(a3 + 136);
      }

      else
      {
        if (v6 == a2)
        {
          if (v4)
          {
            *(v4 + 136) = a3;
            v5 = *(a3 + 136);
          }

          if (v5)
          {
            *(v5 + 128) = a2;
          }

          *(a2 + 128) = a3;
          *(a2 + 136) = v5;
          v3 = a2;
          *(a3 + 128) = v4;
          *(a3 + 136) = a2;
        }

        else
        {
          *(a2 + 128) = v6;
          if (v6)
          {
            *(v6 + 136) = a2;
            v5 = *(a3 + 136);
          }

          *(a2 + 136) = v5;
          if (v5)
          {
            *(v5 + 128) = a2;
          }

          *(a3 + 128) = v4;
          if (v4)
          {
            *(v4 + 136) = a3;
          }

          *(a3 + 136) = v3;
          if (v3)
          {
            *(v3 + 128) = a3;
          }
        }

        if (!*(a2 + 136))
        {
          goto LABEL_26;
        }
      }

      a2 = a3;
      if (v3)
      {
        return result;
      }

LABEL_26:
      *(result + 104) = a2;
    }
  }

  return result;
}

ClipperLib::ClipperBase *ClipperLib::ClipperBase::UpdateEdgeIntoAEL(ClipperLib::ClipperBase *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 120);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    ClipperLib::clipperException::clipperException(exception, "UpdateEdgeIntoAEL: invalid call");
  }

  *(v3 + 100) = *(v2 + 100);
  v6 = v2 + 128;
  v5 = *(v2 + 128);
  v4 = *(v6 + 8);
  v7 = (result + 104);
  if (v4)
  {
    v7 = (v4 + 128);
  }

  *v7 = v3;
  if (v5)
  {
    *(v5 + 136) = *(*a2 + 120);
  }

  v8 = *(*a2 + 120);
  *(v8 + 84) = *(*a2 + 84);
  *a2 = v8;
  *(v8 + 24) = *v8;
  *(v8 + 40) = *(v8 + 16);
  *(*a2 + 136) = v4;
  *(*a2 + 128) = v5;
  if (*(*a2 + 72) != -1.0e40)
  {
    v9 = *(*a2 + 56);

    return ClipperLib::ClipperBase::InsertScanbeam(result, v9);
  }

  return result;
}

ClipperLib *ClipperLib::Clipper::Clipper(ClipperLib *this, uint64_t *a2, char a3)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[1];
  *(this + 9) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 11) = this + 88;
  *(this + 12) = this + 88;
  *(this + 13) = 0;
  *(this + 120) = 0;
  v4 = *this;
  *(this + *(*this - 24) + 40) = 0;
  *(this + 132) = a3 & 1;
  *(this + 134) = (a3 & 2) != 0;
  *(this + *(v4 - 24) + 72) = (a3 & 4) != 0;
  *(this + *(v4 - 24) + 73) = 0;
  *(this + 17) = 0;
  return this;
}

double ClipperLib::Clipper::Clipper(ClipperLib::Clipper *this, char a2)
{
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 28) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 32) = 0;
  result = 0.0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *this = &unk_286711450;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 11) = this + 88;
  *(this + 12) = this + 88;
  *(this + 13) = 0;
  *(this + 120) = 0;
  *(this + 184) = 0;
  *(this + 132) = a2 & 1;
  *(this + 134) = (a2 & 2) != 0;
  *(this + 216) = (a2 & 4) != 0;
  *(this + 217) = 0;
  *(this + 17) = 0;
  *(this + 18) = &unk_286711498;
  return result;
}

uint64_t ClipperLib::Clipper::Execute(uint64_t a1, int a2, void *a3, int a4, int a5)
{
  if (*(a1 + 120))
  {
    return 0;
  }

  if (*(a1 + *(*a1 - 24) + 73) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    ClipperLib::clipperException::clipperException(exception, "Error: PolyTree struct is needed for open path clipping.");
  }

  *(a1 + 120) = 1;
  std::vector<std::vector<ClipperLib::IntPoint>>::resize(a3, 0);
  *(a1 + 124) = a5;
  *(a1 + 128) = a4;
  *(a1 + 80) = a2;
  *(a1 + 133) = 0;
  v5 = (**a1)(a1);
  if (v5)
  {
    ClipperLib::Clipper::BuildResult(a1, a3);
  }

  ClipperLib::ClipperBase::DisposeAllOutRecs((a1 + *(*a1 - 24)));
  *(a1 + 120) = 0;
  return v5;
}

uint64_t ClipperLib::Clipper::Execute(uint64_t a1, int a2, ClipperLib::PolyTree *a3, int a4, int a5)
{
  if (*(a1 + 120))
  {
    return 0;
  }

  *(a1 + 120) = 1;
  *(a1 + 124) = a5;
  *(a1 + 128) = a4;
  *(a1 + 80) = a2;
  *(a1 + 133) = 1;
  v5 = (**a1)();
  if (v5)
  {
    ClipperLib::Clipper::BuildResult2(a1, a3);
  }

  ClipperLib::ClipperBase::DisposeAllOutRecs((a1 + *(*a1 - 24)));
  *(a1 + 120) = 0;
  return v5;
}

void std::vector<std::vector<ClipperLib::IntPoint>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<ClipperLib::IntPoint>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void ClipperLib::Clipper::BuildResult(uint64_t *a1, void *a2)
{
  std::vector<std::vector<ClipperLib::IntPoint>>::reserve(a2, (*(a1 + *(*a1 - 24) + 88) - *(a1 + *(*a1 - 24) + 80)) >> 3);
  v4 = *a1;
  v5 = (*a1 - 24);
  v6 = *(a1 + *v5 + 80);
  if (*(a1 + *v5 + 88) != v6)
  {
    v7 = 0;
    do
    {
      if (*(*(v6 + 8 * v7) + 24))
      {
        __p = 0;
        v15 = 0;
        v16 = 0;
        v8 = *(*(*(a1 + *v5 + 80) + 8 * v7) + 24);
        v9 = *(v8 + 40);
        if (v9)
        {
          v10 = 0;
          v11 = 1;
          v12 = *(v8 + 40);
          do
          {
            v13 = v11;
            v12 = *(v12 + 32);
            ++v10;
            ++v11;
          }

          while (v12 != v9);
          if (v10 != 1)
          {
            std::vector<ClipperLib::IntPoint>::reserve(&__p, v10);
            do
            {
              std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](&__p, (v9 + 8));
              v9 = *(v9 + 40);
              --v13;
            }

            while (v13);
            std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](a2, &__p);
            if (__p)
            {
              v15 = __p;
              operator delete(__p);
            }
          }
        }

        v4 = *a1;
      }

      ++v7;
      v5 = (v4 - 24);
      v6 = *(a1 + *(v4 - 24) + 80);
    }

    while (v7 < (*(a1 + *(v4 - 24) + 88) - v6) >> 3);
  }
}

void sub_254C18ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ClipperLib::Clipper::BuildResult2(ClipperLib::Clipper *this, ClipperLib::PolyTree *a2)
{
  ClipperLib::PolyTree::Clear(a2);
  v4 = std::vector<ClipperLib::PolyNode *>::reserve(a2 + 10, (*(this + *(*this - 24) + 88) - *(this + *(*this - 24) + 80)) >> 3);
  v5 = *(this + *(*this - 24) + 80);
  v6 = *(this + *(*this - 24) + 88) - v5;
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = *(v5 + 8 * v7);
      v9 = *(v8 + 24);
      if (v9)
      {
        v10 = 0;
        v11 = *(v8 + 24);
        do
        {
          v11 = *(v11 + 32);
          --v10;
        }

        while (v11 != v9);
        v12 = *(v8 + 5) ? 1 : 2;
        if (~v10 >= v12)
        {
          ClipperLib::Clipper::FixHoleLinkage(v4, v8);
          operator new();
        }
      }

      ++v7;
      v5 = *(this + *(*this - 24) + 80);
      v6 = *(this + *(*this - 24) + 88) - v5;
    }

    while (v7 < v6 >> 3);
  }

  std::vector<ClipperLib::PolyNode *>::reserve(a2 + 4, v6 >> 3);
  v13 = *(this + *(*this - 24) + 80);
  if (*(this + *(*this - 24) + 88) != v13)
  {
    v14 = 0;
    while (1)
    {
      v15 = *(v13 + 8 * v14);
      v16 = *(v15 + 16);
      if (v16)
      {
        break;
      }

LABEL_21:
      ++v14;
      v13 = *(this + *(*this - 24) + 80);
      if (v14 >= (*(this + *(*this - 24) + 88) - v13) >> 3)
      {
        return;
      }
    }

    if (*(v15 + 5) == 1)
    {
      *(v16 + 68) = 1;
    }

    else
    {
      v17 = *(v15 + 8);
      if (v17)
      {
        v18 = *(v17 + 16);
        if (v18)
        {
          goto LABEL_20;
        }
      }
    }

    v18 = a2;
LABEL_20:
    ClipperLib::PolyNode::AddChild(v18, v16);
    goto LABEL_21;
  }
}

void ClipperLib::Clipper::FixHoleLinkage(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = *(a2 + 4);
    if (v3 == *(v2 + 4) || !*(v2 + 24))
    {
      do
      {
        if (*(v2 + 4) != v3 && *(v2 + 24))
        {
          break;
        }

        v2 = *(v2 + 8);
      }

      while (v2);
      *(a2 + 8) = v2;
    }
  }
}

uint64_t ClipperLib::Clipper::ExecuteInternal(ClipperLib::Clipper *this)
{
  (*(*(this + *(*this - 24)) + 32))(this + *(*this - 24));
  v19[0] = v19;
  v19[1] = v19;
  v19[2] = 0;
  std::list<long long>::__move_assign(this + 11, v19);
  std::__list_imp<long long>::clear(v19);
  *(this + 14) = 0;
  v18 = 0;
  v19[0] = 0;
  if (!ClipperLib::ClipperBase::PopScanbeam((this + *(*this - 24)), v19))
  {
    return 0;
  }

  ClipperLib::Clipper::InsertLocalMinimaIntoAEL(this, v19[0]);
  while (1)
  {
    v2 = ClipperLib::ClipperBase::PopScanbeam((this + *(*this - 24)), &v18);
    if ((v2 & 1) == 0 && *(this + *(*this - 24) + 8) == *(this + *(*this - 24) + 24))
    {
      break;
    }

    ClipperLib::Clipper::ProcessHorizontals(this);
    ClipperLib::Clipper::ClearGhostJoins(this);
    v3 = v18;
    if (!ClipperLib::Clipper::ProcessIntersections(this, v18))
    {
      v4 = 0;
      goto LABEL_30;
    }

    ClipperLib::Clipper::ProcessEdgesAtTopOfScanbeam(this, v3);
    ClipperLib::Clipper::InsertLocalMinimaIntoAEL(this, v3);
  }

  v5 = *this;
  v6 = *this;
  v7 = *(*this - 24);
  v8 = *(this + v7 + 80);
  if (*(this + v7 + 88) != v8)
  {
    v9 = 0;
    do
    {
      v2 = *(v8 + 8 * v9);
      v10 = *(v2 + 24);
      if (v10)
      {
        if ((*(v2 + 5) & 1) == 0)
        {
          v11 = *(this + 132) ^ *(v2 + 4);
          if (v11 == ClipperLib::Area(v2) > 0.0)
          {
            v12 = v10;
            do
            {
              v13 = v12[2];
              v12[2] = vextq_s8(v13, v13, 8uLL);
              v12 = v13.i64[0];
            }

            while (v13.i64[0] != v10);
            v7 = *(v6 - 24);
          }
        }
      }

      ++v9;
      v8 = *(this + v7 + 80);
    }

    while (v9 < (*(this + v7 + 88) - v8) >> 3);
  }

  if (*(this + 1) != *(this + 2))
  {
    v2 = ClipperLib::Clipper::JoinCommonEdges(this);
    v5 = *this;
  }

  v14 = *(this + *(v5 - 24) + 80);
  if (*(this + *(v5 - 24) + 88) != v14)
  {
    v15 = 0;
    do
    {
      v16 = *(v14 + 8 * v15);
      if (*(v16 + 24))
      {
        if (*(v16 + 5) == 1)
        {
          v2 = ClipperLib::Clipper::FixupOutPolyline(v2, v16);
        }

        else
        {
          v2 = ClipperLib::Clipper::FixupOutPolygon(this, v16);
        }
      }

      ++v15;
      v14 = *(this + *(*this - 24) + 80);
    }

    while (v15 < (*(this + *(*this - 24) + 88) - v14) >> 3);
  }

  if (*(this + 134))
  {
    ClipperLib::Clipper::DoSimplePolygons(this);
  }

  v4 = 1;
LABEL_30:
  ClipperLib::Clipper::ClearJoins(this);
  ClipperLib::Clipper::ClearGhostJoins(this);
  return v4;
}

uint64_t ClipperLib::Clipper::InsertLocalMinimaIntoAEL(uint64_t this, uint64_t a2)
{
  v2 = this + 40;
  v3 = this + *(*this - 24);
  v6 = *(v3 + 8);
  v4 = (v3 + 8);
  v5 = v6;
  if (v6 != v4[2])
  {
    v8 = this;
    do
    {
      if (*v5 != a2)
      {
        return this;
      }

      *v4 = v5 + 3;
      v9 = v5[1];
      v10 = v5[2];
      if (v9)
      {
        ClipperLib::Clipper::InsertEdgeIntoAEL(v8, v5[1], 0);
        if (!v10)
        {
          ClipperLib::Clipper::SetWindingCount(v8, v9);
          if (ClipperLib::Clipper::IsContributing(v8, v9))
          {
            ClipperLib::Clipper::AddOutPt(v8, v9, v9);
          }

          this = ClipperLib::ClipperBase::InsertScanbeam((v8 + *(*v8 - 24)), *(v9 + 56));
          goto LABEL_64;
        }

        ClipperLib::Clipper::InsertEdgeIntoAEL(v8, v10, v9);
        ClipperLib::Clipper::SetWindingCount(v8, v9);
        *(v10 + 92) = *(v9 + 92);
        if (ClipperLib::Clipper::IsContributing(v8, v9))
        {
          v11 = ClipperLib::Clipper::AddLocalMinPoly(v8, v9, v10, v9);
        }

        else
        {
          v11 = 0;
        }

        this = ClipperLib::ClipperBase::InsertScanbeam((v8 + *(*v8 - 24)), *(v9 + 56));
      }

      else
      {
        ClipperLib::Clipper::InsertEdgeIntoAEL(v8, v5[2], 0);
        ClipperLib::Clipper::SetWindingCount(v8, v10);
        this = ClipperLib::Clipper::IsContributing(v8, v10);
        v11 = 0;
        if (this)
        {
          this = ClipperLib::Clipper::AddOutPt(v8, v10, v10);
          v11 = this;
        }

        if (!v10)
        {
          goto LABEL_64;
        }
      }

      v12 = v10;
      if (*(v10 + 72) != -1.0e40)
      {
        goto LABEL_21;
      }

      v13 = v8[14];
      *(v10 + 152) = 0;
      if (v13)
      {
        *(v13 + 152) = v10;
      }

      v8[14] = v10;
      *(v10 + 144) = v13;
      v12 = *(v10 + 120);
      if (v12)
      {
LABEL_21:
        this = ClipperLib::ClipperBase::InsertScanbeam((v8 + *(*v8 - 24)), *(v12 + 56));
      }

      if (v9)
      {
        if (v11)
        {
          if (*(v10 + 72) == -1.0e40)
          {
            v15 = v8[4];
            v14 = v8[5];
            if (v14 != v15)
            {
              if (*(v10 + 88))
              {
                v16 = 0;
                do
                {
                  v17 = *(v15 + 8 * v16);
                  v18 = *(*v17 + 8);
                  v21 = v17[2];
                  v19 = v17 + 2;
                  v20 = v21;
                  v22 = *v10;
                  v23 = *(v10 + 48);
                  v24 = v18 <= v21;
                  if (v18 >= v21)
                  {
                    v25 = v20;
                  }

                  else
                  {
                    v25 = v18;
                  }

                  if (v24)
                  {
                    v18 = v20;
                  }

                  if (v22 >= v23)
                  {
                    v26 = *(v10 + 48);
                  }

                  else
                  {
                    v26 = *v10;
                  }

                  if (v22 <= v23)
                  {
                    v22 = *(v10 + 48);
                  }

                  if (v25 < v22 && v26 < v18)
                  {
                    v39 = *v19;
                    v40 = v19[2];
                    operator new();
                  }

                  ++v16;
                }

                while (v16 < (v14 - v15) >> 3);
              }
            }
          }
        }

        if ((*(v9 + 100) & 0x80000000) == 0)
        {
          v28 = *(v9 + 136);
          if (v28)
          {
            if (*(v28 + 24) == *v9 && (*(v28 + 100) & 0x80000000) == 0)
            {
              v39 = *v28;
              v40 = *(v28 + 16);
              v37 = *(v28 + 48);
              v38 = *(v28 + 64);
              v35 = *(v9 + 24);
              v36 = *(v9 + 40);
              v33 = *(v9 + 48);
              v34 = *(v9 + 64);
              this = ClipperLib::SlopesEqual(&v39, &v37, &v35, &v33, *(v2 + *(*v8 - 24)));
              if (this)
              {
                if (*(v9 + 88) && *(v28 + 88))
                {
                  ClipperLib::Clipper::AddOutPt(v8, v28, v9);
                  v39 = *(v9 + 48);
                  v40 = *(v9 + 64);
                  operator new();
                }
              }
            }
          }
        }

        v29 = *(v9 + 128);
        if (v29 != v10)
        {
          if ((*(v10 + 100) & 0x80000000) == 0)
          {
            v30 = *(v10 + 136);
            if ((*(v30 + 100) & 0x80000000) == 0)
            {
              v39 = *(v30 + 24);
              v40 = *(v30 + 40);
              v37 = *(v30 + 48);
              v38 = *(v30 + 64);
              v35 = *(v10 + 24);
              v36 = *(v10 + 40);
              v33 = *(v10 + 48);
              v34 = *(v10 + 64);
              this = ClipperLib::SlopesEqual(&v39, &v37, &v35, &v33, *(v2 + *(*v8 - 24)));
              if (this)
              {
                if (*(v10 + 88) && *(v30 + 88))
                {
                  ClipperLib::Clipper::AddOutPt(v8, v30, v10);
                  v39 = *(v10 + 48);
                  v40 = *(v10 + 64);
                  operator new();
                }
              }
            }
          }

          if (v29)
          {
            while (v29 != v10)
            {
              this = ClipperLib::Clipper::IntersectEdges(v8, v10, v29, (v9 + 24));
              v29 = *(v29 + 128);
            }
          }
        }
      }

LABEL_64:
      v31 = v8 + *(*v8 - 24);
      v32 = *(v31 + 1);
      v4 = v31 + 8;
      v5 = v32;
    }

    while (v32 != v4[2]);
  }

  return this;
}

uint64_t ClipperLib::Clipper::ProcessHorizontals(uint64_t this)
{
  v2 = (this + 112);
  v1 = *(this + 112);
  if (v1)
  {
    v3 = this;
    do
    {
      v4 = v1[18];
      v5 = v1[19];
      if (*(v1 + 9) == 0)
      {
        *v2 = 0;
      }

      else
      {
        v6 = (v5 + 144);
        if (!v5)
        {
          v6 = v2;
        }

        *v6 = v4;
        if (v4)
        {
          *(v4 + 152) = v5;
        }
      }

      v1[18] = 0;
      v1[19] = 0;
      this = ClipperLib::Clipper::ProcessHorizontal(v3, v1);
      v1 = *(v3 + 112);
    }

    while (v1);
  }

  return this;
}

void ClipperLib::Clipper::ClearGhostJoins(ClipperLib::Clipper *this)
{
  v1 = *(this + 4);
  v2 = *(this + 5);
  v3 = (this + 32);
  if (v2 != v1)
  {
    v5 = 0;
    do
    {
      v6 = *(v1 + 8 * v5);
      if (v6)
      {
        MEMORY[0x259C283A0](v6, 0x1020C40E349F4B1);
        v1 = *(this + 4);
        v2 = *(this + 5);
      }

      ++v5;
    }

    while (v5 < (v2 - v1) >> 3);
  }

  std::vector<ClipperLib::PolyNode *>::resize(v3, 0);
}

BOOL ClipperLib::Clipper::ProcessIntersections(ClipperLib::Clipper *this, uint64_t a2)
{
  if (!*(this + *(*this - 24) + 104))
  {
    return 1;
  }

  ClipperLib::Clipper::BuildIntersectList(this, a2);
  v3 = (*(this + 8) - *(this + 7)) >> 3;
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1 || (result = ClipperLib::Clipper::FixupIntersectionOrder(this)))
  {
    ClipperLib::Clipper::ProcessIntersectList(this);
    *(this + 14) = 0;
    return 1;
  }

  return result;
}

void sub_254C19BB8(void *a1)
{
  __cxa_begin_catch(a1);
  *(v1 + 112) = 0;
  ClipperLib::Clipper::DisposeIntersectNodes(v1);
  exception = __cxa_allocate_exception(0x20uLL);
  ClipperLib::clipperException::clipperException(exception, "ProcessIntersections error");
}

uint64_t ClipperLib::Clipper::ProcessEdgesAtTopOfScanbeam(ClipperLib::Clipper *this, uint64_t a2)
{
  v4 = this + 104;
  v5 = *(this + *(*this - 24) + 104);
  v36 = v5;
  if (v5)
  {
    while (v5[7] == a2)
    {
      if (v5[15] || (ClipperLib::GetMaximaPairEx(v5), v14) && *(v14 + 72) == -1.0e40)
      {
        v6 = v5[15];
        if (v6 && *(v6 + 72) == -1.0e40)
        {
          ClipperLib::ClipperBase::UpdateEdgeIntoAEL((this + *(*this - 24)), &v36);
          v5 = v36;
          if ((*(v36 + 25) & 0x80000000) == 0)
          {
            ClipperLib::Clipper::AddOutPt(this, v36, v36);
          }

          v7 = *(this + 14);
          v5[19] = 0;
          if (v7)
          {
            *(v7 + 152) = v5;
          }

          *(this + 14) = v5;
          v5[18] = v7;
          goto LABEL_17;
        }

        v10 = v5[6];
LABEL_16:
        v5[3] = v10;
        v5[4] = a2;
LABEL_17:
        if (*(this + 134) == 1 && (*(v5 + 25) & 0x80000000) == 0)
        {
          if (*(v5 + 22))
          {
            v11 = v5[17];
            if (v11)
            {
              if ((*(v11 + 100) & 0x80000000) == 0 && *(v11 + 24) == v5[3] && *(v11 + 88))
              {
                v34 = *(v5 + 3);
                v35 = v5[5];
                v12 = *(this + 17);
                if (v12)
                {
                  v12(v11, v11 + 48, v5, v5 + 6, &v34);
                }

                ClipperLib::Clipper::AddOutPt(this, v11, &v34);
                ClipperLib::Clipper::AddOutPt(this, v5, &v34);
                v32 = v34;
                v33 = v35;
                operator new();
              }
            }
          }
        }

        v13 = (v5 + 16);
        goto LABEL_28;
      }

      if (*(this + 134) == 1)
      {
        operator new();
      }

      v15 = v5[17];
      ClipperLib::Clipper::DoMaxima(this, v5);
      if (v15)
      {
        v13 = (v15 + 128);
      }

      else
      {
        v13 = &v4[*(*this - 24)];
      }

LABEL_28:
      v36 = *v13;
      v5 = v36;
      if (!v36)
      {
        goto LABEL_37;
      }
    }

    v8 = *(v5 + 9) * (a2 - v5[1]);
    if (v8 >= 0.0)
    {
      v9 = 0.5;
    }

    else
    {
      v9 = -0.5;
    }

    v10 = *v5 + (v8 + v9);
    goto LABEL_16;
  }

LABEL_37:
  std::list<long long>::__sort<std::__less<void,void>>(*(this + 12), this + 11, *(this + 13), &v34);
  ClipperLib::Clipper::ProcessHorizontals(this);
  result = std::__list_imp<long long>::clear(this + 11);
  v17 = *(this + *(*this - 24) + 104);
  v36 = v17;
  if (v17)
  {
    v18 = this + 40;
    do
    {
      if (v17[7] == a2 && v17[15])
      {
        if ((*(v17 + 25) & 0x80000000) != 0)
        {
          v19 = 0;
        }

        else
        {
          v19 = ClipperLib::Clipper::AddOutPt(this, v17, v17 + 6);
        }

        result = ClipperLib::ClipperBase::UpdateEdgeIntoAEL((this + *(*this - 24)), &v36);
        v17 = v36;
        v20 = v36[16];
        v21 = v36[17];
        if (v21 && *(v21 + 24) == *v36)
        {
          v22 = *(v21 + 32);
          if (v22 == v36[1] && v19 != 0 && (*(v21 + 100) & 0x80000000) == 0 && v22 > *(v21 + 56))
          {
            v34 = *(v36 + 3);
            v35 = v36[5];
            v32 = *(v36 + 3);
            v33 = v36[8];
            v30 = *(v21 + 24);
            v31 = *(v21 + 40);
            v28 = *(v21 + 48);
            v29 = *(v21 + 64);
            result = ClipperLib::SlopesEqual(&v34, &v32, &v30, &v28, v18[*(*this - 24)]);
            if (result)
            {
              if (*(v17 + 22) && *(v21 + 88))
              {
                v24 = this;
                v25 = v21;
                goto LABEL_68;
              }
            }
          }
        }

        if (v20 && *(v20 + 24) == *v17)
        {
          v26 = *(v20 + 32);
          if (v26 == v17[1] && v19 != 0 && (*(v20 + 100) & 0x80000000) == 0 && v26 > *(v20 + 56))
          {
            v34 = *(v17 + 3);
            v35 = v17[5];
            v32 = *(v17 + 3);
            v33 = v17[8];
            v30 = *(v20 + 24);
            v31 = *(v20 + 40);
            v28 = *(v20 + 48);
            v29 = *(v20 + 64);
            result = ClipperLib::SlopesEqual(&v34, &v32, &v30, &v28, v18[*(*this - 24)]);
            if (result)
            {
              if (*(v17 + 22) && *(v20 + 88))
              {
                v24 = this;
                v25 = v20;
LABEL_68:
                ClipperLib::Clipper::AddOutPt(v24, v25, v17);
                v34 = *(v17 + 3);
                v35 = v17[8];
                operator new();
              }
            }
          }
        }
      }

      v17 = v17[16];
      v36 = v17;
    }

    while (v17);
  }

  return result;
}

uint64_t ClipperLib::Clipper::JoinCommonEdges(uint64_t this)
{
  v1 = *(this + 8);
  if (*(this + 16) != v1)
  {
    v2 = this;
    v3 = 0;
    v4 = this + 80;
    do
    {
      v5 = *(v1 + 8 * v3);
      v6 = *(v4 + *(*v2 - 24));
      v7 = *(v6 + 8 * **v5);
      do
      {
        v8 = v7;
        v7 = *(v6 + 8 * *v7);
      }

      while (v8 != v7);
      v9 = *(v6 + 8 * *v5[1]);
      do
      {
        v10 = v9;
        v9 = *(v6 + 8 * *v9);
      }

      while (v10 != v9);
      if (*(v8 + 24) && *(v10 + 24) && (*(v8 + 5) & 1) == 0 && (*(v10 + 5) & 1) == 0)
      {
        if (v8 == v10)
        {
          this = ClipperLib::Clipper::JoinPoints(v2, v5, v8, v10);
          if (this)
          {
            *(v8 + 24) = *v5;
            *(v8 + 32) = 0;
            ClipperLib::ClipperBase::CreateOutRec((v2 + *(*v2 - 24)));
          }
        }

        else
        {
          v11 = v8;
          do
          {
            v11 = *(v11 + 8);
          }

          while (v11 != v10 && v11 != 0);
          LowermostRec = v10;
          if (v11 != v10)
          {
            v14 = v10;
            do
            {
              v14 = *(v14 + 8);
            }

            while (v14 != v8 && v14 != 0);
            LowermostRec = v8;
            if (v14 != v8)
            {
              LowermostRec = ClipperLib::GetLowermostRec(v8, v10);
            }
          }

          this = ClipperLib::Clipper::JoinPoints(v2, v5, v8, v10);
          if (this)
          {
            *(v10 + 24) = 0;
            *(v10 + 32) = 0;
            *v10 = *v8;
            *(v8 + 4) = *(LowermostRec + 4);
            if (LowermostRec == v10)
            {
              *(v8 + 8) = *(v10 + 8);
            }

            *(v10 + 8) = v8;
            if (*(v2 + 133) == 1)
            {
              this = ClipperLib::Clipper::FixupFirstLefts3(v2, v10, v8);
            }
          }
        }
      }

      ++v3;
      v1 = *(v2 + 8);
    }

    while (v3 < (*(v2 + 16) - v1) >> 3);
  }

  return this;
}

void *ClipperLib::Clipper::FixupOutPolyline(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 24);
  v4 = result[5];
  if (result == v4)
  {
    v9 = *(a2 + 24);
LABEL_14:
    result = ClipperLib::DisposeOutPts(&v9);
    *(a2 + 24) = 0;
    return result;
  }

  do
  {
    result = result[4];
    v5 = result[5];
    if (result[1] == v5[1] && result[2] == v5[2])
    {
      v7 = result[4];
      if (result == v4)
      {
        v4 = result[5];
      }

      v5[4] = v7;
      *(v7 + 40) = v5;
      MEMORY[0x259C283A0]();
      result = v5;
    }
  }

  while (result != v4);
  v8 = result[5];
  v9 = result;
  if (result == v8)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t ClipperLib::Clipper::FixupOutPolygon(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  v3 = *(a2 + 24);
  if (*(a1 + *(*a1 - 24) + 72))
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a1 + 134);
  }

  v20 = v4;
  v5 = v3 + 5;
  v6 = v3[5];
  if (v6 != v3)
  {
    v7 = 0;
    v21 = a1 + 40;
    while (1)
    {
      v8 = v3[4];
      if (v6 == v8)
      {
        break;
      }

      v9 = v3[1];
      v10 = v3[2];
      v11 = (v3 + 1);
      v12 = (v8 + 1);
      v13 = v9 == v8[1] && v10 == v8[2];
      if (v13 || ((v14 = (v6 + 1), v9 == v6[1]) ? (v15 = v10 == v6[2]) : (v15 = 0), v15 || (v26 = *v14, v27 = v6[3], v16 = *v11, v25 = v3[3], v24 = v16, v22 = *v12, v23 = v8[3], result = ClipperLib::SlopesEqual(&v26, &v24, &v22, *(v21 + *(*a1 - 24))), result) && ((v20 & 1) == 0 || (v26 = *v14, v27 = v6[3], v18 = *v11, v25 = v3[3], v24 = v18, v22 = *v12, v23 = v8[3], result = ClipperLib::Pt2IsBetweenPt1AndPt3(&v26, &v24, &v22), (result & 1) == 0))))
      {
        v6[4] = v8;
        *(v3[4] + 40) = v6;
        v8 = *v5;
        MEMORY[0x259C283A0](v3, 0x1020C404ACFEA97);
        v7 = 0;
      }

      else
      {
        if (v3 == v7)
        {
          goto LABEL_27;
        }

        if (!v7)
        {
          v7 = v3;
        }
      }

      v5 = v8 + 5;
      v6 = v8[5];
      v3 = v8;
      if (v6 == v8)
      {
        goto LABEL_26;
      }
    }
  }

  v8 = v3;
LABEL_26:
  *&v26 = v8;
  result = ClipperLib::DisposeOutPts(&v26);
  v3 = 0;
LABEL_27:
  *(a2 + 24) = v3;
  return result;
}

uint64_t *ClipperLib::Clipper::DoSimplePolygons(uint64_t *this)
{
  v1 = *this;
  v2 = *(this + *(*this - 24) + 80);
  if (*(this + *(*this - 24) + 88) != v2)
  {
    v3 = 0;
    do
    {
      v4 = *(v2 + 8 * v3);
      v5 = *(v4 + 24);
      if (v5 && (*(v4 + 5) & 1) == 0)
      {
        v6 = *(v4 + 24);
        do
        {
          v7 = v6[4];
          if (v7 == v5)
          {
            v6 = v6[4];
            v7 = v5;
          }

          else
          {
            do
            {
              v8 = v6[1] == v7[1] && v6[2] == v7[2];
              if (v8 && v7[4] != v6)
              {
                v9 = v7[5];
                if (v9 != v6)
                {
                  v10 = v6[5];
                  v6[5] = v9;
                  v9[4] = v6;
                  v7[5] = v10;
                  *(v10 + 32) = v7;
                  *(v4 + 24) = v6;
                  ClipperLib::ClipperBase::CreateOutRec((this + *(*this - 24)));
                }
              }

              v7 = v7[4];
            }

            while (v7 != *(v4 + 24));
            v6 = v6[4];
            v5 = v7;
          }
        }

        while (v6 != v7);
        v1 = *this;
      }

      ++v3;
      v2 = *(this + *(v1 - 24) + 80);
    }

    while (v3 < (*(this + *(v1 - 24) + 88) - v2) >> 3);
  }

  return this;
}

void ClipperLib::Clipper::ClearJoins(ClipperLib::Clipper *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  v3 = (this + 8);
  if (v2 != v1)
  {
    v5 = 0;
    do
    {
      v6 = *(v1 + 8 * v5);
      if (v6)
      {
        MEMORY[0x259C283A0](v6, 0x1020C40E349F4B1);
        v1 = *(this + 1);
        v2 = *(this + 2);
      }

      ++v5;
    }

    while (v5 < (v2 - v1) >> 3);
  }

  std::vector<ClipperLib::PolyNode *>::resize(v3, 0);
}

uint64_t ClipperLib::Clipper::SetWindingCount(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 136);
  if (v2)
  {
    v3 = *(a2 + 80);
    while (1)
    {
      if (*(v2 + 80) == v3)
      {
        v4 = *(v2 + 88);
        if (v4)
        {
          break;
        }
      }

      v2 = *(v2 + 136);
      if (!v2)
      {
        goto LABEL_6;
      }
    }

    v9 = *(a2 + 88);
    if (v9)
    {
      v10 = 124;
      if (!v3)
      {
        v10 = 128;
      }

      if (!*(result + v10))
      {
        goto LABEL_41;
      }

      v11 = *(v2 + 92);
      if (((v11 * v4) & 0x80000000) == 0)
      {
        if (((v9 * v4) & 0x80000000) == 0)
        {
          v12 = *(a2 + 88);
        }

        else
        {
          v12 = 0;
        }

        v9 = v11 + v12;
        goto LABEL_41;
      }

LABEL_28:
      if (v11 >= 0)
      {
        v14 = v11;
      }

      else
      {
        v14 = -v11;
      }

      if (v9 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = *(a2 + 88);
      }

      if (((v9 * v4) & 0x80000000) == 0)
      {
        v16 = *(a2 + 88);
      }

      else
      {
        v16 = 0;
      }

      v17 = v11 + v16;
      if (v14 >= 2)
      {
        v9 = v17;
      }

      else
      {
        v9 = v15;
      }

      goto LABEL_41;
    }

    if (*(result + 80) == 1)
    {
      v13 = 124;
      if (!v3)
      {
        v13 = 128;
      }

      if (!*(result + v13))
      {
        v21 = *(v2 + 136);
        if (v21)
        {
          v22 = 1;
          do
          {
            if (*(v21 + 80) == v3)
            {
              v22 ^= *(v21 + 88) != 0;
            }

            v21 = *(v21 + 136);
          }

          while (v21);
          v9 = (v22 & 1) == 0;
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_41;
      }

      v11 = *(v2 + 92);
      if (v11 * v4 < 0)
      {
        goto LABEL_28;
      }

      v9 = ((v11 >> 31) | 1) + v11;
    }

    else
    {
      v9 = 1;
    }

LABEL_41:
    v7 = *(v2 + 96);
    *(a2 + 92) = v9;
    *(a2 + 96) = v7;
    v8 = (v2 + 128);
    goto LABEL_42;
  }

LABEL_6:
  v5 = *(a2 + 88);
  v3 = *(a2 + 80);
  if (!v5)
  {
    v6 = 124;
    if (!v3)
    {
      v6 = 128;
    }

    if (*(result + v6) == 3)
    {
      v5 = -1;
    }

    else
    {
      v5 = 1;
    }
  }

  v7 = 0;
  *(a2 + 92) = v5;
  *(a2 + 96) = 0;
  v8 = (result + *(*result - 24) + 104);
LABEL_42:
  v18 = *v8;
  v19 = v3 == 0;
  v20 = 128;
  if (v19)
  {
    v20 = 124;
  }

  if (*(result + v20))
  {
    if (v18 != a2)
    {
      do
      {
        v7 += *(v18 + 88);
        v18 = *(v18 + 128);
      }

      while (v18 != a2);
      *(a2 + 96) = v7;
    }
  }

  else
  {
    while (v18 != a2)
    {
      if (*(v18 + 88))
      {
        v7 = v7 == 0;
        *(a2 + 96) = v7;
      }

      v18 = *(v18 + 128);
    }
  }

  return result;
}

BOOL ClipperLib::Clipper::IsEvenOddFillType(uint64_t a1, uint64_t a2)
{
  v2 = 124;
  if (!*(a2 + 80))
  {
    v2 = 128;
  }

  return *(a1 + v2) == 0;
}

BOOL ClipperLib::Clipper::IsEvenOddAltFillType(uint64_t a1, uint64_t a2)
{
  v2 = 128;
  if (!*(a2 + 80))
  {
    v2 = 124;
  }

  return *(a1 + v2) == 0;
}

uint64_t ClipperLib::Clipper::IsContributing(uint64_t a1, _DWORD *a2)
{
  v2 = a2[20];
  v3 = 124;
  if (v2)
  {
    v4 = 124;
  }

  else
  {
    v4 = 128;
  }

  if (v2)
  {
    v3 = 128;
  }

  v5 = *(a1 + v3);
  v6 = *(a1 + v4);
  switch(v6)
  {
    case 2:
LABEL_10:
      v7 = a2[23];
      goto LABEL_13;
    case 1:
      v7 = a2[23];
      if (v7 < 0)
      {
        v7 = -v7;
      }

LABEL_13:
      if (v7 == 1)
      {
        goto LABEL_14;
      }

      return 0;
    case 0:
      if (a2[22])
      {
        goto LABEL_14;
      }

      goto LABEL_10;
  }

  if (a2[23] != -1)
  {
    return 0;
  }

LABEL_14:
  v8 = *(a1 + 80);
  result = 1;
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        return result;
      }

LABEL_24:
      v10 = v5 == 2;
      if (v5 < 2)
      {
        return a2[24] == 0;
      }

      goto LABEL_34;
    }

    v10 = v5 == 2;
    if (v5 < 2)
    {
      return a2[24] != 0;
    }

LABEL_30:
    if (v10)
    {
      return a2[24] > 0;
    }

    v11 = a2[24];
    return v11 >> 31;
  }

  if (v8 == 2)
  {
    v10 = v5 == 2;
    if (!v2)
    {
      if (v5 < 2)
      {
        return a2[24] == 0;
      }

LABEL_34:
      if (v10)
      {
        return a2[24] < 1;
      }

      v11 = ~a2[24];
      return v11 >> 31;
    }

    if (v5 < 2)
    {
      return a2[24] != 0;
    }

    goto LABEL_30;
  }

  if (v8 == 3 && !a2[22])
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t ClipperLib::Clipper::AddLocalMinPoly(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = *(a3 + 72);
  if (v8 != -1.0e40 && *(a2 + 72) <= v8)
  {
    v9 = ClipperLib::Clipper::AddOutPt(a1, a3, a4);
    *(v6 + 100) = *(a3 + 100);
    *(v6 + 84) = 2;
    *(a3 + 84) = 1;
    v10 = *(a3 + 136);
    v11 = v6;
    _ZF = v10 == v6;
    v6 = a3;
    if (!_ZF)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = ClipperLib::Clipper::AddOutPt(a1, a2, a4);
  *(a3 + 100) = *(v6 + 100);
  *(v6 + 84) = 1;
  *(a3 + 84) = 2;
  v10 = *(v6 + 136);
  v11 = a3;
  if (v10 == a3)
  {
LABEL_4:
    v10 = *(v11 + 136);
  }

LABEL_5:
  if (v10 && (*(v10 + 100) & 0x80000000) == 0)
  {
    v12 = a4[1];
    if (*(v10 + 56) == v12)
    {
      v13 = *(v10 + 48);
    }

    else
    {
      v14 = *(v10 + 72) * (v12 - *(v10 + 8));
      v15 = 0.5;
      if (v14 < 0.0)
      {
        v15 = -0.5;
      }

      v13 = *v10 + (v14 + v15);
    }

    if (*(v6 + 56) == v12)
    {
      v16 = *(v6 + 48);
    }

    else
    {
      v17 = *(v6 + 72) * (v12 - *(v6 + 8));
      v18 = 0.5;
      if (v17 < 0.0)
      {
        v18 = -0.5;
      }

      v16 = *v6 + (v17 + v18);
    }

    if (v13 == v16)
    {
      if (*(v6 + 88))
      {
        if (*(v10 + 88))
        {
          *&v30 = v13;
          *(&v30 + 1) = v12;
          __asm { FMOV            V0.2S, #-1.0 }

          v31 = _D0;
          v28 = *(v10 + 48);
          v29 = *(v10 + 64);
          v27[0] = v13;
          v27[1] = v12;
          v27[2] = _D0;
          v25 = *(v6 + 48);
          v26 = *(v6 + 64);
          if (ClipperLib::SlopesEqual(&v30, &v28, v27, &v25, *(a1 + *(*a1 - 24) + 40)))
          {
            ClipperLib::Clipper::AddOutPt(a1, v10, a4);
            v30 = *(v6 + 48);
            v31 = *(v6 + 64);
            operator new();
          }
        }
      }
    }
  }

  return v9;
}

uint64_t ClipperLib::Clipper::AddOutPt(void *a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 100);
  v4 = (a1 + *(*a1 - 24));
  if ((v3 & 0x80000000) != 0)
  {
    ClipperLib::ClipperBase::CreateOutRec(v4);
  }

  v5 = *(*(v4 + 10) + 8 * v3);
  v6 = *(v5 + 24);
  if (*(a2 + 84) == 1)
  {
    if (*a3 != v6[1] || a3[1] != v6[2])
    {
      goto LABEL_14;
    }

    return *(v5 + 24);
  }

  else
  {
    v8 = v6[5];
    if (*a3 != *(v8 + 8) || a3[1] != *(v8 + 16))
    {
LABEL_14:
      operator new();
    }
  }

  return v8;
}

uint64_t ClipperLib::Clipper::AddLocalMaxPoly(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = ClipperLib::Clipper::AddOutPt(a1, a2, a4);
  if (!*(a3 + 88))
  {
    result = ClipperLib::Clipper::AddOutPt(a1, a3, a4);
  }

  v9 = *(a2 + 100);
  v10 = *(a3 + 100);
  if (v9 == v10)
  {
    *(a2 + 100) = -1;
    *(a3 + 100) = -1;
  }

  else
  {
    if (v9 < v10)
    {
      v11 = a2;
      v12 = a3;
    }

    else
    {
      v11 = a3;
      v12 = a2;
    }

    return ClipperLib::Clipper::AppendPolygon(a1, v11, v12);
  }

  return result;
}

uint64_t ClipperLib::Clipper::AppendPolygon(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + *(*a1 - 24) + 80);
  v7 = *(v6 + 8 * *(a2 + 100));
  v8 = *(v6 + 8 * *(a3 + 100));
  v9 = v7;
  do
  {
    v9 = *(v9 + 8);
  }

  while (v9 != v8 && v9 != 0);
  result = v8;
  if (v9 != v8)
  {
    v12 = v8;
    do
    {
      v12 = *(v12 + 8);
    }

    while (v12 != v7 && v12 != 0);
    result = v7;
    if (v12 != v7)
    {
      result = ClipperLib::GetLowermostRec(v7, v8);
    }
  }

  v14 = *(v7 + 24);
  v15 = *(v14 + 40);
  v16 = *(v8 + 24);
  v17 = *(v16 + 40);
  v18 = *(a2 + 84);
  v19 = *(a3 + 84);
  if (v18 == 1)
  {
    if (v19 == 1)
    {
      v20 = *(v8 + 24);
      do
      {
        v21 = v20[2];
        v20[2] = vextq_s8(v21, v21, 8uLL);
        v20 = v21.i64[0];
      }

      while (v21.i64[0] != v16);
      *(v16 + 32) = v14;
      *(v14 + 40) = v16;
      *(v15 + 32) = v17;
      *(v17 + 40) = v15;
      *(v7 + 24) = v17;
    }

    else
    {
      *(v17 + 32) = v14;
      *(v14 + 40) = v17;
      *(v16 + 40) = v15;
      *(v15 + 32) = v16;
      *(v7 + 24) = v16;
    }
  }

  else if (v19 == 2)
  {
    v22 = *(v8 + 24);
    do
    {
      v23 = v22[2];
      v22[2] = vextq_s8(v23, v23, 8uLL);
      v22 = v23.i64[0];
    }

    while (v23.i64[0] != v16);
    *(v15 + 32) = v17;
    *(v17 + 40) = v15;
    *(v16 + 32) = v14;
    *(v14 + 40) = v16;
  }

  else
  {
    *(v15 + 32) = v16;
    *(v16 + 40) = v15;
    *(v14 + 40) = v17;
    *(v17 + 32) = v14;
  }

  *(v7 + 32) = 0;
  if (result == v8)
  {
    v24 = *(v8 + 8);
    if (v24 != v7)
    {
      *(v7 + 8) = v24;
    }

    *(v7 + 4) = *(v8 + 4);
  }

  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 8) = v7;
  v25 = *(a2 + 100);
  v26 = *(a3 + 100);
  *(a2 + 100) = -1;
  *(a3 + 100) = -1;
  v27 = *(a1 + *(*a1 - 24) + 104);
  if (v27)
  {
    while (*(v27 + 100) != v26)
    {
      v27 = *(v27 + 128);
      if (!v27)
      {
        goto LABEL_36;
      }
    }

    *(v27 + 100) = v25;
    *(v27 + 84) = v18;
  }

LABEL_36:
  *v8 = *v7;
  return result;
}

uint64_t ClipperLib::Clipper::AddEdgeToSEL(uint64_t result, uint64_t a2)
{
  v2 = *(result + 112);
  *(a2 + 152) = 0;
  if (v2)
  {
    *(v2 + 152) = a2;
  }

  *(result + 112) = a2;
  *(a2 + 144) = v2;
  return result;
}

BOOL ClipperLib::Clipper::PopEdgeFromSEL(uint64_t a1, void *a2)
{
  v4 = *(a1 + 112);
  v2 = (a1 + 112);
  v3 = v4;
  if (v4)
  {
    *a2 = v3;
    v6 = *(*v2 + 144);
    v7 = *(*v2 + 152);
    v5 = *v2 + 144;
    if (*v5 == 0)
    {
      *v2 = 0;
    }

    else
    {
      v8 = (v7 + 144);
      if (!v7)
      {
        v8 = v2;
      }

      *v8 = v6;
      if (v6)
      {
        *(v6 + 152) = v7;
      }
    }

    *v5 = 0;
    *(v5 + 8) = 0;
  }

  return v3 != 0;
}

uint64_t ClipperLib::Clipper::DeleteFromSEL(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 144);
  v3 = *(a2 + 152);
  if (*(a2 + 144) == 0)
  {
    if (*(result + 112) != a2)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (!v3)
  {
LABEL_5:
    v4 = (result + 112);
    goto LABEL_6;
  }

  v4 = (v3 + 144);
LABEL_6:
  *v4 = v2;
  if (v2)
  {
    *(v2 + 152) = v3;
  }

  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  return result;
}

__n128 ClipperLib::Clipper::CopyAELToSEL(ClipperLib::Clipper *this)
{
  v1 = *(this + *(*this - 24) + 104);
  *(this + 14) = v1;
  if (v1)
  {
    do
    {
      result = v1[8];
      v1[9] = result;
      v1 = result.n128_u64[0];
    }

    while (result.n128_u64[0]);
  }

  return result;
}

uint64_t *ClipperLib::Clipper::InsertEdgeIntoAEL(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (!*(result + *(*result - 24) + 104))
  {
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
LABEL_43:
    v16 = (result + *(v3 - 24) + 104);
    goto LABEL_44;
  }

  if (!a3)
  {
    a3 = *(result + *(*result - 24) + 104);
    v18 = *(a2 + 24);
    v19 = *(a3 + 24);
    v20 = v18 < v19;
    if (v18 == v19)
    {
      v21 = *(a2 + 56);
      v22 = *(a3 + 56);
      if (v21 <= v22)
      {
        if (v21 == v22)
        {
          v25 = *(a2 + 48);
        }

        else
        {
          v26 = *(a2 + 72) * (v22 - *(a2 + 8));
          v27 = 0.5;
          if (v26 < 0.0)
          {
            v27 = -0.5;
          }

          v25 = *a2 + (v26 + v27);
        }

        if (*(a3 + 48) <= v25)
        {
          goto LABEL_3;
        }

LABEL_42:
        *(a2 + 136) = 0;
        *(a2 + 128) = *(result + *(v3 - 24) + 104);
        *(*(result + *(v3 - 24) + 104) + 136) = a2;
        goto LABEL_43;
      }

      v23 = *(a3 + 72) * (v21 - *(a3 + 8));
      v24 = 0.5;
      if (v23 < 0.0)
      {
        v24 = -0.5;
      }

      v20 = *(a2 + 48) < *a3 + (v23 + v24);
    }

    if (!v20)
    {
      goto LABEL_3;
    }

    goto LABEL_42;
  }

LABEL_3:
  v4 = *(a3 + 128);
  if (v4)
  {
    v5 = *(a2 + 24);
    v6 = a3;
    while (1)
    {
      a3 = v6;
      v6 = v4;
      v7 = *(v4 + 24);
      v8 = v5 < v7;
      if (v5 == v7)
      {
        v9 = *(a2 + 56);
        v10 = *(v6 + 56);
        if (v9 <= v10)
        {
          if (v9 == v10)
          {
            v13 = *(a2 + 48);
          }

          else
          {
            v14 = *(a2 + 72) * (v10 - *(a2 + 8));
            if (v14 >= 0.0)
            {
              v15 = 0.5;
            }

            else
            {
              v15 = -0.5;
            }

            v13 = *a2 + (v14 + v15);
          }

          if (*(v6 + 48) > v13)
          {
            goto LABEL_24;
          }

          goto LABEL_21;
        }

        v11 = *(v6 + 72) * (v9 - *(v6 + 8));
        if (v11 >= 0.0)
        {
          v12 = 0.5;
        }

        else
        {
          v12 = -0.5;
        }

        v8 = *(a2 + 48) < *v6 + (v11 + v12);
      }

      if (v8)
      {
        goto LABEL_24;
      }

LABEL_21:
      v4 = *(v6 + 128);
      if (!v4)
      {
        a3 = v6;
        break;
      }
    }
  }

  v6 = 0;
LABEL_24:
  *(a2 + 128) = v6;
  v16 = (a3 + 128);
  v17 = *(a3 + 128);
  if (v17)
  {
    *(v17 + 136) = a2;
  }

  *(a2 + 136) = a3;
LABEL_44:
  *v16 = a2;
  return result;
}

uint64_t ClipperLib::Clipper::IntersectEdges(uint64_t result, _DWORD *a2, _DWORD *a3, void *a4)
{
  v7 = result;
  v8 = a2[25];
  v9 = a3[25];
  v10 = *(result + 136);
  if (v10)
  {
    result = v10(a2, a2 + 12, a3, a3 + 12, a4);
  }

  v11 = a2[22];
  v12 = a3[22];
  if (!v11)
  {
    if (!v12)
    {
      return result;
    }

    if (a2[20] == a3[20])
    {
      if (*(v7 + 80) != 1 || v9 < 0)
      {
        return result;
      }
    }

    else
    {
      v27 = a3[23];
      if (v27 < 0)
      {
        v27 = -v27;
      }

      if (v27 != 1 || *(v7 + 80) == 1 && a3[24])
      {
        return result;
      }
    }

    result = ClipperLib::Clipper::AddOutPt(v7, a2, a4);
    if ((v8 & 0x80000000) == 0)
    {
      a2[25] = -1;
    }

    return result;
  }

  v13 = a2[20];
  v14 = a3[20];
  if (!v12)
  {
    if (v13 == v14)
    {
      if (*(v7 + 80) != 1 || v8 < 0)
      {
        return result;
      }
    }

    else
    {
      v28 = a2[23];
      if (v28 < 0)
      {
        v28 = -v28;
      }

      if (v28 != 1 || *(v7 + 80) == 1 && a2[24])
      {
        return result;
      }
    }

    result = ClipperLib::Clipper::AddOutPt(v7, a3, a4);
    if (v9 < 0)
    {
      return result;
    }

    v29 = -1;
    goto LABEL_93;
  }

  if (v13 == v14)
  {
    v15 = 124;
    if (!v13)
    {
      v15 = 128;
    }

    v16 = *(v7 + v15);
    v17 = a2[23];
    if (v16)
    {
      v18 = v17 + v12;
      if (!v18)
      {
        v18 = -v17;
      }

      a2[23] = v18;
      v19 = a3[23] - v11;
      if (v19)
      {
        a3[23] = v19;
      }

      else
      {
        a3[23] = -v11;
      }
    }

    else
    {
      a2[23] = a3[23];
      a3[23] = v17;
    }
  }

  else
  {
    if (v14)
    {
      v20 = 124;
    }

    else
    {
      v20 = 128;
    }

    v21 = a2[24];
    v22 = v21 + v12;
    if (!*(v7 + v20))
    {
      v22 = v21 == 0;
    }

    a2[24] = v22;
    if (v13)
    {
      v23 = 124;
    }

    else
    {
      v23 = 128;
    }

    v24 = *(v7 + v23);
    v25 = a3[24];
    if (v24)
    {
      v26 = v25 - v11;
    }

    else
    {
      v26 = v25 == 0;
    }

    a3[24] = v26;
  }

  v30 = 124;
  if (v13)
  {
    v31 = 124;
  }

  else
  {
    v31 = 128;
  }

  if (v13)
  {
    v32 = 128;
  }

  else
  {
    v32 = 124;
  }

  v33 = *(v7 + v32);
  v34 = *(v7 + v31);
  if (v14)
  {
    v35 = 124;
  }

  else
  {
    v35 = 128;
  }

  if (v14)
  {
    v30 = 128;
  }

  v36 = *(v7 + v30);
  v37 = *(v7 + v35);
  v38 = a2[23];
  v39 = -v38;
  if ((v38 & 0x80000000) == 0)
  {
    v40 = v38;
  }

  else
  {
    v40 = -v38;
  }

  if (v34 != 2)
  {
    v38 = v40;
  }

  if (v34 == 3)
  {
    v38 = v39;
  }

  v41 = a3[23];
  v42 = -v41;
  if ((v41 & 0x80000000) == 0)
  {
    v43 = v41;
  }

  else
  {
    v43 = -v41;
  }

  if (v37 != 2)
  {
    v41 = v43;
  }

  if (v37 == 3)
  {
    v44 = v42;
  }

  else
  {
    v44 = v41;
  }

  if ((v8 & 0x80000000) == 0 && (v9 & 0x80000000) == 0)
  {
    if (v38 <= 1 && v44 <= 1 && (v13 == v14 || *(v7 + 80) == 3))
    {
      ClipperLib::Clipper::AddOutPt(v7, a2, a4);
LABEL_91:
      v45 = v7;
      v46 = a3;
LABEL_92:
      result = ClipperLib::Clipper::AddOutPt(v45, v46, a4);
      v47 = a2[21];
      a2[21] = a3[21];
      a3[21] = v47;
      v29 = a2[25];
      a2[25] = a3[25];
LABEL_93:
      a3[25] = v29;
      return result;
    }

    return ClipperLib::Clipper::AddLocalMaxPoly(v7, a2, a3, a4);
  }

  if ((v8 & 0x80000000) == 0)
  {
    if (v44 > 1)
    {
      return result;
    }

    v45 = v7;
    v46 = a2;
    goto LABEL_92;
  }

  if ((v9 & 0x80000000) == 0)
  {
    if (v38 > 1)
    {
      return result;
    }

    goto LABEL_91;
  }

  if (v38 <= 1 && v44 <= 1)
  {
    v48 = a2[24];
    v49 = -v48;
    if (v48 >= 0)
    {
      v50 = v48;
    }

    else
    {
      v50 = -v48;
    }

    if (v33 != 2)
    {
      v48 = v50;
    }

    if (v33 == 3)
    {
      v48 = v49;
    }

    v51 = a3[24];
    if (v36 == 3)
    {
      v51 = -v51;
    }

    else if (v36 != 2)
    {
      if (v51 >= 0)
      {
        v51 = v51;
      }

      else
      {
        v51 = -v51;
      }
    }

    if (v13 == v14)
    {
      if (v38 != 1 || v44 != 1)
      {
        v53 = a2[21];
        a2[21] = a3[21];
        a3[21] = v53;
        return result;
      }

      v52 = *(v7 + 80);
      if (v52 <= 1)
      {
        if (!v52)
        {
          if (v48 < 1 || v51 < 1)
          {
            return result;
          }

          goto LABEL_130;
        }

        if (v52 != 1)
        {
          return result;
        }

        goto LABEL_128;
      }

      if (v52 == 2)
      {
        if (v13 != 1 || v48 < 1 || v51 <= 0)
        {
          if (v13)
          {
            return result;
          }

LABEL_128:
          if (v48 > 0 || v51 > 0)
          {
            return result;
          }
        }
      }

      else if (v52 != 3)
      {
        return result;
      }
    }

LABEL_130:

    return ClipperLib::Clipper::AddLocalMinPoly(v7, a2, a3, a4);
  }

  return result;
}

uint64_t ClipperLib::Clipper::SetZ(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 136);
  if (v4)
  {
    return v4(a3, a3 + 48, a4, a4 + 48, a2);
  }

  return result;
}

void *ClipperLib::Clipper::SetHoleState(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 136);
  if (v3)
  {
    v4 = 0;
    do
    {
      v5 = v4;
      v6 = *(v3 + 100);
      if ((v6 & 0x80000000) == 0)
      {
        if (*(v3 + 88))
        {
          v4 = v3;
          if (v5)
          {
            if (*(v5 + 100) == v6)
            {
              v4 = 0;
            }

            else
            {
              v4 = v5;
            }
          }
        }
      }

      v3 = *(v3 + 136);
    }

    while (v3);
    if (v4)
    {
      v3 = *(*(result + *(*result - 24) + 80) + 8 * *(v4 + 100));
      LOBYTE(v4) = (*(v3 + 4) & 1) == 0;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *(a3 + 8) = v3;
  *(a3 + 4) = v4;
  return result;
}

uint64_t ClipperLib::GetLowermostRec(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  BottomPt = *(a1 + 32);
  if (!BottomPt)
  {
    BottomPt = ClipperLib::GetBottomPt(*(v3 + 24));
    *(v3 + 32) = BottomPt;
  }

  v5 = *(a2 + 32);
  if (!v5)
  {
    v5 = ClipperLib::GetBottomPt(*(a2 + 24));
    *(a2 + 32) = v5;
    BottomPt = *(v3 + 32);
  }

  v6 = BottomPt[2];
  v7 = v5[2];
  if (v6 <= v7)
  {
    if (v6 < v7)
    {
      return a2;
    }

    v8 = BottomPt[1];
    v9 = v5[1];
    if (v8 < v9)
    {
      return v3;
    }

    if (v8 > v9 || BottomPt[4] == BottomPt)
    {
      return a2;
    }

    else if (v5[4] != v5 && !ClipperLib::FirstIsBottomPt(BottomPt, v5))
    {
      return a2;
    }
  }

  return v3;
}

BOOL ClipperLib::OutRec1RightOfOutRec2(uint64_t a1, uint64_t a2)
{
  do
  {
    a1 = *(a1 + 8);
  }

  while (a1 != a2 && a1 != 0);
  return a1 == a2;
}

int *ClipperLib::Clipper::GetOutRec(ClipperLib::Clipper *this, int a2)
{
  v2 = *(this + *(*this - 24) + 80);
  v3 = *(v2 + 8 * a2);
  do
  {
    result = v3;
    v3 = *(v2 + 8 * *v3);
  }

  while (result != v3);
  return result;
}

uint64_t ClipperLib::Clipper::GetLastOutPt(void *a1, uint64_t a2)
{
  v2 = *(*(a1 + *(*a1 - 24) + 80) + 8 * *(a2 + 100)) + 24;
  if (*(a2 + 84) != 1)
  {
    v2 = *v2 + 40;
  }

  return *v2;
}

uint64_t ClipperLib::Clipper::ProcessHorizontal(uint64_t result, uint64_t *a2)
{
  v2 = a2;
  v3 = result;
  v82 = a2;
  v4 = *(a2 + 22);
  v5 = *a2;
  v6 = a2[6];
  v7 = *a2 < v6;
  if (*a2 >= v6)
  {
    v8 = a2[6];
  }

  else
  {
    v8 = *a2;
  }

  if (*a2 < v6)
  {
    v9 = a2[6];
  }

  else
  {
    v9 = *a2;
  }

  v75 = v9;
  v76 = v8;
  v10 = a2;
  while (1)
  {
    v11 = v10;
    v10 = v10[15];
    if (!v10)
    {
      break;
    }

    if (*(v10 + 9) != -1.0e40)
    {
      v74 = 0;
      goto LABEL_12;
    }
  }

  result = ClipperLib::GetMaximaPair(v11);
  v74 = result;
LABEL_12:
  v79 = v3 + 11;
  if (v3[13])
  {
    v12 = v3[12];
    if (v5 < v6)
    {
      while (1)
      {
        if (v12 == v79)
        {
          v14 = 0;
          goto LABEL_27;
        }

        v13 = v12[2];
        if (v13 > v5)
        {
          break;
        }

        v12 = v12[1];
      }

      v14 = 0;
      if (v13 >= v11[6])
      {
        v12 = v3 + 11;
      }

      goto LABEL_27;
    }

    v15 = v3 + 11;
    while (1)
    {
      v14 = v15;
      if (v15 == v12)
      {
        break;
      }

      v15 = *v15;
      v16 = *(*v14 + 16);
      if (v16 <= v5)
      {
        if (v16 <= v11[6])
        {
          v14 = v3[12];
        }

        break;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v12 = 0;
LABEL_27:
  __asm { FMOV            V9.2S, #-1.0 }

  v77 = v11;
  while (1)
  {
    v22 = 17;
    if (v7)
    {
      v22 = 16;
    }

    v78 = v22 * 8;
    v23 = v2[v22];
    if (v23)
    {
      v24 = v7;
      while (1)
      {
        if (!v3[13])
        {
          goto LABEL_40;
        }

        if (v24)
        {
          break;
        }

        v26 = v3[12];
        if (v14 == v26)
        {
          v11 = v77;
        }

        else
        {
          while (1)
          {
            v27 = v14;
            v14 = *v14;
            if (v14[2] <= *(v23 + 24))
            {
              break;
            }

            if ((*(v2 + 25) & 0x80000000) == 0 && v4)
            {
              v28 = v2[1];
              *&v80 = v14[2];
              *(&v80 + 1) = v28;
              v81 = _D9;
              result = ClipperLib::Clipper::AddOutPt(v3, v2, &v80);
              v14 = *v27;
              v26 = v3[12];
            }

            if (v14 == v26)
            {
              goto LABEL_51;
            }
          }

          v14 = v27;
LABEL_51:
          v11 = v77;
          if (v24)
          {
LABEL_52:
            v29 = *(v23 + 24);
            if (v29 > v75)
            {
              goto LABEL_86;
            }

            goto LABEL_55;
          }
        }

LABEL_54:
        v29 = *(v23 + 24);
        if (v29 < v76)
        {
          goto LABEL_86;
        }

LABEL_55:
        if (v29 == v2[6])
        {
          v30 = v2[15];
          if (v30)
          {
            if (*(v23 + 72) < *(v30 + 72))
            {
              goto LABEL_86;
            }
          }
        }

        if ((*(v2 + 25) & 0x80000000) == 0 && v4)
        {
          ClipperLib::Clipper::AddOutPt(v3, v2, (v23 + 24));
          for (i = v3[14]; i; i = i[18])
          {
            if ((*(i + 25) & 0x80000000) == 0)
            {
              v32 = *v2;
              v33 = v2[6];
              v34 = *i;
              v35 = i[6];
              if (*v2 >= v33)
              {
                v36 = v2[6];
              }

              else
              {
                v36 = *v2;
              }

              if (*v2 <= v33)
              {
                v32 = v2[6];
              }

              if (v34 >= v35)
              {
                v37 = i[6];
              }

              else
              {
                v37 = *i;
              }

              if (v34 <= v35)
              {
                v34 = i[6];
              }

              if (v36 < v34 && v37 < v32)
              {
                v80 = *(i + 3);
                v81 = i[8];
                operator new();
              }
            }
          }

          v80 = *v2;
          v81 = v2[2];
          operator new();
        }

        if (v2 == v11 && v23 == v74)
        {
          if ((*(v2 + 25) & 0x80000000) == 0)
          {
            result = ClipperLib::Clipper::AddLocalMaxPoly(v3, v2, v74, v2 + 6);
          }

          v47 = *v3;
          v48 = v3 + *(*v3 - 24);
          v49 = v2[16];
          v50 = v2[17];
          v51 = v2 + 16;
          if (v50 | v49)
          {
            if (v50)
            {
              v52 = (v50 + 128);
              goto LABEL_103;
            }

LABEL_102:
            v52 = v48 + 104;
LABEL_103:
            *v52 = v49;
            if (v49)
            {
              *(v49 + 136) = v50;
            }

            *v51 = 0;
            v51[1] = 0;
            v47 = *v3;
          }

          else if (*(v48 + 13) == v11)
          {
            goto LABEL_102;
          }

          v53 = v3 + *(v47 - 24);
          v55 = *(v74 + 128);
          v56 = *(v74 + 136);
          v54 = (v74 + 128);
          if (*(v74 + 128) == 0)
          {
            if (*(v53 + 13) == v74)
            {
              goto LABEL_110;
            }
          }

          else
          {
LABEL_107:
            if (v56)
            {
              v57 = (v56 + 128);
              goto LABEL_111;
            }

LABEL_110:
            v57 = v53 + 104;
LABEL_111:
            *v57 = v55;
            if (v55)
            {
              *(v55 + 136) = v56;
            }

            *v54 = 0;
            v54[1] = 0;
          }

          return result;
        }

        v39 = v2[4];
        *&v80 = *(v23 + 24);
        *(&v80 + 1) = v39;
        v81 = _D9;
        if (v24)
        {
          v40 = v2;
          v41 = v23;
        }

        else
        {
          v40 = v23;
          v41 = v2;
        }

        ClipperLib::Clipper::IntersectEdges(v3, v40, v41, &v80);
        v42 = *(v23 + v78);
        result = ClipperLib::ClipperBase::SwapPositionsInAEL(v3 + *(*v3 - 24), v2, v23);
        v23 = v42;
        if (!v42)
        {
          goto LABEL_86;
        }
      }

      if (v12 == v79)
      {
        goto LABEL_52;
      }

      do
      {
        if (v12[2] >= *(v23 + 24))
        {
          break;
        }

        if ((*(v2 + 25) & 0x80000000) == 0 && v4)
        {
          v25 = v2[1];
          *&v80 = v12[2];
          *(&v80 + 1) = v25;
          v81 = _D9;
          result = ClipperLib::Clipper::AddOutPt(v3, v2, &v80);
        }

        v12 = v12[1];
      }

      while (v12 != v79);
LABEL_40:
      if (v24)
      {
        goto LABEL_52;
      }

      goto LABEL_54;
    }

LABEL_86:
    v43 = v2[15];
    if (!v43 || *(v43 + 72) != -1.0e40)
    {
      break;
    }

    result = ClipperLib::ClipperBase::UpdateEdgeIntoAEL((v3 + *(*v3 - 24)), &v82);
    v2 = v82;
    if ((*(v82 + 25) & 0x80000000) == 0)
    {
      result = ClipperLib::Clipper::AddOutPt(v3, v82, v82);
    }

    v44 = *v2;
    v45 = v2[6];
    v7 = *v2 < v45;
    if (*v2 >= v45)
    {
      v46 = v2[6];
    }

    else
    {
      v46 = *v2;
    }

    if (*v2 < v45)
    {
      v44 = v2[6];
    }

    v75 = v44;
    v76 = v46;
  }

  if ((*(v2 + 25) & 0x80000000) == 0)
  {
    for (j = v3[14]; j; j = j[18])
    {
      if ((*(j + 25) & 0x80000000) == 0)
      {
        v59 = *v2;
        v60 = v2[6];
        v61 = *j;
        v62 = j[6];
        if (*v2 >= v60)
        {
          v63 = v2[6];
        }

        else
        {
          v63 = *v2;
        }

        if (*v2 <= v60)
        {
          v59 = v2[6];
        }

        if (v61 >= v62)
        {
          v64 = j[6];
        }

        else
        {
          v64 = *j;
        }

        if (v61 <= v62)
        {
          v61 = j[6];
        }

        if (v63 < v61 && v64 < v59)
        {
          v80 = *(j + 3);
          v81 = j[8];
          operator new();
        }
      }
    }

    v80 = *(v2 + 3);
    v81 = v2[8];
    operator new();
  }

  v66 = *(v2 + 25);
  if (v43)
  {
    if (v66 < 0)
    {
      return ClipperLib::ClipperBase::UpdateEdgeIntoAEL((v3 + *(*v3 - 24)), &v82);
    }

    ClipperLib::Clipper::AddOutPt(v3, v2, v2 + 6);
    result = ClipperLib::ClipperBase::UpdateEdgeIntoAEL((v3 + *(*v3 - 24)), &v82);
    v67 = v82;
    if (*(v82 + 22))
    {
      v68 = v82[16];
      v69 = v82[17];
      if (v69 && *(v69 + 24) == *v82 && (v70 = *(v69 + 32), v70 == v82[1]) && *(v69 + 88) && (*(v69 + 100) & 0x80000000) == 0 && v70 > *(v69 + 56) && (result = ClipperLib::SlopesEqual(v82, v82[17], *(v3 + *(*v3 - 24) + 40)), result))
      {
        v71 = v3;
        v72 = v69;
      }

      else
      {
        if (!v68)
        {
          return result;
        }

        if (*(v68 + 24) != *v67)
        {
          return result;
        }

        v73 = *(v68 + 32);
        if (v73 != v67[1])
        {
          return result;
        }

        if (!*(v68 + 88))
        {
          return result;
        }

        if ((*(v68 + 100) & 0x80000000) != 0)
        {
          return result;
        }

        if (v73 <= *(v68 + 56))
        {
          return result;
        }

        result = ClipperLib::SlopesEqual(v67, v68, *(v3 + *(*v3 - 24) + 40));
        if (!result)
        {
          return result;
        }

        v71 = v3;
        v72 = v68;
      }

      ClipperLib::Clipper::AddOutPt(v71, v72, v67);
      v80 = *(v67 + 3);
      v81 = v67[8];
      ClipperLib::Clipper::AddJoin();
    }
  }

  else
  {
    if ((v66 & 0x80000000) == 0)
    {
      result = ClipperLib::Clipper::AddOutPt(v3, v2, v2 + 6);
    }

    v53 = v3 + *(*v3 - 24);
    v55 = v2[16];
    v56 = v2[17];
    v54 = v2 + 16;
    if (*(v2 + 8) != 0)
    {
      goto LABEL_107;
    }

    if (*(v53 + 13) == v2)
    {
      goto LABEL_110;
    }
  }

  return result;
}

void *ClipperLib::GetMaximaPair(void *a1)
{
  result = a1[13];
  v3 = a1[6];
  v4 = a1[7];
  v5 = result[6] == v3 && result[7] == v4;
  if (!v5 || result[15])
  {
    result = a1[14];
    v6 = result[6] == v3 && result[7] == v4;
    if (!v6 || result[15])
    {
      return 0;
    }
  }

  return result;
}

double ClipperLib::GetMaximaPairEx(void *a1)
{
  MaximaPair = ClipperLib::GetMaximaPair(a1);
  if (MaximaPair && *(MaximaPair + 25) != -2 && *(MaximaPair + 16) == *(MaximaPair + 17))
  {
    return MaximaPair[9];
  }

  return result;
}

uint64_t ClipperLib::Clipper::SwapPositionsInSEL(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 144);
  if (!v3 && !*(a2 + 152))
  {
    return result;
  }

  v4 = *(a3 + 144);
  if (!v4)
  {
    v6 = (a3 + 152);
    v7 = *(a3 + 152);
    if (!v7)
    {
      return result;
    }

    if (v3 != a3)
    {
      v5 = *(a2 + 152);
      *(a2 + 144) = 0;
      *(a2 + 152) = v7;
LABEL_11:
      *(v7 + 144) = a2;
      goto LABEL_12;
    }

LABEL_17:
    v8 = *(a2 + 152);
    if (v8)
    {
      *(v8 + 144) = a3;
    }

    *(a3 + 144) = a2;
    *(a3 + 152) = v8;
    *(a2 + 144) = v4;
    *(a2 + 152) = a3;
    goto LABEL_25;
  }

  if (v3 == a3)
  {
    *(v4 + 152) = a2;
    goto LABEL_17;
  }

  if (v4 == a2)
  {
    if (v3)
    {
      *(v3 + 152) = a3;
    }

    v9 = *(a3 + 152);
    if (v9)
    {
      *(v9 + 144) = a2;
    }

    *(a2 + 144) = a3;
    *(a2 + 152) = v9;
    *(a3 + 144) = v3;
    *(a3 + 152) = a2;
    goto LABEL_25;
  }

  v5 = *(a2 + 152);
  *(v4 + 152) = a2;
  v6 = (a3 + 152);
  v7 = *(a3 + 152);
  *(a2 + 144) = v4;
  *(a2 + 152) = v7;
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_12:
  *(a3 + 144) = v3;
  if (v3)
  {
    *(v3 + 152) = a3;
  }

  *v6 = v5;
  if (v5)
  {
    *(v5 + 144) = a3;
  }

LABEL_25:
  if (!*(a2 + 152) || (a2 = a3, !*(a3 + 152)))
  {
    *(result + 112) = a2;
  }

  return result;
}

uint64_t ClipperLib::GetNextInAEL(uint64_t a1, int a2)
{
  v2 = 136;
  if (a2 == 1)
  {
    v2 = 128;
  }

  return *(a1 + v2);
}

uint64_t *ClipperLib::GetHorzDirection(uint64_t *result, int *a2, void *a3, void *a4)
{
  v4 = *result;
  v5 = result[6];
  v6 = *result < v5;
  if (*result >= v5)
  {
    v4 = result[6];
  }

  *a3 = v4;
  if (v6)
  {
    v7 = result + 6;
  }

  else
  {
    v7 = result;
  }

  v8 = *v7;
  v9 = v6;
  *a4 = v8;
  *a2 = v9;
  return result;
}

void *ClipperLib::Clipper::BuildIntersectList(void *this, uint64_t a2)
{
  v2 = *(this + *(*this - 24) + 104);
  if (v2)
  {
    this[14] = v2;
    do
    {
      v4 = *(v2 + 128);
      *(v2 + 144) = v4;
      if (*(v2 + 56) == a2)
      {
        v5 = *(v2 + 48);
      }

      else
      {
        v6 = *(v2 + 72) * (a2 - *(v2 + 8));
        if (v6 >= 0.0)
        {
          v7 = 0.5;
        }

        else
        {
          v7 = -0.5;
        }

        v5 = *v2 + (v6 + v7);
      }

      *(v2 + 24) = v5;
      v2 = v4;
    }

    while (v4);
    __asm { FMOV            V8.2S, #-1.0 }

    v13 = this[14];
    v14 = *(v13 + 144);
    if (v14)
    {
      do
      {
        v20 = 0uLL;
        v21 = _D8;
        if (*(v13 + 24) > *(v14 + 24))
        {
          ClipperLib::IntersectPoint(v13, v14, &v20);
          if (v20.i64[1] < a2)
          {
            if (*(v13 + 56) == a2)
            {
              v15 = *(v13 + 48);
            }

            else
            {
              v16 = *(v13 + 72) * (a2 - *(v13 + 8));
              if (v16 >= 0.0)
              {
                v17 = 0.5;
              }

              else
              {
                v17 = -0.5;
              }

              v15 = *v13 + (v16 + v17);
            }

            v20.i64[0] = v15;
            v20.i64[1] = a2;
            v21 = _D8;
          }

          operator new();
        }

        v13 = v14;
        v14 = *(v14 + 144);
      }

      while (v14);
      v18 = *(v13 + 152);
      if (v18)
      {
        *(v18 + 144) = 0;
      }
    }

    else
    {
      v19 = *(v13 + 152);
      if (v19)
      {
        *(v19 + 144) = 0;
      }
    }

    this[14] = 0;
  }

  return this;
}

BOOL ClipperLib::Clipper::FixupIntersectionOrder(ClipperLib::Clipper *this)
{
  v2 = *(this + *(*this - 24) + 104);
  *(this + 14) = v2;
  if (v2)
  {
    do
    {
      v3 = *(v2 + 128);
      *(v2 + 144) = v3;
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 7);
  v5 = *(this + 8);
  v6 = 126 - 2 * __clz((v5 - v4) >> 3);
  v26 = ClipperLib::IntersectListSort;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v8 = 1;
  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(ClipperLib::IntersectNode *,ClipperLib::IntersectNode *),ClipperLib::IntersectNode **,false>(v4, v5, &v26, v7, 1);
  v9 = *(this + 8) - *(this + 7);
  if (v9)
  {
    v8 = 0;
    v10 = 0;
    v11 = v9 >> 3;
    if ((v9 >> 3) <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v9 >> 3;
    }

    v13 = 1;
    do
    {
      if (v11 <= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = v11;
      }

      v15 = *(this + 7);
      v16 = *(v15 + 8 * v10);
      v17 = *v16;
      v18 = v16[1];
      if (*(*v16 + 144) != v18 && *(v17 + 152) != v18)
      {
        v19 = v13;
        v20 = v10;
        while (1)
        {
          if (v19 >= v11)
          {
            v20 = v14;
            goto LABEL_23;
          }

          v21 = *(v15 + 8 * v19);
          v23 = *v21;
          v22 = v21[1];
          if (*(v23 + 144) == v22)
          {
            break;
          }

          ++v19;
          ++v20;
          if (*(v23 + 152) == v22)
          {
            goto LABEL_23;
          }
        }

        v20 = v19;
LABEL_23:
        if (v20 == v11)
        {
          return v8;
        }

        *(v15 + 8 * v10) = *(v15 + 8 * v20);
        *(v15 + 8 * v20) = v16;
        v24 = *(*(this + 7) + 8 * v10);
        v17 = *v24;
        v18 = v24[1];
      }

      ClipperLib::Clipper::SwapPositionsInSEL(this, v17, v18);
      v8 = ++v10 >= v11;
      ++v13;
    }

    while (v10 != v12);
  }

  return v8;
}

void *ClipperLib::Clipper::ProcessIntersectList(void *this)
{
  v1 = this;
  v2 = this[7];
  if (this[8] != v2)
  {
    v3 = 0;
    do
    {
      v4 = *(v2 + 8 * v3);
      ClipperLib::Clipper::IntersectEdges(v1, *v4, v4[1], v4 + 2);
      ClipperLib::ClipperBase::SwapPositionsInAEL(v1 + *(*v1 - 24), *v4, v4[1]);
      this = MEMORY[0x259C283A0](v4, 0x1020C40E349F4B1);
      ++v3;
      v2 = v1[7];
    }

    while (v3 < (v1[8] - v2) >> 3);
  }

  v1[8] = v2;
  return this;
}

uint64_t ClipperLib::Clipper::DisposeIntersectNodes(uint64_t this)
{
  v1 = this;
  v2 = *(this + 56);
  v3 = *(this + 64);
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = MEMORY[0x259C283A0](this, 0x1020C40E349F4B1);
        v2 = *(v1 + 56);
        v3 = *(v1 + 64);
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  *(v1 + 64) = v2;
  return this;
}

void ClipperLib::Clipper::DoMaxima(uint64_t *a1, uint64_t a2)
{
  ClipperLib::GetMaximaPairEx(a2);
  if (v4)
  {
    v5 = v4;
    v7 = (a2 + 128);
    for (i = *(a2 + 128); i && i != v5; i = *(a2 + 128))
    {
      ClipperLib::Clipper::IntersectEdges(a1, a2, i, (a2 + 48));
      ClipperLib::ClipperBase::SwapPositionsInAEL(a1 + *(*a1 - 24), a2, i);
    }

    v9 = *(a2 + 100);
    if (v9 != -1)
    {
      if ((v9 & 0x80000000) == 0)
      {
        if ((*(v5 + 100) & 0x80000000) == 0)
        {
          ClipperLib::Clipper::AddLocalMaxPoly(a1, a2, v5, (a2 + 48));
          v10 = *a1;
          v11 = a1 + *(*a1 - 24);
          v13 = *(a2 + 128);
          v12 = *(a2 + 136);
          if (*(a2 + 128) != 0)
          {
            if (v12)
            {
              v14 = (v12 + 128);
              goto LABEL_43;
            }

LABEL_42:
            v14 = v11 + 104;
LABEL_43:
            *v14 = v13;
            if (v13)
            {
              *(v13 + 136) = v12;
            }

LABEL_49:
            *v7 = 0;
            *(a2 + 136) = 0;
            v10 = *a1;
            goto LABEL_50;
          }

          if (*(v11 + 13) == a2)
          {
            goto LABEL_42;
          }

LABEL_50:
          v23 = v10;
          goto LABEL_51;
        }

        if (!*(a2 + 88))
        {
          ClipperLib::Clipper::AddOutPt(a1, a2, (a2 + 48));
          *(a2 + 100) = -1;
LABEL_24:
          v19 = a1 + *(*a1 - 24);
          v21 = *(a2 + 128);
          v20 = *(a2 + 136);
          if (*(a2 + 128) == 0)
          {
            if (*(v19 + 13) != a2)
            {
LABEL_32:
              if ((*(v5 + 100) & 0x80000000) == 0)
              {
                ClipperLib::Clipper::AddOutPt(a1, v5, (a2 + 48));
                *(v5 + 100) = -1;
              }

              v23 = *a1;
LABEL_51:
              v15 = a1 + *(v23 - 24);
              v17 = *(v5 + 128);
              v18 = *(v5 + 136);
              v16 = (v5 + 128);
              if (*(v5 + 128) == 0)
              {
                if (*(v15 + 13) != v5)
                {
                  return;
                }

                goto LABEL_55;
              }

              goto LABEL_52;
            }
          }

          else if (v20)
          {
            v22 = (v20 + 128);
LABEL_29:
            *v22 = v21;
            if (v21)
            {
              *(v21 + 136) = v20;
            }

            *v7 = 0;
            *(a2 + 136) = 0;
            goto LABEL_32;
          }

          v22 = v19 + 104;
          goto LABEL_29;
        }

LABEL_60:
        exception = __cxa_allocate_exception(0x20uLL);
        ClipperLib::clipperException::clipperException(exception, "DoMaxima error");
      }

LABEL_20:
      if (!*(a2 + 88))
      {
        goto LABEL_24;
      }

      goto LABEL_60;
    }

    if (*(v5 + 100) != -1)
    {
      goto LABEL_20;
    }

    v10 = *a1;
    v24 = a1 + *(*a1 - 24);
    v25 = *(a2 + 136);
    if (v25)
    {
      v26 = 1;
    }

    else
    {
      v26 = i != 0;
    }

    if (v26)
    {
      if (v25)
      {
        v27 = (v25 + 128);
        goto LABEL_47;
      }
    }

    else if (*(v24 + 13) != a2)
    {
      goto LABEL_50;
    }

    v27 = (v24 + 104);
LABEL_47:
    *v27 = i;
    if (i)
    {
      *(i + 136) = v25;
    }

    goto LABEL_49;
  }

  if ((*(a2 + 100) & 0x80000000) == 0)
  {
    ClipperLib::Clipper::AddOutPt(a1, a2, (a2 + 48));
  }

  v15 = a1 + *(*a1 - 24);
  v17 = *(a2 + 128);
  v18 = *(a2 + 136);
  v16 = (a2 + 128);
  if (*(a2 + 128) == 0)
  {
    if (*(v15 + 13) != a2)
    {
      return;
    }

    goto LABEL_55;
  }

LABEL_52:
  if (!v18)
  {
LABEL_55:
    v28 = v15 + 104;
    goto LABEL_56;
  }

  v28 = (v18 + 128);
LABEL_56:
  *v28 = v17;
  if (v17)
  {
    *(v17 + 136) = v18;
  }

  *v16 = 0;
  v16[1] = 0;
}

uint64_t ClipperLib::PointCount(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    v2 = a1;
    do
    {
      v1 = (v1 + 1);
      v2 = *(v2 + 32);
    }

    while (v2 != a1);
  }

  return v1;
}

void *std::vector<std::vector<ClipperLib::IntPoint>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<ClipperLib::IntPoint>>>(result, a2);
    }

    std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *std::vector<ClipperLib::IntPoint>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(result, a2);
    }

    std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
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
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<ClipperLib::IntPoint>>::__emplace_back_slow_path<std::vector<ClipperLib::IntPoint> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<ClipperLib::IntPoint>>::__construct_one_at_end[abi:ne200100]<std::vector<ClipperLib::IntPoint> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void *std::vector<ClipperLib::PolyNode *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::TEdge *>>(result, a2);
    }

    std::vector<std::vector<ClipperLib::IntPoint>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

__n128 ClipperLib::SwapIntersectNodes(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 4);
  v4 = *a1;
  v3 = a1[1];
  *a1 = *a2;
  result = a2[1];
  *(a1 + 4) = *(a2 + 4);
  a1[1] = result;
  *a2 = v4;
  a2[1] = v3;
  *(a2 + 4) = v2;
  return result;
}

BOOL ClipperLib::GetOverlap(ClipperLib *this, uint64_t a2, uint64_t a3, uint64_t a4, ClipperLib **a5, ClipperLib **a6, uint64_t *a7)
{
  if (this >= a2)
  {
    if (a3 >= a4)
    {
      if (a2 <= a4)
      {
        v11 = a4;
      }

      else
      {
        v11 = a2;
      }

      *a5 = v11;
      if (a3 >= this)
      {
        v8 = this;
      }

      else
      {
        v8 = a3;
      }
    }

    else
    {
      if (a2 <= a3)
      {
        v9 = a3;
      }

      else
      {
        v9 = a2;
      }

      *a5 = v9;
      if (a4 >= this)
      {
        v8 = this;
      }

      else
      {
        v8 = a4;
      }
    }
  }

  else if (a3 >= a4)
  {
    if (this <= a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = this;
    }

    *a5 = v10;
    if (a3 >= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = a3;
    }
  }

  else
  {
    if (this <= a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = this;
    }

    *a5 = v7;
    if (a4 >= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = a4;
    }
  }

  *a6 = v8;
  return *a5 < v8;
}

uint64_t ClipperLib::JoinHorz(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a1[1];
  v6 = *(a2 + 8);
  v7 = v5 <= v6;
  v8 = *(a3 + 8) <= *(a4 + 8);
  if (v7 != v8)
  {
    v9 = *a5;
    if (v5 > v6)
    {
      do
      {
        v12 = a1;
        a1 = a1[4];
        v13 = a1[1];
      }

      while (v13 >= v9 && v13 <= v12[1] && a1[2] == a5[1]);
    }

    else
    {
      do
      {
        v10 = a1;
        a1 = a1[4];
        v11 = a1[1];
      }

      while (v11 <= v9 && v11 >= v10[1] && a1[2] == a5[1]);
    }

    operator new();
  }

  return v7 ^ v8;
}

uint64_t ClipperLib::Clipper::JoinPoints(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v6 = *(a2 + 8);
  v9 = (*a2 + 8);
  v8 = *v9;
  v10 = *(*a2 + 16);
  if (v10 != *(a2 + 24))
  {
    v48 = (v7 + 4);
    do
    {
      v49 = *v48;
      v51 = *(*v48 + 8);
      v50 = *(*v48 + 16);
      v48 = *v48 + 32;
    }

    while (v49 != v7 && v51 == v8 && v50 == v10);
    if (v50 <= v10 && (v90 = *v9, v91 = v9[2], v88 = *(v49 + 1), v89 = v49[3], v86 = *(a2 + 16), v87 = *(a2 + 32), v54 = *a1, ClipperLib::SlopesEqual(&v90, &v88, &v86, *(a1 + *(*a1 - 24) + 40))))
    {
      v83 = a4;
      v84 = v54;
      v82 = 0;
    }

    else
    {
      v49 = v7;
      do
      {
        v49 = v49[5];
        v55 = v49[2];
      }

      while (v49 != v7 && v49[1] == v8 && v55 == v10);
      if (v55 > v10)
      {
        return 0;
      }

      v90 = *v9;
      v91 = v9[2];
      v88 = *(v49 + 1);
      v89 = v49[3];
      v86 = *(a2 + 16);
      v87 = *(a2 + 32);
      v58 = *a1;
      result = ClipperLib::SlopesEqual(&v90, &v88, &v86, *(a1 + *(*a1 - 24) + 40));
      if (!result)
      {
        return result;
      }

      v83 = a4;
      v84 = v58;
      v82 = 1;
    }

    v61 = (v6 + 1);
    v60 = v6[1];
    v62 = (v6 + 4);
    v63 = v6[2];
    do
    {
      v64 = *v62;
      v66 = *(*v62 + 8);
      v65 = *(*v62 + 16);
      v62 = *v62 + 32;
    }

    while (v66 == v60 && v65 == v63 && v64 != v6);
    if (v65 <= v63 && (v90 = *v61, v91 = v6[3], v88 = *(v64 + 1), v89 = v64[3], v86 = *(a2 + 16), v87 = *(a2 + 32), ClipperLib::SlopesEqual(&v90, &v88, &v86, *(a1 + *(v84 - 24) + 40))))
    {
      v69 = 0;
    }

    else
    {
      v64 = v6;
      do
      {
        v64 = v64[5];
        v70 = v64[2];
      }

      while (v64[1] == v60 && v70 == v63 && v64 != v6);
      if (v70 > v63)
      {
        return 0;
      }

      v90 = *v61;
      v91 = v6[3];
      v88 = *(v64 + 1);
      v89 = v64[3];
      v86 = *(a2 + 16);
      v87 = *(a2 + 32);
      result = ClipperLib::SlopesEqual(&v90, &v88, &v86, *(a1 + *(v84 - 24) + 40));
      if (!result)
      {
        return result;
      }

      v69 = 1;
    }

    result = 0;
    if (v49 == v64 || v49 == v7 || v64 == v6)
    {
      return result;
    }

    if (a3 != v83 || v82 != v69)
    {
      operator new();
    }

    return 0;
  }

  v11 = *(a2 + 16);
  v12 = *a2;
  if (v11 != v8 || (v11 == v6[1] ? (v13 = v10 == v6[2]) : (v13 = 0), v12 = *a2, !v13))
  {
    do
    {
      v14 = v12;
      v12 = v12[5];
    }

    while (v12 != v7 && v12[2] == v10 && v12 != v6);
    v17 = v14 + 2;
    do
    {
      v18 = v7;
      v7 = v7[4];
    }

    while (v7 != v14 && v7[2] == v10 && v7 != v6);
    if (v7 != v14 && v7 != v6)
    {
      v22 = v6[2];
      v23 = v6;
      do
      {
        v24 = v23;
        v23 = v23[5];
      }

      while (v23 != v18 && v23[2] == v22 && v23 != v6);
      do
      {
        v27 = v6;
        v6 = v6[4];
      }

      while (v6 != v14 && v6 != v24 && v6[2] == v22);
      if (v6 != v24 && v6 != v14)
      {
        v31 = v14[1];
        v32 = *(v18 + 8);
        v33 = *(v24 + 8);
        v34 = *(v27 + 8);
        v35 = v32 <= v34 ? *(v27 + 8) : *(v18 + 8);
        v36 = v33 >= v31 ? v14[1] : *(v24 + 8);
        v37 = v32 <= v33 ? *(v24 + 8) : *(v18 + 8);
        v38 = v34 >= v31 ? v14[1] : *(v27 + 8);
        if (v33 >= v34)
        {
          v38 = v36;
        }

        else
        {
          v35 = v37;
        }

        v39 = v31 <= v34 ? *(v27 + 8) : v14[1];
        v40 = v33 >= v32 ? *(v18 + 8) : *(v24 + 8);
        v41 = v31 <= v33 ? *(v24 + 8) : v14[1];
        v42 = v34 >= v32 ? *(v18 + 8) : *(v27 + 8);
        if (v33 >= v34)
        {
          v43 = v40;
        }

        else
        {
          v39 = v41;
          v43 = v42;
        }

        if (v31 < v32)
        {
          v44 = v43;
        }

        else
        {
          v39 = v35;
          v44 = v38;
        }

        if (v39 < v44)
        {
          if (v31 < v39 || v31 > v44)
          {
            if (v33 < v39 || v33 > v44)
            {
              if (v32 < v39 || v32 > v44)
              {
                v17 = (v27 + 16);
                v45 = (v27 + 24);
                v46 = (v27 + 28);
              }

              else
              {
                v45 = (v18 + 24);
                v46 = (v18 + 28);
                v17 = (v18 + 16);
                v34 = *(v18 + 8);
              }
            }

            else
            {
              v45 = (v24 + 24);
              v46 = (v24 + 28);
              v17 = (v24 + 16);
              v34 = *(v24 + 8);
            }
          }

          else
          {
            v45 = (v14 + 3);
            v46 = v14 + 7;
            v34 = v14[1];
          }

          v79 = *v17;
          v80 = *v45;
          v81 = *v46;
          *a2 = v14;
          *(a2 + 8) = v24;
          *&v90 = v34;
          *(&v90 + 1) = v79;
          v91 = __PAIR64__(v81, v80);
          return ClipperLib::JoinHorz(v14, v18, v24, v27, &v90);
        }
      }
    }

    return 0;
  }

  if (a3 != a4)
  {
    return 0;
  }

  v73 = *a2;
  while (1)
  {
    v73 = v73[4];
    if (v73 == v7)
    {
      break;
    }

    v74 = v73[2];
    if (v73[1] != v11 || v74 != v10)
    {
      goto LABEL_148;
    }
  }

  v74 = v73[2];
LABEL_148:
  v76 = *(a2 + 8);
  while (1)
  {
    v76 = v76[4];
    if (v76 == v6)
    {
      break;
    }

    v77 = v76[2];
    if (v76[1] != v11 || v77 != v10)
    {
      goto LABEL_156;
    }
  }

  v77 = v76[2];
LABEL_156:
  if (v74 > v10 == v77 <= v10)
  {
    operator new();
  }

  return v74 > v10 == v77 <= v10;
}

uint64_t ClipperLib::Clipper::FixupFirstLefts1(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = *(*result - 24);
  v5 = *(result + v4 + 80);
  if (*(result + v4 + 88) != v5)
  {
    v8 = result;
    v9 = 0;
    do
    {
      v10 = *(v5 + 8 * v9);
      for (i = *(v10 + 8); i; i = *(i + 8))
      {
        if (*(i + 24))
        {
          break;
        }
      }

      if (i == a2)
      {
        v12 = *(v10 + 24);
        if (v12)
        {
          v13 = *(a3 + 24);
          v14 = *(v10 + 24);
          while (1)
          {
            result = ClipperLib::PointInPolygon((v14 + 8), v13);
            if ((result & 0x80000000) == 0)
            {
              break;
            }

            v14 = *(v14 + 32);
            if (v14 == v12)
            {
              goto LABEL_13;
            }
          }

          if (!result)
          {
            goto LABEL_14;
          }

LABEL_13:
          *(v10 + 8) = a3;
          v4 = *(v3 - 24);
        }
      }

LABEL_14:
      ++v9;
      v5 = *(v8 + v4 + 80);
    }

    while (v9 < (*(v8 + v4 + 88) - v5) >> 3);
  }

  return result;
}

uint64_t ClipperLib::Clipper::FixupFirstLefts2(uint64_t result, uint64_t a2, uint64_t a3)
{
  v20 = *(a3 + 8);
  v3 = *result;
  v4 = *(result + *(*result - 24) + 80);
  if (*(result + *(*result - 24) + 88) != v4)
  {
    v7 = result;
    v8 = 0;
    do
    {
      v9 = *(v4 + 8 * v8);
      v10 = *(v9 + 24);
      if (v9 != a2 && v9 != a3 && v10 != 0)
      {
        v13 = *(v9 + 8);
        if (v13)
        {
          v14 = *(v9 + 8);
          do
          {
            if (*(v14 + 24))
            {
              break;
            }

            v14 = *(v14 + 8);
          }

          while (v14);
        }

        else
        {
          v14 = 0;
        }

        if (v14 == a3 || v14 == v20 || v14 == a2)
        {
          v15 = *(a2 + 24);
          v16 = *(v9 + 24);
          while (1)
          {
            result = ClipperLib::PointInPolygon((v16 + 8), v15);
            if ((result & 0x80000000) == 0)
            {
              break;
            }

            v16 = *(v16 + 32);
            if (v16 == v10)
            {
              v17 = a2;
LABEL_29:
              *(v9 + 8) = v17;
              goto LABEL_30;
            }
          }

          v17 = a2;
          if (result)
          {
            goto LABEL_29;
          }

          v18 = *(a3 + 24);
          v19 = v10;
          while (1)
          {
            result = ClipperLib::PointInPolygon((v19 + 8), v18);
            if ((result & 0x80000000) == 0)
            {
              break;
            }

            v19 = *(v19 + 32);
            if (v19 == v10)
            {
              v17 = a3;
              goto LABEL_29;
            }
          }

          v17 = a3;
          if (result)
          {
            goto LABEL_29;
          }

          v17 = v20;
          if (v13 == a2)
          {
            goto LABEL_29;
          }

          v17 = v20;
          if (v13 == a3)
          {
            goto LABEL_29;
          }
        }
      }

LABEL_30:
      ++v8;
      v4 = *(v7 + *(v3 - 24) + 80);
    }

    while (v8 < (*(v7 + *(v3 - 24) + 88) - v4) >> 3);
  }

  return result;
}

uint64_t *ClipperLib::Clipper::FixupFirstLefts3(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = *(*result - 24);
  v5 = *(result + v4 + 80);
  if (*(result + v4 + 88) != v5)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 8 * v6);
      if (*(v7 + 8) == a2 && *(v7 + 24) != 0)
      {
        *(v7 + 8) = a3;
        v4 = *(v3 - 24);
      }

      ++v6;
      v5 = *(result + v4 + 80);
    }

    while (v6 < (*(result + v4 + 88) - v5) >> 3);
  }

  return result;
}

double ClipperLib::GetUnitNormal(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = a1[1];
  v4 = *a2 == *a1 && v2 == v3;
  result = 0.0;
  if (!v4)
  {
    return 1.0 / sqrt((v2 - v3) * (v2 - v3) + (*a2 - *a1) * (*a2 - *a1)) * (v2 - v3);
  }

  return result;
}

double ClipperLib::ClipperOffset::ClipperOffset(ClipperLib::ClipperOffset *this, double a2, double a3)
{
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  __asm { FMOV            V3.2S, #-1.0 }

  *(this + 22) = _D3;
  *(this + 23) = &unk_286711388;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 237) = 0u;
  *this = a2;
  *(this + 1) = a3;
  result = NAN;
  *(this + 10) = xmmword_254C2B450;
  return result;
}

{
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  __asm { FMOV            V3.2S, #-1.0 }

  *(this + 22) = _D3;
  *(this + 23) = &unk_286711388;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 237) = 0u;
  *this = a2;
  *(this + 1) = a3;
  result = NAN;
  *(this + 10) = xmmword_254C2B450;
  return result;
}

void ClipperLib::ClipperOffset::~ClipperOffset(ClipperLib::ClipperOffset *this)
{
  ClipperLib::ClipperOffset::Clear(this);
  ClipperLib::PolyNode::~PolyNode((this + 184));
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  v5 = (this + 16);
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void *ClipperLib::ClipperOffset::Clear(void *this)
{
  v1 = this;
  v2 = this[27];
  v3 = this[28];
  if (((v3 - v2) >> 3) >= 1)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[27];
        v3 = v1[28];
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  v1[28] = v2;
  v1[20] = -1;
  return this;
}

void ClipperLib::ClipperOffset::AddPath(uint64_t a1, void *a2)
{
  if ((-1431655765 * ((a2[1] - *a2) >> 3)) >= 1)
  {
    operator new();
  }
}

void ClipperLib::ClipperOffset::AddPaths(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ClipperLib::ClipperOffset::AddPath(a1, (v2 + v5));
      ++v6;
      v2 = *a2;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }
}

void ClipperLib::ClipperOffset::FixOrientations(ClipperLib::ClipperOffset *this)
{
  v2 = *(this + 20);
  if (v2 < 0)
  {
    v3 = *(this + 27);
  }

  else
  {
    v3 = *(this + 27);
    if (ClipperLib::Area((*(v3 + 8 * v2) + 8)) < 0.0)
    {
      v4 = *(this + 28);
      if (((v4 - v3) >> 3) >= 1)
      {
        v5 = 0;
        do
        {
          v6 = *(v3 + 8 * v5);
          v7 = *(v6 + 76);
          if (!v7 || v7 == 1 && ClipperLib::Area((v6 + 8)) >= 0.0)
          {
            v8 = *(v6 + 8);
            v9 = *(v6 + 16);
            v10 = v9 - 24;
            if (v8 != v9 && v10 > v8)
            {
              v12 = v8 + 24;
              do
              {
                v13 = *(v12 - 8);
                v14 = *(v12 - 24);
                v15 = *(v10 + 16);
                *(v12 - 24) = *v10;
                *(v12 - 8) = v15;
                *v10 = v14;
                *(v10 + 16) = v13;
                v10 -= 24;
                v16 = v12 >= v10;
                v12 += 24;
              }

              while (!v16);
              v3 = *(this + 27);
              v4 = *(this + 28);
            }
          }

          ++v5;
        }

        while (v5 < ((v4 - v3) >> 3));
      }

      return;
    }
  }

  v17 = *(this + 28);
  if (((v17 - v3) >> 3) >= 1)
  {
    v18 = 0;
    do
    {
      v19 = *(v3 + 8 * v18);
      if (*(v19 + 76) == 1 && ClipperLib::Area((v19 + 8)) < 0.0)
      {
        v20 = *(v19 + 8);
        v21 = *(v19 + 16);
        v22 = v21 - 24;
        if (v20 != v21 && v22 > v20)
        {
          v24 = v20 + 24;
          do
          {
            v25 = *(v24 - 8);
            v26 = *(v24 - 24);
            v27 = *(v22 + 16);
            *(v24 - 24) = *v22;
            *(v24 - 8) = v27;
            *v22 = v26;
            *(v22 + 16) = v25;
            v22 -= 24;
            v16 = v24 >= v22;
            v24 += 24;
          }

          while (!v16);
          v3 = *(this + 27);
          v17 = *(this + 28);
        }
      }

      ++v18;
    }

    while (v18 < ((v17 - v3) >> 3));
  }
}

__n128 ClipperLib::ReversePath(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = v2 - 24;
  if (*a1 != v2 && v3 > v1)
  {
    v5 = v1 + 24;
    do
    {
      v6 = *(v5 - 8);
      result = *(v5 - 24);
      v8 = *(v3 + 16);
      *(v5 - 24) = *v3;
      *(v5 - 8) = v8;
      *v3 = result;
      *(v3 + 16) = v6;
      v3 -= 24;
      v9 = v5 >= v3;
      v5 += 24;
    }

    while (!v9);
  }

  return result;
}

void ClipperLib::ClipperOffset::Execute(uint64_t *a1, uint64_t *a2, double a3)
{
  v50 = *MEMORY[0x277D85DE8];
  std::vector<std::vector<ClipperLib::IntPoint>>::clear[abi:ne200100](a2);
  ClipperLib::ClipperOffset::FixOrientations(a1);
  ClipperLib::ClipperOffset::DoOffset(a1, a3);
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v37 = 0u;
  v38 = 0u;
  v25 = &unk_286711450;
  *v26 = 0u;
  *v27 = 0u;
  v28 = 0u;
  *v29 = 0u;
  v30 = 0;
  v31[0] = v31;
  v31[1] = v31;
  v31[2] = 0;
  v32 = 0;
  v39 = 0;
  v33 = 0;
  v34 = 0;
  v43 = 0;
  v35 = 0;
  v36 = &unk_286711498;
  ClipperLib::ClipperBase::AddPaths(&v36, a1 + 2, 0, 1);
  if (a3 <= 0.0)
  {
    v23 = 0u;
    v24 = 0u;
    ClipperLib::ClipperBase::GetBounds((&v26[-1] + *(v25 - 3)), &v23);
    std::vector<ClipperLib::IntPoint>::vector[abi:ne200100](__p, 4uLL);
    v6 = __p[0];
    __asm { FMOV            V0.2S, #-1.0 }

    *(__p[0] + 2) = _D0;
    v12 = v23;
    v13 = vaddq_s64(v24, vdupq_n_s64(0xAuLL));
    *(v6 + 24) = v13;
    *(v6 + 5) = _D0;
    v14 = vaddq_s64(v12, vdupq_n_s64(0xFFFFFFFFFFFFFFF6));
    v12.i64[0] = v14.i64[0];
    v12.i64[1] = v13.i64[1];
    v13.i64[1] = v14.i64[1];
    *(v6 + 3) = v13;
    *(v6 + 8) = _D0;
    *v6 = v12;
    *(v6 + 72) = v14;
    *(v6 + 11) = _D0;
    ClipperLib::ClipperBase::AddPath(&v26[-1] + *(v25 - 3), __p, 0, 1);
    v33 = 1;
    ClipperLib::Clipper::Execute(&v25, 1, a2, 3, 3);
    v15 = *a2;
    v16 = a2[1];
    if (v16 != *a2)
    {
      if (v15 + 24 != v16)
      {
        do
        {
          v17 = v15 + 24;
          std::vector<ClipperLib::IntPoint>::__move_assign(v15, (v15 + 24));
          v18 = v15 + 48;
          v15 += 24;
        }

        while (v18 != v16);
        v16 = a2[1];
        v15 = v17;
      }

      if (v16 != v15)
      {
        v19 = v16;
        do
        {
          v21 = *(v19 - 24);
          v19 -= 24;
          v20 = v21;
          if (v21)
          {
            *(v16 - 16) = v20;
            operator delete(v20);
          }

          v16 = v19;
        }

        while (v19 != v15);
      }

      a2[1] = v15;
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    ClipperLib::Clipper::Execute(&v25, 1, a2, 2, 2);
  }

  v25 = &unk_286711450;
  v36 = &unk_286711498;
  std::__list_imp<long long>::clear(v31);
  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  if (v27[1])
  {
    *&v28 = v27[1];
    operator delete(v27[1]);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  ClipperLib::ClipperBase::~ClipperBase(&v36);
}

uint64_t ClipperLib::ClipperOffset::DoOffset(ClipperLib::ClipperOffset *this, double a2)
{
  std::vector<std::vector<ClipperLib::IntPoint>>::clear[abi:ne200100](this + 2);
  *(this + 14) = a2;
  v3 = fabs(a2);
  if (v3 < 1.0e-20)
  {
    result = std::vector<std::vector<ClipperLib::IntPoint>>::reserve(this + 2, ((*(this + 28) - *(this + 27)) >> 3));
    v6 = *(this + 27);
    v5 = *(this + 28);
    if (((v5 - v6) >> 3) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = *(v6 + 8 * v7);
        if (!*(v8 + 76))
        {
          result = std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](this + 16, (v8 + 8));
          v6 = *(this + 27);
          v5 = *(this + 28);
        }

        ++v7;
      }

      while (v7 < ((v5 - v6) >> 3));
    }

    return result;
  }

  v9 = 0.5;
  if (*this > 2.0)
  {
    v9 = 2.0 / (*this * *this);
  }

  *(this + 18) = v9;
  v10 = *(this + 1);
  v11 = v3 * 0.25;
  if (v10 <= v3 * 0.25)
  {
    v11 = *(this + 1);
  }

  if (v10 <= 0.0)
  {
    v12 = 0.25;
  }

  else
  {
    v12 = v11;
  }

  v13 = 3.14159265 / acos(1.0 - v12 / v3);
  if (v13 <= v3 * 3.14159265)
  {
    v14 = v13;
  }

  else
  {
    v14 = v3 * 3.14159265;
  }

  v15 = __sincos_stret(6.28318531 / v14);
  *(this + 8) = v15;
  *(this + 19) = v14 / 6.28318531;
  if (a2 < 0.0)
  {
    *(this + 16) = -v15.__sinval;
  }

  result = std::vector<std::vector<ClipperLib::IntPoint>>::reserve(this + 2, ((*(this + 28) - *(this + 27)) >> 2) & 0xFFFFFFFFFFFFFFFELL);
  v16 = *(this + 27);
  if (((*(this + 28) - v16) >> 3) >= 1)
  {
    v17 = 0;
    v18 = (this + 40);
    __asm
    {
      FMOV            V12.2S, #-1.0
      FMOV            V0.2D, #0.5
    }

    v83 = _Q0;
    v84 = vdupq_lane_s64(*&a2, 0);
    __asm { FMOV            V0.2D, #-0.5 }

    v82 = _Q0;
    while (1)
    {
      v26 = *(v16 + 8 * v17);
      if (v18 != (v26 + 8))
      {
        result = std::vector<ClipperLib::IntPoint>::__assign_with_size[abi:ne200100]<ClipperLib::IntPoint*,ClipperLib::IntPoint*>(this + 5, *(v26 + 8), *(v26 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(v26 + 16) - *(v26 + 8)) >> 3));
      }

      v27 = (*(this + 6) - *(this + 5)) >> 3;
      v28 = 0xAAAAAAAAAAAAAAABLL * v27;
      if (!(-1431655765 * v27))
      {
        goto LABEL_100;
      }

      if (a2 <= 0.0)
      {
        break;
      }

      *(this + 9) = *(this + 8);
      if (v28 != 1)
      {
        goto LABEL_41;
      }

      if (*(v26 + 72) == 1)
      {
        v29 = a2;
        if (v14 >= 1.0)
        {
          v30 = 0.0;
          v31 = 1.0;
          v32 = 2;
          do
          {
            v33 = *(this + 5);
            v34 = v33[1];
            v35 = *v33 + v31 * v29;
            if (v35 >= 0.0)
            {
              v36 = 0.5;
            }

            else
            {
              v36 = -0.5;
            }

            v37 = (v35 + v36);
            v38 = v34 + v30 * v29;
            if (v38 >= 0.0)
            {
              v39 = 0.5;
            }

            else
            {
              v39 = -0.5;
            }

            v87.i64[0] = v37;
            v87.i64[1] = (v38 + v39);
            v88 = _D12;
            std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v87.i8);
            v41 = *(this + 16);
            v40 = *(this + 17);
            v42 = -(v41 * v30);
            v30 = v30 * v40 + v31 * v41;
            v29 = a2;
            v31 = v42 + v31 * v40;
            v43 = v32++;
          }

          while (v14 >= v43);
        }
      }

      else
      {
        v51 = -1.0;
        v52 = 4;
        v53 = -1.0;
        do
        {
          v54 = (*v18)->i64[0] + v51 * a2;
          if (v54 >= 0.0)
          {
            v55 = 0.5;
          }

          else
          {
            v55 = -0.5;
          }

          v56 = (v54 + v55);
          v57 = (*v18)->i64[1] + v53 * a2;
          if (v57 >= 0.0)
          {
            v58 = 0.5;
          }

          else
          {
            v58 = -0.5;
          }

          v87.i64[0] = v56;
          v87.i64[1] = (v57 + v58);
          v88 = _D12;
          std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v87.i8);
          if (v53 >= 0.0)
          {
            v59 = v53;
          }

          else
          {
            v59 = 1.0;
          }

          if (v53 >= 0.0)
          {
            v60 = -1.0;
          }

          else
          {
            v60 = v51;
          }

          if (v51 < 0.0)
          {
            v51 = 1.0;
          }

          else
          {
            v53 = v59;
            v51 = v60;
          }

          --v52;
        }

        while (v52);
      }

LABEL_99:
      result = std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](this + 16, this + 8);
LABEL_100:
      ++v17;
      v16 = *(this + 27);
      if (v17 >= ((*(this + 28) - v16) >> 3))
      {
        return result;
      }
    }

    if (v28 < 3 || *(v26 + 76))
    {
      goto LABEL_100;
    }

    *(this + 9) = *(this + 8);
LABEL_41:
    *(this + 12) = *(this + 11);
    std::vector<ClipperLib::DoublePoint>::reserve(this + 11, v28);
    v44 = (v28 - 1);
    if (v28 >= 2)
    {
      v45 = 0;
      v46 = (v28 - 1);
      do
      {
        v87.i64[0] = ClipperLib::GetUnitNormal(&(*v18)->i64[v45], &(*v18)[1].i64[v45 + 1]);
        v87.i64[1] = v47;
        std::vector<ClipperLib::DoublePoint>::push_back[abi:ne200100](this + 88, &v87);
        v45 += 3;
        --v46;
      }

      while (v46);
    }

    if (*(v26 + 76) >= 2u)
    {
      v87 = *(*(this + 11) + (((v28 << 32) - 0x200000000) >> 28));
    }

    else
    {
      v87.i64[0] = ClipperLib::GetUnitNormal(&(*v18)->i64[3 * v44], *v18);
      v87.i64[1] = v48;
    }

    std::vector<ClipperLib::DoublePoint>::push_back[abi:ne200100](this + 88, &v87);
    v49 = *(v26 + 76);
    if (v49 == 1)
    {
      v87.i32[0] = v28 - 1;
      if (v28 >= 1)
      {
        v61 = 0;
        do
        {
          ClipperLib::ClipperOffset::OffsetPoint(this, v61++, v87.i32, *(v26 + 72));
        }

        while (v28 != v61);
      }

      std::vector<std::vector<ClipperLib::IntPoint>>::push_back[abi:ne200100](this + 16, this + 8);
      *(this + 9) = *(this + 8);
      v62 = *(this + 11);
      v63 = v62[v44];
      if (v28 > 1)
      {
        v64 = v44 + 1;
        v65 = &v62[v44];
        v66 = v65;
        do
        {
          v67 = v66[-1];
          --v66;
          *v65 = vnegq_f64(v67);
          --v64;
          v65 = v66;
        }

        while (v64 > 1);
      }

      *v62 = vnegq_f64(v63);
      v87.i32[0] = 0;
      if (v28 >= 1)
      {
        do
        {
          ClipperLib::ClipperOffset::OffsetPoint(this, v44, v87.i32, *(v26 + 72));
          LODWORD(v44) = v44 - 1;
        }

        while (v44 != -1);
      }
    }

    else if (v49)
    {
      v86 = 0;
      if (v28 >= 3)
      {
        v68 = 1;
        v69 = v28 - 2;
        do
        {
          ClipperLib::ClipperOffset::OffsetPoint(this, v68++, &v86, *(v26 + 72));
          --v69;
        }

        while (v69);
        v49 = *(v26 + 76);
      }

      v87 = 0uLL;
      v88 = _D12;
      if (v49 == 2)
      {
        v70 = vmlaq_f64(vcvtq_f64_s64(*(*v18 + 24 * v44)), v84, *(*(this + 11) + 16 * v44));
        v87 = vcvtq_s64_f64(vaddq_f64(v70, vbslq_s8(vcltzq_f64(v70), v82, v83)));
        HIDWORD(v88) = -1082130432;
        std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v87.i8);
        v71 = vmlsq_f64(vcvtq_f64_s64(*(*v18 + 24 * v44)), v84, *(*(this + 11) + 16 * v44));
        v87 = vcvtq_s64_f64(vaddq_f64(v71, vbslq_s8(vcltzq_f64(v71), v82, v83)));
        v88 = _D12;
        std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v87.i8);
      }

      else
      {
        v86 = v28 - 2;
        *(this + 15) = 0;
        *(*(this + 11) + 16 * v44) = vnegq_f64(*(*(this + 11) + 16 * v44));
        v72 = v28 - 1;
        v73 = v28 - 2;
        if (v49 == 3)
        {
          ClipperLib::ClipperOffset::DoSquare(this, v72, v73);
        }

        else
        {
          ClipperLib::ClipperOffset::DoRound(this, v72, v73);
        }
      }

      v74 = *(this + 11);
      if (v28 >= 2)
      {
        v75 = v44 + 1;
        v76 = &v74[v44];
        v77 = v76;
        do
        {
          v78 = v77[-1];
          --v77;
          *v76 = vnegq_f64(v78);
          --v75;
          v76 = v77;
        }

        while (v75 > 1);
      }

      *v74 = vnegq_f64(v74[1]);
      v86 = v28 - 1;
      if (v28 > 2)
      {
        do
        {
          LODWORD(v44) = v44 - 1;
          ClipperLib::ClipperOffset::OffsetPoint(this, v44, &v86, *(v26 + 72));
        }

        while (v44 > 1);
      }

      v79 = *(v26 + 76);
      if (v79 == 2)
      {
        v80 = vmlsq_f64(vcvtq_f64_s64(**v18), v84, **(this + 11));
        v87 = vcvtq_s64_f64(vaddq_f64(v80, vbslq_s8(vcltzq_f64(v80), v82, v83)));
        v88 = _D12;
        std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v87.i8);
        v81 = vmlaq_f64(vcvtq_f64_s64(**v18), v84, **(this + 11));
        v87 = vcvtq_s64_f64(vaddq_f64(v81, vbslq_s8(vcltzq_f64(v81), v82, v83)));
        v88 = _D12;
        std::vector<ClipperLib::IntPoint>::push_back[abi:ne200100](this + 64, v87.i8);
      }

      else
      {
        *(this + 15) = 0;
        if (v79 == 3)
        {
          ClipperLib::ClipperOffset::DoSquare(this, 0, 1);
        }

        else
        {
          ClipperLib::ClipperOffset::DoRound(this, 0, 1);
        }
      }
    }

    else
    {
      v87.i32[0] = v28 - 1;
      if (v28 >= 1)
      {
        v50 = 0;
        do
        {
          ClipperLib::ClipperOffset::OffsetPoint(this, v50++, v87.i32, *(v26 + 72));
        }

        while (v28 != v50);
      }
    }

    goto LABEL_99;
  }

  return result;
}

void ClipperLib::ClipperOffset::Execute(ClipperLib::ClipperOffset *this, ClipperLib::PolyTree *a2, double a3)
{
  v49 = *MEMORY[0x277D85DE8];
  ClipperLib::PolyTree::Clear(a2);
  ClipperLib::ClipperOffset::FixOrientations(this);
  ClipperLib::ClipperOffset::DoOffset(this, a3);
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
  *v28 = 0u;
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
  ClipperLib::ClipperBase::AddPaths(&v35, this + 2, 0, 1);
  if (a3 <= 0.0)
  {
    v22 = 0u;
    v23 = 0u;
    ClipperLib::ClipperBase::GetBounds((&v25[-1] + *(v24 - 3)), &v22);
    std::vector<ClipperLib::IntPoint>::vector[abi:ne200100](__p, 4uLL);
    v6 = __p[0];
    __asm { FMOV            V0.2S, #-1.0 }

    *(__p[0] + 2) = _D0;
    v12 = v22;
    v13 = vaddq_s64(v23, vdupq_n_s64(0xAuLL));
    *(v6 + 24) = v13;
    *(v6 + 5) = _D0;
    v14 = vaddq_s64(v12, vdupq_n_s64(0xFFFFFFFFFFFFFFF6));
    v12.i64[0] = v14.i64[0];
    v12.i64[1] = v13.i64[1];
    v13.i64[1] = v14.i64[1];
    *(v6 + 3) = v13;
    *(v6 + 8) = _D0;
    *v6 = v12;
    *(v6 + 72) = v14;
    *(v6 + 11) = _D0;
    ClipperLib::ClipperBase::AddPath(&v25[-1] + *(v24 - 3), __p, 0, 1);
    v32 = 1;
    ClipperLib::Clipper::Execute(&v24, 1, a2, 3, 3);
    v15 = *(a2 + 4);
    v16 = a2 + 32;
    if (((*(a2 + 5) - v15) & 0x7FFFFFFF8) == 8 && (v17 = *v15, v18 = *(*v15 + 40) - *(*v15 + 32), (v18 >> 3) >= 1))
    {
      std::vector<ClipperLib::PolyNode *>::reserve(a2 + 4, (v18 >> 3) & 0x7FFFFFFF);
      **v16 = **(v17 + 32);
      *(**v16 + 56) = *(v17 + 56);
      v19 = *(v17 + 32);
      if (((*(v17 + 40) - v19) >> 3) >= 2)
      {
        v20 = 1;
        do
        {
          ClipperLib::PolyNode::AddChild(a2, *(v19 + 8 * v20++));
          v19 = *(v17 + 32);
        }

        while (v20 < ((*(v17 + 40) - v19) >> 3));
      }
    }

    else
    {
      ClipperLib::PolyTree::Clear(a2);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    ClipperLib::Clipper::Execute(&v24, 1, a2, 2, 2);
  }

  v24 = &unk_286711450;
  v35 = &unk_286711498;
  std::__list_imp<long long>::clear(v30);
  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
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