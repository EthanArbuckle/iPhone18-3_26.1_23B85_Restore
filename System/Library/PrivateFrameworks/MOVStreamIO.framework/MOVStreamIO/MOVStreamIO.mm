uint64_t mio_elf_hash(uint64_t a1, unint64_t a2)
{
  if (a2 < 4)
  {
    v2 = 0;
    i = a2;
  }

  else
  {
    v2 = 0;
    v3 = (a1 + 3);
    for (i = a2; i > 3; i -= 4)
    {
      v5 = *(v3 - 3) + 16 * v2;
      v6 = *(v3 - 2) + 16 * ((v5 >> 24) & 0xF0 ^ v5);
      v7 = *(v3 - 1) + 16 * ((v6 >> 24) & 0xF0 ^ v6);
      v8 = *v3 + 16 * ((v7 >> 24) & 0xF0 ^ v7);
      v2 = (v8 >> 24) & 0xF0 ^ v8;
      v3 += 4;
    }
  }

  if (i > 1)
  {
    if (i != 2)
    {
      v9 = *(a1 + a2 - 3) + 16 * v2;
      v2 = (v9 >> 24) & 0xF0 ^ v9;
    }

    v10 = *(a1 + a2 - 2) + 16 * v2;
    v2 = (v10 >> 24) & 0xF0 ^ v10;
  }

  else if (!i)
  {
    return v2;
  }

  v11 = *(a1 + a2 - 1) + 16 * v2;
  return (v11 >> 24) & 0xF0 ^ v11;
}

uint64_t MIOVideoTrackTypeInfoFromUTI(void *a1)
{
  v1 = a1;
  v2 = [v1 UTF8String];
  v3 = [v1 lengthOfBytesUsingEncoding:4];

  return mio_elf_hash(v2, v3);
}

id MIOKnownTrackTypeDescription(uint64_t a1)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v2 = MIOKnownTrackTypeDescription_knownTypes;
  if (!MIOKnownTrackTypeDescription_knownTypes)
  {
    v8[0] = &unk_2868E31F8;
    v8[1] = &unk_2868E3210;
    v9[0] = @"com.apple.mio.tracktype.AlphaDataOnly";
    v9[1] = @"com.apple.mio.tracktype.NoVideoData";
    v8[2] = &unk_2868E3228;
    v8[3] = &unk_2868E3240;
    v9[2] = @"com.apple.mio.tracktype.IRData";
    v9[3] = @"com.apple.mio.tracktype.RasterOrientedVideoData";
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];
    v4 = MIOKnownTrackTypeDescription_knownTypes;
    MIOKnownTrackTypeDescription_knownTypes = v3;

    v2 = MIOKnownTrackTypeDescription_knownTypes;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a1];
  v6 = [v2 objectForKeyedSubscript:v5];

  return v6;
}

void sub_257889FD8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25788A12C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25788D5CC(_Unwind_Exception *a1)
{
  v8 = v4;

  _Unwind_Resume(a1);
}

void sub_25788D9A8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_25788DE9C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_25788EBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25788F090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25789024C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MIOMonochrome2ByteToy416FrameProcessor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2578907E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_257890B30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_257891000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  MEMORY[0x259C68350](v21, 0xA0C403EA4F732);
  __p = &a19;
  std::vector<Area_renderer>::__destroy_vector::operator()[abi:ne200100](&__p);

  _Unwind_Resume(a1);
}

void sub_2578916F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  operator delete(v10);

  _Unwind_Resume(a1);
}

uint64_t std::vector<Area_renderer>::__emplace_back_slow_path<Area_renderer>(uint64_t a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<Area_renderer>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::allocator<Area_renderer>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v7 = 56 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 24) = v9;
  *&v18 = 56 * v2 + 56;
  v10 = *(a1 + 8);
  v11 = 56 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Area_renderer>,Area_renderer*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<Area_renderer>::~__split_buffer(&v16);
  return v15;
}

void sub_257891A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Area_renderer>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279847AE0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::allocator<Area_renderer>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
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

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Area_renderer>,Area_renderer*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 24) = v8;
      v6 = (v6 + 56);
      a4 += 56;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 56);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Area_renderer>,Area_renderer*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Area_renderer>,Area_renderer*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<Area_renderer>,Area_renderer*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<Area_renderer>,Area_renderer*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 33);
    v1 -= 7;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__split_buffer<Area_renderer>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<Area_renderer>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Area_renderer>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 7;
      *(a1 + 16) = v2 - 7;
      if (*(v2 - 33) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<Area_renderer>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Area_renderer>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Area_renderer>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 33);
    v3 -= 7;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::vector<std::unique_ptr<PixelBuffer_renderer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<PixelBuffer_renderer>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<PixelBuffer_renderer>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
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

void sub_2578926A4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(a1);
    v13 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_257883000, v13, OS_LOG_TYPE_ERROR, "Cannot convert pixel buffer. (%{public}@)", &buf, 0xCu);
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot convert pixel buffer. (%@)"];
    [MEMORY[0x277CCA9B8] populateStreamError:v11 message:v14 code:20];

    objc_end_catch();
    JUMPOUT(0x25789266CLL);
  }

  _Unwind_Resume(a1);
}

void sub_257892A24(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot create pixel buffer pool for adjusting Bytes Per Row. (%@)"];
    [MEMORY[0x277CCA9B8] populateStreamError:v3 message:v7 code:19];

    objc_end_catch();
    JUMPOUT(0x257892A18);
  }

  _Unwind_Resume(a1);
}

void *std::vector<CMTime>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::allocator<CMTime>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<Area_renderer>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::allocator<CMTime>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_257894C2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 80));
  _Unwind_Resume(a1);
}

void sub_2578953E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  v24 = v23;

  _Unwind_Resume(a1);
}

void *std::vector<CMTimeRange>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      std::allocator<CMTimeRange>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<Area_renderer>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::allocator<CMTimeRange>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_2578975AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MOVStreamWriter;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_257897920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t std::map<std::string,anonymous namespace::StreamRecordingData>::count[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = 1;
    do
    {
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v2 + 4) & 0x80) == 0)
      {
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2 + 4, a2) & 0x80) == 0)
        {
          return v4;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t std::map<std::string,anonymous namespace::StreamRecordingData>::operator[](uint64_t a1, void **a2)
{
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v3;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v3 + 32)) & 0x80) == 0)
      {
        break;
      }

      v3 = *v5;
      v4 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5 + 4, a2) & 0x80) == 0)
    {
      break;
    }

    v4 = v5 + 1;
    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (!*v4)
  {
LABEL_7:
    operator new();
  }

  return *v4 + 56;
}

{
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v3;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v3 + 32)) & 0x80) == 0)
      {
        break;
      }

      v3 = *v5;
      v4 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5 + 4, a2) & 0x80) == 0)
    {
      break;
    }

    v4 = v5 + 1;
    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (!*v4)
  {
LABEL_7:
    operator new();
  }

  return *v4 + 56;
}

void sub_257897BF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Unwind_Resume(a1);
}

void sub_257897D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::map<std::string,anonymous namespace::MetadataRecordingData>::operator[](uint64_t a1, void **a2)
{
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v3;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v3 + 32)) & 0x80) == 0)
      {
        break;
      }

      v3 = *v5;
      v4 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5 + 4, a2) & 0x80) == 0)
    {
      break;
    }

    v4 = v5 + 1;
    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (!*v4)
  {
LABEL_7:
    operator new();
  }

  return *v4 + 56;
}

{
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v3;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v3 + 32)) & 0x80) == 0)
      {
        break;
      }

      v3 = *v5;
      v4 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5 + 4, a2) & 0x80) == 0)
    {
      break;
    }

    v4 = v5 + 1;
    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (!*v4)
  {
LABEL_7:
    operator new();
  }

  return *v4 + 56;
}

void sub_257897EA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Unwind_Resume(a1);
}

void sub_2578981AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578982DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578983C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578984F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_257898620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_257898700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_257898834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_25789896C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_257898A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_257898DD0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_257898EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

void sub_257899174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

uint64_t std::map<std::string,anonymous namespace::StreamRecordingData>::find[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

void sub_257899760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578998F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_257899B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  objc_sync_exit(v26);

  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_257899EB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 49) < 0)
  {
    operator delete(*(v29 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t std::map<std::string,std::map<std::string,anonymous namespace::MetadataRecordingData>>::operator[](uint64_t a1, void **a2)
{
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v3;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v3 + 32)) & 0x80) == 0)
      {
        break;
      }

      v3 = *v5;
      v4 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5 + 4, a2) & 0x80) == 0)
    {
      break;
    }

    v4 = v5 + 1;
    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (!*v4)
  {
LABEL_7:
    operator new();
  }

  return *v4 + 56;
}

void sub_25789A060(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Unwind_Resume(a1);
}

void sub_25789A850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11)
{
  objc_sync_exit(v12);

  if (*(v15 - 105) < 0)
  {
    operator delete(*(v15 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_25789A928(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  objc_end_catch();
  JUMPOUT(0x25789A9B8);
}

void sub_25789A93C(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  JUMPOUT(0x25789A9B8);
}

void sub_25789A974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11)
{
  objc_sync_exit(v12);

  if (*(v14 - 105) < 0)
  {
    operator delete(*(v14 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_25789AE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_25789B000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_25789B2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_25789B4B8(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_25789CD30(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_25789D260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (*(v19 - 129) < 0)
  {
    operator delete(*(v19 - 152));
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_ea8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v2 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v2;
  }
}

void __destroy_helper_block_ea8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void sub_25789DE3C(_Unwind_Exception *a1)
{
  if (*(v4 - 97) < 0)
  {
    operator delete(*(v4 - 120));
  }

  _Unwind_Resume(a1);
}

void sub_25789DF78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_ea8_64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v2 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v2;
  }
}

void __destroy_helper_block_ea8_64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }
}

void sub_25789E388(_Unwind_Exception *a1)
{
  if (*(v4 - 113) < 0)
  {
    operator delete(*(v4 - 136));
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_ea8_56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v2 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v2;
  }
}

void __destroy_helper_block_ea8_56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }
}

void sub_25789EB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  objc_sync_exit(v18);

  _Unwind_Resume(a1);
}

void sub_25789EE88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_25789F01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  v17 = v16;

  objc_sync_exit(v13);
  _Unwind_Resume(a1);
}

void sub_25789F23C(_Unwind_Exception *a1)
{
  v6 = v4;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_25789F3AC(_Unwind_Exception *a1)
{
  v6 = v4;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_25789F514(_Unwind_Exception *a1)
{
  v6 = v4;

  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void sub_25789F7D0(_Unwind_Exception *a1)
{
  if (*(v4 - 81) < 0)
  {
    operator delete(*(v4 - 104));
  }

  _Unwind_Resume(a1);
}

void sub_25789FC98(_Unwind_Exception *a1)
{
  if (*(v3 - 145) < 0)
  {
    operator delete(*(v3 - 168));
  }

  _Unwind_Resume(a1);
}

void sub_2578A01EC(_Unwind_Exception *a1)
{
  if (*(v4 - 97) < 0)
  {
    operator delete(*(v4 - 120));
  }

  _Unwind_Resume(a1);
}

void sub_2578A09A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  objc_sync_exit(v21);

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578A0C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v23 - 73) < 0)
  {
    operator delete(*(v23 - 96));
  }

  if (*(v23 - 49) < 0)
  {
    operator delete(*(v23 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_2578A0DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_ea8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v4 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 3, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v5 = *(a2 + 72);
    a1[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    *&a1[3].__r_.__value_.__l.__data_ = v5;
  }
}

void sub_2578A0E78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    v2 = *(a1 + 48);

    operator delete(v2);
  }
}

void sub_2578A1100(_Unwind_Exception *a1)
{
  objc_sync_exit(v4);

  _Unwind_Resume(a1);
}

void sub_2578A1314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578A1640(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 buf)
{
  v22 = v18;

  objc_sync_exit(v20);
  if (a2 == 1)
  {
    v24 = objc_begin_catch(a1);
    v25 = *(v17 + 32);
    objc_sync_enter(v25);
    v26 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v24;
      _os_log_impl(&dword_257883000, v26, OS_LOG_TYPE_ERROR, "⛔️⛔️⛔️ ERROR: appendTimedMetadataGroup exception: %{public}@ ⛔️⛔️⛔️", &buf, 0xCu);
    }

    v27 = [*(*(v17 + 32) + 96) error];
    v28 = *(v17 + 32);
    v29 = [v28[48] criticalErrorOccurred:v27 context:v28];
    [v28 activateNewState:v29 byEvent:@"asyncWriteAssociatedMetadata"];

    objc_sync_exit(v25);
    objc_end_catch();
    JUMPOUT(0x2578A1604);
  }

  _Unwind_Resume(a1);
}

void sub_2578A19F0(_Unwind_Exception *a1)
{
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  _Unwind_Resume(a1);
}

void sub_2578A1B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578A1C58(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2578A1D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_2578A1EB4(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2578A203C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2578A21A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_2578A23C8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2578A2480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_2578A2E98(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2578A30B4(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_2578A37BC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2578A3BC8(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_2578A3E3C(_Unwind_Exception *a1)
{
  v4 = v3;

  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void sub_2578A3FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2578A59F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578A601C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v41 = objc_begin_catch(a1);
    v42 = v35[57];
    v43 = v42;
    if (v36 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
    {
      LOWORD(__p) = 0;
      _os_signpost_emit_with_name_impl(&dword_257883000, v43, OS_SIGNPOST_INTERVAL_END, v36, "mio.att_appendTimedMetadataGroup", "", &__p, 2u);
    }

    v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Exception occurred during writing %@ for stream '%@'. Dropping sample."];
    v45 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v44 code:21];
    [v35 informDelegateAboutError:v45];

    objc_end_catch();
    JUMPOUT(0x2578A5FC0);
  }

  _Unwind_Resume(a1);
}

void sub_2578A648C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 buf)
{
  v26 = v22;

  objc_sync_exit(v23);
  if (a2 == 1)
  {
    v28 = objc_begin_catch(a1);
    v29 = *(v20 + 456);
    v30 = v29;
    v31 = *(v20 + 464);
    if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_257883000, v30, OS_SIGNPOST_INTERVAL_END, v31, "mio.append.timed.metadata.group", "", &buf, 2u);
    }

    v32 = v20;
    objc_sync_enter(v32);
    v33 = [v24 + 2336 defaultLog];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v28;
      _os_log_impl(&dword_257883000, v33, OS_LOG_TYPE_ERROR, "⛔️⛔️⛔️ ERROR: appendTimedMetadataGroup exception: %{public}@ ⛔️⛔️⛔️", &buf, 0xCu);
    }

    v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Exception occurred during writing %@ for stream '%@'. Dropping sample."];
    v35 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v34 code:21];
    [v32 informDelegateAboutError:v35];

    objc_sync_exit(v32);
    objc_end_catch();
    JUMPOUT(0x2578A643CLL);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578A6748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578A6864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578A6974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578A8A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578A8B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578A8DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  objc_destroyWeak((v9 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v10 - 40));
  _Unwind_Resume(a1);
}

void sub_2578A9DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, id);
  objc_destroyWeak(va);
  _Block_object_dispose(va1, 8);
  objc_destroyWeak((v7 - 40));
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<Area_renderer>::__throw_length_error[abi:ne200100]();
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

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::allocator<std::string>::allocate_at_least[abi:ne200100](a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::allocator<std::string>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__tree<std::__value_type<std::string,anonymous namespace::StreamRecordingData>,std::__map_value_compare<std::string,std::__value_type<std::string,anonymous namespace::StreamRecordingData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,anonymous namespace::StreamRecordingData>>>::destroy(void *a1)
{
  if (a1)
  {

    operator delete(a1);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,anonymous namespace::StreamRecordingData>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,anonymous namespace::StreamRecordingData>,void,0>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,anonymous namespace::MetadataRecordingData>,std::__map_value_compare<std::string,std::__value_type<std::string,anonymous namespace::MetadataRecordingData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,anonymous namespace::MetadataRecordingData>>>::destroy(void *a1)
{
  if (a1)
  {

    operator delete(a1);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,anonymous namespace::MetadataRecordingData>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,anonymous namespace::MetadataRecordingData>,void,0>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::map<std::string,anonymous namespace::MetadataRecordingData>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,anonymous namespace::MetadataRecordingData>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,anonymous namespace::MetadataRecordingData>>>>::destroy(void *a1)
{
  if (a1)
  {

    operator delete(a1);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<std::string,anonymous namespace::MetadataRecordingData>>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,std::map<std::string,anonymous namespace::MetadataRecordingData>>,void,0>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,anonymous namespace::StreamRecordingData>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,anonymous namespace::StreamRecordingData>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,anonymous namespace::MetadataRecordingData>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,anonymous namespace::MetadataRecordingData>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,CMTime>,std::__map_value_compare<std::string,std::__value_type<std::string,CMTime>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CMTime>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void **a2)
{
  result = *std::__tree<std::__value_type<std::string,CMTime>,std::__map_value_compare<std::string,std::__value_type<std::string,CMTime>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CMTime>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,CMTime>,std::__map_value_compare<std::string,std::__value_type<std::string,CMTime>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CMTime>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,CMTime>,std::__map_value_compare<std::string,std::__value_type<std::string,CMTime>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CMTime>>>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_2578ABCB4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,CMTime>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,CMTime>,std::__map_value_compare<std::string,std::__value_type<std::string,CMTime>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CMTime>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,CMTime>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::map<std::string,anonymous namespace::MetadataRecordingData>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::map<std::string,anonymous namespace::MetadataRecordingData>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,CMTime>,std::__map_value_compare<std::string,std::__value_type<std::string,CMTime>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CMTime>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,CMTime>,std::__map_value_compare<std::string,std::__value_type<std::string,CMTime>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CMTime>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,CMTime>,std::__map_value_compare<std::string,std::__value_type<std::string,CMTime>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CMTime>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void DecodeCallbackImpl(void *a1, void *a2, uint64_t a3, uint64_t a4, __CVBuffer *a5, CMTime *a6, CMTime *a7)
{
  v11 = a1;
  v12 = v11;
  if (a5)
  {
    v13 = *&a6->value;
    epoch = a6->epoch;
    [v11 frameReceived:a5 pts:&v13];
  }

  else
  {
    [v11 frameDecodingFailed:a3 infoFlags:a4];
  }
}

void sub_2578AC0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MIOLinearVCPDecoderController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2578AD1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *pixelBufferSampler::pixelFormatAsString(pixelBufferSampler *this, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  if (PixelFormatType > 1380411456)
  {
    if (PixelFormatType > 2016686641)
    {
      if (PixelFormatType <= 2019963439)
      {
        if (PixelFormatType == 2016686642)
        {
          return @"x422: 10-bit narrow-range 4:2:2 Y′CbCr";
        }

        if (PixelFormatType == 2016687156)
        {
          return @"x444: 10-bit narrow-range 4:4:4 Y′CbCr";
        }
      }

      else
      {
        switch(PixelFormatType)
        {
          case 2019963440:
            return @"xf20: 10-bit   full-range 4:2:0 Y′CbCr";
          case 2019963442:
            return @"xf22: 10-bit   full-range 4:2:2 Y′CbCr";
          case 2019963956:
            return @"xf44: 10-bit   full-range 4:4:4 Y′CbCr";
        }
      }
    }

    else if (PixelFormatType <= 1937125937)
    {
      if (PixelFormatType == 1380411457)
      {
        return @"RGhA: half-float rgba";
      }

      if (PixelFormatType == 1815491698)
      {
        return @"l64r: 16-bit RGBA";
      }
    }

    else
    {
      switch(PixelFormatType)
      {
        case 1937125938:
          return @"sv22: 16-bit narrow-range 4:2:2 Y′CbCr";
        case 1937126452:
          return @"sv44: 16-bit narrow-range 4:4:4 Y′CbCr";
        case 2016686640:
          return @"x420: 10-bit narrow-range 4:2:0 Y′CbCr";
      }
    }
  }

  else if (PixelFormatType > 875836533)
  {
    if (PixelFormatType <= 1278226487)
    {
      if (PixelFormatType == 875836534)
      {
        return @"444v:  8-bit narrow-range 4:4:4 Y′CbCr";
      }

      if (PixelFormatType == 1111970369)
      {
        return @"BGRA: 8-bit RGBA";
      }
    }

    else
    {
      switch(PixelFormatType)
      {
        case 1278226488:
          return @"L008:  8-bit full-range 4:0:0 Y′CbCr";
        case 1278226736:
          return @"L010: 10-bit full-range 4:0:0 Y′CbCr";
        case 1380410945:
          return @"RGfA: float rgba";
      }
    }
  }

  else if (PixelFormatType <= 875704933)
  {
    if (PixelFormatType == 875704422)
    {
      return @"420f:  8-bit   full-range 4:2:0 Y′CbCr";
    }

    if (PixelFormatType == 875704438)
    {
      return @"420v:  8-bit narrow-range 4:2:0 Y′CbCr";
    }
  }

  else
  {
    switch(PixelFormatType)
    {
      case 875704934:
        return @"422f:  8-bit   full-range 4:2:2 Y′CbCr";
      case 875704950:
        return @"422v:  8-bit narrow-range 4:2:2 Y′CbCr";
      case 875836518:
        return @"444f:  8-bit   full-range 4:4:4 Y′CbCr";
    }
  }

  v5 = 4;
  LODWORD(__p) = bswap32(PixelFormatType);
  BYTE4(__p) = 0;
  std::print[abi:ne200100]<std::string &>(*MEMORY[0x277D85DF8], "Error: unexpected pixel format type: {}\n", 40, &__p);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_2578AD710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::print[abi:ne200100]<std::string &>(FILE *a1, __sFILE *a2, uint64_t a3, uint64_t *a4)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v7 = *(a4 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = a4[1];
  }

  if (v8 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  v12[1] = v7;
  v12[2] = 13;
  v12[0] = v9;
  if (std::__is_posix_terminal(a1, a2))
  {
    fflush(a1);
  }

  *&v10 = 1;
  *(&v10 + 1) = v12;
  v11 = 13;
  std::__print::__vprint_nonunicode[abi:ne200100]<void>(a1, a2, a3, &v10, 0);
}

id pixelBufferSampler::sample(pixelBufferSampler *this, __CVBuffer *a2, unint64_t a3)
{
  v843[1] = *MEMORY[0x277D85DE8];
  v726 = 0.0722;
  v725 = 0.2126;
  v6 = CVBufferCopyAttachment(this, *MEMORY[0x277CC4D10], 0);
  if (v6)
  {
    v8 = v6;
    matrix_coefficients_from_string(v6, &v725, &v726);
    CFRelease(v8);
  }

  else
  {
    v9 = *MEMORY[0x277D85DF8];
    if (std::__is_posix_terminal(*MEMORY[0x277D85DF8], v7))
    {
      fflush(v9);
    }

    *&v840 = 0;
    std::__print::__vprint_nonunicode[abi:ne200100]<void>(v9, "Error: pixel buffer is missing expected YCbCrMatrix attachments.\n", 65, &v840, 0);
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  if (PixelFormatType > 1380411456)
  {
    if (PixelFormatType > 2016686641)
    {
      if (PixelFormatType <= 2019963439)
      {
        if (PixelFormatType == 2016686642)
        {
          *&v833 = a2;
          *v838 = a3;
          if (v589 - 1 >= a3)
          {
            v591 = a3;
          }

          else
          {
            v591 = v589 - 1;
          }

          v595 = v590 - 1;
          if (v590 - 1 >= a2)
          {
            v595 = a2;
          }

          v596 = *&v592[2 * v595];
          v597 = v833;
          v598 = *v838;
          if (v599 - 1 >= v598)
          {
            v601 = v598;
          }

          else
          {
            v601 = v599 - 1;
          }

          v603 = v600 - 1;
          if (v600 - 1 >= v597)
          {
            v603 = v597;
          }

          v604 = *(v602 + 4 * v603);
          CVPixelBufferUnlockBaseAddress(v840, *(&v840 + 1));
          v605 = v596 >> 6;
          v791 = @"native";
          v789 = @"Y′CbCr";
          v722 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v605];
          v788[0] = v722;
          v606 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v604 >> 6];
          v788[1] = v606;
          v607 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v604 >> 22];
          v788[2] = v607;
          v608 = [MEMORY[0x277CBEA60] arrayWithObjects:v788 count:3];
          v790 = v608;
          v609 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v790 forKeys:&v789 count:1];
          v792 = v609;
          v610 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v792 forKeys:&v791 count:1];
          v611 = [v610 mutableCopy];

          v613 = v725;
          v612 = v726;
          v36 = v611;
          v838[0] = 0;
          *&v838[4] = 0x4000003FFLL;
          v839 = 512;
          v614 = math_color::YCC_coder::YCbCr_to_YPbPr(v838, v605);
          v616 = v615;
          v618 = v617;
          v837 = @"Y′PbPr";
          v619 = [MEMORY[0x277CCABB0] numberWithDouble:?];
          *&v840 = v619;
          v620 = [MEMORY[0x277CCABB0] numberWithDouble:v616];
          *(&v840 + 1) = v620;
          v621 = [MEMORY[0x277CCABB0] numberWithDouble:v618];
          v841 = v621;
          v622 = [MEMORY[0x277CBEA60] arrayWithObjects:&v840 count:3];
          v843[0] = v622;
          v623 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v843 forKeys:&v837 count:1];
          [v36 setObject:v623 forKeyedSubscript:@"Y′CbCr → Y′PbPr"];

          v624 = 1.0 - v613;
          v835 = @"r′g′b′";
          v625 = [MEMORY[0x277CCABB0] numberWithDouble:v614 + (v624 + v624) * v618];
          *&v833 = v625;
          v626 = [MEMORY[0x277CCABB0] numberWithDouble:v614 + (v612 - v612 * v612) * -2.0 / (v624 - v612) * v616 + (v613 - v613 * v613) * -2.0 / (v624 - v612) * v618];
          *(&v833 + 1) = v626;
          v627 = [MEMORY[0x277CCABB0] numberWithDouble:v614 + (1.0 - v612 + 1.0 - v612) * v616];
          v834 = v627;
          v628 = [MEMORY[0x277CBEA60] arrayWithObjects:&v833 count:3];
          v836 = v628;
          v629 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v836 forKeys:&v835 count:1];
          [v36 setObject:v629 forKeyedSubscript:@"Y′PbPr → r′g′b′"];

          goto LABEL_242;
        }

        if (PixelFormatType == 2016687156)
        {
          *&v833 = a2;
          *v838 = a3;
          if (v194 - 1 >= a3)
          {
            v196 = a3;
          }

          else
          {
            v196 = v194 - 1;
          }

          v200 = v195 - 1;
          if (v195 - 1 >= a2)
          {
            v200 = a2;
          }

          v201 = *&v197[2 * v200];
          v202 = v833;
          v203 = *v838;
          if (v204 - 1 >= v203)
          {
            v206 = v203;
          }

          else
          {
            v206 = v204 - 1;
          }

          v208 = v205 - 1;
          if (v205 - 1 >= v202)
          {
            v208 = v202;
          }

          v209 = *(v207 + 4 * v208);
          CVPixelBufferUnlockBaseAddress(v840, *(&v840 + 1));
          v210 = v201 >> 6;
          v766 = @"native";
          v764 = @"Y′CbCr";
          v719 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v210];
          v763[0] = v719;
          v211 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v209 >> 6];
          v763[1] = v211;
          v212 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v209 >> 22];
          v763[2] = v212;
          v213 = [MEMORY[0x277CBEA60] arrayWithObjects:v763 count:3];
          v765 = v213;
          v214 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v765 forKeys:&v764 count:1];
          v767 = v214;
          v215 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v767 forKeys:&v766 count:1];
          v216 = [v215 mutableCopy];

          v218 = v725;
          v217 = v726;
          v36 = v216;
          v838[0] = 0;
          *&v838[4] = 0x4000003FFLL;
          v839 = 512;
          v219 = math_color::YCC_coder::YCbCr_to_YPbPr(v838, v210);
          v221 = v220;
          v223 = v222;
          v837 = @"Y′PbPr";
          v224 = [MEMORY[0x277CCABB0] numberWithDouble:?];
          *&v840 = v224;
          v225 = [MEMORY[0x277CCABB0] numberWithDouble:v221];
          *(&v840 + 1) = v225;
          v226 = [MEMORY[0x277CCABB0] numberWithDouble:v223];
          v841 = v226;
          v227 = [MEMORY[0x277CBEA60] arrayWithObjects:&v840 count:3];
          v843[0] = v227;
          v228 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v843 forKeys:&v837 count:1];
          [v36 setObject:v228 forKeyedSubscript:@"Y′CbCr → Y′PbPr"];

          v229 = 1.0 - v218;
          v835 = @"r′g′b′";
          v230 = [MEMORY[0x277CCABB0] numberWithDouble:v219 + (v229 + v229) * v223];
          *&v833 = v230;
          v231 = [MEMORY[0x277CCABB0] numberWithDouble:v219 + (v217 - v217 * v217) * -2.0 / (v229 - v217) * v221 + (v218 - v218 * v218) * -2.0 / (v229 - v217) * v223];
          *(&v833 + 1) = v231;
          v232 = [MEMORY[0x277CCABB0] numberWithDouble:v219 + (1.0 - v217 + 1.0 - v217) * v221];
          v834 = v232;
          v233 = [MEMORY[0x277CBEA60] arrayWithObjects:&v833 count:3];
          v836 = v233;
          v234 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v836 forKeys:&v835 count:1];
          [v36 setObject:v234 forKeyedSubscript:@"Y′PbPr → r′g′b′"];

          goto LABEL_242;
        }
      }

      else
      {
        switch(PixelFormatType)
        {
          case 2019963440:
            *&v833 = a2;
            *v838 = a3;
            if (v460 - 1 >= a3)
            {
              v462 = a3;
            }

            else
            {
              v462 = v460 - 1;
            }

            v466 = v461 - 1;
            if (v461 - 1 >= a2)
            {
              v466 = a2;
            }

            v467 = *&v463[2 * v466];
            v468 = v833;
            v469 = *v838;
            if (v470 - 1 >= v469)
            {
              v472 = v469;
            }

            else
            {
              v472 = v470 - 1;
            }

            v474 = v471 - 1;
            if (v471 - 1 >= v468)
            {
              v474 = v468;
            }

            v475 = *(v473 + 4 * v474);
            CVPixelBufferUnlockBaseAddress(v840, *(&v840 + 1));
            v476 = v467 >> 6;
            v806 = @"native";
            v804 = @"Y′CbCr";
            v721 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v476];
            v803[0] = v721;
            v477 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v475 >> 6];
            v803[1] = v477;
            v478 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v475 >> 22];
            v803[2] = v478;
            v479 = [MEMORY[0x277CBEA60] arrayWithObjects:v803 count:3];
            v805 = v479;
            v480 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v805 forKeys:&v804 count:1];
            v807 = v480;
            v481 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v807 forKeys:&v806 count:1];
            v482 = [v481 mutableCopy];

            v484 = v725;
            v483 = v726;
            v36 = v482;
            v838[0] = 1;
            *&v838[4] = 0x4000003FFLL;
            v839 = 512;
            v485 = math_color::YCC_coder::YCbCr_to_YPbPr(v838, v476);
            v487 = v486;
            v489 = v488;
            v837 = @"Y′PbPr";
            v490 = [MEMORY[0x277CCABB0] numberWithDouble:?];
            *&v840 = v490;
            v491 = [MEMORY[0x277CCABB0] numberWithDouble:v487];
            *(&v840 + 1) = v491;
            v492 = [MEMORY[0x277CCABB0] numberWithDouble:v489];
            v841 = v492;
            v493 = [MEMORY[0x277CBEA60] arrayWithObjects:&v840 count:3];
            v843[0] = v493;
            v494 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v843 forKeys:&v837 count:1];
            [v36 setObject:v494 forKeyedSubscript:@"Y′CbCr → Y′PbPr"];

            v495 = 1.0 - v484;
            v835 = @"r′g′b′";
            v496 = [MEMORY[0x277CCABB0] numberWithDouble:v485 + (v495 + v495) * v489];
            *&v833 = v496;
            v497 = [MEMORY[0x277CCABB0] numberWithDouble:v485 + (v483 - v483 * v483) * -2.0 / (v495 - v483) * v487 + (v484 - v484 * v484) * -2.0 / (v495 - v483) * v489];
            *(&v833 + 1) = v497;
            v498 = [MEMORY[0x277CCABB0] numberWithDouble:v485 + (1.0 - v483 + 1.0 - v483) * v487];
            v834 = v498;
            v499 = [MEMORY[0x277CBEA60] arrayWithObjects:&v833 count:3];
            v836 = v499;
            v500 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v836 forKeys:&v835 count:1];
            [v36 setObject:v500 forKeyedSubscript:@"Y′PbPr → r′g′b′"];

            goto LABEL_242;
          case 2019963442:
            *&v833 = a2;
            *v838 = a3;
            if (v327 - 1 >= a3)
            {
              v329 = a3;
            }

            else
            {
              v329 = v327 - 1;
            }

            v333 = v328 - 1;
            if (v328 - 1 >= a2)
            {
              v333 = a2;
            }

            v334 = *&v330[2 * v333];
            v335 = v833;
            v336 = *v838;
            if (v337 - 1 >= v336)
            {
              v339 = v336;
            }

            else
            {
              v339 = v337 - 1;
            }

            v341 = v338 - 1;
            if (v338 - 1 >= v335)
            {
              v341 = v335;
            }

            v342 = *(v340 + 4 * v341);
            CVPixelBufferUnlockBaseAddress(v840, *(&v840 + 1));
            v343 = v334 >> 6;
            v786 = @"native";
            v784 = @"Y′CbCr";
            v720 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v343];
            v783[0] = v720;
            v344 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v342 >> 6];
            v783[1] = v344;
            v345 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v342 >> 22];
            v783[2] = v345;
            v346 = [MEMORY[0x277CBEA60] arrayWithObjects:v783 count:3];
            v785 = v346;
            v347 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v785 forKeys:&v784 count:1];
            v787 = v347;
            v348 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v787 forKeys:&v786 count:1];
            v349 = [v348 mutableCopy];

            v351 = v725;
            v350 = v726;
            v36 = v349;
            v838[0] = 1;
            *&v838[4] = 0x4000003FFLL;
            v839 = 512;
            v352 = math_color::YCC_coder::YCbCr_to_YPbPr(v838, v343);
            v354 = v353;
            v356 = v355;
            v837 = @"Y′PbPr";
            v357 = [MEMORY[0x277CCABB0] numberWithDouble:?];
            *&v840 = v357;
            v358 = [MEMORY[0x277CCABB0] numberWithDouble:v354];
            *(&v840 + 1) = v358;
            v359 = [MEMORY[0x277CCABB0] numberWithDouble:v356];
            v841 = v359;
            v360 = [MEMORY[0x277CBEA60] arrayWithObjects:&v840 count:3];
            v843[0] = v360;
            v361 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v843 forKeys:&v837 count:1];
            [v36 setObject:v361 forKeyedSubscript:@"Y′CbCr → Y′PbPr"];

            v362 = 1.0 - v351;
            v835 = @"r′g′b′";
            v363 = [MEMORY[0x277CCABB0] numberWithDouble:v352 + (v362 + v362) * v356];
            *&v833 = v363;
            v364 = [MEMORY[0x277CCABB0] numberWithDouble:v352 + (v350 - v350 * v350) * -2.0 / (v362 - v350) * v354 + (v351 - v351 * v351) * -2.0 / (v362 - v350) * v356];
            *(&v833 + 1) = v364;
            v365 = [MEMORY[0x277CCABB0] numberWithDouble:v352 + (1.0 - v350 + 1.0 - v350) * v354];
            v834 = v365;
            v366 = [MEMORY[0x277CBEA60] arrayWithObjects:&v833 count:3];
            v836 = v366;
            v367 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v836 forKeys:&v835 count:1];
            [v36 setObject:v367 forKeyedSubscript:@"Y′PbPr → r′g′b′"];

            goto LABEL_242;
          case 2019963956:
            *&v833 = a2;
            *v838 = a3;
            if (v100 - 1 >= a3)
            {
              v102 = a3;
            }

            else
            {
              v102 = v100 - 1;
            }

            v106 = v101 - 1;
            if (v101 - 1 >= a2)
            {
              v106 = a2;
            }

            v107 = *&v103[2 * v106];
            v108 = v833;
            v109 = *v838;
            if (v110 - 1 >= v109)
            {
              v112 = v109;
            }

            else
            {
              v112 = v110 - 1;
            }

            v114 = v111 - 1;
            if (v111 - 1 >= v108)
            {
              v114 = v108;
            }

            v115 = *(v113 + 4 * v114);
            CVPixelBufferUnlockBaseAddress(v840, *(&v840 + 1));
            v116 = v107 >> 6;
            v761 = @"native";
            v759 = @"Y′CbCr";
            v718 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v116];
            v758[0] = v718;
            v117 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v115 >> 6];
            v758[1] = v117;
            v118 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v115 >> 22];
            v758[2] = v118;
            v119 = [MEMORY[0x277CBEA60] arrayWithObjects:v758 count:3];
            v760 = v119;
            v120 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v760 forKeys:&v759 count:1];
            v762 = v120;
            v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v762 forKeys:&v761 count:1];
            v122 = [v121 mutableCopy];

            v124 = v725;
            v123 = v726;
            v36 = v122;
            v838[0] = 1;
            *&v838[4] = 0x4000003FFLL;
            v839 = 512;
            v125 = math_color::YCC_coder::YCbCr_to_YPbPr(v838, v116);
            v127 = v126;
            v129 = v128;
            v837 = @"Y′PbPr";
            v130 = [MEMORY[0x277CCABB0] numberWithDouble:?];
            *&v840 = v130;
            v131 = [MEMORY[0x277CCABB0] numberWithDouble:v127];
            *(&v840 + 1) = v131;
            v132 = [MEMORY[0x277CCABB0] numberWithDouble:v129];
            v841 = v132;
            v133 = [MEMORY[0x277CBEA60] arrayWithObjects:&v840 count:3];
            v843[0] = v133;
            v134 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v843 forKeys:&v837 count:1];
            [v36 setObject:v134 forKeyedSubscript:@"Y′CbCr → Y′PbPr"];

            v135 = 1.0 - v124;
            v835 = @"r′g′b′";
            v136 = [MEMORY[0x277CCABB0] numberWithDouble:v125 + (v135 + v135) * v129];
            *&v833 = v136;
            v137 = [MEMORY[0x277CCABB0] numberWithDouble:v125 + (v123 - v123 * v123) * -2.0 / (v135 - v123) * v127 + (v124 - v124 * v124) * -2.0 / (v135 - v123) * v129];
            *(&v833 + 1) = v137;
            v138 = [MEMORY[0x277CCABB0] numberWithDouble:v125 + (1.0 - v123 + 1.0 - v123) * v127];
            v834 = v138;
            v139 = [MEMORY[0x277CBEA60] arrayWithObjects:&v833 count:3];
            v836 = v139;
            v140 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v836 forKeys:&v835 count:1];
            [v36 setObject:v140 forKeyedSubscript:@"Y′PbPr → r′g′b′"];

            goto LABEL_242;
        }
      }
    }

    else if (PixelFormatType <= 1937125937)
    {
      if (PixelFormatType == 1380411457)
      {
        v544 = v543;
        if (!CVPixelBufferIsPlanar(this) || (PlaneCount = CVPixelBufferGetPlaneCount(this), PlaneCount == 1))
        {
          BaseAddress = CVPixelBufferGetBaseAddress(this);
          BytesPerRow = CVPixelBufferGetBytesPerRow(this);
        }

        else
        {
          if (!PlaneCount)
          {
            __assert_rtn("rowPtr", "PixelBufferSampler.mm", 128, "plane >= 0 && plane < planeCount");
          }

          BaseAddress = CVPixelBufferGetBaseAddressOfPlane(this, 0);
          BytesPerRow = CVPixelBufferGetBytesPerRowOfPlane(this, 0);
        }

        v630 = v544 - 1;
        if (v544 - 1 >= a3)
        {
          v630 = a3;
        }

        v631 = v542 - 1;
        if (v542 - 1 >= a2)
        {
          v631 = a2;
        }

        v632 = &BaseAddress[8 * v631 + BytesPerRow * v630];
        _H11 = *v632;
        _H10 = *(v632 + 1);
        _H9 = *(v632 + 2);
        _H8 = *(v632 + 3);
        CVPixelBufferUnlockBaseAddress(v840, *(&v840 + 1));
        v751 = @"native";
        v749 = @"r′g′b′a′";
        __asm { FCVT            S0, H11 }

        v642 = [MEMORY[0x277CCABB0] numberWithFloat:_D0];
        v748[0] = v642;
        __asm { FCVT            S0, H10 }

        v644 = [MEMORY[0x277CCABB0] numberWithFloat:_D0];
        v748[1] = v644;
        __asm { FCVT            S0, H9 }

        v646 = [MEMORY[0x277CCABB0] numberWithFloat:_D0];
        v748[2] = v646;
        __asm { FCVT            S0, H8 }

        v648 = [MEMORY[0x277CCABB0] numberWithFloat:_D0];
        v748[3] = v648;
        v649 = [MEMORY[0x277CBEA60] arrayWithObjects:v748 count:4];
        v750 = v649;
        v650 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v750 forKeys:&v749 count:1];
        v752 = v650;
        v651 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v752 forKeys:&v751 count:1];
        v36 = [v651 mutableCopy];

        goto LABEL_242;
      }

      if (PixelFormatType == 1815491698)
      {
        v184 = v183;
        if (!CVPixelBufferIsPlanar(this) || (v185 = CVPixelBufferGetPlaneCount(this), v185 == 1))
        {
          BaseAddressOfPlane = CVPixelBufferGetBaseAddress(this);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(this);
        }

        else
        {
          if (!v185)
          {
            __assert_rtn("rowPtr", "PixelBufferSampler.mm", 128, "plane >= 0 && plane < planeCount");
          }

          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(this, 0);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(this, 0);
        }

        v670 = v184 - 1;
        if (v184 - 1 >= a3)
        {
          v670 = a3;
        }

        v671 = v182 - 1;
        if (v182 - 1 >= a2)
        {
          v671 = a2;
        }

        v672 = *&BaseAddressOfPlane[8 * v671 + BytesPerRowOfPlane * v670];
        CVPixelBufferUnlockBaseAddress(v840, *(&v840 + 1));
        v733 = @"native";
        v731 = @"R′G′B′A′";
        v723 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v672];
        v727 = v723;
        v728 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD1(v672)];
        v715 = v728;
        v673 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v672)];
        v729 = v673;
        v674 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:HIWORD(v672)];
        v730 = v674;
        v675 = [MEMORY[0x277CBEA60] arrayWithObjects:&v727 count:4];
        v732 = v675;
        v676 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v732 forKeys:&v731 count:1];
        v734 = v676;
        v677 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v734 forKeys:&v733 count:1];
        v678 = [v677 mutableCopy];

        v36 = v678;
        LOBYTE(v833) = 1;
        *(&v833 + 4) = 0x1000000FFFFLL;
        HIDWORD(v833) = 0x8000;
        v679 = math_color::RGB_coder::decode(&v833, v672);
        v681 = v680;
        v683 = v682;
        v685 = v684;
        v843[0] = @"r′g′b′a′";
        v686 = [MEMORY[0x277CCABB0] numberWithDouble:v679];
        *&v840 = v686;
        v687 = [MEMORY[0x277CCABB0] numberWithDouble:v681];
        *(&v840 + 1) = v687;
        v688 = [MEMORY[0x277CCABB0] numberWithDouble:v683];
        v841 = v688;
        v689 = [MEMORY[0x277CCABB0] numberWithDouble:v685];
        v842 = v689;
        v690 = [MEMORY[0x277CBEA60] arrayWithObjects:&v840 count:4];
        *v838 = v690;
        v691 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v838 forKeys:v843 count:1];
        [v36 setObject:v691 forKeyedSubscript:@"R′G′B′A′ → r′g′b′a′"];

        goto LABEL_242;
      }
    }

    else
    {
      switch(PixelFormatType)
      {
        case 1937125938:
          *&v833 = a2;
          *v838 = a3;
          if (v409 - 1 >= a3)
          {
            v411 = a3;
          }

          else
          {
            v411 = v409 - 1;
          }

          v415 = v410 - 1;
          if (v410 - 1 >= a2)
          {
            v415 = a2;
          }

          v416 = *&v412[2 * v415];
          v417 = v833;
          v418 = *v838;
          if (v419 - 1 >= v418)
          {
            v421 = v418;
          }

          else
          {
            v421 = v419 - 1;
          }

          v423 = v420 - 1;
          if (v420 - 1 >= v417)
          {
            v423 = v417;
          }

          v424 = *(v422 + 4 * v423);
          CVPixelBufferUnlockBaseAddress(v840, *(&v840 + 1));
          v781 = @"native";
          v779 = @"Y′CbCr";
          v425 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v416];
          v778[0] = v425;
          v426 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v424];
          v778[1] = v426;
          v427 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:HIWORD(v424)];
          v778[2] = v427;
          v428 = [MEMORY[0x277CBEA60] arrayWithObjects:v778 count:3];
          v780 = v428;
          v429 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v780 forKeys:&v779 count:1];
          v782 = v429;
          v430 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v782 forKeys:&v781 count:1];
          v431 = [v430 mutableCopy];

          v433 = v725;
          v432 = v726;
          v36 = v431;
          v838[0] = 0;
          *&v838[4] = 0x1000000FFFFLL;
          v839 = 0x8000;
          v434 = math_color::YCC_coder::YCbCr_to_YPbPr(v838, v416);
          v436 = v435;
          v438 = v437;
          v837 = @"Y′PbPr";
          v439 = [MEMORY[0x277CCABB0] numberWithDouble:?];
          *&v840 = v439;
          v440 = [MEMORY[0x277CCABB0] numberWithDouble:v436];
          *(&v840 + 1) = v440;
          v441 = [MEMORY[0x277CCABB0] numberWithDouble:v438];
          v841 = v441;
          v442 = [MEMORY[0x277CBEA60] arrayWithObjects:&v840 count:3];
          v843[0] = v442;
          v443 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v843 forKeys:&v837 count:1];
          [v36 setObject:v443 forKeyedSubscript:@"Y′CbCr → Y′PbPr"];

          v444 = 1.0 - v433;
          v835 = @"r′g′b′";
          v445 = [MEMORY[0x277CCABB0] numberWithDouble:v434 + (v444 + v444) * v438];
          *&v833 = v445;
          v446 = [MEMORY[0x277CCABB0] numberWithDouble:v434 + (v432 - v432 * v432) * -2.0 / (v444 - v432) * v436 + (v433 - v433 * v433) * -2.0 / (v444 - v432) * v438];
          *(&v833 + 1) = v446;
          v447 = [MEMORY[0x277CCABB0] numberWithDouble:v434 + (1.0 - v432 + 1.0 - v432) * v436];
          v834 = v447;
          v448 = [MEMORY[0x277CBEA60] arrayWithObjects:&v833 count:3];
          v836 = v448;
          v449 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v836 forKeys:&v835 count:1];
          [v36 setObject:v449 forKeyedSubscript:@"Y′PbPr → r′g′b′"];

          goto LABEL_242;
        case 1937126452:
          *&v833 = a2;
          *v838 = a3;
          if (v276 - 1 >= a3)
          {
            v278 = a3;
          }

          else
          {
            v278 = v276 - 1;
          }

          v282 = v277 - 1;
          if (v277 - 1 >= a2)
          {
            v282 = a2;
          }

          v283 = *&v279[2 * v282];
          v284 = v833;
          v285 = *v838;
          if (v286 - 1 >= v285)
          {
            v288 = v285;
          }

          else
          {
            v288 = v286 - 1;
          }

          v290 = v287 - 1;
          if (v287 - 1 >= v284)
          {
            v290 = v284;
          }

          v291 = *(v289 + 4 * v290);
          CVPixelBufferUnlockBaseAddress(v840, *(&v840 + 1));
          v756 = @"native";
          v754 = @"Y′CbCr";
          v292 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v283];
          v753[0] = v292;
          v293 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v291];
          v753[1] = v293;
          v294 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:HIWORD(v291)];
          v753[2] = v294;
          v295 = [MEMORY[0x277CBEA60] arrayWithObjects:v753 count:3];
          v755 = v295;
          v296 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v755 forKeys:&v754 count:1];
          v757 = v296;
          v297 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v757 forKeys:&v756 count:1];
          v298 = [v297 mutableCopy];

          v300 = v725;
          v299 = v726;
          v36 = v298;
          v838[0] = 0;
          *&v838[4] = 0x1000000FFFFLL;
          v839 = 0x8000;
          v301 = math_color::YCC_coder::YCbCr_to_YPbPr(v838, v283);
          v303 = v302;
          v305 = v304;
          v837 = @"Y′PbPr";
          v306 = [MEMORY[0x277CCABB0] numberWithDouble:?];
          *&v840 = v306;
          v307 = [MEMORY[0x277CCABB0] numberWithDouble:v303];
          *(&v840 + 1) = v307;
          v308 = [MEMORY[0x277CCABB0] numberWithDouble:v305];
          v841 = v308;
          v309 = [MEMORY[0x277CBEA60] arrayWithObjects:&v840 count:3];
          v843[0] = v309;
          v310 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v843 forKeys:&v837 count:1];
          [v36 setObject:v310 forKeyedSubscript:@"Y′CbCr → Y′PbPr"];

          v311 = 1.0 - v300;
          v835 = @"r′g′b′";
          v312 = [MEMORY[0x277CCABB0] numberWithDouble:v301 + (v311 + v311) * v305];
          *&v833 = v312;
          v313 = [MEMORY[0x277CCABB0] numberWithDouble:v301 + (v299 - v299 * v299) * -2.0 / (v311 - v299) * v303 + (v300 - v300 * v300) * -2.0 / (v311 - v299) * v305];
          *(&v833 + 1) = v313;
          v314 = [MEMORY[0x277CCABB0] numberWithDouble:v301 + (1.0 - v299 + 1.0 - v299) * v303];
          v834 = v314;
          v315 = [MEMORY[0x277CBEA60] arrayWithObjects:&v833 count:3];
          v836 = v315;
          v316 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v836 forKeys:&v835 count:1];
          [v36 setObject:v316 forKeyedSubscript:@"Y′PbPr → r′g′b′"];

          goto LABEL_242;
        case 2016686640:
          *&v833 = a2;
          *v838 = a3;
          if (v53 - 1 >= a3)
          {
            v55 = a3;
          }

          else
          {
            v55 = v53 - 1;
          }

          v59 = v54 - 1;
          if (v54 - 1 >= a2)
          {
            v59 = a2;
          }

          v60 = *&v56[2 * v59];
          v61 = v833;
          v62 = *v838;
          if (v63 - 1 >= v62)
          {
            v65 = v62;
          }

          else
          {
            v65 = v63 - 1;
          }

          v67 = v64 - 1;
          if (v64 - 1 >= v61)
          {
            v67 = v61;
          }

          v68 = *(v66 + 4 * v67);
          CVPixelBufferUnlockBaseAddress(v840, *(&v840 + 1));
          v69 = v60 >> 6;
          v811 = @"native";
          v809 = @"Y′CbCr";
          v717 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v69];
          v808[0] = v717;
          v70 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v68 >> 6];
          v808[1] = v70;
          v71 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v68 >> 22];
          v808[2] = v71;
          v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v808 count:3];
          v810 = v72;
          v73 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v810 forKeys:&v809 count:1];
          v812 = v73;
          v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v812 forKeys:&v811 count:1];
          v75 = [v74 mutableCopy];

          v77 = v725;
          v76 = v726;
          v36 = v75;
          v838[0] = 0;
          *&v838[4] = 0x4000003FFLL;
          v839 = 512;
          v78 = math_color::YCC_coder::YCbCr_to_YPbPr(v838, v69);
          v80 = v79;
          v82 = v81;
          v837 = @"Y′PbPr";
          v83 = [MEMORY[0x277CCABB0] numberWithDouble:?];
          *&v840 = v83;
          v84 = [MEMORY[0x277CCABB0] numberWithDouble:v80];
          *(&v840 + 1) = v84;
          v85 = [MEMORY[0x277CCABB0] numberWithDouble:v82];
          v841 = v85;
          v86 = [MEMORY[0x277CBEA60] arrayWithObjects:&v840 count:3];
          v843[0] = v86;
          v87 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v843 forKeys:&v837 count:1];
          [v36 setObject:v87 forKeyedSubscript:@"Y′CbCr → Y′PbPr"];

          v88 = 1.0 - v77;
          v835 = @"r′g′b′";
          v89 = [MEMORY[0x277CCABB0] numberWithDouble:v78 + (v88 + v88) * v82];
          *&v833 = v89;
          v90 = [MEMORY[0x277CCABB0] numberWithDouble:v78 + (v76 - v76 * v76) * -2.0 / (v88 - v76) * v80 + (v77 - v77 * v77) * -2.0 / (v88 - v76) * v82];
          *(&v833 + 1) = v90;
          v91 = [MEMORY[0x277CCABB0] numberWithDouble:v78 + (1.0 - v76 + 1.0 - v76) * v80];
          v834 = v91;
          v92 = [MEMORY[0x277CBEA60] arrayWithObjects:&v833 count:3];
          v836 = v92;
          v93 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v836 forKeys:&v835 count:1];
          [v36 setObject:v93 forKeyedSubscript:@"Y′PbPr → r′g′b′"];

          goto LABEL_242;
      }
    }

LABEL_215:
    HIBYTE(v841) = 4;
    LODWORD(v840) = bswap32(PixelFormatType);
    BYTE4(v840) = 0;
    std::print[abi:ne200100]<std::string &>(*MEMORY[0x277D85DF8], "Error: unexpected pixel format type: {}\n", 40, &v840);
    if (SHIBYTE(v841) < 0)
    {
      operator delete(v840);
    }

    v36 = 0;
    goto LABEL_242;
  }

  if (PixelFormatType > 875836533)
  {
    if (PixelFormatType <= 1278226487)
    {
      if (PixelFormatType == 875836534)
      {
        *&v833 = a2;
        *v838 = a3;
        if (v548 - 1 >= a3)
        {
          v550 = a3;
        }

        else
        {
          v550 = v548 - 1;
        }

        v554 = (v549 - 1);
        if (v549 - 1 >= a2)
        {
          v554 = a2;
        }

        v555 = *(v554 + v551);
        v556 = v833;
        v557 = *v838;
        if (v558 - 1 >= v557)
        {
          v560 = v557;
        }

        else
        {
          v560 = v558 - 1;
        }

        v562 = v559 - 1;
        if (v559 - 1 >= v556)
        {
          v562 = v556;
        }

        v563 = *(v561 + 2 * v562);
        CVPixelBufferUnlockBaseAddress(v840, *(&v840 + 1));
        v776 = @"native";
        v774 = @"Y′CbCr";
        v564 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v555];
        v773[0] = v564;
        v565 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v563];
        v773[1] = v565;
        v566 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v563 >> 8];
        v773[2] = v566;
        v567 = [MEMORY[0x277CBEA60] arrayWithObjects:v773 count:3];
        v775 = v567;
        v568 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v775 forKeys:&v774 count:1];
        v777 = v568;
        v569 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v777 forKeys:&v776 count:1];
        v570 = [v569 mutableCopy];

        v572 = v725;
        v571 = v726;
        v36 = v570;
        v838[0] = 0;
        *&v838[4] = 0x1000000FFLL;
        v839 = 128;
        v573 = math_color::YCC_coder::YCbCr_to_YPbPr(v838, v555);
        v575 = v574;
        v577 = v576;
        v837 = @"Y′PbPr";
        v578 = [MEMORY[0x277CCABB0] numberWithDouble:?];
        *&v840 = v578;
        v579 = [MEMORY[0x277CCABB0] numberWithDouble:v575];
        *(&v840 + 1) = v579;
        v580 = [MEMORY[0x277CCABB0] numberWithDouble:v577];
        v841 = v580;
        v581 = [MEMORY[0x277CBEA60] arrayWithObjects:&v840 count:3];
        v843[0] = v581;
        v582 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v843 forKeys:&v837 count:1];
        [v36 setObject:v582 forKeyedSubscript:@"Y′CbCr → Y′PbPr"];

        v583 = 1.0 - v572;
        v835 = @"r′g′b′";
        v584 = [MEMORY[0x277CCABB0] numberWithDouble:v573 + (v583 + v583) * v577];
        *&v833 = v584;
        v585 = [MEMORY[0x277CCABB0] numberWithDouble:v573 + (v571 - v571 * v571) * -2.0 / (v583 - v571) * v575 + (v572 - v572 * v572) * -2.0 / (v583 - v571) * v577];
        *(&v833 + 1) = v585;
        v586 = [MEMORY[0x277CCABB0] numberWithDouble:v573 + (1.0 - v571 + 1.0 - v571) * v575];
        v834 = v586;
        v587 = [MEMORY[0x277CBEA60] arrayWithObjects:&v833 count:3];
        v836 = v587;
        v588 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v836 forKeys:&v835 count:1];
        [v36 setObject:v588 forKeyedSubscript:@"Y′PbPr → r′g′b′"];

        goto LABEL_242;
      }

      if (PixelFormatType == 1111970369)
      {
        v190 = v189;
        if (!CVPixelBufferIsPlanar(this) || (v191 = CVPixelBufferGetPlaneCount(this), v191 == 1))
        {
          v192 = CVPixelBufferGetBaseAddress(this);
          v193 = CVPixelBufferGetBytesPerRow(this);
        }

        else
        {
          if (!v191)
          {
            __assert_rtn("rowPtr", "PixelBufferSampler.mm", 128, "plane >= 0 && plane < planeCount");
          }

          v192 = CVPixelBufferGetBaseAddressOfPlane(this, 0);
          v193 = CVPixelBufferGetBytesPerRowOfPlane(this, 0);
        }

        v692 = v190 - 1;
        if (v190 - 1 >= a3)
        {
          v692 = a3;
        }

        v693 = v188 - 1;
        if (v188 - 1 >= a2)
        {
          v693 = a2;
        }

        v694 = *&v192[4 * v693 + v193 * v692];
        CVPixelBufferUnlockBaseAddress(v840, *(&v840 + 1));
        v741 = @"native";
        v739 = @"R′G′B′A′";
        v724 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE2(v694)];
        v735 = v724;
        v736 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v694)];
        v716 = v736;
        v695 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v694];
        v737 = v695;
        v696 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:HIBYTE(v694)];
        v738 = v696;
        v697 = [MEMORY[0x277CBEA60] arrayWithObjects:&v735 count:4];
        v740 = v697;
        v698 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v740 forKeys:&v739 count:1];
        v742 = v698;
        v699 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v742 forKeys:&v741 count:1];
        v700 = [v699 mutableCopy];

        v36 = v700;
        LOBYTE(v833) = 1;
        *(&v833 + 4) = 0x1000000FFLL;
        HIDWORD(v833) = 128;
        v701 = math_color::RGB_coder::decode(&v833, BYTE2(v694));
        v703 = v702;
        v705 = v704;
        v707 = v706;
        v843[0] = @"r′g′b′a′";
        v708 = [MEMORY[0x277CCABB0] numberWithDouble:v701];
        *&v840 = v708;
        v709 = [MEMORY[0x277CCABB0] numberWithDouble:v703];
        *(&v840 + 1) = v709;
        v710 = [MEMORY[0x277CCABB0] numberWithDouble:v705];
        v841 = v710;
        v711 = [MEMORY[0x277CCABB0] numberWithDouble:v707];
        v842 = v711;
        v712 = [MEMORY[0x277CBEA60] arrayWithObjects:&v840 count:4];
        *v838 = v712;
        v713 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v838 forKeys:v843 count:1];
        [v36 setObject:v713 forKeyedSubscript:@"R′G′B′A′ → r′g′b′a′"];

        goto LABEL_242;
      }
    }

    else
    {
      switch(PixelFormatType)
      {
        case 1278226488:
          if (v450 - 1 >= a3)
          {
            v452 = a3;
          }

          else
          {
            v452 = v450 - 1;
          }

          v454 = (v451 - 1);
          if (v451 - 1 >= a2)
          {
            v454 = a2;
          }

          v455 = *(v454 + v453);
          CVPixelBufferUnlockBaseAddress(v840, *(&v840 + 1));
          v831 = @"native";
          v829 = @"Y′";
          v456 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v455];
          v828 = v456;
          v457 = [MEMORY[0x277CBEA60] arrayWithObjects:&v828 count:1];
          v830 = v457;
          v458 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v830 forKeys:&v829 count:1];
          v832 = v458;
          v459 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v832 forKeys:&v831 count:1];
          v36 = [v459 mutableCopy];

          goto LABEL_242;
        case 1278226736:
          if (v317 - 1 >= a3)
          {
            v319 = a3;
          }

          else
          {
            v319 = v317 - 1;
          }

          v321 = v318 - 1;
          if (v318 - 1 >= a2)
          {
            v321 = a2;
          }

          v322 = *&v320[2 * v321];
          CVPixelBufferUnlockBaseAddress(v840, *(&v840 + 1));
          v826 = @"native";
          v824 = @"Y′";
          v323 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v322 >> 6];
          v823 = v323;
          v324 = [MEMORY[0x277CBEA60] arrayWithObjects:&v823 count:1];
          v825 = v324;
          v325 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v825 forKeys:&v824 count:1];
          v827 = v325;
          v326 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v827 forKeys:&v826 count:1];
          v36 = [v326 mutableCopy];

          goto LABEL_242;
        case 1380410945:
          v96 = v95;
          if (!CVPixelBufferIsPlanar(this) || (v97 = CVPixelBufferGetPlaneCount(this), v97 == 1))
          {
            v98 = CVPixelBufferGetBaseAddress(this);
            v99 = CVPixelBufferGetBytesPerRow(this);
          }

          else
          {
            if (!v97)
            {
              __assert_rtn("rowPtr", "PixelBufferSampler.mm", 128, "plane >= 0 && plane < planeCount");
            }

            v98 = CVPixelBufferGetBaseAddressOfPlane(this, 0);
            v99 = CVPixelBufferGetBytesPerRowOfPlane(this, 0);
          }

          v652 = v96 - 1;
          if (v96 - 1 >= a3)
          {
            v652 = a3;
          }

          v653 = v94 - 1;
          if (v94 - 1 >= a2)
          {
            v653 = a2;
          }

          v654 = &v98[16 * v653 + v99 * v652];
          v656 = *v654;
          v655 = *(v654 + 1);
          v658 = *(v654 + 2);
          v657 = *(v654 + 3);
          CVPixelBufferUnlockBaseAddress(v840, *(&v840 + 1));
          v746 = @"native";
          v744 = @"r′g′b′a′";
          LODWORD(v659) = v656;
          v660 = [MEMORY[0x277CCABB0] numberWithFloat:v659];
          v743[0] = v660;
          LODWORD(v661) = v655;
          v662 = [MEMORY[0x277CCABB0] numberWithFloat:v661];
          v743[1] = v662;
          LODWORD(v663) = v658;
          v664 = [MEMORY[0x277CCABB0] numberWithFloat:v663];
          v743[2] = v664;
          LODWORD(v665) = v657;
          v666 = [MEMORY[0x277CCABB0] numberWithFloat:v665];
          v743[3] = v666;
          v667 = [MEMORY[0x277CBEA60] arrayWithObjects:v743 count:4];
          v745 = v667;
          v668 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v745 forKeys:&v744 count:1];
          v747 = v668;
          v669 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v747 forKeys:&v746 count:1];
          v36 = [v669 mutableCopy];

          goto LABEL_242;
      }
    }

    goto LABEL_215;
  }

  if (PixelFormatType <= 875704933)
  {
    if (PixelFormatType == 875704422)
    {
      *&v833 = a2;
      *v838 = a3;
      if (v501 - 1 >= a3)
      {
        v503 = a3;
      }

      else
      {
        v503 = v501 - 1;
      }

      v507 = (v502 - 1);
      if (v502 - 1 >= a2)
      {
        v507 = a2;
      }

      v508 = *(v507 + v504);
      v509 = v833;
      v510 = *v838;
      if (v511 - 1 >= v510)
      {
        v513 = v510;
      }

      else
      {
        v513 = v511 - 1;
      }

      v515 = v512 - 1;
      if (v512 - 1 >= v509)
      {
        v515 = v509;
      }

      v516 = *(v514 + 2 * v515);
      CVPixelBufferUnlockBaseAddress(v840, *(&v840 + 1));
      v816 = @"native";
      v814 = @"Y′CbCr";
      v517 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v508];
      v813[0] = v517;
      v518 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v516];
      v813[1] = v518;
      v519 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v516 >> 8];
      v813[2] = v519;
      v520 = [MEMORY[0x277CBEA60] arrayWithObjects:v813 count:3];
      v815 = v520;
      v521 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v815 forKeys:&v814 count:1];
      v817 = v521;
      v522 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v817 forKeys:&v816 count:1];
      v523 = [v522 mutableCopy];

      v525 = v725;
      v524 = v726;
      v36 = v523;
      v838[0] = 1;
      *&v838[4] = 0x1000000FFLL;
      v839 = 128;
      v526 = math_color::YCC_coder::YCbCr_to_YPbPr(v838, v508);
      v528 = v527;
      v530 = v529;
      v837 = @"Y′PbPr";
      v531 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      *&v840 = v531;
      v532 = [MEMORY[0x277CCABB0] numberWithDouble:v528];
      *(&v840 + 1) = v532;
      v533 = [MEMORY[0x277CCABB0] numberWithDouble:v530];
      v841 = v533;
      v534 = [MEMORY[0x277CBEA60] arrayWithObjects:&v840 count:3];
      v843[0] = v534;
      v535 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v843 forKeys:&v837 count:1];
      [v36 setObject:v535 forKeyedSubscript:@"Y′CbCr → Y′PbPr"];

      v536 = 1.0 - v525;
      v835 = @"r′g′b′";
      v537 = [MEMORY[0x277CCABB0] numberWithDouble:v526 + (v536 + v536) * v530];
      *&v833 = v537;
      v538 = [MEMORY[0x277CCABB0] numberWithDouble:v526 + (v524 - v524 * v524) * -2.0 / (v536 - v524) * v528 + (v525 - v525 * v525) * -2.0 / (v536 - v524) * v530];
      *(&v833 + 1) = v538;
      v539 = [MEMORY[0x277CCABB0] numberWithDouble:v526 + (1.0 - v524 + 1.0 - v524) * v528];
      v834 = v539;
      v540 = [MEMORY[0x277CBEA60] arrayWithObjects:&v833 count:3];
      v836 = v540;
      v541 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v836 forKeys:&v835 count:1];
      [v36 setObject:v541 forKeyedSubscript:@"Y′PbPr → r′g′b′"];

      goto LABEL_242;
    }

    if (PixelFormatType == 875704438)
    {
      *&v833 = a2;
      *v838 = a3;
      if (v141 - 1 >= a3)
      {
        v143 = a3;
      }

      else
      {
        v143 = v141 - 1;
      }

      v147 = (v142 - 1);
      if (v142 - 1 >= a2)
      {
        v147 = a2;
      }

      v148 = *(v147 + v144);
      v149 = v833;
      v150 = *v838;
      if (v151 - 1 >= v150)
      {
        v153 = v150;
      }

      else
      {
        v153 = v151 - 1;
      }

      v155 = v152 - 1;
      if (v152 - 1 >= v149)
      {
        v155 = v149;
      }

      v156 = *(v154 + 2 * v155);
      CVPixelBufferUnlockBaseAddress(v840, *(&v840 + 1));
      v821 = @"native";
      v819 = @"Y′CbCr";
      v157 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v148];
      v818[0] = v157;
      v158 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v156];
      v818[1] = v158;
      v159 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v156 >> 8];
      v818[2] = v159;
      v160 = [MEMORY[0x277CBEA60] arrayWithObjects:v818 count:3];
      v820 = v160;
      v161 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v820 forKeys:&v819 count:1];
      v822 = v161;
      v162 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v822 forKeys:&v821 count:1];
      v163 = [v162 mutableCopy];

      v165 = v725;
      v164 = v726;
      v36 = v163;
      v838[0] = 0;
      *&v838[4] = 0x1000000FFLL;
      v839 = 128;
      v166 = math_color::YCC_coder::YCbCr_to_YPbPr(v838, v148);
      v168 = v167;
      v170 = v169;
      v837 = @"Y′PbPr";
      v171 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      *&v840 = v171;
      v172 = [MEMORY[0x277CCABB0] numberWithDouble:v168];
      *(&v840 + 1) = v172;
      v173 = [MEMORY[0x277CCABB0] numberWithDouble:v170];
      v841 = v173;
      v174 = [MEMORY[0x277CBEA60] arrayWithObjects:&v840 count:3];
      v843[0] = v174;
      v175 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v843 forKeys:&v837 count:1];
      [v36 setObject:v175 forKeyedSubscript:@"Y′CbCr → Y′PbPr"];

      v176 = 1.0 - v165;
      v835 = @"r′g′b′";
      v177 = [MEMORY[0x277CCABB0] numberWithDouble:v166 + (v176 + v176) * v170];
      *&v833 = v177;
      v178 = [MEMORY[0x277CCABB0] numberWithDouble:v166 + (v164 - v164 * v164) * -2.0 / (v176 - v164) * v168 + (v165 - v165 * v165) * -2.0 / (v176 - v164) * v170];
      *(&v833 + 1) = v178;
      v179 = [MEMORY[0x277CCABB0] numberWithDouble:v166 + (1.0 - v164 + 1.0 - v164) * v168];
      v834 = v179;
      v180 = [MEMORY[0x277CBEA60] arrayWithObjects:&v833 count:3];
      v836 = v180;
      v181 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v836 forKeys:&v835 count:1];
      [v36 setObject:v181 forKeyedSubscript:@"Y′PbPr → r′g′b′"];

      goto LABEL_242;
    }

    goto LABEL_215;
  }

  switch(PixelFormatType)
  {
    case 875704934:
      *&v833 = a2;
      *v838 = a3;
      if (v368 - 1 >= a3)
      {
        v370 = a3;
      }

      else
      {
        v370 = v368 - 1;
      }

      v374 = (v369 - 1);
      if (v369 - 1 >= a2)
      {
        v374 = a2;
      }

      v375 = *(v374 + v371);
      v376 = v833;
      v377 = *v838;
      if (v378 - 1 >= v377)
      {
        v380 = v377;
      }

      else
      {
        v380 = v378 - 1;
      }

      v382 = v379 - 1;
      if (v379 - 1 >= v376)
      {
        v382 = v376;
      }

      v383 = *(v381 + 2 * v382);
      CVPixelBufferUnlockBaseAddress(v840, *(&v840 + 1));
      v796 = @"native";
      v794 = @"Y′CbCr";
      v384 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v375];
      v793[0] = v384;
      v385 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v383];
      v793[1] = v385;
      v386 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v383 >> 8];
      v793[2] = v386;
      v387 = [MEMORY[0x277CBEA60] arrayWithObjects:v793 count:3];
      v795 = v387;
      v388 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v795 forKeys:&v794 count:1];
      v797 = v388;
      v389 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v797 forKeys:&v796 count:1];
      v390 = [v389 mutableCopy];

      v392 = v725;
      v391 = v726;
      v36 = v390;
      v838[0] = 1;
      *&v838[4] = 0x1000000FFLL;
      v839 = 128;
      v393 = math_color::YCC_coder::YCbCr_to_YPbPr(v838, v375);
      v395 = v394;
      v397 = v396;
      v837 = @"Y′PbPr";
      v398 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      *&v840 = v398;
      v399 = [MEMORY[0x277CCABB0] numberWithDouble:v395];
      *(&v840 + 1) = v399;
      v400 = [MEMORY[0x277CCABB0] numberWithDouble:v397];
      v841 = v400;
      v401 = [MEMORY[0x277CBEA60] arrayWithObjects:&v840 count:3];
      v843[0] = v401;
      v402 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v843 forKeys:&v837 count:1];
      [v36 setObject:v402 forKeyedSubscript:@"Y′CbCr → Y′PbPr"];

      v403 = 1.0 - v392;
      v835 = @"r′g′b′";
      v404 = [MEMORY[0x277CCABB0] numberWithDouble:v393 + (v403 + v403) * v397];
      *&v833 = v404;
      v405 = [MEMORY[0x277CCABB0] numberWithDouble:v393 + (v391 - v391 * v391) * -2.0 / (v403 - v391) * v395 + (v392 - v392 * v392) * -2.0 / (v403 - v391) * v397];
      *(&v833 + 1) = v405;
      v406 = [MEMORY[0x277CCABB0] numberWithDouble:v393 + (1.0 - v391 + 1.0 - v391) * v395];
      v834 = v406;
      v407 = [MEMORY[0x277CBEA60] arrayWithObjects:&v833 count:3];
      v836 = v407;
      v408 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v836 forKeys:&v835 count:1];
      [v36 setObject:v408 forKeyedSubscript:@"Y′PbPr → r′g′b′"];

      break;
    case 875704950:
      *&v833 = a2;
      *v838 = a3;
      if (v235 - 1 >= a3)
      {
        v237 = a3;
      }

      else
      {
        v237 = v235 - 1;
      }

      v241 = (v236 - 1);
      if (v236 - 1 >= a2)
      {
        v241 = a2;
      }

      v242 = *(v241 + v238);
      v243 = v833;
      v244 = *v838;
      if (v245 - 1 >= v244)
      {
        v247 = v244;
      }

      else
      {
        v247 = v245 - 1;
      }

      v249 = v246 - 1;
      if (v246 - 1 >= v243)
      {
        v249 = v243;
      }

      v250 = *(v248 + 2 * v249);
      CVPixelBufferUnlockBaseAddress(v840, *(&v840 + 1));
      v801 = @"native";
      v799 = @"Y′CbCr";
      v251 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v242];
      v798[0] = v251;
      v252 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v250];
      v798[1] = v252;
      v253 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v250 >> 8];
      v798[2] = v253;
      v254 = [MEMORY[0x277CBEA60] arrayWithObjects:v798 count:3];
      v800 = v254;
      v255 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v800 forKeys:&v799 count:1];
      v802 = v255;
      v256 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v802 forKeys:&v801 count:1];
      v257 = [v256 mutableCopy];

      v259 = v725;
      v258 = v726;
      v36 = v257;
      v838[0] = 0;
      *&v838[4] = 0x1000000FFLL;
      v839 = 128;
      v260 = math_color::YCC_coder::YCbCr_to_YPbPr(v838, v242);
      v262 = v261;
      v264 = v263;
      v837 = @"Y′PbPr";
      v265 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      *&v840 = v265;
      v266 = [MEMORY[0x277CCABB0] numberWithDouble:v262];
      *(&v840 + 1) = v266;
      v267 = [MEMORY[0x277CCABB0] numberWithDouble:v264];
      v841 = v267;
      v268 = [MEMORY[0x277CBEA60] arrayWithObjects:&v840 count:3];
      v843[0] = v268;
      v269 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v843 forKeys:&v837 count:1];
      [v36 setObject:v269 forKeyedSubscript:@"Y′CbCr → Y′PbPr"];

      v270 = 1.0 - v259;
      v835 = @"r′g′b′";
      v271 = [MEMORY[0x277CCABB0] numberWithDouble:v260 + (v270 + v270) * v264];
      *&v833 = v271;
      v272 = [MEMORY[0x277CCABB0] numberWithDouble:v260 + (v258 - v258 * v258) * -2.0 / (v270 - v258) * v262 + (v259 - v259 * v259) * -2.0 / (v270 - v258) * v264];
      *(&v833 + 1) = v272;
      v273 = [MEMORY[0x277CCABB0] numberWithDouble:v260 + (1.0 - v258 + 1.0 - v258) * v262];
      v834 = v273;
      v274 = [MEMORY[0x277CBEA60] arrayWithObjects:&v833 count:3];
      v836 = v274;
      v275 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v836 forKeys:&v835 count:1];
      [v36 setObject:v275 forKeyedSubscript:@"Y′PbPr → r′g′b′"];

      break;
    case 875836518:
      *&v833 = a2;
      *v838 = a3;
      if (v11 - 1 >= a3)
      {
        v13 = a3;
      }

      else
      {
        v13 = v11 - 1;
      }

      v17 = (v12 - 1);
      if (v12 - 1 >= a2)
      {
        v17 = a2;
      }

      v18 = *(v17 + v14);
      v19 = v833;
      v20 = *v838;
      if (v21 - 1 >= v20)
      {
        v23 = v20;
      }

      else
      {
        v23 = v21 - 1;
      }

      v25 = v22 - 1;
      if (v22 - 1 >= v19)
      {
        v25 = v19;
      }

      v26 = *(v24 + 2 * v25);
      CVPixelBufferUnlockBaseAddress(v840, *(&v840 + 1));
      v771 = @"native";
      v769 = @"Y′CbCr";
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v18];
      v768[0] = v27;
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v26];
      v768[1] = v28;
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v26 >> 8];
      v768[2] = v29;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v768 count:3];
      v770 = v30;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v770 forKeys:&v769 count:1];
      v772 = v31;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v772 forKeys:&v771 count:1];
      v33 = [v32 mutableCopy];

      v35 = v725;
      v34 = v726;
      v36 = v33;
      v838[0] = 1;
      *&v838[4] = 0x1000000FFLL;
      v839 = 128;
      v37 = math_color::YCC_coder::YCbCr_to_YPbPr(v838, v18);
      v39 = v38;
      v41 = v40;
      v837 = @"Y′PbPr";
      v42 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      *&v840 = v42;
      v43 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
      *(&v840 + 1) = v43;
      v44 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
      v841 = v44;
      v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v840 count:3];
      v843[0] = v45;
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v843 forKeys:&v837 count:1];
      [v36 setObject:v46 forKeyedSubscript:@"Y′CbCr → Y′PbPr"];

      v47 = 1.0 - v35;
      v835 = @"r′g′b′";
      v48 = [MEMORY[0x277CCABB0] numberWithDouble:v37 + (v47 + v47) * v41];
      *&v833 = v48;
      v49 = [MEMORY[0x277CCABB0] numberWithDouble:v37 + (v34 - v34 * v34) * -2.0 / (v47 - v34) * v39 + (v35 - v35 * v35) * -2.0 / (v47 - v34) * v41];
      *(&v833 + 1) = v49;
      v50 = [MEMORY[0x277CCABB0] numberWithDouble:v37 + (1.0 - v34 + 1.0 - v34) * v39];
      v834 = v50;
      v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v833 count:3];
      v836 = v51;
      v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v836 forKeys:&v835 count:1];
      [v36 setObject:v52 forKeyedSubscript:@"Y′PbPr → r′g′b′"];

      break;
    default:
      goto LABEL_215;
  }

LABEL_242:

  return v36;
}

id pixelBufferSampler::sample(pixelBufferSampler *this, __CVBuffer *a2, double a3, double a4)
{
  v9 = (v7 * a3 + 0.5);
  v10 = v8 * a4 + 0.5;
  if (v7 - 1 < v9)
  {
    v9 = (v7 - 1);
  }

  if (v8 - 1 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8 - 1;
  }

  return pixelBufferSampler::sample(this, v9, v11);
}

_anonymous_namespace_::PixelBufferLock *anonymous namespace::PixelBufferLock::PixelBufferLock(_anonymous_namespace_::PixelBufferLock *this, CVPixelBufferRef pixelBuffer)
{
  *this = pixelBuffer;
  *(this + 1) = 1;
  if (!pixelBuffer)
  {
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  return this;
}

void anonymous namespace::PixelBufferLock::~PixelBufferLock(_anonymous_namespace_::PixelBufferLock *this)
{
  CVPixelBufferUnlockBaseAddress(*this, *(this + 1));
}

{
  CVPixelBufferUnlockBaseAddress(*this, *(this + 1));
}

char *anonymous namespace::rowPtr<std::array<unsigned char,1ul>>(__CVBuffer *a1, uint64_t a2)
{
  if (!CVPixelBufferIsPlanar(a1) || (PlaneCount = CVPixelBufferGetPlaneCount(a1), PlaneCount == 1))
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  }

  else
  {
    if (!PlaneCount)
    {
    }

    BaseAddress = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
    BytesPerRow = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  }

  return &BaseAddress[BytesPerRow * a2];
}

size_t anonymous namespace::plane_dimensions(_anonymous_namespace_ *this, __CVBuffer *a2)
{
  v2 = a2;
  if (!CVPixelBufferIsPlanar(this))
  {
    if (!v2)
    {
      goto LABEL_6;
    }

LABEL_8:
  }

  PlaneCount = CVPixelBufferGetPlaneCount(this);
  if (PlaneCount <= v2)
  {
    goto LABEL_8;
  }

  if (PlaneCount == 1)
  {
LABEL_6:
    Width = CVPixelBufferGetWidth(this);
    CVPixelBufferGetHeight(this);
    return Width;
  }

  v5 = v2;
  Width = CVPixelBufferGetWidthOfPlane(this, v2);
  CVPixelBufferGetHeightOfPlane(this, v5);
  return Width;
}

size_t anonymous namespace::plane_sample_location(_anonymous_namespace_ *this, size_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v10 = v9;
  v13 = v12;
  v14 = v8 / std::__gcd<unsigned long>(v8, v11);
  v15 = std::__gcd<unsigned long>(v10, v13);
  *a2 /= v14;
  *a3 /= v10 / v15;
  v18 = result - 1;
  if (result - 1 >= *a2)
  {
    v18 = *a2;
  }

  *a2 = v18;
  v19 = v17 - 1;
  if (v17 - 1 >= *a3)
  {
    v19 = *a3;
  }

  *a3 = v19;
  return result;
}

unint64_t std::__gcd<unsigned long>(unint64_t result, unint64_t a2)
{
  v2 = result;
  v3 = result > a2;
  if (result >= a2)
  {
    result = a2;
  }

  if (!v3)
  {
    v2 = a2;
  }

  if (!result)
  {
    return v2;
  }

  v4 = v2 % result;
  if (v2 % result)
  {
    v5 = v4 | result;
    v6 = v4 >> __clz(__rbit64(v4));
    do
    {
      v7 = result >> __clz(__rbit64(result));
      if (v6 <= v7)
      {
        result = v7 - v6;
      }

      else
      {
        result = v6 - v7;
      }

      if (v6 >= v7)
      {
        v6 = v7;
      }
    }

    while (result);
    return v6 << __clz(__rbit64(v5));
  }

  return result;
}

size_t anonymous namespace::rowPtr<std::array<unsigned char,2ul>>(__CVBuffer *a1, uint64_t a2)
{
  if (!CVPixelBufferIsPlanar(a1) || CVPixelBufferGetPlaneCount(a1) <= 1)
  {
  }

  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  return BaseAddressOfPlane + CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL) * a2;
}

void std::__print::__vprint_nonunicode[abi:ne200100]<void>(FILE *a1, unsigned __int8 *a2, uint64_t a3, __int128 *a4, int a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v14 = *a4;
  v15 = *(a4 + 2);
  v16 = v20;
  *__len = xmmword_25792B5B0;
  v18 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v19 = 0;
  __src = v20;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v16, a2, a3, &v14);
  v7 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len[1] >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = __len[1];
  if (__len[1])
  {
    memmove(&__dst, __src, __len[1]);
  }

  __dst.__r_.__value_.__s.__data_[v7] = 0;
  if (__src != v20)
  {
    operator delete(__src);
  }

  if (a5)
  {
    std::string::push_back(&__dst, 10);
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  v10 = fwrite(p_dst, 1uLL, size, a1);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v10 >= __dst.__r_.__value_.__l.__size_)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if (v10 >= SHIBYTE(__dst.__r_.__value_.__r.__words[2]))
  {
    return;
  }

  if (feof(a1))
  {
    v12 = "EOF while writing the formatted output";
    v11 = 5;
  }

  else
  {
    v11 = ferror(a1);
    v12 = "failed to write formatted output";
  }

  std::__throw_system_error(v11, v12);
  __break(1u);
}

void sub_2578B2D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  std::__format::__allocating_buffer<char>::__grow_buffer[abi:ne200100](a1, v4);
}

void std::__format::__allocating_buffer<char>::__grow_buffer[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x100)
  {
    operator new();
  }
}

uint64_t std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v14[0] = a2;
  v14[1] = &a2[a3];
  v15 = 0;
  v16 = 0;
  v17 = v4;
  v10 = *a4;
  v11 = a4[2];
  LOBYTE(v7.__locale_) = 0;
  v8 = 0;
  v9 = a1;
  LOBYTE(v12.__locale_) = 0;
  v13 = 0;
  v5 = std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v14, &v9);
  if (v13 == 1)
  {
    std::locale::~locale(&v12);
  }

  return v5;
}

void sub_2578B2EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (*a1 != v2)
  {
    while (1)
    {
      v7 = *v3;
      if (v7 == 125)
      {
        break;
      }

      if (v7 != 123)
      {
        goto LABEL_10;
      }

      if (++v3 == v2)
      {
        std::__throw_format_error[abi:ne200100]("The format string terminates at a '{'");
      }

      if (*v3 == 123)
      {
LABEL_10:
        ++v3;
        std::__format::__output_buffer<char>::push_back[abi:ne200100](v4, v7);
        if (v3 == v2)
        {
          return v4;
        }
      }

      else
      {
        *a2 = v4;
        v3 = std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v3, v2, a1, a2);
        v4 = *a2;
        if (v3 == v2)
        {
          return v4;
        }
      }
    }

    if (++v3 == v2 || *v3 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The format string contains an invalid escape sequence");
    }

    goto LABEL_10;
  }

  return v4;
}

void std::__throw_format_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::format_error::format_error[abi:ne200100](exception, a1);
}

unsigned __int8 *std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_14;
  }

  v9 = *v7;
  v20 = v9 == 58;
  if (v9 == 125)
  {
    goto LABEL_5;
  }

  if (v9 != 58)
  {
LABEL_14:
    std::__throw_format_error[abi:ne200100]("The argument index should end with a ':' or a '}'");
  }

  ++v7;
LABEL_5:
  *a3 = v7;
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = &v20;
  v10 = a4[1];
  if (v10 <= v8)
  {
    LOBYTE(v22) = 0;
  }

  else if (v10 > 0xC)
  {
    v15 = (a4[2] + 32 * v8);
    v16 = v15[1];
    v21 = *v15;
    v22 = v16;
  }

  else
  {
    v11 = (a4[2] + 16 * v8);
    v13 = *v11;
    v12 = v11[1];
    v14 = (a4[3] >> (5 * v8)) & 0x1FLL;
    *&v21 = v13;
    *(&v21 + 1) = v12;
    LOBYTE(v22) = v14;
  }

  std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v19, &v21);
  v17 = *a3;
  if (*a3 == a2 || *v17 != 125)
  {
    std::__throw_format_error[abi:ne200100]("The replacement field misses a terminating '}'");
  }

  return v17 + 1;
}

std::runtime_error *std::format_error::format_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2868CE200;
  return result;
}

void std::format_error::~format_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x259C68350);
}

unsigned __int8 *std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *a1;
  if (v4 == 125 || v4 == 58)
  {
    std::basic_format_parse_context<char>::next_arg_id[abi:ne200100](a3);
    return v3;
  }

  if (v4 == 48)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      if (v5 == 2)
      {
        std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }

    return a1 + 1;
  }

  if ((v4 - 58) <= 0xFFFFFFF5)
  {
    std::__throw_format_error[abi:ne200100]("The argument index starts with an invalid character");
  }

  return std::__format::__detail::__parse_manual[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
}

void *std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 *a2)
{
  switch(a2[16])
  {
    case 1u:
      v3 = *a2;
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v4 = *a1;
        v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v59, *a1, 311);
        std::__format_spec::__process_parsed_BOOL[abi:ne200100]<char>(v59, "a BOOL");
        *v4 = v5;
      }

      v6 = *(a1 + 8);
      result = std::formatter<BOOL,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v3, v6);
      goto LABEL_66;
    case 2u:
      v25 = *a2;
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v26 = *a1;
        v27 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v59, *a1, 311);
        std::__format_spec::__process_parsed_char[abi:ne200100]<char>(v59, "a character");
        *v26 = v27;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_char<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v25, v6);
      goto LABEL_66;
    case 3u:
      v28 = *a2;
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v29 = *a1;
        v30 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v59, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v59, "an integer");
        *v29 = v30;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v28, v6);
      goto LABEL_66;
    case 4u:
      v15 = *a2;
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v16 = *a1;
        v17 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v59, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v59, "an integer");
        *v16 = v17;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v15, v6);
      goto LABEL_66;
    case 5u:
      v35 = *a2;
      v34 = *(a2 + 1);
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v36 = *a1;
        v37 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v59, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v59, "an integer");
        *v36 = v37;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<__int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v35, v34, v6);
      goto LABEL_66;
    case 6u:
      v31 = *a2;
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v32 = *a1;
        v33 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v59, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v59, "an integer");
        *v32 = v33;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<unsigned int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v31, v6);
      goto LABEL_66;
    case 7u:
      v41 = *a2;
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v42 = *a1;
        v43 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v59, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v59, "an integer");
        *v42 = v43;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<unsigned long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v41, v6);
      goto LABEL_66;
    case 8u:
      v22 = *a2;
      v21 = *(a2 + 1);
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v23 = *a1;
        v24 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v59, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v59, "an integer");
        *v23 = v24;
      }

      v6 = *(a1 + 8);
      result = std::__formatter_integer<char>::format[abi:ne200100]<unsigned __int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v22, v21, v6);
      goto LABEL_66;
    case 9u:
      v18 = *a2;
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_57;
      }

      v19 = *a1;
      v20 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v59, *a1, 319);
      if (v59[1] - 13 >= 6)
      {
        if (v59[1] <= 0xCu && ((1 << v59[1]) & 0x1801) != 0)
        {
          goto LABEL_56;
        }

LABEL_68:
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a floating-point");
      }

      if ((*&v59[2] & 0x80000000) == 0 && *&v59[8] == -1)
      {
        *&v59[8] = 6;
      }

LABEL_56:
      *v19 = v20;
LABEL_57:
      v6 = *(a1 + 8);
      v53 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v6);
      result = std::__formatter::__format_floating_point[abi:ne200100]<float,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v53, v54, v18);
LABEL_66:
      *v6 = result;
      return result;
    case 0xAu:
      v44 = *a2;
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_65;
      }

      v45 = *a1;
      v46 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v59, *a1, 319);
      if (v59[1] - 13 >= 6)
      {
        if (v59[1] > 0xCu || ((1 << v59[1]) & 0x1801) == 0)
        {
          goto LABEL_68;
        }
      }

      else if ((*&v59[2] & 0x80000000) == 0 && *&v59[8] == -1)
      {
        *&v59[8] = 6;
      }

      *v45 = v46;
LABEL_65:
      v6 = *(a1 + 8);
      v57 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v6);
      result = std::__formatter::__format_floating_point[abi:ne200100]<double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v57, v58, v44);
      goto LABEL_66;
    case 0xBu:
      v38 = *a2;
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) != 1)
      {
        goto LABEL_61;
      }

      v39 = *a1;
      v40 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v59, *a1, 319);
      if (v59[1] - 13 >= 6)
      {
        if (v59[1] > 0xCu || ((1 << v59[1]) & 0x1801) == 0)
        {
          goto LABEL_68;
        }
      }

      else if ((*&v59[2] & 0x80000000) == 0 && *&v59[8] == -1)
      {
        *&v59[8] = 6;
      }

      *v39 = v40;
LABEL_61:
      v6 = *(a1 + 8);
      v55 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v6);
      result = std::__formatter::__format_floating_point[abi:ne200100]<long double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v55, v56, v38);
      goto LABEL_66;
    case 0xCu:
      v47 = *a2;
      *v59 = 1;
      *&v59[4] = 0xFFFFFFFF00000000;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v48 = *a1;
        *v48 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(v59, *a1);
      }

      v6 = *(a1 + 8);
      v14 = strlen(v47);
      v13 = v47;
      goto LABEL_50;
    case 0xDu:
      v10 = *a2;
      v11 = *(a2 + 1);
      *v59 = 1;
      *&v59[4] = 0xFFFFFFFF00000000;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v12 = *a1;
        *v12 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(v59, *a1);
      }

      v6 = *(a1 + 8);
      v13 = v10;
      v14 = v11;
LABEL_50:
      result = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v13, v14, v6);
      goto LABEL_66;
    case 0xEu:
      v8 = *a2;
      *v59 = 0;
      *&v59[8] = -1;
      v60 = 32;
      v61 = 0;
      v62 = 0;
      if (**(a1 + 16) == 1)
      {
        v9 = *a1;
        *v9 = std::__formatter_pointer<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(v59, *a1);
      }

      v6 = *(a1 + 8);
      result = std::__formatter_pointer<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v59, v8, v6);
      goto LABEL_66;
    case 0xFu:
      v49 = *a1;
      v50 = *a2;
      v51 = *(a2 + 1);
      v52 = *(a1 + 8);

      return v51(v49, v52, v50);
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

unsigned __int8 *std::__format::__detail::__parse_manual[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  result = std::__format::__parse_number[abi:ne200100]<char const*>(a1, a2);
  v5 = *(a3 + 16);
  if (v5)
  {
    if (v5 == 2)
    {
      std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
    }
  }

  else
  {
    *(a3 + 16) = 1;
  }

  return result;
}

uint64_t std::basic_format_parse_context<char>::next_arg_id[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v1 == 1)
    {
      std::__throw_format_error[abi:ne200100]("Using automatic argument numbering in manual argument numbering mode");
    }
  }

  else
  {
    *(a1 + 16) = 2;
  }

  v2 = *(a1 + 24);
  *(a1 + 24) = v2 + 1;
  return v2;
}

unsigned __int8 *std::__format::__parse_number[abi:ne200100]<char const*>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1;
  v3 = a1 + 9;
  if (a2 - a1 <= 9)
  {
    v3 = a2;
  }

  v5 = *a1;
  result = a1 + 1;
  v6 = v5 - 48;
  if (result == v3)
  {
    v3 = result;
LABEL_9:
    if (v3 == a2)
    {
      return a2;
    }

    else
    {
      v8 = *v3;
      if ((v8 - 48) > 9)
      {
        return v3;
      }

      else if ((v8 + 10 * v6 - 48) >> 31 || (result = v2 + 2, v2 + 2 != a2) && *result - 48 <= 9)
      {
        std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
      }
    }
  }

  else
  {
    v2 = v3 - 1;
    while (1)
    {
      v7 = *result;
      if ((v7 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      v6 = v7 + 10 * v6 - 48;
      if (++result == v3)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

void *std::formatter<BOOL,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned int a2, void *a3)
{
  if (*(a1 + 1) > 1u)
  {
    v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v9, v8, 0);
  }

  else
  {
    v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_BOOL[abi:ne200100]<char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v6, v5);
  }
}

unsigned __int8 *std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2, __int16 a3)
{
  result = *a2;
  v5 = a2[1];
  v14 = result;
  if (result == v5)
  {
    return result;
  }

  v6 = *result;
  if (v6 == 125 || (a3 & 0x40) != 0 && v6 == 58)
  {
    return result;
  }

  v9 = std::__format_spec::__parser<char>::__parse_fill_align[abi:ne200100]<char const*>(a1, &v14, v5);
  result = v14;
  if (v9)
  {
    if (v14 == v5)
    {
      return result;
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = *v14;
  switch(v10)
  {
    case ' ':
      v11 = *a1 | 0x18;
LABEL_14:
      *a1 = v11;
      v14 = ++result;
      if (result == v5)
      {
        return result;
      }

      break;
    case '+':
      v11 = *a1 & 0xE7 | 0x10;
      goto LABEL_14;
    case '-':
      v11 = *a1 & 0xE7 | 8;
      goto LABEL_14;
  }

LABEL_15:
  if ((a3 & 2) == 0 || *result != 35 || (*a1 |= 0x20u, ++result, v14 = result, result != v5))
  {
    if ((a3 & 4) == 0 || *result != 48)
    {
      goto LABEL_23;
    }

    if ((*a1 & 7) == 0)
    {
      *a1 |= 4u;
    }

    v14 = ++result;
    if (result != v5)
    {
LABEL_23:
      v12 = std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, &v14, v5, a2);
      result = v14;
      if (!v12 || v14 != v5)
      {
        if ((a3 & 8) == 0 || (v13 = std::__format_spec::__parser<char>::__parse_precision[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, &v14, v5, a2), result = v14, !v13) || v14 != v5)
        {
          if ((a3 & 0x10) == 0 || *result != 76 || (*a1 |= 0x40u, ++result, v14 = result, result != v5))
          {
            if ((a3 & 0x80) == 0 || *result != 110 || (*a1 |= 0x80u, ++result, v14 = result, result != v5))
            {
              if ((a3 & 0x20) != 0)
              {
                std::__format_spec::__parser<char>::__parse_type[abi:ne200100]<char const*>(a1, &v14);
              }

              result = v14;
              if ((a3 & 0x100) != 0 && v14 != v5 && *v14 != 125)
              {
                std::__throw_format_error[abi:ne200100]("The format specifier should consume the input or end with a '}'");
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__format_spec::__process_parsed_BOOL[abi:ne200100]<char>(uint64_t result, const char *a2)
{
  v2 = *(result + 1);
  if (v2 - 2 >= 6)
  {
    if (v2 > 1)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a2);
    }

    v3 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:ne200100](result, 48, a2, -1);
    if ((*v3 & 7) == 0)
    {
      *v3 |= 1u;
    }
  }

  return result;
}

uint64_t std::__format_spec::__parser<char>::__parse_fill_align[abi:ne200100]<char const*>(_BYTE *a1, unsigned __int8 **a2, unsigned __int8 *a3)
{
  v15[0] = *a2;
  v15[1] = a3;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v15) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("The format specifier contains malformed Unicode characters");
  }

  v6 = v15[0];
  if (v15[0] >= a3)
  {
    goto LABEL_7;
  }

  v7 = *v15[0];
  switch(v7)
  {
    case '<':
      v8 = 1;
LABEL_17:
      *a1 = *a1 & 0xF8 | v8;
      v13 = *a2;
      v14 = v6 - *a2;
      if (v14 == 1)
      {
        if (*v13 == 123)
        {
          std::__throw_format_error[abi:ne200100]("The fill option contains an invalid value");
        }
      }

      else if (v6 == v13)
      {
LABEL_22:
        v11 = &v13[v14];
        goto LABEL_23;
      }

      memmove(a1 + 12, v13, v14);
      v13 = *a2;
      goto LABEL_22;
    case '>':
      v8 = 3;
      goto LABEL_17;
    case '^':
      v8 = 2;
      goto LABEL_17;
  }

LABEL_7:
  v9 = **a2;
  switch(v9)
  {
    case '<':
      v10 = 1;
      break;
    case '>':
      v10 = 3;
      break;
    case '^':
      v10 = 2;
      break;
    default:
      return 0;
  }

  *a1 = *a1 & 0xF8 | v10;
  v11 = *a2;
LABEL_23:
  *a2 = v11 + 1;
  return 1;
}

uint64_t std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *a2;
  v7 = **a2;
  if (v7 == 123)
  {
    v9 = v6 + 1;
    *a2 = v9;
    v10 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v9, a3, a4);
    *(a1 + 2) |= 0x4000u;
  }

  else
  {
    if (v7 == 48)
    {
      std::__throw_format_error[abi:ne200100]("The width option should not have a leading zero");
    }

    if ((v7 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }

    v10 = std::__format::__parse_number[abi:ne200100]<char const*>(v6, a3);
  }

  *(a1 + 4) = v11;
  *a2 = v10;
  return 1;
}

BOOL std::__format_spec::__parser<char>::__parse_precision[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = **a2;
  if (v5 == 46)
  {
    v8 = v4 + 1;
    *a2 = v4 + 1;
    if (v4 + 1 == a3)
    {
      std::__throw_format_error[abi:ne200100]("End of input while parsing format specifier precision");
    }

    v9 = *v8;
    if (v9 == 123)
    {
      *a2 = v4 + 2;
      v10 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 2, a3, a4);
      *(a1 + 2) |= 0x8000u;
      *(a1 + 8) = v11;
    }

    else
    {
      if ((v9 - 58) <= 0xFFFFFFF5)
      {
        std::__throw_format_error[abi:ne200100]("The precision option does not contain a value or an argument index");
      }

      v10 = std::__format::__parse_number[abi:ne200100]<char const*>(v8, a3);
      *(a1 + 8) = v12;
      *(a1 + 2) &= ~0x8000u;
    }

    *a2 = v10;
  }

  return v5 == 46;
}

uint64_t std::__format_spec::__parser<char>::__parse_type[abi:ne200100]<char const*>(uint64_t result, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3 <= 0x61)
  {
    if (**a2 <= 0x45u)
    {
      if (**a2 > 0x41u)
      {
        if (v3 == 66)
        {
          v4 = 3;
        }

        else
        {
          if (v3 != 69)
          {
            return result;
          }

          v4 = 14;
        }
      }

      else if (v3 == 63)
      {
        v4 = 19;
      }

      else
      {
        if (v3 != 65)
        {
          return result;
        }

        v4 = 12;
      }
    }

    else if (**a2 <= 0x4Fu)
    {
      if (v3 == 70)
      {
        v4 = 16;
      }

      else
      {
        if (v3 != 71)
        {
          return result;
        }

        v4 = 18;
      }
    }

    else
    {
      switch(v3)
      {
        case 'P':
          v4 = 9;
          break;
        case 'X':
          v4 = 7;
          break;
        case 'a':
          v4 = 11;
          break;
        default:
          return result;
      }
    }
  }

  else if (**a2 > 0x66u)
  {
    if (**a2 <= 0x6Fu)
    {
      if (v3 == 103)
      {
        v4 = 17;
      }

      else
      {
        if (v3 != 111)
        {
          return result;
        }

        v4 = 4;
      }
    }

    else
    {
      switch(v3)
      {
        case 'p':
          v4 = 8;
          break;
        case 's':
          v4 = 1;
          break;
        case 'x':
          v4 = 6;
          break;
        default:
          return result;
      }
    }
  }

  else if (**a2 <= 0x63u)
  {
    if (v3 == 98)
    {
      v4 = 2;
    }

    else
    {
      if (v3 != 99)
      {
        return result;
      }

      v4 = 10;
    }
  }

  else if (v3 == 100)
  {
    v4 = 5;
  }

  else if (v3 == 101)
  {
    v4 = 13;
  }

  else
  {
    v4 = 15;
  }

  *(result + 1) = v4;
  *a2 = (v2 + 1);
  return result;
}

unsigned __int8 *std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    std::__throw_format_error[abi:ne200100]("End of input while parsing an argument index");
  }

  v4 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v4 == a2 || *v4 != 125)
  {
    std::__throw_format_error[abi:ne200100]("The argument index is invalid");
  }

  return v4 + 1;
}

void std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](const char *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v8, "The type option contains an invalid value for ");
  v2 = strlen(a1);
  v3 = std::string::append(&v8, a1, v2);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v9, " formatting argument", 0x14uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v11 = v5->__r_.__value_.__r.__words[2];
  v10 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (v11 >= 0)
  {
    v7 = &v10;
  }

  else
  {
    v7 = v10;
  }

  std::__throw_format_error[abi:ne200100](v7);
}

void sub_2578B4414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__format_spec::__parser<char>::__validate[abi:ne200100](uint64_t result, char a2, const char *a3, int a4)
{
  if ((a2 & 1) == 0 && (*result & 0x18) != 0)
  {
    v6 = "sign";
    goto LABEL_23;
  }

  if ((a2 & 2) == 0 && (*result & 0x20) != 0)
  {
    v6 = "alternate form";
    goto LABEL_23;
  }

  if ((a2 & 4) == 0 && (*result & 7) == 4)
  {
    v6 = "zero-padding";
    goto LABEL_23;
  }

  if ((a2 & 8) == 0 && *(result + 8) != -1)
  {
    v6 = "precision";
    goto LABEL_23;
  }

  if ((a2 & 0x10) == 0 && (*result & 0x40) != 0)
  {
    v6 = "locale-specific form";
LABEL_23:
    std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](a3, v6);
  }

  v4 = *(result + 1);
  if (*(result + 1))
  {
    if (v4 >= 0x20)
    {
      std::__throw_format_error[abi:ne200100]("The type does not fit in the mask");
    }

    v5 = 1 << v4;
  }

  else
  {
    v5 = 1;
  }

  if ((v5 & a4) == 0)
  {
    std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a3);
  }

  return result;
}

void std::__format_spec::__throw_invalid_option_format_error[abi:ne200100](const char *a1, const char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v15, "The format specifier for ");
  v4 = strlen(a1);
  v5 = std::string::append(&v15, a1, v4);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v16, " does not allow the ", 0x14uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = strlen(a2);
  v10 = std::string::append(&v17, a2, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v18, " option", 7uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v20 = v12->__r_.__value_.__r.__words[2];
  v19 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v20 >= 0)
  {
    v14 = &v19;
  }

  else
  {
    v14 = v19;
  }

  std::__throw_format_error[abi:ne200100](v14);
}

void sub_2578B4640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__format_BOOL[abi:ne200100]<char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(int a1, void **a2, uint64_t a3, unint64_t a4)
{
  if ((a3 & 0x40) != 0)
  {
    std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a2, &v17);
    v12 = std::locale::use_facet(&v17, MEMORY[0x277D826C0]);
    std::locale::~locale(&v17);
    v13 = v12->__vftable;
    if (a1)
    {
      (v13[2].~facet)(&v17, v12);
    }

    else
    {
      (v13[2].~facet_0)(&v17, v12);
    }

    if ((v19 & 0x80u) == 0)
    {
      locale = &v17;
    }

    else
    {
      locale = v17.__locale_;
    }

    if ((v19 & 0x80u) == 0)
    {
      v15 = v19;
    }

    else
    {
      v15 = v18;
    }

    v16 = std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(locale, v15, *a2, a3, a4);
    if (v19 < 0)
    {
      operator delete(v17.__locale_);
    }

    return v16;
  }

  else
  {
    if (a1)
    {
      v8 = 4;
    }

    else
    {
      v8 = 5;
    }

    v9 = *a2;
    if (a1)
    {
      v10 = "true";
    }

    else
    {
      v10 = "false";
    }

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v8, v9, a3, a4, v8);
  }
}

void sub_2578B4828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = std::__format_spec::__parser<char>::__get_width[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2);
  std::__format_spec::__parser<char>::__get_precision[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2);
  return (v5 << 8) | (v6 << 32) | v4 & 0x7F;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, v12, 0, 0xAu);
    }

    v10 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v14;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) > 5u)
  {
    v10 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = v12;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, v12, 0, 0xAu);
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v11, v13, v5, 8u);
}

std::locale *std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100]@<X0>(uint64_t a1@<X0>, std::locale *a2@<X8>)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    MEMORY[0x259C68270](&v5);
    std::optional<std::locale>::operator=[abi:ne200100]<std::locale,void>(a1 + 32, &v5);
    std::locale::~locale(&v5);
  }

  return std::locale::locale(a2, (a1 + 32));
}

void *std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a4 <= 0)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
    return a3;
  }

  else
  {
    v10 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, HIDWORD(a4), 1);

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5, v10);
  }
}

uint64_t std::optional<std::locale>::operator=[abi:ne200100]<std::locale,void>(uint64_t a1, const std::locale *a2)
{
  if (*(a1 + 8) == 1)
  {
    std::locale::operator=(a1, a2);
  }

  else
  {
    std::locale::locale(a1, a2);
    *(a1 + 8) = 1;
  }

  return a1;
}

uint64_t std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(unsigned __int8 *a1, uint64_t a2, unint64_t a3, int a4)
{
  result = 0;
  if (a2 && a3)
  {
    if (*a1 < 0)
    {
      v8 = a1;
    }

    else
    {
      v7 = 0;
      v8 = &a1[a3 - 1];
      while (1)
      {
        if (a2 - 1 == v7)
        {
          return a2;
        }

        if (a3 - 1 == v7)
        {
          break;
        }

        v9 = a1[++v7];
        if (v9 < 0)
        {
          a3 = a3 - v7 + 1;
          v8 = &a1[v7 - 1];
          return v8 - a1 + std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(v8, &a1[a2], a3, a4);
        }
      }

      if ((a1[a3] & 0x80000000) == 0)
      {
        return a3;
      }

      a3 = 1;
    }

    return v8 - a1 + std::__format_spec::__detail::__estimate_column_width_grapheme_clustering[abi:ne200100]<char const*>(v8, &a1[a2], a3, a4);
  }

  return result;
}

void *std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a4 >> 32) - a6;
  if (a4 >> 32 <= a6)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
    return a3;
  }

  v10 = HIDWORD(a5);
  if ((a4 & 7u) > 1)
  {
    if ((a4 & 7) != 3)
    {
      v11 = v9 >> 1;
      v9 -= v9 >> 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((a4 & 7) == 0)
  {
LABEL_7:
    v11 = (a4 >> 32) - a6;
    v9 = 0;
    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:
  v13 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v11, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v13, __src, a2);

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v13, v9, v10);
}

void *std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(void *result, char *__src, size_t a3)
{
  v4 = result;
  v5 = result[4];
  if (v5)
  {
    v7 = *v5;
    v6 = v5[1];
    if (*v5 - v6 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = *v5 - v6;
    }

    v5[1] = v6 + a3;
    if (v7 <= v6 || v8 == 0)
    {
      return result;
    }
  }

  else
  {
    v8 = a3;
  }

  v10 = result[2];
  do
  {
    v11 = *(v4 + 8) - v10;
    if (v11 < v8 + 1)
    {
      result = (*(v4 + 24))(v4, v8 + 2);
      v10 = *(v4 + 16);
      v11 = *(v4 + 8) - v10;
    }

    if (v11 >= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      result = memmove((*v4 + v10), __src, v12);
      v10 = *(v4 + 16);
    }

    v10 += v12;
    *(v4 + 16) = v10;
    __src += v12;
    v13 = v8 > v11;
    v8 -= v12;
  }

  while (v13);
  return result;
}

uint64_t std::__unicode::__extended_grapheme_cluster_view<char>::__consume[abi:ne200100](uint64_t a1)
{
  v3 = a1 + 16;
  v2 = *(a1 + 16);
    ;
  }

  return v2;
}

uint64_t std::__width_estimation_table::__estimated_width[abi:ne200100](unsigned int a1)
{
  if (a1 - 262142 < 0xFFFC1102)
  {
    return 1;
  }

  v2 = 107;
  v3 = "_";
  do
  {
    v4 = v2 >> 1;
    v5 = &v3[4 * (v2 >> 1)];
    v7 = *v5;
    v6 = (v5 + 1);
    v2 += ~(v2 >> 1);
    if (((a1 << 14) | 0x3FFF) >= v7)
    {
      v3 = v6;
    }

    else
    {
      v2 = v4;
    }
  }

  while (v2);
  v1 = 1;
  if (v3 != "_")
  {
    if ((*(v3 - 1) & 0x3FFFu) + (*(v3 - 1) >> 14) < a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return v1;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__extended_grapheme_cluster_break[abi:ne200100](uint64_t a1, unsigned int a2)
{
  *a1 = a2;
  v4 = std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](a2);
  *(a1 + 4) = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v4 == 3)
  {
    v5 = 2;
    goto LABEL_7;
  }

  if (v4 == 9)
  {
    v5 = 3;
LABEL_7:
    *(a1 + 8) = v5;
    return a1;
  }

  if (!std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
  {
    v5 = 1;
    goto LABEL_7;
  }

  return a1;
}

uint64_t std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 1496;
  v2 = &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 16;
  if (v2 != &std::__extended_grapheme_custer_property_boundary::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 4) & 0x7F) + (v8 >> 11);
    v10 = v8 & 0xF;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 16;
    }
  }

  return v7;
}

uint64_t std::__indic_conjunct_break::__get_property[abi:ne200100](unsigned int a1)
{
  v1 = 201;
  v2 = &std::__indic_conjunct_break::__entries[abi:ne200100];
  do
  {
    v3 = v1 >> 1;
    v4 = &v2[v1 >> 1];
    v6 = *v4;
    v5 = v4 + 1;
    v1 += ~(v1 >> 1);
    if (((a1 << 11) | 0x7FF) >= v6)
    {
      v2 = v5;
    }

    else
    {
      v1 = v3;
    }
  }

  while (v1);
  v7 = 3;
  if (v2 != &std::__indic_conjunct_break::__entries[abi:ne200100])
  {
    v8 = *(v2 - 1);
    v9 = ((v8 >> 2) & 0x1FF) + (v8 >> 11);
    v10 = v8 & 3;
    if (v9 >= a1)
    {
      return v10;
    }

    else
    {
      return 3;
    }
  }

  return v7;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      return std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB11_emoji[abi:ne200100](a1, a2, a3);
    }

    *(a1 + 8) = 0;
    if (a3 == 9)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB9c_indic_conjunct_break[abi:ne200100](a1, a2, a3);
  }

  return std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](a1, a2, a3);
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v5 = *(a1 + 4);
  if (a3 == 5 && !*(a1 + 4))
  {
    return 0;
  }

  result = 1;
  v7 = v5 > 5 || ((1 << v5) & 0x23) == 0;
  if (v7 && (a3 > 5 || ((1 << a3) & 0x23) == 0))
  {
    if (v5 > 6)
    {
      if (v5 != 7)
      {
        if (v5 != 12)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 2817;
    }

    else
    {
      if (v5 != 4)
      {
        if (v5 != 6)
        {
          goto LABEL_21;
        }

LABEL_17:
        if ((a3 - 11) >= 2u)
        {
LABEL_21:
          if (a3 == 11 && v5 == 11 || a3 <= 0xD && ((1 << a3) & 0x2404) != 0 || v5 == 8)
          {
            return 0;
          }

LABEL_30:
          if (std::__indic_conjunct_break::__get_property[abi:ne200100](a2))
          {
            if (a3 == 9)
            {
              v12 = 3;
              v11 = 8;
              goto LABEL_37;
            }

            if (a3 != 3)
            {
              return 1;
            }

            v10 = 2;
            v11 = 12;
          }

          else
          {
            v10 = 1;
            v11 = 16;
          }

          v12 = 0;
          *(a1 + 8) = v10;
LABEL_37:
          *(a1 + v11) = v12;
          return 1;
        }

        return 0;
      }

      v8 = a3 - 2;
      if (a3 - 2 >= 0xC)
      {
        goto LABEL_30;
      }

      v9 = 3381;
    }

    if (((v9 >> v8) & 1) == 0)
    {
      goto LABEL_30;
    }

    return 0;
  }

  return result;
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB9c_indic_conjunct_break[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = std::__indic_conjunct_break::__get_property[abi:ne200100](a2);
  if (v6 != 3)
  {
    if (*(a1 + 16))
    {
      if ((v6 - 1) >= 2)
      {
        if (v6)
        {
          goto LABEL_2;
        }

        *(a1 + 16) = 0;
      }
    }

    else if (v6 != 1)
    {
      if (v6 != 2)
      {
        goto LABEL_2;
      }

      *(a1 + 16) = 1;
    }

    return 0;
  }

LABEL_2:
  *(a1 + 8) = 0;

  return std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](a1, a2, a3);
}

uint64_t std::__unicode::__extended_grapheme_cluster_break::__evaluate_GB11_emoji[abi:ne200100](uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 12);
  if (v3 == 2)
  {
    if (a3 == 3)
    {
      *(a1 + 12) = 0;
      return 0;
    }

LABEL_11:
    *(a1 + 8) = 0;
    return std::__unicode::__extended_grapheme_cluster_break::__evaluate_none[abi:ne200100](a1, a2, a3);
  }

  if (v3 != 1)
  {
    if (a3 == 13)
    {
LABEL_12:
      v4 = 2;
      goto LABEL_13;
    }

    if (a3 == 2)
    {
      v4 = 1;
LABEL_13:
      *(a1 + 12) = v4;
      return 0;
    }

    goto LABEL_11;
  }

  if (a3 != 2)
  {
    if (a3 != 13)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  return 0;
}

void *std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(void *a1, size_t a2, int a3)
{
  v3 = a2;
  __src = a3;
  v5 = __clz(~a3);
  v6 = v5 - 24;
  if (v5 == 24)
  {
    std::__format::__output_buffer<char>::__fill[abi:ne200100](a1, a2, a3);
  }

  else if (a2)
  {
    do
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, &__src, v6);
      --v3;
    }

    while (v3);
  }

  return a1;
}

void *std::__format::__output_buffer<char>::__fill[abi:ne200100](void *result, size_t a2, int __c)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = *v6;
  v7 = v6[1];
  if (*v6 - v7 < a2)
  {
    v4 = *v6 - v7;
  }

  v6[1] = v7 + a2;
  if (v8 > v7 && v4 != 0)
  {
LABEL_8:
    v10 = result[2];
    do
    {
      v11 = *(v5 + 8) - v10;
      if (v11 < v4 + 1)
      {
        result = (*(v5 + 24))(v5, v4 + 2);
        v10 = *(v5 + 16);
        v11 = *(v5 + 8) - v10;
      }

      if (v11 >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        result = memset((*v5 + v10), __c, v12);
        v10 = *(v5 + 16);
      }

      v10 += v12;
      *(v5 + 16) = v10;
      v13 = v4 > v11;
      v4 -= v12;
    }

    while (v13);
  }

  return result;
}

unint64_t std::__format_spec::__parser<char>::__get_width[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, void *a2)
{
  *&v13[23] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 2) & 0x4000) == 0)
  {
    return *(a1 + 4);
  }

  v4 = *(a1 + 4);
  v5 = a2[1];
  if (v5 <= v4)
  {
    LOBYTE(v6) = 0;
  }

  else if (v5 > 0xC)
  {
    v8 = a2[2] + 32 * v4;
    v4 = *v8;
    v2 = *(v8 + 8);
    LOBYTE(v6) = *(v8 + 16);
    v10[0] = *(v8 + 17);
    *(v10 + 7) = *(v8 + 24);
  }

  else
  {
    v6 = (a2[3] >> (5 * v4)) & 0x1FLL;
    v7 = (a2[2] + 16 * v4);
    v4 = *v7;
    v2 = v7[1];
  }

  v11[0] = v4;
  v11[1] = v2;
  v12 = v6;
  *v13 = v10[0];
  *&v13[7] = *(v10 + 7);
  return std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v9, v11);
}

unint64_t std::__format_spec::__parser<char>::__get_precision[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, void *a2)
{
  *&v13[23] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 2) & 0x80000000) == 0)
  {
    return *(a1 + 8);
  }

  v4 = *(a1 + 8);
  v5 = a2[1];
  if (v5 <= v4)
  {
    LOBYTE(v6) = 0;
  }

  else if (v5 > 0xC)
  {
    v8 = a2[2] + 32 * v4;
    v4 = *v8;
    v2 = *(v8 + 8);
    LOBYTE(v6) = *(v8 + 16);
    v10[0] = *(v8 + 17);
    *(v10 + 7) = *(v8 + 24);
  }

  else
  {
    v6 = (a2[3] >> (5 * v4)) & 0x1FLL;
    v7 = (a2[2] + 16 * v4);
    v4 = *v7;
    v2 = v7[1];
  }

  v11[0] = v4;
  v11[1] = v2;
  v12 = v6;
  *v13 = v10[0];
  *&v13[7] = *(v10 + 7);
  return std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v9, v11);
}

unint64_t std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unint64_t *a2)
{
  switch(*(a2 + 16))
  {
    case 1:
    case 2:
    case 5:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      std::__throw_format_error[abi:ne200100]("Replacement argument isn't a standard signed or unsigned integer type");
    case 3:
      result = *a2;
      if ((result & 0x80000000) != 0)
      {
        std::__throw_format_error[abi:ne200100]("An argument index may not have a negative value");
      }

      return result;
    case 4:

      return std::invoke[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},long long &>(a1, a2);
    case 6:
      result = *a2;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_7;
      }

      return result;
    case 7:
      result = *a2;
      if (*a2 >> 31)
      {
LABEL_7:
        std::__throw_format_error[abi:ne200100]("The value of the argument index exceeds its maximum value");
      }

      return result;
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

unint64_t std::invoke[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},long long &>(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("An argument index may not have a negative value");
  }

  if (result >> 31)
  {
    std::__throw_format_error[abi:ne200100]("The value of the argument index exceeds its maximum value");
  }

  return result;
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned int,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned int a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, unsigned int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16 = v17;
          v16 = (v16 + 1);
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:ne200100]<unsigned int>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a2, &v43);
  v21 = std::locale::use_facet(&v43, MEMORY[0x277D826C0]);
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v45)
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (v45 < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + v45;
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_2578B59E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(void *a1, char *__src, char *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v11 = a3;
  v13 = a1;
  v14 = HIDWORD(a7);
  v15 = HIDWORD(a8);
  v16 = a3 - __src;
  LODWORD(v17) = *(a5 + 23);
  if ((v17 & 0x80u) != 0)
  {
    v17 = a5[1];
  }

  v18 = a4 - __src - 1 + v17;
  if ((a7 & 7) != 4)
  {
    if (SHIDWORD(a7) <= v18)
    {
      v19 = 0;
LABEL_16:
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v13, __src, v16);
      goto LABEL_17;
    }

    v19 = (a7 >> 32) - v18;
    if ((a7 & 7u) > 1)
    {
      if ((a7 & 7) != 3)
      {
        v20 = v19 >> 1;
        v19 -= v19 >> 1;
        goto LABEL_15;
      }
    }

    else if ((a7 & 7) != 0)
    {
      v20 = 0;
LABEL_15:
      v13 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v20, SHIDWORD(a8));
      goto LABEL_16;
    }

    v20 = (a7 >> 32) - v18;
    v19 = 0;
    goto LABEL_15;
  }

  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, __src, a3 - __src);
  if (v14 > v18)
  {
    std::__format::__output_buffer<char>::__fill[abi:ne200100](v13, v14 - v18, 48);
  }

  v19 = 0;
LABEL_17:
  v21 = *(a5 + 23);
  v22 = v21;
  v23 = a5 + v21;
  if (v22 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = (*a5 + a5[1]);
  }

  if (v22 >= 0)
  {
    v25 = a5;
  }

  else
  {
    v25 = *a5;
  }

  v26 = v25 + 1;
  v27 = v8 & 0xFF00;
  for (i = v24; ; v24 = i)
  {
    v30 = *--i;
    v29 = v30;
    if (v27 == 1792)
    {
      v31 = &v11[v29];
      std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(v13, v11, &v11[v29], std::__formatter::__hex_to_upper[abi:ne200100]);
      v11 = v31;
    }

    else
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v13, v11, v29);
      v11 += *i;
    }

    if (v24 == v26)
    {
      break;
    }

    std::__format::__output_buffer<char>::push_back[abi:ne200100](v13, a6);
  }

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v13, v19, v15);
}

void *std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void))
{
  v10 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 <= a2 - a1)
  {
    std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(a3, a1, a2, a6);
    return a3;
  }

  v11 = HIDWORD(a5);
  if ((a4 & 7u) > 1)
  {
    if ((a4 & 7) != 3)
    {
      v12 = v10 >> 1;
      v10 -= v10 >> 1;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((a4 & 7) == 0)
  {
LABEL_7:
    v12 = (a4 >> 32) - (a2 - a1);
    v10 = 0;
    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:
  v14 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v12, SHIDWORD(a5));
  std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(v14, a1, a2, a6);

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v14, v10, v11);
}

uint64_t std::__formatter::__hex_to_upper[abi:ne200100](int a1)
{
  if ((a1 - 97) >= 6)
  {
    return a1;
  }

  else
  {
    return (a1 - 32);
  }
}

char *std::__to_chars_integral[abi:ne200100]<unsigned int>(_WORD *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v4 = a2;
  HIDWORD(v6) = a4 - 2;
  LODWORD(v6) = a4 - 2;
  v5 = v6 >> 1;
  if (v5 != 4)
  {
    if (!v5)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(a1, a2, a3);
    }

    if (v5 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(a1, a2, a3);
    }

    if (v5 != 7)
    {
      v10 = a2 - a1;
      v11 = std::__to_chars_integral_width[abi:ne200100]<unsigned int>(a3, a4);
      if (v10 < v11)
      {
        return a2;
      }

      v4 = a1 + v11;
      v12 = v4 - 1;
      v13 = a3;
      do
      {
        *v12-- = a0123456789abcd[v13 % a4];
        v14 = v13 >= a4;
        v13 /= a4;
      }

      while (v14);
      return v4;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(a1, a2, a3);
  }

  if (a2 - a1 > 9)
  {
    return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
  }

  v7 = (1233 * (32 - __clz(a3 | 1))) >> 12;
  if (a2 - a1 >= (((__PAIR64__(v7, a3) - std::__itoa::__pow10_32[v7]) >> 32) + 1))
  {
    return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
  }

  return v4;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned int>(unsigned int a1, unsigned int a2)
{
  if (a1 < a2)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = v4 * v4;
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < a2 * a2 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

char *std::__itoa::__base_10_u32[abi:ne200100](_WORD *a1, unsigned int a2)
{
  if (a2 >= 0xF4240)
  {
    if (a2 >= 0x5F5E100)
    {
      v7 = a2 / 0x5F5E100;
      if (a2 > 0x3B9AC9FF)
      {
        *a1 = *&std::__itoa::__digits_base_10[2 * v7];
        a1[1] = *&std::__itoa::__digits_base_10[2 * (a2 % 0x5F5E100 / 0xF4240uLL)];
        a1[2] = *&std::__itoa::__digits_base_10[2 * (a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL)];
        v13 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = *&std::__itoa::__digits_base_10[2 * (v13 / 0x64u)];
        a1[4] = *&std::__itoa::__digits_base_10[2 * (v13 % 0x64u)];
        v2 = 10;
      }

      else
      {
        *a1 = v7 | 0x30;
        v8 = (140737489 * (a2 % 0x5F5E100)) >> 47;
        *(a1 + 1) = *&std::__itoa::__digits_base_10[2 * v8];
        v9 = a2 % 0x5F5E100 - 1000000 * v8;
        *(a1 + 3) = *&std::__itoa::__digits_base_10[2 * (v9 / 0x2710uLL)];
        v9 %= 0x2710u;
        *(a1 + 5) = *&std::__itoa::__digits_base_10[2 * (v9 / 0x64u)];
        *(a1 + 7) = *&std::__itoa::__digits_base_10[2 * (v9 % 0x64u)];
        v2 = 9;
      }
    }

    else
    {
      v3 = a2 / 0xF4240;
      if (a2 > 0x98967F)
      {
        *a1 = *&std::__itoa::__digits_base_10[2 * v3];
        a1[1] = *&std::__itoa::__digits_base_10[2 * (a2 % 0xF4240 / 0x2710uLL)];
        v11 = a2 % 0xF4240 % 0x2710;
        a1[2] = *&std::__itoa::__digits_base_10[2 * (v11 / 0x64u)];
        a1[3] = *&std::__itoa::__digits_base_10[2 * (v11 % 0x64u)];
        v2 = 8;
      }

      else
      {
        *a1 = v3 + 48;
        v4 = (429497 * (a2 % 0xF4240)) >> 32;
        *(a1 + 1) = *&std::__itoa::__digits_base_10[2 * v4];
        v5 = a2 % 0xF4240 - 10000 * v4;
        *(a1 + 3) = *&std::__itoa::__digits_base_10[2 * (v5 / 0x64u)];
        *(a1 + 5) = *&std::__itoa::__digits_base_10[2 * (v5 % 0x64u)];
        v2 = 7;
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v6 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = *&std::__itoa::__digits_base_10[2 * v6];
      v12 = a2 % 0x2710;
      a1[1] = *&std::__itoa::__digits_base_10[2 * (v12 / 0x64u)];
      a1[2] = *&std::__itoa::__digits_base_10[2 * (v12 % 0x64u)];
      v2 = 6;
    }

    else
    {
      *a1 = v6 | 0x30;
      *(a1 + 1) = *&std::__itoa::__digits_base_10[2 * ((5243 * (a2 % 0x2710)) >> 19)];
      *(a1 + 3) = *&std::__itoa::__digits_base_10[2 * (a2 % 0x2710 - 100 * (((5243 * (a2 % 0x2710)) >> 16) >> 3))];
      v2 = 5;
    }
  }

  else if (a2 > 0x63)
  {
    v10 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = *&std::__itoa::__digits_base_10[2 * v10];
      a1[1] = *&std::__itoa::__digits_base_10[2 * (a2 % 0x64u)];
      v2 = 4;
    }

    else
    {
      *a1 = v10 | 0x30;
      *(a1 + 1) = *&std::__itoa::__digits_base_10[2 * (a2 % 0x64u)];
      v2 = 3;
    }
  }

  else if (a2 > 9)
  {
    *a1 = *&std::__itoa::__digits_base_10[2 * a2];
    v2 = 2;
  }

  else
  {
    *a1 = a2 | 0x30;
    v2 = 1;
  }

  return a1 + v2;
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = 32 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (86 * (34 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = (35 - __clz(a3 | 1)) >> 2;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = std::__itoa::__base_16_lut[a3];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

uint64_t std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(uint64_t result, char *a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a2;
  v6 = result;
  v7 = a3 - a2;
  v8 = *(result + 32);
  if (v8)
  {
    v10 = *v8;
    v9 = v8[1];
    if (*v8 - v9 >= v7)
    {
      v11 = a3 - a2;
    }

    else
    {
      v11 = *v8 - v9;
    }

    v8[1] = v9 + v7;
    if (v10 <= v9 || v11 == 0)
    {
      return result;
    }
  }

  else
  {
    v11 = a3 - a2;
  }

  v13 = *(result + 16);
  do
  {
    v14 = *(v6 + 8) - v13;
    if (v14 < v11 + 1)
    {
      result = (*(v6 + 24))(v6, v11 + 2);
      v13 = *(v6 + 16);
      v14 = *(v6 + 8) - v13;
    }

    if (v14 >= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      v16 = (*v6 + v13);
      v17 = v15;
      v18 = v5;
      do
      {
        v19 = *v18++;
        result = a4(v19);
        *v16++ = result;
        --v17;
      }

      while (v17);
      v13 = *(v6 + 16);
    }

    v5 += v15;
    v13 += v15;
    *(v6 + 16) = v13;
    v20 = v11 > v14;
    v11 -= v15;
  }

  while (v20);
  return result;
}

void *std::__formatter_char<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v5 = *(a1 + 1);
  if (!*(a1 + 1))
  {
    goto LABEL_4;
  }

  if (v5 == 19)
  {
    v10 = *a3;
    v12 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_escaped_char[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v10, v12, v11);
  }

  else
  {
    if (v5 == 10)
    {
LABEL_4:
      v6 = *a3;
      v7 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
      __src = a2;
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, v6, v7, v8, 1);
    }

    v14 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v14, v13, 0);
  }
}

uint64_t std::__format_spec::__process_parsed_char[abi:ne200100]<char>(uint64_t result, const char *a2)
{
  v2 = *(result + 1);
  if (v2 - 2 >= 6)
  {
    v3 = v2 > 0x13;
    v4 = (1 << v2) & 0x80401;
    if (v3 || v4 == 0)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a2);
    }

    v6 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:ne200100](result, 48, a2, -1);
    if ((*v6 & 7) == 0)
    {
      *v6 |= 1u;
    }
  }

  return result;
}

void *std::__formatter::__format_escaped_char[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned __int8 a1, void *a2, uint64_t a3, unint64_t a4)
{
  v13 = a1;
  memset(&__p, 0, sizeof(__p));
  std::string::push_back(&__p, 39);
  std::__formatter::__escape[abi:ne200100]<char>(&__p, &v13, 1, 0);
  std::string::push_back(&__p, 39);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &__p + HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = (__p.__r_.__value_.__r.__words[0] + __p.__r_.__value_.__l.__size_);
  }

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

  v10 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(p_p, v7 - p_p, a2, a3, a4, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_2578B6794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__formatter::__escape[abi:ne200100]<char>(std::string *a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v13 = a2;
  v14 = &a2[a3];
  if (a3)
  {
    v5 = a2;
    v7 = 1;
    do
    {
      v8 = std::__unicode::__code_point_view<char>::__consume[abi:ne200100](&v13);
      if (v8 < 0)
      {
        v9 = v13;
        while (v5 != v9)
        {
          v10 = *v5++;
          std::__formatter::__write_escaped_code_unit[abi:ne200100]<char>(a1, v10, "\\x{");
        }
      }

      else if (std::__formatter::__is_escaped_sequence_written[abi:ne200100]<char>(a1, v8, v7 & 1, a4))
      {
        v7 = 1;
      }

      else
      {
        v11 = v13;
        while (v5 != v11)
        {
          v12 = *v5++;
          std::string::push_back(a1, v12);
        }

        v7 = 0;
      }

      v5 = v13;
    }

    while (v13 != v14);
  }
}

uint64_t std::__formatter::__is_escaped_sequence_written[abi:ne200100]<char>(std::string *a1, signed int a2, int a3, int a4)
{
  if (a2 <= 31)
  {
    switch(a2)
    {
      case 9:
        v4 = "\\t";
        goto LABEL_25;
      case 10:
        v4 = "\\n";
        goto LABEL_25;
      case 13:
        v4 = "\\r";
        goto LABEL_25;
    }
  }

  else if (a2 > 38)
  {
    if (a2 == 39)
    {
      if (!a4)
      {
        v4 = "\\'";
        goto LABEL_25;
      }

      v6 = 39;
      goto LABEL_23;
    }

    if (a2 == 92)
    {
      v4 = "\\\";
      goto LABEL_25;
    }
  }

  else
  {
    if (a2 == 32)
    {
      v6 = 32;
      goto LABEL_23;
    }

    if (a2 == 34)
    {
      if (a4 == 1)
      {
        v4 = "\\"";
LABEL_25:
        std::string::append(a1, v4, 2uLL);
        return 1;
      }

      v6 = 34;
LABEL_23:
      std::string::push_back(a1, v6);
      return 1;
    }
  }

  return std::__formatter::__is_escaped_sequence_written[abi:ne200100]<char>(a1, a3, a2);
}

uint64_t std::__formatter::__is_escaped_sequence_written[abi:ne200100]<char>(std::string *a1, int a2, unsigned int a3)
{
  if (!std::__escaped_output_table::__needs_escape[abi:ne200100](a3) && (!a2 || std::__extended_grapheme_custer_property_boundary::__get_property[abi:ne200100](a3) != 2))
  {
    return 0;
  }

  std::__formatter::__write_escaped_code_unit[abi:ne200100]<char>(a1, a3, "\\u{");
  return 1;
}

BOOL std::__escaped_output_table::__needs_escape[abi:ne200100](unsigned int a1)
{
  if (a1 - 917760 < 0xF0)
  {
    return 0;
  }

  if (a1 > 0x323AF)
  {
    return 1;
  }

  v2 = 711;
  v3 = &std::__escaped_output_table::__entries[abi:ne200100];
  do
  {
    v4 = v2 >> 1;
    v5 = &v3[v2 >> 1];
    v7 = *v5;
    v6 = v5 + 1;
    v2 += ~(v2 >> 1);
    if (((a1 << 14) | 0x3FFF) >= v7)
    {
      v3 = v6;
    }

    else
    {
      v2 = v4;
    }
  }

  while (v2);
  if (v3 == &std::__escaped_output_table::__entries[abi:ne200100])
  {
    return 0;
  }

  return (*(v3 - 1) & 0x3FFF) + (*(v3 - 1) >> 14) >= a1;
}

void std::__formatter::__write_escaped_code_unit[abi:ne200100]<char>(std::string *this, unsigned int a2, std::string::value_type *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  if (*a3)
  {
    v6 = (a3 + 1);
    do
    {
      std::string::push_back(this, v5);
      v7 = *v6++;
      v5 = v7;
    }

    while (v7);
  }

  v8 = std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned int>(&v10, &v11, a2);
  if (&v10 != v8)
  {
    v9 = &v10;
    do
    {
      std::string::push_back(this, *v9++);
    }

    while (v9 != v8);
  }

  std::string::push_back(this, 125);
}

void *std::__formatter_integer<char>::format[abi:ne200100]<int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, int a2, void *a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:ne200100]<char,int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {
    if (a2 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = -a2;
    }

    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v10, a3, v6, v5, a2 < 0);
  }
}

uint64_t std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(uint64_t result, const char *a2)
{
  v2 = *(result + 1);
  if ((v2 - 2) >= 6 && v2 != 0)
  {
    if (v2 != 10)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](a2);
    }

    v4 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:ne200100](result, 48, a2, -1);
    if ((*v4 & 7) == 0)
    {
      *v4 |= 1u;
    }
  }

  return result;
}

void *std::__formatter::__format_char[abi:ne200100]<char,int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(int a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 != a1)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
}

void *std::__formatter_integer<char>::format[abi:ne200100]<long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, uint64_t a2, void *a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:ne200100]<char,long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {
    if (a2 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = -a2;
    }

    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v10, a3, v6, v5, a2 < 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 != a1)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (BYTE1(a3) <= 3u)
  {
    if (!BYTE1(a3))
    {
      return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 10);
    }

    v10 = 2;
    if (BYTE1(a3) == 2)
    {
      v7 = "0b";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v7 = "0B";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v13;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) > 5u)
  {
    v10 = 16;
    if (BYTE1(a3) == 6)
    {
      v7 = "0x";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v7 = "0X";
      v8 = a3 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v12;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, v8, a4, a5, v11, v9, v7, v10);
  }

  if (BYTE1(a3) != 4)
  {
    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, v11, &v12 + 2, 0, 10);
  }

  if (a1)
  {
    v5 = "0";
  }

  else
  {
    v5 = 0;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3 & 0xFFFFFFFFFFFF00FFLL | 0x400, a4, a5, v11, &v12 + 5, v5, 8);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, void **a2, unint64_t a3, unint64_t a4, char a5, char *a6, uint64_t a7, _BYTE *a8, signed int a9)
{
  v9 = a6;
  v13 = a3;
  if (a5)
  {
    v14 = 45;
LABEL_7:
    *a6 = v14;
    v16 = a6 + 1;
    goto LABEL_8;
  }

  v15 = (a3 >> 3) & 3;
  if (v15 == 2)
  {
    v14 = 43;
    goto LABEL_7;
  }

  v16 = a6;
  if (v15 == 3)
  {
    v14 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a3 & 0x20) != 0)
  {
    if (a8)
    {
      v17 = *a8;
      if (*a8)
      {
        v18 = a8 + 1;
        do
        {
          *v16++ = v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  v20 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v16, a7, a1, a9);
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a2, &v43);
  v21 = std::locale::use_facet(&v43, MEMORY[0x277D826C0]);
  std::locale::~locale(&v43);
  (v21->__vftable[1].__on_zero_shared)(&v43, v21);
  if ((v45 & 0x8000000000000000) != 0)
  {
    locale = v43.__locale_;
    if (!v44)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v45)
    {
      goto LABEL_41;
    }

    locale = &v43;
  }

  if (v20 - v16 <= *locale)
  {
    if (v45 < 0)
    {
      locale = v43.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v35 = HIDWORD(a3);
    if ((v13 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v9, v16 - v9);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v16 - v9)
      {
        LODWORD(v37) = v16 - v9;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v9 = v16;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v38 = *a2;
    v39 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20, v38, v39 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v9, v20 - v9, v38, v39 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v20 - v9);
    }
  }

  v23 = *a2;
  memset(&__p, 0, sizeof(__p));
  v24 = v43.__locale_ + v44;
  if (v45 < 0)
  {
    v25 = v43.__locale_;
  }

  else
  {
    v24 = &v43 + v45;
    v25 = &v43;
  }

  v26 = *v25;
  v27 = v20 - v16 - *v25;
  if (v27 >= 1)
  {
    v28 = v24 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (v25 == v28)
      {
        v26 = *v25;
      }

      else
      {
        v29 = v25 + 1;
        v30 = v25 + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        v25 = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v21->__vftable[1].~facet_0)(v21);
  v34 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v23, v9, v16, v20, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v45 < 0)
  {
    operator delete(v43.__locale_);
  }

  return v34;
}

void sub_2578B71E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

char *std::__to_chars_integral[abi:ne200100]<unsigned long long>(char *a1, uint64_t a2, unint64_t a3, signed int a4)
{
  v4 = a3;
  v5 = a2;
  HIDWORD(v7) = a4 - 2;
  LODWORD(v7) = a4 - 2;
  v6 = v7 >> 1;
  if (v6 != 4)
  {
    if (!v6)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v6 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v6 != 7)
    {
      v12 = a1;
      v13 = a2 - a1;
      v15 = std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(a3, a4);
      if (v13 < v15)
      {
        return a2;
      }

      v5 = &v12[v15];
      v16 = (v5 - 1);
      do
      {
        *v16-- = a0123456789abcd[(v4 % a4)];
        v17 = v4 >= a4;
        v4 /= a4;
      }

      while (v17);
      return v5;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
  }

  if (a2 - a1 > 19 || (v8 = (1233 * (64 - __clz(a3 | 1))) >> 12, a2 - a1 >= v8 - (std::__itoa::__pow10_64[v8] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      a1 = std::__itoa::__base_10_u32[abi:ne200100](a1, a3 / 0x2540BE400);
      v4 %= 0x2540BE400uLL;
    }

    return std::__itoa::__append10[abi:ne200100]<unsigned long long>(a1, v4);
  }

  return v5;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(unint64_t a1, unsigned int a2)
{
  if (a2 > a1)
  {
    return 1;
  }

  v3 = a1;
  v4 = a2 * a2;
  v5 = (v4 * v4);
  result = 4;
  while (1)
  {
    if (v3 < v4)
    {
      return (result - 2);
    }

    if (v3 < v4 * a2)
    {
      break;
    }

    if (v3 < v5)
    {
      return result;
    }

    v3 /= v5;
    result = (result + 4);
    if (v3 < a2)
    {
      return (result - 3);
    }
  }

  return (result - 1);
}

_WORD *std::__itoa::__append10[abi:ne200100]<unsigned long long>(_WORD *a1, unint64_t a2)
{
  *a1 = *&std::__itoa::__digits_base_10[(a2 / 0x2FAF080) & 0xFFFFFFFE];
  v2 = a2 % 0x5F5E100;
  a1[1] = *&std::__itoa::__digits_base_10[2 * (v2 / 0xF4240uLL)];
  v2 %= 0xF4240u;
  a1[2] = *&std::__itoa::__digits_base_10[2 * (v2 / 0x2710uLL)];
  v2 %= 0x2710u;
  a1[3] = *&std::__itoa::__digits_base_10[2 * (v2 / 0x64u)];
  a1[4] = *&std::__itoa::__digits_base_10[2 * (v2 % 0x64u)];
  return a1 + 5;
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 64 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (86 * (66 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 67 - __clz(a3 | 1);
  if (a2 - a1 < (v3 >> 2))
  {
    return a2;
  }

  v4 = a1 + (v3 >> 2);
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + (v3 >> 2);
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = std::__itoa::__base_16_lut[a3];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

void *std::__formatter_integer<char>::format[abi:ne200100]<__int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  if ((v8 & 0xFF00) == 0xA00)
  {
    v9 = *a4;

    return std::__formatter::__format_char[abi:ne200100]<char,__int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v9, v8, v7);
  }

  else
  {

    v11 = __PAIR128__(a3 ^ (a3 >> 63), a2 ^ (a3 >> 63)) - __PAIR128__(a3 >> 63, a3 >> 63);
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v11, *(&v11 + 1), a4, v8, v7, a3 < 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,__int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (__PAIR128__(-1, -257) >= __PAIR128__((a1 >= 0x80) + a2 - 1, a1 - 128))
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a3, a4, a5, 1);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6)
{
  v15 = *MEMORY[0x277D85DE8];
  if (BYTE1(a4) <= 3u)
  {
    if (!BYTE1(a4))
    {
      return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, v12, &v13 + 5, 0, 10);
    }

    v11 = 2;
    if (BYTE1(a4) == 2)
    {
      v10 = "0b";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x200;
    }

    else
    {
      v10 = "0B";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x300;
    }

    v9 = &v15;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v8, a5, a6, v12, v9, v10, v11);
  }

  if (BYTE1(a4) > 5u)
  {
    v11 = 16;
    if (BYTE1(a4) == 6)
    {
      v10 = "0x";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x600;
    }

    else
    {
      v10 = "0X";
      v8 = a4 & 0xFFFFFFFFFFFF00FFLL | 0x700;
    }

    v9 = &v13;
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, v8, a5, a6, v12, v9, v10, v11);
  }

  if (BYTE1(a4) != 4)
  {
    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4, a5, a6, v12, &v13 + 5, 0, 10);
  }

  if (a1 | a2)
  {
    v6 = "0";
  }

  else
  {
    v6 = 0;
  }

  return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2, a3, a4 & 0xFFFFFFFFFFFF00FFLL | 0x400, a5, a6, v12, v14, v6, 8);
}

void *std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, unint64_t a2, void **a3, unint64_t a4, unint64_t a5, char a6, char *a7, uint64_t a8, _BYTE *a9, signed int a10)
{
  v10 = a7;
  v14 = a4;
  if (a6)
  {
    v15 = 45;
LABEL_7:
    *a7 = v15;
    v17 = a7 + 1;
    goto LABEL_8;
  }

  v16 = (a4 >> 3) & 3;
  if (v16 == 2)
  {
    v15 = 43;
    goto LABEL_7;
  }

  v17 = a7;
  if (v16 == 3)
  {
    v15 = 32;
    goto LABEL_7;
  }

LABEL_8:
  if ((a4 & 0x20) != 0)
  {
    if (a9)
    {
      v18 = *a9;
      if (*a9)
      {
        v19 = a9 + 1;
        do
        {
          *v17++ = v18;
          v20 = *v19++;
          v18 = v20;
        }

        while (v20);
      }
    }
  }

  v21 = std::__to_chars_integral[abi:ne200100]<unsigned __int128>(v17, a8, a1, a2, a10);
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a3, &v44);
  v22 = std::locale::use_facet(&v44, MEMORY[0x277D826C0]);
  std::locale::~locale(&v44);
  (v22->__vftable[1].__on_zero_shared)(&v44, v22);
  if ((v46 & 0x8000000000000000) != 0)
  {
    locale = v44.__locale_;
    if (!v45)
    {
LABEL_40:
      operator delete(locale);
      goto LABEL_41;
    }
  }

  else
  {
    if (!v46)
    {
      goto LABEL_41;
    }

    locale = &v44;
  }

  if (v21 - v17 <= *locale)
  {
    if (v46 < 0)
    {
      locale = v44.__locale_;
      goto LABEL_40;
    }

LABEL_41:
    v36 = HIDWORD(a4);
    if ((v14 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a3, v10, v17 - v10);
      v37 = a4 & 0xF8 | 3;
      if (SHIDWORD(a4) >= v17 - v10)
      {
        LODWORD(v38) = v17 - v10;
      }

      else
      {
        LODWORD(v38) = HIDWORD(a4);
      }

      v36 = (HIDWORD(a4) - v38);
      LOBYTE(v38) = 48;
      v10 = v17;
    }

    else
    {
      v38 = HIDWORD(a5);
      v37 = a4;
    }

    v39 = *a3;
    v40 = v36 << 32;
    if ((a4 & 0xFF00) == 0x700)
    {
      return std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v21, v39, v40 | a4 & 0xFFFF0000 | v37 | 0x700, a5 & 0xFFFFFF00FFFFFFFFLL | (v38 << 32), std::__formatter::__hex_to_upper[abi:ne200100]);
    }

    else
    {
      return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v21 - v10, v39, v40 | a4 & 0xFFFFFF00 | v37, a5 & 0xFFFFFF00FFFFFFFFLL | (v38 << 32), v21 - v10);
    }
  }

  v24 = *a3;
  memset(&__p, 0, sizeof(__p));
  v25 = v44.__locale_ + v45;
  if (v46 < 0)
  {
    v26 = v44.__locale_;
  }

  else
  {
    v25 = &v44 + v46;
    v26 = &v44;
  }

  v27 = *v26;
  v28 = v21 - v17 - *v26;
  if (v28 >= 1)
  {
    v29 = v25 - 1;
    do
    {
      std::string::push_back(&__p, v27);
      if (v26 == v29)
      {
        v27 = *v26;
      }

      else
      {
        v30 = v26 + 1;
        v31 = v26 + 1;
        do
        {
          v32 = *v31++;
          v27 = v32;
          if (v32)
          {
            v33 = 1;
          }

          else
          {
            v33 = v30 == v29;
          }

          v30 = v31;
        }

        while (!v33);
        v26 = v31 - 1;
      }

      v28 -= v27;
    }

    while (v28 > 0);
  }

  std::string::push_back(&__p, v27 + v28);
  v34 = (v22->__vftable[1].~facet_0)(v22);
  v35 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v24, v10, v17, v21, &__p, v34, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v46 < 0)
  {
    operator delete(v44.__locale_);
  }

  return v35;
}

void sub_2578B7C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

char *std::__to_chars_integral[abi:ne200100]<unsigned __int128>(char *a1, uint64_t a2, unint64_t a3, unint64_t a4, signed int a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  HIDWORD(v9) = a5 - 2;
  LODWORD(v9) = a5 - 2;
  v8 = v9 >> 1;
  if (v8 != 4)
  {
    if (!v8)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(a1, a2, a3, a4);
    }

    if (v8 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(a1, a2, a3, a4);
    }

    if (v8 != 7)
    {
      v17 = a1;
      v18 = a2 - a1;
      v19 = std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(a3, a4, a5);
      if (v18 >= v19)
      {
        v7 = &v17[v19];
        v20 = (v7 - 1);
        do
        {
          v21 = __udivti3();
          v22 = __PAIR128__(v5, v6) >= a5;
          *v20-- = a0123456789abcd[(v6 - v21 * a5)];
          v6 = v21;
          v5 = v23;
        }

        while (v22);
      }

      return v7;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(a1, a2, a3, a4);
  }

  v10 = a2 - a1;
  if (a4)
  {
    if (v10 <= 38)
    {
      v11 = (1233 * (128 - __clz(a4))) >> 12;
      if (v10 < v11 - (__PAIR128__(a4, a3) < std::__itoa::__pow10_128[v11]) + 1)
      {
        return v7;
      }
    }

    return std::__itoa::__base_10_u128[abi:ne200100](a1, a3, a4);
  }

  if (v10 > 19 || (v12 = (1233 * (64 - __clz(a3 | 1))) >> 12, v10 >= v12 - (std::__itoa::__pow10_64[v12] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
    }

    if (a3 > 0x2540BE3FFLL)
    {
      a1 = std::__itoa::__base_10_u32[abi:ne200100](a1, a3 / 0x2540BE400);
      v6 %= 0x2540BE400uLL;
    }

    return std::__itoa::__append10[abi:ne200100]<unsigned long long>(a1, v6);
  }

  return v7;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned __int128>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (__PAIR128__(a2, a1) < a3)
  {
    return 1;
  }

  v5 = a3 * a3;
  v6 = a3 * a3 * a3;
  v3 = 4;
  while (1)
  {
    if (__PAIR128__(a2, a1) < v5)
    {
      return (v3 - 2);
    }

    if (__PAIR128__(a2, a1) < v6)
    {
      break;
    }

    if (__PAIR128__(a2, a1) < v5 * v5)
    {
      return v3;
    }

    a1 = __udivti3();
    v3 = (v3 + 4);
    if (__PAIR128__(a2, a1) < a3)
    {
      return (v3 - 3);
    }
  }

  return (v3 - 1);
}

_WORD *std::__itoa::__base_10_u128[abi:ne200100](char *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1;
  if (__PAIR128__(a3, a2) >= __PAIR128__(0x4B3B4CA85A86C47ALL, 0x98A224000000000))
  {
    *a1 = __udivti3() | 0x30;
    v7 = __udivti3();
    v3[1] = ((1441151881 * v7) >> 57) + 48;
    *(v3 + 1) = *&std::__itoa::__digits_base_10[2 * (v7 % 0x5F5E100 / 0xF4240uLL)];
    v8 = v7 % 0x5F5E100 % 0xF4240;
    *(v3 + 2) = *&std::__itoa::__digits_base_10[2 * (v8 / 0x2710uLL)];
    v8 %= 0x2710u;
    *(v3 + 3) = *&std::__itoa::__digits_base_10[2 * (v8 / 0x64u)];
    *(v3 + 4) = *&std::__itoa::__digits_base_10[2 * (v8 % 0x64u)];
    v9 = __udivti3();
    v10 = v3 + 10;
  }

  else
  {
    v4 = __udivti3();
    v5 = v4;
    if (!HIDWORD(v4))
    {
      v6 = std::__itoa::__base_10_u32[abi:ne200100](v3, v4);
      goto LABEL_9;
    }

    if (v4 > 0x2540BE3FFLL)
    {
      v11 = v4 / 0x2540BE400;
      v3 = std::__itoa::__base_10_u32[abi:ne200100](v3, v4 / 0x2540BE400);
      v5 -= 10000000000 * v11;
    }

    v10 = v3;
    v9 = v5;
  }

  v6 = std::__itoa::__append10[abi:ne200100]<unsigned long long>(v10, v9);
LABEL_9:
  v12 = v6;
  v13 = __umodti3();
  *v12 = v13 / 0x2540BE400 / 0x5F5E100 + 48;
  v14 = v13 / 0x2540BE400 % 0x5F5E100;
  *(v12 + 1) = *&std::__itoa::__digits_base_10[2 * (v14 / 0xF4240uLL)];
  v14 %= 0xF4240u;
  *(v12 + 3) = *&std::__itoa::__digits_base_10[2 * (v14 / 0x2710uLL)];
  v14 %= 0x2710u;
  *(v12 + 5) = *&std::__itoa::__digits_base_10[2 * (v14 / 0x64u)];
  *(v12 + 7) = *&std::__itoa::__digits_base_10[2 * (v14 % 0x64u)];

  return std::__itoa::__append10[abi:ne200100]<unsigned long long>(v12 + 9, v13 % 0x2540BE400);
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 128 - v5;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x11)
  {
    v9 = a3;
    v11 = a4;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 4;
      v11 = a4 >> 4;
      *(v8 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v8 -= 4;
      v12 = a3 <= 0x10F;
      a3 = v9;
      a4 >>= 4;
    }

    while (!v12);
  }

  v13 = (v8 - 1);
  do
  {
    v14 = v9 & 1;
    v12 = v9 <= 1;
    *(&v15 + 1) = v11;
    *&v15 = v9;
    v9 = v15 >> 1;
    v11 >>= 1;
    *v13-- = a01[v14];
  }

  while (!v12);
  return v7;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = (-126 - v5) / 3u;
  if (a2 - a1 < v6)
  {
    return a2;
  }

  v7 = a1 + v6;
  if (__PAIR128__(a4, a3) < 0x41)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + v6;
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 6;
      a4 >>= 6;
      *(v8 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x40);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 7;
    v13 = v9 <= 7;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 3;
    a4 >>= 3;
    *v11-- = a01234567[v12];
  }

  while (!v13);
  return v7;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = __clz(a4);
  v5 = __clz(a3 | 1) | 0x40;
  if (a4)
  {
    v5 = v4;
  }

  v6 = 131 - v5;
  if (a2 - a1 < (v6 >> 2))
  {
    return a2;
  }

  v7 = a1 + (v6 >> 2);
  if (__PAIR128__(a4, a3) < 0x101)
  {
    v9 = a3;
    v8 = v7;
  }

  else
  {
    v8 = a1 + (v6 >> 2);
    do
    {
      *(&v10 + 1) = a4;
      *&v10 = a3;
      v9 = v10 >> 8;
      a4 >>= 8;
      *(v8 - 2) = std::__itoa::__base_16_lut[a3];
      v8 -= 2;
      a3 = v9;
    }

    while (v9 > 0x100);
  }

  v11 = (v8 - 1);
  do
  {
    v12 = v9 & 0xF;
    v13 = v9 <= 0xF;
    *(&v14 + 1) = a4;
    *&v14 = v9;
    v9 = v14 >> 4;
    a4 >>= 4;
    *v11-- = a0123456789abcd_0[v12];
  }

  while (!v13);
  return v7;
}

void *std::__formatter_integer<char>::format[abi:ne200100]<unsigned int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, unsigned int a2, void *a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:ne200100]<char,unsigned int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {

    return std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v6, v5, 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,unsigned int,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned int a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 >= 0x80)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
}

void *std::__formatter_integer<char>::format[abi:ne200100]<unsigned long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, unint64_t a2, void *a3)
{
  v6 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);
  v7 = v5;
  if ((v6 & 0xFF00) == 0xA00)
  {
    v8 = *a3;

    return std::__formatter::__format_char[abi:ne200100]<char,unsigned long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, v8, v6, v7);
  }

  else
  {

    return std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, v6, v5, 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,unsigned long long,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1 >= 0x80)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a2, a3, a4, 1);
}

void *std::__formatter_integer<char>::format[abi:ne200100]<unsigned __int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, unint64_t a2, unint64_t a3, void *a4)
{
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  if ((v8 & 0xFF00) == 0xA00)
  {
    v9 = *a4;

    return std::__formatter::__format_char[abi:ne200100]<char,unsigned __int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v9, v8, v7);
  }

  else
  {

    return std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, a3, a4, v8, v7, 0);
  }
}

void *std::__formatter::__format_char[abi:ne200100]<char,unsigned __int128,std::back_insert_iterator<std::__format::__output_buffer<char>>>(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (__PAIR128__(a2, a1) >= 0x80)
  {
    std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
  }

  __src = a1;
  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, 1uLL, a3, a4, a5, 1);
}

void *std::__formatter::__format_floating_point[abi:ne200100]<float,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(void **a1, uint64_t a2, unint64_t a3, float a4)
{
  v43[32] = *MEMORY[0x277D85DE8];
  if ((LODWORD(a4) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v33 = *a1;

    return std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v33, a2, a3, a4 < 0.0, 0);
  }

  else
  {
    v7 = fabsf(a4);
    if (a3 == -1)
    {
      v8 = 149;
    }

    else
    {
      v8 = a3;
    }

    v39 = v8;
    v40 = 0;
    if (v8 < 150)
    {
      v41 = v8 + 45;
      if ((v8 + 45) >= 0x101)
      {
        operator new();
      }
    }

    else
    {
      v39 = 149;
      v40 = v8 - 149;
      v41 = 194;
    }

    __p = v43;
    std::__formatter::__format_buffer[abi:ne200100]<float,float>(&v39, a4 < 0.0, (a3 & 0x80000000) == 0, (a2 >> 3) & 3, BYTE1(a2), &v35, v7);
    if ((a2 & 0x20) != 0)
    {
      v9 = v36;
      v10 = *v38;
      if (v36 == *v38)
      {
        ++*v38;
        *v10 = 46;
        v11 = v37;
        v12 = (*v38 - 1);
        if (v37 != (*v38 - 1))
        {
          if (v37 + 1 == v12)
          {
            v14 = *v37;
            *v37 = v37[1];
            v11[1] = v14;
          }

          else
          {
            v13 = *(*v38 - 1);
            memmove(v37 + 1, v37, v12 - v37);
            *v11 = v13;
          }
        }

        v9 = v37;
        v36 = v37++;
      }

      if ((BYTE1(a2) - 17) <= 1u)
      {
        if (a3 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = a3;
        }

        if ((a3 & 0x80000000) != 0)
        {
          v15 = 6;
        }

        if (v37 == *v38)
        {
          v16 = v35 - v9;
        }

        else
        {
          v16 = -1;
        }

        v17 = v16 + v15;
        v18 = &v37[~v9];
        if (v18 < v17)
        {
          v40 += v17 - v18;
        }
      }
    }

    if ((a2 & 0x40) != 0)
    {
      v26 = *a1;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](a1, &v34);
      v27 = std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,float,char>(v26, &v39, &v35, &v34, a2, a3);
      std::locale::~locale(&v34);
    }

    else
    {
      v19 = *v38;
      v20 = __p;
      v21 = *v38 - __p;
      v22 = v40;
      if (*v38 - __p + v40 >= a2 >> 32)
      {
        if (!v40 || (v28 = v37, v37 == *v38))
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, *v38 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v27, v22, 48);
        }

        else
        {
          v27 = *a1;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a1, __p, v37 - __p);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v27, v22, 48);
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v27, v28, v19 - v28);
        }
      }

      else
      {
        v23 = *a1;
        if ((a2 & 7) == 4)
        {
          if (__p != v35)
          {
            std::__format::__output_buffer<char>::push_back[abi:ne200100](v23, *__p);
            ++v20;
          }

          v24 = a2 & 0xB8 | 3;
          v25 = 48;
        }

        else
        {
          v25 = BYTE4(a3);
          v24 = a2;
        }

        v29 = a2 & 0xFFFFFFFFFFFFFF00 | v24;
        v30 = a3 & 0xFFFFFF00FFFFFFFFLL | (v25 << 32);
        if (v22)
        {
          v31 = std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v38, v23, v29, v30, v21, v37, v22);
        }

        else
        {
          v31 = std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v20, *v38 - v20, v23, v29, v30, v21);
        }

        v27 = v31;
      }
    }

    if (v41 >= 0x101)
    {
      operator delete(__p);
    }

    return v27;
  }
}

void sub_2578B8B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, void *__p)
{
  if (a16 >= 0x101)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(void *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  if (a4)
  {
    v5 = 45;
  }

  else
  {
    v6 = (a2 >> 3) & 3;
    if (v6 == 2)
    {
      v5 = 43;
    }

    else
    {
      if (v6 != 3)
      {
        p_src = &__src;
        goto LABEL_8;
      }

      v5 = 32;
    }
  }

  p_src = v14;
  __src = v5;
LABEL_8:
  if (BYTE1(a2) <= 0x10u && ((1 << SBYTE1(a2)) & 0x15000) != 0)
  {
    v8 = 6;
  }

  else
  {
    v8 = 6;
    if (BYTE1(a2) != 18)
    {
      v8 = 0;
    }
  }

  v9 = 3;
  if (!a5)
  {
    v9 = 0;
  }

  v10 = &aInfnaninfnan[v8 + v9];
  *p_src = *v10;
  p_src[2] = v10[2];
  if ((a2 & 7) == 4)
  {
    v11 = a2 & 0xF8 | 3;
  }

  else
  {
    v11 = a2;
  }

  return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__src, p_src - &__src + 3, a1, a2 & 0xFFFFFFFFFFFFFF00 | v11, a3, p_src - &__src + 3);
}

char *std::__formatter::__format_buffer[abi:ne200100]<float,float>@<X0>(unsigned int *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, char **a6@<X8>, float a7@<S0>)
{
  v9 = *(a1 + 2);
  if (a2)
  {
    v10 = 45;
  }

  else if (a4 == 2)
  {
    v10 = 43;
  }

  else
  {
    if (a4 != 3)
    {
      goto LABEL_8;
    }

    v10 = 32;
  }

  *v9 = v10;
  v9 = (v9 + 1);
LABEL_8:
  if (a5 > 14)
  {
    if ((a5 - 15) < 2)
    {
      v13 = *a1;
      *a6 = v9;
      result = MEMORY[0x259C68320](v9, *(a1 + 2) + *(a1 + 1), 2, v13);
      a6[2] = result;
      a6[3] = result;
      if (v13)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0;
      }

      a6[1] = &result[-v14];
      return result;
    }

    if (a5 != 17)
    {
      result = std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(a1, *a1, v9, a6);
      v15 = a6[2];
      if (v15 == a6[3])
      {
        return result;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  if (a5 <= 11)
  {
    if (a5)
    {
      if (a3)
      {
        v18 = *a1;
      }

      else
      {
        v18 = 0xFFFFFFFFLL;
      }

      return std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(a1, v18, v9, a6);
    }

    if (!a3)
    {

      return std::__formatter::__format_buffer_default[abi:ne200100]<float,float>(v9, a1, v9, a6, a7);
    }

LABEL_25:
    v16 = *a1;

    return std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(a1, v16, v9, a6);
  }

  if (a5 != 12)
  {
    if (a5 == 13)
    {
      v11 = *a1;

      return std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(a1, v11, v9, a6);
    }

    result = std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(a1, *a1, v9, a6);
    v15 = a6[2];
LABEL_35:
    *v15 = 69;
    return result;
  }

  if (a3)
  {
    v17 = *a1;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  return std::__formatter::__format_buffer_hexadecimal_upper_case[abi:ne200100]<float,float>(a1, v17, v9, a6);
}