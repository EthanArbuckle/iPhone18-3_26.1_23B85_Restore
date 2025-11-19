void llvm::sys::DynamicLibrary::closeLibrary(void **this, llvm::sys::DynamicLibrary *a2)
{
  if ((atomic_load_explicit(&_MergedGlobals_19, memory_order_acquire) & 1) == 0)
  {
    llvm::sys::DynamicLibrary::AddSymbol();
  }

  std::recursive_mutex::lock(&stru_27F8757D0);
  v3 = *this;
  if (*this != &llvm::sys::DynamicLibrary::Invalid)
  {
    dlclose(*this);
    v4 = qword_27F8757B0;
    if (qword_27F8757B0 != qword_27F8757B8)
    {
      while (*v4 != v3)
      {
        if (++v4 == qword_27F8757B8)
        {
          goto LABEL_12;
        }
      }
    }

    if (v4 != qword_27F8757B8)
    {
      v5 = qword_27F8757B8 - (v4 + 1);
      if (qword_27F8757B8 != v4 + 1)
      {
        memmove(v4, v4 + 1, qword_27F8757B8 - (v4 + 1));
      }

      qword_27F8757B8 = v4 + v5;
    }

LABEL_12:
    *this = &llvm::sys::DynamicLibrary::Invalid;
  }

  std::recursive_mutex::unlock(&stru_27F8757D0);
}

void *llvm::sys::DynamicLibrary::getAddressOfSymbol(void **this, const char *a2)
{
  v2 = *this;
  if (v2 == &llvm::sys::DynamicLibrary::Invalid)
  {
    return 0;
  }

  else
  {
    return dlsym(v2, a2);
  }
}

void *llvm::sys::DynamicLibrary::SearchForAddressOfSymbol(llvm::sys::DynamicLibrary *this, const char *a2)
{
  if ((atomic_load_explicit(&_MergedGlobals_19, memory_order_acquire) & 1) == 0)
  {
    llvm::sys::DynamicLibrary::AddSymbol();
    std::recursive_mutex::lock(&stru_27F8757D0);
    if (this)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  std::recursive_mutex::lock(&stru_27F8757D0);
  if (!this)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = strlen(this);
LABEL_6:
  v5 = llvm::StringMapImpl::hash(this, v4, v3);
  Key = llvm::StringMapImpl::FindKey(&qword_27F875778, this, v4, v5);
  if (Key == -1 || Key == dword_27F875780)
  {
    v7 = llvm::sys::DynamicLibrary::HandleSet::Lookup(&qword_27F875790, this, llvm::sys::DynamicLibrary::SearchOrder);
    if (!v7)
    {
      v7 = llvm::sys::DynamicLibrary::HandleSet::Lookup(&qword_27F8757B0, this, llvm::sys::DynamicLibrary::SearchOrder);
    }
  }

  else
  {
    v7 = *(*(qword_27F875778 + 8 * Key) + 8);
  }

  std::recursive_mutex::unlock(&stru_27F8757D0);
  return v7;
}

void *llvm::sys::DynamicLibrary::HandleSet::Lookup(uint64_t a1, char *__symbol, char a3)
{
  if ((a3 & 1) != 0 || (result = *(a1 + 24)) == 0)
  {
    if ((a3 & 4) != 0)
    {
      v10 = *a1;
      v11 = *(a1 + 8);
      if (*a1 != v11)
      {
        do
        {
          result = dlsym(*v10, __symbol);
          if (result)
          {
            return result;
          }

          ++v10;
        }

        while (v10 != v11);
      }
    }

    else
    {
      v8 = *a1;
      for (i = *(a1 + 8); i != v8; --i)
      {
        v9 = *(i - 1);
        result = dlsym(v9, __symbol);
        if (result)
        {
          return result;
        }
      }
    }

    result = *(a1 + 24);
    if (!result)
    {
      return result;
    }
  }

  result = dlsym(result, __symbol);
  if (result)
  {
    return result;
  }

  if ((a3 & 2) == 0)
  {
    return 0;
  }

  if ((a3 & 4) == 0)
  {
    v14 = a1;
    v12 = *a1;
    for (j = *(v14 + 8); j != v12; --j)
    {
      v15 = *(j - 1);
      result = dlsym(v15, __symbol);
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  v17 = *a1;
  v16 = *(a1 + 8);
  if (v17 == v16)
  {
    return 0;
  }

  do
  {
    result = dlsym(*v17, __symbol);
    if (result)
    {
      break;
    }

    ++v17;
  }

  while (v17 != v16);
  return result;
}

void LLVMAddSymbol(char *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = strlen(a1);
    a1 = v3;
    v5 = a2;
  }

  else
  {
    v4 = 0;
    v5 = a2;
  }

  llvm::sys::DynamicLibrary::AddSymbol(a1, v4, v5);
}

void anonymous namespace::Globals::~Globals(_anonymous_namespace_::Globals *this)
{
  std::recursive_mutex::~recursive_mutex((this + 88));
  v3 = *(this + 7);
  for (i = *(this + 8); i != v3; i -= 8)
  {
    v4 = *(i - 8);
    dlclose(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    dlclose(v5);
  }

  llvm::sys::DynamicLibrary::SearchOrder = 0;
  v6 = *(this + 7);
  if (v6)
  {
    *(this + 8) = v6;
    operator delete(v6);
  }

  v8 = *(this + 3);
  for (j = *(this + 4); j != v8; j -= 8)
  {
    v9 = *(j - 8);
    dlclose(v9);
  }

  v10 = *(this + 6);
  if (v10)
  {
    dlclose(v10);
  }

  llvm::sys::DynamicLibrary::SearchOrder = 0;
  v11 = *(this + 3);
  if (v11)
  {
    *(this + 4) = v11;
    operator delete(v11);
  }

  if (*(this + 3))
  {
    v12 = *(this + 2);
    if (v12)
    {
      v13 = 0;
      do
      {
        v14 = *(*this + v13);
        if (v14 != -8 && v14 != 0)
        {
          llvm::deallocate_buffer(v14, (*v14 + 17));
        }

        v13 += 8;
      }

      while (8 * v12 != v13);
    }
  }

  free(*this);
}

void std::vector<void *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t OUTLINED_FUNCTION_0_34(uint64_t a1, uint64_t a2, void *a3)
{
}

void OUTLINED_FUNCTION_1_22()
{
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0x1000000000;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;

  JUMPOUT(0x259C62E30);
}

uint64_t llvm::sys::StrError@<X0>(void *a1@<X8>)
{
  v5 = *MEMORY[0x277D85DE8];
  result = *__error();
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (result)
  {
    __strerrbuf[0] = 0;
    strerror_r(result, __strerrbuf, 0x7CFuLL);
    return MEMORY[0x259C62C80](a1, __strerrbuf);
  }

  return result;
}

uint64_t llvm::sys::StrError@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (this)
  {
    __strerrbuf[0] = 0;
    strerror_r(this, __strerrbuf, 0x7CFuLL);
    return MEMORY[0x259C62C80](a2, __strerrbuf);
  }

  return this;
}

uint64_t llvm::sys::Memory::allocateMappedMemory@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = std::system_category();
  *a4 = 0;
  *(a4 + 8) = result;
  if (!a1)
  {
    goto LABEL_21;
  }

  v11 = result;
  v12 = dword_2573A4560[(((a3 & 0x7000000u) - 0x1000000) >> 24)];
  if (a2)
  {
    v13 = a2[1] + *a2;
    v14 = a1 - 1;
    if (atomic_load_explicit(&qword_27F875828, memory_order_acquire))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v13 = 0;
    v14 = a1 - 1;
    if (atomic_load_explicit(&qword_27F875828, memory_order_acquire))
    {
      goto LABEL_4;
    }
  }

  v19 = v12;
  llvm::sys::Memory::allocateMappedMemory();
  v12 = v19;
LABEL_4:
  v15 = (v14 + qword_27F875820) / qword_27F875820;
  v16 = qword_27F875820 + v13 - v13 % qword_27F875820;
  if (!(v13 % qword_27F875820))
  {
    v16 = v13;
  }

  if (v13)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  result = mmap(v17, v15 * qword_27F875820, v12, 4098, -1, 0);
  if (result != -1)
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  *a4 = 0;
  *(a4 + 8) = v11;
  v20 = dword_2573A4560[(((a3 & 0x7000000u) - 0x1000000) >> 24)];
  if ((atomic_load_explicit(&qword_27F875828, memory_order_acquire) & 1) == 0)
  {
    v22 = v20;
    llvm::sys::Memory::allocateMappedMemory();
    v20 = v22;
  }

  v15 = (v14 + qword_27F875820) / qword_27F875820;
  result = mmap(0, v15 * qword_27F875820, v20, 4098, -1, 0);
  if (result == -1)
  {
LABEL_20:
    v21 = *__error();
    result = std::generic_category();
    *a4 = v21;
    *(a4 + 8) = result;
  }

  else
  {
LABEL_10:
    *&v23 = result;
    *(&v23 + 1) = qword_27F875820 * v15;
    LODWORD(v24) = a3;
    if ((a3 & 0x4000000) == 0 || (result = llvm::sys::Memory::protectMappedMemory(&v23, a3), *a4 = result, *(a4 + 8) = v18, v11 == v18) && !result)
    {
      *a5 = v23;
      *(a5 + 16) = v24;
      return result;
    }
  }

LABEL_21:
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  return result;
}

uint64_t llvm::sys::Memory::protectMappedMemory(void *a1, int a2)
{
  if (atomic_load_explicit(&qword_27F875830, memory_order_acquire))
  {
    v2 = *a1;
    if (!*a1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v25 = a1;
    v26 = a2;
    llvm::sys::Memory::protectMappedMemory();
    a2 = v26;
    a1 = v25;
    v2 = *v25;
    if (!*v25)
    {
      goto LABEL_17;
    }
  }

  v3 = a1[1];
  if (v3)
  {
    if (!a2)
    {
      v10 = 22;
LABEL_15:
      std::generic_category();
      return v10;
    }

    v4 = (a2 & 0x7000000) - 0x1000000;
    v5 = dword_2573A4560[SHIBYTE(v4)];
    v6 = v2 + (-1 << _MergedGlobals_20) + (1 << _MergedGlobals_20);
    v7 = -(1 << _MergedGlobals_20);
    v8 = v6 & v7;
    v9 = ((1 << _MergedGlobals_20) - 1 + v2 + v3) & v7;
    if ((a2 & 0x4000000) == 0)
    {
      if (!mprotect((v6 & v7), v9 - v8, v5))
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v11 = a1;
    v12 = v9 - v8;
    if ((v4 & 0x5000000) == 0x1000000)
    {
      v13 = dword_2573A4560[SHIBYTE(v4)];
      v14 = (v6 & v7);
      v15 = v9 - v8;
      if (!mprotect((v6 & v7), v12, v5 | 1))
      {
        v16 = v11;
        v17 = *v11;
        v18 = v16[1];
        sys_icache_invalidate(v17, v18);
        llvm::sys::ValgrindDiscardTranslations(v17, v18, v19);
        if (!mprotect(v14, v15, v13))
        {
          goto LABEL_17;
        }
      }

      goto LABEL_14;
    }

    if (mprotect((v6 & v7), v12, v5))
    {
LABEL_14:
      v10 = *__error();
      goto LABEL_15;
    }

    v21 = v11;
    v22 = *v11;
    v23 = v21[1];
    sys_icache_invalidate(v22, v23);
    llvm::sys::ValgrindDiscardTranslations(v22, v23, v24);
  }

LABEL_17:
  std::system_category();
  return 0;
}

uint64_t llvm::sys::Memory::releaseMappedMemory(void *a1)
{
  v2 = *a1;
  if (v2 && (v3 = a1[1]) != 0)
  {
    v4 = a1;
    if (munmap(v2, v3))
    {
      v5 = *__error();
      std::generic_category();
      return v5;
    }

    else
    {
      std::system_category();
      result = 0;
      *v4 = 0;
      v4[1] = 0;
    }
  }

  else
  {
    std::system_category();
    return 0;
  }

  return result;
}

uint64_t llvm::sys::Memory::InvalidateInstructionCache(llvm::sys::Memory *this, const void *a2)
{
  sys_icache_invalidate(this, a2);

  return llvm::sys::ValgrindDiscardTranslations(this, a2, v4);
}

unsigned __int8 *llvm::sys::path::begin@<X0>(unsigned __int8 *result@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  v29 = result;
  v30 = a2;
  if (!a2)
  {
    v5 = 0;
    goto LABEL_49;
  }

  if (a3 >= 2)
  {
    v4 = *result;
    if (a2 == 1)
    {
      goto LABEL_35;
    }

    if ((v4 & 0x80) != 0)
    {
      v6 = result;
      v7 = a2;
      v8 = a3;
      v9 = a4;
      v10 = __maskrune(*result, 0x100uLL);
      a2 = v7;
      a4 = v9;
      a3 = v8;
      v11 = v10;
      result = v6;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    else if ((*(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x100) == 0)
    {
      goto LABEL_11;
    }

    if (result[1] == 58)
    {
      v5 = 2;
      goto LABEL_49;
    }
  }

LABEL_11:
  LODWORD(v4) = *result;
  if (a2 >= 3)
  {
    v12 = a3 > 1 && v4 == 92;
    v13 = v12;
    v14 = v4 != 47 && !v13;
    if (!v14 && v4 == result[1])
    {
      v15 = result[2];
      v16 = a3 > 1 && v15 == 92;
      v17 = v16;
      if (v15 != 47 && !v17)
      {
        v18 = 1;
        if (a3 <= 1)
        {
          v19 = "/";
        }

        else
        {
          v18 = 2;
          v19 = "\\/";
        }

        v20 = a3;
        v21 = v18;
        v22 = 2;
LABEL_47:
        v26 = a4;
        first_of = llvm::StringRef::find_first_of(&v29, v19, v21, v22);
        a4 = v26;
        a3 = v20;
        v28 = first_of;
        result = v29;
        v5 = v30;
        if (v30 >= v28)
        {
          v5 = v28;
        }

        goto LABEL_49;
      }
    }
  }

LABEL_35:
  v24 = a3 > 1 && v4 == 92;
  v5 = 1;
  if (v4 != 47 && !v24)
  {
    v25 = 1;
    if (a3 <= 1)
    {
      v19 = "/";
    }

    else
    {
      v25 = 2;
      v19 = "\\/";
    }

    v20 = a3;
    v21 = v25;
    v22 = 0;
    goto LABEL_47;
  }

LABEL_49:
  *(a4 + 16) = result;
  *(a4 + 24) = v5;
  *(a4 + 32) = 0;
  *(a4 + 40) = a3;
  return result;
}

uint64_t llvm::sys::path::end@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 40) = 0;
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 32) = a2;
  return result;
}

void *llvm::sys::path::const_iterator::operator++(void *result)
{
  v1 = result[3];
  v2 = result[4] + v1;
  result[4] = v2;
  v3 = result[1];
  if (v2 == v3)
  {
    result[2] = 0;
    result[3] = 0;
    return result;
  }

  if (v1 <= 2)
  {
    v10 = 0;
    v6 = *(result + 10);
    v11 = *result;
    v12 = *(*result + v2);
    if (v12 != 47)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v4 = result[2];
    v5 = *v4;
    v6 = *(result + 10);
    if (v5 == 47 || (v5 == 92 ? (v7 = v6 >= 2) : (v7 = 0), v7))
    {
      if (v4[1] == v5)
      {
        v8 = v4[2];
        v10 = v6 < 2 || v8 != 92;
        if (v8 == 47)
        {
          v10 = 0;
        }

        v11 = *result;
        v12 = *(*result + v2);
        if (v12 == 47)
        {
          goto LABEL_43;
        }

LABEL_24:
        if (v12 != 92 || v6 < 2)
        {
          goto LABEL_28;
        }

        goto LABEL_43;
      }
    }

    v10 = 0;
    v11 = *result;
    v12 = *(*result + v2);
    if (v12 != 47)
    {
      goto LABEL_24;
    }
  }

LABEL_43:
  if (v10 || v1 && v6 >= 2 && *(result[2] + v1 - 1) == 58)
  {
    v20 = v3 > v2;
    if (v3 < v2)
    {
      v2 = result[1];
    }

    v21 = v11 + v2;
    v22 = v20;
    result[2] = v21;
    result[3] = v22;
    return result;
  }

  while (1)
  {
    v23 = *(v11 + v2);
    v24 = v6 > 1 && v23 == 92;
    v25 = v24;
    if (v23 != 47 && !v25)
    {
      break;
    }

    result[4] = ++v2;
    if (v3 == v2)
    {
      if (v1 != 1 || *result[2] != 47)
      {
        result[4] = v3 - 1;
        result[2] = ".";
        result[3] = 1;
        return result;
      }

      goto LABEL_29;
    }
  }

LABEL_28:
  v3 = v2;
LABEL_29:
  if (v6 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  if (v6 <= 1)
  {
    v15 = "/";
  }

  else
  {
    v15 = "\\/";
  }

  v16 = result;
  first_of = llvm::StringRef::find_first_of(result, v15, v14, v3);
  result = v16;
  v18 = v16[1];
  if (v18 >= v16[4])
  {
    v19 = v16[4];
  }

  else
  {
    v19 = v16[1];
  }

  if (v19 > first_of)
  {
    first_of = v16[4];
  }

  if (first_of >= v18)
  {
    first_of = v16[1];
  }

  v16[2] = *v16 + v19;
  v16[3] = first_of - v19;
  return result;
}

unsigned __int8 **llvm::sys::path::rbegin@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 32) = a2;
  *(a4 + 40) = a3;
  return llvm::sys::path::reverse_iterator::operator++(a4);
}

unsigned __int8 **llvm::sys::path::reverse_iterator::operator++(unsigned __int8 **result)
{
  v1 = *result;
  v2 = result[1];
  v3 = *(result + 10);
  v45 = *result;
  v46 = v2;
  if (v3 >= 2)
  {
    if (v2 < 3)
    {
      goto LABEL_33;
    }

    if (v1[1] == 58)
    {
      v4 = v1[2];
      first_of = 2;
      if (v4 == 47 || v4 == 92)
      {
        goto LABEL_44;
      }
    }
  }

  if (v2 >= 4)
  {
    v6 = *v1;
    v8 = v3 > 1 && v6 == 92;
    v9 = v6 != 47 && !v8;
    if (!v9 && v6 == v1[1])
    {
      v10 = v1[2];
      v11 = v3 > 1 && v10 == 92;
      v12 = v11;
      if (v10 != 47 && !v12)
      {
        if (v3 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = 2;
        }

        if (v3 <= 1)
        {
          v14 = "/";
        }

        else
        {
          v14 = "\\/";
        }

        v15 = result;
        first_of = llvm::StringRef::find_first_of(&v45, v14, v13, 2uLL);
        result = v15;
        goto LABEL_44;
      }
    }

    goto LABEL_35;
  }

LABEL_33:
  if (!v2)
  {
LABEL_43:
    first_of = -1;
    goto LABEL_44;
  }

  v6 = *v1;
LABEL_35:
  first_of = 0;
  v17 = v3 > 1 && v6 == 92;
  if (v6 != 47 && !v17)
  {
    goto LABEL_43;
  }

LABEL_44:
  v18 = result[4];
  if (v18)
  {
    v19 = first_of + 1;
    v20 = result[4];
    while (v19 != v20)
    {
      v21 = v20[*result - 1];
      if (v21 != 47 && (v21 != 92 || *(result + 10) < 2u))
      {
        v19 = v20;
        break;
      }

      if (!--v20)
      {
        goto LABEL_60;
      }
    }

    v23 = *result;
    v24 = result[1];
    if (v18 != v24 || v24 == 0)
    {
      goto LABEL_72;
    }
  }

  else
  {
LABEL_60:
    v19 = 0;
    v23 = *result;
    v24 = result[1];
    if (v18 != v24 || v24 == 0)
    {
      goto LABEL_72;
    }
  }

  v27 = v18[v23 - 1];
  if (v27 == 47 || (v27 == 92 ? (v28 = *(result + 10) >= 2u) : (v28 = 0), v28))
  {
    if (first_of == -1 || v19 - 1 > first_of)
    {
      result[2] = ".";
      result[3] = 1;
      result[4] = v18 - 1;
      return result;
    }
  }

LABEL_72:
  v29 = *(result + 10);
  if (v24 >= v19)
  {
    v30 = v19;
  }

  else
  {
    v30 = v24;
  }

  v45 = v23;
  v46 = v30;
  if (!v30)
  {
    v31 = -1;
LABEL_81:
    v33 = result;
    if (v29 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = 2;
    }

    if (v29 <= 1)
    {
      v35 = "/";
    }

    else
    {
      v35 = "\\/";
    }

    last_of = llvm::StringRef::find_last_of(&v45, v35, v34, v31);
    if (v29 < 2)
    {
      result = v33;
      if (last_of != -1)
      {
        goto LABEL_94;
      }
    }

    else
    {
      result = v33;
      if (last_of == -1)
      {
        v37 = v46 - 1;
        if (v46 < v46 - 1)
        {
          v37 = v46;
        }

        while (v37)
        {
          last_of = v37 - 1;
          v38 = v45[--v37];
          if (v38 == 58)
          {
            goto LABEL_93;
          }
        }

        goto LABEL_106;
      }

LABEL_93:
      if (last_of != -1)
      {
LABEL_94:
        if (last_of != 1 || ((v31 = 0, v39 = *v45, v29 > 1) ? (v40 = v39 == 92) : (v40 = 0), !v40 ? (v41 = 0) : (v41 = 1), v39 != 47 && (v41 & 1) == 0))
        {
          v31 = last_of + 1;
        }

        goto LABEL_107;
      }
    }

LABEL_106:
    v31 = 0;
    goto LABEL_107;
  }

  v31 = v30 - 1;
  v32 = v23[v30 - 1];
  if (v32 != 47 && (v29 < 2 || v32 != 92))
  {
    goto LABEL_81;
  }

LABEL_107:
  v42 = result[1];
  if (v42 >= v31)
  {
    v43 = v31;
  }

  else
  {
    v43 = result[1];
  }

  if (v43 <= v19)
  {
    v44 = v19;
  }

  else
  {
    v44 = v31;
  }

  if (v44 < v42)
  {
    v42 = v44;
  }

  result[2] = &(*result)[v43];
  result[3] = (v42 - v43);
  result[4] = v31;
  return result;
}

uint64_t llvm::sys::path::rend@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 40) = 0;
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = result;
  return result;
}

BOOL llvm::sys::path::reverse_iterator::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && (v2 = *(a1 + 24), v2 == *(a2 + 24)) && (!v2 || (v3 = a1, v4 = a2, v5 = memcmp(*(a1 + 16), *(a2 + 16), v2), a2 = v4, v6 = v5, a1 = v3, !v6)))
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *llvm::sys::path::root_path(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  llvm::sys::path::begin(a1, a2, a3, &v22);
  v19 = v22;
  v20 = v23;
  v21 = v24;
  if (v22 == a1 && v24 == a2)
  {
    return 0;
  }

  if (*(&v23 + 1) < 3uLL)
  {
    v8 = 0;
  }

  else
  {
    v7 = *v23;
    if (v7 == 47 || (v8 = 0, a3 >= 2) && v7 == 92)
    {
      v8 = *(v23 + 1) == v7;
    }
  }

  v10 = 0;
  if (*(&v23 + 1) && a3 >= 2)
  {
    v10 = *(v23 + *(&v23 + 1) - 1) == 58;
  }

  if (v8 || v10)
  {
    llvm::sys::path::const_iterator::operator++(&v19);
    if (v19 == a1 && v21 == a2)
    {
      return v23;
    }

    v11 = *v20;
    v12 = a3 > 1 && v11 == 92;
    v13 = v12;
    if (v11 != 47 && !v13)
    {
      return v23;
    }

    else
    {
      return a1;
    }
  }

  else
  {
    v15 = *v23;
    if (a3 > 1 && v15 == 92 || v15 == 47)
    {
      return v23;
    }

    else
    {
      return 0;
    }
  }
}

unsigned __int8 *llvm::sys::path::root_name(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  llvm::sys::path::begin(a1, a2, a3, &v12);
  if (v12 == a1 && v15 == a2)
  {
    return 0;
  }

  if (v14 < 3)
  {
    v8 = 0;
    if (a3 < 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = *v13;
    if (v7 == 47 || (v8 = 0, a3 >= 2) && v7 == 92)
    {
      v8 = v13[1] == v7;
    }

    if (a3 < 2)
    {
      goto LABEL_16;
    }
  }

  if (v14)
  {
    v10 = v13;
    v11 = v13[v14 - 1] == 58;
    goto LABEL_17;
  }

LABEL_16:
  v11 = 0;
  v10 = v13;
LABEL_17:
  if (v8 || v11)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t llvm::sys::path::root_directory(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  llvm::sys::path::begin(a1, a2, a3, &v21);
  v18 = v21;
  v19 = v22;
  v20 = v23;
  if (v21 == a1 && v23 == a2)
  {
    return 0;
  }

  if (*(&v22 + 1) < 3uLL)
  {
    v8 = 0;
  }

  else
  {
    v7 = *v22;
    if (v7 == 47 || (v8 = 0, a3 >= 2) && v7 == 92)
    {
      v8 = *(v22 + 1) == v7;
    }
  }

  v9 = 0;
  if (*(&v22 + 1) && a3 >= 2)
  {
    v9 = *(v22 + *(&v22 + 1) - 1) == 58;
  }

  if (!v8 && !v9 || (llvm::sys::path::const_iterator::operator++(&v18), v18 == a1) && v20 == a2 || ((result = v19, v11 = *v19, a3 > 1) ? (v12 = v11 == 92) : (v12 = 0), !v12 ? (v13 = 0) : (v13 = 1), v11 != 47 ? (v14 = v13 == 0) : (v14 = 0), v14))
  {
    if (!v8)
    {
      v15 = *v22;
      if (a3 > 1 && v15 == 92 || v15 == 47)
      {
        return v22;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  return result;
}

unsigned __int8 *llvm::sys::path::relative_path(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  llvm::sys::path::root_path(a1, a2, a3);
  if (a2 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a2;
  }

  return &a1[v6];
}

void llvm::sys::path::append(void *a1, llvm::Twine *a2, void **a3, void **a4, const char **a5, void **a6)
{
  v72[4] = *MEMORY[0x277D85DE8];
  v70 = v72;
  v71 = xmmword_25736B040;
  v67 = v69;
  v68 = xmmword_25736B040;
  v64 = v66;
  v65 = xmmword_25736B040;
  v61 = v63;
  v62 = xmmword_25736B040;
  v58 = v60;
  v59 = 0x400000000;
  v10 = *(a3 + 32);
  if (v10 < 2)
  {
    v11 = 0;
    v12 = *(a4 + 32);
    if (v12 < 2)
    {
      goto LABEL_3;
    }

LABEL_67:
    if (*(a4 + 33) == 1)
    {
      if (v12 - 5 < 2)
      {
        v41 = *a4;
        v42 = a4[1];
        if (v11 >= HIDWORD(v59))
        {
          goto LABEL_106;
        }

        goto LABEL_75;
      }

      if (v12 == 4)
      {
        v50 = *(*a4 + 23);
        if (v50 >= 0)
        {
          v41 = *a4;
        }

        else
        {
          v41 = **a4;
        }

        if (v50 >= 0)
        {
          v42 = *(*a4 + 23);
        }

        else
        {
          v42 = (*a4)[1];
        }

        if (v11 < HIDWORD(v59))
        {
          goto LABEL_75;
        }

        goto LABEL_106;
      }

      if (v12 == 3)
      {
        v41 = *a4;
        if (*a4)
        {
          v42 = strlen(*a4);
          if (v11 >= HIDWORD(v59))
          {
            goto LABEL_106;
          }

LABEL_75:
          v43 = v58 + 16 * v11;
          *v43 = v41;
          v43[1] = v42;
          v11 = v59 + 1;
          LODWORD(v59) = v59 + 1;
          v13 = *(a5 + 32);
          if (v13 < 2)
          {
LABEL_4:
            v14 = *(a6 + 32);
            if (v14 < 2)
            {
              goto LABEL_5;
            }

LABEL_85:
            if (*(a6 + 33) == 1)
            {
              if (v14 - 5 < 2)
              {
                v47 = *a6;
                v48 = a6[1];
                if (v11 >= HIDWORD(v59))
                {
                  goto LABEL_110;
                }

                goto LABEL_93;
              }

              if (v14 == 4)
              {
                v52 = *(*a6 + 23);
                if (v52 >= 0)
                {
                  v47 = *a6;
                }

                else
                {
                  v47 = **a6;
                }

                if (v52 >= 0)
                {
                  v48 = *(*a6 + 23);
                }

                else
                {
                  v48 = (*a6)[1];
                }

                if (v11 < HIDWORD(v59))
                {
                  goto LABEL_93;
                }

                goto LABEL_110;
              }

              if (v14 == 3)
              {
                v47 = *a6;
                if (*a6)
                {
                  v48 = strlen(*a6);
                  if (v11 >= HIDWORD(v59))
                  {
                    goto LABEL_110;
                  }

LABEL_93:
                  v49 = v58 + 16 * v11;
                  *v49 = v47;
                  v49[1] = v48;
                  v11 = v59 + 1;
                  LODWORD(v59) = v11;
                  v15 = v58;
                  if (v11)
                  {
                    goto LABEL_6;
                  }

LABEL_94:
                  if (v15 == v60)
                  {
                    goto LABEL_96;
                  }

                  goto LABEL_95;
                }

                v48 = 0;
                if (v11 < HIDWORD(v59))
                {
                  goto LABEL_93;
                }

LABEL_110:
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }
            }

            llvm::Twine::toVector(a6, &v61);
            v47 = v61;
            v48 = v62;
            v11 = v59;
            if (v59 >= HIDWORD(v59))
            {
              goto LABEL_110;
            }

            goto LABEL_93;
          }

          goto LABEL_76;
        }

        v42 = 0;
        if (v11 < HIDWORD(v59))
        {
          goto LABEL_75;
        }

LABEL_106:
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }
    }

    llvm::Twine::toVector(a4, &v67);
    v41 = v67;
    v42 = v68;
    v11 = v59;
    if (v59 >= HIDWORD(v59))
    {
      goto LABEL_106;
    }

    goto LABEL_75;
  }

  if (*(a3 + 33) != 1)
  {
    goto LABEL_56;
  }

  if (v10 - 5 < 2)
  {
    v38 = 0;
    v34 = *a3;
    v36 = a3[1];
    goto LABEL_66;
  }

  if (v10 != 4)
  {
    if (v10 == 3)
    {
      v34 = *a3;
      if (*a3)
      {
        v35 = a4;
        v36 = strlen(*a3);
        a4 = v35;
      }

      else
      {
        v36 = 0;
      }

      v38 = 0;
      goto LABEL_66;
    }

LABEL_56:
    v37 = a4;
    llvm::Twine::toVector(a3, &v70);
    v34 = v70;
    v36 = v71;
    v38 = v59;
    a4 = v37;
    goto LABEL_66;
  }

  v38 = 0;
  v39 = *(*a3 + 23);
  if (v39 >= 0)
  {
    v34 = *a3;
  }

  else
  {
    v34 = **a3;
  }

  if (v39 >= 0)
  {
    v36 = *(*a3 + 23);
  }

  else
  {
    v36 = (*a3)[1];
  }

LABEL_66:
  v40 = (v58 + 16 * v38);
  *v40 = v34;
  v40[1] = v36;
  v11 = v59 + 1;
  LODWORD(v59) = v59 + 1;
  v12 = *(a4 + 32);
  if (v12 >= 2)
  {
    goto LABEL_67;
  }

LABEL_3:
  v13 = *(a5 + 32);
  if (v13 < 2)
  {
    goto LABEL_4;
  }

LABEL_76:
  if (*(a5 + 33) != 1)
  {
    goto LABEL_83;
  }

  if (v13 - 5 < 2)
  {
    v44 = *a5;
    v45 = a5[1];
    if (v11 >= HIDWORD(v59))
    {
      goto LABEL_108;
    }

    goto LABEL_84;
  }

  if (v13 == 4)
  {
    v51 = (*a5)[23];
    if (v51 >= 0)
    {
      v44 = *a5;
    }

    else
    {
      v44 = **a5;
    }

    if (v51 >= 0)
    {
      v45 = (*a5)[23];
    }

    else
    {
      v45 = *(*a5 + 1);
    }

    if (v11 < HIDWORD(v59))
    {
      goto LABEL_84;
    }

LABEL_108:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v13 != 3)
  {
LABEL_83:
    llvm::Twine::toVector(a5, &v64);
    v44 = v64;
    v45 = v65;
    v11 = v59;
    if (v59 >= HIDWORD(v59))
    {
      goto LABEL_108;
    }

    goto LABEL_84;
  }

  v44 = *a5;
  if (!*a5)
  {
    v45 = 0;
    if (v11 < HIDWORD(v59))
    {
      goto LABEL_84;
    }

    goto LABEL_108;
  }

  v45 = strlen(*a5);
  if (v11 >= HIDWORD(v59))
  {
    goto LABEL_108;
  }

LABEL_84:
  v46 = v58 + 16 * v11;
  *v46 = v44;
  v46[1] = v45;
  v11 = v59 + 1;
  LODWORD(v59) = v59 + 1;
  v14 = *(a6 + 32);
  if (v14 >= 2)
  {
    goto LABEL_85;
  }

LABEL_5:
  v15 = v58;
  if (!v11)
  {
    goto LABEL_94;
  }

LABEL_6:
  if (a2 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v17 = "/";
  if (a2 > 1)
  {
    v17 = "\\/";
  }

  v54 = v17;
  v55 = v16;
  if (a2 == 3)
  {
    v18 = 92;
  }

  else
  {
    v18 = 47;
  }

  v53 = v18;
  v19 = a1[1];
  v20 = 16 * v11;
  do
  {
    if (!v19 || ((v21 = *(*a1 + v19 - 1), a2 > 1) ? (v22 = v21 == 92) : (v22 = 0), !v22 ? (v23 = 0) : (v23 = 1), v21 != 47 ? (v24 = v23 == 0) : (v24 = 0), v24))
    {
      v31 = v15[1];
      if (!v31 || (v32 = **v15, v32 != 47) && (a2 < 2 || v32 != 92))
      {
        if (v19)
        {
          v57 = 261;
          v56[0] = *v15;
          v56[1] = v31;
          has_root_name = llvm::sys::path::has_root_name(v56, a2);
          v19 = a1[1];
          if ((has_root_name & 1) == 0)
          {
            if ((v19 + 1) > a1[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            *(*a1 + v19) = v53;
            v19 = a1[1] + 1;
            a1[1] = v19;
          }
        }
      }

      v28 = v15[1];
      if (a1[2] < v19 + v28)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      if (v28)
      {
        v29 = (*a1 + v19);
        v30 = *v15;
        goto LABEL_15;
      }
    }

    else
    {
      first_not_of = llvm::StringRef::find_first_not_of(v15, v54, v55, 0);
      v26 = v15[1];
      if (v26 >= first_not_of)
      {
        v27 = first_not_of;
      }

      else
      {
        v27 = v15[1];
      }

      v28 = &v26[-v27];
      v19 = a1[1];
      if (a1[2] < &v26[v19 - v27])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      if (v26 > first_not_of)
      {
        v29 = (*a1 + v19);
        v30 = (*v15 + v27);
LABEL_15:
        memcpy(v29, v30, v28);
        v19 = a1[1];
      }
    }

    v19 += v28;
    a1[1] = v19;
    v15 += 2;
    v20 -= 16;
  }

  while (v20);
  v15 = v58;
  if (v58 != v60)
  {
LABEL_95:
    free(v15);
  }

LABEL_96:
  if (v61 != v63)
  {
    free(v61);
  }

  if (v64 != v66)
  {
    free(v64);
  }

  if (v67 != v69)
  {
    free(v67);
  }

  if (v70 != v72)
  {
    free(v70);
  }
}

uint64_t llvm::sys::path::has_root_name(unsigned __int8 ***this, const llvm::Twine *a2)
{
  v2 = a2;
  v20[16] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = xmmword_257371870;
  if (*(this + 33) != 1)
  {
    goto LABEL_14;
  }

  v3 = *(this + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v5 = *this;
      v6 = this[1];
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v5 = *this;
    if (*this)
    {
      v6 = strlen(*this);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_15;
  }

  if (v3 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v18);
    v5 = v18;
    v6 = v19;
    goto LABEL_15;
  }

  v4 = *(*this + 23);
  if (v4 >= 0)
  {
    v5 = *this;
  }

  else
  {
    v5 = **this;
  }

  if (v4 >= 0)
  {
    v6 = *(*this + 23);
  }

  else
  {
    v6 = (*this)[1];
  }

LABEL_15:
  llvm::sys::path::begin(v5, v6, v2, &v14);
  if (v14 == v5 && v17 == v6)
  {
    v10 = 0;
    v11 = v18;
    if (v18 == v20)
    {
      return v10;
    }

    goto LABEL_31;
  }

  if (v16 < 3)
  {
    v9 = 0;
  }

  else
  {
    v8 = *v15;
    if (v8 == 47 || (v9 = 0, v2 >= 2) && v8 == 92)
    {
      v9 = v15[1] == v8;
    }
  }

  v12 = 0;
  if (v2 >= 2 && v16)
  {
    v12 = v15[v16 - 1] == 58;
  }

  v10 = (v16 != 0) & (v9 | v12);
  v11 = v18;
  if (v18 != v20)
  {
LABEL_31:
    free(v11);
  }

  return v10;
}

void *llvm::sys::path::append(void *result, uint64_t a2, void *a3, llvm::Twine *a4)
{
  v7 = result;
  while (*a2 != *a3 || *(a2 + 32) != a3[4])
  {
    v16 = 261;
    v8 = *(a2 + 24);
    v15[0] = *(a2 + 16);
    v15[1] = v8;
    v14 = 257;
    v12 = 257;
    v10 = 257;
    llvm::sys::path::append(v7, a4, v15, &v13, &v11, &v9);
    result = llvm::sys::path::const_iterator::operator++(a2);
  }

  return result;
}

unsigned __int8 *llvm::sys::path::parent_path(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

unint64_t anonymous namespace::parent_path_end(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  v43 = a1;
  v44 = a2;
  if (a2)
  {
    v6 = a2 - 1;
    v7 = a1[a2 - 1];
    if (v7 == 47 || a3 >= 2 && v7 == 92)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v6 = -1;
  }

  v8 = a3 > 1;
  if (a3 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (a3 <= 1)
  {
    v10 = "/";
  }

  else
  {
    v10 = "\\/";
  }

  last_of = llvm::StringRef::find_last_of(&v43, v10, v9, v6);
  if (a3 >= 2 && last_of == -1)
  {
    v12 = v44 - 1;
    if (v44 < v44 - 1)
    {
      v12 = v44;
    }

    while (v12)
    {
      last_of = v12 - 1;
      v13 = v43[--v12];
      if (v13 == 58)
      {
        goto LABEL_19;
      }
    }

    v6 = 0;
    goto LABEL_32;
  }

LABEL_19:
  if (last_of == -1)
  {
    v6 = 0;
    if (a2)
    {
      goto LABEL_33;
    }

    goto LABEL_96;
  }

  if (last_of == 1)
  {
    v6 = 0;
    v14 = *v43;
    v15 = a3 > 1 && v14 == 92;
    v16 = v15;
    if (v14 == 47 || v16)
    {
LABEL_32:
      if (a2)
      {
        goto LABEL_33;
      }

LABEL_96:
      v19 = 0;
      goto LABEL_97;
    }
  }

  v6 = last_of + 1;
  if (!a2)
  {
    goto LABEL_96;
  }

LABEL_33:
  v7 = a1[v6];
LABEL_34:
  v18 = a3 > 1 && v7 == 92;
  v19 = v7 == 47 || v18;
  v43 = a1;
  v44 = a2;
  v8 = a3 > 1;
  if (a3 > 1)
  {
    if (a2 < 3)
    {
LABEL_74:
      v23 = *a1;
      goto LABEL_75;
    }

    if (a1[1] == 58)
    {
      v20 = a1[2];
      v21 = 1;
      first_of = 2;
      if (v20 == 47 || v20 == 92)
      {
        goto LABEL_84;
      }
    }
  }

  if (a2 < 4)
  {
    goto LABEL_74;
  }

  v23 = *a1;
  v25 = a3 > 1 && v23 == 92;
  if ((v23 == 47 || v25) && v23 == a1[1])
  {
    v26 = a1[2];
    v27 = a3 > 1 && v26 == 92;
    v28 = v27;
    if (v26 != 47 && !v28)
    {
      if (a3 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (a3 <= 1)
      {
        v30 = "/";
      }

      else
      {
        v30 = "\\/";
      }

      v31 = v6;
      first_of = llvm::StringRef::find_first_of(&v43, v30, v29, 2uLL);
      v6 = v31;
      if (first_of == -1)
      {
        goto LABEL_97;
      }

LABEL_85:
      if (v6 >= first_of)
      {
        v34 = first_of;
      }

      else
      {
        v34 = v6;
      }

      while (v6 > first_of)
      {
        v35 = v6 - 1;
        v36 = a1[v6 - 1];
        v37 = v36 == 92 && v8;
        --v6;
        if (v36 != 47)
        {
          v6 = v35;
          if (!v37)
          {
            v34 = v35 + 1;
            goto LABEL_106;
          }
        }
      }

      goto LABEL_106;
    }
  }

LABEL_75:
  first_of = 0;
  v33 = a3 > 1 && v23 == 92;
  if (v23 == 47 || v33)
  {
    v21 = a3 > 1;
LABEL_84:
    v8 = v21;
    goto LABEL_85;
  }

LABEL_97:
  while (v6)
  {
    v38 = v6 - 1;
    v39 = a1[v6 - 1];
    v40 = v39 == 92 && v8;
    --v6;
    if (v39 != 47)
    {
      v6 = v38;
      if (!v40)
      {
        v34 = v38 + 1;
        goto LABEL_105;
      }
    }
  }

  v34 = 0;
LABEL_105:
  first_of = -1;
LABEL_106:
  if (v34 == first_of)
  {
    v41 = v19;
  }

  else
  {
    v41 = 1;
  }

  if (v41)
  {
    return v34;
  }

  else
  {
    return first_of + 1;
  }
}

unint64_t llvm::sys::path::remove_filename(uint64_t a1, unsigned int a2)
{
  if (result != -1)
  {
    *(a1 + 8) = result;
  }

  return result;
}

void llvm::sys::path::replace_extension(unsigned __int8 **a1, uint64_t a2, unsigned int a3)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1];
  v29 = v31;
  v30 = xmmword_25736B040;
  if (*(a2 + 33) != 1)
  {
    goto LABEL_14;
  }

  v7 = *(a2 + 32);
  if (v7 <= 4)
  {
    switch(v7)
    {
      case 1u:
        v11 = 0;
        v10 = 0;
        goto LABEL_15;
      case 3u:
        v10 = *a2;
        if (*a2)
        {
          v11 = strlen(*a2);
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_15;
      case 4u:
        v8 = *a2;
        v9 = *(*a2 + 23);
        if (v9 >= 0)
        {
          v10 = *a2;
        }

        else
        {
          v10 = *v8;
        }

        if (v9 >= 0)
        {
          v11 = v8[23];
        }

        else
        {
          v11 = *(v8 + 1);
        }

        goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v7 - 5 >= 2)
  {
LABEL_14:
    llvm::Twine::toVector(a2, &v29);
    v10 = v29;
    v11 = v30;
    goto LABEL_15;
  }

  v10 = *a2;
  v11 = *(a2 + 8);
LABEL_15:
  v12 = v6;
  do
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    v13 = v12 - 1;
    v14 = v5[--v12];
  }

  while (v14 != 46);
  v27 = v5;
  v28 = v6;
  v15 = v6 - 1;
  v16 = v5[v6 - 1];
  if (v16 == 47 || a3 >= 2 && v16 == 92)
  {
    if (v13 < v15)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (a3 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  if (a3 <= 1)
  {
    v20 = "/";
  }

  else
  {
    v20 = "\\/";
  }

  last_of = llvm::StringRef::find_last_of(&v27, v20, v19, v15);
  if (a3 >= 2 && last_of == -1)
  {
    v22 = v28 - 1;
    if (v28 < v28 - 1)
    {
      v22 = v28;
    }

    while (v22)
    {
      last_of = v22 - 1;
      v23 = v27[--v22];
      if (v23 == 58)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_22;
  }

LABEL_48:
  if (last_of == -1 || last_of == 1 && ((v24 = *v27, a3 > 1) ? (v25 = v24 == 92) : (v25 = 0), !v25 ? (v26 = 0) : (v26 = 1), v24 == 47 || (v26 & 1) != 0) || v13 >= last_of + 1)
  {
LABEL_22:
    a1[1] = v13;
  }

LABEL_23:
  if (v11)
  {
    v17 = a1[1];
    if (*v10 == 46)
    {
      if (a1[2] >= v17 + v11)
      {
        goto LABEL_26;
      }

LABEL_35:
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    if (v17 + 1 > a1[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    (*a1)[v17] = 46;
    v18 = a1[2];
    v17 = (a1[1] + 1);
    a1[1] = v17;
    if (v18 < v17 + v11)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v17 = a1[1];
    if (a1[2] < v17)
    {
      goto LABEL_35;
    }
  }

LABEL_26:
  if (v11)
  {
    memcpy(&(*a1)[v17], v10, v11);
    v17 = a1[1];
  }

  a1[1] = (v17 + v11);
  if (v29 != v31)
  {
    free(v29);
  }
}

uint64_t llvm::sys::path::replace_path_prefix(const void **a1, unsigned __int8 *a2, size_t a3, const void *a4, uint64_t a5, unsigned int a6)
{
  v27[32] = *MEMORY[0x277D85DE8];
  if (!(a3 | a5))
  {
    return 0;
  }

  v7 = *a1;
  v8 = a1[1];
  if (a6 < 2)
  {
    if (v8 >= a3)
    {
      if (!a3)
      {
        goto LABEL_33;
      }

      v17 = a5;
      v18 = a4;
      v19 = a1;
      v20 = a3;
      if (!memcmp(*a1, a2, a3))
      {
        a5 = v17;
        a3 = v20;
        a1 = v19;
        a4 = v18;
        if (v20 == v17)
        {
          goto LABEL_35;
        }

        goto LABEL_36;
      }
    }
  }

  else if (v8 >= a3)
  {
    if (a3)
    {
      v9 = *a1;
      for (i = a3; i; --i)
      {
        v12 = *v9++;
        v11 = v12;
        v14 = *a2++;
        v13 = v14;
        if (v14 == 47)
        {
          if (v11 != 47 && v11 != 92)
          {
            return 0;
          }
        }

        else
        {
          v16 = v11 == 47 || v11 == 92;
          if ((v16 ^ (v13 == 92)))
          {
            return 0;
          }

          if (v11 != 47 && v11 != 92)
          {
            if ((v11 - 65) < 0x1A)
            {
              v11 += 32;
            }

            if ((v13 - 65) < 0x1A)
            {
              v13 += 32;
            }

            if (v11 != v13)
            {
              return 0;
            }
          }
        }
      }
    }

LABEL_33:
    if (a3 == a5)
    {
      if (!a3)
      {
        return 1;
      }

LABEL_35:
      memmove(v7, a4, a3);
      return 1;
    }

LABEL_36:
    v25 = v27;
    if (v8 >= a3)
    {
      v21 = a3;
    }

    else
    {
      v21 = v8;
    }

    v26 = xmmword_25736B790;
    v23[0] = a4;
    v23[1] = a5;
    v23[2] = &v7[v21];
    v23[3] = v8 - v21;
    v24 = 1285;
    v22 = a1;
    llvm::Twine::toVector(v23, &v25);
    llvm::SmallVectorImpl<char>::swap(v22, &v25);
    if (v25 != v27)
    {
      free(v25);
    }

    return 1;
  }

  return 0;
}

void llvm::sys::path::native(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a2 + 8) = 0;
  llvm::Twine::toVector(a1, a2);

  llvm::sys::path::native(a2, a3);
}

void llvm::sys::path::native(void **a1, unsigned int a2)
{
  v25[16] = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  if (!v2)
  {
    return;
  }

  v3 = *a1;
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      v4 = 92;
    }

    else
    {
      v4 = 47;
    }

    do
    {
      v5 = *v3;
      if (v5 == 92 || v5 == 47)
      {
        *v3 = v4;
      }

      ++v3;
      --v2;
    }

    while (v2);
    if (**a1 != 126)
    {
      return;
    }

    if (a1[1] != 1)
    {
      v11 = *(*a1 + 1);
      if (v11 != 92 && v11 != 47)
      {
        return;
      }
    }

    __src = v25;
    v24 = xmmword_257371870;
    llvm::sys::path::home_directory(&__src);
    v13 = a1;
    v14 = a1[1];
    v15 = v14 - 1;
    if (*(&v24 + 1) < &v14[v24 - 1])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    if (v14 == 1)
    {
      v16 = &v15[v24];
      *&v24 = v16;
      if (&__src == a1)
      {
LABEL_98:
        if (__src != v25)
        {
          free(__src);
        }

        return;
      }
    }

    else
    {
      memcpy(__src + v24, *a1 + 1, (v14 - 1));
      v13 = a1;
      v16 = &v15[v24];
      *&v24 = v16;
      if (&__src == a1)
      {
        goto LABEL_98;
      }
    }

    v22 = v13[1];
    if (v22 >= v16)
    {
      if (!v16)
      {
LABEL_97:
        v13[1] = v16;
        goto LABEL_98;
      }

      memmove(*v13, __src, v16);
    }

    else
    {
      if (v13[2] < v16)
      {
        v13[1] = 0;
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      if (v22)
      {
        memmove(*v13, __src, v13[1]);
        v13 = a1;
      }

      if (v24 == v22)
      {
        goto LABEL_97;
      }

      memcpy(*v13 + v22, __src + v22, v24 - v22);
    }

    v13 = a1;
    goto LABEL_97;
  }

  v6 = *a1;
  if (v2 < 8)
  {
    goto LABEL_81;
  }

  if (v2 < 0x10)
  {
    v7 = 0;
    goto LABEL_14;
  }

  v7 = v2 & 0xFFFFFFFFFFFFFFF0;
  v17 = v3 + 7;
  v18.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
  v18.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
  v19 = v2 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v20 = vceqq_s8(*(v17 - 7), v18);
    if (v20.i8[0])
    {
      *(v17 - 7) = 47;
      if ((v20.i8[1] & 1) == 0)
      {
LABEL_47:
        if ((v20.i8[2] & 1) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_64;
      }
    }

    else if ((v20.i8[1] & 1) == 0)
    {
      goto LABEL_47;
    }

    *(v17 - 6) = 47;
    if ((v20.i8[2] & 1) == 0)
    {
LABEL_48:
      if ((v20.i8[3] & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_65;
    }

LABEL_64:
    *(v17 - 5) = 47;
    if ((v20.i8[3] & 1) == 0)
    {
LABEL_49:
      if ((v20.i8[4] & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_66;
    }

LABEL_65:
    *(v17 - 4) = 47;
    if ((v20.i8[4] & 1) == 0)
    {
LABEL_50:
      if ((v20.i8[5] & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_67;
    }

LABEL_66:
    *(v17 - 3) = 47;
    if ((v20.i8[5] & 1) == 0)
    {
LABEL_51:
      if ((v20.i8[6] & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_68;
    }

LABEL_67:
    *(v17 - 2) = 47;
    if ((v20.i8[6] & 1) == 0)
    {
LABEL_52:
      if ((v20.i8[7] & 1) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_69;
    }

LABEL_68:
    *(v17 - 1) = 47;
    if ((v20.i8[7] & 1) == 0)
    {
LABEL_53:
      if ((v20.i8[8] & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_70;
    }

LABEL_69:
    *v17 = 47;
    if ((v20.i8[8] & 1) == 0)
    {
LABEL_54:
      if ((v20.i8[9] & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_71;
    }

LABEL_70:
    v17[1] = 47;
    if ((v20.i8[9] & 1) == 0)
    {
LABEL_55:
      if ((v20.i8[10] & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_72;
    }

LABEL_71:
    v17[2] = 47;
    if ((v20.i8[10] & 1) == 0)
    {
LABEL_56:
      if ((v20.i8[11] & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_73;
    }

LABEL_72:
    v17[3] = 47;
    if ((v20.i8[11] & 1) == 0)
    {
LABEL_57:
      if ((v20.i8[12] & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_74;
    }

LABEL_73:
    v17[4] = 47;
    if ((v20.i8[12] & 1) == 0)
    {
LABEL_58:
      if ((v20.i8[13] & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_75;
    }

LABEL_74:
    v17[5] = 47;
    if ((v20.i8[13] & 1) == 0)
    {
LABEL_59:
      if (v20.i8[14])
      {
        goto LABEL_76;
      }

      goto LABEL_60;
    }

LABEL_75:
    v17[6] = 47;
    if (v20.i8[14])
    {
LABEL_76:
      v17[7] = 47;
      if ((v20.i8[15] & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_77;
    }

LABEL_60:
    if ((v20.i8[15] & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_77:
    v17[8] = 47;
LABEL_44:
    v17 += 16;
    v19 -= 16;
  }

  while (v19);
  if (v2 == v7)
  {
    return;
  }

  if ((v2 & 8) == 0)
  {
    v6 = &v3[v7];
    goto LABEL_81;
  }

LABEL_14:
  v6 = &v3[v2 & 0xFFFFFFFFFFFFFFF8];
  v8 = v7 - (v2 & 0xFFFFFFFFFFFFFFF8);
  v9 = &v3[v7 + 3];
  while (2)
  {
    v10 = vceq_s8(*(v9 - 3), 0x5C5C5C5C5C5C5C5CLL);
    if (v10.i8[0])
    {
      *(v9 - 3) = 47;
      if (v10.i8[1])
      {
        goto LABEL_26;
      }

LABEL_18:
      if ((v10.i8[2] & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_27:
      *(v9 - 1) = 47;
      if (v10.i8[3])
      {
        goto LABEL_28;
      }

LABEL_20:
      if ((v10.i8[4] & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_29:
      v9[1] = 47;
      if (v10.i8[5])
      {
        goto LABEL_30;
      }

LABEL_22:
      if ((v10.i8[6] & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_31:
      v9[3] = 47;
      if (v10.i8[7])
      {
LABEL_32:
        v9[4] = 47;
      }
    }

    else
    {
      if ((v10.i8[1] & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_26:
      *(v9 - 2) = 47;
      if (v10.i8[2])
      {
        goto LABEL_27;
      }

LABEL_19:
      if ((v10.i8[3] & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_28:
      *v9 = 47;
      if (v10.i8[4])
      {
        goto LABEL_29;
      }

LABEL_21:
      if ((v10.i8[5] & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_30:
      v9[2] = 47;
      if (v10.i8[6])
      {
        goto LABEL_31;
      }

LABEL_23:
      if (v10.i8[7])
      {
        goto LABEL_32;
      }
    }

    v9 += 8;
    v8 += 8;
    if (v8)
    {
      continue;
    }

    break;
  }

  if (v2 == (v2 & 0xFFFFFFFFFFFFFFF8))
  {
    return;
  }

LABEL_81:
  v21 = &v3[v2];
  do
  {
    if (*v6 == 92)
    {
      *v6 = 47;
    }

    ++v6;
  }

  while (v6 != v21);
}

uint64_t llvm::sys::path::home_directory(uint64_t a1)
{
  v2 = getenv("HOME");
  if (!v2)
  {
    sysconf(71);
    operator new[]();
  }

  v3 = v2;
  *(a1 + 8) = 0;
  v4 = strlen(v2);
  v5 = v4;
  if (*(a1 + 16) < v4)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v6 = 0;
  if (v4)
  {
    memcpy(*a1, v3, v4);
    v6 = *(a1 + 8);
  }

  *(a1 + 8) = v6 + v5;
  return 1;
}

void *llvm::sys::path::convert_to_slash@<X0>(void *result@<X0>, size_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  if (a3 <= 1)
  {
    if (a2 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (a2 >= 0x17)
      {
        operator new();
      }

      *(a4 + 23) = a2;
      if (a2)
      {
        result = memmove(a4, result, a2);
      }

      *(a4 + a2) = 0;
      return result;
    }

LABEL_87:
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (!result)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return result;
  }

  if (a2 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_87;
  }

  if (a2 >= 0x17)
  {
    operator new();
  }

  *(a4 + 23) = a2;
  if (a2)
  {
    result = memmove(a4, result, a2);
  }

  *(a4 + a2) = 0;
  v6 = *a4;
  v7 = a4[1];
  if (*(a4 + 23) >= 0)
  {
    v6 = a4;
    v7 = *(a4 + 23);
  }

  if (!v7)
  {
    return result;
  }

  v8 = v6;
  if (v7 < 8)
  {
LABEL_83:
    v17 = &v6[v7];
    do
    {
      if (*v8 == 92)
      {
        *v8 = 47;
      }

      ++v8;
    }

    while (v8 != v17);
    return result;
  }

  if (v7 < 0x10)
  {
    v9 = 0;
    goto LABEL_24;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFF0;
  v13 = v6 + 7;
  v14.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
  v14.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
  v15 = v7 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v16 = vceqq_s8(*(v13 - 7), v14);
    if (v16.i8[0])
    {
      *(v13 - 7) = 47;
      if ((v16.i8[1] & 1) == 0)
      {
LABEL_49:
        if ((v16.i8[2] & 1) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_66;
      }
    }

    else if ((v16.i8[1] & 1) == 0)
    {
      goto LABEL_49;
    }

    *(v13 - 6) = 47;
    if ((v16.i8[2] & 1) == 0)
    {
LABEL_50:
      if ((v16.i8[3] & 1) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_67;
    }

LABEL_66:
    *(v13 - 5) = 47;
    if ((v16.i8[3] & 1) == 0)
    {
LABEL_51:
      if ((v16.i8[4] & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_68;
    }

LABEL_67:
    *(v13 - 4) = 47;
    if ((v16.i8[4] & 1) == 0)
    {
LABEL_52:
      if ((v16.i8[5] & 1) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_69;
    }

LABEL_68:
    *(v13 - 3) = 47;
    if ((v16.i8[5] & 1) == 0)
    {
LABEL_53:
      if ((v16.i8[6] & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_70;
    }

LABEL_69:
    *(v13 - 2) = 47;
    if ((v16.i8[6] & 1) == 0)
    {
LABEL_54:
      if ((v16.i8[7] & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_71;
    }

LABEL_70:
    *(v13 - 1) = 47;
    if ((v16.i8[7] & 1) == 0)
    {
LABEL_55:
      if ((v16.i8[8] & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_72;
    }

LABEL_71:
    *v13 = 47;
    if ((v16.i8[8] & 1) == 0)
    {
LABEL_56:
      if ((v16.i8[9] & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_73;
    }

LABEL_72:
    v13[1] = 47;
    if ((v16.i8[9] & 1) == 0)
    {
LABEL_57:
      if ((v16.i8[10] & 1) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_74;
    }

LABEL_73:
    v13[2] = 47;
    if ((v16.i8[10] & 1) == 0)
    {
LABEL_58:
      if ((v16.i8[11] & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_75;
    }

LABEL_74:
    v13[3] = 47;
    if ((v16.i8[11] & 1) == 0)
    {
LABEL_59:
      if ((v16.i8[12] & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_76;
    }

LABEL_75:
    v13[4] = 47;
    if ((v16.i8[12] & 1) == 0)
    {
LABEL_60:
      if ((v16.i8[13] & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_77;
    }

LABEL_76:
    v13[5] = 47;
    if ((v16.i8[13] & 1) == 0)
    {
LABEL_61:
      if (v16.i8[14])
      {
        goto LABEL_78;
      }

      goto LABEL_62;
    }

LABEL_77:
    v13[6] = 47;
    if (v16.i8[14])
    {
LABEL_78:
      v13[7] = 47;
      if ((v16.i8[15] & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_79;
    }

LABEL_62:
    if ((v16.i8[15] & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_79:
    v13[8] = 47;
LABEL_46:
    v13 += 16;
    v15 -= 16;
  }

  while (v15);
  if (v7 == v9)
  {
    return result;
  }

  if ((v7 & 8) == 0)
  {
    v8 = &v6[v9];
    goto LABEL_83;
  }

LABEL_24:
  v8 = &v6[v7 & 0xFFFFFFFFFFFFFFF8];
  v10 = v9 - (v7 & 0xFFFFFFFFFFFFFFF8);
  v11 = &v6[v9 + 3];
  while (2)
  {
    v12 = vceq_s8(*(v11 - 3), 0x5C5C5C5C5C5C5C5CLL);
    if (v12.i8[0])
    {
      *(v11 - 3) = 47;
      if (v12.i8[1])
      {
        goto LABEL_36;
      }

LABEL_28:
      if ((v12.i8[2] & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_37:
      *(v11 - 1) = 47;
      if (v12.i8[3])
      {
        goto LABEL_38;
      }

LABEL_30:
      if ((v12.i8[4] & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_39:
      v11[1] = 47;
      if (v12.i8[5])
      {
        goto LABEL_40;
      }

LABEL_32:
      if ((v12.i8[6] & 1) == 0)
      {
        goto LABEL_33;
      }

LABEL_41:
      v11[3] = 47;
      if (v12.i8[7])
      {
LABEL_42:
        v11[4] = 47;
      }
    }

    else
    {
      if ((v12.i8[1] & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_36:
      *(v11 - 2) = 47;
      if (v12.i8[2])
      {
        goto LABEL_37;
      }

LABEL_29:
      if ((v12.i8[3] & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_38:
      *v11 = 47;
      if (v12.i8[4])
      {
        goto LABEL_39;
      }

LABEL_31:
      if ((v12.i8[5] & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_40:
      v11[2] = 47;
      if (v12.i8[6])
      {
        goto LABEL_41;
      }

LABEL_33:
      if (v12.i8[7])
      {
        goto LABEL_42;
      }
    }

    v11 += 8;
    v10 += 8;
    if (v10)
    {
      continue;
    }

    break;
  }

  if (v7 != (v7 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_83;
  }

  return result;
}

uint64_t llvm::sys::path::filename(unsigned __int8 *a1, unsigned __int8 *a2, int a3)
{
  v5 = 0;
  v6 = 0;
  v4[0] = a1;
  v4[1] = a2;
  v7 = a2;
  v8 = a3;
  llvm::sys::path::reverse_iterator::operator++(v4);
  return v5;
}

uint64_t llvm::sys::path::stem(unsigned __int8 *a1, unsigned __int8 *a2, int a3)
{
  v7 = 0;
  v8 = 0;
  v6[0] = a1;
  v6[1] = a2;
  v9 = a2;
  v10 = a3;
  llvm::sys::path::reverse_iterator::operator++(v6);
  result = v7;
  v4 = v8;
  do
  {
    if (!v4)
    {
      break;
    }

    v5 = *(v7 + v4-- - 1);
  }

  while (v5 != 46);
  return result;
}

char *llvm::sys::path::extension(unsigned __int8 *a1, unsigned __int8 *a2, int a3)
{
  v7 = 0;
  v8 = 0;
  v6[0] = a1;
  v6[1] = a2;
  v9 = a2;
  v10 = a3;
  llvm::sys::path::reverse_iterator::operator++(v6);
  v3 = 0;
  do
  {
    if (!(v8 + v3))
    {
      return 0;
    }

    v4 = *(v7 + v8 + v3-- - 1);
  }

  while (v4 != 46);
  if (v8 == 2)
  {
    if (*v7 == 11822)
    {
      return 0;
    }
  }

  else if (v8 == 1 && *v7 == 46)
  {
    return 0;
  }

  return v7 + v8 + v3;
}

const char *llvm::sys::path::get_separator(llvm::sys::path *this)
{
  if (this == 3)
  {
    return "\";
  }

  else
  {
    return "/";
  }
}

BOOL llvm::sys::path::has_root_directory(unsigned __int8 ***this, const llvm::Twine *a2)
{
  v2 = a2;
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = xmmword_257371870;
  if (*(this + 33) != 1)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v12);
    v6 = v12;
    v7 = v13;
    goto LABEL_15;
  }

  v3 = *(this + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v7 = this[1];
      v6 = *this;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    goto LABEL_20;
  }

  if (v3 != 3)
  {
    if (v3 == 4)
    {
      v4 = *(*this + 23);
      v5 = (*this)[1];
      if (v4 >= 0)
      {
        v6 = *this;
      }

      else
      {
        v6 = **this;
      }

      if (v4 >= 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = v5;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = *this;
  if (!*this)
  {
LABEL_20:
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v7 = strlen(*this);
    v6 = v11;
  }

LABEL_15:
  llvm::sys::path::root_directory(v6, v7, v2);
  v9 = v8;
  if (v12 != v14)
  {
    free(v12);
  }

  return v9 != 0;
}

BOOL llvm::sys::path::has_root_path(unsigned __int8 ***this, const llvm::Twine *a2)
{
  v2 = a2;
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = xmmword_257371870;
  if (*(this + 33) != 1)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v12);
    v6 = v12;
    v7 = v13;
    goto LABEL_15;
  }

  v3 = *(this + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v7 = this[1];
      v6 = *this;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    goto LABEL_20;
  }

  if (v3 != 3)
  {
    if (v3 == 4)
    {
      v4 = *(*this + 23);
      v5 = (*this)[1];
      if (v4 >= 0)
      {
        v6 = *this;
      }

      else
      {
        v6 = **this;
      }

      if (v4 >= 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = v5;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = *this;
  if (!*this)
  {
LABEL_20:
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v7 = strlen(*this);
    v6 = v11;
  }

LABEL_15:
  llvm::sys::path::root_path(v6, v7, v2);
  v9 = v8;
  if (v12 != v14)
  {
    free(v12);
  }

  return v9 != 0;
}

BOOL llvm::sys::path::has_relative_path(unsigned __int8 ***this, const llvm::Twine *a2)
{
  v2 = a2;
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = xmmword_257371870;
  if (*(this + 33) != 1)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v12);
    v6 = v12;
    v7 = v13;
    goto LABEL_15;
  }

  v3 = *(this + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v7 = this[1];
      v6 = *this;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    goto LABEL_20;
  }

  if (v3 != 3)
  {
    if (v3 == 4)
    {
      v4 = *(*this + 23);
      v5 = (*this)[1];
      if (v4 >= 0)
      {
        v6 = *this;
      }

      else
      {
        v6 = **this;
      }

      if (v4 >= 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = v5;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = *this;
  if (!*this)
  {
LABEL_20:
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v7 = strlen(*this);
    v6 = v11;
  }

LABEL_15:
  llvm::sys::path::root_path(v6, v7, v2);
  v9 = v8;
  if (v12 != v14)
  {
    free(v12);
  }

  return v7 > v9;
}

BOOL llvm::sys::path::has_filename(unsigned __int8 ***this, const llvm::Twine *a2)
{
  v2 = a2;
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = xmmword_257371870;
  if (*(this + 33) != 1)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v13);
    v5 = v13;
    v6 = v14;
    goto LABEL_15;
  }

  v3 = *(this + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v5 = *this;
      v6 = this[1];
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  switch(v3)
  {
    case 1u:
      v6 = 0;
      v5 = 0;
      break;
    case 3u:
      v5 = *this;
      if (*this)
      {
        v6 = strlen(*this);
      }

      else
      {
        v6 = 0;
      }

      break;
    case 4u:
      v4 = *(*this + 23);
      if (v4 >= 0)
      {
        v5 = *this;
      }

      else
      {
        v5 = **this;
      }

      if (v4 >= 0)
      {
        v6 = *(*this + 23);
      }

      else
      {
        v6 = (*this)[1];
      }

      break;
    default:
      goto LABEL_14;
  }

LABEL_15:
  v9[2] = 0;
  v10 = 0;
  v9[0] = v5;
  v9[1] = v6;
  v11 = v6;
  v12 = v2;
  llvm::sys::path::reverse_iterator::operator++(v9);
  v7 = v10;
  if (v13 != v15)
  {
    free(v13);
  }

  return v7 != 0;
}

BOOL llvm::sys::path::has_parent_path(unsigned __int8 ***this, const llvm::Twine *a2)
{
  v2 = a2;
  v15[16] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = xmmword_257371870;
  if (*(this + 33) != 1)
  {
    goto LABEL_14;
  }

  v3 = *(this + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v7 = this[1];
      v6 = *this;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
LABEL_29:
    v7 = 0;
    v6 = 0;
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v12 = *this;
    if (*this)
    {
      v7 = strlen(*this);
      v6 = v12;
      goto LABEL_15;
    }

    goto LABEL_29;
  }

  if (v3 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v13);
    v6 = v13;
    v7 = v14;
    goto LABEL_15;
  }

  v4 = *(*this + 23);
  v5 = (*this)[1];
  if (v4 >= 0)
  {
    v6 = *this;
  }

  else
  {
    v6 = **this;
  }

  if (v4 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

LABEL_15:
  if (v13 != v15)
  {
    free(v13);
  }

  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  return v8 != -1 && v9 != 0;
}

BOOL llvm::sys::path::has_stem(unsigned __int8 ***this, const llvm::Twine *a2)
{
  v2 = a2;
  v18[16] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = xmmword_257371870;
  if (*(this + 33) != 1)
  {
    goto LABEL_14;
  }

  v3 = *(this + 32);
  if (v3 <= 4)
  {
    switch(v3)
    {
      case 1u:
        v6 = 0;
        v5 = 0;
        goto LABEL_15;
      case 3u:
        v5 = *this;
        if (*this)
        {
          v6 = strlen(*this);
        }

        else
        {
          v6 = 0;
        }

        goto LABEL_15;
      case 4u:
        v4 = *(*this + 23);
        if (v4 >= 0)
        {
          v5 = *this;
        }

        else
        {
          v5 = **this;
        }

        if (v4 >= 0)
        {
          v6 = *(*this + 23);
        }

        else
        {
          v6 = (*this)[1];
        }

        goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 - 5 >= 2)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v16);
    v5 = v16;
    v6 = v17;
    goto LABEL_15;
  }

  v5 = *this;
  v6 = this[1];
LABEL_15:
  v12 = 0;
  v13 = 0;
  v11[0] = v5;
  v11[1] = v6;
  v14 = v6;
  v15 = v2;
  llvm::sys::path::reverse_iterator::operator++(v11);
  v7 = v13;
  do
  {
    if (!v7)
    {
      v8 = v13;
      goto LABEL_25;
    }

    v8 = v7 - 1;
    v9 = *(v12 + --v7);
  }

  while (v9 != 46);
  if (v13 == 2)
  {
    if (*v12 != 11822)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v13 == 1 && *v12 == 46)
  {
LABEL_24:
    v8 = 2;
  }

LABEL_25:
  if (v16 != v18)
  {
    free(v16);
  }

  return v8 != 0;
}

uint64_t llvm::sys::path::has_extension(unsigned __int8 ***this, const llvm::Twine *a2)
{
  v2 = a2;
  v19[16] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = xmmword_257371870;
  if (*(this + 33) != 1)
  {
    goto LABEL_14;
  }

  v3 = *(this + 32);
  if (v3 <= 4)
  {
    switch(v3)
    {
      case 1u:
        v6 = 0;
        v5 = 0;
        goto LABEL_15;
      case 3u:
        v5 = *this;
        if (*this)
        {
          v6 = strlen(*this);
        }

        else
        {
          v6 = 0;
        }

        goto LABEL_15;
      case 4u:
        v4 = *(*this + 23);
        if (v4 >= 0)
        {
          v5 = *this;
        }

        else
        {
          v5 = **this;
        }

        if (v4 >= 0)
        {
          v6 = *(*this + 23);
        }

        else
        {
          v6 = (*this)[1];
        }

        goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 - 5 >= 2)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v17);
    v5 = v17;
    v6 = v18;
    goto LABEL_15;
  }

  v5 = *this;
  v6 = this[1];
LABEL_15:
  v13 = 0;
  v14 = 0;
  v12[0] = v5;
  v12[1] = v6;
  v15 = v6;
  v16 = v2;
  llvm::sys::path::reverse_iterator::operator++(v12);
  v7 = v14;
  do
  {
    if (!v7)
    {
      goto LABEL_21;
    }

    v8 = v13 + v7--;
  }

  while (*(v8 - 1) != 46);
  if (v14 == 2)
  {
    if (*v13 == 11822)
    {
      goto LABEL_21;
    }
  }

  else if (v14 == 1 && *v13 == 46)
  {
LABEL_21:
    v9 = 0;
    v10 = v17;
    if (v17 == v19)
    {
      return v9;
    }

    goto LABEL_22;
  }

  v9 = 1;
  v10 = v17;
  if (v17 != v19)
  {
LABEL_22:
    free(v10);
  }

  return v9;
}

uint64_t llvm::sys::path::is_absolute(llvm::sys::path *this, const llvm::Twine *a2)
{
  v16[16] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v15 = xmmword_257371870;
  if (*(this + 33) != 1)
  {
    goto LABEL_14;
  }

  v3 = *(this + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v5 = *this;
      v6 = *(this + 1);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v5 = *this;
    if (*this)
    {
      v6 = strlen(*this);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_15;
  }

  if (v3 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v14);
    v5 = v14;
    v6 = v15;
    goto LABEL_15;
  }

  v4 = *(*this + 23);
  if (v4 >= 0)
  {
    v5 = *this;
  }

  else
  {
    v5 = **this;
  }

  if (v4 >= 0)
  {
    v6 = *(*this + 23);
  }

  else
  {
    v6 = *(*this + 8);
  }

LABEL_15:
  v13 = 261;
  v11 = v5;
  v12 = v6;
  has_root_directory = llvm::sys::path::has_root_directory(&v11, a2);
  if (a2 < 2)
  {
    has_root_name = 1;
    v9 = v14;
    if (v14 == v16)
    {
      return has_root_directory & has_root_name;
    }

    goto LABEL_19;
  }

  v13 = 261;
  v11 = v5;
  v12 = v6;
  has_root_name = llvm::sys::path::has_root_name(&v11, a2);
  v9 = v14;
  if (v14 != v16)
  {
LABEL_19:
    free(v9);
  }

  return has_root_directory & has_root_name;
}

uint64_t llvm::sys::path::is_absolute_gnu(const char **this, const llvm::Twine *a2)
{
  v2 = a2;
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = xmmword_257371870;
  if (*(this + 33) == 1)
  {
    v3 = *(this + 32);
    if (v3 <= 4)
    {
      if (v3 != 1)
      {
        if (v3 != 3)
        {
          if (v3 == 4)
          {
            v4 = (*this)[23];
            if (v4 >= 0)
            {
              v5 = *this;
            }

            else
            {
              v5 = **this;
            }

            if (v4 >= 0)
            {
              v6 = (*this)[23];
            }

            else
            {
              v6 = *(*this + 1);
            }

            v7 = v14;
            if (!v6)
            {
              goto LABEL_35;
            }

            goto LABEL_18;
          }

          goto LABEL_17;
        }

        v5 = *this;
        if (*this)
        {
          v6 = strlen(*this);
          v7 = v14;
          if (!v6)
          {
            goto LABEL_35;
          }

          goto LABEL_18;
        }
      }

      v7 = v14;
      goto LABEL_35;
    }

    if (v3 - 5 < 2)
    {
      v5 = *this;
      v6 = this[1];
      v7 = v14;
      if (!v6)
      {
        goto LABEL_35;
      }

      goto LABEL_18;
    }
  }

LABEL_17:
  llvm::Twine::toVector(this, &v12);
  v7 = v12;
  v6 = v13;
  v5 = v12;
  if (!v13)
  {
    goto LABEL_35;
  }

LABEL_18:
  v8 = *v5;
  if (v8 == 47 || v2 >= 2 && v8 == 92 || v6 != 1 && (*v5 ? (v10 = v2 >= 2) : (v10 = 0), v10 && v5[1] == 58))
  {
    v9 = 1;
    if (v7 == v14)
    {
      return v9;
    }

    goto LABEL_36;
  }

LABEL_35:
  v9 = 0;
  if (v7 != v14)
  {
LABEL_36:
    free(v7);
  }

  return v9;
}

_BYTE *llvm::sys::path::remove_leading_dotslash(_BYTE *result, unint64_t a2, unsigned int a3)
{
  if (a2 >= 3)
  {
    v3 = result;
    if (a3 > 1)
    {
      while (*v3 == 46)
      {
        v4 = v3[1];
        if (v4 != 92 && v4 != 47)
        {
          break;
        }

        result = v3 + 2;
        v5 = a2 - 2;
        while (1)
        {
          v6 = *result;
          if (v6 != 92 && v6 != 47)
          {
            break;
          }

          ++result;
          if (!--v5)
          {
            return &v3[a2];
          }
        }

        v3 = result;
        a2 = v5;
        if (v5 <= 2)
        {
          return result;
        }
      }

      return v3;
    }

    while (2)
    {
      if (*v3 != 46 || v3[1] != 47)
      {
        return v3;
      }

      result = v3 + 2;
      v7 = a2 - 2;
      while (*result == 47)
      {
        ++result;
        if (!--v7)
        {
          return &v3[a2];
        }
      }

      v3 = result;
      a2 = v7;
      if (v7 > 2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t llvm::sys::path::remove_dots(unsigned __int8 **a1, int a2, unsigned int a3)
{
  v3 = a3;
  v51[32] = *MEMORY[0x277D85DE8];
  if (a3 <= 1)
  {
    a3 = 1;
  }

  v6 = *a1;
  v5 = a1[1];
  v44 = v6;
  v45 = v5;
  v49 = v51;
  v50 = 0x1000000000;
  v41 = a3;
  __src = llvm::sys::path::root_path(v6, v5, a3);
  v8 = v7;
  if (v7)
  {
    if (v5 >= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    v5 -= v9;
    v44 = &v6[v9];
    v45 = v5;
  }

  v10 = 0;
  if (v5)
  {
    if (v3 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v3 <= 1)
    {
      v12 = "/";
    }

    else
    {
      v12 = "\\/";
    }

    if (v3 == 3)
    {
      v13 = 92;
    }

    else
    {
      v13 = 47;
    }

    do
    {
      while (1)
      {
        first_of = llvm::StringRef::find_first_of(&v44, v12, v11, 0);
        v17 = v44;
        v16 = v45;
        if (first_of == -1)
        {
          v18 = v45;
        }

        else
        {
          v18 = first_of;
        }

        if (v45 >= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = v45;
        }

        v20 = v45 - v19;
        v21 = &v44[v19];
        v44 += v19;
        v45 -= v19;
        if (v16 > v18)
        {
          v22 = *v21;
          v44 = v21 + 1;
          v45 = v20 - 1;
          v24 = v20 == 1 || v22 != v13;
          v10 |= v24;
        }

        if (!v19)
        {
          goto LABEL_19;
        }

        if (v19 == 1)
        {
          break;
        }

        v25 = v19 != 2 || a2 == 0;
        if (v25 || *v17 != 11822)
        {
          goto LABEL_48;
        }

        if (!v50 || (v27 = v49 + 16 * v50, *(v27 - 1) == 2) && **(v27 - 2) == 11822)
        {
          if (v8)
          {
LABEL_19:
            v10 = 1;
            if (!v45)
            {
              goto LABEL_57;
            }
          }

          else
          {
            if (v50 >= HIDWORD(v50))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v14 = (v49 + 16 * v50);
            *v14 = v17;
            v14[1] = 2;
            v10 = 1;
            LODWORD(v50) = v50 + 1;
            if (!v45)
            {
              goto LABEL_57;
            }
          }
        }

        else
        {
          v10 = 1;
          LODWORD(v50) = v50 - 1;
          if (!v45)
          {
            goto LABEL_57;
          }
        }
      }

      if (*v17 == 46)
      {
        goto LABEL_19;
      }

LABEL_48:
      if (v50 >= HIDWORD(v50))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v26 = (v49 + 16 * v50);
      *v26 = v17;
      v26[1] = v19;
      LODWORD(v50) = v50 + 1;
    }

    while (v45);
  }

LABEL_57:
  __s2 = v48;
  v47 = xmmword_25736B790;
  if (v8 >= 0x101)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v28 = 0;
  if (v8)
  {
    memcpy(__s2, __src, v8);
    v28 = v47;
  }

  v29 = v28 + v8;
  *&v47 = v28 + v8;
  if (v3 >= 2)
  {
    llvm::sys::path::native(&__s2, v41);
    v29 = v47;
  }

  if (v8 != v29)
  {
    goto LABEL_66;
  }

  v30 = __s2;
  if (!v8)
  {
    if ((v10 & 1) == 0)
    {
      goto LABEL_88;
    }

LABEL_66:
    if (v50)
    {
      v31 = *(v49 + 1);
      if (*(&v47 + 1) < v31 + v29)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      if (v31)
      {
        memcpy(__s2 + v29, *v49, v31);
        v29 = v47;
      }

      v32 = v29 + v31;
      *&v47 = v29 + v31;
      if (v50 != 1)
      {
        v35 = v49 + 16 * v50;
        v36 = v49 + 16;
        if (v3 == 3)
        {
          v37 = 92;
        }

        else
        {
          v37 = 47;
        }

        do
        {
          v39 = *v36;
          v38 = *(v36 + 1);
          if (v32 + 1 > *(&v47 + 1))
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          *(__s2 + v32) = v37;
          v40 = v47 + 1;
          *&v47 = v40;
          if (*(&v47 + 1) < v40 + v38)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          if (v38)
          {
            memcpy(__s2 + v40, v39, v38);
            v40 = v47;
          }

          v32 = v40 + v38;
          *&v47 = v32;
          v36 += 16;
        }

        while (v36 != v35);
      }
    }

    llvm::SmallVectorImpl<char>::swap(a1, &__s2);
    v33 = 1;
    v30 = __s2;
    if (__s2 != v48)
    {
      goto LABEL_73;
    }

    goto LABEL_74;
  }

  if (v10 & 1 | (memcmp(__src, __s2, v8) != 0))
  {
    goto LABEL_66;
  }

LABEL_88:
  v33 = 0;
  if (v30 != v48)
  {
LABEL_73:
    free(v30);
  }

LABEL_74:
  if (v49 != v51)
  {
    free(v49);
  }

  return v33;
}

uint64_t llvm::sys::fs::getUniqueID(uint64_t a1, void *a2)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v10 = v12;
  v11 = xmmword_257371870;
  v3 = llvm::Twine::toNullTerminatedStringRef(a1, &v10);
  if (stat(v3, &v9))
  {
    v4 = *__error();
    std::generic_category();
    st_ino = 0;
    st_dev = 0;
    v7 = v10;
    if (v10 == v12)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  st_dev = v9.st_dev;
  st_ino = v9.st_ino;
  std::system_category();
  v4 = 0;
  v7 = v10;
  if (v10 != v12)
  {
LABEL_3:
    free(v7);
  }

LABEL_4:
  if (v4)
  {
    return v4;
  }

  *a2 = st_dev;
  a2[1] = st_ino;
  std::system_category();
  return 0;
}

uint64_t llvm::sys::fs::status(llvm::sys::fs *this, const stat *a2, llvm::sys::fs::file_status *a3)
{
  v3 = a3;
  v13[16] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v12 = xmmword_257371870;
  v5 = llvm::Twine::toNullTerminatedStringRef(this, &v11);
  if (v3)
  {
    v6 = MEMORY[0x277D85F68](v5, v10);
  }

  else
  {
    v6 = MEMORY[0x277D85F38](v5, v10);
  }

  result = llvm::sys::fs::fillStatus(v6, v10, a2, v7);
  if (v11 != v13)
  {
    v9 = result;
    free(v11);
    return v9;
  }

  return result;
}

{
  v4 = fstat(this, &v7);
  return llvm::sys::fs::fillStatus(v4, &v7.st_dev, a2, v5);
}

void llvm::sys::fs::createUniquePath(uint64_t a1, uint64_t a2, int a3)
{
  v22[16] = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = xmmword_257371870;
  llvm::Twine::toVector(a1, &v20);
  if (a3)
  {
    v19[4] = 261;
    v17 = v20;
    *&v18 = v21;
    if ((llvm::sys::path::is_absolute(&v17, 0) & 1) == 0)
    {
      v17 = v19;
      v18 = xmmword_257371870;
      llvm::sys::path::system_temp_directory(1, &v17);
      v16 = 261;
      v15[0] = v20;
      v15[1] = v21;
      v14 = 257;
      v12 = 257;
      v10 = 257;
      llvm::sys::path::append(&v17, 0, v15, &v13, &v11, &v9);
      llvm::SmallVectorImpl<char>::swap(&v20, &v17);
      if (v17 != v19)
      {
        free(v17);
      }
    }
  }

  if (&v20 == a2)
  {
    v5 = *(a2 + 8);
  }

  else
  {
    v5 = v21;
    v6 = *(a2 + 8);
    if (v6 >= v21)
    {
      if (v21)
      {
        memmove(*a2, v20, v21);
      }
    }

    else
    {
      if (*(a2 + 16) < v21)
      {
        *(a2 + 8) = 0;
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      if (v6)
      {
        memmove(*a2, v20, *(a2 + 8));
      }

      if (v21 != v6)
      {
        memcpy((*a2 + v6), &v20[v6], v21 - v6);
      }
    }

    *(a2 + 8) = v5;
  }

  if ((v5 + 1) > *(a2 + 16))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*a2 + v5) = 0;
  v7 = v21;
  if (v21)
  {
    v8 = 0;
    do
    {
      if (v20[v8] == 37)
      {
        *(*a2 + v8) = a0123456789abcd_1[llvm::sys::Process::GetRandomNumber() & 0xF];
      }

      ++v8;
    }

    while (v7 != v8);
  }

  if (v20 != v22)
  {
    free(v20);
  }
}

size_t llvm::sys::path::system_temp_directory(int a1, uint64_t a2)
{
  v3 = 65537;
  *(a2 + 8) = 0;
  if (a1)
  {
    v4 = getenv("TMPDIR");
    if (v4 || (v4 = getenv("TMP")) != 0 || (v4 = getenv("TEMP")) != 0 || (v4 = getenv("TEMPDIR")) != 0)
    {
      v5 = v4;
      result = strlen(v4);
      v7 = result;
      if (*(a2 + 16) < result)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v10 = 0;
      if (result)
      {
        result = memcpy(*a2, v5, result);
        v10 = *(a2 + 8);
      }

      *(a2 + 8) = v10 + v7;
      return result;
    }
  }

  else
  {
    v3 = 65538;
  }

  result = confstr(v3, 0, 0);
  v8 = *(a2 + 8);
  if (!result)
  {
    goto LABEL_26;
  }

  v9 = result;
  while (v8 == v9)
  {
    result = confstr(v3, *a2, v8);
    if (!result)
    {
      goto LABEL_25;
    }

LABEL_20:
    v9 = result;
    v8 = *(a2 + 8);
    if (result == v8)
    {
      *(a2 + 8) = result - 1;
      return result;
    }
  }

  if (v8 <= v9)
  {
    if (*(a2 + 16) < v9)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    if (v9 != v8)
    {
      bzero((*a2 + v8), v9 - v8);
    }
  }

  *(a2 + 8) = v9;
  result = confstr(v3, *a2, v9);
  if (result)
  {
    goto LABEL_20;
  }

LABEL_25:
  v8 = 0;
  *(a2 + 8) = 0;
LABEL_26:
  if (*(a2 + 16) < v8 + 9)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v11 = *a2 + v8;
  *v11 = *"/var/tmp/";
  *(v11 + 8) = 47;
  *(a2 + 8) += 9;
  return result;
}

unint64_t llvm::sys::fs::createUniqueFile(uint64_t a1, int *a2, void *a3, int a4, uint64_t a5)
{
  v10 = 129;
  std::system_category();
  while (1)
  {
    while (1)
    {
      llvm::sys::fs::createUniquePath(a1, a3, 0);
      v12 = *a3;
      v21 = 257;
      if (*v12)
      {
        v20 = v12;
        v13 = 3;
      }

      else
      {
        v13 = 1;
      }

      LOBYTE(v21) = v13;
      v15 = llvm::sys::fs::openFile(&v20, a2, 1, 3, a4, a5);
      if (!v15)
      {
        v11 = 0;
        v18 = 0;
        return v18 | v11;
      }

      v16 = v14;
      v17 = std::generic_category();
      if (v15 != 17 || v17 != v16)
      {
        break;
      }

      v11 = 17;
      if (--v10 <= 1)
      {
        goto LABEL_12;
      }
    }

    if (v15 != 13 || v17 != v16)
    {
      break;
    }

    v11 = 13;
    if (--v10 <= 1)
    {
LABEL_12:
      v18 = v15 & 0xFFFFFFFF00000000;
      return v18 | v11;
    }
  }

  v18 = v15 & 0xFFFFFFFF00000000;
  v11 = v15;
  return v18 | v11;
}

void createUniqueEntity(uint64_t a1, int *a2, void *a3, int a4, int a5, int a6, uint64_t a7)
{
  v42 = *MEMORY[0x277D85DE8];
  v14 = std::system_category();
  if (a5 == 2)
  {
    v22 = 129;
    while (1)
    {
      llvm::sys::fs::createUniquePath(a1, a3, a4);
      v23 = *a3;
      v37 = 257;
      if (*v23)
      {
        v36 = v23;
        v24 = 3;
      }

      else
      {
        v24 = 1;
      }

      LOBYTE(v37) = v24;
      v38 = &v40;
      v39 = xmmword_257371870;
      v25 = llvm::Twine::toNullTerminatedStringRef(&v36, &v38);
      v26 = 0;
      v27 = v14;
      if (access(v25, 0) == -1)
      {
        break;
      }

      v28 = v38;
      if (v38 != &v40)
      {
        goto LABEL_21;
      }

LABEL_22:
      if ((v27 != std::generic_category() || v26 != 2) && !v26 && --v22 >= 2)
      {
        continue;
      }

      return;
    }

    v26 = *__error();
    v27 = std::generic_category();
    v28 = v38;
    if (v38 == &v40)
    {
      goto LABEL_22;
    }

LABEL_21:
    free(v28);
    goto LABEL_22;
  }

  if (a5 == 1)
  {
    v15 = 129;
    while (1)
    {
      llvm::sys::fs::createUniquePath(a1, a3, a4);
      v16 = *a3;
      v41 = 257;
      if (*v16)
      {
        v38 = v16;
        v17 = 3;
      }

      else
      {
        v17 = 1;
      }

      LOBYTE(v41) = v17;
      v19 = llvm::sys::fs::openFile(&v38, a2, 1, 3, a6, a7);
      if (!v19)
      {
        break;
      }

      v20 = v18;
      v21 = std::generic_category();
      if (v19 == 17 && v21 == v20)
      {
        if (--v15 <= 1)
        {
          return;
        }
      }

      else
      {
        if (v19 != 13)
        {
          return;
        }

        if (v21 != v20)
        {
          return;
        }

        if (--v15 <= 1)
        {
          return;
        }
      }
    }
  }

  else if (a5)
  {
    llvm::sys::fs::createUniquePath(a1, a3, a4);
    __break(1u);
  }

  else
  {
    for (i = 129; i > 1; --i)
    {
      llvm::sys::fs::createUniquePath(a1, a3, a4);
      v30 = *a3;
      v41 = 257;
      if (*v30)
      {
        v38 = v30;
        v31 = 3;
      }

      else
      {
        v31 = 1;
      }

      LOBYTE(v41) = v31;
      directory = llvm::sys::fs::create_directory(&v38, 0, 0x1F8u);
      if (!directory)
      {
        break;
      }

      v34 = v32;
      v35 = std::generic_category();
      if (directory != 17)
      {
        break;
      }

      if (v35 != v34)
      {
        break;
      }
    }
  }
}

unint64_t llvm::sys::fs::createUniqueFile(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = 0;
  v6 = 129;
  std::system_category();
  while (1)
  {
    llvm::sys::fs::createUniquePath(a1, a2, 0);
    v8 = *a2;
    v18 = 257;
    if (*v8)
    {
      v17 = v8;
      v9 = 3;
    }

    else
    {
      v9 = 1;
    }

    LOBYTE(v18) = v9;
    v11 = llvm::sys::fs::openFile(&v17, &v16, 1, 3, 0, a3);
    if (!v11)
    {
      break;
    }

    v12 = v10;
    v13 = std::generic_category();
    if (v11 == 17 && v13 == v12)
    {
      LODWORD(v7) = 17;
      if (--v6 < 2)
      {
        goto LABEL_12;
      }
    }

    else
    {
      LODWORD(v7) = v11;
      if (v11 != 13 || v13 != v12 || (LODWORD(v7) = 13, --v6, v6 < 2))
      {
LABEL_12:
        v14 = v11 & 0xFFFFFFFF00000000;
        v7 = v7;
        return v14 | v7;
      }
    }
  }

  v14 = 0;
  close(v16);
  v7 = 0;
  return v14 | v7;
}

void llvm::sys::fs::createTemporaryFile(uint64_t *a1, __int128 *a2, uint64_t a3, int *a4, void *a5, int a6, int a7)
{
  v37[16] = *MEMORY[0x277D85DE8];
  v11 = "-%%%%%%";
  if (a3)
  {
    v11 = "-%%%%%%.";
  }

  if (*v11)
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(a1 + 32);
  if (v13 == 1)
  {
    *&v23 = v11;
    LOBYTE(v25) = v12;
    BYTE1(v25) = 1;
  }

  else
  {
    if (!*(a1 + 32))
    {
      LOBYTE(v12) = 0;
      LOWORD(v25) = 256;
LABEL_20:
      v14 = 1;
      goto LABEL_26;
    }

    if (*v11)
    {
      v15 = *a1;
      v16 = a1[1];
      v17 = *(a1 + 33) == 1;
      BYTE1(v25) = v12;
      if (v17)
      {
        v12 = v13;
      }

      else
      {
        v12 = 2;
      }

      if (v17)
      {
        v18 = v15;
      }

      else
      {
        v18 = a1;
      }

      *&v23 = v18;
      *(&v23 + 1) = v16;
      *&v24 = v11;
      LOBYTE(v25) = v12;
    }

    else
    {
      v22 = *(a1 + 1);
      v23 = *a1;
      v24 = v22;
      v25 = a1[4];
      v12 = v25;
      if (!v25)
      {
        goto LABEL_20;
      }
    }
  }

  if (v12 == 1)
  {
    v26 = a2;
    v27 = a3;
    v14 = 1;
    LOBYTE(v12) = 5;
  }

  else
  {
    if (BYTE1(v25) != 1)
    {
      LOBYTE(v12) = 2;
    }

    v19 = &v23;
    if (BYTE1(v25) == 1)
    {
      v19 = v23;
    }

    v26 = v19;
    v27 = *(&v23 + 1);
    v28 = a2;
    v29 = a3;
    v14 = 5;
  }

LABEL_26:
  v30 = v12;
  v31 = v14;
  v35 = v37;
  v36 = xmmword_257371870;
  v20 = llvm::Twine::toNullTerminatedStringRef(&v26, &v35);
  v21 = 1;
  v34 = 1;
  if (*v20)
  {
    v32 = v20;
    v21 = 3;
  }

  v33 = v21;
  createUniqueEntity(&v32, a4, a5, 1, a6, a7, 438);
  if (v35 != v37)
  {
    free(v35);
  }
}

void llvm::sys::fs::createTemporaryFile(uint64_t *a1, __int128 *a2, uint64_t a3, void *a4, int a5)
{
  v6 = 0;
  llvm::sys::fs::createTemporaryFile(a1, a2, a3, &v6, a4, 1, a5);
  if (!v5)
  {
    close(v6);
  }
}

unint64_t llvm::sys::fs::createUniqueDirectory(uint64_t *a1, void *a2)
{
  v3 = *(a1 + 32);
  if (*(a1 + 32))
  {
    if (v3 == 1)
    {
      v16[0] = "-%%%%%%";
      v4 = 1;
      LOBYTE(v3) = 3;
    }

    else
    {
      v5 = a1[1];
      if (*(a1 + 33) == 1)
      {
        v6 = *a1;
      }

      else
      {
        LOBYTE(v3) = 2;
        v6 = a1;
      }

      v16[0] = v6;
      v16[1] = v5;
      v16[2] = "-%%%%%%";
      v4 = 3;
    }
  }

  else
  {
    v4 = 1;
  }

  v17 = v3;
  v18 = v4;
  v7 = 129;
  std::system_category();
  while (1)
  {
    v8 = 1;
    llvm::sys::fs::createUniquePath(v16, a2, 1);
    v9 = *a2;
    v20 = 257;
    if (*v9)
    {
      v19 = v9;
      v8 = 3;
    }

    LOBYTE(v20) = v8;
    directory = llvm::sys::fs::create_directory(&v19, 0, 0x1F8u);
    if (!directory)
    {
      break;
    }

    v12 = v10;
    v13 = std::generic_category();
    if (directory == 17 && v13 == v12 && --v7 > 1)
    {
      continue;
    }

    v14 = directory & 0xFFFFFFFF00000000;
    return v14 | directory;
  }

  v14 = 0;
  return v14 | directory;
}

void llvm::sys::fs::make_absolute(uint64_t a1, unsigned __int8 ***a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  v41 = 261;
  v38 = v4;
  *&v39 = v5;
  has_root_directory = llvm::sys::path::has_root_directory(&v38, 0);
  v41 = 261;
  v38 = v4;
  *&v39 = v5;
  has_root_name = llvm::sys::path::has_root_name(&v38, 0);
  if (!has_root_directory)
  {
    v8 = has_root_name;
    v38 = &v40;
    v39 = xmmword_257371870;
    llvm::Twine::toVector(a1, &v38);
    if ((v8 & 1) == 0)
    {
      v37[4] = 261;
      v35 = v4;
      *&v36 = v5;
      v34 = 257;
      v32 = 257;
      v30 = 257;
      llvm::sys::path::append(&v38, 0, &v35, v33, v31, v29);
      llvm::SmallVectorImpl<char>::swap(a2, &v38);
LABEL_30:
      if (v38 != &v40)
      {
        free(v38);
      }

      return;
    }

    v35 = v4;
    *&v36 = v5;
    if (!v5)
    {
      goto LABEL_21;
    }

    v9 = *v4;
    if (v5 < 3)
    {
      if (v9 == 47)
      {
        goto LABEL_21;
      }
    }

    else if (v9 == 47)
    {
      if (*(v4 + 1) != 47 || *(v4 + 2) == 47)
      {
        goto LABEL_21;
      }

      v10 = 2;
      goto LABEL_12;
    }

    v10 = 0;
LABEL_12:
    first_of = llvm::StringRef::find_first_of(&v35, "/", 1, v10);
    v12 = v36;
    if (v36 >= first_of)
    {
      v12 = first_of;
    }

    if (v12 >= 3 && *v35 == 47)
    {
      v13 = *(v35 + 1);
      if (v13 != 47)
      {
        v12 = 0;
      }

      v26 = v12;
      if (v13 == 47)
      {
        v14 = v35;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_22;
    }

LABEL_21:
    v26 = 0;
    v14 = 0;
LABEL_22:
    v15 = llvm::sys::path::root_directory(v38, v39, 0);
    v17 = v16;
    v18 = v38;
    v19 = v39;
    llvm::sys::path::root_path(v38, v39, 0);
    if (v19 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v22 = (v19 - v21);
    v23 = (v18 + v21);
    llvm::sys::path::root_path(v4, v5, 0);
    v36 = xmmword_257371870;
    v35 = v37;
    if (v5 >= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v5;
    }

    v34 = 261;
    v33[0] = v14;
    v33[1] = v26;
    v32 = 261;
    v31[0] = v15;
    v31[1] = v17;
    v30 = 261;
    v29[0] = v23;
    v29[1] = v22;
    v28 = 261;
    v27[0] = (v4 + v25);
    v27[1] = (v5 - v25);
    llvm::sys::path::append(&v35, 0, v33, v31, v29, v27);
    llvm::SmallVectorImpl<char>::swap(a2, &v35);
    if (v35 != v37)
    {
      free(v35);
    }

    goto LABEL_30;
  }
}

uint64_t llvm::sys::fs::make_absolute(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v10[4] = 261;
  v2 = *(a1 + 8);
  v8 = *a1;
  *&v9 = v2;
  if (llvm::sys::path::is_absolute(&v8, 0))
  {
    std::system_category();
    return 0;
  }

  else
  {
    v8 = v10;
    v9 = xmmword_257371870;
    result = llvm::sys::fs::current_path(&v8);
    if (!result)
    {
      v7 = 261;
      v6[0] = v8;
      v6[1] = v9;
      v4 = result;
      llvm::sys::fs::make_absolute(v6, a1);
      std::system_category();
      result = v4;
    }

    if (v8 != v10)
    {
      v5 = result;
      free(v8);
      return v5;
    }
  }

  return result;
}

uint64_t llvm::sys::fs::current_path(uint64_t a1)
{
  v38[16] = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  v2 = getenv("PWD");
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = v2;
  v4 = 1;
  v34 = 1;
  if (*v2)
  {
    v32 = v2;
    v4 = 3;
  }

  v33 = v4;
  if (!llvm::sys::path::is_absolute(&v32, 0))
  {
    goto LABEL_22;
  }

  v5 = 1;
  v31 = 1;
  if (*v3)
  {
    v29 = v3;
    v5 = 3;
  }

  v30 = v5;
  v36 = v38;
  v37 = xmmword_257371870;
  v6 = llvm::Twine::toNullTerminatedStringRef(&v29, &v36);
  if (stat(v6, &v35))
  {
    st_ino = 0;
    st_dev = 0;
    v9 = *__error() == 0;
    v10 = v36;
    if (v36 == v38)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  st_dev = v35.st_dev;
  st_ino = v35.st_ino;
  v9 = 1;
  v10 = v36;
  if (v36 != v38)
  {
LABEL_9:
    free(v10);
  }

LABEL_10:
  if (!v9)
  {
    goto LABEL_22;
  }

  v27 = ".";
  v28 = 259;
  v36 = v38;
  v37 = xmmword_257371870;
  v11 = llvm::Twine::toNullTerminatedStringRef(&v27, &v36);
  if (!stat(v11, &v35))
  {
    v13 = v35.st_dev;
    v12 = v35.st_ino;
    v14 = 1;
    v15 = v36;
    if (v36 == v38)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v12 = 0;
  v13 = 0;
  v14 = *__error() == 0;
  v15 = v36;
  if (v36 != v38)
  {
LABEL_13:
    free(v15);
  }

LABEL_14:
  if (v14 && st_dev == v13 && st_ino == v12)
  {
    v16 = strlen(v3);
    v17 = *(a1 + 8);
    if (*(a1 + 16) < v17 + v16)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    if (v16)
    {
      memcpy((*a1 + v17), v3, v16);
      v17 = *(a1 + 8);
    }

    *(a1 + 8) = v17 + v16;
LABEL_39:
    std::system_category();
    return 0;
  }

LABEL_22:
  v18 = *(a1 + 8);
  if (v18 != 1024)
  {
    if (v18 <= 0x400 && *(a1 + 16) <= 0x3FFuLL)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(a1 + 8) = 1024;
  }

  v19 = *a1;
  for (i = 1024; ; i = 2 * v21)
  {
    if (getcwd(v19, i))
    {
      *(a1 + 8) = strlen(*a1);
      goto LABEL_39;
    }

    if (*__error() != 12)
    {
      break;
    }

    v22 = *(a1 + 8);
    v21 = *(a1 + 16);
    v23 = 2 * v21;
    if (v22 != 2 * v21)
    {
      if (v21 >= 1 && v22 <= v23)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(a1 + 8) = v23;
    }

    v19 = *a1;
  }

  *(a1 + 8) = 0;
  v26 = *__error();
  std::generic_category();
  return v26;
}

uint64_t llvm::sys::fs::create_directories(void **a1, uint64_t a2, uint64_t a3)
{
  v19[16] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = xmmword_257371870;
  if (*(a1 + 33) != 1)
  {
    goto LABEL_14;
  }

  v5 = *(a1 + 32);
  if (v5 > 4)
  {
    if (v5 - 5 < 2)
    {
      v7 = *a1;
      v8 = a1[1];
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v5 == 1)
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_15;
  }

  if (v5 == 3)
  {
    v7 = *a1;
    if (*a1)
    {
      v8 = strlen(*a1);
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_15;
  }

  if (v5 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(a1, &v17);
    v7 = v17;
    v8 = v18;
    goto LABEL_15;
  }

  v6 = *(*a1 + 23);
  if (v6 >= 0)
  {
    v7 = *a1;
  }

  else
  {
    v7 = **a1;
  }

  if (v6 >= 0)
  {
    v8 = *(*a1 + 23);
  }

  else
  {
    v8 = (*a1)[1];
  }

LABEL_15:
  v16 = 261;
  v14 = v7;
  v15 = v8;
  directory = llvm::sys::fs::create_directory(&v14, a2, a3);
  if (std::generic_category() == v10 && directory == 2)
  {
    v12 = v8 >= v11 ? v11 : v8;
    if (v11 != -1)
    {
      if (v12)
      {
        v16 = 261;
        v14 = v7;
        v15 = v12;
        directory = llvm::sys::fs::create_directories(&v14, a2, a3);
        if (!directory)
        {
          v16 = 261;
          v14 = v7;
          v15 = v8;
          directory = llvm::sys::fs::create_directory(&v14, a2, a3);
        }
      }
    }
  }

  if (v17 != v19)
  {
    free(v17);
  }

  return directory;
}

uint64_t llvm::sys::fs::create_directory(uint64_t a1, char a2, mode_t a3)
{
  v11[16] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = xmmword_257371870;
  v5 = llvm::Twine::toNullTerminatedStringRef(a1, &v9);
  if (mkdir(v5, a3) == -1 && (*__error() != 17 || (a2 & 1) == 0))
  {
    v6 = *__error();
    std::generic_category();
    v7 = v9;
    if (v9 == v11)
    {
      return v6;
    }

    goto LABEL_5;
  }

  std::system_category();
  v6 = 0;
  v7 = v9;
  if (v9 != v11)
  {
LABEL_5:
    free(v7);
  }

  return v6;
}

uint64_t llvm::sys::fs::copy_file(llvm::sys::fs *this, const llvm::Twine *a2)
{
  v3 = 0;
  result = llvm::sys::fs::openFile(this, &v3, 2, 1, 0, 438);
  if (!result)
  {
    std::system_category();
    operator new[]();
  }

  return result;
}

unint64_t llvm::sys::fs::openFileForRead(uint64_t a1, int *a2, int a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = llvm::sys::fs::openFile(a1, a2, 2, 1, a3, 438);
  v7 = v6;
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (a4)
    {
      a4[1] = 0;
      if (fcntl(*a2, 50, __s) != -1)
      {
        v10 = strlen(__s);
        v11 = a4[1];
        if (a4[2] < v11 + v10)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        if (v10)
        {
          memcpy((*a4 + v11), __s, v10);
          v11 = a4[1];
        }

        a4[1] = v11 + v10;
      }
    }

    std::system_category();
    v8 = 0;
  }

  return v8 | v7;
}

void llvm::sys::fs::md5_contents(llvm::sys::fs *this)
{
  v1[19] = *MEMORY[0x277D85DE8];
  llvm::MD5::MD5(v1);
  operator new();
}

uint64_t llvm::sys::fs::md5_contents@<X0>(llvm::sys::fs *this@<X0>, uint64_t a2@<X8>)
{
  LODWORD(v6) = 0;
  result = llvm::sys::fs::openFile(this, &v6, 2, 1, 0, 438);
  if (!result)
  {
    llvm::sys::fs::md5_contents(v6);
  }

  *(a2 + 16) |= 1u;
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

uint64_t llvm::sys::fs::get_file_type(llvm::sys::fs *this, const llvm::Twine *a2)
{
  v2 = a2;
  v12[16] = *MEMORY[0x277D85DE8];
  v10 = v12;
  v11 = xmmword_257371870;
  v3 = llvm::Twine::toNullTerminatedStringRef(this, &v10);
  if (v2)
  {
    v4 = MEMORY[0x277D85F68](v3, v9);
  }

  else
  {
    v4 = MEMORY[0x277D85F38](v3, v9);
  }

  if (v4)
  {
    __error();
    v5 = 0;
    v6 = v10;
    if (v10 == v12)
    {
      return v5;
    }

    goto LABEL_11;
  }

  v7 = v9[2] >> 12;
  if (v7 == 7)
  {
    v5 = 9;
    v6 = v10;
    if (v10 == v12)
    {
      return v5;
    }

    goto LABEL_11;
  }

  v5 = dword_2573A45E4[v7 ^ 8];
  v6 = v10;
  if (v10 != v12)
  {
LABEL_11:
    free(v6);
  }

  return v5;
}

uint64_t llvm::sys::fs::is_directory(llvm::sys::fs *this, const llvm::Twine *a2, BOOL *a3)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v10 = v12;
  v11 = xmmword_257371870;
  v4 = llvm::Twine::toNullTerminatedStringRef(this, &v10);
  if (stat(v4, &v9))
  {
    v5 = *__error();
    std::generic_category();
    LOBYTE(v6) = 0;
    v7 = v10;
    if (v10 == v12)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = (v9.st_mode >> 12 != 7) & (0x1000u >> ((v9.st_mode >> 12) ^ 8));
  std::system_category();
  v5 = 0;
  v7 = v10;
  if (v10 != v12)
  {
LABEL_3:
    free(v7);
  }

LABEL_4:
  if (!v5)
  {
    *a2 = v6;
    std::system_category();
  }

  return v5;
}

uint64_t llvm::sys::fs::is_regular_file(llvm::sys::fs *this, const llvm::Twine *a2, BOOL *a3)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v10 = v12;
  v11 = xmmword_257371870;
  v4 = llvm::Twine::toNullTerminatedStringRef(this, &v10);
  if (stat(v4, &v9))
  {
    v5 = *__error();
    std::generic_category();
    v6 = 0;
    v7 = v10;
    if (v10 == v12)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = (v9.st_mode & 0xF000) == 0x8000;
  std::system_category();
  v5 = 0;
  v7 = v10;
  if (v10 != v12)
  {
LABEL_3:
    free(v7);
  }

LABEL_4:
  if (!v5)
  {
    *a2 = v6;
    std::system_category();
  }

  return v5;
}

uint64_t llvm::sys::fs::is_symlink_file(llvm::sys::fs *this, const llvm::Twine *a2, BOOL *a3)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v10 = v12;
  v11 = xmmword_257371870;
  v4 = llvm::Twine::toNullTerminatedStringRef(this, &v10);
  if (lstat(v4, &v9))
  {
    v5 = *__error();
    std::generic_category();
    v6 = 0;
    v7 = v10;
    if (v10 == v12)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = (v9.st_mode & 0xF000) == 40960;
  std::system_category();
  v5 = 0;
  v7 = v10;
  if (v10 != v12)
  {
LABEL_3:
    free(v7);
  }

LABEL_4:
  if (!v5)
  {
    *a2 = v6;
    std::system_category();
  }

  return v5;
}

uint64_t llvm::sys::fs::is_other(llvm::sys::fs *this, const llvm::Twine *a2, BOOL *a3)
{
  v12[16] = *MEMORY[0x277D85DE8];
  v10 = v12;
  v11 = xmmword_257371870;
  v4 = llvm::Twine::toNullTerminatedStringRef(this, &v10);
  if (stat(v4, &v9))
  {
    v5 = *__error();
    std::generic_category();
    LOBYTE(v6) = 0;
    v7 = v10;
    if (v10 == v12)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = (v9.st_mode >> 12 == 7) | (0x6FFEu >> ((v9.st_mode >> 12) ^ 8));
  std::system_category();
  v5 = 0;
  v7 = v10;
  if (v10 != v12)
  {
LABEL_3:
    free(v7);
  }

LABEL_4:
  if (!v5)
  {
    *a2 = v6 & 1;
    std::system_category();
  }

  return v5;
}

void llvm::sys::fs::directory_entry::replace_filename(uint64_t a1, void **a2, int a3, __int128 *a4)
{
  v28[16] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 23);
  if (v8 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = *(a1 + 8);
  }

  v12 = 0;
  if (v10 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  if (v11 == -1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  if (v11 == -1)
  {
    v15 = 0;
  }

  else
  {
    v15 = v9;
  }

  __src = v28;
  *__len = xmmword_257371870;
  if (v14 >= 0x81)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (v14)
  {
    memcpy(__src, v15, v14);
    v12 = __len[0];
  }

  __len[0] = v12 + v14;
  v25 = 257;
  v22 = 257;
  v20 = 257;
  llvm::sys::path::append(&__src, 0, a2, &__dst, &v21, &v19);
  v16 = __len[0];
  if (__len[0] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len[0] >= 0x17)
  {
    operator new();
  }

  HIBYTE(v24) = __len[0];
  if (__len[0])
  {
    memmove(&__dst, __src, __len[0]);
    *(&__dst + v16) = 0;
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  operator delete(*a1);
LABEL_24:
  *a1 = __dst;
  *(a1 + 16) = v24;
  *(a1 + 24) = a3;
  v17 = *a4;
  v18 = a4[2];
  *(a1 + 48) = a4[1];
  *(a1 + 64) = v18;
  *(a1 + 32) = v17;
  if (__src != v28)
  {
    free(__src);
  }
}

void llvm::sys::fs::getPermissions(llvm::sys::fs *this@<X0>, uint64_t a2@<X8>)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v12 = xmmword_257371870;
  v4 = llvm::Twine::toNullTerminatedStringRef(this, &v11);
  if (stat(v4, &v10))
  {
    v5 = *__error();
    v6 = std::generic_category();
    v7 = 0xFFFF;
    v8 = v11;
    if (v11 == v13)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = v10.st_mode & 0xFFF;
  v6 = std::system_category();
  v5 = 0;
  v8 = v11;
  if (v11 != v13)
  {
LABEL_3:
    free(v8);
  }

LABEL_4:
  v9 = *(a2 + 16);
  if (v5)
  {
    *(a2 + 16) = v9 | 1;
    *a2 = v5;
    *(a2 + 8) = v6;
  }

  else
  {
    *(a2 + 16) = v9 & 0xFE;
    *a2 = v7;
  }
}

ssize_t llvm::sys::fs::readNativeFileToEOF@<X0>(int a1@<W0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a2[1];
  if (a3 >= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  v10 = a2[1];
  v11 = v8 + a3;
  v12 = v8 > v8 + a3;
  if (v8 != v8 + a3)
  {
LABEL_5:
    if (!v12 && a2[2] < v11)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    a2[1] = v11;
  }

  while (1)
  {
    v13 = *a2;
    while (1)
    {
      *__error() = 0;
      result = read(a1, (v13 + v10), v9);
      if (result != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        v16 = *__error();
        *&v19.__val_ = std::generic_category();
        result = llvm::errorCodeToError(v16, v19, &v18);
        v17 = v18;
        goto LABEL_17;
      }
    }

    if (!result)
    {
      break;
    }

    v10 += result;
    v15 = a2[1];
    v11 = v10 + a3;
    v12 = v15 > v10 + a3;
    if (v15 != v10 + a3)
    {
      goto LABEL_5;
    }
  }

  v17 = 0;
LABEL_17:
  *a4 = v17;
  a2[1] = v10;
  return result;
}

ssize_t llvm::sys::fs::readNativeFile@<X0>(int a1@<W0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 >= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFFLL;
  }

  else
  {
    v7 = a3;
  }

  while (1)
  {
    *__error() = 0;
    result = read(a1, a2, v7);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v9 = *__error();
      *&v11.__val_ = std::generic_category();
      result = llvm::errorCodeToError(v9, v11, &v10);
      *(a4 + 8) |= 1u;
      *a4 = v10;
      return result;
    }
  }

  *(a4 + 8) &= ~1u;
  *a4 = result;
  return result;
}

unint64_t llvm::sys::fs::getMainExecutable@<X0>(_BYTE *a1@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  bufsize = 1024;
  result = _NSGetExecutablePath(buf, &bufsize);
  if (result || (result = realpath_DARWIN_EXTSN(buf, __s)) == 0)
  {
    a1[23] = 0;
    *a1 = 0;
  }

  else
  {
    result = strlen(__s);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v6 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    a1[23] = result;
    if (result)
    {
      result = memcpy(a1, __s, result);
    }

    a1[v6] = 0;
  }

  return result;
}

unint64_t llvm::sys::fs::getExecutable@<X0>(llvm::sys::fs *this@<X0>, _BYTE *a2@<X8>)
{
  result = dladdr(this, &__s);
  if (result)
  {
    dli_fname = __s.dli_fname;
    result = strlen(__s.dli_fname);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v6 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    a2[23] = result;
    if (result)
    {
      result = memmove(a2, dli_fname, result);
    }

    a2[v6] = 0;
  }

  else
  {
    a2[23] = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t llvm::sys::fs::disk_space@<X0>(llvm::formatv_object_base **this@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  llvm::Twine::str(this, __p);
  if (v11 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = statfs(v4, &v12);
  v6 = v5;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = v12.f_blocks * v12.f_bsize;
    result = v12.f_bfree * v12.f_bsize;
    v9 = v12.f_bavail * v12.f_bsize;
    *(a2 + 24) &= ~1u;
    *(a2 + 16) = v9;
    goto LABEL_9;
  }

  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_6:
  v7 = *__error();
  result = std::generic_category();
  *(a2 + 24) |= 1u;
LABEL_9:
  *a2 = v7;
  *(a2 + 8) = result;
  return result;
}

uint64_t llvm::sys::fs::set_current_path(llvm::sys::fs *this, const llvm::Twine *a2)
{
  v8[16] = *MEMORY[0x277D85DE8];
  v6 = v8;
  v7 = xmmword_257371870;
  v2 = llvm::Twine::toNullTerminatedStringRef(this, &v6);
  if (chdir(v2) == -1)
  {
    v3 = *__error();
    std::generic_category();
    v4 = v6;
    if (v6 == v8)
    {
      return v3;
    }

    goto LABEL_3;
  }

  std::system_category();
  v3 = 0;
  v4 = v6;
  if (v6 != v8)
  {
LABEL_3:
    free(v4);
  }

  return v3;
}

uint64_t llvm::sys::fs::create_link(llvm::sys::fs *this, const llvm::Twine *a2, const llvm::Twine *a3)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = xmmword_257371870;
  v9 = v11;
  v10 = xmmword_257371870;
  v4 = llvm::Twine::toNullTerminatedStringRef(a2, &v12);
  v5 = llvm::Twine::toNullTerminatedStringRef(this, &v9);
  if (symlink(v5, v4) != -1)
  {
    std::system_category();
    v6 = 0;
    v7 = v9;
    if (v9 == v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = *__error();
  std::generic_category();
  v7 = v9;
  if (v9 != v11)
  {
LABEL_3:
    free(v7);
  }

LABEL_4:
  if (v12 != v14)
  {
    free(v12);
  }

  return v6;
}

uint64_t llvm::sys::fs::create_hard_link(llvm::sys::fs *this, const llvm::Twine *a2, const llvm::Twine *a3)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = xmmword_257371870;
  v9 = v11;
  v10 = xmmword_257371870;
  v4 = llvm::Twine::toNullTerminatedStringRef(a2, &v12);
  v5 = llvm::Twine::toNullTerminatedStringRef(this, &v9);
  if (link(v5, v4) != -1)
  {
    std::system_category();
    v6 = 0;
    v7 = v9;
    if (v9 == v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = *__error();
  std::generic_category();
  v7 = v9;
  if (v9 != v11)
  {
LABEL_3:
    free(v7);
  }

LABEL_4:
  if (v12 != v14)
  {
    free(v12);
  }

  return v6;
}

uint64_t llvm::sys::fs::remove(llvm::sys::fs *this, const llvm::Twine *a2)
{
  v2 = a2;
  v12[16] = *MEMORY[0x277D85DE8];
  v10 = v12;
  v11 = xmmword_257371870;
  v3 = llvm::Twine::toNullTerminatedStringRef(this, &v10);
  if (lstat(v3, &v9))
  {
    if (*__error() != 2 || (v2 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = v9.st_mode & 0xF000;
    if (v6 != 0x4000 && v6 != 0x8000 && v6 != 40960)
    {
      v5 = 1;
LABEL_15:
      std::generic_category();
      v7 = v10;
      if (v10 == v12)
      {
        return v5;
      }

      goto LABEL_12;
    }

    if (remove(v3, v4) == -1 && (*__error() != 2 || (v2 & 1) == 0))
    {
LABEL_4:
      v5 = *__error();
      goto LABEL_15;
    }
  }

  std::system_category();
  v5 = 0;
  v7 = v10;
  if (v10 != v12)
  {
LABEL_12:
    free(v7);
  }

  return v5;
}

uint64_t llvm::sys::fs::is_local(llvm::formatv_object_base **this, const llvm::Twine *a2, BOOL *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  llvm::Twine::str(this, __p);
  if (v10 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = statfs(v4, &v11);
  v6 = v5;
  if (v10 < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_9:
    *a2 = (v11.f_flags & 0x1000) != 0;
    std::system_category();
    return 0;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_6:
  v7 = *__error();
  std::generic_category();
  return v7;
}

uint64_t llvm::sys::fs::is_local(llvm::sys::fs *this, BOOL *a2, BOOL *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  if (fstatfs(this, &v6))
  {
    v4 = *__error();
    std::generic_category();
  }

  else
  {
    *a2 = (v6.f_flags & 0x1000) != 0;
    std::system_category();
    return 0;
  }

  return v4;
}

uint64_t llvm::sys::fs::rename(llvm::sys::fs *this, const llvm::Twine *a2, const llvm::Twine *a3)
{
  v16[16] = *MEMORY[0x277D85DE8];
  v14 = v16;
  v15 = xmmword_257371870;
  v11 = v13;
  v12 = xmmword_257371870;
  v4 = llvm::Twine::toNullTerminatedStringRef(this, &v14);
  v5 = llvm::Twine::toNullTerminatedStringRef(a2, &v11);
  rename(v4, v5, v6);
  if (v7 != -1)
  {
    std::system_category();
    v8 = 0;
    v9 = v11;
    if (v11 == v13)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = *__error();
  std::generic_category();
  v9 = v11;
  if (v11 != v13)
  {
LABEL_3:
    free(v9);
  }

LABEL_4:
  if (v14 != v16)
  {
    free(v14);
  }

  return v8;
}

uint64_t llvm::sys::fs::resize_file(llvm::sys::fs *this, off_t a2)
{
  if (ftruncate(this, a2) == -1)
  {
    v3 = *__error();
    std::generic_category();
    return v3;
  }

  else
  {
    std::system_category();
    return 0;
  }
}

uint64_t llvm::sys::fs::access(uint64_t a1, int a2)
{
  v11[16] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = xmmword_257371870;
  v3 = llvm::Twine::toNullTerminatedStringRef(a1, &v9);
  if (!a2)
  {
LABEL_9:
    if (access(v3, a2) != -1)
    {
      goto LABEL_10;
    }

LABEL_13:
    v5 = *__error();
    std::generic_category();
    v6 = v9;
    if (v9 == v11)
    {
      return v5;
    }

    goto LABEL_11;
  }

  if (a2 != 2)
  {
    a2 = 2;
    goto LABEL_9;
  }

  v4 = v3;
  if (access(v3, 5) == -1)
  {
    goto LABEL_13;
  }

  if (stat(v4, &v8) || (v8.st_mode & 0xF000) != 0x8000)
  {
    std::generic_category();
    v5 = 13;
    v6 = v9;
    if (v9 == v11)
    {
      return v5;
    }

    goto LABEL_11;
  }

LABEL_10:
  std::system_category();
  v5 = 0;
  v6 = v9;
  if (v9 != v11)
  {
LABEL_11:
    free(v6);
  }

  return v5;
}

uint64_t llvm::sys::fs::equivalent(llvm::sys::fs *this, const llvm::Twine *a2, const llvm::Twine *a3, BOOL *a4)
{
  v21[16] = *MEMORY[0x277D85DE8];
  v19 = v21;
  v20 = xmmword_257371870;
  v6 = llvm::Twine::toNullTerminatedStringRef(this, &v19);
  if (stat(v6, &v18))
  {
    v7 = *__error();
    std::generic_category();
    st_dev = 0;
    st_ino = 0;
    v10 = v19;
    if (v19 == v21)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  st_dev = v18.st_dev;
  st_ino = v18.st_ino;
  std::system_category();
  v7 = 0;
  v10 = v19;
  if (v19 != v21)
  {
LABEL_3:
    free(v10);
  }

LABEL_4:
  if (v7)
  {
    return v7;
  }

  v19 = v21;
  v20 = xmmword_257371870;
  v11 = llvm::Twine::toNullTerminatedStringRef(a2, &v19);
  if (stat(v11, &v18))
  {
    v7 = *__error();
    std::generic_category();
    v12 = 0;
    v13 = 0;
    v14 = v19;
    if (v19 == v21)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v13 = v18.st_dev;
  v12 = v18.st_ino;
  std::system_category();
  v7 = 0;
  v14 = v19;
  if (v19 != v21)
  {
LABEL_7:
    free(v14);
  }

LABEL_8:
  if (!v7)
  {
    v16 = st_dev == v13 && st_ino == v12;
    *a3 = v16;
    std::system_category();
  }

  return v7;
}

void llvm::sys::fs::expand_tilde(uint64_t a1, uint64_t *a2)
{
  a2[1] = 0;
  if (*(a1 + 32) >= 2u)
  {
    llvm::Twine::toVector(a1, a2);

    llvm::sys::fs::expandTildeExpr(a2);
  }
}

void llvm::sys::fs::expandTildeExpr(uint64_t *a1)
{
  v8[16] = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  if (v1 && **a1 == 126)
  {
    v2 = v1 - 1;
    if (v1 == 1)
    {
LABEL_7:
      v3 = -1;
    }

    else
    {
      v3 = 0;
      while (*(*a1 + 1 + v3) != 47)
      {
        if (v2 == ++v3)
        {
          goto LABEL_7;
        }
      }
    }

    if (v2 >= v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = v1 - 1;
    }

    v6 = v8;
    v7 = xmmword_257371870;
    if (v4)
    {
      sysconf(71);
      operator new[]();
    }

    if (llvm::sys::path::home_directory(&v6))
    {
      **a1 = *v6;
      llvm::SmallVectorImpl<char>::insert<char const*,void>(a1, *a1 + 1, v6 + 1, &v6[v7]);
    }

    if (v6 != v8)
    {
      free(v6);
    }
  }
}

uint64_t llvm::sys::fs::fillStatus(llvm::sys::fs *this, int *a2, const stat *a3, llvm::sys::fs::file_status *a4)
{
  if (this)
  {
    v5 = *__error();
    std::generic_category();
    result = v5;
    if (v5 == 2)
    {
      a3->st_atimespec.tv_sec = 0;
      *&a3->st_dev = 0u;
      *&a3->st_uid = 0u;
      a3->st_atimespec.tv_nsec = 0xFFFF00000001;
      LODWORD(a3->st_mtimespec.tv_sec) = 0;
      WORD2(a3->st_mtimespec.tv_sec) = 0;
      a3->st_mtimespec.tv_nsec = 0;
      return 2;
    }

    else
    {
      *(&a3->st_rdev + 1) = 0u;
      *&a3->st_dev = 0u;
      *&a3->st_uid = 0u;
      *(&a3->st_atimespec.tv_nsec + 4) = 0xFFFFLL;
      WORD2(a3->st_mtimespec.tv_sec) = 0;
      a3->st_mtimespec.tv_nsec = 0;
    }
  }

  else
  {
    v7 = a2[10];
    v8 = a2[14];
    v9 = *(a2 + 2);
    v10 = v9 & 0xFFF;
    v11 = v9 >> 12;
    if (v11 == 7)
    {
      v12 = 9;
    }

    else
    {
      v12 = dword_2573A45E4[v11 ^ 8];
    }

    v13 = *a2;
    v14 = *(a2 + 3);
    v15 = *(a2 + 1);
    v16 = *(a2 + 6);
    v17 = *(a2 + 12);
    v18 = *(a2 + 2);
    *&a3->st_dev = *(a2 + 4);
    a3->st_ino = v16;
    a3->st_uid = v7;
    a3->st_gid = v8;
    *&a3->st_rdev = v18;
    a3->st_atimespec.tv_sec = v17;
    LODWORD(a3->st_atimespec.tv_nsec) = v12;
    HIDWORD(a3->st_atimespec.tv_nsec) = v10;
    LODWORD(a3->st_mtimespec.tv_sec) = v13;
    WORD2(a3->st_mtimespec.tv_sec) = v14;
    a3->st_mtimespec.tv_nsec = v15;
    std::system_category();
    return 0;
  }

  return result;
}

uint64_t llvm::sys::fs::getUmask(llvm::sys::fs *this)
{
  v1 = umask(0);
  umask(v1);
  return v1;
}

uint64_t llvm::sys::fs::setPermissions(uint64_t a1, mode_t a2)
{
  v9[16] = *MEMORY[0x277D85DE8];
  v7 = v9;
  v8 = xmmword_257371870;
  v3 = llvm::Twine::toNullTerminatedStringRef(a1, &v7);
  if (!chmod(v3, a2))
  {
    std::system_category();
    v4 = 0;
    v5 = v7;
    if (v7 == v9)
    {
      return v4;
    }

    goto LABEL_3;
  }

  v4 = *__error();
  std::generic_category();
  v5 = v7;
  if (v7 != v9)
  {
LABEL_3:
    free(v5);
  }

  return v4;
}

uint64_t llvm::sys::fs::setPermissions(int a1, mode_t a2)
{
  if (fchmod(a1, a2))
  {
    v2 = *__error();
    std::generic_category();
    return v2;
  }

  else
  {
    std::system_category();
    return 0;
  }
}

uint64_t llvm::sys::fs::setLastAccessAndModificationTime(int a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  __t.tv_sec = a2 / 1000;
  __t.tv_sec = std::chrono::system_clock::to_time_t(&__t);
  __t.tv_nsec = a2 % 1000000000;
  v8.__d_.__rep_ = a3 / 1000;
  v10 = std::chrono::system_clock::to_time_t(&v8);
  v11 = a3 % 1000000000;
  if (futimens(a1, &__t))
  {
    v6 = *__error();
    std::generic_category();
  }

  else
  {
    std::system_category();
    return 0;
  }

  return v6;
}

uint64_t llvm::sys::fs::mapped_file_region::init(size_t *a1, int a2, off_t a3, int a4)
{
  if (a4 == 1)
  {
    v6 = 65;
  }

  else
  {
    v6 = 66;
  }

  if (a4)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  if (a4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 24642;
  }

  v9 = mmap(0, *a1, v7, v8, a2, a3);
  a1[1] = v9;
  if (v9 == -1)
  {
    v11 = *__error();
    std::generic_category();
    return v11;
  }

  else
  {
    std::system_category();
    return 0;
  }
}

uint64_t llvm::sys::fs::mapped_file_region::mapped_file_region(uint64_t a1, int a2, int a3, size_t a4, off_t a5, void *a6)
{
  *a1 = a4;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  if (a3 == 1)
  {
    v9 = 65;
  }

  else
  {
    v9 = 66;
  }

  v10 = a3 == 0;
  if (a3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 1;
  }

  if (v10)
  {
    v12 = 24642;
  }

  else
  {
    v12 = v9;
  }

  v13 = mmap(0, a4, v11, v12, a2, a5);
  *(a1 + 8) = v13;
  if (v13 != -1)
  {
    v14 = std::system_category();
    *a6 = 0;
    a6[1] = v14;
    return a1;
  }

  v16 = *__error();
  v17 = std::generic_category();
  *a6 = v16;
  a6[1] = v17;
  if (!v16)
  {
    return a1;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return a1;
}

{
  *a1 = a4;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  if (a3 == 1)
  {
    v9 = 65;
  }

  else
  {
    v9 = 66;
  }

  v10 = a3 == 0;
  if (a3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 1;
  }

  if (v10)
  {
    v12 = 24642;
  }

  else
  {
    v12 = v9;
  }

  v13 = mmap(0, a4, v11, v12, a2, a5);
  *(a1 + 8) = v13;
  if (v13 != -1)
  {
    v14 = std::system_category();
    *a6 = 0;
    a6[1] = v14;
    return a1;
  }

  v16 = *__error();
  v17 = std::generic_category();
  *a6 = v16;
  a6[1] = v17;
  if (!v16)
  {
    return a1;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return a1;
}

void *llvm::sys::fs::mapped_file_region::unmapImpl(llvm::sys::fs::mapped_file_region *this)
{
  result = *(this + 1);
  if (result)
  {
    return munmap(result, *this);
  }

  return result;
}

void *llvm::sys::fs::mapped_file_region::dontNeedImpl(llvm::sys::fs::mapped_file_region *this)
{
  result = *(this + 1);
  if (result)
  {
    return posix_madvise(result, *this, 4);
  }

  return result;
}

uint64_t llvm::sys::fs::mapped_file_region::alignment(llvm::sys::fs::mapped_file_region *this)
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

unint64_t llvm::sys::fs::detail::directory_iterator_construct(uint64_t a1, const void *a2, size_t a3, char a4)
{
  v25[16] = *MEMORY[0x277D85DE8];
  v23 = v25;
  v24 = xmmword_257371870;
  if (a3 >= 0x81)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v7 = 0;
  if (a3)
  {
    memcpy(v23, a2, a3);
    v7 = v24;
  }

  v8 = v7 + a3;
  *&v24 = v8;
  if (v8 + 1 > *(&v24 + 1))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  v23[v8] = 0;
  v9 = opendir(v23);
  if (!v9)
  {
    v11 = *__error();
    std::generic_category();
    v12 = v23;
    if (v23 == v25)
    {
      return v11;
    }

    goto LABEL_10;
  }

  *a1 = v9;
  *&v14 = ".";
  *&v16[8] = 259;
  v22 = 257;
  v20 = 257;
  v18 = 257;
  llvm::sys::path::append(&v23, 0, &v14, v21, &v19, &v17);
  v22 = 261;
  v21[0] = v23;
  v21[1] = v24;
  llvm::Twine::str(v21, &v14);
  *v16 = 9;
  v16[4] = a4;
  memset(&v16[8], 0, 44);
  *&v16[52] = 0xFFFF;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *(a1 + 8) = v14;
  *(a1 + 24) = v15;
  v10 = *&v16[16];
  *(a1 + 32) = *v16;
  *(a1 + 48) = v10;
  *(a1 + 64) = *&v16[32];
  *(a1 + 80) = *&v16[48];
  v11 = llvm::sys::fs::detail::directory_iterator_increment(a1);
  v12 = v23;
  if (v23 != v25)
  {
LABEL_10:
    free(v12);
  }

  return v11;
}

unint64_t llvm::sys::fs::detail::directory_iterator_increment(uint64_t a1)
{
  *__error() = 0;
  v2 = readdir(*a1);
  if (!v2)
  {
    if (*__error())
    {
      v6 = *__error();
      std::generic_category();
LABEL_21:
      v8 = 0;
      return v8 | v6;
    }

    if (*a1)
    {
      closedir(*a1);
    }

    *a1 = 0;
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 9;
    *(a1 + 36) = 1;
    *(a1 + 37) = 0u;
    *(a1 + 53) = 0u;
    *(a1 + 68) = 0u;
    *(a1 + 84) = 0xFFFF;
LABEL_20:
    std::system_category();
    v6 = 0;
    goto LABEL_21;
  }

  v3 = v2;
  d_name = v2->d_name;
  v5 = strlen(v2->d_name);
  if (v5 == 2)
  {
    if (*d_name != 46 || v3->d_name[1] != 46)
    {
LABEL_11:
      v15 = 261;
      v14[0] = d_name;
      v14[1] = v5;
      v9 = v3->d_type & 0xF;
      if (v9 == 7)
      {
        v10 = 9;
      }

      else
      {
        v10 = dword_2573A45E4[v9 ^ 8];
      }

      v13 = 0u;
      memset(v12, 0, sizeof(v12));
      HIDWORD(v13) = 0xFFFF;
      llvm::sys::fs::directory_entry::replace_filename(a1 + 8, v14, v10, v12);
      goto LABEL_20;
    }
  }

  else if (v5 != 1 || *d_name != 46)
  {
    goto LABEL_11;
  }

  v7 = llvm::sys::fs::detail::directory_iterator_increment(a1);
  v6 = v7;
  v8 = v7 & 0xFFFFFFFF00000000;
  return v8 | v6;
}

uint64_t llvm::sys::fs::detail::directory_iterator_destruct(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    closedir(v2);
  }

  *a1 = 0;
  memset(v4, 0, 35);
  HIBYTE(v4[1]) = 0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *(a1 + 37) = v4[0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 9;
  *(a1 + 36) = 1;
  *(a1 + 53) = v4[1];
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0xFFFF;
  std::system_category();
  return 0;
}

void llvm::sys::fs::directory_entry::status(llvm::sys::fs::directory_entry *this@<X0>, uint64_t a2@<X8>)
{
  v31[16] = *MEMORY[0x277D85DE8];
  v20 = 260;
  v19 = this;
  v3 = *(this + 28);
  v29 = v31;
  v30 = xmmword_257371870;
  v4 = llvm::Twine::toNullTerminatedStringRef(&v19, &v29);
  if (v3)
  {
    v5 = MEMORY[0x277D85F68](v4, v21);
  }

  else
  {
    v5 = MEMORY[0x277D85F38](v4, v21);
  }

  if (v5)
  {
    v6 = *__error();
    v7 = v6 == 2;
    v8 = std::generic_category();
    v18 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v17 = 0;
    v13 = 0xFFFF;
    v14 = v29;
    if (v29 == v31)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = v25;
  v18 = v27;
  v13 = v22 & 0xFFF;
  v16 = v22 >> 12;
  if (v16 == 7)
  {
    v7 = 9;
  }

  else
  {
    v7 = dword_2573A45E4[v16 ^ 8];
  }

  v12 = v24;
  v11 = v26;
  v17 = v23;
  v9 = v28;
  v8 = std::system_category();
  v6 = 0;
  v14 = v29;
  if (v29 != v31)
  {
LABEL_6:
    free(v14);
  }

LABEL_7:
  v15 = *(a2 + 48);
  if (v6)
  {
    *(a2 + 48) = v15 | 1;
    v11 = v8;
  }

  else
  {
    *(a2 + 48) = v15 & 0xFE;
    *(a2 + 16) = v10;
    *(a2 + 20) = v18;
    *(a2 + 24) = v17;
    *(a2 + 32) = v9;
    v6 = v12;
    *(a2 + 40) = v7;
    *(a2 + 44) = v13;
  }

  *a2 = v6;
  *(a2 + 8) = v11;
}

uint64_t llvm::sys::fs::openFile(uint64_t a1, int *a2, int a3, int a4, int a5, uint64_t a6)
{
  v21[16] = *MEMORY[0x277D85DE8];
  v8 = 2 * (a4 == 3);
  if (a4 == 2)
  {
    v8 = 1;
  }

  if (a4 == 1)
  {
    v8 = 0;
  }

  if ((a5 & 4) != 0)
  {
    a3 = 3;
  }

  v10 = v8 | 0x600;
  v11 = v8 | 0x200;
  if (a3 == 1)
  {
    v8 |= 0xA00u;
  }

  if (a3 == 3)
  {
    v8 = v11;
  }

  if (a3)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = ((a5 << 20) & 0x1000000 | (2 * (a5 & 4))) ^ 0x1000000;
  v19 = v21;
  v20 = xmmword_257371870;
  v14 = llvm::Twine::toNullTerminatedStringRef(a1, &v19);
  while (1)
  {
    *__error() = 0;
    v15 = open(v14, v12 | v13, a6);
    if (v15 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      *a2 = -1;
      goto LABEL_22;
    }
  }

  *a2 = v15;
  if ((v15 & 0x80000000) == 0)
  {
    std::system_category();
    v16 = 0;
    v17 = v19;
    if (v19 == v21)
    {
      return v16;
    }

    goto LABEL_23;
  }

LABEL_22:
  v16 = *__error();
  std::generic_category();
  v17 = v19;
  if (v19 == v21)
  {
    return v16;
  }

LABEL_23:
  free(v17);
  return v16;
}

llvm *llvm::sys::fs::openNativeFile@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = 0;
  result = llvm::sys::fs::openFile(a1, &v10, a2, a3, a4, a5);
  if (result)
  {
    result = llvm::errorCodeToError(result, v8, &v9);
    *(a6 + 8) |= 1u;
    *a6 = v9;
  }

  else
  {
    *(a6 + 8) &= ~1u;
    *a6 = v10;
  }

  return result;
}

uint64_t llvm::sys::fs::getRealPathFromHandle(int a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (fcntl(a1, 50, __s) == -1)
  {
    v5 = *__error();
    std::generic_category();
  }

  else
  {
    v3 = strlen(__s);
    v4 = a2[1];
    if (a2[2] < v4 + v3)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    if (v3)
    {
      memcpy((*a2 + v4), __s, v3);
      v4 = a2[1];
    }

    a2[1] = v4 + v3;
    std::system_category();
    return 0;
  }

  return v5;
}

llvm *llvm::sys::fs::openNativeFileForRead@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = 0;
  result = llvm::sys::fs::openFileForRead(a1, &v8, a2, a3);
  if (result)
  {
    result = llvm::errorCodeToError(result, v6, &v7);
    *(a4 + 8) |= 1u;
    *a4 = v7;
  }

  else
  {
    *(a4 + 8) &= ~1u;
    *a4 = v8;
  }

  return result;
}

ssize_t llvm::sys::fs::readNativeFileSlice@<X0>(int a1@<W0>, void *a2@<X1>, unint64_t a3@<X2>, off_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3 >= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  while (1)
  {
    *__error() = 0;
    result = pread(a1, a2, v9, a4);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v11 = *__error();
      *&v13.__val_ = std::generic_category();
      result = llvm::errorCodeToError(v11, v13, &v12);
      *(a5 + 8) |= 1u;
      *a5 = v12;
      return result;
    }
  }

  *(a5 + 8) &= ~1u;
  *a5 = result;
  return result;
}

uint64_t llvm::sys::fs::tryLockFile(int a1, uint64_t a2, int a3)
{
  v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  if (a3)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  if (a2)
  {
    v8 = v6.__d_.__rep_ + 1000000 * a2;
    while (1)
    {
      v12 = 0;
      v13 = 0;
      WORD2(v13) = v7;
      v11 = 0;
      if (fcntl(a1, 8, &v11) != -1)
      {
        goto LABEL_12;
      }

      v9 = *__error();
      if (v9 != 13 && v9 != 35)
      {
        goto LABEL_16;
      }

      usleep(0x3E8u);
      if (std::chrono::steady_clock::now().__d_.__rep_ >= v8)
      {
        goto LABEL_15;
      }
    }
  }

  v12 = 0;
  v13 = 0;
  WORD2(v13) = v7;
  v11 = 0;
  if (fcntl(a1, 8, &v11) != -1)
  {
LABEL_12:
    std::system_category();
    return 0;
  }

  v9 = *__error();
  if (v9 == 13 || v9 == 35)
  {
LABEL_15:
    std::generic_category();
    return 77;
  }

  else
  {
LABEL_16:
    std::generic_category();
    return v9;
  }
}

uint64_t llvm::sys::fs::lockFile(llvm::sys::fs *this, int a2)
{
  v5[1] = 0;
  v6 = 0;
  if (a2)
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  WORD2(v6) = v2;
  v5[0] = 0;
  if (fcntl(this, 9, v5) == -1)
  {
    v4 = *__error();
    std::generic_category();
    return v4;
  }

  else
  {
    std::system_category();
    return 0;
  }
}

uint64_t llvm::sys::fs::unlockFile(llvm::sys::fs *this)
{
  v4 = 2;
  v3[0] = 0;
  v3[1] = 0;
  if (fcntl(this, 8, v3) == -1)
  {
    v2 = *__error();
    std::generic_category();
    return v2;
  }

  else
  {
    std::system_category();
    return 0;
  }
}

uint64_t llvm::sys::fs::closeFile(llvm::sys::fs *this, int *a2)
{
  v2 = *this;
  *this = -1;
  return llvm::sys::Process::SafelyCloseFileDescriptor(v2);
}

void llvm::sys::fs::remove_directories(llvm::sys::fs *this, const llvm::Twine *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v4.__val_ = 0;
  v4.__cat_ = std::system_category();
  llvm::sys::fs::directory_iterator::directory_iterator(&v3, this, &v4, 0);
}

unint64_t llvm::sys::fs::real_path(uint64_t a1, void *a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  a2[1] = 0;
  if (*(a1 + 32) <= 1u)
  {
    std::system_category();
    v3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
    v15 = v17;
    v16 = xmmword_257371870;
    v7 = llvm::Twine::toNullTerminatedStringRef(a1, &v15);
    if (realpath_DARWIN_EXTSN(v7, &v12))
    {
      v8 = strlen(&v12);
      v9 = a2[1];
      if (a2[2] < v9 + v8)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      if (v8)
      {
        memcpy((*a2 + v9), &v12, v8);
        v9 = a2[1];
      }

      a2[1] = v9 + v8;
      std::system_category();
      v3 = 0;
      v10 = v15;
      if (v15 == v17)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v3 = *__error();
      std::generic_category();
      v10 = v15;
      if (v15 == v17)
      {
        goto LABEL_13;
      }
    }

    free(v10);
LABEL_13:
    v6 = 0;
    return v6 | v3;
  }

  v12 = v14;
  v13 = xmmword_257371870;
  llvm::Twine::toVector(a1, &v12);
  llvm::sys::fs::expandTildeExpr(&v12);
  v17[4] = 261;
  v15 = v12;
  *&v16 = v13;
  v5 = llvm::sys::fs::real_path(&v15, a2, 0);
  v3 = v5;
  v6 = v5 & 0xFFFFFFFF00000000;
  if (v12 != v14)
  {
    free(v12);
  }

  return v6 | v3;
}

uint64_t llvm::sys::fs::changeFileOwnership(llvm::sys::fs *this, uid_t a2, gid_t a3)
{
  v5 = this;
  while (1)
  {
    *__error() = 0;
    v6 = fchown(v5, a2, a3);
    if (v6 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      goto LABEL_7;
    }
  }

  if ((v6 & 0x80000000) == 0)
  {
    std::system_category();
    return 0;
  }

LABEL_7:
  v8 = *__error();
  std::generic_category();
  return v8;
}

uint64_t llvm::sys::path::user_config_directory(void *a1)
{
  if (llvm::sys::path::home_directory(a1))
  {
    v9 = "Library";
    v10 = 259;
    v7 = "Preferences";
    v8 = 259;
  }

  else
  {
    result = llvm::sys::path::home_directory(a1);
    if (!result)
    {
      return result;
    }

    v9 = ".config";
    v10 = 259;
    v8 = 257;
  }

  v6 = 257;
  v4 = 257;
  llvm::sys::path::append(a1, 0, &v9, &v7, &v5, &v3);
  return 1;
}

uint64_t llvm::sys::path::cache_directory(uint64_t a1)
{
  v2 = confstr(65538, 0, 0);
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 8);
    while (1)
    {
      if (v4 == v3)
      {
        v5 = confstr(65538, *a1, v4);
        if (!v5)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v4 <= v3)
        {
          if (*(a1 + 16) < v3)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          if (v3 != v4)
          {
            bzero((*a1 + v4), v3 - v4);
          }
        }

        *(a1 + 8) = v3;
        v5 = confstr(65538, *a1, v3);
        if (!v5)
        {
LABEL_14:
          *(a1 + 8) = 0;
          break;
        }
      }

      v3 = v5;
      v4 = *(a1 + 8);
      if (v5 == v4)
      {
        *(a1 + 8) = v5 - 1;
        return 1;
      }
    }
  }

  result = llvm::sys::path::home_directory(a1);
  if (result)
  {
    v13 = ".cache";
    v14 = 259;
    v12 = 257;
    v10 = 257;
    v8 = 257;
    llvm::sys::path::append(a1, 0, &v13, &v11, &v9, &v7);
    return 1;
  }

  return result;
}

uint64_t llvm::sys::fs::copy_file(llvm::formatv_object_base **this, llvm::formatv_object_base **a2, const llvm::Twine *a3)
{
  llvm::Twine::str(this, v13);
  llvm::Twine::str(a2, __p);
  if (v14 >= 0)
  {
    v4 = v13;
  }

  else
  {
    v4 = v13[0];
  }

  if (v12 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (!clonefile(v4, v5, 0))
  {
    goto LABEL_22;
  }

  v6 = *__error();
  if (v6 <= 0x2D && ((1 << v6) & 0x200000060000) != 0)
  {
    if (v14 >= 0)
    {
      v8 = v13;
    }

    else
    {
      v8 = v13[0];
    }

    if (v12 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if (copyfile(v8, v9, 0, 8u))
    {
      v6 = *__error();
      goto LABEL_20;
    }

LABEL_22:
    std::system_category();
    v6 = 0;
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_20:
  std::generic_category();
  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_23:
  operator delete(__p[0]);
LABEL_24:
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  return v6;
}

uint64_t llvm::sys::fs::TempFile::TempFile(uint64_t a1, const void *a2, size_t a3, int a4)
{
  *a1 = 0;
  v4 = (a1 + 8);
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = a3;
  if (a3)
  {
    memmove(v4, a2, a3);
  }

  *(v4 + a3) = 0;
  *(a1 + 32) = a4;
  return a1;
}

{
  *a1 = 0;
  v4 = (a1 + 8);
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = a3;
  if (a3)
  {
    memmove(v4, a2, a3);
  }

  *(v4 + a3) = 0;
  *(a1 + 32) = a4;
  return a1;
}

__n128 llvm::sys::fs::TempFile::TempFile(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = -1;
  result = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = result;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  *a2 = 1;
  *(a2 + 32) = -1;
  return result;
}

{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = -1;
  result = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = result;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  *a2 = 1;
  *(a2 + 32) = -1;
  return result;
}

__n128 llvm::sys::fs::TempFile::operator=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 31) < 0)
  {
    v3 = a1;
    operator delete(*(a1 + 8));
    a1 = v3;
  }

  result = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = result;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  *a2 = 1;
  *(a2 + 32) = -1;
  return result;
}

void llvm::sys::fs::TempFile::~TempFile(void **this)
{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t llvm::sys::fs::TempFile::discard@<X0>(llvm::sys::fs::TempFile *this@<X0>, void *a2@<X8>)
{
  *this = 1;
  v4 = *(this + 8);
  if (v4 == -1 || close(v4) != -1)
  {
    *(this + 8) = -1;
    v5 = std::system_category();
    if ((*(this + 31) & 0x8000000000000000) != 0)
    {
      if (*(this + 2))
      {
        goto LABEL_5;
      }
    }

    else if (*(this + 31))
    {
LABEL_5:
      v17 = 260;
      v16 = this + 8;
      v6 = llvm::sys::fs::remove(&v16, 1);
      v5 = v7;
      v8 = *(this + 31);
      if (v8 >= 0)
      {
        v9 = this + 8;
      }

      else
      {
        v9 = *(this + 1);
      }

      if (v8 >= 0)
      {
        v10 = *(this + 31);
      }

      else
      {
        v10 = *(this + 2);
      }

      llvm::sys::DontRemoveFileOnSignal(v9, v10);
      v12 = v6;
      if (!v6)
      {
        MEMORY[0x259C62C80](this + 8, "");
        v12 = v6;
      }

      goto LABEL_15;
    }

    MEMORY[0x259C62C80](this + 8, "");
    v12 = 0;
LABEL_15:
    *&v11.__val_ = v5;
    return llvm::errorCodeToError(v12, v11, a2);
  }

  v14 = *__error();
  *&v15.__val_ = std::generic_category();

  return llvm::errorCodeToError(v14, v15, a2);
}

uint64_t llvm::sys::fs::TempFile::keep@<X0>(llvm::sys::fs::TempFile *this@<X0>, const llvm::Twine *a2@<X1>, const llvm::Twine *a3@<X2>, void *a4@<X8>)
{
  *this = 1;
  v7 = (this + 8);
  v19 = 260;
  v18[0] = (this + 8);
  v10 = llvm::sys::fs::rename(v18, a2, a3);
  if (v10)
  {
    v19 = 260;
    v18[0] = v7;
    v10 = llvm::sys::fs::copy_file(v18, a2, v9);
    v12 = v11;
    if (v10)
    {
      v19 = 260;
      v18[0] = v7;
      llvm::sys::fs::remove(v18, 1);
    }
  }

  else
  {
    v12 = v8;
  }

  v13 = *(this + 31);
  if (v13 >= 0)
  {
    v14 = v7;
  }

  else
  {
    v14 = *(this + 1);
  }

  if (v13 >= 0)
  {
    v15 = *(this + 31);
  }

  else
  {
    v15 = *(this + 2);
  }

  llvm::sys::DontRemoveFileOnSignal(v14, v15);
  if (!v10)
  {
    MEMORY[0x259C62C80](v7, "");
    if (close(*(this + 8)) != -1)
    {
      goto LABEL_13;
    }

LABEL_15:
    v10 = *__error();
    *&v16.__val_ = std::generic_category();
    return llvm::errorCodeToError(v10, v16, a4);
  }

  if (close(*(this + 8)) == -1)
  {
    goto LABEL_15;
  }

LABEL_13:
  *(this + 8) = -1;
  *&v16.__val_ = v12;
  return llvm::errorCodeToError(v10, v16, a4);
}

uint64_t llvm::sys::fs::TempFile::keep@<X0>(llvm::sys::fs::TempFile *this@<X0>, void *a2@<X8>)
{
  *this = 1;
  v4 = this + 8;
  v5 = *(this + 31);
  if (v5 >= 0)
  {
    v6 = this + 8;
  }

  else
  {
    v6 = *(this + 1);
  }

  if (v5 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *(this + 2);
  }

  llvm::sys::DontRemoveFileOnSignal(v6, v7);
  MEMORY[0x259C62C80](v4, "");
  result = close(*(this + 8));
  if (result == -1)
  {
    v9 = *__error();
    *&v10.__val_ = std::generic_category();

    return llvm::errorCodeToError(v9, v10, a2);
  }

  else
  {
    *(this + 8) = -1;
    *a2 = 0;
  }

  return result;
}

void llvm::sys::fs::TempFile::create(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v25[16] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v23 = v25;
  v24 = xmmword_257371870;
  for (i = 129; i > 1; --i)
  {
    while (1)
    {
      llvm::sys::fs::createUniquePath(a1, &v23, 0);
      LOWORD(v22) = 257;
      if (*v23)
      {
        v19 = v23;
        v10 = 3;
      }

      else
      {
        v10 = 1;
      }

      LOBYTE(v22) = v10;
      v12 = llvm::sys::fs::openFile(&v19, &v18, 1, 3, a3 | 8u, a2);
      if (!v12)
      {
        v16 = v24;
        v17 = v18;
        LOBYTE(v19) = 0;
        if (v24 < 0x7FFFFFFFFFFFFFF8)
        {
          if (v24 < 0x17)
          {
            v21 = v24;
            if (!v24)
            {
              LOBYTE(__p) = 0;
              v22 = v18;
              llvm::sys::RemoveFileOnSignal(v23, 0);
            }

            memmove(&__p, v23, v24);
            *(&__p + v16) = 0;
            v22 = v17;
            llvm::sys::RemoveFileOnSignal(v23, v24);
          }

          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      v13 = v11;
      v14 = std::generic_category();
      if (v12 != 17 || v14 != v13)
      {
        break;
      }

      v9 = 17;
      if (--i <= 1)
      {
        goto LABEL_12;
      }
    }

    v9 = v12;
    if (v12 != 13)
    {
      break;
    }

    if (v14 != v13)
    {
      break;
    }

    v9 = 13;
  }

LABEL_12:
  *&v15.__val_ = v13;
  llvm::errorCodeToError((v12 & 0xFFFFFFFF00000000 | v9), v15, &v19);
  *(a4 + 40) |= 1u;
  *a4 = v19;
  if (v23 != v25)
  {
    free(v23);
  }
}

void llvm::sys::Process::FindInEnvPath(const void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, _BYTE *a8@<X8>)
{
  v51[16] = *MEMORY[0x277D85DE8];
  *a8 = 0;
  a8[24] = 0;
  llvm::sys::Process::GetEnv(a1, a2, __p);
  v12 = v43;
  if (v43 == 1)
  {
    __s[0] = a7;
    __s[1] = 0;
    if (v42 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    v49 = v51;
    v50 = 0x800000000;
    if (v42 >= 0)
    {
      v14 = v42;
    }

    else
    {
      v14 = __p[1];
    }

    v15 = strlen(__s);
    llvm::SplitString(v13, v14, &v49, __s, v15);
    v17 = v49;
    if (v50)
    {
      v30 = a8;
      v33 = &v49[2 * v50];
      v18 = a4;
      while (1)
      {
        v19 = v17[1];
        if (v19)
        {
          v20 = *v17;
          if (!a6)
          {
LABEL_23:
            *__src = v48;
            *&__src[8] = xmmword_257371870;
            if (v19 >= 0x81)
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            memcpy(v48, v20, v19);
            *&__src[8] += v19;
            v46 = 261;
            *&__dst = a3;
            *(&__dst + 1) = v18;
            v39 = 257;
            v37 = 257;
            v35 = 257;
            llvm::sys::path::append(__src, &__dst, v38, &v36, &v34);
            v46 = 261;
            __dst = *__src;
            v25 = llvm::sys::fs::access(&__dst, 0);
            v26 = *__src;
            v27 = v25;
            if (v25)
            {
              if (*__src == v48)
              {
                goto LABEL_10;
              }

              goto LABEL_39;
            }

            v28 = *&__src[8];
            if (*&__src[8] >= 0x7FFFFFFFFFFFFFF8uLL)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            if (*&__src[8] >= 0x17uLL)
            {
              operator new();
            }

            HIBYTE(v45) = __src[8];
            if (*&__src[8])
            {
              memmove(&__dst, *__src, *&__src[8]);
              *(&__dst + v28) = 0;
              v29 = v30;
              if (v30[24] == 1)
              {
LABEL_32:
                if (v29[23] < 0)
                {
                  operator delete(*v29);
                }

                *v29 = __dst;
                *(v29 + 2) = v45;
                v18 = a4;
                v26 = *__src;
                if (*__src == v48)
                {
LABEL_10:
                  if (!v27)
                  {
                    goto LABEL_40;
                  }

                  goto LABEL_11;
                }

LABEL_39:
                free(v26);
                goto LABEL_10;
              }
            }

            else
            {
              LOBYTE(__dst) = 0;
              v29 = v30;
              if (v30[24] == 1)
              {
                goto LABEL_32;
              }
            }

            *v29 = __dst;
            *(v29 + 2) = v45;
            v29[24] = 1;
            v18 = a4;
            v26 = *__src;
            if (*__src == v48)
            {
              goto LABEL_10;
            }

            goto LABEL_39;
          }

          v21 = 24 * a6;
          v22 = a5;
          while (1)
          {
            v23 = *(v22 + 23);
            v24 = *v22;
            if (v23 >= 0)
            {
              v24 = v22;
            }

            if (v23 < 0)
            {
              v23 = v22[1];
            }

            v48[4] = 261;
            *__src = v24;
            *&__src[8] = v23;
            v46 = 261;
            *&__dst = v20;
            *(&__dst + 1) = v19;
            LOBYTE(v38[0]) = 0;
            if (!llvm::sys::fs::equivalent(__src, &__dst, v38, v16) && (v38[0] & 1) != 0)
            {
              break;
            }

            v22 += 3;
            v21 -= 24;
            if (!v21)
            {
              goto LABEL_23;
            }
          }
        }

LABEL_11:
        v17 += 2;
        if (v17 == v33)
        {
LABEL_40:
          v17 = v49;
          break;
        }
      }
    }

    if (v17 != v51)
    {
      free(v17);
    }

    v12 = v43;
  }

  if ((v12 & 1) != 0 && v42 < 0)
  {
    operator delete(__p[0]);
  }
}

double llvm::sys::Process::GetEnv@<D0>(const void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    if (a2 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_25;
    }

    if (a2 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v16) = a2;
    if (a2)
    {
      memmove(__dst, a1, a2);
    }

    __dst[a2] = 0;
    if (v16 >= 0)
    {
      v8 = __dst;
    }

    else
    {
      v8 = *__dst;
    }

    v5 = getenv(v8);
    if (v5)
    {
      goto LABEL_17;
    }

LABEL_7:
    *a3 = 0;
    *(a3 + 24) = 0;
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

  *__dst = 0;
  v15 = 0;
  v16 = 0;
  v5 = getenv(__dst);
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_17:
  v9 = v5;
  v10 = strlen(v5);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_25:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v13) = v10;
  if (v10)
  {
    memmove(&v12, v9, v10);
  }

  *(&v12 + v11) = 0;
  result = *&v12;
  *a3 = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = 1;
  if (SHIBYTE(v16) < 0)
  {
LABEL_8:
    v7 = *__dst;

    operator delete(v7);
  }

  return result;
}

void llvm::sys::Process::Exit(llvm::sys::Process *this, uint64_t a2)
{
  v2 = a2;
  Current = llvm::CrashRecoveryContext::GetCurrent(this, a2);
  if (!Current)
  {
    if (v2)
    {
      llvm::sys::Process::ExitNoCleanup(this);
    }

    exit(this);
  }

  llvm::CrashRecoveryContext::HandleExit(Current, this);
}

void llvm::sys::Process::getPageSize(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_27F875840, memory_order_acquire))
  {
    v3 = _MergedGlobals_21;
    if (_MergedGlobals_21 != -1)
    {
LABEL_3:
      *(a1 + 8) &= ~1u;
      *a1 = v3;
      return;
    }
  }

  else
  {
    llvm::sys::Process::getPageSize();
    v3 = _MergedGlobals_21;
    if (_MergedGlobals_21 != -1)
    {
      goto LABEL_3;
    }
  }

  v4 = *__error();
  *&v6.__val_ = std::generic_category();
  llvm::errorCodeToError(v4, v6, &v5);
  *(a1 + 8) |= 1u;
  *a1 = v5;
}

size_t llvm::sys::Process::GetMallocUsage(llvm::sys::Process *this)
{
  v1 = malloc_default_zone();
  malloc_zone_statistics(v1, &v3);
  return v3.size_in_use;
}

uint64_t llvm::sys::Process::GetTimeUsage(void *a1, void *a2, void *a3)
{
  *a1 = 1000 * std::chrono::system_clock::now().__d_.__rep_;
  result = getrusage(0, &v7);
  v6 = v7.ru_stime.tv_usec + 1000000 * v7.ru_stime.tv_sec;
  *a2 = 1000 * (v7.ru_utime.tv_usec + 1000000 * v7.ru_utime.tv_sec);
  *a3 = 1000 * v6;
  return result;
}

void (__cdecl *llvm::sys::Process::PreventCoreFiles(llvm::sys::Process *this))(int)
{
  v12 = *MEMORY[0x277D85DE8];
  getrlimit(4, &v7);
  v7.rlim_cur = 0;
  setrlimit(4, &v7);
  masksCnt = 0;
  v1 = MEMORY[0x277D85F48];
  if (task_get_exception_ports(*MEMORY[0x277D85F48], 0x1BFEu, masks, &masksCnt, old_handlers, old_behaviors, old_flavors))
  {
    v2 = 1;
  }

  else
  {
    v2 = masksCnt == 0;
  }

  if (!v2)
  {
    v3 = 0;
    do
    {
      task_set_exception_ports(*v1, masks[v3], 0, old_behaviors[v3], old_flavors[v3]);
      ++v3;
    }

    while (v3 != masksCnt);
  }

  v4 = MEMORY[0x277D85F08];
  signal(6, MEMORY[0x277D85F08]);
  signal(4, v4);
  signal(8, v4);
  signal(11, v4);
  return signal(10, v4);
}

uint64_t llvm::sys::Process::FixupStandardFileDescriptors(llvm::sys::Process *this)
{
  *__error() = 0;
  while (1)
  {
    *__error() = 0;
    v1 = fstat(0, &v11);
    if (v1 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      goto LABEL_6;
    }
  }

  if (v1 < 0)
  {
LABEL_6:
    if (*__error() != 9)
    {
LABEL_10:
      v3 = 0;
LABEL_11:
      v4 = -1;
LABEL_12:
      v5 = __error();
      std::generic_category();
      v6 = *v5;
      if (v3)
      {
        return v6;
      }

      goto LABEL_13;
    }
  }

  if (*__error())
  {
    while (1)
    {
      *__error() = 0;
      v2 = open("/dev/null", 2);
      if (v2 != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        goto LABEL_10;
      }
    }

    if (v2 < 0)
    {
      v4 = v2;
      v3 = 0;
      goto LABEL_12;
    }

    if (v2)
    {
      v4 = v2;
      v3 = 0;
      if (dup2(v2, 0) < 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v4 = 0;
      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
    v4 = -1;
  }

  *__error() = 0;
  while (1)
  {
    *__error() = 0;
    v8 = fstat(1, &v11);
    if (v8 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      goto LABEL_26;
    }
  }

  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_26:
  if (*__error() != 9)
  {
    goto LABEL_12;
  }

LABEL_27:
  if (*__error())
  {
    v9 = v4;
    if (v4 < 0)
    {
      while (1)
      {
        *__error() = 0;
        v9 = open("/dev/null", 2);
        if (v9 != -1)
        {
          break;
        }

        if (*__error() != 4)
        {
          goto LABEL_11;
        }
      }

      if (v9 < 0)
      {
        goto LABEL_56;
      }
    }

    if (v9 == 1)
    {
      v4 = 1;
      v3 = 1;
    }

    else
    {
      v4 = v9;
      if (dup2(v9, 1) < 0)
      {
        goto LABEL_12;
      }
    }
  }

  *__error() = 0;
  while (1)
  {
    *__error() = 0;
    v10 = fstat(2, &v11);
    if (v10 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      goto LABEL_41;
    }
  }

  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

LABEL_41:
  if (*__error() != 9)
  {
    goto LABEL_12;
  }

LABEL_42:
  if (*__error())
  {
    v9 = v4;
    if (v4 < 0)
    {
      while (1)
      {
        *__error() = 0;
        v9 = open("/dev/null", 2);
        if (v9 != -1)
        {
          break;
        }

        if (*__error() != 4)
        {
          goto LABEL_11;
        }
      }

      if (v9 < 0)
      {
LABEL_56:
        v4 = v9;
        goto LABEL_12;
      }
    }

    if (v9 == 2)
    {
      v3 = 1;
      v4 = 2;
    }

    else
    {
      v4 = v9;
      if (dup2(v9, 2) < 0)
      {
        goto LABEL_12;
      }
    }
  }

  std::system_category();
  v6 = 0;
  if (v3)
  {
    return v6;
  }

LABEL_13:
  if ((v4 & 0x80000000) == 0)
  {
    close(v4);
  }

  return v6;
}