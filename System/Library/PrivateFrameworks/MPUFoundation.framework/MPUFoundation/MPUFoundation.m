id MPULocalizedString(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 mediaPlayerUIBundle];
  v4 = [v3 localizedStringForKey:v2 value:&stru_2868E4110 table:@"MediaPlayerUI"];

  return v4;
}

id _MPUHTMLStringFromXMLString(uint64_t a1, int a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v4 = v3;
  if (a2)
  {
    v5 = [v3 lowercaseString];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

id _MPUHTMLDefaultDelegateFontByAddingTraits(void *a1, int a2, double a3)
{
  v5 = a1;
  v6 = [v5 fontDescriptorWithSymbolicTraits:{objc_msgSend(v5, "symbolicTraits") | a2}];

  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:a3];

  return v7;
}

id MPUHTMLEscapedLyricsML(void *a1)
{
  v1 = MEMORY[0x277CBEB98];
  v2 = a1;
  v3 = [v1 setWithObjects:{@"b", @"strong", @"i", @"em", @"br", 0}];
  v4 = _MPUHTMLEscapedLyricsML(v2, v3, &__block_literal_global);

  return v4;
}

id _MPUHTMLEscapedLyricsML(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v22 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CCA900] newlineCharacterSet];
  v18 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v21 = [v18 mutableCopy];
  [v21 addCharactersInString:@">"];
  v19 = v7;
  v20 = [v7 mutableCopy];
  [v20 addCharactersInString:@">"];
  v8 = [MEMORY[0x277CCAC80] scannerWithString:v5];
  [v8 setCharactersToBeSkipped:0];
  v9 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if (([v8 isAtEnd] & 1) == 0)
  {
    do
    {
      v24 = 0;
      [v8 scanUpToString:@"<" intoString:&v24];
      v10 = v24;
      if (v10)
      {
        v11 = v6[2](v6, v10);
        [v9 appendString:v11];
      }

      v12 = [v8 scanLocation];
      v13 = 0;
      if ([v8 scanString:@"<" intoString:0] && (v14 = objc_msgSend(v8, "scanString:intoString:", @"/", 0), v23 = 0, objc_msgSend(v8, "scanUpToCharactersFromSet:intoString:", v21, &v23), v13 = v23, objc_msgSend(v22, "containsObject:", v13)) && (objc_msgSend(v8, "scanUpToCharactersFromSet:intoString:", v20, 0), objc_msgSend(v8, "scanString:intoString:", @">", 0)))
      {
        [v9 appendString:@"<"];
        if (v14)
        {
          [v9 appendString:@"/"];
        }

        [v9 appendString:v13];
        [v9 appendString:@">"];
      }

      else
      {
        v15 = [v5 substringWithRange:{v12, objc_msgSend(v8, "scanLocation") - v12}];
        v16 = _MPUHTMLEscapedLyricsMLEntities(v15);
        [v9 appendString:v16];
      }
    }

    while (![v8 isAtEnd]);
  }

  return v9;
}

id _MPUHTMLEscapedLyricsMLEntities(void *a1)
{
  v1 = [a1 mutableCopy];
  [v1 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@">" withString:@"&gt;" options:0 range:{0, objc_msgSend(v1, "length")}];

  return v1;
}

id MPUHTMLEscapedDescriptionML(void *a1)
{
  v1 = MEMORY[0x277CBEB98];
  v2 = a1;
  v3 = [v1 setWithObjects:{@"b", @"strong", @"i", @"em", @"br", 0}];
  v4 = _MPUHTMLEscapedLyricsML(v2, v3, &__block_literal_global_196);

  return v4;
}

id __MPUHTMLEscapedDescriptionML_block_invoke(uint64_t a1, void *a2)
{
  v2 = _MPUHTMLEscapedLyricsMLEntities(a2);
  v3 = [v2 mutableCopy];

  [v3 replaceOccurrencesOfString:@"\n" withString:@"<br>" options:0 range:{0, objc_msgSend(v3, "length")}];

  return v3;
}

void sub_257972BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<MPU::LayoutInterpolator::EntriesContainer>::insert(__n128 *a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v6 = a1->n128_u64[1];
  v7 = a1[1].n128_u64[0];
  if (v6 >= v7)
  {
    v11 = a1->n128_u64[0];
    v12 = ((v6 - a1->n128_u64[0]) >> 5) + 1;
    if (v12 >> 59)
    {
      std::vector<MPU::LayoutInterpolator::Entry>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = v7 - v11;
    v15 = v14 >> 4;
    if (v14 >> 4 <= v12)
    {
      v15 = ((v6 - a1->n128_u64[0]) >> 5) + 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v16 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v15;
    }

    v17 = v13 >> 5;
    v19[4] = a1;
    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MPU::LayoutInterpolator::EntriesContainer>>(a1, v16);
    }

    v19[0] = 0;
    v19[1] = (32 * v17);
    v19[2] = (32 * v17);
    v19[3] = 0;
    std::__split_buffer<MPU::LayoutInterpolator::EntriesContainer>::emplace_back<MPU::LayoutInterpolator::EntriesContainer const&>(v19, a3);
    v4 = std::vector<MPU::LayoutInterpolator::EntriesContainer>::__swap_out_circular_buffer(a1, v19, v4);
    std::__split_buffer<MPU::LayoutInterpolator::EntriesContainer>::~__split_buffer(v19);
  }

  else if (a2 == v6)
  {
    std::vector<MPU::LayoutInterpolator::EntriesContainer>::__construct_one_at_end[abi:ne200100]<MPU::LayoutInterpolator::EntriesContainer const&>(a1, a3);
  }

  else
  {
    std::vector<MPU::LayoutInterpolator::EntriesContainer>::__move_range(a1, a2, v6, a2 + 32);
    v8 = a1->n128_u64[1] <= a3 || v4 > a3;
    v9 = 32;
    if (v8)
    {
      v9 = 0;
    }

    v10 = a3 + v9;
    if (v4 != (a3 + v9))
    {
      std::vector<MPU::LayoutInterpolator::Entry>::__assign_with_size[abi:ne200100]<MPU::LayoutInterpolator::Entry*,MPU::LayoutInterpolator::Entry*>(v4, *v10, *(v10 + 8), (*(v10 + 8) - *v10) >> 4);
    }

    v4[3] = *(v10 + 24);
  }

  return v4;
}

void sub_257972D60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<MPU::LayoutInterpolator::EntriesContainer>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_257973054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double MPULayoutInterpolatorScaledValueFromTraitEnvironment(void *a1, void *a2, double a3)
{
  v5 = a2;
  [a1 valueForReferenceMetric:a3];
  v7 = v6;
  v8 = [v5 traitCollection];
  [v8 displayScale];
  v10 = v9;

  v11 = MPUFloatRoundForScale(v7, v10);
  return v11;
}

void sub_257973518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_257973718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

__n128 *std::vector<MPU::Point3D>::insert(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<MPU::LayoutInterpolator::Entry>::__throw_length_error[abi:ne200100]();
    }

    v13 = __src - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 3);
    v15 = 2 * v14;
    if (2 * v14 <= v12)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v14 >= 0x555555555555555)
    {
      v16 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v15;
    }

    v33 = a1;
    if (v16)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MPU::Point3D>>(a1, v16);
    }

    v30 = 0;
    v31 = 8 * (v13 >> 3);
    v32 = v31;
    std::__split_buffer<MPU::Point3D>::emplace_back<MPU::Point3D const&>(&v30, a3);
    v18 = v31;
    memcpy(v32, v4, a1[1] - v4);
    v19 = *a1;
    v20 = v31;
    *&v32 = v32 + a1[1] - v4;
    a1[1] = v4;
    v21 = v4 - v19;
    v22 = (v20 - (v4 - v19));
    memcpy(v22, v19, v21);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    *(a1 + 1) = v32;
    *&v32 = v23;
    *(&v32 + 1) = v24;
    v30 = v23;
    v31 = v23;
    if (v23)
    {
      operator delete(v23);
    }

    return v18;
  }

  else if (__src == v6)
  {
    v17 = *a3;
    v6[1].n128_u64[0] = a3[1].n128_u64[0];
    *v6 = v17;
    a1[1] = v6 + 24;
  }

  else
  {
    v8 = (__src + 24);
    if (v6 < 0x18)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = &v6[1].n128_i8[8];
      v10 = *(v6 - 24);
      v6[1].n128_u64[0] = v6[-1].n128_u64[1];
      *v6 = v10;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1].n128_i8[8], __src, v6 - v8);
      v9 = a1[1];
    }

    v25 = v9 <= a3 || v4 > a3;
    v26 = 24;
    if (v25)
    {
      v26 = 0;
    }

    v27 = a3 + v26;
    v28 = *v27;
    v4[1].n128_u64[0] = *(v27 + 2);
    *v4 = v28;
  }

  return v4;
}

void sub_257973928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27984C338, MEMORY[0x277D825F0]);
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

void std::vector<MPU::LayoutInterpolator::EntriesContainer>::__assign_with_size[abi:ne200100]<MPU::LayoutInterpolator::EntriesContainer*,MPU::LayoutInterpolator::EntriesContainer*>(uint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<MPU::LayoutInterpolator::EntriesContainer>::__vdeallocate(a1);
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

      std::vector<MPU::LayoutInterpolator::EntriesContainer>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<MPU::LayoutInterpolator::Entry>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 5)
  {
    std::__copy_impl::operator()[abi:ne200100]<MPU::LayoutInterpolator::EntriesContainer *,MPU::LayoutInterpolator::EntriesContainer *,MPU::LayoutInterpolator::EntriesContainer *>(&v20, a2, a3, v8);
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
    std::__copy_impl::operator()[abi:ne200100]<MPU::LayoutInterpolator::EntriesContainer *,MPU::LayoutInterpolator::EntriesContainer *,MPU::LayoutInterpolator::EntriesContainer *>(&v19, a2, a2 + v12, v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MPU::LayoutInterpolator::EntriesContainer>,MPU::LayoutInterpolator::EntriesContainer*,MPU::LayoutInterpolator::EntriesContainer*,MPU::LayoutInterpolator::EntriesContainer*>(a1, (a2 + v12), a3, a1[1]);
  }
}

void std::vector<MPU::LayoutInterpolator::EntriesContainer>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<MPU::LayoutInterpolator::EntriesContainer>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<MPU::LayoutInterpolator::EntriesContainer>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MPU::LayoutInterpolator::EntriesContainer>>(a1, a2);
  }

  std::vector<MPU::LayoutInterpolator::Entry>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MPU::LayoutInterpolator::EntriesContainer>,MPU::LayoutInterpolator::EntriesContainer*,MPU::LayoutInterpolator::EntriesContainer*,MPU::LayoutInterpolator::EntriesContainer*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      std::vector<MPU::LayoutInterpolator::Entry>::__init_with_size[abi:ne200100]<MPU::LayoutInterpolator::Entry*,MPU::LayoutInterpolator::Entry*>(v4, *v6, v6[1], (v6[1] - *v6) >> 4);
      v4[3] = v6[3];
      v6 += 4;
      v4 = v11 + 4;
      v11 += 4;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MPU::LayoutInterpolator::EntriesContainer>,MPU::LayoutInterpolator::EntriesContainer*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<MPU::LayoutInterpolator::Entry>::__init_with_size[abi:ne200100]<MPU::LayoutInterpolator::Entry*,MPU::LayoutInterpolator::Entry*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MPU::LayoutInterpolator::Entry>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_257973DD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MPU::LayoutInterpolator::Entry>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MPU::LayoutInterpolator::Entry>>(a1, a2);
  }

  std::vector<MPU::LayoutInterpolator::Entry>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MPU::LayoutInterpolator::Entry>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MPU::LayoutInterpolator::EntriesContainer>,MPU::LayoutInterpolator::EntriesContainer*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<MPU::LayoutInterpolator::EntriesContainer>,MPU::LayoutInterpolator::EntriesContainer*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<MPU::LayoutInterpolator::EntriesContainer>,MPU::LayoutInterpolator::EntriesContainer*>::operator()[abi:ne200100](uint64_t a1)
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

uint64_t std::__copy_impl::operator()[abi:ne200100]<MPU::LayoutInterpolator::EntriesContainer *,MPU::LayoutInterpolator::EntriesContainer *,MPU::LayoutInterpolator::EntriesContainer *>(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<MPU::LayoutInterpolator::Entry>::__assign_with_size[abi:ne200100]<MPU::LayoutInterpolator::Entry*,MPU::LayoutInterpolator::Entry*>(a4, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 4);
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

void *std::vector<MPU::LayoutInterpolator::Entry>::__assign_with_size[abi:ne200100]<MPU::LayoutInterpolator::Entry*,MPU::LayoutInterpolator::Entry*>(void *result, char *__src, char *a3, unint64_t a4)
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

      std::vector<MPU::LayoutInterpolator::Entry>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<MPU::LayoutInterpolator::Entry>::__throw_length_error[abi:ne200100]();
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

void std::vector<MPU::LayoutInterpolator::EntriesContainer>::clear[abi:ne200100](uint64_t *a1)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<MPU::LayoutInterpolator::EntriesContainer>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

double std::vector<MPU::LayoutInterpolator::EntriesContainer>::__construct_one_at_end[abi:ne200100]<MPU::LayoutInterpolator::EntriesContainer const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  std::vector<MPU::LayoutInterpolator::Entry>::__init_with_size[abi:ne200100]<MPU::LayoutInterpolator::Entry*,MPU::LayoutInterpolator::Entry*>(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
  result = *(a2 + 24);
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 32;
  return result;
}

double std::vector<MPU::LayoutInterpolator::EntriesContainer>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = a2 + v4 - a4;
    v7 = *(a1 + 8);
    do
    {
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = *v6;
      *(v7 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      result = *(v6 + 24);
      *(v7 + 24) = result;
      v6 += 32;
      v7 += 32;
    }

    while (v6 < a3);
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v9 = 0;
    v10 = a4 - v4;
    do
    {
      std::vector<MPU::LayoutInterpolator::Entry>::__move_assign(v4 + v9 - 32, (v5 + v9 - 32));
      result = *(v5 + v9 - 8);
      *(v4 + v9 - 8) = result;
      v9 -= 32;
    }

    while (v10 != v9);
  }

  return result;
}

double std::__split_buffer<MPU::LayoutInterpolator::EntriesContainer>::emplace_back<MPU::LayoutInterpolator::EntriesContainer const&>(__n128 **a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v4 - *a1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<MPU::LayoutInterpolator::EntriesContainer>>(a1[4], v9);
    }

    v8 = ((v7 >> 5) + 1) / -2;
    v5 = &v6[-2 * (((v7 >> 5) + 1) / 2)];
    if (v6 != v4)
    {
      do
      {
        std::vector<MPU::LayoutInterpolator::Entry>::__move_assign(v5, v6);
        v5[1].n128_u64[1] = v6[1].n128_u64[1];
        v6 += 2;
        v5 += 2;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = &v6[2 * v8];
    a1[2] = v5;
  }

  v5->n128_u64[0] = 0;
  v5->n128_u64[1] = 0;
  v5[1].n128_u64[0] = 0;
  std::vector<MPU::LayoutInterpolator::Entry>::__init_with_size[abi:ne200100]<MPU::LayoutInterpolator::Entry*,MPU::LayoutInterpolator::Entry*>(v5, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
  result = *(a2 + 24);
  v5[1].n128_f64[1] = result;
  a1[2] += 2;
  return result;
}

uint64_t std::vector<MPU::LayoutInterpolator::EntriesContainer>::__swap_out_circular_buffer(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MPU::LayoutInterpolator::EntriesContainer>,MPU::LayoutInterpolator::EntriesContainer*>(a1, a3, a1[1], *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MPU::LayoutInterpolator::EntriesContainer>,MPU::LayoutInterpolator::EntriesContainer*>(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = a1[1];
  a1[1] = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = a1[2];
  a1[2] = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

__n128 std::vector<MPU::LayoutInterpolator::Entry>::__move_assign(uint64_t a1, __n128 *a2)
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

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MPU::LayoutInterpolator::EntriesContainer>,MPU::LayoutInterpolator::EntriesContainer*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
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
      a4[3] = *(v6 + 24);
      v6 += 32;
      a4 += 4;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MPU::LayoutInterpolator::EntriesContainer>,MPU::LayoutInterpolator::EntriesContainer*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__split_buffer<MPU::LayoutInterpolator::EntriesContainer>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<MPU::LayoutInterpolator::EntriesContainer>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<MPU::LayoutInterpolator::EntriesContainer>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 32);
    *(a1 + 16) = v2 - 32;
    if (v5)
    {
      *(v2 - 24) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 32;
    }
  }
}

__n128 std::__split_buffer<MPU::Point3D>::emplace_back<MPU::Point3D const&>(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<MPU::Point3D>>(a1[4], v10);
    }

    v7 = (0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / -2;
    v8 = v5 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / 2);
    v9 = v4 - v5;
    if (v4 != v5)
    {
      memmove(v5 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 3) + 1) / 2), v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = (v5 + 24 * v7);
    a1[2] = &v8[v9];
  }

  result = *a2;
  v4[1].n128_u64[0] = a2[1].n128_u64[0];
  *v4 = result;
  a1[2] = (a1[2] + 24);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MPU::Point3D>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__int128 *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[MPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_4 &,MPU::Point3D *,0>(__int128 *result, double *a2, double *a3, double *a4)
{
  v4 = a4[1];
  v5 = (v4 - a2[1]) * (v4 - a2[1]) + (*a4 - *a2) * (*a4 - *a2);
  v6 = (v4 - a3[1]) * (v4 - a3[1]) + (*a4 - *a3) * (*a4 - *a3);
  if (v5 >= (v4 - *(result + 1)) * (v4 - *(result + 1)) + (*a4 - *result) * (*a4 - *result))
  {
    if (v6 < v5)
    {
      v10 = *(a2 + 2);
      v11 = *a2;
      v12 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v12;
      *a3 = v11;
      *(a3 + 2) = v10;
      v13 = a4[1];
      if ((v13 - a2[1]) * (v13 - a2[1]) + (*a4 - *a2) * (*a4 - *a2) < (v13 - *(result + 1)) * (v13 - *(result + 1)) + (*a4 - *result) * (*a4 - *result))
      {
        v14 = *(result + 2);
        v15 = *result;
        v16 = *(a2 + 2);
        *result = *a2;
        *(result + 2) = v16;
        *a2 = v15;
        *(a2 + 2) = v14;
      }
    }
  }

  else
  {
    if (v6 >= v5)
    {
      v17 = *(result + 2);
      v18 = *result;
      v19 = *(a2 + 2);
      *result = *a2;
      *(result + 2) = v19;
      *a2 = v18;
      *(a2 + 2) = v17;
      v20 = a4[1];
      if ((v20 - a3[1]) * (v20 - a3[1]) + (*a4 - *a3) * (*a4 - *a3) >= (v20 - a2[1]) * (v20 - a2[1]) + (*a4 - *a2) * (*a4 - *a2))
      {
        return result;
      }

      v7 = *(a2 + 2);
      v8 = *a2;
      v21 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v21;
    }

    else
    {
      v7 = *(result + 2);
      v8 = *result;
      v9 = *(a3 + 2);
      *result = *a3;
      *(result + 2) = v9;
    }

    *a3 = v8;
    *(a3 + 2) = v7;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[MPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_4 &,MPU::Point3D *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[MPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_4 &,MPU::Point3D *,0>(a1, a2, a3, a6);
  result.n128_f64[0] = *a6;
  v13 = a6[1];
  if ((v13 - *(a4 + 8)) * (v13 - *(a4 + 8)) + (*a6 - *a4) * (*a6 - *a4) < (v13 - *(a3 + 8)) * (v13 - *(a3 + 8)) + (*a6 - *a3) * (*a6 - *a3))
  {
    v14 = *(a3 + 16);
    result = *a3;
    v15 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v15;
    *a4 = result;
    *(a4 + 16) = v14;
    result.n128_f64[0] = *a6;
    v13 = a6[1];
    if ((v13 - *(a3 + 8)) * (v13 - *(a3 + 8)) + (*a6 - *a3) * (*a6 - *a3) < (v13 - *(a2 + 8)) * (v13 - *(a2 + 8)) + (*a6 - *a2) * (*a6 - *a2))
    {
      v16 = *(a2 + 16);
      result = *a2;
      v17 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v17;
      *a3 = result;
      *(a3 + 16) = v16;
      result.n128_f64[0] = *a6;
      v13 = a6[1];
      if ((v13 - *(a2 + 8)) * (v13 - *(a2 + 8)) + (*a6 - *a2) * (*a6 - *a2) < (v13 - *(a1 + 8)) * (v13 - *(a1 + 8)) + (*a6 - *a1) * (*a6 - *a1))
      {
        v18 = *(a1 + 16);
        result = *a1;
        v19 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v19;
        *a2 = result;
        *(a2 + 16) = v18;
        result.n128_f64[0] = *a6;
        v13 = a6[1];
      }
    }
  }

  v20 = (v13 - *(a5 + 8)) * (v13 - *(a5 + 8)) + (result.n128_f64[0] - *a5) * (result.n128_f64[0] - *a5);
  result.n128_f64[0] = (v13 - *(a4 + 8)) * (v13 - *(a4 + 8)) + (result.n128_f64[0] - *a4) * (result.n128_f64[0] - *a4);
  if (v20 < result.n128_f64[0])
  {
    v21 = *(a4 + 16);
    result = *a4;
    v22 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v22;
    *a5 = result;
    *(a5 + 16) = v21;
    v23 = a6[1];
    result.n128_f64[0] = (v23 - *(a4 + 8)) * (v23 - *(a4 + 8)) + (*a6 - *a4) * (*a6 - *a4);
    if (result.n128_f64[0] < (v23 - *(a3 + 8)) * (v23 - *(a3 + 8)) + (*a6 - *a3) * (*a6 - *a3))
    {
      v24 = *(a3 + 16);
      result = *a3;
      v25 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v25;
      *a4 = result;
      *(a4 + 16) = v24;
      v26 = a6[1];
      result.n128_f64[0] = (v26 - *(a3 + 8)) * (v26 - *(a3 + 8)) + (*a6 - *a3) * (*a6 - *a3);
      if (result.n128_f64[0] < (v26 - *(a2 + 8)) * (v26 - *(a2 + 8)) + (*a6 - *a2) * (*a6 - *a2))
      {
        v27 = *(a2 + 16);
        result = *a2;
        v28 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v28;
        *a3 = result;
        *(a3 + 16) = v27;
        v29 = a6[1];
        result.n128_f64[0] = (v29 - *(a2 + 8)) * (v29 - *(a2 + 8)) + (*a6 - *a2) * (*a6 - *a2);
        if (result.n128_f64[0] < (v29 - *(a1 + 8)) * (v29 - *(a1 + 8)) + (*a6 - *a1) * (*a6 - *a1))
        {
          v30 = *(a1 + 16);
          result = *a1;
          v31 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v31;
          *a2 = result;
          *(a2 + 16) = v30;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[MPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_4 &,MPU::Point3D *>(uint64_t a1, uint64_t a2, double *a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[MPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_4 &,MPU::Point3D *,0>(a1, (a1 + 24), (a2 - 24), a3);
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[MPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_4 &,MPU::Point3D *,0>(a1, (a1 + 24), (a1 + 48), a3);
        v24 = *(a2 - 24);
        v25 = *(a2 - 16);
        v23 = a2 - 24;
        v26 = a3[1];
        if ((v26 - v25) * (v26 - v25) + (*a3 - v24) * (*a3 - v24) < (v26 - *(a1 + 56)) * (v26 - *(a1 + 56)) + (*a3 - *(a1 + 48)) * (*a3 - *(a1 + 48)))
        {
          v27 = *(a1 + 64);
          v28 = *(a1 + 48);
          v29 = *(v23 + 16);
          *(a1 + 48) = *v23;
          *(a1 + 64) = v29;
          *v23 = v28;
          *(v23 + 16) = v27;
          v30 = a3[1];
          if ((v30 - *(a1 + 56)) * (v30 - *(a1 + 56)) + (*a3 - *(a1 + 48)) * (*a3 - *(a1 + 48)) < (v30 - *(a1 + 32)) * (v30 - *(a1 + 32)) + (*a3 - *(a1 + 24)) * (*a3 - *(a1 + 24)))
          {
            v31 = *(a1 + 40);
            v32 = *(a1 + 24);
            *(a1 + 24) = *(a1 + 48);
            *(a1 + 40) = *(a1 + 64);
            *(a1 + 48) = v32;
            *(a1 + 64) = v31;
            v33 = a3[1];
            if ((v33 - *(a1 + 32)) * (v33 - *(a1 + 32)) + (*a3 - *(a1 + 24)) * (*a3 - *(a1 + 24)) < (v33 - *(a1 + 8)) * (v33 - *(a1 + 8)) + (*a3 - *a1) * (*a3 - *a1))
            {
              v34 = *(a1 + 16);
              v35 = *a1;
              *a1 = *(a1 + 24);
              *(a1 + 16) = *(a1 + 40);
              *(a1 + 24) = v35;
              *(a1 + 40) = v34;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[MPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_4 &,MPU::Point3D *,0>(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 24, a3);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = (a2 - 24);
    v8 = a3[1];
    if ((v8 - *(a2 - 16)) * (v8 - *(a2 - 16)) + (*a3 - *(a2 - 24)) * (*a3 - *(a2 - 24)) < (v8 - *(a1 + 8)) * (v8 - *(a1 + 8)) + (*a3 - *a1) * (*a3 - *a1))
    {
      v9 = *(a1 + 16);
      v10 = *a1;
      v11 = *(a2 - 8);
      *a1 = *v7;
      *(a1 + 16) = v11;
      *v7 = v10;
      *(a2 - 8) = v9;
    }

    return 1;
  }

LABEL_11:
  v12 = (a1 + 48);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[MPULayoutInterpolator _sortPointsFor3DInterpolation:usingQueriedPoint:]::$_4 &,MPU::Point3D *,0>(a1, (a1 + 24), (a1 + 48), a3);
  v13 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = *v13;
    v17 = *(v13 + 8);
    v18 = a3[1];
    if ((v18 - *&v17) * (v18 - *&v17) + (*a3 - *v13) * (*a3 - *v13) < (v18 - v12[1]) * (v18 - v12[1]) + (*a3 - *v12) * (*a3 - *v12))
    {
      v19 = v14;
      while (1)
      {
        v20 = a1 + v19;
        *(v20 + 72) = *(a1 + v19 + 48);
        *(v20 + 88) = *(a1 + v19 + 64);
        if (v19 == -48)
        {
          break;
        }

        v21 = a3[1];
        v19 -= 24;
        if ((v21 - *&v17) * (v21 - *&v17) + (*a3 - v16) * (*a3 - v16) >= (v21 - *(v20 + 32)) * (v21 - *(v20 + 32)) + (*a3 - *(v20 + 24)) * (*a3 - *(v20 + 24)))
        {
          v22 = a1 + v19 + 72;
          goto LABEL_19;
        }
      }

      v22 = a1;
LABEL_19:
      *v22 = v16;
      *(v22 + 8) = v17;
      if (++v15 == 8)
      {
        return v13 + 24 == a2;
      }
    }

    v12 = v13;
    v14 += 24;
    v13 += 24;
    if (v13 == a2)
    {
      return 1;
    }
  }
}

void std::vector<MPU::LayoutInterpolator::EntriesContainer>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<MPU::LayoutInterpolator::EntriesContainer>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

double *MPU::Point3D::Point3D(double *this, double a2, double a3, double a4)
{
  *this = a2;
  this[1] = a3;
  this[2] = a4;
  return this;
}

{
  *this = a2;
  this[1] = a3;
  this[2] = a4;
  return this;
}

BOOL MPU::Point3D::operator==(double *a1, double *a2)
{
  if (!MPUFloatEqualToFloat(*a1, *a2) || !MPUFloatEqualToFloat(a1[1], a2[1]))
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];

  return MPUFloatEqualToFloat(v4, v5);
}

uint64_t MPU::Point3D::resolveEquationOfPlaneDefinedByFirstThreePointsInVector(double **a1, double *a2, double *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v15 = **a1;
  v16 = (*a1)[1];
  v17 = (*a1)[2];
  v18 = (*a1)[4];
  v19 = (*a1)[5];
  v20 = (*a1)[6];
  v21 = (*a1)[7];
  v22 = (*a1)[8];
  v34 = (*a1)[3];
  if (MPU::_ResolveEquationOfPlaneDefinedBy3DPoints(a2, a3, a4, v15, v16, v17, v34, v18, v19, a11, a12, v20, v21, v22) & 1) != 0 || (MPU::_ResolveEquationOfPlaneDefinedBy3DPoints(a2, a3, a4, v15, v16, v17, v20, v21, v22, v23, v24, v34, v18, v19) & 1) != 0 || (MPU::_ResolveEquationOfPlaneDefinedBy3DPoints(a2, a3, a4, v34, v18, v19, v15, v16, v17, v25, v26, v20, v21, v22) & 1) != 0 || (MPU::_ResolveEquationOfPlaneDefinedBy3DPoints(a2, a3, a4, v34, v18, v19, v20, v21, v22, v27, v28, v15, v16, v17) & 1) != 0 || (MPU::_ResolveEquationOfPlaneDefinedBy3DPoints(a2, a3, a4, v20, v21, v22, v15, v16, v17, v29, v30, v34, v18, v19))
  {
    return 1;
  }

  else
  {
    return MPU::_ResolveEquationOfPlaneDefinedBy3DPoints(a2, a3, a4, v20, v21, v22, v34, v18, v19, v31, v32, v15, v16, v17);
  }
}

uint64_t MPU::_ResolveEquationOfPlaneDefinedBy3DPoints(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v26 = a8 - a5;
  if (MPUFloatEqualToFloat(a8 - a5, 0.0))
  {
    return 0;
  }

  v27 = a13 - a8;
  v28 = a7 - a4;
  v29 = -v27 / v26;
  v30 = a12 - a7 + v29 * (a7 - a4);
  if (MPUFloatEqualToFloat(v30, 0.0))
  {
    return 0;
  }

  v32 = (a14 - a9 + v29 * (a9 - a6)) / v30;
  if (a1)
  {
    *a1 = v32;
  }

  v33 = (a9 - a6 - v32 * v28) / v26;
  if (a2)
  {
    *a2 = v33;
  }

  if (a3)
  {
    *a3 = a6 - v32 * a4 - v33 * a5;
  }

  return 1;
}

void *__getkCTFontDescriptorTextStyleRegularSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "kCTFontDescriptorTextStyleRegular");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontDescriptorTextStyleRegularSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreTextLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CoreTextLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CoreTextLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27984C3E0;
    v5 = 0;
    CoreTextLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreTextLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!CoreTextLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CoreTextLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreTextLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkCTFontDescriptorTextStyleEmphasizedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary();
  result = dlsym(v2, "kCTFontDescriptorTextStyleEmphasized");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontDescriptorTextStyleEmphasizedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

double MPUFloatGetSafeScaleForValue(double result)
{
  if (vabdd_f64(0.0, result) < 0.00000011920929)
  {
    v1 = [MEMORY[0x277D759A0] mainScreen];
    [v1 scale];
    v3 = v2;

    return v3;
  }

  return result;
}

CGFloat MPURectByApplyingUserInterfaceLayoutDirectionInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16 = [MEMORY[0x277D75128] sharedApplication];
  v17 = [v16 userInterfaceLayoutDirection];

  if (v17 == 1)
  {
    v22.origin.x = a5;
    v22.origin.y = a6;
    v22.size.width = a7;
    v22.size.height = a8;
    MaxX = CGRectGetMaxX(v22);
    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    v19 = MaxX - CGRectGetMinX(v23);
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    v20 = v19 - CGRectGetWidth(v24);
    v25.origin.x = a1;
    v25.origin.y = a2;
    v25.size.width = a3;
    v25.size.height = a4;
    CGRectGetMinY(v25);
    v26.origin.x = a1;
    v26.origin.y = a2;
    v26.size.width = a3;
    v26.size.height = a4;
    CGRectGetWidth(v26);
    v27.origin.x = a1;
    v27.origin.y = a2;
    v27.size.width = a3;
    v27.size.height = a4;
    CGRectGetHeight(v27);
    return v20;
  }

  return a1;
}

CGFloat MPURectByRemovingUserInterfaceLayoutDirectionInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16 = [MEMORY[0x277D75128] sharedApplication];
  v17 = [v16 userInterfaceLayoutDirection];

  if (v17 == 1)
  {
    v21.origin.x = a5;
    v21.origin.y = a6;
    v21.size.width = a7;
    v21.size.height = a8;
    MaxX = CGRectGetMaxX(v21);
    v22.origin.x = a1;
    v22.origin.y = a2;
    v22.size.width = a3;
    v22.size.height = a4;
    v19 = MaxX - CGRectGetMaxX(v22);
    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    CGRectGetMinY(v23);
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    CGRectGetWidth(v24);
    v25.origin.x = a1;
    v25.origin.y = a2;
    v25.size.width = a3;
    v25.size.height = a4;
    CGRectGetHeight(v25);
    return v19;
  }

  return a1;
}

double MPUBalancedEdgeInsets(double a1, double a2, double a3)
{
  if (a1 >= a3)
  {
    return a1;
  }

  else
  {
    return a3;
  }
}

CGFloat MPUEdgeInsetsRectInsets(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v18 = a6 - a2;
  CGRectGetMaxY(*&a1);
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  CGRectGetMaxY(v19);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  CGRectGetMaxX(v20);
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  CGRectGetMaxX(v21);
  return v18;
}

double MPUInsetsFromRectToRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  MinY = CGRectGetMinY(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  v21 = MinY - CGRectGetMinY(v23);
  v24.origin.x = a5;
  v24.origin.y = a6;
  v24.size.width = a7;
  v24.size.height = a8;
  CGRectGetMinX(v24);
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  CGRectGetMinX(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetHeight(v26);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  CGRectGetHeight(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  CGRectGetWidth(v28);
  v29.origin.x = a5;
  v29.origin.y = a6;
  v29.size.width = a7;
  v29.size.height = a8;
  CGRectGetWidth(v29);
  return v21;
}

uint64_t MPU::LayoutInterpolator::_EntriesContainerMakeInsertionError@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *(a3 + 31) = 0;
  *a3 = a2;
  *(a3 + 8) = 0;
  v13 = a3 + 8;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "Error: Attempting to insert ", 28);
      MPU::LayoutInterpolator::_EntriesContainerAppendEntryDescriptionToStringStream(a1, &v22, a4, a5);
      v14 = " with a specified secondary reference metric with another entry present that does not have a specified secondary reference metric: ";
      v15 = 131;
    }

    else
    {
      if (a2 != 4)
      {
        goto LABEL_12;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "Error: Attempting to insert ", 28);
      MPU::LayoutInterpolator::_EntriesContainerAppendEntryDescriptionToStringStream(a1, &v22, a4, a5);
      v14 = " without a specified secondary reference metric with another entry present that does have a specified secondary reference metric: ";
      v15 = 130;
    }

    goto LABEL_10;
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
      goto LABEL_12;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "Error: Found inconsistent duplicate entry while trying to insert ", 65);
    MPU::LayoutInterpolator::_EntriesContainerAppendEntryDescriptionToStringStream(a1, &v22, a4, a5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, ". ", 2);
    v14 = "Already have ";
    v15 = 13;
LABEL_10:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, v14, v15);
    MPU::LayoutInterpolator::_EntriesContainerAppendEntryDescriptionToStringStream(a1, &v22, a6, a7);
    v16 = ".";
    v17 = 1;
    goto LABEL_11;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "Found perfect duplicate entry while trying to insert ", 53);
  MPU::LayoutInterpolator::_EntriesContainerAppendEntryDescriptionToStringStream(a1, &v22, a4, a5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, ". ", 2);
  v16 = "Doing nothing.";
  v17 = 14;
LABEL_11:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, v16, v17);
LABEL_12:
  std::stringbuf::str();
  *v13 = v20;
  v18 = MEMORY[0x277D82828];
  *(v13 + 16) = v21;
  v22 = *v18;
  *(&v22 + *(v22 - 24)) = v18[3];
  v23 = MEMORY[0x277D82878] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v24);
  std::ostream::~ostream();
  return MEMORY[0x259C68E50](&v26);
}

void sub_257977DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::ostringstream::~ostringstream(&a12, MEMORY[0x277D82828]);
  MEMORY[0x259C68E50](&a26);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_257977F18(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x259C68E50](v1);
  _Unwind_Resume(a1);
}

void *MPU::LayoutInterpolator::_EntriesContainerAppendEntryDescriptionToStringStream(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "(referenceMetric: ", 18);
  MEMORY[0x259C68DF0](v8, *(a1 + 24));
  if (!MPUFloatEqualToFloat(a3, -1.13427449e38))
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", secondaryReferenceMetric: ", 28);
    MEMORY[0x259C68DF0](v9, a3);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", value: ", 9);
  v11 = MEMORY[0x259C68DF0](v10, a4);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ")", 1);
}

uint64_t MPU::LayoutInterpolator::EntriesContainer::EntriesContainer(uint64_t this, double a2)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = a2;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = a2;
  return this;
}

uint64_t MPU::LayoutInterpolator::EntriesContainer::copyEntriesVector@<X0>(MPU::LayoutInterpolator::EntriesContainer *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<MPU::LayoutInterpolator::Entry>::__init_with_size[abi:ne200100]<MPU::LayoutInterpolator::Entry*,MPU::LayoutInterpolator::Entry*>(a2, *this, *(this + 1), (*(this + 1) - *this) >> 4);
}

void MPU::LayoutInterpolator::EntriesContainer::insertEntry(MPU::LayoutInterpolator::EntriesContainer *this@<X0>, __n128 a2@<0:D0, 8:D1>, uint64_t a3@<X8>)
{
  v3 = a2.n128_f64[1];
  v4 = a2.n128_f64[0];
  v27 = a2;
  *a3 = 0;
  *(a3 + 31) = 0;
  *(a3 + 8) = 0;
  v7 = a3 + 8;
  v9 = *this;
  v8 = *(this + 1);
  if (MPUFloatEqualToFloat(a2.n128_f64[0], -1.13427449e38))
  {
    if (v8 != v9)
    {
      v11 = **this;
      v10 = *(*this + 8);
      if (MPUFloatEqualToFloat(v11, -1.13427449e38))
      {
        if (MPUFloatEqualToFloat(v10, v3))
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }

        MPU::LayoutInterpolator::_EntriesContainerMakeInsertionError(this, v12, &v24, v4, v3, v11, v10);
      }

      else
      {
        MPU::LayoutInterpolator::_EntriesContainerMakeInsertionError(this, 4, &v24, v4, v3, v11, v10);
      }

LABEL_12:
      v15 = v24;
      *a3 = v24;
      *v7 = v25;
      *(v7 + 16) = v26;
      if (v15)
      {
        return;
      }
    }
  }

  else if (v8 != v9)
  {
    v13 = **this;
    v14 = *(*this + 8);
    if (MPUFloatEqualToFloat(v13, -1.13427449e38))
    {
      MPU::LayoutInterpolator::_EntriesContainerMakeInsertionError(this, 3, &v24, v4, v3, v13, v14);
      goto LABEL_12;
    }
  }

  v17 = *this;
  v16 = *(this + 1);
  if (v16 == *this)
  {
    v17 = *(this + 1);
  }

  else
  {
    v18 = (v16 - *this) >> 4;
    do
    {
      v19 = v18 >> 1;
      n128_f64 = v17[v18 >> 1].n128_f64;
      v22 = *n128_f64;
      v21 = (n128_f64 + 2);
      v18 += ~(v18 >> 1);
      if (v22 < v4)
      {
        v17 = v21;
      }

      else
      {
        v18 = v19;
      }
    }

    while (v18);
  }

  if (v16 == v17 || !MPUFloatEqualToFloat(v17->n128_f64[0], v4))
  {
    std::vector<MPU::LayoutInterpolator::Entry>::insert(this, v17, &v27);
  }

  else
  {
    if (MPUFloatEqualToFloat(v17->n128_f64[1], v27.n128_f64[1]))
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    MPU::LayoutInterpolator::_EntriesContainerMakeInsertionError(this, v23, &v24, v27.n128_f64[0], v27.n128_f64[1], v17->n128_f64[0], v17->n128_f64[1]);
    *a3 = v24;
    if (*(a3 + 31) < 0)
    {
      operator delete(*v7);
    }

    *v7 = v25;
    *(v7 + 16) = v26;
  }
}

__n128 *std::vector<MPU::LayoutInterpolator::Entry>::insert(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      std::vector<MPU::LayoutInterpolator::Entry>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MPU::LayoutInterpolator::Entry>>(a1, v14);
    }

    v26 = 0;
    v27 = 16 * v15;
    v28 = (16 * v15);
    std::__split_buffer<MPU::LayoutInterpolator::Entry>::emplace_back<MPU::LayoutInterpolator::Entry const&>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 1;
      *v6 = v6[-1];
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1], __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_257978420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double MPU::LayoutInterpolator::EntriesContainer::valueForSecondaryReferenceMetric(double **this, double a2)
{
  v3 = *this;
  v2 = this[1];
  v4 = (v2 - *this) >> 4;
  if (v4 == 1)
  {
    return v3[1];
  }

  if (!v4)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(exception, "Can't query value from empty entries container.");
  }

  if (v2 == v3)
  {
    v3 = this[1];
  }

  else
  {
    do
    {
      v7 = v4 >> 1;
      v8 = &v3[2 * (v4 >> 1)];
      v10 = *v8;
      v9 = v8 + 2;
      v4 += ~(v4 >> 1);
      if (v10 < a2)
      {
        v3 = v9;
      }

      else
      {
        v4 = v7;
      }
    }

    while (v4);
  }

  if (v2 == v3)
  {
    v12 = *(v3 - 4);
    v13 = *(v3 - 3);
    v14 = *(v3 - 2);
    v15 = *(v3 - 1);
  }

  else
  {
    if (MPUFloatEqualToFloat(*v3, a2))
    {
      return v3[1];
    }

    if (*this == v3)
    {
      v12 = *v3;
      v13 = v3[1];
      v14 = v3[2];
      v15 = v3[3];
    }

    else
    {
      v12 = *(v3 - 2);
      v13 = *(v3 - 1);
      v14 = *v3;
      v15 = v3[1];
    }
  }

  v16 = MPULayoutLinearRelationMake(v12, v13, v14, v15);

  return MPULayoutLinearRelationEvaluate(v16, v17, a2);
}

std::string *std::string::basic_string[abi:ne200100]<0>(std::string *a1, char *__s)
{
  v4 = strlen(__s);
  std::string::__init(a1, __s, v4);
  return a1;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x259C68DC0](v13, a1);
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

  MEMORY[0x259C68DD0](v13);
  return a1;
}

void sub_25797882C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x259C68DD0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x25797880CLL);
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

void sub_257978A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x259C68E00](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_257978B28(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

__n128 std::__split_buffer<MPU::LayoutInterpolator::Entry>::emplace_back<MPU::LayoutInterpolator::Entry const&>(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 3;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<MPU::LayoutInterpolator::Entry>>(a1[4], v11);
    }

    v7 = ((v6 >> 4) + 1) / -2;
    v8 = ((v6 >> 4) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = &v5[v7];
    a1[2] = (v9 + v10);
  }

  result = *a2;
  *v4 = *a2;
  ++a1[2];
  return result;
}

void sub_25797B8FC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _MPUStackViewApplyLayoutToItem(uint64_t a1, void *a2, uint64_t a3, float64x2_t a4, float64_t a5)
{
  v6 = a3;
  v7 = -a3;
  if (a3 >= 0)
  {
    v7 = a3;
  }

  v8 = vaddq_f64(*(a1 + 96), *(a1 + 96));
  v9 = *a1 - v6 * v8.f64[0];
  v10 = *(a1 + 8) - vmuld_lane_f64(v6, v8, 1);
  v11 = vmulq_n_f64(*(a1 + 72), v7);
  __asm { FMOV            V5.2D, #0.5 }

  v16 = vmulq_f64(vmulq_n_f64(v8, v7), _Q5);
  v17 = vsubq_f64(vnegq_f64(v11), v16);
  v18 = vaddq_f64(v16, v11);
  a4.f64[1] = a5;
  v19 = vmlaq_f64(v17, vaddq_f64(vmulq_f64(a4, _Q5), _Q5), vaddq_f64(vbslq_s8(vcltzq_f64(v17), vnegq_f64(v17), v17), vbslq_s8(vcltzq_f64(v18), vnegq_f64(v18), v18)));
  v20 = vdup_n_s32(a3 < 0);
  v21.i64[0] = v20.u32[0];
  v21.i64[1] = v20.u32[1];
  v22 = vaddq_f64(*(a1 + 48), vbslq_s8(vcltzq_s64(vshlq_n_s64(v21, 0x3FuLL)), vnegq_f64(v19), v19));
  if ((*(a1 + 64) & 1) == 0)
  {
    if ((*(a1 + 65) & 1) == 0)
    {
      goto LABEL_9;
    }

    v23 = *(a1 + 88);
    v26.f64[0] = v22.f64[0];
LABEL_8:
    v27 = (v22.f64[1] - v10 * 0.5) * v23;
    v26.f64[1] = v10 * 0.5 + roundf(v27) / v23;
    v42 = v26;
    goto LABEL_10;
  }

  v23 = *(a1 + 88);
  v24 = (v22.f64[0] - v9 * 0.5) * v23;
  v25 = roundf(v24) / v23;
  v26.f64[0] = v9 * 0.5 + v25;
  if (*(a1 + 65))
  {
    goto LABEL_8;
  }

  v22.f64[0] = v9 * 0.5 + v25;
LABEL_9:
  v42 = v22;
LABEL_10:
  v28 = *MEMORY[0x277CBF348];
  v29 = *(MEMORY[0x277CBF348] + 8);
  [a2 center];
  if (v31 != v42.f64[0] || v30 != v42.f64[1])
  {
    v33 = [a2 layer];
    [v33 setPosition:*&v42];
  }

  result = [a2 bounds];
  if (v38 != v28 || v35 != v29 || v36 != v9 || v37 != v10)
  {

    return [a2 setBounds:{v28, v29, v9, v10}];
  }

  return result;
}

void sub_2579800BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *_MPUFontTextStyleGetDescriptionAndCustomStyleStatus(uint64_t a1, char *a2)
{
  switch(a1)
  {
    case 0:
      v2 = 0;
      result = @"body";
      break;
    case 1:
      v2 = 0;
      result = @"headline";
      break;
    case 2:
      v2 = 0;
      result = @"subheadline";
      break;
    case 3:
      v2 = 0;
      result = @"footnote";
      break;
    case 4:
      v2 = 0;
      result = @"caption-1";
      break;
    case 5:
      v2 = 0;
      result = @"caption-2";
      break;
    case 6:
      v2 = 0;
      result = @"title-0";
      break;
    case 7:
      v2 = 0;
      result = @"title-1";
      break;
    case 8:
      v2 = 0;
      result = @"title-2";
      break;
    case 9:
      v2 = 0;
      result = @"title-3";
      break;
    case 10:
      v2 = 0;
      result = @"headline-1";
      break;
    case 11:
      v2 = 0;
      result = @"headline-2";
      break;
    case 12:
      v2 = 0;
      result = @"subheadline-1";
      break;
    case 13:
      v2 = 0;
      result = @"subheadline-2";
      break;
    case 14:
      v2 = 0;
      result = @"callout";
      break;
    case 15:
      v2 = 0;
      result = @"footnote-1";
      break;
    case 16:
      v2 = 0;
      result = @"footnote-2";
      break;
    case 17:
      v2 = 1;
      result = @"subheadline-3";
      break;
    case 18:
      v2 = 1;
      result = @"now-playing-title-1";
      break;
    case 19:
      v2 = 0;
      result = @"music-title-2";
      break;
    case 20:
      v2 = 0;
      result = @"music-title-2-multiline";
      break;
    case 21:
      v2 = 1;
      result = @"page-header";
      break;
    case 22:
      v2 = 1;
      result = @"page-header-large";
      break;
    case 23:
      v2 = 1;
      result = @"page-header-mid-large";
      break;
    case 24:
      v2 = 1;
      result = @"page-header-small";
      break;
    case 25:
      v2 = 1;
      result = @"page-header-compact-supertitle";
      break;
    case 26:
      v2 = 1;
      result = @"page-header-compact-subtitle";
      break;
    case 27:
      v2 = 1;
      result = @"page-header-regular-subtitle";
      break;
    default:
      v4 = a1 == 1000;
      if (a1 == 1000)
      {
        result = @"system-font";
      }

      else
      {
        result = 0;
      }

      v2 = v4;
      break;
  }

  if (a2)
  {
    *a2 = v2;
  }

  return result;
}

__CFString *MPUFontWeightGetDescription(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_27984C660[a1];
  }
}

__CFString *MPUFontLeadingAdjustmentGetDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_27984C6A8[a1];
  }
}

void *__getkCTFontDescriptorTextStyleHeavySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary_0();
  result = dlsym(v2, "kCTFontDescriptorTextStyleHeavy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontDescriptorTextStyleHeavySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreTextLibrary_0()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CoreTextLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CoreTextLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27984C648;
    v5 = 0;
    CoreTextLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = CoreTextLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!CoreTextLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CoreTextLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  CoreTextLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getkCTFontDescriptorTextStyleBoldSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary_0();
  result = dlsym(v2, "kCTFontDescriptorTextStyleBold");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontDescriptorTextStyleBoldSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCTFontDescriptorTextStyleSemiboldSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary_0();
  result = dlsym(v2, "kCTFontDescriptorTextStyleSemibold");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontDescriptorTextStyleSemiboldSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCTFontDescriptorTextStyleMediumSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary_0();
  result = dlsym(v2, "kCTFontDescriptorTextStyleMedium");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontDescriptorTextStyleMediumSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCTFontDescriptorTextStyleRegularSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = CoreTextLibrary_0();
  result = dlsym(v2, "kCTFontDescriptorTextStyleRegular");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontDescriptorTextStyleRegularSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCTFontDescriptorTextStyleLightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary_0();
  result = dlsym(v2, "kCTFontDescriptorTextStyleLight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontDescriptorTextStyleLightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCTFontDescriptorTextStyleUltraLightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary_0();
  result = dlsym(v2, "kCTFontDescriptorTextStyleUltraLight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontDescriptorTextStyleUltraLightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCTFontDescriptorTextStyleThinSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTextLibrary_0();
  result = dlsym(v2, "kCTFontDescriptorTextStyleThin");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTFontDescriptorTextStyleThinSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_257984B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t MPUNowPlayingIndicatorPlaybackStateFromMPPlaybackState(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_25798B7F8[a1 - 1];
  }
}

void sub_25798746C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
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