void *llvm::KnownBits::dump(llvm::KnownBits *this)
{
  v2 = llvm::dbgs(this);
  v3 = llvm::KnownBits::print(this, v2);
  result = llvm::dbgs(v3);
  v5 = result[4];
  if (result[3] == v5)
  {

    return llvm::raw_ostream::write(result, "\n", 1uLL);
  }

  else
  {
    *v5 = 10;
    ++result[4];
  }

  return result;
}

void *OUTLINED_FUNCTION_4_13@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;

  return memset(v3, 255, ((a1 + 63) >> 3) & 0x3FFFFFF8);
}

uint64_t llvm::getULEB128Size(unint64_t this)
{
  LODWORD(v1) = 0;
  do
  {
    v1 = (v1 + 1);
    v2 = this > 0x7F;
    this >>= 7;
  }

  while (v2);
  return v1;
}

uint64_t llvm::getSLEB128Size(uint64_t this)
{
  v1 = this;
  LODWORD(this) = 0;
  v2 = v1 >> 63;
  do
  {
    do
    {
      v3 = v1;
      v1 >>= 7;
      this = (this + 1);
    }

    while (v1 != v2);
  }

  while (((v3 ^ v2) & 0x40) != 0);
  return this;
}

llvm::line_iterator *llvm::line_iterator::line_iterator(llvm::line_iterator *this, const llvm::MemoryBuffer *a2, char a3, char a4)
{
  llvm::MemoryBuffer::getMemBufferRef(a2, v14);
  v7 = *(&v14[0] + 1);
  if (*(&v14[0] + 1))
  {
    v8 = v14[1];
    *this = v14[0];
    *(this + 1) = v8;
    v9 = 1;
  }

  else
  {
    v9 = 0;
    *this = 0;
  }

  *(this + 32) = v9;
  *(this + 40) = a4;
  *(this + 41) = a3;
  *(this + 11) = 1;
  v10 = *&v14[0];
  if (v7)
  {
    v11 = *&v14[0];
  }

  else
  {
    v11 = 0;
  }

  *(this + 6) = v11;
  *(this + 7) = 0;
  if (v7)
  {
    if ((a3 & 1) != 0 || (v12 = *v10, v12 != 10) && (v12 != 13 || v10[1] != 10))
    {
      llvm::line_iterator::advance(this);
    }
  }

  return this;
}

{
  llvm::MemoryBuffer::getMemBufferRef(a2, v14);
  v7 = *(&v14[0] + 1);
  if (*(&v14[0] + 1))
  {
    v8 = v14[1];
    *this = v14[0];
    *(this + 1) = v8;
    v9 = 1;
  }

  else
  {
    v9 = 0;
    *this = 0;
  }

  *(this + 32) = v9;
  *(this + 40) = a4;
  *(this + 41) = a3;
  *(this + 11) = 1;
  v10 = *&v14[0];
  if (v7)
  {
    v11 = *&v14[0];
  }

  else
  {
    v11 = 0;
  }

  *(this + 6) = v11;
  *(this + 7) = 0;
  if (v7)
  {
    if ((a3 & 1) != 0 || (v12 = *v10, v12 != 10) && (v12 != 13 || v10[1] != 10))
    {
      llvm::line_iterator::advance(this);
    }
  }

  return this;
}

uint64_t llvm::line_iterator::line_iterator(uint64_t this, const llvm::MemoryBufferRef *a2, char a3, char a4)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = *(a2 + 1);
    *this = *a2;
    *(this + 16) = v5;
    LOBYTE(v4) = 1;
  }

  else
  {
    *this = 0;
  }

  *(this + 32) = v4;
  *(this + 40) = a4;
  *(this + 41) = a3;
  *(this + 44) = 1;
  if (*(a2 + 1))
  {
    v6 = *a2;
  }

  else
  {
    v6 = 0;
  }

  *(this + 48) = v6;
  *(this + 56) = 0;
  if (*(a2 + 1))
  {
    if ((a3 & 1) != 0 || (v7 = **a2, v7 != 10) && (v7 != 13 || *(*a2 + 1) != 10))
    {
      v8 = this;
      llvm::line_iterator::advance(this);
      return v8;
    }
  }

  return this;
}

{
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = *(a2 + 1);
    *this = *a2;
    *(this + 16) = v5;
    LOBYTE(v4) = 1;
  }

  else
  {
    *this = 0;
  }

  *(this + 32) = v4;
  *(this + 40) = a4;
  *(this + 41) = a3;
  *(this + 44) = 1;
  if (*(a2 + 1))
  {
    v6 = *a2;
  }

  else
  {
    v6 = 0;
  }

  *(this + 48) = v6;
  *(this + 56) = 0;
  if (*(a2 + 1))
  {
    if ((a3 & 1) != 0 || (v7 = **a2, v7 != 10) && (v7 != 13 || *(*a2 + 1) != 10))
    {
      v8 = this;
      llvm::line_iterator::advance(this);
      return v8;
    }
  }

  return this;
}

uint64_t llvm::line_iterator::advance(uint64_t this)
{
  v1 = (*(this + 48) + *(this + 56));
  v2 = *v1;
  if (v2 == 10)
  {
    v3 = 1;
    goto LABEL_6;
  }

  if (v2 == 13 && v1[1] == 10)
  {
    v3 = 2;
LABEL_6:
    v1 += v3;
    ++*(this + 44);
  }

  if (*(this + 41))
  {
    v4 = *(this + 40);
    if (!*(this + 40))
    {
      goto LABEL_30;
    }

    while (1)
    {
      v6 = *v1;
      if (v6 == v4)
      {
        break;
      }

      if (v6 == 10)
      {
LABEL_10:
        v5 = 1;
      }

      else
      {
        if (v6 != 13)
        {
          goto LABEL_48;
        }

LABEL_15:
        if (v1[1] != 10)
        {
          v9 = 0;
          goto LABEL_57;
        }

        v5 = 2;
      }

      v1 += v5;
      ++*(this + 44);
    }

    while (1)
    {
      while (1)
      {
        v8 = *++v1;
        v7 = v8;
        if (v8 != 13)
        {
          break;
        }

        if (v1[1] == 10)
        {
          goto LABEL_15;
        }
      }

      if (!v7)
      {
        break;
      }

      if (v7 == 10)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v6 = *v1;
    if (v6 == 10)
    {
      goto LABEL_53;
    }

    if (v6 == 13 && v1[1] == 10)
    {
      v9 = 0;
      goto LABEL_57;
    }

    v10 = *(this + 40);
    if (!*(this + 40))
    {
      while (1)
      {
LABEL_30:
        v6 = *v1;
        if (v6 == 10)
        {
          v11 = 1;
        }

        else
        {
          if (v6 != 13)
          {
            goto LABEL_48;
          }

          if (v1[1] != 10)
          {
            v6 = 13;
            goto LABEL_53;
          }

          v11 = 2;
        }

        v1 += v11;
        ++*(this + 44);
      }
    }

    while (1)
    {
      v6 = *v1;
      if (v6 == 13)
      {
        if (v1[1] == 10)
        {
          v9 = 0;
          goto LABEL_57;
        }
      }

      else if (v6 == 10)
      {
LABEL_53:
        v9 = 0;
        if (v6 == 13)
        {
          goto LABEL_57;
        }

        while (v6 && v6 != 10)
        {
          while (1)
          {
            v15 = &v1[v9++];
            v6 = v15[1];
            if (v6 != 13)
            {
              break;
            }

LABEL_57:
            if (v1[v9 + 1] == 10)
            {
              goto LABEL_60;
            }
          }
        }

LABEL_60:
        *(this + 48) = v1;
        *(this + 56) = v9;
        return this;
      }

      if (v6 == v10)
      {
        break;
      }

      if (v6 != 13)
      {
LABEL_48:
        if (v6)
        {
          goto LABEL_53;
        }

        goto LABEL_49;
      }

LABEL_41:
      if (v1[1] != 10)
      {
        v9 = 0;
        goto LABEL_57;
      }

      v12 = 2;
LABEL_34:
      v1 += v12;
      ++*(this + 44);
    }

    while (1)
    {
      while (1)
      {
        v14 = *++v1;
        v13 = v14;
        if (v14 != 13)
        {
          break;
        }

        if (v1[1] == 10)
        {
          goto LABEL_41;
        }
      }

      if (!v13)
      {
        break;
      }

      if (v13 == 10)
      {
        v12 = 1;
        goto LABEL_34;
      }
    }
  }

LABEL_49:
  if (*(this + 32) == 1)
  {
    *(this + 32) = 0;
  }

  *(this + 48) = 0;
  *(this + 56) = 0;
  return this;
}

uint64_t llvm::LockFileManager::readLockFile@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v19 = 261;
  __p[0] = a1;
  __p[1] = a2;
  llvm::MemoryBuffer::getFile(__p, 0, 1, 0, 0, &v20);
  if (v21)
  {
    v19 = 261;
    goto LABEL_26;
  }

  llvm::getToken(*(v20 + 8), *(v20 + 16) - *(v20 + 8), " ", 1, __p);
  v7 = __p[0];
  v6 = __p[1];
  v16 = v18;
  first_not_of = llvm::StringRef::find_first_not_of(&v16, 0x20u, 0);
  if (*(&v16 + 1) >= first_not_of)
  {
    v9 = first_not_of;
  }

  else
  {
    v9 = *(&v16 + 1);
  }

  *&v16 = v16 + v9;
  *(&v16 + 1) -= v9;
  __p[0] = 0;
  if (llvm::getAsSignedInteger(v16, *(&v16 + 1), 0xA, __p) || (v10 = __p[0], __p[0] != SLODWORD(__p[0])))
  {
LABEL_25:
    v19 = 261;
LABEL_26:
    __p[0] = a1;
    __p[1] = a2;
    result = llvm::sys::fs::remove(__p, 1);
    *a3 = 0;
    *(a3 + 32) = 0;
    if (v21)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v6;
  if (v6)
  {
    memmove(&__dst, v7, v6);
  }

  *(&__dst + v6) = 0;
  *&v18 = v15;
  *__p = __dst;
  DWORD2(v18) = v10;
  if (v15 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __dst;
  }

  if (v15 >= 0)
  {
    v12 = SHIBYTE(v15);
  }

  else
  {
    v12 = *(&__dst + 1);
  }

  result = llvm::LockFileManager::processStillExecuting(v11, v12, v10);
  if (!result)
  {
    if (SBYTE7(v18) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_25;
  }

  *a3 = *__p;
  *(a3 + 16) = v18;
  *(a3 + 24) = DWORD2(v18);
  *(a3 + 32) = 1;
  if (v21)
  {
    return result;
  }

LABEL_27:
  result = v20;
  v20 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

BOOL llvm::LockFileManager::processStillExecuting(const void *a1, uint64_t a2, pid_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  __s[255] = 0;
  __s[0] = 0;
  gethostname(__s, 0xFFuLL);
  v6 = strlen(__s);
  if (v6 > 0x100)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (v6)
  {
    memcpy(v9, __s, v6);
  }

  return v6 != a2 || v6 && memcmp(v9, a1, v6) || getsid(a3) != -1 || *__error() != 3;
}

uint64_t llvm::LockFileManager::LockFileManager(uint64_t a1, const void *a2, size_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  *a1 = a1 + 24;
  *(a1 + 16) = 128;
  *(a1 + 152) = a1 + 176;
  v6 = (a1 + 152);
  *(a1 + 160) = xmmword_257371870;
  *(a1 + 304) = a1 + 328;
  v7 = (a1 + 312);
  *(a1 + 312) = xmmword_257371870;
  *(a1 + 456) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  v8 = std::system_category();
  v9 = 0;
  *(a1 + 504) = v8;
  *(a1 + 512) = 0;
  *(a1 + 528) = 0;
  *(a1 + 520) = 0;
  *(a1 + 8) = 0;
  if (a3 >= 0x81)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (a3)
  {
    memcpy(*a1, a2, a3);
    v9 = *(a1 + 8);
  }

  v10 = (a1 + 512);
  *(a1 + 8) = v9 + a3;
  if (llvm::sys::fs::make_absolute(a1))
  {
    operator new();
  }

  v11 = *(a1 + 8);
  v12 = *(a1 + 160);
  if (v12 >= v11)
  {
    if (v11)
    {
      memmove(*(a1 + 152), *a1, *(a1 + 8));
    }
  }

  else
  {
    if (*(a1 + 168) < v11)
    {
      *(a1 + 160) = 0;
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    if (v12)
    {
      memmove(*(a1 + 152), *a1, *(a1 + 160));
    }

    v13 = *(a1 + 8);
    if (v13 != v12)
    {
      memcpy((*(a1 + 152) + v12), (*a1 + v12), v13 - v12);
    }
  }

  *(a1 + 160) = v11;
  if (*(a1 + 168) < v11 + 5)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v14 = (a1 + 456);
  v15 = *(a1 + 152) + v11;
  *(v15 + 4) = 107;
  *v15 = 1668246574;
  v16 = *(a1 + 152);
  v17 = (*(a1 + 160) + 5);
  *(a1 + 160) = v17;
  llvm::LockFileManager::readLockFile(v16, v17, __dst);
  v18 = *(a1 + 488);
  v19 = v47;
  if (v18 == v47)
  {
    if (*(a1 + 488))
    {
      if (*(a1 + 479) < 0)
      {
        operator delete(*(a1 + 456));
        LOBYTE(v18) = *(a1 + 488);
      }

      else
      {
        LOBYTE(v18) = 1;
      }

      *v14 = *__dst;
      *(a1 + 472) = *&__dst[16];
      __dst[23] = 0;
      __dst[0] = 0;
      *(a1 + 480) = v46;
      if (!v19)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (!*(a1 + 488))
  {
    *v14 = *__dst;
    *(a1 + 472) = *&__dst[16];
    memset(__dst, 0, sizeof(__dst));
    *(a1 + 480) = v46;
    LOBYTE(v18) = 1;
    *(a1 + 488) = 1;
LABEL_28:
    if (!v19)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (*(a1 + 479) < 0)
  {
    operator delete(*v14);
  }

  LOBYTE(v18) = 0;
  *(a1 + 488) = 0;
  if (v19)
  {
LABEL_29:
    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }
  }

LABEL_31:
  if (v18)
  {
    return a1;
  }

  v20 = *(a1 + 160);
  v21 = *(a1 + 312);
  if (v21 >= v20)
  {
    if (v20)
    {
      memmove(*(a1 + 304), *v6, *(a1 + 160));
    }
  }

  else
  {
    if (*(a1 + 320) < v20)
    {
      *v7 = 0;
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    if (v21)
    {
      memmove(*(a1 + 304), *v6, *(a1 + 312));
    }

    v22 = *(a1 + 160);
    if (v22 != v21)
    {
      memcpy((*(a1 + 304) + v21), *v6 + v21, v22 - v21);
    }
  }

  *(a1 + 312) = v20;
  if (*(a1 + 320) < v20 + 9)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v23 = *(a1 + 304) + v20;
  *v23 = *"-%%%%%%%%";
  *(v23 + 8) = 37;
  v24 = *v7 + 9;
  *v7 = v24;
  v44 = 0;
  LOWORD(v47) = 261;
  *__dst = *(a1 + 304);
  *&__dst[8] = v24;
  if (llvm::sys::fs::createUniqueFile(__dst, &v44, (a1 + 304), 0, 438))
  {
    operator new();
  }

  *__dst = &v46;
  *&__dst[8] = xmmword_25736B790;
  v50 = 0;
  __src.__r_.__value_.__s.__data_[0] = 0;
  gethostname(&__src, 0xFFuLL);
  v25 = strlen(&__src);
  v26 = *&__dst[8];
  if (*&__dst[16] < *&__dst[8] + v25)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (v25)
  {
    memcpy((*__dst + *&__dst[8]), &__src, v25);
    v26 = *&__dst[8];
  }

  *&__dst[8] = v26 + v25;
  llvm::raw_fd_ostream::raw_fd_ostream(&__src, v44, 1, 0, 0);
  v27 = llvm::raw_ostream::write(&__src, *__dst, *&__dst[8]);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    v29 = llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    v29 = v27;
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  ProcessId = llvm::sys::Process::getProcessId();
  llvm::raw_ostream::operator<<(v29, ProcessId);
  llvm::raw_fd_ostream::close(&__src);
  v32 = v49;
  if (v49)
  {
    *(&v43.__r_.__value_.__s + 23) = 19;
    strcpy(&v43, "failed to write to ");
    v33 = *v7;
    if (*v7 <= 0x7FFFFFFFFFFFFFF7)
    {
      v34 = *(a1 + 304);
      if (v33 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v41) = *v7;
      if (v33)
      {
        memmove(__p, v34, v33);
      }

      *(__p + v33) = 0;
      if (v41 >= 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = __p[0];
      }

      if (v41 >= 0)
      {
        v36 = HIBYTE(v41);
      }

      else
      {
        v36 = __p[1];
      }

      std::string::append(&v43, v35, v36);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(__p[0]);
      }

      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &v43;
      }

      else
      {
        v37 = v43.__r_.__value_.__r.__words[0];
      }

      if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v43.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v43.__r_.__value_.__l.__size_;
      }

      *(a1 + 496) = v49;
      if (!v37)
      {
        __p[0] = 0;
        __p[1] = 0;
        v41 = 0;
LABEL_86:
        if (*(a1 + 535) < 0)
        {
          operator delete(*v10);
        }

        *v10 = *__p;
        *(a1 + 528) = v41;
        v42 = 261;
        v39 = *v7;
        __p[0] = *(a1 + 304);
        __p[1] = v39;
        llvm::sys::fs::remove(__p, 1);
        LODWORD(v49) = 0;
        *(&v49 + 1) = v8;
        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }

        goto LABEL_90;
      }

      if (size <= 0x7FFFFFFFFFFFFFF7)
      {
        if (size >= 0x17)
        {
          operator new();
        }

        HIBYTE(v41) = size;
        if (size)
        {
          memmove(__p, v37, size);
        }

        *(__p + size) = 0;
        goto LABEL_86;
      }
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

LABEL_90:
  llvm::raw_fd_ostream::~raw_fd_ostream(&__src);
  if (*__dst != &v46)
  {
    free(*__dst);
  }

  if (!v32)
  {
    llvm::sys::RemoveFileOnSignal(*(a1 + 304), *(a1 + 312));
  }

  return a1;
}

uint64_t llvm::LockFileManager::getState(llvm::LockFileManager *this)
{
  if (*(this + 488))
  {
    return 1;
  }

  else
  {
    return 2 * (*(this + 124) != 0);
  }
}

void llvm::LockFileManager::getErrorMessage(llvm::LockFileManager *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 124))
  {
    if (*(this + 535) < 0)
    {
      v3 = this;
      std::string::__init_copy_ctor_external(a2, *(this + 64), *(this + 65));
      this = v3;
    }

    else
    {
      *a2 = *(this + 32);
      *(a2 + 16) = *(this + 66);
    }

    std::error_code::message(&v16, this + 31);
    v9 = 0;
    v13 = 0;
    v14 = 1;
    v11 = 0;
    v12 = 0;
    v10 = 0;
    v8 = &unk_2868A3EF8;
    v15 = a2;
    llvm::raw_ostream::SetBufferAndMode(&v8, 0, 0, 0);
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v16.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      if ((v11 - v12) > 1)
      {
        *v12++ = 8250;
        v5 = &v8;
      }

      else
      {
        v5 = llvm::raw_ostream::write(&v8, ": ", 2uLL);
      }

      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v16;
      }

      else
      {
        v6 = v16.__r_.__value_.__r.__words[0];
      }

      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v7 = v16.__r_.__value_.__l.__size_;
      }

      llvm::raw_ostream::write(v5, v6, v7);
    }

    llvm::raw_ostream::~raw_ostream(&v8);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a2 + 23) = 0;
    *a2 = 0;
  }
}

void llvm::LockFileManager::~LockFileManager(llvm::LockFileManager *this)
{
  if ((*(this + 488) & 1) != 0 || *(this + 124))
  {
    if ((*(this + 535) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = 261;
    v2 = *(this + 20);
    v6 = *(this + 19);
    v7 = v2;
    llvm::sys::fs::remove(&v6, 1);
    v8 = 261;
    v3 = *(this + 39);
    v6 = *(this + 38);
    v7 = v3;
    llvm::sys::fs::remove(&v6, 1);
    llvm::sys::DontRemoveFileOnSignal(*(this + 38), *(this + 39));
    if ((*(this + 535) & 0x80000000) == 0)
    {
LABEL_4:
      if (*(this + 488) != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

  operator delete(*(this + 64));
  if (*(this + 488) != 1)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (*(this + 479) < 0)
  {
    operator delete(*(this + 57));
  }

LABEL_10:
  v4 = *(this + 38);
  if (v4 != this + 328)
  {
    free(v4);
  }

  v5 = *(this + 19);
  if (v5 != this + 176)
  {
    free(v5);
  }

  if (*this != (this + 24))
  {
    free(*this);
  }
}

uint64_t llvm::LockFileManager::waitForUnlock(llvm::LockFileManager *this, unsigned int a2)
{
  if (*(this + 488) != 1)
  {
    return 0;
  }

  v16 = xmmword_25739FBB0;
  v17 = std::chrono::steady_clock::now().__d_.__rep_ + 1000000000 * a2;
  *(&__token.__r_.__value_.__s + 23) = 12;
  strcpy(&__token, "/dev/urandom");
  std::random_device::random_device(&v18, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  v19 = 1;
  do
  {
    if (!llvm::ExponentialBackoff::waitForNextAttempt(&v16))
    {
      v12 = 2;
      goto LABEL_24;
    }

    v6 = *(this + 20);
    if ((v6 + 1) > *(this + 21))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*(this + 19) + v6) = 0;
    v7 = *(this + 19);
    v15 = 257;
    if (*v7)
    {
      __token.__r_.__value_.__r.__words[0] = v7;
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    LOBYTE(v15) = v8;
    v9 = llvm::sys::fs::access(&__token, 0);
    if (std::generic_category() == v10 && v9 == 2)
    {
      v15 = 261;
      v11 = *(this + 1);
      __token.__r_.__value_.__r.__words[0] = *this;
      __token.__r_.__value_.__l.__size_ = v11;
      v12 = llvm::sys::fs::access(&__token, 0) != 0;
      goto LABEL_24;
    }

    v3 = *(this + 479);
    if (v3 >= 0)
    {
      v4 = this + 456;
    }

    else
    {
      v4 = *(this + 57);
    }

    if (v3 >= 0)
    {
      v5 = *(this + 479);
    }

    else
    {
      v5 = *(this + 58);
    }
  }

  while (llvm::LockFileManager::processStillExecuting(v4, v5, *(this + 120)));
  v12 = 1;
LABEL_24:
  std::random_device::~random_device(&v18);
  return v12;
}

uint64_t llvm::LockFileManager::unsafeRemoveLockFile(llvm::LockFileManager *this)
{
  v4 = 261;
  v1 = *(this + 20);
  v3[0] = *(this + 19);
  v3[1] = v1;
  return llvm::sys::fs::remove(v3, 1);
}

void llvm::ManagedStaticBase::RegisterManagedStatic(llvm::ManagedStaticBase *this, void *(*a2)(void), void (*a3)(void *))
{
  if (atomic_load_explicit(&qword_27F874918, memory_order_acquire))
  {
    std::recursive_mutex::lock(&stru_27F874920);
    if (*this)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  llvm::ManagedStaticBase::RegisterManagedStatic();
  std::recursive_mutex::lock(&stru_27F874920);
  if (!*this)
  {
LABEL_3:
    atomic_store(a2(), this);
    v6 = _MergedGlobals_9;
    *(this + 1) = a3;
    *(this + 2) = v6;
    _MergedGlobals_9 = this;
  }

LABEL_4:

  std::recursive_mutex::unlock(&stru_27F874920);
}

uint64_t llvm::ManagedStaticBase::destroy(llvm::ManagedStaticBase *this)
{
  v2 = *(this + 1);
  _MergedGlobals_9 = *(this + 2);
  *(this + 2) = 0;
  v3 = atomic_load(this);
  result = v2(v3);
  atomic_store(0, this);
  *(this + 1) = 0;
  return result;
}

uint64_t llvm::llvm_shutdown(llvm *this)
{
  for (i = _MergedGlobals_9; _MergedGlobals_9; i = _MergedGlobals_9)
  {
    v2 = i[1];
    _MergedGlobals_9 = i[2];
    i[2] = 0;
    v3 = atomic_load(i);
    result = v2(v3);
    atomic_store(0, i);
    i[1] = 0;
  }

  return result;
}

uint64_t llvm::MemoryBuffer::init(uint64_t this, const char *a2, const char *a3)
{
  *(this + 8) = a2;
  *(this + 16) = a3;
  return this;
}

char *llvm::MemoryBuffer::getMemBuffer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  v10 = 261;
  v9[0] = a3;
  v9[1] = a4;
  result = operator new(24, v9);
  *result = &unk_2868A0F20;
  *(result + 1) = a1;
  *(result + 2) = a1 + a2;
  *a5 = result;
  return result;
}

char *operator new(uint64_t a1, uint64_t a2)
{
  v15[32] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = xmmword_25736B790;
  if (*(a2 + 33) != 1)
  {
    goto LABEL_14;
  }

  v3 = *(a2 + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v6 = *a2;
      v7 = *(a2 + 8);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    v7 = 0;
    v6 = 0;
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = strlen(*a2);
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_15;
  }

  if (v3 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(a2, &v13);
    v6 = v13;
    v7 = v14;
    goto LABEL_15;
  }

  v4 = *a2;
  v5 = *(*a2 + 23);
  if (v5 >= 0)
  {
    v6 = *a2;
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >= 0)
  {
    v7 = v4[23];
  }

  else
  {
    v7 = *(v4 + 1);
  }

LABEL_15:
  v8 = malloc_type_malloc(a1 + v7 + 9, 0x100004000313F17uLL);
  if (!v8)
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v9 = v8;
  v10 = &v8[a1];
  *v10 = v7;
  v11 = v10 + 1;
  if (v7)
  {
    memcpy(v11, v6, v7);
  }

  *(v11 + v7) = 0;
  if (v13 != v15)
  {
    free(v13);
  }

  return v9;
}

char *llvm::MemoryBuffer::getMemBuffer@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v9 = 261;
  v8[0] = v5;
  v8[1] = v6;
  result = operator new(24, v8);
  *result = &unk_2868A0F20;
  *(result + 1) = v3;
  *(result + 2) = v3 + v4;
  *a2 = result;
  return result;
}

void llvm::MemoryBuffer::getMemBufferCopy(const void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, void *a5@<X8>)
{
  llvm::WritableMemoryBuffer::getNewUninitMemBuffer(a2, a3, a4, &v9);
  v8 = v9;
  if (v9 && a2)
  {
    memmove(*(v9 + 8), a1, a2);
  }

  *a5 = v8;
}

void llvm::MemoryBuffer::getFileOrSTDIN(void **a1@<X0>, int a2@<W1>, int a3@<W2>, unsigned __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = xmmword_25736B790;
  if (*(a1 + 33) != 1)
  {
    goto LABEL_17;
  }

  v10 = *(a1 + 32);
  if (v10 > 4)
  {
    if (v10 - 5 < 2)
    {
      v12 = *a1;
      if (a1[1] != 1)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v10 == 1)
  {
    goto LABEL_26;
  }

  if (v10 == 3)
  {
    v12 = *a1;
    if (!*a1 || strlen(*a1) != 1)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  if (v10 != 4)
  {
LABEL_17:
    llvm::Twine::toVector(a1, &v20);
    v12 = v20;
    if (v21 != 1)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  v11 = *(*a1 + 23);
  if (v11 >= 0)
  {
    v12 = *a1;
  }

  else
  {
    v12 = **a1;
  }

  if (v11 >= 0)
  {
    v13 = *(*a1 + 23);
  }

  else
  {
    v13 = (*a1)[1];
  }

  if (v13 != 1)
  {
LABEL_26:
    getFileAux<llvm::MemoryBuffer>(a5, a1, 0xFFFFFFFFFFFFFFFFLL, 0, a2, a3, 0, a4);
    v18 = v20;
    if (v20 == v22)
    {
      return;
    }

    goto LABEL_27;
  }

LABEL_18:
  if (*v12 != 45)
  {
    goto LABEL_26;
  }

  v14 = llvm::sys::ChangeStdinMode();
  StdinHandle = llvm::sys::fs::getStdinHandle(v14);
  getMemoryBufferForStream(v23, StdinHandle);
  v16 = *(a5 + 16);
  if (v24)
  {
    v17 = v23[1];
    *a5 = v23[0];
    *(a5 + 8) = v17;
    *(a5 + 16) = v16 | 1;
    v18 = v20;
    if (v20 == v22)
    {
      return;
    }

LABEL_27:
    free(v18);
    return;
  }

  v19 = v23[0];
  *(a5 + 16) = v16 & 0xFE;
  *a5 = v19;
  v18 = v20;
  if (v20 != v22)
  {
    goto LABEL_27;
  }
}

void llvm::MemoryBuffer::getSTDIN(uint64_t a1@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = llvm::sys::ChangeStdinMode();
  StdinHandle = llvm::sys::fs::getStdinHandle(v3);
  getMemoryBufferForStream(v8, StdinHandle);
  v5 = *(a1 + 16);
  if (v9)
  {
    v6 = v5 | 1;
    v7 = v8[0];
    *(a1 + 8) = v8[1];
  }

  else
  {
    v6 = v5 & 0xFE;
    v7 = v8[0];
  }

  *(a1 + 16) = v6;
  *a1 = v7;
}

llvm::sys::fs *getFileAux<llvm::MemoryBuffer>(uint64_t a1, llvm::sys::fs::file_status *a2, unint64_t a3, off_t a4, int a5, int a6, char a7, unsigned __int16 a8)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  llvm::sys::fs::openNativeFileForRead(a2, v15, 0, &v22);
  if ((v23 & 1) == 0)
  {
    v20 = v22;
    getOpenFileImpl<llvm::MemoryBuffer>(a1, v22, a2, -1, a3, a4, a6, a7, a8);
    result = llvm::sys::fs::closeFile(&v20, v19);
    if ((v23 & 1) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

  v21 = v22;
  v22 = 0;
  v16 = llvm::errorToErrorCode(&v21);
  *(a1 + 16) |= 1u;
  *a1 = v16;
  *(a1 + 8) = v17;
  result = v21;
  if (v21)
  {
    result = (*(*v21 + 8))(v21);
  }

  if (v23)
  {
LABEL_10:
    result = v22;
    v22 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

llvm::sys::fs *getFileAux<llvm::WritableMemoryBuffer>(uint64_t a1, uint64_t a2, unint64_t tv_sec, off_t a4, __int16 a5)
{
  v41.st_ctimespec.tv_nsec = *MEMORY[0x277D85DE8];
  llvm::sys::fs::openNativeFileForRead(a2, 0, 0, &v39);
  if (v40)
  {
    v11 = v39;
    v39 = 0;
    v36 = v11;
    v12 = llvm::errorToErrorCode(&v36);
    *(a1 + 16) |= 1u;
    *a1 = v12;
    *(a1 + 8) = v13;
    result = v36;
    if (v36)
    {
      result = (*(*v36 + 8))(v36);
    }

    if ((v40 & 1) == 0)
    {
      return result;
    }

    goto LABEL_43;
  }

  v15 = v39;
  v35 = v39;
  if (atomic_load_explicit(&qword_27F874968, memory_order_acquire))
  {
    if (tv_sec != -1)
    {
      goto LABEL_8;
    }

LABEL_40:
    memset(&v41, 0, 44);
    *(&v41.st_atimespec.tv_nsec + 4) = 0xFFFFLL;
    WORD2(v41.st_mtimespec.tv_sec) = 0;
    v41.st_mtimespec.tv_nsec = 0;
    v33 = llvm::sys::fs::status(v15, &v41, v10);
    if (v33)
    {
      *(a1 + 16) |= 1u;
      *a1 = v33;
      *(a1 + 8) = v23;
LABEL_42:
      result = llvm::sys::fs::closeFile(&v35, v23);
      if ((v40 & 1) == 0)
      {
        return result;
      }

LABEL_43:
      result = v39;
      v39 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }

      return result;
    }

    if (LODWORD(v41.st_atimespec.tv_nsec) != 2 && LODWORD(v41.st_atimespec.tv_nsec) != 5)
    {
      getMemoryBufferForStream(a1, v15);
      result = llvm::sys::fs::closeFile(&v35, v34);
      if ((v40 & 1) == 0)
      {
        return result;
      }

      goto LABEL_43;
    }

    tv_sec = v41.st_atimespec.tv_sec;
    if (v41.st_atimespec.tv_sec < 0x4000uLL)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  getFileAux<llvm::WritableMemoryBuffer>();
  if (tv_sec == -1)
  {
    goto LABEL_40;
  }

LABEL_8:
  if (tv_sec >= 0x4000)
  {
LABEL_9:
    if (tv_sec >= _MergedGlobals_10)
    {
      v41.st_dev = 0;
      v41.st_ino = std::system_category();
      v16 = operator new(48, a2);
      *v16 = &unk_2868A0F70;
      v17 = llvm::sys::fs::mapped_file_region::alignment(v16);
      v18 = (v17 - 1) & a4;
      v19 = llvm::sys::fs::mapped_file_region::alignment(v17);
      llvm::sys::fs::mapped_file_region::mapped_file_region((v16 + 24), v15, 2, v18 + tv_sec, -v19 & a4, &v41);
      if (!v41.st_dev)
      {
        v20 = llvm::sys::fs::mapped_file_region::const_data((v16 + 24));
        v22 = v20 + ((llvm::sys::fs::mapped_file_region::alignment(v20) - 1) & a4);
        *(v16 + 1) = v22;
        *(v16 + 2) = &v22[tv_sec];
        if (!v41.st_dev)
        {
          *(a1 + 16) &= ~1u;
          *a1 = v16;
          result = llvm::sys::fs::closeFile(&v35, v21);
          if ((v40 & 1) == 0)
          {
            return result;
          }

          goto LABEL_43;
        }
      }

      (*(*v16 + 8))(v16);
    }
  }

LABEL_13:
  llvm::WritableMemoryBuffer::getNewUninitMemBuffer(tv_sec, a2, a5, &v38);
  if (!v38)
  {
    v30 = std::generic_category();
    *(a1 + 16) |= 1u;
    *a1 = 12;
    *(a1 + 8) = v30;
    result = llvm::sys::fs::closeFile(&v35, v31);
    if ((v40 & 1) == 0)
    {
      return result;
    }

    goto LABEL_43;
  }

  v24 = v38[1];
  v25 = v38[2] - v24;
  do
  {
    if (!v25)
    {
      goto LABEL_30;
    }

    llvm::sys::fs::readNativeFileSlice(v15, v24, v25, a4, &v41);
    if (v41.st_ino)
    {
      v26 = *&v41.st_dev;
      *&v41.st_dev = 0;
      v37 = v26;
      v27 = llvm::errorToErrorCode(&v37);
      *(a1 + 16) |= 1u;
      *a1 = v27;
      *(a1 + 8) = v23;
      if (v37)
      {
        (*(*v37 + 8))(v37);
        v28 = 1;
        if ((v41.st_ino & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        v28 = 1;
        if ((v41.st_ino & 1) == 0)
        {
          continue;
        }
      }
    }

    else if (*&v41.st_dev)
    {
      v28 = 0;
      v25 -= *&v41.st_dev;
      v24 += *&v41.st_dev;
      a4 += *&v41.st_dev;
      if ((v41.st_ino & 1) == 0)
      {
        continue;
      }
    }

    else
    {
      bzero(v24, v25);
      v28 = 3;
      if ((v41.st_ino & 1) == 0)
      {
        continue;
      }
    }

    v29 = *&v41.st_dev;
    *&v41.st_dev = 0;
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }
  }

  while (!v28);
  if (v28 == 3)
  {
LABEL_30:
    *(a1 + 16) &= ~1u;
    *a1 = v38;
    result = llvm::sys::fs::closeFile(&v35, v23);
    if (v40)
    {
      goto LABEL_43;
    }

    return result;
  }

  if (!v38)
  {
    goto LABEL_42;
  }

  (*(*v38 + 8))(v38);
  result = llvm::sys::fs::closeFile(&v35, v32);
  if (v40)
  {
    goto LABEL_43;
  }

  return result;
}

void llvm::WritableMemoryBuffer::getNewUninitMemBuffer(size_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, void *a4@<X8>)
{
  v22[32] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v20 = v22;
  v21 = xmmword_25736B790;
  if (*(a2 + 33) != 1)
  {
    goto LABEL_14;
  }

  v8 = *(a2 + 32);
  if (v8 > 4)
  {
    if (v8 - 5 < 2)
    {
      v11 = *a2;
      v12 = *(a2 + 8);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v8 == 1)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  if (v8 == 3)
  {
    v11 = *a2;
    if (*a2)
    {
      v12 = strlen(*a2);
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_15;
  }

  if (v8 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(a2, &v20);
    v11 = v20;
    v12 = v21;
    goto LABEL_15;
  }

  v9 = *a2;
  v10 = *(*a2 + 23);
  if (v10 >= 0)
  {
    v11 = *a2;
  }

  else
  {
    v11 = *v9;
  }

  if (v10 >= 0)
  {
    v12 = *(*a2 + 23);
  }

  else
  {
    v12 = *(v9 + 1);
  }

LABEL_15:
  v13 = v12 + 33;
  if ((a3 & 0x100) != 0)
  {
    v14 = 1 << v7;
  }

  else
  {
    v14 = 16;
  }

  v15 = a1 + v14 + v13 + 1;
  if (v15 <= a1)
  {
    v17 = 0;
  }

  else
  {
    v16 = malloc_type_malloc(v15, 0x100004077774924uLL);
    v17 = v16;
    if (v16)
    {
      v16[3] = v12;
      v18 = (v16 + 4);
      if (v12)
      {
        memcpy(v16 + 4, v11, v12);
      }

      v18[v12] = 0;
      v19 = (v17 + v13 + v14 - 1) & -v14;
      *(v19 + a1) = 0;
      *v17 = &unk_2868A0FD8;
      v17[1] = v19;
      v17[2] = v19 + a1;
    }
  }

  *a4 = v17;
  if (v20 != v22)
  {
    free(v20);
  }
}

void llvm::WritableMemoryBuffer::getNewMemBuffer(llvm::WritableMemoryBuffer *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  llvm::WritableMemoryBuffer::getNewUninitMemBuffer(this, a2, 0, &v7);
  v6 = v7;
  if (v7)
  {
    bzero(*(v7 + 8), this);
  }

  *a3 = v6;
}

uint64_t getReadWriteFile(const llvm::Twine *a1, uint64_t a2, __darwin_time_t a3, __darwin_time_t tv_sec, unint64_t a5)
{
  v22.st_birthtimespec.tv_nsec = *MEMORY[0x277D85DE8];
  llvm::sys::fs::openNativeFile(a2, 2, 3, 0, 438, &v22.st_ctimespec.tv_nsec);
  if ((v22.st_birthtimespec.tv_sec & 1) == 0)
  {
    tv_nsec = v22.st_ctimespec.tv_nsec;
    if (tv_sec == -1)
    {
      tv_sec = a3;
      if (a3 == -1)
      {
        memset(&v22, 0, 44);
        *(&v22.st_atimespec.tv_nsec + 4) = 0xFFFFLL;
        WORD2(v22.st_mtimespec.tv_sec) = 0;
        v22.st_mtimespec.tv_nsec = 0;
        result = llvm::sys::fs::status(LODWORD(v22.st_ctimespec.tv_nsec), &v22, v10);
        if (result)
        {
          *(a1 + 16) |= 1u;
          *a1 = result;
          *(a1 + 1) = v21;
          goto LABEL_9;
        }

        if (LODWORD(v22.st_atimespec.tv_nsec) != 5 && LODWORD(v22.st_atimespec.tv_nsec) != 2)
        {
          result = std::generic_category();
          *(a1 + 16) |= 1u;
          *a1 = 22;
          *(a1 + 1) = result;
          goto LABEL_9;
        }

        tv_sec = v22.st_atimespec.tv_sec;
      }
    }

    v22.st_dev = 0;
    v22.st_ino = std::system_category();
    v15 = operator new(48, a2);
    *v15 = &unk_2868A0EB8;
    v16 = llvm::sys::fs::mapped_file_region::alignment(v15);
    v17 = (v16 - 1) & a5;
    v18 = llvm::sys::fs::mapped_file_region::alignment(v16);
    llvm::sys::fs::mapped_file_region::mapped_file_region((v15 + 24), tv_nsec, 1, v17 + tv_sec, -v18 & a5, &v22);
    if (v22.st_dev || (v19 = llvm::sys::fs::mapped_file_region::const_data((v15 + 24)), result = llvm::sys::fs::mapped_file_region::alignment(v19), v20 = v19 + ((result - 1) & a5), *(v15 + 1) = v20, *(v15 + 2) = &v20[tv_sec], v22.st_dev))
    {
      *(a1 + 16) |= 1u;
      *a1 = *&v22.st_dev;
      result = (*(*v15 + 8))(v15);
    }

    else
    {
      *(a1 + 16) &= ~1u;
      *a1 = v15;
    }

    goto LABEL_9;
  }

  v22.st_ctimespec.tv_sec = v22.st_ctimespec.tv_nsec;
  v22.st_ctimespec.tv_nsec = 0;
  v11 = llvm::errorToErrorCode(&v22.st_ctimespec);
  *(a1 + 16) |= 1u;
  *a1 = v11;
  *(a1 + 1) = v12;
  result = v22.st_ctimespec.tv_sec;
  if (v22.st_ctimespec.tv_sec)
  {
    result = (*(*v22.st_ctimespec.tv_sec + 8))(v22.st_ctimespec.tv_sec);
  }

LABEL_9:
  if (v22.st_birthtimespec.tv_sec)
  {
    result = v22.st_ctimespec.tv_nsec;
    v22.st_ctimespec.tv_nsec = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void getOpenFileImpl<llvm::MemoryBuffer>(uint64_t a1, llvm::sys::fs *this, llvm::sys::fs::file_status *a3, __darwin_time_t a4, unint64_t a5, off_t a6, int a7, char a8, uint64_t a9)
{
  tv_sec = a5;
  v45.st_ctimespec.tv_nsec = *MEMORY[0x277D85DE8];
  if (atomic_load_explicit(&qword_27F874970, memory_order_acquire))
  {
    if (a5 != -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v41 = a7;
    v39 = a8;
    v40 = a4;
    getOpenFileImpl<llvm::MemoryBuffer>();
    a4 = v40;
    a8 = v39;
    a7 = v41;
    if (tv_sec != -1)
    {
      goto LABEL_4;
    }
  }

  tv_sec = a4;
  if (a4 == -1)
  {
    v24 = a8;
    v25 = a7;
    memset(&v45, 0, 44);
    *(&v45.st_atimespec.tv_nsec + 4) = 0xFFFFLL;
    WORD2(v45.st_mtimespec.tv_sec) = 0;
    v45.st_mtimespec.tv_nsec = 0;
    v26 = llvm::sys::fs::status(this, &v45, a3);
    if (v26)
    {
      *(a1 + 16) |= 1u;
      *a1 = v26;
      *(a1 + 8) = v27;
      return;
    }

    if (LODWORD(v45.st_atimespec.tv_nsec) != 2 && LODWORD(v45.st_atimespec.tv_nsec) != 5)
    {
      getMemoryBufferForStream(v43, this);
      v36 = *(a1 + 16);
      if (v44)
      {
        v37 = v36 | 1;
        v38 = v43[0];
        *(a1 + 8) = v43[1];
      }

      else
      {
        v37 = v36 & 0xFE;
        v38 = v43[0];
      }

      *(a1 + 16) = v37;
      *a1 = v38;
      return;
    }

    tv_sec = v45.st_atimespec.tv_sec;
    a4 = v45.st_atimespec.tv_sec;
    a7 = v25;
    a8 = v24;
  }

LABEL_4:
  v14 = dword_27F874964;
  if (a7 && (a8 & 1) != 0)
  {
    goto LABEL_29;
  }

  v16 = (tv_sec & 0xFFFFFFFFFFFFC000) != 0 && tv_sec >= dword_27F874964;
  if (!v16 || a7 == 0)
  {
    if (v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (a4 == -1)
    {
      memset(&v45, 0, 44);
      *(&v45.st_atimespec.tv_nsec + 4) = 0xFFFFLL;
      WORD2(v45.st_mtimespec.tv_sec) = 0;
      v45.st_mtimespec.tv_nsec = 0;
      if (llvm::sys::fs::status(this, &v45, a3))
      {
        goto LABEL_29;
      }

      a4 = v45.st_atimespec.tv_sec;
      if (tv_sec + a6 != v45.st_atimespec.tv_sec)
      {
        goto LABEL_29;
      }
    }

    else if (tv_sec + a6 != a4)
    {
      goto LABEL_29;
    }

    if ((a4 & (v14 - 1)) != 0)
    {
LABEL_22:
      v45.st_dev = 0;
      v45.st_ino = std::system_category();
      v18 = operator new(48, a3);
      *v18 = &unk_2868A1028;
      v19 = llvm::sys::fs::mapped_file_region::alignment(v18);
      v20 = (v19 - 1) & a6;
      v21 = llvm::sys::fs::mapped_file_region::alignment(v19);
      llvm::sys::fs::mapped_file_region::mapped_file_region((v18 + 24), this, 0, v20 + tv_sec, -v21 & a6, &v45);
      if (!v45.st_dev)
      {
        v22 = llvm::sys::fs::mapped_file_region::const_data((v18 + 24));
        v23 = v22 + ((llvm::sys::fs::mapped_file_region::alignment(v22) - 1) & a6);
        *(v18 + 1) = v23;
        *(v18 + 2) = &v23[tv_sec];
        if (!v45.st_dev)
        {
          *(a1 + 16) &= ~1u;
          *a1 = v18;
          return;
        }
      }

      (*(*v18 + 8))(v18);
    }
  }

LABEL_29:
  llvm::WritableMemoryBuffer::getNewUninitMemBuffer(tv_sec, a3, a9, v43);
  if (!v43[0])
  {
    v35 = std::generic_category();
    *(a1 + 16) |= 1u;
    *a1 = 12;
    *(a1 + 8) = v35;
    return;
  }

  v28 = *(v43[0] + 8);
  v29 = *(v43[0] + 16) - v28;
  do
  {
    if (!v29)
    {
      goto LABEL_46;
    }

    llvm::sys::fs::readNativeFileSlice(this, v28, v29, a6, &v45);
    if (v45.st_ino)
    {
      v30 = *&v45.st_dev;
      *&v45.st_dev = 0;
      v42 = v30;
      v31 = llvm::errorToErrorCode(&v42);
      *(a1 + 16) |= 1u;
      *a1 = v31;
      *(a1 + 8) = v32;
      if (v42)
      {
        (*(*v42 + 8))(v42);
        v33 = 1;
        if ((v45.st_ino & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        v33 = 1;
        if ((v45.st_ino & 1) == 0)
        {
          continue;
        }
      }
    }

    else if (*&v45.st_dev)
    {
      v33 = 0;
      v29 -= *&v45.st_dev;
      v28 += *&v45.st_dev;
      a6 += *&v45.st_dev;
      if ((v45.st_ino & 1) == 0)
      {
        continue;
      }
    }

    else
    {
      bzero(v28, v29);
      v33 = 3;
      if ((v45.st_ino & 1) == 0)
      {
        continue;
      }
    }

    v34 = *&v45.st_dev;
    *&v45.st_dev = 0;
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }
  }

  while (!v33);
  if (v33 == 3)
  {
LABEL_46:
    *(a1 + 16) &= ~1u;
    *a1 = v43[0];
    return;
  }

  if (v43[0])
  {
    (*(*v43[0] + 8))(v43[0]);
  }
}

void getMemoryBufferForStream(uint64_t a1, const llvm::Twine *a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v18[2048] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = xmmword_25739FBD0;
  llvm::sys::fs::readNativeFileToEOF(v6, &v16, 0x4000uLL, &v15);
  if (v15)
  {
    v14 = v15;
    v15 = 0;
    v7 = llvm::errorToErrorCode(&v14);
    *(v5 + 16) |= 1u;
    *v5 = v7;
    *(v5 + 8) = v8;
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    if (v15)
    {
      (*(*v15 + 8))(v15);
      v9 = v16;
      if (v16 == v18)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_11:
    v9 = v16;
    if (v16 == v18)
    {
      return;
    }

    goto LABEL_12;
  }

  v10 = v16;
  v11 = v17;
  llvm::WritableMemoryBuffer::getNewUninitMemBuffer(v17, v4, 0, &v15);
  v12 = v15;
  if (v15)
  {
    if (v11)
    {
      memmove(*(v15 + 8), v10, v11);
    }

    *(v5 + 16) &= ~1u;
    *v5 = v12;
    goto LABEL_11;
  }

  v13 = std::generic_category();
  *(v5 + 16) |= 1u;
  *v5 = 12;
  *(v5 + 8) = v13;
  v9 = v16;
  if (v16 == v18)
  {
    return;
  }

LABEL_12:
  free(v9);
}

llvm::Twine *llvm::MemoryBuffer::getFileAsStream@<X0>(llvm::MemoryBuffer *this@<X0>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  llvm::sys::fs::openNativeFileForRead(this, 0, 0, &v16);
  if ((v17 & 1) == 0)
  {
    v12 = v16;
    getMemoryBufferForStream(v14, v16);
    v9 = *(a2 + 16);
    if (v15)
    {
      v10 = v9 | 1;
      v11 = v14[0];
      *(a2 + 8) = v14[1];
    }

    else
    {
      v10 = v9 & 0xFE;
      v11 = v14[0];
    }

    *(a2 + 16) = v10;
    *a2 = v11;
    result = llvm::sys::fs::closeFile(&v12, v8);
    if ((v17 & 1) == 0)
    {
      return result;
    }

LABEL_10:
    result = v16;
    v16 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }

    return result;
  }

  v4 = v16;
  v16 = 0;
  v13 = v4;
  v5 = llvm::errorToErrorCode(&v13);
  *(a2 + 16) |= 1u;
  *a2 = v5;
  *(a2 + 8) = v6;
  result = v13;
  if (v13)
  {
    result = (*(*v13 + 8))(v13);
  }

  if (v17)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t llvm::MemoryBuffer::getMemBufferRef@<X0>(llvm::MemoryBuffer *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 1);
  v4 = *(this + 2) - v3;
  result = (*(*this + 16))(this);
  *a2 = v3;
  a2[1] = v4;
  a2[2] = result;
  a2[3] = v6;
  return result;
}

void llvm::SmallVectorMemoryBuffer::~SmallVectorMemoryBuffer(void **this)
{
  *this = &unk_2868A0E20;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v2 = this[3];
  if (v2 != this + 6)
  {
    free(v2);
  }
}

{
  *this = &unk_2868A0E20;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v2 = this[3];
  if (v2 != this + 6)
  {
    free(v2);
  }
}

{
  *this = &unk_2868A0E20;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v2 = this[3];
  if (v2 != this + 6)
  {
    free(v2);
  }

  JUMPOUT(0x259C63180);
}

char *llvm::SmallVectorMemoryBuffer::getBufferIdentifier(llvm::SmallVectorMemoryBuffer *this)
{
  v3 = *(this + 6);
  v1 = this + 48;
  v2 = v3;
  if (v1[23] >= 0)
  {
    return v1;
  }

  return v2;
}

void *anonymous namespace::MemoryBufferMMapFile<llvm::WriteThroughMemoryBuffer>::~MemoryBufferMMapFile(void *a1)
{
  *a1 = &unk_2868A0EB8;
  llvm::sys::fs::mapped_file_region::unmapImpl((a1 + 3));
  return a1;
}

void anonymous namespace::MemoryBufferMMapFile<llvm::WriteThroughMemoryBuffer>::~MemoryBufferMMapFile(void *a1)
{
  *a1 = &unk_2868A0EB8;
  llvm::sys::fs::mapped_file_region::unmapImpl((a1 + 3));

  free(a1);
}

uint64_t llvm::sys::Process::getPageSizeEstimate(llvm::sys::Process *this)
{
  v8 = *MEMORY[0x277D85DE8];
  llvm::sys::Process::getPageSize(&v6);
  if ((v7 & 1) == 0)
  {
    return v6;
  }

  v1 = v6;
  v6 = 0;
  v4 = v1;
  llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v4, &v5);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (v7)
  {
    v2 = v6;
    v6 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return 4096;
}

void *anonymous namespace::MemoryBufferMMapFile<llvm::WritableMemoryBuffer>::~MemoryBufferMMapFile(void *a1)
{
  *a1 = &unk_2868A0F70;
  llvm::sys::fs::mapped_file_region::unmapImpl((a1 + 3));
  return a1;
}

void anonymous namespace::MemoryBufferMMapFile<llvm::WritableMemoryBuffer>::~MemoryBufferMMapFile(void *a1)
{
  *a1 = &unk_2868A0F70;
  llvm::sys::fs::mapped_file_region::unmapImpl((a1 + 3));

  free(a1);
}

void *anonymous namespace::MemoryBufferMMapFile<llvm::MemoryBuffer>::~MemoryBufferMMapFile(void *a1)
{
  *a1 = &unk_2868A1028;
  llvm::sys::fs::mapped_file_region::unmapImpl((a1 + 3));
  return a1;
}

void anonymous namespace::MemoryBufferMMapFile<llvm::MemoryBuffer>::~MemoryBufferMMapFile(void *a1)
{
  *a1 = &unk_2868A1028;
  llvm::sys::fs::mapped_file_region::unmapImpl((a1 + 3));

  free(a1);
}

llvm::MemoryBufferRef *llvm::MemoryBufferRef::MemoryBufferRef(llvm::MemoryBufferRef *this, const llvm::MemoryBuffer *a2)
{
  v3 = *(a2 + 1);
  v4 = *(a2 + 2) - v3;
  *this = v3;
  *(this + 1) = v4;
  *(this + 2) = (*(*a2 + 16))(a2);
  *(this + 3) = v5;
  return this;
}

{
  v3 = *(a2 + 1);
  v4 = *(a2 + 2) - v3;
  *this = v3;
  *(this + 1) = v4;
  *(this + 2) = (*(*a2 + 16))(a2);
  *(this + 3) = v5;
  return this;
}

void *llvm::operator<<(void *result, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v7 = result[4];
      if (result[3] - v7 > 7uLL)
      {
        *v7 = 0x666552646F4D6F4ELL;
        result[4] += 8;
        return result;
      }

      v3 = "NoModRef";
      v5 = result;
      v6 = 8;
      goto LABEL_15;
    }

    if (a2 != 1)
    {
      return result;
    }

    v2 = result[4];
    if ((result[3] - v2) <= 2)
    {
      v3 = "Ref";
LABEL_14:
      v5 = result;
      v6 = 3;
      goto LABEL_15;
    }

    *(v2 + 2) = 102;
    v8 = 25938;
    goto LABEL_21;
  }

  if (a2 == 2)
  {
    v2 = result[4];
    if ((result[3] - v2) <= 2)
    {
      v3 = "Mod";
      goto LABEL_14;
    }

    *(v2 + 2) = 100;
    v8 = 28493;
LABEL_21:
    *v2 = v8;
    result[4] += 3;
    return result;
  }

  if (a2 != 3)
  {
    return result;
  }

  v4 = result[4];
  if ((result[3] - v4) > 5)
  {
    *(v4 + 4) = 26213;
    *v4 = 1382313805;
    result[4] += 6;
    return result;
  }

  v3 = "ModRef";
  v5 = result;
  v6 = 6;
LABEL_15:
  llvm::raw_ostream::write(result, v3, v6);
  return v5;
}

void *llvm::operator<<(llvm::raw_ostream *this, unsigned int a2)
{
  v4 = *(this + 4);
  if (*(this + 3) - v4 > 7uLL)
  {
    *v4 = 0x203A6D654D677241;
    *(this + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(this, "ArgMem: ", 8uLL);
  }

  llvm::operator<<(this, a2 & 3);
  v5 = *(this + 4);
  if (*(this + 3) - v5 > 1uLL)
  {
    *v5 = 8236;
    *(this + 4) += 2;
    v6 = *(this + 4);
    if ((*(this + 3) - v6) > 0x10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    llvm::raw_ostream::write(this, ", ", 2uLL);
    v6 = *(this + 4);
    if ((*(this + 3) - v6) > 0x10)
    {
LABEL_6:
      *(v6 + 16) = 32;
      *v6 = *"InaccessibleMem: ";
      *(this + 4) += 17;
      goto LABEL_9;
    }
  }

  llvm::raw_ostream::write(this, "InaccessibleMem: ", 0x11uLL);
LABEL_9:
  llvm::operator<<(this, (a2 >> 2) & 3);
  v7 = *(this + 4);
  if (*(this + 3) - v7 >= 2uLL)
  {
    *v7 = 8236;
    *(this + 4) += 2;
    v8 = *(this + 4);
    if (*(this + 3) - v8 >= 7uLL)
    {
LABEL_11:
      *(v8 + 3) = 540701285;
      *v8 = 1701344335;
      *(this + 4) += 7;
      v9 = (a2 >> 4) & 3;
      v10 = this;

      return llvm::operator<<(v10, v9);
    }
  }

  else
  {
    llvm::raw_ostream::write(this, ", ", 2uLL);
    v8 = *(this + 4);
    if (*(this + 3) - v8 >= 7uLL)
    {
      goto LABEL_11;
    }
  }

  llvm::raw_ostream::write(this, "Other: ", 7uLL);
  v9 = (a2 >> 4) & 3;
  v10 = this;

  return llvm::operator<<(v10, v9);
}

int *llvm::MD5::body(int *a1, int *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  do
  {
    v88 = v5;
    v7 = *a2;
    a1[22] = *a2;
    HIDWORD(v8) = v3 + (v6 & v4 | v5 & ~v4) - 680876936 + v7;
    LODWORD(v8) = HIDWORD(v8);
    v9 = (v8 >> 25) + v4;
    v10 = a2[1];
    a1[23] = v10;
    HIDWORD(v8) = v88 + v10 - 389564586 + (v4 & v9 | v6 & ~v9);
    LODWORD(v8) = HIDWORD(v8);
    v11 = (v8 >> 20) + v9;
    v12 = a2[2];
    a1[24] = v12;
    HIDWORD(v8) = v6 + v12 + 606105819 + (v9 & v11 | v4 & ~v11);
    LODWORD(v8) = HIDWORD(v8);
    v13 = (v8 >> 15) + v11;
    v14 = a2[3];
    HIDWORD(v8) = v4 + v14 - 1044525330 + (v11 & v13 | v9 & ~v13);
    LODWORD(v8) = HIDWORD(v8);
    a1[25] = v14;
    v15 = (v8 >> 10) + v13;
    v16 = a2[4];
    a1[26] = v16;
    HIDWORD(v8) = v9 + v16 - 176418897 + (v13 & v15 | v11 & ~v15);
    LODWORD(v8) = HIDWORD(v8);
    v17 = (v8 >> 25) + v15;
    v18 = a2[5];
    a1[27] = v18;
    HIDWORD(v8) = v11 + v18 + 1200080426 + (v15 & v17 | v13 & ~v17);
    LODWORD(v8) = HIDWORD(v8);
    v19 = (v8 >> 20) + v17;
    v20 = a2[6];
    a1[28] = v20;
    HIDWORD(v8) = v13 + v20 - 1473231341 + (v17 & v19 | v15 & ~v19);
    LODWORD(v8) = HIDWORD(v8);
    v21 = (v8 >> 15) + v19;
    v22 = a2[7];
    a1[29] = v22;
    HIDWORD(v8) = v15 + v22 - 45705983 + (v19 & v21 | v17 & ~v21);
    LODWORD(v8) = HIDWORD(v8);
    v23 = (v8 >> 10) + v21;
    v24 = a2[8];
    a1[30] = v24;
    HIDWORD(v8) = v17 + v24 + 1770035416 + (v21 & v23 | v19 & ~v23);
    LODWORD(v8) = HIDWORD(v8);
    v25 = (v8 >> 25) + v23;
    v26 = a2[9];
    HIDWORD(v8) = v19 + v26 - 1958414417 + (v23 & v25 | v21 & ~v25);
    LODWORD(v8) = HIDWORD(v8);
    a1[31] = v26;
    v27 = (v8 >> 20) + v25;
    v28 = a2[10];
    a1[32] = v28;
    HIDWORD(v8) = v21 + v28 - 42063 + (v25 & v27 | v23 & ~v27);
    LODWORD(v8) = HIDWORD(v8);
    v29 = (v8 >> 15) + v27;
    v30 = a2[11];
    a1[33] = v30;
    HIDWORD(v8) = v23 + v30 - 1990404162 + (v27 & v29 | v25 & ~v29);
    LODWORD(v8) = HIDWORD(v8);
    v31 = (v8 >> 10) + v29;
    v32 = a2[12];
    a1[34] = v32;
    HIDWORD(v8) = v32 + v25 + 1804603682 + (v29 & v31 | v27 & ~v31);
    LODWORD(v8) = HIDWORD(v8);
    v33 = (v8 >> 25) + v31;
    v34 = a2[13];
    a1[35] = v34;
    HIDWORD(v8) = v34 + v27 - 40341101 + (v31 & v33 | v29 & ~v33);
    LODWORD(v8) = HIDWORD(v8);
    v35 = (v8 >> 20) + v33;
    v36 = a2[14];
    a1[36] = v36;
    HIDWORD(v8) = v36 + v29 - 1502002290 + (v33 & v35 | v31 & ~v35);
    LODWORD(v8) = HIDWORD(v8);
    v37 = (v8 >> 15) + v35;
    v38 = a2[15];
    HIDWORD(v8) = v38 + v31 + 1236535329 + (v35 & v37 | v33 & ~v37);
    LODWORD(v8) = HIDWORD(v8);
    v39 = (v8 >> 10) + v37;
    HIDWORD(v8) = v10 + v33 - 165796510 + (v39 & v35 | v37 & ~v35);
    LODWORD(v8) = HIDWORD(v8);
    v40 = (v8 >> 27) + v39;
    HIDWORD(v8) = v20 + v35 - 1069501632 + (v40 & v37 | v39 & ~v37);
    LODWORD(v8) = HIDWORD(v8);
    v41 = (v8 >> 23) + v40;
    HIDWORD(v8) = v30 + v37 + 643717713 + (v41 & v39 | v40 & ~v39);
    LODWORD(v8) = HIDWORD(v8);
    v42 = (v8 >> 18) + v41;
    HIDWORD(v8) = v7 + v39 - 373897302 + (v42 & v40 | v41 & ~v40);
    LODWORD(v8) = HIDWORD(v8);
    v43 = (v8 >> 12) + v42;
    HIDWORD(v8) = v18 + v40 - 701558691 + (v43 & v41 | v42 & ~v41);
    LODWORD(v8) = HIDWORD(v8);
    v44 = (v8 >> 27) + v43;
    HIDWORD(v8) = v28 + v41 + 38016083 + (v44 & v42 | v43 & ~v42);
    LODWORD(v8) = HIDWORD(v8);
    v45 = (v8 >> 23) + v44;
    HIDWORD(v8) = v38 + v42 - 660478335 + (v45 & v43 | v44 & ~v43);
    LODWORD(v8) = HIDWORD(v8);
    v46 = (v8 >> 18) + v45;
    HIDWORD(v8) = v16 + v43 - 405537848 + (v46 & v44 | v45 & ~v44);
    LODWORD(v8) = HIDWORD(v8);
    v47 = (v8 >> 12) + v46;
    HIDWORD(v8) = v26 + v44 + 568446438 + (v47 & v45 | v46 & ~v45);
    LODWORD(v8) = HIDWORD(v8);
    v48 = (v8 >> 27) + v47;
    HIDWORD(v8) = v36 + v45 - 1019803690 + (v48 & v46 | v47 & ~v46);
    LODWORD(v8) = HIDWORD(v8);
    v49 = (v8 >> 23) + v48;
    HIDWORD(v8) = v14 + v46 - 187363961 + (v49 & v47 | v48 & ~v47);
    LODWORD(v8) = HIDWORD(v8);
    v50 = (v8 >> 18) + v49;
    HIDWORD(v8) = v24 + v47 + 1163531501 + (v50 & v48 | v49 & ~v48);
    LODWORD(v8) = HIDWORD(v8);
    v51 = (v8 >> 12) + v50;
    HIDWORD(v8) = v34 + v48 - 1444681467 + (v51 & v49 | v50 & ~v49);
    LODWORD(v8) = HIDWORD(v8);
    v52 = (v8 >> 27) + v51;
    HIDWORD(v8) = v12 + v49 - 51403784 + (v52 & v50 | v51 & ~v50);
    LODWORD(v8) = HIDWORD(v8);
    v53 = (v8 >> 23) + v52;
    HIDWORD(v8) = v22 + v50 + 1735328473 + (v53 & v51 | v52 & ~v51);
    LODWORD(v8) = HIDWORD(v8);
    v54 = (v8 >> 18) + v53;
    HIDWORD(v8) = v32 + v51 - 1926607734 + ((v54 ^ v53) & v52 ^ v53);
    LODWORD(v8) = HIDWORD(v8);
    v55 = (v8 >> 12) + v54;
    HIDWORD(v8) = v18 + v52 - 378558 + (v54 ^ v53 ^ v55);
    LODWORD(v8) = HIDWORD(v8);
    v56 = (v8 >> 28) + v55;
    HIDWORD(v8) = v24 + v53 - 2022574463 + (v55 ^ v54 ^ v56);
    LODWORD(v8) = HIDWORD(v8);
    v57 = (v8 >> 21) + v56;
    HIDWORD(v8) = v30 + v54 + 1839030562 + (v56 ^ v55 ^ v57);
    LODWORD(v8) = HIDWORD(v8);
    v58 = (v8 >> 16) + v57;
    HIDWORD(v8) = v36 + v55 - 35309556 + (v57 ^ v56 ^ v58);
    LODWORD(v8) = HIDWORD(v8);
    v59 = (v8 >> 9) + v58;
    HIDWORD(v8) = v10 + v56 - 1530992060 + (v58 ^ v57 ^ v59);
    LODWORD(v8) = HIDWORD(v8);
    v60 = (v8 >> 28) + v59;
    HIDWORD(v8) = v16 + v57 + 1272893353 + (v59 ^ v58 ^ v60);
    LODWORD(v8) = HIDWORD(v8);
    v61 = (v8 >> 21) + v60;
    HIDWORD(v8) = v22 + v58 - 155497632 + (v60 ^ v59 ^ v61);
    LODWORD(v8) = HIDWORD(v8);
    v62 = (v8 >> 16) + v61;
    HIDWORD(v8) = v28 + v59 - 1094730640 + (v61 ^ v60 ^ v62);
    LODWORD(v8) = HIDWORD(v8);
    v63 = (v8 >> 9) + v62;
    HIDWORD(v8) = v34 + v60 + 681279174 + (v62 ^ v61 ^ v63);
    LODWORD(v8) = HIDWORD(v8);
    v64 = (v8 >> 28) + v63;
    HIDWORD(v8) = v7 + v61 - 358537222 + (v63 ^ v62 ^ v64);
    LODWORD(v8) = HIDWORD(v8);
    v65 = (v8 >> 21) + v64;
    HIDWORD(v8) = v14 + v62 - 722521979 + (v64 ^ v63 ^ v65);
    LODWORD(v8) = HIDWORD(v8);
    v66 = (v8 >> 16) + v65;
    HIDWORD(v8) = v20 + v63 + 76029189 + (v65 ^ v64 ^ v66);
    LODWORD(v8) = HIDWORD(v8);
    v67 = (v8 >> 9) + v66;
    HIDWORD(v8) = v26 + v64 - 640364487 + (v66 ^ v65 ^ v67);
    LODWORD(v8) = HIDWORD(v8);
    v68 = (v8 >> 28) + v67;
    HIDWORD(v8) = v32 + v65 - 421815835 + (v67 ^ v66 ^ v68);
    LODWORD(v8) = HIDWORD(v8);
    v69 = (v8 >> 21) + v68;
    HIDWORD(v8) = v38 + v66 + 530742520 + (v68 ^ v67 ^ v69);
    LODWORD(v8) = HIDWORD(v8);
    v70 = (v8 >> 16) + v69;
    HIDWORD(v8) = v12 + v67 - 995338651 + (v69 ^ v68 ^ v70);
    LODWORD(v8) = HIDWORD(v8);
    v71 = (v8 >> 9) + v70;
    HIDWORD(v8) = v7 + v68 - 198630844 + ((v71 | ~v69) ^ v70);
    LODWORD(v8) = HIDWORD(v8);
    v72 = (v8 >> 26) + v71;
    HIDWORD(v8) = v22 + v69 + 1126891415 + ((v72 | ~v70) ^ v71);
    LODWORD(v8) = HIDWORD(v8);
    v73 = (v8 >> 22) + v72;
    HIDWORD(v8) = v36 + v70 - 1416354905 + ((v73 | ~v71) ^ v72);
    LODWORD(v8) = HIDWORD(v8);
    v74 = (v8 >> 17) + v73;
    HIDWORD(v8) = v18 + v71 - 57434055 + ((v74 | ~v72) ^ v73);
    LODWORD(v8) = HIDWORD(v8);
    v75 = (v8 >> 11) + v74;
    HIDWORD(v8) = v32 + v72 + 1700485571 + ((v75 | ~v73) ^ v74);
    LODWORD(v8) = HIDWORD(v8);
    v76 = (v8 >> 26) + v75;
    HIDWORD(v8) = v14 + v73 - 1894986606 + ((v76 | ~v74) ^ v75);
    LODWORD(v8) = HIDWORD(v8);
    v77 = (v8 >> 22) + v76;
    HIDWORD(v8) = v28 + v74 - 1051523 + ((v77 | ~v75) ^ v76);
    LODWORD(v8) = HIDWORD(v8);
    v78 = (v8 >> 17) + v77;
    HIDWORD(v8) = v10 + v75 - 2054922799 + ((v78 | ~v76) ^ v77);
    LODWORD(v8) = HIDWORD(v8);
    v79 = (v8 >> 11) + v78;
    HIDWORD(v8) = v24 + v76 + 1873313359 + ((v79 | ~v77) ^ v78);
    LODWORD(v8) = HIDWORD(v8);
    v80 = (v8 >> 26) + v79;
    HIDWORD(v8) = v38 + v77 - 30611744 + ((v80 | ~v78) ^ v79);
    LODWORD(v8) = HIDWORD(v8);
    v81 = (v8 >> 22) + v80;
    HIDWORD(v8) = v20 + v78 - 1560198380 + ((v81 | ~v79) ^ v80);
    LODWORD(v8) = HIDWORD(v8);
    v82 = (v8 >> 17) + v81;
    HIDWORD(v8) = v34 + v79 + 1309151649 + ((v82 | ~v80) ^ v81);
    LODWORD(v8) = HIDWORD(v8);
    v83 = (v8 >> 11) + v82;
    HIDWORD(v8) = v16 + v80 - 145523070 + ((v83 | ~v81) ^ v82);
    LODWORD(v8) = HIDWORD(v8);
    v84 = (v8 >> 26) + v83;
    HIDWORD(v8) = v30 + v81 - 1120210379 + ((v84 | ~v82) ^ v83);
    LODWORD(v8) = HIDWORD(v8);
    a1[37] = v38;
    v85 = (v8 >> 22) + v84;
    HIDWORD(v8) = v12 + v82 + 718787259 + ((v85 | ~v83) ^ v84);
    LODWORD(v8) = HIDWORD(v8);
    v86 = (v8 >> 17) + v85;
    v3 += v84;
    HIDWORD(v8) = v26 + v83 - 343485551 + ((v86 | ~v84) ^ v85);
    LODWORD(v8) = HIDWORD(v8);
    v4 += v86 + (v8 >> 11);
    v6 += v86;
    v5 = v85 + v88;
    a2 += 16;
    a3 -= 64;
  }

  while (a3);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  return a2;
}

double llvm::MD5::MD5(llvm::MD5 *this)
{
  result = -3.59869635e230;
  *this = xmmword_25739FDA0;
  *(this + 2) = 0;
  return result;
}

{
  result = -3.59869635e230;
  *this = xmmword_25739FDA0;
  *(this + 2) = 0;
  return result;
}

void *llvm::MD5::update(int *a1, int *a2, size_t a3)
{
  v5 = a1[4];
  v4 = a1[5];
  v6 = (v4 + a3) & 0x1FFFFFFF;
  if (v6 < v4)
  {
    ++v5;
  }

  a1[4] = v5 + (a3 >> 29);
  a1[5] = v6;
  v7 = v4 & 0x3F;
  if (v7)
  {
    v8 = 64 - v7;
    v9 = a1 + 6;
    v10 = a3 - (64 - v7);
    if (a3 < 64 - v7)
    {
      v11 = v9 + v7;

      return memcpy(v11, a2, a3);
    }

    v13 = a2;
    memcpy(v9 + v7, a2, 64 - v7);
    llvm::MD5::body(a1, a1 + 6, 64);
    a2 = (v13 + v8);
    a3 = v10;
  }

  if (a3 >= 0x40)
  {
    v14 = a3;
    a2 = llvm::MD5::body(a1, a2, a3 & 0xFFFFFFFFFFFFFFC0);
    a3 = v14 & 0x3F;
  }

  v11 = (a1 + 6);

  return memcpy(v11, a2, a3);
}

{
  v4 = a1[5];
  v5 = (v4 + a3) & 0x1FFFFFFF;
  v6 = a1[4] + (a3 >> 29);
  if (v5 < v4)
  {
    ++v6;
  }

  a1[4] = v6;
  a1[5] = v5;
  v7 = v4 & 0x3F;
  if (v7)
  {
    v8 = 64 - v7;
    v9 = a1 + 6;
    v10 = a3 - (64 - v7);
    if (a3 < 64 - v7)
    {
      v11 = v9 + v7;

      return memcpy(v11, a2, a3);
    }

    v13 = a2;
    memcpy(v9 + v7, a2, 64 - v7);
    llvm::MD5::body(a1, a1 + 6, 64);
    a2 = (v13 + v8);
    a3 = v10;
  }

  if (a3 >= 0x40)
  {
    v14 = a3;
    a2 = llvm::MD5::body(a1, a2, a3 & 0xFFFFFFFFFFFFFFC0);
    a3 = v14 & 0x3F;
  }

  v11 = (a1 + 6);

  return memcpy(v11, a2, a3);
}

int *llvm::MD5::final(int *a1, int *a2)
{
  v4 = a1[5] & 0x3F;
  v5 = a1 + 6;
  v6 = v4 + 1;
  *(a1 + v4 + 24) = 0x80;
  if ((v4 ^ 0x3FuLL) >= 8)
  {
    v7 = 55 - v4;
  }

  else
  {
    bzero(v5 + v6, v4 ^ 0x3F);
    llvm::MD5::body(a1, v5, 64);
    v6 = 0;
    v7 = 56;
  }

  bzero(v5 + v6, v7);
  v8 = a1[4];
  v9 = 8 * a1[5];
  a1[5] = v9;
  a1[20] = v9;
  a1[21] = v8;
  result = llvm::MD5::body(a1, v5, 64);
  *a2 = *a1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = a1[3];
  return result;
}

uint64_t llvm::MD5::final(llvm::MD5 *this)
{
  v2 = *(this + 5) & 0x3F;
  v3 = (this + 24);
  v4 = v2 + 1;
  *(this + v2 + 24) = 0x80;
  if ((v2 ^ 0x3FuLL) >= 8)
  {
    v5 = 55 - v2;
  }

  else
  {
    bzero(v3 + v4, v2 ^ 0x3F);
    llvm::MD5::body(this, v3, 64);
    v4 = 0;
    v5 = 56;
  }

  bzero(v3 + v4, v5);
  v6 = *(this + 4);
  v7 = 8 * *(this + 5);
  *(this + 5) = v7;
  *(this + 20) = v7;
  *(this + 21) = v6;
  llvm::MD5::body(this, v3, 64);
  return *this;
}

__n128 llvm::MD5::result(llvm::MD5 *this)
{
  v15 = *(this + 6);
  v16 = *(this + 7);
  v17 = *(this + 8);
  v18 = *(this + 18);
  v11 = *(this + 2);
  v12 = *(this + 3);
  v13 = *(this + 4);
  v14 = *(this + 5);
  v9 = *this;
  v10 = *(this + 1);
  v2 = *(this + 5) & 0x3F;
  v3 = (this + 24);
  v4 = v2 + 1;
  *(this + v2 + 24) = 0x80;
  if ((v2 ^ 0x3FuLL) >= 8)
  {
    v5 = 55 - v2;
  }

  else
  {
    bzero(v3 + v4, v2 ^ 0x3F);
    llvm::MD5::body(this, v3, 64);
    v4 = 0;
    v5 = 56;
  }

  bzero(v3 + v4, v5);
  v6 = *(this + 4);
  v7 = 8 * *(this + 5);
  *(this + 5) = v7;
  *(this + 20) = v7;
  *(this + 21) = v6;
  llvm::MD5::body(this, v3, 64);
  *(this + 6) = v15;
  *(this + 7) = v16;
  *(this + 8) = v17;
  *(this + 18) = v18;
  *(this + 2) = v11;
  *(this + 3) = v12;
  *(this + 4) = v13;
  *(this + 5) = v14;
  result = v9;
  *this = v9;
  *(this + 1) = v10;
  return result;
}

int64x2_t llvm::MD5::MD5Result::digest@<Q0>(llvm::MD5::MD5Result *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  *(a2 + 24) = llvm::hexdigit(unsigned int,BOOL)::LUT[v2 >> 4] | 0x20;
  *a2 = a2 + 24;
  result = vdupq_n_s64(0x20uLL);
  *(a2 + 8) = result;
  *(a2 + 25) = llvm::hexdigit(unsigned int,BOOL)::LUT[v2 & 0xF] | 0x20;
  v4 = *(this + 1);
  *(a2 + 26) = llvm::hexdigit(unsigned int,BOOL)::LUT[v4 >> 4] | 0x20;
  *(a2 + 27) = llvm::hexdigit(unsigned int,BOOL)::LUT[v4 & 0xF] | 0x20;
  v5 = *(this + 2);
  v6 = llvm::hexdigit(unsigned int,BOOL)::LUT[v5 >> 4] | 0x20;
  LOBYTE(v5) = llvm::hexdigit(unsigned int,BOOL)::LUT[v5 & 0xF];
  *(a2 + 28) = v6;
  v7 = *(this + 3);
  v8 = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 >> 4];
  *(a2 + 29) = v5 | 0x20;
  *(a2 + 30) = v8 | 0x20;
  *(a2 + 31) = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 & 0xF] | 0x20;
  v9 = *(this + 4);
  *(a2 + 32) = llvm::hexdigit(unsigned int,BOOL)::LUT[v9 >> 4] | 0x20;
  *(a2 + 33) = llvm::hexdigit(unsigned int,BOOL)::LUT[v9 & 0xF] | 0x20;
  v10 = *(this + 5);
  *(a2 + 34) = llvm::hexdigit(unsigned int,BOOL)::LUT[v10 >> 4] | 0x20;
  *(a2 + 35) = llvm::hexdigit(unsigned int,BOOL)::LUT[v10 & 0xF] | 0x20;
  v11 = *(this + 6);
  *(*a2 + 12) = llvm::hexdigit(unsigned int,BOOL)::LUT[v11 >> 4] | 0x20;
  *(*a2 + 13) = llvm::hexdigit(unsigned int,BOOL)::LUT[v11 & 0xF] | 0x20;
  v12 = *(this + 7);
  *(*a2 + 14) = llvm::hexdigit(unsigned int,BOOL)::LUT[v12 >> 4] | 0x20;
  *(*a2 + 15) = llvm::hexdigit(unsigned int,BOOL)::LUT[v12 & 0xF] | 0x20;
  v13 = *(this + 8);
  *(*a2 + 16) = llvm::hexdigit(unsigned int,BOOL)::LUT[v13 >> 4] | 0x20;
  *(*a2 + 17) = llvm::hexdigit(unsigned int,BOOL)::LUT[v13 & 0xF] | 0x20;
  v14 = *(this + 9);
  *(*a2 + 18) = llvm::hexdigit(unsigned int,BOOL)::LUT[v14 >> 4] | 0x20;
  *(*a2 + 19) = llvm::hexdigit(unsigned int,BOOL)::LUT[v14 & 0xF] | 0x20;
  v15 = *(this + 10);
  *(*a2 + 20) = llvm::hexdigit(unsigned int,BOOL)::LUT[v15 >> 4] | 0x20;
  *(*a2 + 21) = llvm::hexdigit(unsigned int,BOOL)::LUT[v15 & 0xF] | 0x20;
  v16 = *(this + 11);
  *(*a2 + 22) = llvm::hexdigit(unsigned int,BOOL)::LUT[v16 >> 4] | 0x20;
  *(*a2 + 23) = llvm::hexdigit(unsigned int,BOOL)::LUT[v16 & 0xF] | 0x20;
  v17 = *(this + 12);
  *(*a2 + 24) = llvm::hexdigit(unsigned int,BOOL)::LUT[v17 >> 4] | 0x20;
  *(*a2 + 25) = llvm::hexdigit(unsigned int,BOOL)::LUT[v17 & 0xF] | 0x20;
  v18 = *(this + 13);
  *(*a2 + 26) = llvm::hexdigit(unsigned int,BOOL)::LUT[v18 >> 4] | 0x20;
  *(*a2 + 27) = llvm::hexdigit(unsigned int,BOOL)::LUT[v18 & 0xF] | 0x20;
  v19 = *(this + 14);
  *(*a2 + 28) = llvm::hexdigit(unsigned int,BOOL)::LUT[v19 >> 4] | 0x20;
  *(*a2 + 29) = llvm::hexdigit(unsigned int,BOOL)::LUT[v19 & 0xF] | 0x20;
  v20 = *(this + 15);
  *(*a2 + 30) = llvm::hexdigit(unsigned int,BOOL)::LUT[v20 >> 4] | 0x20;
  *(*a2 + 31) = llvm::hexdigit(unsigned int,BOOL)::LUT[v20 & 0xF] | 0x20;
  return result;
}

unsigned __int8 *llvm::MD5::stringifyResult(unsigned __int8 *result, void *a2)
{
  v2 = a2[1];
  if (v2 != 32)
  {
    if (v2 <= 0x20 && a2[2] <= 0x1FuLL)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    a2[1] = 32;
  }

  v4 = *result;
  **a2 = llvm::hexdigit(unsigned int,BOOL)::LUT[v4 >> 4] | 0x20;
  *(*a2 + 1) = llvm::hexdigit(unsigned int,BOOL)::LUT[v4 & 0xF] | 0x20;
  v5 = result[1];
  *(*a2 + 2) = llvm::hexdigit(unsigned int,BOOL)::LUT[v5 >> 4] | 0x20;
  *(*a2 + 3) = llvm::hexdigit(unsigned int,BOOL)::LUT[v5 & 0xF] | 0x20;
  v6 = result[2];
  *(*a2 + 4) = llvm::hexdigit(unsigned int,BOOL)::LUT[v6 >> 4] | 0x20;
  *(*a2 + 5) = llvm::hexdigit(unsigned int,BOOL)::LUT[v6 & 0xF] | 0x20;
  v7 = result[3];
  *(*a2 + 6) = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 >> 4] | 0x20;
  *(*a2 + 7) = llvm::hexdigit(unsigned int,BOOL)::LUT[v7 & 0xF] | 0x20;
  v8 = result[4];
  *(*a2 + 8) = llvm::hexdigit(unsigned int,BOOL)::LUT[v8 >> 4] | 0x20;
  *(*a2 + 9) = llvm::hexdigit(unsigned int,BOOL)::LUT[v8 & 0xF] | 0x20;
  v9 = result[5];
  *(*a2 + 10) = llvm::hexdigit(unsigned int,BOOL)::LUT[v9 >> 4] | 0x20;
  *(*a2 + 11) = llvm::hexdigit(unsigned int,BOOL)::LUT[v9 & 0xF] | 0x20;
  v10 = result[6];
  *(*a2 + 12) = llvm::hexdigit(unsigned int,BOOL)::LUT[v10 >> 4] | 0x20;
  *(*a2 + 13) = llvm::hexdigit(unsigned int,BOOL)::LUT[v10 & 0xF] | 0x20;
  v11 = result[7];
  *(*a2 + 14) = llvm::hexdigit(unsigned int,BOOL)::LUT[v11 >> 4] | 0x20;
  *(*a2 + 15) = llvm::hexdigit(unsigned int,BOOL)::LUT[v11 & 0xF] | 0x20;
  v12 = result[8];
  *(*a2 + 16) = llvm::hexdigit(unsigned int,BOOL)::LUT[v12 >> 4] | 0x20;
  *(*a2 + 17) = llvm::hexdigit(unsigned int,BOOL)::LUT[v12 & 0xF] | 0x20;
  v13 = result[9];
  *(*a2 + 18) = llvm::hexdigit(unsigned int,BOOL)::LUT[v13 >> 4] | 0x20;
  *(*a2 + 19) = llvm::hexdigit(unsigned int,BOOL)::LUT[v13 & 0xF] | 0x20;
  v14 = result[10];
  *(*a2 + 20) = llvm::hexdigit(unsigned int,BOOL)::LUT[v14 >> 4] | 0x20;
  *(*a2 + 21) = llvm::hexdigit(unsigned int,BOOL)::LUT[v14 & 0xF] | 0x20;
  v15 = result[11];
  *(*a2 + 22) = llvm::hexdigit(unsigned int,BOOL)::LUT[v15 >> 4] | 0x20;
  *(*a2 + 23) = llvm::hexdigit(unsigned int,BOOL)::LUT[v15 & 0xF] | 0x20;
  v16 = result[12];
  *(*a2 + 24) = llvm::hexdigit(unsigned int,BOOL)::LUT[v16 >> 4] | 0x20;
  *(*a2 + 25) = llvm::hexdigit(unsigned int,BOOL)::LUT[v16 & 0xF] | 0x20;
  v17 = result[13];
  *(*a2 + 26) = llvm::hexdigit(unsigned int,BOOL)::LUT[v17 >> 4] | 0x20;
  *(*a2 + 27) = llvm::hexdigit(unsigned int,BOOL)::LUT[v17 & 0xF] | 0x20;
  v18 = result[14];
  *(*a2 + 28) = llvm::hexdigit(unsigned int,BOOL)::LUT[v18 >> 4] | 0x20;
  *(*a2 + 29) = llvm::hexdigit(unsigned int,BOOL)::LUT[v18 & 0xF] | 0x20;
  v19 = result[15];
  *(*a2 + 30) = llvm::hexdigit(unsigned int,BOOL)::LUT[v19 >> 4] | 0x20;
  *(*a2 + 31) = llvm::hexdigit(unsigned int,BOOL)::LUT[v19 & 0xF] | 0x20;
  return result;
}

uint64_t llvm::MD5::hash(int *a1, size_t __n)
{
  v3 = a1;
  v13 = *MEMORY[0x277D85DE8];
  v9 = xmmword_25739FDA0;
  v4 = __n;
  v10 = __n >> 29;
  v11 = __n & 0x1FFFFFFF;
  if (__n >= 0x40)
  {
    v3 = llvm::MD5::body(&v9, a1, __n & 0xFFFFFFFFFFFFFFC0);
    __n &= 0x3Fu;
    v4 = v11;
  }

  memcpy(v12, v3, __n);
  v5 = (v4 & 0x3F) + 1;
  *(v12 + (v4 & 0x3F)) = 0x80;
  v6 = v4 & 0x3F ^ 0x3FLL;
  if (v6 >= 8)
  {
    v7 = 55 - (v4 & 0x3F);
  }

  else
  {
    bzero(v12 + v5, v6);
    llvm::MD5::body(&v9, v12, 64);
    v5 = 0;
    v7 = 56;
  }

  bzero(v12 + v5, v7);
  v11 *= 8;
  v12[14] = v11;
  v12[15] = v10;
  llvm::MD5::body(&v9, v12, 64);
  return v9;
}

uint64_t llvm::MSP430AttributeParser::handler@<X0>(uint64_t this@<X0>, BOOL *a2@<X2>, uint64_t a3@<X1>, void *a4@<X8>)
{
  *a2 = 0;
  v4 = a3 - 4;
  if ((a3 - 4) > 6 || ((0x55u >> v4) & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = *(&off_27983C868 + v4);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = (this + (v7 >> 1));
  if ((v7 & 1) == 0)
  {
    v10 = a4;
    this = v6(v8);
    if (*v10)
    {
      return this;
    }

    goto LABEL_7;
  }

  v10 = a4;
  this = (*(*v8 + v6))();
  if (!*v10)
  {
LABEL_7:
    a4 = v10;
    *a2 = 1;
LABEL_8:
    *a4 = 0;
  }

  return this;
}

void llvm::MSP430AttributeParser::~MSP430AttributeParser(llvm::MSP430AttributeParser *this)
{
  llvm::ELFAttributeParser::~ELFAttributeParser(this);

  JUMPOUT(0x259C63180);
}

void *llvm::write_integer(llvm::raw_ostream *a1, unsigned int a2, size_t a3, int a4)
{
  return write_unsigned_impl<unsigned int>(a1, a2, a3, a4, 0);
}

{
  if ((a2 & 0x80000000) != 0)
  {
    a2 = -a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return write_unsigned_impl<unsigned int>(a1, a2, a3, a4, v4);
}

void *llvm::write_integer(llvm::raw_ostream *a1, unint64_t a2, size_t a3, int a4)
{
  return write_unsigned<unsigned long>(a1, a2, a3, a4, 0);
}

{
  if ((a2 & 0x8000000000000000) != 0)
  {
    a2 = -a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return write_unsigned<unsigned long>(a1, a2, a3, a4, v4);
}

{
  return write_unsigned<unsigned long>(a1, a2, a3, a4, 0);
}

{
  if ((a2 & 0x8000000000000000) != 0)
  {
    a2 = -a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return write_unsigned<unsigned long>(a1, a2, a3, a4, v4);
}

void *write_unsigned<unsigned long>(llvm::raw_ostream *this, unint64_t a2, size_t a3, int a4, int a5)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!HIDWORD(a2))
  {

    return write_unsigned_impl<unsigned int>(this, a2, a3, a4, a5);
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v24[v10-- + 127] = (a2 % 0xA) | 0x30;
    v9 += 0x100000000;
    v11 = a2 > 9;
    a2 /= 0xAuLL;
  }

  while (v11);
  v12 = v9 >> 32;
  if (!a5)
  {
LABEL_10:
    if (a4 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v13 = *(this + 4);
  if (v13 < *(this + 3))
  {
    *(this + 4) = v13 + 1;
    *v13 = 45;
    goto LABEL_10;
  }

  llvm::raw_ostream::write(this, 45);
  if (a4 != 1)
  {
LABEL_11:
    if (v12 < a3)
    {
      v14 = v12;
      do
      {
        while (1)
        {
          v15 = *(this + 4);
          if (v15 >= *(this + 3))
          {
            break;
          }

          *(this + 4) = v15 + 1;
          *v15 = 48;
          if (++v14 >= a3)
          {
            goto LABEL_16;
          }
        }

        llvm::raw_ostream::write(this, 48);
        ++v14;
      }

      while (v14 < a3);
    }
  }

LABEL_16:
  v16 = &v25 - v12;
  if (a4 != 1)
  {
    return llvm::raw_ostream::write(this, &v25 - v12, v12);
  }

  v17 = (v12 - 1) % 3;
  v18 = v17 + 1;
  v19 = v12 - (v17 + 1);
  if (v12 >= v17 + 1)
  {
    v20 = v17 + 1;
  }

  else
  {
    v20 = v12;
  }

  result = llvm::raw_ostream::write(this, v16, v20);
  if (v19)
  {
    v21 = &v16[v18];
    v22 = -3 * ((-v10 - 1) / 3uLL);
    do
    {
      v23 = *(this + 4);
      if (v23 < *(this + 3))
      {
        *(this + 4) = v23 + 1;
        *v23 = 44;
      }

      else
      {
        llvm::raw_ostream::write(this, 44);
      }

      result = llvm::raw_ostream::write(this, v21, 3uLL);
      v21 += 3;
      v22 += 3;
    }

    while (v22);
  }

  return result;
}

void *llvm::write_hex(void *a1, unint64_t a2, int a3, unint64_t a4, char a5)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    if (a4 > 0x7F)
    {
      LODWORD(a4) = 128;
    }
  }

  else
  {
    LODWORD(a4) = 0;
  }

  v5 = (67 - __clz(a2)) >> 2;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  *&v6 = 0x3030303030303030;
  *(&v6 + 1) = 0x3030303030303030;
  v11[6] = v6;
  v11[7] = v6;
  v11[4] = v6;
  v11[5] = v6;
  LODWORD(v7) = v5 + 2 * ((a3 & 0xFFFFFFFE) == 2);
  v11[2] = v6;
  v11[3] = v6;
  if (a4 <= v7)
  {
    v7 = v7;
  }

  else
  {
    v7 = a4;
  }

  v11[0] = v6;
  v11[1] = v6;
  if ((a3 & 0xFFFFFFFE) == 2)
  {
    BYTE1(v11[0]) = 120;
  }

  if (a2)
  {
    v8 = &v11[-1] + v7 + 15;
    do
    {
      *v8-- = llvm::hexdigit(unsigned int,BOOL)::LUT[a2 & 0xF] | (32 * ((a3 & 0xFFFFFFFD) != 0));
      v9 = a2 > 0xF;
      a2 >>= 4;
    }

    while (v9);
  }

  return llvm::raw_ostream::write(a1, v11, v7);
}

void llvm::write_double(llvm::raw_ostream *this, unsigned int a2, unint64_t a3, char a4, double a5)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v6 = 2;
  if (a2 < 2)
  {
    v6 = 6;
  }

  if ((a4 & 1) == 0)
  {
    a3 = v6;
  }

  if (fabs(a5) != INFINITY)
  {
    v33 = v35;
    v34 = xmmword_25738FDE0;
    if (a2 == 1)
    {
      v13 = 69;
    }

    else
    {
      v13 = 102;
    }

    if (a2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 101;
    }

    v25 = 2;
    v29 = 0;
    v30 = 1;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    v24 = &unk_2868A3F88;
    v31 = &v33;
    llvm::raw_ostream::SetBufferAndMode(&v24, 0, 0, 0);
    if ((v27 - v28) > 1)
    {
      *v28++ = 11813;
      v16 = llvm::raw_ostream::operator<<(&v24, a3);
      v17 = *(v16 + 4);
      if (v17 >= *(v16 + 3))
      {
LABEL_25:
        llvm::raw_ostream::write(v16, v14);
        if (a2 != 3)
        {
LABEL_26:
          if ((v34 + 1) > *(&v34 + 1))
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          v33[v34] = 0;
          snprintf(__str, 0x20uLL, v33, *&a5, &unk_28689DAF0, v33, *&a5);
          v18 = strlen(__str);
          v19 = *(this + 4);
          if (v18 > *(this + 3) - v19)
          {
            llvm::raw_ostream::write(this, __str, v18);
            llvm::raw_ostream::~raw_ostream(&v24);
            v20 = v33;
            if (v33 == v35)
            {
              return;
            }

            goto LABEL_44;
          }

          if (v18)
          {
            memcpy(v19, __str, v18);
            *(this + 4) += v18;
            llvm::raw_ostream::~raw_ostream(&v24);
            v20 = v33;
            if (v33 == v35)
            {
              return;
            }

            goto LABEL_44;
          }

          goto LABEL_43;
        }

LABEL_33:
        v21 = a5 * 100.0;
        if ((v34 + 1) > *(&v34 + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v33[v34] = 0;
        snprintf(__str, 0x20uLL, v33, *&v21, &unk_28689DAF0, v33, *&v21);
        v22 = strlen(__str);
        v23 = *(this + 4);
        if (v22 <= *(this + 3) - v23)
        {
          if (v22)
          {
            memcpy(v23, __str, v22);
            v23 = (*(this + 4) + v22);
            *(this + 4) = v23;
          }
        }

        else
        {
          llvm::raw_ostream::write(this, __str, v22);
          v23 = *(this + 4);
        }

        if (v23 >= *(this + 3))
        {
          llvm::raw_ostream::write(this, 37);
          llvm::raw_ostream::~raw_ostream(&v24);
          v20 = v33;
          if (v33 == v35)
          {
            return;
          }

LABEL_44:
          free(v20);
          return;
        }

        *(this + 4) = v23 + 1;
        *v23 = 37;
LABEL_43:
        llvm::raw_ostream::~raw_ostream(&v24);
        v20 = v33;
        if (v33 == v35)
        {
          return;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v15 = llvm::raw_ostream::write(&v24, "%.", 2uLL);
      v16 = llvm::raw_ostream::operator<<(v15, a3);
      v17 = *(v16 + 4);
      if (v17 >= *(v16 + 3))
      {
        goto LABEL_25;
      }
    }

    *(v16 + 4) = v17 + 1;
    *v17 = v14;
    if (a2 != 3)
    {
      goto LABEL_26;
    }

    goto LABEL_33;
  }

  if (a5 >= 0.0)
  {
    v9 = "INF";
  }

  else
  {
    v9 = "-INF";
  }

  if (a5 >= 0.0)
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  v11 = *(this + 4);
  if (v10 <= *(this + 3) - v11)
  {
    memcpy(v11, v9, v10);
    *(this + 4) += v10;
  }

  else
  {

    llvm::raw_ostream::write(this, v9, v10);
  }
}

uint64_t llvm::getDefaultPrecision(unsigned int a1)
{
  if (a1 >= 2)
  {
    return 2;
  }

  else
  {
    return 6;
  }
}

void *write_unsigned_impl<unsigned int>(llvm::raw_ostream *this, unsigned int a2, size_t a3, int a4, int a5)
{
  v8 = 0;
  v9 = 0;
  v25 = *MEMORY[0x277D85DE8];
  do
  {
    v24[v9-- + 127] = (a2 % 0xA) | 0x30;
    v8 += 0x100000000;
    v10 = a2 > 9;
    a2 /= 0xAu;
  }

  while (v10);
  v11 = v8 >> 32;
  if (a5)
  {
    v12 = *(this + 4);
    if (v12 >= *(this + 3))
    {
      llvm::raw_ostream::write(this, 45);
      if (a4 == 1)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

    *(this + 4) = v12 + 1;
    *v12 = 45;
  }

  if (a4 == 1)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (v11 < a3)
  {
    v13 = v11;
    do
    {
      while (1)
      {
        v14 = *(this + 4);
        if (v14 >= *(this + 3))
        {
          break;
        }

        *(this + 4) = v14 + 1;
        *v14 = 48;
        if (++v13 >= a3)
        {
          goto LABEL_12;
        }
      }

      llvm::raw_ostream::write(this, 48);
      ++v13;
    }

    while (v13 < a3);
  }

LABEL_12:
  v15 = &v25 - v11;
  if (a4 != 1)
  {
    return llvm::raw_ostream::write(this, &v25 - v11, v11);
  }

  v16 = (v11 - 1) % 3;
  v17 = v16 + 1;
  v18 = v11 - (v16 + 1);
  if (v11 >= v16 + 1)
  {
    v19 = v16 + 1;
  }

  else
  {
    v19 = v11;
  }

  result = llvm::raw_ostream::write(this, v15, v19);
  if (v18)
  {
    v21 = &v15[v17];
    v22 = -3 * ((-v9 - 1) / 3uLL);
    do
    {
      v23 = *(this + 4);
      if (v23 < *(this + 3))
      {
        *(this + 4) = v23 + 1;
        *v23 = 44;
      }

      else
      {
        llvm::raw_ostream::write(this, 44);
      }

      result = llvm::raw_ostream::write(this, v21, 3uLL);
      v21 += 3;
      v22 += 3;
    }

    while (v22);
  }

  return result;
}

uint64_t llvm::performOptimizedStructLayout(char *__dst, unint64_t a2)
{
  v45[24] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = &__dst[40 * a2];
  v6 = 40 * a2;
  v7 = 40 * a2;
  while (*&__dst[v3] != -1)
  {
    if (v4 <= __dst[v3 + 32])
    {
      v4 = __dst[v3 + 32];
    }

    v7 -= 40;
    v3 += 40;
    if (v6 == v3)
    {
      return *(v5 - 4) + *(v5 - 5);
    }
  }

  v9 = &__dst[v3];
  if (v6 != v3)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = &__dst[v10 + v3];
      *(v12 + 3) = v11++;
      v13 = v12[32];
      if (v4 <= v13)
      {
        v4 = v13;
      }

      v10 += 40;
    }

    while (v7 != v10);
  }

  if (v7 >= 80)
  {
    v14 = a2;
    qsort(&__dst[v3], 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3), 0x28uLL, llvm::performOptimizedStructLayout(llvm::MutableArrayRef<llvm::OptimizedStructLayoutField>)::$_0::__invoke);
    a2 = v14;
  }

  result = 0;
  if (v3)
  {
    v15 = __dst;
    while (result == *v15)
    {
      result += *(v15 + 1);
      v15 += 40;
      if (v9 == v15)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    if (v6 == v3)
    {
      return result;
    }

    for (i = &__dst[v3]; result == ((result + (1 << i[32]) - 1) & -(1 << i[32])); i += 40)
    {
      *i = result;
      result += *(i + 1);
      v7 -= 40;
      if (!v7)
      {
        return result;
      }
    }
  }

  v43 = v45;
  v44 = 0x800000000;
  if (v6 != v3)
  {
    v17 = 0;
    v18 = &__dst[v3];
    do
    {
      v19 = v18;
      v20 = v18[32];
      v21 = *(v18 + 1);
      v22 = v18 + 40;
      if (v18 + 40 == v5)
      {
        v23 = v18;
        v18 = v5;
      }

      else
      {
        while (1)
        {
          v18 = v22;
          if (v20 != v22[32])
          {
            break;
          }

          *(v22 - 2) = v22;
          if (*(v22 + 1) < v21)
          {
            v21 = *(v22 + 1);
          }

          v22 += 40;
          if (v18 + 40 == v5)
          {
            v23 = v18;
            v18 = v5;
            goto LABEL_35;
          }
        }

        v23 = v22 - 40;
      }

LABEL_35:
      *(v23 + 3) = 0;
      *&__src = v21;
      *(&__src + 1) = v19;
      LOBYTE(v42[0]) = v20;
      if (v17 >= HIDWORD(v44))
      {
        if (v43 > &__src || v43 + 24 * v17 <= &__src)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v24 = v43 + 24 * v44;
      v25 = __src;
      *(v24 + 2) = v42[0];
      *v24 = v25;
      v17 = v44 + 1;
      LODWORD(v44) = v44 + 1;
    }

    while (v18 != v5);
  }

  v40 = &v43;
  *&__src = v42;
  *(&__src + 1) = 0x1000000000;
  if (a2 >= 0x11)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v38[0] = &v40;
  v38[1] = &__src;
  v38[2] = &v39;
  v39 = 0;
  v37 = v38;
  v36[0] = &v43;
  v36[1] = &v39;
  v36[2] = &v37;
  if (v3)
  {
    v26 = __dst;
    do
    {
      do
      {
        if (v39 == *v26)
        {
          break;
        }

        v3 = v3 & 0xFFFFFFFFFFFFFF00 | 1;
      }

      while ((llvm::performOptimizedStructLayout(llvm::MutableArrayRef<llvm::OptimizedStructLayoutField>)::$_4::operator()(v36, *v26, v3) & 1) != 0);
      if (DWORD2(__src) >= HIDWORD(__src))
      {
        if (__src > v26 || __src + 40 * DWORD2(__src) <= v26)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v27 = __src + 40 * DWORD2(__src);
      v28 = *v26;
      v29 = *(v26 + 1);
      *(v27 + 32) = *(v26 + 4);
      *v27 = v28;
      *(v27 + 16) = v29;
      ++DWORD2(__src);
      v30 = *v26;
      v31 = *(v26 + 1);
      v26 += 40;
      v32 = v31 + v30;
      v39 = v32;
    }

    while (v9 != v26);
  }

  else
  {
    v32 = 0;
  }

  if (v44)
  {
    do
    {
      llvm::performOptimizedStructLayout(llvm::MutableArrayRef<llvm::OptimizedStructLayoutField>)::$_4::operator()(v36, 0, 0);
    }

    while (v44);
    v32 = v39;
  }

  v34 = v32;
  v35 = __src;
  memcpy(__dst, __src, v6);
  if (v35 != v42)
  {
    free(v35);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  return v34;
}

uint64_t llvm::performOptimizedStructLayout(llvm::MutableArrayRef<llvm::OptimizedStructLayoutField>)::$_4::operator()(unint64_t ***a1, unint64_t a2, char a3)
{
  v3 = **a1;
  v4 = *(*a1 + 2);
  v5 = &v3[3 * v4];
  v6 = *a1[1];
  v7 = v3;
  if (v4)
  {
    v8 = 24 * v4;
    v7 = **a1;
    while ((v6 & ~(-1 << *(v7 + 16))) != 0)
    {
      v7 += 3;
      v8 -= 24;
      if (!v8)
      {
        v7 = &v3[3 * v4];
        break;
      }
    }
  }

  if (a3)
  {
    v9 = v6 - 1;
LABEL_8:
    while (1)
    {
      v10 = v7;
      if (v7 != v5)
      {
        break;
      }

LABEL_14:
      if (v10 == v3)
      {
        return 0;
      }

      v6 = ((1 << *(v10 - 8)) + v9) & -(1 << *(v10 - 8));
      if (v6 >= a2)
      {
        return 0;
      }

      v14 = v10;
      while (1)
      {
        v7 = v14 - 3;
        if (v14 - 3 == v3)
        {
          break;
        }

        v15 = ((1 << *(v14 - 32)) + v9) & -(1 << *(v14 - 32));
        v14 -= 3;
        if (v6 != v15)
        {
          v5 = v10;
          goto LABEL_8;
        }
      }

      v7 = **a1;
      v5 = v10;
    }

    v11 = a2 - v6;
    if (*v7 > a2 - v6)
    {
      v12 = v7 + 3;
      do
      {
        if (v12 == v5)
        {
          goto LABEL_14;
        }

        v13 = *v12;
        v12 += 3;
      }

      while (v13 > v11);
      v7 = v12 - 3;
    }

    goto LABEL_23;
  }

  if (v7 != v5)
  {
LABEL_22:
    v11 = -1;
    goto LABEL_23;
  }

  if (v4)
  {
    v31 = v6 - 1;
    v6 = ((1 << *(v5 - 8)) + v6 - 1) & -(1 << *(v5 - 8));
    v32 = 3 * v4;
    while (1)
    {
      v33 = v32 * 8 - 24;
      if (v32 == 3)
      {
        break;
      }

      v34 = ((1 << LOBYTE(v3[v32 - 4])) + v31) & -(1 << LOBYTE(v3[v32 - 4]));
      v32 -= 3;
      if (v6 != v34)
      {
        v7 = (v3 + v33);
        goto LABEL_22;
      }
    }

    v11 = -1;
    v7 = **a1;
LABEL_23:
    v16 = 0;
    v17 = (v7 + 1);
    do
    {
      v18 = v16;
      v16 = *v17;
      v19 = *(*v17 + 8);
      v17 = *v17 + 24;
    }

    while (v19 > v11);
    v20 = *a1[2];
    v21 = *v17;
    if (v18)
    {
      *(v18 + 3) = v21;
      if (!v21)
      {
        *v7 = *(v18 + 1);
        v22 = v20[1];
        v23 = *(v22 + 2);
        v24 = *v22;
        if (v23 >= *(v22 + 3))
        {
          goto LABEL_42;
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (!v21)
      {
        v35 = **v20;
        v36 = *(v35 + 8);
        v37 = *v35 + 24 * v36 - (v7 + 3);
        if (v37)
        {
          memmove(v7, v7 + 3, v37 - 7);
          v36 = *(v35 + 8);
        }

        *(v35 + 8) = v36 - 1;
        v22 = v20[1];
        v23 = *(v22 + 2);
        v24 = *v22;
        if (v23 >= *(v22 + 3))
        {
LABEL_42:
          if (v24 > v16 || v24 + 40 * v23 <= v16)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        goto LABEL_32;
      }

      v7[1] = v21;
    }

    v22 = v20[1];
    v23 = *(v22 + 2);
    v24 = *v22;
    if (v23 >= *(v22 + 3))
    {
      goto LABEL_42;
    }

LABEL_32:
    v25 = v24 + 40 * *(v22 + 2);
    v26 = *v16;
    v27 = v16[1];
    *(v25 + 32) = *(v16 + 4);
    *v25 = v26;
    *(v25 + 16) = v27;
    ++*(v22 + 2);
    v28 = v20[2];
    v29 = *v20[1] + 40 * *(v20[1] + 2);
    *(v29 - 40) = v6;
    *v28 = *(v29 - 32) + v6;
    return 1;
  }

  return 0;
}

uint64_t llvm::performOptimizedStructLayout(llvm::MutableArrayRef<llvm::OptimizedStructLayoutField>)::$_0::__invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (v3 != v2)
  {
    v6 = v2 >= v3;
LABEL_10:
    if (v6)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v6 = v4 >= v5;
  if (v4 != v5)
  {
    goto LABEL_10;
  }

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  v9 = v7 == v8;
  if (v7 < v8)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  if (v9)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

void *llvm::operator<<(void *result)
{
  v1 = result[4];
  if (result[3] - v1 <= 3uLL)
  {
    return llvm::raw_ostream::write(result, "None", 4uLL);
  }

  *v1 = 1701736270;
  result[4] += 4;
  return result;
}

uint64_t llvm::StrCmpOptionName(unsigned __int8 *a1, size_t a2, unsigned __int8 *a3, unsigned __int8 *a4, int a5)
{
  if (a4 >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = a4;
  }

  v13[0] = a1;
  v13[1] = v10;
  result = llvm::StringRef::compare_insensitive(v13, a3, v10);
  if (!result)
  {
    if (a2 == a4)
    {
      if (a5 && a2 && (v12 = memcmp(a1, a3, a2)) != 0)
      {
        return (v12 >> 31) | 1u;
      }

      else
      {
        return 0;
      }
    }

    else if (a2 == v10)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t llvm::StrCmpOptionPrefixes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a2 && a4)
  {
    v6 = a3;
    v7 = a1 + 16 * a2;
    v8 = a3 + 16 * a4;
    while (1)
    {
      v10 = *a1;
      v9 = *(a1 + 8);
      v11 = *v6;
      v12 = *(v6 + 8);
      v13 = v12 >= v9 ? *(a1 + 8) : *(v6 + 8);
      v15[0] = *a1;
      v15[1] = v13;
      result = llvm::StringRef::compare_insensitive(v15, v11, v13);
      if (result)
      {
        break;
      }

      if (v9 != v12)
      {
        if (v9 == v13)
        {
          return 1;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }

      if (v9)
      {
        v14 = memcmp(v10, v11, v9);
        if (v14)
        {
          return (v14 >> 31) | 1u;
        }
      }

      result = 0;
      a1 += 16;
      if (a1 != v7)
      {
        v6 += 16;
        if (v6 != v8)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

std::string *llvm::PGOOptions::PGOOptions(std::string *this, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, std::string::size_type *a6, int a7, int a8, int a9, char a10, std::string::value_type a11, std::string::value_type a12)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v20 = *a3;
      this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
      *&this[1].__r_.__value_.__l.__data_ = v20;
      if ((*(a4 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v19 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v19;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    v21 = *a4;
    this[2].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&this[2].__r_.__value_.__l.__data_ = v21;
    v22 = a11;
    v23 = a10;
    v24 = a9;
    if ((*(a5 + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    std::string::__init_copy_ctor_external(this + 3, *a5, *(a5 + 1));
    v26 = a12;
    LODWORD(this[4].__r_.__value_.__l.__data_) = a7;
    HIDWORD(this[4].__r_.__value_.__r.__words[0]) = a8;
    LODWORD(this[4].__r_.__value_.__r.__words[1]) = v24;
    if (v23)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  std::string::__init_copy_ctor_external(this + 2, *a4, *(a4 + 1));
  v22 = a11;
  v23 = a10;
  v24 = a9;
  if (*(a5 + 23) < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v25 = *a5;
  this[3].__r_.__value_.__r.__words[2] = *(a5 + 2);
  *&this[3].__r_.__value_.__l.__data_ = v25;
  v26 = a12;
  LODWORD(this[4].__r_.__value_.__l.__data_) = a7;
  HIDWORD(this[4].__r_.__value_.__r.__words[0]) = a8;
  LODWORD(this[4].__r_.__value_.__r.__words[1]) = v24;
  if (v23)
  {
LABEL_6:
    v27 = 1;
    goto LABEL_13;
  }

LABEL_11:
  v27 = v22 ^ 1;
  if (a7 != 3)
  {
    v27 = 0;
  }

LABEL_13:
  this[4].__r_.__value_.__s.__data_[12] = v27;
  this[4].__r_.__value_.__s.__data_[13] = v22;
  this[4].__r_.__value_.__s.__data_[14] = v26;
  this[4].__r_.__value_.__r.__words[2] = *a6;
  *a6 = 0;
  return this;
}

{
  return llvm::PGOOptions::PGOOptions(this, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

std::string *llvm::PGOOptions::PGOOptions(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 24);
      this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
      *&this[1].__r_.__value_.__l.__data_ = v5;
      if ((*(a2 + 71) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
      if ((*(a2 + 95) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  if (*(a2 + 71) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = a2[3];
  this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
  *&this[2].__r_.__value_.__l.__data_ = v6;
  if ((*(a2 + 95) & 0x80000000) == 0)
  {
LABEL_5:
    v7 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v7;
    goto LABEL_10;
  }

LABEL_9:
  std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
LABEL_10:
  v8 = *(a2 + 12);
  *(this[4].__r_.__value_.__r.__words + 7) = *(a2 + 103);
  this[4].__r_.__value_.__r.__words[0] = v8;
  v9 = *(a2 + 14);
  this[4].__r_.__value_.__r.__words[2] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
  }

  return this;
}

uint64_t llvm::PGOOptions::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  std::string::operator=((a1 + 48), (a2 + 48));
  std::string::operator=((a1 + 72), (a2 + 72));
  v4 = *(a2 + 96);
  *(a1 + 103) = *(a2 + 103);
  *(a1 + 96) = v4;
  v5 = *(a2 + 112);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
  }

  v6 = *(a1 + 112);
  *(a1 + 112) = v5;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

void llvm::PGOOptions::~PGOOptions(llvm::PGOOptions *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 8))(v2);
    }
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_6:
      if ((*(this + 47) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(*(this + 6));
  if ((*(this + 47) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_12:
    operator delete(*this);
    return;
  }

LABEL_11:
  operator delete(*(this + 3));
  if (*(this + 23) < 0)
  {
    goto LABEL_12;
  }
}

uint64_t llvm::parallel::getThreadCount(llvm::parallel *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_11, memory_order_acquire) & 1) == 0)
  {
    llvm::parallel::getThreadCount();
  }

  v1 = *(qword_27F874980 + 24);

  return v1();
}

uint64_t llvm::parallel::TaskGroup::TaskGroup(llvm::parallel::TaskGroup *this)
{
  *this = 0;
  *(this + 1) = 850045863;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 9) = 1018212795;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  v1 = llvm::parallel::threadIndex();
  v5 = v3 != 1 && *v1 == -1;
  *(v2 + 120) = v5;
  return v2;
}

{
  *this = 0;
  *(this + 1) = 850045863;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 9) = 1018212795;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  v1 = llvm::parallel::threadIndex();
  v5 = v3 != 1 && *v1 == -1;
  *(v2 + 120) = v5;
  return v2;
}

void llvm::parallel::TaskGroup::~TaskGroup(llvm::parallel::TaskGroup *this)
{
  v2 = (this + 8);
  v4.__m_ = (this + 8);
  v4.__owns_ = 1;
  std::mutex::lock((this + 8));
  m = v2;
  if (!*this)
  {
    goto LABEL_5;
  }

  do
  {
    std::condition_variable::wait((this + 72), &v4);
  }

  while (*this);
  if (v4.__owns_)
  {
    m = v4.__m_;
LABEL_5:
    std::mutex::unlock(m);
  }

  std::condition_variable::~condition_variable((this + 72));
  std::mutex::~mutex(v2);
}

{
  v2 = (this + 8);
  v4.__m_ = (this + 8);
  v4.__owns_ = 1;
  std::mutex::lock((this + 8));
  m = v2;
  if (!*this)
  {
    goto LABEL_5;
  }

  do
  {
    std::condition_variable::wait((this + 72), &v4);
  }

  while (*this);
  if (v4.__owns_)
  {
    m = v4.__m_;
LABEL_5:
    std::mutex::unlock(m);
  }

  std::condition_variable::~condition_variable((this + 72));
  std::mutex::~mutex(v2);
}

uint64_t llvm::parallel::TaskGroup::spawn(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 120) == 1)
  {
    std::mutex::lock((a1 + 8));
    ++*a1;
    std::mutex::unlock((a1 + 8));
    if (atomic_load_explicit(&_MergedGlobals_11, memory_order_acquire))
    {
      v4 = *(a2 + 24);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      llvm::parallel::getThreadCount();
      v4 = *(a2 + 24);
      if (v4)
      {
LABEL_4:
        if (v4 == a2)
        {
          v10 = v9;
          (*(*v4 + 24))(v4, v9);
        }

        else
        {
          v10 = v4;
          *(a2 + 24) = 0;
        }

LABEL_13:
        v11 = a1;
        operator new();
      }
    }

    v10 = 0;
    goto LABEL_13;
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(*v5 + 48);

    return v6();
  }

  else
  {
    v8 = std::__throw_bad_function_call[abi:nn200100]();
    return llvm::parallelFor(v8);
  }
}

void llvm::parallelFor(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v5 = a1;
  v15 = *MEMORY[0x277D85DE8];
  if (llvm::parallel::strategy == 1)
  {
    if (a2 != a1)
    {
      do
      {
        a3(a4, v5++);
      }

      while (a2 != v5);
    }
  }

  else
  {
    if (a2 - a1 < 0x400)
    {
      v8 = 1;
    }

    else
    {
      v8 = (a2 - a1) >> 10;
    }

    v11 = 0;
    v12.__m_.__sig = 850045863;
    memset(v12.__m_.__opaque, 0, sizeof(v12.__m_.__opaque));
    v13.__cv_.__sig = 1018212795;
    memset(v13.__cv_.__opaque, 0, sizeof(v13.__cv_.__opaque));
    v14 = *llvm::parallel::threadIndex() == -1;
    if (v8 + v5 < a2)
    {
      v10 = 0;
      operator new();
    }

    if (v5 != a2)
    {
      operator new();
    }

    __lk.__m_ = &v12;
    __lk.__owns_ = 1;
    std::mutex::lock(&v12);
    std::mutex::unlock(&v12);
    std::condition_variable::~condition_variable(&v13);
    std::mutex::~mutex(&v12);
  }
}

void llvm::parallel::detail::anonymous namespace::ThreadPoolExecutor::ThreadPoolExecutor(uint64_t a1)
{
  v4 = a1;
  qword_27F874980 = &unk_2868A1118;
  byte_27F874988 = 0;
  qword_27F874990 = 0;
  unk_27F874998 = 0;
  qword_27F8749A0 = 0;
  unk_27F8749A8 = 850045863;
  xmmword_27F8749B0 = 0u;
  unk_27F8749C0 = 0u;
  xmmword_27F8749D0 = 0u;
  qword_27F8749E0 = 0;
  unk_27F8749E8 = 1018212795;
  xmmword_27F8749F0 = 0u;
  unk_27F874A00 = 0u;
  qword_27F874A10 = 0;
  std::promise<void>::promise(algn_27F874A18);
  qword_27F874A20 = 0;
  qword_27F874A28 = 0;
  qword_27F874A30 = 0;
  dword_27F874A38 = llvm::ThreadPoolStrategy::compute_thread_count(&v4);
  std::vector<std::thread>::reserve(&qword_27F874A20, dword_27F874A38);
  v1 = qword_27F874A28;
  v2 = (qword_27F874A28 - qword_27F874A20) >> 3;
  if (qword_27F874A28 == qword_27F874A20)
  {
    std::vector<std::thread>::__append(&qword_27F874A20, 1 - v2);
  }

  else if (v2 >= 2)
  {
    v3 = qword_27F874A20 + 8;
    if (qword_27F874A28 != qword_27F874A20 + 8)
    {
      do
      {
        std::thread::~thread((v1 - 8));
      }

      while (v1 != v3);
    }

    qword_27F874A28 = v3;
  }

  std::mutex::lock(&unk_27F8749A8);
  operator new();
}

void llvm::parallel::detail::anonymous namespace::ThreadPoolExecutor::~ThreadPoolExecutor(llvm::parallel::detail::_anonymous_namespace_::ThreadPoolExecutor *this)
{
  *this = &unk_2868A1118;
  v2 = this + 8;
  std::mutex::lock((this + 40));
  v3 = atomic_load(v2);
  if (v3)
  {
    std::mutex::unlock((this + 40));
    v4 = pthread_self();
    v5 = *(this + 20);
    v6 = *(this + 21);
    if (v5 == v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    atomic_store(1u, this + 8);
    std::mutex::unlock((this + 40));
    std::condition_variable::notify_all((this + 104));
    std::promise<void>::get_future(this + 19);
    std::__assoc_sub_state::wait(v15.__state_);
    std::future<void>::~future(&v15);
    v4 = pthread_self();
    v5 = *(this + 20);
    v6 = *(this + 21);
    if (v5 == v6)
    {
      goto LABEL_10;
    }
  }

  v7 = v4;
  do
  {
    while (v7 != v5->__t_)
    {
      std::thread::join(v5++);
      if (v5 == v6)
      {
        goto LABEL_9;
      }
    }

    std::thread::detach(v5++);
  }

  while (v5 != v6);
LABEL_9:
  v5 = *(this + 20);
LABEL_10:
  if (v5)
  {
    v8 = *(this + 21);
    v9 = v5;
    if (v8 != v5)
    {
      do
      {
        std::thread::~thread(v8 - 1);
      }

      while (v8 != v5);
      v9 = *(this + 20);
    }

    *(this + 21) = v5;
    operator delete(v9);
  }

  MEMORY[0x259C63090](this + 152);
  std::condition_variable::~condition_variable((this + 104));
  std::mutex::~mutex((this + 40));
  v10 = *(this + 2);
  if (v10)
  {
    v11 = *(this + 3);
    v12 = *(this + 2);
    if (v11 != v10)
    {
      v13 = v11 - 32;
      do
      {
        v14 = *(v11 - 8);
        v11 -= 32;
        if (v11 == v14)
        {
          (*(*v14 + 32))(v14);
        }

        else if (v14)
        {
          (*(*v14 + 40))(v14);
        }

        v13 -= 32;
      }

      while (v11 != v10);
      v12 = *(this + 2);
    }

    *(this + 3) = v10;
    operator delete(v12);
  }
}

{

  JUMPOUT(0x259C63180);
}

void *std::vector<std::thread>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void llvm::parallel::detail::anonymous namespace::ThreadPoolExecutor::add(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 40));
  v4 = *(a1 + 24);
  if (v4 >= *(a1 + 32))
  {
    v6 = std::vector<std::function<void ()(void)>>::__emplace_back_slow_path<std::function<void ()(void)>>((a1 + 16), a2);
  }

  else
  {
    v5 = *(a2 + 24);
    if (v5)
    {
      if (v5 == a2)
      {
        *(v4 + 24) = v4;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v4);
      }

      else
      {
        *(v4 + 24) = v5;
        *(a2 + 24) = 0;
      }
    }

    else
    {
      *(v4 + 24) = 0;
    }

    v6 = v4 + 32;
  }

  *(a1 + 24) = v6;
  std::mutex::unlock((a1 + 40));

  std::condition_variable::notify_one((a1 + 104));
}

void std::vector<std::thread>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v11 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 = (v4 + v11);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = v6 >> 3;
    v8 = (v6 >> 3) + a2;
    if (v8 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v5;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = v6 >> 3;
    v13 = 8 * a2;
    bzero((8 * v7), 8 * a2);
    v14 = 8 * v7 + v13;
    if (v5 != v4)
    {
      v15 = v4 - v5 - 8;
      v16 = v5;
      v17 = 0;
      if (v15 < 0x98)
      {
        goto LABEL_33;
      }

      if ((v5 + (v15 & 0xFFFFFFFFFFFFFFF8)) != -8)
      {
        v16 = v5;
        v17 = 0;
        if (v5 < v6 + (v15 & 0xFFFFFFFFFFFFFFF8) - 8 * v12 + 8)
        {
          goto LABEL_33;
        }
      }

      v18 = (v15 >> 3) + 1;
      v17 = (8 * (v18 & 0x3FFFFFFFFFFFFFFCLL));
      v16 = (v17 + v5);
      v19 = (-8 * v12 + 8 * v7 + 16);
      v20 = v5 + 2;
      v21 = v18 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v22 = *&v20->__t_;
        *(v19 - 1) = *&v20[-2].__t_;
        *v19 = v22;
        *&v20[-2].__t_ = 0uLL;
        *&v20->__t_ = 0uLL;
        v19 += 2;
        v20 += 4;
        v21 -= 4;
      }

      while (v21);
      if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_33:
        do
        {
          *v17++ = v16->__t_;
          v16->__t_ = 0;
          ++v16;
        }

        while (v16 != v4);
      }

      do
      {
        std::thread::~thread(v5++);
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = 0;
    *(a1 + 8) = v14;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,llvm::parallel::detail::anonymous namespace::ThreadPoolExecutor::ThreadPoolExecutor(llvm::ThreadPoolStrategy)::{lambda(void)#1}>>(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *(a1 + 8);
  if (*(v4 + 184) >= 2u)
  {
    v6 = *(v4 + 168);
    v5 = *(v4 + 176);
    if (v6 < v5)
    {
      operator new();
    }

    v7 = *(v4 + 160);
    v8 = (v6 - v7) >> 3;
    if (!((v8 + 1) >> 61))
    {
      v9 = v5 - v7;
      v10 = v9 >> 2;
      if (v9 >> 2 <= (v8 + 1))
      {
        v10 = v8 + 1;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  std::promise<void>::set_value((v4 + 152));
  v12 = *a1;
  *a1 = 0;
  if (v12)
  {
    v13 = MEMORY[0x259C62E00]();
    MEMORY[0x259C63180](v13, 0x20C4093837F09);
  }

  MEMORY[0x259C63180](a1, 0x1020C40684C9801);
  return 0;
}

void llvm::parallel::detail::anonymous namespace::ThreadPoolExecutor::work(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v3 = llvm::parallel::threadIndex();
  *v3 = v4;
  llvm::ThreadPoolStrategy::apply_thread_strategy(&v14, v4);
  do
  {
    v13.__m_ = (a1 + 40);
    v13.__owns_ = 1;
    std::mutex::lock((a1 + 40));
    v5 = atomic_load((a1 + 8));
    if ((v5 & 1) == 0)
    {
      do
      {
        if (*(a1 + 16) != *(a1 + 24))
        {
          break;
        }

        std::condition_variable::wait((a1 + 104), &v13);
        v6 = atomic_load((a1 + 8));
      }

      while ((v6 & 1) == 0);
    }

    v7 = atomic_load((a1 + 8));
    if (v7)
    {
      goto LABEL_22;
    }

    v8 = *(a1 + 24);
    v9 = *(v8 - 8);
    if (v9)
    {
      if (v9 == v8 - 32)
      {
        v16 = v15;
        (*(**(v8 - 8) + 24))(*(v8 - 8), v15);
        v12 = *(a1 + 24);
        v10 = v12 - 32;
        v11 = *(v12 - 8);
        if (v11 == v12 - 32)
        {
LABEL_17:
          (*(*v11 + 32))(v11);
          *(a1 + 24) = v10;
          if (!v13.__owns_)
          {
            goto LABEL_28;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v16 = *(v8 - 8);
        *(v8 - 8) = 0;
        v10 = v8 - 32;
        v11 = 0;
        if (v8 == 32)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v16 = 0;
      v10 = v8 - 32;
      v11 = *(v8 - 8);
      if (v11 == v8 - 32)
      {
        goto LABEL_17;
      }
    }

    if (v11)
    {
      (*(*v11 + 40))(v11);
    }

    *(a1 + 24) = v10;
    if (!v13.__owns_)
    {
      goto LABEL_28;
    }

LABEL_18:
    std::mutex::unlock(v13.__m_);
    v13.__owns_ = 0;
    if (!v16)
    {
      std::__throw_bad_function_call[abi:nn200100]();
LABEL_28:
      std::__throw_system_error(1, "unique_lock::unlock: not locked");
    }

    (*(*v16 + 48))(v16);
    if (v16 != v15)
    {
      if (v16)
      {
        (*(*v16 + 40))();
      }

LABEL_22:
      if (!v13.__owns_)
      {
        continue;
      }

LABEL_23:
      std::mutex::unlock(v13.__m_);
      continue;
    }

    (*(*v16 + 32))(v16);
    if (v13.__owns_)
    {
      goto LABEL_23;
    }
  }

  while ((v7 & 1) == 0);
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,llvm::parallel::detail::anonymous namespace::ThreadPoolExecutor::ThreadPoolExecutor(llvm::ThreadPoolStrategy)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}>>(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    v5 = MEMORY[0x259C62E00]();
    MEMORY[0x259C63180](v5, 0x20C4093837F09);
  }

  MEMORY[0x259C63180](a1, 0x1020C40A82BEB12);
  return 0;
}

uint64_t std::vector<std::function<void ()(void)>>::__emplace_back_slow_path<std::function<void ()(void)>>(void *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = 32 * v2;
  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      *(v7 + 24) = v7;
      (*(*v8 + 24))(v8, v7);
    }

    else
    {
      *(v7 + 24) = v8;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(v7 + 24) = 0;
  }

  v9 = v7 + 32;
  v10 = *a1;
  v11 = a1[1];
  v12 = *a1 - v11;
  v13 = v7 + v12;
  if (v11 != *a1)
  {
    v14 = *a1;
    v15 = v7 + v12;
    do
    {
      v16 = v14[3];
      if (v16)
      {
        if (v14 == v16)
        {
          *(v15 + 24) = v15;
          (*(*v14[3] + 24))(v14[3], v15);
        }

        else
        {
          *(v15 + 24) = v16;
          v14[3] = 0;
        }
      }

      else
      {
        *(v15 + 24) = 0;
      }

      v14 += 4;
      v15 += 32;
    }

    while (v14 != v11);
    v17 = v10;
    do
    {
      v18 = v10[3];
      if (v10 == v18)
      {
        (*(*v18 + 32))(v18);
      }

      else if (v18)
      {
        (*(*v18 + 40))(v18);
      }

      v10 += 4;
      v17 += 4;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v13;
  a1[1] = v9;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void *std::__function::__func<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0,std::allocator<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2868A1170;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0,std::allocator<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2868A1170;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x259C63180);
}

uint64_t std::__function::__func<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0,std::allocator<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2868A1170;
  v4 = a2 + 1;
  result = *(a1 + 32);
  if (result)
  {
    if (result == a1 + 8)
    {
      a2[4] = v4;
      result = (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      result = (*(*result + 16))(result, v4);
      a2[4] = result;
    }

    a2[5] = *(a1 + 40);
  }

  else
  {
    a2[4] = 0;
    a2[5] = *(a1 + 40);
  }

  return result;
}

uint64_t std::__function::__func<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0,std::allocator<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0,std::allocator<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0>,void ()(void)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

void std::__function::__func<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0,std::allocator<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    (*(*v2 + 48))(v2);
    std::mutex::lock((v3 + 8));
    if ((*v3)-- == 1)
    {
      std::condition_variable::notify_all((v3 + 72));
      v5 = (v3 + 8);
    }

    else
    {
      v5 = (v3 + 8);
    }

    std::mutex::unlock(v5);
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:nn200100]();
    std::__function::__func<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0,std::allocator<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0>,void ()(void)>::target(v6);
  }
}

uint64_t std::__function::__func<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0,std::allocator<llvm::parallel::TaskGroup::spawn(std::function<void ()(void)>)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4llvm8parallel9TaskGroup5spawnENSt3__18functionIFvvEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4llvm8parallel9TaskGroup5spawnENSt3__18functionIFvvEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4llvm8parallel9TaskGroup5spawnENSt3__18functionIFvvEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4llvm8parallel9TaskGroup5spawnENSt3__18functionIFvvEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<llvm::parallelFor(unsigned long,unsigned long,llvm::function_ref<void ()(unsigned long)>)::$_0,std::allocator<llvm::parallelFor(unsigned long,unsigned long,llvm::function_ref<void ()(unsigned long)>)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2868A11F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<llvm::parallelFor(unsigned long,unsigned long,llvm::function_ref<void ()(unsigned long)>)::$_0,std::allocator<llvm::parallelFor(unsigned long,unsigned long,llvm::function_ref<void ()(unsigned long)>)::$_0>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 16);
    do
    {
      result = (**(v2 + 8))(*(*(v2 + 8) + 8), v3++);
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t std::__function::__func<llvm::parallelFor(unsigned long,unsigned long,llvm::function_ref<void ()(unsigned long)>)::$_0,std::allocator<llvm::parallelFor(unsigned long,unsigned long,llvm::function_ref<void ()(unsigned long)>)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4llvm11parallelForEmmNS_12function_refIFvmEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4llvm11parallelForEmmNS_12function_refIFvmEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4llvm11parallelForEmmNS_12function_refIFvmEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4llvm11parallelForEmmNS_12function_refIFvmEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<llvm::parallelFor(unsigned long,unsigned long,llvm::function_ref<void ()(unsigned long)>)::$_1,std::allocator<llvm::parallelFor(unsigned long,unsigned long,llvm::function_ref<void ()(unsigned long)>)::$_1>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2868A1270;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<llvm::parallelFor(unsigned long,unsigned long,llvm::function_ref<void ()(unsigned long)>)::$_1,std::allocator<llvm::parallelFor(unsigned long,unsigned long,llvm::function_ref<void ()(unsigned long)>)::$_1>,void ()(void)>::operator()(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 != *(result + 24))
  {
    v2 = result;
    do
    {
      result = (**(v2 + 8))(*(*(v2 + 8) + 8), v1++);
    }

    while (v1 != *(v2 + 24));
  }

  return result;
}

uint64_t std::__function::__func<llvm::parallelFor(unsigned long,unsigned long,llvm::function_ref<void ()(unsigned long)>)::$_1,std::allocator<llvm::parallelFor(unsigned long,unsigned long,llvm::function_ref<void ()(unsigned long)>)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4llvm11parallelForEmmNS_12function_refIFvmEEEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4llvm11parallelForEmmNS_12function_refIFvmEEEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4llvm11parallelForEmmNS_12function_refIFvmEEEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4llvm11parallelForEmmNS_12function_refIFvmEEEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_0_29(uint64_t a1, uint64_t a2, void *a3)
{
}

void llvm::PluginLoader::operator=(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&_MergedGlobals_12, memory_order_acquire) & 1) == 0)
  {
    llvm::PluginLoader::operator=();
  }

  std::recursive_mutex::lock(&stru_27F874A48);
  __p = 0;
  v19 = 0;
  v20 = 0;
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  PermanentLibrary = llvm::sys::DynamicLibrary::getPermanentLibrary(v3, &__p);
  if (PermanentLibrary == &llvm::sys::DynamicLibrary::Invalid)
  {
    v5 = llvm::errs(PermanentLibrary);
    v6 = v5[4];
    if (v5[3] - v6 > 0xEuLL)
    {
      qmemcpy(v6, "Error opening '", 15);
      v5[4] += 15;
    }

    else
    {
      v5 = llvm::raw_ostream::write(v5, "Error opening '", 0xFuLL);
    }

    v9 = *(a2 + 23);
    if (v9 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v9 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    v12 = llvm::raw_ostream::write(v5, v10, v11);
    v13 = v12[4];
    if ((v12[3] - v13) > 2)
    {
      *(v13 + 2) = 32;
      *v13 = 14887;
      v12[4] += 3;
    }

    else
    {
      v12 = llvm::raw_ostream::write(v12, "': ", 3uLL);
    }

    if (v20 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v20 >= 0)
    {
      v15 = HIBYTE(v20);
    }

    else
    {
      v15 = v19;
    }

    v16 = llvm::raw_ostream::write(v12, p_p, v15);
    v17 = v16[4];
    if (v16[3] - v17 > 0x19uLL)
    {
      qmemcpy(v17, "\n  -load request ignored.\n", 26);
      v16[4] += 26;
      if ((SHIBYTE(v20) & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    llvm::raw_ostream::write(v16, "\n  -load request ignored.\n", 0x1AuLL);
    if (SHIBYTE(v20) < 0)
    {
LABEL_32:
      operator delete(__p);
    }
  }

  else
  {
    v7 = qword_27F874A98;
    if (qword_27F874A98 >= unk_27F874AA0)
    {
      qword_27F874A98 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&qword_27F874A90, a2);
      if (SHIBYTE(v20) < 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(qword_27F874A98, *a2, *(a2 + 8));
      }

      else
      {
        v8 = *a2;
        *(qword_27F874A98 + 16) = *(a2 + 16);
        *v7 = v8;
      }

      qword_27F874A98 = v7 + 24;
      if (SHIBYTE(v20) < 0)
      {
        goto LABEL_32;
      }
    }
  }

LABEL_33:
  std::recursive_mutex::unlock(&stru_27F874A48);
}

uint64_t llvm::PluginLoader::getNumPlugins(llvm::PluginLoader *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_12, memory_order_acquire) & 1) == 0)
  {
    llvm::PluginLoader::operator=();
  }

  std::recursive_mutex::lock(&stru_27F874A48);
  v1 = -1431655765 * ((qword_27F874A98 - qword_27F874A90) >> 3);
  std::recursive_mutex::unlock(&stru_27F874A48);
  return v1;
}

uint64_t llvm::PluginLoader::getPlugin(llvm::PluginLoader *this)
{
  v1 = this;
  if ((atomic_load_explicit(&_MergedGlobals_12, memory_order_acquire) & 1) == 0)
  {
    llvm::PluginLoader::operator=();
  }

  std::recursive_mutex::lock(&stru_27F874A48);
  v2 = qword_27F874A90 + 24 * v1;
  std::recursive_mutex::unlock(&stru_27F874A48);
  return v2;
}

void anonymous namespace::Plugins::~Plugins(std::recursive_mutex *this)
{
  v2 = *this[1].__m_.__opaque;
  if (v2)
  {
    v3 = *&this[1].__m_.__opaque[8];
    v4 = *this[1].__m_.__opaque;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *this[1].__m_.__opaque;
    }

    *&this[1].__m_.__opaque[8] = v2;
    operator delete(v4);
  }

  std::recursive_mutex::~recursive_mutex(this);
}

uint64_t OUTLINED_FUNCTION_0_30(uint64_t a1, uint64_t a2, void *a3)
{
}

void OUTLINED_FUNCTION_1_20()
{
  *(v0 + 72) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 80) = 0;
}

_BYTE *llvm::MappedPrefix::getFromJoined@<X0>(_BYTE *result@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 && (v5 = result, (result = memchr(result, 61, a2)) != 0) && (v6 = result - v5, result - v5 != -1))
  {
    if (a2 >= v6)
    {
      v7 = result - v5;
    }

    else
    {
      v7 = a2;
    }

    if (a2 >= v6 + 1)
    {
      v8 = v6 + 1;
    }

    else
    {
      v8 = a2;
    }

    result = llvm::MappedPrefix::MappedPrefix(&v9, v5, v7, &v5[v8], a2 - v8);
    *a3 = v9;
    *(a3 + 16) = v10;
    *(a3 + 24) = v11;
    *(a3 + 40) = v12;
    *(a3 + 48) = 1;
  }

  else
  {
    *a3 = 0;
    *(a3 + 48) = 0;
  }

  return result;
}

void llvm::MappedPrefix::transformJoined(llvm *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2)
  {
    v6 = a1;
    v7 = *(a3 + 8);
    v8 = (a1 + 16 * a2);
    while (1)
    {
      v9 = *v6;
      v10 = *(v6 + 1);
      if (!v10)
      {
        break;
      }

      a1 = memchr(*v6, 61, *(v6 + 1));
      v11 = a1 - v9;
      if (!a1 || v11 == -1)
      {
        break;
      }

      if (v10 >= v11)
      {
        v13 = a1 - v9;
      }

      else
      {
        v13 = v10;
      }

      if (v10 >= v11 + 1)
      {
        v14 = v11 + 1;
      }

      else
      {
        v14 = v10;
      }

      llvm::MappedPrefix::MappedPrefix(&v24, v9, v13, v9 + v14, v10 - v14);
      *v19 = v24;
      v20 = v25;
      __p = v26;
      v22 = v27;
      v23 = 1;
      llvm::SmallVectorTemplateBase<llvm::MappedPrefix,false>::push_back(a3, v19);
      if ((v23 & 1) == 0)
      {
        goto LABEL_3;
      }

      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p);
        if (SHIBYTE(v20) < 0)
        {
LABEL_20:
          operator delete(v19[0]);
        }
      }

      else if (SHIBYTE(v20) < 0)
      {
        goto LABEL_20;
      }

LABEL_3:
      v6 = (v6 + 16);
      if (v6 == v8)
      {
        goto LABEL_21;
      }
    }

    v15 = *(a3 + 8);
    if (v15 != v7)
    {
      if (v15 > v7)
      {
        v16 = 48 * v15;
        v17 = 48 * v7 - v16;
        v18 = v16 + *a3 - 24;
        while (1)
        {
          if (*(v18 + 23) < 0)
          {
            operator delete(*v18);
            if (*(v18 - 1) < 0)
            {
LABEL_30:
              operator delete(*(v18 - 24));
            }
          }

          else if (*(v18 - 1) < 0)
          {
            goto LABEL_30;
          }

          v18 -= 48;
          v17 += 48;
          if (!v17)
          {
            goto LABEL_35;
          }
        }
      }

      if (*(a3 + 12) < v7)
      {
        llvm::SmallVectorTemplateBase<llvm::MappedPrefix,false>::grow();
      }

      if (v7 != v15)
      {
        bzero((*a3 + 48 * v15), 48 * ((48 * (v7 - v15) - 48) / 0x30uLL) + 48);
      }

LABEL_35:
      *(a3 + 8) = v7;
    }

    llvm::inconvertibleErrorCode(a1);
    WORD4(v26) = 1283;
    *&v24 = "invalid prefix map: '";
    v25 = v9;
    *&v26 = v10;
    v19[0] = &v24;
    v20 = "'";
    WORD4(__p) = 770;
    llvm::Twine::str(v19, &v28);
    llvm::createStringError();
  }

LABEL_21:
  *a4 = 0;
}

{
  if (a2)
  {
    v6 = a1;
    v7 = *(a3 + 8);
    v8 = 24 * a2;
    while (1)
    {
      v9 = *(v6 + 23);
      v10 = v9 >= 0 ? v6 : *v6;
      v11 = v9 >= 0 ? *(v6 + 23) : *(v6 + 1);
      if (!v11)
      {
        break;
      }

      a1 = memchr(v10, 61, v11);
      v12 = a1 - v10;
      if (!a1 || v12 == -1)
      {
        break;
      }

      if (v11 >= v12)
      {
        v14 = a1 - v10;
      }

      else
      {
        v14 = v11;
      }

      if (v11 >= v12 + 1)
      {
        v15 = v12 + 1;
      }

      else
      {
        v15 = v11;
      }

      llvm::MappedPrefix::MappedPrefix(&v25, v10, v14, v10 + v15, v11 - v15);
      *v20 = v25;
      v21 = v26;
      __p = v27;
      v23 = v28;
      v24 = 1;
      llvm::SmallVectorTemplateBase<llvm::MappedPrefix,false>::push_back(a3, v20);
      if ((v24 & 1) == 0)
      {
        goto LABEL_3;
      }

      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p);
        if (SHIBYTE(v21) < 0)
        {
LABEL_26:
          operator delete(v20[0]);
        }
      }

      else if (SHIBYTE(v21) < 0)
      {
        goto LABEL_26;
      }

LABEL_3:
      v6 = (v6 + 24);
      v8 -= 24;
      if (!v8)
      {
        goto LABEL_27;
      }
    }

    v16 = *(a3 + 8);
    if (v16 != v7)
    {
      if (v16 > v7)
      {
        v17 = 48 * v16;
        v18 = 48 * v7 - v17;
        v19 = v17 + *a3 - 24;
        while (1)
        {
          if (*(v19 + 23) < 0)
          {
            operator delete(*v19);
            if (*(v19 - 1) < 0)
            {
LABEL_36:
              operator delete(*(v19 - 24));
            }
          }

          else if (*(v19 - 1) < 0)
          {
            goto LABEL_36;
          }

          v19 -= 48;
          v18 += 48;
          if (!v18)
          {
            goto LABEL_41;
          }
        }
      }

      if (*(a3 + 12) < v7)
      {
        llvm::SmallVectorTemplateBase<llvm::MappedPrefix,false>::grow();
      }

      if (v7 != v16)
      {
        bzero((*a3 + 48 * v16), 48 * ((48 * (v7 - v16) - 48) / 0x30uLL) + 48);
      }

LABEL_41:
      *(a3 + 8) = v7;
    }

    llvm::inconvertibleErrorCode(a1);
    WORD4(v27) = 1283;
    *&v25 = "invalid prefix map: '";
    v26 = v10;
    *&v27 = v11;
    v20[0] = &v25;
    v21 = "'";
    WORD4(__p) = 770;
    llvm::Twine::str(v20, &v29);
    llvm::createStringError();
  }

LABEL_27:
  *a4 = 0;
}

void llvm::MappedPrefix::transformJoinedIfValid(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    v4 = a1;
    v5 = a1 + 16 * a2;
    do
    {
      v6 = *(v4 + 8);
      if (!v6)
      {
        goto LABEL_3;
      }

      v7 = *v4;
      v8 = memchr(*v4, 61, *(v4 + 8));
      v9 = v8 - v7;
      if (!v8 || v9 == -1)
      {
        goto LABEL_3;
      }

      v11 = v6 >= v9 ? v8 - v7 : v6;
      v12 = v6 >= v9 + 1 ? v9 + 1 : v6;
      llvm::MappedPrefix::MappedPrefix(&v18, v7, v11, &v7[v12], v6 - v12);
      *v13 = v18;
      v14 = v19;
      __p = v20;
      v16 = v21;
      v17 = 1;
      llvm::SmallVectorTemplateBase<llvm::MappedPrefix,false>::push_back(a3, v13);
      if ((v17 & 1) == 0)
      {
        goto LABEL_3;
      }

      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p);
        if (SHIBYTE(v14) < 0)
        {
LABEL_20:
          operator delete(v13[0]);
        }
      }

      else if (SHIBYTE(v14) < 0)
      {
        goto LABEL_20;
      }

LABEL_3:
      v4 += 16;
    }

    while (v4 != v5);
  }
}

void llvm::MappedPrefix::transformJoinedIfValid(char **a1, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    for (i = 24 * a2; i; i -= 24)
    {
      v6 = *(a1 + 23);
      if (v6 >= 0)
      {
        v7 = a1;
      }

      else
      {
        v7 = *a1;
      }

      if (v6 >= 0)
      {
        v8 = *(a1 + 23);
      }

      else
      {
        v8 = a1[1];
      }

      if (!v8)
      {
        goto LABEL_3;
      }

      v9 = memchr(v7, 61, v8);
      v10 = v9 - v7;
      if (!v9 || v10 == -1)
      {
        goto LABEL_3;
      }

      v12 = v8 >= v10 ? v9 - v7 : v8;
      v13 = v8 >= v10 + 1 ? v10 + 1 : v8;
      llvm::MappedPrefix::MappedPrefix(&v19, v7, v12, &v7[v13], v8 - v13);
      *v14 = v19;
      v15 = v20;
      __p = v21;
      v17 = v22;
      v18 = 1;
      llvm::SmallVectorTemplateBase<llvm::MappedPrefix,false>::push_back(a3, v14);
      if ((v18 & 1) == 0)
      {
        goto LABEL_3;
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p);
        if (SHIBYTE(v15) < 0)
        {
LABEL_26:
          operator delete(v14[0]);
        }
      }

      else if (SHIBYTE(v15) < 0)
      {
        goto LABEL_26;
      }

LABEL_3:
      a1 += 3;
    }
  }
}

void llvm::PrefixMapper::mapImpl(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 24);
  if (!v5)
  {
LABEL_37:
    v21 = 0;
    v22 = a5;
    *a5 = 0;
    goto LABEL_48;
  }

  v6 = *(a1 + 16);
  v30 = v6 + 48 * v5;
  while (1)
  {
    v7 = *(v6 + 23);
    v8 = v7 >= 0 ? v6 : *v6;
    v9 = v7 >= 0 ? *(v6 + 23) : *(v6 + 8);
    v10 = *(v6 + 47);
    v11 = *(v6 + 24);
    v12 = *(v6 + 32);
    v13 = *(a1 + 8);
    if (v13 > 1)
    {
      if (a3 < v9)
      {
        goto LABEL_3;
      }

      if (v9)
      {
        v14 = a2;
        for (i = v9; i; --i)
        {
          is_separator = llvm::sys::path::is_separator(*v14, v13);
          v17 = llvm::sys::path::is_separator(*v8, v13);
          if (is_separator & 1) != 0 || (v17)
          {
            if (is_separator != v17)
            {
              goto LABEL_3;
            }
          }

          else
          {
            v18 = *v14;
            if ((v18 - 65) < 0x1A)
            {
              v18 += 32;
            }

            v19 = *v8;
            if ((v19 - 65) < 0x1A)
            {
              v19 += 32;
            }

            if (v18 != v19)
            {
              goto LABEL_3;
            }
          }

          ++v8;
          ++v14;
        }
      }
    }

    else if (a3 < v9 || v9 && memcmp(a2, v8, v9))
    {
      goto LABEL_3;
    }

    if (a3 <= v9)
    {
      if ((v10 & 0x80u) == 0)
      {
        v23 = (v6 + 24);
      }

      else
      {
        v23 = v11;
      }

      if ((v10 & 0x80u) == 0)
      {
        v24 = v10;
      }

      else
      {
        v24 = v12;
      }

      goto LABEL_47;
    }

    if (llvm::sys::path::is_separator(a2[v9], *(a1 + 8)))
    {
      break;
    }

LABEL_3:
    v6 += 48;
    if (v6 == v30)
    {
      goto LABEL_37;
    }
  }

  if ((v10 & 0x80u) == 0)
  {
    v20 = (v6 + 24);
  }

  else
  {
    v20 = v11;
  }

  if ((v10 & 0x80u) == 0)
  {
    v12 = v10;
  }

  *(a4 + 8) = 0;
  if (*(a4 + 16) < v12)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v25 = 0;
  if (v12)
  {
    memcpy(*a4, v20, v12);
    v25 = *(a4 + 8);
  }

  *(a4 + 8) = v25 + v12;
  v26 = *(a1 + 8);
  v40 = 261;
  v39[0] = &a2[v9 + 1];
  v39[1] = (a3 + ~v9);
  v38 = 257;
  v36 = 257;
  v34 = 257;
  llvm::sys::path::append(a4, v26, v39, &v37, &v35, &v33);
  v23 = *a4;
  v24 = *(a4 + 8);
LABEL_47:
  v22 = a5;
  *a5 = v23;
  *(a5 + 8) = v24;
  v21 = 1;
LABEL_48:
  *(v22 + 16) = v21;
}

uint64_t llvm::PrefixMapper::map(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  *(a4 + 8) = 0;
  (*(*a1 + 16))(&v10);
  if (*(a4 + 8))
  {
    return 1;
  }

  v8 = v12;
  if (v12 != 1)
  {
    v10 = a2;
    v11 = a3;
    v12 = 1;
    *(a4 + 8) = 0;
    if (*(a4 + 16) >= a3)
    {
      goto LABEL_5;
    }

LABEL_8:
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  a2 = v10;
  a3 = v11;
  *(a4 + 8) = 0;
  if (*(a4 + 16) < a3)
  {
    goto LABEL_8;
  }

LABEL_5:
  v9 = 0;
  if (a3)
  {
    memcpy(*a4, a2, a3);
    v9 = *(a4 + 8);
  }

  *(a4 + 8) = v9 + a3;
  return v8;
}

uint64_t llvm::PrefixMapper::map(uint64_t a1, const void *a2, void *a3, uint64_t a4)
{
  v15[32] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = xmmword_25736B790;
  (*(*a1 + 16))(__src);
  if (v12 == 1)
  {
    a2 = __src[0];
    if (__src[0])
    {
      a3 = __src[1];
      goto LABEL_5;
    }

LABEL_9:
    v9 = 0uLL;
    v10 = 0;
    if ((*(a4 + 23) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (a3 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v10) = a3;
  if (a3)
  {
    memmove(&v9, a2, a3);
  }

  *(&v9 + a3) = 0;
  if (*(a4 + 23) < 0)
  {
LABEL_14:
    operator delete(*a4);
  }

LABEL_15:
  *a4 = v9;
  *(a4 + 16) = v10;
  v7 = v12;
  if (v13 != v15)
  {
    free(v13);
  }

  return v7;
}

void llvm::PrefixMapper::mapToString(uint64_t a1@<X0>, const void *a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  v12[32] = *MEMORY[0x277D85DE8];
  v10 = v12;
  v11 = xmmword_25736B790;
  (*(*a1 + 16))(__src);
  if (v9 == 1)
  {
    a2 = __src[0];
    if (__src[0])
    {
      a3 = __src[1];
      goto LABEL_5;
    }

LABEL_9:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v7 = v10;
    if (v10 == v12)
    {
      return;
    }

    goto LABEL_14;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (a3 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  *(a4 + 23) = a3;
  if (a3)
  {
    memmove(a4, a2, a3);
  }

  a3[a4] = 0;
  v7 = v10;
  if (v10 != v12)
  {
LABEL_14:
    free(v7);
  }
}

uint64_t llvm::PrefixMapper::mapInPlace(uint64_t a1, uint64_t a2)
{
  v13[32] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v12 = xmmword_25736B790;
  (*(*a1 + 16))(v9);
  v3 = v10;
  if (v10 == 1)
  {
    if (!v12)
    {
      v7 = v9[0];
      v6 = v9[1];
      *(a2 + 8) = 0;
      if (*(a2 + 16) < v6)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v8 = 0;
      if (v6)
      {
        memcpy(*a2, v7, v6);
        v8 = *(a2 + 8);
      }

      *(a2 + 8) = v8 + v6;
      v4 = v11;
      if (v11 != v13)
      {
        goto LABEL_5;
      }

      return v3;
    }

    llvm::SmallVectorImpl<char>::swap(&v11, a2);
  }

  v4 = v11;
  if (v11 != v13)
  {
LABEL_5:
    free(v4);
  }

  return v3;
}

{
  v9[32] = *MEMORY[0x277D85DE8];
  v7 = v9;
  v8 = xmmword_25736B790;
  (*(*a1 + 16))(v5);
  v3 = v6;
  if (v6 == 1)
  {
    MEMORY[0x259C62C90](a2, v5[0], v5[1]);
  }

  if (v7 != v9)
  {
    free(v7);
  }

  return v3;
}

void llvm::PrefixMapper::sort(llvm::PrefixMapper *this, __n128 a2)
{
  v2 = *(this + 2);
  v3 = *(this + 6);
  if (v3)
  {
    v4 = MEMORY[0x277D826F0];
    v5 = *(this + 6);
    while (1)
    {
      v6 = operator new(48 * v5, v4);
      if (v6)
      {
        break;
      }

      v7 = v5 >> 1;
      v8 = v5 > 1;
      v5 >>= 1;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    v9 = v6;
    std::__stable_sort<std::_ClassicAlgPolicy,llvm::PrefixMapper::sort(void)::$_0 &,llvm::MappedPrefix *>(v2, (v2 + 48 * v3), v3, v6, v5, a2);

    operator delete(v9);
  }

  else
  {
    v7 = 0;
LABEL_7:

    std::__stable_sort<std::_ClassicAlgPolicy,llvm::PrefixMapper::sort(void)::$_0 &,llvm::MappedPrefix *>(v2, (v2 + 48 * v3), v3, 0, v7, a2);
  }
}

double llvm::TreePathPrefixMapper::TreePathPrefixMapper(uint64_t a1, void *a2, int a3)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = a1 + 32;
  *&result = 0x100000000;
  *(a1 + 24) = 0x100000000;
  *a1 = &unk_2868A12F0;
  *(a1 + 80) = *a2;
  *a2 = 0;
  return result;
}

{
  *(a1 + 8) = a3;
  *(a1 + 16) = a1 + 32;
  *&result = 0x100000000;
  *(a1 + 24) = 0x100000000;
  *a1 = &unk_2868A12F0;
  *(a1 + 80) = *a2;
  *a2 = 0;
  return result;
}

void llvm::TreePathPrefixMapper::~TreePathPrefixMapper(llvm::TreePathPrefixMapper *this)
{
  *this = &unk_2868A12F0;
  v2 = *(this + 10);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  *this = &unk_2868A1320;
  v3 = *(this + 2);
  v4 = *(this + 6);
  if (v4)
  {
    v5 = -48 * v4;
    v6 = &v3[48 * v4 - 24];
    while (1)
    {
      if (*(v6 + 23) < 0)
      {
        operator delete(*v6);
        if (*(v6 - 1) < 0)
        {
LABEL_11:
          operator delete(*(v6 - 24));
        }
      }

      else if (*(v6 - 1) < 0)
      {
        goto LABEL_11;
      }

      v6 -= 48;
      v5 += 48;
      if (!v5)
      {
        v3 = *(this + 2);
        break;
      }
    }
  }

  if (v3 != this + 32)
  {
    free(v3);
  }
}

{
  llvm::TreePathPrefixMapper::~TreePathPrefixMapper(this);

  JUMPOUT(0x259C63180);
}

void llvm::TreePathPrefixMapper::mapImpl(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  TreePath = llvm::TreePathPrefixMapper::getTreePath(a1, a2, a3);
  v12 = v11;
  llvm::PrefixMapper::mapImpl(a1, TreePath, v11, a4, &v14);
  v13 = v15;
  if (v15 == 1)
  {
    *a5 = v14;
  }

  else if (v12 == a3 && (!v12 || !memcmp(TreePath, a2, v12)))
  {
    v13 = 0;
    *a5 = 0;
  }

  else
  {
    *a5 = TreePath;
    *(a5 + 8) = v12;
    v13 = 1;
  }

  *(a5 + 16) = v13;
}

uint64_t llvm::TreePathPrefixMapper::getTreePath(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v13 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *(a1 + 80);
    v9 = 261;
    v8[0] = a2;
    v8[1] = a3;
    (*(*v4 + 88))(&v11);
    v5 = v11;
    if (v12)
    {
      v11 = 0;
      v10 = v5;
      llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v10, v8);
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      if (v12)
      {
        v6 = v11;
        v11 = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }
      }
    }

    else
    {
      return *v11;
    }
  }

  return v3;
}

void llvm::TreePathPrefixMapper::add(uint64_t a1, uint64_t a2)
{
  llvm::SmallVectorTemplateBase<llvm::MappedPrefix,false>::push_back((a1 + 16), a2);
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
    v6 = *(a2 + 8);
  }

  TreePath = llvm::TreePathPrefixMapper::getTreePath(a1, v5, v6);
  v8 = TreePath;
  v10 = v9;
  v11 = *(a2 + 47);
  if (v11 >= 0)
  {
    v12 = (a2 + 24);
  }

  else
  {
    v12 = *(a2 + 24);
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 47);
  }

  else
  {
    v13 = *(a2 + 32);
  }

  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  if (v10 != v16 || v16 && memcmp(TreePath, v15, v16))
  {
    llvm::MappedPrefix::MappedPrefix(v17, v8, v10, v12, v13);
    llvm::SmallVectorTemplateBase<llvm::MappedPrefix,false>::push_back((a1 + 16), v17);
    if ((v20 & 0x80000000) == 0)
    {
      if ((v18 & 0x80000000) == 0)
      {
        return;
      }

LABEL_26:
      operator delete(v17[0]);
      return;
    }

    operator delete(__p);
    if (v18 < 0)
    {
      goto LABEL_26;
    }
  }
}

unsigned __int8 *llvm::TreePathPrefixMapper::mapDirEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  llvm::PrefixMapper::mapImpl(a1, *a2, *(a2 + 8), a3, &v5);
  if (v6)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

void llvm::PrefixMapper::~PrefixMapper(llvm::PrefixMapper *this)
{
  *this = &unk_2868A1320;
  v2 = *(this + 2);
  v3 = *(this + 6);
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = -48 * v3;
  v5 = &v2[48 * v3 - 24];
  do
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
      if ((*(v5 - 1) & 0x80000000) == 0)
      {
        goto LABEL_3;
      }
    }

    else if ((*(v5 - 1) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

    operator delete(*(v5 - 24));
LABEL_3:
    v5 -= 48;
    v4 += 48;
  }

  while (v4);
  v2 = *(this + 2);
LABEL_10:
  if (v2 != this + 32)
  {
    free(v2);
  }
}

{
  *this = &unk_2868A1320;
  v2 = *(this + 2);
  v3 = *(this + 6);
  if (!v3)
  {
LABEL_10:
    if (v2 != this + 32)
    {
      free(v2);
    }

    JUMPOUT(0x259C63180);
  }

  v4 = -48 * v3;
  v5 = &v2[48 * v3 - 24];
  while (1)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
      if (*(v5 - 1) < 0)
      {
LABEL_8:
        operator delete(*(v5 - 24));
      }
    }

    else if (*(v5 - 1) < 0)
    {
      goto LABEL_8;
    }

    v5 -= 48;
    v4 += 48;
    if (!v4)
    {
      v2 = *(this + 2);
      goto LABEL_10;
    }
  }
}

void *llvm::MappedPrefix::MappedPrefix(void *a1, const void *a2, size_t a3, const void *a4, size_t a5)
{
  if (a2)
  {
    if (a3 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_19;
    }

    if (a3 >= 0x17)
    {
      operator new();
    }

    *(a1 + 23) = a3;
    if (a3)
    {
      memmove(a1, a2, a3);
    }

    *(a1 + a3) = 0;
    v10 = a1 + 3;
    if (a4)
    {
      goto LABEL_11;
    }

LABEL_7:
    *v10 = 0;
    v10[1] = 0;
    v10[2] = 0;
    return a1;
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v10 = a1 + 3;
  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_11:
  if (a5 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_19:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a5 >= 0x17)
  {
    operator new();
  }

  *(a1 + 47) = a5;
  if (a5)
  {
    memmove(v10, a4, a5);
  }

  *(v10 + a5) = 0;
  return a1;
}

void llvm::SmallVectorTemplateBase<llvm::MappedPrefix,false>::push_back(uint64_t *a1, __int128 *a2)
{
  v4 = *(a1 + 2);
  v5 = *a1;
  if (v4 >= *(a1 + 3))
  {
    if (v5 > a2 || v5 + 48 * v4 <= a2)
    {
      llvm::SmallVectorTemplateBase<llvm::MappedPrefix,false>::grow();
    }

    llvm::SmallVectorTemplateBase<llvm::MappedPrefix,false>::grow();
  }

  v6 = (v5 + 48 * *(a1 + 2));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v6, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    std::string::__init_copy_ctor_external(v6 + 1, *(a2 + 3), *(a2 + 4));
    goto LABEL_7;
  }

  v7 = *a2;
  v6->__r_.__value_.__r.__words[2] = *(a2 + 2);
  *&v6->__r_.__value_.__l.__data_ = v7;
  if (*(a2 + 47) < 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v8 = *(a2 + 24);
  v6[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
  *&v6[1].__r_.__value_.__l.__data_ = v8;
LABEL_7:
  ++*(a1 + 2);
}

void std::__stable_sort<std::_ClassicAlgPolicy,llvm::PrefixMapper::sort(void)::$_0 &,llvm::MappedPrefix *>(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, int64_t a5, __n128 a6)
{
  v76 = a2;
  v77 = a1;
  if (a3 < 2)
  {
    return;
  }

  v7 = a1;
  if (a3 == 2)
  {
    v8 = *(a2 - 6);
    v76 = a2 - 6;
    v9 = *(a2 - 25);
    v10 = *(a1 + 23);
    if (v10 >= 0)
    {
      v11 = *(a1 + 23);
    }

    else
    {
      v11 = *(a1 + 8);
    }

    if (v10 < 0)
    {
      a1 = *a1;
    }

    if (v9 >= 0)
    {
      v12 = *(a2 - 25);
    }

    else
    {
      v12 = *(a2 - 5);
    }

    if (v9 >= 0)
    {
      v13 = a2 - 6;
    }

    else
    {
      v13 = v8;
    }

    if (v12 >= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v12;
    }

    v15 = memcmp(a1, v13, v14);
    v16 = v11 < v12;
    if (v15)
    {
      v16 = v15 < 0;
    }

    if (v16)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::MappedPrefix *&,llvm::MappedPrefix *&>(&v77, &v76);
    }

    return;
  }

  v17 = a3;
  if (a3 <= 0)
  {
    if (a1 != a2)
    {
      v24 = (a1 + 48);
      if ((a1 + 48) != a2)
      {
        v25 = 0;
        v26 = a1;
        do
        {
          v27 = v24;
          v28 = *(v26 + 71);
          v29 = *(v26 + 23);
          if (v29 >= 0)
          {
            v30 = *(v26 + 23);
          }

          else
          {
            v30 = v26[1];
          }

          if (v29 >= 0)
          {
            v31 = v26;
          }

          else
          {
            v31 = *v26;
          }

          if (v28 >= 0)
          {
            v32 = *(v26 + 71);
          }

          else
          {
            v32 = v26[7];
          }

          if (v28 >= 0)
          {
            v33 = v24;
          }

          else
          {
            v33 = v26[6];
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
            v79 = *(v27 + 2);
            v78 = *v27;
            *(v27 + 1) = 0;
            *(v27 + 2) = 0;
            *v27 = 0;
            v80 = *(v26 + 9);
            v81 = v26[11];
            v26[9] = 0;
            v26[10] = 0;
            v26[11] = 0;
            if (v79 >= 0)
            {
              v37 = HIBYTE(v79);
            }

            else
            {
              v37 = *(&v78 + 1);
            }

            if (v79 >= 0)
            {
              v38 = &v78;
            }

            else
            {
              v38 = v78;
            }

            v39 = v25;
            while (1)
            {
              v40 = v7 + v39;
              if (*(v7 + v39 + 71) < 0)
              {
                operator delete(*(v40 + 48));
              }

              *(v40 + 48) = *v40;
              *(v40 + 64) = *(v40 + 16);
              *(v40 + 23) = 0;
              *v40 = 0;
              if (*(v40 + 95) < 0)
              {
                operator delete(*(v40 + 72));
              }

              v41 = v7 + v39;
              *(v40 + 72) = *(v7 + v39 + 24);
              *(v40 + 88) = *(v7 + v39 + 40);
              *(v41 + 47) = 0;
              *(v41 + 24) = 0;
              if (!v39)
              {
                break;
              }

              v42 = *(v41 - 25);
              if (v42 >= 0)
              {
                v43 = *(v41 - 25);
              }

              else
              {
                v43 = *(v41 - 40);
              }

              if (v42 >= 0)
              {
                v44 = (v41 - 48);
              }

              else
              {
                v44 = *(v41 - 48);
              }

              if (v37 >= v43)
              {
                v45 = v43;
              }

              else
              {
                v45 = v37;
              }

              v46 = memcmp(v44, v38, v45);
              v47 = v43 < v37;
              if (v46)
              {
                v47 = v46 < 0;
              }

              v39 -= 48;
              if (!v47)
              {
                v48 = v7 + v39 + 48;
                if ((*(v7 + v39 + 71) & 0x80000000) == 0)
                {
                  goto LABEL_78;
                }

                goto LABEL_77;
              }
            }

            v48 = v7;
            if ((*(v7 + 23) & 0x80000000) == 0)
            {
              goto LABEL_78;
            }

LABEL_77:
            operator delete(*v48);
LABEL_78:
            *v48 = v78;
            *(v48 + 16) = v79;
            if (*(v48 + 47) < 0)
            {
              operator delete(*(v41 + 24));
            }

            *(v41 + 24) = v80;
            *(v41 + 40) = v81;
          }

          v24 = v27 + 48;
          v25 += 48;
          v26 = v27;
        }

        while (v27 + 48 != a2);
      }
    }
  }

  else
  {
    v19 = a3 >> 1;
    v20 = (a1 + 48 * (a3 >> 1));
    v21 = a3 - (a3 >> 1);
    v22 = a3 >> 1;
    if (v17 > a5)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,llvm::PrefixMapper::sort(void)::$_0 &,llvm::MappedPrefix *>(a1, v20, v22, a4, a5);
      std::__stable_sort<std::_ClassicAlgPolicy,llvm::PrefixMapper::sort(void)::$_0 &,llvm::MappedPrefix *>(v20, a2, v21, a4, a5);

      std::__inplace_merge<std::_ClassicAlgPolicy,llvm::PrefixMapper::sort(void)::$_0 &,llvm::MappedPrefix *>(v7, v20, a2, v19, v21, a4, a5);
      return;
    }

    v49 = std::__stable_sort_move<std::_ClassicAlgPolicy,llvm::PrefixMapper::sort(void)::$_0 &,llvm::MappedPrefix *>(a1, v20, v22, a4, a6);
    v50 = a4 + 48 * v19;
    std::__stable_sort_move<std::_ClassicAlgPolicy,llvm::PrefixMapper::sort(void)::$_0 &,llvm::MappedPrefix *>((v7 + 48 * (v17 >> 1)), a2, v17 - (v17 >> 1), v50, v49);
    v51 = a4 + 48 * v17;
    v52 = (v7 + 23);
    v53 = v50;
    v54 = a4;
    while (v53 != v51)
    {
      v56 = (v52 - 23);
      v57 = *(v53 + 23);
      v58 = *(v54 + 23);
      if (v58 >= 0)
      {
        v59 = *(v54 + 23);
      }

      else
      {
        v59 = v54[1];
      }

      if (v58 >= 0)
      {
        v60 = v54;
      }

      else
      {
        v60 = *v54;
      }

      if (v57 >= 0)
      {
        v61 = *(v53 + 23);
      }

      else
      {
        v61 = v53[1];
      }

      if (v57 >= 0)
      {
        v62 = v53;
      }

      else
      {
        v62 = *v53;
      }

      if (v61 >= v59)
      {
        v63 = v59;
      }

      else
      {
        v63 = v61;
      }

      v64 = memcmp(v60, v62, v63);
      v65 = v64 < 0;
      if (!v64)
      {
        v65 = v59 < v61;
      }

      v66 = *v52;
      if (v65)
      {
        if (v66 < 0)
        {
          operator delete(*v56);
        }

        v67 = *v53;
        *(v52 - 7) = v53[2];
        *v56 = v67;
        *(v53 + 23) = 0;
        *v53 = 0;
        if (v52[24] < 0)
        {
          operator delete(*(v52 + 1));
        }

        v68 = *(v53 + 3);
        *(v52 + 17) = v53[5];
        *(v52 + 1) = v68;
        *(v53 + 47) = 0;
        *(v53 + 24) = 0;
        v53 += 6;
        v52 += 48;
        if (v54 == v50)
        {
          goto LABEL_118;
        }
      }

      else
      {
        if (v66 < 0)
        {
          operator delete(*v56);
        }

        v69 = *v54;
        *(v52 - 7) = v54[2];
        *v56 = v69;
        *(v54 + 23) = 0;
        *v54 = 0;
        if (v52[24] < 0)
        {
          operator delete(*(v52 + 1));
        }

        v55 = *(v54 + 3);
        *(v52 + 17) = v54[5];
        *(v52 + 1) = v55;
        *(v54 + 47) = 0;
        *(v54 + 24) = 0;
        v54 += 6;
        v52 += 48;
        if (v54 == v50)
        {
LABEL_118:
          while (v53 != v51)
          {
            if (*v52 < 0)
            {
              operator delete(*(v52 - 23));
            }

            v74 = *v53;
            *(v52 - 7) = v53[2];
            *(v52 - 23) = v74;
            *(v53 + 23) = 0;
            *v53 = 0;
            if (v52[24] < 0)
            {
              operator delete(*(v52 + 1));
            }

            v73 = *(v53 + 3);
            *(v52 + 17) = v53[5];
            *(v52 + 1) = v73;
            *(v53 + 47) = 0;
            *(v53 + 24) = 0;
            v53 += 6;
            v52 += 48;
          }

          goto LABEL_123;
        }
      }
    }

    while (v54 != v50)
    {
      v71 = (v52 - 23);
      if (*v52 < 0)
      {
        operator delete(*v71);
      }

      v72 = *v54;
      *(v52 - 7) = v54[2];
      *v71 = v72;
      *(v54 + 23) = 0;
      *v54 = 0;
      if (v52[24] < 0)
      {
        operator delete(*(v52 + 1));
      }

      v70 = *(v54 + 3);
      *(v52 + 17) = v54[5];
      *(v52 + 1) = v70;
      *(v54 + 47) = 0;
      *(v54 + 24) = 0;
      v54 += 6;
      v52 += 48;
    }

LABEL_123:
    if (a4)
    {
      v75 = (a4 + 23);
      do
      {
        if (v75[24] < 0)
        {
          operator delete(*(v75 + 1));
          if (*v75 < 0)
          {
LABEL_130:
            operator delete(*(v75 - 23));
          }
        }

        else if (*v75 < 0)
        {
          goto LABEL_130;
        }

        v75 += 48;
        --v17;
      }

      while (v17);
    }
  }
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::MappedPrefix *&,llvm::MappedPrefix *&>(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  *v13 = (*a1)[1];
  *&v13[7] = *(*a1 + 15);
  v5 = *(*a1 + 23);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  v7 = (v2 + 3);
  v6 = v2[3];
  *v12 = v2[4];
  *&v12[7] = *(v2 + 39);
  v8 = *(v2 + 47);
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  v9 = *(v3 + 16);
  *v2 = *v3;
  v2[2] = v9;
  *(v3 + 23) = 0;
  *v3 = 0;
  if (*(v2 + 47) < 0)
  {
    operator delete(*v7);
  }

  v10 = *(v3 + 24);
  v7[2] = *(v3 + 40);
  *v7 = v10;
  *(v3 + 47) = 0;
  *(v3 + 24) = 0;
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
    v11 = *(v3 + 47);
    *v3 = v4;
    *(v3 + 8) = *v13;
    *(v3 + 15) = *&v13[7];
    *(v3 + 23) = v5;
    if (v11 < 0)
    {
      operator delete(*(v3 + 24));
    }
  }

  else
  {
    *v3 = v4;
    *(v3 + 8) = *v13;
    *(v3 + 15) = *&v13[7];
    *(v3 + 23) = v5;
  }

  *(v3 + 24) = v6;
  *(v3 + 32) = *v12;
  *(v3 + 39) = *&v12[7];
  *(v3 + 47) = v8;
}

__n128 std::__stable_sort_move<std::_ClassicAlgPolicy,llvm::PrefixMapper::sort(void)::$_0 &,llvm::MappedPrefix *>(const void **a1, const void **a2, uint64_t a3, uint64_t a4, __n128 result)
{
  if (a3)
  {
    v5 = a4;
    v7 = a1;
    if (a3 == 2)
    {
      v10 = a2 - 6;
      v11 = *(a2 - 25);
      v12 = *(a1 + 23);
      if (v12 >= 0)
      {
        v13 = *(a1 + 23);
      }

      else
      {
        v13 = a1[1];
      }

      if (v12 < 0)
      {
        a1 = *a1;
      }

      if (v11 >= 0)
      {
        v14 = *(a2 - 25);
      }

      else
      {
        v14 = *(a2 - 5);
      }

      if (v11 >= 0)
      {
        v15 = a2 - 6;
      }

      else
      {
        v15 = *(a2 - 6);
      }

      if (v14 >= v13)
      {
        v16 = v13;
      }

      else
      {
        v16 = v14;
      }

      v17 = memcmp(a1, v15, v16);
      v18 = v13 < v14;
      if (v17)
      {
        v18 = v17 < 0;
      }

      if (v18)
      {
        v19 = *v10;
        *(v5 + 16) = *(a2 - 4);
        *v5 = v19;
        *(a2 - 5) = 0;
        *(a2 - 4) = 0;
        *v10 = 0;
        v20 = *(a2 - 3);
        *(v5 + 40) = *(a2 - 1);
        *(v5 + 24) = v20;
        *(a2 - 2) = 0;
        *(a2 - 1) = 0;
        *(a2 - 3) = 0;
        v21 = *v7;
        *(v5 + 64) = v7[2];
        *(v5 + 48) = v21;
        v7[1] = 0;
        v7[2] = 0;
        *v7 = 0;
        v9 = v7 + 3;
        result = *(v7 + 3);
        v22 = v7[5];
      }

      else
      {
        v54 = *v7;
        *(v5 + 16) = v7[2];
        *v5 = v54;
        v7[1] = 0;
        v7[2] = 0;
        *v7 = 0;
        v55 = *(v7 + 3);
        *(v5 + 40) = v7[5];
        *(v5 + 24) = v55;
        v7[4] = 0;
        v7[5] = 0;
        v7[3] = 0;
        v56 = *v10;
        *(v5 + 64) = *(a2 - 4);
        *(v5 + 48) = v56;
        *(a2 - 5) = 0;
        *(a2 - 4) = 0;
        *v10 = 0;
        v9 = a2 - 3;
        result = *(a2 - 3);
        v22 = *(a2 - 1);
      }

      *(v5 + 88) = v22;
      *(v5 + 72) = result;
      goto LABEL_80;
    }

    if (a3 == 1)
    {
      v8 = *a1;
      *(a4 + 16) = a1[2];
      *a4 = v8;
      a1[1] = 0;
      a1[2] = 0;
      *a1 = 0;
      v9 = a1 + 3;
      result = *(a1 + 3);
      *(a4 + 40) = a1[5];
      *(a4 + 24) = result;
LABEL_80:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      return result;
    }

    if (a3 > 8)
    {
      v57 = a3 >> 1;
      v58 = 6 * (a3 >> 1);
      v59 = &a1[v58];
      std::__stable_sort<std::_ClassicAlgPolicy,llvm::PrefixMapper::sort(void)::$_0 &,llvm::MappedPrefix *>(a1, &a1[v58], v57, a4, v57);
      std::__stable_sort<std::_ClassicAlgPolicy,llvm::PrefixMapper::sort(void)::$_0 &,llvm::MappedPrefix *>(&v7[v58], a2, a3 - v57, v5 + v58 * 8, a3 - v57);
      v61 = &v7[v58];
      while (v61 != a2)
      {
        v63 = *(v61 + 23);
        v64 = *(v7 + 23);
        if (v64 >= 0)
        {
          v65 = *(v7 + 23);
        }

        else
        {
          v65 = v7[1];
        }

        if (v64 >= 0)
        {
          v66 = v7;
        }

        else
        {
          v66 = *v7;
        }

        if (v63 >= 0)
        {
          v67 = *(v61 + 23);
        }

        else
        {
          v67 = v61[1];
        }

        if (v63 >= 0)
        {
          v68 = v61;
        }

        else
        {
          v68 = *v61;
        }

        if (v67 >= v65)
        {
          v69 = v65;
        }

        else
        {
          v69 = v67;
        }

        v70 = memcmp(v66, v68, v69);
        v71 = v65 < v67;
        if (v70)
        {
          v71 = v70 < 0;
        }

        if (v71)
        {
          v72 = *v61;
          *(v5 + 16) = v61[2];
          *v5 = v72;
          v61[1] = 0;
          v61[2] = 0;
          *v61 = 0;
          result = *(v61 + 3);
          *(v5 + 40) = v61[5];
          *(v5 + 24) = result;
          v61[4] = 0;
          v61[5] = 0;
          v61[3] = 0;
          v61 += 6;
          v5 += 48;
          if (v7 == v59)
          {
LABEL_104:
            if (v61 != a2)
            {
              v73 = 0;
              do
              {
                v74 = &v61[v73];
                v75 = v5 + v73 * 8;
                v76 = *&v61[v73];
                *(v75 + 16) = v61[v73 + 2];
                *v75 = v76;
                v74[1] = 0;
                v74[2] = 0;
                *v74 = 0;
                result = *&v61[v73 + 3];
                *(v75 + 40) = v61[v73 + 5];
                *(v75 + 24) = result;
                v74[4] = 0;
                v74[5] = 0;
                v74[3] = 0;
                v73 += 6;
              }

              while (v74 + 6 != a2);
            }

            return result;
          }
        }

        else
        {
          v62 = *v7;
          *(v5 + 16) = v7[2];
          *v5 = v62;
          v7[1] = 0;
          v7[2] = 0;
          *v7 = 0;
          result = *(v7 + 3);
          *(v5 + 40) = v7[5];
          *(v5 + 24) = result;
          v7[4] = 0;
          v7[5] = 0;
          v7[3] = 0;
          v7 += 6;
          v5 += 48;
          if (v7 == v59)
          {
            goto LABEL_104;
          }
        }
      }

      if (v7 != v59)
      {
        v77 = 0;
        do
        {
          v78 = v5 + v77 * 8;
          v79 = &v7[v77];
          v80 = *&v7[v77];
          *(v78 + 16) = v7[v77 + 2];
          *v78 = v80;
          v79[1] = 0;
          v79[2] = 0;
          *v79 = 0;
          result = *&v7[v77 + 3];
          *(v78 + 40) = v7[v77 + 5];
          *(v78 + 24) = result;
          v79[4] = 0;
          v79[5] = 0;
          v79[3] = 0;
          v77 += 6;
        }

        while (v79 + 6 != v59);
      }
    }

    else if (a1 != a2)
    {
      v23 = *a1;
      *(a4 + 16) = a1[2];
      *a4 = v23;
      a1[1] = 0;
      a1[2] = 0;
      *a1 = 0;
      result = *(a1 + 3);
      *(a4 + 40) = a1[5];
      *(a4 + 24) = result;
      a1[4] = 0;
      a1[5] = 0;
      a1[3] = 0;
      v24 = a1 + 6;
      if (a1 + 6 != a2)
      {
        v25 = 0;
        v26 = a4;
        do
        {
          v29 = v24;
          v30 = v26 + 6;
          v31 = *(v7 + 71);
          v32 = *(v26 + 23);
          if (v32 >= 0)
          {
            v33 = *(v26 + 23);
          }

          else
          {
            v33 = v26[1];
          }

          if (v32 >= 0)
          {
            v34 = v26;
          }

          else
          {
            v34 = *v26;
          }

          if (v31 >= 0)
          {
            v35 = *(v7 + 71);
          }

          else
          {
            v35 = v7[7];
          }

          if (v31 >= 0)
          {
            v36 = v24;
          }

          else
          {
            v36 = v7[6];
          }

          if (v35 >= v33)
          {
            v37 = v33;
          }

          else
          {
            v37 = v35;
          }

          v38 = memcmp(v34, v36, v37);
          v39 = v33 < v35;
          if (v38)
          {
            v39 = v38 < 0;
          }

          if (v39)
          {
            *v30 = *v26;
            v26[8] = v26[2];
            *v26 = 0;
            v26[1] = 0;
            v40 = *(v26 + 3);
            v26[2] = 0;
            v26[3] = 0;
            *(v26 + 9) = v40;
            v26[11] = v26[5];
            v41 = v5;
            v26[4] = 0;
            v26[5] = 0;
            if (v26 != v5)
            {
              v42 = v25;
              while (1)
              {
                v41 = v5 + v42;
                v43 = *(v7 + 71);
                v44 = *(v5 + v42 - 25);
                if (v44 >= 0)
                {
                  v45 = *(v5 + v42 - 25);
                }

                else
                {
                  v45 = *(v5 + v42 - 40);
                }

                if (v44 >= 0)
                {
                  v46 = (v5 + v42 - 48);
                }

                else
                {
                  v46 = *(v5 + v42 - 48);
                }

                if (v43 >= 0)
                {
                  v47 = *(v7 + 71);
                }

                else
                {
                  v47 = v7[7];
                }

                if (v43 >= 0)
                {
                  v48 = v29;
                }

                else
                {
                  v48 = *v29;
                }

                if (v47 >= v45)
                {
                  v49 = v45;
                }

                else
                {
                  v49 = v47;
                }

                v50 = memcmp(v46, v48, v49);
                v51 = v45 < v47;
                if (v50)
                {
                  v51 = v50 < 0;
                }

                if (!v51)
                {
                  break;
                }

                if (*(v41 + 23) < 0)
                {
                  operator delete(*v41);
                }

                *v41 = *(v5 + v42 - 48);
                *(v41 + 16) = *(v5 + v42 - 32);
                *(v41 - 25) = 0;
                *(v41 - 48) = 0;
                v52 = v5 + v42;
                if (*(v5 + v42 + 47) < 0)
                {
                  operator delete(*(v52 + 24));
                }

                *(v52 + 24) = *(v52 - 24);
                *(v52 + 40) = *(v52 - 8);
                *(v52 - 1) = 0;
                *(v52 - 24) = 0;
                v42 -= 48;
                if (!v42)
                {
                  v41 = v5;
                  break;
                }
              }
            }

            if (*(v41 + 23) < 0)
            {
              operator delete(*v41);
            }

            v53 = *v29;
            *(v41 + 16) = v29[2];
            *v41 = v53;
            *(v7 + 71) = 0;
            *v29 = 0;
            v28 = a2;
            if (*(v41 + 47) < 0)
            {
              operator delete(*(v41 + 24));
            }

            result = *(v7 + 9);
            *(v41 + 40) = v7[11];
            *(v41 + 24) = result;
            *(v7 + 95) = 0;
            *(v7 + 72) = 0;
          }

          else
          {
            v27 = *v29;
            v26[8] = v29[2];
            *v30 = v27;
            v29[1] = 0;
            v29[2] = 0;
            *v29 = 0;
            result = *(v7 + 9);
            v26[11] = v7[11];
            *(v26 + 9) = result;
            v7[10] = 0;
            v7[11] = 0;
            v7[9] = 0;
            v28 = a2;
          }

          v24 = v29 + 6;
          v25 += 48;
          v26 = v30;
          v7 = v29;
        }

        while (v29 + 6 != v28);
      }
    }
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,llvm::PrefixMapper::sort(void)::$_0 &,llvm::MappedPrefix *>(uint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, int64_t a5, uint64_t a6, int64_t a7)
{
  v132 = a2;
  v133 = a1;
  v127 = a5;
  if (a5)
  {
    v9 = a1;
    while (v127 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return;
      }

      v10 = 0;
      v11 = *(a2 + 23);
      if (v11 >= 0)
      {
        v12 = *(a2 + 23);
      }

      else
      {
        v12 = *(a2 + 8);
      }

      v13 = -a4;
      v14 = v9;
      while (1)
      {
        v130 = a1;
        v15 = &v9[v10];
        v16 = SHIBYTE(v9[v10 + 2]);
        if (v16 >= 0)
        {
          v17 = HIBYTE(v9[v10 + 2]);
        }

        else
        {
          v17 = v9[v10 + 1];
        }

        if (v16 >= 0)
        {
          v18 = &v9[v10];
        }

        else
        {
          v18 = v9[v10];
        }

        v19 = a2;
        if (v11 < 0)
        {
          a2 = *a2;
        }

        if (v12 >= v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = v12;
        }

        v21 = memcmp(v18, a2, v20);
        v22 = v17 < v12;
        if (v21)
        {
          v22 = v21 < 0;
        }

        if (v22)
        {
          break;
        }

        a1 = v14 + 6;
        v133 = v15 + 6;
        v10 += 6;
        v14 += 6;
        v23 = __CFADD__(v13++, 1);
        a2 = v19;
        if (v23)
        {
          return;
        }
      }

      v24 = -v13;
      v25 = v127;
      if (-v13 >= v127)
      {
        if (v13 == -1)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::MappedPrefix *&,llvm::MappedPrefix *&>(&v133, &v132);
          return;
        }

        v27 = v19;
        v33 = &v9[6 * (v24 / 2) + v10];
        v123 = v24 / 2;
        if (a3 == v19)
        {
          v28 = v19;
        }

        else
        {
          v43 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v19) >> 4);
          v44 = &v9[6 * (v24 / 2) + v10];
          v45 = *(v44 + 23);
          v46 = v44[1];
          if ((v45 & 0x80u) == 0)
          {
            v47 = v45;
          }

          else
          {
            v47 = v46;
          }

          if ((v45 & 0x80u) == 0)
          {
            v48 = v33;
          }

          else
          {
            v48 = *v33;
          }

          __s2a = v48;
          v28 = v19;
          do
          {
            v49 = v28 + 48 * (v43 >> 1);
            v50 = *(v49 + 23);
            if (v50 >= 0)
            {
              v51 = *(v49 + 23);
            }

            else
            {
              v51 = *(v49 + 8);
            }

            if (v50 >= 0)
            {
              v52 = (v28 + 48 * (v43 >> 1));
            }

            else
            {
              v52 = *v49;
            }

            if (v51 >= v47)
            {
              v53 = v47;
            }

            else
            {
              v53 = v51;
            }

            v54 = memcmp(__s2a, v52, v53);
            v55 = v47 < v51;
            if (v54)
            {
              v55 = v54 < 0;
            }

            if (v55)
            {
              v43 += ~(v43 >> 1);
            }

            else
            {
              v43 >>= 1;
            }

            if (v55)
            {
              v28 = v49 + 48;
            }
          }

          while (v43);
          v27 = v19;
          v25 = v127;
        }

        v26 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v27) >> 4);
        v56 = v123;
      }

      else
      {
        v26 = v127 / 2;
        v27 = v19;
        v28 = v19 + 48 * (v127 / 2);
        if (v15 == v19)
        {
          v41 = &v9[v10];
          v42 = &v9[v10];
          v33 = &v9[v10];
        }

        else
        {
          v124 = a6;
          v122 = &v9[v10];
          v29 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v9 - v10 * 8) >> 4);
          v30 = *(v28 + 23);
          if (v30 >= 0)
          {
            v31 = *(v28 + 23);
          }

          else
          {
            v31 = *(v28 + 8);
          }

          if (v30 >= 0)
          {
            v32 = v19 + 48 * (v127 / 2);
          }

          else
          {
            v32 = *v28;
          }

          __s2 = v32;
          v33 = v15;
          do
          {
            v34 = &v33[6 * (v29 >> 1)];
            v35 = *(v34 + 23);
            if (v35 >= 0)
            {
              v36 = *(v34 + 23);
            }

            else
            {
              v36 = v34[1];
            }

            if (v35 >= 0)
            {
              v37 = &v33[6 * (v29 >> 1)];
            }

            else
            {
              v37 = *v34;
            }

            if (v31 >= v36)
            {
              v38 = v36;
            }

            else
            {
              v38 = v31;
            }

            v39 = memcmp(v37, __s2, v38);
            v40 = v36 < v31;
            if (v39)
            {
              v40 = v39 < 0;
            }

            if (v40)
            {
              v29 >>= 1;
            }

            else
            {
              v33 = v34 + 6;
              v29 += ~(v29 >> 1);
            }
          }

          while (v29);
          v41 = v33;
          v26 = v127 / 2;
          a6 = v124;
          v27 = v19;
          v25 = v127;
          v42 = v122;
        }

        v56 = 0xAAAAAAAAAAAAAAABLL * ((v41 - v42) >> 4);
      }

      a4 = -(v56 + v13);
      v57 = v25 - v26;
      v58 = v26;
      v59 = std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,llvm::MappedPrefix *,llvm::MappedPrefix *>(v33, v27, v28);
      v60 = v58;
      v9 = v59;
      if ((v56 + v60) >= (v25 - (v56 + v60) - v13))
      {
        v61 = v60;
        std::__inplace_merge<std::_ClassicAlgPolicy,llvm::PrefixMapper::sort(void)::$_0 &,llvm::MappedPrefix *>(v59, v28, a3, -(v56 + v13), v57, a6, a7);
        a4 = v56;
        a3 = v9;
        a1 = v130;
        v132 = v33;
        v127 = v61;
        a2 = v33;
        v9 = v15;
        if (!v61)
        {
          return;
        }
      }

      else
      {
        std::__inplace_merge<std::_ClassicAlgPolicy,llvm::PrefixMapper::sort(void)::$_0 &,llvm::MappedPrefix *>(v15, v33, v59, v56, v60, a6, a7);
        v132 = v28;
        v133 = v9;
        a1 = v9;
        v127 = v57;
        a2 = v28;
        if (!v57)
        {
          return;
        }
      }
    }

    if (a4 > v127)
    {
      if (a2 == a3)
      {
        return;
      }

      v62 = 0;
      v63 = 0;
      v64 = a3;
      do
      {
        v65 = a6 + v62;
        v66 = (a2 + v62);
        v67 = *(a2 + v62);
        *(v65 + 16) = *(a2 + v62 + 16);
        *v65 = v67;
        v66[1] = 0;
        v66[2] = 0;
        *v66 = 0;
        v68 = *(a2 + v62 + 24);
        *(v65 + 40) = *(a2 + v62 + 40);
        *(v65 + 24) = v68;
        v66[4] = 0;
        v66[5] = 0;
        v66[3] = 0;
        ++v63;
        v62 += 48;
      }

      while (v66 + 6 != a3);
      v69 = a3 - 6;
      v70 = (a6 + v62);
      while (1)
      {
        if (a2 == a1)
        {
          if (v70 != a6)
          {
            v111 = 0;
            do
            {
              v114 = &v69[v111 / 8];
              if (SHIBYTE(v69[v111 / 8 + 2]) < 0)
              {
                operator delete(*v114);
              }

              v115 = &v70[v111 / 0x10 - 3];
              v116 = *v115;
              v114[2] = *&v70[v111 / 0x10 - 2];
              *v114 = v116;
              *(&v70[v111 / 0x10 - 1] - 9) = 0;
              *v115 = 0;
              if (*(v114 + 47) < 0)
              {
                operator delete(v114[3]);
              }

              v112 = &v70[v111 / 0x10];
              v113 = *(&v70[v111 / 0x10 - 1] - 8);
              v114[5] = *(&v70[v111 / 0x10 - 1] + 1);
              *(v114 + 3) = v113;
              *(v112 - 1) = 0;
              *(v112 - 24) = 0;
              v111 -= 48;
            }

            while (&v70[v111 / 0x10] != a6);
          }

          goto LABEL_169;
        }

        v72 = a1;
        v131 = a2;
        v73 = a2 - 48;
        v74 = v70 - 3;
        v75 = *(v70 - 25);
        v76 = *(a2 - 25);
        if (v76 >= 0)
        {
          v77 = *(a2 - 25);
        }

        else
        {
          v77 = *(a2 - 40);
        }

        if (v76 >= 0)
        {
          v78 = (a2 - 48);
        }

        else
        {
          v78 = *(a2 - 48);
        }

        if (v75 >= 0)
        {
          v79 = *(v70 - 25);
        }

        else
        {
          v79 = *(v70 - 5);
        }

        if (v75 >= 0)
        {
          v80 = v70 - 3;
        }

        else
        {
          v80 = *(v70 - 6);
        }

        if (v79 >= v77)
        {
          v81 = v77;
        }

        else
        {
          v81 = v79;
        }

        v82 = memcmp(v78, v80, v81);
        v83 = v82 < 0;
        if (!v82)
        {
          v83 = v77 < v79;
        }

        v84 = *(v69 + 23);
        a1 = v72;
        if (v83)
        {
          if (v84 < 0)
          {
            operator delete(*v69);
            a1 = v72;
          }

          v85 = *v73;
          v69[2] = *(v73 + 16);
          *v69 = v85;
          v86 = v131;
          *(v131 - 25) = 0;
          *(v131 - 48) = 0;
          v87 = v69 + 3;
          v74 = v70;
          a2 = v73;
          if ((*(v69 + 47) & 0x80000000) == 0)
          {
            goto LABEL_94;
          }
        }

        else
        {
          if (v84 < 0)
          {
            operator delete(*v69);
            a1 = v72;
          }

          v88 = *v74;
          v69[2] = *(v70 - 4);
          *v69 = v88;
          *(v70 - 25) = 0;
          *(v70 - 48) = 0;
          v87 = v64 - 3;
          v86 = v70;
          a2 = v131;
          v73 = v131;
          v70 -= 3;
          if ((*(v69 + 47) & 0x80000000) == 0)
          {
            goto LABEL_94;
          }
        }

        operator delete(*v87);
        a1 = v72;
        a2 = v73;
        v70 = v74;
LABEL_94:
        v64 -= 6;
        v71 = *(v86 - 24);
        v87[2] = *(v86 - 1);
        *v87 = v71;
        *(v86 - 1) = 0;
        *(v86 - 24) = 0;
        v69 -= 6;
        if (v70 == a6)
        {
          goto LABEL_169;
        }
      }
    }

    if (a1 != a2)
    {
      v63 = 0;
      v89 = a6;
      v90 = a1;
      do
      {
        v91 = *v90;
        *(v89 + 16) = v90[2];
        *v89 = v91;
        v90[1] = 0;
        v90[2] = 0;
        *v90 = 0;
        v92 = *(v90 + 3);
        *(v89 + 40) = v90[5];
        *(v89 + 24) = v92;
        v90[4] = 0;
        v90[5] = 0;
        v90[3] = 0;
        ++v63;
        v90 += 6;
        v89 += 48;
      }

      while (v90 != a2);
      v93 = a1 + 23;
      v94 = a6;
      while (a2 != a3)
      {
        v96 = (v93 - 23);
        v97 = *(a2 + 23);
        v98 = *(v94 + 23);
        if (v98 >= 0)
        {
          v99 = *(v94 + 23);
        }

        else
        {
          v99 = v94[1];
        }

        if (v98 >= 0)
        {
          v100 = v94;
        }

        else
        {
          v100 = *v94;
        }

        if (v97 >= 0)
        {
          v101 = *(a2 + 23);
        }

        else
        {
          v101 = *(a2 + 8);
        }

        v102 = a2;
        if (v97 < 0)
        {
          a2 = *a2;
        }

        if (v101 >= v99)
        {
          v103 = v99;
        }

        else
        {
          v103 = v101;
        }

        v104 = memcmp(v100, a2, v103);
        v105 = v104 < 0;
        if (!v104)
        {
          v105 = v99 < v101;
        }

        v106 = *v93;
        if (v105)
        {
          if (v106 < 0)
          {
            operator delete(*v96);
          }

          v107 = v102;
          v108 = *v102;
          *(v93 - 7) = *(v102 + 16);
          *v96 = v108;
          *(v102 + 23) = 0;
          *v102 = 0;
          if (v93[24] < 0)
          {
            operator delete(*(v93 + 1));
            v107 = v102;
          }

          v109 = *(v107 + 24);
          *(v93 + 17) = *(v107 + 40);
          *(v93 + 1) = v109;
          *(v107 + 47) = 0;
          *(v107 + 24) = 0;
          a2 = v107 + 48;
          v93 += 48;
          if (v89 == v94)
          {
            goto LABEL_169;
          }
        }

        else
        {
          if (v106 < 0)
          {
            operator delete(*v96);
          }

          v110 = *v94;
          *(v93 - 7) = v94[2];
          *v96 = v110;
          *(v94 + 23) = 0;
          *v94 = 0;
          if (v93[24] < 0)
          {
            operator delete(*(v93 + 1));
          }

          v95 = *(v94 + 3);
          *(v93 + 17) = v94[5];
          *(v93 + 1) = v95;
          *(v94 + 47) = 0;
          *(v94 + 24) = 0;
          v94 += 6;
          a2 = v102;
          v93 += 48;
          if (v89 == v94)
          {
            goto LABEL_169;
          }
        }
      }

      do
      {
        v119 = (v93 - 23);
        if (*v93 < 0)
        {
          operator delete(*v119);
        }

        v120 = *v94;
        *(v93 - 7) = v94[2];
        *v119 = v120;
        *(v94 + 23) = 0;
        *v94 = 0;
        if (v93[24] < 0)
        {
          operator delete(*(v93 + 1));
        }

        v117 = *(v94 + 3);
        *(v93 + 17) = v94[5];
        *(v93 + 1) = v117;
        *(v94 + 47) = 0;
        *(v94 + 24) = 0;
        v93 += 48;
        v118 = v89 - 48 == v94;
        v94 += 6;
      }

      while (!v118);
LABEL_169:
      if (a6)
      {
        v121 = (a6 + 23);
        do
        {
          if (v121[24] < 0)
          {
            operator delete(*(v121 + 1));
            if (*v121 < 0)
            {
LABEL_176:
              operator delete(*(v121 - 23));
            }
          }

          else if (*v121 < 0)
          {
            goto LABEL_176;
          }

          v121 += 48;
          --v63;
        }

        while (v63);
      }
    }
  }
}

uint64_t *std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,llvm::MappedPrefix *,llvm::MappedPrefix *>(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a3;
  if (a1 != a2)
  {
    v5 = a2;
    if (a2 == a3)
    {
      return a1;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      while (1)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::MappedPrefix *&,llvm::MappedPrefix *&>(&v11, &v10);
        v4 = v11 + 6;
        v6 = v10 + 48;
        v10 = v6;
        v11 += 6;
        if (v6 == a3)
        {
          break;
        }

        if (v4 == v5)
        {
          v5 = v6;
        }
      }

      if (v4 != v5)
      {
        do
        {
          v10 = v5;
          while (1)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<llvm::MappedPrefix *&,llvm::MappedPrefix *&>(&v11, &v10);
            v7 = v11 + 6;
            v8 = v10 + 48;
            v10 = v8;
            v11 += 6;
            if (v8 == a3)
            {
              break;
            }

            if (v7 == v5)
            {
              v5 = v8;
            }
          }
        }

        while (v7 != v5);
      }
    }
  }

  return v4;
}

uint64_t llvm::SmallVectorImpl<llvm::MappedPrefix>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a1 + 8);
    if (v4 < v3)
    {
      if (*(a1 + 12) < v3)
      {
        if (!v4)
        {
LABEL_22:
          *(a1 + 8) = 0;
          llvm::SmallVectorTemplateBase<llvm::MappedPrefix,false>::grow();
        }

        v5 = -48 * v4;
        v6 = *a1 + 48 * v4 - 24;
        while (1)
        {
          if (*(v6 + 23) < 0)
          {
            operator delete(*v6);
            if (*(v6 - 1) < 0)
            {
LABEL_11:
              operator delete(*(v6 - 24));
            }
          }

          else if (*(v6 - 1) < 0)
          {
            goto LABEL_11;
          }

          v6 -= 48;
          v5 += 48;
          if (!v5)
          {
            goto LABEL_22;
          }
        }
      }

      if (v4)
      {
        v11 = a2;
        v12 = *a2;
        v13 = *a2 + 48 * v4;
        v14 = *a1;
        do
        {
          std::string::operator=(v14, v12);
          std::string::operator=(v14 + 1, v12 + 1);
          v12 += 2;
          v14 += 2;
        }

        while (v12 != v13);
        a2 = v11;
        v15 = *(v11 + 8);
        if (v4 == v15)
        {
          goto LABEL_39;
        }

        goto LABEL_32;
      }

      v4 = 0;
      v15 = *(a2 + 8);
      if (*(a2 + 8))
      {
LABEL_32:
        v17 = *a2;
        v18 = *a1;
        v19 = 48 * v4;
        v20 = 48 * v15;
        while (1)
        {
          v22 = &v18[v19 / 0x18];
          v23 = &v17[v19 / 0x18];
          if (SHIBYTE(v17[v19 / 0x18].__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v22, v23->__r_.__value_.__l.__data_, v23->__r_.__value_.__l.__size_);
            v25 = &v18[v19 / 0x18];
            v26 = &v17[v19 / 0x18];
            if ((SHIBYTE(v17[v19 / 0x18 + 1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_33;
            }

LABEL_38:
            std::string::__init_copy_ctor_external(v25 + 1, v26[1].__r_.__value_.__l.__data_, v26[1].__r_.__value_.__l.__size_);
            v18 += 2;
            v17 += 2;
            v20 -= 48;
            if (v19 == v20)
            {
              break;
            }
          }

          else
          {
            v24 = *&v23->__r_.__value_.__l.__data_;
            v22->__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
            *&v22->__r_.__value_.__l.__data_ = v24;
            v25 = &v18[v19 / 0x18];
            v26 = &v17[v19 / 0x18];
            if (SHIBYTE(v17[v19 / 0x18 + 1].__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_38;
            }

LABEL_33:
            v21 = *&v26[1].__r_.__value_.__l.__data_;
            v25[1].__r_.__value_.__r.__words[2] = v26[1].__r_.__value_.__r.__words[2];
            *&v25[1].__r_.__value_.__l.__data_ = v21;
            v18 += 2;
            v17 += 2;
            v20 -= 48;
            if (v19 == v20)
            {
              break;
            }
          }
        }
      }

LABEL_39:
      *(a1 + 8) = v3;
      return a1;
    }

    if (!v3)
    {
      v9 = *a1;
      v10 = *a1 + 48 * v4;
      if (v10 != *a1)
      {
        goto LABEL_26;
      }

      goto LABEL_39;
    }

    v7 = *a2;
    v8 = *a2 + 48 * v3;
    v9 = *a1;
    do
    {
      std::string::operator=(v9, v7);
      std::string::operator=(v9 + 1, v7 + 1);
      v9 += 2;
      v7 += 2;
    }

    while (v7 != v8);
    v10 = *a1 + 48 * *(a1 + 8);
    if (v10 == v9)
    {
      goto LABEL_39;
    }

    while (1)
    {
LABEL_26:
      if (*(v10 - 1) < 0)
      {
        operator delete(*(v10 - 24));
        v16 = (v10 - 48);
        if (*(v10 - 25) < 0)
        {
LABEL_30:
          operator delete(*v16);
        }
      }

      else
      {
        v16 = (v10 - 48);
        if (*(v10 - 25) < 0)
        {
          goto LABEL_30;
        }
      }

      v10 = v16;
      if (v16 == v9)
      {
        goto LABEL_39;
      }
    }
  }

  return a1;
}