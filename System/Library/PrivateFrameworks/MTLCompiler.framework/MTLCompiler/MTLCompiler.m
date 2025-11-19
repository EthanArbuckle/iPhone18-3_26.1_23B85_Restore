uint64_t deleteCompilerHelper(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void *StaticHashTable::init(StaticHashTable *this, unsigned int a2)
{
  *this = a2;
  v4 = 4 * a2;
  v5 = malloc_type_malloc(v4, 0x100004052888210uLL);
  *(this + 1) = v5;
  memset(v5, 255, v4);
  *(this + 5) = a2;
  v6 = 16 * a2;
  v7 = malloc_type_malloc(v6, 0x1050040606E6C2FuLL);
  *(this + 3) = v7;
  result = memset(v7, 255, v6);
  *(this + 4) = 0;
  return result;
}

BOOL MTLCompilerBuiltInFileReaderImpl::readBytes(MTLCompilerBuiltInFileReaderImpl *this, void *__dst, size_t a3)
{
  v3 = *(this + 7);
  v4 = *(this + 8);
  v5 = v3 + a3;
  if (v3 + a3 <= v4)
  {
    memcpy(__dst, (*(this + 6) + v3), a3);
    *(this + 7) += a3;
  }

  return v5 <= v4;
}

uint64_t MTLCompilerBuiltInFileReaderImpl::readString(MTLCompilerBuiltInFileReaderImpl *this)
{
  v1 = *(this + 7);
  v2 = *(this + 8);
  v3 = v2 - v1;
  if (v2 <= v1)
  {
    return 0;
  }

  v4 = *(this + 6);
  v5 = ~v1;
  v6 = (v4 + v1);
  while (*v6++)
  {
    --v5;
    if (!--v3)
    {
      return 0;
    }
  }

  *(this + 7) = -v5;
  return v4 + v1;
}

uint64_t MTLCompilerBuiltInFileReaderImpl::getBuiltinModuleByName(void *a1, int a2, char *__s2)
{
  v16 = *MEMORY[0x277D85DE8];
  FunctionOffset = StaticHashTable::findFunctionOffset((a1 + 1), __s2);
  if (FunctionOffset == -1 || (v5 = FunctionOffset + 4, v6 = a1[8], v5 > v6) || v6 < (*(a1[6] + FunctionOffset) + v5))
  {
    v7 = 0;
  }

  else
  {
    llvm::MemoryBuffer::getMemBuffer();
    llvm::MemoryBuffer::getMemBufferRef(v11, v12);
    llvm::parseBitcodeFile();
    llvm::expectedToErrorOrAndEmitErrors<std::unique_ptr<llvm::Module>>(v13, v14);
    llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(v13);
    if (v15)
    {
      v7 = 0;
    }

    else
    {
      v7 = v14[0];
      v14[0] = 0;
      std::unique_ptr<llvm::Module>::~unique_ptr[abi:ne200100](v14);
    }

    v10 = v12;
    v12 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_257A7AA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(va);
  if (a7)
  {
    (*(*a7 + 8))(a7);
  }

  _Unwind_Resume(a1);
}

uint64_t StaticHashTable::findFunctionOffset(StaticHashTable *this, const char *__s2)
{
  LOBYTE(v4) = *__s2;
  if (*__s2)
  {
    v5 = 0;
    v6 = 1;
    v7 = 1;
    do
    {
      v5 += v7 * v4;
      v7 *= 2;
      v4 = __s2[v6++];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = (*(this + 1) + 4 * (v5 % *this));
  while (1)
  {
    v9 = *v8;
    if (v9 == -1)
    {
      break;
    }

    v8 = (*(this + 3) + 16 * v9);
    if (!strcmp(v8[1], __s2))
    {
      return *(v8 + 1);
    }
  }

  return 0xFFFFFFFFLL;
}

void llvm::expectedToErrorOrAndEmitErrors<std::unique_ptr<llvm::Module>>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    v3 = *a1;
    *a1 = 0;
    v7 = v3;
    v4 = llvm::errorToErrorCodeAndEmitErrors();
    *(a2 + 16) |= 1u;
    *a2 = v4;
    *(a2 + 8) = v5;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  else
  {
    *(a2 + 16) &= ~1u;
    v6 = *a1;
    *a1 = 0;
    *a2 = v6;
  }
}

void sub_257A7ABB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    llvm::expectedToErrorOrAndEmitErrors<std::unique_ptr<llvm::Module>>(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLCompilerBuiltInFileReaderImpl::getBuiltinsModule(void *a1, int a2, char **a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = a3[1];
  if (*a3 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = v3;
      if (v3[23] < 0)
      {
        v8 = *v3;
      }

      BuiltinModuleByName = MTLCompilerBuiltInFileReaderImpl::getBuiltinModuleByName(a1, a2, v8);
      if (BuiltinModuleByName)
      {
        if (v7)
        {
          v39 = BuiltinModuleByName;
          v43 = 0;
          v10 = llvm::Linker::linkModules();
          std::__function::__value_func<void ()(llvm::Module &,llvm::StringSet<llvm::MallocAllocator> const&)>::~__value_func[abi:ne200100](v42);
          std::unique_ptr<llvm::Module>::~unique_ptr[abi:ne200100](&v39);
          if (v10)
          {
LABEL_53:
            abort();
          }
        }

        else
        {
          v7 = BuiltinModuleByName;
        }
      }

      v3 += 24;
    }

    while (v3 != v4);
    if (v7)
    {
      v37 = 0;
      v38 = 0;
      __p = 0;
      v11 = v7 + 8;
      v12 = *(v7 + 16);
      if (v12 != v7 + 8)
      {
        do
        {
          if (v12)
          {
            v13 = (v12 - 56);
          }

          else
          {
            v13 = 0;
          }

          if ((*(v13 + 32) & 0xF) == 0)
          {
            v33[0] = llvm::Value::getName(v13);
            v33[1] = v14;
            llvm::StringRef::str(v33, v34);
            if (v35 >= 0)
            {
              v15 = v34;
            }

            else
            {
              v15 = v34[0];
            }

            v16 = MTLCompilerBuiltInFileReaderImpl::getBuiltinModuleByName(a1, a2, v15);
            if (v16)
            {
              v17 = v37;
              if (v37 >= v38)
              {
                v19 = (v37 - __p) >> 3;
                if ((v19 + 1) >> 61)
                {
                  std::vector<llvm::Module *>::__throw_length_error[abi:ne200100]();
                }

                v20 = (v38 - __p) >> 2;
                if (v20 <= v19 + 1)
                {
                  v20 = v19 + 1;
                }

                if (v38 - __p >= 0x7FFFFFFFFFFFFFF8)
                {
                  v21 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v21 = v20;
                }

                if (v21)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Module *>>(&__p, v21);
                }

                v22 = (8 * v19);
                *v22 = v16;
                v18 = 8 * v19 + 8;
                v23 = v22 - (v37 - __p);
                memcpy(v23, __p, v37 - __p);
                v24 = __p;
                __p = v23;
                v37 = v18;
                v38 = 0;
                if (v24)
                {
                  operator delete(v24);
                }
              }

              else
              {
                *v37 = v16;
                v18 = (v17 + 8);
              }

              v37 = v18;
            }

            if (v35 < 0)
            {
              operator delete(v34[0]);
            }
          }

          v12 = *(v12 + 8);
        }

        while (v12 != v11);
        v25 = __p;
        v26 = v37;
        while (v25 != v26)
        {
          v32 = *v25;
          v41 = 0;
          v27 = llvm::Linker::linkModules();
          std::__function::__value_func<void ()(llvm::Module &,llvm::StringSet<llvm::MallocAllocator> const&)>::~__value_func[abi:ne200100](v40);
          std::unique_ptr<llvm::Module>::~unique_ptr[abi:ne200100](&v32);
          if (v27)
          {
            goto LABEL_53;
          }

          ++v25;
        }
      }

      for (i = *(v7 + 16); i != v11; i = *(i + 8))
      {
        if (i)
        {
          v29 = (i - 56);
        }

        else
        {
          v29 = 0;
        }

        if (llvm::GlobalValue::isDeclaration(v29))
        {
          llvm::GlobalValue::setLinkage(v29, 0);
        }

        else
        {
          *(v29 + 8) = *(v29 + 8) & 0xFFFFBFC0 | 0x4007;
        }
      }

      if (__p)
      {
        v37 = __p;
        operator delete(__p);
      }
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_257A7AEAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<llvm::Module>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x259C6BE00]();
    MEMORY[0x259C6BE80](v3, 0x10B2C407FF26C1CLL);
  }

  return a1;
}

const void **llvm::StringRef::str@<X0>(const void **this@<X0>, void *a2@<X8>)
{
  v3 = *this;
  if (*this)
  {
    v4 = this[1];
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v4;
    if (v4)
    {
      this = memmove(a2, v3, v4);
    }

    *(a2 + v4) = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return this;
}

uint64_t llvm::GlobalValue::setLinkage(uint64_t this, int a2)
{
  v2 = this;
  v3 = *(this + 32);
  if ((a2 - 7) < 2)
  {
    v3 &= 0xFFFFFFCF;
  }

  v4 = v3 & 0xFFFFFFF0 | a2 & 0xF;
  *(this + 32) = v4;
  if ((a2 & 0xFu) - 7 < 2)
  {
    goto LABEL_7;
  }

  if ((v3 & 0x30) != 0)
  {
    this = llvm::GlobalValue::hasExternalWeakLinkage(this);
    if ((this & 1) == 0)
    {
      v4 = *(v2 + 32);
LABEL_7:
      *(v2 + 32) = v4 | 0x4000;
    }
  }

  return this;
}

uint64_t MTLCompilerBuiltInFileReaderImpl::getBuiltinsModuleForSourceModule(MTLCompilerBuiltInFileReaderImpl *this, llvm::Module *a2)
{
  v20 = *a2;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v3 = a2 + 24;
  v4 = *(a2 + 4);
  if (v4 != a2 + 24)
  {
    do
    {
      if (v4)
      {
        v5 = (v4 - 56);
      }

      else
      {
        v5 = 0;
      }

      if (llvm::GlobalValue::isDeclaration(v5))
      {
        v21[0] = llvm::Value::getName(v5);
        v21[1] = v6;
        llvm::StringRef::str(v21, __p);
        v7 = v25;
        if (v25 >= v26)
        {
          v9 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3);
          v10 = v9 + 1;
          if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<llvm::Module *>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v26 - v24) >> 3) > v10)
          {
            v10 = 0x5555555555555556 * ((v26 - v24) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v26 - v24) >> 3) >= 0x555555555555555)
          {
            v11 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v11 = v10;
          }

          v27.__end_cap_.__value_ = &v24;
          if (v11)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v24, v11);
          }

          v12 = 8 * ((v25 - v24) >> 3);
          v13 = *__p;
          *(v12 + 16) = v23;
          *v12 = v13;
          __p[1] = 0;
          v23 = 0;
          __p[0] = 0;
          v14 = 24 * v9 + 24;
          v15 = (24 * v9 - (v25 - v24));
          memcpy((v12 - (v25 - v24)), v24, v25 - v24);
          v16 = v24;
          v17 = v26;
          v24 = v15;
          v25 = v14;
          v26 = 0;
          v27.__first_ = v16;
          v27.__end_ = v16;
          v27.__end_cap_.__value_ = v17;
          v27.__begin_ = v16;
          std::__split_buffer<std::string>::~__split_buffer(&v27);
          v25 = v14;
          if (SHIBYTE(v23) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v8 = *__p;
          *(v25 + 2) = v23;
          *v7 = v8;
          v25 = v7 + 24;
        }
      }

      v4 = *(v4 + 1);
    }

    while (v4 != v3);
  }

  v18 = (*(*this + 16))(this, v20, &v24);
  v27.__first_ = &v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
  return v18;
}

void sub_257A7B284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  __p = &a18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t MTLCompilerBuiltInFileReaderImpl::open(MTLCompilerBuiltInFileReaderImpl *this, const char *__s)
{
  v29 = *MEMORY[0x277D85DE8];
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

  v24 = v4;
  if (v4)
  {
    memcpy(&__p, __s, v4);
  }

  *(&__p + v5) = 0;
  v26 = 260;
  p_p = &__p;
  llvm::MemoryBuffer::getFile();
  if (v24 < 0)
  {
    operator delete(__p);
  }

  if (v28)
  {
    v6 = v27;
    if (v27)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v6 = v27;
  }

  v27 = 0;
  v7 = *(this + 5);
  *(this + 5) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
    v6 = *(this + 5);
  }

  v8 = *(v6 + 8);
  *(this + 6) = v8;
  v9 = *(v6 + 16) - v8;
  *(this + 7) = 4;
  *(this + 8) = v9;
  if (v9 >= 4)
  {
    v10 = *v8;
    if (*v8)
    {
      StaticHashTable::init((this + 8), *v8);
      v11 = 0;
      while (1)
      {
        v12 = *(this + 7);
        v13 = *(this + 8);
        if (v12 >= v13)
        {
          break;
        }

        v14 = *(this + 6);
        v15 = -v12;
        v16 = (v14 + v12 + 1);
        while (*(v16 - 1))
        {
          --v15;
          v16 = (v16 + 1);
          if (-v13 == v15)
          {
            goto LABEL_26;
          }
        }

        *(this + 7) = 1 - v15;
        v17 = 5 - v15;
        if (v17 > v13)
        {
          break;
        }

        v18 = *v16;
        *(this + 7) = v17;
        StaticHashTable::addFunction(this + 8, (v14 + v12), v18);
        ++v11;
        v19 = 1;
        if (v11 == v10)
        {
          goto LABEL_27;
        }
      }
    }
  }

LABEL_26:
  v19 = 0;
LABEL_27:
  if ((v28 & 1) == 0)
  {
    v20 = v27;
    v27 = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

void sub_257A7B52C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, _Unwind_Exception *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  v22 = exception_object;
  if ((a22 & 1) == 0)
  {
    MTLCompilerBuiltInFileReaderImpl::open(&a20, exception_object, a2, &a15);
    v22 = a15;
  }

  _Unwind_Resume(v22);
}

uint64_t StaticHashTable::addFunction(uint64_t this, const char *a2, int a3)
{
  v3 = *(this + 16);
  v4 = *(this + 24) + 16 * v3;
  *v4 = -1;
  *(v4 + 4) = a3;
  *(v4 + 8) = a2;
  LOBYTE(v5) = *a2;
  if (*a2)
  {
    v6 = 0;
    v7 = 1;
    v8 = 1;
    do
    {
      v6 += v8 * v5;
      v8 *= 2;
      v5 = a2[v7++];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = v6 % *this;
  v10 = *(this + 8);
  v11 = *(v10 + 4 * v9);
  *(v10 + 4 * v9) = v3;
  if (v11 != -1)
  {
    *v4 = v11;
  }

  ++*(this + 16);
  return this;
}

void MTLCompilerBuiltInFileReaderImpl::~MTLCompilerBuiltInFileReaderImpl(MTLCompilerBuiltInFileReaderImpl *this)
{
  MTLCompilerBuiltInFileReaderImpl::~MTLCompilerBuiltInFileReaderImpl(this);

  JUMPOUT(0x259C6BE80);
}

{
  *this = &unk_2868ED398;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  free(*(this + 2));
  free(*(this + 4));
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27984E840, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  else
  {
    std::unique_ptr<llvm::Module>::~unique_ptr[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(llvm::Module &,llvm::StringSet<llvm::MallocAllocator> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Module *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
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

uint64_t MTLCompilerBuiltInFileReaderImpl::open(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  return result;
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

void operator new()
{
    ;
  }
}