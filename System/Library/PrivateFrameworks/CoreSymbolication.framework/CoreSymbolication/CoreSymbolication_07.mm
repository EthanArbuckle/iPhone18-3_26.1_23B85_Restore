void TDwarfSourceInfoAbbrev<Dwarf<Dwarf32,Pointer32,LittleEndian>>::~TDwarfSourceInfoAbbrev(CSCppDwarfAbbrev *a1)
{
  CSCppDwarfAbbrev::~CSCppDwarfAbbrev(a1);

  JUMPOUT(0x1DA736760);
}

uint64_t TDwarfSkipAbbrev<Dwarf<Dwarf32,Pointer32,LittleEndian>>::TDwarfSkipAbbrev(uint64_t result, int a2, char a3, void *a4)
{
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 16) = *a4;
  *a4 = 0;
  v4 = *(result + 24);
  *(result + 24) = a4[1];
  a4[1] = v4;
  v5 = *(result + 32);
  *(result + 32) = a4[2];
  a4[2] = v5;
  *result = &unk_1F55061F8;
  v6 = *(result + 16);
  if (v6 != *(result + 24))
  {
    skip_action_for_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(*(v6 + 2));
  }

  return result;
}

void TDwarfSkipAbbrev<Dwarf<Dwarf32,Pointer32,LittleEndian>>::~TDwarfSkipAbbrev(CSCppDwarfAbbrev *a1)
{
  CSCppDwarfAbbrev::~CSCppDwarfAbbrev(a1);

  JUMPOUT(0x1DA736760);
}

void std::vector<CSCppDwarfAbbrev *>::resize(void *a1, unint64_t a2)
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
    std::vector<CSCppDwarfAbbrev *>::__append(a1, a2 - v2);
  }
}

void std::vector<CSCppDwarfAbbrev *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::allocator<std::unique_ptr<CSCppMemory>>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
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

uint64_t std::__split_buffer<std::unique_ptr<TDwarfDIEStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<TDwarfDIEStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<TDwarfDIEStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>::__destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v6 = *--result;
    v5 = v6;
    *(a1 + 16) = result;
    *result = 0;
    if (v6)
    {
      std::default_delete<TDwarfDIEStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>>::operator()[abi:ne200100](result, v5);
      result = *(a1 + 16);
    }
  }

  return result;
}

void std::default_delete<TDwarfDIEStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 80);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    JUMPOUT(0x1DA736760);
  }
}

uint64_t parse_die_stream_for_specification<Dwarf<Dwarf32,Pointer32,LittleEndian>,TDwarfDIEStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>,std::vector<std::unique_ptr<TDwarfDIEStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>>(uint64_t a1, uint64_t a2, uint64_t **a3, _DWORD *a4)
{
  v6 = *(a1 + 68);
  if ((v6 & 0x10) != 0)
  {
    v7 = *(a1 + 40) & (v6 << 18 >> 31);
    if ((v6 & 0x2000) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a1 + 40);
    }

    v9 = -8209;
  }

  else
  {
    if ((v6 & 0x200) == 0)
    {
      return 0;
    }

    v7 = *(a1 + 52) & (v6 << 17 >> 31);
    if ((v6 & 0x4000) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(a1 + 52);
    }

    v9 = -16913;
  }

  *(a1 + 68) = v6 & v9;
  v10 = (*a4)++;
  if (v10 < 10)
  {
    if (v8)
    {
      v14 = 1;
    }

    else
    {
      v14 = v7 == 0;
    }

    if (v14)
    {
      goto LABEL_19;
    }

    v15 = *a3;
    v16 = a3[1];
    if (v16 == *a3)
    {
      goto LABEL_38;
    }

    v17 = v16 - *a3;
    do
    {
      v18 = v17 >> 1;
      v19 = &v15[v17 >> 1];
      v21 = *v19;
      v20 = v19 + 1;
      v17 += ~(v17 >> 1);
      if (*(v21 + 16) + *(v21 + 12) > v7)
      {
        v17 = v18;
      }

      else
      {
        v15 = v20;
      }
    }

    while (v17);
    if (v15 == v16 || (a2 = *v15, v8 = v7 - *(*v15 + 12), v8 >= *(*v15 + 16)))
    {
LABEL_38:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v11 = MEMORY[0x1E69E9C10];
        v12 = "Ref addr is not within the bounds of any compile unit";
        v13 = buf;
        goto LABEL_32;
      }
    }

    else
    {
LABEL_19:
      if (*(a2 + 16) >= v8)
      {
        read_specification_abbrev_at<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v8, a2);
        return a2;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v23 = 0;
        v11 = MEMORY[0x1E69E9C10];
        v12 = "Out-of-bounds abstract origin or specification offset";
        v13 = &v23;
        goto LABEL_32;
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v25 = 0;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "Possible reference cycle in DIE";
    v13 = &v25;
LABEL_32:
    _os_log_impl(&dword_1D96E9000, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
  }

  return 0;
}

uint64_t resolve_parsed_data_names<Dwarf<Dwarf32,Pointer32,LittleEndian>>(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 68);
  v4 = (a1 + 24);
  if ((v3 & 0xC) == 8)
  {
    v5 = (a1 + 24);
  }

  else
  {
    v5 = (a1 + 16);
  }

  v6 = *v5;
  if ((v3 & 0xC) == 8)
  {
    v7 = 67141633;
  }

  else
  {
    v7 = 67174401;
  }

  *a2 = v6;
  if ((v3 & 4) != 0)
  {
    v8 = 0x200000;
  }

  else
  {
    v8 = 0x100000;
  }

  v9 = v7 | v8;
  if ((v3 & 4) != 0)
  {
    v4 = (a1 + 16);
  }

  *a3 = *v4;
  if (*(a1 + 48) == 1 && (v3 & 0x80u) != 0)
  {
    v11 = v9 | 0x40;
  }

  else
  {
    v11 = v9;
  }

  if (*(a1 + 49) == 1)
  {
    v12 = v11 | 0x80;
  }

  else
  {
    v12 = v11;
  }

  if ((v3 & 0x100) != 0)
  {
    return v12;
  }

  else
  {
    return v11;
  }
}

uint64_t TAddressRelocator<Pointer32>::relocate(void *a1, uint64_t a2)
{
  v2 = a2;
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  if ((a2 - *v3) < v3[1])
  {
    goto LABEL_11;
  }

  v4 = a1[1];
  if (v4 != *a1)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v4 = *a1;
    do
    {
      v6 = v5 >> 1;
      v7 = &v4[3 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 3;
      v5 += ~(v5 >> 1);
      if (v9 > a2)
      {
        v5 = v6;
      }

      else
      {
        v4 = v8;
      }
    }

    while (v5);
  }

  if (v4 != *a1)
  {
    v10 = *(v4 - 3);
    v11 = *(v4 - 2);
    v3 = v4 - 3;
    if (a2 - v10 < v11)
    {
      a1[3] = v3;
LABEL_11:
      v2 = (v3[2] + a2);
      goto LABEL_14;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = v2;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Attempt to relocate address [0x%llx], which is outside segment deltas\n", &v14, 0xCu);
  }

LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t TDwarfAbbrevData<Dwarf<Dwarf32,Pointer32,LittleEndian>>::has_inlined_info(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 68);
  if (a2 >= 5)
  {
    v3 = (v2 >> 10) & 1;
LABEL_8:
    result = 1;
    if ((v3 & 1) == 0 && (v2 & 0x800) == 0)
    {
      return (v2 >> 12) & 1;
    }

    return result;
  }

  if ((v2 & 0x400) != 0)
  {
    LOBYTE(v3) = *(a1 + 56) != 0;
    goto LABEL_8;
  }

  if ((v2 & 0x800) == 0)
  {
    return (v2 >> 12) & 1;
  }

  return 1;
}

const char *path_from_file_index<Pointer32>(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = (__PAIR64__(a2, a5) - 5) >> 32;
  if (v5 >= (a1[1] - *a1) >> 3)
  {
    if ((path_from_file_index<Pointer32>(std::vector<char const*> const&,unsigned int,unsigned long long,TRawSymbolOwnerData<Pointer32> &,unsigned int)::suppress_error & 1) == 0)
    {
      path_from_file_index<Pointer32>(std::vector<char const*> const&,unsigned int,unsigned long long,TRawSymbolOwnerData<Pointer32> &,unsigned int)::suppress_error = 1;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        (*(*a4 + 240))(__p, a4);
        v9 = v14 >= 0 ? __p : __p[0];
        *buf = 136315650;
        *&buf[4] = v9;
        v16 = 2048;
        v17 = a3;
        v18 = 1024;
        v19 = v5;
        _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[CoreSymbolication] In DWARF data from %s:\n  .debug_line[%llx] file = %d is not a valid index\n", buf, 0x1Cu);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v10 = *MEMORY[0x1E69E9848];
      (*(*a4 + 240))(buf, a4);
      if (v18 >= 0)
      {
        v11 = buf;
      }

      else
      {
        v11 = *buf;
      }

      fprintf(v10, "[CoreSymbolication] In DWARF data from %s:\n  .debug_line[%llx] file = %d is not a valid index\n", v11, a3, v5);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(*buf);
      }
    }

    result = "<Bad file name in .debug_info>";
  }

  else
  {
    result = *(*a1 + 8 * v5);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void record_symbols_with_ancestor<Pointer32,std::vector<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *>>,std::deque<TRawSymbol<Pointer32>>>(_DWORD *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  if (*(a3 + 8) == 29)
  {
    record_inlined_symbols_with_ancestor<Pointer32,std::vector<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *>>>(a1, a2, a3, a5);
  }

  else
  {
    record_concrete_symbols_with_ancestor<Pointer32,std::vector<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *>>,std::deque<TRawSymbol<Pointer32>>>(a1, a2, a3, a4, a5);
  }
}

uint64_t TDwarfSourceInfoAbbrev<Dwarf<Dwarf32,Pointer32,LittleEndian>>::set_compilation_unit_pc_ranges(uint64_t result)
{
  v1 = *(result + 64);
  v2 = *(v1 + 34);
  if (v2)
  {
    v3 = *v1;
LABEL_6:
    v1[19] = v3;
    if ((v2 & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  v3 = v1[2];
  if (v3 != -1)
  {
    goto LABEL_6;
  }

  if ((v1[17] & 2) == 0)
  {
    return result;
  }

LABEL_7:
  if (v2 < 0)
  {
    v4 = v1[18] + *v1;
  }

  else
  {
    v4 = v1[1];
  }

  v1[20] = v4;
  return result;
}

void parse_line_numbers<Dwarf<Dwarf32,Pointer32,LittleEndian>>(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4, const char *a5, int a6, uint64_t a7, void *a8, uint64_t (***a9)(void, std::vector<std::string>::pointer), void *a10, uint64_t a11)
{
  v51 = *MEMORY[0x1E69E9840];
  TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::set_cursor(a1, a3);
  v17 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint32(a1);
  v18 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint16(a1);
  if (v18 - 6 >= 0xFFFFFFFC)
  {
    v19 = v18;
    if (v18 == 5)
    {
      TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(a1);
      TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(a1);
    }

    TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::dwarf_offset(a1);
    v39 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(a1);
    if (v19 >= 4)
    {
      TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(a1);
    }

    TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(a1);
    v38 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(a1);
    v20 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(a1);
    v21 = *(a1 + 8);
    v42 = (*a1 + v21);
    v22 = *v42;
    *(a1 + 8) = v21 + v22;
    __p = 0;
    v48 = 0;
    v49 = 0;
    if (v19 == 5)
    {
      parse_dwarf5_path_list<Dwarf<Dwarf32,Pointer32,LittleEndian>>(a1, a2, 5u, a9, (a7 + 96), a4, &__p, &__p);
      parse_dwarf5_path_list<Dwarf<Dwarf32,Pointer32,LittleEndian>>(a1, a2, 5u, a9, (a7 + 96), a4, &__p, a10);
    }

    else
    {
      parse_dwarf2_path_list<Dwarf<Dwarf32,Pointer32,LittleEndian>>(a1, a5, a9, (a7 + 96), &__p, a10);
    }

    v45 = 0;
    v46 = 1;
    v23 = a3 + v17 + 4;
    if (*(a1 + 8) < v23)
    {
      v24 = 0;
      v25 = 1;
      while (1)
      {
        v26 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(a1);
        v27 = v26;
        if (v26 >= v22)
        {
          break;
        }

        if (v26 <= 5)
        {
          if (v26 > 2)
          {
            if (v26 == 3)
            {
              v33 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::LEB(a1);
              v46 += v33;
            }

            else if (v26 == 4)
            {
              v25 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(a1);
            }

            else
            {
              v45 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(a1);
            }

            goto LABEL_21;
          }

          if (v26)
          {
            if (v26 == 1)
            {
              v28 = (v24 + a6);
              if (a8)
              {
                LODWORD(v28) = TAddressRelocator<Pointer32>::relocate(a8, v28);
              }

LABEL_20:
              LODWORD(v43) = v28;
              *__s1 = path_from_file_index<Pointer32>(a10, v25, *(a1 + 8), a7, v19);
              v44 = 0;
              std::deque<TRawSourceInfo<Pointer32>>::emplace_back<unsigned int &,int,char const*&,int &,unsigned int &>(a11, &v43, &v44, __s1, &v46, &v45);
              goto LABEL_21;
            }

            if (v26 != 2)
            {
              goto LABEL_46;
            }

            v24 += TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(a1) * v39;
          }

          else
          {
            v29 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(a1);
            if (!v29)
            {
              goto LABEL_57;
            }

            v30 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(a1);
            switch(v30)
            {
              case 1:
                v24 = 0;
                v25 = 1;
                v45 = 0;
                v46 = 1;
                break;
              case 2:
                v24 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::dwarf_address(a1);
                break;
              case 3:
                v31 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::FORM_string(a1);
                v32 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(a1);
                TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::skip_ULEB(a1);
                TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::skip_ULEB(a1);
                if (*v31 != 47)
                {
                  if (v32 >= ((v48 - __p) >> 3))
                  {
                    std::vector<TRawSymbol<Pointer32>>::__throw_out_of_range[abi:ne200100]();
                  }

                  v35 = *(__p + v32);
                  if (v35)
                  {
                    stringByAppendingPathComponents(__s1, 0x400uLL, v35, v31);
                    v36 = (**a9)(a9, __s1);
                    CSCppStringCache::intern((a7 + 96), v36);
                  }
                }

                *__s1 = (**a9)(a9, v31);
                std::vector<char const*>::push_back[abi:ne200100](a10, __s1);
                break;
              default:
                *(a1 + 8) = v29 + *(a1 + 8) - 1;
                break;
            }
          }
        }

        else if (v26 <= 8)
        {
          if ((v26 - 6) >= 2)
          {
            if (v26 != 8)
            {
LABEL_46:
              if (v42[v26])
              {
                v34 = 0;
                do
                {
                  TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::skip_ULEB(a1);
                  ++v34;
                }

                while (v34 < v42[v27]);
              }

              goto LABEL_21;
            }

            v24 += (v22 ^ 0xFF) / v20 * v39;
          }
        }

        else if ((v26 - 10) >= 2)
        {
          if (v26 == 9)
          {
            v24 += TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint16(a1);
          }

          else
          {
            if (v26 != 12)
            {
              goto LABEL_46;
            }

            TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::skip_ULEB(a1);
          }
        }

LABEL_21:
        if (*(a1 + 8) >= v23)
        {
          goto LABEL_57;
        }
      }

      v24 += (v26 - v22) / v20 * v39;
      v46 += v38 + ((v26 - v22) % v20);
      v28 = (v24 + a6);
      if (a8)
      {
        LODWORD(v28) = TAddressRelocator<Pointer32>::relocate(a8, v28);
      }

      goto LABEL_20;
    }

LABEL_57:
    if (__p)
    {
      v48 = __p;
      operator delete(__p);
    }
  }

  v37 = *MEMORY[0x1E69E9840];
}

void sub_1D9755A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::deque<TRangeValue<Pointer32,char const*>>::emplace_back<unsigned int &,unsigned int &,char const*&>(void *a1, _DWORD *a2, int *a3, uint64_t *a4)
{
  v9 = a1[2];
  v8 = a1[1];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 32 * (v9 - v8) - 1;
  }

  v11 = a1[4];
  v12 = a1[5];
  v13 = v12 + v11;
  if (v10 == v12 + v11)
  {
    std::deque<TRangeValue<Pointer32,char const*>>::__add_back_capacity(a1);
    v11 = a1[4];
    v12 = a1[5];
    v8 = a1[1];
    v13 = v11 + v12;
  }

  v14 = *(v8 + ((v13 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v13;
  v15 = *a3;
  v16 = *a4;
  *v14 = *a2;
  *(v14 + 4) = v15;
  *(v14 + 8) = v16;
  v17 = v12 + 1;
  a1[5] = v17;
  v18 = v11 + v17;
  v19 = (v8 + 8 * (v18 >> 8));
  if (v18)
  {
    v20 = *v19 + 16 * v18;
  }

  else
  {
    v20 = *(v19 - 1) + 4096;
  }

  return v20 - 16;
}

void read_specification_abbrev_at<Dwarf<Dwarf32,Pointer32,LittleEndian>>(unsigned int a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::set_cursor(a2, a1);
  v4 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(a2);
  v5 = v4;
  v7 = *(a2 + 72);
  v6 = *(a2 + 80);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4 || v4 >= ((*(v7 + 2) - *(v7 + 1)) >> 3))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Invalid specification abbrev index in DWARF: ", 45);
    MEMORY[0x1DA7365E0](v13, v5);
    std::ostringstream::str[abi:ne200100](&__p, &v21);
    Exception::Exception(v20, &v21);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v20);
  }

  v8 = *(v7 + 7);
  v9 = CSCppDwarfAbbrevTable::specification_abbrev_at(v7, v4);
  if (!v9)
  {
    v10 = *(*(v7 + 1) + 8 * v5);
    if (v10)
    {
      v11 = *(v10 + 8);
      if (v11 <= 0x2E && ((1 << v11) & 0x400020000008) != 0)
      {
        v23 = 0uLL;
        __p = 0;
        std::vector<CSCppDwarfAttribute>::__init_with_size[abi:ne200100]<CSCppDwarfAttribute*,CSCppDwarfAttribute*>(&__p, *(v10 + 16), *(v10 + 24), (*(v10 + 24) - *(v10 + 16)) >> 2);
        operator new();
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Invalid abbrev tag ", 19);
      v18 = MEMORY[0x1DA7365E0](v17, v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " for symbol entry.", 18);
      std::ostringstream::str[abi:ne200100](&__p, &v21);
      Exception::Exception(v20, &v21);
      v19 = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(v19, v20);
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Null abbrev discovered in DWARF at index ", 41);
    MEMORY[0x1DA7365E0](v15, v5);
    std::ostringstream::str[abi:ne200100](&__p, &v21);
    Exception::Exception(v20, &v21);
    v16 = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(v16, v20);
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  __p = a2;
  (*(*v9 + 16))(v9, &__p, *(a2 + 24));
  TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::set_cursor(a2, v3);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1D9755EAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(a1);
}

uint64_t CSCppDwarfAbbrevTable::specification_abbrev_at(CSCppDwarfAbbrevTable *this, unsigned int a2)
{
  v3 = a2;
  v5 = *(this + 4);
  v6 = *(this + 5);
  v4 = (this + 32);
  v7 = (v6 - v5) >> 3;
  if (v7 <= a2)
  {
    std::vector<CSCppDwarfAbbrev *>::resize(v4, a2 + 1);
    v5 = *(this + 4);
    v7 = (*(this + 5) - v5) >> 3;
  }

  if (v7 <= v3)
  {
    std::vector<TRawSymbol<Pointer32>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v5 + 8 * v3);
}

uint64_t std::vector<CSCppDwarfAttribute>::__init_with_size[abi:ne200100]<CSCppDwarfAttribute*,CSCppDwarfAttribute*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<CSCppDwarfAttribute>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D9756040(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CSCppDwarfAttribute>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::allocator<flatbuffers::Offset<FlatbufferSymbols::InlineSymbol>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

void record_concrete_symbols_with_ancestor<Pointer32,std::vector<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *>>,std::deque<TRawSymbol<Pointer32>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a2)
  {
    v7 = a2;
    v9 = *(a3 + 12);
    do
    {
      std::deque<TRawSymbol<Pointer32>>::push_back(a4, a1);
      if (v9)
      {
        v10 = a4[5] + a4[4] - 1;
        v11 = *(a4[1] + 8 * (v10 / 0x2A)) + 96 * (v10 % 0x2A);
        std::vector<CSCppSymbolOwner *>::push_back[abi:ne200100](a5, &v11);
      }

      a1 += 96;
      --v7;
    }

    while (v7);
  }
}

void record_inlined_symbols_with_ancestor<Pointer32,std::vector<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *>>>(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a1;
  v6 = *(a3 + 12);
  __src = 0;
  v37 = 0;
  v38 = 0;
  v7 = &a1[24 * a2];
  v9 = *a4;
  v8 = a4[1];
  v10 = v8;
  do
  {
    if (v10 == v9)
    {
      v12 = *a4;
      if (a2)
      {
        goto LABEL_10;
      }

      goto LABEL_38;
    }

    v11 = *(v10 - 8);
    v10 -= 8;
    v8 -= 8;
  }

  while (!v11);
  v12 = v10 + 8;
  while (v8 != v9)
  {
    v13 = v8;
    v15 = *(v8 - 8);
    v8 -= 8;
    v14 = v15;
    if (!v15 || (*(v14 + 80) & 1) == 0)
    {
      v9 = v13;
      break;
    }
  }

  if (!a2)
  {
LABEL_38:
    v33 = 0;
    if (!v6)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

LABEL_10:
  if (v6)
  {
    v16 = a2 == 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  do
  {
    v18 = v12;
    while (v18 != v9)
    {
      v20 = *(v18 - 8);
      v18 -= 8;
      v19 = v20;
      if ((*v5 - *v20) < *(v20 + 1))
      {
        std::vector<TRawSymbol<Pointer32>>::push_back[abi:ne200100](v19 + 7, v5);
        if (v17)
        {
          if (v6)
          {
            v21 = -1 - 0x5555555555555555 * ((v19[8] - v19[7]) >> 5);
            v22 = v37;
            if (v37 >= v38)
            {
              v24 = __src;
              v25 = v37 - __src;
              v26 = (v37 - __src) >> 4;
              v27 = v26 + 1;
              if ((v26 + 1) >> 60)
              {
                std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
              }

              v28 = v38 - __src;
              if ((v38 - __src) >> 3 > v27)
              {
                v27 = v28 >> 3;
              }

              v29 = v28 >= 0x7FFFFFFFFFFFFFF0;
              v30 = 0xFFFFFFFFFFFFFFFLL;
              if (!v29)
              {
                v30 = v27;
              }

              if (v30)
              {
                std::allocator<std::pair<TRawSymbol<Pointer32> *,unsigned long>>::allocate_at_least[abi:ne200100](&__src, v30);
              }

              v31 = (16 * v26);
              *v31 = v19;
              v31[1] = v21;
              v23 = 16 * v26 + 16;
              memcpy(0, v24, v25);
              v32 = __src;
              __src = 0;
              v37 = v23;
              v38 = 0;
              if (v32)
              {
                operator delete(v32);
              }
            }

            else
            {
              *v37 = v19;
              *(v22 + 1) = v21;
              v23 = (v22 + 16);
            }

            v37 = v23;
          }
        }

        else
        {
          v35 = v19[8] - 96;
          std::vector<CSCppSymbolOwner *>::push_back[abi:ne200100](a4, &v35);
        }

        break;
      }
    }

    v5 += 24;
  }

  while (v5 != v7);
  v33 = __src;
  if (v6)
  {
LABEL_39:
    v34 = v37;
    if (v33 != v37)
    {
      do
      {
        v35 = *(*v33 + 56) + 96 * *(v33 + 1);
        std::vector<CSCppSymbolOwner *>::push_back[abi:ne200100](a4, &v35);
        v33 += 16;
      }

      while (v33 != v34);
      v33 = __src;
    }
  }

LABEL_42:
  if (v33)
  {
    v37 = v33;
    operator delete(v33);
  }
}

void sub_1D97563B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::deque<TRawSymbol<Pointer32>>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 42 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<TRawSymbol<Pointer32>>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x2A)) + 96 * (v8 % 0x2A);
  *(v9 + 88) = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 65) = 0u;
  result = TRawSymbol<Pointer32>::operator=(v9, a2);
  ++*(a1 + 40);
  return result;
}

void *std::deque<TRawSymbol<Pointer32>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::allocator<std::unique_ptr<CSCppMemory>>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *>>::emplace_back<TRawSymbol<Pointer32> *&>(a1, &v10);
}

void sub_1D975663C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *>>::emplace_back<TRawSymbol<Pointer32> *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::allocator<std::unique_ptr<CSCppMemory>>::allocate_at_least[abi:ne200100](result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *>>::emplace_front<TRawSymbol<Pointer32> *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::allocator<std::unique_ptr<CSCppMemory>>::allocate_at_least[abi:ne200100](result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *> &>::emplace_back<TRawSymbol<Pointer32> *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::allocator<std::unique_ptr<CSCppMemory>>::allocate_at_least[abi:ne200100](result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *> &>::emplace_front<TRawSymbol<Pointer32> *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::allocator<std::unique_ptr<CSCppMemory>>::allocate_at_least[abi:ne200100](result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::allocator<std::pair<TRawSymbol<Pointer32> *,unsigned long>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<TRawSymbol<Pointer32>>::__emplace_back_slow_path<TRawSymbol<Pointer32>::dwarf_ranges_tag,unsigned int &,unsigned int &,char const*&,char const*&,unsigned int &,RawSymbolSourceInfo *>(uint64_t *a1, uint64_t a2, _DWORD *a3, int *a4, uint64_t *a5, uint64_t *a6, int *a7, _OWORD **a8)
{
  v8 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v9 = v8 + 1;
  if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v9)
  {
    v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v11 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  v27 = a1;
  if (v11)
  {
    std::allocator<TRawSymbol<Pointer32>>::allocate_at_least[abi:ne200100](a1, v11);
  }

  v12 = 96 * v8;
  v24 = 0;
  v25 = v12;
  *(&v26 + 1) = 0;
  v13 = *a4;
  v14 = *a5;
  v15 = *a6;
  v16 = *a7;
  v17 = *a8;
  *v12 = *a3;
  *(v12 + 4) = v13;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = v14;
  *(v12 + 32) = v15;
  *(96 * v8 + 0x28) = 0u;
  *(v12 + 88) = 0;
  *(v12 + 65) = 0u;
  *(v12 + 56) = 0u;
  if (v17)
  {
    *(96 * v8 + 0x28) = *v17;
    v16 |= 0x80000000;
  }

  *(96 * v8 + 0x14) = v16;
  *(96 * v8 + 0x50) = 1;
  *&v26 = v12 + 96;
  v18 = a1[1];
  v19 = v12 + *a1 - v18;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TRawSymbol<Pointer32>>,TRawSymbol<Pointer32>*>(a1, *a1, v18, v19);
  v20 = *a1;
  *a1 = v19;
  v21 = a1[2];
  v23 = v26;
  *(a1 + 1) = v26;
  *&v26 = v20;
  *(&v26 + 1) = v21;
  v24 = v20;
  v25 = v20;
  std::__split_buffer<TRawSymbol<Pointer32>>::~__split_buffer(&v24);
  return v23;
}

void sub_1D9756C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TRawSymbol<Pointer32>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void parse_dwarf5_path_list<Dwarf<Dwarf32,Pointer32,LittleEndian>>(uint64_t *a1, unint64_t a2, unsigned __int16 a3, uint64_t (***a4)(void, std::vector<std::string>::pointer), CSCppStringCache *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = *MEMORY[0x1E69E9840];
  v12 = *(a7 + 8) - *a7;
  v13 = v12 == *(a8 + 8) - *a8 && memcmp(*a7, *a8, v12) == 0;
  v39 = 0;
  v38 = 0;
  __s = 0;
  v14 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(a1);
  std::vector<std::unique_ptr<CSCppDwarfAttributeAction>>::vector[abi:ne200100](&v35, v14);
  if (v35 != v36)
  {
    v15 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(a1);
    v16 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(a1);
    if (v15 <= 2)
    {
      if (v15 == 1)
      {
        read_action_for_line_string_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v16);
      }

      if (v15 == 2)
      {
        read_action_for_line_data_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v16);
      }
    }

    else if ((v15 - 3) < 3 || v15 == 8193)
    {
      skip_action_for_line_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v16);
    }

    skip_action_for_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(v16);
  }

  v17 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(a1);
  std::vector<char const*>::reserve(a8, v17);
  v33[0] = 0u;
  v33[1] = a1;
  v34 = 0;
  v33[2] = a2;
  if (v17)
  {
    v18 = MEMORY[0x1E69E9C10];
    memset(&v32, 0, sizeof(v32));
    v20 = v35;
    v19 = v36;
    if (v35 == v36)
    {
      v24 = 0;
      end = 0;
LABEL_36:
      if (end - v24 == 24)
      {
        if (SHIBYTE(v24->__r_.__value_.__r.__words[2]) < 0)
        {
          v24 = v24->__r_.__value_.__r.__words[0];
        }

        v25 = (**a4)(a4, v24);
        CSCppStringCache::intern(a5, v25);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((end - v24) >> 3) >= 2)
      {
        __p[0].__r_.__value_.__s.__data_[0] = 0;
        while (v24 != end)
        {
          v26 = v24;
          if (SHIBYTE(v24->__r_.__value_.__r.__words[2]) < 0)
          {
            v26 = v24->__r_.__value_.__r.__words[0];
          }

          stringByAppendingPathComponents(__p, 0x400uLL, __p, v26);
          ++v24;
        }

        v27 = (**a4)(a4, __p);
        CSCppStringCache::intern(a5, v27);
      }

      CSCppStringCache::intern(a5, "");
    }

    while (1)
    {
      v39 = 0;
      (*(**v20 + 16))(*v20, v33, a3);
      if (!(*(**v20 + 32))())
      {
        if (!__s)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p[0].__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&dword_1D96E9000, v18, OS_LOG_TYPE_DEFAULT, "No string extracted from DWARF5 path list", __p, 2u);
          }

          goto LABEL_17;
        }

        if (v39 == 2)
        {
          if (v38 <= ((*(a7 + 8) - *a7) >> 3) && !isAbsolutePath(__s))
          {
            begin = v32.__begin_;
            std::string::basic_string[abi:ne200100]<0>(__p, *(*a7 + 8 * v38));
            v22.__i_ = begin;
            std::vector<std::string>::insert(&v32, v22, __p);
LABEL_28:
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }
          }
        }

        else if (v39 == 1)
        {
          if (v13 && *(a7 + 8) != *a7 && !isAbsolutePath(__s))
          {
            std::string::basic_string[abi:ne200100]<0>(__p, **a7);
            std::vector<std::string>::push_back[abi:ne200100](&v32, __p);
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }
          }

          std::string::basic_string[abi:ne200100]<0>(__p, __s);
          std::vector<std::string>::push_back[abi:ne200100](&v32, __p);
          goto LABEL_28;
        }
      }

LABEL_17:
      if (++v20 == v19)
      {
        v24 = v32.__begin_;
        end = v32.__end_;
        goto LABEL_36;
      }
    }
  }

  __p[0].__r_.__value_.__r.__words[0] = &v35;
  std::vector<std::unique_ptr<CSCppDwarfAttributeAction>>::__destroy_vector::operator()[abi:ne200100](__p);
  v28 = *MEMORY[0x1E69E9840];
}

const char *parse_dwarf2_path_list<Dwarf<Dwarf32,Pointer32,LittleEndian>>(uint64_t *a1, const char *a2, uint64_t (***a3)(void, char *), CSCppStringCache *a4, void *a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = a2;
  v11 = &v22;
  for (i = a5; ; i = a5)
  {
    std::vector<char const*>::push_back[abi:ne200100](i, v11);
    v13 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::FORM_string(a1);
    v21 = v13;
    if (!*v13)
    {
      break;
    }

    if (!isAbsolutePath(v13))
    {
      stringByAppendingPathComponents(__s1, 0x400uLL, v22, v21);
      v14 = (**a3)(a3, __s1);
      CSCppStringCache::intern(a4, v14);
    }

    v11 = &v21;
  }

  result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::FORM_string(a1);
  if (*result)
  {
    v16 = result;
    do
    {
      v17 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(a1);
      TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::skip_ULEB(a1);
      TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::skip_ULEB(a1);
      if (*v16 != 47 && v17 < ((a5[1] - *a5) >> 3))
      {
        stringByAppendingPathComponents(__s1, 0x400uLL, *(*a5 + 8 * v17), v16);
        v18 = (**a3)(a3, __s1);
        CSCppStringCache::intern(a4, v18);
      }

      v20 = (**a3)(a3, v16);
      std::vector<char const*>::push_back[abi:ne200100](a6, &v20);
      result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::FORM_string(a1);
      v16 = result;
    }

    while (*result);
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::deque<TRawSourceInfo<Pointer32>>::emplace_back<unsigned int &,int,char const*&,int &,unsigned int &>(uint64_t a1, _DWORD *a2, int *a3, uint64_t *a4, int *a5, unsigned int *a6)
{
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 8);
  if (v13 == v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = 16 * (v13 - v14) - 1;
  }

  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = v17 + v16;
  if (v15 == v17 + v16)
  {
    std::deque<TRawSourceInfo<Pointer32>>::__add_back_capacity(a1);
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v14 = *(a1 + 8);
    v18 = v16 + v17;
  }

  v19 = *a3;
  v20 = *(v14 + ((v18 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v18 & 0x7F);
  v21 = *a4;
  v22 = *a5;
  v23 = *a6;
  *v20 = *a2;
  *(v20 + 4) = v19;
  *(v20 + 8) = v21;
  *(v20 + 16) = v22;
  *(v20 + 20) = v23;
  v24 = v17 + 1;
  *(a1 + 40) = v24;
  v25 = v16 + v24;
  v26 = (v14 + 8 * (v25 >> 7));
  v27 = v25 & 0x7F;
  if (v27)
  {
    v28 = *v26 + 32 * v27;
  }

  else
  {
    v28 = *(v26 - 1) + 4096;
  }

  return v28 - 32;
}

void std::vector<char const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
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
      std::allocator<char const*>::allocate_at_least[abi:ne200100](a1, v10);
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

void read_action_for_line_string_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(uint64_t a1)
{
  if (a1 != 8)
  {
    if (a1 != 31 && a1 != 14)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v6);
      v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Unhandled form in read string binding ", 38);
      MEMORY[0x1DA7365E0](v2, a1);
      std::ostringstream::str[abi:ne200100](v6, &v5);
      Exception::Exception(v4, &v5);
      exception = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(exception, v4);
    }

    operator new();
  }

  operator new();
}

void sub_1D9757710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void read_action_for_line_data_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(uint64_t a1)
{
  if (a1 <= 6)
  {
    if (a1 == 5)
    {
      operator new();
    }

    if (a1 == 6)
    {
      operator new();
    }
  }

  else
  {
    switch(a1)
    {
      case 7:
        operator new();
      case 0xF:
        operator new();
      case 0xB:
        operator new();
    }
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](v6);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Unhandled form in read data binding ", 36);
  MEMORY[0x1DA7365E0](v2, a1);
  std::ostringstream::str[abi:ne200100](v6, &v5);
  Exception::Exception(v4, &v5);
  exception = __cxa_allocate_exception(0x20uLL);
  Exception::Exception(exception, v4);
}

void sub_1D975794C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void skip_action_for_line_form<Dwarf<Dwarf32,Pointer32,LittleEndian>>(uint64_t a1)
{
  if (a1 <= 13)
  {
    if (a1 <= 7)
    {
      switch(a1)
      {
        case 5:
          operator new();
        case 6:
          operator new();
        case 7:
          operator new();
      }

      goto LABEL_27;
    }

    if (a1 == 8)
    {
      operator new();
    }

    if (a1 == 9)
    {
      operator new();
    }

    if (a1 != 11)
    {
LABEL_27:
      std::ostringstream::basic_ostringstream[abi:ne200100](v6);
      v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Unhandled dwarf attribute in Debug Line Table ", 46);
      MEMORY[0x1DA7365E0](v2, a1);
      std::ostringstream::str[abi:ne200100](v6, &v5);
      Exception::Exception(v4, &v5);
      exception = __cxa_allocate_exception(0x20uLL);
      Exception::Exception(exception, v4);
    }

LABEL_20:
    operator new();
  }

  if (a1 > 29)
  {
    if (a1 == 30)
    {
      operator new();
    }

    if (a1 == 37)
    {
      goto LABEL_20;
    }

    if (a1 != 31)
    {
      goto LABEL_27;
    }
  }

  else if (a1 != 14)
  {
    if (a1 == 15)
    {
      operator new();
    }

    if (a1 != 23)
    {
      goto LABEL_27;
    }
  }

  operator new();
}

void sub_1D9757CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

void *std::vector<char const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::allocator<char const*>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

std::vector<std::string>::iterator std::vector<std::string>::insert(std::vector<std::string> *this, std::vector<std::string>::const_iterator __position, std::vector<std::string>::value_type *__x)
{
  i = __position.__i_;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (end >= value)
  {
    begin = this->__begin_;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3) + 1;
    if (v10 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v11 = __position.__i_ - begin;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
    v13 = 2 * v12;
    if (2 * v12 <= v10)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3) + 1;
    }

    if (v12 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v13;
    }

    v24.__end_cap_.__value_ = this;
    if (v14)
    {
      std::allocator<std::string>::allocate_at_least[abi:ne200100](this, v14);
    }

    v24.__first_ = 0;
    v24.__begin_ = (8 * (v11 >> 3));
    v24.__end_ = v24.__begin_;
    v24.__end_cap_.__value_ = 0;
    std::__split_buffer<std::string>::emplace_back<std::string>(&v24, __x);
    v16 = v24.__begin_;
    memcpy(v24.__end_, i, this->__end_ - i);
    v17 = this->__begin_;
    v18 = v24.__begin_;
    v24.__end_ = (v24.__end_ + this->__end_ - i);
    this->__end_ = i;
    v19 = i - v17;
    v20 = (v18 - (i - v17));
    memcpy(v20, v17, v19);
    v21 = this->__begin_;
    this->__begin_ = v20;
    v22 = this->__end_cap_.__value_;
    *&this->__end_ = *&v24.__end_;
    v24.__end_ = v21;
    v24.__end_cap_.__value_ = v22;
    v24.__first_ = v21;
    v24.__begin_ = v21;
    std::__split_buffer<std::string>::~__split_buffer(&v24);
    return v16;
  }

  else if (__position.__i_ == end)
  {
    v15 = *&__x->__r_.__value_.__l.__data_;
    end->__r_.__value_.__r.__words[2] = __x->__r_.__value_.__r.__words[2];
    *&end->__r_.__value_.__l.__data_ = v15;
    __x->__r_.__value_.__l.__size_ = 0;
    __x->__r_.__value_.__r.__words[2] = 0;
    __x->__r_.__value_.__r.__words[0] = 0;
    this->__end_ = end + 1;
  }

  else
  {
    std::vector<std::string>::__move_range(this, __position.__i_, end, &__position.__i_[1]);
    if (SHIBYTE(i->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(i->__r_.__value_.__l.__data_);
    }

    v8 = *&__x->__r_.__value_.__l.__data_;
    i->__r_.__value_.__r.__words[2] = __x->__r_.__value_.__r.__words[2];
    *&i->__r_.__value_.__l.__data_ = v8;
    *(&__x->__r_.__value_.__s + 23) = 0;
    __x->__r_.__value_.__s.__data_[0] = 0;
  }

  return i;
}

void *std::vector<std::unique_ptr<CSCppDwarfAttributeAction>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::unique_ptr<CSCppDwarfAttributeAction>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::unique_ptr<CSCppDwarfAttributeAction>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<std::unique_ptr<CSCppMemory>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::unique_ptr<CSCppDwarfAttributeAction>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<CSCppDwarfAttributeAction>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<CSCppDwarfAttributeAction>>::clear[abi:ne200100](void *result)
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

uint64_t TDwarfReadDW_FORM_LineStrpAttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16);
  if ((*(a1 + 24) & **(a1 + 16)) != 0)
  {
    *(result + 8) += 4;
  }

  else
  {
    v4 = *(a2 + 32);
    v5 = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::dwarf_offset(result);
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::set_cursor(v4, v5);
    v6 = *(a1 + 8);
    **(a1 + 16) |= *(a1 + 24);
    *v6 = *v4 + *(v4 + 8);
  }

  return result;
}

uint64_t TDwarfReadLineDW_FORM_Data1AttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16);
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    ++*(result + 8);
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint8(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadLineDW_FORM_Data2AttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16);
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 2;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint16(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadLineDW_FORM_Data4AttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16);
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 4;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint32(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadLineDW_FORM_Data8AttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 16);
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {
    *(result + 8) += 4;
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::uint64(result);
    **(a1 + 8) = result;
  }

  return result;
}

uint64_t TDwarfReadLineDW_FORM_UdataAttributeAction<Dwarf<Dwarf32,Pointer32,LittleEndian>>::action(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *(a1 + 24);
  if ((v6 & v5) != 0)
  {

    return TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::skip_ULEB(v3);
  }

  else
  {
    *v4 = v6 | v5;
    result = TDwarfStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>::ULEB(v3);
    **(a1 + 8) = result;
  }

  return result;
}

void std::allocator<char const*>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::string>::__move_range(std::vector<std::string> *this, std::vector<std::string>::pointer __from_s, std::vector<std::string>::pointer __from_e, std::vector<std::string>::pointer __to)
{
  end = this->__end_;
  v7 = __from_s + end - __to;
  v8 = end;
  if (v7 < __from_e)
  {
    v9 = v7;
    v8 = this->__end_;
    do
    {
      v10 = *v9;
      v8->__r_.__value_.__r.__words[2] = *(v9 + 16);
      *&v8->__r_.__value_.__l.__data_ = v10;
      ++v8;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < __from_e);
  }

  this->__end_ = v8;
  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v11, __from_s, v7, end);
}

__n128 std::__split_buffer<std::string>::emplace_back<std::string>(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 16);
  if (v4 == *(a1 + 24))
  {
    v5 = *(a1 + 8);
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x5555555555555556 * ((v4 - *a1) >> 3);
      }

      v10 = *(a1 + 32);
      v12.__end_cap_.__value_ = *(a1 + 32);
      std::allocator<std::string>::allocate_at_least[abi:ne200100](v10, v9);
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3) + 1) >> 63);
    v7 = -3 * (v6 >> 1);
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v12, v5, v4, v5 - 24 * (v6 >> 1));
    v4 = v8;
    *(a1 + 8) += 8 * v7;
    *(a1 + 16) = v8;
  }

  result = *a2;
  *(v4 + 16) = a2[1].n128_u64[0];
  *v4 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  *(a1 + 16) += 24;
  return result;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void *std::deque<TRawSourceInfo<Pointer32>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::allocator<std::unique_ptr<CSCppMemory>>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *>>::emplace_back<TRawSymbol<Pointer32> *&>(a1, &v10);
}

void sub_1D9758938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::deque<TRangeValue<Pointer32,char const*>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::allocator<std::unique_ptr<CSCppMemory>>::allocate_at_least[abi:ne200100](a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *>>::emplace_back<TRawSymbol<Pointer32> *&>(a1, &v10);
}

void sub_1D9758B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::allocator<TRawSourceInfo<Pointer32>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

_OWORD *std::__for_each_segment[abi:ne200100]<std::__deque_iterator<TRawSourceInfo<Pointer32>,TRawSourceInfo<Pointer32>*,TRawSourceInfo<Pointer32>&,TRawSourceInfo<Pointer32>**,long,128l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<TRawSourceInfo<Pointer32>,TRawSourceInfo<Pointer32>*,TRawSourceInfo<Pointer32>&,TRawSourceInfo<Pointer32>**,long,128l>,std::back_insert_iterator<std::vector<TRawSourceInfo<Pointer32>>>>>(uint64_t *a1, _OWORD *a2, uint64_t *a3, _OWORD *a4, uint64_t *a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = &v18;
  }

  else
  {
    v11 = a1 + 1;
    v10 = *a1;
    v7 = *a5;
    v12 = &v19;
    for (i = (v10 + 4096); ; i = v15 + 256)
    {
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TRawSourceInfo<Pointer32> *,TRawSourceInfo<Pointer32> *,std::back_insert_iterator<std::vector<TRawSourceInfo<Pointer32>>>>(v12, a2, i, v7);
      v7 = v14;
      *a5 = v14;
      if (v11 == a3)
      {
        break;
      }

      v15 = *v11++;
      a2 = v15;
      v12 = &v20;
    }

    a2 = *v11;
    v8 = &v21;
  }

  result = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TRawSourceInfo<Pointer32> *,TRawSourceInfo<Pointer32> *,std::back_insert_iterator<std::vector<TRawSourceInfo<Pointer32>>>>(v8, a2, a4, v7);
  *a5 = v17;
  return result;
}

_OWORD *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TRawSourceInfo<Pointer32> *,TRawSourceInfo<Pointer32> *,std::back_insert_iterator<std::vector<TRawSourceInfo<Pointer32>>>>(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      v8 = *(a4 + 16);
      if (v7 >= v8)
      {
        v10 = (v7 - *a4) >> 5;
        if ((v10 + 1) >> 59)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
        }

        v11 = v8 - *a4;
        v12 = v11 >> 4;
        if (v11 >> 4 <= (v10 + 1))
        {
          v12 = v10 + 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFE0)
        {
          v13 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          std::allocator<TRawSourceInfo<Pointer32>>::allocate_at_least[abi:ne200100](a4, v13);
        }

        v14 = (32 * v10);
        v15 = v5[1];
        *v14 = *v5;
        v14[1] = v15;
        v7 = (32 * v10 + 32);
        v16 = *(a4 + 8) - *a4;
        v17 = 32 * v10 - v16;
        memcpy(v14 - v16, *a4, v16);
        v18 = *a4;
        *a4 = v17;
        *(a4 + 8) = v7;
        *(a4 + 16) = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        v9 = v5[1];
        *v7 = *v5;
        v7[1] = v9;
        v7 += 2;
      }

      *(a4 + 8) = v7;
      v5 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

_OWORD *std::__for_each_segment[abi:ne200100]<std::__deque_iterator<TRangeValue<Pointer32,char const*>,TRangeValue<Pointer32,char const*>*,TRangeValue<Pointer32,char const*>&,TRangeValue<Pointer32,char const*>**,long,256l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<TRangeValue<Pointer32,char const*>,TRangeValue<Pointer32,char const*>*,TRangeValue<Pointer32,char const*>&,TRangeValue<Pointer32,char const*>**,long,256l>,std::back_insert_iterator<std::vector<TRangeValue<Pointer32,char const*>>>>>(uint64_t *a1, _OWORD *a2, uint64_t *a3, _OWORD *a4, uint64_t *a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = &v18;
  }

  else
  {
    v11 = a1 + 1;
    v10 = *a1;
    v7 = *a5;
    v12 = &v19;
    for (i = (v10 + 4096); ; i = v15 + 256)
    {
      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TRangeValue<Pointer32,char const*> *,TRangeValue<Pointer32,char const*> *,std::back_insert_iterator<std::vector<TRangeValue<Pointer32,char const*>>>>(v12, a2, i, v7);
      v7 = v14;
      *a5 = v14;
      if (v11 == a3)
      {
        break;
      }

      v15 = *v11++;
      a2 = v15;
      v12 = &v20;
    }

    a2 = *v11;
    v8 = &v21;
  }

  result = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TRangeValue<Pointer32,char const*> *,TRangeValue<Pointer32,char const*> *,std::back_insert_iterator<std::vector<TRangeValue<Pointer32,char const*>>>>(v8, a2, a4, v7);
  *a5 = v17;
  return result;
}

_OWORD *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<TRangeValue<Pointer32,char const*> *,TRangeValue<Pointer32,char const*> *,std::back_insert_iterator<std::vector<TRangeValue<Pointer32,char const*>>>>(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      v8 = *(a4 + 16);
      if (v7 >= v8)
      {
        v9 = (v7 - *a4) >> 4;
        if ((v9 + 1) >> 60)
        {
          std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
        }

        v10 = v8 - *a4;
        v11 = v10 >> 3;
        if (v10 >> 3 <= (v9 + 1))
        {
          v11 = v9 + 1;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF0)
        {
          v12 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          std::allocator<TRangeValue<Pointer32,char const*>>::allocate_at_least[abi:ne200100](a4, v12);
        }

        v13 = (16 * v9);
        *v13 = *v5;
        v7 = (16 * v9 + 16);
        v14 = *(a4 + 8) - *a4;
        v15 = 16 * v9 - v14;
        memcpy(v13 - v14, *a4, v14);
        v16 = *a4;
        *a4 = v15;
        *(a4 + 8) = v7;
        *(a4 + 16) = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v7++ = *v5;
      }

      *(a4 + 8) = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::allocator<TRangeValue<Pointer32,char const*>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<TRangeValue<Pointer32,char const*>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<TRangeValue<Pointer32,char const*> *,std::allocator<TRangeValue<Pointer32,char const*> *>>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<TRangeValue<Pointer32,char const*> *,std::allocator<TRangeValue<Pointer32,char const*> *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::deque<TRawSymbol<Pointer32>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v2[(a1[5] + v5) / 0x2A] + 96 * ((a1[5] + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        v14 = (v7 + 56);
        std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v14);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 21;
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v11 = 42;
  }

  a1[4] = v11;
LABEL_16:
  while (v2 != v3)
  {
    v12 = *v2++;
    operator delete(v12);
  }

  return std::__split_buffer<TRangeValue<Pointer32,char const*> *,std::allocator<TRangeValue<Pointer32,char const*> *>>::~__split_buffer(a1);
}

uint64_t std::deque<TRawSourceInfo<Pointer32>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 64;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 128;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<TRangeValue<Pointer32,char const*> *,std::allocator<TRangeValue<Pointer32,char const*> *>>::~__split_buffer(a1);
}

void std::vector<std::unique_ptr<TDwarfDIEStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<TDwarfDIEStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::unique_ptr<TDwarfDIEStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        std::default_delete<TDwarfDIEStream<Dwarf<Dwarf32,Pointer32,LittleEndian>>>::operator()[abi:ne200100](v5, v6);
      }
    }

    while (v5-- != a2);
  }

  *(a1 + 8) = a2;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TDwarfAbbrevTable<Dwarf<Dwarf32,Pointer32,LittleEndian>>>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void extract_direct_stabs_from_header_filtering_redacted<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, unint64_t a5)
{
  v8 = HIDWORD(a5);
  v9 = *(a1 + 32);
  v18 = *(a1 + 8);
  v17 = (*(*v18 + 32))(v18, a5, HIDWORD(a5));
  v10 = a4;
  TRawSymbolOwnerData<Pointer32>::presize_symbols_container_by(a2, a4);
  if (a4)
  {
    v11 = 0;
    for (i = (a3 + 4); ; i += 12)
    {
      v13 = *i;
      v14 = v13 <= 0x1F && (v13 & 0xE) == 14;
      if (v14 && i[1])
      {
        break;
      }

LABEL_24:
      if (!--v10)
      {
        return;
      }
    }

    if (*(i - 1) < v8 && TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::string_at(&v18))
    {
      v15 = (v17 + *(i - 1));
      if (v11)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v15 = "$$$bad-name-in-nlist$$$";
      if (v11)
      {
        goto LABEL_17;
      }
    }

    if (!strcmp(v15, "<redacted>"))
    {
      v11 = v15;
    }

    else
    {
      v11 = 0;
    }

LABEL_17:
    if (v15 == v11)
    {
      v11 = v15;
    }

    else
    {
      v16 = 38289424;
      if ((v13 & 1) == 0)
      {
        v16 = 38289408;
      }

      if (v13 >= 0x10)
      {
        v16 |= 0x20u;
      }

      TRawSymbolOwnerData<Pointer32>::emplace_symbol(a2, *(i + 1) + v9, 0, v15, v15, v16 | (8 * *(i + 1)) & 0x40, 0, 0);
    }

    goto LABEL_24;
  }
}

void extract_stripped_locals_from_dyld_shared_cache<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = *(a3 + 2);
  v5 = *(a3 + 3);
  if (v5 != v6)
  {
    v10 = *(a4 + 32);
    v11 = *a3;
    TRawSymbolOwnerData<Pointer32>::presize_symbols_container_by(a5, (v5 - v6));
    v13 = *(a3 + 2);
    v12 = *(a3 + 3);
    if (v13 < v12)
    {
      v14 = (v11 + a1 + 12 * v13 + 8);
      do
      {
        v15 = *(v14 - 4);
        if ((v15 & 0xEEEEEEEE) == 0xE && *(v14 - 3))
        {
          v16 = 38289440;
          if (v15 < 0x10)
          {
            v16 = 38289408;
          }

          v17 = *(v14 - 2);
          if (v17 >= *(a3 + 4) || (v18 = (a1 + v17 + a3[3])) == 0 || !*v18)
          {
            v18 = "$$$bad-name-in-nlist$$$";
          }

          TRawSymbolOwnerData<Pointer32>::emplace_symbol(a5, *v14 + v10, 0, v18, v18, v16 | (8 * *(v14 - 1)) & 0x40, 0, 0);
          v12 = *(a3 + 3);
        }

        ++v13;
        v14 += 3;
      }

      while (v13 < v12);
    }
  }
}

void extract_direct_stabs_from_header<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, unint64_t a5, void *a6)
{
  v10 = HIDWORD(a5);
  v21 = *(a1 + 32);
  v23 = *(a1 + 8);
  v20 = (*(*v23 + 32))(v23, a5, HIDWORD(a5));
  if (v20)
  {
    v11 = a4;
    TRawSymbolOwnerData<Pointer32>::presize_symbols_container_by(a2, a4);
    if (a4)
    {
      v12 = (a3 + 4);
      do
      {
        v13 = *v12;
        v14 = v13 <= 0x1F && (v13 & 0xE) == 14;
        if (v14 && v12[1])
        {
          v15 = 38289424;
          if ((v13 & 1) == 0)
          {
            v15 = 38289408;
          }

          if (v13 >= 0x10)
          {
            v16 = v15 | 0x20;
          }

          else
          {
            v16 = v15;
          }

          v17 = *(v12 + 1);
          if (*(v12 - 1) < v10 && TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::string_at(&v23))
          {
            v18 = (v20 + *(v12 - 1));
          }

          else
          {
            v18 = "$$$bad-name-in-nlist$$$";
          }

          if (*(*(a1 + 24) + 12) != 1 || strncmp(v18, "ltmp", 4uLL))
          {
            v19 = (*(v12 + 1) + v21);
            if (a6)
            {
              LODWORD(v19) = TAddressRelocator<Pointer32>::relocate(a6, v19);
            }

            TRawSymbolOwnerData<Pointer32>::emplace_symbol(a2, v19, 0, v18, v18, v16 | (8 * v17) & 0x40, 0, 0);
          }
        }

        v12 += 12;
        --v11;
      }

      while (v11);
    }
  }
}

void extract_indirect_stabs_from_header<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7, unint64_t a8, void *a9)
{
  v9 = a3[16];
  v10 = a3[9];
  if (v9 <= v10)
  {
    v11 = a3[8];
    if (v11)
    {
      v15 = a3[15];
      v16 = *(a1 + 32);
      v34 = *(a1 + 8);
      v31 = HIDWORD(a8);
      v29 = (*(*v34 + 32))(v34, a8, HIDWORD(a8));
      if (v29)
      {
        v17 = v10 / v9;
        TRawSymbolOwnerData<Pointer32>::presize_symbols_container_by(a2, v17);
        v18 = v16;
        v19 = 0;
        if (a5 >= v15)
        {
          v20 = a5 - v15;
        }

        else
        {
          v20 = 0;
        }

        v21 = a4 + 4 * v15;
        v22 = (v18 + v11);
        v23 = "$$$indirect-absolute-symbol$$$";
        v30 = a2;
        while (1)
        {
          if (v20 == v19)
          {
            return;
          }

          v24 = *(v21 + 4 * v19);
          v25 = v23;
          if ((v24 & 0x40000000) != 0)
          {
            goto LABEL_16;
          }

          if ((v24 & 0x80000000) != 0)
          {
            break;
          }

          if (v24 < a7)
          {
            v26 = v23;
            v27 = (a6 + 12 * v24);
            if (*v27 < v31 && TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::string_at(&v34))
            {
              v25 = (v29 + *v27);
            }

            else
            {
              v25 = "$$$bad-name-in-nlist$$$";
            }

            v23 = v26;
            v28 = v22;
            a2 = v30;
            if (!a9)
            {
              goto LABEL_18;
            }

LABEL_17:
            v28 = TAddressRelocator<Pointer32>::relocate(a9, v22);
LABEL_18:
            TRawSymbolOwnerData<Pointer32>::emplace_symbol(a2, v28, v9, v25, v25, 0x2084102u, 0, 0);
          }

          ++v19;
          v22 = v22 + v9;
          if (v19 >= v17)
          {
            return;
          }
        }

        v25 = "$$$indirect-local-symbol$$$";
LABEL_16:
        v28 = v22;
        if (a9)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }
    }
  }
}

_DWORD *TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::symtab(uint64_t a1)
{
  v1 = *(a1 + 20);
  v3 = *(a1 + 16);
  v4 = a1;
  v5 = a1 + 28 + v1;
  v6 = a1 + 28;
  do
  {
    result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v3);
  }

  while (result && *result != 2);
  return result;
}

_DWORD *TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::dysymtab(uint64_t a1)
{
  v1 = *(a1 + 20);
  v3 = *(a1 + 16);
  v4 = a1;
  v5 = a1 + 28 + v1;
  v6 = a1 + 28;
  do
  {
    result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v3);
  }

  while (result && *result != 11);
  return result;
}

uint64_t TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::string_at(uint64_t a1)
{
  for (i = *(**a1 + 32); ; i = *(**a1 + 32))
  {
    result = i();
    if (!result)
    {
      break;
    }

    v5 = 0;
    while (v4 != v5)
    {
      if (!*(result + v5++))
      {
        return result;
      }
    }
  }

  return result;
}

_DWORD *TMachOHeader<SizeAndEndianness<Pointer32,LittleEndian>>::function_starts(uint64_t a1)
{
  v1 = *(a1 + 20);
  v3 = *(a1 + 16);
  v4 = a1;
  v5 = a1 + 28 + v1;
  v6 = a1 + 28;
  do
  {
    result = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v3);
  }

  while (result && *result != 38);
  return result;
}

void extract_debug_maps_from_header<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5)
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2000000000;
  v40[3] = a2 + 208;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2000000000;
  v39[3] = a2 + 96;
  v10 = (*(**(a1 + 8) + 32))(*(a1 + 8), a5, HIDWORD(a5));
  v31 = 0;
  v32 = &v31;
  v33 = 0x3802000000;
  v34 = __Block_byref_object_copy__267;
  v35 = __Block_byref_object_dispose__268;
  v36 = a3;
  v37 = a4;
  v38 = 0;
  if (!a4)
  {
    goto LABEL_24;
  }

  v11 = v10;
  v12 = 0;
  v13 = 0;
  v14 = &v31;
  while (1)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2000000000;
    v30 = NListRangeChecker<SizeAndEndianness<Pointer32,LittleEndian>>::next(v14 + 5);
    v15 = v28[3];
    if (*(v15 + 4) != 100 || *(v15 + 8))
    {
      goto LABEL_20;
    }

    v16 = v32;
    v17 = *(v32 + 13);
    if (v17 >= *(v32 + 12))
    {
      break;
    }

    v18 = v32[5];
    v19 = v18 + 12 * v17;
    v28[3] = v19;
    if (!v18)
    {
      goto LABEL_23;
    }

    if (*(v19 + 4) == 102 && *(v19 + 6) == 1)
    {
      v20 = NListRangeChecker<SizeAndEndianness<Pointer32,LittleEndian>>::next(v16 + 5);
      v28[3] = v20;
      v21 = *v20;
      if (!*(v11 + v21))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v22 = *(a1 + 40);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v22;
          _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Empty object_file_path in mach-o header: %s\n", &buf, 0xCu);
        }

        fprintf(*MEMORY[0x1E69E9848], "Empty object_file_path in mach-o header: %s\n", *(a1 + 40));
      }

      if (!deny_nfs_mount_lookup((v11 + v21)))
      {
        if (v12)
        {
          if (v13)
          {
            goto LABEL_16;
          }

LABEL_18:
          v13 = 0;
        }

        else
        {
          if (access((v11 + v21), 4))
          {
            goto LABEL_18;
          }

LABEL_16:
          *&buf = CSSymbolicatorCreateWithPathArchitectureFlagsAndNotification((v11 + v21), *(*(a1 + 24) + 4) | ((*(*(a1 + 24) + 8) & 0xFFFFFF) << 32), 537657344);
          *(&buf + 1) = v23;
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 0x40000000;
          v25[2] = ___Z30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer3212LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS5_4SIZEEEPK6TNListIS5_Ej6TRangeIS9_E_block_invoke;
          v25[3] = &unk_1E8583F28;
          v25[4] = &v27;
          v25[5] = &v31;
          v26 = v9;
          v25[8] = v11;
          v25[9] = a1;
          v25[10] = a2;
          v25[6] = v39;
          v25[7] = v40;
          CSSymbolicatorForeachSymbolOwnerAtTime(buf, v23, 0x8000000000000000, v25);
          CSCppTypeRefMark::~CSCppTypeRefMark(&buf);
          v13 = 1;
        }

        v12 = 1;
      }
    }

LABEL_20:
    _Block_object_dispose(&v27, 8);
    v14 = v32;
    if (*(v32 + 13) >= *(v32 + 12))
    {
      goto LABEL_24;
    }
  }

  v28[3] = 0;
LABEL_23:
  _Block_object_dispose(&v27, 8);
LABEL_24:
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v40, 8);
  v24 = *MEMORY[0x1E69E9840];
}

void sub_1D9759F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  CSCppTypeRefMark::~CSCppTypeRefMark((v30 - 128));
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 192), 8);
  _Block_object_dispose((v30 - 160), 8);
  _Unwind_Resume(a1);
}

const char *extract_relinked_subdylibs_in_debug_maps_from_header<SizeAndEndianness<Pointer32,LittleEndian>>(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unint64_t a5)
{
  v8 = *(a1 + 32);
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), a5, HIDWORD(a5));
  v19 = a3;
  v20 = a4;
  v21 = 0;
  if (a4)
  {
    v10 = result;
    do
    {
      result = NListRangeChecker<SizeAndEndianness<Pointer32,LittleEndian>>::next(&v19);
      if (result[4] == 100)
      {
        v12 = v20;
        v11 = v21;
        if (!*(result + 2))
        {
          if (v21 >= v20 || !v19)
          {
            return result;
          }

          if (*(v19 + 12 * v21 + 4) == 104)
          {
            result = NListRangeChecker<SizeAndEndianness<Pointer32,LittleEndian>>::next(&v19);
            if (v21 >= v20)
            {
              return result;
            }

            v13 = *result;
            result = NListRangeChecker<SizeAndEndianness<Pointer32,LittleEndian>>::next(&v19);
            v12 = v20;
            v11 = v21;
            if (result[4] == 100)
            {
              if (v21 >= v20)
              {
                return result;
              }

              result = NListRangeChecker<SizeAndEndianness<Pointer32,LittleEndian>>::next(&v19);
              v12 = v20;
              v11 = v21;
              if (result[4] == 100)
              {
                if (v21 >= v20)
                {
                  return result;
                }

                result = NListRangeChecker<SizeAndEndianness<Pointer32,LittleEndian>>::next(&v19);
                v12 = v20;
                v11 = v21;
                if (result[4] == 102)
                {
                  while (v11 < v12)
                  {
                    if (v19)
                    {
                      v14 = v19 + 12 * v11;
                      v15 = *(v14 + 4);
                      if (v15 == 100)
                      {
                        if (!*(v14 + 8))
                        {
                          break;
                        }

LABEL_27:
                        result = NListRangeChecker<SizeAndEndianness<Pointer32,LittleEndian>>::next(&v19);
                        goto LABEL_28;
                      }

                      if (v15 != 46)
                      {
                        goto LABEL_27;
                      }

                      NListRangeChecker<SizeAndEndianness<Pointer32,LittleEndian>>::next(&v19);
                    }

                    result = NListRangeChecker<SizeAndEndianness<Pointer32,LittleEndian>>::next(&v19);
                    if (result[4] == 36)
                    {
                      v18 = *(result + 2) + v8;
                      do
                      {
                        result = NListRangeChecker<SizeAndEndianness<Pointer32,LittleEndian>>::next(&v19);
                        v16 = *(result + 4);
                      }

                      while (v16 == 132);
                      if (v16 == 36)
                      {
                        v17 = *(result + 2);
                        v12 = v20;
                        v11 = v21;
                        if (v21 >= v20)
                        {
                          break;
                        }

                        result = NListRangeChecker<SizeAndEndianness<Pointer32,LittleEndian>>::next(&v19);
                        if (result[4] == 78)
                        {
                          CSCppStringCache::intern((a2 + 96), &v10[v13]);
                        }
                      }
                    }

LABEL_28:
                    v12 = v20;
                    v11 = v21;
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v12 = v20;
        v11 = v21;
      }
    }

    while (v11 < v12);
  }

  return result;
}

__n128 __Block_byref_object_copy__267(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t NListRangeChecker<SizeAndEndianness<Pointer32,LittleEndian>>::next(uint64_t *a1)
{
  v1 = *(a1 + 3);
  if (v1 >= *(a1 + 2))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "out of range index into nlist array", 35);
    std::ostringstream::str[abi:ne200100](v7, &v6);
    Exception::Exception(v5, &v6);
    exception = __cxa_allocate_exception(0x20uLL);
    Exception::Exception(exception, v5);
  }

  v2 = *a1;
  *(a1 + 3) = v1 + 1;
  return v2 + 12 * v1;
}

void sub_1D975A2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  Exception::~Exception(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a19);
  _Unwind_Resume(a1);
}

uint64_t ___Z30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer3212LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS5_4SIZEEEPK6TNListIS5_Ej6TRangeIS9_E_block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(*(*(*(a1 + 32) + 8) + 24) + 8);
  result = CSSymbolOwnerGetLastModifiedTimestamp(a2, a3);
  v8 = result - v6;
  if (v6 > result)
  {
    v8 = v6 - result;
  }

  if (v6)
  {
    v9 = v8 > 5;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = MEMORY[0x1E69E9C10];
    while (1)
    {
      while (1)
      {
        result = NListRangeChecker<SizeAndEndianness<Pointer32,LittleEndian>>::next((*(*(a1 + 40) + 8) + 40));
        *(*(*(a1 + 32) + 8) + 24) = result;
        v11 = *(*(*(*(a1 + 32) + 8) + 24) + 4);
        if (v11 == 46)
        {
          break;
        }

        if (v11 == 100)
        {
          goto LABEL_20;
        }
      }

      result = NListRangeChecker<SizeAndEndianness<Pointer32,LittleEndian>>::next((*(*(a1 + 40) + 8) + 40));
      *(*(*(a1 + 32) + 8) + 24) = result;
      v12 = *(*(*(a1 + 32) + 8) + 24);
      if (*(v12 + 4) != 36)
      {
        break;
      }

      v13 = v12[2];
      v14 = *(a1 + 88);
      if (!*(*(a1 + 64) + *v12))
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v15 = *(*(a1 + 72) + 40);
          *buf = 136315138;
          v21 = v15;
          _os_log_impl(&dword_1D96E9000, v10, OS_LOG_TYPE_ERROR, "Empty function_name in mach-o header: %s\n", buf, 0xCu);
        }

        fprintf(*MEMORY[0x1E69E9848], "Empty function_name in mach-o header: %s\n", *(*(a1 + 72) + 40));
      }

      do
      {
        result = NListRangeChecker<SizeAndEndianness<Pointer32,LittleEndian>>::next((*(*(a1 + 40) + 8) + 40));
        *(*(*(a1 + 32) + 8) + 24) = result;
        v16 = *(*(*(*(a1 + 32) + 8) + 24) + 4);
      }

      while (v16 == 132);
      if (v16 != 36)
      {
        break;
      }

      result = NListRangeChecker<SizeAndEndianness<Pointer32,LittleEndian>>::next((*(*(a1 + 40) + 8) + 40));
      *(*(*(a1 + 32) + 8) + 24) = result;
      if (*(*(*(*(a1 + 32) + 8) + 24) + 4) != 78)
      {
        break;
      }

      v19 = *(a1 + 80);
      v18 = *(a1 + 48);
      CSSymbolOwnerForeachSymbolWithMangledName(a2, a3);
    }
  }

LABEL_20:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ___Z30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer3212LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS5_4SIZEEEPK6TNListIS5_Ej6TRangeIS9_E_block_invoke_271(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37[4] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 56) - CSSymbolGetRange(a2, a3);
  if (CSSymbolIsKnownLength(a2, a3))
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  if (CSSymbolIsOmitFramePointer(a2, a3))
  {
    v8 = v7 | 0x80;
  }

  else
  {
    v8 = v7;
  }

  if (v8)
  {
    v36 = 0;
    *buf = &unk_1F5506638;
    v29 = v35;
    *(&v30 + 1) = 0;
    HIDWORD(v30) = 0;
    v31 = buf;
    std::__function::__value_func<void ()(TRawSymbol<Pointer32> &,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::swap[abi:ne200100](buf, v35);
    std::__function::__value_func<void ()(TRawSymbol<Pointer32> &,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](buf);
    v9 = CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFF8));
    v10 = (*(*v9 + 24))(v9);
    if ((v10 - 1) >= 2)
    {
      if (v10 == 4)
      {
        v14 = CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFF8));
        v26 = 0;
        if (TMMapSymbolOwnerData::convert_archive_address_to_real_address(v14, *(a3 & 0xFFFFFFFFFFFFFFFCLL), &v26))
        {
          *buf = 0;
          v29 = buf;
          v30 = 0x8802000000;
          v31 = __Block_byref_object_copy__275;
          v32 = __Block_byref_object_dispose__276;
          v15 = *((a3 & 0xFFFFFFFFFFFFFFFCLL) + 4);
          LODWORD(v33) = v6 + v26;
          DWORD1(v33) = v15;
          *(&v33 + 1) = 0;
          LODWORD(v34[0]) = 0;
          v34[1] = "$$$debug-map-fake-name$$$";
          v34[2] = "$$$debug-map-fake-mangled-name$$$";
          v34[9] = 0;
          memset(&v34[3], 0, 41);
          HIDWORD(v34[0]) = v8 | 0x8000000;
          v27[3] = 0;
          operator new();
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not remap archive address to real in debug maps", buf, 2u);
        }

        fwrite("Could not remap archive address to real in debug maps", 0x35uLL, 1uLL, *MEMORY[0x1E69E9848]);
      }
    }

    else
    {
      v11 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      v12 = *((a3 & 0xFFFFFFFFFFFFFFFCLL) + 40);
      if (v12)
      {
        v13 = *(v11 + 48);
        CSCppStringCache::intern(*(*(*(a1 + 32) + 8) + 24), v12);
      }

      v37[0] = 0;
      v37[1] = 0;
      v16 = *v11;
      if ((atomic_load_explicit((v11 + 20), memory_order_acquire) & 0x80000000) != 0)
      {
        v17 = v37;
        if (!*(v11 + 40))
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      *buf = v16;
      v29 = 0;
      v30 = 0;
      v31 = "$$$debug-map-fake-name$$$";
      v32 = "$$$debug-map-fake-mangled-name$$$";
      v34[4] = 0;
      v33 = 0u;
      memset(v34, 0, 25);
      if (v17)
      {
        v33 = *v17;
        v18 = v8 | 0x88000000;
      }

      else
      {
        v18 = v8 | 0x8000000;
      }

      HIDWORD(v30) = v18;
      v19 = *(v11 + 56);
      for (i = *(v11 + 64); v19 != i; v19 += 96)
      {
        if (!v36)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v36 + 48))(v36, v19, v34, *(*(*(a1 + 32) + 8) + 24));
      }

      slideSymbolsByOffset<Pointer32>(buf, v6);
      TRawSymbolOwnerData<Pointer32>::add_symbol(*(a1 + 48), buf);
      v27[0] = v34;
      std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](v27);
    }

    std::__function::__value_func<void ()(TRawSymbol<Pointer32> &,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](v35);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 0x40000000;
  v23[2] = ___Z30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer3212LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS5_4SIZEEEPK6TNListIS5_Ej6TRangeIS9_E_block_invoke_280;
  v23[3] = &unk_1E8583ED8;
  v24 = *(a1 + 32);
  v25 = v6;
  result = CSSymbolForeachSourceInfo(a2, a3, v23);
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D975AAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  std::__function::__value_func<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](v43 + 48);
  std::__function::__value_func<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](&a27);
  _Block_object_dispose(&a31, 8);
  *(v44 - 120) = &a43;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100]((v44 - 120));
  std::__function::__value_func<void ()(TRawSymbol<Pointer32> &,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](v44 - 152);
  _Unwind_Resume(a1);
}

uint64_t slideSymbolsByOffset<Pointer32>(uint64_t result, uint64_t a2)
{
  *result += a2;
  v2 = *(result + 56);
  for (i = *(result + 64); v2 != i; v2 += 96)
  {
    result = slideSymbolsByOffset<Pointer32>(v2, a2);
  }

  return result;
}

uint64_t __Block_byref_object_copy__275(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  v2 = a1 + 40;
  *(v2 + 88) = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 65) = 0u;
  return TRawSymbol<Pointer32>::operator=(v2, a2 + 40);
}

uint64_t ___Z30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer3212LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS5_4SIZEEEPK6TNListIS5_Ej6TRangeIS9_E_block_invoke_277(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(*(*(a1 + 40) + 8) + 24);
  return std::function<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::operator()(a1 + 48, a2);
}

uint64_t std::function<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t ___Z30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer3212LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS5_4SIZEEEPK6TNListIS5_Ej6TRangeIS9_E_block_invoke_280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFF8));
  result = (*(*v6 + 24))(v6);
  if ((result - 1) < 2)
  {
    CSCppStringCache::intern(*(*(*(a1 + 32) + 8) + 24), *((a3 & 0xFFFFFFFFFFFFFFFCLL) + 8));
  }

  if (result == 4)
  {
    v8 = (a3 & 0xFFFFFFFFFFFFFFFCLL);
    v9 = *(CSCppSymbolOwner::data((a2 & 0xFFFFFFFFFFFFFFF8)) + 88);
    v10 = *(*(*(a1 + 32) + 8) + 24);
    v11 = CSCppMMapSourceInfo::path(v8, v9 + 32 * v9[2] + 24 * v9[3] + (24 * v9[4]) + (4 * v9[4]) + (36 * v9[5]) + (20 * v9[6]) + v9[22] + v9[20] + 96);
    CSCppStringCache::intern(v10, v11);
  }

  return result;
}

__n128 _ZNKSt3__110__function6__funcIZZZ30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer3212LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS8_4SIZEEEPK6TNListIS8_Ej6TRangeISC_EEUb_EUb_EUlR10TRawSymbolIS4_ERNS_6vectorISM_NS_9allocatorISM_EEEER16CSCppStringCacheE_NSP_ISV_EEFvSN_SS_SU_EE7__cloneEPNS0_6__baseISX_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5506638;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void _ZNSt3__110__function6__funcIZZZ30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer3212LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS8_4SIZEEEPK6TNListIS8_Ej6TRangeISC_EEUb_EUb_EUlR10TRawSymbolIS4_ERNS_6vectorISM_NS_9allocatorISM_EEEER16CSCppStringCacheE_NSP_ISV_EEFvSN_SS_SU_EEclESN_SS_SU_(int a1, uint64_t a2, int a3, CSCppStringCache *this)
{
  v6 = *(a2 + 40);
  if (v6)
  {
    v7 = *(a2 + 48);
    CSCppStringCache::intern(this, v6);
  }

  atomic_load_explicit((a2 + 20), memory_order_acquire);
  v8 = *a2;
  v9 = TRawSymbol<Pointer32>::_resolve_mangled_name<TRawSymbol<Pointer32>::EphemeralMangledName>(a2);
  CSCppStringCache::intern(this, v9);
}

void sub_1D975B1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  a22 = &a17;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZ30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer3212LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS8_4SIZEEEPK6TNListIS8_Ej6TRangeISC_EEUb_EUb_EUlR10TRawSymbolIS4_ERNS_6vectorISM_NS_9allocatorISM_EEEER16CSCppStringCacheE_NSP_ISV_EEFvSN_SS_SU_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZ30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer3212LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS5_4SIZEEEPK6TNListIS5_Ej6TRangeIS9_EEUb_EUb_EUlR10TRawSymbolIS1_ERNSt3__16vectorISJ_NSL_9allocatorISJ_EEEER16CSCppStringCacheE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t TRawSymbol<Pointer32>::_resolve_mangled_name<TRawSymbol<Pointer32>::EphemeralMangledName>(uint64_t a1)
{
  if (atomic_load_explicit((a1 + 20), memory_order_acquire) != 2048 && (atomic_load_explicit((a1 + 20), memory_order_acquire) & 0x400000) == 0)
  {
    v2[0] = 0;
    v2[1] = v2;
    v2[2] = 0x2000000000;
    operator new();
  }

  return *(a1 + 32);
}

atomic_uint *volatile *___ZN10TRawSymbolI9Pointer32E21_resolve_mangled_nameINS1_20EphemeralMangledNameEEEPKcT__block_invoke(atomic_uint *volatile *result)
{
  v1 = *(result + 5);
  v2 = (v1 + 20);
  if ((atomic_load_explicit((v1 + 20), memory_order_acquire) & 0x400000) != 0)
  {
    return result;
  }

  v3 = result;
  explicit = atomic_load_explicit(v2, memory_order_acquire);
  v5 = atomic_load_explicit(v2, memory_order_acquire);
  if ((explicit & 0x80000) != 0)
  {
    v6 = 0x400000;
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    v7 = "DYLD-STUB$$";
LABEL_11:
    *(v1 + 88) = v7;
    goto LABEL_12;
  }

  if ((v5 & 0x100000) != 0 || (atomic_load_explicit((v1 + 20), memory_order_acquire) & 0x200000) != 0)
  {
    is_objc_method_internal = TRawSymbol<Pointer32>::is_objc_method_internal(v1, *(v1 + 32));
    v6 = is_objc_method_internal | 0x400000;
    if ((is_objc_method_internal & 4) != 0)
    {
      goto LABEL_12;
    }

    v7 = "_";
    goto LABEL_11;
  }

  v6 = 0x400000;
LABEL_12:
  v9 = *(*(*(v3 + 4) + 8) + 24);

  return CSCppBitLock::set_bits(v9, v6);
}

atomic_uint *volatile *___ZN10TRawSymbolI9Pointer32E21_resolve_mangled_nameINS1_20EphemeralMangledNameEEEPKcT__block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result)
  {
    CSCppBitLock::~CSCppBitLock(result);
    result = MEMORY[0x1DA736760]();
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

void *std::__function::__value_func<void ()(TRawSymbol<Pointer32> &,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D975B720(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

__n128 _ZNKSt3__110__function6__funcIZZZ30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer3212LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS8_4SIZEEEPK6TNListIS8_Ej6TRangeISC_EEUb_EUb_EUlP22CSCppMMapInlinedSymbolRNS_6vectorI10TRawSymbolIS4_ENS_9allocatorISP_EEEER16CSCppStringCacheE_NSQ_ISW_EEFvSM_ST_SV_EE7__cloneEPNS0_6__baseISY_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F55066C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

size_t _ZNSt3__110__function6__funcIZZZ30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer3212LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS8_4SIZEEEPK6TNListIS8_Ej6TRangeISC_EEUb_EUb_EUlP22CSCppMMapInlinedSymbolRNS_6vectorI10TRawSymbolIS4_ENS_9allocatorISP_EEEER16CSCppStringCacheE_NSQ_ISW_EEFvSM_ST_SV_EEclEOSM_ST_SV_(uint64_t a1, uint64_t *a2, int a3, CSCppStringCache *this)
{
  v6 = *a2;
  v7 = *(a1 + 16);
  v8 = *(v7 + 11);
  v9 = v8 + 32 * v8[2] + 24 * v8[3] + (24 * v8[4]) + (4 * v8[4]) + (36 * v8[5]) + (20 * v8[6]) + v8[22] + v8[20] + 96;
  if ((*(*a2 + 8) & 0x80000000) != 0)
  {
    v10 = *(v6 + 6);
    if (v9 + v10)
    {
      CSCppStringCache::intern(this, (v9 + v10));
    }
  }

  v11 = *v6;
  v22 = *(v6 + 2);
  v21 = v11;
  v20 = 0;
  if (TMMapSymbolOwnerData::convert_archive_address_to_real_address(v7, v11, &v20))
  {
    if (HIDWORD(v21))
    {
      v12 = (v9 + HIDWORD(v21));
    }

    else
    {
      v12 = (v9 + v22);
    }

    *buf = 0;
    v16 = buf;
    v17 = 0x8802000000;
    v18 = __Block_byref_object_copy__275;
    v19 = __Block_byref_object_dispose__276;
    v13 = (*(a1 + 24) + v20);
    CSCppStringCache::intern(this, v12);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not remap archive address to real in debug maps inline enumeration", buf, 2u);
  }

  return fwrite("Could not remap archive address to real in debug maps inline enumeration", 0x48uLL, 1uLL, *MEMORY[0x1E69E9848]);
}

void sub_1D975BB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  _Block_object_dispose(&a21, 8);
  *(v33 - 104) = &a33;
  std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100]((v33 - 104));
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZ30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer3212LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS8_4SIZEEEPK6TNListIS8_Ej6TRangeISC_EEUb_EUb_EUlP22CSCppMMapInlinedSymbolRNS_6vectorI10TRawSymbolIS4_ENS_9allocatorISP_EEEER16CSCppStringCacheE_NSQ_ISW_EEFvSM_ST_SV_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZ30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer3212LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS5_4SIZEEEPK6TNListIS5_Ej6TRangeIS9_EEUb_EUb_EUlP22CSCppMMapInlinedSymbolRNSt3__16vectorI10TRawSymbolIS1_ENSK_9allocatorISN_EEEER16CSCppStringCacheE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ___ZZZZ30extract_debug_maps_from_headerI17SizeAndEndiannessI9Pointer3212LittleEndianEEvR20TExtendedMachOHeaderIT_ER19TRawSymbolOwnerDataINS5_4SIZEEEPK6TNListIS5_Ej6TRangeIS9_EEUb_EUb_ENKUlP22CSCppMMapInlinedSymbolRNSt3__16vectorI10TRawSymbolIS1_ENSK_9allocatorISN_EEEER16CSCppStringCacheE_clESJ_SR_ST__block_invoke(void *a1, uint64_t a2)
{
  v2 = *(a1[4] + 8);
  v3 = a1[6];
  return std::function<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::operator()(a1[5], a2);
}

void *std::__function::__value_func<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D975BE18(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(CSCppMMapInlinedSymbol *,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(TRawSymbol<Pointer32> &,std::vector<TRawSymbol<Pointer32>> &,CSCppStringCache &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::vector<TRangeValue<Pointer32,char const*>>::emplace_back<unsigned int &,unsigned int &,char const*>(const void **a1, _DWORD *a2, int *a3, uint64_t *a4)
{
  v7 = a1[1];
  v8 = a1[2];
  if (v7 >= v8)
  {
    v12 = *a1;
    v13 = v7 - *a1;
    v14 = v13 >> 4;
    v15 = (v13 >> 4) + 1;
    if (v15 >> 60)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
    }

    v16 = v8 - v12;
    if (v16 >> 3 > v15)
    {
      v15 = v16 >> 3;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      std::allocator<TRangeValue<Pointer32,char const*>>::allocate_at_least[abi:ne200100](a1, v15);
    }

    v17 = 16 * v14;
    v18 = *a3;
    v19 = *a4;
    *v17 = *a2;
    *(v17 + 4) = v18;
    *(v17 + 8) = v19;
    v11 = 16 * v14 + 16;
    memcpy(0, v12, v13);
    v20 = *a1;
    *a1 = 0;
    a1[1] = v11;
    a1[2] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v9 = *a3;
    v10 = *a4;
    *v7 = *a2;
    *(v7 + 1) = v9;
    *(v7 + 1) = v10;
    v11 = (v7 + 16);
  }

  a1[1] = v11;
  return v11 - 16;
}

void sort_inlined_functions<Pointer32>(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 5));
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSymbol<Pointer32> *,false>(v2, v3, &v8, v5, 1);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  while (v6 != v7)
  {
    sort_inlined_functions<Pointer32>(v6);
    v6 += 96;
  }
}

uint64_t std::vector<TRawSymbol<Pointer32>>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        TRawSymbol<Pointer32>::operator=(v7, v4);
        v4 += 96;
        v7 += 96;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    for (; v6 != v7; v6 -= 96)
    {
      v9 = (v6 - 40);
      std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v9);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

uint64_t std::remove_if[abi:ne200100]<std::__wrap_iter<TRawSymbol<Pointer32> *>,std::__mem_fn<BOOL const (TRawSymbol<Pointer32>::*)(void)const>>(uint64_t a1, uint64_t a2, unsigned __int8 (*a3)(uint64_t), uint64_t a4)
{
  v4 = a2;
  if (a1 != a2)
  {
    v6 = a4;
    v9 = a4 >> 1;
    v10 = a3;
    v4 = a1;
    while (1)
    {
      v11 = (v6 & 1) != 0 ? (*(*(v4 + v9) + v10))(v4 + v9) : a3(v4 + v9);
      if (v11)
      {
        break;
      }

      v4 += 96;
      if (v4 == a2)
      {
        v4 = a2;
        break;
      }
    }

    if (v4 != a2)
    {
      for (i = v4 + 96; i != a2; i += 96)
      {
        if (v6)
        {
          v13 = (*(*(i + v9) + v10))(i + v9);
        }

        else
        {
          v13 = a3(i + v9);
        }

        if ((v13 & 1) == 0)
        {
          TRawSymbol<Pointer32>::operator=(v4, i);
          v4 += 96;
        }
      }
    }
  }

  return v4;
}

void *std::vector<TRawSymbol<Pointer32>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0x2AAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::allocator<TRawSymbol<Pointer32>>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1D975C3EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TRawSymbol<Pointer32>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

_OWORD *std::remove_if[abi:ne200100]<std::__wrap_iter<TRawSourceInfo<Pointer32> *>,std::__mem_fn<BOOL const (TRawSourceInfo<Pointer32>::*)(void)const>>(_OWORD *a1, _OWORD *a2, unsigned __int8 (*a3)(char *), uint64_t a4)
{
  v4 = a2;
  if (a1 != a2)
  {
    v6 = a4;
    v9 = a4 >> 1;
    v10 = a3;
    v4 = a1;
    while (1)
    {
      v11 = (v6 & 1) != 0 ? (*(*(v4 + v9) + v10))(v4 + v9) : a3(v4 + v9);
      if (v11)
      {
        break;
      }

      v4 += 2;
      if (v4 == a2)
      {
        v4 = a2;
        break;
      }
    }

    if (v4 != a2)
    {
      for (i = v4 + 2; i != a2; i += 2)
      {
        if (v6)
        {
          v13 = (*(*(i + v9) + v10))(i + v9);
        }

        else
        {
          v13 = a3(i + v9);
        }

        if ((v13 & 1) == 0)
        {
          v14 = *i;
          *(v4 + 12) = *(i + 12);
          *v4 = v14;
          v4 += 2;
        }
      }
    }
  }

  return v4;
}

void *std::vector<TRangeValue<Pointer32,char const*>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      std::allocator<TRangeValue<Pointer32,char const*>>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<TRawSymbol<Pointer32>>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer32>*>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer32>*>>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 5)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 5)) >= a5)
      {
        v19 = 3 * a5;
        std::vector<TRawSymbol<Pointer32>>::__move_range(a1, a2, a1[1], a2 + 96 * a5);
        v20 = v7 + 32 * v19;
        v21 = v5;
        do
        {
          TRawSymbol<Pointer32>::operator=(v21, v7);
          v7 += 96;
          v21 += 96;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = v16 + a3;
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<TRawSymbol<Pointer32>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer32>*>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer32>*>>,TRawSymbol<Pointer32>*>(a1, v16 + a3, a4, a1[1]);
        if (v16 >= 1)
        {
          std::vector<TRawSymbol<Pointer32>>::__move_range(a1, v5, v10, v5 + 96 * a5);
          v18 = v5;
          do
          {
            TRawSymbol<Pointer32>::operator=(v18, v7);
            v7 += 96;
            v18 += 96;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 5);
      if (v12 > 0x2AAAAAAAAAAAAAALL)
      {
        std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 5);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x155555555555555)
      {
        v15 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v26[4] = a1;
      if (v15)
      {
        std::allocator<TRawSymbol<Pointer32>>::allocate_at_least[abi:ne200100](a1, v15);
      }

      v22 = (32 * (v13 >> 5));
      v26[0] = 0;
      v26[1] = v22;
      v26[3] = 0;
      v23 = &v22[12 * a5];
      v24 = 96 * a5;
      do
      {
        v22[11] = 0;
        v22[1] = 0;
        v22[2] = 0;
        *v22 = 0;
        *(v22 + 5) = 0u;
        *(v22 + 7) = 0u;
        *(v22 + 65) = 0u;
        TRawSymbol<Pointer32>::operator=(v22, v7);
        v22 += 12;
        v7 += 96;
        v24 -= 96;
      }

      while (v24);
      v26[2] = v23;
      v5 = std::vector<TRawSymbol<Pointer32>>::__swap_out_circular_buffer(a1, v26, v5);
      std::__split_buffer<TRawSymbol<Pointer32>>::~__split_buffer(v26);
    }
  }

  return v5;
}

uint64_t std::vector<TRawSymbol<Pointer32>>::__move_range(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(result + 8);
  v8 = a2 + v7 - a4;
  if (v8 >= a3)
  {
    v10 = *(result + 8);
  }

  else
  {
    v10 = *(result + 8);
    do
    {
      *(v10 + 88) = 0;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      *v10 = 0;
      *(v10 + 40) = 0u;
      *(v10 + 56) = 0u;
      *(v10 + 65) = 0u;
      result = TRawSymbol<Pointer32>::operator=(v10, v8);
      v8 += 96;
      v10 += 96;
    }

    while (v8 < a3);
  }

  *(v6 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 96;
    v12 = a4 - v7;
    v13 = a2 + v7 - 96 - a4;
    do
    {
      result = TRawSymbol<Pointer32>::operator=(v11, v13);
      v11 -= 96;
      v13 -= 96;
      v12 += 96;
    }

    while (v12);
  }

  return result;
}

uint64_t std::vector<TRawSymbol<Pointer32>>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TRawSymbol<Pointer32>>,TRawSymbol<Pointer32>*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TRawSymbol<Pointer32>>,TRawSymbol<Pointer32>*>(a1, v7, a3, v9);
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

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<TRawSymbol<Pointer32>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer32>*>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer32>*>>,TRawSymbol<Pointer32>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *(v4 + 88) = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *v4 = 0;
      *(v4 + 40) = 0u;
      *(v4 + 56) = 0u;
      *(v4 + 65) = 0u;
      TRawSymbol<Pointer32>::operator=(v4, v6);
      v6 += 96;
      v4 = v11 + 96;
      v11 += 96;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TRawSymbol<Pointer32>>,TRawSymbol<Pointer32>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t *std::__merge[abi:ne200100]<std::__less<void,void> &,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer32> *>>,std::move_iterator<std::__wrap_iter<TRawSymbol<Pointer32> *>>,std::back_insert_iterator<std::vector<TRawSymbol<Pointer32>>>>(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, uint64_t *a5)
{
  if (a1 == a2)
  {
LABEL_10:
    while (a3 != a4)
    {
      std::vector<TRawSymbol<Pointer32>>::push_back[abi:ne200100](a5, a3);
      a3 += 24;
    }
  }

  else
  {
    v9 = a1;
    while (a3 != a4)
    {
      if (*a3 >= *v9)
      {
        std::vector<TRawSymbol<Pointer32>>::push_back[abi:ne200100](a5, v9);
        v9 += 24;
      }

      else
      {
        std::vector<TRawSymbol<Pointer32>>::push_back[abi:ne200100](a5, a3);
        a3 += 24;
      }

      if (v9 == a2)
      {
        goto LABEL_10;
      }
    }

    while (v9 != a2)
    {
      std::vector<TRawSymbol<Pointer32>>::push_back[abi:ne200100](a5, v9);
      v9 += 24;
    }
  }

  return a5;
}

void std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSourceInfo<Pointer32> *>,std::__less<void,void>>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 5;
  if (v6 < 129)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69E5398];
    v8 = (a2 - a1) >> 5;
    while (1)
    {
      v9 = operator new(32 * v8, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(a1, a2, a3, v6, v12, v8);
  if (v12)
  {

    operator delete(v12);
  }
}

void sub_1D975CBB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(__int128 *a1, __int128 *a2, uint64_t a3, unint64_t a4, __int128 *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v8 = a2 - 2;
      if (*(a2 - 8) < *a1)
      {
        *v18 = *a1;
        v9 = *a1;
        *&v18[16] = a1[1];
        v10 = *(a2 - 20);
        *a1 = *v8;
        *(a1 + 12) = v10;
        *v8 = v9;
        *(a2 - 20) = *&v18[12];
      }
    }

    else if (a4 > 128)
    {
      v15 = a4 >> 1;
      v16 = &a1[2 * (a4 >> 1)];
      v17 = a4 >> 1;
      if (a4 <= a6)
      {
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(a1, v16, a3, v17, a5);
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(&a1[2 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), &a5[2 * v15]);

        std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer32> *,TRawSourceInfo<Pointer32> *,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(a5, &a5[2 * v15], &a5[2 * v15], &a5[2 * a4], a1);
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(a1, v16, a3, v17, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(&a1[2 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(a1, &a1[2 * (a4 >> 1)], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6);
      }
    }

    else
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(a1, a2);
    }
  }
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(uint64_t result, unsigned int *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v2 = (result + 32);
    if ((result + 32) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *v2;
        if (v6 < *v4)
        {
          *v11 = *(v4 + 9);
          *&v11[12] = *(v4 + 3);
          v7 = v3;
          while (1)
          {
            v8 = result + v7;
            *(v8 + 32) = *(result + v7);
            *(v8 + 44) = *(result + v7 + 12);
            if (!v7)
            {
              break;
            }

            v7 -= 32;
            if (v6 >= *(v8 - 32))
            {
              v9 = result + v7 + 32;
              goto LABEL_10;
            }
          }

          v9 = result;
LABEL_10:
          *v9 = v6;
          *(v9 + 4) = *v11;
          *(v9 + 20) = *&v11[16];
        }

        v2 = v5 + 8;
        v3 += 32;
        v4 = v5;
      }

      while (v5 + 8 != a2);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

__int128 *std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(__int128 *result, __int128 *a2, uint64_t a3, unint64_t a4, __int128 *a5)
{
  if (a4)
  {
    v8 = result;
    if (a4 == 2)
    {
      v10 = a2 - 2;
      if (*(a2 - 8) >= *result)
      {
        v15 = result[1];
        *a5 = *result;
        a5[1] = v15;
        v12 = *v10;
        v13 = *(a2 - 1);
      }

      else
      {
        v11 = *(a2 - 1);
        *a5 = *v10;
        a5[1] = v11;
        v12 = *result;
        v13 = result[1];
      }

      a5[2] = v12;
      a5[3] = v13;
    }

    else if (a4 == 1)
    {
      v9 = result[1];
      *a5 = *result;
      a5[1] = v9;
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(result, &result[2 * (a4 >> 1)], a3, a4 >> 1, a5, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(&v8[2 * (a4 >> 1)], a2, a3, a4 - (a4 >> 1), &a5[2 * (a4 >> 1)], a4 - (a4 >> 1));

      return std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer32> *>,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(v8, &v8[2 * (a4 >> 1)], &v8[2 * (a4 >> 1)], a2, a5);
    }

    else
    {

      return std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(result, a2, a5);
    }
  }

  return result;
}

__int128 *std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer32> *,TRawSourceInfo<Pointer32> *,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(__int128 *result, __int128 *a2, __int128 *a3, __int128 *a4, _OWORD *a5)
{
  while (result != a2)
  {
    if (a3 == a4)
    {
      while (result != a2)
      {
        v8 = *result;
        *(a5 + 12) = *(result + 12);
        *a5 = v8;
        a5 += 2;
        result += 2;
      }

      return result;
    }

    if (*a3 >= *result)
    {
      v6 = *result;
      *(a5 + 12) = *(result + 12);
      *a5 = v6;
      result += 2;
    }

    else
    {
      v5 = *a3;
      *(a5 + 12) = *(a3 + 12);
      *a5 = v5;
      a3 += 2;
    }

    a5 += 2;
  }

  while (a3 != a4)
  {
    v7 = *a3;
    *(a5 + 12) = *(a3 + 12);
    *a5 = v7;
    a5 += 2;
    a3 += 2;
  }

  return result;
}

__n128 std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(__int128 *a1, char *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (a6)
  {
    v9 = a6;
    while (v9 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v12 = 0;
      v13 = -a5;
      while (*a2 >= LODWORD(a1[v12 / 0x10]))
      {
        v12 += 32;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v15 = -v13;
      v41 = a3;
      v42 = a8;
      if (-v13 >= v9)
      {
        if (v13 == -1)
        {
          v39 = &a1[v12 / 0x10];
          *v45 = a1[v12 / 0x10];
          *&v45[16] = a1[v12 / 0x10 + 1];
          v40 = *a2;
          *(v39 + 12) = *(a2 + 12);
          *v39 = v40;
          *a2 = *v45;
          result = *&v45[12];
          *(a2 + 12) = *&v45[12];
          return result;
        }

        v24 = v15 / 2;
        v25 = &a1[2 * (v15 / 2)];
        v17 = a2;
        if (a2 != a3)
        {
          v26 = (a3 - a2) >> 5;
          v17 = a2;
          do
          {
            v27 = v26 >> 1;
            v28 = &v17[32 * (v26 >> 1)];
            v30 = *v28;
            v29 = v28 + 32;
            v26 += ~(v26 >> 1);
            if (v30 < LODWORD(v25[v12 / 0x10]))
            {
              v17 = v29;
            }

            else
            {
              v26 = v27;
            }
          }

          while (v26);
        }

        v16 = (v17 - a2) >> 5;
        v18 = &v25[v12 / 0x10];
      }

      else
      {
        v16 = v9 / 2;
        v17 = &a2[32 * (v9 / 2)];
        v18 = a2;
        if (a2 - a1 != v12)
        {
          v19 = (a2 - a1 - v12) >> 5;
          v18 = &a1[v12 / 0x10];
          do
          {
            v20 = v19 >> 1;
            v21 = &v18[32 * (v19 >> 1)];
            v23 = *v21;
            v22 = v21 + 32;
            v19 += ~(v19 >> 1);
            if (*v17 < v23)
            {
              v19 = v20;
            }

            else
            {
              v18 = v22;
            }
          }

          while (v19);
        }

        v24 = (v18 - a1 - v12) >> 5;
      }

      a5 = -(v24 + v13);
      v31 = v9 - v16;
      v32 = v24;
      v33 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSourceInfo<Pointer32> *>,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(v18, a2, v17);
      v34 = v32;
      v35 = v33;
      if (v34 + v16 >= v9 - (v34 + v16) - v13)
      {
        v38 = v34;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(v33, v17, v41, a4, a5, v31, a7, v42);
        v17 = v18;
        v31 = v16;
        a8 = v42;
        a5 = v38;
        a3 = v35;
        a1 = (a1 + v12);
      }

      else
      {
        v36 = v16;
        a8 = v42;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(&a1[v12 / 0x10], v18, v33, a4, v34, v36, a7, v42);
        a1 = v35;
        a3 = v41;
      }

      v9 = v31;
      a2 = v17;
      if (!v31)
      {
        return result;
      }
    }

    result.n128_u64[0] = std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(a1, a2, a3, a4, a5, v9, a7).n128_u64[0];
  }

  return result;
}

_OWORD *std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(_OWORD *result, _OWORD *a2, _OWORD *a3)
{
  if (result != a2)
  {
    v3 = result[1];
    *a3 = *result;
    a3[1] = v3;
    v4 = result + 2;
    if (result + 2 != a2)
    {
      v5 = 0;
      v6 = a3;
      v7 = a3;
      do
      {
        v8 = *v7;
        v7 += 2;
        if (*v4 >= v8)
        {
          v13 = v4[1];
          *v7 = *v4;
          v7[1] = v13;
        }

        else
        {
          v9 = v6[1];
          *v7 = *v6;
          v7[1] = v9;
          v10 = a3;
          if (v6 != a3)
          {
            v11 = v5;
            while (1)
            {
              v10 = (a3 + v11);
              if (*v4 >= *(a3 + v11 - 32))
              {
                break;
              }

              *v10 = *(a3 + v11 - 32);
              *(v10 + 12) = *(a3 + v11 - 20);
              v11 -= 32;
              if (!v11)
              {
                v10 = a3;
                break;
              }
            }
          }

          v12 = *v4;
          *(v10 + 12) = *(v4 + 12);
          *v10 = v12;
        }

        v4 += 2;
        v5 += 32;
        v6 = v7;
      }

      while (v4 != a2);
    }
  }

  return result;
}

__int128 *std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer32> *>,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(__int128 *result, __int128 *a2, __int128 *a3, __int128 *a4, _OWORD *a5)
{
  while (result != a2)
  {
    if (a3 == a4)
    {
      while (result != a2)
      {
        v9 = *result;
        v10 = result[1];
        result += 2;
        *a5 = v9;
        a5[1] = v10;
        a5 += 2;
      }

      return result;
    }

    if (*a3 >= *result)
    {
      v5 = *result;
      v6 = result[1];
      result += 2;
    }

    else
    {
      v5 = *a3;
      v6 = a3[1];
      a3 += 2;
    }

    *a5 = v5;
    a5[1] = v6;
    a5 += 2;
  }

  while (a3 != a4)
  {
    v7 = *a3;
    v8 = a3[1];
    a3 += 2;
    *a5 = v7;
    a5[1] = v8;
    a5 += 2;
  }

  return result;
}

__n128 std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(__int128 *a1, __int128 *a2, __int128 *a3, int a4, uint64_t a5, uint64_t a6, char *__src)
{
  if (a5 <= a6)
  {
    if (a1 != a2)
    {
      v16 = 4 - __src;
      v17 = __src;
      v18 = a1;
      do
      {
        v19 = *v18;
        v20 = v18[1];
        v18 += 2;
        *v17 = v19;
        *(v17 + 1) = v20;
        v17 += 32;
        v16 -= 32;
      }

      while (v18 != a2);
      while (a2 != a3)
      {
        if (*a2 >= *__src)
        {
          result = *__src;
          *(a1 + 12) = *(__src + 12);
          *a1 = result;
          __src += 32;
        }

        else
        {
          result = *a2;
          *(a1 + 12) = *(a2 + 12);
          *a1 = result;
          a2 += 2;
        }

        a1 += 2;
        if (v17 == __src)
        {
          return result;
        }
      }

      memmove(a1, __src, -&__src[v16]);
    }
  }

  else if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = &__src[v7 * 16];
      result = a2[v7];
      v10 = a2[v7 + 1];
      *v8 = result;
      *(v8 + 1) = v10;
      v7 += 2;
    }

    while (&a2[v7] != a3);
    v11 = &__src[v7 * 16];
    while (a2 != a1)
    {
      v12 = v11[-2].n128_u32[0];
      v13 = *(a2 - 8);
      v14 = v12 >= v13;
      if (v12 >= v13)
      {
        v15 = &v11[-2];
      }

      else
      {
        v15 = (a2 - 2);
      }

      result = *v15;
      *(a3 - 20) = *(v15 + 12);
      *(a3 - 2) = result;
      a3 -= 2;
      if (v14)
      {
        v11 -= 2;
      }

      else
      {
        a2 -= 2;
      }

      if (v11 == __src)
      {
        return result;
      }
    }

    if (v11 != __src)
    {
      v21 = 0xFFFFFFFFFFFFFFELL;
      do
      {
        result = v11[-2];
        v22 = *(&v11[-2] + 12);
        v23 = &v11[-2];
        v24 = &a3[v21];
        *(v24 + 12) = v22;
        *v24 = result;
        v21 -= 2;
        v11 = v23;
      }

      while (v23 != __src);
    }
  }

  return result;
}

char *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSourceInfo<Pointer32> *>,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(char *__src, char *a2, char *a3)
{
  v3 = a3;
  if (__src != a2)
  {
    v5 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 32 == a2)
    {
      *v7 = *__src;
      *&v7[16] = *(__src + 1);
      memmove(__src, __src + 32, v5 - 4);
      v3 = &__src[v5];
      *v3 = *v7;
      *(v3 + 12) = *&v7[12];
    }

    else if (a2 + 32 == a3)
    {
      v3 = __src + 32;
      *v8 = *(a3 - 2);
      *&v8[16] = *(a3 - 1);
      if (a3 - 32 != __src)
      {
        memmove(__src + 32, __src, a3 - 32 - __src - 4);
      }

      *__src = *v8;
      *(__src + 12) = *&v8[12];
    }

    else
    {
      return std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(__src, a2, a3);
    }
  }

  return v3;
}

char *std::__rotate_gcd[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<TRawSourceInfo<Pointer32> *>>(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 5;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 5)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 32;
      v6 = a2 + 32;
      do
      {
        *v25 = *(v5 - 2);
        *&v25[16] = *(v5 - 1);
        v7 = *(v6 - 20);
        *(v5 - 2) = *(v6 - 2);
        *(v5 - 20) = v7;
        *(v6 - 2) = *v25;
        *(v6 - 20) = *&v25[12];
        if (v5 == a2)
        {
          break;
        }

        v5 += 32;
        v8 = v6 == a3;
        v6 += 32;
      }

      while (!v8);
    }
  }

  else
  {
    v9 = v4 >> 5;
    v10 = (a2 - a1) >> 5;
    do
    {
      v11 = v10;
      v10 = v9;
      v9 = v11 % v9;
    }

    while (v9);
    v12 = &a1[32 * v10];
    do
    {
      v13 = *(v12 - 2);
      v14 = *(v12 - 1);
      v12 -= 32;
      *v26 = v13;
      *&v26[16] = v14;
      v15 = &v12[a2 - a1];
      v16 = v12;
      do
      {
        v17 = v15;
        v18 = *v15;
        *(v16 + 12) = *(v15 + 12);
        *v16 = v18;
        v19 = a3 - v15;
        v15 += 32 * v3;
        v20 = __OFSUB__(v3, v19 >> 5);
        v22 = v3 - (v19 >> 5);
        v21 = (v22 < 0) ^ v20;
        v23 = &a1[32 * v22];
        if (!v21)
        {
          v15 = v23;
        }

        v16 = v17;
      }

      while (v15 != v12);
      *(v17 + 12) = *&v26[12];
      *v17 = *v26;
    }

    while (v12 != a1);
    return &a1[v4];
  }

  return a2;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,char const*> *,false>(unsigned int *a1, unsigned int *a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
  v93 = *MEMORY[0x1E69E9840];
LABEL_2:
  v9 = a2 - 4;
  v10 = a2 - 8;
  v11 = a2 - 12;
  v12 = a1;
LABEL_3:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 4;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        goto LABEL_112;
      }

      if (v15 == 2)
      {
        v50 = *(a2 - 4);
        v46 = a2 - 4;
        if (v50 >= *v12)
        {
          goto LABEL_112;
        }

LABEL_78:
        v86 = *v12;
        *v12 = *v46;
        v48 = v86;
        goto LABEL_79;
      }

      goto LABEL_11;
    }

    switch(v15)
    {
      case 3:
        v43 = (v12 + 4);
        v44 = v12[4];
        v47 = *(a2 - 4);
        v46 = a2 - 4;
        v45 = v47;
        if (v44 < *v12)
        {
          if (v45 < v44)
          {
            goto LABEL_78;
          }

          v85 = *v12;
          *v12 = *v43;
          *v43 = v85;
          if (*v46 >= v12[4])
          {
            goto LABEL_112;
          }

          v48 = *v43;
          *v43 = *v46;
LABEL_79:
          *v46 = v48;
          goto LABEL_112;
        }

        if (v45 >= v44)
        {
          goto LABEL_112;
        }

        v57 = *v43;
        *v43 = *v46;
        *v46 = v57;
        goto LABEL_110;
      case 4:
        v43 = (v12 + 4);
        v51 = v12[4];
        v52 = (v12 + 8);
        v53 = v12[8];
        if (v51 >= *v12)
        {
          if (v53 < v51)
          {
            v58 = *v43;
            *v43 = *v52;
            *v52 = v58;
            if (v12[4] < *v12)
            {
              v88 = *v12;
              *v12 = *v43;
              *v43 = v88;
            }
          }
        }

        else
        {
          if (v53 < v51)
          {
            v87 = *v12;
            *v12 = *v52;
            v54 = v87;
            goto LABEL_106;
          }

          v90 = *v12;
          *v12 = *v43;
          *v43 = v90;
          if (v53 < v12[4])
          {
            v54 = *v43;
            *v43 = *v52;
LABEL_106:
            *v52 = v54;
          }
        }

        if (*v9 >= v52->n128_u32[0])
        {
          goto LABEL_112;
        }

        v64 = *v52;
        *v52 = *v9;
        *v9 = v64;
        if (v52->n128_u32[0] >= v43->n128_u32[0])
        {
          goto LABEL_112;
        }

        v65 = *v43;
        *v43 = *v52;
        *v52 = v65;
LABEL_110:
        if (v12[4] < *v12)
        {
          v91 = *v12;
          *v12 = *v43;
          *v43 = v91;
        }

        goto LABEL_112;
      case 5:
        v49 = *MEMORY[0x1E69E9840];

        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,char const*> *,0>(v12, v12 + 1, v12 + 8, v12 + 3, a2 - 1, a6);
        return;
    }

LABEL_11:
    if (v15 <= 23)
    {
      if (a5)
      {
        v55 = *MEMORY[0x1E69E9840];

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,char const*> *>(v12, a2);
        return;
      }

      if (v12 != a2)
      {
        v59 = v12 + 4;
        while (v59 != a2)
        {
          v60 = v59;
          v61 = a1[4];
          if (v61 < *a1)
          {
            v89 = *(a1 + 5);
            v92 = a1[7];
            v62 = v60;
            do
            {
              *v62 = *(v62 - 1);
              v63 = *(v62 - 8);
              v62 -= 4;
            }

            while (v61 < v63);
            *v62 = v61;
            v62[3] = v92;
            *(v62 + 1) = v89;
          }

          v59 = v60 + 4;
          a1 = v60;
        }
      }

LABEL_112:
      v66 = *MEMORY[0x1E69E9840];
      return;
    }

    if (v13 == 1)
    {
      break;
    }

    v16 = &v12[4 * (v15 >> 1)];
    v17 = v16;
    v18 = *v9;
    if (v15 >= 0x81)
    {
      v19 = *v16;
      if (*v16 >= *v12)
      {
        if (v18 < v19)
        {
          v70 = *v16;
          *v16 = *v9;
          *v9 = v70;
          if (*v16 < *v12)
          {
            v71 = *v12;
            *v12 = *v16;
            *v16 = v71;
          }
        }
      }

      else
      {
        if (v18 < v19)
        {
          v68 = *v12;
          *v12 = *v9;
          goto LABEL_28;
        }

        v74 = *v12;
        *v12 = *v16;
        *v16 = v74;
        if (*v9 < *v16)
        {
          v68 = *v16;
          *v16 = *v9;
LABEL_28:
          *v9 = v68;
        }
      }

      v21 = (v12 + 4);
      v22 = v16 - 4;
      v23 = *(v16 - 4);
      v24 = *v10;
      if (v23 >= v12[4])
      {
        if (v24 < v23)
        {
          v75 = *v22;
          *v22 = *v10;
          *v10 = v75;
          if (*v22 < *v21)
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 < v23)
        {
          v25 = *v21;
          *v21 = *v10;
          goto LABEL_40;
        }

        v27 = *v21;
        *v21 = *v22;
        *v22 = v27;
        if (*v10 < *v22)
        {
          v77 = *v22;
          *v22 = *v10;
          v25 = v77;
LABEL_40:
          *v10 = v25;
        }
      }

      v28 = (v12 + 8);
      v31 = v16[4];
      v29 = (v16 + 4);
      v30 = v31;
      v32 = *v11;
      if (v31 >= v12[8])
      {
        if (v32 < v30)
        {
          v78 = *v29;
          *v29 = *v11;
          *v11 = v78;
          if (v29->n128_u32[0] < v28->n128_u32[0])
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 < v30)
        {
          v33 = *v28;
          *v28 = *v11;
          goto LABEL_49;
        }

        v35 = *v28;
        *v28 = *v29;
        *v29 = v35;
        if (*v11 < v29->n128_u32[0])
        {
          v79 = *v29;
          *v29 = *v11;
          v33 = v79;
LABEL_49:
          *v11 = v33;
        }
      }

      v36 = *v17;
      v37 = v29->n128_u32[0];
      if (*v17 >= *v22)
      {
        if (v37 < v36)
        {
          v81 = *v17;
          *v17 = *v29;
          *v29 = v81;
          if (*v17 < *v22)
          {
            v82 = *v22;
            *v22 = *v17;
            *v17 = v82;
          }
        }
      }

      else
      {
        if (v37 < v36)
        {
          v80 = *v22;
          *v22 = *v29;
          goto LABEL_58;
        }

        v83 = *v22;
        *v22 = *v17;
        *v17 = v83;
        if (v29->n128_u32[0] < *v17)
        {
          v80 = *v17;
          *v17 = *v29;
LABEL_58:
          *v29 = v80;
        }
      }

      v84 = *v12;
      *v12 = *v17;
      *v17 = v84;
      goto LABEL_60;
    }

    v20 = *v12;
    if (*v12 >= *v17)
    {
      if (v18 < v20)
      {
        v72 = *v12;
        *v12 = *v9;
        *v9 = v72;
        if (*v12 < *v17)
        {
          v73 = *v17;
          *v17 = *v12;
          *v12 = v73;
        }
      }
    }

    else
    {
      if (v18 < v20)
      {
        v69 = *v17;
        *v17 = *v9;
LABEL_37:
        *v9 = v69;
        goto LABEL_60;
      }

      v76 = *v17;
      *v17 = *v12;
      *v12 = v76;
      if (*v9 < *v12)
      {
        v69 = *v12;
        *v12 = *v9;
        goto LABEL_37;
      }
    }

LABEL_60:
    if ((a5 & 1) == 0 && *(v12 - 4) >= *v12)
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TRangeValue<Pointer32,char const*> *,std::__less<void,void> &>(v12, a2);
      goto LABEL_67;
    }

    v38 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TRangeValue<Pointer32,char const*> *,std::__less<void,void> &>(v12, a2);
    if ((v40 & 1) == 0)
    {
      goto LABEL_65;
    }

    v41 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,char const*> *>(v12, v38, v39);
    v12 = (v38 + 16);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,char const*> *>(v38 + 16, a2, v42))
    {
      a4 = -v14;
      a2 = v38;
      if (v41)
      {
        goto LABEL_112;
      }

      goto LABEL_2;
    }

    v13 = v14 + 1;
    if (!v41)
    {
LABEL_65:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,char const*> *,false>(a1, v38, a3, -v14, a5 & 1);
      v12 = (v38 + 16);
LABEL_67:
      a5 = 0;
      a4 = -v14;
      goto LABEL_3;
    }
  }

  if (v12 == a2)
  {
    goto LABEL_112;
  }

  v56 = *MEMORY[0x1E69E9840];

  std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,char const*> *,TRangeValue<Pointer32,char const*> *>(v12, a2, a2, a3);
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,char const*> *,0>(__n128 *a1, __n128 *a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u32[0];
  v7 = *a3;
  if (a2->n128_u32[0] >= a1->n128_u32[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < a2->n128_u32[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < a2->n128_u32[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[0] < a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 < a2->n128_u32[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u32[0] < a1->n128_u32[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,char const*> *>(uint64_t result, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v2 = result + 16;
    if (result + 16 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 16);
        if (v6 < *v4)
        {
          v11 = *(v4 + 20);
          v12 = *(v4 + 28);
          v7 = v3;
          while (1)
          {
            *(result + v7 + 16) = *(result + v7);
            if (!v7)
            {
              break;
            }

            v8 = *(result + v7 - 16);
            v7 -= 16;
            if (v6 >= v8)
            {
              v9 = result + v7 + 16;
              goto LABEL_10;
            }
          }

          v9 = result;
LABEL_10:
          *v9 = v6;
          *(v9 + 4) = v11;
          *(v9 + 12) = v12;
        }

        v2 = v5 + 16;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 16 != a2);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TRangeValue<Pointer32,char const*> *,std::__less<void,void> &>(unsigned int *a1, unsigned int *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v12 = *(a1 + 1);
  v13 = a1[3];
  if (*a1 >= *(a2 - 4))
  {
    v5 = a1 + 4;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 += 4;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[4];
      v3 += 4;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 4);
      a2 -= 4;
    }

    while (v2 < v6);
  }

  while (v3 < a2)
  {
    v11 = *v3;
    *v3 = *a2;
    *a2 = v11;
    do
    {
      v7 = v3[4];
      v3 += 4;
    }

    while (v2 >= v7);
    do
    {
      v8 = *(a2 - 4);
      a2 -= 4;
    }

    while (v2 < v8);
  }

  if (v3 - 4 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 4) = v2;
  *(v3 - 1) = v13;
  *(v3 - 3) = v12;
  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TRangeValue<Pointer32,char const*> *,std::__less<void,void> &>(int *a1, _OWORD *a2)
{
  v2 = 0;
  v17 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v15 = *(a1 + 1);
  v16 = a1[3];
  do
  {
    v4 = a1[v2 + 4];
    v2 += 4;
  }

  while (v4 < v3);
  v5 = &a1[v2];
  if (v2 == 4)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v7 = *(a2-- - 4);
    }

    while (v7 >= v3);
  }

  else
  {
    do
    {
      v6 = *(a2-- - 4);
    }

    while (v6 >= v3);
  }

  v8 = &a1[v2];
  if (v5 < a2)
  {
    v9 = a2;
    do
    {
      v10 = *v8;
      *v8 = *v9;
      *v9 = v10;
      do
      {
        v11 = *(v8 + 16);
        v8 += 16;
      }

      while (v11 < v3);
      do
      {
        v12 = *(v9-- - 4);
      }

      while (v12 >= v3);
    }

    while (v8 < v9);
  }

  if ((v8 - 16) != a1)
  {
    *a1 = *(v8 - 16);
  }

  *(v8 - 16) = v3;
  *(v8 - 4) = v16;
  *(v8 - 12) = v15;
  v13 = *MEMORY[0x1E69E9840];
  return v8 - 16;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,char const*> *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v9 = *(a2 - 16);
      v4 = (a2 - 16);
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (v4->n128_u32[0] >= *(a1 + 16))
          {
            goto LABEL_52;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        goto LABEL_52;
      }

      if (v8 >= v7)
      {
        goto LABEL_52;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*(a1 + 16) < *a1)
      {
        v40 = *a1;
        *a1 = *v6;
        *v6 = v40;
      }

      goto LABEL_52;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,char const*> *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), (a2 - 16), a3);
LABEL_52:
      result = 1;
      goto LABEL_53;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = (a2 - 16);
    v21 = *a1;
    if (v17 >= *a1)
    {
      if (v19 < v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_u32[0] < v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 >= v17)
    {
      v37 = *a1;
      *a1 = *v6;
      *v6 = v37;
      if (v19 >= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (v20->n128_u32[0] >= v18->n128_u32[0])
    {
      goto LABEL_52;
    }

    v38 = *v18;
    *v18 = *v20;
    *v20 = v38;
    if (v18->n128_u32[0] >= v6->n128_u32[0])
    {
      goto LABEL_52;
    }

    v39 = *v6;
    *v6 = *v18;
    *v18 = v39;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    goto LABEL_52;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 16);
    v4 = (a2 - 16);
    if (v5 >= *a1)
    {
      goto LABEL_52;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 >= *a1)
  {
    if (v12 < v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_u32[0] < v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 >= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 >= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = a1 + 48;
  if (a1 + 48 == a2)
  {
    goto LABEL_52;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *v30;
    if (*v30 < v11->n128_u32[0])
    {
      v43 = *(v30 + 4);
      v44 = *(v30 + 12);
      v34 = v31;
      while (1)
      {
        *(a1 + v34 + 48) = *(a1 + v34 + 32);
        if (v34 == -32)
        {
          break;
        }

        v35 = *(a1 + v34 + 16);
        v34 -= 16;
        if (v33 >= v35)
        {
          v36 = a1 + v34 + 48;
          goto LABEL_41;
        }
      }

      v36 = a1;
LABEL_41:
      *v36 = v33;
      *(v36 + 4) = v43;
      *(v36 + 12) = v44;
      if (++v32 == 8)
      {
        break;
      }
    }

    v11 = v30;
    v31 += 16;
    v30 += 16;
    if (v30 == a2)
    {
      goto LABEL_52;
    }
  }

  result = v30 + 16 == a2;
LABEL_53:
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,char const*> *,TRangeValue<Pointer32,char const*> *>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[4 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,char const*> *>(a1, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*v12 < *a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,char const*> *>(a1, a4, v8, a1);
        }

        v12 += 4;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v23 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[4 * v14];
          v17 = v16 + 4;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v20 = v16[8];
            v19 = v16 + 8;
            if (*(v19 - 4) >= v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 4;
        if (v17 == v6)
        {
          *v17 = v23;
        }

        else
        {
          *v17 = *v6;
          *v6 = v23;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,char const*> *>(a1, (v17 + 4), a4, ((v17 + 4) - a1) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,char const*> *>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[4];
        if (*v8 <= v11)
        {
          v10 = v8[4];
        }

        if (*v8 < v11)
        {
          v8 += 4;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 >= *a4)
      {
        v18 = *(a4 + 1);
        v19 = a4[3];
        do
        {
          v13 = a4;
          a4 = v8;
          *v13 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v14 = (2 * v7) | 1;
          v8 = (result + 16 * v14);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v15 = *v8;
            v7 = v14;
          }

          else
          {
            v15 = *v8;
            v16 = v8[4];
            if (*v8 <= v16)
            {
              v15 = v8[4];
            }

            if (*v8 >= v16)
            {
              v7 = v14;
            }

            else
            {
              v8 += 4;
            }
          }
        }

        while (v15 >= v12);
        *a4 = v12;
        a4[3] = v19;
        *(a4 + 1) = v18;
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer32,char const*> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = (a2 - 16);
    v8 = *(a2 - 16);
    if (*v6 < v8)
    {
      v11 = *(a2 - 12);
      v12 = *(a2 - 4);
      do
      {
        v9 = v7;
        v7 = v6;
        *v9 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 16 * v5);
      }

      while (*v6 < v8);
      *v7 = v8;
      *(v7 + 4) = v11;
      *(v7 + 3) = v12;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

char **adjustVectorToMatchSegmentDeltas<CSCppSegmentRange,Pointer32>(char **result, void *a2)
{
  v3 = *result;
  v2 = result[1];
  if (*result != v2)
  {
    v5 = result;
    do
    {
      v6 = *v3;
      v7 = a2[1];
      if (v7 != *a2)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 2);
        v7 = *a2;
        do
        {
          v9 = v8 >> 1;
          v10 = &v7[3 * (v8 >> 1)];
          v12 = *v10;
          v11 = v10 + 3;
          v8 += ~(v8 >> 1);
          if (v12 > v6)
          {
            v8 = v9;
          }

          else
          {
            v7 = v11;
          }
        }

        while (v8);
      }

      if (v7 == *a2 || v6 - *(v7 - 3) >= *(v7 - 2))
      {
        v13 = v2 - (v3 + 32);
        if (v2 != v3 + 32)
        {
          result = memmove(v3, v3 + 32, v2 - (v3 + 32));
        }

        v2 = &v3[v13];
        v5[1] = &v3[v13];
      }

      else
      {
        *v3 = *(v7 - 1) + v6;
        v3 += 32;
      }
    }

    while (v3 != v2);
  }

  return result;
}

char **adjustVectorToMatchSegmentDeltas<CSCppSectionRange,Pointer32>(char **result, void *a2)
{
  v3 = *result;
  v2 = result[1];
  if (*result != v2)
  {
    v5 = result;
    do
    {
      v6 = *v3;
      v7 = a2[1];
      if (v7 != *a2)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 2);
        v7 = *a2;
        do
        {
          v9 = v8 >> 1;
          v10 = &v7[3 * (v8 >> 1)];
          v12 = *v10;
          v11 = v10 + 3;
          v8 += ~(v8 >> 1);
          if (v12 > v6)
          {
            v8 = v9;
          }

          else
          {
            v7 = v11;
          }
        }

        while (v8);
      }

      if (v7 == *a2 || v6 - *(v7 - 3) >= *(v7 - 2))
      {
        v13 = v2 - (v3 + 24);
        if (v2 != v3 + 24)
        {
          result = memmove(v3, v3 + 24, v2 - (v3 + 24));
        }

        v2 = &v3[v13];
        v5[1] = &v3[v13];
      }

      else
      {
        *v3 = *(v7 - 1) + v6;
        v3 += 24;
      }
    }

    while (v3 != v2);
  }

  return result;
}

void adjustSymbolsToMatchSegmentDeltas<Pointer32>(unsigned int **a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v6 = *v2;
      v7 = a2[1];
      if (v7 != *a2)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 2);
        v7 = *a2;
        do
        {
          v9 = v8 >> 1;
          v10 = &v7[3 * (v8 >> 1)];
          v12 = *v10;
          v11 = v10 + 3;
          v8 += ~(v8 >> 1);
          if (v12 > v6)
          {
            v8 = v9;
          }

          else
          {
            v7 = v11;
          }
        }

        while (v8);
      }

      if (v7 == *a2 || v6 - *(v7 - 3) >= *(v7 - 2))
      {
        if (v2 + 24 == v3)
        {
          v13 = v2;
        }

        else
        {
          v14 = v2;
          do
          {
            v13 = (v14 + 96);
            TRawSymbol<Pointer32>::operator=(v14, v14 + 96);
            v15 = v14 + 192;
            v14 += 96;
          }

          while (v15 != v3);
          v3 = a1[1];
        }

        for (; v3 != v13; v3 -= 24)
        {
          v16 = (v3 - 10);
          std::vector<TRawSymbol<Pointer32>>::__destroy_vector::operator()[abi:ne200100](&v16);
        }

        a1[1] = v13;
      }

      else
      {
        slideSymbolsByOffset<Pointer32>(v2, *(v7 - 1));
        v2 += 24;
        v13 = a1[1];
      }

      v3 = v13;
    }

    while (v2 != v13);
  }
}

char **adjustVectorToMatchSegmentDeltas<TRawSourceInfo<Pointer32>,Pointer32>(char **result, void *a2)
{
  v3 = *result;
  v2 = result[1];
  if (*result != v2)
  {
    v5 = result;
    do
    {
      v6 = *v3;
      v7 = a2[1];
      if (v7 != *a2)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 2);
        v7 = *a2;
        do
        {
          v9 = v8 >> 1;
          v10 = &v7[3 * (v8 >> 1)];
          v12 = *v10;
          v11 = v10 + 3;
          v8 += ~(v8 >> 1);
          if (v12 > v6)
          {
            v8 = v9;
          }

          else
          {
            v7 = v11;
          }
        }

        while (v8);
      }

      if (v7 == *a2 || v6 - *(v7 - 3) >= *(v7 - 2))
      {
        v13 = v2 - (v3 + 32);
        if (v2 != v3 + 32)
        {
          result = memmove(v3, v3 + 32, v13 - 4);
        }

        v2 = &v3[v13];
        v5[1] = &v3[v13];
      }

      else
      {
        *v3 = *(v7 - 1) + v6;
        v3 += 32;
      }
    }

    while (v3 != v2);
  }

  return result;
}

void *std::vector<CSCppSegmentRange>::__assign_with_size[abi:ne200100]<CSCppSegmentRange*,CSCppSegmentRange*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 5)
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

    if (!(a4 >> 59))
    {
      v10 = v8 >> 4;
      if (v8 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<CSCppSegmentRange>::__vallocate[abi:ne200100](v7, v11);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 5)
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

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer32> *,false>(unint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
  v125 = *MEMORY[0x1E69E9840];
LABEL_2:
  v9 = (a2 - 2);
  v10 = (a2 - 4);
  v11 = (a2 - 6);
  v12 = a1;
LABEL_3:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 5;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        goto LABEL_112;
      }

      if (v15 == 2)
      {
        v72 = *(a2 - 8);
        v67 = a2 - 2;
        if (v72 >= *v12)
        {
          goto LABEL_112;
        }

LABEL_78:
        *v115 = *v12;
        *&v115[16] = *(v12 + 16);
        v73 = *v67;
        *(v12 + 12) = *(v67 + 12);
        *v12 = v73;
        v69 = *v115;
        goto LABEL_79;
      }

      goto LABEL_11;
    }

    switch(v15)
    {
      case 3:
        v64 = (v12 + 32);
        v65 = *(v12 + 32);
        v68 = *(a2 - 8);
        v67 = a2 - 2;
        v66 = v68;
        if (v65 < *v12)
        {
          if (v66 < v65)
          {
            goto LABEL_78;
          }

          *v114 = *v12;
          *&v114[16] = *(v12 + 16);
          *v12 = *v64;
          *(v12 + 12) = *(v12 + 44);
          *v64 = *v114;
          *(v12 + 44) = *&v114[12];
          if (*v67 >= *(v12 + 32))
          {
            goto LABEL_112;
          }

          v69 = *v64;
          *v115 = *v64;
          *&v115[16] = *(v12 + 48);
          v70 = *(v67 + 12);
          *v64 = *v67;
          *(v12 + 44) = v70;
LABEL_79:
          *v67 = v69;
          *(v67 + 12) = *&v115[12];
          goto LABEL_112;
        }

        if (v66 >= v65)
        {
          goto LABEL_112;
        }

        *v117 = *v64;
        v80 = *v64;
        *&v117[16] = *(v12 + 48);
        v81 = *(v67 + 12);
        *v64 = *v67;
        *(v12 + 44) = v81;
        *v67 = v80;
        *(v67 + 12) = *&v117[12];
        goto LABEL_110;
      case 4:
        v64 = (v12 + 32);
        v74 = *(v12 + 32);
        v75 = (v12 + 64);
        v76 = *(v12 + 64);
        if (v74 >= *v12)
        {
          if (v76 < v74)
          {
            *v118 = *v64;
            v82 = *v64;
            *&v118[16] = *(v12 + 48);
            *v64 = *v75;
            *(v12 + 44) = *(v12 + 76);
            *v75 = v82;
            *(v12 + 76) = *&v118[12];
            if (*(v12 + 32) < *v12)
            {
              *v119 = *v12;
              *&v119[16] = *(v12 + 16);
              *v12 = *v64;
              *(v12 + 12) = *(v12 + 44);
              *v64 = *v119;
              *(v12 + 44) = *&v119[12];
            }
          }
        }

        else
        {
          if (v76 < v74)
          {
            *v116 = *v12;
            *&v116[16] = *(v12 + 16);
            *v12 = *v75;
            *(v12 + 12) = *(v12 + 76);
            v77 = *v116;
            goto LABEL_106;
          }

          *v121 = *v12;
          *&v121[16] = *(v12 + 16);
          *v12 = *v64;
          *(v12 + 12) = *(v12 + 44);
          *v64 = *v121;
          *(v12 + 44) = *&v121[12];
          if (v76 < *(v12 + 32))
          {
            v77 = *v64;
            *v116 = *v64;
            *&v116[16] = *(v12 + 48);
            *v64 = *v75;
            *(v12 + 44) = *(v12 + 76);
LABEL_106:
            *v75 = v77;
            *(v12 + 76) = *&v116[12];
          }
        }

        if (*v9 >= *v75)
        {
          goto LABEL_112;
        }

        *v122 = *v75;
        v88 = *v75;
        *&v122[16] = *(v12 + 80);
        v89 = *(a2 - 20);
        *v75 = *v9;
        *(v12 + 76) = v89;
        *v9 = v88;
        *(a2 - 20) = *&v122[12];
        if (*v75 >= *v64)
        {
          goto LABEL_112;
        }

        *v123 = *v64;
        v90 = *v64;
        *&v123[16] = *(v12 + 48);
        *v64 = *v75;
        *(v12 + 44) = *(v12 + 76);
        *v75 = v90;
        *(v12 + 76) = *&v123[12];
LABEL_110:
        if (*(v12 + 32) < *v12)
        {
          *v124 = *v12;
          *&v124[16] = *(v12 + 16);
          *v12 = *v64;
          *(v12 + 12) = *(v64 + 12);
          *v64 = *v124;
          *(v64 + 12) = *&v124[12];
        }

        goto LABEL_112;
      case 5:
        v71 = *MEMORY[0x1E69E9840];

        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer32> *,0>(v12, (v12 + 32), (v12 + 64), (v12 + 96), a2 - 2, a6);
        return;
    }

LABEL_11:
    if (v15 <= 23)
    {
      if (a5)
      {
        v78 = *MEMORY[0x1E69E9840];

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer32> *>(v12, a2);
        return;
      }

      if (v12 != a2)
      {
        v83 = (v12 + 32);
        while (v83 != a2)
        {
          v84 = v83;
          v85 = *(a1 + 32);
          if (v85 < *a1)
          {
            *v120 = *(a1 + 36);
            *&v120[12] = *(a1 + 48);
            v86 = v84;
            do
            {
              *v86 = *(v86 - 2);
              *(v86 + 12) = *(v86 - 20);
              v87 = *(v86 - 16);
              v86 -= 2;
            }

            while (v85 < v87);
            *v86 = v85;
            *(v86 + 20) = *&v120[16];
            *(v86 + 4) = *v120;
          }

          v83 = v84 + 2;
          a1 = v84;
        }
      }

LABEL_112:
      v91 = *MEMORY[0x1E69E9840];
      return;
    }

    if (v13 == 1)
    {
      break;
    }

    v16 = v12 + 32 * (v15 >> 1);
    v17 = v16;
    v18 = *v9;
    if (v15 >= 0x81)
    {
      v19 = *v16;
      if (*v16 >= *v12)
      {
        if (v18 < v19)
        {
          *v95 = *v16;
          *&v95[16] = *(v16 + 16);
          v23 = *v9;
          *(v16 + 12) = *(a2 - 20);
          *v16 = v23;
          *v9 = *v95;
          *(a2 - 20) = *&v95[12];
          if (*v16 < *v12)
          {
            *v96 = *v12;
            *&v96[16] = *(v12 + 16);
            v24 = *v16;
            *(v12 + 12) = *(v16 + 12);
            *v12 = v24;
            *(v16 + 12) = *&v96[12];
            *v16 = *v96;
          }
        }
      }

      else
      {
        if (v18 < v19)
        {
          *v93 = *v12;
          *&v93[16] = *(v12 + 16);
          v20 = *v9;
          *(v12 + 12) = *(a2 - 20);
          *v12 = v20;
          goto LABEL_28;
        }

        *v99 = *v12;
        *&v99[16] = *(v12 + 16);
        v27 = *v16;
        *(v12 + 12) = *(v16 + 12);
        *v12 = v27;
        *(v16 + 12) = *&v99[12];
        *v16 = *v99;
        if (*v9 < *v16)
        {
          *v93 = *v16;
          *&v93[16] = *(v16 + 16);
          v28 = *v9;
          *(v16 + 12) = *(a2 - 20);
          *v16 = v28;
LABEL_28:
          *v9 = *v93;
          *(a2 - 20) = *&v93[12];
        }
      }

      v29 = (v12 + 32);
      v30 = (v16 - 32);
      v31 = *(v16 - 32);
      v32 = *v10;
      if (v31 >= *(v12 + 32))
      {
        if (v32 < v31)
        {
          *v101 = *v30;
          *&v101[16] = *(v16 - 16);
          v35 = *v10;
          *(v16 - 20) = *(a2 - 52);
          *v30 = v35;
          *v10 = *v101;
          *(a2 - 52) = *&v101[12];
          if (*v30 < *v29)
          {
            *v102 = *v29;
            v36 = *v29;
            *&v102[16] = *(v12 + 48);
            v37 = *(v16 - 20);
            *v29 = *v30;
            *(v12 + 44) = v37;
            *(v16 - 20) = *&v102[12];
            *v30 = v36;
          }
        }
      }

      else
      {
        if (v32 < v31)
        {
          v33 = *v29;
          *v100 = *v29;
          *&v100[16] = *(v12 + 48);
          v34 = *(a2 - 52);
          *v29 = *v10;
          *(v12 + 44) = v34;
          goto LABEL_40;
        }

        *v104 = *v29;
        v40 = *v29;
        *&v104[16] = *(v12 + 48);
        v41 = *(v16 - 20);
        *v29 = *v30;
        *(v12 + 44) = v41;
        *(v16 - 20) = *&v104[12];
        *v30 = v40;
        if (*v10 < *v30)
        {
          *v100 = *v30;
          *&v100[16] = *(v16 - 16);
          v42 = *v10;
          *(v16 - 20) = *(a2 - 52);
          *v30 = v42;
          v33 = *v100;
LABEL_40:
          *v10 = v33;
          *(a2 - 52) = *&v100[12];
        }
      }

      v43 = (v12 + 64);
      v46 = *(v16 + 32);
      v44 = (v16 + 32);
      v45 = v46;
      v47 = *v11;
      if (v46 >= *(v12 + 64))
      {
        if (v47 < v45)
        {
          *v106 = *v44;
          *&v106[16] = v44[1];
          v50 = *v11;
          *(v44 + 12) = *(a2 - 84);
          *v44 = v50;
          *v11 = *v106;
          *(a2 - 84) = *&v106[12];
          if (*v44 < *v43)
          {
            *v107 = *v43;
            v51 = *v43;
            *&v107[16] = *(v12 + 80);
            v52 = *(v44 + 12);
            *v43 = *v44;
            *(v12 + 76) = v52;
            *(v44 + 12) = *&v107[12];
            *v44 = v51;
          }
        }
      }

      else
      {
        if (v47 < v45)
        {
          v48 = *v43;
          *v105 = *v43;
          *&v105[16] = *(v12 + 80);
          v49 = *(a2 - 84);
          *v43 = *v11;
          *(v12 + 76) = v49;
          goto LABEL_49;
        }

        *v108 = *v43;
        v53 = *v43;
        *&v108[16] = *(v12 + 80);
        v54 = *(v44 + 12);
        *v43 = *v44;
        *(v12 + 76) = v54;
        *(v44 + 12) = *&v108[12];
        *v44 = v53;
        if (*v11 < *v44)
        {
          *v105 = *v44;
          *&v105[16] = v44[1];
          v55 = *v11;
          *(v44 + 12) = *(a2 - 84);
          *v44 = v55;
          v48 = *v105;
LABEL_49:
          *v11 = v48;
          *(a2 - 84) = *&v105[12];
        }
      }

      v56 = *v17;
      v57 = *v44;
      if (*v17 >= *v30)
      {
        if (v57 < v56)
        {
          *v110 = *v17;
          *&v110[16] = *(v17 + 16);
          *v17 = *v44;
          *(v17 + 12) = *(v44 + 12);
          *(v44 + 12) = *&v110[12];
          *v44 = *v110;
          if (*v17 < *v30)
          {
            *v111 = *v30;
            *&v111[16] = v30[1];
            *v30 = *v17;
            *(v30 + 12) = *(v17 + 12);
            *(v17 + 12) = *&v111[12];
            *v17 = *v111;
          }
        }
      }

      else
      {
        if (v57 < v56)
        {
          *v109 = *v30;
          *&v109[16] = v30[1];
          *v30 = *v44;
          *(v30 + 12) = *(v44 + 12);
          goto LABEL_58;
        }

        *v112 = *v30;
        *&v112[16] = v30[1];
        *v30 = *v17;
        *(v30 + 12) = *(v17 + 12);
        *(v17 + 12) = *&v112[12];
        *v17 = *v112;
        if (*v44 < *v17)
        {
          *v109 = *v17;
          *&v109[16] = *(v17 + 16);
          *v17 = *v44;
          *(v17 + 12) = *(v44 + 12);
LABEL_58:
          *(v44 + 12) = *&v109[12];
          *v44 = *v109;
        }
      }

      *v113 = *v12;
      *&v113[16] = *(v12 + 16);
      v58 = *v17;
      *(v12 + 12) = *(v17 + 12);
      *v12 = v58;
      *(v17 + 12) = *&v113[12];
      *v17 = *v113;
      goto LABEL_60;
    }

    v21 = *v12;
    if (*v12 >= *v17)
    {
      if (v18 < v21)
      {
        *v97 = *v12;
        *&v97[16] = *(v12 + 16);
        v25 = *v9;
        *(v12 + 12) = *(a2 - 20);
        *v12 = v25;
        *v9 = *v97;
        *(a2 - 20) = *&v97[12];
        if (*v12 < *v17)
        {
          *v98 = *v17;
          *&v98[16] = *(v17 + 16);
          v26 = *v12;
          *(v17 + 12) = *(v12 + 12);
          *v17 = v26;
          *(v12 + 12) = *&v98[12];
          *v12 = *v98;
        }
      }
    }

    else
    {
      if (v18 < v21)
      {
        *v94 = *v17;
        *&v94[16] = *(v17 + 16);
        v22 = *v9;
        *(v17 + 12) = *(a2 - 20);
        *v17 = v22;
LABEL_37:
        *v9 = *v94;
        *(a2 - 20) = *&v94[12];
        goto LABEL_60;
      }

      *v103 = *v17;
      *&v103[16] = *(v17 + 16);
      v38 = *v12;
      *(v17 + 12) = *(v12 + 12);
      *v17 = v38;
      *(v12 + 12) = *&v103[12];
      *v12 = *v103;
      if (*v9 < *v12)
      {
        *v94 = *v12;
        *&v94[16] = *(v12 + 16);
        v39 = *v9;
        *(v12 + 12) = *(a2 - 20);
        *v12 = v39;
        goto LABEL_37;
      }
    }

LABEL_60:
    if ((a5 & 1) == 0 && *(v12 - 32) >= *v12)
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TRawSourceInfo<Pointer32> *,std::__less<void,void> &>(v12, a2);
      goto LABEL_67;
    }

    v59 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TRawSourceInfo<Pointer32> *,std::__less<void,void> &>(v12, a2);
    if ((v61 & 1) == 0)
    {
      goto LABEL_65;
    }

    v62 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer32> *>(v12, v59, v60);
    v12 = (v59 + 2);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer32> *>((v59 + 2), a2, v63))
    {
      a4 = -v14;
      a2 = v59;
      if (v62)
      {
        goto LABEL_112;
      }

      goto LABEL_2;
    }

    v13 = v14 + 1;
    if (!v62)
    {
LABEL_65:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer32> *,false>(a1, v59, a3, -v14, a5 & 1);
      v12 = (v59 + 2);
LABEL_67:
      a5 = 0;
      a4 = -v14;
      goto LABEL_3;
    }
  }

  if (v12 == a2)
  {
    goto LABEL_112;
  }

  v79 = *MEMORY[0x1E69E9840];

  std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer32> *,TRawSourceInfo<Pointer32> *>(v12, a2, a2, a3);
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer32> *,0>(_OWORD *a1, int *a2, int *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = *a2;
  v7 = *a3;
  if (*a2 >= *a1)
  {
    if (v7 < v6)
    {
      *v32 = *a2;
      v10 = *a2;
      *&v32[16] = *(a2 + 1);
      v11 = *(a3 + 3);
      *a2 = *a3;
      *(a2 + 3) = v11;
      *a3 = v10;
      result = *&v32[12];
      *(a3 + 3) = *&v32[12];
      if (*a2 < *a1)
      {
        *v33 = *a1;
        v12 = *a1;
        *&v33[16] = a1[1];
        v13 = *(a2 + 3);
        *a1 = *a2;
        *(a1 + 12) = v13;
        *a2 = v12;
        result = *&v33[12];
        *(a2 + 3) = *&v33[12];
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *a1;
      *v31 = *a1;
      *&v31[16] = a1[1];
      v9 = *(a3 + 3);
      *a1 = *a3;
      *(a1 + 12) = v9;
LABEL_9:
      *a3 = v8;
      result = *&v31[12];
      *(a3 + 3) = *&v31[12];
      goto LABEL_10;
    }

    *v34 = *a1;
    v14 = *a1;
    *&v34[16] = a1[1];
    v15 = *(a2 + 3);
    *a1 = *a2;
    *(a1 + 12) = v15;
    *a2 = v14;
    result = *&v34[12];
    *(a2 + 3) = *&v34[12];
    if (*a3 < *a2)
    {
      v8 = *a2;
      *v31 = *a2;
      *&v31[16] = *(a2 + 1);
      v16 = *(a3 + 3);
      *a2 = *a3;
      *(a2 + 3) = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    *v35 = *a3;
    v17 = *a3;
    *&v35[16] = *(a3 + 1);
    v18 = *(a4 + 12);
    *a3 = *a4;
    *(a3 + 3) = v18;
    *a4 = v17;
    result = *&v35[12];
    *(a4 + 12) = *&v35[12];
    if (*a3 < *a2)
    {
      *v36 = *a2;
      v19 = *a2;
      *&v36[16] = *(a2 + 1);
      v20 = *(a3 + 3);
      *a2 = *a3;
      *(a2 + 3) = v20;
      *a3 = v19;
      result = *&v36[12];
      *(a3 + 3) = *&v36[12];
      if (*a2 < *a1)
      {
        *v37 = *a1;
        v21 = *a1;
        *&v37[16] = a1[1];
        v22 = *(a2 + 3);
        *a1 = *a2;
        *(a1 + 12) = v22;
        *a2 = v21;
        result = *&v37[12];
        *(a2 + 3) = *&v37[12];
      }
    }
  }

  if (*a5 < *a4)
  {
    *v38 = *a4;
    v23 = *a4;
    *&v38[16] = a4[1];
    v24 = *(a5 + 12);
    *a4 = *a5;
    *(a4 + 12) = v24;
    *a5 = v23;
    result = *&v38[12];
    *(a5 + 12) = *&v38[12];
    if (*a4 < *a3)
    {
      *v39 = *a3;
      v25 = *a3;
      *&v39[16] = *(a3 + 1);
      v26 = *(a4 + 12);
      *a3 = *a4;
      *(a3 + 3) = v26;
      *a4 = v25;
      result = *&v39[12];
      *(a4 + 12) = *&v39[12];
      if (*a3 < *a2)
      {
        *v40 = *a2;
        v27 = *a2;
        *&v40[16] = *(a2 + 1);
        v28 = *(a3 + 3);
        *a2 = *a3;
        *(a2 + 3) = v28;
        *a3 = v27;
        result = *&v40[12];
        *(a3 + 3) = *&v40[12];
        if (*a2 < *a1)
        {
          *v41 = *a1;
          v29 = *a1;
          *&v41[16] = a1[1];
          v30 = *(a2 + 3);
          *a1 = *a2;
          *(a1 + 12) = v30;
          *a2 = v29;
          result = *&v41[12];
          *(a2 + 3) = *&v41[12];
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer32> *>(uint64_t result, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v2 = result + 32;
    if (result + 32 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 32);
        if (v6 < *v4)
        {
          *v11 = *(v4 + 36);
          *&v11[12] = *(v4 + 48);
          v7 = v3;
          while (1)
          {
            v8 = result + v7;
            *(v8 + 32) = *(result + v7);
            *(v8 + 44) = *(result + v7 + 12);
            if (!v7)
            {
              break;
            }

            v7 -= 32;
            if (v6 >= *(v8 - 32))
            {
              v9 = result + v7 + 32;
              goto LABEL_10;
            }
          }

          v9 = result;
LABEL_10:
          *v9 = v6;
          *(v9 + 4) = *v11;
          *(v9 + 20) = *&v11[16];
        }

        v2 = v5 + 32;
        v3 += 32;
        v4 = v5;
      }

      while (v5 + 32 != a2);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,TRawSourceInfo<Pointer32> *,std::__less<void,void> &>(unint64_t a1, _OWORD *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  *v14 = *(a1 + 4);
  *&v14[12] = *(a1 + 16);
  if (*a1 >= *(a2 - 8))
  {
    v5 = a1 + 32;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      v5 += 32;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = *(v3 + 32);
      v3 += 32;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *(a2 - 8);
      a2 -= 2;
    }

    while (v2 < v6);
  }

  while (v3 < a2)
  {
    *v13 = *v3;
    *&v13[16] = *(v3 + 16);
    v7 = *a2;
    *(v3 + 12) = *(a2 + 12);
    *v3 = v7;
    *(a2 + 12) = *&v13[12];
    *a2 = *v13;
    do
    {
      v8 = *(v3 + 32);
      v3 += 32;
    }

    while (v2 >= v8);
    do
    {
      v9 = *(a2 - 8);
      a2 -= 2;
    }

    while (v2 < v9);
  }

  if (v3 - 32 != a1)
  {
    v10 = *(v3 - 32);
    *(a1 + 12) = *(v3 - 20);
    *a1 = v10;
  }

  *(v3 - 32) = v2;
  *(v3 - 12) = *&v14[16];
  *(v3 - 28) = *v14;
  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,TRawSourceInfo<Pointer32> *,std::__less<void,void> &>(int *a1, _OWORD *a2)
{
  v2 = 0;
  v19 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  *v18 = *(a1 + 1);
  *&v18[12] = *(a1 + 1);
  do
  {
    v4 = a1[v2 + 8];
    v2 += 8;
  }

  while (v4 < v3);
  v5 = &a1[v2];
  if (v2 == 8)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v7 = *(a2 - 8);
      a2 -= 2;
    }

    while (v7 >= v3);
  }

  else
  {
    do
    {
      v6 = *(a2 - 8);
      a2 -= 2;
    }

    while (v6 >= v3);
  }

  v8 = &a1[v2];
  if (v5 < a2)
  {
    v9 = a2;
    do
    {
      *v17 = *v8;
      v10 = *v8;
      *&v17[16] = *(v8 + 16);
      v11 = *(v9 + 12);
      *v8 = *v9;
      *(v8 + 12) = v11;
      *(v9 + 12) = *&v17[12];
      *v9 = v10;
      do
      {
        v12 = *(v8 + 32);
        v8 += 32;
      }

      while (v12 < v3);
      do
      {
        v13 = *(v9 - 8);
        v9 -= 2;
      }

      while (v13 >= v3);
    }

    while (v8 < v9);
  }

  if ((v8 - 32) != a1)
  {
    v14 = *(v8 - 32);
    *(a1 + 3) = *(v8 - 20);
    *a1 = v14;
  }

  *(v8 - 32) = v3;
  *(v8 - 12) = *&v18[16];
  *(v8 - 28) = *v18;
  v15 = *MEMORY[0x1E69E9840];
  return v8 - 32;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer32> *>(uint64_t a1, _OWORD *a2, __n128 a3)
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 32);
      v7 = *(a1 + 32);
      v9 = *(a2 - 8);
      v4 = a2 - 2;
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          *v55 = *a1;
          v30 = *a1;
          *&v55[16] = *(a1 + 16);
          *a1 = *v6;
          *(a1 + 12) = *(a1 + 44);
          *v6 = v30;
          *(a1 + 44) = *&v55[12];
          if (*v4 >= *(a1 + 32))
          {
            goto LABEL_52;
          }

          v10 = *v6;
          *v47 = *v6;
          *&v47[16] = *(a1 + 48);
          v31 = *(v4 + 12);
          *v6 = *v4;
          *(a1 + 44) = v31;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *v47 = *a1;
        *&v47[16] = *(a1 + 16);
        v11 = *(v4 + 12);
        *a1 = *v4;
        *(a1 + 12) = v11;
LABEL_13:
        *v4 = v10;
        *(v4 + 12) = *&v47[12];
        goto LABEL_52;
      }

      if (v8 >= v7)
      {
        goto LABEL_52;
      }

      *v50 = *v6;
      v24 = *v6;
      *&v50[16] = *(a1 + 48);
      v25 = *(v4 + 12);
      *v6 = *v4;
      *(a1 + 44) = v25;
      *v4 = v24;
      *(v4 + 12) = *&v50[12];
LABEL_50:
      if (*(a1 + 32) < *a1)
      {
        *v61 = *a1;
        v44 = *a1;
        *&v61[16] = *(a1 + 16);
        *a1 = *v6;
        *(a1 + 12) = *(v6 + 12);
        *v6 = v44;
        *(v6 + 12) = *&v61[12];
      }

      goto LABEL_52;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer32> *,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96), a2 - 2, a3);
LABEL_52:
      result = 1;
      goto LABEL_53;
    }

    v6 = (a1 + 32);
    v18 = *(a1 + 32);
    v19 = (a1 + 64);
    v20 = *(a1 + 64);
    v21 = a2 - 2;
    v22 = *a1;
    if (v18 >= *a1)
    {
      if (v20 < v18)
      {
        *v53 = *v6;
        v28 = *v6;
        *&v53[16] = *(a1 + 48);
        *v6 = *v19;
        *(a1 + 44) = *(a1 + 76);
        *v19 = v28;
        *(a1 + 76) = *&v53[12];
        if (*v6 < v22)
        {
          *v54 = *a1;
          v29 = *a1;
          *&v54[16] = *(a1 + 16);
          *a1 = *v6;
          *(a1 + 12) = *(a1 + 44);
          *v6 = v29;
          *(a1 + 44) = *&v54[12];
        }
      }

      goto LABEL_47;
    }

    if (v20 >= v18)
    {
      *v58 = *a1;
      v40 = *a1;
      *&v58[16] = *(a1 + 16);
      *a1 = *v6;
      *(a1 + 12) = *(a1 + 44);
      *v6 = v40;
      *(a1 + 44) = *&v58[12];
      if (v20 >= *(a1 + 32))
      {
        goto LABEL_47;
      }

      v23 = *v6;
      *v49 = *v6;
      *&v49[16] = *(a1 + 48);
      *v6 = *v19;
      *(a1 + 44) = *(a1 + 76);
    }

    else
    {
      v23 = *a1;
      *v49 = *a1;
      *&v49[16] = *(a1 + 16);
      *a1 = *v19;
      *(a1 + 12) = *(a1 + 76);
    }

    *v19 = v23;
    *(a1 + 76) = *&v49[12];
LABEL_47:
    if (*v21 >= *v19)
    {
      goto LABEL_52;
    }

    *v59 = *v19;
    v41 = *v19;
    *&v59[16] = *(a1 + 80);
    v42 = *(a2 - 20);
    *v19 = *v21;
    *(a1 + 76) = v42;
    *v21 = v41;
    *(a2 - 20) = *&v59[12];
    if (*v19 >= *v6)
    {
      goto LABEL_52;
    }

    *v60 = *v6;
    v43 = *v6;
    *&v60[16] = *(a1 + 48);
    *v6 = *v19;
    *(a1 + 44) = *(a1 + 76);
    *v19 = v43;
    *(a1 + 76) = *&v60[12];
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    goto LABEL_52;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 8);
    v4 = a2 - 2;
    if (v5 >= *a1)
    {
      goto LABEL_52;
    }

    goto LABEL_12;
  }

LABEL_14:
  v12 = (a1 + 64);
  v13 = *(a1 + 64);
  v14 = (a1 + 32);
  v15 = *(a1 + 32);
  v16 = *a1;
  if (v15 >= *a1)
  {
    if (v13 < v15)
    {
      *v51 = *v14;
      v26 = *v14;
      *&v51[16] = *(a1 + 48);
      *v14 = *v12;
      *(a1 + 44) = *(a1 + 76);
      *v12 = v26;
      *(a1 + 76) = *&v51[12];
      if (*v14 < v16)
      {
        *v52 = *a1;
        v27 = *a1;
        *&v52[16] = *(a1 + 16);
        *a1 = *v14;
        *(a1 + 12) = *(a1 + 44);
        *v14 = v27;
        *(a1 + 44) = *&v52[12];
      }
    }
  }

  else
  {
    if (v13 >= v15)
    {
      *v56 = *a1;
      v32 = *a1;
      *&v56[16] = *(a1 + 16);
      *a1 = *v14;
      *(a1 + 12) = *(a1 + 44);
      *v14 = v32;
      *(a1 + 44) = *&v56[12];
      if (v13 >= *(a1 + 32))
      {
        goto LABEL_33;
      }

      v17 = *v14;
      *v48 = *v14;
      *&v48[16] = *(a1 + 48);
      *v14 = *v12;
      *(a1 + 44) = *(a1 + 76);
    }

    else
    {
      v17 = *a1;
      *v48 = *a1;
      *&v48[16] = *(a1 + 16);
      *a1 = *v12;
      *(a1 + 12) = *(a1 + 76);
    }

    *v12 = v17;
    *(a1 + 76) = *&v48[12];
  }

LABEL_33:
  v33 = (a1 + 96);
  if ((a1 + 96) == a2)
  {
    goto LABEL_52;
  }

  v34 = 0;
  v35 = 0;
  while (1)
  {
    v36 = *v33;
    if (*v33 < *v12)
    {
      *v57 = *(v33 + 4);
      *&v57[12] = v33[1];
      v37 = v34;
      while (1)
      {
        v38 = a1 + v37;
        *(v38 + 96) = *(a1 + v37 + 64);
        *(v38 + 108) = *(a1 + v37 + 76);
        if (v37 == -64)
        {
          break;
        }

        v37 -= 32;
        if (v36 >= *(v38 + 32))
        {
          v39 = a1 + v37 + 96;
          goto LABEL_41;
        }
      }

      v39 = a1;
LABEL_41:
      *v39 = v36;
      *(v39 + 4) = *v57;
      *(v39 + 20) = *&v57[16];
      if (++v35 == 8)
      {
        break;
      }
    }

    v12 = v33;
    v34 += 32;
    v33 += 2;
    if (v33 == a2)
    {
      goto LABEL_52;
    }
  }

  result = v33 + 2 == a2;
LABEL_53:
  v46 = *MEMORY[0x1E69E9840];
  return result;
}

_OWORD *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer32> *,TRawSourceInfo<Pointer32> *>(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 32 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer32> *>(a1, a4, v8, v11);
        v11 -= 8;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*v12 < *a1)
        {
          *v26 = *v12;
          v13 = *v12;
          *&v26[16] = v12[1];
          v14 = *(a1 + 12);
          *v12 = *a1;
          *(v12 + 12) = v14;
          *a1 = v13;
          *(a1 + 12) = *&v26[12];
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer32> *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v15 = 0;
        *v27 = *a1;
        *&v27[16] = *(a1 + 16);
        v16 = a1;
        do
        {
          v17 = &v16[2 * v15];
          v18 = v17 + 2;
          v19 = (2 * v15) | 1;
          v15 = 2 * v15 + 2;
          if (v15 >= v8)
          {
            v15 = v19;
          }

          else
          {
            v21 = *(v17 + 16);
            v20 = v17 + 4;
            if (*(v20 - 8) >= v21)
            {
              v15 = v19;
            }

            else
            {
              v18 = v20;
            }
          }

          v22 = *v18;
          *(v16 + 12) = *(v18 + 12);
          *v16 = v22;
          v16 = v18;
        }

        while (v15 <= ((v8 - 2) >> 1));
        v6 -= 2;
        if (v18 == v6)
        {
          *(v18 + 12) = *&v27[12];
          *v18 = *v27;
        }

        else
        {
          v23 = *v6;
          *(v18 + 12) = *(v6 + 12);
          *v18 = v23;
          *v6 = *v27;
          *(v6 + 12) = *&v27[12];
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer32> *>(a1, (v18 + 2), a4, (v18 - a1 + 32) >> 5);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer32> *>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 5)
    {
      v6 = v4 >> 4;
      v7 = (v4 >> 4) + 1;
      v8 = (result + 32 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[8];
        if (*v8 <= v11)
        {
          v10 = v8[8];
        }

        if (*v8 < v11)
        {
          v8 += 8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 >= *a4)
      {
        *v19 = *(a4 + 1);
        *&v19[12] = *(a4 + 1);
        do
        {
          v13 = a4;
          a4 = v8;
          v14 = *v8;
          *(v13 + 3) = *(v8 + 3);
          *v13 = v14;
          if (v5 < v7)
          {
            break;
          }

          v15 = (2 * v7) | 1;
          v8 = (result + 32 * v15);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v16 = *v8;
            v7 = v15;
          }

          else
          {
            v16 = *v8;
            v17 = v8[8];
            if (*v8 <= v17)
            {
              v16 = v8[8];
            }

            if (*v8 >= v17)
            {
              v7 = v15;
            }

            else
            {
              v8 += 8;
            }
          }
        }

        while (v16 >= v12);
        *a4 = v12;
        *(a4 + 5) = *&v19[16];
        *(a4 + 1) = *v19;
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,TRawSourceInfo<Pointer32> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 32 * (v4 >> 1));
    v7 = (a2 - 32);
    v8 = *(a2 - 32);
    if (*v6 < v8)
    {
      *v12 = *(a2 - 28);
      *&v12[12] = *(a2 - 16);
      do
      {
        v9 = v7;
        v7 = v6;
        v10 = *v6;
        *(v9 + 12) = *(v6 + 12);
        *v9 = v10;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 32 * v5);
      }

      while (*v6 < v8);
      *v7 = v8;
      *(v7 + 4) = *v12;
      *(v7 + 20) = *&v12[16];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _do_traw_segments_overlap(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  std::vector<CSCppSegmentRange>::__init_with_size[abi:ne200100]<CSCppSegmentRange*,CSCppSegmentRange*>(&v14, v1, v2, (v2 - v1) >> 5);
  v4 = 126 - 2 * __clz((v15 - v14) >> 5);
  if (v15 == v14)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,CSCppSegmentRange *,false>(v14, v15, &v17, v5, 1, v3);
  v6 = (v15 - v14) >> 5;
  v7 = 1;
  v8 = v14;
  while (v6 + v7 != 2)
  {
    v9 = v8->n128_u64[1] + v8->n128_u64[0];
    v10 = v8[2].n128_u64[0];
    v8 += 2;
    --v7;
    if (v9 > v10)
    {
      v11 = -v7 < (v6 - 1);
      goto LABEL_11;
    }
  }

  v11 = 0;
  v12 = 0;
  if (!v14)
  {
    return v12;
  }

LABEL_11:
  v15 = v14;
  operator delete(v14);
  return v11;
}

void sub_1D9760B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t intern_symbol_names_and_path<Pointer32,std::unordered_map<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::PairOfAddressesHash,std::equal_to<std::pair<unsigned long,unsigned long>>,std::allocator<std::pair<std::pair<unsigned long,unsigned long> const,std::pair<unsigned int,unsigned int>>>>,std::unordered_map<unsigned long,unsigned int>>(uint64_t a1, CSCppMMapStringTable *a2, DemanglingUtilities::CSCppReusableDemanglingBuffer *a3, void *a4, void *a5, int a6)
{
  if ((atomic_load_explicit((a1 + 20), memory_order_acquire) & 0x400000) != 0)
  {
    v12 = TRawSymbol<Pointer32>::_resolve_mangled_name<TRawSymbol<Pointer32>::PersistentMangledName>(a1);
    v13 = "";
  }

  else
  {
    v12 = TRawSymbol<Pointer32>::_resolve_mangled_name<TRawSymbol<Pointer32>::EphemeralMangledName>(a1);
    v13 = *(a1 + 88);
  }

  v24[0] = v13;
  v24[1] = v12;
  result = std::__hash_table<std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>,std::__unordered_map_hasher<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::PairOfAddressesHash,std::equal_to<std::pair<unsigned long,unsigned long>>,true>,std::__unordered_map_equal<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>,std::equal_to<std::pair<unsigned long,unsigned long>>,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::PairOfAddressesHash,true>,std::allocator<std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>>>::find<std::pair<unsigned long,unsigned long>>(a4, v24);
  if (result)
  {
    v15 = *(result + 32);
    v16 = *(result + 36);
    goto LABEL_30;
  }

  v15 = CSCppMMapStringTable::intern_with_prefix(a2, v13, v12);
  if (DemanglingUtilities::is_simple_mangled_name(v12, atomic_load_explicit((a1 + 20), memory_order_acquire)))
  {
    v17 = DemanglingUtilities::simple_demangle(v12, atomic_load_explicit((a1 + 20), memory_order_acquire));
  }

  else
  {
    if (a6)
    {
      DemanglingUtilities::CSCppReusableDemanglingBuffer::reusable_buffer(a3);
      CSCppAddressSet::sort(a3);
      v18 = a1;
    }

    else
    {
      if ((atomic_load_explicit((a1 + 20), memory_order_acquire) & 0x20000) == 0)
      {
        goto LABEL_17;
      }

      v18 = a1;
    }

    v17 = TRawSymbol<Pointer32>::_resolve_name(v18);
  }

  v19 = v17;
  if (v17)
  {
    if (v17 == v12 + 1 || v17 == v12)
    {
      v20 = v17 != v12;
      if ((atomic_load_explicit((a1 + 20), memory_order_acquire) & 0x80000) != 0)
      {
        v21 = 0;
      }

      else if ((atomic_load_explicit((a1 + 20), memory_order_acquire) & 0x8000) != 0)
      {
        v21 = 1;
      }

      else
      {
        v21 = (atomic_load_explicit((a1 + 20), memory_order_acquire) >> 16) & 1;
      }

      is_objc_method = TRawSymbol<Pointer32>::is_objc_method(a1);
      if (v19 == v12)
      {
        v23 = v21;
      }

      else
      {
        v23 = 1;
      }

      if (is_objc_method)
      {
        v23 = v20;
      }

      v16 = v15 + v23;
    }

    else
    {
      v16 = CSCppMMapStringTable::intern_with_prefix(a2, 0, v17);
    }

    goto LABEL_29;
  }

LABEL_17:
  v16 = 0;
LABEL_29:
  result = std::__hash_table<std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>,std::__unordered_map_hasher<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::PairOfAddressesHash,std::equal_to<std::pair<unsigned long,unsigned long>>,true>,std::__unordered_map_equal<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>,std::equal_to<std::pair<unsigned long,unsigned long>>,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::PairOfAddressesHash,true>,std::allocator<std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>>>::__emplace_unique_key_args<std::pair<unsigned long,unsigned long>,std::pair<unsigned long,unsigned long>&,std::pair<unsigned int,unsigned int>>(a4, v24);
LABEL_30:
  *(a1 + 8) = v16;
  *(a1 + 12) = v15;
  if ((atomic_load_explicit((a1 + 20), memory_order_acquire) & 0x80000000) != 0)
  {
    result = *(a1 + 40);
    if (result)
    {
      result = intern_string<std::unordered_map<unsigned long,unsigned int>>(result, a2, a5);
      *(a1 + 16) = result;
    }
  }

  return result;
}

uint64_t write_symbols_and_inlined_functions<Pointer32>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t **a5, uint64_t a6, uint64_t a7)
{
  v42 = 0;
  v41 = *a5;
  v40 = 0u;
  memset(v39, 0, sizeof(v39));
  v8 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    v10 = a5;
    do
    {
      if (!a6 || CSCppAddressSet::_intersects_range(a6, *v8, HIDWORD(*v8)))
      {
        v12 = children_index_for_symbol<Pointer32>(v8, &v42, a6);
        if (*(v8 + 64) != *(v8 + 56))
        {
          v38 = v8;
          std::deque<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *>>::push_back(v39, &v38);
        }

        if (*v10 == v10[1])
        {
          *a2 = *v8;
        }

        else
        {
          advance_delta_iterator_to_containing_range<Pointer32>(v8, v10, &v41);
          v13 = *(v8 + 4);
          *a2 = *v8 + *(v41 + 4);
          *(a2 + 4) = v13;
        }

        TRawSymbol<Pointer32>::is_objc_method(v8);
        *(a2 + 8) = atomic_load_explicit((v8 + 20), memory_order_acquire);
        *(a2 + 20) = v12;
        *(a2 + 12) = *(v8 + 8);
        a2 += 24;
      }

      v8 += 96;
    }

    while (v8 != v7);
    v14 = *(&v40 + 1);
    if (*(&v40 + 1))
    {
      v15 = v40;
      v32 = v10;
      do
      {
        v16 = *(*(*(&v39[0] + 1) + ((v15 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v15 & 0x1FF));
        v41 = *v10;
        v17 = *(v16 + 64) - *(v16 + 56);
        if (v17)
        {
          v18 = 0;
          v19 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 5);
          if (v19 <= 1)
          {
            v20 = 1;
          }

          else
          {
            v20 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 5);
          }

          v35 = v20;
          v21 = 96;
          v22 = a3;
          do
          {
            v23 = *(v16 + 56) + 96 * v18;
            if (!a6 || CSCppAddressSet::_intersects_range(a6, *v23, HIDWORD(*v23)))
            {
              v24 = children_index_for_symbol<Pointer32>(v23, &v42, a6);
              if (*(v23 + 64) != *(v23 + 56))
              {
                v38 = v23;
                std::deque<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *>>::push_back(v39, &v38);
              }

              v37 = v22;
              if (a6)
              {
                v25 = v21;
                v26 = v18;
                do
                {
                  v27 = ++v26 >= v19;
                  if (v26 >= v19)
                  {
                    break;
                  }

                  v28 = CSCppAddressSet::_intersects_range(a6, *(*(v16 + 56) + v25), HIDWORD(*(*(v16 + 56) + v25)));
                  v25 += 96;
                }

                while (!v28);
              }

              else
              {
                v27 = v18 + 1 >= v19;
              }

              v10 = v32;
              if (*v32 == v32[1])
              {
                LODWORD(v30) = 0;
                v29 = v37;
              }

              else
              {
                advance_delta_iterator_to_containing_range<Pointer32>(v23, v32, &v41);
                v29 = v37;
                v30 = v41[2];
              }

              CSCppMMapInlinedSymbol::CSCppMMapInlinedSymbol<Pointer32>(v29, v30, a7, v23, a4, v24, v27);
              v22 = v29 + 36;
            }

            ++v18;
            v21 += 96;
          }

          while (v18 != v35);
          v14 = *(&v40 + 1);
          v15 = v40;
        }

        else
        {
          v22 = a3;
        }

        --v14;
        *&v40 = ++v15;
        *(&v40 + 1) = v14;
        a3 = v22;
        if (v15 >= 0x400)
        {
          operator delete(**(&v39[0] + 1));
          v14 = *(&v40 + 1);
          v15 = v40 - 512;
          *(&v39[0] + 1) += 8;
          *&v40 = v40 - 512;
        }
      }

      while (v14);
    }
  }

  return std::deque<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *>>::~deque[abi:ne200100](v39);
}

void sub_1D9761068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::deque<TRawSymbol<Pointer32> *,std::allocator<TRawSymbol<Pointer32> *>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<CSCppMMapSymbol const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::allocator<CSCppMMapSymbol const*>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<CSCppMMapSymbol const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
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
      std::allocator<CSCppMMapSymbol const*>::allocate_at_least[abi:ne200100](a1, v10);
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

void MMapArchiveNameBuffer::MMapArchiveNameBuffer(MMapArchiveNameBuffer *this)
{
  *(this + 29) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  operator new[]();
}

void sub_1D9761358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::vector<std::unique_ptr<char []>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::allocator<std::unique_ptr<char []>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<char []>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<char []>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::unique_ptr<char []>>::__destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      *(v4 + 16) = v2;
      *v2 = 0;
      if (v5)
      {
        result = MEMORY[0x1DA736740](result, 0x1000C8077774924);
        v2 = *(v4 + 16);
      }
    }

    while (v2 != a2);
  }

  return result;
}

void std::vector<std::unique_ptr<char []>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<char []>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<char []>>::__base_destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x1DA736740](result, 0x1000C8077774924);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t intern_string<std::unordered_map<unsigned long,unsigned int>>(const char *a1, CSCppMMapStringTable *a2, void *a3)
{
  v9 = a1;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::find<unsigned long long>(a3, &v9);
  if (v6)
  {
    return *(v6 + 6);
  }

  v8 = CSCppMMapStringTable::intern_with_prefix(a2, 0, a1);
  v9 = a1;
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::__emplace_unique_key_args<unsigned long,unsigned long,unsigned int &>(a3, &v9);
  return v8;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::__emplace_unique_key_args<unsigned long,unsigned long,unsigned int &>(void *a1, unint64_t *a2)
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

uint64_t CSCppMMapStringTable::intern_with_prefix(CSCppMMapStringTable *this, const char *a2, const char *a3)
{
  if (a3 >= 0x1000)
  {
    v4 = a3;
  }

  else
  {
    v4 = "<unknown>";
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = "";
  }

  v6 = strlen(v5);
  v7 = strlen(v4);
  v8 = *(this + 10);
  MMapArchiveNameBuffer::stream_string_parts<std::string_view,std::string_view>(this + 8, v5, v6, v4, v7);
  return v8;
}

void *std::__hash_table<std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>,std::__unordered_map_hasher<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::PairOfAddressesHash,std::equal_to<std::pair<unsigned long,unsigned long>>,true>,std::__unordered_map_equal<std::pair<unsigned long,unsigned long>,std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>,std::equal_to<std::pair<unsigned long,unsigned long>>,TMMapArchive * CSCppSymbolOwnerCache::create_mmap_archive_arch_specific<Pointer32>(CSCppSymbolOwner *,TRawSymbolOwnerData<Pointer32> &,CSCppAddressSet *,BOOL)::PairOfAddressesHash,true>,std::allocator<std::__hash_value_type<std::pair<unsigned long,unsigned long>,std::pair<unsigned int,unsigned int>>>>::find<std::pair<unsigned long,unsigned long>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = (*a2 + (v3 << 6) + (v3 >> 2) + 2654435769u) ^ v3;
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = (*a2 + (v3 << 6) + (v3 >> 2) + 2654435769u) ^ v3;
    if (v4 >= *&v2)
    {
      v6 = v4 % *&v2;
    }
  }

  else
  {
    v6 = v4 & (*&v2 - 1);
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  result = *v7;
  if (*v7)
  {
    do
    {
      v9 = result[1];
      if (v9 == v4)
      {
        if (result[2] == *a2 && result[3] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v5.u32[0] > 1uLL)
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

      result = *result;
    }

    while (result);
  }

  return result;
}

size_t MMapArchiveNameBuffer::stream_string_parts<std::string_view,std::string_view>(size_t a1, const char *a2, unsigned int a3, const char *a4, unsigned int a5)
{
  MMapArchiveNameBuffer::_stream_string_with_length(a1, a2, a3);
  MMapArchiveNameBuffer::_stream_string_with_length(a1, a4, a5);

  return MMapArchiveNameBuffer::_stream_string_with_length(a1, "", 1u);
}