double HW_CGSizeFromIntegralData(void *a1)
{
  v1 = a1;
  if ([v1 length] == 4)
  {
    v2 = [v1 bytes];
    v3 = 0.0;
    if (v2)
    {
      v3 = (*v2 ^ 0x8000);
    }
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

id HW_DataFromIntegralCGSize(double a1, double a2)
{
  v2 = a1;
  v3 = (roundf(v2) + 32768.0);
  v4 = a2;
  v7[0] = v3;
  v7[1] = (roundf(v4) + 32768.0);
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:v7 length:4];

  return v5;
}

double HW_CGRectFromIntegralData(void *a1)
{
  v1 = a1;
  if ([v1 length] == 8)
  {
    v2 = [v1 bytes];
    v3 = 0.0;
    if (v2)
    {
      v3 = (*v2 ^ 0x8000);
    }
  }

  else
  {
    v3 = 0.0;
  }

  return v3;
}

id HW_DataFromIntegralCGRect(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  v7[1] = *MEMORY[0x277D85DE8];
  a3.f64[1] = a4;
  a1.f64[1] = a2;
  v4.i64[0] = 0x4700000047000000;
  v4.i64[1] = 0x4700000047000000;
  v7[0] = vmovn_s32(vcvtq_u32_f32(vaddq_f32(vrndaq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(a1), a3)), v4)));
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:v7 length:8];

  return v5;
}

double ClampToMinWidthCG(double result, double a2)
{
  if (result < a2)
  {
    return a2;
  }

  return result;
}

void sub_249D8B390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = DKInkView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_249D8BCB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_249D8D7C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);

  _Unwind_Resume(a1);
}

void sub_249D8E5AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);

  _Unwind_Resume(a1);
}

uint64_t CGRectIsUnrepresentable(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (CGRectIsNull(*&a1) || (v11.origin.x = a1, v11.origin.y = a2, v11.size.width = a3, v11.size.height = a4, CGRectIsEmpty(v11)))
  {
    v8 = 1;
  }

  else
  {
    v12.origin.x = a1;
    v12.origin.y = a2;
    v12.size.width = a3;
    v12.size.height = a4;
    IsInfinite = CGRectIsInfinite(v12);
    v8 = fabs(a1) == INFINITY || IsInfinite;
    if (fabs(a2) == INFINITY)
    {
      v8 = 1;
    }

    if (fabs(a3) == INFINITY)
    {
      v8 = 1;
    }

    if (fabs(a4) == INFINITY)
    {
      v8 = 1;
    }
  }

  return v8 & 1;
}

BOOL CGPointIsUnrepresentable(double a1, double a2)
{
  v2 = fabs(a1) == INFINITY;
  if (fabs(a2) == INFINITY)
  {
    return 1;
  }

  return v2;
}

BOOL DKIsDarkMode()
{
  v0 = [MEMORY[0x277D75C80] currentTraitCollection];
  v1 = [v0 userInterfaceStyle] == 2;

  return v1;
}

void sub_249D90860(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_249D90C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = DKInkRendererGL;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

BOOL DKDrawingIsValid(void *a1)
{
  v1 = a1;
  v2 = v1;
  v11 = 0;
  if (v1)
  {
    [v1 canvasBounds];
    v4 = *MEMORY[0x277CBF3A8];
    v5 = *(MEMORY[0x277CBF3A8] + 8);
    if (v6 != *MEMORY[0x277CBF3A8] || v3 != v5)
    {
      [v2 strokesFrame];
      if (v9 != v4 || v8 != v5)
      {
        v11 = 1;
      }
    }
  }

  return v11;
}

void sub_249D92EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = DKOpenGLRenderer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void std::vector<Page>::resize(void *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<Page>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 40 * a2;
  }
}

void std::vector<VertexGroup>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<Page>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<VertexGroup>>(a1, v10);
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

void std::vector<Vertex>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<Vertex>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_249D94A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_249D94B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_249D951A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_249D9579C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_249D95D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_249D95F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Page>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 40 * ((40 * a2 - 40) / 0x28) + 40;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      std::vector<Page>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Page>>(a1, v9);
    }

    v11 = 40 * v6;
    v12 = 40 * ((40 * a2 - 40) / 0x28) + 40;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278FB76A8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Page>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<VertexGroup>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<Vertex>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<Page>::__throw_length_error[abi:ne200100]();
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

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Vertex>>(a1, v9);
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
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Vertex>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<Vertex>::__init_with_size[abi:ne200100]<std::__wrap_iter<Vertex*>,std::__wrap_iter<Vertex*>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Vertex>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_249D96648(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Vertex>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Vertex>>(a1, a2);
  }

  std::vector<Page>::__throw_length_error[abi:ne200100]();
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<Vertex>::__init_with_size[abi:ne200100]<Vertex*,Vertex*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Vertex>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_249D96758(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HWPDrawingReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v52 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v52 & 0x7F) << v5;
        if ((v52 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v7 = 0;
          goto LABEL_14;
        }
      }

      if ([a2 hasError])
      {
        v7 = 0;
      }

LABEL_14:
      if (([a2 hasError] & 1) != 0 || (v7 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v7 >> 3;
      if (v12 > 4)
      {
        if (v12 <= 6)
        {
          if (v12 == 5)
          {
            v34 = 0;
            v35 = 0;
            v36 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              v57 = 0;
              v37 = [a2 position] + 1;
              if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
              {
                v39 = [a2 data];
                [v39 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v36 |= (v57 & 0x7F) << v34;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              v11 = v35++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_85;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v36;
            }

LABEL_85:
            v50 = 16;
          }

          else
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 64) |= 2u;
            while (1)
            {
              v54 = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v54 & 0x7F) << v15;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_93;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_93:
            v50 = 20;
          }

          goto LABEL_98;
        }

        if (v12 == 7)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 64) |= 4u;
          while (1)
          {
            v53 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v53 & 0x7F) << v41;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_89;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v43;
          }

LABEL_89:
          v50 = 40;
          goto LABEL_98;
        }

        if (v12 == 8)
        {
          v13 = PBReaderReadData();
          v14 = 48;
          goto LABEL_64;
        }
      }

      else
      {
        if (v12 > 2)
        {
          if (v12 != 3)
          {
            v22 = 0;
            v23 = 0;
            v24 = 0;
            *(a1 + 64) |= 8u;
            while (1)
            {
              v55 = 0;
              v25 = [a2 position] + 1;
              if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
              {
                v27 = [a2 data];
                [v27 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v24 |= (v55 & 0x7F) << v22;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v11 = v23++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_97;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v24;
            }

LABEL_97:
            v50 = 56;
            goto LABEL_98;
          }

          v13 = PBReaderReadData();
          v14 = 32;
          goto LABEL_64;
        }

        if (v12 == 1)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          *(a1 + 64) |= 0x10u;
          while (1)
          {
            v56 = 0;
            v31 = [a2 position] + 1;
            if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v30 |= (v56 & 0x7F) << v28;
            if ((v56 & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v11 = v29++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_81;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v30;
          }

LABEL_81:
          v50 = 60;
LABEL_98:
          *(a1 + v50) = v21;
          goto LABEL_99;
        }

        if (v12 == 2)
        {
          v13 = PBReaderReadData();
          v14 = 24;
LABEL_64:
          v40 = *(a1 + v14);
          *(a1 + v14) = v13;

          goto LABEL_99;
        }
      }

      if (!*(a1 + 8))
      {
        v47 = objc_alloc_init(MEMORY[0x277D431A0]);
        v48 = *(a1 + 8);
        *(a1 + 8) = v47;
      }

      result = PBUnknownFieldAdd();
      if (!result)
      {
        return result;
      }

LABEL_99:
      v51 = [a2 position];
    }

    while (v51 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HWPMessageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v31 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v7 = 0;
          goto LABEL_14;
        }
      }

      if ([a2 hasError])
      {
        v7 = 0;
      }

LABEL_14:
      if (([a2 hasError] & 1) != 0 || (v7 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v7 >> 3;
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v15 = PBReaderReadString();
          v16 = 32;
          goto LABEL_39;
        }

        if (v12 == 4)
        {
          v15 = PBReaderReadData();
          v16 = 24;
LABEL_39:
          v27 = *(a1 + v16);
          *(a1 + v16) = v15;

          goto LABEL_46;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *(a1 + 44) |= 2u;
          while (1)
          {
            v32 = 0;
            v23 = [a2 position] + 1;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 1, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v22 |= (v32 & 0x7F) << v20;
            if ((v32 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v11 = v21++ >= 9;
            if (v11)
            {
              v26 = 0;
              goto LABEL_43;
            }
          }

          if ([a2 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v22;
          }

LABEL_43:
          *(a1 + 40) = v26;
          goto LABEL_46;
        }

        if (v12 == 2)
        {
          *(a1 + 44) |= 1u;
          v30 = 0;
          v13 = [a2 position] + 8;
          if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v30 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 16) = v30;
          goto LABEL_46;
        }
      }

      if (!*(a1 + 8))
      {
        v17 = objc_alloc_init(MEMORY[0x277D431A0]);
        v18 = *(a1 + 8);
        *(a1 + 8) = v17;
      }

      result = PBUnknownFieldAdd();
      if (!result)
      {
        return result;
      }

LABEL_46:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
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

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
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

NSRect NSIntegralRectWithOptions(NSRect aRect, NSAlignmentOptions opts)
{
  MEMORY[0x28211F7B0](opts, aRect.origin, *&aRect.origin.y, aRect.size, *&aRect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}