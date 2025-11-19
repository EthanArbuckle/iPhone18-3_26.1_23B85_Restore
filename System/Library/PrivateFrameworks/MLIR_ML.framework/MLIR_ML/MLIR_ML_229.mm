void llvm::ListeningSocket::~ListeningSocket(llvm::ListeningSocket *this)
{
  v2 = atomic_load(this);
  if (v2 != -1)
  {
    v3 = v2;
    atomic_compare_exchange_strong(this, &v3, 0xFFFFFFFF);
    if (v3 == v2)
    {
      close(v2);
      v4 = this + 8;
      if (*(this + 31) < 0)
      {
        v4 = *v4;
      }

      unlink(v4);
      __buf = 65;
      write(*(this + 9), &__buf, 1uLL);
    }
  }

  v5 = *(this + 8);
  if (v5 != -1)
  {
    close(v5);
  }

  v6 = *(this + 9);
  if (v6 != -1)
  {
    close(v6);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *llvm::raw_socket_stream::raw_socket_stream(llvm::raw_socket_stream *this, unsigned int a2)
{
  result = llvm::raw_fd_stream::raw_fd_stream(this, a2, 1);
  *result = &unk_2868A4438;
  return result;
}

{
  result = llvm::raw_fd_stream::raw_fd_stream(this, a2, 1);
  *result = &unk_2868A4438;
  return result;
}

void llvm::raw_socket_stream::~raw_socket_stream(llvm::raw_socket_stream *this)
{
  llvm::raw_fd_ostream::~raw_fd_ostream(this);

  JUMPOUT(0x259C63180);
}

uint64_t llvm::raw_socket_stream::createConnectedUnix@<X0>(const void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  getSocketFD(v5, a1, a2);
  if ((v6 & 1) == 0)
  {
    operator new();
  }

  result = *v5;
  *v5 = 0;
  *(a3 + 8) |= 1u;
  *a3 = result;
  return result;
}

ssize_t llvm::raw_socket_stream::read(llvm::raw_fd_stream *a1, char *a2, size_t a3, std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v13[0] = &unk_2868A4560;
  v13[1] = a1;
  v14 = v13;
  LOBYTE(v11) = 0;
  v12 = 0;
  v7 = manageTimeout(a4, v13, &v11);
  v9 = v8;
  if (v14 != v13)
  {
    if (v14)
    {
      (*(*v14 + 40))();
    }

    if (v7)
    {
      goto LABEL_5;
    }

    return llvm::raw_fd_stream::read(a1, a2, a3);
  }

  (*(*v14 + 32))(v14);
  if (!v7)
  {
    return llvm::raw_fd_stream::read(a1, a2, a3);
  }

LABEL_5:
  *(a1 + 9) = v7;
  *(a1 + 10) = v9;
  return -1;
}

uint64_t std::__function::__func<llvm::ListeningSocket::accept(std::chrono::duration<long long,std::ratio<1l,1000l>> const&)::$_0,std::allocator<llvm::ListeningSocket::accept(std::chrono::duration<long long,std::ratio<1l,1000l>> const&)::$_0>,int ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2868A44D0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<llvm::ListeningSocket::accept(std::chrono::duration<long long,std::ratio<1l,1000l>> const&)::$_0,std::allocator<llvm::ListeningSocket::accept(std::chrono::duration<long long,std::ratio<1l,1000l>> const&)::$_0>,int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4llvm15ListeningSocket6acceptERKNSt3__16chrono8durationIxNS1_5ratioILl1ELl1000EEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4llvm15ListeningSocket6acceptERKNSt3__16chrono8durationIxNS1_5ratioILl1ELl1000EEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4llvm15ListeningSocket6acceptERKNSt3__16chrono8durationIxNS1_5ratioILl1ELl1000EEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4llvm15ListeningSocket6acceptERKNSt3__16chrono8durationIxNS1_5ratioILl1ELl1000EEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::__function::__func<llvm::raw_socket_stream::read(char *,unsigned long,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)::$_0,std::allocator<llvm::raw_socket_stream::read(char *,unsigned long,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)::$_0>,int ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2868A4560;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<llvm::raw_socket_stream::read(char *,unsigned long,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)::$_0,std::allocator<llvm::raw_socket_stream::read(char *,unsigned long,std::chrono::duration<long long,std::ratio<1l,1000l>> const&)::$_0>,int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4llvm17raw_socket_stream4readEPcmRKNSt3__16chrono8durationIxNS2_5ratioILl1ELl1000EEEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4llvm17raw_socket_stream4readEPcmRKNSt3__16chrono8durationIxNS2_5ratioILl1ELl1000EEEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4llvm17raw_socket_stream4readEPcmRKNSt3__16chrono8durationIxNS2_5ratioILl1ELl1000EEEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4llvm17raw_socket_stream4readEPcmRKNSt3__16chrono8durationIxNS2_5ratioILl1ELl1000EEEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t llvm_regcomp(uint64_t a1, char *__s, int a3)
{
  if ((~a3 & 0x11) == 0)
  {
    return 16;
  }

  v86 = v3;
  v87 = v4;
  if ((a3 & 0x20) != 0)
  {
    v10 = *(a1 + 16);
    v9 = v10 - __s;
    if (v10 < __s)
    {
      return 16;
    }

    v6 = a3;
    v8 = __s;
    v7 = a1;
  }

  else
  {
    v6 = a3;
    v7 = a1;
    v8 = __s;
    v9 = strlen(__s);
  }

  v11 = malloc_type_malloc(0x18FuLL, 0x10300409EB0E935uLL);
  if (!v11)
  {
    return 12;
  }

  v12 = v11;
  v74 = 0;
  ptr[0] = 0;
  v73 = 0u;
  v13 = 3 * (v9 >> 1);
  v14 = v13 + 1;
  *&v73 = v13 + 1;
  v15 = malloc_type_calloc(v13 + 1, 8uLL, 0x100004000313F17uLL);
  ptr[1] = v15;
  if (!v15)
  {
    free(v12);
    return 12;
  }

  v19 = v6;
  v75 = v12;
  v20 = v8;
  v21 = &v8[v9];
  v70 = v20;
  v71 = v21;
  LODWORD(ptr[0]) = 0;
  LODWORD(v74) = 0;
  v22 = 0.0;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v12[4] = 256;
  *(v12 + 5) = 0;
  v23 = v12 + 5;
  *(v12 + 7) = 0;
  v12[9] = 0;
  *(v12 + 34) = 0u;
  *(v12 + 66) = 0u;
  v12[10] = v6 & 0xFFFFFF7F;
  *(v12 + 11) = v12 + 66;
  *(v12 + 12) = 0;
  v12[26] = 0;
  *(v12 + 14) = 0;
  *(v12 + 9) = 0;
  *(v12 + 10) = 0x100000000;
  *(v12 + 38) = 0u;
  *(v12 + 42) = 0u;
  *(v12 + 46) = 0u;
  *(v12 + 50) = 0u;
  *(v12 + 54) = 0u;
  *(v12 + 58) = 0u;
  *(v12 + 62) = 0u;
  *(v12 + 70) = 0u;
  *(v12 + 74) = 0u;
  *(v12 + 78) = 0u;
  *(v12 + 82) = 0u;
  *(v12 + 86) = 0u;
  *(v12 + 90) = 0u;
  *(v12 + 94) = 0u;
  v12[30] = 0;
  if (v13 < 0x7FFFFFFFFFFFFFFFLL || (v24 = (v13 + 2) / 2, v25 = ((v13 + 2 + ((v13 + 2) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v24, v14 >= v25))
  {
    v26 = 1;
  }

  else if (v25 >> 61)
  {
    v26 = 0;
    LODWORD(ptr[0]) = 12;
    v20 = &nuls;
    v70 = &nuls;
    v71 = &nuls;
    v21 = &nuls;
  }

  else
  {
    v54 = v6;
    v55 = v20;
    v56 = v15;
    v15 = malloc_type_realloc(v15, 24 * v24, 0x100004000313F17uLL);
    if (v15)
    {
      ptr[1] = v15;
      *&v73 = v25;
      v26 = 1;
      v20 = v55;
      v19 = v54;
    }

    else
    {
      v26 = 0;
      LODWORD(ptr[0]) = 12;
      v20 = &nuls;
      v70 = &nuls;
      v71 = &nuls;
      v21 = &nuls;
      v19 = v54;
      v15 = v56;
    }
  }

  *(&v73 + 1) = 1;
  *v15 = 0x8000000;
  *(v12 + 7) = *(&v73 + 1) - 1;
  if (v19)
  {
    p_ere(&v70, 128, v22, v16, v17, v18);
  }

  else if ((v19 & 0x10) != 0)
  {
    if (v21 - v20 <= 0)
    {
      if (v26)
      {
        LODWORD(ptr[0]) = 14;
      }

      v20 = &nuls;
      v70 = &nuls;
      v71 = &nuls;
      v21 = &nuls;
    }

    if (v21 - v20 >= 1)
    {
      do
      {
        v70 = v20 + 1;
        *&v22 = ordinary(&v70, *v20, v22, v16, v17, v18).n128_u64[0];
        v20 = v70;
      }

      while (v71 - v70 > 0);
    }
  }

  else
  {
    p_bre(&v70, 128, 128, v22, v16, v17, v18);
  }

  v27 = *(&v73 + 1);
  if (!LODWORD(ptr[0]))
  {
    if (*(&v73 + 1) < v73 || (v28 = (v73 + 1) / 2, v29 = ((v73 + 1 + ((v73 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v28, v73 >= v29))
    {
      v30 = 1;
    }

    else
    {
      if (v29 >> 61)
      {
        v30 = 0;
        LODWORD(ptr[0]) = 12;
        v70 = &nuls;
        v71 = &nuls;
        goto LABEL_35;
      }

      v57 = malloc_type_realloc(ptr[1], 24 * v28, 0x100004000313F17uLL);
      if (v57)
      {
        ptr[1] = v57;
        *&v73 = v29;
        v30 = LODWORD(ptr[0]) == 0;
      }

      else
      {
        if (!LODWORD(ptr[0]))
        {
          LODWORD(ptr[0]) = 12;
        }

        v30 = 0;
        v70 = &nuls;
        v71 = &nuls;
      }
    }

    v27 = *(&v73 + 1);
LABEL_35:
    *(&v73 + 1) = v27 + 1;
    *(ptr[1] + v27) = 0x8000000;
    v27 = *(&v73 + 1);
    *(v12 + 8) = *(&v73 + 1) - 1;
    if (v30)
    {
      v31 = *(v12 + 11);
      for (i = -128; i != 128; ++i)
      {
        if (!*(v31 + i) && *v23 >= 1)
        {
          v33 = (*v23 + 7) >> 3;
          v34 = *(v12 + 4);
          while (!*(v34 + i))
          {
            v34 += v12[4];
            if (!--v33)
            {
              goto LABEL_37;
            }
          }

          v35 = v12[21];
          v12[21] = v35 + 1;
          *(v31 + i) = v35;
          if (i <= 126)
          {
            v36 = i;
            do
            {
              ++v36;
              if (!*(v31 + v36))
              {
                if (*v23 < 1)
                {
LABEL_46:
                  *(v31 + v36) = v35;
                }

                else
                {
                  v37 = (*v23 + 7) >> 3;
                  v38 = *(v12 + 4);
                  while (*(v38 + i) == *(v38 + v36))
                  {
                    v38 += v12[4];
                    if (!--v37)
                    {
                      goto LABEL_46;
                    }
                  }
                }
              }
            }

            while (v36 != 127);
          }
        }

LABEL_37:
        ;
      }

      v27 = *(&v73 + 1);
    }

    goto LABEL_55;
  }

  *(v12 + 8) = *(&v73 + 1) - 1;
LABEL_55:
  *(v12 + 6) = v27;
  if (v27 >> 61)
  {
    *(v12 + 1) = ptr[1];
    LODWORD(v39) = ptr[0];
    v40 = v7;
    if (!LODWORD(ptr[0]))
    {
      LODWORD(v39) = 12;
      LODWORD(ptr[0]) = 12;
    }

    v41 = 0;
    v42 = 0;
    v70 = &nuls;
    v71 = &nuls;
    goto LABEL_86;
  }

  v43 = malloc_type_realloc(ptr[1], 8 * v27, 0x100004000313F17uLL);
  *(v12 + 1) = v43;
  LODWORD(v39) = ptr[0];
  if (!v43)
  {
    v40 = v7;
    if (!LODWORD(ptr[0]))
    {
      LODWORD(v39) = 12;
      LODWORD(ptr[0]) = 12;
    }

    v41 = 0;
    v42 = 0;
    v70 = &nuls;
    v71 = &nuls;
    *(v12 + 1) = ptr[1];
    goto LABEL_86;
  }

  v44 = v43;
  v40 = v7;
  if (LODWORD(ptr[0]))
  {
    goto LABEL_85;
  }

  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = (v44 + 8);
  v49 = (v44 + 8);
  do
  {
    v51 = *v49++;
    LODWORD(v50) = v51;
    v52 = ((v51 & 0xF8000000) - 0x10000000) >> 27;
    if (v52 > 0xD)
    {
      goto LABEL_76;
    }

    if (((1 << v52) & 0x1880) != 0)
    {
      goto LABEL_63;
    }

    if (((1 << v52) & 0x2200) != 0)
    {
      v49 = v48;
      while (1)
      {
        v49 += v50 & 0x7FFFFFF;
        v50 = *v49;
        v53 = *v49 & 0xF8000000;
        if (v53 == 1610612736)
        {
          break;
        }

        if (v53 != -2013265920)
        {
          if (v53 == -1879048192)
          {
            break;
          }

          v12[18] |= 4u;
          goto LABEL_84;
        }
      }

LABEL_76:
      if (v47 > v12[26])
      {
        v12[26] = v47;
        v45 = v46;
      }

      v47 = 0;
      goto LABEL_63;
    }

    if (v52)
    {
      goto LABEL_76;
    }

    if (!v47)
    {
      v46 = v48;
    }

    ++v47;
LABEL_63:
    v48 = v49;
  }

  while ((v50 & 0xF8000000) != 0x8000000);
  v63 = v12[26];
  if (v63)
  {
    v64 = malloc_type_malloc(v63 + 1, 0xAAABC376uLL);
    *(v12 + 12) = v64;
    if (v64)
    {
      v65 = v64;
      v66 = v12[26];
      if (v66 < 1)
      {
        v40 = v7;
      }

      else
      {
        v40 = v7;
        do
        {
          do
          {
            v68 = *v45++;
            v67 = v68;
          }

          while ((v68 & 0xF8000000) != 0x10000000);
          *v65++ = v67;
        }

        while (v66-- > 1);
      }

      *v65 = 0;
    }

    else
    {
      v12[26] = 0;
      v40 = v7;
    }
  }

LABEL_84:
  LODWORD(v39) = ptr[0];
  if (LODWORD(ptr[0]))
  {
LABEL_85:
    v41 = 0;
    v42 = 0;
  }

  else
  {
    v39 = 0;
    v42 = 0;
    v58 = (*(v12 + 1) + 8);
    do
    {
      v59 = *v58++;
      v60 = v59 & 0xF8000000;
      if (v39 <= v42)
      {
        v61 = v42;
      }

      else
      {
        v61 = v39;
      }

      v62 = v39 - 1;
      if (v60 == 1207959552)
      {
        ++v39;
      }

      if (v60 == 1342177280)
      {
        v39 = v62;
        v42 = v61;
      }
    }

    while (v60 != 0x8000000);
    if (v39)
    {
      LODWORD(v39) = 0;
      v12[18] |= 4u;
    }

    v41 = 1;
  }

LABEL_86:
  *(v12 + 16) = v42;
  *v12 = 53829;
  *(v40 + 8) = *(v12 + 14);
  *(v40 + 24) = v12;
  *v40 = 62053;
  if ((v12[18] & 4) != 0)
  {
    if (v41)
    {
      LODWORD(v39) = 15;
      LODWORD(ptr[0]) = 15;
    }

    v70 = &nuls;
    v71 = &nuls;
  }

  if (!v39)
  {
    return 0;
  }

  llvm_regfree(v40);
  return LODWORD(ptr[0]);
}

void p_ere(uint64_t a1, int a2, double a3, double a4, double a5, int32x4_t a6)
{
  v160 = 0;
  v161 = 0;
  v162 = 0;
  v158 = a1 + 64;
  v159 = a1 + 144;
  while (2)
  {
    v10 = *(a1 + 40);
    v11 = *a1;
    v12 = *(a1 + 8);
    v8 = v10;
    if (&v12[-*a1] < 1)
    {
LABEL_314:
      if (!*(a1 + 16))
      {
        *(a1 + 16) = 14;
      }

      *a1 = &nuls;
      *(a1 + 8) = &nuls;
      v11 = &nuls;
      v12 = &nuls;
      goto LABEL_317;
    }

    while (1)
    {
      v13 = *v11;
      v8 = *(a1 + 40);
      if (v13 == 124 || v13 == a2)
      {
        break;
      }

      v15 = v11 + 1;
      *a1 = v11 + 1;
      v16 = *v11;
      if (v16 > 62)
      {
        if (v16 > 93)
        {
          if (v16 != 94)
          {
            if (v16 == 123)
            {
              if (v12 - v15 >= 1 && *v15 - 48 <= 9)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 13;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
              }
            }

            else if (v16 == 124)
            {
              if (*(a1 + 16))
              {
                goto LABEL_142;
              }

              v18 = 14;
              goto LABEL_141;
            }

            goto LABEL_71;
          }

          if (!*(a1 + 16))
          {
            v25 = *(a1 + 32);
            if (v8 >= v25)
            {
              v26 = (v25 + 1) / 2;
              v27 = ((v25 + 1 + ((v25 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v26;
              if (v25 < v27)
              {
                if (v27 >> 61)
                {
                  goto LABEL_55;
                }

                v48 = malloc_type_realloc(*(a1 + 24), 24 * v26, 0x100004000313F17uLL);
                if (v48)
                {
                  *(a1 + 24) = v48;
                  *(a1 + 32) = v27;
                }

                else
                {
                  if (!*(a1 + 16))
                  {
LABEL_55:
                    *(a1 + 16) = 12;
                  }

                  *a1 = &nuls;
                  *(a1 + 8) = &nuls;
                }
              }
            }

            v49 = *(a1 + 24);
            v50 = *(a1 + 40);
            *(a1 + 40) = v50 + 1;
            *(v49 + 8 * v50) = 402653184;
          }

          v33 = 0;
          v51 = *(a1 + 56);
          v52 = v51[9];
          a4 = COERCE_DOUBLE(vadd_s32(v52, 0x100000001));
          LODWORD(a3) = v52.i32[0] | 1;
          HIDWORD(a3) = HIDWORD(a4);
          *&v51[9] = a3;
          v11 = *a1;
          v12 = *(a1 + 8);
          v34 = &v12[-*a1];
          if (v34 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_144;
        }

        if (v16 == 63)
        {
          goto LABEL_30;
        }

        if (v16 == 91)
        {
          p_bracket(a1, a3, a4, a5, a6);
          v33 = 1;
          v11 = *a1;
          v12 = *(a1 + 8);
          v34 = &v12[-*a1];
          if (v34 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_144;
        }

        if (v16 != 92)
        {
          goto LABEL_71;
        }

        if (v12 - v15 <= 0)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 5;
          }

          *a1 = &byte_27F875761;
          *(a1 + 8) = &nuls;
          v17 = nuls;
          if ((nuls - 49) > 8)
          {
            goto LABEL_72;
          }
        }

        else
        {
          *a1 = v15 + 1;
          v17 = *v15;
          if ((v17 - 49) > 8)
          {
            goto LABEL_72;
          }
        }

        v35 = (v17 - 48);
        v36 = *(v159 + 8 * v35);
        v37 = *(a1 + 16);
        if (!v36)
        {
          if (v37)
          {
            goto LABEL_142;
          }

          v18 = 6;
          goto LABEL_141;
        }

        if (v37)
        {
          v38 = *(v158 + 8 * v35) + 1;
          v39 = v36 - v38;
          if (v36 == v38)
          {
            goto LABEL_82;
          }

LABEL_270:
          if (v39 >= 1)
          {
            v127 = *(a1 + 32) + v39;
            if (v127 >> 61 || (v128 = malloc_type_realloc(*(a1 + 24), 8 * v127, 0x100004000313F17uLL)) == 0)
            {
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 12;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }

            else
            {
              *(a1 + 24) = v128;
              *(a1 + 32) = v127;
            }
          }

          memmove((*(a1 + 24) + 8 * *(a1 + 40)), (*(a1 + 24) + 8 * v38), 8 * v39);
          *(a1 + 40) += v39;
          if (!*(a1 + 16))
          {
            goto LABEL_278;
          }

LABEL_286:
          v33 = 1;
          *(*(a1 + 56) + 120) = 1;
          v11 = *a1;
          v12 = *(a1 + 8);
          v34 = &v12[-*a1];
          if (v34 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_144;
        }

        v41 = *(a1 + 32);
        if (v8 >= v41)
        {
          v42 = (v41 + 1) / 2;
          v43 = ((v41 + 1 + ((v41 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v42;
          if (v41 < v43)
          {
            if (v43 >> 61)
            {
              goto LABEL_95;
            }

            v123 = malloc_type_realloc(*(a1 + 24), 24 * v42, 0x100004000313F17uLL);
            if (v123)
            {
              *(a1 + 24) = v123;
              *(a1 + 32) = v43;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_95:
                *(a1 + 16) = 12;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }
          }
        }

        v124 = *(a1 + 24);
        v125 = *(a1 + 40);
        *(a1 + 40) = v125 + 1;
        *(v124 + 8 * v125) = v35 | 0x38000000;
        v126 = *(v159 + 8 * v35);
        v38 = *(v158 + 8 * v35) + 1;
        v39 = v126 - v38;
        if (v126 != v38)
        {
          goto LABEL_270;
        }

LABEL_82:
        if (*(a1 + 16))
        {
          goto LABEL_286;
        }

LABEL_278:
        v129 = *(a1 + 32);
        if (*(a1 + 40) >= v129)
        {
          v130 = (v129 + 1) / 2;
          v131 = ((v129 + 1 + ((v129 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v130;
          if (v129 < v131)
          {
            if (v131 >> 61)
            {
              goto LABEL_281;
            }

            v132 = malloc_type_realloc(*(a1 + 24), 24 * v130, 0x100004000313F17uLL);
            if (v132)
            {
              *(a1 + 24) = v132;
              *(a1 + 32) = v131;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_281:
                *(a1 + 16) = 12;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }
          }
        }

        v133 = *(a1 + 24);
        v134 = *(a1 + 40);
        *(a1 + 40) = v134 + 1;
        *(v133 + 8 * v134) = v35 | 0x40000000;
        goto LABEL_286;
      }

      if (v16 > 41)
      {
        if ((v16 - 42) < 2)
        {
LABEL_30:
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 13;
          }

          goto LABEL_142;
        }

        if (v16 != 46)
        {
          goto LABEL_71;
        }

        if ((*(*(a1 + 56) + 40) & 8) != 0)
        {
          *a1 = "^\n]";
          *(a1 + 8) = "";
          p_bracket(a1, a3, a4, a5, a6);
          *a1 = v15;
          *(a1 + 8) = v12;
          v33 = 1;
          v11 = *a1;
          v12 = *(a1 + 8);
          v34 = &v12[-*a1];
          if (v34 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_144;
        }

        if (*(a1 + 16))
        {
          goto LABEL_143;
        }

        v19 = *(a1 + 32);
        if (v8 >= v19)
        {
          v20 = (v19 + 1) / 2;
          v21 = ((v19 + 1 + ((v19 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v20;
          if (v19 < v21)
          {
            if (v21 >> 61)
            {
              goto LABEL_43;
            }

            v54 = malloc_type_realloc(*(a1 + 24), 24 * v20, 0x100004000313F17uLL);
            if (v54)
            {
              *(a1 + 24) = v54;
              *(a1 + 32) = v21;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_43:
                *(a1 + 16) = 12;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }
          }
        }

        v55 = *(a1 + 24);
        v56 = *(a1 + 40);
        *(a1 + 40) = v56 + 1;
        *(v55 + 8 * v56) = 671088640;
        v33 = 1;
        v11 = *a1;
        v12 = *(a1 + 8);
        v34 = &v12[-*a1];
        if (v34 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_144;
      }

      if (v16 == 36)
      {
        if (!*(a1 + 16))
        {
          v22 = *(a1 + 32);
          if (v8 >= v22)
          {
            v23 = (v22 + 1) / 2;
            v24 = ((v22 + 1 + ((v22 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v23;
            if (v22 < v24)
            {
              if (v24 >> 61)
              {
                goto LABEL_49;
              }

              v44 = malloc_type_realloc(*(a1 + 24), 24 * v23, 0x100004000313F17uLL);
              if (v44)
              {
                *(a1 + 24) = v44;
                *(a1 + 32) = v24;
              }

              else
              {
                if (!*(a1 + 16))
                {
LABEL_49:
                  *(a1 + 16) = 12;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
              }
            }
          }

          v45 = *(a1 + 24);
          v46 = *(a1 + 40);
          *(a1 + 40) = v46 + 1;
          *(v45 + 8 * v46) = 0x20000000;
        }

        v47 = *(a1 + 56);
        *(v47 + 72) |= 2u;
        ++*(v47 + 80);
        v33 = 1;
        v11 = *a1;
        v12 = *(a1 + 8);
        v34 = &v12[-*a1];
        if (v34 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_144;
      }

      if (v16 != 40)
      {
        if (v16 == 41)
        {
          if (*(a1 + 16))
          {
            goto LABEL_142;
          }

LABEL_140:
          v18 = 8;
LABEL_141:
          *(a1 + 16) = v18;
          goto LABEL_142;
        }

LABEL_71:
        v17 = v16;
LABEL_72:
        *&a3 = ordinary(a1, v17, a3, a4, a5, a6).n128_u64[0];
        v33 = 1;
        v11 = *a1;
        v12 = *(a1 + 8);
        v34 = &v12[-*a1];
        if (v34 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_144;
      }

      if (v12 - v15 <= 0)
      {
        if (!*(a1 + 16))
        {
          *(a1 + 16) = 8;
        }

        *a1 = &nuls;
        *(a1 + 8) = &nuls;
        v15 = &nuls;
        v12 = &nuls;
        v40 = *(a1 + 56);
        v29 = *(v40 + 112) + 1;
        *(v40 + 112) = v29;
        if (v29 <= 9)
        {
LABEL_59:
          *(v158 + 8 * v29) = v8;
          if (!*(a1 + 16))
          {
            goto LABEL_60;
          }

          goto LABEL_88;
        }
      }

      else
      {
        v28 = *(a1 + 56);
        v29 = *(v28 + 112) + 1;
        *(v28 + 112) = v29;
        if (v29 <= 9)
        {
          goto LABEL_59;
        }
      }

      if (!*(a1 + 16))
      {
LABEL_60:
        v30 = *(a1 + 32);
        if (*(a1 + 40) >= v30)
        {
          v31 = (v30 + 1) / 2;
          v32 = ((v30 + 1 + ((v30 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v31;
          if (v30 < v32)
          {
            if (v32 >> 61)
            {
              *(a1 + 16) = 12;
              v15 = &nuls;
              v12 = &nuls;
              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }

            else
            {
              v53 = malloc_type_realloc(*(a1 + 24), 24 * v31, 0x100004000313F17uLL);
              if (v53)
              {
                *(a1 + 24) = v53;
                *(a1 + 32) = v32;
                v15 = *a1;
                v12 = *(a1 + 8);
              }

              else
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 12;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                v15 = &nuls;
                v12 = &nuls;
              }
            }
          }
        }

        v57 = *(a1 + 24);
        v58 = *(a1 + 40);
        *(a1 + 40) = v58 + 1;
        *(v57 + 8 * v58) = v29 | 0x68000000;
        if (v12 - v15 < 1)
        {
          goto LABEL_129;
        }

        goto LABEL_121;
      }

LABEL_88:
      if (v12 - v15 < 1)
      {
        goto LABEL_129;
      }

LABEL_121:
      if (*v15 == 41)
      {
        if (v29 <= 9)
        {
          goto LABEL_123;
        }

        goto LABEL_130;
      }

LABEL_129:
      p_ere(a1, 41);
      if (v29 <= 9)
      {
LABEL_123:
        *(v159 + 8 * v29) = *(a1 + 40);
        if (!*(a1 + 16))
        {
          goto LABEL_124;
        }

        goto LABEL_131;
      }

LABEL_130:
      if (!*(a1 + 16))
      {
LABEL_124:
        v59 = *(a1 + 32);
        if (*(a1 + 40) >= v59)
        {
          v60 = (v59 + 1) / 2;
          v61 = ((v59 + 1 + ((v59 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v60;
          if (v59 < v61)
          {
            if (v61 >> 61)
            {
              goto LABEL_127;
            }

            v63 = malloc_type_realloc(*(a1 + 24), 24 * v60, 0x100004000313F17uLL);
            if (v63)
            {
              *(a1 + 24) = v63;
              *(a1 + 32) = v61;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_127:
                *(a1 + 16) = 12;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }
          }
        }

        v64 = *(a1 + 24);
        v65 = *(a1 + 40);
        *(a1 + 40) = v65 + 1;
        *(v64 + 8 * v65) = v29 | 0x70000000;
        v62 = *a1;
        if ((*(a1 + 8) - *a1) < 1)
        {
          goto LABEL_139;
        }

        goto LABEL_136;
      }

LABEL_131:
      v62 = *a1;
      if ((*(a1 + 8) - *a1) < 1)
      {
        goto LABEL_139;
      }

LABEL_136:
      *a1 = v62 + 1;
      if (*v62 != 41)
      {
LABEL_139:
        if (!*(a1 + 16))
        {
          goto LABEL_140;
        }

LABEL_142:
        *a1 = &nuls;
        *(a1 + 8) = &nuls;
LABEL_143:
        v33 = 1;
        v11 = *a1;
        v12 = *(a1 + 8);
        v34 = &v12[-*a1];
        if (v34 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_144;
      }

      v33 = 1;
      v11 = *a1;
      v12 = *(a1 + 8);
      v34 = &v12[-*a1];
      if (v34 < 1)
      {
        goto LABEL_10;
      }

LABEL_144:
      v66 = *v11;
      if ((v66 - 42) < 2 || v66 == 63 || v66 == 123 && v34 != 1 && v11[1] - 48 <= 9)
      {
        v67 = v11 + 1;
        *a1 = v11 + 1;
        if ((v33 & 1) == 0)
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 13;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
          v67 = &nuls;
          v12 = &nuls;
        }

        if (v66 <= 62)
        {
          if (v66 != 42)
          {
            if (v66 == 43)
            {
              doinsert(a1, 1207959552, *(a1 + 40) - v8 + 1, v8);
              if (!*(a1 + 16))
              {
                v68 = *(a1 + 32);
                v69 = *(a1 + 40);
                if (v69 >= v68)
                {
                  v70 = (v68 + 1) / 2;
                  v71 = ((v68 + 1 + ((v68 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v70;
                  if (v68 < v71)
                  {
                    if (v71 >> 61)
                    {
                      goto LABEL_160;
                    }

                    v102 = malloc_type_realloc(*(a1 + 24), 24 * v70, 0x100004000313F17uLL);
                    if (v102)
                    {
                      *(a1 + 24) = v102;
                      *(a1 + 32) = v71;
                    }

                    else
                    {
                      if (!*(a1 + 16))
                      {
LABEL_160:
                        *(a1 + 16) = 12;
                      }

                      *a1 = &nuls;
                      *(a1 + 8) = &nuls;
                    }
                  }
                }

                v87 = (v69 - v8) | 0x50000000;
LABEL_235:
                v113 = *(a1 + 24);
                v114 = *(a1 + 40);
                *(a1 + 40) = v114 + 1;
                *(v113 + 8 * v114) = v87;
              }
            }

LABEL_297:
            v11 = *a1;
            v12 = *(a1 + 8);
            v137 = &v12[-*a1];
            if (v137 >= 1)
            {
              if ((v138 = *v11, (v138 - 42) < 2) || v138 == 63 || (v138 == 123 ? (v139 = v137 == 1) : (v139 = 1), !v139 && v11[1] - 48 <= 9))
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 13;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                v11 = &nuls;
                v12 = &nuls;
              }
            }

            goto LABEL_10;
          }

          doinsert(a1, 1207959552, *(a1 + 40) - v8 + 1, v8);
          v77 = *(a1 + 40);
          v78 = v77 - v8;
          if (!*(a1 + 16))
          {
            v79 = *(a1 + 32);
            if (v77 >= v79)
            {
              v80 = (v79 + 1) / 2;
              v81 = ((v79 + 1 + ((v79 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v80;
              if (v79 < v81)
              {
                if (v81 >> 61)
                {
                  goto LABEL_175;
                }

                v103 = malloc_type_realloc(*(a1 + 24), 24 * v80, 0x100004000313F17uLL);
                if (v103)
                {
                  *(a1 + 24) = v103;
                  *(a1 + 32) = v81;
                }

                else
                {
                  if (!*(a1 + 16))
                  {
LABEL_175:
                    *(a1 + 16) = 12;
                  }

                  *a1 = &nuls;
                  *(a1 + 8) = &nuls;
                }
              }
            }

            v104 = *(a1 + 24);
            v105 = *(a1 + 40);
            *(a1 + 40) = v105 + 1;
            *(v104 + 8 * v105) = v78 | 0x50000000;
            v78 = *(a1 + 40) - v8;
          }

          doinsert(a1, 1476395008, v78 + 1, v8);
          if (*(a1 + 16))
          {
            goto LABEL_297;
          }

          v106 = *(a1 + 32);
          v107 = *(a1 + 40);
          if (v107 >= v106)
          {
            v108 = (v106 + 1) / 2;
            v109 = ((v106 + 1 + ((v106 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v108;
            if (v106 < v109)
            {
              if (v109 >> 61)
              {
                goto LABEL_227;
              }

              v112 = malloc_type_realloc(*(a1 + 24), 24 * v108, 0x100004000313F17uLL);
              if (v112)
              {
                *(a1 + 24) = v112;
                *(a1 + 32) = v109;
              }

              else
              {
                if (!*(a1 + 16))
                {
LABEL_227:
                  *(a1 + 16) = 12;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
              }
            }
          }

          v87 = (v107 - v8) | 0x60000000;
          goto LABEL_235;
        }

        if (v66 != 63)
        {
          if (v66 != 123)
          {
            goto LABEL_297;
          }

          v72 = v12 - v67;
          if (v12 - v67 < 1)
          {
            v74 = 0;
            goto LABEL_186;
          }

          v73 = 0;
          v74 = 0;
          while (*v67 - 48 <= 9 && v74 <= 255)
          {
            v75 = v67 + 1;
            *a1 = v67 + 1;
            v74 = (*v67 + 10 * v74 - 48);
            ++v73;
            ++v67;
            if (v72-- <= 1)
            {
              goto LABEL_185;
            }
          }

          v75 = v67;
          if (!v73)
          {
            goto LABEL_186;
          }

LABEL_185:
          if (v74 >= 256)
          {
LABEL_186:
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 10;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
            v75 = &nuls;
            v12 = &nuls;
          }

          v88 = v74;
          if (v12 - v75 < 1)
          {
            goto LABEL_240;
          }

          v88 = v74;
          if (*v75 != 44)
          {
            goto LABEL_240;
          }

          v89 = v75 + 1;
          *a1 = v75 + 1;
          if (v75[1] - 48 > 9)
          {
            v88 = 256;
            goto LABEL_240;
          }

          v90 = (v12 - v89);
          if (v12 - v89 < 1)
          {
            v88 = 0;
          }

          else
          {
            v91 = 0;
            v88 = 0;
            while (1)
            {
              v92 = &v89[v91];
              if (v89[v91] - 48 > 9 || v88 > 255)
              {
                break;
              }

              *a1 = v92 + 1;
              v88 = (*v92 + 10 * v88 - 48);
              ++v91;
              if (--v90 <= 0)
              {
                LODWORD(v91) = 1;
                break;
              }
            }

            if (v91 && v88 < 256)
            {
              if (v74 <= v88)
              {
                goto LABEL_240;
              }

LABEL_237:
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 10;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
              goto LABEL_240;
            }
          }

          if (!*(a1 + 16))
          {
            *(a1 + 16) = 10;
            *a1 = &nuls;
            *(a1 + 8) = &nuls;
            if (v74 <= v88)
            {
              goto LABEL_240;
            }

            goto LABEL_237;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
          if (v74 > v88)
          {
            goto LABEL_237;
          }

LABEL_240:
          repeat(a1, v8, v74, v88);
          v116 = *a1;
          v115 = *(a1 + 8);
          if (v115 - *a1 >= 1)
          {
            if (*v116 == 125)
            {
              *a1 = v116 + 1;
              goto LABEL_297;
            }

            v117 = (v116 + 1);
            v118 = ~v116 + v115;
            while (1)
            {
              *a1 = v117;
              if (v118 <= 0)
              {
                break;
              }

              v119 = *v117++;
              --v118;
              if (v119 == 125)
              {
                if (*(a1 + 16))
                {
                  goto LABEL_251;
                }

                v120 = 10;
                goto LABEL_250;
              }
            }
          }

          if (!*(a1 + 16))
          {
            v120 = 9;
LABEL_250:
            *(a1 + 16) = v120;
          }

LABEL_251:
          *a1 = &nuls;
          *(a1 + 8) = &nuls;
          goto LABEL_297;
        }

        doinsert(a1, 2013265920, *(a1 + 40) - v8 + 1, v8);
        if (*(a1 + 16))
        {
          goto LABEL_297;
        }

        v83 = *(a1 + 32);
        v82 = *(a1 + 40);
        v84 = v82 - v8;
        if (v82 < v83 || (v85 = (v83 + 1) / 2, v86 = ((v83 + 1 + ((v83 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v85, v83 >= v86))
        {
          v93 = *(a1 + 24);
          v94 = *(a1 + 40);
          *(a1 + 40) = v94 + 1;
          v93[v94] = v84 | 0x80000000;
        }

        else
        {
          if (v86 >> 61)
          {
            goto LABEL_181;
          }

          v93 = malloc_type_realloc(*(a1 + 24), 24 * v85, 0x100004000313F17uLL);
          if (!v93)
          {
            if (!*(a1 + 16))
            {
LABEL_181:
              *(a1 + 16) = 12;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
            v87 = v84 | 0x80000000;
            goto LABEL_235;
          }

          *(a1 + 24) = v93;
          *(a1 + 32) = v86;
          v110 = *(a1 + 16);
          v111 = *(a1 + 40);
          *(a1 + 40) = v111 + 1;
          v93[v111] = v84 | 0x80000000;
          if (v110)
          {
            goto LABEL_297;
          }
        }

        v93[v8] = v93[v8] & 0xF8000000 | (*(a1 + 40) - v8);
        v95 = *(a1 + 32);
        if (*(a1 + 40) >= v95)
        {
          v96 = (v95 + 1) / 2;
          v97 = ((v95 + 1 + ((v95 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v96;
          if (v95 < v97)
          {
            if (v97 >> 61)
            {
              *(a1 + 16) = 12;
              *a1 = &nuls;
              *(a1 + 8) = &nuls;
              goto LABEL_291;
            }

            v93 = malloc_type_realloc(v93, 24 * v96, 0x100004000313F17uLL);
            if (v93)
            {
              *(a1 + 24) = v93;
              *(a1 + 32) = v97;
              v121 = *(a1 + 16);
              v122 = *(a1 + 40);
              *(a1 + 40) = v122 + 1;
              v93[v122] = 2281701376;
              if (v121)
              {
                goto LABEL_297;
              }

LABEL_208:
              v93[*(a1 + 40) - 1] = v93[*(a1 + 40) - 1] & 0xF8000000 | 1;
              v99 = *(a1 + 32);
              if (*(a1 + 40) >= v99)
              {
                v100 = (v99 + 1) / 2;
                v101 = ((v99 + 1 + ((v99 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v100;
                if (v99 < v101)
                {
                  if (v101 >> 61)
                  {
                    *(a1 + 16) = 12;
                    *a1 = &nuls;
                    *(a1 + 8) = &nuls;
                  }

                  else
                  {
                    v93 = malloc_type_realloc(v93, 24 * v100, 0x100004000313F17uLL);
                    if (v93)
                    {
                      *(a1 + 24) = v93;
                      *(a1 + 32) = v101;
                    }

                    else
                    {
                      if (!*(a1 + 16))
                      {
                        *(a1 + 16) = 12;
                      }

                      *a1 = &nuls;
                      *(a1 + 8) = &nuls;
                      v93 = *(a1 + 24);
                    }
                  }
                }
              }

              v135 = *(a1 + 40);
              *(a1 + 40) = v135 + 1;
              v136 = 2415919106;
            }

            else
            {
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 12;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
              v93 = *(a1 + 24);
LABEL_291:
              v135 = *(a1 + 40);
              *(a1 + 40) = v135 + 1;
              v136 = 2281701376;
            }

            v93[v135] = v136;
            goto LABEL_297;
          }
        }

        v98 = *(a1 + 40);
        *(a1 + 40) = v98 + 1;
        v93[v98] = 2281701376;
        goto LABEL_208;
      }

LABEL_10:
      if (v12 - v11 <= 0)
      {
        v8 = *(a1 + 40);
        break;
      }
    }

    if (v8 == v10)
    {
      goto LABEL_314;
    }

LABEL_317:
    if (v12 - v11 >= 1 && *v11 == 124)
    {
      *a1 = v11 + 1;
      if (v162)
      {
        v10 = v160;
        if (!*(a1 + 16))
        {
          goto LABEL_321;
        }

LABEL_3:
        v9 = v8;
LABEL_4:
        v160 = v9 - 1;
        v161 = v8;
        v162 = 1;
        continue;
      }

      doinsert(a1, 2013265920, v8 - v10 + 1, v10);
      v8 = *(a1 + 40);
      v161 = v10;
      if (*(a1 + 16))
      {
        goto LABEL_3;
      }

LABEL_321:
      v140 = *(a1 + 32);
      if (v8 < v140 || (v141 = (v140 + 1) / 2, v142 = ((v140 + 1 + ((v140 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v141, v140 >= v142))
      {
        v143 = 1;
      }

      else
      {
        if (v142 >> 61)
        {
          v143 = 0;
          *(a1 + 16) = 12;
          goto LABEL_339;
        }

        v149 = malloc_type_realloc(*(a1 + 24), 24 * v141, 0x100004000313F17uLL);
        if (v149)
        {
          *(a1 + 24) = v149;
          *(a1 + 32) = v142;
          v143 = *(a1 + 16) == 0;
        }

        else
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 12;
          }

          v143 = 0;
LABEL_339:
          *a1 = &nuls;
          *(a1 + 8) = &nuls;
        }
      }

      v144 = *(a1 + 24);
      v145 = *(a1 + 40);
      *(a1 + 40) = v145 + 1;
      v144[v145] = (v8 - v10) | 0x80000000;
      v9 = *(a1 + 40);
      if (v143)
      {
        v144[v161] = v144[v161] & 0xF8000000 | (v9 - v161);
        v146 = *(a1 + 32);
        v8 = *(a1 + 40);
        if (v8 >= v146)
        {
          v147 = (v146 + 1) / 2;
          v148 = ((v146 + 1 + ((v146 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v147;
          if (v146 < v148)
          {
            if (v148 >> 61)
            {
              *(a1 + 16) = 12;
              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }

            else
            {
              v144 = malloc_type_realloc(v144, 24 * v147, 0x100004000313F17uLL);
              if (v144)
              {
                *(a1 + 24) = v144;
                *(a1 + 32) = v148;
              }

              else
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 12;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                v144 = *(a1 + 24);
              }
            }
          }
        }

        v150 = *(a1 + 40);
        *(a1 + 40) = v150 + 1;
        v144[v150] = 2281701376;
      }

      else
      {
        v8 = *(a1 + 40);
      }

      goto LABEL_4;
    }

    break;
  }

  if ((v162 & 1) != 0 && !*(a1 + 16))
  {
    v151 = *(a1 + 24);
    v151[v161] = v151[v161] & 0xF8000000 | (v8 - v161);
    v152 = *(a1 + 32);
    v153 = *(a1 + 40);
    v154 = v153 - v160;
    if (v153 >= v152)
    {
      v155 = (v152 + 1) / 2;
      v156 = ((v152 + 1 + ((v152 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v155;
      if (v152 < v156)
      {
        if (v156 >> 61)
        {
          *(a1 + 16) = 12;
          *a1 = &nuls;
          *(a1 + 8) = &nuls;
        }

        else
        {
          v151 = malloc_type_realloc(v151, 24 * v155, 0x100004000313F17uLL);
          if (v151)
          {
            *(a1 + 24) = v151;
            *(a1 + 32) = v156;
          }

          else
          {
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 12;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
            v151 = *(a1 + 24);
          }
        }
      }
    }

    v157 = *(a1 + 40);
    *(a1 + 40) = v157 + 1;
    v151[v157] = v154 | 0x90000000;
  }
}

void p_bre(uint64_t a1, int a2, int a3, double a4, double a5, double a6, int32x4_t a7)
{
  v8 = *(a1 + 40);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = &v10[-*a1];
  if (v11 < 1)
  {
    goto LABEL_14;
  }

  if (*v9 == 94)
  {
    *a1 = ++v9;
    if (*(a1 + 16))
    {
      goto LABEL_12;
    }

    v13 = *(a1 + 32);
    if (v8 >= v13)
    {
      v14 = (v13 + 1) / 2;
      v15 = ((v13 + 1 + ((v13 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v14;
      if (v13 < v15)
      {
        if (v15 >> 61)
        {
          goto LABEL_7;
        }

        v16 = malloc_type_realloc(*(a1 + 24), 24 * v14, 0x100004000313F17uLL);
        if (v16)
        {
          *(a1 + 24) = v16;
          *(a1 + 32) = v15;
          v9 = *a1;
          v10 = *(a1 + 8);
          goto LABEL_11;
        }

        if (!*(a1 + 16))
        {
LABEL_7:
          *(a1 + 16) = 12;
        }

        *a1 = &nuls;
        *(a1 + 8) = &nuls;
        v9 = &nuls;
        v10 = &nuls;
      }
    }

LABEL_11:
    v17 = *(a1 + 24);
    v18 = *(a1 + 40);
    *(a1 + 40) = v18 + 1;
    *(v17 + 8 * v18) = 402653184;
LABEL_12:
    v19 = *(a1 + 56);
    v20 = v19[9];
    a5 = COERCE_DOUBLE(vadd_s32(v20, 0x100000001));
    LODWORD(a4) = v20.i32[0] | 1;
    HIDWORD(a4) = HIDWORD(a5);
    *&v19[9] = a4;
    v11 = v10 - v9;
    if (v10 - v9 >= 1)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (*(a1 + 40) == v8)
    {
      goto LABEL_227;
    }

    return;
  }

LABEL_13:
  v109 = v8;
  v21 = 0;
  v22 = 0;
  v23 = a1 + 144;
  v111 = a1 + 64;
  while (v11 == 1 || *v9 != a2 || v9[1] != a3)
  {
    v27 = *(a1 + 40);
    v28 = v9 + 1;
    *a1 = v9 + 1;
    v29 = *v9;
    if (v29 == 92)
    {
      if (v10 - v28 <= 0)
      {
        if (!*(a1 + 16))
        {
          *(a1 + 16) = 5;
        }

        *(a1 + 8) = &nuls;
        v10 = &nuls;
        v28 = &nuls;
      }

      *a1 = v28 + 1;
      v29 = *v28++ | 0x100;
    }

    if (v29 <= 304)
    {
      if (v29 <= 90)
      {
        if (v29 == 42)
        {
          if (v22)
          {
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 13;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
          }

LABEL_65:
          *&a4 = ordinary(a1, v29, a4, a5, a6, a7).n128_u64[0];
          goto LABEL_138;
        }

        if (v29 != 46)
        {
          goto LABEL_65;
        }

        if ((*(*(a1 + 56) + 40) & 8) != 0)
        {
          *a1 = "^\n]";
          *(a1 + 8) = "";
          p_bracket(a1, a4, a5, a6, a7);
          *a1 = v28;
          *(a1 + 8) = v10;
          goto LABEL_138;
        }

        if (*(a1 + 16))
        {
          goto LABEL_138;
        }

        v35 = *(a1 + 32);
        if (v27 >= v35)
        {
          v36 = (v35 + 1) / 2;
          v37 = ((v35 + 1 + ((v35 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v36;
          if (v35 < v37)
          {
            if (v37 >> 61)
            {
              goto LABEL_54;
            }

            v61 = malloc_type_realloc(*(a1 + 24), 24 * v36, 0x100004000313F17uLL);
            if (v61)
            {
              *(a1 + 24) = v61;
              *(a1 + 32) = v37;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_54:
                *(a1 + 16) = 12;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }
          }
        }

        v62 = *(a1 + 24);
        v63 = *(a1 + 40);
        *(a1 + 40) = v63 + 1;
        *(v62 + 8 * v63) = 671088640;
        goto LABEL_138;
      }

      if (v29 == 91)
      {
        p_bracket(a1, a4, a5, a6, a7);
        goto LABEL_138;
      }

      if (v29 != 296)
      {
        if (v29 != 297)
        {
          goto LABEL_65;
        }

        goto LABEL_134;
      }

      v41 = *(a1 + 56);
      v42 = *(v41 + 112) + 1;
      *(v41 + 112) = v42;
      if (v42 > 9)
      {
        if (!*(a1 + 16))
        {
          goto LABEL_68;
        }
      }

      else
      {
        *(v111 + 8 * v42) = v27;
        if (!*(a1 + 16))
        {
LABEL_68:
          v43 = *(a1 + 32);
          if (*(a1 + 40) >= v43)
          {
            v44 = (v43 + 1) / 2;
            v45 = ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v44;
            if (v43 < v45)
            {
              if (v45 >> 61)
              {
                *(a1 + 16) = 12;
                v28 = &nuls;
                v10 = &nuls;
                *a1 = &nuls;
                *(a1 + 8) = &nuls;
              }

              else
              {
                v60 = malloc_type_realloc(*(a1 + 24), 24 * v44, 0x100004000313F17uLL);
                if (v60)
                {
                  *(a1 + 24) = v60;
                  *(a1 + 32) = v45;
                  v28 = *a1;
                  v10 = *(a1 + 8);
                }

                else
                {
                  if (!*(a1 + 16))
                  {
                    *(a1 + 16) = 12;
                  }

                  *a1 = &nuls;
                  *(a1 + 8) = &nuls;
                  v28 = &nuls;
                  v10 = &nuls;
                }
              }
            }
          }

          v64 = *(a1 + 24);
          v65 = *(a1 + 40);
          *(a1 + 40) = v65 + 1;
          *(v64 + 8 * v65) = v42 | 0x68000000;
          v46 = v10 - v28 == 1;
          if (v10 - v28 >= 1)
          {
LABEL_114:
            if (v46 || *v28 != 92 || v28[1] != 41)
            {
              p_bre(a1, 92, 41);
            }
          }

LABEL_118:
          if (v42 > 9)
          {
            if (!*(a1 + 16))
            {
              goto LABEL_120;
            }
          }

          else
          {
            *(v23 + 8 * v42) = *(a1 + 40);
            if (!*(a1 + 16))
            {
LABEL_120:
              v66 = *(a1 + 32);
              if (*(a1 + 40) >= v66)
              {
                v67 = (v66 + 1) / 2;
                v68 = ((v66 + 1 + ((v66 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v67;
                if (v66 < v68)
                {
                  if (v68 >> 61)
                  {
                    goto LABEL_123;
                  }

                  v70 = malloc_type_realloc(*(a1 + 24), 24 * v67, 0x100004000313F17uLL);
                  if (v70)
                  {
                    *(a1 + 24) = v70;
                    *(a1 + 32) = v68;
                  }

                  else
                  {
                    if (!*(a1 + 16))
                    {
LABEL_123:
                      *(a1 + 16) = 12;
                    }

                    *a1 = &nuls;
                    *(a1 + 8) = &nuls;
                  }
                }
              }

              v71 = *(a1 + 24);
              v72 = *(a1 + 40);
              *(a1 + 40) = v72 + 1;
              *(v71 + 8 * v72) = v42 | 0x70000000;
              v69 = *a1;
              if ((*(a1 + 8) - *a1) < 2)
              {
                goto LABEL_134;
              }

LABEL_131:
              if (*v69 == 92 && v69[1] == 41)
              {
                *a1 = v69 + 2;
                goto LABEL_138;
              }

LABEL_134:
              if (!*(a1 + 16))
              {
                v47 = 8;
                goto LABEL_136;
              }

              goto LABEL_137;
            }
          }

          v69 = *a1;
          if ((*(a1 + 8) - *a1) < 2)
          {
            goto LABEL_134;
          }

          goto LABEL_131;
        }
      }

      v46 = v10 - v28 == 1;
      if (v10 - v28 >= 1)
      {
        goto LABEL_114;
      }

      goto LABEL_118;
    }

    if ((v29 - 305) < 9)
    {
      v30 = (v29 & 0xFFFFFEFF) - 48;
      v31 = *(v23 + 8 * v30);
      v32 = *(a1 + 16);
      if (!v31)
      {
        if (!v32)
        {
          *(a1 + 16) = 6;
        }

        *a1 = &nuls;
        *(a1 + 8) = &nuls;
        goto LABEL_98;
      }

      if (v32)
      {
        v33 = *(v111 + 8 * v30) + 1;
        v34 = v31 - v33;
        if (v31 == v33)
        {
          goto LABEL_34;
        }

LABEL_82:
        if (v34 >= 1)
        {
          v52 = *(a1 + 32) + v34;
          if (v52 >> 61 || (v53 = malloc_type_realloc(*(a1 + 24), 8 * v52, 0x100004000313F17uLL)) == 0)
          {
            if (!*(a1 + 16))
            {
              *(a1 + 16) = 12;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
          }

          else
          {
            *(a1 + 24) = v53;
            *(a1 + 32) = v52;
          }
        }

        memmove((*(a1 + 24) + 8 * *(a1 + 40)), (*(a1 + 24) + 8 * v33), 8 * v34);
        *(a1 + 40) += v34;
        if (!*(a1 + 16))
        {
          goto LABEL_90;
        }

LABEL_98:
        *(*(a1 + 56) + 120) = 1;
        goto LABEL_138;
      }

      v38 = *(a1 + 32);
      if (v27 >= v38)
      {
        v39 = (v38 + 1) / 2;
        v40 = ((v38 + 1 + ((v38 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v39;
        if (v38 < v40)
        {
          if (v40 >> 61)
          {
            goto LABEL_59;
          }

          v48 = malloc_type_realloc(*(a1 + 24), 24 * v39, 0x100004000313F17uLL);
          if (v48)
          {
            *(a1 + 24) = v48;
            *(a1 + 32) = v40;
          }

          else
          {
            if (!*(a1 + 16))
            {
LABEL_59:
              *(a1 + 16) = 12;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
          }
        }
      }

      v49 = *(a1 + 24);
      v50 = *(a1 + 40);
      *(a1 + 40) = v50 + 1;
      *(v49 + 8 * v50) = v30 | 0x38000000;
      v51 = *(v23 + 8 * v30);
      v33 = *(v111 + 8 * v30) + 1;
      v34 = v51 - v33;
      if (v51 != v33)
      {
        goto LABEL_82;
      }

LABEL_34:
      if (*(a1 + 16))
      {
        goto LABEL_98;
      }

LABEL_90:
      v54 = *(a1 + 32);
      if (*(a1 + 40) >= v54)
      {
        v55 = (v54 + 1) / 2;
        v56 = ((v54 + 1 + ((v54 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v55;
        if (v54 < v56)
        {
          if (v56 >> 61)
          {
            goto LABEL_93;
          }

          v57 = malloc_type_realloc(*(a1 + 24), 24 * v55, 0x100004000313F17uLL);
          if (v57)
          {
            *(a1 + 24) = v57;
            *(a1 + 32) = v56;
          }

          else
          {
            if (!*(a1 + 16))
            {
LABEL_93:
              *(a1 + 16) = 12;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
          }
        }
      }

      v58 = *(a1 + 24);
      v59 = *(a1 + 40);
      *(a1 + 40) = v59 + 1;
      *(v58 + 8 * v59) = v30 | 0x40000000;
      goto LABEL_98;
    }

    if (v29 != 379)
    {
      if (v29 != 381)
      {
        goto LABEL_65;
      }

      goto LABEL_134;
    }

    if (!*(a1 + 16))
    {
      v47 = 13;
LABEL_136:
      *(a1 + 16) = v47;
    }

LABEL_137:
    *a1 = &nuls;
    *(a1 + 8) = &nuls;
LABEL_138:
    v9 = *a1;
    v10 = *(a1 + 8);
    v11 = &v10[-*a1];
    if (v11 < 1)
    {
      goto LABEL_155;
    }

    v73 = *v9;
    if (v73 == 42)
    {
      *a1 = v9 + 1;
      doinsert(a1, 1207959552, *(a1 + 40) - v27 + 1, v27);
      v74 = *(a1 + 40);
      v75 = v74 - v27;
      if (!*(a1 + 16))
      {
        v76 = *(a1 + 32);
        if (v74 >= v76)
        {
          v77 = (v76 + 1) / 2;
          v78 = ((v76 + 1 + ((v76 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v77;
          if (v76 < v78)
          {
            if (v78 >> 61)
            {
              goto LABEL_144;
            }

            v93 = malloc_type_realloc(*(a1 + 24), 24 * v77, 0x100004000313F17uLL);
            if (v93)
            {
              *(a1 + 24) = v93;
              *(a1 + 32) = v78;
            }

            else
            {
              if (!*(a1 + 16))
              {
LABEL_144:
                *(a1 + 16) = 12;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }
          }
        }

        v94 = *(a1 + 24);
        v95 = *(a1 + 40);
        *(a1 + 40) = v95 + 1;
        *(v94 + 8 * v95) = v75 | 0x50000000;
        v75 = *(a1 + 40) - v27;
      }

      doinsert(a1, 1476395008, v75 + 1, v27);
      if (*(a1 + 16))
      {
        goto LABEL_19;
      }

      v96 = *(a1 + 32);
      v97 = *(a1 + 40);
      if (v97 >= v96)
      {
        v98 = (v96 + 1) / 2;
        v99 = ((v96 + 1 + ((v96 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v98;
        if (v96 < v99)
        {
          if (v99 >> 61)
          {
            goto LABEL_206;
          }

          v24 = malloc_type_realloc(*(a1 + 24), 24 * v98, 0x100004000313F17uLL);
          if (v24)
          {
            *(a1 + 24) = v24;
            *(a1 + 32) = v99;
          }

          else
          {
            if (!*(a1 + 16))
            {
LABEL_206:
              *(a1 + 16) = 12;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
          }
        }
      }

      v25 = *(a1 + 24);
      v26 = *(a1 + 40);
      *(a1 + 40) = v26 + 1;
      *(v25 + 8 * v26) = (v97 - v27) | 0x60000000;
      goto LABEL_19;
    }

    if (v11 != 1 && v73 == 92 && v9[1] == 123)
    {
      v79 = v9 + 2;
      *a1 = v9 + 2;
      v80 = v10 - (v9 + 2);
      if (v80 < 1)
      {
        v82 = 0;
      }

      else
      {
        v81 = 0;
        v82 = 0;
        while (*v79 - 48 <= 9 && v82 <= 255)
        {
          v83 = v79 + 1;
          *a1 = v79 + 1;
          v82 = (*v79 + 10 * v82 - 48);
          ++v81;
          --v80;
          ++v79;
          if (v80 <= 0)
          {
            goto LABEL_160;
          }
        }

        v83 = v79;
        if (!v81)
        {
          goto LABEL_161;
        }

LABEL_160:
        if (v82 < 256)
        {
          goto LABEL_164;
        }
      }

LABEL_161:
      if (!*(a1 + 16))
      {
        *(a1 + 16) = 10;
      }

      *a1 = &nuls;
      *(a1 + 8) = &nuls;
      v83 = &nuls;
      v10 = &nuls;
LABEL_164:
      v84 = v82;
      if (v10 - v83 >= 1)
      {
        v84 = v82;
        if (*v83 == 44)
        {
          v85 = v83 + 1;
          *a1 = v85;
          v86 = v10 - v85;
          if (v10 - v85 < 1 || *v85 - 48 > 9)
          {
            v84 = 256;
          }

          else
          {
            v87 = 0;
            v84 = 0;
            while (1)
            {
              v88 = &v85[v87];
              if (v85[v87] - 48 > 9 || v84 > 255)
              {
                break;
              }

              *a1 = v88 + 1;
              v84 = (*v88 + 10 * v84 - 48);
              ++v87;
              if (--v86 <= 0)
              {
                LODWORD(v87) = 1;
                break;
              }
            }

            if (!v87 || v84 >= 256)
            {
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 10;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }

            if (v82 > v84)
            {
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 10;
              }

              *a1 = &nuls;
              *(a1 + 8) = &nuls;
            }
          }
        }
      }

      repeat(a1, v27, v82, v84);
      v89 = *a1;
      v90 = *(a1 + 8) - *a1;
      if (v90 <= 1)
      {
        if (v90 == 1)
        {
LABEL_188:
          v91 = v89 + 1;
          while (1)
          {
            if (--v90)
            {
              if (*(v91 - 1) == 92 && *v91 == 125)
              {
                break;
              }
            }

            *a1 = v91++;
            if (v90 <= 0)
            {
              goto LABEL_195;
            }
          }

          if (!*(a1 + 16))
          {
            v92 = 10;
            goto LABEL_197;
          }
        }

        else
        {
LABEL_195:
          if (!*(a1 + 16))
          {
            v92 = 9;
LABEL_197:
            *(a1 + 16) = v92;
          }
        }

        *a1 = &nuls;
        *(a1 + 8) = &nuls;
        goto LABEL_19;
      }

      if (*v89 != 92 || v89[1] != 125)
      {
        goto LABEL_188;
      }

      *a1 = v89 + 2;
LABEL_19:
      v21 = 0;
      v9 = *a1;
      v10 = *(a1 + 8);
      v11 = &v10[-*a1];
      v22 = 1;
      if (v11 <= 0)
      {
        break;
      }
    }

    else
    {
LABEL_155:
      if (v29 != 36)
      {
        goto LABEL_19;
      }

      v21 = 1;
      v22 = 1;
      if (v11 <= 0)
      {
        break;
      }
    }
  }

  v100 = *(a1 + 40);
  if (v21)
  {
    v101 = v100 - 1;
    *(a1 + 40) = v100 - 1;
    if (!*(a1 + 16))
    {
      v102 = *(a1 + 32);
      if (v100 > v102)
      {
        v103 = (v102 + 1) / 2;
        v104 = ((v102 + 1 + ((v102 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v103;
        if (v102 < v104)
        {
          if (v104 >> 61)
          {
            goto LABEL_219;
          }

          v105 = malloc_type_realloc(*(a1 + 24), 24 * v103, 0x100004000313F17uLL);
          if (v105)
          {
            *(a1 + 24) = v105;
            *(a1 + 32) = v104;
          }

          else
          {
            if (!*(a1 + 16))
            {
LABEL_219:
              *(a1 + 16) = 12;
            }

            *a1 = &nuls;
            *(a1 + 8) = &nuls;
          }
        }
      }

      v106 = *(a1 + 24);
      v107 = *(a1 + 40);
      *(a1 + 40) = v107 + 1;
      *(v106 + 8 * v107) = 0x20000000;
      v101 = *(a1 + 40);
    }

    v108 = *(a1 + 56);
    *(v108 + 72) |= 2u;
    ++*(v108 + 80);
    if (v101 == v109)
    {
LABEL_227:
      if (!*(a1 + 16))
      {
        *(a1 + 16) = 14;
      }

      *a1 = &nuls;
      *(a1 + 8) = &nuls;
    }
  }

  else if (v100 == v109)
  {
    goto LABEL_227;
  }
}

void *doinsert(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(result + 4))
  {
    v4 = *(result + 4);
    v5 = *(result + 5);
    v6 = (v4 + 1) / 2;
    v7 = ((v4 + 1 + ((v4 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v6;
    if (v5 < v4 || v4 >= v7)
    {
LABEL_6:
      v9 = *(result + 3);
      v10 = *(result + 5);
      *(result + 5) = v10 + 1;
      *(v9 + 8 * v10) = a3 | a2;
      v11 = *(v9 + 8 * v5);
      v12 = *(result + 9);
      if (v12 >= a4)
      {
        *(result + 9) = v12 + 1;
        v13 = *(result + 19);
        if (v13 < a4)
        {
LABEL_8:
          v14 = *(result + 10);
          if (v14 < a4)
          {
            goto LABEL_9;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v13 = *(result + 19);
        if (v13 < a4)
        {
          goto LABEL_8;
        }
      }

      *(result + 19) = v13 + 1;
      v14 = *(result + 10);
      if (v14 < a4)
      {
LABEL_9:
        v15 = *(result + 20);
        if (v15 < a4)
        {
          goto LABEL_10;
        }

        goto LABEL_29;
      }

LABEL_28:
      *(result + 10) = v14 + 1;
      v15 = *(result + 20);
      if (v15 < a4)
      {
LABEL_10:
        v16 = *(result + 11);
        if (v16 < a4)
        {
          goto LABEL_11;
        }

        goto LABEL_30;
      }

LABEL_29:
      *(result + 20) = v15 + 1;
      v16 = *(result + 11);
      if (v16 < a4)
      {
LABEL_11:
        v17 = *(result + 21);
        if (v17 < a4)
        {
          goto LABEL_12;
        }

        goto LABEL_31;
      }

LABEL_30:
      *(result + 11) = v16 + 1;
      v17 = *(result + 21);
      if (v17 < a4)
      {
LABEL_12:
        v18 = *(result + 12);
        if (v18 < a4)
        {
          goto LABEL_13;
        }

        goto LABEL_32;
      }

LABEL_31:
      *(result + 21) = v17 + 1;
      v18 = *(result + 12);
      if (v18 < a4)
      {
LABEL_13:
        v19 = *(result + 22);
        if (v19 < a4)
        {
          goto LABEL_14;
        }

        goto LABEL_33;
      }

LABEL_32:
      *(result + 12) = v18 + 1;
      v19 = *(result + 22);
      if (v19 < a4)
      {
LABEL_14:
        v20 = *(result + 13);
        if (v20 < a4)
        {
          goto LABEL_15;
        }

        goto LABEL_34;
      }

LABEL_33:
      *(result + 22) = v19 + 1;
      v20 = *(result + 13);
      if (v20 < a4)
      {
LABEL_15:
        v21 = *(result + 23);
        if (v21 < a4)
        {
          goto LABEL_16;
        }

        goto LABEL_35;
      }

LABEL_34:
      *(result + 13) = v20 + 1;
      v21 = *(result + 23);
      if (v21 < a4)
      {
LABEL_16:
        v22 = *(result + 14);
        if (v22 < a4)
        {
          goto LABEL_17;
        }

        goto LABEL_36;
      }

LABEL_35:
      *(result + 23) = v21 + 1;
      v22 = *(result + 14);
      if (v22 < a4)
      {
LABEL_17:
        v23 = *(result + 24);
        if (v23 < a4)
        {
          goto LABEL_18;
        }

        goto LABEL_37;
      }

LABEL_36:
      *(result + 14) = v22 + 1;
      v23 = *(result + 24);
      if (v23 < a4)
      {
LABEL_18:
        v24 = *(result + 15);
        if (v24 < a4)
        {
          goto LABEL_19;
        }

        goto LABEL_38;
      }

LABEL_37:
      *(result + 24) = v23 + 1;
      v24 = *(result + 15);
      if (v24 < a4)
      {
LABEL_19:
        v25 = *(result + 25);
        if (v25 < a4)
        {
          goto LABEL_20;
        }

        goto LABEL_39;
      }

LABEL_38:
      *(result + 15) = v24 + 1;
      v25 = *(result + 25);
      if (v25 < a4)
      {
LABEL_20:
        v26 = *(result + 16);
        if (v26 < a4)
        {
          goto LABEL_21;
        }

        goto LABEL_40;
      }

LABEL_39:
      *(result + 25) = v25 + 1;
      v26 = *(result + 16);
      if (v26 < a4)
      {
LABEL_21:
        v27 = *(result + 26);
        if (v27 < a4)
        {
          goto LABEL_22;
        }

        goto LABEL_41;
      }

LABEL_40:
      *(result + 16) = v26 + 1;
      v27 = *(result + 26);
      if (v27 < a4)
      {
LABEL_22:
        v28 = *(result + 17);
        if (v28 < a4)
        {
          goto LABEL_23;
        }

        goto LABEL_42;
      }

LABEL_41:
      *(result + 26) = v27 + 1;
      v28 = *(result + 17);
      if (v28 < a4)
      {
LABEL_23:
        v29 = *(result + 27);
        if (v29 < a4)
        {
LABEL_25:
          v30 = 8 * a4;
          v31 = result;
          result = memmove((v9 + 8 * a4 + 8), (v9 + 8 * a4), 8 * (*(result + 5) + ~a4));
          *(v31[3] + v30) = v11;
          return result;
        }

LABEL_24:
        *(result + 27) = v29 + 1;
        goto LABEL_25;
      }

LABEL_42:
      *(result + 17) = v28 + 1;
      v29 = *(result + 27);
      if (v29 < a4)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (v7 >> 61)
    {
      goto LABEL_45;
    }

    v32 = a2;
    v33 = a3;
    v34 = a4;
    v35 = result;
    v36 = malloc_type_realloc(*(result + 3), 24 * v6, 0x100004000313F17uLL);
    if (v36)
    {
      v37 = v36;
      result = v35;
      *(v35 + 3) = v37;
      *(v35 + 4) = v7;
      a4 = v34;
      a3 = v33;
      a2 = v32;
      goto LABEL_6;
    }

    result = v35;
    a4 = v34;
    a3 = v33;
    a2 = v32;
    if (!*(v35 + 4))
    {
LABEL_45:
      *(result + 4) = 12;
    }

    *result = &nuls;
    *(result + 1) = &nuls;
    goto LABEL_6;
  }

  return result;
}

void p_bracket(uint64_t a1, double a2, double a3, double a4, int32x4_t a5)
{
  v6 = *a1;
  if ((*(a1 + 8) - *a1) >= 6)
  {
    if (strncmp(*a1, "[:<:]]", 6uLL))
    {
      if (strncmp(v6, "[:>:]]", 6uLL))
      {
        goto LABEL_4;
      }

      if (!*(a1 + 16))
      {
        v30 = *(a1 + 32);
        if (*(a1 + 40) < v30)
        {
          goto LABEL_249;
        }

        v31 = (v30 + 1) / 2;
        v32 = ((v30 + 1 + ((v30 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v31;
        if (v30 >= v32)
        {
          goto LABEL_249;
        }

        if (v32 >> 61)
        {
          goto LABEL_30;
        }

        v114 = malloc_type_realloc(*(a1 + 24), 24 * v31, 0x100004000313F17uLL);
        if (v114)
        {
          *(a1 + 24) = v114;
          *(a1 + 32) = v32;
          v6 = *a1;
          goto LABEL_249;
        }

        if (!*(a1 + 16))
        {
LABEL_30:
          *(a1 + 16) = 12;
        }

        v6 = &nuls;
        *(a1 + 8) = &nuls;
LABEL_249:
        v95 = *(a1 + 24);
        v96 = *(a1 + 40);
        *(a1 + 40) = v96 + 1;
        v97 = 2684354560;
        goto LABEL_250;
      }

LABEL_251:
      *a1 = v6 + 6;
      return;
    }

    if (*(a1 + 16))
    {
      goto LABEL_251;
    }

    v27 = *(a1 + 32);
    if (*(a1 + 40) >= v27)
    {
      v28 = (v27 + 1) / 2;
      v29 = ((v27 + 1 + ((v27 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v28;
      if (v27 < v29)
      {
        if (v29 >> 61)
        {
          goto LABEL_24;
        }

        v94 = malloc_type_realloc(*(a1 + 24), 24 * v28, 0x100004000313F17uLL);
        if (v94)
        {
          *(a1 + 24) = v94;
          *(a1 + 32) = v29;
          v6 = *a1;
          goto LABEL_225;
        }

        if (!*(a1 + 16))
        {
LABEL_24:
          *(a1 + 16) = 12;
        }

        v6 = &nuls;
        *(a1 + 8) = &nuls;
      }
    }

LABEL_225:
    v95 = *(a1 + 24);
    v96 = *(a1 + 40);
    *(a1 + 40) = v96 + 1;
    v97 = 2550136832;
LABEL_250:
    *(v95 + 8 * v96) = v97;
    goto LABEL_251;
  }

LABEL_4:
  v7 = *(a1 + 56);
  v8 = *(v7 + 20);
  v9 = *(v7 + 16);
  *(v7 + 20) = v8 + 1;
  v10 = *(a1 + 48);
  if (v8 < v10)
  {
    v11 = *(v7 + 24);
    if (!v11)
    {
      goto LABEL_187;
    }

    goto LABEL_6;
  }

  v21 = (v10 + 8);
  *(a1 + 48) = v21;
  if (v10 < -8)
  {
    goto LABEL_187;
  }

  v22 = malloc_type_realloc(*(v7 + 24), 32 * (v10 + 8), 0x1010040FE74B554uLL);
  v7 = *(a1 + 56);
  if (!v22)
  {
    goto LABEL_187;
  }

  v23 = (v21 >> 3) * v9;
  *(v7 + 24) = v22;
  v24 = malloc_type_realloc(*(v7 + 32), v23, 0x100004077774924uLL);
  v7 = *(a1 + 56);
  if (!v24)
  {
    goto LABEL_187;
  }

  *(v7 + 32) = v24;
  if (v8 >= 1)
  {
    v25 = *(v7 + 24);
    if (v8 == 1)
    {
      v26 = 0;
LABEL_184:
      v81 = (v25 + 32 * v26);
      do
      {
        *v81 = &v24[(v26 >> 3) * v9];
        v81 += 4;
        ++v26;
      }

      while (v8 != v26);
      goto LABEL_186;
    }

    v78 = 0;
    v26 = v8 & 0x7FFFFFFE;
    v79 = (v25 + 32);
    do
    {
      v80 = &v24[(v78 >> 3) * v9];
      *(v79 - 4) = v80;
      *v79 = v80;
      v79 += 8;
      v78 += 2;
    }

    while (v26 != v78);
    if (v26 != v8)
    {
      goto LABEL_184;
    }
  }

LABEL_186:
  bzero(&v24[v23 - v9], v9);
  v7 = *(a1 + 56);
  v11 = *(v7 + 24);
  if (!v11)
  {
    goto LABEL_187;
  }

LABEL_6:
  v12 = *(v7 + 32);
  if (v12)
  {
    v13 = (v11 + 32 * v8);
    v14 = v12 + v9 * (v8 / 8);
    *v13 = v14;
    v15 = 1;
    v16 = 1 << (v8 & 7);
    *(v13 + 4) = v16;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    v17 = *a1;
    v18 = *(a1 + 8);
    if (v18 - *a1 < 1)
    {
      goto LABEL_34;
    }

    v19 = *v17;
    v15 = v19 != 94;
    if (v19 == 94)
    {
      *a1 = ++v17;
      if (v18 - v17 < 1)
      {
        v15 = 0;
        v34 = *a1;
        v33 = *(a1 + 8);
        v35 = &v33[-*a1];
        if (v35 < 1)
        {
          goto LABEL_191;
        }

LABEL_35:
        v36 = "NUL";
        v37 = MEMORY[0x277D85DE0];
        do
        {
          v38 = *v34;
          if (v38 == 93)
          {
            break;
          }

          if (v35 != 1 && v38 == 45)
          {
            if (v34[1] != 93)
            {
LABEL_78:
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 11;
              }

              goto LABEL_38;
            }

            *a1 = v34 + 1;
            *(*v13 + 45) |= v13[8];
            v13[9] += 45;
            v34 = *a1;
            v33 = *(a1 + 8);
            break;
          }

          if (v38 == 45)
          {
            goto LABEL_78;
          }

          if (v38 == 91 && v35 != 1)
          {
            v45 = v34[1];
            if (v45 == 61)
            {
              v53 = v34 + 2;
              *a1 = v34 + 2;
              if (v33 - (v34 + 2) <= 0)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 7;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                v33 = &nuls;
                v53 = &nuls;
              }

              v54 = *v53;
              if (v54 == 93 || v54 == 45)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 3;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                v33 = &nuls;
                v53 = &nuls;
              }

              v55 = v33 - v53;
              if (v55 < 1)
              {
LABEL_102:
                if (!*(a1 + 16))
                {
                  v61 = 7;
                  goto LABEL_104;
                }

LABEL_105:
                v60 = 0;
                *a1 = &nuls;
                *(a1 + 8) = &nuls;
              }

              else
              {
                v56 = 0;
                v57 = 0;
                while (v55 - 1 == v57 || v53[v57] != 61 || v53[v57 + 1] != 93)
                {
                  *a1 = &v53[++v57];
                  --v56;
                  if (v55 + v56 <= 0)
                  {
                    goto LABEL_102;
                  }
                }

                v58 = &off_27983CF40;
                while (strncmp(v36, v53, v57) || strlen(v36) != v57)
                {
                  v59 = *v58;
                  v58 += 2;
                  v36 = v59;
                  if (!v59)
                  {
                    if (v57 == 1)
                    {
                      v60 = *v53;
                      v36 = "NUL";
                      goto LABEL_106;
                    }

                    v36 = "NUL";
                    if (!*(a1 + 16))
                    {
                      v61 = 3;
LABEL_104:
                      *(a1 + 16) = v61;
                    }

                    goto LABEL_105;
                  }
                }

                v60 = *(v58 - 8);
                v36 = "NUL";
              }

LABEL_106:
              *(*v13 + v60) |= v13[8];
              v13[9] += v60;
              v62 = *a1;
              v33 = *(a1 + 8);
              if (&v33[-*a1] < 1)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 7;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                v62 = &nuls;
                v33 = &nuls;
              }

              if (v33 - v62 > 1 && *v62 == 61 && v62[1] == 93)
              {
                goto LABEL_180;
              }

              if (!*(a1 + 16))
              {
                *(a1 + 16) = 3;
              }

              goto LABEL_38;
            }

            if (v45 == 58)
            {
              v46 = (v34 + 2);
              *a1 = v34 + 2;
              if (v33 - (v34 + 2) <= 0)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 7;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                v33 = &nuls;
                v46 = &nuls;
              }

              v47 = *v46;
              if (v47 == 93 || v47 == 45)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 4;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                v33 = &nuls;
                v46 = &nuls;
              }

              if (&v33[-v46] < 1)
              {
                v52 = v46;
                goto LABEL_118;
              }

              v48 = v36;
              v49 = -v46;
              v50 = (v46 + 1);
              while (1)
              {
                v51 = *(v50 - 1);
                if (v51 < 0)
                {
                  if (!__maskrune(*(v50 - 1), 0x100uLL))
                  {
LABEL_116:
                    v52 = *a1;
LABEL_117:
                    v36 = v48;
LABEL_118:
                    v63 = v52 - v46;
                    if (!strncmp("alnum", v46, v52 - v46) && !aAlnum[v63])
                    {
                      v64 = cclasses;
                    }

                    else if (!strncmp("alpha", v46, v63) && !aAlpha[v63])
                    {
                      v64 = off_27983CE10;
                    }

                    else if (!strncmp("blank", v46, v63) && !aBlank[v63])
                    {
                      v64 = off_27983CE28;
                    }

                    else if (!strncmp("cntrl", v46, v63) && !aCntrl[v63])
                    {
                      v64 = off_27983CE40;
                    }

                    else if (!strncmp("digit", v46, v63) && !aDigit[v63])
                    {
                      v64 = off_27983CE58;
                    }

                    else if (!strncmp("graph", v46, v63) && !aGraph[v63])
                    {
                      v64 = off_27983CE70;
                    }

                    else if (!strncmp("lower", v46, v63) && !aLower[v63])
                    {
                      v64 = off_27983CE88;
                    }

                    else if (!strncmp("print", v46, v63) && !aPrint[v63])
                    {
                      v64 = off_27983CEA0;
                    }

                    else if (!strncmp("punct", v46, v63) && !aPunct[v63])
                    {
                      v64 = off_27983CEB8;
                    }

                    else if (!strncmp("space", v46, v63) && !aSpace[v63])
                    {
                      v64 = off_27983CED0;
                    }

                    else if (!strncmp("upper", v46, v63) && !aUpper[v63])
                    {
                      v64 = off_27983CEE8;
                    }

                    else
                    {
                      if (strncmp("xdigit", v46, v63) || aXdigit[v63])
                      {
                        if (!*(a1 + 16))
                        {
                          *(a1 + 16) = 4;
                        }

                        *a1 = &nuls;
                        *(a1 + 8) = &nuls;
                        goto LABEL_173;
                      }

                      v64 = off_27983CF00;
                    }

                    v65 = v64[1];
                    v66 = *v65;
                    if (*v65)
                    {
                      v67 = (v65 + 1);
                      do
                      {
                        *(*v13 + v66) |= v13[8];
                        v13[9] += v66;
                        v68 = *v67++;
                        v66 = v68;
                      }

                      while (v68);
                    }

                    v69 = v64[2];
                    if (*v69)
                    {
                      do
                      {
                        while (1)
                        {
                          v72 = *(v13 + 2);
                          v73 = v72 + strlen(v69) + 1;
                          *(v13 + 2) = v73;
                          v74 = malloc_type_realloc(*(v13 + 3), v73, 0xBC45E43CuLL);
                          if (!v74)
                          {
                            break;
                          }

                          *(v13 + 3) = v74;
                          llvm_strlcpy(&v74[v72 - 1], v69, *(v13 + 2) - v72 + 1);
                          v70 = &v69[strlen(v69)];
                          v71 = *(v70 + 1);
                          v69 = v70 + 1;
                          if (!v71)
                          {
                            goto LABEL_173;
                          }
                        }

                        v75 = *(v13 + 3);
                        if (v75)
                        {
                          free(v75);
                        }

                        *(v13 + 3) = 0;
                        if (!*(a1 + 16))
                        {
                          *(a1 + 16) = 12;
                        }

                        *a1 = &nuls;
                        *(a1 + 8) = &nuls;
                        v76 = &v69[strlen(v69)];
                        v77 = *(v76 + 1);
                        v69 = v76 + 1;
                      }

                      while (v77);
                    }

LABEL_173:
                    v62 = *a1;
                    v33 = *(a1 + 8);
                    if (&v33[-*a1] < 1)
                    {
                      if (!*(a1 + 16))
                      {
                        *(a1 + 16) = 7;
                      }

                      *a1 = &nuls;
                      *(a1 + 8) = &nuls;
                      v62 = &nuls;
                      v33 = &nuls;
                    }

                    if (v33 - v62 > 1 && *v62 == 58 && v62[1] == 93)
                    {
LABEL_180:
                      v34 = v62 + 2;
                      *a1 = v34;
                      goto LABEL_39;
                    }

                    if (!*(a1 + 16))
                    {
                      *(a1 + 16) = 4;
                    }

LABEL_38:
                    *a1 = &nuls;
                    *(a1 + 8) = &nuls;
                    v34 = &nuls;
                    v33 = &nuls;
                    goto LABEL_39;
                  }
                }

                else if ((*(v37 + 4 * v51 + 60) & 0x100) == 0)
                {
                  goto LABEL_116;
                }

                *a1 = v50;
                --v49;
                ++v50;
                if (*(a1 + 8) + v49 <= 0)
                {
                  v52 = -v49;
                  goto LABEL_117;
                }
              }
            }
          }

          v40 = p_b_symbol(a1);
          v41 = v40;
          v42 = *a1;
          v43 = *(a1 + 8);
          if (v43 - *a1 >= 2 && *v42 == 45)
          {
            v44 = v42 + 1;
            if (v42[1] != 93)
            {
              *a1 = v44;
              if (v43 - v44 >= 1 && *v44 == 45)
              {
                *a1 = v42 + 2;
                v40 = 45;
              }

              else
              {
                v40 = p_b_symbol(a1);
              }

              if (v41 > v40)
              {
                goto LABEL_78;
              }
            }
          }

          do
          {
            *(*v13 + v41) |= v13[8];
            v13[9] += v41++;
          }

          while (v40 + 1 != v41);
          v34 = *a1;
          v33 = *(a1 + 8);
LABEL_39:
          v35 = v33 - v34;
        }

        while (v33 - v34 > 0);
LABEL_191:
        if (v33 - v34 >= 1 && (*a1 = v34 + 1, *v34 == 93))
        {
          if (!*(a1 + 16))
          {
            v83 = *(a1 + 56);
            if ((*(v83 + 40) & 2) != 0)
            {
              v84 = *(v83 + 16);
              if (v84 >= 1)
              {
                v85 = MEMORY[0x277D85DE0];
                while (1)
                {
                  v86 = v84 - 1;
                  v87 = (v84 - 1);
                  if ((v13[8] & *(*v13 + v87)) == 0)
                  {
                    goto LABEL_197;
                  }

                  if (v84 > 0x80)
                  {
                    if (!__maskrune(v84 - 1, 0x100uLL))
                    {
                      goto LABEL_197;
                    }
                  }

                  else if ((*(v85 + 4 * v84 + 56) & 0x100) == 0)
                  {
                    goto LABEL_197;
                  }

                  if (v86 > 0x7Fu)
                  {
                    if (__maskrune(v86, 0x8000uLL))
                    {
LABEL_207:
                      v89 = __tolower(v86);
                      if (v86 != v89)
                      {
                        goto LABEL_214;
                      }

                      goto LABEL_197;
                    }

                    v88 = __maskrune(v86, 0x1000uLL);
                  }

                  else
                  {
                    if ((*(v85 + 4 * v87 + 60) & 0x8000) != 0)
                    {
                      goto LABEL_207;
                    }

                    v88 = *(v85 + 4 * v87 + 60) & 0x1000;
                  }

                  if (v88)
                  {
                    v89 = __toupper(v86);
                    if (v86 != v89)
                    {
                      goto LABEL_214;
                    }
                  }

                  else
                  {
                    v89 = v86;
                    if (v86 != v86)
                    {
LABEL_214:
                      *(*v13 + v89) |= v13[8];
                      v13[9] += v89;
                    }
                  }

LABEL_197:
                  v84 = v86;
                  if (v86 + 1 <= 1)
                  {
                    v83 = *(a1 + 56);
                    break;
                  }
                }
              }
            }

            if (!v15)
            {
              v98 = *(v83 + 16);
              if (v98 >= 1)
              {
                v99 = v98 + 1;
                do
                {
                  while (1)
                  {
                    v100 = v99 - 2;
                    v101 = *v13;
                    v102 = (v99 - 2);
                    v103 = *(*v13 + v102);
                    v104 = v13[8];
                    if ((v104 & v103) == 0)
                    {
                      break;
                    }

                    *(v101 + v102) = v103 & ~v104;
                    v13[9] -= v100;
                    if (--v99 <= 1)
                    {
                      goto LABEL_233;
                    }
                  }

                  *(v101 + v102) = v104 | v103;
                  v13[9] += v100;
                  --v99;
                }

                while (v99 > 1);
LABEL_233:
                v83 = *(a1 + 56);
              }

              if ((*(v83 + 40) & 8) != 0)
              {
                *(*v13 + 10) &= ~v13[8];
                v13[9] -= 10;
                v83 = *(a1 + 56);
              }
            }

            v105 = *(v83 + 16);
            v106 = v105;
            if (!v105)
            {
              v111 = *(v83 + 20);
              if (v111 >= 1)
              {
                v112 = *(v83 + 24);
                v113 = &v112[32 * v111];
                while (v112 == v13 || v112[9] != v13[9])
                {
                  v112 += 32;
                  if (v112 >= v113)
                  {
                    goto LABEL_285;
                  }
                }

                goto LABEL_279;
              }

LABEL_285:
              v112 = v13;
              goto LABEL_286;
            }

            v107 = 0;
            v108 = 0;
            v109 = *v13;
            v110 = v13[8];
            if (v106 >= 4 && (v106 - 257) >= 0xFFFFFFFFFFFFFF00)
            {
              if (v106 < 0x20)
              {
                v108 = 0;
                v107 = 0;
LABEL_259:
                v133 = v107;
                v107 = v106 & 0x1FC;
                v134 = v108;
                v135 = vdup_n_s16(v110);
                v136.i64[0] = 0x100000001;
                v136.i64[1] = 0x100000001;
                do
                {
                  a5.i32[0] = *(v109 + (v133 & 0xFC));
                  a5 = vandq_s8(vmovl_u16(vtst_s16(*&vmovl_u8(*a5.i8), v135)), v136);
                  v134 = vaddq_s32(v134, a5);
                  v133 += 4;
                }

                while (v107 != v133);
                v108 = vaddvq_s32(v134);
                if (v107 == v106)
                {
                  goto LABEL_265;
                }

                goto LABEL_262;
              }

              v115 = 0;
              v116 = vdupq_n_s8(v110);
              v117 = 0uLL;
              v118.i64[0] = 0x100000001;
              v118.i64[1] = 0x100000001;
              v107 = v106 & 0x1E0;
              v119 = 0uLL;
              v120 = 0uLL;
              v121 = 0uLL;
              v122 = 0uLL;
              v123 = 0uLL;
              v124 = 0uLL;
              v125 = 0uLL;
              do
              {
                v126 = (v109 + (v115 & 0xE0));
                v127 = vtstq_s8(*v126, v116);
                v128 = vmovl_u8(*v127.i8);
                v129 = vmovl_high_u8(v127);
                v130 = vtstq_s8(v126[1], v116);
                v131 = vmovl_u8(*v130.i8);
                v132 = vmovl_high_u8(v130);
                v121 = vaddq_s32(v121, vandq_s8(vmovl_high_u16(v129), v118));
                v120 = vaddq_s32(v120, vandq_s8(vmovl_u16(*v129.i8), v118));
                v119 = vaddq_s32(v119, vandq_s8(vmovl_high_u16(v128), v118));
                v117 = vaddq_s32(v117, vandq_s8(vmovl_u16(*v128.i8), v118));
                v125 = vaddq_s32(v125, vandq_s8(vmovl_high_u16(v132), v118));
                v124 = vaddq_s32(v124, vandq_s8(vmovl_u16(*v132.i8), v118));
                v123 = vaddq_s32(v123, vandq_s8(vmovl_high_u16(v131), v118));
                v122 = vaddq_s32(v122, vandq_s8(vmovl_u16(*v131.i8), v118));
                v115 += 32;
              }

              while (v107 != v115);
              a5 = vaddq_s32(v124, v120);
              v108 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v122, v117), a5), vaddq_s32(vaddq_s32(v123, v119), vaddq_s32(v125, v121))));
              if (v107 == v106)
              {
                goto LABEL_265;
              }

              if ((v106 & 0x1C) != 0)
              {
                goto LABEL_259;
              }
            }

            do
            {
LABEL_262:
              if ((*(v109 + v107) & v110) != 0)
              {
                ++v108;
              }

              ++v107;
            }

            while (v106 != v107);
LABEL_265:
            if (v108 == 1)
            {
              v137 = 0;
              v138 = 0;
              while ((*(v109 + v138) & v110) == 0)
              {
                ++v138;
                v137 += 0x1000000;
                if (v106 == v138)
                {
                  v139 = 0;
                  goto LABEL_293;
                }
              }

              v139 = v137 >> 24;
LABEL_293:
              v147 = *(v83 + 88);
              if ((*(v83 + 40) & 2) == 0)
              {
                goto LABEL_310;
              }

              if (v139 > 0x7Fu)
              {
                if (!__maskrune(v139, 0x100uLL))
                {
                  goto LABEL_310;
                }

                if (!__maskrune(v139, 0x8000uLL))
                {
                  v149 = __maskrune(v139, 0x1000uLL);
LABEL_307:
                  v150 = v139;
                  if (v149)
                  {
                    v150 = __toupper(v139);
                  }

LABEL_309:
                  if (v139 != v150)
                  {
                    bothcases(a1, v139);
                    v159 = *(a1 + 56);
                    v155 = *(v159 + 16);
                    v92 = *(v159 + 24) + 32 * *(v159 + 20);
                    if (!v155)
                    {
LABEL_221:
                      if ((v92 - 32) == v13)
                      {
                        --*(*(a1 + 56) + 20);
                      }

                      return;
                    }

LABEL_325:
                    for (i = 0; i != v155; ++i)
                    {
                      *(*v13 + i) &= ~v13[8];
                      v13[9] -= i;
                    }

                    goto LABEL_221;
                  }

LABEL_310:
                  if (*(a1 + 16))
                  {
                    if (*(v147 + v139))
                    {
                      goto LABEL_312;
                    }

                    goto LABEL_324;
                  }

                  v156 = *(a1 + 32);
                  if (*(a1 + 40) >= v156)
                  {
                    v157 = (v156 + 1) / 2;
                    v158 = ((v156 + 1 + ((v156 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v157;
                    if (v156 < v158)
                    {
                      if (v158 >> 61)
                      {
LABEL_317:
                        *(a1 + 16) = 12;
LABEL_318:
                        *a1 = &nuls;
                        *(a1 + 8) = &nuls;
                        goto LABEL_323;
                      }

                      v160 = malloc_type_realloc(*(a1 + 24), 24 * v157, 0x100004000313F17uLL);
                      if (!v160)
                      {
                        if (*(a1 + 16))
                        {
                          goto LABEL_318;
                        }

                        goto LABEL_317;
                      }

                      *(a1 + 24) = v160;
                      *(a1 + 32) = v158;
                    }
                  }

LABEL_323:
                  v161 = *(a1 + 24);
                  v162 = *(a1 + 40);
                  *(a1 + 40) = v162 + 1;
                  *(v161 + 8 * v162) = v139 | 0x10000000u;
                  if (*(v147 + v139))
                  {
LABEL_312:
                    v154 = *(a1 + 56);
                    v155 = *(v154 + 16);
                    v92 = *(v154 + 24) + 32 * *(v154 + 20);
                    if (!v155)
                    {
                      goto LABEL_221;
                    }

                    goto LABEL_325;
                  }

LABEL_324:
                  v163 = *(a1 + 56);
                  v164 = *(v163 + 84);
                  *(v163 + 84) = v164 + 1;
                  *(v147 + v139) = v164;
                  v165 = *(a1 + 56);
                  v155 = *(v165 + 16);
                  v92 = *(v165 + 24) + 32 * *(v165 + 20);
                  if (!v155)
                  {
                    goto LABEL_221;
                  }

                  goto LABEL_325;
                }
              }

              else
              {
                v148 = *(MEMORY[0x277D85DE0] + 4 * v139 + 60);
                if ((v148 & 0x100) == 0)
                {
                  goto LABEL_310;
                }

                if ((v148 & 0x8000) == 0)
                {
                  v149 = *(MEMORY[0x277D85DE0] + 4 * v139 + 60) & 0x1000;
                  goto LABEL_307;
                }
              }

              v150 = __tolower(v139);
              goto LABEL_309;
            }

            v140 = *(v83 + 20);
            if (v140 >= 1)
            {
              v112 = *(v83 + 24);
              v113 = &v112[32 * v140];
              while (1)
              {
                if (v112 != v13 && v112[9] == v13[9])
                {
                  v141 = 0;
                  while (((*(*v112 + v141) & v112[8]) != 0) != ((*(*v13 + v141) & v13[8]) == 0))
                  {
                    if (v106 == ++v141)
                    {
                      goto LABEL_279;
                    }
                  }

                  if (v106 == v141)
                  {
                    break;
                  }
                }

                v112 += 32;
                if (v112 >= v113)
                {
                  goto LABEL_285;
                }
              }

LABEL_279:
              if (v106)
              {
                for (j = 0; j != v106; ++j)
                {
                  *(*v13 + j) &= ~v13[8];
                  v13[9] -= j;
                }

                v83 = *(a1 + 56);
              }

              if (v113 - 32 == v13)
              {
                --*(v83 + 20);
              }

LABEL_286:
              if (*(a1 + 16))
              {
                return;
              }

              v143 = (&v112[-*(v83 + 24)] >> 5);
              v144 = *(a1 + 32);
              if (*(a1 + 40) >= v144)
              {
                v145 = (v144 + 1) / 2;
                v146 = ((v144 + 1 + ((v144 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v145;
                if (v144 < v146)
                {
                  if (v146 >> 61)
                  {
                    goto LABEL_290;
                  }

                  v151 = malloc_type_realloc(*(a1 + 24), 24 * v145, 0x100004000313F17uLL);
                  if (v151)
                  {
                    *(a1 + 24) = v151;
                    *(a1 + 32) = v146;
                    goto LABEL_305;
                  }

                  if (!*(a1 + 16))
                  {
LABEL_290:
                    *(a1 + 16) = 12;
                  }

                  *a1 = &nuls;
                  *(a1 + 8) = &nuls;
                }
              }

LABEL_305:
              v152 = *(a1 + 24);
              v153 = *(a1 + 40);
              *(a1 + 40) = v153 + 1;
              *(v152 + 8 * v153) = v143 | 0x30000000;
              return;
            }

            goto LABEL_285;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 7;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
        }

        v90 = *(a1 + 56);
        v91 = *(v90 + 16);
        v92 = *(v90 + 24) + 32 * *(v90 + 20);
        if (v91)
        {
          for (k = 0; k != v91; ++k)
          {
            *(*v13 + k) &= ~v13[8];
            v13[9] -= k;
          }
        }

        goto LABEL_221;
      }

      v19 = *v17;
    }

    if (v19 == 93)
    {
      v20 = 93;
    }

    else
    {
      if (v19 != 45)
      {
        goto LABEL_34;
      }

      v20 = 45;
    }

    *a1 = v17 + 1;
    *(v14 + v20) |= v16;
    v13[9] += v19;
LABEL_34:
    v34 = *a1;
    v33 = *(a1 + 8);
    v35 = &v33[-*a1];
    if (v35 < 1)
    {
      goto LABEL_191;
    }

    goto LABEL_35;
  }

LABEL_187:
  free(*(v7 + 24));
  v82 = *(a1 + 56);
  *(v82 + 24) = 0;
  free(*(v82 + 32));
  *(*(a1 + 56) + 32) = 0;
  if (!*(a1 + 16))
  {
    *(a1 + 16) = 12;
  }

  *a1 = &nuls;
  *(a1 + 8) = &nuls;
}

__n128 ordinary(uint64_t a1, int a2, double a3, double a4, double a5, int32x4_t a6)
{
  v8 = *(a1 + 56);
  v9 = *(v8 + 88);
  v10 = a2;
  if ((*(v8 + 40) & 2) == 0)
  {
    goto LABEL_13;
  }

  if (a2 > 0x7Fu)
  {
    if (!__maskrune(a2, 0x100uLL))
    {
      goto LABEL_13;
    }

    if (!__maskrune(v10, 0x8000uLL))
    {
      v14 = __maskrune(v10, 0x1000uLL);
      v12 = a2;
      if (!v14)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_9:
    v12 = __tolower(v10);
    goto LABEL_12;
  }

  v11 = *(MEMORY[0x277D85DE0] + 4 * a2 + 60);
  if ((v11 & 0x100) == 0)
  {
    goto LABEL_13;
  }

  if ((v11 & 0x8000) != 0)
  {
    goto LABEL_9;
  }

  v12 = a2;
  if ((v11 & 0x1000) != 0)
  {
LABEL_11:
    v12 = __toupper(v10);
  }

LABEL_12:
  if (a2 != v12)
  {
    v26 = a2;
    v27 = 93;
    v23 = *a1;
    v25 = *a1;
    *a1 = &v26;
    *(a1 + 8) = &v27 + 1;
    p_bracket(a1, v23.n128_f64[0], a4, a5, a6);
    result = v25;
    *a1 = v25;
    return result;
  }

LABEL_13:
  if (*(a1 + 16))
  {
    if (*(v9 + a2))
    {
      return result;
    }

LABEL_21:
    v21 = *(a1 + 56);
    v22 = *(v21 + 84);
    *(v21 + 84) = v22 + 1;
    *(v9 + a2) = v22;
    return result;
  }

  v15 = *(a1 + 32);
  v16 = (v15 + 1) / 2;
  v17 = ((v15 + 1 + ((v15 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v16;
  if (*(a1 + 40) >= v15 && v15 < v17)
  {
    if (v17 >> 61)
    {
      goto LABEL_24;
    }

    v24 = malloc_type_realloc(*(a1 + 24), 24 * v16, 0x100004000313F17uLL);
    if (v24)
    {
      *(a1 + 24) = v24;
      *(a1 + 32) = v17;
      goto LABEL_20;
    }

    if (!*(a1 + 16))
    {
LABEL_24:
      *(a1 + 16) = 12;
    }

    *a1 = &nuls;
    *(a1 + 8) = &nuls;
  }

LABEL_20:
  v19 = *(a1 + 24);
  v20 = *(a1 + 40);
  *(a1 + 40) = v20 + 1;
  *(v19 + 8 * v20) = v10 | 0x10000000u;
  if (!*(v9 + a2))
  {
    goto LABEL_21;
  }

  return result;
}

_DWORD *repeat(_DWORD *result, uint64_t a2, int a3, uint64_t a4)
{
  if (result[4])
  {
    return result;
  }

  v6 = result;
  v7 = *(result + 5);
LABEL_3:
  while (2)
  {
    while (1)
    {
      v8 = a4 == 256 ? 3 : 2;
      v9 = a4 >= 2 ? v8 : a4;
      v10 = a3 - 1;
      v11 = a2;
      while (1)
      {
        v13 = v11;
        v11 = v7;
        if (a3 == 256)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        if (a3 < 2)
        {
          v14 = a3;
        }

        v15 = v9 + 8 * v14;
        if (v15 != 19)
        {
          if (v15 <= 8)
          {
            if ((v15 - 1) >= 3)
            {
              if (v15)
              {
                goto LABEL_127;
              }

              v11 = v13;
LABEL_114:
              v6[5] = v11;
              return result;
            }

LABEL_106:
            doinsert(v6, 2013265920, v11 - v13 + 1, v13);
            result = repeat(v6, v13 + 1, 1, a4);
            if (*(v6 + 4))
            {
              return result;
            }

            v47 = v6[4];
            v46 = v6[5];
            v48 = v46 - v13;
            if (v46 < v47 || (v49 = (v47 + 1) / 2, v50 = ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v49, v47 >= v50))
            {
              result = v6[3];
              v52 = v6[5];
              v6[5] = v52 + 1;
              *&result[2 * v52] = v48 | 0x80000000;
            }

            else
            {
              if (v50 >> 61)
              {
LABEL_110:
                *(v6 + 4) = 12;
LABEL_111:
                *v6 = &nuls;
                v6[1] = &nuls;
                v51 = v48 | 0x80000000;
LABEL_148:
                v69 = v6[3];
                v70 = v6[5];
                v6[5] = v70 + 1;
                *(v69 + 8 * v70) = v51;
                return result;
              }

              result = malloc_type_realloc(v6[3], 24 * v49, 0x100004000313F17uLL);
              if (!result)
              {
                if (*(v6 + 4))
                {
                  goto LABEL_111;
                }

                goto LABEL_110;
              }

              v6[3] = result;
              v6[4] = v50;
              v60 = *(v6 + 4);
              v61 = v6[5];
              v6[5] = v61 + 1;
              *&result[2 * v61] = v48 | 0x80000000;
              if (v60)
              {
                return result;
              }
            }

            *&result[2 * v13] = *&result[2 * v13] & 0xF8000000 | (v6[5] - v13);
            v53 = v6[4];
            if (v6[5] < v53 || (v54 = (v53 + 1) / 2, v55 = ((v53 + 1 + ((v53 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v54, v53 >= v55))
            {
              v56 = v6[5];
              v6[5] = v56 + 1;
              *&result[2 * v56] = 2281701376;
            }

            else
            {
              if (v55 >> 61)
              {
                *(v6 + 4) = 12;
                *v6 = &nuls;
                v6[1] = &nuls;
LABEL_152:
                v71 = v6[5];
                v6[5] = v71 + 1;
                v72 = 2281701376;
LABEL_157:
                *&result[2 * v71] = v72;
                return result;
              }

              result = malloc_type_realloc(result, 24 * v54, 0x100004000313F17uLL);
              if (!result)
              {
                if (!*(v6 + 4))
                {
                  *(v6 + 4) = 12;
                }

                *v6 = &nuls;
                v6[1] = &nuls;
                result = v6[3];
                goto LABEL_152;
              }

              v6[3] = result;
              v6[4] = v55;
              v62 = *(v6 + 4);
              v63 = v6[5];
              v6[5] = v63 + 1;
              *&result[2 * v63] = 2281701376;
              if (v62)
              {
                return result;
              }
            }

            *&result[2 * v6[5] - 2] = *&result[2 * v6[5] - 2] & 0xF8000000 | 1;
            v57 = v6[4];
            if (v6[5] >= v57)
            {
              v58 = (v57 + 1) / 2;
              v59 = ((v57 + 1 + ((v57 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v58;
              if (v57 < v59)
              {
                if (v59 >> 61)
                {
                  *(v6 + 4) = 12;
                  *v6 = &nuls;
                  v6[1] = &nuls;
                }

                else
                {
                  result = malloc_type_realloc(result, 24 * v58, 0x100004000313F17uLL);
                  if (result)
                  {
                    v6[3] = result;
                    v6[4] = v59;
                  }

                  else
                  {
                    if (!*(v6 + 4))
                    {
                      *(v6 + 4) = 12;
                    }

                    *v6 = &nuls;
                    v6[1] = &nuls;
                    result = v6[3];
                  }
                }
              }
            }

            v71 = v6[5];
            v6[5] = v71 + 1;
            v72 = 2415919106;
            goto LABEL_157;
          }

          if (v15 <= 10)
          {
            if (v15 == 9)
            {
              return result;
            }

            goto LABEL_29;
          }

          if (v15 == 11)
          {
LABEL_135:
            result = doinsert(v6, 1207959552, v11 - v13 + 1, v13);
            if (*(v6 + 4))
            {
              return result;
            }

            v65 = v6[4];
            v64 = v6[5];
            v66 = v64 - v13;
            if (v64 < v65)
            {
              goto LABEL_147;
            }

            v67 = (v65 + 1) / 2;
            v68 = ((v65 + 1 + ((v65 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v67;
            if (v65 >= v68)
            {
              goto LABEL_147;
            }

            if (v68 >> 61)
            {
              goto LABEL_139;
            }

            result = malloc_type_realloc(v6[3], 24 * v67, 0x100004000313F17uLL);
            if (result)
            {
              v6[3] = result;
              v6[4] = v68;
              goto LABEL_147;
            }

            if (!*(v6 + 4))
            {
LABEL_139:
              *(v6 + 4) = 12;
            }

            *v6 = &nuls;
            v6[1] = &nuls;
LABEL_147:
            v51 = v66 | 0x50000000;
            goto LABEL_148;
          }

          if (v15 != 18)
          {
            goto LABEL_127;
          }

          v7 = v11;
          v26 = v11 - v13;
          if (v11 == v13)
          {
            goto LABEL_64;
          }

          if (v26 >= 1)
          {
            v27 = v6[4] + v26;
            if (v27 >> 61)
            {
              goto LABEL_50;
            }

            v33 = malloc_type_realloc(v6[3], 8 * v27, 0x100004000313F17uLL);
            if (v33)
            {
              v6[3] = v33;
              v6[4] = v27;
              goto LABEL_63;
            }

            if (!*(v6 + 4))
            {
LABEL_50:
              *(v6 + 4) = 12;
            }

            *v6 = &nuls;
            v6[1] = &nuls;
          }

LABEL_63:
          result = memmove((v6[3] + 8 * v6[5]), (v6[3] + 8 * v13), 8 * v26);
          v7 = v6[5] + v26;
          v6[5] = v7;
LABEL_64:
          --a3;
          a2 = v11;
          a4 = (a4 - 1);
          if (!*(v6 + 4))
          {
            goto LABEL_3;
          }

          return result;
        }

        v16 = v11 - v13;
        if (v11 == v13)
        {
          break;
        }

        if (v16 >= 1)
        {
          v17 = v6[4] + v16;
          if (v17 >> 61)
          {
            goto LABEL_22;
          }

          v12 = malloc_type_realloc(v6[3], 8 * v17, 0x100004000313F17uLL);
          if (!v12)
          {
            if (!*(v6 + 4))
            {
LABEL_22:
              *(v6 + 4) = 12;
            }

            *v6 = &nuls;
            v6[1] = &nuls;
            goto LABEL_12;
          }

          v6[3] = v12;
          v6[4] = v17;
        }

LABEL_12:
        result = memmove((v6[3] + 8 * v6[5]), (v6[3] + 8 * v13), 8 * v16);
        v7 = v6[5] + v16;
        v6[5] = v7;
        --a3;
        --v10;
        if (*(v6 + 4))
        {
          return result;
        }
      }

      do
      {
        if (v10 == 256)
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        if (v10 + 1 >= 3)
        {
          v24 = v23;
        }

        else
        {
          v24 = v10;
        }

        v25 = v9 + 8 * v24;
        --v10;
      }

      while (v25 == 19);
      if (v25 <= 8)
      {
        v13 = v11;
        if ((v25 - 1) >= 3)
        {
          if (v25)
          {
            goto LABEL_127;
          }

          goto LABEL_114;
        }

        goto LABEL_106;
      }

      if (v25 > 10)
      {
        if (v25 != 11)
        {
          if (v25 == 18)
          {
            a3 = v10 + 1;
            v7 = v11;
            goto LABEL_64;
          }

LABEL_127:
          *(v6 + 4) = 15;
          *v6 = &nuls;
          v6[1] = &nuls;
          return result;
        }

        v13 = v11;
        goto LABEL_135;
      }

      if (v25 == 9)
      {
        return result;
      }

      v13 = v11;
LABEL_29:
      v18 = v11 - v13;
      result = doinsert(v6, 2013265920, v11 - v13 + 1, v13);
      a2 = v6[5];
      if (*(v6 + 4))
      {
        goto LABEL_83;
      }

      v19 = v6[4];
      if (a2 < v19 || (v20 = (v19 + 1) / 2, v21 = ((v19 + 1 + ((v19 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v20, v19 >= v21))
      {
        v22 = 1;
      }

      else
      {
        if (v21 >> 61)
        {
          v22 = 0;
          *(v6 + 4) = 12;
          goto LABEL_98;
        }

        v38 = v6[5];
        v39 = malloc_type_realloc(v6[3], 24 * v20, 0x100004000313F17uLL);
        if (v39)
        {
          v6[3] = v39;
          v6[4] = v21;
          v22 = *(v6 + 4) == 0;
          a2 = v38;
        }

        else
        {
          a2 = v38;
          if (!*(v6 + 4))
          {
            *(v6 + 4) = 12;
          }

          v22 = 0;
LABEL_98:
          *v6 = &nuls;
          v6[1] = &nuls;
        }
      }

      result = v6[3];
      v28 = v6[5];
      v6[5] = v28 + 1;
      *&result[2 * v28] = (a2 - v13) | 0x80000000;
      a2 = v6[5];
      if (!v22)
      {
        goto LABEL_83;
      }

      *&result[2 * v13] = *&result[2 * v13] & 0xF8000000 | (a2 - v13);
      v29 = v6[4];
      if (v6[5] < v29 || (v30 = (v29 + 1) / 2, v31 = ((v29 + 1 + ((v29 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v30, v29 >= v31))
      {
        v34 = v6[5];
        v6[5] = v34 + 1;
        *&result[2 * v34] = 2281701376;
        a2 = v6[5];
LABEL_67:
        *&result[2 * a2 - 2] = *&result[2 * a2 - 2] & 0xF8000000 | 1;
        v35 = v6[4];
        if (v6[5] < v35 || (v36 = (v35 + 1) / 2, v37 = ((v35 + 1 + ((v35 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v36, v35 >= v37))
        {
LABEL_81:
          v32 = 2415919106;
        }

        else
        {
          if (v37 >> 61)
          {
            *(v6 + 4) = 12;
            v32 = 2415919106;
LABEL_71:
            *v6 = &nuls;
            v6[1] = &nuls;
            goto LABEL_82;
          }

          result = malloc_type_realloc(result, 24 * v36, 0x100004000313F17uLL);
          if (result)
          {
            v6[3] = result;
            v6[4] = v37;
            goto LABEL_81;
          }

          if (!*(v6 + 4))
          {
            *(v6 + 4) = 12;
          }

          *v6 = &nuls;
          v6[1] = &nuls;
          v32 = 2415919106;
          result = v6[3];
        }

LABEL_82:
        v42 = v6[5];
        v6[5] = v42 + 1;
        *&result[2 * v42] = v32;
        a2 = v6[5];
        goto LABEL_83;
      }

      if (v31 >> 61)
      {
        *(v6 + 4) = 12;
        v32 = 2281701376;
        goto LABEL_71;
      }

      result = malloc_type_realloc(result, 24 * v30, 0x100004000313F17uLL);
      if (!result)
      {
        if (!*(v6 + 4))
        {
          *(v6 + 4) = 12;
        }

        *v6 = &nuls;
        v6[1] = &nuls;
        v32 = 2281701376;
        result = v6[3];
        goto LABEL_82;
      }

      v6[3] = result;
      v6[4] = v31;
      v40 = *(v6 + 4);
      v41 = v6[5];
      v6[5] = v41 + 1;
      *&result[2 * v41] = 2281701376;
      a2 = v6[5];
      if (!v40)
      {
        goto LABEL_67;
      }

LABEL_83:
      if (v11 == v13)
      {
        break;
      }

      v43 = a2;
      if (v18 >= 1)
      {
        v44 = v6[4] + v18;
        if (v44 >> 61 || (v45 = malloc_type_realloc(v6[3], 8 * v44, 0x100004000313F17uLL)) == 0)
        {
          if (!*(v6 + 4))
          {
            *(v6 + 4) = 12;
          }

          *v6 = &nuls;
          v6[1] = &nuls;
        }

        else
        {
          v6[3] = v45;
          v6[4] = v44;
        }
      }

      result = memmove((v6[3] + 8 * v6[5]), (v6[3] + 8 * v13 + 8), 8 * v18);
      v7 = v6[5] + v18;
      v6[5] = v7;
      a3 = 1;
      a2 = v43;
      a4 = (a4 - 1);
      if (*(v6 + 4))
      {
        return result;
      }
    }

    a3 = 1;
    v7 = a2;
    a4 = (a4 - 1);
    if (!*(v6 + 4))
    {
      continue;
    }

    return result;
  }
}

uint64_t p_b_symbol(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (v2 - *a1 < 1)
  {
    if (!*(a1 + 16))
    {
      *(a1 + 16) = 7;
    }

    v1 = &nuls;
    *a1 = &nuls;
    *(a1 + 8) = &nuls;
    goto LABEL_16;
  }

  v3 = v2 - v1;
  if (v2 - v1 <= 1 || *v1 != 91 || v1[1] != 46)
  {
LABEL_16:
    *a1 = v1 + 1;
    return *v1;
  }

  v4 = v1 + 2;
  *a1 = v1 + 2;
  if (v2 - (v1 + 2) < 1)
  {
LABEL_23:
    if (*(a1 + 16))
    {
      goto LABEL_26;
    }

    v15 = 7;
  }

  else
  {
    v5 = 0;
    v6 = -2;
    while (1)
    {
      v7 = &v1[v5];
      if (v3 - 3 != v5 && v7[2] == 46 && v1[v5 + 3] == 93)
      {
        break;
      }

      *a1 = v7 + 3;
      ++v5;
      --v6;
      if (v3 + v6 <= 0)
      {
        goto LABEL_23;
      }
    }

    v8 = a1;
    v9 = &v1[v5 + 2];
    v10 = "NUL";
    v11 = &off_27983CF40;
    do
    {
      if (!strncmp(v10, v4, v5) && strlen(v10) == v5)
      {
        v12 = *(v11 - 8);
        a1 = v8;
        if (v2 - v9 <= 1)
        {
          goto LABEL_32;
        }

LABEL_27:
        if (*v9 == 46 && v9[1] == 93)
        {
          *a1 = v9 + 2;
          return v12;
        }

        goto LABEL_32;
      }

      v14 = *v11;
      v11 += 2;
      v10 = v14;
    }

    while (v14);
    if (v5 == 1)
    {
      v12 = *v4;
      a1 = v8;
      if (v2 - v9 <= 1)
      {
        goto LABEL_32;
      }

      goto LABEL_27;
    }

    a1 = v8;
    if (*(v8 + 16))
    {
      goto LABEL_26;
    }

    v15 = 3;
  }

  *(a1 + 16) = v15;
LABEL_26:
  v12 = 0;
  *a1 = &nuls;
  *(a1 + 8) = &nuls;
LABEL_32:
  if (!*(a1 + 16))
  {
    *(a1 + 16) = 3;
  }

  *a1 = &nuls;
  *(a1 + 8) = &nuls;
  return v12;
}

__n128 bothcases(__n128 *a1, char a2)
{
  v5 = a2;
  v6 = 93;
  v4 = *a1;
  a1->n128_u64[0] = &v5;
  a1->n128_u64[1] = &v6 + 1;
  p_bracket();
  result = v4;
  *a1 = v4;
  return result;
}

size_t llvm_regerror(int a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1 == 255)
  {
    v6 = *(a2 + 16);
    if (!strcmp("REG_NOMATCH", v6))
    {
      v12 = 1;
    }

    else if (!strcmp("REG_BADPAT", v6))
    {
      v12 = 2;
    }

    else if (!strcmp("REG_ECOLLATE", v6))
    {
      v12 = 3;
    }

    else if (!strcmp("REG_ECTYPE", v6))
    {
      v12 = 4;
    }

    else if (!strcmp("REG_EESCAPE", v6))
    {
      v12 = 5;
    }

    else if (!strcmp("REG_ESUBREG", v6))
    {
      v12 = 6;
    }

    else if (!strcmp("REG_EBRACK", v6))
    {
      v12 = 7;
    }

    else if (!strcmp("REG_EPAREN", v6))
    {
      v12 = 8;
    }

    else if (!strcmp("REG_EBRACE", v6))
    {
      v12 = 9;
    }

    else if (!strcmp("REG_BADBR", v6))
    {
      v12 = 10;
    }

    else if (!strcmp("REG_ERANGE", v6))
    {
      v12 = 11;
    }

    else if (!strcmp("REG_ESPACE", v6))
    {
      v12 = 12;
    }

    else if (!strcmp("REG_BADRPT", v6))
    {
      v12 = 13;
    }

    else if (!strcmp("REG_EMPTY", v6))
    {
      v12 = 14;
    }

    else if (!strcmp("REG_ASSERT", v6))
    {
      v12 = 15;
    }

    else
    {
      if (strcmp("REG_INVARG", v6))
      {
        v7 = "0";
        goto LABEL_48;
      }

      v12 = 16;
    }

    v16 = v12;
    v13 = "%d";
  }

  else
  {
    v8 = &rerrs;
    do
    {
      v10 = *v8;
      v8 += 6;
      v9 = v10;
      if (v10)
      {
        v11 = v9 == (a1 & 0xFFFFFEFF);
      }

      else
      {
        v11 = 1;
      }
    }

    while (!v11);
    if ((a1 & 0x100) == 0)
    {
      v7 = *(v8 - 1);
      goto LABEL_48;
    }

    if (v9)
    {
      v7 = __str;
      llvm_strlcpy(__str, *(v8 - 2), 50);
      goto LABEL_48;
    }

    v16 = a1 & 0xFFFFFEFF;
    v13 = "REG_0x%x";
  }

  v7 = __str;
  snprintf(__str, 0x32uLL, v13, v16);
LABEL_48:
  v14 = strlen(v7);
  if (a4)
  {
    llvm_strlcpy(a3, v7, a4);
  }

  return v14 + 1;
}

uint64_t llvm_regexec(uint64_t a1, char *__s, unint64_t a3, void *a4, char a5)
{
  if (*a1 != 62053)
  {
    return 2;
  }

  v137 = v5;
  v138 = v6;
  v7 = *(a1 + 24);
  if (*v7 != 53829 || (*(v7 + 72) & 4) != 0)
  {
    return 2;
  }

  v8 = a5 & 7;
  v9 = *(v7 + 48);
  v10 = __s;
  if (v9 > 64)
  {
    v20 = *(v7 + 56);
    v19 = *(v7 + 64);
    if ((*(v7 + 40) & 4) != 0)
    {
      v21 = 0;
    }

    else
    {
      v21 = a3;
    }

    v122 = v21;
    if ((a5 & 4) != 0)
    {
      v23 = a4[1];
      v24 = &__s[*a4];
      v25 = &__s[v23];
      if (&__s[v23] < v24)
      {
        return 16;
      }
    }

    else
    {
      v22 = a4;
      v23 = strlen(__s);
      a4 = v22;
      __s = v10;
      v24 = v10;
      v25 = &v10[v23];
      if (&v10[v23] < v10)
      {
        return 16;
      }
    }

    v132 = 0u;
    v131 = 0u;
    v130 = 0u;
    v35 = *(v7 + 96);
    v127 = v25;
    v119 = a4;
    if (v35)
    {
      v36 = v24;
      if (v24 < v25)
      {
        __dsta = v20;
        v116 = v8;
        v37 = v7;
        v38 = *v35;
        v39 = (__s - v24 + v23);
        v113 = &__s[v23];
        v40 = (&__s[v23] - v24);
        v36 = v24;
        do
        {
          if (*v36 == v38)
          {
            v41 = *(v37 + 104);
            if (v40 >= v41)
            {
              v42 = memcmp(v36, v35, v41);
              __s = v10;
              if (!v42)
              {
                goto LABEL_152;
              }
            }
          }

          ++v36;
          --v40;
          --v39;
        }

        while (v39);
        v36 = v113;
LABEL_152:
        v7 = v37;
        v20 = __dsta;
        v25 = v127;
        v8 = v116;
      }

      if (v36 == v25)
      {
        return 1;
      }
    }

    v129 = v7;
    LODWORD(v130) = v8;
    *&v131 = __s;
    *(&v131 + 1) = v24;
    *&v133 = 0;
    *&v132 = v25;
    v76 = malloc_type_malloc(4 * v9, 0xD100C61FuLL);
    v134[0] = v76;
    if (!v76)
    {
      return 12;
    }

    v77 = v20 + 1;
    v134[1] = v76;
    v78 = *(v7 + 48);
    *&v135 = &v76[v78];
    *(&v135 + 1) = &v76[2 * v78];
    *(&v133 + 1) = 4;
    v136 = &v76[2 * v78 + v78];
    bzero(v136, v78);
    v121 = v7;
LABEL_157:
    if (*(&v131 + 1) == v24)
    {
      v79 = 128;
    }

    else
    {
      v79 = *(v24 - 1);
    }

    v80 = v135;
    v81 = v134[1];
    bzero(v134[1], *(v129 + 48));
    v81[v77] = 1;
    lstep(v129, v77, v19, v81, 132, v81);
    memmove(v80, v81, *(v129 + 48));
    v82 = 0;
    if (v24 != v132)
    {
LABEL_161:
      v83 = *v24;
      goto LABEL_163;
    }

    while (1)
    {
      v83 = 128;
LABEL_163:
      v84 = v129;
      if (!memcmp(v81, v80, *(v129 + 48)))
      {
        v82 = v24;
      }

      if (v79 == 128)
      {
        if (v130)
        {
          goto LABEL_168;
        }
      }

      else if (v79 != 10 || (*(v84 + 40) & 8) == 0)
      {
LABEL_168:
        v85 = 0;
        v86 = 0;
        v87 = 130;
        if (v83 == 128)
        {
          goto LABEL_175;
        }

        goto LABEL_169;
      }

      v86 = *(v84 + 76);
      v85 = 129;
      v87 = 131;
      if (v83 == 128)
      {
LABEL_175:
        if ((v130 & 2) != 0)
        {
          goto LABEL_171;
        }

        goto LABEL_176;
      }

LABEL_169:
      if (v83 != 10 || (*(v84 + 40) & 8) == 0)
      {
LABEL_171:
        v87 = v85;
        if (v86 < 1)
        {
          goto LABEL_179;
        }

        goto LABEL_177;
      }

LABEL_176:
      v86 += *(v84 + 80);
      if (v86 < 1)
      {
        goto LABEL_179;
      }

LABEL_177:
      v88 = v86 + 1;
      do
      {
        lstep(v129, v77, v19, v81, v87, v81);
        --v88;
      }

      while (v88 > 1);
LABEL_179:
      if (v87 == 129)
      {
        if (v83 == 128)
        {
          v87 = 129;
          if (v79 == 128)
          {
            goto LABEL_210;
          }
        }

        else
        {
LABEL_190:
          if (v83 > 0x7Fu)
          {
            v91 = __maskrune(v83, 0x500uLL);
            if (v83 == 95 || v91 != 0)
            {
              v87 = 133;
            }

            if (v79 == 128)
            {
              goto LABEL_210;
            }
          }

          else
          {
            if (v83 == 95 || (*(MEMORY[0x277D85DE0] + 4 * v83 + 60) & 0x500) != 0)
            {
              v87 = 133;
            }

            if (v79 == 128)
            {
              goto LABEL_210;
            }
          }
        }

        v89 = v79;
        goto LABEL_205;
      }

      if (v79 == 128)
      {
        goto LABEL_210;
      }

      v89 = v79;
      if (v79 > 0x7Fu)
      {
        if (__maskrune(v79, 0x500uLL))
        {
          goto LABEL_205;
        }
      }

      else if ((*(MEMORY[0x277D85DE0] + 4 * v79 + 60) & 0x500) != 0)
      {
        goto LABEL_205;
      }

      if (v79 != 95 && v83 != 128)
      {
        goto LABEL_190;
      }

LABEL_205:
      if (v89 > 0x7F)
      {
        if (!__maskrune(v89, 0x500uLL))
        {
LABEL_209:
          if (v79 != 95)
          {
            goto LABEL_210;
          }
        }
      }

      else if ((*(MEMORY[0x277D85DE0] + 4 * v89 + 60) & 0x500) == 0)
      {
        goto LABEL_209;
      }

      if (v87 == 130 || v83 != 128 && (v83 > 0x7Fu ? (v93 = __maskrune(v83, 0x500uLL)) : (v93 = *(MEMORY[0x277D85DE0] + 4 * v83 + 60) & 0x500), !v93 && v83 != 95))
      {
        v87 = 134;
LABEL_214:
        lstep(v129, v77, v19, v81, v87, v81);
        goto LABEL_215;
      }

LABEL_210:
      if ((v87 - 133) <= 1)
      {
        goto LABEL_214;
      }

LABEL_215:
      if (v24 == v127 || v81[v19])
      {
        *(&v132 + 1) = v82;
        if (!v81[v19])
        {
          free(*(&v130 + 1));
          free(v133);
          v112 = 1;
          goto LABEL_267;
        }

        v94 = v122;
        if (!v122 && !*(v121 + 120))
        {
          goto LABEL_262;
        }

        v95 = lslow(&v129, v82, v127, v77, v19);
        if (!v95)
        {
          v97 = v121;
          do
          {
            ++*(&v132 + 1);
            v98 = lslow(&v129, *(&v132 + 1), v127, v77, v19);
          }

          while (!v98);
          v96 = v98;
          if (v122 == 1)
          {
            goto LABEL_235;
          }

          goto LABEL_236;
        }

        v96 = v95;
        v97 = v121;
        if (v122 != 1)
        {
          goto LABEL_236;
        }

LABEL_235:
        if (!*(v97 + 120))
        {
          goto LABEL_257;
        }

LABEL_236:
        v99 = *(&v130 + 1);
        if (!*(&v130 + 1))
        {
          v99 = malloc_type_malloc(16 * *(v129 + 112) + 16, 0x1000040451B5BE8uLL);
          *(&v130 + 1) = v99;
          if (!v99)
          {
            v112 = 12;
            goto LABEL_267;
          }
        }

        v100 = *(v129 + 112);
        if (v100)
        {
          if ((v100 + 1) > 2)
          {
            v101 = v100 + 1;
          }

          else
          {
            v101 = 2;
          }

          memset(v99 + 16, 255, 16 * v101 - 16);
        }

        if (*(v97 + 120) || (BYTE1(v130) & 4) != 0)
        {
          v103 = *(v97 + 128);
          v104 = v133;
          if (v103 >= 1 && !v133)
          {
            v104 = malloc_type_malloc(8 * v103 + 8, 0x10040436913F5uLL);
            *&v133 = v104;
            v103 = *(v97 + 128);
          }

          if (v103 < 1 || v104)
          {
            v102 = sbackref(&v129, *(&v132 + 1), v96, v77, v19, 0, 0);
            goto LABEL_252;
          }

          free(*(&v130 + 1));
          v112 = 12;
          goto LABEL_267;
        }

        v102 = ldissect(&v129, *(&v132 + 1), v96, v77, v19);
LABEL_252:
        if (v102)
        {
          goto LABEL_256;
        }

        while (1)
        {
          v105 = *(&v132 + 1);
          if (v96 <= *(&v132 + 1))
          {
            break;
          }

          v96 = lslow(&v129, *(&v132 + 1), v96 - 1, v77, v19);
          v105 = *(&v132 + 1);
          if (!v96)
          {
            break;
          }

          if (sbackref(&v129, *(&v132 + 1), v96, v77, v19, 0, 0))
          {
            goto LABEL_256;
          }
        }

        v24 = v105 + 1;
        if (v105 == v127)
        {
LABEL_256:
          v94 = v122;
          if (v122)
          {
LABEL_257:
            v106 = &v96[-v131];
            *v119 = *(&v132 + 1) - v131;
            v119[1] = v106;
            if (v94 >= 2)
            {
              v107 = v129;
              v108 = (*(&v130 + 1) + 16);
              v109 = v119 + 2;
              for (i = 1; i != v94; ++i)
              {
                while (i > *(v107 + 112))
                {
                  *v109 = -1;
                  v109[1] = -1;
                  v109 += 2;
                  ++i;
                  ++v108;
                  if (v94 == i)
                  {
                    goto LABEL_262;
                  }
                }

                v111 = *v108++;
                *v109 = v111;
                v109 += 2;
              }
            }
          }

LABEL_262:
          if (*(&v130 + 1))
          {
            free(*(&v130 + 1));
          }

          if (v133)
          {
            free(v133);
          }

          v112 = 0;
LABEL_267:
          free(v134[0]);
          return v112;
        }

        goto LABEL_157;
      }

      memmove(*(&v80 + 1), v81, *(v129 + 48));
      memmove(v81, v80, *(v129 + 48));
      lstep(v129, v77, v19, *(&v80 + 1), v83, v81);
      ++v24;
      v79 = v83;
      if (v24 != v132)
      {
        goto LABEL_161;
      }
    }
  }

  v12 = *(v7 + 56);
  v11 = *(v7 + 64);
  if ((*(v7 + 40) & 4) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3;
  }

  if ((a5 & 4) == 0)
  {
    v14 = a4;
    v15 = strlen(__s);
    a4 = v14;
    __s = v10;
    v16 = v10;
    v17 = &v10[v15];
    if (&v10[v15] >= v10)
    {
      goto LABEL_21;
    }

    return 16;
  }

  v15 = a4[1];
  v16 = &__s[*a4];
  v17 = &__s[v15];
  if (&__s[v15] < v16)
  {
    return 16;
  }

LABEL_21:
  v118 = a4;
  v133 = 0u;
  v132 = 0u;
  v131 = 0u;
  v130 = 0u;
  v26 = *(v7 + 96);
  __dst = v17;
  if (v26)
  {
    v27 = v16;
    if (v16 < v17)
    {
      v126 = v12;
      v115 = v8;
      v28 = v13;
      v29 = v7;
      v30 = *v26;
      v31 = (__s - v16 + v15);
      v123 = &__s[v15];
      v32 = (&__s[v15] - v16);
      v27 = v16;
      while (1)
      {
        if (*v27 == v30)
        {
          v33 = *(v29 + 104);
          if (v32 >= v33)
          {
            v34 = memcmp(v27, v26, v33);
            __s = v10;
            if (!v34)
            {
              break;
            }
          }
        }

        ++v27;
        --v32;
        if (!--v31)
        {
          v27 = v123;
          break;
        }
      }

      v7 = v29;
      v13 = v28;
      v17 = __dst;
      v12 = v126;
      v8 = v115;
    }

    if (v27 == v17)
    {
      return 1;
    }
  }

  v43 = v12 + 1;
  v129 = v7;
  LODWORD(v130) = v8;
  *&v131 = __s;
  *(&v131 + 1) = v16;
  v114 = v13;
  v117 = 1 << (v12 + 1);
  *&v132 = v17;
  v120 = v7;
  *v134 = 0u;
  v135 = 0u;
  while (2)
  {
    if (*(&v131 + 1) == v16)
    {
      v44 = 128;
    }

    else
    {
      v44 = *(v16 - 1);
    }

    v45 = v129;
    v46 = sstep(v129, v43, v11, v117, 132, v117);
    v47 = 0;
    v48 = v46;
    if (v16 != v132)
    {
LABEL_48:
      v49 = *v16;
      if (v48 == v46)
      {
        v47 = v16;
      }

      v128 = v47;
      if (v44 == 128)
      {
        goto LABEL_61;
      }

LABEL_51:
      if (v44 == 10 && (*(v45 + 40) & 8) != 0)
      {
        goto LABEL_62;
      }

LABEL_53:
      v50 = 0;
      v51 = 0;
      v52 = 130;
      if (v49 == 128)
      {
        goto LABEL_63;
      }

LABEL_54:
      if (v49 == 10 && (*(v45 + 40) & 8) != 0)
      {
        goto LABEL_64;
      }

LABEL_56:
      v52 = v50;
      if (v51 >= 1)
      {
LABEL_65:
        v53 = v51 + 1;
        do
        {
          v48 = sstep(v45, v43, v11, v48, v52, v48);
          --v53;
        }

        while (v53 > 1);
      }

      goto LABEL_67;
    }

    while (1)
    {
      v49 = 128;
      if (v48 == v46)
      {
        v47 = v16;
      }

      v128 = v47;
      if (v44 != 128)
      {
        goto LABEL_51;
      }

LABEL_61:
      if (v130)
      {
        goto LABEL_53;
      }

LABEL_62:
      v51 = *(v45 + 76);
      v50 = 129;
      v52 = 131;
      if (v49 != 128)
      {
        goto LABEL_54;
      }

LABEL_63:
      if ((v130 & 2) != 0)
      {
        goto LABEL_56;
      }

LABEL_64:
      v51 += *(v45 + 80);
      if (v51 >= 1)
      {
        goto LABEL_65;
      }

LABEL_67:
      if (v52 == 129)
      {
        v54 = __dst;
        if (v49 == 128)
        {
          v52 = 129;
          if (v44 == 128)
          {
            goto LABEL_98;
          }
        }

        else
        {
LABEL_78:
          if (v49 > 0x7Fu)
          {
            v57 = __maskrune(v49, 0x500uLL);
            if (v49 == 95 || v57 != 0)
            {
              v52 = 133;
            }

            if (v44 == 128)
            {
              goto LABEL_98;
            }
          }

          else
          {
            if (v49 == 95 || (*(MEMORY[0x277D85DE0] + 4 * v49 + 60) & 0x500) != 0)
            {
              v52 = 133;
            }

            if (v44 == 128)
            {
              goto LABEL_98;
            }
          }
        }

        v55 = v44;
        goto LABEL_93;
      }

      v54 = __dst;
      if (v44 == 128)
      {
        goto LABEL_98;
      }

      v55 = v44;
      if (v44 > 0x7Fu)
      {
        if (__maskrune(v44, 0x500uLL))
        {
          goto LABEL_93;
        }
      }

      else if ((*(MEMORY[0x277D85DE0] + 4 * v44 + 60) & 0x500) != 0)
      {
        goto LABEL_93;
      }

      if (v44 != 95 && v49 != 128)
      {
        goto LABEL_78;
      }

LABEL_93:
      if (v55 > 0x7F)
      {
        if (!__maskrune(v55, 0x500uLL))
        {
LABEL_97:
          if (v44 != 95)
          {
            goto LABEL_98;
          }
        }
      }

      else if ((*(MEMORY[0x277D85DE0] + 4 * v55 + 60) & 0x500) == 0)
      {
        goto LABEL_97;
      }

      if (v52 == 130 || v49 != 128 && (v49 > 0x7Fu ? (v60 = __maskrune(v49, 0x500uLL)) : (v60 = *(MEMORY[0x277D85DE0] + 4 * v49 + 60) & 0x500), !v60 && v49 != 95))
      {
        v52 = 134;
LABEL_102:
        v48 = sstep(v129, v43, v11, v48, v52, v48);
        goto LABEL_103;
      }

LABEL_98:
      if ((v52 - 133) <= 1)
      {
        goto LABEL_102;
      }

LABEL_103:
      v47 = v128;
      v59 = v48 & (1 << v11);
      if (v16 == v54 || v59)
      {
        break;
      }

      v45 = v129;
      v48 = sstep(v129, v43, v11, v48, v49, v46);
      ++v16;
      v44 = v49;
      if (v16 != v132)
      {
        goto LABEL_48;
      }
    }

    *(&v132 + 1) = v128;
    if (!v59)
    {
      free(*(&v130 + 1));
      free(v133);
      return 1;
    }

    if (!v114 && !*(v120 + 120))
    {
      goto LABEL_147;
    }

    for (j = sslow(&v129, v128, v54, v43, v11); !j; j = sslow(&v129, *(&v132 + 1), v54, v43, v11))
    {
      ++*(&v132 + 1);
    }

    v62 = j;
    if (v114 == 1 && !*(v120 + 120))
    {
      goto LABEL_142;
    }

    v63 = *(&v130 + 1);
    if (!*(&v130 + 1))
    {
      v63 = malloc_type_malloc(16 * *(v129 + 112) + 16, 0x1000040451B5BE8uLL);
      *(&v130 + 1) = v63;
      if (!v63)
      {
        return 12;
      }
    }

    v64 = *(v129 + 112);
    if (v64)
    {
      if ((v64 + 1) > 2)
      {
        v65 = v64 + 1;
      }

      else
      {
        v65 = 2;
      }

      memset(v63 + 16, 255, 16 * v65 - 16);
    }

    if (*(v120 + 120) || (BYTE1(v130) & 4) != 0)
    {
      v67 = *(v120 + 128);
      v68 = v133;
      if (v67 >= 1 && !v133)
      {
        v68 = malloc_type_malloc(8 * v67 + 8, 0x10040436913F5uLL);
        *&v133 = v68;
        v67 = *(v120 + 128);
      }

      if (v67 >= 1 && !v68)
      {
        free(*(&v130 + 1));
        return 12;
      }

      v66 = sbackref(&v129, *(&v132 + 1), v62, v43, v11, 0, 0);
    }

    else
    {
      v66 = sdissect(&v129, *(&v132 + 1), v62, v43, v11);
    }

    if (!v66)
    {
      while (1)
      {
        v69 = *(&v132 + 1);
        if (v62 <= *(&v132 + 1))
        {
          break;
        }

        v62 = sslow(&v129, *(&v132 + 1), v62 - 1, v43, v11);
        v69 = *(&v132 + 1);
        if (!v62)
        {
          break;
        }

        if (sbackref(&v129, *(&v132 + 1), v62, v43, v11, 0, 0))
        {
          goto LABEL_141;
        }
      }

      v16 = v69 + 1;
      if (v69 != v54)
      {
        continue;
      }
    }

    break;
  }

LABEL_141:
  if (!v114)
  {
    goto LABEL_147;
  }

LABEL_142:
  v70 = &v62[-v131];
  *v118 = *(&v132 + 1) - v131;
  v118[1] = v70;
  if (v114 >= 2)
  {
    v71 = v129;
    v72 = (*(&v130 + 1) + 16);
    v73 = v118 + 2;
    for (k = 1; k != v114; ++k)
    {
      while (k > *(v71 + 112))
      {
        *v73 = -1;
        v73[1] = -1;
        v73 += 2;
        ++k;
        ++v72;
        if (v114 == k)
        {
          goto LABEL_147;
        }
      }

      v75 = *v72++;
      *v73 = v75;
      v73 += 2;
    }
  }

LABEL_147:
  if (*(&v130 + 1))
  {
    free(*(&v130 + 1));
  }

  result = v133;
  if (v133)
  {
    free(v133);
    return 0;
  }

  return result;
}

char *sslow(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  if (a4 >= a5)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v8 = *(*(*a1 + 8) + 8 * v6);
    v9 = v8 & 0xF8000000;
    if ((v8 & 0xF8000000) == 0x70000000 || v9 == 1744830464)
    {
      goto LABEL_4;
    }

    if (v9 != 0x10000000)
    {
      goto LABEL_15;
    }

    if (a2 == a3 || *a2 != v8)
    {
      return 0;
    }

    ++a2;
LABEL_4:
    if (a5 == ++v6)
    {
      v6 = a5;
LABEL_15:
      v26 = a1[12];
      if (a2 == a1[4])
      {
        v13 = 128;
      }

      else
      {
        v13 = *(a2 - 1);
      }

      v14 = *a1;
      v15 = sstep(*a1, v6, a5, 1 << v6, 132, 1 << v6);
      v11 = 0;
      v27 = 1 << a5;
      v16 = a1;
      if (a2 == a1[5])
      {
        goto LABEL_27;
      }

LABEL_19:
      v17 = *a2;
      if (v13 != 128)
      {
LABEL_20:
        if (v13 == 10 && (*(v14 + 40) & 8) != 0)
        {
          goto LABEL_29;
        }

LABEL_22:
        v18 = 0;
        v19 = 0;
        v20 = 130;
        if (v17 == 128)
        {
          goto LABEL_30;
        }

LABEL_23:
        if (v17 == 10 && (*(v14 + 40) & 8) != 0)
        {
          goto LABEL_31;
        }

LABEL_25:
        v20 = v18;
        if (v19 >= 1)
        {
LABEL_32:
          v21 = v19 + 1;
          do
          {
            v15 = sstep(v14, v6, a5, v15, v20, v15);
            --v21;
          }

          while (v21 > 1);
        }

        goto LABEL_34;
      }

      while (1)
      {
        if (v16[1])
        {
          goto LABEL_22;
        }

LABEL_29:
        v19 = *(v14 + 76);
        v18 = 129;
        v20 = 131;
        if (v17 != 128)
        {
          goto LABEL_23;
        }

LABEL_30:
        if ((v16[1] & 2) != 0)
        {
          goto LABEL_25;
        }

LABEL_31:
        v19 += *(v14 + 80);
        if (v19 >= 1)
        {
          goto LABEL_32;
        }

LABEL_34:
        if (v20 == 129)
        {
          v16 = a1;
          if (v17 == 128)
          {
            v20 = 129;
            if (v13 == 128)
            {
              goto LABEL_65;
            }
          }

          else
          {
LABEL_45:
            if (v17 > 0x7Fu)
            {
              v24 = __maskrune(v17, 0x500uLL);
              if (v17 == 95 || v24 != 0)
              {
                v20 = 133;
              }

              if (v13 == 128)
              {
                goto LABEL_65;
              }
            }

            else
            {
              if (v17 == 95 || (*(MEMORY[0x277D85DE0] + 4 * v17 + 60) & 0x500) != 0)
              {
                v20 = 133;
              }

              if (v13 == 128)
              {
                goto LABEL_65;
              }
            }
          }

          v22 = v13;
          goto LABEL_60;
        }

        v16 = a1;
        if (v13 == 128)
        {
          goto LABEL_65;
        }

        v22 = v13;
        if (v13 > 0x7Fu)
        {
          if (__maskrune(v13, 0x500uLL))
          {
            goto LABEL_60;
          }
        }

        else if ((*(MEMORY[0x277D85DE0] + 4 * v13 + 60) & 0x500) != 0)
        {
          goto LABEL_60;
        }

        if (v13 != 95 && v17 != 128)
        {
          goto LABEL_45;
        }

LABEL_60:
        if (v22 > 0x7F)
        {
          if (__maskrune(v22, 0x500uLL))
          {
            goto LABEL_70;
          }
        }

        else if ((*(MEMORY[0x277D85DE0] + 4 * v22 + 60) & 0x500) != 0)
        {
          goto LABEL_70;
        }

        if (v13 != 95)
        {
          goto LABEL_65;
        }

LABEL_70:
        if (v20 == 130)
        {
          goto LABEL_71;
        }

        if (v17 != 128)
        {
          if (v17 > 0x7Fu)
          {
            if (__maskrune(v17, 0x500uLL))
            {
              goto LABEL_65;
            }
          }

          else if ((*(MEMORY[0x277D85DE0] + 4 * v17 + 60) & 0x500) != 0)
          {
            goto LABEL_65;
          }

          if (v17 != 95)
          {
LABEL_71:
            v20 = 134;
            goto LABEL_72;
          }
        }

LABEL_65:
        if ((v20 - 133) > 1)
        {
          if ((v15 & v27) != 0)
          {
            v11 = a2;
          }

          if (a2 == a3)
          {
            return v11;
          }

          goto LABEL_75;
        }

LABEL_72:
        v15 = sstep(*v16, v6, a5, v15, v20, v15);
        if ((v15 & v27) != 0)
        {
          v11 = a2;
        }

        if (a2 == a3)
        {
          return v11;
        }

LABEL_75:
        if (v15 == v26)
        {
          return v11;
        }

        v14 = *v16;
        v15 = sstep(*v16, v6, a5, v15, v17, v26);
        ++a2;
        v13 = v17;
        if (a2 != v16[5])
        {
          goto LABEL_19;
        }

LABEL_27:
        v17 = 128;
        if (v13 != 128)
        {
          goto LABEL_20;
        }
      }
    }
  }
}

char *sdissect(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a4 < a5)
  {
    v7 = a4;
    v56 = a5 - 1;
    while (1)
    {
      v11 = v7;
      v12 = *(*a1 + 8);
      v13 = *(v12 + 8 * v7);
      v14 = v13 & 0xF8000000;
      if ((v13 & 0xF8000000) == 0x48000000 || v14 == 1476395008)
      {
        v16 = (v13 & 0x7FFFFFF) + v7;
      }

      else
      {
        v17 = v14 != 2013265920 || (v13 & 0xF8000000) == 2415919104;
        v16 = v7;
        if (!v17)
        {
          v18 = *(v12 + 8 * v7);
          v16 = v7;
          do
          {
            v16 += v18 & 0x7FFFFFF;
            v18 = *(v12 + 8 * v16);
          }

          while ((v18 & 0xF8000000) != 0x90000000);
        }
      }

      v7 = v16 + 1;
      v19 = ((v13 & 0xF8000000) - 0x8000000) >> 27;
      if (v19 > 9)
      {
        break;
      }

      if (v19 - 4 >= 2 && v19 != 1)
      {
        if (v19 == 8)
        {
          for (i = sslow(a1, v5, a3, v11, v16 + 1); sslow(a1, i, a3, v16 + 1, a5) != a3; i = sslow(a1, v5, v21, v11, v16 + 1))
          {
            v21 = i - 1;
            if (v7 >= a5)
            {
              continue;
            }

            v22 = (*(*a1 + 8) + 8 * v16 + 16);
            v23 = v56 - v16;
            v24 = -2 - v16;
            while (1)
            {
              v25 = *(v22 - 2);
              if ((v25 & 0xF8000000) != 0x70000000)
              {
                break;
              }

              ++v22;
              --v24;
              if (!--v23)
              {
                goto LABEL_28;
              }
            }

            if ((v25 & 0xF8000000) == 0x10000000 && v21 != v5)
            {
              v26 = -v24;
              v27 = v25;
              if (v26 < a5)
              {
                v28 = i;
                while (1)
                {
                  if (v27 == *(v28 - 1))
                  {
                    if ((*v22 & 0xF8000000) != 0x10000000 || v28 >= i)
                    {
                      v21 = v28 - 1;
                      goto LABEL_28;
                    }

                    if (*v28 == *v22)
                    {
                      goto LABEL_28;
                    }
                  }

                  --v21;
                  v29 = v28 - 2;
                  --v28;
                  if (v29 == v5)
                  {
                    goto LABEL_38;
                  }
                }
              }

              do
              {
                if (v25 == *v21)
                {
                  goto LABEL_28;
                }

                --v21;
              }

              while (v21 != v5);
LABEL_38:
              v21 = v5;
            }

LABEL_28:
            ;
          }

          v50 = v5;
          do
          {
            v51 = v50;
            v50 = v5;
            v52 = sslow(a1, v5, i, v11 + 1, v16);
            v5 = v52;
          }

          while (v52 && v52 != v50);
          if (v52)
          {
            v53 = v50;
          }

          else
          {
            v53 = v51;
          }

          if (v52)
          {
            v54 = v52;
          }

          else
          {
            v54 = v50;
          }

          sdissect(a1, v53, v54, v11 + 1, v16);
          goto LABEL_4;
        }

LABEL_89:
        i = v5;
        goto LABEL_4;
      }

      i = v5 + 1;
LABEL_4:
      v5 = i;
      if (v7 >= a5)
      {
        return i;
      }
    }

    if (((v13 & 0xF8000000) - 0x8000000) >> 27 > 0xC)
    {
      if (v19 != 13)
      {
        v31 = a3;
        if (v19 == 14)
        {
          do
          {
            i = sslow(a1, v5, v31, v11, v16 + 1);
            v32 = sslow(a1, i, a3, v16 + 1, a5);
            v31 = i - 1;
          }

          while (v32 != a3);
          v33 = v11 + (*(*(*a1 + 8) + 8 * v11) & 0x7FFFFFFLL) - 1;
          v34 = v11 + 1;
          while (sslow(a1, v5, i, v34, v33) != i)
          {
            v35 = *(*a1 + 8);
            v36 = *(v35 + 8 * (v33 + 1)) & 0x7FFFFFFLL;
            v37 = v36 + v33 + 1;
            v38 = v36 + v33;
            v34 = v33 + 2;
            if ((*(v35 + 8 * v37) & 0xF8000000) == 0x88000000)
            {
              v33 = v38;
            }

            else
            {
              v33 = v37;
            }
          }

          sdissect(a1, v5, i, v34, v33);
        }

        else
        {
          i = v5;
        }

        goto LABEL_4;
      }

      *(a1[2] + 16 * (v13 & 0x7FFFFFF) + 8) = &v5[-a1[3]];
    }

    else
    {
      if (v19 == 10)
      {
        for (i = sslow(a1, v5, a3, v11, v16 + 1); sslow(a1, i, a3, v16 + 1, a5) != a3; i = sslow(a1, v5, v40, v11, v16 + 1))
        {
          v40 = i - 1;
          if (v7 >= a5)
          {
            continue;
          }

          v41 = -2 - v16;
          v42 = (*(*a1 + 8) + 8 * v16 + 16);
          v43 = v56 - v16;
          while (1)
          {
            v44 = *(v42 - 2);
            if ((v44 & 0xF8000000) != 0x70000000)
            {
              break;
            }

            ++v42;
            --v41;
            if (!--v43)
            {
              goto LABEL_68;
            }
          }

          if ((v44 & 0xF8000000) == 0x10000000 && v40 != v5)
          {
            v45 = -v41;
            v46 = v44;
            if (v45 < a5)
            {
              v47 = i;
              while (1)
              {
                if (v46 == *(v47 - 1))
                {
                  if ((*v42 & 0xF8000000) != 0x10000000 || v47 >= i)
                  {
                    v40 = v47 - 1;
                    goto LABEL_68;
                  }

                  if (*v47 == *v42)
                  {
                    goto LABEL_68;
                  }
                }

                --v40;
                v48 = v47 - 2;
                --v47;
                if (v48 == v5)
                {
                  goto LABEL_78;
                }
              }
            }

            do
            {
              if (v44 == *v40)
              {
                goto LABEL_68;
              }

              --v40;
            }

            while (v40 != v5);
LABEL_78:
            v40 = v5;
          }

LABEL_68:
          ;
        }

        if (sslow(a1, v5, i, v11 + 1, v16))
        {
          sdissect(a1, v5, i, v11 + 1, v16);
        }

        goto LABEL_4;
      }

      if (v19 == 12)
      {
        *(a1[2] + 16 * (v13 & 0x7FFFFFF)) = &v5[-a1[3]];
      }
    }

    goto LABEL_89;
  }

  return a2;
}

uint64_t sbackref(uint64_t *a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 < a5)
  {
    v12 = a4;
LABEL_3:
    v14 = v12;
    do
    {
      v15 = *a1;
      v16 = *(*a1 + 8);
      v17 = *(v16 + 8 * v14);
      v18 = ((v17 & 0xF8000000) - 0x10000000) >> 27;
      if (v18 > 9)
      {
        if (((v17 & 0xF8000000) - 0x10000000) >> 27 <= 0xF)
        {
          if (v18 == 10)
          {
            goto LABEL_5;
          }

          if (v18 == 14)
          {
            ++v14;
            v31 = *(v16 + 8 * v14);
            do
            {
              v14 += v31 & 0x7FFFFFF;
              v31 = *(v16 + 8 * v14);
            }

            while ((v31 & 0xF8000000) != 0x90000000);
            goto LABEL_5;
          }
        }

        else
        {
          switch(v18)
          {
            case 0x10uLL:
              goto LABEL_5;
            case 0x11uLL:
              v34 = a1[4];
              if (a2 != v34 || (a1[1]) && (a2 >= a1[5] || *(a2 - 1) != 10 || (*(v15 + 40) & 8) == 0))
              {
                if (a2 <= v34)
                {
                  return 0;
                }

                v35 = *(a2 - 1);
                if (v35 < 0)
                {
                  v36 = __maskrune(*(a2 - 1), 0x500uLL);
                }

                else
                {
                  v36 = *(MEMORY[0x277D85DE0] + 4 * v35 + 60) & 0x500;
                }

                result = 0;
                if (v35 == 95 || v36)
                {
                  return result;
                }
              }

              if (a2 >= a1[5])
              {
                return 0;
              }

              v38 = *a2;
              if ((v38 & 0x8000000000000000) == 0)
              {
                goto LABEL_76;
              }

LABEL_82:
              v39 = __maskrune(v38, 0x500uLL);
              if (v38 == 95)
              {
                goto LABEL_5;
              }

LABEL_83:
              if (!v39)
              {
                return 0;
              }

              goto LABEL_5;
            case 0x12uLL:
              v21 = a1[5];
              if (a2 == v21 && (a1[1] & 2) == 0)
              {
                goto LABEL_80;
              }

              if (a2 >= v21)
              {
                return 0;
              }

              v22 = *a2;
              if (v22 == 10)
              {
                if ((*(v15 + 40) & 8) != 0)
                {
LABEL_80:
                  if (a2 <= a1[4])
                  {
                    return 0;
                  }

                  v38 = *(a2 - 1);
                  if (v38 < 0)
                  {
                    goto LABEL_82;
                  }

LABEL_76:
                  v39 = *(MEMORY[0x277D85DE0] + 4 * v38 + 60) & 0x500;
                  if (v38 == 95)
                  {
                    goto LABEL_5;
                  }

                  goto LABEL_83;
                }

LABEL_69:
                v37 = *(MEMORY[0x277D85DE0] + 4 * v22 + 60) & 0x500;
                result = 0;
                if (v22 == 95)
                {
                  return result;
                }
              }

              else
              {
                if ((v22 & 0x80) == 0)
                {
                  goto LABEL_69;
                }

                v37 = __maskrune(*a2, 0x500uLL);
                result = 0;
                if (v22 == 95)
                {
                  return result;
                }
              }

              if (v37)
              {
                return result;
              }

              goto LABEL_80;
          }
        }
      }

      else if (((v17 & 0xF8000000) - 0x10000000) >> 27 <= 1)
      {
        if (!v18)
        {
          if (a2 == a3)
          {
            return 0;
          }

          v33 = *a2++;
          if (v33 != v17)
          {
            return 0;
          }

          goto LABEL_5;
        }

        if (v18 == 1)
        {
          if (a2 != a1[4] || (a1[1] & 1) != 0)
          {
            if (a2 >= a1[5] || *(a2 - 1) != 10)
            {
              return 0;
            }

LABEL_4:
            if ((*(v15 + 40) & 8) == 0)
            {
              return 0;
            }
          }

LABEL_5:
          ++v14;
          continue;
        }
      }

      else
      {
        switch(v18)
        {
          case 2uLL:
            v32 = a1[5];
            if (a2 != v32 || (a1[1] & 2) != 0)
            {
              if (a2 >= v32 || *a2 != 10)
              {
                return 0;
              }

              goto LABEL_4;
            }

            goto LABEL_5;
          case 3uLL:
            if (a2 == a3)
            {
              return 0;
            }

            ++a2;
            goto LABEL_5;
          case 4uLL:
            if (a2 == a3)
            {
              return 0;
            }

            v19 = *(v15 + 24) + 32 * (v17 & 0x7FFFFFF);
            v20 = *a2++;
            if ((*(v19 + 8) & *(*v19 + v20)) == 0)
            {
              return 0;
            }

            goto LABEL_5;
        }
      }

      v12 = v14 + 1;
      v23 = ((v17 & 0xF8000000) - 939524096) >> 27;
      if (v23 == 4)
      {
        result = sbackref(a1, a2, a3, v14 + 1, a5, a6, a7);
        if (result)
        {
          return result;
        }

        v14 = (v17 & 0x7FFFFFF) + v12;
      }

      else
      {
        if (((v17 & 0xF8000000) - 939524096) >> 27 > 5)
        {
          if (v23 == 6)
          {
            v47 = 16 * (v17 & 0x7FFFFFF);
            v48 = a1[2];
            v49 = *(v48 + v47);
            *(v48 + v47) = &a2[-a1[3]];
            result = sbackref(a1, a2, a3, v12, a5, a6, a7);
            if (!result)
            {
              *(a1[2] + 16 * (v17 & 0x7FFFFFF)) = v49;
            }
          }

          else if (v23 == 7)
          {
            v50 = a1[2] + 16 * (v17 & 0x7FFFFFF);
            v51 = *(v50 + 8);
            *(v50 + 8) = &a2[-a1[3]];
            result = sbackref(a1, a2, a3, v14 + 1, a5, a6, a7);
            if (!result)
            {
              *(a1[2] + 16 * (v17 & 0x7FFFFFF) + 8) = v51;
            }
          }

          else
          {
            result = 0;
            if (v23 == 8)
            {
              result = sbackref(a1, a2, a3, v14 + 1, a5, a6, a7);
              if (!result)
              {
                v41 = v14 + (v17 & 0x7FFFFFF) - 1;
                while (1)
                {
                  v42 = *(*a1 + 8);
                  if ((*(v42 + 8 * v41) & 0xF8000000) == 0x90000000)
                  {
                    break;
                  }

                  v43 = *(v42 + 8 * (v41 + 1)) & 0x7FFFFFFLL;
                  v44 = v43 + v41 + 1;
                  v45 = v43 + v41;
                  if ((*(v42 + 8 * v44) & 0xF8000000) == 0x88000000)
                  {
                    v46 = v45;
                  }

                  else
                  {
                    v46 = v44;
                  }

                  result = sbackref(a1, a2, a3, v41 + 2, a5, a6, a7);
                  v41 = v46;
                  if (result)
                  {
                    return result;
                  }
                }

                return 0;
              }
            }
          }

          return result;
        }

        if (v23)
        {
          if (v23 == 2)
          {
            ++a6;
            *(a1[7] + 8 * a6) = a2;
            if (v12 < a5)
            {
              goto LABEL_3;
            }
          }

          else
          {
            result = 0;
            if (v23 != 3)
            {
              return result;
            }

            v40 = a1[7];
            if (a2 == *(v40 + 8 * a6))
            {
              --a6;
              if (v12 < a5)
              {
                goto LABEL_3;
              }
            }

            else
            {
              *(v40 + 8 * a6) = a2;
              result = sbackref(a1, a2, a3, v12 - (v17 & 0x7FFFFFF), a5, a6, a7);
              if (result)
              {
                return result;
              }

              --a6;
              if (v12 < a5)
              {
                goto LABEL_3;
              }
            }
          }

          break;
        }

        v25 = v17 & 0x7FFFFFF;
        v26 = (a1[2] + 16 * v25);
        v27 = v26[1];
        if (v27 == -1)
        {
          return 0;
        }

        v28 = *v26;
        v29 = v27 - v28;
        if (v27 == v28)
        {
          if (a7 > 100)
          {
            return 0;
          }

          a7 = (a7 + 1);
        }

        if (a2 > &a3[-v29] || memcmp(a2, (a1[3] + v28), v29))
        {
          return 0;
        }

        do
        {
          v30 = *(v16 + 8 * v14++);
        }

        while (v30 != (v25 | 0x40000000));
        a2 += v29;
      }
    }

    while (v14 < a5);
  }

  if (a2 == a3)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

unint64_t sstep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6)
{
  if (a2 != a3)
  {
    v6 = 1 << a2;
    do
    {
      v8 = (*(a1 + 8) + 8 * a2);
      v9 = *v8;
      switch(((*v8 & 0xF8000000uLL) - 0x8000000) >> 27)
      {
        case 1uLL:
          v7 = a5 == v9;
          goto LABEL_4;
        case 2uLL:
          v7 = (a5 & 0xFFFFFFFD) == 129;
          goto LABEL_4;
        case 3uLL:
          v7 = (a5 & 0xFFFFFFFE) == 130;
          goto LABEL_4;
        case 4uLL:
          if (a5 <= 127)
          {
            a6 |= 2 * (v6 & a4);
          }

          break;
        case 5uLL:
          if (a5 > 127)
          {
            break;
          }

          v11 = *(a1 + 24) + 32 * (*v8 & 0x7FFFFFF);
          if ((*(v11 + 8) & *(*v11 + a5)) == 0)
          {
            break;
          }

          v10 = v6 & a4;
LABEL_10:
          a6 |= 2 * v10;
          break;
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0x11uLL:
          v10 = v6 & a6;
          goto LABEL_10;
        case 9uLL:
          v12 = a6 | (2 * (v6 & a6));
          a6 = ((v12 & v6) >> v9) | v12;
          if (((v6 >> v9) & v12) == 0 && (a6 & (v6 >> v9)) != 0)
          {
            a2 += ~(*v8 & 0x7FFFFFF);
            v6 = 1 << a2;
          }

          break;
        case 0xAuLL:
        case 0xEuLL:
          a6 |= (((a6 | (2 * (v6 & a6))) & v6) << v9) | (2 * (v6 & a6));
          break;
        case 0xFuLL:
          if ((v6 & a6) != 0)
          {
            v14 = v8[1];
            if ((v14 & 0xF8000000) == 0x90000000)
            {
              LOBYTE(v15) = 1;
            }

            else
            {
              v15 = 1;
              do
              {
                v15 += v14 & 0x7FFFFFF;
                v14 = v8[v15];
              }

              while ((v14 & 0xF8000000) != 0x90000000);
            }

            a6 |= (v6 & a6) << v15;
          }

          break;
        case 0x10uLL:
          a6 |= 2 * (v6 & a6);
          if ((v8[*v8 & 0x7FFFFFF] & 0xF8000000) != 0x90000000)
          {
            a6 |= (a6 & v6) << v9;
          }

          break;
        case 0x12uLL:
          v7 = a5 == 133;
          goto LABEL_4;
        case 0x13uLL:
          v7 = a5 == 134;
LABEL_4:
          if (v7)
          {
            a6 |= 2 * (v6 & a4);
          }

          break;
        default:
          break;
      }

      ++a2;
      v6 *= 2;
    }

    while (a2 != a3);
  }

  return a6;
}

char *lslow(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  if (a4 >= a5)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v9 = *(*(*a1 + 8) + 8 * v6);
    v10 = v9 & 0xF8000000;
    if ((v9 & 0xF8000000) == 0x70000000 || v10 == 1744830464)
    {
      goto LABEL_4;
    }

    if (v10 != 0x10000000)
    {
      goto LABEL_15;
    }

    if (a2 == a3 || *a2 != v9)
    {
      return 0;
    }

    ++a2;
LABEL_4:
    if (a5 == ++v6)
    {
      v6 = a5;
LABEL_15:
      v14 = a1[10];
      __dst = a1[12];
      __s2 = a1[13];
      if (a2 == a1[4])
      {
        v15 = 128;
      }

      else
      {
        v15 = *(a2 - 1);
      }

      bzero(v14, *(*a1 + 48));
      *(v14 + v6) = 1;
      lstep(*a1, v6, a5, v14, 132, v14);
      v12 = 0;
      if (a2 == a1[5])
      {
        goto LABEL_25;
      }

LABEL_19:
      v16 = *a2;
      if (v15 != 128)
      {
LABEL_20:
        if (v15 == 10 && (*(*a1 + 40) & 8) != 0)
        {
          v17 = *(*a1 + 76);
          v18 = 129;
          v19 = 131;
          if (v16 != 128)
          {
            goto LABEL_30;
          }
        }

        else
        {
LABEL_29:
          v18 = 0;
          v17 = 0;
          v19 = 130;
          if (v16 != 128)
          {
            goto LABEL_30;
          }
        }

LABEL_23:
        if ((a1[1] & 2) != 0)
        {
          goto LABEL_32;
        }

        v20 = *a1;
LABEL_34:
        v17 += *(v20 + 80);
        if (v17 < 1)
        {
          goto LABEL_37;
        }

LABEL_35:
        v21 = v17 + 1;
        do
        {
          lstep(*a1, v6, a5, v14, v19, v14);
          --v21;
        }

        while (v21 > 1);
        goto LABEL_37;
      }

      while (1)
      {
        if (a1[1])
        {
          goto LABEL_29;
        }

        v17 = *(*a1 + 76);
        v18 = 129;
        v19 = 131;
        if (v16 == 128)
        {
          goto LABEL_23;
        }

LABEL_30:
        if (v16 == 10)
        {
          v20 = *a1;
          if ((*(*a1 + 40) & 8) != 0)
          {
            goto LABEL_34;
          }
        }

LABEL_32:
        v19 = v18;
        if (v17 >= 1)
        {
          goto LABEL_35;
        }

LABEL_37:
        if (v19 == 129)
        {
          if (v16 == 128)
          {
            v19 = 129;
            if (v15 == 128)
            {
              goto LABEL_68;
            }
          }

          else
          {
LABEL_48:
            if (v16 > 0x7Fu)
            {
              v24 = __maskrune(v16, 0x500uLL);
              if (v16 == 95 || v24 != 0)
              {
                v19 = 133;
              }

              if (v15 == 128)
              {
LABEL_68:
                v26 = __s2;
LABEL_69:
                if ((v19 - 133) > 1)
                {
                  goto LABEL_74;
                }

                goto LABEL_73;
              }
            }

            else
            {
              if (v16 == 95 || (*(MEMORY[0x277D85DE0] + 4 * v16 + 60) & 0x500) != 0)
              {
                v19 = 133;
              }

              if (v15 == 128)
              {
                goto LABEL_68;
              }
            }
          }

          v22 = v15;
          goto LABEL_63;
        }

        if (v15 == 128)
        {
          goto LABEL_68;
        }

        v22 = v15;
        if (v15 > 0x7Fu)
        {
          if (__maskrune(v15, 0x500uLL))
          {
            goto LABEL_63;
          }
        }

        else if ((*(MEMORY[0x277D85DE0] + 4 * v15 + 60) & 0x500) != 0)
        {
          goto LABEL_63;
        }

        if (v15 != 95 && v16 != 128)
        {
          goto LABEL_48;
        }

LABEL_63:
        if (v22 > 0x7F)
        {
          if (__maskrune(v22, 0x500uLL))
          {
            goto LABEL_71;
          }
        }

        else if ((*(MEMORY[0x277D85DE0] + 4 * v22 + 60) & 0x500) != 0)
        {
          goto LABEL_71;
        }

        if (v15 != 95)
        {
          goto LABEL_68;
        }

LABEL_71:
        if (v19 == 130)
        {
          v19 = 134;
          v26 = __s2;
        }

        else
        {
          v26 = __s2;
          if (v16 == 128)
          {
            goto LABEL_69;
          }

          if (v16 > 0x7Fu)
          {
            if (__maskrune(v16, 0x500uLL))
            {
              goto LABEL_69;
            }
          }

          else if ((*(MEMORY[0x277D85DE0] + 4 * v16 + 60) & 0x500) != 0)
          {
            goto LABEL_69;
          }

          if (v16 == 95)
          {
            goto LABEL_69;
          }

          v19 = 134;
        }

LABEL_73:
        lstep(*a1, v6, a5, v14, v19, v14);
LABEL_74:
        if (*(v14 + a5))
        {
          v12 = a2;
        }

        v27 = *(*a1 + 48);
        v28 = memcmp(v14, v26, v27);
        if (a2 == a3 || !v28)
        {
          return v12;
        }

        memmove(__dst, v14, v27);
        memmove(v14, v26, *(*a1 + 48));
        lstep(*a1, v6, a5, __dst, v16, v14);
        ++a2;
        v15 = v16;
        if (a2 != a1[5])
        {
          goto LABEL_19;
        }

LABEL_25:
        v16 = 128;
        if (v15 != 128)
        {
          goto LABEL_20;
        }
      }
    }
  }
}

char *ldissect(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a4 < a5)
  {
    v7 = a4;
    v56 = a5 - 1;
    while (1)
    {
      v11 = v7;
      v12 = *(*a1 + 8);
      v13 = *(v12 + 8 * v7);
      v14 = v13 & 0xF8000000;
      if ((v13 & 0xF8000000) == 0x48000000 || v14 == 1476395008)
      {
        v16 = (v13 & 0x7FFFFFF) + v7;
      }

      else
      {
        v17 = v14 != 2013265920 || (v13 & 0xF8000000) == 2415919104;
        v16 = v7;
        if (!v17)
        {
          v18 = *(v12 + 8 * v7);
          v16 = v7;
          do
          {
            v16 += v18 & 0x7FFFFFF;
            v18 = *(v12 + 8 * v16);
          }

          while ((v18 & 0xF8000000) != 0x90000000);
        }
      }

      v7 = v16 + 1;
      v19 = ((v13 & 0xF8000000) - 0x8000000) >> 27;
      if (v19 > 9)
      {
        break;
      }

      if (v19 - 4 >= 2 && v19 != 1)
      {
        if (v19 == 8)
        {
          for (i = lslow(a1, v5, a3, v11, v16 + 1); lslow(a1, i, a3, v16 + 1, a5) != a3; i = lslow(a1, v5, v21, v11, v16 + 1))
          {
            v21 = i - 1;
            if (v7 >= a5)
            {
              continue;
            }

            v22 = (*(*a1 + 8) + 8 * v16 + 16);
            v23 = v56 - v16;
            v24 = -2 - v16;
            while (1)
            {
              v25 = *(v22 - 2);
              if ((v25 & 0xF8000000) != 0x70000000)
              {
                break;
              }

              ++v22;
              --v24;
              if (!--v23)
              {
                goto LABEL_28;
              }
            }

            if ((v25 & 0xF8000000) == 0x10000000 && v21 != v5)
            {
              v26 = -v24;
              v27 = v25;
              if (v26 < a5)
              {
                v28 = i;
                while (1)
                {
                  if (v27 == *(v28 - 1))
                  {
                    if ((*v22 & 0xF8000000) != 0x10000000 || v28 >= i)
                    {
                      v21 = v28 - 1;
                      goto LABEL_28;
                    }

                    if (*v28 == *v22)
                    {
                      goto LABEL_28;
                    }
                  }

                  --v21;
                  v29 = v28 - 2;
                  --v28;
                  if (v29 == v5)
                  {
                    goto LABEL_38;
                  }
                }
              }

              do
              {
                if (v25 == *v21)
                {
                  goto LABEL_28;
                }

                --v21;
              }

              while (v21 != v5);
LABEL_38:
              v21 = v5;
            }

LABEL_28:
            ;
          }

          v50 = v5;
          do
          {
            v51 = v50;
            v50 = v5;
            v52 = lslow(a1, v5, i, v11 + 1, v16);
            v5 = v52;
          }

          while (v52 && v52 != v50);
          if (v52)
          {
            v53 = v50;
          }

          else
          {
            v53 = v51;
          }

          if (v52)
          {
            v54 = v52;
          }

          else
          {
            v54 = v50;
          }

          ldissect(a1, v53, v54, v11 + 1, v16);
          goto LABEL_4;
        }

LABEL_89:
        i = v5;
        goto LABEL_4;
      }

      i = v5 + 1;
LABEL_4:
      v5 = i;
      if (v7 >= a5)
      {
        return i;
      }
    }

    if (((v13 & 0xF8000000) - 0x8000000) >> 27 > 0xC)
    {
      if (v19 != 13)
      {
        v31 = a3;
        if (v19 == 14)
        {
          do
          {
            i = lslow(a1, v5, v31, v11, v16 + 1);
            v32 = lslow(a1, i, a3, v16 + 1, a5);
            v31 = i - 1;
          }

          while (v32 != a3);
          v33 = v11 + (*(*(*a1 + 8) + 8 * v11) & 0x7FFFFFFLL) - 1;
          v34 = v11 + 1;
          while (lslow(a1, v5, i, v34, v33) != i)
          {
            v35 = *(*a1 + 8);
            v36 = *(v35 + 8 * (v33 + 1)) & 0x7FFFFFFLL;
            v37 = v36 + v33 + 1;
            v38 = v36 + v33;
            v34 = v33 + 2;
            if ((*(v35 + 8 * v37) & 0xF8000000) == 0x88000000)
            {
              v33 = v38;
            }

            else
            {
              v33 = v37;
            }
          }

          ldissect(a1, v5, i, v34, v33);
        }

        else
        {
          i = v5;
        }

        goto LABEL_4;
      }

      *(a1[2] + 16 * (v13 & 0x7FFFFFF) + 8) = &v5[-a1[3]];
    }

    else
    {
      if (v19 == 10)
      {
        for (i = lslow(a1, v5, a3, v11, v16 + 1); lslow(a1, i, a3, v16 + 1, a5) != a3; i = lslow(a1, v5, v40, v11, v16 + 1))
        {
          v40 = i - 1;
          if (v7 >= a5)
          {
            continue;
          }

          v41 = -2 - v16;
          v42 = (*(*a1 + 8) + 8 * v16 + 16);
          v43 = v56 - v16;
          while (1)
          {
            v44 = *(v42 - 2);
            if ((v44 & 0xF8000000) != 0x70000000)
            {
              break;
            }

            ++v42;
            --v41;
            if (!--v43)
            {
              goto LABEL_68;
            }
          }

          if ((v44 & 0xF8000000) == 0x10000000 && v40 != v5)
          {
            v45 = -v41;
            v46 = v44;
            if (v45 < a5)
            {
              v47 = i;
              while (1)
              {
                if (v46 == *(v47 - 1))
                {
                  if ((*v42 & 0xF8000000) != 0x10000000 || v47 >= i)
                  {
                    v40 = v47 - 1;
                    goto LABEL_68;
                  }

                  if (*v47 == *v42)
                  {
                    goto LABEL_68;
                  }
                }

                --v40;
                v48 = v47 - 2;
                --v47;
                if (v48 == v5)
                {
                  goto LABEL_78;
                }
              }
            }

            do
            {
              if (v44 == *v40)
              {
                goto LABEL_68;
              }

              --v40;
            }

            while (v40 != v5);
LABEL_78:
            v40 = v5;
          }

LABEL_68:
          ;
        }

        if (lslow(a1, v5, i, v11 + 1, v16))
        {
          ldissect(a1, v5, i, v11 + 1, v16);
        }

        goto LABEL_4;
      }

      if (v19 == 12)
      {
        *(a1[2] + 16 * (v13 & 0x7FFFFFF)) = &v5[-a1[3]];
      }
    }

    goto LABEL_89;
  }

  return a2;
}

uint64_t lstep(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = (*(a1 + 8) + 8 * v6);
      v8 = *v7;
      switch(((*v7 & 0xF8000000uLL) - 0x8000000) >> 27)
      {
        case 1uLL:
          if (a5 == v8)
          {
            goto LABEL_3;
          }

          break;
        case 2uLL:
          if ((a5 & 0xFFFFFFFD) == 0x81)
          {
            goto LABEL_3;
          }

          break;
        case 3uLL:
          if ((a5 & 0xFFFFFFFE) == 0x82)
          {
            goto LABEL_3;
          }

          break;
        case 4uLL:
          if (a5 <= 127)
          {
            goto LABEL_3;
          }

          break;
        case 5uLL:
          if (a5 <= 127)
          {
            v12 = *(a1 + 24) + 32 * (*v7 & 0x7FFFFFF);
            if ((*(v12 + 8) & *(*v12 + a5)) != 0)
            {
              goto LABEL_3;
            }
          }

          break;
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0x11uLL:
          *(a6 + a2 + 1) |= *(a6 + a2);
          break;
        case 9uLL:
          v13 = *(a6 + a2);
          *(a6 + a2 + 1) |= v13;
          v14 = v8 & 0x7FFFFFF;
          v15 = *(a6 + a2 - v14);
          v16 = v15 | v13;
          *(a6 + a2 - v14) = v16;
          if (v15)
          {
            v17 = 1;
          }

          else
          {
            v17 = v16 == 0;
          }

          if (!v17)
          {
            v6 += ~v14;
            a2 = v6;
          }

          break;
        case 0xAuLL:
        case 0xEuLL:
          v9 = a6 + a2;
          v10 = *(a6 + a2);
          *(a6 + a2 + 1) |= v10;
          v11 = v8 & 0x7FFFFFF;
          goto LABEL_8;
        case 0xFuLL:
          if (*(a6 + a2))
          {
            v18 = v7[1];
            if ((v18 & 0xF8000000) == 0x90000000)
            {
              v19 = 1;
            }

            else
            {
              v19 = 1;
              do
              {
                v19 += v18 & 0x7FFFFFF;
                v18 = v7[v19];
              }

              while ((v18 & 0xF8000000) != 0x90000000);
            }

            *(a6 + a2 + v19) |= *(a6 + a2);
          }

          break;
        case 0x10uLL:
          v9 = a6 + a2;
          v10 = *(a6 + a2);
          *(a6 + a2 + 1) |= v10;
          v11 = v8 & 0x7FFFFFF;
          if ((*(*(a1 + 8) + 8 * v6 + 8 * v11) & 0xF8000000) != 0x90000000)
          {
LABEL_8:
            *(v9 + v11) |= v10;
          }

          break;
        case 0x12uLL:
          if (a5 != 133)
          {
            break;
          }

          goto LABEL_3;
        case 0x13uLL:
          if (a5 != 134)
          {
            break;
          }

LABEL_3:
          *(a6 + 1 + a2) |= *(a4 + a2);
          break;
        default:
          break;
      }

      ++v6;
      ++a2;
    }

    while (v6 != a3);
  }

  return a6;
}

void llvm_regfree(uint64_t a1)
{
  if (*a1 == 62053)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      if (*v1 == 53829)
      {
        *a1 = 0;
        *v1 = 0;
        v2 = v1[1];
        if (v2)
        {
          free(v2);
        }

        v3 = v1[3];
        if (v3)
        {
          free(v3);
        }

        v4 = v1[4];
        if (v4)
        {
          free(v4);
        }

        v5 = v1[12];
        if (v5)
        {
          free(v5);
        }

        free(v1);
      }
    }
  }
}

unsigned __int8 *llvm_strlcpy(_BYTE *a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a3)
  {
    v4 = a3 - 1;
    v3 = a2;
    while (v4)
    {
      v5 = *v3++;
      *a1++ = v5;
      --v4;
      if (!v5)
      {
        return &v3[~a2];
      }
    }

    *a1 = 0;
  }

    ;
  }

  return &v3[~a2];
}

unint64_t llvm::xxHash64(uint64_t *a1, unint64_t a2)
{
  v2 = a1 + a2;
  if (a2 >= 0x20)
  {
    v3 = 0;
    v4 = 0x61C8864E7A143579;
    v5 = 0x60EA27EEADC0B5D6;
    v6 = 0xC2B2AE3D27D4EB4FLL;
    v7 = a1;
    do
    {
      v8 = __ROR8__(v5 - 0x3D4D51C2D82B14B1 * *v7, 33);
      v5 = 0x9E3779B185EBCA87 * v8;
      v9 = __ROR8__(v6 - 0x3D4D51C2D82B14B1 * v7[1], 33);
      v6 = 0x9E3779B185EBCA87 * v9;
      v10 = __ROR8__(v3 - 0x3D4D51C2D82B14B1 * v7[2], 33);
      v3 = 0x9E3779B185EBCA87 * v10;
      v11 = __ROR8__(v4 - 0x3D4D51C2D82B14B1 * v7[3], 33);
      v4 = 0x9E3779B185EBCA87 * v11;
      v7 += 4;
    }

    while (v7 <= v2 - 32);
    v12 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((((0x3C6EF3630BD7950ELL * v8) | (v5 >> 63)) + 0x1BBCD8C2F5E54380 * v9 + (v6 >> 57) + 0x779B185EBCA87000 * v10 + (v3 >> 52) - 0x1939E850D5E40000 * v11 + (v4 >> 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v8, 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v9, 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v10, 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v11, 33))) + a2;
    if ((v7 + 1) <= v2)
    {
      goto LABEL_5;
    }

LABEL_9:
    v15 = v7;
    goto LABEL_10;
  }

  v7 = a1;
  v12 = a2 + 0x27D4EB2F165667C5;
  if ((a1 + 1) > v2)
  {
    goto LABEL_9;
  }

LABEL_5:
  v13 = v7;
  do
  {
    v14 = *v7++;
    v12 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v14, 33)) ^ v12, 37);
    v15 = v13 + 1;
    v16 = (v13 + 2);
    ++v13;
  }

  while (v16 <= v2);
LABEL_10:
  if (v15 + 4 <= v2)
  {
    v17 = *v7;
    v7 = (v7 + 4);
    v12 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v17) ^ v12, 41);
  }

  if (v7 < v2)
  {
    v18 = a1 + a2 - v7;
    do
    {
      v19 = *v7;
      v7 = (v7 + 1);
      v12 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v19) ^ v12, 53);
      --v18;
    }

    while (v18);
  }

  v20 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v12 ^ (v12 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v12 ^ (v12 >> 33))) >> 29));
  return v20 ^ HIDWORD(v20);
}

uint64_t llvm::xxh3_64bits(unsigned int *a1, unint64_t a2, const unsigned __int8 *a3)
{
  if (a2 > 0x10)
  {
    if (a2 <= 0x80)
    {
      v4 = ((((*(a1 + 1) ^ 0x1CAD21F72C81017CuLL) * (*a1 ^ 0xBE4BA423396CFEB8)) >> 64) ^ ((*(a1 + 1) ^ 0x1CAD21F72C81017CLL) * (*a1 ^ 0xBE4BA423396CFEB8))) - 0x61C8864E7A143579 * a2;
      v5 = a1 + a2;
      v6 = (((*(a1 + a2 - 8) ^ 0x1F67B3B7A4A44072uLL) * (*(a1 + a2 - 16) ^ 0xDB979083E96DD4DELL)) >> 64) ^ ((*(a1 + a2 - 8) ^ 0x1F67B3B7A4A44072) * (*(a1 + a2 - 16) ^ 0xDB979083E96DD4DELL));
      if (a2 >= 0x21)
      {
        v4 += (((*(a1 + 3) ^ 0x2172FFCC7DD05A82uLL) * (*(a1 + 2) ^ 0x78E5C0CC4EE679CBuLL)) >> 64) ^ ((*(a1 + 3) ^ 0x2172FFCC7DD05A82) * (*(a1 + 2) ^ 0x78E5C0CC4EE679CBLL));
        v6 += (((*(v5 - 3) ^ 0x4C263A81E69035E0uLL) * (*(v5 - 4) ^ 0x8E2443F7744608B8)) >> 64) ^ ((*(v5 - 3) ^ 0x4C263A81E69035E0) * (*(v5 - 4) ^ 0x8E2443F7744608B8));
        if (a2 >= 0x41)
        {
          v4 += (((*(a1 + 5) ^ 0xA32E531B8B65D088) * (*(a1 + 4) ^ 0xCB00C391BB52283CLL)) >> 64) ^ ((*(a1 + 5) ^ 0xA32E531B8B65D088) * (*(a1 + 4) ^ 0xCB00C391BB52283CLL));
          v6 += (((*(v5 - 5) ^ 0xD8ACDEA946EF1938) * (*(v5 - 6) ^ 0x4EF90DA297486471uLL)) >> 64) ^ ((*(v5 - 5) ^ 0xD8ACDEA946EF1938) * (*(v5 - 6) ^ 0x4EF90DA297486471));
          if (a2 >= 0x61)
          {
            v4 += (((*(a1 + 7) ^ 0x1D4F0BC7C7BBDCF9uLL) * (*(a1 + 6) ^ 0x3F349CE33F76FAA8uLL)) >> 64) ^ ((*(a1 + 7) ^ 0x1D4F0BC7C7BBDCF9) * (*(a1 + 6) ^ 0x3F349CE33F76FAA8));
            v6 += (((*(v5 - 7) ^ 0x647378D9C97E9FC8uLL) * (*(v5 - 8) ^ 0x3159B4CD4BE0518AuLL)) >> 64) ^ ((*(v5 - 7) ^ 0x647378D9C97E9FC8) * (*(v5 - 8) ^ 0x3159B4CD4BE0518ALL));
          }
        }
      }

      v3 = v6 + v4;
      return (0x165667919E3779F9 * (v3 ^ (v3 >> 37))) ^ ((0x165667919E3779F9 * (v3 ^ (v3 >> 37))) >> 32);
    }

    if (a2 > 0xF0)
    {
      return XXH3_hashLong_64b(a1, a2, a3);
    }

    else
    {
      return XXH3_len_129to240_64b(a1, a2, a3);
    }
  }

  else
  {
    if (a2 >= 9)
    {
      v3 = bswap64(*a1 ^ 0x6782737BEA4239B9) + a2 + (*(a1 + a2 - 8) ^ 0xAF56BC3B0996523ALL) + ((((*(a1 + a2 - 8) ^ 0xAF56BC3B0996523ALL) * (*a1 ^ 0x6782737BEA4239B9uLL)) >> 64) ^ ((*(a1 + a2 - 8) ^ 0xAF56BC3B0996523ALL) * (*a1 ^ 0x6782737BEA4239B9)));
      return (0x165667919E3779F9 * (v3 ^ (v3 >> 37))) ^ ((0x165667919E3779F9 * (v3 ^ (v3 >> 37))) >> 32);
    }

    if (a2 < 4)
    {
      if (a2)
      {
        return XXH3_len_1to3_64b(a1, a2, a3);
      }

      else
      {
        return 0x2D06800538D394C2;
      }
    }

    else
    {
      v8 = (*(a1 + a2 - 4) | (*a1 << 32)) ^ 0xC73AB174C5ECD5A2;
      v9 = 0x9FB21C651E98DF25 * (__ROR8__(v8, 15) ^ __ROR8__(v8, 40) ^ v8);
      return (0x9FB21C651E98DF25 * ((a2 + (v9 >> 35)) ^ v9)) ^ ((0x9FB21C651E98DF25 * ((a2 + (v9 >> 35)) ^ v9)) >> 28);
    }
  }
}

unint64_t XXH3_len_129to240_64b(const unsigned __int8 *a1, unint64_t a2, const unsigned __int8 *a3)
{
  v3 = *(a1 + 12) ^ 0x3F349CE33F76FAA8;
  v4 = *(a1 + 13) ^ 0x1D4F0BC7C7BBDCF9;
  v5 = ((((*(a1 + 1) ^ 0x1CAD21F72C81017CuLL) * (*a1 ^ 0xBE4BA423396CFEB8)) >> 64) ^ ((*(a1 + 1) ^ 0x1CAD21F72C81017CLL) * (*a1 ^ 0xBE4BA423396CFEB8))) - 0x61C8864E7A143579 * a2 + ((((*(a1 + 3) ^ 0x1F67B3B7A4A44072uLL) * (*(a1 + 2) ^ 0xDB979083E96DD4DELL)) >> 64) ^ ((*(a1 + 3) ^ 0x1F67B3B7A4A44072) * (*(a1 + 2) ^ 0xDB979083E96DD4DELL))) + ((((*(a1 + 5) ^ 0x2172FFCC7DD05A82uLL) * (*(a1 + 4) ^ 0x78E5C0CC4EE679CBuLL)) >> 64) ^ ((*(a1 + 5) ^ 0x2172FFCC7DD05A82) * (*(a1 + 4) ^ 0x78E5C0CC4EE679CBLL))) + ((((*(a1 + 7) ^ 0x4C263A81E69035E0uLL) * (*(a1 + 6) ^ 0x8E2443F7744608B8)) >> 64) ^ ((*(a1 + 7) ^ 0x4C263A81E69035E0) * (*(a1 + 6) ^ 0x8E2443F7744608B8))) + ((((*(a1 + 9) ^ 0xA32E531B8B65D088) * (*(a1 + 8) ^ 0xCB00C391BB52283CLL)) >> 64) ^ ((*(a1 + 9) ^ 0xA32E531B8B65D088) * (*(a1 + 8) ^ 0xCB00C391BB52283CLL))) + ((((*(a1 + 11) ^ 0xD8ACDEA946EF1938) * (*(a1 + 10) ^ 0x4EF90DA297486471uLL)) >> 64) ^ ((*(a1 + 11) ^ 0xD8ACDEA946EF1938) * (*(a1 + 10) ^ 0x4EF90DA297486471))) + (((v4 * v3) >> 64) ^ (v4 * v3));
  v6 = (((*(a1 + 15) ^ 0x647378D9C97E9FC8uLL) * (*(a1 + 14) ^ 0x3159B4CD4BE0518AuLL)) >> 64) ^ ((*(a1 + 15) ^ 0x647378D9C97E9FC8) * (*(a1 + 14) ^ 0x3159B4CD4BE0518ALL));
  v7 = 0x165667919E3779F9 * ((v5 + v6) ^ ((v5 + v6) >> 37));
  v8 = v7 ^ HIDWORD(v7);
  if (a2 >= 0x90)
  {
    if ((a2 >> 4) <= 9)
    {
      v9 = 9;
    }

    else
    {
      v9 = (a2 >> 4);
    }

    v10 = a1 + 128;
    v11 = v9 - 8;
    v12 = &unk_2573A4520;
    do
    {
      v13 = *v10;
      v10 += 16;
      v14 = veorq_s8(v13, *(v12 - 125));
      v8 += ((v14.u64[1] * v14.u64[0]) >> 64) ^ (v14.i64[1] * v14.i64[0]);
      v12 += 16;
      --v11;
    }

    while (v11);
  }

  v15 = (((*&a1[a2 - 8] ^ 0xEBD33483ACC5EA64) * (*&a1[a2 - 16] ^ 0x7378D9C97E9FC831uLL)) >> 64) ^ ((*&a1[a2 - 8] ^ 0xEBD33483ACC5EA64) * (*&a1[a2 - 16] ^ 0x7378D9C97E9FC831));
  v16 = 0x165667919E3779F9 * ((v8 + v15) ^ ((v8 + v15) >> 37));
  return v16 ^ HIDWORD(v16);
}

unint64_t XXH3_hashLong_64b(const unsigned __int8 *a1, uint64_t a2, const unsigned __int8 *a3)
{
  v3 = a2 - 1;
  if ((a2 - 1) >= 0x400)
  {
    v8 = 0;
    v4 = xmmword_2573A4390;
    v5 = xmmword_2573A43A0;
    v6 = xmmword_2573A43B0;
    v7 = xmmword_2573A43C0;
    v9 = a1 + 32;
    v10 = vdup_n_s32(0x9E3779B1);
    do
    {
      v11 = v9;
      v12 = &xmmword_2573A44C0;
      v13 = 16;
      do
      {
        v14 = v11[-2];
        v15 = v11[-1];
        v16 = vextq_s8(v14, v14, 8uLL);
        v17 = vextq_s8(v15, v15, 8uLL);
        v18 = veorq_s8(v12[-2], v14);
        v19 = veorq_s8(v12[-1], v15);
        v20 = vuzp1q_s32(v18, v19);
        v21 = vuzp2q_s32(v18, v19);
        v4 = vaddq_s64(vmlal_u32(v16, *v20.i8, *v21.i8), v4);
        v5 = vaddq_s64(vmlal_high_u32(v17, v20, v21), v5);
        v22 = *v11;
        v23 = v11[1];
        v11 += 4;
        v24 = vextq_s8(v22, v22, 8uLL);
        v25 = vextq_s8(v23, v23, 8uLL);
        v26 = veorq_s8(*v12, v22);
        v27 = veorq_s8(v12[1], v23);
        v28 = vuzp1q_s32(v26, v27);
        v29 = vuzp2q_s32(v26, v27);
        v6 = vaddq_s64(vmlal_u32(v24, *v28.i8, *v29.i8), v6);
        v7 = vaddq_s64(vmlal_high_u32(v25, v28, v29), v7);
        v12 = (v12 + 8);
        --v13;
      }

      while (v13);
      v30 = veorq_s8(vshrq_n_u64(v4, 0x2FuLL), veorq_s8(v4, xmmword_2573A43D0));
      v4 = vmlal_u32(vmulq_s32(v30, xmmword_2573A43E0), vmovn_s64(v30), v10);
      v31 = veorq_s8(vshrq_n_u64(v5, 0x2FuLL), veorq_s8(v5, xmmword_2573A43F0));
      v5 = vmlal_u32(vmulq_s32(v31, xmmword_2573A43E0), vmovn_s64(v31), v10);
      v32 = veorq_s8(vshrq_n_u64(v6, 0x2FuLL), veorq_s8(v6, xmmword_2573A4400));
      v6 = vmlal_u32(vmulq_s32(v32, xmmword_2573A43E0), vmovn_s64(v32), v10);
      v33 = veorq_s8(vshrq_n_u64(v7, 0x2FuLL), veorq_s8(v7, xmmword_2573A4410));
      v7 = vmlal_u32(vmulq_s32(v33, xmmword_2573A43E0), vmovn_s64(v33), v10);
      ++v8;
      v9 += 1024;
    }

    while (v8 != v3 >> 10);
  }

  else
  {
    v4 = xmmword_2573A4390;
    v5 = xmmword_2573A43A0;
    v6 = xmmword_2573A43B0;
    v7 = xmmword_2573A43C0;
  }

  v34 = (v3 >> 6) & 0xF;
  if (v34)
  {
    v35 = &a1[(v3 & 0xFFFFFFFFFFFFFC00) + 32];
    v36 = &xmmword_2573A44C0;
    do
    {
      v37 = *(v35 - 2);
      v38 = *(v35 - 1);
      v39 = vextq_s8(v37, v37, 8uLL);
      v40 = vextq_s8(v38, v38, 8uLL);
      v41 = veorq_s8(v36[-2], v37);
      v42 = veorq_s8(v36[-1], v38);
      v43 = vuzp1q_s32(v41, v42);
      v44 = vuzp2q_s32(v41, v42);
      v4 = vaddq_s64(vmlal_u32(v39, *v43.i8, *v44.i8), v4);
      v5 = vaddq_s64(vmlal_high_u32(v40, v43, v44), v5);
      v45 = *v35;
      v46 = *(v35 + 1);
      v35 += 64;
      v47 = vextq_s8(v45, v45, 8uLL);
      v48 = vextq_s8(v46, v46, 8uLL);
      v49 = veorq_s8(*v36, v45);
      v50 = veorq_s8(v36[1], v46);
      v51 = vuzp1q_s32(v49, v50);
      v52 = vuzp2q_s32(v49, v50);
      v6 = vaddq_s64(vmlal_u32(v47, *v51.i8, *v52.i8), v6);
      v7 = vaddq_s64(vmlal_high_u32(v48, v51, v52), v7);
      v36 = (v36 + 8);
      --v34;
    }

    while (v34);
  }

  v53 = *&a1[a2 - 64];
  v54 = *&a1[a2 - 48];
  v55 = vextq_s8(v53, v53, 8uLL);
  v56 = vextq_s8(v54, v54, 8uLL);
  v57 = veorq_s8(v53, xmmword_2573A4420);
  v58 = veorq_s8(v54, xmmword_2573A4430);
  v59 = vuzp1q_s32(v57, v58);
  v60 = vuzp2q_s32(v57, v58);
  v61 = vaddq_s64(vmlal_u32(v55, *v59.i8, *v60.i8), v4);
  v62 = vaddq_s64(vmlal_high_u32(v56, v59, v60), v5);
  v63 = *&a1[a2 - 32];
  v64 = *&a1[a2 - 16];
  v65 = vextq_s8(v63, v63, 8uLL);
  v66 = vextq_s8(v64, v64, 8uLL);
  v67 = veorq_s8(v63, xmmword_2573A4440);
  v68 = veorq_s8(v64, xmmword_2573A4450);
  v69 = vuzp1q_s32(v67, v68);
  v70 = vuzp2q_s32(v67, v68);
  v71 = veorq_s8(v61, xmmword_2573A4460);
  v72 = (((v71.u64[1] * v71.u64[0]) >> 64) ^ (v71.i64[1] * v71.i64[0])) - 0x61C8864E7A143579 * a2;
  v73 = veorq_s8(v62, xmmword_2573A4470);
  v74 = veorq_s8(vaddq_s64(vmlal_u32(v65, *v69.i8, *v70.i8), v6), xmmword_2573A4480);
  v75 = ((v74.u64[1] * v74.u64[0]) >> 64) ^ (v74.i64[1] * v74.i64[0]);
  v76 = veorq_s8(vaddq_s64(vmlal_high_u32(v66, v69, v70), v7), xmmword_2573A4490);
  v77 = (((v73.u64[1] * v73.u64[0]) >> 64) ^ (v73.i64[1] * v73.i64[0])) + v75;
  v78 = ((v76.u64[1] * v76.u64[0]) >> 64) ^ (v76.i64[1] * v76.i64[0]);
  v79 = (v72 + v77 + v78) ^ ((v72 + v77 + v78) >> 37);
  return (0x165667919E3779F9 * v79) ^ ((0x165667919E3779F9 * v79) >> 32);
}

uint64_t llvm::xxh3_128bits(const unsigned __int8 *a1, unint64_t a2, const unsigned __int8 *a3)
{
  if (a2 > 0x10)
  {
    if (a2 > 0x80)
    {
      if (a2 > 0xF0)
      {
        v21 = a2 - 1;
        if (a2 >= 0x401)
        {
          v27 = 0;
          v22 = xmmword_2573A4390;
          v23 = xmmword_2573A43A0;
          v24 = xmmword_2573A43B0;
          v25 = xmmword_2573A43C0;
          v28 = (a1 + 32);
          v29 = vdup_n_s32(0x9E3779B1);
          do
          {
            v30 = v28;
            v31 = &xmmword_2573A44C0;
            v32 = 16;
            do
            {
              v33 = v30[-2];
              v34 = v30[-1];
              v35 = vextq_s8(v33, v33, 8uLL);
              v36 = vextq_s8(v34, v34, 8uLL);
              v37 = veorq_s8(v31[-2], v33);
              v38 = veorq_s8(v31[-1], v34);
              v39 = vuzp1q_s32(v37, v38);
              v40 = vuzp2q_s32(v37, v38);
              v22 = vaddq_s64(vmlal_u32(v35, *v39.i8, *v40.i8), v22);
              v23 = vaddq_s64(vmlal_high_u32(v36, v39, v40), v23);
              v41 = *v30;
              v42 = v30[1];
              v30 += 4;
              v43 = vextq_s8(v41, v41, 8uLL);
              v44 = vextq_s8(v42, v42, 8uLL);
              v45 = veorq_s8(*v31, v41);
              v46 = veorq_s8(v31[1], v42);
              v47 = vuzp1q_s32(v45, v46);
              v48 = vuzp2q_s32(v45, v46);
              v24 = vaddq_s64(vmlal_u32(v43, *v47.i8, *v48.i8), v24);
              v25 = vaddq_s64(vmlal_high_u32(v44, v47, v48), v25);
              v31 = (v31 + 8);
              --v32;
            }

            while (v32);
            v49 = veorq_s8(vshrq_n_u64(v22, 0x2FuLL), veorq_s8(v22, xmmword_2573A43D0));
            v22 = vmlal_u32(vmulq_s32(v49, xmmword_2573A43E0), vmovn_s64(v49), v29);
            v50 = veorq_s8(vshrq_n_u64(v23, 0x2FuLL), veorq_s8(v23, xmmword_2573A43F0));
            v23 = vmlal_u32(vmulq_s32(v50, xmmword_2573A43E0), vmovn_s64(v50), v29);
            v51 = veorq_s8(vshrq_n_u64(v24, 0x2FuLL), veorq_s8(v24, xmmword_2573A4400));
            v24 = vmlal_u32(vmulq_s32(v51, xmmword_2573A43E0), vmovn_s64(v51), v29);
            v52 = veorq_s8(vshrq_n_u64(v25, 0x2FuLL), veorq_s8(v25, xmmword_2573A4410));
            v25 = vmlal_u32(vmulq_s32(v52, xmmword_2573A43E0), vmovn_s64(v52), v29);
            ++v27;
            v28 += 1024;
          }

          while (v27 != v21 >> 10);
        }

        else
        {
          v22 = xmmword_2573A4390;
          v23 = xmmword_2573A43A0;
          v24 = xmmword_2573A43B0;
          v25 = xmmword_2573A43C0;
        }

        v53 = (v21 >> 6) & 0xF;
        if (v53)
        {
          v54 = &a1[(v21 & 0xFFFFFFFFFFFFFC00) + 32];
          v55 = &xmmword_2573A44C0;
          do
          {
            v56 = v54[-2];
            v57 = v54[-1];
            v58 = vextq_s8(v56, v56, 8uLL);
            v59 = vextq_s8(v57, v57, 8uLL);
            v60 = veorq_s8(v55[-2], v56);
            v61 = veorq_s8(v55[-1], v57);
            v62 = vuzp1q_s32(v60, v61);
            v63 = vuzp2q_s32(v60, v61);
            v22 = vaddq_s64(vmlal_u32(v58, *v62.i8, *v63.i8), v22);
            v23 = vaddq_s64(vmlal_high_u32(v59, v62, v63), v23);
            v64 = *v54;
            v65 = v54[1];
            v54 += 4;
            v66 = vextq_s8(v64, v64, 8uLL);
            v67 = vextq_s8(v65, v65, 8uLL);
            v68 = veorq_s8(*v55, v64);
            v69 = veorq_s8(v55[1], v65);
            v70 = vuzp1q_s32(v68, v69);
            v71 = vuzp2q_s32(v68, v69);
            v24 = vaddq_s64(vmlal_u32(v66, *v70.i8, *v71.i8), v24);
            v25 = vaddq_s64(vmlal_high_u32(v67, v70, v71), v25);
            v55 = (v55 + 8);
            --v53;
          }

          while (v53);
        }

        v72 = *&a1[a2 - 64];
        v73 = *&a1[a2 - 48];
        v74 = vextq_s8(v72, v72, 8uLL);
        v75 = vextq_s8(v73, v73, 8uLL);
        v76 = veorq_s8(v72, xmmword_2573A4420);
        v77 = veorq_s8(v73, xmmword_2573A4430);
        v78 = vuzp1q_s32(v76, v77);
        v79 = vuzp2q_s32(v76, v77);
        v80 = vaddq_s64(vmlal_u32(v74, *v78.i8, *v79.i8), v22);
        v81 = vaddq_s64(vmlal_high_u32(v75, v78, v79), v23);
        v82 = *&a1[a2 - 32];
        v83 = *&a1[a2 - 16];
        v84 = vextq_s8(v82, v82, 8uLL);
        v85 = vextq_s8(v83, v83, 8uLL);
        v86 = veorq_s8(v82, xmmword_2573A4440);
        v87 = veorq_s8(v83, xmmword_2573A4450);
        v88 = vuzp1q_s32(v86, v87);
        v89 = vuzp2q_s32(v86, v87);
        v90 = vaddq_s64(vmlal_u32(v84, *v88.i8, *v89.i8), v24);
        v91 = vaddq_s64(vmlal_high_u32(v85, v88, v89), v25);
        v92 = ((((v80.i64[1] ^ 0xA44072DB979083E9) * (v80.i64[0] ^ 0x6DD4DE1CAD21F72CuLL)) >> 64) ^ ((v80.i64[1] ^ 0xA44072DB979083E9) * (v80.i64[0] ^ 0x6DD4DE1CAD21F72CLL))) - 0x61C8864E7A143579 * a2 + ((((v81.i64[1] ^ 0xD05A8278E5C0CC4ELL) * (v81.i64[0] ^ 0xE679CB1F67B3B7A4)) >> 64) ^ ((v81.i64[1] ^ 0xD05A8278E5C0CC4ELL) * (v81.i64[0] ^ 0xE679CB1F67B3B7A4))) + ((((v90.i64[1] ^ 0x9035E08E2443F774) * (v90.i64[0] ^ 0x4608B82172FFCC7DuLL)) >> 64) ^ ((v90.i64[1] ^ 0x9035E08E2443F774) * (v90.i64[0] ^ 0x4608B82172FFCC7DLL))) + ((((v91.i64[1] ^ 0x65D088CB00C391BBuLL) * (v91.i64[0] ^ 0x52283C4C263A81E6uLL)) >> 64) ^ ((v91.i64[1] ^ 0x65D088CB00C391BBLL) * (v91.i64[0] ^ 0x52283C4C263A81E6)));
        return (0x165667919E3779F9 * (v92 ^ (v92 >> 37))) ^ ((0x165667919E3779F9 * (v92 ^ (v92 >> 37))) >> 32);
      }

      else
      {
        return XXH3_len_129to240_128b(a1, a2, a3);
      }
    }

    else
    {
      v7 = 0x9E3779B185EBCA87 * a2;
      if (a2 < 0x21)
      {
        v18 = 0;
      }

      else
      {
        if (a2 < 0x41)
        {
          v26 = 0;
        }

        else
        {
          if (a2 < 0x61)
          {
            v12 = 0;
          }

          else
          {
            v8 = *(a1 + 6);
            v9 = *(a1 + 7);
            v11 = *&a1[a2 - 64];
            v10 = *&a1[a2 - 56];
            v7 = (v7 + ((((v9 ^ 0x1D4F0BC7C7BBDCF9uLL) * (v8 ^ 0x3F349CE33F76FAA8uLL)) >> 64) ^ ((v9 ^ 0x1D4F0BC7C7BBDCF9) * (v8 ^ 0x3F349CE33F76FAA8)))) ^ (v10 + v11);
            v12 = (v9 + v8) ^ (((v10 ^ 0x647378D9C97E9FC8uLL) * (v11 ^ 0x3159B4CD4BE0518AuLL)) >> 64) ^ ((v10 ^ 0x647378D9C97E9FC8) * (v11 ^ 0x3159B4CD4BE0518ALL));
          }

          v93 = *(a1 + 4);
          v94 = *(a1 + 5);
          v96 = *&a1[a2 - 48];
          v95 = *&a1[a2 - 40];
          v7 = (v7 + ((((v94 ^ 0xA32E531B8B65D088) * (v93 ^ 0xCB00C391BB52283CLL)) >> 64) ^ ((v94 ^ 0xA32E531B8B65D088) * (v93 ^ 0xCB00C391BB52283CLL)))) ^ (v95 + v96);
          v26 = (v12 + ((((v95 ^ 0xD8ACDEA946EF1938) * (v96 ^ 0x4EF90DA297486471uLL)) >> 64) ^ ((v95 ^ 0xD8ACDEA946EF1938) * (v96 ^ 0x4EF90DA297486471)))) ^ (v94 + v93);
        }

        v97 = *(a1 + 2);
        v98 = *(a1 + 3);
        v100 = *&a1[a2 - 32];
        v99 = *&a1[a2 - 24];
        v7 = (v7 + ((((v98 ^ 0x2172FFCC7DD05A82uLL) * (v97 ^ 0x78E5C0CC4EE679CBuLL)) >> 64) ^ ((v98 ^ 0x2172FFCC7DD05A82) * (v97 ^ 0x78E5C0CC4EE679CBLL)))) ^ (v99 + v100);
        v18 = (v26 + ((((v99 ^ 0x4C263A81E69035E0uLL) * (v100 ^ 0x8E2443F7744608B8)) >> 64) ^ ((v99 ^ 0x4C263A81E69035E0) * (v100 ^ 0x8E2443F7744608B8)))) ^ (v98 + v97);
      }

      v101 = *(a1 + 1);
      v103 = *&a1[a2 - 16];
      v102 = *&a1[a2 - 8];
      v104 = (v7 + ((((v101 ^ 0x1CAD21F72C81017CuLL) * (*a1 ^ 0xBE4BA423396CFEB8)) >> 64) ^ ((v101 ^ 0x1CAD21F72C81017CLL) * (*a1 ^ 0xBE4BA423396CFEB8)))) ^ (v102 + v103);
      v105 = (v18 + ((((v102 ^ 0x1F67B3B7A4A44072uLL) * (v103 ^ 0xDB979083E96DD4DELL)) >> 64) ^ ((v102 ^ 0x1F67B3B7A4A44072) * (v103 ^ 0xDB979083E96DD4DELL)))) ^ (v101 + *a1);
      return (0x165667919E3779F9 * ((v105 + v104) ^ ((v105 + v104) >> 37))) ^ ((0x165667919E3779F9 * ((v105 + v104) ^ ((v105 + v104) >> 37))) >> 32);
    }
  }

  else if (a2 < 9)
  {
    if (a2 < 4)
    {
      if (a2)
      {
        v19 = (*a1 << 16) | (a1[a2 >> 1] << 24) | a1[a2 - 1] | (a2 << 8);
        v20 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v19 ^ 0x87275A9B)) ^ ((0xC2B2AE3D27D4EB4FLL * (v19 ^ 0x87275A9B)) >> 29));
        return v20 ^ HIDWORD(v20);
      }

      else
      {
        return 0x6001C324468D497FLL;
      }
    }

    else
    {
      v13 = (*a1 | (*&a1[a2 - 4] << 32)) ^ 0xC4F023344DC994ACLL;
      v14 = 4 * a2 - 0x61C8864E7A143579;
      v15 = v13 * v14;
      v16 = ((v13 * v14) >> 64) + 2 * v13 * v14;
      v17 = v15 ^ (v16 >> 3) ^ ((v15 ^ (v16 >> 3)) >> 35);
      return (0x9FB21C651E98DF25 * v17) ^ ((0x9FB21C651E98DF25 * v17) >> 28);
    }
  }

  else
  {
    v3 = *&a1[a2 - 8];
    v4 = bswap64((v3 ^ 0xC202797692D63D58) + 2246822518 * (v3 ^ 0x92D63D58) + (((*a1 ^ 0x59973F0033362349 ^ v3) * 0x9E3779B185EBCA87) >> 64)) ^ (0x9E3779B185EBCA87 * (*a1 ^ 0x59973F0033362349 ^ v3) + (a2 << 54) - 0x40000000000000);
    v5 = 0x165667919E3779F9 * ((0xC2B2AE3D27D4EB4FLL * v4) ^ ((0xC2B2AE3D27D4EB4FLL * v4) >> 37));
    return v5 ^ HIDWORD(v5);
  }
}

unint64_t XXH3_len_129to240_128b(const unsigned __int8 *a1, unint64_t a2, const unsigned __int8 *a3)
{
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = (((((v3 ^ 0x1CAD21F72C81017CuLL) * (*a1 ^ 0xBE4BA423396CFEB8)) >> 64) ^ ((v3 ^ 0x1CAD21F72C81017CLL) * (*a1 ^ 0xBE4BA423396CFEB8))) - 0x61C8864E7A143579 * a2) ^ (v5 + v4);
  v7 = (v3 + *a1) ^ (((v5 ^ 0x1F67B3B7A4A44072uLL) * (v4 ^ 0xDB979083E96DD4DELL)) >> 64) ^ ((v5 ^ 0x1F67B3B7A4A44072) * (v4 ^ 0xDB979083E96DD4DELL));
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  v10 = *(a1 + 6);
  v11 = *(a1 + 7);
  v12 = (v6 + ((((v9 ^ 0x2172FFCC7DD05A82uLL) * (v8 ^ 0x78E5C0CC4EE679CBuLL)) >> 64) ^ ((v9 ^ 0x2172FFCC7DD05A82) * (v8 ^ 0x78E5C0CC4EE679CBLL)))) ^ (v11 + v10);
  v13 = (v7 + ((((v11 ^ 0x4C263A81E69035E0uLL) * (v10 ^ 0x8E2443F7744608B8)) >> 64) ^ ((v11 ^ 0x4C263A81E69035E0) * (v10 ^ 0x8E2443F7744608B8)))) ^ (v9 + v8);
  v14 = *(a1 + 8);
  v15 = *(a1 + 9);
  v16 = *(a1 + 10);
  v17 = *(a1 + 11);
  v18 = (v12 + ((((v15 ^ 0xA32E531B8B65D088) * (v14 ^ 0xCB00C391BB52283CLL)) >> 64) ^ ((v15 ^ 0xA32E531B8B65D088) * (v14 ^ 0xCB00C391BB52283CLL)))) ^ (v17 + v16);
  v19 = (v13 + ((((v17 ^ 0xD8ACDEA946EF1938) * (v16 ^ 0x4EF90DA297486471uLL)) >> 64) ^ ((v17 ^ 0xD8ACDEA946EF1938) * (v16 ^ 0x4EF90DA297486471)))) ^ (v15 + v14);
  v20 = *(a1 + 12);
  v21 = *(a1 + 13);
  v22 = *(a1 + 14);
  v23 = *(a1 + 15);
  v24 = (v18 + ((((v21 ^ 0x1D4F0BC7C7BBDCF9uLL) * (v20 ^ 0x3F349CE33F76FAA8uLL)) >> 64) ^ ((v21 ^ 0x1D4F0BC7C7BBDCF9) * (v20 ^ 0x3F349CE33F76FAA8)))) ^ (v23 + v22);
  v25 = (v19 + ((((v23 ^ 0x647378D9C97E9FC8uLL) * (v22 ^ 0x3159B4CD4BE0518AuLL)) >> 64) ^ ((v23 ^ 0x647378D9C97E9FC8) * (v22 ^ 0x3159B4CD4BE0518ALL)))) ^ (v21 + v20);
  v26 = (0x165667919E3779F9 * (v24 ^ (v24 >> 37))) ^ ((0x165667919E3779F9 * (v24 ^ (v24 >> 37))) >> 32);
  v27 = (0x165667919E3779F9 * (v25 ^ (v25 >> 37))) ^ ((0x165667919E3779F9 * (v25 ^ (v25 >> 37))) >> 32);
  if (a2 >= 0xA0)
  {
    v28 = 0xC0u;
    v29 = 0xA0u;
    do
    {
      v30 = &a1[v29];
      v31 = &kSecret + v29;
      v32 = *(v30 - 4);
      v33 = *(v30 - 3);
      v35 = *(v30 - 2);
      v34 = *(v30 - 1);
      v26 = (v26 + ((((v33 ^ *(v31 - 149)) * (v32 ^ *(v31 - 157))) >> 64) ^ ((v33 ^ *(v31 - 149)) * (v32 ^ *(v31 - 157))))) ^ (v34 + v35);
      v27 = (v27 + ((((*(v31 - 133) ^ v34) * (*(v31 - 141) ^ v35)) >> 64) ^ ((*(v31 - 133) ^ v34) * (*(v31 - 141) ^ v35)))) ^ (v33 + v32);
      v29 = v28;
      v28 += 32;
    }

    while (v29 <= a2);
  }

  v36 = *&a1[a2 - 16];
  v37 = *&a1[a2 - 8];
  v39 = *&a1[a2 - 32];
  v38 = *&a1[a2 - 24];
  v40 = (v26 + ((((v37 ^ 0x59B4CD4BE0518A1DuLL) * (v36 ^ 0x4F0BC7C7BBDCF93FuLL)) >> 64) ^ ((v37 ^ 0x59B4CD4BE0518A1DLL) * (v36 ^ 0x4F0BC7C7BBDCF93FLL)))) ^ (v38 + v39);
  v41 = (v27 + ((((v38 ^ 0xEBD33483ACC5EA64) * (v39 ^ 0x7378D9C97E9FC831uLL)) >> 64) ^ ((v38 ^ 0xEBD33483ACC5EA64) * (v39 ^ 0x7378D9C97E9FC831)))) ^ (v37 + v36);
  v42 = 0x165667919E3779F9 * ((v41 + v40) ^ ((v41 + v40) >> 37));
  return v42 ^ HIDWORD(v42);
}

uint64_t llvm::SMTSort::dump(llvm::SMTSort *this)
{
  v2 = llvm::errs(this);
  v3 = *(*this + 64);

  return v3(this, v2);
}

uint64_t llvm::SMTExpr::dump(llvm::SMTExpr *this)
{
  v2 = llvm::errs(this);
  v3 = *(*this + 24);

  return v3(this, v2);
}

uint64_t llvm::SMTSolver::dump(llvm::SMTSolver *this)
{
  v2 = llvm::errs(this);
  v3 = *(*this + 672);

  return v3(this, v2);
}

uint64_t llvm::SMTSolverStatistics::dump(llvm::SMTSolverStatistics *this)
{
  v2 = llvm::errs(this);
  v3 = *(*this + 32);

  return v3(this, v2);
}

void llvm::sys::DynamicLibrary::HandleSet::~HandleSet(llvm::sys::DynamicLibrary::HandleSet *this)
{
  v3 = *this;
  v2 = *(this + 1);
  if (v2 != *this)
  {
    do
    {
      v4 = *(v2 - 8);
      v2 -= 8;
      dlclose(v4);
    }

    while (v2 != v3);
  }

  v5 = *(this + 3);
  if (v5)
  {
    dlclose(v5);
  }

  llvm::sys::DynamicLibrary::SearchOrder = 0;
  v6 = *this;
  if (*this)
  {
    *(this + 1) = v6;
    operator delete(v6);
  }
}

{
  v3 = *this;
  v2 = *(this + 1);
  if (v2 != *this)
  {
    do
    {
      v4 = *(v2 - 8);
      v2 -= 8;
      dlclose(v4);
    }

    while (v2 != v3);
  }

  v5 = *(this + 3);
  if (v5)
  {
    dlclose(v5);
  }

  llvm::sys::DynamicLibrary::SearchOrder = 0;
  v6 = *this;
  if (*this)
  {
    *(this + 1) = v6;
    operator delete(v6);
  }
}

void *llvm::sys::DynamicLibrary::HandleSet::DLOpen(const char *a1, uint64_t a2)
{
  result = dlopen(a1, 9);
  if (!result)
  {
    if (a2)
    {
      v4 = dlerror();
      MEMORY[0x259C62C80](a2, v4);
    }

    return &llvm::sys::DynamicLibrary::Invalid;
  }

  return result;
}

void llvm::sys::DynamicLibrary::AddSymbol(unsigned int *a1, unint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&_MergedGlobals_19, memory_order_acquire) & 1) == 0)
  {
    llvm::sys::DynamicLibrary::AddSymbol();
  }

  std::recursive_mutex::lock(&stru_27F8757D0);
  v7 = llvm::StringMapImpl::hash(a1, a2, v6);
  *(*llvm::StringMap<long long,llvm::MallocAllocator>::try_emplace_with_hash<>(&qword_27F875778, a1, a2, v7) + 8) = a3;

  std::recursive_mutex::unlock(&stru_27F8757D0);
}

void *llvm::sys::DynamicLibrary::getPermanentLibrary(char *__path, uint64_t a2)
{
  if (atomic_load_explicit(&_MergedGlobals_19, memory_order_acquire))
  {
    v4 = dlopen(__path, 9);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_16:
    if (a2)
    {
      v8 = dlerror();
      MEMORY[0x259C62C80](a2, v8);
    }

    return &llvm::sys::DynamicLibrary::Invalid;
  }

  llvm::sys::DynamicLibrary::AddSymbol();
  v4 = dlopen(__path, 9);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_3:
  v5 = v4;
  if (v4 == &llvm::sys::DynamicLibrary::Invalid)
  {
    return &llvm::sys::DynamicLibrary::Invalid;
  }

  std::recursive_mutex::lock(&stru_27F8757D0);
  v9 = v5;
  if (__path)
  {
    v6 = qword_27F875790;
    if (qword_27F875790 != unk_27F875798)
    {
      while (*v6 != v5)
      {
        if (++v6 == unk_27F875798)
        {
          goto LABEL_12;
        }
      }
    }

    if (v6 == unk_27F875798)
    {
LABEL_12:
      std::vector<void *>::push_back[abi:nn200100](&qword_27F875790, &v9);
    }

    else
    {
      dlclose(v5);
    }
  }

  else
  {
    llvm::sys::DynamicLibrary::getPermanentLibrary(v5);
  }

  std::recursive_mutex::unlock(&stru_27F8757D0);
  return v5;
}

uint64_t llvm::sys::DynamicLibrary::addPermanentLibrary(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&_MergedGlobals_19, memory_order_acquire) & 1) == 0)
  {
    llvm::sys::DynamicLibrary::AddSymbol();
  }

  std::recursive_mutex::lock(&stru_27F8757D0);
  v6 = a1;
  v4 = qword_27F875790;
  if (qword_27F875790 != unk_27F875798)
  {
    while (*v4 != a1)
    {
      if (++v4 == unk_27F875798)
      {
        goto LABEL_9;
      }
    }
  }

  if (v4 == unk_27F875798)
  {
LABEL_9:
    std::vector<void *>::push_back[abi:nn200100](&qword_27F875790, &v6);
  }

  else
  {
    MEMORY[0x259C62C80](a2, "Library already loaded");
  }

  std::recursive_mutex::unlock(&stru_27F8757D0);
  return a1;
}

void *llvm::sys::DynamicLibrary::getLibrary(const char *a1, uint64_t a2)
{
  v3 = dlopen(a1, 9);
  if (v3)
  {
    v4 = v3;
    if (v3 == &llvm::sys::DynamicLibrary::Invalid)
    {
      return &llvm::sys::DynamicLibrary::Invalid;
    }

    else
    {
      if ((atomic_load_explicit(&_MergedGlobals_19, memory_order_acquire) & 1) == 0)
      {
        llvm::sys::DynamicLibrary::AddSymbol();
      }

      std::recursive_mutex::lock(&stru_27F8757D0);
      v7 = v4;
      std::vector<void *>::push_back[abi:nn200100](&qword_27F8757B0, &v7);
      std::recursive_mutex::unlock(&stru_27F8757D0);
      return v4;
    }
  }

  else
  {
    if (a2)
    {
      v6 = dlerror();
      MEMORY[0x259C62C80](a2, v6);
    }

    return &llvm::sys::DynamicLibrary::Invalid;
  }
}