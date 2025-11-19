uint64_t llvm::sys::Process::SafelyCloseFileDescriptor(llvm::sys::Process *this)
{
  v1 = this;
  v5 = -1;
  v6 = -1;
  v2 = pthread_sigmask(3, &v6, &v5);
  if (!v2)
  {
    if (close(v1) < 0)
    {
      v2 = *__error();
      v3 = pthread_sigmask(3, &v5, 0);
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v3 = pthread_sigmask(3, &v5, 0);
    }

    v2 = v3;
  }

LABEL_6:
  std::generic_category();
  return v2;
}

uint64_t llvm::sys::Process::StandardOutColumns(llvm::sys::Process *this)
{
  result = isatty(1);
  if (result)
  {
    v2 = getenv("COLUMNS");
    if (!v2)
    {
      return 0;
    }

    result = atoi(v2);
    if (result <= 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::sys::Process::StandardErrColumns(llvm::sys::Process *this)
{
  result = isatty(2);
  if (result)
  {
    v2 = getenv("COLUMNS");
    if (!v2)
    {
      return 0;
    }

    result = atoi(v2);
    if (result <= 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t llvm::sys::Process::FileDescriptorHasColors(llvm::sys::Process *this)
{
  result = isatty(this);
  if (result)
  {
    v2 = getenv("TERM");
    v4 = v2;
    if (!v2)
    {
      return (v4 != 0) & v3;
    }

    v5 = strlen(v2);
    switch(v5)
    {
      case 6uLL:
        if (*v4 == 2003269987 && *(v4 + 2) == 28265)
        {
          goto LABEL_41;
        }

        break;
      case 5uLL:
        if (*v4 == 1970170220 && v4[4] == 120)
        {
          goto LABEL_41;
        }

        goto LABEL_27;
      case 4uLL:
        if (*v4 == 1769172577 || *v4 == 1953921138)
        {
LABEL_41:
          v3 = 1;
          return (v4 != 0) & v3;
        }

LABEL_40:
        v3 = 0;
        return (v4 != 0) & v3;
      default:
        if (v5 < 6)
        {
          goto LABEL_40;
        }

        break;
    }

    if (*v4 == 1701995379 && *(v4 + 2) == 28261)
    {
      goto LABEL_41;
    }

LABEL_27:
    if (*v4 == 1919251576 && v4[4] == 109)
    {
      goto LABEL_41;
    }

    v10 = *v4 == 808547446 && v4[4] == 48;
    if (v10 || *v4 == 1953921138)
    {
      goto LABEL_41;
    }

    if (*&v4[v5 - 5] == 1869377379 && v4[v5 - 1] == 114)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  return result;
}

uint64_t llvm::sys::ExecuteAndWait(void *a1, size_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, unsigned int a8, int a9, uint64_t a10, _BYTE *a11, uint64_t a12)
{
  v18[0] = 0;
  v18[2] = 0;
  v16 = *a5;
  v17 = *(a5 + 2);
  LODWORD(v15) = a9;
  if (Execute(v18, a1, a2, a3, a4, &v16, a6, a7, v15, a10))
  {
    if (a11)
    {
      *a11 = 0;
    }

    llvm::sys::Wait(v18, a8 | ((a8 != 0) << 32), a10, a12, 0);
    return v13;
  }

  else
  {
    if (a11)
    {
      *a11 = 1;
    }

    return 0xFFFFFFFFLL;
  }
}

_DWORD *llvm::sys::ProcessInfo::ProcessInfo(_DWORD *this)
{
  *this = 0;
  this[2] = 0;
  return this;
}

{
  *this = 0;
  this[2] = 0;
  return this;
}

uint64_t Execute(uint64_t a1, void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v39[2] = *MEMORY[0x277D85DE8];
  __src = a2;
  __len = a3;
  v35 = 261;
  v33.__r_.__value_.__r.__words[0] = a2;
  v33.__r_.__value_.__l.__size_ = a3;
  if (!llvm::sys::fs::access(&v33, 0))
  {
    *&v33.__r_.__value_.__l.__data_ = 0uLL;
    v33.__r_.__value_.__r.__words[2] = &v35;
    v34 = 0x400000000;
    v36 = v38;
    v37 = 0;
    v38[0] = 0;
    v38[1] = 1;
    *__s = &v33;
    if (a5)
    {
      llvm::StringSaver::save(__s, *a4, *(a4 + 8));
      operator new();
    }

    operator new();
  }

  if (a10)
  {
    *(&v32.__r_.__value_.__s + 23) = 12;
    strcpy(&v32, "Executable ");
    if (a2)
    {
      if (a3 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (a3 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v31) = a3;
      if (a3)
      {
        memmove(&__dst, a2, a3);
      }

      *(&__dst + a3) = 0;
      v15 = HIBYTE(v31);
      v13 = *(&__dst + 1);
      v14 = __dst;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      __dst = 0uLL;
      v31 = 0;
    }

    if ((v15 & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = v14;
    }

    if ((v15 & 0x80u) == 0)
    {
      v17 = v15;
    }

    else
    {
      v17 = v13;
    }

    v18 = std::string::append(&v32, p_dst, v17);
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v27 = 16;
    strcpy(__s, " doesn't exist!");
    v20 = std::string::append(&v33, __s, 0x10uLL);
    v21 = v20->__r_.__value_.__r.__words[0];
    v39[0] = v20->__r_.__value_.__l.__size_;
    *(v39 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
    v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (*(a10 + 23) < 0)
    {
      operator delete(*a10);
    }

    v23 = v39[0];
    *a10 = v21;
    *(a10 + 8) = v23;
    *(a10 + 15) = *(v39 + 7);
    *(a10 + 23) = v22;
    if (v27 < 0)
    {
      operator delete(*__s);
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_25:
        if ((SHIBYTE(v31) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_30;
      }
    }

    else if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    operator delete(v33.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
LABEL_26:
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0;
      }

LABEL_31:
      operator delete(v32.__r_.__value_.__l.__data_);
      return 0;
    }

LABEL_30:
    operator delete(__dst);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

    goto LABEL_31;
  }

  return 0;
}

uint64_t llvm::sys::Wait(pid_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = *a1;
  if ((a2 & 0x100000000) != 0)
  {
    v11 = a2 == 0;
    v26.__sigaction_u.__sa_handler = TimeOutHandler;
    *&v26.sa_mask = 0;
    sigaction(14, &v26, &v25);
    alarm(a2);
    v24 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    v24 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (*(a4 + 24) == 1)
  {
    *(a4 + 24) = 0;
  }

LABEL_7:
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(result) = wait4(v10, &v24, v11, &v23);
  }

  else
  {
    while (1)
    {
      LODWORD(result) = wait4(v10, &v24, v11, &v23);
      if (result != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        LODWORD(result) = -1;
        if (*a1 != -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }
  }

  if (result != *a1)
  {
    if (!result)
    {
      return result;
    }

LABEL_15:
    v13 = result;
    if ((a2 & 0x100000000) != 0 && *__error() == 4 && (a5 & 1) == 0)
    {
      kill(*a1, 9);
      alarm(0);
      sigaction(14, &v25, 0);
      if (wait(&v24) != v10)
      {
        operator new();
      }

      HIBYTE(v22) = 15;
      strcpy(&v21, "Child timed out");
      MakeErrMsg(a3, &v21, 0);
      LODWORD(result) = v13;
      return result;
    }

    if (*__error() != 4)
    {
      operator new();
    }

    LODWORD(result) = v13;
  }

LABEL_18:
  if ((a2 & 0x100000000) != 0)
  {
    v14 = result;
    alarm(0);
    sigaction(14, &v25, 0);
    LODWORD(result) = v14;
  }

  if (a4)
  {
    v15 = v23.ru_utime.tv_usec + 1000000 * v23.ru_utime.tv_sec;
    ru_maxrss = v23.ru_maxrss;
    v17 = *(a4 + 24);
    *a4 = v15 + 1000000 * v23.ru_stime.tv_sec + v23.ru_stime.tv_usec;
    *(a4 + 8) = v15;
    *(a4 + 16) = ru_maxrss;
    if ((v17 & 1) == 0)
    {
      *(a4 + 24) = 1;
    }
  }

  if ((v24 & 0x7F) != 0x7F)
  {
    if ((v24 & 0x7F) != 0)
    {
      if (!a3)
      {
        return result;
      }

      v18 = result;
      v19 = strsignal(v24 & 0x7F);
      MEMORY[0x259C62C80](a3, v19);
      if ((v24 & 0x80) != 0)
      {
        std::string::append(a3, " (core dumped)");
      }
    }

    else
    {
      if (BYTE1(v24) == 126)
      {
        if (a3)
        {
          v20 = result;
          MEMORY[0x259C62C80](a3, "Program could not be executed");
          LODWORD(result) = v20;
        }

        return result;
      }

      if (BYTE1(v24) != 127 || !a3)
      {
        return result;
      }

      v18 = result;
      llvm::sys::StrError(2, &v21);
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      *a3 = v21;
      *(a3 + 16) = v22;
    }

    LODWORD(result) = v18;
  }

  return result;
}

uint64_t llvm::sys::ExecuteNoWait(void *a1, size_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, _BYTE *a10)
{
  LODWORD(v15) = 0;
  v16 = 0;
  if (a10)
  {
    *a10 = 0;
  }

  v13 = *a5;
  v14 = *(a5 + 2);
  LODWORD(v12) = a8;
  v10 = Execute(&v15, a1, a2, a3, a4, &v13, a6, a7, v12, a9);
  if (a10 && (v10 & 1) == 0)
  {
    *a10 = 1;
  }

  return v15;
}

uint64_t llvm::sys::commandLineFitsWithinSystemLimits(uint64_t a1, uint64_t a2, const char **a3, unint64_t a4)
{
  v24[16] = *MEMORY[0x277D85DE8];
  v22 = v24;
  v23 = 0x800000000;
  if (a4 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v6 = 8 * a4;
    do
    {
      while (1)
      {
        v7 = *a3;
        v21 = *a3;
        v8 = v23;
        if (v23 < HIDWORD(v23))
        {
          break;
        }

        llvm::SmallVectorTemplateBase<llvm::StringRef,true>::growAndEmplaceBack<char const*&>(&v22, &v21);
        ++a3;
        v6 -= 8;
        if (!v6)
        {
          goto LABEL_10;
        }
      }

      v9 = (v22 + 16 * v23);
      *v9 = v7;
      if (v7)
      {
        v7 = strlen(v7);
      }

      v9[1] = v7;
      LODWORD(v23) = v8 + 1;
      ++a3;
      v6 -= 8;
    }

    while (v6);
  }

LABEL_10:
  v10 = v22;
  v11 = v23;
  if ((atomic_load_explicit(&qword_27F875850, memory_order_acquire) & 1) == 0)
  {
    llvm::sys::commandLineFitsWithinSystemLimits();
  }

  v12 = _MergedGlobals_22 / 2;
  if (_MergedGlobals_22 >= 0x20000)
  {
    v12 = 0x10000;
  }

  if (_MergedGlobals_22 == -1 || !v11)
  {
LABEL_20:
    v18 = 1;
    v19 = v22;
    if (v22 == v24)
    {
      return v18;
    }

LABEL_21:
    free(v19);
    return v18;
  }

  v13 = a2 + 1;
  v14 = 16 * v11;
  v15 = (v10 + 8);
  while (1)
  {
    v17 = *v15;
    v15 += 2;
    v16 = v17;
    if (v17 >> 17)
    {
      break;
    }

    v13 += v16 + 1;
    if (v13 > v12)
    {
      break;
    }

    v14 -= 16;
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  v18 = 0;
  v19 = v22;
  if (v22 != v24)
  {
    goto LABEL_21;
  }

  return v18;
}

uint64_t llvm::sys::commandLineFitsWithinSystemLimits(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((atomic_load_explicit(&qword_27F875850, memory_order_acquire) & 1) == 0)
  {
    v13 = a3;
    v11 = a4;
    v12 = a2;
    llvm::sys::commandLineFitsWithinSystemLimits();
    a4 = v11;
    a2 = v12;
    a3 = v13;
  }

  v4 = _MergedGlobals_22 / 2;
  if (_MergedGlobals_22 >= 0x20000)
  {
    v4 = 0x10000;
  }

  if (_MergedGlobals_22 == -1 || !a4)
  {
    return 1;
  }

  v5 = a2 + 1;
  v6 = 16 * a4;
  v7 = (a3 + 8);
  while (1)
  {
    v9 = *v7;
    v7 += 2;
    v8 = v9;
    if (v9 >> 17)
    {
      break;
    }

    v5 += v8 + 1;
    if (v5 > v4)
    {
      break;
    }

    v6 -= 16;
    if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

llvm::raw_ostream *llvm::sys::printArg(llvm::raw_ostream *a1, const char *a2, size_t a3, char a4)
{
  v16 = a2;
  v17 = a3;
  result = llvm::StringRef::find_first_of(&v16, " \\$", 4, 0);
  if ((a4 & 1) == 0 && result == -1)
  {
    result = *(a1 + 4);
    if (v17 > *(a1 + 3) - result)
    {
      return llvm::raw_ostream::write(a1, v16, v17);
    }

    if (v17)
    {
      v15 = v17;
      result = memcpy(result, v16, v17);
      *(a1 + 4) += v15;
    }

    return result;
  }

  v7 = *(a1 + 4);
  if (v7 >= *(a1 + 3))
  {
    result = llvm::raw_ostream::write(a1, 34);
    v8 = v17;
    if (!v17)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  *(a1 + 4) = v7 + 1;
  *v7 = 34;
  v8 = v17;
  if (v17)
  {
LABEL_9:
    v9 = v16;
    do
    {
      while (1)
      {
        v10 = *v9;
        if ((v10 - 34) <= 0x3A && ((1 << (v10 - 34)) & 0x400000000000005) != 0)
        {
          break;
        }

LABEL_17:
        v13 = *(a1 + 4);
        if (v13 >= *(a1 + 3))
        {
          goto LABEL_20;
        }

LABEL_10:
        *(a1 + 4) = v13 + 1;
        *v13 = v10;
        ++v9;
        if (!--v8)
        {
          goto LABEL_21;
        }
      }

      v12 = *(a1 + 4);
      if (v12 < *(a1 + 3))
      {
        *(a1 + 4) = v12 + 1;
        *v12 = 92;
        goto LABEL_17;
      }

      result = llvm::raw_ostream::write(a1, 92);
      v13 = *(a1 + 4);
      if (v13 < *(a1 + 3))
      {
        goto LABEL_10;
      }

LABEL_20:
      result = llvm::raw_ostream::write(a1, v10);
      ++v9;
      --v8;
    }

    while (v8);
  }

LABEL_21:
  v14 = *(a1 + 4);
  if (v14 >= *(a1 + 3))
  {
    return llvm::raw_ostream::write(a1, 34);
  }

  *(a1 + 4) = v14 + 1;
  *v14 = 34;
  return result;
}

double llvm::sys::findProgramByName@<D0>(void *__s@<X0>, size_t __n@<X1>, const void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38[32] = *MEMORY[0x277D85DE8];
  if (__n)
  {
    v9 = memchr(__s, 47, __n);
    if (v9)
    {
      if (v9 - __s != -1)
      {
        if (__n > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_37:
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (__n >= 0x17)
        {
          operator new();
        }

        HIBYTE(v38[0]) = __n;
        memmove(v37, __s, __n);
        *(v37 + __n) = 0;
        *(a5 + 24) &= ~1u;
        result = *v37;
        *a5 = *v37;
        *(a5 + 16) = v38[0];
        return result;
      }
    }
  }

  v37[0] = v38;
  v37[1] = 0x1000000000;
  if (a4)
  {
    v10 = &a3[2 * a4];
    goto LABEL_11;
  }

  v19 = getenv("PATH");
  if (v19)
  {
    v20 = v19;
    v21 = strlen(v19);
    llvm::SplitString(v20, v21, v37, ":", 1);
    if (LODWORD(v37[1]))
    {
      a3 = v37[0];
      v10 = (v37[0] + 16 * LODWORD(v37[1]));
      do
      {
LABEL_11:
        v11 = a3[1];
        if (!v11)
        {
          goto LABEL_10;
        }

        v12 = *a3;
        __src = v36;
        __len = xmmword_257371870;
        if (v11 >= 0x81)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        memcpy(v36, v12, v11);
        *&__len = __len + v11;
        v33 = 261;
        *&__dst = __s;
        *(&__dst + 1) = __n;
        v30 = 257;
        v28 = 257;
        v26 = 257;
        llvm::sys::path::append(&__src, &__dst, &v29, &v27, &v25);
        if ((__len + 1) > *(&__len + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(__src + __len) = 0;
        v33 = 257;
        if (*__src)
        {
          *&__dst = __src;
          LOBYTE(v33) = 3;
          can_execute = llvm::sys::fs::can_execute(&__dst, v13);
          v15 = can_execute;
          v16 = __src;
          if (!can_execute)
          {
            goto LABEL_27;
          }
        }

        else
        {
          LOBYTE(v33) = 1;
          v17 = llvm::sys::fs::can_execute(&__dst, v13);
          v15 = v17;
          v16 = __src;
          if (!v17)
          {
            goto LABEL_27;
          }
        }

        v18 = __len;
        if (__len > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_37;
        }

        if (__len >= 0x17)
        {
          operator new();
        }

        HIBYTE(v32) = __len;
        if (__len)
        {
          memmove(&__dst, v16, __len);
        }

        *(&__dst + v18) = 0;
        *(a5 + 24) &= ~1u;
        result = *&__dst;
        *a5 = __dst;
        *(a5 + 16) = v32;
        v16 = __src;
LABEL_27:
        if (v16 != v36)
        {
          free(v16);
        }

        if (v15)
        {
          goto LABEL_33;
        }

LABEL_10:
        a3 += 2;
      }

      while (a3 != v10);
    }
  }

  *(a5 + 24) |= 1u;
  v22 = std::generic_category();
  *a5 = 2;
  *(a5 + 8) = v22;
LABEL_33:
  if (v37[0] != v38)
  {
    free(v37[0]);
  }

  return result;
}

_BYTE *std::string::basic_string<llvm::StringRef,0>(_BYTE *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
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

void MakeErrMsg(uint64_t a1, const void **a2, llvm::sys *this)
{
  v17[2] = *MEMORY[0x277D85DE8];
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
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v6 + 2 >= 0x17)
    {
      operator new();
    }

    memset(&v16, 0, sizeof(v16));
    *(&v16.__r_.__value_.__s + 23) = v6 + 2;
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

      memmove(&v16, v7, v6);
    }

    strcpy(&v16 + v6, ": ");
    llvm::sys::StrError(v3, __p);
    if ((v15 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if ((v15 & 0x80u) == 0)
    {
      v9 = v15;
    }

    else
    {
      v9 = __p[1];
    }

    v10 = std::string::append(&v16, v8, v9);
    v11 = v10->__r_.__value_.__r.__words[0];
    v17[0] = v10->__r_.__value_.__l.__size_;
    *(v17 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
    v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v13 = v17[0];
    *a1 = v11;
    *(a1 + 8) = v13;
    *(a1 + 15) = *(v17 + 7);
    *(a1 + 23) = v12;
    if ((v15 & 0x80000000) == 0)
    {
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_27:
      operator delete(v16.__r_.__value_.__l.__data_);
      return;
    }

    operator delete(__p[0]);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_27;
    }
  }
}

uint64_t llvm::sys::writeFileWithEncoding(_BYTE *a1, uint64_t a2, const void *a3, size_t a4)
{
  LODWORD(v13[0]) = 0;
  v13[1] = std::system_category();
  llvm::raw_fd_ostream::raw_fd_ostream(v10, a1, a2, v13, 3);
  if (LODWORD(v13[0]))
  {
    goto LABEL_2;
  }

  if (a4 <= v10[3] - v11)
  {
    if (a4)
    {
      memcpy(v11, a3, a4);
      v11 += a4;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, a3, a4);
  }

  if (!v12)
  {
LABEL_2:
    v8 = v13[0];
  }

  else
  {
    std::generic_category();
    v8 = 5;
  }

  llvm::raw_fd_ostream::~raw_fd_ostream(v10);
  return v8;
}

uint64_t RedirectIO(uint64_t a1, int a2, uint64_t a3)
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
      std::string::__throw_length_error[abi:nn200100]();
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
    MEMORY[0x259C62C80](&v19, "/dev/null");
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
      MakeErrMsg(a3, &__dst.__r_.__value_.__l.__data_, 0xFFFFFFFFLL);
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
  MakeErrMsg(a3, &__dst.__r_.__value_.__l.__data_, 0xFFFFFFFFLL);
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

uint64_t SetMemoryLimits(unsigned int a1)
{
  v1 = a1 << 20;
  getrlimit(2, &v3);
  v3.rlim_cur = v1;
  setrlimit(2, &v3);
  getrlimit(5, &v3);
  v3.rlim_cur = v1;
  return setrlimit(5, &v3);
}

uint64_t llvm::SmallVectorTemplateBase<llvm::StringRef,true>::growAndEmplaceBack<char const*&>(uint64_t a1, const char **a2)
{
  v3 = *a2;
  if (!*a2)
  {
    v4 = 0;
    v5 = *(a1 + 8);
    if (v5 < *(a1 + 12))
    {
      goto LABEL_3;
    }

LABEL_5:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = strlen(*a2);
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = (*a1 + 16 * v5);
  *v6 = v3;
  v6[1] = v4;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 16 * v6 - 16;
}

llvm::sys::RWMutexImpl *llvm::sys::RWMutexImpl::RWMutexImpl(llvm::sys::RWMutexImpl *this)
{
  *this = 0;
  v2 = malloc_type_malloc(0xC8uLL, 0x3C0F72FBuLL);
  if (!v2)
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v3 = v2;
  bzero(v2, 0xC8uLL);
  pthread_rwlock_init(v3, 0);
  *this = v3;
  return this;
}

{
  *this = 0;
  v2 = malloc_type_malloc(0xC8uLL, 0x3C0F72FBuLL);
  if (!v2)
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v3 = v2;
  bzero(v2, 0xC8uLL);
  pthread_rwlock_init(v3, 0);
  *this = v3;
  return this;
}

void llvm::sys::RWMutexImpl::~RWMutexImpl(pthread_rwlock_t **this)
{
  v1 = *this;
  pthread_rwlock_destroy(*this);
  free(v1);
}

{
  v1 = *this;
  pthread_rwlock_destroy(*this);
  free(v1);
}

void llvm::initSignalsOptions(llvm *this)
{
  if (atomic_load_explicit(qword_27F8758B0, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_27F8758C8, memory_order_acquire))
    {
      return;
    }

LABEL_5:
    return;
  }

  if (!atomic_load_explicit(&qword_27F8758C8, memory_order_acquire))
  {
    goto LABEL_5;
  }
}

uint64_t llvm::sys::RunSignalHandlers(llvm::sys *this)
{
  v1 = 2;
  v2 = 2;
  atomic_compare_exchange_strong(dword_27F875938, &v2, 3u);
  if (v2 == 2)
  {
    result = qword_27F875928(unk_27F875930);
    qword_27F875928 = 0;
    unk_27F875930 = 0;
    atomic_store(0, dword_27F875938);
  }

  atomic_compare_exchange_strong(dword_27F875950, &v1, 3u);
  if (v1 == 2)
  {
    result = qword_27F875940(*algn_27F875948);
    qword_27F875940 = 0;
    *algn_27F875948 = 0;
    atomic_store(0, dword_27F875950);
  }

  v4 = 2;
  v5 = 2;
  atomic_compare_exchange_strong(dword_27F875968, &v5, 3u);
  if (v5 == 2)
  {
    result = qword_27F875958(unk_27F875960);
    qword_27F875958 = 0;
    unk_27F875960 = 0;
    atomic_store(0, dword_27F875968);
  }

  atomic_compare_exchange_strong(dword_27F875980, &v4, 3u);
  if (v4 == 2)
  {
    result = qword_27F875970(*algn_27F875978);
    qword_27F875970 = 0;
    *algn_27F875978 = 0;
    atomic_store(0, dword_27F875980);
  }

  v6 = 2;
  v7 = 2;
  atomic_compare_exchange_strong(dword_27F875998, &v7, 3u);
  if (v7 == 2)
  {
    result = qword_27F875988(unk_27F875990);
    qword_27F875988 = 0;
    unk_27F875990 = 0;
    atomic_store(0, dword_27F875998);
  }

  atomic_compare_exchange_strong(dword_27F8759B0, &v6, 3u);
  if (v6 == 2)
  {
    result = qword_27F8759A0(*algn_27F8759A8);
    qword_27F8759A0 = 0;
    *algn_27F8759A8 = 0;
    atomic_store(0, dword_27F8759B0);
  }

  v8 = 2;
  v9 = 2;
  atomic_compare_exchange_strong(dword_27F8759C8, &v9, 3u);
  if (v9 != 2)
  {
    atomic_compare_exchange_strong(dword_27F8759E0, &v8, 3u);
    if (v8 != 2)
    {
      return result;
    }

LABEL_17:
    result = qword_27F8759D0(*algn_27F8759D8);
    qword_27F8759D0 = 0;
    *algn_27F8759D8 = 0;
    atomic_store(0, dword_27F8759E0);
    return result;
  }

  result = qword_27F8759B8(unk_27F8759C0);
  qword_27F8759B8 = 0;
  unk_27F8759C0 = 0;
  atomic_store(0, dword_27F8759C8);
  atomic_compare_exchange_strong(dword_27F8759E0, &v8, 3u);
  if (v8 == 2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t printSymbolizedStackTrace(unint64_t a1, unint64_t a2, uint64_t a3, int a4, llvm::raw_ostream *a5)
{
  v111 = *MEMORY[0x277D85DE8];
  __src.n128_u64[0] = a1;
  __src.n128_u64[1] = a2;
  v73 = a3;
  v72 = a4;
  if ((DisableSymbolicationFlag & 1) != 0 || getenv("LLVM_DISABLE_SYMBOLIZATION") || llvm::StringRef::find(&__src, "llvm-symbolizer", 0xFuLL, 0) != -1)
  {
    return 0;
  }

  v7 = std::system_category();
  v110 |= 1u;
  v108.n128_u64[0] = 0;
  v108.n128_u64[1] = v7;
  v8 = getenv("LLVM_SYMBOLIZER_PATH");
  if (!v8)
  {
    if (__src.n128_u64[1])
    {
      *v93 = llvm::sys::path::parent_path(__src.n128_u64[0], __src.n128_u64[1], 0);
      *&v93[8] = v12;
      if (v12)
      {
        llvm::sys::findProgramByName("llvm-symbolizer", 0xFuLL, v93, 1, &__p);
        llvm::ErrorOr<std::string>::operator=(&v108, &__p);
        if ((v77 & 1) == 0 && SHIBYTE(v76) < 0)
        {
          operator delete(__p.n128_u64[0]);
        }
      }

      if ((v110 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_17;
  }

  v9 = v8;
  v10 = strlen(v8);
  llvm::sys::findProgramByName(v9, v10, 0, 0, &__p);
  v11 = v110;
  if ((v110 & 1) == 0 && SHIBYTE(v109) < 0)
  {
    operator delete(v108.n128_u64[0]);
    v11 = v110;
  }

  if (v77)
  {
    v110 = v11 | 1;
    v108 = __p;
LABEL_17:
    llvm::sys::findProgramByName("llvm-symbolizer", 0xFuLL, 0, 0, &__p);
    v11 = v110;
    if ((v110 & 1) == 0 && SHIBYTE(v109) < 0)
    {
      operator delete(v108.n128_u64[0]);
      v11 = v110;
    }

    if (v77)
    {
      return 0;
    }
  }

  v110 = v11 & 0xFE;
  v108 = __p;
  v109 = v76;
LABEL_22:
  LOWORD(v78) = 261;
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
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (__src.n128_u64[1] >= 0x17)
    {
      operator new();
    }

    v71 = __src.n128_i8[8];
    if (__src.n128_u64[1])
    {
      memmove(&__dst, __src.n128_u64[0], __src.n128_u64[1]);
    }

    *(&__dst + v13) = 0;
  }

  v101[4] = 0;
  v101[5] = 0;
  v102 = v104;
  v103 = 0x400000000;
  v105 = v107;
  v106 = 0;
  v107[0] = 0;
  v107[1] = 1;
  if (v72)
  {
    if ((v72 & 0x80000000) == 0)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
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

  v69 = 0;
  v99 = v101;
  v100 = xmmword_25736B040;
  v96 = v98;
  v97 = xmmword_25736B040;
  __p.n128_u64[0] = "symbolizer-input";
  LOWORD(v78) = 259;
  llvm::sys::fs::createTemporaryFile(&__p, "", 0, &v69, &v99, 0);
  __p.n128_u64[0] = "symbolizer-output";
  LOWORD(v78) = 259;
  llvm::sys::fs::createTemporaryFile(&__p, "", 0, &v96, 0);
  if ((v100 + 1) > *(&v100 + 1))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(v99 + v100) = 0;
  LOWORD(v78) = 257;
  if (*v99)
  {
    __p.n128_u64[0] = v99;
    v17 = 3;
  }

  else
  {
    v17 = 1;
  }

  LOBYTE(v78) = v17;
  *v93 = v94;
  *&v93[8] = xmmword_257371870;
  v95 = 1;
  llvm::Twine::toVector(&__p, v93);
  if ((v97 + 1) > *(&v97 + 1))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(v96 + v97) = 0;
  LOWORD(v78) = 257;
  if (*v96)
  {
    __p.n128_u64[0] = v96;
    v18 = 3;
  }

  else
  {
    v18 = 1;
  }

  LOBYTE(v78) = v18;
  *v90 = v91;
  *&v90[8] = xmmword_257371870;
  v92 = 1;
  llvm::Twine::toVector(&__p, v90);
  llvm::raw_fd_ostream::raw_fd_ostream(&__p, v69, 1, 0, 0);
  if (v72 >= 1)
  {
    for (j = 0; j < v72; ++j)
    {
      v23 = *(8 * j);
      if (!v23)
      {
        continue;
      }

      v24 = strlen(*(8 * j));
      v25 = v24;
      v26 = v78;
      if (v24 <= v77 - v78)
      {
        if (v24)
        {
          memcpy(v78, v23, v24);
          v26 = &v78[v25];
          v78 += v25;
        }

        p_p = &__p;
        if (v77 != v26)
        {
LABEL_57:
          *v26 = 32;
          ++p_p[2].n128_u64[0];
          v21 = llvm::raw_ostream::operator<<(p_p, *(8 * j));
          v22 = v21[4];
          if (v21[3] == v22)
          {
LABEL_58:
            llvm::raw_ostream::write(v21, "\n", 1uLL);
            continue;
          }

          goto LABEL_48;
        }
      }

      else
      {
        p_p = llvm::raw_ostream::write(&__p, v23, v24);
        v26 = p_p[2].n128_u64[0];
        if (p_p[1].n128_u64[1] != v26)
        {
          goto LABEL_57;
        }
      }

      v20 = llvm::raw_ostream::write(p_p, " ", 1uLL);
      v21 = llvm::raw_ostream::operator<<(v20, *(8 * j));
      v22 = v21[4];
      if (v21[3] == v22)
      {
        goto LABEL_58;
      }

LABEL_48:
      *v22 = 10;
      ++v21[4];
    }
  }

  llvm::raw_fd_ostream::~raw_fd_ostream(&__p);
  v82[0] = v99;
  v82[1] = v100;
  v83 = 1;
  v84 = v96;
  v85 = v97;
  v86 = 1;
  v87 = "";
  v88 = 0;
  v89 = 1;
  v81[0] = xmmword_27983D6C8;
  v81[1] = *&off_27983D6D8;
  v81[2] = xmmword_27983D6E8;
  v81[3] = *&off_27983D6F8;
  if (v109 >= 0)
  {
    v28 = &v108;
  }

  else
  {
    v28 = v108.n128_u64[0];
  }

  if (v109 >= 0)
  {
    v29 = SHIBYTE(v109);
  }

  else
  {
    v29 = v108.n128_u64[1];
  }

  __p.n128_u8[0] = 0;
  LOBYTE(v76) = 0;
  v30 = llvm::sys::ExecuteAndWait(v28, v29, v81, 4, &__p, v82, 3, 0, 0, 0, 0, 0);
  v31 = 0;
  if (v30)
  {
    goto LABEL_121;
  }

  v32 = llvm::SmallString<32u>::c_str(&v96);
  LOWORD(v78) = 257;
  if (*v32)
  {
    __p.n128_u64[0] = v32;
    v33 = 3;
  }

  else
  {
    v33 = 1;
  }

  LOBYTE(v78) = v33;
  llvm::MemoryBuffer::getFile(&__p, 0, 1, 0, 0, &v79);
  v31 = 0;
  if (v80)
  {
    goto LABEL_121;
  }

  v34 = *(v79 + 16) - *(v79 + 8);
  *&v68 = *(v79 + 8);
  *(&v68 + 1) = v34;
  __p.n128_u64[0] = &v76;
  __p.n128_u64[1] = 0x2000000000;
  llvm::StringRef::split(&v68, &__p, "\n", 1uLL, -1, 1);
  v35 = __p.n128_u64[0];
  v67 = 0;
  if (v72 < 1)
  {
    goto LABEL_114;
  }

  for (k = 0; k < v72; LODWORD(v67) = k)
  {
    v66[0] = a5;
    v66[1] = &v67 + 4;
    v66[2] = &v72;
    v66[3] = &v73;
    v66[4] = &v67;
    if (*(8 * k))
    {
      v37 = __p.n128_u64[0];
      if (v35 == (__p.n128_u64[0] + 16 * __p.n128_u32[2]))
      {
LABEL_115:
        v35 = v37;
        v31 = 0;
        goto LABEL_116;
      }

      v35 += 2;
      while (1)
      {
        v39 = *(v35 - 1);
        if (!v39)
        {
          goto LABEL_112;
        }

        v40 = *(v35 - 2);
        printSymbolizedStackTrace(llvm::StringRef,void **,int,llvm::raw_ostream &)::$_0::operator()(v66);
        if (v39 == 1 || *v40 != 16191)
        {
          v41 = *(a5 + 4);
          if (v39 <= *(a5 + 3) - v41)
          {
            memcpy(v41, v40, v39);
            v43 = (*(a5 + 4) + v39);
            *(a5 + 4) = v43;
            v42 = a5;
            if (v43 >= *(a5 + 3))
            {
LABEL_82:
              llvm::raw_ostream::write(v42, 32);
              goto LABEL_85;
            }
          }

          else
          {
            v42 = llvm::raw_ostream::write(a5, v40, v39);
            v43 = *(v42 + 4);
            if (v43 >= *(v42 + 3))
            {
              goto LABEL_82;
            }
          }

          *(v42 + 4) = v43 + 1;
          *v43 = 32;
        }

LABEL_85:
        v37 = __p.n128_u64[0];
        if (v35 == (__p.n128_u64[0] + 16 * __p.n128_u32[2]))
        {
          goto LABEL_115;
        }

        v44 = *v35;
        v45 = v35[1];
        if (v45 >= 2 && *v44 == 16191)
        {
          v49 = *(a5 + 4);
          if (*(a5 + 3) == v49)
          {
            v50 = llvm::raw_ostream::write(a5, "(", 1uLL);
          }

          else
          {
            *v49 = 40;
            ++*(a5 + 4);
            v50 = a5;
          }

          v51 = *(8 * v67);
          if (v51)
          {
            v52 = v50;
            v53 = strlen(*(8 * v67));
            v50 = v52;
            if (v53 <= *(v52 + 3) - *(v52 + 4))
            {
              if (v53)
              {
                memcpy(*(v52 + 4), v51, v53);
                v50 = v52;
                *(v52 + 4) += v53;
              }
            }

            else
            {
              v50 = llvm::raw_ostream::write(v52, v51, v53);
            }
          }

          v54 = *(v50 + 4);
          if (v54 >= *(v50 + 3))
          {
            v50 = llvm::raw_ostream::write(v50, 43);
          }

          else
          {
            *(v50 + 4) = v54 + 1;
            *v54 = 43;
          }

          v62[0] = *(8 * v67);
          v62[1] = 0;
          v63 = 0;
          v64 = 1;
          v65 = 1;
          v47 = llvm::raw_ostream::operator<<(v50, v62);
          v55 = v47[4];
          if (v47[3] != v55)
          {
            *v55 = 41;
            ++v47[4];
            goto LABEL_106;
          }

          v44 = ")";
          v45 = 1;
        }

        else
        {
          v46 = *(a5 + 4);
          if (v45 <= *(a5 + 3) - v46)
          {
            if (v45)
            {
              v48 = v35[1];
              memcpy(v46, v44, v45);
              *(a5 + 4) += v48;
            }

            goto LABEL_106;
          }

          v47 = a5;
        }

        llvm::raw_ostream::write(v47, v44, v45);
LABEL_106:
        v56 = *(a5 + 4);
        if (*(a5 + 3) == v56)
        {
          llvm::raw_ostream::write(a5, "\n", 1uLL);
        }

        else
        {
          *v56 = 10;
          ++*(a5 + 4);
        }

        v37 = __p.n128_u64[0];
        v38 = v35 + 2;
        v35 += 4;
        if (v38 == (__p.n128_u64[0] + 16 * __p.n128_u32[2]))
        {
          goto LABEL_115;
        }
      }
    }

    printSymbolizedStackTrace(llvm::StringRef,void **,int,llvm::raw_ostream &)::$_0::operator()(v66);
    v57 = *(a5 + 4);
    if (v57 >= *(a5 + 3))
    {
      llvm::raw_ostream::write(a5, 10);
    }

    else
    {
      *(a5 + 4) = v57 + 1;
      *v57 = 10;
    }

LABEL_112:
    k = v67 + 1;
  }

  v35 = __p.n128_u64[0];
LABEL_114:
  v31 = 1;
LABEL_116:
  if (v35 != &v76)
  {
    v58 = v31;
    free(v35);
    v31 = v58;
  }

  if ((v80 & 1) == 0)
  {
    v59 = v79;
    v79 = 0;
    if (v59)
    {
      v60 = v31;
      (*(*v59 + 8))(v59);
      v31 = v60;
    }
  }

LABEL_121:
  v61 = v31;
  if (v92 == 1)
  {
    LOWORD(v78) = 261;
    __p = *v90;
    llvm::sys::fs::remove(&__p, 1);
  }

  if (*v90 != v91)
  {
    free(*v90);
  }

  if (v95 == 1)
  {
    LOWORD(v78) = 261;
    __p = *v93;
    llvm::sys::fs::remove(&__p, 1);
  }

  if (*v93 != v94)
  {
    free(*v93);
  }

  if (v96 != v98)
  {
    free(v96);
  }

  if (v99 != v101)
  {
    free(v99);
  }

  if (v103)
  {
    llvm::deallocate_buffer(*v102, 0x1000);
  }

  if (v106)
  {
    llvm::deallocate_buffer(*v105, v105[1]);
  }

  if (v105 != v107)
  {
    free(v105);
  }

  if (v102 != v104)
  {
    free(v102);
  }

  if (v71 < 0)
  {
    operator delete(__dst);
  }

  if ((v110 & 1) == 0 && SHIBYTE(v109) < 0)
  {
    operator delete(v108.n128_u64[0]);
  }

  return v61;
}

__n128 llvm::ErrorOr<std::string>::operator=(__n128 *a1, __n128 *a2)
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

uint64_t llvm::SmallString<32u>::c_str(void *a1)
{
  v1 = a1[1];
  if ((v1 + 1) > a1[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*a1 + v1) = 0;
  return *a1;
}

void printSymbolizedStackTrace(llvm::StringRef,void **,int,llvm::raw_ostream &)::$_0::operator()(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = (*v2)++;
  v16[0] = "#{0}";
  v16[1] = 4;
  v16[2] = &v20;
  v16[3] = 1;
  v17 = 1;
  v18 = &unk_2868A45E0;
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
  v24 = &unk_2868A3EF8;
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

uint64_t printMarkupStackTrace(const void *a1, size_t a2)
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
      std::string::__throw_length_error[abi:nn200100]();
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

uint64_t llvm::sys::unregisterHandlers(llvm::sys *this)
{
  v1 = atomic_load(_MergedGlobals_23);
  if (v1)
  {
    v2 = &unk_27F8759E8;
    do
    {
      result = sigaction(v2[1].__sigaction_u.__sa_handler, v2, 0);
      atomic_fetch_add(_MergedGlobals_23, 0xFFFFFFFF);
      v2 = (v2 + 24);
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t llvm::sys::CleanupOnSignal(uint64_t this)
{
  v1 = this;
  if ((this - 29) > 1)
  {
    v5 = atomic_exchange(&qword_27F8758A8, 0);
    if (v5)
    {
      v6 = v5;
      do
      {
        v7 = atomic_exchange(v6, 0);
        if (v7)
        {
          this = stat(v7, &v8);
          if (!this && (v8.st_mode & 0xF000) == 0x8000)
          {
            this = unlink(v7);
            atomic_exchange(v6, v7);
          }
        }

        v6 = atomic_load((v6 + 8));
      }

      while (v6);
    }

    atomic_exchange(&qword_27F8758A8, v5);
    if (v1 > 0x1F || ((1 << v1) & 0x8000A006) == 0)
    {
      return llvm::sys::RunSignalHandlers(this);
    }
  }

  else
  {
    this = __error();
    v2 = this;
    v3 = *this;
    v4 = atomic_load(&qword_27F875898);
    if (v4)
    {
      this = v4();
    }

    *v2 = v3;
  }

  return this;
}

int *InfoSignalHandler()
{
  result = __error();
  v1 = result;
  v2 = *result;
  v3 = atomic_load(&qword_27F875898);
  if (v3)
  {
    result = v3();
  }

  *v1 = v2;
  return result;
}

void llvm::sys::RunInterruptHandlers(llvm::sys *this)
{
  v1 = atomic_exchange(&qword_27F8758A8, 0);
  if (v1)
  {
    v2 = v1;
    do
    {
      v3 = atomic_exchange(v2, 0);
      if (v3 && !stat(v3, &v4) && (v4.st_mode & 0xF000) == 0x8000)
      {
        unlink(v3);
        atomic_exchange(v2, v3);
      }

      v2 = atomic_load((v2 + 8));
    }

    while (v2);
  }

  atomic_exchange(&qword_27F8758A8, v1);
}

void RegisterHandlers(void)
{
  if (!atomic_load_explicit(qword_27F8758F8, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F8758F8, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

  v0 = qword_27F8758F8[0];
  std::recursive_mutex::lock(qword_27F8758F8[0]);
  if (!atomic_load(_MergedGlobals_23))
  {
    v2 = atomic_load(_MergedGlobals_23);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v3 = (&unk_27F8759E8 + 24 * v2);
    sigaction(1, &v39, v3);
    LODWORD(v3[1].__sigaction_u.__sa_handler) = 1;
    atomic_fetch_add(_MergedGlobals_23, 1u);
    v4 = atomic_load(_MergedGlobals_23);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v5 = (&unk_27F8759E8 + 24 * v4);
    sigaction(2, &v39, v5);
    LODWORD(v5[1].__sigaction_u.__sa_handler) = 2;
    atomic_fetch_add(_MergedGlobals_23, 1u);
    v6 = atomic_load(_MergedGlobals_23);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v7 = (&unk_27F8759E8 + 24 * v6);
    sigaction(15, &v39, v7);
    LODWORD(v7[1].__sigaction_u.__sa_handler) = 15;
    atomic_fetch_add(_MergedGlobals_23, 1u);
    v8 = atomic_load(_MergedGlobals_23);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v9 = (&unk_27F8759E8 + 24 * v8);
    sigaction(31, &v39, v9);
    LODWORD(v9[1].__sigaction_u.__sa_handler) = 31;
    atomic_fetch_add(_MergedGlobals_23, 1u);
    v10 = atomic_load(_MergedGlobals_23);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v11 = (&unk_27F8759E8 + 24 * v10);
    sigaction(4, &v39, v11);
    LODWORD(v11[1].__sigaction_u.__sa_handler) = 4;
    atomic_fetch_add(_MergedGlobals_23, 1u);
    v12 = atomic_load(_MergedGlobals_23);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v13 = (&unk_27F8759E8 + 24 * v12);
    sigaction(5, &v39, v13);
    LODWORD(v13[1].__sigaction_u.__sa_handler) = 5;
    atomic_fetch_add(_MergedGlobals_23, 1u);
    v14 = atomic_load(_MergedGlobals_23);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v15 = (&unk_27F8759E8 + 24 * v14);
    sigaction(6, &v39, v15);
    LODWORD(v15[1].__sigaction_u.__sa_handler) = 6;
    atomic_fetch_add(_MergedGlobals_23, 1u);
    v16 = atomic_load(_MergedGlobals_23);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v17 = (&unk_27F8759E8 + 24 * v16);
    sigaction(8, &v39, v17);
    LODWORD(v17[1].__sigaction_u.__sa_handler) = 8;
    atomic_fetch_add(_MergedGlobals_23, 1u);
    v18 = atomic_load(_MergedGlobals_23);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v19 = (&unk_27F8759E8 + 24 * v18);
    sigaction(10, &v39, v19);
    LODWORD(v19[1].__sigaction_u.__sa_handler) = 10;
    atomic_fetch_add(_MergedGlobals_23, 1u);
    v20 = atomic_load(_MergedGlobals_23);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v21 = (&unk_27F8759E8 + 24 * v20);
    sigaction(11, &v39, v21);
    LODWORD(v21[1].__sigaction_u.__sa_handler) = 11;
    atomic_fetch_add(_MergedGlobals_23, 1u);
    v22 = atomic_load(_MergedGlobals_23);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v23 = (&unk_27F8759E8 + 24 * v22);
    sigaction(3, &v39, v23);
    LODWORD(v23[1].__sigaction_u.__sa_handler) = 3;
    atomic_fetch_add(_MergedGlobals_23, 1u);
    v24 = atomic_load(_MergedGlobals_23);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v25 = (&unk_27F8759E8 + 24 * v24);
    sigaction(12, &v39, v25);
    LODWORD(v25[1].__sigaction_u.__sa_handler) = 12;
    atomic_fetch_add(_MergedGlobals_23, 1u);
    v26 = atomic_load(_MergedGlobals_23);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v27 = (&unk_27F8759E8 + 24 * v26);
    sigaction(24, &v39, v27);
    LODWORD(v27[1].__sigaction_u.__sa_handler) = 24;
    atomic_fetch_add(_MergedGlobals_23, 1u);
    v28 = atomic_load(_MergedGlobals_23);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v29 = (&unk_27F8759E8 + 24 * v28);
    sigaction(25, &v39, v29);
    LODWORD(v29[1].__sigaction_u.__sa_handler) = 25;
    atomic_fetch_add(_MergedGlobals_23, 1u);
    v30 = atomic_load(_MergedGlobals_23);
    v39.__sigaction_u.__sa_handler = SignalHandler;
    *&v39.sa_mask = 0x1500000000;
    v31 = (&unk_27F8759E8 + 24 * v30);
    sigaction(7, &v39, v31);
    LODWORD(v31[1].__sigaction_u.__sa_handler) = 7;
    atomic_fetch_add(_MergedGlobals_23, 1u);
    if (atomic_load(&qword_27F8758A0))
    {
      v33 = atomic_load(_MergedGlobals_23);
      v39.__sigaction_u.__sa_handler = SignalHandler;
      *&v39.sa_mask = 0x1500000000;
      v34 = &_MergedGlobals_23[6 * v33];
      sigaction(13, &v39, v34 + 23);
      v34[96] = 13;
      atomic_fetch_add(_MergedGlobals_23, 1u);
    }

    v35 = atomic_load(_MergedGlobals_23);
    v39.__sigaction_u.__sa_handler = InfoSignalHandler;
    *&v39.sa_mask = 0x100000000;
    v36 = (&unk_27F8759E8 + 24 * v35);
    sigaction(30, &v39, v36);
    LODWORD(v36[1].__sigaction_u.__sa_handler) = 30;
    atomic_fetch_add(_MergedGlobals_23, 1u);
    v37 = atomic_load(_MergedGlobals_23);
    v39.__sigaction_u.__sa_handler = InfoSignalHandler;
    *&v39.sa_mask = 0x100000000;
    v38 = (&unk_27F8759E8 + 24 * v37);
    sigaction(29, &v39, v38);
    LODWORD(v38[1].__sigaction_u.__sa_handler) = 29;
    atomic_fetch_add(_MergedGlobals_23, 1u);
  }

  std::recursive_mutex::unlock(v0);
}

void llvm::sys::RemoveFileOnSignal(void *__src, size_t __len)
{
  if (atomic_load_explicit(qword_27F8758E0, memory_order_acquire))
  {
    if (__src)
    {
LABEL_3:
      if (__len >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (__len >= 0x17)
      {
        operator new();
      }

      HIBYTE(v5) = __len;
      if (__len)
      {
        memmove(__dst, __src, __len);
      }

      *(__dst + __len) = 0;
LABEL_12:
      operator new();
    }
  }

  else
  {
    if (__src)
    {
      goto LABEL_3;
    }
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v5 = 0;
  goto LABEL_12;
}

void llvm::sys::DontRemoveFileOnSignal(const void *a1, size_t a2)
{
  if (!a1)
  {
    __dst = 0;
    v10 = 0;
    v11 = 0;
    if (atomic_load_explicit(qword_27F875910, memory_order_acquire))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a2 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v11) = a2;
  if (a2)
  {
    memmove(&__dst, a1, a2);
  }

  *(&__dst + a2) = 0;
  if (!atomic_load_explicit(qword_27F875910, memory_order_acquire))
  {
LABEL_11:
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_27F875910, llvm::object_creator<llvm::sys::SmartMutex<true>>::call, llvm::object_deleter<llvm::sys::SmartMutex<true>>::call);
  }

LABEL_12:
  v3 = qword_27F875910[0];
  std::recursive_mutex::lock(qword_27F875910[0]);
  for (i = atomic_load(&qword_27F8758A8); i; i = atomic_load(i + 1))
  {
    v5 = atomic_load(i);
    if (v5)
    {
      v6 = strlen(v5);
      if ((SHIBYTE(v11) & 0x8000000000000000) != 0)
      {
        if (v6 != v10)
        {
          continue;
        }

        if (v6 == -1)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (memcmp(__dst, v5, v6))
        {
          continue;
        }

LABEL_24:
        v7 = atomic_exchange(i, 0);
        if (v7)
        {
          free(v7);
        }

        continue;
      }

      if (v6 == SHIBYTE(v11) && !memcmp(&__dst, v5, v6))
      {
        goto LABEL_24;
      }
    }
  }

  std::recursive_mutex::unlock(v3);
  if (SHIBYTE(v11) < 0)
  {
    v8 = __dst;

    operator delete(v8);
  }
}

void llvm::sys::AddSignalHandler(llvm::sys *this, void (*a2)(void *), void *a3)
{
  v4 = 0;
  v5 = &qword_27F875928;
  v6 = dword_27F875938;
  atomic_compare_exchange_strong(dword_27F875938, &v4, 1u);
  if (v4)
  {
    v7 = 0;
    v5 = &qword_27F875940;
    v6 = dword_27F875950;
    atomic_compare_exchange_strong(dword_27F875950, &v7, 1u);
    if (v7)
    {
      v8 = 0;
      v5 = &qword_27F875958;
      v6 = dword_27F875968;
      atomic_compare_exchange_strong(dword_27F875968, &v8, 1u);
      if (v8)
      {
        v9 = 0;
        v5 = &qword_27F875970;
        v6 = dword_27F875980;
        atomic_compare_exchange_strong(dword_27F875980, &v9, 1u);
        if (v9)
        {
          v10 = 0;
          v5 = &qword_27F875988;
          v6 = dword_27F875998;
          atomic_compare_exchange_strong(dword_27F875998, &v10, 1u);
          if (v10)
          {
            v11 = 0;
            v5 = &qword_27F8759A0;
            v6 = dword_27F8759B0;
            atomic_compare_exchange_strong(dword_27F8759B0, &v11, 1u);
            if (v11)
            {
              v12 = 0;
              v5 = &qword_27F8759B8;
              v6 = dword_27F8759C8;
              atomic_compare_exchange_strong(dword_27F8759C8, &v12, 1u);
              if (v12)
              {
                v13 = 0;
                v5 = &qword_27F8759D0;
                v6 = dword_27F8759E0;
                atomic_compare_exchange_strong(dword_27F8759E0, &v13, 1u);
                if (v13)
                {
                  llvm::report_fatal_error("too many signal callbacks already registered", 1);
                }
              }
            }
          }
        }
      }
    }
  }

  *v5 = this;
  v5[1] = a2;
  atomic_store(2u, v6);

  RegisterHandlers();
}

uint64_t llvm::sys::PrintStackTrace(llvm::sys *this, llvm::raw_ostream *a2)
{
  v2 = a2;
  result = backtrace(&qword_27F875B98, 256);
  if (result)
  {
    v5 = result;
    if (!v2)
    {
      v2 = result;
    }

    printMarkupStackTrace(qword_27F875880, *algn_27F875888);
    result = printSymbolizedStackTrace(qword_27F875880, *algn_27F875888, &qword_27F875B98, v2, this);
    if ((result & 1) == 0)
    {
      v6 = *(this + 4);
      if (*(this + 3) - v6 > 0x90uLL)
      {
        *(this + 4) += 145;
        if (v5 < 1)
        {
          return result;
        }
      }

      else
      {
        if (v5 < 1)
        {
          return result;
        }
      }

      v7 = 0;
      v8 = v5;
      v9 = &qword_27F875B98;
      v10 = v5;
      do
      {
        while (1)
        {
          dladdr(*v9, &v33);
          dli_fname = v33.dli_fname;
          v13 = strrchr(v33.dli_fname, 47);
          if (v13)
          {
            break;
          }

          v14 = strlen(dli_fname);
          if (v14 > v7)
          {
            v7 = v14;
          }

          ++v9;
          if (!--v10)
          {
            goto LABEL_19;
          }
        }

        v11 = strlen(v13) - 1;
        if (v11 > v7)
        {
          v7 = v11;
        }

        ++v9;
        --v10;
      }

      while (v10);
      do
      {
        while (1)
        {
LABEL_19:
          v15 = (&_MergedGlobals_23 + 8 * v10);
          dladdr(v15[100], &v33);
          v29 = &unk_28685E208;
          v30 = "%-2d";
          LODWORD(v31) = v10;
          llvm::raw_ostream::operator<<(this, &v29);
          v16 = v33.dli_fname;
          v17 = strrchr(v33.dli_fname, 47);
          v29 = &unk_2868A4628;
          v30 = " %-*s";
          LODWORD(v31) = v7;
          if (v17)
          {
            v32 = v17 + 1;
          }

          else
          {
            v32 = v16;
          }

          llvm::raw_ostream::operator<<(this, &v29);
          v18 = v15[100];
          v29 = &unk_2868A4660;
          v30 = " %#0*lx";
          LODWORD(v31) = 18;
          v32 = v18;
          result = llvm::raw_ostream::operator<<(this, &v29);
          if (v33.dli_sname)
          {
            v19 = *(this + 4);
            if (v19 >= *(this + 3))
            {
              llvm::raw_ostream::write(this, 32);
            }

            else
            {
              *(this + 4) = v19 + 1;
              *v19 = 32;
            }

            v20 = strlen(v33.dli_sname);
            v21 = llvm::itaniumDemangle(v33.dli_sname, v20);
            if (v21)
            {
              v22 = v21;
              v23 = strlen(v21);
              v24 = *(this + 4);
              if (v23 <= *(this + 3) - v24)
              {
                if (v23)
                {
                  memcpy(v24, v22, v23);
                  *(this + 4) += v23;
                }
              }

              else
              {
                llvm::raw_ostream::write(this, v22, v23);
              }

              free(v22);
            }

            else if (v33.dli_sname)
            {
              v25 = strlen(v33.dli_sname);
              v26 = *(this + 4);
              if (v25 <= *(this + 3) - v26)
              {
                if (v25)
                {
                  memcpy(v26, v33.dli_sname, v25);
                  *(this + 4) += v25;
                }
              }

              else
              {
                llvm::raw_ostream::write(this, v33.dli_sname, v25);
              }
            }

            v27 = v15[100] - v33.dli_saddr;
            v29 = &unk_28689ED98;
            v30 = " + %tu";
            v31 = v27;
            result = llvm::raw_ostream::operator<<(this, &v29);
          }

          v28 = *(this + 4);
          if (v28 >= *(this + 3))
          {
            break;
          }

          *(this + 4) = v28 + 1;
          *v28 = 10;
          if (v8 == ++v10)
          {
            return result;
          }
        }

        result = llvm::raw_ostream::write(this, 10);
        ++v10;
      }

      while (v8 != v10);
    }
  }

  return result;
}

char *llvm::sys::PrintStackTraceOnErrorSignal(uint64_t a1, uint64_t a2, char a3)
{
  v4 = 0;
  qword_27F875880 = a1;
  *algn_27F875888 = a2;
  v5 = dword_27F875938;
  atomic_compare_exchange_strong(dword_27F875938, &v4, 1u);
  if (v4)
  {
    v7 = 0;
    v6 = &qword_27F875940;
    v5 = dword_27F875950;
    atomic_compare_exchange_strong(dword_27F875950, &v7, 1u);
    if (v7)
    {
      v8 = 0;
      v6 = &qword_27F875958;
      v5 = dword_27F875968;
      atomic_compare_exchange_strong(dword_27F875968, &v8, 1u);
      if (v8)
      {
        v9 = 0;
        v6 = &qword_27F875970;
        v5 = dword_27F875980;
        atomic_compare_exchange_strong(dword_27F875980, &v9, 1u);
        if (v9)
        {
          v10 = 0;
          v6 = &qword_27F875988;
          v5 = dword_27F875998;
          atomic_compare_exchange_strong(dword_27F875998, &v10, 1u);
          if (v10)
          {
            v11 = 0;
            v6 = &qword_27F8759A0;
            v5 = dword_27F8759B0;
            atomic_compare_exchange_strong(dword_27F8759B0, &v11, 1u);
            if (v11)
            {
              v12 = 0;
              v6 = &qword_27F8759B8;
              v5 = dword_27F8759C8;
              atomic_compare_exchange_strong(dword_27F8759C8, &v12, 1u);
              if (v12)
              {
                v13 = 0;
                v6 = &qword_27F8759D0;
                v5 = dword_27F8759E0;
                atomic_compare_exchange_strong(dword_27F8759E0, &v13, 1u);
                if (v13)
                {
                  llvm::report_fatal_error("too many signal callbacks already registered", 1);
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v6 = &qword_27F875928;
  }

  *v6 = PrintStackTraceSignalHandler;
  v6[1] = 0;
  atomic_store(2u, v5);
  RegisterHandlers();
  if ((a3 & 1) != 0 || (result = getenv("LLVM_DISABLE_CRASH_REPORT")) != 0)
  {
    v15 = *MEMORY[0x277D85F48];

    return task_set_exception_ports(v15, 0x400u, 0, -2147483645, 5);
  }

  return result;
}

uint64_t PrintStackTraceSignalHandler(llvm *a1)
{
  v1 = llvm::errs(a1);

  return llvm::sys::PrintStackTrace(v1, 0);
}

uint64_t SignalHandler(unsigned int a1)
{
  v2 = atomic_load(_MergedGlobals_23);
  if (v2)
  {
    v3 = &unk_27F8759E8;
    do
    {
      sigaction(v3[1].__sigaction_u.__sa_handler, v3, 0);
      atomic_fetch_add(_MergedGlobals_23, 0xFFFFFFFF);
      v3 = (v3 + 24);
      --v2;
    }

    while (v2);
  }

  v10 = -1;
  v4 = sigprocmask(2, &v10, 0);
  v5 = atomic_exchange(&qword_27F8758A8, 0);
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = atomic_exchange(v6, 0);
      if (v7)
      {
        v4 = stat(v7, &v11);
        if (!v4 && (v11.st_mode & 0xF000) == 0x8000)
        {
          v4 = unlink(v7);
          atomic_exchange(v6, v7);
        }
      }

      v6 = atomic_load((v6 + 8));
    }

    while (v6);
  }

  atomic_exchange(&qword_27F8758A8, v5);
  if (a1 <= 0x1F)
  {
    if (((1 << a1) & 0x80008006) != 0)
    {
      v8 = atomic_exchange(&qword_27F875890, 0);
      if (v8)
      {
        return v8(v4);
      }

      return raise(a1);
    }

    if (a1 == 13)
    {
      v8 = atomic_exchange(&qword_27F8758A0, 0);
      if (v8)
      {
        return v8(v4);
      }

      return raise(a1);
    }
  }

  return llvm::sys::RunSignalHandlers(v4);
}

uint64_t llvm::object_deleter<llvm::cl::opt<BOOL,true,llvm::cl::parser<BOOL>>>::call(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>::opt<char [22],llvm::cl::value_desc,llvm::cl::desc,llvm::cl::LocationClass<std::string>,llvm::cl::OptionHidden>(uint64_t a1, char *a2, _OWORD *a3, _OWORD *a4, const std::string **a5, _WORD *a6)
{
  *a1 = &unk_28689F010;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  *(a1 + 64) = a1 + 80;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v13 = *(a1 + 72);
  if (v13 >= *(a1 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a1 + 64) + 8 * v13) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_28689F108;
  *a1 = &unk_2868A1CB0;
  *(a1 + 176) = &unk_28689F5B8;
  *(a1 + 184) = &unk_2868A1D60;
  *(a1 + 208) = a1 + 184;
  llvm::cl::apply<llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>,char [22],llvm::cl::value_desc,llvm::cl::desc,llvm::cl::LocationClass<std::string>,llvm::cl::OptionHidden>(a1, a2, a3, a4, a5, a6);
  llvm::cl::Option::addArgument(a1);
  return a1;
}

uint64_t llvm::cl::apply<llvm::cl::opt<std::string,true,llvm::cl::parser<std::string>>,char [22],llvm::cl::value_desc,llvm::cl::desc,llvm::cl::LocationClass<std::string>,llvm::cl::OptionHidden>(uint64_t a1, char *__s, _OWORD *a3, _OWORD *a4, const std::string **a5, _WORD *a6)
{
  v12 = strlen(__s);
  v13 = llvm::cl::Option::setArgStr(a1, __s, v12);
  *(a1 + 48) = *a3;
  *(a1 + 32) = *a4;
  if (*(a1 + 128))
  {
    v17 = "cl::location(x) specified more than once!";
    v18 = 259;
    v14 = llvm::errs(v13);
    result = llvm::cl::Option::error(a1, &v17, 0, 0, v14);
  }

  else
  {
    v16 = *a5;
    *(a1 + 128) = *a5;
    *(a1 + 168) = 1;
    result = std::string::operator=((a1 + 144), v16);
  }

  *(a1 + 10) = (32 * (*a6 & 3)) | *(a1 + 10) & 0xFF9F;
  return result;
}

uint64_t llvm::object_deleter<anonymous namespace::FilesToRemoveCleanup>::call(uint64_t result)
{
  if (result)
  {
    v1 = atomic_exchange(&qword_27F8758A8, 0);
    if (v1)
    {
      MEMORY[0x259C63180]();
    }

    JUMPOUT(0x259C63180);
  }

  return result;
}

void anonymous namespace::FileToRemoveList::~FileToRemoveList(atomic_ullong *this)
{
  v2 = atomic_exchange(this + 1, 0);
  if (v2)
  {
    MEMORY[0x259C63180]();
  }

  v3 = atomic_exchange(this, 0);
  if (v3)
  {
    free(v3);
  }
}

uint64_t llvm::ThreadPoolStrategy::compute_thread_count(llvm::ThreadPoolStrategy *this)
{
  if (*(this + 4) == 1)
  {
    v2 = std::thread::hardware_concurrency();
    if (v2 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v3;
    }

    v5 = *this;
    if (!*this)
    {
      return result;
    }

LABEL_16:
    if (v5 >= result)
    {
      v6 = result;
    }

    else
    {
      v6 = v5;
    }

    if (*(this + 5))
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  if ((atomic_load_explicit(&qword_27F8763A0, memory_order_acquire) & 1) == 0)
  {
    llvm::ThreadPoolStrategy::compute_thread_count();
  }

  if (_MergedGlobals_24 <= 1)
  {
    result = 1;
  }

  else
  {
    result = _MergedGlobals_24;
  }

  v5 = *this;
  if (*this)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t llvm::get_physical_cores(llvm *this)
{
  if ((atomic_load_explicit(&qword_27F8763A0, memory_order_acquire) & 1) == 0)
  {
    llvm::ThreadPoolStrategy::compute_thread_count();
  }

  return _MergedGlobals_24;
}

pthread_t llvm::llvm_execute_on_thread_impl(void *(__cdecl *a1)(void *), void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = pthread_attr_init(&v13);
  if (v6)
  {
    ReportErrnumFatal("pthread_attr_init failed", v6);
  }

  if ((a3 & 0x100000000) != 0)
  {
    v7 = pthread_attr_setstacksize(&v13, a3);
    if (v7)
    {
      ReportErrnumFatal("pthread_attr_setstacksize failed", v7);
    }
  }

  v12 = 0;
  v8 = pthread_create(&v12, &v13, a1, a2);
  if (v8)
  {
    ReportErrnumFatal("pthread_create failed", v8);
  }

  v9 = v12;
  v10 = pthread_attr_destroy(&v13);
  if (v10)
  {
    ReportErrnumFatal("pthread_attr_destroy failed", v10);
  }

  return v9;
}

void ReportErrnumFatal(char *__s, llvm::sys *a2)
{
  memset(v5, 0, sizeof(v5));
  std::string::basic_string[abi:nn200100]<0>(&v3, __s);
  MakeErrMsg(v5, &v3.__r_.__value_.__l.__data_, a2);
  std::string::~string(&v3);
  v4 = 260;
  v3.__r_.__value_.__r.__words[0] = v5;
  llvm::report_fatal_error(&v3, 1);
}

llvm::sys *llvm::llvm_thread_detach_impl(_opaque_pthread_t *this, _opaque_pthread_t *a2)
{
  result = pthread_detach(this);
  if (result)
  {
    ReportErrnumFatal("pthread_detach failed", result);
  }

  return result;
}

llvm::sys *llvm::llvm_thread_join_impl(_opaque_pthread_t *this, _opaque_pthread_t *a2)
{
  result = pthread_join(this, 0);
  if (result)
  {
    ReportErrnumFatal("pthread_join failed", result);
  }

  return result;
}

uint64_t llvm::get_threadid(llvm *this)
{
  {
    return *llvm::get_threadid(void)::Self();
  }

  llvm::get_threadid(void)::$_0::operator()();
  v3 = llvm::get_threadid(void)::Self();
  *v3 = v4;
  return *v5;
}

uint64_t llvm::get_threadid(void)::$_0::operator()()
{
  v0 = MEMORY[0x259C63750]();
  v1 = llvm::get_threadid(void)::Self();
  mach_port_deallocate(v2, *v1);
  return v0;
}

void llvm::set_thread_name(llvm *this, const llvm::Twine *a2)
{
  v7[8] = *MEMORY[0x277D85DE8];
  v5 = v7;
  v6 = xmmword_257370CF0;
  v2 = llvm::Twine::toNullTerminatedStringRef(this, &v5);
  v4 = v3 - 63;
  if (v3 < v3 - 63)
  {
    v4 = v3;
  }

  if (v3 <= 0x3F)
  {
    v4 = 0;
  }

  pthread_setname_np((v4 + v2));
  if (v5 != v7)
  {
    free(v5);
  }
}

size_t llvm::get_thread_name(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  v2 = pthread_self();
  pthread_getname_np(v2, __s, 0x40uLL);
  result = strlen(__s);
  v4 = result;
  v5 = a1[1];
  if (a1[2] < v5 + result)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (result)
  {
    result = memcpy((*a1 + v5), __s, result);
    v5 = a1[1];
  }

  a1[1] = v5 + v4;
  return result;
}

BOOL llvm::set_thread_priority(int a1)
{
  if (a1 == 1)
  {
    v1 = 17;
  }

  else
  {
    v1 = 9;
  }

  if (a1 == 2)
  {
    v2 = QOS_CLASS_DEFAULT;
  }

  else
  {
    v2 = v1;
  }

  return pthread_set_qos_class_self_np(v2, 0) == 0;
}

uint64_t computeHostNumPhysicalCores(void)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v1 = 4;
  sysctlbyname("hw.physicalcpu", &v2, &v1, 0, 0);
  result = v2;
  if (!v2)
  {
    *v3 = 0x1900000006;
    sysctl(v3, 2u, &v2, &v1, 0, 0);
    result = v2;
    if (!v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

unint64_t llvm::get_threadpool_strategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return a3;
  }

  if (a2 == 3 && (*a1 == 27745 ? (v3 = *(a1 + 2) == 108) : (v3 = 0), v3))
  {
    v5 = 0;
    v6 = 0x100000000;
  }

  else
  {
    v8 = 0;
    if ((llvm::getAsUnsignedInteger(a1, a2, 0xA, &v8) & 1) != 0 || HIDWORD(v8))
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      if (v8)
      {
        v5 = v8;
      }

      else
      {
        v5 = a3;
      }

      if (v8)
      {
        v6 = v8 & 0xFFFFFF00 | 0x100000000;
      }

      else
      {
        v6 = a3 & 0xFFFFFFFFFFFFFF00;
      }
    }
  }

  return v6 | v5;
}

llvm::sys::Watchdog *llvm::sys::Watchdog::Watchdog(llvm::sys::Watchdog *this, unsigned int a2)
{
  alarm(a2);
  return this;
}

{
  alarm(a2);
  return this;
}

void llvm::sys::Watchdog::~Watchdog(llvm::sys::Watchdog *this)
{
  alarm(0);
}

{
  alarm(0);
}

uint64_t llvm::demangle@<X0>(_WORD *a1@<X0>, unint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  result = llvm::nonMicrosoftDemangle(a1, a2, a3, 1);
  if ((result & 1) == 0)
  {
    if (!a2 || *a1 != 95 || (result = llvm::nonMicrosoftDemangle((a1 + 1), a2 - 1, a3, 0), (result & 1) == 0))
    {
      llvm::microsoftDemangle();
    }
  }

  return result;
}

uint64_t llvm::nonMicrosoftDemangle(_WORD *a1, unint64_t a2, std::string *a3, int a4)
{
  if (!a4)
  {
LABEL_5:
    if (!a2)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
    return 0;
  }

  if (*a1 == 46)
  {
    v5 = (a1 + 1);
    v6 = a2 - 1;
    MEMORY[0x259C62C80](a3, ".");
    a1 = v5;
    a2 = v6;
    goto LABEL_5;
  }

LABEL_6:
  v7 = 0;
  v8 = 0;
  while (*(a1 + v7) == 95)
  {
    ++v8;
    if (a2 == ++v7)
    {
      goto LABEL_14;
    }
  }

  if ((v8 - 1) <= 3 && *(a1 + v8) == 90)
  {
    v9 = llvm::itaniumDemangle(a1, a2);
    if (!v9)
    {
      return 0;
    }

    goto LABEL_20;
  }

LABEL_14:
  if (a2 < 2)
  {
    return 0;
  }

  if (*a1 == 21087)
  {
    v9 = llvm::rustDemangle(a1, a2);
    if (!v9)
    {
      return 0;
    }

    goto LABEL_20;
  }

  if (*a1 != 17503)
  {
    return 0;
  }

  v9 = llvm::dlangDemangle(a1, a2);
  if (v9)
  {
LABEL_20:
    std::string::append(a3, v9);
    free(v9);
    return 1;
  }

  return 0;
}

const char *llvm::itanium_demangle::parse_discriminator(const char *this, const char *a2, const char *a3)
{
  if (this != a2)
  {
    v3 = *this;
    if (v3 == 95)
    {
      if (this + 1 != a2)
      {
        v4 = this[1];
        if ((v4 & 0x8000000000000000) == 0)
        {
          if ((*(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x400) != 0)
          {
            this += 2;
          }

          else if (v4 == 95)
          {
            v5 = (this + 2);
            if (this + 2 != a2)
            {
              while (1)
              {
                v6 = *v5;
                if (v6 < 0 || (*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x400) == 0)
                {
                  break;
                }

                if (++v5 == a2)
                {
                  return this;
                }
              }

              if (v6 == 95)
              {
                return v5 + 1;
              }
            }
          }
        }
      }
    }

    else if ((v3 & 0x80) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v3 + 60) & 0x400) != 0)
    {
      v7 = this + 1;
      while (v7 != a2)
      {
        v8 = *v7;
        if ((v8 & 0x8000000000000000) == 0)
        {
          ++v7;
          if ((*(MEMORY[0x277D85DE0] + 4 * v8 + 60) & 0x400) != 0)
          {
            continue;
          }
        }

        return this;
      }

      return a2;
    }
  }

  return this;
}

uint64_t llvm::itaniumDemangle(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v37 = *MEMORY[0x277D85DE8];
  if (!v3)
  {
    return 0;
  }

  v17[0] = v2;
  v17[1] = v2 + v3;
  v18 = v21;
  v19 = v21;
  v20 = v22;
  memset(v21, 0, sizeof(v21));
  v22[0] = v23;
  v22[1] = v23;
  memset(v23, 0, sizeof(v23));
  v22[2] = v24;
  v24[0] = v25;
  v24[1] = v25;
  v24[2] = v26;
  memset(v25, 0, sizeof(v25));
  v26[0] = v27;
  v26[1] = v27;
  v26[2] = v28;
  memset(v27, 0, sizeof(v27));
  v28[0] = v29;
  v28[1] = v29;
  v28[2] = &v30;
  memset(v29, 0, sizeof(v29));
  v30 = 1;
  v31 = 0;
  v32 = -1;
  v34 = 0;
  v33 = 0;
  v35[0] = 0u;
  v36 = v35;
  v6 = v5;
  if (v5)
  {
    v14 = 0;
    v13 = 0u;
    v15 = -1;
    v16 = 1;
    (*(*v5 + 32))(v5, &v13);
    if ((*(v6 + 9) & 0xC0) != 0x40)
    {
      (*(*v6 + 40))(v6, &v13);
    }

    v8 = *(&v13 + 1);
    v7 = v13;
    if (*(&v13 + 1) + 1 > v14)
    {
      if (2 * v14 <= *(&v13 + 1) + 993)
      {
        v9 = *(&v13 + 1) + 993;
      }

      else
      {
        v9 = 2 * v14;
      }

      v14 = v9;
      v7 = malloc_type_realloc(v13, v9, 0x100004077774924uLL);
      *&v13 = v7;
      if (!v7)
      {
        abort();
      }

      v8 = *(&v13 + 1);
    }

    v7[v8] = 0;
    v6 = v13;
  }

  v10 = v36;
  if (v36)
  {
    do
    {
      while (1)
      {
        v11 = *v10;
        v36 = *v10;
        if (v10 == v35)
        {
          break;
        }

        free(v10);
        v10 = v36;
        if (!v36)
        {
          goto LABEL_17;
        }
      }

      v10 = v11;
    }

    while (v11);
  }

LABEL_17:
  v35[0] = 0uLL;
  v36 = v35;
  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  if (v26[0] != v27)
  {
    free(v26[0]);
  }

  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  if (v22[0] != v23)
  {
    free(v22[0]);
  }

  if (v18 != v21)
  {
    free(v18);
  }

  return v6;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parse(uint64_t a1, size_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8) - *a1;
  if (v4 < 2)
  {
    goto LABEL_15;
  }

  if (*v3 == 23135)
  {
    *a1 = v3 + 2;
    if (!v7)
    {
      return;
    }

    goto LABEL_20;
  }

  if (v4 == 2)
  {
LABEL_15:
    return;
  }

  if (*v3 == 24415 && v3[2] == 90)
  {
    *a1 = v3 + 3;
    if (!v7)
    {
      return;
    }

LABEL_20:
    v9 = *a1;
    v8 = *(a1 + 8);
    v10 = v8 - *a1;
    if (v8 != *a1 && *v9 == 46)
    {
      v11 = *(a1 + 4904);
      v12 = v11[1];
      if ((v12 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v13 = v7;
        v14 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v14)
        {
          std::terminate();
        }

        v11 = v14;
        v12 = 0;
        *v14 = *(a1 + 4904);
        v14[1] = 0;
        *(a1 + 4904) = v14;
        v7 = v13;
      }

      v11[1] = v12 + 48;
      v15 = v11 + v12;
      v15[24] = 1;
      *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
      *(v15 + 2) = &unk_2868A6778;
      *(v15 + 4) = v7;
      *(v15 + 5) = v9;
      *(v15 + 6) = v10;
      *a1 = *(a1 + 8);
    }

    return;
  }

  if (v4 < 4)
  {
    goto LABEL_15;
  }

  if (*v3 == 1516199775)
  {
    v16 = 4;
  }

  else
  {
    if (v4 == 4)
    {
      goto LABEL_15;
    }

    if (*v3 != 1600085855 || v3[4] != 90)
    {
      goto LABEL_15;
    }

    v16 = 5;
  }

  *a1 = &v3[v16];
  if (v28)
  {
    v18 = *a1;
    v17 = *(a1 + 8);
    if (&v17[-*a1] >= 0xD && *v18 == 0x695F6B636F6C625FLL && *(v18 + 5) == 0x656B6F766E695F6BLL)
    {
      v20 = v18 + 13;
      *a1 = v18 + 13;
      if (v18 + 13 == v17 || *v20 != 95)
      {
        v21 = 0;
      }

      else
      {
        v20 = v18 + 14;
        *a1 = v18 + 14;
        v21 = 1;
      }

      if (v17 == v20 || (v22 = *v20, v22 < 0) || (v23 = MEMORY[0x277D85DE0], (*(MEMORY[0x277D85DE0] + 4 * v22 + 60) & 0x400) == 0))
      {
        if (v21)
        {
          return;
        }
      }

      else
      {
        v24 = v20;
        while (1)
        {
          v25 = *v24;
          if (v25 < 0 || (*(v23 + 4 * v25 + 60) & 0x400) == 0)
          {
            break;
          }

          *a1 = ++v24;
          if (v24 == v17)
          {
            v26 = v17;
            goto LABEL_55;
          }
        }

        v26 = v24;
LABEL_55:
        v27 = v26 == v20;
        v20 = v24;
        if (v21 & v27)
        {
          return;
        }
      }

      if (v17 != v20)
      {
        if (*v20 != 46)
        {
          return;
        }

        *a1 = v17;
      }
    }
  }
}

void llvm::ItaniumPartialDemangler::ItaniumPartialDemangler(llvm::ItaniumPartialDemangler *this)
{
  *this = 0;
  operator new();
}

{
  *this = 0;
  operator new();
}

void llvm::ItaniumPartialDemangler::~ItaniumPartialDemangler(llvm::ItaniumPartialDemangler *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = v1 + 101;
    v3 = v1[613];
    if (v3)
    {
      do
      {
        while (1)
        {
          v4 = *v3;
          v1[613] = *v3;
          if (v3 == v2)
          {
            break;
          }

          free(v3);
          v3 = v1[613];
          if (!v3)
          {
            goto LABEL_7;
          }
        }

        v3 = v4;
      }

      while (v4);
    }

LABEL_7:
    *v2 = 0;
    v1[102] = 0;
    v1[613] = v2;
    v5 = v1[90];
    if (v5 != v1 + 93)
    {
      free(v5);
    }

    v6 = v1[83];
    if (v6 != v1 + 86)
    {
      free(v6);
    }

    v7 = v1[72];
    if (v7 != v1 + 75)
    {
      free(v7);
    }

    v8 = v1[37];
    if (v8 != v1 + 40)
    {
      free(v8);
    }

    v9 = v1[2];
    if (v9 != v1 + 5)
    {
      free(v9);
    }

    MEMORY[0x259C63180](v1, 0x10F0C40E4DCC82FLL);
  }
}

__n128 llvm::ItaniumPartialDemangler::ItaniumPartialDemangler(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

uint64_t *llvm::ItaniumPartialDemangler::operator=(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  return result;
}

BOOL llvm::ItaniumPartialDemangler::partialDemangle(llvm::ItaniumPartialDemangler *this, const char *__s)
{
  v4 = *(this + 1);
  v5 = strlen(__s);
  *v4 = __s;
  *(v4 + 8) = &__s[v5];
  *(v4 + 24) = *(v4 + 16);
  *(v4 + 304) = *(v4 + 296);
  *(v4 + 672) = *(v4 + 664);
  *(v4 + 784) = -1;
  *(v4 + 776) = 1;
  *(v4 + 792) = 0;
  *(v4 + 800) = 0;
  v6 = (v4 + 808);
  v7 = *(v4 + 4904);
  if (v7)
  {
    do
    {
      while (1)
      {
        v8 = *v7;
        *(v4 + 4904) = *v7;
        if (v7 == v6)
        {
          break;
        }

        free(v7);
        v7 = *(v4 + 4904);
        if (!v7)
        {
          goto LABEL_6;
        }
      }

      v7 = v8;
    }

    while (v8);
  }

LABEL_6:
  *v6 = 0;
  *(v4 + 816) = 0;
  *(v4 + 4904) = v6;
  *this = v9;
  return v9 == 0;
}

void *llvm::ItaniumPartialDemangler::getFunctionBaseName(llvm::ItaniumPartialDemangler *this, char *a2, unint64_t *a3)
{
  if (*(*this + 8) == 19)
  {
    for (i = *this + 24; ; i = v5 + v4)
    {
      v5 = *i;
      v6 = *(*i + 8);
      if (v6 <= 25)
      {
        if (v6 == 9)
        {
          goto LABEL_3;
        }

        v4 = 24;
        if (v6 != 24)
        {
          return printNode(v5, a2, a3);
        }
      }

      else
      {
        v7 = v6 == 26 || v6 == 28;
        v4 = 24;
        if (!v7)
        {
          if (v6 != 45)
          {
            return printNode(v5, a2, a3);
          }

LABEL_3:
          v4 = 16;
          continue;
        }
      }
    }
  }

  return 0;
}

void *printNode(uint64_t a1, void *a2, unint64_t *a3)
{
  if (a2)
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  v11 = a2;
  v12 = 0;
  v13 = v5;
  v14 = -1;
  v15 = 1;
  (*(*a1 + 32))(a1, &v11);
  if ((*(a1 + 9) & 0xC0) != 0x40)
  {
    (*(*a1 + 40))(a1, &v11);
  }

  v6 = v11;
  v7 = v12;
  v8 = v12 + 1;
  if (v12 + 1 > v13)
  {
    if (2 * v13 <= v12 + 993)
    {
      v9 = v12 + 993;
    }

    else
    {
      v9 = 2 * v13;
    }

    v13 = v9;
    v6 = malloc_type_realloc(v11, v9, 0x100004077774924uLL);
    v11 = v6;
    if (!v6)
    {
      abort();
    }

    v7 = v12;
    v8 = v12 + 1;
  }

  v12 = v8;
  *(v6 + v7) = 0;
  if (a3)
  {
    *a3 = v12;
  }

  return v11;
}

char *llvm::ItaniumPartialDemangler::getFunctionDeclContextName(llvm::ItaniumPartialDemangler *this, char *a2, unint64_t *a3)
{
  if (*(*this + 8) != 19)
  {
    return 0;
  }

  v4 = *(*this + 24);
  if (a2)
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  v17 = a2;
  v18 = 0;
  v19 = v5;
  v20 = -1;
  v21 = 1;
  for (i = *(v4 + 8); i == 45; i = *(v4 + 8))
  {
LABEL_7:
    v4 = *(v4 + 16);
  }

  while (i == 28)
  {
    v4 = *(v4 + 24);
    i = *(v4 + 8);
    if (i != 26)
    {
      goto LABEL_23;
    }

LABEL_13:
    v8 = *(v4 + 16);
    (*(*v8 + 32))(v8, &v17);
    if ((*(v8 + 9) & 0xC0) != 0x40)
    {
      (*(*v8 + 40))(v8, &v17);
    }

    v9 = v17;
    v10 = v18;
    if (v18 + 2 > v19)
    {
      if (2 * v19 <= v18 + 994)
      {
        v11 = v18 + 994;
      }

      else
      {
        v11 = 2 * v19;
      }

      v19 = v11;
      v9 = malloc_type_realloc(v17, v11, 0x100004077774924uLL);
      v17 = v9;
      if (!v9)
      {
        goto LABEL_35;
      }

      v10 = v18;
    }

    *&v9[v10] = 14906;
    v18 += 2;
    v4 = *(v4 + 24);
    i = *(v4 + 8);
    if (i == 45)
    {
      goto LABEL_7;
    }
  }

  if (i == 9)
  {
    goto LABEL_7;
  }

  if (i == 26)
  {
    goto LABEL_13;
  }

LABEL_23:
  if (i == 24)
  {
    v12 = *(v4 + 16);
    (*(*v12 + 32))(v12, &v17);
    if ((*(v12 + 9) & 0xC0) != 0x40)
    {
      (*(*v12 + 40))(v12, &v17);
    }
  }

  v13 = v17;
  v14 = v18;
  v15 = v18 + 1;
  if (v18 + 1 > v19)
  {
    if (2 * v19 <= v18 + 993)
    {
      v16 = v18 + 993;
    }

    else
    {
      v16 = 2 * v19;
    }

    v19 = v16;
    v13 = malloc_type_realloc(v17, v16, 0x100004077774924uLL);
    v17 = v13;
    if (!v13)
    {
LABEL_35:
      abort();
    }

    v14 = v18;
    v15 = v18 + 1;
  }

  v18 = v15;
  v13[v14] = 0;
  if (a3)
  {
    *a3 = v18;
  }

  return v17;
}

void *llvm::ItaniumPartialDemangler::getFunctionName(llvm::ItaniumPartialDemangler *this, char *a2, unint64_t *a3)
{
  if (*(*this + 8) == 19)
  {
    return printNode(*(*this + 24), a2, a3);
  }

  else
  {
    return 0;
  }
}

void *llvm::ItaniumPartialDemangler::getFunctionParameters(llvm::ItaniumPartialDemangler *this, char *ptr, unint64_t *a3)
{
  v3 = *this;
  if (*(*this + 8) != 19)
  {
    return 0;
  }

  if (ptr)
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  ptra = ptr;
  v24 = v5;
  v25 = -1;
  v26 = 1;
  if (!v5)
  {
    v5 = 993;
    v24 = 993;
    ptr = malloc_type_realloc(ptr, 0x3E1uLL, 0x100004077774924uLL);
    ptra = ptr;
    if (!ptr)
    {
      goto LABEL_37;
    }
  }

  v9 = 1;
  v23 = 1;
  *ptr = 40;
  if (v8)
  {
    v9 = 1;
    v10 = 1;
    do
    {
      while (1)
      {
        v11 = v9;
        if ((v10 & 1) == 0)
        {
          v12 = ptra;
          if (v9 + 2 <= v24)
          {
            v14 = v9;
          }

          else
          {
            if (2 * v24 <= v9 + 994)
            {
              v13 = v9 + 994;
            }

            else
            {
              v13 = 2 * v24;
            }

            v24 = v13;
            v12 = malloc_type_realloc(ptra, v13, 0x100004077774924uLL);
            ptra = v12;
            if (!v12)
            {
              goto LABEL_37;
            }

            v14 = v23;
          }

          *&v12[v14] = 8236;
          v11 = v23 + 2;
          v23 += 2;
        }

        llvm::itanium_demangle::Node::printAsOperand(*v7, &ptra, 18, 0);
        if (v11 != v23)
        {
          break;
        }

        v23 = v9;
        ++v7;
        if (!--v8)
        {
          goto LABEL_22;
        }
      }

      v10 = 0;
      v9 = v23;
      ++v7;
      --v8;
    }

    while (v8);
LABEL_22:
    v5 = v24;
    ptr = ptra;
  }

  v15 = v9 + 1;
  if (v9 + 1 > v5)
  {
    v16 = v9 + 993;
    if (2 * v5 > v9 + 993)
    {
      v16 = 2 * v5;
    }

    v24 = v16;
    v17 = malloc_type_realloc(ptr, v16, 0x100004077774924uLL);
    ptra = v17;
    if (!v17)
    {
      goto LABEL_37;
    }

    ptr = v17;
    v9 = v23;
    v15 = v23 + 1;
  }

  v23 = v15;
  ptr[v9] = 41;
  v18 = ptra;
  v19 = v23;
  v20 = v23 + 1;
  if (v23 + 1 > v24)
  {
    if (2 * v24 <= v23 + 993)
    {
      v21 = v23 + 993;
    }

    else
    {
      v21 = 2 * v24;
    }

    v24 = v21;
    v18 = malloc_type_realloc(ptra, v21, 0x100004077774924uLL);
    ptra = v18;
    if (v18)
    {
      v19 = v23;
      v20 = v23 + 1;
      goto LABEL_34;
    }

LABEL_37:
    abort();
  }

LABEL_34:
  v23 = v20;
  *(v18 + v19) = 0;
  if (a3)
  {
    *a3 = v23;
  }

  return ptra;
}

void *llvm::ItaniumPartialDemangler::getFunctionReturnType(llvm::ItaniumPartialDemangler *this, char *a2, unint64_t *a3)
{
  v3 = *this;
  if (*(*this + 8) != 19)
  {
    return 0;
  }

  if (a2)
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  v12 = a2;
  v13 = 0;
  v14 = v5;
  v15 = -1;
  v16 = 1;
  v7 = *(v3 + 16);
  if (v7)
  {
    (*(*v7 + 32))(v7, &v12);
    if ((*(v7 + 9) & 0xC0) != 0x40)
    {
      (*(*v7 + 40))(v7, &v12);
    }
  }

  v8 = v12;
  v9 = v13;
  v10 = v13 + 1;
  if (v13 + 1 > v14)
  {
    if (2 * v14 <= v13 + 993)
    {
      v11 = v13 + 993;
    }

    else
    {
      v11 = 2 * v14;
    }

    v14 = v11;
    v8 = malloc_type_realloc(v12, v11, 0x100004077774924uLL);
    v12 = v8;
    if (!v8)
    {
      abort();
    }

    v9 = v13;
    v10 = v13 + 1;
  }

  v13 = v10;
  *(v8 + v9) = 0;
  if (a3)
  {
    *a3 = v13;
  }

  return v12;
}

BOOL llvm::ItaniumPartialDemangler::hasFunctionQualifiers(llvm::ItaniumPartialDemangler *this)
{
  v1 = *this;
  if (*(*this + 8) != 19)
  {
    return 0;
  }

  if (*(v1 + 64))
  {
    return 1;
  }

  return *(v1 + 68) != 0;
}

BOOL llvm::ItaniumPartialDemangler::isCtorOrDtor(llvm::ItaniumPartialDemangler *this)
{
  v1 = *this;
  if (!*this)
  {
    return 0;
  }

  while (1)
  {
    v4 = *(v1 + 8);
    if (v4 > 0x19)
    {
      break;
    }

    v3 = 16;
    if (v4 == 9)
    {
      goto LABEL_4;
    }

    if (v4 != 19)
    {
      result = 0;
      if (v4 != 24)
      {
        return result;
      }
    }

LABEL_3:
    v3 = 24;
LABEL_4:
    v1 = *(v1 + v3);
    if (!v1)
    {
      return 0;
    }
  }

  if (*(v1 + 8) <= 0x2Cu)
  {
    if (v4 != 26)
    {
      result = 0;
      if (v4 != 28)
      {
        return result;
      }
    }

    goto LABEL_3;
  }

  v3 = 16;
  if (v4 == 45)
  {
    goto LABEL_4;
  }

  return v4 == 49;
}

void *llvm::itanium_demangle::Node::printAsOperand(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4 + a3 <= (*(a1 + 9) << 26 >> 26))
  {
    ++*(a2 + 32);
    v8 = *a2;
    v9 = *(a2 + 8);
    v10 = v9 + 1;
    v11 = *(a2 + 16);
    if (v9 + 1 > v11)
    {
      v12 = v9 + 993;
      if (2 * v11 <= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = 2 * v11;
      }

      *(a2 + 16) = v13;
      v8 = malloc_type_realloc(v8, v13, 0x100004077774924uLL);
      *a2 = v8;
      if (!v8)
      {
        goto LABEL_22;
      }

      v9 = *(a2 + 8);
      v10 = v9 + 1;
    }

    *(a2 + 8) = v10;
    *(v8 + v9) = 40;
    (*(*a1 + 32))(a1, a2);
    if ((*(a1 + 9) & 0xC0) != 0x40)
    {
      (*(*a1 + 40))(a1, a2);
    }

    --*(a2 + 32);
    result = *a2;
    v14 = *(a2 + 8);
    v15 = v14 + 1;
    v16 = *(a2 + 16);
    if (v14 + 1 <= v16)
    {
      goto LABEL_20;
    }

    v17 = v14 + 993;
    if (2 * v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = 2 * v16;
    }

    *(a2 + 16) = v18;
    result = malloc_type_realloc(result, v18, 0x100004077774924uLL);
    *a2 = result;
    if (result)
    {
      v14 = *(a2 + 8);
      v15 = v14 + 1;
LABEL_20:
      *(a2 + 8) = v15;
      *(result + v14) = 41;
      return result;
    }

LABEL_22:
    abort();
  }

  result = (*(*a1 + 32))(a1, a2);
  if ((*(a1 + 9) & 0xC0) != 0x40)
  {
    v7 = *(*a1 + 40);

    return v7(a1, a2);
  }

  return result;
}

uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::consumeIf(const void **a1, const void *a2, size_t a3)
{
  v3 = *a1;
  if (a3 > a1[1] - *a1)
  {
    return 0;
  }

  if (memcmp(*a1, a2, a3))
  {
    return 0;
  }

  *a1 = &v3[a3];
  return 1;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseEncoding(char **a1, char a2)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = v6 - *a1;
  if (v6 != *a1)
  {
    v8 = *v5;
    if (v8 != 71)
    {
      if (v8 == 84)
      {
        if (v7 >= 2)
        {
          v9 = v5[1];
          if (v9 <= 0x52)
          {
            if (v5[1] > 0x47u)
            {
              if (v9 == 72)
              {
                *a1 = v5 + 2;
                if (v109)
                {
                  goto LABEL_154;
                }

                goto LABEL_155;
              }

              if (v9 == 73)
              {
                *a1 = v5 + 2;
                v109 = v66;
                if (v66)
                {
                  goto LABEL_154;
                }

                goto LABEL_155;
              }
            }

            else
            {
              if (v9 == 65)
              {
                *a1 = v5 + 2;
                v109 = v70;
                if (v70)
                {
                  goto LABEL_154;
                }

                goto LABEL_155;
              }

              if (v9 == 67)
              {
                *a1 = v5 + 2;
                v109 = v42;
                if (v42)
                {
                  if (v43)
                  {
                    v44 = *a1;
                    if (*a1 != a1[1] && *v44 == 95)
                    {
                      *a1 = v44 + 1;
                      v106.n128_u64[0] = v45;
                      if (v45)
                      {
                        goto LABEL_154;
                      }
                    }
                  }
                }

                goto LABEL_155;
              }
            }
          }

          else if (v5[1] <= 0x55u)
          {
            if (v9 == 83)
            {
              *a1 = v5 + 2;
              v109 = v72;
              if (v72)
              {
                goto LABEL_154;
              }

              goto LABEL_155;
            }

            if (v9 == 84)
            {
              *a1 = v5 + 2;
              v109 = v67;
              if (v67)
              {
                goto LABEL_154;
              }

              goto LABEL_155;
            }
          }

          else
          {
            switch(v9)
            {
              case 'V':
                *a1 = v5 + 2;
                v109 = v71;
                if (v71)
                {
                  goto LABEL_154;
                }

                goto LABEL_155;
              case 'W':
                *a1 = v5 + 2;
                if (v109)
                {
                  goto LABEL_154;
                }

                goto LABEL_155;
              case 'c':
                *a1 = v5 + 2;
                {
                  if (v109)
                  {
LABEL_154:
                    v13 = v10;
                    goto LABEL_156;
                  }
                }

                goto LABEL_155;
            }
          }
        }

        v68 = (v5 + 1);
        *a1 = v68;
        if (v6 == v68)
        {
          v69 = 0;
          {
            goto LABEL_155;
          }
        }

        else
        {
          v69 = *v68 == 118;
          {
            goto LABEL_155;
          }
        }

        if (v109)
        {
          if (v69)
          {
          }

          else
          {
          }

          goto LABEL_154;
        }

LABEL_155:
        v13 = 0;
        goto LABEL_156;
      }

      goto LABEL_14;
    }

    if (v7 < 2)
    {
      goto LABEL_155;
    }

    v27 = v5[1];
    if (v27 == 73)
    {
      *a1 = v5 + 2;
      v109 = 0;
      v13 = 0;
      {
        goto LABEL_156;
      }

      v62 = v109;
      if (!v109)
      {
        goto LABEL_156;
      }

      v63 = a1[613];
      v64 = *(v63 + 1);
      if ((v64 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v63 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v63)
        {
          goto LABEL_158;
        }

        v64 = 0;
        *v63 = a1[613];
        *(v63 + 1) = 0;
        a1[613] = v63;
      }

      *(v63 + 1) = v64 + 48;
      v65 = &v63[v64];
      v13 = (v65 + 16);
      v65[24] = 21;
      *(v65 + 25) = *(v65 + 25) & 0xF000 | 0x540;
      *(v65 + 2) = &unk_2868A4698;
      *(v65 + 4) = "initializer for module ";
      *(v65 + 5) = 23;
      *(v65 + 6) = v62;
      goto LABEL_156;
    }

    if (v27 != 82)
    {
      if (v27 != 86)
      {
        goto LABEL_155;
      }

      *a1 = v5 + 2;
      if (!v28)
      {
        goto LABEL_155;
      }

      v29 = a1[613];
      v30 = *(v29 + 1);
      if ((v30 - 4032) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_32;
      }

      v31 = v28;
      v32 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (v32)
      {
        v29 = v32;
        v30 = 0;
        *v32 = a1[613];
        *(v32 + 1) = 0;
        a1[613] = v32;
        v28 = v31;
LABEL_32:
        *(v29 + 1) = v30 + 48;
        v33 = &v29[v30];
        v13 = (v33 + 16);
        v33[24] = 21;
        *(v33 + 25) = *(v33 + 25) & 0xF000 | 0x540;
        *(v33 + 2) = &unk_2868A4698;
        *(v33 + 4) = "guard variable for ";
        *(v33 + 5) = 19;
        *(v33 + 6) = v28;
        goto LABEL_156;
      }

LABEL_158:
      std::terminate();
    }

    *a1 = v5 + 2;
    if (!v109)
    {
      goto LABEL_155;
    }

    v56 = *a1;
    v57 = a1[1];
    if (v57 == *a1 || *v56 < 48 || (v58 = *v56, v58 >= 0x3A) && v58 - 65 > 0x19)
    {
      v59 = 1;
      if (v56 == v57)
      {
        goto LABEL_83;
      }
    }

    else
    {
      do
      {
        if (*v56 < 48)
        {
          break;
        }

        v60 = *v56;
        v61 = v60 >= 0x3A && v60 - 65 > 0x19;
        if (v61)
        {
          break;
        }

        *a1 = ++v56;
      }

      while (v56 != v57);
      v59 = 0;
      if (v56 == v57)
      {
        goto LABEL_83;
      }
    }

    if (*v56 == 95)
    {
      *a1 = v56 + 1;
      goto LABEL_84;
    }

LABEL_83:
    if (!v59)
    {
      goto LABEL_155;
    }

LABEL_84:
    goto LABEL_154;
  }

LABEL_14:
  v11 = a1[90];
  v12 = a1[91];
  LOWORD(v109) = 0;
  HIDWORD(v109) = 0;
  v110[0] = 0;
  v111 = (v12 - v11) >> 3;
  v112 = 0;
  v108 = v13;
  if (v13)
  {
    v14 = v111;
    v15 = a1[90];
    v16 = (a1[91] - v15) >> 3;
    if (v16 <= v111)
    {
      v19 = &v15[8 * v111];
    }

    else
    {
      v17 = a1[83];
      if (v17 == a1[84])
      {
        goto LABEL_155;
      }

      v18 = *v17;
      if (!*v17)
      {
        goto LABEL_155;
      }

      v19 = &v15[8 * v111];
      v20 = *v19;
      v21 = *(*v19 + 16);
      v23 = v18;
      v22 = *v18;
      v24 = (v23[1] - v22) >> 3;
      if (v21 >= v24)
      {
        goto LABEL_155;
      }

      v25 = (v15 + 8);
      while (1)
      {
        *(v20 + 24) = *(v22 + 8 * v21);
        if (v16 - 1 == v14)
        {
          break;
        }

        v26 = v14 + 1;
        v20 = *&v25[8 * v14];
        v21 = *(v20 + 16);
        ++v14;
        if (v21 >= v24)
        {
          if (v26 >= v16)
          {
            goto LABEL_35;
          }

          goto LABEL_155;
        }
      }
    }

    a1[91] = v19;
LABEL_35:
    v35 = *a1;
    v34 = a1[1];
    if (v34 != *a1)
    {
      v36 = *v35 - 46;
      v61 = v36 > 0x31;
      v37 = (1 << v36) & 0x2000000800001;
      if (v61 || v37 == 0)
      {
        if (a2)
        {
          v107 = 0;
          {
            v40 = (a1[3] - a1[2]) >> 3;
            while (1)
            {
              v49 = *a1;
              if (*a1 != a1[1] && *v49 == 69)
              {
                break;
              }

              if (!v48)
              {
                goto LABEL_155;
              }

              v47 = a1[3];
              if (v47 == a1[4])
              {
                v50 = v48;
                v51 = a1[2];
                v52 = v47 - v51;
                if (v51 == (a1 + 5))
                {
                  v46 = malloc_type_malloc(2 * (v47 - v51), 0x2004093837F09uLL);
                  if (!v46)
                  {
LABEL_157:
                    abort();
                  }

                  v53 = a1[2];
                  v54 = a1[3];
                  if (v54 != v53)
                  {
                    v55 = v46;
                    memmove(v46, v53, v54 - v53);
                    v46 = v55;
                  }

                  a1[2] = v46;
                }

                else
                {
                  v46 = malloc_type_realloc(v51, 2 * (v47 - v51), 0x2004093837F09uLL);
                  a1[2] = v46;
                  if (!v46)
                  {
                    goto LABEL_157;
                  }
                }

                v47 = &v46[v52];
                a1[4] = &v46[8 * (v52 >> 2)];
                v48 = v50;
              }

              *v47 = v48;
              a1[3] = (v47 + 8);
            }

            *a1 = v49 + 1;
            v106.n128_u64[1] = v73;
            v107 = v74;
          }

          v105 = 0;
          if ((v109 & 1) == 0 && BYTE1(v109) == 1)
          {
            v105 = v75;
            if (!v75)
            {
              goto LABEL_155;
            }
          }

          v106 = 0uLL;
          v77 = *a1;
          v76 = a1[1];
          if (*a1 == v76 || *v77 != 118)
          {
            v80 = a1[2];
            v79 = a1[3];
            v104 = v81;
            if (!v81)
            {
              goto LABEL_155;
            }

            v83 = v79 - v80;
            v84 = (v79 - v80) >> 3;
            v85 = 0x2004093837F09;
            v86 = (a1 + 5);
            while (1)
            {
              v87 = a1[3];
              if (v112 == 1 && v83 == v87 - a1[2])
              {
                v87 = a1[3];
              }

              if (v87 == a1[4])
              {
                v89 = v81;
                v90 = a1[2];
                v91 = v87 - v90;
                if (v90 == v86)
                {
                  v92 = malloc_type_malloc(2 * (v87 - v90), v85);
                  if (!v92)
                  {
                    goto LABEL_157;
                  }

                  v82 = a1[2];
                  v93 = a1[3];
                  if (v93 != v82)
                  {
                    v94 = v86;
                    v95 = v84;
                    v96 = v85;
                    v97 = v92;
                    memmove(v92, v82, v93 - v82);
                    v92 = v97;
                    v85 = v96;
                    v84 = v95;
                    v86 = v94;
                  }

                  a1[2] = v92;
                }

                else
                {
                  v92 = malloc_type_realloc(v90, 2 * (v87 - v90), v85);
                  a1[2] = v92;
                  if (!v92)
                  {
                    goto LABEL_157;
                  }
                }

                v87 = &v92[v91];
                a1[4] = &v92[8 * (v91 >> 2)];
                v81 = v89;
              }

              *v87 = v81;
              a1[3] = (v87 + 8);
              if (a1[1] == *a1)
              {
                break;
              }

              v98 = **a1 - 46;
              v61 = v98 > 0x31;
              v99 = (1 << v98) & 0x2000800800001;
              if (!v61 && v99 != 0)
              {
                break;
              }

              v104 = v81;
              if (!v81)
              {
                goto LABEL_155;
              }
            }

            v106.n128_u64[1] = v39;
            v78 = *a1;
            v76 = a1[1];
          }

          else
          {
            v78 = v77 + 1;
            *a1 = v78;
          }

          v104 = 0;
          {
            goto LABEL_154;
          }

          goto LABEL_155;
        }

        do
        {
          if (v35 == v34)
          {
            break;
          }

          *a1 = (v35 + 1);
        }

        while (*v35++);
      }
    }
  }

LABEL_156:
  return v13;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseNumber(char **a1, int a2)
{
  result = *a1;
  v4 = a1[1];
  v5 = result;
  if (a2)
  {
    if (result == v4)
    {
      return 0;
    }

    v5 = result;
    if (*result == 110)
    {
      v5 = result + 1;
      *a1 = result + 1;
    }
  }

  if (v4 == v5)
  {
    return 0;
  }

  v6 = *v5;
  if (v6 < 0)
  {
    return 0;
  }

  v7 = MEMORY[0x277D85DE0];
  if ((*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x400) == 0)
  {
    return 0;
  }

  do
  {
    v8 = *v5;
    if (v8 < 0)
    {
      break;
    }

    if ((*(v7 + 4 * v8 + 60) & 0x400) == 0)
    {
      break;
    }

    *a1 = ++v5;
  }

  while (v5 != v4);
  return result;
}

uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[34],llvm::itanium_demangle::Node *&>(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 48;
  v8 = v6 + v7;
  v9 = v6 + v7 + 16;
  v10 = strlen(__s);
  v11 = *a3;
  v8[24] = 21;
  *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = &unk_2868A4698;
  *(v8 + 4) = __s;
  *(v8 + 5) = v10;
  *(v8 + 6) = v11;
  return v9;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseType(uint64_t a1, size_t a2)
{
  v123 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = &v4[-*a1];
  if (v4 == *a1)
  {
LABEL_144:
    goto LABEL_145;
  }

  v6 = *v3;
  v7 = 0;
  switch(*v3)
  {
    case 'A':
      *a1 = v3 + 1;
      v125 = 0;
      if (v4 == (v3 + 1))
      {
        if ((*(MEMORY[0x277D85DE0] + 61) & 4) == 0)
        {
LABEL_183:
          if (!v52)
          {
            goto LABEL_145;
          }

          v100 = *a1;
          if (*a1 != *(a1 + 8) && *v100 == 95)
          {
            *a1 = v100 + 1;
            v125 = v52;
            goto LABEL_191;
          }

          goto LABEL_193;
        }

LABEL_187:
        v124.n128_u64[1] = v101;
        v125 = v102;
        v103 = *a1;
        if (*a1 != *(a1 + 8) && *v103 == 95)
        {
          v9 = v103 + 1;
          goto LABEL_190;
        }

LABEL_193:
        v52 = 0;
        goto LABEL_145;
      }

      v8 = v3[1];
      if (v8 < 0)
      {
        goto LABEL_183;
      }

      if ((*(MEMORY[0x277D85DE0] + 4 * v8 + 60) & 0x400) != 0)
      {
        goto LABEL_187;
      }

      if (v8 != 95)
      {
        goto LABEL_183;
      }

      v9 = v3 + 2;
LABEL_190:
      *a1 = v9;
LABEL_191:
      v124.n128_u64[0] = v52;
      if (v52)
      {
      }

LABEL_145:
      v123 = v52;
      if (v52)
      {
LABEL_146:
        v84 = *(a1 + 304);
        if (v84 == *(a1 + 312))
        {
LABEL_147:
          v85 = *(a1 + 296);
          v86 = v84 - v85;
          if (v85 == (a1 + 320))
          {
            v87 = malloc_type_malloc(2 * v86, 0x2004093837F09uLL);
            if (!v87)
            {
              goto LABEL_262;
            }

            v88 = *(a1 + 296);
            v89 = *(a1 + 304);
            if (v89 != v88)
            {
              v90 = v87;
              memmove(v87, v88, v89 - v88);
              v87 = v90;
            }

            *(a1 + 296) = v87;
          }

          else
          {
            v87 = malloc_type_realloc(v85, 2 * (v84 - v85), 0x2004093837F09uLL);
            *(a1 + 296) = v87;
            if (!v87)
            {
LABEL_262:
              abort();
            }
          }

          v84 = &v87[v86];
          *(a1 + 312) = &v87[8 * (v86 >> 2)];
          v52 = v123;
        }

LABEL_155:
        *v84 = v52;
        *(a1 + 304) = v84 + 1;
      }

      return;
    case 'C':
      *a1 = v3 + 1;
      if (!v124.n128_u64[0])
      {
        return;
      }

      goto LABEL_160;
    case 'D':
      if (v5 >= 2)
      {
        v72 = v3[1];
        switch(v3[1])
        {
          case 'B':
          case 'U':
            LOBYTE(v125) = v72 == 66;
            v73 = v3 + 2;
            *a1 = v73;
            if (v4 == v73)
            {
              v74 = 0;
            }

            else
            {
              v74 = *v73;
              if (v74 < 0)
              {
                goto LABEL_250;
              }
            }

            if ((*(MEMORY[0x277D85DE0] + 4 * v74 + 60) & 0x400) != 0)
            {
              v124.n128_u64[1] = v120;
              v124.n128_u64[0] = v121;
              goto LABEL_253;
            }

LABEL_250:
            v124.n128_u64[0] = v119;
            if (!v119)
            {
              return;
            }

LABEL_253:
            v122 = *a1;
            if (*a1 != *(a1 + 8) && *v122 == 95)
            {
              *a1 = v122 + 1;
            }

            return;
          case 'F':
            *a1 = v3 + 2;
            v124.n128_u64[1] = v112;
            v124.n128_u64[0] = v114;
            v115 = (*(*v114 + 56))(v114, v113);
            if (v116 == 2)
            {
              v117 = *a1;
              v118 = *(a1 + 8);
              if (*v115 == 13873)
              {
                if (v117 == v118)
                {
                  return;
                }

                if (*v117 == 98)
                {
                  *a1 = v117 + 1;
                  return;
                }
              }
            }

            else
            {
              v117 = *a1;
              v118 = *(a1 + 8);
            }

            if (v117 != v118 && *v117 == 95)
            {
              *a1 = v117 + 1;
            }

            break;
          case 'K':
          case 'k':
            v108 = v72 == 107;
            if (v72 == 107)
            {
              v109 = " auto";
            }

            else
            {
              v109 = " decltype(auto)";
            }

            v110 = 15;
            if (v108)
            {
              v110 = 5;
            }

            v124.n128_u64[0] = v109;
            v124.n128_u64[1] = v110;
            *a1 = v3 + 2;
            if (v125)
            {
            }

            return;
          case 'O':
          case 'o':
          case 'w':
          case 'x':
            goto LABEL_198;
          case 'T':
          case 't':
            goto LABEL_145;
          case 'a':
            *a1 = v3 + 2;
            v111 = "auto";
            goto LABEL_236;
          case 'c':
            *a1 = v3 + 2;
            v111 = "decltype(auto)";
            goto LABEL_245;
          case 'd':
            *a1 = v3 + 2;
            v111 = "decimal64";
            goto LABEL_232;
          case 'e':
            *a1 = v3 + 2;
            v111 = "decimal128";

            goto LABEL_216;
          case 'f':
            *a1 = v3 + 2;
            v111 = "decimal32";
LABEL_232:

            goto LABEL_216;
          case 'h':
            *a1 = v3 + 2;
            v111 = "half";
LABEL_236:

            goto LABEL_216;
          case 'i':
            *a1 = v3 + 2;
            v111 = "char32_t";
            goto LABEL_240;
          case 'n':
            *a1 = v3 + 2;
            v111 = "std::nullptr_t";
LABEL_245:

            goto LABEL_216;
          case 'p':
            *a1 = v3 + 2;
            if (!v124.n128_u64[0])
            {
              return;
            }

            goto LABEL_160;
          case 's':
            *a1 = v3 + 2;
            v111 = "char16_t";
LABEL_240:

            goto LABEL_216;
          case 'u':
            *a1 = v3 + 2;
            v111 = "char8_t";

LABEL_216:
            return;
          case 'v':
            goto LABEL_145;
          default:
            return;
        }
      }

      return;
    case 'F':
      goto LABEL_198;
    case 'G':
      *a1 = v3 + 1;
      if (!v124.n128_u64[0])
      {
        return;
      }

      goto LABEL_160;
    case 'K':
    case 'V':
      goto LABEL_60;
    case 'M':
      *a1 = v3 + 1;
      v124.n128_u64[0] = v52;
      if (v52)
      {
        v125 = v52;
        if (v52)
        {
        }
      }

      goto LABEL_145;
    case 'O':
      *a1 = v3 + 1;
      if (!v124.n128_u64[0])
      {
        return;
      }

      LODWORD(v125) = 1;
      goto LABEL_159;
    case 'P':
      *a1 = v3 + 1;
      if (!v124.n128_u64[0])
      {
        return;
      }

      goto LABEL_160;
    case 'R':
      *a1 = v3 + 1;
      if (!v124.n128_u64[0])
      {
        return;
      }

      LODWORD(v125) = 0;
LABEL_159:
      goto LABEL_160;
    case 'S':
      if (v5 >= 2 && v3[1] == 116)
      {
        goto LABEL_144;
      }

      LOBYTE(v125) = 0;
      v123 = v52;
      if (!v52)
      {
        return;
      }

      if (*(a1 + 8) == *a1)
      {
        v99 = v125;
      }

      else
      {
        v99 = v125;
        if (**a1 == 73)
        {
          if (v125)
          {
            if ((*(a1 + 776) & 1) == 0)
            {
              return;
            }
          }

          else
          {
            llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back((a1 + 296), &v123);
          }

          v124.n128_u64[0] = v107;
          if (v107)
          {
LABEL_204:
            goto LABEL_160;
          }

          return;
        }
      }

      if ((v99 & 1) == 0)
      {
        goto LABEL_146;
      }

      return;
    case 'T':
      if (v5 >= 2)
      {
        v68 = v3[1] - 101;
        v51 = v68 > 0x10;
        v69 = (1 << v68) & 0x14001;
        if (!v51 && v69 != 0)
        {
          goto LABEL_144;
        }
      }

      v123 = v52;
      if (!v52)
      {
        return;
      }

      if (*(a1 + 776) != 1 || *(a1 + 8) == *a1 || **a1 != 73)
      {
        goto LABEL_146;
      }

      llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back((a1 + 296), &v123);
      v124.n128_u64[0] = v71;
      if (!v71)
      {
        return;
      }

      goto LABEL_204;
    case 'U':
      goto LABEL_74;
    case 'a':
      *a1 = v3 + 1;
      v30 = *(a1 + 4904);
      v31 = v30[1];
      if ((v31 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_35;
      }

      v30 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v30)
      {
        goto LABEL_261;
      }

      v31 = 0;
      *v30 = *(a1 + 4904);
      v30[1] = 0;
      *(a1 + 4904) = v30;
LABEL_35:
      v30[1] = v31 + 32;
      v32 = v30 + v31;
      v32[24] = 8;
      *(v32 + 25) = *(v32 + 25) & 0xF000 | 0x540;
      *(v32 + 2) = &unk_2868A4798;
      v33 = "signed char";
      goto LABEL_48;
    case 'b':
      *a1 = v3 + 1;
      v94 = *(a1 + 4904);
      v95 = v94[1];
      if ((v95 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_169;
      }

      v94 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v94)
      {
        goto LABEL_261;
      }

      v95 = 0;
      *v94 = *(a1 + 4904);
      v94[1] = 0;
      *(a1 + 4904) = v94;
LABEL_169:
      v94[1] = v95 + 32;
      v15 = v94 + v95;
      v15[24] = 8;
      *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
      *(v15 + 2) = &unk_2868A4798;
      v16 = "BOOL";
      goto LABEL_170;
    case 'c':
      *a1 = v3 + 1;
      v34 = *(a1 + 4904);
      v35 = v34[1];
      if ((v35 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_39;
      }

      v34 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v34)
      {
        goto LABEL_261;
      }

      v35 = 0;
      *v34 = *(a1 + 4904);
      v34[1] = 0;
      *(a1 + 4904) = v34;
LABEL_39:
      v34[1] = v35 + 32;
      v15 = v34 + v35;
      v15[24] = 8;
      *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
      *(v15 + 2) = &unk_2868A4798;
      v16 = "char";
      goto LABEL_170;
    case 'd':
      *a1 = v3 + 1;
      v96 = *(a1 + 4904);
      v97 = v96[1];
      if ((v97 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_174;
      }

      v96 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v96)
      {
        goto LABEL_261;
      }

      v97 = 0;
      *v96 = *(a1 + 4904);
      v96[1] = 0;
      *(a1 + 4904) = v96;
LABEL_174:
      v96[1] = v97 + 32;
      v98 = v96 + v97;
      v98[24] = 8;
      *(v98 + 25) = *(v98 + 25) & 0xF000 | 0x540;
      *(v98 + 2) = &unk_2868A4798;
      *(v98 + 4) = "double";
      *(v98 + 5) = 6;
      return;
    case 'e':
      *a1 = v3 + 1;
      v39 = *(a1 + 4904);
      v40 = v39[1];
      if ((v40 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_47;
      }

      v39 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v39)
      {
        goto LABEL_261;
      }

      v40 = 0;
      *v39 = *(a1 + 4904);
      v39[1] = 0;
      *(a1 + 4904) = v39;
LABEL_47:
      v39[1] = v40 + 32;
      v32 = v39 + v40;
      v32[24] = 8;
      *(v32 + 25) = *(v32 + 25) & 0xF000 | 0x540;
      *(v32 + 2) = &unk_2868A4798;
      v33 = "long double";
LABEL_48:
      *(v32 + 4) = v33;
      *(v32 + 5) = 11;
      return;
    case 'f':
      *a1 = v3 + 1;
      v77 = *(a1 + 4904);
      v78 = v77[1];
      if ((v78 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_132;
      }

      v77 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v77)
      {
        goto LABEL_261;
      }

      v78 = 0;
      *v77 = *(a1 + 4904);
      v77[1] = 0;
      *(a1 + 4904) = v77;
LABEL_132:
      v77[1] = v78 + 32;
      v58 = v77 + v78;
      v58[24] = 8;
      *(v58 + 25) = *(v58 + 25) & 0xF000 | 0x540;
      *(v58 + 2) = &unk_2868A4798;
      v59 = "float";
      goto LABEL_133;
    case 'g':
      *a1 = v3 + 1;
      v27 = *(a1 + 4904);
      v28 = v27[1];
      if ((v28 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_31;
      }

      v27 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v27)
      {
        goto LABEL_261;
      }

      v28 = 0;
      *v27 = *(a1 + 4904);
      v27[1] = 0;
      *(a1 + 4904) = v27;
LABEL_31:
      v27[1] = v28 + 32;
      v29 = v27 + v28;
      v29[24] = 8;
      *(v29 + 25) = *(v29 + 25) & 0xF000 | 0x540;
      *(v29 + 2) = &unk_2868A4798;
      *(v29 + 4) = "__float128";
      *(v29 + 5) = 10;
      return;
    case 'h':
      *a1 = v3 + 1;
      v41 = *(a1 + 4904);
      v42 = v41[1];
      if ((v42 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_52;
      }

      v41 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v41)
      {
        goto LABEL_261;
      }

      v42 = 0;
      *v41 = *(a1 + 4904);
      v41[1] = 0;
      *(a1 + 4904) = v41;
LABEL_52:
      v41[1] = v42 + 32;
      v43 = v41 + v42;
      v43[24] = 8;
      *(v43 + 25) = *(v43 + 25) & 0xF000 | 0x540;
      *(v43 + 2) = &unk_2868A4798;
      v44 = "unsigned char";
      goto LABEL_57;
    case 'i':
      *a1 = v3 + 1;
      v75 = *(a1 + 4904);
      v76 = v75[1];
      if ((v76 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_122;
      }

      v75 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v75)
      {
        goto LABEL_261;
      }

      v76 = 0;
      *v75 = *(a1 + 4904);
      v75[1] = 0;
      *(a1 + 4904) = v75;
LABEL_122:
      v75[1] = v76 + 32;
      v19 = v75 + v76;
      v19[24] = 8;
      *(v19 + 25) = *(v19 + 25) & 0xF000 | 0x540;
      *(v19 + 2) = &unk_2868A4798;
      v20 = "int";
      goto LABEL_123;
    case 'j':
      *a1 = v3 + 1;
      v53 = *(a1 + 4904);
      v54 = v53[1];
      if ((v54 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_78;
      }

      v53 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v53)
      {
        goto LABEL_261;
      }

      v54 = 0;
      *v53 = *(a1 + 4904);
      v53[1] = 0;
      *(a1 + 4904) = v53;
LABEL_78:
      v53[1] = v54 + 32;
      v55 = v53 + v54;
      v55[24] = 8;
      *(v55 + 25) = *(v55 + 25) & 0xF000 | 0x540;
      *(v55 + 2) = &unk_2868A4798;
      *(v55 + 4) = "unsigned int";
      *(v55 + 5) = 12;
      return;
    case 'l':
      *a1 = v3 + 1;
      v79 = *(a1 + 4904);
      v80 = v79[1];
      if ((v80 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_137;
      }

      v79 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v79)
      {
        goto LABEL_261;
      }

      v80 = 0;
      *v79 = *(a1 + 4904);
      v79[1] = 0;
      *(a1 + 4904) = v79;
LABEL_137:
      v79[1] = v80 + 32;
      v15 = v79 + v80;
      v15[24] = 8;
      *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
      *(v15 + 2) = &unk_2868A4798;
      v16 = "long";
      goto LABEL_170;
    case 'm':
      *a1 = v3 + 1;
      v45 = *(a1 + 4904);
      v46 = v45[1];
      if ((v46 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_56;
      }

      v45 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v45)
      {
        goto LABEL_261;
      }

      v46 = 0;
      *v45 = *(a1 + 4904);
      v45[1] = 0;
      *(a1 + 4904) = v45;
LABEL_56:
      v45[1] = v46 + 32;
      v43 = v45 + v46;
      v43[24] = 8;
      *(v43 + 25) = *(v43 + 25) & 0xF000 | 0x540;
      *(v43 + 2) = &unk_2868A4798;
      v44 = "unsigned long";
LABEL_57:
      *(v43 + 4) = v44;
      *(v43 + 5) = 13;
      return;
    case 'n':
      *a1 = v3 + 1;
      v24 = *(a1 + 4904);
      v25 = v24[1];
      if ((v25 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_27;
      }

      v24 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v24)
      {
        goto LABEL_261;
      }

      v25 = 0;
      *v24 = *(a1 + 4904);
      v24[1] = 0;
      *(a1 + 4904) = v24;
LABEL_27:
      v24[1] = v25 + 32;
      v26 = v24 + v25;
      v26[24] = 8;
      *(v26 + 25) = *(v26 + 25) & 0xF000 | 0x540;
      *(v26 + 2) = &unk_2868A4798;
      *(v26 + 4) = "__int128";
      *(v26 + 5) = 8;
      return;
    case 'o':
      *a1 = v3 + 1;
      v21 = *(a1 + 4904);
      v22 = v21[1];
      if ((v22 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_23;
      }

      v21 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v21)
      {
        goto LABEL_261;
      }

      v22 = 0;
      *v21 = *(a1 + 4904);
      v21[1] = 0;
      *(a1 + 4904) = v21;
LABEL_23:
      v21[1] = v22 + 32;
      v23 = v21 + v22;
      v23[24] = 8;
      *(v23 + 25) = *(v23 + 25) & 0xF000 | 0x540;
      *(v23 + 2) = &unk_2868A4798;
      *(v23 + 4) = "unsigned __int128";
      *(v23 + 5) = 17;
      return;
    case 'r':
      if (v5 < 2)
      {
        v47 = 1;
        v48 = 1;
      }

      else
      {
        v6 = v3[1];
        v7 = 1;
LABEL_60:
        if (v6 == 86)
        {
          v47 = v7 + 1;
        }

        else
        {
          v47 = v7;
        }

        v48 = v47;
        if (v5 > v47)
        {
          if (v3[v47] == 75)
          {
            v48 = v47 + 1;
          }

          else
          {
            v48 = v47;
          }

          v47 = v48;
        }
      }

      if (v5 > v48 && ((v49 = v3[v48], v49 == 70) || ((v50 = v47 + 1, v49 == 68) ? (v51 = v5 > v50) : (v51 = 0), v51 && ((v104 = v3[v50] - 79, v51 = v104 > 0x29, v105 = (1 << v104) & 0x30100000001, !v51) ? (v106 = v105 == 0) : (v106 = 1), !v106))))
      {
LABEL_198:
      }

      else
      {
LABEL_74:
      }

      goto LABEL_145;
    case 's':
      *a1 = v3 + 1;
      v56 = *(a1 + 4904);
      v57 = v56[1];
      if ((v57 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_88;
      }

      v56 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v56)
      {
        goto LABEL_261;
      }

      v57 = 0;
      *v56 = *(a1 + 4904);
      v56[1] = 0;
      *(a1 + 4904) = v56;
LABEL_88:
      v56[1] = v57 + 32;
      v58 = v56 + v57;
      v58[24] = 8;
      *(v58 + 25) = *(v58 + 25) & 0xF000 | 0x540;
      *(v58 + 2) = &unk_2868A4798;
      v59 = "short";
LABEL_133:
      *(v58 + 4) = v59;
      *(v58 + 5) = 5;
      return;
    case 't':
      *a1 = v3 + 1;
      v81 = *(a1 + 4904);
      v82 = v81[1];
      if ((v82 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_141;
      }

      v81 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v81)
      {
        goto LABEL_261;
      }

      v82 = 0;
      *v81 = *(a1 + 4904);
      v81[1] = 0;
      *(a1 + 4904) = v81;
LABEL_141:
      v81[1] = v82 + 32;
      v83 = v81 + v82;
      v83[24] = 8;
      *(v83 + 25) = *(v83 + 25) & 0xF000 | 0x540;
      *(v83 + 2) = &unk_2868A4798;
      *(v83 + 4) = "unsigned short";
      *(v83 + 5) = 14;
      return;
    case 'u':
      *a1 = v3 + 1;
      if (v4 == (v3 + 1) || v3[1] - 58 < 0xFFFFFFF6)
      {
        return;
      }

      v60 = 0;
      v61 = 0;
      do
      {
        v62 = v61;
        v63 = v60;
        v64 = &v3[v60 + 2];
        *a1 = v64;
        v65 = v3[v60 + 1];
        v61 = v65 + 10 * v61 - 48;
        if (v64 == v4)
        {
          break;
        }

        ++v60;
      }

      while (*v64 - 48 <= 9);
      if (v5 - v63 - 2 < v61)
      {
        return;
      }

      v66 = &v3[10 * v62 - 46 + v63 + v65];
      *a1 = v66;
      v124.n128_u64[0] = v64;
      v124.n128_u64[1] = v61;
      if (!v61)
      {
        return;
      }

      if (v66 == v4 || *v66 != 73)
      {
      }

      else
      {
        *a1 = &v3[10 * v62 - 45 + v63 + v65];
        if (!v125)
        {
          return;
        }

        v67 = *a1;
        if (*a1 == *(a1 + 8) || *v67 != 69)
        {
          return;
        }

        *a1 = v67 + 1;
      }

LABEL_160:
      v123 = v52;
      v84 = *(a1 + 304);
      if (v84 != *(a1 + 312))
      {
        goto LABEL_155;
      }

      goto LABEL_147;
    case 'v':
      *a1 = v3 + 1;
      v13 = *(a1 + 4904);
      v14 = v13[1];
      if ((v14 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_15;
      }

      v13 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v13)
      {
        goto LABEL_261;
      }

      v14 = 0;
      *v13 = *(a1 + 4904);
      v13[1] = 0;
      *(a1 + 4904) = v13;
LABEL_15:
      v13[1] = v14 + 32;
      v15 = v13 + v14;
      v15[24] = 8;
      *(v15 + 25) = *(v15 + 25) & 0xF000 | 0x540;
      *(v15 + 2) = &unk_2868A4798;
      v16 = "void";
LABEL_170:
      *(v15 + 4) = v16;
      *(v15 + 5) = 4;
      return;
    case 'w':
      *a1 = v3 + 1;
      v36 = *(a1 + 4904);
      v37 = v36[1];
      if ((v37 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_43;
      }

      v36 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v36)
      {
        goto LABEL_261;
      }

      v37 = 0;
      *v36 = *(a1 + 4904);
      v36[1] = 0;
      *(a1 + 4904) = v36;
LABEL_43:
      v36[1] = v37 + 32;
      v38 = v36 + v37;
      v38[24] = 8;
      *(v38 + 25) = *(v38 + 25) & 0xF000 | 0x540;
      *(v38 + 2) = &unk_2868A4798;
      *(v38 + 4) = "wchar_t";
      *(v38 + 5) = 7;
      return;
    case 'x':
      *a1 = v3 + 1;
      v91 = *(a1 + 4904);
      v92 = v91[1];
      if ((v92 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_165;
      }

      v91 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v91)
      {
        goto LABEL_261;
      }

      v92 = 0;
      *v91 = *(a1 + 4904);
      v91[1] = 0;
      *(a1 + 4904) = v91;
LABEL_165:
      v91[1] = v92 + 32;
      v93 = v91 + v92;
      v93[24] = 8;
      *(v93 + 25) = *(v93 + 25) & 0xF000 | 0x540;
      *(v93 + 2) = &unk_2868A4798;
      *(v93 + 4) = "long long";
      *(v93 + 5) = 9;
      return;
    case 'y':
      *a1 = v3 + 1;
      v10 = *(a1 + 4904);
      v11 = v10[1];
      if ((v11 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_11;
      }

      v10 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v10)
      {
        goto LABEL_261;
      }

      v11 = 0;
      *v10 = *(a1 + 4904);
      v10[1] = 0;
      *(a1 + 4904) = v10;
LABEL_11:
      v10[1] = v11 + 32;
      v12 = v10 + v11;
      v12[24] = 8;
      *(v12 + 25) = *(v12 + 25) & 0xF000 | 0x540;
      *(v12 + 2) = &unk_2868A4798;
      *(v12 + 4) = "unsigned long long";
      *(v12 + 5) = 18;
      return;
    case 'z':
      *a1 = v3 + 1;
      v17 = *(a1 + 4904);
      v18 = v17[1];
      if ((v18 - 4048) > 0xFFFFFFFFFFFFF00FLL)
      {
        goto LABEL_19;
      }

      v17 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v17)
      {
LABEL_261:
        std::terminate();
      }

      v18 = 0;
      *v17 = *(a1 + 4904);
      v17[1] = 0;
      *(a1 + 4904) = v17;
LABEL_19:
      v17[1] = v18 + 32;
      v19 = v17 + v18;
      v19[24] = 8;
      *(v19 + 25) = *(v19 + 25) & 0xF000 | 0x540;
      *(v19 + 2) = &unk_2868A4798;
      v20 = "...";
LABEL_123:
      *(v19 + 4) = v20;
      *(v19 + 5) = 3;
      return;
    default:
      goto LABEL_144;
  }
}

void *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::SaveTemplateParams::SaveTemplateParams(void *result, void *a2)
{
  v2 = a2;
  *(result + 2) = 0u;
  v3 = result + 4;
  *result = a2;
  result[1] = result + 4;
  *(result + 11) = 0u;
  v4 = (result + 11);
  result[8] = result + 11;
  v5 = (result + 8);
  result[2] = result + 4;
  result[3] = result + 8;
  *(result + 3) = 0u;
  v6 = result + 19;
  result[9] = result + 11;
  result[10] = result + 19;
  *(result + 13) = 0u;
  *(result + 15) = 0u;
  *(result + 17) = 0u;
  v7 = a2[83];
  v8 = v2 + 86;
  if (v7 == (v2 + 86))
  {
    v14 = v2[84];
    if (v14 == v7)
    {
      v9 = (result + 11);
      v16 = v7;
    }

    else
    {
      v15 = result;
      memmove(result + 4, v7, v14 - v7);
      result = v15;
      v16 = v2[84];
      v7 = v2[83];
      v9 = *v5;
    }

    result[2] = v3 + v16 - v7;
    v2[84] = v7;
    v10 = v2[72];
    v11 = v2 + 75;
    if (v10 != v2 + 75)
    {
      goto LABEL_3;
    }

LABEL_10:
    if (v9 == v4)
    {
      v4 = v9;
      v22 = v2[73];
      v19 = v22 - v10;
      if (v22 != v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v17 = result;
      free(v9);
      result = v17;
      v17[8] = v4;
      v17[9] = v4;
      v17[10] = v6;
      v10 = v2[72];
      v18 = v2[73];
      v19 = v18 - v10;
      if (v18 != v10)
      {
LABEL_12:
        v20 = result;
        memmove(v4, v10, v19);
        result = v20;
        v4 = *v5;
        v21 = v2[73];
        v10 = v2[72];
LABEL_15:
        result[9] = &v4[v21 - v10];
        v2[73] = v10;
        v2 = *result;
        v7 = *(*result + 664);
        v11 = *(*result + 576);
        goto LABEL_16;
      }
    }

    v21 = v10;
    goto LABEL_15;
  }

  result[1] = v7;
  *(result + 1) = *(v2 + 42);
  v2[83] = v8;
  v2[84] = v8;
  v2[85] = v2 + 90;
  v7 = (v2 + 86);
  v9 = (result + 11);
  v10 = v2[72];
  v11 = v2 + 75;
  if (v10 == v2 + 75)
  {
    goto LABEL_10;
  }

LABEL_3:
  *v5 = v10;
  if (v9 == v4)
  {
    *(result + 9) = *(v2 + 73);
    v2[72] = v11;
    v2[73] = v11;
    v2[74] = v2 + 83;
  }

  else
  {
    v2[72] = v9;
    v12 = result[9];
    result[9] = v2[73];
    v2[73] = v12;
    v13 = result[10];
    result[10] = v2[74];
    v2[74] = v13;
    v11 = v2[72];
    v2[73] = v11;
  }

LABEL_16:
  v2[84] = v7;
  v2[73] = v11;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseName(uint64_t a1, size_t a2)
{
  v2 = a2;
  v5 = *a1;
  v4 = *(a1 + 8);
  if (v4 == *a1)
  {
LABEL_9:
    LOBYTE(v57[0]) = 0;
    if (!v10)
    {
      return v10;
    }

    if (*(a1 + 8) == *a1 || **a1 != 73)
    {
      if (v57[0])
      {
        return 0;
      }

      return v10;
    }

    if ((v57[0] & 1) == 0)
    {
      v11 = *(a1 + 304);
      if (v11 == *(a1 + 312))
      {
        v12 = *(a1 + 296);
        v13 = v11 - v12;
        if (v12 == (a1 + 320))
        {
          v14 = malloc_type_malloc(2 * v13, 0x2004093837F09uLL);
          if (!v14)
          {
            goto LABEL_127;
          }

          v46 = *(a1 + 296);
          v47 = *(a1 + 304);
          if (v47 != v46)
          {
            v48 = v14;
            memmove(v14, v46, v47 - v46);
            v14 = v48;
          }

          *(a1 + 296) = v14;
        }

        else
        {
          v14 = malloc_type_realloc(v12, 2 * (v11 - v12), 0x2004093837F09uLL);
          *(a1 + 296) = v14;
          if (!v14)
          {
LABEL_127:
            abort();
          }
        }

        v11 = &v14[v13];
        *(a1 + 312) = &v14[8 * (v13 >> 2)];
      }

      *v11 = v10;
      *(a1 + 304) = v11 + 8;
    }

    if (!v49)
    {
      return 0;
    }

    if (v2)
    {
      v2[1] = 1;
    }

    v50 = *(a1 + 4904);
    v51 = v50[1];
    if ((v51 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v52 = v49;
      v53 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v53)
      {
LABEL_128:
        std::terminate();
      }

      v50 = v53;
      v51 = 0;
      *v53 = *(a1 + 4904);
      v53[1] = 0;
      *(a1 + 4904) = v53;
      v49 = v52;
    }

    v50[1] = v51 + 32;
    v54 = v50 + v51;
    v54[24] = 45;
    *(v54 + 25) = *(v54 + 25) & 0xF000 | 0x540;
    *(v54 + 2) = &unk_2868A64A8;
    *(v54 + 4) = v10;
    *(v54 + 5) = v49;
    return v54 + 16;
  }

  v6 = *v5;
  if (v6 == 90)
  {
    *a1 = v5 + 1;
    if (!v58[0])
    {
      return 0;
    }

    v17 = *a1;
    v16 = *(a1 + 8);
    if (*a1 == v16 || *v17 != 69)
    {
      return 0;
    }

    *a1 = v17 + 1;
    if (v17 + 1 != v16 && v17[1] == 115)
    {
      *a1 = v17 + 2;
      *a1 = llvm::itanium_demangle::parse_discriminator(v17 + 2, v16, v15);
    }

    v43 = *a1;
    if (*a1 == *(a1 + 8) || *v43 != 100)
    {
      if (!v56)
      {
LABEL_110:
        v10 = 0;
        goto LABEL_111;
      }

      *a1 = llvm::itanium_demangle::parse_discriminator(*a1, *(a1 + 8), v45);
    }

    else
    {
      *a1 = v43 + 1;
      v44 = *a1;
      if (*a1 == *(a1 + 8))
      {
        goto LABEL_110;
      }

      if (*v44 != 95)
      {
        goto LABEL_110;
      }

      *a1 = v44 + 1;
      if (!v56)
      {
        goto LABEL_110;
      }
    }

LABEL_111:
    return v10;
  }

  if (v6 != 78)
  {
    goto LABEL_9;
  }

  v7 = (v5 + 1);
  *a1 = v5 + 1;
  if (v5 + 1 == v4)
  {
    goto LABEL_25;
  }

  v8 = *v7;
  if (v8 == 72)
  {
    v7 = (v5 + 2);
    *a1 = v5 + 2;
    if (a2)
    {
      v19 = 1;
      v20 = 24;
LABEL_45:
      *(a2 + v20) = v19;
      goto LABEL_46;
    }

    goto LABEL_46;
  }

  if (v8 != 114)
  {
LABEL_25:
    v9 = 0;
    if (v7 == v4)
    {
      goto LABEL_28;
    }

LABEL_26:
    if (*v7 == 86)
    {
      *a1 = ++v7;
      v9 |= 2u;
    }

    goto LABEL_28;
  }

  v7 = (v5 + 2);
  *a1 = v5 + 2;
  v9 = 4;
  if (v7 != v4)
  {
    goto LABEL_26;
  }

LABEL_28:
  if (v7 != v4 && *v7 == 75)
  {
    *a1 = ++v7;
    v9 |= 1u;
  }

  if (a2)
  {
    *(a2 + 4) = v9;
  }

  if (v7 == v4)
  {
    goto LABEL_38;
  }

  v18 = *v7;
  if (v18 == 82)
  {
    *a1 = ++v7;
    if (a2)
    {
      v19 = 1;
      goto LABEL_44;
    }

    goto LABEL_46;
  }

  if (v18 != 79)
  {
LABEL_38:
    if (a2)
    {
      v19 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    *a1 = ++v7;
    if (a2)
    {
      v19 = 2;
LABEL_44:
      v20 = 8;
      goto LABEL_45;
    }
  }

LABEL_46:
  v10 = 0;
  v21 = (a1 + 320);
  while (v7 == v4 || *v7 != 69)
  {
    if (v2)
    {
      v2[1] = 0;
    }

    v22 = 0;
    v23 = v4 - v7;
    if (!v23)
    {
      goto LABEL_83;
    }

    v24 = *v7;
    if (v24 > 0x52)
    {
      if (v24 != 83)
      {
        if (v24 != 84)
        {
          goto LABEL_83;
        }

        if (v10)
        {
          return 0;
        }

        goto LABEL_84;
      }

      if (v23 >= 2 && v7[1] == 116)
      {
        *a1 = v7 + 2;
        v31 = *(a1 + 4904);
        v32 = v31[1];
        if ((v32 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
        {
          v31 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (!v31)
          {
            goto LABEL_128;
          }

          v32 = 0;
          *v31 = *(a1 + 4904);
          v31[1] = 0;
          *(a1 + 4904) = v31;
        }

        v31[1] = v32 + 32;
        v33 = v31 + v32;
        v22 = (v33 + 16);
        v33[24] = 8;
        *(v33 + 25) = *(v33 + 25) & 0xF000 | 0x540;
        *(v33 + 2) = &unk_2868A4798;
        *(v33 + 4) = "std";
        *(v33 + 5) = 3;
      }

      else
      {
        if (!v34)
        {
          return 0;
        }

        v22 = v34;
        if (v34[8] == 27)
        {
          goto LABEL_83;
        }
      }

      if (v10)
      {
        return 0;
      }

      v7 = *a1;
      v4 = *(a1 + 8);
      v10 = v22;
    }

    else
    {
      if (v24 != 68)
      {
        if (v24 == 73)
        {
          if (!v10)
          {
            return v10;
          }

          if (!v25 || v10[8] == 45)
          {
            return 0;
          }

          v26 = v25;
          if (v2)
          {
            v2[1] = 1;
          }

          v27 = *(a1 + 4904);
          v28 = v27[1];
          if ((v28 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v27 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
            if (!v27)
            {
              goto LABEL_128;
            }

            v28 = 0;
            *v27 = *(a1 + 4904);
            v27[1] = 0;
            *(a1 + 4904) = v27;
          }

          v27[1] = v28 + 32;
          v29 = v27 + v28;
          v29[24] = 45;
          *(v29 + 25) = *(v29 + 25) & 0xF000 | 0x540;
          *(v29 + 2) = &unk_2868A64A8;
          *(v29 + 4) = v10;
          *(v29 + 5) = v26;
          v10 = v29 + 16;
          goto LABEL_85;
        }

        goto LABEL_83;
      }

      if (v23 < 2 || (v7[1] | 0x20) != 0x74)
      {
        v22 = 0;
LABEL_83:
        goto LABEL_84;
      }

      if (v10)
      {
        return 0;
      }

LABEL_84:
      v10 = v30;
      if (!v30)
      {
        return v10;
      }

LABEL_85:
      v35 = *(a1 + 304);
      if (v35 == *(a1 + 312))
      {
        v37 = *(a1 + 296);
        v38 = v35 - v37;
        if (v37 == v21)
        {
          v39 = malloc_type_malloc(2 * (v35 - v37), 0x2004093837F09uLL);
          if (!v39)
          {
            goto LABEL_127;
          }

          a2 = *(a1 + 296);
          v40 = *(a1 + 304);
          if (v40 != a2)
          {
            v41 = v39;
            memmove(v39, a2, v40 - a2);
            v39 = v41;
          }

          *(a1 + 296) = v39;
        }

        else
        {
          v39 = malloc_type_realloc(v37, 2 * (v35 - v37), 0x2004093837F09uLL);
          *(a1 + 296) = v39;
          if (!v39)
          {
            goto LABEL_127;
          }
        }

        *(a1 + 312) = &v39[8 * (v38 >> 2)];
        *&v39[v38] = v10;
        *(a1 + 304) = &v39[v38 + 8];
        v7 = *a1;
        v36 = *(a1 + 8);
        v4 = *a1;
        if (*a1 != v36)
        {
LABEL_96:
          v4 = v36;
          if (*v7 == 77)
          {
            *a1 = ++v7;
            v4 = v36;
          }
        }
      }

      else
      {
        *v35 = v10;
        *(a1 + 304) = v35 + 8;
        v7 = *a1;
        v36 = *(a1 + 8);
        v4 = *a1;
        if (*a1 != v36)
        {
          goto LABEL_96;
        }
      }
    }
  }

  *a1 = v7 + 1;
  if (v10)
  {
    v42 = *(a1 + 304);
    if (*(a1 + 296) != v42)
    {
      *(a1 + 304) = v42 - 8;
      return v10;
    }

    return 0;
  }

  return v10;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseTemplateArg(void *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = &v3[-*a1];
  if (v3 == *a1)
  {
    v5 = 2147483611;
LABEL_12:
    if (v5 != 5)
    {
      if (v5 == 7)
      {
        *a1 = v2 + 1;
        {
          v7 = *a1;
          if (*a1 != a1[1] && *v7 == 69)
          {
            goto LABEL_17;
          }
        }

        return;
      }

LABEL_54:

      return;
    }

    if (v3 == v2 || *v2 != 84)
    {
      goto LABEL_54;
    }

    v20 = v4 < 2 ? 0 : v2[1];
    v28 = memchr("yptnk", v20, 5uLL);
    if (!v28 || v28 - "yptnk" == -1)
    {
      goto LABEL_54;
    }

    if (!v29)
    {
      return;
    }

    v21 = v29;
    if (!v30)
    {
      return;
    }

    v23 = v30;
    v31 = a1[613];
    v32 = v31[1];
    if ((v32 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v31 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v31)
      {
        goto LABEL_58;
      }

      v32 = 0;
      *v31 = a1[613];
      v31[1] = 0;
      a1[613] = v31;
    }

    v31[1] = v32 + 32;
    v26 = v31 + v32;
    v26[24] = 34;
    *(v26 + 25) = *(v26 + 25) & 0xF000 | 0x540;
    v27 = &unk_2868A6598;
    goto LABEL_44;
  }

  HIDWORD(v6) = *v2 - 74;
  LODWORD(v6) = HIDWORD(v6);
  v5 = v6 >> 1;
  if (v5 > 4)
  {
    goto LABEL_12;
  }

  if (!v5)
  {
    v8 = v2 + 1;
    *a1 = v8;
    v9 = (a1[3] - a1[2]) >> 3;
    v10 = a1 + 5;
    while (v8 == v3 || *v8 != 69)
    {
      if (!v13)
      {
        return;
      }

      v12 = a1[3];
      if (v12 == a1[4])
      {
        v14 = v13;
        v15 = a1[2];
        v16 = v12 - v15;
        if (v15 == v10)
        {
          v11 = malloc_type_malloc(2 * (v12 - v15), 0x2004093837F09uLL);
          if (!v11)
          {
LABEL_57:
            abort();
          }

          v17 = a1[2];
          v18 = a1[3];
          if (v18 != v17)
          {
            v19 = v11;
            memmove(v11, v17, v18 - v17);
            v11 = v19;
          }

          a1[2] = v11;
        }

        else
        {
          v11 = malloc_type_realloc(v15, 2 * (v12 - v15), 0x2004093837F09uLL);
          a1[2] = v11;
          if (!v11)
          {
            goto LABEL_57;
          }
        }

        v12 = &v11[v16];
        a1[4] = &v11[8 * (v16 >> 2)];
        v13 = v14;
      }

      *v12 = v13;
      a1[3] = v12 + 1;
      v8 = *a1;
      v3 = a1[1];
    }

    *a1 = v8 + 1;
    v23 = v22;
    v24 = a1[613];
    v25 = v24[1];
    if ((v25 - 4048) > 0xFFFFFFFFFFFFF00FLL)
    {
      goto LABEL_43;
    }

    v24 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (v24)
    {
      v25 = 0;
      *v24 = a1[613];
      v24[1] = 0;
      a1[613] = v24;
LABEL_43:
      v24[1] = v25 + 32;
      v26 = v24 + v25;
      v26[24] = 41;
      *(v26 + 25) = *(v26 + 25) & 0xF000 | 0x540;
      v27 = &unk_2868A6520;
LABEL_44:
      *(v26 + 2) = v27;
      *(v26 + 4) = v21;
      *(v26 + 5) = v23;
      return;
    }

LABEL_58:
    std::terminate();
  }

  if (v5 != 1)
  {
    goto LABEL_54;
  }

  if (v4 >= 2 && v2[1] == 90)
  {
    *a1 = v2 + 2;
    {
      return;
    }

    v7 = *a1;
    if (*a1 == a1[1] || *v7 != 69)
    {
      return;
    }

LABEL_17:
    *a1 = v7 + 1;
    return;
  }
}

const void **llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back(const void **result, void *size)
{
  v2 = result;
  v3 = result[1];
  if (v3 == result[2])
  {
    v4 = size;
    v5 = *result;
    v6 = v3 - *v2;
    if (*v2 == v2 + 3)
    {
      result = malloc_type_malloc(2 * v6, 0x2004093837F09uLL);
      if (!result)
      {
        goto LABEL_11;
      }

      v7 = v2[1];
      if (v7 != *v2)
      {
        v8 = result;
        memmove(result, *v2, v7 - *v2);
        result = v8;
      }

      *v2 = result;
    }

    else
    {
      result = malloc_type_realloc(v5, 2 * v6, 0x2004093837F09uLL);
      *v2 = result;
      if (!result)
      {
LABEL_11:
        abort();
      }
    }

    v3 = result + v6;
    v2[2] = &result[v6 >> 2];
    size = v4;
  }

  *v3 = *size;
  v2[1] = v3 + 8;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::EnableIfAttr,llvm::itanium_demangle::NodeArray>(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  v6[24] = 10;
  v7 = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A6610;
  result = *a2;
  *(v6 + 25) = v7;
  *(v6 + 2) = result;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::popTrailingNodeArray(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = (a1[2] + 8 * a2);
  v6 = (v4 - v5 + 15) & 0xFFFFFFF0;
  v7 = a1[613];
  v8 = v7[1];
  if (v6 + v8 >= 0xFF0)
  {
    if (v6 >= 0xFF1)
    {
      v9 = malloc_type_malloc(v6 + 16, 0x1020040EDED9539uLL);
      if (v9)
      {
        v10 = a1[613];
        *v9 = *v10;
        v9[1] = 0;
        *v10 = v9;
        v11 = (v9 + 2);
        if (v4 == v5)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

LABEL_11:
      std::terminate();
    }

    v7 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = 0;
    *v7 = a1[613];
    v7[1] = 0;
    a1[613] = v7;
  }

  v7[1] = v8 + v6;
  v11 = v7 + v8 + 16;
  if (v4 != v5)
  {
LABEL_9:
    memmove(v11, v5, v4 - v5);
  }

LABEL_10:
  a1[3] = a1[2] + 8 * a2;
  return v11;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::ExplicitObjectParameter,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 87;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A6688;
  *(v6 + 4) = v8;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::FunctionEncoding,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::NodeArray &,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Qualifiers &,llvm::itanium_demangle::FunctionRefQual &>(uint64_t a1, uint64_t *a2, uint64_t *a3, __n128 *a4, uint64_t *a5, uint64_t *a6, int *a7, char *a8)
{
  v16 = *(a1 + 4904);
  v17 = v16[1];
  if ((v17 - 4000) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v16 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v16)
    {
      std::terminate();
    }

    v17 = 0;
    *v16 = *(a1 + 4904);
    v16[1] = 0;
    *(a1 + 4904) = v16;
  }

  v16[1] = v17 + 80;
  v18 = v16 + v17;
  v19 = *a2;
  v20 = *a3;
  v21 = *a5;
  v22 = *a6;
  v23 = *a7;
  v24 = *a8;
  v18[24] = 19;
  v25 = *(v18 + 25) & 0xF000 | 0x100;
  *(v18 + 2) = &unk_2868A6700;
  *(v18 + 4) = v19;
  *(v18 + 5) = v20;
  result = *a4;
  *(v18 + 25) = v25;
  *(v18 + 3) = result;
  *(v18 + 8) = v21;
  *(v18 + 9) = v22;
  *(v18 + 20) = v23;
  v18[84] = v24;
  return result;
}

void *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::SaveTemplateParams::~SaveTemplateParams(void *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1 + 4;
  v5 = *(*a1 + 664);
  v6 = (v3 + 688);
  if (v2 != v4)
  {
    *(v3 + 664) = v2;
    if (v5 == v6)
    {
      *(v3 + 672) = *(a1 + 1);
      a1[1] = v4;
      a1[2] = v4;
      a1[3] = a1 + 8;
      v9 = a1[8];
      v10 = (a1 + 11);
      v11 = *(v3 + 576);
      v12 = v3 + 600;
      if (v9 == (a1 + 11))
      {
        goto LABEL_10;
      }
    }

    else
    {
      a1[1] = v5;
      v7 = *(v3 + 672);
      *(v3 + 672) = a1[2];
      a1[2] = v7;
      v8 = *(v3 + 680);
      *(v3 + 680) = a1[3];
      a1[2] = a1[1];
      a1[3] = v8;
      v9 = a1[8];
      v10 = (a1 + 11);
      v11 = *(v3 + 576);
      v12 = v3 + 600;
      if (v9 == (a1 + 11))
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    *(v3 + 576) = v9;
    if (v11 == v12)
    {
      *(v3 + 584) = *(a1 + 9);
      a1[8] = v10;
      a1[9] = v10;
      a1[10] = a1 + 19;
      goto LABEL_23;
    }

    a1[8] = v11;
    v17 = *(v3 + 584);
    *(v3 + 584) = a1[9];
    a1[9] = v17;
    v18 = *(v3 + 592);
    *(v3 + 592) = a1[10];
    v9 = a1[8];
    a1[9] = v9;
    a1[10] = v18;
    if (v9 != v10)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v5 != v6)
  {
    free(v5);
    *(v3 + 664) = v6;
    *(v3 + 672) = v6;
    *(v3 + 680) = v3 + 720;
    v2 = a1[1];
    v5 = (v3 + 688);
  }

  v13 = a1[2];
  if (v13 == v2)
  {
    v14 = v2;
  }

  else
  {
    memmove(v5, v2, v13 - v2);
    v5 = *(v3 + 664);
    v2 = a1[1];
    v14 = a1[2];
  }

  *(v3 + 672) = &v5[v14 - v2];
  a1[2] = v2;
  v3 = *a1;
  v9 = a1[8];
  v10 = (a1 + 11);
  v11 = *(*a1 + 576);
  v12 = *a1 + 600;
  if (v9 != (a1 + 11))
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v11 != v12)
  {
    free(v11);
    *(v3 + 576) = v12;
    *(v3 + 584) = v12;
    *(v3 + 592) = v3 + 664;
    v9 = a1[8];
    v11 = v12;
  }

  v15 = a1[9];
  if (v15 == v9)
  {
    v16 = v9;
  }

  else
  {
    memmove(v11, v9, v15 - v9);
    v11 = *(v3 + 576);
    v9 = a1[8];
    v16 = a1[9];
  }

  *(v3 + 584) = &v11[v16 - v9];
  a1[9] = v9;
  if (v9 != v10)
  {
LABEL_22:
    free(v9);
  }

LABEL_23:
  v19 = a1[1];
  if (v19 != v4)
  {
    free(v19);
  }

  return a1;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[31],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A4698;
  *(v6 + 4) = "template parameter object for ";
  *(v6 + 5) = 30;
  *(v6 + 6) = v8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[12],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A4698;
  *(v6 + 4) = "vtable for ";
  *(v6 + 5) = 11;
  *(v6 + 6) = v8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[9],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A4698;
  *(v6 + 4) = "VTT for ";
  *(v6 + 5) = 8;
  *(v6 + 6) = v8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[14],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A4698;
  *(v6 + 4) = "typeinfo for ";
  *(v6 + 5) = 13;
  *(v6 + 6) = v8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[19],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A4698;
  *(v6 + 4) = "typeinfo name for ";
  *(v6 + 5) = 18;
  *(v6 + 6) = v8;
  return result;
}

uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseCallOffset(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    v3 = *v1;
    if (v3 == 118)
    {
      v10 = v1 + 1;
      *a1 = v1 + 1;
      if (v1 + 1 == v2)
      {
        return 1;
      }

      v11 = v1 + 1;
      if (*v10 == 110)
      {
        v11 = v1 + 2;
        *a1 = v1 + 2;
      }

      if (v2 == v11)
      {
        return 1;
      }

      v12 = *v11;
      if (v12 < 0)
      {
        return 1;
      }

      v13 = MEMORY[0x277D85DE0];
      if ((*(MEMORY[0x277D85DE0] + 4 * v12 + 60) & 0x400) == 0)
      {
        return 1;
      }

      while (1)
      {
        v14 = *v11;
        if (v14 < 0 || (*(v13 + 4 * v14 + 60) & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v11;
        if (v11 == v2)
        {
          v15 = v2;
          goto LABEL_30;
        }
      }

      v15 = v11;
LABEL_30:
      if (v15 == v10)
      {
        return 1;
      }

      if (v11 == v2)
      {
        return 1;
      }

      if (*v11 != 95)
      {
        return 1;
      }

      v17 = v11 + 1;
      *a1 = v11 + 1;
      if (v11 + 1 == v2)
      {
        return 1;
      }

      v5 = v11 + 1;
      if (*v17 == 110)
      {
        v5 = v11 + 2;
        *a1 = v11 + 2;
      }

      if (v2 == v5)
      {
        return 1;
      }

      v18 = *v5;
      if (v18 < 0 || (*(v13 + 4 * v18 + 60) & 0x400) == 0)
      {
        return 1;
      }

      while (1)
      {
        v19 = *v5;
        if (v19 < 0 || (*(v13 + 4 * v19 + 60) & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v5;
        if (v5 == v2)
        {
          v20 = v2;
          goto LABEL_45;
        }
      }

      v20 = v5;
LABEL_45:
      if (v20 == v17)
      {
        return 1;
      }
    }

    else
    {
      if (v3 != 104)
      {
        return 1;
      }

      v4 = v1 + 1;
      *a1 = v1 + 1;
      if (v1 + 1 == v2)
      {
        return 1;
      }

      v5 = v1 + 1;
      if (*v4 == 110)
      {
        v5 = v1 + 2;
        *a1 = v1 + 2;
      }

      if (v2 == v5)
      {
        return 1;
      }

      v6 = *v5;
      if (v6 < 0)
      {
        return 1;
      }

      v7 = MEMORY[0x277D85DE0];
      if ((*(MEMORY[0x277D85DE0] + 4 * v6 + 60) & 0x400) == 0)
      {
        return 1;
      }

      while (1)
      {
        v8 = *v5;
        if (v8 < 0 || (*(v7 + 4 * v8 + 60) & 0x400) == 0)
        {
          break;
        }

        *a1 = ++v5;
        if (v5 == v2)
        {
          v9 = v2;
          goto LABEL_25;
        }
      }

      v9 = v5;
LABEL_25:
      if (v9 == v4)
      {
        return 1;
      }
    }

    if (v5 != v2 && *v5 == 95)
    {
      *a1 = v5 + 1;
      return 0;
    }
  }

  return 1;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[27],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A4698;
  *(v6 + 4) = "covariant return thunk to ";
  *(v6 + 5) = 26;
  *(v6 + 6) = v8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::CtorVtableSpecialName,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 32;
  v8 = v6 + v7;
  result = v8 + 16;
  v10 = *a2;
  v11 = *a3;
  v8[24] = 22;
  *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = &unk_2868A4720;
  *(v8 + 4) = v10;
  *(v8 + 5) = v11;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[41],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A4698;
  *(v6 + 4) = "thread-local initialization routine for ";
  *(v6 + 5) = 40;
  *(v6 + 6) = v8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[18],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A4698;
  *(v6 + 4) = "virtual thunk to ";
  *(v6 + 5) = 17;
  *(v6 + 6) = v8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[22],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A4698;
  *(v6 + 4) = "non-virtual thunk to ";
  *(v6 + 5) = 21;
  *(v6 + 6) = v8;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::SpecialName,char const(&)[25],llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 48;
  v6 = v4 + v5;
  result = v6 + 16;
  v8 = *a2;
  v6[24] = 21;
  *(v6 + 25) = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A4698;
  *(v6 + 4) = "reference temporary for ";
  *(v6 + 5) = 24;
  *(v6 + 6) = v8;
  return result;
}

uint64_t llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseModuleNameOpt(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    v6 = (a1 + 320);
    while (*v2 == 87)
    {
      *a1 = v2 + 1;
      if (v2 + 1 == v3 || v2[1] != 80)
      {
        v12 = 0;
        if (!v13)
        {
          return 1;
        }
      }

      else
      {
        *a1 = v2 + 2;
        v12 = 1;
        if (!v13)
        {
          return 1;
        }
      }

      v14 = v13;
      v15 = *(a1 + 4904);
      v7 = v15[1];
      if ((v7 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v15 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v15)
        {
          std::terminate();
        }

        v7 = 0;
        *v15 = *(a1 + 4904);
        v15[1] = 0;
        *(a1 + 4904) = v15;
      }

      v15[1] = v7 + 48;
      v8 = v15 + v7;
      v9 = v8 + 16;
      v10 = *a2;
      v8[24] = 27;
      *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x540;
      *(v8 + 2) = &unk_2868A4810;
      *(v8 + 4) = v10;
      *(v8 + 5) = v14;
      v8[48] = v12;
      *a2 = (v8 + 16);
      v11 = *(a1 + 304);
      if (v11 == *(a1 + 312))
      {
        v16 = *(a1 + 296);
        v17 = v11 - v16;
        if (v16 == v6)
        {
          v18 = malloc_type_malloc(2 * (v11 - v16), 0x2004093837F09uLL);
          if (!v18)
          {
LABEL_25:
            abort();
          }

          v19 = *(a1 + 296);
          v20 = *(a1 + 304);
          if (v20 != v19)
          {
            v21 = v18;
            memmove(v18, v19, v20 - v19);
            v18 = v21;
          }

          *(a1 + 296) = v18;
        }

        else
        {
          v18 = malloc_type_realloc(v16, 2 * (v11 - v16), 0x2004093837F09uLL);
          *(a1 + 296) = v18;
          if (!v18)
          {
            goto LABEL_25;
          }
        }

        *(a1 + 312) = &v18[8 * (v17 >> 2)];
        *&v18[v17] = v9;
        *(a1 + 304) = &v18[v17 + 8];
        v2 = *a1;
        v3 = *(a1 + 8);
        if (*a1 == v3)
        {
          return 0;
        }
      }

      else
      {
        *v11 = v9;
        *(a1 + 304) = v11 + 8;
        v2 = *a1;
        v3 = *(a1 + 8);
        if (*a1 == v3)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t llvm::itanium_demangle::SpecialName::printLeft(void *a1, char **a2)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[2];
    v6 = *a2;
    v7 = a2[1];
    v8 = &v7[v4];
    v9 = a2[2];
    if (&v7[v4] > v9)
    {
      if (2 * v9 <= (v8 + 992))
      {
        v10 = (v8 + 992);
      }

      else
      {
        v10 = 2 * v9;
      }

      a2[2] = v10;
      v6 = malloc_type_realloc(v6, v10, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = a2[1];
    }

    memcpy(&v7[v6], v5, v4);
    a2[1] += v4;
  }

  v11 = a1[4];
  result = (*(*v11 + 32))(v11, a2);
  if ((*(v11 + 9) & 0xC0) != 0x40)
  {
    v13 = *(*v11 + 40);

    return v13(v11, a2);
  }

  return result;
}

uint64_t llvm::itanium_demangle::CtorVtableSpecialName::printLeft(uint64_t a1, char **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  if ((v5 + 24) > v6)
  {
    v7 = (v5 + 1016);
    v8 = 2 * v6;
    if (v8 <= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v8;
    }

    a2[2] = v9;
    v4 = malloc_type_realloc(v4, v9, 0x100004077774924uLL);
    *a2 = v4;
    if (!v4)
    {
      goto LABEL_19;
    }

    v5 = a2[1];
  }

  qmemcpy(&v5[v4], "construction vtable for ", 24);
  a2[1] += 24;
  v10 = *(a1 + 16);
  (*(*v10 + 32))(v10, a2);
  if ((*(v10 + 9) & 0xC0) != 0x40)
  {
    (*(*v10 + 40))(v10, a2);
  }

  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  if ((v12 + 4) > v13)
  {
    v14 = (v12 + 996);
    v15 = 2 * v13;
    if (v15 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    a2[2] = v16;
    v11 = malloc_type_realloc(v11, v16, 0x100004077774924uLL);
    *a2 = v11;
    if (v11)
    {
      v12 = a2[1];
      goto LABEL_15;
    }

LABEL_19:
    abort();
  }

LABEL_15:
  *&v12[v11] = 762210605;
  a2[1] += 4;
  v17 = *(a1 + 24);
  result = (*(*v17 + 32))(v17, a2);
  if ((*(v17 + 9) & 0xC0) != 0x40)
  {
    v19 = *(*v17 + 40);

    return v19(v17, a2);
  }

  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseSourceName(unsigned __int8 **a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1 == *a1 || *v2 - 58 < 0xFFFFFFF6)
  {
    return 0;
  }

  v3 = 0;
  v4 = (v2 + 1);
  v5 = v2 + 1;
  do
  {
    v6 = v3;
    v7 = v5;
    v8 = v4;
    *a1 = v5;
    v9 = *(v5 - 1);
    v3 = v9 + 10 * v3 - 48;
    if (v5 == v1)
    {
      break;
    }

    ++v5;
    ++v4;
  }

  while (*v7 - 48 <= 9);
  if (v3 - 1 >= v1 - v8)
  {
    return 0;
  }

  *a1 = &v7[10 * v6 - 48 + v9];
  if (v3 >= 0xA)
  {
    v10 = *v7;
    v11 = *(v7 + 4);
    if (v10 == 0x5F4C41424F4C475FLL && v11 == 20063)
    {
      v13 = a1[613];
      v14 = *(v13 + 1);
      if ((v14 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
      {
        v19 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (!v19)
        {
          goto LABEL_21;
        }

        v13 = v19;
        v14 = 0;
        *v19 = a1[613];
        *(v19 + 1) = 0;
        a1[613] = v19;
      }

      v8 = "(anonymous namespace)";
      v3 = 21;
      goto LABEL_20;
    }
  }

  v13 = a1[613];
  v14 = *(v13 + 1);
  if ((v14 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v16 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (v16)
    {
      v13 = v16;
      v14 = 0;
      *v16 = a1[613];
      *(v16 + 1) = 0;
      a1[613] = v16;
      goto LABEL_20;
    }

LABEL_21:
    std::terminate();
  }

LABEL_20:
  *(v13 + 1) = v14 + 32;
  v20 = &v13[v14];
  result = (v20 + 16);
  v20[24] = 8;
  *(v20 + 25) = *(v20 + 25) & 0xF000 | 0x540;
  *(v20 + 2) = &unk_2868A4798;
  *(v20 + 4) = v8;
  *(v20 + 5) = v3;
  return result;
}

__n128 llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::NameType,std::string_view &>(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 4904);
  v5 = v4[1];
  if ((v5 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v4 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v4)
    {
      std::terminate();
    }

    v5 = 0;
    *v4 = *(a1 + 4904);
    v4[1] = 0;
    *(a1 + 4904) = v4;
  }

  v4[1] = v5 + 32;
  v6 = v4 + v5;
  v6[24] = 8;
  v7 = *(v6 + 25) & 0xF000 | 0x540;
  *(v6 + 2) = &unk_2868A4798;
  result = *a2;
  *(v6 + 25) = v7;
  *(v6 + 2) = result;
  return result;
}

void *llvm::itanium_demangle::NameType::printLeft(void *result, char **a2)
{
  v2 = result[3];
  if (v2)
  {
    v4 = result[2];
    v5 = *a2;
    v6 = a2[1];
    v7 = &v6[v2];
    v8 = a2[2];
    if (&v6[v2] > v8)
    {
      if (2 * v8 <= (v7 + 992))
      {
        v9 = (v7 + 992);
      }

      else
      {
        v9 = 2 * v8;
      }

      a2[2] = v9;
      v5 = malloc_type_realloc(v5, v9, 0x100004077774924uLL);
      *a2 = v5;
      if (!v5)
      {
        abort();
      }

      v6 = a2[1];
    }

    result = memcpy(&v6[v5], v4, v2);
    a2[1] += v2;
  }

  return result;
}

uint64_t llvm::itanium_demangle::ModuleName::printLeft(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    (*(*v4 + 32))(*(a1 + 16), a2);
    if ((*(v4 + 9) & 0xC0) != 0x40)
    {
      (*(*v4 + 40))(v4, a2);
    }

    if (*(a1 + 16))
    {
      if (*(a1 + 32))
      {
        v5 = 58;
      }

      else
      {
        v5 = 46;
      }

      v6 = *a2;
      v7 = *(a2 + 8);
      v8 = v7 + 1;
      v9 = *(a2 + 16);
      if (v7 + 1 <= v9)
      {
        goto LABEL_17;
      }

LABEL_12:
      v10 = v7 + 993;
      if (2 * v9 <= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = 2 * v9;
      }

      *(a2 + 16) = v11;
      v6 = malloc_type_realloc(v6, v11, 0x100004077774924uLL);
      *a2 = v6;
      if (!v6)
      {
        abort();
      }

      v7 = *(a2 + 8);
      v8 = v7 + 1;
      goto LABEL_17;
    }
  }

  if (*(a1 + 32) != 1)
  {
    goto LABEL_18;
  }

  v5 = 58;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = v7 + 1;
  v9 = *(a2 + 16);
  if (v7 + 1 > v9)
  {
    goto LABEL_12;
  }

LABEL_17:
  *(a2 + 8) = v8;
  *(v6 + v7) = v5;
LABEL_18:
  v12 = *(a1 + 24);
  result = (*(*v12 + 32))(v12, a2);
  if ((*(v12 + 9) & 0xC0) != 0x40)
  {
    v14 = *(*v12 + 40);

    return v14(v12, a2);
  }

  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseUnscopedName(void *a1, _BYTE *a2, _BYTE *a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (v4 - *a1 >= 2 && *v3 == 29779)
  {
    *a1 = v3 + 1;
    v12 = a1[613];
    v13 = v12[1];
    if ((v13 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v14 = a3;
      v15 = a1;
      v16 = a2;
      v17 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v17)
      {
        std::terminate();
      }

      v12 = v17;
      v13 = 0;
      a1 = v15;
      *v12 = v15[613];
      v12[1] = 0;
      v15[613] = v12;
      a2 = v16;
      a3 = v14;
    }

    v12[1] = v13 + 32;
    v18 = v12 + v13;
    v5 = (v18 + 16);
    v18[24] = 8;
    *(v18 + 25) = *(v18 + 25) & 0xF000 | 0x540;
    *(v18 + 2) = &unk_2868A4798;
    *(v18 + 4) = "std";
    *(v18 + 5) = 3;
    v3 = *a1;
    if (a1[1] == *a1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = 0;
    if (v4 == v3)
    {
      goto LABEL_14;
    }
  }

  if (*v3 != 83)
  {
LABEL_14:
    v10 = 0;
    v11 = v5;
  }

  v6 = a3;
  v7 = a2;
  v8 = a1;
  if (result)
  {
    v10 = result;
    if (result[8] == 27)
    {
      a2 = v7;
      a1 = v8;
      v11 = v5;
    }

    result = 0;
    if (v6 && !v5)
    {
      *v6 = 1;
      return v10;
    }
  }

  return result;
}

void llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseTemplateArgs(uint64_t a1, int a2)
{
  v2 = *a1;
  if (*a1 == *(a1 + 8) || *v2 != 73)
  {
    return;
  }

  v4 = v2 + 1;
  *a1 = v4;
  if (a2)
  {
    v5 = *(a1 + 664);
    *(a1 + 672) = v5;
    if (v5 == *(a1 + 680))
    {
      if (v5 == (a1 + 688))
      {
        v5 = malloc_type_malloc(0, 0x2004093837F09uLL);
        if (!v5)
        {
          goto LABEL_87;
        }

        v20 = *(a1 + 664);
        v21 = *(a1 + 672);
        if (v21 != v20)
        {
          v22 = v5;
          memmove(v5, v20, v21 - v20);
          v5 = v22;
        }

        *(a1 + 664) = v5;
      }

      else
      {
        v5 = malloc_type_realloc(v5, 0, 0x2004093837F09uLL);
        *(a1 + 664) = v5;
        if (!v5)
        {
LABEL_87:
          abort();
        }
      }

      *(a1 + 680) = v5;
    }

    v23 = (a1 + 576);
    *v5 = a1 + 576;
    *(a1 + 672) = v5 + 1;
    *(a1 + 584) = *(a1 + 576);
    v61 = (*(a1 + 24) - *(a1 + 16)) >> 3;
    v9 = a1 + 4904;
    v4 = *a1;
    v24 = *(a1 + 8);
    while (1)
    {
      if (v4 != v24 && *v4 == 69)
      {
        v19 = 0;
        v7 = v61;
        goto LABEL_82;
      }

      if (!v25)
      {
        return;
      }

      v26 = v25;
      v27 = *(a1 + 24);
      if (v27 == *(a1 + 32))
      {
        v42 = *(a1 + 16);
        v43 = v27 - v42;
        if (v42 == (a1 + 40))
        {
          v44 = malloc_type_malloc(2 * (v27 - v42), 0x2004093837F09uLL);
          if (!v44)
          {
            goto LABEL_87;
          }

          v45 = *(a1 + 16);
          v46 = *(a1 + 24);
          if (v46 != v45)
          {
            v47 = v44;
            memmove(v44, v45, v46 - v45);
            v44 = v47;
          }

          *(a1 + 16) = v44;
        }

        else
        {
          v44 = malloc_type_realloc(v42, 2 * (v27 - v42), 0x2004093837F09uLL);
          *(a1 + 16) = v44;
          if (!v44)
          {
            goto LABEL_87;
          }
        }

        *(a1 + 32) = &v44[8 * (v43 >> 2)];
        *&v44[v43] = v26;
        *(a1 + 24) = &v44[v43 + 8];
        v28 = *(v26 + 8);
        if (v28 == 34)
        {
          goto LABEL_67;
        }

LABEL_38:
        if (v28 == 41)
        {
          v30 = *(v26 + 16);
          v29 = *(v26 + 24);
          v31 = *v9;
          v32 = *(*v9 + 8);
          if ((v32 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
          {
            v31 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
            if (!v31)
            {
              goto LABEL_88;
            }

            v32 = 0;
            *v31 = *v9;
            v31[1] = 0;
            *v9 = v31;
          }

          v31[1] = v32 + 32;
          v33 = v31 + v32;
          v26 = v31 + v32 + 16;
          v33[24] = 40;
          v34 = *(v31 + v32 + 25) & 0xF000;
          *(v33 + 2) = &unk_2868A63B8;
          *(v33 + 4) = v30;
          *(v33 + 5) = v29;
          v35 = v34 | 0xA80;
          *(v33 + 25) = v34 | 0xA80;
          v36 = 8 * v29;
          if (v29)
          {
            v37 = 8 * v29;
            v38 = v30;
            while ((*(*v38 + 9) & 0x300) == 0x100)
            {
              v38 += 8;
              v37 -= 8;
              if (!v37)
              {
                goto LABEL_46;
              }
            }
          }

          else
          {
LABEL_46:
            v35 = v34 | 0x980;
            *(v26 + 9) = v34 | 0x980;
          }

          if (v29)
          {
            v39 = 8 * v29;
            v40 = v30;
            while ((*(*v40 + 9) & 0xC00) == 0x400)
            {
              v40 += 8;
              v39 -= 8;
              if (!v39)
              {
                goto LABEL_51;
              }
            }
          }

          else
          {
LABEL_51:
            v35 = v35 & 0xF3FF | 0x400;
            *(v26 + 9) = v35;
          }

          if (v29)
          {
            while ((*(*v30 + 9) & 0xC0) == 0x40)
            {
              v30 += 8;
              v36 -= 8;
              if (!v36)
              {
                goto LABEL_55;
              }
            }
          }

          else
          {
LABEL_55:
            *(v26 + 9) = v35 & 0xFF3F | 0x40;
          }
        }

        v41 = *(a1 + 584);
        if (v41 != *(a1 + 592))
        {
          goto LABEL_57;
        }

LABEL_68:
        v48 = v41 - *v23;
        if (*v23 == (a1 + 600))
        {
          v49 = malloc_type_malloc(2 * v48, 0x2004093837F09uLL);
          if (!v49)
          {
            goto LABEL_87;
          }

          v50 = *(a1 + 576);
          v51 = *(a1 + 584);
          if (v51 != v50)
          {
            v52 = v49;
            memmove(v49, v50, v51 - v50);
            v49 = v52;
          }

          *v23 = v49;
        }

        else
        {
          v49 = malloc_type_realloc(*v23, 2 * v48, 0x2004093837F09uLL);
          *v23 = v49;
          if (!v49)
          {
            goto LABEL_87;
          }
        }

        *(a1 + 592) = &v49[8 * (v48 >> 2)];
        *&v49[v48] = v26;
        *(a1 + 584) = &v49[v48 + 8];
        v4 = *a1;
        v24 = *(a1 + 8);
        if (*a1 != v24)
        {
          goto LABEL_32;
        }
      }

      else
      {
        *v27 = v25;
        *(a1 + 24) = v27 + 8;
        v28 = *(v25 + 8);
        if (v28 != 34)
        {
          goto LABEL_38;
        }

LABEL_67:
        v26 = *(v26 + 24);
        v41 = *(a1 + 584);
        if (v41 == *(a1 + 592))
        {
          goto LABEL_68;
        }

LABEL_57:
        *v41 = v26;
        *(a1 + 584) = v41 + 1;
        v4 = *a1;
        v24 = *(a1 + 8);
        if (*a1 != v24)
        {
LABEL_32:
          if (*v4 == 81)
          {
            v7 = v61;
            goto LABEL_79;
          }
        }
      }
    }
  }

  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) - *(a1 + 16)) >> 3;
  v8 = (a1 + 40);
  v9 = a1 + 4904;
  do
  {
    do
    {
      while (1)
      {
        if (v4 != v6 && *v4 == 69)
        {
          v19 = 0;
          goto LABEL_82;
        }

        if (!v10)
        {
          return;
        }

        v11 = *(a1 + 24);
        if (v11 == *(a1 + 32))
        {
          break;
        }

        *v11 = v10;
        *(a1 + 24) = v11 + 8;
        v4 = *a1;
        v6 = *(a1 + 8);
        if (*a1 != v6)
        {
          goto LABEL_9;
        }
      }

      v12 = v10;
      v13 = *(a1 + 16);
      v14 = v11 - v13;
      if (v13 == v8)
      {
        v15 = malloc_type_malloc(2 * (v11 - v13), 0x2004093837F09uLL);
        if (!v15)
        {
          goto LABEL_87;
        }

        v16 = *(a1 + 16);
        v17 = *(a1 + 24);
        if (v17 != v16)
        {
          v18 = v15;
          memmove(v15, v16, v17 - v16);
          v15 = v18;
        }

        *(a1 + 16) = v15;
      }

      else
      {
        v15 = malloc_type_realloc(v13, 2 * (v11 - v13), 0x2004093837F09uLL);
        *(a1 + 16) = v15;
        if (!v15)
        {
          goto LABEL_87;
        }
      }

      *(a1 + 32) = &v15[8 * (v14 >> 2)];
      *&v15[v14] = v12;
      *(a1 + 24) = &v15[v14 + 8];
      v4 = *a1;
      v6 = *(a1 + 8);
    }

    while (*a1 == v6);
LABEL_9:
    ;
  }

  while (*v4 != 81);
LABEL_79:
  *a1 = v4 + 1;
  v53 = *(a1 + 778);
  *(a1 + 778) = 1;
  *(a1 + 778) = v53;
  if (!v54)
  {
    return;
  }

  v4 = *a1;
  if (*a1 == *(a1 + 8))
  {
    return;
  }

  v19 = v54;
  if (*v4 != 69)
  {
    return;
  }

LABEL_82:
  *a1 = v4 + 1;
  v57 = v56;
  v58 = *(a1 + 4904);
  v59 = v58[1];
  if ((v59 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v58 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v58)
    {
LABEL_88:
      std::terminate();
    }

    v59 = 0;
    *v58 = *v9;
    v58[1] = 0;
    *v9 = v58;
  }

  v58[1] = v59 + 48;
  v60 = v58 + v59;
  v60[24] = 43;
  *(v60 + 25) = *(v60 + 25) & 0xF000 | 0x540;
  *(v60 + 2) = &unk_2868A6430;
  *(v60 + 4) = v55;
  *(v60 + 5) = v57;
  *(v60 + 6) = v19;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::make<llvm::itanium_demangle::NameWithTemplateArgs,llvm::itanium_demangle::Node *&,llvm::itanium_demangle::Node *&>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 4904);
  v7 = v6[1];
  if ((v7 - 4048) <= 0xFFFFFFFFFFFFF00FLL)
  {
    v6 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (!v6)
    {
      std::terminate();
    }

    v7 = 0;
    *v6 = *(a1 + 4904);
    v6[1] = 0;
    *(a1 + 4904) = v6;
  }

  v6[1] = v7 + 32;
  v8 = v6 + v7;
  result = v8 + 16;
  v10 = *a2;
  v11 = *a3;
  v8[24] = 45;
  *(v8 + 25) = *(v8 + 25) & 0xF000 | 0x540;
  *(v8 + 2) = &unk_2868A64A8;
  *(v8 + 4) = v10;
  *(v8 + 5) = v11;
  return result;
}

char *llvm::itanium_demangle::AbstractManglingParser<llvm::itanium_demangle::ManglingParser<anonymous namespace::DefaultAllocator>,anonymous namespace::DefaultAllocator>::parseTemplateParam(uint64_t a1, size_t size)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (*a1 == v2 || *v3 != 84)
  {
    return 0;
  }

  v4 = v3 + 1;
  *a1 = v3 + 1;
  if (v3 + 1 == v2 || *v4 != 76)
  {
    v6 = 0;
    if (v4 == v2)
    {
      return 0;
    }
  }

  else
  {
    *a1 = v3 + 2;
    if (v2 == v3 + 2)
    {
      return 0;
    }

    if (v3[2] - 58 < 0xFFFFFFF6)
    {
      return 0;
    }

    v29 = 0;
    v30 = v3 + 4;
    do
    {
      v4 = v30;
      v31 = v30 - 1;
      *a1 = v30 - 1;
      v29 = *(v30 - 2) + 10 * v29 - 48;
      if (v30 - 1 == v2)
      {
        break;
      }

      v32 = *(v30++ - 1) - 48;
    }

    while (v32 <= 9);
    if (v31 == v2)
    {
      return 0;
    }

    if (*(v4 - 1) != 95)
    {
      return 0;
    }

    v6 = v29 + 1;
    *a1 = v4;
    if (v4 == v2)
    {
      return 0;
    }
  }

  v7 = *v4;
  if (v7 != 95)
  {
    if ((v7 - 58) >= 0xFFFFFFF6)
    {
      v14 = 0;
      v15 = v4 + 1;
      do
      {
        *a1 = v15;
        if (v15 == v2)
        {
          return 0;
        }

        v14 = *(v15 - 1) + 10 * v14 - 48;
        v17 = *v15++;
        v16 = v17;
      }

      while ((v17 - 48) <= 9);
      if (v16 == 95)
      {
        v8 = v14 + 1;
        v4 = v15 - 1;
        *a1 = v15;
        if (*(a1 + 778) == 1)
        {
          goto LABEL_11;
        }

        goto LABEL_21;
      }
    }

    return 0;
  }

  v8 = 0;
  *a1 = v4 + 1;
  if (*(a1 + 778) == 1)
  {
LABEL_11:
    v9 = *(a1 + 4904);
    v10 = v9[1];
    if ((v10 - 4048) > 0xFFFFFFFFFFFFF00FLL)
    {
LABEL_14:
      v9[1] = v10 + 32;
      v13 = v9 + v10;
      v13[24] = 8;
      *(v13 + 25) = *(v13 + 25) & 0xF000 | 0x540;
      *(v13 + 2) = &unk_2868A4798;
      *(v13 + 4) = v3;
      *(v13 + 5) = v4 - v3;
      return v13 + 16;
    }

    v11 = a1;
    v12 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
    if (v12)
    {
      v9 = v12;
      v10 = 0;
      *v12 = *(v11 + 4904);
      v12[1] = 0;
      *(v11 + 4904) = v12;
      goto LABEL_14;
    }

LABEL_52:
    std::terminate();
  }

LABEL_21:
  if (*(a1 + 777) != 1 || v6)
  {
    v33 = *(a1 + 664);
    v34 = (*(a1 + 672) - v33) >> 3;
    if (v6 < v34 && (v35 = *(v33 + 8 * v6)) != 0 && (v37 = v35, v36 = *v35, v8 < (v37[1] - v36) >> 3))
    {
      return *(v36 + 8 * v8);
    }

    else
    {
      if (v6 > v34 || *(a1 + 784) != v6)
      {
        return 0;
      }

      if (v6 == v34)
      {
        v42 = 0;
        v38 = a1;
        llvm::itanium_demangle::PODSmallVector<llvm::itanium_demangle::Node *,32ul>::push_back((a1 + 664), &v42);
        a1 = v38;
      }
    }
  }

  else
  {
    v18 = *(a1 + 4904);
    v19 = v18[1];
    if ((v19 - 4032) <= 0xFFFFFFFFFFFFF00FLL)
    {
      v20 = a1;
      v21 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
      if (!v21)
      {
        goto LABEL_52;
      }

      v18 = v21;
      v19 = 0;
      a1 = v20;
      *v18 = *(v20 + 4904);
      v18[1] = 0;
      *(v20 + 4904) = v18;
    }

    v18[1] = v19 + 48;
    v22 = v18 + v19;
    v23 = v22 + 16;
    v22[24] = 44;
    *(v22 + 25) = *(v22 + 25) & 0xF000 | 0xA80;
    *(v22 + 2) = &unk_2868A4888;
    *(v22 + 4) = v8;
    *(v22 + 5) = 0;
    v22[48] = 0;
    v24 = *(a1 + 728);
    if (v24 == *(a1 + 736))
    {
      v25 = *(a1 + 720);
      v26 = &v24[-v25];
      v27 = a1;
      if (v25 == a1 + 744)
      {
        v39 = malloc_type_malloc(2 * v26, 0x2004093837F09uLL);
        if (!v39)
        {
          goto LABEL_53;
        }

        v28 = v39;
        a1 = v27;
        v40 = *(v27 + 720);
        v41 = *(v27 + 728);
        if (v41 != v40)
        {
          memmove(v28, v40, v41 - v40);
          a1 = v27;
        }

        *(a1 + 720) = v28;
      }

      else
      {
        v28 = malloc_type_realloc(*(a1 + 720), 2 * &v24[-v25], 0x2004093837F09uLL);
        a1 = v27;
        *(v27 + 720) = v28;
        if (!v28)
        {
LABEL_53:
          abort();
        }
      }

      v24 = &v28[v26];
      *(a1 + 736) = &v28[8 * (v26 >> 2)];
    }

    *v24 = v23;
    *(a1 + 728) = v24 + 8;
    return v23;
  }
}