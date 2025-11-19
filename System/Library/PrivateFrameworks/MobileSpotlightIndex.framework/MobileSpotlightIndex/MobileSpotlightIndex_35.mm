double ___ZL19convertQPFilterNodeP17PRAstQPFilterNodeP9PRContext_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      *&result = 1045220557;
      *(v2 + 52) = 1045220557;
    }
  }

  return result;
}

uint64_t map_case(uint64_t result)
{
  if (result > 0x7F)
  {
    if ((result + 223) < 0x3Au || result < 0x587 || (result - 7680) <= 0x6E9u)
    {
      v6 = v1;
      v7 = v2;
      __key = result;
      v3 = result;
      v4 = bsearch(&__key, &case_mapping_table, 0x57AuLL, 4uLL, case_cmp);
      result = v3;
      if (v4)
      {
        return v4[1];
      }
    }
  }

  else if ((result - 97) > 0x19)
  {
    return tolower_map[result];
  }

  else
  {
    return toupper_map[result];
  }

  return result;
}

uint64_t _SICrashStateDump(const char *a1, FILE *a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v43 = 0;
  v44 = -1;
  v41 = -1;
  size = 0;
  v40 = 0;
  v3 = open(a1, 256);
  if (v3 == -1)
  {
    v23 = *__error();
    fprintf(a2, "Failed to open file %s. errno = %d\n");
LABEL_40:
    result = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = v3;
    v5 = 0;
    v34 = 0;
    v35 = -1;
    v31 = -1;
    v33 = a2;
    v32 = v3;
    while (read(v4, &v45, 4uLL) == 4)
    {
      if (v45 == 1127364148)
      {
        v6 = 1;
      }

      else
      {
        if (v45 != 875967043)
        {
          fprintf(a2, "Invalid crash file. magic=0x%x\n");
          goto LABEL_40;
        }

        v6 = 0;
        v45 = 1127364148;
      }

      if (read(v4, &size, 8uLL) != 8)
      {
        fprintf(a2, "Invalid header. len=%ld\n");
        goto LABEL_40;
      }

      v7 = malloc_type_malloc(size, 0x100004077774924uLL);
      if (!v7)
      {
        fwrite("Malloc failed\n", 0xEuLL, 1uLL, a2);
LABEL_38:
        result = 4294967294;
        goto LABEL_41;
      }

      v8 = v7;
      v9 = read(v4, v7, size);
      if (v9 != size)
      {
        fprintf(a2, "Read failed. len=%ld\n");
LABEL_37:
        free(v8);
        goto LABEL_38;
      }

      if (v9 <= 5)
      {
        fprintf(a2, "Read failed: len=%ld<6\n");
        goto LABEL_37;
      }

      if ((v6 & 1) == 0)
      {
        for (i = 0; i != 48; i += 16)
        {
          *&v8[i] = vrev64q_s8(*&v8[i]);
        }
      }

      v8[v9 - 1] = 0;
      v37 = *(v8 + 1);
      v38 = *v8;
      v36 = *(v8 + 2);
      v46[0] = *(v8 + 3);
      v11 = *(v8 + 4);
      v12 = *(v8 + 5);
      v13 = malloc_type_malloc(v11, 0x100004077774924uLL);
      v14 = malloc_type_malloc(v12, 0x100004077774924uLL);
      v16 = v8 + 48;
      v15 = v8[48];
      v39 = v5;
      if (v15 == 43)
      {
        v16 = v8 + 49;
        ++v34;
        v40 = v46[0];
        if (v31 == -1)
        {
          v41 = v46[0];
          v17 = -49;
          v31 = v46[0];
        }

        else
        {
          v17 = -49;
        }
      }

      else
      {
        v17 = -48;
      }

      v18 = size;
      v19 = v17 - (v12 + v11);
      v20 = malloc_type_malloc(v19 + size, 0x100004077774924uLL);
      if (v13)
      {
        memcpy(v13, v16, v11);
      }

      v21 = &v16[v11];
      if (v14)
      {
        memcpy(v14, v21, v12);
      }

      if (v20)
      {
        memcpy(v20, &v21[v12], v19 + v18);
      }

      v43 = v46[0];
      if (v35 == -1)
      {
        v44 = v46[0];
        v35 = v46[0];
      }

      v5 = v39 + 1;
      *v48 = 0;
      v49 = 0;
      v51 = 0;
      v50 = 0;
      v22 = localtime(v46);
      strftime(v48, 0x1AuLL, "%Y-%m-%d %H:%M:%S%z", v22);
      a2 = v33;
      fprintf(v33, "[%16s] crashed pc:0x%08lx, addr:%p, sig:0x%08lx, compact:%d, build:%s, spotlight_version:%s, path:%s\n", v48, v38, v37, v36, v15 == 43, v13, v14, v20);
      free(v13);
      free(v14);
      free(v20);
      free(v8);
      v4 = v32;
    }

    if (v5)
    {
      *v48 = 0;
      v49 = 0;
      v51 = 0;
      v50 = 0;
      v24 = localtime(&v43);
      strftime(v48, 0x1AuLL, "%Y-%m-%d %H:%M:%S%z", v24);
      if (v5 == 1)
      {
        fprintf(a2, "Detected crash at %s\n");
      }

      else
      {
        memset(v46, 0, sizeof(v46));
        v47 = 0;
        v27 = localtime(&v44);
        strftime(v46, 0x1AuLL, "%Y-%m-%d %H:%M:%S%z", v27);
        if (v43 <= v44)
        {
          v28 = 1.79769313e308;
        }

        else
        {
          v28 = (24 * v5) * 3600.0 / (v43 - v44);
        }

        fprintf(a2, "Detected %d crashes from %s to %s in total. crash rate %.2f/day\n", v5, v46, v48, v28);
        if (v34 >= 1)
        {
          v29 = localtime(&v40);
          strftime(v48, 0x1AuLL, "%Y-%m-%d %H:%M:%S%z", v29);
          if (v34 == 1)
          {
            fprintf(a2, "Detected compact crash at %s\n");
          }

          else
          {
            v30 = localtime(&v41);
            strftime(v46, 0x1AuLL, "%Y-%m-%d %H:%M:%S%z", v30);
            fprintf(a2, "Detected %d compact crashes from %s to %s in total. compact crash rate %.2f/day\n");
          }
        }
      }
    }

    else
    {
      fwrite("No crash detected\n", 0x12uLL, 1uLL, a2);
    }

    close(v4);
    result = 0;
  }

LABEL_41:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void ScopeLogger::ScopeLogger(ScopeLogger *this, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  *this = a2;
  v4 = *__error();
  v5 = _SILogForLogForCategory(8);
  v6 = 2 * (dword_1EBF46AEC < 4);
  if (os_log_type_enabled(v5, v6))
  {
    LODWORD(v8.tv_sec) = 136315138;
    *(&v8.tv_sec + 4) = a2;
    _os_log_impl(&dword_1C278D000, v5, v6, "%s entry", &v8, 0xCu);
  }

  *__error() = v4;
  v8.tv_sec = 0;
  v8.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &v8);
  *(this + 1) = v8.tv_nsec + 1000000000 * v8.tv_sec;
  v7 = *MEMORY[0x1E69E9840];
}

void DocStore::DocStore(DocStore *this, int a2)
{
  v2 = *MEMORY[0x1E69E9840];
  *this = a2;
  *(this + 1) = -1;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 850045863;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  *(this + 15) = 1;
  operator new();
}

void DocStore::~DocStore(DocStore *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = v2[7];
    if (v3)
    {
      v2[8] = v3;
      operator delete(v3);
    }

    v4 = v2[4];
    if (v4)
    {
      v2[5] = v4;
      operator delete(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      v2[2] = v5;
      operator delete(v5);
    }

    MEMORY[0x1C691FEF0](v2, 0x1010C40CE421770);
  }

  v6 = *(this + 1);
  if ((v6 & 0x80000000) == 0)
  {
    close(v6);
  }

  v7 = *(this + 23);
  if (v7)
  {
    FileBackedBloomMap::unmap(*(this + 23));
    MEMORY[0x1C691FEF0](v7, 0x1010C4095F1AE09);
  }

  v8 = *(this + 44);
  if ((v8 & 0x80000000) == 0)
  {
    close(v8);
  }

  v9 = *(this + 21);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v10 = *(this + 19);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v11 = *(this + 17);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  std::mutex::~mutex((this + 40));
  v12 = *(this + 2);
  if (v12)
  {
    v13 = *(this + 3);
    v14 = *(this + 2);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 9);
        v13 -= 4;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = *(this + 2);
    }

    *(this + 3) = v12;
    operator delete(v14);
  }
}

void ScopeLogger::~ScopeLogger(ScopeLogger *this)
{
  v11 = *MEMORY[0x1E69E9840];
  *v10 = 0;
  *&v10[8] = 0;
  clock_gettime(_CLOCK_REALTIME, v10);
  v2 = *v10;
  v3 = *&v10[8];
  v4 = *__error();
  v5 = _SILogForLogForCategory(8);
  v6 = 2 * (dword_1EBF46AEC < 4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *this;
    v8 = (v3 + 1000000000 * v2 - *(this + 1)) * 0.000001;
    *v10 = 136315394;
    *&v10[4] = v7;
    *&v10[12] = 2048;
    *&v10[14] = v8;
    _os_log_impl(&dword_1C278D000, v5, v6, "%s exit; call took %.6fms", v10, 0x16u);
  }

  *__error() = v4;
  v9 = *MEMORY[0x1E69E9840];
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

DocStore *DocStore::init_file_backed_bloom_map(DocStore *this)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!*(this + 23))
  {
    v1 = this;
    strcpy(path, "tmp.XXXXXX");
    v2 = mkstempsat_np(*this, path, 0);
    if ((v2 & 0x80000000) == 0)
    {
      v3 = v2;
      unlinkat(*v1, path, 0);
      *(v1 + 44) = v3;
      *(v1 + 23) = 0;
      operator new();
    }

    v4 = *__error();
    v5 = *__error();
    v6 = _SILogForLogForCategory(8);
    v7 = dword_1EBF46AEC < 3;
    if (os_log_type_enabled(v6, (dword_1EBF46AEC < 3)))
    {
      v9 = 136315138;
      v10 = strerror(v4);
      _os_log_impl(&dword_1C278D000, v6, v7, "*warn* init_file_backed_bloom_map: mkstempsat_np: %s", &v9, 0xCu);
    }

    this = __error();
    *this = v5;
  }

  v8 = *MEMORY[0x1E69E9840];
  return this;
}

void std::vector<DocStore::ColdShardDescriptor>::push_back[abi:nn200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 59))
      {
        operator new();
      }

      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v11 = 32 * v7;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v11 + 24) = *(a2 + 12);
    v6 = 32 * v7 + 32;
    v13 = *a1;
    v12 = a1[1];
    v14 = 32 * v7 + *a1 - v12;
    if (*a1 != v12)
    {
      v15 = *a1;
      v16 = 32 * v7 + *a1 - v12;
      do
      {
        v17 = *v15;
        *(v16 + 16) = *(v15 + 16);
        *v16 = v17;
        *(v15 + 8) = 0;
        *(v15 + 16) = 0;
        *v15 = 0;
        *(v16 + 24) = *(v15 + 24);
        v15 += 32;
        v16 += 32;
      }

      while (v15 != v12);
      do
      {
        if (*(v13 + 23) < 0)
        {
          operator delete(*v13);
        }

        v13 += 4;
      }

      while (v13 != v12);
    }

    v18 = *a1;
    *a1 = v14;
    a1[1] = v6;
    a1[2] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v3 + 24) = *(a2 + 12);
    v6 = v3 + 32;
  }

  a1[1] = v6;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(char *a1, char *a2, uint64_t a3, char a4)
{
  v200 = *MEMORY[0x1E69E9840];
LABEL_2:
  v8 = a2 - 24;
  v193 = a2 - 48;
  v9 = a2 - 72;
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = a2 - v10;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    v13 = v12 - 2;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        goto LABEL_184;
      }

      if (v12 == 2)
      {
        if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 3, a1))
        {
          goto LABEL_184;
        }

LABEL_116:
        v129 = *a1;
        v197 = *(a1 + 2);
        v196 = v129;
        v130 = *v8;
        *(a1 + 2) = *(a2 - 1);
        *a1 = v130;
        v131 = v196;
        v132 = v197;
LABEL_117:
        *(a2 - 1) = v132;
        *v8 = v131;
        goto LABEL_184;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      v127 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 3, a1);
      v128 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 3, a1 + 3);
      if (v127)
      {
        if (v128)
        {
          goto LABEL_116;
        }

        v189 = *a1;
        v197 = *(a1 + 2);
        v196 = v189;
        *a1 = *(a1 + 24);
        *(a1 + 2) = *(a1 + 5);
        *(a1 + 24) = v196;
        *(a1 + 5) = v197;
        if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 3, a1 + 3))
        {
          v131 = *(a1 + 24);
          v196 = v131;
          v132 = *(a1 + 5);
          v197 = v132;
          v190 = *(a2 - 1);
          *(a1 + 24) = *v8;
          *(a1 + 5) = v190;
          goto LABEL_117;
        }

LABEL_184:
        v191 = *MEMORY[0x1E69E9840];
        return;
      }

      if (!v128)
      {
        goto LABEL_184;
      }

      v196 = *(a1 + 24);
      v179 = v196;
      v197 = *(a1 + 5);
      v180 = v197;
      v181 = *(a2 - 1);
      *(a1 + 24) = *v8;
      *(a1 + 5) = v181;
      *(a2 - 1) = v180;
      *v8 = v179;
LABEL_173:
      if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 3, a1))
      {
        v182 = *a1;
        v197 = *(a1 + 2);
        v196 = v182;
        *a1 = *(a1 + 24);
        *(a1 + 2) = *(a1 + 5);
        *(a1 + 24) = v196;
        *(a1 + 5) = v197;
      }

      goto LABEL_184;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a1 + 3, a1 + 6, a1 + 9);
      if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 3, a1 + 9))
      {
        goto LABEL_184;
      }

      v196 = *(a1 + 72);
      v119 = v196;
      v197 = *(a1 + 11);
      v120 = v197;
      v121 = *(a2 - 1);
      *(a1 + 72) = *v8;
      *(a1 + 11) = v121;
      *(a2 - 1) = v120;
      *v8 = v119;
      if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 9, a1 + 6))
      {
        goto LABEL_184;
      }

      v122 = *(a1 + 8);
      v123 = *(a1 + 3);
      *(a1 + 3) = *(a1 + 72);
      *(a1 + 8) = *(a1 + 11);
      *(a1 + 72) = v123;
      *(a1 + 11) = v122;
      if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 6, a1 + 3))
      {
        goto LABEL_184;
      }

      v124 = *(a1 + 5);
      v125 = *(a1 + 24);
      *(a1 + 24) = *(a1 + 3);
      *(a1 + 5) = *(a1 + 8);
      *(a1 + 3) = v125;
      *(a1 + 8) = v124;
      goto LABEL_173;
    }

LABEL_10:
    if (v11 <= 575)
    {
      v134 = a1 + 24;
      v136 = a1 == a2 || v134 == a2;
      if (a4)
      {
        if (!v136)
        {
          v137 = 0;
          v138 = a1;
          do
          {
            v139 = v138;
            v138 = v134;
            if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v134, v139))
            {
              v140 = *v138;
              v197 = *(v138 + 2);
              v196 = v140;
              *(v138 + 1) = 0;
              *(v138 + 2) = 0;
              *v138 = 0;
              v141 = v137;
              while (1)
              {
                v142 = &a1[v141];
                *(v142 + 24) = *&a1[v141];
                *(v142 + 5) = *&a1[v141 + 16];
                v142[23] = 0;
                *v142 = 0;
                if (!v141)
                {
                  break;
                }

                v141 -= 24;
                if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(&v196, &a1[v141]))
                {
                  v143 = &a1[v141 + 24];
                  goto LABEL_136;
                }
              }

              v143 = a1;
LABEL_136:
              v144 = v196;
              *(v143 + 16) = v197;
              *v143 = v144;
            }

            v134 = v138 + 24;
            v137 += 24;
          }

          while (v138 + 24 != a2);
        }
      }

      else if (!v136)
      {
        do
        {
          v183 = a1;
          a1 = v134;
          if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v134, v183))
          {
            v184 = *a1;
            v197 = *(a1 + 2);
            v196 = v184;
            *(a1 + 1) = 0;
            *(a1 + 2) = 0;
            *a1 = 0;
            v185 = a1;
            do
            {
              v186 = v185 - 24;
              *v185 = *(v185 - 24);
              *(v185 + 2) = *(v185 - 1);
              *(v185 - 1) = 0;
              *(v185 - 24) = 0;
              v187 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(&v196, v185 - 6);
              v185 = v186;
            }

            while (v187);
            v188 = v196;
            *(v186 + 2) = v197;
            *v186 = v188;
          }

          v134 = a1 + 24;
        }

        while (a1 + 24 != a2);
      }

      goto LABEL_184;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v194 = a2;
        v145 = v13 >> 1;
        v146 = v13 >> 1;
        do
        {
          v147 = v146;
          if (v145 >= v146)
          {
            v148 = (2 * v146) | 1;
            v149 = &a1[24 * v148];
            if (2 * v146 + 2 < v12 && std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(&a1[24 * v148], v149 + 3))
            {
              v149 += 24;
              v148 = 2 * v147 + 2;
            }

            v150 = &a1[24 * v147];
            if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v149, v150))
            {
              v151 = *v150;
              v197 = *(v150 + 2);
              v196 = v151;
              *(v150 + 1) = 0;
              *(v150 + 2) = 0;
              *v150 = 0;
              do
              {
                v152 = v149;
                v153 = *v149;
                *(v150 + 2) = *(v149 + 2);
                *v150 = v153;
                v149[23] = 0;
                *v149 = 0;
                if (v145 < v148)
                {
                  break;
                }

                v154 = (2 * v148) | 1;
                v149 = &a1[24 * v154];
                v155 = 2 * v148 + 2;
                if (v155 < v12 && std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(&a1[24 * v154], v149 + 3))
                {
                  v149 += 24;
                  v154 = v155;
                }

                v150 = v152;
                v148 = v154;
              }

              while (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v149, &v196));
              v156 = v196;
              *(v152 + 2) = v197;
              *v152 = v156;
            }
          }

          v146 = v147 - 1;
        }

        while (v147);
        v157 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
        v158 = v194;
        do
        {
          v159 = 0;
          v160 = v158;
          v192 = *a1;
          *&v198 = *(a1 + 1);
          *(&v198 + 7) = *(a1 + 15);
          v195 = a1[23];
          *(a1 + 1) = 0;
          *(a1 + 2) = 0;
          *a1 = 0;
          v161 = a1;
          do
          {
            v162 = &v161[24 * v159];
            v163 = v162 + 24;
            v164 = (2 * v159) | 1;
            v165 = 2 * v159 + 2;
            if (v165 < v157)
            {
              v166 = v162 + 48;
              if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v162 + 3, v162 + 6))
              {
                v163 = v166;
                v164 = v165;
              }
            }

            v167 = *v163;
            *(v161 + 2) = *(v163 + 2);
            *v161 = v167;
            v163[23] = 0;
            *v163 = 0;
            v161 = v163;
            v159 = v164;
          }

          while (v164 <= (v157 - 2) / 2);
          if (v163 == v160 - 24)
          {
            v158 = v160 - 24;
            *v163 = v192;
            v177 = *(&v198 + 7);
            *(v163 + 1) = v198;
            *(v163 + 15) = v177;
            v163[23] = v195;
          }

          else
          {
            v168 = *(v160 - 24);
            v158 = v160 - 24;
            *(v163 + 2) = *(v160 - 1);
            *v163 = v168;
            *(v160 - 3) = v192;
            v169 = v198;
            *(v160 - 9) = *(&v198 + 7);
            *(v160 - 2) = v169;
            *(v160 - 1) = v195;
            v170 = v163 - a1 + 24;
            if (v170 >= 25)
            {
              v171 = (-2 - 0x5555555555555555 * (v170 >> 3)) >> 1;
              v172 = &a1[24 * v171];
              if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v172, v163))
              {
                v173 = *v163;
                v197 = *(v163 + 2);
                v196 = v173;
                *(v163 + 1) = 0;
                *(v163 + 2) = 0;
                *v163 = 0;
                do
                {
                  v174 = v172;
                  v175 = *v172;
                  *(v163 + 2) = *(v172 + 2);
                  *v163 = v175;
                  v172[23] = 0;
                  *v172 = 0;
                  if (!v171)
                  {
                    break;
                  }

                  v171 = (v171 - 1) >> 1;
                  v172 = &a1[24 * v171];
                  v163 = v174;
                }

                while (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v172, &v196));
                v176 = v196;
                *(v174 + 2) = v197;
                *v174 = v176;
              }
            }
          }
        }

        while (v157-- > 2);
      }

      goto LABEL_184;
    }

    v14 = v12 >> 1;
    v15 = &a1[24 * (v12 >> 1)];
    if (v11 >= 0xC01)
    {
      v16 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v15, a1);
      v17 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 3, v15);
      if (v16)
      {
        if (v17)
        {
          v18 = *a1;
          v197 = *(a1 + 2);
          v196 = v18;
          v19 = *v8;
          *(a1 + 2) = *(a2 - 1);
          *a1 = v19;
        }

        else
        {
          v36 = *a1;
          v197 = *(a1 + 2);
          v196 = v36;
          v37 = *v15;
          *(a1 + 2) = *(v15 + 2);
          *a1 = v37;
          v38 = v196;
          *(v15 + 2) = v197;
          *v15 = v38;
          if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 3, v15))
          {
            goto LABEL_28;
          }

          v39 = *v15;
          v197 = *(v15 + 2);
          v196 = v39;
          v40 = *v8;
          *(v15 + 2) = *(a2 - 1);
          *v15 = v40;
        }

        v41 = v196;
        *(a2 - 1) = v197;
        *v8 = v41;
      }

      else if (v17)
      {
        v24 = *v15;
        v197 = *(v15 + 2);
        v196 = v24;
        v25 = *v8;
        *(v15 + 2) = *(a2 - 1);
        *v15 = v25;
        v26 = v196;
        *(a2 - 1) = v197;
        *v8 = v26;
        if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v15, a1))
        {
          v27 = *a1;
          v197 = *(a1 + 2);
          v196 = v27;
          v28 = *v15;
          *(a1 + 2) = *(v15 + 2);
          *a1 = v28;
          v29 = v196;
          *(v15 + 2) = v197;
          *v15 = v29;
        }
      }

LABEL_28:
      v42 = &a1[24 * v14 - 24];
      v43 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v42, a1 + 3);
      v44 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v193, v42);
      if (v43)
      {
        if (v44)
        {
          v196 = *(a1 + 24);
          v45 = v196;
          v197 = *(a1 + 5);
          v46 = v197;
          v47 = *(a2 - 4);
          *(a1 + 24) = *v193;
          *(a1 + 5) = v47;
          *(a2 - 4) = v46;
          *v193 = v45;
        }

        else
        {
          v196 = *(a1 + 24);
          v60 = v196;
          v197 = *(a1 + 5);
          v61 = v197;
          v62 = *&a1[24 * v14 - 8];
          *(a1 + 24) = *v42;
          *(a1 + 5) = v62;
          *&a1[24 * v14 - 8] = v61;
          *v42 = v60;
          if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v193, v42))
          {
            v63 = *v42;
            v197 = *&a1[24 * v14 - 8];
            v196 = v63;
            v64 = *v193;
            *&a1[24 * v14 - 8] = *(a2 - 4);
            *v42 = v64;
            v65 = v196;
            *(a2 - 4) = v197;
            *v193 = v65;
          }
        }
      }

      else if (v44)
      {
        v48 = *v42;
        v197 = *&a1[24 * v14 - 8];
        v196 = v48;
        v49 = *v193;
        *&a1[24 * v14 - 8] = *(a2 - 4);
        *v42 = v49;
        v50 = v196;
        *(a2 - 4) = v197;
        *v193 = v50;
        if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v42, a1 + 3))
        {
          v196 = *(a1 + 24);
          v51 = v196;
          v197 = *(a1 + 5);
          v52 = v197;
          v53 = *&a1[24 * v14 - 8];
          *(a1 + 24) = *v42;
          *(a1 + 5) = v53;
          *&a1[24 * v14 - 8] = v52;
          *v42 = v51;
        }
      }

      v66 = &a1[24 * v14];
      v67 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v66 + 3, a1 + 6);
      v68 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 9, v66 + 3);
      if (v67)
      {
        if (v68)
        {
          v69 = *(a1 + 3);
          v196 = v69;
          v70 = *(a1 + 8);
          v197 = v70;
          v71 = *(a2 - 7);
          *(a1 + 3) = *v9;
          *(a1 + 8) = v71;
        }

        else
        {
          v196 = *(a1 + 3);
          v78 = v196;
          v197 = *(a1 + 8);
          v79 = v197;
          v80 = *(v66 + 5);
          *(a1 + 3) = *(v66 + 24);
          *(a1 + 8) = v80;
          *(v66 + 5) = v79;
          *(v66 + 24) = v78;
          if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 9, v66 + 3))
          {
            goto LABEL_48;
          }

          v81 = *(v66 + 24);
          v197 = *(v66 + 5);
          v196 = v81;
          v82 = *v9;
          *(v66 + 5) = *(a2 - 7);
          *(v66 + 24) = v82;
          v69 = v196;
          v70 = v197;
        }

        *(a2 - 7) = v70;
        *v9 = v69;
      }

      else if (v68)
      {
        v72 = *(v66 + 24);
        v197 = *(v66 + 5);
        v196 = v72;
        v73 = *v9;
        *(v66 + 5) = *(a2 - 7);
        *(v66 + 24) = v73;
        v74 = v196;
        *(a2 - 7) = v197;
        *v9 = v74;
        if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v66 + 3, a1 + 6))
        {
          v196 = *(a1 + 3);
          v75 = v196;
          v197 = *(a1 + 8);
          v76 = v197;
          v77 = *(v66 + 5);
          *(a1 + 3) = *(v66 + 24);
          *(a1 + 8) = v77;
          *(v66 + 5) = v76;
          *(v66 + 24) = v75;
        }
      }

LABEL_48:
      v83 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v15, v42);
      v84 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v66 + 3, v15);
      if (!v83)
      {
        if (v84)
        {
          v86 = *v15;
          v197 = *(v15 + 2);
          v196 = v86;
          *v15 = *(v66 + 24);
          *(v15 + 2) = *(v66 + 5);
          v87 = v196;
          *(v66 + 5) = v197;
          *(v66 + 24) = v87;
          if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v15, v42))
          {
            v88 = *v42;
            v197 = *(v42 + 2);
            v196 = v88;
            *v42 = *v15;
            *(v42 + 2) = *(v15 + 2);
            v89 = v196;
            *(v15 + 2) = v197;
            *v15 = v89;
          }
        }

        goto LABEL_57;
      }

      if (v84)
      {
        v85 = *v42;
        v197 = *(v42 + 2);
        v196 = v85;
        *v42 = *(v66 + 24);
        *(v42 + 2) = *(v66 + 5);
      }

      else
      {
        v90 = *v42;
        v197 = *(v42 + 2);
        v196 = v90;
        *v42 = *v15;
        *(v42 + 2) = *(v15 + 2);
        v91 = v196;
        *(v15 + 2) = v197;
        *v15 = v91;
        if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v66 + 3, v15))
        {
LABEL_57:
          v94 = *a1;
          v197 = *(a1 + 2);
          v196 = v94;
          v95 = *v15;
          *(a1 + 2) = *(v15 + 2);
          *a1 = v95;
          v96 = v196;
          *(v15 + 2) = v197;
          *v15 = v96;
          goto LABEL_58;
        }

        v92 = *v15;
        v197 = *(v15 + 2);
        v196 = v92;
        *v15 = *(v66 + 24);
        *(v15 + 2) = *(v66 + 5);
      }

      v93 = v196;
      *(v66 + 5) = v197;
      *(v66 + 24) = v93;
      goto LABEL_57;
    }

    v20 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1, v15);
    v21 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 3, a1);
    if (!v20)
    {
      if (v21)
      {
        v30 = *a1;
        v197 = *(a1 + 2);
        v196 = v30;
        v31 = *v8;
        *(a1 + 2) = *(a2 - 1);
        *a1 = v31;
        v32 = v196;
        *(a2 - 1) = v197;
        *v8 = v32;
        if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1, v15))
        {
          v33 = *v15;
          v197 = *(v15 + 2);
          v196 = v33;
          v34 = *a1;
          *(v15 + 2) = *(a1 + 2);
          *v15 = v34;
          v35 = v196;
          *(a1 + 2) = v197;
          *a1 = v35;
        }
      }

      goto LABEL_58;
    }

    if (v21)
    {
      v22 = *v15;
      v197 = *(v15 + 2);
      v196 = v22;
      v23 = *v8;
      *(v15 + 2) = *(a2 - 1);
      *v15 = v23;
    }

    else
    {
      v54 = *v15;
      v197 = *(v15 + 2);
      v196 = v54;
      v55 = *a1;
      *(v15 + 2) = *(a1 + 2);
      *v15 = v55;
      v56 = v196;
      *(a1 + 2) = v197;
      *a1 = v56;
      if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 3, a1))
      {
        goto LABEL_58;
      }

      v57 = *a1;
      v197 = *(a1 + 2);
      v196 = v57;
      v58 = *v8;
      *(a1 + 2) = *(a2 - 1);
      *a1 = v58;
    }

    v59 = v196;
    *(a2 - 1) = v197;
    *v8 = v59;
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 - 3, a1))
    {
      v97 = *a1;
      v199 = *(a1 + 2);
      v198 = v97;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      *a1 = 0;
      v98 = a1;
      do
      {
        v99 = v98;
        v98 += 24;
      }

      while (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v98, &v198));
      v100 = a2;
      if (v99 == a1)
      {
        v100 = a2;
        do
        {
          if (v98 >= v100)
          {
            break;
          }

          v100 -= 24;
        }

        while (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v100, &v198));
      }

      else
      {
        do
        {
          v100 -= 24;
        }

        while (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v100, &v198));
      }

      v10 = v98;
      if (v98 < v100)
      {
        v101 = v100;
        do
        {
          v196 = *v10;
          v102 = v196;
          v197 = *(v10 + 2);
          v103 = v197;
          v104 = *(v101 + 2);
          *v10 = *v101;
          *(v10 + 2) = v104;
          *(v101 + 2) = v103;
          *v101 = v102;
          do
          {
            v10 += 24;
          }

          while (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v10, &v198));
          do
          {
            v101 -= 24;
          }

          while (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v101, &v198));
        }

        while (v10 < v101);
      }

      v105 = (v10 - 24);
      if (v10 - 24 == a1)
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*v105);
        }
      }

      else
      {
        if (a1[23] < 0)
        {
          operator delete(*a1);
        }

        v106 = *v105;
        *(a1 + 2) = *(v10 - 1);
        *a1 = v106;
        *(v10 - 1) = 0;
        *(v10 - 24) = 0;
      }

      v107 = v198;
      *(v10 - 1) = v199;
      *v105 = v107;
      if (v98 < v100)
      {
        goto LABEL_83;
      }

      v108 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(a1, v10 - 3);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(v10, a2))
      {
        a2 = v10 - 24;
        if (!v108)
        {
          goto LABEL_2;
        }

        goto LABEL_184;
      }

      if (!v108)
      {
LABEL_83:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(a1, v10 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v109 = *a1;
      v199 = *(a1 + 2);
      v198 = v109;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      *a1 = 0;
      if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(&v198, a2 - 3))
      {
        v10 = a1;
        do
        {
          v10 += 24;
        }

        while (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(&v198, v10));
      }

      else
      {
        v110 = a1 + 24;
        do
        {
          v10 = v110;
          if (v110 >= a2)
          {
            break;
          }

          v111 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(&v198, v110);
          v110 = v10 + 24;
        }

        while (!v111);
      }

      v112 = a2;
      if (v10 < a2)
      {
        v112 = a2;
        do
        {
          v112 -= 24;
        }

        while (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(&v198, v112));
      }

      while (v10 < v112)
      {
        v113 = *v10;
        v197 = *(v10 + 2);
        v196 = v113;
        v114 = *v112;
        *(v10 + 2) = *(v112 + 2);
        *v10 = v114;
        v115 = v196;
        *(v112 + 2) = v197;
        *v112 = v115;
        do
        {
          v10 += 24;
        }

        while (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(&v198, v10));
        do
        {
          v112 -= 24;
        }

        while (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(&v198, v112));
      }

      v116 = (v10 - 24);
      if (v10 - 24 == a1)
      {
        if (*(v10 - 1) < 0)
        {
          operator delete(*v116);
        }
      }

      else
      {
        if (a1[23] < 0)
        {
          operator delete(*a1);
        }

        v117 = *v116;
        *(a1 + 2) = *(v10 - 1);
        *a1 = v117;
        *(v10 - 1) = 0;
        *(v10 - 24) = 0;
      }

      a4 = 0;
      v118 = v198;
      *(v10 - 1) = v199;
      *v116 = v118;
    }
  }

  v133 = *MEMORY[0x1E69E9840];

  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
}

void std::__introsort<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,false>(uint64_t *a1, const void **a2, uint64_t a3, char a4)
{
  v312 = *MEMORY[0x1E69E9840];
LABEL_2:
  v7 = a1;
  while (1)
  {
    v8 = (a2 - v7) >> 5;
    if (v8 <= 2)
    {
      if (v8 < 2)
      {
        goto LABEL_524;
      }

      if (v8 == 2)
      {
        v127 = *(a2 - 4);
        v126 = (a2 - 4);
        v125 = v127;
        v128 = *(v7 + 23);
        v129 = *(v126 + 23);
        if (v129 >= 0)
        {
          v130 = *(v126 + 23);
        }

        else
        {
          v130 = *(v126 + 8);
        }

        if (v129 >= 0)
        {
          v131 = v126;
        }

        else
        {
          v131 = v125;
        }

        if (v128 >= 0)
        {
          v132 = *(v7 + 23);
        }

        else
        {
          v132 = *(v7 + 8);
        }

        if (v128 >= 0)
        {
          v133 = v7;
        }

        else
        {
          v133 = *v7;
        }

        if (v132 >= v130)
        {
          v134 = v130;
        }

        else
        {
          v134 = v132;
        }

        v135 = memcmp(v131, v133, v134);
        v136 = v130 < v132;
        if (v135)
        {
          v136 = v135 < 0;
        }

        if (v136)
        {
          v137 = *MEMORY[0x1E69E9840];

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(v7, v126);
          return;
        }

LABEL_524:
        v298 = *MEMORY[0x1E69E9840];
        return;
      }

      goto LABEL_10;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 4)
    {
      v124 = *MEMORY[0x1E69E9840];

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(v7, v7 + 32, v7 + 64, (a2 - 4));
      return;
    }

    if (v8 == 5)
    {
      v123 = *MEMORY[0x1E69E9840];

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(v7, v7 + 32, v7 + 64, v7 + 96, (a2 - 4));
      return;
    }

LABEL_10:
    if (v8 <= 23)
    {
      if (a4)
      {
        if (v7 != a2)
        {
          v139 = (v7 + 32);
          if ((v7 + 32) != a2)
          {
            v140 = 0;
            v141 = v7;
            do
            {
              v142 = v139;
              v143 = *(v141 + 23);
              v144 = *(v141 + 55);
              if (v144 >= 0)
              {
                v145 = *(v141 + 55);
              }

              else
              {
                v145 = v141[5];
              }

              if (v144 >= 0)
              {
                v146 = v139;
              }

              else
              {
                v146 = v141[4];
              }

              if (v143 >= 0)
              {
                v147 = *(v141 + 23);
              }

              else
              {
                v147 = v141[1];
              }

              if (v143 >= 0)
              {
                v148 = v141;
              }

              else
              {
                v148 = *v141;
              }

              if (v147 >= v145)
              {
                v149 = v145;
              }

              else
              {
                v149 = v147;
              }

              v150 = memcmp(v146, v148, v149);
              v151 = v145 < v147;
              if (v150)
              {
                v151 = v150 < 0;
              }

              if (v151)
              {
                v311 = 0;
                v152 = *v142;
                v310 = v142[2];
                v309 = v152;
                v142[1] = 0;
                v142[2] = 0;
                *v142 = 0;
                LOWORD(v311) = *(v141 + 28);
                if (v310 >= 0)
                {
                  v153 = HIBYTE(v310);
                }

                else
                {
                  v153 = *(&v309 + 1);
                }

                if (v310 >= 0)
                {
                  v154 = &v309;
                }

                else
                {
                  v154 = v309;
                }

                v155 = v140;
                while (1)
                {
                  v156 = v7 + v155;
                  if (*(v7 + v155 + 55) < 0)
                  {
                    operator delete(*(v156 + 32));
                  }

                  *(v156 + 32) = *v156;
                  *(v156 + 48) = *(v156 + 16);
                  *(v156 + 23) = 0;
                  *v156 = 0;
                  *(v156 + 56) = *(v156 + 24);
                  if (!v155)
                  {
                    break;
                  }

                  v157 = *(v7 + v155 - 9);
                  if (v157 >= 0)
                  {
                    v158 = *(v7 + v155 - 9);
                  }

                  else
                  {
                    v158 = *(v7 + v155 - 24);
                  }

                  if (v157 >= 0)
                  {
                    v159 = (v7 + v155 - 32);
                  }

                  else
                  {
                    v159 = *(v7 + v155 - 32);
                  }

                  if (v158 >= v153)
                  {
                    v160 = v153;
                  }

                  else
                  {
                    v160 = v158;
                  }

                  v161 = memcmp(v154, v159, v160);
                  v162 = v153 < v158;
                  if (v161)
                  {
                    v162 = v161 < 0;
                  }

                  v155 -= 32;
                  if (!v162)
                  {
                    v163 = v7 + v155 + 32;
                    goto LABEL_292;
                  }
                }

                v163 = v7;
LABEL_292:
                if (*(v163 + 23) < 0)
                {
                  operator delete(*v163);
                }

                v164 = v309;
                *(v163 + 16) = v310;
                *v163 = v164;
                *(v163 + 24) = v311;
              }

              v139 = v142 + 4;
              v140 += 32;
              v141 = v142;
            }

            while (v142 + 4 != a2);
          }
        }
      }

      else if (v7 != a2)
      {
        v270 = (v7 + 32);
        if ((v7 + 32) != a2)
        {
          v271 = (v7 + 56);
          do
          {
            v272 = v270;
            v273 = *(v7 + 23);
            v274 = *(v7 + 55);
            if (v274 >= 0)
            {
              v275 = *(v7 + 55);
            }

            else
            {
              v275 = *(v7 + 40);
            }

            if (v274 >= 0)
            {
              v276 = v270;
            }

            else
            {
              v276 = *(v7 + 32);
            }

            if (v273 >= 0)
            {
              v277 = *(v7 + 23);
            }

            else
            {
              v277 = *(v7 + 8);
            }

            if (v273 >= 0)
            {
              v278 = v7;
            }

            else
            {
              v278 = *v7;
            }

            if (v277 >= v275)
            {
              v279 = v275;
            }

            else
            {
              v279 = v277;
            }

            v280 = memcmp(v276, v278, v279);
            v281 = v275 < v277;
            if (v280)
            {
              v281 = v280 < 0;
            }

            if (v281)
            {
              v311 = 0;
              v282 = *v272;
              v310 = *(v272 + 16);
              v309 = v282;
              *(v272 + 8) = 0;
              *(v272 + 16) = 0;
              *v272 = 0;
              LOWORD(v311) = *(v7 + 56);
              if (v310 >= 0)
              {
                v283 = HIBYTE(v310);
              }

              else
              {
                v283 = *(&v309 + 1);
              }

              if (v310 >= 0)
              {
                v284 = &v309;
              }

              else
              {
                v284 = v309;
              }

              v285 = v271;
              do
              {
                v286 = (v285 - 12);
                if (*(v285 - 1) < 0)
                {
                  operator delete(*v286);
                }

                *v286 = *(v285 - 28);
                *(v285 - 1) = *(v285 - 5);
                *(v285 - 33) = 0;
                *(v285 - 56) = 0;
                v287 = v285 - 28;
                v288 = v285 - 16;
                *v285 = *(v285 - 16);
                v289 = *(v285 - 65);
                v290 = v285 - 44;
                v291 = *(v285 - 11);
                if (v289 >= 0)
                {
                  v292 = *(v285 - 65);
                }

                else
                {
                  v292 = *(v285 - 10);
                }

                if (v289 >= 0)
                {
                  v293 = v290;
                }

                else
                {
                  v293 = v291;
                }

                if (v292 >= v283)
                {
                  v294 = v283;
                }

                else
                {
                  v294 = v292;
                }

                v295 = memcmp(v284, v293, v294);
                v296 = v283 < v292;
                if (v295)
                {
                  v296 = v295 < 0;
                }

                v285 = v288;
              }

              while (v296);
              if (*(v287 + 23) < 0)
              {
                operator delete(*v287);
              }

              v297 = v309;
              *(v287 + 2) = v310;
              *v287 = v297;
              v287[12] = v311;
            }

            v270 = (v272 + 32);
            v271 += 16;
            v7 = v272;
          }

          while ((v272 + 32) != a2);
        }
      }

      goto LABEL_524;
    }

    v304 = a2;
    if (!a3)
    {
      if (v7 != a2)
      {
        v165 = (v8 - 2) >> 1;
        v166 = v165;
        v307 = v7;
        v302 = v165;
        do
        {
          v167 = v166;
          if (v165 >= v166)
          {
            v300 = v166;
            v168 = (2 * v166) | 1;
            v169 = v7 + 32 * v168;
            v170 = 2 * v166 + 2;
            if (v170 >= v8)
            {
              v181 = *v169;
            }

            else
            {
              v171 = *(v169 + 55);
              v172 = *(v169 + 32);
              v173 = *(v169 + 23);
              v299 = *v169;
              if (v173 >= 0)
              {
                v174 = *(v169 + 23);
              }

              else
              {
                v174 = *(v169 + 8);
              }

              if (v173 >= 0)
              {
                v175 = (v7 + 32 * v168);
              }

              else
              {
                v175 = *v169;
              }

              if (v171 >= 0)
              {
                v176 = *(v169 + 55);
              }

              else
              {
                v176 = *(v169 + 40);
              }

              if (v171 >= 0)
              {
                v177 = (v169 + 32);
              }

              else
              {
                v177 = *(v169 + 32);
              }

              if (v176 >= v174)
              {
                v178 = v174;
              }

              else
              {
                v178 = v176;
              }

              v179 = memcmp(v175, v177, v178);
              v180 = v174 < v176;
              if (v179)
              {
                v180 = v179 < 0;
              }

              v208 = !v180;
              v181 = v299;
              if (!v208)
              {
                v181 = v172;
                v169 += 32;
                v168 = v170;
              }
            }

            v167 = v300;
            v182 = v7 + 32 * v300;
            v183 = *(v182 + 23);
            v184 = *(v169 + 23);
            if (v184 >= 0)
            {
              v185 = *(v169 + 23);
            }

            else
            {
              v185 = *(v169 + 8);
            }

            if (v184 >= 0)
            {
              v186 = v169;
            }

            else
            {
              v186 = v181;
            }

            if (v183 >= 0)
            {
              v187 = *(v182 + 23);
            }

            else
            {
              v187 = *(v182 + 8);
            }

            if (v183 >= 0)
            {
              v188 = (v7 + 32 * v300);
            }

            else
            {
              v188 = *v182;
            }

            if (v187 >= v185)
            {
              v189 = v185;
            }

            else
            {
              v189 = v187;
            }

            v190 = memcmp(v186, v188, v189);
            v191 = v185 < v187;
            if (v190)
            {
              v191 = v190 < 0;
            }

            if (!v191)
            {
              v311 = 0;
              v192 = *v182;
              v310 = *(v182 + 16);
              v309 = v192;
              *(v182 + 8) = 0;
              *(v182 + 16) = 0;
              *v182 = 0;
              LOWORD(v311) = *(v182 + 24);
              do
              {
                v193 = v169;
                if (*(v182 + 23) < 0)
                {
                  operator delete(*v182);
                }

                v194 = *v169;
                *(v182 + 16) = *(v169 + 16);
                *v182 = v194;
                *(v169 + 23) = 0;
                *v169 = 0;
                *(v182 + 24) = *(v169 + 24);
                if (v165 < v168)
                {
                  break;
                }

                v195 = (2 * v168) | 1;
                v169 = v7 + 32 * v195;
                v168 = 2 * v168 + 2;
                if (v168 >= v8)
                {
                  v209 = *v169;
                  v168 = v195;
                }

                else
                {
                  v196 = *(v169 + 55);
                  v197 = *(v169 + 32);
                  v198 = *(v169 + 23);
                  v199 = *v169;
                  if (v198 >= 0)
                  {
                    v200 = *(v169 + 23);
                  }

                  else
                  {
                    v200 = *(v169 + 8);
                  }

                  if (v198 >= 0)
                  {
                    v201 = (v7 + 32 * v195);
                  }

                  else
                  {
                    v201 = *v169;
                  }

                  v202 = v8;
                  if (v196 >= 0)
                  {
                    v203 = *(v169 + 55);
                  }

                  else
                  {
                    v203 = *(v169 + 40);
                  }

                  if (v196 >= 0)
                  {
                    v204 = (v169 + 32);
                  }

                  else
                  {
                    v204 = *(v169 + 32);
                  }

                  if (v203 >= v200)
                  {
                    v205 = v200;
                  }

                  else
                  {
                    v205 = v203;
                  }

                  v206 = memcmp(v201, v204, v205);
                  v70 = v200 >= v203;
                  v165 = v302;
                  v8 = v202;
                  v7 = v307;
                  v207 = !v70;
                  if (v206)
                  {
                    v207 = v206 < 0;
                  }

                  v208 = !v207;
                  v209 = v207 ? v197 : v199;
                  if (v208)
                  {
                    v168 = v195;
                  }

                  else
                  {
                    v169 += 32;
                  }
                }

                v210 = *(v169 + 23);
                if (v210 >= 0)
                {
                  v211 = *(v169 + 23);
                }

                else
                {
                  v211 = *(v169 + 8);
                }

                if (v210 >= 0)
                {
                  v212 = v169;
                }

                else
                {
                  v212 = v209;
                }

                if (v310 >= 0)
                {
                  v213 = HIBYTE(v310);
                }

                else
                {
                  v213 = *(&v309 + 1);
                }

                if (v310 >= 0)
                {
                  v214 = &v309;
                }

                else
                {
                  v214 = v309;
                }

                if (v213 >= v211)
                {
                  v215 = v211;
                }

                else
                {
                  v215 = v213;
                }

                v216 = memcmp(v212, v214, v215);
                v217 = v211 < v213;
                if (v216)
                {
                  v217 = v216 < 0;
                }

                v182 = v193;
              }

              while (!v217);
              if (*(v193 + 23) < 0)
              {
                operator delete(*v193);
              }

              v218 = v309;
              *(v193 + 16) = v310;
              *v193 = v218;
              *(v193 + 24) = v311;
              v167 = v300;
            }
          }

          v166 = v167 - 1;
        }

        while (v167);
        v219 = v304;
        do
        {
          if (v8 >= 2)
          {
            v305 = v219;
            v220 = 0;
            v301 = *v7;
            *v308 = *(v7 + 8);
            *&v308[7] = *(v7 + 15);
            v303 = *(v7 + 23);
            *(v7 + 8) = 0;
            *(v7 + 16) = 0;
            *v7 = 0;
            v221 = *(v7 + 24);
            v222 = (v8 - 2) >> 1;
            v223 = v7;
            do
            {
              v224 = v223 + 32 * v220;
              v225 = (v224 + 32);
              v226 = (2 * v220) | 1;
              v220 = 2 * v220 + 2;
              if (v220 >= v8)
              {
                v220 = v226;
              }

              else
              {
                v229 = *(v224 + 64);
                v228 = v224 + 64;
                v227 = v229;
                v230 = *(v228 + 23);
                v231 = *(v228 - 9);
                if (v231 >= 0)
                {
                  v232 = *(v228 - 9);
                }

                else
                {
                  v232 = *(v228 - 24);
                }

                if (v231 >= 0)
                {
                  v233 = v225;
                }

                else
                {
                  v233 = *(v228 - 32);
                }

                v234 = v8;
                if (v230 >= 0)
                {
                  v235 = *(v228 + 23);
                }

                else
                {
                  v235 = *(v228 + 8);
                }

                if (v230 >= 0)
                {
                  v236 = v228;
                }

                else
                {
                  v236 = v227;
                }

                if (v235 >= v232)
                {
                  v237 = v232;
                }

                else
                {
                  v237 = v235;
                }

                v238 = memcmp(v233, v236, v237);
                v70 = v232 >= v235;
                v8 = v234;
                v7 = v307;
                v239 = !v70;
                if (v238)
                {
                  v239 = v238 < 0;
                }

                if (v239)
                {
                  v225 = v228;
                }

                else
                {
                  v220 = v226;
                }
              }

              if (*(v223 + 23) < 0)
              {
                operator delete(*v223);
              }

              v240 = *v225;
              *(v223 + 16) = v225[2];
              *v223 = v240;
              *(v225 + 23) = 0;
              *v225 = 0;
              *(v223 + 24) = *(v225 + 12);
              v223 = v225;
            }

            while (v220 <= v222);
            v219 = v305;
            v241 = (v305 - 4);
            v242 = *(v225 + 23);
            if (v225 == v305 - 4)
            {
              if (v242 < 0)
              {
                operator delete(*v225);
              }

              *v225 = v301;
              v225[1] = *v308;
              *(v225 + 15) = *&v308[7];
              *(v225 + 23) = v303;
              *(v225 + 12) = v221;
            }

            else
            {
              if (v242 < 0)
              {
                operator delete(*v225);
              }

              v243 = *v241;
              v225[2] = *(v305 - 2);
              *v225 = v243;
              *(v305 - 9) = 0;
              *(v305 - 32) = 0;
              *(v225 + 12) = *(v305 - 4);
              if (*(v305 - 9) < 0)
              {
                operator delete(*v241);
              }

              *(v305 - 4) = v301;
              *(v305 - 17) = *&v308[7];
              *(v305 - 3) = *v308;
              *(v305 - 9) = v303;
              *(v305 - 4) = v221;
              v244 = (v225 - v7 + 32) >> 5;
              v245 = v244 < 2;
              v246 = v244 - 2;
              if (!v245)
              {
                v247 = v246 >> 1;
                v248 = v7 + 32 * (v246 >> 1);
                v249 = *(v225 + 23);
                v250 = *(v248 + 23);
                if (v250 >= 0)
                {
                  v251 = *(v248 + 23);
                }

                else
                {
                  v251 = *(v248 + 8);
                }

                if (v250 >= 0)
                {
                  v252 = (v7 + 32 * (v246 >> 1));
                }

                else
                {
                  v252 = *v248;
                }

                if (v249 >= 0)
                {
                  v253 = *(v225 + 23);
                }

                else
                {
                  v253 = v225[1];
                }

                if (v249 >= 0)
                {
                  v254 = v225;
                }

                else
                {
                  v254 = *v225;
                }

                if (v253 >= v251)
                {
                  v255 = v251;
                }

                else
                {
                  v255 = v253;
                }

                v256 = memcmp(v252, v254, v255);
                v257 = v251 < v253;
                if (v256)
                {
                  v257 = v256 < 0;
                }

                if (v257)
                {
                  v311 = 0;
                  v258 = *v225;
                  v310 = v225[2];
                  v309 = v258;
                  v225[1] = 0;
                  v225[2] = 0;
                  *v225 = 0;
                  LOWORD(v311) = *(v225 + 12);
                  if (v310 >= 0)
                  {
                    v259 = HIBYTE(v310);
                  }

                  else
                  {
                    v259 = *(&v309 + 1);
                  }

                  if (v310 >= 0)
                  {
                    v260 = &v309;
                  }

                  else
                  {
                    v260 = v309;
                  }

                  do
                  {
                    v261 = v248;
                    if (*(v225 + 23) < 0)
                    {
                      operator delete(*v225);
                    }

                    v262 = *v248;
                    v225[2] = *(v248 + 16);
                    *v225 = v262;
                    *(v248 + 23) = 0;
                    *v248 = 0;
                    *(v225 + 12) = *(v248 + 24);
                    if (!v247)
                    {
                      break;
                    }

                    v247 = (v247 - 1) >> 1;
                    v248 = v7 + 32 * v247;
                    v263 = *(v248 + 23);
                    if (v263 >= 0)
                    {
                      v264 = *(v248 + 23);
                    }

                    else
                    {
                      v264 = *(v248 + 8);
                    }

                    if (v263 >= 0)
                    {
                      v265 = (v7 + 32 * v247);
                    }

                    else
                    {
                      v265 = *v248;
                    }

                    if (v259 >= v264)
                    {
                      v266 = v264;
                    }

                    else
                    {
                      v266 = v259;
                    }

                    v267 = memcmp(v265, v260, v266);
                    v268 = v264 < v259;
                    if (v267)
                    {
                      v268 = v267 < 0;
                    }

                    v225 = v261;
                  }

                  while (v268);
                  if (*(v261 + 23) < 0)
                  {
                    operator delete(*v261);
                  }

                  v269 = v309;
                  *(v261 + 16) = v310;
                  *v261 = v269;
                  *(v261 + 24) = v311;
                  v219 = v305;
                }
              }
            }
          }

          v219 -= 4;
          v245 = v8-- > 2;
        }

        while (v245);
      }

      goto LABEL_524;
    }

    v9 = v8 >> 1;
    v10 = v7 + 32 * (v8 >> 1);
    v11 = a2 - 4;
    if (v8 < 0x81)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>((v7 + 32 * (v8 >> 1)), v7, (a2 - 4));
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(v7, v7 + 32 * (v8 >> 1), (a2 - 4));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>((v7 + 32), v10 - 32, (a2 - 8));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>((v7 + 64), v7 + 32 + 32 * v9, (a2 - 12));
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>((v10 - 32), v7 + 32 * (v8 >> 1), v7 + 32 + 32 * v9);
      v12 = *v7;
      v13 = *(v7 + 8);
      *(&v309 + 7) = *(v7 + 15);
      *&v309 = v13;
      LOBYTE(v13) = *(v7 + 23);
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v14 = *(v7 + 24);
      v15 = *v10;
      *(v7 + 16) = *(v10 + 16);
      *v7 = v15;
      *(v10 + 23) = 0;
      *(v7 + 24) = *(v10 + 24);
      *v10 = v12;
      v16 = v309;
      *(v10 + 15) = *(&v309 + 7);
      *(v10 + 8) = v16;
      *(v10 + 23) = v13;
      *(v10 + 24) = v14;
    }

    --a3;
    if ((a4 & 1) == 0)
    {
      v17 = *(v7 + 23);
      v18 = *(v7 - 9);
      if (v18 >= 0)
      {
        v19 = *(v7 - 9);
      }

      else
      {
        v19 = *(v7 - 24);
      }

      if (v18 >= 0)
      {
        v20 = (v7 - 32);
      }

      else
      {
        v20 = *(v7 - 32);
      }

      if (v17 >= 0)
      {
        v21 = *(v7 + 23);
      }

      else
      {
        v21 = *(v7 + 8);
      }

      if (v17 >= 0)
      {
        v22 = v7;
      }

      else
      {
        v22 = *v7;
      }

      if (v21 >= v19)
      {
        v23 = v19;
      }

      else
      {
        v23 = v21;
      }

      v24 = memcmp(v20, v22, v23);
      v25 = v19 < v21;
      if (v24)
      {
        v25 = v24 < 0;
      }

      if (!v25)
      {
        v311 = 0;
        v72 = *v7;
        v310 = *(v7 + 16);
        v309 = v72;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        v73 = *(v7 + 24);
        LOWORD(v311) = v73;
        v74 = *(a2 - 9);
        v75 = *(a2 - 4);
        v76 = *(a2 - 3);
        v77 = a2;
        if (v310 >= 0)
        {
          v78 = HIBYTE(v310);
        }

        else
        {
          v78 = *(&v309 + 1);
        }

        if (v310 >= 0)
        {
          v79 = &v309;
        }

        else
        {
          v79 = v309;
        }

        if ((v74 & 0x80u) == 0)
        {
          v80 = v74;
        }

        else
        {
          v80 = v76;
        }

        if ((v74 & 0x80u) == 0)
        {
          v81 = v11;
        }

        else
        {
          v81 = v75;
        }

        if (v80 >= v78)
        {
          v82 = v78;
        }

        else
        {
          v82 = v80;
        }

        v83 = memcmp(v79, v81, v82);
        v84 = v78 < v80;
        if (v83)
        {
          v84 = v83 < 0;
        }

        if (v84)
        {
          v85 = (v7 + 32);
          do
          {
            v86 = *(v85 + 23);
            if (v86 >= 0)
            {
              v87 = *(v85 + 23);
            }

            else
            {
              v87 = v85[1];
            }

            if (v86 >= 0)
            {
              v88 = v85;
            }

            else
            {
              v88 = *v85;
            }

            if (v87 >= v78)
            {
              v89 = v78;
            }

            else
            {
              v89 = v87;
            }

            v90 = memcmp(v79, v88, v89);
            v91 = v78 < v87;
            if (v90)
            {
              v91 = v90 < 0;
            }

            v85 += 4;
          }

          while (!v91);
          a1 = (v85 - 4);
        }

        else
        {
          v92 = (v7 + 32);
          do
          {
            a1 = v92;
            if (v92 >= v77)
            {
              break;
            }

            v93 = *(v92 + 23);
            if (v93 >= 0)
            {
              v94 = *(v92 + 23);
            }

            else
            {
              v94 = v92[1];
            }

            if (v93 >= 0)
            {
              v95 = v92;
            }

            else
            {
              v95 = *v92;
            }

            if (v94 >= v78)
            {
              v96 = v78;
            }

            else
            {
              v96 = v94;
            }

            v97 = memcmp(v79, v95, v96);
            v98 = v97 < 0;
            if (!v97)
            {
              v98 = v78 < v94;
            }

            v92 = a1 + 4;
          }

          while (!v98);
        }

        v99 = v77;
        if (a1 < v77)
        {
          do
          {
            v100 = *(v11 + 23);
            if (v100 >= 0)
            {
              v101 = *(v11 + 23);
            }

            else
            {
              v101 = v11[1];
            }

            if (v100 >= 0)
            {
              v102 = v11;
            }

            else
            {
              v102 = *v11;
            }

            if (v101 >= v78)
            {
              v103 = v78;
            }

            else
            {
              v103 = v101;
            }

            v104 = memcmp(v79, v102, v103);
            v105 = v78 < v101;
            if (v104)
            {
              v105 = v104 < 0;
            }

            v11 -= 4;
          }

          while (v105);
          v99 = (v11 + 4);
        }

        while (a1 < v99)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a1, v99);
          v106 = a1 + 4;
          do
          {
            a1 = v106;
            v107 = *(v106 + 23);
            if ((v107 & 0x80u) == 0)
            {
              v108 = v107;
            }

            else
            {
              v108 = a1[1];
            }

            if ((v107 & 0x80u) == 0)
            {
              v109 = a1;
            }

            else
            {
              v109 = *a1;
            }

            if (v108 >= v78)
            {
              v110 = v78;
            }

            else
            {
              v110 = v108;
            }

            v111 = memcmp(v79, v109, v110);
            v112 = v111 < 0;
            if (!v111)
            {
              v112 = v78 < v108;
            }

            v106 = a1 + 4;
          }

          while (!v112);
          v113 = v99 - 4;
          do
          {
            v99 = v113;
            v114 = *(v113 + 23);
            if ((v114 & 0x80u) == 0)
            {
              v115 = v114;
            }

            else
            {
              v115 = v99[1];
            }

            if ((v114 & 0x80u) == 0)
            {
              v116 = v99;
            }

            else
            {
              v116 = *v99;
            }

            if (v115 >= v78)
            {
              v117 = v78;
            }

            else
            {
              v117 = v115;
            }

            v118 = memcmp(v79, v116, v117);
            v119 = v118 < 0;
            if (!v118)
            {
              v119 = v78 < v115;
            }

            v113 = v99 - 4;
          }

          while (v119);
        }

        v120 = (a1 - 4);
        a2 = v77;
        if (a1 - 4 != v7)
        {
          if (*(v7 + 23) < 0)
          {
            operator delete(*v7);
          }

          v121 = *v120;
          *(v7 + 16) = *(a1 - 2);
          *v7 = v121;
          *(a1 - 9) = 0;
          *(a1 - 32) = 0;
          *(v7 + 24) = *(a1 - 4);
        }

        if (*(a1 - 9) < 0)
        {
          operator delete(*v120);
        }

        a4 = 0;
        v122 = v309;
        *(a1 - 2) = v310;
        *v120 = v122;
        *(a1 - 4) = v73;
        goto LABEL_2;
      }
    }

    v26 = a3;
    v27 = 0;
    v311 = 0;
    v28 = *v7;
    v310 = *(v7 + 16);
    v309 = v28;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *v7 = 0;
    v29 = *(v7 + 24);
    LOWORD(v311) = v29;
    if (v310 >= 0)
    {
      v30 = HIBYTE(v310);
    }

    else
    {
      v30 = *(&v309 + 1);
    }

    if (v310 >= 0)
    {
      v31 = &v309;
    }

    else
    {
      v31 = v309;
    }

    do
    {
      v32 = *(v7 + v27 + 55);
      if (v32 >= 0)
      {
        v33 = *(v7 + v27 + 55);
      }

      else
      {
        v33 = *(v7 + v27 + 40);
      }

      if (v32 >= 0)
      {
        v34 = (v7 + v27 + 32);
      }

      else
      {
        v34 = *(v7 + v27 + 32);
      }

      if (v30 >= v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = v30;
      }

      v36 = memcmp(v34, v31, v35);
      v37 = v33 < v30;
      if (v36)
      {
        v37 = v36 < 0;
      }

      v27 += 32;
    }

    while (v37);
    v38 = v7 + v27;
    if (v7 + v27 - 32 == v7)
    {
      while (1)
      {
        v45 = (v11 + 4);
        if (v38 >= (v11 + 4))
        {
          break;
        }

        v46 = *(v11 + 23);
        if (v46 >= 0)
        {
          v47 = *(v11 + 23);
        }

        else
        {
          v47 = v11[1];
        }

        if (v46 >= 0)
        {
          v48 = v11;
        }

        else
        {
          v48 = *v11;
        }

        if (v30 >= v47)
        {
          v49 = v47;
        }

        else
        {
          v49 = v30;
        }

        v50 = memcmp(v48, v31, v49);
        v51 = v47 < v30;
        if (v50)
        {
          v51 = v50 < 0;
        }

        v11 -= 4;
        if (v51)
        {
          goto LABEL_79;
        }
      }
    }

    else
    {
      do
      {
        v39 = *(v11 + 23);
        if (v39 >= 0)
        {
          v40 = *(v11 + 23);
        }

        else
        {
          v40 = v11[1];
        }

        if (v39 >= 0)
        {
          v41 = v11;
        }

        else
        {
          v41 = *v11;
        }

        if (v30 >= v40)
        {
          v42 = v40;
        }

        else
        {
          v42 = v30;
        }

        v43 = memcmp(v41, v31, v42);
        v44 = v40 < v30;
        if (v43)
        {
          v44 = v43 < 0;
        }

        v11 -= 4;
      }

      while (!v44);
LABEL_79:
      v45 = (v11 + 4);
    }

    a1 = v38;
    if (v38 < v45)
    {
      v52 = v45;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a1, v52);
        v53 = a1 + 4;
        do
        {
          a1 = v53;
          v54 = *(v53 + 23);
          if ((v54 & 0x80u) == 0)
          {
            v55 = v54;
          }

          else
          {
            v55 = a1[1];
          }

          if ((v54 & 0x80u) == 0)
          {
            v56 = a1;
          }

          else
          {
            v56 = *a1;
          }

          if (v30 >= v55)
          {
            v57 = v55;
          }

          else
          {
            v57 = v30;
          }

          v58 = memcmp(v56, v31, v57);
          v59 = v58 < 0;
          if (!v58)
          {
            v59 = v55 < v30;
          }

          v53 = a1 + 4;
        }

        while (v59);
        v60 = v52 - 4;
        do
        {
          v52 = v60;
          v61 = *(v60 + 23);
          if ((v61 & 0x80u) == 0)
          {
            v62 = v61;
          }

          else
          {
            v62 = v52[1];
          }

          if ((v61 & 0x80u) == 0)
          {
            v63 = v52;
          }

          else
          {
            v63 = *v52;
          }

          if (v30 >= v62)
          {
            v64 = v62;
          }

          else
          {
            v64 = v30;
          }

          v65 = memcmp(v63, v31, v64);
          v66 = v65 < 0;
          if (!v65)
          {
            v66 = v62 < v30;
          }

          v60 = v52 - 4;
        }

        while (!v66);
      }

      while (a1 < v52);
    }

    v67 = (a1 - 4);
    a3 = v26;
    if (a1 - 4 != v7)
    {
      if (*(v7 + 23) < 0)
      {
        operator delete(*v7);
      }

      v68 = *v67;
      *(v7 + 16) = *(a1 - 2);
      *v7 = v68;
      *(a1 - 9) = 0;
      *(a1 - 32) = 0;
      *(v7 + 24) = *(a1 - 4);
    }

    if (*(a1 - 9) < 0)
    {
      operator delete(*v67);
    }

    v69 = v309;
    *(a1 - 2) = v310;
    *v67 = v69;
    *(a1 - 4) = v29;
    v70 = v38 >= v45;
    a2 = v304;
    if (!v70)
    {
      goto LABEL_121;
    }

    v71 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*>(v7, a1 - 4);
    if (!std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*>(a1, v304))
    {
      if (v71)
      {
        goto LABEL_2;
      }

LABEL_121:
      std::__introsort<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,false>(v7, a1 - 4, v26, a4 & 1);
      a4 = 0;
      goto LABEL_2;
    }

    a2 = (a1 - 4);
    if (v71)
    {
      goto LABEL_524;
    }
  }

  v138 = *MEMORY[0x1E69E9840];

  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(v7, v7 + 32, (a2 - 4));
}

void DocStore::do_cool_hot_shard(DocStore *this)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _SILogForLogForCategory(8);
  v4 = 2 * (dword_1EBF46AEC < 4);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(this + 1);
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_impl(&dword_1C278D000, v3, v4, "do_cool_hot_shard called with hotfd %d", buf, 8u);
  }

  *__error() = v2;
  operator new();
}

uint64_t DocStore::add_cold_shard_to_bloom_filter(DocStore *this, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2) + 32 * a2;
  if (*(v4 + 23) < 0)
  {
    v4 = *v4;
  }

  *v25 = 0;
  memset(&__p, 0, sizeof(__p));
  v5 = openat(*this, v4, 0);
  v6 = v5;
  if ((v5 & 0x80000000) != 0)
  {
    v13 = *__error();
    v8 = -v13;
    v9 = *__error();
    v10 = _SILogForLogForCategory(8);
    v11 = dword_1EBF46AEC < 3;
    if (os_log_type_enabled(v10, (dword_1EBF46AEC < 3)))
    {
      *buf = 136315394;
      v27 = v4;
      v28 = 2080;
      v29 = strerror(v13);
      v12 = "*warn* add_cold_shard_to_bloom_filter:  open(%s): %s";
      goto LABEL_21;
    }

LABEL_22:
    *__error() = v9;
    v14 = *v25;
    goto LABEL_23;
  }

  search_context_for_fd = cold_shard_create_search_context_for_fd(v5);
  if (search_context_for_fd)
  {
    v8 = search_context_for_fd;
    v9 = *__error();
    v10 = _SILogForLogForCategory(8);
    v11 = dword_1EBF46AEC < 3;
    if (os_log_type_enabled(v10, (dword_1EBF46AEC < 3)))
    {
      *buf = 136315394;
      v27 = v4;
      v28 = 2080;
      v29 = strerror(-v8);
      v12 = "*warn* add_cold_shard_to_bloom_filter:  create_search_context_for_fd(%s): %s";
LABEL_21:
      _os_log_impl(&dword_1C278D000, v10, v11, v12, buf, 0x16u);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v14 = *v25;
  document_index = cold_shard_get_document_index(*v25, &__p);
  if (document_index)
  {
    v8 = document_index;
    v9 = *__error();
    v10 = _SILogForLogForCategory(8);
    v11 = dword_1EBF46AEC < 3;
    if (os_log_type_enabled(v10, (dword_1EBF46AEC < 3)))
    {
      v16 = strerror(-v8);
      *buf = 136315394;
      v27 = v4;
      v28 = 2080;
      v29 = v16;
      v12 = "*warn* add_cold_shard_to_bloom_filter:  get_document_index(%s): %s";
      goto LABEL_21;
    }

    goto LABEL_22;
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

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v22[2] = ___ZN8DocStore30add_cold_shard_to_bloom_filterEi_block_invoke;
  v22[3] = &__block_descriptor_tmp_32;
  v22[4] = this;
  v23 = a2;
  v8 = cold_shard_document_index_iterate(p_p, size, v22);
  if (v8)
  {
    v9 = *__error();
    v10 = _SILogForLogForCategory(8);
    v11 = dword_1EBF46AEC < 3;
    if (os_log_type_enabled(v10, (dword_1EBF46AEC < 3)))
    {
      v19 = strerror(-v8);
      *buf = 136315394;
      v27 = v4;
      v28 = 2080;
      v29 = v19;
      v12 = "*warn* add_cold_shard_to_bloom_filter:  document_index_iterate(%s): %s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

LABEL_23:
  if (v14)
  {
    MEMORY[0x1C691FEF0](v14, 0x1000C4034A301B9);
  }

  if ((v6 & 0x80000000) == 0)
  {
    close(v6);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t DocStore::create(DocStore *this)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _SILogForLogForCategory(8);
  v4 = 2 * (dword_1EBF46AEC < 4);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *this;
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_impl(&dword_1C278D000, v3, v4, "Calling create for fd %d", buf, 8u);
  }

  *__error() = v2;
  DocStore::init_file_backed_bloom_map(this);
  __p[0] = 0;
  __p[1] = 0;
  v26 = 0;
  v6 = *this;
  std::string::basic_string[abi:nn200100]<0>(buf, "hot.");
  *(this + 1) = shard_file;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    shard_file = *(this + 1);
    if ((shard_file & 0x80000000) == 0)
    {
LABEL_5:
      v27 = 8;
      *buf = &v27;
      *&buf[8] = 8;
      v8 = pwritevall(shard_file, buf, 1, 0);
      if (v8)
      {
        v9 = v8;
        v10 = *__error();
        v11 = _SILogForLogForCategory(8);
        v12 = 2 * (dword_1EBF46AEC < 4);
        if (os_log_type_enabled(v11, v12))
        {
          v13 = *this;
          v14 = *(this + 1);
          v15 = __p;
          if (v26 < 0)
          {
            v15 = __p[0];
          }

          *buf = 67109890;
          *&buf[4] = v13;
          *&buf[8] = 1024;
          *&buf[10] = v14;
          *&buf[14] = 2080;
          *&buf[16] = v15;
          v29 = 1024;
          v30 = v9;
          _os_log_impl(&dword_1C278D000, v11, v12, "Error calling hot_shard_init for fd %d, hotfd %d, filename '%s': %d", buf, 0x1Eu);
        }

        *__error() = v10;
      }

      caching_hot_shard_alloc();
    }
  }

  else if ((shard_file & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v16 = *__error();
  v17 = _SILogForLogForCategory(8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v22 = *this;
    v21 = *(this + 1);
    if (v26 >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    v24 = *__error();
    *buf = 136316418;
    *&buf[4] = "create";
    *&buf[12] = 1024;
    *&buf[14] = 333;
    *&buf[18] = 1024;
    *&buf[20] = v22;
    v29 = 1024;
    v30 = v21;
    v31 = 2080;
    v32 = v23;
    v33 = 1024;
    v34 = v24;
    _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: Error calling mkstempsat_np for fd %d, hotfd %d, filename '%s': %d", buf, 0x2Eu);
  }

  *__error() = v16;
  v18 = -*__error();
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t anonymous namespace::create_shard_file(int a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (v3[23] < 0)
  {
    v3 = *v3;
  }

  return mkstempsat_np(a1, v3, 0);
}

void anonymous namespace::create_shard_filename(uint64_t a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  std::to_string(&v15, v4.__d_.__rep_);
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = std::string::insert(&v15, 0, v6, v7);
  v9 = v8->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = *&v8->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v16, ".XXXXXX");
  v11 = v10->__r_.__value_.__r.__words[0];
  v17[0] = v10->__r_.__value_.__l.__size_;
  *(v17 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
  v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  v13 = v17[0];
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 15) = *(v17 + 7);
  *(a2 + 23) = v12;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t ___ZN8DocStore30add_cold_shard_to_bloom_filterEi_block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 184))
  {
    v2 = FileBackedBloomMap::Update(*(*(a1 + 32) + 184), a2, *(a1 + 40));
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = 4294967282;
  }

  v3 = *__error();
  v4 = _SILogForLogForCategory(8);
  v5 = dword_1EBF46AEC < 3;
  if (os_log_type_enabled(v4, (dword_1EBF46AEC < 3)))
  {
    v8 = 136315138;
    v9 = strerror(-v2);
    _os_log_impl(&dword_1C278D000, v4, v5, "*warn* add_cold_shard_to_bloom_filter:  file_backed_bloom_map_update: %s", &v8, 0xCu);
  }

  *__error() = v3;
LABEL_8:
  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t ___ZN8DocStore17do_cool_hot_shardEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, size_t a5)
{
  v42 = *MEMORY[0x1E69E9840];
  ++**(a1 + 32);
  v7 = *(a1 + 40);
  v7[1] += a5;
  v8 = v7[3];
  v9 = v7[4];
  if (v8 >= v9)
  {
    v11 = v7[2];
    v12 = v8 - v11;
    v13 = (v8 - v11) >> 5;
    v14 = v13 + 1;
    if ((v13 + 1) >> 59)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v15 = v9 - v11;
    if (v15 >> 4 > v14)
    {
      v14 = v15 >> 4;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFE0)
    {
      v16 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (!(v16 >> 59))
      {
        operator new();
      }

      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v17 = v13;
    v18 = 32 * v13;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *v18 = a2;
    *(v18 + 24) = 0;
    v10 = 32 * v13 + 32;
    v19 = (v18 - 32 * v17);
    memcpy(v19, v11, v12);
    v7[2] = v19;
    v7[3] = v10;
    v7[4] = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = a2;
    v10 = v8 + 32;
    *(v8 + 24) = 0;
  }

  v7[3] = v10;
  if (*v7 > 4uLL)
  {
    fprintf(*MEMORY[0x1E69E9848], "logic error:  unknown compression type %llx\n", *v7);
    abort();
  }

  if (*v7 == 2)
  {
    v23 = v7[12];
    v23[1] += a5;
    v25 = v23[4];
    v24 = v23[5];
    if (v25 >= v24)
    {
      v27 = v23[3];
      v28 = v25 - v27;
      v29 = (v25 - v27) >> 3;
      v30 = v29 + 1;
      if ((v29 + 1) >> 61)
      {
        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v31 = v24 - v27;
      if (v31 >> 2 > v30)
      {
        v30 = v31 >> 2;
      }

      if (v31 >= 0x7FFFFFFFFFFFFFF8)
      {
        v32 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = v30;
      }

      if (v32)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<long long>>(v32);
      }

      v33 = (v25 - v27) >> 3;
      v34 = (8 * v29);
      v35 = (8 * v29 - 8 * v33);
      *v34 = a5;
      v26 = v34 + 1;
      memcpy(v35, v27, v28);
      v36 = v23[3];
      v23[3] = v35;
      v23[4] = v26;
      v23[5] = 0;
      if (v36)
      {
        operator delete(v36);
      }
    }

    else
    {
      *v25 = a5;
      v26 = v25 + 8;
    }

    v23[4] = v26;
    buf.iov_base = a4;
    buf.iov_len = a5;
    v20 = writevall(*v23, &buf, 1);
    if (v20)
    {
      v37 = *__error();
      v38 = _SILogForLogForCategory(8);
      v39 = dword_1EBF46AEC < 3;
      if (os_log_type_enabled(v38, (dword_1EBF46AEC < 3)))
      {
        v40 = strerror(-v20);
        LODWORD(buf.iov_base) = 136315138;
        *(&buf.iov_base + 4) = v40;
        _os_log_impl(&dword_1C278D000, v38, v39, "*warn* do_cool_hot_shard: cold_shard_first_pass_update_for_document: %s", &buf, 0xCu);
      }

      *__error() = v37;
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t ___ZN8DocStore17do_cool_hot_shardEv_block_invoke_27(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v5 = v4;
  v6 = v3;
  v49 = *MEMORY[0x1E69E9840];
  ++**(v1 + 32);
  v7 = *(v1 + 40);
  v9 = v7->__r_.__value_.__r.__words[2];
  data = v7[1].__r_.__value_.__l.__data_;
  if (data == v9)
  {
    v9 = v7[1].__r_.__value_.__l.__data_;
  }

  else
  {
    v10 = (data - v9) >> 5;
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[32 * (v10 >> 1)];
      v13 = *v12 < v2;
      if (*v12 == v2)
      {
        v13 = v12[24] != 0;
      }

      v14 = v12 + 32;
      v10 += ~(v10 >> 1);
      if (v13)
      {
        v9 = v14;
      }

      else
      {
        v10 = v11;
      }
    }

    while (v10);
  }

  if (data == v9)
  {
    __assert_rtn("cold_shard_second_pass_update_for_document", "ColdShard.cc", 200, "doc_meta != ctx->doc_metas.end()");
  }

  v15 = *(v1 + 48);
  v9[24] = 1;
  if (data != v9 + 32 && *(v9 + 4) == v2)
  {
    v16 = 0;
    goto LABEL_70;
  }

  v18 = v7 + 3;
  v17 = v7->__r_.__value_.__r.__words[0];
  if (v7->__r_.__value_.__l.__data_ > 1)
  {
    if (v17 == 2)
    {
      if (SHIBYTE(v7[3].__r_.__value_.__r.__words[2]) < 0)
      {
        *v7[3].__r_.__value_.__l.__data_ = 0;
        v7[3].__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        v7[3].__r_.__value_.__s.__data_[0] = 0;
        *(&v7[3].__r_.__value_.__s + 23) = 0;
      }

      v22 = v7[4].__r_.__value_.__l.__data_;
      v23 = MEMORY[0x1E69E9848];
      if (v22[16])
      {
        v16 = 4294967274;
      }

      else
      {
        bzero(__s, 0x10000uLL);
        *&v46 = v6;
        *(&v46 + 1) = v5;
        v47 = 0;
        v44 = __s;
        *__n = xmmword_1C2BFA350;
        ZSTD_CCtx_reset(*(v22 + 10), 1);
        v25 = v24;
        if (ZDICT_isError(v24))
        {
          v16 = 4294967284;
          v26 = "ZSTD_CCtx_reset: %s\n";
        }

        else
        {
          v26 = "ZSTD_compressStream2: %s\n";
          while (1)
          {
            v25 = ZSTD_compressStream2(*(v22 + 10), &v44, &v46, 2u);
            if (ZDICT_isError(v25))
            {
              break;
            }

            if (__n[1])
            {
              std::string::append(v7 + 3, __s, __n[1]);
              __n[1] = 0;
            }

            if (!v25 && v47 == *(&v46 + 1))
            {
              goto LABEL_29;
            }
          }

          v16 = 4294967274;
        }

        v34 = *v23;
        ErrorName = ZDICT_getErrorName(v25);
        fprintf(v34, v26, ErrorName);
      }

      v36 = *v23;
      v37 = strerror(-v16);
      fprintf(v36, "zstd_dict_compress_do: %s\n", v37);
    }

    else
    {
      if (v17 == 3)
      {
        if (SHIBYTE(v7[3].__r_.__value_.__r.__words[2]) < 0)
        {
          *v7[3].__r_.__value_.__l.__data_ = 0;
          v7[3].__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          v7[3].__r_.__value_.__s.__data_[0] = 0;
          *(&v7[3].__r_.__value_.__s + 23) = 0;
        }
      }

      else if (v17 != 4)
      {
LABEL_72:
        fprintf(*MEMORY[0x1E69E9848], "logic error:  unknown compression type %llx\n", v7->__r_.__value_.__r.__words[0]);
        abort();
      }

      v16 = 4294967194;
    }

    goto LABEL_67;
  }

  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_72;
    }

    if (SHIBYTE(v7[3].__r_.__value_.__r.__words[2]) < 0)
    {
      *v7[3].__r_.__value_.__l.__data_ = 0;
      v7[3].__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v7[3].__r_.__value_.__s.__data_[0] = 0;
      *(&v7[3].__r_.__value_.__s + 23) = 0;
    }

    v27 = cctx;
    if (!cctx)
    {
      zstd_compress_init();
      v27 = cctx;
    }

    bzero(__s, 0x10000uLL);
    *&v46 = v6;
    *(&v46 + 1) = v5;
    v47 = 0;
    v44 = __s;
    *__n = xmmword_1C2BFA350;
    ZSTD_CCtx_reset(v27, 1);
    v29 = v28;
    if (ZDICT_isError(v28))
    {
      v30 = "ZSTD_CCtx_reset: %s\n";
    }

    else
    {
      ZSTD_initCStream(cctx, 9);
      v29 = v31;
      if (ZDICT_isError(v31))
      {
        v30 = "ZSTD_initCStream: %s\n";
      }

      else
      {
        v30 = "ZSTD_compressStream2: %s\n";
        while (1)
        {
          v29 = ZSTD_compressStream2(cctx, &v44, &v46, 2u);
          if (ZDICT_isError(v29))
          {
            break;
          }

          if (__n[1])
          {
            std::string::append(v7 + 3, __s, __n[1]);
            __n[1] = 0;
          }

          if (!v29 && v47 == *(&v46 + 1))
          {
            goto LABEL_29;
          }
        }
      }
    }

    v32 = *MEMORY[0x1E69E9848];
    v33 = ZDICT_getErrorName(v29);
    fprintf(v32, v30, v33);
    v16 = 4294967284;
    goto LABEL_67;
  }

  MEMORY[0x1C691FAF0](&v7[3], v3, v4);
LABEL_29:
  size = SHIBYTE(v7[3].__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = v7[3].__r_.__value_.__l.__size_;
  }

  *(v9 + 2) = size;
  v9[25] = 1;
  v20 = v7[1].__r_.__value_.__r.__words[2];
  *(v9 + 1) = v20;
  v21 = SHIBYTE(v7[3].__r_.__value_.__r.__words[2]);
  if ((v21 & 0x8000000000000000) != 0)
  {
    v18 = v7[3].__r_.__value_.__l.__data_;
    v21 = v7[3].__r_.__value_.__l.__size_;
  }

  v7[1].__r_.__value_.__r.__words[2] = v20 + v21;
  __s[0].iov_base = v18;
  __s[0].iov_len = v21;
  v16 = writevall(v15, __s, 1);
  if (v16)
  {
LABEL_67:
    v38 = *__error();
    v39 = _SILogForLogForCategory(8);
    v40 = dword_1EBF46AEC < 3;
    if (os_log_type_enabled(v39, (dword_1EBF46AEC < 3)))
    {
      v41 = strerror(-v16);
      LODWORD(__s[0].iov_base) = 136315138;
      *(&__s[0].iov_base + 4) = v41;
      _os_log_impl(&dword_1C278D000, v39, v40, "*warn* do_cool_hot_shard: cold_shard_second_pass_update_for_document: %s", __s, 0xCu);
    }

    *__error() = v38;
  }

LABEL_70:
  v42 = *MEMORY[0x1E69E9840];
  return v16;
}

DocStore *DocStore::MarkDocPurgeableTillN(DocStore *this)
{
  v3 = (*(this + 3) - *(this + 2)) >> 5;
  if (v3 >= 1)
  {
    v15 = v1;
    v16 = v2;
    v4 = this;
    v5 = 0;
    v6 = *(this + 13);
    v7 = v3 + 1;
    v8 = 32 * v3 - 32;
    v9 = MEMORY[0x1E69E9C10];
    do
    {
      v10 = *(v4 + 2) + v8;
      if (*(v10 + 23) < 0)
      {
        v10 = *v10;
      }

      this = openat(*v4, v10, 0);
      if ((this & 0x80000000) == 0)
      {
        v11 = this;
        v14 = 0;
        if (!cold_shard_create_search_context_for_fd(this))
        {
          v6 += *(v14 + 48);
        }

        v5 |= v6 > 0x5005;
        if (v5)
        {
          v13 = 65541;
          if (ffsctl(v11, 0xC0084A44uLL, &v13, 0))
          {
            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              *v12 = 0;
              _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "TextStore - error: could not mark resource directory purgeable", v12, 2u);
            }
          }

          else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            *v12 = 0;
            _os_log_impl(&dword_1C278D000, v9, OS_LOG_TYPE_INFO, "TextStore - marked resources purgeable", v12, 2u);
          }
        }

        close(v11);
        this = v14;
        if (v14)
        {
          this = MEMORY[0x1C691FEF0](v14, 0x1000C4034A301B9);
        }
      }

      --v7;
      v8 -= 32;
    }

    while (v7 > 1);
  }

  return this;
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(uint64_t *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  *v8 = a1[1];
  *&v8[7] = *(a1 + 15);
  v4 = *(a1 + 23);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v5 = *(a1 + 12);
  v6 = *(a2 + 16);
  *a1 = *a2;
  a1[2] = v6;
  *(a2 + 23) = 0;
  *a2 = 0;
  *(a1 + 12) = *(a2 + 24);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v3;
  *(a2 + 8) = *v8;
  *(a2 + 15) = *&v8[7];
  *(a2 + 23) = v4;
  *(a2 + 24) = v5;
  v7 = *MEMORY[0x1E69E9840];
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(const void **a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 23);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  if (v7 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v6 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = a1[1];
  }

  if (v6 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(v9, v11, v12);
  if (v13)
  {
    v14 = v13 < 0;
  }

  else
  {
    v14 = v8 < v10;
  }

  v15 = *(a3 + 23);
  if (v15 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = *(a3 + 8);
  }

  if (v15 >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  if (v8 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v8;
  }

  v19 = memcmp(v17, v9, v18);
  v20 = v16 < v8;
  if (v19)
  {
    v20 = v19 < 0;
  }

  if (v14)
  {
    v21 = a1;
    if (v20)
    {
LABEL_51:
      v31 = a3;
LABEL_72:

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(v21, v31);
      return;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a1, a2);
    v22 = *(a2 + 23);
    v23 = *(a3 + 23);
    if (v23 >= 0)
    {
      v24 = *(a3 + 23);
    }

    else
    {
      v24 = *(a3 + 8);
    }

    if (v23 >= 0)
    {
      v25 = a3;
    }

    else
    {
      v25 = *a3;
    }

    if (v22 >= 0)
    {
      v26 = *(a2 + 23);
    }

    else
    {
      v26 = *(a2 + 8);
    }

    if (v22 >= 0)
    {
      v27 = a2;
    }

    else
    {
      v27 = *a2;
    }

    if (v26 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v26;
    }

    v29 = memcmp(v25, v27, v28);
    v30 = v24 < v26;
    if (v29)
    {
      v30 = v29 < 0;
    }

    if (v30)
    {
      v21 = a2;
      goto LABEL_51;
    }
  }

  else if (v20)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a2, a3);
    v32 = *(a1 + 23);
    v33 = *(a2 + 23);
    if (v33 >= 0)
    {
      v34 = *(a2 + 23);
    }

    else
    {
      v34 = *(a2 + 8);
    }

    if (v33 >= 0)
    {
      v35 = a2;
    }

    else
    {
      v35 = *a2;
    }

    if (v32 >= 0)
    {
      v36 = *(a1 + 23);
    }

    else
    {
      v36 = a1[1];
    }

    if (v32 >= 0)
    {
      v37 = a1;
    }

    else
    {
      v37 = *a1;
    }

    if (v36 >= v34)
    {
      v38 = v34;
    }

    else
    {
      v38 = v36;
    }

    v39 = memcmp(v35, v37, v38);
    v40 = v34 < v36;
    if (v39)
    {
      v40 = v39 < 0;
    }

    if (v40)
    {
      v21 = a1;
      v31 = a2;
      goto LABEL_72;
    }
  }
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(a1, a2, a3);
  v8 = *(a3 + 23);
  v9 = *(a4 + 23);
  if (v9 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = *(a4 + 8);
  }

  if (v9 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  if (v8 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  if (v8 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
  }

  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  v15 = memcmp(v11, v13, v14);
  v16 = v10 < v12;
  if (v15)
  {
    v16 = v15 < 0;
  }

  if (v16)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a3, a4);
    v17 = *(a2 + 23);
    v18 = *(a3 + 23);
    if (v18 >= 0)
    {
      v19 = *(a3 + 23);
    }

    else
    {
      v19 = *(a3 + 8);
    }

    if (v18 >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    if (v17 >= 0)
    {
      v21 = *(a2 + 23);
    }

    else
    {
      v21 = *(a2 + 8);
    }

    if (v17 >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    if (v21 >= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v21;
    }

    v24 = memcmp(v20, v22, v23);
    v25 = v19 < v21;
    if (v24)
    {
      v25 = v24 < 0;
    }

    if (v25)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a2, a3);
      v26 = *(a1 + 23);
      v27 = *(a2 + 23);
      if (v27 >= 0)
      {
        v28 = *(a2 + 23);
      }

      else
      {
        v28 = *(a2 + 8);
      }

      if (v27 >= 0)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a2;
      }

      if (v26 >= 0)
      {
        v30 = *(a1 + 23);
      }

      else
      {
        v30 = *(a1 + 8);
      }

      if (v26 >= 0)
      {
        v31 = a1;
      }

      else
      {
        v31 = *a1;
      }

      if (v30 >= v28)
      {
        v32 = v28;
      }

      else
      {
        v32 = v30;
      }

      v33 = memcmp(v29, v31, v32);
      v34 = v28 < v30;
      if (v33)
      {
        v34 = v33 < 0;
      }

      if (v34)
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a1, a2);
      }
    }
  }
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(a1, a2, a3, a4);
  v10 = *(a4 + 23);
  v11 = *(a5 + 23);
  if (v11 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = *(a5 + 8);
  }

  if (v11 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = *a5;
  }

  if (v10 >= 0)
  {
    v14 = *(a4 + 23);
  }

  else
  {
    v14 = *(a4 + 8);
  }

  if (v10 >= 0)
  {
    v15 = a4;
  }

  else
  {
    v15 = *a4;
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  v18 = v12 < v14;
  if (v17)
  {
    v18 = v17 < 0;
  }

  if (v18)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a4, a5);
    v19 = *(a3 + 23);
    v20 = *(a4 + 23);
    if (v20 >= 0)
    {
      v21 = *(a4 + 23);
    }

    else
    {
      v21 = *(a4 + 8);
    }

    if (v20 >= 0)
    {
      v22 = a4;
    }

    else
    {
      v22 = *a4;
    }

    if (v19 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = *(a3 + 8);
    }

    if (v19 >= 0)
    {
      v24 = a3;
    }

    else
    {
      v24 = *a3;
    }

    if (v23 >= v21)
    {
      v25 = v21;
    }

    else
    {
      v25 = v23;
    }

    v26 = memcmp(v22, v24, v25);
    v27 = v21 < v23;
    if (v26)
    {
      v27 = v26 < 0;
    }

    if (v27)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a3, a4);
      v28 = *(a2 + 23);
      v29 = *(a3 + 23);
      if (v29 >= 0)
      {
        v30 = *(a3 + 23);
      }

      else
      {
        v30 = *(a3 + 8);
      }

      if (v29 >= 0)
      {
        v31 = a3;
      }

      else
      {
        v31 = *a3;
      }

      if (v28 >= 0)
      {
        v32 = *(a2 + 23);
      }

      else
      {
        v32 = *(a2 + 8);
      }

      if (v28 >= 0)
      {
        v33 = a2;
      }

      else
      {
        v33 = *a2;
      }

      if (v32 >= v30)
      {
        v34 = v30;
      }

      else
      {
        v34 = v32;
      }

      v35 = memcmp(v31, v33, v34);
      v36 = v30 < v32;
      if (v35)
      {
        v36 = v35 < 0;
      }

      if (v36)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a2, a3);
        v37 = *(a1 + 23);
        v38 = *(a2 + 23);
        if (v38 >= 0)
        {
          v39 = *(a2 + 23);
        }

        else
        {
          v39 = *(a2 + 8);
        }

        if (v38 >= 0)
        {
          v40 = a2;
        }

        else
        {
          v40 = *a2;
        }

        if (v37 >= 0)
        {
          v41 = *(a1 + 23);
        }

        else
        {
          v41 = *(a1 + 8);
        }

        if (v37 >= 0)
        {
          v42 = a1;
        }

        else
        {
          v42 = *a1;
        }

        if (v41 >= v39)
        {
          v43 = v39;
        }

        else
        {
          v43 = v41;
        }

        v44 = memcmp(v40, v42, v43);
        v45 = v39 < v41;
        if (v44)
        {
          v45 = v44 < 0;
        }

        if (v45)
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a1, a2);
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*>(uint64_t a1, const void **a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v6 = (a2 - 4);
        v5 = *(a2 - 4);
        v7 = *(a1 + 23);
        v8 = *(a2 - 9);
        if (v8 >= 0)
        {
          v9 = *(a2 - 9);
        }

        else
        {
          v9 = *(a2 - 3);
        }

        if (v8 >= 0)
        {
          v10 = a2 - 4;
        }

        else
        {
          v10 = *(a2 - 4);
        }

        if (v7 >= 0)
        {
          v11 = *(a1 + 23);
        }

        else
        {
          v11 = *(a1 + 8);
        }

        if (v7 >= 0)
        {
          v12 = a1;
        }

        else
        {
          v12 = *a1;
        }

        if (v11 >= v9)
        {
          v13 = v9;
        }

        else
        {
          v13 = v11;
        }

        v14 = memcmp(v10, v12, v13);
        v15 = v9 < v11;
        if (v14)
        {
          v15 = v14 < 0;
        }

        if (v15)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<DocStore::ColdShardDescriptor *&,DocStore::ColdShardDescriptor *&>(a1, v6);
        }

        return 1;
      }

      goto LABEL_28;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(a1, a1 + 32, (a2 - 4));
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(a1, a1 + 32, a1 + 64, (a2 - 4));
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(a1, a1 + 32, a1 + 64, a1 + 96, (a2 - 4));
      return 1;
  }

LABEL_28:
  v16 = (a1 + 64);
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,DocStore::load(analytics::OpenEvent *,BOOL)::{lambda(DocStore::ColdShardDescriptor const&,DocStore::ColdShardDescriptor const&)#1} &,DocStore::ColdShardDescriptor*,0>(a1, a1 + 32, a1 + 64);
  v17 = (a1 + 96);
  if ((a1 + 96) == a2)
  {
    return 1;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v20 = *(v16 + 23);
    v21 = *(v17 + 23);
    if (v21 >= 0)
    {
      v22 = *(v17 + 23);
    }

    else
    {
      v22 = v17[1];
    }

    if (v21 >= 0)
    {
      v23 = v17;
    }

    else
    {
      v23 = *v17;
    }

    if (v20 >= 0)
    {
      v24 = *(v16 + 23);
    }

    else
    {
      v24 = v16[1];
    }

    if (v20 >= 0)
    {
      v25 = v16;
    }

    else
    {
      v25 = *v16;
    }

    if (v24 >= v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = v24;
    }

    v27 = memcmp(v23, v25, v26);
    v28 = v22 < v24;
    if (v27)
    {
      v28 = v27 < 0;
    }

    if (v28)
    {
      v41 = *v17;
      v42 = v17[2];
      v43 = 0;
      *v17 = 0;
      v17[1] = 0;
      v17[2] = 0;
      LOWORD(v43) = *(v17 + 12);
      v29 = v18;
      while (1)
      {
        v30 = a1 + v29;
        if (*(a1 + v29 + 119) < 0)
        {
          operator delete(*(v30 + 96));
        }

        *(v30 + 96) = *(v30 + 64);
        *(v30 + 112) = *(v30 + 80);
        *(v30 + 87) = 0;
        *(v30 + 64) = 0;
        *(v30 + 120) = *(v30 + 88);
        if (v29 == -64)
        {
          break;
        }

        v31 = *(a1 + v29 + 55);
        if (SHIBYTE(v42) >= 0)
        {
          v32 = HIBYTE(v42);
        }

        else
        {
          v32 = *(&v41 + 1);
        }

        if (SHIBYTE(v42) >= 0)
        {
          v33 = &v41;
        }

        else
        {
          v33 = v41;
        }

        if (v31 >= 0)
        {
          v34 = *(a1 + v29 + 55);
        }

        else
        {
          v34 = *(a1 + v29 + 40);
        }

        if (v31 >= 0)
        {
          v35 = (a1 + v29 + 32);
        }

        else
        {
          v35 = *(a1 + v29 + 32);
        }

        if (v34 >= v32)
        {
          v36 = v32;
        }

        else
        {
          v36 = v34;
        }

        v37 = memcmp(v33, v35, v36);
        v38 = v32 < v34;
        if (v37)
        {
          v38 = v37 < 0;
        }

        v29 -= 32;
        if (!v38)
        {
          v39 = a1 + v29 + 96;
          goto LABEL_72;
        }
      }

      v39 = a1;
LABEL_72:
      if (*(v39 + 23) < 0)
      {
        operator delete(*v39);
      }

      *v39 = v41;
      *(v39 + 16) = v42;
      *(v39 + 24) = v43;
      if (++v19 == 8)
      {
        return v17 + 4 == a2;
      }
    }

    v16 = v17;
    v18 += 32;
    v17 += 4;
    if (v17 == a2)
    {
      return 1;
    }
  }
}

BOOL std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(void *a1, void *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  if (v3 < 0)
  {
    a1 = *a1;
  }

  if (v2 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    return v7 < 0;
  }

  else
  {
    return v4 < v5;
  }
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(void *a1, void *a2, void *a3, void *a4)
{
  v8 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2, a1);
  v9 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a3, a2);
  if (v8)
  {
    if (v9)
    {
      v10 = a1[2];
      v11 = *a1;
      v12 = a3[2];
      *a1 = *a3;
      a1[2] = v12;
LABEL_9:
      *a3 = v11;
      a3[2] = v10;
      goto LABEL_10;
    }

    v19 = a1[2];
    v20 = *a1;
    v21 = a2[2];
    *a1 = *a2;
    a1[2] = v21;
    *a2 = v20;
    a2[2] = v19;
    if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a3, a2))
    {
      v10 = a2[2];
      v11 = *a2;
      v22 = a3[2];
      *a2 = *a3;
      a2[2] = v22;
      goto LABEL_9;
    }
  }

  else if (v9)
  {
    v13 = a2[2];
    v14 = *a2;
    v15 = a3[2];
    *a2 = *a3;
    a2[2] = v15;
    *a3 = v14;
    a3[2] = v13;
    if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2, a1))
    {
      v16 = a1[2];
      v17 = *a1;
      v18 = a2[2];
      *a1 = *a2;
      a1[2] = v18;
      *a2 = v17;
      a2[2] = v16;
    }
  }

LABEL_10:
  if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a4, a3))
  {
    v24 = a3[2];
    v25 = *a3;
    v26 = a4[2];
    *a3 = *a4;
    a3[2] = v26;
    *a4 = v25;
    a4[2] = v24;
    if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a3, a2))
    {
      v27 = a2[2];
      v28 = *a2;
      v29 = a3[2];
      *a2 = *a3;
      a2[2] = v29;
      *a3 = v28;
      a3[2] = v27;
      if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2, a1))
      {
        v30 = a1[2];
        result = *a1;
        v31 = a2[2];
        *a1 = *a2;
        a1[2] = v31;
        *a2 = result;
        a2[2] = v30;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *>(void *a1, void *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 3;
        v14 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 3, a1);
        v15 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v5, a1 + 3);
        if (v14)
        {
          if (!v15)
          {
            v33 = a1[2];
            v34 = *a1;
            *a1 = *(a1 + 3);
            a1[2] = a1[5];
            *(a1 + 3) = v34;
            a1[5] = v33;
            if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v5, a1 + 3))
            {
              return 1;
            }

            v16 = a1[5];
            v17 = *(a1 + 3);
            v35 = v5[2];
            *(a1 + 3) = *v5;
            a1[5] = v35;
            goto LABEL_16;
          }

LABEL_15:
          v16 = a1[2];
          v17 = *a1;
          v18 = v5[2];
          *a1 = *v5;
          a1[2] = v18;
LABEL_16:
          *v5 = v17;
          v5[2] = v16;
          return 1;
        }

        if (!v15)
        {
          return 1;
        }

        v24 = a1[5];
        v25 = *(a1 + 3);
        v26 = v5[2];
        *(a1 + 3) = *v5;
        a1[5] = v26;
        *v5 = v25;
        v5[2] = v24;
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
        return 1;
      case 5:
        v6 = a2 - 3;
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,0>(a1, a1 + 3, a1 + 6, a1 + 9);
        if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v6, a1 + 9))
        {
          return 1;
        }

        v7 = a1[11];
        v8 = *(a1 + 9);
        v9 = v6[2];
        *(a1 + 9) = *v6;
        a1[11] = v9;
        *v6 = v8;
        v6[2] = v7;
        if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 9, a1 + 6))
        {
          return 1;
        }

        v10 = a1[8];
        v11 = *(a1 + 3);
        *(a1 + 3) = *(a1 + 9);
        a1[8] = a1[11];
        *(a1 + 9) = v11;
        a1[11] = v10;
        if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 6, a1 + 3))
        {
          return 1;
        }

        v12 = a1[5];
        v13 = *(a1 + 3);
        *(a1 + 3) = *(a1 + 3);
        a1[5] = a1[8];
        *(a1 + 3) = v13;
        a1[8] = v12;
        break;
      default:
        goto LABEL_17;
    }

    if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 3, a1))
    {
      v27 = a1[2];
      v28 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v28;
      a1[5] = v27;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 3;
    if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a2 - 3, a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v19 = a1 + 6;
  v20 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 3, a1);
  v21 = std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 6, a1 + 3);
  if (v20)
  {
    if (v21)
    {
      v22 = a1[2];
      v23 = *a1;
      *a1 = *v19;
      a1[2] = a1[8];
    }

    else
    {
      v36 = a1[2];
      v37 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v37;
      a1[5] = v36;
      if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 6, a1 + 3))
      {
        goto LABEL_33;
      }

      v22 = a1[5];
      v23 = *(a1 + 3);
      *(a1 + 3) = *v19;
      a1[5] = a1[8];
    }

    *v19 = v23;
    a1[8] = v22;
  }

  else if (v21)
  {
    v29 = a1[5];
    v30 = *(a1 + 3);
    *(a1 + 3) = *v19;
    a1[5] = a1[8];
    *v19 = v30;
    a1[8] = v29;
    if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(a1 + 3, a1))
    {
      v31 = a1[2];
      v32 = *a1;
      *a1 = *(a1 + 3);
      a1[2] = a1[5];
      *(a1 + 3) = v32;
      a1[5] = v31;
    }
  }

LABEL_33:
  v38 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if (std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(v38, v19))
    {
      v45 = *v38;
      v46 = v38[2];
      v38[1] = 0;
      v38[2] = 0;
      *v38 = 0;
      v41 = v39;
      while (1)
      {
        v42 = a1 + v41;
        *(v42 + 72) = *(a1 + v41 + 48);
        *(v42 + 11) = *(a1 + v41 + 64);
        v42[71] = 0;
        v42[48] = 0;
        if (v41 == -48)
        {
          break;
        }

        v41 -= 24;
        if (!std::__less<void,void>::operator()[abi:nn200100]<std::string,std::string>(&v45, v42 + 3))
        {
          v43 = a1 + v41 + 72;
          goto LABEL_41;
        }
      }

      v43 = a1;
LABEL_41:
      *v43 = v45;
      *(v43 + 16) = v46;
      if (++v40 == 8)
      {
        return v38 + 3 == a2;
      }
    }

    v19 = v38;
    v39 += 24;
    v38 += 3;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__shared_ptr_pointer<analytics::SampledLogger<analytics::DeleteEvent> *,std::shared_ptr<analytics::SampledLogger<analytics::DeleteEvent>>::__shared_ptr_default_delete<analytics::SampledLogger<analytics::DeleteEvent>,analytics::SampledLogger<analytics::DeleteEvent>>,std::allocator<analytics::SampledLogger<analytics::DeleteEvent>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<analytics::SampledLogger<analytics::DeleteEvent> *,std::shared_ptr<analytics::SampledLogger<analytics::DeleteEvent>>::__shared_ptr_default_delete<analytics::SampledLogger<analytics::DeleteEvent>,analytics::SampledLogger<analytics::DeleteEvent>>,std::allocator<analytics::SampledLogger<analytics::DeleteEvent>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

uint64_t std::__shared_ptr_pointer<analytics::SampledLogger<analytics::PutEvent> *,std::shared_ptr<analytics::SampledLogger<analytics::PutEvent>>::__shared_ptr_default_delete<analytics::SampledLogger<analytics::PutEvent>,analytics::SampledLogger<analytics::PutEvent>>,std::allocator<analytics::SampledLogger<analytics::PutEvent>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<analytics::SampledLogger<analytics::PutEvent> *,std::shared_ptr<analytics::SampledLogger<analytics::PutEvent>>::__shared_ptr_default_delete<analytics::SampledLogger<analytics::PutEvent>,analytics::SampledLogger<analytics::PutEvent>>,std::allocator<analytics::SampledLogger<analytics::PutEvent>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

uint64_t std::__shared_ptr_pointer<analytics::SampledLogger<analytics::GetEvent> *,std::shared_ptr<analytics::SampledLogger<analytics::GetEvent>>::__shared_ptr_default_delete<analytics::SampledLogger<analytics::GetEvent>,analytics::SampledLogger<analytics::GetEvent>>,std::allocator<analytics::SampledLogger<analytics::GetEvent>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<analytics::SampledLogger<analytics::GetEvent> *,std::shared_ptr<analytics::SampledLogger<analytics::GetEvent>>::__shared_ptr_default_delete<analytics::SampledLogger<analytics::GetEvent>,analytics::SampledLogger<analytics::GetEvent>>,std::allocator<analytics::SampledLogger<analytics::GetEvent>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void doc_store_close(DocStore *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *__str = 0u;
  v5 = 0u;
  snprintf(__str, 0x200uLL, "doc_store_close(%p)", a1);
  v3[0] = 0;
  v3[1] = 0;
  ScopeLogger::ScopeLogger(v3, __str);
  if (a1)
  {
    DocStore::~DocStore(a1);
    MEMORY[0x1C691FEF0]();
  }

  ScopeLogger::~ScopeLogger(v3);
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t doc_store_get_document(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *__str = 0u;
  v14 = 0u;
  snprintf(__str, 0x200uLL, "doc_store_get_document(%p, %lld, %zd)", a1, a2, 0x3E8uLL);
  v10[0] = 0;
  v10[1] = 0;
  ScopeLogger::ScopeLogger(v10, __str);
  if (a1)
  {
    v12 = a2;
    v11 = 0;
    *buf = MEMORY[0x1E69E9820];
    v46 = 0x40000000;
    v47 = ___ZN8DocStore11GetDocumentExmPcPm_block_invoke;
    v48 = &__block_descriptor_tmp_34;
    v49 = 1000;
    v50 = a3;
    v51 = a4;
    v52 = &v11;
    DocStore::GetDocumentsBulk(a1);
  }

  ScopeLogger::~ScopeLogger(v10);
  v8 = *MEMORY[0x1E69E9840];
  return 4294967282;
}

uint64_t ___ZN8DocStore11GetDocumentExmPcPm_block_invoke(uint64_t a1, int a2, void *__src, size_t a4)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v6 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = v6;
  }

  memcpy(v5, __src, v7);
  v8 = *(a1 + 56);
  **(a1 + 48) = v7;
  *v8 = 1;
  return 0;
}

void DocStore::GetDocumentsBulk(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v5 = v2;
  v3 = v1;
  v7 = *MEMORY[0x1E69E9840];
  std::mutex::lock((v1 + 40));
  v4 = *(v3 + 136);
  v6 = *(v3 + 128);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

uint64_t ___ZN8DocStore16GetDocumentsBulkEiPKxU13block_pointerFixPKcmE_block_invoke(void *a1, unint64_t a2)
{
  v3 = a1[5];
  v4 = v3[1];
  if (v4)
  {
    v5 = vcnt_s8(v4);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = a2;
      if (*&v4 <= a2)
      {
        v6 = a2 % *&v4;
      }
    }

    else
    {
      v6 = (*&v4 - 1) & a2;
    }

    v7 = *v3;
    v8 = *(*v3 + 8 * v6);
    if (v8)
    {
      v9 = *v8;
      if (*v8)
      {
        v10 = *&v4 - 1;
        do
        {
          v11 = v9[1];
          if (v11 == a2)
          {
            if (v9[2] == a2)
            {
              v12 = v9[1];
              if (v5.u32[0] > 1uLL)
              {
                if (v12 >= *&v4)
                {
                  v12 %= *&v4;
                }
              }

              else
              {
                v12 &= v10;
              }

              v13 = *(v7 + 8 * v12);
              do
              {
                v14 = v13;
                v13 = *v13;
              }

              while (v13 != v9);
              if (v14 == v3 + 2)
              {
                goto LABEL_36;
              }

              v15 = v14[1];
              if (v5.u32[0] > 1uLL)
              {
                if (v15 >= *&v4)
                {
                  v15 %= *&v4;
                }
              }

              else
              {
                v15 &= v10;
              }

              if (v15 != v12)
              {
LABEL_36:
                if (!*v9)
                {
                  goto LABEL_37;
                }

                v16 = *(*v9 + 8);
                if (v5.u32[0] > 1uLL)
                {
                  if (v16 >= *&v4)
                  {
                    v16 %= *&v4;
                  }
                }

                else
                {
                  v16 &= v10;
                }

                if (v16 != v12)
                {
LABEL_37:
                  *(v7 + 8 * v12) = 0;
                }
              }

              v17 = *v9;
              if (*v9)
              {
                v18 = *(v17 + 8);
                if (v5.u32[0] > 1uLL)
                {
                  if (v18 >= *&v4)
                  {
                    v18 %= *&v4;
                  }
                }

                else
                {
                  v18 &= v10;
                }

                if (v18 != v12)
                {
                  *(*v3 + 8 * v18) = v14;
                  v17 = *v9;
                }
              }

              *v14 = v17;
              *v9 = 0;
              --v3[3];
              operator delete(v9);
              break;
            }
          }

          else
          {
            if (v5.u32[0] > 1uLL)
            {
              if (v11 >= *&v4)
              {
                v11 %= *&v4;
              }
            }

            else
            {
              v11 &= v10;
            }

            if (v11 != v6)
            {
              break;
            }
          }

          v9 = *v9;
        }

        while (v9);
      }
    }
  }

  (*(a1[4] + 16))();
  v19 = a1[6];
  if ((*(v19 + 56) & 1) == 0)
  {
    v21 = std::__throw_bad_optional_access[abi:nn200100]();
    DocStore::PutDocument(v21, v22, v23);
  }

  ++*(v19 + 48);
  return 0;
}

void DocStore::PutDocument(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v8 = *MEMORY[0x1E69E9840];
  *&v7[1] = a2;
  v7[0] = 0;
  std::mutex::lock((a1 + 40));
  v4 = *(a1 + 152);
  v6 = *(a1 + 144);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void DocStore::DeleteDocumentsBulk(DocStore *this, int a2, const uint64_t *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  std::mutex::lock((this + 40));
  v5 = 0u;
  v6 = 0u;
  v4 = *(this + 21);
  *buf = *(this + 20);
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    analytics::ScopedLogger<analytics::DeleteEvent>::ScopedLogger();
  }

  analytics::ScopedLogger<analytics::DeleteEvent>::ScopedLogger();
}

uint64_t DocStore::do_delete_bulk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v84 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = *v8;
    v79 = 1065353216;
    memset(v78, 0, sizeof(v78));
    v77 = 0;
    if (a3 >= 1)
    {
      v10 = a3;
      v11 = a2;
      do
      {
        v12 = *v11++;
        std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(v78, v12);
        --v10;
      }

      while (v10);
    }

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 1174405120;
    *&buf[16] = __hot_shard_delete_docs_block_invoke;
    v81 = &__block_descriptor_tmp_3_9288;
    std::unordered_set<long long>::unordered_set(v82, v78);
    v83 = v9;
    v82[5] = &v77;
    v13 = hot_shard_for_each_region(v9);
    std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(v82);
    a1 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(v78);
    if (v13)
    {
      v14 = *v8;
      *(v8 + 2) = *(v8 + 1);
      *(v8 + 5) = *(v8 + 4);
      *(v8 + 8) = *(v8 + 7);
      *v8 = -1;
      a1 = CachingHotShard::Bind(v8, v14);
    }

    else
    {
      if (a3 >= 1)
      {
        v15 = 0;
        v16 = *(v8 + 1);
        v17 = *(v8 + 2);
        do
        {
          if (((v17 - v16) >> 3) >= 1)
          {
            v18 = 0;
            while (*(v16 + 8 * v18) != *(a2 + 8 * v15))
            {
              if ((((v17 - v16) >> 3) & 0x7FFFFFFF) == ++v18)
              {
                goto LABEL_16;
              }
            }

            v19 = *(v17 - 8);
            v17 -= 8;
            *(v16 + 8 * v18) = v19;
            *(v8 + 2) = v17;
            v20 = *(v8 + 5);
            *(*(v8 + 4) + 8 * v18) = *(v20 - 8);
            *(v8 + 5) = v20 - 8;
            v21 = *(v8 + 8);
            *(*(v8 + 7) + 8 * v18) = *(v21 - 8);
            *(v8 + 8) = v21 - 8;
          }

LABEL_16:
          ++v15;
        }

        while (v15 != a3);
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = 4294967282;
  }

  v22 = *(v7 + 24) - *(v7 + 16);
  if (v22)
  {
    v74 = v13;
    v71 = a4;
    v69 = &v68;
    v23 = (v22 >> 5) + 7;
    v24 = v23 >> 3;
    v25 = MEMORY[0x1EEE9AC00](a1);
    v26 = &v68 - (((v23 >> 3) + 15) & 0x3FFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v25);
    v28 = &v68 - v27;
    bzero(&v68 - v27, v23 >> 3);
    bzero(v26, v23 >> 3);
    v73 = a3;
    if (a3 >= 1)
    {
      v30 = 0;
      v31 = (v23 >> 3) & 0x7FFFFFFF;
      v32 = v73;
      do
      {
        v33 = *(a2 + 8 * v30);
        v34 = (((*(v7 + 24) - *(v7 + 16)) >> 5) + 7) >> 3;
        memset(v28, 255, v34);
        v35 = *(v7 + 184);
        if (v35)
        {
          FileBackedBloomMap::CalcMayContainBitset(v35, v33, v28, v34);
        }

        v36 = v28;
        v37 = v26;
        v38 = v31;
        if (v24 >= 1)
        {
          do
          {
            v39 = *v36++;
            *v37++ |= v39;
            --v38;
          }

          while (v38);
        }

        ++v30;
      }

      while (v30 != v32);
    }

    v40 = (*(v7 + 24) - *(v7 + 16)) >> 5;
    if (v40 >= 1)
    {
      v70 = v73;
      v41 = 32 * v40 - 32;
      *&v29 = 136315394;
      v68 = v29;
      *&v29 = 136315138;
      v72 = v29;
      while (1)
      {
        v42 = v40 - 1;
        v43 = *(v7 + 16);
        v44 = (v43 + v41);
        if (*(v43 + v41 + 25) & 1) == 0 && (v44[24] != 1 || ((v26[v42 >> 3] >> ((v40 - 1) & 7))))
        {
          break;
        }

LABEL_53:
        v41 -= 32;
        v40 = v42;
        if (v42 + 1 <= 1)
        {
          goto LABEL_58;
        }
      }

      v45 = v43 + v41;
      v46 = (v43 + v41);
      if (*(v43 + v41 + 23) < 0)
      {
        v46 = *v44;
      }

      v47 = openat(*v7, v46, 2, v68, *(&v68 + 1));
      if ((v47 & 0x80000000) != 0)
      {
        v56 = *__error();
        if (v56 != 2)
        {
          LODWORD(v73) = *__error();
          v57 = _SILogForLogForCategory(8);
          v58 = dword_1EBF46AEC < 3;
          if (os_log_type_enabled(v57, (dword_1EBF46AEC < 3)))
          {
            if (*(v45 + 23) < 0)
            {
              v44 = *v44;
            }

            v59 = strerror(v56);
            *buf = v68;
            *&buf[4] = v44;
            *&buf[12] = 2080;
            *&buf[14] = v59;
            _os_log_impl(&dword_1C278D000, v57, v58, "*warn* open(%s, RDWR): %s\n", buf, 0x16u);
          }

          *__error() = v73;
        }

        goto LABEL_53;
      }

      v48 = v47;
      *&v78[0] = 0;
      search_context_for_fd = cold_shard_create_search_context_for_fd(v47);
      if (search_context_for_fd)
      {
        v50 = search_context_for_fd;
        v51 = *__error();
        v52 = _SILogForLogForCategory(8);
        v53 = dword_1EBF46AEC < 3;
        if (os_log_type_enabled(v52, (dword_1EBF46AEC < 3)))
        {
          v54 = strerror(-v50);
          *buf = v72;
          *&buf[4] = v54;
          _os_log_impl(&dword_1C278D000, v52, v53, "*warn* cold_shard_create_search_context_for_fd: %s\n", buf, 0xCu);
        }

        *__error() = v51;
        v55 = *&v78[0];
        if (!*&v78[0])
        {
          goto LABEL_50;
        }
      }

      else
      {
        v76 = 0u;
        v75 = 0u;
        v55 = *&v78[0];
        v60 = cold_shard_delete_docs(*&v78[0], v70, a2, &v75);
        if (v60)
        {
          v50 = v60;
          LODWORD(v73) = *__error();
          v61 = _SILogForLogForCategory(8);
          v62 = dword_1EBF46AEC < 3;
          if (os_log_type_enabled(v61, (dword_1EBF46AEC < 3)))
          {
            v63 = strerror(-v50);
            *buf = v72;
            *&buf[4] = v63;
            _os_log_impl(&dword_1C278D000, v61, v62, "*warn* cold_shard_delete_docs: %s\n", buf, 0xCu);
          }

          *__error() = v73;
          if (!v55)
          {
            goto LABEL_50;
          }
        }

        else
        {
          if ((*(v71 + 56) & 1) == 0)
          {
            goto LABEL_65;
          }

          v65 = *(&v76 + 1);
          *(v71 + 48) += v76;
          DocStore::doColdShardCompaction(v7, v42, v65);
          v50 = 0;
          if (!v55)
          {
            goto LABEL_50;
          }
        }
      }

      MEMORY[0x1C691FEF0](v55, 0x1000C4034A301B9);
LABEL_50:
      close(v48);
      v64 = v74;
      if (v50)
      {
        v64 = v50;
      }

      v74 = v64;
      goto LABEL_53;
    }

LABEL_58:
    a4 = v71;
    v13 = v74;
  }

  if ((*(a4 + 24) & 1) == 0)
  {
    goto LABEL_65;
  }

  if (*(a4 + 16) == -1)
  {
    if (*(a4 + 40) & 1) != 0 && (*(a4 + 56))
    {
      *(a4 + 16) = *(a4 + 48) + *(a4 + 32);
      goto LABEL_64;
    }

LABEL_65:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

LABEL_64:
  v66 = *MEMORY[0x1E69E9840];
  return v13;
}

int *DocStore::doColdShardCompaction(int *result, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v4 = *(result + 2) + 32 * a2;
    *(v4 + 25) = 1;
    if (*(v4 + 23) < 0)
    {
      v4 = *v4;
    }

    result = unlink(v4);
    if (result)
    {
      result = __error();
      v5 = *result;
      if (*result != 2)
      {
        v6 = *__error();
        v7 = _SILogForLogForCategory(8);
        v8 = dword_1EBF46AEC < 3;
        if (os_log_type_enabled(v7, (dword_1EBF46AEC < 3)))
        {
          v9 = 136315394;
          v10 = v4;
          v11 = 2080;
          v12 = strerror(v5);
          _os_log_impl(&dword_1C278D000, v7, v8, "*warn* unlink(%s): %s", &v9, 0x16u);
        }

        result = __error();
        *result = v6;
      }
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a3)
      {
        if (result[2] == a3)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= a2)
          {
            v7 %= a2;
          }
        }

        else
        {
          v7 &= a2 - 1;
        }

        if (v7 != v4)
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

uint64_t tt_transition_for_state(void *a1, uint64_t a2, __int16 a3, void *a4, _BYTE *a5)
{
  v5 = a1[1];
  if (v5)
  {
    v6 = 196613 * a3 + HIBYTE(a3) + 6291469 * a2;
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = 196613 * a3 + HIBYTE(a3) + 6291469 * a2;
      if (v6 >= *&v5)
      {
        v8 = v6 % *&v5;
      }
    }

    else
    {
      v8 = v6 & (*&v5 - 1);
    }

    v9 = *(*a1 + 8 * v8);
    if (v9)
    {
      v10 = *v9;
      if (v10)
      {
        if (HIBYTE(a3) >= 7u)
        {
          v11 = 7;
        }

        else
        {
          v11 = HIBYTE(a3);
        }

        v12 = ~(-1 << v11);
        do
        {
          v13 = v10[1];
          if (v13 == v6)
          {
            v14 = *(v10 + 12);
            if (HIBYTE(a3) == v14 >> 8 && ((v14 ^ a3) & v12) == 0 && v10[2] == a2)
            {
              v16 = *(v10 + 40);
              *a4 = v10[4];
              *a5 = v16;
              return 1;
            }
          }

          else
          {
            if (v7.u32[0] > 1uLL)
            {
              if (v13 >= *&v5)
              {
                v13 %= *&v5;
              }
            }

            else
            {
              v13 &= *&v5 - 1;
            }

            if (v13 != v8)
            {
              return 0;
            }
          }

          v10 = *v10;
        }

        while (v10);
      }
    }
  }

  return 0;
}

BOOL hasTrailingAsterisk(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    Length = CFStringGetLength(result);
    v3 = Length - 1;
    if (CFStringGetCharacterAtIndex(v1, Length - 1) == 42 && (Length == 1 || CFStringGetCharacterAtIndex(v1, Length - 2) != 92))
    {
      return 1;
    }

    else if (Length < 1)
    {
      return 0;
    }

    else
    {
      for (i = 0; i < Length; ++i)
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(v1, i);
        if (i < v3 && CharacterAtIndex == 92)
        {
          result = 0;
          ++i;
        }

        else
        {
          v6 = CFStringGetCharacterAtIndex(v1, i);
          result = i == v3 && v6 == 42;
        }
      }
    }
  }

  return result;
}

void utf8QueryString(const __CFString **a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v8 = a3 - 1;
  if (a4)
  {
    v9 = ", ";
  }

  else
  {
    v9 = " ";
  }

  do
  {
    Length = CFStringGetLength(*(a2 + 8 * v7));
    v11 = Length;
    if (*(a1 + 23) >= 0)
    {
      v12 = *(a1 + 23);
    }

    else
    {
      v12 = a1[1];
    }

    v13 = 3 * Length + 1;
    std::string::resize(a1, v12 + v13, 0);
    v14 = *(a2 + 8 * v7);
    if (*(a1 + 23) >= 0)
    {
      v15 = a1;
    }

    else
    {
      v15 = *a1;
    }

    usedBufLen = 0;
    v17.location = 0;
    v17.length = v11;
    CFStringGetBytes(v14, v17, 0x8000100u, 0, 0, v12 + v15, v13, &usedBufLen);
    std::string::resize(a1, v12 + usedBufLen, 0);
    if (usedBufLen)
    {
      if (v7 < v8)
      {
        std::string::append(a1, v9);
      }
    }

    ++v7;
  }

  while (a3 != v7);
}

_WORD *makeFalseNode(void)
{
  if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
  {
    ++sTotal;
  }

  v0 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
  if (!v0)
  {
    _log_fault_for_malloc_failure();
  }

  v0[24] = 16;
  return v0;
}

query_node *makeOrNode(query_node *a1, query_node *a2)
{
  if (!a1)
  {
    return a2;
  }

  v3 = a1;
  if (a2)
  {
    var6 = a1->var6;
    if (var6 == 16)
    {
      var2 = a1->var2;
      if (!var2 || *(var2 + 14) == 0.0)
      {
        goto LABEL_8;
      }
    }

    v6 = a2->var6;
    if (v6 == 16)
    {
      v8 = a2->var2;
      if (!v8 || var6 == 32 || *(v8 + 14) == 0.0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v6 == 32)
      {
LABEL_8:
        v10 = MEMORY[0x1E69E9820];
        v11 = 0x40000000;
        v12 = __db_query_tree_apply_block_block_invoke;
        v13 = &unk_1E8198ED0;
        v14 = &__block_literal_global_174;
        db_query_tree_apply_block_with_meta(a1, &v10, 0);
        return a2;
      }

      if (var6 == 32)
      {
LABEL_20:
        v10 = MEMORY[0x1E69E9820];
        v11 = 0x40000000;
        v12 = __db_query_tree_apply_block_block_invoke;
        v13 = &unk_1E8198ED0;
        v14 = &__block_literal_global_174;
        db_query_tree_apply_block_with_meta(a2, &v10, 0);
        return v3;
      }
    }

    if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
    {
      ++sTotal;
    }

    v9 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
    if (!v9)
    {
      _log_fault_for_malloc_failure();
    }

    v9->var0 = v3;
    v9->var1 = a2;
    v3 = v9;
    v9->var6 = 1;
  }

  return v3;
}

query_node *makeAndNode(query_node *a1, query_node *a2)
{
  if (!a1)
  {
    return a2;
  }

  v3 = a1;
  if (a2)
  {
    var6 = a1->var6;
    if (var6 == 32)
    {
      var2 = a1->var2;
      if (!var2 || *(var2 + 13) == 0.0)
      {
        goto LABEL_8;
      }
    }

    v6 = a2->var6;
    if (v6 == 32)
    {
      v8 = a2->var2;
      if (!v8 || var6 == 16 || *(v8 + 13) == 0.0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v6 == 16)
      {
LABEL_8:
        v10 = MEMORY[0x1E69E9820];
        v11 = 0x40000000;
        v12 = __db_query_tree_apply_block_block_invoke;
        v13 = &unk_1E8198ED0;
        v14 = &__block_literal_global_174;
        db_query_tree_apply_block_with_meta(a1, &v10, 0);
        return a2;
      }

      if (var6 == 16)
      {
LABEL_20:
        v10 = MEMORY[0x1E69E9820];
        v11 = 0x40000000;
        v12 = __db_query_tree_apply_block_block_invoke;
        v13 = &unk_1E8198ED0;
        v14 = &__block_literal_global_174;
        db_query_tree_apply_block_with_meta(a2, &v10, 0);
        return v3;
      }
    }

    if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
    {
      ++sTotal;
    }

    v9 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
    if (!v9)
    {
      _log_fault_for_malloc_failure();
    }

    *v9 = v3;
    v9[1] = a2;
    *(v9 + 24) = 2;
    return v9;
  }

  return v3;
}

_WORD *createQueryNode(const char *a1, char *__s, uint64_t a3, int a4, int a5, float a6, float a7)
{
  if (!a1)
  {
    return 0;
  }

  if (__s)
  {
    strlen(__s);
  }

  v15 = MEMORY[0x1E69E9AC8];
  if (*MEMORY[0x1E69E9AC8] <= 0x12FuLL)
  {
    ++sTotal;
  }

  v16 = malloc_type_zone_calloc(queryZone, 1uLL, 0x130uLL, 0x5BAF1CEAuLL);
  if (!v16)
  {
    _log_fault_for_malloc_failure();
  }

  *v16 = strdup(a1);
  v16[6] = a4;
  *(v16 + 4) = a3;
  if (a5 >= 1)
  {
    operator new[]();
  }

  if (a5 == -1)
  {
    operator new[]();
  }

  *(v16 + 9) = strdup(__s);
  if ((*(v16 + 34) & 0x80) != 0)
  {
    *(v16 + 28) = 70;
  }

  *(v16 + 13) = a6;
  *(v16 + 14) = a7;
  if (*v15 <= 0x4FuLL)
  {
    ++sTotal;
  }

  v14 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
  if (!v14)
  {
    _log_fault_for_malloc_failure();
  }

  v14[24] = 4;
  *(v14 + 2) = v16;
  return v14;
}

_WORD *createFieldMatchQueryNode(const char *a1, int a2, void *a3, float a4)
{
  v4 = 0;
  v27[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = -1431655765 * ((a3[1] - *a3) >> 3);
    if (v6 >= 1)
    {
      v10 = MEMORY[0x1E69E9AC8];
      if (*MEMORY[0x1E69E9AC8] <= 0x12FuLL)
      {
        ++sTotal;
      }

      v11 = malloc_type_zone_calloc(queryZone, 1uLL, 0x130uLL, 0x5BAF1CEAuLL);
      if (!v11)
      {
        _log_fault_for_malloc_failure();
      }

      v12 = strdup(a1);
      *v11 = v12;
      if (a2)
      {
        v13 = 13;
      }

      else
      {
        v13 = 14;
      }

      v11[6] = v13;
      if (v6 >= 0x400)
      {
        v14 = 1024;
      }

      else
      {
        v14 = v6;
      }

      v11[10] = v14;
      MEMORY[0x1EEE9AC00](v12);
      v16 = (v27 - v15);
      bzero(v27 - v15, v17);
      v18 = v11[10];
      if (v18 >= 1)
      {
        v20 = a3;
        v19 = *a3;
        v21 = 0xAAAAAAAAAAAAAAABLL * ((v20[1] - v19) >> 3);
        v22 = v16;
        do
        {
          if (!v21)
          {
            std::vector<long long>::__throw_length_error[abi:nn200100]();
          }

          v23 = v19;
          if (*(v19 + 23) < 0)
          {
            v23 = *v19;
          }

          *v22++ = strdup(v23);
          v19 += 24;
          --v21;
          --v18;
        }

        while (v18);
      }

      v24 = malloc_type_zone_malloc(queryZone, 8 * (v6 & 0x7FFFFFFF), 0xA4971684uLL);
      if (!v24)
      {
        _log_fault_for_malloc_failure();
      }

      *(v11 + 21) = v24;
      memcpy(v24, v16, 8 * (v6 & 0x7FFFFFFF));
      *(v11 + 13) = a4;
      v11[14] = 0;
      if (*v10 <= 0x4FuLL)
      {
        ++sTotal;
      }

      v4 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
      if (!v4)
      {
        _log_fault_for_malloc_failure();
      }

      v4[24] = 4;
      *(v4 + 2) = v11;
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v4;
}

query_node *createQueryNodeForPhotosMediaType(int a1, PRContext *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a2 + 7);
    if ((v3 & 1) == 0)
    {
      if ((v3 & 2) == 0)
      {
        v30 = xmmword_1E8192AE0;
        v31 = "public.video";
        std::vector<char const*>::vector[abi:nn200100](&__p, &v30, 3uLL);
        if (a1)
        {
          v4 = 1;
        }

        else
        {
          v4 = 5;
        }

        v5 = __p;
        v6 = v25;
        if (__p != v25)
        {
          v7 = 0;
          if (a1)
          {
            v8 = makeOrNode;
          }

          else
          {
            v8 = makeAndNode;
          }

          do
          {
            v9 = *v5++;
            QueryNode = createQueryNode("kMDItemContentTypeTree", v9, 0, v4, 0, 0.0, 0.0);
            v7 = v8(v7, QueryNode);
          }

          while (v5 != v6);
          v5 = __p;
          if (!__p)
          {
            goto LABEL_46;
          }

          goto LABEL_40;
        }

        v7 = 0;
        if (__p)
        {
LABEL_40:
          v25 = v5;
LABEL_45:
          operator delete(v5);
        }

LABEL_46:
        v23 = *MEMORY[0x1E69E9840];
        return v7;
      }

      if ((a1 & 1) == 0)
      {
        v30 = xmmword_1E8192AE0;
        v31 = "public.video";
        std::vector<char const*>::vector[abi:nn200100](&v28, &v30, 3uLL);
        v5 = v28;
        v20 = v29;
        if (v28 == v29)
        {
          v7 = 0;
          if (!v28)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v7 = 0;
          do
          {
            v21 = *v5++;
            v22 = createQueryNode("kMDItemContentTypeTree", v21, 0, 5, 0, 1.1755e-38, 0.0);
            v7 = makeAndNode(v7, v22);
          }

          while (v5 != v20);
          v5 = v28;
          if (!v28)
          {
            goto LABEL_46;
          }
        }

        v29 = v5;
        goto LABEL_45;
      }

      v30 = xmmword_1E8192AE0;
      v31 = "public.video";
      std::vector<char const*>::vector[abi:nn200100](&v26, &v30, 3uLL);
      v5 = v26;
      v16 = v27;
      if (v26 == v27)
      {
        v7 = 0;
        if (!v26)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v7 = 0;
        do
        {
          v17 = *v5++;
          v18 = createQueryNode("kMDItemContentTypeTree", v17, 0, 1, 0, 1.1755e-38, 0.0);
          v7 = makeOrNode(v7, v18);
        }

        while (v5 != v16);
        v5 = v26;
        if (!v26)
        {
          goto LABEL_46;
        }
      }

      v27 = v5;
      goto LABEL_45;
    }

    if ((v3 & 2) != 0)
    {
      v19 = *MEMORY[0x1E69E9840];
      v15 = 1.1755e-38;
      if (a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = 5;
      }
    }

    else
    {
      if (a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = 5;
      }

      v14 = *MEMORY[0x1E69E9840];
      v15 = 0.0;
    }

    return createQueryNode("kMDItemPhotosMediaTypes", "*", 0, v13, 0, v15, 0.0);
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];

    return makeFalseNode();
  }
}

void *std::vector<char const*>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (!(a3 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<char const*>>(a3);
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<char const*>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

void *makeRetrievalNodeFromQueryString(char *a1)
{
  query_node_with_ann = db_make_query_node_with_ann(a1, 0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __db_query_tree_apply_block_block_invoke;
  v3[3] = &unk_1E8198ED0;
  v3[4] = &__block_literal_global_1088;
  db_query_tree_apply_block_with_meta(query_node_with_ann, v3, 0);
  return query_node_with_ann;
}

uint64_t ___Z32makeRetrievalNodeFromQueryStringPKc_block_invoke(uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      *(v3 + 52) = 0;
      *(v3 + 56) = 0;
    }
  }

  return result;
}

void *makeNonMatchRetrievalNodeFromQueryString(char *a1)
{
  query_node_with_ann = db_make_query_node_with_ann(a1, 0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __db_query_tree_apply_block_block_invoke;
  v3[3] = &unk_1E8198ED0;
  v3[4] = &__block_literal_global_14;
  db_query_tree_apply_block_with_meta(query_node_with_ann, v3, 0);
  return query_node_with_ann;
}

uint64_t ___Z40makeNonMatchRetrievalNodeFromQueryStringPKc_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      *(v2 + 24) = 5;
      v3 = *(v2 + 72);
      if (v3)
      {
        free(v3);
      }

      operator new[]();
    }
  }

  return a2;
}

void *makeNonMatchRetrievalNodeFromORQueryString(char *a1)
{
  query_node_with_ann = db_make_query_node_with_ann(a1, 0);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __db_query_tree_apply_block_block_invoke;
  v3[3] = &unk_1E8198ED0;
  v3[4] = &__block_literal_global_17_1092;
  db_query_tree_apply_block_with_meta(query_node_with_ann, v3, 0);
  return query_node_with_ann;
}

uint64_t ___Z42makeNonMatchRetrievalNodeFromORQueryStringPKc_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 48) == 1)
    {
      *(a2 + 48) = 2;
    }

    else
    {
      v2 = *(a2 + 16);
      if (v2)
      {
        *(v2 + 24) = 5;
        v3 = *(v2 + 72);
        if (v3)
        {
          free(v3);
        }

        operator new[]();
      }
    }
  }

  return a2;
}

query_node *queryNodeForToken(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = strlen(a1);
  v9 = 0;
  if (!a4 || !v8)
  {
    return v9;
  }

  v10 = *(a3 + 40);
  if (v10 <= 0 && v8 >= 4 && (*(a3 + 45) & 1) == 0 && (*(a4 + 28) & 0x806) == 4)
  {
    v10 = 2;
  }

  v11 = *(a3 + 16);
  if (*(v11 + 23) < 0)
  {
    if (!*(v11 + 8))
    {
      goto LABEL_27;
    }

    v12 = *v11;
    goto LABEL_14;
  }

  v12 = *(a3 + 16);
  if (*(v11 + 23))
  {
LABEL_14:
    v13 = 0.0;
    if ((*(a4 + 28) & 2) == 0)
    {
LABEL_20:
      if (v10 == -1)
      {
        v10 = 1;
      }

      else if (v10 < 1)
      {
        v10 = 0;
      }

      else
      {
        v16 = *(a3 + 32);
        std::string::basic_string[abi:nn200100]<0>(__p, v12);
        if (!std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(v16, __p))
        {
          v10 = 0;
        }

        if (v39 < 0)
        {
          operator delete(__p[0]);
        }
      }

      return createQueryNode(v12, a1, *a3, *(a3 + 24), v10, v13 * *(a3 + 8), v13 * *(a3 + 12));
    }

    if (*(a3 + 46) != 1 || strcmp(v12, "kMDItemTextContent"))
    {
      v14 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(a2, v11);
      v15 = (v14 + 5);
      if (!v14)
      {
        v15 = &defaultAttributeScore;
      }

      v13 = *v15 + *v15;
      goto LABEL_20;
    }

    return 0;
  }

LABEL_27:
  v37 = a2;
  v17 = a2[2];
  if (v17)
  {
    v9 = 0;
    do
    {
      v18 = (v17 + 2);
      if (*(v17 + 39) < 0)
      {
        v18 = *v18;
      }

      if ((*(a4 + 28) & 2) == 0 || *(a3 + 46) != 1 || strcmp(v18, "kMDItemTextContent"))
      {
        v19 = v10 == -1;
        if (v10 >= 1)
        {
          v20 = *(a3 + 32);
          std::string::basic_string[abi:nn200100]<0>(__p, v18);
          v19 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(v20, __p) ? v10 : 0;
          if (v39 < 0)
          {
            operator delete(__p[0]);
          }
        }

        QueryNode = createQueryNode(v18, a1, *a3, *(a3 + 24), v19, *(v17 + 10) * *(a3 + 8), *(v17 + 10) * *(a3 + 12));
        v22 = *(a4 + 28);
        if ((v22 & 0x4000) != 0 && !strcmp(v18, "kMDItemTextContent"))
        {
          if ((v22 & 2) != 0)
          {
            v23 = 1.1755e-38;
            v24 = 1;
          }

          else
          {
            v23 = 0.0;
            v24 = 5;
          }

          v25 = createQueryNode("_kMDItemBundleID", "com.apple.mobilesafari", 0, v24, 0, 0.0, v23);
          QueryNode = makeAndNode(QueryNode, v25);
        }

        v26 = makeOrNode;
        if (*(a3 + 28))
        {
          v26 = makeAndNode;
        }

        v9 = v26(v9, QueryNode);
      }

      v17 = *v17;
    }

    while (v17);
  }

  else
  {
    v9 = 0;
  }

  if ((*(a4 + 28) & 2) == 0 && v10 > 0)
  {
    v27 = *(*(a3 + 32) + 16);
    if (v27)
    {
      v28 = 0;
      v36 = *a3;
      v29 = *(a3 + 24);
      do
      {
        v30 = (v27 + 2);
        if (*(v27 + 39) < 0)
        {
          v30 = *v30;
        }

        if (*(v27 + 10))
        {
          v31 = *(v27 + 10);
        }

        else
        {
          v31 = v10;
        }

        if (strcmp(v30, "kMDItemTextContent"))
        {
          std::string::basic_string[abi:nn200100]<0>(__p, v30);
          v32 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(v37, __p);
          if (v39 < 0)
          {
            operator delete(__p[0]);
          }

          if (!v32 && v31 >= 1)
          {
            v33 = createQueryNode(v30, a1, v36, v29, v31, 0.0, 0.0);
            v28 = makeOrNode(v28, v33);
          }
        }

        v27 = *v27;
      }

      while (v27);
    }

    else
    {
      v28 = 0;
    }

    return makeOrNode(v9, v28);
  }

  return v9;
}

float normalizeQueryNode(query_node *a1, float a2)
{
  v8 = MEMORY[0x1E69E9820];
  v9 = 0x40000000;
  v10 = __db_query_tree_apply_block_block_invoke;
  v11 = &unk_1E8198ED0;
  v12 = &__block_literal_global_23;
  db_query_tree_apply_block_with_meta(a1, &v8, &__block_literal_global_27);
  var13 = a1->var13;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___Z18normalizeQueryNodeP10query_nodef_block_invoke_3;
  v6[3] = &__block_descriptor_tmp_28_1100;
  v7 = var13 / a2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 0x40000000;
  v10 = __db_query_tree_apply_block_block_invoke;
  v11 = &unk_1E8198ED0;
  v12 = v6;
  db_query_tree_apply_block_with_meta(a1, &v8, 0);
  return var13;
}

uint64_t ___Z18normalizeQueryNodeP10query_nodef_block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      v3 = *(v2 + 52);
      if (v3 > 1.1755e-38)
      {
        *(v2 + 52) = v3 / *(a1 + 32);
      }

      v4 = *(v2 + 56);
      if (v4 > 1.1755e-38)
      {
        *(v2 + 56) = v4 / *(a1 + 32);
      }
    }
  }

  *(a2 + 72) = 0;
  return a2;
}

uint64_t ___Z18normalizeQueryNodeP10query_nodef_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 && a3 && a4)
  {
    *a2 = a3;
    *(a2 + 8) = a4;
    v7 = *(a2 + 48);
    if (v7 == 2)
    {
      v9 = *(a3 + 72);
      v8 = 0.0;
      if (v9 != 0.0)
      {
        v10 = *(a4 + 72);
        if (v10 != 0.0)
        {
          v8 = v9 + v10;
        }
      }

      goto LABEL_15;
    }

    if (v7 == 1)
    {
      v8 = *(a3 + 72);
      if (v8 <= *(a4 + 72))
      {
        v8 = *(a4 + 72);
      }

LABEL_15:
      *(a2 + 72) = v8;
    }
  }

  else if (a2)
  {
    v11[5] = v4;
    v11[6] = v5;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __db_query_tree_apply_block_block_invoke;
    v11[3] = &unk_1E8198ED0;
    v11[4] = &__block_literal_global_174;
    db_query_tree_apply_block_with_meta(a2, v11, 0);
    return 0;
  }

  return result;
}

uint64_t ___Z18normalizeQueryNodeP10query_nodef_block_invoke(uint64_t a1, uint64_t a2)
{
  result = a2;
  if (a2)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      v4 = *(v3 + 52);
      if (v4 <= *(v3 + 56))
      {
        v4 = *(v3 + 56);
      }

      *(a2 + 72) = v4;
    }
  }

  return result;
}

BOOL isOptionalSpecialChar(UniChar a1)
{
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  v3 = 1;
  if (!CFCharacterSetIsCharacterMember(Predefined, a1))
  {
    v4 = CFCharacterSetGetPredefined(kCFCharacterSetControl);
    if (!CFCharacterSetIsCharacterMember(v4, a1))
    {
      v5 = CFCharacterSetCreateWithCharactersInString(*MEMORY[0x1E695E480], @",;:.!_*\");
      v3 = CFCharacterSetIsCharacterMember(v5, a1) != 0;
      CFRelease(v5);
    }
  }

  return v3;
}

BOOL hasTrailingOptionalSpecialChar(const __CFString *a1)
{
  if (!a1 || !CFStringGetLength(a1))
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  CharacterAtIndex = CFStringGetCharacterAtIndex(a1, Length - 1);

  return isOptionalSpecialChar(CharacterAtIndex);
}

BOOL hasOnlyOptionalSpecialChar(const __CFString *a1)
{
  if (!a1)
  {
    return 1;
  }

  Length = CFStringGetLength(a1);
  v3 = Length - 1;
  if (Length < 1)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v4);
    result = isOptionalSpecialChar(CharacterAtIndex);
    if (!result)
    {
      break;
    }
  }

  while (v3 != v4++);
  return result;
}

BOOL hasOnlySpecialChar(const __CFString *a1)
{
  if (!a1)
  {
    return 1;
  }

  Length = CFStringGetLength(a1);
  v4 = Length - 1;
  if (Length < 1)
  {
    v8 = 1;
  }

  else
  {
    v5 = 0;
    do
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v5);
      IsCharacterMember = CFCharacterSetIsCharacterMember(v2, CharacterAtIndex);
      v8 = IsCharacterMember != 0;
      if (!IsCharacterMember)
      {
        break;
      }
    }

    while (v4 != v5++);
  }

  CFRelease(v2);
  return v8;
}

BOOL isOptionalWord(char *a1)
{
  {
    OptionalWords(void)::optionalWords = 0u;
    unk_1EBF485B0 = 0u;
    dword_1EBF485C0 = 1065353216;
  }

  if (OptionalWords(void)::onceToken != -1)
  {
    dispatch_once(&OptionalWords(void)::onceToken, &__block_literal_global_42);
  }

  if (!qword_1EBF485B8)
  {
    return 0;
  }

  if (isLowerStr(a1))
  {
    return std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(&OptionalWords(void)::optionalWords, a1) != 0;
  }

  toLowerCase(&__p, a1);
  v2 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(&OptionalWords(void)::optionalWords, &__p) != 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v2;
}

BOOL isLowerStr(char *a1)
{
  v1 = a1[23];
  if ((v1 & 0x80u) == 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 1);
  }

  if (!v1)
  {
    return 1;
  }

  v3 = v1 - 1;
  v4 = MEMORY[0x1E69E9830];
  do
  {
    v5 = *v2;
    if ((v5 & 0x80000000) != 0)
    {
      v6 = __maskrune(v5, 0x1000uLL);
    }

    else
    {
      v6 = *(v4 + 4 * v5 + 60) & 0x1000;
    }

    result = v6 != 0;
    ++v2;
    if (v6)
    {
      v8 = v3 == 0;
    }

    else
    {
      v8 = 1;
    }

    --v3;
  }

  while (!v8);
  return result;
}

void toLowerCase(std::string *a1, char *a2)
{
  v2 = a2;
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  if (a2[23] >= 0)
  {
    v4 = a2[23];
  }

  else
  {
    v4 = *(a2 + 1);
  }

  std::string::reserve(a1, v4);
  v5 = *(v2 + 1);
  if (v2[23] >= 0)
  {
    v6 = v2[23];
  }

  else
  {
    v2 = *v2;
    v6 = v5;
  }

  for (; v6; --v6)
  {
    v7 = *v2++;
    v8 = __tolower(v7);
    std::string::push_back(a1, v8);
  }
}

void ___ZL13OptionalWordsv_block_invoke()
{
  v47.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  v0 = CFLocaleCopyCurrent();
  if (v0)
  {
    v1 = v0;
    v2 = MEMORY[0x1C691EAF0]();
    if (CFStringHasPrefix(v2, @"en"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "to");
      std::string::basic_string[abi:nn200100]<0>(v22, "with");
      std::string::basic_string[abi:nn200100]<0>(v23, "in");
      std::string::basic_string[abi:nn200100]<0>(v24, "and");
      std::string::basic_string[abi:nn200100]<0>(v25, "or");
      std::string::basic_string[abi:nn200100]<0>(v26, "on");
      std::string::basic_string[abi:nn200100]<0>(&v27, "of");
      std::string::basic_string[abi:nn200100]<0>(v28, "at");
      std::string::basic_string[abi:nn200100]<0>(v29, "am");
      std::string::basic_string[abi:nn200100]<0>(&v30, "is");
      std::string::basic_string[abi:nn200100]<0>(v31, "are");
      std::string::basic_string[abi:nn200100]<0>(v32, "was");
      std::string::basic_string[abi:nn200100]<0>(&v33, "were");
      std::string::basic_string[abi:nn200100]<0>(v34, "be");
      std::string::basic_string[abi:nn200100]<0>(v35, "a");
      std::string::basic_string[abi:nn200100]<0>(v36, "an");
      std::string::basic_string[abi:nn200100]<0>(v37, "the");
      std::string::basic_string[abi:nn200100]<0>(v38, "by");
      std::string::basic_string[abi:nn200100]<0>(v39, "for");
      std::string::basic_string[abi:nn200100]<0>(v40, "from");
      std::string::basic_string[abi:nn200100]<0>(v41, "off");
      std::string::basic_string[abi:nn200100]<0>(v42, "so");
      std::string::basic_string[abi:nn200100]<0>(v43, "as");
      std::string::basic_string[abi:nn200100]<0>(v44, "during");
      std::string::basic_string[abi:nn200100]<0>(&v45, "under");
      std::string::basic_string[abi:nn200100]<0>(&v46, "saved");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v47);
      v3 = 26;
      do
      {
        if (SHIBYTE(__str[v3 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v3 - 1].__r_.__value_.__l.__data_);
        }

        --v3;
      }

      while (v3 * 24);
    }

    else if (CFStringHasPrefix(v2, @"es"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "el");
      std::string::basic_string[abi:nn200100]<0>(v22, "la");
      std::string::basic_string[abi:nn200100]<0>(v23, "los");
      std::string::basic_string[abi:nn200100]<0>(v24, "las");
      std::string::basic_string[abi:nn200100]<0>(v25, "de");
      std::string::basic_string[abi:nn200100]<0>(v26, "en");
      std::string::basic_string[abi:nn200100]<0>(&v27, "que");
      std::string::basic_string[abi:nn200100]<0>(v28, "y");
      std::string::basic_string[abi:nn200100]<0>(v29, "a");
      std::string::basic_string[abi:nn200100]<0>(&v30, "un");
      std::string::basic_string[abi:nn200100]<0>(v31, "una");
      std::string::basic_string[abi:nn200100]<0>(v32, "unos");
      std::string::basic_string[abi:nn200100]<0>(&v33, "unas");
      std::string::basic_string[abi:nn200100]<0>(v34, "por");
      std::string::basic_string[abi:nn200100]<0>(v35, "con");
      std::string::basic_string[abi:nn200100]<0>(v36, "para");
      std::string::basic_string[abi:nn200100]<0>(v37, "es");
      std::string::basic_string[abi:nn200100]<0>(v38, "al");
      std::string::basic_string[abi:nn200100]<0>(v39, "del");
      std::string::basic_string[abi:nn200100]<0>(v40, "pero");
      std::string::basic_string[abi:nn200100]<0>(v41, "o");
      std::string::basic_string[abi:nn200100]<0>(v42, "entre");
      std::string::basic_string[abi:nn200100]<0>(v43, "porque");
      std::string::basic_string[abi:nn200100]<0>(v44, "hasta");
      std::string::basic_string[abi:nn200100]<0>(&v45, "desde");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v46);
      v4 = 25;
      do
      {
        if (SHIBYTE(__str[v4 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v4 - 1].__r_.__value_.__l.__data_);
        }

        --v4;
      }

      while (v4 * 24);
    }

    else if (CFStringHasPrefix(v2, @"fr"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "à");
      std::string::basic_string[abi:nn200100]<0>(v22, "avec");
      std::string::basic_string[abi:nn200100]<0>(v23, "en");
      std::string::basic_string[abi:nn200100]<0>(v24, "dans");
      std::string::basic_string[abi:nn200100]<0>(v25, "a");
      std::string::basic_string[abi:nn200100]<0>(v26, "et");
      std::string::basic_string[abi:nn200100]<0>(&v27, "de");
      std::string::basic_string[abi:nn200100]<0>(v28, "au");
      std::string::basic_string[abi:nn200100]<0>(v29, "un");
      std::string::basic_string[abi:nn200100]<0>(&v30, "le");
      std::string::basic_string[abi:nn200100]<0>(v31, "la");
      std::string::basic_string[abi:nn200100]<0>(v32, "pendant");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v33);
      v5 = 12;
      do
      {
        if (SHIBYTE(__str[v5 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v5 - 1].__r_.__value_.__l.__data_);
        }

        --v5;
      }

      while (v5 * 24);
    }

    else if (CFStringHasPrefix(v2, @"ja"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "から");
      std::string::basic_string[abi:nn200100]<0>(v22, "で");
      std::string::basic_string[abi:nn200100]<0>(v23, "と");
      std::string::basic_string[abi:nn200100]<0>(v24, "に");
      std::string::basic_string[abi:nn200100]<0>(v25, "の");
      std::string::basic_string[abi:nn200100]<0>(v26, "へ");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v27);
      for (i = 0; i != -144; i -= 24)
      {
        if (v26[i + 23] < 0)
        {
          operator delete(*&v26[i]);
        }
      }
    }

    else if (CFStringHasPrefix(v2, @"zh"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "与");
      std::string::basic_string[abi:nn200100]<0>(v22, "从");
      std::string::basic_string[abi:nn200100]<0>(v23, "到");
      std::string::basic_string[abi:nn200100]<0>(v24, "同");
      std::string::basic_string[abi:nn200100]<0>(v25, "和");
      std::string::basic_string[abi:nn200100]<0>(v26, "在");
      std::string::basic_string[abi:nn200100]<0>(&v27, "或");
      std::string::basic_string[abi:nn200100]<0>(v28, "的");
      std::string::basic_string[abi:nn200100]<0>(v29, "里");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v30);
      for (j = 0; j != -216; j -= 24)
      {
        if (v29[j + 23] < 0)
        {
          operator delete(*&v29[j]);
        }
      }
    }

    else if (CFStringHasPrefix(v2, @"de"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "an");
      std::string::basic_string[abi:nn200100]<0>(v22, "in");
      std::string::basic_string[abi:nn200100]<0>(v23, "von");
      std::string::basic_string[abi:nn200100]<0>(v24, "nach");
      std::string::basic_string[abi:nn200100]<0>(v25, "mit");
      std::string::basic_string[abi:nn200100]<0>(v26, "und");
      std::string::basic_string[abi:nn200100]<0>(&v27, "oder");
      std::string::basic_string[abi:nn200100]<0>(v28, "bin");
      std::string::basic_string[abi:nn200100]<0>(v29, "bist");
      std::string::basic_string[abi:nn200100]<0>(&v30, "seit");
      std::string::basic_string[abi:nn200100]<0>(v31, "ist");
      std::string::basic_string[abi:nn200100]<0>(v32, "sind");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v33);
      v8 = 12;
      do
      {
        if (SHIBYTE(__str[v8 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v8 - 1].__r_.__value_.__l.__data_);
        }

        --v8;
      }

      while (v8 * 24);
    }

    else if (CFStringHasPrefix(v2, @"it"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "il");
      std::string::basic_string[abi:nn200100]<0>(v22, "lo");
      std::string::basic_string[abi:nn200100]<0>(v23, "la");
      std::string::basic_string[abi:nn200100]<0>(v24, "i");
      std::string::basic_string[abi:nn200100]<0>(v25, "gli");
      std::string::basic_string[abi:nn200100]<0>(v26, "le");
      std::string::basic_string[abi:nn200100]<0>(&v27, "un");
      std::string::basic_string[abi:nn200100]<0>(v28, "uno");
      std::string::basic_string[abi:nn200100]<0>(v29, "una");
      std::string::basic_string[abi:nn200100]<0>(&v30, "di");
      std::string::basic_string[abi:nn200100]<0>(v31, "da");
      std::string::basic_string[abi:nn200100]<0>(v32, "in");
      std::string::basic_string[abi:nn200100]<0>(&v33, "con");
      std::string::basic_string[abi:nn200100]<0>(v34, "su");
      std::string::basic_string[abi:nn200100]<0>(v35, "per");
      std::string::basic_string[abi:nn200100]<0>(v36, "tra");
      std::string::basic_string[abi:nn200100]<0>(v37, "fra");
      std::string::basic_string[abi:nn200100]<0>(v38, "e");
      std::string::basic_string[abi:nn200100]<0>(v39, "o");
      std::string::basic_string[abi:nn200100]<0>(v40, "ma");
      std::string::basic_string[abi:nn200100]<0>(v41, "se");
      std::string::basic_string[abi:nn200100]<0>(v42, "che");
      std::string::basic_string[abi:nn200100]<0>(v43, "sono");
      std::string::basic_string[abi:nn200100]<0>(v44, "del");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v45);
      v9 = 24;
      do
      {
        if (SHIBYTE(__str[v9 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v9 - 1].__r_.__value_.__l.__data_);
        }

        --v9;
      }

      while (v9 * 24);
    }

    else if (CFStringHasPrefix(v2, @"pt"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "o");
      std::string::basic_string[abi:nn200100]<0>(v22, "a");
      std::string::basic_string[abi:nn200100]<0>(v23, "os");
      std::string::basic_string[abi:nn200100]<0>(v24, "as");
      std::string::basic_string[abi:nn200100]<0>(v25, "um");
      std::string::basic_string[abi:nn200100]<0>(v26, "uma");
      std::string::basic_string[abi:nn200100]<0>(&v27, "uns");
      std::string::basic_string[abi:nn200100]<0>(v28, "umas");
      std::string::basic_string[abi:nn200100]<0>(v29, "de");
      std::string::basic_string[abi:nn200100]<0>(&v30, "dos");
      std::string::basic_string[abi:nn200100]<0>(v31, "em");
      std::string::basic_string[abi:nn200100]<0>(v32, "para");
      std::string::basic_string[abi:nn200100]<0>(&v33, "com");
      std::string::basic_string[abi:nn200100]<0>(v34, "por");
      std::string::basic_string[abi:nn200100]<0>(v35, "sobre");
      std::string::basic_string[abi:nn200100]<0>(v36, "até");
      std::string::basic_string[abi:nn200100]<0>(v37, "e");
      std::string::basic_string[abi:nn200100]<0>(v38, "ou");
      std::string::basic_string[abi:nn200100]<0>(v39, "mas");
      std::string::basic_string[abi:nn200100]<0>(v40, "que");
      std::string::basic_string[abi:nn200100]<0>(v41, "se");
      std::string::basic_string[abi:nn200100]<0>(v42, "é");
      std::string::basic_string[abi:nn200100]<0>(v43, "são");
      std::string::basic_string[abi:nn200100]<0>(v44, "estar");
      std::string::basic_string[abi:nn200100]<0>(&v45, "ser");
      std::string::basic_string[abi:nn200100]<0>(&v46, "ter");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v47);
      v10 = 26;
      do
      {
        if (SHIBYTE(__str[v10 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v10 - 1].__r_.__value_.__l.__data_);
        }

        --v10;
      }

      while (v10 * 24);
    }

    else if (CFStringHasPrefix(v2, @"da"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "og");
      std::string::basic_string[abi:nn200100]<0>(v22, "i");
      std::string::basic_string[abi:nn200100]<0>(v23, "det");
      std::string::basic_string[abi:nn200100]<0>(v24, "at");
      std::string::basic_string[abi:nn200100]<0>(v25, "en");
      std::string::basic_string[abi:nn200100]<0>(v26, "den");
      std::string::basic_string[abi:nn200100]<0>(&v27, "til");
      std::string::basic_string[abi:nn200100]<0>(v28, "er");
      std::string::basic_string[abi:nn200100]<0>(v29, "som");
      std::string::basic_string[abi:nn200100]<0>(&v30, "på");
      std::string::basic_string[abi:nn200100]<0>(v31, "de");
      std::string::basic_string[abi:nn200100]<0>(v32, "med");
      std::string::basic_string[abi:nn200100]<0>(&v33, "han");
      std::string::basic_string[abi:nn200100]<0>(v34, "af");
      std::string::basic_string[abi:nn200100]<0>(v35, "for");
      std::string::basic_string[abi:nn200100]<0>(v36, "ikke");
      std::string::basic_string[abi:nn200100]<0>(v37, "der");
      std::string::basic_string[abi:nn200100]<0>(v38, "var");
      std::string::basic_string[abi:nn200100]<0>(v39, "mig");
      std::string::basic_string[abi:nn200100]<0>(v40, "sig");
      std::string::basic_string[abi:nn200100]<0>(v41, "men");
      std::string::basic_string[abi:nn200100]<0>(v42, "et");
      std::string::basic_string[abi:nn200100]<0>(v43, "har");
      std::string::basic_string[abi:nn200100]<0>(v44, "om");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v45);
      v11 = 24;
      do
      {
        if (SHIBYTE(__str[v11 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v11 - 1].__r_.__value_.__l.__data_);
        }

        --v11;
      }

      while (v11 * 24);
    }

    else if (CFStringHasPrefix(v2, @"nl"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "de");
      std::string::basic_string[abi:nn200100]<0>(v22, "en");
      std::string::basic_string[abi:nn200100]<0>(v23, "van");
      std::string::basic_string[abi:nn200100]<0>(v24, "te");
      std::string::basic_string[abi:nn200100]<0>(v25, "dat");
      std::string::basic_string[abi:nn200100]<0>(v26, "die");
      std::string::basic_string[abi:nn200100]<0>(&v27, "in");
      std::string::basic_string[abi:nn200100]<0>(v28, "een");
      std::string::basic_string[abi:nn200100]<0>(v29, "hij");
      std::string::basic_string[abi:nn200100]<0>(&v30, "het");
      std::string::basic_string[abi:nn200100]<0>(v31, "niet");
      std::string::basic_string[abi:nn200100]<0>(v32, "zijn");
      std::string::basic_string[abi:nn200100]<0>(&v33, "is");
      std::string::basic_string[abi:nn200100]<0>(v34, "was");
      std::string::basic_string[abi:nn200100]<0>(v35, "op");
      std::string::basic_string[abi:nn200100]<0>(v36, "aan");
      std::string::basic_string[abi:nn200100]<0>(v37, "met");
      std::string::basic_string[abi:nn200100]<0>(v38, "als");
      std::string::basic_string[abi:nn200100]<0>(v39, "voor");
      std::string::basic_string[abi:nn200100]<0>(v40, "er");
      std::string::basic_string[abi:nn200100]<0>(v41, "maar");
      std::string::basic_string[abi:nn200100]<0>(v42, "om");
      std::string::basic_string[abi:nn200100]<0>(v43, "hem");
      std::string::basic_string[abi:nn200100]<0>(v44, "dan");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v45);
      v12 = 24;
      do
      {
        if (SHIBYTE(__str[v12 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v12 - 1].__r_.__value_.__l.__data_);
        }

        --v12;
      }

      while (v12 * 24);
    }

    else if (CFStringHasPrefix(v2, @"sv"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "och");
      std::string::basic_string[abi:nn200100]<0>(v22, "i");
      std::string::basic_string[abi:nn200100]<0>(v23, "en");
      std::string::basic_string[abi:nn200100]<0>(v24, "att");
      std::string::basic_string[abi:nn200100]<0>(v25, "det");
      std::string::basic_string[abi:nn200100]<0>(v26, "som");
      std::string::basic_string[abi:nn200100]<0>(&v27, "på");
      std::string::basic_string[abi:nn200100]<0>(v28, "är");
      std::string::basic_string[abi:nn200100]<0>(v29, "av");
      std::string::basic_string[abi:nn200100]<0>(&v30, "för");
      std::string::basic_string[abi:nn200100]<0>(v31, "med");
      std::string::basic_string[abi:nn200100]<0>(v32, "till");
      std::string::basic_string[abi:nn200100]<0>(&v33, "den");
      std::string::basic_string[abi:nn200100]<0>(v34, "har");
      std::string::basic_string[abi:nn200100]<0>(v35, "de");
      std::string::basic_string[abi:nn200100]<0>(v36, "inte");
      std::string::basic_string[abi:nn200100]<0>(v37, "ett");
      std::string::basic_string[abi:nn200100]<0>(v38, "han");
      std::string::basic_string[abi:nn200100]<0>(v39, "men");
      std::string::basic_string[abi:nn200100]<0>(v40, "om");
      std::string::basic_string[abi:nn200100]<0>(v41, "från");
      std::string::basic_string[abi:nn200100]<0>(v42, "vi");
      std::string::basic_string[abi:nn200100]<0>(v43, "hon");
      std::string::basic_string[abi:nn200100]<0>(v44, "sig");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v45);
      v13 = 24;
      do
      {
        if (SHIBYTE(__str[v13 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v13 - 1].__r_.__value_.__l.__data_);
        }

        --v13;
      }

      while (v13 * 24);
    }

    else if (CFStringHasPrefix(v2, @"nb"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "og");
      std::string::basic_string[abi:nn200100]<0>(v22, "i");
      std::string::basic_string[abi:nn200100]<0>(v23, "det");
      std::string::basic_string[abi:nn200100]<0>(v24, "at");
      std::string::basic_string[abi:nn200100]<0>(v25, "en");
      std::string::basic_string[abi:nn200100]<0>(v26, "et");
      std::string::basic_string[abi:nn200100]<0>(&v27, "den");
      std::string::basic_string[abi:nn200100]<0>(v28, "til");
      std::string::basic_string[abi:nn200100]<0>(v29, "er");
      std::string::basic_string[abi:nn200100]<0>(&v30, "som");
      std::string::basic_string[abi:nn200100]<0>(v31, "på");
      std::string::basic_string[abi:nn200100]<0>(v32, "for");
      std::string::basic_string[abi:nn200100]<0>(&v33, "med");
      std::string::basic_string[abi:nn200100]<0>(v34, "han");
      std::string::basic_string[abi:nn200100]<0>(v35, "av");
      std::string::basic_string[abi:nn200100]<0>(v36, "ikke");
      std::string::basic_string[abi:nn200100]<0>(v37, "der");
      std::string::basic_string[abi:nn200100]<0>(v38, "de");
      std::string::basic_string[abi:nn200100]<0>(v39, "var");
      std::string::basic_string[abi:nn200100]<0>(v40, "meg");
      std::string::basic_string[abi:nn200100]<0>(v41, "seg");
      std::string::basic_string[abi:nn200100]<0>(v42, "men");
      std::string::basic_string[abi:nn200100]<0>(v43, "har");
      std::string::basic_string[abi:nn200100]<0>(v44, "om");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v45);
      v14 = 24;
      do
      {
        if (SHIBYTE(__str[v14 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v14 - 1].__r_.__value_.__l.__data_);
        }

        --v14;
      }

      while (v14 * 24);
    }

    else if (CFStringHasPrefix(v2, @"vi"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "và");
      std::string::basic_string[abi:nn200100]<0>(v22, "là");
      std::string::basic_string[abi:nn200100]<0>(v23, "của");
      std::string::basic_string[abi:nn200100]<0>(v24, "ở");
      std::string::basic_string[abi:nn200100]<0>(v25, "cho");
      std::string::basic_string[abi:nn200100]<0>(v26, "có");
      std::string::basic_string[abi:nn200100]<0>(&v27, "không");
      std::string::basic_string[abi:nn200100]<0>(v28, "cũng");
      std::string::basic_string[abi:nn200100]<0>(v29, "đã");
      std::string::basic_string[abi:nn200100]<0>(&v30, "sẽ");
      std::string::basic_string[abi:nn200100]<0>(v31, "được");
      std::string::basic_string[abi:nn200100]<0>(v32, "một");
      std::string::basic_string[abi:nn200100]<0>(&v33, "các");
      std::string::basic_string[abi:nn200100]<0>(v34, "những");
      std::string::basic_string[abi:nn200100]<0>(v35, "bạn");
      std::string::basic_string[abi:nn200100]<0>(v36, "anh");
      std::string::basic_string[abi:nn200100]<0>(v37, "chị");
      std::string::basic_string[abi:nn200100]<0>(v38, "này");
      std::string::basic_string[abi:nn200100]<0>(v39, "đó");
      std::string::basic_string[abi:nn200100]<0>(v40, "khi");
      std::string::basic_string[abi:nn200100]<0>(v41, "thì");
      std::string::basic_string[abi:nn200100]<0>(v42, "với");
      std::string::basic_string[abi:nn200100]<0>(v43, "như");
      std::string::basic_string[abi:nn200100]<0>(v44, "mà");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v45);
      v15 = 24;
      do
      {
        if (SHIBYTE(__str[v15 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v15 - 1].__r_.__value_.__l.__data_);
        }

        --v15;
      }

      while (v15 * 24);
    }

    else if (CFStringHasPrefix(v2, @"tr"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "ve");
      std::string::basic_string[abi:nn200100]<0>(v22, "bir");
      std::string::basic_string[abi:nn200100]<0>(v23, "bu");
      std::string::basic_string[abi:nn200100]<0>(v24, "için");
      std::string::basic_string[abi:nn200100]<0>(v25, "de");
      std::string::basic_string[abi:nn200100]<0>(v26, "ile");
      std::string::basic_string[abi:nn200100]<0>(&v27, "ama");
      std::string::basic_string[abi:nn200100]<0>(v28, "o");
      std::string::basic_string[abi:nn200100]<0>(v29, "da");
      std::string::basic_string[abi:nn200100]<0>(&v30, "olarak");
      std::string::basic_string[abi:nn200100]<0>(v31, "çok");
      std::string::basic_string[abi:nn200100]<0>(v32, "ne");
      std::string::basic_string[abi:nn200100]<0>(&v33, "var");
      std::string::basic_string[abi:nn200100]<0>(v34, "yok");
      std::string::basic_string[abi:nn200100]<0>(v35, "gibi");
      std::string::basic_string[abi:nn200100]<0>(v36, "en");
      std::string::basic_string[abi:nn200100]<0>(v37, "her");
      std::string::basic_string[abi:nn200100]<0>(v38, "kadar");
      std::string::basic_string[abi:nn200100]<0>(v39, "sen");
      std::string::basic_string[abi:nn200100]<0>(v40, "biz");
      std::string::basic_string[abi:nn200100]<0>(v41, "siz");
      std::string::basic_string[abi:nn200100]<0>(v42, "onlar");
      std::string::basic_string[abi:nn200100]<0>(v43, "mi");
      std::string::basic_string[abi:nn200100]<0>(v44, "şey");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v45);
      v16 = 24;
      do
      {
        if (SHIBYTE(__str[v16 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v16 - 1].__r_.__value_.__l.__data_);
        }

        --v16;
      }

      while (v16 * 24);
    }

    else if (CFStringHasPrefix(v2, @"ko"))
    {
      std::string::basic_string[abi:nn200100]<0>(__str, "이");
      std::string::basic_string[abi:nn200100]<0>(v22, "그");
      std::string::basic_string[abi:nn200100]<0>(v23, "저");
      std::string::basic_string[abi:nn200100]<0>(v24, "것");
      std::string::basic_string[abi:nn200100]<0>(v25, "의");
      std::string::basic_string[abi:nn200100]<0>(v26, "에");
      std::string::basic_string[abi:nn200100]<0>(&v27, "에서");
      std::string::basic_string[abi:nn200100]<0>(v28, "은");
      std::string::basic_string[abi:nn200100]<0>(v29, "는");
      std::string::basic_string[abi:nn200100]<0>(&v30, "이");
      std::string::basic_string[abi:nn200100]<0>(v31, "가");
      std::string::basic_string[abi:nn200100]<0>(v32, "을");
      std::string::basic_string[abi:nn200100]<0>(&v33, "를");
      std::string::basic_string[abi:nn200100]<0>(v34, "과");
      std::string::basic_string[abi:nn200100]<0>(v35, "와");
      std::string::basic_string[abi:nn200100]<0>(v36, "하다");
      std::string::basic_string[abi:nn200100]<0>(v37, "있다");
      std::string::basic_string[abi:nn200100]<0>(v38, "없다");
      std::string::basic_string[abi:nn200100]<0>(v39, "그리고");
      std::string::basic_string[abi:nn200100]<0>(v40, "그러나");
      std::string::basic_string[abi:nn200100]<0>(v41, "그래서");
      std::string::basic_string[abi:nn200100]<0>(v42, "또는");
      std::string::basic_string[abi:nn200100]<0>(v43, "등");
      std::string::basic_string[abi:nn200100]<0>(v44, "수");
      std::string::basic_string[abi:nn200100]<0>(&v45, "우리");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&OptionalWords(void)::optionalWords, __str, &v46);
      v17 = 25;
      do
      {
        if (SHIBYTE(__str[v17 - 1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str[v17 - 1].__r_.__value_.__l.__data_);
        }

        --v17;
      }

      while (v17 * 24);
    }

    else
    {
      v18 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@", @"com.apple.metadata.SpotlightLinguistics");
      if (v18)
      {
        v19 = v18;
        if (CFBundleGetBundleWithIdentifier(v18))
        {
          populateStopWords(v2);
        }

        CFRelease(v19);
      }
    }

    CFRelease(v1);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void populateStopWords(const __CFString *a1)
{
  v19 = -1;
  v20 = -1;
  v17 = 0;
  v18 = -1;
  if (CFBundleGetLocalizationInfoForLocalization())
  {
    v2 = CFBundleCopyLocalizationForLocalizationInfo();
    if (v2)
    {
      v3 = v2;
      v4 = CFBundleCopyLocalizedStringTableForLocalization();
      if (v4)
      {
        v5 = v4;
        if (CFDictionaryGetCount(v4) || (v21.location = 0, v21.length = 2, v6 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v21), CFRelease(v5), v5 = CFBundleCopyLocalizedStringTableForLocalization(), CFRelease(v6), v5))
        {
          Value = CFDictionaryGetValue(v5, @"STOPWORDS_SHORT");
          if (Value)
          {
            ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], Value, @" | ");
            if (ArrayBySeparatingStrings)
            {
              v9 = ArrayBySeparatingStrings;
              Count = CFArrayGetCount(ArrayBySeparatingStrings);
              if (Count >= 1)
              {
                v11 = Count;
                for (i = 0; i != v11; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
                  CStringPtr = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
                  if (CStringPtr)
                  {
                    std::string::basic_string[abi:nn200100]<0>(__p, CStringPtr);
                    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(&OptionalWords(void)::optionalWords, __p);
                    if (v16 < 0)
                    {
                      operator delete(__p[0]);
                    }
                  }
                }
              }

              CFRelease(v9);
            }
          }

          CFRelease(v5);
        }
      }

      CFRelease(v3);
    }
  }
}

const __CFString *isOptionalToken(const __CFString *a1, int a2)
{
  v2 = a1;
  v10 = a1;
  if (!a2 || !hasTrailingAsterisk(a1) || (Length = CFStringGetLength(v2), Length < 1))
  {
    v4 = 0;
    if (!v2)
    {
      goto LABEL_12;
    }

LABEL_7:
    __p = 0;
    v8 = 0;
    v9 = 0;
    utf8QueryString(&__p, &v10, 1, 0);
    v5 = HIBYTE(v9);
    if (v9 < 0)
    {
      v5 = v8;
    }

    if (v5)
    {
      v2 = isOptionalWord(&__p);
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v2 = 0;
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }
    }

    operator delete(__p);
    goto LABEL_12;
  }

  v11.location = 0;
  v11.length = Length - 1;
  v2 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v2, v11);
  v10 = v2;
  v4 = v2;
  if (v2)
  {
    goto LABEL_7;
  }

LABEL_12:
  if (v4)
  {
    CFRelease(v4);
  }

  return v2;
}

BOOL isRelationWord(char *a1)
{
  {
    RelationWords(void)::relationWords = 0u;
    *algn_1EBF48578 = 0u;
    dword_1EBF48588 = 1065353216;
  }

  if (RelationWords(void)::onceToken[0] != -1)
  {
    dispatch_once(RelationWords(void)::onceToken, &__block_literal_global_336);
  }

  if (!qword_1EBF48580)
  {
    return 0;
  }

  if (isLowerStr(a1))
  {
    return std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(&RelationWords(void)::relationWords, a1) != 0;
  }

  toLowerCase(&__p, a1);
  v2 = std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(&RelationWords(void)::relationWords, &__p) != 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v2;
}

void ___ZL13RelationWordsv_block_invoke()
{
  v47.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  v0 = CFLocaleCopyCurrent();
  if (v0)
  {
    v1 = v0;
    v2 = MEMORY[0x1C691EAF0]();
    if (CFStringHasPrefix(v2, @"en"))
    {
      std::string::basic_string[abi:nn200100]<0>(&__str, "mother");
      std::string::basic_string[abi:nn200100]<0>(v6, "mothers");
      std::string::basic_string[abi:nn200100]<0>(v7, "mom");
      std::string::basic_string[abi:nn200100]<0>(v8, "moms");
      std::string::basic_string[abi:nn200100]<0>(v9, "mama");
      std::string::basic_string[abi:nn200100]<0>(v10, "mommy");
      std::string::basic_string[abi:nn200100]<0>(v11, "mommies");
      std::string::basic_string[abi:nn200100]<0>(v12, "mum");
      std::string::basic_string[abi:nn200100]<0>(v13, "father");
      std::string::basic_string[abi:nn200100]<0>(v14, "fathers");
      std::string::basic_string[abi:nn200100]<0>(v15, "dad");
      std::string::basic_string[abi:nn200100]<0>(v16, "dads");
      std::string::basic_string[abi:nn200100]<0>(v17, "papa");
      std::string::basic_string[abi:nn200100]<0>(v18, "daddy");
      std::string::basic_string[abi:nn200100]<0>(v19, "daddies");
      std::string::basic_string[abi:nn200100]<0>(v20, "brother");
      std::string::basic_string[abi:nn200100]<0>(v21, "brothers");
      std::string::basic_string[abi:nn200100]<0>(v22, "sister");
      std::string::basic_string[abi:nn200100]<0>(v23, "sisters");
      std::string::basic_string[abi:nn200100]<0>(v24, "sibling");
      std::string::basic_string[abi:nn200100]<0>(v25, "siblings");
      std::string::basic_string[abi:nn200100]<0>(v26, "parent");
      std::string::basic_string[abi:nn200100]<0>(v27, "parents");
      std::string::basic_string[abi:nn200100]<0>(v28, "family");
      std::string::basic_string[abi:nn200100]<0>(v29, "relatives");
      std::string::basic_string[abi:nn200100]<0>(v30, "kin");
      std::string::basic_string[abi:nn200100]<0>(v31, "friend");
      std::string::basic_string[abi:nn200100]<0>(v32, "friends");
      std::string::basic_string[abi:nn200100]<0>(v33, "partner");
      std::string::basic_string[abi:nn200100]<0>(v34, "partners");
      std::string::basic_string[abi:nn200100]<0>(v35, "spouse");
      std::string::basic_string[abi:nn200100]<0>(v36, "spouses");
      std::string::basic_string[abi:nn200100]<0>(v37, "coworker");
      std::string::basic_string[abi:nn200100]<0>(v38, "coworkers");
      std::string::basic_string[abi:nn200100]<0>(v39, "colleague");
      std::string::basic_string[abi:nn200100]<0>(v40, "colleagues");
      std::string::basic_string[abi:nn200100]<0>(v41, "alumni");
      std::string::basic_string[abi:nn200100]<0>(v42, "alum");
      std::string::basic_string[abi:nn200100]<0>(v43, "son");
      std::string::basic_string[abi:nn200100]<0>(v44, "sons");
      std::string::basic_string[abi:nn200100]<0>(v45, "daughter");
      std::string::basic_string[abi:nn200100]<0>(v46, "daughters");
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&RelationWords(void)::relationWords, &__str, &v47);
      v3 = 1008;
      do
      {
        if (__str.__r_.__value_.__s.__data_[v3 - 1] < 0)
        {
          operator delete(*(&__str.__r_.__value_.__l + v3 - 24));
        }

        v3 -= 24;
      }

      while (v3);
    }

    CFRelease(v1);
  }

  v4 = *MEMORY[0x1E69E9840];
}

BOOL isPhotosAttribute(uint64_t a1)
{
  {
    PhotosAttributes(void)::_photosAttributes = 0u;
    *algn_1EBF484F0 = 0u;
    dword_1EBF48500 = 1065353216;
  }

  if (PhotosAttributes(void)::onceToken != -1)
  {
    dispatch_once(&PhotosAttributes(void)::onceToken, &__block_literal_global_381);
  }

  return std::__hash_table<std::__hash_value_type<std::string,float>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,float>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,float>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,float>>>::find<std::string>(&PhotosAttributes(void)::_photosAttributes, a1) != 0;
}

void ___ZL16PhotosAttributesv_block_invoke()
{
  v17.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&v2, "kMDItemPhotosBusinessCategories");
  std::string::basic_string[abi:nn200100]<0>(v3, "kMDItemPhotosBusinessNames");
  std::string::basic_string[abi:nn200100]<0>(v4, "kMDItemPhotosEventCategories");
  std::string::basic_string[abi:nn200100]<0>(v5, "kMDItemPhotosEventNames");
  std::string::basic_string[abi:nn200100]<0>(v6, "kMDItemPhotosEventPerformers");
  std::string::basic_string[abi:nn200100]<0>(v7, "kMDItemPhotosHolidays");
  std::string::basic_string[abi:nn200100]<0>(v8, "kMDItemPhotosKeywords");
  std::string::basic_string[abi:nn200100]<0>(v9, "kMDItemPhotosLocationKeywords");
  std::string::basic_string[abi:nn200100]<0>(v10, "kMDItemPhotosMeanings");
  std::string::basic_string[abi:nn200100]<0>(v11, "kMDItemPhotosMediaTypes");
  std::string::basic_string[abi:nn200100]<0>(v12, "kMDItemPhotosMemoryTitle");
  std::string::basic_string[abi:nn200100]<0>(v13, "kMDItemPhotosPeopleNames");
  std::string::basic_string[abi:nn200100]<0>(v14, "kMDItemPhotosSceneClassificationLabels");
  std::string::basic_string[abi:nn200100]<0>(v15, "kMDItemPhotosSceneClassificationSynonyms");
  std::string::basic_string[abi:nn200100]<0>(v16, "kMDItemPhotosSeasons");
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__assign_unique<std::string const*>(&PhotosAttributes(void)::_photosAttributes, &v2, &v17);
  v0 = 360;
  do
  {
    if (v2.__r_.__value_.__s.__data_[v0 - 1] < 0)
    {
      operator delete(*(&v2.__r_.__value_.__l + v0 - 24));
    }

    v0 -= 24;
  }

  while (v0);
  v1 = *MEMORY[0x1E69E9840];
}

uint64_t is_tokenizable_searchable_string_field(const char *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  result = gDefaultSchema;
  if (gDefaultSchema)
  {
    v5 = 0uLL;
    v6 = 0;
    _MDPlistContainerGetPlistObjectAtKeyArray();
    v7 = 0uLL;
    v8 = 0;
    v3 = 0uLL;
    v4 = 0;
    result = _MDPlistDictionaryGetPlistObjectForKey();
    if (result)
    {
      v3 = v7;
      v4 = v8;
      result = attrsKeyValueMatchesString(&v3, "type", 4, "CFString", 8);
      if (result)
      {
        v3 = v7;
        v4 = v8;
        if (attrsKeyValueEnabled(&v3) & 1) != 0 || (v3 = v7, v4 = v8, (attrsKeyValueEnabled(&v3)))
        {
          result = 0;
        }

        else
        {
          v3 = v7;
          v4 = v8;
          result = attrsKeyValueEnabled(&v3) ^ 1;
        }
      }
    }
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void *CreateQueryTokens(const __CFString *a1, int a2)
{
  if (*MEMORY[0x1E69E9AC8] <= 0x1FuLL)
  {
    ++sTotal;
  }

  v4 = malloc_type_zone_calloc(queryZone, 1uLL, 0x20uLL, 0x5BAF1CEAuLL);
  if (!v4)
  {
    _log_fault_for_malloc_failure();
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = MEMORY[0x1E695E9C0];
  *v4 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *(v4 + 1) = CFArrayCreateMutable(v5, 0, v6);
  *(v4 + 2) = CFArrayCreateMutable(v5, 0, v6);
  if (a2)
  {
    v7 = CFLocaleCopyCurrent();
    MEMORY[0x1C691EAF0]();
    v8 = CITokenizerCreate(3);
    *(v4 + 3) = v8;
    CITokenizerGetQueryTokensWithOptions(v8);
    CFRelease(v7);
    CITokenizerDispose(v8);
    *(v4 + 3) = 0;
  }

  else
  {
    v12 = 0;
    Length = CFStringGetLength(a1);
    v9 = CFNumberCreate(v5, kCFNumberCFIndexType, &v12);
    CFArrayAppendValue(*(v4 + 1), v9);
    CFRelease(v9);
    v10 = CFNumberCreate(v5, kCFNumberCFIndexType, &Length);
    CFArrayAppendValue(*(v4 + 2), v10);
    CFRelease(v10);
    CFArrayAppendValue(*v4, a1);
  }

  return v4;
}

void QueryTokensCallback(unsigned __int16 *a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    bzero(bytes, 0x414uLL);
    numBytes[0] = 0;
    if (!utf8_encodestr(a1, 2 * a2, bytes, numBytes, 1043))
    {
      v6 = numBytes[0];
      if (numBytes[0])
      {
        bytes[numBytes[0]] = 0;
        v7 = *MEMORY[0x1E695E480];
        v8 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, v6, 0x8000100u, 0);
        *numBytes = *(*(a3 + 3) + 88);
        v9 = CFNumberCreate(v7, kCFNumberCFIndexType, numBytes);
        CFArrayAppendValue(*(a3 + 1), v9);
        CFRelease(v9);
        v10 = CFNumberCreate(v7, kCFNumberCFIndexType, &numBytes[1]);
        CFArrayAppendValue(*(a3 + 2), v10);
        CFRelease(v10);
        CFArrayAppendValue(*a3, v8);
        CFRelease(v8);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void freeQueryTokensContext(CFTypeRef *a1)
{
  if (a1)
  {
    CFRelease(*a1);
    CFRelease(a1[1]);
    CFRelease(a1[2]);

    free(a1);
  }
}

uint64_t getRangeAtIndex(const __CFArray *a1, const __CFArray *a2, CFIndex idx)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1, idx);
  v6 = CFGetTypeID(ValueAtIndex);
  if (v6 != CFNumberGetTypeID())
  {
    return -1;
  }

  v7 = CFArrayGetValueAtIndex(a2, idx);
  v8 = CFGetTypeID(v7);
  if (v8 != CFNumberGetTypeID())
  {
    return -1;
  }

  valuePtr = 0;
  if (!CFNumberGetValue(ValueAtIndex, kCFNumberCFIndexType, &valuePtr))
  {
    return -1;
  }

  v10 = 0;
  if (CFNumberGetValue(v7, kCFNumberCFIndexType, &v10))
  {
    return valuePtr;
  }

  else
  {
    return -1;
  }
}

uint64_t joinVectors(uint64_t a1, void *a2, int a3)
{
  v33 = 0;
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  *v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  std::ostringstream::basic_ostringstream[abi:nn200100](&v27);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "{", 1);
  v4 = *MEMORY[0x1E69E54E8];
  v23 = *MEMORY[0x1E69E54E8];
  v24 = *(MEMORY[0x1E69E54E8] + 24);
  if (a2[1] != *a2)
  {
    v5 = 0;
    while (1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "{", 1);
      if (*(*a2 + 24 * v5 + 8) != *(*a2 + 24 * v5))
      {
        break;
      }

LABEL_44:
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "}", 1);
      v21 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
      if (v5 < v21 - 1)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, ", ", 2);
        v21 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
      }

      if (++v5 >= v21)
      {
        goto LABEL_47;
      }
    }

    v6 = 0;
    v7 = 0;
    while (1)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "", 1);
      v8 = (*(*a2 + 24 * v5) + v6);
      v9 = v8[23];
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v8 + 1);
      }

      if (v9 >= 4)
      {
        if (!a3)
        {
          goto LABEL_16;
        }

        if (isSearchToolDebugModeEnabled_onceToken != -1)
        {
          dispatch_once(&isSearchToolDebugModeEnabled_onceToken, &__block_literal_global_14_11145);
        }

        if (isSearchToolDebugModeEnabled_ffStatus != 1)
        {
LABEL_16:
          v40 = 0;
          v38 = 0u;
          memset(v39, 0, sizeof(v39));
          *__p = 0u;
          v37 = 0u;
          v34 = 0u;
          memset(v35, 0, sizeof(v35));
          std::ostringstream::basic_ostringstream[abi:nn200100](&v34);
          if (v8[23] >= 0)
          {
            v12 = v8;
          }

          else
          {
            v12 = *v8;
          }

          v26.__r_.__value_.__s.__data_[0] = *v12;
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v34, &v26, 1);
          if (v8[23] >= 0)
          {
            v13 = v8;
          }

          else
          {
            v13 = *v8;
          }

          v26.__r_.__value_.__s.__data_[0] = v13[1];
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v34, &v26, 1);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v34, "...", 3);
          v14 = v8[23];
          if ((v14 & 0x80u) == 0)
          {
            v15 = v8;
          }

          else
          {
            v15 = *v8;
          }

          if ((v14 & 0x80u) != 0)
          {
            v14 = *(v8 + 1);
          }

          v26.__r_.__value_.__s.__data_[0] = v15[v14 - 1];
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v34, &v26, 1);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v34, "<", 1);
          if (v8[23] >= 0)
          {
            v16 = v8[23];
          }

          else
          {
            v16 = *(v8 + 1);
          }

          v17 = MEMORY[0x1C691FCA0](&v34, v16);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, " chars>", 7);
          std::stringbuf::str();
          *&v34 = v23;
          *(&v35[-1] + *(v23 - 24)) = v24;
          *(&v34 + 1) = MEMORY[0x1E69E5548] + 16;
          if (SHIBYTE(v37) < 0)
          {
            operator delete(__p[1]);
          }

          *(&v34 + 1) = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v35);
          std::ostream::~ostream();
          MEMORY[0x1C691FE80](v39);
          goto LABEL_33;
        }

        if (v8[23] < 0)
        {
LABEL_15:
          std::string::__init_copy_ctor_external(&v26, *v8, *(v8 + 1));
          goto LABEL_33;
        }
      }

      else if (v10 < 0)
      {
        goto LABEL_15;
      }

      v11 = *v8;
      v26.__r_.__value_.__r.__words[2] = *(v8 + 2);
      *&v26.__r_.__value_.__l.__data_ = v11;
LABEL_33:
      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v26;
      }

      else
      {
        v18 = v26.__r_.__value_.__r.__words[0];
      }

      if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v26.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, v18, size);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "", 1);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      v20 = 0xAAAAAAAAAAAAAAABLL * ((*(*a2 + 24 * v5 + 8) - *(*a2 + 24 * v5)) >> 3);
      if (v7 < v20 - 1)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, ", ", 2);
        v20 = 0xAAAAAAAAAAAAAAABLL * ((*(*a2 + 24 * v5 + 8) - *(*a2 + 24 * v5)) >> 3);
      }

      ++v7;
      v6 += 24;
      if (v7 >= v20)
      {
        goto LABEL_44;
      }
    }
  }

LABEL_47:
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v27, "}", 1);
  std::stringbuf::str();
  *&v27 = v23;
  *(&v28[-1] + *(v23 - 24)) = v24;
  *(&v27 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[1]);
  }

  *(&v27 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v28);
  std::ostream::~ostream();
  return MEMORY[0x1C691FE80](v32);
}

uint64_t std::ostringstream::basic_ostringstream[abi:nn200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x1E69E5570] + 24;
  v3 = MEMORY[0x1E69E5570] + 64;
  *(a1 + 112) = MEMORY[0x1E69E5570] + 64;
  v4 = a1 + 8;
  v5 = *(MEMORY[0x1E69E54E8] + 16);
  v6 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, (a1 + 8));
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *(a1 + 112) = v3;
  v8 = MEMORY[0x1E69E5538] + 16;
  *a1 = v2;
  *(a1 + 8) = v8;
  MEMORY[0x1C691FE40](a1 + 16);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  std::stringbuf::__init_buf_ptrs[abi:nn200100](v4);
  return a1;
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v19[0] = 0;
  v19[1] = 0;
  MEMORY[0x1C691FC40](v19, a1);
  if (LOBYTE(v19[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = a2 + a3;
    if ((*(v6 + 2) & 0xB0) == 0x20)
    {
      v9 = a2 + a3;
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v6 + 36);
    if (v10 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v11 = std::locale::use_facet(&__b, MEMORY[0x1E69E5318]);
      v10 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v10;
      if (!v7)
      {
LABEL_28:
        std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
        goto LABEL_29;
      }
    }

    else if (!v7)
    {
      goto LABEL_28;
    }

    v12 = *(v6 + 3);
    v13 = v12 <= a3;
    v14 = v12 - a3;
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    if (v9 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v9 - a2) != v9 - a2)
    {
      goto LABEL_28;
    }

    if (v15 >= 1)
    {
      __b.__locale_ = 0;
      v21 = 0;
      v22 = 0;
      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      if (v15 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v22) = v15;
      memset(&__b, v10, v15);
      *(&__b.__locale_ + v15) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v17 = (*(*v7 + 96))(v7, p_b, v15);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v17 != v15)
      {
        goto LABEL_28;
      }
    }

    if (v8 - v9 >= 1 && (*(*v7 + 96))(v7, v9, v8 - v9) != v8 - v9)
    {
      goto LABEL_28;
    }

    *(v6 + 3) = 0;
  }

LABEL_29:
  MEMORY[0x1C691FC50](v19);
  return a1;
}

uint64_t store_stream_init(uint64_t a1, _DWORD *a2, char a3)
{
  v11 = 0;
  v6 = _fd_acquire_fd(a2, &v11);
  v7 = v6;
  v8 = v11;
  inited = store_stream_init_fd(a1, v6, v11, 0, a3);
  if (inited)
  {
    *(a1 + 56) = a2;
  }

  else
  {
    _fd_release_fd(a2, v7, 0, v8);
  }

  return inited;
}

uint64_t store_stream_init_fd(uint64_t a1, uint64_t a2, uint64_t a3, off_t a4, char a5)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(&v18, 0, sizeof(v18));
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 48) = 0u;
  *a1 = -1;
  v10 = fstat(a2, &v18);
  *(a1 + 16) = v10;
  if (!v10)
  {
    st_size = 0x100000;
    *(a1 + 32) = 0x100000;
    if ((a5 & 1) == 0)
    {
      st_size = v18.st_size;
      if (v18.st_size >= 0x100000)
      {
        st_size = 0x100000;
      }

      else
      {
        *(a1 + 32) = v18.st_size;
      }
    }

    v16 = malloc_type_malloc(st_size, 0x9B7C0D93uLL);
    *(a1 + 48) = v16;
    if (v16)
    {
      *(a1 + 24) = a4;
      if (a5)
      {
LABEL_14:
        *a1 = a2;
        *(a1 + 8) = a3;
        result = 1;
        goto LABEL_5;
      }

      v17 = prot_pread(a2, v16, *(a1 + 32), a4);
      if (v17 != -1)
      {
        *(a1 + 24) += v17;
        *(a1 + 32) = v17;
        goto LABEL_14;
      }
    }
  }

  v11 = __error();
  v12 = *v11;
  *(a1 + 16) = *v11;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18.st_dev = 67109120;
    *&v18.st_mode = v12;
    _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "store_stream_init err:%d", &v18, 8u);
  }

  store_stream_destroy(a1);
  result = 0;
LABEL_5:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void store_stream_destroy(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    free(v2);
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
    if (*a1 != -1)
    {
      v3 = *(a1 + 56);
      if (v3)
      {
        _fd_release_fd(v3, *a1, 0, *(a1 + 8));
        *a1 = -1;
      }
    }

    *(a1 + 56) = 0;
  }
}

void __work_fun_inner_block_invoke_2_55(uint64_t a1)
{
  dispatch_resume(*(a1 + 32));
  v2 = *(a1 + 32);

  dispatch_release(v2);
}

void si_enqueue_barrier(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (a1)
  {
    if (*(a1 + 32) == 1)
    {
      si_enqueue_barrier_with_qos(a1, *(a1 + 24), a2, a3);
    }

    else
    {
      si_enqueue_barrier_for_job(a1, a2, a3, 0);
    }
  }

  else
  {
    a2(a3, 1);
  }
}

void si_enqueue_block(uint64_t a1, void (**aBlock)(void *, uint64_t))
{
  if (a1)
  {
    if (*(a1 + 32) == 1)
    {
      v3 = *(a1 + 24);
      v4 = _Block_copy(aBlock);

      si_enqueue_work_with_qos(a1, v3, _si_run_block, v4);
    }

    else
    {
      v6 = _Block_copy(aBlock);

      si_enqueue_work_for_job(a1, _si_run_block, v6, 0);
    }
  }

  else
  {
    v5 = aBlock[2];

    v5(aBlock, 1);
  }
}