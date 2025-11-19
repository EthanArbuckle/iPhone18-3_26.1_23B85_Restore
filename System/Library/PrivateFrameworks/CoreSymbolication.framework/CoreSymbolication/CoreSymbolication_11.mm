char *find_core_file_region_info_containing_or_after_location(char **a1, unint64_t a2)
{
  v3 = *a1;
  result = a1[1];
  if (result != v3)
  {
    v4 = 0x6DB6DB6DB6DB6DB7 * ((result - v3) >> 5);
    do
    {
      v5 = v4 >> 1;
      v6 = &v3[224 * (v4 >> 1)];
      v8 = *v6;
      v9 = v6[1];
      v7 = (v6 + 28);
      v4 += ~(v4 >> 1);
      if (v9 + v8 <= a2)
      {
        v3 = v7;
      }

      else
      {
        v4 = v5;
      }
    }

    while (v4);
    return v3;
  }

  return result;
}

unint64_t CSCppCoreFileRegionsTree::recursively_search_forward_for_objects_at_or_after_address(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a3 > a4)
  {
    return 0;
  }

  if (*(a5 + 68))
  {
    v5 = *(a5 + 200);
    v6 = *(a5 + 208);
    if (v5 == v6)
    {
      return 0;
    }

    else
    {
      while (1)
      {
        if (v5[1] + *v5 > a2)
        {
          a5 = CSCppCoreFileRegionsTree::recursively_search_forward_for_objects_at_or_after_address(a1, a2, a3 + 1, a4, v5);
          if (v11)
          {
            break;
          }
        }

        v5 += 28;
        if (v5 == v6)
        {
          return a5 & 0xFFFFFFFFFFFFFF00;
        }
      }
    }
  }

  return a5;
}

uint64_t CSCppCoreFileRegionsTree::get_region_at_address(char **this, unint64_t a2, unint64_t a3)
{
  core_file_region_info_containing_or_after_location = find_core_file_region_info_containing_or_after_location(this, a2);
  v7 = this[1];
  if (v7 == core_file_region_info_containing_or_after_location)
  {
    return 0;
  }

  v8 = core_file_region_info_containing_or_after_location;
  if (a3 && a2 - *core_file_region_info_containing_or_after_location >= *(core_file_region_info_containing_or_after_location + 1))
  {
LABEL_4:
    while (1)
    {
      v9 = CSCppCoreFileRegionsTree::recursively_search_forward_for_objects_at_or_after_address(this, a2, 0, a3, v8);
      if (v10)
      {
        break;
      }

      v8 += 224;
      if (v8 == v7)
      {
        return 0;
      }
    }

    return v9;
  }

  if (a3 && core_file_region_info_containing_or_after_location[68])
  {
    v9 = CSCppCoreFileRegionsTree::recursively_search_for_region_at_specific_address(this, a2, 1, a3, core_file_region_info_containing_or_after_location);
    if ((v11 & 1) == 0)
    {
      goto LABEL_4;
    }

    return v9;
  }

  return v8;
}

void CSCppCoreFileRegionsTree::get_dispositions(char **this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  if (a2 % a4 || (v9 = a3 / a4, (v10 = a3 % a4) != 0))
  {
    *a6 = 0;
    *(a6 + 24) = 0;
    return;
  }

  v46 = 0;
  v12 = 0uLL;
  *__src = 0u;
  v13 = a2 + a3;
  if (a2 >= a2 + a3)
  {
LABEL_41:
    *a6 = v12;
    *(a6 + 16) = v10;
    *(a6 + 24) = 1;
    return;
  }

  v14 = this;
  v15 = 168;
  if (a5)
  {
    v15 = 136;
  }

  v42 = v15;
  v43 = a2 + a3;
  v16 = a2;
  while (1)
  {
    region_at_address = CSCppCoreFileRegionsTree::get_region_at_address(v14, v16, 0x270FuLL);
    if ((v18 & 1) == 0)
    {
      break;
    }

    v19 = region_at_address;
    if (*(region_at_address + 68))
    {
      break;
    }

    v20 = *region_at_address;
    if (v16 != a2 && v16 != v20)
    {
      break;
    }

    if (*(region_at_address + 67) != 3)
    {
      v32 = (region_at_address + v42);
      if (*(region_at_address + v42 + 24) != 1)
      {
        break;
      }

      v33 = v16 >= v20;
      v35 = v16 - v20;
      v34 = v35 != 0 && v33;
      v37 = *v32;
      v36 = v32[1];
      v38 = &v37[2 * (v35 / a4)];
      if (v34)
      {
        v39 = v38;
      }

      else
      {
        v39 = v37;
      }

      v40 = (v36 - v37) >> 1;
      if (v40 >= (v13 - v16) / a4)
      {
        v41 = (v13 - v16) / a4;
      }

      else
      {
        v41 = v40;
      }

      std::vector<unsigned short>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(__src, __src[1], v39, &v39[2 * v41], v41);
      goto LABEL_38;
    }

    if (a3 >= a4)
    {
      v21 = 0;
      v22 = __src[1];
      do
      {
        if (v22 >= v46)
        {
          v23 = __src[0];
          v24 = v22 - __src[0];
          v25 = (v22 - __src[0]) >> 1;
          if (v25 <= -2)
          {
            std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
          }

          if (v46 - __src[0] <= v25 + 1)
          {
            v26 = v25 + 1;
          }

          else
          {
            v26 = v46 - __src[0];
          }

          v27 = 0x7FFFFFFFFFFFFFFFLL;
          if (v46 - __src[0] < 0x7FFFFFFFFFFFFFFELL)
          {
            v27 = v26;
          }

          if (v27)
          {
            std::allocator<unsigned short>::allocate_at_least[abi:ne200100](__src, v27);
          }

          v28 = (v22 - __src[0]) >> 1;
          v29 = (2 * v25);
          v30 = (2 * v25 - 2 * v28);
          *v29 = 0;
          v22 = (v29 + 1);
          memcpy(v30, v23, v24);
          v31 = __src[0];
          __src[0] = v30;
          __src[1] = v22;
          v46 = 0;
          if (v31)
          {
            operator delete(v31);
          }
        }

        else
        {
          *v22 = 0;
          v22 += 2;
        }

        __src[1] = v22;
        ++v21;
      }

      while (v21 < v9);
LABEL_38:
      v20 = *v19;
      v13 = v43;
      v14 = this;
    }

    v16 = v19[1] + v20;
    if (v16 >= v13)
    {
      v12 = *__src;
      v10 = v46;
      goto LABEL_41;
    }
  }

  *a6 = 0;
  *(a6 + 24) = 0;
  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }
}

void sub_1D978DEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t CSCppCoreFileMetadata::region_filename(char **this, unint64_t a2, char *a3, unsigned int a4)
{
  if (*(this + 112) == 1)
  {
    region_at_address = CSCppCoreFileRegionsTree::get_region_at_address(this + 11, a2, 0x270FuLL);
    if ((v8 & 1) != 0 && a2 - *region_at_address < *(region_at_address + 8) && *(region_at_address + 128) == 1)
    {
      v9 = (region_at_address + 104);
      if (*(region_at_address + 127) < 0)
      {
        v11 = *(region_at_address + 112) + 1;
        if (v11 <= a4)
        {
          v9 = *v9;
LABEL_12:
          strcpy(a3, v9);
          return v11;
        }
      }

      else
      {
        v10 = *(region_at_address + 127);
        v11 = v10 + 1;
        if (a4 >= (v10 + 1))
        {
          goto LABEL_12;
        }
      }
    }
  }

  return 0;
}

uint64_t CSCppCoreFileDarwinMetadata::get_udata_pointers(CSCppCoreFileDarwinMetadata *this, void *__dst, unint64_t *a3)
{
  result = 4;
  if (a3 && (*(this + 560) & 1) != 0)
  {
    if (__dst)
    {
      v6 = *a3;
      v7 = *(this + 42) - *(this + 41);
      if (*a3 < v7 >> 3)
      {
        return 4;
      }

      v8 = (this + 328);
      v9 = (this + 336);
      memcpy(__dst, *(this + 41), v7);
    }

    else
    {
      v8 = (this + 328);
      v9 = (this + 336);
    }

    result = 0;
    *a3 = (*v9 - *v8) >> 3;
  }

  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_udata_pointers(CSCppCoreFileExclavesMetadata *this, unint64_t *a2, unint64_t *a3)
{
  if (!a3)
  {
    return 4;
  }

  result = 0;
  if (!a2)
  {
    *a3 = 0;
  }

  return result;
}

uint64_t CSCppCoreFileDarwinMetadata::get_owned_vm_objects(uint64_t a1, void *a2, unint64_t *a3)
{
  result = 4;
  if (a3 && (*(a1 + 560) & 1) != 0)
  {
    v7 = a1 + 360;
    v6 = *(a1 + 360);
    v8 = *(v7 + 8) - v6;
    v9 = v8 + 8;
    if (a2)
    {
      if (*a3 < v9)
      {
        return 4;
      }

      *a2 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 3);
      memcpy(a2 + 1, v6, v8);
    }

    result = 0;
    *a3 = v9;
  }

  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_owned_vm_objects(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return 4;
  }

  result = 0;
  *a3 = 0;
  return result;
}

uint64_t CSCppCoreFileMetadata::mach_vm_purgable_control(char **this, unint64_t a2, int a3, int *a4)
{
  result = 4;
  if (a3 == 1 && a4 && (this[14] & 1) != 0)
  {
    region_at_address = CSCppCoreFileRegionsTree::get_region_at_address(this + 11, a2, 0x270FuLL);
    if ((v9 & 1) != 0 && a2 - *region_at_address < *(region_at_address + 8) && (v10 = *(region_at_address + 96), v10 != 0x7FFFFFFF))
    {
      result = 0;
      *a4 = v10;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

uint64_t CSCppCoreFileMetadata::mach_vm_page_range_query(CSCppCoreFileMetadata *this, unint64_t a2, unint64_t a3, _DWORD *a4, unint64_t *a5, int a6)
{
  v6 = 4;
  if (!a5)
  {
    return v6;
  }

  v7 = a4;
  if (!a4 || (*(this + 112) & 1) == 0)
  {
    return v6;
  }

  if (CSArchitectureIsArm(*(this + 5)) || CSArchitectureIsArm64(*(this + 5)))
  {
    v13 = 0x4000;
    if (!a3)
    {
      return v6;
    }
  }

  else
  {
    if (!CSArchitectureIsX86_64(*(this + 5)))
    {
      return 5;
    }

    v13 = 4096;
    if (!a3)
    {
      return v6;
    }
  }

  if (((v13 - 1) & (a3 | a2)) != 0)
  {
    return v6;
  }

  CSCppCoreFileRegionsTree::get_dispositions(this + 11, a2, a3, v13, a6, &v21);
  if (v23 != 1)
  {
    return 5;
  }

  v14 = v21;
  v15 = v22;
  if (*a5 >= v22 - v21)
  {
    v16 = v22 - v21;
    *a5 = v16;
    if (v15 != v14)
    {
      if (v16 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16;
      }

      v18 = v14;
      do
      {
        v19 = *v18++;
        *v7++ = v19;
        --v17;
      }

      while (v17);
      v6 = 0;
      goto LABEL_24;
    }

    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  if (v14)
  {
LABEL_24:
    operator delete(v14);
  }

  return v6;
}

uint64_t CSCppCoreFileMetadata::mach_vm_region_recurse_submap_short_64(uint64_t a1, unint64_t *a2, void *a3, _DWORD *a4, uint64_t a5)
{
  if (*(a1 + 112) != 1)
  {
    return 4;
  }

  region_at_address = CSCppCoreFileRegionsTree::get_region_at_address((a1 + 88), *a2, *a4);
  if ((v10 & 1) == 0)
  {
    return 1;
  }

  v11 = region_at_address;
  result = 0;
  v13 = *(v11 + 28);
  v14 = *(v11 + 40);
  v15 = *(v11 + 60);
  v16 = *(v11 + 64);
  v17 = *(v11 + 66);
  v18 = *(v11 + 68);
  *(a5 + 12) = *(v11 + 32);
  v19 = *(v11 + 80);
  *(a5 + 28) = v16;
  v20 = *(v11 + 72);
  *a5 = *(v11 + 20);
  *(a5 + 8) = v13;
  *(a5 + 20) = v14;
  *(a5 + 24) = v15;
  *(a5 + 30) = v17;
  *(a5 + 32) = v18;
  *(a5 + 36) = v20;
  *(a5 + 44) = v19;
  *a4 = *(v11 + 16);
  *a2 = *v11;
  *a3 = *(v11 + 8);
  return result;
}

uint64_t CSCppCoreFileMetadata::mach_vm_region_recurse_submap_64(uint64_t a1, unint64_t *a2, void *a3, _DWORD *a4, uint64_t a5)
{
  if (*(a1 + 112) != 1)
  {
    return 4;
  }

  region_at_address = CSCppCoreFileRegionsTree::get_region_at_address((a1 + 88), *a2, *a4);
  if ((v10 & 1) == 0)
  {
    return 1;
  }

  v11 = region_at_address;
  result = 0;
  v13 = *(v11 + 28);
  v14 = *(v11 + 64);
  v15 = *(v11 + 66);
  v16 = *(v11 + 68);
  v17 = *(v11 + 80);
  v18 = *(v11 + 88);
  *(a5 + 12) = *(v11 + 32);
  v19 = *(v11 + 84);
  *(a5 + 44) = v14;
  v20 = *(v11 + 72);
  v21 = *(v11 + 40);
  v22 = *(v11 + 56);
  *a5 = *(v11 + 20);
  *(a5 + 8) = v13;
  *(a5 + 20) = v21;
  *(a5 + 36) = v22;
  *(a5 + 46) = v15;
  *(a5 + 48) = v16;
  *(a5 + 52) = v20;
  *(a5 + 60) = v17;
  *(a5 + 64) = v19;
  *(a5 + 68) = v18;
  *a4 = *(v11 + 16);
  *a2 = *v11;
  *a3 = *(v11 + 8);
  return result;
}

uint64_t CSCppCoreFileExclavesMetadata::get_exclave_vm_flags_for_address(CSCppCoreFileExclavesMetadata *this, unint64_t a2, unsigned int *a3)
{
  if (!a3 || *(this + 112) != 1)
  {
    return 4;
  }

  region_at_address = CSCppCoreFileRegionsTree::get_region_at_address(this + 11, a2, 0);
  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = region_at_address;
  result = 0;
  *a3 = *(v6 + 100);
  return result;
}

uint64_t parse_addrable_bits_note(const char *a1, const note_command *a2)
{
  if (a2->size < 0x10)
  {
    return 0;
  }

  CSCppFileMemory::CSCppFileMemory(v11, a1, a2->offset);
  v4 = (*(v11[0] + 32))(v11, a2->offset, 16);
  if (v5 >= 0x10 && ((v6 = *v4, *v4 == 4) || v6 == 3 || v6 == 2) && (v7 = (*(v11[0] + 32))(v11, a2->offset, 16), v8 >= 0x10))
  {
    v10 = ~(-1 << *(v7 + 4)) & 0x7FFFFFFFFFFFFF00;
    v9 = ~(-1 << *(v7 + 4));
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  CSCppFileMemory::~CSCppFileMemory(v11);
  return v10 | v9;
}

void sub_1D978E674(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CSCppFileMemory::~CSCppFileMemory(va);
  _Unwind_Resume(a1);
}

void CSCppCoreFileDarwinMetadata::~CSCppCoreFileDarwinMetadata(CSCppCoreFileDarwinMetadata *this)
{
  CSCppCoreFileDarwinMetadata::~CSCppCoreFileDarwinMetadata(this);

  JUMPOUT(0x1DA736760);
}

{
  *this = &unk_1F5507CD8;
  if (*(this + 560) == 1)
  {
    CSCppCoreFileTaskCrashinfo::~CSCppCoreFileTaskCrashinfo((this + 120));
  }

  CSCppCoreFileMetadata::~CSCppCoreFileMetadata(this);
}

void CSCppCoreFileExclavesMetadata::~CSCppCoreFileExclavesMetadata(CSCppCoreFileExclavesMetadata *this)
{
  CSCppCoreFileMetadata::~CSCppCoreFileMetadata(this);

  JUMPOUT(0x1DA736760);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D978E76C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D978E830(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
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

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

__n128 std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void std::allocator<CS_vm_object_query_data_t>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__s.__data_[0] = 0;
  a1[1].__r_.__value_.__s.__data_[0] = 0;
  std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(a1, a2);
  return a1;
}

void sub_1D978EA68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__optional_storage_base<std::string,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::string,false> const&>(std::string *this, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
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

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

uint64_t std::__optional_copy_base<std::vector<unsigned long long>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<std::vector<unsigned long long>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<unsigned long long>,false> const&>(a1, a2);
  return a1;
}

void sub_1D978EB1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::vector<unsigned long long>,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<std::vector<unsigned long long>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<unsigned long long>,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D978EBF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<unsigned long>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__optional_copy_base<std::vector<CS_vm_object_query_data_t>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<std::vector<CS_vm_object_query_data_t>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<CS_vm_object_query_data_t>,false> const&>(a1, a2);
  return a1;
}

void sub_1D978EC78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::vector<unsigned long long>,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<std::vector<CS_vm_object_query_data_t>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<CS_vm_object_query_data_t>,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<CS_vm_object_query_data_t>::__init_with_size[abi:ne200100]<CS_vm_object_query_data_t*,CS_vm_object_query_data_t*>(result, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3));
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t std::vector<CS_vm_object_query_data_t>::__init_with_size[abi:ne200100]<CS_vm_object_query_data_t*,CS_vm_object_query_data_t*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CS_vm_object_query_data_t>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D978ED60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CS_vm_object_query_data_t>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::allocator<CS_vm_object_query_data_t>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

void CSCppCoreFileTaskCrashinfo::~CSCppCoreFileTaskCrashinfo(CSCppCoreFileTaskCrashinfo *this)
{
  if (*(this + 264) == 1)
  {
    v2 = *(this + 30);
    if (v2)
    {
      *(this + 31) = v2;
      operator delete(v2);
    }
  }

  if (*(this + 232) == 1)
  {
    v3 = *(this + 26);
    if (v3)
    {
      *(this + 27) = v3;
      operator delete(v3);
    }
  }

  if (*(this + 120) == 1 && *(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  if (*(this + 88) == 1 && *(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 56) == 1 && *(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::allocator<std::vector<std::reference_wrapper<portable_region_info_t const>>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<std::reference_wrapper<portable_region_info_t const>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<std::reference_wrapper<portable_region_info_t const>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::reference_wrapper<portable_region_info_t const>>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
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

unint64_t **std::__introsort<std::_ClassicAlgPolicy,parse_vm_info_note(char const*,note_command const&)::$_0 &,std::reference_wrapper<portable_region_info_t const> *,false>(unint64_t **result, unint64_t **a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v74 = *(a2 - 1);
        v75 = *v8;
        if (*v74 < **v8)
        {
          *v8 = v74;
          *(a2 - 1) = v75;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v81 = v8 + 1;
      v82 = v8[1];
      v83 = v8 + 2;
      v84 = v8[2];
      v85 = *v8;
      v86 = *v82;
      v87 = *v84;
      if (*v82 >= **v8)
      {
        if (v87 < v86)
        {
          *v81 = v84;
          *v83 = v82;
          if (*v84 < *v85)
          {
            *v8 = v84;
            v130 = v8 + 1;
            goto LABEL_192;
          }

LABEL_193:
          v84 = v82;
        }
      }

      else
      {
        if (v87 < v86)
        {
          *v8 = v84;
          goto LABEL_191;
        }

        *v8 = v82;
        v8[1] = v85;
        if (*v84 < *v85)
        {
          *v81 = v84;
LABEL_191:
          v130 = v8 + 2;
          v82 = v85;
LABEL_192:
          *v130 = v85;
          goto LABEL_193;
        }
      }

      v134 = *(a2 - 1);
      if (*v134 < *v84)
      {
        *v83 = v134;
        *(a2 - 1) = v84;
        v135 = *v83;
        v136 = *v81;
        if (*v135 < *v136)
        {
          v8[1] = v135;
          v8[2] = v136;
          v137 = *v8;
          if (*v135 < **v8)
          {
            *v8 = v135;
            v8[1] = v137;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,parse_vm_info_note(char const*,note_command const&)::$_0 &,std::reference_wrapper<portable_region_info_t const> *,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v88 = v8 + 1;
      v90 = v8 == a2 || v88 == a2;
      if (a4)
      {
        if (!v90)
        {
          v91 = 0;
          v92 = v8;
          do
          {
            v94 = *v92;
            v93 = v92[1];
            v92 = v88;
            if (*v93 < *v94)
            {
              v95 = v91;
              while (1)
              {
                *(v8 + v95 + 8) = v94;
                if (!v95)
                {
                  break;
                }

                v94 = *(v8 + v95 - 8);
                v95 -= 8;
                if (*v93 >= *v94)
                {
                  v96 = (v8 + v95 + 8);
                  goto LABEL_129;
                }
              }

              v96 = v8;
LABEL_129:
              *v96 = v93;
            }

            v88 = v92 + 1;
            v91 += 8;
          }

          while (v92 + 1 != a2);
        }
      }

      else if (!v90)
      {
        do
        {
          v132 = *v7;
          v131 = v7[1];
          v7 = v88;
          if (*v131 < *v132)
          {
            do
            {
              *v88 = v132;
              v132 = *(v88 - 2);
              --v88;
            }

            while (*v131 < *v132);
            *v88 = v131;
          }

          v88 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v97 = (v9 - 2) >> 1;
        v98 = v97;
        do
        {
          v99 = v98;
          if (v97 >= v98)
          {
            v100 = (2 * v98) | 1;
            v101 = &v8[v100];
            v102 = *v101;
            if (2 * v99 + 2 >= v9)
            {
              v104 = *v102;
            }

            else
            {
              v103 = *v102;
              v104 = *v101[1];
              v105 = v103 >= v104;
              if (v103 > v104)
              {
                v104 = v103;
              }

              if (!v105)
              {
                ++v101;
                v100 = 2 * v99 + 2;
              }
            }

            v106 = &v8[v99];
            v107 = *v106;
            if (v104 >= **v106)
            {
              v108 = *v101;
              do
              {
                *v106 = v108;
                v106 = v101;
                if (v97 < v100)
                {
                  break;
                }

                v109 = (2 * v100) | 1;
                v101 = &v8[v109];
                v100 = 2 * v100 + 2;
                v108 = *v101;
                if (v100 >= v9)
                {
                  v111 = *v108;
                  v100 = v109;
                }

                else
                {
                  result = v101 + 1;
                  v110 = v101[1];
                  v111 = *v108;
                  v112 = *v108 >= *v110;
                  if (*v108 <= *v110)
                  {
                    v111 = *v110;
                  }

                  if (*v108 < *v110)
                  {
                    v108 = v101[1];
                    ++v101;
                  }

                  if (v112)
                  {
                    v100 = v109;
                  }
                }
              }

              while (v111 >= *v107);
              *v106 = v107;
            }
          }

          v98 = v99 - 1;
        }

        while (v99);
        do
        {
          v113 = 0;
          v114 = *v8;
          v115 = v8;
          do
          {
            v116 = &v115[v113];
            v117 = v116 + 1;
            v118 = (2 * v113) | 1;
            v113 = 2 * v113 + 2;
            if (v113 >= v9)
            {
              v113 = v118;
            }

            else
            {
              v120 = v116[2];
              v119 = v116 + 2;
              if (**(v119 - 1) >= *v120)
              {
                v113 = v118;
              }

              else
              {
                v117 = v119;
              }
            }

            *v115 = *v117;
            v115 = v117;
          }

          while (v113 <= ((v9 - 2) >> 1));
          if (v117 == --a2)
          {
            *v117 = v114;
          }

          else
          {
            *v117 = *a2;
            *a2 = v114;
            v121 = (v117 - v8 + 8) >> 3;
            v122 = v121 < 2;
            v123 = v121 - 2;
            if (!v122)
            {
              v124 = v123 >> 1;
              v125 = &v8[v124];
              v126 = *v125;
              v127 = *v117;
              if (**v125 < **v117)
              {
                do
                {
                  *v117 = v126;
                  v117 = v125;
                  if (!v124)
                  {
                    break;
                  }

                  v124 = (v124 - 1) >> 1;
                  v125 = &v8[v124];
                  v126 = *v125;
                }

                while (**v125 < *v127);
                *v117 = v127;
              }
            }
          }

          v122 = v9-- <= 2;
        }

        while (!v122);
      }

      return result;
    }

    v10 = v9 >> 1;
    v11 = *(a2 - 1);
    v12 = *v11;
    if (v9 >= 0x81)
    {
      v13 = v8[v10];
      v14 = *v8;
      v15 = *v13;
      if (*v13 >= **v8)
      {
        if (v12 < v15)
        {
          v8[v10] = v11;
          *(a2 - 1) = v13;
          v19 = v8[v10];
          v20 = *v8;
          if (*v19 < **v8)
          {
            *v8 = v19;
            v8[v10] = v20;
          }
        }
      }

      else
      {
        if (v12 < v15)
        {
          *v8 = v11;
          goto LABEL_27;
        }

        *v8 = v13;
        v8[v10] = v14;
        v22 = *(a2 - 1);
        if (*v22 < *v14)
        {
          v8[v10] = v22;
LABEL_27:
          *(a2 - 1) = v14;
        }
      }

      v23 = v10 - 1;
      v24 = v8[v10 - 1];
      v25 = v8[1];
      v26 = *v24;
      v27 = *(a2 - 2);
      v28 = *v27;
      if (*v24 >= *v25)
      {
        if (v28 < v26)
        {
          v8[v23] = v27;
          *(a2 - 2) = v24;
          v29 = v8[v23];
          v30 = v8[1];
          if (*v29 < *v30)
          {
            v8[1] = v29;
            v8[v23] = v30;
          }
        }
      }

      else
      {
        if (v28 < v26)
        {
          v8[1] = v27;
          goto LABEL_39;
        }

        v8[1] = v24;
        v8[v23] = v25;
        v32 = *(a2 - 2);
        if (*v32 < *v25)
        {
          v8[v23] = v32;
LABEL_39:
          *(a2 - 2) = v25;
        }
      }

      v33 = v10 + 1;
      v34 = v8[v10 + 1];
      v35 = v8[2];
      v36 = *v34;
      v37 = *(a2 - 3);
      v38 = *v37;
      if (*v34 >= *v35)
      {
        if (v38 < v36)
        {
          v8[v33] = v37;
          *(a2 - 3) = v34;
          v39 = v8[v33];
          v40 = v8[2];
          if (*v39 < *v40)
          {
            v8[2] = v39;
            v8[v33] = v40;
          }
        }
      }

      else
      {
        if (v38 < v36)
        {
          v8[2] = v37;
          goto LABEL_48;
        }

        v8[2] = v34;
        v8[v33] = v35;
        v41 = *(a2 - 3);
        if (*v41 < *v35)
        {
          v8[v33] = v41;
LABEL_48:
          *(a2 - 3) = v35;
        }
      }

      v42 = v8[v10];
      v43 = v8[v23];
      v44 = *v42;
      v45 = v8[v33];
      v46 = *v45;
      if (*v42 >= *v43)
      {
        if (v46 < v44)
        {
          v8[v10] = v45;
          v8[v33] = v42;
          v42 = v45;
          if (*v45 < *v43)
          {
            v8[v23] = v45;
            v8[v10] = v43;
            v42 = v43;
          }
        }
      }

      else if (v46 >= v44)
      {
        v8[v23] = v42;
        v8[v10] = v43;
        v42 = v43;
        if (*v45 < *v43)
        {
          v8[v10] = v45;
          v8[v33] = v43;
          v42 = v45;
        }
      }

      else
      {
        v8[v23] = v45;
        v8[v33] = v43;
      }

      v47 = *v8;
      *v8 = v42;
      v8[v10] = v47;
      goto LABEL_58;
    }

    v16 = *v8;
    v17 = v8[v10];
    v18 = **v8;
    if (v18 >= *v17)
    {
      if (v12 < v18)
      {
        *v8 = v11;
        *(a2 - 1) = v16;
        v21 = v8[v10];
        if (**v8 < *v21)
        {
          v8[v10] = *v8;
          *v8 = v21;
        }
      }

      goto LABEL_58;
    }

    if (v12 < v18)
    {
      v8[v10] = v11;
LABEL_36:
      *(a2 - 1) = v17;
      goto LABEL_58;
    }

    v8[v10] = v16;
    *v8 = v17;
    v31 = *(a2 - 1);
    if (*v31 < *v17)
    {
      *v8 = v31;
      goto LABEL_36;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v48 = *v8;
      v49 = **v8;
LABEL_61:
      v50 = 0;
      do
      {
        v51 = v8[++v50];
      }

      while (*v51 < v49);
      v52 = &v8[v50];
      v53 = a2;
      if (v50 == 1)
      {
        v53 = a2;
        do
        {
          if (v52 >= v53)
          {
            break;
          }

          v55 = *--v53;
        }

        while (*v55 >= v49);
      }

      else
      {
        do
        {
          v54 = *--v53;
        }

        while (*v54 >= v49);
      }

      if (v52 >= v53)
      {
        v62 = v52 - 1;
      }

      else
      {
        v56 = *v53;
        v57 = &v8[v50];
        v58 = v53;
        do
        {
          *v57 = v56;
          *v58 = v51;
          v59 = *v48;
          do
          {
            v60 = v57[1];
            ++v57;
            v51 = v60;
          }

          while (*v60 < v59);
          do
          {
            v61 = *--v58;
            v56 = v61;
          }

          while (*v61 >= v59);
        }

        while (v57 < v58);
        v62 = v57 - 1;
      }

      if (v62 != v8)
      {
        *v8 = *v62;
      }

      *v62 = v48;
      if (v52 < v53)
      {
        goto LABEL_82;
      }

      v63 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,parse_vm_info_note(char const*,note_command const&)::$_0 &,std::reference_wrapper<portable_region_info_t const> *>(v8, v62);
      v8 = v62 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,parse_vm_info_note(char const*,note_command const&)::$_0 &,std::reference_wrapper<portable_region_info_t const> *>(v62 + 1, a2);
      if (result)
      {
        a2 = v62;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_82:
        result = std::__introsort<std::_ClassicAlgPolicy,parse_vm_info_note(char const*,note_command const&)::$_0 &,std::reference_wrapper<portable_region_info_t const> *,false>(v7, v62, a3, a4 & 1);
        a4 = 0;
        v8 = v62 + 1;
      }
    }

    else
    {
      v48 = *v8;
      v49 = **v8;
      if (**(v8 - 1) < v49)
      {
        goto LABEL_61;
      }

      if (v49 >= **(a2 - 1))
      {
        v65 = v8 + 1;
        do
        {
          v8 = v65;
          if (v65 >= a2)
          {
            break;
          }

          ++v65;
        }

        while (v49 >= **v8);
      }

      else
      {
        do
        {
          v64 = v8[1];
          ++v8;
        }

        while (v49 >= *v64);
      }

      v66 = a2;
      if (v8 < a2)
      {
        v66 = a2;
        do
        {
          v67 = *--v66;
        }

        while (v49 < *v67);
      }

      if (v8 < v66)
      {
        v68 = *v8;
        v69 = *v66;
        do
        {
          *v8 = v69;
          *v66 = v68;
          v70 = *v48;
          do
          {
            v71 = v8[1];
            ++v8;
            v68 = v71;
          }

          while (v70 >= *v71);
          do
          {
            v72 = *--v66;
            v69 = v72;
          }

          while (v70 < *v72);
        }

        while (v8 < v66);
      }

      v73 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v73;
      }

      a4 = 0;
      *v73 = v48;
    }
  }

  v76 = *v8;
  v77 = v8[1];
  v78 = *v77;
  v79 = *(a2 - 1);
  v80 = *v79;
  if (*v77 >= **v8)
  {
    if (v80 < v78)
    {
      v8[1] = v79;
      *(a2 - 1) = v77;
      v129 = *v8;
      v128 = v8[1];
      if (*v128 < **v8)
      {
        *v8 = v128;
        v8[1] = v129;
      }
    }
  }

  else
  {
    if (v80 >= v78)
    {
      *v8 = v77;
      v8[1] = v76;
      v133 = *(a2 - 1);
      if (*v133 >= *v76)
      {
        return result;
      }

      v8[1] = v133;
    }

    else
    {
      *v8 = v79;
    }

    *(a2 - 1) = v76;
  }

  return result;
}

unint64_t **std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,parse_vm_info_note(char const*,note_command const&)::$_0 &,std::reference_wrapper<portable_region_info_t const> *,0>(unint64_t **result, unint64_t **a2, unint64_t **a3, unint64_t **a4, unint64_t **a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = **a2;
  v8 = *a3;
  v9 = **a3;
  if (v7 >= **result)
  {
    if (v9 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v8;
      *a3 = v5;
      v10 = *result;
      if (**a2 < **result)
      {
        *result = *a2;
        *a2 = v10;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v9 < v7)
    {
      *result = v8;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (**a3 < *v6)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (**a4 < *v5)
  {
    *a3 = *a4;
    *a4 = v5;
    v11 = *a2;
    if (**a3 < **a2)
    {
      *a2 = *a3;
      *a3 = v11;
      v12 = *result;
      if (**a2 < **result)
      {
        *result = *a2;
        *a2 = v12;
      }
    }
  }

  v13 = *a4;
  if (**a5 < **a4)
  {
    *a4 = *a5;
    *a5 = v13;
    v14 = *a3;
    if (**a4 < **a3)
    {
      *a3 = *a4;
      *a4 = v14;
      v15 = *a2;
      if (**a3 < **a2)
      {
        *a2 = *a3;
        *a3 = v15;
        v16 = *result;
        if (**a2 < **result)
        {
          *result = *a2;
          *a2 = v16;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,parse_vm_info_note(char const*,note_command const&)::$_0 &,std::reference_wrapper<portable_region_info_t const> *>(unint64_t **a1, unint64_t **a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *v6;
      v8 = *(a2 - 1);
      v9 = *v8;
      if (*v6 >= **a1)
      {
        if (v9 < v7)
        {
          a1[1] = v8;
          *(a2 - 1) = v6;
          v25 = *a1;
          v24 = a1[1];
          if (*v24 < **a1)
          {
            *a1 = v24;
            a1[1] = v25;
          }
        }

        return 1;
      }

      if (v9 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v27 = *(a2 - 1);
        if (*v27 >= *v5)
        {
          return 1;
        }

        a1[1] = v27;
      }

      else
      {
        *a1 = v8;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,parse_vm_info_note(char const*,note_command const&)::$_0 &,std::reference_wrapper<portable_region_info_t const> *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v17 = a1 + 1;
    v18 = a1[1];
    v19 = a1 + 2;
    v20 = a1[2];
    v21 = *a1;
    v22 = *v18;
    v23 = *v20;
    if (*v18 >= **a1)
    {
      if (v23 < v22)
      {
        *v17 = v20;
        *v19 = v18;
        if (*v20 >= *v21)
        {
LABEL_50:
          v20 = v18;
          goto LABEL_51;
        }

        *a1 = v20;
        v26 = a1 + 1;
LABEL_49:
        *v26 = v21;
        goto LABEL_50;
      }
    }

    else
    {
      if (v23 < v22)
      {
        *a1 = v20;
LABEL_48:
        v26 = a1 + 2;
        v18 = v21;
        goto LABEL_49;
      }

      *a1 = v18;
      a1[1] = v21;
      if (*v20 < *v21)
      {
        *v17 = v20;
        goto LABEL_48;
      }
    }

LABEL_51:
    v35 = *(a2 - 1);
    if (*v35 < *v20)
    {
      *v19 = v35;
      *(a2 - 1) = v20;
      v36 = *v19;
      v37 = *v17;
      if (*v36 < *v37)
      {
        a1[1] = v36;
        a1[2] = v37;
        v38 = *a1;
        if (*v36 < **a1)
        {
          *a1 = v36;
          a1[1] = v38;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*v3 < **a1)
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v10 = a1 + 2;
  v11 = a1[2];
  v12 = a1 + 1;
  v13 = a1[1];
  v14 = *a1;
  v15 = *v13;
  v16 = *v11;
  if (*v13 < **a1)
  {
    if (v16 >= v15)
    {
      *a1 = v13;
      a1[1] = v14;
      if (*v11 >= *v14)
      {
        goto LABEL_35;
      }

      *v12 = v11;
    }

    else
    {
      *a1 = v11;
    }

    v12 = a1 + 2;
    goto LABEL_34;
  }

  if (v16 < v15)
  {
    *v12 = v11;
    *v10 = v13;
    if (*v11 < *v14)
    {
      *a1 = v11;
LABEL_34:
      *v12 = v14;
    }
  }

LABEL_35:
  v28 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v29 = 0;
  v30 = 0;
  while (1)
  {
    v31 = *v28;
    v32 = *v10;
    if (**v28 < *v32)
    {
      v33 = v29;
      while (1)
      {
        *(a1 + v33 + 24) = v32;
        if (v33 == -16)
        {
          break;
        }

        v32 = *(a1 + v33 + 8);
        v33 -= 8;
        if (*v31 >= *v32)
        {
          v34 = (a1 + v33 + 24);
          goto LABEL_43;
        }
      }

      v34 = a1;
LABEL_43:
      *v34 = v31;
      if (++v30 == 8)
      {
        return v28 + 1 == a2;
      }
    }

    v10 = v28;
    v29 += 8;
    if (++v28 == a2)
    {
      return 1;
    }
  }
}

void cpp_region_info_for_portable_region(char const*,portable_region_info_t const&)::$_0::operator()(void *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 == -1 || (v5 = a3) == 0)
  {
    *a4 = 0;
    *(a4 + 24) = 0;
  }

  else
  {
    v7 = 2 * a3;
    CSCppFileMemory::CSCppFileMemory(v24, *a1, a2);
    v9 = CSCppFileMemory::bytes_at(v24, a2, 2 * v5);
    if (v9 && v8 >= v7)
    {
      __src = 0;
      v22 = 0;
      v23 = 0;
      std::vector<unsigned short>::reserve(&__src, v5);
      v10 = v22;
      do
      {
        if (v10 >= v23)
        {
          v11 = __src;
          v12 = v10 - __src;
          v13 = (v10 - __src) >> 1;
          if (v13 <= -2)
          {
            std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
          }

          if (v23 - __src <= v13 + 1)
          {
            v14 = v13 + 1;
          }

          else
          {
            v14 = v23 - __src;
          }

          if (v23 - __src >= 0x7FFFFFFFFFFFFFFELL)
          {
            v15 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            std::allocator<unsigned short>::allocate_at_least[abi:ne200100](&__src, v15);
          }

          v16 = (v10 - __src) >> 1;
          v17 = (2 * v13);
          v18 = (2 * v13 - 2 * v16);
          *v17 = *v9;
          v10 = (v17 + 1);
          memcpy(v18, v11, v12);
          v19 = __src;
          __src = v18;
          v22 = v10;
          v23 = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v10 = *v9;
          v10 += 2;
        }

        v22 = v10;
        ++v9;
        --v5;
      }

      while (v5);
      v20 = v23;
      *a4 = __src;
      *(a4 + 8) = v10;
      *(a4 + 16) = v20;
      *(a4 + 24) = 1;
    }

    else
    {
      *a4 = 0;
      *(a4 + 24) = 0;
    }

    CSCppFileMemory::~CSCppFileMemory(v24);
  }
}

void sub_1D978FFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  CSCppFileMemory::~CSCppFileMemory(&a12);
  _Unwind_Resume(a1);
}

void *std::vector<unsigned short>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      std::allocator<unsigned short>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::allocator<unsigned short>::allocate_at_least[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__optional_copy_base<std::vector<unsigned short>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<std::vector<unsigned short>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<unsigned short>,false> const&>(a1, a2);
  return a1;
}

void sub_1D97900E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    std::__optional_copy_base<std::vector<unsigned long long>,false>::__optional_copy_base[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<std::vector<unsigned short>,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<std::vector<unsigned short>,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D97901B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::allocator<unsigned short>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<CSCppCoreFileRegionInfo>::__emplace_back_slow_path<CSCppCoreFileRegionInfo const&>(uint64_t *a1, const CSCppCoreFileRegionInfo *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x124924924924924)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 5)) >= 0x92492492492492)
  {
    v6 = 0x124924924924924;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::allocator<CSCppCoreFileRegionInfo>::allocate_at_least[abi:ne200100](a1, v6);
  }

  v13 = 0;
  v14 = 224 * v2;
  CSCppCoreFileRegionInfo::CSCppCoreFileRegionInfo((224 * v2), a2);
  v15 = (224 * v2 + 224);
  v7 = a1[1];
  v8 = 224 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CSCppCoreFileRegionInfo>,CSCppCoreFileRegionInfo*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<CSCppCoreFileRegionInfo>::~__split_buffer(&v13);
  return v12;
}

void sub_1D9790340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CSCppCoreFileRegionInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void CSCppCoreFileRegionInfo::CSCppCoreFileRegionInfo(CSCppCoreFileRegionInfo *this, const CSCppCoreFileRegionInfo *a2)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v5;
  *this = v4;
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  *(this + 12) = *(a2 + 12);
  *(this + 4) = v7;
  *(this + 5) = v8;
  *(this + 3) = v6;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 104), (a2 + 104));
  std::__optional_copy_base<std::vector<unsigned short>,false>::__optional_copy_base[abi:ne200100](this + 136, a2 + 136);
  std::__optional_copy_base<std::vector<unsigned short>,false>::__optional_copy_base[abi:ne200100](this + 168, a2 + 168);
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  std::vector<CSCppCoreFileRegionInfo>::__init_with_size[abi:ne200100]<CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(this + 200, *(a2 + 25), *(a2 + 26), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 26) - *(a2 + 25)) >> 5));
}

void sub_1D97903F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 192) == 1)
  {
    v3 = *(v1 + 168);
    if (v3)
    {
      *(v1 + 176) = v3;
      operator delete(v3);
    }
  }

  if (*(v1 + 160) == 1)
  {
    v4 = *(v1 + 136);
    if (v4)
    {
      *(v1 + 144) = v4;
      operator delete(v4);
    }
  }

  if (*(v1 + 128) == 1 && *(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<CSCppCoreFileRegionInfo>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x124924924924925)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CSCppCoreFileRegionInfo>,CSCppCoreFileRegionInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v25 = a4;
  v22[0] = a1;
  v22[1] = &v24;
  v22[2] = &v25;
  if (a2 == a3)
  {
    v23 = 1;
  }

  else
  {
    v5 = a2;
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      v10 = *(a2 + v7);
      v11 = *(a2 + v7 + 32);
      *(v9 + 16) = *(a2 + v7 + 16);
      *(v9 + 32) = v11;
      *v9 = v10;
      v12 = *(a2 + v7 + 48);
      v13 = *(a2 + v7 + 64);
      v14 = *(a2 + v7 + 80);
      *(v9 + 96) = *(a2 + v7 + 96);
      *(v9 + 64) = v13;
      *(v9 + 80) = v14;
      *(v9 + 48) = v12;
      *(a4 + v7 + 104) = 0;
      *(v9 + 128) = 0;
      if (*(a2 + v7 + 128) == 1)
      {
        v15 = *(v8 + 104);
        *(a4 + v7 + 120) = *(v8 + 120);
        *(a4 + v7 + 104) = v15;
        *(v8 + 112) = 0;
        *(v8 + 120) = 0;
        *(v8 + 104) = 0;
        *(v9 + 128) = 1;
      }

      *(v9 + 136) = 0;
      v16 = (v9 + 136);
      *(v9 + 160) = 0;
      if (*(v8 + 160) == 1)
      {
        v17 = (a2 + v7);
        *v16 = 0;
        *(v9 + 144) = 0;
        *(v9 + 152) = 0;
        *v16 = *(a2 + v7 + 136);
        *(a4 + v7 + 152) = *(a2 + v7 + 152);
        v17[17] = 0;
        v17[18] = 0;
        v17[19] = 0;
        *(v9 + 160) = 1;
      }

      v18 = a4 + v7;
      *(a4 + v7 + 168) = 0;
      v19 = (a4 + v7 + 168);
      *(a4 + v7 + 192) = 0;
      if (*(v8 + 192) == 1)
      {
        v20 = (a2 + v7);
        *v19 = 0;
        *(a4 + v7 + 176) = 0;
        *(a4 + v7 + 184) = 0;
        *v19 = *(a2 + v7 + 168);
        *(v18 + 184) = *(a2 + v7 + 184);
        v20[21] = 0;
        v20[22] = 0;
        v20[23] = 0;
        *(v18 + 192) = 1;
      }

      *(v18 + 200) = 0;
      *(v18 + 208) = 0;
      *(v18 + 216) = 0;
      *(v18 + 200) = *(v8 + 200);
      *(v18 + 216) = *(v8 + 216);
      *(v8 + 200) = 0;
      *(v8 + 208) = 0;
      *(v8 + 216) = 0;
      v7 += 224;
    }

    while (v8 + 224 != a3);
    v25 = a4 + v7;
    v23 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<CSCppCoreFileRegionInfo>>::destroy[abi:ne200100]<CSCppCoreFileRegionInfo,void,0>(a1, v5);
      v5 += 224;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CSCppCoreFileRegionInfo>,CSCppCoreFileRegionInfo*>>::~__exception_guard_exceptions[abi:ne200100](v22);
}

void std::allocator_traits<std::allocator<CSCppCoreFileRegionInfo>>::destroy[abi:ne200100]<CSCppCoreFileRegionInfo,void,0>(uint64_t a1, uint64_t a2)
{
  v5 = (a2 + 200);
  std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(a2 + 192) == 1)
  {
    v3 = *(a2 + 168);
    if (v3)
    {
      *(a2 + 176) = v3;
      operator delete(v3);
    }
  }

  if (*(a2 + 160) == 1)
  {
    v4 = *(a2 + 136);
    if (v4)
    {
      *(a2 + 144) = v4;
      operator delete(v4);
    }
  }

  if (*(a2 + 128) == 1 && *(a2 + 127) < 0)
  {
    operator delete(*(a2 + 104));
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CSCppCoreFileRegionInfo>,CSCppCoreFileRegionInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<CSCppCoreFileRegionInfo>,CSCppCoreFileRegionInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<CSCppCoreFileRegionInfo>,CSCppCoreFileRegionInfo*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 224;
      std::allocator_traits<std::allocator<CSCppCoreFileRegionInfo>>::destroy[abi:ne200100]<CSCppCoreFileRegionInfo,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<CSCppCoreFileRegionInfo>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<CSCppCoreFileRegionInfo>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<CSCppCoreFileRegionInfo>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 224;
    std::allocator_traits<std::allocator<CSCppCoreFileRegionInfo>>::destroy[abi:ne200100]<CSCppCoreFileRegionInfo,void,0>(v5, v4 - 224);
  }
}

uint64_t std::optional<CSCppCoreFileRegionInfo>::~optional(uint64_t a1)
{
  if (*(a1 + 224) == 1)
  {
    v5 = (a1 + 200);
    std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
    if (*(a1 + 192) == 1)
    {
      v2 = *(a1 + 168);
      if (v2)
      {
        *(a1 + 176) = v2;
        operator delete(v2);
      }
    }

    if (*(a1 + 160) == 1)
    {
      v3 = *(a1 + 136);
      if (v3)
      {
        *(a1 + 144) = v3;
        operator delete(v3);
      }
    }

    if (*(a1 + 128) == 1 && *(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }
  }

  return a1;
}

uint64_t std::vector<CSCppCoreFileRegionInfo>::__init_with_size[abi:ne200100]<CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CSCppCoreFileRegionInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D9790928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<CSCppCoreFileRegionInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x124924924924925)
  {
    std::allocator<CSCppCoreFileRegionInfo>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

CSCppCoreFileRegionInfo *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<CSCppCoreFileRegionInfo>,CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(uint64_t a1, CSCppCoreFileRegionInfo *a2, CSCppCoreFileRegionInfo *a3, CSCppCoreFileRegionInfo *this)
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
      CSCppCoreFileRegionInfo::CSCppCoreFileRegionInfo(v4, v6);
      v6 = (v6 + 224);
      v4 = (v11 + 224);
      v11 = (v11 + 224);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CSCppCoreFileRegionInfo>,CSCppCoreFileRegionInfo*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 120;
      do
      {
        v10 = v6 + 96;
        std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v10);
        if (*(v6 + 88) == 1)
        {
          v7 = *(v6 + 64);
          if (v7)
          {
            *(v6 + 72) = v7;
            operator delete(v7);
          }
        }

        if (*(v6 + 56) == 1)
        {
          v8 = *(v6 + 32);
          if (v8)
          {
            *(v6 + 40) = v8;
            operator delete(v8);
          }
        }

        if (*(v6 + 24) == 1 && *(v6 + 23) < 0)
        {
          operator delete(*v6);
        }

        v9 = (v6 - 104);
        v6 -= 224;
      }

      while (v9 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::vector<std::reference_wrapper<portable_region_info_t const>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<std::reference_wrapper<portable_region_info_t const>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<std::reference_wrapper<portable_region_info_t const>>>::clear[abi:ne200100](uint64_t *a1)
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

char *std::vector<unsigned short>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 1)
  {
    v11 = *a1;
    if (a5 + (&v10[-*a1] >> 1) < 0)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v12 = __dst - v11;
    v13 = v9 - v11;
    if (v13 <= a5 + (&v10[-*a1] >> 1))
    {
      v14 = a5 + (&v10[-*a1] >> 1);
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    if (v15)
    {
      std::allocator<unsigned short>::allocate_at_least[abi:ne200100](a1, v15);
    }

    v33 = 2 * v16;
    v34 = 2 * v16 + 2 * a5;
    v35 = 2 * a5;
    v36 = v33;
    do
    {
      v37 = *v7++;
      *v36++ = v37;
      v35 -= 2;
    }

    while (v35);
    memcpy((v33 + 2 * a5), v5, a1[1] - v5);
    v38 = *a1;
    v39 = v34 + a1[1] - v5;
    a1[1] = v5;
    v40 = v5 - v38;
    v41 = (v33 - (v5 - v38));
    memcpy(v41, v38, v40);
    v42 = *a1;
    *a1 = v41;
    a1[1] = v39;
    a1[2] = 0;
    if (v42)
    {
      operator delete(v42);
    }

    return v33;
  }

  v17 = (v10 - __dst) >> 1;
  if (v17 >= a5)
  {
    v22 = &__dst[2 * a5];
    v23 = &v10[-2 * a5];
    v24 = a1[1];
    while (v23 < v10)
    {
      v25 = *v23;
      v23 += 2;
      *v24++ = v25;
    }

    a1[1] = v24;
    if (v10 != v22)
    {
      memmove(&__dst[2 * a5], __dst, v10 - v22);
    }

    v30 = 2 * a5;
    v31 = v5;
    v32 = v7;
    goto LABEL_35;
  }

  v18 = &__src[v10 - __dst];
  v19 = a1[1];
  v20 = v19;
  while (v18 != a4)
  {
    v21 = *v18;
    v18 += 2;
    *v20 = v21;
    v20 += 2;
    v19 += 2;
  }

  a1[1] = v19;
  if (v17 >= 1)
  {
    v26 = &__dst[2 * a5];
    v27 = &v19[-2 * a5];
    v28 = v19;
    while (v27 < v10)
    {
      v29 = *v27;
      v27 += 2;
      *v28 = v29;
      v28 += 2;
    }

    a1[1] = v28;
    if (v20 != v26)
    {
      memmove(&__dst[2 * a5], __dst, v19 - v26);
    }

    if (v10 != v5)
    {
      v31 = v5;
      v32 = v7;
      v30 = v10 - v5;
LABEL_35:
      memmove(v31, v32, v30);
    }
  }

  return v5;
}

void std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy((a2 + 6), a2[7]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t CSCppSymbolOwnerTimeline::CSCppSymbolOwnerTimeline(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_1F5507FC8;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      v6 = *v4;
      v7 = v4[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        *(&v9 + 1) = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        *(&v9 + 1) = 0;
      }

      *&v9 = v6;
      CSCppSymbolOwnerTimeline::add_symbol_owner(a1, &v9);
      if (*(&v9 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v4 += 2;
    }

    while (v4 != v5);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::clear[abi:ne200100](a2);
  return a1;
}

void sub_1D9791000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void **a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  a12 = (v12 + 80);
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&a12);
  a12 = (v12 + 56);
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::destroy(v13, *(v12 + 16));
  _Unwind_Resume(a1);
}

uint64_t CSCppSymbolOwnerTimeline::add_symbol_owner(void *a1, __int128 *a2)
{
  v4 = *(*a2 + 32);
  v5 = *(*a2 + 40);
  if (v4 == v5)
  {
    goto LABEL_24;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(*a2 + 108);
  do
  {
    if (!CSCppSegmentRange::is_valid_address_query_target(v4, v8))
    {
      goto LABEL_17;
    }

    if (!v6)
    {
      goto LABEL_16;
    }

    v9 = v6 + v7;
    if (v6 + v7 != *v4)
    {
      v11 = *(a2 + 1);
      v19[0] = *a2;
      v19[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      inserted = CSCppSymbolOwnerTimeline::_insertAddressRangeForSymbolOwner(a1, v7, v6, v19);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      if ((inserted & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_16:
      v7 = *v4;
      v6 = *(v4 + 1);
      goto LABEL_17;
    }

    v10 = *(v4 + 1) + v9;
    if (v9 > v10)
    {
      v10 = v6 + v7;
    }

    if (v7 >= v9)
    {
      v7 += v6;
    }

    v6 = v10 - v7;
LABEL_17:
    v4 = (v4 + 32);
  }

  while (v4 != v5);
  if (v6)
  {
    v13 = *(a2 + 1);
    v18[0] = *a2;
    v18[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = CSCppSymbolOwnerTimeline::_insertAddressRangeForSymbolOwner(a1, v7, v6, v18);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if ((v14 & 1) == 0)
    {
LABEL_25:
      v15 = 0;
      v16 = 10;
      goto LABEL_26;
    }
  }

LABEL_24:
  v15 = 1;
  v16 = 7;
LABEL_26:
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100](&a1[v16], a2);
  return v15;
}

void sub_1D97911C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void CSCppSymbolOwnerTimeline::CSCppSymbolOwnerTimeline(CSCppSymbolOwnerTimeline *this, const CSCppSymbolOwnerTimeline *a2)
{
  *this = &unk_1F5507FC8;
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  v4 = (this + 8);
  *(this + 3) = 0;
  *(this + 2) = 0u;
  v5 = (this + 32);
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner>*,std::shared_ptr<CSCppSymbolOwner>*>(this + 56, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 4);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner>*,std::shared_ptr<CSCppSymbolOwner>*>(this + 80, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 4);
  if (this != a2)
  {
    std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__tree_node<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,void *> *,long>>(v4, *(a2 + 1), a2 + 2);
    std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::__assign_with_size[abi:ne200100]<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*>(v5, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 5);
  }
}

void sub_1D97912D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::destroy(v2, *v3);
  _Unwind_Resume(a1);
}

CSCppSymbolOwner *CSCppSymbolOwnerTimeline::symbol_owner_with_address_at_time(CSCppSymbolOwnerTimeline *this, unint64_t a2, unint64_t a3)
{
  result = 0;
  if (a2 == -1 || a3 == 0x8000000000000001)
  {
    return result;
  }

  if (!*(this + 3))
  {
    return 0;
  }

  v6 = a3 - 0x7FFFFFFFFFFFFFFFLL;
  if (a3 - 0x7FFFFFFFFFFFFFFFLL >= 2)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFDLL;
  }

  v8 = (this + 16);
  for (i = *(this + 2); i; i = i[v12])
  {
    v10 = i[4];
    v11 = v10 > a2;
    v12 = v10 <= a2;
    if (v11)
    {
      v8 = i;
    }
  }

  if (v8 == *(this + 1))
  {
    goto LABEL_19;
  }

  v13 = *v8;
  if (*v8)
  {
    do
    {
      v14 = v13;
      v13 = *(v13 + 8);
    }

    while (v13);
  }

  else
  {
    do
    {
      v14 = v8[2];
      v15 = *v14 == v8;
      v8 = v14;
    }

    while (v15);
  }

  if (a2 - *(v14 + 32) >= *(v14 + 40))
  {
LABEL_19:
    if (v6 < 2)
    {
      return 0;
    }

    goto LABEL_20;
  }

  unload_timestamp_range = CSCppSymbolOwner::load_unload_timestamp_range(*(v14 + 48));
  if (v7 - unload_timestamp_range < v17)
  {
    return *(v14 + 48);
  }

  result = 0;
  if (v6 >= 2 && v7 <= *(*(v14 + 48) + 88))
  {
LABEL_20:
    v18 = *(this + 4);
    v19 = *(this + 5);
    if (v18 != v19)
    {
      for (j = v18 + 2; ; j += 4)
      {
        v21 = j - 2;
        if (a2 - *(j - 2) < *(j - 1))
        {
          v22 = CSCppSymbolOwner::load_unload_timestamp_range(*j);
          if (v7 - v22 < v23)
          {
            break;
          }
        }

        if (v21 + 4 == v19)
        {
          return 0;
        }
      }

      return *j;
    }

    return 0;
  }

  return result;
}

uint64_t CSCppSymbolOwnerTimeline::_insertAddressRangeForSymbolOwner(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v116 = *MEMORY[0x1E69E9840];
  v7 = a1 + 2;
  v8 = a1[2];
  v9 = (a1 + 1);
  if (!v8)
  {
    goto LABEL_35;
  }

  v11 = a1 + 2;
  do
  {
    v12 = v8[4];
    v54 = v12 >= a2;
    v13 = v12 < a2;
    if (v54)
    {
      v11 = v8;
    }

    v8 = v8[v13];
  }

  while (v8);
  if (v11 == v7)
  {
    goto LABEL_35;
  }

  v14 = v11[4];
  v15 = a3 + a2;
  if (v14 >= a3 + a2 || (v16 = v11[5], a2 >= v16 + v14))
  {
    v18 = v11[1];
    if (v18)
    {
      do
      {
        v17 = v18;
        v18 = *v18;
      }

      while (v18);
    }

    else
    {
      v19 = v11;
      do
      {
        v17 = v19[2];
        v20 = *v17 == v19;
        v19 = v17;
      }

      while (!v20);
    }

    if (v17 == v7 || (v14 = v17[4], v14 >= v15) || (v16 = v17[5], a2 >= v16 + v14))
    {
      v7 = v11;
      goto LABEL_35;
    }
  }

  else
  {
    v17 = v11;
  }

  v20 = v17 == v7;
  v7 = v11;
  if (v20)
  {
LABEL_35:
    *buf = a2;
    *&buf[8] = a3;
    v38 = *(a4 + 8);
    *&buf[16] = *a4;
    v96 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__emplace_hint_unique_key_args<TRange<Pointer64>,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>(a1 + 1, v7, buf);
    if (v96)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v96);
    }

    v37 = 1;
    goto LABEL_40;
  }

  v91 = v16;
  v21 = v17[6];
  v22 = v17[7];
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  v92 = v22;
  v93 = v21;
  unload_timestamp_range = CSCppSymbolOwner::load_unload_timestamp_range(v21);
  v25 = v24;
  v26 = CSCppSymbolOwner::load_unload_timestamp_range(*a4);
  if (unload_timestamp_range >= v27 + v26 || v26 >= v25 + unload_timestamp_range)
  {
    v41 = *a4;
    v42 = (a1 + 4);
    if (*(v93 + 11) < *(*a4 + 88))
    {
      v43 = v92;
      if (v92)
      {
        atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v44 = a1[5];
      v45 = a1[6];
      if (v44 >= v45)
      {
        v59 = *v42;
        v60 = v44 - *v42;
        v61 = v60 >> 5;
        v62 = (v60 >> 5) + 1;
        if (v62 >> 59)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
        }

        v63 = v45 - v59;
        if (v63 >> 4 > v62)
        {
          v62 = v63 >> 4;
        }

        if (v63 >= 0x7FFFFFFFFFFFFFE0)
        {
          v62 = 0x7FFFFFFFFFFFFFFLL;
        }

        *v97 = a1 + 4;
        if (v62)
        {
          std::allocator<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::allocate_at_least[abi:ne200100](v42, v62);
        }

        v69 = (32 * v61);
        *v69 = v14;
        v69[1] = v91;
        v69[2] = v93;
        v69[3] = v92;
        v46 = 32 * v61 + 32;
        v70 = &v69[-4 * (v60 >> 5)];
        memcpy(v70, v59, v60);
        v71 = a1[4];
        a1[4] = v70;
        a1[5] = v46;
        v72 = a1[6];
        a1[6] = 0;
        *&buf[16] = v71;
        v96 = v72;
        *buf = v71;
        *&buf[8] = v71;
        std::__split_buffer<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::~__split_buffer(buf);
      }

      else
      {
        *v44 = v14;
        v44[1] = v91;
        v46 = (v44 + 4);
        v44[2] = v93;
        v44[3] = v92;
      }

      a1[5] = v46;
      std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::erase(v9, v17);
      *buf = a2;
      *&buf[8] = a3;
      v73 = *(a4 + 8);
      *&buf[16] = *a4;
      v96 = v73;
      if (v73)
      {
        atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__emplace_unique_key_args<TRange<Pointer64>,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>(v9, buf);
      if (v96)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v96);
      }

      v37 = 1;
      if (v92)
      {
        goto LABEL_85;
      }

      goto LABEL_40;
    }

    v94 = (a1 + 4);
    v47 = a1[4];
    v48 = a1[5];
    if (v47 != v48)
    {
      v43 = v92;
      while (1)
      {
        if (*v47 < v15 && a2 < v47[1] + *v47)
        {
          v49 = CSCppSymbolOwner::load_unload_timestamp_range(v47[2]);
          v51 = v50;
          v52 = CSCppSymbolOwner::load_unload_timestamp_range(*a4);
          v54 = v49 >= v53 + v52 || v52 >= v51 + v49;
          if (!v54)
          {
            break;
          }
        }

        v47 += 4;
        if (v47 == v48)
        {
          v41 = *a4;
          goto LABEL_57;
        }
      }

      v78 = *v47;
      v79 = v47[1];
      v80 = (v79 + *v47);
      if (v15 <= v80)
      {
        v81 = v79 + *v47;
      }

      else
      {
        v81 = a3 + a2;
      }

      if (a2 >= v78)
      {
        v82 = *v47;
      }

      else
      {
        v82 = a2;
      }

      v83 = v81 - v82;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v84 = v47[2];
        v85 = v84[11];
        v86 = v84[12];
        v87 = v84[15];
        v88 = *(*a4 + 88);
        v89 = *(*a4 + 96);
        v90 = *(*a4 + 120);
        *buf = 134221058;
        *&buf[4] = v83;
        *&buf[12] = 2048;
        *&buf[14] = v78;
        *&buf[22] = 2048;
        v96 = v80;
        *v97 = 2048;
        *&v97[2] = v79;
        v98 = 2048;
        v99 = v85;
        v100 = 2048;
        v101 = v86;
        v102 = 2080;
        v103 = v87;
        v104 = 2048;
        v105 = a2;
        v106 = 2048;
        v107 = a3 + a2;
        v108 = 2048;
        v109 = a3;
        v110 = 2048;
        v111 = v88;
        v112 = 2048;
        v113 = v89;
        v114 = 2080;
        v115 = v90;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Historical timeline modification failed -- dylibs overlap by 0x%llx:\n    0x%llx-0x%llx [0x%llx] (%llu-%llu) %s\n    0x%llx-0x%llx [0x%llx] (%llu-%llu) %s\n", buf, 0x84u);
        v78 = *v47;
        v79 = v47[1];
        v80 = (v79 + *v47);
      }

      fprintf(*MEMORY[0x1E69E9848], "Historical timeline modification failed -- dylibs overlap by 0x%llx:\n    0x%llx-0x%llx [0x%llx] (%llu-%llu) %s\n    0x%llx-0x%llx [0x%llx] (%llu-%llu) %s\n", v83, v78, v80, v79, *(v47[2] + 88), *(v47[2] + 96), *(v47[2] + 120), a2, a3 + a2, a3, *(*a4 + 88), *(*a4 + 96), *(*a4 + 120));
      v37 = 0;
      if (v92)
      {
        goto LABEL_85;
      }

      goto LABEL_40;
    }

LABEL_57:
    v55 = *(a4 + 8);
    if (v55)
    {
      atomic_fetch_add_explicit((v55 + 8), 1uLL, memory_order_relaxed);
    }

    v56 = a1[5];
    v57 = a1[6];
    if (v56 >= v57)
    {
      v64 = *v94;
      v65 = v56 - *v94;
      v66 = v65 >> 5;
      v67 = (v65 >> 5) + 1;
      if (v67 >> 59)
      {
        std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
      }

      v68 = v57 - v64;
      if (v68 >> 4 > v67)
      {
        v67 = v68 >> 4;
      }

      if (v68 >= 0x7FFFFFFFFFFFFFE0)
      {
        v67 = 0x7FFFFFFFFFFFFFFLL;
      }

      *v97 = a1 + 4;
      if (v67)
      {
        std::allocator<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::allocate_at_least[abi:ne200100](v94, v67);
      }

      v74 = (32 * v66);
      *v74 = a2;
      v74[1] = a3;
      v74[2] = v41;
      v74[3] = v55;
      v58 = 32 * v66 + 32;
      v75 = &v74[-4 * (v65 >> 5)];
      memcpy(v75, v64, v65);
      v76 = a1[4];
      a1[4] = v75;
      a1[5] = v58;
      v77 = a1[6];
      a1[6] = 0;
      *&buf[16] = v76;
      v96 = v77;
      *buf = v76;
      *&buf[8] = v76;
      std::__split_buffer<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::~__split_buffer(buf);
    }

    else
    {
      *v56 = a2;
      *(v56 + 1) = a3;
      v58 = (v56 + 32);
      *(v56 + 2) = v41;
      *(v56 + 3) = v55;
    }

    a1[5] = v58;
    v37 = 1;
  }

  else
  {
    if (v15 <= v91 + v14)
    {
      v28 = v91 + v14;
    }

    else
    {
      v28 = a3 + a2;
    }

    if (a2 >= v14)
    {
      v29 = v14;
    }

    else
    {
      v29 = a2;
    }

    v30 = v28 - v29;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = *(v93 + 11);
      v32 = *(v93 + 12);
      v33 = *(v93 + 15);
      v34 = *(*a4 + 88);
      v35 = *(*a4 + 96);
      v36 = *(*a4 + 120);
      *buf = 134221058;
      *&buf[4] = v30;
      *&buf[12] = 2048;
      *&buf[14] = v14;
      *&buf[22] = 2048;
      v96 = (v91 + v14);
      *v97 = 2048;
      *&v97[2] = v91;
      v98 = 2048;
      v99 = v31;
      v100 = 2048;
      v101 = v32;
      v102 = 2080;
      v103 = v33;
      v104 = 2048;
      v105 = a2;
      v106 = 2048;
      v107 = a3 + a2;
      v108 = 2048;
      v109 = a3;
      v110 = 2048;
      v111 = v34;
      v112 = 2048;
      v113 = v35;
      v114 = 2080;
      v115 = v36;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Timeline modification failed -- dylibs overlap by 0x%llx:\n    0x%llx-0x%llx [0x%llx] (%llu-%llu) %s\n    0x%llx-0x%llx [0x%llx] (%llu-%llu) %s\n", buf, 0x84u);
    }

    fprintf(*MEMORY[0x1E69E9848], "Timeline modification failed -- dylibs overlap by 0x%llx:\n    0x%llx-0x%llx [0x%llx] (%llu-%llu) %s\n    0x%llx-0x%llx [0x%llx] (%llu-%llu) %s\n", v30, v14, v91 + v14, v91, *(v93 + 11), *(v93 + 12), *(v93 + 15), a2, a3 + a2, a3, *(*a4 + 88), *(*a4 + 96), *(*a4 + 120));
    v37 = 0;
  }

  v43 = v92;
  if (v92)
  {
LABEL_85:
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

LABEL_40:
  v39 = *MEMORY[0x1E69E9840];
  return v37;
}

void sub_1D9791B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSCppSegmentRange::is_valid_address_query_target(CSCppSegmentRange *this, __int16 a2)
{
  v4 = *(this + 3);
  v5 = v4;
  if (!v4)
  {
    v5 = *(this + 2);
  }

  result = strncmp(v5, "__PAGEZERO", 0xBuLL);
  if (result)
  {
    if ((a2 & 0x1200) == 0)
    {
      return 1;
    }

    v7 = v4;
    if (!v4)
    {
      v7 = *(this + 2);
    }

    if (!strncmp(v7, "__LINKEDIT", 0xBuLL))
    {
      return 0;
    }

    if (*this)
    {
      return 1;
    }

    if (!v4)
    {
      v4 = *(this + 2);
    }

    return !strncmp(v4, "__TEXT", 7uLL);
  }

  return result;
}

BOOL CSCppSymbolOwnerTimeline::remove_symbol_owner(uint64_t a1, __int128 *a2)
{
  v4 = std::remove[abi:ne200100]<std::__wrap_iter<std::shared_ptr<CSCppSymbolOwner> *>,std::shared_ptr<CSCppSymbolOwner>>(*(a1 + 56), *(a1 + 64), a2);
  v5 = *(a1 + 64);
  if (v5 != v4)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner> *,std::shared_ptr<CSCppSymbolOwner> *,std::shared_ptr<CSCppSymbolOwner> *>(&v25, v4 + 1, *(a1 + 64), v4);
    v7 = v6;
    v8 = *(a1 + 64);
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

    *(a1 + 64) = v7;
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100]((a1 + 80), a2);
    v11 = *a2;
    v10 = *(a2 + 1);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(a1 + 8);
    if (v12 != (a1 + 16))
    {
      do
      {
        if (v12[6] == v11)
        {
          v14 = std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::erase((a1 + 8), v12);
        }

        else
        {
          v13 = v12[1];
          if (v13)
          {
            do
            {
              v14 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v14 = v12[2];
              v15 = *v14 == v12;
              v12 = v14;
            }

            while (!v15);
          }
        }

        v12 = v14;
      }

      while (v14 != (a1 + 16));
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    if (v17 != v16)
    {
      v19 = *a2;
      v18 = *(a2 + 1);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = v16 + 32;
      while (*(v20 - 16) != v19)
      {
        v15 = v20 == v17;
        v20 += 32;
        if (v15)
        {
          v21 = v17;
          goto LABEL_35;
        }
      }

      v21 = v20 - 32;
      if (v20 - 32 != v17)
      {
        while (v20 != v17)
        {
          if (*(v20 + 16) != v19)
          {
            *v21 = *v20;
            v22 = *(v20 + 16);
            *(v20 + 16) = 0;
            *(v20 + 24) = 0;
            v23 = *(v21 + 24);
            *(v21 + 16) = v22;
            if (v23)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v23);
            }

            v21 += 32;
          }

          v20 += 32;
        }
      }

LABEL_35:
      std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::erase(a1 + 32, v21, *(a1 + 40));
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }
    }
  }

  return v5 != v4;
}

void sub_1D9791EA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::remove[abi:ne200100]<std::__wrap_iter<std::shared_ptr<CSCppSymbolOwner> *>,std::shared_ptr<CSCppSymbolOwner>>(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (*v3 != *a3)
    {
      v3 += 2;
      if (v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 2; i != a2; i += 2)
      {
        v8 = *i;
        if (*i != *a3)
        {
          v9 = i[1];
          *i = 0;
          i[1] = 0;
          v10 = v3[1];
          *v3 = v8;
          v3[1] = v9;
          if (v10)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }

          v3 += 2;
        }
      }
    }
  }

  return v3;
}

uint64_t std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>> *,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>> *,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>> *>(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        v7 -= 32;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void CSCppSymbolOwnerTimeline::~CSCppSymbolOwnerTimeline(CSCppSymbolOwnerTimeline *this)
{
  CSCppSymbolOwnerTimeline::~CSCppSymbolOwnerTimeline(this);

  JUMPOUT(0x1DA736760);
}

{
  *this = &unk_1F5507FC8;
  v2 = (this + 80);
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 56);
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 32);
  std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::destroy(this + 8, *(this + 2));
}

void std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::__assign_with_size[abi:ne200100]<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 5)
  {
    std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::__vdeallocate(a1);
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

      std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - v8;
  if (a4 <= (v12 - v8) >> 5)
  {
    if (a2 != a3)
    {
      do
      {
        std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>::operator=[abi:ne200100](v8, v6);
        v6 += 32;
        v8 += 32;
      }

      while (v6 != a3);
      v12 = a1[1];
    }

    while (v12 != v8)
    {
      v15 = *(v12 - 8);
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      v12 -= 32;
    }

    a1[1] = v8;
  }

  else
  {
    if (v12 == v8)
    {
      v14 = a2;
    }

    else
    {
      v14 = a2 + v13;
      do
      {
        std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>::operator=[abi:ne200100](v8, v6);
        v6 += 32;
        v8 += 32;
        v13 -= 32;
      }

      while (v13);
      v12 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*>(a1, v14, a3, v12);
  }
}

void std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::allocator<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      *v4 = *a2;
      v5 = *(a2 + 24);
      *(v4 + 16) = *(a2 + 16);
      *(v4 + 24) = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 32;
      v4 += 32;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 32;
  }
}

uint64_t std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

void std::allocator<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 32;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 32;
    }
  }
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner> *,std::shared_ptr<CSCppSymbolOwner> *,std::shared_ptr<CSCppSymbolOwner> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>> *,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>> *,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      v7 = *(v5 + 16);
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      v8 = *(a4 + 24);
      *(a4 + 16) = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v5 += 32;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::destroy(a1, a2[1]);
    v4 = a2[7];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

uint64_t **std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__tree_node<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v15[0] = v8 + 4;
          v15[1] = v8 + 6;
          std::pair<TRange<Pointer64> &,std::shared_ptr<CSCppSymbolOwner> &>::operator=[abi:ne200100]<TRange<Pointer64> const,std::shared_ptr<CSCppSymbolOwner>,0>(v15, (v9 + 4));
          std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__node_insert_multi(v5, v14);
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          v8 = v14;
          if (v14)
          {
            v11 = a2 == a3;
          }

          else
          {
            v11 = 1;
          }

          v9 = a2;
        }

        while (!v11);
      }
    }

    result = std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__emplace_multi<std::pair<TRange<Pointer64> const,std::shared_ptr<CSCppSymbolOwner>> const&>();
  }

  return result;
}

void sub_1D9792780(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__node_insert_multi(uint64_t **a1, uint64_t *a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (a2[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<TRange<Pointer64>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

uint64_t std::pair<TRange<Pointer64> &,std::shared_ptr<CSCppSymbolOwner> &>::operator=[abi:ne200100]<TRange<Pointer64> const,std::shared_ptr<CSCppSymbolOwner>,0>(uint64_t a1, uint64_t a2)
{
  **a1 = *a2;
  v3 = *(a1 + 8);
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = v3[1];
  *v3 = v5;
  v3[1] = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

void *std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__emplace_hint_unique_key_args<TRange<Pointer64>,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>(void *a1, void *a2, unint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__find_equal<TRange<Pointer64>>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__find_equal<TRange<Pointer64>>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<TRangeValue<Pointer64,unsigned char *>>::__remove_node_pointer(a1, a2);
  v4 = a2[7];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  operator delete(a2);
  return v3;
}

void *std::__tree<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::__map_value_compare<TRange<Pointer64>,std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>,std::less<TRange<Pointer64>>,true>,std::allocator<std::__value_type<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>>::__emplace_unique_key_args<TRange<Pointer64>,std::pair<TRange<Pointer64>,std::shared_ptr<CSCppSymbolOwner>>>(uint64_t a1, unint64_t *a2)
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

uint64_t CSSymbolicatorCreateWithCoreFilePathAndFlags(unint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v264 = *MEMORY[0x1E69E9840];
  CSCppFileMemory::CSCppFileMemory(v208, a1, 0);
  v11 = (*(v208[0] + 32))(v208, 0, 28);
  if (!v11 || *v11 != -17958194)
  {
    CSCppFileMemory::CSCppFileMemory(&v242, v10, 0);
    v43 = (*(v242 + 32))(&v242, 0, 32);
    if (!v43 || *v43 != -17958193)
    {
      v75 = 0;
      goto LABEL_369;
    }

    v44 = v43[5];
    CSCppFileMemory::CSCppFileMemory(v220, v10, 0);
    v219 = v220;
    v45 = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at(&v219, 0, 1);
    if (!v45 || (v199 = v45, v45[3] != 4))
    {
      v75 = 0;
      goto LABEL_368;
    }

    v216 = 0u;
    v217 = 0u;
    v218 = 1065353216;
    if (a4)
    {
      v46 = (a3 + 8);
      do
      {
        v47 = *v46;
        v46 += 2;
        *&v255 = (v47 & 0xFFFFFFFFFFFFFFFCLL) + 16;
        std::__hash_table<std::__hash_value_type<UUID,CSCppSymbolOwner *>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,CSCppSymbolOwner *>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,CSCppSymbolOwner *>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,CSCppSymbolOwner *>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(&v216, v255)[4] = v47 & 0xFFFFFFFFFFFFFFFCLL;
        --a4;
      }

      while (a4);
    }

    mapped_memory_cache_for_core_file_without_exclave_metadata = create_mapped_memory_cache_for_core_file_without_exclave_metadata(v10, "CSSymbolicator for core file");
    if (!mapped_memory_cache_for_core_file_without_exclave_metadata)
    {
      v75 = 0;
      goto LABEL_367;
    }

    CSCppCoreFileMemory::CSCppCoreFileMemory(v248, mapped_memory_cache_for_core_file_without_exclave_metadata);
    release_core_file_mapped_memory_cache(mapped_memory_cache_for_core_file_without_exclave_metadata);
    *&v255 = 0;
    unretained_reconstructed_core_file_memory = CSCppCoreFileMemory::get_unretained_reconstructed_core_file_memory(v248);
    if (!mapped_memory_core_file_get_dyld_all_image_infos_addr(unretained_reconstructed_core_file_memory, &v255))
    {
      LOBYTE(__p) = 0;
      v215 = 0;
      v127 = (*(*&v248[0] + 32))(v248, v255, 368);
      if (v128 > 0x16F)
      {
        v129 = v10;
        v130 = *v127;
        v131 = *(v127 + 4);
        v132 = *(v127 + 8);
        v133 = *(v127 + 32);
        v134 = *(v127 + 136);
        v260 = *(v127 + 120);
        v261 = v134;
        v262 = *(v127 + 152);
        v135 = *(v127 + 176);
        v263 = *(v127 + 168);
        v136 = *(v127 + 72);
        v256 = *(v127 + 56);
        v257 = v136;
        v137 = *(v127 + 104);
        v258 = *(v127 + 88);
        v259 = v137;
        v138 = *(v127 + 40);
        v139 = *(v127 + 192);
        v140 = *(v127 + 320);
        v141 = *(v127 + 344);
        v254 = *(v127 + 352);
        v255 = v138;
        if (v130 > 0x10 && v132)
        {
          v207 = v140;
          v240 = 0;
          __src = 0;
          v241 = 0;
          v142 = (*(*&v248[0] + 32))(v248, v132, 24 * v131);
          if (v142)
          {
            if (v131)
            {
              v143 = v240;
              do
              {
                if (v143 >= v241)
                {
                  v145 = 0xAAAAAAAAAAAAAAABLL * ((v143 - __src) >> 3);
                  v146 = v145 + 1;
                  if (v145 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
                  }

                  if (0x5555555555555556 * ((v241 - __src) >> 3) > v146)
                  {
                    v146 = 0x5555555555555556 * ((v241 - __src) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v241 - __src) >> 3) >= 0x555555555555555)
                  {
                    v147 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v147 = v146;
                  }

                  if (v147)
                  {
                    std::allocator<TRangeValue<Pointer64,unsigned long long>>::allocate_at_least[abi:ne200100](&__src, v147);
                  }

                  v148 = 8 * ((v143 - __src) >> 3);
                  v149 = *v142;
                  *(v148 + 16) = *(v142 + 16);
                  *v148 = v149;
                  v143 = (24 * v145 + 24);
                  v150 = (24 * v145 - (v240 - __src));
                  memcpy((v148 - (v240 - __src)), __src, v240 - __src);
                  v151 = __src;
                  __src = v150;
                  v240 = v143;
                  v241 = 0;
                  if (v151)
                  {
                    operator delete(v151);
                  }
                }

                else
                {
                  v144 = *v142;
                  *(v143 + 2) = *(v142 + 16);
                  *v143 = v144;
                  v143 += 24;
                }

                v240 = v143;
                v142 += 24;
                --v131;
              }

              while (v131);
            }

            *&v235 = 0;
            *(&v235 + 1) = &v235;
            *&v236 = 0x4002000000;
            *(&v236 + 1) = __Block_byref_object_copy__59;
            v237 = __Block_byref_object_dispose__60;
            memset(v238, 0, sizeof(v238));
            LOBYTE(v249) = 0;
            BYTE8(v250) = 0;
            if (v207 <= 0x18 && ((1 << v207) & 0x1550000) != 0)
            {
              std::optional<std::string>::operator=[abi:ne200100]<char const(&)[14],void>(&v249, "/usr/lib/dyld");
            }

            create_symbol_owner<SizeAndEndianness<Pointer64,LittleEndian>>(v248, v139, v133, &v249, &v229);
            v10 = v129;
            v152 = v229;
            if (v229)
            {
              std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100]((*(&v235 + 1) + 40), &v229);
            }

            else
            {
              LOBYTE(v209[0]) = 0;
              v212 = 0;
            }

            if (*(&v229 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v229 + 1));
            }

            if (BYTE8(v250) == 1 && SBYTE7(v250) < 0)
            {
              operator delete(v249);
            }

            if (v152)
            {
              *&v229 = 0;
              *(&v229 + 1) = &v229;
              *&v230 = 0x5002000000;
              *(&v230 + 1) = __Block_byref_object_copy__62;
              v231 = __Block_byref_object_dispose__63;
              v232 = 0u;
              v233 = 0u;
              v234 = 1065353216;
              v225 = 0;
              v226 = &v225;
              v227 = 0x2000000000;
              LOBYTE(v228) = 1;
              v171 = CSCppCoreFileMemory::get_unretained_reconstructed_core_file_memory(v248);
              *&v249 = MEMORY[0x1E69E9820];
              *(&v249 + 1) = 1174405120;
              *&v250 = ___ZL58get_fake_task_and_symbol_owners_using_dyld_all_image_infosI17SizeAndEndiannessI9Pointer6412LittleEndianEENSt3__18optionalINS4_4pairINS4_10unique_ptrI9CSCppTaskNS4_14default_deleteIS8_EEEENS4_6vectorINS4_10shared_ptrI16CSCppSymbolOwnerEENS4_9allocatorISF_EEEEEEEER19CSCppCoreFileMemoryy_block_invoke;
              *(&v250 + 1) = &unk_1F5508028;
              memset(&v252[8], 0, 24);
              std::vector<CS_dyld_image_info_arch_specific<Pointer64>>::__init_with_size[abi:ne200100]<CS_dyld_image_info_arch_specific<Pointer64>*,CS_dyld_image_info_arch_specific<Pointer64>*>(&v252[8], __src, v240, 0xAAAAAAAAAAAAAAABLL * ((v240 - __src) >> 3));
              *&v251 = &v229;
              *(&v251 + 1) = &v225;
              v253 = v248;
              *v252 = &v235;
              enumerate_mapped_memory_core_file_dumped_regions(v171, &v249);
              if (v226[3])
              {
                operator new();
              }

              LOBYTE(v209[0]) = 0;
              v212 = 0;
              if (*&v252[8])
              {
                *&v252[16] = *&v252[8];
                operator delete(*&v252[8]);
              }

              _Block_object_dispose(&v225, 8);
              _Block_object_dispose(&v229, 8);
              std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(&v232);
            }

            _Block_object_dispose(&v235, 8);
            *&v229 = v238;
            std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v229);
          }

          else
          {
            LOBYTE(v209[0]) = 0;
            v212 = 0;
            v10 = v129;
          }

          if (__src)
          {
            v240 = __src;
            operator delete(__src);
          }
        }

        else
        {
          LOBYTE(v209[0]) = 0;
          v212 = 0;
          v10 = v129;
        }
      }

      else
      {
        LOBYTE(v209[0]) = 0;
        v212 = 0;
      }

      std::__optional_storage_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>>(&__p, v209);
      if (v212 != 1)
      {
        goto LABEL_343;
      }

      *&v255 = &v209[1];
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v255);
      v172 = v209[0];
      v209[0] = 0;
      if (!v172)
      {
        goto LABEL_343;
      }

      goto LABEL_342;
    }

    v50 = *(v199 + 20);
    LODWORD(v229) = *(v199 + 16);
    *(&v229 + 1) = v199;
    *&v230 = v199 + 32 + v50;
    *(&v230 + 1) = v199 + 32;
    while (2)
    {
      v51 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v229);
      v52 = v51;
      if (!v51)
      {
        goto LABEL_146;
      }

      if (*v51 != 49 || strncmp((v51 + 8), "all image infos", 0x10uLL))
      {
        v53 = 2;
        goto LABEL_80;
      }

      v4 = v4 & 0xFFFFFFFFFFFFFF00 | 1;
      read_type_from_raw_core_file_bytes<CS_all_image_infos_header>(v10, *(v52 + 24), *(v52 + 32), v4, &v235);
      v53 = 1;
      if (BYTE8(v236) != 1 || v235 != 1)
      {
        v5 = 0;
        v195 = 0;
        goto LABEL_80;
      }

      v203 = DWORD1(v235);
      if (!DWORD1(v235))
      {
        v53 = 3;
        goto LABEL_80;
      }

      v188 = v5;
      v190 = v4;
      v205 = v10;
      v54 = 0;
      v201 = *(&v235 + 1);
      v55 = v236;
      v6 = v6 & 0xFFFFFFFFFFFFFF00 | 1;
      v197 = a2;
      while (1)
      {
        read_type_from_raw_core_file_bytes<CS_image_entry>(v205, v201 + (v55 * v54), v55, v6, &v249);
        v56 = v252[0];
        if (v252[0] != 1)
        {
          v5 = 0;
          goto LABEL_130;
        }

        v57 = v249;
        if (v249 != -1)
        {
          break;
        }

LABEL_121:
        if (++v54 == v203)
        {
          v53 = 3;
          v10 = v205;
          v5 = v188;
          v4 = v190;
          goto LABEL_80;
        }
      }

      v58 = CSCppFileMemory::CSCppFileMemory(&v255, v205, v249);
      read_path_from_offset_in_cpp_memory(v58, v57, &__p);
      if (BYTE8(v214) != 1)
      {
LABEL_120:
        CSCppFileMemory::~CSCppFileMemory(&v255);
        goto LABEL_121;
      }

      v59 = v6;
      std::string::basic_string[abi:ne200100]<0>(v209, "/dyld");
      v60 = SHIBYTE(v210);
      if (v210 >= 0)
      {
        v61 = HIBYTE(v210);
      }

      else
      {
        v61 = v209[1];
      }

      v62 = BYTE7(v214);
      if ((SBYTE7(v214) & 0x8000000000000000) != 0)
      {
        v64 = *(&__p + 1);
        if (v61 <= *(&__p + 1))
        {
          p_p = __p;
LABEL_99:
          v66 = v64 - v61;
          if (v210 >= 0)
          {
            v67 = v209;
          }

          else
          {
            v67 = v209[0];
          }

          if (v61)
          {
            v194 = SHIBYTE(v210);
            v68 = (p_p + v64);
            v192 = p_p;
            v69 = (p_p + v66);
            v70 = *v67;
            v71 = v61;
            do
            {
              v72 = v71 - v61;
              if (v72 == -1)
              {
                break;
              }

              v73 = memchr(v69, v70, v72 + 1);
              if (!v73)
              {
                break;
              }

              v74 = v73;
              if (!memcmp(v73, v67, v61))
              {
                goto LABEL_109;
              }

              v69 = v74 + 1;
              v71 = v68 - (v74 + 1);
            }

            while (v71 >= v61);
            v74 = v68;
LABEL_109:
            v60 = v194;
            if (v74 == v68)
            {
              v66 = -1;
            }

            else
            {
              v66 = &v74[-v192];
            }

            a2 = v197;
          }

          else
          {
            a2 = v197;
          }

          v6 = v59;
          v65 = v66 != -1;
          if ((v60 & 0x80000000) == 0)
          {
            goto LABEL_116;
          }

          break;
        }
      }

      else if (v61 <= SBYTE7(v214))
      {
        p_p = &__p;
        v64 = SBYTE7(v214);
        goto LABEL_99;
      }

      v65 = 0;
      v6 = v59;
      if ((SHIBYTE(v210) & 0x80000000) == 0)
      {
LABEL_116:
        if (v65)
        {
          v5 = *(&v250 + 1);
          if ((BYTE8(v214) & 1) != 0 && v62 < 0)
          {
            operator delete(__p);
          }

          v186 = v5 >> 8;
          CSCppFileMemory::~CSCppFileMemory(&v255);
LABEL_130:
          v10 = v205;
          v4 = v190;
          v53 = 1;
          v195 = v56;
LABEL_80:
          if (v53 != 2)
          {
            if (v53 != 3 && (v195 & 1) != 0)
            {
              v81 = v5 | (v186 << 8);
              goto LABEL_179;
            }

LABEL_146:
            *&v255 = 0;
            v82 = CSCppCoreFileMemory::get_unretained_reconstructed_core_file_memory(v248);
            if (!mapped_memory_core_file_get_dyld_all_image_infos_addr(v82, &v255))
            {
              v81 = v255;
              goto LABEL_179;
            }

            address_from_main_bin_spec_lcnote_with_matching = get_address_from_main_bin_spec_lcnote_with_matching_type<SizeAndEndianness<Pointer64,LittleEndian>>(v199, v10, 1);
            if (v84)
            {
              v85 = address_from_main_bin_spec_lcnote_with_matching;
LABEL_259:
              LOBYTE(__p) = 0;
              v215 = 0;
              v229 = 0uLL;
              *&v230 = 0;
              create_kernel_core_symbol_owner_at_vmaddr<SizeAndEndianness<Pointer64,LittleEndian>>(v248, v85, &v216, v209);
              if (v209[0])
              {
                std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100](&v229, v209);
                if (v209[1])
                {
                  atomic_fetch_add_explicit(v209[1] + 1, 1uLL, memory_order_relaxed);
                }

                std::allocate_shared[abi:ne200100]<CSCppSymbolOwner,std::allocator<CSCppSymbolOwner>,CSCppSymbolOwner&,0>();
              }

              LOBYTE(v249) = 0;
              LOBYTE(v251) = 0;
              if (v209[1])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v209[1]);
              }

              *&v255 = &v229;
              std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v255);
              std::__optional_storage_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>>(&__p, &v249);
              if (v251 == 1)
              {
                *&v255 = &v249 + 8;
                std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v255);
                v154 = v249;
                *&v249 = 0;
                if (v154)
                {
                  (*(*v154 + 8))(v154);
                }
              }

              v153 = 1;
LABEL_344:
              if (v215 == 1)
              {
                v173 = __p;
                __p = 0uLL;
                v229 = v173;
                v230 = v214;
                v214 = 0uLL;
                if (v153)
                {
                  v174 = v10;
                  v175 = *(v199 + 20);
                  LODWORD(v249) = *(v199 + 16);
                  *(&v249 + 1) = v199;
                  *&v250 = v199 + 32 + v175;
                  *(&v250 + 1) = v199 + 32;
                  for (i = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v249); i; i = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v249))
                  {
                    if (*i == 49 && !strncmp((i + 8), "load binary", 0x10uLL))
                    {
                      v10 = v10 & 0xFFFFFFFFFFFFFF00 | 1;
                      read_type_from_raw_core_file_bytes<CS_load_binary_note>(v174, *(i + 24), *(i + 32), v10, &v255);
                      if (BYTE4(v259) == 1 && *(&v256 + 4) && (!(DWORD1(v257) ^ 0x6D747073 | BYTE8(v257)) || DWORD1(v257) == 7174260))
                      {
                        create_kernel_core_symbol_owner_at_vmaddr<SizeAndEndianness<Pointer64,LittleEndian>>(v248, *(&v256 + 4), &v216, &v235);
                        if (v235)
                        {
                          std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100](&v229 + 1, &v235);
                        }

                        if (*(&v235 + 1))
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v235 + 1));
                        }
                      }
                    }
                  }
                }

                CSCppCoreFileMemory::clear_unretained_reconstructed_core_file_memory(v248);
                v177 = v229;
                *&v229 = 0;
                *&v235 = v177;
                v75 = CSSymbolicatorCreateWithSymbolOwnersAndCSCppTask(&v229 + 1);
                v179 = v178;
                v180 = v235;
                *&v235 = 0;
                if (v180)
                {
                  (*(*v180 + 8))(v180);
                }

                v181 = CSCppCoreFileMemory::get_unretained_reconstructed_core_file_memory(v248);
                release_core_file_mapped_memory_cache(*((v179 & 0xFFFFFFFFFFFFFFFCLL) + 144));
                *((v179 & 0xFFFFFFFFFFFFFFFCLL) + 144) = retain_mapped_memory_cache(v181);
                *&v255 = MEMORY[0x1E69E9820];
                *(&v255 + 1) = 0x40000000;
                *&v256 = ___ZL53CSSymbolicatorCreateWithCoreFileAndFlags_ArchSpecificI17SizeAndEndiannessI9Pointer6412LittleEndianEE10_CSTypeRefPKcjjPS4_m_block_invoke;
                *(&v256 + 1) = &__block_descriptor_tmp_71;
                *&v257 = v75;
                *(&v257 + 1) = v179;
                CSSymbolicatorApplyMutableContextBlock(v75, v179, &v255);
                *&v249 = &v229 + 8;
                std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v249);
                v182 = v229;
                *&v229 = 0;
                if (v182)
                {
                  (*(*v182 + 8))(v182);
                }

                if (v215)
                {
                  *&v249 = &__p + 8;
                  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v249);
                  v183 = __p;
                  *&__p = 0;
                  if (v183)
                  {
                    (*(*v183 + 8))(v183);
                  }
                }
              }

              else
              {
                v75 = 0;
              }

              CSCppCoreFileMemory::~CSCppCoreFileMemory(v248);
LABEL_367:
              std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(&v216);
LABEL_368:
              CSCppFileMemory::~CSCppFileMemory(v220);
LABEL_369:
              v170 = &v242;
              goto LABEL_370;
            }

            for (j = 0; j != 7; ++j)
            {
              v94 = (*(*&v248[0] + 32))(v248, qword_1D97E42A0[j] - 16, 40);
              if (v95 >= 0x28)
              {
                v85 = v94[2];
                v96 = *v94 == 0x2068736966746143 || *v94 == 0x20206E656B61724BLL;
                if (v96 && v85 != 0)
                {
                  goto LABEL_259;
                }
              }
            }

            *&v255 = 0;
            *(&v255 + 1) = &v255;
            *&v256 = 0x3802000000;
            *(&v256 + 1) = __Block_byref_object_copy__9;
            *&v257 = __Block_byref_object_dispose__9;
            BYTE8(v257) = 0;
            LOBYTE(v258) = 0;
            v98 = CSCppCoreFileMemory::get_unretained_reconstructed_core_file_memory(v248);
            *&v249 = MEMORY[0x1E69E9820];
            *(&v249 + 1) = 0x40000000;
            *&v250 = ___ZL51get_dyld_vmaddr_from_brute_force_search_for_headersI17SizeAndEndiannessI9Pointer6412LittleEndianEENSt3__18optionalIyEER19CSCppCoreFileMemory_block_invoke;
            *(&v250 + 1) = &unk_1E8584400;
            *(&v251 + 1) = v248;
            *&v251 = &v255;
            enumerate_mapped_memory_core_file_dumped_regions(v98, &v249);
            v81 = *(*(&v255 + 1) + 40);
            v99 = *(*(&v255 + 1) + 48);
            _Block_object_dispose(&v255, 8);
            if (v99)
            {
LABEL_179:
              LOBYTE(__p) = 0;
              v215 = 0;
              *&v229 = 0;
              if (!read_mach_header_and_cmds_from_cscppmemory<SizeAndEndianness<Pointer64,LittleEndian>>(v248, v81))
              {
                TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::symbol_owner(v229);
              }

              if (v229)
              {
                (*(*v229 + 8))(v229);
              }

              v153 = 0;
              goto LABEL_344;
            }

            v155 = get_address_from_main_bin_spec_lcnote_with_matching_type<SizeAndEndianness<Pointer64,LittleEndian>>(v199, v10, 3);
            LOBYTE(__p) = 0;
            v215 = 0;
            if ((v156 & 1) == 0)
            {
              goto LABEL_343;
            }

            LOBYTE(v249) = 0;
            BYTE8(v250) = 0;
            create_symbol_owner<SizeAndEndianness<Pointer64,LittleEndian>>(v248, 0, v155, &v249, &v235);
            if (BYTE8(v250) == 1 && SBYTE7(v250) < 0)
            {
              operator delete(v249);
            }

            if (v235)
            {
              v249 = v235;
              if (*(&v235 + 1))
              {
                atomic_fetch_add_explicit((*(&v235 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v229 = 0uLL;
              *&v230 = 0;
              std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner> const*,std::shared_ptr<CSCppSymbolOwner> const*>(&v229, &v249, &v250, 1uLL);
              if (*(&v249 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v249 + 1));
              }

              operator new();
            }

            LOBYTE(v255) = 0;
            LOBYTE(v257) = 0;
            if (*(&v235 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v235 + 1));
            }

            std::__optional_storage_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>>(&__p, &v255);
            if (v257 != 1 || (*&v249 = &v255 + 8, std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v249), v172 = v255, *&v255 = 0, !v172))
            {
LABEL_343:
              v153 = 0;
              goto LABEL_344;
            }

LABEL_342:
            (*(*v172 + 8))(v172);
            goto LABEL_343;
          }

          continue;
        }

        if ((BYTE8(v214) & 1) != 0 && v62 < 0)
        {
          operator delete(__p);
        }

        goto LABEL_120;
      }

      break;
    }

    operator delete(v209[0]);
    v62 = BYTE7(v214);
    goto LABEL_116;
  }

  v12 = v11[5];
  CSCppFileMemory::CSCppFileMemory(v220, v10, 0);
  v224 = v220;
  v13 = TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::macho_header_at(&v224, 0, 1);
  if (!v13 || (v198 = v13, v13[3] != 4))
  {
    v75 = 0;
    goto LABEL_324;
  }

  v235 = 0u;
  v236 = 0u;
  LODWORD(v237) = 1065353216;
  if (a4)
  {
    v14 = (a3 + 8);
    do
    {
      v15 = *v14;
      v14 += 2;
      *&v255 = (v15 & 0xFFFFFFFFFFFFFFFCLL) + 16;
      std::__hash_table<std::__hash_value_type<UUID,CSCppSymbolOwner *>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,CSCppSymbolOwner *>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,CSCppSymbolOwner *>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,CSCppSymbolOwner *>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(&v235, v255)[4] = v15 & 0xFFFFFFFFFFFFFFFCLL;
      --a4;
    }

    while (a4);
  }

  v16 = create_mapped_memory_cache_for_core_file_without_exclave_metadata(v10, "CSSymbolicator for core file");
  if (!v16)
  {
    v75 = 0;
    goto LABEL_323;
  }

  CSCppCoreFileMemory::CSCppCoreFileMemory(&__src, v16);
  release_core_file_mapped_memory_cache(v16);
  *&v255 = 0;
  v17 = CSCppCoreFileMemory::get_unretained_reconstructed_core_file_memory(&__src);
  if (!mapped_memory_core_file_get_dyld_all_image_infos_addr(v17, &v255))
  {
    LOBYTE(v216) = 0;
    LOBYTE(v218) = 0;
    v100 = (*(__src + 4))(&__src, v255, 224);
    if (v101 > 0xDF)
    {
      v102 = v10;
      v103 = *v100;
      v104 = *(v100 + 4);
      v105 = *(v100 + 8);
      v106 = *(v100 + 20);
      v107 = *(v100 + 56);
      v250 = *(v100 + 40);
      v251 = v107;
      *v252 = *(v100 + 72);
      *&v252[12] = *(v100 + 84);
      v249 = *(v100 + 24);
      v108 = *(v100 + 100);
      v109 = *(v100 + 112);
      v110 = *(v100 + 176);
      v111 = *(v100 + 200);
      v248[0] = *(v100 + 204);
      if (v103 > 0x10 && v105)
      {
        v206 = v110;
        v221 = 0;
        v222 = 0;
        v223 = 0;
        v112 = (*(__src + 4))(&__src, v105, 12 * v104);
        if (v112)
        {
          if (v104)
          {
            v113 = v222;
            do
            {
              if (v113 >= v223)
              {
                v115 = 0xAAAAAAAAAAAAAAABLL * ((v113 - v221) >> 2);
                v116 = v115 + 1;
                if (v115 + 1 > 0x1555555555555555)
                {
                  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
                }

                if (0x5555555555555556 * ((v223 - v221) >> 2) > v116)
                {
                  v116 = 0x5555555555555556 * ((v223 - v221) >> 2);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v223 - v221) >> 2) >= 0xAAAAAAAAAAAAAAALL)
                {
                  v117 = 0x1555555555555555;
                }

                else
                {
                  v117 = v116;
                }

                if (v117)
                {
                  std::allocator<TRangeValue<Pointer32,unsigned int>>::allocate_at_least[abi:ne200100](&v221, v117);
                }

                v118 = 4 * ((v113 - v221) >> 2);
                v119 = *v112;
                *(v118 + 8) = *(v112 + 8);
                *v118 = v119;
                v113 = (12 * v115 + 12);
                v120 = (12 * v115 - (v222 - v221));
                memcpy((v118 - (v222 - v221)), v221, v222 - v221);
                v121 = v221;
                v221 = v120;
                v222 = v113;
                v223 = 0;
                if (v121)
                {
                  operator delete(v121);
                }
              }

              else
              {
                v114 = *v112;
                *(v113 + 2) = *(v112 + 8);
                *v113 = v114;
                v113 += 12;
              }

              v222 = v113;
              v112 += 12;
              --v104;
            }

            while (v104);
          }

          *&v229 = 0;
          *(&v229 + 1) = &v229;
          *&v230 = 0x4002000000;
          *(&v230 + 1) = __Block_byref_object_copy__59;
          v231 = __Block_byref_object_dispose__60;
          v232 = 0uLL;
          *&v233 = 0;
          LOBYTE(v255) = 0;
          BYTE8(v256) = 0;
          if (v206 <= 0x18 && ((1 << v206) & 0x1550000) != 0)
          {
            std::optional<std::string>::operator=[abi:ne200100]<char const(&)[14],void>(&v255, "/usr/lib/dyld");
          }

          create_symbol_owner<SizeAndEndianness<Pointer32,LittleEndian>>(&__src, v109, v106, &v255, &v242);
          v10 = v102;
          v122 = v242;
          if (v242)
          {
            std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100]((*(&v229 + 1) + 40), &v242);
          }

          else
          {
            LOBYTE(__p) = 0;
            v215 = 0;
          }

          if (*(&v242 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v242 + 1));
          }

          if (BYTE8(v256) == 1 && SBYTE7(v256) < 0)
          {
            operator delete(v255);
          }

          if (v122)
          {
            *&v242 = 0;
            *(&v242 + 1) = &v242;
            v243 = 0x5002000000;
            v244 = __Block_byref_object_copy__62;
            v245 = __Block_byref_object_dispose__63;
            memset(v246, 0, sizeof(v246));
            v247 = 1065353216;
            v209[0] = 0;
            v209[1] = v209;
            v210 = 0x2000000000;
            v211 = 1;
            v157 = CSCppCoreFileMemory::get_unretained_reconstructed_core_file_memory(&__src);
            *&v255 = MEMORY[0x1E69E9820];
            *(&v255 + 1) = 1174405120;
            *&v256 = ___ZL58get_fake_task_and_symbol_owners_using_dyld_all_image_infosI17SizeAndEndiannessI9Pointer3212LittleEndianEENSt3__18optionalINS4_4pairINS4_10unique_ptrI9CSCppTaskNS4_14default_deleteIS8_EEEENS4_6vectorINS4_10shared_ptrI16CSCppSymbolOwnerEENS4_9allocatorISF_EEEEEEEER19CSCppCoreFileMemoryy_block_invoke;
            *(&v256 + 1) = &unk_1F5507FF0;
            v259 = 0uLL;
            *(&v258 + 1) = 0;
            std::vector<CS_dyld_image_info_arch_specific<Pointer32>>::__init_with_size[abi:ne200100]<CS_dyld_image_info_arch_specific<Pointer32>*,CS_dyld_image_info_arch_specific<Pointer32>*>(&v258 + 8, v221, v222, 0xAAAAAAAAAAAAAAABLL * ((v222 - v221) >> 2));
            *&v257 = &v242;
            *(&v257 + 1) = v209;
            *&v260 = &__src;
            *&v258 = &v229;
            enumerate_mapped_memory_core_file_dumped_regions(v157, &v255);
            if (*(v209[1] + 24))
            {
              operator new();
            }

            LOBYTE(__p) = 0;
            v215 = 0;
            if (*(&v258 + 1))
            {
              *&v259 = *(&v258 + 1);
              operator delete(*(&v258 + 1));
            }

            _Block_object_dispose(v209, 8);
            _Block_object_dispose(&v242, 8);
            std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(v246);
          }

          _Block_object_dispose(&v229, 8);
          *&v242 = &v232;
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v242);
        }

        else
        {
          LOBYTE(__p) = 0;
          v215 = 0;
          v10 = v102;
        }

        if (v221)
        {
          v222 = v221;
          operator delete(v221);
        }
      }

      else
      {
        LOBYTE(__p) = 0;
        v215 = 0;
        v10 = v102;
      }
    }

    else
    {
      LOBYTE(__p) = 0;
      v215 = 0;
    }

    std::__optional_storage_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>>(&v216, &__p);
    if (v215 == 1)
    {
      *&v255 = &__p + 8;
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v255);
      v158 = __p;
      *&__p = 0;
      if (v158)
      {
LABEL_298:
        (*(*v158 + 8))(v158);
      }
    }

LABEL_299:
    v123 = 0;
    goto LABEL_300;
  }

  v18 = *(v198 + 20);
  LODWORD(v249) = *(v198 + 16);
  *(&v249 + 1) = v198;
  *&v250 = v198 + 28 + v18;
  *(&v250 + 1) = v198 + 28;
  do
  {
    v19 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v249);
    v20 = v19;
    if (!v19)
    {
      goto LABEL_139;
    }

    if (*v19 != 49 || strncmp((v19 + 8), "all image infos", 0x10uLL))
    {
      v21 = 2;
      continue;
    }

    v4 = v4 & 0xFFFFFFFFFFFFFF00 | 1;
    read_type_from_raw_core_file_bytes<CS_all_image_infos_header>(v10, *(v20 + 24), *(v20 + 32), v4, &v229);
    v21 = 1;
    if (BYTE8(v230) != 1 || v229 != 1)
    {
      v5 = 0;
      v195 = 0;
      continue;
    }

    v202 = DWORD1(v229);
    if (!DWORD1(v229))
    {
      v21 = 3;
      continue;
    }

    v187 = v5;
    v189 = v4;
    v204 = v10;
    v22 = 0;
    v200 = *(&v229 + 1);
    v23 = v230;
    v6 = v6 & 0xFFFFFFFFFFFFFF00 | 1;
    v196 = a2;
    while (1)
    {
      read_type_from_raw_core_file_bytes<CS_image_entry>(v204, v200 + (v23 * v22), v23, v6, &v242);
      v24 = v246[1];
      if (LOBYTE(v246[1]) != 1)
      {
        v5 = 0;
        goto LABEL_65;
      }

      v25 = v242;
      if (v242 != -1)
      {
        break;
      }

LABEL_56:
      if (++v22 == v202)
      {
        v21 = 3;
        v10 = v204;
        v5 = v187;
        v4 = v189;
        goto LABEL_15;
      }
    }

    v26 = CSCppFileMemory::CSCppFileMemory(&v255, v204, v242);
    read_path_from_offset_in_cpp_memory(v26, v25, &v216);
    if (BYTE8(v217) != 1)
    {
      goto LABEL_55;
    }

    v27 = v6;
    std::string::basic_string[abi:ne200100]<0>(&__p, "/dyld");
    v28 = SBYTE7(v214);
    if ((SBYTE7(v214) & 0x80u) == 0)
    {
      v29 = BYTE7(v214);
    }

    else
    {
      v29 = *(&__p + 1);
    }

    v30 = BYTE7(v217);
    if ((SBYTE7(v217) & 0x8000000000000000) != 0)
    {
      v32 = *(&v216 + 1);
      if (v29 > *(&v216 + 1))
      {
LABEL_31:
        v33 = 0;
        v6 = v27;
        if ((SBYTE7(v214) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

LABEL_50:
        operator delete(__p);
        v30 = BYTE7(v217);
        goto LABEL_51;
      }

      v31 = v216;
    }

    else
    {
      if (v29 > SBYTE7(v217))
      {
        goto LABEL_31;
      }

      v31 = &v216;
      v32 = SBYTE7(v217);
    }

    v34 = v32 - v29;
    if ((SBYTE7(v214) & 0x80u) == 0)
    {
      v35 = &__p;
    }

    else
    {
      v35 = __p;
    }

    if (v29)
    {
      v193 = SBYTE7(v214);
      v36 = v31 + v32;
      v191 = v31;
      v37 = v31 + v34;
      v38 = *v35;
      v39 = v29;
      do
      {
        v40 = v39 - v29;
        if (v40 == -1)
        {
          break;
        }

        v41 = memchr(v37, v38, v40 + 1);
        if (!v41)
        {
          break;
        }

        v42 = v41;
        if (!memcmp(v41, v35, v29))
        {
          goto LABEL_44;
        }

        v37 = v42 + 1;
        v39 = v36 - (v42 + 1);
      }

      while (v39 >= v29);
      v42 = v36;
LABEL_44:
      v28 = v193;
      if (v42 == v36)
      {
        v34 = -1;
      }

      else
      {
        v34 = v42 - v191;
      }

      a2 = v196;
    }

    else
    {
      a2 = v196;
    }

    v6 = v27;
    v33 = v34 != -1;
    if (v28 < 0)
    {
      goto LABEL_50;
    }

LABEL_51:
    if (!v33)
    {
      if ((BYTE8(v217) & 1) != 0 && v30 < 0)
      {
        operator delete(v216);
      }

LABEL_55:
      CSCppFileMemory::~CSCppFileMemory(&v255);
      goto LABEL_56;
    }

    v5 = v244;
    if ((BYTE8(v217) & 1) != 0 && v30 < 0)
    {
      operator delete(v216);
    }

    v186 = v5 >> 8;
    CSCppFileMemory::~CSCppFileMemory(&v255);
LABEL_65:
    v10 = v204;
    v4 = v189;
    v21 = 1;
    v195 = v24;
LABEL_15:
    ;
  }

  while (v21 == 2);
  if (v21 != 3 && (v195 & 1) != 0)
  {
    v76 = v5 | (v186 << 8);
    goto LABEL_163;
  }

LABEL_139:
  *&v255 = 0;
  v77 = CSCppCoreFileMemory::get_unretained_reconstructed_core_file_memory(&__src);
  if (mapped_memory_core_file_get_dyld_all_image_infos_addr(v77, &v255))
  {
    v78 = get_address_from_main_bin_spec_lcnote_with_matching_type<SizeAndEndianness<Pointer32,LittleEndian>>(v198, v10, 1);
    if (v79)
    {
      v80 = v78;
    }

    else
    {
      v86 = 0;
      while (1)
      {
        v87 = (*(__src + 4))(&__src, qword_1D97E42A0[v86] - 16, 40);
        if (v88 >= 0x28)
        {
          v80 = v87[2];
          v89 = *v87 == 0x2068736966746143 || *v87 == 0x20206E656B61724BLL;
          if (v89 && v80 != 0)
          {
            break;
          }
        }

        if (++v86 == 7)
        {
          *&v255 = 0;
          *(&v255 + 1) = &v255;
          *&v256 = 0x3802000000;
          *(&v256 + 1) = __Block_byref_object_copy__9;
          *&v257 = __Block_byref_object_dispose__9;
          BYTE8(v257) = 0;
          LOBYTE(v258) = 0;
          v91 = CSCppCoreFileMemory::get_unretained_reconstructed_core_file_memory(&__src);
          *&v242 = MEMORY[0x1E69E9820];
          *(&v242 + 1) = 0x40000000;
          v243 = ___ZL51get_dyld_vmaddr_from_brute_force_search_for_headersI17SizeAndEndiannessI9Pointer3212LittleEndianEENSt3__18optionalIyEER19CSCppCoreFileMemory_block_invoke;
          v244 = &unk_1E8584398;
          v246[0] = &__src;
          v245 = &v255;
          enumerate_mapped_memory_core_file_dumped_regions(v91, &v242);
          v76 = *(*(&v255 + 1) + 40);
          v92 = *(*(&v255 + 1) + 48);
          _Block_object_dispose(&v255, 8);
          if (v92)
          {
            goto LABEL_163;
          }

          v125 = get_address_from_main_bin_spec_lcnote_with_matching_type<SizeAndEndianness<Pointer32,LittleEndian>>(v198, v10, 3);
          LOBYTE(v216) = 0;
          LOBYTE(v218) = 0;
          if (v126)
          {
            LOBYTE(v242) = 0;
            LOBYTE(v244) = 0;
            create_symbol_owner<SizeAndEndianness<Pointer32,LittleEndian>>(&__src, 0, v125, &v242, &v229);
            if (v244 == 1 && SHIBYTE(v243) < 0)
            {
              operator delete(v242);
            }

            if (v229)
            {
              v242 = v229;
              if (*(&v229 + 1))
              {
                atomic_fetch_add_explicit((*(&v229 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              v249 = 0uLL;
              *&v250 = 0;
              std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner> const*,std::shared_ptr<CSCppSymbolOwner> const*>(&v249, &v242, &v243, 1uLL);
              if (*(&v242 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v242 + 1));
              }

              operator new();
            }

            LOBYTE(v255) = 0;
            LOBYTE(v257) = 0;
            if (*(&v229 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v229 + 1));
            }

            std::__optional_storage_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>>(&v216, &v255);
            if (v257 == 1)
            {
              *&v242 = &v255 + 8;
              std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v242);
              v158 = v255;
              *&v255 = 0;
              if (v158)
              {
                goto LABEL_298;
              }
            }
          }

          goto LABEL_299;
        }
      }
    }

    LOBYTE(v216) = 0;
    LOBYTE(v218) = 0;
    v249 = 0uLL;
    *&v250 = 0;
    create_kernel_core_symbol_owner_at_vmaddr<SizeAndEndianness<Pointer32,LittleEndian>>(&__src, v80, &v235, &__p);
    if (__p)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100](&v249, &__p);
      if (*(&__p + 1))
      {
        atomic_fetch_add_explicit((*(&__p + 1) + 8), 1uLL, memory_order_relaxed);
      }

      std::allocate_shared[abi:ne200100]<CSCppSymbolOwner,std::allocator<CSCppSymbolOwner>,CSCppSymbolOwner&,0>();
    }

    LOBYTE(v242) = 0;
    LOBYTE(v245) = 0;
    if (*(&__p + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&__p + 1));
    }

    *&v255 = &v249;
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v255);
    std::__optional_storage_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>>(&v216, &v242);
    if (v245 == 1)
    {
      *&v255 = &v242 + 8;
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v255);
      v124 = v242;
      *&v242 = 0;
      if (v124)
      {
        (*(*v124 + 8))(v124);
      }
    }

    v123 = 1;
  }

  else
  {
    v76 = v255;
LABEL_163:
    LOBYTE(v216) = 0;
    LOBYTE(v218) = 0;
    *&v249 = 0;
    if (!read_mach_header_and_cmds_from_cscppmemory<SizeAndEndianness<Pointer32,LittleEndian>>(&__src, v76))
    {
      TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::symbol_owner(v249);
    }

    if (v249)
    {
      (*(*v249 + 8))(v249);
    }

    v123 = 0;
  }

LABEL_300:
  if (v218 == 1)
  {
    v159 = v216;
    v216 = 0uLL;
    v249 = v159;
    v250 = v217;
    v217 = 0uLL;
    if (v123)
    {
      v160 = v10;
      v161 = *(v198 + 20);
      LODWORD(v242) = *(v198 + 16);
      *(&v242 + 1) = v198;
      v243 = v198 + 28 + v161;
      v244 = (v198 + 28);
      for (k = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v242); k; k = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v242))
      {
        if (*k == 49 && !strncmp((k + 8), "load binary", 0x10uLL))
        {
          v10 = v10 & 0xFFFFFFFFFFFFFF00 | 1;
          read_type_from_raw_core_file_bytes<CS_load_binary_note>(v160, *(k + 24), *(k + 32), v10, &v255);
          if (BYTE4(v259) == 1 && *(&v256 + 4) && (!(DWORD1(v257) ^ 0x6D747073 | BYTE8(v257)) || DWORD1(v257) == 7174260))
          {
            create_kernel_core_symbol_owner_at_vmaddr<SizeAndEndianness<Pointer32,LittleEndian>>(&__src, *(&v256 + 4), &v235, &v229);
            if (v229)
            {
              std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100](&v249 + 1, &v229);
            }

            if (*(&v229 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v229 + 1));
            }
          }
        }
      }
    }

    CSCppCoreFileMemory::clear_unretained_reconstructed_core_file_memory(&__src);
    v163 = v249;
    *&v249 = 0;
    *&v229 = v163;
    v75 = CSSymbolicatorCreateWithSymbolOwnersAndCSCppTask(&v249 + 1);
    v165 = v164;
    v166 = v229;
    *&v229 = 0;
    if (v166)
    {
      (*(*v166 + 8))(v166);
    }

    v167 = CSCppCoreFileMemory::get_unretained_reconstructed_core_file_memory(&__src);
    release_core_file_mapped_memory_cache(*((v165 & 0xFFFFFFFFFFFFFFFCLL) + 144));
    *((v165 & 0xFFFFFFFFFFFFFFFCLL) + 144) = retain_mapped_memory_cache(v167);
    *&v255 = MEMORY[0x1E69E9820];
    *(&v255 + 1) = 0x40000000;
    *&v256 = ___ZL53CSSymbolicatorCreateWithCoreFileAndFlags_ArchSpecificI17SizeAndEndiannessI9Pointer3212LittleEndianEE10_CSTypeRefPKcjjPS4_m_block_invoke;
    *(&v256 + 1) = &__block_descriptor_tmp_4_1;
    *&v257 = v75;
    *(&v257 + 1) = v165;
    CSSymbolicatorApplyMutableContextBlock(v75, v165, &v255);
    *&v242 = &v249 + 8;
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v242);
    v168 = v249;
    *&v249 = 0;
    if (v168)
    {
      (*(*v168 + 8))(v168);
    }

    if (v218)
    {
      *&v242 = &v216 + 8;
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v242);
      v169 = v216;
      *&v216 = 0;
      if (v169)
      {
        (*(*v169 + 8))(v169);
      }
    }
  }

  else
  {
    v75 = 0;
  }

  CSCppCoreFileMemory::~CSCppCoreFileMemory(&__src);
LABEL_323:
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(&v235);
LABEL_324:
  v170 = v220;
LABEL_370:
  CSCppFileMemory::~CSCppFileMemory(v170);
  CSCppFileMemory::~CSCppFileMemory(v208);
  v184 = *MEMORY[0x1E69E9840];
  return v75;
}

void sub_1D9795FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  v57 = STACK[0x380];
  if (STACK[0x380])
  {
    STACK[0x388] = v57;
    operator delete(v57);
  }

  STACK[0x380] = v55 - 256;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x380]);
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  std::optional<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>>::~optional(&a41);
  CSCppCoreFileMemory::~CSCppCoreFileMemory(&STACK[0x360]);
  std::__hash_table<char const*,std::hash<char const*>,std::equal_to<char const*>,std::allocator<char const*>>::~__hash_table(&a47);
  CSCppFileMemory::~CSCppFileMemory(&a54);
  CSCppFileMemory::~CSCppFileMemory(&STACK[0x2E0]);
  CSCppFileMemory::~CSCppFileMemory(&a20);
  _Unwind_Resume(a1);
}

unint64_t get_address_from_main_bin_spec_lcnote_with_matching_type<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 20);
  v11 = *(a1 + 16);
  v12 = a1;
  v13 = a1 + 28 + v5;
  v14 = a1 + 28;
  address_from_main_bin_spec_lcnote_with_matching_type = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v11);
  if (address_from_main_bin_spec_lcnote_with_matching_type)
  {
    v7 = address_from_main_bin_spec_lcnote_with_matching_type;
    while (*v7 != 49 || strncmp((v7 + 8), "main bin spec", 0x10uLL))
    {
      address_from_main_bin_spec_lcnote_with_matching_type = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v11);
      v7 = address_from_main_bin_spec_lcnote_with_matching_type;
      if (!address_from_main_bin_spec_lcnote_with_matching_type)
      {
        goto LABEL_6;
      }
    }

    type_from_raw_core_file = read_type_from_raw_core_file_bytes<CS_main_bin_spec_header>(a2, *(v7 + 24), *(v7 + 32), 1);
    if ((type_from_raw_core_file & 0x100000000) != 0)
    {
      if (type_from_raw_core_file == 2)
      {
        address_from_main_bin_spec_lcnote_with_matching_type = get_address_from_main_bin_spec_lcnote_with_matching_type_specific<CS_main_bin_spec_v2_note>(a2, v7, a3);
        goto LABEL_14;
      }

      if (type_from_raw_core_file == 1)
      {
        address_from_main_bin_spec_lcnote_with_matching_type = get_address_from_main_bin_spec_lcnote_with_matching_type_specific<CS_main_bin_spec_v1_note>(a2, v7, a3);
LABEL_14:
        v8 = address_from_main_bin_spec_lcnote_with_matching_type & 0xFFFFFFFFFFFFFF00;
        return address_from_main_bin_spec_lcnote_with_matching_type | v8;
      }
    }

    v8 = 0;
    LOBYTE(address_from_main_bin_spec_lcnote_with_matching_type) = 0;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  return address_from_main_bin_spec_lcnote_with_matching_type | v8;
}

uint64_t *std::optional<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>>::~optional(uint64_t *a1)
{
  if (*(a1 + 32) == 1)
  {
    v4 = (a1 + 1);
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v4);
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

uint64_t ___ZL53CSSymbolicatorCreateWithCoreFileAndFlags_ArchSpecificI17SizeAndEndiannessI9Pointer3212LittleEndianEE10_CSTypeRefPKcjjPS4_m_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZL53CSSymbolicatorCreateWithCoreFileAndFlags_ArchSpecificI17SizeAndEndiannessI9Pointer3212LittleEndianEE10_CSTypeRefPKcjjPS4_m_block_invoke_2;
  v5[3] = &__block_descriptor_tmp_14;
  v5[4] = a2;
  return CSSymbolicatorForeachSymbolOwnerAtTime(v2, v3, 0x8000000000000000, v5);
}

uint64_t ___ZL53CSSymbolicatorCreateWithCoreFileAndFlags_ArchSpecificI17SizeAndEndiannessI9Pointer3212LittleEndianEE10_CSTypeRefPKcjjPS4_m_block_invoke_2(uint64_t a1, char a2, uint64_t a3)
{
  result = CSSymbolOwnerGetCFUUIDBytes(a2, a3);
  if (result)
  {
    result = CSGetBinaryPathForExclaveWithUUIDBytes(result);
    if (result)
    {
      v7 = result;
      MutableInContext = CSSymbolOwnerMakeMutableInContext(a2, a3, *(a1 + 32));
      v10 = v9;
      CSSymbolOwnerSetPathForSymbolication(MutableInContext, v9, v7);
      Path = CSSymbolOwnerGetPath(MutableInContext, v10);
      if (!Path || (result = strcmp(Path, "<unknown>"), !result))
      {

        return CSSymbolOwnerSetPath(MutableInContext, v10, v7);
      }
    }
  }

  return result;
}

uint64_t *std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>::~pair(uint64_t *a1)
{
  v4 = (a1 + 1);
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<UUID,CSCppSymbolOwner *>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,CSCppSymbolOwner *>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,CSCppSymbolOwner *>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,CSCppSymbolOwner *>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(void *a1, void *a2)
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

void read_type_from_raw_core_file_bytes<CS_all_image_infos_header>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 1) != 0 && a3 <= 0x17)
  {
    *a5 = 0;
    *(a5 + 24) = 0;
  }

  else
  {
    CSCppFileMemory::CSCppFileMemory(v10, a1, a2);
    v7 = (*(v10[0] + 32))(v10, a2, 24);
    if (v8 > 0x17)
    {
      *a5 = *v7;
      *(a5 + 16) = *(v7 + 16);
      v9 = 1;
    }

    else
    {
      v9 = 0;
      *a5 = 0;
    }

    *(a5 + 24) = v9;
    CSCppFileMemory::~CSCppFileMemory(v10);
  }
}

void sub_1D9796EF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CSCppFileMemory::~CSCppFileMemory(va);
  _Unwind_Resume(a1);
}

void read_type_from_raw_core_file_bytes<CS_image_entry>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 1) != 0 && a3 <= 0x2F)
  {
    *a5 = 0;
    *(a5 + 48) = 0;
  }

  else
  {
    CSCppFileMemory::CSCppFileMemory(v11, a1, a2);
    v7 = (*(v11[0] + 32))(v11, a2, 48);
    if (v8 > 0x2F)
    {
      v10 = v7[1];
      *a5 = *v7;
      *(a5 + 16) = v10;
      *(a5 + 32) = v7[2];
      v9 = 1;
    }

    else
    {
      v9 = 0;
      *a5 = 0;
    }

    *(a5 + 48) = v9;
    CSCppFileMemory::~CSCppFileMemory(v11);
  }
}

void sub_1D9796FD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CSCppFileMemory::~CSCppFileMemory(va);
  _Unwind_Resume(a1);
}

uint64_t read_type_from_raw_core_file_bytes<CS_main_bin_spec_header>(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if ((a4 & 1) != 0 && a3 < 4)
  {
    LOBYTE(v6) = 0;
    v7 = 0;
  }

  else
  {
    CSCppFileMemory::CSCppFileMemory(v11, a1, a2);
    v8 = (*(v11[0] + 32))(v11, a2, 4);
    if (v9 >= 4)
    {
      v6 = *v8;
      v7 = 1;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v4 = v6 >> 8;
    CSCppFileMemory::~CSCppFileMemory(v11);
  }

  return (v7 << 32) | ((*&v4 & 0xFFFFFFLL) << 8) | v6;
}

void sub_1D97970AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CSCppFileMemory::~CSCppFileMemory(va);
  _Unwind_Resume(a1);
}

unint64_t get_address_from_main_bin_spec_lcnote_with_matching_type_specific<CS_main_bin_spec_v1_note>(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 32) < 0x24uLL)
  {
    goto LABEL_9;
  }

  v4 = *(a2 + 24);
  CSCppFileMemory::CSCppFileMemory(v13, a1, v4);
  v5 = (*(v13[0] + 32))(v13, v4, 36);
  if (v6 < 0x24)
  {
    CSCppFileMemory::~CSCppFileMemory(v13);
LABEL_9:
    v12 = 0;
    v11 = 0;
    return v11 | v12;
  }

  v7 = *(v5 + 4);
  v8 = *(v5 + 8);
  CSCppFileMemory::~CSCppFileMemory(v13);
  if (v7 != a3 || v8 == -1)
  {
    goto LABEL_9;
  }

  v11 = v8 & 0xFFFFFFFFFFFFFF00;
  v12 = v8;
  return v11 | v12;
}

void sub_1D97971A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CSCppFileMemory::~CSCppFileMemory(va);
  _Unwind_Resume(a1);
}

unint64_t get_address_from_main_bin_spec_lcnote_with_matching_type_specific<CS_main_bin_spec_v2_note>(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 32) < 0x30uLL)
  {
    goto LABEL_9;
  }

  v4 = *(a2 + 24);
  CSCppFileMemory::CSCppFileMemory(v13, a1, v4);
  v5 = (*(v13[0] + 32))(v13, v4, 48);
  if (v6 < 0x30)
  {
    CSCppFileMemory::~CSCppFileMemory(v13);
LABEL_9:
    v12 = 0;
    v11 = 0;
    return v11 | v12;
  }

  v7 = *(v5 + 4);
  v8 = *(v5 + 8);
  CSCppFileMemory::~CSCppFileMemory(v13);
  if (v7 != a3 || v8 == -1)
  {
    goto LABEL_9;
  }

  v11 = v8 & 0xFFFFFFFFFFFFFF00;
  v12 = v8;
  return v11 | v12;
}

void sub_1D9797294(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CSCppFileMemory::~CSCppFileMemory(va);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = v2;
  return result;
}

void ___ZL51get_dyld_vmaddr_from_brute_force_search_for_headersI17SizeAndEndiannessI9Pointer3212LittleEndianEENSt3__18optionalIyEER19CSCppCoreFileMemory_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = (*a2 + 4095) & 0xFFFFFFFFFFFFF000;
  if (v4 < *a2 + a2[3] - 28)
  {
    while (1)
    {
      mach_header_and_cmds_from = read_mach_header_and_cmds_from_cscppmemory<SizeAndEndianness<Pointer32,LittleEndian>>(*(a1 + 40), v4);
      if (!mach_header_and_cmds_from)
      {
        break;
      }

      if (mach_header_and_cmds_from != 29)
      {
        v8 = 1;
LABEL_8:
        *a3 = 1;
        goto LABEL_9;
      }

      v4 += 4096;
      v8 = 2;
LABEL_9:
      if ((v8 | 2) != 2)
      {
        return;
      }

      if (v4 >= *a2 + a2[3] - 28)
      {
        goto LABEL_15;
      }
    }

    if (*(MEMORY[0x18] + 12) != 7)
    {
      v10 = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::segment_named(MEMORY[0x18], "__TEXT");
      v8 = 0;
      if (v10)
      {
        v4 = (v4 + *(v10 + 28) + 4095) & 0xFFFFFFFFFFFFF000;
      }

      else
      {
        v4 += 4096;
      }

      goto LABEL_9;
    }

    v9 = *(*(a1 + 32) + 8);
    *(v9 + 40) = v4;
    v8 = 1;
    *(v9 + 48) = 1;
    goto LABEL_8;
  }

LABEL_15:
  v11 = *(a1 + 40);

  CSCppCoreFileMemory::clear_unretained_reconstructed_core_file_memory(v11);
}

uint64_t read_mach_header_and_cmds_from_cscppmemory<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = (*(*a1 + 32))(a1, a2, 28);
  if (!v4)
  {
    return 5;
  }

  if (*v4 == -17958194)
  {
    v6 = a1;
    if (TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::macho_header_at(&v6, v2, 1))
    {
      operator new();
    }

    return 5;
  }

  return 29;
}

void std::vector<unsigned long long>::push_back[abi:ne200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

__n128 __Block_byref_object_copy__59(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

std::string *std::optional<std::string>::operator=[abi:ne200100]<char const(&)[14],void>(std::string *a1, std::string::value_type *a2)
{
  if (a1[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::__assign_external(a1, a2);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a1, a2);
    a1[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return a1;
}

void create_symbol_owner<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (*(a4 + 24) == 1)
  {
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, *a4, *(a4 + 8));
    }

    else
    {
      v9 = *a4;
    }

    v10 = 1;
  }

  else
  {
    read_path_from_offset_in_cpp_memory(a1, a2, &v9);
  }

  std::optional<std::string>::value_or[abi:ne200100]<char const(&)[10]>(&v9, "<unknown>", &__p);
  if (!read_mach_header_and_cmds_from_cscppmemory<SizeAndEndianness<Pointer32,LittleEndian>>(a1, a3))
  {
    TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::symbol_owner(0);
  }

  *a5 = 0;
  a5[1] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10 == 1 && SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1D97978BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  v25 = *(v22 + 8);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL58get_fake_task_and_symbol_owners_using_dyld_all_image_infosI17SizeAndEndiannessI9Pointer3212LittleEndianEENSt3__18optionalINS4_4pairINS4_10unique_ptrI9CSCppTaskNS4_14default_deleteIS8_EEEENS4_6vectorINS4_10shared_ptrI16CSCppSymbolOwnerEENS4_9allocatorISF_EEEEEEEER19CSCppCoreFileMemoryy_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  if (v3 == v4)
  {
LABEL_6:
    CSCppCoreFileMemory::clear_unretained_reconstructed_core_file_memory(*(a1 + 80));
  }

  else
  {
    while (*v3 - *a2 >= a2[1])
    {
      v3 += 3;
      if (v3 == v4)
      {
        goto LABEL_6;
      }
    }

    v5 = *(*(a1 + 32) + 8);
    __p = *v3;
    if (!std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>((v5 + 40), &__p))
    {
      v6 = *(*(a1 + 32) + 8);
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_impl<unsigned int const&>();
    }
  }
}

void sub_1D9797A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_56c86_ZTSNSt3__16vectorI32CS_dyld_image_info_arch_specificI9Pointer32ENS_9allocatorIS3_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = a1 + 56;
  *(v2 + 16) = 0;
  return std::vector<CS_dyld_image_info_arch_specific<Pointer32>>::__init_with_size[abi:ne200100]<CS_dyld_image_info_arch_specific<Pointer32>*,CS_dyld_image_info_arch_specific<Pointer32>*>(v2, *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 2));
}

void __destroy_helper_block_e8_56c86_ZTSNSt3__16vectorI32CS_dyld_image_info_arch_specificI9Pointer32ENS_9allocatorIS3_EEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

void std::optional<std::string>::value_or[abi:ne200100]<char const(&)[10]>(uint64_t a1@<X0>, char *a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *a1, *(a1 + 8));
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *a1;
      a3->__r_.__value_.__r.__words[2] = *(a1 + 16);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a3, a2);
  }
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(void *a1, unint64_t *a2)
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
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v3 == v8)
      {
        if (result[2] == v3)
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

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t std::vector<CS_dyld_image_info_arch_specific<Pointer32>>::__init_with_size[abi:ne200100]<CS_dyld_image_info_arch_specific<Pointer32>*,CS_dyld_image_info_arch_specific<Pointer32>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TRangeValue<Pointer32,unsigned int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D9797CD4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>::pair[abi:ne200100]<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>&,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner>*,std::shared_ptr<CSCppSymbolOwner>*>((a1 + 1), *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void sub_1D9797D38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    CSSymbolicatorCreateWithTaskPidFlagsAndNotification_cold_1(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    if (*(a1 + 32))
    {

      std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>::operator=[abi:ne200100](a1, a2);
    }
  }

  else if (*(a1 + 32))
  {
    v6 = (a1 + 8);
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__destroy_vector::operator()[abi:ne200100](&v6);
    v4 = *a1;
    *a1 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    *(a1 + 32) = 0;
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *a1 = v5;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    result = *(a2 + 8);
    *(a1 + 8) = result;
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a1 + 32) = 1;
  }

  return result;
}

uint64_t *std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__vdeallocate(a1 + 1);
  *(a1 + 1) = *(a2 + 1);
  a1[3] = a2[3];
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  return a1;
}

uint64_t create_kernel_core_symbol_owner_at_vmaddr<SizeAndEndianness<Pointer32,LittleEndian>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, void *a4@<X8>)
{
  result = read_mach_header_and_cmds_from_cscppmemory<SizeAndEndianness<Pointer32,LittleEndian>>(a1, a2);
  if (!result)
  {
    v8 = TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::uuid(MEMORY[0x18]);
    v7 = std::__hash_table<std::__hash_value_type<UUID,CSCppSymbolOwner *>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,CSCppSymbolOwner *>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,CSCppSymbolOwner *>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,CSCppSymbolOwner *>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(a3, v8)[4];
    TExtendedMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::symbol_owner(0);
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

void sub_1D97980B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::unique_ptr<CSCppFakeTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>::pair[abi:ne200100]<std::unique_ptr<CSCppFakeTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>&,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner>*,std::shared_ptr<CSCppSymbolOwner>*>((a1 + 1), *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void sub_1D9798160(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    CSSymbolicatorCreateWithTaskPidFlagsAndNotification_cold_1(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>>>::pair[abi:ne200100]<std::unique_ptr<CSCppTask>,std::vector<std::shared_ptr<CSCppSymbolOwner>> const,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__init_with_size[abi:ne200100]<std::shared_ptr<CSCppSymbolOwner>*,std::shared_ptr<CSCppSymbolOwner>*>((a1 + 1), *a3, a3[1], (a3[1] - *a3) >> 4);
  return a1;
}

void sub_1D97981C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    CSSymbolicatorCreateWithTaskPidFlagsAndNotification_cold_1(v3);
  }

  _Unwind_Resume(exception_object);
}

void read_type_from_raw_core_file_bytes<CS_load_binary_note>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 1) != 0 && a3 <= 0x43)
  {
    *a5 = 0;
    *(a5 + 68) = 0;
  }

  else
  {
    CSCppFileMemory::CSCppFileMemory(v12, a1, a2);
    v7 = (*(v12[0] + 32))(v12, a2, 68);
    if (v8 > 0x43)
    {
      v10 = *(v7 + 48);
      *(a5 + 32) = *(v7 + 32);
      *(a5 + 48) = v10;
      *(a5 + 64) = *(v7 + 64);
      v11 = *(v7 + 16);
      *a5 = *v7;
      *(a5 + 16) = v11;
      v9 = 1;
    }

    else
    {
      v9 = 0;
      *a5 = 0;
    }

    *(a5 + 68) = v9;
    CSCppFileMemory::~CSCppFileMemory(v12);
  }
}

void sub_1D97982B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CSCppFileMemory::~CSCppFileMemory(va);
  _Unwind_Resume(a1);
}

unint64_t get_address_from_main_bin_spec_lcnote_with_matching_type<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 20);
  v11 = *(a1 + 16);
  v12 = a1;
  v13 = a1 + 32 + v5;
  v14 = a1 + 32;
  address_from_main_bin_spec_lcnote_with_matching_type = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v11);
  if (address_from_main_bin_spec_lcnote_with_matching_type)
  {
    v7 = address_from_main_bin_spec_lcnote_with_matching_type;
    while (*v7 != 49 || strncmp((v7 + 8), "main bin spec", 0x10uLL))
    {
      address_from_main_bin_spec_lcnote_with_matching_type = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v11);
      v7 = address_from_main_bin_spec_lcnote_with_matching_type;
      if (!address_from_main_bin_spec_lcnote_with_matching_type)
      {
        goto LABEL_6;
      }
    }

    type_from_raw_core_file = read_type_from_raw_core_file_bytes<CS_main_bin_spec_header>(a2, *(v7 + 24), *(v7 + 32), 1);
    if ((type_from_raw_core_file & 0x100000000) != 0)
    {
      if (type_from_raw_core_file == 2)
      {
        address_from_main_bin_spec_lcnote_with_matching_type = get_address_from_main_bin_spec_lcnote_with_matching_type_specific<CS_main_bin_spec_v2_note>(a2, v7, a3);
        goto LABEL_14;
      }

      if (type_from_raw_core_file == 1)
      {
        address_from_main_bin_spec_lcnote_with_matching_type = get_address_from_main_bin_spec_lcnote_with_matching_type_specific<CS_main_bin_spec_v1_note>(a2, v7, a3);
LABEL_14:
        v8 = address_from_main_bin_spec_lcnote_with_matching_type & 0xFFFFFFFFFFFFFF00;
        return address_from_main_bin_spec_lcnote_with_matching_type | v8;
      }
    }

    v8 = 0;
    LOBYTE(address_from_main_bin_spec_lcnote_with_matching_type) = 0;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  return address_from_main_bin_spec_lcnote_with_matching_type | v8;
}

uint64_t ___ZL53CSSymbolicatorCreateWithCoreFileAndFlags_ArchSpecificI17SizeAndEndiannessI9Pointer6412LittleEndianEE10_CSTypeRefPKcjjPS4_m_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZL53CSSymbolicatorCreateWithCoreFileAndFlags_ArchSpecificI17SizeAndEndiannessI9Pointer6412LittleEndianEE10_CSTypeRefPKcjjPS4_m_block_invoke_2;
  v5[3] = &__block_descriptor_tmp_70_0;
  v5[4] = a2;
  return CSSymbolicatorForeachSymbolOwnerAtTime(v2, v3, 0x8000000000000000, v5);
}

uint64_t ___ZL53CSSymbolicatorCreateWithCoreFileAndFlags_ArchSpecificI17SizeAndEndiannessI9Pointer6412LittleEndianEE10_CSTypeRefPKcjjPS4_m_block_invoke_2(uint64_t a1, char a2, uint64_t a3)
{
  result = CSSymbolOwnerGetCFUUIDBytes(a2, a3);
  if (result)
  {
    result = CSGetBinaryPathForExclaveWithUUIDBytes(result);
    if (result)
    {
      v7 = result;
      MutableInContext = CSSymbolOwnerMakeMutableInContext(a2, a3, *(a1 + 32));
      v10 = v9;
      CSSymbolOwnerSetPathForSymbolication(MutableInContext, v9, v7);
      Path = CSSymbolOwnerGetPath(MutableInContext, v10);
      if (!Path || (result = strcmp(Path, "<unknown>"), !result))
      {

        return CSSymbolOwnerSetPath(MutableInContext, v10, v7);
      }
    }
  }

  return result;
}

void ___ZL51get_dyld_vmaddr_from_brute_force_search_for_headersI17SizeAndEndiannessI9Pointer6412LittleEndianEENSt3__18optionalIyEER19CSCppCoreFileMemory_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = (*a2 + 4095) & 0xFFFFFFFFFFFFF000;
  if (v4 < *a2 + a2[3] - 32)
  {
    while (1)
    {
      mach_header_and_cmds_from = read_mach_header_and_cmds_from_cscppmemory<SizeAndEndianness<Pointer64,LittleEndian>>(*(a1 + 40), v4);
      if (!mach_header_and_cmds_from)
      {
        break;
      }

      if (mach_header_and_cmds_from != 29)
      {
        v8 = 1;
LABEL_8:
        *a3 = 1;
        goto LABEL_9;
      }

      v4 += 4096;
      v8 = 2;
LABEL_9:
      if ((v8 | 2) != 2)
      {
        return;
      }

      if (v4 >= *a2 + a2[3] - 32)
      {
        goto LABEL_15;
      }
    }

    if (*(MEMORY[0x18] + 12) != 7)
    {
      v10 = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::segment_named(MEMORY[0x18], "__TEXT");
      v8 = 0;
      if (v10)
      {
        v4 = (v4 + *(v10 + 32) + 4095) & 0xFFFFFFFFFFFFF000;
      }

      else
      {
        v4 += 4096;
      }

      goto LABEL_9;
    }

    v9 = *(*(a1 + 32) + 8);
    *(v9 + 40) = v4;
    v8 = 1;
    *(v9 + 48) = 1;
    goto LABEL_8;
  }

LABEL_15:
  v11 = *(a1 + 40);

  CSCppCoreFileMemory::clear_unretained_reconstructed_core_file_memory(v11);
}

uint64_t read_mach_header_and_cmds_from_cscppmemory<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1, a2, 32);
  if (!v4)
  {
    return 5;
  }

  if (*v4 == -17958193)
  {
    v6 = a1;
    if (TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at(&v6, a2, 1))
    {
      operator new();
    }

    return 5;
  }

  return 29;
}

void create_symbol_owner<SizeAndEndianness<Pointer64,LittleEndian>>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (*(a4 + 24) == 1)
  {
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, *a4, *(a4 + 8));
    }

    else
    {
      v9 = *a4;
    }

    v10 = 1;
  }

  else
  {
    read_path_from_offset_in_cpp_memory(a1, a2, &v9);
  }

  std::optional<std::string>::value_or[abi:ne200100]<char const(&)[10]>(&v9, "<unknown>", &__p);
  if (!read_mach_header_and_cmds_from_cscppmemory<SizeAndEndianness<Pointer64,LittleEndian>>(a1, a3))
  {
    TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::symbol_owner(0);
  }

  *a5 = 0;
  a5[1] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v10 == 1 && SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1D9798990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  v25 = *(v22 + 8);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL58get_fake_task_and_symbol_owners_using_dyld_all_image_infosI17SizeAndEndiannessI9Pointer6412LittleEndianEENSt3__18optionalINS4_4pairINS4_10unique_ptrI9CSCppTaskNS4_14default_deleteIS8_EEEENS4_6vectorINS4_10shared_ptrI16CSCppSymbolOwnerEENS4_9allocatorISF_EEEEEEEER19CSCppCoreFileMemoryy_block_invoke(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  if (v4 == v5)
  {
LABEL_15:
    CSCppCoreFileMemory::clear_unretained_reconstructed_core_file_memory(*(a1 + 80));
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    while (1)
    {
      if (*v4 - v7 < v8)
      {
        if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>((*(*(a1 + 32) + 8) + 40), v4))
        {
          break;
        }

        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>((*(*(a1 + 32) + 8) + 40), v4);
        v9 = *(a1 + 80);
        v11 = *v4;
        v10 = v4[1];
        LOBYTE(__p) = 0;
        v15 = 0;
        create_symbol_owner<SizeAndEndianness<Pointer64,LittleEndian>>(v9, v10, v11, &__p, &v16);
        if (v15 == 1 && v14 < 0)
        {
          operator delete(__p);
        }

        v12 = v16;
        if (v16)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::push_back[abi:ne200100]((*(*(a1 + 48) + 8) + 40), &v16);
        }

        else
        {
          *a3 = 1;
          *(*(*(a1 + 40) + 8) + 24) = 0;
        }

        if (*(&v16 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
        }

        if (!v12)
        {
          break;
        }
      }

      v4 += 3;
      if (v4 == v5)
      {
        goto LABEL_15;
      }
    }
  }
}

void sub_1D9798B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_56c86_ZTSNSt3__16vectorI32CS_dyld_image_info_arch_specificI9Pointer64ENS_9allocatorIS3_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v2 = a1 + 56;
  *(v2 + 16) = 0;
  return std::vector<CS_dyld_image_info_arch_specific<Pointer64>>::__init_with_size[abi:ne200100]<CS_dyld_image_info_arch_specific<Pointer64>*,CS_dyld_image_info_arch_specific<Pointer64>*>(v2, *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 3));
}

void __destroy_helper_block_e8_56c86_ZTSNSt3__16vectorI32CS_dyld_image_info_arch_specificI9Pointer64ENS_9allocatorIS3_EEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t *a2)
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

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::vector<CS_dyld_image_info_arch_specific<Pointer64>>::__init_with_size[abi:ne200100]<CS_dyld_image_info_arch_specific<Pointer64>*,CS_dyld_image_info_arch_specific<Pointer64>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TRangeValue<Pointer64,unsigned long long>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D9798E40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t create_kernel_core_symbol_owner_at_vmaddr<SizeAndEndianness<Pointer64,LittleEndian>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, void *a4@<X8>)
{
  result = read_mach_header_and_cmds_from_cscppmemory<SizeAndEndianness<Pointer64,LittleEndian>>(a1, a2);
  if (!result)
  {
    v8 = TMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::uuid(MEMORY[0x18]);
    v7 = std::__hash_table<std::__hash_value_type<UUID,CSCppSymbolOwner *>,std::__unordered_map_hasher<UUID,std::__hash_value_type<UUID,CSCppSymbolOwner *>,UUIDHashFunctor,UUIDEqualsFunctor,true>,std::__unordered_map_equal<UUID,std::__hash_value_type<UUID,CSCppSymbolOwner *>,UUIDEqualsFunctor,UUIDHashFunctor,true>,std::allocator<std::__hash_value_type<UUID,CSCppSymbolOwner *>>>::__emplace_unique_key_args<UUID,std::piecewise_construct_t const&,std::tuple<UUID const&>,std::tuple<>>(a3, v8)[4];
    TExtendedMachOHeader<SizeAndEndianness<Pointer64,LittleEndian>>::symbol_owner(0);
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

void sub_1D9799060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v13 = *(v11 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  _Unwind_Resume(exception_object);
}

void CSCppTaskMemory::CSCppTaskMemory(CSCppTaskMemory *this, const CSCppMachTaskContainer *a2, int a3)
{
  *this = &unk_1F5508068;
  v5 = (this + 8);
  CSCppMachTaskContainer::CSCppMachTaskContainer((this + 8), a2);
  *(this + 24) = 0u;
  *(this + 72) = 0u;
  *(this + 100) = 0u;
  *(this + 88) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  if (a3)
  {
    task_suspend2(*(this + 4), this + 28);
  }

  task_info_outCnt = 5;
  if (!CSCppMachTaskContainer::is_self_task(v5))
  {
    if (CSTaskIs64Bit(*(this + 4)))
    {
      if ((CSTaskIsTranslated(*(this + 4)) & 1) == 0 && !task_info(*MEMORY[0x1E69E9A60], 0x11u, task_info_out, &task_info_outCnt))
      {
        v6 = *task_info_out;
        v13 = 0;
        shared_cache_range = _dyld_get_shared_cache_range();
        if (shared_cache_range)
        {
          v8 = v13;
          if (CSCppTaskMemory::region_at_address(this, shared_cache_range, 1) == shared_cache_range)
          {
            *(this + 9) = shared_cache_range;
            *(this + 10) = v8;
            v12 = this;
            v9 = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::dyld_shared_cache_at(&v12, shared_cache_range);
            v11[0] = MEMORY[0x1E69E9820];
            v11[1] = 0x40000000;
            v11[2] = ___ZN15CSCppTaskMemoryC2ERK22CSCppMachTaskContainerb_block_invoke;
            v11[3] = &__block_descriptor_tmp_15;
            v11[4] = this;
            v11[5] = v6;
            CSCppDyldSharedCache::for_each_mapped_cache(v9, v11);
            for (i = *(this + 11); i != *(this + 12); i += 2)
            {
              if (*i)
              {
                return;
              }
            }

            *(this + 9) = 0;
            *(this + 10) = 0;
          }
        }
      }
    }
  }
}

void sub_1D979926C(_Unwind_Exception *a1)
{
  v5 = v1[11];
  if (v5)
  {
    v1[12] = v5;
    operator delete(v5);
  }

  v6 = v1[6];
  if (v6)
  {
    v1[7] = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    v1[4] = v7;
    operator delete(v7);
  }

  CSCppMachTaskContainer::~CSCppMachTaskContainer(v2);
  _Unwind_Resume(a1);
}

void CSCppTaskMemory::CSCppTaskMemory(CSCppTaskMemory *this, mach_port_name_t a2, int a3, int a4)
{
  CSCppMachTaskContainer::CSCppMachTaskContainer(v6, a2, a3);
  CSCppTaskMemory::CSCppTaskMemory(this, v6, a4);
  CSCppMachTaskContainer::~CSCppMachTaskContainer(v6);
}

mach_vm_address_t CSCppTaskMemory::region_at_address(CSCppTaskMemory *this, mach_vm_address_t a2, int a3)
{
  nesting_depth = 999999;
  address = a2;
  size = 0;
  infoCnt = 12;
  if (mach_vm_region_recurse(*(this + 4), &address, &size, &nesting_depth, info, &infoCnt) || address > a2 || size + address <= a2)
  {
    return 0;
  }

  if ((info[0] & a3) == a3)
  {
    return address;
  }

  return 0;
}

void ___ZN15CSCppTaskMemoryC2ERK22CSCppMachTaskContainerb_block_invoke(uint64_t a1, CSCppDyldSharedCache *this)
{
  v3 = *(a1 + 32);
  CSCppDyldSharedCache::data_segment_ranges(this, &v20);
  v4 = v20;
  v5 = v21;
  if (v20 != v21)
  {
    v6 = v3[12];
    do
    {
      v7 = v4[1];
      v8 = *(*(a1 + 40) + 152) + *v4;
      v9 = v3[13];
      if (v6 >= v9)
      {
        v10 = v3[11];
        v11 = v6 - v10;
        v12 = (v6 - v10) >> 4;
        v13 = v12 + 1;
        if ((v12 + 1) >> 60)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
        }

        v14 = v9 - v10;
        if (v14 >> 3 > v13)
        {
          v13 = v14 >> 3;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF0)
        {
          v15 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::allocator<_CSTypeRef>::allocate_at_least[abi:ne200100]((v3 + 11), v15);
        }

        v16 = v12;
        v17 = (16 * v12);
        *v17 = v8;
        v17[1] = v7;
        v6 = (16 * v12 + 16);
        v18 = &v17[-2 * v16];
        memcpy(v18, v10, v11);
        v19 = v3[11];
        v3[11] = v18;
        v3[12] = v6;
        v3[13] = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v6 = v8;
        *(v6 + 1) = v7;
        v6 += 16;
      }

      v3[12] = v6;
      v4 += 2;
    }

    while (v4 != v5);
    v4 = v20;
  }

  if (v4)
  {
    v21 = v4;
    operator delete(v4);
  }
}

void sub_1D9799514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CSCppTaskMemory::~CSCppTaskMemory(CSCppTaskMemory *this)
{
  *this = &unk_1F5508068;
  v2 = *(this + 28);
  if (v2 + 1 >= 2)
  {
    task_resume2(v2);
    *(this + 28) = 0;
  }

  if (!CSCppMachTaskContainer::is_self_task((this + 8)))
  {
    v3 = *(this + 3);
    if (v3 != *(this + 4))
    {
      v4 = MEMORY[0x1E69E9A60];
      do
      {
        mach_vm_deallocate(*v4, *(v3 + 16), *(v3 + 8));
        v3 += 24;
      }

      while (v3 != *(this + 4));
    }

    v5 = *(this + 6);
    if (v5 != *(this + 7))
    {
      v6 = MEMORY[0x1E69E9A60];
      do
      {
        mach_vm_deallocate(*v6, *(v5 + 16), *(v5 + 8));
        v5 += 24;
      }

      while (v5 != *(this + 7));
    }
  }

  *(this + 4) = *(this + 3);
  v7 = *(this + 6);
  *(this + 7) = v7;
  v8 = *(this + 11);
  if (v8)
  {
    *(this + 12) = v8;
    operator delete(v8);
    v7 = *(this + 6);
  }

  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }

  v9 = *(this + 3);
  if (v9)
  {
    *(this + 4) = v9;
    operator delete(v9);
  }

  CSCppMachTaskContainer::~CSCppMachTaskContainer((this + 8));
}

{
  CSCppTaskMemory::~CSCppTaskMemory(this);

  JUMPOUT(0x1DA736760);
}

uint64_t CSCppTaskMemory::map_task_memory(uint64_t a1, mach_vm_address_t a2, mach_vm_size_t a3, mach_vm_address_t *a4, _DWORD *a5)
{
  if (CSCppMachTaskContainer::is_self_task((a1 + 8)))
  {
    result = 0;
    *a4 = a2;
    *a5 = a3;
  }

  else
  {
    *a4 = 0;
    *a5 = a3;
    v12 = 1;
    cur_protection = 0;
    v11 = 0;
    result = remap_memory_from_target(*MEMORY[0x1E69E9A60], &v11, a3, 0, 33, *(a1 + 16), a2, 1, &cur_protection, &v12, 1u);
    if (!result)
    {
      *a4 = v11;
    }
  }

  return result;
}

uint64_t CSCppTaskMemory::resume(CSCppTaskMemory *this)
{
  result = *(this + 28);
  if ((result + 1) >= 2)
  {
    result = task_resume2(result);
    *(this + 28) = 0;
  }

  return result;
}

mach_vm_address_t CSCppTaskMemory::bytes_at(CSCppTaskMemory *this, mach_vm_address_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v63 = *MEMORY[0x1E69E9840];
  v6 = *(this + 9);
  v7 = a3 + a2;
  if (a2 >= v6 && v7 <= *(this + 10) + v6)
  {
    for (i = *(this + 11); i != *(this + 12); i += 2)
    {
      if (a2 >= *i && v7 <= i[1] + *i)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v8 = *(this + 3);
    v9 = *(this + 4);
    v10 = v9;
    if (v9 != v8)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
      v10 = *(this + 3);
      do
      {
        v12 = v11 >> 1;
        v13 = &v10->n128_u64[3 * (v11 >> 1)];
        v15 = *v13;
        v14 = (v13 + 3);
        v11 += ~(v11 >> 1);
        if (v15 < v7)
        {
          v10 = v14;
        }

        else
        {
          v11 = v12;
        }
      }

      while (v11);
    }

    if (v10 == v8 || (v16 = v10[-2].n128_u64[1], a2 < v16) || v7 > v10[-1].n128_u64[0] + v16)
    {
      if (a2 >= v7)
      {
        v18 = a2;
LABEL_23:
        if (v9 != v8)
        {
          v22 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
          v9 = v8;
          do
          {
            v23 = v22 >> 1;
            v24 = &v9->n128_u64[3 * (v22 >> 1)];
            v26 = *v24;
            v25 = (v24 + 3);
            v22 += ~(v22 >> 1);
            if (v26 < v7)
            {
              v9 = v25;
            }

            else
            {
              v22 = v23;
            }
          }

          while (v22);
        }

        v27 = v9;
        do
        {
          v28 = v27;
          if (v27 == v8)
          {
            break;
          }

          v27 = (v27 - 24);
        }

        while (v18 < v28[-1].n128_u64[0] + v28[-2].n128_u64[1]);
        if (v28 != v9)
        {
          v56 = v4;
          v29 = *(this + 7);
          v30 = v28;
          do
          {
            v31 = *(this + 8);
            if (v29 >= v31)
            {
              v33 = *(this + 6);
              v34 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v33) >> 3);
              v35 = v34 + 1;
              if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
              }

              v36 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v33) >> 3);
              if (2 * v36 > v35)
              {
                v35 = 2 * v36;
              }

              if (v36 >= 0x555555555555555)
              {
                v37 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v37 = v35;
              }

              if (v37)
              {
                std::allocator<TRangeValue<Pointer64,unsigned char *>>::allocate_at_least[abi:ne200100](this + 48, v37);
              }

              v38 = 8 * ((v29 - v33) >> 3);
              v39 = *v30;
              *(v38 + 16) = v30[1].n128_u64[0];
              *v38 = v39;
              v29 = v38 + 24;
              v40 = *(this + 6);
              v41 = *(this + 7) - v40;
              v42 = 24 * v34 - v41;
              memcpy((v38 - v41), v40, v41);
              v43 = *(this + 6);
              *(this + 6) = v42;
              *(this + 7) = v29;
              *(this + 8) = 0;
              if (v43)
              {
                operator delete(v43);
              }
            }

            else
            {
              v32 = *v30;
              *(v29 + 16) = v30[1].n128_u64[0];
              *v29 = v32;
              v29 += 24;
            }

            *(this + 7) = v29;
            v44 = v3 + v18;
            v45 = v30->n128_u64[0];
            v46 = v30->n128_u64[1];
            v30 = (v30 + 24);
            v47 = v46 + v45;
            if (v3 + v18 <= v47)
            {
              v44 = v47;
            }

            if (v18 >= v45)
            {
              v18 = v45;
            }

            v3 = v44 - v18;
          }

          while (v30 != v9);
          v4 = v56;
          if (v9 != v28)
          {
            v48 = *(this + 4);
            v49 = v48 - v9;
            if (v48 != v9)
            {
              memmove(v28, v9, v48 - v9);
            }

            *(this + 4) = v28 + v49;
          }
        }

        v60 = 0;
        v59 = 0;
        v50 = (*(*this + 56))(this, v18, v3, &v60, &v59);
        v51 = 0;
        if (!v50 && v60 && v59)
        {
          outsize = 0;
          v58 = 0;
          if (mach_vm_read_overwrite(*(this + 4), v4, 1uLL, &v58, &outsize))
          {
            if (os_variant_has_internal_content())
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                buf.n128_u32[0] = 134217984;
                *(buf.n128_u64 + 4) = v4;
                _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Remapped bytes from target are not valid at %#llx", &buf, 0xCu);
              }

              fprintf(*MEMORY[0x1E69E9848], "Remapped bytes from target are not valid at %#llx", v4);
            }

            v51 = 0;
          }

          else
          {
            buf.n128_u64[0] = v18;
            buf.n128_u64[1] = v3;
            v62 = v60;
            std::vector<TRangeValue<Pointer64,unsigned char *>>::insert(this + 3, v28, &buf);
            v51 = v4 - v18 + v62;
          }
        }

        v4 = v51;
      }

      else
      {
        v17 = a2;
        v18 = a2;
        while (1)
        {
          v19 = CSCppTaskMemory::region_at_address(this, v17, 1);
          if (v17 - v19 >= v20)
          {
            break;
          }

          v17 = v20 + v19;
          if (v3 + v18 <= v20 + v19)
          {
            v21 = v20 + v19;
          }

          else
          {
            v21 = v3 + v18;
          }

          if (v18 >= v19)
          {
            v18 = v19;
          }

          v3 = v21 - v18;
          if (v17 >= v7)
          {
            v8 = *(this + 3);
            v9 = *(this + 4);
            v7 = v21;
            goto LABEL_23;
          }
        }

        v4 = 0;
      }
    }

    else
    {
      v4 = a2 - v16 + v10[-1].n128_u64[1];
    }
  }

  v54 = *MEMORY[0x1E69E9840];
  return v4;
}

__n128 *std::vector<TRangeValue<Pointer64,unsigned char *>>::insert(void *a1, __n128 *__src, __n128 *a3)
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
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
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
      std::allocator<TRangeValue<Pointer64,unsigned char *>>::allocate_at_least[abi:ne200100](a1, v16);
    }

    v30 = 0;
    v31 = 8 * (v13 >> 3);
    v32 = v31;
    std::__split_buffer<TRangeValue<Pointer64,unsigned char *>>::emplace_back<TRangeValue<Pointer64,unsigned char *> const&>(&v30, a3);
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

void sub_1D9799E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSCppTaskMemory::footprint(CSCppTaskMemory *this)
{
  v2 = *(this + 4) - *(this + 3) + *(this + 7) - *(this + 6) + 120;
  if (!CSCppMachTaskContainer::is_self_task((this + 8)))
  {
    for (i = *(this + 3); i != *(this + 4); i += 24)
    {
      v2 += *(i + 8);
    }

    for (j = *(this + 6); j != *(this + 7); j += 24)
    {
      v2 += *(j + 8);
    }
  }

  return v2;
}

uint64_t CSCppTaskMemory::to_string@<X0>(CSCppTaskMemory *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "CSCppTaskMemory pid:", 20);
  MEMORY[0x1DA7365D0](v4, *(this + 5));
  if ((v16 & 0x10) != 0)
  {
    v6 = v15;
    if (v15 < v12)
    {
      v15 = v12;
      v6 = v12;
    }

    locale = v11[4].__locale_;
  }

  else
  {
    if ((v16 & 8) == 0)
    {
      v5 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v11[1].__locale_;
    v6 = v11[3].__locale_;
  }

  v5 = v6 - locale;
  if ((v6 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 >= 0x17)
  {
    operator new();
  }

  a2[23] = v5;
  if (v5)
  {
    memmove(a2, locale, v5);
  }

LABEL_14:
  a2[v5] = 0;
  v9 = *MEMORY[0x1E69E54E8];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v10 = MEMORY[0x1E69E5548] + 16;
  if (v14 < 0)
  {
    operator delete(__p);
  }

  v10 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x1DA7366F0](&v17);
}

void sub_1D979A118(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void *CSCppTaskMemory::validate(void *this)
{
  v1 = this[3];
  v2 = this[4];
  if (v1 != v2)
  {
    v3 = v1 + 3;
    v4 = this[3];
    do
    {
      if (v2 != v3 && *v4 < v3[1] + *v3 && *v3 < v4[1] + *v4)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "CSCppTaskMemory: range values must not overlap", 46);
        std::ostringstream::str[abi:ne200100](v19, &v18);
        Exception::Exception(v17, &v18);
        exception = __cxa_allocate_exception(0x20uLL);
        Exception::Exception(exception, v17);
      }

      v4 += 3;
      v3 += 3;
    }

    while (v4 != v2);
  }

  v5 = this[6];
  for (i = this[7]; v5 != i; v5 += 3)
  {
    v7 = v5[1] + *v5;
    v8 = v2;
    if (v1 != v2)
    {
      v8 = v1;
      v9 = 0xAAAAAAAAAAAAAAABLL * (v2 - v1);
      do
      {
        v10 = v9 >> 1;
        v11 = &v8[3 * (v9 >> 1)];
        v13 = *v11;
        v12 = v11 + 3;
        v9 += ~(v9 >> 1);
        if (v13 < v7)
        {
          v8 = v12;
        }

        else
        {
          v9 = v10;
        }
      }

      while (v9);
    }

    if (v8 == v1)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0x1FFFFFFFFFFFFFFDLL;
    }

    this = &v8[v14];
    if (*v5 < *this || v7 > this[1] + *this)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "CSCppTaskMemory: retired memory must be contained by live memory", 64);
      std::ostringstream::str[abi:ne200100](v19, &v18);
      Exception::Exception(v17, &v18);
      v15 = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(v15, v17);
    }
  }

  return this;
}

void sub_1D979A320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void std::allocator<TRangeValue<Pointer64,unsigned char *>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__split_buffer<TRangeValue<Pointer64,unsigned char *>>::emplace_back<TRangeValue<Pointer64,unsigned char *> const&>(__n128 **a1, __n128 *a2)
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

      std::allocator<TRangeValue<Pointer64,unsigned char *>>::allocate_at_least[abi:ne200100](a1[4], v10);
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

char *DemanglingUtilities::demangle_with_reusable_buffer(char *this, char *a2, char **a3, unint64_t *a4)
{
  if (!this)
  {
    return this;
  }

  v6 = *this;
  if (v6 != 95 && v6 != 36)
  {
    return 0;
  }

  if (this[1] == 95)
  {
    v7 = (this + 1);
  }

  else
  {
    v7 = this;
  }

  status = -3;
  if (a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v19 = v8;
  if (a2)
  {
    v9 = *a2;
  }

  else
  {
    v9 = 0;
  }

  if (atomic_load_explicit(&call_external_swift_demangle(char const*,char *,unsigned long *,int *)::onceFlag, memory_order_acquire) != -1)
  {
    v23 = &v21;
    v22 = &v23;
    std::__call_once(&call_external_swift_demangle(char const*,char *,unsigned long *,int *)::onceFlag, &v22, std::__call_once_proxy[abi:ne200100]<std::tuple<call_external_swift_demangle(char const*,char *,unsigned long *,int *)::$_0 &&>>);
  }

  if (demanglerLibraryFunctions)
  {
    if (v9)
    {
      v10 = v19;
    }

    else
    {
      v10 = 0;
    }

    if (v19)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9;
    }

    v13 = demanglerLibraryFunctions(v7, v12, v10);
    if (!v13)
    {
      v16 = -2;
      goto LABEL_33;
    }

    if (v13 < v10)
    {
      goto LABEL_29;
    }

    v14 = (v13 + 1);
    v15 = malloc_type_realloc(v9, v13 + 1, 0x100004077774924uLL);
    if (v15)
    {
      v12 = v15;
      demanglerLibraryFunctions(v7, v15, v14);
      v19 = v14;
LABEL_29:
      this = v12;
      if (!a2)
      {
        return this;
      }

      goto LABEL_48;
    }
  }

  v16 = -3;
LABEL_33:
  status = v16;
  if (*v7 != 95)
  {
    return 0;
  }

  if (*v7 != 23135)
  {
    v17 = *v7 == 24415 && *(v7 + 2) == 90;
    if (!v17 && *v7 != 1516199775)
    {
      return 0;
    }
  }

  if (a2)
  {
    v18 = *a2;
  }

  else
  {
    v18 = 0;
  }

  this = __cxa_demangle(v7, v18, &v19, &status);
  v12 = this;
  if (status)
  {
    this = 0;
  }

  if (a2 && !status)
  {
LABEL_48:
    if (v12 != *a2)
    {
      *a2 = v12;
      if (a3)
      {
        *a3 = v19;
      }
    }

    return v12;
  }

  return this;
}

BOOL stringByAppendingPathComponents(char *__s1, size_t __n, const char *__source, const char *a4)
{
  if (__s1 == __source)
  {
    v7 = strnlen(__s1, __n);
  }

  else
  {
    v7 = strlcpy(__s1, __source, __n);
  }

  if (v7 < __n)
  {
    if (!v7 || __s1[v7 - 1] == 47)
    {
      return strlcpy(&__s1[v7], a4, __n - v7) < __n - v7;
    }

    if (v7 < __n - 2)
    {
      *&__s1[v7++] = 47;
      return strlcpy(&__s1[v7], a4, __n - v7) < __n - v7;
    }
  }

  return 0;
}

const char *filename_from_path(const char *a1)
{
  v1 = a1;
  v2 = strlen(a1);
  if (v2)
  {
    while (v1[v2] != 47)
    {
      if (!--v2)
      {
        return v1;
      }
    }

    v1 += v2 + 1;
  }

  return v1;
}

__int128 *system_dyld_shared_cache_path(void)
{
  {
    system_dyld_shared_cache_path(void)::$_0::operator()();
  }

  return &system_dyld_shared_cache_path(void)::shared_cache_dir;
}

void system_dyld_shared_cache_path(void)::$_0::operator()()
{
  v0 = dyld_shared_cache_file_path();
  if (v0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, v0);
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v3 = &p_p[-1].__r_.__value_.__r.__words[2] + 7;
    while (size)
    {
      v4 = v3[size--];
      if (v4 == 47)
      {
        v5 = size + 1;
        goto LABEL_14;
      }
    }

    v5 = 0;
LABEL_14:
    std::string::basic_string(&system_dyld_shared_cache_path(void)::shared_cache_dir, &__p, 0, v5, &v7);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(&system_dyld_shared_cache_path(void)::shared_cache_dir, "");
  }
}

void sub_1D979AA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CSCppCrashReporterInfoSetter::CSCppCrashReporterInfoSetter(CSCppCrashReporterInfoSetter *this, const char *a2)
{
  v7 = 0;
  pthread_threadid_np(0, &v7);
  pthread_mutex_lock(&CSCppCrashReporterInfoSetter::crash_reporter_mutex);
  v4 = qword_1EDADA590;
  *(this + 1) = qword_1EDADA590;
  v5 = v7;
  if (v4)
  {
    v6 = CSCppCrashReporterInfoSetter::crash_reporter_owner == v7;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    qword_1EDADA590 = a2;
    *this = 1;
    CSCppCrashReporterInfoSetter::crash_reporter_owner = v5;
  }

  else
  {
    *this = 0;
  }

  pthread_mutex_unlock(&CSCppCrashReporterInfoSetter::crash_reporter_mutex);
}

void CSCppCrashReporterInfoSetter::~CSCppCrashReporterInfoSetter(CSCppCrashReporterInfoSetter *this)
{
  if (*this == 1)
  {
    pthread_mutex_lock(&CSCppCrashReporterInfoSetter::crash_reporter_mutex);
    qword_1EDADA590 = *(this + 1);
    pthread_mutex_unlock(&CSCppCrashReporterInfoSetter::crash_reporter_mutex);
  }
}

uint64_t convert_symbol_flags_to_symbolic_representation(char *__dst, size_t __size, int a3)
{
  *__dst = 0;
  if (a3)
  {
    result = strlcat(__dst, "IsFunction, ", __size);
    if ((a3 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((a3 & 2) != 0)
  {
LABEL_5:
    result = strlcat(__dst, "IsDyldStub, ", __size);
  }

LABEL_6:
  if ((a3 & 4) != 0)
  {
    result = strlcat(__dst, "IsObjcMethod, ", __size);
    if ((a3 & 8) == 0)
    {
LABEL_8:
      if ((a3 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_34;
    }
  }

  else if ((a3 & 8) == 0)
  {
    goto LABEL_8;
  }

  result = strlcat(__dst, "IsJavaMethod, ", __size);
  if ((a3 & 0x10) == 0)
  {
LABEL_9:
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = strlcat(__dst, "IsExternal, ", __size);
  if ((a3 & 0x20) == 0)
  {
LABEL_10:
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = strlcat(__dst, "IsPrivateExternal, ", __size);
  if ((a3 & 0x40) == 0)
  {
LABEL_11:
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = strlcat(__dst, "IsThumb, ", __size);
  if ((a3 & 0x80) == 0)
  {
LABEL_12:
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = strlcat(__dst, "IsOmitFramePointer, ", __size);
  if ((a3 & 0x100) == 0)
  {
LABEL_13:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = strlcat(__dst, "IsKnownLength, ", __size);
  if ((a3 & 0x1000) == 0)
  {
LABEL_14:
    if ((a3 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = strlcat(__dst, "IsMarked, ", __size);
  if ((a3 & 0x2000) == 0)
  {
LABEL_15:
    if ((a3 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = strlcat(__dst, "Lock, ", __size);
  if ((a3 & 0x4000) == 0)
  {
LABEL_16:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = strlcat(__dst, "NameSourceNlist, ", __size);
  if ((a3 & 0x8000) == 0)
  {
LABEL_17:
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = strlcat(__dst, "NameSourceDwarf, ", __size);
  if ((a3 & 0x10000) == 0)
  {
LABEL_18:
    if ((a3 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = strlcat(__dst, "NameSourceDwarfMIPSLinkage, ", __size);
  if ((a3 & 0x20000) == 0)
  {
LABEL_19:
    if ((a3 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = strlcat(__dst, "NameValid, ", __size);
  if ((a3 & 0x40000) == 0)
  {
LABEL_20:
    if ((a3 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = strlcat(__dst, "NameAllocated, ", __size);
  if ((a3 & 0x80000) == 0)
  {
LABEL_21:
    if ((a3 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = strlcat(__dst, "MangledNameSourceNlist, ", __size);
  if ((a3 & 0x100000) == 0)
  {
LABEL_22:
    if ((a3 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = strlcat(__dst, "MangledNameSourceDwarf, ", __size);
  if ((a3 & 0x200000) == 0)
  {
LABEL_23:
    if ((a3 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = strlcat(__dst, "MangledNameSourceDwarfMIPSLinkage, ", __size);
  if ((a3 & 0x400000) == 0)
  {
LABEL_24:
    if ((a3 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = strlcat(__dst, "MangledNameValid, ", __size);
  if ((a3 & 0x800000) == 0)
  {
LABEL_25:
    if ((a3 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = strlcat(__dst, "MangledNameAllocated, ", __size);
  if ((a3 & 0x1000000) == 0)
  {
LABEL_26:
    if ((a3 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = strlcat(__dst, "IsObjcMethodValid, ", __size);
  if ((a3 & 0x2000000) == 0)
  {
LABEL_27:
    if ((a3 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = strlcat(__dst, "NList, ", __size);
  if ((a3 & 0x4000000) == 0)
  {
LABEL_28:
    if ((a3 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = strlcat(__dst, "Dwarf, ", __size);
  if ((a3 & 0x8000000) == 0)
  {
LABEL_29:
    if ((a3 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_55:
    result = strlcat(__dst, "FunctionStarts, ", __size);
    if ((a3 & 0x20000000) == 0)
    {
      return result;
    }

    goto LABEL_56;
  }

LABEL_54:
  result = strlcat(__dst, "DebugMap, ", __size);
  if ((a3 & 0x10000000) != 0)
  {
    goto LABEL_55;
  }

LABEL_30:
  if ((a3 & 0x20000000) == 0)
  {
    return result;
  }

LABEL_56:

  return strlcat(__dst, "Merged, ", __size);
}