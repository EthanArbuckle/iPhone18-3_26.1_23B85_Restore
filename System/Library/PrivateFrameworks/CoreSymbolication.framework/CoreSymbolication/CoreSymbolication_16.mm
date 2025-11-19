__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CSCallFrameInfoForBinary::ParseEHFrameData(void)::$_0 &,CSCallFrameInfoForBinary::FDE *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __n128 result)
{
  v6 = *(a2 + 1);
  v7 = *(a3 + 1);
  if (v6 >= *(a1 + 1))
  {
    if (v7 < v6)
    {
      v10 = *a2;
      result = a2[1];
      v11 = a3[1];
      *a2 = *a3;
      a2[1] = v11;
      *a3 = v10;
      a3[1] = result;
      if (*(a2 + 1) < *(a1 + 1))
      {
        v12 = *a1;
        result = a1[1];
        v13 = a2[1];
        *a1 = *a2;
        a1[1] = v13;
        *a2 = v12;
        a2[1] = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *a1;
      result = a1[1];
      v9 = a3[1];
      *a1 = *a3;
      a1[1] = v9;
LABEL_9:
      *a3 = v8;
      a3[1] = result;
      goto LABEL_10;
    }

    v14 = *a1;
    result = a1[1];
    v15 = a2[1];
    *a1 = *a2;
    a1[1] = v15;
    *a2 = v14;
    a2[1] = result;
    if (*(a3 + 1) < *(a2 + 1))
    {
      v8 = *a2;
      result = a2[1];
      v16 = a3[1];
      *a2 = *a3;
      a2[1] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 1) < *(a3 + 1))
  {
    v17 = *a3;
    result = a3[1];
    v18 = a4[1];
    *a3 = *a4;
    a3[1] = v18;
    *a4 = v17;
    a4[1] = result;
    if (*(a3 + 1) < *(a2 + 1))
    {
      v19 = *a2;
      result = a2[1];
      v20 = a3[1];
      *a2 = *a3;
      a2[1] = v20;
      *a3 = v19;
      a3[1] = result;
      if (*(a2 + 1) < *(a1 + 1))
      {
        v21 = *a1;
        result = a1[1];
        v22 = a2[1];
        *a1 = *a2;
        a1[1] = v22;
        *a2 = v21;
        a2[1] = result;
      }
    }
  }

  if (*(a5 + 1) < *(a4 + 1))
  {
    v23 = *a4;
    result = a4[1];
    v24 = a5[1];
    *a4 = *a5;
    a4[1] = v24;
    *a5 = v23;
    a5[1] = result;
    if (*(a4 + 1) < *(a3 + 1))
    {
      v25 = *a3;
      result = a3[1];
      v26 = a4[1];
      *a3 = *a4;
      a3[1] = v26;
      *a4 = v25;
      a4[1] = result;
      if (*(a3 + 1) < *(a2 + 1))
      {
        v27 = *a2;
        result = a2[1];
        v28 = a3[1];
        *a2 = *a3;
        a2[1] = v28;
        *a3 = v27;
        a3[1] = result;
        if (*(a2 + 1) < *(a1 + 1))
        {
          v29 = *a1;
          result = a1[1];
          v30 = a2[1];
          *a1 = *a2;
          a1[1] = v30;
          *a2 = v29;
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CSCallFrameInfoForBinary::ParseEHFrameData(void)::$_0 &,CSCallFrameInfoForBinary::FDE *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v75 = *MEMORY[0x1E69E9840];
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a2 - 32);
      v8 = *(a1 + 40);
      v9 = *(a2 - 24);
      if (v8 < *(a1 + 8))
      {
        if (v9 >= v8)
        {
          v42 = *a1;
          v41 = *(a1 + 16);
          v43 = *(a1 + 48);
          *a1 = *(a1 + 32);
          *(a1 + 16) = v43;
          *(a1 + 32) = v42;
          *(a1 + 48) = v41;
          if (*(a2 - 24) >= *(a1 + 40))
          {
            goto LABEL_52;
          }

          v11 = *(a1 + 32);
          v10 = *(a1 + 48);
          v44 = *(a2 - 16);
          *(a1 + 32) = *v7;
          *(a1 + 48) = v44;
        }

        else
        {
          v11 = *a1;
          v10 = *(a1 + 16);
          v12 = *(a2 - 16);
          *a1 = *v7;
          *(a1 + 16) = v12;
        }

        *v7 = v11;
        *(a2 - 16) = v10;
        goto LABEL_52;
      }

      if (v9 >= v8)
      {
LABEL_52:
        result = 1;
        goto LABEL_53;
      }

      v27 = *(a1 + 32);
      v26 = *(a1 + 48);
      v28 = *(a2 - 16);
      *(a1 + 32) = *v7;
      *(a1 + 48) = v28;
      *v7 = v27;
      *(a2 - 16) = v26;
LABEL_50:
      if (*(a1 + 40) < *(a1 + 8))
      {
        v70 = *a1;
        v69 = *(a1 + 16);
        v71 = *(a1 + 48);
        *a1 = *(a1 + 32);
        *(a1 + 16) = v71;
        *(a1 + 32) = v70;
        *(a1 + 48) = v69;
      }

      goto LABEL_52;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CSCallFrameInfoForBinary::ParseEHFrameData(void)::$_0 &,CSCallFrameInfoForBinary::FDE *,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96), (a2 - 32), a3);
      goto LABEL_52;
    }

    v20 = *(a1 + 40);
    v21 = *(a1 + 8);
    v22 = *(a1 + 72);
    if (v20 >= v21)
    {
      if (v22 < v20)
      {
        v36 = *(a1 + 32);
        v35 = *(a1 + 48);
        v37 = *(a1 + 80);
        *(a1 + 32) = *(a1 + 64);
        *(a1 + 48) = v37;
        *(a1 + 64) = v36;
        *(a1 + 80) = v35;
        if (*(a1 + 40) < v21)
        {
          v39 = *a1;
          v38 = *(a1 + 16);
          v40 = *(a1 + 48);
          *a1 = *(a1 + 32);
          *(a1 + 16) = v40;
          *(a1 + 32) = v39;
          *(a1 + 48) = v38;
        }
      }

      goto LABEL_47;
    }

    if (v22 >= v20)
    {
      v59 = *a1;
      v58 = *(a1 + 16);
      v60 = *(a1 + 48);
      *a1 = *(a1 + 32);
      *(a1 + 16) = v60;
      *(a1 + 32) = v59;
      *(a1 + 48) = v58;
      if (v22 >= *(a1 + 40))
      {
        goto LABEL_47;
      }

      v24 = *(a1 + 32);
      v23 = *(a1 + 48);
      v61 = *(a1 + 80);
      *(a1 + 32) = *(a1 + 64);
      *(a1 + 48) = v61;
    }

    else
    {
      v24 = *a1;
      v23 = *(a1 + 16);
      v25 = *(a1 + 80);
      *a1 = *(a1 + 64);
      *(a1 + 16) = v25;
    }

    *(a1 + 64) = v24;
    *(a1 + 80) = v23;
LABEL_47:
    if (*(a2 - 24) >= *(a1 + 72))
    {
      goto LABEL_52;
    }

    v62 = (a2 - 32);
    v64 = *(a1 + 64);
    v63 = *(a1 + 80);
    v65 = *(a2 - 16);
    *(a1 + 64) = *(a2 - 32);
    *(a1 + 80) = v65;
    *v62 = v64;
    v62[1] = v63;
    if (*(a1 + 72) >= *(a1 + 40))
    {
      goto LABEL_52;
    }

    v67 = *(a1 + 32);
    v66 = *(a1 + 48);
    v68 = *(a1 + 80);
    *(a1 + 32) = *(a1 + 64);
    *(a1 + 48) = v68;
    *(a1 + 64) = v67;
    *(a1 + 80) = v66;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    goto LABEL_52;
  }

  if (v3 == 2)
  {
    if (*(a2 - 24) < *(a1 + 8))
    {
      v5 = *a1;
      v4 = *(a1 + 16);
      v6 = *(a2 - 16);
      *a1 = *(a2 - 32);
      *(a1 + 16) = v6;
      *(a2 - 32) = v5;
      *(a2 - 16) = v4;
    }

    goto LABEL_52;
  }

LABEL_13:
  v13 = a1 + 64;
  v14 = *(a1 + 40);
  v15 = *(a1 + 8);
  v16 = *(a1 + 72);
  if (v14 >= v15)
  {
    if (v16 < v14)
    {
      v30 = *(a1 + 32);
      v29 = *(a1 + 48);
      v31 = *(a1 + 80);
      *(a1 + 32) = *v13;
      *(a1 + 48) = v31;
      *v13 = v30;
      *(a1 + 80) = v29;
      if (*(a1 + 40) < v15)
      {
        v33 = *a1;
        v32 = *(a1 + 16);
        v34 = *(a1 + 48);
        *a1 = *(a1 + 32);
        *(a1 + 16) = v34;
        *(a1 + 32) = v33;
        *(a1 + 48) = v32;
      }
    }
  }

  else
  {
    if (v16 >= v14)
    {
      v46 = *a1;
      v45 = *(a1 + 16);
      v47 = *(a1 + 48);
      *a1 = *(a1 + 32);
      *(a1 + 16) = v47;
      *(a1 + 32) = v46;
      *(a1 + 48) = v45;
      if (v16 >= *(a1 + 40))
      {
        goto LABEL_33;
      }

      v18 = *(a1 + 32);
      v17 = *(a1 + 48);
      v48 = *(a1 + 80);
      *(a1 + 32) = *v13;
      *(a1 + 48) = v48;
    }

    else
    {
      v18 = *a1;
      v17 = *(a1 + 16);
      v19 = *(a1 + 80);
      *a1 = *v13;
      *(a1 + 16) = v19;
    }

    *v13 = v18;
    *(a1 + 80) = v17;
  }

LABEL_33:
  v49 = a1 + 96;
  if (a1 + 96 == a2)
  {
    goto LABEL_52;
  }

  v50 = 0;
  v51 = 0;
  while (1)
  {
    v52 = *(v49 + 8);
    if (v52 < *(v13 + 8))
    {
      v53 = *v49;
      v74 = *(v49 + 16);
      v54 = v50;
      while (1)
      {
        v55 = a1 + v54;
        v56 = *(a1 + v54 + 80);
        *(v55 + 96) = *(a1 + v54 + 64);
        *(v55 + 112) = v56;
        if (v54 == -64)
        {
          break;
        }

        v54 -= 32;
        if (v52 >= *(v55 + 40))
        {
          v57 = a1 + v54 + 96;
          goto LABEL_41;
        }
      }

      v57 = a1;
LABEL_41:
      *v57 = v53;
      *(v57 + 8) = v52;
      *(v57 + 16) = v74;
      if (++v51 == 8)
      {
        break;
      }
    }

    v13 = v49;
    v50 += 32;
    v49 += 32;
    if (v49 == a2)
    {
      goto LABEL_52;
    }
  }

  result = v49 + 32 == a2;
LABEL_53:
  v73 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::vector<CSCallFrameInfoForBinary::RegLocation>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<CSCallFrameInfoForBinary::RegLocation>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1D97D365C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CSCallFrameInfoForBinary::RegLocation>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<CSCallFrameInfoForBinary::RegLocation>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<CSCallFrameInfoForBinary::RegLocation>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator<CSCallFrameInfoForBinary::FDE>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t FindRowUserData::FindRowUserData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xFFFFFFFFLL;
  CSCallFrameInfoForBinary::RegLocations::RegLocations((a1 + 24), v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *(a1 + 48) = a3;
  *(a1 + 56) = 0;
  return a1;
}

void sub_1D97D37D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<CSCallFrameInfoForBinary::RegLocation>::__assign_with_size[abi:ne200100]<CSCallFrameInfoForBinary::RegLocation*,CSCallFrameInfoForBinary::RegLocation*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *result) >> 3) < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v11;
      }

      std::vector<CSCallFrameInfoForBinary::RegLocation>::__vallocate[abi:ne200100](v7, v12);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  v13 = result[1];
  v14 = v13 - v9;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v9) >> 3) >= a4)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v13 != v9)
    {
      result = memmove(*result, __src, v13 - v9);
      v13 = v7[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    v17 = &v13[v16];
  }

  v7[1] = v17;
  return result;
}

void std::__list_imp<CSCallFrameInfoForBinary::RegLocations>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = v2[1];
      std::__list_imp<CSCallFrameInfoForBinary::RegLocations>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<CSCallFrameInfoForBinary::RegLocations>::__delete_node[abi:ne200100](int a1, void *__p)
{
  v3 = __p[2];
  if (v3)
  {
    __p[3] = v3;
    operator delete(v3);
  }

  operator delete(__p);
}

uint64_t *std::__tree<std::__value_type<unsigned int,CSCallFrameInfoForBinary::CIE>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,CSCallFrameInfoForBinary::CIE>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,CSCallFrameInfoForBinary::CIE>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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

uint64_t std::vector<CSCallFrameInfoForBinary::RegLocation>::__init_with_size[abi:ne200100]<CSCallFrameInfoForBinary::RegLocation*,CSCallFrameInfoForBinary::RegLocation*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CSCallFrameInfoForBinary::RegLocation>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D97D3BC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CSCppCFDataMemory::CSCppCFDataMemory(CSCppCFDataMemory *this, CFTypeRef cf)
{
  *this = &unk_1F5508A58;
  v3 = CFRetain(cf);
  *(this + 1) = v3;
  *(this + 2) = CFDataGetBytePtr(v3);
  *(this + 3) = CFDataGetLength(*(this + 1));
}

void CSCppCFDataMemory::~CSCppCFDataMemory(CFTypeRef *this)
{
  *this = &unk_1F5508A58;
  CFRelease(this[1]);
}

{
  CSCppCFDataMemory::~CSCppCFDataMemory(this);

  JUMPOUT(0x1DA736760);
}

uint64_t CSCppCFDataMemory::bytes_at(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 + a2) <= *(a1 + 24))
  {
    return a2 + *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

void CSCppCFDataMemory::validate(CSCppCFDataMemory *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](v13);
  v1 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Unimplemented: ", 15);
  v2 = utility_basename("/Library/Caches/com.apple.xbs/Sources/CoreSymbolication/CoreSymbolication/CSCppCFDataMemory.cpp");
  v3 = strlen(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, v2, v3);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ":", 1);
  MEMORY[0x1DA7365D0](v5, 49);
  if ((v16 & 0x10) != 0)
  {
    v7 = v15;
    if (v15 < v14)
    {
      v15 = v14;
      v7 = v14;
    }

    v8 = v13[6];
  }

  else
  {
    if ((v16 & 8) == 0)
    {
      v6 = 0;
      v12 = 0;
      goto LABEL_15;
    }

    v8 = v13[3];
    v7 = v13[5];
  }

  v6 = v7 - v8;
  if ((v7 - v8) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  v12 = v7 - v8;
  if (v6)
  {
    memmove(&__dst, v8, v6);
  }

LABEL_15:
  *(&__dst + v6) = 0;
  Exception::Exception(v10, &__dst);
  exception = __cxa_allocate_exception(0x20uLL);
  Exception::Exception(exception, v10);
}

void sub_1D97D3E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  a19 = *MEMORY[0x1E69E54E8];
  *(&a19 + *(a19 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a20 = MEMORY[0x1E69E5548] + 16;
  if (a33 < 0)
  {
    operator delete(a28);
  }

  a20 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a21);
  std::ostream::~ostream();
  MEMORY[0x1DA7366F0](&a36);
  _Unwind_Resume(a1);
}

void AS::Operator::generate_owner(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 56) + 96 * *a2;
  v5 = 0;
  v4 = *(v3 + 88) | 0x420;
  std::allocate_shared[abi:ne200100]<CSCppSymbolOwner,std::allocator<CSCppSymbolOwner>,UUID const*,int,unsigned long long const&,unsigned long long const&,unsigned int,_CSArchitecture const&,char const* const&,0>();
}

void sub_1D97D411C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void AS::LoadOperator::operator()(uint64_t a1, uint64_t a2, SymbolicationSession *a3)
{
  AS::LoadOperator::generate_owners(a1, a3, &v6);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1174405120;
  v4[2] = ___ZNK2AS12LoadOperatorclER17CSCppSymbolicatorR20SymbolicationSession_block_invoke;
  v4[3] = &__block_descriptor_tmp_26;
  memset(v5, 0, sizeof(v5));
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner>*,std::shared_ptr<CSCppSymbolOwner>*>(v5, v6, v7, (v7 - v6) >> 4);
  CSCppSymbolicator::apply_mutable_context_block(a2, v4);
}

void sub_1D97D41F4(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100]((v2 - 24));
  *(v2 - 24) = v2 - 48;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100]((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t AS::LoadOperator::generate_owners@<X0>(uint64_t this@<X0>, const SymbolicationSession *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*(this + 40) != 1)
  {
    AS::Operator::generate_owner(this, (this + 16), a2);
  }

  v3 = *(this + 16);
  if (v3 != *(this + 24))
  {
    v4 = *v3;
    AS::Operator::generate_owner(this, &v4, a2);
  }

  return this;
}

void sub_1D97D42EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void ___ZNK2AS12LoadOperatorclER17CSCppSymbolicatorR20SymbolicationSession_block_invoke(uint64_t a1, void **a2)
{
  v2 = *(a1 + 32);
  for (i = *(a1 + 40); v2 != i; v2 += 2)
  {
    v5 = *v2;
    v6 = v2[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *(&v7 + 1) = v6;
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      *(&v7 + 1) = 0;
    }

    *&v7 = v5;
    CSCppMutableContext::add_symbol_owner_no_copy(a2, &v7);
    if (*(&v7 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1D97D43C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c76_ZTSNSt3__16vectorINS_10shared_ptrI16CSCppSymbolOwnerEENS_9allocatorIS3_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = a1 + 32;
  *(v2 + 16) = 0;
  return std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner>*,std::shared_ptr<CSCppSymbolOwner>*>(v2, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 4);
}

void **std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      std::allocator<std::shared_ptr<CSCppSymbolOwner>>::allocate_at_least[abi:ne200100](result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::shared_ptr<CSCppSymbolOwner>>::~__split_buffer(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void AS::LoadOperator::~LoadOperator(AS::LoadOperator *this)
{
  *this = &unk_1F5508AF0;
  if (*(this + 40) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      *(this + 3) = v2;
      operator delete(v2);
    }
  }
}

{
  *this = &unk_1F5508AF0;
  if (*(this + 40) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      *(this + 3) = v2;
      operator delete(v2);
    }
  }

  JUMPOUT(0x1DA736760);
}

void *AS::FullCreationOperator::generate_owners@<X0>(void *this@<X0>, const SymbolicationSession *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *(a2 + 15) + 40 * this[2];
  v4 = *(v3 + 16);
  if (v4 != *(v3 + 24))
  {
    __p[0] = *(v3 + 16);
    v7 = *(v4 + 88) | 0x420;
    v8 = 0;
    std::allocate_shared[abi:ne200100]<CSCppSymbolOwner,std::allocator<CSCppSymbolOwner>,UUID const*,int,unsigned long long const&,unsigned long long const&,unsigned int,_CSArchitecture const&,char const* const&,0>();
  }

  v5 = this[5];
  if (v5 != this[6])
  {
    *__p = *v5;
    AS::Operator::generate_owner(this, __p, a2);
  }

  return this;
}

void sub_1D97D47B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_1D97D47F0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1D97D47D0);
}

void AS::FullCreationOperator::~FullCreationOperator(AS::FullCreationOperator *this)
{
  *this = &unk_1F5508B48;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F5508B48;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1DA736760);
}

void *std::__shared_ptr_emplace<CSCppSymbolOwner>::__shared_ptr_emplace[abi:ne200100]<UUID const*,int,unsigned long long const&,unsigned long long const&,unsigned int,_CSArchitecture const&,char const* const&,std::allocator<CSCppSymbolOwner>,0>(void *a1, void *a2, unsigned int *a3, void *a4, void *a5, unsigned int *a6, void *a7, void *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5504DE8;
  CSCppSymbolOwner::CSCppSymbolOwner(a1 + 3, *a2, *a3, *a4, *a5, *a6, *a7, *a8);
  return a1;
}

uint64_t CSCppMutableContext::CSCppMutableContext(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner>*,std::shared_ptr<CSCppSymbolOwner>*>(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  return a1;
}

void **CSCppMutableContext::add_symbol_owner_no_copy(void **a1, __int128 *a2)
{
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100](a1 + 6, a2);

  return std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100](a1, a2);
}

uint64_t CSCppMutableContext::remove_symbol_owner(uint64_t a1, __int128 *a2)
{
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100]((a1 + 24), a2);
  std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner> *,std::shared_ptr<CSCppSymbolOwner> *,std::shared_ptr<CSCppSymbolOwner> *>(&v9, a2 + 1, *(a1 + 8), a2);
  v5 = v4;
  v6 = *(a1 + 8);
  if (v6 != v4)
  {
    do
    {
      v7 = *(v6 - 8);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v6 -= 16;
    }

    while (v6 != v5);
  }

  *(a1 + 8) = v5;
  return 1;
}

void sub_1D97D4B7C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

CSCppMutableContext *CSCppMutableContext::add_symbol_owner@<X0>(CSCppMutableContext *this@<X0>, CSCppSymbolOwner *a2@<X1>, void *a3@<X8>)
{
  if ((*(a2 + 111) & 1) == 0)
  {
    CSCppMutableContext::copy_symbol_owner(this, a2);
  }

  *a3 = 0;
  a3[1] = 0;
  return this;
}

void sub_1D97D4BDC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSCppMutableContext::remove_symbol_owner(CSCppMutableContext *this, CSCppSymbolOwner *a2)
{
  if (*(this + 1) - *this < 0x11uLL)
  {
    return 0;
  }

  v21 = v2;
  v22 = v3;
  SymbolOwnerInList = _findSymbolOwnerInList(this, a2);
  if (*(this + 1) == SymbolOwnerInList)
  {
    return 0;
  }

  v8 = SymbolOwnerInList;
  v9 = _findSymbolOwnerInList(this + 6, a2);
  v10 = *(this + 7);
  if (v10 == v9)
  {
    CSCppMutableContext::remove_symbol_owner(this, v8);
  }

  else
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner> *,std::shared_ptr<CSCppSymbolOwner> *,std::shared_ptr<CSCppSymbolOwner> *>(&v19, v9 + 1, v10, v9);
    v12 = v11;
    v13 = *(this + 7);
    if (v13 != v11)
    {
      do
      {
        v14 = *(v13 - 8);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        v13 -= 16;
      }

      while (v13 != v12);
    }

    *(this + 7) = v12;
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner> *,std::shared_ptr<CSCppSymbolOwner> *,std::shared_ptr<CSCppSymbolOwner> *>(&v20, v8 + 1, *(this + 1), v8);
    v16 = v15;
    v17 = *(this + 1);
    if (v17 != v15)
    {
      do
      {
        v18 = *(v17 - 8);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        v17 -= 16;
      }

      while (v17 != v16);
    }

    *(this + 1) = v16;
  }

  return 1;
}

uint64_t *_findSymbolOwnerInList(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    while (1)
    {
      v6 = *v2;
      v5 = v2[1];
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      if (v6 == a2)
      {
        break;
      }

      v2 += 2;
      if (v2 == v3)
      {
        return v3;
      }
    }
  }

  return v2;
}

uint64_t CSCppMutableContext::replace_symbol_owner(CSCppMutableContext *this, CSCppSymbolOwner *a2, CSCppSymbolOwner *a3)
{
  CSCppMutableContext::add_symbol_owner(this, a2, &v8);
  SymbolOwnerInList = _findSymbolOwnerInList(this, a3);
  if (*(this + 1) != SymbolOwnerInList)
  {
    CSCppMutableContext::remove_symbol_owner(this, SymbolOwnerInList);
  }

  v6 = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v6;
}

void sub_1D97D4DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSCppMutableContext::make_symbol_owner_mutable(CSCppMutableContext *this, CSCppSymbolOwner *a2)
{
  if ((*(a2 + 111) & 1) == 0)
  {
    SymbolOwnerInList = _findSymbolOwnerInList(this, a2);
    if (*(this + 1) != SymbolOwnerInList)
    {
      v5 = SymbolOwnerInList;
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100](this + 3, SymbolOwnerInList);
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner> *,std::shared_ptr<CSCppSymbolOwner> *,std::shared_ptr<CSCppSymbolOwner> *>(&v11, (v5 + 16), *(this + 1), v5);
      v7 = v6;
      v8 = *(this + 1);
      if (v8 != v6)
      {
        do
        {
          v9 = *(v8 - 8);
          if (v9)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v9);
          }

          v8 -= 16;
        }

        while (v8 != v7);
      }

      *(this + 1) = v7;
      CSCppMutableContext::copy_symbol_owner(this, a2);
    }
  }

  return 0;
}

void sub_1D97D4ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSCppMutableContext::make_all_symbol_owners_immutable(uint64_t this)
{
  v1 = *(this + 48);
  v2 = *(this + 56);
  while (v1 != v2)
  {
    v3 = *v1;
    v1 += 2;
    *(v3 + 108) &= ~0x1000000u;
  }

  return this;
}

void *CSGetBinaryPathForExclaveWithUUIDBytes(void *a1)
{
  get_exclave_core_uuid_to_path_map();
  get_exclave_kit_uuid_to_path_map();
  v2 = std::__hash_table<UUID,UUIDHashFunctor,UUIDEqualsFunctor,std::allocator<UUID>>::find<UUID>(&xmmword_1EDADA860, a1);
  v3 = std::__hash_table<UUID,UUIDHashFunctor,UUIDEqualsFunctor,std::allocator<UUID>>::find<UUID>(&xmmword_1EDADA888, a1);
  v4 = v3;
  if (!v2)
  {
    if (!v3)
    {
      return 0;
    }

    result = v3 + 4;
    if ((*(v4 + 55) & 0x80000000) == 0)
    {
      return result;
    }

    return *result;
  }

  if (v3)
  {
    if (os_variant_has_internal_content())
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "UUID found in both ExclaveCore and ExclaveKit\n", v6, 2u);
      }
    }

    return 0;
  }

  result = v2 + 4;
  if (*(v2 + 55) < 0)
  {
    return *result;
  }

  return result;
}

void get_exclave_core_uuid_to_path_map(void)
{
  if ((atomic_load_explicit(&_MergedGlobals_2, memory_order_acquire) & 1) == 0)
  {
    get_exclave_core_uuid_to_path_map();
  }

  if (atomic_load_explicit(&get_exclave_core_uuid_to_path_map(void)::once, memory_order_acquire) != -1)
  {
    v2 = &v0;
    v1 = &v2;
    std::__call_once(&get_exclave_core_uuid_to_path_map(void)::once, &v1, std::__call_once_proxy[abi:ne200100]<std::tuple<get_exclave_core_uuid_to_path_map(void)::$_0 &&>>);
  }
}

void get_exclave_kit_uuid_to_path_map(void)
{
  if ((atomic_load_explicit(&qword_1EDADA858, memory_order_acquire) & 1) == 0)
  {
    get_exclave_kit_uuid_to_path_map();
  }

  if (atomic_load_explicit(&get_exclave_kit_uuid_to_path_map(void)::once, memory_order_acquire) != -1)
  {
    v2 = &v0;
    v1 = &v2;
    std::__call_once(&get_exclave_kit_uuid_to_path_map(void)::once, &v1, std::__call_once_proxy[abi:ne200100]<std::tuple<get_exclave_kit_uuid_to_path_map(void)::$_0 &&>>);
  }
}

uint64_t CSSymbolicatorCreateWithExclaveUUIDAndFlags(void *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3802000000;
  v12 = __Block_byref_object_copy__16;
  v14 = 0;
  v15 = 0;
  v13 = __Block_byref_object_dispose__16;
  v4 = CSGetBinaryPathForExclaveWithUUIDBytes(a1);
  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __CSSymbolicatorCreateWithExclaveUUIDAndFlags_block_invoke;
    v8[3] = &unk_1E8584B40;
    v8[4] = &v9;
    v8[5] = a1;
    CSSymbolicatorForeachSymbolicatorWithPathFlagsAndNotification(v4, a2, 0, v8);
  }

  v5 = v10[5];
  v6 = v10[6];
  _Block_object_dispose(&v9, 8);
  return v5;
}

void sub_1D97D51E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__16(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void *__CSSymbolicatorCreateWithExclaveUUIDAndFlags_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SymbolOwner = CSSymbolicatorGetSymbolOwner(a2, a3);
  result = CSSymbolOwnerGetCFUUIDBytes(SymbolOwner, v7);
  v9 = *(a1 + 40);
  v11 = *v9;
  v10 = v9[1];
  if (v11 == *result && v10 == result[1])
  {
    result = CSRetain(a2, a3);
    v13 = *(*(a1 + 32) + 8);
    *(v13 + 40) = result;
    *(v13 + 48) = v14;
  }

  return result;
}

uint64_t CSSymbolicatorForeachExclaveCoreSymbolicatorWithFlags(int a1, uint64_t a2)
{
  get_exclave_core_uuid_to_path_map();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  v4 = qword_1EDADA870;
  if (qword_1EDADA870)
  {
    do
    {
      v5 = (v4 + 32);
      if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::find<std::string>(v9, (v4 + 32)))
      {
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v9, (v4 + 32));
        if (*(v4 + 55) < 0)
        {
          v5 = *v5;
        }

        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 0x40000000;
        v8[2] = __CSSymbolicatorForeachExclaveCoreSymbolicatorWithFlags_block_invoke;
        v8[3] = &unk_1E8584B68;
        v8[4] = a2;
        v8[5] = &v11;
        CSSymbolicatorForeachSymbolicatorWithPathFlagsAndNotification(v5, a1, 0, v8);
      }

      v4 = *v4;
    }

    while (v4);
    v6 = v12[3];
  }

  else
  {
    v6 = 0;
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v9);
  _Block_object_dispose(&v11, 8);
  return v6;
}

void sub_1D97D53C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __CSSymbolicatorForeachExclaveCoreSymbolicatorWithFlags_block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t CSSymbolicatorForeachExclaveKitSymbolicatorWithFlags(int a1, uint64_t a2)
{
  get_exclave_kit_uuid_to_path_map();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  v4 = qword_1EDADA898;
  if (qword_1EDADA898)
  {
    do
    {
      v5 = (v4 + 32);
      if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::find<std::string>(v9, (v4 + 32)))
      {
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v9, (v4 + 32));
        if (*(v4 + 55) < 0)
        {
          v5 = *v5;
        }

        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 0x40000000;
        v8[2] = __CSSymbolicatorForeachExclaveKitSymbolicatorWithFlags_block_invoke;
        v8[3] = &unk_1E8584B90;
        v8[4] = a2;
        v8[5] = &v11;
        CSSymbolicatorForeachSymbolicatorWithPathFlagsAndNotification(v5, a1, 0, v8);
      }

      v4 = *v4;
    }

    while (v4);
    v6 = v12[3];
  }

  else
  {
    v6 = 0;
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v9);
  _Block_object_dispose(&v11, 8);
  return v6;
}

void sub_1D97D5578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __CSSymbolicatorForeachExclaveKitSymbolicatorWithFlags_block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<get_exclave_core_uuid_to_path_map(void)::$_0 &&>>()
{
  v12[1] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, "/System/ExclaveCore/");
  v6 = 0;
  v7 = 0;
  v8 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v6, __p, v12, 1uLL);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (os_variant_has_internal_content())
  {
    v0 = getenv("CS_TEST_EXCLAVECORE_DIR");
    if (v0)
    {
      v1 = v0;
      if (!is_root_directory(v0))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, v1);
        std::vector<std::string>::push_back[abi:ne200100](&v6, __p);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v2 = v6;
  for (i = v7; v2 != i; v2 += 24)
  {
    v4 = v2;
    if (*(v2 + 23) < 0)
    {
      v4 = *v2;
    }

    __p[0] = &unk_1F5508BB8;
    v12[0] = __p;
    recursively_list_files_and_uuids_in_directory(v4, __p);
    std::__function::__value_func<void ()(std::string const&,UUID const&)>::~__value_func[abi:ne200100](__p);
  }

  v9 = &v6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1D97D573C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  a13 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void recursively_list_files_and_uuids_in_directory(std::string *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = a1;
  if (access(a1, 4) && os_variant_has_internal_content())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = a1;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "Failed to access directory: %s\n";
LABEL_13:
      _os_log_impl(&dword_1D96E9000, v4, OS_LOG_TYPE_DEFAULT, v5, &buf, 0xCu);
    }
  }

  else
  {
    v6 = std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&buf, &v17);
    std::__fs::filesystem::__status(v6, 0);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v16.__r_.__value_.__s.__data_[0] == 2)
    {
      std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v16, &v17);
      MEMORY[0x1DA736650](&buf, &v16, 0, 0);
      v7 = *&buf.__r_.__value_.__l.__data_;
      if (buf.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((buf.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        size = buf.__r_.__value_.__l.__size_;
        v22.__imp_ = v7;
        v22.__rec_ = buf.__r_.__value_.__s.__data_[16];
        if (buf.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((buf.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](size);
        }
      }

      else
      {
        v22.__imp_.__ptr_ = buf.__r_.__value_.__r.__words[0];
        v22.__imp_.__cntrl_ = 0;
        v22.__rec_ = buf.__r_.__value_.__s.__data_[16];
      }

      while (v22.__imp_.__ptr_)
      {
        v9 = std::__fs::filesystem::recursive_directory_iterator::__dereference(&v22);
        if (SHIBYTE(v9->__p_.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&p, v9->__p_.__pn_.__r_.__value_.__l.__data_, v9->__p_.__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          p = v9->__p_;
        }

        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v14.__pn_, &p);
        std::__fs::filesystem::__status(&v14, 0);
        v10 = v18;
        if (SHIBYTE(v14.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v14.__pn_.__r_.__value_.__l.__data_);
        }

        if (v10 != 2)
        {
          v11 = (p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &p : p.__r_.__value_.__r.__words[0];
          if (CSFileIsSuitableForCS(v11))
          {
            if ((p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &p;
            }

            else
            {
              p_p = p.__r_.__value_.__r.__words[0];
            }

            v14.__pn_.__r_.__value_.__r.__words[0] = -1;
            v19[0] = MEMORY[0x1E69E9820];
            v19[1] = 1174405120;
            v19[2] = ___ZL45recursively_list_files_and_uuids_in_directoryPKcNSt3__18functionIFvRKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERK4UUIDEEE_block_invoke;
            v19[3] = &__block_descriptor_tmp_10_5;
            std::__function::__value_func<void ()(std::string const&,UUID const&)>::__value_func[abi:ne200100](v20, a2);
            if (SHIBYTE(p.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, p.__r_.__value_.__l.__data_, p.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = p;
            }

            iterate_symbol_owners_from_path(p_p, 0, 0, &v14, 0, v19);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            std::__function::__value_func<void ()(std::string const&,UUID const&)>::~__value_func[abi:ne200100](v20);
          }
        }

        if (SHIBYTE(p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(p.__r_.__value_.__l.__data_);
        }

        std::__fs::filesystem::recursive_directory_iterator::__increment(&v22, 0);
      }

      if (v22.__imp_.__cntrl_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22.__imp_.__cntrl_);
      }

      if (buf.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](buf.__r_.__value_.__l.__size_);
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v17;
      v4 = MEMORY[0x1E69E9C10];
      v5 = "Path is not a directory: %s\n";
      goto LABEL_13;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t ___ZL45recursively_list_files_and_uuids_in_directoryPKcNSt3__18functionIFvRKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERK4UUIDEEE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v4 = *a2;
  v5 = *(*v3 + 48);

  return v5();
}

void __copy_helper_block_e8_32c93_ZTSNSt3__18functionIFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERK4UUIDEEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(std::string const&,UUID const&)>::__value_func[abi:ne200100](a1 + 32, a2 + 32);
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v4 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v4;
  }
}

uint64_t __destroy_helper_block_e8_32c93_ZTSNSt3__18functionIFvRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEERK4UUIDEEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  return std::__function::__value_func<void ()(std::string const&,UUID const&)>::~__value_func[abi:ne200100](a1 + 32);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_1D97D5E60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_1D97D5FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(std::string *a1, std::string *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  std::string::append[abi:ne200100]<char const*,0>(a1, a2, (a2 + v3));
  return a1;
}

void sub_1D97D60F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(std::string const&,UUID const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__function::__func<get_exclave_core_uuid_to_path_map(void)::$_0::operator() const(void)::{lambda(std::string const&,UUID const&)#1},std::allocator<get_exclave_core_uuid_to_path_map(void)::$_0::operator() const(void)::{lambda(std::string const&,UUID const&)#1}>,void ()(std::string const&,UUID const&)>::operator()(int a1, uint64_t a2, UUID *this)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    if ((UUID::is_null(this) & 1) == 0)
    {
      v6 = std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(&xmmword_1EDADA860, this);
      std::string::operator=((v6 + 4), a2);
    }
  }
}

uint64_t std::__function::__func<get_exclave_core_uuid_to_path_map(void)::$_0::operator() const(void)::{lambda(std::string const&,UUID const&)#1},std::allocator<get_exclave_core_uuid_to_path_map(void)::$_0::operator() const(void)::{lambda(std::string const&,UUID const&)#1}>,void ()(std::string const&,UUID const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = a2[1] ^ *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2[1] ^ *a2;
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
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (v7[2] != *a2 || v7[3] != a2[1])
  {
    goto LABEL_21;
  }

  return v7;
}

uint64_t std::__function::__value_func<void ()(std::string const&,UUID const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__call_once_proxy[abi:ne200100]<std::tuple<get_exclave_kit_uuid_to_path_map(void)::$_0 &&>>()
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  find_accessible_exclave_cryptex(&v9);
  if (v10 == 1)
  {
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v9.__r_.__value_.__l.__size_;
    }

    v1 = __p;
    std::string::basic_string[abi:ne200100](__p, size + 19);
    if (v15 < 0)
    {
      v1 = __p[0];
    }

    if (size)
    {
      if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v2 = &v9;
      }

      else
      {
        v2 = v9.__r_.__value_.__r.__words[0];
      }

      memmove(v1, v2, size);
    }

    strcpy(v1 + size, "/System/ExclaveKit/");
    std::vector<std::string>::push_back[abi:ne200100](&v11, __p);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (is_device_exclave_enabled() && os_variant_has_internal_content() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to locate official Exclave Kit binaries on disk", __p, 2u);
  }

  if (os_variant_has_internal_content())
  {
    v3 = getenv("CS_TEST_EXCLAVEKIT_DIR");
    if (v3)
    {
      v4 = v3;
      if (!is_root_directory(v3))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, v4);
        std::vector<std::string>::push_back[abi:ne200100](&v11, __p);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v5 = v11;
  for (i = v12; v5 != i; v5 += 24)
  {
    v7 = v5;
    if (*(v5 + 23) < 0)
    {
      v7 = *v5;
    }

    __p[0] = &unk_1F5508C88;
    v16 = __p;
    recursively_list_files_and_uuids_in_directory(v7, __p);
    std::__function::__value_func<void ()(std::string const&,UUID const&)>::~__value_func[abi:ne200100](__p);
  }

  CSSymbolicatorForeachSharedCache();
  if (v10 == 1 && SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v9.__r_.__value_.__r.__words[0] = &v11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1D97D6834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int16 *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a15 == 1 && a14 < 0)
  {
    operator delete(a9);
  }

  a9 = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

UUID *___ZZL32get_exclave_kit_uuid_to_path_mapvENK3__0clEv_block_invoke_2(uint64_t a1, char a2, uint64_t a3)
{
  Path = CSSymbolOwnerGetPath(a2, a3);
  result = CSSymbolOwnerGetCFUUIDBytes(a2, a3);
  if (Path)
  {
    v7 = result;
    if (result)
    {
      result = strncmp(Path, "/System/ExclaveKit/", 0x13uLL);
      if (!result)
      {
        v8 = std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(&xmmword_1EDADA888, v7);
        return std::string::__assign_external((v8 + 4), Path);
      }
    }
  }

  return result;
}

void std::__function::__func<get_exclave_kit_uuid_to_path_map(void)::$_0::operator() const(void)::{lambda(std::string const&,UUID const&)#1},std::allocator<get_exclave_kit_uuid_to_path_map(void)::$_0::operator() const(void)::{lambda(std::string const&,UUID const&)#1}>,void ()(std::string const&,UUID const&)>::operator()(int a1, uint64_t a2, UUID *this)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    if ((UUID::is_null(this) & 1) == 0)
    {
      v6 = std::__hash_table<std::__hash_value_type<UUID,std::string>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::string>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::string>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::string>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(&xmmword_1EDADA888, this);
      std::string::operator=((v6 + 4), a2);
    }
  }
}

uint64_t std::__function::__func<get_exclave_kit_uuid_to_path_map(void)::$_0::operator() const(void)::{lambda(std::string const&,UUID const&)#1},std::allocator<get_exclave_kit_uuid_to_path_map(void)::$_0::operator() const(void)::{lambda(std::string const&,UUID const&)#1}>,void ()(std::string const&,UUID const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void **CSCppDsymData::binary_path(CSCppDsymData *this)
{
  v2 = (this + 48);
  if (*(this + 71) < 0)
  {
    if (!*(this + 7))
    {
      goto LABEL_14;
    }

    v3 = *v2;
    if (**v2 != 126)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (!*(this + 71))
    {
      return 0;
    }

    if (*v2 != 126)
    {
      return v2;
    }

    v3 = this + 48;
  }

  memset(&v5, 0, sizeof(v5));
  if (!glob(v3, 2048, 0, &v6))
  {
    std::string::__assign_external(&v5, *v6.gl_pathv);
    globfree(&v6);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*v2);
  }

  *v2 = v5;
  if ((*(this + 71) & 0x80) != 0)
  {
LABEL_14:
    if (*(this + 7))
    {
      return *v2;
    }

    return 0;
  }

  if (!*(this + 71))
  {
    return 0;
  }

  return v2;
}

void sub_1D97D6BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CSCppDsymData::CSCppDsymData(CSCppDsymData *this, const char *a2)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  strlcpy(this + 72, a2, 0x400uLL);
}

void sub_1D97D6C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  a10 = (v10 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void make_dsym_data_from_path_and_uuid(const char *a1@<X0>, const CFUUIDBytes *a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && !access(a1, 0))
  {
    CSCppDsymData::CSCppDsymData(&v6, a1);
    *a3 = v6;
    *(a3 + 16) = v7;
    v6 = 0uLL;
    *(a3 + 24) = v8;
    *(a3 + 40) = v9;
    v7 = 0;
    v8 = 0uLL;
    v9 = 0;
    *(a3 + 48) = v10;
    *(a3 + 64) = v11;
    v11 = 0;
    v10 = 0uLL;
    memcpy((a3 + 72), v12, 0x400uLL);
    *(a3 + 1096) = 1;
    CSCppDsymData::~CSCppDsymData(&v6);
  }

  else
  {
    *a3 = 0;
    *(a3 + 1096) = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t CSCppInternedPathTransformer::CSCppInternedPathTransformer(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  *a1 = &unk_1F5508D08;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0u;
  v5 = (a1 + 16);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) >= 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3))
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
  }

  if (v6)
  {
    v9 = 0;
    do
    {
      v10 = *a4;
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::string const&,std::string const&>(v5, (*a3 + v9));
      v9 += 24;
      --v6;
    }

    while (v6);
  }

  return a1;
}

uint64_t *CSCppInternedPathTransformer::find_replacement(CSCppInternedPathTransformer *this, const char *__s2)
{
  for (i = *(this + 4); i; i = *i)
  {
    v4 = *(i + 39);
    if (v4 >= 0)
    {
      v5 = (i + 2);
    }

    else
    {
      v5 = i[2];
    }

    if (v4 >= 0)
    {
      v6 = *(i + 39);
    }

    else
    {
      v6 = i[3];
    }

    if (!strncmp(v5, __s2, v6))
    {
      break;
    }
  }

  return i;
}

const char *CSCppInternedPathTransformer::transform(CSCppStringCache **this, const char *a2)
{
  replacement = CSCppInternedPathTransformer::find_replacement(this, a2);
  if (replacement)
  {
    v5 = replacement;
    v6 = *(replacement + 39);
    if (v6 < 0)
    {
      v6 = replacement[3];
    }

    if (*(replacement + 63) >= 0)
    {
      v7 = *(replacement + 63);
    }

    else
    {
      v7 = replacement[6];
    }

    v8 = strlen(&a2[v6]);
    v9 = __p;
    std::string::basic_string[abi:ne200100](__p, v7 + v8);
    if (v14 < 0)
    {
      v9 = __p[0];
    }

    if (v7)
    {
      if (*(v5 + 63) >= 0)
      {
        v10 = v5 + 5;
      }

      else
      {
        v10 = v5[5];
      }

      memmove(v9, v10, v7);
    }

    if (v8)
    {
      memmove(v9 + v7, &a2[v6], v8);
    }

    *(v9 + v7 + v8) = 0;
    if (v14 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    CSCppStringCache::intern(this[1], v11);
  }

  return a2;
}

void sub_1D97D6F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CSCppInternedPathTransformer::~CSCppInternedPathTransformer(CSCppInternedPathTransformer *this)
{
  *this = &unk_1F5508D08;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 16);
}

{
  *this = &unk_1F5508D08;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(this + 16);

  JUMPOUT(0x1DA736760);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::string const&,std::string const&>(void *a1, const void **a2)
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
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::string const&,std::string const&>();
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

void sub_1D97D72A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100]<true,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_1D97D7410(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _UUIDBytesToPath<CFUUIDBytes>(unsigned __int8 *a1, char *__str, size_t __size)
{
  if (a1)
  {
    v3 = __str == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = !v3 && __size > 0x25;
  if (v5 == 1)
  {
    snprintf(__str, __size, "%02hhX%02hhX%02hhX%02hhX/%02hhX%02hhX/%02hhX%02hhX/%02hhX%02hhX/%02hhX%02hhX%02hhX%02hhX%02hhX%02hhX/", *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], a1[13], a1[14], a1[15]);
  }

  return v5;
}

uint64_t CSSymbolicationSessionCreateSymbolicatorForPidWithFlags(char a1, uint64_t a2, int a3)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  result = SymbolicationSession::create_pid_symbolicator((a2 & 0xFFFFFFFFFFFFFFFCLL), a3);
  v4 = result;
  if (result)
  {
    CSCppReferenceCount::retain(result);
    CSCppReferenceCount::release(v4, 1);
    return 2;
  }

  return result;
}

uint64_t CSSymbolicationSessionCreateNonFaultingSymbolicatorForPid(char a1, uint64_t a2, int a3)
{
  CSSymbolicatorGetFlagsForNonFaultingBehavior();

  return CSSymbolicationSessionCreateSymbolicatorForPidWithFlags(a1, a2, a3);
}

uint64_t CSSymbolicationSessionProcessATRCProcessAndDSCChunks(uint64_t result, uint64_t a2, __CFData *a3, __CFData *a4)
{
  if (result & 7 | (8 * (a2 & 3)))
  {
    return SymbolicationSession::process_ats_dsc_and_pid_chunks((a2 & 0xFFFFFFFFFFFFFFFCLL), a3, a4);
  }

  return result;
}

uint64_t CSSymbolicationSessionProcessATRCKernelChunk(uint64_t result, uint64_t a2, __CFData *a3)
{
  if (result & 7 | (8 * (a2 & 3)))
  {
    return SymbolicationSession::process_ats_kernel_chunk((a2 & 0xFFFFFFFFFFFFFFFCLL), a3);
  }

  return result;
}

uint64_t CSSymbolicationSessionProcessKernelPlistChunkAndArchitecture(uint64_t result, uint64_t a2, const __CFData *a3)
{
  if (result & 7 | (8 * (a2 & 3)))
  {
    SymbolicationSession::process_kernel_plist_chunk((a2 & 0xFFFFFFFFFFFFFFFCLL), a3);
  }

  return result;
}

__CFString *CSSymbolicationSessionCopyDescriptionWithIndent(char a1, uint64_t a2, int a3)
{
  if (!(a1 & 7 | (8 * (a2 & 3))))
  {
    return 0;
  }

  v4 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  for (i = CFStringCreateMutable(0, 0); a3; --a3)
  {
    CFStringAppendCString(i, "\t", 0x8000100u);
  }

  CFStringAppendFormat(i, 0, @"<SymbolicationSession: %p> flags: 0x%x process count: %llu", v4, *(v4 + 256), *(v4 + 168));
  return i;
}

uint64_t CSSymbolicationSessionSetGroupKey(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result & 7 | (8 * (a2 & 3)))
  {
    *((a2 & 0xFFFFFFFFFFFFFFFCLL) + 264) = a3;
  }

  return result;
}

uint64_t CSSymbolicationSessionForeachPid(char a1, uint64_t a2, uint64_t a3)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return SymbolicationSession::foreach_pid(a2 & 0xFFFFFFFFFFFFFFFCLL, a3);
  }

  else
  {
    return 0;
  }
}

char **CSSymbolicationSessionGetDSCSlideForPid(char a1, uint64_t a2, int a3)
{
  if (a1 & 7 | (8 * (a2 & 3)))
  {
    return SymbolicationSession::dsc_slide_for_pid((a2 & 0xFFFFFFFFFFFFFFFCLL), a3);
  }

  else
  {
    return 0;
  }
}

uint64_t CSExceptionSafeThreadRunBlock(CSCppExceptionSafeThread *a1)
{
  v2 = CSCppExceptionSafeThread::main(a1);

  return CSCppExceptionSafeThread::run(v2, a1, 0);
}

void *CSCppExceptionSafeThread::main(CSCppExceptionSafeThread *this)
{
  {
    CSCppExceptionSafeThread::CSCppExceptionSafeThread(&CSCppExceptionSafeThread::main(void)::thread_singleton);
  }

  return &CSCppExceptionSafeThread::main(void)::thread_singleton;
}

uint64_t CSExceptionSafeThreadRunBlockWithHandler(CSCppExceptionSafeThread *a1, uint64_t a2)
{
  v4 = CSCppExceptionSafeThread::main(a1);

  return CSCppExceptionSafeThread::run(v4, a1, a2);
}

uint64_t CSExceptionSafeThreadProtectBlockWithHandler(CSCppExceptionSafeThread *a1, uint64_t a2)
{
  is_current_thread = CSCppExceptionSafeThread::is_current_thread(a1);
  if (is_current_thread)
  {
    v5 = CSCppExceptionSafeThread::main(is_current_thread);

    return CSCppExceptionSafeThread::run(v5, a1, a2);
  }

  else
  {
    (*(a1 + 2))(a1);
    return 4096;
  }
}

_OWORD *kCSTypeRetainCallBack(const __CFAllocator *a1, uint64_t *a2)
{
  v3 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  *v3 = *a2;
  CSRetain(*a2, a2[1]);
  return v3;
}

void kCSTypeReleaseCallBack(const __CFAllocator *a1, void *a2)
{
  CSRelease(*a2, *(a2 + 1));

  free(a2);
}

__n128 kCSTypeWeakRetainCallBack(const __CFAllocator *a1, __n128 *a2)
{
  v3 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
  result = *a2;
  *v3 = *a2;
  return result;
}

uint64_t _copyMMapArchiveFromCacheWithUUID<CFUUIDBytes>(__n128 *a1, void *a2, unint64_t *a3, __int16 *a4)
{
  if (!a1 || (UUID::is_null(a1) & 1) != 0)
  {
    return 0;
  }

  return CSCppMMapArchiveCache::archive_for_uuid(a1, 0, 1, a2, a3, a4, 0, v8);
}

void CSCppDyldSharedCacheMemory::CSCppDyldSharedCacheMemory(uint64_t a1, uint64_t a2, char *a3, char *a4, _OWORD *a5)
{
  *a1 = &unk_1F5508D48;
  v8 = (a1 + 40);
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), a3);
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = "";
  }

  v10 = std::string::basic_string[abi:ne200100]<0>(v8, v9);
  *(a1 + 64) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 89) = 0u;
  *(a1 + 168) = *UUID::null_uuid(v10);
  *(a1 + 184) = *a5;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  new_partial_file_memory();
}

void sub_1D97D7DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  v15 = *(v13 - 72);
  *(v13 - 72) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  std::vector<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>::__destroy_vector::operator()[abi:ne200100](va);
  v16 = *(v11 + 96);
  *(v11 + 96) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  if (*(v11 + 63) < 0)
  {
    operator delete(*v12);
  }

  if (*(v11 + 39) < 0)
  {
    operator delete(*(v11 + 16));
  }

  _Unwind_Resume(a1);
}

void CSCppDyldSharedCacheMemory::CSCppDyldSharedCacheMemory(UUID *a1, uint64_t a2, char *a3, char *a4)
{
  v8 = UUID::null_uuid(a1);

  CSCppDyldSharedCacheMemory::CSCppDyldSharedCacheMemory(a1, v7, a3, a4, v8);
}

uint64_t CSCppDyldSharedCacheMemory::TEXT_address_of_path(CSCppDyldSharedCacheMemory *this, const char *a2, unint64_t *a3)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2000000000;
  v10 = 0;
  v6 = _dyld_shared_cache_real_path();
  if (v6)
  {
    strcmp(a2, v6);
  }

  CSCppDyldSharedCacheMemory::foreach_text_segment(this);
  if (a3)
  {
    *a3 = v12[3];
  }

  v7 = v16[3];
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v7;
}

void sub_1D97D8074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN26CSCppDyldSharedCacheMemoryC2E17CSCppArchitecturePKcS2_PK4UUID_block_invoke_2(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 40);
  v3 = *a2;
  v4 = *(v2 + 72);
  if (v4)
  {
    v5 = *(v2 + 64);
    if (v5 >= v3 && v5 + v4 <= a2[1] + v3)
    {
      *(*(*(result + 32) + 8) + 24) = v5 - v3 + a2[2];
      v8 = *(*(*(result + 32) + 8) + 24);
      v9 = *(v2 + 72);
      operator new();
    }
  }

  if (*(a2 + 7) == 1)
  {
    v7 = a2[1];
    v6 = a2[2];
    operator new();
  }

  return result;
}

void CSCppDyldSharedCacheMemory::~CSCppDyldSharedCacheMemory(CSCppDyldSharedCacheMemory *this)
{
  *this = &unk_1F5508D48;
  v3 = (this + 144);
  std::vector<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

{
  CSCppDyldSharedCacheMemory::~CSCppDyldSharedCacheMemory(this);

  JUMPOUT(0x1DA736760);
}

unint64_t CSCppDyldSharedCacheMemory::file_range_for_memory_range(uint64_t a1, unint64_t *a2, void *a3)
{
  v4 = *(a1 + 144);
  v3 = *(a1 + 152);
  if (v3 != v4)
  {
    v5 = (v3 - v4) >> 5;
    v3 = *(a1 + 144);
    do
    {
      v6 = v5 >> 1;
      v7 = &v3[32 * (v5 >> 1)];
      v9 = *v7;
      v8 = (v7 + 4);
      v5 += ~(v5 >> 1);
      if (*a2 < v9)
      {
        v5 = v6;
      }

      else
      {
        v3 = v8;
      }
    }

    while (v5);
  }

  if (v3 == v4)
  {
    return 0;
  }

  v10 = *(v3 - 4);
  v11 = *a2 - v10;
  if (*a2 < v10 || a2[1] + *a2 > *(v3 - 3) + v10)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = *(v3 - 1);
  }

  return v11 + *(v3 - 2);
}

uint64_t CSCppDyldSharedCacheMemory::foreach_text_segment(uint64_t a1)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v2 = *(a1 + 39);
  if (v2 < 0)
  {
    v3 = *(a1 + 16);
    v2 = *(a1 + 24);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = a1 + 16;
    if (!*(a1 + 39))
    {
      goto LABEL_10;
    }
  }

  v4 = ~v2;
  v5 = (v2 + v3 - 1);
  while (v4 != -1)
  {
    v6 = *v5--;
    ++v4;
    if (v6 == 47)
    {
      if (!v4)
      {
        break;
      }

      std::string::basic_string(&v11, (a1 + 16), 0, -v4, v16);
      goto LABEL_11;
    }
  }

LABEL_10:
  std::string::basic_string[abi:ne200100]<0>(&v11, "");
LABEL_11:
  v7 = &v11;
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v11.__r_.__value_.__r.__words[0];
  }

  v16[0] = v7;
  v16[1] = 0;
  UUID::is_null((a1 + 184));
  dyld_shared_cache_find_iterate_text();
  v8 = v13[3];
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v12, 8);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t ___ZNK26CSCppDyldSharedCacheMemory20foreach_text_segmentEU13block_pointerFvPKcyyE_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[5];
  v4 = a2[1];
  v5 = a2[2];
  result = (*(*(a1 + 32) + 16))();
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t ___ZNK26CSCppDyldSharedCacheMemory19foreach_text_memoryEU13block_pointerFvPKcP15CSCppFileMemoryE_block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = *(a1 + 40);
  v12[0] = a3;
  v12[1] = a4;
  CSCppDyldSharedCacheMemory::file_range_for_memory_range(v6, v12, 0);
  if (v7)
  {
    if (*(v6 + 39) < 0)
    {
      v8 = *(v6 + 16);
    }

    operator new();
  }

  if (a3 - *(v6 + 216) < *(v6 + 224))
  {
    if (*(v6 + 39) < 0)
    {
      v9 = *(v6 + 16);
    }

    operator new();
  }

  v10 = *(*(a1 + 32) + 16);

  return v10();
}

uint64_t ___ZNK26CSCppDyldSharedCacheMemory20TEXT_address_of_pathEPKcPy_block_invoke(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v7 = result;
    result = strcmp(__s1, *(result + 56));
    if (!result || *(v7 + 72) == 1 && (result = strcmp(__s1, *(v7 + 64)), !result))
    {
      *(*(*(v7 + 40) + 8) + 24) = a3;
      *(*(*(v7 + 48) + 8) + 24) = a4;
      *(*(*(v7 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t CSCppDyldSharedCacheMemory::bytes_at(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v6 = 0;
  v4 = CSCppDyldSharedCacheMemory::file_range_for_memory_range(a1, v7, &v6);
  result = v6;
  if (v6)
  {
    return (*(*v6 + 32))(v6, v4, v3);
  }

  return result;
}

uint64_t CSCppDyldSharedCacheMemory::footprint(CSCppDyldSharedCacheMemory *this)
{
  v2 = *(this + 18);
  v3 = *(this + 19);
  v4 = v3 - v2 + 232;
  v5 = *(this + 12);
  if (v5)
  {
    v4 += (*(*v5 + 40))(v5);
    v2 = *(this + 18);
    v3 = *(this + 19);
  }

  while (v2 != v3)
  {
    v6 = *(v2 + 24);
    if (v6)
    {
      v4 += (*(*v6 + 40))(v6);
    }

    v2 += 32;
  }

  return v4;
}

uint64_t CSCppDyldSharedCacheMemory::to_string@<X0>(CSCppDyldSharedCacheMemory *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, "CSCppDyldSharedCache path:", 26);
  v5 = *(this + 39);
  if (v5 >= 0)
  {
    v6 = this + 16;
  }

  else
  {
    v6 = *(this + 2);
  }

  if (v5 >= 0)
  {
    v7 = *(this + 39);
  }

  else
  {
    v7 = *(this + 3);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  if (std::string::compare((this + 40), ""))
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, ", (symbol owner: ", 17);
    v9 = *(this + 63);
    if (v9 >= 0)
    {
      v10 = this + 40;
    }

    else
    {
      v10 = *(this + 5);
    }

    if (v9 >= 0)
    {
      v11 = *(this + 63);
    }

    else
    {
      v11 = *(this + 6);
    }

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ")", 1);
  }

  if ((v24 & 0x10) != 0)
  {
    v14 = v23;
    if (v23 < v20)
    {
      v23 = v20;
      v14 = v20;
    }

    locale = v19[4].__locale_;
  }

  else
  {
    if ((v24 & 8) == 0)
    {
      v13 = 0;
      a2[23] = 0;
      goto LABEL_28;
    }

    locale = v19[1].__locale_;
    v14 = v19[3].__locale_;
  }

  v13 = v14 - locale;
  if ((v14 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v13 >= 0x17)
  {
    operator new();
  }

  a2[23] = v13;
  if (v13)
  {
    memmove(a2, locale, v13);
  }

LABEL_28:
  a2[v13] = 0;
  v17 = *MEMORY[0x1E69E54E8];
  *(&v17 + *(v17 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v18 = MEMORY[0x1E69E5548] + 16;
  if (v22 < 0)
  {
    operator delete(__p);
  }

  v18 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v19);
  std::ostream::~ostream();
  return MEMORY[0x1DA7366F0](&v25);
}

void sub_1D97D8CD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va, MEMORY[0x1E69E54E8]);
  MEMORY[0x1DA7366F0](v2 + 112);
  _Unwind_Resume(a1);
}

uint64_t std::vector<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>::__emplace_back_slow_path<unsigned long long &,unsigned long long &,unsigned long long &,std::unique_ptr<CSCppFileMemory>>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = (v8 - *a1) >> 5;
  v10 = v9 + 1;
  if ((v9 + 1) >> 59)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[2] - v7;
  if (v12 >> 4 > v10)
  {
    v10 = v12 >> 4;
  }

  if (v12 >= 0x7FFFFFFFFFFFFFE0)
  {
    v10 = 0x7FFFFFFFFFFFFFFLL;
  }

  v25 = a1;
  if (v10)
  {
    std::allocator<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>::allocate_at_least[abi:ne200100](a1, v10);
  }

  v13 = (32 * v9);
  v22 = 0;
  v23 = 32 * v9;
  v14 = *a2;
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  *a5 = 0;
  *v13 = v14;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = v17;
  v24 = (32 * v9 + 32);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>,CSCppDyldSharedCacheMemory::CSCppAddressTranslation*>(a1, v7, v8, 0);
  v18 = *a1;
  *a1 = 0;
  v19 = a1[2];
  v21 = v24;
  *(a1 + 1) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  std::__split_buffer<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>::~__split_buffer(&v22);
  return v21;
}

void sub_1D97D8E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>,CSCppDyldSharedCacheMemory::CSCppAddressTranslation*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      *(v6 + 24) = 0;
      *(a4 + 16) = v7;
      *(a4 + 24) = v8;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    while (v5 != a3)
    {
      v9 = *(v5 + 24);
      *(v5 + 24) = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>,CSCppDyldSharedCacheMemory::CSCppAddressTranslation*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>,CSCppDyldSharedCacheMemory::CSCppAddressTranslation*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>,CSCppDyldSharedCacheMemory::CSCppAddressTranslation*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void **std::_AllocatorDestroyRangeReverse<std::allocator<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>,CSCppDyldSharedCacheMemory::CSCppAddressTranslation*>::operator()[abi:ne200100](void **result)
{
  v1 = *result[2];
  v2 = *result[1];
  while (v1 != v2)
  {
    result = *(v1 - 8);
    *(v1 - 8) = 0;
    if (result)
    {
      result = ((*result)[1])(result);
    }

    v1 -= 32;
  }

  return result;
}

void **std::__split_buffer<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>::~__split_buffer(void **a1)
{
  std::__split_buffer<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>::__destruct_at_end[abi:ne200100](a1, a1[1]);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>::__destruct_at_end[abi:ne200100](void *result, uint64_t a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v4[2] = v2 - 32;
      result = *(v2 - 8);
      *(v2 - 8) = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }

      else
      {
        v2 -= 32;
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t std::vector<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>::__emplace_back_slow_path<unsigned long,unsigned long long,unsigned long long,std::unique_ptr<CSCppFileMemory>>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = (v8 - *a1) >> 5;
  v10 = v9 + 1;
  if ((v9 + 1) >> 59)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[2] - v7;
  if (v12 >> 4 > v10)
  {
    v10 = v12 >> 4;
  }

  if (v12 >= 0x7FFFFFFFFFFFFFE0)
  {
    v10 = 0x7FFFFFFFFFFFFFFLL;
  }

  v25 = a1;
  if (v10)
  {
    std::allocator<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>::allocate_at_least[abi:ne200100](a1, v10);
  }

  v13 = (32 * v9);
  v22 = 0;
  v23 = 32 * v9;
  v14 = *a2;
  v15 = *a3;
  v16 = *a4;
  v17 = *a5;
  *a5 = 0;
  *v13 = v14;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = v17;
  v24 = (32 * v9 + 32);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>,CSCppDyldSharedCacheMemory::CSCppAddressTranslation*>(a1, v7, v8, 0);
  v18 = *a1;
  *a1 = 0;
  v19 = a1[2];
  v21 = v24;
  *(a1 + 1) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  std::__split_buffer<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>::~__split_buffer(&v22);
  return v21;
}

void sub_1D97D91E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *,false>(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v55 = a2;
  v56 = result;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = (v7 - v8) >> 5;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v48 = *(v7 - 4);
        v55 = v7 - 2;
        if (v48 < *v8)
        {
          v49 = &v56;
          v50 = &v55;
          return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(v49, v50);
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v55 = v7 - 2;
      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *,0>(v8, (v8 + 32), (v8 + 64), v7 - 4);
    }

    if (v10 == 5)
    {
      v55 = v7 - 2;
      v60 = (v8 + 32);
      *&v61 = v8;
      v58 = (v8 + 96);
      v59 = (v8 + 64);
      v57 = v7 - 2;
      result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *,0>(v8, (v8 + 32), (v8 + 64), (v8 + 96));
      if (*(v7 - 4) < *(v8 + 96))
      {
        result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v58, &v57);
        if (*v58 < *(v8 + 64))
        {
          result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v59, &v58);
          if (*v59 < *(v8 + 32))
          {
            result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v60, &v59);
            v51 = *v60;
            v52 = *v8;
            goto LABEL_94;
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      if (a5)
      {
        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *>(v8, v7);
      }

      else
      {
        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *>(v8, v7);
      }
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *>(v8, v7, v7, a3);
      }

      return result;
    }

    v11 = (v8 + 32 * (v10 >> 1));
    v12 = v11;
    v13 = v7 - 2;
    if (v10 < 0x81)
    {
      v60 = v8;
      *&v61 = v8 + 32 * (v10 >> 1);
      v59 = v7 - 2;
      v18 = *v8;
      v19 = *v13;
      if (*v8 >= *v11)
      {
        if (v19 < v18)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v60, &v59);
          if (*v60 < *v61)
          {
            v20 = &v61;
            v21 = &v60;
            goto LABEL_35;
          }
        }
      }

      else
      {
        v20 = &v61;
        if (v19 < v18)
        {
          goto LABEL_22;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v61, &v60);
        if (*v59 < *v60)
        {
          v20 = &v60;
LABEL_22:
          v21 = &v59;
LABEL_35:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(v20, v21);
        }
      }

      if (a5)
      {
        goto LABEL_37;
      }

      goto LABEL_65;
    }

    v60 = (v8 + 32 * (v10 >> 1));
    *&v61 = v8;
    v59 = v7 - 2;
    v14 = *v11;
    v15 = *v13;
    if (*v11 < *v8)
    {
      v16 = &v61;
      if (v15 >= v14)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v61, &v60);
        if (*v59 >= *v60)
        {
          goto LABEL_27;
        }

        v16 = &v60;
      }

      v17 = &v59;
      goto LABEL_26;
    }

    if (v15 < v14)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v60, &v59);
      if (*v60 < *v61)
      {
        v16 = &v61;
        v17 = &v60;
LABEL_26:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(v16, v17);
      }
    }

LABEL_27:
    v23 = v11 - 2;
    v22 = *(v11 - 4);
    v24 = *(v8 + 32);
    v60 = v11 - 2;
    *&v61 = v8 + 32;
    v25 = *(v7 - 8);
    v59 = v7 - 4;
    if (v22 < v24)
    {
      v26 = &v61;
      if (v25 >= v22)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v61, &v60);
        if (*v59 >= *v60)
        {
          goto LABEL_42;
        }

        v26 = &v60;
      }

      v27 = &v59;
      goto LABEL_41;
    }

    if (v25 < v22)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v60, &v59);
      if (*v60 < *v61)
      {
        v26 = &v61;
        v27 = &v60;
LABEL_41:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(v26, v27);
      }
    }

LABEL_42:
    v30 = *(v11 + 4);
    v29 = v11 + 2;
    v28 = v30;
    v31 = *(v8 + 64);
    v60 = v29;
    *&v61 = v8 + 64;
    v32 = *(v7 - 12);
    v59 = v7 - 6;
    if (v30 < v31)
    {
      v33 = &v61;
      if (v32 >= v28)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v61, &v60);
        if (*v59 >= *v60)
        {
          goto LABEL_51;
        }

        v33 = &v60;
      }

      v34 = &v59;
      goto LABEL_50;
    }

    if (v32 < v28)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v60, &v59);
      if (*v60 < *v61)
      {
        v33 = &v61;
        v34 = &v60;
LABEL_50:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(v33, v34);
      }
    }

LABEL_51:
    v60 = v12;
    *&v61 = v23;
    v59 = v29;
    v35 = *v12;
    v36 = *v29;
    if (*v12 < *v23)
    {
      v37 = &v61;
      if (v36 >= v35)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v61, &v60);
        if (*v59 >= *v60)
        {
          goto LABEL_60;
        }

        v37 = &v60;
      }

      v38 = &v59;
      goto LABEL_59;
    }

    if (v36 < v35)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v60, &v59);
      if (*v60 < *v61)
      {
        v37 = &v61;
        v38 = &v60;
LABEL_59:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(v37, v38);
      }
    }

LABEL_60:
    v61 = *v8;
    v39 = *(v8 + 16);
    v40 = *(v8 + 24);
    *(v8 + 24) = 0;
    *v8 = *v12;
    v41 = *(v12 + 2);
    v42 = *(v12 + 3);
    *(v12 + 3) = 0;
    v43 = *(v8 + 24);
    *(v8 + 16) = v41;
    *(v8 + 24) = v42;
    if (v43)
    {
      (*(*v43 + 8))(v43);
    }

    *v12 = v61;
    v44 = *(v12 + 3);
    *(v12 + 2) = v39;
    *(v12 + 3) = v40;
    if (v44)
    {
      (*(*v44 + 8))(v44);
    }

    v8 = v56;
    if (a5)
    {
LABEL_37:
      v7 = v55;
      goto LABEL_66;
    }

LABEL_65:
    v7 = v55;
    if (*(v8 - 32) >= *v8)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *,std::__less<void,void> &>(v8, v55);
      v8 = result;
      goto LABEL_75;
    }

LABEL_66:
    v45 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *,std::__less<void,void> &>(v8, v7);
    if ((v46 & 1) == 0)
    {
      goto LABEL_73;
    }

    v47 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *>(v8, v45);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *>(v45 + 2, v7);
    if (result)
    {
      if (v47)
      {
        return result;
      }

      v55 = v45;
      v7 = v45;
    }

    else
    {
      if (!v47)
      {
LABEL_73:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *,false>(v8, v45, a3, -i, a5 & 1);
        v8 = (v45 + 2);
LABEL_75:
        a5 = 0;
        v56 = v8;
        a4 = -i;
        goto LABEL_2;
      }

      v56 = v45 + 2;
      v8 = (v45 + 2);
    }
  }

  v53 = *(v8 + 32);
  v60 = (v8 + 32);
  *&v61 = v8;
  v54 = *(v7 - 4);
  v59 = v7 - 2;
  if (v53 < *v8)
  {
    v49 = &v61;
    if (v54 >= v53)
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v61, &v60);
      if (*v59 >= *v60)
      {
        return result;
      }

      v49 = &v60;
    }

    v50 = &v59;
    return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(v49, v50);
  }

  if (v54 < v53)
  {
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v60, &v59);
    v51 = *v60;
    v52 = *v61;
LABEL_94:
    if (v51 < v52)
    {
      v49 = &v61;
      v50 = &v60;
      return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(v49, v50);
    }
  }

  return result;
}

uint64_t std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(__int128 **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v11 = **a1;
  v4 = *(*a1 + 2);
  v5 = *(*a1 + 3);
  *(v2 + 3) = 0;
  *v2 = *v3;
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *(v3 + 24) = 0;
  v8 = *(v2 + 3);
  *(v2 + 2) = v6;
  *(v2 + 3) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *v3 = v11;
  result = *(v3 + 24);
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  if (result)
  {
    v10 = *(*result + 8);

    return v10();
  }

  return result;
}

__int128 *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *,0>(__int128 *result, __int128 *a2, __int128 *a3, void *a4)
{
  v7 = result;
  v14 = a2;
  v15 = result;
  v12 = a4;
  v13 = a3;
  v18 = result;
  v16 = a3;
  v17 = a2;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *result)
  {
    if (v9 < v8)
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v17, &v16);
      if (*v17 < *v18)
      {
        v10 = &v18;
        v11 = &v17;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v10 = &v18;
    if (v9 < v8)
    {
LABEL_5:
      v11 = &v16;
LABEL_9:
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(v10, v11);
      goto LABEL_10;
    }

    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v18, &v17);
    if (*v16 < *v17)
    {
      v10 = &v17;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v13, &v12);
    if (*v13 < *a2)
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v14, &v13);
      if (*v14 < *v7)
      {
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v15, &v14);
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 32;
    if (result + 32 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v6;
        v6 = v4;
        v8 = *(v7 + 32);
        if (v8 < *v7)
        {
          v17 = *(v7 + 40);
          v9 = *(v7 + 56);
          v10 = v5;
          *(v7 + 56) = 0;
          while (1)
          {
            v11 = v3 + v10;
            *(v11 + 32) = *(v3 + v10);
            v12 = *(v3 + v10 + 16);
            v13 = *(v3 + v10 + 24);
            *(v11 + 24) = 0;
            v14 = *(v3 + v10 + 56);
            *(v11 + 48) = v12;
            *(v11 + 56) = v13;
            if (v14)
            {
              (*(*v14 + 8))(v14);
            }

            if (!v10)
            {
              break;
            }

            v15 = *(v3 + v10 - 32);
            v10 -= 32;
            if (v8 >= v15)
            {
              v16 = v3 + v10 + 32;
              goto LABEL_12;
            }
          }

          v16 = v3;
LABEL_12:
          *v16 = v8;
          *(v16 + 8) = v17;
          result = *(v16 + 24);
          *(v16 + 24) = v9;
          if (result)
          {
            result = (*(*result + 8))(result);
          }
        }

        v4 = v6 + 32;
        v5 += 32;
      }

      while (v6 + 32 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 32;
    if (result + 32 != a2)
    {
      v5 = (result + 56);
      do
      {
        v6 = v3;
        v3 = v4;
        v7 = *(v6 + 32);
        if (v7 < *v6)
        {
          v14 = *(v6 + 40);
          v8 = *(v6 + 56);
          v9 = v5;
          *(v6 + 56) = 0;
          do
          {
            *(v9 - 3) = *(v9 - 7);
            v10 = *(v9 - 5);
            v11 = *(v9 - 4);
            *(v9 - 4) = 0;
            v12 = *v9;
            *(v9 - 1) = v10;
            *v9 = v11;
            if (v12)
            {
              (*(*v12 + 8))(v12);
            }

            v13 = *(v9 - 11);
            v9 -= 4;
          }

          while (v7 < v13);
          *(v9 - 3) = v7;
          *(v9 - 1) = v14;
          result = *v9;
          *v9 = v8;
          if (result)
          {
            result = (*(*result + 8))(result);
          }
        }

        v4 = v3 + 32;
        v5 += 4;
      }

      while (v3 + 32 != a2);
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *,std::__less<void,void> &>(uint64_t a1, unint64_t a2)
{
  v20 = a2;
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *(a1 + 24) = 0;
  v19 = v3;
  v6 = v3;
  if (v3 >= *(a2 - 32))
  {
    v9 = (a1 + 32);
    do
    {
      v7 = v9;
      if (v9 >= a2)
      {
        break;
      }

      v9 += 2;
    }

    while (v3 >= *v7);
  }

  else
  {
    v7 = a1;
    do
    {
      v8 = *(v7 + 4);
      v7 += 2;
    }

    while (v3 >= v8);
  }

  v21 = v7;
  if (v7 < a2)
  {
    do
    {
      v10 = *(a2 - 32);
      a2 -= 32;
    }

    while (v3 < v10);
    v20 = a2;
  }

  if (v7 < a2)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v21, &v20);
      v7 = v21;
      do
      {
        v11 = *(v7 + 4);
        v7 += 2;
      }

      while (v6 >= v11);
      v21 = v7;
      v12 = v20;
      do
      {
        v13 = *(v12 - 32);
        v12 -= 32;
      }

      while (v6 < v13);
      v20 = v12;
    }

    while (v7 < v12);
  }

  if (v7 - 2 != a1)
  {
    *a1 = *(v7 - 2);
    v14 = *(v7 - 2);
    v15 = *(v7 - 1);
    *(v7 - 1) = 0;
    v16 = *(a1 + 24);
    *(a1 + 16) = v14;
    *(a1 + 24) = v15;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }
  }

  *(v7 - 2) = v19;
  v17 = *(v7 - 1);
  *(v7 - 2) = v4;
  *(v7 - 1) = v5;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  return v21;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *,std::__less<void,void> &>(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v5 = *a1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 24) = 0;
  v22 = v5;
  v8 = v5;
  do
  {
    v9 = *(a1 + v4 + 32);
    v4 += 32;
  }

  while (v9 < v5);
  v10 = a1 + v4;
  v24 = (a1 + v4);
  if (v4 == 32)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v12 = *(a2 - 32);
      a2 -= 32;
    }

    while (v12 >= v5);
  }

  else
  {
    do
    {
      v11 = *(a2 - 32);
      a2 -= 32;
    }

    while (v11 >= v5);
  }

  v23 = a2;
  v13 = (a1 + v4);
  if (v10 < a2)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v24, &v23);
      v13 = v24;
      do
      {
        v14 = *(v13 + 4);
        v13 += 2;
      }

      while (v14 < v8);
      v24 = v13;
      v15 = v23;
      do
      {
        v16 = *(v15 - 32);
        v15 -= 32;
      }

      while (v16 >= v8);
      v23 = v15;
    }

    while (v13 < v15);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    v17 = *(v13 - 2);
    v18 = *(v13 - 1);
    *(v13 - 1) = 0;
    v19 = *(a1 + 24);
    *(a1 + 16) = v17;
    *(a1 + 24) = v18;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  *(v13 - 2) = v22;
  v20 = *(v13 - 1);
  *(v13 - 2) = v6;
  *(v13 - 1) = v7;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *>(__int128 *a1, __int128 *a2)
{
  v35 = a1;
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v12 = *(a1 + 4);
        v39 = a1 + 2;
        v40 = a1;
        v13 = *(a2 - 4);
        v38 = a2 - 2;
        if (v12 < *a1)
        {
          v6 = &v40;
          if (v13 >= v12)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v40, &v39);
            if (*v38 >= *v39)
            {
              return 1;
            }

            v6 = &v39;
          }

          v7 = &v38;
          goto LABEL_28;
        }

        if (v13 >= v12)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v39, &v38);
        v10 = *v39;
        v11 = *v40;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *,0>(a1, a1 + 2, a1 + 4, a2 - 4);
        return 1;
      case 5:
        v8 = a1 + 2;
        v39 = a1 + 2;
        v40 = a1;
        v9 = a1 + 4;
        v37 = a1 + 6;
        v38 = a1 + 4;
        v36 = a2 - 2;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *,0>(a1, a1 + 2, a1 + 4, a1 + 12);
        if (*(a2 - 4) >= *(a1 + 12))
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v37, &v36);
        if (*v37 >= *v9)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v38, &v37);
        if (*v38 >= *v8)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v39, &v38);
        v10 = *v39;
        v11 = *a1;
        break;
      default:
        goto LABEL_18;
    }

    if (v10 < v11)
    {
      v6 = &v40;
      v7 = &v39;
      goto LABEL_28;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 4);
    v34 = a2 - 2;
    if (v5 < *a1)
    {
      v6 = &v35;
      v7 = &v34;
LABEL_28:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(v6, v7);
    }

    return 1;
  }

LABEL_18:
  v15 = a1 + 4;
  v14 = *(a1 + 8);
  v16 = *(a1 + 4);
  v39 = a1 + 2;
  v40 = a1;
  v38 = a1 + 4;
  if (v16 < *a1)
  {
    v17 = &v40;
    if (v14 >= v16)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v40, &v39);
      if (*v38 >= *v39)
      {
        goto LABEL_33;
      }

      v17 = &v39;
    }

    v18 = &v38;
    goto LABEL_32;
  }

  if (v14 < v16)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v39, &v38);
    if (*v39 < *v40)
    {
      v17 = &v40;
      v18 = &v39;
LABEL_32:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(v17, v18);
    }
  }

LABEL_33:
  v19 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v20 = 0;
  v21 = 0;
  while (1)
  {
    v22 = *v19;
    if (*v19 < *v15)
    {
      v33 = *(v19 + 8);
      v23 = *(v19 + 3);
      v24 = v20;
      *(v19 + 3) = 0;
      while (1)
      {
        v25 = a1 + v24;
        *(v25 + 6) = *(a1 + v24 + 64);
        v26 = *(a1 + v24 + 80);
        v27 = *(a1 + v24 + 88);
        *(v25 + 11) = 0;
        v28 = *(a1 + v24 + 120);
        *(v25 + 14) = v26;
        *(v25 + 15) = v27;
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }

        if (v24 == -64)
        {
          break;
        }

        v29 = *(a1 + v24 + 32);
        v24 -= 32;
        if (v22 >= v29)
        {
          v30 = a1 + v24 + 96;
          goto LABEL_43;
        }
      }

      v30 = a1;
LABEL_43:
      *v30 = v22;
      *(v30 + 8) = v33;
      v31 = *(v30 + 24);
      *(v30 + 24) = v23;
      if (v31)
      {
        (*(*v31 + 8))(v31);
      }

      if (++v21 == 8)
      {
        return v19 + 2 == a2;
      }
    }

    v15 = v19;
    v20 += 32;
    v19 += 2;
    if (v19 == a2)
    {
      return 1;
    }
  }
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *>(unint64_t *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v17 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[4 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *>(v7, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v16 = v6;
    v12 = v6;
    if (v6 != a3)
    {
      do
      {
        if (*v12 < *v17)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *&>(&v16, &v17);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *>(v17, a4, v8, v17);
          v12 = v16;
        }

        v12 += 2;
        v16 = v12;
      }

      while (v12 != a3);
      v7 = v17;
      v8 = (v6 - v17) >> 5;
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *>(v7, v6, a4, v8);
        v6 -= 2;
        v13 = v8 >= 2;
        v14 = v8-- == 2;
      }

      while (!v14 && v13);
      return v16;
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = a4 - result;
    v8 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 5)
    {
      v10 = v7 >> 4;
      v11 = (v7 >> 4) + 1;
      v12 = (result + 32 * v11);
      v13 = v10 + 2;
      if (v10 + 2 >= a3)
      {
        v14 = *v12;
      }

      else
      {
        v14 = *v12;
        v15 = v12[4];
        if (*v12 <= v15)
        {
          v14 = v12[4];
        }

        if (*v12 < v15)
        {
          v12 += 4;
          v11 = v13;
        }
      }

      v16 = *a4;
      if (v14 >= *a4)
      {
        v25 = *(a4 + 1);
        v17 = a4[3];
        a4[3] = 0;
        do
        {
          v18 = v5;
          v5 = v12;
          *v18 = *v12;
          v19 = v12[2];
          v20 = v5[3];
          v5[3] = 0;
          v21 = v18[3];
          v18[2] = v19;
          v18[3] = v20;
          if (v21)
          {
            (*(*v21 + 8))(v21);
          }

          if (v8 < v11)
          {
            break;
          }

          v12 = (v6 + 32 * ((2 * v11) | 1));
          if (2 * v11 + 2 >= a3)
          {
            v22 = *v12;
            v11 = (2 * v11) | 1;
          }

          else
          {
            v22 = *v12;
            v23 = v12[4];
            if (*v12 <= v23)
            {
              v22 = v12[4];
            }

            if (*v12 >= v23)
            {
              v11 = (2 * v11) | 1;
            }

            else
            {
              v12 += 4;
              v11 = 2 * v11 + 2;
            }
          }
        }

        while (v22 >= v16);
        *v5 = v16;
        *(v5 + 1) = v25;
        result = v5[3];
        v5[3] = v17;
        if (result)
        {
          v24 = *(*result + 8);

          return v24();
        }
      }
    }
  }

  return result;
}

void *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *>(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v6 = result;
    v17 = *result;
    v8 = result[2];
    v7 = result[3];
    result[3] = 0;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *>(result, a3, a4);
    v10 = v9;
    v11 = (a2 - 32);
    if (v9 == a2 - 32)
    {
      *v9 = v17;
      result = *(v9 + 24);
      *(v10 + 16) = v8;
      *(v10 + 24) = v7;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }

    else
    {
      *v9 = *v11;
      v12 = *(a2 - 16);
      v13 = *(a2 - 8);
      *(a2 - 8) = 0;
      v14 = *(v9 + 24);
      *(v10 + 16) = v12;
      *(v10 + 24) = v13;
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      v15 = v10 + 32;
      *v11 = v17;
      v16 = *(a2 - 8);
      *(a2 - 16) = v8;
      *(a2 - 8) = v7;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      return std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *>(v6, v15, a3, (v15 - v6) >> 5);
    }
  }

  return result;
}

void sub_1D97DA780(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = (a3 - 2) / 2;
  do
  {
    v6 = a1 + 32 * v4;
    v7 = v6 + 32;
    if (2 * v4 + 2 >= a3)
    {
      v4 = (2 * v4) | 1;
    }

    else
    {
      v9 = *(v6 + 64);
      v8 = v6 + 64;
      if (*(v8 - 32) >= v9)
      {
        v4 = (2 * v4) | 1;
      }

      else
      {
        v7 = v8;
        v4 = 2 * v4 + 2;
      }
    }

    *a1 = *v7;
    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
    *(v7 + 24) = 0;
    v12 = *(a1 + 24);
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    a1 = v7;
  }

  while (v4 <= v5);
  return v7;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppDyldSharedCacheMemory::CSCppAddressTranslation *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = result;
    v6 = v4 >> 1;
    v7 = result + 32 * (v4 >> 1);
    v8 = a2 - 32;
    v9 = *(a2 - 32);
    if (*v7 < v9)
    {
      v16 = *(a2 - 24);
      v10 = *(a2 - 8);
      *(a2 - 8) = 0;
      do
      {
        v11 = v8;
        v8 = v7;
        *v11 = *v7;
        v12 = *(v7 + 16);
        v13 = *(v8 + 24);
        *(v8 + 24) = 0;
        v14 = *(v11 + 24);
        *(v11 + 16) = v12;
        *(v11 + 24) = v13;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = v5 + 32 * v6;
      }

      while (*v7 < v9);
      *v8 = v9;
      *(v8 + 8) = v16;
      result = *(v8 + 24);
      *(v8 + 24) = v10;
      if (result)
      {
        v15 = *(*result + 8);

        return v15();
      }
    }
  }

  return result;
}

void std::vector<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<CSCppDyldSharedCacheMemory::CSCppAddressTranslation>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  for (i = result[1]; i != v2; i -= 32)
  {
    result = *(i - 8);
    *(i - 8) = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

TMMapArchive *CSCppMMapArchiveCache::_augment_mmap_archive_to_include_text_section_locked(CSCppMMapArchiveCache *this, TMMapArchive *a2, CSCppSymbolOwner *a3)
{
  v3 = a2;
  v24 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (!*(this + 20))
    {
      CSCppTextSectionDataDescriptor::CSCppTextSectionDataDescriptor(v19, a2);
      v16 = *(v3 + 14);
      if (CSCppArchitecture::is_64_bit(&v16))
      {
        CSCppTextSectionDataDescriptor::get_text_section<Pointer64>(v19, v3, &v16);
        v5 = v16;
        v6 = v17;
        v7 = v18;
      }

      else
      {
        text = CSCppTextSectionDataDescriptor::get_text_section<Pointer32>(v19, v3);
        v7 = v9;
        v5 = text;
        v6 = HIDWORD(text);
      }

      new_mmap_archive_with_text = this;
      if (v7)
      {
        v16 = v5;
        v17 = v6;
        v18 = v7;
        v16 = (CSCppMMapArchiveCache::compute_text_section_slide_for_mmap<Pointer64>(this, v3, &v16) + v5);
        v17 = v6;
        v18 = v7;
        new_mmap_archive_with_text = _create_new_mmap_archive_with_text_data<TRangeValue<Pointer64,unsigned char *>>(this, &v16);
      }

      std::mutex::~mutex(&v23);
      v16 = &v22;
      std::vector<std::unique_ptr<CSCppMemory>>::__destroy_vector::operator()[abi:ne200100](&v16);
      if (v21 < 0)
      {
        operator delete(v20[4]);
      }

      std::__tree<TRange<Pointer64>>::destroy(v20, v20[1]);
      if (new_mmap_archive_with_text != this)
      {
        v11 = *(new_mmap_archive_with_text + 1);
        v12 = *(v3 + 1);
        if (*(v12 + 64))
        {
          if (*(v12 + 56))
          {
            v13 = *(v12 + 56);
          }

          else
          {
            v13 = *(v3 + 1);
          }
        }

        CSCppMMapArchiveCache::make_archive_wrapper();
      }
    }

    v3 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1D97DABFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  CSCppTextSectionDataDescriptor::~CSCppTextSectionDataDescriptor(va);
  _Unwind_Resume(a1);
}

void CSCppMMapArchiveCache::_add_archive_wrapper_locked(CSCppMMapArchiveCache *this, TMMapArchive *a2, ArchiveWrapper *a3)
{
  atomic_fetch_add(allowed_disconnect_sequence_number, 1u);
  if ((*(a2 + 24) & 8) != 0)
  {
    v5 = *(a2 + 5);
  }

  else
  {
    v5 = 0;
  }

  CSCppMMapArchiveCache::_kill_existing_matching_entries_locked(this, v5);

  CSCppMMapArchiveCache::_add_archive_wrapper_locked_no_kill(this, a2, v6);
}

CSCppMMapArchiveCache *CSCppMMapArchiveCache::augment_mmap_archive_to_include_text_section(CSCppMMapArchiveCache *this, TMMapArchive *a2, CSCppSymbolOwner *a3)
{
  pthread_mutex_lock(&_cache_lock);
  v6 = CSCppMMapArchiveCache::_augment_mmap_archive_to_include_text_section_locked(this, a2, v5);
  if (v6)
  {
    this = *(v6 + 2);
  }

  pthread_mutex_unlock(&_cache_lock);
  return this;
}

TMMapArchive *CSCppMMapArchiveCache::_lookup_archive_wrapper_in_local_cache_locked(__n128 *this, const UUID *a2, int a3, void *a4, unint64_t *a5, __int16 *a6, __int16 *a7, CSCppSymbolOwner *a8)
{
  if ((UUID::is_null(this) & 1) == 0)
  {
    if (!_mmap_archive_cache)
    {
      operator new();
    }

    v15 = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>>>::__equal_range_multi<UUID>(_mmap_archive_cache, this);
    if (a7)
    {
      v18 = atomic_load((*(a7 + 1) + 40));
      v19 = (v18 >> 2) & 1;
    }

    else
    {
      v19 = 0;
    }

    while (1)
    {
      if (v15 == v16)
      {
        return 0;
      }

      v20 = v15[4];
      v21 = *(v20 + 24);
      if ((v21 & 8) != 0)
      {
        v22 = *(v20 + 40);
        if (v21 < 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v22 = 0;
        if (v21 < 0)
        {
          goto LABEL_12;
        }
      }

      if (v22 == a2)
      {
        v24 = *(v20 + 16);
        v25 = *(v24 + 28);
        if ((v25 & 0x1000) != 0)
        {
          v26 = *(v24 + 80) == 0;
          if (!a7)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v26 = 1;
          if (!a7)
          {
LABEL_21:
            v27 = 0;
            goto LABEL_25;
          }
        }

        if ((a7[55] & 0x40) == 0)
        {
          goto LABEL_21;
        }

        if (*(a7 + 16))
        {
          v27 = 1;
        }

        else
        {
          v27 = *(a7 + 15) != 0;
        }

LABEL_25:
        v28 = (v25 & 0x10) == 0 && v27;
        if ((v26 & v19 & 1) == 0 && !v28)
        {
LABEL_30:
          CSCppReferenceCount::retain(v20);
          result = v20;
          goto LABEL_31;
        }

        v32 = *(v20 + 16);
        result = CSCppMMapArchiveCache::_lookup_archive_wrapper_in_daemon_cache_locked(this, a2, a3, a4, a5, a6, a7, v17);
        if (!result)
        {
          if (!v19)
          {
            goto LABEL_30;
          }

          result = CSCppMMapArchiveCache::_augment_mmap_archive_to_include_text_section_locked(v32, a7, v29);
          goto LABEL_47;
        }

        v30 = *(result + 2);
        if (!v30)
        {
          goto LABEL_30;
        }

        if (v19)
        {
          if (*(v30 + 80))
          {
            v31 = result;
          }

          else
          {
            v31 = 0;
          }

          if (*(v30 + 80) != 0 || !v28)
          {
            result = v31;
LABEL_47:
            if (!result)
            {
              goto LABEL_30;
            }

LABEL_31:
            if (a4)
            {
              *a4 = *(*(result + 2) + 4);
            }

            if (a5)
            {
              *a5 = *(result + 24);
            }

            if (a6)
            {
              *a6 = *(result + 25);
            }

            return result;
          }
        }

        else if (!v28)
        {
          goto LABEL_30;
        }

        if ((*(v30 + 28) & 0x10) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_31;
      }

LABEL_12:
      v15 = *v15;
    }
  }

  return 0;
}

TMMapArchive *CSCppMMapArchiveCache::_lookup_archive_wrapper_in_daemon_cache_locked(__n128 *this, const UUID *a2, int a3, void *a4, unint64_t *a5, __int16 *a6, __int16 *a7, CSCppSymbolOwner *a8)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_9;
  }

  if (a2)
  {
    if (*(a7 + 18))
    {
LABEL_9:
      v18 = 0;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if (a7)
  {
LABEL_6:
    v13 = atomic_load((*(a7 + 1) + 40));
    v14 = (v13 & 4) == 0;
    goto LABEL_8;
  }

  v14 = 1;
LABEL_8:
  v24 = 0;
  v15 = geteuid();
  MMapArchiveFileSystem::ArchiveEntry::ArchiveEntry(v25, this, 0, v15, 0, 7, 0xFFFF);
  v23 = 0;
  *v22 = 0;
  v16 = mmap_storage_daemon();
  if (CSCppDaemonConnection::read_mmap_archive(v16, v25, &v24, &v23, &v22[1], v22))
  {
    goto LABEL_9;
  }

  if ((*(v24 + 29) & 0x10) != 0 || (HIDWORD(*(v24 + 76)) ? (v21 = 1) : (v21 = v14), (v21 & 1) != 0 || (v18 = CSCppMMapArchiveCache::_augment_mmap_archive_to_include_text_section_locked(v24, a7, v17)) == 0))
  {
    operator new();
  }

  munmap(v24, v23);
  if (a4)
  {
    *a4 = *(*(v18 + 2) + 4);
  }

  if (a5)
  {
    *a5 = v22[1];
  }

  if (a6)
  {
    *a6 = v22[0];
  }

LABEL_10:
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t mmap_storage_daemon(void)
{
  if (!_mmap_storage_daemon)
  {
    operator new();
  }

  return _mmap_storage_daemon;
}

uint64_t CSCppMMapArchiveCache::archive_for_uuid(__n128 *this, const UUID *a2, int a3, void *a4, unint64_t *a5, __int16 *a6, __int16 *a7, CSCppSymbolOwner *a8)
{
  atomic_fetch_add(allowed_disconnect_sequence_number, 1u);
  pthread_mutex_lock(&_cache_lock);
  v16 = CSCppMMapArchiveCache::_lookup_archive_wrapper_in_local_cache_locked(this, a2, a3, a4, a5, a6, a7, v15);
  if (v16 || (v16 = CSCppMMapArchiveCache::_lookup_archive_wrapper_in_daemon_cache_locked(this, a2, a3, a4, a5, a6, a7, v17)) != 0)
  {
    v18 = *(v16 + 2);
  }

  else
  {
    v18 = 0;
  }

  pthread_mutex_unlock(&_cache_lock);
  return v18;
}

uint64_t *CSCppMMapArchiveCache::_kill_existing_matching_entries_locked(CSCppMMapArchiveCache *this, TMMapArchive *a2)
{
  if (!_mmap_archive_cache)
  {
    operator new();
  }

  for (result = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>>>::__equal_range_multi<UUID>(_mmap_archive_cache, (this + 52)); result != v4; result = *result)
  {
    v5 = result[4];
    v6 = *(v5 + 24);
    if ((v6 & 8) != 0)
    {
      v7 = *(v5 + 40);
    }

    else
    {
      v7 = 0;
    }

    if (v7 == a2)
    {
      *(v5 + 24) = v6 | 0x80000000;
    }
  }

  return result;
}

void CSCppMMapArchiveCache::_add_archive_wrapper_locked_no_kill(CSCppMMapArchiveCache *this, TMMapArchive *a2, ArchiveWrapper *a3)
{
  atomic_fetch_add(allowed_disconnect_sequence_number, 1u);
  if (!_mmap_archive_cache)
  {
    operator new();
  }

  std::__hash_table<std::__hash_value_type<UUID,ArchiveWrapper *>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,ArchiveWrapper *>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,ArchiveWrapper *>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,ArchiveWrapper *>>>::__emplace_multi<UUID const&,ArchiveWrapper *&>();
}

void CSCppMMapArchiveCache::add_archive_wrapper(CSCppMMapArchiveCache *this, TMMapArchive *a2, ArchiveWrapper *a3)
{
  atomic_fetch_add(allowed_disconnect_sequence_number, 1u);
  pthread_mutex_lock(&_cache_lock);
  CSCppMMapArchiveCache::_add_archive_wrapper_locked(this, a2, v5);
}

TMMapArchive *CSCppMMapArchiveCache::_add_archive_to_daemon_locked(TMMapArchive *a1, unint64_t *a2, _DWORD *a3, char *__source)
{
  v14 = *MEMORY[0x1E69E9840];
  atomic_fetch_add(allowed_disconnect_sequence_number, 1u);
  if (CSCppMMapArchiveCache::_should_store_to_daemon == 1)
  {
    *__dst = 0;
    strlcpy(__dst, __source, 8uLL);
    MMapArchiveFileSystem::ArchiveEntry::ArchiveEntry(v13, (a1 + 52), *__dst, -1, 0, 7, 0);
    v11 = 0;
    v10 = a1;
    v7 = mmap_storage_daemon();
    if (CSCppDaemonConnection::write_mmap_archive(v7, v13, &v11, &v10, a2))
    {
      if (v11 == 4)
      {
        CSCppMMapArchiveCache::_should_store_to_daemon = 0;
      }
    }

    else if (!v11)
    {
      mach_vm_deallocate(*MEMORY[0x1E69E9A60], a1, *(a1 + 1));
      a1 = v10;
      *a3 = 2;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return a1;
}

void CSCppMMapArchiveCache::add_archive(unsigned int *a1, int a2, TMMapArchive *a3, int a4, char *a5)
{
  v10 = a2;
  atomic_fetch_add(allowed_disconnect_sequence_number, 1u);
  pthread_mutex_lock(&_cache_lock);
  CSCppMMapArchiveCache::_kill_existing_matching_entries_locked(a1, a3);
  v9 = a1[1];
  if (a4)
  {
    if (v10 == 1)
    {
      CSCppMMapArchiveCache::_add_archive_to_daemon_locked(a1, &v9, &v10, a5);
    }
  }

  operator new();
}

uint64_t CSCppMMapArchiveCache::release_archive(uint64_t this, TMMapArchive *a2)
{
  if (this)
  {
    v2 = this;
    this = UUID::is_null((this + 52));
    if ((this & 1) == 0)
    {
      pthread_mutex_lock(&_cache_lock);
      v3 = _mmap_archive_cache;
      if (!_mmap_archive_cache)
      {
        operator new();
      }

      v4 = std::__hash_table<std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,std::shared_ptr<CSCppSymbolOwner>>>>::__equal_range_multi<UUID>(_mmap_archive_cache, (v2 + 52));
      v6 = v5;
      do
      {
        if (v4 == v6)
        {
          break;
        }

        v7 = v4[4];
        v8 = *(v7 + 16);
        if (v8 == v2)
        {
          v9 = atomic_load((v7 + 8));
          if (v9 == 1 || (*(v7 + 24) & 0x10) != 0 && (v10 = atomic_load((v7 + 8)), v10 == 2))
          {
            std::__hash_table<std::__hash_value_type<unsigned int,mapped_memory_t *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mapped_memory_t *>>>::erase(v3, v4);
          }

          if ((*(v7 + 24) & 0x10) != 0 && (v11 = atomic_load((v7 + 8)), v11 == 2))
          {
            v12 = 2;
          }

          else
          {
            v12 = 1;
          }

          CSCppReferenceCount::release(v7, v12);
          if (_mmap_storage_daemon && _mmap_archive_cache)
          {
            if (kill_mmap_storage_daemon_when_cache_is_empty(void)::once_token != -1)
            {
              CSCppMMapArchiveCache::release_archive();
            }

            if (*(_mmap_archive_cache + 24) && (v13 = *(_mmap_archive_cache + 16)) != 0)
            {
              while ((*(v13[4] + 24) & 0x80000000) != 0)
              {
                v13 = *v13;
                if (!v13)
                {
                  goto LABEL_27;
                }
              }
            }

            else
            {
LABEL_27:
              atomic_fetch_add(allowed_disconnect_sequence_number, 1u);
              v14 = atomic_load(allowed_disconnect_sequence_number);
              v15 = dispatch_time(0, 1000000000);
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 0x40000000;
              block[2] = ___ZL44kill_mmap_storage_daemon_when_cache_is_emptyv_block_invoke_2;
              block[3] = &__block_descriptor_tmp_97;
              v17 = v14;
              dispatch_after(v15, daemon_disconnect_queue, block);
            }
          }
        }

        else
        {
          v4 = *v4;
        }
      }

      while (v8 != v2);
      return pthread_mutex_unlock(&_cache_lock);
    }
  }

  return this;
}

void CSCppMMapArchiveCache::add_signature_archive<__CFData const*>(unsigned int *a1, uint64_t a2, TMMapArchive *a3, int a4)
{
  v12 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&_cache_lock);
  if (!_mmap_archive_cache)
  {
    operator new();
  }

  CSCppMMapArchiveCache::_kill_existing_matching_entries_locked(a1, a3);
  v10 = 0;
  v9 = 4;
  atomic_fetch_add(allowed_disconnect_sequence_number, 1u);
  if (a4)
  {
    v7 = a1[1];
    address[0] = 0;
    address[1] = v7;
    mach_vm_allocate(*MEMORY[0x1E69E9A60], address, v7, 3);
    v8 = address[0];
    if (address[0])
    {
      memcpy(address[0], a1, a1[1]);
      v8 = address[0];
    }

    CSCppMMapArchiveCache::_add_archive_to_daemon_locked(v8, &v10, &v9, "system");
    if (v9 == 2)
    {
      address[0] = 0;
    }

    MachVMAllocatePtr<TMMapArchive>::~MachVMAllocatePtr(address);
  }

  operator new();
}

void sub_1D97DBB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MachVMAllocatePtr<TMMapArchive>::~MachVMAllocatePtr(va);
  pthread_mutex_unlock(&_cache_lock);
  _Unwind_Resume(a1);
}

uint64_t CSCppMMapArchiveCache::compute_text_section_slide_for_mmap<Pointer64>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (v4 != v5)
  {
    v6 = *a3;
    while (1)
    {
      v7 = (v4[3] ? v4[3] : v4[2]);
      if (!strncmp(v7, "__TEXT", 6uLL) && (v6 - *v4) < v4[1])
      {
        break;
      }

      v4 += 4;
      if (v4 == v5)
      {
        return 0;
      }
    }
  }

  if (v4 == v5)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  if (!v8)
  {
    return 0;
  }

  v9 = 32 * v8;
  v10 = v4[3];
  for (i = (a1 + 112); ; i += 32)
  {
    v12 = v10;
    if (!v10)
    {
      v12 = v4[2];
    }

    if (!strncmp(i, v12, 0x10uLL))
    {
      break;
    }

    v9 -= 32;
    if (!v9)
    {
      return 0;
    }
  }

  return *(i - 2) - *v4;
}

TMMapArchive *_create_new_mmap_archive_with_text_data<TRangeValue<Pointer64,unsigned char *>>(unsigned int *a1, unsigned int *a2)
{
  v3 = a1;
  v4 = (*(a2 + 1) + a1[1]);
  v18[0] = 0;
  v18[1] = v4;
  mach_vm_allocate(*MEMORY[0x1E69E9A60], v18, v4, 3);
  v5 = v18[0];
  if (v18[0])
  {
    v6 = *a2;
    v8 = *(a2 + 1);
    v7 = *(a2 + 2);
    v9 = v6 | (v8 << 32);
    v10 = *(v3 + 1);
    *v18[0] = *v3;
    v11 = *(v3 + 2);
    v12 = *(v3 + 3);
    v13 = *(v3 + 5);
    *(v5 + 4) = *(v3 + 4);
    *(v5 + 5) = v13;
    *(v5 + 2) = v11;
    *(v5 + 3) = v12;
    *(v5 + 1) = v10;
    *(v5 + 1) = v4;
    *(v5 + 12) = TMMapArchive::calculate_checksum(v5);
    *(v5 + 76) = v9;
    TMMapArchive::copy_payload_from_archive(v5, v3);
    *(v5 + 7) |= 0x1000u;
    *(v5 + 12) = TMMapArchive::calculate_checksum(v5);
    v14 = *(v5 + 2);
    v15.i64[0] = v14;
    v15.i64[1] = HIDWORD(v14);
    v16 = v15;
    v16.i32[1] = v15.i32[0];
    v16.i32[3] = *(v5 + 6);
    memcpy(v5 + (24 * *(v5 + 3)) + *(v5 + 22) + vaddlvq_u32(vmulq_s32(v16, xmmword_1D97E0550)) + (32 * *(v5 + 2)) + 96, v7, v8);
    v3 = v18[0];
    v18[0] = 0;
  }

  MachVMAllocatePtr<TMMapArchive>::~MachVMAllocatePtr(v18);
  return v3;
}

char *TMMapArchive::copy_payload_from_archive(TMMapArchive *this, const TMMapArchive *a2)
{
  v4 = this + 96;
  v5 = a2 + 96;
  v6 = *(this + 2);
  v7 = (32 * v6);
  v8 = 32 * *(a2 + 2);
  if (v8 >= 32 * v6)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  memcpy(this + 96, a2 + 96, v9);
  v10 = 24 * *(a2 + 3);
  if (v10 >= 24 * *(this + 3))
  {
    v11 = (24 * *(this + 3));
  }

  else
  {
    v11 = v10;
  }

  memcpy(&v4[v7], &v5[32 * *(a2 + 2)], v11);
  v12 = 24 * *(a2 + 4);
  if (v12 >= 24 * *(this + 4))
  {
    v13 = (24 * *(this + 4));
  }

  else
  {
    v13 = v12;
  }

  memcpy(&v4[32 * *(this + 2) + 24 * *(this + 3)], &v5[32 * *(a2 + 2) + 24 * *(a2 + 3)], v13);
  v14 = 36 * *(a2 + 5);
  if (v14 >= 36 * *(this + 5))
  {
    v15 = (36 * *(this + 5));
  }

  else
  {
    v15 = v14;
  }

  memcpy(&v4[32 * *(this + 2) + 24 * *(this + 3) + 24 * *(this + 4)], &v5[32 * *(a2 + 2) + 24 * *(a2 + 3) + 24 * *(a2 + 4)], v15);
  v16 = vaddlvq_u32(vmulq_s32(*(this + 8), xmmword_1D97E09B0));
  v17 = vaddlvq_u32(vmulq_s32(*(a2 + 8), xmmword_1D97E09B0));
  v18 = (this + 24);
  v19 = (a2 + 24);
  v20 = 20 * *(a2 + 6);
  if (v20 >= 20 * *(this + 6))
  {
    v21 = (20 * *(this + 6));
  }

  else
  {
    v21 = v20;
  }

  memcpy(&v4[v16], &v5[v17], v21);
  v22 = vaddlvq_u32(vmulq_s32(*(this + 8), xmmword_1D97E09B0)) + (20 * *(this + 6));
  v23 = vaddlvq_u32(vmulq_s32(*(a2 + 8), xmmword_1D97E09B0));
  v24 = *(this + 22);
  v25 = *(a2 + 22);
  if (v25 >= v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  memcpy(&v4[v22], &v5[v23 + (20 * *(a2 + 6))], v26);
  v27 = *(this + 12);
  v28 = vaddlvq_u32(vmulq_s32(v27, xmmword_1D97E51C0)) + (32 * *(this + 2));
  v29 = vaddlvq_u32(vmulq_s32(*(a2 + 12), xmmword_1D97E51C0));
  v30 = 4 * HIDWORD(*(a2 + 12));
  if (v30 >= 4 * v27.i32[1])
  {
    v31 = (4 * v27.i32[1]);
  }

  else
  {
    v31 = v30;
  }

  memcpy(&v4[*(this + 22) + v28], &v5[*(a2 + 22) + v29 + (32 * *(a2 + 2))], v31);
  v32 = *(this + 2);
  v33.i64[0] = v32;
  v33.i64[1] = HIDWORD(v32);
  v34 = v33;
  v34.i32[1] = v33.i32[0];
  v34.i32[3] = *v18;
  v35 = vaddlvq_u32(vmulq_s32(v34, xmmword_1D97E0550)) + (32 * *(this + 2));
  v34.i64[0] = *(a2 + 2);
  v33.i64[0] = v34.u32[0];
  v33.i64[1] = v34.u32[1];
  v36 = v33;
  v36.i32[1] = v33.i32[0];
  v36.i32[3] = *v19;
  v37 = vaddlvq_u32(vmulq_s32(v36, xmmword_1D97E0550));
  v38 = *(this + 20);
  v39 = *(a2 + 20);
  if (v39 >= v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = v39;
  }

  memcpy(&v4[(24 * *(this + 3)) + *(this + 22) + v35], &v5[(24 * *(a2 + 3)) + *(a2 + 22) + v37 + (32 * *(a2 + 2))], v40);
  v41 = *(this + 2);
  v42.i64[0] = v41;
  v42.i64[1] = HIDWORD(v41);
  v43 = v42;
  v43.i32[1] = v42.i32[0];
  v43.i32[3] = *v18;
  v44 = vaddlvq_u32(vmulq_s32(v43, xmmword_1D97E0550)) + (32 * *(this + 2));
  v45 = *(this + 21);
  v43.i64[0] = *(a2 + 2);
  v42.i64[0] = v43.u32[0];
  v42.i64[1] = v43.u32[1];
  v46 = v42;
  v46.i32[1] = v42.i32[0];
  v46.i32[3] = *v19;
  v47 = vaddlvq_u32(vmulq_s32(v46, xmmword_1D97E0550));
  v48 = *(a2 + 21);
  if (v48 >= v45)
  {
    v49 = v45;
  }

  else
  {
    v49 = v48;
  }

  memcpy(&v4[*(this + 20) + 24 * *(this + 3) + *(this + 22) + v44], &v5[*(a2 + 20) + 24 * *(a2 + 3) + *(a2 + 22) + v47 + (32 * *(a2 + 2))], v49);
  result = TMMapArchive::optional_data(a2);
  if (result)
  {
    __src = *result;
    v56 = *(result + 2);
    result = TMMapArchive::strtab_end(this);
    v51 = this + *(this + 1);
    v52 = v51 > result;
    v53 = v51 - result;
    if (v52)
    {
      if (DWORD2(__src) <= 0xC)
      {
        v54 = 12;
      }

      else
      {
        v54 = DWORD2(__src);
      }

      if (v53 >= v54)
      {
        return memcpy(result, &__src, v54);
      }
    }
  }

  return result;
}

void CSCppTextSectionDataDescriptor::~CSCppTextSectionDataDescriptor(CSCppTextSectionDataDescriptor *this)
{
  std::mutex::~mutex((this + 144));
  v2 = (this + 88);
  std::vector<std::unique_ptr<CSCppMemory>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  std::__tree<TRange<Pointer64>>::destroy(this + 24, *(this + 4));
}

uint64_t ArchiveWrapper::ArchiveWrapper(uint64_t a1, uint64_t a2, CFTypeRef cf, int a4, uint64_t a5, uint64_t a6, __int16 a7, __int16 a8)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = a2;
  *(a1 + 24) = a4;
  *(a1 + 48) = a7;
  *(a1 + 50) = a8;
  if (a6)
  {
    a4 |= 8u;
    *(a1 + 24) = a4;
  }

  if ((a4 & 8) != 0)
  {
    v9 = a6;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 32) = a5;
  *(a1 + 40) = v9;
  *a1 = &unk_1F5508DC8;
  *(a1 + 56) = cf;
  if (cf && (a4 & 4) != 0)
  {
    CFRetain(cf);
  }

  return a1;
}

void ArchiveWrapper::~ArchiveWrapper(ArchiveWrapper *this)
{
  ArchiveWrapper::~ArchiveWrapper(this);

  JUMPOUT(0x1DA736760);
}

{
  *this = &unk_1F5508DC8;
  v1 = *(this + 6);
  if (v1)
  {
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], *(this + 2), *(*(this + 2) + 4));
  }

  else if ((v1 & 0x12) != 0)
  {
    munmap(*(this + 2), *(this + 4));
  }

  else
  {
    CFRelease(*(this + 7));
  }
}

dispatch_queue_t ___ZL44kill_mmap_storage_daemon_when_cache_is_emptyv_block_invoke()
{
  result = dispatch_queue_create("Daemon Disconnect Queue", 0);
  daemon_disconnect_queue = result;
  return result;
}

uint64_t ___ZL44kill_mmap_storage_daemon_when_cache_is_emptyv_block_invoke_2(uint64_t a1)
{
  pthread_mutex_lock(&_cache_lock);
  v2 = *(a1 + 32);
  v3 = atomic_load(allowed_disconnect_sequence_number);
  if (v2 == v3)
  {
    if (_mmap_storage_daemon)
    {
      CSCppDaemonConnection::~CSCppDaemonConnection(_mmap_storage_daemon);
      MEMORY[0x1DA736760]();
    }

    _mmap_storage_daemon = 0;
    atomic_fetch_add(allowed_disconnect_sequence_number, 1u);
  }

  return pthread_mutex_unlock(&_cache_lock);
}

char *utility_basename(const char *a1)
{
  v1 = a1;
  v2 = strlen(a1);
  if (v2 == 1)
  {
    v5 = 2;
  }

  else
  {
    v3 = v2;
    if (!v2)
    {

      return strdup(v1);
    }

    v6 = 0;
    v7 = &v1[v2];
    do
    {
      v8 = &v7[v6--];
      v9 = *(v8 - 1);
    }

    while (v9 != 47 && v6 + v2 != 0);
    if (v2 + v6)
    {
      if (v6 == -1)
      {
        v13 = malloc_type_malloc(v2, 0x100004077774924uLL);
        strlcpy(v13, v1, v3);
        return v13;
      }

      v11 = malloc_type_malloc(-v6, 0x100004077774924uLL);
      v12 = &v7[v6 + 1];
      goto LABEL_20;
    }

    if (v9 == 47)
    {
      ++v1;
    }

    v5 = v7 - v1 + 1;
  }

  v11 = malloc_type_malloc(v5, 0x100004077774924uLL);
  v12 = v1;
LABEL_20:

  return strcpy(v11, v12);
}

BOOL deny_nfs_mount_lookup(const char *__s1)
{
  v2 = &unk_1E8584CF8;
  v3 = 48;
  do
  {
    v4 = strncmp(__s1, *(v2 - 1), *v2);
    if (v4)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    v3 -= 16;
    v2 += 2;
  }

  while (!v5);
  return v4 == 0;
}

void CSCppDaemonConnection::CSCppDaemonConnection(CSCppDaemonConnection *this)
{
  *this = 0;
  global_queue = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.coresymbolicationd", global_queue, 2uLL);
  *this = mach_service;
  if (mach_service)
  {
    xpc_connection_set_event_handler(mach_service, &__block_literal_global_7);
    xpc_connection_resume(*this);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to acquire mach service port, symbol cache unavailable\n", v4, 2u);
    }

    fwrite("Unable to acquire mach service port, symbol cache unavailable\n", 0x3EuLL, 1uLL, *MEMORY[0x1E69E9848]);
    *this = 0;
  }
}

void ___ZN21CSCppDaemonConnectionC2Ev_block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1DA737450](a2) == MEMORY[0x1E69E9E98])
  {
    if (a2 == MEMORY[0x1E69E9E20] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "com.apple.coresymbolicationd";
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Connection invalidated: %s\n", &v4, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v4) = 0;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Client side event: Unhandled xpc type\n", &v4, 2u);
    }

    fwrite("Client side event: Unhandled xpc type\n", 0x26uLL, 1uLL, *MEMORY[0x1E69E9848]);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void CSCppDaemonConnection::close(xpc_object_t *this)
{
  v2 = *this;
  if (v2)
  {
    xpc_connection_cancel(v2);
    xpc_release(*this);
    *this = 0;
  }
}

void CSCppDaemonConnection::send_sync_message(_xpc_connection_s **a1@<X0>, uint64_t a2@<X1>, XPCObject *a3@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = XPCObject::operator*(a2);
    v4 = xpc_connection_send_message_with_reply_sync(v4, v5);
    if (MEMORY[0x1DA737450]() == MEMORY[0x1E69E9E98])
    {
      xpc_release(v4);
      v4 = 0;
    }
  }

  XPCObject::XPCObject(a3, v4, 0);
}

uint64_t CSCppDaemonConnection::read_mmap_archive(_xpc_connection_s **this, int8x16_t *a2, void **a3, unint64_t *a4, unsigned __int16 *a5, unsigned __int16 *a6)
{
  XPCDictionary::XPCDictionary(&v52);
  XPCDictionary::set_uint64(&v52, "cmd", 4uLL);
  MMapArchiveFileSystem::ArchiveEntry::encode(a2, &region);
  v12 = XPCObject::operator*(&region);
  XPCDictionary::set_object(&v52, "entry", v12);
  XPCObject::~XPCObject(&region);
  *a3 = 0;
  XPCObject::XPCObject(v50, &v52);
  CSCppDaemonConnection::send_sync_message(this, v50, &v51);
  XPCObject::~XPCObject(v50);
  if (!XPCObject::operator BOOL(&v51) || (v13 = XPCObject::operator*(&v51), MEMORY[0x1DA737450](v13) != MEMORY[0x1E69E9E80]))
  {
    XPCObject::~XPCObject(&v51);
    v14 = 1;
    goto LABEL_4;
  }

  XPCObject::XPCObject(&v49, &v51);
  v16 = XPCObject::operator*(&v49);
  value = xpc_dictionary_get_value(v16, "shmem");
  if (value)
  {
    region = 0;
    v18 = xpc_shmem_map(value, &region);
    v19 = v18;
    if (v18)
    {
      if (v18 >= 0x60)
      {
        v20 = region;
        v21 = *(region + 1);
        if (v21)
        {
          if (v18 >= v21)
          {
            v22 = *(region + 12);
            if (v22 == TMMapArchive::calculate_checksum(region))
            {
              v23 = v20 + 32 * v20[2] + (24 * v20[3]) + 96;
              v24 = v20[4];
              v25 = v23 + (24 * v24);
              v26 = v20[22];
              v27 = (4 * v24);
              v28 = v25 + (36 * v20[5]) + (20 * v20[6]);
              v29 = (v28 + v26);
              v30 = (v28 + v26 + v27);
              v31 = v30 + v20[20];
              v32 = &v31[v20[21]];
              v33 = v20[10];
              if (!v33 || (v34 = &v31[v33]) == 0 || v34 >= v31 && v34 < v32)
              {
                v35 = v20[11];
                if (!v35 || (v36 = &v31[v35]) == 0 || v36 >= v31 && v36 < v32)
                {
                  if (v26)
                  {
                    v37 = (v25 + (36 * v20[5]) + (20 * v20[6]));
                    while (1)
                    {
                      v38 = v28 - *v37;
                      if (v38 < v23 || v38 >= v25)
                      {
                        break;
                      }

                      ++v37;
                      v28 += 4;
                      if (v37 == v29)
                      {
                        goto LABEL_32;
                      }
                    }
                  }

                  else
                  {
LABEL_32:
                    if (!v27)
                    {
LABEL_39:
                      *a4 = v19;
                      v43 = XPCObject::operator*(&v49);
                      uint64 = xpc_dictionary_get_uint64(v43, "major_version");
                      v45 = XPCObject::operator*(&v49);
                      v46 = xpc_dictionary_get_uint64(v45, "minor_version");
                      if (uint64)
                      {
                        v47 = v46;
                      }

                      else
                      {
                        v47 = 0;
                      }

                      if (a5)
                      {
                        v48 = uint64;
                        if ((uint64 & 0xFFFE) == 0)
                        {
                          v48 = 1;
                        }

                        *a5 = v48;
                      }

                      if (a6)
                      {
                        *a6 = v47;
                      }

                      goto LABEL_10;
                    }

                    v40 = v29;
                    while (1)
                    {
                      v41 = v29 - *v40;
                      if (v41 < v23 || v41 >= v25)
                      {
                        break;
                      }

                      ++v40;
                      ++v29;
                      if (v40 == v30)
                      {
                        goto LABEL_39;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      munmap(region, v19);
    }
  }

  v20 = 0;
LABEL_10:
  *a3 = v20;
  XPCObject::~XPCObject(&v49);
  if (v20)
  {
    v14 = 0;
  }

  else
  {
    v14 = 3;
  }

  XPCObject::~XPCObject(&v51);
LABEL_4:
  XPCObject::~XPCObject(&v52);
  return v14;
}

void sub_1D97DCD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  XPCObject::~XPCObject(va);
  XPCObject::~XPCObject(va1);
  _Unwind_Resume(a1);
}

uint64_t CSCppDaemonConnection::write_mmap_archive(_xpc_connection_s **this, int8x16_t *a2, int *a3, TMMapArchive **a4, unint64_t *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = *a4;
  XPCDictionary::XPCDictionary(&v29);
  XPCDictionary::set_uint64(&v29, "cmd", 5uLL);
  MMapArchiveFileSystem::ArchiveEntry::encode(a2, v30);
  v11 = XPCObject::operator*(v30);
  XPCDictionary::set_object(&v29, "entry", v11);
  XPCObject::~XPCObject(v30);
  v12 = xpc_shmem_create(v10, v10[1]);
  XPCDictionary::set_object(&v29, "archive_shmem", v12);
  xpc_release(v12);
  XPCObject::XPCObject(v27, &v29);
  CSCppDaemonConnection::send_sync_message(this, v27, &v28);
  XPCObject::~XPCObject(v27);
  if (XPCObject::operator BOOL(&v28))
  {
    v13 = XPCObject::operator*(&v28);
    if (MEMORY[0x1DA737450](v13) == MEMORY[0x1E69E9E80])
    {
      XPCObject::XPCObject(&v26, &v28);
      uint64 = XPCDictionary::get_uint64(&v26, "write_errno");
      *a3 = uint64;
      if (!uint64)
      {
        XPCDictionary::get_object(&v26, "results", &v25);
        if (XPCObject::operator BOOL(&v25) && XPCObject::xpc_type(&v25) == MEMORY[0x1E69E9E50])
        {
          v18 = XPCObject::operator*(&v28);
          value = xpc_dictionary_get_value(v18, "shmem");
          if (value)
          {
            region = 0;
            v20 = xpc_shmem_map(value, &region);
            if (v20)
            {
              v21 = region;
              if (TMMapArchive::validate(region))
              {
                XPCObject::XPCObject(v23, &v25);
                MMapArchiveFileSystem::ArchiveEntry::ArchiveEntry(v30, v23);
                v22 = v30[1];
                *a2 = v30[0];
                a2[1] = v22;
                a2[2] = v30[2];
                a2[3].i8[0] = v31;
                XPCObject::~XPCObject(v23);
                *a4 = v21;
                *a5 = v20;
                XPCObject::~XPCObject(&v25);
                v14 = 0;
                goto LABEL_10;
              }

              munmap(region, v20);
            }
          }
        }

        XPCObject::~XPCObject(&v25);
      }

      v14 = 3;
LABEL_10:
      XPCObject::~XPCObject(&v26);
      XPCObject::~XPCObject(&v28);
      goto LABEL_4;
    }
  }

  XPCObject::~XPCObject(&v28);
  v14 = 1;
LABEL_4:
  XPCObject::~XPCObject(&v29);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1D97DCFCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  va_copy(va3, va2);
  v8 = va_arg(va3, void *);
  v10 = va_arg(va3, void);
  va_copy(va4, va3);
  v11 = va_arg(va4, void);
  XPCObject::~XPCObject(va);
  XPCObject::~XPCObject(va1);
  XPCObject::~XPCObject(va2);
  XPCObject::~XPCObject(va3);
  XPCObject::~XPCObject(va4);
  _Unwind_Resume(a1);
}

BOOL TMMapArchive::validate(int32x4_t *this)
{
  if (!this->i32[1])
  {
    return 0;
  }

  v2 = this[3].i32[0];
  if (v2 != TMMapArchive::calculate_checksum(this))
  {
    return 0;
  }

  return TMMapArchive::are_offsets_in_bounds(this);
}

uint64_t UUID::is_null(UUID *this)
{
  if (UUID::null_uuid(void)::fake == *this && unk_1ECB40A80 == *&(*this)[8])
  {
    return 1;
  }

  for (i = 0; ; ++i)
  {
    v3 = i;
    if ((*this)[i])
    {
      break;
    }

    if (v3 == 15)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _StringToUUIDBytes<CFUUIDBytes>(const char *a1, unsigned __int8 *a2)
{
  if (!a1 || !a2 || strlen(a1) < 0x24 || !make_byte(*a1, a1[1], a2) || !make_byte(a1[2], a1[3], a2 + 1) || !make_byte(a1[4], a1[5], a2 + 2) || !make_byte(a1[6], a1[7], a2 + 3) || a1[8] != 45 || !make_byte(a1[9], a1[10], a2 + 4) || !make_byte(a1[11], a1[12], a2 + 5) || a1[13] != 45 || !make_byte(a1[14], a1[15], a2 + 6) || !make_byte(a1[16], a1[17], a2 + 7) || a1[18] != 45 || !make_byte(a1[19], a1[20], a2 + 8) || !make_byte(a1[21], a1[22], a2 + 9) || a1[23] != 45 || !make_byte(a1[24], a1[25], a2 + 10) || !make_byte(a1[26], a1[27], a2 + 11) || !make_byte(a1[28], a1[29], a2 + 12) || !make_byte(a1[30], a1[31], a2 + 13) || !make_byte(a1[32], a1[33], a2 + 14))
  {
    return 0;
  }

  v4 = a1[34];
  v5 = a1[35];

  return make_byte(v4, v5, a2 + 15);
}

uint64_t _UUIDBytesToString<CFUUIDBytes>(unsigned __int8 *a1, char *__str, size_t __size)
{
  if (a1)
  {
    v3 = __str == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = !v3 && __size > 0x24;
  if (v5 == 1)
  {
    snprintf(__str, __size, "%02hhX%02hhX%02hhX%02hhX-%02hhX%02hhX-%02hhX%02hhX-%02hhX%02hhX-%02hhX%02hhX%02hhX%02hhX%02hhX%02hhX", *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], a1[13], a1[14], a1[15]);
  }

  return v5;
}

uint64_t make_byte(int a1, int a2, unsigned __int8 *a3)
{
  if ((a1 - 48) > 9)
  {
    if ((a1 - 65) > 5 && (a1 - 97) > 5)
    {
      return 0;
    }

    v3 = 16 * a1 - 112;
  }

  else
  {
    v3 = 16 * a1;
  }

  *a3 = v3;
  v4 = a2 - 48;
  if ((a2 - 48) < 0xA)
  {
LABEL_11:
    *a3 = v3 | v4;
    return 1;
  }

  if ((a2 - 65) <= 5)
  {
    v4 = a2 - 55;
    goto LABEL_11;
  }

  if ((a2 - 97) <= 5)
  {
    v4 = a2 - 87;
    goto LABEL_11;
  }

  return 0;
}

__n128 MMapArchiveFileSystem::ArchiveEntry::ArchiveEntry(MMapArchiveFileSystem::ArchiveEntry *this, __n128 *a2, uint64_t a3, int a4, int a5, __int16 a6, __int16 a7)
{
  result = *a2;
  *this = *a2;
  *(this + 2) = 0;
  *(this + 3) = a3;
  *(this + 8) = a4;
  *(this + 9) = 0;
  *(this + 10) = a5;
  *(this + 22) = a6;
  *(this + 23) = a7;
  *(this + 48) = 0;
  return result;
}

int8x16_t *MMapArchiveFileSystem::ArchiveEntry::ArchiveEntry(int8x16_t *a1, void **a2)
{
  XPCObject::XPCObject(&v7, a2);
  *a1 = *XPCArray::get_uuid(&v7, 0);
  a1[1].i64[0] = XPCArray::get_uint64(&v7, 1uLL);
  a1[1].i64[1] = XPCArray::get_uint64(&v7, 2uLL);
  a1[2].i32[0] = XPCArray::get_uint64(&v7, 3uLL);
  a1[2].i32[1] = XPCArray::get_uint64(&v7, 4uLL);
  a1[2].i32[2] = XPCArray::get_uint64(&v7, 5uLL);
  if (XPCArray::count(&v7) < 8)
  {
    a1[2].i32[3] = 1;
    a1[3].i8[0] = 0;
  }

  else
  {
    a1[2].i16[6] = XPCArray::get_uint64(&v7, 6uLL);
    a1[2].i16[7] = XPCArray::get_uint64(&v7, 7uLL);
    v3 = XPCArray::count(&v7) == 9 && XPCArray::get_uint64(&v7, 8uLL) != 0;
    a1[3].i8[0] = v3;
    if (a1[2].i16[6] == 3)
    {
      UUID::get_complement(a1);
      a1->i64[0] = v4;
      a1->i64[1] = v5;
    }
  }

  XPCObject::~XPCObject(&v7);
  return a1;
}

void sub_1D97DD588(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  XPCObject::~XPCObject(va);
  _Unwind_Resume(a1);
}

void MMapArchiveFileSystem::ArchiveEntry::encode(int8x16_t *this@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  XPCArray::XPCArray(&v7);
  if (this[2].i16[6] == 3)
  {
    UUID::get_complement(this);
    *&v8.byte0 = v4;
    *&v8.byte8 = v5;
    XPCArray::set_uuid(&v7, 0xFFFFFFFFFFFFFFFFLL, &v8);
  }

  else
  {
    XPCArray::set_uuid(&v7, 0xFFFFFFFFFFFFFFFFLL, this);
  }

  XPCArray::set_uint64(&v7, 0xFFFFFFFFFFFFFFFFLL, this[1].u64[0]);
  XPCArray::set_uint64(&v7, 0xFFFFFFFFFFFFFFFFLL, this[1].u64[1]);
  XPCArray::set_uint64(&v7, 0xFFFFFFFFFFFFFFFFLL, this[2].u32[0]);
  XPCArray::set_uint64(&v7, 0xFFFFFFFFFFFFFFFFLL, this[2].u32[1]);
  XPCArray::set_uint64(&v7, 0xFFFFFFFFFFFFFFFFLL, this[2].u32[2]);
  XPCArray::set_uint64(&v7, 0xFFFFFFFFFFFFFFFFLL, this[2].u16[6]);
  XPCArray::set_uint64(&v7, 0xFFFFFFFFFFFFFFFFLL, this[2].u16[7]);
  XPCArray::set_uint64(&v7, 0xFFFFFFFFFFFFFFFFLL, this[3].u8[0]);
  XPCObject::XPCObject(a2, &v7);
  XPCObject::~XPCObject(&v7);
  v6 = *MEMORY[0x1E69E9840];
}

BOOL CSCppDyldSharedCache::uses_unmapped_symbols_file(CSCppDyldSharedCache *this)
{
  v4 = *MEMORY[0x1E69E9840];
  result = *(this + 4) > 0x18Fu && *(this + 25) != 0;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CSCppDyldSharedCache::for_each_subcache_entry_uuid(_DWORD *a1, uint64_t a2)
{
  (*(a2 + 16))(a2, a1 + 22);
  v4 = a1[4];
  if (v4 >= 0x1C9)
  {
    v5 = a1[99];
    v6 = a1 + a1[98];

    return _for_each_subcache_entry_uuid<CSCppDyldSharedCache const,dyld_subcache_entry,void({block_pointer})(unsigned char const*)>(a1, v6, v5, a2);
  }

  if (v4 < 0x188)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v8 = a1 + a1[98];
  if (v4 < 0x18C)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v9 = a1[99];
LABEL_10:

  return _for_each_subcache_entry_uuid<CSCppDyldSharedCache const,dyld_subcache_entry_v1,void({block_pointer})(unsigned char const*)>(a1, v8, v9, a2);
}

uint64_t _for_each_subcache_entry_uuid<CSCppDyldSharedCache const,dyld_subcache_entry,void({block_pointer})(unsigned char const*)>(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v5) = a3;
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) >= 0x190u && *(a1 + 400) != 0)
  {
    (*(a4 + 16))(a4, a1 + 400);
  }

  if (v5)
  {
    v5 = v5;
    v8 = v5;
    do
    {
      (*(a4 + 16))(a4, a2);
      a2 += 56;
      --v8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _for_each_subcache_entry_uuid<CSCppDyldSharedCache const,dyld_subcache_entry_v1,void({block_pointer})(unsigned char const*)>(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v5) = a3;
  v11 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16) >= 0x190u && *(a1 + 400) != 0)
  {
    (*(a4 + 16))(a4, a1 + 400);
  }

  if (v5)
  {
    v5 = v5;
    v8 = v5;
    do
    {
      (*(a4 + 16))(a4, a2);
      a2 += 24;
      --v8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

_DWORD *CSCppDyldSharedCache::extract_universal_subcache_paths@<X0>(_DWORD *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (this[4] >= 0x18Cu)
  {
    v3 = this[99];
    if (v3)
    {
      v4 = 0;
      v5 = this + this[98];
      v6 = v5 + 24;
      do
      {
        if (v5)
        {
          if (v4 >= a2[2])
          {
            this = std::vector<std::string>::__emplace_back_slow_path<char const(&)[32]>(a2, v6);
            v4 = this;
          }

          else
          {
            this = std::allocator_traits<std::allocator<std::string>>::construct[abi:ne200100]<std::string,char const(&)[32],void,0>(a2, v4, v6);
            v4 += 24;
          }

          a2[1] = v4;
        }

        v6 += 56;
        --v3;
      }

      while (v3);
    }
  }

  return this;
}

void sub_1D97DDAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *(v10 + 8) = v11;
  a10 = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t CSCppDyldSharedCache::for_each_mapped_cache(char *a1, uint64_t a2)
{
  result = (*(a2 + 16))(a2, a1);
  v5 = *(a1 + 4);
  if (v5 < 0x1C9)
  {
    if (v5 >= 0x18C)
    {
      v11 = &a1[*(a1 + 98)];
      v12 = *(a1 + 99);
      if (v11 && v12 != 0)
      {
        v14 = (v11 + 16);
        do
        {
          v15 = *v14;
          v14 += 3;
          result = (*(a2 + 16))(a2, &a1[v15]);
          --v12;
        }

        while (v12);
      }
    }
  }

  else
  {
    v6 = &a1[*(a1 + 98)];
    v7 = *(a1 + 99);
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = (v6 + 16);
      do
      {
        v10 = *v9;
        v9 += 7;
        result = (*(a2 + 16))(a2, &a1[v10]);
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

void CSCppDyldSharedCache::ranges_with_permissions(CSCppDyldSharedCache *this@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  v5 = &v21;
  v21 = 0;
  v22 = &v21;
  v23 = 0x4002000000;
  v24 = __Block_byref_object_copy__17;
  v25 = __Block_byref_object_dispose__17;
  __p = 0;
  v27 = 0;
  v28 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v16 = ___ZNK20CSCppDyldSharedCache23ranges_with_permissionsEjj_block_invoke;
  v17 = &unk_1E8584D58;
  v19 = a2;
  v20 = a3;
  v18 = &v21;
  if (*(this + 5))
  {
    v7 = 0;
    v8 = (this + *(this + 4));
    do
    {
      v16(v15, v8);
      ++v7;
      v8 += 2;
    }

    while (v7 < *(this + 5));
    v5 = v22;
    v9 = v22[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v5[6];
  if (v9 == v10)
  {
    v11 = v5[7];
    if (v9 >= v11)
    {
      v12 = v11 - v9;
      v13 = v12 >> 3;
      if ((v12 >> 3) <= 1)
      {
        v13 = 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF0)
      {
        v14 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      std::allocator<_CSTypeRef>::allocate_at_least[abi:ne200100]((v5 + 5), v14);
    }

    *v10 = 0;
    v10[1] = 0;
    v5[6] = (v10 + 2);
    v5 = v22;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::vector<TRange<Pointer64>>::__init_with_size[abi:ne200100]<TRange<Pointer64>*,TRange<Pointer64>*>(a4, v5[5], v5[6], (v5[6] - v5[5]) >> 4);
  _Block_object_dispose(&v21, 8);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }
}

void sub_1D97DDDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a15, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void __Block_byref_object_dispose__17(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t CSCppDyldSharedCache::enumerate_mapping_infos(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    if (*(result + 20))
    {
      v4 = 0;
      v5 = result + *(result + 16);
      do
      {
        result = (*(a2 + 16))(a2, v5);
        ++v4;
        v5 += 32;
      }

      while (v4 < *(v2 + 20));
    }
  }

  return result;
}

void ___ZNK20CSCppDyldSharedCache23ranges_with_permissionsEjj_block_invoke(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 7);
  if ((*(a1 + 40) & ~v2) == 0 && (*(a1 + 44) & v2) == 0)
  {
    v4 = *(*(a1 + 32) + 8);
    v6 = v4[6];
    v5 = v4[7];
    if (v6 >= v5)
    {
      v8 = v4[5];
      v9 = v6 - v8;
      v10 = (v6 - v8) >> 4;
      v11 = v10 + 1;
      if ((v10 + 1) >> 60)
      {
        std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
      }

      v12 = v5 - v8;
      if (v12 >> 3 > v11)
      {
        v11 = v12 >> 3;
      }

      v13 = v12 >= 0x7FFFFFFFFFFFFFF0;
      v14 = 0xFFFFFFFFFFFFFFFLL;
      if (!v13)
      {
        v14 = v11;
      }

      if (v14)
      {
        std::allocator<_CSTypeRef>::allocate_at_least[abi:ne200100]((v4 + 5), v14);
      }

      v15 = v10;
      v16 = (16 * v10);
      v17 = *a2;
      v18 = &v16[-v15];
      *v16 = v17;
      v7 = v16 + 1;
      memcpy(v18, v8, v9);
      v19 = v4[5];
      v4[5] = v18;
      v4[6] = v7;
      v4[7] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v6 = *a2;
      v7 = v6 + 16;
    }

    v4[6] = v7;
  }
}

uint64_t CSCppDyldSharedCache::text_segment_range(CSCppDyldSharedCache *this)
{
  CSCppDyldSharedCache::ranges_with_permissions(this, 4, 0, __p);
  v1 = *__p[0];
  v2 = *(__p[0] + 1);
  __p[1] = __p[0];
  operator delete(__p[0]);
  return v1;
}

BOOL CSCppDyldSharedCache::stripped_locals_data_for (uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  if (!*(a1 + 72))
  {
    return 0;
  }

  result = 0;
  if (a3 && *(a1 + 80))
  {
    v6 = a3[5];
    v7 = (a3 + a3[4]);
    if (*(a1 + 16) < 0x190u)
    {
      if (v6)
      {
        if (*v7 == a2)
        {
          result = 1;
LABEL_20:
          *a4 = *a3;
          v12 = v7[1];
          *(a4 + 8) = v12;
          v13 = v7 + 2;
          goto LABEL_21;
        }

        v14 = 0;
        while (v6 - 1 != v14)
        {
          v15 = v7[3];
          v7 += 3;
          ++v14;
          if (v15 == a2)
          {
            result = v14 < v6;
            goto LABEL_20;
          }
        }
      }
    }

    else if (v6)
    {
      if (*v7 == a2)
      {
        v8 = 0;
        result = 1;
LABEL_15:
        v11 = &v7[4 * v8];
        *a4 = *a3;
        v12 = v11[2];
        *(a4 + 8) = v12;
        v13 = v11 + 3;
LABEL_21:
        v16 = *v13 + v12;
        v17 = a3[3];
        *(a4 + 24) = a3[2];
        *(a4 + 12) = v16;
        *(a4 + 16) = v17;
        return result;
      }

      v8 = 0;
      v9 = (v7 + 4);
      while (v6 - 1 != v8)
      {
        v10 = *v9;
        v9 += 2;
        ++v8;
        if (v10 == a2)
        {
          result = v8 < v6;
          goto LABEL_15;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t std::vector<std::string>::__emplace_back_slow_path<char const(&)[32]>(uint64_t a1, char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
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

  v13.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::allocator<std::string>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v13.__first_ = 0;
  v13.__begin_ = (24 * v2);
  v13.__end_ = (24 * v2);
  v13.__end_cap_.__value_ = 0;
  std::allocator_traits<std::allocator<std::string>>::construct[abi:ne200100]<std::string,char const(&)[32],void,0>(a1, (24 * v2), a2);
  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = 24 * v2 - v8;
  memcpy(v13.__begin_ - v8, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v13.__end_cap_.__value_;
  v13.__end_ = v10;
  v13.__end_cap_.__value_ = v11;
  v13.__first_ = v10;
  v13.__begin_ = v10;
  std::__split_buffer<std::string>::~__split_buffer(&v13);
  return v7;
}

unint64_t std::allocator_traits<std::allocator<std::string>>::construct[abi:ne200100]<std::string,char const(&)[32],void,0>(int a1, _BYTE *a2, char *__s)
{
  result = strlen(__s);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, __s, result);
  }

  a2[v6] = 0;
  return result;
}

uint64_t std::vector<TRange<Pointer64>>::__init_with_size[abi:ne200100]<TRange<Pointer64>*,TRange<Pointer64>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<_CSTypeRef>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D97DE328(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*mach_exc_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 2411) >= 0xFFFFFFFA)
  {
    return catch_mach_exc_subsystem[5 * (v1 - 2405) + 5];
  }

  else
  {
    return 0;
  }
}

uint64_t _Xmach_exception_raise(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(a1 + 4);
  if (*(a1 + 24) != 2 || (v3 - 85) < 0xFFFFFFEF)
  {
    goto LABEL_6;
  }

  if (*(a1 + 38) << 16 != 1114112 || *(a1 + 50) << 16 != 1114112)
  {
    result = 4294966996;
    goto LABEL_7;
  }

  v6 = *(a1 + 64);
  if (v6 <= 2 && v6 <= (v3 - 68) >> 3 && v3 == ((8 * v6) | 0x44))
  {
    v7 = *(a1 + 12);
    v8 = *(a1 + 28);
    v9 = *(a1 + 40);
    v10 = *(a1 + 60);
    result = catch_mach_exception_raise();
  }

  else
  {
LABEL_6:
    result = 4294966992;
  }

LABEL_7:
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _Xmach_exception_raise_state(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_14;
  }

  v3 = *(result + 4);
  if (v3 - 5249 < 0xFFFFEBAF)
  {
    goto LABEL_14;
  }

  v4 = *(result + 36);
  if (v4 > 2)
  {
    goto LABEL_14;
  }

  v5 = 8 * v4;
  v6 = v4 <= (v3 - 48) >> 3 && v3 >= 8 * v4 + 48;
  if (v6 && (v7 = result + v5, v8 = *(v7 + 44), v8 <= 0x510) && ((v9 = v3 - v5, v8 <= (v9 - 48) >> 2) ? (v10 = v9 == 4 * v8 + 48) : (v10 = 0), v10))
  {
    v11 = v7 - 16;
    *(a2 + 40) = 1296;
    result = catch_mach_exception_raise_state(*(result + 12), *(result + 32), (result + 40), v4, v7 + 40, (v7 + 48), v8, a2 + 44, (a2 + 40));
    *(a2 + 32) = result;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    if (!result)
    {
      *(a2 + 36) = *(v11 + 56);
      *(a2 + 4) = 4 * *(a2 + 40) + 44;
    }
  }

  else
  {
LABEL_14:
    *(a2 + 32) = -304;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
  }

  return result;
}

uint64_t _Xmach_exception_raise_state_identity(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(result + 4);
  if (*(result + 24) != 2 || v3 - 5277 < 0xFFFFEBAF)
  {
    goto LABEL_6;
  }

  if (*(result + 38) << 16 != 1114112 || *(result + 50) << 16 != 1114112)
  {
    v5 = -300;
    goto LABEL_7;
  }

  v6 = *(result + 64);
  if (v6 > 2)
  {
    goto LABEL_6;
  }

  v5 = -304;
  if (v6 > (v3 - 76) >> 3)
  {
    goto LABEL_7;
  }

  v7 = 8 * v6;
  if (v3 < 8 * v6 + 76)
  {
    goto LABEL_7;
  }

  v8 = result + v7;
  v9 = *(v8 + 72);
  if (v9 > 0x510 || (v10 = v3 - v7, v9 > (v10 - 76) >> 2) || v10 != 4 * v9 + 76)
  {
LABEL_6:
    v5 = -304;
LABEL_7:
    *(a2 + 32) = v5;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 40) = 1296;
  v11 = v8 - 16;
  v12 = *(result + 12);
  v13 = *(result + 28);
  v14 = *(result + 40);
  v15 = *(result + 60);
  result = catch_mach_exception_raise();
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 36) = *(v11 + 84);
    *(a2 + 4) = 4 * *(a2 + 40) + 44;
  }

  return result;
}

uint64_t _Xmach_exception_raise_identity_protected(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(a1 + 4);
  if (*(a1 + 24) != 1 || (v3 - 81) < 0xFFFFFFEF)
  {
    goto LABEL_6;
  }

  if (*(a1 + 38) << 16 != 1114112)
  {
    result = 4294966996;
    goto LABEL_7;
  }

  v6 = *(a1 + 60);
  if (v6 <= 2 && v6 <= (v3 - 64) >> 3 && v3 == ((8 * v6) | 0x40))
  {
    result = catch_mach_exception_raise_identity_protected(*(a1 + 12), *(a1 + 48), *(a1 + 28), *(a1 + 56), (a1 + 64));
  }

  else
  {
LABEL_6:
    result = 4294966992;
  }

LABEL_7:
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t mach_exc_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 2411) >= 0xFFFFFFFA && (v5 = catch_mach_exc_subsystem[5 * (v4 - 2405) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

void CSCppNamedRange::unique_macho_string()
{
  {
    CSCppNamedRange::unique_macho_string(char const*,char const*,unsigned long)::_uniqued_macho_strings = 0u;
    unk_1EDADA128 = 0u;
    dword_1EDADA138 = 1065353216;
  }
}

void CSCppReferenceCount::retain()
{
  putchar(10);
  v0 = utility_basename("/Library/Caches/com.apple.xbs/Sources/CoreSymbolication/CoreSymbolication/CSCppReferenceCount.hpp");
  printf("ASSERT(%s) %s %d, %s\n", "test_value != 0", v0, 27, "attempted object resurrection");
  if (qword_1EDADA590)
  {
    printf("__crashreporter_info__: %s\n", qword_1EDADA590);
  }

  abort();
}

void CSCppReferenceCount::release()
{
  putchar(10);
  v0 = utility_basename("/Library/Caches/com.apple.xbs/Sources/CoreSymbolication/CoreSymbolication/CSCppReferenceCount.hpp");
  printf("ASSERT(%s) %s %d, %s\n", "test_value >= value", v0, 43, "over release");
  if (qword_1EDADA590)
  {
    printf("__crashreporter_info__: %s\n", qword_1EDADA590);
  }

  abort();
}

void CSRangeOfDyldSharedCacheInCurrentProcess_cold_1()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    qword_1EDADA6F8 = 0;
    unk_1EDADA700 = 0;

    __cxa_guard_release(&_MergedGlobals);
  }
}

void new_file_memory_for_uuid_and_arch(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = __cxa_begin_catch(a1);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = (*(*v1 + 16))(v1);
    v4 = 136315394;
    v5 = "CSCppFileMemory *new_file_memory_for_uuid_and_arch(const char *, const UUID &, CSCppArchitecture, uint32_t)";
    v6 = 2080;
    v7 = v2;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Caught exception in %s:\n %s\n", &v4, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void CSCppDyldSplitSharedCacheMemory::path_and_base_address_for_ondisk_shared_cache_with_uuid()
{
  if (__cxa_guard_acquire(&_MergedGlobals_0))
  {
    unk_1EDADA730 = 0u;
    unk_1EDADA720 = 0u;
    dword_1EDADA740 = 1065353216;

    __cxa_guard_release(&_MergedGlobals_0);
  }
}

uint64_t *iterate_symbol_owners_from_disk_dsc(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_0_0(a1);
  if (result)
  {
    v5 = OUTLINED_FUNCTION_0(result);
    result = (*(v6 + 8))(v5);
  }

  *v1 = v3;
  *(v1 + 8) = v2;
  return result;
}

void iterate_symbol_owners_from_archive()
{
  if (__cxa_guard_acquire(&_MergedGlobals_1))
  {
    unk_1EDADA770 = 0u;
    unk_1EDADA760 = 0u;
    dword_1EDADA780 = 1065353216;
    __cxa_guard_release(&_MergedGlobals_1);
  }
}

void create_symbol_owner_data_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(const char *a1)
{
  printf("ASSERT(%s) %s %d, %s\n", "traw_symbol_owner_data->retain_count() == 1", a1, 2243, "Wrong refcount on traw_symbol_owner_data");
  if (qword_1EDADA590)
  {
    printf("__crashreporter_info__: %s\n", qword_1EDADA590);
  }

  abort();
}

void std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::__optional_copy_base<std::vector<unsigned long long>,false>::__optional_copy_base[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (v2)
  {
    OUTLINED_FUNCTION_0_1(v2, a1);
  }
}

size_t ___ZN20TMachOHeaderIteratorI17SizeAndEndiannessI9Pointer6412LittleEndianEE7iterateEv_block_invoke_cold_1(char *a1, const char *a2)
{
  v3 = a1;
  bzero(a1, 0x801uLL);
  result = strlen(a2);
  if (result >= 0x400)
  {
    v12 = 1024;
  }

  else
  {
    v12 = result;
  }

  if (result)
  {
    v13 = 2049;
    do
    {
      result = OUTLINED_FUNCTION_0_2(result, v5, v6, v7, v8, v9, v10, v11, v14);
      v3 += 2;
      v13 -= 2;
      --v12;
    }

    while (v12);
  }

  return result;
}

void CSCallFrameInfo::UnwindThreadState(std::__shared_weak_count **a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void create_sampling_context_for_task_pid_symbolicator_cold_1(void *a1, uint64_t a2, void ***a3, char **a4)
{
  v6 = __cxa_begin_catch(a1);
  v7 = *MEMORY[0x1E69E9848];
  v8 = (*(*v6 + 16))(v6);
  fprintf(v7, "Caught exception in create_sampling_context_for_task:\n%s\n", v8);
  v9 = *a3;
  if (*a3)
  {
    v10 = *a3;
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v10);
    MEMORY[0x1DA736760](v9, 0x20C40960023A9);
    *a3 = 0;
  }

  sampling_context_t::~sampling_context_t(a4);
  MEMORY[0x1DA736760]();
  __cxa_end_catch();
}

void ___ZN20SymbolicationSession30process_ats_dsc_and_pid_chunksEPK8__CFDataS2__block_invoke_2_cold_1(uint64_t *a1)
{
  v1 = OUTLINED_FUNCTION_0_0(a1);
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_0(v1);
    (*(v3 + 16))(v2);
  }

  OUTLINED_FUNCTION_2();
}

void get_exclave_core_uuid_to_path_map()
{
  if (__cxa_guard_acquire(&_MergedGlobals_2))
  {
    xmmword_1EDADA860 = 0u;
    *&qword_1EDADA870 = 0u;
    dword_1EDADA880 = 1065353216;

    __cxa_guard_release(&_MergedGlobals_2);
  }
}

void get_exclave_kit_uuid_to_path_map()
{
  if (__cxa_guard_acquire(&qword_1EDADA858))
  {
    xmmword_1EDADA888 = 0u;
    *&qword_1EDADA898 = 0u;
    dword_1EDADA8A8 = 1065353216;

    __cxa_guard_release(&qword_1EDADA858);
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EA0]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

{
  return MEMORY[0x1EEE63F08]();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x1EEE644C8](retstr, __val);
}

{
  return MEMORY[0x1EEE644D8](retstr, __val);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}