_BYTE *sub_10000E474(_BYTE *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000034E8();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v2;
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  __dst[v2] = 0;
  return __dst;
}

void sub_10000E528(uint64_t a1, const void **a2, std::string *this)
{
  if (a1)
  {
    v3 = this;
    if (this == -1)
    {
      v3 = *__error();
    }

    if (*(a2 + 23) >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = a2[1];
    }

    if (v6 + 2 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000034E8();
    }

    if (v6 + 2 >= 0x17)
    {
      operator new();
    }

    memset(&v15, 0, sizeof(v15));
    *(&v15.__r_.__value_.__s + 23) = v6 + 2;
    if (v6)
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      memmove(&v15, v7, v6);
    }

    strcpy(&v15 + v6, ": ");
    llvm::sys::StrError(v3, &__p);
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

    v10 = std::string::append(&v15, p_p, size);
    v11 = v10->__r_.__value_.__r.__words[0];
    v16[0] = v10->__r_.__value_.__l.__size_;
    *(v16 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
    v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = v16[0];
    *a1 = v11;
    *(a1 + 8) = v13;
    *(a1 + 15) = *(v16 + 7);
    *(a1 + 23) = v12;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_27:
      operator delete(v15.__r_.__value_.__l.__data_);
      return;
    }

    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_27;
    }
  }
}

_BYTE *sub_10000E70C(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000034E8();
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

uint64_t sub_10000E7C4(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  memset(&v19, 0, sizeof(v19));
  v5 = *(a1 + 8);
  if (v5)
  {
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000034E8();
    }

    v6 = *a1;
    if (v5 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = *(a1 + 8);
    memmove(&__dst, v6, v5);
    __dst.__r_.__value_.__s.__data_[v5] = 0;
    v19 = __dst;
  }

  else
  {
    std::string::assign(&v19, "/dev/null");
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v19;
  }

  else
  {
    v8 = v19.__r_.__value_.__r.__words[0];
  }

  if (a2)
  {
    v9 = open(v8, 513, 438);
  }

  else
  {
    v9 = open(v8, 0, 438);
  }

  if (v9 != -1)
  {
    v10 = v9;
    if (dup2(v9, a2) == -1)
    {
      *(&__dst.__r_.__value_.__s + 23) = 11;
      strcpy(&__dst, "Cannot dup2");
      sub_10000E528(a3, &__dst.__r_.__value_.__l.__data_, 0xFFFFFFFFLL);
      close(v10);
      result = 1;
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      close(v10);
      result = 0;
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_33;
      }
    }

    return result;
  }

  std::operator+<char>();
  v11 = std::string::append(&v16, "' for ");
  v12 = v11->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (a2)
  {
    v13 = "output";
  }

  else
  {
    v13 = "input";
  }

  v14 = std::string::append(&v17, v13);
  __dst = *v14;
  v14->__r_.__value_.__r.__words[0] = 0;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  sub_10000E528(a3, &__dst.__r_.__value_.__l.__data_, 0xFFFFFFFFLL);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_32;
    }
  }

  else if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v17.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_26:
    result = 1;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_33;
    }

    return result;
  }

LABEL_32:
  operator delete(v16.__r_.__value_.__l.__data_);
  result = 1;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_33:
    v15 = result;
    operator delete(v19.__r_.__value_.__l.__data_);
    return v15;
  }

  return result;
}

uint64_t sub_10000EA74(unsigned int a1)
{
  v1 = a1 << 20;
  getrlimit(2, &v3);
  v3.rlim_cur = v1;
  setrlimit(2, &v3);
  getrlimit(5, &v3);
  v3.rlim_cur = v1;
  return setrlimit(5, &v3);
}

uint64_t sub_10000EAD4(unint64_t a1, unint64_t a2, uint64_t a3, int a4, llvm::raw_ostream *a5)
{
  __src.n128_u64[0] = a1;
  __src.n128_u64[1] = a2;
  v84 = a3;
  v83 = a4;
  if ((byte_1000189C0 & 1) != 0 || getenv("LLVM_DISABLE_SYMBOLIZATION") || llvm::StringRef::find(&__src, "llvm-symbolizer", 0xFuLL, 0) != -1)
  {
    return 0;
  }

  v7 = std::system_category();
  v121 |= 1u;
  v119.n128_u64[0] = 0;
  v119.n128_u64[1] = v7;
  v8 = getenv("LLVM_SYMBOLIZER_PATH");
  if (!v8)
  {
    if (__src.n128_u64[1])
    {
      *v104 = llvm::sys::path::parent_path(__src.n128_u64[0], __src.n128_u64[1], 0);
      *&v104[8] = v12;
      if (v12)
      {
        llvm::sys::findProgramByName("llvm-symbolizer", 0xFuLL, v104, 1, &__p);
        sub_10000F8C8(&v119, &__p);
        if ((v88 & 1) == 0 && SHIBYTE(v87) < 0)
        {
          operator delete(__p.n128_u64[0]);
        }
      }

      if ((v121 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_17;
  }

  v9 = v8;
  v10 = strlen(v8);
  llvm::sys::findProgramByName(v9, v10, 0, 0, &__p);
  v11 = v121;
  if ((v121 & 1) == 0 && SHIBYTE(v120) < 0)
  {
    operator delete(v119.n128_u64[0]);
    v11 = v121;
  }

  if (v88)
  {
    v121 = v11 | 1;
    v119 = __p;
LABEL_17:
    llvm::sys::findProgramByName("llvm-symbolizer", 0xFuLL, 0, 0, &__p);
    v11 = v121;
    if ((v121 & 1) == 0 && SHIBYTE(v120) < 0)
    {
      operator delete(v119.n128_u64[0]);
      v11 = v121;
    }

    if (v88)
    {
      return 0;
    }
  }

  v121 = v11 & 0xFE;
  v119 = __p;
  v120 = v87;
LABEL_22:
  LOWORD(v89) = 261;
  __p = __src;
  if (llvm::sys::fs::access(&__p, 0))
  {
    llvm::sys::fs::getMainExecutable(&__dst);
  }

  else
  {
    v13 = __src.n128_u64[1];
    if (__src.n128_u64[1] >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000034E8();
    }

    if (__src.n128_u64[1] >= 0x17)
    {
      operator new();
    }

    v82 = __src.n128_i8[8];
    if (__src.n128_u64[1])
    {
      memmove(&__dst, __src.n128_u64[0], __src.n128_u64[1]);
    }

    *(&__dst + v13) = 0;
  }

  v112[4] = 0;
  v112[5] = 0;
  v113 = v115;
  v114 = 0x400000000;
  v116 = v118;
  v117 = 0;
  v118[0] = 0;
  v118[1] = 1;
  if (v83)
  {
    if ((v83 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1000034E8();
  }

  v14 = _dyld_image_count();
  if (v14)
  {
    v15 = v14;
    for (i = 0; i != v15; ++i)
    {
      _dyld_get_image_name(i);
      _dyld_get_image_vmaddr_slide(i);
      _dyld_get_image_header(i);
    }
  }

  v80 = 0;
  v110 = v112;
  v111 = xmmword_1000111A0;
  v107 = v109;
  v108 = xmmword_1000111A0;
  __p.n128_u64[0] = "symbolizer-input";
  LOWORD(v89) = 259;
  llvm::sys::fs::createTemporaryFile(&__p, "", 0, &v80, &v110, 0);
  __p.n128_u64[0] = "symbolizer-output";
  LOWORD(v89) = 259;
  llvm::sys::fs::createTemporaryFile(&__p, "", 0, &v107, 0);
  v17 = v111;
  if ((v111 + 1) > *(&v111 + 1))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v110, v112, v111 + 1, 1);
    v17 = v111;
  }

  *(v110 + v17) = 0;
  LOWORD(v89) = 257;
  if (*v110)
  {
    __p.n128_u64[0] = v110;
    v18 = 3;
  }

  else
  {
    v18 = 1;
  }

  LOBYTE(v89) = v18;
  *v104 = v105;
  *&v104[8] = xmmword_100011180;
  v106 = 1;
  llvm::Twine::toVector(&__p, v104);
  v19 = v108;
  if ((v108 + 1) > *(&v108 + 1))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(&v107, v109, v108 + 1, 1);
    v19 = v108;
  }

  *(v107 + v19) = 0;
  LOWORD(v89) = 257;
  if (*v107)
  {
    __p.n128_u64[0] = v107;
    v20 = 3;
  }

  else
  {
    v20 = 1;
  }

  LOBYTE(v89) = v20;
  *v101 = v102;
  *&v101[8] = xmmword_100011180;
  v103 = 1;
  llvm::Twine::toVector(&__p, v101);
  llvm::raw_fd_ostream::raw_fd_ostream(&__p, v80, 1, 0, 0);
  if (v83 >= 1)
  {
    for (j = 0; j < v83; ++j)
    {
      v25 = *(8 * j);
      if (!v25)
      {
        continue;
      }

      v26 = strlen(*(8 * j));
      v27 = v26;
      v28 = v89;
      if (v26 <= v88 - v89)
      {
        if (v26)
        {
          memcpy(v89, v25, v26);
          v28 = &v89[v27];
          v89 += v27;
        }

        p_p = &__p;
        if (v88 != v28)
        {
LABEL_59:
          *v28 = 32;
          ++p_p[2].n128_u64[0];
          v23 = llvm::raw_ostream::operator<<(p_p, *(8 * j));
          v24 = v23[4];
          if (v23[3] == v24)
          {
LABEL_60:
            llvm::raw_ostream::write(v23, "\n", 1uLL);
            continue;
          }

          goto LABEL_50;
        }
      }

      else
      {
        p_p = llvm::raw_ostream::write(&__p, v25, v26);
        v28 = p_p[2].n128_u64[0];
        if (p_p[1].n128_u64[1] != v28)
        {
          goto LABEL_59;
        }
      }

      v22 = llvm::raw_ostream::write(p_p, " ", 1uLL);
      v23 = llvm::raw_ostream::operator<<(v22, *(8 * j));
      v24 = v23[4];
      if (v23[3] == v24)
      {
        goto LABEL_60;
      }

LABEL_50:
      *v24 = 10;
      ++v23[4];
    }
  }

  llvm::raw_fd_ostream::~raw_fd_ostream(&__p);
  v93[0] = v110;
  v93[1] = v111;
  v94 = 1;
  v95 = v107;
  v96 = v108;
  v97 = 1;
  v98 = "";
  v99 = 0;
  v100 = 1;
  v92[0] = off_100014C28;
  v92[1] = *&off_100014C38;
  v92[2] = off_100014C48;
  v92[3] = *&off_100014C58;
  if (v120 >= 0)
  {
    v30 = &v119;
  }

  else
  {
    v30 = v119.n128_u64[0];
  }

  if (v120 >= 0)
  {
    v31 = SHIBYTE(v120);
  }

  else
  {
    v31 = v119.n128_u64[1];
  }

  __p.n128_u8[0] = 0;
  LOBYTE(v87) = 0;
  v32 = llvm::sys::ExecuteAndWait(v30, v31, v92, 4, &__p, v93, 3, 0, 0, 0, 0, 0);
  v33 = 0;
  if (v32)
  {
    goto LABEL_123;
  }

  v34 = sub_10000F984(&v107);
  LOWORD(v89) = 257;
  if (*v34)
  {
    __p.n128_u64[0] = v34;
    v35 = 3;
  }

  else
  {
    v35 = 1;
  }

  LOBYTE(v89) = v35;
  llvm::MemoryBuffer::getFile(&__p, 0, 1, 0, 0, &v90);
  v33 = 0;
  if (v91)
  {
    goto LABEL_123;
  }

  v36 = *(v90 + 16) - *(v90 + 8);
  *&v79 = *(v90 + 8);
  *(&v79 + 1) = v36;
  __p.n128_u64[0] = &v87;
  __p.n128_u64[1] = 0x2000000000;
  llvm::StringRef::split(&v79, &__p, "\n", 1uLL, -1, 1);
  v37 = __p.n128_u64[0];
  v78 = 0;
  if (v83 < 1)
  {
    goto LABEL_116;
  }

  for (k = 0; k < v83; LODWORD(v78) = k)
  {
    v77[0] = a5;
    v77[1] = &v78 + 4;
    v77[2] = &v83;
    v77[3] = &v84;
    v77[4] = &v78;
    if (*(8 * k))
    {
      v39 = __p.n128_u64[0];
      if (v37 == (__p.n128_u64[0] + 16 * __p.n128_u32[2]))
      {
LABEL_117:
        v37 = v39;
        v33 = 0;
        goto LABEL_118;
      }

      v37 += 2;
      while (1)
      {
        v41 = *(v37 - 1);
        if (!v41)
        {
          goto LABEL_114;
        }

        v42 = *(v37 - 2);
        sub_10000F9E8(v77);
        if (v41 == 1 || *v42 != 16191)
        {
          v43 = *(a5 + 4);
          if (v41 <= *(a5 + 3) - v43)
          {
            memcpy(v43, v42, v41);
            v45 = (*(a5 + 4) + v41);
            *(a5 + 4) = v45;
            v44 = a5;
            if (v45 >= *(a5 + 3))
            {
LABEL_84:
              llvm::raw_ostream::write(v44, 32);
              goto LABEL_87;
            }
          }

          else
          {
            v44 = llvm::raw_ostream::write(a5, v42, v41);
            v45 = *(v44 + 4);
            if (v45 >= *(v44 + 3))
            {
              goto LABEL_84;
            }
          }

          *(v44 + 4) = v45 + 1;
          *v45 = 32;
        }

LABEL_87:
        v39 = __p.n128_u64[0];
        if (v37 == (__p.n128_u64[0] + 16 * __p.n128_u32[2]))
        {
          goto LABEL_117;
        }

        v46 = *v37;
        v47 = v37[1];
        if (v47 >= 2 && *v46 == 16191)
        {
          v51 = *(a5 + 4);
          if (*(a5 + 3) == v51)
          {
            v52 = llvm::raw_ostream::write(a5, "(", 1uLL);
          }

          else
          {
            *v51 = 40;
            ++*(a5 + 4);
            v52 = a5;
          }

          v53 = *(8 * v78);
          if (v53)
          {
            v54 = v52;
            v55 = strlen(*(8 * v78));
            v52 = v54;
            if (v55 <= *(v54 + 3) - *(v54 + 4))
            {
              if (v55)
              {
                memcpy(*(v54 + 4), v53, v55);
                v52 = v54;
                *(v54 + 4) += v55;
              }
            }

            else
            {
              v52 = llvm::raw_ostream::write(v54, v53, v55);
            }
          }

          v56 = *(v52 + 4);
          if (v56 >= *(v52 + 3))
          {
            v52 = llvm::raw_ostream::write(v52, 43);
          }

          else
          {
            *(v52 + 4) = v56 + 1;
            *v56 = 43;
          }

          v73[0] = *(8 * v78);
          v73[1] = 0;
          v74 = 0;
          v75 = 1;
          v76 = 1;
          v49 = llvm::raw_ostream::operator<<(v52, v73);
          v57 = v49[4];
          if (v49[3] != v57)
          {
            *v57 = 41;
            ++v49[4];
            goto LABEL_108;
          }

          v46 = ")";
          v47 = 1;
        }

        else
        {
          v48 = *(a5 + 4);
          if (v47 <= *(a5 + 3) - v48)
          {
            if (v47)
            {
              v50 = v37[1];
              memcpy(v48, v46, v47);
              *(a5 + 4) += v50;
            }

            goto LABEL_108;
          }

          v49 = a5;
        }

        llvm::raw_ostream::write(v49, v46, v47);
LABEL_108:
        v58 = *(a5 + 4);
        if (*(a5 + 3) == v58)
        {
          llvm::raw_ostream::write(a5, "\n", 1uLL);
        }

        else
        {
          *v58 = 10;
          ++*(a5 + 4);
        }

        v39 = __p.n128_u64[0];
        v40 = v37 + 2;
        v37 += 4;
        if (v40 == (__p.n128_u64[0] + 16 * __p.n128_u32[2]))
        {
          goto LABEL_117;
        }
      }
    }

    sub_10000F9E8(v77);
    v59 = *(a5 + 4);
    if (v59 >= *(a5 + 3))
    {
      llvm::raw_ostream::write(a5, 10);
    }

    else
    {
      *(a5 + 4) = v59 + 1;
      *v59 = 10;
    }

LABEL_114:
    k = v78 + 1;
  }

  v37 = __p.n128_u64[0];
LABEL_116:
  v33 = 1;
LABEL_118:
  if (v37 != &v87)
  {
    v60 = v33;
    free(v37);
    v33 = v60;
  }

  if ((v91 & 1) == 0)
  {
    v61 = v90;
    v90 = 0;
    if (v61)
    {
      v62 = v33;
      (*(*v61 + 8))(v61);
      v33 = v62;
    }
  }

LABEL_123:
  v63 = v33;
  if (v103 == 1)
  {
    LOWORD(v89) = 261;
    __p = *v101;
    llvm::sys::fs::remove(&__p, 1);
  }

  if (*v101 != v102)
  {
    free(*v101);
  }

  if (v106 == 1)
  {
    LOWORD(v89) = 261;
    __p = *v104;
    llvm::sys::fs::remove(&__p, 1);
  }

  if (*v104 != v105)
  {
    free(*v104);
  }

  if (v107 != v109)
  {
    free(v107);
  }

  if (v110 != v112)
  {
    free(v110);
  }

  if (v114)
  {
    v64 = v113;
    v65 = 8 * v114;
    v66 = v113;
    do
    {
      v67 = ((v64 - v113) >> 10) & 0x1FFFFFF;
      if (v67 >= 0x1E)
      {
        LOBYTE(v67) = 30;
      }

      v68 = *v66++;
      llvm::deallocate_buffer(v68, (4096 << v67), 8uLL);
      ++v64;
      v65 -= 8;
    }

    while (v65);
  }

  v69 = v116;
  if (v117)
  {
    v70 = &v116[2 * v117];
    do
    {
      v71 = *v69;
      v72 = v69[1];
      v69 += 2;
      llvm::deallocate_buffer(v71, v72, 8uLL);
    }

    while (v69 != v70);
    v69 = v116;
  }

  if (v69 != v118)
  {
    free(v69);
  }

  if (v113 != v115)
  {
    free(v113);
  }

  if (v82 < 0)
  {
    operator delete(__dst);
  }

  if ((v121 & 1) == 0 && SHIBYTE(v120) < 0)
  {
    operator delete(v119.n128_u64[0]);
  }

  return v63;
}

__n128 sub_10000F8C8(__n128 *a1, __n128 *a2)
{
  if (a1 == a2)
  {
    return result;
  }

  v2 = a1[1].n128_u8[8];
  if ((v2 & 1) == 0 && a1[1].n128_i8[7] < 0)
  {
    v7 = a1;
    v8 = a2;
    operator delete(a1->n128_u64[0]);
    a2 = v8;
    a1 = v7;
    v2 = v7[1].n128_u8[8];
    if (v8[1].n128_u8[8])
    {
      goto LABEL_5;
    }

LABEL_10:
    a1[1].n128_u8[8] = v2 & 0xFE;
    result = *a2;
    a1[1].n128_u64[0] = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    return result;
  }

  if ((a2[1].n128_u8[8] & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  a1[1].n128_u8[8] = v2 | 1;
  if (a2[1].n128_u8[8])
  {
    v4 = a2->n128_u64[0];
    v3 = a2->n128_u64[1];
  }

  else
  {
    v5 = a1;
    v3 = std::system_category();
    a1 = v5;
    v4 = 0;
  }

  a1->n128_u64[0] = v4;
  a1->n128_u64[1] = v3;
  return result;
}

uint64_t sub_10000F984(void *a1)
{
  v1 = a1[1];
  if ((v1 + 1) > a1[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v1 + 1, 1);
    *(*a1 + a1[1]) = 0;
    return *a1;
  }

  else
  {
    *(*a1 + v1) = 0;
    return *a1;
  }
}

void sub_10000F9E8(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = (*v2)++;
  v16[0] = "#{0}";
  v16[1] = 4;
  v16[2] = &v20;
  v16[3] = 1;
  v17 = 1;
  v18 = &off_100014C78;
  v19 = v4;
  v20 = &v18;
  __p = 0;
  v22 = 0;
  v23 = 0;
  LODWORD(v25) = 0;
  v29 = 0;
  v30 = 1;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  p_p = &__p;
  v24 = &off_100014B40;
  v31 = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v24, 0, 0, 0);
  llvm::raw_ostream::operator<<(&v24, v16);
  if (v28 != v26)
  {
    llvm::raw_ostream::flush_nonempty(&v24);
  }

  llvm::raw_ostream::~raw_ostream(&v24);
  if (v23 < 0)
  {
    p_p = __p;
  }

  if (v23 >= 0)
  {
    v6 = SHIBYTE(v23);
  }

  else
  {
    v6 = v22;
  }

  v7 = log10(**(a1 + 16));
  v24 = p_p;
  v25 = v6;
  LODWORD(v26) = (v7 + 2.0);
  HIDWORD(v26) = 2;
  v8 = llvm::raw_ostream::operator<<(v3, &v24);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    v8 = llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  v12[0] = *(**(a1 + 24) + 8 * **(a1 + 32));
  v12[1] = 0;
  v13 = 18;
  v14 = 1;
  v15 = 1;
  v10 = llvm::raw_ostream::operator<<(v8, v12);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
    if (SHIBYTE(v23) < 0)
    {
LABEL_16:
      operator delete(__p);
    }
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
    if (SHIBYTE(v23) < 0)
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_10000FBF0(const void *a1, size_t a2)
{
  v4 = getenv("LLVM_ENABLE_SYMBOLIZER_MARKUP");
  if (!v4 || !*v4)
  {
    return 0;
  }

  v7 = 261;
  v6[0] = a1;
  v6[1] = a2;
  if (llvm::sys::fs::access(v6, 0))
  {
    llvm::sys::fs::getMainExecutable(&__dst);
    if ((v9 & 0x80000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000034E8();
    }

    if (a2 >= 0x17)
    {
      operator new();
    }

    v9 = a2;
    if (a2)
    {
      memmove(&__dst, a1, a2);
    }

    *(&__dst + a2) = 0;
    if ((v9 & 0x80000000) == 0)
    {
      return 0;
    }
  }

  operator delete(__dst);
  return 0;
}

void llvm::sys::RunInterruptHandlers(llvm::sys *this)
{
  v1 = atomic_exchange(qword_1000189F8, 0);
  if (v1)
  {
    v2 = v1;
    do
    {
      v3 = atomic_exchange(v2, 0);
      if (v3)
      {
        if (!stat(v3, &v4) && (v4.st_mode & 0xF000) == 0x8000)
        {
          unlink(v3);
        }

        atomic_exchange(v2, v3);
      }

      v2 = atomic_load((v2 + 8));
    }

    while (v2);
  }

  atomic_exchange(qword_1000189F8, v1);
}

void mlirModuleDestroy(mlir::Operation *this)
{
  if (this)
  {
    mlir::Operation::erase(this);
  }
}

void mlir::Block::~Block(mlir::Block *this)
{
  sub_10000FEA0(this);
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        operator delete();
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 6);
  }

  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v4 = *(this + 5);
  if (v4 != (this + 32))
  {
    do
    {
      v5 = *(v4 + 1);
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v4);
      llvm::ilist_traits<mlir::Operation>::removeNodeFromList(this + 32, ValuePtr);
      NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(ValuePtr);
      v8 = *NodePtr;
      v9 = NodePtr[1];
      *v9 = *NodePtr;
      *(v8 + 8) = v9;
      *NodePtr = 0;
      NodePtr[1] = 0;
      llvm::ilist_traits<mlir::Operation>::deleteNode(ValuePtr);
      v4 = v5;
    }

    while (v5 != (this + 32));
  }
}

void *sub_10000FEA0(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 40);
  if (v2 != (a1 + 32))
  {
    do
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v2);
      mlir::Operation::dropAllReferences(ValuePtr);
      v2 = v2[1];
    }

    while (v2 != v1);
  }

  while (1)
  {
    result = *v1;
    if (*v1 == v1)
    {
      break;
    }

    v4 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(result);
    llvm::ilist_traits<mlir::Operation>::removeNodeFromList(v1, v4);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v4);
    v6 = *NodePtr;
    v7 = NodePtr[1];
    *v7 = *NodePtr;
    *(v6 + 8) = v7;
    *NodePtr = 0;
    NodePtr[1] = 0;
    llvm::ilist_traits<mlir::Operation>::deleteNode(v4);
  }

  return result;
}

void mlir::Block::dropAllReferences(mlir::Block *this)
{
  v1 = this + 32;
  v2 = *(this + 5);
  if (v2 != (this + 32))
  {
    do
    {
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v2);
      mlir::Operation::dropAllReferences(ValuePtr);
      v2 = v2[1];
    }

    while (v2 != v1);
  }
}

void mlir::Operation::~Operation(mlir::Operation *this)
{
  v2 = *(this + 11);
  if ((v2 & 0x800000) != 0)
  {
    mlir::detail::OperandStorage::~OperandStorage((this + 64));
    v2 = *(this + 11);
  }

  v3 = this + 64;
  v4 = *(this + 10);
  if (v4)
  {
    v5 = &v3[16 * ((v2 >> 23) & 1) + 7 + ((v2 >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8;
    v6 = 32 * v4;
    v7 = (v5 + 8);
    do
    {
      v8 = *v7;
      if (*v7)
      {
        v9 = *(v7 - 1);
        *v8 = v9;
        if (v9)
        {
          *(v9 + 8) = v8;
        }
      }

      v7 += 4;
      v6 -= 32;
    }

    while (v6);
    v2 = *(this + 11);
  }

  if ((v2 & 0x7FFFFF) != 0)
  {
    v10 = ((&v3[16 * ((v2 >> 23) & 1) + 7 + ((v2 >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * v4);
    v11 = 24 * (v2 & 0x7FFFFF);
    do
    {
      mlir::Region::~Region(v10);
      v10 = (v12 + 24);
      v11 -= 24;
    }

    while (v11);
    v2 = *(this + 11);
  }

  if (HIBYTE(v2))
  {
    (*(**(this + 6) + 128))(*(this + 6), &v3[16 * ((v2 >> 23) & 1)]);
  }
}

void llvm::ilist_traits<mlir::Operation>::deleteNode(unsigned int *a1)
{
  v2 = a1[9];
  NumTrailing = mlir::OpResult::getNumTrailing(v2);
  v4 = 16 * mlir::OpResult::getNumInline(v2) + 24 * NumTrailing;
  v5 = a1 - ((v4 - (v4 != 0) + 8 * (v4 != 0)) & 0xFFFFFFFFFFFFFFF8);
  mlir::Operation::~Operation(a1);

  free(v5);
}

void mlir::Operation::erase(mlir::Operation *this)
{
  if (*(this + 2))
  {
    *(this + 2) = 0;
    v3 = *this;
    v2 = *(this + 1);
    *v2 = *this;
    *(v3 + 8) = v2;
    *this = 0;
    *(this + 1) = 0;
  }

  v4 = *(this + 9);
  NumTrailing = mlir::OpResult::getNumTrailing(v4);
  v6 = 16 * mlir::OpResult::getNumInline(v4) + 24 * NumTrailing;
  v7 = this - ((v6 - (v6 != 0) + 8 * (v6 != 0)) & 0xFFFFFFFFFFFFFFF8);
  mlir::Operation::~Operation(this);

  free(v7);
}

void sub_1000101D8(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[3] = 0;
}

void mlir::detail::OperandStorage::~OperandStorage(mlir::detail::OperandStorage *this)
{
  v1 = *(this + 1);
  v2 = *(this + 1);
  if (v2)
  {
    v3 = 32 * v2;
    v4 = v1 + 1;
    do
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = *(v4 - 1);
        *v5 = v6;
        if (v6)
        {
          *(v6 + 8) = v5;
        }
      }

      v4 += 4;
      v3 -= 32;
    }

    while (v3);
  }

  if ((*this & 0x80000000) != 0)
  {
    free(v1);
  }
}

uint64_t mlir::Region::dropAllReferences(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 != this)
  {
    v2 = this;
    do
    {
      if (v1)
      {
        v3 = (v1 - 8);
      }

      else
      {
        v3 = 0;
      }

      this = mlir::Block::dropAllReferences(v3);
      v1 = *(v1 + 8);
    }

    while (v1 != v2);
  }

  return this;
}

void mlir::Region::~Region(mlir::Region *this)
{
  v2 = *(this + 1);
  if (v2 != this)
  {
    do
    {
      if (v2)
      {
        v3 = (v2 - 8);
      }

      else
      {
        v3 = 0;
      }

      mlir::Block::dropAllReferences(v3);
      v2 = *(v2 + 1);
    }

    while (v2 != this);
    v2 = *(this + 1);
  }

  if (v2 != this)
  {
    v4 = *(v2 + 1);
    if (v2)
    {
      v5 = (v2 - 8);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5[2];
    v5[3] &= 7uLL;
    v7 = v5[1];
    *v6 = v7;
    *(v7 + 8) = v6;
    v5[1] = 0;
    v5[2] = 0;
    mlir::Block::~Block((v2 - 8));
    operator delete();
  }
}

uint64_t mlir::OpResult::getNumInline(uint64_t this)
{
  if (this >= 6)
  {
    return 6;
  }

  else
  {
    return this;
  }
}

uint64_t mlir::OpResult::getNumTrailing(mlir::OpResult *this)
{
  if (this >= 6)
  {
    return (this - 6);
  }

  else
  {
    return 0;
  }
}

void sub_100010384()
{
  v0 = __cxa_guard_acquire(&qword_100018970);
  if (v0)
  {
    sub_1000040B8(v0, &off_1000184C0, &_mh_execute_header);

    __cxa_guard_release(&qword_100018970);
  }
}

void sub_1000103DC()
{
  v0 = __cxa_guard_acquire(&qword_100018970);
  if (v0)
  {
    sub_1000040B8(v0, &off_1000184C0, &_mh_execute_header);
    __cxa_guard_release(&qword_100018970);
  }
}

void sub_100010420()
{
  if (__cxa_guard_acquire(&qword_1000189A8))
  {
    dword_10001899C = sub_1000056B8();

    __cxa_guard_release(&qword_1000189A8);
  }
}

void sub_100010470()
{
  if (__cxa_guard_acquire(&qword_1000189B8))
  {
    dword_1000189B0 = getpagesize();

    __cxa_guard_release(&qword_1000189B8);
  }
}

void mlir::Operation::dropAllReferences(mlir::Operation *this)
{
  v2 = *(this + 11);
  if ((v2 & 0x800000) != 0 && *(this + 17))
  {
    v3 = *(this + 9);
    do
    {
      v4 = v3[1];
      if (v4)
      {
        v5 = *v3;
        *v4 = *v3;
        if (v5)
        {
          *(v5 + 8) = v4;
        }
      }

      sub_1000101D8(v3);
    }

    while (!v6);
    v2 = *(this + 11);
  }

  if ((v2 & 0x7FFFFF) != 0)
  {
    sub_1000101B8();
    v8 = v7 + 32 * *(this + 10);
    v10 = 24 * v9;
    do
    {
      mlir::Region::dropAllReferences(v8);
      v8 += 24;
      v10 -= 24;
    }

    while (v10);
    v11 = *(this + 11);
  }

  if (*(this + 10))
  {
    sub_1000101B8();
    do
    {
      v13 = v12[1];
      if (v13)
      {
        v14 = *v12;
        *v13 = *v12;
        if (v14)
        {
          *(v14 + 8) = v13;
        }
      }

      sub_1000101D8(v12);
    }

    while (!v6);
  }
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

void operator delete(void *__p, std::align_val_t a2)
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

void *__cdecl operator new(size_t __sz, std::align_val_t a2, const std::nothrow_t *a3)
{
    ;
  }
}

void operator new()
{
    ;
  }
}