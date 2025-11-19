void sub_1D97B93B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    a66 = __p;
    operator delete(__p);
  }

  v68 = *(v66 - 256);
  if (v68)
  {
    *(v66 - 248) = v68;
    operator delete(v68);
  }

  CSCppCoreFileMemory::~CSCppCoreFileMemory((v66 - 224));
  CSCppFileMemory::~CSCppFileMemory(&a19);
  CSCppFileMemory::~CSCppFileMemory(&a34);
  _Unwind_Resume(a1);
}

uint64_t create_mapped_memory_cache_for_core_file_with_label(char *a1, uint64_t a2, void *a3)
{
  common_create_mapped_memory_cache_for_core_file_with_label_and_optional_exclave_metadata(a1, 1, &v5);
  if (v6 == 1)
  {
    return v5;
  }

  result = 0;
  if (a3)
  {
    *a3 = v5;
  }

  return result;
}

uint64_t mapped_memory_is_64_bit(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 101);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t *std::unique_ptr<mapped_memory_t>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 192);
    *(v2 + 192) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    std::mutex::~mutex((v2 + 128));
    v4 = *(v2 + 64);
    if (v4)
    {
      *(v2 + 72) = v4;
      operator delete(v4);
    }

    std::__tree<TRange<Pointer64>>::destroy(v2 + 40, *(v2 + 48));
    MEMORY[0x1DA736760](v2, 0x10F0C404EA5A0FDLL);
  }

  return a1;
}

void set_mapped_memory_cache_region_info_block(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 128));
  *(a1 + 112) = a2;

  std::mutex::unlock((a1 + 128));
}

uint64_t destroy_mapped_memory_cache(uint64_t result)
{
  if (result)
  {
    v1 = result;
    clear_mapped_memory(result);
    v2 = *(v1 + 88);
    if (v2)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v2);
    }

    v3 = *(v1 + 92);
    if (v3)
    {
      task_resume2(v3);
    }

    v4 = *(v1 + 192);
    *(v1 + 192) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    std::mutex::~mutex((v1 + 128));
    v5 = *(v1 + 64);
    if (v5)
    {
      *(v1 + 72) = v5;
      operator delete(v5);
    }

    std::__tree<TRange<Pointer64>>::destroy(v1 + 40, *(v1 + 48));

    JUMPOUT(0x1DA736760);
  }

  return result;
}

void clear_mapped_memory(uint64_t a1)
{
  std::mutex::lock((a1 + 128));
  v2 = *(a1 + 40);
  v3 = (a1 + 48);
  if (v2 != (a1 + 48))
  {
    do
    {
      v4 = *(v2 + 3);
      v11 = *(v2 + 2);
      v12 = v4;
      v13 = v2[8];
      deallocate_node(&v11);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  std::__tree<TRange<Pointer64>>::destroy(a1 + 40, *(a1 + 48));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = v3;
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  if (v8 != v9)
  {
    do
    {
      v10 = v8[1];
      v11 = *v8;
      v12 = v10;
      v13 = *(v8 + 4);
      deallocate_node(&v11);
      v8 = (v8 + 40);
    }

    while (v8 != v9);
    v8 = *(a1 + 64);
  }

  *(a1 + 72) = v8;
  *a1 = 0;
  *(a1 + 8) = 0;

  std::mutex::unlock((a1 + 128));
}

tree *__cdecl find_node(const char *a1, tree *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = v3;
  v5 = v2;
  std::mutex::lock(a1 + 2);
  v8 = a2 + v5;
  if ((a2 + v5) <= a2)
  {
    goto LABEL_13;
  }

  v9 = a1 + 48;
  for (i = *(a1 + 6); i; i = *(i + 8 * v13))
  {
    v11 = *(i + 32);
    v12 = v11 > a2;
    v13 = v11 <= a2;
    if (v12)
    {
      v9 = i;
    }
  }

  if (v9 == *(a1 + 5))
  {
    goto LABEL_13;
  }

  v14 = *v9;
  if (*v9)
  {
    do
    {
      v15 = v14;
      v14 = *(v14 + 8);
    }

    while (v14);
  }

  else
  {
    do
    {
      v15 = *(v9 + 2);
      v20 = *v15 == v9;
      v9 = v15;
    }

    while (v20);
  }

  v17 = (v15 + 32);
  v16 = *(v15 + 32);
  if (v16 > a2)
  {
    goto LABEL_13;
  }

  v19 = *(v15 + 40) + v16;
  v20 = v19 <= a2 || v4 == 0;
  if (v20)
  {
    if (v19 > a2)
    {
      goto LABEL_25;
    }
  }

  else if (v19 >= v8)
  {
LABEL_25:
    ++*(v15 + 64);
    goto LABEL_14;
  }

LABEL_13:
  v17 = 0;
LABEL_14:
  std::mutex::unlock(a1 + 2);
  return v17;
}

BOOL vm_tag_is_malloc(unsigned int a1)
{
  result = 1;
  if (a1 > 0xD || ((1 << a1) & 0x3BDE) == 0)
  {
    return a1 == 99;
  }

  return result;
}

void *map_new_node(uint64_t a1, mach_vm_address_t a2, uint64_t a3, int *a4)
{
  v94 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v8 = *(a1 + 192);
      std::mutex::lock((a1 + 128));
      if (v8)
      {
        cur_protection = 0;
        v85 = 0;
        v86 = 0;
        core_file_dumped_region_containing_location = find_core_file_dumped_region_containing_location(*(a1 + 192) + 16, a2);
        if (v10)
        {
          v11 = *core_file_dumped_region_containing_location;
          v12 = core_file_dumped_region_containing_location[3];
          *&info = core_file_dumped_region_containing_location[2];
          *(&info + 1) = v12;
          v89[0] = 1;
          *&v89[8] = v11;
          *&v89[16] = v12;
          v90 = 1;
        }

        else
        {
          v37 = *(a1 + 192);
          LOBYTE(info) = 0;
          v90 = 0;
          if ((*(v37 + 112) & 1) == 0 || (region_at_address = CSCppCoreFileRegionsTree::get_region_at_address((v37 + 88), a2, 0x270FuLL), (v39 & 1) == 0) || (a2 - *region_at_address < *(region_at_address + 8) ? (v40 = *(region_at_address + 67) == 3) : (v40 = 0), !v40))
          {
            if (!a4)
            {
              goto LABEL_138;
            }

            v27 = 0;
            v28 = 1;
            goto LABEL_84;
          }

          *&size[7] = *region_at_address;
          LOBYTE(info) = 0;
          v89[0] = 0;
          *&v89[1] = *size;
          *&v89[16] = *&size[15];
          v90 = 1;
        }

        std::vector<CSCoreFileRangePair>::push_back[abi:ne200100](&cur_protection, &info);
        if ((v90 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v13 = *&v89[8];
        v14 = *&v89[16];
        v15 = *&v89[16] + *&v89[8];
        if (a3 + a2 > *&v89[16] + *&v89[8])
        {
          while (1)
          {
            v16 = find_core_file_dumped_region_containing_location(*(a1 + 192) + 16, v15);
            if (v17)
            {
              break;
            }

            v20 = *(a1 + 192);
            size[0] = 0;
            v93 = 0;
            if ((*(v20 + 112) & 1) == 0)
            {
              goto LABEL_60;
            }

            v21 = CSCppCoreFileRegionsTree::get_region_at_address((v20 + 88), v15, 0x270FuLL);
            if (v22)
            {
              v23 = v93;
              v24 = *v21 == v15 && *(v21 + 67) == 3;
              if (v24)
              {
                *(address + 7) = *v21;
                size[0] = 0;
                size[16] = 0;
                *&size[17] = *address;
                *&size[32] = *(&address[1] + 7);
                if (v93)
                {
                  goto LABEL_22;
                }

                goto LABEL_10;
              }
            }

            else
            {
              v23 = v93;
            }

            if ((v23 & 1) == 0)
            {
LABEL_60:
              if (a4)
              {
                *a4 = 1;
              }

LABEL_138:
              v27 = 0;
              goto LABEL_139;
            }

LABEL_22:
            std::vector<CSCoreFileRangePair>::push_back[abi:ne200100](&cur_protection, size);
            if ((v93 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            v14 = *&size[32];
            v15 = *&size[32] + *&size[24];
            if (a3 + a2 <= *&size[32] + *&size[24])
            {
              if ((v90 & 1) == 0)
              {
                std::__throw_bad_optional_access[abi:ne200100]();
              }

              v13 = *&v89[8];
              goto LABEL_26;
            }
          }

          v18 = *v16;
          v19 = v16[3];
          *size = v16[2];
          *&size[8] = v19;
          size[16] = 1;
          *&size[24] = v18;
          *&size[32] = v19;
LABEL_10:
          v93 = 1;
          goto LABEL_22;
        }

LABEL_26:
        v25 = v15 - v13;
        *size = v13;
        *&size[8] = v25;
        *&size[24] = *(a1 + 88);
        *&size[32] = 0;
        if (!*(a1 + 192) || cur_protection == v85 || (address[0] = 0, v26 = MEMORY[0x1E69E9A60], mach_vm_allocate(*MEMORY[0x1E69E9A60], address, v25, 1)))
        {
LABEL_29:
          if (!a4)
          {
            goto LABEL_138;
          }

          v27 = 0;
          v28 = 5;
LABEL_84:
          *a4 = v28;
          goto LABEL_139;
        }

        v46 = cur_protection;
        v47 = v85;
        if (cur_protection != v85)
        {
          v48 = *MEMORY[0x1E69E9AB8];
          v49 = cur_protection;
          while (*(v49 + 16) != 1 || (*v49 & v48) == 0 && (*(v49 + 8) & v48) == 0)
          {
            v49 += 40;
            if (v49 == v85)
            {
              v50 = 1;
              goto LABEL_106;
            }
          }

          v50 = 0;
          do
          {
LABEL_106:
            if (*(v46 + 16) == 1)
            {
              v59 = *(v46 + 24) - *(cur_protection + 24);
              if (v50)
              {
                if (mmap((address[0] + v59), *(v46 + 8), 1, 18, *(*(a1 + 192) + 8), *v46) == -1)
                {
                  goto LABEL_121;
                }
              }

              else
              {
                while (1)
                {
                  v60 = pread(*(*(a1 + 192) + 8), (address[0] + v59), *(v46 + 8), *v46);
                  if (v60 != -1)
                  {
                    break;
                  }

                  if (*__error() != 4)
                  {
                    goto LABEL_114;
                  }
                }

                if (v60 < *(v46 + 8))
                {
LABEL_121:
                  mach_vm_deallocate(*v26, address[0], v25);
                  goto LABEL_29;
                }
              }
            }

LABEL_114:
            v46 += 40;
          }

          while (v46 != v47);
        }

        *&size[16] = address[0];
        v61 = std::__tree<mapped_region_node_internal_t,CompareMappedRegionNode,std::allocator<mapped_region_node_internal_t>>::__emplace_unique_key_args<mapped_region_node_internal_t,mapped_region_node_internal_t const&>(a1 + 40, size);
        v62 = v61;
        v64 = v63;
        v65 = v61;
        if (v63)
        {
          v66 = v61[1];
          if (v66)
          {
            do
            {
              v65 = v66;
              v66 = *v66;
            }

            while (v66);
          }

          else
          {
            v68 = v61;
            do
            {
              v65 = v68[2];
              v24 = *v65 == v68;
              v68 = v65;
            }

            while (!v24);
          }
        }

        if (v65 != (a1 + 48))
        {
          do
          {
            v69 = v65[4];
            if (*size > v69 || v65[5] + v69 > *&size[8] + *size)
            {
              break;
            }

            v70 = v65[1];
            v71 = v65;
            if (v70)
            {
              do
              {
                v72 = v70;
                v70 = *v70;
              }

              while (v70);
            }

            else
            {
              do
              {
                v72 = v71[2];
                v24 = *v72 == v71;
                v71 = v72;
              }

              while (!v24);
            }

            std::vector<mapped_region_node_internal_t>::push_back[abi:ne200100](a1 + 64, v65 + 2);
            std::__tree<TRangeValue<Pointer64,unsigned char *>>::__remove_node_pointer((a1 + 40), v65);
            operator delete(v65);
            v65 = v72;
          }

          while (v72 != (a1 + 48));
        }

        if ((v64 & 1) == 0)
        {
          v73 = std::__tree<mapped_region_node_internal_t,CompareMappedRegionNode,std::allocator<mapped_region_node_internal_t>>::__emplace_unique_key_args<mapped_region_node_internal_t,mapped_region_node_internal_t const&>(a1 + 40, size);
          if ((v74 & 1) == 0)
          {
            goto LABEL_138;
          }

          v62 = v73;
        }

        ++*a1;
        *(a1 + 8) += v14;
        v27 = v62 + 4;
LABEL_139:
        if (cur_protection)
        {
          v85 = cur_protection;
          operator delete(cur_protection);
        }

        goto LABEL_163;
      }

      v30 = *(a1 + 88);
      LODWORD(address[0]) = 999999;
      infoCnt = 12;
      *size = 0;
      cur_protection = a2;
      if (mach_vm_region_recurse(v30, &cur_protection, size, address, &info, &infoCnt) || (v31 = cur_protection, cur_protection > a2) || (v32 = *size, *size + cur_protection <= a2))
      {
        v35 = 0;
        v31 = 0;
        v32 = 0;
        v34 = 1;
      }

      else
      {
        v34 = (info & 2) == 0 && ((BYTE4(info) & 2) == 0 || v89[15] != 2);
        v35 = *&v89[4] == 64;
      }

      if (v31 - 1 >= a2)
      {
LABEL_79:
        if (a4)
        {
          v27 = 0;
          v36 = 1;
          goto LABEL_81;
        }

LABEL_162:
        v27 = 0;
        goto LABEL_163;
      }

      if (v35)
      {
LABEL_50:
        if (a4)
        {
          v27 = 0;
          v36 = 4;
LABEL_81:
          *a4 = v36;
LABEL_163:
          std::mutex::unlock((a1 + 128));
          goto LABEL_164;
        }

        goto LABEL_162;
      }

      v41 = a3 + a2;
      v42 = v31;
      while (1)
      {
        v43 = v42 + v32;
        if (v41 <= v42 + v32)
        {
          break;
        }

        LODWORD(address[0]) = 999999;
        infoCnt = 12;
        *size = 0;
        cur_protection = v42 + v32;
        if (mach_vm_region_recurse(v30, &cur_protection, size, address, &info, &infoCnt))
        {
          goto LABEL_79;
        }

        v42 = cur_protection;
        if (cur_protection > v43)
        {
          goto LABEL_79;
        }

        v32 = *size;
        if (*size + cur_protection <= v43)
        {
          goto LABEL_79;
        }

        if ((info & 2) != 0)
        {
          v45 = 0;
        }

        else
        {
          v44 = (BYTE4(info) & 2) != 0 && v89[15] == 2;
          v45 = !v44;
        }

        if (!cur_protection)
        {
          goto LABEL_79;
        }

        v34 &= v45;
        if (*&v89[4] == 64)
        {
          goto LABEL_50;
        }
      }

      v51 = v43 - v31;
      if (CSRangeContainsRange(*(a1 + 16), *(a1 + 24), v31, v43 - v31) && ((*(a1 + 32) == 0) & v34) != 0)
      {
        v30 = *MEMORY[0x1E69E9A60];
      }

      if (*(a1 + 100) == 1 && !mach_task_is_self(v30))
      {
        *&info = 0;
        *size = 0;
        overwrite = mach_vm_read_overwrite(*(a1 + 88), v31, 1uLL, &info, size);
        if (overwrite)
        {
LABEL_142:
          if (a4)
          {
            *a4 = overwrite;
          }

          goto LABEL_162;
        }
      }

      *&info = v31;
      *(&info + 1) = v43 - v31;
      *&v89[8] = v30;
      *&v89[16] = 0;
      if (mach_task_is_self(v30))
      {
        v52 = *(a1 + 32) + v31;
      }

      else
      {
        LODWORD(cur_protection) = 0;
        LODWORD(address[0]) = 1;
        *size = 0;
        overwrite = remap_memory_from_target(*MEMORY[0x1E69E9A60], size, v43 - v31, 0, 33, v30, v31, 0, &cur_protection, address, 1u);
        if (overwrite)
        {
          goto LABEL_142;
        }

        v52 = *size;
      }

      *v89 = v52;
      v53 = std::__tree<mapped_region_node_internal_t,CompareMappedRegionNode,std::allocator<mapped_region_node_internal_t>>::__emplace_unique_key_args<mapped_region_node_internal_t,mapped_region_node_internal_t const&>(a1 + 40, &info);
      v54 = v53;
      v56 = v55;
      v57 = v53;
      if (v55)
      {
        v58 = v53[1];
        if (v58)
        {
          do
          {
            v57 = v58;
            v58 = *v58;
          }

          while (v58);
        }

        else
        {
          v75 = v53;
          do
          {
            v57 = v75[2];
            v24 = *v57 == v75;
            v75 = v57;
          }

          while (!v24);
        }
      }

      if (v57 != (a1 + 48))
      {
        do
        {
          v76 = v57[4];
          if (info > v76 || v57[5] + v76 > *(&info + 1) + info)
          {
            break;
          }

          v77 = v57[1];
          v78 = v57;
          if (v77)
          {
            do
            {
              v79 = v77;
              v77 = *v77;
            }

            while (v77);
          }

          else
          {
            do
            {
              v79 = v78[2];
              v24 = *v79 == v78;
              v78 = v79;
            }

            while (!v24);
          }

          std::vector<mapped_region_node_internal_t>::push_back[abi:ne200100](a1 + 64, v57 + 2);
          std::__tree<TRangeValue<Pointer64,unsigned char *>>::__remove_node_pointer((a1 + 40), v57);
          operator delete(v57);
          v57 = v79;
        }

        while (v79 != (a1 + 48));
      }

      if ((v56 & 1) == 0)
      {
        v80 = std::__tree<mapped_region_node_internal_t,CompareMappedRegionNode,std::allocator<mapped_region_node_internal_t>>::__emplace_unique_key_args<mapped_region_node_internal_t,mapped_region_node_internal_t const&>(a1 + 40, &info);
        if ((v81 & 1) == 0)
        {
          goto LABEL_162;
        }

        v54 = v80;
      }

      if (!mach_task_is_self(v30))
      {
        ++*a1;
        *(a1 + 8) += v51;
      }

      v27 = v54 + 4;
      goto LABEL_163;
    }

    if (a4)
    {
      v27 = 0;
      v29 = 1;
      goto LABEL_35;
    }

LABEL_36:
    v27 = 0;
    goto LABEL_164;
  }

  if (!a4)
  {
    goto LABEL_36;
  }

  v27 = 0;
  v29 = 4;
LABEL_35:
  *a4 = v29;
LABEL_164:
  v82 = *MEMORY[0x1E69E9840];
  return v27;
}

void std::vector<mapped_region_node_internal_t>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::allocator<mapped_region_node_internal_t>::allocate_at_least[abi:ne200100](a1, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    v15 = a2[1];
    *(v13 + 32) = *(a2 + 4);
    *v13 = v14;
    *(v13 + 16) = v15;
    v8 = 40 * v9 + 40;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  *(a1 + 8) = v8;
}

uint64_t unmap_node(uint64_t a1, tree *a2, uint64_t a3, tree **a4, tree **a5)
{
  node = find_node(a1, a2);
  if (node)
  {
    v9 = node;
    std::mutex::lock((a1 + 128));
    if (LODWORD(v9->parent) == *MEMORY[0x1E69E9A60])
    {
      v10 = 0;
      if (!a4)
      {
LABEL_5:
        if (a5)
        {
          *a5 = v9->next_peer;
        }

        std::__tree<mapped_region_node_internal_t,CompareMappedRegionNode,std::allocator<mapped_region_node_internal_t>>::__erase_unique<mapped_region_node_internal_t>((a1 + 40), v9);
        std::mutex::unlock((a1 + 128));
        return v10;
      }
    }

    else
    {
      --*a1;
      *(a1 + 8) -= v9->next_peer;
      v12 = *&v9->next;
      v13[0] = *&v9->child_list;
      v13[1] = v12;
      label = v9->label;
      v10 = deallocate_node(v13);
      if (!a4)
      {
        goto LABEL_5;
      }
    }

    *a4 = v9->child_list;
    goto LABEL_5;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v10 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  return v10;
}

uint64_t deallocate_node(uint64_t a1)
{
  if (mach_task_is_self(*(a1 + 24)))
  {
    return 0;
  }

  v3 = *MEMORY[0x1E69E9A60];
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);

  return mach_vm_deallocate(v3, v4, v5);
}

unint64_t *next_node(uint64_t a1, unint64_t *a2)
{
  v2 = a2;
  if (a2)
  {
    std::mutex::lock((a1 + 128));
    v4 = *(a1 + 48);
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = *v2;
    v6 = a1 + 48;
    do
    {
      if (v5 < *(v4 + 32))
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (v5 >= *(v4 + 32)));
    }

    while (v4);
    if (v6 == a1 + 48 || (v2 = (v6 + 32), v7 = *(v6 + 32), v7 <= v5) && *(v6 + 40) + v7 > v5)
    {
LABEL_10:
      v2 = 0;
    }

    std::mutex::unlock((a1 + 128));
  }

  return v2;
}

void enumerate_mapped_memory_cache(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 128));
  v4 = *(a1 + 40);
  if (v4 != (a1 + 48))
  {
    do
    {
      v5 = *(v4 + 3);
      v13 = *(v4 + 2);
      v14 = v5;
      v15 = v4[8];
      (*(a2 + 16))(a2, &v13, 0);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != (a1 + 48));
  }

  v9 = *(a1 + 64);
  for (i = *(a1 + 72); v9 != i; v9 = (v9 + 40))
  {
    v11 = *v9;
    v12 = v9[1];
    v15 = *(v9 + 4);
    v13 = v11;
    v14 = v12;
    (*(a2 + 16))(a2, &v13, 1);
  }

  std::mutex::unlock((a1 + 128));
}

uint64_t mapped_memory_suspend_target(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 192) || (v2 = *(a1 + 96), *(a1 + 96) = v2 + 1, v2) || mach_task_is_self(*(a1 + 88)))
    {
      v3 = 0;
    }

    else
    {
      v3 = task_suspend2(*(a1 + 88), (a1 + 92));
      if (v3)
      {
        snprintf(__str, 0x400uLL, "%s: %s failed ", "mapped_memory_suspend_target", "can't suspend");
        mach_error(__str, v3);
      }
    }
  }

  else
  {
    v3 = 4;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t mapped_memory_resume_target(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 96);
    if (!v2 || *(a1 + 192) || (v3 = v2 - 1, (*(a1 + 96) = v3) != 0) || mach_task_is_self(*(a1 + 88)))
    {
      v4 = 0;
    }

    else
    {
      v4 = task_resume2(*(a1 + 92));
      *(a1 + 92) = 0;
      if (v4)
      {
        snprintf(__str, 0x400uLL, "%s: %s failed ", "mapped_memory_resume_target", "can't suspend");
        mach_error(__str, v4);
      }
    }
  }

  else
  {
    v4 = 4;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t mapped_memory_read_pointer(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 101))
  {
    v5 = 8;
  }

  else
  {
    v5 = 4;
  }

  v8 = 0;
  result = mapped_memory_read(a1, (a2 & 0xF0FFFFFFFFFFFFFFLL), v5, &v8);
  if (v8)
  {
    if (*(a1 + 101) == 1)
    {
      v7 = *v8;
    }

    else
    {
      v7 = *v8;
    }

    result = 0;
    *a3 = v7;
  }

  return result;
}

uint64_t mapped_memory_read(const char *a1, tree *a2, uint64_t a3, void *a4)
{
  node = find_node(a1, a2);
  if (!node)
  {
    v11 = 0;
    node = map_new_node(a1, a2, a3, &v11);
    if (!node)
    {
      return v11;
    }
  }

  v9 = 0;
  *a4 = node->next + a2 - node->child_list;
  return v9;
}

uint64_t mapped_memory_task_threads(uint64_t a1, unsigned int **a2, unsigned int *a3)
{
  if (!a1)
  {
    return 4;
  }

  if (*(a1 + 192))
  {
    return CSCppCoreFileMetadata::task_threads(*(a1 + 192), a2, a3);
  }

  return task_threads(*(a1 + 88), a2, a3);
}

uint64_t mapped_memory_thread_get_state(uint64_t a1, thread_read_t target_act, thread_state_flavor_t flavor, thread_state_t old_state, mach_msg_type_number_t *old_stateCnt)
{
  if (!a1)
  {
    return 4;
  }

  v5 = *(a1 + 192);
  if (v5)
  {
    return CSCppCoreFileMetadata::thread_get_state(v5, target_act, flavor, old_state, old_stateCnt);
  }

  else
  {
    return thread_get_state(target_act, flavor, old_state, old_stateCnt);
  }
}

uint64_t mapped_memory_core_file_mach_vm_region_recurse_submap_short_64(uint64_t a1, unint64_t *a2, void *a3, _DWORD *a4, uint64_t a5)
{
  if (a1 && (v5 = *(a1 + 192)) != 0)
  {
    return CSCppCoreFileMetadata::mach_vm_region_recurse_submap_short_64(v5, a2, a3, a4, a5);
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_mach_vm_region_recurse_submap_64(uint64_t a1, unint64_t *a2, void *a3, _DWORD *a4, uint64_t a5)
{
  if (a1 && (v5 = *(a1 + 192)) != 0)
  {
    return CSCppCoreFileMetadata::mach_vm_region_recurse_submap_64(v5, a2, a3, a4, a5);
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_mach_vm_page_range_query(uint64_t a1, unint64_t a2, unint64_t a3, _DWORD *a4, unint64_t *a5, int a6)
{
  if (a1 && (v6 = *(a1 + 192)) != 0)
  {
    return CSCppCoreFileMetadata::mach_vm_page_range_query(v6, a2, a3, a4, a5, a6);
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_mach_vm_purgable_control(uint64_t a1, unint64_t a2, int a3, int *a4)
{
  if (a1 && (v4 = *(a1 + 192)) != 0)
  {
    return CSCppCoreFileMetadata::mach_vm_purgable_control(v4, a2, a3, a4);
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_udata_ptrs(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 192)) != 0)
  {
    return (*(*v1 + 16))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_owned_vm_objects(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 192)) != 0)
  {
    return (*(*v1 + 24))();
  }

  else
  {
    return 4;
  }
}

unint64_t mapped_memory_core_file_region_filename(uint64_t a1, unint64_t a2, char *a3, unsigned int a4)
{
  if (a1 && (v4 = *(a1 + 192)) != 0)
  {
    return CSCppCoreFileMetadata::region_filename(v4, a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t mapped_memory_core_file_get_proc_name(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 32))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_proc_path(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 40))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_parent_proc_name(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 48))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_parent_proc_path(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 56))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_pid(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 64))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ppid(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 72))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_proc_starttime_sec(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 80))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_proc_starttime_usec(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 88))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_userstack(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 96))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_proc_flags(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 104))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_argslen(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 112))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_proc_argc(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 120))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_dirty_flags(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 128))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_dyld_all_image_infos_addr(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 144))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_dyld_shared_cache_range(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 152))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ledger_internal(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 160))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ledger_internal_compressed(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 168))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ledger_iokit_mapped(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 176))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ledger_alternate_accounting(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 184))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ledger_alternate_compressed(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 192))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ledger_purgable_nonvolatile(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 200))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ledger_purgable_nonvolatile_compressed(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 208))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ledger_page_table(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 216))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ledger_phys_footprint(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 224))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ledger_phys_footprint_lifetime_max(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 232))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ledger_network_nonvolatile(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 240))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ledger_network_nonvolatile_compressed(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 248))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ledger_wired_mem(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 256))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ledger_tagged_footprint(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 264))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ledger_tagged_footprint_compressed(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 272))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ledger_media_footprint(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 280))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ledger_media_footprint_compressed(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 288))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ledger_graphics_footprint(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 296))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ledger_graphics_footprint_compressed(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 304))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ledger_neural_footprint(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 312))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_ledger_neural_footprint_compressed(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *(a1 + 192)) != 0)
  {
    return (*(*v2 + 320))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_get_architecture(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 192)) != 0)
  {
    return (*(*v1 + 136))();
  }

  else
  {
    return 4;
  }
}

uint64_t mapped_memory_core_file_has_info_for_memory_analysis(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 192)) != 0)
  {
    return (*(*v1 + 328))();
  }

  else
  {
    return 0;
  }
}

_DWORD *mapped_memory_core_file_is_exclavecore(_DWORD *result)
{
  if (result)
  {
    result = *(result + 24);
    if (result)
    {
      v1 = **result;
      if (result)
      {
        return (result[30] == 1);
      }
    }
  }

  return result;
}

char **mapped_memory_core_file_is_exclave(char **result)
{
  if (result)
  {
    result = result[24];
    if (result)
    {
      v1 = **result;
    }
  }

  return result;
}

uint64_t mapped_memory_core_file_get_exclave_vm_flags_for_address(uint64_t a1, unint64_t a2, unsigned int *a3)
{
  if (!a1)
  {
    return 4;
  }

  v3 = *(a1 + 192);
  if (!v3)
  {
    return 4;
  }

  v6 = **v3;
  if (!v7)
  {
    return 4;
  }

  return CSCppCoreFileExclavesMetadata::get_exclave_vm_flags_for_address(v7, a2, a3);
}

uint64_t mapped_memory_core_file_get_addressing_mask(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 4;
  }

  result = 4;
  if (a2)
  {
    v4 = *(a1 + 192);
    if (v4)
    {
      if (*(v4 + 80) == 1)
      {
        result = 0;
        *a2 = *(v4 + 72);
      }

      else
      {
        return 5;
      }
    }
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,mapped_memory_t *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mapped_memory_t *>>>::find<unsigned int>(void *a1, unsigned int *a2)
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
      v5 = v3 % v2.i32[0];
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
      if (*(result + 4) == v3)
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

void std::vector<mapped_memory_core_file_dumped_region_info_t>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::allocator<mapped_memory_core_file_dumped_region_info_t>::allocate_at_least[abi:ne200100](a1, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    v15 = a2[1];
    *(v13 + 32) = *(a2 + 4);
    *v13 = v14;
    *(v13 + 16) = v15;
    v8 = 40 * v9 + 40;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  *(a1 + 8) = v8;
}

void parse_thread_load_command(const thread_command *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = 0;
  v28 = 0;
  v26 = &v27;
  cmdsize = a1->cmdsize;
  if (cmdsize <= 8)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v19 = a2 + 8;
LABEL_29:
    *a2 = v19;
    v20 = 1;
  }

  else
  {
    v21 = a2;
    v3 = 8;
    v22 = a1;
    do
    {
      if (v3 + 8 > cmdsize || (v4 = (a1 + v3), v5 = *(&a1->cmdsize + v3), v5 >> 30) || (v6 = 4 * v5, v7 = 4 * v5 + 8, v7 > cmdsize))
      {
        v20 = 0;
        a2 = v21;
        *v21 = 0;
        goto LABEL_31;
      }

      __p = 0;
      v24 = 0;
      v25 = 0;
      std::vector<unsigned char>::reserve(&__p, 4 * v5);
      if (v5)
      {
        v8 = v4 + 2;
        v9 = v24;
        do
        {
          if (v9 >= v25)
          {
            v10 = __p;
            v11 = (v9 - __p);
            v12 = v9 - __p + 1;
            if (v12 < 0)
            {
              std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
            }

            v13 = v25 - __p;
            if (2 * (v25 - __p) > v12)
            {
              v12 = 2 * v13;
            }

            if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v14 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v14 = v12;
            }

            if (v14)
            {
              operator new();
            }

            v15 = v9 - __p;
            *v11 = *v8;
            v9 = v11 + 1;
            memcpy(0, v10, v15);
            __p = 0;
            v24 = v11 + 1;
            v25 = 0;
            if (v10)
            {
              operator delete(v10);
            }
          }

          else
          {
            *v9++ = *v8;
          }

          v24 = v9;
          ++v8;
          --v6;
        }

        while (v6);
      }

      v29 = v4;
      v16 = std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v26, v4) + 5;
      if (v16 != &__p)
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v16, __p, v24, v24 - __p);
      }

      if (__p)
      {
        v24 = __p;
        operator delete(__p);
      }

      v3 += v7;
      a1 = v22;
      cmdsize = v22->cmdsize;
    }

    while (v3 < cmdsize);
    v17 = v27;
    v18 = v28;
    a2 = v21;
    *v21 = v26;
    *(v21 + 8) = v17;
    v19 = v21 + 8;
    *(v21 + 16) = v18;
    if (!v18)
    {
      goto LABEL_29;
    }

    v17[2] = v19;
    v26 = &v27;
    v20 = 1;
    v27 = 0;
    v28 = 0;
  }

LABEL_31:
  *(a2 + 24) = v20;
  std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy(&v26, v27);
}

void sub_1D97BC064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16, void *a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy(&a16, a17);
  _Unwind_Resume(a1);
}

uint64_t std::optional<CSCppCoreFileRegionsTree>::operator=[abi:ne200100]<CSCppCoreFileRegionsTree const&,void>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      std::vector<CSCppCoreFileRegionInfo>::__assign_with_size[abi:ne200100]<CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(a1, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<CSCppCoreFileRegionInfo>::__init_with_size[abi:ne200100]<CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(a1, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t std::optional<CSCppCoreFileTaskCrashinfo>::operator=[abi:ne200100]<CSCppCoreFileTaskCrashinfo const&,void>(uint64_t a1, CSCppCoreFileTaskCrashinfo *a2)
{
  if (*(a1 + 440) == 1)
  {
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(a1, a2);
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 32), (a2 + 32));
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 64), (a2 + 64));
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a1 + 96), a2 + 4);
    *(a1 + 128) = *(a2 + 8);
    v4 = *(a2 + 9);
    v5 = *(a2 + 10);
    v6 = *(a2 + 11);
    *(a1 + 188) = *(a2 + 188);
    *(a1 + 160) = v5;
    *(a1 + 176) = v6;
    *(a1 + 144) = v4;
    std::__optional_storage_base<std::vector<unsigned long long>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<unsigned long long>,false> const&>(a1 + 208, a2 + 208);
    std::__optional_storage_base<std::vector<CS_vm_object_query_data_t>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<CS_vm_object_query_data_t>,false> const&>(a1 + 240, a2 + 240);
    v7 = *(a2 + 17);
    v8 = *(a2 + 19);
    *(a1 + 288) = *(a2 + 18);
    *(a1 + 304) = v8;
    *(a1 + 272) = v7;
    v9 = *(a2 + 20);
    v10 = *(a2 + 21);
    v11 = *(a2 + 23);
    *(a1 + 352) = *(a2 + 22);
    *(a1 + 368) = v11;
    *(a1 + 320) = v9;
    *(a1 + 336) = v10;
    v12 = *(a2 + 24);
    v13 = *(a2 + 25);
    v14 = *(a2 + 26);
    *(a1 + 432) = *(a2 + 54);
    *(a1 + 400) = v13;
    *(a1 + 416) = v14;
    *(a1 + 384) = v12;
  }

  else
  {
    CSCppCoreFileTaskCrashinfo::CSCppCoreFileTaskCrashinfo(a1, a2);
    *(a1 + 440) = 1;
  }

  return a1;
}

void sub_1D97BC414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a66 == 1)
  {
    CSCppCoreFileTaskCrashinfo::~CSCppCoreFileTaskCrashinfo(&a11);
  }

  if (*(v68 - 152) == 1)
  {
    *(v68 - 96) = v68 - 176;
    std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100]((v68 - 96));
  }

  std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(v68 - 144, *(v68 - 136));
  v70 = *(v68 - 120);
  if (v70)
  {
    *(v68 - 112) = v70;
    operator delete(v70);
  }

  MEMORY[0x1DA736760](v67, v66);
  _Unwind_Resume(a1);
}

void std::allocator<mapped_memory_core_file_dumped_region_info_t>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,std::vector<unsigned char>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[5];
    if (v3)
    {
      __p[6] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v10 = 2 * v8;
      if (2 * v8 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (v12 - v9 >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void *std::map<int,std::vector<unsigned char>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<int,std::vector<unsigned char>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<int,std::vector<unsigned char>>,std::__tree_node<std::__value_type<int,std::vector<unsigned char>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<int,std::vector<unsigned char>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<int,std::vector<unsigned char>>,std::__tree_node<std::__value_type<int,std::vector<unsigned char>>,void *> *,long>>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::__emplace_hint_unique_key_args<int,std::pair<int const,std::vector<unsigned char>> const&>(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::__emplace_hint_unique_key_args<int,std::pair<int const,std::vector<unsigned char>> const&>(void *a1, uint64_t *a2, int *a3)
{
  result = *std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::__find_equal<int>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::__construct_node<std::pair<int const,std::vector<unsigned char>> const&>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::__find_equal<int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
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
    if (*(v10 + 8) < *a5)
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
          v18 = *(v16 + 32);
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

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
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

void sub_1D97BCAF0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,std::vector<unsigned char>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 32);
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

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy((a2 + 6), a2[7]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::vector<CSCppCoreFileRegionInfo>::__assign_with_size[abi:ne200100]<CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(uint64_t a1, void *a2, CSCppCoreFileRegionInfo *a3, unint64_t a4)
{
  v7 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 5) < a4)
  {
    std::vector<CSCppCoreFileRegionInfo>::__vdeallocate(a1);
    if (a4 <= 0x124924924924924)
    {
      v8 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 5)) >= 0x92492492492492)
      {
        v9 = 0x124924924924924;
      }

      else
      {
        v9 = v8;
      }

      std::vector<CSCppCoreFileRegionInfo>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  v10 = *(a1 + 8) - v7;
  if (0x6DB6DB6DB6DB6DB7 * (v10 >> 5) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<CSCppCoreFileRegionInfo *,CSCppCoreFileRegionInfo *,CSCppCoreFileRegionInfo *>(&v13, a2, a3, v7);
    std::vector<CSCppCoreFileRegionInfo>::__base_destruct_at_end[abi:ne200100](a1, v12);
  }

  else
  {
    v11 = std::__copy_impl::operator()[abi:ne200100]<CSCppCoreFileRegionInfo *,CSCppCoreFileRegionInfo *,CSCppCoreFileRegionInfo *>(&v14, a2, (a2 + v10), v7);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<CSCppCoreFileRegionInfo>,CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(a1, v11, a3, *(a1 + 8));
  }
}

void std::vector<CSCppCoreFileRegionInfo>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<CSCppCoreFileRegionInfo>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<CSCppCoreFileRegionInfo>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 224)
  {
    v7 = (i - 24);
    std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v7);
    if (*(i - 32) == 1)
    {
      v5 = *(i - 56);
      if (v5)
      {
        *(i - 48) = v5;
        operator delete(v5);
      }
    }

    if (*(i - 64) == 1)
    {
      v6 = *(i - 88);
      if (v6)
      {
        *(i - 80) = v6;
        operator delete(v6);
      }
    }

    if (*(i - 96) == 1 && *(i - 97) < 0)
    {
      operator delete(*(i - 120));
    }
  }

  *(a1 + 8) = a2;
}

void CSCppCoreFileRegionInfo::~CSCppCoreFileRegionInfo(CSCppCoreFileRegionInfo *this)
{
  v4 = (this + 200);
  std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 192) == 1)
  {
    v2 = *(this + 21);
    if (v2)
    {
      *(this + 22) = v2;
      operator delete(v2);
    }
  }

  if (*(this + 160) == 1)
  {
    v3 = *(this + 17);
    if (v3)
    {
      *(this + 18) = v3;
      operator delete(v3);
    }
  }

  if (*(this + 128) == 1 && *(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }
}

void *std::__copy_impl::operator()[abi:ne200100]<CSCppCoreFileRegionInfo *,CSCppCoreFileRegionInfo *,CSCppCoreFileRegionInfo *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a2 + 26;
  do
  {
    v7 = v6 - 26;
    v8 = *(v6 - 13);
    v9 = *(v6 - 11);
    *(a4 + 16) = *(v6 - 12);
    *(a4 + 32) = v9;
    *a4 = v8;
    v10 = *(v6 - 10);
    v11 = *(v6 - 9);
    v12 = *(v6 - 8);
    *(a4 + 96) = *(v6 - 14);
    *(a4 + 64) = v11;
    *(a4 + 80) = v12;
    *(a4 + 48) = v10;
    std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>((a4 + 104), (v6 - 13));
    std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<unsigned short>,false> const&>(a4 + 136, (v6 - 9));
    std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<unsigned short>,false> const&>(a4 + 168, (v6 - 5));
    if (a4 != v6 - 26)
    {
      v13 = *(v6 - 1);
      v14 = *v6;
      std::vector<CSCppCoreFileRegionInfo>::__assign_with_size[abi:ne200100]<CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(a4 + 200);
    }

    a4 += 224;
    v6 += 28;
  }

  while (v7 + 28 != v5);
  return v5;
}

void std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (this[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(this, a2);
    }
  }

  else if (this[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    this[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<unsigned short>,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = &v3[-*a2] >> 1;
      v5 = *a2;

      std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
    *(a1 + 24) = 1;
  }
}

void *std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short *,unsigned short *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 1)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v8 <= a4)
      {
        v10 = a4;
      }

      else
      {
        v10 = v8;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<unsigned short>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 1)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void std::__optional_storage_base<std::vector<unsigned long long>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<unsigned long long>,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = &v3[-*a2] >> 3;
      v5 = *a2;

      std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    *(a1 + 24) = 1;
  }
}

void *std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v10 = v8 >> 2;
      if (v8 >> 2 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<unsigned long long>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 3)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v9[v17];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = a3 - &__src[v13];
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    v16 = &v12[v15];
  }

  v7[1] = v16;
  return result;
}

void std::__optional_storage_base<std::vector<CS_vm_object_query_data_t>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::vector<CS_vm_object_query_data_t>,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = 0x6DB6DB6DB6DB6DB7 * (&v3[-*a2] >> 3);
      v5 = *a2;

      std::vector<CS_vm_object_query_data_t>::__assign_with_size[abi:ne200100]<CS_vm_object_query_data_t*,CS_vm_object_query_data_t*>(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<CS_vm_object_query_data_t>::__init_with_size[abi:ne200100]<CS_vm_object_query_data_t*,CS_vm_object_query_data_t*>(a1, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3));
    *(a1 + 24) = 1;
  }
}

void *std::vector<CS_vm_object_query_data_t>::__assign_with_size[abi:ne200100]<CS_vm_object_query_data_t*,CS_vm_object_query_data_t*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0x6DB6DB6DB6DB6DB7 * ((v8 - *result) >> 3) < a4)
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

    if (a4 <= 0x492492492492492)
    {
      v10 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x249249249249249)
      {
        v12 = 0x492492492492492;
      }

      else
      {
        v12 = v11;
      }

      std::vector<CS_vm_object_query_data_t>::__vallocate[abi:ne200100](v7, v12);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  v13 = result[1];
  v14 = v13 - v9;
  if (0x6DB6DB6DB6DB6DB7 * ((v13 - v9) >> 3) >= a4)
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

void CSCppCoreFileTaskCrashinfo::CSCppCoreFileTaskCrashinfo(CSCppCoreFileTaskCrashinfo *this, const CSCppCoreFileTaskCrashinfo *a2)
{
  v4 = std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this, a2);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((v4 + 32), a2 + 2);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((this + 64), a2 + 4);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](this + 4, a2 + 6);
  *(this + 8) = *(a2 + 8);
  v5 = *(a2 + 9);
  v6 = *(a2 + 10);
  v7 = *(a2 + 11);
  *(this + 188) = *(a2 + 188);
  *(this + 10) = v6;
  *(this + 11) = v7;
  *(this + 9) = v5;
  std::__optional_copy_base<std::vector<unsigned long long>,false>::__optional_copy_base[abi:ne200100](this + 208, a2 + 208);
  std::__optional_copy_base<std::vector<CS_vm_object_query_data_t>,false>::__optional_copy_base[abi:ne200100](this + 240, a2 + 240);
  v8 = *(a2 + 17);
  v9 = *(a2 + 19);
  *(this + 18) = *(a2 + 18);
  *(this + 19) = v9;
  *(this + 17) = v8;
  v10 = *(a2 + 20);
  v11 = *(a2 + 21);
  v12 = *(a2 + 23);
  *(this + 22) = *(a2 + 22);
  *(this + 23) = v12;
  *(this + 20) = v10;
  *(this + 21) = v11;
  v13 = *(a2 + 24);
  v14 = *(a2 + 25);
  v15 = *(a2 + 26);
  *(this + 54) = *(a2 + 54);
  *(this + 25) = v14;
  *(this + 26) = v15;
  *(this + 24) = v13;
}

void sub_1D97BD788(_Unwind_Exception *exception_object)
{
  if (*(v1 + 232) == 1)
  {
    v3 = *(v1 + 208);
    if (v3)
    {
      *(v1 + 216) = v3;
      operator delete(v3);
    }
  }

  if (*(v1 + 120) == 1 && *(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 88) == 1 && *(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 56) == 1 && *(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::expected<mapped_memory_t *,char const*> create_mapped_memory_cache_for_core_file_without_exclave_metadata_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(char const*,unsigned long,char const*)::{lambda(mapped_memory_core_file_dumped_region_info_t const&,mapped_memory_core_file_dumped_region_info_t const&)#1} &,mapped_memory_core_file_dumped_region_info_t*,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 40);
  v10 = (a2 - 80);
  v11 = (a2 - 120);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        v124 = *(a2 - 40);
        v123 = a2 - 40;
        if (v124 >= *v12)
        {
          return result;
        }

LABEL_106:
        v295 = *(v12 + 32);
        v231 = *v12;
        v264 = *(v12 + 16);
        v129 = *v123;
        v130 = *(v123 + 16);
        *(v12 + 32) = *(v123 + 32);
        *v12 = v129;
        *(v12 + 16) = v130;
        result = v231;
        v131 = v264;
        *(v123 + 32) = v295;
LABEL_107:
        *v123 = result;
        *(v123 + 16) = v131;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v125 = v12 + 40;
      v132 = *(v12 + 40);
      v133 = (v12 + 80);
      v134 = *(v12 + 80);
      if (v132 >= *v12)
      {
        if (v134 < v132)
        {
          v186 = *(v12 + 72);
          v187 = *v125;
          result = *(v12 + 56);
          v188 = *(v12 + 96);
          *v125 = *v133;
          *(v12 + 56) = v188;
          *(v12 + 72) = *(v12 + 112);
          *v133 = v187;
          *(v12 + 96) = result;
          *(v12 + 112) = v186;
          if (*(v12 + 40) < *v12)
          {
            v299 = *(v12 + 32);
            v236 = *v12;
            v270 = *(v12 + 16);
            v189 = *(v12 + 56);
            *v12 = *v125;
            *(v12 + 16) = v189;
            *(v12 + 32) = *(v12 + 72);
            result = v236;
            *v125 = v236;
            *(v12 + 56) = v270;
            *(v12 + 72) = v299;
          }
        }
      }

      else
      {
        if (v134 < v132)
        {
          v296 = *(v12 + 32);
          v232 = *v12;
          v265 = *(v12 + 16);
          v135 = *(v12 + 96);
          *v12 = *v133;
          *(v12 + 16) = v135;
          *(v12 + 32) = *(v12 + 112);
          result = v232;
          *v133 = v232;
          *(v12 + 96) = v265;
          v136 = v296;
          goto LABEL_187;
        }

        v302 = *(v12 + 32);
        v239 = *v12;
        v273 = *(v12 + 16);
        v197 = *(v12 + 56);
        *v12 = *v125;
        *(v12 + 16) = v197;
        *(v12 + 32) = *(v12 + 72);
        result = v239;
        *v125 = v239;
        *(v12 + 56) = v273;
        *(v12 + 72) = v302;
        if (v134 < *(v12 + 40))
        {
          v136 = *(v12 + 72);
          v198 = *v125;
          result = *(v12 + 56);
          v199 = *(v12 + 96);
          *v125 = *v133;
          *(v12 + 56) = v199;
          *(v12 + 72) = *(v12 + 112);
          *v133 = v198;
          *(v12 + 96) = result;
LABEL_187:
          *(v12 + 112) = v136;
        }
      }

      if (v9->n128_u64[0] >= v133->n128_u64[0])
      {
        return result;
      }

      result = *v133;
      v274 = *(v12 + 96);
      v303 = *(v12 + 112);
      v201 = *v9;
      v200 = *(a2 - 24);
      *(v12 + 112) = *(a2 - 8);
      *v133 = v201;
      *(v12 + 96) = v200;
      *(a2 - 8) = v303;
      *v9 = result;
      *(a2 - 24) = v274;
      if (v133->n128_u64[0] >= *v125)
      {
        return result;
      }

      v202 = *(v12 + 72);
      v203 = *v125;
      result = *(v12 + 56);
      v204 = *(v12 + 96);
      *v125 = *v133;
      *(v12 + 56) = v204;
      *(v12 + 72) = *(v12 + 112);
      *v133 = v203;
      *(v12 + 96) = result;
      *(v12 + 112) = v202;
LABEL_191:
      if (*(v12 + 40) < *v12)
      {
        v304 = *(v12 + 32);
        v240 = *v12;
        v275 = *(v12 + 16);
        v205 = *(v125 + 16);
        *v12 = *v125;
        *(v12 + 16) = v205;
        *(v12 + 32) = *(v125 + 32);
        result = v240;
        *v125 = v240;
        *(v125 + 16) = v275;
        *(v125 + 32) = v304;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::expected<mapped_memory_t *,char const*> create_mapped_memory_cache_for_core_file_without_exclave_metadata_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(char const*,unsigned long,char const*)::{lambda(mapped_memory_core_file_dumped_region_info_t const&,mapped_memory_core_file_dumped_region_info_t const&)#1} &,mapped_memory_core_file_dumped_region_info_t*,0>(v12, (v12 + 40), (v12 + 80), v12 + 120, a2 - 40, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 959)
    {
      v137 = v12 + 40;
      v139 = v12 == a2 || v137 == a2;
      if (a4)
      {
        if (!v139)
        {
          v140 = 0;
          v141 = v12;
          do
          {
            v142 = v137;
            v143 = *(v141 + 40);
            if (v143 < *v141)
            {
              v233 = *(v141 + 48);
              v266 = *(v141 + 64);
              v144 = v140;
              while (1)
              {
                v145 = v12 + v144;
                v146 = *(v12 + v144 + 16);
                *(v145 + 40) = *(v12 + v144);
                *(v145 + 56) = v146;
                *(v145 + 72) = *(v12 + v144 + 32);
                if (!v144)
                {
                  break;
                }

                v144 -= 40;
                if (v143 >= *(v145 - 40))
                {
                  v147 = v12 + v144 + 40;
                  goto LABEL_126;
                }
              }

              v147 = v12;
LABEL_126:
              *v147 = v143;
              result = v233;
              *(v147 + 24) = v266;
              *(v147 + 8) = v233;
            }

            v137 = v142 + 40;
            v140 += 40;
            v141 = v142;
          }

          while (v142 + 40 != a2);
        }
      }

      else if (!v139)
      {
        do
        {
          v190 = v137;
          v191 = *(a1 + 40);
          if (v191 < *a1)
          {
            v237 = *(a1 + 48);
            v271 = *(a1 + 64);
            do
            {
              v192 = *(v137 - 24);
              *v137 = *(v137 - 40);
              *(v137 + 16) = v192;
              *(v137 + 32) = *(v137 - 8);
              v193 = *(v137 - 80);
              v137 -= 40;
            }

            while (v191 < v193);
            *v137 = v191;
            result = v237;
            *(v137 + 24) = v271;
            *(v137 + 8) = v237;
          }

          v137 = v190 + 40;
          a1 = v190;
        }

        while (v190 + 40 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v148 = (v14 - 2) >> 1;
        v149 = v148;
        do
        {
          v150 = v149;
          if (v148 >= v149)
          {
            v151 = (2 * v149) | 1;
            v152 = v12 + 40 * v151;
            if (2 * v150 + 2 >= v14)
            {
              v153 = *v152;
            }

            else
            {
              v153 = *(v152 + 40);
              v154 = *v152 >= v153;
              if (*v152 > v153)
              {
                v153 = *v152;
              }

              if (!v154)
              {
                v152 += 40;
                v151 = 2 * v150 + 2;
              }
            }

            v155 = v12 + 40 * v150;
            v156 = *v155;
            if (v153 >= *v155)
            {
              v234 = *(v155 + 8);
              v267 = *(v155 + 24);
              do
              {
                v157 = v155;
                v155 = v152;
                v158 = *v152;
                v159 = *(v152 + 16);
                *(v157 + 32) = *(v152 + 32);
                *v157 = v158;
                *(v157 + 16) = v159;
                if (v148 < v151)
                {
                  break;
                }

                v160 = (2 * v151) | 1;
                v152 = v12 + 40 * v160;
                v151 = 2 * v151 + 2;
                if (v151 >= v14)
                {
                  v161 = *v152;
                  v151 = v160;
                }

                else
                {
                  v161 = *v152;
                  v162 = *(v152 + 40);
                  if (*v152 <= v162)
                  {
                    v161 = *(v152 + 40);
                  }

                  if (*v152 >= v162)
                  {
                    v151 = v160;
                  }

                  else
                  {
                    v152 += 40;
                  }
                }
              }

              while (v161 >= v156);
              *v155 = v156;
              *(v155 + 24) = v267;
              *(v155 + 8) = v234;
            }
          }

          v149 = v150 - 1;
        }

        while (v150);
        v163 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
        do
        {
          v164 = 0;
          v297 = *(v12 + 32);
          v235 = *v12;
          v268 = *(v12 + 16);
          v165 = v12;
          do
          {
            v166 = v165 + 40 * v164;
            v167 = v166 + 40;
            v168 = (2 * v164) | 1;
            v164 = 2 * v164 + 2;
            if (v164 >= v163)
            {
              v164 = v168;
            }

            else
            {
              v170 = *(v166 + 80);
              v169 = v166 + 80;
              if (*(v169 - 40) >= v170)
              {
                v164 = v168;
              }

              else
              {
                v167 = v169;
              }
            }

            v171 = *v167;
            v172 = *(v167 + 16);
            *(v165 + 32) = *(v167 + 32);
            *v165 = v171;
            *(v165 + 16) = v172;
            v165 = v167;
          }

          while (v164 <= ((v163 - 2) >> 1));
          a2 -= 40;
          if (v167 == a2)
          {
            result = v235;
            *(v167 + 32) = v297;
            *v167 = v235;
            *(v167 + 16) = v268;
          }

          else
          {
            v173 = *a2;
            v174 = *(a2 + 16);
            *(v167 + 32) = *(a2 + 32);
            *v167 = v173;
            *(v167 + 16) = v174;
            result = v235;
            *(a2 + 32) = v297;
            *a2 = v235;
            *(a2 + 16) = v268;
            v175 = v167 - v12 + 40;
            if (v175 >= 41)
            {
              v176 = (-2 - 0x3333333333333333 * (v175 >> 3)) >> 1;
              v177 = v12 + 40 * v176;
              v178 = *v167;
              if (*v177 < *v167)
              {
                v179 = *(v167 + 8);
                v208 = v179;
                v211 = *(v167 + 24);
                do
                {
                  v180 = v167;
                  v167 = v177;
                  v181 = *v177;
                  v182 = *(v177 + 16);
                  *(v180 + 32) = *(v177 + 32);
                  *v180 = v181;
                  *(v180 + 16) = v182;
                  if (!v176)
                  {
                    break;
                  }

                  v176 = (v176 - 1) >> 1;
                  v177 = v12 + 40 * v176;
                }

                while (*v177 < v178);
                *v167 = v178;
                result = v208;
                *(v167 + 24) = v211;
                *(v167 + 8) = v208;
              }
            }
          }
        }

        while (v163-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v12 + 40 * (v14 >> 1);
    v17 = v9->n128_u64[0];
    if (v13 >= 0x1401)
    {
      v18 = *v16;
      if (*v16 >= *v12)
      {
        if (v17 < v18)
        {
          v278 = *(v16 + 32);
          v214 = *v16;
          v243 = *(v16 + 16);
          v24 = *v9;
          v25 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v24;
          *(v16 + 16) = v25;
          *(a2 - 8) = v278;
          *v9 = v214;
          *(a2 - 24) = v243;
          if (*v16 < *v12)
          {
            v279 = *(v12 + 32);
            v215 = *v12;
            v244 = *(v12 + 16);
            v26 = *v16;
            v27 = *(v16 + 16);
            *(v12 + 32) = *(v16 + 32);
            *v12 = v26;
            *(v12 + 16) = v27;
            *(v16 + 32) = v279;
            *v16 = v215;
            *(v16 + 16) = v244;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v276 = *(v12 + 32);
          v212 = *v12;
          v241 = *(v12 + 16);
          v19 = *v9;
          v20 = *(a2 - 24);
          *(v12 + 32) = *(a2 - 8);
          *v12 = v19;
          *(v12 + 16) = v20;
          goto LABEL_26;
        }

        v282 = *(v12 + 32);
        v218 = *v12;
        v247 = *(v12 + 16);
        v32 = *v16;
        v33 = *(v16 + 16);
        *(v12 + 32) = *(v16 + 32);
        *v12 = v32;
        *(v12 + 16) = v33;
        *(v16 + 32) = v282;
        *v16 = v218;
        *(v16 + 16) = v247;
        if (v9->n128_u64[0] < *v16)
        {
          v276 = *(v16 + 32);
          v212 = *v16;
          v241 = *(v16 + 16);
          v34 = *v9;
          v35 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v34;
          *(v16 + 16) = v35;
LABEL_26:
          *(a2 - 8) = v276;
          *v9 = v212;
          *(a2 - 24) = v241;
        }
      }

      v36 = (v12 + 40);
      v37 = v12 + 40 * v15;
      v40 = *(v37 - 40);
      v38 = v37 - 40;
      v39 = v40;
      v41 = *v10;
      if (v40 >= *(v12 + 40))
      {
        if (v41 < v39)
        {
          v283 = *(v38 + 32);
          v219 = *v38;
          v248 = *(v38 + 16);
          v47 = *v10;
          v48 = *(a2 - 64);
          *(v38 + 32) = *(a2 - 48);
          *v38 = v47;
          *(v38 + 16) = v48;
          *(a2 - 48) = v283;
          *v10 = v219;
          *(a2 - 64) = v248;
          if (*v38 < *v36)
          {
            v49 = *v36;
            v249 = *(v12 + 56);
            v50 = *(v12 + 72);
            v52 = *v38;
            v51 = *(v38 + 16);
            *(v12 + 72) = *(v38 + 32);
            *v36 = v52;
            *(v12 + 56) = v51;
            *(v38 + 32) = v50;
            *v38 = v49;
            *(v38 + 16) = v249;
          }
        }
      }

      else
      {
        if (v41 < v39)
        {
          v42 = *v36;
          v43 = *(v12 + 56);
          v44 = *(v12 + 72);
          v46 = *v10;
          v45 = *(a2 - 64);
          *(v12 + 72) = *(a2 - 48);
          *v36 = v46;
          *(v12 + 56) = v45;
          *(a2 - 48) = v44;
          goto LABEL_38;
        }

        v57 = *v36;
        v251 = *(v12 + 56);
        v58 = *(v12 + 72);
        v60 = *v38;
        v59 = *(v38 + 16);
        *(v12 + 72) = *(v38 + 32);
        *v36 = v60;
        *(v12 + 56) = v59;
        *(v38 + 32) = v58;
        *v38 = v57;
        *(v38 + 16) = v251;
        if (*v10 < *v38)
        {
          v285 = *(v38 + 32);
          v221 = *v38;
          v252 = *(v38 + 16);
          v61 = *v10;
          v62 = *(a2 - 64);
          *(v38 + 32) = *(a2 - 48);
          *v38 = v61;
          *(v38 + 16) = v62;
          v42 = v221;
          v43 = v252;
          *(a2 - 48) = v285;
LABEL_38:
          *v10 = v42;
          *(a2 - 64) = v43;
        }
      }

      v63 = (v12 + 80);
      v64 = v12 + 40 * v15;
      v67 = *(v64 + 40);
      v65 = v64 + 40;
      v66 = v67;
      v68 = *v11;
      if (v67 >= *(v12 + 80))
      {
        if (v68 < v66)
        {
          v286 = *(v65 + 32);
          v222 = *v65;
          v253 = *(v65 + 16);
          v74 = *v11;
          v75 = *(a2 - 104);
          *(v65 + 32) = *(a2 - 88);
          *v65 = v74;
          *(v65 + 16) = v75;
          *(a2 - 88) = v286;
          *v11 = v222;
          *(a2 - 104) = v253;
          if (*v65 < *v63)
          {
            v76 = *v63;
            v254 = *(v12 + 96);
            v77 = *(v12 + 112);
            v79 = *v65;
            v78 = *(v65 + 16);
            *(v12 + 112) = *(v65 + 32);
            *v63 = v79;
            *(v12 + 96) = v78;
            *(v65 + 32) = v77;
            *v65 = v76;
            *(v65 + 16) = v254;
          }
        }
      }

      else
      {
        if (v68 < v66)
        {
          v69 = *v63;
          v70 = *(v12 + 96);
          v71 = *(v12 + 112);
          v73 = *v11;
          v72 = *(a2 - 104);
          *(v12 + 112) = *(a2 - 88);
          *v63 = v73;
          *(v12 + 96) = v72;
          *(a2 - 88) = v71;
          goto LABEL_47;
        }

        v80 = *v63;
        v255 = *(v12 + 96);
        v81 = *(v12 + 112);
        v83 = *v65;
        v82 = *(v65 + 16);
        *(v12 + 112) = *(v65 + 32);
        *v63 = v83;
        *(v12 + 96) = v82;
        *(v65 + 32) = v81;
        *v65 = v80;
        *(v65 + 16) = v255;
        if (*v11 < *v65)
        {
          v287 = *(v65 + 32);
          v223 = *v65;
          v256 = *(v65 + 16);
          v84 = *v11;
          v85 = *(a2 - 104);
          *(v65 + 32) = *(a2 - 88);
          *v65 = v84;
          *(v65 + 16) = v85;
          v69 = v223;
          v70 = v256;
          *(a2 - 88) = v287;
LABEL_47:
          *v11 = v69;
          *(a2 - 104) = v70;
        }
      }

      v86 = *v16;
      v87 = *v65;
      if (*v16 >= *v38)
      {
        if (v87 < v86)
        {
          v289 = *(v16 + 32);
          v225 = *v16;
          v258 = *(v16 + 16);
          v89 = *(v65 + 16);
          *v16 = *v65;
          *(v16 + 16) = v89;
          *(v16 + 32) = *(v65 + 32);
          *(v65 + 32) = v289;
          *v65 = v225;
          *(v65 + 16) = v258;
          if (*v16 < *v38)
          {
            v290 = *(v38 + 32);
            v226 = *v38;
            v259 = *(v38 + 16);
            v90 = *(v16 + 16);
            *v38 = *v16;
            *(v38 + 16) = v90;
            *(v38 + 32) = *(v16 + 32);
            *(v16 + 32) = v290;
            *v16 = v226;
            *(v16 + 16) = v259;
          }
        }
      }

      else
      {
        if (v87 < v86)
        {
          v288 = *(v38 + 32);
          v224 = *v38;
          v257 = *(v38 + 16);
          v88 = *(v65 + 16);
          *v38 = *v65;
          *(v38 + 16) = v88;
          *(v38 + 32) = *(v65 + 32);
          goto LABEL_56;
        }

        v291 = *(v38 + 32);
        v227 = *v38;
        v260 = *(v38 + 16);
        v91 = *(v16 + 16);
        *v38 = *v16;
        *(v38 + 16) = v91;
        *(v38 + 32) = *(v16 + 32);
        *(v16 + 32) = v291;
        *v16 = v227;
        *(v16 + 16) = v260;
        if (*v65 < *v16)
        {
          v288 = *(v16 + 32);
          v224 = *v16;
          v257 = *(v16 + 16);
          v92 = *(v65 + 16);
          *v16 = *v65;
          *(v16 + 16) = v92;
          *(v16 + 32) = *(v65 + 32);
LABEL_56:
          *(v65 + 32) = v288;
          *v65 = v224;
          *(v65 + 16) = v257;
        }
      }

      v292 = *(v12 + 32);
      v228 = *v12;
      v261 = *(v12 + 16);
      v93 = *v16;
      v94 = *(v16 + 16);
      *(v12 + 32) = *(v16 + 32);
      *v12 = v93;
      *(v12 + 16) = v94;
      *(v16 + 32) = v292;
      *v16 = v228;
      *(v16 + 16) = v261;
      goto LABEL_58;
    }

    v21 = *v12;
    if (*v12 >= *v16)
    {
      if (v17 < v21)
      {
        v280 = *(v12 + 32);
        v216 = *v12;
        v245 = *(v12 + 16);
        v28 = *v9;
        v29 = *(a2 - 24);
        *(v12 + 32) = *(a2 - 8);
        *v12 = v28;
        *(v12 + 16) = v29;
        *(a2 - 8) = v280;
        *v9 = v216;
        *(a2 - 24) = v245;
        if (*v12 < *v16)
        {
          v281 = *(v16 + 32);
          v217 = *v16;
          v246 = *(v16 + 16);
          v30 = *v12;
          v31 = *(v12 + 16);
          *(v16 + 32) = *(v12 + 32);
          *v16 = v30;
          *(v16 + 16) = v31;
          *(v12 + 32) = v281;
          *v12 = v217;
          *(v12 + 16) = v246;
        }
      }

      goto LABEL_58;
    }

    if (v17 >= v21)
    {
      v284 = *(v16 + 32);
      v220 = *v16;
      v250 = *(v16 + 16);
      v53 = *v12;
      v54 = *(v12 + 16);
      *(v16 + 32) = *(v12 + 32);
      *v16 = v53;
      *(v16 + 16) = v54;
      *(v12 + 32) = v284;
      *v12 = v220;
      *(v12 + 16) = v250;
      if (v9->n128_u64[0] >= *v12)
      {
        goto LABEL_58;
      }

      v277 = *(v12 + 32);
      v213 = *v12;
      v242 = *(v12 + 16);
      v55 = *v9;
      v56 = *(a2 - 24);
      *(v12 + 32) = *(a2 - 8);
      *v12 = v55;
      *(v12 + 16) = v56;
    }

    else
    {
      v277 = *(v16 + 32);
      v213 = *v16;
      v242 = *(v16 + 16);
      v22 = *v9;
      v23 = *(a2 - 24);
      *(v16 + 32) = *(a2 - 8);
      *v16 = v22;
      *(v16 + 16) = v23;
    }

    *(a2 - 8) = v277;
    *v9 = v213;
    *(a2 - 24) = v242;
LABEL_58:
    --a3;
    v95 = *v12;
    if ((a4 & 1) != 0 || *(v12 - 40) < v95)
    {
      v96 = 0;
      v97 = *(v12 + 8);
      v206 = v97;
      v209 = *(v12 + 24);
      do
      {
        v98 = *(v12 + v96 + 40);
        v96 += 40;
      }

      while (v98 < v95);
      v99 = v12 + v96;
      v100 = a2;
      if (v96 == 40)
      {
        v100 = a2;
        do
        {
          if (v99 >= v100)
          {
            break;
          }

          v102 = *(v100 - 40);
          v100 -= 40;
        }

        while (v102 >= v95);
      }

      else
      {
        do
        {
          v101 = *(v100 - 40);
          v100 -= 40;
        }

        while (v101 >= v95);
      }

      v12 += v96;
      if (v99 < v100)
      {
        v103 = v100;
        do
        {
          v293 = *(v12 + 32);
          v229 = *v12;
          v262 = *(v12 + 16);
          v104 = *v103;
          v105 = *(v103 + 16);
          *(v12 + 32) = *(v103 + 32);
          *v12 = v104;
          *(v12 + 16) = v105;
          *(v103 + 32) = v293;
          *v103 = v229;
          *(v103 + 16) = v262;
          do
          {
            v106 = *(v12 + 40);
            v12 += 40;
          }

          while (v106 < v95);
          do
          {
            v107 = *(v103 - 40);
            v103 -= 40;
          }

          while (v107 >= v95);
        }

        while (v12 < v103);
      }

      if (v12 - 40 != a1)
      {
        v108 = *(v12 - 40);
        v109 = *(v12 - 24);
        *(a1 + 32) = *(v12 - 8);
        *a1 = v108;
        *(a1 + 16) = v109;
      }

      *(v12 - 40) = v95;
      *(v12 - 32) = v206;
      *(v12 - 16) = v209;
      if (v99 < v100)
      {
        goto LABEL_79;
      }

      v110 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::expected<mapped_memory_t *,char const*> create_mapped_memory_cache_for_core_file_without_exclave_metadata_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(char const*,unsigned long,char const*)::{lambda(mapped_memory_core_file_dumped_region_info_t const&,mapped_memory_core_file_dumped_region_info_t const&)#1} &,mapped_memory_core_file_dumped_region_info_t*>(a1, (v12 - 40), v206);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::expected<mapped_memory_t *,char const*> create_mapped_memory_cache_for_core_file_without_exclave_metadata_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(char const*,unsigned long,char const*)::{lambda(mapped_memory_core_file_dumped_region_info_t const&,mapped_memory_core_file_dumped_region_info_t const&)#1} &,mapped_memory_core_file_dumped_region_info_t*>(v12, a2, v111))
      {
        a2 = v12 - 40;
        if (!v110)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v110)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,std::expected<mapped_memory_t *,char const*> create_mapped_memory_cache_for_core_file_without_exclave_metadata_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(char const*,unsigned long,char const*)::{lambda(mapped_memory_core_file_dumped_region_info_t const&,mapped_memory_core_file_dumped_region_info_t const&)#1} &,mapped_memory_core_file_dumped_region_info_t*,false>(a1, v12 - 40, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v112 = *(v12 + 8);
      v207 = v112;
      v210 = *(v12 + 24);
      if (v95 >= v9->n128_u64[0])
      {
        v114 = v12 + 40;
        do
        {
          v12 = v114;
          if (v114 >= a2)
          {
            break;
          }

          v114 += 40;
        }

        while (v95 >= *v12);
      }

      else
      {
        do
        {
          v113 = *(v12 + 40);
          v12 += 40;
        }

        while (v95 >= v113);
      }

      v115 = a2;
      if (v12 < a2)
      {
        v115 = a2;
        do
        {
          v116 = *(v115 - 40);
          v115 -= 40;
        }

        while (v95 < v116);
      }

      while (v12 < v115)
      {
        v294 = *(v12 + 32);
        v230 = *v12;
        v263 = *(v12 + 16);
        v117 = *v115;
        v118 = *(v115 + 16);
        *(v12 + 32) = *(v115 + 32);
        *v12 = v117;
        *(v12 + 16) = v118;
        *(v115 + 32) = v294;
        *v115 = v230;
        *(v115 + 16) = v263;
        do
        {
          v119 = *(v12 + 40);
          v12 += 40;
        }

        while (v95 >= v119);
        do
        {
          v120 = *(v115 - 40);
          v115 -= 40;
        }

        while (v95 < v120);
      }

      if (v12 - 40 != a1)
      {
        v121 = *(v12 - 40);
        v122 = *(v12 - 24);
        *(a1 + 32) = *(v12 - 8);
        *a1 = v121;
        *(a1 + 16) = v122;
      }

      a4 = 0;
      *(v12 - 40) = v95;
      result = v207;
      *(v12 - 32) = v207;
      *(v12 - 16) = v210;
    }
  }

  v125 = v12 + 40;
  v126 = *(v12 + 40);
  v128 = *(a2 - 40);
  v123 = a2 - 40;
  v127 = v128;
  if (v126 >= *v12)
  {
    if (v127 >= v126)
    {
      return result;
    }

    result = *v125;
    v269 = *(v12 + 56);
    v298 = *(v12 + 72);
    v185 = *v123;
    v184 = *(v123 + 16);
    *(v12 + 72) = *(v123 + 32);
    *v125 = v185;
    *(v12 + 56) = v184;
    *(v123 + 32) = v298;
    *v123 = result;
    *(v123 + 16) = v269;
    goto LABEL_191;
  }

  if (v127 < v126)
  {
    goto LABEL_106;
  }

  v300 = *(v12 + 32);
  v238 = *v12;
  v272 = *(v12 + 16);
  v194 = *(v12 + 56);
  *v12 = *v125;
  *(v12 + 16) = v194;
  *(v12 + 32) = *(v12 + 72);
  result = v238;
  *v125 = v238;
  *(v12 + 56) = v272;
  *(v12 + 72) = v300;
  if (*v123 < *(v12 + 40))
  {
    result = *v125;
    v131 = *(v12 + 56);
    v301 = *(v12 + 72);
    v196 = *v123;
    v195 = *(v123 + 16);
    *(v12 + 72) = *(v123 + 32);
    *v125 = v196;
    *(v12 + 56) = v195;
    *(v123 + 32) = v301;
    goto LABEL_107;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::expected<mapped_memory_t *,char const*> create_mapped_memory_cache_for_core_file_without_exclave_metadata_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(char const*,unsigned long,char const*)::{lambda(mapped_memory_core_file_dumped_region_info_t const&,mapped_memory_core_file_dumped_region_info_t const&)#1} &,mapped_memory_core_file_dumped_region_info_t*,0>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = *a2;
  v7 = *a3;
  if (*a2 >= *a1)
  {
    if (v7 < v6)
    {
      result = *a2;
      v12 = *(a2 + 1);
      v13 = a2[4];
      v14 = a3[4];
      v15 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v15;
      a2[4] = v14;
      a3[4] = v13;
      *a3 = result;
      *(a3 + 1) = v12;
      if (*a2 < *a1)
      {
        result = *a1;
        v16 = *(a1 + 16);
        v17 = *(a1 + 32);
        v18 = a2[4];
        v19 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v19;
        *(a1 + 32) = v18;
        a2[4] = v17;
        *a2 = result;
        *(a2 + 1) = v16;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      v8 = *(a1 + 16);
      v9 = *(a1 + 32);
      v10 = a3[4];
      v11 = *(a3 + 1);
      *a1 = *a3;
      *(a1 + 16) = v11;
      *(a1 + 32) = v10;
LABEL_9:
      a3[4] = v9;
      *a3 = result;
      *(a3 + 1) = v8;
      goto LABEL_10;
    }

    result = *a1;
    v20 = *(a1 + 16);
    v21 = *(a1 + 32);
    v22 = a2[4];
    v23 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *(a1 + 32) = v22;
    a2[4] = v21;
    *a2 = result;
    *(a2 + 1) = v20;
    if (*a3 < *a2)
    {
      result = *a2;
      v8 = *(a2 + 1);
      v9 = a2[4];
      v24 = a3[4];
      v25 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v25;
      a2[4] = v24;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    v26 = *(a3 + 1);
    v27 = a3[4];
    v28 = *(a4 + 32);
    v29 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 1) = v29;
    a3[4] = v28;
    *(a4 + 32) = v27;
    *a4 = result;
    *(a4 + 16) = v26;
    if (*a3 < *a2)
    {
      result = *a2;
      v30 = *(a2 + 1);
      v31 = a2[4];
      v32 = a3[4];
      v33 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v33;
      a2[4] = v32;
      a3[4] = v31;
      *a3 = result;
      *(a3 + 1) = v30;
      if (*a2 < *a1)
      {
        result = *a1;
        v34 = *(a1 + 16);
        v35 = *(a1 + 32);
        v36 = a2[4];
        v37 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 16) = v37;
        *(a1 + 32) = v36;
        a2[4] = v35;
        *a2 = result;
        *(a2 + 1) = v34;
      }
    }
  }

  if (*a5 < *a4)
  {
    result = *a4;
    v38 = *(a4 + 16);
    v39 = *(a4 + 32);
    v40 = *(a5 + 32);
    v41 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v41;
    *(a4 + 32) = v40;
    *(a5 + 32) = v39;
    *a5 = result;
    *(a5 + 16) = v38;
    if (*a4 < *a3)
    {
      result = *a3;
      v42 = *(a3 + 1);
      v43 = a3[4];
      v44 = *(a4 + 32);
      v45 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 1) = v45;
      a3[4] = v44;
      *(a4 + 32) = v43;
      *a4 = result;
      *(a4 + 16) = v42;
      if (*a3 < *a2)
      {
        result = *a2;
        v46 = *(a2 + 1);
        v47 = a2[4];
        v48 = a3[4];
        v49 = *(a3 + 1);
        *a2 = *a3;
        *(a2 + 1) = v49;
        a2[4] = v48;
        a3[4] = v47;
        *a3 = result;
        *(a3 + 1) = v46;
        if (*a2 < *a1)
        {
          result = *a1;
          v50 = *(a1 + 16);
          v51 = *(a1 + 32);
          v52 = a2[4];
          v53 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 16) = v53;
          *(a1 + 32) = v52;
          a2[4] = v51;
          *a2 = result;
          *(a2 + 1) = v50;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::expected<mapped_memory_t *,char const*> create_mapped_memory_cache_for_core_file_without_exclave_metadata_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(char const*,unsigned long,char const*)::{lambda(mapped_memory_core_file_dumped_region_info_t const&,mapped_memory_core_file_dumped_region_info_t const&)#1} &,mapped_memory_core_file_dumped_region_info_t*>(uint64_t a1, __int128 *a2, __n128 a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a1 + 40;
      v7 = *(a1 + 40);
      v9 = *(a2 - 5);
      v4 = a2 - 40;
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 < v7)
        {
LABEL_12:
          v10 = *a1;
          v11 = *(a1 + 16);
          v12 = *(a1 + 32);
          v13 = *(v4 + 32);
          v14 = *(v4 + 16);
          *a1 = *v4;
          *(a1 + 16) = v14;
          *(a1 + 32) = v13;
          *(v4 + 32) = v12;
LABEL_13:
          result = 1;
          *v4 = v10;
          *(v4 + 16) = v11;
          return result;
        }

        v55 = *(a1 + 32);
        v57 = *a1;
        v56 = *(a1 + 16);
        v58 = *(a1 + 56);
        *a1 = *v6;
        *(a1 + 16) = v58;
        *(a1 + 32) = *(a1 + 72);
        *v6 = v57;
        *(a1 + 56) = v56;
        *(a1 + 72) = v55;
        if (*v4 < *(a1 + 40))
        {
          v10 = *v6;
          v11 = *(a1 + 56);
          v59 = *(a1 + 72);
          v60 = *(v4 + 32);
          v61 = *(v4 + 16);
          *v6 = *v4;
          *(a1 + 56) = v61;
          *(a1 + 72) = v60;
          *(v4 + 32) = v59;
          goto LABEL_13;
        }

        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v34 = *v6;
      v35 = *(a1 + 56);
      v36 = *(a1 + 72);
      v37 = *(v4 + 32);
      v38 = *(v4 + 16);
      *v6 = *v4;
      *(a1 + 56) = v38;
      *(a1 + 72) = v37;
      *(v4 + 32) = v36;
      *v4 = v34;
      *(v4 + 16) = v35;
LABEL_49:
      if (*(a1 + 40) < *a1)
      {
        v93 = *(a1 + 32);
        v95 = *a1;
        v94 = *(a1 + 16);
        v96 = *(v6 + 16);
        *a1 = *v6;
        *(a1 + 16) = v96;
        *(a1 + 32) = *(v6 + 32);
        *v6 = v95;
        *(v6 + 16) = v94;
        result = 1;
        *(v6 + 32) = v93;
        return result;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::expected<mapped_memory_t *,char const*> create_mapped_memory_cache_for_core_file_without_exclave_metadata_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(char const*,unsigned long,char const*)::{lambda(mapped_memory_core_file_dumped_region_info_t const&,mapped_memory_core_file_dumped_region_info_t const&)#1} &,mapped_memory_core_file_dumped_region_info_t*,0>(a1, (a1 + 40), (a1 + 80), a1 + 120, a2 - 40, a3);
      return 1;
    }

    v6 = a1 + 40;
    v25 = *(a1 + 40);
    v26 = (a1 + 80);
    v27 = *(a1 + 80);
    v28 = a2 - 5;
    v29 = *a1;
    if (v25 >= *a1)
    {
      if (v27 < v25)
      {
        v47 = *(a1 + 72);
        v49 = *v6;
        v48 = *(a1 + 56);
        v50 = *(a1 + 96);
        *v6 = *v26;
        *(a1 + 56) = v50;
        *(a1 + 72) = *(a1 + 112);
        *v26 = v49;
        *(a1 + 96) = v48;
        *(a1 + 112) = v47;
        if (*v6 < v29)
        {
          v51 = *(a1 + 32);
          v53 = *a1;
          v52 = *(a1 + 16);
          v54 = *(a1 + 56);
          *a1 = *v6;
          *(a1 + 16) = v54;
          *(a1 + 32) = *(a1 + 72);
          *v6 = v53;
          *(a1 + 56) = v52;
          *(a1 + 72) = v51;
        }
      }

      goto LABEL_46;
    }

    if (v27 >= v25)
    {
      v79 = *(a1 + 32);
      v81 = *a1;
      v80 = *(a1 + 16);
      v82 = *(a1 + 56);
      *a1 = *v6;
      *(a1 + 16) = v82;
      *(a1 + 32) = *(a1 + 72);
      *v6 = v81;
      *(a1 + 56) = v80;
      *(a1 + 72) = v79;
      if (v27 >= *(a1 + 40))
      {
        goto LABEL_46;
      }

      v30 = *(a1 + 72);
      v32 = *v6;
      v31 = *(a1 + 56);
      v83 = *(a1 + 96);
      *v6 = *v26;
      *(a1 + 56) = v83;
      *(a1 + 72) = *(a1 + 112);
    }

    else
    {
      v30 = *(a1 + 32);
      v32 = *a1;
      v31 = *(a1 + 16);
      v33 = *(a1 + 96);
      *a1 = *v26;
      *(a1 + 16) = v33;
      *(a1 + 32) = *(a1 + 112);
    }

    *v26 = v32;
    *(a1 + 96) = v31;
    *(a1 + 112) = v30;
LABEL_46:
    if (*v28 >= *v26)
    {
      return 1;
    }

    v84 = *v26;
    v85 = *(a1 + 96);
    v86 = *(a1 + 112);
    v87 = *(a2 - 1);
    v88 = *(a2 - 24);
    *v26 = *v28;
    *(a1 + 96) = v88;
    *(a1 + 112) = v87;
    *(a2 - 1) = v86;
    *v28 = v84;
    *(a2 - 24) = v85;
    if (*v26 >= *v6)
    {
      return 1;
    }

    v89 = *(a1 + 72);
    v91 = *v6;
    v90 = *(a1 + 56);
    v92 = *(a1 + 96);
    *v6 = *v26;
    *(a1 + 56) = v92;
    *(a1 + 72) = *(a1 + 112);
    *v26 = v91;
    *(a1 + 96) = v90;
    *(a1 + 112) = v89;
    goto LABEL_49;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 5);
    v4 = a2 - 40;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v16 = (a1 + 80);
  v17 = *(a1 + 80);
  v18 = (a1 + 40);
  v19 = *(a1 + 40);
  v20 = *a1;
  if (v19 >= *a1)
  {
    if (v17 < v19)
    {
      v39 = *(a1 + 72);
      v41 = *v18;
      v40 = *(a1 + 56);
      v42 = *(a1 + 96);
      *v18 = *v16;
      *(a1 + 56) = v42;
      *(a1 + 72) = *(a1 + 112);
      *v16 = v41;
      *(a1 + 96) = v40;
      *(a1 + 112) = v39;
      if (*v18 < v20)
      {
        v43 = *(a1 + 32);
        v45 = *a1;
        v44 = *(a1 + 16);
        v46 = *(a1 + 56);
        *a1 = *v18;
        *(a1 + 16) = v46;
        *(a1 + 32) = *(a1 + 72);
        *v18 = v45;
        *(a1 + 56) = v44;
        *(a1 + 72) = v43;
      }
    }
  }

  else if (v17 >= v19)
  {
    v62 = *(a1 + 32);
    v64 = *a1;
    v63 = *(a1 + 16);
    v65 = *(a1 + 56);
    *a1 = *v18;
    *(a1 + 16) = v65;
    *(a1 + 32) = *(a1 + 72);
    *v18 = v64;
    *(a1 + 56) = v63;
    *(a1 + 72) = v62;
    if (v17 < *(a1 + 40))
    {
      v66 = *(a1 + 72);
      v68 = *v18;
      v67 = *(a1 + 56);
      v69 = *(a1 + 96);
      *v18 = *v16;
      *(a1 + 56) = v69;
      *(a1 + 72) = *(a1 + 112);
      *v16 = v68;
      *(a1 + 96) = v67;
      *(a1 + 112) = v66;
    }
  }

  else
  {
    v21 = *(a1 + 32);
    v23 = *a1;
    v22 = *(a1 + 16);
    v24 = *(a1 + 96);
    *a1 = *v16;
    *(a1 + 16) = v24;
    *(a1 + 32) = *(a1 + 112);
    *v16 = v23;
    *(a1 + 96) = v22;
    *(a1 + 112) = v21;
  }

  v70 = (a1 + 120);
  if ((a1 + 120) == a2)
  {
    return 1;
  }

  v71 = 0;
  v72 = 0;
  while (1)
  {
    v73 = *v70;
    if (*v70 < *v16)
    {
      v74 = *(v70 + 8);
      v97 = *(v70 + 24);
      v75 = v71;
      while (1)
      {
        v76 = a1 + v75;
        v77 = *(a1 + v75 + 96);
        *(v76 + 120) = *(a1 + v75 + 80);
        *(v76 + 136) = v77;
        *(v76 + 152) = *(a1 + v75 + 112);
        if (v75 == -80)
        {
          break;
        }

        v75 -= 40;
        if (v73 >= *(v76 + 40))
        {
          v78 = a1 + v75 + 120;
          goto LABEL_40;
        }
      }

      v78 = a1;
LABEL_40:
      *v78 = v73;
      *(v78 + 8) = v74;
      *(v78 + 24) = v97;
      if (++v72 == 8)
      {
        return (v70 + 40) == a2;
      }
    }

    v16 = v70;
    v71 += 40;
    v70 = (v70 + 40);
    if (v70 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::vector<mapped_memory_core_file_dumped_region_info_t>::__init_with_size[abi:ne200100]<mapped_memory_core_file_dumped_region_info_t*,mapped_memory_core_file_dumped_region_info_t*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<mapped_memory_core_file_dumped_region_info_t>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D97BEF04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<mapped_memory_core_file_dumped_region_info_t>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::allocator<mapped_memory_core_file_dumped_region_info_t>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

void *std::map<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__tree_node<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__tree_node<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,void *> *,long>>>(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>> const&>(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>> const&>(void *a1, uint64_t *a2, unsigned int *a3)
{
  result = *std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::__find_equal<unsigned int>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::__construct_node<std::pair<unsigned int const,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>> const&>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::__find_equal<unsigned int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
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
    if (*(v10 + 8) < *a5)
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
          v18 = *(v16 + 32);
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

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
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

void sub_1D97BF300(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__optional_copy_base<CSCppCoreFileRegionsTree,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  std::__optional_storage_base<CSCppCoreFileRegionsTree,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<CSCppCoreFileRegionsTree,false> const&>(a1, a2);
  return a1;
}

void sub_1D97BF354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::__optional_storage_base<CSCppCoreFileRegionsTree,false>::__construct_from[abi:ne200100]<std::__optional_copy_base<CSCppCoreFileRegionsTree,false> const&>(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = std::vector<CSCppCoreFileRegionInfo>::__init_with_size[abi:ne200100]<CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(result, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 5));
    *(v2 + 24) = 1;
  }

  return result;
}

CSCppCoreFileTaskCrashinfo *std::__optional_copy_base<CSCppCoreFileTaskCrashinfo,false>::__optional_copy_base[abi:ne200100](CSCppCoreFileTaskCrashinfo *this, const CSCppCoreFileTaskCrashinfo *a2)
{
  *this = 0;
  *(this + 440) = 0;
  if (*(a2 + 440) == 1)
  {
    CSCppCoreFileTaskCrashinfo::CSCppCoreFileTaskCrashinfo(this, a2);
    *(this + 440) = 1;
  }

  return this;
}

void sub_1D97BF428(_Unwind_Exception *exception_object)
{
  if (*(v1 + 440) == 1)
  {
    CSCppCoreFileTaskCrashinfo::~CSCppCoreFileTaskCrashinfo(v1);
  }

  _Unwind_Resume(exception_object);
}

void *CSCppCoreFileDarwinMetadata::CSCppCoreFileDarwinMetadata(void *a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const CSCppCoreFileTaskCrashinfo *a9)
{
  __p = 0;
  v20 = 0;
  v21 = 0;
  std::vector<mapped_memory_core_file_dumped_region_info_t>::__init_with_size[abi:ne200100]<mapped_memory_core_file_dumped_region_info_t*,mapped_memory_core_file_dumped_region_info_t*>(&__p, *a3, a3[1], 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3));
  std::map<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>::map[abi:ne200100](v18, a5);
  std::__optional_copy_base<CSCppCoreFileRegionsTree,false>::__optional_copy_base[abi:ne200100](v17, a6);
  CSCppCoreFileMetadata::CSCppCoreFileMetadata(a1, a2, &__p, a4, v18, a7, a8, v17);
  if (v17[24] == 1)
  {
    v22 = v17;
    std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v22);
  }

  std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(v18, v18[1]);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  *a1 = &unk_1F5507CD8;
  std::__optional_copy_base<CSCppCoreFileTaskCrashinfo,false>::__optional_copy_base[abi:ne200100]((a1 + 15), a9);
  return a1;
}

uint64_t CSCppCoreFileMetadata::CSCppCoreFileMetadata(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = &unk_1F5507B68;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  std::vector<mapped_memory_core_file_dumped_region_info_t>::__init_with_size[abi:ne200100]<mapped_memory_core_file_dumped_region_info_t*,mapped_memory_core_file_dumped_region_info_t*>(a1 + 16, *a3, a3[1], 0xCCCCCCCCCCCCCCCDLL * ((a3[1] - *a3) >> 3));
  *(a1 + 40) = a4;
  std::map<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>::map[abi:ne200100]((a1 + 48), a5);
  *(a1 + 72) = a6;
  *(a1 + 80) = a7;
  std::__optional_copy_base<CSCppCoreFileRegionsTree,false>::__optional_copy_base[abi:ne200100](a1 + 88, a8);
  return a1;
}

void sub_1D97BF68C(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(v1 + 48, *(v1 + 56));
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::optional<std::pair<vas_segmentinfo_table,CSExclaveCoreFileType>> core_file_get_exclave_segmentinfo_table_and_type<Pointer32>(char const*,mapped_memory_t *)::{lambda(void)#1},std::allocator<std::optional<std::pair<vas_segmentinfo_table,CSExclaveCoreFileType>> core_file_get_exclave_segmentinfo_table_and_type<Pointer32>(char const*,mapped_memory_t *)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F55088F0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::optional<std::pair<vas_segmentinfo_table,CSExclaveCoreFileType>> core_file_get_exclave_segmentinfo_table_and_type<Pointer32>(char const*,mapped_memory_t *)::{lambda(void)#1},std::allocator<std::optional<std::pair<vas_segmentinfo_table,CSExclaveCoreFileType>> core_file_get_exclave_segmentinfo_table_and_type<Pointer32>(char const*,mapped_memory_t *)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::vector<_CSTypeRef>::__assign_with_size[abi:ne200100]<_CSTypeRef const*,_CSTypeRef const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v10 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<_CSTypeRef>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 4)
  {
    v19 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v19);
    }

    v18 = &v9[v19];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v14;
        v14 += 16;
        *v16 = v17;
        v16 += 16;
        v15 += 16;
      }

      while (v14 != a3);
    }

    v18 = v15;
  }

  v7[1] = v18;
  return result;
}

void std::vector<_CSTypeRef>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<_CSTypeRef>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

void std::vector<vas_segment>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::allocator<MMapSegment>::allocate_at_least[abi:ne200100](a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
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
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

uint64_t std::vector<CSCppCoreFileRegionInfo>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<CSCppCoreFileRegionInfo>::__emplace_back_slow_path<CSCppCoreFileRegionInfo>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<CSCppCoreFileRegionInfo>>::construct[abi:ne200100]<CSCppCoreFileRegionInfo,CSCppCoreFileRegionInfo,void,0>(a1, a1[1], a2);
    result = v3 + 224;
    a1[1] = v3 + 224;
  }

  a1[1] = result;
  return result;
}

void set_up_mapped_memory_cache_for_exclave_core_file<SizeAndEndianness<Pointer32,LittleEndian>>(char const*,unsigned long long,vas_segmentinfo_table,CSExclaveCoreFileType,mapped_memory_t *)::{lambda(unsigned long long)#1}::operator()(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = a2 - v2;
  if (a2 > v2)
  {
    v5 = a2 - v2;
    do
    {
      v6 = *(a1 + 48);
      if (v5 >= 0x6400000)
      {
        v7 = 104857600;
      }

      else
      {
        v7 = v5;
      }

      *&v16 = v2;
      *(&v16 + 1) = v7;
      v19 = 0;
      v18 = 0;
      v20 = 0;
      v8 = *(a1 + 25);
      v17 = 1;
      v21 = v8;
      memset(v23, 0, sizeof(v23));
      v22 = 0;
      v24 = 3;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v9 = *(a1 + 28);
      v29 = 3;
      v30 = v9;
      LOBYTE(v31) = 0;
      v33 = 0;
      v10 = v7 >> 14;
      v13 = 0;
      std::vector<unsigned short>::vector[abi:ne200100](v14, v7 >> 14);
      v34 = *v14;
      v35 = v15;
      v14[1] = 0;
      v15 = 0;
      v14[0] = 0;
      v36 = 1;
      std::vector<unsigned short>::vector[abi:ne200100](__p, v10);
      v37 = *__p;
      v38 = v12;
      __p[1] = 0;
      v12 = 0;
      __p[0] = 0;
      v39 = 1;
      memset(v40, 0, sizeof(v40));
      std::vector<CSCppCoreFileRegionInfo>::push_back[abi:ne200100](v6, &v16);
      v41 = v40;
      std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v41);
      if (v39 == 1 && v37)
      {
        *(&v37 + 1) = v37;
        operator delete(v37);
      }

      if (v36 == 1 && v34)
      {
        *(&v34 + 1) = v34;
        operator delete(v34);
      }

      if (v33 == 1 && v32 < 0)
      {
        operator delete(v31);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v14[0])
      {
        v14[1] = v14[0];
        operator delete(v14[0]);
      }

      v2 += 104857600;
      v5 -= 104857600;
    }

    while (v2 < v3 + *(a1 + 40));
  }
}

void sub_1D97BFC38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a37 == 1 && a36 < 0)
  {
    operator delete(*(v41 + 104));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D97BFE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, void *a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (a14 == 1)
  {
    *(v21 - 88) = &a11;
    std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100]((v21 - 88));
  }

  std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(&a16, a17);
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  MEMORY[0x1DA736760](v20, 0x10A3C40ADEFD0ABLL);
  _Unwind_Resume(a1);
}

__n128 _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E_P11vas_segmentLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 2;
  v10 = a2 - 4;
  v11 = a2 - 6;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 5;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v87 = a2[-2].n128_u64[0];
        v86 = a2 - 2;
        if (v87 >= *v12)
        {
          return result;
        }

LABEL_106:
        v182 = *v12;
        v215 = *(v12 + 16);
        v92 = v86[1];
        *v12 = *v86;
        *(v12 + 16) = v92;
        result = v182;
        v93 = v215;
LABEL_107:
        *v86 = result;
        v86[1] = v93;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v88 = (v12 + 32);
      v94 = *(v12 + 32);
      v95 = (v12 + 64);
      v96 = *(v12 + 64);
      if (v94 >= *v12)
      {
        if (v96 < v94)
        {
          v141 = *v88;
          result = *(v12 + 48);
          v142 = *(v12 + 80);
          *v88 = *v95;
          *(v12 + 48) = v142;
          *v95 = v141;
          *(v12 + 80) = result;
          if (*(v12 + 32) < *v12)
          {
            v187 = *v12;
            v221 = *(v12 + 16);
            v143 = *(v12 + 48);
            *v12 = *v88;
            *(v12 + 16) = v143;
            result = v187;
            *v88 = v187;
            *(v12 + 48) = v221;
          }
        }
      }

      else if (v96 >= v94)
      {
        v190 = *v12;
        v224 = *(v12 + 16);
        v150 = *(v12 + 48);
        *v12 = *v88;
        *(v12 + 16) = v150;
        result = v190;
        *v88 = v190;
        *(v12 + 48) = v224;
        if (v96 < *(v12 + 32))
        {
          v151 = *v88;
          result = *(v12 + 48);
          v152 = *(v12 + 80);
          *v88 = *v95;
          *(v12 + 48) = v152;
          *v95 = v151;
          *(v12 + 80) = result;
        }
      }

      else
      {
        v183 = *v12;
        v216 = *(v12 + 16);
        v97 = *(v12 + 80);
        *v12 = *v95;
        *(v12 + 16) = v97;
        result = v183;
        *v95 = v183;
        *(v12 + 80) = v216;
      }

      if (v9->n128_u64[0] >= v95->n128_u64[0])
      {
        return result;
      }

      result = *v95;
      v225 = *(v12 + 80);
      v153 = a2[-1];
      *v95 = *v9;
      *(v12 + 80) = v153;
      *v9 = result;
      a2[-1] = v225;
      if (v95->n128_u64[0] >= v88->n128_u64[0])
      {
        return result;
      }

      v154 = *v88;
      result = *(v12 + 48);
      v155 = *(v12 + 80);
      *v88 = *v95;
      *(v12 + 48) = v155;
      *v95 = v154;
      *(v12 + 80) = result;
LABEL_189:
      if (*(v12 + 32) < *v12)
      {
        v191 = *v12;
        v226 = *(v12 + 16);
        v156 = v88[1];
        *v12 = *v88;
        *(v12 + 16) = v156;
        result = v191;
        *v88 = v191;
        v88[1] = v226;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppSegmentRange *,0>(v12, (v12 + 32), (v12 + 64), (v12 + 96), a2 - 2, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v98 = (v12 + 32);
      v100 = v12 == a2 || v98 == a2;
      if (a4)
      {
        if (!v100)
        {
          v101 = 0;
          v102 = v12;
          do
          {
            v103 = v98;
            v104 = *(v102 + 32);
            if (v104 < *v102)
            {
              v184 = *(v102 + 40);
              v217 = *(v102 + 56);
              v105 = v101;
              while (1)
              {
                v106 = v12 + v105;
                v107 = *(v12 + v105 + 16);
                *(v106 + 32) = *(v12 + v105);
                *(v106 + 48) = v107;
                if (!v105)
                {
                  break;
                }

                v105 -= 32;
                if (v104 >= *(v106 - 32))
                {
                  v108 = v12 + v105 + 32;
                  goto LABEL_126;
                }
              }

              v108 = v12;
LABEL_126:
              *v108 = v104;
              result = v184;
              *(v108 + 24) = v217;
              *(v108 + 8) = v184;
            }

            v98 = v103 + 2;
            v101 += 32;
            v102 = v103;
          }

          while (&v103[2] != a2);
        }
      }

      else if (!v100)
      {
        do
        {
          v144 = v98;
          v145 = *(a1 + 32);
          if (v145 < *a1)
          {
            v188 = *(a1 + 40);
            v222 = *(a1 + 56);
            do
            {
              v146 = v98[-1];
              *v98 = v98[-2];
              v98[1] = v146;
              v147 = v98[-4].n128_u64[0];
              v98 -= 2;
            }

            while (v145 < v147);
            v98->n128_u64[0] = v145;
            result = v188;
            v98[1].n128_u64[1] = v222;
            *(v98 + 8) = v188;
          }

          v98 = (v144 + 32);
          a1 = v144;
        }

        while ((v144 + 32) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v109 = (v13 - 2) >> 1;
        v110 = v109;
        do
        {
          v111 = v110;
          if (v109 >= v110)
          {
            v112 = (2 * v110) | 1;
            v113 = v12 + 32 * v112;
            if (2 * v111 + 2 >= v13)
            {
              v114 = *v113;
            }

            else
            {
              v114 = *(v113 + 32);
              v115 = *v113 >= v114;
              if (*v113 > v114)
              {
                v114 = *v113;
              }

              if (!v115)
              {
                v113 += 32;
                v112 = 2 * v111 + 2;
              }
            }

            v116 = v12 + 32 * v111;
            v117 = *v116;
            if (v114 >= *v116)
            {
              v218 = *(v116 + 24);
              v185 = *(v116 + 8);
              do
              {
                v118 = v116;
                v116 = v113;
                v119 = *(v113 + 16);
                *v118 = *v113;
                v118[1] = v119;
                if (v109 < v112)
                {
                  break;
                }

                v120 = (2 * v112) | 1;
                v113 = v12 + 32 * v120;
                v112 = 2 * v112 + 2;
                if (v112 >= v13)
                {
                  v121 = *v113;
                  v112 = v120;
                }

                else
                {
                  v121 = *v113;
                  v122 = *(v113 + 32);
                  if (*v113 <= v122)
                  {
                    v121 = *(v113 + 32);
                  }

                  if (*v113 >= v122)
                  {
                    v112 = v120;
                  }

                  else
                  {
                    v113 += 32;
                  }
                }
              }

              while (v121 >= v117);
              *v116 = v117;
              *(v116 + 24) = v218;
              *(v116 + 8) = v185;
            }
          }

          v110 = v111 - 1;
        }

        while (v111);
        do
        {
          v123 = 0;
          v186 = *v12;
          v219 = *(v12 + 16);
          v124 = v12;
          do
          {
            v125 = &v124[2 * v123];
            v126 = v125 + 2;
            v127 = (2 * v123) | 1;
            v123 = 2 * v123 + 2;
            if (v123 >= v13)
            {
              v123 = v127;
            }

            else
            {
              v129 = v125[4].n128_u64[0];
              v128 = v125 + 4;
              if (v128[-2].n128_u64[0] >= v129)
              {
                v123 = v127;
              }

              else
              {
                v126 = v128;
              }
            }

            v130 = v126[1];
            *v124 = *v126;
            v124[1] = v130;
            v124 = v126;
          }

          while (v123 <= ((v13 - 2) >> 1));
          a2 -= 2;
          if (v126 == a2)
          {
            result = v186;
            *v126 = v186;
            v126[1] = v219;
          }

          else
          {
            v131 = a2[1];
            *v126 = *a2;
            v126[1] = v131;
            result = v186;
            *a2 = v186;
            a2[1] = v219;
            v132 = (&v126[2] - v12) >> 5;
            v133 = v132 < 2;
            v134 = v132 - 2;
            if (!v133)
            {
              v135 = v134 >> 1;
              v136 = (v12 + 32 * v135);
              v137 = v126->n128_u64[0];
              if (v136->n128_u64[0] < v126->n128_u64[0])
              {
                v162 = v126[1].n128_i64[1];
                v159 = *(v126 + 8);
                do
                {
                  v138 = v126;
                  v126 = v136;
                  v139 = v136[1];
                  *v138 = *v136;
                  v138[1] = v139;
                  if (!v135)
                  {
                    break;
                  }

                  v135 = (v135 - 1) >> 1;
                  v136 = (v12 + 32 * v135);
                }

                while (v136->n128_u64[0] < v137);
                v126->n128_u64[0] = v137;
                result = v159;
                v126[1].n128_u64[1] = v162;
                *(v126 + 8) = v159;
              }
            }
          }

          v133 = v13-- <= 2;
        }

        while (!v133);
      }

      return result;
    }

    v14 = v12 + 32 * (v13 >> 1);
    v15 = v14;
    v16 = v9->n128_u64[0];
    if (v13 >= 0x81)
    {
      v17 = *v14;
      if (*v14 >= *v12)
      {
        if (v16 < v17)
        {
          v165 = *v14;
          v194 = *(v14 + 16);
          v21 = a2[-1];
          *v14 = *v9;
          *(v14 + 16) = v21;
          *v9 = v165;
          a2[-1] = v194;
          if (*v14 < *v12)
          {
            v166 = *v12;
            v195 = *(v12 + 16);
            v22 = *(v14 + 16);
            *v12 = *v14;
            *(v12 + 16) = v22;
            *v14 = v166;
            *(v14 + 16) = v195;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v163 = *v12;
          v192 = *(v12 + 16);
          v18 = a2[-1];
          *v12 = *v9;
          *(v12 + 16) = v18;
          goto LABEL_26;
        }

        v169 = *v12;
        v198 = *(v12 + 16);
        v25 = *(v14 + 16);
        *v12 = *v14;
        *(v12 + 16) = v25;
        *v14 = v169;
        *(v14 + 16) = v198;
        if (v9->n128_u64[0] < *v14)
        {
          v163 = *v14;
          v192 = *(v14 + 16);
          v26 = a2[-1];
          *v14 = *v9;
          *(v14 + 16) = v26;
LABEL_26:
          *v9 = v163;
          a2[-1] = v192;
        }
      }

      v27 = (v12 + 32);
      v28 = (v14 - 32);
      v29 = *(v14 - 32);
      v30 = v10->n128_u64[0];
      if (v29 >= *(v12 + 32))
      {
        if (v30 < v29)
        {
          v170 = *v28;
          v199 = *(v14 - 16);
          v34 = a2[-3];
          *v28 = *v10;
          *(v14 - 16) = v34;
          *v10 = v170;
          a2[-3] = v199;
          if (v28->n128_u64[0] < v27->n128_u64[0])
          {
            v35 = *v27;
            v200 = *(v12 + 48);
            v36 = *(v14 - 16);
            *v27 = *v28;
            *(v12 + 48) = v36;
            *v28 = v35;
            *(v14 - 16) = v200;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *v27;
          v32 = *(v12 + 48);
          v33 = a2[-3];
          *v27 = *v10;
          *(v12 + 48) = v33;
          goto LABEL_38;
        }

        v39 = *v27;
        v202 = *(v12 + 48);
        v40 = *(v14 - 16);
        *v27 = *v28;
        *(v12 + 48) = v40;
        *v28 = v39;
        *(v14 - 16) = v202;
        if (v10->n128_u64[0] < v28->n128_u64[0])
        {
          v172 = *v28;
          v203 = *(v14 - 16);
          v41 = a2[-3];
          *v28 = *v10;
          *(v14 - 16) = v41;
          v31 = v172;
          v32 = v203;
LABEL_38:
          *v10 = v31;
          a2[-3] = v32;
        }
      }

      v42 = (v12 + 64);
      v45 = *(v14 + 32);
      v43 = (v14 + 32);
      v44 = v45;
      v46 = v11->n128_u64[0];
      if (v45 >= *(v12 + 64))
      {
        if (v46 < v44)
        {
          v173 = *v43;
          v204 = v43[1];
          v50 = a2[-5];
          *v43 = *v11;
          v43[1] = v50;
          *v11 = v173;
          a2[-5] = v204;
          if (v43->n128_u64[0] < v42->n128_u64[0])
          {
            v51 = *v42;
            v205 = *(v12 + 80);
            v52 = v43[1];
            *v42 = *v43;
            *(v12 + 80) = v52;
            *v43 = v51;
            v43[1] = v205;
          }
        }
      }

      else
      {
        if (v46 < v44)
        {
          v47 = *v42;
          v48 = *(v12 + 80);
          v49 = a2[-5];
          *v42 = *v11;
          *(v12 + 80) = v49;
          goto LABEL_47;
        }

        v53 = *v42;
        v206 = *(v12 + 80);
        v54 = v43[1];
        *v42 = *v43;
        *(v12 + 80) = v54;
        *v43 = v53;
        v43[1] = v206;
        if (v11->n128_u64[0] < v43->n128_u64[0])
        {
          v174 = *v43;
          v207 = v43[1];
          v55 = a2[-5];
          *v43 = *v11;
          v43[1] = v55;
          v47 = v174;
          v48 = v207;
LABEL_47:
          *v11 = v47;
          a2[-5] = v48;
        }
      }

      v56 = *v15;
      v57 = v43->n128_u64[0];
      if (*v15 >= v28->n128_u64[0])
      {
        if (v57 < v56)
        {
          v176 = *v15;
          v209 = *(v15 + 16);
          v59 = v43[1];
          *v15 = *v43;
          *(v15 + 16) = v59;
          *v43 = v176;
          v43[1] = v209;
          if (*v15 < v28->n128_u64[0])
          {
            v177 = *v28;
            v210 = v28[1];
            v60 = *(v15 + 16);
            *v28 = *v15;
            v28[1] = v60;
            *v15 = v177;
            *(v15 + 16) = v210;
          }
        }
      }

      else
      {
        if (v57 < v56)
        {
          v175 = *v28;
          v208 = v28[1];
          v58 = v43[1];
          *v28 = *v43;
          v28[1] = v58;
          goto LABEL_56;
        }

        v178 = *v28;
        v211 = v28[1];
        v61 = *(v15 + 16);
        *v28 = *v15;
        v28[1] = v61;
        *v15 = v178;
        *(v15 + 16) = v211;
        if (v43->n128_u64[0] < *v15)
        {
          v175 = *v15;
          v208 = *(v15 + 16);
          v62 = v43[1];
          *v15 = *v43;
          *(v15 + 16) = v62;
LABEL_56:
          *v43 = v175;
          v43[1] = v208;
        }
      }

      v179 = *v12;
      v212 = *(v12 + 16);
      v63 = *(v15 + 16);
      *v12 = *v15;
      *(v12 + 16) = v63;
      *v15 = v179;
      *(v15 + 16) = v212;
      goto LABEL_58;
    }

    v19 = *v12;
    if (*v12 >= *v15)
    {
      if (v16 < v19)
      {
        v167 = *v12;
        v196 = *(v12 + 16);
        v23 = a2[-1];
        *v12 = *v9;
        *(v12 + 16) = v23;
        *v9 = v167;
        a2[-1] = v196;
        if (*v12 < *v15)
        {
          v168 = *v15;
          v197 = *(v15 + 16);
          v24 = *(v12 + 16);
          *v15 = *v12;
          *(v15 + 16) = v24;
          *v12 = v168;
          *(v12 + 16) = v197;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v19)
    {
      v171 = *v15;
      v201 = *(v15 + 16);
      v37 = *(v12 + 16);
      *v15 = *v12;
      *(v15 + 16) = v37;
      *v12 = v171;
      *(v12 + 16) = v201;
      if (v9->n128_u64[0] >= *v12)
      {
        goto LABEL_58;
      }

      v164 = *v12;
      v193 = *(v12 + 16);
      v38 = a2[-1];
      *v12 = *v9;
      *(v12 + 16) = v38;
    }

    else
    {
      v164 = *v15;
      v193 = *(v15 + 16);
      v20 = a2[-1];
      *v15 = *v9;
      *(v15 + 16) = v20;
    }

    *v9 = v164;
    a2[-1] = v193;
LABEL_58:
    --a3;
    v64 = *v12;
    if ((a4 & 1) != 0 || *(v12 - 32) < v64)
    {
      v65 = 0;
      v160 = *(v12 + 24);
      v157 = *(v12 + 8);
      do
      {
        v66 = *(v12 + v65 + 32);
        v65 += 32;
      }

      while (v66 < v64);
      v67 = v12 + v65;
      v68 = a2;
      if (v65 == 32)
      {
        v68 = a2;
        do
        {
          if (v67 >= v68)
          {
            break;
          }

          v70 = v68[-2].n128_u64[0];
          v68 -= 2;
        }

        while (v70 >= v64);
      }

      else
      {
        do
        {
          v69 = v68[-2].n128_u64[0];
          v68 -= 2;
        }

        while (v69 >= v64);
      }

      v12 += v65;
      if (v67 < v68)
      {
        v71 = v68;
        do
        {
          v180 = *v12;
          v213 = *(v12 + 16);
          v72 = v71[1];
          *v12 = *v71;
          *(v12 + 16) = v72;
          *v71 = v180;
          v71[1] = v213;
          do
          {
            v73 = *(v12 + 32);
            v12 += 32;
          }

          while (v73 < v64);
          do
          {
            v74 = v71[-2].n128_u64[0];
            v71 -= 2;
          }

          while (v74 >= v64);
        }

        while (v12 < v71);
      }

      if (v12 - 32 != a1)
      {
        v75 = *(v12 - 16);
        *a1 = *(v12 - 32);
        *(a1 + 16) = v75;
      }

      *(v12 - 32) = v64;
      *(v12 - 8) = v160;
      *(v12 - 24) = v157;
      if (v67 < v68)
      {
        goto LABEL_79;
      }

      v76 = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E_P11vas_segmentEEbT1_SP_SI_(a1, v12 - 32, v157);
      if (_ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E_P11vas_segmentEEbT1_SP_SI_(v12, a2, v77))
      {
        a2 = (v12 - 32);
        if (!v76)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v76)
      {
LABEL_79:
        _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E_P11vas_segmentLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(a1, v12 - 32, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v161 = *(v12 + 24);
      v158 = *(v12 + 8);
      if (v64 >= v9->n128_u64[0])
      {
        v79 = v12 + 32;
        do
        {
          v12 = v79;
          if (v79 >= a2)
          {
            break;
          }

          v79 += 32;
        }

        while (v64 >= *v12);
      }

      else
      {
        do
        {
          v78 = *(v12 + 32);
          v12 += 32;
        }

        while (v64 >= v78);
      }

      v80 = a2;
      if (v12 < a2)
      {
        v80 = a2;
        do
        {
          v81 = v80[-2].n128_u64[0];
          v80 -= 2;
        }

        while (v64 < v81);
      }

      while (v12 < v80)
      {
        v181 = *v12;
        v214 = *(v12 + 16);
        v82 = v80[1];
        *v12 = *v80;
        *(v12 + 16) = v82;
        *v80 = v181;
        v80[1] = v214;
        do
        {
          v83 = *(v12 + 32);
          v12 += 32;
        }

        while (v64 >= v83);
        do
        {
          v84 = v80[-2].n128_u64[0];
          v80 -= 2;
        }

        while (v64 < v84);
      }

      if (v12 - 32 != a1)
      {
        v85 = *(v12 - 16);
        *a1 = *(v12 - 32);
        *(a1 + 16) = v85;
      }

      a4 = 0;
      *(v12 - 32) = v64;
      result = v158;
      *(v12 - 8) = v161;
      *(v12 - 24) = v158;
    }
  }

  v88 = (v12 + 32);
  v89 = *(v12 + 32);
  v91 = a2[-2].n128_u64[0];
  v86 = a2 - 2;
  v90 = v91;
  if (v89 >= *v12)
  {
    if (v90 >= v89)
    {
      return result;
    }

    result = *v88;
    v220 = *(v12 + 48);
    v140 = v86[1];
    *v88 = *v86;
    *(v12 + 48) = v140;
    *v86 = result;
    v86[1] = v220;
    goto LABEL_189;
  }

  if (v90 < v89)
  {
    goto LABEL_106;
  }

  v189 = *v12;
  v223 = *(v12 + 16);
  v148 = *(v12 + 48);
  *v12 = *v88;
  *(v12 + 16) = v148;
  result = v189;
  *v88 = v189;
  *(v12 + 48) = v223;
  if (v86->n128_u64[0] < *(v12 + 32))
  {
    result = *v88;
    v93 = *(v12 + 48);
    v149 = v86[1];
    *v88 = *v86;
    *(v12 + 48) = v149;
    goto LABEL_107;
  }

  return result;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E_P11vas_segmentEEbT1_SP_SI_(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 32);
      v7 = *(a1 + 32);
      v9 = *(a2 - 32);
      v4 = a2 - 32;
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v45 = *a1;
          v44 = *(a1 + 16);
          v46 = *(a1 + 48);
          *a1 = *v6;
          *(a1 + 16) = v46;
          *v6 = v45;
          *(a1 + 48) = v44;
          if (*v4 >= *(a1 + 32))
          {
            return 1;
          }

          v11 = *v6;
          v10 = *(a1 + 48);
          v47 = *(v4 + 16);
          *v6 = *v4;
          *(a1 + 48) = v47;
          goto LABEL_13;
        }

LABEL_12:
        v11 = *a1;
        v10 = *(a1 + 16);
        v12 = *(v4 + 16);
        *a1 = *v4;
        *(a1 + 16) = v12;
LABEL_13:
        *v4 = v11;
        *(v4 + 16) = v10;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v30 = *v6;
      v29 = *(a1 + 48);
      v31 = *(v4 + 16);
      *v6 = *v4;
      *(a1 + 48) = v31;
      *v4 = v30;
      *(v4 + 16) = v29;
LABEL_50:
      if (*(a1 + 32) < *a1)
      {
        v71 = *a1;
        v70 = *(a1 + 16);
        v72 = v6[1];
        *a1 = *v6;
        *(a1 + 16) = v72;
        *v6 = v71;
        v6[1] = v70;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppSegmentRange *,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96), (a2 - 32), a3);
      return 1;
    }

    v6 = (a1 + 32);
    v21 = *(a1 + 32);
    v22 = (a1 + 64);
    v23 = *(a1 + 64);
    v24 = (a2 - 32);
    v25 = *a1;
    if (v21 >= *a1)
    {
      if (v23 < v21)
      {
        v39 = *v6;
        v38 = *(a1 + 48);
        v40 = *(a1 + 80);
        *v6 = *v22;
        *(a1 + 48) = v40;
        *v22 = v39;
        *(a1 + 80) = v38;
        if (v6->n128_u64[0] < v25)
        {
          v42 = *a1;
          v41 = *(a1 + 16);
          v43 = *(a1 + 48);
          *a1 = *v6;
          *(a1 + 16) = v43;
          *v6 = v42;
          *(a1 + 48) = v41;
        }
      }

      goto LABEL_47;
    }

    if (v23 >= v21)
    {
      v61 = *a1;
      v60 = *(a1 + 16);
      v62 = *(a1 + 48);
      *a1 = *v6;
      *(a1 + 16) = v62;
      *v6 = v61;
      *(a1 + 48) = v60;
      if (v23 >= *(a1 + 32))
      {
        goto LABEL_47;
      }

      v27 = *v6;
      v26 = *(a1 + 48);
      v63 = *(a1 + 80);
      *v6 = *v22;
      *(a1 + 48) = v63;
    }

    else
    {
      v27 = *a1;
      v26 = *(a1 + 16);
      v28 = *(a1 + 80);
      *a1 = *v22;
      *(a1 + 16) = v28;
    }

    *v22 = v27;
    *(a1 + 80) = v26;
LABEL_47:
    if (v24->n128_u64[0] >= v22->n128_u64[0])
    {
      return 1;
    }

    v65 = *v22;
    v64 = *(a1 + 80);
    v66 = *(a2 - 16);
    *v22 = *v24;
    *(a1 + 80) = v66;
    *v24 = v65;
    *(a2 - 16) = v64;
    if (v22->n128_u64[0] >= v6->n128_u64[0])
    {
      return 1;
    }

    v68 = *v6;
    v67 = *(a1 + 48);
    v69 = *(a1 + 80);
    *v6 = *v22;
    *(a1 + 48) = v69;
    *v22 = v68;
    *(a1 + 80) = v67;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 32);
    v4 = a2 - 32;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v13 = (a1 + 64);
  v14 = *(a1 + 64);
  v15 = (a1 + 32);
  v16 = *(a1 + 32);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v33 = *v15;
      v32 = *(a1 + 48);
      v34 = *(a1 + 80);
      *v15 = *v13;
      *(a1 + 48) = v34;
      *v13 = v33;
      *(a1 + 80) = v32;
      if (v15->n128_u64[0] < v17)
      {
        v36 = *a1;
        v35 = *(a1 + 16);
        v37 = *(a1 + 48);
        *a1 = *v15;
        *(a1 + 16) = v37;
        *v15 = v36;
        *(a1 + 48) = v35;
      }
    }
  }

  else
  {
    if (v14 >= v16)
    {
      v49 = *a1;
      v48 = *(a1 + 16);
      v50 = *(a1 + 48);
      *a1 = *v15;
      *(a1 + 16) = v50;
      *v15 = v49;
      *(a1 + 48) = v48;
      if (v14 >= *(a1 + 32))
      {
        goto LABEL_33;
      }

      v19 = *v15;
      v18 = *(a1 + 48);
      v51 = *(a1 + 80);
      *v15 = *v13;
      *(a1 + 48) = v51;
    }

    else
    {
      v19 = *a1;
      v18 = *(a1 + 16);
      v20 = *(a1 + 80);
      *a1 = *v13;
      *(a1 + 16) = v20;
    }

    *v13 = v19;
    *(a1 + 80) = v18;
  }

LABEL_33:
  v52 = a1 + 96;
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v53 = 0;
  v54 = 0;
  while (1)
  {
    v55 = *v52;
    if (*v52 < v13->n128_u64[0])
    {
      v74 = *(v52 + 8);
      v75 = *(v52 + 24);
      v56 = v53;
      while (1)
      {
        v57 = a1 + v56;
        v58 = *(a1 + v56 + 80);
        *(v57 + 96) = *(a1 + v56 + 64);
        *(v57 + 112) = v58;
        if (v56 == -64)
        {
          break;
        }

        v56 -= 32;
        if (v55 >= *(v57 + 32))
        {
          v59 = a1 + v56 + 96;
          goto LABEL_41;
        }
      }

      v59 = a1;
LABEL_41:
      *v59 = v55;
      *(v59 + 8) = v74;
      *(v59 + 24) = v75;
      if (++v54 == 8)
      {
        return v52 + 32 == a2;
      }
    }

    v13 = v52;
    v53 += 32;
    v52 += 32;
    if (v52 == a2)
    {
      return 1;
    }
  }
}

void *std::__tree<unsigned long,std::greater<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(uint64_t a1, unint64_t *a2)
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
      if (v3 <= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 <= v3)
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

uint64_t std::vector<CSCppCoreFileRegionInfo>::__emplace_back_slow_path<CSCppCoreFileRegionInfo>(uint64_t *a1, __int128 *a2)
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
  std::allocator_traits<std::allocator<CSCppCoreFileRegionInfo>>::construct[abi:ne200100]<CSCppCoreFileRegionInfo,CSCppCoreFileRegionInfo,void,0>(a1, 224 * v2, a2);
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

void sub_1D97C0FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CSCppCoreFileRegionInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<CSCppCoreFileRegionInfo>>::construct[abi:ne200100]<CSCppCoreFileRegionInfo,CSCppCoreFileRegionInfo,void,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[2];
  *(a2 + 16) = a3[1];
  *(a2 + 32) = v4;
  *a2 = v3;
  v5 = a3[3];
  v6 = a3[4];
  v7 = a3[5];
  *(a2 + 96) = *(a3 + 12);
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *(a2 + 48) = v5;
  *(a2 + 104) = 0;
  *(a2 + 128) = 0;
  if (*(a3 + 128) == 1)
  {
    v8 = *(a3 + 104);
    *(a2 + 120) = *(a3 + 15);
    *(a2 + 104) = v8;
    *(a3 + 14) = 0;
    *(a3 + 15) = 0;
    *(a3 + 13) = 0;
    *(a2 + 128) = 1;
  }

  *(a2 + 136) = 0;
  *(a2 + 160) = 0;
  if (*(a3 + 160) == 1)
  {
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    *(a2 + 136) = *(a3 + 136);
    *(a2 + 152) = *(a3 + 19);
    *(a3 + 17) = 0;
    *(a3 + 18) = 0;
    *(a3 + 19) = 0;
    *(a2 + 160) = 1;
  }

  *(a2 + 168) = 0;
  *(a2 + 192) = 0;
  if (*(a3 + 192) == 1)
  {
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a2 + 168) = *(a3 + 168);
    *(a2 + 184) = *(a3 + 23);
    *(a3 + 21) = 0;
    *(a3 + 22) = 0;
    *(a3 + 23) = 0;
    *(a2 + 192) = 1;
  }

  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  result = *(a3 + 200);
  *(a2 + 200) = result;
  *(a2 + 216) = *(a3 + 27);
  *(a3 + 25) = 0;
  *(a3 + 26) = 0;
  *(a3 + 27) = 0;
  return result;
}

void *std::vector<unsigned short>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned short>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1D97C1240(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<CSCppCoreFileRegionInfo>::__insert_with_size[abi:ne200100]<std::__wrap_iter<CSCppCoreFileRegionInfo*>,std::__wrap_iter<CSCppCoreFileRegionInfo*>>(uint64_t *a1, uint64_t a2, const CSCppCoreFileRegionInfo *a3, CSCppCoreFileRegionInfo *a4, uint64_t a5)
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
        v18 = 224 * a5;
        std::vector<CSCppCoreFileRegionInfo>::__move_range(a1, a2, a1[1], a2 + 224 * a5);
        v17 = (v7 + v18);
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<CSCppCoreFileRegionInfo>,CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<CSCppCoreFileRegionInfo>::__move_range(a1, v5, v10, v5 + 224 * a5);
        v17 = (v7 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<CSCppCoreFileRegionInfo *,CSCppCoreFileRegionInfo *,CSCppCoreFileRegionInfo *>(v23, v7, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + 0x6DB6DB6DB6DB6DB7 * ((v10 - *a1) >> 5);
    if (v12 > 0x124924924924924)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
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

    v26 = a1;
    if (v15)
    {
      std::allocator<CSCppCoreFileRegionInfo>::allocate_at_least[abi:ne200100](a1, v15);
    }

    v19 = (32 * (v13 >> 5));
    v23[0] = 0;
    v23[1] = v19;
    v24 = v19;
    v25 = 0;
    v20 = 224 * a5;
    v21 = (v19 + 224 * a5);
    do
    {
      CSCppCoreFileRegionInfo::CSCppCoreFileRegionInfo(v19, v7);
      v19 = (v19 + 224);
      v7 = (v7 + 224);
      v20 -= 224;
    }

    while (v20);
    v24 = v21;
    v5 = std::vector<CSCppCoreFileRegionInfo>::__swap_out_circular_buffer(a1, v23, v5);
    std::__split_buffer<CSCppCoreFileRegionInfo>::~__split_buffer(v23);
  }

  return v5;
}

uint64_t std::vector<CSCppCoreFileRegionInfo>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = (a2 + v6 - a4);
    v8 = *(a1 + 8);
    do
    {
      std::allocator_traits<std::allocator<CSCppCoreFileRegionInfo>>::construct[abi:ne200100]<CSCppCoreFileRegionInfo,CSCppCoreFileRegionInfo,void,0>(a1, v8, v10);
      v10 += 14;
      v8 += 224;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<CSCppCoreFileRegionInfo *,CSCppCoreFileRegionInfo *,CSCppCoreFileRegionInfo *>(&v12, a2, v7, v6);
}

uint64_t std::vector<CSCppCoreFileRegionInfo>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CSCppCoreFileRegionInfo>,CSCppCoreFileRegionInfo*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CSCppCoreFileRegionInfo>,CSCppCoreFileRegionInfo*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<CSCppCoreFileRegionInfo *,CSCppCoreFileRegionInfo *,CSCppCoreFileRegionInfo *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = *(a3 + v7 - 224);
      v10 = *(a3 + v7 - 192);
      *(v8 - 208) = *(a3 + v7 - 208);
      *(v8 - 192) = v10;
      *(v8 - 224) = v9;
      v11 = *(a3 + v7 - 176);
      v12 = *(a3 + v7 - 160);
      v13 = *(a3 + v7 - 144);
      *(v8 - 128) = *(a3 + v7 - 128);
      *(v8 - 160) = v12;
      *(v8 - 144) = v13;
      *(v8 - 176) = v11;
      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a4 + v7 - 120, (a3 + v7 - 120));
      std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a4 + v7 - 88, (a3 + v7 - 88));
      v14 = a4 + v7;
      v15 = a3 + v7;
      std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a4 + v7 - 56, (a3 + v7 - 56));
      std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((a4 + v7 - 24));
      *(v14 - 24) = *(a3 + v7 - 24);
      *(v14 - 8) = *(a3 + v7 - 8);
      *(v15 - 24) = 0;
      *(v15 - 16) = 0;
      *(v15 - 8) = 0;
      v7 -= 224;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

__n128 std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {

      result.n128_u64[0] = std::vector<CSSymbolicatorAotImageInfo>::__move_assign(a1, a2).n128_u64[0];
    }
  }

  else if (*(a1 + 24))
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(unint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v6 = a2;
  v7 = a2 - 14;
  v223 = a2 - 42;
  v224 = a2 - 28;
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = v6 - v8;
    v10 = 0x6DB6DB6DB6DB6DB7 * ((v6 - v8) >> 5);
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return;
      }

      v6 = a2;
      if (v10 == 2)
      {
        v93 = a2 - 14;
        if (*(a2 - 28) >= *a1)
        {
          return;
        }

LABEL_136:
        v96 = a1;
        v95 = v93;
        goto LABEL_137;
      }

      goto LABEL_9;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLi0EEEvT1_SP_SP_SP_SI_(a1, (a1 + 224), (a1 + 448), v7);
      return;
    }

    if (v10 == 5)
    {
      _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLi0EEEvT1_SP_SP_SP_SI_(a1, (a1 + 224), (a1 + 448), (a1 + 672));
      v98 = *(v6 - 28);
      v97 = v6 - 14;
      if (v98 < *(a1 + 672))
      {
        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>((a1 + 672), v97);
        if (*(a1 + 672) < *(a1 + 448))
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>((a1 + 448), (a1 + 672));
          if (*(a1 + 448) < *(a1 + 224))
          {
            std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>((a1 + 224), (a1 + 448));
            if (*(a1 + 224) < *a1)
            {
              v95 = (a1 + 224);
              v96 = a1;
              goto LABEL_137;
            }
          }
        }
      }

      return;
    }

LABEL_9:
    if (v9 <= 5375)
    {
      if (a4)
      {
        if (a1 != v6)
        {
          v99 = a1 + 224;
          if ((a1 + 224) != a2)
          {
            v100 = 0;
            v101 = a1;
            do
            {
              v102 = v99;
              if (*(v101 + 224) < *v101)
              {
                v103 = *v99;
                v104 = *(v99 + 32);
                v248 = *(v99 + 16);
                v249 = v104;
                v247 = v103;
                v105 = *(v99 + 48);
                v106 = *(v99 + 64);
                v107 = *(v99 + 80);
                v253 = *(v99 + 96);
                v251 = v106;
                v252 = v107;
                v250 = v105;
                v254.n128_u8[0] = 0;
                v256 = 0;
                if (*(v101 + 352) == 1)
                {
                  v255 = *(v101 + 344);
                  v254 = *(v101 + 328);
                  *(v101 + 336) = 0;
                  *(v101 + 344) = 0;
                  *(v101 + 328) = 0;
                  v256 = 1;
                }

                v108 = (v101 + 360);
                v257.n128_u8[0] = 0;
                v259 = 0;
                if (*(v101 + 384) == 1)
                {
                  v257 = *v108;
                  v258 = *(v101 + 376);
                  v108->n128_u64[0] = 0;
                  *(v101 + 368) = 0;
                  *(v101 + 376) = 0;
                  v259 = 1;
                }

                __p.n128_u8[0] = 0;
                v262 = 0;
                if (*(v101 + 416) == 1)
                {
                  __p = *(v101 + 392);
                  v261 = *(v101 + 408);
                  *(v101 + 392) = 0;
                  *(v101 + 400) = 0;
                  *(v101 + 408) = 0;
                  v262 = 1;
                }

                v263[0] = *(v101 + 424);
                *&v263[1] = *(v101 + 440);
                *(v101 + 424) = 0;
                *(v101 + 432) = 0;
                *(v101 + 440) = 0;
                v109 = v100;
                while (1)
                {
                  v110 = v109;
                  v111 = a1 + v109;
                  v112 = *(a1 + v109 + 80);
                  *(v111 + 288) = *(a1 + v109 + 64);
                  *(v111 + 304) = v112;
                  *(v111 + 320) = *(a1 + v109 + 96);
                  v113 = *(a1 + v109 + 16);
                  *(v111 + 224) = *v111;
                  *(v111 + 240) = v113;
                  v114 = *(a1 + v109 + 48);
                  *(v111 + 256) = *(a1 + v109 + 32);
                  *(v111 + 272) = v114;
                  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + v109 + 328, (a1 + v109 + 104));
                  std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v111 + 360, (v111 + 136));
                  v115 = a1 + v110;
                  std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + v110 + 392, (a1 + v110 + 168));
                  std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((a1 + v110 + 424));
                  *(v115 + 424) = *(v115 + 200);
                  *(v115 + 440) = *(v115 + 216);
                  *(v115 + 208) = 0;
                  *(v115 + 216) = 0;
                  *(v115 + 200) = 0;
                  if (!v110)
                  {
                    break;
                  }

                  v109 = v110 - 224;
                  if (v247 >= *(a1 + v110 - 224))
                  {
                    v116 = a1 + v110;
                    goto LABEL_160;
                  }
                }

                v116 = a1;
LABEL_160:
                v117 = v247;
                v118 = v249;
                *(v116 + 16) = v248;
                *(v116 + 32) = v118;
                *v116 = v117;
                v119 = v250;
                v120 = v251;
                v121 = v252;
                *(v116 + 96) = v253;
                *(v116 + 64) = v120;
                *(v116 + 80) = v121;
                *(v116 + 48) = v119;
                v122 = a1 + v110;
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v122 + 104, &v254);
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v122 + 136, &v257);
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v122 + 168, &__p);
                std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v122 + 200));
                *(v122 + 200) = *&v263[0];
                *(v116 + 208) = *(v263 + 8);
                memset(v263, 0, 24);
                *&v228 = v263;
                std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v228);
                if (v262 == 1 && __p.n128_u64[0])
                {
                  __p.n128_u64[1] = __p.n128_u64[0];
                  operator delete(__p.n128_u64[0]);
                }

                if (v259 == 1 && v257.n128_u64[0])
                {
                  v257.n128_u64[1] = v257.n128_u64[0];
                  operator delete(v257.n128_u64[0]);
                }

                if (v256 == 1 && SHIBYTE(v255) < 0)
                {
                  operator delete(v254.n128_u64[0]);
                }
              }

              v99 = v102 + 224;
              v100 += 224;
              v101 = v102;
            }

            while ((v102 + 224) != a2);
          }
        }
      }

      else if (a1 != v6)
      {
        v204 = a1 + 224;
        if ((a1 + 224) != a2)
        {
          v205 = a1 - 224;
          do
          {
            v206 = v204;
            if (*(a1 + 224) < *a1)
            {
              v207 = *v204;
              v208 = *(v204 + 32);
              v248 = *(v204 + 16);
              v249 = v208;
              v247 = v207;
              v209 = *(v204 + 48);
              v210 = *(v204 + 64);
              v211 = *(v204 + 80);
              v253 = *(v204 + 96);
              v251 = v210;
              v252 = v211;
              v250 = v209;
              v254.n128_u8[0] = 0;
              v256 = 0;
              if (*(a1 + 352) == 1)
              {
                v255 = *(a1 + 344);
                v254 = *(a1 + 328);
                *(a1 + 336) = 0;
                *(a1 + 344) = 0;
                *(a1 + 328) = 0;
                v256 = 1;
              }

              v212 = (a1 + 360);
              v257.n128_u8[0] = 0;
              v259 = 0;
              if (*(a1 + 384) == 1)
              {
                v257 = *v212;
                v258 = *(a1 + 376);
                v212->n128_u64[0] = 0;
                *(a1 + 368) = 0;
                *(a1 + 376) = 0;
                v259 = 1;
              }

              __p.n128_u8[0] = 0;
              v262 = 0;
              if (*(a1 + 416) == 1)
              {
                __p = *(a1 + 392);
                v261 = *(a1 + 408);
                *(a1 + 392) = 0;
                *(a1 + 400) = 0;
                *(a1 + 408) = 0;
                v262 = 1;
              }

              v263[0] = *(a1 + 424);
              *&v263[1] = *(a1 + 440);
              *(a1 + 424) = 0;
              *(a1 + 432) = 0;
              *(a1 + 440) = 0;
              v213 = v205;
              do
              {
                v214 = *(v213 + 304);
                *(v213 + 512) = *(v213 + 288);
                *(v213 + 528) = v214;
                *(v213 + 544) = *(v213 + 320);
                v215 = *(v213 + 240);
                *(v213 + 448) = *(v213 + 224);
                *(v213 + 464) = v215;
                v216 = *(v213 + 272);
                *(v213 + 480) = *(v213 + 256);
                *(v213 + 496) = v216;
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v213 + 552, (v213 + 328));
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v213 + 584, (v213 + 360));
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v213 + 616, (v213 + 392));
                std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v213 + 648));
                *(v213 + 648) = *(v213 + 424);
                *(v213 + 664) = *(v213 + 440);
                *(v213 + 424) = 0;
                *(v213 + 432) = 0;
                *(v213 + 440) = 0;
                v217 = *v213;
                v213 -= 224;
              }

              while (v247 < v217);
              v218 = v247;
              v219 = v249;
              *(v213 + 464) = v248;
              *(v213 + 480) = v219;
              *(v213 + 448) = v218;
              v220 = v250;
              v221 = v251;
              v222 = v252;
              *(v213 + 544) = v253;
              *(v213 + 512) = v221;
              *(v213 + 528) = v222;
              *(v213 + 496) = v220;
              std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v213 + 552, &v254);
              std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v213 + 584, &v257);
              std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v213 + 616, &__p);
              std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v213 + 648));
              *(v213 + 648) = v263[0];
              *(v213 + 664) = *&v263[1];
              memset(v263, 0, 24);
              *&v228 = v263;
              std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v228);
              if (v262 == 1 && __p.n128_u64[0])
              {
                __p.n128_u64[1] = __p.n128_u64[0];
                operator delete(__p.n128_u64[0]);
              }

              if (v259 == 1 && v257.n128_u64[0])
              {
                v257.n128_u64[1] = v257.n128_u64[0];
                operator delete(v257.n128_u64[0]);
              }

              if (v256 == 1 && SHIBYTE(v255) < 0)
              {
                operator delete(v254.n128_u64[0]);
              }
            }

            v204 = v206 + 224;
            v205 += 224;
            a1 = v206;
          }

          while ((v206 + 224) != a2);
        }
      }

      return;
    }

    if (!a3)
    {
      if (a1 != v6)
      {
        v123 = v11 >> 1;
        v124 = v11 >> 1;
        do
        {
          v125 = v124;
          if (v123 >= v124)
          {
            v126 = (2 * v124) | 1;
            v127 = (a1 + 224 * v126);
            if (2 * v125 + 2 >= v10)
            {
              v128 = *v127;
            }

            else
            {
              v128 = *v127;
              v129 = *(v127 + 28);
              if (*v127 <= v129)
              {
                v128 = *(v127 + 28);
              }

              if (*v127 < v129)
              {
                v127 += 14;
                v126 = 2 * v125 + 2;
              }
            }

            v130 = a1 + 224 * v125;
            if (v128 >= *v130)
            {
              v131 = *v130;
              v132 = *(v130 + 32);
              v248 = *(v130 + 16);
              v249 = v132;
              v247 = v131;
              v133 = *(v130 + 48);
              v134 = *(v130 + 64);
              v135 = *(v130 + 80);
              v253 = *(v130 + 96);
              v251 = v134;
              v252 = v135;
              v250 = v133;
              v254.n128_u8[0] = 0;
              v256 = 0;
              if (*(v130 + 128) == 1)
              {
                v136 = *(v130 + 104);
                v255 = *(v130 + 120);
                v254 = v136;
                *(v130 + 112) = 0;
                *(v130 + 120) = 0;
                *(v130 + 104) = 0;
                v256 = 1;
              }

              v257.n128_u8[0] = 0;
              v259 = 0;
              if (*(v130 + 160) == 1)
              {
                v257 = *(v130 + 136);
                v258 = *(v130 + 152);
                *(v130 + 136) = 0;
                *(v130 + 144) = 0;
                *(v130 + 152) = 0;
                v259 = 1;
              }

              __p.n128_u8[0] = 0;
              v262 = 0;
              if (*(v130 + 192) == 1)
              {
                __p = *(v130 + 168);
                v261 = *(v130 + 184);
                *(v130 + 168) = 0;
                *(v130 + 176) = 0;
                *(v130 + 184) = 0;
                v262 = 1;
              }

              v263[0] = *(v130 + 200);
              *&v263[1] = *(v130 + 216);
              *(v130 + 200) = 0;
              *(v130 + 208) = 0;
              *(v130 + 216) = 0;
              do
              {
                v137 = v127;
                v138 = *v127;
                v139 = v127[2];
                *(v130 + 16) = v127[1];
                *(v130 + 32) = v139;
                *v130 = v138;
                v140 = v127[3];
                v141 = v127[4];
                v142 = v127[5];
                *(v130 + 96) = *(v127 + 12);
                *(v130 + 64) = v141;
                *(v130 + 80) = v142;
                *(v130 + 48) = v140;
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v130 + 104, (v127 + 104));
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v130 + 136, (v137 + 136));
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v130 + 168, (v137 + 168));
                std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v130 + 200));
                *(v130 + 200) = *(v137 + 200);
                *(v130 + 216) = *(v137 + 27);
                *(v137 + 25) = 0;
                *(v137 + 26) = 0;
                *(v137 + 27) = 0;
                if (v123 < v126)
                {
                  break;
                }

                v127 = (a1 + 224 * ((2 * v126) | 1));
                if (2 * v126 + 2 >= v10)
                {
                  v143 = *v127;
                  v126 = (2 * v126) | 1;
                }

                else
                {
                  v143 = *v127;
                  v144 = *(v127 + 28);
                  if (*v127 <= v144)
                  {
                    v143 = *(v127 + 28);
                  }

                  if (*v127 >= v144)
                  {
                    v126 = (2 * v126) | 1;
                  }

                  else
                  {
                    v127 += 14;
                    v126 = 2 * v126 + 2;
                  }
                }

                v130 = v137;
              }

              while (v143 >= v247);
              v145 = v247;
              v146 = v249;
              v137[1] = v248;
              v137[2] = v146;
              *v137 = v145;
              v147 = v250;
              v148 = v251;
              v149 = v252;
              *(v137 + 12) = v253;
              v137[4] = v148;
              v137[5] = v149;
              v137[3] = v147;
              std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v137 + 104, &v254);
              std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v137 + 136, &v257);
              std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v137 + 168, &__p);
              std::vector<CSCppCoreFileRegionInfo>::__vdeallocate(v137 + 25);
              *(v137 + 200) = v263[0];
              *(v137 + 27) = *&v263[1];
              memset(v263, 0, 24);
              *&v228 = v263;
              std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v228);
              if (v262 == 1 && __p.n128_u64[0])
              {
                __p.n128_u64[1] = __p.n128_u64[0];
                operator delete(__p.n128_u64[0]);
              }

              if (v259 == 1 && v257.n128_u64[0])
              {
                v257.n128_u64[1] = v257.n128_u64[0];
                operator delete(v257.n128_u64[0]);
              }

              if (v256 == 1 && SHIBYTE(v255) < 0)
              {
                operator delete(v254.n128_u64[0]);
              }
            }
          }

          v124 = v125 - 1;
        }

        while (v125);
        v150 = 0x6DB6DB6DB6DB6DB7 * (v9 >> 5);
        do
        {
          v151 = *a1;
          v152 = *(a1 + 32);
          v229 = *(a1 + 16);
          v230 = v152;
          v228 = v151;
          v153 = *(a1 + 48);
          v154 = *(a1 + 64);
          v155 = *(a1 + 80);
          v234 = *(a1 + 96);
          v232 = v154;
          v233 = v155;
          v231 = v153;
          v235.n128_u8[0] = 0;
          v237 = 0;
          if (*(a1 + 128) == 1)
          {
            v156 = *(a1 + 104);
            v236 = *(a1 + 120);
            v235 = v156;
            *(a1 + 112) = 0;
            *(a1 + 120) = 0;
            *(a1 + 104) = 0;
            v237 = 1;
          }

          v238.n128_u8[0] = 0;
          v240 = 0;
          if (*(a1 + 160) == 1)
          {
            v238 = *(a1 + 136);
            v239 = *(a1 + 152);
            *(a1 + 136) = 0;
            *(a1 + 144) = 0;
            *(a1 + 152) = 0;
            v240 = 1;
          }

          v226 = a2;
          v241.n128_u8[0] = 0;
          v243 = 0;
          if (*(a1 + 192) == 1)
          {
            v241 = *(a1 + 168);
            v242 = *(a1 + 184);
            *(a1 + 168) = 0;
            *(a1 + 176) = 0;
            *(a1 + 184) = 0;
            v243 = 1;
          }

          v157 = 0;
          v244 = *(a1 + 200);
          v245 = *(a1 + 216);
          *(a1 + 200) = 0;
          *(a1 + 208) = 0;
          *(a1 + 216) = 0;
          v158 = a1;
          do
          {
            v159 = v158 + 224 * v157;
            v160 = v159 + 224;
            if (2 * v157 + 2 >= v150)
            {
              v157 = (2 * v157) | 1;
            }

            else if (*(v159 + 224) >= *(v159 + 448))
            {
              v157 = (2 * v157) | 1;
            }

            else
            {
              v160 = v159 + 448;
              v157 = 2 * v157 + 2;
            }

            v161 = *v160;
            v162 = *(v160 + 32);
            *(v158 + 16) = *(v160 + 16);
            *(v158 + 32) = v162;
            *v158 = v161;
            v163 = *(v160 + 48);
            v164 = *(v160 + 64);
            v165 = *(v160 + 80);
            *(v158 + 96) = *(v160 + 96);
            *(v158 + 64) = v164;
            *(v158 + 80) = v165;
            *(v158 + 48) = v163;
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v158 + 104, (v160 + 104));
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v158 + 136, (v160 + 136));
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v158 + 168, (v160 + 168));
            std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v158 + 200));
            *(v158 + 200) = *(v160 + 200);
            *(v158 + 216) = *(v160 + 216);
            *(v160 + 200) = 0;
            *(v160 + 208) = 0;
            *(v160 + 216) = 0;
            v158 = v160;
          }

          while (v157 <= ((v150 - 2) >> 1));
          v166 = a2 - 14;
          a2 -= 14;
          if (v160 == v226 - 14)
          {
            v198 = v228;
            v199 = v230;
            *(v160 + 16) = v229;
            *(v160 + 32) = v199;
            *v160 = v198;
            v200 = v231;
            v201 = v232;
            v202 = v233;
            *(v160 + 96) = v234;
            *(v160 + 64) = v201;
            *(v160 + 80) = v202;
            *(v160 + 48) = v200;
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v160 + 104, &v235);
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 136, &v238);
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 168, &v241);
            std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v160 + 200));
            *(v160 + 200) = v244;
            *(v160 + 216) = v245;
            v244 = 0uLL;
            v245 = 0;
          }

          else
          {
            v167 = *v166;
            v168 = *(v226 - 12);
            *(v160 + 16) = *(v226 - 13);
            *(v160 + 32) = v168;
            *v160 = v167;
            v169 = *(v226 - 11);
            v170 = *(v226 - 10);
            v171 = *(v226 - 9);
            *(v160 + 96) = *(v226 - 16);
            *(v160 + 64) = v170;
            *(v160 + 80) = v171;
            *(v160 + 48) = v169;
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v160 + 104, (v226 - 120));
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 136, (v226 - 88));
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 168, (v226 - 56));
            std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v160 + 200));
            v172 = v226 - 3;
            *(v160 + 200) = *(v226 - 24);
            *(v160 + 216) = *(v226 - 1);
            *v172 = 0;
            v172[1] = 0;
            v172[2] = 0;
            v173 = v228;
            v174 = v230;
            *(v226 - 13) = v229;
            *(v226 - 12) = v174;
            *a2 = v173;
            v175 = v231;
            v176 = v232;
            v177 = v233;
            *(v226 - 16) = v234;
            *(v226 - 10) = v176;
            *(v226 - 9) = v177;
            *(v226 - 11) = v175;
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v226 - 120, &v235);
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v226 - 88, &v238);
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v226 - 56, &v241);
            std::vector<CSCppCoreFileRegionInfo>::__vdeallocate(v226 - 3);
            *(v226 - 24) = v244;
            *(v226 - 1) = v245;
            v244 = 0uLL;
            v245 = 0;
            v178 = v160 + 224 - a1;
            if (v178 >= 225)
            {
              v179 = (0x6DB6DB6DB6DB6DB7 * (v178 >> 5) - 2) >> 1;
              v180 = (a1 + 224 * v179);
              if (*v180 < *v160)
              {
                v181 = *v160;
                v182 = *(v160 + 32);
                v248 = *(v160 + 16);
                v249 = v182;
                v247 = v181;
                v183 = *(v160 + 48);
                v184 = *(v160 + 64);
                v185 = *(v160 + 80);
                v253 = *(v160 + 96);
                v251 = v184;
                v252 = v185;
                v250 = v183;
                v254.n128_u8[0] = 0;
                v256 = 0;
                if (*(v160 + 128) == 1)
                {
                  v186 = *(v160 + 104);
                  v255 = *(v160 + 120);
                  v254 = v186;
                  *(v160 + 112) = 0;
                  *(v160 + 120) = 0;
                  *(v160 + 104) = 0;
                  v256 = 1;
                }

                v257.n128_u8[0] = 0;
                v259 = 0;
                if (*(v160 + 160) == 1)
                {
                  v257 = *(v160 + 136);
                  v258 = *(v160 + 152);
                  *(v160 + 136) = 0;
                  *(v160 + 144) = 0;
                  *(v160 + 152) = 0;
                  v259 = 1;
                }

                __p.n128_u8[0] = 0;
                v262 = 0;
                if (*(v160 + 192) == 1)
                {
                  __p = *(v160 + 168);
                  v261 = *(v160 + 184);
                  *(v160 + 168) = 0;
                  *(v160 + 176) = 0;
                  *(v160 + 184) = 0;
                  v262 = 1;
                }

                v263[0] = *(v160 + 200);
                *&v263[1] = *(v160 + 216);
                *(v160 + 200) = 0;
                *(v160 + 208) = 0;
                *(v160 + 216) = 0;
                do
                {
                  v187 = v180;
                  v188 = *v180;
                  v189 = v180[2];
                  *(v160 + 16) = v180[1];
                  *(v160 + 32) = v189;
                  *v160 = v188;
                  v190 = v180[3];
                  v191 = v180[4];
                  v192 = v180[5];
                  *(v160 + 96) = *(v180 + 12);
                  *(v160 + 64) = v191;
                  *(v160 + 80) = v192;
                  *(v160 + 48) = v190;
                  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v160 + 104, (v180 + 104));
                  std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 136, (v187 + 136));
                  std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 168, (v187 + 168));
                  std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v160 + 200));
                  *(v160 + 200) = *(v187 + 200);
                  *(v160 + 216) = *(v187 + 27);
                  *(v187 + 25) = 0;
                  *(v187 + 26) = 0;
                  *(v187 + 27) = 0;
                  if (!v179)
                  {
                    break;
                  }

                  v179 = (v179 - 1) >> 1;
                  v180 = (a1 + 224 * v179);
                  v160 = v187;
                }

                while (*v180 < v247);
                v193 = v247;
                v194 = v249;
                v187[1] = v248;
                v187[2] = v194;
                *v187 = v193;
                v195 = v250;
                v196 = v251;
                v197 = v252;
                *(v187 + 12) = v253;
                v187[4] = v196;
                v187[5] = v197;
                v187[3] = v195;
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v187 + 104, &v254);
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v187 + 136, &v257);
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v187 + 168, &__p);
                std::vector<CSCppCoreFileRegionInfo>::__vdeallocate(v187 + 25);
                *(v187 + 200) = v263[0];
                *(v187 + 27) = *&v263[1];
                memset(v263, 0, 24);
                v246 = v263;
                std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v246);
                if (v262 == 1 && __p.n128_u64[0])
                {
                  __p.n128_u64[1] = __p.n128_u64[0];
                  operator delete(__p.n128_u64[0]);
                }

                if (v259 == 1 && v257.n128_u64[0])
                {
                  v257.n128_u64[1] = v257.n128_u64[0];
                  operator delete(v257.n128_u64[0]);
                }

                if (v256 == 1 && SHIBYTE(v255) < 0)
                {
                  operator delete(v254.n128_u64[0]);
                }
              }
            }
          }

          *&v247 = &v244;
          std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v247);
          if (v243 == 1 && v241.n128_u64[0])
          {
            v241.n128_u64[1] = v241.n128_u64[0];
            operator delete(v241.n128_u64[0]);
          }

          if (v240 == 1 && v238.n128_u64[0])
          {
            v238.n128_u64[1] = v238.n128_u64[0];
            operator delete(v238.n128_u64[0]);
          }

          if (v237 == 1 && SHIBYTE(v236) < 0)
          {
            operator delete(v235.n128_u64[0]);
          }
        }

        while (v150-- > 2);
      }

      return;
    }

    v12 = v10 >> 1;
    v13 = (a1 + 224 * (v10 >> 1));
    v14 = *v7;
    if (v9 > 0x7000)
    {
      v15 = *v13;
      if (*v13 >= *a1)
      {
        if (v14 < v15)
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v13, v7);
          if (*v13 < *a1)
          {
            v16 = a1;
            v17 = v13;
            goto LABEL_25;
          }
        }
      }

      else
      {
        v16 = a1;
        if (v14 < v15)
        {
          goto LABEL_16;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, v13);
        if (*v7 < *v13)
        {
          v16 = v13;
LABEL_16:
          v17 = a2 - 14;
LABEL_25:
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v16, v17);
        }
      }

      v21 = a1 + 224 * v12;
      v24 = *(v21 - 224);
      v23 = (v21 - 224);
      v22 = v24;
      v25 = *v224;
      if (v24 >= *(a1 + 224))
      {
        if (v25 < v22)
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v23, v224);
          if (*v23 < *(a1 + 224))
          {
            v26 = (a1 + 224);
            v27 = v23;
            goto LABEL_37;
          }
        }
      }

      else
      {
        v26 = (a1 + 224);
        if (v25 < v22)
        {
          goto LABEL_30;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v26, v23);
        if (*v224 < *v23)
        {
          v26 = v23;
LABEL_30:
          v27 = a2 - 28;
LABEL_37:
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v26, v27);
        }
      }

      v28 = a1 + 224 * v12;
      v31 = *(v28 + 224);
      v30 = (v28 + 224);
      v29 = v31;
      v32 = *v223;
      if (v31 >= *(a1 + 448))
      {
        if (v32 < v29)
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v30, v223);
          if (*v30 < *(a1 + 448))
          {
            v33 = (a1 + 448);
            v34 = v30;
            goto LABEL_46;
          }
        }
      }

      else
      {
        v33 = (a1 + 448);
        if (v32 < v29)
        {
          goto LABEL_42;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v33, v30);
        if (*v223 < *v30)
        {
          v33 = v30;
LABEL_42:
          v34 = a2 - 42;
LABEL_46:
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v33, v34);
        }
      }

      v35 = *v13;
      v36 = *v30;
      if (*v13 >= *v23)
      {
        if (v36 < v35)
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v13, v30);
          if (*v13 < *v23)
          {
            v37 = v23;
            v38 = v13;
            goto LABEL_55;
          }
        }
      }

      else
      {
        v37 = v23;
        if (v36 < v35)
        {
          goto LABEL_51;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v23, v13);
        if (*v30 < *v13)
        {
          v37 = v13;
LABEL_51:
          v38 = v30;
LABEL_55:
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v37, v38);
        }
      }

      v19 = a1;
      v20 = v13;
      goto LABEL_57;
    }

    v18 = *a1;
    if (*a1 >= *v13)
    {
      if (v14 >= v18)
      {
        goto LABEL_58;
      }

      std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, v7);
      if (*a1 >= *v13)
      {
        goto LABEL_58;
      }

      v19 = v13;
      v20 = a1;
    }

    else
    {
      v19 = v13;
      if (v14 >= v18)
      {
        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v13, a1);
        if (*v7 >= *a1)
        {
          goto LABEL_58;
        }

        v19 = a1;
      }

      v20 = a2 - 14;
    }

LABEL_57:
    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v19, v20);
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || *(a1 - 224) < *a1)
    {
      v39 = *a1;
      v40 = *(a1 + 32);
      v248 = *(a1 + 16);
      v249 = v40;
      v247 = v39;
      v41 = *(a1 + 48);
      v42 = *(a1 + 64);
      v43 = *(a1 + 80);
      v253 = *(a1 + 96);
      v251 = v42;
      v252 = v43;
      v250 = v41;
      v254.n128_u8[0] = 0;
      v256 = 0;
      if (*(a1 + 128) == 1)
      {
        v44 = *(a1 + 104);
        v255 = *(a1 + 120);
        v254 = v44;
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        *(a1 + 104) = 0;
        v256 = 1;
      }

      v257.n128_u8[0] = 0;
      v259 = 0;
      if (*(a1 + 160) == 1)
      {
        v257 = *(a1 + 136);
        v258 = *(a1 + 152);
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        v259 = 1;
      }

      __p.n128_u8[0] = 0;
      v262 = 0;
      if (*(a1 + 192) == 1)
      {
        __p = *(a1 + 168);
        v261 = *(a1 + 184);
        *(a1 + 168) = 0;
        *(a1 + 176) = 0;
        *(a1 + 184) = 0;
        v262 = 1;
      }

      v45 = 0;
      v263[0] = *(a1 + 200);
      *&v263[1] = *(a1 + 216);
      *(a1 + 200) = 0;
      *(a1 + 208) = 0;
      *(a1 + 216) = 0;
      v46 = v247;
      do
      {
        v47 = *(a1 + v45 + 224);
        v45 += 224;
      }

      while (v47 < v247);
      v48 = a1 + v45;
      if (v45 == 224)
      {
        v6 = a2;
        do
        {
          if (v48 >= v6)
          {
            break;
          }

          v50 = *(v6 - 28);
          v6 -= 14;
        }

        while (v50 >= v247);
      }

      else
      {
        do
        {
          v49 = *(v6 - 28);
          v6 -= 14;
        }

        while (v49 >= v247);
      }

      v8 = a1 + v45;
      if (v48 < v6)
      {
        v51 = v6;
        do
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v8, v51);
          do
          {
            v52 = *(v8 + 224);
            v8 += 224;
          }

          while (v52 < v46);
          do
          {
            v53 = *(v51 - 28);
            v51 -= 14;
          }

          while (v53 >= v46);
        }

        while (v8 < v51);
      }

      v54 = (v8 - 224);
      if (v8 - 224 != a1)
      {
        v55 = *v54;
        v56 = *(v8 - 192);
        *(a1 + 16) = *(v8 - 208);
        *(a1 + 32) = v56;
        *a1 = v55;
        v57 = *(v8 - 176);
        v58 = *(v8 - 160);
        v59 = *(v8 - 144);
        *(a1 + 96) = *(v8 - 128);
        *(a1 + 64) = v58;
        *(a1 + 80) = v59;
        *(a1 + 48) = v57;
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 104, (v8 - 120));
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + 136, (v8 - 88));
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + 168, (v8 - 56));
        std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((a1 + 200));
        *(a1 + 200) = *(v8 - 24);
        *(a1 + 216) = *(v8 - 8);
        *(v8 - 24) = 0;
        *(v8 - 16) = 0;
        *(v8 - 8) = 0;
      }

      v60 = v247;
      v61 = v249;
      *(v8 - 208) = v248;
      *(v8 - 192) = v61;
      *v54 = v60;
      v62 = v250;
      v63 = v251;
      v64 = v252;
      *(v8 - 128) = v253;
      *(v8 - 160) = v63;
      *(v8 - 144) = v64;
      *(v8 - 176) = v62;
      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v8 - 120, &v254);
      std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v8 - 88, &v257);
      std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v8 - 56, &__p);
      std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v8 - 24));
      *(v8 - 24) = v263[0];
      *(v8 - 8) = *&v263[1];
      memset(v263, 0, 24);
      *&v228 = v263;
      std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v228);
      if (v262 == 1 && __p.n128_u64[0])
      {
        __p.n128_u64[1] = __p.n128_u64[0];
        operator delete(__p.n128_u64[0]);
      }

      if (v259 == 1 && v257.n128_u64[0])
      {
        v257.n128_u64[1] = v257.n128_u64[0];
        operator delete(v257.n128_u64[0]);
      }

      if (v256 == 1 && SHIBYTE(v255) < 0)
      {
        operator delete(v254.n128_u64[0]);
      }

      v65 = v48 >= v6;
      v6 = a2;
      if (!v65)
      {
        goto LABEL_95;
      }

      v66 = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoEEbT1_SP_SI_(a1, (v8 - 224));
      if (_ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoEEbT1_SP_SI_(v8, a2))
      {
        a2 = (v8 - 224);
        if (!v66)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v66)
      {
LABEL_95:
        _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(a1, v8 - 224, a3, a4 & 1);
        goto LABEL_96;
      }
    }

    else
    {
      v67 = *a1;
      v68 = *(a1 + 32);
      v248 = *(a1 + 16);
      v249 = v68;
      v247 = v67;
      v69 = *(a1 + 48);
      v70 = *(a1 + 64);
      v71 = *(a1 + 80);
      v253 = *(a1 + 96);
      v251 = v70;
      v252 = v71;
      v250 = v69;
      v254.n128_u8[0] = 0;
      v256 = 0;
      if (*(a1 + 128) == 1)
      {
        v72 = *(a1 + 104);
        v255 = *(a1 + 120);
        v254 = v72;
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        *(a1 + 104) = 0;
        v256 = 1;
      }

      v257.n128_u8[0] = 0;
      v259 = 0;
      if (*(a1 + 160) == 1)
      {
        v257 = *(a1 + 136);
        v258 = *(a1 + 152);
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        v259 = 1;
      }

      __p.n128_u8[0] = 0;
      v262 = 0;
      if (*(a1 + 192) == 1)
      {
        __p = *(a1 + 168);
        v261 = *(a1 + 184);
        *(a1 + 168) = 0;
        *(a1 + 176) = 0;
        *(a1 + 184) = 0;
        v262 = 1;
      }

      v263[0] = *(a1 + 200);
      *&v263[1] = *(a1 + 216);
      *(a1 + 200) = 0;
      *(a1 + 208) = 0;
      *(a1 + 216) = 0;
      v73 = v247;
      if (v247 >= *v7)
      {
        v75 = a1 + 224;
        do
        {
          v8 = v75;
          if (v75 >= v6)
          {
            break;
          }

          v75 += 224;
        }

        while (v247 >= *v8);
      }

      else
      {
        v8 = a1;
        do
        {
          v74 = *(v8 + 224);
          v8 += 224;
        }

        while (v247 >= v74);
      }

      v76 = v6;
      if (v8 < v6)
      {
        v76 = v6;
        do
        {
          v77 = *(v76 - 28);
          v76 -= 14;
        }

        while (v247 < v77);
      }

      while (v8 < v76)
      {
        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v8, v76);
        do
        {
          v78 = *(v8 + 224);
          v8 += 224;
        }

        while (v73 >= v78);
        do
        {
          v79 = *(v76 - 28);
          v76 -= 14;
        }

        while (v73 < v79);
      }

      v80 = (v8 - 224);
      if (v8 - 224 != a1)
      {
        v81 = *v80;
        v82 = *(v8 - 192);
        *(a1 + 16) = *(v8 - 208);
        *(a1 + 32) = v82;
        *a1 = v81;
        v83 = *(v8 - 176);
        v84 = *(v8 - 160);
        v85 = *(v8 - 144);
        *(a1 + 96) = *(v8 - 128);
        *(a1 + 64) = v84;
        *(a1 + 80) = v85;
        *(a1 + 48) = v83;
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 104, (v8 - 120));
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + 136, (v8 - 88));
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + 168, (v8 - 56));
        std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((a1 + 200));
        *(a1 + 200) = *(v8 - 24);
        *(a1 + 216) = *(v8 - 8);
        *(v8 - 24) = 0;
        *(v8 - 16) = 0;
        *(v8 - 8) = 0;
      }

      v86 = v247;
      v87 = v249;
      *(v8 - 208) = v248;
      *(v8 - 192) = v87;
      *v80 = v86;
      v88 = v250;
      v89 = v251;
      v90 = v252;
      *(v8 - 128) = v253;
      *(v8 - 160) = v89;
      *(v8 - 144) = v90;
      *(v8 - 176) = v88;
      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v8 - 120, &v254);
      std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v8 - 88, &v257);
      std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v8 - 56, &__p);
      std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v8 - 24));
      *(v8 - 24) = v263[0];
      *(v8 - 8) = *&v263[1];
      memset(v263, 0, 24);
      *&v228 = v263;
      std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v228);
      if (v262 == 1 && __p.n128_u64[0])
      {
        __p.n128_u64[1] = __p.n128_u64[0];
        operator delete(__p.n128_u64[0]);
      }

      if (v259 == 1 && v257.n128_u64[0])
      {
        v257.n128_u64[1] = v257.n128_u64[0];
        operator delete(v257.n128_u64[0]);
      }

      if (v256 == 1 && SHIBYTE(v255) < 0)
      {
        operator delete(v254.n128_u64[0]);
      }

LABEL_96:
      a4 = 0;
    }
  }

  v91 = *(a1 + 224);
  v94 = *(v6 - 28);
  v93 = v6 - 14;
  v92 = v94;
  if (v91 < *a1)
  {
    if (v92 < v91)
    {
      goto LABEL_136;
    }

    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, (a1 + 224));
    if (*v93 >= *(a1 + 224))
    {
      return;
    }

    v95 = v93;
    v96 = (a1 + 224);
LABEL_137:
    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v96, v95);
    return;
  }

  if (v92 < v91)
  {
    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>((a1 + 224), v93);
    if (*(a1 + 224) < *a1)
    {
      v96 = a1;
      v95 = (a1 + 224);
      goto LABEL_137;
    }
  }
}

void _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLi0EEEvT1_SP_SP_SP_SI_(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v7 = a1;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *a1)
  {
    if (v9 < v8)
    {
      std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a2, a3);
      if (*a2 < *v7)
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, v10);
      goto LABEL_10;
    }

    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, a2);
    if (*a3 < *a2)
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a3, a4);
    if (*a3 < *a2)
    {
      std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a2, a3);
      if (*a2 < *v7)
      {

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v7, a2);
      }
    }
  }
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoEEbT1_SP_SI_(__int128 *a1, __int128 *a2)
{
  v3 = a1;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 5);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v10 = *(a1 + 28);
        v5 = a2 - 14;
        v11 = *(a2 - 28);
        if (v10 >= *a1)
        {
          if (v11 >= v10)
          {
            return 1;
          }

          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1 + 14, v5);
          if (*(v3 + 28) >= *v3)
          {
            return 1;
          }

          a1 = v3;
          v9 = v3 + 14;
          goto LABEL_17;
        }

        if (v11 >= v10)
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, a1 + 14);
          if (*v5 >= *(v3 + 28))
          {
            return 1;
          }

          a1 = v3 + 14;
        }

LABEL_16:
        v9 = v5;
LABEL_17:
        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, v9);
        return 1;
      case 4:
        _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLi0EEEvT1_SP_SP_SP_SI_(a1, a1 + 14, a1 + 28, a2 - 14);
        return 1;
      case 5:
        v6 = a1 + 42;
        _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLi0EEEvT1_SP_SP_SP_SI_(a1, a1 + 14, a1 + 28, a1 + 42);
        v8 = *(a2 - 28);
        v7 = a2 - 14;
        if (v8 >= *(v3 + 84))
        {
          return 1;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v3 + 42, v7);
        if (*v6 >= *(v3 + 56))
        {
          return 1;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v3 + 28, v3 + 42);
        if (*(v3 + 56) >= *(v3 + 28))
        {
          return 1;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v3 + 14, v3 + 28);
        if (*(v3 + 28) >= *v3)
        {
          return 1;
        }

        v9 = v3 + 14;
        a1 = v3;
        goto LABEL_17;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2 - 14;
      if (*(a2 - 28) >= *a1)
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v12 = a1 + 28;
  v13 = *(a1 + 28);
  v14 = *(a1 + 56);
  if (v13 < *a1)
  {
    if (v14 >= v13)
    {
      std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, a1 + 14);
      if (*(v3 + 56) >= *(v3 + 28))
      {
        goto LABEL_31;
      }

      a1 = v3 + 14;
    }

    v15 = v3 + 28;
    goto LABEL_30;
  }

  if (v14 < v13)
  {
    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1 + 14, a1 + 28);
    if (*(v3 + 28) < *v3)
    {
      a1 = v3;
      v15 = v3 + 14;
LABEL_30:
      std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, v15);
    }
  }

LABEL_31:
  v16 = v3 + 42;
  result = 1;
  if (v3 + 42 != a2)
  {
    v18 = 0;
    v19 = 0;
    while (1)
    {
      if (*v16 < *v12)
      {
        v34 = v16[4];
        v35 = v16[5];
        v36 = *(v16 + 12);
        v30 = *v16;
        v31 = v16[1];
        v32 = v16[2];
        v33 = v16[3];
        v37.n128_u8[0] = 0;
        v39 = 0;
        if (*(v16 + 128) == 1)
        {
          v37 = *(v16 + 104);
          v38 = *(v16 + 15);
          *(v16 + 14) = 0;
          *(v16 + 15) = 0;
          *(v16 + 13) = 0;
          v39 = 1;
        }

        v40.n128_u8[0] = 0;
        v42 = 0;
        if (*(v16 + 160) == 1)
        {
          v40 = *(v16 + 136);
          v41 = *(v16 + 19);
          *(v16 + 18) = 0;
          *(v16 + 19) = 0;
          *(v16 + 17) = 0;
          v42 = 1;
        }

        __p.n128_u8[0] = 0;
        v45 = 0;
        if (*(v16 + 192) == 1)
        {
          __p = *(v16 + 168);
          v44 = *(v16 + 23);
          *(v16 + 22) = 0;
          *(v16 + 23) = 0;
          *(v16 + 21) = 0;
          v45 = 1;
        }

        v46[0] = *(v16 + 200);
        *&v46[1] = *(v16 + 27);
        *(v16 + 26) = 0;
        *(v16 + 27) = 0;
        *(v16 + 25) = 0;
        v20 = v18;
        while (1)
        {
          v21 = v20;
          v22 = v3 + v20;
          v23 = *(v3 + v20 + 528);
          *(v22 + 46) = *(v3 + v20 + 512);
          *(v22 + 47) = v23;
          *(v22 + 96) = *(v3 + v20 + 544);
          v24 = *(v3 + v20 + 464);
          *(v22 + 42) = *(v22 + 28);
          *(v22 + 43) = v24;
          v25 = *(v3 + v20 + 496);
          *(v22 + 44) = *(v3 + v20 + 480);
          *(v22 + 45) = v25;
          std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v3 + v20 + 776, (v3 + v20 + 552));
          std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>((v22 + 808), (v22 + 584));
          v26 = v3 + v21;
          std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v3 + v21 + 840, (v3 + v21 + 616));
          v27 = (v3 + v21 + 648);
          std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v3 + v21 + 872));
          *(v26 + 872) = *v27;
          *(v26 + 111) = *(v26 + 83);
          *(v26 + 83) = 0;
          *v27 = 0u;
          if (v21 == -448)
          {
            break;
          }

          v20 = v21 - 224;
          if (v30 >= *(v3 + v21 + 224))
          {
            v28 = v3 + v20 + 672;
            goto LABEL_45;
          }
        }

        v28 = v3;
LABEL_45:
        *(v28 + 64) = v34;
        *(v28 + 80) = v35;
        *(v28 + 96) = v36;
        *v28 = v30;
        *(v28 + 16) = v31;
        *(v28 + 32) = v32;
        *(v28 + 48) = v33;
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v3 + v21 + 552, &v37);
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v3 + v21 + 584, &v40);
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v3 + v21 + 616, &__p);
        v29 = (v3 + v21 + 648);
        std::vector<CSCppCoreFileRegionInfo>::__vdeallocate(v29);
        *v29 = *&v46[0];
        *(v28 + 208) = *(v46 + 8);
        memset(v46, 0, 24);
        v47 = v46;
        std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v47);
        if (v45 == 1 && __p.n128_u64[0])
        {
          __p.n128_u64[1] = __p.n128_u64[0];
          operator delete(__p.n128_u64[0]);
        }

        if (v42 == 1 && v40.n128_u64[0])
        {
          v40.n128_u64[1] = v40.n128_u64[0];
          operator delete(v40.n128_u64[0]);
        }

        if (v39 == 1 && SHIBYTE(v38) < 0)
        {
          operator delete(v37.n128_u64[0]);
        }

        if (++v19 == 8)
        {
          return v16 + 14 == a2;
        }
      }

      v12 = v16;
      v18 += 224;
      v16 += 14;
      if (v16 == a2)
      {
        return 1;
      }
    }
  }

  return result;
}

void std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(__int128 *a1, __int128 *a2)
{
  v13 = a1[4];
  v14 = a1[5];
  v15 = *(a1 + 12);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  LOBYTE(v16[0]) = 0;
  v18 = 0;
  if (*(a1 + 128) == 1)
  {
    *v16 = *(a1 + 104);
    v17 = *(a1 + 15);
    *(a1 + 14) = 0;
    *(a1 + 15) = 0;
    *(a1 + 13) = 0;
    v18 = 1;
  }

  v19.n128_u8[0] = 0;
  v21 = 0;
  if (*(a1 + 160) == 1)
  {
    v19 = *(a1 + 136);
    v20 = *(a1 + 19);
    *(a1 + 18) = 0;
    *(a1 + 19) = 0;
    *(a1 + 17) = 0;
    v21 = 1;
  }

  __p.n128_u8[0] = 0;
  v24 = 0;
  if (*(a1 + 192) == 1)
  {
    __p = *(a1 + 168);
    v23 = *(a1 + 23);
    *(a1 + 22) = 0;
    *(a1 + 23) = 0;
    *(a1 + 21) = 0;
    v24 = 1;
  }

  v25 = *(a1 + 200);
  v26 = *(a1 + 27);
  *(a1 + 26) = 0;
  *(a1 + 27) = 0;
  *(a1 + 25) = 0;
  v5 = a2[4];
  v4 = a2[5];
  v6 = a2[3];
  *(a1 + 12) = *(a2 + 12);
  a1[4] = v5;
  a1[5] = v4;
  a1[3] = v6;
  v7 = *a2;
  v8 = a2[2];
  a1[1] = a2[1];
  a1[2] = v8;
  *a1 = v7;
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 104, (a2 + 104));
  std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + 136, (a2 + 136));
  std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + 168, (a2 + 168));
  std::vector<CSCppCoreFileRegionInfo>::__vdeallocate(a1 + 25);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 27) = *(a2 + 27);
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  *(a2 + 27) = 0;
  a2[4] = v13;
  a2[5] = v14;
  *(a2 + 12) = v15;
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a2 + 104, v16);
  std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a2 + 136, &v19);
  std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a2 + 168, &__p);
  std::vector<CSCppCoreFileRegionInfo>::__vdeallocate(a2 + 25);
  *(a2 + 200) = v25;
  *(a2 + 27) = v26;
  v26 = 0;
  v25 = 0uLL;
  v27 = &v25;
  std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v27);
  if (v24 == 1 && __p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  if (v21 == 1 && v19.n128_u64[0])
  {
    v19.n128_u64[1] = v19.n128_u64[0];
    operator delete(v19.n128_u64[0]);
  }

  if (v18 == 1 && SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }
}

void _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E1_P23CSCppCoreFileRegionInfoLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(unint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v6 = a2;
  v7 = a2 - 14;
  v223 = a2 - 42;
  v224 = a2 - 28;
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = v6 - v8;
    v10 = 0x6DB6DB6DB6DB6DB7 * ((v6 - v8) >> 5);
    v11 = v10 - 2;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return;
      }

      v6 = a2;
      if (v10 == 2)
      {
        v93 = a2 - 14;
        if (*(a2 - 28) >= *a1)
        {
          return;
        }

LABEL_136:
        v96 = a1;
        v95 = v93;
        goto LABEL_137;
      }

      goto LABEL_9;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLi0EEEvT1_SP_SP_SP_SI_(a1, (a1 + 224), (a1 + 448), v7);
      return;
    }

    if (v10 == 5)
    {
      _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLi0EEEvT1_SP_SP_SP_SI_(a1, (a1 + 224), (a1 + 448), (a1 + 672));
      v98 = *(v6 - 28);
      v97 = v6 - 14;
      if (v98 < *(a1 + 672))
      {
        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>((a1 + 672), v97);
        if (*(a1 + 672) < *(a1 + 448))
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>((a1 + 448), (a1 + 672));
          if (*(a1 + 448) < *(a1 + 224))
          {
            std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>((a1 + 224), (a1 + 448));
            if (*(a1 + 224) < *a1)
            {
              v95 = (a1 + 224);
              v96 = a1;
              goto LABEL_137;
            }
          }
        }
      }

      return;
    }

LABEL_9:
    if (v9 <= 5375)
    {
      if (a4)
      {
        if (a1 != v6)
        {
          v99 = a1 + 224;
          if ((a1 + 224) != a2)
          {
            v100 = 0;
            v101 = a1;
            do
            {
              v102 = v99;
              if (*(v101 + 224) < *v101)
              {
                v103 = *v99;
                v104 = *(v99 + 32);
                v248 = *(v99 + 16);
                v249 = v104;
                v247 = v103;
                v105 = *(v99 + 48);
                v106 = *(v99 + 64);
                v107 = *(v99 + 80);
                v253 = *(v99 + 96);
                v251 = v106;
                v252 = v107;
                v250 = v105;
                v254.n128_u8[0] = 0;
                v256 = 0;
                if (*(v101 + 352) == 1)
                {
                  v255 = *(v101 + 344);
                  v254 = *(v101 + 328);
                  *(v101 + 336) = 0;
                  *(v101 + 344) = 0;
                  *(v101 + 328) = 0;
                  v256 = 1;
                }

                v108 = (v101 + 360);
                v257.n128_u8[0] = 0;
                v259 = 0;
                if (*(v101 + 384) == 1)
                {
                  v257 = *v108;
                  v258 = *(v101 + 376);
                  v108->n128_u64[0] = 0;
                  *(v101 + 368) = 0;
                  *(v101 + 376) = 0;
                  v259 = 1;
                }

                __p.n128_u8[0] = 0;
                v262 = 0;
                if (*(v101 + 416) == 1)
                {
                  __p = *(v101 + 392);
                  v261 = *(v101 + 408);
                  *(v101 + 392) = 0;
                  *(v101 + 400) = 0;
                  *(v101 + 408) = 0;
                  v262 = 1;
                }

                v263[0] = *(v101 + 424);
                *&v263[1] = *(v101 + 440);
                *(v101 + 424) = 0;
                *(v101 + 432) = 0;
                *(v101 + 440) = 0;
                v109 = v100;
                while (1)
                {
                  v110 = v109;
                  v111 = a1 + v109;
                  v112 = *(a1 + v109 + 80);
                  *(v111 + 288) = *(a1 + v109 + 64);
                  *(v111 + 304) = v112;
                  *(v111 + 320) = *(a1 + v109 + 96);
                  v113 = *(a1 + v109 + 16);
                  *(v111 + 224) = *v111;
                  *(v111 + 240) = v113;
                  v114 = *(a1 + v109 + 48);
                  *(v111 + 256) = *(a1 + v109 + 32);
                  *(v111 + 272) = v114;
                  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + v109 + 328, (a1 + v109 + 104));
                  std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v111 + 360, (v111 + 136));
                  v115 = a1 + v110;
                  std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + v110 + 392, (a1 + v110 + 168));
                  std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((a1 + v110 + 424));
                  *(v115 + 424) = *(v115 + 200);
                  *(v115 + 440) = *(v115 + 216);
                  *(v115 + 208) = 0;
                  *(v115 + 216) = 0;
                  *(v115 + 200) = 0;
                  if (!v110)
                  {
                    break;
                  }

                  v109 = v110 - 224;
                  if (v247 >= *(a1 + v110 - 224))
                  {
                    v116 = a1 + v110;
                    goto LABEL_160;
                  }
                }

                v116 = a1;
LABEL_160:
                v117 = v247;
                v118 = v249;
                *(v116 + 16) = v248;
                *(v116 + 32) = v118;
                *v116 = v117;
                v119 = v250;
                v120 = v251;
                v121 = v252;
                *(v116 + 96) = v253;
                *(v116 + 64) = v120;
                *(v116 + 80) = v121;
                *(v116 + 48) = v119;
                v122 = a1 + v110;
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v122 + 104, &v254);
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v122 + 136, &v257);
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v122 + 168, &__p);
                std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v122 + 200));
                *(v122 + 200) = *&v263[0];
                *(v116 + 208) = *(v263 + 8);
                memset(v263, 0, 24);
                *&v228 = v263;
                std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v228);
                if (v262 == 1 && __p.n128_u64[0])
                {
                  __p.n128_u64[1] = __p.n128_u64[0];
                  operator delete(__p.n128_u64[0]);
                }

                if (v259 == 1 && v257.n128_u64[0])
                {
                  v257.n128_u64[1] = v257.n128_u64[0];
                  operator delete(v257.n128_u64[0]);
                }

                if (v256 == 1 && SHIBYTE(v255) < 0)
                {
                  operator delete(v254.n128_u64[0]);
                }
              }

              v99 = v102 + 224;
              v100 += 224;
              v101 = v102;
            }

            while ((v102 + 224) != a2);
          }
        }
      }

      else if (a1 != v6)
      {
        v204 = a1 + 224;
        if ((a1 + 224) != a2)
        {
          v205 = a1 - 224;
          do
          {
            v206 = v204;
            if (*(a1 + 224) < *a1)
            {
              v207 = *v204;
              v208 = *(v204 + 32);
              v248 = *(v204 + 16);
              v249 = v208;
              v247 = v207;
              v209 = *(v204 + 48);
              v210 = *(v204 + 64);
              v211 = *(v204 + 80);
              v253 = *(v204 + 96);
              v251 = v210;
              v252 = v211;
              v250 = v209;
              v254.n128_u8[0] = 0;
              v256 = 0;
              if (*(a1 + 352) == 1)
              {
                v255 = *(a1 + 344);
                v254 = *(a1 + 328);
                *(a1 + 336) = 0;
                *(a1 + 344) = 0;
                *(a1 + 328) = 0;
                v256 = 1;
              }

              v212 = (a1 + 360);
              v257.n128_u8[0] = 0;
              v259 = 0;
              if (*(a1 + 384) == 1)
              {
                v257 = *v212;
                v258 = *(a1 + 376);
                v212->n128_u64[0] = 0;
                *(a1 + 368) = 0;
                *(a1 + 376) = 0;
                v259 = 1;
              }

              __p.n128_u8[0] = 0;
              v262 = 0;
              if (*(a1 + 416) == 1)
              {
                __p = *(a1 + 392);
                v261 = *(a1 + 408);
                *(a1 + 392) = 0;
                *(a1 + 400) = 0;
                *(a1 + 408) = 0;
                v262 = 1;
              }

              v263[0] = *(a1 + 424);
              *&v263[1] = *(a1 + 440);
              *(a1 + 424) = 0;
              *(a1 + 432) = 0;
              *(a1 + 440) = 0;
              v213 = v205;
              do
              {
                v214 = *(v213 + 304);
                *(v213 + 512) = *(v213 + 288);
                *(v213 + 528) = v214;
                *(v213 + 544) = *(v213 + 320);
                v215 = *(v213 + 240);
                *(v213 + 448) = *(v213 + 224);
                *(v213 + 464) = v215;
                v216 = *(v213 + 272);
                *(v213 + 480) = *(v213 + 256);
                *(v213 + 496) = v216;
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v213 + 552, (v213 + 328));
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v213 + 584, (v213 + 360));
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v213 + 616, (v213 + 392));
                std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v213 + 648));
                *(v213 + 648) = *(v213 + 424);
                *(v213 + 664) = *(v213 + 440);
                *(v213 + 424) = 0;
                *(v213 + 432) = 0;
                *(v213 + 440) = 0;
                v217 = *v213;
                v213 -= 224;
              }

              while (v247 < v217);
              v218 = v247;
              v219 = v249;
              *(v213 + 464) = v248;
              *(v213 + 480) = v219;
              *(v213 + 448) = v218;
              v220 = v250;
              v221 = v251;
              v222 = v252;
              *(v213 + 544) = v253;
              *(v213 + 512) = v221;
              *(v213 + 528) = v222;
              *(v213 + 496) = v220;
              std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v213 + 552, &v254);
              std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v213 + 584, &v257);
              std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v213 + 616, &__p);
              std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v213 + 648));
              *(v213 + 648) = v263[0];
              *(v213 + 664) = *&v263[1];
              memset(v263, 0, 24);
              *&v228 = v263;
              std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v228);
              if (v262 == 1 && __p.n128_u64[0])
              {
                __p.n128_u64[1] = __p.n128_u64[0];
                operator delete(__p.n128_u64[0]);
              }

              if (v259 == 1 && v257.n128_u64[0])
              {
                v257.n128_u64[1] = v257.n128_u64[0];
                operator delete(v257.n128_u64[0]);
              }

              if (v256 == 1 && SHIBYTE(v255) < 0)
              {
                operator delete(v254.n128_u64[0]);
              }
            }

            v204 = v206 + 224;
            v205 += 224;
            a1 = v206;
          }

          while ((v206 + 224) != a2);
        }
      }

      return;
    }

    if (!a3)
    {
      if (a1 != v6)
      {
        v123 = v11 >> 1;
        v124 = v11 >> 1;
        do
        {
          v125 = v124;
          if (v123 >= v124)
          {
            v126 = (2 * v124) | 1;
            v127 = (a1 + 224 * v126);
            if (2 * v125 + 2 >= v10)
            {
              v128 = *v127;
            }

            else
            {
              v128 = *v127;
              v129 = *(v127 + 28);
              if (*v127 <= v129)
              {
                v128 = *(v127 + 28);
              }

              if (*v127 < v129)
              {
                v127 += 14;
                v126 = 2 * v125 + 2;
              }
            }

            v130 = a1 + 224 * v125;
            if (v128 >= *v130)
            {
              v131 = *v130;
              v132 = *(v130 + 32);
              v248 = *(v130 + 16);
              v249 = v132;
              v247 = v131;
              v133 = *(v130 + 48);
              v134 = *(v130 + 64);
              v135 = *(v130 + 80);
              v253 = *(v130 + 96);
              v251 = v134;
              v252 = v135;
              v250 = v133;
              v254.n128_u8[0] = 0;
              v256 = 0;
              if (*(v130 + 128) == 1)
              {
                v136 = *(v130 + 104);
                v255 = *(v130 + 120);
                v254 = v136;
                *(v130 + 112) = 0;
                *(v130 + 120) = 0;
                *(v130 + 104) = 0;
                v256 = 1;
              }

              v257.n128_u8[0] = 0;
              v259 = 0;
              if (*(v130 + 160) == 1)
              {
                v257 = *(v130 + 136);
                v258 = *(v130 + 152);
                *(v130 + 136) = 0;
                *(v130 + 144) = 0;
                *(v130 + 152) = 0;
                v259 = 1;
              }

              __p.n128_u8[0] = 0;
              v262 = 0;
              if (*(v130 + 192) == 1)
              {
                __p = *(v130 + 168);
                v261 = *(v130 + 184);
                *(v130 + 168) = 0;
                *(v130 + 176) = 0;
                *(v130 + 184) = 0;
                v262 = 1;
              }

              v263[0] = *(v130 + 200);
              *&v263[1] = *(v130 + 216);
              *(v130 + 200) = 0;
              *(v130 + 208) = 0;
              *(v130 + 216) = 0;
              do
              {
                v137 = v127;
                v138 = *v127;
                v139 = v127[2];
                *(v130 + 16) = v127[1];
                *(v130 + 32) = v139;
                *v130 = v138;
                v140 = v127[3];
                v141 = v127[4];
                v142 = v127[5];
                *(v130 + 96) = *(v127 + 12);
                *(v130 + 64) = v141;
                *(v130 + 80) = v142;
                *(v130 + 48) = v140;
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v130 + 104, (v127 + 104));
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v130 + 136, (v137 + 136));
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v130 + 168, (v137 + 168));
                std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v130 + 200));
                *(v130 + 200) = *(v137 + 200);
                *(v130 + 216) = *(v137 + 27);
                *(v137 + 25) = 0;
                *(v137 + 26) = 0;
                *(v137 + 27) = 0;
                if (v123 < v126)
                {
                  break;
                }

                v127 = (a1 + 224 * ((2 * v126) | 1));
                if (2 * v126 + 2 >= v10)
                {
                  v143 = *v127;
                  v126 = (2 * v126) | 1;
                }

                else
                {
                  v143 = *v127;
                  v144 = *(v127 + 28);
                  if (*v127 <= v144)
                  {
                    v143 = *(v127 + 28);
                  }

                  if (*v127 >= v144)
                  {
                    v126 = (2 * v126) | 1;
                  }

                  else
                  {
                    v127 += 14;
                    v126 = 2 * v126 + 2;
                  }
                }

                v130 = v137;
              }

              while (v143 >= v247);
              v145 = v247;
              v146 = v249;
              v137[1] = v248;
              v137[2] = v146;
              *v137 = v145;
              v147 = v250;
              v148 = v251;
              v149 = v252;
              *(v137 + 12) = v253;
              v137[4] = v148;
              v137[5] = v149;
              v137[3] = v147;
              std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v137 + 104, &v254);
              std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v137 + 136, &v257);
              std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v137 + 168, &__p);
              std::vector<CSCppCoreFileRegionInfo>::__vdeallocate(v137 + 25);
              *(v137 + 200) = v263[0];
              *(v137 + 27) = *&v263[1];
              memset(v263, 0, 24);
              *&v228 = v263;
              std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v228);
              if (v262 == 1 && __p.n128_u64[0])
              {
                __p.n128_u64[1] = __p.n128_u64[0];
                operator delete(__p.n128_u64[0]);
              }

              if (v259 == 1 && v257.n128_u64[0])
              {
                v257.n128_u64[1] = v257.n128_u64[0];
                operator delete(v257.n128_u64[0]);
              }

              if (v256 == 1 && SHIBYTE(v255) < 0)
              {
                operator delete(v254.n128_u64[0]);
              }
            }
          }

          v124 = v125 - 1;
        }

        while (v125);
        v150 = 0x6DB6DB6DB6DB6DB7 * (v9 >> 5);
        do
        {
          v151 = *a1;
          v152 = *(a1 + 32);
          v229 = *(a1 + 16);
          v230 = v152;
          v228 = v151;
          v153 = *(a1 + 48);
          v154 = *(a1 + 64);
          v155 = *(a1 + 80);
          v234 = *(a1 + 96);
          v232 = v154;
          v233 = v155;
          v231 = v153;
          v235.n128_u8[0] = 0;
          v237 = 0;
          if (*(a1 + 128) == 1)
          {
            v156 = *(a1 + 104);
            v236 = *(a1 + 120);
            v235 = v156;
            *(a1 + 112) = 0;
            *(a1 + 120) = 0;
            *(a1 + 104) = 0;
            v237 = 1;
          }

          v238.n128_u8[0] = 0;
          v240 = 0;
          if (*(a1 + 160) == 1)
          {
            v238 = *(a1 + 136);
            v239 = *(a1 + 152);
            *(a1 + 136) = 0;
            *(a1 + 144) = 0;
            *(a1 + 152) = 0;
            v240 = 1;
          }

          v226 = a2;
          v241.n128_u8[0] = 0;
          v243 = 0;
          if (*(a1 + 192) == 1)
          {
            v241 = *(a1 + 168);
            v242 = *(a1 + 184);
            *(a1 + 168) = 0;
            *(a1 + 176) = 0;
            *(a1 + 184) = 0;
            v243 = 1;
          }

          v157 = 0;
          v244 = *(a1 + 200);
          v245 = *(a1 + 216);
          *(a1 + 200) = 0;
          *(a1 + 208) = 0;
          *(a1 + 216) = 0;
          v158 = a1;
          do
          {
            v159 = v158 + 224 * v157;
            v160 = v159 + 224;
            if (2 * v157 + 2 >= v150)
            {
              v157 = (2 * v157) | 1;
            }

            else if (*(v159 + 224) >= *(v159 + 448))
            {
              v157 = (2 * v157) | 1;
            }

            else
            {
              v160 = v159 + 448;
              v157 = 2 * v157 + 2;
            }

            v161 = *v160;
            v162 = *(v160 + 32);
            *(v158 + 16) = *(v160 + 16);
            *(v158 + 32) = v162;
            *v158 = v161;
            v163 = *(v160 + 48);
            v164 = *(v160 + 64);
            v165 = *(v160 + 80);
            *(v158 + 96) = *(v160 + 96);
            *(v158 + 64) = v164;
            *(v158 + 80) = v165;
            *(v158 + 48) = v163;
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v158 + 104, (v160 + 104));
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v158 + 136, (v160 + 136));
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v158 + 168, (v160 + 168));
            std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v158 + 200));
            *(v158 + 200) = *(v160 + 200);
            *(v158 + 216) = *(v160 + 216);
            *(v160 + 200) = 0;
            *(v160 + 208) = 0;
            *(v160 + 216) = 0;
            v158 = v160;
          }

          while (v157 <= ((v150 - 2) >> 1));
          v166 = a2 - 14;
          a2 -= 14;
          if (v160 == v226 - 14)
          {
            v198 = v228;
            v199 = v230;
            *(v160 + 16) = v229;
            *(v160 + 32) = v199;
            *v160 = v198;
            v200 = v231;
            v201 = v232;
            v202 = v233;
            *(v160 + 96) = v234;
            *(v160 + 64) = v201;
            *(v160 + 80) = v202;
            *(v160 + 48) = v200;
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v160 + 104, &v235);
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 136, &v238);
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 168, &v241);
            std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v160 + 200));
            *(v160 + 200) = v244;
            *(v160 + 216) = v245;
            v244 = 0uLL;
            v245 = 0;
          }

          else
          {
            v167 = *v166;
            v168 = *(v226 - 12);
            *(v160 + 16) = *(v226 - 13);
            *(v160 + 32) = v168;
            *v160 = v167;
            v169 = *(v226 - 11);
            v170 = *(v226 - 10);
            v171 = *(v226 - 9);
            *(v160 + 96) = *(v226 - 16);
            *(v160 + 64) = v170;
            *(v160 + 80) = v171;
            *(v160 + 48) = v169;
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v160 + 104, (v226 - 120));
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 136, (v226 - 88));
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 168, (v226 - 56));
            std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v160 + 200));
            v172 = v226 - 3;
            *(v160 + 200) = *(v226 - 24);
            *(v160 + 216) = *(v226 - 1);
            *v172 = 0;
            v172[1] = 0;
            v172[2] = 0;
            v173 = v228;
            v174 = v230;
            *(v226 - 13) = v229;
            *(v226 - 12) = v174;
            *a2 = v173;
            v175 = v231;
            v176 = v232;
            v177 = v233;
            *(v226 - 16) = v234;
            *(v226 - 10) = v176;
            *(v226 - 9) = v177;
            *(v226 - 11) = v175;
            std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v226 - 120, &v235);
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v226 - 88, &v238);
            std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v226 - 56, &v241);
            std::vector<CSCppCoreFileRegionInfo>::__vdeallocate(v226 - 3);
            *(v226 - 24) = v244;
            *(v226 - 1) = v245;
            v244 = 0uLL;
            v245 = 0;
            v178 = v160 + 224 - a1;
            if (v178 >= 225)
            {
              v179 = (0x6DB6DB6DB6DB6DB7 * (v178 >> 5) - 2) >> 1;
              v180 = (a1 + 224 * v179);
              if (*v180 < *v160)
              {
                v181 = *v160;
                v182 = *(v160 + 32);
                v248 = *(v160 + 16);
                v249 = v182;
                v247 = v181;
                v183 = *(v160 + 48);
                v184 = *(v160 + 64);
                v185 = *(v160 + 80);
                v253 = *(v160 + 96);
                v251 = v184;
                v252 = v185;
                v250 = v183;
                v254.n128_u8[0] = 0;
                v256 = 0;
                if (*(v160 + 128) == 1)
                {
                  v186 = *(v160 + 104);
                  v255 = *(v160 + 120);
                  v254 = v186;
                  *(v160 + 112) = 0;
                  *(v160 + 120) = 0;
                  *(v160 + 104) = 0;
                  v256 = 1;
                }

                v257.n128_u8[0] = 0;
                v259 = 0;
                if (*(v160 + 160) == 1)
                {
                  v257 = *(v160 + 136);
                  v258 = *(v160 + 152);
                  *(v160 + 136) = 0;
                  *(v160 + 144) = 0;
                  *(v160 + 152) = 0;
                  v259 = 1;
                }

                __p.n128_u8[0] = 0;
                v262 = 0;
                if (*(v160 + 192) == 1)
                {
                  __p = *(v160 + 168);
                  v261 = *(v160 + 184);
                  *(v160 + 168) = 0;
                  *(v160 + 176) = 0;
                  *(v160 + 184) = 0;
                  v262 = 1;
                }

                v263[0] = *(v160 + 200);
                *&v263[1] = *(v160 + 216);
                *(v160 + 200) = 0;
                *(v160 + 208) = 0;
                *(v160 + 216) = 0;
                do
                {
                  v187 = v180;
                  v188 = *v180;
                  v189 = v180[2];
                  *(v160 + 16) = v180[1];
                  *(v160 + 32) = v189;
                  *v160 = v188;
                  v190 = v180[3];
                  v191 = v180[4];
                  v192 = v180[5];
                  *(v160 + 96) = *(v180 + 12);
                  *(v160 + 64) = v191;
                  *(v160 + 80) = v192;
                  *(v160 + 48) = v190;
                  std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v160 + 104, (v180 + 104));
                  std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 136, (v187 + 136));
                  std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v160 + 168, (v187 + 168));
                  std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v160 + 200));
                  *(v160 + 200) = *(v187 + 200);
                  *(v160 + 216) = *(v187 + 27);
                  *(v187 + 25) = 0;
                  *(v187 + 26) = 0;
                  *(v187 + 27) = 0;
                  if (!v179)
                  {
                    break;
                  }

                  v179 = (v179 - 1) >> 1;
                  v180 = (a1 + 224 * v179);
                  v160 = v187;
                }

                while (*v180 < v247);
                v193 = v247;
                v194 = v249;
                v187[1] = v248;
                v187[2] = v194;
                *v187 = v193;
                v195 = v250;
                v196 = v251;
                v197 = v252;
                *(v187 + 12) = v253;
                v187[4] = v196;
                v187[5] = v197;
                v187[3] = v195;
                std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v187 + 104, &v254);
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v187 + 136, &v257);
                std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v187 + 168, &__p);
                std::vector<CSCppCoreFileRegionInfo>::__vdeallocate(v187 + 25);
                *(v187 + 200) = v263[0];
                *(v187 + 27) = *&v263[1];
                memset(v263, 0, 24);
                v246 = v263;
                std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v246);
                if (v262 == 1 && __p.n128_u64[0])
                {
                  __p.n128_u64[1] = __p.n128_u64[0];
                  operator delete(__p.n128_u64[0]);
                }

                if (v259 == 1 && v257.n128_u64[0])
                {
                  v257.n128_u64[1] = v257.n128_u64[0];
                  operator delete(v257.n128_u64[0]);
                }

                if (v256 == 1 && SHIBYTE(v255) < 0)
                {
                  operator delete(v254.n128_u64[0]);
                }
              }
            }
          }

          *&v247 = &v244;
          std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v247);
          if (v243 == 1 && v241.n128_u64[0])
          {
            v241.n128_u64[1] = v241.n128_u64[0];
            operator delete(v241.n128_u64[0]);
          }

          if (v240 == 1 && v238.n128_u64[0])
          {
            v238.n128_u64[1] = v238.n128_u64[0];
            operator delete(v238.n128_u64[0]);
          }

          if (v237 == 1 && SHIBYTE(v236) < 0)
          {
            operator delete(v235.n128_u64[0]);
          }
        }

        while (v150-- > 2);
      }

      return;
    }

    v12 = v10 >> 1;
    v13 = (a1 + 224 * (v10 >> 1));
    v14 = *v7;
    if (v9 > 0x7000)
    {
      v15 = *v13;
      if (*v13 >= *a1)
      {
        if (v14 < v15)
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v13, v7);
          if (*v13 < *a1)
          {
            v16 = a1;
            v17 = v13;
            goto LABEL_25;
          }
        }
      }

      else
      {
        v16 = a1;
        if (v14 < v15)
        {
          goto LABEL_16;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, v13);
        if (*v7 < *v13)
        {
          v16 = v13;
LABEL_16:
          v17 = a2 - 14;
LABEL_25:
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v16, v17);
        }
      }

      v21 = a1 + 224 * v12;
      v24 = *(v21 - 224);
      v23 = (v21 - 224);
      v22 = v24;
      v25 = *v224;
      if (v24 >= *(a1 + 224))
      {
        if (v25 < v22)
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v23, v224);
          if (*v23 < *(a1 + 224))
          {
            v26 = (a1 + 224);
            v27 = v23;
            goto LABEL_37;
          }
        }
      }

      else
      {
        v26 = (a1 + 224);
        if (v25 < v22)
        {
          goto LABEL_30;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v26, v23);
        if (*v224 < *v23)
        {
          v26 = v23;
LABEL_30:
          v27 = a2 - 28;
LABEL_37:
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v26, v27);
        }
      }

      v28 = a1 + 224 * v12;
      v31 = *(v28 + 224);
      v30 = (v28 + 224);
      v29 = v31;
      v32 = *v223;
      if (v31 >= *(a1 + 448))
      {
        if (v32 < v29)
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v30, v223);
          if (*v30 < *(a1 + 448))
          {
            v33 = (a1 + 448);
            v34 = v30;
            goto LABEL_46;
          }
        }
      }

      else
      {
        v33 = (a1 + 448);
        if (v32 < v29)
        {
          goto LABEL_42;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v33, v30);
        if (*v223 < *v30)
        {
          v33 = v30;
LABEL_42:
          v34 = a2 - 42;
LABEL_46:
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v33, v34);
        }
      }

      v35 = *v13;
      v36 = *v30;
      if (*v13 >= *v23)
      {
        if (v36 < v35)
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v13, v30);
          if (*v13 < *v23)
          {
            v37 = v23;
            v38 = v13;
            goto LABEL_55;
          }
        }
      }

      else
      {
        v37 = v23;
        if (v36 < v35)
        {
          goto LABEL_51;
        }

        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v23, v13);
        if (*v30 < *v13)
        {
          v37 = v13;
LABEL_51:
          v38 = v30;
LABEL_55:
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v37, v38);
        }
      }

      v19 = a1;
      v20 = v13;
      goto LABEL_57;
    }

    v18 = *a1;
    if (*a1 >= *v13)
    {
      if (v14 >= v18)
      {
        goto LABEL_58;
      }

      std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, v7);
      if (*a1 >= *v13)
      {
        goto LABEL_58;
      }

      v19 = v13;
      v20 = a1;
    }

    else
    {
      v19 = v13;
      if (v14 >= v18)
      {
        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v13, a1);
        if (*v7 >= *a1)
        {
          goto LABEL_58;
        }

        v19 = a1;
      }

      v20 = a2 - 14;
    }

LABEL_57:
    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v19, v20);
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || *(a1 - 224) < *a1)
    {
      v39 = *a1;
      v40 = *(a1 + 32);
      v248 = *(a1 + 16);
      v249 = v40;
      v247 = v39;
      v41 = *(a1 + 48);
      v42 = *(a1 + 64);
      v43 = *(a1 + 80);
      v253 = *(a1 + 96);
      v251 = v42;
      v252 = v43;
      v250 = v41;
      v254.n128_u8[0] = 0;
      v256 = 0;
      if (*(a1 + 128) == 1)
      {
        v44 = *(a1 + 104);
        v255 = *(a1 + 120);
        v254 = v44;
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        *(a1 + 104) = 0;
        v256 = 1;
      }

      v257.n128_u8[0] = 0;
      v259 = 0;
      if (*(a1 + 160) == 1)
      {
        v257 = *(a1 + 136);
        v258 = *(a1 + 152);
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        v259 = 1;
      }

      __p.n128_u8[0] = 0;
      v262 = 0;
      if (*(a1 + 192) == 1)
      {
        __p = *(a1 + 168);
        v261 = *(a1 + 184);
        *(a1 + 168) = 0;
        *(a1 + 176) = 0;
        *(a1 + 184) = 0;
        v262 = 1;
      }

      v45 = 0;
      v263[0] = *(a1 + 200);
      *&v263[1] = *(a1 + 216);
      *(a1 + 200) = 0;
      *(a1 + 208) = 0;
      *(a1 + 216) = 0;
      v46 = v247;
      do
      {
        v47 = *(a1 + v45 + 224);
        v45 += 224;
      }

      while (v47 < v247);
      v48 = a1 + v45;
      if (v45 == 224)
      {
        v6 = a2;
        do
        {
          if (v48 >= v6)
          {
            break;
          }

          v50 = *(v6 - 28);
          v6 -= 14;
        }

        while (v50 >= v247);
      }

      else
      {
        do
        {
          v49 = *(v6 - 28);
          v6 -= 14;
        }

        while (v49 >= v247);
      }

      v8 = a1 + v45;
      if (v48 < v6)
      {
        v51 = v6;
        do
        {
          std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v8, v51);
          do
          {
            v52 = *(v8 + 224);
            v8 += 224;
          }

          while (v52 < v46);
          do
          {
            v53 = *(v51 - 28);
            v51 -= 14;
          }

          while (v53 >= v46);
        }

        while (v8 < v51);
      }

      v54 = (v8 - 224);
      if (v8 - 224 != a1)
      {
        v55 = *v54;
        v56 = *(v8 - 192);
        *(a1 + 16) = *(v8 - 208);
        *(a1 + 32) = v56;
        *a1 = v55;
        v57 = *(v8 - 176);
        v58 = *(v8 - 160);
        v59 = *(v8 - 144);
        *(a1 + 96) = *(v8 - 128);
        *(a1 + 64) = v58;
        *(a1 + 80) = v59;
        *(a1 + 48) = v57;
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 104, (v8 - 120));
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + 136, (v8 - 88));
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + 168, (v8 - 56));
        std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((a1 + 200));
        *(a1 + 200) = *(v8 - 24);
        *(a1 + 216) = *(v8 - 8);
        *(v8 - 24) = 0;
        *(v8 - 16) = 0;
        *(v8 - 8) = 0;
      }

      v60 = v247;
      v61 = v249;
      *(v8 - 208) = v248;
      *(v8 - 192) = v61;
      *v54 = v60;
      v62 = v250;
      v63 = v251;
      v64 = v252;
      *(v8 - 128) = v253;
      *(v8 - 160) = v63;
      *(v8 - 144) = v64;
      *(v8 - 176) = v62;
      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v8 - 120, &v254);
      std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v8 - 88, &v257);
      std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v8 - 56, &__p);
      std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v8 - 24));
      *(v8 - 24) = v263[0];
      *(v8 - 8) = *&v263[1];
      memset(v263, 0, 24);
      *&v228 = v263;
      std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v228);
      if (v262 == 1 && __p.n128_u64[0])
      {
        __p.n128_u64[1] = __p.n128_u64[0];
        operator delete(__p.n128_u64[0]);
      }

      if (v259 == 1 && v257.n128_u64[0])
      {
        v257.n128_u64[1] = v257.n128_u64[0];
        operator delete(v257.n128_u64[0]);
      }

      if (v256 == 1 && SHIBYTE(v255) < 0)
      {
        operator delete(v254.n128_u64[0]);
      }

      v65 = v48 >= v6;
      v6 = a2;
      if (!v65)
      {
        goto LABEL_95;
      }

      v66 = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E1_P23CSCppCoreFileRegionInfoEEbT1_SP_SI_(a1, (v8 - 224));
      if (_ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E1_P23CSCppCoreFileRegionInfoEEbT1_SP_SI_(v8, a2))
      {
        a2 = (v8 - 224);
        if (!v66)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v66)
      {
LABEL_95:
        _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E1_P23CSCppCoreFileRegionInfoLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(a1, v8 - 224, a3, a4 & 1);
        goto LABEL_96;
      }
    }

    else
    {
      v67 = *a1;
      v68 = *(a1 + 32);
      v248 = *(a1 + 16);
      v249 = v68;
      v247 = v67;
      v69 = *(a1 + 48);
      v70 = *(a1 + 64);
      v71 = *(a1 + 80);
      v253 = *(a1 + 96);
      v251 = v70;
      v252 = v71;
      v250 = v69;
      v254.n128_u8[0] = 0;
      v256 = 0;
      if (*(a1 + 128) == 1)
      {
        v72 = *(a1 + 104);
        v255 = *(a1 + 120);
        v254 = v72;
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        *(a1 + 104) = 0;
        v256 = 1;
      }

      v257.n128_u8[0] = 0;
      v259 = 0;
      if (*(a1 + 160) == 1)
      {
        v257 = *(a1 + 136);
        v258 = *(a1 + 152);
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        v259 = 1;
      }

      __p.n128_u8[0] = 0;
      v262 = 0;
      if (*(a1 + 192) == 1)
      {
        __p = *(a1 + 168);
        v261 = *(a1 + 184);
        *(a1 + 168) = 0;
        *(a1 + 176) = 0;
        *(a1 + 184) = 0;
        v262 = 1;
      }

      v263[0] = *(a1 + 200);
      *&v263[1] = *(a1 + 216);
      *(a1 + 200) = 0;
      *(a1 + 208) = 0;
      *(a1 + 216) = 0;
      v73 = v247;
      if (v247 >= *v7)
      {
        v75 = a1 + 224;
        do
        {
          v8 = v75;
          if (v75 >= v6)
          {
            break;
          }

          v75 += 224;
        }

        while (v247 >= *v8);
      }

      else
      {
        v8 = a1;
        do
        {
          v74 = *(v8 + 224);
          v8 += 224;
        }

        while (v247 >= v74);
      }

      v76 = v6;
      if (v8 < v6)
      {
        v76 = v6;
        do
        {
          v77 = *(v76 - 28);
          v76 -= 14;
        }

        while (v247 < v77);
      }

      while (v8 < v76)
      {
        std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v8, v76);
        do
        {
          v78 = *(v8 + 224);
          v8 += 224;
        }

        while (v73 >= v78);
        do
        {
          v79 = *(v76 - 28);
          v76 -= 14;
        }

        while (v73 < v79);
      }

      v80 = (v8 - 224);
      if (v8 - 224 != a1)
      {
        v81 = *v80;
        v82 = *(v8 - 192);
        *(a1 + 16) = *(v8 - 208);
        *(a1 + 32) = v82;
        *a1 = v81;
        v83 = *(v8 - 176);
        v84 = *(v8 - 160);
        v85 = *(v8 - 144);
        *(a1 + 96) = *(v8 - 128);
        *(a1 + 64) = v84;
        *(a1 + 80) = v85;
        *(a1 + 48) = v83;
        std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(a1 + 104, (v8 - 120));
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + 136, (v8 - 88));
        std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(a1 + 168, (v8 - 56));
        std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((a1 + 200));
        *(a1 + 200) = *(v8 - 24);
        *(a1 + 216) = *(v8 - 8);
        *(v8 - 24) = 0;
        *(v8 - 16) = 0;
        *(v8 - 8) = 0;
      }

      v86 = v247;
      v87 = v249;
      *(v8 - 208) = v248;
      *(v8 - 192) = v87;
      *v80 = v86;
      v88 = v250;
      v89 = v251;
      v90 = v252;
      *(v8 - 128) = v253;
      *(v8 - 160) = v89;
      *(v8 - 144) = v90;
      *(v8 - 176) = v88;
      std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(v8 - 120, &v254);
      std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v8 - 88, &v257);
      std::__optional_storage_base<std::vector<unsigned short>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::vector<unsigned short>,false>>(v8 - 56, &__p);
      std::vector<CSCppCoreFileRegionInfo>::__vdeallocate((v8 - 24));
      *(v8 - 24) = v263[0];
      *(v8 - 8) = *&v263[1];
      memset(v263, 0, 24);
      *&v228 = v263;
      std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v228);
      if (v262 == 1 && __p.n128_u64[0])
      {
        __p.n128_u64[1] = __p.n128_u64[0];
        operator delete(__p.n128_u64[0]);
      }

      if (v259 == 1 && v257.n128_u64[0])
      {
        v257.n128_u64[1] = v257.n128_u64[0];
        operator delete(v257.n128_u64[0]);
      }

      if (v256 == 1 && SHIBYTE(v255) < 0)
      {
        operator delete(v254.n128_u64[0]);
      }

LABEL_96:
      a4 = 0;
    }
  }

  v91 = *(a1 + 224);
  v94 = *(v6 - 28);
  v93 = v6 - 14;
  v92 = v94;
  if (v91 < *a1)
  {
    if (v92 < v91)
    {
      goto LABEL_136;
    }

    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(a1, (a1 + 224));
    if (*v93 >= *(a1 + 224))
    {
      return;
    }

    v95 = v93;
    v96 = (a1 + 224);
LABEL_137:
    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>(v96, v95);
    return;
  }

  if (v92 < v91)
  {
    std::swap[abi:ne200100]<CSCppCoreFileRegionInfo>((a1 + 224), v93);
    if (*(a1 + 224) < *a1)
    {
      v96 = a1;
      v95 = (a1 + 224);
      goto LABEL_137;
    }
  }
}